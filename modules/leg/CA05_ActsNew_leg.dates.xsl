<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
	xmlns:leg="http://www.lexis-nexis.com/glp/leg"
	xmlns:primlawinfo="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-info/1/" version="2.0"
	exclude-result-prefixes="dita leg primlawinfo">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.dates">
		<title>leg:dates <lnpid>id-CA05-13613</lnpid></title>
		<body>
			<section>
				<p><sourcexml>leg:info/leg:dates</sourcexml> becomes
						<targetxml>primlawinfo:primlawinfo/primlawinfo:dates</targetxml></p>
				<note>Note: The formatting of the date-text should not be normalized to YYYY-MM-DD.
					The attributes are used for normalization, but the element content should remain
					the same.</note>
			</section>
		</body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA05-ActsNew\leg.dates.dita  -->


	<xsl:template match="leg:dates">
		<xsl:choose>
			<xsl:when test="child::leg:effdate">
				<primlawinfo:dates>
					<xsl:apply-templates select="child::leg:effdate"/>
				</primlawinfo:dates>
			</xsl:when>
			<xsl:when test="child::leg:revisedate">
				<xsl:apply-templates select="child::leg:revisedate"/>
			</xsl:when>
		</xsl:choose>
	</xsl:template>

</xsl:stylesheet>
