<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="UK08OpDoc_leg.level">
  <title>leg.level <lnpid>id-UK08OR-28813</lnpid></title>
  <body>
    <section>
      <p><sourcexml>leg:level</sourcexml> becomes <targetxml>primlaw:level</targetxml> which has a required attribute <targetxml>@leveltype</targetxml> and its values are tokenized as below:</p>
      <ul>
        <li><targetxml>primlaw:level[@leveltype="act"]</targetxml></li>
        <li><targetxml>primlaw:level[@leveltype="addendum"]</targetxml></li>
        <li><targetxml>primlaw:level[@leveltype="agreement"]</targetxml></li>
        <li><targetxml>primlaw:level[@leveltype="amendment"]</targetxml></li>
        <li><targetxml>primlaw:level[@leveltype="annex"]</targetxml></li>
        <li><targetxml>primlaw:level[@leveltype="appendix"]</targetxml></li>
        <li><targetxml>primlaw:level[@leveltype="article"]</targetxml></li>
        <li><targetxml>primlaw:level[@leveltype="attachment"]</targetxml></li>
        <li><targetxml>primlaw:level[@leveltype="canon"]</targetxml></li>
        <li><targetxml>primlaw:level[@leveltype="chapter"]</targetxml></li>
        <li><targetxml>primlaw:level[@leveltype="clause"]</targetxml></li>
        <li><targetxml>primlaw:level[@leveltype="companion"]</targetxml></li>
        <li><targetxml>primlaw:level[@leveltype="constitution"]</targetxml></li>
        <li><targetxml>primlaw:level[@leveltype="dictionary"]</targetxml></li>
        <li><targetxml>primlaw:level[@leveltype="division"]</targetxml></li>
        <li><targetxml>primlaw:level[@leveltype="endnote"]</targetxml></li>
        <li><targetxml>primlaw:level[@leveltype="exhibit"]</targetxml></li>
        <li><targetxml>primlaw:level[@leveltype="form"]</targetxml></li>
        <li><targetxml>primlaw:level[@leveltype="hierarchy-note"]</targetxml></li>
        <li><targetxml>primlaw:level[@leveltype="instrument"]</targetxml></li>
        <li><targetxml>primlaw:level[@leveltype="introduction"]</targetxml></li>
        <li><targetxml>primlaw:level[@leveltype="order"]</targetxml></li>
        <li><targetxml>primlaw:level[@leveltype="paragraph"]</targetxml></li>
        <li><targetxml>primlaw:level[@leveltype="part"]</targetxml></li>
        <li><targetxml>primlaw:level[@leveltype="preamble"]</targetxml></li>
        <li><targetxml>primlaw:level[@leveltype="procedural-guide"]</targetxml></li>
        <li><targetxml>primlaw:level[@leveltype="regulation"]</targetxml></li>
        <li><targetxml>primlaw:level[@leveltype="regulatory-code"]</targetxml></li>
        <li><targetxml>primlaw:level[@leveltype="rule"]</targetxml></li>
        <li><targetxml>primlaw:level[@leveltype="schedule"]</targetxml></li>
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
      </ul>
      <note>In New Lexis <targetxml>primlaw:level</targetxml> element is used instead of Rosetta elements <sourcexml>leg:level</sourcexml> and <sourcexml>leg:level-vrnt</sourcexml>. Pick the <sourcexml>@leveltype</sourcexml> value from <sourcexml>leg:level-vrnt</sourcexml> and the element <sourcexml>leg:level-vrnt</sourcexml> will be suppressed from conversion.</note>
      
      <p>Below are the unique values for <sourcexml>@leveltype</sourcexml> found in the source documents and the corresponding mapping in NewLexis.</p>
      <ul>
        <li><sourcexml>leg:level/leg:level-vrnt[@leveltype="division"]</sourcexml> becomes <targetxml>primlaw:level[@leveltype="division"]</targetxml></li>
        <li><sourcexml>leg:level/leg:level-vrnt[@leveltype="paragraph"]</sourcexml> becomes <targetxml>primlaw:level[@leveltype="paragraph"]</targetxml></li>
        <li><sourcexml>leg:level/leg:level-vrnt[@leveltype="section"]</sourcexml> becomes <targetxml>primlaw:level[@leveltype="section"]</targetxml></li>
        <li><sourcexml>leg:level/leg:level-vrnt[@leveltype="subparagraph"]</sourcexml> becomes <targetxml>primlaw:level[@leveltype="subparagraph"]</targetxml></li>
        <li><sourcexml>leg:level/leg:level-vrnt[@leveltype="subsection"]</sourcexml> becomes <targetxml>primlaw:level[@leveltype="subsection"]</targetxml></li>
        <li><sourcexml>leg:level/leg:level-vrnt[@leveltype="title"]</sourcexml> becomes <targetxml>primlaw:level[@leveltype="title"]</targetxml></li>
        <li><sourcexml>leg:level/leg:level-vrnt[@leveltype="chapter"]</sourcexml> becomes <targetxml>primlaw:level[@leveltype="chapter"]</targetxml></li>
        <li><sourcexml>leg:level/leg:level-vrnt[@leveltype="part"]</sourcexml> becomes <targetxml>primlaw:level[@leveltype="part"]</targetxml></li>
      </ul>
      <note>If the input files are having <sourcexml>@leveltype</sourcexml> values other than
        the tokenized list as shown above, the value will be set as
        <targetxml>@leveltype="unclassified"</targetxml>.</note>
      <pre>
