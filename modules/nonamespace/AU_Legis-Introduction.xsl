<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
    xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
    xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" 
    xmlns:leg="http://www.lexis-nexis.com/glp/leg"
    xmlns:legis="http://www.lexisnexis.com/xmlschemas/content/legal/legislation/1/" 
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="legis-Introduction">
       <title>Introduction <lnpid>id-AU04-18609</lnpid></title>
    
    <shortdesc>This Conversion Instruction describes the conversion of legis 9.7 PROD schema in the
        document.</shortdesc>
    
    <body>
        <section><title>Root Element</title>
                    
               <p>
                   <sourcexml>LEGDOC</sourcexml> becomes <targetxml>legis:legis</targetxml> and is the root element for legislation attributes
                   are populated as follows:
                  <sourcexml>LEGDOC[@id]</sourcexml> becomes <targetxml>legis:legis[@xml:id]</targetxml> and provides a unique identifier for this
                element. The presence or absence of attribute value will not affect delivery product behavior and default value is 'none'. 
           
                <sourcexml>LEGDOC[@legtype="act"]</sourcexml> becomes <targetxml>legis:legis[@legistype="act"]</targetxml> 
                   
                   &lt;LEGDOC id="VIC_ACT_1998-25" legtype="act"&gt; 
                   
                   <b>becomes</b> 
                   
                   &lt;legis:legis xml:id="VIC_ACT_1998-25" legistype="act"&gt;    
                 
                </p>                
                                 
                    
                <p>
                <targetxml>legis:head</targetxml>, <targetxml>legis:body</targetxml>, and <targetxml>doc:metadata</targetxml> are created as
                required children of <targetxml>legis:legis</targetxml>
                </p>
            
            <p>
                The <sourcexml>@searchtype</sourcexml> attribute will be suppressed from conversion except for the citation element.
            </p>
            
        </section>
                <section>
                           <title>Notes</title>
                            <p>The following information is meant to help the user understand the conventions used in this document.</p>
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
            <p>2014-08-06: <ph id="change_20140806_BRT">Schema version to 8.8 PROD.</ph></p>
            <p>2014-07-09: <ph id="change_20140709_BRT">Schema version to 8.7 PROD.</ph></p>
            <p>2013-02-13: <ph id="change_20130213_WL">Schema version to 5.18 PROD.</ph></p>
        </section>
    </body>
	</dita:topic>

    <xsl:param name="outputSchemaLoc"
        select="'http://www.lexisnexis.com/xmlschemas/content/legal/legislation/1/ sch_legis.xsd'"/>

	<xsl:template match="LEGDOC">

		<!--  Original Target XPath:  legis:legis   -->
		<legis:legis>
		    <xsl:call-template name="generateNSGlobalBindings"/>
		    
			<xsl:attribute name="xsi:schemaLocation" select="$outputSchemaLoc"/>
			
		    <xsl:call-template name="xml_lang"/>
			<xsl:apply-templates select="@legtype"/>
			<legis:head>
			    <xsl:apply-templates select="leg:body/leg:info/leg:juris"/>
			</legis:head>
				<xsl:apply-templates select="leg:body"/>
			<doc:metadata>
				<xsl:apply-templates select="docinfo"/>
			</doc:metadata>
		</legis:legis>

	</xsl:template>
	
	<xsl:template match="@searchtype"/>
    
    <xsl:template match="@legtype">
        <xsl:attribute name="legistype">
            <xsl:value-of select="."/>
        </xsl:attribute>
    </xsl:template>

	
</xsl:stylesheet>