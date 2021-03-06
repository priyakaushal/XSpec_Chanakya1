<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:caseinfo="http://www.lexisnexis.com/xmlschemas/content/legal/case-information/1/" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_case.info-LxAdv_caseinfo.caseinfo">
  <title>case:info <lnpid>id-CCCC-12039</lnpid></title>
  <body>
    <section id="mapping">
      <p><sourcexml>case:info</sourcexml> becomes <targetxml>caseinfo:caseinfo</targetxml>.</p>
      <note>Conversion should not create consecutive <targetxml>caseinfo:caseinfo</targetxml>
        elements. When 2 or more consecutive sibling source elements map to
          <targetxml>caseinfo:caseinfo</targetxml>, data should be merged to a single
          <targetxml>caseinfo:caseinfo</targetxml> element unless this would hamper content
        ordering.</note>
    </section>
    <section id="changes">
      <title>Common Changes</title>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_caselaw\conref_content\Rosetta_case.info-LxAdv_caseinfo.caseinfo.dita  -->
	<xsl:message>Rosetta_case.info-LxAdv_caseinfo.caseinfo.xsl requires manual development!</xsl:message> 

	<xsl:template match="case:info">

		<!--  Original Target XPath:  caseinfo:caseinfo   -->
		<caseinfo:caseinfo>
			<xsl:apply-templates select="@* | node()"/>
		</caseinfo:caseinfo>

	</xsl:template>

</xsl:stylesheet>