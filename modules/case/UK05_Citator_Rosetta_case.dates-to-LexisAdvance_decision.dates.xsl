<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
	xmlns:case="http://www.lexis-nexis.com/glp/case"
	xmlns:case2="http://www.lexisnexis.com/xmlschemas/content/legal/case/1/"
	xmlns:decision="http://www.lexisnexis.com/xmlschemas/content/legal/decision/1/" version="2.0"
	exclude-result-prefixes="dita case case2">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/"
		id="Rosetta_case.dates-to-LexisAdvance_decision.dates">
		<title>case:dates-to-decision:dates <lnpid>id-UK05-27819</lnpid></title>
		<body>
			<p>
				<sourcexml>case:dates</sourcexml> becomes <targetxml>decision:dates</targetxml>. The children can be converted
				as follows: <ul>
					<li>
						<sourcexml>case:decisiondate</sourcexml> becomes <targetxml>decision:decisiondate</targetxml>. The children
						can be converted as follows: <ul>
							<li>
								<sourcexml>date</sourcexml> becomes <targetxml>date-text</targetxml>; the conversion also covers the
								attributes <sourcexml>@day</sourcexml> becomes <targetxml>decision:decisiondate/@day</targetxml>
								<sourcexml>@month</sourcexml> becomes <targetxml>decision:decisiondate/@month</targetxml>
								<sourcexml>@year</sourcexml> becomes <targetxml>decision:decisiondate/@year</targetxml>
								<note>Please note that the schema allows @day to be a single digit and hence the leading zero is not
									required in the <targetxml>decision:decisiondate @day</targetxml>.</note>
								<note>Please note that the attribute <targetxml>decision:decisiondate/@normdate</targetxml> needs to be
									populated for all the <targetxml>decision:decisiondate</targetxml> for sorting purposes. Please see
									the example below for more details :</note>
							</li>
						</ul>
					</li>
				</ul>
				<pre>
&lt;case:dates&gt;
  &lt;case:decisiondate&gt;
    &lt;date day="24" month="03" year="1977"&gt;24/03/1977&lt;/date&gt;
  &lt;/case:decisiondate&gt;
&lt;/case:dates&gt;
<b>Becomes</b>
&lt;decision:dates&gt;
  &lt;decision:decisiondate day="24" month="03" year="1977" normdate="1977-03-24"&gt;
    &lt;date-text&gt;24/03/1977&lt;/date-text&gt;
  &lt;/decision:decisiondate&gt;
&lt;/decision:dates&gt;

</pre>
			</p>
		</body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK05_Citator\Rosetta_case.dates-to-LexisAdvance_decision.dates.dita  -->
	<xsl:template match="case:dates | case2:dates">
		<!--  Original Target XPath:  decision:dates   -->
		<decision:dates>
			<xsl:apply-templates select="@* | node()"/>
		</decision:dates>
	</xsl:template>

	<xsl:template match="case:decisiondate | case2:decisiondate">
		<!--  Original Target XPath:  decision:decisiondate   -->
		<decision:decisiondate>
			<!-- copy attributes from child date to this element -->
			<xsl:apply-templates select="./date/@day,./date/@month,./date/@year"/>
			<xsl:if test="./date/@day and ./date/@month and ./date/@year">
				<xsl:attribute name="normdate" select="concat(./date/@year, '-', ./date/@month, '-', ./date/@day)"/>
			</xsl:if>
			
			<xsl:apply-templates select="@* | node()"/>
		</decision:decisiondate>
	</xsl:template>

	<!--<xsl:template match="date[parent::case:decisiondate or parent::case2:decisiondate]">
		<!-\-  Original Target XPath:  date-text   -\->
		<date-text xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
			<xsl:apply-templates/>
		</date-text>
	</xsl:template>-->

	<xsl:template match="@day">
		<xsl:copy-of select="."/>
	</xsl:template>

	<xsl:template match="@month">
		<xsl:copy-of select="."/>
	</xsl:template>

	<xsl:template match="@year">
		<xsl:copy-of select="."/>
	</xsl:template>

</xsl:stylesheet>