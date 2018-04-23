<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
	xmlns:casesum="http://www.lexisnexis.com/xmlschemas/content/legal/case-summary/1/"
	xmlns:courtcase="http://www.lexisnexis.com/xmlschemas/content/legal/courtcase/1/"
	xmlns:caseinfo="http://www.lexisnexis.com/xmlschemas/content/legal/case-information/1/"
	xmlns:case="http://www.lexis-nexis.com/glp/case"
	version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="UK01_Rosetta_case.headnote-LxAdv_courtcase.head">
		<title>case:headnote <lnpid>id-UK01-27027</lnpid></title>
		<body>
			<section
				conref="../../common_caselaw/conref_content/Rosetta_case.headnote-LxAdv_courtcase.head.dita#Rosetta_case.headnote-LxAdv_courtcase.head/mapping"/>
			<example>
				<codeblock> &lt;case:headnote&gt; &lt;note notetype="commentary"&gt; &lt;h&gt; &lt;emph
					typestyle="bf"&gt;Notes&lt;/emph&gt; &lt;/h&gt; &lt;pgrp&gt; &lt;p&gt; &lt;text&gt;So far as libel is
					concerned, the law here laid down seems to be new and uncovered by previous authority. Taking interrogatories
					generally, however, it is an extension of the doctrine laid down in &lt;emph typestyle="it"&gt;Bolckow v
					Fisher&lt;/emph&gt; &lt;ci:cite searchtype="CASE-REF"&gt; &lt;ci:case&gt; &lt;ci:caseref&gt; &lt;ci:reporter
					value="QBD"/&gt; &lt;ci:volume num="10"/&gt; &lt;ci:edition&gt; &lt;ci:date year="1882"/&gt;
					&lt;/ci:edition&gt; &lt;ci:page num="161"/&gt; &lt;/ci:caseref&gt; &lt;/ci:case&gt; &lt;ci:content&gt; (1882)
					10 QBD 161 &lt;/ci:content&gt; &lt;/ci:cite&gt;; 18 Digest 229, &lt;emph typestyle="it" &gt;1752&lt;/emph&gt;,
					and an extension in a negative sense. That authority settled that a principal could be interrogated as to the
					knowledge of his servants and agents and restricted that doctrine to such time as they were under his control,
					and this case extends the latter part of the doctrine to the particular circumstances of a libel action where
					the author is not sued. &lt;/text&gt; &lt;/p&gt; &lt;/pgrp&gt; &lt;pgrp&gt; &lt;p&gt; &lt;text&gt;For the Law
					on the point, see Halsbury, Vol 10, pp 417, 427 and for the Cases see Digest Vol 18, pp 208, 228,
					229.&lt;/text&gt; &lt;/p&gt; &lt;/pgrp&gt; &lt;/note&gt; &lt;/case:headnote&gt; </codeblock>
				<b>becomes</b>
				<codeblock> &lt;courtcase:head&gt; &lt;note notetype="commentary"&gt; &lt;bodytext&gt; &lt;h&gt; &lt;emph
					typestyle="bf"&gt;Notes&lt;/emph&gt; &lt;/h&gt; &lt;pgrp&gt; &lt;p&gt; &lt;text&gt;So far as libel is
					concerned, the law here laid down seems to be new and uncovered by previous authority. Taking interrogatories
					generally, however, it is an extension of the doctrine laid down in &lt;emph typestyle="it"&gt;Bolckow v
					Fisher&lt;/emph&gt; &lt;lnci:cite&gt; &lt;lnci:case&gt; &lt;lnci:caseref&gt; &lt;lnci:reporter
					value="QBD"/&gt; &lt;lnci:volume num="10"/&gt; &lt;lnci:edition&gt; &lt;lnci:date year="1882"/&gt;
					&lt;/lnci:edition&gt; &lt;lnci:page num="161"/&gt; &lt;/lnci:caseref&gt; &lt;/lnci:case&gt;
					&lt;lnci:content&gt; (1882) 10 QBD 161 &lt;/lnci:content&gt; &lt;/lnci:cite&gt;; 18 Digest 229, &lt;emph
					typestyle="it" &gt;1752&lt;/emph&gt;, and an extension in a negative sense. That authority settled that a
					principal could be interrogated as to the knowledge of his servants and agents and restricted that doctrine to
					such time as they were under his control, and this case extends the latter part of the doctrine to the
					particular circumstances of a libel action where the author is not sued. &lt;/text&gt; &lt;/p&gt;
					&lt;/pgrp&gt; &lt;pgrp&gt; &lt;p&gt; &lt;text&gt;For the Law on the point, see Halsbury, Vol 10, pp 417, 427
					and for the Cases see Digest Vol 18, pp 208, 228, 229. &lt;/text&gt; &lt;/p&gt; &lt;/pgrp&gt;
					&lt;/bodytext&gt; &lt;/note&gt; &lt;/courtcase:head&gt; </codeblock>
			</example>
			<!--<section
            conref="../../common_caselaw/conref_content/Rosetta_case.headnote-LxAdv_courtcase.head.dita#Rosetta_case.headnote-LxAdv_courtcase.head/changes"/>-->
			<!--<section>
            <title>Changes Specific to UK01</title>
            </section>-->

		</body>
	</dita:topic>
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK01_CaseLaw\UK01_Rosetta_case.headnote-LxAdv_courtcase.head.dita  -->

	<!-- instruction from conref'ed topic:
	case:headnote becomes courtcase:courtcase/courtcase:head.
	-->
	<xsl:template match="case:headnote">
		<courtcase:head>
			<!-- NOTE: create only one <caseinfo:caseinfo> wrapper -->
			<xsl:apply-templates select="case:info"/>
			<!-- JD: match DT output and preserve document order-->
			<xsl:apply-templates select="note[preceding-sibling::*[1][self::case:info]]"/>
			<xsl:apply-templates select="note[preceding-sibling::*[1][self::catchwordgrp]]"/>
			<!-- casesum:summaries -->
		  <!-- JD: 2017-11-15: Web* 7049146 : do not create empty casesum:summaries if no content for it. -->
			<xsl:if
			  test="case:decisionsummary[node()], case:factsummary[node()], case:consideredcases[node()], case:typeofcase[node()]">
				<casesum:summaries>
					<xsl:apply-templates select="case:factsummary | case:decisionsummary | case:consideredcases | case:typeofcase"/>
				</casesum:summaries>
			</xsl:if>
			<xsl:apply-templates select="note[preceding-sibling::*[1][name()=('case:factsummary','case:decisionsummary','case:consideredcases','case:typeofcase')]]"/>
			<!-- ref:relatedrefs -->
			<xsl:apply-templates select="case:references"/>			
			<xsl:apply-templates select="refnum"/>
			<xsl:apply-templates select="note[preceding-sibling::*[1][self::refnum]]"/>
			<xsl:apply-templates select="case:pubinfo"/>
			<xsl:apply-templates select="note[preceding-sibling::*[1][self::case:pubinfo]]"/>
			<xsl:apply-templates select="case:decisionnum"/>
			<xsl:apply-templates select="note[preceding-sibling::*[1][self::case:decisionnum]]"/>
			<!-- casehist:casehist elements -->
			<xsl:apply-templates select="case:priorhist"/>
			<xsl:apply-templates select="note[preceding-sibling::*[1][self::case:priorhist]]"/>
			<xsl:apply-templates select="case:subhist"/>
			<xsl:apply-templates select="note[preceding-sibling::*[1][self::case:subhist]]"/>
			<xsl:apply-templates
				select="note[preceding-sibling::*[1][self::case:subject]]"/>
			<!-- courtcase:prelim -->
			<xsl:apply-templates select="case:headnote/prelim"/>
			<xsl:apply-templates
				select="note[preceding-sibling::*[1][self::case:references]]"/>
			<xsl:apply-templates select="case:disposition"/>
			<xsl:apply-templates
				select="note[preceding-sibling::*[1][self::case:disposition]]"/>
		</courtcase:head>
	</xsl:template>
	
</xsl:stylesheet>
