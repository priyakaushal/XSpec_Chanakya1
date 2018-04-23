<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:ci="http://www.lexis-nexis.com/ci" xmlns:decision="http://www.lexisnexis.com/xmlschemas/content/legal/decision/1/" version="2.0" exclude-result-prefixes="dita case ci">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="UK01_Rosetta_case.decisiondate-LxAdv_decision.decisiondate">
  <title>case:decisiondate <lnpid>id-UK01-27023</lnpid></title>
  <body>
    <section>
      <p>
        <sourcexml>case:decisiondate</sourcexml> becomes <targetxml>
          /courtcase:courtcase/courtcase:head/caseinfo:caseinfo/decision:dates/decision:decisiondate</targetxml>
        populated with below mentioned attributes:
          <sourcexml>case:decisiondate/date/@day</sourcexml> becomes
          <targetxml>decision:decisiondate/@day</targetxml>,
          <sourcexml>case:decisiondate/date/@month</sourcexml> becomes
          <targetxml>decision:decisiondate/@month</targetxml> and
          <sourcexml>case:decisiondate/date/@year</sourcexml> becomes
          <targetxml>decision:decisiondate/@year</targetxml>. </p>
      <p> The attribute <targetxml>decision:decisiondate/@normdate</targetxml> should be populated
        with the values of <sourcexml>case:decisiondate/date/@year</sourcexml>,
          <sourcexml>case:decisiondate/date/@month</sourcexml> and
          <sourcexml>case:decisiondate/date/@day</sourcexml> concatenated and separated by a single
        hyphen. The values of <sourcexml>case:decisiondate/date/@month</sourcexml> and
          <sourcexml>case:decisiondate/date/@day</sourcexml> should be padded with zeroes so that
        they are 2 digits. <note>If one or more of the three date values (year, month or day) are
          absent, then <targetxml>decision:decisiondate/@normdate</targetxml> should <b>not</b> be
          populated.</note>
      </p>
      <p>
        <sourcexml>date</sourcexml> becomes <targetxml>date-text</targetxml>. </p>
      <note><sourcexml>ci:cite</sourcexml> as a child of <sourcexml>case:decisiondate</sourcexml>:
        It's a data error and needs to be corrected at source.</note>
      <note><sourcexml>sup</sourcexml> as a child of <sourcexml>case:decisiondate</sourcexml>: It's
        a data error and needs to be corrected at source.</note>
    </section>

    <example>
      <title>Source XML</title>
      <codeblock>

&lt;case:dates&gt;
  &lt;case:decisiondate&gt;
    &lt;date day="18" month="02" year="1998"&gt;18 FEBRUARY 1998&lt;/date&gt;
  &lt;/case:decisiondate&gt;
&lt;/case:dates&gt;

      </codeblock>
    </example>

    <example>
      <title>Target XML</title>
      <codeblock>

&lt;decision:dates&gt;
    &lt;decision:decisiondate day="18" month="02" year="1998" normdate="1998-02-18"&gt;
        &lt;date-text&gt;18 FEBRUARY 1998&lt;/date-text&gt;
    &lt;/decision:decisiondate&gt;
&lt;/decision:dates&gt;

      </codeblock>
    </example>

    <section>
      <p>If <sourcexml>case:decisiondate</sourcexml> occurs without the <sourcexml>date</sourcexml>
        element as child then capture the date as is in the target.</p>
    </section>

    <example>
      <title>Source XML</title>
      <codeblock>

&lt;case:dates&gt;
    &lt;case:decisiondate&gt;13 October 1992&lt;/case:decisiondate&gt;
&lt;/case:dates&gt;

      </codeblock>
    </example>

    <example>
      <title>Target XML</title>
      <codeblock>

&lt;decision:dates&gt;
    &lt;decision:decisiondate&gt;13 October 1992&lt;/decision:decisiondate&gt;
&lt;/decision:dates&gt;

      </codeblock>
    </example>

    <section>
      <p>If <sourcexml>emph</sourcexml> occurs as child of <sourcexml>case:decisiondate</sourcexml>
        then <sourcexml>emph</sourcexml> should be suppressed from conversion.</p>
    </section>

    <example>
      <title>Source XML</title>
      <codeblock>

&lt;case:decisiondate&gt;
    &lt;emph typestyle="caps"&gt;
        &lt;date day="02" month="06" year="2005"&gt;2 JUNE 2005&lt;/date&gt; 
    &lt;/emph&gt;
&lt;/case:decisiondate&gt;

      </codeblock>
    </example>

    <example>
      <title>Target XML</title>
      <codeblock>

&lt;decision:decisiondate day="02" month="06" year="2005" normdate="2005-06-02"&gt;
    &lt;date-text&gt;2 JUNE 2005&lt;/date-text&gt;
&lt;/decision:decisiondate&gt;

      </codeblock>
    </example>

  </body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK01_CaseLaw\UK01_Rosetta_case.decisiondate-LxAdv_decision.decisiondate.dita  -->

	<xsl:template match="case:decisiondate">
		<!--  Original Target XPath:  /courtcase:courtcase/courtcase:head/caseinfo:caseinfo/decision:dates/decision:decisiondate   -->
		<decision:decisiondate>
			<xsl:apply-templates select="@* | node()"/>
		</decision:decisiondate>
	</xsl:template>

	<xsl:template match="case:decisiondate/date/@day">
		<!--  Original Target XPath:  decision:decisiondate/@day   -->
			<xsl:attribute name="day">
				<xsl:value-of select="."/>
			</xsl:attribute>
	</xsl:template>

	<xsl:template match="case:decisiondate/date/@month">
		<!--  Original Target XPath:  decision:decisiondate/@month   -->
			<xsl:attribute name="month">
				<xsl:value-of select="."/>
			</xsl:attribute>
	</xsl:template>

	<xsl:template match="case:decisiondate/date/@year">
		<!--  Original Target XPath:  decision:decisiondate/@year   -->
			<xsl:attribute name="year">
				<xsl:value-of select="."/>
			</xsl:attribute>
		<!-- if @day and @month are also present create @normdate -->
		<xsl:if test="parent::date/@day and parent::date/@month">
			<xsl:attribute name="normdate">
				<xsl:value-of select="concat(.,'-',parent::date/@month,'-',parent::date/@day)"/>
			</xsl:attribute>
		</xsl:if>
	</xsl:template>

</xsl:stylesheet>