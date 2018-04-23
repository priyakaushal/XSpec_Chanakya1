<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:comm="http://www.lexis-nexis.com/glp/comm" xmlns:source_cttr="http://www.lexis-nexis.com/glp/cttr" xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" xmlns:cttr="urn:x-lexisnexis:content:citator:sharedservices:1" xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita case comm source_cttr docinfo">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Leg_Citator_AUNZ_Analytics_Tab">
  <title>Analytics Tab Content <lnpid>id-AU20-22228</lnpid></title>

  <body>
    <p>This Topic is for documents identified as "Analytics" in the source document via
        <sourcexml>docinfo:doc-id</sourcexml></p>

    <codeblock>
      
&lt;CITATORDOC xmlns:comm="http://www.lexis-nexis.com/glp/comm"
            xmlns:xs="http://www.w3.org/2001/XMLSchema"
            xmlns:html="http://www.w3.org/1999/xhtml"
            xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo"
            xmlns:gather="http://www.lexisnexis.com.au/ns/gather"
            xmlns:cttr="http://www.lexis-nexis.com/glp/cttr"
            xmlns:case="http://www.lexis-nexis.com/glp/case"
            xmlns:ci="http://www.lexis-nexis.com/ci"
            xmlns:leg="http://www.lexis-nexis.com/glp/leg"&gt;
            &lt;docinfo&gt;
      &lt;docinfo:doc-heading&gt;Analytics Tab for CTH_ACT_1995-57&lt;/docinfo:doc-heading&gt;
      &lt;docinfo:doc-id&gt;LCIT-CTH_ACT_1995-57-analytics&lt;/docinfo:doc-id&gt;      
      
    </codeblock>




<section>
	<title>Changes to Analytics Tab Content Prior to 2015-11-16 (newer changes shown at end of sections they were made in):</title>
  
  <p>2015-10-16 - MLV: <ph id="change_20151016-5_mlv">Modified mapping for all refsections - <targetxml>ref:anchor for newsletters textbooks dictionaries</targetxml>.</ph></p>
  <p>2015-10-16 - MLV: <ph id="change_20151016-4_mlv">Modified mapping for <targetxml>citingpub</targetxml> for practical guidance, common format - same as Halsburys, Commentary, etc.</ph></p>  
  <p>2015-10-16 - MLV: <ph id="change_20151016-3_mlv">Modified mapping for <targetxml>citingpub</targetxml> with Halsbury's Laws</ph></p>
  <p>2015-10-16 - MLV: <ph id="change_20151016-2_mlv">Modified mapping for "view legislation" link in head to <targetxml>doc:docinfo/doc:related-content/doc:related-content-link/ref:lnlink</targetxml></ph></p>
  <p>2015-09-28 - MLV: <ph id="change_20150928-1_mlv">Added instructions for handling <sourcexml>heading/subtitle</sourcexml> by adding parentheses</ph>. Per RFA #67.</p> 
  
  <p>2015-09-22 - MLV: <ph id="change_20150922-12_mlv">Added instructions and examples for handling <targetxml>cttr:refsection</targetxml> when source
  does not include a source id value</ph>. Per RFA App Team #19</p>
  <p>2015-09-22 - MLV: <ph id="change_20150922-6_mlv">&gt;Added instructions and example for mapping <sourcexml>cttr:annotations/cttr:annot/heading/title/lnlink</sourcexml></ph>. Per RFA #69 </p>
  <p>2015-09-22 - MLV: <ph id="change_20150922-4_mlv">Added instructions and example for mapping <sourcexml>comm:citations/h/lnlink</sourcexml></ph>. Per RFA #68.</p>
  <p>2015-09-22 - MLV: <ph id="change_20150922-3_mlv">Modified instruction for LPG content, <sourcexml>subtitle</sourcexml> becomes 
  appended following <targetxml>title</targetxml> content after adding space before.</ph>. Per RFA #67.</p>
  <p>2015-09-22 - MLV: <ph id="change_20150922-2_mlv">Modified instruction to place unique anchor id for LPG content <targetxml>ref:anchor@id="ref-LPG-analytical"</targetxml></ph>.</p>
  <p>2015-08-28 - MLV: <ph id="change_20150828-4_mlv">Added instructions for handling isbn and author information within a textbooks <sourcexml>cttr:annotations@annotgroup="BOO</sourcexml> 
    and minor modification to <sourcexml>cttr:annotations@annotgroup="HLA</sourcexml> in <targetxml>ref:link</targetxml> to include <targetxml>ref:locator-params/proc:param name="dpsi"</targetxml></ph>. Per RFA # 58.</p>
  
  <p>2015-08-18 <ph id="change_20150818-1_MLV">Modified mapping of target for <sourcexml>param@name="topiccode"@value="#PA#{value}"</sourcexml></ph>. Per RFA #62.</p>
    
  <p>2015-08-13 <ph id="change_20150813-2_MLV">Modified mapping of target for <sourcexml>cttr:annotations@annotgroup="HLA"</sourcexml> to valid output per Cttr schema.</ph> Per RFA # 58.</p>
  <p>2015-07-28 <ph id="change_20150729-5_MLV">Added instructions for ensuring cttr:refsection has @reftype set and cttr:refsection/ref:anchor.</ph> Per RFA #</p>
    
  <p>2015-07-28 <ph id="change_20150728-3_MLV">Added instruction for handling <targetxml>ref:link</targetxml> and text for <sourcexml>link@refpt</sourcexml> and PCDATA 
    mixed within the <targetxml>text</targetxml> element.</ph> Per RFA #56.</p>
  
  <p>2015-07-28 <ph id="change_20150728-1_MLV">Added instruction for handling signal to treatment mapping for <sourcexml>cttr:annot</sourcexml>.</ph> Per RFA #58.</p>
  
  <p>2015-06-10 <ph id="change_20150610-4_MLV">Completed instruction to include mapping for <sourcexml>case:info/note</sourcexml> with example.</ph> Per RFA #37.</p>
  
  <p>2015-06-10 <ph id="change_20150610-2_MLV">Added instruction to include mapping for optional <sourcexml>note@notetype="xref" @id="SCAI4"</sourcexml> to 
    <targetxml>cttr:head/cttr:citedseclaw/ref:crossreference - @id="SCAI4"</targetxml> because source data has changed - RFA #47.</ph></p>
  
  
  <p>2015-04-21 <ph id="change_20150421-1_MLV">Added instruction to include mapping for optional <sourcexml>cttr:annot[@signal="citation"]/comm:info/contrib</sourcexml> and 
    <sourcexml>cttr:annot[@signal="citation"]/comm:info/isbn</sourcexml></ph>.</p>
  
  <p>2015-04-21 <ph id="change_20150421-2_MLV">Added instruction to include mapping for optional <sourcexml>case:info/note</sourcexml></ph></p>
