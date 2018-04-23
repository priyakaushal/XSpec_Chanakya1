<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
	xmlns:case="http://www.lexis-nexis.com/glp/case"
	xmlns:casesum="http://www.lexisnexis.com/xmlschemas/content/legal/case-summary/1/"
	xmlns:courtcase="http://www.lexisnexis.com/xmlschemas/content/legal/courtcase/1/"
	version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/"
		id="case.decisionsummary">
		<title>case:decisionsummary <lnpid>id-UK02-27217</lnpid></title>
		<body>
			<section>
				<p>
					<sourcexml class="+ topic/keyword xml-d/sourcexml "
						>case:decisionsummary</sourcexml> becomes <targetxml
						class="+ topic/keyword xml-d/targetxml "
						>/compcase:compositecourtcase/compcase:head/casesum:summaries/casesum:decisionsummary</targetxml>
					comes with optional attribute <sourcexml
						class="+ topic/keyword xml-d/sourcexml ">@summarytype</sourcexml>
					becomes <targetxml class="+ topic/keyword xml-d/targetxml "
						>@summarysource</targetxml>. <note> Every element occurring within
							<sourcexml>case:decisionsummary</sourcexml> should be handled via
							<targetxml>bodytext</targetxml> within
							<targetxml>casesum:decisionsummary</targetxml>. </note>
					<note> Conversion should not create consecutive
							<targetxml>casesum:summaries</targetxml> elements. When 2 or more
						sibling source elements map to
							<targetxml>casesum:summaries</targetxml>, data should be merged to
						a single <targetxml>casesum:summaries</targetxml> element. </note>
				</p>
			</section>

			<example>
				<title>Source XML</title>
				<codeblock> &lt;case:decisionsummary summarytype="held"&gt; &lt;pgrp&gt;
					&lt;p&gt; &lt;text&gt; &lt;emph typestyle="bf"&gt;Held&lt;/emph&gt;
					&amp;#x2013; inasmuch as the matters discussed at the interview had no
					relation to the compulsory purchase order, no wrong was done by the
					interview, in which the Minister wasacting in a purely administrative
					capacity. There was no ground for quashing the order. &lt;/text&gt;
					&lt;/p&gt; &lt;/pgrp&gt; &lt;/case:decisionsummary&gt; </codeblock>
			</example>

			<example>
				<title>Target XML</title>
				<codeblock> &lt;casesum:summaries&gt; &lt;casesum:decisionsummary
					summarysource="held"&gt; &lt;bodytext&gt; &lt;p&gt; &lt;text&gt;
					&lt;emph typestyle="bf"&gt;Held&lt;/emph&gt; &amp;#x2013; inasmuch as
					the matters discussed at the interview had no relation to the
					compulsory purchase order, no wrong was done by the interview, in
					which the Minister was acting in a purely administrative capacity.
					There was no ground for quashing the order. &lt;/text&gt; &lt;/p&gt;
					&lt;/bodytext&gt; &lt;/casesum:decisionsummary&gt;
					&lt;/casesum:summaries&gt; </codeblock>
			</example>

			<section>
				<p>When <sourcexml>case:decisionsummary</sourcexml> is a child of
						<sourcexml>case:content/case:judgments</sourcexml> then
						<sourcexml>case:decisionsummary</sourcexml> becomes
						<targetxml>courtcase:opinions/casesum:decisionsummary</targetxml>.</p>
				<p>Wrap all <sourcexml>p</sourcexml> within
						<targetxml>casesum:decisionsummary/bodytext</targetxml>.</p>
				<p>The optional attributes of
						<sourcexml>case:decisionsummary</sourcexml> are handled as follows:<ul>
						<li><sourcexml>case:decisionsummary/@summarytype</sourcexml> becomes
								<targetxml>casesum:decisionsummary/@summarysource</targetxml></li>
					</ul></p>
			</section>
			<example>
				<codeblock> &lt;case:content&gt; &lt;case:judgments&gt;
					&lt;case:decisionsummary summarytype="disposition"&gt; &lt;p&gt;
					&lt;text&gt;Rule discharged.&lt;/text&gt; &lt;/p&gt; &lt;page
					text="[1835-42] All ER Rep 586 at" reporter="ALLERREP"
					count="592"/&gt; &lt;/case:decisionsummary&gt; &lt;/case:judgments&gt;
					&lt;/case:content&gt; </codeblock>
				<b>becomes</b>
				<codeblock> &lt;courtcase:opinions&gt; &lt;casesum:decisionsummary
					summarysource="disposition"&gt; &lt;bodytext&gt; &lt;p&gt;
					&lt;text&gt;Rule discharged.&lt;/text&gt; &lt;/p&gt; &lt;/bodytext&gt;
					&lt;ref:page num="592" page-scheme="ALLERREP"
					page-scheme-type="reporter-abbreviation"/&gt;
					&lt;/casesum:decisionsummary&gt; &lt;/courtcase:opinions&gt;
				</codeblock>
			</example>

			<section>
				<title>Changes</title>
				<p>2015-09-21: <ph id="change_20150921_PS">Added instruction and example
						when <sourcexml>case:decisionsummary</sourcexml> is a child of
							<sourcexml>case:content/case:judgments</sourcexml>, Applicable on
						UK02, RFA 4.5 # 2398.</ph></p>
			</section>
		</body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK02-Comp_Cases\case.decisionsummary.dita  -->

	<xsl:template match="case:decisionsummary">
		<!--  Original Target XPath:  /compcase:compositecourtcase/compcase:head/casesum:summaries/casesum:decisionsummary   -->
		<casesum:decisionsummary>
			<xsl:apply-templates select="@*"/>
			<bodytext
				xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
				<!-- JD: match DT output by processing page after bodytext closes -->
				<xsl:apply-templates select="node() except page"/>
			</bodytext>
			<xsl:apply-templates select="page"/>
		</casesum:decisionsummary>
	  <!-- JD: 2017-09-06: output following sibling notes; best solution probably lies in /modules/case/UK02-Comp_Cases_case.judgments.xsl, but grouping logic (to match DT) is complicated and can't be inferred from CI-->
	  <xsl:if test="following-sibling::*[1][ self::note[not(following-sibling::*)] or  self::case:constituents[not(following-sibling::*)]]">
	    <xsl:apply-templates select="following-sibling::*[1][ self::note[not(following-sibling::*)] or  self::case:constituents[not(following-sibling::*)]]"/>
	  </xsl:if>
	</xsl:template>

	<!-- JD: match DT output; when under headnote <ref:page> output inside <bodytext>-->
	<xsl:template match="case:decisionsummary[parent::case:headnote]">
		<!--  Original Target XPath:  /compcase:compositecourtcase/compcase:head/casesum:summaries/casesum:decisionsummary   -->
		<casesum:decisionsummary>
			<xsl:apply-templates select="@*"/>
			<bodytext
				xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
				<xsl:apply-templates select="node()"/>
			</bodytext>
		</casesum:decisionsummary>
	</xsl:template>

	<xsl:template match="@summarytype">
		<!--  Original Target XPath:  @summarysource   -->
		<xsl:attribute name="summarysource">
			<xsl:value-of select="."/>
		</xsl:attribute>
	</xsl:template>

</xsl:stylesheet>
