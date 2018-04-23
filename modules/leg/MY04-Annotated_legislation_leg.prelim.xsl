<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:legis="http://www.lexisnexis.com/xmlschemas/content/legal/legislation/1/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.prelim">
    <title>leg:prelim <lnpid>id-MY04-16621</lnpid></title>
    <body>
        <section>
            <p><sourcexml>LEGDOC/leg:body/leg:prelim</sourcexml> <b>becomes</b> <targetxml>legis:legis/legis:body/primlaw:prelim</targetxml> and populated as below:</p>
        </section>
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-MY\MY04-Annotated_legislation\leg.prelim.dita  -->
	<xsl:message>MY04-Annotated_legislation_leg.prelim.xsl requires manual development!</xsl:message> 

	<xsl:template match="LEGDOC/leg:body/leg:prelim">

		<!--  Original Target XPath:  legis:legis/legis:body/primlaw:prelim   -->
		<legis:legis>
			<legis:body>
				<primlaw:prelim xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/">
					<xsl:apply-templates select="@* | node()"/>
				</primlaw:prelim>
			</legis:body>
		</legis:legis>

	</xsl:template>

</xsl:stylesheet>