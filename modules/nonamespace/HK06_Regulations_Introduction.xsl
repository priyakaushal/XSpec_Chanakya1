<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
	xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/"
	xmlns:leg="http://www.lexis-nexis.com/glp/leg"
	xmlns:regulation="urn:x-lexisnexis:content:regulation:sharedservices:1" 
	xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" 
	version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Introduction">
       <title>Introduction <lnpid>id-HK06-37407</lnpid></title>
    <shortdesc>This Conversion Instruction describes the conversion of the <sourcexml>Rosetta LEGDOC DTD</sourcexml> to <targetxml>Regulation Schema (Version 8.2 PROD)</targetxml>.</shortdesc>
    <body>
        
        <section><p>The identification criteria of <b>HK06 Regulation</b> content stream is <sourcexml>LEGDOC[@legtype="regulations"]</sourcexml>.</p>
            <p>The root element <sourcexml>LEGDOC</sourcexml> <b>becomes</b> <targetxml>regulation:regulation</targetxml>, attributes are populated as follows:
                <ul>
                    <li><sourcexml>LEGDOC[@id]</sourcexml> <b>becomes</b> <targetxml>regulation:regulation[@xml:id]</targetxml> and provides a unique identifier for this document.</li>
                </ul>
                Create <targetxml>regulation:regulation[@xml:lang]</targetxml> which is used to specify the language that is being used in the content/document. The presence or absence of this attribute value will not affect delivery product behavior and default value is 'none'.</p>
                
           <pre>
              <b>Source XML</b>


&lt;LEGDOC legtype="regulations"&gt;
    ......
    &lt;docinfo:doc-lang lang="en"/&gt;
    &lt;docinfo:doc-country iso-cc="HK"/&gt;
    ......
&lt;/LEGDOC&gt;

	</pre>
                <pre>

              <b>Target XML</b>


&lt;regulation:regulation xml:lang="en-HK"&gt;
    ..........
    ..........
&lt;/regulation:regulation&gt;


            </pre>
            <p>
                <targetxml>regulation:head</targetxml>, <targetxml>regulation:body</targetxml>, and <targetxml>doc:metadata</targetxml> are created as required children of root element <targetxml>regulation:regulation</targetxml>.
            </p>
            
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
        select="'urn:x-lexisnexis:content:regulation:sharedservices:1 sch_regulation.xsd'"/>
    
	<xsl:template match="LEGDOC[@legtype='regulations']">

		<!--  Original Target XPath:  regulation:regulation   -->
	    <!-- 2017-10-04 - MDS:  Updated for generateNSGlobalBindings, schemalocation and xml:lang -->
		<regulation:regulation>
		    <xsl:call-template name="generateNSGlobalBindings"/>
		    
		    <xsl:attribute name="xsi:schemaLocation" select="$outputSchemaLoc"/>
		    
		    <xsl:apply-templates select="@*"/>
		    <!-- Awantika:2017-11-17-After discussion Commenting out xsl:call-template name="xml_lang" as input files have <docinfo:doc-country iso-cc="AU"/> and hard coding en-HK -->
		    <xsl:attribute name="xml:lang">
		        <xsl:text>en-HK</xsl:text>
		    </xsl:attribute>
			<regulation:head>
				<xsl:apply-templates select="leg:body/leg:info/leg:juris"/>
			</regulation:head>
		    <xsl:apply-templates select="leg:body"/>
			<doc:metadata>
				<xsl:apply-templates select="docinfo"/>
			</doc:metadata>
		</regulation:regulation>

	</xsl:template>

	<xsl:template match="@legtype"/>
    
    <xsl:template match="@searchtype"/>

</xsl:stylesheet>