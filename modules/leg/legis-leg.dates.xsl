<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:primlawinfo="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-info/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="legis-leg.dates">
  <title>leg:dates <lnpid>id-ST03-26621</lnpid></title>
  <body>
    <section>
      <p><sourcexml>leg:dates</sourcexml> becomes <targetxml>primlawinfo:dates</targetxml>.</p>
    </section>
    <section>
      <title>Changes</title>
      <p>2013-07-16: <ph id="change_20130716_SK">Instruction narrative edited for language; no changes to mappings, no impact to stylesheets.</ph></p>
      
      <p>2013-07-08: <ph id="change_20130708_AB">Created.</ph></p>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-Standard\Legislation\legis-leg.dates.dita  -->
	<xsl:message>legis-leg.dates.xsl requires manual development!</xsl:message> 

	<xsl:template match="leg:dates">

		<!--  Original Target XPath:  primlawinfo:dates   -->
		<primlawinfo:dates>
			<xsl:apply-templates select="@* | node()"/>
		</primlawinfo:dates>

	</xsl:template>

</xsl:stylesheet>