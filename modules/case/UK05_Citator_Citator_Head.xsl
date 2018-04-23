<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
	xmlns:case="http://www.lexis-nexis.com/glp/case"
	xmlns:case2="http://www.lexisnexis.com/xmlschemas/content/legal/case/1/"
	xmlns:source_cttr="http://www.lexis-nexis.com/glp/cttr"	
	xmlns:ci="http://www.lexis-nexis.com/ci"
	
	xmlns:cttr="urn:x-lexisnexis:content:citator:sharedservices:1" 	
	xmlns:caseinfo="http://www.lexisnexis.com/xmlschemas/content/legal/case-information/1/"	
	xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/"
	version="2.0" exclude-result-prefixes="dita case case2 ci">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Citator_Head">
		<title>Citator - Head <lnpid>id-UK05-27810</lnpid></title>
		<body>
			<p>
				<sourcexml>case:headnote</sourcexml> becomes <targetxml>cttr:head</targetxml> and children are described below. <ul>
					<li>
						<sourcexml>case:info</sourcexml> becomes <targetxml>cttr:citeddecision/cttr:caseinfo</targetxml> and the
						children are described below : </li>
				</ul>
			</p>
		</body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK05_Citator\Citator_Head.dita  -->

	<xsl:template match="case:headnote | case2:headnote">
		<!--  Original Target XPath:  cttr:head   -->
		<cttr:head>
			<xsl:apply-templates select="@* | node()"/>
		</cttr:head>
	</xsl:template>
	
	<xsl:template name="case.info_contents">
		<!-- fullcasename / alternatecasename-->
		<xsl:apply-templates select="case:casename | case2:casename"/>
		<!-- altname -->
		<xsl:apply-templates select="case:altname | case2:altname"/>
		<!-- docket number -->
		<!-- • The content, following the last colon(:) inside case:casename and the content within ci:cite/ci:content should be concatenated and placed in cttr:caseinfo/caseinfo:docketnum. -->		
		<xsl:apply-templates select=".//ci:cite[not(parent::case:parallelcite or parent::case2:parallelcite)]/ci:content[1]" 
			mode="caseinfo.docketnum"/>
		<!-- cttr:annotationrefs -->
		
		<!-- cttr:citations -->
		<xsl:if test=".//ci:cite">
			<!-- • Each ci:cite should also be mapped to cttr:caseinfo//cttr: cttr:citations/lnci:cite. -->
			<cttr:citations>
				<xsl:apply-templates select="case:parallelcite | case:reportercite | case2:parallelcite | case2:reportercite" 
					mode="cttr.citations"/>
				<xsl:for-each select=".//ci:cite[not(parent::case:parallelcite or parent::case2:parallelcite)]">
					<xsl:apply-templates select="."/>
				</xsl:for-each>
				<!--
						Within the same cttr:caseinfo/cttr:citations element that contains the parallel citations, create the LexisCitation from case:parallelcite that
						contains ci:cite/ci:content/remotelink as follows:
						-->
				<xsl:apply-templates select="case:parallelcite | case:reportercite | case2:parallelcite | case2:reportercite"
					mode="remotelink"/>
			</cttr:citations>					
		</xsl:if>
		
		<!-- jurisinfo:courtinfo -->
		<xsl:apply-templates select="case:courtinfo | case2:courtinfo"/>
		
		<!-- decision:dates -->
		<xsl:apply-templates select="case:dates | case2:dates"/>
		
		<!-- ref:citations -->				
		<xsl:if test=".//ci:cite[not(ci:content/remotelink)]">
			<!-- • Each ci:cite should be mapped to cttr:caseinfo/ref:citations/ref:cite4thisresource. -->
			<!-- JD: note that cttr:citations appear before ref:citations -->
			<ref:citations>
				<xsl:apply-templates select="case:parallelcite | case:reportercite | case2:parallelcite | case2:reportercite" 
					mode="ref.citations"/>
				<xsl:for-each select=".//ci:cite[not(ci:content/remotelink) 
					                           and not(ancestor::*[name()=('case:parallelcite', 'case:reportercite', 'case2:parallelcite', 'case2:reportercite')])]">
					<ref:cite4thisresource>
						<xsl:apply-templates select="." />
					</ref:cite4thisresource>
				</xsl:for-each>
			</ref:citations>
		</xsl:if>
	</xsl:template>

	<xsl:template match="case:info[not(parent::source_cttr:annot)] | case2:info[not(parent::source_cttr:annot)]">
		<!--  Original Target XPath:  cttr:citeddecision/cttr:caseinfo   -->
		<!--
				JD: schema order:
				caseinfo:casename
				caseinfo:alternatecasename
				popname
				caseinfo:docketnum
				cttr:annotationrefs
				cttr:citations
				jurisinfo:courtinfo
				courtcase:judges
				caseinfo:constituents
				decision:dates
				ref:citations
				-->
		<cttr:citeddecision>
			<cttr:caseinfo>
				<xsl:call-template name="case.info_contents"/>
			</cttr:caseinfo>
		</cttr:citeddecision>
	</xsl:template>
	
	
	<xsl:template match="ci:content" mode="caseinfo.docketnum">
		<caseinfo:docketnum>
			<xsl:apply-templates/>
		</caseinfo:docketnum>
	</xsl:template>
	
</xsl:stylesheet>
