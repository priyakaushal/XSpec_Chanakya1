<xsl:stylesheet	version="2.0"

						xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
						xmlns:xs="http://www.w3.org/2001/XMLSchema"
						xmlns:lnf="urn:x-lexisnexis:conversion:global:functions:1"
						xmlns:error="urn:x-lexisnexis:conversion:global:error:1"
						xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
						xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl"

						xmlns:lnvxe="http://www.lexis-nexis.com/lnvxe"
						xmlns:source_lnci="http://www.lexis-nexis.com/lnci"

						exclude-result-prefixes="xs xd lnf dita error lnvxe source_lnci">

	<!--configurationManagementInformation xmlns="urn:x-lexisnexis:configuration-management:1">
		<title>Globally Shared Functions and Named Templates</title>
		<purpose>This stylesheet module contains XSLT functions and named templates that are globally shared regardless of transformation direction or tier, such as the named template for processing errors, etc.</purpose>
		<versionInfo>
			<version>
				<rev>-00</rev>
				<date>20-Mar-2013</date>
				<author>S. Byland</author>
				<description>Initial version.</description>
			</version>
			<version>
				<rev>A00</rev>
				<date>26-Jan-2016</date>
				<author>S. Byland</author>
				<description>Some general cleanup of comments.  Also commented out elementOrAttributeCopy named template as this method was not really used.  There is some code in the CRM LA-to-MNCR baseline that will need to be modified so as to not use this named template anymore.</description>
			</version>
		</versionInfo>
	</configurationManagementInformation-->

	<!--  global custom functions  -->
		<dita:topic id="global.functions">
			<dita:title>Global Functions</dita:title>
			<dita:body>
				<dita:section>
					<dita:title>Instructions</dita:title>
				</dita:section>
				<dita:p>Global functions apply primarily to XSL style conversions but would include such items as error messaging, etc.</dita:p>
			</dita:body>
		</dita:topic>

	<!--  named template rules START  -->
	<!--  error detected; throw a message to the output START  -->
		<xd:doc>
			<xd:desc>
				<xd:p><xd:b>outputErrorMessage Named Template</xd:b></xd:p>
				<xd:p>This named template is called whenever the XSLT needs to throw an error or warning.  It will use the xsl:message instruction to generate an error message.  If $errorType is set to 'ICCE' (the default), then the error message will be in the form of an exception element.</xd:p>
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
		<xsl:template name="outputErrorMessage">
			<xsl:param name="CurrentDBD" required="no" as="xs:string" select=" 'notApplicable' "/>
			<xsl:param name="messageText" as="xs:string*" select=" 'Error!' "/>		<!--  text passed in by caller  -->
			<xsl:param name="errorType" as="xs:string*" select=" 'ICCE' "/>
			<xsl:param name="errorCode" as="xs:string*" select=" '401' "/>
			<xsl:param name="context" as="xs:string*" select=" '/unknown' "/>
			<xsl:param name="status" as="xs:string*" select=" 'W' "/>

			<xsl:choose>
				<xsl:when test=" $errorType = 'debug' ">

					<!-- Example of how debug mode might be used; maybe auto create something like these lines after each template rule when building the monolithic and a certain flag is passed? 
					<xsl:if test=" $debug and contains( . , 'Hello Errors' ) ">
						<xsl:call-template name="outputErrorMessage">
							<xsl:with-param name="messageText" as="xs:string" select=" 'Template:  xh:p[translate( normalize-space( string-join( descendant-or-self::*/text() , ... ]' "/>
							<xsl:with-param name="errorType" as="xs:string" select=" 'debug' "/>
							<xsl:with-param name="context" as="xs:string">
								<xsl:call-template name="generateXPath"/>
							</xsl:with-param>
						</xsl:call-template>
					</xsl:if>
					 end example debug mode  -->

					<xsl:message>

						<xsl:element name="debug" inherit-namespaces="no" namespace="">
							<xsl:attribute name="timestamp" select=" $dateTime "/>
							<xsl:element name="message" inherit-namespaces="no" namespace="">
								<xsl:if test=" $context != '/unknown' ">
									<xsl:text>Context/XPath:  </xsl:text>
									<xsl:sequence select="$context"/>
									<xsl:text>.  </xsl:text>
								</xsl:if>
								<xsl:sequence select="$messageText"/>
							</xsl:element>
						</xsl:element>

					</xsl:message>
				</xsl:when>
				<xsl:when test=" $errorType = 'ICCE' ">
					<xsl:message>

						<xsl:element name="exception" inherit-namespaces="no" namespace="">
							<xsl:attribute name="timestamp" select=" $dateTime "/>
							<xsl:element name="filename" inherit-namespaces="no" namespace="">
								<xsl:sequence select="$fileName"/>
							</xsl:element>
							<xsl:element name="status" inherit-namespaces="no" namespace="">
								<xsl:sequence select="$status"/>
							</xsl:element>
							<xsl:element name="code" inherit-namespaces="no" namespace="">
								<xsl:sequence select="$errorCode"/>
							</xsl:element>
							<xsl:element name="context" inherit-namespaces="no" namespace="">
								<xsl:sequence select="$context"/>
							</xsl:element>
							<xsl:element name="message" inherit-namespaces="no" namespace="">
								<xsl:sequence select="$messageText"/>
							</xsl:element>
						</xsl:element>

					</xsl:message>
				</xsl:when>
				<!--for DBD errors, note template matched element name directly in the output file-->
				<xsl:when test="$errorType = 'DBD'">DBDerr:<xsl:value-of select="name()"/>
					<!--<xsl:value-of select="error()"/>-->
					<xsl:if test="not($CurrentDBD='DeScopedDbd' or $CurrentDBD = 'notApplicable' )">
						<xsl:message>
							<xsl:text>DBDerr:</xsl:text>
							<xsl:value-of select="$CurrentDBD"/>
							<xsl:text>:</xsl:text>
							<xsl:value-of select="name()"/>
						</xsl:message>
					</xsl:if>
				</xsl:when>
				<xsl:otherwise>

					<xsl:message>
						<xsl:value-of select="$messageText"/>														<!--  just output the message text to the output  -->
					</xsl:message>

				</xsl:otherwise>
			</xsl:choose>

		</xsl:template>
	<!--  error detected; throw a message to the output END  -->

	<!--  generate and output the source XPath START  -->
	<!--  @SBy:  2016-09-20  ROM 1218 IRM Strategic:  updated to allow optionally outputting without brackets (predicates indicating sibling order)  -->
		<xd:doc>
			<xd:desc>
				<xd:p><xd:b>generateXPath Named Template</xd:b></xd:p>
				<xd:p>This named template is used to create the XPath leading to the current node in the form of a string, such as "/jcd:judicialCourtDecision[1]/jcd:information[1]/courtcase:history[1]/courtcase:historySummary[1]/courtcase:historyItem[1]/citation:citation[1]/citation:content[1]/citation:contentSpan[1]/@citation:contentSpanRole".  Parameter $includeBrackets can be set to false() to suppress the predicate output if desired.</xd:p>
			</xd:desc>
		</xd:doc>
		<xsl:template name="generateXPath" as="xs:string">
			<xsl:param name="includeBrackets" as="xs:boolean" select="true()"/>
			<xsl:sequence select=" string-join( 																		(:  use string join function to insert the '/' chars of the XPath  :)
																( '' , 																(:  Build a sequence of strings.  First item is empty to ensure XPath starts with a '/'  :)
																	( for $i in ancestor-or-self::* return 				(:  Walk the ancestor-or-self:: axis and return the name of each element followed by position in brackets  :)
																			concat( name($i) , 							(:  next item is the element name followed by position in brackets  :)
																						if ($includeBrackets) then concat(
																							'[' , 									(:  open bracket, then count preceding sibling elements of same name and add 1; convert to string  :)
																							string( count($i/preceding-sibling::*[name(.) = name($i)]) + 1) , 
																							']' 	)									(:  close bracket. This for loop returns sequence of strings in form of 'element-name[#]'  :)
																						else
																							'' )
																	) , 															(:  Last item in sequence is to add the attribute name if necessary, since  :)
																	if (self::*) then ()										(:  ancestor-or-self::* won't include 'self' if this is an attribute  :)
																		else concat( '@' , name() ) 
																) , 
															'/' ) "/>																<!--   Use '/' as the string separator since this is an XPath  -->
		</xsl:template>
	<!--  generate and output the source XPath END  -->

	<!--  combined nested trees START  -->
		<xd:doc>
			<xd:desc>
				<xd:p><xd:b>combineTrees Named Template</xd:b></xd:p>
				<xd:p>This named template is used to combine the content from following sibling elements of the same base name into a single element, such as lnv:TEXT-1, lnv:TEXT-2, etc., into a single lnv:TEXT-1 element, when these elements contain nested hierarchical content requiring the hierarchies to be knitted back together.  It assumes the sibling element descendants are structured the same way, and that the nodes can be combined at specific levels identifed by $combiningElements parameter.</xd:p>
				<xd:p>The base element name (such as "lnv:TEXT-") must be passed as parameter $baseEleName, and the sibling nodes passed as $nodesToCombine.</xd:p>
				<xd:p>Recursion is used to process through all the siblings provided in $nodesToCombine.</xd:p>
			</xd:desc>
		</xd:doc>
		<xsl:template name="combineTrees" as="element()">
			<!--  combines the content from following sibling elements of the same base name into a single element (into the "-1" element of same name)  -->
			<!--  assumes the sibling element descendants are structured the same way, and that the nodes can be combined at specific levels identifed by $combiningElements parameter  -->
			<xsl:param name="baseEleName" tunnel="yes" as="xs:string"/>										<!--  base element name before the digit, such as 'lnv:TEXT-'  -->
			<xsl:param name="nodesToCombine" as="document-node()"/>											<!--  all of the, or the remaing, sibling segments to be combined under one element  -->
			<xsl:param name="combiningElements" as="xs:string*"/>													<!--  sequence of element names (strings) where node combining can occur  -->

			<xsl:variable name="updatedTree" as="element()">															<!--  combine first remaining segment with second remaining segment and save in this variable  -->

				<xsl:apply-templates select="$nodesToCombine/*/*[1]" mode="combineTrees">				<!--  perform combinging of nodes via the combineTrees mode   -->
					<xsl:with-param name="matchingXPath" tunnel="yes" as="xs:string">						<!--  node combining will occur when current XPath matches this XPath   -->
						<!--  the matching XPath is determined by first finding the last node in the document that contains text.  Then, start moving up the ancestor-or-self axis until arrive at one of the elements identified in $combiningElements   -->
						<xsl:for-each select="$nodesToCombine/*/*[1]/descendant-or-self::*[text()][last()]/ancestor-or-self::*[ name() = $combiningElements ][1]">
							<xsl:call-template name="generateXPath"/>														<!--  utility that returnes the XPath of the current node   -->
						</xsl:for-each>
					</xsl:with-param>
					<xsl:with-param name="baseEleName" tunnel="yes" as="xs:string" select="$baseEleName"/>											<!--  pass on baseEleName  -->
					<xsl:with-param name="currentEleName" tunnel="yes" as="xs:string" select=" name( $nodesToCombine/*/*[1] ) "/>			<!--  pass on the name of the first remaining segment  -->
					<xsl:with-param name="nextEleName" tunnel="yes" as="xs:string" select=" name( $nodesToCombine/*/*[2] ) "/>				<!--  pass on the name of the next remaining segment  -->
				</xsl:apply-templates>

			</xsl:variable>

			<xsl:choose>
				<xsl:when test="$nodesToCombine/*/*[3]">																	<!--  if there are 3 or more siblings, then need to recurse   -->

					<xsl:call-template name="combineTrees">
						<xsl:with-param name="baseEleName" tunnel="yes" as="xs:string" select="$baseEleName"/>										<!--  pass on baseEleName  -->
						<xsl:with-param name="nodesToCombine" as="document-node()">																			<!--  update nodesToContinue to first be the $updatedTree followed by all other sibling after the 2nd one  -->
							<xsl:document>
								<!--  Forcing nodesToCombine element below to be in the empty namespace.  This is necessary because even though there is no default namespace declared in this XSLT file, 
											there usually is when building the monolithic deliverable stylesheet (and it is set to the base: namespace URI).  In that scenario, when transforming with the monolithic XSLT, 
											this element would be in the base: namespace, and will cause Saxon to throw various errors since the non-namespaced children being combined below are in the empty namespace.  
											Saxon is require to output all the namespace nodes that are in scope for each element, and to have a default namespace of base: copied for an element that is in no namespace is an error.  -->
								<nodesToCombine xmlns="">
									<xsl:copy-of select="$updatedTree"/>																											<!--  first the $updatedTree containing the newly combined siblings  -->
									<xsl:copy-of select="$nodesToCombine/*/*[ position() gt 2 ]"/>																		<!--  remaining siblings to be combined  -->
								</nodesToCombine>
							</xsl:document>
						</xsl:with-param>
						<xsl:with-param name="combiningElements" as="xs:string*" select="$combiningElements"/>										<!--  pass on combiningElements  -->
					</xsl:call-template>

				</xsl:when>
				<xsl:otherwise>
					<xsl:copy-of select="$updatedTree"/>																		<!--  all siblings combined, just output the newly combined tree   -->
				</xsl:otherwise>
			</xsl:choose>

		</xsl:template>
	<!--  combined nested trees END  -->

	<!--  combineSiblingsOfSameName START  -->
		<xd:doc>
			<xd:desc>
				<xd:p><xd:b>combineSiblingsOfSameName Named Template</xd:b></xd:p>
				<xd:p>This named template is used to combine immediate siblings of the same name into a single target element (instead of multiple target elements of same name).</xd:p>
				<xd:p>Within the template of the first sibling, create the output element and apply-templates on child nodes of that element first.  Then use for-each to change context to the next sibling and call this named template.</xd:p>
				<xd:p>Be sure to suppress elements of the same name that have preceding siblings with that name (elementXYX[ preceding-sibling::node()[1][ self::elementXYX ] ]).</xd:p>
			</xd:desc>
		</xd:doc>
		<xsl:template name="combineSiblingsOfSameName" as="item()*">
			<!--  this named template assumes the first sibling's attribute and nodes were already processed, so first call to this rule is the second immediate sibling   -->

			<!--  capture name of current element   -->
			<xsl:variable name="currentEleName" as="xs:string" select="name( . )"/>

			<!--  process child nodes; note attribute nodes are skipped in deference to the first sibling's attributes   -->
			<xsl:apply-templates select="node()"/>

			<!--  recursively process the next immediately following sibling node if it has the same name   -->
			<xsl:for-each select="following-sibling::node()[1][ name() = $currentEleName ]">
				<xsl:call-template name="combineSiblingsOfSameName"/>
			</xsl:for-each>

		</xsl:template>
	<!--  combineSiblingsOfSameName END  -->

	<!--  named template rules END  -->

	<!--  modal template rules START  -->

	<!--  combined nested trees mode START  -->
		<xd:doc>
			<xd:desc>
				<xd:p><xd:b>combineTrees Processing Mode</xd:b></xd:p>
				<xd:p>mode="combineTrees" is used in conjunction with the combineTrees named template to combine multiple siblings into a single element (see description for "combineTrees Named Template").</xd:p>
				<xd:p>For most nodes in the tree, this mode will simply copy itself to the output destination (equivalent to the identity template).</xd:p>
				<xd:p>However, if the current node is a location where a pair of siblng structures can be combined, the combining is done as part of this mode and processing continues.</xd:p>
			</xd:desc>
		</xd:doc>
		<xsl:template match="node()" mode="combineTrees">															<!--  the combineTree mode is used to copy nodes at the same location in a sibling tree as following siblings in current location  -->
			<xsl:param name="matchingXPath" tunnel="yes" as="xs:string"/>										<!--  the path to the last node containing text in the tree to be combined into  -->
			<xsl:param name="baseEleName" tunnel="yes" as="xs:string"/>										<!--  base element name before the digit, such as 'lnv:TEXT-'  -->
			<xsl:param name="currentEleName" tunnel="yes" as="xs:string"/>									<!--  element name of the base of the tree to be combined into  -->
			<xsl:param name="nextEleName" tunnel="yes" as="xs:string"/>											<!--  element name of the base of the tree to be combined from  -->

			<xsl:variable name="currentXPath" as="xs:string">															<!--  determine XPath of current node for later use  -->
				<xsl:call-template name="generateXPath"/>
			</xsl:variable>

			<xsl:copy>																													<!--  copy over current node and attributes to the combined tree  -->
				<xsl:copy-of select="@*"/>
				<xsl:apply-templates select="node()" mode="combineTrees"/>										<!--  process child nodes to be output first, then determine if nodes from other tree need to be copied over as following siblings  -->

				<xsl:if test="$matchingXPath = $currentXPath">															<!--  if processing the last text-containing node in the primary tree, then need to copy over remaining nodes in following tree as siblings  -->

					<xsl:variable name="currentXPathNoBrackets" as="xs:string">									<!--  create and save version of current XPath without the square brackets (predicates)  -->
						<xsl:call-template name="generateXPath">
							<xsl:with-param name="includeBrackets" as="xs:boolean" select="false()"/>
						</xsl:call-template>
					</xsl:variable>

					<xsl:for-each select="/*/*[ name() = $nextEleName ]/descendant-or-self::*[text()][1]">	<!--  now change context over to the first text-containing node in the sibling tree (the one with base element name of $nextEleName)  -->
						<xsl:for-each select="ancestor-or-self::*">															<!--  start up the ancestor-or-self axis until XPaths match.  Note this should end up at one of the elements identified in $combiningElements  -->
							<xsl:variable name="altTreeXPath" as="xs:string">											<!--  capture the XPath to compare against current XPath; again no predicates  -->
								<xsl:call-template name="generateXPath">
									<xsl:with-param name="includeBrackets" as="xs:boolean" select="false()"/>
								</xsl:call-template>
							</xsl:variable>																								<!--  since the base element names are different, need to only compare strings after those element names  -->
							<xsl:if test="substring-after( $altTreeXPath , $nextEleName ) = substring-after( $currentXPathNoBrackets , $currentEleName )">
								<xsl:copy-of select="*"/>																			<!--  if the XPaths match, copy over the children.  Note current output destination is the same spot in primary tree   -->
							</xsl:if>
						</xsl:for-each>
					</xsl:for-each>

				</xsl:if>

			</xsl:copy>

			<!--  now need to check if there are nodes in sibling tree that need to get copied *after* current node.  Only check when XPath is the same, or starts with, the matching XPath (leading to last text-containing node in primary tree)  -->
			<xsl:if test="starts-with( $matchingXPath , $currentXPath )">

				<xsl:variable name="currentXPathNoBrackets" as="xs:string">									<!--  again, create and save version of current XPath without the square brackets (predicates)  -->
					<xsl:call-template name="generateXPath">
						<xsl:with-param name="includeBrackets" as="xs:boolean" select="false()"/>
					</xsl:call-template>
				</xsl:variable>

				<xsl:for-each select="/*/*[ name() = $nextEleName ]/descendant-or-self::*[text()][1]">	<!--  now change context just like before.  The processing below is same, except the copy-of will grab different nodes  -->
					<xsl:for-each select="ancestor-or-self::*">
						<xsl:variable name="altTreeXPath" as="xs:string">
							<xsl:call-template name="generateXPath">
								<xsl:with-param name="includeBrackets" as="xs:boolean" select="false()"/>
							</xsl:call-template>
						</xsl:variable>
						<xsl:if test="substring-after( $altTreeXPath , $nextEleName ) = substring-after( $currentXPathNoBrackets , $currentEleName )">
							<!--  if the XPaths match, need to copy over the following siblings of the same node as in the output destination.  Just up to parent and copy child::* as long as not first one.  -->
							<xsl:copy-of select="../*[position() != 1][not( starts-with( name() , $baseEleName ) )]"/>
						</xsl:if>
					</xsl:for-each>
				</xsl:for-each>

			</xsl:if>

		</xsl:template>
	<!--  combined nested trees mode END  -->

	<!--  default fixSourceNesting mode START  -->
		<xd:doc>
			<xd:desc>
				<xd:p><xd:b>fixSourceNesting Processing Mode (default rule)</xd:b></xd:p>
				<xd:p>mode="fixSourceNesting" for any node matching this rule will simply copy itself to the output destination (equivalent to the identity template).</xd:p>
				<xd:p>It does trap elements in the lndocmeta <xd:i class="xmlSource">source</xd:i> namespace and ensures they remain in the source namespace after copying.</xd:p>
			</xd:desc>
		</xd:doc>
		<xsl:template match="node()" mode="fixSourceNesting">													<!--  the fixSourceNesting mode can be used to resolve issues such as p/lnvxe:text/lnvxe:note when, in the target, note and p are siblings  -->
																																			<!--  default for this mode is identity template, so first copy over current node and attributes  -->
			<xsl:choose>
				<xsl:when test=" not( self::* ) or ( contains( name() , ':' ) and not( substring-before( name() , ':' ) = 'lndocmeta' ) ) ">

					<xsl:copy>
						<xsl:copy-of select="@*"/>
						<xsl:apply-templates select="node()" mode="fixSourceNesting"/>								<!--  process child nodes  -->
					</xsl:copy>

				</xsl:when>
				<xsl:otherwise>

					<xsl:variable name="nsURI" as="xs:string" select=" if ( substring-before( name() , ':' ) = 'lndocmeta' ) then 'http://www.lexis-nexis.com/lndocmeta' else '' "/>
					<xsl:variable name="eleName" as="xs:string" select=" if ( substring-before( name() , ':' ) = 'lndocmeta' ) then local-name() else name() "/>

					<xsl:element name="{name()}" namespace="{$nsURI}">
						<xsl:copy-of select="@*"/>
						<xsl:apply-templates select="node()" mode="fixSourceNesting"/>								<!--  process child nodes  -->
					</xsl:element>

				</xsl:otherwise>
			</xsl:choose>

		</xsl:template>
	<!--  default fixSourceNesting mode END  -->

	<!--  modal template rules END  -->

	<!--  functions START  -->

	<!--  lnf:trim Function START  -->
		<xd:doc>
			<xd:desc>
				<xd:p><xd:b>lnf:trim Function</xd:b></xd:p>
				<xd:p>Adapted from "functx:trim" (http://www.xsltfunctions.com/xsl/functx_trim.html)</xd:p>
				<xd:p>This function removes whitespace at the beginning and end of a string.  Unlike the built-in normalize-space function, it only removes leading and trailing whitespace, not whitespace in the middle of the value. Whitespace is defined as it is in XML, namely as space, tab, carriage return and line feed characters. If $arg is the empty sequence, it returns a zero-length string.</xd:p>
			</xd:desc>
		</xd:doc>
		<xsl:function name="lnf:trim" as="xs:string">
			<xsl:param name="arg" as="xs:string?"/>

			<xsl:sequence select=" replace( replace( $arg , '\s+$' , '' ) , '^\s+' , '' ) "/>

		</xsl:function>
	<!--  lnf:trim Function END  -->

	<!--  replaceString START  -->
		<xd:doc>
			<xd:desc>
				<xd:p><xd:b>lnf:replaceString Function</xd:b></xd:p>
				<xd:p>This function was created to remove specific string segments from the VISF output as part of the MNCR to VISF code base.</xd:p>
				<xd:p>It will remove all occurrences of all string segments contained within $states from the input string $fileCodeInput.</xd:p>
			</xd:desc>
		</xd:doc>
		<xsl:function name="lnf:replaceString" as="xs:string">
			<xsl:param name="fileCodeInput" as="xs:string"/>
			<xsl:param name="states" as="xs:string*"/>

			<xsl:choose>
				<xsl:when test=" (for $s in $states return contains( $fileCodeInput , $s ))[.][1] ">
					<xsl:variable name="fileCodeInputNew" as="xs:string*">
						<xsl:for-each select="$states[ contains( $fileCodeInput , . ) ][1]">
							<xsl:sequence select="substring-before( $fileCodeInput , . )"/>
							<xsl:sequence select="substring-after( $fileCodeInput , . )"/>
						</xsl:for-each>
					</xsl:variable>

					<xsl:sequence select="lnf:replaceString( string-join( $fileCodeInputNew , '' ) , $states )"/>

				</xsl:when>
				<xsl:otherwise>
					<xsl:sequence select="$fileCodeInput"/>
				</xsl:otherwise>
			</xsl:choose>
		</xsl:function>
	<!--  replaceString END  -->
	
	<!-- titleCase START -->
	<xd:doc>
		<xd:desc>
			<xd:p>Function to return a string in Title Case. Currently configured to exclude 'and', 'or'.</xd:p>
			<xd:p>Call using <![CDATA[<xsl:sequence select="string-join(for $x in tokenize($text,'\s') return lnf:titleCase($x),' ')"/>]]></xd:p>
		</xd:desc>
	</xd:doc>
	<!-- function copied from http://p2p.wrox.com/xslt/80938-title-case-string.html -->
	<xsl:function name="lnf:titleCase">
		<xsl:param name="s" as="xs:string"/>
		<xsl:choose>
			<!-- when lower case string is 'and', 'or' just output  -->
			<xsl:when test="lower-case($s)=('and','or')">
				<xsl:value-of select="lower-case($s)"/>
			</xsl:when>
			<!-- when the string is in upper case the below would originally pass throug in all upper case; commenting -->
			<!--<xsl:when test="$s=upper-case($s)">
				<!-\-<xsl:value-of select="$s"/>-\->
			</xsl:when>-->
			<!-- otherwise convert the first char to upper case and subsequent chars to lower case  -->
			<xsl:otherwise>
				<xsl:value-of select="concat(upper-case(substring($s, 1, 1)), lower-case(substring($s, 2)))"/>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:function>
	<!-- titleCase END -->
	<!-- stringToTitleCase START -->
	<xsl:function name="lnf:stringToTitleCase" as="xs:string">
		<xsl:param name="inputString" as="xs:string"/>							<!--  input string of one or more words  -->
		<xsl:param name="keepAllLower" as="xs:string*"/>						<!--  string sequence of words to keep as lowercase, such as the, or, and, for, of  -->

		<xsl:variable name="outputSequence" as="xs:string*">
			<xsl:for-each select="tokenize( $inputString , '\s' )">
				<xsl:choose>
					<!-- when lower case string is any one of $keepAllLower, just output lower-case of it  -->
					<xsl:when test="lower-case( . ) = $keepAllLower">
						<xsl:value-of select="lower-case( . )"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:value-of select="concat( upper-case( substring( . , 1 , 1 ) ) , lower-case( substring( . , 2 ) ) )"/>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:for-each>
		</xsl:variable>
		<xsl:sequence select="string-join( $outputSequence , ' ' )"/>			<!--  string join the sequence with a space as the separator  -->

	</xsl:function>
	<!-- stringToTitleCase END -->
	
	<!--  removeSequenceOfStrings START  -->
		<xd:doc>
			<xd:desc>
				<xd:p><xd:b>lnf:removeSequenceOfStrings Function</xd:b></xd:p>
				<xd:p>This function was created to remove a set of substrings from an input string, if any of these strings exist in the input string</xd:p>
				<xd:p>$stringsToRemove is the input string sequence of *regex* items; the function will go through this sequence one by one and remove all occurrences of each item in this sequence.</xd:p>
				<xd:p>The removal can be case sensitive or case insensitive.</xd:p>
			</xd:desc>
		</xd:doc>
		<xsl:function name="lnf:removeSequenceOfStrings" as="xs:string">
			<xsl:param name="inputString" as="xs:string"/>
			<xsl:param name="stringsToRemove" as="xs:string*"/>
			<xsl:param name="caseInsensitive" as="xs:boolean"/>

			<xsl:choose>
				<xsl:when test=" string-join( $stringsToRemove , '' ) = '' ">
					<xsl:sequence select="$inputString"/>
				</xsl:when>
				<xsl:when test=" $stringsToRemove[1] = '' or $stringsToRemove[1] = () ">
					<xsl:sequence select="lnf:removeSequenceOfStrings( $inputString , remove($stringsToRemove, 1) , $caseInsensitive )"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:sequence select="lnf:removeSequenceOfStrings( replace( $inputString , $stringsToRemove[1] , '' , if ($caseInsensitive) then 'i' else '' ) , remove($stringsToRemove, 1) , $caseInsensitive )"/>
				</xsl:otherwise>
			</xsl:choose>
		</xsl:function>
	<!--  removeSequenceOfStrings END  -->

	<!--  @SBy:  2016-09-20  ROM 1218 IRM Strategic:  add substringBeforeLast function  -->
	<!--   Original idea from Tomalak at stackoverflow, http://stackoverflow.com/questions/1119449/removing-the-last-characters-in-an-xslt-string/1119666#1119666  -->
	<!--  substringBeforeLast START  -->
		<xd:doc>
			<xd:desc>
				<xd:p><xd:b>lnf:substringBeforeLast Function</xd:b></xd:p>
				<xd:p>This function will return that part of an input string that appears before the final occurence of an input substring.</xd:p>
			</xd:desc>
		</xd:doc>
		<xsl:function name="lnf:substringBeforeLast" as="xs:string">
			<xsl:param name="inputString" as="xs:string"/>
			<xsl:param name="searchString" as="xs:string"/>

			<xsl:variable name="remString" as="xs:string" select="substring-after( $inputString , $searchString )"/>

			<xsl:sequence select="concat( 
												substring-before( $inputString , $searchString ) , 
												if (contains( $remString , $searchString )) then 
													concat( $searchString , 
														lnf:substringBeforeLast( $remString , $searchString )
													) 
												else '' )"/>

		</xsl:function>
	<!--  substringBeforeLast END  -->

	<!--  @SBy:  2016-11-04  ROM 1218 IRM Strategic:  save the DOC-ID string logic for use in ref:cross-reference  -->
	<!--  createDocIdString START  -->
		<xd:doc>
			<xd:desc>
				<xd:p><xd:b>lnf:createDocIdString Function</xd:b></xd:p>
				<xd:p>This function will create the correct string for DOC-ID style links for certain conversions.  For the Internal Revenue Manual as an example, where $legacy-filename = 'IRSMNL', and input string is 'IRM 3.10.72', the output string will be 'IRSMNL-3_10_72'.</xd:p>
			</xd:desc>
		</xd:doc>
	<xsl:function name="lnf:createDocIdString" as="xs:string">
		<xsl:param name="inputElement" as="element()"/>

		<xsl:variable name="inputString" as="xs:string" select="if ($inputElement/source_lnci:cite/@normcite != '') then 
																							$inputElement/source_lnci:cite/@normcite 
																						else
																							if (starts-with( string( $inputElement ) , 'IRM ' )) then
																								substring-after( string( $inputElement ) , 'IRM ' )
																							else
																								string( $inputElement )"/>
		<xsl:variable name="badCharacters" as="xs:string" select="translate( $inputString , $acceptableID_Chars , '' )"/>
		<xsl:variable name="normString" select="translate( $inputString , $badCharacters , ' ' )"/>
		<xsl:variable name="outputString" select="translate( normalize-space( $normString ) , ' .' , '__' )"/>

		<xsl:sequence select="concat( $legacy-filename , '-' , $outputString )"/>

	</xsl:function>
	<!--  createDocIdString END  -->

	<!--  @SBy:  2017-05-25  ROCKET ReWrites:  function to return a string that is a valid value for attributes of type ID  -->
	<!--  createValidIDstring START  -->
		<xd:doc>
			<xd:desc>
				<xd:p><xd:b>lnf:createValidIDstring Function</xd:b></xd:p>
				<xd:p>Given an arbitrary input string, this function will return a string that is valid for attribute values of type ID. </xd:p>
			</xd:desc>
		</xd:doc>
		<xsl:function name="lnf:createValidIDstring" as="xs:string">
			<xsl:param name="inputString" as="xs:string"/>

			<xsl:variable name="badCharacters" as="xs:string" select="translate( $inputString , $acceptableID_Chars , '' )"/>
			<xsl:variable name="normString" select="translate( $inputString , $badCharacters , '' )"/>

			<xsl:sequence select="if (translate( substring( $normString , 1 , 1 ) , $unallowedFirstCharAcceptableID_Chars , '' ) = '') then concat( '_' , $normString ) else $normString"/>

		</xsl:function>
	<!--  createValidIDstring END  -->

	<!--  NOTE:  the next two functions can allow a transformation to not require sibling recursion moded rules such as mode="textEleRecurse".   However, this function does not apply templates and so does not
				work in the "target" space.  One must use this function and throw results to a variable, then apply templates on that variable to transform the nodes to target format.  Keep in mind that any processing
				of such a variable only has the variable plus descendants in scope.  So, for example, footnote processing that looks for matching node values in the entire source document tree will not actually
				be searching the entire tree anymore, just the tree defined by the variable.  In general, it is safest to use these functions when writing the entire document to a variable and then A-T on that variable.  -->

	<!--  @SBy:  2017-01-17  ROM 1218 IRM Strategic:	general function version of sibling recursion type grouping, for situations such as 
																					handling children of "p" in the source converting to p/text - p/blockquote - p/text etc. in the target  -->
	<!--  siblingBlockGrouping START  -->
	<xd:doc>
		<xd:desc>
			<xd:p><xd:b>lnf:siblingBlockGrouping Function</xd:b></xd:p>
			<xd:p>This function will sibling recursion type grouping for situations such as handling children of "p" in the source converting to p/text - p/blockquote - p/text etc. in the target; for that scenario, the $groupingContainer = 'text' (the text element), $blockElements = ('blockquote', 'table', etc), and $siblingNodes would contain the set of siblings that need to be split into groups of $groupingContainer elements broken up by $blockElements.</xd:p>
		</xd:desc>
	</xd:doc>
	<xsl:function name="lnf:siblingBlockGrouping" as="item()*">
		<xsl:param name="groupingContainer" as="xs:string"/>				<!--  name of container element to group consecutive siblings under (typically the "text" element)   -->
		<xsl:param name="blockElements" as="xs:string*"/>						<!--  list of element names (can be empty string) that cannot be grouped under $groupingContainer (typically table, blockquote, etc)   -->
		<xsl:param name="siblingNodes" as="element()"/>						<!--  (remaining) sibling nodes (typically text() nodes and elements, can be instances of $groupingContainer too) to perform grouping on, all under a single element parent  -->

		<!--  save name of element parent  -->
		<xsl:variable name="siblingNodesParent" as="xs:string" select="name($siblingNodes)"/>	

		<xsl:for-each select="$siblingNodes/node()[1]">
			<xsl:choose>
				<!--  if the first node is not an element, OR it is an element but there are no blockElements and it's not groupingContainer, or it's an element not in blockElements and it's not groupingContainer; then create container and move on   -->
				<xsl:when test=" not(self::*) or ( $blockElements = '' and not( name() = $groupingContainer ) ) or not( name() = $blockElements or name() = $groupingContainer ) ">

					<xsl:element name="{$groupingContainer}" namespace="">
						<!--  create container   -->

						<xsl:choose>
							<xsl:when test=" $blockElements = '' or not( following-sibling::node()[name() = $blockElements or name() = $groupingContainer] ) ">
								<!--  no grouping required; just copy self and all following siblings to output, and no recurse   -->

								<xsl:copy-of select="."/>
								<xsl:copy-of select="following-sibling::node()"/>

							</xsl:when>
							<xsl:otherwise>
								<xsl:for-each select="following-sibling::node()[name() = $blockElements or name() = $groupingContainer][1]">
									<!--  grouping required; change context to the first blocker (either a group container or block element) and then copy over alll preceding siblings; close container   -->

									<xsl:copy-of select="preceding-sibling::node()"/>

								</xsl:for-each>
							</xsl:otherwise>
						</xsl:choose>

					</xsl:element>

					<!--  if grouping was required in prior section; change context to the first blocker again to copy over the blocker, and if necessary initiate recursive call   -->
					<xsl:if test=" not( $blockElements = '' or not( following-sibling::node()[name() = $blockElements or name() = $groupingContainer] ) ) ">

						<xsl:for-each select="following-sibling::node()[name() = $blockElements or name() = $groupingContainer][1]">

							<!--  copy over the blocker or container   -->
							<xsl:copy-of select="."/>

							<!--  if there are following siblings, need to recurse   -->
							<xsl:if test="following-sibling::node()">

								<!--  update sibling list to be only the remaining following siblings   -->
								<xsl:variable name="siblingNodesUpdated" as="element()">
									<xsl:element name="{$siblingNodesParent}">
										<xsl:copy-of select="following-sibling::node()"/>
									</xsl:element>
								</xsl:variable>

								<!--  recurse   -->
								<xsl:sequence select=" lnf:siblingBlockGrouping( $groupingContainer , $blockElements , $siblingNodesUpdated ) "/>

							</xsl:if>

						</xsl:for-each>

					</xsl:if>

				</xsl:when>
				<!--  first node is an element, AND it is an element that is either in blockElements or in groupingContainer. This is the only other possibility, so using xsl:otherwise.  Copy myself over, and recurse    -->
				<!--xsl:when test=" name() eq $blockElements or name() eq $groupingContainer "-->
				<xsl:otherwise>

					<!--  since we are a blocker or container, copy over myself   -->
					<xsl:copy-of select="."/>

					<!--  if there are following siblings, need to recurse   -->
					<xsl:if test="following-sibling::node()">

						<!--  update sibling list to be only the remaining following siblings   -->
						<xsl:variable name="siblingNodesUpdated" as="element()">
							<!-- JD: 2017-04-04: added namespace="" and copy-namespaces="no" after 
							getting error "XTDE0440: Cannot output a namespace node for the default namespace when the element is in no namespace" (source lnvxe:footnote with p child)-->
							<xsl:element name="{$siblingNodesParent}" namespace="">
								<xsl:copy-of select="following-sibling::node()" copy-namespaces="no"/>
							</xsl:element>
						</xsl:variable>

						<!--  recurse   -->
						<xsl:sequence select=" lnf:siblingBlockGrouping( $groupingContainer , $blockElements , $siblingNodesUpdated ) "/>

					</xsl:if>

				</xsl:otherwise>
			</xsl:choose>
		</xsl:for-each>

	</xsl:function>
	<!--  siblingBlockGrouping END  -->

	<!--  @SBy:  2017-01-17  ROM 1218 IRM Strategic:	general function to pull child elements up to be intermingled with the parent.  For example,  
																					handling children note elements of "p" in the source converting to p then note then p then note etc.in the target  -->
	<!--  siblingToParentGrouping START  -->
	<xd:doc>
		<xd:desc>
			<xd:p><xd:b>lnf:siblingToParentGrouping Function</xd:b></xd:p>
			<xd:p>This function will pull child elements up to be intermingled with the parent, such as handling children lnvxe:note elements of "p" in the source converting to p then lnvxe:note then p then lnvxe:note etc.in the target; for that scenario, the $childElements = 'lnvxe:note' (the note element), $currentParent would contain the parent that had one or more $childElements elements needing to be pulled up to the parent level.</xd:p>
		</xd:desc>
	</xd:doc>
	<xsl:function name="lnf:siblingToParentGrouping" as="item()*">
		<xsl:param name="childElements" as="xs:string*"/>						<!--  list of element names (such as lnvxe:note) that need to be pulled up and mingled with the parent   -->
		<xsl:param name="currentParent" as="element()"/>						<!--  the current single parent that contains one or more nodes including $childElements  -->

		<!--  save name of element parent  -->
		<xsl:variable name="currentParentName" as="xs:string" select="name($currentParent)"/>	

		<xsl:for-each select="$currentParent/node()[1]">
			<xsl:choose>
				<!--  if the first node is not an element, OR it is an element but there are no childElements, or it's an element not in childElements; then create currentParent and move on   -->
				<xsl:when test=" not(self::*) or ( $childElements = '' ) or not( name() = $childElements ) ">

					<xsl:choose>
						<xsl:when test=" contains( $currentParentName , ':' ) ">

							<xsl:element name="{$currentParentName}">
								<!--  create container   -->

								<xsl:choose>
									<xsl:when test=" $childElements = '' or not( following-sibling::node()[name() = $childElements] ) ">
										<!--  no grouping required; just copy self and all following siblings to output, and no recurse   -->

										<xsl:copy-of select="." copy-namespaces="no"/>
										<xsl:copy-of select="following-sibling::node()" copy-namespaces="no"/>

									</xsl:when>
									<xsl:otherwise>
										<xsl:for-each select="following-sibling::node()[name() = $childElements][1]">
											<!--  grouping required; change context to the first childElements element and then copy over alll preceding siblings; close currentParent   -->

											<xsl:copy-of select="preceding-sibling::node()" copy-namespaces="no"/>

										</xsl:for-each>
									</xsl:otherwise>
								</xsl:choose>

							</xsl:element>

						</xsl:when>
						<xsl:otherwise>

							<xsl:element name="{$currentParentName}" namespace="">
								<!--  create container   -->

								<xsl:choose>
									<xsl:when test=" $childElements = '' or not( following-sibling::node()[name() = $childElements] ) ">
										<!--  no grouping required; just copy self and all following siblings to output, and no recurse   -->

										<xsl:copy-of select="." copy-namespaces="no"/>
										<xsl:copy-of select="following-sibling::node()" copy-namespaces="no"/>

									</xsl:when>
									<xsl:otherwise>
										<xsl:for-each select="following-sibling::node()[name() = $childElements][1]">
											<!--  grouping required; change context to the first childElements element and then copy over alll preceding siblings; close currentParent   -->

											<xsl:copy-of select="preceding-sibling::node()" copy-namespaces="no"/>

										</xsl:for-each>
									</xsl:otherwise>
								</xsl:choose>

							</xsl:element>

						</xsl:otherwise>
					</xsl:choose>

					<!--  if grouping was required in prior section; change context to the first childElements element again to copy over the childElements element, and if necessary initiate recursive call   -->
					<xsl:if test=" not( $childElements = '' or not( following-sibling::node()[name() = $childElements] ) ) ">

						<xsl:for-each select="following-sibling::node()[name() = $childElements][1]">

							<!--  copy over the childElements element   -->
							<xsl:copy-of select="." copy-namespaces="no"/>

							<!--  if there are following siblings, need to recurse   -->
							<xsl:if test="following-sibling::node()">

								<!--  update sibling list to be only the remaining following siblings   -->
								<xsl:variable name="currentParentUpdated" as="element()">
									<xsl:element name="{$currentParentName}">
										<xsl:copy-of select="following-sibling::node()" copy-namespaces="no"/>
									</xsl:element>
								</xsl:variable>

								<!--  recurse   -->
								<xsl:sequence select=" lnf:siblingToParentGrouping( $childElements , $currentParentUpdated ) "/>

							</xsl:if>

						</xsl:for-each>

					</xsl:if>

				</xsl:when>
				<!--  first node is an element, AND it is an element that is in childElements. This is the only other possibility, so using xsl:otherwise.  Copy myself over, and recurse    -->
				<!--xsl:when test=" name() eq $blockElements or name() eq $groupngContainer "-->
				<xsl:otherwise>

					<!--  since we are a childElements element, copy over myself   -->
					<xsl:copy-of select="." copy-namespaces="no"/>

					<!--  if there are following siblings, need to recurse   -->
					<xsl:if test="following-sibling::node()">

						<!--  update sibling list to be only the remaining following siblings   -->
						<xsl:variable name="currentParentUpdated" as="element()">
							<xsl:element name="{$currentParentName}">
								<xsl:copy-of select="following-sibling::node()" copy-namespaces="no"/>
							</xsl:element>
						</xsl:variable>

						<!--  recurse   -->
						<xsl:sequence select=" lnf:siblingToParentGrouping( $childElements , $currentParentUpdated ) "/>

					</xsl:if>

				</xsl:otherwise>
			</xsl:choose>
		</xsl:for-each>

	</xsl:function>
	<!--  siblingToParentGrouping END  -->

	
	
	<!-- This template takes an element having @month, @day, or @year attributes and provides the provided attributes and their enhanced values back to the element. -->
		<!-- Much of the logic is designed to create a normalized date value of YYYY-MM-DD.   -->
		<!-- @month is tested for value between 1 and 12.  If other value exists, it outputs but does not create a normalized date. Leading zeros added if value is below 9. -->
		<!-- @day is tested for value between 1 and 31.  If other value exists, it outputs but does not create a normalized date. Leading zeros added if value is below 9. -->
		<!-- @year is tested for four characters.  By testing for current year value the template outputs a four digit year value when only provided with a two digit year value.  -->
	<!-- Some logic taken from DATE template in '/dataArch/XSLT/ContentArch/CRE-to-LA/modules/lnvxe/n=DATE.xsl' -->
	<xsl:template name="DATE_attributes">
		<xsl:param name="date"/>
		<xsl:variable name="dayValue" as="xs:integer">
			<xsl:choose>
				<xsl:when test="$date/date/@day">
					<xsl:value-of select="xs:integer($date/date/@day)"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:text>0</xsl:text>
				</xsl:otherwise>
			</xsl:choose>
		</xsl:variable>
		<xsl:variable name="monthValue" as="xs:integer">
			<xsl:choose>
				<xsl:when test="$date/date/@month">
					<xsl:value-of select="xs:integer($date/date/@month)"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:text>0</xsl:text>
				</xsl:otherwise>
			</xsl:choose>
		</xsl:variable>
		
		<xsl:variable name="monthValueString" as="xs:string" select="if ($monthValue lt 10 and $monthValue gt 0) then concat( '0' , string($monthValue) ) else string($monthValue)"/>
        
        <!-- 20170516:  MCJ:  Added default for $yearValue as was already done for $monthValue and $dayValue. -->
		<!-- <xsl:variable name="yearValue" as="xs:integer" select="xs:integer($date/date/@year)"/> -->
		<xsl:variable name="yearValue" as="xs:integer">
			<xsl:choose>
				<xsl:when test="$date/date/@year">
					<xsl:value-of select="xs:integer($date/date/@year)" />
				</xsl:when>
				<xsl:otherwise>0</xsl:otherwise>
			</xsl:choose>
		</xsl:variable>
		
		<xsl:variable name="current2digitYear" as="xs:integer" select="xs:integer(substring(string(current-date()),3,2))"/>
		<xsl:variable name="outputDay" as="xs:boolean" select="if ($dayValue gt 0 and $dayValue lt 32) then true() else false()"/>
		<xsl:variable name="outputMonth" as="xs:boolean" select="if ($monthValue gt 0 and $monthValue lt 13) then true() else false()"/>
		<xsl:variable name="outputYear" as="xs:boolean" select="if ($yearValue gt 0) then true() else false()"/>
		<xsl:variable name="dayNorm" as="xs:string" select="if ($dayValue lt 10) then concat( '0' , string($dayValue) ) else string($dayValue)"/>
		<xsl:variable name="yearNorm" as="xs:string" select="if ($yearValue lt 10) then concat( '200' , string($yearValue) ) else
			if ($yearValue le $current2digitYear) then concat( '20' , string($yearValue) ) else
			if ($yearValue lt 100) then concat( '19' , string($yearValue) ) else
			if ($yearValue lt 1000) then concat( '0' , string($yearValue) ) else
			string($yearValue)"/>
		
		<xsl:if test="$outputDay and $outputMonth and $outputYear">
			<xsl:attribute name="day" select="$dayValue"/>
		</xsl:if>
		<xsl:if test="$outputMonth and $outputYear">
			<xsl:attribute name="month" select="$monthValueString"/>
		</xsl:if>
		<xsl:if test="$outputYear">
			<xsl:attribute name="year" select="$yearValue"/>
		</xsl:if>
		<xsl:choose>
			<xsl:when test="$streamID='NZ11'"/>
			<xsl:otherwise>		<xsl:if test="$outputDay and $outputMonth and $outputYear and $yearValue lt 10000">
				<xsl:attribute name="normdate" select="concat( $yearNorm , '-' , $monthValueString , '-' , $dayNorm )"/>
			</xsl:if>
			</xsl:otherwise>
		</xsl:choose>
		
	</xsl:template>
	

	
	<!--  functions END  -->
	
</xsl:stylesheet>