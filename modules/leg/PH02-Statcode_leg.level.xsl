<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.level">
  <title>leg:level <lnpid>id-PH02-33215</lnpid></title>
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
          <li><targetxml>primlaw:level[@leveltype="administrative-decision"]</targetxml></li>
          <li><targetxml>primlaw:level[@leveltype="agreement"]</targetxml></li>
          <li><targetxml>primlaw:level[@leveltype="amendment"]</targetxml></li>
          <li><targetxml>primlaw:level[@leveltype="annex"]</targetxml></li>
          <li><targetxml>primlaw:level[@leveltype="appendix"]</targetxml></li>
          <li><targetxml>primlaw:level[@leveltype="article"]</targetxml></li>
          <li><targetxml>primlaw:level[@leveltype="attachment"]</targetxml></li>
          <li><targetxml>primlaw:level[@leveltype="canon"]</targetxml></li>
          <li><targetxml>primlaw:level[@leveltype="chapter"]</targetxml></li>
          <li><targetxml>primlaw:level[@leveltype="clause"]</targetxml></li>
          <li><targetxml>primlaw:level[@leveltype="clausegroup"]</targetxml></li>
          <li><targetxml>primlaw:level[@leveltype="companion"]</targetxml></li>
          <li><targetxml>primlaw:level[@leveltype="constitution"]</targetxml></li>
          <li><targetxml>primlaw:level[@leveltype="convention"]</targetxml></li>
          <li><targetxml>primlaw:level[@leveltype="dictionary"]</targetxml></li>
          <li><targetxml>primlaw:level[@leveltype="division"]</targetxml></li>
          <li><targetxml>primlaw:level[@leveltype="endnote"]</targetxml></li>
          <li><targetxml>primlaw:level[@leveltype="exhibit"]</targetxml></li>
          <li><targetxml>primlaw:level[@leveltype="form"]</targetxml></li>
          <li><targetxml>primlaw:level[@leveltype="frontmatter"]</targetxml></li>
          <li><targetxml>primlaw:level[@leveltype="hierarchy-note"]</targetxml></li>
          <li><targetxml>primlaw:level[@leveltype="instrument"]</targetxml></li>
          <li><targetxml>primlaw:level[@leveltype="introduction"]</targetxml></li>
          <li><targetxml>primlaw:level[@leveltype="jurisdiction-variant"]</targetxml></li>
          <li><targetxml>primlaw:level[@leveltype="order"]</targetxml></li>
          <li><targetxml>primlaw:level[@leveltype="paragraph"]</targetxml></li>
          <li><targetxml>primlaw:level[@leveltype="part"]</targetxml></li>
          <li><targetxml>primlaw:level[@leveltype="preamble"]</targetxml></li>
          <li><targetxml>primlaw:level[@leveltype="procedural-guide"]</targetxml></li>
          <li><targetxml>primlaw:level[@leveltype="regulation"]</targetxml></li>
          <li><targetxml>primlaw:level[@leveltype="regulatory-code"]</targetxml></li>
          <li><targetxml>primlaw:level[@leveltype="rule"]</targetxml></li>
          <li><targetxml>primlaw:level[@leveltype="schedule"]</targetxml></li>
          <li><targetxml>primlaw:level[@leveltype="scope-note"]</targetxml></li>
          <li><targetxml>primlaw:level[@leveltype="section"]</targetxml></li>
          <li><targetxml>primlaw:level[@leveltype="subarticle"]</targetxml></li>
          <li><targetxml>primlaw:level[@leveltype="subchapter"]</targetxml></li>
          <li><targetxml>primlaw:level[@leveltype="subclause"]</targetxml></li>
          <li><targetxml>primlaw:level[@leveltype="subdivision"]</targetxml></li>
          <li><targetxml>primlaw:level[@leveltype="subparagraph"]</targetxml></li>
          <li><targetxml>primlaw:level[@leveltype="subpart"]</targetxml></li>
          <li><targetxml>primlaw:level[@leveltype="subregulation"]</targetxml></li>
          <li><targetxml>primlaw:level[@leveltype="subschedule"]</targetxml></li>
          <li><targetxml>primlaw:level[@leveltype="subrule"]</targetxml></li>
          <li><targetxml>primlaw:level[@leveltype="subsection"]</targetxml></li>
          <li><targetxml>primlaw:level[@leveltype="subtitle"]</targetxml></li>
          <li><targetxml>primlaw:level[@leveltype="supplement"]</targetxml></li>
          <li><targetxml>primlaw:level[@leveltype="table-of-contents"]</targetxml></li>
          <li><targetxml>primlaw:level[@leveltype="title"]</targetxml></li>
          <li><targetxml>primlaw:level[@leveltype="topic"]</targetxml></li>
          <li><targetxml>primlaw:level[@leveltype="treaty"]</targetxml></li>
          <li><targetxml>primlaw:level[@leveltype="agency"]</targetxml></li>
          <li><targetxml>primlaw:level[@leveltype="subagency"]</targetxml></li>
          <li><targetxml>primlaw:level[@leveltype="unclassified"]</targetxml></li>
        </ul></p>
      <p>As per LBU recommend the rules are listed below for some unique
        [<targetxml>@leveltype</targetxml>] values in NewLexis conversion: <ul>
          <li>If input <sourcexml>[@leveltype="sect"]</sourcexml>
            becomes <targetxml>primlaw:level[@leveltype="section"]</targetxml>
          </li>
          <li>If input <sourcexml>[@leveltype="subsect"]</sourcexml>
            becomes <targetxml>primlaw:level[@leveltype="subsection"]</targetxml>
          </li>
        </ul></p>
        <note class="- topic/note ">If the input files are having
          <sourcexml>@leveltype</sourcexml> values other than the tokenized list shown
          above the value will be set as
          <targetxml>@leveltype="unclassified"</targetxml>.</note> 
    </section>
    <example>
      <title>Mapping of <sourcexml>leg:level</sourcexml></title>
      <codeblock>

