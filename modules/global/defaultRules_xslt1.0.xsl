<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xmlns:lnf="urn:x-lexisnexis:conversion:global:functions:1"
    xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
    xmlns:error="urn:x-lexisnexis:conversion:global:error:1"

	xmlns:lncr="http://www.lexis-nexis.com/lncr"

    exclude-result-prefixes="xsl xs dita error lnf">


	<!-- Set as 'true' if you want inline (embedded) citations.  -->
	<xsl:param name="outputEmbeddedCitations" select="'false'"/>

	<!-- Set as 'segmentsOnly' if you want as flat as possible (only segement elements containing strings) when performing transforms to VisfXML.  -->
	<xsl:param name="visfXmlOutputLevel" select="'false'"/>

	<!-- Set as 'true' if you want globalentity:* pass-through.  -->
	<xsl:param name="passThroughGlobalEntityMarkup" select="'false'"/>

	<xsl:variable name="outputCitation">
		<xsl:choose>
			<xsl:when test="$outputEmbeddedCitations = 'true'">
				<xsl:value-of select="true()"/>
			</xsl:when>
			<xsl:otherwise>
				<xsl:value-of select="false()"/>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:variable>
	<xsl:variable name="passThroughGlobalEntity">
		<xsl:choose>
			<xsl:when test="$passThroughGlobalEntityMarkup = 'true'">
				<xsl:value-of select="true()"/>
			</xsl:when>
			<xsl:otherwise>
				<xsl:value-of select="false()"/>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:variable>

	<!-- Set as 'true' if you want errors thrown for elements or attributes not explicitly matched elsewhere; elements are output and wrapped in error element.  Set to 'false' to drop entirely plus no errors; set to 'noErrors' to suppress errors but still copy elements and attributes to the output.  -->
	<xsl:param name="outputUnmatchedElements" select="'true'"/>

	<xsl:variable name="outputErrors">
		<xsl:choose>
			<xsl:when test="$outputUnmatchedElements = 'true'">
				<xsl:value-of select="true()"/>
			</xsl:when>
			<xsl:otherwise>
				<xsl:value-of select="false()"/>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:variable>

	<!-- comments | text | PIs START -->
		<dita:topic id="comments.text.PIs" audience="CI">
			<dita:title>text, XML comments, and Processing Instructions</dita:title>
			<dita:body>
				<dita:section>
					<dita:title>Instructions</dita:title>
					<dita:p>Unless otherwise instructed, text nodes, comment nodes, and processing instructions should be copied to the target as is.</dita:p>
				</dita:section>
			</dita:body>
		</dita:topic>

		<dita:topic id="comment.text.processing-instruction" audience="XSL">
			<dita:title>comment() | text() | processing-instruction()</dita:title>
			<dita:body>
				<dita:section>
					<dita:title>Explanation</dita:title>
					<dita:p>This template rule copies over text nodes, comment nodes, and processing instructions to the target as is.</dita:p>
				</dita:section>
			</dita:body>
		</dita:topic>

		<xsl:template match="comment() | text() | processing-instruction()">				<!--  where do we want this rule to reside?  -->
			<xsl:copy-of select="."/>
		</xsl:template>
	<!-- comments | text | PIs END -->

	<xsl:template match="/">																				<!--  do we care, and where do we want this rule to reside?  -->
		<xsl:apply-templates/>
	</xsl:template>

	<xsl:template match="lncr:*">																			<!--  drop wrapper applied to any lncr:* elements and ignore all children but elements  -->
		<xsl:apply-templates select="*"/>
	</xsl:template>

	<xsl:template match="lncr:metadata"/>																<!--  suppress lncr:metadata and it's children  -->

	<!--  matched templates  -->

	<xsl:template match="* | @*">																		<!--  matching this pattern is an error  -->

		<!--  calling the elementOrAttributeCopy named template to copy the node as is   -->
		<!--    if element node, wrap withinin error element  -->
		<!--    if attribute node, also output an error attribute  -->
		<xsl:choose>
			<xsl:when test="$outputUnmatchedElements = 'noErrors'">
				
			</xsl:when>
			<xsl:when test="not($outputErrors)"/>
			<xsl:when test="self::*">																				<!--  self:* is false for attribute nodes  -->
				
				<error:error>
					<xsl:value-of select="concat( 'ERROR: Unexpected Element:  ' , name() , ' encountered in source document!' )"/>
				</error:error>
				
				<xsl:message>
					<xsl:value-of select="concat( 'ERROR: Unexpected Element:  ' , name() , ' encountered in source document!' )"/>
					
				</xsl:message>
			</xsl:when>
			<xsl:otherwise>																								<!--  must be an attribute  -->
				<xsl:variable name="attributeParent" select="name(parent::node())"/>
				<xsl:variable name="attributeAndParent" select="concat( name(parent::node()) ,'/@', name()) "/>
				
				<error:error>
					<xsl:value-of select="concat( 'ERROR: Unexpected Attribute:  ' , $attributeAndParent , ' encountered in source document!' )"/>
				</error:error>
				
				<xsl:message>
					<xsl:value-of select="concat( 'ERROR: Unexpected Attribute:  ' , $attributeAndParent , ' encountered in source document!' )"/>
					
				</xsl:message>
			</xsl:otherwise>
		</xsl:choose>

	</xsl:template>

</xsl:stylesheet>