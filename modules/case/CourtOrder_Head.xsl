<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
	xmlns:courtorder="urn:x-lexisnexis:content:courtorder:sharedservices:1"
	xmlns:case="http://www.lexis-nexis.com/glp/case" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="CourtOrder_Head">
  <title>Head <lnpid>id-AU07-19233</lnpid></title>
  <body>
    <p>
        <sourcexml>case:body/case:headnote</sourcexml> becomes <targetxml>courtorder:courtorder/courtorder:head</targetxml>. 
        The children are described below:      
    </p>
  </body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU07_courtorder\CourtOrder_Head.dita  -->

	<xsl:template match="case:body/case:headnote">
		<courtorder:head>
			<xsl:apply-templates select="@*"/>
			<xsl:apply-templates select="refpt | heading//refpt | parent::case:body/heading//refpt"/>
			<xsl:if test="not(heading or /CASEDOC/case:body/heading)">
				<xsl:apply-templates select="case:info/case:casename"/>
			</xsl:if>
			<xsl:apply-templates select="*[not(self::refpt or self::case:length or self::case:factsummary)] | case:info/case:courtinfo/case:dates | case:info/case:dates | parent::case:body/heading | case:info/h | /case:info/case:courtinfo/case:judges"/>
		</courtorder:head>
	</xsl:template>

</xsl:stylesheet>