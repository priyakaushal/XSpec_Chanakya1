<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:decision="http://www.lexisnexis.com/xmlschemas/content/legal/decision/1/" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_case.publishdate-LxAdv_decision.releaseddate">
  <title>case:publishdate <lnpid>id-CCCC-12018</lnpid></title>
  <body>
    <section>
      <p>
        <sourcexml>case:publishdate</sourcexml> becomes
          <targetxml>decision:dates/decision:releaseddate</targetxml>. </p>
    </section>
    <example>
      <codeblock>
&lt;case:dates&gt;
    &lt;case:publishdate&gt;Published 1 January, 1990&lt;/case:publishdate&gt;
&lt;/case:dates&gt;
      </codeblock>
      <b>becomes</b>
      <codeblock>
&lt;decision:dates&gt;
    &lt;decision:releaseddate&gt;Published 1 January, 1990&lt;/decision:releaseddate&gt;
&lt;/decision:dates&gt;
      </codeblock>
    </example>
  </body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_caselaw\Rosetta_case.publishdate-LxAdv_decision.releaseddate.dita  -->

	<xsl:template match="case:publishdate">
		<!--  Original Target XPath:  decision:dates/decision:releaseddate   -->
			<decision:releaseddate>
				<xsl:apply-templates select="@* | node()"/>
			</decision:releaseddate>
	</xsl:template>

</xsl:stylesheet>