&lt;leg:body&gt;
  &lt;leg:level&gt;
    &lt;leg:level-vrnt leveltype="section"&gt;
      &lt;leg:heading&gt;
        &lt;title&gt;
          &lt;emph typestyle="caps"&gt;SPECIAL RULES GOVERNING THE PLACING OF SPECIAL
                HIGH GRADE ZINC ON WARRANT&lt;/emph&gt;
       &lt;/title&gt;
     &lt;/leg:heading&gt;
     ...
    &lt;/leg:level-vrnt&gt;
  &lt;/leg:level&gt;
&lt;/leg:body&gt;

<b>Becomes</b>
&lt;regulation:body&gt;
  &lt;primlaw:level leveltype="section"&gt;
    &lt;heading&gt;
      &lt;title&gt;
        SPECIAL RULES GOVERNING THE PLACING OF SPECIAL
                HIGH GRADE ZINC ON WARRANT
      &lt;/title&gt;
    &lt;/heading&gt;
  &lt;/primlaw:level&gt;
&lt;/regulation:body&gt;

      </pre>
    </section>
  </body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK08_Quasi\UK08OR_QUASI_OPDOC_To_Regulation\UK08_OPDOC_Regulation-leg.level.dita  -->

	<xsl:template match="leg:level">
		<!--  Original Target XPath:  primlaw:level   -->
		<primlaw:level>
			<xsl:apply-templates select="leg:level-vrnt/@leveltype"/>
			<xsl:apply-templates/>
		</primlaw:level>
	</xsl:template>

	<xsl:template match="leg:level-vrnt/@leveltype">
		<!--  Original Target XPath:  primlaw:level[@leveltype="division"]   -->
		<xsl:attribute name="leveltype">
			<xsl:choose>
				<xsl:when test=".=('act','addendum','administrative-decision','agreement','amendment','annex','appendix','article','attachment','canon','chapter','clause','clausegroup','companion','constitution','convention','dictionary','division','endnote','exhibit','form','frontmatter','hierarchy-note','instrument','introduction','jurisdiction-variant','measure','order','paragraph','part','preamble','procedural-guide','regulation','regulatory-code','rule','schedule','scope-note','section','subarticle','subchapter','subclause','subdivision','subparagraph','subpart','subregulation','subschedule','subrule','subsection','subtitle','supplement','table-of-contents','title','topic','treaty','agency','subagency')">
					<xsl:value-of select="."/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:value-of select="'unclassified'"/>
				</xsl:otherwise>
			</xsl:choose>
		</xsl:attribute>
	</xsl:template>
	
</xsl:stylesheet>