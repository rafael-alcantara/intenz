package uk.ac.ebi.intenz.webapp;

import java.beans.PropertyChangeListener;
import java.beans.PropertyChangeSupport;
import java.util.Properties;

import org.apache.log4j.Logger;

/**
 * Configuration for IntEnz web applications.<br/>
 * Configuration values can be read from the files
 * <code>intenz-public.properties</code> and
 * <code>intenz-public-mail.properties</code> in the classpath.
 */
public class IntEnzConfig implements IntEnzConfigMBean {

    private static Logger LOGGER = Logger.getLogger(IntEnzConfig.class);

	/**
	 * Configuration properties (see intenz-public.properties and
     * intenz-public-mail.properties files).
	 * @author rafalcan
	 */
	public static enum Property {
		DATA_SOURCE("intenz.data.source.jndi.name"),
		MBEAN_NAME("intenz.config.mbean.name"),
		RSS_URL("intenz.rss.url"),
		RSS_REFRESH("intenz.rss.refresh"),
		XML_URL("intenz.xml.url"),
		SITEMAP_URL("intenz.sitemap.url"),
        MAIL_SMTP_HOST("mail.smtp.host"),
        MAIL_FROM("intenz.mail.from"),
        CONTACT_MAIL_TO("intenz.contact.mail.to"),
        CONTACT_MAIL_SUBJECT("intenz.contact.mail.subject"),
        ERROR_MAIL_TO("intenz.error.mail.to"),
        ERROR_MAIL_SUBJECT("intenz.error.mail.subject"),
        SEARCH_PAGE_SIZE("intenz.search.page.size"),
        TEMPLATES_URL("ebi.template.service.url"),
        XML_EXPORTER_POOL_SIZE("intenz.xml.exporter.pool.size");
		private String key;
        private Property(String key){ this.key = key; }
        @Override
        public String toString(){ return key; }
	}

    protected PropertyChangeSupport pcs;

	/**
	 * Properties for the IntEnz public webapp configuration.
	 */
	private Properties appProperties;
	private Properties mailProperties;

	public IntEnzConfig(){
		appProperties = new Properties();
		mailProperties = new Properties();
        pcs = new PropertyChangeSupport(this);
        loadFromFile();
	}

    /**
     * Loads configuration values from the files
     * <code>intenz-public.properties</code> and
     * <code>intenz-public-mail.properties</code> in the classpath.
     */
    public void loadFromFile() {
        try {
            appProperties.load(IntEnzConfig.class.getClassLoader()
                    .getResourceAsStream("intenz-public.properties"));
        } catch (Exception e) {
            LOGGER.error("Unable to read IntEnz configuration", e);
        }
        try {
            mailProperties.load(IntEnzConfig.class.getClassLoader()
                    .getResourceAsStream("intenz-public-mail.properties"));
        } catch (Exception e) {
            LOGGER.error("Unable to read IntEnz mail configuration", e);
        }
    }

    public String getIntEnzDataSource(){
		return appProperties.getProperty(Property.DATA_SOURCE.key);
	}
	
	public void setIntEnzDataSource(String intEnzDataSource){
        LOGGER.info("Setting IntEnz data source to " + intEnzDataSource);
        pcs.firePropertyChange(Property.DATA_SOURCE.key,
                appProperties.getProperty(Property.DATA_SOURCE.key),
                intEnzDataSource);
		appProperties.setProperty(Property.DATA_SOURCE.key, intEnzDataSource); 
        LOGGER.info("IntEnz data source set successfuly to "
                + intEnzDataSource);
	}
	
	public String getIntEnzConfigMbeanName() {
		return appProperties.getProperty(Property.MBEAN_NAME.key);
	}

	public String getRssUrl() {
		return appProperties.getProperty(Property.RSS_URL.key);
	}

	public void setRssUrl(String rssUrl) {
		appProperties.setProperty(Property.RSS_URL.key, rssUrl);
	}

    public long getRssRefresh(){
        return Long.parseLong(appProperties.getProperty(Property.RSS_REFRESH.key));
    }

