<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:courtcase="http://www.lexisnexis.com/xmlschemas/content/legal/courtcase/1/" xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Caselaw_Introduction">
  <title>Introduction <lnpid>id-IN03-39010</lnpid></title>

  <body>
    <p>This Conversion Instruction describes the conversion of Courtcase 9.20 PROD schema in the
      document.</p>
    
    <p>India cases are identified using the root element <sourcexml>CASEDOC</sourcexml> with
      attribute <sourcexml>@type=”fulltext”</sourcexml>.</p>

    <p><sourcexml>CASEDOC</sourcexml> becomes <targetxml>courtcase:courtcase</targetxml>. Its a root element for CaseLaw. The source attributes are: 
      <sourcexml>@id</sourcexml> becomes <targetxml>@xml:id</targetxml>,
      <sourcexml>@xml:lang</sourcexml>, if present, suppress attribute and content, as a separate rule has been defined to populate <targetxml>courtcase:courtcase/@xml:lang</targetxml> and <sourcexml>@type</sourcexml> suppress attribute and content, because the distinction made by this attribute in source is handled by separate schema in NL.
    </p>
    
    <note>The attribute <sourcexml>@searchtype</sourcexml> will be suppressed from the conversion except citation markup.</note>

<pre>
&lt;CASEDOC xml:lang="en" ...&gt;
        ...
        &lt;docinfo:doc-lang lang="en"/&gt;
        &lt;docinfo:doc-country iso-cc="IN"/&gt;
        ...
&lt;/CASEDOC&gt;

<b>Becomes</b>

&lt;courtcase:courtcase xml:lang="en-IN"&gt;
      
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
      <title>Changes</title>
      <p>2016-08-17: <ph id="change_20160817_HP">Created</ph>.</p>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-IN\IN03_Cases\Caselaw_Introduction.dita  -->
	<xsl:message>Caselaw_Introduction.xsl requires manual development!</xsl:message> 

	<xsl:template match="CASEDOC">

		<!--  Original Target XPath:  courtcase:courtcase   -->
		<courtcase:courtcase>
			<xsl:apply-templates select="@* | node()"/>
		</courtcase:courtcase>

	</xsl:template>

	<xsl:template match="@type=”fulltext”">

		<!--  Original Target XPath:  courtcase:courtcase   -->
		<courtcase:courtcase>
			<xsl:apply-templates select="@* | node()"/>
		</courtcase:courtcase>

	</xsl:template>

	<xsl:template match="@id">

		<!--  Original Target XPath:  @xml:id   -->
		<xsl:attribute name="xml:id">
			<xsl:apply-templates select="node()"/>
		</xsl:attribute>

	</xsl:template>

	<xsl:template match="@xml:lang">

		<!--  Original Target XPath:  courtcase:courtcase/@xml:lang   -->
		<courtcase:courtcase>
			<xsl:attribute name="xml:lang">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</courtcase:courtcase>

	</xsl:template>

	<xsl:template match="@type">

		<!--  Original Target XPath:  courtcase:head   -->
		<courtcase:head>
			<xsl:apply-templates select="@* | node()"/>
		</courtcase:head>

	</xsl:template>

	<xsl:template match="@searchtype">

		<!--  Original Target XPath:  courtcase:head   -->
		<courtcase:head>
			<xsl:apply-templates select="@* | node()"/>
		</courtcase:head>

	</xsl:template>

	<xsl:template match="SOURCEXML">

		<!--  Original Target XPath:  TARGETXML   -->
		<TARGETXML>
			<xsl:apply-templates select="@* | node()"/>
		</TARGETXML>

	</xsl:template>

</xsl:stylesheet>