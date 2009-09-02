//
// This file was generated by the JavaTM Architecture for XML Binding(JAXB) Reference Implementation, v2.0-b52-fcs 
// See <a href="http://java.sun.com/xml/jaxb">http://java.sun.com/xml/jaxb</a> 
// Any modifications to this file will be lost upon recompilation of the source schema. 
// Generated on: 2006.09.20 at 09:38:22 AM BST 
//


package uk.ac.ebi.intenz.tools.export.jaxb;

import java.util.ArrayList;
import java.util.List;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlType;


/**
 * An enzyme entry.
 * 
 * <p>Java class for enzymeType complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType name="enzymeType">
 *   &lt;complexContent>
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
 *       &lt;sequence>
 *         &lt;element ref="{http://www.ebi.ac.uk/intenz}ec"/>
 *         &lt;choice>
 *           &lt;element ref="{http://www.ebi.ac.uk/intenz}deleted"/>
 *           &lt;element ref="{http://www.ebi.ac.uk/intenz}transferred"/>
 *           &lt;sequence>
 *             &lt;element ref="{http://www.ebi.ac.uk/intenz}accepted_name" maxOccurs="unbounded"/>
 *             &lt;element ref="{http://www.ebi.ac.uk/intenz}systematic_name" minOccurs="0"/>
 *             &lt;element ref="{http://www.ebi.ac.uk/intenz}synonyms" minOccurs="0"/>
 *             &lt;element ref="{http://www.ebi.ac.uk/intenz}reactions"/>
 *             &lt;element ref="{http://www.ebi.ac.uk/intenz}cofactors" minOccurs="0"/>
 *             &lt;element ref="{http://www.ebi.ac.uk/intenz}comments" minOccurs="0"/>
 *             &lt;element ref="{http://www.ebi.ac.uk/intenz}links" minOccurs="0"/>
 *             &lt;element ref="{http://www.ebi.ac.uk/intenz}references"/>
 *           &lt;/sequence>
 *         &lt;/choice>
 *         &lt;element name="history" type="{http://www.w3.org/2001/XMLSchema}string"/>
 *       &lt;/sequence>
 *     &lt;/restriction>
 *   &lt;/complexContent>
 * &lt;/complexType>
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "enzymeType", propOrder = {
    "ec",
    "deleted",
    "transferred",
    "acceptedName",
    "systematicName",
    "synonyms",
    "reactions",
    "cofactors",
    "comments",
    "links",
    "references",
    "history"
})
public class EnzymeType {

    @XmlElement(namespace = "http://www.ebi.ac.uk/intenz", required = true)
    protected String ec;
    @XmlElement(namespace = "http://www.ebi.ac.uk/intenz")
    protected InactiveStatusType deleted;
    @XmlElement(namespace = "http://www.ebi.ac.uk/intenz")
    protected InactiveStatusType transferred;
    @XmlElement(name = "accepted_name", namespace = "http://www.ebi.ac.uk/intenz", required = true)
    protected List<EnzymeNameType> acceptedName;
    @XmlElement(name = "systematic_name", namespace = "http://www.ebi.ac.uk/intenz")
    protected EnzymeNameType systematicName;
    @XmlElement(namespace = "http://www.ebi.ac.uk/intenz")
    protected Synonyms synonyms;
    @XmlElement(namespace = "http://www.ebi.ac.uk/intenz")
    protected Reactions reactions;
    @XmlElement(namespace = "http://www.ebi.ac.uk/intenz")
    protected Cofactors cofactors;
    @XmlElement(namespace = "http://www.ebi.ac.uk/intenz")
    protected Comments comments;
    @XmlElement(namespace = "http://www.ebi.ac.uk/intenz")
    protected Links links;
    @XmlElement(namespace = "http://www.ebi.ac.uk/intenz")
    protected References references;
    @XmlElement(namespace = "http://www.ebi.ac.uk/intenz", required = true)
    protected String history;

    /**
     * Gets the value of the ec property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getEc() {
        return ec;
    }

    /**
     * Sets the value of the ec property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setEc(String value) {
        this.ec = value;
    }

    /**
     * Gets the value of the deleted property.
     * 
     * @return
     *     possible object is
     *     {@link InactiveStatusType }
     *     
     */
    public InactiveStatusType getDeleted() {
        return deleted;
    }

    /**
     * Sets the value of the deleted property.
     * 
     * @param value
     *     allowed object is
     *     {@link InactiveStatusType }
     *     
     */
    public void setDeleted(InactiveStatusType value) {
        this.deleted = value;
    }

    /**
     * Gets the value of the transferred property.
     * 
     * @return
     *     possible object is
     *     {@link InactiveStatusType }
     *     
     */
    public InactiveStatusType getTransferred() {
        return transferred;
    }

    /**
     * Sets the value of the transferred property.
     * 
     * @param value
     *     allowed object is
     *     {@link InactiveStatusType }
     *     
     */
    public void setTransferred(InactiveStatusType value) {
        this.transferred = value;
    }

    /**
     * Gets the value of the acceptedName property.
     * 
     * <p>
     * This accessor method returns a reference to the live list,
     * not a snapshot. Therefore any modification you make to the
     * returned list will be present inside the JAXB object.
     * This is why there is not a <CODE>set</CODE> method for the acceptedName property.
     * 
     * <p>
     * For example, to add a new item, do as follows:
     * <pre>
     *    getAcceptedName().add(newItem);
     * </pre>
     * 
     * 
     * <p>
     * Objects of the following type(s) are allowed in the list
     * {@link EnzymeNameType }
     * 
     * 
     */
    public List<EnzymeNameType> getAcceptedName() {
        if (acceptedName == null) {
            acceptedName = new ArrayList<EnzymeNameType>();
        }
        return this.acceptedName;
    }

    /**
     * Gets the value of the systematicName property.
     * 
     * @return
     *     possible object is
     *     {@link EnzymeNameType }
     *     
     */
    public EnzymeNameType getSystematicName() {
        return systematicName;
    }

    /**
     * Sets the value of the systematicName property.
     * 
     * @param value
     *     allowed object is
     *     {@link EnzymeNameType }
     *     
     */
    public void setSystematicName(EnzymeNameType value) {
        this.systematicName = value;
    }

    /**
     * Gets the value of the synonyms property.
     * 
     * @return
     *     possible object is
     *     {@link Synonyms }
     *     
     */
    public Synonyms getSynonyms() {
        return synonyms;
    }

    /**
     * Sets the value of the synonyms property.
     * 
     * @param value
     *     allowed object is
     *     {@link Synonyms }
     *     
     */
    public void setSynonyms(Synonyms value) {
        this.synonyms = value;
    }

    /**
     * Gets the value of the reactions property.
     * 
     * @return
     *     possible object is
     *     {@link Reactions }
     *     
     */
    public Reactions getReactions() {
        return reactions;
    }

    /**
     * Sets the value of the reactions property.
     * 
     * @param value
     *     allowed object is
     *     {@link Reactions }
     *     
     */
    public void setReactions(Reactions value) {
        this.reactions = value;
    }

    /**
     * Gets the value of the cofactors property.
     * 
     * @return
     *     possible object is
     *     {@link Cofactors }
     *     
     */
    public Cofactors getCofactors() {
        return cofactors;
    }

    /**
     * Sets the value of the cofactors property.
     * 
     * @param value
     *     allowed object is
     *     {@link Cofactors }
     *     
     */
    public void setCofactors(Cofactors value) {
        this.cofactors = value;
    }

    /**
     * Gets the value of the comments property.
     * 
     * @return
     *     possible object is
     *     {@link Comments }
     *     
     */
    public Comments getComments() {
        return comments;
    }

    /**
     * Sets the value of the comments property.
     * 
     * @param value
     *     allowed object is
     *     {@link Comments }
     *     
     */
    public void setComments(Comments value) {
        this.comments = value;
    }

    /**
     * Gets the value of the links property.
     * 
     * @return
     *     possible object is
     *     {@link Links }
     *     
     */
    public Links getLinks() {
        return links;
    }

    /**
     * Sets the value of the links property.
     * 
     * @param value
     *     allowed object is
     *     {@link Links }
     *     
     */
    public void setLinks(Links value) {
        this.links = value;
    }

    /**
     * Gets the value of the references property.
     * 
     * @return
     *     possible object is
     *     {@link References }
     *     
     */
    public References getReferences() {
        return references;
    }

    /**
     * Sets the value of the references property.
     * 
     * @param value
     *     allowed object is
     *     {@link References }
     *     
     */
    public void setReferences(References value) {
        this.references = value;
    }

    /**
     * Gets the value of the history property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getHistory() {
        return history;
    }

    /**
     * Sets the value of the history property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setHistory(String value) {
        this.history = value;
    }

}
