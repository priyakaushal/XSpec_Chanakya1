<xsl:stylesheet	version="2.0"
						xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
						xmlns:xs="http://www.w3.org/2001/XMLSchema"
						xmlns:lnf="urn:x-lexisnexis:conversion:global:functions:1"
						xmlns:error="urn:x-lexisnexis:conversion:global:error:1"
						xmlns:lncr="http://www.lexis-nexis.com/lncr"
						xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
						xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl"

						xmlns:lnv="http://www.lexis-nexis.com/lnv"
						xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/"
						xmlns:source_lnci="http://www.lexis-nexis.com/lnci"

						exclude-result-prefixes="xs xd lnf lncr dita error lnv source_lnci">
<!--Hello chaitany dutt sharma  -->
	<!-- Set as 'true' if you want inline (embedded) citations.  -->
	<xsl:param name="outputEmbeddedCitations" as="xs:string" select="'false'"/>

	<!-- Set as 'segmentsOnly' if you want as flat as possible (only segement elements containing strings) when performing transforms to VisfXML.  -->
	<xsl:param name="visfXmlOutputLevel" as="xs:string" select="'false'"/>

	<!-- Set as 'true' if you want globalentity:* pass-through.  -->
	<xsl:param name="passThroughGlobalEntityMarkup" as="xs:string" select="'false'"/>

	<xsl:variable name="outputCitation" as="xs:boolean" select="if ($outputEmbeddedCitations = 'true') then true() else false()"/>
	<xsl:variable name="passThroughGlobalEntity" as="xs:boolean" select="if ($passThroughGlobalEntityMarkup = 'true') then true() else false()"/>

	<!-- Set as 'true' if you want errors thrown for elements or attributes not explicitly matched elsewhere; elements are output and wrapped in error element.  Set to 'false' to drop entirely plus no errors; set to 'noErrors' to suppress errors but still copy elements and attributes to the output; set to ICCE (default) for error messages to be output with offending element/attribute suppressed (no forced schema validation error).  -->
	<xsl:param name="outputUnmatchedElements" as="xs:string" select=" 'ICCE' "/>
	<xsl:param name="debugMode" as="xs:string" select=" 'false' "/>
	<xsl:variable name="debug" as="xs:boolean" select="if ($debugMode = 'true') then true() else false()"/>

	<!-- Current date/time and file being processed; these global variables only really used for debug/error processing.  current-dateTime() outputs in YYYY-MM-DDTHH:MM:SS-TZ:TZ format when we need YYYY-MM-DD HH:MI:SS   -->
	<xsl:param name="sourceFilename" as="xs:string*" select=" tokenize( document-uri(/) , '/' )[last()] "/>
	<xsl:variable name="fileName" as="xs:string" select="if (string($sourceFilename) = '') then 'UNKNOWN' else $sourceFilename"/>
	<xsl:variable name="dateTime" as="xs:string" select=" translate( substring( string(current-dateTime()) , 1 , 19 ) , 'T' , ' ' ) "/>

	<!--  @SBy:  2016-09-20  ROM 1218 IRM Strategic:  add variables introduced by copyright and LEGDOC-LDC conversions  -->
	<xsl:variable name="acceptableID_Chars" as="xs:string" select=" 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789.-_:' "/>
	<xsl:variable name="unallowedFirstCharAcceptableID_Chars" as="xs:string" select=" '0123456789.-' "/>
	<xsl:variable name="irmSection" as="xs:string" select="substring-after( /LEGDOC-LDC/lnv:CITE/ref:cite4thisresource/source_lnci:cite/source_lnci:content , 'IRM ' )"/>

	<xsl:param name="legacy-filename" as="xs:string" select=" '' "/>
	<!-- Creating variable to hold all upper-case letters -->
	<xsl:variable name="vUpperCase" as="xs:string" select=" 'ABCDEFGHIJKLMNOPQRSTUVWXYZ' "/>
	<!-- Creating variable to hold all lower-case letters -->
	<xsl:variable name="vLowerCase" as="xs:string" select=" 'abcdefghijklmnopqrstuvwxyz' "/>

	<xsl:variable name="outputErrors" as="xs:boolean" select="if ($outputUnmatchedElements = 'true') then true() else false()"/>

	<!-- comments | text | PIs START -->
		<dita:topic id="comment.text.processing-instruction">
			<dita:title>comment() | text() | processing-instruction()</dita:title>
			<dita:body>
				<dita:section>
					<dita:title>Explanation</dita:title>
					<dita:p>This template rule copies over text nodes, comment nodes, and processing instructions to the target as is.</dita:p>
				</dita:section>
			</dita:body>
		</dita:topic>
		<xsl:template match="comment() | text() | processing-instruction()">
			<xsl:copy-of select="."/>
		</xsl:template>
	<!-- comments | text | PIs END -->

	<xd:doc>
		<xd:desc>
			<xd:p>When matching the <xd:i class="xmlSource">/</xd:i> root element, just process child nodes.</xd:p>
		</xd:desc>
	</xd:doc>
	<xsl:template match="/">
		<xsl:apply-templates/>
		<!--xsl:apply-templates>
			<xsl:with-param name="errorStatus" tunnel="yes" as="xs:string" select=" 'E' "/>
		</xsl:apply-templates-->
	</xsl:template>

	<xd:doc>
		<xd:desc>
			<xd:p>
				<xd:i class="xmlSource">lncr:*</xd:i> are just pass through, just process child elements.  <xd:i class="xmlSource">lncr:metadata</xd:i> is suppressed.</xd:p>
		</xd:desc>
	</xd:doc>
	<xsl:template match="lncr:*">																			<!--  drop wrapper applied to any lncr:* elements and ignore all children but elements  -->
		<xsl:apply-templates select="*"/>
	</xsl:template>

	<xsl:template match="lncr:metadata"/>																<!--  suppress lncr:metadata and it's children  -->

	<!--  matched templates  -->
	<xd:doc>
		<xd:desc>
			<xd:p>
				<xd:i class="xmlSource">* | @*</xd:i> (unmatched element and attribute nodes).  This template will throw an error, unless $outputUnmatchedElements is set to 'noErrors' as a parameter to the conversion.  Named template "outputErrorMessage" is called which will use the xsl:message instruction to generate an error message.  If $outputUnmatchedElements is set to 'ICCE' (the default), then the error message will be in the form of an exception element.</xd:p>
			<xd:p>Example exception handling output:</xd:p>
			<xd:pre><![CDATA[
<exception timestamp="2017-01-04 14:54:22">
  <filename>test.xml</filename>
  <status>W</status>
  <code>402</code>
  <context>/jcd:judicialCourtDecision[1]/jcd:information[1]/courtcase:history[1]/courtcase:historySummary[1]/courtcase:historyItem[1]/citation:citation[1]/citation:content[1]/citation:contentSpan[1]/@citation:contentSpanRole</context>
  <message>Unexpected Attribute:  name()=citation:contentSpanRole encountered in source document!  Attribute value is=hierarchyReference</message>
</exception>]]>
			</xd:pre>
		</xd:desc>
	</xd:doc>
	<xsl:template match="* | @*">																		<!--  matching this pattern is an error  -->
		<xsl:param name="errorStatus" tunnel="yes" as="xs:string" select=" 'W' "/>	<!--  default is W for warning.  If 'E' is passed, then some systems will ensure the target document is not passed along in the pipeline  -->

		<!--  calling the elementOrAttributeCopy named template to copy the node as is   -->
		<!--    if element node, wrap withinin error element  -->
		<!--    if attribute node, also output an error attribute  -->
		<xsl:choose>
			<xsl:when test=" $outputUnmatchedElements = 'ICCE' ">
				<xsl:call-template name="outputErrorMessage">
					<xsl:with-param name="messageText" as="xs:string" select="concat( if (self::*) then
																																'Unexpected Element:  name()='								(:  first item is either element (self::* = true()) or attribute (otherwise)  :)
																															else 
																																'Unexpected Attribute:  name()=' ,
																														name() ,																		(:  second item is element or attribute name  :)
																														' encountered in source document!' ,								(:  third item  :)
																														if (self::* and text()) then													(:  last item is empty string if element and no text() nodes, or if attribute and no value.  :)
																																concat( '  Text value is=' , string-join( text() , '' ) )		(:	Otherwise provide @ value or text() value  :)
																															else
																																if (not(self::*) and . != '') then
																																		concat( '  Attribute value is=' , . )
																																	else '' )"/>
					<xsl:with-param name="errorType" as="xs:string" select=" 'ICCE' "/>																		<!--   ICCE error type  -->
					<xsl:with-param name="errorCode" as="xs:string" select=" if (self::*) then '401' else '402' "/>									<!--   401 if element node, 402 if attribute node  -->
					<xsl:with-param name="context" as="xs:string">
						<xsl:call-template name="generateXPath"/>
					</xsl:with-param>
					<xsl:with-param name="status" as="xs:string" select=" $errorStatus "/>
				</xsl:call-template>
			</xsl:when>
			<xsl:when test=" $outputUnmatchedElements = 'noErrors' ">
				<xsl:sequence select="."/>
			</xsl:when>
			<xsl:when test="not($outputErrors)"/>
			<xsl:when test="self::*">																				<!--  self:* is false for attribute nodes  -->

				<error:error>
					<xsl:sequence select="."/>
				</error:error>
				<xsl:call-template name="outputErrorMessage">
					<xsl:with-param name="messageText" as="xs:string" select="concat( 'Unexpected Element:  ' , name() , ' encountered in source document!' )"/>
				</xsl:call-template>

			</xsl:when>
			<xsl:otherwise>																								<!--  must be an attribute  -->

				<xsl:attribute name="error:error" select="'error:  unexpected attribute!'"/>
				<xsl:sequence select="."/>
				<xsl:call-template name="outputErrorMessage">
					<xsl:with-param name="messageText" as="xs:string" select="concat( 'Unexpected Attribute:  ' , name(..) , '/@' , name() , ' (= ' , . , ') encountered in source document!' )"/>
				</xsl:call-template>

			</xsl:otherwise>
		</xsl:choose>

	</xsl:template>

</xsl:stylesheet>