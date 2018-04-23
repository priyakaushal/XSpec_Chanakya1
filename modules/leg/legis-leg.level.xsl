<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="legis-leg.level">
  <title>leg:level <lnpid>id-ST03-26634</lnpid></title>
  <body>
    <section>
      <p>
        <sourcexml>leg:level</sourcexml> becomes <targetxml>primlaw:level</targetxml> comes with following attributes:
        
        <ul>
          <li><sourcexml>@id</sourcexml> becomes <targetxml>@xml:id</targetxml></li>
          <li><sourcexml>@subdoc</sourcexml> becomes <targetxml>@includeintoc</targetxml></li>
          <li><sourcexml>@toc-caption</sourcexml> becomes <targetxml>@alternatetoccaption</targetxml></li>
          <li><sourcexml>leg:level-vrnt/@leveltype</sourcexml> becomes <targetxml>@leveltype</targetxml> and the values are tokenized for <targetxml>@leveltype</targetxml>. These are listed below:
            <ul>
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
            <note>In NewLexis the <targetxml>primlaw:level</targetxml> element is used instead of Rosetta elements <sourcexml>leg:level</sourcexml> and <sourcexml>leg:level-vrnt</sourcexml>. Pick the <sourcexml>@leveltype</sourcexml> value from <sourcexml>leg:level-vrnt</sourcexml> and the element <sourcexml>leg:level-vrnt</sourcexml> will be suppressed from conversion.</note>
            <p><b>Please refer the below listed unique values for <targetxml>@leveltype</targetxml> found in the different country content source documents and the corresponding mapping in NewLexis. For certain <targetxml>@leveltype</targetxml> values set as <targetxml>@leveltype="unclassified"</targetxml>.</b></p>
            <ol>
              <li><b>UK</b>
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
            </ol>
          </li>
        </ul>
      </p>
    </section>
    <example>
      <title>UK SOURCE XML 1: Mapping of <sourcexml>leg:level</sourcexml></title>
      <codeblock>

&lt;leg:body&gt;
 &lt;leg:level&gt;
  &lt;leg:level-vrnt leveltype="sched"&gt;
   &lt;leg:levelbody&gt;
    &lt;leg:level&gt;
     &lt;leg:level-vrnt leveltype="prov1"&gt;
      &lt;leg:levelbody&gt;
       &lt;leg:bodytext&gt;
        &lt;leg:heading align="left" searchtype="LEGISLATION"&gt;
         &lt;desig inline="true" searchtype="PROV-NUM"&gt;
          &lt;designum&gt;&lt;emph typestyle="bf"/&gt;&lt;/designum&gt;
         &lt;/desig&gt;
         &lt;title searchtype="PROV-TITLE"&gt;&lt;emph typestyle="bf"&gt;Distresses of the Exchequer. The owner may feed his cattle impounded. Sale of distress. No distress shall be taken of ploughing cattle, or sheep. Distress shall be reasonable.&lt;/emph&gt;&lt;/title&gt;
        &lt;/leg:heading&gt;
       &lt;/leg:bodytext&gt;
       &lt;leg:level&gt;
        &lt;leg:level-vrnt leveltype="prov2" searchtype="LEGISLATION"&gt;
         &lt;leg:levelbody&gt;
          &lt;leg:bodytext searchtype="LEGISLATION"&gt;
           &lt;!-- ETC. --&gt;
          &lt;/leg:bodytext&gt;
         &lt;/leg:levelbody&gt;
        &lt;/leg:level-vrnt&gt;
       &lt;/leg:level&gt;
       &lt;leg:comntry searchtype="ANNOTATIONS"&gt;
        &lt;level leveltype="comm30"&gt;
         &lt;bodytext&gt;
          &lt;heading searchtype="ANNOTATIONS"&gt;
           &lt;title&gt;&lt;emph typestyle="bf"&gt;NOTES&lt;/emph&gt;&lt;/title&gt;
          &lt;/heading&gt;
         &lt;/bodytext&gt;
         &lt;level leveltype="comm32"&gt;
          &lt;heading searchtype="ANNOTATIONS"&gt;
           &lt;title&gt;&lt;emph typestyle="bf"&gt;Amendment&lt;/emph&gt;&lt;/title&gt;
          &lt;/heading&gt;
          &lt;bodytext&gt;
           &lt;!-- ETC. --&gt;
          &lt;/bodytext&gt;
         &lt;/level&gt;
        &lt;/level&gt;
       &lt;/leg:comntry&gt;
      &lt;/leg:levelbody&gt;
     &lt;/leg:level-vrnt&gt;
    &lt;/leg:level&gt;
   &lt;/leg:levelbody&gt;
  &lt;/leg:level-vrnt&gt;
 &lt;/leg:level&gt;
&lt;/leg:body&gt;

      </codeblock>
      <b>Becomes</b>
      <title>UK TARGET XML 1: Mapping of <sourcexml>leg:level</sourcexml></title>
      <codeblock>

