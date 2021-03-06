<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:funddoc="urn:x-lexisnexis:content:fundamentallegaldocument:sharedservices:1" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Body">
    <title>Body <lnpid>id-st07-31407</lnpid></title>
    <shortdesc>Below described elements are the descendants of <sourcexml>leg:body</sourcexml>. Handle in
        document order unless specifically stated otherwise. Refer to General Markup Section for
        handling of children (including mixed content).</shortdesc>
    <body>
        <section>
            <title>funddoc:body</title>
            <p><sourcexml>leg:body</sourcexml> becomes <targetxml>funddoc:body</targetxml> and
                children as described below: 
            </p>
        </section>
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-Standard\International_Instruments\Body.dita  -->
	<xsl:message>International_Instruments_Body.xsl requires manual development!</xsl:message> 

	<xsl:template match="leg:body">

		<!--  Original Target XPath:  funddoc:body   -->
		<funddoc:body>
			<xsl:apply-templates select="@* | node()"/>
		</funddoc:body>

	</xsl:template>

</xsl:stylesheet>