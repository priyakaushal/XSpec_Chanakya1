<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
	xmlns:case="http://www.lexis-nexis.com/glp/case"
	xmlns:compcase="urn:x-lexisnexis:content:compositecourtcase:sharedservices:1"
	xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/"
	version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/"
		id="Caselaw_Body">
		<title>Body <lnpid>id-UK02-27234</lnpid></title>

		<body>
			<p><sourcexml>case:body</sourcexml> becomes
					<targetxml>compcase:body</targetxml></p>

			<p><targetxml>compcase:caseinstance</targetxml>,
					<targetxml>note</targetxml>, <targetxml>ref:page</targetxml> and
					<targetxml>omitted-text</targetxml> can be created as children of
					<targetxml>compcase:body</targetxml>.</p>
		</body>

	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK02-Comp_Cases\CompCase_Body.dita  -->


	<xsl:template match="case:body">
		<!--  Original Target XPath:  courtcase:body   -->
		<compcase:body>
					<xsl:apply-templates select="@* | node() except (case:headnote)"/>
		</compcase:body>
	</xsl:template>

</xsl:stylesheet>