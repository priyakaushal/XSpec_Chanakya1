<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="UK06_LawsActsBillsMeasures-leg.bodytext-leg.heading">
  <title>leg:bodytext/leg:heading <lnpid>id-ST03-26614</lnpid></title>
  <body>
    <section>
      <p>If the input documents are having scenarios <sourcexml>leg:bodytext/leg:heading/desig</sourcexml> and <sourcexml>leg:bodytext/leg:heading/title</sourcexml>. To handle above scenario as listed below
        <ul>
          <li><sourcexml>leg:bodytext</sourcexml> becomes <targetxml>primlaw:bodytext</targetxml> and create a wrapper <targetxml>primlaw:level[@leveltype="unclassified"]</targetxml></li>
          <li><sourcexml>leg:bodytext/leg:heading/desig</sourcexml> becomes <targetxml>primlaw:bodytext/primlaw:level[@leveltype="unclassified"]/heading/desig</targetxml></li>
          <li><sourcexml>leg:bodytext/leg:heading/title</sourcexml> becomes <targetxml>primlaw:bodytext/primlaw:level[@leveltype="unclassified"]/heading/title</targetxml></li>
        </ul>
         and populated as below:</p>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-Standard\Legislation\legis-leg.bodytext-leg.heading.dita  -->
	<xsl:message>legis-leg.bodytext-leg.heading.xsl requires manual development!</xsl:message> 

	<xsl:template match="leg:bodytext/leg:heading/desig">

		<!--  Original Target XPath:  primlaw:bodytext   -->
		<primlaw:bodytext>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:bodytext>

	</xsl:template>

	<xsl:template match="leg:bodytext/leg:heading/title">

		<!--  Original Target XPath:  primlaw:bodytext   -->
		<primlaw:bodytext>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:bodytext>

	</xsl:template>

	<xsl:template match="leg:bodytext">

		<!--  Original Target XPath:  primlaw:bodytext   -->
		<primlaw:bodytext>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:bodytext>

	</xsl:template>

</xsl:stylesheet>