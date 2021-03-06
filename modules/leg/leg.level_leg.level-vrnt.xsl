<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.level_leg.level-vrnt">
  <title>leg:level <lnpid>id-PH01-33415</lnpid></title>
  <body>
      <section><p><sourcexml>leg:level/leg:level-vrnt</sourcexml> becomes <targetxml>primlaw:level</targetxml> and
                generate <targetxml>@leveltype</targetxml> attribute in
                    <targetxml>primlaw:level</targetxml>.</p>
          
          <p><sourcexml>leg:level-vrnt/@subdoc</sourcexml> becomes <targetxml>primlaw:level/@includeintoc</targetxml>.</p>
          <p><sourcexml>leg:level-vrnt/@toc-caption</sourcexml> becomes <targetxml>primlaw:level/@alternatetoccaption</targetxml>.</p>
          
          <p>Value of <targetxml>primlaw:level/@leveltype</targetxml> based on below mapping:</p>
          <ul>
              <li><sourcexml>leg:level-vrnt/@leveltype="act"</sourcexml> becomes
                        <targetxml>primlaw:level/@leveltype="act"</targetxml></li>
              <li><sourcexml>leg:level-vrnt/@leveltype="chapter"</sourcexml> becomes <targetxml>primlaw:level/@leveltype="chapter"</targetxml></li>
              <li><sourcexml>leg:level-vrnt/@leveltype="division"</sourcexml> becomes <targetxml>primlaw:level/@leveltype="division"</targetxml></li>
              <li><sourcexml>leg:level-vrnt/@leveltype="part"</sourcexml> becomes <targetxml>primlaw:level/@leveltype="part"</targetxml></li>
              <li><sourcexml>leg:level-vrnt/@leveltype="sect"</sourcexml> becomes <targetxml>primlaw:level/@leveltype="section"</targetxml></li>
              <li><sourcexml>leg:level-vrnt/@leveltype="subsect"</sourcexml> becomes <targetxml>primlaw:level/@leveltype="subsection"</targetxml></li>
          </ul>
          <p>Drop <sourcexml>@searchtype</sourcexml> attribute from conversion.</p>
          <pre>
&lt;leg:level id="PHLAW.ACT000009.BODY"&gt;
    &lt;leg:level-vrnt leveltype="act" searchtype="LEGISLATION ACT"&gt;
        &lt;leg:heading&gt;
            &lt;title&gt;&lt;refpt id="PHLAW.ACT000009" type="ext"/&gt;ACT NO. 9&lt;nl/&gt;AN ACT PROVIDING
                FOR AN ALLOWANCE IN ESTIMATING AND ASSESSING DUTIABLE GOODS IN CASE OF LOSS
                OR DESTRUCTION OF THE SAME&lt;/title&gt;
        &lt;/leg:heading&gt;
        ...
    &lt;/leg:level-vrnt&gt;
&lt;/leg:level&gt;

<b>becomes</b>

&lt;primlaw:level xml:id="PHLAW.ACT000009.BODY" leveltype="act"&gt;
    &lt;ref:anchor id="PHLAW.ACT000009" anchortype="global"/&gt; 
    &lt;heading&gt;
        &lt;title&gt;ACT NO. 9&lt;proc:nl/&gt;AN ACT PROVIDING FOR AN ALLOWANCE IN ESTIMATING AND
            ASSESSING DUTIABLE GOODS IN CASE OF LOSS OR DESTRUCTION OF THE SAME&lt;/title&gt;
    &lt;/heading&gt;
    ...
&lt;/primlaw:level&gt;
</pre>
      </section>
      
        <section>
            <title>Changes</title>
            <p>2014-08-07: Created.</p>
        </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-GPL\PH01-Legislation\leg.level_leg.level-vrnt.dita  -->
	<xsl:message>leg.level_leg.level-vrnt.xsl requires manual development!</xsl:message> 

	<xsl:template match="leg:level/leg:level-vrnt">

		<!--  Original Target XPath:  primlaw:level   -->
		<primlaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="leg:level-vrnt/@subdoc">

		<!--  Original Target XPath:  primlaw:level/@includeintoc   -->
		<primlaw:level>
			<xsl:attribute name="includeintoc">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="leg:level-vrnt/@toc-caption">

		<!--  Original Target XPath:  primlaw:level/@alternatetoccaption   -->
		<primlaw:level>
			<xsl:attribute name="alternatetoccaption">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="leg:level-vrnt/@leveltype=&#34;act&#34;">

		<!--  Original Target XPath:  primlaw:level/@leveltype="act"   -->
		<primlaw:level>
			<xsl:attribute name="leveltype">
				<xsl:text>act</xsl:text>
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

	<xsl:template match="leg:level-vrnt/@leveltype=&#34;division&#34;">

		<!--  Original Target XPath:  primlaw:level/@leveltype="division"   -->
		<primlaw:level>
			<xsl:attribute name="leveltype">
				<xsl:text>division</xsl:text>
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

	<xsl:template match="leg:level-vrnt/@leveltype=&#34;sect&#34;">

		<!--  Original Target XPath:  primlaw:level/@leveltype="section"   -->
		<primlaw:level>
			<xsl:attribute name="leveltype">
				<xsl:text>section</xsl:text>
			</xsl:attribute>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="leg:level-vrnt/@leveltype=&#34;subsect&#34;">

		<!--  Original Target XPath:  primlaw:level/@leveltype="subsection"   -->
		<primlaw:level>
			<xsl:attribute name="leveltype">
				<xsl:text>subsection</xsl:text>
			</xsl:attribute>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="@searchtype">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

</xsl:stylesheet>