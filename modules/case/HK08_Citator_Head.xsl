<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
	xmlns:case="http://www.lexis-nexis.com/glp/case" 	
	xmlns:source_cttr="http://www.lexis-nexis.com/glp/cttr" 
	xmlns:cttr="urn:x-lexisnexis:content:citator:sharedservices:1" 
	version="2.0" exclude-result-prefixes="dita case source_cttr">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Citator_Head">
  <title>Citator - Head <lnpid>id-HK08-37612</lnpid></title>
  <body>
    <p>
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
      <p>2016-04-19: <ph id="change_20160419_AS">Created</ph></p>
    </section>
  </body>
	</dita:topic>


	<xsl:template match="case:info">

		<!--  Original Target XPath:  cttr:citeddecision/cttr:caseinfo   -->
		<xsl:choose>
			<xsl:when test="parent::source_cttr:annot">
				<cttr:caseinfo>
					<xsl:apply-templates select="@* | node() except (case:courtinfo)"/>
					<xsl:apply-templates select="following-sibling::case:citations"/>
					<xsl:apply-templates select="case:courtinfo"/>
				</cttr:caseinfo>
			</xsl:when>
			<xsl:otherwise>
				<cttr:citeddecision>
					<cttr:caseinfo>
						<xsl:apply-templates select="@*"/>
						<xsl:apply-templates select="case:casename"/>
						<xsl:apply-templates select="popname"/>
						<xsl:apply-templates select="case:parallelcite"/>
						<xsl:apply-templates select="node() except (case:casename, popname, case:parallelcite)"/>
						<xsl:apply-templates select="case:parallelcite" mode="ref"/>
					</cttr:caseinfo>
				</cttr:citeddecision>
			</xsl:otherwise>
		</xsl:choose>
		
	</xsl:template>

	<xsl:template match="note/lnlink[@service='SEARCH']">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

	<xsl:template match="note[lnlink[@service='SEARCH']]">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

</xsl:stylesheet>