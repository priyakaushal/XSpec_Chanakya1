<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" xmlns:newsitem="http://www.lexisnexis.com/xmlschemas/content/news/newsitem/1/" xmlns:nitf="http://iptc.org/std/NITF/2006-10-18/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Journaldoc-Introduction">
  <title>Introduction <lnpid>id-ST09-32615</lnpid></title>

  <body>
    <p>This Conversion Instruction describes the conversion of the <sourcexml>Rosetta JOURNALDOC DTD</sourcexml> to <targetxml>newsitem:newsitem</targetxml>.</p>
    
    <section>
      <title>Root Element</title>
      <p>JOURNALS documents are identified using the root element
        <sourcexml>JOURNALDOC</sourcexml>.</p>
      <p><sourcexml>JOURNALDOC</sourcexml> becomes <targetxml>newsitem:newsitem</targetxml>. It's a
        root element for JOURNALS. The source attributes are: <sourcexml>@id</sourcexml> becomes
          <targetxml>@xml:id</targetxml>, <sourcexml>@xml:lang</sourcexml>, if present, suppress
        attribute and content, as a separate rule has been defined to populate
          <targetxml>newsitem:newsitem/@xml:lang</targetxml>.</p>
      
      <note><p>The country code value should be vary on the basis of Local Business
        Unit.</p></note>
    </section>

    <pre>
      <b><i>Source example based on AU content</i></b>

&lt;JOURNALDOC xml:lang="en-AU" ...&gt;
        ...
        &lt;docinfo:doc-lang lang="en"/&gt;
        &lt;docinfo:doc-country iso-cc="AU"/&gt;
        ...
&lt;/JOURNALDOC&gt;

<b>Becomes</b>

&lt;newsitem:newsitem xml:lang="en-AU"&gt;
      &lt;newsitem:head&gt;...&lt;/newsitem:head&gt;
      &lt;nitf:body&gt;...&lt;/nitf:body&gt;
      &lt;doc:metadata&gt;...&lt;/doc:metadata&gt;
&lt;/newsitem:newsitem&gt;
    </pre>
    
    <pre>
      <b><i>Source example based on UK content</i></b>

&lt;JOURNALDOC&gt;
...
&lt;/JOURNALDOC&gt;

<b>Becomes</b>

&lt;newsitem:newsitem xml:lang="en-GB"&gt;
    &lt;newsitem:head&gt;...&lt;/newsitem:head&gt;
    &lt;nitf:body&gt;...&lt;/nitf:body&gt;
    &lt;doc:metadata&gt;...&lt;/doc:metadata&gt;
&lt;/newsitem:newsitem&gt;
    </pre>
    

    <p><targetxml>newsitem:head</targetxml>, <targetxml>nitf:body</targetxml>, and <targetxml>doc:metadata</targetxml> are created as required children of <targetxml>newsitem:newsitem</targetxml></p>
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

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-Standard\Newsitem\Journaldoc-Introduction.dita  -->
	<xsl:message>Journaldoc-Introduction.xsl requires manual development!</xsl:message> 

	<xsl:template match="Rosetta JOURNALDOC DTD">

		<!--  Original Target XPath:  newsitem:newsitem   -->
		<newsitem:newsitem>
			<xsl:apply-templates select="@* | node()"/>
		</newsitem:newsitem>

	</xsl:template>

	<xsl:template match="JOURNALDOC">

		<!--  Original Target XPath:  newsitem:newsitem   -->
		<newsitem:newsitem>
			<xsl:apply-templates select="@* | node()"/>
		</newsitem:newsitem>

	</xsl:template>

	<xsl:template match="@id">

		<!--  Original Target XPath:  @xml:id   -->
		<xsl:attribute name="xml:id">
			<xsl:apply-templates select="node()"/>
		</xsl:attribute>

	</xsl:template>

	<xsl:template match="@xml:lang">

		<!--  Original Target XPath:  newsitem:newsitem/@xml:lang   -->
		<newsitem:newsitem>
			<xsl:attribute name="xml:lang">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</newsitem:newsitem>

	</xsl:template>

	<xsl:template match="@searchtype">

		<!--  Original Target XPath:  TARGETXML   -->
		<TARGETXML>
			<xsl:apply-templates select="@* | node()"/>
		</TARGETXML>

	</xsl:template>

	<xsl:template match="SOURCEXML">

		<!--  Original Target XPath:  TARGETXML   -->
		<TARGETXML>
			<xsl:apply-templates select="@* | node()"/>
		</TARGETXML>

	</xsl:template>

</xsl:stylesheet>