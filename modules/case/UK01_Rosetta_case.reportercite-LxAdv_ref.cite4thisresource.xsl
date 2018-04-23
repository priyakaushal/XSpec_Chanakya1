<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
	xmlns:case="http://www.lexis-nexis.com/glp/case"
	xmlns:ci="http://www.lexis-nexis.com/ci" 
	xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/"
	version="2.0" exclude-result-prefixes="dita case ci">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/"
		id="UK01_Rosetta_case.reportercite-LxAdv_ref.cite4thisresource">
		<title>case:reportercite <lnpid>id-UK01-27039</lnpid></title>
		<body>
			<section>
				<p>
					<sourcexml>case:reportercite</sourcexml> becomes <targetxml>ref:citations</targetxml>. Create
						<targetxml>ref:cite4thisresource</targetxml> with attribute <targetxml>@citetype</targetxml> defines the
					type of citation, it should be set to "reporter". <note>For handling of citation markup; kindly refer to <xref
							href="../../common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">ci:cite</xref> instructions under General
						Markup Section.</note>
				</p>
			</section>

			<example>
				<title>Source XML</title>
				<codeblock> &lt;case:info&gt; &lt;case:reportercite&gt; &lt;ci:cite type="cite4thisdoc"&gt; &lt;ci:case&gt;
					&lt;ci:caseref&gt; &lt;ci:reporter value="ALLER"/&gt; &lt;ci:volume num="1"/&gt; &lt;ci:edition&gt;
					&lt;ci:date year="1936"/&gt; &lt;/ci:edition&gt; &lt;ci:page num="217"/&gt; &lt;/ci:caseref&gt;
					&lt;/ci:case&gt; &lt;ci:content&gt; &lt;citefragment searchtype="CASE-CITE-REF"&gt;[1936] 1 All ER
					217&lt;/citefragment&gt; &lt;/ci:content&gt; &lt;/ci:cite&gt; &lt;/case:reportercite&gt; &lt;/case:info&gt;
				</codeblock>
			</example>

			<example>
				<title>Target XML</title>
				<codeblock> &lt;caseinfo:caseinfo&gt; &lt;ref:citations&gt; &lt;ref:cite4thisresource citetype="reporter"&gt;
					&lt;lnci:cite&gt; &lt;lnci:case&gt; &lt;lnci:caseref&gt; &lt;lnci:reporter value="ALLER"/&gt; &lt;lnci:volume
					num="1"/&gt; &lt;lnci:edition&gt; &lt;lnci:date year="1936"/&gt; &lt;/lnci:edition&gt; &lt;lnci:page
					num="217"/&gt; &lt;/lnci:caseref&gt; &lt;/lnci:case&gt; &lt;lnci:content&gt;[1936] 1 All ER
					217&lt;/lnci:content&gt; &lt;/lnci:cite&gt; &lt;/ref:cite4thisresource&gt; &lt;/ref:citations&gt;
					&lt;/caseinfo:caseinfo&gt; </codeblock>
			</example>

			<section>
				<p> Text (PCDATA) occuring in between <sourcexml>case:reportercite</sourcexml> and
						<sourcexml>ci:cite</sourcexml> should be moved inside a <targetxml>connector</targetxml> element and put in
					between multiple <targetxml>ref:cite4thisresource</targetxml> elements if needed. </p>
			</section>

			<example>
				<title>Source XML</title>
				<codeblock> &lt;case:reportercite&gt; &lt;ci:cite type="cite4thisdoc"&gt; &lt;ci:case&gt; &lt;ci:caseref&gt;
					&lt;ci:reporter value="RPC" /&gt; &lt;ci:edition&gt; &lt;ci:date year="1984" /&gt; &lt;/ci:edition&gt;
					&lt;ci:page num="239" /&gt; &lt;/ci:caseref&gt; &lt;/ci:case&gt; &lt;ci:content&gt; &lt;citefragment
					searchtype="CASE-CITE-REF"&gt;[1984] RPC 239&lt;/citefragment&gt; &lt;/ci:content&gt; &lt;/ci:cite&gt; ,
					[1981] FSR 33, 1980 Y No 323 (Transcript:Marten Meredith) &lt;/case:reportercite&gt; </codeblock>
			</example>

			<example>
				<title>Target XML</title>
				<codeblock> &lt;ref:citations&gt; &lt;ref:cite4thisresource citetype="reporter"&gt; &lt;lnci:cite&gt;
					&lt;lnci:case&gt; &lt;lnci:caseref&gt; &lt;lnci:reporter value="RPC" /&gt; &lt;lnci:edition&gt; &lt;lnci:date
					year="1984" /&gt; &lt;/lnci:edition&gt; &lt;lnci:page num="239" /&gt; &lt;/lnci:caseref&gt; &lt;/lnci:case&gt;
					&lt;lnci:content&gt;[1984] RPC 239&lt;/lnci:content&gt; &lt;/lnci:cite&gt; &lt;/ref:cite4thisresource&gt;
					&lt;connector&gt;, [1981] FSR 33, 1980 Y No 323 (Transcript:Marten Meredith)&lt;/connector&gt;
					&lt;/ref:citations&gt; </codeblock>
			</example>

		</body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK01_CaseLaw\UK01_Rosetta_case.reportercite-LxAdv_ref.cite4thisresource.dita  -->

	<xsl:template match="case:reportercite">
		<!--  Original Target XPath:  ref:citations   -->
		<ref:citations>
			<xsl:apply-templates select="text()[following-sibling::ci:cite]"/>
			<ref:cite4thisresource citetype="reporter">
				<xsl:apply-templates select="@* | *"/>
			</ref:cite4thisresource>
			<xsl:apply-templates select="text()[preceding-sibling::ci:cite]"/>
		</ref:citations>
	</xsl:template>

	<xsl:template match="text()[string-length(normalize-space(.)) &gt; 0][parent::case:reportercite]"><!--  or following-sibling::ci:cite -->
		<!--  Original Target XPath:  connector   -->
		<connector xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
			<xsl:value-of select="."/>
		</connector>
	</xsl:template>

</xsl:stylesheet>
