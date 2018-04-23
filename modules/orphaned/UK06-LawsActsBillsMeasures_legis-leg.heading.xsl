<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="legis-leg.heading">
  <title>leg:heading <lnpid>id-UK06-28007</lnpid></title>
  <body>
    <section>
      <p><sourcexml>leg:heading</sourcexml> becomes <targetxml>heading</targetxml> comes with following attributes:
        <ul>
          <li><sourcexml>@align</sourcexml> becomes <targetxml>@align</targetxml> which has tokenized values and populated as:
            <ul>
              <li><targetxml>heading[@align="left"]</targetxml></li>
              <li><targetxml>heading[@align="right"]</targetxml></li>
              <li><targetxml>heading[@align="center"]</targetxml></li>
            </ul>
          </li>
          <li><sourcexml>@subdoc</sourcexml> becomes <targetxml>@includeintoc</targetxml></li>
          <li><sourcexml>@toc-caption</sourcexml> becomes <targetxml>@alternatetoccaption</targetxml></li>
        </ul>
        <note>The attributes <targetxml>@includeintoc</targetxml> and <targetxml>@alternatetoccaption</targetxml> will be part of element <targetxml>primlaw:level</targetxml>.</note>
      </p>
    </section>
    <example>
      <title>CANADA SOURCE XML 1: Mapping of <sourcexml>leg:heading</sourcexml></title>
      <codeblock>

&lt;leg:level&gt;
 &lt;leg:level-vrnt searchtype="LEGISLATION" leveltype="2"&gt;
  &lt;leg:heading subdoc="true" toc-caption="FORM B" align="center"&gt;
   &lt;title&gt;FORM B&lt;/title&gt;
  &lt;/leg:heading&gt;
 &lt;/leg:level-vrnt&gt;
 &lt;!-- ETC. --&gt;
&lt;/leg:level&gt;  

      </codeblock>
      <b>Becomes</b>
      <title>CANADA TARGET XML 1: Mapping of <sourcexml>leg:heading</sourcexml></title>
      <codeblock>

&lt;primlaw:level leveltype="unclassified" includeintoc="true" alternatetoccaption="FORM B"&gt;
 &lt;heading&gt;
  &lt;title&gt;FORM B&lt;/title&gt;
 &lt;/heading&gt;
 &lt;!-- ETC. --&gt;
&lt;/primlaw:level&gt;
    
      </codeblock>
      <note><b>For CANADA:</b> If <sourcexml>@align</sourcexml> attribute value is <b>"center"</b> (i.e. align="center") then remove the <sourcexml>@align</sourcexml>attribute because this attribute default value is <targetxml>"left"</targetxml>. This rule is applicable for CAN content stream: CA05- Acts &amp; Bills.</note>
    </example>
    <section>
      <title>Changes</title>
      <p>2013-07-08: <ph id="change_20130708_AB">Created.</ph></p>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK06-LawsActsBillsMeasures\legis-leg.heading.dita  -->
	<xsl:message>UK06-LawsActsBillsMeasures_legis-leg.heading.xsl requires manual development!</xsl:message> 

	<xsl:template match="leg:heading">

		<!--  Original Target XPath:  heading   -->
		<heading>
			<xsl:apply-templates select="@* | node()"/>
		</heading>

	</xsl:template>

	<xsl:template match="@align">

		<!--  Original Target XPath:  @align   -->
		<xsl:attribute name="align">
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

</xsl:stylesheet>