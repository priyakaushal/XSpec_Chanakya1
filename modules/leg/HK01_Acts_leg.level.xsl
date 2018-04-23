<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
  xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" 
  xmlns:glp="http://www.lexis-nexis.com/glp"
  version="2.0" exclude-result-prefixes="#all">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.level">
  <title>leg:level <lnpid>id-HK01-36816</lnpid></title>
  <body>
    <section>
      <p><sourcexml>leg:level</sourcexml> becomes
        <targetxml>primlaw:level</targetxml> comes with
        <sourcexml>@id</sourcexml> becomes <targetxml>@xml:id</targetxml> and
        <sourcexml>@leveltype</sourcexml> becomes
        <targetxml>@leveltype</targetxml> attributes
        <sourcexml>@subdoc</sourcexml> becomes
        <targetxml>@includeintoc</targetxml> and
        <sourcexml>toc-caption</sourcexml> becomes
        <targetxml>alternatetoccaption</targetxml>, the values are tokenized, <ul>
          <li><targetxml>primlaw:level[@leveltype="act"]</targetxml></li>
          <li><targetxml>primlaw:level[@leveltype="addendum"]</targetxml></li>
          <li><targetxml>primlaw:level[@leveltype="amendment"]</targetxml></li>
          <li><targetxml>primlaw:level[@leveltype="annex"]</targetxml></li>
          <li><targetxml>primlaw:level[@leveltype="appendix"]</targetxml></li>
          <li><targetxml>primlaw:level[@leveltype="article"]</targetxml></li>
          <li><targetxml>primlaw:level[@leveltype="canon"]</targetxml></li>
          <li><targetxml>primlaw:level[@leveltype="chapter"]</targetxml></li>
          <li><targetxml>primlaw:level[@leveltype="clause"]</targetxml></li>
          <li><targetxml>primlaw:level[@leveltype="constitution"]</targetxml></li>
          <li><targetxml>primlaw:level[@leveltype="companion"]</targetxml></li>
          <li><targetxml>primlaw:level[@leveltype="division"]</targetxml></li>
          <li><targetxml>primlaw:level[@leveltype="dictionary"]</targetxml></li>
          <li><targetxml>primlaw:level[@leveltype="exhibit"]</targetxml></li>
          <li><targetxml>primlaw:level[@leveltype="endnote"]</targetxml></li>
          <li><targetxml>primlaw:level[@leveltype="form"]</targetxml></li>
          <li><targetxml>primlaw:level[@leveltype="hierarchy-note"]</targetxml></li>
          <li><targetxml>primlaw:level[@leveltype="introduction"]</targetxml></li>
          <li><targetxml>primlaw:level[@leveltype="instrument"]</targetxml></li>
          <li><targetxml>primlaw:level[@leveltype="order"]</targetxml></li>
          <li><targetxml>primlaw:level[@leveltype="paragraph"]</targetxml></li>
          <li><targetxml>primlaw:level[@leveltype="part"]</targetxml></li>
          <li><targetxml>primlaw:level[@leveltype="preamble"]</targetxml></li>
          <li><targetxml>primlaw:level[@leveltype="regulation"]</targetxml></li>
          <li><targetxml>primlaw:level[@leveltype="rule"]</targetxml></li>
          <li><targetxml>primlaw:level[@leveltype="schedule"]</targetxml></li>
          <li><targetxml>primlaw:level[@leveltype="section"]</targetxml></li>
          <li><targetxml>primlaw:level[@leveltype="subarticle"]</targetxml></li>
          <li><targetxml>primlaw:level[@leveltype="subchapter"]</targetxml></li>
          <li><targetxml>primlaw:level[@leveltype="subclause"]</targetxml></li>
          <li><targetxml>primlaw:level[@leveltype="subdivision"]</targetxml></li>
          <li><targetxml>primlaw:level[@leveltype="subparagraph"]</targetxml></li>
          <li><targetxml>primlaw:level[@leveltype="subpart"]</targetxml></li>
          <li><targetxml>primlaw:level[@leveltype="subrule"]</targetxml></li>
          <li><targetxml>primlaw:level[@leveltype="subregulation"]</targetxml></li>
          <li><targetxml>primlaw:level[@leveltype="subschedule"]</targetxml></li>
          <li><targetxml>primlaw:level[@leveltype="subsection"]</targetxml></li>
          <li><targetxml>primlaw:level[@leveltype="subtitle"]</targetxml></li>
          <li><targetxml>primlaw:level[@leveltype="supplement"]</targetxml></li>
          <li><targetxml>primlaw:level[@leveltype="table-of-contents"]</targetxml></li>
          <li><targetxml>primlaw:level[@leveltype="title"]</targetxml></li>
          <li><targetxml>primlaw:level[@leveltype="topic"]</targetxml></li>
          <li><targetxml>primlaw:level[@leveltype="treaty"]</targetxml></li>
          <li><targetxml>primlaw:level[@leveltype="agency"]</targetxml></li>
          <li><targetxml>primlaw:level[@leveltype="subagency]</targetxml></li>
          <li><targetxml>primlaw:level[@leveltype="unclassified"]</targetxml></li>
        </ul></p>
      <p>As per LBU recommend the rules are listed below for some unique
        [<targetxml>@leveltype</targetxml>] values in NewLexis conversion: <ul class="- topic/ul ">
          <li class="- topic/li ">If input <sourcexml>[[@leveltype="agreement"]</sourcexml>
            becomes <targetxml>primlaw:level[@leveltype="agreement"]</targetxml>
          </li>
          <li class="- topic/li ">If input <sourcexml>[@leveltype="attachment"]</sourcexml>
            becomes <targetxml>primlaw:level[@leveltype="attachment"]</targetxml>
          </li>
          <li class="- topic/li ">If input <sourcexml>[@leveltype="attachments"]</sourcexml>
            becomes <targetxml>primlaw:level[@leveltype="attachment"]</targetxml>
          </li>
          <li class="- topic/li ">If input <sourcexml>[@leveltype="comm.intro"]</sourcexml>
            becomes <targetxml>primlaw:level[@leveltype="annotation-group"]</targetxml>
          </li>
          <li class="- topic/li ">If input <sourcexml>[@leveltype="convention"]</sourcexml>
            becomes <targetxml>primlaw:level[@leveltype="treaty"]</targetxml>
          </li>
          <li class="- topic/li ">If input <sourcexml>[@leveltype="group"]</sourcexml>
            becomes <targetxml>primlaw:level[@leveltype="chapter"]</targetxml>
          </li>
          <li class="- topic/li ">If input <sourcexml>[@leveltype="leg-inst"]</sourcexml>
            becomes <targetxml>primlaw:level[@leveltype="instrument"]</targetxml>
          </li>
          <li class="- topic/li ">If input <sourcexml>[@leveltype="miscins"]</sourcexml>
            becomes <targetxml>primlaw:level[@leveltype="instrument"]</targetxml>
          </li>
          <li class="- topic/li ">If input <sourcexml>[@leveltype="proc-guide"]</sourcexml>
            becomes <targetxml>primlaw:level[@leveltype="procedural-guide"]</targetxml>
          </li>
          <li class="- topic/li ">If input <sourcexml>[@leveltype="reg-code"]</sourcexml>
            becomes <targetxml>primlaw:level[@leveltype="regulatory-code"]</targetxml>
          </li>
          <li class="- topic/li ">If input <sourcexml>[@leveltype="release"]</sourcexml>
            becomes <targetxml>primlaw:level[@leveltype="instrument"]</targetxml>
          </li>
          <li class="- topic/li ">If input <sourcexml>[@leveltype="scale"]</sourcexml>
            becomes <targetxml>primlaw:level[@leveltype="schedule"]</targetxml>
          </li>
          <li class="- topic/li ">If input <sourcexml>[@leveltype="scalep"]</sourcexml>
            becomes <targetxml>primlaw:level[@leveltype="paragraph"]</targetxml>
          </li>
          <li class="- topic/li ">If input <sourcexml>[@leveltype="scales"]</sourcexml>
            becomes <targetxml>primlaw:level[@leveltype="schedule"]</targetxml>
          </li>
          <li class="- topic/li ">If input <sourcexml>[@leveltype="scalesp"]</sourcexml>
            becomes <targetxml>primlaw:level[@leveltype="paragraph"]</targetxml>
          </li>
          <li class="- topic/li ">If input <sourcexml>[@leveltype="schedulegrp"]</sourcexml>
            becomes <targetxml>primlaw:level[@leveltype="schedule"]</targetxml>
          </li>
          <li class="- topic/li ">If input <sourcexml>[@leveltype="subgroup"]</sourcexml>
            becomes <targetxml>primlaw:level[@leveltype="subchapter"]</targetxml>
          </li>
          <li class="- topic/li ">If input <sourcexml>[@leveltype="summary"]</sourcexml>
            becomes <targetxml>primlaw:level[@leveltype="introduction"]</targetxml>
          </li>
          <li class="- topic/li ">If input <sourcexml>[@leveltype="sect"]</sourcexml>
            becomes <targetxml>primlaw:level[@leveltype="section"]</targetxml>
          </li>
          <li class="- topic/li ">If input <sourcexml>[@leveltype="subsect"]</sourcexml>
            becomes <targetxml>primlaw:level[@leveltype="subsection"]</targetxml>
          </li>
          <li class="- topic/li ">If input <sourcexml>[@leveltype="part.chapter"]</sourcexml>
            becomes <targetxml>primlaw:level[@leveltype="chapter"]</targetxml>
          </li>
          <li class="- topic/li ">If input <sourcexml>[@leveltype="form.grp"]</sourcexml>
            becomes <targetxml>primlaw:level[@leveltype="form"]</targetxml>
          </li>
          <li class="- topic/li ">If input <sourcexml>[@leveltype="formgrp"]</sourcexml>
            becomes <targetxml>primlaw:level[@leveltype="form"]</targetxml>
          </li>
          <li class="- topic/li ">If input <sourcexml>[@leveltype="leg.instrument"]</sourcexml>
            becomes <targetxml>primlaw:level[@leveltype="instrument"]</targetxml>
          </li>
          <li class="- topic/li ">If input <sourcexml>[@leveltype="misc.inst"]</sourcexml>
            becomes <targetxml>primlaw:level[@leveltype="instrument"]</targetxml>
          </li>
        </ul>
        <note class="- topic/note ">If the input files are having
          <sourcexml>@leveltype</sourcexml> values other than the tokenized list shown
          above the value will be set as
          <targetxml>@leveltype="unclassified"</targetxml>.</note> Examples are populated as
        below:</p>
    </section>
    <example>
      <title>Mapping of <sourcexml>leg:level</sourcexml></title>
      <codeblock>

&lt;leg:level id="AOHK.CAP32.BODY"&gt;
  &lt;leg:level-vrnt leveltype="act" searchtype="LEGISLATION ACT"&gt;
 
      </codeblock>
      <b>becomes</b>
      <codeblock>

&lt;primlaw:level xml:id="AOHK.CAP32.BODY" leveltype="act"&gt;

       </codeblock>
    </example> 
    
    <note>If the input files are having <sourcexml>@leveltype</sourcexml> values other than the
      tokenized list shown above the value will be set as
        <targetxml>@leveltype="unclassified"</targetxml>.</note>
    <note>The <sourcexml>@searchtype</sourcexml> attribute will be suppressed from conversion except for the citation element.</note>
    <example>
      <title>Mapping of <sourcexml>leg:level</sourcexml></title>
      <codeblock>

&lt;leg:level id="USM.A000001y1969e.S1"&gt;
  &lt;leg:level-vrnt toc-caption="1. Short title and commencement" subdoc="true" searchtype="LEGISLATION SECT" leveltype="sect"&gt;
    &lt;leg:heading&gt;
      &lt;title&gt;&lt;refpt id="AOHK.CAP32" type="ext"/&gt;INTRODUCTION&lt;/title&gt;
    &lt;/leg:heading&gt;
              ...
&lt;/leg:level&gt;

      </codeblock>
      <b>becomes</b>
      <codeblock>

&lt;primlaw:level xml:id="USM.A000001y1969e.S1" leveltype="section" alternatetoccaption="1. Short title and commencement" includeintoc="true"&gt;
    &lt;ref:anchor id="AOHK.CAP32" anchortype="global"/&gt;
    &lt;heading&gt;
        &lt;title&gt;INTRODUCTION&lt;/title&gt;
    &lt;/heading&gt;                       
    ....
&lt;/primlaw:level&gt;

       </codeblock>
    </example> 
    <note>In New Lexis <targetxml>primlaw:level</targetxml> element is used
      instead of Rosetta elements <sourcexml>leg:level</sourcexml>and
      <sourcexml>leg:level-vrnt</sourcexml>. Pick the
      <sourcexml>@leveltype</sourcexml> value from
      <sourcexml>leg:level-vrnt</sourcexml> and the element
      <sourcexml>leg:level-vrnt</sourcexml> will be suppressed from
      conversion.</note>
 <section>
       <title>Changes</title>
       <p>2016-03-04: <ph id="change_20160304_SS">Created</ph>.</p>
</section>    
  </body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-HK\HK01_Acts\leg.level.dita  -->
	 

	<xsl:template match="leg:level">
		<primlaw:level>
			<xsl:apply-templates select="@*"/>
			<xsl:apply-templates select="leg:level-vrnt/@*"/>
		  <xsl:if test="not(@subdoc or leg:level-vrnt/@subdoc)">
		    <xsl:apply-templates select="leg:level-vrnt/leg:heading/@subdoc"/>
		  </xsl:if>
		  <xsl:if test="not(@toc-caption or leg:level-vrnt/@toc-caption)">
		    <xsl:apply-templates select="leg:level-vrnt/leg:heading/@toc-caption"/>
		  </xsl:if>
			<xsl:if test="not(leg:level-vrnt/@leveltype or @leveltype)">
				<xsl:attribute name="leveltype"><xsl:text>unclassified</xsl:text></xsl:attribute>
			</xsl:if>
			<xsl:apply-templates select="node()"/>
		</primlaw:level>
	</xsl:template>

	<xsl:template match="leg:level-vrnt">
	  <xsl:apply-templates select="leg:heading/descendant::refpt | leg:levelinfo/leg:levelstatus/refpt"/>
	  <xsl:apply-templates select="leg:heading"/>
	  <xsl:apply-templates select="leg:heading/leg:empleg"/>
	  <xsl:apply-templates select="node() except (leg:heading)"/>
	</xsl:template>

<!-- 
  <xsl:template match="leg:level-vrnt">
	  <xsl:apply-templates select="leg:heading/descendant::refpt"/>
	  <xsl:apply-templates select="leg:heading"/>
	  <xsl:apply-templates select="leg:heading/glp:note"/>
	  <xsl:apply-templates select="leg:heading/leg:empleg"/>
		<xsl:apply-templates select="node() except(leg:heading | leg:empleg)"/>
	</xsl:template>
  
  -->
	<xsl:template match="leg:level-vrnt/@leveltype | leg:level/@leveltype">
		<!-- variable for easy maintenance, just slap new values in if needed to copy over -->
		<xsl:variable name="valuesToCopy" select="('act', 'addendum', 'amendment', 'annex', 'appendix', 'article', 'canon', 'chapter', 'clause', 'constitution', 'companion', 'division', 'dictionary', 'exhibit', 'endnote', 'form', 'hierarchy-note', 'introduction', 'instrument', 'order', 'paragraph', 'part', 'preamble', 'regulation', 'rule', 'schedule', 'section', 'subarticle', 'subchapter', 'subclause', 'subdivision', 'subparagraph', 'subpart', 'subrule', 'subregulation', 'subschedule', 'subsection', 'subtitle', 'supplement', 'table-of-contents', 'title', 'topic', 'treaty', 'agency', 'subagency', 'unclassified' , 'agreement', 'attachment')"/>
		<!--  Original Target XPath:  @leveltype   -->
		<xsl:attribute name="leveltype">
			<xsl:choose>
				<xsl:when test=".=$valuesToCopy"><xsl:value-of select="."/></xsl:when>
				<xsl:when test=".='attachments'"><xsl:text>attachment</xsl:text></xsl:when>
				<xsl:when test=".='comm.intro'"><xsl:text>annotation-group</xsl:text></xsl:when>
				<xsl:when test=".='convention'"><xsl:text>treaty</xsl:text></xsl:when>
				<xsl:when test=".='group'"><xsl:text>chapter</xsl:text></xsl:when>
				<xsl:when test=".='leg-inst'"><xsl:text>instrument</xsl:text></xsl:when>
				<xsl:when test=".='miscins'"><xsl:text>instrument</xsl:text></xsl:when>
				<xsl:when test=".='proc-guide'"><xsl:text>procedural-guide</xsl:text></xsl:when>
				<xsl:when test=".='reg-code'"><xsl:text>regulatory-code</xsl:text></xsl:when>
				<xsl:when test=".='release'"><xsl:text>instrument</xsl:text></xsl:when>
				<xsl:when test=".='scale'"><xsl:text>schedule</xsl:text></xsl:when>
				<xsl:when test=".='scalep'"><xsl:text>paragraph</xsl:text></xsl:when>
				<xsl:when test=".='scales'"><xsl:text>schedule</xsl:text></xsl:when>
				<xsl:when test=".='scalesp'"><xsl:text>paragraph</xsl:text></xsl:when>
				<xsl:when test=".='schedulegrp'"><xsl:text>schedule</xsl:text></xsl:when>
				<xsl:when test=".='subgroup'"><xsl:text>subchapter</xsl:text></xsl:when>
				<xsl:when test=".='summary'"><xsl:text>introduction</xsl:text></xsl:when>
				<xsl:when test=".='sect'"><xsl:text>section</xsl:text></xsl:when>
				<xsl:when test=".='subsect'"><xsl:text>subsection</xsl:text></xsl:when>
				<xsl:when test=".='part.chapter'"><xsl:text>chapter</xsl:text></xsl:when>
				<xsl:when test=".='form.grp'"><xsl:text>form</xsl:text></xsl:when>
				<xsl:when test=".='formgrp'"><xsl:text>form</xsl:text></xsl:when>
				<xsl:when test=".='leg.instrument'"><xsl:text>instrument</xsl:text></xsl:when>
				<xsl:when test=".='misc.inst'"><xsl:text>instrument</xsl:text></xsl:when>
				<xsl:otherwise><xsl:text>unclassified</xsl:text></xsl:otherwise>
			</xsl:choose>
		</xsl:attribute>

	</xsl:template>

  <xsl:template match="leg:level-vrnt/@subdoc |leg:level/@subdoc | leg:heading/@subdoc">
		<xsl:attribute name="includeintoc">
			<xsl:value-of select="."/>
		</xsl:attribute>
	</xsl:template>

  <xsl:template match="leg:level-vrnt/@toc-caption | leg:level/@toc-caption |leg:heading/@toc-caption">
		<xsl:attribute name="alternatetoccaption">
			<xsl:value-of select="."/>
		</xsl:attribute>
	</xsl:template>

	<xsl:template match="leg:level-vrnt/@searchtype | leg:level/@searchtype"/>
  
  <xsl:template match="leg:heading/glp:note[refpt and not(child::*[2])]" priority="40"/>


</xsl:stylesheet>