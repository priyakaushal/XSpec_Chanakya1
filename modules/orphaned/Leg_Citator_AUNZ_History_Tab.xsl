<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
	xmlns:source_cttr="http://www.lexis-nexis.com/glp/cttr" xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" 
	xmlns:cttr="urn:x-lexisnexis:content:citator:sharedservices:1" xmlns:primlawhist="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-history/1/" 
	xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita source_cttr docinfo">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Leg_Citator_AUNZ_History_Tab">
  <title>History Tab Content <lnpid>id-AU20-22230</lnpid></title>
  
  <body>
    <p>This Topic is for documents identified as "History" in the source document via <sourcexml>docinfo:doc-id</sourcexml></p>
    
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
      &lt;docinfo:doc-heading&gt;History Tab for CTH_ACT_1995-57&lt;/docinfo:doc-heading&gt;
      &lt;docinfo:doc-id&gt;LCIT-CTH_ACT_1995-57-history&lt;/docinfo:doc-id&gt;      
      
    </codeblock>
    
    
    
    <section>
    	<title>Changes to History Tab Content Prior to 2015-11-16 (newer changes shown at end of sections they were made in):</title>
      <p>2015-10-28 - MLV: <ph id="change_20151028-3_mlv">Instructions for all history tab have been re-written, per presentation team needs.</ph></p>
        
      <p>2015-10-16 - MLV: <ph id="change_20151016-9_mlv">Modified instruction and example for <targetxml>primlawhist:primlawhist</targetxml>.</ph></p>
      <p>2015-09-28 - MLV: <ph id="change_20150928-2_mlv">Added instructions for handling <sourcexml>entry/p-limited</sourcexml> mapping to <targetxml>primlawhist:histitemdiv/textitem</targetxml></ph>. Per RFA #66.</p> 
            
      <p>2015-09-22 - MLV: <ph id="change_20150922-11_mlv">Added instructions and example for handling <sourcexml>cttr:annot/heading/subtitle</sourcexml>, 
        separated by a single space and wrapped with parentheses</ph>. Per RFA App Team #18</p>
      <p>2015-09-22 - MLV: <ph id="change_20150922-10_mlv">Corrected example for <targetxml>ref:anchor@id="historical-data-graph"</targetxml> so that the instructions
        match the example text</ph>. Per RFA App Team #23</p>
      <p>2015-09-22 - MLV: <ph id="change_20150922-5_mlv">Added clarification of bodytext usage <sourcexml>cttr:annotations/annotsummary</sourcexml> and
      reference to p-limited mapping (id-CCCC-10419)</ph>. Per RFA #66.</p>
      <p>2015-09-22 - MLV: <ph id="change_20150922-1_mlv">Corrected instruction for <targetxml>ref:anchor@id="HI1-historical-data-graph"</targetxml></ph>. Per RFA #65.</p>
      
      <p>2015-09-01 - MLV: <ph id="change_20150901-1_mlv">Modified instructions for adding <targetxml>ref:anchor@id="HI1-historical-data-graph"</targetxml> for 
        <sourcexml>History annotations</sourcexml> to avoid multiple anchors.</ph> Per RFA #65.</p>
      <p>2015-09-01 - MLV: <ph id="change_20150901-2_mlv">Modified instructions for mapping <sourcexml>entry@id="HI6"/lnlink</sourcexml> map to 
        <targetxml>primlawhist:histitemdiv/ref:lnlink@xml:id="HI6"</targetxml>; also removed line of instruction regarding <sourcexml>cttr:annot</sourcexml> mapping to a new 
        <targetxml>primlawhist:histitem</targetxml></ph>. Per RFA #66.</p>
      
      <p>2015-08-28 - MLV: <ph id="change_20150828-3_mlv">Added instructions for new <targetxml>ref:anchor@id="historical-data-graph"</targetxml> for 
        <sourcexml>History annotations</sourcexml>. Check also change for <targetxml>@xml:id</targetxml> value.</ph> Per App Team RFA #23.</p>
      <p>2015-08-28 - MLV: <ph id="change_20150828-1_mlv">Added and modified instructions for handling History - Assent section</ph> Per App Team RFA #24.</p>
        
      <p>2015-08-13: MLV - <ph id="change_20150813-4_mlv">Added instruction for adding <targetxml>ref:anchor</targetxml> following the start of the <targetxml>primlawhist:primlawhist</targetxml>.</ph> Per RFA 61.</p>
        
      <p>2015-07-29: MLV - <ph id="change_20150729-7_mlv">Added instruction for <targetxml>cttr:refs/cttr:refsection xml:id="refssummary-HI1-History"</targetxml> 
        to add <targetxml>ref:anchor</targetxml> with <targetxml>@id="refssummary-HI1-History"</targetxml></ph> Per RFA #23.</p>
      <p>2015-06-16 - MLV: <ph id="change_20150616-1_mlv">Added mapping for <sourcexml>cttr:annotations</sourcexml> when @annotgroup="HP4". Per RFA #49.</ph></p>
 
      <p>2015-06-10 - MLV: <ph id="change_20150610-1_mlv">Modified mapping when a note precedes a <sourcexml>cttr:annotsummary</sourcexml> so as only one 
        <targetxml>bodytext</targetxml> is created in conversion per schema. RFA #46.</ph></p>
      <p>2015-05-27 - MLV: <ph id="change_20150527-3_mlv">Added mapping for /cttr:annot/heading/title contains section number AND /cttr:annot/heading/subtitle contains character
        like '4'. per RFA #43</ph>.</p>
      <p>2015-04-29 - MLV: <ph id="change_20150429-1_mlv">Added mapping for /cttr:annot/heading/title contains section number AND /cttr:annot/heading/subtitle contains words 
        like 'Amended'.</ph></p>
      <p>2015-04-22 - MLV: <ph id="change_20150422-1_mlv">Modified examples from using "Amending Law" to "Amending Legislation" to match new 
      content examples.</ph></p>
      
      <p>2014-05-01 - MLV: <ph id="change_20140501-1_mlv">Added mapping for cttr:annotations[@annotgrp="prov-al"] and cttr:annotations[@annotgrp="prov-am"]</ph></p>
      <p>2014-02-03 - MLV: <ph id="change_20140203-1_mlv">Added mapping specific to legfragment markup found within a p element in cttr:annotations.</ph></p>
      
      <p>2014-01-13 - MLV: clarified context xpath to conversion for CI15 including: primlawhist:primlawhist as parent 
        of primlawhist:histgrp. Also changed location of id output for heading id="HI14" to primlawhist:primlawhist xml:id="HI14".</p>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU20_Legislative_Citator\Leg_Citator_AUNZ_History_Tab.dita  -->
	<xsl:message>Leg_Citator_AUNZ_History_Tab.xsl requires manual development!</xsl:message> 

	<xsl:template match="docinfo:doc-id"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  primlawhist:primlawhist   -->
		<primlawhist:primlawhist>
			<xsl:apply-templates select="@* | node()"/>
		</primlawhist:primlawhist>

	</xsl:template>

	<xsl:template match="entry/p-limited"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  primlawhist:histitemdiv/textitem   -->
		<primlawhist:histitemdiv>
			<textitem>
				<xsl:apply-templates select="@* | node()"/>
			</textitem>
		</primlawhist:histitemdiv>

	</xsl:template>

	<xsl:template match="source_cttr:annot/heading/subtitle"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  ref:anchor@id="historical-data-graph"   -->
		<ref:anchor>
			<xsl:apply-templates select="@* | node()"/>
		</ref:anchor>

	</xsl:template>

	<xsl:template match="source_cttr:annotations/annotsummary"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  ref:anchor@id="HI1-historical-data-graph"   -->
		<ref:anchor>
			<xsl:apply-templates select="@* | node()"/>
		</ref:anchor>

	</xsl:template>

	<xsl:template match="History annotations"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  primlawhist:histitemdiv/ref:lnlink@xml:id="HI6"   -->
		<primlawhist:histitemdiv>
			<ref:lnlink>
				<xsl:apply-templates select="@* | node()"/>
			</ref:lnlink>
		</primlawhist:histitemdiv>

	</xsl:template>

	<xsl:template match="entry@id=&#34;HI6&#34;/lnlink"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  primlawhist:histitemdiv/ref:lnlink@xml:id="HI6"   -->
		<primlawhist:histitemdiv>
			<ref:lnlink>
				<xsl:apply-templates select="@* | node()"/>
			</ref:lnlink>
		</primlawhist:histitemdiv>

	</xsl:template>

	<xsl:template match="source_cttr:annot"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  primlawhist:histitem   -->
		<primlawhist:histitem>
			<xsl:apply-templates select="@* | node()"/>
		</primlawhist:histitem>

	</xsl:template>

	<xsl:template match="source_cttr:annotations"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  bodytext   -->
		<bodytext>
			<xsl:apply-templates select="@* | node()"/>
		</bodytext>

	</xsl:template>

	<xsl:template match="source_cttr:annotsummary"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  bodytext   -->
		<bodytext>
			<xsl:apply-templates select="@* | node()"/>
		</bodytext>

	</xsl:template>

</xsl:stylesheet>