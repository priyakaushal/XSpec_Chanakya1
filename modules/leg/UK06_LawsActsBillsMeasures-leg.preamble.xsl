<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="UK06_LawsActsBillsMeasures-leg.preamble">
  <title>leg:preamble <lnpid>id-UK06-28033</lnpid></title>
  <body>
    <section>
      <p><sourcexml>leg:preamble</sourcexml> becomes <targetxml>primlaw:level</targetxml> with attribute <targetxml>@leveltype="preamble"</targetxml> and populated as below:</p>
    </section>
  </body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK06-LawsActsBillsMeasures\UK06_LawsActsBillsMeasures-leg.preamble.dita  -->

	<!-- Sudhanshu Srivastava :
	     Edited : 16 June 2017.
	     Comments : This is content specific module handling leg:preamble.
	-->
	<xsl:template match="leg:preamble">
		<!--  Original Target XPath:  primlaw:level   -->
		<primlaw:level leveltype="preamble">
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:level>
	</xsl:template>
</xsl:stylesheet>