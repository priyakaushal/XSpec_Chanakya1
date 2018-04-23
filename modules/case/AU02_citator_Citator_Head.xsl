<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
	xmlns:source_case="http://www.lexis-nexis.com/glp/case" xmlns:cttr="urn:x-lexisnexis:content:citator:sharedservices:1"
	xmlns:source_cttr="http://www.lexis-nexis.com/glp/cttr"
	version="2.0" exclude-result-prefixes="dita source_case source_cttr">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Citator_Head">
  <title>Citator - Head <lnpid>id-AU02-18413</lnpid></title>
  <body>
    <p>
      <b>The following conversion instruction is specific to AU Citator:</b>
      <ul>
        <li>
          <sourcexml>case:info</sourcexml> becomes
            <targetxml>cttr:citeddecision/cttr:caseinfo</targetxml> and the children are described
          below: </li>
      </ul>
      <note>If <sourcexml>case:info</sourcexml> contains
          <sourcexml>note/lnlink[@service="SEARCH"]</sourcexml>, suppress
          <sourcexml>note</sourcexml> and comment out
          <sourcexml>lnlink[@service="SEARCH"]</sourcexml> as described in <xref href="../../common_newest/Rosetta_lnlink_service_SEARCH-LxAdv-SUPPRESS.dita#Rosetta_lnlink_service_SEARCH-to-LexisAdvance_SUPPRESS"/>.</note>
    </p>
    <section>
      <title>Changes</title>
      <p>2014-04-25: <ph id="change_20140425_Citator_Head_brt">Added instruction to suppress <targetxml>note/lnlink[@service="SEARCH"]</targetxml>.</ph></p>
    </section>
  </body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU02_citator\Citator_Head.dita  -->

	<xsl:template match="source_case:info">
	  <xsl:choose>
	  	<xsl:when test="/CITATORDOC[@journalarticle='true'] and not(parent::source_cttr:annot)">
	      <xsl:apply-templates select="." mode="citator-journal"/>
	    </xsl:when>
	  	<xsl:when test="parent::source_cttr:annot[parent::source_cttr:annotations[@annotationtype='litigation-history']]">
	  		<cttr:caseinfo>
	  			<xsl:apply-templates select="@*"/>
	  			<xsl:apply-templates select="source_case:casename"/>	  			
	  			<xsl:apply-templates select="source_case:courtinfo"/>
	  			<xsl:apply-templates select="source_case:courtinfo/source_case:judges"/>
	  			<xsl:apply-templates select="source_case:courtinfo/source_case:dates"/>
	  		</cttr:caseinfo>
	  	</xsl:when>
	  	<xsl:when test="parent::source_cttr:annot[not(parent::source_cttr:annotations[@annotationtype='subseqarticles'])]">
	  		<cttr:caseinfo>
	  			<xsl:apply-templates select="@*"/>
	  			<xsl:apply-templates select="source_case:casename"/>
	  			<xsl:apply-templates select="following-sibling::source_case:citations"/>
	  			<xsl:apply-templates select="source_case:courtinfo"/>
	  			<xsl:apply-templates select="source_case:courtinfo/source_case:judges"/>
	  			<xsl:apply-templates select="source_case:courtinfo/source_case:dates"/>
	  		</cttr:caseinfo>
	  	</xsl:when>
	  	<xsl:when test="parent::source_cttr:annot[parent::source_cttr:annotations[@annotationtype='subseqarticles']]">
	  			<xsl:apply-templates select="source_case:casename"/>
	  			<xsl:apply-templates select="following-sibling::source_case:citations"/>
	  			<xsl:apply-templates select="source_case:courtinfo"/>
	  			<xsl:apply-templates select="source_case:courtinfo/source_case:judges"/>
	  			<xsl:apply-templates select="source_case:courtinfo/source_case:dates"/>  		
	  	</xsl:when>
	    <xsl:otherwise>
	      <cttr:citeddecision>
	        <cttr:caseinfo>
	          <xsl:apply-templates select="@*"/>
	          <xsl:apply-templates select="source_case:casename"/>
	          <xsl:apply-templates select="popname"/>
	          <xsl:apply-templates select="source_case:parallelcite"/>
	          <xsl:apply-templates select="source_case:courtinfo"/>
	          <xsl:apply-templates select="source_case:courtinfo/source_case:judges"/>
          	  <xsl:apply-templates select="source_case:courtinfo/source_case:dates"/>
	          <xsl:apply-templates select="source_case:parallelcite" mode="ref"/>	
	        </cttr:caseinfo>
	      </cttr:citeddecision>
	    </xsl:otherwise>
	  </xsl:choose>
		
	</xsl:template>

	<xsl:template match="source_case:info/note[child::lnlink[@service='SEARCH']]" priority="25">
		<xsl:apply-templates select="lnlink[@service='SEARCH']"/>
	</xsl:template>

</xsl:stylesheet>