<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:legis="http://www.lexisnexis.com/xmlschemas/content/legal/legislation/1/" xmlns:proc="http://www.lexisnexis.com/xmlschemas/content/shared/process-elements/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="UK06_LawsActsBillsMeasures-Body">
    <title>Body <lnpid>id-UK06-28008</lnpid></title>
    <shortdesc>All of the following are descendants of <targetxml>legis:body</targetxml>. Handle in document order unless specifically stated otherwise. Refer to General Markup Section for handling of children (including mixed content).</shortdesc>
    <body>
        <section>
            <title>legis:body</title>
            <p><sourcexml>leg:body</sourcexml> becomes <targetxml>legis:body</targetxml> and child elements as described below:</p>
            <note>If <sourcexml>leg:body</sourcexml> contains only <sourcexml>leg:info</sourcexml> and not any other sibling then conversion create an element <targetxml>proc:nocontent</targetxml> within <targetxml>legis:body</targetxml> element. And populated as below:</note>
        </section>
    </body>
	</dita:topic>
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK06-LawsActsBillsMeasures\UK06_LawsActsBillsMeasures-Body.dita  -->
	<xsl:template match="leg:body">
		<!--  Original Target XPath:  legis:body   -->
			<xsl:apply-templates select="@* | node() except leg:info"/>
	</xsl:template>
</xsl:stylesheet>