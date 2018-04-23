<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
  xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
  xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" 
  xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
  xmlns:pubinfo="http://www.lexisnexis.com/xmlschemas/content/shared/publication-info/1/"
  xmlns:casesum="http://www.lexisnexis.com/xmlschemas/content/legal/case-summary/1/"
  xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:comm="http://www.lexis-nexis.com/glp/comm"
  xmlns:courtcase="http://www.lexisnexis.com/xmlschemas/content/legal/courtcase/1/" xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" version="2.0" exclude-result-prefixes="#all">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="AU01_introduction">
  <title>Introduction <lnpid>id-AU01-18207</lnpid></title>

  <body>
    <p>This Conversion Instruction describes the conversion of Courtcase 9.20 PROD schema in the
      document.</p>
    
    <p>AU cases are identified using the root element <sourcexml>CASEDOC</sourcexml> with attribute <sourcexml>@type=”fulltext”</sourcexml> and <sourcexml>docinfo:doc-country iso-cc=”AU”</sourcexml>.</p>

    <p><sourcexml>CASEDOC</sourcexml> becomes <targetxml>courtcase:courtcase</targetxml>. Its a root element for CaseLaw. The source attributes are: 
      <sourcexml>@id</sourcexml> becomes <targetxml>@xml:id</targetxml>,
      <sourcexml>@xml:lang</sourcexml>, if present, suppress attribute and content, as a separate rule has been defined to populate <targetxml>courtcase:courtcase/@xml:lang</targetxml> and <sourcexml>@type</sourcexml> suppress attribute and content, because the distinction made by this attribute in source is handled by separate schema in NL.
    </p>
    
    <note>The attribute <sourcexml>@searchtype</sourcexml> will be suppressed from the conversion except citation markup.</note>

<pre>

&lt;CASEDOC xml:lang="en-AU" ...&gt;
        ...
        &lt;docinfo:doc-lang lang="en"/&gt;
        &lt;docinfo:doc-country iso-cc="AU"/&gt;
        ...
&lt;/CASEDOC&gt;
<b>Becomes</b>

&lt;courtcase:courtcase xml:lang="en-AU"&gt;
      
      &lt;courtcase:head&gt;...&lt;/courtcase:head&gt;

      &lt;courtcase:body&gt;...&lt;/courtcase:body&gt;

      &lt;doc:metadata&gt;...&lt;/doc:metadata&gt;
      
&lt;/courtcase:courtcase&gt;
</pre>

    <p><targetxml>courtcase:head</targetxml>, <targetxml>courtcase:body</targetxml>, and <targetxml>doc:metadata</targetxml> are created as required children of <targetxml>courtcase:courtcase</targetxml></p>

    <section>
      <title>Note:</title>
      <p>Source elements and attributes are highlighted like this: <sourcexml>SOURCEXML</sourcexml></p>
      <p>Target elements and attributes are highlighted like this: <targetxml>TARGETXML</targetxml></p>
      <p>Copy source attributes to target attributes unless otherwise specified.</p>
      <p>Every example is represented like "EXAMPLE" in all the dita's and is captured under <pre>pre</pre> tag.</p>
    </section>
  <section>
      <title>Changes:</title>
    <p>2016-06-07: <ph id="change_20160607_HP">Schema version updated to <b>Courtcase 9.19
          PROD</b></ph></p>
  </section>
  
  </body>

	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU01_CaseLaw\AU01_introduction.dita  -->
	

	<xsl:template match="CASEDOC[@type='fulltext']">
		
		<!--<xsl:attribute name="xsi:schemaLocation" select="$outputSchemaLoc"/>-->
		<!--  Original Target XPath:  courtcase:courtcase   -->
		<courtcase:courtcase>
		  <xsl:call-template name="generateNSGlobalBindings"/>
			<xsl:attribute name="xsi:schemaLocation" select="$outputSchemaLoc"/>
			<xsl:apply-templates select="@*"/>
			<xsl:if test="docinfo/docinfo:doc-lang">
				<xsl:call-template name="xml_lang"/>
			</xsl:if>
			<xsl:apply-templates select="case:body/case:headnote"/>
		  
			<xsl:apply-templates select="toc"/>
			<xsl:apply-templates select="case:body"/>
			
			<doc:metadata>	
			  <xsl:if test="//copyright">
			    <pubinfo:pubinfo>
			      <xsl:apply-templates select="//copyright"/>
			    </pubinfo:pubinfo>
			  </xsl:if>			  
				<xsl:apply-templates select="docinfo"/>		
			</doc:metadata>
		</courtcase:courtcase>
		
	</xsl:template>
  <xsl:template match="case:disposition[parent::case:headnote]"/>
  <xsl:template match="@type"/>
  <xsl:template match="@xml:lang"/>
</xsl:stylesheet>