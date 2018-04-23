<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
	xmlns:case="http://www.lexis-nexis.com/glp/case"
	xmlns:ci="http://www.lexis-nexis.com/ci"
	xmlns:compcase="urn:x-lexisnexis:content:compositecourtcase:sharedservices:1"
	version="2.0" exclude-result-prefixes="dita case ci">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/"
		id="case.courtinfo">
		<title>case:courtinfo <lnpid>id-UK02-27213</lnpid></title>
		<body>
			<section>
				<p>
					<sourcexml class="+ topic/keyword xml-d/sourcexml "
						>case:courtinfo</sourcexml> becomes <targetxml
						class="+ topic/keyword xml-d/targetxml "
						>compcase:head/compcase:caseinstanceinfo/jurisinfo:courtinfo</targetxml>
				</p>
				<p> The following collection of elements (children of
						<sourcexml>case:courtinfo</sourcexml>), regardless of sequence,
					should be considered a set: <ul>
						<li><sourcexml>case:courtname</sourcexml></li>
						<li><sourcexml>case:courtcode</sourcexml></li>
						<li><sourcexml>case:juris</sourcexml></li>
						<li><sourcexml>case:dates</sourcexml></li>
						<li><sourcexml>case:judges</sourcexml></li>
						<li><sourcexml>case:courtnum</sourcexml></li>
					</ul>
				</p>
				<p> There should be no repetition of elements in a set. For each set of
					elements listed above, the individual elements should be mapped to
					children of <targetxml>compcase:caseinstanceinfo</targetxml>. Refer to
					the instructions for each child element of
						<sourcexml>case:courtinfo</sourcexml> to determine the proper target
					element. </p>
			</section>

			<example>
				<title>Source XML</title>
				<codeblock> &lt;case:courtinfo&gt; &lt;case:courtname&gt;KING'S BENCH
					DIVISION&lt;/case:courtname&gt;
					&lt;case:courtcode&gt;255&lt;/case:courtcode&gt;
					&lt;case:juris&gt;255&lt;/case:juris&gt; &lt;case:judges&gt;SWIFT
					J&lt;/case:judges&gt; &lt;case:dates&gt; &lt;case:hearingdates&gt;8, 9
					JULY 1936&lt;/case:hearingdates&gt; &lt;/case:dates&gt;
					&lt;/case:courtinfo&gt; </codeblock>
			</example>

			<example>
				<title>Target XML</title>
				<codeblock> &lt;compcase:head&gt; &lt;compcase:caseinstanceinfo&gt;
					&lt;jurisinfo:courtinfo&gt; &lt;jurisinfo:alternatecourtcode
					alternatecourtcode="255"/&gt; &lt;jurisinfo:courtname&gt;KING'S BENCH
					DIVISION&lt;/jurisinfo:courtname&gt; &lt;jurisinfo:jurisdiction&gt;
					&lt;jurisinfo:system&gt;255&lt;/jurisinfo:system&gt;
					&lt;/jurisinfo:jurisdiction&gt; &lt;/jurisinfo:courtinfo&gt;
					&lt;decision:dates&gt; &lt;decision:argueddate&gt; &lt;date-text&gt;8,
					9 JULY 1936&lt;/date-text&gt;, &lt;/decision:argueddate&gt;
					&lt;/decision:dates&gt; &lt;courtcase:panel&gt;
					&lt;courtcase:judges&gt; &lt;person:judge&gt;SWIFT
					J&lt;/person:judge&gt; &lt;/courtcase:judges&gt;
					&lt;/courtcase:panel&gt; &lt;/compcase:caseinstanceinfo&gt;
					&lt;/compcase:head&gt; </codeblock>
			</example>
			<section>
				<title>Changes</title>
				<p>2015-02-11: <ph id="change_20150211_SSX">Added
							<sourcexml>case:courtnum</sourcexml> in the list of child of
							<sourcexml>case:courtinfo</sourcexml></ph></p>
			</section>
		</body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK02-Comp_Cases\case.courtinfo.dita  -->

	<xsl:template match="case:courtinfo[ancestor::case:headnote]">
		<!--  Original Target XPath:  compcase:head/compcase:caseinstanceinfo/jurisinfo:courtinfo   -->
		<xsl:if test="case:courtname, case:courtcode, case:juris, case:courtnum[ci:cite/ci:content]">
			<jurisinfo:courtinfo
				xmlns:jurisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/jurisdiction-info/1/">
				<!-- JD: match required output schema order -->
			  <!-- JD: 2017-12-18: Web* 7075270 - use courtcode[1] -->
				<xsl:apply-templates select="case:courtcode[1]"/>
				<xsl:apply-templates select="case:courtname"/>
				<xsl:if test="node() except (case:courtnum,case:courtcode,case:courtname,case:dates,case:judges)">
					<jurisinfo:jurisdiction>
						<xsl:apply-templates
							select="@* | node() except (case:courtnum[not(ci:cite/ci:content)],case:courtcode, case:courtname, case:dates, case:judges)"
						/>
					</jurisinfo:jurisdiction>
				</xsl:if>
			</jurisinfo:courtinfo>
		</xsl:if>
		<xsl:apply-templates select="case:judges"/>
		<xsl:apply-templates select="case:dates"/>
	</xsl:template>

	<!-- when under case:judgment do not output jurisinfo -->	
	<xsl:template match="case:courtinfo[ancestor::case:judgment]">
		<xsl:apply-templates select="case:judges"/>
		<!-- not applying dates here; should already have been grouped in head and also output as courtcase:opinions/decision:decisiondate (see modules/case/UK02-Comp_Cases_case.dates.xsl) -->
		<!--<xsl:apply-templates select="case:dates"/>-->
	</xsl:template>
	
</xsl:stylesheet>
