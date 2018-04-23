<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
	xmlns:leg="http://www.lexis-nexis.com/glp/leg"
	xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/"
	version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/"
		id="UK08OpDoc_leg.level-vrnt">
		<title>leg.level-vrnt <lnpid>id-UK08OR-28812</lnpid></title>
		<body>
			<section>
				<sourcexml>leg:level-vrnt</sourcexml> will be omitted and all its
				contents will be retained in conversion <note>In New Lexis
						<targetxml>primlaw:level</targetxml> element is used instead of
					Rosetta elements <sourcexml>leg:level</sourcexml> and
						<sourcexml>leg:level-vrnt</sourcexml>. So element
						<sourcexml>leg:level-vrnt</sourcexml> will be omitted from
					conversion and attribute
						<sourcexml>/leg:level-vrnt/@leveltype</sourcexml> will become
						<targetxml>primlaw:level/@leveltype</targetxml> with its
					value.</note>
			</section>
		</body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK08_Quasi\UK08OR_QUASI_OPDOC_To_Regulation\UK08_OPDOC_Regulation-leg.level-vrnt.dita  -->

	<xsl:template match="leg:level-vrnt">
	  <!-- NOTE: @leveltype handled in leg:level template -->
		<!--<xsl:apply-templates select="@*"/>-->
		<xsl:apply-templates select="./leg:heading/refpt"/>
		<xsl:apply-templates select="node()"/>
	</xsl:template>

</xsl:stylesheet>
