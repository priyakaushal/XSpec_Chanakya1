<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
	xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" 
	xmlns:navaid="urn:x-lexisnexis:content:navigationaid:sharedservices:1"
	xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/"
	xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo"
	xmlns:in="http://www.lexis-nexis.com/glp/in"
	xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" 
	version="2.0" exclude-result-prefixes="dita in">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Introduction">
  <title>Introduction <lnpid>id-UK18-35207</lnpid></title>
  <body>
    <section><title>These Conversion Instructions describe the conversion of UK Indices documents using INDEXDOC
        standard DTD mark-up to the current version of the Navigation Aid And Landing Page Document
        Schema.</title>
    </section>

    <section>
      <title>The UK-Indices content set contains files marked-up according to the
          <sourcexml>INDEXDOC</sourcexml> DTD. For <sourcexml>INDEXDOC</sourcexml> DTD mark-up
        within a landing page document, the following specific xpath conversions apply to the first
        few high level elements.</title>
      <ul>
        <li><sourcexml>/INDEXDOC</sourcexml> becomes <targetxml>/navaid:landingpage</targetxml></li>
        <li><sourcexml>/INDEXDOC/docinfo</sourcexml> becomes
            <targetxml>/navaid:landingpage/doc:metadata/doc:docinfo</targetxml> and its various
          children are converted as described in the <b>Metadata</b> section.</li>
        <li><sourcexml>/INDEXDOC/in:body</sourcexml> becomes
            <targetxml>/navaid:landingpage/navaid:landingpagebody</targetxml></li>
        <li><sourcexml>/INDEXDOC/in:body/heading</sourcexml> becomes
            <targetxml>/navaid:landingpage/navaid:landingpagebody/heading</targetxml>. The
          attributes of <sourcexml>heading</sourcexml> in this xpath are converted as described for
          the <xref href="../../common_newest/Rosetta_heading-LxAdv-heading.dita">common heading element</xref>. All
          subelements (such as <sourcexml>title</sourcexml> and its children) are converted using
          the common element instructions for these elements provided in the <b>General Mark-Up</b> section of these
          conversion instructions. However, if an
            <sourcexml>/INDEXDOC/in:body/heading/title/refpt</sourcexml> element occurs, the
            <sourcexml>refpt</sourcexml> is not only converted to <targetxml>ref:anchor</targetxml>
          as described for the <xref href="../../common_newest/Rosetta_refpt-LxAdv-ref.anchor.dita">common refpt
            element</xref>, but is also moved to just before
            <targetxml>/navaid:landingpage/navaid:landingpagebody/heading</targetxml> so that its
          XPath is
          <targetxml>/navaid:landingpage/navaid:landingpagebody/ref:anchor</targetxml>.</li>
      </ul>
    </section>

    <section>
      <title>Source XML for start of INDEXDOC</title>
      <codeblock>

&lt;INDEXDOC ...&gt;
  &lt;!-- ... --&gt;
  &lt;in:body&gt;
    &lt;heading&gt;
      &lt;title&gt;ADOPTED CHILDREN REGISTER&lt;/title&gt;
      &lt;refpt id="0NBT_1_ADOPTED_CHILDREN_REGISTER:HTCOMM-INDEXID" type="ext" /&gt;
    &lt;/heading&gt;


</codeblock>
    </section>
    <section>
      <title>Target XML for start of navaid:landingpage</title>
      <codeblock>

&lt;navaid:landingpage ...&gt;
  &lt;navaid:landingpagebody&gt;
    &lt;ref:anchor id="0NBT_1_ADOPTED_CHILDREN_REGISTER:HTCOMM-INDEXID" anchortype="global"/&gt;
    &lt;heading&gt;
      &lt;title&gt;ADOPTED CHILDREN REGISTER&lt;/title&gt;
    &lt;/heading&gt;

</codeblock>
    </section>

    <section>
      <title>Notes</title>
      <p>Source elements and attributes are highlighted like this:
        <sourcexml>sourcexml</sourcexml></p>
      <p>Target elements and attributes are highlighted like this:
        <targetxml>targetxml</targetxml></p>
      <p>Verify content of following target attributes: <ul>
          <li><sourcexml>@month</sourcexml> becomes <targetxml>@month</targetxml> and is between 01-12. If the value is outside this range, do not output <targetxml>@month</targetxml>.</li>

          <li><sourcexml>@day</sourcexml> becomes <targetxml>@day</targetxml> and is between 01-31. If the value is outside this range, do not output <targetxml>@day</targetxml>.</li>

          <li><sourcexml>@year</sourcexml> becomes <targetxml>@year</targetxml> and is 4 digits in length. f the value is any other length, do not output <targetxml>@year</targetxml>.</li>
        </ul>

        <note>If a source <sourcexml>@day</sourcexml> or <sourcexml>@month</sourcexml> value is only one digit, it should be output with a leading 0 to make it two digits.</note>
      </p>
      <p>Whenever the terms "whitespace" or "white-space" are used, they refer to consecutive sequences of any number of spaces, tabs, newlines, and all character entities that represent spacing such as <sourcexml>&amp;nbsp;</sourcexml>, <sourcexml>&amp;ensp;</sourcexml>, <sourcexml>&amp;emsp;</sourcexml>.
        </p>
    </section>
    <section>
      <title>Changes</title>
      <p>2015-02-16: <ph id="change_20150516_SS">Created.</ph></p>
    </section>
  </body>


	</dita:topic>

  <xsl:param name="outputSchemaLoc"
    select="'urn:x-lexisnexis:content:navigationaid:sharedservices:1 navigationaid.xsd'"/>
  
	<xsl:template match="INDEXDOC">

		<!--  Original Target XPath:  /navaid:landingpage   -->
		<navaid:landingpage>
		  <xsl:call-template name="generateNSGlobalBindings"/>
		  
		  <xsl:attribute name="xsi:schemaLocation" select="$outputSchemaLoc"/>
		  <xsl:apply-templates select="@*"/>
		  <xsl:call-template name="xml_lang"/>
		  <xsl:apply-templates select="in:body"/>
		  <doc:metadata>
		    <xsl:apply-templates select="docinfo"/>
		  </doc:metadata>
		</navaid:landingpage>

	</xsl:template>
  
	<xsl:template match="/INDEXDOC/in:body">

		<!--  Original Target XPath:  /navaid:landingpage/navaid:landingpagebody   -->
			<navaid:landingpagebody>
				<xsl:apply-templates select="@*"/>
				<xsl:apply-templates select="heading/title/refpt"/>
				<xsl:apply-templates select="node()"/>
			</navaid:landingpagebody>
		

	</xsl:template>
	
	<xsl:template match="@searchtype"/>
  
  <xsl:template match="docinfo:doc-lang"/>
  
  <xsl:template match="docinfo:doc-country"/>


</xsl:stylesheet>