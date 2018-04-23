<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:primlawinfo="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-info/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.dates">
  <title>leg:dates <lnpid>id-CA07-14012</lnpid></title>
  <body>
    <section>
      <p><sourcexml>leg:dates</sourcexml> becomes <targetxml>primlawinfo:primlawinfo/primlawinfo:dates</targetxml>.</p>
      <note>The formatting of the date-text should not be normalized to YYYY-MM-DD. The attributes are
        used for normalization, but the element content should remain the same.</note>     
    </section>    
  </body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA07-CourtRules\leg.dates.dita  -->

	
		<xsl:template match="leg:dates">
			<xsl:if test="descendant::remotelink"/>
		<!--  Original Target XPath:  primlawinfo:primlawinfo/primlawinfo:dates   -->
		<!--<primlawinfo:primlawinfo>
			<primlawinfo:dates>-->
				<xsl:apply-templates select="@* | node()"/>
			<!--</primlawinfo:dates>
		</primlawinfo:primlawinfo>-->

	</xsl:template>

</xsl:stylesheet>