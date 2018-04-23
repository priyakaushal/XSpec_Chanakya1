<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.heading">
  <title>leg:heading <lnpid>id-IN02-15611</lnpid></title>
  <body>
    <section>
        <p><sourcexml>leg:heading</sourcexml> becomes <targetxml>heading</targetxml> with attributes <sourcexml>@subdoc</sourcexml> becomes <targetxml>@includeintoc</targetxml>, <sourcexml>@toc-caption</sourcexml> becomes <targetxml>@alternatetoccaption</targetxml>, <sourcexml>@align</sourcexml> becomes <targetxml>@align</targetxml> and <sourcexml>@inline</sourcexml> becomes <targetxml>@inline</targetxml>.</p>
     
      <note>The attributes <targetxml>@includeintoc</targetxml> and <targetxml>@alternatetoccaption</targetxml> will be part of element <targetxml>primlaw:level</targetxml>.</note>      
    </section>
    <example>
            <title>Mapping of <sourcexml>leg:heading</sourcexml></title>
            <codeblock>

&lt;leg:level id="A000001y1961e.S4"&gt;
    &lt;leg:level-vrnt toc-caption="4. Amendment of section 5 (1)." subdoc="true" searchtype="LEGISLATION SECT" leveltype="sect"&gt;
        &lt;leg:heading inline="true"&gt;
            &lt;desig inline="true" searchtype="SECT-NUM"&gt;
                &lt;designum&gt;4.&lt;/designum&gt;
            &lt;/desig&gt;
            &lt;title inline="true" searchtype="SECT-TITLE"&gt;
                &lt;refpt type="ext" id="A000001y1961e.S4"/&gt;Amendment of section 5 (1).&lt;/title&gt;
        &lt;/leg:heading&gt;

      </codeblock>
            <b>becomes</b>
            <codeblock>

&lt;primlaw:level alternatetoccaption="4. Amendment of section 5 (1)." includeintoc="true" leveltype="section"&gt;
    &lt;ref:anchor id="A000001y1961e.S4" anchortype="global"/&gt;
    &lt;heading inline="true"&gt;
        &lt;title inline="true"&gt;Amendment of section 5 (1).&lt;/title&gt;
        &lt;desig inline="true"&gt;4.&lt;/desig&gt;
     &lt;/heading&gt;
     &lt;!--...--&gt;
&lt;/primlaw:level&gt;
    
      </codeblock>
        </example> 
      <note>When <sourcexml>leg:heading</sourcexml> occurs as a first child of
                <sourcexml>leg:level/leg:level-vrnt/leg:levelbody/leg:bodytext</sourcexml>, then
            move <sourcexml>leg:heading</sourcexml> before
                <sourcexml>leg:levelbody/leg:bodytext</sourcexml> and will become the first child of
                <targetxml>primlaw:level</targetxml> in NewLexis conversion. And if
                <sourcexml>leg:level/leg:level-vrnt/leg:levelbody/leg:bodytext</sourcexml> contains
            only <sourcexml>leg:heading</sourcexml> and not any other sibling of
                <sourcexml>leg:heading</sourcexml> then
                <sourcexml>leg:levelbody/leg:bodytext</sourcexml> will be omitted during NewLexis
            conversion. For more clarification please refer below source and target examples.</note>
      <example>
          <title>Example 2 Source XML</title>
          <codeblock>

&lt;leg:level&gt;
    &lt;leg:level-vrnt leveltype="prov1" searchtype="SECTION"&gt;
        &lt;leg:levelbody&gt;
            &lt;leg:bodytext searchtype="SECTION"&gt;
                &lt;leg:heading align="left" searchtype="SECTION"&gt;
                    &lt;desig inline="true" searchtype="SECT-NUM"&gt;
                        
                        &lt;designum&gt;6&lt;/designum&gt;
                    &lt;/desig&gt;
                    &lt;title searchtype="SECTION-TITLE"&gt;
                        &lt;refpt type="ext" id="NHRC_REGU_00006"&gt;Secretariat Assistance.&lt;/refpt&gt;
                    &lt;/title&gt;
                &lt;/leg:heading&gt;
            &lt;/leg:bodytext&gt;
            .............
        &lt;/leg:levelbody&gt;
    &lt;/leg:level-vrnt&gt;
&lt;/leg:level&gt;

            </codeblock>
      </example>
      
      <example>
          <title>Example 2 Target XML</title>
          <codeblock>

