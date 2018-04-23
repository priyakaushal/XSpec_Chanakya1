<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ci="http://www.lexis-nexis.com/ci" xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
	xmlns:case="http://www.lexis-nexis.com/glp/case"
	xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/"	xmlns:casedigest="http://www.lexisnexis.com/xmlschemas/content/legal/case-digest/1/" version="2.0" exclude-result-prefixes="dita case ci">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="case.info">
  <title>case:info <lnpid>id-CA02CC-12421</lnpid></title>
  <body>
    <section>
      <ul>
        <li>
          <sourcexml>case:info</sourcexml> becomes <targetxml>casedigest:caseinfo</targetxml>. 
          <p>The mappings for the children of <sourcexml>case:info</sourcexml> are discussed as separate topics.</p>
          
          <note>Conversion should not create consecutive <targetxml>casedigest:caseinfo</targetxml> elements. When two or more consecutive sibling source elements map to <targetxml>casedigest:caseinfo</targetxml>, data should be merged to a single <targetxml>casedigest:caseinfo</targetxml> element unless this would hamper content ordering.</note>
          <pre>


&lt;case:info&gt;
    ......
    ......
&lt;/case:info&gt; 

                    </pre>
          <b>Becomes</b>
          <pre>
    

&lt;casedigest:head&gt;
    &lt;casedigest:caseinfo&gt;
        .................
        .................
    &lt;/casedigest:caseinfo&gt;
&lt;/casedigest:head&gt;

          </pre>
        </li>
      </ul>
    </section>
  </body>
	</dita:topic>

	
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA02-Case_Summaries\CA02CC_CASEDOC\case.info.dita  -->
	 
<!-- Sudhanshu Srivastava edited on 15-May-2017. -->
	<xsl:template match="case:info">
		<!--  Original Target XPath:  casedigest:caseinfo   -->
	 <!-- <casedigest:caseinfo>
	     <xsl:apply-templates select="@* | node()"/>
	  </casedigest:caseinfo>-->
	  
		<casedigest:caseinfo>
			<xsl:apply-templates select="case:courtinfo[case:dates/case:decisiondate/date],case:pubinfo,abbrvname,case:casename"/>
		  <!--<xsl:apply-templates select="@* | node()"/>-->
		</casedigest:caseinfo>
	  <xsl:apply-templates select="case:reportercite"/>
	  <casedigest:caseinfo>
	    <xsl:choose>
	    	<xsl:when test="case:parallelcite|case:reportercite[ci:cite[not(@type='cite4thisdoc')]]|case:courtinfo[case:courtcite]">
	    	<ref:citations>
	    		<xsl:apply-templates select="case:parallelcite|case:reportercite[ci:cite[not(@type='cite4thisdoc')]]|case:courtinfo[case:courtcite]" mode="wrapinfo"/>
	    	</ref:citations>
	    		
	    		<xsl:apply-templates select="@*|node() except (case:courtinfo[case:dates/case:decisiondate/date]|abbrvname|case:pubinfo|case:casename|case:reportercite[ci:cite[@type='cite4thisdoc']]|case:parallelcite|case:courtinfo[case:courtcite and not(case:courtcite/following-sibling::*)])"/>    
	      </xsl:when>
	      <xsl:otherwise>
<!--	        <xsl:apply-templates select="case:courtinfo/case:filenum"/>-->
	      	<xsl:apply-templates select="@*|node() except (case:courtinfo[case:dates/case:decisiondate/date]|abbrvname|case:pubinfo|case:casename|case:reportercite)"/>
	      </xsl:otherwise>
	    </xsl:choose>
	  </casedigest:caseinfo>
	  
	  <!--<casedigest:caseinfo>
	    <xsl:apply-templates select="@*|node() except (case:courtinfo/case:dates|abbrvname|case:casename|case:reportercite)"/>
	  </casedigest:caseinfo>-->
	</xsl:template>
</xsl:stylesheet>