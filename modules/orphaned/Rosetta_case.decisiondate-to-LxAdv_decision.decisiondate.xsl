<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:decision="http://www.lexisnexis.com/xmlschemas/content/legal/decision/1/" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="case-dates">
	<title>case:decisiondate to decision:decisiondate <lnpid>id-CA03-13218</lnpid></title>
	<body>
		<section>
			<title>Instructions</title>
			<p><sourcexml>case:decisiondate</sourcexml> becomes
					<targetxml>decision:decisiondates</targetxml>.</p>
			<p>The attribute <targetxml>decision:decisiondate/@normdate</targetxml> should be
				populated with the values of <sourcexml>case:decisiondate/date/@year</sourcexml>,
					<sourcexml>case:decisiondate/date/@month</sourcexml> and
					<sourcexml>case:decisiondate/date/@day</sourcexml> concatenated and separated by
				a single hyphen. The values of <sourcexml>case:decisiondate/date/@month</sourcexml>
				and <sourcexml>case:decisiondate/date/@day</sourcexml> should be padded with zeroes
				so that they are 2 digits. <note>If one or more of the three date values (year,
					month or day) are absent, then
						<targetxml>decision:decisiondate/@normdate</targetxml> should <b>not</b> be
					populated.</note></p>
		</section>
		<example>
			<title>Source XML</title>
			<codeblock>&lt;case:dates&gt;
    &lt;case:decisiondate&gt;&lt;date day="2" month="11" year="1983"&gt;1983/11/2&lt;/date&gt;&lt;/case:decisiondate&gt;
&lt;/case:dates&gt;</codeblock>
			<title>Target XML</title>
			<codeblock>&lt;decision:dates&gt;
    &lt;decision:decisiondate day="2" month="11" year="1983" normdate="1983-11-02"&gt;&lt;date-text&gt;1983/11/2&lt;/date-text&gt;&lt;/decision:decisiondate&gt;
&lt;/decision:dates&gt;</codeblock>
		</example>
		<section>
			<title>Changes</title>
			<p>2013-01-17: <ph id="change_20130117_dsf">Instructions on how to populate
						<targetxml>decision:decisiondate/@normdate</targetxml> were added. The
					target example was updated to include <targetxml>@normdate</targetxml> in
						<targetxml>decision:decisiondate</targetxml>.</ph></p>
		</section>
	</body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA03-Citator\Rosetta_case.decisiondate-to-LxAdv_decision.decisiondate.dita  -->
	<xsl:message>Rosetta_case.decisiondate-to-LxAdv_decision.decisiondate.xsl requires manual development!</xsl:message> 

	<xsl:template match="case:decisiondate">

		<!--  Original Target XPath:  decision:decisiondates   -->
		<decision:decisiondates>
			<xsl:apply-templates select="@* | node()"/>
		</decision:decisiondates>

	</xsl:template>

	<xsl:template match="case:decisiondate/date/@year">

		<!--  Original Target XPath:  decision:decisiondate/@normdate   -->
		<decision:decisiondate>
			<xsl:attribute name="normdate">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</decision:decisiondate>

	</xsl:template>

	<xsl:template match="case:decisiondate/date/@month">

		<!--  Original Target XPath:  decision:decisiondate/@normdate   -->
		<decision:decisiondate>
			<xsl:attribute name="normdate">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</decision:decisiondate>

	</xsl:template>

	<xsl:template match="case:decisiondate/date/@day">

		<!--  Original Target XPath:  decision:decisiondate/@normdate   -->
		<decision:decisiondate>
			<xsl:attribute name="normdate">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</decision:decisiondate>

	</xsl:template>

</xsl:stylesheet>