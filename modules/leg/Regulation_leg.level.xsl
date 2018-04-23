<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.level">
   <title>leg:level <lnpid>id-ST04-26832</lnpid></title>
   <body>
      <section>
        <p><sourcexml>leg:level</sourcexml> becomes <targetxml>primlaw:level</targetxml> with below attribute:
            <ul>
                
                <li><sourcexml>@id</sourcexml> Becomes <targetxml>@xml:id</targetxml></li>
                <li><sourcexml>@subdoc</sourcexml> Becomes <targetxml>@includeintoc</targetxml></li>
                <li><sourcexml>@toc-caption</sourcexml> Becomes <targetxml>@alternatetoccaption</targetxml></li>
            </ul>
            
            with required attribute <targetxml>@leveltype</targetxml> and its values are tokenized as below:</p>
          <ul>
              <li><targetxml>primlaw:level[@leveltype="act"]</targetxml></li>
              <li><targetxml>primlaw:level[@leveltype="addendum"]</targetxml></li>
              <li><targetxml>primlaw:level[@leveltype="agreement"]</targetxml></li>
              <li><targetxml>primlaw:level[@leveltype="amendment"]</targetxml></li>
              <li><targetxml>primlaw:level[@leveltype="annex"]</targetxml></li>
              <li><targetxml>primlaw:level[@leveltype="appendix"]</targetxml></li>
              <li><targetxml>primlaw:level[@leveltype="article"]</targetxml></li>
              <li><targetxml>primlaw:level[@leveltype="attachment"]</targetxml></li>
              <li><targetxml>primlaw:level[@leveltype="canon"]</targetxml></li>
              <li><targetxml>primlaw:level[@leveltype="chapter"]</targetxml></li>
              <li><targetxml>primlaw:level[@leveltype="clause"]</targetxml></li>
              <li><targetxml>primlaw:level[@leveltype="companion"]</targetxml></li>
              <li><targetxml>primlaw:level[@leveltype="constitution"]</targetxml></li>
              <li><targetxml>primlaw:level[@leveltype="dictionary"]</targetxml></li>
              <li><targetxml>primlaw:level[@leveltype="division"]</targetxml></li>
              <li><targetxml>primlaw:level[@leveltype="endnote"]</targetxml></li>
              <li><targetxml>primlaw:level[@leveltype="exhibit"]</targetxml></li>
              <li><targetxml>primlaw:level[@leveltype="form"]</targetxml></li>
              <li><targetxml>primlaw:level[@leveltype="hierarchy-note"]</targetxml></li>
              <li><targetxml>primlaw:level[@leveltype="instrument"]</targetxml></li>
              <li><targetxml>primlaw:level[@leveltype="introduction"]</targetxml></li>
              <li><targetxml>primlaw:level[@leveltype="order"]</targetxml></li>
              <li><targetxml>primlaw:level[@leveltype="paragraph"]</targetxml></li>
              <li><targetxml>primlaw:level[@leveltype="part"]</targetxml></li>
              <li><targetxml>primlaw:level[@leveltype="preamble"]</targetxml></li>
              <li><targetxml>primlaw:level[@leveltype="procedural-guide"]</targetxml></li>
              <li><targetxml>primlaw:level[@leveltype="regulation"]</targetxml></li>
              <li><targetxml>primlaw:level[@leveltype="regulatory-code"]</targetxml></li>
              <li><targetxml>primlaw:level[@leveltype="rule"]</targetxml></li>
              <li><targetxml>primlaw:level[@leveltype="schedule"]</targetxml></li>
              <li><targetxml>primlaw:level[@leveltype="section"]</targetxml></li>
              <li><targetxml>primlaw:level[@leveltype="subarticle"]</targetxml></li>
              <li><targetxml>primlaw:level[@leveltype="subchapter"]</targetxml></li>
              <li><targetxml>primlaw:level[@leveltype="subclause"]</targetxml></li>
              <li><targetxml>primlaw:level[@leveltype="subdivision"]</targetxml></li>
              <li><targetxml>primlaw:level[@leveltype="subparagraph"]</targetxml></li>
              <li><targetxml>primlaw:level[@leveltype="subpart"]</targetxml></li>
              <li><targetxml>primlaw:level[@leveltype="subregulation"]</targetxml></li>
              <li><targetxml>primlaw:level[@leveltype="subschedule"]</targetxml></li>
              <li><targetxml>primlaw:level[@leveltype="subrule"]</targetxml></li>
              <li><targetxml>primlaw:level[@leveltype="subsection"]</targetxml></li>
              <li><targetxml>primlaw:level[@leveltype="subtitle"]</targetxml></li>
              <li><targetxml>primlaw:level[@leveltype="supplement"]</targetxml></li>
              <li><targetxml>primlaw:level[@leveltype="table-of-contents"]</targetxml></li>
              <li><targetxml>primlaw:level[@leveltype="title"]</targetxml></li>
              <li><targetxml>primlaw:level[@leveltype="topic"]</targetxml></li>
              <li><targetxml>primlaw:level[@leveltype="treaty"]</targetxml></li>
              <li><targetxml>primlaw:level[@leveltype="agency"]</targetxml></li>
              <li><targetxml>primlaw:level[@leveltype="subagency"]</targetxml></li>
              <li><targetxml>primlaw:level[@leveltype="unclassified"]</targetxml></li>
          </ul>
          <note>In New Lexis <targetxml>primlaw:level</targetxml> element is used instead of Rosetta elements <sourcexml>leg:level</sourcexml> and <sourcexml>leg:level-vrnt</sourcexml>. Pick the <sourcexml>@leveltype</sourcexml> value from <sourcexml>leg:level-vrnt</sourcexml> and the element <sourcexml>leg:level-vrnt</sourcexml> will be suppressed from conversion.</note>
          
          <p>Below are the unique values for <sourcexml>@leveltype</sourcexml> found in the source documents and the corresponding mapping in NewLexis.</p>
          <ul>
            <li><sourcexml>leg:level/leg:level-vrnt[@leveltype="part"]</sourcexml> becomes <targetxml>primlaw:level[@leveltype="part"]</targetxml></li>
            <li><sourcexml>leg:level/leg:level-vrnt[@leveltype="sched"]</sourcexml> becomes <targetxml>primlaw:level[@leveltype="schedule"]</targetxml></li>
            <li><sourcexml>leg:level/leg:level-vrnt[@leveltype="prov1"]</sourcexml> becomes <targetxml>primlaw:level[@leveltype="section"]</targetxml></li>
            <li><sourcexml>leg:level/leg:level-vrnt[@leveltype="prov2"]</sourcexml> becomes <targetxml>primlaw:level[@leveltype="subsection"]</targetxml></li>
            <li><sourcexml>leg:level/leg:level-vrnt[@leveltype="prov3"]</sourcexml> becomes <targetxml>primlaw:level[@leveltype="paragraph"]</targetxml></li>
            <li><sourcexml>leg:level/leg:level-vrnt[@leveltype="prov4"]</sourcexml> becomes <targetxml>primlaw:level[@leveltype="subparagraph"]</targetxml></li>
              <li><sourcexml>leg:level/leg:level-vrnt[@leveltype="sect"]</sourcexml> becomes <targetxml>primlaw:level[@leveltype="section"]</targetxml></li>
              <li><sourcexml>leg:level/leg:level-vrnt[@leveltype="subsect"]</sourcexml> becomes <targetxml>primlaw:level[@leveltype="subsection"]</targetxml></li>
            <li><sourcexml>leg:level[ancestor:: leg:level/leg:level-vrnt[@leveltype="sched"]/leg:level-vrnt[@leveltype="prov1"]</sourcexml> becomes <targetxml>primlaw:level[@leveltype="paragraph"]</targetxml></li>
            <li><sourcexml>leg:level[ancestor:: leg:level/leg:level-vrnt[@leveltype="sched"]/leg:level-vrnt[@leveltype="prov2"]</sourcexml> becomes <targetxml>primlaw:level[@leveltype="subparagraph"]</targetxml></li>
            <li><sourcexml>leg:level[ancestor:: leg:level/leg:level-vrnt[@leveltype="sched"]/leg:level-vrnt[@leveltype="prov3"]</sourcexml> becomes <targetxml>primlaw:level[@leveltype="subparagraph"]</targetxml></li>
            <li><sourcexml>leg:level[ancestor:: leg:level/leg:level-vrnt[@leveltype="sched"]/leg:level-vrnt[@leveltype="prov4"]</sourcexml> becomes <targetxml>primlaw:level[@leveltype="subparagraph"]</targetxml></li>
          </ul>
          <note>If the input files are having <sourcexml>@leveltype</sourcexml> values other than
        the tokenized list as shown above, the value will be set as
          <targetxml>@leveltype="unclassified"</targetxml>.</note>
          
        <pre>
            <b><i>Source example based on UK content</i></b>

&lt;leg:body&gt;
    ......
    &lt;leg:level&gt;
        &lt;leg:level-vrnt&gt;
            &lt;leg:levelbody&gt;
                &lt;leg:bodytext searchtype="LEGISLATION"&gt;
                    &lt;pgrp&gt;
                        &lt;p&gt;
                            &lt;text searchtype="LEGISLATION"&gt;Signed by authority of the Secretary
                                of State for Work and Pensions.&lt;/text&gt;
                        &lt;/p&gt;
                        &lt;p&gt;
                            &lt;text searchtype="LEGISLATION"&gt;
                                &lt;emph typestyle="it"&gt;Angela Eagle&lt;/emph&gt;
                            &lt;/text&gt;
                        &lt;/p&gt;
                        &lt;p&gt;
                            &lt;text searchtype="LEGISLATION"&gt;Minister of State,&lt;/text&gt;
                        &lt;/p&gt;
                        &lt;p&gt;
                            &lt;text searchtype="LEGISLATION"&gt;Department for Work and
                                Pensions&lt;/text&gt;
                        &lt;/p&gt;
                        &lt;p&gt;
                            &lt;text searchtype="LEGISLATION"&gt;5th January 2010&lt;/text&gt;
                        &lt;/p&gt;
                    &lt;/pgrp&gt;
                &lt;/leg:bodytext&gt;
            &lt;/leg:levelbody&gt;
        &lt;/leg:level-vrnt&gt;
    &lt;/leg:level&gt;
&lt;/leg:body&gt;

        </pre>
          <pre>
          <b><i>Target Example</i></b>


&lt;regulation:body&gt;
    .......
    &lt;primlaw:level leveltype="unclassified"&gt;
        &lt;primlaw:bodytext&gt;
            &lt;pgrp&gt;
                &lt;p&gt;
                    &lt;text&gt;Signed by authority of the Secretary
                        of State for Work and Pensions.&lt;/text&gt;
                &lt;/p&gt;
                &lt;p&gt;
                    &lt;text&gt;
                        &lt;emph typestyle="it"&gt;Angela Eagle&lt;/emph&gt;
                    &lt;/text&gt;
                &lt;/p&gt;
                &lt;p&gt;
                    &lt;text&gt;Minister of State,&lt;/text&gt;
                &lt;/p&gt;
                &lt;p&gt;
                    &lt;text&gt;Department for Work and
                        Pensions&lt;/text&gt;
                &lt;/p&gt;
                &lt;p&gt;
                    &lt;text&gt;5th January 2010&lt;/text&gt;
                &lt;/p&gt;
            &lt;/pgrp&gt;
        &lt;/primlaw:bodytext&gt;
    &lt;/primlaw:level&gt;
&lt;/regulation:body&gt;

        </pre>
          <pre>
                
              <b><i>Source example based on AU content</i></b>

&lt;leg:level id="ACT_REG_1991-10_BODY"&gt;
	&lt;leg:level-vrnt leveltype="body"&gt;


</pre>
          
          <pre>

              <b><i>Target Example</i></b>


&lt;primlaw:level xml:id="ACT_REG_1991-10_BODY" leveltype="unclassified"&gt;

          </pre>
          
          <pre>
              <b><i>Source example based on AU content</i></b>

&lt;leg:level id="WFW.FWTP.FWTPAC09.SCH3A.CL53"&gt;
	&lt;leg:level-vrnt leveltype="clause" searchtype="LEGISLATION CLAUSE" subdoc="true" toc-caption="[30-1288] cl 53 Definitions"&gt;

              
</pre>
          <pre>
              <b><i>Target Example</i></b>
              

&lt;primlaw:level xml:id="WFW.FWTP.FWTPAC09.SCH3A.CL53" leveltype="clause" includeintoc="true" alternatetoccaption="[30-1288] cl 53 Definitions"&gt;

              
            </pre>
      </section>
    <section>
      <title>Changes</title>
      <p>YYYY-MM-DD: ______________________________________________________________________.</p>
    </section>
   </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-Standard\Regulation\leg.level.dita  -->
	<xsl:message>Regulation_leg.level.xsl requires manual development!</xsl:message> 

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

	<xsl:template match="leg:level-vrnt">

		<!--  Original Target XPath:  primlaw:level[@leveltype="part"]   -->
		<primlaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="@leveltype">

		<!--  Original Target XPath:  primlaw:level[@leveltype="act"]   -->
		<primlaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="leg:level/leg:level-vrnt[@leveltype=&#34;part&#34;]">

		<!--  Original Target XPath:  primlaw:level[@leveltype="part"]   -->
		<primlaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="leg:level/leg:level-vrnt[@leveltype=&#34;sched&#34;]">

		<!--  Original Target XPath:  primlaw:level[@leveltype="schedule"]   -->
		<primlaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="leg:level/leg:level-vrnt[@leveltype=&#34;prov1&#34;]">

		<!--  Original Target XPath:  primlaw:level[@leveltype="section"]   -->
		<primlaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="leg:level/leg:level-vrnt[@leveltype=&#34;prov2&#34;]">

		<!--  Original Target XPath:  primlaw:level[@leveltype="subsection"]   -->
		<primlaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="leg:level/leg:level-vrnt[@leveltype=&#34;prov3&#34;]">

		<!--  Original Target XPath:  primlaw:level[@leveltype="paragraph"]   -->
		<primlaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="leg:level/leg:level-vrnt[@leveltype=&#34;prov4&#34;]">

		<!--  Original Target XPath:  primlaw:level[@leveltype="subparagraph"]   -->
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

	<xsl:template match="leg:level[ancestor:: leg:level/leg:level-vrnt[@leveltype=&#34;sched&#34;]/leg:level-vrnt[@leveltype=&#34;prov1&#34;]">

		<!--  Original Target XPath:  primlaw:level[@leveltype="paragraph"]   -->
		<primlaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="leg:level[ancestor:: leg:level/leg:level-vrnt[@leveltype=&#34;sched&#34;]/leg:level-vrnt[@leveltype=&#34;prov2&#34;]">

		<!--  Original Target XPath:  primlaw:level[@leveltype="subparagraph"]   -->
		<primlaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="leg:level[ancestor:: leg:level/leg:level-vrnt[@leveltype=&#34;sched&#34;]/leg:level-vrnt[@leveltype=&#34;prov3&#34;]">

		<!--  Original Target XPath:  primlaw:level[@leveltype="subparagraph"]   -->
		<primlaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="leg:level[ancestor:: leg:level/leg:level-vrnt[@leveltype=&#34;sched&#34;]/leg:level-vrnt[@leveltype=&#34;prov4&#34;]">

		<!--  Original Target XPath:  primlaw:level[@leveltype="subparagraph"]   -->
		<primlaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:level>

	</xsl:template>

</xsl:stylesheet>