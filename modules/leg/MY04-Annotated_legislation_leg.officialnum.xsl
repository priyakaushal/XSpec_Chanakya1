<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" xmlns:primlawinfo="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-info/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.officialnum">
  <title>leg:officialnum <lnpid>id-MY04-16620</lnpid></title>
  <body>
    <section>
      <p><sourcexml>leg:info/leg:officialnum</sourcexml> becomes <targetxml>primlaw:levelinfo/primlawinfo:primlawinfo/primlawinfo:identifier</targetxml> with required attribute <targetxml>@idtype="officialnum"</targetxml></p>
      <note>For handling <b>@ln.user-displayed</b> attribute, refer the general markup <xref href="../../common_newest/Rosetta_leg.officialnum_ln.user-displayed-LxAdv-primlawinfo.identifier_source.dita">ln.user_displayed="false"</xref> section in the CI.</note>
      <note>The <sourcexml>@searchtype</sourcexml> attribute will be suppressed from conversion except for the citation element.</note>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-MY\MY04-Annotated_legislation\leg.officialnum.dita  -->
<!--	<xsl:message>MY04-Annotated_legislation_leg.officialnum.xsl requires manual development!</xsl:message> -->


	
	<xsl:template match="leg:officialnum">
		<!--  Original Target XPath:  primlaw:levelinfo/primlawinfo:primlawinfo/primlawinfo:identifier   -->
		<primlawinfo:identifier>
			<xsl:attribute name="idtype" select="'officialnum'"/>
			<xsl:apply-templates select="@* | node() except leg:year"/>
		</primlawinfo:identifier>
	</xsl:template>
	
	<xsl:template match="leg:officialnum/@searchtype|leg:officialnum/@ln.user-displayed"/>
</xsl:stylesheet>