    public void setRssRefresh(long fr){
        appProperties.setProperty(Property.RSS_REFRESH.key, String.valueOf(fr));
    }

	public String getXmlUrl() {
		return appProperties.getProperty(Property.XML_URL.key);
	}

	public void setXmlUrl(String xmlUrl) {
		appProperties.setProperty(Property.XML_URL.key, xmlUrl);
	}

	public String getSitemapUrl() {
		return appProperties.getProperty(Property.SITEMAP_URL.key);
	}

	public void setSitemapUrl(String sitemapUrl) {
		appProperties.setProperty(Property.SITEMAP_URL.key, sitemapUrl);
	}
	
	public Properties getMailProperties(){
		return mailProperties;
	}

	public String getMailSmtpHost() {
		return mailProperties.getProperty(Property.MAIL_SMTP_HOST.key);
	}

	public void setMailSmtpHost(String mailSmtpHost) {
		mailProperties.setProperty(Property.MAIL_SMTP_HOST.key, mailSmtpHost);
	}

	public String getMailFrom() {
		return mailProperties.getProperty(Property.MAIL_FROM.key);
	}

	public void setMailFrom(String mailFrom) {
		mailProperties.setProperty(Property.MAIL_FROM.key, mailFrom);
	}

	public String getContactMailTo() {
		return mailProperties.getProperty(Property.CONTACT_MAIL_TO.key);
	}

	public void setContactMailTo(String mailTo) {
		mailProperties.setProperty(Property.CONTACT_MAIL_TO.key, mailTo);
	}

	public String getContactMailSubject() {
		return mailProperties.getProperty(Property.CONTACT_MAIL_SUBJECT.key);
	}

	public void setContactMailSubject(String mailSubject) {
		mailProperties.setProperty(Property.CONTACT_MAIL_SUBJECT.key, mailSubject);
	}

	public String getErrorMailTo() {
		return mailProperties.getProperty(Property.ERROR_MAIL_TO.key);
	}

	public void setErrorMailTo(String mailTo) {
		mailProperties.setProperty(Property.ERROR_MAIL_TO.key, mailTo);
	}

	public String getErrorMailSubject() {
		return mailProperties.getProperty(Property.ERROR_MAIL_SUBJECT.key);
	}

	public void setErrorMailSubject(String mailSubject) {
		mailProperties.setProperty(Property.ERROR_MAIL_SUBJECT.key, mailSubject);
	}

	public String getPageSize() {
		return appProperties.getProperty(Property.SEARCH_PAGE_SIZE.key);
	}

	public void setPageSize(String pageSize) {
		appProperties.setProperty(Property.SEARCH_PAGE_SIZE.key, pageSize);
	}
	
    public String getTemplatesUrl() {
		return appProperties.getProperty(Property.TEMPLATES_URL.key);
	}

	public void setTemplatesUrl(String templatesUrl) {
		appProperties.setProperty(Property.TEMPLATES_URL.key, templatesUrl);
	}

    public int getXmlExportersPoolSize() {
        return Integer.parseInt(
                appProperties.getProperty(Property.XML_EXPORTER_POOL_SIZE.key));
    }

    public void setXmlExportersPoolSize(int size) {
        pcs.firePropertyChange(Property.XML_EXPORTER_POOL_SIZE.key,
                Integer.parseInt(appProperties.getProperty(
                        Property.XML_EXPORTER_POOL_SIZE.key)),
                size);
        // Store property only after firing change with no exceptions:
        appProperties.setProperty(
                Property.XML_EXPORTER_POOL_SIZE.key, String.valueOf(size));
    }

    public void addPropertyChangeListener(String propName,
            PropertyChangeListener pcl){
        LOGGER.info("Adding listener for " + propName);
        pcs.addPropertyChangeListener(propName, pcl);
        LOGGER.info("Added listener for " + propName);
    }

    public void removePropertyChangeListener(String prop,
            PropertyChangeListener pcl){
        pcs.removePropertyChangeListener(prop, pcl);
    }

}
