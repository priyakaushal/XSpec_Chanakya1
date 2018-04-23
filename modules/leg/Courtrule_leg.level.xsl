<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.level">
   <title>leg:level <lnpid>id-ST02-26418</lnpid></title>
   <body>
      <section>
        <ul>
          <li><sourcexml>leg:level/leg:level-vrnt</sourcexml> becomes <targetxml>primlaw:level</targetxml> comes with attributes, <sourcexml>@id</sourcexml> Becomes
            <targetxml>@xml:id</targetxml>
            <sourcexml>@leveltype</sourcexml> becomes <targetxml>@leveltype</targetxml> attributes <sourcexml>@subdoc</sourcexml> becomes
            <targetxml>@includeintoc</targetxml> and <sourcexml>toc-caption</sourcexml> becomes <targetxml>alternatetoccaption</targetxml>, the
            values are tokenized, <ul>
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
            </ul> and populated as: <note>If the input files are having @leveltype values other than the tokenized list shown above the value will be
              set as <targetxml>@leveltype="unclassified"</targetxml>.</note>                     
            <note>In New Lexis <targetxml>primlaw:level</targetxml> element is used instead of Rosetta elements <sourcexml>leg:level</sourcexml>and
              <sourcexml>leg:level-vrnt</sourcexml>. Pick the <sourcexml>@leveltype</sourcexml> value from <sourcexml>leg:level-vrnt</sourcexml> and
              the element <sourcexml>leg:level-vrnt</sourcexml> will be suppressed from conversion.</note>
          </li>
        </ul>
      </section>

           <example>
             <title>Source XML 1</title>
             <codeblock>

&lt;leg:level id="NSW_REG_1996-498_RULE1"&gt;
                        &lt;leg:level-vrnt leveltype="reg" searchtype="LEGISLATION" subdoc="true"
                            toc-caption="1. Name of Rules"&gt;
                            &lt;leg:heading&gt;
                                &lt;desig searchtype="REG-NUM"&gt;
                                    &lt;designum&gt;&lt;refpt id="NSW_REG_1996-498_RULE1" type="ext"
                                        /&gt;1.&lt;/designum&gt;
                                &lt;/desig&gt;
                                &lt;title align="left" searchtype="REG-TITLE"&gt;Name of
                                        Rules&amp;#160;&lt;lnlink status="valid" service="SEARCH"
                                        scope="All Subscribed Australian Cases and Commentary"
                                        scope-protocol="combined-source-name"&gt;&lt;marker&gt;&lt;inlineobject
                                                width="21px" type="image" filename="mb.gif"
                                                attachment="web-server"
                                                alttext="click to find cases &amp;amp; commentary"
                                            /&gt;&lt;/marker&gt;&lt;api-params&gt;&lt;param name="expressSearch"
                                                value="true"/&gt;&lt;param name="searchString"
                                                value="COMMERCIAL TRIBUNAL RULES 1996 Repealed w/s LEG-REF(1)"
                                            /&gt;&lt;/api-params&gt;&lt;/lnlink&gt;&lt;/title&gt;
                            &lt;/leg:heading&gt;
                            &lt;leg:levelbody&gt;
                                &lt;leg:bodytext&gt;
                                    &lt;p&gt;
                                        &lt;text&gt;These Rules are the &lt;emph typestyle="it"&gt;Commercial
                                                Tribunal Rules 1996&lt;/emph&gt;.&lt;/text&gt;
                                    &lt;/p&gt;
                                &lt;/leg:bodytext&gt;
                            &lt;/leg:levelbody&gt;
                        &lt;/leg:level-vrnt&gt;
                    &lt;/leg:level&gt;

                 </codeblock>
           </example>
           
           <example>
             <title>Target XML 1</title>
             <codeblock>

&lt;primlaw:level includeintoc="true" alternatetoccaption="1. Name of Rules"
                leveltype="regulation"&gt;
                &lt;ref:anchor id="NSW_REG_1996-498_RULE1" anchortype="global"/&gt;
                &lt;heading&gt;
                    &lt;desig&gt;1.&lt;/desig&gt;
                    &lt;title align="left"&gt;Name of
                        Rules &lt;!-- lnlink[@service="SEARCH"] source:&lt;lnlink service="SEARCH" scope="All Subscribed Australian Cases and Commentary" scope-protocol="combined-source-name" status="valid"&gt;&lt;marker&gt;&lt;inlineobject alttext="click to find cases &amp;amp;amp; commentary" type="image" width="21px" attachment="web-server" filename="mb.gif"&gt;&lt;/inlineobject&gt;&lt;/marker&gt;&lt;api-params&gt;&lt;param name="expressSearch" value="true"&gt;&lt;/param&gt;&lt;param name="searchString" value="COMMERCIAL TRIBUNAL RULES 1996 Repealed w/s LEG-REF(1)"&gt;&lt;/param&gt;&lt;/api-params&gt;&lt;/lnlink&gt;--&gt;&lt;/title&gt;
                &lt;/heading&gt;
                &lt;primlaw:bodytext&gt;
                    &lt;p&gt;
                        &lt;text&gt;These Rules are the &lt;emph typestyle="it"&gt;Commercial Tribunal Rules
                                1996&lt;/emph&gt;.&lt;/text&gt;
                    &lt;/p&gt;
                &lt;/primlaw:bodytext&gt;
            &lt;/primlaw:level&gt;

             </codeblock>
           </example>
     
     <example>
       <title>Source XML 2</title>
       <codeblock>

&lt;leg:level&gt;
    &lt;leg:level-vrnt searchtype="LEGISLATION" leveltype="2"&gt;
        &lt;leg:heading&gt;
           &lt;title align="center"&gt;Companion Policy&lt;/title&gt;
        &lt;/leg:heading&gt;
   &lt;/leg:level-vrnt&gt;
 &lt;/leg:level&gt;

      </codeblock>
     </example>
     
     <example>
       <title>Target XML 2</title>
       <codeblock>

&lt;primlaw:level leveltype="unclassified"&gt;
  &lt;heading&gt;
      &lt;title&gt;Companion Policy&lt;/title&gt;
  &lt;/heading&gt;
&lt;/primlaw:level&gt;

             </codeblock>
     </example>
   </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-Standard\Courtrule\leg.level.dita  -->
	<xsl:message>Courtrule_leg.level.xsl requires manual development!</xsl:message> 

	<xsl:template match="leg:level/leg:level-vrnt">

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

	<xsl:template match="leg:level">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

	<xsl:template match="leg:level-vrnt">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

</xsl:stylesheet>