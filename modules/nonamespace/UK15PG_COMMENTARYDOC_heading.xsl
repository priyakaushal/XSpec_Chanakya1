<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="UK15PG_COMMENTARYDOC_heading">
    <title>heading <lnpid>id-UK15-30416</lnpid></title>

    <body>
        <p><sourcexml>heading</sourcexml> becomes <targetxml>heading</targetxml> as described in the
            General Markup instructions.</p>
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK15-PracticalGuidance\UK15PG_COMMENTARYDOC_heading.dita  -->
<!--	<xsl:message>UK15PG_COMMENTARYDOC_heading.xsl requires manual development!</xsl:message> -->

	<xsl:template match="heading">

		<!--  Original Target XPath:  heading   -->
		<heading>
			<xsl:apply-templates select="@* | node()"/>
		</heading>

	</xsl:template>

</xsl:stylesheet>