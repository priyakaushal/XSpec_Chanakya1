<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:case="http://www.lexis-nexis.com/glp/case"  xmlns:dita="http://dita.oasis-open.org/architecture/2005/" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="courtorder-case.judgment">
  <title>case:judgment\</title>
  <body>
    <p>The element <sourcexml>/CASEDOC/case:body/case:judgments/case:judgment</sourcexml> becomes <targetxml>section</targetxml>.</p>
  </body>
	</dita:topic>


	<xsl:template match="case:judgment">
		<section xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
			<xsl:apply-templates select="@* | node()"/>
		</section>
	</xsl:template>
	
	<xsl:template match="case:judgment/case:courtinfo"/>

</xsl:stylesheet>