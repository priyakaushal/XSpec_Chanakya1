<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:decision="http://www.lexisnexis.com/xmlschemas/content/legal/decision/1/" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="case.decisiondate">
  <title>case:decisiondate <lnpid>id-ST05-28422</lnpid></title>
  <body>
    <section>
      <p>
        <sourcexml>case:decisiondate</sourcexml>
              becomes <targetxml>decision:dates/decision:decisiondate</targetxml> populated with below mentioned
              attributes: <sourcexml>case:decisiondate/date/@day</sourcexml> becomes 
        <targetxml>decision:decisiondate/@day</targetxml>,
                <sourcexml>case:decisiondate/date/@month</sourcexml> becomes 
        <targetxml>decision:decisiondate/@month</targetxml> and
                <sourcexml>case:decisiondate/date/@year</sourcexml> becomes 
        <targetxml>decision:decisiondate/@year</targetxml>.
      </p>
      <p>
        The attribute <targetxml>decision:decisiondate/@normdate</targetxml> should be populated with the values of
        <sourcexml>case:decisiondate/date/@year</sourcexml>, <sourcexml>case:decisiondate/date/@month</sourcexml> and
        <sourcexml>case:decisiondate/date/@day</sourcexml> concatenated and separated by a single hyphen. The values of
        <sourcexml>case:decisiondate/date/@month</sourcexml> and <sourcexml>case:decisiondate/date/@day</sourcexml> should be
        padded with zeroes so that they are 2 digits. 
        <note>If one or more of the three date values (year, month or day) are absent, then <targetxml>decision:decisiondate/@normdate</targetxml>
          should <b>not</b> be populated.</note>
      </p>
      <p>
        <sourcexml>date</sourcexml> becomes
          <targetxml>decision:dates/decision:decisiondate/date-text</targetxml>
      </p>
    </section>
    
    <example>
      <title>Source XML based on AU content</title>
      <codeblock>

&lt;case:dates&gt;
  &lt;case:hearingdates&gt;8, &lt;/case:hearingdates&gt;
  &lt;case:decisiondate&gt;
      &lt;date day="20" month="05" year="2009"&gt;20 May 2009&lt;/date&gt;
  &lt;/case:decisiondate&gt;
&lt;/case:dates&gt;

      </codeblock>
    </example>
    
    <example>
      <title>Target XML</title>
      <codeblock>

&lt;decision:dates&gt;
  &lt;decision:argueddate&gt;8, &lt;/decision:argueddate&gt;
    &lt;decision:decisiondate day="20" month="05" year="2009" normdate="2009-05-20"&gt;
      &lt;date-text&gt;20 May 2009&lt;/date-text&gt;
    &lt;/decision:decisiondate&gt;
&lt;/decision:dates&gt;

      </codeblock>
    </example>
    <section>
      <title>Changes</title>
      <p>2014-05-15: <ph id="change_20140515_SS">Created.</ph></p>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-Standard\Compcase\case.decisiondate.dita  -->
	<xsl:message>case.decisiondate.xsl requires manual development!</xsl:message> 

	<xsl:template match="case:decisiondate">

		<!--  Original Target XPath:  decision:dates/decision:decisiondate   -->
		<decision:dates>
			<decision:decisiondate>
				<xsl:apply-templates select="@* | node()"/>
			</decision:decisiondate>
		</decision:dates>

	</xsl:template>

	<xsl:template match="case:decisiondate/date/@day">

		<!--  Original Target XPath:  decision:decisiondate/@day   -->
		<decision:decisiondate>
			<xsl:attribute name="day">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</decision:decisiondate>

	</xsl:template>

	<xsl:template match="case:decisiondate/date/@month">

		<!--  Original Target XPath:  decision:decisiondate/@month   -->
		<decision:decisiondate>
			<xsl:attribute name="month">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</decision:decisiondate>

	</xsl:template>

	<xsl:template match="case:decisiondate/date/@year">

		<!--  Original Target XPath:  decision:decisiondate/@year   -->
		<decision:decisiondate>
			<xsl:attribute name="year">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</decision:decisiondate>

	</xsl:template>

	<xsl:template match="date">

		<!--  Original Target XPath:  decision:dates/decision:decisiondate/date-text   -->
		<decision:dates>
			<decision:decisiondate>
				<date-text>
					<xsl:apply-templates select="@* | node()"/>
				</date-text>
			</decision:decisiondate>
		</decision:dates>

	</xsl:template>

</xsl:stylesheet>