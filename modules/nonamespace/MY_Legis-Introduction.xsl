<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:jurisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/jurisdiction-info/1/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:legis="http://www.lexisnexis.com/xmlschemas/content/legal/legislation/1/" version="2.0" exclude-result-prefixes="dita docinfo">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="MY_Legis-Introduction">
       <title>Introduction <lnpid>id-MY05LL-17031</lnpid></title>
    
    <shortdesc>This Conversion Instruction describes the conversion of legis 9.2 PROD schema in the
        document.</shortdesc>
    <body>
        <section><title>Root Element</title>
                    
            <p>Identification Criteria for <b>MY05 Acts</b> content stream is
                    <sourcexml>LEGDOC[@legtype="act"]</sourcexml> and
                    <sourcexml>docinfo:selector</sourcexml> having value <b>"act"</b>.</p>
            <p>
                <sourcexml>LEGDOC@legtype="act"</sourcexml> becomes
                <targetxml>legis:legis[@legistype="act"]</targetxml> and is the root element for legislation
                attributes are populated as follows: <sourcexml>LEGDOC[@id]</sourcexml> becomes
                    <targetxml>legis:legis[@xml:id]</targetxml> and provides a unique identifier for
                this element. The presence or absence of attribute value will not affect delivery
                product behavior and default value is 'none'. </p>
            <p>
           
                <sourcexml>LEGDOC[@legtype="act"]</sourcexml> becomes <targetxml>legis:legis[@legistype="act"]</targetxml> 
                   <pre>
                   &lt;LEGDOC legtype="act"&gt; 
                   </pre>
                                     <b>becomes</b> 
                   <pre>
                   &lt;legis:legis legistype="act"&gt;    
                 </pre>
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
       <p>2015-10-23: <ph id="change_20131114_SS">Created</ph>.</p>
</section>
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-MY\MY05LL_Acts\MY_Legis-Introduction.dita  -->
<!--	<xsl:message>MY_Legis-Introduction.xsl requires manual development!</xsl:message> -->

    <xsl:template match="LEGDOC[@legtype = 'act' or @legtype = 'leg-inst' or @legtype = 'misc-inst']">
		<legis:legis>
			<xsl:call-template name="generateNSGlobalBindings"/>
			<xsl:attribute name="xsi:schemaLocation" select="$outputSchemaLoc"/>
			<xsl:apply-templates select="@*"/>
			<xsl:call-template name="xml_lang"/>
			<legis:head>
				<xsl:choose>
					<xsl:when test="leg:body/leg:info/leg:juris[. = ('MY', 'my')]">
						<xsl:apply-templates select="leg:body/leg:info/leg:juris"/>
					</xsl:when>
					<xsl:otherwise>
						<jurisinfo:legisbodyinfo>
							<xsl:apply-templates select="leg:body/leg:info/leg:govoffice"/>
						</jurisinfo:legisbodyinfo> 
					</xsl:otherwise>
				</xsl:choose>            
				<xsl:apply-templates select="docinfo/docinfo:normcite"/>
			</legis:head>
			<xsl:apply-templates select="leg:body"/>
			<doc:metadata>
				<xsl:if test="leg:body/leg:info/pubdate">
					<xsl:apply-templates select="leg:body/leg:info/pubdate"/>
				</xsl:if>
				<xsl:if test="leg:body/leg:info/leg:dates/pubdate">
					<xsl:apply-templates select="leg:body/leg:info/leg:dates/pubdate"/>
				</xsl:if>
				<xsl:apply-templates select="docinfo"/>
			</doc:metadata>
		</legis:legis>
	</xsl:template>
	
	
	<xsl:template match="LEGDOC/@legtype">
		<xsl:attribute name="legistype">act</xsl:attribute>
	</xsl:template>
	
	
	
	<!-- suppress Rosetta-dtd specific atts -->
	<xsl:template match="LEGDOC/@xml:lang"/>
	
	<xsl:template match="LEGDOC/@version"/>
	
	<xsl:template match="LEGDOC/@versionminor"/>
	
	<xsl:template match="LEGDOC/@id"/>
	

</xsl:stylesheet>