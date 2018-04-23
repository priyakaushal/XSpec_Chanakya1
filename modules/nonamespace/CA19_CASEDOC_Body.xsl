<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet	version="2.0"
						xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
						xmlns:dita="http://dita.oasis-open.org/architecture/2005/"

						xmlns:case="http://www.lexis-nexis.com/glp/case"
						xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo"

						xmlns:courtfiling="http://www.lexisnexis.com/xmlschemas/content/legal/courtfiling/1/"
						xmlns:base="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"
						xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/"

						exclude-result-prefixes="dita case docinfo">

	<xsl:template match="case:content">
		<courtfiling:body>
			<xsl:apply-templates select="@*"/>
			<xsl:apply-templates select="../case:headnote/case:references"/> <!-- becomes ref:relatedrefs-->
			<xsl:apply-templates select="node() except docinfo"/>
			<courtfiling:div>
				<!-- LBU indicates divtype 'other' will be sufficient-->
				<xsl:attribute name="divtype" select="'other'"/>
				<bodytext xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
					<xsl:apply-templates select="case:judgments/case:judgment/case:judgmentbody"/>
				</bodytext>
				<xsl:if test="case:judgments/footnotegrp">
					<xsl:apply-templates select="case:judgments/footnotegrp"/>
				</xsl:if>
			</courtfiling:div>
			<xsl:apply-templates select="* except (case:judgments)"/>
			<xsl:if test="case:judgments/case:judgment/case:judgmentbody/sigblock">
				<xsl:apply-templates select="case:judgments/case:judgment/case:judgmentbody/sigblock"/>
			</xsl:if>
			<xsl:if test="case:judgments/case:appendix">
				<xsl:apply-templates select="case:judgments/case:appendix"/>
			</xsl:if>
			<!-- SP  1.19.18  handle sigblock within appendix, case:judgments/case:appendix/sigblock-->
			<xsl:if test="case:judgments/case:appendix/sigblock">
				<xsl:apply-templates select="case:judgments/case:appendix/sigblock"/>
			</xsl:if>
		</courtfiling:body>
	</xsl:template>

	<!--SP 2017.12.27 add basic support for checkbox, per JH email
		    A checked box will output as: <label>[X]</label>
		 an unchecked box will output as: <label>[ ]</label>
			  From JD, for using unicode chars (need to see if they are supported):
				  <xsl:template match="checkbox[not(@checked='yes')]">
					  <xsl:text>&#x2610;</xsl:text>
				  </xsl:template>
				  
				  <xsl:template match="checkbox[@checked='yes']">
					  <xsl:text>&#x2611;</xsl:text>
				  </xsl:template>
		 -->
	<xsl:template match="@checked">
		<xsl:choose>
			<xsl:when test=".='yes'">
				<xsl:text>X</xsl:text>
			</xsl:when>
			<xsl:otherwise>
				<xsl:text> </xsl:text>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>

	<xsl:template match="checkbox">
		<xsl:text>[</xsl:text>
			<xsl:apply-templates select="@* | node()"/>
		<xsl:text>]</xsl:text>
	</xsl:template>

	<!--SP 1.19.18 Handle sup-->
	<xsl:template match="sup">
		<sup xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
			<xsl:apply-templates select="@* | node()"/>
		</sup>
	</xsl:template>

	<xsl:template match="strike">
		<strike xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
			<xsl:apply-templates select="@* | node()"/>
		</strike>
	</xsl:template>

	<!--SP 1.19.18 Handle when inlineobject is a direct child of case:judgmentbody-->
	<xsl:template match="inlineobject[parent::case:judgmentbody]" priority="0.9">
		<p xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
			<figure xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
				<xsl:apply-templates select="." mode="refinline"/>       
			</figure>
		</p>
	</xsl:template>

	<!--SP 1.19.18 Handle when inlineobject is a direct child of li-->
	<xsl:template match="inlineobject[parent::li]" priority="0.9">
		<p xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
			<figure xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
				<xsl:apply-templates select="." mode="refinline"/>       
			</figure>
		</p>
	</xsl:template>

	<xsl:template match="case:judgmentbody">
		<xsl:apply-templates select="@*"/>
		<xsl:apply-templates select="* except (sigblock)"/> <!-- sigblock handled above -->
	</xsl:template>

	<!--SP 2017.12.27 add basic support for appendix, per JH email -->
	<xsl:template match="case:appendix">
		<appendix xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
			<bodytext xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
				<xsl:apply-templates select="@* | node() except (sigblock)"/> <!-- sigblock handled above -->
			</bodytext>
		</appendix>
	</xsl:template>

	<xsl:template match="case:judgments">
		<xsl:apply-templates select="@*"/>
		<xsl:apply-templates select="* except (case:judgment, footnotegrp, case:appendix)"/>
	</xsl:template>

	<!--SP 2017.12.27 add basic support for sigblock, per JH email -->
	<xsl:template match="sigblock">
		<courtfiling:submission>
			<courtfiling:submittedby>
				<sigblock>
					<xsl:apply-templates select="@* | node()"/>
				</sigblock>
			</courtfiling:submittedby>
		</courtfiling:submission>
	</xsl:template>

	<!--SP 2018.01.10 add basic support for alt-renditions, per JH email -->
    <xsl:template match="docinfo:alt-renditions">
			<xsl:apply-templates select="@* | node()"/>
	</xsl:template>

    <xsl:template match="docinfo:alt-rendition">
        <doc:alt-renditions>
            <doc:alt-rendition>
				<xsl:apply-templates select="@* | node()"/>
            </doc:alt-rendition> 
        </doc:alt-renditions>
	</xsl:template>

</xsl:stylesheet>
