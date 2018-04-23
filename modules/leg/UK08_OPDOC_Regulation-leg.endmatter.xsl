<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="UK08_OPDOC_Regulation-leg.endmatter">
  <title>leg:endmatter <lnpid>id-UK08OR-28820</lnpid></title>
  <body>
    <section>
      <p><sourcexml>leg:endmatter</sourcexml> becomes <targetxml>primlaw:level</targetxml> with attribute <targetxml>@leveltype="endnote"</targetxml> and populated as below:</p>
    </section>
    <section>
      <title>Changes</title>
      <p>2016-01-12 <ph id="change_20160112_AB">Created. (RFA #2706).</ph></p>
    </section>
  </body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK08_Quasi\UK08OR_QUASI_OPDOC_To_Regulation\UK08_OPDOC_Regulation-leg.endmatter.dita  -->

	<xsl:template match="leg:endmatter">
		<!--  Original Target XPath:  primlaw:level   -->
		<primlaw:level leveltype="endnote">
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:level>
	</xsl:template>

</xsl:stylesheet>