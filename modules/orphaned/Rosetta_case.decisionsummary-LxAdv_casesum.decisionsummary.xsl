<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:casesum="http://www.lexisnexis.com/xmlschemas/content/legal/case-summary/1/" xmlns:courtcase="http://www.lexisnexis.com/xmlschemas/content/legal/courtcase/1/" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_case.decisionsummary-LxAdv_casesum.decisionsummary">
    <title>case:decisionsummary <lnpid>id-CCCC-12034</lnpid></title>
    <body>
        <section id="mapping1">
            <p><sourcexml>case:decisionsummary</sourcexml> becomes
                    <targetxml>courtcase:head/casesum:summaries/casesum:decisionsummary</targetxml>.</p>
        </section>
        <section id="mapping2"><p>With the exception of <sourcexml>heading</sourcexml>, every child
                of <sourcexml>case:decisionsummary</sourcexml> should be mapped to
                    <targetxml>casesum:decisionsummary/bodytext</targetxml>.</p>
            <note>Conversion should not create consecutive <targetxml>casesum:summaries</targetxml>
                elements. When 2 or more consecutive sibling source elements map to
                    <targetxml>casesum:summaries</targetxml>, target data should be merged to a
                single <targetxml>casesum:summaries</targetxml> element unless this would hamper
                content ordering.</note></section>
        <section id="changes">
            <title>Common Changes</title>
        </section>
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_caselaw\conref_content\Rosetta_case.decisionsummary-LxAdv_casesum.decisionsummary.dita  -->
	<xsl:message>Rosetta_case.decisionsummary-LxAdv_casesum.decisionsummary.xsl requires manual development!</xsl:message> 

	<xsl:template match="case:decisionsummary">

		<!--  Original Target XPath:  courtcase:head/casesum:summaries/casesum:decisionsummary   -->
		<courtcase:head>
			<casesum:summaries>
				<casesum:decisionsummary>
					<xsl:apply-templates select="@* | node()"/>
				</casesum:decisionsummary>
			</casesum:summaries>
		</courtcase:head>

	</xsl:template>

	<xsl:template match="heading">

		<!--  Original Target XPath:  casesum:decisionsummary/bodytext   -->
		<casesum:decisionsummary>
			<bodytext>
				<xsl:apply-templates select="@* | node()"/>
			</bodytext>
		</casesum:decisionsummary>

	</xsl:template>

</xsl:stylesheet>