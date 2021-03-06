<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_CAN_title-Chof-leg.heading_to-LexisAdvance_heading_title">
	<title><sourcexml>leg:heading/title</sourcexml> to <targetxml>heading/title</targetxml> <lnpid>id-CCCC-10253</lnpid></title>
	<body>
		<section>
			<title>Instructions <i>[common element]</i></title>
			<p><sourcexml>title</sourcexml> becomes <targetxml>title</targetxml> with attributes: <ul>
					<li><sourcexml>@inline</sourcexml> becomes <targetxml>@inline</targetxml> with
						tokenized values of "true" and "false"</li>
					<li><sourcexml>@align</sourcexml> becomes <targetxml>@align</targetxml>. <note>If
								<sourcexml>@align</sourcexml> attribute value is <b>"center"</b>
							(i.e. align="center") then remove the <sourcexml>@align</sourcexml>
							attribute because this attribute default value is
								<targetxml>"left"</targetxml>. This rule is applicable for three CAN
							content stream: CA05- Acts &amp; Bills, CA06-Regs, CA07-Court Rules and
							CA08-Constitution. </note>
						<note>The attributes <targetxml>@includeintoc</targetxml> and
								<targetxml>@alternatetoccaption</targetxml> will be part of element
								<targetxml>primlaw:level</targetxml></note></li>
				</ul></p>
			
		</section>
		
		<example>
			<title>Source XML 1: If [@align="center"] scenario comes under the
					<sourcexml>leg:heading</sourcexml>
			</title>
			<codeblock>

&lt;leg:level&gt;
    &lt;leg:level-vrnt searchtype="LEGISLATION" leveltype="2"&gt;
        &lt;leg:heading align="center"&gt;
            &lt;title inline="true"&gt;SECTION&lt;/title&gt;
            &lt;desig&gt;&lt;designum searchtype="SECT-NUM"&gt;190&lt;/designum&gt;&lt;/desig&gt;
        &lt;/leg:heading&gt;
        ....
    &lt;/leg:level-vrnt&gt;
&lt;/leg:level&gt;

 </codeblock>
		</example>
		
		<example>
			<title>Target XML</title>
			<codeblock>

&lt;primlaw:level leveltype="unclassified"&gt;
	&lt;heading&gt;
		&lt;title inline="true"&gt;SECTION&lt;/title&gt;
		&lt;desig&gt;190&lt;/desig&gt;
	&lt;/heading&gt;
	....
&lt;/primlaw:level&gt;

	</codeblock>
		</example>
		<example>
			<title>Source XML 2:  If [@align="center"] scenario comes under the
					<sourcexml>leg:heading/title</sourcexml></title>
			<codeblock>

&lt;leg:level-vrnt searchtype="LEGISLATION" leveltype="2"&gt;
	&lt;leg:heading subdoc="true" toc-caption="General Matters Respecting the Trade"&gt;
		&lt;title align="center"&gt;General Matters Respecting the Trade&lt;/title&gt;
	&lt;/leg:heading&gt;
	....
&lt;/leg:level&gt;

	</codeblock>
		</example>
		
		<example>
			<title>Target XML</title>
			<codeblock>

&lt;primlaw:level leveltype="unclassified" includeintoc="true" alternatetoccaption="General Matters Respecting the Trade"&gt;
	&lt;heading&gt;
  	&lt;title&gt;General Matters Respecting the Trade&lt;/title&gt;
	&lt;/heading&gt;
	....
&lt;/primlaw:level&gt;

	</codeblock>
		</example>
		<section>
			<title>Changes</title>
			<p>2014-10-01: <ph id="change_20141001_ss">Added CA08 content stream code inside the rule for
					suppressed the "[@align="center"]" attribute in target mapping.</ph></p>
			<p>2013-05-22: <ph id="change_20130522_ss">Suppressed the "[@align="center"]" attribute in target
					mapping and this rule will be applicable for CA05- Acts &amp; Bills, CA06-Regs
					and CA07-Court Rules.</ph></p>
			<p>2013-01-28: <ph id="change_20130128_xxx">Created</ph></p>
	</section>
	</body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_CAN_title-Chof-leg.heading_to-LexisAdvance_heading_title.dita  -->
	
	<xsl:template match="leg:heading/title">

		<!--  Original Target XPath:  heading/title   -->
		<heading>
			<title>
				<xsl:apply-templates select="@* | node()"/>
			</title>
		</heading>

	</xsl:template>

	<xsl:template match="title">

		<!--  Original Target XPath:  title   -->
		<title>
			<xsl:apply-templates select="@* | node()"/>
		</title>

	</xsl:template>

	<xsl:template match="@inline">

		<!--  Original Target XPath:  @inline   -->
		<xsl:attribute name="inline">
			<xsl:value-of select="." />
		</xsl:attribute>

	</xsl:template>

	<xsl:template match="@align">

		<!--  Original Target XPath:  @align   -->
		<xsl:attribute name="align">
			<xsl:value-of select="."/>
		</xsl:attribute>

	</xsl:template>

	<xsl:template match="leg:heading">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

</xsl:stylesheet>