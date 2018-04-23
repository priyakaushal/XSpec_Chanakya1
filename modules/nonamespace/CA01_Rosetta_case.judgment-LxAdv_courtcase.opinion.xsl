<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:courtcase="http://www.lexisnexis.com/xmlschemas/content/legal/courtcase/1/" xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="CA01_Rosetta_case.judgment-LxAdv_courtcase.opinion">
  <title>case:judgment <lnpid>id-CA01-12222</lnpid></title>
  <body>
    <section conref="../../common_caselaw/conref_content/Rosetta_case.judgment-LxAdv_courtcase.opinion.dita#Rosetta_case.judgment-LxAdv_courtcase.opinion/mapping"/>
    <example>
      <codeblock>
&lt;case:judgments&gt;
  &lt;case:judgment&gt;
    &lt;case:judgmentbody&gt;
      &lt;p&gt;
        &lt;text&gt;&lt;emph typestyle="bf"&gt;MITCHELL, J.&lt;/emph&gt; (for the Court, allowing the appeal): This
          case concerns the interpretation of municipal bylaws and the availability of injunctive
          relief to restrain their violation.&lt;/text&gt;
      &lt;/p&gt;
      ...
    &lt;/case:judgmentbody&gt;
  &lt;/case:judgment&gt;
&lt;/case:judgments&gt;
       </codeblock>
      <b>becomes</b>
      <codeblock>
&lt;courtcase:opinions&gt;
  &lt;courtcase:opinion&gt;
    &lt;bodytext&gt;
      &lt;p&gt;
        &lt;text&gt;&lt;emph typestyle="bf"&gt;MITCHELL, J.&lt;/emph&gt; (for the Court, allowing the appeal): This
          case concerns the interpretation of municipal bylaws and the availability of injunctive
          relief to restrain their violation.&lt;/text&gt;
      &lt;/p&gt;
      ...
    &lt;/bodytext&gt;
  &lt;/courtcase:opinion&gt;
&lt;/courtcase:opinions&gt;
       </codeblock>
    </example>
    <!--<section
            conref="../../common_caselaw/conref_content/Rosetta_case.judgment-LxAdv_courtcase.opinion.dita#Rosetta_case.judgment-LxAdv_courtcase.opinion/changes"/>-->
    <!--<section>
            <title>Changes Specific to CA01</title>
            </section>-->

  </body>
	</dita:topic>

  <xsl:template match="case:judgment">
   <!-- <xsl:element name="courtcase:opinion">-->
      <xsl:apply-templates/>
    <!--</xsl:element>-->
  </xsl:template>
  
  
  
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA01-Cases\CA01_Rosetta_case.judgment-LxAdv_courtcase.opinion.dita  -->
  
  <!--<!-\- Vikas Rohilla : Template to match the case:judgment   -\->
  <xsl:template match="case:judgment[not(preceding-sibling::*[1][self::case:judgment])]">
    <xsl:element name="courtcase:opinions">
    <xsl:element name="courtcase:opinion">
      <xsl:apply-templates/>
      <xsl:if test="following-sibling::*[1][self::case:judgment]">
        <xsl:call-template name="following-judgement">
          <xsl:with-param name="node" select="following-sibling::*[1][self::case:judgment]"></xsl:with-param>
        </xsl:call-template>
      </xsl:if>     
    </xsl:element>
      <xsl:if test="following-sibling::*[1][self::footnotegrp]">
        <xsl:apply-templates select="following-sibling::*[1][self::footnotegrp]"/>
      </xsl:if>
    </xsl:element>
  </xsl:template>  
  
  <xsl:template name="following-judgement">
    <xsl:param name="node"/>
    <xsl:apply-templates select="$node" mode="following-judgement"/>
    <xsl:if test="$node/following-sibling::*[1][self::case:judgment]">
      <xsl:call-template name="following-judgement">
        <xsl:with-param name="node" select="$node/following-sibling::case:judgment"/>
      </xsl:call-template>
    </xsl:if>
  </xsl:template>
  
  <xsl:template match="case:judgment" mode="following-judgement">
    <xsl:element name="courtcase:opinion">
      <xsl:apply-templates/>
    </xsl:element>
  </xsl:template>
  
  <xsl:template match="case:judgment[preceding-sibling::*[1][self::case:judgment]]"/>-->
  

</xsl:stylesheet>