&lt;primlaw:level leveltype="section"&gt;
    &lt;ref:anchor id="NHRC_REGU_00006" anchortype="global"/&gt;
    &lt;heading align="left"&gt;
        &lt;desig inline="true"&gt;6&lt;/desig&gt;
        &lt;title&gt;Secretariat Assistance.&lt;/title&gt;
    &lt;/heading&gt;
    ........
&lt;/primlaw:level&gt;

    
      </codeblock>
      </example>
      <example>
          <title>Example 3 Source XML</title>
          <codeblock>

&lt;leg:level&gt;
    &lt;leg:level-vrnt leveltype="prov1" searchtype="SECTION"&gt;
        &lt;leg:levelbody&gt;
            &lt;leg:bodytext searchtype="SECTION"&gt;
                &lt;leg:heading align="left" searchtype="SECTION"&gt;
                        &lt;desig inline="true" searchtype="PROVISION-NUM"&gt;
                            &lt;designum&gt;7.&lt;/designum&gt;
                        &lt;/desig&gt;
                        &lt;title searchtype="SECTION-TITLE"&gt;Inspectors.&amp;#x2014;&lt;/title&gt;
                &lt;/leg:heading&gt;
                &lt;p&gt;
                    &lt;text&gt; &lt;!-- ..... --&gt; &lt;/text&gt;
                &lt;/p&gt;
                &lt;leg:comntry searchtype="commentary"&gt;
                           &lt;!-- ..... --&gt;
                &lt;/leg:comntry&gt;
                &lt;footnotegrp&gt;
                            &lt;!-- ..... --&gt;           
                &lt;/footnotegrp&gt;
            &lt;/leg:bodytext&gt;
        &lt;/leg:levelbody&gt;
    &lt;/leg:level-vrnt&gt;
&lt;/leg:level&gt;

          </codeblock>
      </example>
      <example>
          <title>Example 3 Target XML</title>
          <codeblock>

&lt;primlaw:level leveltype="section"&gt;
    &lt;heading align="left"&gt;
        &lt;desig inline="true"&gt;7.&lt;/desig&gt;
            &lt;title&gt;Inspectors.&amp;#x2014;&lt;/title&gt;
     &lt;/heading&gt;
     &lt;primlaw:bodytext&gt;
            &lt;p&gt;
                  &lt;text&gt; &lt;!-- ..... --&gt; &lt;/text&gt;
            &lt;/p&gt;
      &lt;/primlaw:bodytext&gt;
      &lt;annot:annotations&gt;
              &lt;annot:annotation-grp grptype="COMMENTARY"&gt;
                        &lt;!-- ..... --&gt;
              &lt;/annot:annotation-grp&gt;
      &lt;/annot:annotations&gt;
      &lt;primlaw:bodytext&gt;
            &lt;p&gt;
              &lt;text&gt;
                  &lt;footnotegroup&gt;
                          &lt;!-- ..... --&gt;
                  &lt;/footnotegroup&gt;
              &lt;/text&gt;
             &lt;/p&gt;
     &lt;/primlaw:bodytext&gt;
&lt;/primlaw:level&gt;
          
          

</codeblock>
      </example>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-GPL\IN02-Regulations\leg.heading.dita  -->
	<xsl:message>IN02-Regulations_leg.heading.xsl requires manual development!</xsl:message> 

	<xsl:template match="leg:heading">

		<!--  Original Target XPath:  heading   -->
		<heading>
			<xsl:apply-templates select="@* | node()"/>
		</heading>

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

	<xsl:template match="@align">

		<!--  Original Target XPath:  @align   -->
		<xsl:attribute name="align">
			<xsl:apply-templates select="node()"/>
		</xsl:attribute>

	</xsl:template>

	<xsl:template match="@inline">

		<!--  Original Target XPath:  @inline   -->
		<xsl:attribute name="inline">
			<xsl:apply-templates select="node()"/>
		</xsl:attribute>

	</xsl:template>

	<xsl:template match="leg:level/leg:level-vrnt/leg:levelbody/leg:bodytext">

		<!--  Original Target XPath:  primlaw:level   -->
		<primlaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="leg:levelbody/leg:bodytext">

		<!--  Original Target XPath:  primlaw:level   -->
		<primlaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:level>

	</xsl:template>

</xsl:stylesheet>