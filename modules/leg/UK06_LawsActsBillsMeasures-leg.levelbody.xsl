<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="UK06_LawsActsBillsMeasures-leg.levelbody">
  <title>leg:levelbody and leg:bodytext <lnpid>id-UK06-28028</lnpid></title>
  <body>
    <section>
      <p>If the elements <sourcexml>leg:levelbody</sourcexml> and <sourcexml>leg:bodytext</sourcexml> occurs simultaneously becomes <targetxml>primlaw:bodytext</targetxml> and populated as:
      </p>
    </section>
  </body>
	</dita:topic>

	
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK06-LawsActsBillsMeasures\UK06_LawsActsBillsMeasures-leg.levelbody.dita  -->
	
    <!-- Sudhanshu Srivastava  
         Edited :- 19 June 2017.
         Comments :- This is content specific module handling leg:levelbody/leg:bodytext.
    -->
	<xsl:template match="leg:levelbody">
		<!--  Original Target XPath:  primlaw:bodytext   -->
		<xsl:apply-templates select="@* | node()"/>
		<!--<xsl:choose>
			<!-\- Checking if leg:bodytext is comming simultanious under leg:levelbody. -\->
			<xsl:when test="*[1][self::leg:bodytext]">
					<xsl:apply-templates select="@* | node()"/>
			</xsl:when>
			<xsl:otherwise>
				<xsl:apply-templates select="@* | node()"/>
			</xsl:otherwise>
		</xsl:choose>-->
	</xsl:template>
</xsl:stylesheet>