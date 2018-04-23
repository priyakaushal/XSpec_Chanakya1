<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.level-LxAdv-primlaw.level">
  <title>leg:level <lnpid>id-IN09-38014</lnpid></title>
 <body>
    <section>
      <p>
        <ul>
          <li><sourcexml>leg:level</sourcexml> becomes <targetxml>primlaw:level</targetxml> comes
            with attributes, <sourcexml>@id</sourcexml> Becomes <targetxml>@xml:id</targetxml>
            <sourcexml>@leveltype</sourcexml> becomes <targetxml>@leveltype</targetxml> attributes
              <sourcexml>@subdoc</sourcexml> becomes <targetxml>@includeintoc</targetxml> and
              <sourcexml>toc-caption</sourcexml> becomes <targetxml>alternatetoccaption</targetxml>,
            the values are tokenized, <ul>
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
            </ul> and populated as: <note>If the input files are having @leveltype values other than
              the tokenized list shown above the value will be set as
                <targetxml>@leveltype="unclassified"</targetxml>.</note>
            <pre>
      
       &lt;leg:level id="ARYR.0126.rul.d2e3604"&gt;
            &lt;leg:level-vrnt searchtype="LEGISLATION RULE" leveltype="rule"&gt;
                &lt;leg:heading align="center"&gt;
                    &lt;title&gt;The Army Rules, 1954&lt;/title&gt;
                &lt;/leg:heading&gt;
       ...
        &lt;/leg:level&gt;
    
    </pre>
            <b>Becomes</b>
            <pre>  
    
    &lt;primlaw:level xml:id="ARYR.0126.rul.d2e3604" leveltype="rule"&gt;
          &lt;heading align="center"&gt;
              &lt;title&gt;The Army Rules, 1954&lt;/title&gt;
           &lt;/heading&gt;
...
    &lt;/primlaw:level&gt;
    
    </pre>
            <sourcexml>leg:level-vrnt</sourcexml> will be omitted and all its contents will be
            retained in conversion <note>In New Lexis <targetxml>primlaw:level</targetxml> element
              is used instead of Rosetta elements <sourcexml>leg:level</sourcexml> and
                <sourcexml>leg:level-vrnt</sourcexml>. So element
                <sourcexml>leg:level-vrnt</sourcexml> will be omitted from conversion and attributes
                <sourcexml>/leg:level-vrnt/@leveltype</sourcexml> will become
                <targetxml>primlaw:level/@leveltype</targetxml> with its value,
                <sourcexml>/leg:level-vrnt/@searchtype</sourcexml> will be suppressed,
                <sourcexml>/leg:level-vrnt/@subdoc</sourcexml> will become
                <targetxml>primlaw:level/@includeintoc</targetxml> with its value and
                <sourcexml>/leg:level-vrnt/@toc-caption</sourcexml> will become
                <targetxml>/primlaw:level/@alternatetoccaption</targetxml> with all its
              value.</note>
          </li>
        </ul>
      </p>
    </section>  
   <section>
     <title>Changes</title>
     <p>2016-06-27: <ph id="change_20160627_AS">Created</ph>.</p>
   </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-IN\IN09-Courtrules\leg.level-LxAdv-primlaw.level.dita  -->
	<xsl:message>IN09-Courtrules_leg.level-LxAdv-primlaw.level.xsl requires manual development!</xsl:message> 

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

	<xsl:template match="leg:level-vrnt">

		<!--  Original Target XPath:  primlaw:level   -->
		<primlaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="/leg:level-vrnt/@leveltype">

		<!--  Original Target XPath:  primlaw:level/@leveltype   -->
		<primlaw:level>
			<xsl:attribute name="leveltype">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="/leg:level-vrnt/@searchtype">

		<!--  Original Target XPath:  primlaw:level/@includeintoc   -->
		<primlaw:level>
			<xsl:attribute name="includeintoc">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="/leg:level-vrnt/@subdoc">

		<!--  Original Target XPath:  primlaw:level/@includeintoc   -->
		<primlaw:level>
			<xsl:attribute name="includeintoc">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="/leg:level-vrnt/@toc-caption">

		<!--  Original Target XPath:  /primlaw:level/@alternatetoccaption   -->
		<primlaw:level>
			<xsl:attribute name="alternatetoccaption">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</primlaw:level>

	</xsl:template>

</xsl:stylesheet>