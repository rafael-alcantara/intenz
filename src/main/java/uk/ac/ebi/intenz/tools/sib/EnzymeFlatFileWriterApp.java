package uk.ac.ebi.intenz.tools.sib;

import java.io.File;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.apache.log4j.Logger;

import uk.ac.ebi.biobabel.util.db.OracleDatabaseInstance;
import uk.ac.ebi.intenz.domain.enzyme.EnzymeEntry;
import uk.ac.ebi.intenz.domain.exceptions.DomainException;
import uk.ac.ebi.intenz.mapper.EnzymeEntryMapper;
import uk.ac.ebi.intenz.tools.sib.helper.SibEntryHelper;
import uk.ac.ebi.intenz.tools.sib.sptr_enzyme.EnzymeEntryImpl;
import uk.ac.ebi.intenz.tools.sib.writer.EnzymeFlatFileWriter;
import uk.ac.ebi.interfaces.sptr.SPTRException;
import uk.ac.ebi.xchars.SpecialCharacters;
import uk.ac.ebi.xchars.domain.EncodingType;

/**
 * This class provides methods for exporting enzyme data into the ENZYME flat file format.
 *
 * @author Michael Darsow
 * @version $Revision: 1.2 $ $Date: 2008/01/28 11:43:22 $
 */
public class EnzymeFlatFileWriterApp {

  private static final Logger LOGGER = Logger.getLogger(EnzymeFlatFileWriterApp.class);


  private static float versionNumber = 1.0f;
  private static String versionNumberString ="1";
  /**
   * Exports all IntEnz entries containing only data valid for the ENZYME database.
   * <p/>
   * The resulting file follows the same format as the <code><b>enzyme.dat</b></code> file format.
   *
   * @param args ec1, ec2, ec3 and ec4 of a single entry.
   * 	If not passed, the whole database is dumped.
   */
  public static void main(String[] args) {

	  assignDateAsVersion();

	  List allEnzymes = null;
	  allEnzymes = getAllEnzymes(args);
	  if (allEnzymes == null) { // exit if an error occured while loading the data
		  System.exit(1);
	  }

	  try {
		  LOGGER.info("Exporting '" + ApplicationResources.getInstance().getExportFlatFileName() + "...");
		  Long elapsedTimeForExporting = new Long(EnzymeFlatFileWriter.export(allEnzymes, "" + versionNumberString,
				  new File(ApplicationResources.getInstance().getExportFlatFileName())));
		  LOGGER.info("...export finished (" + (elapsedTimeForExporting.floatValue() / 1000) + " s)");
	  } catch (SPTRException e) {
		  LOGGER.error("SPTRException: ", e);
	  }
  }




   // --------------------------- PRIVATE METHODS ------------------------------------------------
   /**
    * Helper method used while not in production to assign a date to each flat-file
    * currently produced on a nightly basis.<br/>
    */
   private static void assignDateAsVersion () {
      try{
        versionNumberString = new SimpleDateFormat("yyyyMMdd").format(new Date(System.currentTimeMillis())).toString();
      }catch (NumberFormatException e){
         LOGGER.error(e);
         System.exit(1);
      }
   }

  /**
   * Retreives all ENZYME data and stores the individual entries in an {@link java.util.ArrayList}.
   *
   * @return an {@link java.util.ArrayList} of all entries containing only ENZYME data or <code>null</code> if an
   *         error occured.
   */
  private static List getAllEnzymes(String[] args) {
    LOGGER.debug("Getting all enzymes.");
    Connection con = null;
    List allEnzymes = new ArrayList();
    try {
      String dbConfig = ApplicationResources.getInstance().getDbConfig();
      con = OracleDatabaseInstance.getInstance(dbConfig).getConnection();
      con.setAutoCommit(false);

      EnzymeEntryMapper enzymeEntryMapper = new EnzymeEntryMapper();
      List sibEntries = null;
       // exports all views excluding the NC-IUBMB view
      if (args == null || args.length == 0){
    	  sibEntries = enzymeEntryMapper.exportApprovedSibEntries(con);
      } else {
    	  sibEntries = new ArrayList();
    	  sibEntries.add(enzymeEntryMapper.findByEc(args[0], args[1], args[2], args[3], con));
      }
      if (sibEntries != null) {
        SpecialCharacters encoding = SpecialCharacters.getInstance(null);
         // populating SPTR interfaces from domain EnzymeEntry
         for (int iii = 0; iii < sibEntries.size(); iii++) {
          EnzymeEntry enzymeEntry = (EnzymeEntry) sibEntries.get(iii);
          EnzymeEntryImpl sibEnzymeEntry = SibEntryHelper.getSibEnzymeEntry(enzymeEntry, encoding, EncodingType.SWISSPROT_CODE);
          allEnzymes.add(sibEnzymeEntry);
        }
      } else {
        LOGGER.fatal("No ENZYME data could be retreived from the database.");
        return null;
      }
    } catch (DomainException e) {
      LOGGER.error("Domain exception: ", e);
      return null;
    } catch (SPTRException e) {
      LOGGER.error("SPTRException: ", e);
      return null;
    } catch (IOException e) {
      LOGGER.error("Unable to read database configuration: ", e);
      return null;
    } catch (SQLException e) {
      LOGGER.error("Error while loading ENZYME data from the database: ", e);
      return null;
    } finally {
      try {
        con.close();
      } catch (SQLException e) {
        LOGGER.error("Error while closing the database connection: ", e);
      }
    }

    return allEnzymes;
  }

  /**
   * Checks the arguments taken from the command line.
   * <p/>
   * For further info see {@link uk.ac.ebi.intenz.tools.sib.EnzymeFlatFileWriterApp#main(String[])}.
   *
   * @param args The arguments to be checked.
   * @return <code>true</code> if the arguments are ok.
   */
  private static boolean argumentsOk(String[] args) {
    if (args.length == 2) {
      if (args[0].equals("version")) {
        try {
          Float argVersionNumber = new Float(args[1]);
          versionNumber = argVersionNumber.floatValue();
          LOGGER.info("Version number: "+versionNumber);
        } catch (NumberFormatException e) {
          System.err.println("The version number is not a valid floating-point number.");
          return false;
        }
      }
    } else {
      System.err.println("Please provide a version number as shown below.");
      return false;
    }
    return true;
  }

  /**
   * Prints usage information of this class to the console.
   */
  private static void printHelp() {
    StringBuffer help = new StringBuffer();
    help.append("Usage: java EnzymeFlatFileWriterApp version <version number>\n");
    help.append("The <version number> must be a valid floating-point number and will be used in the version line of the flat file's header.\n");
    help.append("Examples: java EnzymeFlatFileWriterApp version 33.0\n");
    help.append("          java EnzymeFlatFileWriterApp version 33.12\n");
    System.out.println(help.toString());
  }


}
