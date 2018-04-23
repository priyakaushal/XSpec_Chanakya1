<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:courtcase="http://www.lexisnexis.com/xmlschemas/content/legal/courtcase/1/" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="AU01_Rosetta_case.judgment-LxAdv_courtcase.opinion">
  <title>case:judgment <lnpid>id-AU01-18226</lnpid></title>
  <body>
    <section conref="../../common_caselaw/conref_content/Rosetta_case.judgment-LxAdv_courtcase.opinion.dita#Rosetta_case.judgment-LxAdv_courtcase.opinion/mapping"/>
    <section>
      <p>The optional attributes of <sourcexml>case:judgment</sourcexml> are handled as follows:<ul>
          <li><sourcexml>case:judgment/@subdoc</sourcexml> becomes
              <targetxml>courtcase:opinion/@includeintoc</targetxml>.</li>
          <li><sourcexml>case:judgment/@toc-caption</sourcexml> becomes
              <targetxml>courtcase:opinion/@alternatetoccaption</targetxml>.</li>
          <li><sourcexml>case:judgment/@searchtype</sourcexml> should be suppressed.</li>
        </ul></p>
    </section>
    <example>
      <codeblock>
&lt;case:judgment subdoc="true" toc-caption="Perram  J."&gt;
  &lt;case:judgmentbody&gt;
    &lt;pgrp&gt;
      &lt;heading&gt;
        &lt;title&gt;Background&lt;/title&gt;
      &lt;/heading&gt;
      &lt;p&gt;
        &lt;pnum count="1"&gt;[1]&lt;/pnum&gt;
        &lt;text&gt;The present applicants are five individuals who at one time or another were engaged by
          Combined Insurance Company of America (Combined) as insurance agents. In recent times, the
          five have sued Combined in the Chief Industrial Magistrates&amp;#x2019; Court of New South
          Wales claiming entitlements both to annual leave and long service leave. One of the
          principal issues to be resolved in those proceedings is the question of whether the agents
          were employees of Combined, as they contend, or rather independent contractors, as
          Combined contends. No doubt the resolution of that issue will involve a close
          consideration of a broad range of indicia. One of the matters to which Combined points is
          a term in its contract with each agent by which each agreed, or appears to have agreed,
          that his relationship with Combined was not one of employment.&lt;/text&gt;
      &lt;/p&gt;
    &lt;/pgrp&gt;
  &lt;/case:judgmentbody&gt;
&lt;/case:judgment&gt;
       </codeblock>
      <b>becomes</b>
      <codeblock>
&lt;courtcase:opinion includeintoc="true" alternatetoccaption="Perram  J."&gt;
  &lt;bodytext&gt;
    &lt;pgrp&gt;
      &lt;heading&gt;
        &lt;title&gt;Background&lt;/title&gt;
      &lt;/heading&gt;
      &lt;p&gt;
        &lt;desig value="1"&gt;[1]&lt;/desig&gt;
        &lt;text&gt;The present applicants are five individuals who at one time or another were engaged by
          Combined Insurance Company of America (Combined) as insurance agents. In recent times, the
          five have sued Combined in the Chief Industrial Magistrates&amp;#x2019; Court of New South
          Wales claiming entitlements both to annual leave and long service leave. One of the
          principal issues to be resolved in those proceedings is the question of whether the agents
          were employees of Combined, as they contend, or rather independent contractors, as
          Combined contends. No doubt the resolution of that issue will involve a close
          consideration of a broad range of indicia. One of the matters to which Combined points is
          a term in its contract with each agent by which each agreed, or appears to have agreed,
          that his relationship with Combined was not one of employment.&lt;/text&gt;
      &lt;/p&gt;
    &lt;/pgrp&gt;
  &lt;/bodytext&gt;
&lt;/courtcase:opinion&gt;
       </codeblock>
    </example>
    <!--<section
            conref="../../common_caselaw/conref_content/Rosetta_case.judgment-LxAdv_courtcase.opinion.dita#Rosetta_case.judgment-LxAdv_courtcase.opinion/changes"/>-->
    <!--<section>
            <title>Changes Specific to AU01</title>
            </section>-->

  </body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU01_CaseLaw\AU01_Rosetta_case.judgment-LxAdv_courtcase.opinion.dita  -->
  <!--SS: Done "AU01_Rosetta_case.judgment-LxAdv_courtcase.opinion"-->
  <xsl:template match="case:judgment">
    <courtcase:opinion>
      <xsl:if test="./@subdoc">
        <xsl:attribute name="includeintoc">
          <xsl:value-of select="./@subdoc"/>
        </xsl:attribute>
      </xsl:if>
      <xsl:if test="./@toc-caption">
        <xsl:attribute name="alternatetoccaption">
          <xsl:value-of select="./@toc-caption"/>
        </xsl:attribute>
      </xsl:if>
      <xsl:if test="./@searchtype"/>
      <xsl:apply-templates select="case:courtinfo/case:judges[ancestor::case:content]"/>
      <xsl:apply-templates select="@* | node() except case:courtinfo"/>
    </courtcase:opinion>
  </xsl:template>
  <xsl:template match="@toc-caption | @subdoc | @searchtype"/>
</xsl:stylesheet>