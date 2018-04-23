<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
  xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
  xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"
  xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:casesum="http://www.lexisnexis.com/xmlschemas/content/legal/case-summary/1/" xmlns:courtcase="http://www.lexisnexis.com/xmlschemas/content/legal/courtcase/1/" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="AU01_Rosetta_case.disposition-LxAdv_casesum.disposition">
  <title>case:disposition <lnpid>id-AU01-18219</lnpid></title>
  <body>
    <section conref="../../common_caselaw/conref_content/Rosetta_case.disposition-LxAdv_casesum.disposition.dita#Rosetta_case.disposition-LxAdv_casesum.disposition/mapping"/>
    <section>
      <p>The attributes of <sourcexml>case:disposition</sourcexml> are handled as follows:<ul>
          <li><sourcexml>case:disposition/@subdoc</sourcexml> becomes
              <targetxml>casesum:disposition/@includeintoc</targetxml>.</li>
          <li><sourcexml>case:disposition/@toc-caption</sourcexml> becomes
              <targetxml>casesum:disposition/@alternatetoccaption</targetxml>.</li>
        </ul></p>
      <note><sourcexml>case:disposition</sourcexml> occurs in two contexts. The full mappings from
        Rosetta to NL are as follows:<ul>
          <li><sourcexml>CASEDOC/case:body/case:headnote/case:disposition</sourcexml> becomes
              <targetxml>courtcase:head/casesum:summaries/casesum:disposition</targetxml>.</li>
          <li><sourcexml>CASEDOC/case:body/case:content/case:judgments/case:disposition</sourcexml>
            becomes
            <targetxml>courtcase:body/courtcase:opinions/casesum:disposition</targetxml>.</li>
        </ul>
      </note>
      <note>Conversion should not create consecutive <targetxml>casesum:summaries</targetxml>
        elements. When 2 or more consecutive sibling source elements map to
          <targetxml>casesum:summaries</targetxml>, target data should be merged to a single
          <targetxml>casesum:summaries</targetxml> element unless this would hamper content
        ordering.</note>
      <note>
        <p>For information on how to process the attribute @ln.user-displayed. Refer
          common_rosetta_ln.user_displayed for handling of
          <targetxml>@ln.user-displayed</targetxml></p>
      </note>
    </section>
    <example>
      <codeblock>
&lt;case:disposition&gt;Appeal dismissed.&lt;/case:disposition&gt;
       </codeblock>
      <b>becomes</b>
      <codeblock>
&lt;casesum:disposition&gt;
    &lt;p&gt;
      &lt;text&gt;Appeal dismissed.&lt;/text&gt;
    &lt;/p&gt;
&lt;/casesum:disposition&gt;
       </codeblock>
    </example>
    <!--<section
      conref="../../common_caselaw/conref_content/Rosetta_case.disposition-LxAdv_casesum.disposition.dita#Rosetta_case.disposition-LxAdv_casesum.disposition/changes"/>-->
    <!--<section>
      <title>Changes Specific to AU01</title>
      </section>-->
  </body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU01_CaseLaw\AU01_Rosetta_case.disposition-LxAdv_casesum.disposition.dita  -->
<!-- Awantika: 2017-10-30-Added <text> after <p>-->
  <xsl:template match="case:disposition[parent::case:headnote]" mode="summaries">
    
    <!--  Original Target XPath:  casesum:disposition/@includeintoc   -->
    <xsl:choose>
      <xsl:when test="@ln.user-displayed='false'"/>
      <xsl:otherwise>
        <casesum:disposition>
          <p>
            <text>
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
            <xsl:apply-templates select="@* | node()"/>
            </text>
          </p>
        </casesum:disposition>        
      </xsl:otherwise>
    </xsl:choose>    
  </xsl:template>
  
  <xsl:template match="case:disposition[parent::case:judgments]">
    
    <!--  Original Target XPath:  casesum:disposition/@includeintoc   -->
    <xsl:choose>
      <xsl:when test="@ln.user-displayed='false'"/>
      <xsl:otherwise>
        <casesum:disposition>
          <p>
            <text>
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
              <xsl:apply-templates select="@* | node()"/>
            </text>
          </p>
        </casesum:disposition>
      </xsl:otherwise>
    </xsl:choose>
    
    
  </xsl:template>  

</xsl:stylesheet>