<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:glp="http://www.lexis-nexis.com/glp" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" version="2.0" exclude-result-prefixes="dita glp leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.heading">
    <title>leg:heading <lnpid>id-PH02-33212</lnpid></title>
    <body>
        <section>
            <p><sourcexml>leg:heading</sourcexml> becomes <targetxml>heading</targetxml> comes with following attributes:
                <ul>
                    <li><sourcexml>@align</sourcexml> becomes <targetxml>@align</targetxml> which
                        has tokenized values and populated as: <ul>
                            <li><targetxml>heading[@align="left"]</targetxml></li>
                            <li><targetxml>heading[@align="right"]</targetxml></li>
                            <li><targetxml>heading[@align="center"]</targetxml></li>
                        </ul>
                    </li>
                    <li><sourcexml>@subdoc</sourcexml> becomes
                        <targetxml>@includeintoc</targetxml></li>
                    <li><sourcexml>@toc-caption</sourcexml> becomes
                            <targetxml>@alternatetoccaption</targetxml></li>
                </ul>
                </p>
            <note>The attributes <targetxml>@includeintoc</targetxml> and <targetxml>@alternatetoccaption</targetxml> will be part of element <targetxml>primlaw:level</targetxml>.</note>      
        </section>
        <example>
            <title>Mapping of <sourcexml>leg:heading</sourcexml></title>
            <codeblock>

&lt;leg:level id="PHLAW.ACT000190.S8"&gt;
    &lt;leg:level-vrnt leveltype="sect" searchtype="LEGISLATION SECT" subdoc="true" toc-caption="SECTION 8. Disqualification of Judges"&gt;
        &lt;leg:heading inline="true"&gt;
            &lt;desig inline="true" searchtype="SECT-NUM"&gt;&lt;designum&gt;SECTION 8.&lt;/designum&gt;&lt;/desig&gt;
            &lt;title inline="true" searchtype="SECT-TITLE"&gt;&lt;refpt id="PHLAW.ACT000190.S8" type="ext"/&gt;Disqualification of Judges&lt;/title&gt;
        &lt;/leg:heading&gt;
  &lt;/leg:level-vrnt&gt;
      &lt;!--...--&gt;
&lt;/leg:level&gt;  

      </codeblock>
            <b>becomes</b>
            <codeblock>

&lt;primlaw:level leveltype="section" includeintoc="true" alternatetoccaption="SECTION 8. Disqualification of Judges"&gt;
    &lt;ref:anchor id="PHLAW.ACT000190.S8" anchortype="global"/&gt;
    &lt;heading inline="true"&gt;
        &lt;desig inline="true"&gt;SECTION 8.&lt;/desig&gt;
        &lt;title inline="true"&gt;Disqualification of Judges&lt;/title&gt;
     &lt;/heading&gt;
     &lt;!--...--&gt;
&lt;/primlaw:level&gt;
    
      </codeblock>
        </example> 
       
       <note>If <sourcexml>leg:heading</sourcexml> is having <sourcexml>glp:note</sourcexml> markup
            and <sourcexml>glp:note</sourcexml> comes with child <sourcexml>refpt</sourcexml>
            without any text then conversion needs to suppress <sourcexml>glp:note/refpt</sourcexml>
            in target conversion.</note>
        <example>
            <title>Mapping of <sourcexml>leg:heading</sourcexml></title>
            <codeblock>

&lt;leg:level id="PHLAW.CA000466.BODY"&gt;
    &lt;leg:level-vrnt leveltype="act" searchtype="LEGISLATION ACT"&gt;
        &lt;leg:heading&gt;
            &lt;glp:note&gt;
                &lt;refpt id="PHLAW_CA000466.xml_1" type="ext"/&gt;
            &lt;/glp:note&gt;
            &lt;title&gt;&lt;refpt id="PHLAW.CA000466" type="ext"/&gt;COMMONWEALTH ACT NO. 466&lt;nl/&gt;AN ACT TO REVISE, AMEND AND CODIFY THE INTERNAL REVENUE LAWS OF THE PHILIPPINES&lt;/title&gt;
        &lt;/leg:heading&gt;
        &lt;!--...--&gt;
    &lt;/leg:level-vrnt&gt;
&lt;/leg:level&gt;  

      </codeblock>
            <b>becomes</b>
            <codeblock>

&lt;primlaw:level xml:id="PHLAW.CA000466.BODY" leveltype="act"&gt;
    &lt;ref:anchor id="PHLAW.CA000466" anchortype="global"/&gt;
    &lt;heading inline="true"&gt;
        &lt;title inline="true"&gt;COMMONWEALTH ACT NO. 466&lt;proc:nl/&gt;AN ACT TO REVISE, AMEND AND CODIFY THE INTERNAL REVENUE LAWS OF THE PHILIPPINES&lt;/title&gt;
     &lt;/heading&gt;
     &lt;!--...--&gt;
&lt;/primlaw:level&gt;
    
      </codeblock>
        </example>
        <note>If <sourcexml>[emph]</sourcexml> comes with attribute
                [<sourcexml>@typestyle="bf"</sourcexml>] under the <sourcexml>title</sourcexml>,
                <sourcexml>desig</sourcexml> and <sourcexml>designum</sourcexml> then only
                <sourcexml>emph</sourcexml> markup should be dropped in target conversion and
            retained text.</note>
        <section>
            <title>Changes:</title>
            <p>2014-08-08: Created</p>
        </section>
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-GPL\PH02-Statcode\leg.heading.dita  -->
	<xsl:message>PH02-Statcode_leg.heading.xsl requires manual development!</xsl:message> 

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

	<xsl:template match="glp:note">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

	<xsl:template match="refpt">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

	<xsl:template match="glp:note/refpt">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

	<xsl:template match="[emph]">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

	<xsl:template match="@typestyle=&#34;bf&#34;">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

	<xsl:template match="title">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

	<xsl:template match="desig">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

	<xsl:template match="designum">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

	<xsl:template match="emph">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

</xsl:stylesheet>