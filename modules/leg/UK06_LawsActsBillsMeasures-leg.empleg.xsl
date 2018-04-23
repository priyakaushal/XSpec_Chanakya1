<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" 
xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"	
version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="UK06_LawsActsBillsMeasures-leg.empleg">
  <title>leg:empleg <lnpid>id-UK06-28047</lnpid></title>
  <body>
    <section>
      <p><sourcexml>leg:empleg</sourcexml> becomes <targetxml>primlaw:authority/primlaw:authority-item/bodytext/textitem</targetxml> and populated as:
        <note>The <targetxml>primlaw:authority</targetxml> will be sibling of <targetxml>heading</targetxml>.</note>
      </p>
    </section>
    <section>
      <title>Changes</title>
      <p>2016-05-31 <ph id="change_20163105_AB">Created.</ph></p>
    </section>
  </body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK06-LawsActsBillsMeasures\UK06_LawsActsBillsMeasures-leg.empleg.dita  -->

	<!-- Sudhanshu Srivastava :
	     Edited :- 19 june 2017.
	     Comments :- This is conetent specific module handling leg:empleg.
	-->
	<xsl:template match="leg:empleg">
		<primlaw:authority>
			<primlaw:authority-item>
				<bodytext>
					<textitem>
						<xsl:apply-templates select="@* | node()"/>
					</textitem>
				</bodytext>
			</primlaw:authority-item>
		</primlaw:authority>
	</xsl:template>
</xsl:stylesheet>