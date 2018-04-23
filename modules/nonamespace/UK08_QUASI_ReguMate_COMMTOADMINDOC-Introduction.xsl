<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
	xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" 
	xmlns:comm="http://www.lexis-nexis.com/glp/comm"
	xmlns:admindoc="urn:x-lexisnexis:content:administrative-document:sharedservices:1" 
	xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" 
	xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" 
	version="2.0" exclude-result-prefixes="dita docinfo">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="UK08_QUASI_ReguMate_COMMTOADMINDOC-Introduction">
       <title>Introduction <lnpid>id-UK08CA-28612</lnpid></title>
    <shortdesc>This Conversion Instruction describes the conversion of Admindoc 4.9 Prod schema in the document.</shortdesc>
    <body>
       <section>
           <title>Root Element</title>
           <p>The <sourcexml>COMMENTARYDOC</sourcexml> <b>Becomes</b> <targetxml>admindoc:admindoc</targetxml>. which is a root element for UK08 QUASI Regulatory Materials COMMENTARYDOC TO ADMINDOC. And attributes are populated as follows:
                <ol>
                    <li>Create <targetxml>admindoc:admindoc[@xml:lang]</targetxml> which is used to specify the language that is being used in the content/document. The presence or absence of attribute value will not affect delivery product behavior and default value is 'none'.</li>
                    <li>Create <targetxml>admindoc:admindoc/@admindoctype="administrative-decision"</targetxml></li>
                </ol>
               <note>UK08 Quasi is mixed type content stream. This CI is for source documents which contain the root element <sourcexml>COMMENTARYDOC</sourcexml> and the value of <sourcexml>docinfo:selector</sourcexml> should be <b>RegulatoryMaterials</b>.</note>
                <pre>
                    <b><i>Example: Source XML 1</i></b>

&lt;COMMENTARYDOC&gt;
 &lt;!-- ETC. --&gt;
 &lt;docinfo:doc-lang lang="en"/&gt;
 &lt;docinfo:doc-country iso-cc="GB"/&gt;
 &lt;!-- ETC. --&gt;
&lt;/COMMENTARYDOC&gt;

                </pre>
                <pre>
                    <b><i>Example: Target XML 1</i></b>


&lt;admindoc:admindoc xml:lang="en-GB" admindoctype="administrative-decision"&gt;
 &lt;!-- ETC. --&gt;
&lt;/admindoc:admindoc&gt;

                </pre>
            </p>
            <p><targetxml>admindoc:head</targetxml>, <targetxml>admindoc:body</targetxml> and <targetxml>doc:metadata</targetxml> are created as required children of <targetxml>admindoc:admindoc</targetxml>.</p>
            <p>The <sourcexml>@searchtype</sourcexml> attribute will be dropped from conversion except for the citation element.</p>
        </section>
        <section>
            <title>Notes</title>
            <p>The following information is meant to help the user understand the conventions used in this document.</p>
            <p>Source elements and attributes are highlighted like this: <sourcexml>XML SOURCE</sourcexml></p>
            <p>Target elements and attributes are highlighted like this: <targetxml>XML TARGET</targetxml></p>
            <p>Verify content of following target attributes:
                <ul>
                    <li><sourcexml>@year</sourcexml> becomes <targetxml>@year</targetxml> is 4 digits in length. Any other lengths, do not output <targetxml>@year</targetxml>.</li>
                    <li><sourcexml>@month</sourcexml> becomes <targetxml>@month</targetxml> is between 01-12. Any numbers outside this range, do not output a <targetxml>@month</targetxml>.</li>
                    <li><sourcexml>@day</sourcexml> becomes <targetxml>@day</targetxml> is between 01-31. Any numbers outside this range, do not output <targetxml>@day</targetxml>.</li>
                </ul>
            </p>
        </section>
    </body>
	</dita:topic>
    
    <xsl:param name="outputSchemaLoc"
    	select="'urn:x-lexisnexis:content:administrative-document:sharedservices:1 sch_admindoc.xsd'"/>
    <xsl:output indent="no"/>

	<xsl:template match="COMMENTARYDOC">

		<!--  Original Target XPath:  admindoc:admindoc   -->
		<admindoc:admindoc>
			<xsl:for-each select="$lexisAdvNamespaces/*">
				<xsl:sort/>
				<xsl:namespace name="{substring-after(substring-before(., '='), ':')}" select="substring-after(translate(., '&#034;', ''), '=')"/>
			</xsl:for-each>
			<xsl:attribute name="xsi:schemaLocation" select="$outputSchemaLoc"/>
			<xsl:attribute name="admindoctype">administrative-decision</xsl:attribute>
			<xsl:apply-templates select="@*"/>
			<xsl:call-template name="xml_lang"/>
			<admindoc:head/>
		    <xsl:apply-templates select="comm:body"/>			
			<doc:metadata>
				<xsl:apply-templates select="docinfo"/>
			</doc:metadata>
		</admindoc:admindoc>

	</xsl:template>
	
	<xsl:template match="@searchtype"/>


</xsl:stylesheet>