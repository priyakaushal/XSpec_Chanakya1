<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case"
	xmlns:courtcase="http://www.lexisnexis.com/xmlschemas/content/legal/courtcase/1/"
	xmlns:decision="http://www.lexisnexis.com/xmlschemas/content/legal/decision/1/" version="2.0"
	exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/"
		id="UK01_Rosetta_case.judgments-LxAdv_courtcase.opinions">
		<title>case:judgments <lnpid>id-UK01-27034</lnpid></title>
		<body>
			<section
				conref="../../common_caselaw/conref_content/Rosetta_case.judgments-LxAdv_courtcase.opinions.dita#Rosetta_case.judgments-LxAdv_courtcase.opinions/mapping"/>
			<section>
				<p>The optional attributes of <sourcexml>case:judgments</sourcexml> are handled as follows:<ul>
						<li><sourcexml>case:judgments/@subdoc</sourcexml> becomes
								<targetxml>courtcase:opinions/@includeintoc</targetxml>.</li>
					</ul></p>
			</section>
			<example>
				<codeblock> &lt;case:judgments&gt; &lt;case:judgment&gt; &lt;case:judgmentbody&gt; &lt;pgrp&gt; &lt;p&gt;
					&lt;pnum&gt;1&lt;/pnum&gt; &lt;/p&gt; &lt;/pgrp&gt; &lt;pgrp&gt; &lt;p&gt; &lt;text&gt;&amp;#x201c;The
					applicant had been in the employ of the respondent company from 31st August 1953, when he started as an
					apprentice, until his employment terminated on 4th May 1972. Over that period of time Mr Middlemass had worked
					in all sorts of capacities for the company. However, the capacity about which we are concerned is that
					relating to either sales manager or technical representative on behalf of the company.&lt;/text&gt; &lt;/p&gt;
					&lt;/pgrp&gt; &lt;/case:judgmentbody&gt; &lt;/case:judgment&gt; &lt;/case:judgments&gt; </codeblock>
				<b>becomes</b>
				<codeblock> &lt;courtcase:opinions&gt; &lt;courtcase:opinion&gt; &lt;bodytext&gt; &lt;pgrp&gt; &lt;p&gt;
					&lt;desig&gt;1&lt;/desig&gt; &lt;/p&gt; &lt;/pgrp&gt; &lt;pgrp&gt; &lt;p&gt; &lt;text&gt;&amp;#x201C;The
					applicant had been in the employ of the respondent company from 31st August 1953, when he started as an
					apprentice, until his employment terminated on 4th May 1972. Over that period of time Mr Middlemass had worked
					in all sorts of capacities for the company. However, the capacity about which we are concerned is that
					relating to either sales manager or technical representative on behalf of the company.&lt;/text&gt; &lt;/p&gt;
					&lt;/pgrp&gt; &lt;/bodytext&gt; &lt;/courtcase:opinion&gt; &lt;/courtcase:opinions&gt; </codeblock>
			</example>
			<section>
				<p>When <sourcexml>case:dates</sourcexml> appears as direct of <sourcexml>case:judgments</sourcexml> then
					conversion need to omit tag (<sourcexml>case:dates</sourcexml>) and retain content in this particular context
					and create <targetxml>decision:decisiondate</targetxml> as direct child of
						<targetxml>courtcase:opinions</targetxml>, i.e.,
						<sourcexml>case:judgments/case:dates/case:decisiondate</sourcexml> becomes
						<targetxml>courtcase:opinions/decision:decisiondate</targetxml>.</p>
				<p>The attribute <targetxml>decision:decisiondate/@normdate</targetxml> should be populated with the values of
						<sourcexml>case:decisiondate/date/@year</sourcexml>, <sourcexml>case:decisiondate/date/@month</sourcexml>
					and <sourcexml>case:decisiondate/date/@day</sourcexml> concatenated and separated by a single hyphen. The
					values of <sourcexml>case:decisiondate/date/@month</sourcexml> and
						<sourcexml>case:decisiondate/date/@day</sourcexml> should be padded with zeroes so that they are 2
					digits.</p>
				<note>If one or more of the three date values (year, month or day) are absent, then
						<targetxml>decision:decisiondate/@normdate</targetxml> should <b>not</b> be populated.</note>
			</section>
			<example>
				<codeblock> &lt;case:judgments&gt; &lt;case:dates&gt; &lt;case:decisiondate&gt;&lt;date day="29" month="01"
					year="1936"&gt;29 January 1936&lt;/date&gt;. The following judgments were delivered.&lt;/case:decisiondate&gt;
					&lt;/case:dates&gt; &lt;case:judgment subdoc="true" toc-caption="SLESSER LJ."&gt; ... &lt;/case:judgment&gt;
					&lt;/case:judgments&gt; </codeblock>
				<b>becomes</b>
				<codeblock> &lt;courtcase:opinions&gt; &lt;decision:decisiondate day="29" month="01" year="1936"
					normdate="1936-01-29"&gt; &lt;date-text&gt;29 January 1936&lt;/date-text&gt; The following judgments were
					delivered. &lt;/decision:decisiondate&gt; &lt;courtcase:opinion includeintoc="true"
					alternatetoccaption="SLESSER LJ."&gt; ... &lt;/courtcase:opinion&gt; &lt;/courtcase:opinions&gt; </codeblock>
			</example>
			<!--<section
            conref="../../common_caselaw/conref_content/Rosetta_case.judgments-LxAdv_courtcase.opinions.dita#Rosetta_case.judgments-LxAdv_courtcase.opinions/changes"/>-->
			<!--<section>
            <title>Changes Specific to UK01</title>
        </section>-->
		</body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK01_CaseLaw\UK01_Rosetta_case.judgments-LxAdv_courtcase.opinions.dita  -->

	<xsl:template match="case:judgments">
		<!--  Original Target XPath:  courtcase:opinions/@includeintoc   -->
		<courtcase:opinions>
			<xsl:apply-templates select="@* | node()"/>
		</courtcase:opinions>
	</xsl:template>

	<xsl:template match="case:judgments/@subdoc">

		<!--  Original Target XPath:  courtcase:opinions/@includeintoc   -->
			<xsl:attribute name="includeintoc">
				<xsl:value-of select="."/>
			</xsl:attribute>
	</xsl:template>

	<xsl:template match="case:dates[parent::case:judgements]">
		<!--  Original Target XPath:  decision:decisiondate   -->
			<xsl:apply-templates />
	</xsl:template>

	<xsl:template match="case:judgments/case:dates/case:decisiondate">
		<!--  Original Target XPath:  courtcase:opinions/decision:decisiondate   -->
			<decision:decisiondate>
				<xsl:apply-templates select="./date/@*"/>
				<xsl:apply-templates select="@* | node()"/>
			</decision:decisiondate>
	</xsl:template>

	<!--<xsl:template match="case:decisiondate/date/@year">
		<!-\-  Original Target XPath:  decision:decisiondate/@normdate   -\->
			<xsl:attribute name="normdate">
				<xsl:value-of select="."/>
			</xsl:attribute>
	</xsl:template>

	<xsl:template match="case:decisiondate/date/@month">
		<!-\-  Original Target XPath:  decision:decisiondate/@normdate   -\->
			<xsl:attribute name="normdate">
				<xsl:value-of select="."/>
			</xsl:attribute>
	</xsl:template>

	<xsl:template match="case:decisiondate/date/@day">
		<!-\-  Original Target XPath:  decision:decisiondate/@normdate   -\->
			<xsl:attribute name="normdate">
				<xsl:value-of select="."/>
			</xsl:attribute>
	</xsl:template>
-->
</xsl:stylesheet>
