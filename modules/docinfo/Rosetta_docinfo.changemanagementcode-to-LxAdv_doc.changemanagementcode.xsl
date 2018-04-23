<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" version="2.0" exclude-result-prefixes="dita docinfo">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="case-casename">
	<title>docinfo:changemanagementcode to doc:changemanagementcode <lnpid>id-CA03-13243</lnpid></title>
	<body>
		<section>
			<title>Instructions</title>
			<note>There are two basic scenarios: (1) convert <sourcexml>docinfo:changemanagementcode</sourcexml> when
				present in source data; and (2) create placeholder <targetxml>doc:changemanagementcode</targetxml>
			when source data does not have a changemanagementcode.</note>
			<p>(1) <sourcexml>docinfo:changemanagementcode</sourcexml> becomes <targetxml>doc:changemanagementcode</targetxml>.</p>
			<p>The three primary attributes are handled as follows:
				<ul>
					<li><targetxml>@codecreationdate</targetxml> is stamped with the date of the conversion, conversiondate</li>
					<li><targetxml>@codescheme</targetxml> is hard coded to a string value of "docid_major-change-date"</li>
					<li><targetxml>@codevalue</targetxml> is the concatenation of the <sourcexml>docinfo:doc-id</sourcexml> + "_" + the major change date from source attribute <sourcexml>@codecreationdate</sourcexml></li>
			</ul></p>
			<p>Any other attributes are copied over exactly, with the exception of <sourcexml>@id</sourcexml>, which becomes <targetxml>@xml:id</targetxml>.</p>
			<p>(2) <targetxml>doc:changemanagementcode</targetxml> is created when <sourcexml>docinfo:changemanagementcode</sourcexml> does
				not exist in source data.</p>
			<p>The three primary attributes are handled as follows:
				<ul>
					<li><targetxml>@codecreationdate</targetxml> is stamped with the date of the conversion, conversiondate</li>
					<li><targetxml>@codescheme</targetxml> is hard coded to a string value of "docid_major-change-date"</li>
					<li><targetxml>@codevalue</targetxml> is the <sourcexml>docinfo:doc-id</sourcexml></li>
			</ul></p>
		</section>
		<example>
			<title>Source XML</title>
			<codeblock>
&lt;docinfo:doc-id&gt;00054929A2&lt;/docinfo:doc-id&gt;
				...
&lt;docinfo:changemanagementcode codecreationdate="2014-02-09" codescheme="CA03_Editor_1F78" codevalue="Major_Change_Section_1F"/&gt;
				</codeblock>
			<title>Target XML</title>
			<codeblock>
&lt;doc:changemanagementcode codecreationdate="2015-01-20" codescheme="docid_major-change-date" codevalue="00054929A2_2014-02-09"/&gt; 
				</codeblock>
		</example>
		<section>
			<title>Changes</title>
			<p>2015-01-29: <ph id="change_20150129_sep">Added note and instruction to create <targetxml>doc:changemanagementcode</targetxml> when no <sourcexml>docinfo:changemanagementcode</sourcexml> exists in source. R4.5 RFA #2163.</ph></p>
			<p>2015-01-20: <ph id="change_20150120_sep">Updated target attributes based on results of meeting with Jessica and LBU comments. R4.5 RFA #2140.</ph></p>
			<p>2014-10-03: <ph id="change_20141003_sep">Created this instruction. QuickCite RFA #58.</ph></p>
		</section>
	</body>
	</dita:topic>

	
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA03-Citator\Rosetta_docinfo.changemanagementcode-to-LxAdv_doc.changemanagementcode.dita  -->
<!-- Sudhanshu Srivastava - Initially drafted on 23-May-2017.-->
	<xsl:template match="docinfo:changemanagementcode">
		<!--  Original Target XPath:  doc:changemanagementcode   -->
		<doc:changemanagementcode>
			<xsl:apply-templates select="@* | node()"/>
		</doc:changemanagementcode>
	</xsl:template>
	
	<xsl:template match="docinfo:changemanagementcode/@codecreationdate">
		<xsl:attribute name="codecreationdate">
			<xsl:value-of select="."/>
		</xsl:attribute>
	</xsl:template>
	
	<xsl:template match="docinfo:changemanagementcode/@codescheme">
		<xsl:attribute name="codescheme">
			<xsl:text>docid_major-change-date</xsl:text>
		</xsl:attribute>
	</xsl:template>
	
	<xsl:template match="docinfo:changemanagementcode/@codevalue">
		<xsl:attribute name="codevalue">
			<xsl:apply-templates select="parent::docinfo:changemanagementcode/preceding-sibling::docinfo:doc-id" mode="codevalue"/>
			<xsl:text>_</xsl:text>
			<xsl:apply-templates select="parent::docinfo:changemanagementcode/@codecreationdate"></xsl:apply-templates>
		</xsl:attribute>
	</xsl:template>
	
	<xsl:template match="docinfo:doc-id" mode="codevalue">
		<!--  Original Target XPath:  @xml:id   -->
		<xsl:value-of select="."/>
	</xsl:template>
</xsl:stylesheet>