<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg"
  xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita leg">

  <dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="UK06_LawsActsBillsMeasures-leg.level">
    <title>leg:level <lnpid>id-UK06-28026</lnpid></title>
    <body>
      <section>
        <p>
          <sourcexml>leg:level</sourcexml> becomes <targetxml>primlaw:level</targetxml> comes with following attributes: <ul>
            <li><sourcexml>@id</sourcexml> becomes <targetxml>@xml:id</targetxml></li>
            <li><sourcexml>@subdoc</sourcexml> becomes <targetxml>@includeintoc</targetxml></li>
            <li><sourcexml>@toc-caption</sourcexml> becomes <targetxml>@alternatetoccaption</targetxml></li>
            <li><sourcexml>leg:level-vrnt/@leveltype</sourcexml> becomes <targetxml>@leveltype</targetxml> and the values are tokenized for <targetxml>@leveltype</targetxml>. These are listed below: <ul>
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
              </ul>
              <note>In New Lexis <targetxml>primlaw:level</targetxml> element is used instead of Rosetta elements <sourcexml>leg:level</sourcexml> and <sourcexml>leg:level-vrnt</sourcexml>. Pick the
                  <sourcexml>@leveltype</sourcexml> value from <sourcexml>leg:level-vrnt</sourcexml> and the element <sourcexml>leg:level-vrnt</sourcexml> will be suppressed from conversion.</note>
              <p><b>Below are the unique values for <targetxml>@leveltype</targetxml> found in the source documents and the corresponding mapping in NewLexis. For certain <targetxml>@leveltype</targetxml> values set as
                    <targetxml>@leveltype="unclassified"</targetxml>.</b></p>
              <ul>
                <li><sourcexml>leg:level/leg:level-vrnt[@leveltype="part"]</sourcexml> becomes <targetxml>primlaw:level[@leveltype="part"]</targetxml></li>
                <li><sourcexml>leg:level/leg:level-vrnt[@leveltype="sched"]</sourcexml> becomes <targetxml>primlaw:level[@leveltype="schedule"]</targetxml></li>
                <li><sourcexml>leg:level/leg:level-vrnt[@leveltype="prov1"]</sourcexml> becomes <targetxml>primlaw:level[@leveltype="section"]</targetxml></li>
                <li><sourcexml>leg:level/leg:level-vrnt[@leveltype="prov2"]</sourcexml> becomes <targetxml>primlaw:level[@leveltype="subsection"]</targetxml></li>
                <li><sourcexml>leg:level/leg:level-vrnt[@leveltype="prov3"]</sourcexml> becomes <targetxml>primlaw:level[@leveltype="paragraph"]</targetxml></li>
                <li><sourcexml>leg:level/leg:level-vrnt[@leveltype="prov4"]</sourcexml> becomes <targetxml>primlaw:level[@leveltype="subparagraph"]</targetxml></li>
                <li><sourcexml>leg:level[ancestor:: leg:level/leg:level-vrnt[@leveltype="sched"]/leg:level-vrnt[@leveltype="prov1"]</sourcexml> becomes <targetxml>primlaw:level[@leveltype="paragraph"]</targetxml></li>
                <li><sourcexml>leg:level[ancestor:: leg:level/leg:level-vrnt[@leveltype="sched"]/leg:level-vrnt[@leveltype="prov2"]</sourcexml> becomes <targetxml>primlaw:level[@leveltype="subparagraph"]</targetxml></li>
                <li><sourcexml>leg:level[ancestor:: leg:level/leg:level-vrnt[@leveltype="sched"]/leg:level-vrnt[@leveltype="prov3"]</sourcexml> becomes <targetxml>primlaw:level[@leveltype="subparagraph"]</targetxml></li>
                <li><sourcexml>leg:level[ancestor:: leg:level/leg:level-vrnt[@leveltype="sched"]/leg:level-vrnt[@leveltype="prov4"]</sourcexml> becomes <targetxml>primlaw:level[@leveltype="subparagraph"]</targetxml></li>
              </ul>
            </li>
          </ul>
        </p>
      </section>
      <note>When source file is not having <sourcexml>refpt</sourcexml> as a child of either <sourcexml>leg:levelbody, leg:heading, leg:level, leg:level-vrnt, level, leg:comntry</sourcexml> then conversion should
        generate <targetxml>ref:anchor</targetxml> element as a first child of <targetxml>primlaw:level</targetxml> in target. <targetxml>ref:anchor/@id="TOC00*"</targetxml>, for * Conversion should generate a unique
        numeric value and <targetxml>ref:anchor/@anchortype="local"</targetxml>.</note>
      <note>Conversion should generate above <sourcexml>refpt</sourcexml> rule for all the <sourcexml>leg:levelbody, leg:heading, leg:level, leg:level-vrnt, level, leg:comntry</sourcexml> elements, if one
          <targetxml>ref:anchor </targetxml> does not already exists at this location and have the following scenario e.g: <sourcexml>leg:heading/@subdoc="true"</sourcexml>. Please refer the example below for more
        clarification. </note>
      <example>
        <title>Source XML</title>
        <codeblock> &lt;leg:level&gt; &lt;leg:level-vrnt searchtype="LEGISLATION" leveltype="2"&gt; &lt;leg:heading subdoc="true" toc-caption="PARTIES AND JOINDER" align="center"&gt; &lt;title align="center"&gt;PARTIES
          AND JOINDER&lt;/title&gt; &lt;/leg:heading&gt; &lt;leg:levelbody&gt; ... &lt;/leg:levelbody&gt; &lt;/leg:level-vrnt&gt; &lt;/leg:level&gt; </codeblock>
      </example>

      <example>
        <title>Target XML</title>
        <codeblock> &lt;primlaw:level alternatetoccaption="PARTIES AND JOINDER" includeintoc="true" leveltype="unclassified"&gt; &lt;ref:anchor id="TOC001" anchortype="local"/&gt; &lt;heading&gt; &lt;title&gt;PARTIES AND
          JOINDER&lt;/title&gt; &lt;/heading&gt; ... &lt;/primlaw:level&gt; </codeblock>
      </example>
      <section>
        <title>Changes</title>
        <p>2017-10-01: <ph id="change_20171001_CSN">Add template call to move repts from heading to level. </ph>
        </p>
        <p>2016-11-18: <ph id="change_20161118_AS">Edited instructions for target element mapping when source is not having <sourcexml>refpt</sourcexml> as a child of <targetxml>leg:heading</targetxml> and note for
            generation of <targetxml>ref:anchor</targetxml> based on <sourcexml>@subdoc="true"</sourcexml> value. </ph>
        </p>
        <p>2016-11-09: <ph id="change_20161109_AS">Updated target element mapping when source is not having <sourcexml>refpt</sourcexml> as a child of <targetxml>leg:heading</targetxml> and note for generation of
              <targetxml>ref:anchor</targetxml> based on <sourcexml>@subdoc="true"</sourcexml> value. </ph>
        </p>
      </section>
    </body>
  </dita:topic>

  <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK06-LawsActsBillsMeasures\UK06_LawsActsBillsMeasures-leg.level.dita  -->

  <xsl:template match="leg:level">
    <primlaw:level>
      <xsl:choose>
        <xsl:when test="leg:level-vrnt[@leveltype = 'sched']">
          <xsl:attribute name="leveltype" select="'schedule'"/>
        </xsl:when>
        <xsl:when test="leg:level-vrnt[@leveltype = 'prov1']">
          <xsl:attribute name="leveltype" select="'section'"/>
        </xsl:when>
        <xsl:when test="leg:level-vrnt[@leveltype = 'prov2']">
          <xsl:attribute name="leveltype" select="'subsection'"/>
        </xsl:when>
        <xsl:when test="leg:level-vrnt[@leveltype = 'prov3']">
          <xsl:attribute name="leveltype" select="'paragraph'"/>
        </xsl:when>
        <xsl:when test="leg:level-vrnt[@leveltype = 'prov4']">
          <xsl:attribute name="leveltype" select="'subparagraph'"/>
        </xsl:when>
        <xsl:when test="ancestor::leg:level/leg:level-vrnt[@leveltype = 'sched']/leg:level-vrnt[@leveltype = 'prov1']">
          <xsl:attribute name="leveltype" select="'paragraph'"/>
        </xsl:when>
        <xsl:when test="ancestor::leg:level/leg:level-vrnt[@leveltype = 'sched']/leg:level-vrnt[@leveltype = 'prov2']">
          <xsl:attribute name="leveltype" select="'subparagraph'"/>
        </xsl:when>
        <xsl:when test="ancestor::leg:level/leg:level-vrnt[@leveltype = 'sched']/leg:level-vrnt[@leveltype = 'prov3']">
          <xsl:attribute name="leveltype" select="'subparagraph'"/>
        </xsl:when>
        <xsl:when test="ancestor::leg:level/leg:level-vrnt[@leveltype = 'sched']/leg:level-vrnt[@leveltype = 'prov4']">
          <xsl:attribute name="leveltype" select="'subparagraph'"/>
        </xsl:when>
        <xsl:otherwise>
          <xsl:attribute name="leveltype" select="if((leg:level-vrnt[@leveltype='commentary' or @leveltype='commentary-note']) or (not(leg:level-vrnt/@leveltype))) then 'unclassified' else leg:level-vrnt/@leveltype"/>
        </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="@*"/>
      <xsl:apply-templates select="leg:level-vrnt/leg:heading//refpt"/>
      <xsl:apply-templates select="node()"/>
    </primlaw:level>
  </xsl:template>

  <xsl:template match="leg:level/@id">
    <xsl:attribute name="xml:id" select="."/>
  </xsl:template>

  <xsl:template match="leg:level/@subdoc">
    <xsl:attribute name="includeintoc" select="."/>
  </xsl:template>

  <xsl:template match="leg:level/@toc-caption">
    <xsl:attribute name="alternatetoccaption" select="."/>
  </xsl:template>

  <xsl:template match="leg:level-vrnt">
    <xsl:apply-templates select="node()"/>
  </xsl:template>
</xsl:stylesheet>
