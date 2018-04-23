<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
  xmlns:seclaw="http://www.lexisnexis.com/xmlschemas/content/legal/secondary-law/1/"
  xmlns:glp="http://www.lexis-nexis.com/glp"
  xmlns:index="urn:x-lexisnexis:content:publicationindex:sharedservices:1"
  xmlns:in="http://www.lexis-nexis.com/glp/in"
  xmlns:leg="http://www.lexis-nexis.com/glp/leg" version="2.0" exclude-result-prefixes="dita leg glp">

	

	<xsl:template match="index">		
		<!--  Original Target XPath:  /navaid:landingpage/navaid:landingpagebody/index:index[@indextype="topical"]/index:item   -->
		<index:index>
			<xsl:attribute name="indextype">topical</xsl:attribute>
			<xsl:apply-templates select="heading"/>
			
			<xsl:apply-templates select="in:entry/in:index-ref/refpt|in:entry/in:entry-text/refpt"/>
			<xsl:apply-templates select="node() except (heading, see[preceding-sibling::in:entry])"/>
			
			<!-- MDS 2017-05-02 - DO NOT USE.  Instruction is to maintain individual index:index for each in:lev1 -->
			<!-- MDS 2017-05-01 - This would combine all in:lev1 siblings under a single index:index.  Must add '[1]' to end of template match. -->
			<!-- <xsl:for-each select="following-sibling::in:lev1">
				    <index:item>
				      <xsl:apply-templates select="node() except (heading, see[preceding-sibling::in:entry])"/>
				    </index:item>
				  </xsl:for-each>-->
		</index:index>		
	</xsl:template>
	
	<xsl:template match="in:lev1">
		<xsl:element name="index:item">
			<xsl:attribute name="xml:id" select="./@id"/>
			<xsl:apply-templates select="in:entry/in:index-ref/refpt|in:entry/in:entry-text/refpt"/>
			<xsl:apply-templates select="node() except (heading, see)"/>
		</xsl:element>	
	</xsl:template>
	
	<xsl:template match="in:lev2|in:lev3|in:lev4|in:lev5|in:lev6|in:lev7">	
		<!--  Original Target XPath:  index:index[@indextype="topical"]/index:item/index:item   -->
		<xsl:apply-templates select="heading"/>
		<index:item>
			<!-- 2017-10-12 - MDS: Added handling for in:entry/in:entry-text/refpt due to Web* 7020088  -->
			<xsl:apply-templates select="in:entry/in:index-ref/refpt|in:entry/in:entry-text/refpt"/>
			<xsl:apply-templates select="@* | node() except (heading, see)"/>
		</index:item>		
	</xsl:template>
	
	<xsl:template match="in:entry">	
		<!--  Original Target XPath:  index:entry   -->
		<index:entry>
			<xsl:apply-templates select="@* | node()"/>
			<xsl:if test="following-sibling::see">
				<xsl:apply-templates select="following-sibling::see"/>
				<xsl:if test="child::remotelink">
					<xsl:apply-templates select="child::remotelink"/>
				</xsl:if> 
			</xsl:if>
			<!--<xsl:apply-templates select="following-sibling::see"/>-->
		</index:entry>
		
	</xsl:template>
	
	<xsl:template match="see[parent::in:lev1|parent::in:lev2|parent::in:lev3|parent::in:lev4|parent::in:lev5|parent::in:lev6]">	
		<!--  Original Target XPath:  index:locator   -->
		<inlinenote>
			<xsl:attribute name="notetype">other</xsl:attribute>
			<xsl:apply-templates select="@* | node()"/>
		</inlinenote>		
	</xsl:template>


</xsl:stylesheet>