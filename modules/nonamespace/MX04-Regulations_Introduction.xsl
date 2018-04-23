<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" xmlns:regulation="urn:x-lexisnexis:content:regulation:sharedservices:1" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Introduction">
  <title>Introduction <lnpid>id-MX04-33608</lnpid></title>
  <shortdesc>This Conversion Instructions describes the conversion of the Rosetta LEGDOC DTD to
      <b>Regulation Schema Version 8.0_PROD</b>.</shortdesc>
  <body>
    
    <p>Mexico regulations samples are identified using the root element <sourcexml>LEGDOC</sourcexml>
      along with attribute <sourcexml>@legtype</sourcexml> which contains value
        <sourcexml>regulations</sourcexml>.</p>

    <section>
      Root element <sourcexml>LEGDOC</sourcexml> becomes <targetxml>regulation:regulation</targetxml> which is the root element of Regulation Schema. The source attribute <sourcexml>@xml:lang</sourcexml>, if present, can be dropped, as a separate rule has been defined to populate <targetxml>regulation:regulation/@xml:lang</targetxml>.</section>
    <section>
      <note>The attribute <sourcexml>@searchtype</sourcexml> will be suppressed from the conversion except citation markup.</note>
      <pre>

&lt;LEGDOC&gt;
  ...
  &lt;docinfo:doc-lang lang="en"/&gt;
  &lt;docinfo:doc-country iso-cc="US"/&gt;
  ...          
&lt;/LEGDOC&gt;


          <b>Becomes</b>


&lt;regulation:regulation xml:lang="es-MX"&gt;
  ...
&lt;/regulation:regulation&gt;

      </pre>
      
      <note>Elements <targetxml>regulation:head</targetxml>, <targetxml>regulation:body</targetxml> and <targetxml>doc:metadata</targetxml> are created as required children of root element <targetxml>regulation:regulation</targetxml> during conversion.</note>
      <note><p>If input document is having country code value <b>"US"</b> then it should be replaced with
        <b>"MX"</b> value.</p></note>
      <p><b>Note:</b></p>
      <p>Source elements and attributes are highlighted like this:
        <sourcexml>SOURCEXML</sourcexml></p>
      <p>Target elements and attributes are highlighted like this:
        <targetxml>TARGETXML</targetxml></p>
      <p>Copy source attributes to target attributes unless otherwise specified.</p>
      <p>Every example is represented like EXAMPLE in all the Conversion Instructions
        and is captured under <pre>pre</pre> tag.</p>
    </section>
  </body>

	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-GPL\MX04-Regulations\Introduction.dita  -->
	<xsl:message>MX04-Regulations_Introduction.xsl requires manual development!</xsl:message> 

	<xsl:template match="LEGDOC">

		<!--  Original Target XPath:  regulation:regulation   -->
		<regulation:regulation>
			<xsl:apply-templates select="@* | node()"/>
		</regulation:regulation>

	</xsl:template>

	<xsl:template match="@legtype">

		<!--  Original Target XPath:  regulation:regulation   -->
		<regulation:regulation>
			<xsl:apply-templates select="@* | node()"/>
		</regulation:regulation>

	</xsl:template>

	<xsl:template match="regulations">

		<!--  Original Target XPath:  regulation:regulation   -->
		<regulation:regulation>
			<xsl:apply-templates select="@* | node()"/>
		</regulation:regulation>

	</xsl:template>

	<xsl:template match="@xml:lang">

		<!--  Original Target XPath:  regulation:regulation/@xml:lang   -->
		<regulation:regulation>
			<xsl:attribute name="xml:lang">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</regulation:regulation>

	</xsl:template>

	<xsl:template match="@searchtype">

		<!--  Original Target XPath:  regulation:head   -->
		<regulation:head>
			<xsl:apply-templates select="@* | node()"/>
		</regulation:head>

	</xsl:template>

	<xsl:template match="SOURCEXML">

		<!--  Original Target XPath:  TARGETXML   -->
		<TARGETXML>
			<xsl:apply-templates select="@* | node()"/>
		</TARGETXML>

	</xsl:template>

</xsl:stylesheet>