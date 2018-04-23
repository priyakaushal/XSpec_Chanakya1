<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="UK01_Rosetta_case.dates-LxAdv_decision.dates">
  <title>case:dates <lnpid>id-UK01-27022</lnpid></title>
  <body>
    <section>
      <p>
        <sourcexml>case:dates</sourcexml> becomes
          <targetxml>/courtcase:courtcase/courtcase:head/caseinfo:caseinfo/decision:dates</targetxml>
      </p>
    </section>

    <note>The formatting of the date-text should not be normalized to YYYY-MM-DD. The attributes are
      used for normalization, but the element content should remain the same but whitespace and
      comma should retain outside the <targetxml>date-text</targetxml> element.</note>
    <note>Any occurrences of the attribute <sourcexml>@ln.user-displayed</sourcexml> in
        <sourcexml>case:dates</sourcexml> should be suppressed.</note>
    <section>
      <title>Changes</title>
      <p>2013-02-20: <ph id="change_20130220_DSF">Added a note regarding the suppression of
            <sourcexml>@ln.user-displayed</sourcexml>.</ph></p>
    </section>
  </body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK01_CaseLaw\UK01_Rosetta_case.dates-LxAdv_decision.dates.dita  -->

	<xsl:template match="case:dates[parent::case:courtinfo]">
		<!--  Original Target XPath:  /courtcase:courtcase/courtcase:head/caseinfo:caseinfo/decision:dates   -->
			<decision:dates xmlns:decision="http://www.lexisnexis.com/xmlschemas/content/legal/decision/1/">
				<xsl:apply-templates select="@* | node()"/>
			</decision:dates>
	</xsl:template>
	
	<xsl:template match="case:dates[parent::case:judgments]">
		<xsl:apply-templates select="@* | node()"/>
	</xsl:template>

	<xsl:template match="case:dates/@ln.user-displayed"/>

</xsl:stylesheet>