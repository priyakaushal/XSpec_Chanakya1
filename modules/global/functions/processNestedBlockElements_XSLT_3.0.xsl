<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
	xmlns:lnf="urn:x-lexisnexis:conversion:global:functions:1"
	xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"
	exclude-result-prefixes="lnf"
	version="3.0">
	<!-- NOTE: this is an XSLT version 3.0 stylesheet; it requires a "group-starting-with='descendant-or-self'",
	which is not allowed in XSLT 2.0 -->
	
	<!-- variable to store the names of all source elements that need recursive descendant processing to output valid bodytext structures-->
	<xsl:variable name="block-elements"
		select="('lnvxe:blockquote', 'table', 'tm', 'lnvxe:l', 'lnvxe:pnum', 'lnvxe:note', 'margin', 'p')"/>
	
	<xsl:template name="processNestedBlockElements">
				
		<!-- Step 1: gather all descendant nodes into a variable -->
		<xsl:variable name="descendants" as="element(lnf:descendants)">
			<lnf:descendants>
				<xsl:call-template name="recurseDescendants"/>
			</lnf:descendants>
		</xsl:variable>
		
		<!-- Step 2: loop through $descendants and make each descendant::node() a sibling-->		
		<xsl:variable name="siblings" as="element(lnf:siblings)">
			<lnf:siblings>
				<xsl:for-each select="$descendants/node()">
					<xsl:choose>
						<!-- when text() appears inside lnv:* -->
						<xsl:when test="starts-with(@sourceElementName, 'lnv:') and not(child::*)">
							<!-- just create a <text> element in no namespace -->
							<xsl:element name="text" namespace="">
								<xsl:copy-of select="@* | node()"/>
							</xsl:element>
						</xsl:when>
						<!-- when there is a child element node copy it -->
						<xsl:when test="child::*">
							<xsl:copy-of select="node()"/>
						</xsl:when>
						<!-- otherwise, create the output element in no namespace -->
						<xsl:otherwise>
							<xsl:element name="{@sourceElementName}" namespace="">
								<xsl:copy-of select="@*"/>
								<xsl:copy-of select="node()"/>
							</xsl:element>
						</xsl:otherwise>
					</xsl:choose>
				</xsl:for-each>
			</lnf:siblings>
		</xsl:variable>
		
		<!-- Step 3: apply templates to grouped $sibling nodes -->
		<xsl:for-each select="$siblings/node()">
			<xsl:choose>
				<!-- when source element is a $block element the template will handle -->
				<xsl:when test="name() = $block-elements">
					<xsl:apply-templates select="."/>
				</xsl:when>
				<xsl:when test="name()='text'">
					<p>
						<xsl:apply-templates select="."/>
					</p>
				</xsl:when>
				<xsl:otherwise>
					<p>
						<text>
							<xsl:apply-templates select="."/>
						</text>
					</p>
				</xsl:otherwise>
			</xsl:choose>
		</xsl:for-each>		
	</xsl:template>
	
	<!-- Called by Step 1.  This populates the $descendants variable -->
	<xsl:template name="recurseDescendants">
		<!-- NOTE: this grouping requires XSLT 3.0 -->
		<xsl:for-each-group select="node()"
			group-starting-with="descendant-or-self::node()[name() != $block-elements]">
		<!-- This works for hand-crafted test case, but not actual docs with lots of <p> (omits many nodes)-->
		<!--xsl:for-each-group select="node()" group-adjacent="boolean(descendant-or-self::node()[name() = $block-elements])"-->
			<xsl:choose>
				<!-- when there are descendants that are $block-elements call this template recursively -->
				<xsl:when test="descendant::node()[name() = $block-elements]">
					<xsl:call-template name="recurseDescendants"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:choose>
						<!-- if the node() is empty whitespace only do nothing -->
						<xsl:when test="normalize-space(.) = ''"/>
						<!-- otherwise, create an element named for the source node's parent and copy the node with any attributes from the parent -->
						<xsl:otherwise>
							<lnf:element sourceElementName="{name(parent::*)}">
								<!-- copy attributes of parent -->
								<xsl:copy-of select="../@*"/>
								<xsl:copy-of select="." copy-namespaces="no"/>
							</lnf:element>
						</xsl:otherwise>
					</xsl:choose>
				</xsl:otherwise>
			</xsl:choose>
		</xsl:for-each-group>
	</xsl:template>
	
	<!-- trap attribute used in variable -->
	<xsl:template match="@sourceElementName"/>
	
</xsl:stylesheet>