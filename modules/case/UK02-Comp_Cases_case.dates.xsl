<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
	xmlns:decision="http://www.lexisnexis.com/xmlschemas/content/legal/decision/1/"
	xmlns:case="http://www.lexis-nexis.com/glp/case" version="2.0"
	exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/"
		id="case.dates">
		<title>case:dates <lnpid>id-UK02-27215</lnpid></title>
		<body>
			<section>
				<p>
					<sourcexml class="+ topic/keyword xml-d/sourcexml "
						>case:dates</sourcexml> becomes <targetxml
						class="+ topic/keyword xml-d/targetxml "
						>/compcase:head/compcase:caseinstanceinfo/decision:dates</targetxml>
					<note class="- topic/note ">The formatting of the
							<targetxml>date-text</targetxml> should not be normalized to
							<b>YYYY-MM-DD</b>. The attributes are used for normalization, but
						the element content should remain the same but whitespace and comma
						should retain outside the <targetxml
							class="+ topic/keyword xml-d/targetxml ">date-text</targetxml>
						element.</note>
				</p>
			</section>

		</body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK02-Comp_Cases\case.dates.dita  -->

	<xsl:template match="case:dates[not(ancestor::case:judgments)]">
		<decision:dates>
			<xsl:apply-templates select="@* | node()"/>
		</decision:dates>
	</xsl:template>

	<xsl:template match="case:dates[ancestor::case:judgments]">
		<decision:decisiondate>
			<xsl:choose>
				<xsl:when test="*">
					<xsl:apply-templates select="@* | ./*/text()"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:apply-templates select="@* | node()"/>					
				</xsl:otherwise>
			</xsl:choose>
		</decision:decisiondate>
	</xsl:template>
	
</xsl:stylesheet>