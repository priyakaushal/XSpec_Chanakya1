<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:statcode="http://www.lexisnexis.com/xmlschemas/content/legal/statutorycode/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.body">
  <title>leg:body <lnpid>id-PH02-33208</lnpid></title>
  <body>
    <section>
      <p><sourcexml>leg:body</sourcexml> becomes <targetxml>statcode:body</targetxml>.The mappings for the children of <targetxml>leg:body</targetxml> are discussed as separate topics.</p>      
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-GPL\PH02-Statcode\leg.body.dita  -->
	<xsl:message>PH02-Statcode_leg.body.xsl requires manual development!</xsl:message> 

	<xsl:template match="leg:body">

		<!--  Original Target XPath:  statcode:body   -->
		<statcode:body>
			<xsl:apply-templates select="@* | node()"/>
		</statcode:body>

	</xsl:template>

</xsl:stylesheet>