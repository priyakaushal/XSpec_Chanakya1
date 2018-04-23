<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
	xmlns:leg="http://www.lexis-nexis.com/glp/leg"
	xmlns:op="http://www.lexis-nexis.com/glp/op"	
	xmlns:regulation="urn:x-lexisnexis:content:regulation:sharedservices:1"
	version="2.0" exclude-result-prefixes="dita leg op">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/"
		id="UK08OpDoc_leg_body">
		<title>leg:body <lnpid>id-UK08OR-28815</lnpid></title>
		<body>
			<section>
				<p>
					<sourcexml>leg:body</sourcexml> becomes
						<targetxml>regulation:body</targetxml>. Conversion for the child
					elements are mentioned in the following topics. </p>
			</section>
		</body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK08_Quasi\UK08OR_QUASI_OPDOC_To_Regulation\UK08_OPDOC_Regulation-leg_body.dita  -->

	<xsl:template match="op:body">
			<xsl:apply-templates />
	</xsl:template>
	

	<xsl:template match="leg:body">
		<!--  Original Target XPath:  regulation:body   -->
		<regulation:body>
			<xsl:apply-templates select="@* | node()"/>
		</regulation:body>
	</xsl:template>

</xsl:stylesheet>
