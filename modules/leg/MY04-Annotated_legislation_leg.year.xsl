<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:primlawinfo="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-info/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.year">
  <title>leg:year <lnpid>id-MY04-16622</lnpid></title>
  <body>
    <section>
      <p><sourcexml>leg:info/leg:year</sourcexml> becomes <targetxml>primlawinfo:primlawinfo/primlawinfo:dates/primlawinfo:enactdate</targetxml> with attribute <targetxml>@year</targetxml>.</p>
      <note>For handling <b>@ln.user-displayed</b> attribute, refer the general markup <xref href="../../common_newest/Rosetta_leg.year_ln.user-displayed.dita">ln.user_displayed="false"</xref> section in the CI.</note>
      <note>The <sourcexml>@searchtype</sourcexml> attribute will be suppressed from conversion except for the citation element.</note>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-MY\MY04-Annotated_legislation\leg.year.dita  -->
<!--	<xsl:message>MY04-Annotated_legislation_leg.year.xsl requires manual development!</xsl:message> -->

	<xsl:template match="leg:info/leg:year[@ln.user-displayed = 'true' or not(@ln.user-displayed)]">
		<!--  Original Target XPath:  primlawinfo:primlawinfo/primlawinfo:dates/primlawinfo:enactdate   -->
		<primlawinfo:dates>
			<primlawinfo:enactdate>
				<xsl:attribute name="year">
					<xsl:value-of select="."/>
				</xsl:attribute>
				<xsl:apply-templates select="@* | node()"/>
			</primlawinfo:enactdate>
			<xsl:if test="parent::leg:info/leg:officialnum/leg:year">
				<xsl:if test="./text() != parent::leg:info/leg:officialnum/leg:year/text()">
					<xsl:apply-templates select="parent::leg:info/leg:officialnum/leg:year"/>
				</xsl:if>
			</xsl:if>
			<xsl:apply-templates select="//parent::leg:info/child::leg:dates"/>
		</primlawinfo:dates>
	</xsl:template>
	

	<xsl:template match="leg:year/@searchtype"/>


</xsl:stylesheet>