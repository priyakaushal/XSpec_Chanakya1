<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:source_dict="http://www.lexis-nexis.com/glp/dict" xmlns:tei="http://www.tei-c.org/ns/1.0/" version="2.0" exclude-result-prefixes="dita dict">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="dict.equivalent-term">
    <title><sourcexml>dict:equivalent-term</sourcexml> to <targetxml>tei:usg</targetxml> <lnpid>id-UK10-29212</lnpid></title>
    <body>
        <section>
            <p><sourcexml>dict:equivalent-term</sourcexml> becomes
                    <targetxml>tei:usg[@type='equivalent-term']</targetxml>. </p>
        </section>
        <!--<section>
            <title>Changes</title>
            <p>2012-11-01: Created.</p>
        </section>-->
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK10_Dictionary\dict.equivalent-term.dita  -->
	<xsl:message>dict.equivalent-term.xsl requires manual development!</xsl:message> 

	<xsl:template match="dict:equivalent-term"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  tei:usg   -->
		<tei:usg>
			<xsl:apply-templates select="@* | node()"/>
		</tei:usg>

	</xsl:template>

</xsl:stylesheet>