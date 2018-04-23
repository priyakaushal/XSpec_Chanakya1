<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet	version="2.0" 
						xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
						xmlns:dita="http://dita.oasis-open.org/architecture/2005/"

						xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo"

						exclude-result-prefixes="dita docinfo">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="common_target_xml.lang">
		<title>
			<sourcexml>docinfo:doc-lang</sourcexml> and <sourcexml>docinfo:doc-country</sourcexml> to <targetxml>@xml:lang</targetxml> and <targetxml>@xml:ID</targetxml>
			<lnpid>id-CCCC-10294</lnpid>
		</title>
		<body>
			<section>
				<title>xml:lang Instructions</title>
				<p>The combination of <sourcexml>docinfo/docinfo:doc-lang[@lang]</sourcexml> and <sourcexml>docinfo/docinfo:doc-country[@iso-cc]</sourcexml> becomes
                        <targetxml>{target.root.element}[@xml:lang]</targetxml>
				</p>
			</section>

			<example>
				<title>Source XML</title>
				<codeblock> &lt;docinfo:doc-lang lang="en"/&gt; &lt;docinfo:doc-country iso-cc="NZ"/&gt; </codeblock>
			</example>

			<example>
				<title>Target XML</title>
				<codeblock> &lt;{target.root.elm} xml:lang="en-NZ" ...&gt; </codeblock>
			</example>

			<example>
				<title>Source XML</title>
				<codeblock> &lt;docinfo:doc-lang lang="en"/&gt; &lt;docinfo:doc-country iso-cc="GB"/&gt; </codeblock>
			</example>

			<example>
				<title>Target XML</title>
				<codeblock> &lt;{target.root.elm} xml:lang="en-GB" ...&gt; </codeblock>
			</example>

			<section>
				<title>xml:id Instructions</title>
				<p>The attribute <targetxml>xml:id</targetxml> is an W3C standard with a datatype of "ID". Outlined below are some of the cases where the source ID values need to be adjusted to
                    conform to the <targetxml>xml:id</targetxml> standard:</p>
			</section>

			<example>
				<title>Colon ":" in ID value</title>
				<p> When a colon is found within an XML ID replace the colon ":" with an underscore "_" as shown below:</p>
				<codeblock> &lt;level id="NZSTATUTES_ACTS-A4.SGM_PARA-1925A41:1908A96-EDITORIAL-NOTES" leveltype="comm.chap"&gt; </codeblock>
			</example>

			<example>
				<title>Target XML</title>
				<codeblock> &lt;primlaw:level id="NZSTATUTES_ACTS-A4.SGM-PARA-1925A41_1908A96-EDITORIAL-NOTES" leveltype="chapter"&gt; </codeblock>
			</example>

			<example>
				<title>ID value begins with number</title>
				<p>When attribute XML ID value begins with number, then add an underscore "_" as shown below:</p>
				<codeblock> &lt;level id="475:B005_V2:H1" leveltype="chapter" subdoc="false" toc-caption="PART III THE ADMINISTRATION OF ASSETS"&gt; </codeblock>
			</example>

			<example>
				<title>Target XML</title>
				<codeblock> &lt;seclaw:level xml:id="_475_B005_V2_H1" leveltype="chapter" includeintoc="false" alternatetoccaption="PART III THE ADMINISTRATION OF ASSETS"&gt; </codeblock>
			</example>

			<note>
				<p>The restrictions and required modifications for <targetxml>xml:id</targetxml> also apply to the following situations:</p>
				<ul>
					<li>The mapping of <sourcexml>refpt/@id</sourcexml> to <targetxml>ref:anchor/@id</targetxml>
					</li>
					<li>The mapping of <sourcexml>footnote/@fntoken</sourcexml> to <targetxml>footnote/ref:anchor/@id</targetxml>
					</li>
					<li>The mapping <sourcexml>fnr/@fnrtoken</sourcexml> to <targetxml>footnote-ref/ref:anchor/@id</targetxml>
					</li>
					<li>The mapping of <sourcexml>fnr/@fntoken</sourcexml> to <targetxml>foonote-ref/@anchoridref</targetxml>
					</li>
				</ul>
			</note>

			<section>
				<title>Changes</title>
				<p>2013-07-16: <ph id="change_20130716_SK">Instruction narrative edited for language; no changes to mappings, no impact to stylesheets.</ph>
				</p>
				<p>2013-04-19: <ph id="change_20130419_DSF">Added note about applicability of restrictions and required modifications for <targetxml>xml:id</targetxml> to other scenarios.</ph>
				</p>
				<p>2012-12-13: Instruction and example update where "ID value begins with number".</p>
				<p>2012-10-05: Example added for UK content.</p>
				<p>2012-09-27: Added information for the handling of XML:ID</p>
				<p>2012-05-23: Added information for the handling of XML:ID</p>
				<p>2011-12-15: Created.</p>
			</section>
		</body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_docinfo.doc-lang-and-doc-country-LxAdv-ROOT_xml.lang.dita  -->

	<!-- WPK: this doc-country template is correct and tested -->
	<!--<xsl:template name="parse_id">
		<!-\- This template returns valid ID data type value.  -\->
		<xsl:param name="attr_value" select="."/>
		<xsl:if test="contains('0123456789', substring($attr_value, 1, 1))">
			<xsl:text>_</xsl:text>
		</xsl:if>
		<xsl:value-of select="translate($attr_value, ':', '_')"/>
	</xsl:template>-->

	<!-- WPK: this template is correct and tested -->
	<!--<xsl:template match="@id">
		<!-\- This template creates @xml:id target from @id source.  For any non-specific cases of @id.
                    For specific other use cases of @id, use more specific match, such as "refpt/@id".  -\->
		<xsl:attribute name="xml:id">
			<xsl:call-template name="parse_id">
				<xsl:with-param name="attr_value" select="."/>
			</xsl:call-template>
		</xsl:attribute>
	</xsl:template>-->
	
	<!-- Vikas Rohilla : Updated the template Removed the double slash	-->
	
	<!-- 2017-10-04 - MDS:  This should not be used.  Instead use the xml_lang named template -->
<!--	<xsl:template name="xml_lang_HK">
		<!-\- This template creates @xml:lang from doc-lang and doc-country only for HK stream-\->
		<xsl:attribute name="xml:lang" select="concat(docinfo/docinfo:doc-lang/@lang, '-', docinfo/docinfo:doc-country/@iso-cc)"/>
	</xsl:template>-->

	<!-- WPK: this doc-lang template is correct and tested -->
	<xsl:template match="docinfo:doc-lang/@lang">
		<xsl:value-of select="."/>
	</xsl:template>

	<!-- WPK: this doc-country template is correct and tested -->
	<xsl:template match="docinfo:doc-country/@iso-cc">
		<xsl:value-of select="."/>
	</xsl:template>

</xsl:stylesheet>