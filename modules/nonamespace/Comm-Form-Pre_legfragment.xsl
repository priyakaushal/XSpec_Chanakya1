<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Comm-Form-Pre_legfragment">
  <title><sourcexml>legfragment</sourcexml> <lnpid>id-MY03-16415</lnpid></title>
  <body>
    <section>
      <p><sourcexml>legfragment</sourcexml> becomes <targetxml>primlaw:excerpt</targetxml>.
        <note>For handling of <sourcexml>blockquote/legfragment</sourcexml> scenario, please refer to General Markup Section for handling <sourcexml>blockquote</sourcexml></note>
        <ul>
          <li>
            <sourcexml>legfragment</sourcexml> has legislative elements as <sourcexml>legfragment/leg:level</sourcexml>.
            <sourcexml>leg:level</sourcexml> becomes <targetxml>primlaw:level</targetxml> comes with following attributes:
            <ul>
              <li><sourcexml>@id</sourcexml> becomes <targetxml>@xml:id</targetxml></li>
              <li><sourcexml>@subdoc</sourcexml> becomes <targetxml>@includeintoc</targetxml></li>
              <li><sourcexml>@toc-caption</sourcexml> becomes <targetxml>@alternatetoccaption</targetxml></li>
              <li><sourcexml>@leveltype</sourcexml> becomes <targetxml>@leveltype</targetxml> and the values are tokenized for <targetxml>@leveltype</targetxml>. These are listed below:
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
              </li>
            </ul>
            <note>In New Lexis <targetxml>primlaw:level</targetxml> element is used instead of Rosetta elements <sourcexml>leg:level</sourcexml> and <sourcexml>leg:level-vrnt</sourcexml>. Pick the <sourcexml>@leveltype</sourcexml> value from <sourcexml>leg:level-vrnt</sourcexml> and the element <sourcexml>leg:level-vrnt</sourcexml> will be suppressed from conversion.</note>
            <note>If the input files are having <sourcexml>@leveltype</sourcexml> values other than the tokenized list shown above the value will be set as <targetxml>@leveltype="unclassified"</targetxml></note> And <targetxml>primlaw:level</targetxml> children are describe below:
            <ul>
              <li><sourcexml>leg:heading</sourcexml> becomes <targetxml>heading</targetxml> with attribute <sourcexml>@inline</sourcexml>, which becomes <targetxml>@inline</targetxml> and has tokenized values that are populated as:
                <ul>
                  <li><targetxml>heading[@inline="true"]</targetxml></li>
                  <li><targetxml>heading[@inline="false"]</targetxml></li>
                </ul>
              </li>
              <li>If the elements <sourcexml>leg:levelbody</sourcexml> and <sourcexml>leg:bodytext</sourcexml> occurs simultaneously becomes <targetxml>primlaw:bodytext</targetxml>.
                <note>If the element <sourcexml>leg:levelbody</sourcexml> has child <sourcexml>leg:level</sourcexml> then <sourcexml>leg:levelbody</sourcexml> will be suppressed from NL conversion.</note>
              </li>
            </ul>
            <targetxml>primlaw:level</targetxml> populated as below:
          </li>
        </ul>
      </p>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-MY\MY03_Commentary-From-Prece\Comm-Form-Pre_legfragment.dita  -->
<!--	<xsl:message>Comm-Form-Pre_legfragment.xsl requires manual development!</xsl:message> -->

	<xsl:template match="legfragment">
		<xsl:element name="primlaw:excerpt">
			<xsl:apply-templates select="@* | node()"/>
		</xsl:element>
	</xsl:template>
	<xsl:template match="leg:level[parent::legfragment]">
		<primlaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:level>
	</xsl:template>
	
	<xsl:template match="leg:level-vrnt[parent::leg:level][not(ancestor::legfragment)]">
		<xsl:element name="primlaw:level">
			<xsl:apply-templates select="@id"/>
			<xsl:if test="@leveltype">
				<xsl:attribute name="leveltype">
					<xsl:value-of select="@leveltype"/>
				</xsl:attribute>
			</xsl:if>
			<xsl:apply-templates select="@* | node()"/>
		</xsl:element>
	</xsl:template>
	
	<xsl:template match="leg:level-vrnt[parent::leg:level and ancestor::legfragment]">     
		<xsl:apply-templates select="node()"/>
	</xsl:template>
	
	<xsl:template match="leg:heading">
		<heading>
			<xsl:if test="@inline">
				<xsl:attribute name="inline">
					<xsl:value-of select="@inline"/>
				</xsl:attribute> 
			</xsl:if>         
			<xsl:apply-templates select="node()"/>
		</heading>
	</xsl:template>
	
	<xsl:template match="leg:levelbody | leg:levelbody/*">
		<xsl:apply-templates select="@* | node()"/>
	</xsl:template>
	
	
</xsl:stylesheet>