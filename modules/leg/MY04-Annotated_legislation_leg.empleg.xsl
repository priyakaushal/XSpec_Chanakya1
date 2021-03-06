<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.empleg">
  <title>leg:empleg <lnpid>id-MY04-16611</lnpid></title>
  <body>
    <section>
        <p><sourcexml>leg:empleg</sourcexml> becomes <targetxml>primlaw:authority/primlaw:authority-item/bodytext/textitem</targetxml> and populated as:</p>
        <note>The <targetxml>primlaw:authority</targetxml> will be sibling of <targetxml>heading</targetxml>.</note>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-MY\MY04-Annotated_legislation\leg.empleg.dita  -->
	<xsl:message>MY04-Annotated_legislation_leg.empleg.xsl requires manual development!</xsl:message> 

	<xsl:template match="leg:empleg">

		<!--  Original Target XPath:  primlaw:authority/primlaw:authority-item/bodytext/textitem   -->
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