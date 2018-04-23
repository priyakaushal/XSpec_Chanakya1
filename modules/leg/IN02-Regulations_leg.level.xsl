<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:admindoc="urn:x-lexisnexis:content:administrative-document:sharedservices:1" xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.level">
  <title>leg:level <lnpid>id-IN02-15616</lnpid></title>
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

&lt;leg:level id="A000001y1969e"&gt;
  &lt;leg:level-vrnt searchtype="LEGISLATION ACT" leveltype="regulations"&gt;
  &lt;/leg:level-vrnt&gt;
&lt;/leg:level&gt;

      </codeblock>
      <b>becomes</b>
      <codeblock>

&lt;primlaw:level xml:id="A000001y1969e" leveltype="regulation"&gt;
......
&lt;/primlaw:level&gt;

       </codeblock>
    </example>
    <note>The <sourcexml>@searchtype</sourcexml> attribute will be suppressed from conversion except for the citation element.</note>
    <example>
      <title>Mapping of <sourcexml>leg:level</sourcexml></title>
      <codeblock>

&lt;leg:level id="A000001y1969e.S1"&gt;
  &lt;leg:level-vrnt toc-caption="1. Short title and commencement" subdoc="true" searchtype="LEGISLATION SECT" leveltype="sect"&gt;
    &lt;leg:heading&gt;
        &lt;desig searchtype="SECT-NUM"&gt;
          &lt;designum&gt;1.&lt;/designum&gt;
        &lt;/desig&gt;
        &lt;title searchtype="SECT-TITLE"&gt;
        &lt;refpt type="ext" id="A000001y1969e.S1"/&gt;Short title and commencement&lt;/title&gt;
   &lt;/leg:heading&gt;
              ...
&lt;/leg:level&gt;

      </codeblock>
      <b>becomes</b>
      <codeblock>

