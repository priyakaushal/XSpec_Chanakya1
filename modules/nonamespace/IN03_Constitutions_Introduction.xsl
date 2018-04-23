<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:ci="http://www.lexis-nexis.com/ci" xmlns:const="http://www.lexisnexis.com/xmlschemas/content/legal/constitution/1/" xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" xmlns:lnci="http://www.lexisnexis.com/xmlschemas/content/shared/citations/1/" version="2.0" exclude-result-prefixes="dita ci">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="IN03_Constitutions_Introduction">
  <title>Introduction <lnpid>id-IN03-15807</lnpid></title>

  <body>
    <p>This Conversion Instruction describes the conversion of Constitutions 4.2 PROD schema in the
      document.</p>
    
    <p>IN constitutions are identified using the root element <sourcexml>LEGDOC</sourcexml> with
      attribute <sourcexml>@legtype=”constitution”</sourcexml>.</p>

    <p><sourcexml>LEGDOC</sourcexml> becomes <targetxml>const:const</targetxml>. Its a root element for Constitutions. The source attributes are: 
      <sourcexml>@id</sourcexml> becomes <targetxml>@xml:id</targetxml>,
      <sourcexml>@xml:lang</sourcexml>, if present, suppress attribute and content, as a separate rule has been defined to populate <targetxml>const:const/@xml:lang</targetxml> and <sourcexml>@type</sourcexml> suppress attribute and content, because the distinction made by this attribute in source is handled by separate schema in NL.
    </p>
    
    <note>The attribute <sourcexml>@searchtype</sourcexml> will be suppressed from the conversion except citation markup.</note>
    <note><p>Conversion should retain <sourcexml>ci:in</sourcexml> empty element in the target as
          <targetxml>lnci:in</targetxml>.</p></note>
    

<pre>

&lt;LEGDOC legtype="constitutions"&gt;
        ...
        &lt;docinfo:doc-lang lang="en"/&gt;
        &lt;docinfo:doc-country iso-cc="IN"/&gt;
        ...
&lt;/LEGDOC&gt;
<b>Becomes</b>

&lt;const:const xml:lang="en-IN"&gt;
      
      &lt;const:head&gt;...&lt;/const:head&gt;

      &lt;const:body&gt;...&lt;/const:body&gt;

      &lt;doc:metadata&gt;...&lt;/doc:metadata&gt;
      
&lt;/const:const&gt;
</pre>

    <p><targetxml>const:head</targetxml>, <targetxml>const:body</targetxml>, and <targetxml>doc:metadata</targetxml> are created as required children of <targetxml>const:const</targetxml></p>

    <section>
      <title>Note:</title>
      <p>Source elements and attributes are highlighted like this: <sourcexml>SOURCEXML</sourcexml></p>
      <p>Target elements and attributes are highlighted like this: <targetxml>TARGETXML</targetxml></p>
      <p>Copy source attributes to target attributes unless otherwise specified.</p>
      <p>Every example is represented like "EXAMPLE" in all the dita's and is captured under <pre>pre</pre> tag.</p>
    </section>
  </body>

	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-GPL\IN03-Constitutions\IN03_Constitutions_Introduction.dita  -->
	<xsl:message>IN03_Constitutions_Introduction.xsl requires manual development!</xsl:message> 

	<xsl:template match="LEGDOC">

		<!--  Original Target XPath:  const:const   -->
		<const:const>
			<xsl:apply-templates select="@* | node()"/>
		</const:const>

	</xsl:template>

	<xsl:template match="@legtype=”constitution”">

		<!--  Original Target XPath:  const:const   -->
		<const:const>
			<xsl:apply-templates select="@* | node()"/>
		</const:const>

	</xsl:template>

	<xsl:template match="@id">

		<!--  Original Target XPath:  @xml:id   -->
		<xsl:attribute name="xml:id">
			<xsl:apply-templates select="node()"/>
		</xsl:attribute>

	</xsl:template>

	<xsl:template match="@xml:lang">

		<!--  Original Target XPath:  const:const/@xml:lang   -->
		<const:const>
			<xsl:attribute name="xml:lang">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</const:const>

	</xsl:template>

	<xsl:template match="@type">

		<!--  Original Target XPath:  lnci:in   -->
		<lnci:in>
			<xsl:apply-templates select="@* | node()"/>
		</lnci:in>

	</xsl:template>

	<xsl:template match="@searchtype">

		<!--  Original Target XPath:  lnci:in   -->
		<lnci:in>
			<xsl:apply-templates select="@* | node()"/>
		</lnci:in>

	</xsl:template>

	<xsl:template match="ci:in">

		<!--  Original Target XPath:  lnci:in   -->
		<lnci:in>
			<xsl:apply-templates select="@* | node()"/>
		</lnci:in>

	</xsl:template>

	<xsl:template match="SOURCEXML">

		<!--  Original Target XPath:  TARGETXML   -->
		<TARGETXML>
			<xsl:apply-templates select="@* | node()"/>
		</TARGETXML>

	</xsl:template>

</xsl:stylesheet>