<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:casesum="http://www.lexisnexis.com/xmlschemas/content/legal/case-summary/1/" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_case.disposition-LxAdv_casesum.disposition">
  <title>case:disposition <lnpid>id-CCCC-12035</lnpid></title>
  <body>
    <section id="mapping">
      <p>
        <sourcexml>case:disposition</sourcexml> becomes <targetxml>casesum:disposition</targetxml>.
        The content inside <sourcexml>case:disposition</sourcexml> should be mapped to
          <targetxml>casesum:disposition/p</targetxml>.</p>
    </section>
    <section id="changes">
      <title>Common Changes</title>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_caselaw\conref_content\Rosetta_case.disposition-LxAdv_casesum.disposition.dita  -->
	<xsl:message>Rosetta_case.disposition-LxAdv_casesum.disposition.xsl requires manual development!</xsl:message> 

	<xsl:template match="case:disposition">

		<!--  Original Target XPath:  casesum:disposition   -->
		<casesum:disposition>
			<xsl:apply-templates select="@* | node()"/>
		</casesum:disposition>

	</xsl:template>

</xsl:stylesheet>