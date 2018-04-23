<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
	xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/"
	xmlns:leg="http://www.lexis-nexis.com/glp/leg"
	xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo"
	xmlns:funddoc="urn:x-lexisnexis:content:fundamentallegaldocument:sharedservices:1"
	xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
	
	version="2.0" exclude-result-prefixes="dita docinfo leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/"
		id="Introduction">
		<title>Introduction <lnpid>id-AU11-20009</lnpid></title>

		<shortdesc>This Conversion Instructions describes the conversion of the
			Rosetta LEGDOC DTD to <b>funddoc 2.7_PROD</b> schema.</shortdesc>
		<body>
			<p>AU International Instrument samples are identified using the root
				element <b>LEGDOC</b> with attribute <b>@legtype="treaty-conv"</b>
				only.</p>
			<section>
				<title>Root Element</title>

				<p>
					<sourcexml>LEGDOC</sourcexml> becomes
						<targetxml>funddoc:fundamentallegaldocument</targetxml> which is the
					root element for International Instrument. </p>


				<p>
					<targetxml>funddoc:head</targetxml>,
						<targetxml>funddoc:body</targetxml>, and
						<targetxml>doc:metadata</targetxml> are created as required children
					of <targetxml>funddoc:fundamentallegaldocument</targetxml>
				</p>

				<p> The <sourcexml>@searchtype</sourcexml> attribute will be suppressed
					from conversion except for the citation element. </p>

			</section>
			<section>
				<title>Notes</title>
				<p>The following information is meant to help the user to understand the
					conventions used in this document.</p>
				<p>Source elements and attributes are highlighted like this:
						<sourcexml>SOURCE XML</sourcexml></p>
				<p>Target elements and attributes are highlighted like this:
						<targetxml>TARGET XML</targetxml></p>
				<p>Verify content of following target attributes: <ul>
						<li><sourcexml>@month</sourcexml> becomes
								<targetxml>@month</targetxml> is between 01-12. Any numbers
							outside this range, do not output a
							<targetxml>@month</targetxml>.</li>
						<li><sourcexml>@day</sourcexml> becomes <targetxml>@day</targetxml>
							is between 01-31. Any numbers outside this range, do not output
								<targetxml>@day</targetxml>.</li>
						<li><sourcexml>@year</sourcexml> becomes
								<targetxml>@year</targetxml> is 4 digits in length. Any other
							lengths, do not output <targetxml>@year</targetxml>.</li>
					</ul>
				</p>
			</section>
		</body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU11_International_Instruments\Introduction.dita  -->

	<xsl:template match="LEGDOC">
		<!--  Original Target XPath:  funddoc:fundamentallegaldocument   -->
		<funddoc:fundamentallegaldocument>
			<xsl:call-template name="generateNSGlobalBindings"/>						
			<xsl:attribute name="xsi:schemaLocation" select="$outputSchemaLoc"/>
			<xsl:if test="docinfo/docinfo:doc-lang">
				<xsl:call-template name="xml_lang"/>
			</xsl:if>
			<!-- head -->
			<!-- "Note: Per available samples as of now, there is no header information found in documents so conversion will create an empty tag of funddoc:head." -->
			<funddoc:head/>
			<!-- body -->
			<xsl:apply-templates select="@* | node() except docinfo"/>
			<!-- metadata -->
			<doc:metadata>
				<xsl:apply-templates select="docinfo"/>
			</doc:metadata>
		</funddoc:fundamentallegaldocument>
	</xsl:template>
	
	<xsl:template match="@legtype"/>

</xsl:stylesheet>