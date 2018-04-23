<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:casesum="http://www.lexisnexis.com/xmlschemas/content/legal/case-summary/1/" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="NZ03_Rosetta_case.decisionsummary-LxAdv_casesum.decisionsummary">
  <title>case:decisionsummary <lnpid>id-NZ03-23017</lnpid></title>
  <body>
    <section conref="../../common_caselaw/conref_content/Rosetta_case.decisionsummary-LxAdv_casesum.decisionsummary.dita#Rosetta_case.decisionsummary-LxAdv_casesum.decisionsummary/mapping1"/>
    <section>
      <p>The optional attributes of <sourcexml>case:decisionsummary</sourcexml> are handled as follows:<ul>
          <li><sourcexml>case:decisionsummary/@searchtype</sourcexml> becomes
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
&lt;case:decisionsummary searchtype="held"&gt;
  &lt;heading&gt;
    &lt;title&gt;Held&lt;/title&gt;
  &lt;/heading&gt;
  &lt;p&gt;
    &lt;text&gt;, (1) That the purported removal of the licence was a nullity because the Licensing Committee had acted without jurisdiction since it had not obtained the prior approval of the Licensing Control Commission as required by s. 127 (10) of the Licensing Act 1908.&lt;/text&gt;
  &lt;/p&gt;
  &lt;p&gt;
    &lt;text&gt;(2) That the description of the premises to which the licence is attached is a vital and fundamental part of the licence. The description of the licence as attached to the premises to which it had been purported to be removed resulted in the permanent and temporary transfers being themselves void as relating to a licence which did not exist.&lt;/text&gt;
  &lt;/p&gt;
&lt;/case:decisionsummary&gt;
       </codeblock>
      <b>becomes</b>
      <codeblock>
&lt;casesum:summaries&gt;
  &lt;casesum:decisionsummary summarysource="held"&gt;
    &lt;heading&gt;
      &lt;title&gt;Held&lt;/title&gt;
    &lt;/heading&gt;
    &lt;bodytext&gt;
      &lt;p&gt;
        &lt;text&gt;, (1) That the purported removal of the licence was a nullity because the Licensing Committee had acted without jurisdiction since it had not obtained the prior approval of the Licensing Control Commission as required by s. 127 (10) of the Licensing Act 1908.&lt;/text&gt;
      &lt;/p&gt;
      &lt;p&gt;
        &lt;text&gt;(2) That the description of the premises to which the licence is attached is a vital and fundamental part of the licence. The description of the licence as attached to the premises to which it had been purported to be removed resulted in the permanent and temporary transfers being themselves void as relating to a licence which did not exist.&lt;/text&gt;
      &lt;/p&gt;
    &lt;/bodytext&gt;
  &lt;/casesum:decisionsummary&gt;
&lt;/casesum:summaries&gt;
       </codeblock>
    </example>
    <!--<section
            conref="../../common_caselaw/conref_content/Rosetta_case.filenum-LxAdv_caseinfo.docketnum.dita#Rosetta_case.filenum-LxAdv_caseinfo.docketnum/changes"/>-->
    <!--<section>
            <title>Changes Specific to NZ03</title>
            </section>-->

  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\NZ03_CaseLaw\NZ03_Rosetta_case.decisionsummary-LxAdv_casesum.decisionsummary.dita  -->
	<!--<xsl:message>NZ03_Rosetta_case.decisionsummary-LxAdv_casesum.decisionsummary.xsl requires manual development!</xsl:message>--> 


  <xsl:template match="case:decisionsummary" mode="summaries">
    
    <!--  Original Target XPath:  casesum:decisionsummary/@summarysource   -->
    <casesum:decisionsummary>
      <xsl:if test="@searchtype">
        <xsl:attribute name="summarysource">
          <xsl:value-of select="@searchtype"/>
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
    </casesum:decisionsummary>
  </xsl:template>
  <xsl:template match="case:decisionsummary/@summarytype | case:decisionsummary/@subdoc | case:decisionsummary/@toc-caption"/>
</xsl:stylesheet>