<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" version="2.0" exclude-result-prefixes="dita leg">
    

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.heading">
  <title>leg:heading <lnpid>id-UK07-28215</lnpid></title>
  <body>
    <section>
      
        <p><sourcexml>leg:heading</sourcexml> becomes <targetxml>heading</targetxml> with attributes <sourcexml>@inline</sourcexml> becomes <targetxml>@inline</targetxml> and <sourcexml>@align</sourcexml> becomes <targetxml>@align</targetxml> which has tokenized values and populated as:
            <ul>
                <li><targetxml>heading[@align="left"]</targetxml></li>
                <li><targetxml>heading[@align="right"]</targetxml></li>
                <li><targetxml>heading[@align="center"]</targetxml></li>
            </ul>
            </p>
      <p>Attributes, <sourcexml>@subdoc</sourcexml> becomes <targetxml>@includeintoc</targetxml> and
                    <sourcexml>@toc-caption</sourcexml> becomes
                    <targetxml>@alternatetoccaption</targetxml>. The attributes
                    <targetxml>@includeintoc</targetxml> and
                    <targetxml>@alternatetoccaption</targetxml> will be added with the element
                    <targetxml>primlaw:level</targetxml> during NL conversion.</p>
        
        <note>When <sourcexml>leg:heading</sourcexml> occurs as a first child of
                    <sourcexml>leg:level/leg:level-vrnt/leg:levelbody/leg:bodytext</sourcexml>, then
                move <sourcexml>leg:heading</sourcexml> before
                    <sourcexml>leg:levelbody/leg:bodytext</sourcexml> and will become the first
                child of <targetxml>primlaw:level</targetxml> in NewLexis conversion. And if
                    <sourcexml>leg:level/leg:level-vrnt/leg:levelbody/leg:bodytext</sourcexml>
                contains only <sourcexml>leg:heading</sourcexml> and not any other sibling of
                    <sourcexml>leg:heading</sourcexml> then
                    <sourcexml>leg:levelbody/leg:bodytext</sourcexml> will be omitted during
                NewLexis conversion. For more clarification please refer below source and target
                examples.</note>
    </section>
      <example>
          <title>Source XML 1</title>
          <codeblock>

&lt;leg:level&gt;
    &lt;leg:level-vrnt&gt;
        &lt;leg:heading align="center"&gt;
            &lt;title&gt;
                &lt;emph typestyle="bf"&gt;EXPLANATORY NOTE&lt;/emph&gt;
            &lt;/title&gt;
        &lt;/leg:heading&gt;
        ........
    &lt;/leg:level-vrnt&gt;
    .........
&lt;/leg:level&gt;
              
          </codeblock>
      </example>
              <example>
          <title>Target XML 1</title>
          <codeblock>

&lt;primlaw:level leveltype="unclassified"&gt;
        &lt;heading align="center"&gt;
            &lt;title&gt;EXPLANATORY NOTE&lt;/title&gt;
        &lt;/heading&gt;
    .........
&lt;/primlaw:level&gt;
              
          </codeblock>
      </example>
      <example>
          <title>Source XML 2</title>
          <codeblock>

&lt;leg:level&gt;
    &lt;leg:level-vrnt&gt;
        &lt;leg:levelbody&gt;
            &lt;leg:level&gt;
                &lt;leg:level-vrnt leveltype="prov1"&gt;
                    &lt;leg:levelbody&gt;
                        &lt;leg:bodytext&gt;
                            &lt;leg:heading align="left" searchtype="LEGISLATION"&gt;
                                &lt;desig inline="true" searchtype="PROV-NUM"&gt;
                                    &lt;designum&gt;
                                        &lt;emph typestyle="bf"&gt;3&lt;/emph&gt;
                                    &lt;/designum&gt;
                                &lt;/desig&gt;
                                &lt;title searchtype="PROV-TITLE"&gt;
                                    &lt;emph typestyle="bf"&gt; The financial year of the National
                                        Employment Savings Trust Corporation&lt;/emph&gt;
                                &lt;/title&gt;
                            &lt;/leg:heading&gt;
                        &lt;/leg:bodytext&gt;
                        ..........
                        ..........
                    &lt;/leg:levelbody&gt;
                &lt;/leg:level-vrnt&gt;
            &lt;/leg:level&gt;
        &lt;/leg:levelbody&gt;
    &lt;/leg:level-vrnt&gt;
&lt;/leg:level&gt;
               
          </codeblock>
      </example>
      <example>
          <title>Target XML 2</title>
          <codeblock>

&lt;primlaw:level leveltype="unclassified"&gt;
    &lt;primlaw:level leveltype="section"&gt;
        &lt;heading align="left"&gt;
            &lt;desig inline="true"&gt;
                &lt;emph typestyle="bf"&gt;3&lt;/emph&gt;
            &lt;/desig&gt;
            &lt;title&gt;
                &lt;emph typestyle="bf"&gt; The financial year of the National
                    Employment Savings Trust Corporation&lt;/emph&gt;
            &lt;/title&gt;
        &lt;/heading&gt;
        ..........
        ..........
    &lt;/primlaw:level&gt;
&lt;/primlaw:level&gt;              
          </codeblock>
      </example>
      <section>
          <title>Changes:</title>
          <p>2013-09-26 <ph id="change_20130926_PY">Added a note with instructions, When <sourcexml>leg:heading</sourcexml> occurs as a first child of <sourcexml>leg:level/leg:level-vrnt/leg:levelbody/leg:bodytext</sourcexml>, then move <sourcexml>leg:heading</sourcexml> before <sourcexml>leg:levelbody/leg:bodytext</sourcexml> and will become the first child of <targetxml>primlaw:level</targetxml> in NewLexis conversion. (WebTeam #236020).</ph></p>
      </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK07-Regulations\leg.heading.dita  -->


	<xsl:template match="leg:heading">

		<!--  Original Target XPath:  heading   -->
		<heading>
		    <xsl:apply-templates select="node() except leg:empleg"/>
		</heading>
	    <xsl:apply-templates select="leg:empleg"/>

	</xsl:template>
<!--
	<xsl:template match="@inline">

		<!-\-  Original Target XPath:  @inline   -\->
		<xsl:attribute name="inline">
			<xsl:apply-templates select="node()"/>
		</xsl:attribute>

	</xsl:template>
-->
<!--	<xsl:template match="@align">

		<!-\-  Original Target XPath:  @align   -\->
		<xsl:attribute name="align">
			<xsl:apply-templates select="node()"/>
		</xsl:attribute>

	</xsl:template>
-->
<!--	<xsl:template match="@subdoc">

		<!-\-  Original Target XPath:  @includeintoc   -\->
		<xsl:attribute name="includeintoc">
			<xsl:apply-templates select="node()"/>
		</xsl:attribute>

	</xsl:template>
-->
<!--	<xsl:template match="@toc-caption">

		<!-\-  Original Target XPath:  @alternatetoccaption   -\->
		<xsl:attribute name="alternatetoccaption">
			<xsl:apply-templates select="node()"/>
		</xsl:attribute>

	</xsl:template>
-->
	<!--<xsl:template match="leg:bodytext">

		<!-\-  Original Target XPath:  primlaw:level   -\->
		<primlaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:level>

	</xsl:template>-->

<!--	<xsl:template match="leg:levelbody/leg:bodytext">

		<!-\-  Original Target XPath:  primlaw:level   -\->
		<primlaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:level>

	</xsl:template>-->

</xsl:stylesheet>