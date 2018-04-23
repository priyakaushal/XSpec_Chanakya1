<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
	xmlns:source_cttr="http://www.lexis-nexis.com/glp/cttr"
	xmlns:cttr="urn:x-lexisnexis:content:citator:sharedservices:1" version="2.0" 
	exclude-result-prefixes="dita source_cttr">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_cttr.body-to-LexisAdvance_cttr.body">
		<title>cttr:body-to-cttr:body <lnpid>id-UK05-27820</lnpid></title>
		<body>
			<p>
				<sourcexml>cttr:body</sourcexml> becomes <targetxml>cttr:body</targetxml>. <targetxml>cttr:refs</targetxml>,
					<targetxml>cttr:descriptors</targetxml> are created as children of <targetxml>cttr:body</targetxml>. </p>
		</body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK05_Citator\Rosetta_cttr.body-to-LexisAdvance_cttr.body.dita  -->

	<xsl:template match="source_cttr:body">
		<!--  Original Target XPath:  cttr:body   -->
		<cttr:body>
			<xsl:apply-templates select="source_cttr:content"/>
		</cttr:body>
	</xsl:template>
	
</xsl:stylesheet>
