<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
	xmlns:case="http://www.lexis-nexis.com/glp/case"
	xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo"
	xmlns:dc="http://purl.org/dc/elements/1.1/" version="2.0"
	exclude-result-prefixes="dita case docinfo xml">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/"
		id="Rosetta_case.content_case.casename_dc.title">
		<title><sourcexml>case:casename</sourcexml> to <targetxml>dc:title</targetxml>
			<lnpid>id-CA03-13244</lnpid></title>
		<body>
			<section>
				<title>Canada (CA03-Case Citator Only) use case for creating
						<targetxml>dc:title</targetxml> from
					<sourcexml>case:casename</sourcexml></title>
				<p>When <sourcexml>docinfo:selector</sourcexml> does not contain ("Statute" or
					"Statutes" or "Regulation" or "Regulations"), case insensitive, use the
					following instructions to create <targetxml>dc:title</targetxml>:</p>
				<p><sourcexml>case:casename</sourcexml> becomes <targetxml>dc:title</targetxml></p>
				<p>If there are two <sourcexml>case:casename</sourcexml> elements, one English
						(<sourcexml>xml:lang="en-CA"</sourcexml>) and one French
						(<sourcexml>xml:lang="fr-CA"</sourcexml>), create two
						<targetxml>dc:title</targetxml>. The first with
						<targetxml>xml:lang="en-CA"</targetxml>, the second with
						<targetxml>xml:lang="fr-CA"</targetxml>. Populate contents from the
					appropriate <sourcexml>case:casename</sourcexml>, see Example 2.</p>
			</section>
			<example>
				<title>Example 1: <sourcexml>case:casename</sourcexml> becomes
						<targetxml>dc:title</targetxml></title>
				<codeblock> &lt;case:casename&gt;PAUL MAGDER FURS LTD v. ONTARIO
					(AG)&lt;/case:casename&gt; </codeblock>
				<p>becomes</p>
				<codeblock> &lt;dc:title&gt;PAUL MAGDER FURS LTD v. ONTARIO (AG)&lt;/dc:title&gt;
				</codeblock>
			</example>
			<example>
				<title>Example 2: Creating multiple dc:title for bilingual jurisdiction</title>
				<codeblock> &lt;case:casename xml:lang="en-CA"&gt;SINGH v. CANADA (MIN OF EMPLOYMENT
					&amp;amp; IMMIGRATION)&lt;/case:casename&gt; &lt;case:casename
					xml:lang="fr-CA"&gt;Singh c. Canada (Ministre de l'Emploi et de
					l'Immigration)&lt;/case:casename&gt; </codeblock>
				<p>becomes</p>
				<codeblock> &lt;dc:title xml:lang="en-CA"&gt;SINGH v. CANADA (MIN OF EMPLOYMENT
					&amp;amp; IMMIGRATION)&lt;/dc:title&gt; &lt;dc:title xml:lang="fr-CA"&gt;Singh
					c. Canada (Ministre de l'Emploi et de l'Immigration)&lt;/dc:title&gt;
				</codeblock>
			</example>
			<section id="changes">
				<title>CA03 Changes</title>
				<p>2015-02-26: <ph id="change_20150226_sep">The <targetxml>dc:title</targetxml>
						created from <sourcexml>case:casename</sourcexml>. Addresses 4B item
						410.</ph></p>
				<p>2014-11-11: <ph id="change_20141111_csn">Added rule to not convert
						docinfo:doc-heading. Addresses R4.5 RFA #2031.</ph></p>
				<p>2014-10-06: <ph id="change_20141006_sep">Created the CA03 Case Citator specific
						part of this instruction. Addresses R4.5 RFA #1832.</ph></p>
			</section>
		</body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA03-Citator\Rosetta_case.casename-dc.title.dita  -->

<!-- Sudhanshu Srivastava edited on 23-May-2017. -->
	<xsl:template match="case:casename[not(//docinfo:selector = ('Statute','Statutes','Regulation','Regulations'))]">
		<!--  Original Target XPath:  dc:title   -->
		<dc:title>
			<xsl:apply-templates select="@* | node()"/>
		</dc:title>
	</xsl:template>
	<xsl:template match="@xml:lang">
		<!--  Original Target XPath:  dc:title   -->
		<xsl:attribute name="xml:lang">
			<xsl:value-of select="."/>
		</xsl:attribute>
	</xsl:template>
</xsl:stylesheet>
