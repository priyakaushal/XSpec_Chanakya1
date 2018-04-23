<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.level">
  <title>leg:level <lnpid>id-IN01-15418</lnpid></title>
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
            [<targetxml>@leveltype</targetxml>] values in NewLexis conversion: 
            <ul>
                <li><sourcexml>leg:level-vrnt/@leveltype="prov1"</sourcexml> becomes <targetxml>primlaw:level/@leveltype="section"</targetxml></li>
                <li><sourcexml>leg:level-vrnt/@leveltype="prov2"</sourcexml> becomes <targetxml>primlaw:level/@leveltype="subsection"</targetxml></li>
                <li><sourcexml>leg:level-vrnt/@leveltype="chapter"</sourcexml> becomes <targetxml>primlaw:level/@leveltype="chapter"</targetxml></li>
                <li><sourcexml>leg:level-vrnt/@leveltype="part"</sourcexml> becomes <targetxml>primlaw:level/@leveltype="part"</targetxml></li>
                <li><sourcexml>leg:level-vrnt/@leveltype="subtitle"</sourcexml> becomes <targetxml>primlaw:level/@leveltype="subtitle"</targetxml></li>
                <li><sourcexml>leg:level-vrnt/@leveltype="intro"</sourcexml> becomes <targetxml>primlaw:level/@leveltype="introduction"</targetxml></li>
            </ul>
         </p>
    </section>
    <example>
      <title>Mapping of <sourcexml>leg:level</sourcexml></title>
      <codeblock>

&lt;leg:level id="VIC_ACT_1998-25_PART4"&gt;
              &lt;leg:level-vrnt leveltype="part"&gt;


      </codeblock>
      <b>becomes</b>
      <codeblock>

&lt;primlaw:level xml:id="VIC_ACT_1998-25_PART4" leveltype="part"&gt;

       </codeblock>
    </example> 
    
    <note>If the input files are having <sourcexml>@leveltype</sourcexml> values other than the
      tokenized list shown above the value will be set as
        <targetxml>@leveltype="unclassified"</targetxml>.</note>
    <note>The <sourcexml>@searchtype</sourcexml> attribute will be suppressed from conversion except for the citation element.</note>
    <example>
      <title>Mapping of <sourcexml>leg:level</sourcexml></title>
      <codeblock>

&lt;leg:level&gt;
    &lt;leg:level-vrnt leveltype="chapter"&gt;
        &lt;leg:levelbody&gt;
            &lt;leg:bodytext&gt;
                &lt;leg:heading align="center"&gt;
                    &lt;desig inline="false" searchtype="CHAPTER-NUM"&gt;
                        &lt;desiglabel&gt;CHAPTER&lt;/desiglabel&gt;
                        &lt;designum&gt;VI&lt;/designum&gt;
                    &lt;/desig&gt;
                    &lt;title searchtype="CHAPTER-TITLE"&gt;PENALTIES&lt;/title&gt;
                &lt;/leg:heading&gt;
            &lt;/leg:bodytext&gt;
            .........
        &lt;/leg:levelbody&gt;
    &lt;/leg:level-vrnt&gt;
&lt;/leg:level&gt;

      </codeblock>
      <b>becomes</b>
      <codeblock>

&lt;primlaw:level leveltype="chapter"&gt;
    &lt;heading align="center"&gt;
        &lt;desig inline="false"&gt;CHAPTER VI&lt;/desig&gt;
        &lt;title&gt;PENALTIES&lt;/title&gt;
    &lt;/heading&gt;
    .........
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
       <p>2014-03-21: <ph id="change_20140321_SSX">Created</ph>.</p>
</section>    
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-GPL\IN01_Legislation\leg.level.dita  -->
	<xsl:message>IN01_Legislation_leg.level.xsl requires manual development!</xsl:message> 

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

	<xsl:template match="leg:level-vrnt/@leveltype=&#34;prov1&#34;">

		<!--  Original Target XPath:  primlaw:level/@leveltype="section"   -->
		<primlaw:level>
			<xsl:attribute name="leveltype">
				<xsl:text>section</xsl:text>
			</xsl:attribute>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="leg:level-vrnt/@leveltype=&#34;prov2&#34;">

		<!--  Original Target XPath:  primlaw:level/@leveltype="subsection"   -->
		<primlaw:level>
			<xsl:attribute name="leveltype">
				<xsl:text>subsection</xsl:text>
			</xsl:attribute>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="leg:level-vrnt/@leveltype=&#34;chapter&#34;">

		<!--  Original Target XPath:  primlaw:level/@leveltype="chapter"   -->
		<primlaw:level>
			<xsl:attribute name="leveltype">
				<xsl:text>chapter</xsl:text>
			</xsl:attribute>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="leg:level-vrnt/@leveltype=&#34;part&#34;">

		<!--  Original Target XPath:  primlaw:level/@leveltype="part"   -->
		<primlaw:level>
			<xsl:attribute name="leveltype">
				<xsl:text>part</xsl:text>
			</xsl:attribute>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="leg:level-vrnt/@leveltype=&#34;subtitle&#34;">

		<!--  Original Target XPath:  primlaw:level/@leveltype="subtitle"   -->
		<primlaw:level>
			<xsl:attribute name="leveltype">
				<xsl:text>subtitle</xsl:text>
			</xsl:attribute>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="leg:level-vrnt/@leveltype=&#34;intro&#34;">

		<!--  Original Target XPath:  primlaw:level/@leveltype="introduction"   -->
		<primlaw:level>
			<xsl:attribute name="leveltype">
				<xsl:text>introduction</xsl:text>
			</xsl:attribute>
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