</section>

  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU20_Legislative_Citator\Leg_Citator_AUNZ_Analytics_Tab.dita  -->
	<!--<xsl:message>Leg_Citator_AUNZ_Analytics_Tab.xsl requires manual development!</xsl:message>--> 

	<!--<xsl:template match="docinfo:doc-id">
		<ref:anchorfornewsletterstextbooksdictionaries>
			<xsl:apply-templates select="@* | node()"/>
		</ref:anchorfornewsletterstextbooksdictionaries>

	</xsl:template>
		<!-\-  Original Target XPath:  cttr:refsection   -\->
		<cttr:refsection>
			<xsl:apply-templates select="@* | node()"/>
		</cttr:refsection>


	<xsl:template match="source_cttr:annotations/source_cttr:annot/heading/title/lnlink"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  title   -\->
		<title>
			<xsl:apply-templates select="@* | node()"/>
		</title>

	</xsl:template>

	<xsl:template match="comm:citations/h/lnlink"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  title   -\->
		<title>
			<xsl:apply-templates select="@* | node()"/>
		</title>

	</xsl:template>

	<xsl:template match="subtitle"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  title   -\->
		<title>
			<xsl:apply-templates select="@* | node()"/>
		</title>

	</xsl:template>

	<xsl:template match="source_cttr:annotations@annotgroup=&#34;BOO"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  ref:link   -\->
		<ref:link>
			<xsl:apply-templates select="@* | node()"/>
		</ref:link>

	</xsl:template>

	<xsl:template match="source_cttr:annotations@annotgroup=&#34;HLA"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  ref:link   -\->
		<ref:link>
			<xsl:apply-templates select="@* | node()"/>
		</ref:link>

	</xsl:template>

	<xsl:template match="param@name=&#34;topiccode&#34;@value=&#34;#PA#{value}&#34;"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  ref:link   -\->
		<ref:link>
			<xsl:apply-templates select="@* | node()"/>
		</ref:link>

	</xsl:template>

	<xsl:template match="source_cttr:annotations@annotgroup=&#34;HLA&#34;"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  ref:link   -\->
		<ref:link>
			<xsl:apply-templates select="@* | node()"/>
		</ref:link>

	</xsl:template>

	<xsl:template match="link@refpt"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  text   -\->
		<text>
			<xsl:apply-templates select="@* | node()"/>
		</text>

	</xsl:template>

	<xsl:template match="source_cttr:annot"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  cttr:head/cttr:citedseclaw/ref:crossreference-@id="SCAI4"   -\->
		<cttr:head>
			<cttr:citedseclaw>
				<ref:crossreference->
					<xsl:apply-templates select="@* | node()"/>
				</ref:crossreference->
			</cttr:citedseclaw>
		</cttr:head>

	</xsl:template>

	<xsl:template match="case:info/note"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  cttr:head/cttr:citedseclaw/ref:crossreference-@id="SCAI4"   -\->
		<cttr:head>
			<cttr:citedseclaw>
				<ref:crossreference->
					<xsl:apply-templates select="@* | node()"/>
				</ref:crossreference->
			</cttr:citedseclaw>
		</cttr:head>

	</xsl:template>

	<xsl:template match="note@notetype=&#34;xref&#34; @id=&#34;SCAI4&#34;"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  cttr:head/cttr:citedseclaw/ref:crossreference-@id="SCAI4"   -\->
		<cttr:head>
			<cttr:citedseclaw>
				<ref:crossreference->
					<xsl:apply-templates select="@* | node()"/>
				</ref:crossreference->
			</cttr:citedseclaw>
		</cttr:head>

	</xsl:template>

	<xsl:template match="source_cttr:annot[@signal=&#34;citation&#34;]/comm:info/contrib"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:     -\->
		<!-\-  Could not determine target element or attribute name:  <>  -\->			<xsl:apply-templates select="@* | node()"/>
		<!-\-  Could not determine target element or attribute name:  </>  -\->

	</xsl:template>

	<xsl:template match="source_cttr:annot[@signal=&#34;citation&#34;]/comm:info/isbn"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:     -\->
		<!-\-  Could not determine target element or attribute name:  <>  -\->			<xsl:apply-templates select="@* | node()"/>
		<!-\-  Could not determine target element or attribute name:  </>  -\->

	</xsl:template>-->

</xsl:stylesheet>