<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.heading">
  <title>leg:heading <lnpid>id-IN01-15414</lnpid></title>
  <body>
    <section>
        <p><sourcexml>leg:heading</sourcexml> becomes <targetxml>heading</targetxml> with attributes <sourcexml>@subdoc</sourcexml> becomes <targetxml>@includeintoc</targetxml>, <sourcexml>@toc-caption</sourcexml> becomes <targetxml>@alternatetoccaption</targetxml>, <sourcexml>@align</sourcexml> becomes <targetxml>@align</targetxml> and <sourcexml>@inline</sourcexml> becomes <targetxml>@inline</targetxml>.</p>
     
      <note>The attributes <targetxml>@includeintoc</targetxml> and <targetxml>@alternatetoccaption</targetxml> will be part of element <targetxml>primlaw:level</targetxml>.</note>      
    </section>
    <example>
            <title>Example 1 Source XML </title>
            <codeblock>

&lt;leg:level id="WJA.1958.Body"
    toc-caption="THE WORKING JOURNALISTS (FIXATION OF RATES OF WAGES) ACT, 1958"
    subdoc="false"&gt;
    &lt;leg:level-vrnt searchtype="LEGISLATION"&gt;
        &lt;leg:heading&gt;
            &lt;title&gt;THE WORKING JOURNALISTS &amp;#x0028;FIXATION OF RATES OF WAGES&amp;#x0029; ACT,
                1958 &amp;#x0028;29 OF 1958&amp;#x0029;&lt;/title&gt;
        &lt;/leg:heading&gt;
        .......
    &lt;/leg:level-vrnt&gt;
&lt;/leg:level&gt;

            </codeblock>
    </example>
      
         <example>
             <title>Example 1 Target XML </title>
            <codeblock>

&lt;primlaw:level xml:id="WJA.1958.Body"  alternatetoccaption="THE WORKING JOURNALISTS (FIXATION OF RATES OF WAGES) ACT, 1958" includeintoc="false" leveltype="unclassified"&gt;
    &lt;heading&gt;
        &lt;title&gt;THE WORKING JOURNALISTS &amp;#x0028;FIXATION OF RATES OF WAGES&amp;#x0029; ACT,
        1958 &amp;#x0028;29 OF 1958&amp;#x0029;&lt;/title&gt; 
    &lt;/heading&gt;
    .......    
&lt;/primlaw:level&gt;
    
      </codeblock>
        </example> 
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
      
      <example>
            <title>Example 2 Source XML</title>
            <codeblock>

&lt;leg:level&gt;
  &lt;leg:level-vrnt leveltype="prov1" searchtype="SECTION"&gt;
   &lt;leg:levelbody&gt;
     &lt;leg:bodytext searchtype="SECTION"&gt;
       &lt;leg:heading align="left" searchtype="SECTION"&gt;
           &lt;desig inline="true" searchtype="PROVISION-SECTION"&gt;
             &lt;desiglabel&gt;SECTION&lt;/desiglabel&gt;
                 &lt;designum&gt;1&lt;/designum&gt;
           &lt;/desig&gt;
           &lt;title searchtype="SECTION-TITLE"&gt;
             &lt;refpt id="IPCODE_00001" type="ext"&gt;Title and extent of operation of the Code.&lt;/refpt&gt;
           &lt;/title&gt;
      &lt;/leg:heading&gt;
    &lt;/leg:bodytext&gt;
       .........
   &lt;/leg:levelbody&gt;
  &lt;/leg:level-vrnt&gt;
&lt;/leg:level&gt;

            </codeblock>
      </example>
      
      <example>
          <title>Example 2 Target XML</title>
            <codeblock>

&lt;primlaw:level leveltype="section"&gt;
    &lt;ref:anchor id="IPCODE_00001" anchortype="global"/&gt;
    &lt;heading align="left"&gt;
        &lt;desig inline="true"&gt;SECTION 1&lt;/desig&gt;
        &lt;title&gt;Title and extent of operation of the Code.&lt;/title&gt;
    &lt;/heading&gt;
    ..........
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
      
      
<section>
    <title>Changes</title>
       <p>2014-03-21: <ph id="change_20140321_SSX">Created</ph>.</p>
</section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-GPL\IN01_Legislation\leg.heading.dita  -->
	<xsl:message>IN01_Legislation_leg.heading.xsl requires manual development!</xsl:message> 

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