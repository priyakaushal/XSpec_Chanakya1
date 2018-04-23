<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
	xmlns:courtrule="http://www.lexisnexis.com/xmlschemas/content/legal/courtrule/1/" 
	xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" 
	xmlns:leg="http://www.lexis-nexis.com/glp/leg"
	xmlns:xs="http://www.w3.org/2001/XMLSchema"
	xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
	xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo"
	version="2.0" exclude-result-prefixes="dita">
    
	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="courtrule-Introduction">
      
    <title>Introduction <lnpid>id-HK04-36608</lnpid></title>
    <shortdesc>This Conversion Instruction describes the conversion of courtrule 7.2 PROD schema in
        the document.</shortdesc>    
    <body>        
        <section>
            <p>Identification Criteria for <b>HK04 CourtRule</b> content stream is
                <sourcexml>LEGDOC[@legtype="court-rules"]</sourcexml>.</p>
                    <p> The Root Element <sourcexml>LEGDOC[@legtype="court-rules"]</sourcexml>
                become <targetxml>courtrule:courtrule</targetxml> which is a root element. </p>
                    
               <p><targetxml>courtrule:head</targetxml>, <targetxml>courtrule:body</targetxml>, and <targetxml>doc:metadata</targetxml> are                        created as required children of <targetxml>courtrule:courtrule</targetxml>
               </p>
        </section>
        
        
                <section>
                           <title>Notes</title>
                            <p>The following inormation is meant to help the user understand the conventions used in this document.</p>
                            <p>Source elements and attributes are highlighted like this: <sourcexml>XML SOURCE</sourcexml></p>
                            <p>Target elements and attributes are highlighted like this: <targetxml>XML TARGET</targetxml></p>
                            <p>Verify content of following target attributes: 
                                        <ul>
                                        <li><sourcexml>@month</sourcexml> becomes <targetxml>@month</targetxml> is between 01-12. Any numbers
                                            outside this range, do not output a <targetxml>@month</targetxml>.</li>
                                        <li><sourcexml>@day</sourcexml> becomes <targetxml>@day</targetxml> is between 01-31. Any numbers outside
                                            this range, do not output <targetxml>@day</targetxml>.</li>
                                        <li><sourcexml>@year</sourcexml> becomes <targetxml>@year</targetxml> is 4 digits in length. Any other
                                            lengths, do not output <targetxml>@year</targetxml>.</li>
                                        </ul>
                            </p>
                </section>
        <section>
            <title>Changes</title>
            <p>2016-03-02: <ph id="change_20160302_HP">Created</ph>.</p>
        </section>
    </body>
	</dita:topic>

    <xsl:param name="outputSchemaLoc"
        select="'http://www.lexisnexis.com/xmlschemas/content/legal/courtrule/1/ sch_courtrule.xsd'"/>
    
	<xsl:template match="LEGDOC[@legtype='court-rules']">
		<courtrule:courtrule>
		    <xsl:call-template name="generateNSGlobalBindings"/>
		    <xsl:attribute name="xsi:schemaLocation" select="$outputSchemaLoc"/>
		    <xsl:apply-templates select="@*"/>
		    <xsl:attribute name="xml:lang"><xsl:text>en-HK</xsl:text></xsl:attribute>
		    <!--<xsl:call-template name="xml_lang"/>-->
			<courtrule:head>
				<xsl:apply-templates select="leg:body/leg:info/leg:juris"/>
			</courtrule:head>
		    <xsl:apply-templates select="leg:body"/>
		    <doc:metadata>
		        <xsl:apply-templates select="docinfo"/>
		    </doc:metadata>
		</courtrule:courtrule>

	</xsl:template>
	
	<xsl:template match="LEGDOC[not(@legtype)]|LEGDOC[not(@legtype='court-rules')]">
		<xsl:call-template name="outputErrorMessage">
			<xsl:with-param name="messageText">no @legtype or @legtype value not 'court-rules': <xsl:value-of select="name(.)"/></xsl:with-param>
		</xsl:call-template>
	</xsl:template>
    
    <xsl:template match="LEGDOC/@legtype"/>
</xsl:stylesheet>