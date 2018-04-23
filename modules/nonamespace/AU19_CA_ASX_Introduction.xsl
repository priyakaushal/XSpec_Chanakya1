<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
    xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
    xmlns:admindoc="urn:x-lexisnexis:content:administrative-document:sharedservices:1" 
    xmlns:comm="http://www.lexis-nexis.com/glp/comm"
    xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/"
    xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo"
    xmlns:glp="http://www.lexis-nexis.com/glp"
    xmlns:pubinfo="http://www.lexisnexis.com/xmlschemas/content/shared/publication-info/1/"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    version="2.0" exclude-result-prefixes="#all">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Comm-From-Reg_Introduction">
    <title>Introduction <lnpid>id-AU19CA-21612</lnpid></title>
    <body>
        <section>
            <title>This Conversion Instruction describes the conversion of Admindoc 4.9 PROD schema
                in the document.</title>
            <p><sourcexml>COMMENTARYDOC</sourcexml> becomes
                <targetxml>admindoc:admindoc</targetxml>, which is a root element for the admindoc
                Schema.  The attributes are populated as follows: <ul>
                    <li><sourcexml>COMMENTARYDOC[@id]</sourcexml> becomes
                            <targetxml>admindoc:admindoc[@xml:id]</targetxml> provide a unique
                        identifier for this element. The presence or absence of the xml:id will not
                        affect delivery product behavior; the default value is IMPLIED.</li>
                    <li>Create <targetxml>admindoc:admindoc[@xml:lang]</targetxml> which is used to
                        specify the language that is being used in the content/document. The
                        presence or absence of attribute value will not affect delivery product
                        behavior and default value is 'none'.</li>
                    <li>Create admindoc:admindoc@admindoctype="agency-material" </li>
                    <li>
                        <pre>

&lt;COMMENTARYDOC&gt;
   ...
 &lt;docinfo:doc-lang lang="en"/&gt;
 &lt;docinfo:doc-country iso-cc="AU"/&gt;
   ...
&lt;/COMMENTARYDOC&gt;
</pre>
<b>Becomes</b>

 <pre>

&lt;admindoc:admindoc xml:lang="en-AU" admindoctype="agency-material"&gt;
   ...
&lt;/admindoc:admindoc&gt;
</pre>
                    </li>
                </ul>
            </p>
            <note>NewLexis schema does not allow white space and colon (:) in attribute values that
                provide a unique identifier for that element. If white space or colon is encountered
                in attribute values then replace it with an underscore sign(_), and the attribute
                value should be unique within a document.</note>
        </section>
        <section>
            <title>Top Level Elements</title>
            <p><targetxml>admindoc:head</targetxml>, <targetxml>admindoc:body</targetxml>, and
                    <targetxml>doc:metadata</targetxml> are created as required children of
                    <targetxml>admindoc:admindoc</targetxml></p>
        </section>
        <section>
            <title>Notes</title>
            <p>The following information is meant to help the user understand the conventions used
                in this document.</p>
            <p>Source elements and attributes are highlighted like this: <sourcexml>XML
                    SOURCE</sourcexml></p>
            <p>Target elements and attributes are highlighted like this: <targetxml>XML
                    TARGET</targetxml></p>
            <p>Verify content of following target attributes: <ul>
                    <li><sourcexml>@month</sourcexml> becomes <targetxml>@month</targetxml> is
                        between 01-12. Any numbers outside this range, do not output a
                            <targetxml>@month</targetxml>.</li>
                    <li><sourcexml>@day</sourcexml> becomes <targetxml>@day</targetxml> is between
                        01-31. Any numbers outside this range, do not output
                            <targetxml>@day</targetxml>.</li>
                    <li><sourcexml>@year</sourcexml> becomes <targetxml>@year</targetxml> is 4
                        digits in length. Any other lengths, do not output
                            <targetxml>@year</targetxml>.</li>
                </ul>
            </p>
        </section>
        <section>
            <title>Changes</title>
            <p>2013-04-15: <ph id="change_20130415">added a rule for the value of admindoctype.</ph></p>
        </section>
    </body>
	</dita:topic>


	<xsl:template match="COMMENTARYDOC">

		<!--  Original Target XPath:  admindoc:admindoc   -->
		<admindoc:admindoc>
		    <xsl:call-template name="generateNSGlobalBindings"/>

		    <xsl:attribute name="xsi:schemaLocation" select="$outputSchemaLoc"/>
		    
		    <xsl:call-template name="xml_lang"/>
		    <xsl:attribute name="admindoctype">agency-material</xsl:attribute>
		    <xsl:apply-templates select="@*"/>
		    <admindoc:head/>
		    <xsl:apply-templates select="node() except (docinfo)"/>
		    <doc:metadata>
		        <xsl:if test="//copyright or
		            //remotelink/inlineobject[contains(@filename, 'asx-logo.gif') or contains(@filename, 'asx_logo.gif')]">
		            <pubinfo:pubinfo>
		                <xsl:apply-templates select="//remotelink[inlineobject[contains(@filename, 'asx-logo.gif') or contains(@filename, 'asx_logo.gif')]] | 
		                    //remotelink[inlineobject[contains(@filename, 'asx-logo.gif') or contains(@filename, 'asx_logo.gif')]]"/>
		                <xsl:apply-templates select="//copyright"/>
		            </pubinfo:pubinfo>
		        </xsl:if>
		        <xsl:apply-templates select="docinfo"/>
		    </doc:metadata>
		</admindoc:admindoc>
	</xsl:template>


</xsl:stylesheet>