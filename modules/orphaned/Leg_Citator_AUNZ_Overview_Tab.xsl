<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:source_cttr="http://www.lexis-nexis.com/glp/cttr"
	xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" xmlns:cttr="urn:x-lexisnexis:content:citator:sharedservices:1"
	xmlns:primlawhist="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-history/1/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0"
	exclude-result-prefixes="dita source_cttr docinfo">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Leg_Citator_AUNZ_Overview_Tab">
		<title>Overview Tab Content <lnpid>id-AU20-22231</lnpid></title>

		<body>
			<p>This Topic is for documents identified as "Overview" in the source document via <sourcexml>docinfo:doc-id</sourcexml></p>

			<codeblock> &lt;CITATORDOC xmlns:comm="http://www.lexis-nexis.com/glp/comm" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:html="http://www.w3.org/1999/xhtml"
				xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" xmlns:gather="http://www.lexisnexis.com.au/ns/gather" xmlns:cttr="http://www.lexis-nexis.com/glp/cttr"
				xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:ci="http://www.lexis-nexis.com/ci" xmlns:leg="http://www.lexis-nexis.com/glp/leg"&gt; &lt;docinfo&gt;
				&lt;docinfo:doc-heading&gt;Overview Tab for CTH_ACT_1995-57&lt;/docinfo:doc-heading&gt; &lt;docinfo:doc-id&gt;LCIT-CTH_ACT_1995-57-overview&lt;/docinfo:doc-id&gt; </codeblock>



			<section>
				<title>Changes to Overview Tab Content Prior to 2015-11-16 (newer changes shown at end of sections they were made in):</title>
				<p>2015-10-28 - MLV: <ph id="change_20151028-2_mlv">Modified instructions View All Cases link.</ph></p>
				<p>2015-10-28 - MLV: <ph id="change_20151028-1_mlv">Modified instructions and example for mapping <sourcexml>cttr:annotsummary display-name="By Court" id="OI20"</sourcexml> and
							<sourcexml>cttr:annotsummary display-name="By Court" id="OI21"</sourcexml> to <targetxml>primlawhist:primlawhist xml:id="ref-OI20"</targetxml> and
							<targetxml>primlawhist:primlawhist xml:id="ref-OI21"</targetxml> respectively.</ph></p>
				<p>2015-10-16 - MLV: <ph id="change_20151016-7_mlv">Modified instructions for Penalty.</ph></p>
				<p>2015-10-16 - MLV: <ph id="change_20151016-6_mlv">Removed instructions for at a glance. No longer applicable</ph>.</p>
				<p>2015-10-09 - MLV: <ph id="change_20151009-1_mlv">All items related to refsection within overview tab have been moved to location within
						cttr:head/cttr:citedstatlaw[@iscodified="false"].</ph></p>

				<p>2015-09-22 - MLV: <ph id="change_20150922-8_mlv">Added instructions and example for <sourcexml>cttr:annotations/heading/note/lnlink</sourcexml> to
							<targetxml>p/text/ref:crossreference</targetxml></ph>. Per RFA #71</p>
				<p>2015-09-22 - MLV: <ph id="change_20150922-7_mlv">Added instructions and example for <sourcexml>cttr:annotations/heading/note/remotelink@href</sourcexml> to
							<targetxml>p/text/ref:lnlink@service="URL"</targetxml></ph>. Per RFA #70 </p>

				<p>2015-08-28 - MLV: <ph id="change_20150828-2_mlv">Modified mapping of <sourcexml>cttr:annotsummary[@id="OI20"]</sourcexml> to remove ambiguous id attribute value.</ph> Per RFA#
					64.</p>
				<p>2015-08-18 - MLV: <ph id="change_20150818-2_MLV">Modified examples of mapping to <targetxml>ref:lnlink</targetxml> for consistency in output.</ph> Per RFA 62.</p>
				<p>2015-08-13 - MLV: <ph id="change_20150813-6_mlv">Modified instructions for handling @id output for OI20 and OI21 with examples.</ph> Per RFA 64.</p>
				<p>2015-08-13 - MLV: <ph id="change_20150813-5_mlv">Removed typo from instructions in section relateded to OI19 Cases Activity by Provision.</ph> Per RFA 63.</p>
				<p>2015-08-13 - MLV: <ph id="change_20150813-1_mlv">Added instruction and example for mapping <sourcexml>cttr:annotations id="OI12" with l@id="OI12B"/li/p/text/lnlink</sourcexml> maps
						to <targetxml>cttr:consideredlegis/cttr:legisinfo/cttr:citations/ref:crossreference</targetxml>.</ph> Per RFA #59</p>

				<p>2015-07-29 - MLV: <ph id="change_20150729-7_mlv">Added global instruction for all <targetxml>cttr:refsection</targetxml> include a child element <targetxml>ref:anchor</targetxml>
						using a 'ref-' prefix with the source id attribute value.</ph></p>

				<p>2015-07-29 - MLV: <ph id="change_20150729-4_mlv">Modified mapping for OI19 Cases Activity by Provision.</ph> Per RFA #16</p>
				<p>2015-07-29 - MLV: <ph id="change_20150729-3_mlv">Modified mapping for OI21 Cases Activity by Provision.</ph> Per RFA #15</p>

				<p>2015-07-29 - MLV: <ph id="change_20150729-2_mlv">Modified mapping for <sourcexml>note@xml:id="OI12A"</sourcexml> to a billwarning.</ph></p>

				<p>2015-07-28 - MLV: <ph id="change_20150728-2_mlv">Modified examples for <sourcexml>lnlink@refpt</sourcexml> mapping to <targetxml>ref:crossreference</targetxml> markup to be
						consistent.</ph> Per RFA #57.</p>

				<p>2015-06-16 - MLV: <ph id="change_20150616-2_mlv">Added mapping for <sourcexml>cttr:annotations@id="OP5NZ"</sourcexml> and containing nested <sourcexml>note/note</sourcexml>. Per RFA
						#50 and #51.</ph></p>


				<p>2015-06-10 - MLV: <ph id="change_20150610-3_mlv">Added mapping for a <sourcexml>p/text/inlineobject</sourcexml> which follows a <sourcexml>p/text</sourcexml> with an instrument name
						such as "Act No 2 of 1995", add a single space to the text and then place the <targetxml>ref:inlineobject</targetxml> immediately following the instrument name. The resulting
						output would appear as <sourcexml>primlawhist:histitem/bodytext/p/text - "instrument name" - ref:inlineobject</sourcexml>. Per RFA #48.</ph></p>

				<p>2015-05-27: MLV - <ph id="change_20150527-2_mlv">Added mapping for <sourcexml>note/[@id="OI14"]/note/[id="OI16"]</sourcexml> per RFA #42.</ph></p>
				<p>2015-04-21: MLV - <ph id="change_20150421-1_mlv">Added instructions for mapping <sourcexml>cttr:annotations[@id="OP26"]</sourcexml> to 'Cases tab'.</ph></p>
				<p>2015-04-21: MLV - <ph id="change_20150421-2_mlv">Added instructions for mapping <sourcexml>cttr:annotations[@id="OP3"]</sourcexml> to
							<targetxml>cttr:refsection[@xml:id="refsection-OP3"]</targetxml>
					</ph></p>
				<p>2015-04-21: MLV - <ph id="change_20150421-4_mlv">Added instructions for mapping <sourcexml>cttr:annotations[@id="OP5"] </sourcexml> to
							<targetxml>cttr:refsection[@xml:id="refsection-OP5"]</targetxml>
					</ph></p>
				<p>2015-04-21: MLV - <ph id="change_20150421-5_mlv">Added instructions for mapping <sourcexml>cttr:annotations[@id="OI17"] and OI17.1</sourcexml> to
							<targetxml>cttr:refsection[@xml:id="refsection-OI17"]</targetxml></ph></p>
				<p>2015-04-21: MLV - <ph id="change_20150421-6_mlv">Added instructions for mapping <sourcexml>OP15</sourcexml> - Remove text: "In Force' from content of note/p/text in target.</ph></p>


				<p>2014-04-14: MLV - <ph id="change_20140414-1_mlv">Added instructions for mapping OP23 References Ribbon</ph></p>
				<p>2014-03-13: MLV - <ph id="change_20140313-1_mlv">Added instructions for mapping non-standard cttr:annotation/heading/note to cttr:refsection/primlawhist:histitem</ph>.</p>
				<p>2014-01-13 - MLV: Added instruction for handling mapping of <sourcexml>cttr:annot/leg:info/note/p</sourcexml> for cttr:annot/heading/title/text()="Replacing" AND
					leg:info/leg:officialname and leg:info/note.</p>

			</section>



		</body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU20_Legislative_Citator\Leg_Citator_AUNZ_Overview_Tab.dita  -->
	

	<xsl:template match="docinfo:doc-id">
		<!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  primlawhist:primlawhistxml:id="ref-OI20"   -->
		<!--  Could not determine target element or attribute name:  <primlawhist:primlawhistxml:id="ref-OI20">  -->
		<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </primlawhist:primlawhistxml:id="ref-OI20">  -->

	</xsl:template>

	<xsl:template match="source_cttr:annotsummary display-name=&#34;By Court&#34; id=&#34;OI20&#34;">
		<!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  primlawhist:primlawhistxml:id="ref-OI20"   -->
		<!--  Could not determine target element or attribute name:  <primlawhist:primlawhistxml:id="ref-OI20">  -->
		<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </primlawhist:primlawhistxml:id="ref-OI20">  -->

	</xsl:template>

	<xsl:template match="source_cttr:annotsummary display-name=&#34;By Court&#34; id=&#34;OI21&#34;">
		<!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  primlawhist:primlawhistxml:id="ref-OI20"   -->
		<!--  Could not determine target element or attribute name:  <primlawhist:primlawhistxml:id="ref-OI20">  -->
		<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </primlawhist:primlawhistxml:id="ref-OI20">  -->

	</xsl:template>

	<xsl:template match="source_cttr:annotations/heading/note/lnlink">
		<!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  p/text/ref:crossreference   -->
		<p>
			<text>
				<ref:crossreference>
					<xsl:apply-templates select="@* | node()"/>
				</ref:crossreference>
			</text>
		</p>

	</xsl:template>

	<xsl:template match="source_cttr:annotations/heading/note/remotelink@href">
		<!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  p/text/ref:lnlink@service="URL"   -->
		<p>
			<text>
				<ref:lnlink>
					<xsl:apply-templates select="@* | node()"/>
				</ref:lnlink>
			</text>
		</p>

	</xsl:template>

	<xsl:template match="source_cttr:annotsummary[@id=&#34;OI20&#34;]">
		<!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  ref:lnlink   -->
		<ref:lnlink>
			<xsl:apply-templates select="@* | node()"/>
		</ref:lnlink>

	</xsl:template>

	<xsl:template match="source_cttr:annotations id=&#34;OI12&#34; with l@id=&#34;OI12B&#34;/li/p/text/lnlink">
		<!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:consideredlegis/cttr:legisinfo/cttr:citations/ref:crossreference   -->
		<cttr:consideredlegis>
			<cttr:legisinfo>
				<cttr:citations>
					<ref:crossreference>
						<xsl:apply-templates select="@* | node()"/>
					</ref:crossreference>
				</cttr:citations>
			</cttr:legisinfo>
		</cttr:consideredlegis>

	</xsl:template>

	<xsl:template match="note@xml:id=&#34;OI12A&#34;">
		<!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  ref:crossreference   -->
		<ref:crossreference>
			<xsl:apply-templates select="@* | node()"/>
		</ref:crossreference>

	</xsl:template>

	<xsl:template match="lnlink@refpt">
		<!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  ref:crossreference   -->
		<ref:crossreference>
			<xsl:apply-templates select="@* | node()"/>
		</ref:crossreference>

	</xsl:template>

	<xsl:template match="source_cttr:annotations@id=&#34;OP5NZ&#34;">
		<!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  ref:inlineobject   -->
		<ref:inlineobject>
			<xsl:apply-templates select="@* | node()"/>
		</ref:inlineobject>

	</xsl:template>

	<xsl:template match="note/note">
		<!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  ref:inlineobject   -->
		<ref:inlineobject>
			<xsl:apply-templates select="@* | node()"/>
		</ref:inlineobject>

	</xsl:template>

	<xsl:template match="p/text/inlineobject">
		<!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  ref:inlineobject   -->
		<ref:inlineobject>
			<xsl:apply-templates select="@* | node()"/>
		</ref:inlineobject>

	</xsl:template>

	<xsl:template match="p/text">
		<!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  ref:inlineobject   -->
		<ref:inlineobject>
			<xsl:apply-templates select="@* | node()"/>
		</ref:inlineobject>

	</xsl:template>

	<xsl:template match="primlawhist:histitem/bodytext/p/text - &#34;instrument name&#34; - ref:inlineobject">
		<!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:refsection[@xml:id="refsection-OP3"]   -->
		<cttr:refsection>
			<xsl:apply-templates select="@* | node()"/>
		</cttr:refsection>

	</xsl:template>

	<xsl:template match="note/[@id=&#34;OI14&#34;]/note/[id=&#34;OI16&#34;]">
		<!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:refsection[@xml:id="refsection-OP3"]   -->
		<cttr:refsection>
			<xsl:apply-templates select="@* | node()"/>
		</cttr:refsection>

	</xsl:template>

	<xsl:template match="source_cttr:annotations[@id=&#34;OP26&#34;]">
		<!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:refsection[@xml:id="refsection-OP3"]   -->
		<cttr:refsection>
			<xsl:apply-templates select="@* | node()"/>
		</cttr:refsection>

	</xsl:template>

	<xsl:template match="source_cttr:annotations[@id=&#34;OP3&#34;]">
		<!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:refsection[@xml:id="refsection-OP3"]   -->
		<cttr:refsection>
			<xsl:apply-templates select="@* | node()"/>
		</cttr:refsection>

	</xsl:template>

	<xsl:template match="source_cttr:annotations[@id=&#34;OP5&#34;]  ">
		<!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:refsection[@xml:id="refsection-OP5"]   -->
		<cttr:refsection>
			<xsl:apply-templates select="@* | node()"/>
		</cttr:refsection>

	</xsl:template>

	<xsl:template match="source_cttr:annotations[@id=&#34;OI17&#34;] and OI17.1">
		<!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:refsection[@xml:id="refsection-OI17"]   -->
		<cttr:refsection>
			<xsl:apply-templates select="@* | node()"/>
		</cttr:refsection>

	</xsl:template>

	<xsl:template match="OP15">
		<!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->
		<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

	<xsl:template match="source_cttr:annot/leg:info/note/p">
		<!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->
		<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

</xsl:stylesheet>
