<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo"
	xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/"
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/" version="2.0"
	exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="navaid-metadata">
		<title>Metadata</title>
		<body>
			<p>This section describes the conversion of meta-data elements. The XPath
					<sourcexml>/COMMENTARYDOC/docinfo</sourcexml> becomes
					<targetxml>/seclaw:seclaw/doc:metadata/doc:docinfo</targetxml> and the
					<sourcexml>docinfo</sourcexml> element's various children are converted as
				described in this section.</p>
			<note>In the Rosetta source data <sourcexml>/COMMENTARYDOC/docinfo</sourcexml> occurs at
				the <b>start</b> of the document, <b>before</b> the
					<sourcexml>/COMMENTARYDOC/comm:body</sourcexml> element. In the New Lexis target
				data, <targetxml>/seclaw:seclaw/doc:metadata/doc:docinfo</targetxml> occurs at the
					<b>end</b> of the document, <b>after</b> the
					<targetxml>/seclaw:seclaw/seclaw:body</targetxml> element.</note>
		</body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK13_PSL_LandingPages\metadata.dita  -->
	<!--<xsl:message>UK13_PSL_LandingPages_metadata.xsl requires manual development!</xsl:message> -->

	<xsl:template match="/COMMENTARYDOC/docinfo">
		<!--  Original Target XPath:  /seclaw:seclaw/doc:metadata/doc:docinfo   -->
		<doc:docinfo>
			<xsl:call-template name="doc_content_country"/>
			<xsl:apply-templates select="@* | node()"/>
		</doc:docinfo>

	</xsl:template>

	<!--<xsl:template match="docinfo">

		<!-\-  Original Target XPath:  /seclaw:seclaw/doc:metadata/doc:docinfo   -\->
		<seclaw:seclaw
			xmlns:seclaw="http://www.lexisnexis.com/xmlschemas/content/legal/secondary-law/1/">
			<doc:metadata
				xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/">
				<doc:docinfo>
					<xsl:apply-templates select="@* | node()"/>
				</doc:docinfo>
			</doc:metadata>
		</seclaw:seclaw>

	</xsl:template>-->

	<!--<xsl:template match="/COMMENTARYDOC/comm:body">

		<!-\-  Original Target XPath:  /seclaw:seclaw/doc:metadata/doc:docinfo   -\->
		<seclaw:seclaw
			xmlns:seclaw="http://www.lexisnexis.com/xmlschemas/content/legal/secondary-law/1/">
			<doc:metadata
				xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/">
				<doc:docinfo>
					<xsl:apply-templates select="@* | node()"/>
				</doc:docinfo>
			</doc:metadata>
		</seclaw:seclaw>

	</xsl:template>-->

</xsl:stylesheet>
