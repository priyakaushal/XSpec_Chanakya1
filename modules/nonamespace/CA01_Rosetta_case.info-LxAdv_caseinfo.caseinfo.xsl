<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:caseinfo="http://www.lexisnexis.com/xmlschemas/content/legal/case-information/1/"
  xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" xmlns:glp="http://www.lexis-nexis.com/glp" xmlns:jurisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/jurisdiction-info/1/"  version="2.0" exclude-result-prefixes="dita caseinfo jurisinfo case glp">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="CA01_Rosetta_case.info-LxAdv_caseinfo.caseinfo">
  <title>case:info <lnpid>id-CA01-12219</lnpid></title>
  <body>
    <section conref="../../common_caselaw/conref_content/Rosetta_case.info-LxAdv_caseinfo.caseinfo.dita#Rosetta_case.info-LxAdv_caseinfo.caseinfo/mapping"/>
    <example>
      <codeblock>
&lt;case:info&gt;
  ...
&lt;/case:info&gt;
      </codeblock>
      <b>becomes</b>
      <codeblock>
&lt;caseinfo:caseinfo&gt;
  ...
&lt;/caseinfo:caseinfo&gt;
            </codeblock>
    </example>
    <!--<section
      conref="../../common_caselaw/conref_content/Rosetta_case.info-LxAdv_caseinfo.caseinfo.dita#Rosetta_case.info-LxAdv_caseinfo.caseinfo/changes"/>-->
    <!--<section>
      <title>Changes Specific to CA01</title>
      </section>-->
  </body>
	</dita:topic>


	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA01-Cases\CA01_Rosetta_case.info-LxAdv_caseinfo.caseinfo.dita  -->
  
  <!-- Vikas Rohilla : Template to match the case:info and creates the caseinfo:caseinfo   -->
  <xsl:template match="case:info[child::case:casename or child::abbrvname]" priority="5">
      <xsl:apply-templates select="case:casename"/>
      <xsl:if test="not(//case:casename)">
        <xsl:element name="caseinfo:casename">
          <xsl:apply-templates select="abbrvname"/>
        </xsl:element>
      </xsl:if>
      <xsl:apply-templates select="case:courtinfo/case:dates/case:hearingdates |
        case:courtinfo/case:filenum"/> 
    <xsl:if test="(count(child::case:reportercite) + count(child::case:parallelcite) + count(child::case:courtinfo/case:courtcite)) &gt;= 1">
      <ref:citations>
        <xsl:apply-templates select="case:reportercite | case:parallelcite | case:courtinfo/case:courtcite"/>
      </ref:citations>
    </xsl:if>                         
    <xsl:apply-templates select="case:courtinfo/case:judges |
                                   case:courtinfo/case:dates/case:decisiondate"/>
      <xsl:if test="child::case:courtinfo/case:courtcode | 
                    child::case:courtinfo/abbrvname | 
                    child::case:courtinfo/case:courtname">
      <xsl:element name="jurisinfo:courtinfo">
      <xsl:apply-templates select="case:courtinfo/case:courtcode"/>
        <xsl:apply-templates select="case:courtinfo/case:courtname"/>
      <xsl:apply-templates select="case:courtinfo/case:juris"/>
      </xsl:element>
      </xsl:if>
  </xsl:template>
  
  <xsl:template match="case:info">
    <xsl:if test="(count(child::case:reportercite) + count(child::case:parallelcite) + count(child::case:courtinfo/case:courtcite)) &gt;= 1">
        <ref:citations>
          <xsl:apply-templates select="case:reportercite | case:parallelcite | case:courtinfo/case:courtcite"/>
        </ref:citations>
      </xsl:if>
   <xsl:apply-templates select="@*|node() except (case:constituents |case:reportercite | case:parallelcite | case:courtinfo/case:courtcite)"/>
      
    
  </xsl:template>
 
  
  
 

</xsl:stylesheet>