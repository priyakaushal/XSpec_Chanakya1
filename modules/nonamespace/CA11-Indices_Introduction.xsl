<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:pubinfo="http://www.lexisnexis.com/xmlschemas/content/shared/publication-info/1/"
  xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
  xmlns:biblio="urn:x-lexisnexis:content:bibliography:sharedservices:1" xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"
  xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" 
  xmlns:dig="http://www.lexis-nexis.com/glp/dig" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="CA-Dictionaries_Introduction">
  <title>Introduction <lnpid>id-CA11-14812</lnpid></title>

  <body>
    <p>This Conversion Instruction describes the conversion of Bibliography 4.3 BETA Schema in the
      document.</p>
    
    <p>CA Indices are identified using the root element <sourcexml>DIGESTDOC</sourcexml>.</p>

    <p><sourcexml>DIGESTDOC</sourcexml> becomes <targetxml>biblio:biblio</targetxml>. It's a root
      element for CA Indices. The source attributes are: <sourcexml>@id</sourcexml> becomes
        <targetxml>@xml:id</targetxml>, <sourcexml>@xml:lang</sourcexml>, if present, suppress
      attribute and content, as a separate rule has been defined to populate
        <targetxml>biblio:biblio/@xml:lang</targetxml>.</p>

<pre>

&lt;DIGESTDOC ...&gt;
        ...
        &lt;docinfo:doc-lang lang="en"/&gt;
        &lt;docinfo:doc-country iso-cc="CA"/&gt;
        ...
&lt;/DIGESTDOC&gt;

<b>Becomes</b>

&lt;biblio:biblio xml:lang="en-CA"&gt;
      
      &lt;biblio:head&gt;...&lt;/biblio:head&gt;
      
      &lt;biblio:body&gt;...&lt;/biblio:body&gt;
      
      &lt;doc:metadata&gt;...&lt;/doc:metadata&gt;

&lt;/biblio:biblio&gt;
</pre>
    <p><targetxml>biblio:body</targetxml>, and
        <targetxml>doc:metadata</targetxml> are created as required children of
        <targetxml>biblio:biblio</targetxml></p>
    
    <note>The <sourcexml>@searchtype</sourcexml> attribute will be suppressed from conversion except for the citation elements.</note>
    <section>
      <title>Note:</title>
      <p>Source elements and attributes are highlighted like this: <sourcexml>SOURCEXML</sourcexml></p>
      <p>Target elements and attributes are highlighted like this: <targetxml>TARGETXML</targetxml></p>
      <p>Copy source attributes to target attributes unless otherwise specified.</p>
      <p>Every example is represented like "EXAMPLE" in all the dita's and is captured under <pre>pre</pre> tag.</p>
    </section>
  </body>

	</dita:topic>


	<xsl:template match="DIGESTDOC">
		
		<!--  Original Target XPath:  biblio:biblio   -->
		<biblio:biblio>
		  <xsl:call-template name="generateNSGlobalBindings"/>
		  
		  <xsl:attribute name="xsi:schemaLocation" select="$outputSchemaLoc"/>
			<xsl:apply-templates select="@*"/>
			<xsl:call-template name="xml_lang"/>
			<biblio:head>
				<xsl:apply-templates select="dig:body/heading/title"/>
			  <xsl:apply-templates select="dig:body/dig:collection/dig:info/dig:subject"/>
			</biblio:head>
			
		  <xsl:variable name="hierarchy">
			<xsl:apply-templates select="dig:body"/>
			</xsl:variable>
		  <xsl:variable name="suppress">
		    <xsl:apply-templates select="$hierarchy" mode="hierarchy"/>
		  </xsl:variable>
		  <xsl:apply-templates select="$suppress" mode="suppress"/>
			<doc:metadata>
			  <xsl:if test="/DIGESTDOC/dig:body/dig:info/publication|/DIGESTDOC/dig:body/dig:info/pubdate">
			  <pubinfo:pubinfo>
			  <xsl:apply-templates select="/DIGESTDOC/dig:body/dig:info/publication"/>
			  <xsl:apply-templates select="/DIGESTDOC/dig:body/dig:info/pubdate"/>
			  </pubinfo:pubinfo>
			  </xsl:if>
				<xsl:apply-templates select="docinfo"/>
			</doc:metadata>
		</biblio:biblio>
		</xsl:template>
	
  
  
  <xsl:template match="node()|@*" mode="hierarchy" >
    <xsl:copy>
      <xsl:apply-templates select="node()|@*" mode="hierarchy"/>
    </xsl:copy>
  </xsl:template>	
  
  <xsl:template match="node()|@*" mode="suppress" >
    <xsl:copy>
      <xsl:apply-templates select="node()|@*" mode="suppress"/>
    </xsl:copy>
  </xsl:template>	
  <!-- suppressed.  separate rule for xmllang on root  -->
  <xsl:template match="DIGESTDOC/@xml:lang"/>
  
  
 
	

</xsl:stylesheet>