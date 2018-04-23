<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:courtorder="urn:x-lexisnexis:content:courtorder:sharedservices:1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" version="2.0" exclude-result-prefixes="dita case courtorder">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="courtorder-case.headnote">
  <title>case:headnote <lnpid>id-UK04-27615</lnpid></title>
  <body>
    <section>
      <p><sourcexml>/CASEDOC/case:body/case:headnote</sourcexml> becomes
          <targetxml>/courtorder:courtorder/courtorder:head</targetxml>. The conversion of
          <sourcexml>case:headnote</sourcexml> child elements is described below. </p>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK04_CourtOrder\case.headnote.dita  -->
	<!--<xsl:message>UK04_CourtOrder_case.headnote.xsl requires manual development!</xsl:message> -->

	<xsl:template match="case:body">
		<xsl:apply-templates select="@*|node()"/>
	</xsl:template>
	
	<xsl:template match="case:headnote">
		<courtorder:head>
			<xsl:apply-templates select="@*|node() except(case:factsummary|case:decisionsummary|case:references|note)"/>
		</courtorder:head>
	</xsl:template>
	

</xsl:stylesheet>