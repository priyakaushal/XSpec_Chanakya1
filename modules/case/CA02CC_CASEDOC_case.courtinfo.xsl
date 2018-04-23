<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:jurisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/jurisdiction-info/1/" xmlns="http://dita.oasis-open.org/architecture/2005/" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="case.courtinfo">
  <title>case:courtinfo <lnpid>id-CA02CC-12415</lnpid></title>
  <body>
    <section>
      <ul>
        <li>
          <sourcexml>case:courtinfo</sourcexml> becomes <targetxml>jurisinfo:courtinfo</targetxml>
          <!--<note>From now
            onwards, <targetxml>casedigest:caseinfo</targetxml> will be placed under
            <targetxml>casedigest:head</targetxml> and not in
            <targetxml>casedigest:body</targetxml> and rest all converion scenarios
			will remain same. Please see below target examples for more details.</note>-->
          <pre>

&lt;case:courtinfo&gt;
    ..........
    ..........
&lt;/case:courtinfo&gt;


<b>Becomes</b>


&lt;casedigest:head&gt;
    &lt;casedigest:caseinfo&gt;
        &lt;jurisinfo:courtinfo&gt;
            ..........
            ..........
        &lt;/jurisinfo:courtinfo&gt;
    &lt;/casedigest:caseinfo&gt;
&lt;/casedigest:head&gt;
</pre>
        </li>
      </ul>
    </section>
      <section>
          <title>Changes</title>
		  <p>2014-03-26 <ph id="change_20140326_SEP">Removed ambiguity caused by the note beginning "From now onwards..."<b>DB item # 145</b></ph></p>
      </section>
  </body>
	</dita:topic>

	
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA02-Case_Summaries\CA02CC_CASEDOC\case.courtinfo.dita  -->
	 
<!-- Sudhanshu Srivastava edited on 15-may-2017 -->
<xsl:template match="case:courtinfo">
  <!--  Original Target XPath:  jurisinfo:courtinfo   -->
  <xsl:choose>
  <xsl:when test="case:dates and not(case:dates/preceding-sibling::*) and not(case:dates/following-sibling::*)">
    <xsl:apply-templates select="case:dates"/>
  </xsl:when>
   <!-- The below condition is being suppressed as this is being handeled in other module.-->
  <xsl:when test="case:courtcite and not(case:courtcite/preceding-sibling::*) and not(case:courtcite/following-sibling::*)"/>
  <!--<xsl:when test="case:filenum and not(case:filenum/preceding-sibling::* except (case:filenum) and case:filenum/following-sibling::* except (case:filenum)) and not(case:filenum/preceding-sibling::* and case:filenum/following-sibling::*)">
    <xsl:apply-templates select="case:filenum"/>
  </xsl:when>-->
    
    
  
  <xsl:otherwise>
   <!-- <xsl:choose>
      <xsl:when test="preceding-sibling::case:reportercite">
        <xsl:apply-templates select="* except (case:filenum|case:courtcite|abbrvname|case:courtname|case:juris|case:courtcode)"/>    
      </xsl:when>
      <xsl:otherwise>
        <xsl:apply-templates select="* except (case:courtcite|abbrvname|case:courtname|case:juris|case:courtcode)"/>
      </xsl:otherwise>
    </xsl:choose>-->
   <!-- <xsl:if test="case:filenum and case:filenum/preceding-sibling::case:courtcite and case:filenum/following-sibling::*">
      <xsl:apply-templates select="case:filenum"/>
    </xsl:if>-->
    <xsl:apply-templates select="case:filenum"/>

        <xsl:choose>
          <xsl:when test="not(abbrvname or case:courtname or case:juris)"/>
          <xsl:otherwise>
            <jurisinfo:courtinfo>
              <xsl:apply-templates select="abbrvname"/>
              <xsl:apply-templates select="case:courtname" mode="court"/>
              <xsl:apply-templates select="case:juris"/>
            </jurisinfo:courtinfo>
          </xsl:otherwise>
        </xsl:choose>

    <xsl:apply-templates select="case:judges,case:dates[case:hearingdates]"/>
  </xsl:otherwise>
</xsl:choose>
	</xsl:template>
  
  
  <xsl:template match="case:courtinfo[case:courtcite]" mode="wrapinfo">
    <xsl:apply-templates select="case:courtcite"/>
  </xsl:template>
  
</xsl:stylesheet>