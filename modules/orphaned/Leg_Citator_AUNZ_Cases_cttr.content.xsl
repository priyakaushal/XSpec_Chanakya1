<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:source_cttr="http://www.lexis-nexis.com/glp/cttr" xmlns:cttr="urn:x-lexisnexis:content:citator:sharedservices:1" xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Leg_Citator_AUNZ_Cases_cttr.content">
  <title>cttr:body/cttr:content <lnpid>id-AU20-22274</lnpid></title>
  
  <body>

    <section>
      <p>For <sourcexml>/cttr:content</sourcexml> create <targetxml>cttr:refs[@reftype="cases"]</targetxml>
      </p>
      <p>Create <targetxml>ref:anchor[@id="ref-cases"]</targetxml> within 
        <targetxml>cttr:refs[@reftype="cases"]</targetxml>.</p>
    </section>
    <section>
      <title>Changes:</title>
      <p>2015-12-11: <ph id="change_20151211a_snb">Added <targetxml>[@reftype="cases"]</targetxml> to 
        <targetxml>cttr:refs</targetxml>. Added creation of <targetxml>ref:anchor[@id="ref-cases"]</targetxml>.</ph>
      </p>
    </section>

  </body>
  
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU20_Legislative_Citator\Leg_Citator_AUNZ_Cases_cttr.content.dita  -->
	<!--<xsl:message>Leg_Citator_AUNZ_Cases_cttr.content.xsl requires manual development!</xsl:message>--> 

  <xsl:template match="source_cttr:content" mode="Cases-Tab-Content">
	  <xsl:variable name="matchoverview">
	    <xsl:analyze-string select="docinfo/docinfo:doc-id" regex=".*-(.*)">
	      <xsl:matching-substring>
	        <xsl:value-of select="regex-group(1)"/>
	      </xsl:matching-substring>
	    </xsl:analyze-string>
	  </xsl:variable>
	  
		<cttr:refs>
		  <xsl:if test="$matchoverview='cases' or 'CASES' or 'Cases'">
		  <xsl:attribute name="reftype">
		        <xsl:text>cases</xsl:text>
		  </xsl:attribute>
		  </xsl:if>
		  <ref:anchor>
		    <xsl:attribute name="id">
		      <xsl:text>ref-cases</xsl:text>
		    </xsl:attribute>
		  </ref:anchor>
		  <xsl:apply-templates select="source_cttr:annotations/source_cttr:annotsummary[@display-name='Cases by Court and Year'][@id='CI2']" mode="Cases_Court"/>
			<xsl:apply-templates select="@* | node()"/>
		</cttr:refs>
	</xsl:template>

  <xsl:template match="source_cttr:annotations/source_cttr:annotsummary[@display-name='Cases by Court and Year'][@id='CI2']" mode="Cases_Court">
  <xsl:choose>
      <xsl:when test="child::*[local-name()='table' and position()=1]">
       <xsl:apply-templates select="node()"/> 
      </xsl:when>
    <xsl:otherwise>
      <xsl:apply-templates select="@* | node()"/>
    </xsl:otherwise>
  </xsl:choose>
    
  
</xsl:template>


</xsl:stylesheet>