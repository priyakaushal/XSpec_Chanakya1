<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" xmlns:seclaw="http://www.lexisnexis.com/xmlschemas/content/legal/secondary-law/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.level">
  <title>leg:level <lnpid>id-MY04-16617</lnpid></title>
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
            <note>In New Lexis <targetxml>primlaw:level</targetxml> element is used instead of Rosetta elements <sourcexml>leg:level</sourcexml> and <sourcexml>leg:level-vrnt</sourcexml>. Pick the <sourcexml>@leveltype</sourcexml> value from <sourcexml>leg:level-vrnt</sourcexml> and the element <sourcexml>leg:level-vrnt</sourcexml> will be suppressed from conversion.</note>
            <note>If the <sourcexml>@subdoc</sourcexml> and <sourcexml>@toccaption</sourcexml> occur within <sourcexml>leg:level-vrnt</sourcexml> instead of <sourcexml>leg:level</sourcexml> then pick also the <sourcexml>@subdoc</sourcexml> and <sourcexml>@toccaption</sourcexml> value from <sourcexml>leg:level-vrnt</sourcexml></note>
            <note><sourcexml>leg:level-vrnt/@searchtype</sourcexml> will be suppressed from conversion.</note>
            <p><b>Below are the unique values for <targetxml>@leveltype</targetxml> found in the source documents and the corresponding mapping in NewLexis. For certain <targetxml>@leveltype</targetxml> values set as <targetxml>@leveltype="unclassified"</targetxml>.</b></p>
            <ul>
              <li><sourcexml>leg:level/leg:level-vrnt[@leveltype="act"]</sourcexml> becomes <targetxml>primlaw:level[@leveltype="act"]</targetxml></li>
              <li><sourcexml>leg:level/leg:level-vrnt[@leveltype="sect"]</sourcexml> becomes <targetxml>primlaw:level[@leveltype="section"]</targetxml></li>
              <li><sourcexml>leg:level/leg:level-vrnt[@leveltype="subsect"]</sourcexml> becomes <targetxml>primlaw:level[@leveltype="subsection"]</targetxml></li>
              <li><sourcexml>leg:level/leg:level-vrnt[@leveltype="para0"]</sourcexml> becomes <targetxml>primlaw:level[@leveltype="paragraph"]</targetxml></li>
              <li><sourcexml>leg:level/leg:level-vrnt[@leveltype="PARA0"]</sourcexml> becomes <targetxml>primlaw:level[@leveltype="paragraph"]</targetxml></li>
              <li><sourcexml>leg:level/leg:level-vrnt[@leveltype="schedulegrp"]</sourcexml> becomes <targetxml>primlaw:level[@leveltype="schedule"]</targetxml></li>
              <li><sourcexml>leg:level/leg:level-vrnt[@leveltype="schedule"]</sourcexml> becomes <targetxml>primlaw:level[@leveltype="schedule"]</targetxml></li>
              <li><sourcexml>leg:level/leg:level-vrnt[@leveltype="attachments"]</sourcexml> becomes <targetxml>primlaw:level[@leveltype="attachment"]</targetxml></li>
              <li><sourcexml>leg:level/leg:level-vrnt[@leveltype="attachment"]</sourcexml> becomes <targetxml>primlaw:level[@leveltype="attachment"]</targetxml></li>
              <li><sourcexml>leg:level/leg:level-vrnt[@leveltype="miscins"]</sourcexml> becomes <targetxml>primlaw:level[@leveltype="introduction"]</targetxml></li>
              <li><sourcexml>level[@leveltype="comm.intro"]</sourcexml> becomes <targetxml>seclaw:level[@leveltype="introduction"]</targetxml></li>
              <li><sourcexml>level[@leveltype="rule"]</sourcexml> becomes <targetxml>seclaw:level[@leveltype="rule"]</targetxml></li>
              <li><sourcexml>level[@leveltype="rul"]</sourcexml> becomes <targetxml>seclaw:level[@leveltype="rule"]</targetxml></li>
              <li><sourcexml>level[@leveltype="forms"]</sourcexml> becomes <targetxml>seclaw:level[@leveltype="form"]</targetxml></li>
              <li><sourcexml>level[@leveltype="form"]</sourcexml> becomes <targetxml>seclaw:level[@leveltype="form"]</targetxml></li>
              <li><sourcexml>level[@leveltype="subrul"]</sourcexml> becomes <targetxml>seclaw:level[@leveltype="subrule"]</targetxml></li>
              <li><sourcexml>level[@leveltype="part"]</sourcexml> becomes <targetxml>seclaw:level[@leveltype="part"]</targetxml></li>
              <li><sourcexml>level[@leveltype="division"]</sourcexml> becomes <targetxml>seclaw:level[@leveltype="division"]</targetxml></li>
              <li><sourcexml>level[@leveltype="leg-inst"]</sourcexml> becomes <targetxml>seclaw:level[@leveltype="instrument"]</targetxml></li>
              <li><sourcexml>level[@leveltype="clause"]</sourcexml> becomes <targetxml>seclaw:level[@leveltype="clause"]</targetxml></li>
              <li><sourcexml>level[@leveltype="subclause"]</sourcexml> becomes <targetxml>seclaw:level[@leveltype="subclause"]</targetxml></li>
              <li><sourcexml>level[@leveltype="regulation"]</sourcexml> becomes <targetxml>seclaw:level[@leveltype="regulation"]</targetxml></li>
              <li><sourcexml>level[@leveltype="reg"]</sourcexml> becomes <targetxml>seclaw:level[@leveltype="regulation"]</targetxml></li>
              <li><sourcexml>level[@leveltype="chapter"]</sourcexml> becomes <targetxml>seclaw:level[@leveltype="chapter"]</targetxml></li>
              <li><sourcexml>level[@leveltype="subreg"]</sourcexml> becomes <targetxml>seclaw:level[@leveltype="subregulation"]</targetxml></li>
              <li><sourcexml>level[@leveltype="subdivision"]</sourcexml> becomes <targetxml>seclaw:level[@leveltype="subdivision"]</targetxml></li>
              <li><sourcexml>level[@leveltype="group"]</sourcexml> becomes <targetxml>seclaw:level[@leveltype="division"]</targetxml></li>
              <li><sourcexml>level[@leveltype="order"]</sourcexml> becomes <targetxml>seclaw:level[@leveltype="order"]</targetxml></li>
              <li><sourcexml>level[@leveltype="prov1"]</sourcexml> becomes <targetxml>seclaw:level[@leveltype="section"]</targetxml></li>
              <li><sourcexml>level[@leveltype="comm30"]</sourcexml> becomes <targetxml>seclaw:level[@leveltype="unclassified"]</targetxml></li>
              <li><sourcexml>level[@leveltype="comm36"]</sourcexml> becomes <targetxml>seclaw:level[@leveltype="unclassified"]</targetxml></li>
              <li><sourcexml>leg:level/leg:level-vrnt[@leveltype="sched"]</sourcexml> becomes <targetxml>primlaw:level[@leveltype="schedule"]</targetxml></li>
              <li><sourcexml>leg:level/leg:level-vrnt[@leveltype="schedules"]</sourcexml> becomes <targetxml>primlaw:level[@leveltype="schedule"]</targetxml></li>
            </ul>
          </li>
        </ul>
      </p>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-MY\MY04-Annotated_legislation\leg.level.dita  -->
	<xsl:message>MY04-Annotated_legislation_leg.level.xsl requires manual development!</xsl:message> 

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

	<xsl:template match="@toccaption">

		<!--  Original Target XPath:  @leveltype   -->
		<xsl:attribute name="leveltype">
			<xsl:apply-templates select="node()"/>
		</xsl:attribute>

	</xsl:template>

	<xsl:template match="leg:level-vrnt/@searchtype">

		<!--  Original Target XPath:  @leveltype   -->
		<xsl:attribute name="leveltype">
			<xsl:apply-templates select="node()"/>
		</xsl:attribute>

	</xsl:template>

	<xsl:template match="leg:level/leg:level-vrnt[@leveltype=&#34;act&#34;]">

		<!--  Original Target XPath:  primlaw:level[@leveltype="act"]   -->
		<primlaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="leg:level/leg:level-vrnt[@leveltype=&#34;sect&#34;]">

		<!--  Original Target XPath:  primlaw:level[@leveltype="section"]   -->
		<primlaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="leg:level/leg:level-vrnt[@leveltype=&#34;subsect&#34;]">

		<!--  Original Target XPath:  primlaw:level[@leveltype="subsection"]   -->
		<primlaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="leg:level/leg:level-vrnt[@leveltype=&#34;para0&#34;]">

		<!--  Original Target XPath:  primlaw:level[@leveltype="paragraph"]   -->
		<primlaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="leg:level/leg:level-vrnt[@leveltype=&#34;PARA0&#34;]">

		<!--  Original Target XPath:  primlaw:level[@leveltype="paragraph"]   -->
		<primlaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="leg:level/leg:level-vrnt[@leveltype=&#34;schedulegrp&#34;]">

		<!--  Original Target XPath:  primlaw:level[@leveltype="schedule"]   -->
		<primlaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="leg:level/leg:level-vrnt[@leveltype=&#34;schedule&#34;]">

		<!--  Original Target XPath:  primlaw:level[@leveltype="schedule"]   -->
		<primlaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="leg:level/leg:level-vrnt[@leveltype=&#34;attachments&#34;]">

		<!--  Original Target XPath:  primlaw:level[@leveltype="attachment"]   -->
		<primlaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="leg:level/leg:level-vrnt[@leveltype=&#34;attachment&#34;]">

		<!--  Original Target XPath:  primlaw:level[@leveltype="attachment"]   -->
		<primlaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="leg:level/leg:level-vrnt[@leveltype=&#34;miscins&#34;]">

		<!--  Original Target XPath:  primlaw:level[@leveltype="introduction"]   -->
		<primlaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="level[@leveltype=&#34;comm.intro&#34;]">

		<!--  Original Target XPath:  seclaw:level[@leveltype="introduction"]   -->
		<seclaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</seclaw:level>

	</xsl:template>

	<xsl:template match="level[@leveltype=&#34;rule&#34;]">

		<!--  Original Target XPath:  seclaw:level[@leveltype="rule"]   -->
		<seclaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</seclaw:level>

	</xsl:template>

	<xsl:template match="level[@leveltype=&#34;rul&#34;]">

		<!--  Original Target XPath:  seclaw:level[@leveltype="rule"]   -->
		<seclaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</seclaw:level>

	</xsl:template>

	<xsl:template match="level[@leveltype=&#34;forms&#34;]">

		<!--  Original Target XPath:  seclaw:level[@leveltype="form"]   -->
		<seclaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</seclaw:level>

	</xsl:template>

	<xsl:template match="level[@leveltype=&#34;form&#34;]">

		<!--  Original Target XPath:  seclaw:level[@leveltype="form"]   -->
		<seclaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</seclaw:level>

	</xsl:template>

	<xsl:template match="level[@leveltype=&#34;subrul&#34;]">

		<!--  Original Target XPath:  seclaw:level[@leveltype="subrule"]   -->
		<seclaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</seclaw:level>

	</xsl:template>

	<xsl:template match="level[@leveltype=&#34;part&#34;]">

		<!--  Original Target XPath:  seclaw:level[@leveltype="part"]   -->
		<seclaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</seclaw:level>

	</xsl:template>

	<xsl:template match="level[@leveltype=&#34;division&#34;]">

		<!--  Original Target XPath:  seclaw:level[@leveltype="division"]   -->
		<seclaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</seclaw:level>

	</xsl:template>

	<xsl:template match="level[@leveltype=&#34;leg-inst&#34;]">

		<!--  Original Target XPath:  seclaw:level[@leveltype="instrument"]   -->
		<seclaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</seclaw:level>

	</xsl:template>

	<xsl:template match="level[@leveltype=&#34;clause&#34;]">

		<!--  Original Target XPath:  seclaw:level[@leveltype="clause"]   -->
		<seclaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</seclaw:level>

	</xsl:template>

	<xsl:template match="level[@leveltype=&#34;subclause&#34;]">

		<!--  Original Target XPath:  seclaw:level[@leveltype="subclause"]   -->
		<seclaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</seclaw:level>

	</xsl:template>

	<xsl:template match="level[@leveltype=&#34;regulation&#34;]">

		<!--  Original Target XPath:  seclaw:level[@leveltype="regulation"]   -->
		<seclaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</seclaw:level>

	</xsl:template>

	<xsl:template match="level[@leveltype=&#34;reg&#34;]">

		<!--  Original Target XPath:  seclaw:level[@leveltype="regulation"]   -->
		<seclaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</seclaw:level>

	</xsl:template>

	<xsl:template match="level[@leveltype=&#34;chapter&#34;]">

		<!--  Original Target XPath:  seclaw:level[@leveltype="chapter"]   -->
		<seclaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</seclaw:level>

	</xsl:template>

	<xsl:template match="level[@leveltype=&#34;subreg&#34;]">

		<!--  Original Target XPath:  seclaw:level[@leveltype="subregulation"]   -->
		<seclaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</seclaw:level>

	</xsl:template>

	<xsl:template match="level[@leveltype=&#34;subdivision&#34;]">

		<!--  Original Target XPath:  seclaw:level[@leveltype="subdivision"]   -->
		<seclaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</seclaw:level>

	</xsl:template>

	<xsl:template match="level[@leveltype=&#34;group&#34;]">

		<!--  Original Target XPath:  seclaw:level[@leveltype="division"]   -->
		<seclaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</seclaw:level>

	</xsl:template>

	<xsl:template match="level[@leveltype=&#34;order&#34;]">

		<!--  Original Target XPath:  seclaw:level[@leveltype="order"]   -->
		<seclaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</seclaw:level>

	</xsl:template>

	<xsl:template match="level[@leveltype=&#34;prov1&#34;]">

		<!--  Original Target XPath:  seclaw:level[@leveltype="section"]   -->
		<seclaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</seclaw:level>

	</xsl:template>

	<xsl:template match="level[@leveltype=&#34;comm30&#34;]">

		<!--  Original Target XPath:  seclaw:level[@leveltype="unclassified"]   -->
		<seclaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</seclaw:level>

	</xsl:template>

	<xsl:template match="level[@leveltype=&#34;comm36&#34;]">

		<!--  Original Target XPath:  seclaw:level[@leveltype="unclassified"]   -->
		<seclaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</seclaw:level>

	</xsl:template>

	<xsl:template match="leg:level/leg:level-vrnt[@leveltype=&#34;sched&#34;]">

		<!--  Original Target XPath:  primlaw:level[@leveltype="schedule"]   -->
		<primlaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="leg:level/leg:level-vrnt[@leveltype=&#34;schedules&#34;]">

		<!--  Original Target XPath:  primlaw:level[@leveltype="schedule"]   -->
		<primlaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:level>

	</xsl:template>

</xsl:stylesheet>