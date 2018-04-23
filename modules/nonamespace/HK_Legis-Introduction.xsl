<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
    xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" 
    xmlns:legis="http://www.lexisnexis.com/xmlschemas/content/legal/legislation/1/"
    xmlns:leg="http://www.lexis-nexis.com/glp/leg"
    xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    version="2.0" exclude-result-prefixes="dita leg xsi xsl">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="HK_Legis-Introduction">
       <title>Introduction <lnpid>id-HK01-36808</lnpid></title>
    
    <shortdesc>This Conversion Instruction describes the conversion of legis 9.5 PROD schema in the
        document.</shortdesc>
    <body>
        <section><title>Root Element</title>
                    
            <p>Identification Criteria for <b>HK01 Acts</b> content stream according to
                below scenario:</p>
            <p><ul>
                <li>If root element is having <sourcexml>LEGDOC[@legtype="act"]</sourcexml> becomes
                        and <targetxml>legis:legis[@legistype="act"]</targetxml>.</li>
                <li>If <sourcexml>LEGDOC[@legtype="leg-inst"]</sourcexml> becomes and
                            <targetxml>legis:legis[@legistype="act"]</targetxml>.</li>
                <li>If <sourcexml>LEGDOC[@legtype="misc-inst"]</sourcexml> becomes and
                            <targetxml>legis:legis[@legistype="act"]</targetxml>.</li>
            </ul>
                </p>
            <p>
                <targetxml>legis:legis[@legistype="act"]</targetxml> is the root element for
                legislation attributes are populated as follows: </p>
            <p><sourcexml>LEGDOC[@id]</sourcexml> becomes
                    <targetxml>legis:legis[@xml:id]</targetxml> and provides a unique identifier for
                this element. The presence or absence of attribute value will not affect delivery
                product behavior and default value is 'none'. </p>
            <p>
                <pre>
                   
                   &lt;LEGDOC legtype="act"&gt;
                   ...
                     &lt;docinfo:doc-lang lang="en"/&gt;
                     &lt;docinfo:doc-country iso-cc="AU"/&gt;
                   ...
                   &lt;/LEGDOC&gt;
                    
                   </pre>
                <b>becomes</b>
                <pre>
                   
                   &lt;legis:legis legistype="act" xml:lang="en-AU"&gt;
                        &lt;legis:head&gt;...&lt;/legis:head&gt;
                        &lt;legis:body&gt;...&lt;/legis:body&gt;
                        &lt;doc:metadata&gt;...&lt;/doc:metadata&gt;
                   &lt;/legis:legis&gt;
                       
                 </pre>
            </p>                
                       <p>
                           <pre>
                   
                   &lt;LEGDOC legtype="leg-inst"&gt;
                   ...
                     &lt;docinfo:doc-lang lang="en"/&gt;
                     &lt;docinfo:doc-country iso-cc="AU"/&gt;
                   ...
                   &lt;/LEGDOC&gt;
                    
                   </pre>
                           <b>becomes</b>
                           <pre>
                   
                   &lt;legis:legis legistype="act" xml:lang="en-AU"&gt;
                        &lt;legis:head&gt;...&lt;/legis:head&gt;
                        &lt;legis:body&gt;...&lt;/legis:body&gt;
                        &lt;doc:metadata&gt;...&lt;/doc:metadata&gt;
                   &lt;/legis:legis&gt;
                       
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
       <p>2016-03-04: <ph id="change_20160304_SS">Created</ph>.</p>
</section>
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-HK\HK01_Acts\HK_Legis-Introduction.dita  -->

    
    <xsl:param name="outputSchemaLoc"
        select="'http://www.lexisnexis.com/xmlschemas/content/legal/legislation/1/ sch_legis.xsd'"/>
    
    <xsl:template match="LEGDOC[@legtype='act' or @legtype='leg-inst' or @legtype='misc-inst']">
        <legis:legis>
            <xsl:call-template name="generateNSGlobalBindings"/>
            <xsl:attribute name="xsi:schemaLocation" select="$outputSchemaLoc"/>
            <xsl:apply-templates select="@*"/>
            <xsl:if test="docinfo/docinfo:doc-lang">
                <!-- Satbir :After discussion Commenting out xsl:call-template name="xml_lang" as input files have <docinfo:doc-country iso-cc="AU"/> and hard coding en-HK -->
                <xsl:attribute name="xml:lang">
                    <xsl:text>en-HK</xsl:text>
                </xsl:attribute>
            </xsl:if>
            <!--<xsl:call-template name="xml_lang"/>-->
            <legis:head>
                <xsl:apply-templates select="leg:body/leg:info/leg:juris"/>
            </legis:head>
            <xsl:apply-templates select="leg:body"/>
            <doc:metadata>
                <xsl:apply-templates select="docinfo"/>
            </doc:metadata>
        </legis:legis>
        
    </xsl:template>
    
    <xsl:template match="LEGDOC[not(@legtype)]|LEGDOC[not(@legtype='act' or @legtype='leg-inst' or @legtype='misc-inst')]">
        <xsl:call-template name="outputErrorMessage">
            <xsl:with-param name="messageText">no @legtype or @legtype value not 'act', 'leg-inst', or 'misc-inst': <xsl:value-of select="name(.)"/></xsl:with-param>
        </xsl:call-template>
    </xsl:template>
    
    <xsl:template match="LEGDOC/@legtype">
        <xsl:attribute name="legistype">act</xsl:attribute>
    </xsl:template>
    
    <xsl:template match="@searchtype"/>
    
    <!-- temporary named template 
    
    Reinstate include of 
    <xsl:include href="../../modules/docinfo/Rosetta_docinfo.doc-country_iso-cc-LxAdv-doc.docinfo_doc-content-country.xsl"/>
    after HK fixes their data.
    -->
    
    <xsl:template name="doc_content_country">
        <xsl:attribute name="doc-content-country" select="'HK'"/>        
    </xsl:template>
	

</xsl:stylesheet>