//
// This file was generated by the JavaTM Architecture for XML Binding(JAXB) Reference Implementation, v2.0-b52-fcs 
// See <a href="http://java.sun.com/xml/jaxb">http://java.sun.com/xml/jaxb</a> 
// Any modifications to this file will be lost upon recompilation of the source schema. 
// Generated on: 2006.09.20 at 09:38:22 AM BST 
//


package uk.ac.ebi.intenz.tools.export.jaxb;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Java class for journalType complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType name="journalType">
 *   &lt;complexContent>
 *     &lt;extension base="{http://www.ebi.ac.uk/intenz}paperRefType">
 *       &lt;sequence>
 *         &lt;element name="pubmed" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *         &lt;element name="medline" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *       &lt;/sequence>
 *     &lt;/extension>
 *   &lt;/complexContent>
 * &lt;/complexType>
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "journalType", propOrder = {
    "pubmed",
    "medline"
})
public class JournalType
    extends PaperRefType
{

    @XmlElement(namespace = "http://www.ebi.ac.uk/intenz")
    protected String pubmed;
    @XmlElement(namespace = "http://www.ebi.ac.uk/intenz")
    protected String medline;

    /**
     * Gets the value of the pubmed property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getPubmed() {
        return pubmed;
    }

    /**
     * Sets the value of the pubmed property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setPubmed(String value) {
        this.pubmed = value;
    }

    /**
     * Gets the value of the medline property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getMedline() {
        return medline;
    }

    /**
     * Sets the value of the medline property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setMedline(String value) {
        this.medline = value;
    }

}