&lt;primlaw:level leveltype="section" alternatetoccaption="1. Short title and commencement" includeintoc="true"&gt;
    &lt;ref:anchor id="A000001y1969e.S1" anchortype="global"/&gt;
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
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-GPL\IN02-Regulations\leg.level.dita  -->
	<xsl:message>IN02-Regulations_leg.level.xsl requires manual development!</xsl:message> 

	<xsl:template match="leg:level">

		<!--  Original Target XPath:  primlaw:level   -->
		<primlaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="@id">

		<!--  Original Target XPath:  @xml:id   -->
		<xsl:attribute name="xml:id">
			<xsl:apply-templates select="node()"/>
		</xsl:attribute>

	</xsl:template>

	<xsl:template match="@leveltype">

		<!--  Original Target XPath:  @leveltype   -->
		<xsl:attribute name="leveltype">
			<xsl:apply-templates select="node()"/>
		</xsl:attribute>

	</xsl:template>

	<xsl:template match="@subdoc">

		<!--  Original Target XPath:  @includeintoc   -->
		<xsl:attribute name="includeintoc">
			<xsl:apply-templates select="node()"/>
		</xsl:attribute>

	</xsl:template>

	<xsl:template match="@toc-caption">

		<!--  Original Target XPath:  @alternatetoccaption   -->
		<xsl:attribute name="alternatetoccaption">
			<xsl:apply-templates select="node()"/>
		</xsl:attribute>

	</xsl:template>

	<xsl:template match="[[@leveltype=&#34;agreement&#34;]">

		<!--  Original Target XPath:  admindoc:level[@leveltype="agreement"]   -->
		<admindoc:level>
			<xsl:apply-templates select="@* | node()"/>
		</admindoc:level>

	</xsl:template>

	<xsl:template match="[@leveltype=&#34;attachment&#34;]">

		<!--  Original Target XPath:  admindoc:level[@leveltype="attachment"]   -->
		<admindoc:level>
			<xsl:apply-templates select="@* | node()"/>
		</admindoc:level>

	</xsl:template>

	<xsl:template match="[@leveltype=&#34;attachments&#34;]">

		<!--  Original Target XPath:  admindoc:level[@leveltype="attachment"]   -->
		<admindoc:level>
			<xsl:apply-templates select="@* | node()"/>
		</admindoc:level>

	</xsl:template>

	<xsl:template match="[@leveltype=&#34;comm.intro&#34;]">

		<!--  Original Target XPath:  admindoc:level[@leveltype="annotation-group"]   -->
		<admindoc:level>
			<xsl:apply-templates select="@* | node()"/>
		</admindoc:level>

	</xsl:template>

	<xsl:template match="[@leveltype=&#34;convention&#34;]">

		<!--  Original Target XPath:  admindoc:level[@leveltype="treaty"]   -->
		<admindoc:level>
			<xsl:apply-templates select="@* | node()"/>
		</admindoc:level>

	</xsl:template>

	<xsl:template match="[@leveltype=&#34;group&#34;]">

		<!--  Original Target XPath:  admindoc:level[@leveltype="chapter"]   -->
		<admindoc:level>
			<xsl:apply-templates select="@* | node()"/>
		</admindoc:level>

	</xsl:template>

	<xsl:template match="[@leveltype=&#34;leg-inst&#34;]">

		<!--  Original Target XPath:  admindoc:level[@leveltype="instrument"]   -->
		<admindoc:level>
			<xsl:apply-templates select="@* | node()"/>
		</admindoc:level>

	</xsl:template>

	<xsl:template match="[@leveltype=&#34;miscins&#34;]">

		<!--  Original Target XPath:  admindoc:level[@leveltype="instrument"]   -->
		<admindoc:level>
			<xsl:apply-templates select="@* | node()"/>
		</admindoc:level>

	</xsl:template>

	<xsl:template match="[@leveltype=&#34;proc-guide&#34;]">

		<!--  Original Target XPath:  admindoc:level[@leveltype="procedural-guide"]   -->
		<admindoc:level>
			<xsl:apply-templates select="@* | node()"/>
		</admindoc:level>

	</xsl:template>

	<xsl:template match="[@leveltype=&#34;reg-code&#34;]">

		<!--  Original Target XPath:  admindoc:level[@leveltype="regulatory-code"]   -->
		<admindoc:level>
			<xsl:apply-templates select="@* | node()"/>
		</admindoc:level>

	</xsl:template>

	<xsl:template match="[@leveltype=&#34;release&#34;]">

		<!--  Original Target XPath:  admindoc:level[@leveltype="instrument"]   -->
		<admindoc:level>
			<xsl:apply-templates select="@* | node()"/>
		</admindoc:level>

	</xsl:template>

	<xsl:template match="[@leveltype=&#34;scale&#34;]">

		<!--  Original Target XPath:  admindoc:level[@leveltype="schedule"]   -->
		<admindoc:level>
			<xsl:apply-templates select="@* | node()"/>
		</admindoc:level>

	</xsl:template>

	<xsl:template match="[@leveltype=&#34;scalep&#34;]">

		<!--  Original Target XPath:  admindoc:level[@leveltype="paragraph"]   -->
		<admindoc:level>
			<xsl:apply-templates select="@* | node()"/>
		</admindoc:level>

	</xsl:template>

	<xsl:template match="[@leveltype=&#34;scales&#34;]">

		<!--  Original Target XPath:  admindoc:level[@leveltype="schedule"]   -->
		<admindoc:level>
			<xsl:apply-templates select="@* | node()"/>
		</admindoc:level>

	</xsl:template>

	<xsl:template match="[@leveltype=&#34;scalesp&#34;]">

		<!--  Original Target XPath:  admindoc:level[@leveltype="paragraph"]   -->
		<admindoc:level>
			<xsl:apply-templates select="@* | node()"/>
		</admindoc:level>

	</xsl:template>

	<xsl:template match="[@leveltype=&#34;schedulegrp&#34;]">

		<!--  Original Target XPath:  admindoc:level[@leveltype="schedule"]   -->
		<admindoc:level>
			<xsl:apply-templates select="@* | node()"/>
		</admindoc:level>

	</xsl:template>

	<xsl:template match="[@leveltype=&#34;subgroup&#34;]">

		<!--  Original Target XPath:  admindoc:level[@leveltype="subchapter"]   -->
		<admindoc:level>
			<xsl:apply-templates select="@* | node()"/>
		</admindoc:level>

	</xsl:template>

	<xsl:template match="[@leveltype=&#34;summary&#34;]">

		<!--  Original Target XPath:  admindoc:level[@leveltype="introduction"]   -->
		<admindoc:level>
			<xsl:apply-templates select="@* | node()"/>
		</admindoc:level>

	</xsl:template>

	<xsl:template match="[@leveltype=&#34;sect&#34;]">

		<!--  Original Target XPath:  admindoc:level[@leveltype="section"]   -->
		<admindoc:level>
			<xsl:apply-templates select="@* | node()"/>
		</admindoc:level>

	</xsl:template>

	<xsl:template match="[@leveltype=&#34;subsect&#34;]">

		<!--  Original Target XPath:  admindoc:level[@leveltype="subsection"]   -->
		<admindoc:level>
			<xsl:apply-templates select="@* | node()"/>
		</admindoc:level>

	</xsl:template>

	<xsl:template match="@searchtype">

		<!--  Original Target XPath:  primlaw:level   -->
		<primlaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="leg:level-vrnt">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

</xsl:stylesheet>