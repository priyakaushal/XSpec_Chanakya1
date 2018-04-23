<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case"
	xmlns:ci="http://www.lexis-nexis.com/ci"
	xmlns:caseinfo="http://www.lexisnexis.com/xmlschemas/content/legal/case-information/1/" version="2.0"
	exclude-result-prefixes="dita case ci">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="UK01_Rosetta_case.courtnum">
		<title>case:courtnum <lnpid>id-UK01-27021</lnpid></title>
		<body>
			<section>
				<ol>
					<li>If <sourcexml>case:courtnum</sourcexml> contains <sourcexml>ci:cite</sourcexml> it should be mapped to 2
						locations: <ul>
							<li>The <sourcexml>ci:cite</sourcexml> should be mapped to
									<targetxml>caseinfo:caseinfo/ref:citations/ref:cite4thisresource</targetxml>.</li>
							<li>The content inside <sourcexml>ci:cite/ci:content</sourcexml> should also be placed inside
									<targetxml>caseinfo:caseinfo/caseinfo:docketnum</targetxml>.</li>
						</ul></li>
					<li>If <sourcexml>case:courtnum</sourcexml> does <b>not</b> contain <sourcexml>ci:cite</sourcexml>, then it
						should only be mapped to <targetxml>caseinfo:caseinfo/caseinfo:docketnum</targetxml>. </li>
				</ol>
			</section>

			<note> If <sourcexml>emph</sourcexml> occurs as child of <sourcexml>case:courtnum</sourcexml> then
					<sourcexml>emph</sourcexml> should be suppressed from conversion. </note>
			<note>Any occurrences of the attribute <sourcexml>@ln.user-displayed</sourcexml> in
					<sourcexml>case:courtnum</sourcexml> should be suppressed.</note>

			<example>
				<title>Source XML1: <sourcexml>case:courtnum</sourcexml> with child <sourcexml>ci:cite</sourcexml></title>
				<codeblock> &lt;case:courtnum&gt; &lt;emph typestyle="bf"&gt; &lt;ci:cite type="cite4thisdoc"&gt;
					&lt;ci:case&gt; &lt;ci:caseref&gt; &lt;ci:reporter value="UKHL"/&gt; &lt;ci:edition&gt; &lt;ci:date
					year="2006"/&gt; &lt;/ci:edition&gt; &lt;ci:page num="26"/&gt; &lt;/ci:caseref&gt; &lt;/ci:case&gt;
					&lt;ci:content&gt; &lt;citefragment searchtype="CASE-CITE-REF"&gt;[2006] UKHL 26&lt;/citefragment&gt;
					&lt;/ci:content&gt; &lt;/ci:cite&gt; &lt;/emph&gt; &lt;/case:courtnum&gt; </codeblock>
			</example>

			<example>
				<title>Target XML1: <sourcexml>case:courtnum</sourcexml> with child <sourcexml>ci:cite</sourcexml></title>
				<codeblock> &lt;caseinfo:caseinfo&gt; &lt;caseinfo:docketnum&gt;[2006] UKHL 26&lt;/caseinfo:docketnum&gt;
					&lt;ref:citations&gt; &lt;ref:cite4thisresource&gt; &lt;lnci:cite&gt; &lt;lnci:case&gt; &lt;lnci:caseref&gt;
					&lt;lnci:reporter value="UKHL"/&gt; &lt;lnci:edition&gt; &lt;lnci:date year="2006"/&gt; &lt;/lnci:edition&gt;
					&lt;lnci:page num="26"/&gt; &lt;/lnci:caseref&gt; &lt;/lnci:case&gt; &lt;lnci:content&gt;[2006] UKHL
					26&lt;/lnci:content&gt; &lt;/lnci:cite&gt; &lt;/ref:cite4thisresource&gt; &lt;/ref:citations&gt;
					&lt;/caseinfo:caseinfo&gt; </codeblock>
			</example>

			<example>
				<title>Source XML2: <sourcexml>case:courtnum</sourcexml>
					<i>without</i> child <sourcexml>ci:cite</sourcexml></title>
				<codeblock> &lt;case:courtnum&gt; &lt;emph typestyle="bf"&gt;Case no CCT 48/05&lt;/emph&gt;
					&lt;/case:courtnum&gt; </codeblock>
			</example>

			<example>
				<title>Target XML2: <sourcexml>case:courtnum</sourcexml>
					<i>without</i> child <sourcexml>ci:cite</sourcexml></title>
				<codeblock> &lt;caseinfo:docketnum&gt; Case no CCT 48/05 &lt;/caseinfo:docketnum&gt; </codeblock>
			</example>
			<note>Text (PCDATA) occuring in between <sourcexml>case:courtnum</sourcexml> and <sourcexml>ci:cite</sourcexml>
				<ol>
					<li>Move the PCDATA in <targetxml>caseinfo:caseinfo/caseinfo:docketnum</targetxml></li>
					<li>Use <targetxml>connector</targetxml> element for PCDATA in
							<targetxml>caseinfo:caseinfo/ref:citations</targetxml></li>
				</ol> And if <sourcexml>nl</sourcexml> is also occuring in Source that need to be suppressed from both target.
				Please see the Example given below.</note>

			<note>We need to create seperate <targetxml>caseinfo:caseinfo/caseinfo:docketnum</targetxml> in conversion for
				each <sourcexml>ci:cite</sourcexml> which is child of <sourcexml>case:courtnum</sourcexml>.</note>
			<example>
				<title>Source XML3: <sourcexml>case:courtnum/emph</sourcexml> with text before
					<sourcexml>ci:cite</sourcexml></title>
				<codeblock> &lt;case:courtnum&gt; &lt;emph typestyle="bf"&gt; &lt;ci:cite&gt; &lt;ci:case&gt; &lt;ci:caseref&gt;
					&lt;ci:reporter value="EWHCFAM" /&gt; &lt;ci:edition&gt; &lt;ci:date year="2010" /&gt; &lt;/ci:edition&gt;
					&lt;ci:page num="2438" /&gt; &lt;/ci:caseref&gt; &lt;/ci:case&gt; &lt;ci:content&gt; &lt;citefragment
					searchtype="CASE-CITE-REF"&gt;[2010] EWHC 2438 (Fam)&lt;/citefragment&gt; &lt;/ci:content&gt; &lt;/ci:cite&gt;
					; &lt;nl /&gt; &lt;ci:cite&gt; &lt;ci:case&gt; &lt;ci:caseref&gt; &lt;ci:reporter value="EWHCFAM" /&gt;
					&lt;ci:edition&gt; &lt;ci:date year="2010" /&gt; &lt;/ci:edition&gt; &lt;ci:page num="3282" /&gt;
					&lt;/ci:caseref&gt; &lt;/ci:case&gt; &lt;ci:content&gt; &lt;citefragment searchtype="CASE-CITE-REF"&gt;[2010]
					EWHC 3282 (Fam)&lt;/citefragment&gt; &lt;/ci:content&gt; &lt;/ci:cite&gt; &lt;/emph&gt; &lt;/case:courtnum&gt;
				</codeblock>
			</example>
			<example>
				<title>Target XML3: <sourcexml>case:courtnum/emph</sourcexml> with text before
					<sourcexml>ci:cite</sourcexml></title>
				<codeblock> &lt;caseinfo:caseinfo&gt; &lt;caseinfo:docketnum&gt;[2010] EWHC 2438
					(Fam);&lt;/caseinfo:docketnum&gt; &lt;caseinfo:docketnum&gt;[2010] EWHC 3282 (Fam) &lt;/caseinfo:docketnum&gt;
					&lt;ref:citations&gt; &lt;ref:cite4thisresource&gt; &lt;lnci:cite&gt; &lt;lnci:case&gt; &lt;lnci:caseref&gt;
					&lt;lnci:reporter value="EWHCFAM"/&gt; &lt;lnci:edition&gt; &lt;lnci:date year="2010"/&gt;
					&lt;/lnci:edition&gt; &lt;lnci:page num="2438"/&gt; &lt;/lnci:caseref&gt; &lt;/lnci:case&gt;
					&lt;lnci:content&gt;[2010] EWHC 2438 (Fam)&lt;/lnci:content&gt; &lt;/lnci:cite&gt;
					&lt;/ref:cite4thisresource&gt; &lt;connector&gt;;&lt;/connector&gt; &lt;ref:cite4thisresource&gt;
					&lt;lnci:cite&gt; &lt;lnci:case&gt; &lt;lnci:caseref&gt; &lt;lnci:reporter value="EWHCFAM" /&gt;
					&lt;lnci:edition&gt; &lt;lnci:date year="2010" /&gt; &lt;/lnci:edition&gt; &lt;lnci:page num="3282" /&gt;
					&lt;/lnci:caseref&gt; &lt;/lnci:case&gt; &lt;lnci:content&gt; [2010] EWHC 3282 (Fam) &lt;/lnci:content&gt;
					&lt;/lnci:cite&gt; &lt;/ref:cite4thisresource&gt; &lt;/ref:citations&gt; &lt;/caseinfo:caseinfo&gt;
				</codeblock>
			</example>

			<section>
				<title>Changes</title>
				<p>2014-02-05: <ph id="change_20140205_SSX">Added instruction to handle PCDATA occuring between
							<sourcexml>case:courtnum/emph</sourcexml> and <sourcexml>ci:cite</sourcexml></ph></p>
				<p>2013-02-25: <ph id="change_20130225_DSF">Changed the mapping for <sourcexml>case:courtnum</sourcexml> so that
						it is dependent on whether a <sourcexml>ci:cite</sourcexml> child is present.</ph></p>
				<p>2013-02-20: <ph id="change_20130220_DSF">Added a note regarding the suppression of
							<sourcexml>@ln.user-displayed</sourcexml>.</ph></p>
			</section>
		</body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK01_CaseLaw\UK01_Rosetta_case.courtnum.dita  -->

	<!-- note that only one caseinfo:caseinfo should be created -->
	<xsl:template match="case:courtnum[ci:cite]">
		<!--  Original Target XPath:  caseinfo:caseinfo/ref:citations/ref:cite4thisresource   -->
		<caseinfo:caseinfo>
			<ref:citations xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/">
				<ref:cite4thisresource>
					<xsl:apply-templates select="@* | node()"/>
				</ref:cite4thisresource>
			</ref:citations>
		</caseinfo:caseinfo>
	</xsl:template>

	<xsl:template match="ci:cite[parent::case:courtnum]/ci:content">
		<!--  Original Target XPath:  caseinfo:caseinfo/caseinfo:docketnum   -->
		<!--<caseinfo:caseinfo>-->
			<caseinfo:docketnum>
				<xsl:apply-templates select="@* | node()"/>
			</caseinfo:docketnum>
		<!--</caseinfo:caseinfo>-->
	</xsl:template>

	<xsl:template match="case:courtnum[not(ci:cite)]">
		<caseinfo:docketnum>
			<xsl:apply-templates select="@* | node()"/>
		</caseinfo:docketnum>
	</xsl:template>	

	<!-- Note: If emph occurs as child of case:courtnum then emph should be suppressed from conversion. -->
	<xsl:template match="emph[parent::case:courtnum[not(ci:cite)]]">
				<xsl:apply-templates select="@* | node()"/>
	</xsl:template>

	<!-- Note: Any occurrences of the attribute @ln.user-displayed in case:courtnum should be suppressed. -->
	<xsl:template match="case:courtnum/@ln.user-displayed"/>

	<!-- And if nl is also occuring in Source that need to be suppressed from both target. -->
	<xsl:template match="nl[parent::case:courtnum]"/>

</xsl:stylesheet>
