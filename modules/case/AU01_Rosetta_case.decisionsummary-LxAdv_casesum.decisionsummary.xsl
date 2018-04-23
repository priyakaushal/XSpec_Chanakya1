<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
  xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
  xmlns:case="http://www.lexis-nexis.com/glp/case"
  xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"
  xmlns:casesum="http://www.lexisnexis.com/xmlschemas/content/legal/case-summary/1/" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="AU01_Rosetta_case.decisionsummary-LxAdv_casesum.decisionsummary">
    <title>case:decisionsummary <lnpid>id-AU01-18218</lnpid></title>
    <body>
        <section conref="../../common_caselaw/conref_content/Rosetta_case.decisionsummary-LxAdv_casesum.decisionsummary.dita#Rosetta_case.decisionsummary-LxAdv_casesum.decisionsummary/mapping1"/>
        <section>
            <p>The optional attributes of <sourcexml>case:decisionsummary</sourcexml> are handled as follows:<ul>
                    <li><sourcexml>case:decisionsummary/@summarytype</sourcexml> becomes
                            <targetxml>casesum:decisionsummary/@summarysource</targetxml></li>
                    <li><sourcexml>case:decisionsummary/@subdoc</sourcexml> becomes
                            <targetxml>casesum:decisionsummary/@includeintoc</targetxml></li>
                    <li><sourcexml>case:decisionsummary/@toc-caption</sourcexml> becomes
                            <targetxml>casesum:decisionsummary/@alternatetoccaption</targetxml></li>
                </ul></p>
        </section>
        <section conref="../../common_caselaw/conref_content/Rosetta_case.decisionsummary-LxAdv_casesum.decisionsummary.dita#Rosetta_case.decisionsummary-LxAdv_casesum.decisionsummary/mapping2"/>
        <example>
            <codeblock>
&lt;case:decisionsummary summarytype="held"&gt;
  &lt;p&gt;
    &lt;text&gt;
      &lt;emph typestyle="bf"&gt;Held&lt;/emph&gt;, dismissing the motion:
    &lt;/text&gt;
  &lt;/p&gt;
  &lt;p&gt;
    &lt;text&gt;(i)&amp;#x2003;The proceedings before the Industrial Court were wholly in federal jurisdiction. The claim by Combined against each agent in the Federal Court and the claim by each agent against Combined in the Industrial Court arose largely out of the same substratum of fact. It followed there was, as between each agent and Combined, a single matter comprising the basic question of whether each agent was an employee, related questions of estoppel and misleading conduct and remedial issues relating to money and penalties: at [13], [16].
    &lt;/text&gt;
  &lt;/p&gt;
&lt;/case:decisionsummary&gt;
       </codeblock>
            <b>becomes</b>
            <codeblock>
&lt;casesum:summaries&gt;
  &lt;casesum:decisionsummary summarysource="held"&gt;
    &lt;bodytext&gt;
      &lt;p&gt;
        &lt;text&gt;&lt;emph typestyle="bf"&gt;Held&lt;/emph&gt;, dismissing the motion:&lt;/text&gt;
      &lt;/p&gt;
      &lt;p&gt;
        &lt;text&gt;(i)&amp;#x2003;The proceedings before the Industrial Court were wholly in federal jurisdiction. The claim by Combined against each agent in the Federal Court and the claim by each agent against Combined in the Industrial Court arose largely out of the same substratum of fact. It followed there was, as between each agent and Combined, a single matter comprising the basic question of whether each agent was an employee, related questions of estoppel and misleading conduct and remedial issues relating to money and penalties: at [13], [16].
        &lt;/text&gt;
      &lt;/p&gt;
    &lt;/bodytext&gt;
  &lt;/casesum:decisionsummary&gt;
&lt;/casesum:summaries&gt;
       </codeblock>
        </example>
        <!--<section
            conref="../../common_caselaw/conref_content/Rosetta_case.filenum-LxAdv_caseinfo.docketnum.dita#Rosetta_case.filenum-LxAdv_caseinfo.docketnum/changes"/>-->
        <!--<section>
            <title>Changes Specific to AU01</title>
            </section>-->

    </body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU01_CaseLaw\AU01_Rosetta_case.decisionsummary-LxAdv_casesum.decisionsummary.dita  -->

	<!--<xsl:template match="case:decisionsummary">
		<!-\-  Original Target XPath:  casesum:decisionsummary/@summarysource   -\->
		<casesum:decisionsummary>
				<xsl:apply-templates select="@*"/>
			<xsl:if test="heading">
				<xsl:apply-templates select="heading"/>
			</xsl:if>
			<xsl:if test="node() except (heading,blockquote[child::case:embeddedcase])">
				<bodytext>
					<xsl:apply-templates select="node() except heading"/>
				</bodytext>
			</xsl:if>
			<xsl:if test="blockquote[child::case:embeddedcase]">
				<xsl:apply-templates select="./blockquote/case:embeddedcase"/>
			</xsl:if>
		</casesum:decisionsummary>
	</xsl:template>

	<xsl:template match="case:decisionsummary/@summarytype">
		<!-\-  Original Target XPath:  casesum:decisionsummary/@summarysource   -\->
			<xsl:attribute name="summarysource">
				<xsl:value-of select="."/>
			</xsl:attribute>
	</xsl:template>

	<xsl:template match="case:decisionsummary/@subdoc">
		<!-\-  Original Target XPath:  casesum:decisionsummary/@includeintoc   -\->
			<xsl:attribute name="includeintoc">
				<xsl:value-of select="."/>
			</xsl:attribute>
	</xsl:template>

	<xsl:template match="case:decisionsummary/@toc-caption">
		<!-\-  Original Target XPath:  casesum:decisionsummary/@alternatetoccaption   -\->
			<xsl:attribute name="alternatetoccaption">
				<xsl:value-of select="."/>
			</xsl:attribute>
	</xsl:template>-->
  
  <xsl:template match="case:decisionsummary" mode="summaries">
    
    <!--  Original Target XPath:  casesum:decisionsummary/@summarysource   -->
    <casesum:decisionsummary>
      <xsl:if test="@summarytype">
        <xsl:attribute name="summarysource">
          <xsl:value-of select="@summarytype"/>
        </xsl:attribute>
      </xsl:if>
      <xsl:if test="@subdoc">
        <xsl:attribute name="includeintoc">
          <xsl:value-of select="@subdoc"/>
        </xsl:attribute>
      </xsl:if>
      <xsl:if test="@toc-caption">
        <xsl:attribute name="alternatetoccaption">
          <xsl:value-of select="@toc-caption"/>
        </xsl:attribute>
      </xsl:if>		   
      
      <xsl:apply-templates select="heading"/>
      <bodytext>
        <xsl:apply-templates select="@* | node() except heading"/>
      </bodytext>
      <xsl:apply-templates select="//case:headnote/page"/>
    </casesum:decisionsummary>
    
  </xsl:template>
  <xsl:template match="case:decisionsummary/@summarytype"/>

</xsl:stylesheet>