<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:casesum="http://www.lexisnexis.com/xmlschemas/content/legal/case-summary/1/" xmlns:courtcase="http://www.lexisnexis.com/xmlschemas/content/legal/courtcase/1/" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_case.typeofcase-LxAdv_casesum.overview">
    <title>case:typeofcase <lnpid>id-CCCC-12046</lnpid></title>
    <body>
        <section id="mapping">
            <p><sourcexml>case:typeofcase</sourcexml> becomes
                    <targetxml>courtcase:body/casesum:summaries/casesum:editorialsummary/casesum:overview</targetxml>.</p>
            <p>With the exception of <sourcexml>heading</sourcexml>, all children of
                    <sourcexml>case:typeofcase</sourcexml> should be mapped to children of
                    <targetxml>casesum:overview/bodytext</targetxml>.</p>
            <note>Conversion should not create consecutive <targetxml>casesum:summaries</targetxml>
                elements. When 2 or more consecutive sibling source elements map to
                    <targetxml>casesum:summaries</targetxml>, target data should be merged to a
                single <targetxml>casesum:summaries</targetxml> element unless this would hamper
                content ordering.</note>
        </section>
        <section id="changes">
            <title>Common Changes</title>
        </section>
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_caselaw\conref_content\Rosetta_case.typeofcase-LxAdv_casesum.overview.dita  -->
	<xsl:message>conref_content_Rosetta_case.typeofcase-LxAdv_casesum.overview.xsl requires manual development!</xsl:message> 

	<xsl:template match="case:typeofcase">

		<!--  Original Target XPath:  courtcase:body/casesum:summaries/casesum:editorialsummary/casesum:overview   -->
		<courtcase:body>
			<casesum:summaries>
				<casesum:editorialsummary>
					<casesum:overview>
						<xsl:apply-templates select="@* | node()"/>
					</casesum:overview>
				</casesum:editorialsummary>
			</casesum:summaries>
		</courtcase:body>

	</xsl:template>

	<xsl:template match="heading">

		<!--  Original Target XPath:  casesum:overview/bodytext   -->
		<casesum:overview>
			<bodytext>
				<xsl:apply-templates select="@* | node()"/>
			</bodytext>
		</casesum:overview>

	</xsl:template>

</xsl:stylesheet>