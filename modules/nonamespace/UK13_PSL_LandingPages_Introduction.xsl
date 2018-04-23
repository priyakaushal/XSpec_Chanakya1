<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
	xmlns:comm="http://www.lexis-nexis.com/glp/comm"
	xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/"
	xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" 
	xmlns:seclaw="http://www.lexisnexis.com/xmlschemas/content/legal/secondary-law/1/" version="2.0"
	exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/"
		id="psl_landingpgs-introduction">
		<title>Introduction <lnpid>id-UK13-30011</lnpid></title>
		<body>
			<section>
				<title>These Conversion Instructions describe the conversion of UK PSL Landing Page
					documents using COMMENTARYDOC standard DTD mark-up to the current version of the
					Secondary Law Schema (seclaw).</title>
			</section>
			<section>
				<title>Notes</title>
				<p>Source elements and attributes are highlighted like this:
						<sourcexml>sourcexml</sourcexml></p>
				<p>Target elements and attributes are highlighted like this:
						<targetxml>targetxml</targetxml></p>
				<p>Verify content of the following target attributes: <ul>
						<li><sourcexml>@month</sourcexml> becomes <targetxml>@month</targetxml> and
							is between 01-12. If the value is outside this range, do not output
								<targetxml>@month</targetxml>.</li>
						<li><sourcexml>@day</sourcexml> becomes <targetxml>@day</targetxml> and is
							between 01-31. If the value is outside this range, do not output
								<targetxml>@day</targetxml>.</li>
						<li><sourcexml>@year</sourcexml> becomes <targetxml>@year</targetxml> and is
							4 digits in length. If the value is any other length, do not output
								<targetxml>@year</targetxml>.</li>
					</ul>
					<note>If a source <sourcexml>@day</sourcexml> or <sourcexml>@month</sourcexml>
						attribute value is only one digit, it should be output with a leading 0 to
						make it two digits.</note>
				</p>
				<p>Copy source attributes to target attributes unless otherwise specified.</p>
				<p>Whenever the terms "whitespace" or "white-space" are used, they refer to
					consecutive sequences of any number of spaces, tabs, newlines, and all character
					entities that represent spacing such as <sourcexml>&amp;nbsp;</sourcexml>,
						<sourcexml>&amp;ensp;</sourcexml>, <sourcexml>&amp;emsp;</sourcexml>. </p>
			</section>
		</body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK13_PSL_LandingPages\Introduction.dita  -->
	<!--<xsl:message>UK13_PSL_LandingPages_Introduction.xsl requires manual development!</xsl:message> -->

	<!--<xsl:template match="sourcexml">

		<!-\-  Original Target XPath:  targetxml   -\->
		<targetxml>
			<xsl:apply-templates select="@* | node()"/>
		</targetxml>

	</xsl:template>

	<xsl:template match="@month">

		<!-\-  Original Target XPath:  @month   -\->
		<xsl:attribute name="month">
			<xsl:apply-templates select="node()"/>
		</xsl:attribute>

	</xsl:template>

	<xsl:template match="@day">

		<!-\-  Original Target XPath:  @day   -\->
		<xsl:attribute name="day">
			<xsl:apply-templates select="node()"/>
		</xsl:attribute>

	</xsl:template>

	<xsl:template match="@year">

		<!-\-  Original Target XPath:  @year   -\->
		<xsl:attribute name="year">
			<xsl:apply-templates select="node()"/>
		</xsl:attribute>

	</xsl:template>

	<xsl:template match="&amp;nbsp;">

		<!-\-  Original Target XPath:     -\->
		<!-\-  Could not determine target element or attribute name:  <>  -\->			<xsl:apply-templates select="@* | node()"/>
		<!-\-  Could not determine target element or attribute name:  </>  -\->

	</xsl:template>

	<xsl:template match="&amp;ensp;">

		<!-\-  Original Target XPath:     -\->
		<!-\-  Could not determine target element or attribute name:  <>  -\->			<xsl:apply-templates select="@* | node()"/>
		<!-\-  Could not determine target element or attribute name:  </>  -\->

	</xsl:template>

	<xsl:template match="&amp;emsp;">

		<!-\-  Original Target XPath:     -\->
		<!-\-  Could not determine target element or attribute name:  <>  -\->			<xsl:apply-templates select="@* | node()"/>
		<!-\-  Could not determine target element or attribute name:  </>  -\->

	</xsl:template>-->



	<xsl:template match="COMMENTARYDOC">
		<!--  Original Target XPath:  seclaw:seclaw   -->
		<seclaw:seclaw>
			<xsl:for-each select="$lexisAdvNamespaces/*">
				<xsl:sort/>
				<xsl:namespace name="{substring-after(substring-before(., '='), ':')}"
					select="substring-after(translate(., '&#034;', ''), '=')"/>
			</xsl:for-each>
			<xsl:attribute name="xsi:schemaLocation" select="$outputSchemaLoc"/>			
			<xsl:call-template name="xml_lang"/>
			<xsl:attribute name="seclawtype">practicalguidance</xsl:attribute>

			<!--<xsl:apply-templates select="@* | node()"/>-->
			<seclaw:head>
				<xsl:comment>Mandatory element according to the CI</xsl:comment>
			</seclaw:head>
			<seclaw:body>
				<!-- <xsl:apply-templates select="comm:info/contrib"/>-->
				<xsl:apply-templates select="comm:body"/>
			</seclaw:body>
			<!---->
			<doc:metadata>
				<xsl:apply-templates select="/COMMENTARYDOC/docinfo"/>
				<!--<xsl:apply-templates select="docinfo"/>-->
			</doc:metadata>
		</seclaw:seclaw>
	</xsl:template>


	<xsl:template match="COMMENTARYDOC/@xml:lang"/>
</xsl:stylesheet>