&lt;legis:body&gt;
 &lt;primlaw:level leveltype="schedule"&gt;
  &lt;primlaw:level leveltype="paragraph"&gt;
   &lt;primlaw:bodytext&gt;
    &lt;primlaw:level leveltype="unclassified"&gt;
     &lt;heading align="left"&gt;
      &lt;desig inline="true"&gt;
       &lt;emph typestyle="bf"/&gt;
      &lt;/desig&gt;
      &lt;title&gt;Distresses of the Exchequer. The owner may feed his cattle impounded. Sale of distress. No distress shall be taken of ploughing cattle, or sheep. Distress shall be reasonable.&lt;/title&gt;
     &lt;/heading&gt;
    &lt;/primlaw:level&gt;
   &lt;/primlaw:bodytext&gt;
   &lt;primlaw:level leveltype="subparagraph"&gt;
    &lt;primlaw:bodytext&gt;
     &lt;!-- ETC. --&gt;
    &lt;/primlaw:bodytext&gt;
   &lt;/primlaw:level&gt;
   &lt;annot:annotations&gt;
    &lt;annot:annotation-grp grptype="COMMENTARY"&gt;
     &lt;annot:annotation&gt;
      &lt;bodytext&gt;
       &lt;h&gt;
        &lt;emph typestyle="bf"&gt;NOTES&lt;/emph&gt;
       &lt;/h&gt;
      &lt;/bodytext&gt;
      &lt;annot:annotationlevel&gt;
       &lt;heading&gt;
        &lt;title&gt;Amendment&lt;/title&gt;
       &lt;/heading&gt;
       &lt;annot:bodytext&gt;
        &lt;!-- ETC. --&gt;
       &lt;/annot:bodytext&gt;
      &lt;/annot:annotationlevel&gt;
     &lt;/annot:annotation&gt;
    &lt;/annot:annotation-grp&gt;
   &lt;/annot:annotations&gt;
  &lt;/primlaw:level&gt;
 &lt;/primlaw:level&gt;
&lt;/legis:body&gt;

    </codeblock>
    </example>
   <section>
    <title>Changes</title>
    <p>2013-07-16: <ph id="change_20130716_SK">Instruction narrative edited for language; no changes to mappings, no impact to stylesheets.</ph></p>
    <p>2013-07-08: <ph id="change_20130708_AB">Created.</ph></p>
   </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-Standard\Legislation\legis-leg.level.dita  -->
	<xsl:message>legis-leg.level.xsl requires manual development!</xsl:message> 

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

	<xsl:template match="leg:level-vrnt/@leveltype">

		<!--  Original Target XPath:  @leveltype   -->
		<xsl:attribute name="leveltype">
			<xsl:apply-templates select="node()"/>
		</xsl:attribute>

	</xsl:template>

	<xsl:template match="leg:level-vrnt">

		<!--  Original Target XPath:  @leveltype   -->
		<xsl:attribute name="leveltype">
			<xsl:apply-templates select="node()"/>
		</xsl:attribute>

	</xsl:template>

	<xsl:template match="@leveltype">

		<!--  Original Target XPath:  @leveltype   -->
		<xsl:attribute name="leveltype">
			<xsl:apply-templates select="node()"/>
		</xsl:attribute>

	</xsl:template>

	<xsl:template match="leg:level/leg:level-vrnt[@leveltype=&#34;part&#34;]">

		<!--  Original Target XPath:  primlaw:level[@leveltype="part"]   -->
		<primlaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="leg:level/leg:level-vrnt[@leveltype=&#34;sched&#34;]">

		<!--  Original Target XPath:  primlaw:level[@leveltype="schedule"]   -->
		<primlaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="leg:level/leg:level-vrnt[@leveltype=&#34;prov1&#34;]">

		<!--  Original Target XPath:  primlaw:level[@leveltype="section"]   -->
		<primlaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="leg:level/leg:level-vrnt[@leveltype=&#34;prov2&#34;]">

		<!--  Original Target XPath:  primlaw:level[@leveltype="subsection"]   -->
		<primlaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="leg:level/leg:level-vrnt[@leveltype=&#34;prov3&#34;]">

		<!--  Original Target XPath:  primlaw:level[@leveltype="paragraph"]   -->
		<primlaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="leg:level/leg:level-vrnt[@leveltype=&#34;prov4&#34;]">

		<!--  Original Target XPath:  primlaw:level[@leveltype="subparagraph"]   -->
		<primlaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="leg:level[ancestor:: leg:level/leg:level-vrnt[@leveltype=&#34;sched&#34;]/leg:level-vrnt[@leveltype=&#34;prov1&#34;]">

		<!--  Original Target XPath:  primlaw:level[@leveltype="paragraph"]   -->
		<primlaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="leg:level[ancestor:: leg:level/leg:level-vrnt[@leveltype=&#34;sched&#34;]/leg:level-vrnt[@leveltype=&#34;prov2&#34;]">

		<!--  Original Target XPath:  primlaw:level[@leveltype="subparagraph"]   -->
		<primlaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="leg:level[ancestor:: leg:level/leg:level-vrnt[@leveltype=&#34;sched&#34;]/leg:level-vrnt[@leveltype=&#34;prov3&#34;]">

		<!--  Original Target XPath:  primlaw:level[@leveltype="subparagraph"]   -->
		<primlaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="leg:level[ancestor:: leg:level/leg:level-vrnt[@leveltype=&#34;sched&#34;]/leg:level-vrnt[@leveltype=&#34;prov4&#34;]">

		<!--  Original Target XPath:  primlaw:level[@leveltype="subparagraph"]   -->
		<primlaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:level>

	</xsl:template>

</xsl:stylesheet>