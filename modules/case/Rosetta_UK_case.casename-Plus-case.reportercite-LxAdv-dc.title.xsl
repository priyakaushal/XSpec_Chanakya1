<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dig="http://www.lexis-nexis.com/glp/dig"
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case"
	xmlns:ci="http://www.lexis-nexis.com/ci" xmlns:dc="http://purl.org/dc/elements/1.1/"
	xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" version="2.0"
	exclude-result-prefixes="dita case ci">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/"
		id="Rosetta_UK_case.casename-Plus-case.reportercite-LxAdv-dc.title">
		<title>(UK01-UK04) <sourcexml>case:casename</sourcexml> and <sourcexml>case:reportercite</sourcexml> to
				<targetxml>dc:title</targetxml>
			<lnpid>id-CCCC-10531</lnpid></title>
		<body>
			<note>This instruction applies <u>only</u> to the streams UK01, UK02, UK03, and UK04.</note>
			<p>The target element <targetxml>doc:metadata/doc:docinfo/dc:metadata/dc:title</targetxml> is created by
				concatenating <sourcexml>case:casename</sourcexml>, followed by a space character, followed by
					<sourcexml>case:reportercite/ci:cite[@type="cite4thisdoc"]/ci:content</sourcexml>.</p>
			<p>The element <sourcexml>ci:content/citefragment</sourcexml> is a container and its content also becomes
					<targetxml>dc:title</targetxml>. That is, the <sourcexml>citefragment</sourcexml> start-tag and end-tag are
				dropped and its PCDATA content becomes part of <targetxml>dc:title</targetxml> along with the other content of
					<sourcexml>ci:content</sourcexml>. The attribute <sourcexml>citefragment/@searchtype</sourcexml> is
				dropped.</p>
			<note>Please see also the conversion instructions for the individual elements <sourcexml>case:casename</sourcexml>
				and <sourcexml>case:reportercite</sourcexml> given elsewhere in this section.</note>
			<example>
				<title>Source XML </title>
				<codeblock> &lt;!-- ... --&gt; &lt;case:body&gt; &lt;case:headnote&gt; &lt;case:info&gt;
					&lt;case:reportercite&gt; &lt;ci:cite type="cite4thisdoc"&gt; &lt;ci:case&gt; &lt;ci:caseref&gt;
					&lt;ci:reporter value="ALLER"/&gt; &lt;ci:volume num="2"/&gt; &lt;ci:edition&gt; &lt;ci:date year="2014"/&gt;
					&lt;/ci:edition&gt; &lt;ci:page num="330"/&gt; &lt;/ci:caseref&gt; &lt;/ci:case&gt; &lt;ci:content&gt;
					&lt;citefragment searchtype="CASE-CITE-REF"&gt;[2014] 2 All ER 330&lt;/citefragment&gt; &lt;/ci:content&gt;
					&lt;/ci:cite&gt; &lt;/case:reportercite&gt; &lt;case:casename&gt;Practice Direction (Access to Audio
					Recordings of Proceedings)&lt;/case:casename&gt; &lt;!-- ... --&gt; </codeblock>
				<title>Target XML</title>
				<codeblock> &lt;!-- ... --&gt; &lt;doc:metadata&gt; &lt;doc:docinfo doc-content-country="GB"&gt; &lt;!-- ...
					--&gt; &lt;dc:metadata&gt; &lt;!-- ... --&gt; &lt;dc:title&gt;Practice Direction (Access to Audio Recordings
					of Proceedings) [2014] 2 All ER 330&lt;/dc:title&gt; &lt;!-- ... --&gt; </codeblock>
			</example>
			<section>
				<title>Changes</title>
				<p>2015-11-20: <ph id="change_20151120_JCG">Added this topic. Requested in UXRs for these streams during
						November 2015.</ph></p>
			</section>
		</body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_UK_case.casename-Plus-case.reportercite-LxAdv-dc.title.dita  -->
	<xsl:template name="dc.title">
		<dc:title>
			<xsl:choose>
				<xsl:when test="$streamID='UK03'">
					<xsl:value-of select="concat(/DIGESTDOC/dig:body/descendant::case:casename, ' ',/DIGESTDOC/dig:body/dig:info/dig:cite/ci:cite[@type='cite4thisdoc']/ci:content)"/>		
				</xsl:when>
				<xsl:otherwise>
					<xsl:value-of select="concat(/CASEDOC/case:body/case:headnote/case:info/case:casename, ' ',/CASEDOC/case:body/case:headnote/case:info/case:reportercite/ci:cite[@type='cite4thisdoc']/ci:content)"/>		
				</xsl:otherwise>
			</xsl:choose>
			
			
		</dc:title>
	</xsl:template>


</xsl:stylesheet>
