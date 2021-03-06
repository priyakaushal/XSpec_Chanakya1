<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:casedigest="http://www.lexisnexis.com/xmlschemas/content/legal/case-digest/1/"
  xmlns:proc="http://www.lexisnexis.com/xmlschemas/content/shared/process-elements/1/"  xmlns:casesum="http://www.lexisnexis.com/xmlschemas/content/legal/case-summary/1/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Case-Summaries_Body">
  <title>Body <lnpid>id-CA02CC-12408</lnpid></title>

  <body>
    <section>
    <p>
      <sourcexml>case:body</sourcexml> becomes <targetxml>casedigest:body</targetxml>
    </p>
    
    <p>
      <targetxml>casedigest:body</targetxml> element requires at least one of the following child elements:
    </p>
    
    <p>
      <targetxml>casedigest:actionparty</targetxml>, <targetxml>casedigest:appearances</targetxml>, <targetxml>casedigest:caseinfo</targetxml>, <targetxml>casedigest:damages</targetxml>, <targetxml>casedigest:facts</targetxml>, <targetxml>casedigest:injury</targetxml>, <targetxml>casedigest:negotiations</targetxml>, <targetxml>casedigest:outcome</targetxml>, <targetxml>casedigest:trial</targetxml>, <targetxml>casedigest:otherinfo</targetxml>, <targetxml>casesum:disposition</targetxml>, <targetxml>note</targetxml>, <targetxml>correction</targetxml>, <targetxml>casedigest:decision</targetxml>, <targetxml>ref:page</targetxml>.
    </p>
    </section>
    <section>
      <note>Element <targetxml>casedigest:body</targetxml> is the required child of the root element
          <targetxml>casedigest:casedigest</targetxml>, so conversion will've to create it during
        conversion. But in some cases element <targetxml>casedigest:body</targetxml> doesn't get any
        content in source document to be tagged under it, like this conversion will've to create
          <targetxml>casedigest:body</targetxml> as an empty element which is not a valid output, so
        to out come from this situation conversion need to create an empty element
          <targetxml>&lt;proc:nocontent/&gt;</targetxml> within
          <targetxml>casedigest:body</targetxml>.</note>
      <pre><b>Please see below Output example:</b>


&lt;casedigest:body&gt;
    &lt;proc:nocontent/&gt;
&lt;/casedigest:body&gt;
        
      </pre>
    </section>
  </body>

	</dita:topic>

	
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA02-Case_Summaries\CA02CC_CASEDOC\Body.dita  -->
	
<!-- Sudhanshu Srivastava edited on 15-May-2017 -->
	<xsl:template match="case:body">
		<!--  Original Target XPath:  casedigest:body   -->
		<casedigest:body>
		  <!--<xsl:apply-templates select="@* | node()"/>-->
		  <xsl:choose>
		    <xsl:when test="case:headnote/* except case:headnote/(case:info|case:length) | case:content">
		      <xsl:apply-templates select="case:headnote/* except case:headnote/(case:info|case:length)"/>    
		      <xsl:apply-templates select="case:content"/>
		    </xsl:when>
		    <xsl:otherwise>
		      <proc:nocontent></proc:nocontent>
		    </xsl:otherwise>
		  </xsl:choose>
		  
		  
		</casedigest:body>
	</xsl:template>
</xsl:stylesheet>