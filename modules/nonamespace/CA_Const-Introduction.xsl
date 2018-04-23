<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" xmlns:legis="http://www.lexisnexis.com/xmlschemas/content/legal/legislation/1/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" version="2.0">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="CA_Const-Introduction">
       <title>Introduction <lnpid>id-CA08-14207</lnpid></title>    
   
 
    <body>
        <p>This Conversion Instruction describes the conversion of legis 9.2 PROD schema in the
            document.</p>
        
        <p>CA08 Constitution are identified using the root element <sourcexml>LEGDOC</sourcexml>
            with <sourcexml>docinfo:selector</sourcexml> value being set to "act".</p>
        
        <p><sourcexml>LEGDOC</sourcexml> becomes <targetxml>legis:legis</targetxml>. Its a root element for Legislation.</p>
        
        <note>The attribute <sourcexml>@searchtype</sourcexml> will be suppressed from the conversion except citation markup.</note>
        
        <pre>

&lt;LEGDOC&gt;
        ...
        &lt;docinfo:doc-lang lang="en"/&gt;
        &lt;docinfo:doc-country iso-cc="CA"/&gt;
        ...
&lt;/LEGDOC&gt;
<b>Becomes</b>

&lt;legis:legis xml:lang="en-CA"&gt;
      
      &lt;legis:head&gt;...&lt;/legis:head&gt;

      &lt;legis:body&gt;...&lt;/legis:body&gt;

      &lt;doc:metadata&gt;...&lt;/doc:metadata&gt;
      
&lt;/legis:legis&gt;
</pre>
        
        <p><targetxml>legis:head</targetxml>, <targetxml>legis:body</targetxml>, and <targetxml>doc:metadata</targetxml> are created as required children of <targetxml>legis:legis</targetxml></p>
        
        <section>
            <title>Note:</title>
            <p>Source elements and attributes are highlighted like this: <sourcexml>SOURCEXML</sourcexml></p>
            <p>Target elements and attributes are highlighted like this: <targetxml>TARGETXML</targetxml></p>
            <p>Copy source attributes to target attributes unless otherwise specified.</p>
            <p>Every example is represented like "EXAMPLE" in all the dita's and is captured
                under <pre>pre</pre>  tag.</p>
        </section>
    </body>
	</dita:topic>

	<!--  @@@ Modified date is 04/26/2017! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA08-Constitutions\CA_Const-Introduction.dita  -->
<xsl:output encoding="UTF-8"/>

    <xsl:param name="outputSchemaLoc"
        select="'http://www.lexisnexis.com/xmlschemas/content/legal/legislation/1/ sch_legis.xsd'"/>

    <!--<xsl:template match="LEGDOC[@legtype='act' or @legtype='leg-inst' or @legtype='misc-inst']">
    -->    
    <xsl:template match="LEGDOC">
        <legis:legis>
            <xsl:for-each select="$lexisAdvNamespaces
                /*">
                <xsl:sort/>
                <xsl:namespace name="{substring-after(substring-before(., '='), ':')}" select="substring-after(translate(., '&#034;', ''), '=')"/>
            </xsl:for-each>
            
            <xsl:attribute name="xsi:schemaLocation" select="$outputSchemaLoc"/>
            <xsl:apply-templates select="@*"/>
            <xsl:call-template name="xml_lang"/>
         <!--   <legis:head>
                <xsl:apply-templates select="leg:info/leg:juris"/>

               </legis:head>-->
          
            <xsl:apply-templates select="leg:body"/>
            <doc:metadata>
                <xsl:apply-templates select="docinfo"/>
            </doc:metadata>
        </legis:legis>
        
    </xsl:template>
    <xsl:template match="LEGDOC/@legtype"/>
    <!--<xsl:template match="LEGDOC[not(@legtype)]|LEGDOC[not(@legtype='act' or @legtype='leg-inst' or @legtype='misc-inst')]">
        <xsl:call-template name="outputErrorMessage">
            <xsl:with-param name="messageText">no @legtype or @legtype value not 'act', 'leg-inst', or 'misc-inst': <xsl:value-of select="name(.)"/></xsl:with-param>
        </xsl:call-template>
    </xsl:template>
    
    <xsl:template match="LEGDOC/@legtype">
        <xsl:attribute name="legistype">act</xsl:attribute>
    </xsl:template>-->
    
</xsl:stylesheet>