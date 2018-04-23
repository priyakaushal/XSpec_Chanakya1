<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/"	
	xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/"
	xmlns:case="http://www.lexis-nexis.com/glp/case"
	xmlns:xs="http://www.w3.org/2001/XMLSchema" 
	xmlns:ci="http://www.lexis-nexis.com/ci" version="2.0"
	exclude-result-prefixes="dita ci case xs">
<dita:topic
	id="Rosetta_refpt_emph_isChildOf_p_text-to-LexisAdvance_p_ref.anchor"
	xmlns:ditaarch="http://dita.oasis-open.org/architecture/2005/">
	<title><sourcexml>refpt/emph</sourcexml> child of <sourcexml>p/text</sourcexml> to <targetxml>p/ref:anchor</targetxml> <lnpid>id-CCCC-10492</lnpid></title>
	<body>
		<section>
			<p>If <sourcexml>refpt/emph</sourcexml> occurs under <sourcexml>p/text</sourcexml> then
				<targetxml>ref:anchor</targetxml> will move to become the first child of
				<targetxml>p</targetxml> but the <targetxml>emph</targetxml> will remain within the <targetxml>text</targetxml>.</p>
			<note>All occurrences of <sourcexml>refpt[@type="ext"]</sourcexml> should map to <targetxml>ref:anchor[@anchortype="global"]</targetxml>. If value of <sourcexml>refpt[@type="local"</sourcexml>, or is omitted or any other value the mapping should be <targetxml>ref:anchor[@anchortype="local"]</targetxml>.</note>
		</section>
		<example>
			<title>Source XML</title>
			<codeblock>
				<![CDATA[
<p>
	<text>
	<refpt id="HISTDISP001">
		<emph typestyle="bf">History and Disposition: </emph>
	</refpt> 
	</text>
</p>
]]>
			</codeblock>
		</example>
		<example>
			<title>Target XML</title>
			<codeblock>
				<![CDATA[
<p>
	<ref:anchor id="HISTDISP001" anchortype="local"/>
	<text>
		<emph typestyle="bf">History and Disposition: </emph>
	</text>
</p>
  ]]>
			</codeblock>
		</example>
		<section>
			<title>Changes</title>
			<p>2012-08-30: <ph id="change_20140502_SP">Created.<b>Phase 4B Issue #169</b></ph></p>
		</section>
	</body>
</dita:topic>

	<!-- moved the p/text/refpt move to p/ref:anchor functionality to  modules/nonamespace/Rosetta_p-LxAdv-p.xsl -->
<!-- this is the version that gets output as the first child of p -->	

	
	<xsl:template match="p/text/refpt[emph]" priority="25">
		<xsl:apply-templates select="." mode="no-emph"/>
	</xsl:template>
	
	<xsl:template match="p/text[refpt[emph]]">
		<text xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
			<xsl:apply-templates select="@*"/>
			<!-- node walkthru! -->
			<xsl:for-each select="node()">
				<xsl:choose>
					<xsl:when test="self::refpt[emph]">
						<xsl:apply-templates select="emph"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:apply-templates select="."/>
					</xsl:otherwise>
				</xsl:choose>				
			</xsl:for-each>
		</text>		
	</xsl:template>

	<xsl:template match="refpt" mode="no-emph">		
		<!--  Original Target XPath:  ref:anchor   -->
		<xsl:variable name="dup">
			<xsl:call-template name="amIaDuplicate"/>
		</xsl:variable>
		<xsl:choose>
			<xsl:when
				test="parent::ci:content or parent::case:casename or ancestor::figure or preceding-sibling::page 
				or following-sibling::page or preceding-sibling::*[1][self::remotelink] or following-sibling::*[1][self::remotelink] or $dup='true'"/>
			<xsl:otherwise>
				<ref:anchor>
					<xsl:apply-templates select="@*"/>
					<xsl:if test="not(@type)">
						<xsl:attribute name="anchortype" select="'local'"/>
					</xsl:if>
					<xsl:if test="node()[not(self::emph)]">
						<ref:anchortext><xsl:apply-templates select="node() except emph"/></ref:anchortext>
					</xsl:if>					
				</ref:anchor>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>

</xsl:stylesheet>
		
	
