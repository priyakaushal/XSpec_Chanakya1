<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:source_dict="http://www.lexis-nexis.com/glp/dict" xmlns:dict="urn:x-lexisnexis:content:dict:sharedservices:1" version="2.0" exclude-result-prefixes="dita dict">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="dict.body">
    <title><sourcexml>dict:body</sourcexml> to <targetxml>dict:body</targetxml> <lnpid>id-UK10-29208</lnpid></title>
    <body>
        <section>
            <p><sourcexml>dict:body</sourcexml> becomes <targetxml>dict:body</targetxml>.</p>
            <p>All of the following are descendants of <targetxml>dict:body</targetxml>. Handle in
                document order unless specifically stated otherwise. Refer to General Markup Section
                for handling of children (including mixed content).</p>
        </section>
        <!--<section>
            <title>Changes</title>
            <p>2012-11-01: Created.</p>
        </section>-->
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK10_Dictionary\dict.body.dita  -->
	<xsl:message>dict.body.xsl requires manual development!</xsl:message> 

	<xsl:template match="dict:body"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  dict:body   -->
		<dict:body>
			<xsl:apply-templates select="@* | node()"/>
		</dict:body>

	</xsl:template>

</xsl:stylesheet>