&lt;leg:level id="PHLAW.ACT000190.S8"&gt;
    &lt;leg:level-vrnt leveltype="sect" searchtype="LEGISLATION SECT" subdoc="true" toc-caption="SECTION 8. Disqualification of Judges"&gt;

      </codeblock>
      <b>becomes</b>
      <codeblock>

&lt;primlaw:level leveltype="section" includeintoc="true" alternatetoccaption="SECTION 8. Disqualification of Judges"&gt;

       </codeblock>
    </example> 
    
    <note>The <sourcexml>@searchtype</sourcexml> attribute will be suppressed from conversion except for the citation element.</note>
    <note>In New Lexis <targetxml>primlaw:level</targetxml> element is used instead of Rosetta elements <sourcexml>leg:level</sourcexml>and <sourcexml>leg:level-vrnt</sourcexml>. Pick the <sourcexml>@leveltype</sourcexml> value from <sourcexml>leg:level-vrnt</sourcexml> and the element <sourcexml>leg:level-vrnt</sourcexml> will be suppressed from conversion.</note>
 <section>
       <title>Changes</title>
       <p>2014-08-08: Created.</p>
</section>    
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-GPL\PH02-Statcode\leg.level.dita  -->
	<xsl:message>PH02-Statcode_leg.level.xsl requires manual development!</xsl:message> 

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

	<xsl:template match="toc-caption">

		<!--  Original Target XPath:  alternatetoccaption   -->
		<alternatetoccaption>
			<xsl:apply-templates select="@* | node()"/>
		</alternatetoccaption>

	</xsl:template>

	<xsl:template match="[@leveltype=&#34;sect&#34;]">

		<!--  Original Target XPath:  primlaw:level[@leveltype="section"]   -->
		<primlaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="[@leveltype=&#34;subsect&#34;]">

		<!--  Original Target XPath:  primlaw:level[@leveltype="subsection"]   -->
		<primlaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:level>

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