<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="legfragment">
  <title><sourcexml>legfragment</sourcexml> <lnpid>id-MY04-16623</lnpid></title>
  <body>
    <section>
      <p><sourcexml>legfragment</sourcexml> becomes <targetxml>primlaw:excerpt</targetxml>.
        <note>If <sourcexml>legfragment</sourcexml> has only non legislative element (i.e. <sourcexml>l</sourcexml> or <sourcexml>p</sourcexml> or <sourcexml>deflist</sourcexml> or <sourcexml>table</sourcexml> ) as direct child then conversion needs to create <targetxml>primlaw:bodytext</targetxml> within <targetxml>primlaw:excerpt</targetxml> to allow all these non legislative element in NewLexis conversion.</note>
        <note>For handling of <sourcexml>blockquote/legfragment</sourcexml> scenario, please refer to General Markup Section for handling <sourcexml>blockquote</sourcexml></note>
      </p>
    </section>
  </body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-MY\MY04-Annotated_legislation\legfragment.dita  -->
	<!-- JD: 2017-06-07: used by 1 module -->

	<xsl:template match="legfragment">
		<!--  Original Target XPath:  primlaw:excerpt   -->
		<primlaw:excerpt>
			<xsl:choose>
				<xsl:when test="child::*[name()=('l','p','deflist','table')]">
					<primlaw:bodytext>
						<xsl:apply-templates select="@* | node()"/>
					</primlaw:bodytext>
				</xsl:when>
				<xsl:otherwise>
					<xsl:apply-templates select="@* | node()"/>
				</xsl:otherwise>
			</xsl:choose>
		</primlaw:excerpt>
	</xsl:template>

</xsl:stylesheet>