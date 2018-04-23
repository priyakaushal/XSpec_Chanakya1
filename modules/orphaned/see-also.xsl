<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:tei="http://www.tei-c.org/ns/1.0/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="see-also">
    <title><sourcexml>see-also</sourcexml> to <targetxml>tei:re</targetxml> <lnpid>id-UK10-29225</lnpid></title>
    <body>
        <section>
            <p><sourcexml>see-also</sourcexml> becomes
                    <targetxml>tei:re[@type='see-also']</targetxml>. </p>
        </section>
        <!--<section>
            <title>Changes</title>
            <p>2012-11-01: Created.</p>
        </section>-->
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK10_Dictionary\see-also.dita  -->
	<xsl:message>see-also.xsl requires manual development!</xsl:message> 

	<xsl:template match="see-also">

		<!--  Original Target XPath:  tei:re   -->
		<tei:re>
			<xsl:apply-templates select="@* | node()"/>
		</tei:re>

	</xsl:template>

</xsl:stylesheet>