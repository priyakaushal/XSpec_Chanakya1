<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
	xmlns:case="http://www.lexis-nexis.com/glp/case"
	xmlns:decision="http://www.lexisnexis.com/xmlschemas/content/legal/decision/1/"
	version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/"
		id="case.decisiondate">
		<title>case:decisiondate <lnpid>id-UK02-27216</lnpid></title>
		<body>
			<section>
				<p>
					<sourcexml class="+ topic/keyword xml-d/sourcexml "
						>case:decisiondate</sourcexml> becomes <targetxml
						class="+ topic/keyword xml-d/targetxml "
						>decision:dates/decision:decisiondate</targetxml> populated with
					below mentioned attributes: <sourcexml
						class="+ topic/keyword xml-d/sourcexml "
						>case:decisiondate/date/@day</sourcexml> becomes <targetxml
						class="+ topic/keyword xml-d/targetxml "
						>decision:decisiondate/@day</targetxml>, <sourcexml
						class="+ topic/keyword xml-d/sourcexml "
						>case:decisiondate/date/@month</sourcexml> becomes <targetxml
						class="+ topic/keyword xml-d/targetxml "
						>decision:decisiondate/@month</targetxml> and <sourcexml
						class="+ topic/keyword xml-d/sourcexml "
						>case:decisiondate/date/@year</sourcexml> becomes <targetxml
						class="+ topic/keyword xml-d/targetxml "
						>decision:decisiondate/@year</targetxml>. </p>
				<p> The attribute <targetxml>decision:decisiondate/@normdate</targetxml>
					should be populated with the values of
						<sourcexml>case:decisiondate/date/@year</sourcexml>,
						<sourcexml>case:decisiondate/date/@month</sourcexml> and
						<sourcexml>case:decisiondate/date/@day</sourcexml> concatenated and
					separated by a single hyphen. The values of
						<sourcexml>case:decisiondate/date/@month</sourcexml> and
						<sourcexml>case:decisiondate/date/@day</sourcexml> should be padded
					with zeroes so that they are 2 digits. <note>If one or more of the
						three date values (year, month or day) are absent, then
							<targetxml>decision:decisiondate/@normdate</targetxml> should
							<b>not</b> be populated.</note>
				</p>
				<p>
					<sourcexml class="+ topic/keyword xml-d/sourcexml ">date</sourcexml>
					becomes <targetxml class="+ topic/keyword xml-d/targetxml "
						>date-text</targetxml>
				</p>
			</section>

			<example>
				<title>Source XML</title>
				<codeblock> &lt;case:dates&gt; &lt;case:decisiondate&gt; &lt;date
					day="09" month="07" year="1936"&gt;9 July 1936&lt;/date&gt;. The
					following judgment was delivered. &lt;/case:decisiondate&gt;
					&lt;/case:dates&gt; </codeblock>
			</example>

			<example>
				<title>Target XML</title>
				<codeblock> &lt;decision:dates&gt; &lt;decision:decisiondate day="09"
					month="07" year="1936" normdate="1936-07-09"&gt; &lt;date-text&gt;9
					July 1936&lt;/date-text&gt; The following judgment was delivered.
					&lt;/decision:decisiondate&gt; &lt;/decision:dates&gt; </codeblock>
			</example>

		</body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK02-Comp_Cases\case.decisiondate.dita  -->

	<xsl:template match="case:decisiondate">
		<!--  Original Target XPath:  decision:dates/decision:decisiondate   -->
		<!-- JD: Web* 7056567: just concat the normdate of the date that has text when multiple dates are present -->
		<decision:decisiondate>
			<xsl:choose>
				<xsl:when test="count(date)=1">
					<xsl:if test="date/@day and date/@month and date/@year">
						<xsl:attribute name="normdate"
							select="concat(date/@year, '-', date/@month, '-', date/@day)"/>
					</xsl:if>
				</xsl:when>
				<xsl:otherwise>
					<xsl:if test="date[text()]/@day and date[text()]/@month and date[text()]/@year">
						<xsl:attribute name="normdate"
							select="concat(date[text()]/@year, '-', date[text()]/@month, '-', date[text()]/@day)"/>
					</xsl:if>
				</xsl:otherwise>
			</xsl:choose>
			<xsl:apply-templates select="@* | node()"/>
		</decision:decisiondate>
	</xsl:template>

	<xsl:template match="case:decisiondate/date/@day">
		<xsl:attribute name="day">
			<xsl:value-of select="."/>
		</xsl:attribute>
	</xsl:template>

	<xsl:template match="case:decisiondate/date/@month">
		<xsl:attribute name="month">
			<xsl:value-of select="."/>
		</xsl:attribute>
	</xsl:template>

	<xsl:template match="case:decisiondate/date/@year">
		<xsl:attribute name="year">
			<xsl:value-of select="."/>
		</xsl:attribute>
	</xsl:template>


</xsl:stylesheet>
