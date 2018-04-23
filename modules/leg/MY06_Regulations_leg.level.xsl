<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:glp="http://www.lexis-nexis.com/glp" xmlns:admindoc="urn:x-lexisnexis:content:administrative-document:sharedservices:1" xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" version="2.0" exclude-result-prefixes="dita glp leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.level">
  <title>leg:level <lnpid>id-MY06-17218</lnpid></title>
  <body>
    <section>
      <p><sourcexml>leg:level</sourcexml> becomes
        <targetxml>primlaw:level</targetxml> comes with
        <sourcexml>@id</sourcexml> becomes <targetxml>@xml:id</targetxml> and
        <sourcexml>@leveltype</sourcexml> becomes
        <targetxml>@leveltype</targetxml> attributes
        <sourcexml>@subdoc</sourcexml> becomes
        <targetxml>@includeintoc</targetxml> and
        <sourcexml>@toc-caption</sourcexml> becomes
        <targetxml>@alternatetoccaption</targetxml>, the values are tokenized, <ul>
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
        [<targetxml>@leveltype</targetxml>] values in NewLexis conversion: 
        <ul>
          <li>If input <sourcexml>[[@leveltype="agreement"]</sourcexml>
            becomes <targetxml>admindoc:level[@leveltype="agreement"]</targetxml>
          </li>
          <li>If input <sourcexml>[@leveltype="attachment"]</sourcexml>
            becomes <targetxml>admindoc:level[@leveltype="attachment"]</targetxml>
          </li>
          <li>If input <sourcexml>[@leveltype="attachments"]</sourcexml>
            becomes <targetxml>admindoc:level[@leveltype="attachment"]</targetxml>
          </li>
          <li>If input <sourcexml>[@leveltype="comm.intro"]</sourcexml>
            becomes <targetxml>admindoc:level[@leveltype="annotation-group"]</targetxml>
          </li>
          <li>If input <sourcexml>[@leveltype="convention"]</sourcexml>
            becomes <targetxml>admindoc:level[@leveltype="treaty"]</targetxml>
          </li>
          <li>If input <sourcexml>[@leveltype="group"]</sourcexml>
            becomes <targetxml>admindoc:level[@leveltype="chapter"]</targetxml>
          </li>
          <li>If input <sourcexml>[@leveltype="leg-inst"]</sourcexml>
            becomes <targetxml>admindoc:level[@leveltype="instrument"]</targetxml>
          </li>
          <li>If input <sourcexml>[@leveltype="miscins"]</sourcexml>
            becomes <targetxml>admindoc:level[@leveltype="instrument"]</targetxml>
          </li>
          <li>If input <sourcexml>[@leveltype="proc-guide"]</sourcexml>
            becomes <targetxml>admindoc:level[@leveltype="procedural-guide"]</targetxml>
          </li>
          <li>If input <sourcexml>[@leveltype="reg-code"]</sourcexml>
            becomes <targetxml>admindoc:level[@leveltype="regulatory-code"]</targetxml>
          </li>
          <li>If input <sourcexml>[@leveltype="release"]</sourcexml>
            becomes <targetxml>admindoc:level[@leveltype="instrument"]</targetxml>
          </li>
          <li>If input <sourcexml>[@leveltype="scale"]</sourcexml>
            becomes <targetxml>admindoc:level[@leveltype="schedule"]</targetxml>
          </li>
          <li>If input <sourcexml>[@leveltype="scalep"]</sourcexml>
            becomes <targetxml>admindoc:level[@leveltype="paragraph"]</targetxml>
          </li>
          <li>If input <sourcexml>[@leveltype="scales"]</sourcexml>
            becomes <targetxml>admindoc:level[@leveltype="schedule"]</targetxml>
          </li>
          <li>If input <sourcexml>[@leveltype="scalesp"]</sourcexml>
            becomes <targetxml>admindoc:level[@leveltype="paragraph"]</targetxml>
          </li>
          <li>If input <sourcexml>[@leveltype="schedulegrp"]</sourcexml>
            becomes <targetxml>admindoc:level[@leveltype="schedule"]</targetxml>
          </li>
          <li>If input <sourcexml>[@leveltype="subgroup"]</sourcexml>
            becomes <targetxml>admindoc:level[@leveltype="subchapter"]</targetxml>
          </li>
          <li>If input <sourcexml>[@leveltype="summary"]</sourcexml>
            becomes <targetxml>admindoc:level[@leveltype="introduction"]</targetxml>
          </li>
          <li>If input <sourcexml>[@leveltype="sect"]</sourcexml>
            becomes <targetxml>admindoc:level[@leveltype="section"]</targetxml>
          </li>
          <li>If input <sourcexml>[@leveltype="subsect"]</sourcexml>
            becomes <targetxml>admindoc:level[@leveltype="subsection"]</targetxml>
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

&lt;leg:level id="USM.A000001y1969e"&gt;
  &lt;leg:level-vrnt searchtype="LEGISLATION ACT" leveltype="regulations"&gt;

      </codeblock>
      <b>becomes</b>
      <codeblock>

&lt;primlaw:level xml:id="USM.A000001y1969e" leveltype="regulation"&gt;

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
        &lt;desig searchtype="SECT-NUM"&gt;
          &lt;designum&gt;1.&lt;/designum&gt;
        &lt;/desig&gt;
        &lt;title searchtype="SECT-TITLE"&gt;
        &lt;refpt type="ext" id="USM.A000001y1969e.S1"/&gt;Short title and commencement&lt;/title&gt;
   &lt;/leg:heading&gt;
              ...
&lt;/leg:level&gt;

      </codeblock>
      <b>becomes</b>
      <codeblock>

&lt;primlaw:level leveltype="section" alternatetoccaption="1. Short title and commencement" includeintoc="true"&gt;
    &lt;ref:anchor id="USM.A000001y1969e.S1" anchortype="global"/&gt;
    &lt;heading&gt;
        &lt;desig&gt;1.&lt;/desig&gt; 
        &lt;title&gt;Short title and commencement&lt;/title&gt;
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
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-MY\MY06_Regulations\leg.level.dita  -->
<!--	<xsl:message>MY06_Regulations_leg.level.xsl requires manual development!</xsl:message> -->

  <xsl:template match="leg:level">
    <!--  Original Target XPath:  primlaw:level   -->
    <xsl:choose>
      <xsl:when test="parent::leg:body">
        <primlaw:level>
          <xsl:attribute name="leveltype" select="'unclassified'"/>
          <primlaw:level>
            <xsl:apply-templates select="@*"/>
            <xsl:apply-templates select="leg:level-vrnt/@*"/>
            <!-- in case there's no leveltype in the input -->
            <xsl:if test="not(leg:level-vrnt/@leveltype)">
              <xsl:attribute name="leveltype" select="'unclassified'"/>
            </xsl:if>
            <xsl:apply-templates select="node()"/>
          </primlaw:level>      
        </primlaw:level>
      </xsl:when>
      <xsl:otherwise>
        <primlaw:level>
          <xsl:apply-templates select="@*"/>
          <xsl:apply-templates select="leg:level-vrnt/@*"/>
          <!-- in case there's no leveltype in the input -->
          <xsl:if test="not(leg:level-vrnt/@leveltype)">
            <xsl:attribute name="leveltype" select="'unclassified'"/>
          </xsl:if>
          <xsl:apply-templates select="node()"/>
        </primlaw:level>
      </xsl:otherwise>
    </xsl:choose>
    
  </xsl:template>
  
  <xsl:template match="leg:level/@subdoc">
    <!--  Original Target XPath:  @includeintoc   -->
    <xsl:attribute name="includeintoc">
      <xsl:value-of select="."/>
    </xsl:attribute>
  </xsl:template>
  
  
  
</xsl:stylesheet>