<?xml version="1.0" encoding="UTF-8"?>
<!--  ***This XSLT conversion file is a stand-alone, generated release created from a module based source code.  Any changes to this conversion must be propagated to its original source. ***
This file is not intended to be edited directly, except in a time critical situation such as a  "sev1" webstar.
Please contact Content Architecture for support and for ensuring the source code is updated as needed and a new stand-alone delivery is released.
Compiled:  2018-03-09T15:14:13.466+05:30-->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xsltdoc="http://www.lexisnexis.com/xmlstylesheets/documentation/xslt-documentation/1/"
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"
                xmlns:annot="http://www.lexisnexis.com/xmlschemas/content/shared/annotations/1/"
                xmlns:base="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"
                xmlns:case="http://www.lexis-nexis.com/glp/case"
                xmlns:case2="http://www.lexisnexis.com/xmlschemas/content/legal/case/1/"
                xmlns:caseinfo="http://www.lexisnexis.com/xmlschemas/content/legal/case-information/1/"
                xmlns:casesum="http://www.lexisnexis.com/xmlschemas/content/legal/case-summary/1/"
                xmlns:ci="http://www.lexis-nexis.com/ci"
                xmlns:classify="http://www.lexisnexis.com/xmlschemas/content/shared/classification/1/"
                xmlns:comm="http://www.lexis-nexis.com/glp/comm"
                xmlns:contact="http://www.lexisnexis.com/xmlschemas/content/shared/contact/1/"
                xmlns:courtcase="http://www.lexisnexis.com/xmlschemas/content/legal/courtcase/1/"
                xmlns:dc="http://purl.org/dc/elements/1.1/"
                xmlns:decision="http://www.lexisnexis.com/xmlschemas/content/legal/decision/1/"
                xmlns:dig="http://www.lexis-nexis.com/glp/dig"
                xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
                xmlns:ditaarch="http://dita.oasis-open.org/architecture/2005/"
                xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/"
                xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo"
                xmlns:error="urn:x-lexisnexis:conversion:global:error:1"
                xmlns:ext="http://exslt.org/common"
                xmlns:form="http://www.lexisnexis.com/xmlschemas/content/shared/form/1/"
                xmlns:frm="http://www.lexis-nexis.com/glp/frm"
                xmlns:functx="http://www.functx.com"
                xmlns:globalentity="urn:x-lexisnexis:content:identified-entities:global:1"
                xmlns:glp="http://www.lexis-nexis.com/glp"
                xmlns:guid="urn:x-lexisnexis:content:guid:global:1"
                xmlns:in="http://www.lexis-nexis.com/glp/in"
                xmlns:index="urn:x-lexisnexis:content:publicationindex:sharedservices:1"
                xmlns:jrnl="http://www.lexis-nexis.com/glp/jrnl"
                xmlns:jurisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/jurisdiction-info/1/"
                xmlns:leg="http://www.lexis-nexis.com/glp/leg"
                xmlns:lnci="http://www.lexisnexis.com/xmlschemas/content/shared/citations/1/"
                xmlns:lncr="http://www.lexis-nexis.com/lncr"
                xmlns:lnf="urn:x-lexisnexis:conversion:global:functions:1"
                xmlns:lnmeta="http://www.lexisnexis.com/xmlschemas/content/shared/lexisnexis-metadata/1/"
                xmlns:lnv="http://www.lexis-nexis.com/lnv"
                xmlns:lnvxe="http://www.lexis-nexis.com/lnvxe"
                xmlns:location="http://www.lexisnexis.com/xmlschemas/content/shared/location/1/"
                xmlns:person="http://www.lexisnexis.com/xmlschemas/content/shared/person/1/"
                xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/"
                xmlns:primlawhist="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-history/1/"
                xmlns:proc="http://www.lexisnexis.com/xmlschemas/content/shared/process-elements/1/"
                xmlns:pubfm="http://www.lexisnexis.com/xmlschemas/content/shared/publication-front-matter/1/"
                xmlns:pubinfo="http://www.lexisnexis.com/xmlschemas/content/shared/publication-info/1/"
                xmlns:pubup="http://www.lexisnexis.com/xmlschemas/content/shared/publication-update/1/"
                xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/"
                xmlns:seclaw="http://www.lexisnexis.com/xmlschemas/content/legal/secondary-law/1/"
                xmlns:source_cttr="http://www.lexis-nexis.com/glp/cttr"
                xmlns:source_dict="http://www.lexis-nexis.com/glp/dict"
                xmlns:source_lnci="http://www.lexis-nexis.com/lnci"
                xmlns:topic="urn:x-lexisnexis:content:topic:global:1"
                xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl"
                version="2.0"
                exclude-result-prefixes="#all">
   <xsl:output indent="no"/>
   <xd:doc>
      <xd:desc><!--  this will become the title of the PDF created from the DITA modules (documentation)  -->
         <xd:p>
            <xd:b>CA02 Rosetta DIGESTDOC to LexAdv seclaw</xd:b>
         </xd:p>
         <xd:p>This is the driver stylesheet used in transforming ... instance files (... root element) into Lexis Advance ... instance files (... root element).</xd:p>
         <xd:p>First Last (first.last@lexisnexis.com)
		</xd:p>
         <xd:p>{date}</xd:p>
         <xd:p>
            <xd:b>Version History:</xd:b>
         </xd:p>
         <xd:p>1.0 ALPHA: XXXX</xd:p>
         <xd:p>First Last: 1.0 ALPHA version; first formal release of the stylesheet.</xd:p>
         <xd:p>
            <xd:b>Source: </xd:b>source description or name of dtd</xd:p>
         <xd:p>
            <xd:b>Target: </xd:b>\schema_modeling\sharedservices\lexisadvance\rootschemas\xxx\xxxxx.rng version x.y_PROD</xd:p>
      </xd:desc>
   </xd:doc>
   <!--param schema output location  -->
   <xsl:param name="outputSchemaLoc"
              select="'http://www.lexisnexis.com/xmlschemas/content/legal/secondary-law/1/ sch_seclaw.xsd'"/>
   <!-- Vikas Rohilla: Added	-->
   <!-- map  CA01 Rosetta CASEDOC to LxAdv courtcase  -->
   <xsl:key name="idTypeValue" match="*[@id]" use="@id"/>
   <xsl:key name="idTypeValue" match="*[@ID]" use="@ID"/>
   <xsl:key name="idTypeValue" match="footnote" use="@fntoken"/>
   <xsl:key name="idTypeValue" match="fnr" use="@fnrtoken"/>
   <xsl:key name="fnr-footnote-tokens" match="fnr" use="@fntoken"/>
   <xsl:variable name="streamID" as="xs:string" select="'CA02DS'"/>
   <xsl:param name="dpsi" as="xs:string" select=" 'From LBU Manifest File' "/>
   <xsl:param name="smi" as="xs:string" select=" 'From LBU Manifest File' "/>
   <xsl:param name="inlineobjBoilerplateFiles"/>
   <xsl:param name="inlineobjFilesToSuppress"
              select="('1.gif', '2.gif', '3.gif', '4.gif', '5.gif', 'IconSignalPositive.gif', 'IconSignalNegative.gif', 'IconSignalNeutral.gif', 'IconSignalPossibleNegative.gif', 'IconSignalCiteInfoOnly.gif', 'cbcc.gif', 'leg1.gif', 'mb.gif', 'au_repealed.gif', 'au_exclaim.gif', '1.png', '2.png', '3.png', '4.png', '5.png', 'IconSignalPositive.png', 'IconSignalNegative.png', 'IconSignalNeutral.png', 'IconSignalPossibleNegative.png', 'IconSignalCiteInfoOnly.png', 'cbcc.png', 'leg1.png', 'mb.png', 'au_repealed.png', 'au_exclaim.png')"/>
   <!-- Set as 'true' if you want inline (embedded) citations.  -->
   <xsl:param name="outputEmbeddedCitations" as="xs:string" select="'false'"/>
   <!-- Set as 'segmentsOnly' if you want as flat as possible (only segement elements containing strings) when performing transforms to VisfXML.  -->
   <xsl:param name="visfXmlOutputLevel" as="xs:string" select="'false'"/>
   <!-- Set as 'true' if you want globalentity:* pass-through.  -->
   <xsl:param name="passThroughGlobalEntityMarkup"
              as="xs:string"
              select="'false'"/>
   <xsl:variable name="outputCitation"
                 as="xs:boolean"
                 select="if ($outputEmbeddedCitations = 'true') then true() else false()"/>
   <xsl:variable name="passThroughGlobalEntity"
                 as="xs:boolean"
                 select="if ($passThroughGlobalEntityMarkup = 'true') then true() else false()"/>
   <!-- Set as 'true' if you want errors thrown for elements or attributes not explicitly matched elsewhere; elements are output and wrapped in error element.  Set to 'false' to drop entirely plus no errors; set to 'noErrors' to suppress errors but still copy elements and attributes to the output; set to ROCKET (default) for error messages to be output with offending element/attribute suppressed (no forced schema validation error).  -->
   <xsl:param name="outputUnmatchedElements" as="xs:string" select=" 'ROCKET' "/>
   <xsl:param name="debugMode" as="xs:string" select=" 'false' "/>
   <xsl:variable name="debug"
                 as="xs:boolean"
                 select="if ($debugMode = 'true') then true() else false()"/>
   <!-- Current date/time and file being processed; these global variables only really used for debug/error processing.  current-dateTime() outputs in YYYY-MM-DDTHH:MM:SS-TZ:TZ format when we need YYYY-MM-DD HH:MI:SS   -->
   <xsl:param name="sourceFilename"
              as="xs:string*"
              select=" tokenize( document-uri(/) , '/' )[last()] "/>
   <xsl:variable name="fileName"
                 as="xs:string"
                 select="if (string($sourceFilename) = '') then 'UNKNOWN' else $sourceFilename"/>
   <xsl:variable name="dateTime"
                 as="xs:string"
                 select=" translate( substring( string(current-dateTime()) , 1 , 19 ) , 'T' , ' ' ) "/>
   <!--  Helpfule for Fab pipeline processing to indicate bundle ID   -->
   <xsl:param name="bundleID" as="xs:string" select=" 'UNKNOWN' "/>
   <!--  @SBy:  2016-09-20  ROM 1218 IRM Strategic:  add variables introduced by copyright and LEGDOC-LDC conversions  -->
   <xsl:variable name="acceptableID_Chars"
                 as="xs:string"
                 select=" 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789.-_:' "/>
   <xsl:variable name="unallowedFirstCharAcceptableID_Chars"
                 as="xs:string"
                 select=" '0123456789.-' "/>
   <xsl:variable name="irmSection"
                 as="xs:string"
                 select="substring-after( /LEGDOC-LDC/lnv:CITE/ref:cite4thisresource/source_lnci:cite/source_lnci:content , 'IRM ' )"/>
   <xsl:param name="legacy-filename" as="xs:string" select=" '' "/>
   <!-- Creating variable to hold all upper-case letters -->
   <xsl:variable name="vUpperCase"
                 as="xs:string"
                 select=" 'ABCDEFGHIJKLMNOPQRSTUVWXYZ' "/>
   <!-- Creating variable to hold all lower-case letters -->
   <xsl:variable name="vLowerCase"
                 as="xs:string"
                 select=" 'abcdefghijklmnopqrstuvwxyz' "/>
   <xsl:variable name="outputErrors"
                 as="xs:boolean"
                 select="if ($outputUnmatchedElements = 'true') then true() else false()"/>
   <!-- comments | text | PIs START -->
   <xd:doc>
      <xd:desc>
         <xd:p>
            <xd:b>Explanation</xd:b>
         </xd:p>
         <xd:p>This template rule copies over text nodes, comment nodes, and processing instructions to the target as is.</xd:p>
      </xd:desc>
   </xd:doc>
   <xsl:template match="comment() | text() | processing-instruction()">
      <xsl:copy-of select="."/>
   </xsl:template>
   <!-- comments | text | PIs END -->   <xd:doc>
      <xd:desc>
         <xd:p>When matching the <xd:i class="xmlSource">/</xd:i> root element, just process child nodes.</xd:p>
      </xd:desc>
   </xd:doc>
   <xsl:template match="/">
      <xsl:apply-templates/>
      <!--  for fab pipeline conversions, create an override template on the root node that defines tunnel parameters for $documentLNI and $targetPlatform.  Here is JCD example, note $outputTgroupXmlID may not be necessary for your conversion    -->
      <!--xsl:apply-templates>
			<xsl:with-param name="outputTgroupXmlID" tunnel="yes" as="xs:boolean" select="false()"/>
			<xsl:with-param name="documentLNI" tunnel="yes" as="xs:string" select="if (contains( */@guid:guid , 'urn:contentItem:' )) then
					substring-after( */@guid:guid , 'urn:contentItem:' )
				else if (*/@guid:guid) then
					*/@guid:guid
				else if (contains( */source_doc:metadata/source_mncrdocmeta:chunkinfo/source_mncrdocmeta:lnlni/@lnlni , 'urn:contentItem:' )) then
					substring-after( */source_doc:metadata/source_mncrdocmeta:chunkinfo/source_mncrdocmeta:lnlni/@lnlni , 'urn:contentItem:' )
				else if (*/source_doc:metadata/source_mncrdocmeta:chunkinfo/source_mncrdocmeta:lnlni/@lnlni) then
					*/source_doc:metadata/source_mncrdocmeta:chunkinfo/source_mncrdocmeta:lnlni/@lnlni
				else 'UNKNOWN' "/>
			<xsl:with-param name="targetPlatform" tunnel="yes" as="xs:string" select=" 'fabPipeline' "/>
		</xsl:apply-templates-->
   </xsl:template>
   <xd:doc>
      <xd:desc>
         <xd:p>
            <xd:i class="xmlSource">lncr:*</xd:i> are just pass through, just process child elements.  <xd:i class="xmlSource">lncr:metadata</xd:i> is suppressed.</xd:p>
      </xd:desc>
   </xd:doc>
   <xsl:template match="lncr:*"><!--  drop wrapper applied to any lncr:* elements and ignore all children but elements  -->
      <xsl:apply-templates select="*"/>
   </xsl:template>

   <xsl:template match="lncr:metadata"/>
   <!--  suppress lncr:metadata and it's children  -->   <!--  matched templates  -->   <xd:doc>
      <xd:desc>
         <xd:p>
            <xd:i class="xmlSource">* | @*</xd:i> (unmatched element and attribute nodes).  This template will throw an error, unless $outputUnmatchedElements is set to 'noErrors' as a parameter to the conversion.  Named template "outputErrorMessage" is called which will use the xsl:message instruction to generate an error message.  If $outputUnmatchedElements is set to 'ICCE' (the default), then the error message will be in the form of an exception element.</xd:p>
         <xd:p>Example exception handling output:</xd:p>
         <xd:pre>
&lt;exception timestamp="2017-01-04 14:54:22"&gt;
  &lt;filename&gt;test.xml&lt;/filename&gt;
  &lt;status&gt;W&lt;/status&gt;
  &lt;code&gt;402&lt;/code&gt;
  &lt;context&gt;/jcd:judicialCourtDecision[1]/jcd:information[1]/courtcase:history[1]/courtcase:historySummary[1]/courtcase:historyItem[1]/citation:citation[1]/citation:content[1]/citation:contentSpan[1]/@citation:contentSpanRole&lt;/context&gt;
  &lt;message&gt;Unexpected Attribute:  name()=citation:contentSpanRole encountered in source document!  Attribute value is=hierarchyReference&lt;/message&gt;
&lt;/exception&gt;
			</xd:pre>
      </xd:desc>
   </xd:doc>
   <xsl:template match="* | @*"><!--  matching this pattern is an error  -->
      <xsl:param name="errorStatus" tunnel="yes" as="xs:string" select=" 'W' "/>
      <!--  default is W for warning.  If 'E' is passed, then some systems will ensure the target document is not passed along in the pipeline  -->
      <xsl:param name="targetPlatform"
                 tunnel="yes"
                 as="xs:string"
                 select=" 'ROCKET' "/>
      <!--  default is ROCKET, which outputs exception element via xsl:message.  fabPipeline outputs to target document  -->
      <xsl:param name="documentLNI"
                 tunnel="yes"
                 as="xs:string"
                 select=" 'UNKNOWN' "/>
      <!--  Used for fabPipeline only, the LNI of the document since filename is not available  -->
      <!--  calling the elementOrAttributeCopy named template to copy the node as is   -->
      <!--    if element node, wrap withinin error element  -->
      <!--    if attribute node, also output an error attribute  -->
      <xsl:choose>
         <xsl:when test=" $outputUnmatchedElements = ( 'ROCKET' , 'ICCE' ) or $targetPlatform = 'fabPipeline' ">
            <xsl:call-template name="outputErrorMessage">
               <xsl:with-param name="messageText"
                               as="xs:string"
                               select="concat( if (self::*) then          'Unexpected Element:  name()='  (:  first item is either element (self::* = true()) or attribute (otherwise)  :)         else           'Unexpected Attribute:  name()=' ,        name() ,             (:  second item is element or attribute name  :)        ' encountered in source document!' ,   (:  third item  :)        if (self::* and text()) then       (:  last item is empty string if element and no text() nodes, or if attribute and no value.  :)          concat( '  Text value is=' , string-join( text() , '' ) ) (: Otherwise provide @ value or text() value  :)         else          if (not(self::*) and . != '') then            concat( '  Attribute value is=' , . )           else '' )"/>
               <xsl:with-param name="errorType" as="xs:string" select=" $targetPlatform "/>
               <!--   ROCKET or fabPipeline error type  -->
               <xsl:with-param name="errorCode"
                               as="xs:string"
                               select=" if (self::*) then '401' else '402' "/>
               <!--   401 if element node, 402 if attribute node  -->
               <xsl:with-param name="context" as="xs:string">
                  <xsl:call-template name="generateXPath"/>
               </xsl:with-param>
               <xsl:with-param name="status" as="xs:string" select=" $errorStatus "/>
               <xsl:with-param name="documentLNI" as="xs:string" select=" $documentLNI "/>
               <!--   fabPipeline only  -->
            </xsl:call-template>
         </xsl:when>
         <xsl:when test=" $outputUnmatchedElements = 'noErrors' ">
            <xsl:sequence select="."/>
         </xsl:when>
         <xsl:when test="not($outputErrors)"/>
         <xsl:when test="self::*"><!--  self:* is false for attribute nodes  -->
            <error:error>
               <xsl:sequence select="."/>
            </error:error>
            <xsl:call-template name="outputErrorMessage">
               <xsl:with-param name="messageText"
                               as="xs:string"
                               select="concat( 'Unexpected Element:  ' , name() , ' encountered in source document!' )"/>
            </xsl:call-template>
         </xsl:when>
         <xsl:otherwise><!--  must be an attribute  -->
            <xsl:attribute name="error:error" select="'error:  unexpected attribute!'"/>
            <xsl:sequence select="."/>
            <xsl:call-template name="outputErrorMessage">
               <xsl:with-param name="messageText"
                               as="xs:string"
                               select="concat( 'Unexpected Attribute:  ' , name(..) , '/@' , name() , ' (= ' , . , ') encountered in source document!' )"/>
            </xsl:call-template>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
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
	</configurationManagementInformation-->   <!--  global custom functions  -->   <xd:doc>
      <xd:desc>
         <xd:p>
            <xd:b>Instructions</xd:b>
         </xd:p>
         <xd:p>Global functions apply primarily to XSL style conversions but would include such items as error messaging, etc.</xd:p>
      </xd:desc>
   </xd:doc>
   <!--  named template rules START  -->
   <!--  error detected; throw a message to the output START  -->
   <xd:doc>
      <xd:desc>
         <xd:p>
            <xd:b>outputErrorMessage Named Template</xd:b>
         </xd:p>
         <xd:p>This named template is called whenever the XSLT needs to throw an error or warning.  It will use the xsl:message instruction to generate an error message.  If $errorType is set to 'ROCKET' (the default), then the error message will be in the form of an exception element.</xd:p>
         <xd:p>Example exception handling output:</xd:p>
         <xd:pre>
&lt;exception timestamp="2017-01-04 14:54:22"&gt;
  &lt;filename&gt;test.xml&lt;/filename&gt;
  &lt;status&gt;W&lt;/status&gt;
  &lt;code&gt;402&lt;/code&gt;
  &lt;context&gt;/jcd:judicialCourtDecision[1]/jcd:information[1]/courtcase:history[1]/courtcase:historySummary[1]/courtcase:historyItem[1]/citation:citation[1]/citation:content[1]/citation:contentSpan[1]/@citation:contentSpanRole&lt;/context&gt;
  &lt;message&gt;Unexpected Attribute:  name()=citation:contentSpanRole encountered in source document!  Attribute value is=hierarchyReference&lt;/message&gt;
&lt;/exception&gt;
				</xd:pre>
      </xd:desc>
   </xd:doc>
   <xsl:template name="outputErrorMessage">
      <xsl:param name="CurrentDBD"
                 required="no"
                 as="xs:string"
                 select=" 'notApplicable' "/>
      <xsl:param name="messageText" as="xs:string*" select=" 'Error!' "/>
      <!--  text passed in by caller  -->
      <xsl:param name="errorType" as="xs:string*" select=" 'ROCKET' "/>
      <xsl:param name="errorCode" as="xs:string*" select=" '401' "/>
      <xsl:param name="context" as="xs:string*" select=" '/unknown' "/>
      <xsl:param name="status" as="xs:string*" select=" 'W' "/>
      <xsl:param name="documentLNI" as="xs:string*" select=" 'UNKNOWN' "/>
      <!--   fabPipeline only  -->
      <xsl:choose>
         <xsl:when test=" $errorType = 'debug' "><!-- Example of how debug mode might be used; maybe auto create something like these lines after each template rule when building the monolithic and a certain flag is passed? 
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
         <xsl:when test=" upper-case($errorType) = 'ICCE' or upper-case($errorType)='ROCKET' or $errorType = 'fabPipeline' ">
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
            <xsl:if test=" $errorType = 'fabPipeline' ">
               <xsl:choose>
                  <xsl:when test=" $errorCode = '402' ">
                     <xsl:attribute name="lnf:exception"
                                    namespace="urn:x-lexisnexis:conversion:global:functions:1">
                        <xsl:value-of select="$messageText"/>
                        <xsl:text>; sourceXPath = </xsl:text>
                        <xsl:value-of select="$context"/>
                     </xsl:attribute>
                  </xsl:when>
                  <xsl:otherwise>
                     <xsl:element name="exception"
                                  inherit-namespaces="no"
                                  namespace="urn:x-lexisnexis:conversion:global:functions:1">
                        <xsl:attribute name="timestamp" select=" $dateTime "/>
                        <xsl:element name="LNI"
                                     inherit-namespaces="no"
                                     namespace="urn:x-lexisnexis:conversion:global:functions:1">
                           <xsl:sequence select="$documentLNI"/>
                        </xsl:element>
                        <xsl:element name="bundle"
                                     inherit-namespaces="no"
                                     namespace="urn:x-lexisnexis:conversion:global:functions:1">
                           <xsl:sequence select="$bundleID"/>
                        </xsl:element>
                        <xsl:element name="code"
                                     inherit-namespaces="no"
                                     namespace="urn:x-lexisnexis:conversion:global:functions:1">
                           <xsl:sequence select="$errorCode"/>
                        </xsl:element>
                        <xsl:element name="sourceXPath"
                                     inherit-namespaces="no"
                                     namespace="urn:x-lexisnexis:conversion:global:functions:1">
                           <xsl:sequence select="$context"/>
                        </xsl:element>
                        <xsl:element name="message"
                                     inherit-namespaces="no"
                                     namespace="urn:x-lexisnexis:conversion:global:functions:1">
                           <xsl:sequence select="$messageText"/>
                        </xsl:element>
                     </xsl:element>
                  </xsl:otherwise>
               </xsl:choose>
            </xsl:if>
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
               <xsl:value-of select="$messageText"/>
               <!--  just output the message text to the output  -->
               <xsl:value-of select="$context"/>
            </xsl:message>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <!--  error detected; throw a message to the output END  -->   <!--  generate and output the source XPath START  -->   <!--  @SBy:  2016-09-20  ROM 1218 IRM Strategic:  updated to allow optionally outputting without brackets (predicates indicating sibling order)  -->   <xd:doc>
      <xd:desc>
         <xd:p>
            <xd:b>generateXPath Named Template</xd:b>
         </xd:p>
         <xd:p>This named template is used to create the XPath leading to the current node in the form of a string, such as "/jcd:judicialCourtDecision[1]/jcd:information[1]/courtcase:history[1]/courtcase:historySummary[1]/courtcase:historyItem[1]/citation:citation[1]/citation:content[1]/citation:contentSpan[1]/@citation:contentSpanRole".  Parameter $includeBrackets can be set to false() to suppress the predicate output if desired.</xd:p>
      </xd:desc>
   </xd:doc>
   <xsl:template name="generateXPath" as="xs:string">
      <xsl:param name="includeBrackets" as="xs:boolean" select="true()"/>
      <xsl:sequence select=" string-join(  (:  use string join function to insert the '/' chars of the XPath  :)      ( '' ,            (:  Build a sequence of strings.  First item is empty to ensure XPath starts with a '/'  :)       ( for $i in ancestor-or-self::* return   (:  Walk the ancestor-or-self:: axis and return the name of each element followed by position in brackets  :)         concat( name($i) ,   (:  next item is the element name followed by position in brackets  :)            if ($includeBrackets) then concat(             '[' ,     (:  open bracket, then count preceding sibling elements of same name and add 1; convert to string  :)             string( count($i/preceding-sibling::*[name(.) = name($i)]) + 1) ,              ']'  )   (:  close bracket. This for loop returns sequence of strings in form of 'element-name[#]'  :)            else             '' )       ) ,           (:  Last item in sequence is to add the attribute name if necessary, since  :)       if (self::*) then ()     (:  ancestor-or-self::* won't include 'self' if this is an attribute  :)        else concat( '@' , name() )       ) ,      '/' ) "/>
      <!--   Use '/' as the string separator since this is an XPath  -->
   </xsl:template>
   <!--  generate and output the source XPath END  -->   <!--  combined nested trees START  -->   <xd:doc>
      <xd:desc>
         <xd:p>
            <xd:b>combineTrees Named Template</xd:b>
         </xd:p>
         <xd:p>This named template is used to combine the content from following sibling elements of the same base name into a single element, such as lnv:TEXT-1, lnv:TEXT-2, etc., into a single lnv:TEXT-1 element, when these elements contain nested hierarchical content requiring the hierarchies to be knitted back together.  It assumes the sibling element descendants are structured the same way, and that the nodes can be combined at specific levels identifed by $combiningElements parameter.</xd:p>
         <xd:p>The base element name (such as "lnv:TEXT-") must be passed as parameter $baseEleName, and the sibling nodes passed as $nodesToCombine.</xd:p>
         <xd:p>Recursion is used to process through all the siblings provided in $nodesToCombine.</xd:p>
      </xd:desc>
   </xd:doc>
   <xsl:template name="combineTrees" as="element()"><!--  combines the content from following sibling elements of the same base name into a single element (into the "-1" element of same name)  --><!--  assumes the sibling element descendants are structured the same way, and that the nodes can be combined at specific levels identifed by $combiningElements parameter  -->
      <xsl:param name="baseEleName" tunnel="yes" as="xs:string"/>
      <!--  base element name before the digit, such as 'lnv:TEXT-'  -->
      <xsl:param name="nodesToCombine" as="document-node()"/>
      <!--  all of the, or the remaing, sibling segments to be combined under one element  -->
      <xsl:param name="combiningElements" as="xs:string*"/>
      <!--  sequence of element names (strings) where node combining can occur  -->
      <xsl:variable name="updatedTree" as="element()"><!--  combine first remaining segment with second remaining segment and save in this variable  -->
         <xsl:apply-templates select="$nodesToCombine/*/*[1]" mode="combineTrees"><!--  perform combinging of nodes via the combineTrees mode   -->
            <xsl:with-param name="matchingXPath" tunnel="yes" as="xs:string"><!--  node combining will occur when current XPath matches this XPath   --><!--  the matching XPath is determined by first finding the last node in the document that contains text.  Then, start moving up the ancestor-or-self axis until arrive at one of the elements identified in $combiningElements   -->
               <xsl:for-each select="$nodesToCombine/*/*[1]/descendant-or-self::*[text()][last()]/ancestor-or-self::*[ name() = $combiningElements ][1]">
                  <xsl:call-template name="generateXPath"/>
                  <!--  utility that returnes the XPath of the current node   -->
               </xsl:for-each>
            </xsl:with-param>
            <xsl:with-param name="baseEleName"
                            tunnel="yes"
                            as="xs:string"
                            select="$baseEleName"/>
            <!--  pass on baseEleName  -->
            <xsl:with-param name="currentEleName"
                            tunnel="yes"
                            as="xs:string"
                            select=" name( $nodesToCombine/*/*[1] ) "/>
            <!--  pass on the name of the first remaining segment  -->
            <xsl:with-param name="nextEleName"
                            tunnel="yes"
                            as="xs:string"
                            select=" name( $nodesToCombine/*/*[2] ) "/>
            <!--  pass on the name of the next remaining segment  -->
         </xsl:apply-templates>
      </xsl:variable>
      <xsl:choose>
         <xsl:when test="$nodesToCombine/*/*[3]"><!--  if there are 3 or more siblings, then need to recurse   -->
            <xsl:call-template name="combineTrees">
               <xsl:with-param name="baseEleName"
                               tunnel="yes"
                               as="xs:string"
                               select="$baseEleName"/>
               <!--  pass on baseEleName  -->
               <xsl:with-param name="nodesToCombine" as="document-node()"><!--  update nodesToContinue to first be the $updatedTree followed by all other sibling after the 2nd one  -->
                  <xsl:document><!--  Forcing nodesToCombine element below to be in the empty namespace.  This is necessary because even though there is no default namespace declared in this XSLT file, 
											there usually is when building the monolithic deliverable stylesheet (and it is set to the base: namespace URI).  In that scenario, when transforming with the monolithic XSLT, 
											this element would be in the base: namespace, and will cause Saxon to throw various errors since the non-namespaced children being combined below are in the empty namespace.  
											Saxon is require to output all the namespace nodes that are in scope for each element, and to have a default namespace of base: copied for an element that is in no namespace is an error.  -->
                     <nodesToCombine xmlns="">
                        <xsl:copy-of select="$updatedTree"/>
                        <!--  first the $updatedTree containing the newly combined siblings  -->
                        <xsl:copy-of select="$nodesToCombine/*/*[ position() gt 2 ]"/>
                        <!--  remaining siblings to be combined  -->
                     </nodesToCombine>
                  </xsl:document>
               </xsl:with-param>
               <xsl:with-param name="combiningElements"
                               as="xs:string*"
                               select="$combiningElements"/>
               <!--  pass on combiningElements  -->
            </xsl:call-template>
         </xsl:when>
         <xsl:otherwise>
            <xsl:copy-of select="$updatedTree"/>
            <!--  all siblings combined, just output the newly combined tree   -->
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <!--  combined nested trees END  -->   <!--  combineSiblingsOfSameName START  -->   <xd:doc>
      <xd:desc>
         <xd:p>
            <xd:b>combineSiblingsOfSameName Named Template</xd:b>
         </xd:p>
         <xd:p>This named template is used to combine immediate siblings of the same name into a single target element (instead of multiple target elements of same name).</xd:p>
         <xd:p>Within the template of the first sibling, create the output element and apply-templates on child nodes of that element first.  Then use for-each to change context to the next sibling and call this named template.</xd:p>
         <xd:p>Be sure to suppress elements of the same name that have preceding siblings with that name (elementXYX[ preceding-sibling::node()[1][ self::elementXYX ] ]).</xd:p>
      </xd:desc>
   </xd:doc>
   <xsl:template name="combineSiblingsOfSameName" as="item()*"><!--  this named template assumes the first sibling's attribute and nodes were already processed, so first call to this rule is the second immediate sibling   --><!--  capture name of current element   -->
      <xsl:variable name="currentEleName" as="xs:string" select="name( . )"/>
      <!--  process child nodes; note attribute nodes are skipped in deference to the first sibling's attributes   -->
      <xsl:apply-templates select="node()"/>
      <!--  recursively process the next immediately following sibling node if it has the same name   -->
      <xsl:for-each select="following-sibling::node()[1][ name() = $currentEleName ]">
         <xsl:call-template name="combineSiblingsOfSameName"/>
      </xsl:for-each>
   </xsl:template>
   <!--  combineSiblingsOfSameName END  -->   <!--  named template rules END  -->   <!--  modal template rules START  -->   <!--  combined nested trees mode START  -->   <xd:doc>
      <xd:desc>
         <xd:p>
            <xd:b>combineTrees Processing Mode</xd:b>
         </xd:p>
         <xd:p>mode="combineTrees" is used in conjunction with the combineTrees named template to combine multiple siblings into a single element (see description for "combineTrees Named Template").</xd:p>
         <xd:p>For most nodes in the tree, this mode will simply copy itself to the output destination (equivalent to the identity template).</xd:p>
         <xd:p>However, if the current node is a location where a pair of siblng structures can be combined, the combining is done as part of this mode and processing continues.</xd:p>
      </xd:desc>
   </xd:doc>
   <xsl:template match="node()" mode="combineTrees"><!--  the combineTree mode is used to copy nodes at the same location in a sibling tree as following siblings in current location  -->
      <xsl:param name="matchingXPath" tunnel="yes" as="xs:string"/>
      <!--  the path to the last node containing text in the tree to be combined into  -->
      <xsl:param name="baseEleName" tunnel="yes" as="xs:string"/>
      <!--  base element name before the digit, such as 'lnv:TEXT-'  -->
      <xsl:param name="currentEleName" tunnel="yes" as="xs:string"/>
      <!--  element name of the base of the tree to be combined into  -->
      <xsl:param name="nextEleName" tunnel="yes" as="xs:string"/>
      <!--  element name of the base of the tree to be combined from  -->
      <xsl:variable name="currentXPath" as="xs:string"><!--  determine XPath of current node for later use  -->
         <xsl:call-template name="generateXPath"/>
      </xsl:variable>
      <xsl:copy><!--  copy over current node and attributes to the combined tree  -->
         <xsl:copy-of select="@*"/>
         <xsl:apply-templates select="node()" mode="combineTrees"/>
         <!--  process child nodes to be output first, then determine if nodes from other tree need to be copied over as following siblings  -->
         <xsl:if test="$matchingXPath = $currentXPath"><!--  if processing the last text-containing node in the primary tree, then need to copy over remaining nodes in following tree as siblings  -->
            <xsl:variable name="currentXPathNoBrackets" as="xs:string"><!--  create and save version of current XPath without the square brackets (predicates)  -->
               <xsl:call-template name="generateXPath">
                  <xsl:with-param name="includeBrackets" as="xs:boolean" select="false()"/>
               </xsl:call-template>
            </xsl:variable>
            <xsl:for-each select="/*/*[ name() = $nextEleName ]/descendant-or-self::*[text()][1]"><!--  now change context over to the first text-containing node in the sibling tree (the one with base element name of $nextEleName)  -->
               <xsl:for-each select="ancestor-or-self::*"><!--  start up the ancestor-or-self axis until XPaths match.  Note this should end up at one of the elements identified in $combiningElements  -->
                  <xsl:variable name="altTreeXPath" as="xs:string"><!--  capture the XPath to compare against current XPath; again no predicates  -->
                     <xsl:call-template name="generateXPath">
                        <xsl:with-param name="includeBrackets" as="xs:boolean" select="false()"/>
                     </xsl:call-template>
                  </xsl:variable>
                  <!--  since the base element names are different, need to only compare strings after those element names  -->
                  <xsl:if test="substring-after( $altTreeXPath , $nextEleName ) = substring-after( $currentXPathNoBrackets , $currentEleName )">
                     <xsl:copy-of select="*"/>
                     <!--  if the XPaths match, copy over the children.  Note current output destination is the same spot in primary tree   -->
                  </xsl:if>
               </xsl:for-each>
            </xsl:for-each>
         </xsl:if>
      </xsl:copy>
      <!--  now need to check if there are nodes in sibling tree that need to get copied *after* current node.  Only check when XPath is the same, or starts with, the matching XPath (leading to last text-containing node in primary tree)  -->
      <xsl:if test="starts-with( $matchingXPath , $currentXPath )">
         <xsl:variable name="currentXPathNoBrackets" as="xs:string"><!--  again, create and save version of current XPath without the square brackets (predicates)  -->
            <xsl:call-template name="generateXPath">
               <xsl:with-param name="includeBrackets" as="xs:boolean" select="false()"/>
            </xsl:call-template>
         </xsl:variable>
         <xsl:for-each select="/*/*[ name() = $nextEleName ]/descendant-or-self::*[text()][1]"><!--  now change context just like before.  The processing below is same, except the copy-of will grab different nodes  -->
            <xsl:for-each select="ancestor-or-self::*">
               <xsl:variable name="altTreeXPath" as="xs:string">
                  <xsl:call-template name="generateXPath">
                     <xsl:with-param name="includeBrackets" as="xs:boolean" select="false()"/>
                  </xsl:call-template>
               </xsl:variable>
               <xsl:if test="substring-after( $altTreeXPath , $nextEleName ) = substring-after( $currentXPathNoBrackets , $currentEleName )"><!--  if the XPaths match, need to copy over the following siblings of the same node as in the output destination.  Just up to parent and copy child::* as long as not first one.  -->
                  <xsl:copy-of select="../*[position() != 1][not( starts-with( name() , $baseEleName ) )]"/>
               </xsl:if>
            </xsl:for-each>
         </xsl:for-each>
      </xsl:if>
   </xsl:template>
   <!--  combined nested trees mode END  -->   <!--  default fixSourceNesting mode START  -->   <xd:doc>
      <xd:desc>
         <xd:p>
            <xd:b>fixSourceNesting Processing Mode (default rule)</xd:b>
         </xd:p>
         <xd:p>mode="fixSourceNesting" for any node matching this rule will simply copy itself to the output destination (equivalent to the identity template).</xd:p>
         <xd:p>It does trap elements in the lndocmeta <xd:i class="xmlSource">source</xd:i> namespace and ensures they remain in the source namespace after copying.</xd:p>
      </xd:desc>
   </xd:doc>
   <xsl:template match="node()" mode="fixSourceNesting"><!--  the fixSourceNesting mode can be used to resolve issues such as p/lnvxe:text/lnvxe:note when, in the target, note and p are siblings  --><!--  default for this mode is identity template, so first copy over current node and attributes  -->
      <xsl:choose>
         <xsl:when test=" not( self::* ) or ( contains( name() , ':' ) and not( substring-before( name() , ':' ) = 'lndocmeta' ) ) ">
            <xsl:copy>
               <xsl:copy-of select="@*"/>
               <xsl:apply-templates select="node()" mode="fixSourceNesting"/>
               <!--  process child nodes  -->
            </xsl:copy>
         </xsl:when>
         <xsl:otherwise>
            <xsl:variable name="nsURI"
                          as="xs:string"
                          select=" if ( substring-before( name() , ':' ) = 'lndocmeta' ) then 'http://www.lexis-nexis.com/lndocmeta' else '' "/>
            <xsl:variable name="eleName"
                          as="xs:string"
                          select=" if ( substring-before( name() , ':' ) = 'lndocmeta' ) then local-name() else name() "/>
            <xsl:element name="{name()}" namespace="{$nsURI}">
               <xsl:copy-of select="@*"/>
               <xsl:apply-templates select="node()" mode="fixSourceNesting"/>
               <!--  process child nodes  -->
            </xsl:element>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <!--  default fixSourceNesting mode END  -->   <!--  modal template rules END  -->   <!--  functions START  -->   <!--  lnf:trim Function START  -->   <xd:doc>
      <xd:desc>
         <xd:p>
            <xd:b>lnf:trim Function</xd:b>
         </xd:p>
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
         <xd:p>
            <xd:b>lnf:replaceString Function</xd:b>
         </xd:p>
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
         <xd:p>Call using &lt;xsl:sequence select="string-join(for $x in tokenize($text,'\s') return lnf:titleCase($x),' ')"/&gt;</xd:p>
      </xd:desc>
   </xd:doc>
   <!-- function copied from http://p2p.wrox.com/xslt/80938-title-case-string.html -->
   <xsl:function name="lnf:titleCase">
      <xsl:param name="s" as="xs:string"/>
      <xsl:choose><!-- when lower case string is 'and', 'or' just output  -->
         <xsl:when test="lower-case($s)=('and','or')">
            <xsl:value-of select="lower-case($s)"/>
         </xsl:when>
         <!-- when the string is in upper case the below would originally pass through in all upper case; commenting -->
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
      <xsl:param name="inputString" as="xs:string"/>
      <!--  input string of one or more words  -->
      <xsl:param name="keepAllLower" as="xs:string*"/>
      <!--  string sequence of words to keep as lowercase, such as the, or, and, for, of  -->
      <xsl:variable name="outputSequence" as="xs:string*">
         <xsl:for-each select="tokenize( $inputString , '\s' )">
            <xsl:choose><!-- when lower case string is any one of $keepAllLower, just output lower-case of it  -->
               <xsl:when test="lower-case( . ) = $keepAllLower">
                  <xsl:value-of select="lower-case( . )"/>
               </xsl:when>
               <xsl:when test="contains( . , '-' )">
                  <xsl:value-of select="lnf:genStringToTitleCase( . , $keepAllLower , '-' )"/>
               </xsl:when>
               <xsl:otherwise>
                  <xsl:value-of select="concat( upper-case( substring( . , 1 , 1 ) ) , lower-case( substring( . , 2 ) ) )"/>
               </xsl:otherwise>
            </xsl:choose>
         </xsl:for-each>
      </xsl:variable>
      <xsl:sequence select="string-join( $outputSequence , ' ' )"/>
      <!--  string join the sequence with a space as the separator  -->
   </xsl:function>
   <!-- stringToTitleCase END -->
   <!-- genStringToTitleCase START -->
   <xsl:function name="lnf:genStringToTitleCase" as="xs:string">
      <xsl:param name="inputString" as="xs:string"/>
      <!--  input string of one or more words  -->
      <xsl:param name="keepAllLower" as="xs:string*"/>
      <!--  string sequence of words to keep as lowercase, such as the, or, and, for, of  -->
      <xsl:param name="stringSeparator" as="xs:string"/>
      <!--  character to break up/tokenize string, normally a space  -->
      <xsl:variable name="outputSequence" as="xs:string*">
         <xsl:for-each select="tokenize( $inputString , $stringSeparator )">
            <xsl:choose><!-- when lower case string is any one of $keepAllLower, just output lower-case of it  -->
               <xsl:when test="lower-case( . ) = $keepAllLower">
                  <xsl:value-of select="lower-case( . )"/>
               </xsl:when>
               <xsl:otherwise>
                  <xsl:value-of select="concat( upper-case( substring( . , 1 , 1 ) ) , lower-case( substring( . , 2 ) ) )"/>
               </xsl:otherwise>
            </xsl:choose>
         </xsl:for-each>
      </xsl:variable>
      <xsl:sequence select="string-join( $outputSequence , $stringSeparator )"/>
      <!--  string join the sequence with the separator  -->
   </xsl:function>
   <!-- genStringToTitleCase END -->
   <!--  removeSequenceOfStrings START  -->
   <xd:doc>
      <xd:desc>
         <xd:p>
            <xd:b>lnf:removeSequenceOfStrings Function</xd:b>
         </xd:p>
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
         <xd:p>
            <xd:b>lnf:substringBeforeLast Function</xd:b>
         </xd:p>
         <xd:p>This function will return that part of an input string that appears before the final occurence of an input substring.</xd:p>
      </xd:desc>
   </xd:doc>
   <xsl:function name="lnf:substringBeforeLast" as="xs:string">
      <xsl:param name="inputString" as="xs:string"/>
      <xsl:param name="searchString" as="xs:string"/>
      <xsl:variable name="remString"
                    as="xs:string"
                    select="substring-after( $inputString , $searchString )"/>
      <xsl:sequence select="concat(              substring-before( $inputString , $searchString ) ,              if (contains( $remString , $searchString )) then               concat( $searchString ,                lnf:substringBeforeLast( $remString , $searchString )              )              else '' )"/>
   </xsl:function>
   <!--  substringBeforeLast END  -->
   <!--  @SBy:  2016-11-04  ROM 1218 IRM Strategic:  save the DOC-ID string logic for use in ref:cross-reference  -->
   <!--  createDocIdString START  -->
   <xd:doc>
      <xd:desc>
         <xd:p>
            <xd:b>lnf:createDocIdString Function</xd:b>
         </xd:p>
         <xd:p>This function will create the correct string for DOC-ID style links for certain conversions.  For the Internal Revenue Manual as an example, where $legacy-filename = 'IRSMNL', and input string is 'IRM 3.10.72', the output string will be 'IRSMNL-3_10_72'.</xd:p>
      </xd:desc>
   </xd:doc>
   <xsl:function name="lnf:createDocIdString" as="xs:string">
      <xsl:param name="inputElement" as="element()"/>
      <xsl:variable name="inputString"
                    as="xs:string"
                    select="if ($inputElement/source_lnci:cite/@normcite != '') then                         $inputElement/source_lnci:cite/@normcite                        else                        if (starts-with( string( $inputElement ) , 'IRM ' )) then                         substring-after( string( $inputElement ) , 'IRM ' )                        else                         string( $inputElement )"/>
      <xsl:variable name="badCharacters"
                    as="xs:string"
                    select="translate( $inputString , $acceptableID_Chars , '' )"/>
      <xsl:variable name="normString"
                    select="translate( $inputString , $badCharacters , ' ' )"/>
      <xsl:variable name="outputString"
                    select="translate( normalize-space( $normString ) , ' .' , '__' )"/>
      <xsl:sequence select="concat( $legacy-filename , '-' , $outputString )"/>
   </xsl:function>
   <!--  createDocIdString END  -->
   <!--  @SBy:  2017-05-25  ROCKET ReWrites:  function to return a string that is a valid value for attributes of type ID  -->
   <!--  createValidIDstring START  -->
   <xd:doc>
      <xd:desc>
         <xd:p>
            <xd:b>lnf:createValidIDstring Function</xd:b>
         </xd:p>
         <xd:p>Given an arbitrary input string, this function will return a string that is valid for attribute values of type ID. </xd:p>
      </xd:desc>
   </xd:doc>
   <xsl:function name="lnf:createValidIDstring" as="xs:string">
      <xsl:param name="inputString" as="xs:string"/>
      <xsl:variable name="badCharacters"
                    as="xs:string"
                    select="translate( $inputString , $acceptableID_Chars , '' )"/>
      <xsl:variable name="normString"
                    select="translate( $inputString , $badCharacters , '' )"/>
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
         <xd:p>
            <xd:b>lnf:siblingBlockGrouping Function</xd:b>
         </xd:p>
         <xd:p>This function will sibling recursion type grouping for situations such as handling children of "p" in the source converting to p/text - p/blockquote - p/text etc. in the target; for that scenario, the $groupingContainer = 'text' (the text element), $blockElements = ('blockquote', 'table', etc), and $siblingNodes would contain the set of siblings that need to be split into groups of $groupingContainer elements broken up by $blockElements.</xd:p>
      </xd:desc>
   </xd:doc>
   <xsl:function name="lnf:siblingBlockGrouping" as="item()*">
      <xsl:param name="groupingContainer" as="xs:string"/>
      <!--  name of container element to group consecutive siblings under (typically the "text" element)   -->
      <xsl:param name="blockElements" as="xs:string*"/>
      <!--  list of element names (can be empty string) that cannot be grouped under $groupingContainer (typically table, blockquote, etc)   -->
      <xsl:param name="siblingNodes" as="element()"/>
      <!--  (remaining) sibling nodes (typically text() nodes and elements, can be instances of $groupingContainer too) to perform grouping on, all under a single element parent  -->
      <!--  save name of element parent  -->
      <xsl:variable name="siblingNodesParent"
                    as="xs:string"
                    select="name($siblingNodes)"/>
      <xsl:for-each select="$siblingNodes/node()[1]">
         <xsl:choose><!--  if the first node is not an element, OR it is an element but there are no blockElements and it's not groupingContainer, or it's an element not in blockElements and it's not groupingContainer; then create container and move on   -->
            <xsl:when test=" not(self::*) or ( $blockElements = '' and not( name() = $groupingContainer ) ) or not( name() = $blockElements or name() = $groupingContainer ) ">
               <xsl:element name="{$groupingContainer}" namespace=""><!--  create container   -->
                  <xsl:choose>
                     <xsl:when test=" $blockElements = '' or not( following-sibling::node()[name() = $blockElements or name() = $groupingContainer] ) "><!--  no grouping required; just copy self and all following siblings to output, and no recurse   -->
                        <xsl:copy-of select="."/>
                        <xsl:copy-of select="following-sibling::node()"/>
                     </xsl:when>
                     <xsl:otherwise>
                        <xsl:for-each select="following-sibling::node()[name() = $blockElements or name() = $groupingContainer][1]"><!--  grouping required; change context to the first blocker (either a group container or block element) and then copy over alll preceding siblings; close container   -->
                           <xsl:copy-of select="preceding-sibling::node()"/>
                        </xsl:for-each>
                     </xsl:otherwise>
                  </xsl:choose>
               </xsl:element>
               <!--  if grouping was required in prior section; change context to the first blocker again to copy over the blocker, and if necessary initiate recursive call   -->
               <xsl:if test=" not( $blockElements = '' or not( following-sibling::node()[name() = $blockElements or name() = $groupingContainer] ) ) ">
                  <xsl:for-each select="following-sibling::node()[name() = $blockElements or name() = $groupingContainer][1]"><!--  copy over the blocker or container   -->
                     <xsl:copy-of select="."/>
                     <!--  if there are following siblings, need to recurse   -->
                     <xsl:if test="following-sibling::node()"><!--  update sibling list to be only the remaining following siblings   -->
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
            <xsl:otherwise><!--  since we are a blocker or container, copy over myself   -->
               <xsl:copy-of select="."/>
               <!--  if there are following siblings, need to recurse   -->
               <xsl:if test="following-sibling::node()"><!--  update sibling list to be only the remaining following siblings   -->
                  <xsl:variable name="siblingNodesUpdated" as="element()"><!-- JD: 2017-04-04: added namespace="" and copy-namespaces="no" after 
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
         <xd:p>
            <xd:b>lnf:siblingToParentGrouping Function</xd:b>
         </xd:p>
         <xd:p>This function will pull child elements up to be intermingled with the parent, such as handling children lnvxe:note elements of "p" in the source converting to p then lnvxe:note then p then lnvxe:note etc.in the target; for that scenario, the $childElements = 'lnvxe:note' (the note element), $currentParent would contain the parent that had one or more $childElements elements needing to be pulled up to the parent level.</xd:p>
      </xd:desc>
   </xd:doc>
   <xsl:function name="lnf:siblingToParentGrouping" as="item()*">
      <xsl:param name="childElements" as="xs:string*"/>
      <!--  list of element names (such as lnvxe:note) that need to be pulled up and mingled with the parent   -->
      <xsl:param name="currentParent" as="element()"/>
      <!--  the current single parent that contains one or more nodes including $childElements  -->
      <!--  save name of element parent  -->
      <xsl:variable name="currentParentName"
                    as="xs:string"
                    select="name($currentParent)"/>
      <xsl:for-each select="$currentParent/node()[1]">
         <xsl:choose><!--  if the first node is not an element, OR it is an element but there are no childElements, or it's an element not in childElements; then create currentParent and move on   -->
            <xsl:when test=" not(self::*) or ( $childElements = '' ) or not( name() = $childElements ) ">
               <xsl:choose>
                  <xsl:when test=" contains( $currentParentName , ':' ) ">
                     <xsl:element name="{$currentParentName}"><!--  create container   -->
                        <xsl:choose>
                           <xsl:when test=" $childElements = '' or not( following-sibling::node()[name() = $childElements] ) "><!--  no grouping required; just copy self and all following siblings to output, and no recurse   -->
                              <xsl:copy-of select="." copy-namespaces="no"/>
                              <xsl:copy-of select="following-sibling::node()" copy-namespaces="no"/>
                           </xsl:when>
                           <xsl:otherwise>
                              <xsl:for-each select="following-sibling::node()[name() = $childElements][1]"><!--  grouping required; change context to the first childElements element and then copy over alll preceding siblings; close currentParent   -->
                                 <xsl:copy-of select="preceding-sibling::node()" copy-namespaces="no"/>
                              </xsl:for-each>
                           </xsl:otherwise>
                        </xsl:choose>
                     </xsl:element>
                  </xsl:when>
                  <xsl:otherwise>
                     <xsl:element name="{$currentParentName}" namespace=""><!--  create container   -->
                        <xsl:choose>
                           <xsl:when test=" $childElements = '' or not( following-sibling::node()[name() = $childElements] ) "><!--  no grouping required; just copy self and all following siblings to output, and no recurse   -->
                              <xsl:copy-of select="." copy-namespaces="no"/>
                              <xsl:copy-of select="following-sibling::node()" copy-namespaces="no"/>
                           </xsl:when>
                           <xsl:otherwise>
                              <xsl:for-each select="following-sibling::node()[name() = $childElements][1]"><!--  grouping required; change context to the first childElements element and then copy over alll preceding siblings; close currentParent   -->
                                 <xsl:copy-of select="preceding-sibling::node()" copy-namespaces="no"/>
                              </xsl:for-each>
                           </xsl:otherwise>
                        </xsl:choose>
                     </xsl:element>
                  </xsl:otherwise>
               </xsl:choose>
               <!--  if grouping was required in prior section; change context to the first childElements element again to copy over the childElements element, and if necessary initiate recursive call   -->
               <xsl:if test=" not( $childElements = '' or not( following-sibling::node()[name() = $childElements] ) ) ">
                  <xsl:for-each select="following-sibling::node()[name() = $childElements][1]"><!--  copy over the childElements element   -->
                     <xsl:copy-of select="." copy-namespaces="no"/>
                     <!--  if there are following siblings, need to recurse   -->
                     <xsl:if test="following-sibling::node()"><!--  update sibling list to be only the remaining following siblings   -->
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
            <xsl:otherwise><!--  since we are a childElements element, copy over myself   -->
               <xsl:copy-of select="." copy-namespaces="no"/>
               <!--  if there are following siblings, need to recurse   -->
               <xsl:if test="following-sibling::node()"><!--  update sibling list to be only the remaining following siblings   -->
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
      <xsl:variable name="monthValueString"
                    as="xs:string"
                    select="if ($monthValue lt 10 and $monthValue gt 0) then concat( '0' , string($monthValue) ) else string($monthValue)"/>
      <!-- 20170516:  MCJ:  Added default for $yearValue as was already done for $monthValue and $dayValue. -->
      <!-- <xsl:variable name="yearValue" as="xs:integer" select="xs:integer($date/date/@year)"/> -->
      <xsl:variable name="yearValue" as="xs:integer">
         <xsl:choose>
            <xsl:when test="$date/date/@year">
               <xsl:value-of select="xs:integer($date/date/@year)"/>
            </xsl:when>
            <xsl:otherwise>0</xsl:otherwise>
         </xsl:choose>
      </xsl:variable>
      <xsl:variable name="current2digitYear"
                    as="xs:integer"
                    select="xs:integer(substring(string(current-date()),3,2))"/>
      <xsl:variable name="outputDay"
                    as="xs:boolean"
                    select="if ($dayValue gt 0 and $dayValue lt 32) then true() else false()"/>
      <xsl:variable name="outputMonth"
                    as="xs:boolean"
                    select="if ($monthValue gt 0 and $monthValue lt 13) then true() else false()"/>
      <xsl:variable name="outputYear"
                    as="xs:boolean"
                    select="if ($yearValue gt 0) then true() else false()"/>
      <xsl:variable name="dayNorm"
                    as="xs:string"
                    select="if ($dayValue lt 10) then concat( '0' , string($dayValue) ) else string($dayValue)"/>
      <xsl:variable name="yearNorm"
                    as="xs:string"
                    select="if ($yearValue lt 10) then concat( '200' , string($yearValue) ) else    if ($yearValue le $current2digitYear) then concat( '20' , string($yearValue) ) else    if ($yearValue lt 100) then concat( '19' , string($yearValue) ) else    if ($yearValue lt 1000) then concat( '0' , string($yearValue) ) else    string($yearValue)"/>
      <xsl:if test="$outputDay and $outputMonth and $outputYear">
         <xsl:attribute name="day" select="$dayValue"/>
      </xsl:if>
      <xsl:if test="$outputMonth and $outputYear">
         <xsl:attribute name="month" select="$monthValueString"/>
      </xsl:if>
      <xsl:if test="$outputYear">
         <xsl:attribute name="year" select="$yearValue"/>
      </xsl:if>
      <!-- NOTE: this is a globally-shared module, no non-global variables should be used. -->
      <!--<xsl:choose>
			<xsl:when test="$streamID='NZ11'"/>
			<xsl:otherwise>-->
      <xsl:if test="$outputDay and $outputMonth and $outputYear and $yearValue lt 10000">
         <xsl:attribute name="normdate"
                        select="concat( $yearNorm , '-' , $monthValueString , '-' , $dayNorm )"/>
      </xsl:if>
      <!--</xsl:otherwise>
		</xsl:choose>-->
   </xsl:template>
   <!-- begin translate -->
   <xsl:template name="translate"><!-- 
	this template was developed to translate French to English or English to French for Canadian alternate 
	language citation formats but can be used to translate words, phrases, or strings within a separate string.
	
	
	3 parameters need to be sent to it.
	
	"old" is a sequence of strings in the source language that need to be translated
	"new" is a sequence of strings in the target language corresponding to the strings in the source language
	The above odl and new constitute a translation dictionary of sorts.
	"string" is a string that needs to be translated from the old language to the new.
	
	e.g. translating an English citation to French:
	
	$old = ('R.S.C.' , 'Long Title' , 'Appendix' , 's.' , 'No.')
	$new = ('L.R.C.' , 'Titre intégral', 'appendice' , 'art.' , 'no' )
	$string='R.S.C. 1985, Appendix II, No. 5, s. 12'
	
	The template will replace every value of $old with the value in the corresponding position in $new, in $string,
	in the order they are placed in $old and $new. All matches are replaced.
	
	So, 
	
	for $ string='R.S.C. 1985, Appendix II, No. 5, s. 12'
	
	
	the template will output 'L.R.C. 1985, appendice II, no 5, art. 12'
	
	The order $old and $new values are placed is important because you don't want to overwrite the output of a previous replacement with another translation.  
	Never translate English-French "Enacting Clause" before translating "Form" because the French for Enacting Clause includes the string "Form" 
	which would  be translated again and become messed up.
	
	CA07 and CA08 leg:num and leg:officialnum modules can be looked at to see how this template can be called.
	-->
      <xsl:param name="string"/>
      <xsl:param name="old"/>
      <xsl:param name="new"/>
      <!-- 
			params old and new are sequences of streams, where the old string and new string value to replace it
			are in the same position in their respective sequences.
			param "string" is the string that is undergoing the replacments.
			Replacements are made in the ORDER DETERMINED by the position in old and new.
            Order can make a big difference, so make sure input param old and new order is carefully tested -->
      <!-- escape 'old' value for regex so we can use replace function 
		Many of the citation strings have characters like periods and parens which can't 
		be used unescaped in regular expressions. Escaping makes it more robust -->
      <xsl:variable name="oldRegexFormat" select="lnf:escapeForRegex($old[1])"/>
      <xsl:analyze-string select="$string" regex="{$oldRegexFormat}">
         <xsl:matching-substring>
            <xsl:value-of select="$new[1]"/>
         </xsl:matching-substring>
         <xsl:non-matching-substring>
            <xsl:choose>
               <xsl:when test="count($old) &gt; 1">
                  <xsl:call-template name="translate">
                     <xsl:with-param name="string" select="."/>
                     <xsl:with-param name="old" select="$old[position() &gt; 1]"/>
                     <xsl:with-param name="new" select="$new[position() &gt; 1]"/>
                  </xsl:call-template>
               </xsl:when>
               <xsl:otherwise>
                  <xsl:value-of select="."/>
               </xsl:otherwise>
            </xsl:choose>
         </xsl:non-matching-substring>
      </xsl:analyze-string>
   </xsl:template>
   <!--end translate -->   <!--begin escapeForRegex-->   <xsl:function name="lnf:escapeForRegex" as="xs:string"><!-- takes one argument which is a string.  The string will be escaped for 
			use in regular expressions (replace and matches function, xsl:analyze-string, 
			etc.  Source code taken from functx.com libraries -->
      <xsl:param name="arg" as="xs:string?"/>
      <xsl:sequence select="    replace($arg,    '(\.|\[|\]|\\|\||\-|\^|\$|\?|\*|\+|\{|\}|\(|\))', '\\$1')    "/>
   </xsl:function>
   <!-- end escapeForRegex -->
   <!--  functions END  -->
   <!-- start topichead  Converting to ID Data Type  -->
   <!-- <topicref href="../../common_newest/Rosetta_identifier-LxAdv-ID_data_type-HandlingPatternRestrictions.dita"/> -->
   <xd:doc>
      <xd:desc>
         <xd:p>
            <xd:b>Instructions</xd:b>
         </xd:p>
         <xd:p>Identifiers such as <xd:b>xml:id</xd:b> and
					<xd:b>ref:anchor/@id</xd:b> are ID data typed. Refer to the target
				schema/documentation to determine whether or not the value is ID data typed.  </xd:p>
         <xd:p>ID data types cannot contain colons and may not begin with a number (among other
				restrictions).  To properly map to a node that is ID data typed, conversion
				instructions state to substitute a colon or a space with an underscore. Also, prefix
				values beginning with a number, with an underscore. The xml schema will enforce
				these constraints post conversion.</xd:p>
         <xd:p>Do not convert the following cases:<xd:ul>
               <xd:li>Leading and trailing space(s) (e.g. id=" example_id_value_001 ")</xd:li>
               <xd:li>XML Entities (e.g. id="example_id_value_001&amp;#xA;")</xd:li>
            </xd:ul>      </xd:p>
         <xd:p>
            <xd:b>Example Markup - Source</xd:b>
         </xd:p>
         <xd:pre>

&lt;refpt id="&amp;#xA;          0KMN_2_F_FC__S_CLAUSE:HTDICT-TERM&amp;#xA;        " type="ext"/&gt;

	</xd:pre>
         <xd:p>
            <xd:b>Example Markup - Target</xd:b>
         </xd:p>
         <xd:pre>

&lt;ref:anchor id="_0KMN_2_F_FC__S_CLAUSE_HTDICT-TERM" anchortype="global"/&gt;

	</xd:pre>
         <xd:p>Other identifiers, such as <xd:b>@anchoridref</xd:b> are <xd:i>not</xd:i> ID
				data typed. However, they may link to those that are. For example, an
					<xd:b>@anchoridref</xd:b> may point a
					<xd:b>ref:anchor/@id</xd:b>. Since <xd:b>@anchoridref</xd:b>
				is not ID data typed, the ID constraints will not be enforced by the schema post
				conversion, and will result in broken links. So, to ensure proper link resolution,
				it is imperative that such identifiers also follow the ID data type restrictions
					(<xd:b>@anchoridref</xd:b> in this case).</xd:p>
         <!--Changes2013-07-17: Added instructions for handling
					leading/trailing space(s) and XML entities.2013-07-10: Added instruction to replace space with
					underscore.-->
         <!-- SEP 2015-8-12 added -->
         <!--<xsltinclusion>
			<xsl:stylesheet version="2.0">
				<xsl:template match="*[@id]">
					<!-\- need to better combine with other @id functions-\->
					<!-\- need to handle entities, currently does not -\->
					<xsl:variable name="idval" select="@id"/>
					<xsl:choose>
						<xsl:when test="contains($idval, ':') or contains($idval, ' ') or contains('0123456789', substring($idval, 1, 1)) ">
							<xsl:variable name="idvalNoBegNums">
							   <!-\- need recursive function call here to remove leading numerals , currently only handles one  -\->
							   <xsl:choose>
								   <xsl:when test="contains('0123456789', substring(normalize-space($idval), 1, 1))">                           
									   <xsl:value-of select="normalize-space(substring($idval,2))"/>                           
								   </xsl:when>
								   <xsl:otherwise>
									   <xsl:value-of select="normalize-space($idval)"/>                           
								   </xsl:otherwise>
							   </xsl:choose>
							</xsl:variable>
							<xsl:copy>
								<xsl:attribute name="id" select="translate(normalize-space($idvalNoBegNums), ' :', '__')"/>
								<xsl:apply-templates select="@*[name()!='id'] | node()"/>
							</xsl:copy>               
						</xsl:when>
						<xsl:otherwise>
							<xsl:copy>
								<xsl:apply-templates select="@* | node()"/>
							</xsl:copy>
						</xsl:otherwise>
					</xsl:choose>
				</xsl:template>

				need recursive function to remove leading numerals , currently only handles one 

			</xsl:stylesheet>
		</xsltinclusion>-->
      </xd:desc>
   </xd:doc>
   <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_identifier-LxAdv-ID_data_type-HandlingPatternRestrictions.dita  -->
   <!-- 
**************************************************************************************
NOTE:
The context node for this template MUST be a string value.
This template returns a string value that has been modified to 
meet the restrictions of the xs:id datatype.

It was originally intended for xml:id, id, and ID attributes, but would
also work for anything else where the xs:id datatype is required.

This template does not handle ALL entities,as 
Saxon will by default, *resolve* entities before this template 
processes the string.  XSLT cannot change this behavior. It will now identify and
replace pointy brackets and ampersands, however, with an underscore as resolving
those would definitely be a problem for the parser.

****************************************************************************************

-->
   <xsl:template name="normalizeIdString"><!-- first step: replace illegal characters with an underscore --><!-- WPK 2017-10-19.  Added mdash to list of disallowed chars. 
		 WPK 2017-10-24.  	
				added   (left double quote #x93;)
				added   (non printable control character #x80;)
				added Â
				added Ã
				added ¢
				added –   (en dash &#x2013;) 
				
			Background.  These are likely encoding issues.  This allows for valid IDs to be created because they are invalid characters nevertheless.
			AU10 PS2017050503412620096LNIAULNPG_input_BUS_GUID_74731000.xml	
			in		Ã¢ÂÂ
			out		Ã¢Â&#x80;Â&#x93;
			
			Ã¢    becomes Ã¢
			Â    becomes Â&#x80;  (control character displays as blank)
			Â    becomes Â&#x93;  (back slanted double quote)
			
			http://www.i18nqa.com/debug/utf8-debug.html
			(expected is not what LN expects but what the website indicates as expected in its context)
			Unicode...Windows1252...Expected...Actual...UTF-8 Bytes
			U+00A2    0xA2          ¢          Â¢       %C2 %A2     (not tilde, but carrot - not exactly what is in data)
			U+201C    0x93          “          â€œ      %E2 %80 %9C   
			U+00E2    0xE2          â          Ã¢       %C3 %A2     (carrot as found in data)
			
			AU10 PS2017050812233824638LNIAULNPG_input_BUS_GUID_93431000.xml
			–   (en dash &#x2013;) 
	-->
      <xsl:variable name="idWithoutDisallowedChars">
         <xsl:value-of select="translate(. , ',!#$%()*+/:;=?@![]\^`|{}~’‘—&#x93;&#x80;ÂÃ¢–', '__________________________________')"/>
      </xsl:variable>
      <!-- get rid of stubborn entities-->
      <xsl:variable name="idWithoutDisallowedEnts">
         <xsl:analyze-string select="$idWithoutDisallowedChars" regex="&lt;|&gt;|&amp;|'">
            <xsl:matching-substring>
               <xsl:text>_</xsl:text>
            </xsl:matching-substring>
            <xsl:non-matching-substring>
               <xsl:value-of select="."/>
            </xsl:non-matching-substring>
         </xsl:analyze-string>
      </xsl:variable>
      <!-- remove leading and trailing spaces and entities -->
      <xsl:variable name="idWoLeadingSpaces">
         <xsl:value-of select="replace($idWithoutDisallowedEnts, '^\s+', '')"/>
      </xsl:variable>
      <xsl:variable name="idWoTrailingSpaces"><!-- this should also handle resolved whitespace and ampersand entities -->
         <xsl:value-of select="replace($idWoLeadingSpaces, '\s+$', '')"/>
      </xsl:variable>
      <xsl:variable name="idWoInternalSpaces">
         <xsl:value-of select="replace($idWoTrailingSpaces, '\s+', '_')"/>
      </xsl:variable>
      <!--  prepend underscore with leading values of period, hyphen, or numeral -->
      <xsl:choose>
         <xsl:when test="matches($idWoInternalSpaces , '^[0-9]|^\.|^\-')">
            <xsl:value-of select="concat('_', $idWoInternalSpaces)"/>
         </xsl:when>
         <xsl:otherwise>
            <xsl:value-of select="$idWoInternalSpaces"/>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <!-- named template normalizeIdString_dropchars receives the same input (string) as 
	normalizeIdString, but replaces all illegal characters and spaces with nothing. It still
	prepends an underscore if the string begins with a number or illegal starting character. 
	The output should still be a valid id datatype and NMTOKEN.  This is less commonly used
	for IDs than the normalizeIdString template but may be useful for some other attributes-->
   <xsl:template name="normalizeIdString_dropchars"><!-- first step: replace illegal characters with an underscore -->
      <xsl:variable name="idWithoutDisallowedChars">
         <xsl:value-of select="translate(. , ',!#$%()*+/:;=?@![]\^`|{}~’‘', '')"/>
      </xsl:variable>
      <!-- get rid of stubborn entities-->
      <xsl:variable name="idWithoutDisallowedEnts">
         <xsl:analyze-string select="$idWithoutDisallowedChars" regex="&lt;|&gt;|&amp;|'">
            <xsl:matching-substring/>
            <xsl:non-matching-substring>
               <xsl:value-of select="."/>
            </xsl:non-matching-substring>
         </xsl:analyze-string>
      </xsl:variable>
      <!-- remove leading and trailing spaces and entities -->
      <xsl:variable name="idWoLeadingSpaces">
         <xsl:value-of select="replace($idWithoutDisallowedEnts, '^\s+', '')"/>
      </xsl:variable>
      <xsl:variable name="idWoTrailingSpaces"><!-- this should also handle resolved whitespace and ampersand entities -->
         <xsl:value-of select="replace($idWoLeadingSpaces, '\s+$', '')"/>
      </xsl:variable>
      <xsl:variable name="idWoInternalSpaces">
         <xsl:value-of select="replace($idWoTrailingSpaces, '\s+', '')"/>
      </xsl:variable>
      <!--  prepend underscore with leading values of period, hyphen, or numeral -->
      <xsl:choose>
         <xsl:when test="matches($idWoInternalSpaces , '^[0-9]|^\.|^\-')">
            <xsl:value-of select="concat('_', $idWoInternalSpaces)"/>
         </xsl:when>
         <xsl:otherwise>
            <xsl:value-of select="$idWoInternalSpaces"/>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <!--
stolen from the web, and for reference: id datatypes must follow NCName restrictions		
		
Practical restrictions of an NCName

The practical restrictions of NCName are that it cannot contain several symbol characters like :, @,  $, %, &, /, +, ,, ;, 
whitespace characters or different parenthesis. Furthermore an NCName cannot begin with a number, dot or minus character 
although they can appear later in an NCName.

Allowed characters: -, ., 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, V, W, X, Y, Z, _, 
a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s, t, u, v, w, x, y, z

Also, - and . cannot be used as the first character of the value.

Disallowed characters: , !, ", #, $, %, &, ', (, ), *, +, ,, /, :, ;, <, =, >, ?, @, [, \, ], ^, `, {, |, }, ~ -->   <!-- <topicref href="../../common_newest/Rosetta_identifier-LxAdv-ID_data_type-HandlingDuplicates.dita"/> -->   <xd:doc>
      <xd:desc>
         <xd:p>
            <xd:b>Instructions</xd:b>
         </xd:p>
         <xd:p>Identifier values in the source, such as <xd:i>@id</xd:i>, may not have
					uniqueness constraints applied to them. As a result, duplicate identifier values
					may exist. If such values are mapped to a target such as
						<xd:b>@xml:id</xd:b>, schema validation errors will occur. The
						<xd:b>@xml:id</xd:b> attribute is ID data typed, and therefore
						<xd:i>does</xd:i> have the uniqueness constraint applied. In this case:<xd:ul>
               <xd:li>convert the first value in the duplicate sequence</xd:li>
               <xd:li>drop the remaining values in the duplicate sequence</xd:li>
            </xd:ul>
         </xd:p>
         <xd:p>
            <xd:b>Source XML 1</xd:b>
         </xd:p>
         <xd:pre> &lt;p&gt; &lt;table id="T0103011"&gt; ... &lt;/table&gt; &lt;/p&gt;
					&lt;page count="302" /&gt; &lt;p&gt; &lt;table id="T0103011"&gt; ...
					&lt;/table&gt; &lt;/p&gt; </xd:pre>
         <xd:p>
            <xd:b>Target XML 1</xd:b>
         </xd:p>
         <xd:pre> &lt;p&gt; &lt;table xml:id="T0103011"&gt; ... &lt;/table&gt; &lt;/p&gt;
					&lt;ref:page num="302"/&gt; &lt;p&gt; &lt;table&gt; ... &lt;/table&gt;
					&lt;/p&gt; </xd:pre>
         <!--Changes2012-10-18: Created. -->
         <!-- SEP 2015-8-12 added;  need to better combine with other @id functions -->
         <!--<xsltinclusion>
				<xsl:stylesheet version="2.0">
				<xsl:template match="*[@id]">
					<xsl:variable name="idval" select="@id"/>
					<xsl:choose>
						<xsl:when test="preceding::*[@id=$idval]">
							<xsl:copy>
								<xsl:apply-templates select="@*[name()!='id'] | node()"/>
							</xsl:copy>               
						</xsl:when>
						<xsl:otherwise>
							<xsl:copy>
								<xsl:apply-templates select="@* | node()"/>
							</xsl:copy>
						</xsl:otherwise>
					</xsl:choose>
				</xsl:template>      
			</xsl:stylesheet>
			</xsltinclusion>-->
      </xd:desc>
   </xd:doc>
   <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_identifier-LxAdv-ID_data_type-HandlingDuplicates.dita  -->
   <!-- 1.	 There are @id and @ID elements in dictionarydoc-norm.dtd.  
		In some cases these need to be transformed to xml:id and in other cases they need to be transformed to @id.  
		All of them need to be checked for duplicate values. We know these 4 cases:
           The mapping of refpt/@id to ref:anchor/@id - IS DONE IN THIS AND modules/nonamespace/Rosetta_refpt-LxAdv-ref.anchor.xsl
           The following mapping is NOT YET DONE as of 3/20/17 because these modules are not in scope for HK05:
           The mapping of footnote/@fntoken to footnote/ref:anchor/@id
           The mapping fnr/@fnrtoken to footnote-ref/ref:anchor/@id
           The mapping of fnr/@fntoken to foonote-ref/@anchoridref
 -->
   <!-- keys for testing -->
   <!--
	<xsl:key name="idTypeValue" match="*[@id]" use="@id"/>
	<xsl:key name="idTypeValue" match="*[@ID]" use="@ID"/>
	<xsl:key name="idTypeValue" match="footnote" use="@fntoken"/>
	<xsl:key name="idTypeValue" match="fnr" use="@fnrtoken"/>

	<xsl:include href="Rosetta_identifier-LxAdv-ID_data_type-HandlingPatternRestrictions.xsl"/>
	
	<xsl:template match="refpt">
		<xsl:apply-templates/>	
		**<xsl:call-template name="amIaDuplicate"/>**
	</xsl:template>
	<xsl:template match="footnote">
		<xsl:apply-templates/>	
		**<xsl:call-template name="amIaDuplicate"/>**
	</xsl:template>
	<xsl:template match="fnr">
		<xsl:apply-templates/>	
		**<xsl:call-template name="amIaDuplicate"/>**
	</xsl:template>
	<xsl:template match="title">
		<xsl:apply-templates/>
		<xsl:if test="@ID or @id">	
			**<xsl:call-template name="amIaDuplicate"/>**
		</xsl:if>	
	</xsl:template>-->
   <!-- end testing code -->
   <xsl:template match="@id | @ID">
      <xsl:if test="not(.='')">
         <xsl:variable name="dupStatus">
            <xsl:for-each select="parent::*">
               <xsl:call-template name="amIaDuplicate"/>
            </xsl:for-each>
         </xsl:variable>
         <xsl:if test="$dupStatus = 'false'">
            <xsl:choose>
               <xsl:when test="local-name(parent::*)='refpt'">
                  <xsl:attribute name="id">
                     <xsl:call-template name="normalizeIdString"/>
                  </xsl:attribute>
               </xsl:when>
               <xsl:otherwise>
                  <xsl:attribute name="xml:id">
                     <xsl:call-template name="normalizeIdString"/>
                  </xsl:attribute>
               </xsl:otherwise>
            </xsl:choose>
         </xsl:if>
      </xsl:if>
   </xsl:template>
   <!-- *****************************************************************************
			 This named template "amIaDuplicate" returns 'false' if the @id or @ID is 
			 a unique */@ID or  */@id in the document. It returns 'true' if the @id 
			 or @ID is the 2nd or subsequent @id or @ID in the document with the same value.
			 The parent element name does not matter; whether the attribute name is @id 
			 or @ID does not matter.
			 
			 It must be used in conjunction with
			 
			 	<xsl:key name="idTypeValue" match="*[@id]" use="@id"/> 
				<xsl:key name="idTypeValue" match="*[@ID]" use="@ID"/>
				(if your stream contains footnotes also include)
				<xsl:key name="idTypeValue" match="footnote" use="@fntoken"/>
	            <xsl:key name="idTypeValue" match="fnr" use="@fnrtoken"/>
	            
			BOTH inserted at the TOP LEVEL of the stylesheet driver.
			
			It needs to be called from the element containing the attribute as a context
			node, not the attribute itself, or it won't work
			
			For example:
				<xsl:template match="refpt">
					<xsl:call-template name="amIaDuplicate"/>	
				</xsl:template>
				
			will return true if this is a refpt with unique @id or is the first of 
			more than one element in the document having the same @id or @ID value.
			How the context template handles this boolean value is left as an exercise
			for the developer of that template. 
						
			If the test for unique values is element-specific or attribute-specific
			within the document, a copy of/variation on this code with a more specific key is 
			recommended rather than reusing this generic template.
			
			- JL
		********************************************************************************-->
   <xsl:template name="amIaDuplicate">
      <xsl:choose>
         <xsl:when test="not(key('idTypeValue', @id | @ID | @fntoken[parent::footnote] | @fnrtoken[parent::fnr])[2])"><!-- id value is unique to document -->
            <xsl:text>false</xsl:text>
         </xsl:when>
         <xsl:otherwise>
            <xsl:variable name="contextNodeGenID" select="generate-id(.)"/>
            <xsl:choose>
               <xsl:when test="key('idTypeValue', @id | @ID | @fntoken[parent::footnote] | @fnrtoken[parent::fnr])[local-name(.)!=('refpt', 'footnote' , 'fnr')] and key('idTypeValue', @id | @ID)[local-name(.)=('refpt' , 'footnote', 'fnr')]"><!--*** key has mixed refpt, footnote, fnr / and other values ***--><!-- non-refpt/footenote/fnr values are all dupes by definition --><!-- TO DO only the first refpt/footnote/fnr key is false --><!-- so IF I am the first refpt/footnote/fnr, I am the only nondupe -->
                  <xsl:for-each select="key('idTypeValue', @id | @ID | @fntoken[parent::footnote] | @fnrtoken[parent::fnr])[local-name(.)=('refpt' , 'footnote', 'fnr')][1]">
                     <xsl:choose>
                        <xsl:when test="generate-id(.)=$contextNodeGenID">false</xsl:when>
                        <xsl:otherwise>true</xsl:otherwise>
                     </xsl:choose>
                  </xsl:for-each>
               </xsl:when>
               <xsl:otherwise><!-- everything with matching id is a refpt/footnote/fnr or everything with matching id is not a 
							refpt/footnote/fnr	so everything but the first id is a dup -->
                  <xsl:for-each select="key('idTypeValue', @id | @ID | @fntoken[parent::footnote] | @fnrtoken[parent::fnr])[1]">
                     <xsl:choose>
                        <xsl:when test="generate-id(.)=$contextNodeGenID">false</xsl:when>
                        <xsl:otherwise>true</xsl:otherwise>
                     </xsl:choose>
                  </xsl:for-each>
               </xsl:otherwise>
            </xsl:choose>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <!--<xsl:template match="@xml:id">	
		<xsl:variable name="idval" select="."/>
		<xsl:if test="not(preceding::*[@xml:id=$idval])">
			<xsl:attribute name="xml:id">	
				<xsl:call-template name="normalizeIdString"/>
			</xsl:attribute>
		</xsl:if>		
	</xsl:template>	-->   <!-- end topichead  Converting to ID Data Type  -->   <!-- map  CA02 Rosetta DIGESTDOC to LexAdv seclaw  -->   <!-- <topicref href="Namespaces.dita"/> -->   <xd:doc>
      <xd:desc>
         <xd:ul>
            <xd:li>xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"</xd:li>
            <xd:li>xmlns:abstract="urn:x-lexisnexis:content:abstract:sharedservices:1"</xd:li>
            <xd:li>xmlns:admincode="http://www.lexisnexis.com/xmlschemas/content/legal/administrative-code/1/"</xd:li>
            <xd:li>xmlns:admindecision="urn:x-lexisnexis:content:administrative-decision:sharedservices:1"</xd:li>
            <xd:li>xmlns:admindoc="urn:x-lexisnexis:content:administrative-document:sharedservices:1"</xd:li>
            <xd:li>xmlns:annot="http://www.lexisnexis.com/xmlschemas/content/shared/annotations/1/"</xd:li>
            <xd:li>xmlns:annotinfo="http://www.lexisnexis.com/xmlschemas/content/shared/annotations-info/1/"</xd:li>
            <xd:li>xmlns:article="urn:x-lexisnexis:content:article:sharedservices:1"</xd:li>
            <xd:li>xmlns:base="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"</xd:li>
            <xd:li>xmlns:biblio="urn:x-lexisnexis:content:bibliography:sharedservices:1"</xd:li>
            <xd:li>xmlns:billhist="urn:x-lexisnexis:content:billhistory:sharedservices:1"</xd:li>
            <xd:li>xmlns:billtrack="urn:x-lexisnexis:content:billtracking:1"</xd:li>
            <xd:li>xmlns:casedigest="http://www.lexisnexis.com/xmlschemas/content/legal/case-digest/1/"</xd:li>
            <xd:li>xmlns:casehist="http://www.lexisnexis.com/xmlschemas/content/legal/case-history/1/"</xd:li>
            <xd:li>xmlns:caseinfo="http://www.lexisnexis.com/xmlschemas/content/legal/case-information/1/"</xd:li>
            <xd:li>xmlns:casesum="http://www.lexisnexis.com/xmlschemas/content/legal/case-summary/1/"</xd:li>
            <xd:li>xmlns:cfi="http://www.lexisnexis.com/xmlschemas/content/shared/cite-finding-information/1/"</xd:li>
            <xd:li>xmlns:classify="http://www.lexisnexis.com/xmlschemas/content/shared/classification/1/"</xd:li>
            <xd:li>xmlns:compcase="urn:x-lexisnexis:content:compositecourtcase:sharedservices:1"</xd:li>
            <xd:li>xmlns:const="http://www.lexisnexis.com/xmlschemas/content/legal/constitution/1/"</xd:li>
            <xd:li>xmlns:contact="http://www.lexisnexis.com/xmlschemas/content/shared/contact/1/"</xd:li>
            <xd:li>xmlns:courtcase="http://www.lexisnexis.com/xmlschemas/content/legal/courtcase/1/"</xd:li>
            <xd:li>xmlns:courtfiling="http://www.lexisnexis.com/xmlschemas/content/legal/courtfiling/1/"</xd:li>
            <xd:li>xmlns:courtorder="urn:x-lexisnexis:content:courtorder:sharedservices:1"</xd:li>
            <xd:li>xmlns:courtrule="http://www.lexisnexis.com/xmlschemas/content/legal/courtrule/1/"</xd:li>
            <xd:li>xmlns:cttr="urn:x-lexisnexis:content:citator:sharedservices:1"</xd:li>
            <xd:li>xmlns:currencystatement="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/currencystatement"</xd:li>
            <xd:li>xmlns:dc="http://purl.org/dc/elements/1.1/"</xd:li>
            <xd:li>xmlns:dcterms="http://purl.org/dc/terms/"</xd:li>
            <xd:li>xmlns:decision="http://www.lexisnexis.com/xmlschemas/content/legal/decision/1/"</xd:li>
            <xd:li>xmlns:dict="urn:x-lexisnexis:content:dict:sharedservices:1"</xd:li>
            <xd:li>xmlns:directory="urn:x-lexisnexis:content:directory:sharedservices:1"</xd:li>
            <xd:li>xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/"</xd:li>
            <xd:li>xmlns:entity="http://www.lexisnexis.com/xmlschemas/content/shared/identified-entities/1/"</xd:li>
            <xd:li>xmlns:form="http://www.lexisnexis.com/xmlschemas/content/shared/form/1/"</xd:li>
            <xd:li>xmlns:funddoc="urn:x-lexisnexis:content:fundamentallegaldocument:sharedservices:1"</xd:li>
            <xd:li>xmlns:globalentity="urn:x-lexisnexis:content:identified-entities:global:1"</xd:li>
            <xd:li>xmlns:guid="urn:x-lexisnexis:content:guid:global:1"</xd:li>
            <xd:li>xmlns:index="urn:x-lexisnexis:content:publicationindex:sharedservices:1"</xd:li>
            <xd:li>xmlns:jurisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/jurisdiction-info/1/"</xd:li>
            <xd:li>xmlns:legis="http://www.lexisnexis.com/xmlschemas/content/legal/legislation/1/"</xd:li>
            <xd:li>xmlns:legishist="http://www.lexisnexis.com/xmlschemas/content/legal/legislation-history/1/"</xd:li>
            <xd:li>xmlns:legisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/legislation-info/1/"</xd:li>
            <xd:li>xmlns:lnci="http://www.lexisnexis.com/xmlschemas/content/shared/citations/1/"</xd:li>
            <xd:li>xmlns:lndocmeta="http://www.lexisnexis.com/xmlschemas/content/shared/lndocmeta/1/"</xd:li>
            <xd:li>xmlns:lnmeta="http://www.lexisnexis.com/xmlschemas/content/shared/lexisnexis-metadata/1/"</xd:li>
            <xd:li>xmlns:lnsys="http://www.lexisnexis.com/xmlschemas/content/shared/lnsys/1/"</xd:li>
            <xd:li>xmlns:lntbl="http://www.lexisnexis.com/xmlschemas/content/shared/lexisnexis-table-extensions/1/"</xd:li>
            <xd:li>xmlns:location="http://www.lexisnexis.com/xmlschemas/content/shared/location/1/"</xd:li>
            <xd:li>xmlns:lpa="urn:x-lexisnexis:content:parameter:lexispracticeadvisor:1"</xd:li>
            <xd:li>xmlns:navaid="urn:x-lexisnexis:content:navigationaid:sharedservices:1"</xd:li>
            <xd:li>xmlns:newsitem="http://www.lexisnexis.com/xmlschemas/content/news/newsitem/1/"</xd:li>
            <xd:li>xmlns:nitf="http://iptc.org/std/NITF/2006-10-18/"</xd:li>
            <xd:li>xmlns:org="urn:x-lexisnexis:content:organization:sharedservices:1"</xd:li>
            <xd:li>xmlns:person="http://www.lexisnexis.com/xmlschemas/content/shared/person/1/"</xd:li>
            <xd:li>xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/"</xd:li>
            <xd:li>xmlns:primlawhist="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-history/1/"</xd:li>
            <xd:li>xmlns:primlawinfo="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-info/1/"</xd:li>
            <xd:li>xmlns:proc="http://www.lexisnexis.com/xmlschemas/content/shared/process-elements/1/"</xd:li>
            <xd:li>xmlns:pubfm="http://www.lexisnexis.com/xmlschemas/content/shared/publication-front-matter/1/"</xd:li>
            <xd:li>xmlns:pubinfo="http://www.lexisnexis.com/xmlschemas/content/shared/publication-info/1/"</xd:li>
            <xd:li>xmlns:pubup="http://www.lexisnexis.com/xmlschemas/content/shared/publication-update/1/"</xd:li>
            <xd:li>xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"</xd:li>
            <xd:li>xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/"</xd:li>
            <xd:li>xmlns:register="http://www.lexisnexis.com/xmlschemas/content/legal/register/1/"</xd:li>
            <xd:li>xmlns:registerinfo="http://www.lexisnexis.com/xmlschemas/content/legal/register-info/1/"</xd:li>
            <xd:li>xmlns:regulation="urn:x-lexisnexis:content:regulation:sharedservices:1"</xd:li>
            <xd:li>xmlns:rfc="http://www.lexisnexis.com/xmlschemas/content/legal/reason-for-citing/1/"</xd:li>
            <xd:li>xmlns:seclaw="http://www.lexisnexis.com/xmlschemas/content/legal/secondary-law/1/"</xd:li>
            <xd:li>xmlns:statcode="http://www.lexisnexis.com/xmlschemas/content/legal/statutorycode/1/"</xd:li>
            <xd:li>xmlns:tei="http://www.tei-c.org/ns/1.0/"</xd:li>
            <xd:li>xmlns:topic="urn:x-lexisnexis:content:topic:global:1"</xd:li>
            <xd:li>xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"</xd:li>
         </xd:ul>
      </xd:desc>
   </xd:doc>
   <xsl:variable name="lexisAdvNamespaces" as="element()">
      <lexisAdvNamepaces>
         <lexisAdvNamespace>xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"</lexisAdvNamespace>
         <lexisAdvNamespace>xmlns:abstract="urn:x-lexisnexis:content:abstract:sharedservices:1"</lexisAdvNamespace>
         <lexisAdvNamespace>xmlns:admincode="http://www.lexisnexis.com/xmlschemas/content/legal/administrative-code/1/"</lexisAdvNamespace>
         <lexisAdvNamespace>xmlns:admindecision="urn:x-lexisnexis:content:administrative-decision:sharedservices:1"</lexisAdvNamespace>
         <lexisAdvNamespace>xmlns:admindoc="urn:x-lexisnexis:content:administrative-document:sharedservices:1"</lexisAdvNamespace>
         <lexisAdvNamespace>xmlns:annot="http://www.lexisnexis.com/xmlschemas/content/shared/annotations/1/"</lexisAdvNamespace>
         <lexisAdvNamespace>xmlns:annotinfo="http://www.lexisnexis.com/xmlschemas/content/shared/annotations-info/1/"</lexisAdvNamespace>
         <lexisAdvNamespace>xmlns:article="urn:x-lexisnexis:content:article:sharedservices:1"</lexisAdvNamespace>
         <lexisAdvNamespace>xmlns:base="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"</lexisAdvNamespace>
         <lexisAdvNamespace>xmlns:biblio="urn:x-lexisnexis:content:bibliography:sharedservices:1"</lexisAdvNamespace>
         <lexisAdvNamespace>xmlns:billhist="urn:x-lexisnexis:content:billhistory:sharedservices:1"</lexisAdvNamespace>
         <lexisAdvNamespace>xmlns:billtrack="urn:x-lexisnexis:content:billtracking:1"</lexisAdvNamespace>
         <lexisAdvNamespace>xmlns:casedigest="http://www.lexisnexis.com/xmlschemas/content/legal/case-digest/1/"</lexisAdvNamespace>
         <lexisAdvNamespace>xmlns:casehist="http://www.lexisnexis.com/xmlschemas/content/legal/case-history/1/"</lexisAdvNamespace>
         <lexisAdvNamespace>xmlns:caseinfo="http://www.lexisnexis.com/xmlschemas/content/legal/case-information/1/"</lexisAdvNamespace>
         <lexisAdvNamespace>xmlns:casesum="http://www.lexisnexis.com/xmlschemas/content/legal/case-summary/1/"</lexisAdvNamespace>
         <lexisAdvNamespace>xmlns:cfi="http://www.lexisnexis.com/xmlschemas/content/shared/cite-finding-information/1/"</lexisAdvNamespace>
         <lexisAdvNamespace>xmlns:classify="http://www.lexisnexis.com/xmlschemas/content/shared/classification/1/"</lexisAdvNamespace>
         <lexisAdvNamespace>xmlns:compcase="urn:x-lexisnexis:content:compositecourtcase:sharedservices:1"</lexisAdvNamespace>
         <lexisAdvNamespace>xmlns:const="http://www.lexisnexis.com/xmlschemas/content/legal/constitution/1/"</lexisAdvNamespace>
         <lexisAdvNamespace>xmlns:contact="http://www.lexisnexis.com/xmlschemas/content/shared/contact/1/"</lexisAdvNamespace>
         <lexisAdvNamespace>xmlns:courtcase="http://www.lexisnexis.com/xmlschemas/content/legal/courtcase/1/"</lexisAdvNamespace>
         <lexisAdvNamespace>xmlns:courtfiling="http://www.lexisnexis.com/xmlschemas/content/legal/courtfiling/1/"</lexisAdvNamespace>
         <lexisAdvNamespace>xmlns:courtorder="urn:x-lexisnexis:content:courtorder:sharedservices:1"</lexisAdvNamespace>
         <lexisAdvNamespace>xmlns:courtrule="http://www.lexisnexis.com/xmlschemas/content/legal/courtrule/1/"</lexisAdvNamespace>
         <lexisAdvNamespace>xmlns:cttr="urn:x-lexisnexis:content:citator:sharedservices:1"</lexisAdvNamespace>
         <lexisAdvNamespace>xmlns:currencystatement="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/currencystatement"</lexisAdvNamespace>
         <lexisAdvNamespace>xmlns:dc="http://purl.org/dc/elements/1.1/"</lexisAdvNamespace>
         <lexisAdvNamespace>xmlns:dcterms="http://purl.org/dc/terms/"</lexisAdvNamespace>
         <lexisAdvNamespace>xmlns:decision="http://www.lexisnexis.com/xmlschemas/content/legal/decision/1/"</lexisAdvNamespace>
         <lexisAdvNamespace>xmlns:dict="urn:x-lexisnexis:content:dict:sharedservices:1"</lexisAdvNamespace>
         <lexisAdvNamespace>xmlns:directory="urn:x-lexisnexis:content:directory:sharedservices:1"</lexisAdvNamespace>
         <lexisAdvNamespace>xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/"</lexisAdvNamespace>
         <lexisAdvNamespace>xmlns:entity="http://www.lexisnexis.com/xmlschemas/content/shared/identified-entities/1/"</lexisAdvNamespace>
         <lexisAdvNamespace>xmlns:form="http://www.lexisnexis.com/xmlschemas/content/shared/form/1/"</lexisAdvNamespace>
         <lexisAdvNamespace>xmlns:funddoc="urn:x-lexisnexis:content:fundamentallegaldocument:sharedservices:1"</lexisAdvNamespace>
         <lexisAdvNamespace>xmlns:globalentity="urn:x-lexisnexis:content:identified-entities:global:1"</lexisAdvNamespace>
         <lexisAdvNamespace>xmlns:guid="urn:x-lexisnexis:content:guid:global:1"</lexisAdvNamespace>
         <lexisAdvNamespace>xmlns:index="urn:x-lexisnexis:content:publicationindex:sharedservices:1"</lexisAdvNamespace>
         <lexisAdvNamespace>xmlns:jurisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/jurisdiction-info/1/"</lexisAdvNamespace>
         <lexisAdvNamespace>xmlns:legis="http://www.lexisnexis.com/xmlschemas/content/legal/legislation/1/"</lexisAdvNamespace>
         <lexisAdvNamespace>xmlns:legishist="http://www.lexisnexis.com/xmlschemas/content/legal/legislation-history/1/"</lexisAdvNamespace>
         <lexisAdvNamespace>xmlns:legisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/legislation-info/1/"</lexisAdvNamespace>
         <lexisAdvNamespace>xmlns:lnci="http://www.lexisnexis.com/xmlschemas/content/shared/citations/1/"</lexisAdvNamespace>
         <lexisAdvNamespace>xmlns:lndocmeta="http://www.lexisnexis.com/xmlschemas/content/shared/lndocmeta/1/"</lexisAdvNamespace>
         <lexisAdvNamespace>xmlns:lnmeta="http://www.lexisnexis.com/xmlschemas/content/shared/lexisnexis-metadata/1/"</lexisAdvNamespace>
         <lexisAdvNamespace>xmlns:lnsys="http://www.lexisnexis.com/xmlschemas/content/shared/lnsys/1/"</lexisAdvNamespace>
         <lexisAdvNamespace>xmlns:lntbl="http://www.lexisnexis.com/xmlschemas/content/shared/lexisnexis-table-extensions/1/"</lexisAdvNamespace>
         <lexisAdvNamespace>xmlns:location="http://www.lexisnexis.com/xmlschemas/content/shared/location/1/"</lexisAdvNamespace>
         <lexisAdvNamespace>xmlns:lpa="urn:x-lexisnexis:content:parameter:lexispracticeadvisor:1"</lexisAdvNamespace>
         <lexisAdvNamespace>xmlns:navaid="urn:x-lexisnexis:content:navigationaid:sharedservices:1"</lexisAdvNamespace>
         <lexisAdvNamespace>xmlns:newsitem="http://www.lexisnexis.com/xmlschemas/content/news/newsitem/1/"</lexisAdvNamespace>
         <lexisAdvNamespace>xmlns:nitf="http://iptc.org/std/NITF/2006-10-18/"</lexisAdvNamespace>
         <lexisAdvNamespace>xmlns:org="urn:x-lexisnexis:content:organization:sharedservices:1"</lexisAdvNamespace>
         <lexisAdvNamespace>xmlns:person="http://www.lexisnexis.com/xmlschemas/content/shared/person/1/"</lexisAdvNamespace>
         <lexisAdvNamespace>xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/"</lexisAdvNamespace>
         <lexisAdvNamespace>xmlns:primlawhist="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-history/1/"</lexisAdvNamespace>
         <lexisAdvNamespace>xmlns:primlawinfo="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-info/1/"</lexisAdvNamespace>
         <lexisAdvNamespace>xmlns:proc="http://www.lexisnexis.com/xmlschemas/content/shared/process-elements/1/"</lexisAdvNamespace>
         <lexisAdvNamespace>xmlns:pubfm="http://www.lexisnexis.com/xmlschemas/content/shared/publication-front-matter/1/"</lexisAdvNamespace>
         <lexisAdvNamespace>xmlns:pubinfo="http://www.lexisnexis.com/xmlschemas/content/shared/publication-info/1/"</lexisAdvNamespace>
         <lexisAdvNamespace>xmlns:pubup="http://www.lexisnexis.com/xmlschemas/content/shared/publication-update/1/"</lexisAdvNamespace>
         <lexisAdvNamespace>xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"</lexisAdvNamespace>
         <lexisAdvNamespace>xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/"</lexisAdvNamespace>
         <lexisAdvNamespace>xmlns:register="http://www.lexisnexis.com/xmlschemas/content/legal/register/1/"</lexisAdvNamespace>
         <lexisAdvNamespace>xmlns:registerinfo="http://www.lexisnexis.com/xmlschemas/content/legal/register-info/1/"</lexisAdvNamespace>
         <lexisAdvNamespace>xmlns:regulation="urn:x-lexisnexis:content:regulation:sharedservices:1"</lexisAdvNamespace>
         <lexisAdvNamespace>xmlns:rfc="http://www.lexisnexis.com/xmlschemas/content/legal/reason-for-citing/1/"</lexisAdvNamespace>
         <lexisAdvNamespace>xmlns:seclaw="http://www.lexisnexis.com/xmlschemas/content/legal/secondary-law/1/"</lexisAdvNamespace>
         <lexisAdvNamespace>xmlns:statcode="http://www.lexisnexis.com/xmlschemas/content/legal/statutorycode/1/"</lexisAdvNamespace>
         <lexisAdvNamespace>xmlns:tei="http://www.tei-c.org/ns/1.0/"</lexisAdvNamespace>
         <lexisAdvNamespace>xmlns:topic="urn:x-lexisnexis:content:topic:global:1"</lexisAdvNamespace>
         <lexisAdvNamespace>xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"</lexisAdvNamespace>
      </lexisAdvNamepaces>
   </xsl:variable>
   <xsl:template name="generateNSGlobalBindings">
      <xsl:for-each select="$lexisAdvNamespaces/*">
         <xsl:sort/>
         <xsl:namespace name="{substring-after(substring-before(., '='), ':')}"
                        select="substring-after(translate(., '&#34;', ''), '=')"/>
      </xsl:for-each>
   </xsl:template>
   <!-- start topicref  Introduction.dita  -->   <!-- <topicref href="Introduction.dita"/> -->   <xd:doc>
      <xd:desc>
         <xd:p>
            <xd:b>This Conversion Instructions describes the conversion of the Rosetta DIGESTDOC DTD to
        <xd:b>Seclaw 8.6_PROD</xd:b> schema.</xd:b>
         </xd:p>
         <xd:p>CA Case Summaries DIGESTDOC based samples are identified using the root element
          <xd:i>DIGESTDOC</xd:i> with attribute
          <xd:i>DIGESTDOC/@type="case-summary"</xd:i> and with
          <xd:i>dig:collection</xd:i>, <xd:i>dig:level</xd:i>, and
          <xd:i>dig:item</xd:i> elements.</xd:p>
         <xd:i>DIGESTDOC</xd:i> becomes <xd:b>seclaw:seclaw</xd:b> which has a
        required attribute <xd:b>@seclawtype</xd:b>, the value of this attribute will be
          <xd:b>@seclawtype="digest"</xd:b>. The source attribute
          <xd:i>@xml:lang</xd:i>, if present, can be dropped, as a separate rule has been
        defined to populate <xd:b>seclaw:seclaw/@xml:lang</xd:b>. <xd:p>
            <xd:b>Note: </xd:b>The attribute <xd:i>@searchtype</xd:i> will be suppressed from the
          conversion except citation markup.</xd:p>
         <xd:pre>
          &lt;DIGESTDOC type="case-summary"&gt;
                      ...
                      &lt;docinfo:doc-lang lang="en"/&gt;
                      &lt;docinfo:doc-country iso-cc="CA"/&gt;
                      ...          
           &lt;/DIGESTDOC&gt;

          <xd:b>Becomes</xd:b>

              &lt;seclaw:seclaw seclawtype="digest" xml:lang="en-CA"&gt;
                        ...
               &lt;/seclaw:seclaw&gt;
      </xd:pre>
         <xd:p>
            <xd:b>Note: </xd:b>Elements <xd:b>seclaw:head</xd:b>, <xd:b>seclaw:body</xd:b> and
            <xd:b>doc:metadata</xd:b> are created as required children of root element
            <xd:b>seclaw:seclaw</xd:b> during conversion.</xd:p>
         <xd:p>
            <xd:b>Note:</xd:b>
         </xd:p>
         <xd:p>Source elements and attributes are highlighted like this:
            <xd:i>SOURCEXML</xd:i>
         </xd:p>
         <xd:p>Target elements and attributes are highlighted like this:
            <xd:b>TARGETXML</xd:b>
         </xd:p>
         <xd:p>Copy source attributes to target attributes unless otherwise specified.</xd:p>
         <xd:p>Every example is represented like EXAMPLE in all the Conversion Instructions and is
          captured under <xd:pre>pre</xd:pre> tag.</xd:p>
      </xd:desc>
   </xd:doc>
   <!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
   <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA02-Case_Summaries\CA02DS_DIGESTDOC_to_seclaw\Introduction.dita  -->
   <!-- Vikas Rohilla : Creted the template to match the  DIGESTDOC-->
   <xsl:template match="DIGESTDOC"><!--  Original Target XPath:  courtcase:courtcase   -->
      <xsl:element name="seclaw:seclaw">
         <xsl:call-template name="generateNSGlobalBindings"/>
         <xsl:attribute name="xsi:schemaLocation" select="$outputSchemaLoc"/>
         <!--	@attribute xml:lang	  -->
         <!-- Awantika:2017-11-10- updated the call template from xml_lang_HK to xml_lang -->
         <xsl:call-template name="xml_lang"/>
         <!--Attribute seclawtype-->
         <xsl:attribute name="seclawtype">
            <xsl:text>digest</xsl:text>
         </xsl:attribute>
         <!-- seclaw:head			-->
         <xsl:element name="seclaw:head">
            <ref:citations>
               <xsl:apply-templates select="dig:body/dig:collection/dig:level/dig:info/dig:cite"/>
            </ref:citations>
         </xsl:element>
         <!--seclaw:body			-->
         <xsl:apply-templates select="dig:body"/>
         <!-- doc:metadata   -->
         <!-- doc:metadata			-->
         <xsl:element name="doc:metadata">
            <xsl:element name="pubinfo:pubinfo">
               <xsl:apply-templates select="dig:body/dig:collection/dig:level/dig:info/publication"/>
            </xsl:element>
            <xsl:apply-templates select="docinfo"/>
         </xsl:element>
      </xsl:element>
   </xsl:template>
   <!-- Supressed @type	-->
   <xsl:template match="DIGESTDOC/@type"/>
   <!-- <topicref href="../../../common_newest/Rosetta_docinfo.doc-lang-and-doc-country-LxAdv-ROOT_xml.lang.dita"/> -->   <xd:doc>
      <xd:desc>
         <xd:p>
            <xd:b>xml:lang Instructions</xd:b>
         </xd:p>
         <xd:p>The combination of <xd:i>docinfo/docinfo:doc-lang[@lang]</xd:i> and <xd:i>docinfo/docinfo:doc-country[@iso-cc]</xd:i> becomes
                        <xd:b>{target.root.element}[@xml:lang]</xd:b>
         </xd:p>
         <xd:p>
            <xd:b>Source XML</xd:b>
         </xd:p>
         <xd:pre> &lt;docinfo:doc-lang lang="en"/&gt; &lt;docinfo:doc-country iso-cc="NZ"/&gt; </xd:pre>
         <xd:p>
            <xd:b>Target XML</xd:b>
         </xd:p>
         <xd:pre> &lt;{target.root.elm} xml:lang="en-NZ" ...&gt; </xd:pre>
         <xd:p>
            <xd:b>Source XML</xd:b>
         </xd:p>
         <xd:pre> &lt;docinfo:doc-lang lang="en"/&gt; &lt;docinfo:doc-country iso-cc="GB"/&gt; </xd:pre>
         <xd:p>
            <xd:b>Target XML</xd:b>
         </xd:p>
         <xd:pre> &lt;{target.root.elm} xml:lang="en-GB" ...&gt; </xd:pre>
         <xd:p>
            <xd:b>xml:id Instructions</xd:b>
         </xd:p>
         <xd:p>The attribute <xd:b>xml:id</xd:b> is an W3C standard with a datatype of "ID". Outlined below are some of the cases where the source ID values need to be adjusted to
                    conform to the <xd:b>xml:id</xd:b> standard:</xd:p>
         <xd:p>
            <xd:b>Colon ":" in ID value</xd:b>
         </xd:p>
         <xd:p> When a colon is found within an XML ID replace the colon ":" with an underscore "_" as shown below:</xd:p>
         <xd:pre> &lt;level id="NZSTATUTES_ACTS-A4.SGM_PARA-1925A41:1908A96-EDITORIAL-NOTES" leveltype="comm.chap"&gt; </xd:pre>
         <xd:p>
            <xd:b>Target XML</xd:b>
         </xd:p>
         <xd:pre> &lt;primlaw:level id="NZSTATUTES_ACTS-A4.SGM-PARA-1925A41_1908A96-EDITORIAL-NOTES" leveltype="chapter"&gt; </xd:pre>
         <xd:p>
            <xd:b>ID value begins with number</xd:b>
         </xd:p>
         <xd:p>When attribute XML ID value begins with number, then add an underscore "_" as shown below:</xd:p>
         <xd:pre> &lt;level id="475:B005_V2:H1" leveltype="chapter" subdoc="false" toc-caption="PART III THE ADMINISTRATION OF ASSETS"&gt; </xd:pre>
         <xd:p>
            <xd:b>Target XML</xd:b>
         </xd:p>
         <xd:pre> &lt;seclaw:level xml:id="_475_B005_V2_H1" leveltype="chapter" includeintoc="false" alternatetoccaption="PART III THE ADMINISTRATION OF ASSETS"&gt; </xd:pre>
         <xd:p>
            <xd:b>Note: </xd:b>
            <xd:p>The restrictions and required modifications for <xd:b>xml:id</xd:b> also apply to the following situations:</xd:p>
            <xd:ul>
               <xd:li>The mapping of <xd:i>refpt/@id</xd:i> to <xd:b>ref:anchor/@id</xd:b>
               </xd:li>
               <xd:li>The mapping of <xd:i>footnote/@fntoken</xd:i> to <xd:b>footnote/ref:anchor/@id</xd:b>
               </xd:li>
               <xd:li>The mapping <xd:i>fnr/@fnrtoken</xd:i> to <xd:b>footnote-ref/ref:anchor/@id</xd:b>
               </xd:li>
               <xd:li>The mapping of <xd:i>fnr/@fntoken</xd:i> to <xd:b>foonote-ref/@anchoridref</xd:b>
               </xd:li>
            </xd:ul>
         </xd:p>
         <!--Changes2013-07-16: Instruction narrative edited for language; no changes to mappings, no impact to stylesheets.2013-04-19: Added note about applicability of restrictions and required modifications for xml:id to other scenarios.2012-12-13: Instruction and example update where "ID value begins with number".2012-10-05: Example added for UK content.2012-09-27: Added information for the handling of XML:ID2012-05-23: Added information for the handling of XML:ID2011-12-15: Created.-->
      </xd:desc>
   </xd:doc>
   <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_docinfo.doc-lang-and-doc-country-LxAdv-ROOT_xml.lang.dita  -->
   <!-- WPK: this doc-country template is correct and tested -->
   <!--<xsl:template name="parse_id">
		<!-\- This template returns valid ID data type value.  -\->
		<xsl:param name="attr_value" select="."/>
		<xsl:if test="contains('0123456789', substring($attr_value, 1, 1))">
			<xsl:text>_</xsl:text>
		</xsl:if>
		<xsl:value-of select="translate($attr_value, ':', '_')"/>
	</xsl:template>-->
   <!-- WPK: this template is correct and tested -->
   <!--<xsl:template match="@id">
		<!-\- This template creates @xml:id target from @id source.  For any non-specific cases of @id.
                    For specific other use cases of @id, use more specific match, such as "refpt/@id".  -\->
		<xsl:attribute name="xml:id">
			<xsl:call-template name="parse_id">
				<xsl:with-param name="attr_value" select="."/>
			</xsl:call-template>
		</xsl:attribute>
	</xsl:template>-->
   <!-- Vikas Rohilla : Updated the template Removed the double slash	-->
   <!-- 2017-10-04 - MDS:  This should not be used.  Instead use the xml_lang named template -->
   <!--	<xsl:template name="xml_lang_HK">
		<!-\- This template creates @xml:lang from doc-lang and doc-country only for HK stream-\->
		<xsl:attribute name="xml:lang" select="concat(docinfo/docinfo:doc-lang/@lang, '-', docinfo/docinfo:doc-country/@iso-cc)"/>
	</xsl:template>-->
   <!-- WPK: this doc-lang template is correct and tested -->
   <xsl:template match="docinfo:doc-lang/@lang">
      <xsl:value-of select="."/>
   </xsl:template>
   <!-- WPK: this doc-country template is correct and tested -->
   <xsl:template match="docinfo:doc-country/@iso-cc">
      <xsl:value-of select="."/>
   </xsl:template>
   <!-- <topicref href="../../../common_newest/Rosetta_XML_Character_Entities-LxAdv-Unicode.dita"/> -->   <xd:doc>
      <xd:desc>
         <xd:p>
            <xd:b>Instructions</xd:b>
         </xd:p>
         <xd:p>Throughout these instructions, XML character entities are used in both the source and target
						examples to ensure they are easily viewable in a variety of formats. However, please
						keep in mind that <xd:b>
               <xd:i>all XML character entities in the source files must be
								converted to Unicode code points in the target files.</xd:i>
            </xd:b>
         </xd:p>
         <xd:p>
            <xd:b>Note: </xd:b>
            <xd:p>Certain XML character entities will be interpreted by the ‘browser’ or
							‘Database’ as code, rather than literal (Unicode exact) character. Therefore, we
							should not convert certain xml character entities to Unicode character. Refer
							the below table for your reference:</xd:p>
            <xd:ol>
               <xd:li>
                  <xd:b>XML Character Entity</xd:b>
               </xd:li>
               <xd:li>
                  <xd:b>Character name</xd:b>
               </xd:li>
               <xd:li>
                  <xd:b>Transformation Output</xd:b>
               </xd:li>
               <xd:li>
                  <xd:b> Remarks </xd:b>
               </xd:li>
               <xd:li> &amp;lt; </xd:li>
               <xd:li> Less-Than Sign </xd:li>
               <xd:li> &amp;lt; </xd:li>
               <xd:li/>
               <xd:li> &amp;gt; </xd:li>
               <xd:li> Greater-Than Sign </xd:li>
               <xd:li> &amp;gt; </xd:li>
               <xd:li/>
               <xd:li> &amp;amp; </xd:li>
               <xd:li> Ampersand </xd:li>
               <xd:li> &amp;amp; </xd:li>
               <xd:li/>
               <xd:li> &amp;apos; </xd:li>
               <xd:li> Apostrophe </xd:li>
               <xd:li> '   </xd:li>
               <xd:li>If part of PCDATA this should be converted
										otherwise left as is in case of attribute value.</xd:li>
               <xd:li> &amp;quot; </xd:li>
               <xd:li> Quotation Mark </xd:li>
               <xd:li> " </xd:li>
               <xd:li>If part of PCDATA this should be converted
										otherwise left as is in case of attribute value.</xd:li>
            </xd:ol>
         </xd:p>
         <!--Changes2013-08-08: This change does not represent a change to
							conversion but rather documentation of the existing behavior.2011-12-22: Created.-->
      </xd:desc>
   </xd:doc>
   <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_XML_Character_Entities-LxAdv-Unicode.dita  -->
   <!--xsl:template match="*/text()[ contains( . , '&apos;' ) or contains( . , '&quot;' ) ]">
		<xsl:variable name="quoteLiterals" as="xs:string">'"</xsl:variable-->
   <!--  Original Target XPath:  Unicodecodepoints   -->
   <!--xsl:value-of select=" translate( . , '&apos;&quot;' , $quoteLiterals ) "/>

	</xsl:template-->
   <!-- <topicref href="../../../common_newest/Rosetta_Elements-LxAdv-Maintain_Sequential_Order.dita"/> -->
   <xd:doc>
      <xd:desc>
         <xd:p>
            <xd:b>Instructions</xd:b>
         </xd:p>
         <xd:p>Each source element should be converted to its associated target element such that
					the target element will occur in the target document in the same relative order as
					its respective source element did in the source document, so long as <xd:i>the target
						schema does not require a specific order for that target element within that
						target element's parent element</xd:i> (first exception), and <xd:i>there are no other
						instructions regarding the moving of that target element</xd:i> (second exception).
					In other words, when converting elements from the source documents, the order of
					elements as they are encountered in the source documents should in general be
					maintained whenever possible, subject to the two important exceptions mentioned in
					the previous sentence and elaborated below. </xd:p>
         <xd:p>Note that according to this rule, the order of particular target elements within a
					parent target element may be different than the order that these elements are
					listed, noted or otherwise mentioned in these instructions. This includes situations
					when a set of child target elements are specified in these instructions as items in
					a list following instructions regarding the parent target element; the order of the
					items dictates the order that the target elements should occur.</xd:p>
         <xd:p>
            <xd:b>Elaboration regarding first exception:</xd:b> there are ordering constraints imposed
					by the target schema for some elements, requiring that target child elements must
					occur in a certain order within target parent elements, and this order may differ
					from the order of their corresponding source elements in the source documents. In
					this case, the constraints imposed by the target schema must be respected.</xd:p>
         <xd:p>
            <xd:b>Elaboration regarding second exception:</xd:b> there will be occasional scenarios
					when the source elements must not only be converted to particular target elements,
					but must also be shifted to specifically different locations within in the target
					documents. These scenarios will be explicitly mentioned for the source and target
					elements affected and must override the general rule to maintain element order.</xd:p>
         <xd:p>
            <xd:b>Processing Instructions</xd:b>
         </xd:p>
         <xd:p> In the source content there may be <xd:b>processing instructions</xd:b>. For example
					&lt;?page.*?&gt;. If a processing instruction is encountered it should be
					suppressed and not converted into the output.</xd:p>
         <!--Changes2012-01-19: Created. 2012-05-10: Added instruction for Processing Instructions. 2012-05-15: Adjusted the language for the instruction.-->
      </xd:desc>
   </xd:doc>
   <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_Elements-LxAdv-Maintain_Sequential_Order.dita  -->
   <xsl:template match="processing-instruction()" priority="25"/>
   <!-- <topicref href="../../../common_newest/Rosetta_whitespace-LxAdv-preserve_whitespace.dita"/> -->   <xd:doc>
      <xd:desc>
         <xd:p>
            <xd:b>Instructions</xd:b>
         </xd:p>
         <xd:p>All significant whitespace characters (i.e. newlines, spaces, tabs, non-breaking spaces, etc. in data content or mixed content in elements) should be preserved. No significant whitespace should be added, removed or altered. In some cases, an element that contains only whitespace in the input may be stripped from the output by specific instruction; in those cases, both the tags and the whitespace should be removed.</xd:p>
         <!--Changes2012-06-07: Created. -->
      </xd:desc>
   </xd:doc>
   <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_whitespace-LxAdv-preserve_whitespace.dita  -->
   <!-- THIS IS INFORMATIONAL ONLY AND NEVER EVER EVER STRIP SPACE FOR EVERY ELEMENT.  -->
   <!-- <topicref href="../../../common_newest/Rosetta_Elements-LxAdv-Empty_Elements.dita"/> -->
   <xd:doc>
      <xd:desc>
         <xd:p>
            <xd:b>Instructions</xd:b>
         </xd:p>
         <xd:p>
            <xd:b>Suppress empty elements unless:</xd:b>
         </xd:p>
         <xd:ol>
            <xd:li> It results in an invalid document. </xd:li>
            <xd:li> It is expressly exempted. </xd:li>
            <xd:li> It has attributes. </xd:li>
         </xd:ol>
         <xd:p>
            <xd:b>Note: </xd:b>The intent is to suppress meaningless markup (no semantic, formatting or other
					meaning). Not intended to cause re-evaluation of parent elements, i.e. do not go "up
					the tree".</xd:p>
         <xd:p>
            <xd:b>List of elements to suppress if empty</xd:b>
         </xd:p>
         <xd:ul>
            <xd:li>base:aliased-text</xd:li>
            <xd:li>base:altdesig</xd:li>
            <xd:li>base:alttitle</xd:li>
            <xd:li>base:byline</xd:li>
            <xd:li>base:connector</xd:li>
            <xd:li>base:copyright</xd:li>
            <xd:li>base:copyright-holder</xd:li>
            <xd:li>base:copyright-year</xd:li>
            <xd:li>base:credit</xd:li>
            <xd:li>base:currencystatement</xd:li>
            <xd:li>base:date</xd:li>
            <xd:li>base:date-text</xd:li>
            <xd:li>base:defterm</xd:li>
            <xd:li>base:denom</xd:li>
            <xd:li>base:desig</xd:li>
            <xd:li>base:desigrange</xd:li>
            <xd:li>base:emph</xd:li>
            <xd:li>base:formula</xd:li>
            <xd:li>base:h</xd:li>
            <xd:li>base:inlinenote</xd:li>
            <xd:li>base:label</xd:li>
            <xd:li>base:modified-word</xd:li>
            <xd:li>base:money</xd:li>
            <xd:li>base:num</xd:li>
            <xd:li>base:numer</xd:li>
            <xd:li>base:population</xd:li>
            <xd:li>base:redaction</xd:li>
            <xd:li>base:refnum</xd:li>
            <xd:li>base:role</xd:li>
            <xd:li>base:strike</xd:li>
            <xd:li>base:sub</xd:li>
            <xd:li>base:subtitle</xd:li>
            <xd:li>base:sup</xd:li>
            <xd:li>base:text</xd:li>
            <xd:li>base:textitem</xd:li>
            <xd:li>base:time</xd:li>
            <xd:li>base:title</xd:li>
            <xd:li>base:url</xd:li>
            <xd:li>contact:email</xd:li>
            <xd:li>contact:fax</xd:li>
            <xd:li>contact:phone</xd:li>
            <xd:li>doc:bookseqnum</xd:li>
            <xd:li>doc:processes</xd:li>
            <xd:li>location:address.line</xd:li>
            <xd:li>location:borough</xd:li>
            <xd:li>location:city</xd:li>
            <xd:li>location:country</xd:li>
            <xd:li>location:county</xd:li>
            <xd:li>location:location</xd:li>
            <xd:li>location:po-box</xd:li>
            <xd:li>location:post-office-name</xd:li>
            <xd:li>location:postalcode</xd:li>
            <xd:li>location:province</xd:li>
            <xd:li>location:region</xd:li>
            <xd:li>location:state</xd:li>
            <xd:li>location:street</xd:li>
            <xd:li>location:sublocation</xd:li>
            <xd:li>location:territory</xd:li>
            <xd:li>person:contributor</xd:li>
            <xd:li>person:degreetype</xd:li>
            <xd:li>person:employer</xd:li>
            <xd:li>person:fieldofstudy</xd:li>
            <xd:li>person:name.degree</xd:li>
            <xd:li>person:name.discrim</xd:li>
            <xd:li>person:name.family</xd:li>
            <xd:li>person:name.given</xd:li>
            <xd:li>person:name.honorific</xd:li>
            <xd:li>person:name.maiden</xd:li>
            <xd:li>person:name.mid</xd:li>
            <xd:li>person:name.nickname</xd:li>
            <xd:li>person:name.other</xd:li>
            <xd:li>person:name.prefix</xd:li>
            <xd:li>person:name.suffix</xd:li>
            <xd:li>person:name.text</xd:li>
            <xd:li>pubinfo:aggregationname</xd:li>
            <xd:li>pubinfo:edition</xd:li>
            <xd:li>pubinfo:isbn</xd:li>
            <xd:li>pubinfo:issn</xd:li>
            <xd:li>pubinfo:issue</xd:li>
            <xd:li>pubinfo:issuedate</xd:li>
            <xd:li>pubinfo:lccn</xd:li>
            <xd:li>pubinfo:pubdate</xd:li>
            <xd:li>pubinfo:publength</xd:li>
            <xd:li>pubinfo:publicationname</xd:li>
            <xd:li>pubinfo:publicationnum</xd:li>
            <xd:li>pubinfo:publicationsubtitle</xd:li>
            <xd:li>pubinfo:publisher</xd:li>
            <xd:li>pubinfo:pubunit</xd:li>
            <xd:li>pubinfo:relatedpublicationcite</xd:li>
            <xd:li>pubinfo:update</xd:li>
            <xd:li>pubinfo:volume</xd:li>
         </xd:ul>
         <!--Changes2014-01-16: Added list of elements to suppress if empty.2013-10-14: Changed antecedent to singular to match
						instructions.2013-03-28: Created.-->
      </xd:desc>
   </xd:doc>
   <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_Elements-LxAdv-Empty_Elements.dita  -->
   <!--xsl:template match="	base:aliased-text[ . = '' ][not( @* )] |
										base:altdesig[ . = '' ][not( @* )] |
										base:alttitle[ . = '' ][not( @* )] |
										base:byline[ . = '' ][not( @* )] |
										base:connector[ . = '' ][not( @* )] |
										base:copyright[ . = '' ][not( @* )] |
										base:copyright-holder[ . = '' ][not( @* )] |
										base:copyright-year[ . = '' ][not( @* )] |
										base:credit[ . = '' ][not( @* )] |
										base:currencystatement[ . = '' ][not( @* )] |
										base:date[ . = '' ][not( @* )] |
										base:date-text[ . = '' ][not( @* )] |
										base:defterm[ . = '' ][not( @* )] |
										base:denom[ . = '' ][not( @* )] |
										base:desig[ . = '' ][not( @* )] |
										base:desigrange[ . = '' ][not( @* )] |
										base:emph[ . = '' ][not( @* )] |
										base:formula[ . = '' ][not( @* )] |
										base:h[ . = '' ][not( @* )] |
										base:inlinenote[ . = '' ][not( @* )] |
										base:label[ . = '' ][not( @* )] |
										base:modified-word[ . = '' ][not( @* )] |
										base:money[ . = '' ][not( @* )] |
										base:num[ . = '' ][not( @* )] |
										base:numer[ . = '' ][not( @* )] |
										base:population[ . = '' ][not( @* )] |
										base:redaction[ . = '' ][not( @* )] |
										base:refnum[ . = '' ][not( @* )] |
										base:role[ . = '' ][not( @* )] |
										base:strike[ . = '' ][not( @* )] |
										base:sub[ . = '' ][not( @* )] |
										base:subtitle[ . = '' ][not( @* )] |
										base:sup[ . = '' ][not( @* )] |
										base:text[ . = '' ][not( @* )] |
										base:textitem[ . = '' ][not( @* )] |
										base:time[ . = '' ][not( @* )] |
										base:title[ . = '' ][not( @* )] |
										base:url[ . = '' ][not( @* )] |
										contact:email[ . = '' ][not( @* )] |
										contact:fax[ . = '' ][not( @* )] |
										contact:phone[ . = '' ][not( @* )] |
										doc:bookseqnum[ . = '' ][not( @* )] |
										doc:processes[ . = '' ][not( @* )] |
										location:address.line[ . = '' ][not( @* )] |
										location:borough[ . = '' ][not( @* )] |
										location:city[ . = '' ][not( @* )] |
										location:country[ . = '' ][not( @* )] |
										location:county[ . = '' ][not( @* )] |
										location:location[ . = '' ][not( @* )] |
										location:po-box[ . = '' ][not( @* )] |
										location:post-office-name[ . = '' ][not( @* )] |
										location:postalcode[ . = '' ][not( @* )] |
										location:province[ . = '' ][not( @* )] |
										location:region[ . = '' ][not( @* )] |
										location:state[ . = '' ][not( @* )] |
										location:street[ . = '' ][not( @* )] |
										location:sublocation[ . = '' ][not( @* )] |
										location:territory[ . = '' ][not( @* )] |
										person:contributor[ . = '' ][not( @* )] |
										person:degreetype[ . = '' ][not( @* )] |
										person:employer[ . = '' ][not( @* )] |
										person:fieldofstudy[ . = '' ][not( @* )] |
										person:name.degree[ . = '' ][not( @* )] |
										person:name.discrim[ . = '' ][not( @* )] |
										person:name.family[ . = '' ][not( @* )] |
										person:name.given[ . = '' ][not( @* )] |
										person:name.honorific[ . = '' ][not( @* )] |
										person:name.maiden[ . = '' ][not( @* )] |
										person:name.mid[ . = '' ][not( @* )] |
										person:name.nickname[ . = '' ][not( @* )] |
										person:name.other[ . = '' ][not( @* )] |
										person:name.prefix[ . = '' ][not( @* )] |
										person:name.suffix[ . = '' ][not( @* )] |
										person:name.text[ . = '' ][not( @* )] |
										pubinfo:aggregationname[ . = '' ][not( @* )] |
										pubinfo:edition[ . = '' ][not( @* )] |
										pubinfo:isbn[ . = '' ][not( @* )] |
										pubinfo:issn[ . = '' ][not( @* )] |
										pubinfo:issue[ . = '' ][not( @* )] |
										pubinfo:issuedate[ . = '' ][not( @* )] |
										pubinfo:lccn[ . = '' ][not( @* )] |
										pubinfo:pubdate[ . = '' ][not( @* )] |
										pubinfo:publength[ . = '' ][not( @* )] |
										pubinfo:publicationname[ . = '' ][not( @* )] |
										pubinfo:publicationnum[ . = '' ][not( @* )] |
										pubinfo:publicationsubtitle[ . = '' ][not( @* )] |
										pubinfo:publisher[ . = '' ][not( @* )] |
										pubinfo:pubunit[ . = '' ][not( @* )] |
										pubinfo:relatedpublicationcite[ . = '' ][not( @* )] |
										pubinfo:update[ . = '' ][not( @* )] |
										pubinfo:volume[ . = '' ][not( @* )]"/-->
   <!-- topic: Topic Identifiers -->
   <!-- <topicref href="../../../common_newest/Rosetta_Topic_Identifiers.dita"/> -->
   <xd:doc>
      <xd:desc>
         <xd:p>
            <xd:b>Instructions</xd:b>
         </xd:p>
         <xd:p>All topics in this conversion instruction document contain persistent identifiers.  They will appear
					next to the title for example: 
					<xd:ul>
               <xd:li>case:headnote (id-CA01-d330e3)</xd:li>
               <xd:li>alttitle to alttitle (id-CCCC-d57e3)</xd:li>
            </xd:ul>
         </xd:p>
         <xd:p>They will take the form of (id<xd:b>-</xd:b>[<xd:i>stream id or common rule</xd:i>]<xd:b>-</xd:b>[<xd:i>unique id</xd:i>]) and have the 
					following characteristics:</xd:p>
         <xd:ul>
            <xd:li>IDs for a specific stream topic e.g. (id-AU01-d730e3) will occur only in a
						single CI document -- AU01 for this example.</xd:li>
            <xd:li>IDs for common reusable topics e.g. (id-CCCC-d57e3) will occur in many CI
						documents according to its reuse. While the ID is unique across all LNI topics, the
						topic itself is repeated along with the ID in numerous CI documents.</xd:li>
         </xd:ul>
         <!--Changes2014-05-02: Created.-->
      </xd:desc>
   </xd:doc>
   <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_Topic_Identifiers.dita  -->
   <!-- end topicref  Introduction.dita  -->
   <!--<topichead navtitle="Head">
		<topicref href="case.headnote.dita"/>
	</topichead>-->
   <!-- start topichead  Body  -->
   <!-- <topicref href="Body.dita"/> -->
   <xd:doc>
      <xd:desc>
         <xd:p>
            <xd:i>dig:body</xd:i> becomes <xd:b>seclaw:body</xd:b>
         </xd:p>
         <xd:p>
            <xd:b>seclaw:body</xd:b> element requires at least one of the following child
        elements: </xd:p>
         <xd:p>
            <xd:b>seclaw:level</xd:b>, <xd:b>seclaw:appendix</xd:b>,
          <xd:b>seclaw:digestgrp</xd:b>, <xd:b>seclaw:supplement</xd:b>,
          <xd:b>form:form</xd:b>, <xd:b>toc</xd:b>,
          <xd:b>unitscope</xd:b>, <xd:b>pubfm:pubfm</xd:b>,
          <xd:b>pubup:pubup</xd:b> and <xd:b>index:index</xd:b>. </xd:p>
      </xd:desc>
   </xd:doc>
   <!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
   <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA02-Case_Summaries\CA02DS_DIGESTDOC_to_seclaw\Body.dita  -->
   <!--<xsl:message>CA02DS_DIGESTDOC_to_seclaw_Body.xsl requires manual development!</xsl:message>-->
   <!-- Vikas Rohilla : Template to match the dig:body and create seclaw:body   -->
   <xsl:template match="dig:body">
      <seclaw:body>
         <xsl:apply-templates select="@* | node()"/>
      </seclaw:body>
   </xsl:template>
   <!-- <topicref href="abbrvname.dita"/> -->   <xd:doc>
      <xd:desc>
         <xd:ul>
            <xd:li>
               <xd:i>abbrvname</xd:i> becomes <xd:b>jurisinfo:courtname@normshortname</xd:b> and also
                        <xd:b>jurisinfo:alternatecourtcode@alternatecourtcode</xd:b>. <xd:pre>
&lt;dig:body&gt;
  &lt;dig:collection&gt;
    &lt;dig:level&gt;
      &lt;dig:item&gt;
        &lt;dig:info&gt;
          &lt;case:info&gt;
            &lt;case:courtinfo&gt;
              &lt;abbrvname ln.user-displayed="false"&gt;SKProvCt&lt;/abbrvname&gt;
            &lt;/case:courtinfo&gt;
          &lt;/case:info&gt;
        &lt;/dig:info&gt;
      &lt;/dig:item&gt;
    &lt;/dig:level&gt;
  &lt;/dig:collection&gt;
&lt;/dig:body&gt;
</xd:pre>
               <xd:b>Becomes</xd:b>
               <xd:pre>
&lt;seclaw:body&gt;
  &lt;seclaw:level&gt;
    &lt;seclaw:bodytext&gt;
      &lt;seclaw:digestgrp&gt;
        &lt;seclaw:digest&gt;
          &lt;seclaw:digestinfo&gt;
            &lt;caseinfo:caseinfo&gt;
              &lt;jurisinfo:courtinfo&gt;
                &lt;jurisinfo:alternatecourtcode alternatecourtcode="SKProvCt"/&gt;
                &lt;jurisinfo:courtname normshortname="SKProvCt"&gt;Saskatchewan Provincial Court Small Claims Court&lt;/jurisinfo:courtname&gt;
              &lt;/jurisinfo:courtinfo&gt;
            &lt;/caseinfo:caseinfo&gt;
          &lt;/seclaw:digestinfo&gt;
        &lt;/seclaw:digest&gt;
      &lt;/seclaw:digestgrp&gt;
    &lt;/seclaw:bodytext&gt;
  &lt;/seclaw:level&gt;
&lt;/seclaw:body&gt;
</xd:pre>
               <xd:p>
                  <xd:b>Note: </xd:b>@ln.user-displayed is ignored in the conversion of this element.</xd:p>
            </xd:li>
         </xd:ul>
         <!--Changes2014-10-22 Updated CI for abbrvname to also be placed in
                        jurisinfo:alternatecourtcode@alternatecourtcode...R4.5 Db issue #1987-->
      </xd:desc>
   </xd:doc>
   <!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
   <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA02-Case_Summaries\CA02DS_DIGESTDOC_to_seclaw\abbrvname.dita  -->
   <!--	 Vikas Rohilla : Template to match the abbrvname and creates the caseinfo:casename/caseinfo:shortcasename-->
   <xsl:template match="abbrvname">
      <caseinfo:casename>
         <caseinfo:shortcasename>
            <xsl:apply-templates select="@* | node()"/>
         </caseinfo:shortcasename>
      </caseinfo:casename>
   </xsl:template>
   <!-- <topicref href="abstract.dita"/> -->   <xd:doc>
      <xd:desc>
         <xd:ul>
            <xd:li>
               <xd:i>abstract</xd:i> becomes <xd:b>abstract</xd:b>. <xd:pre>


&lt;abstract&gt;
       ....
       ....
&lt;/abstract&gt; 

                    </xd:pre>
               <xd:b>Becomes</xd:b>
               <xd:pre>
    

&lt;abstract&gt;
       ....
       ....
&lt;/abstract&gt; 

               </xd:pre>
               <xd:p>
                  <xd:b>Note: </xd:b>Rosetta element <xd:i>catchwordgrp</xd:i> occurs under
                            <xd:i>abstract/catchwordgrp</xd:i> with only child is a data
                        error. Rosetta element <xd:i>abstract</xd:i> contains only and
                        only catchwordgrp and not any other siblings within it. So, conversion need
                        to omit the abstract, and child element classification(with all its children
                        and contents) will be converted as child of
                            <xd:b>caseinfo:caseinfo</xd:b>. So follow below instructions. </xd:p>
               <xd:b>Rosetta Input:</xd:b>
               <xd:p>
                  <xd:i>/DIGESTDOC/dig:body/dig:collection/dig:level/dig:item/abstract/catchwordgrp/catchwords</xd:i>
               </xd:p>
               <xd:b>NL Output:</xd:b>
               <xd:p>
                  <xd:b>/seclaw:seclaw/seclaw:body/seclaw:level/seclaw:bodytext/seclaw:digestgrp/seclaw:digest/seclaw:digestinfo/caseinfo:caseinfo/classify:classification[@classscheme="catchwords"]</xd:b>
               </xd:p>
               <xd:pre>
                  <xd:b>Rosetta Input:</xd:b>
          

&lt;dig:item&gt;
    &lt;abstract&gt;
        &lt;catchwordgrp&gt;
            &lt;catchwords&gt;
                &lt;catchphrase&gt;&lt;emph typestyle="bf"&gt;Benefits and claims&lt;/emph&gt;&lt;/catchphrase&gt;
                &lt;catchphrase&gt;&lt;emph typestyle="bf" &gt;Benefits&lt;/emph&gt;&lt;/catchphrase&gt;
                &lt;catchphrase&gt;&lt;emph typestyle="bf"&gt;Special benefits&lt;/emph&gt;&lt;/catchphrase&gt;
                &lt;catchphrase&gt;&lt;emph typestyle="bf"&gt;Parental&lt;/emph&gt;&lt;/catchphrase&gt;
                &lt;catchphrase&gt;&lt;emph typestyle="bf"&gt;Canadian Charter of Rights and Freedoms, 1982, s. 15&lt;/emph&gt;&lt;/catchphrase&gt;
                &lt;catchphrase&gt;&lt;emph typestyle="bf"&gt;Unemployment Insurance Act, 
                    &lt;ci:cite&gt;
                        &lt;ci:case&gt;
                            &lt;ci:caseref ID="cref00004881" spanref="cspan00004881"&gt;
                                &lt;ci:reporter country="US" value="S.C." normpubcode="463"/&gt;
                                &lt;ci:edition&gt;
                                    &lt;ci:date year="1971"/&gt;
                                &lt;/ci:edition&gt;
                                &lt;ci:page num="1970"/&gt;
                            &lt;/ci:caseref&gt;
                        &lt;/ci:case&gt;
                        &lt;ci:content&gt;
                            &lt;ci:span spanid="cspan00004881"&gt;1971, S.C. 1970&lt;/ci:span&gt;
                        &lt;/ci:content&gt;
                    &lt;/ci:cite&gt;-71-72, c. 48, ss. 22(3)(a), 30, 32&lt;/emph&gt;
                &lt;/catchphrase&gt;
            &lt;/catchwords&gt;
        &lt;/catchwordgrp&gt;
    &lt;/abstract&gt;
    ..........
    ..........
&lt;/dig:item&gt;          


<xd:b>NL Output:</xd:b>
          

&lt;seclaw:digest&gt;
    &lt;seclaw:digestinfo&gt;
        &lt;caseinfo:caseinfo&gt;
            &lt;classify:classification classscheme="catchwords"&gt;
                &lt;classify:classitem&gt;
                    &lt;classify:classitem-identifier&gt;
                        &lt;classify:classname&gt;&lt;emph typestyle="bf"&gt;Benefits and claims&lt;/emph&gt;&lt;/classify:classname&gt;
                    &lt;/classify:classitem-identifier&gt;
                &lt;/classify:classitem&gt;
                &lt;classify:classitem&gt;
                    &lt;classify:classitem-identifier&gt;
                        &lt;classify:classname&gt;&lt;emph typestyle="bf"&gt;Benefits&lt;/emph&gt;&lt;/classify:classname&gt;
                    &lt;/classify:classitem-identifier&gt;
                &lt;/classify:classitem&gt;
                &lt;classify:classitem&gt;
                    &lt;classify:classitem-identifier&gt;
                        &lt;classify:classname&gt;&lt;emph typestyle="bf"&gt;Special benefits&lt;/emph&gt;&lt;/classify:classname&gt;
                    &lt;/classify:classitem-identifier&gt;
                &lt;/classify:classitem&gt;
                &lt;classify:classitem&gt;
                    &lt;classify:classitem-identifier&gt;
                        &lt;classify:classname&gt;&lt;emph typestyle="bf"&gt;Parental&lt;/emph&gt;&lt;/classify:classname&gt;
                    &lt;/classify:classitem-identifier&gt;
                &lt;/classify:classitem&gt;
                &lt;classify:classitem&gt;
                    &lt;classify:classitem-identifier&gt;
                        &lt;classify:classname&gt;&lt;emph typestyle="bf"&gt;Canadian Charter of Rights and Freedoms, 1982, s. 15&lt;/emph&gt;&lt;/classify:classname&gt;
                    &lt;/classify:classitem-identifier&gt;
                &lt;/classify:classitem&gt;
                &lt;classify:classitem&gt;
                    &lt;classify:classitem-identifier&gt;
                        &lt;classify:classname&gt;&lt;emph typestyle="bf"&gt;Unemployment Insurance Act, 
                            &lt;lnci:cite&gt;
                                &lt;lnci:case&gt;
                                    &lt;lnci:caseref ID="cref00004881"&gt;
                                        &lt;lnci:reporter country="US" value="S.C." normpubcode="463"/&gt;
                                        &lt;lnci:edition&gt;
                                            &lt;lnci:date year="1971"/&gt;
                                        &lt;/lnci:edition&gt;
                                        &lt;lnci:page num="1970"/&gt;
                                    &lt;/lnci:caseref&gt;
                                &lt;/lnci:case&gt;
                                &lt;lnci:content&gt;1971, S.C. 1970&lt;/lnci:content&gt;
                            &lt;/lnci:cite&gt;-71-72, c. 48, ss. 22(3)(a), 30, 32&lt;/emph&gt;
                        &lt;/classify:classname&gt;
                    &lt;/classify:classitem-identifier&gt;
                &lt;/classify:classitem&gt;
            &lt;/classify:classification&gt;
        &lt;/caseinfo:caseinfo&gt;
    &lt;/seclaw:digestinfo&gt;
    .........
    .........
&lt;/seclaw:digest&gt;          

       </xd:pre>
            </xd:li>
         </xd:ul>
      </xd:desc>
   </xd:doc>
   <!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
   <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA02-Case_Summaries\CA02DS_DIGESTDOC_to_seclaw\abstract.dita  -->
   <!-- Vikas Rohilla : Template to match the abstract and creates the abstract  -->
   <!--    for the nonamespace  include in the target element-->
   <xsl:template match="abstract">
      <abstract>
         <xsl:apply-templates select="@* | node()"/>
      </abstract>
   </xsl:template>
   <!-- Vikas Rohilla : Template to match the abstract[child::catchwordgrp] and creates the seclaw:digestinfo/caseinfo:caseinfo  -->
   <xsl:template match="abstract[child::catchwordgrp]">
      <seclaw:digestinfo>
         <caseinfo:caseinfo>
            <xsl:apply-templates select="@* | node()"/>
         </caseinfo:caseinfo>
      </seclaw:digestinfo>
   </xsl:template>
   <!-- <topicref href="case.headnote.dita"/> -->   <xd:doc>
      <xd:desc>
         <xd:ul>
            <xd:li>
               <xd:i>case:headnote</xd:i> becomes
                  <xd:b>courtcase:caseexcerpt/courtcase:head</xd:b>. <xd:pre>
&lt;case:embeddedcase&gt;
    &lt;case:headnote&gt;
      .......
      .......
   &lt;/case:headnote&gt;
&lt;case:embeddedcase&gt;
                    </xd:pre>
               <xd:b>Becomes</xd:b>
               <xd:pre>
    
&lt;courtcase:caseexcerpt&gt;
   &lt;courtcase:head&gt;
      .......
      ....... 
   &lt;/courtcase:head&gt;
&lt;/courtcase:caseexcerpt&gt;

</xd:pre>
            </xd:li>
         </xd:ul>
         <!--Changes2014-06-12: case:headnote instructions in CI.. DB item# 221-->
      </xd:desc>
   </xd:doc>
   <!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
   <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA02-Case_Summaries\CA02DS_DIGESTDOC_to_seclaw\case.headnote.dita  -->
   <!--Vikas Rohilla : Tempalte to match the case:headnote and create the courtcase:head  -->
   <xsl:template match="case:headnote">
      <courtcase:head>
         <xsl:apply-templates select="@* | node()"/>
      </courtcase:head>
   </xsl:template>
   <!-- <topicref href="case.casename.DS.dita"/> -->   <!--<xsl:include href="../../modules/case/case.casename.DS.xsl"/>-->   <!-- <topicref href="case.casename.dita"/> -->   <xd:doc>
      <xd:desc>
         <xd:ul>
            <xd:li>
               <xd:i>case:casename</xd:i> becomes
            <xd:b>caseinfo:casename</xd:b> and
          populate the child as below: <xd:ul>
                  <xd:li>Create <xd:b>caseinfo:fullcasename</xd:b>
                  </xd:li>
               </xd:ul>
               <xd:pre>

&lt;case:casename&gt;Canada (Attorney General) v. Buckley&lt;/case:casename&gt;

            </xd:pre>
               <xd:b>Becomes</xd:b>
               <xd:pre>

&lt;caseinfo:caseinfo&gt;
  &lt;caseinfo:casename&gt;
    &lt;caseinfo:fullcasename&gt;Canada (Attorney General) v. Buckley&lt;/caseinfo:fullcasename&gt;
  &lt;/caseinfo:casename&gt;
&lt;/caseinfo:caseinfo&gt;

          </xd:pre>
               <xd:p>
                  <xd:b>Note: </xd:b>Any <xd:i>nl</xd:i> elements that occur inside
             <xd:i>case:casename</xd:i> should be suppressed if they are preceded or
             followed by a space. Any <xd:i>nl</xd:i> elements that are not preceded or
             followed by a space should be converted into a single space character.</xd:p>
               <xd:pre>

&lt;case:casename&gt;Between&lt;nl/&gt; Her Majesty the Queen, and&lt;nl/&gt; Joseph Moore&lt;/case:casename&gt;

            </xd:pre>
               <xd:b>Becomes</xd:b>
               <xd:pre>

&lt;casedigest:head&gt;
    &lt;casedigest:caseinfo&gt;
        &lt;caseinfo:casename&gt;
            &lt;caseinfo:fullcasename&gt;Between Her Majesty the Queen, and Joseph Moore&lt;/caseinfo:fullcasename&gt;
        &lt;/caseinfo:casename&gt;
    &lt;/casedigest:caseinfo&gt;
&lt;/casedigest:head&gt;

           </xd:pre>
            </xd:li>
         </xd:ul>
         <!--Changes2013-04-24: Fullcasename displayed in multiple lines under casename... "DB item #1151-->
      </xd:desc>
   </xd:doc>
   <!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
   <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA02-Case_Summaries\CA02DS_DIGESTDOC_to_seclaw\case.casename.dita  -->
   <!-- Vikas Rohilla : Template to match the case:casename and create the  caseinfo:casename/caseinfo:shortcasename-->
   <xsl:template match="case:casename">
      <caseinfo:casename>
         <caseinfo:shortcasename>
            <xsl:apply-templates select="@* | node()"/>
         </caseinfo:shortcasename>
      </caseinfo:casename>
   </xsl:template>
   <!-- AWantika:2017-12-01- Created this template for Webstar  6994049, CI doesn't say to create proc:nl
                "Any nl elements that occur inside case:casename should be suppressed if they are preceded or followed by a space. Any nl elements that
are not preceded or followed by a space should be converted into a single space character." -->
   <xsl:template match="case:casename/nl">
      <xsl:choose>
         <xsl:when test="ends-with(preceding-sibling::text()[1], ' ') or starts-with(following-sibling::text()[1], ' ')"/>
         <xsl:otherwise>
            <xsl:text> </xsl:text>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <!-- <topicref href="case.constituents.dita"/> -->   <xd:doc>
      <xd:desc>
         <xd:p>In Rosetta samples element <xd:i>case:constituents/case:constituent</xd:i>
                occurs with attribute <xd:i>case:constituent/@constituenttype</xd:i> which
                contains as given below: <xd:ul>
               <xd:li>case:constituent[@constituenttype=”counsel”]</xd:li>
            </xd:ul>
         </xd:p>
         <xd:ul>
            <xd:li>
               <xd:i>case:constituent[@constituenttype=”counsel”]</xd:i> becomes
                        <xd:b>/seclaw:digestinfo/caseinfo:caseinfo/courtcase:representation/courtcase:counsel
                    </xd:b>. <xd:ul>
                  <xd:li>
                     <xd:i>case:constituent</xd:i> becomes
                                <xd:b>courtcase:counsel</xd:b>
                  </xd:li>
               </xd:ul>
               <xd:pre>

&lt;case:info&gt;
    &lt;case:constituents&gt;
        &lt;case:constituent  constituenttype="counsel"&gt;Robert G. DeBou, for the plaintiff Robert B. Kennedy Moira C. Wong, for the defendants.&lt;/case:constituent&gt;
    &lt;/case:constituents&gt;
&lt;/case:info&gt;

                    </xd:pre>
               <xd:b>Becomes</xd:b>
               <xd:pre>

&lt;seclaw:digestinfo&gt;
    &lt;caseinfo:caseinfo&gt;
            &lt;courtcase:representation&gt;
                &lt;courtcase:counsel&gt;Robert G. DeBou, for the plaintiff Robert B. Kennedy Moira C. Wong, for the defendants.&lt;/courtcase:counsel&gt;
            &lt;/courtcase:representation&gt;
    &lt;/caseinfo:caseinfo&gt;
&lt;/seclaw:digestinfo&gt;

</xd:pre>
            </xd:li>
         </xd:ul>
         <!--Changes2013-11-25: Corrected the Snippet.-->
      </xd:desc>
   </xd:doc>
   <!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
   <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA02-Case_Summaries\CA02DS_DIGESTDOC_to_seclaw\case.constituents.dita  -->
   <!-- Vikas Rohilla : Template to match the case:constituents and the process the child nodes	-->
   <xsl:template match="case:constituents">
      <xsl:apply-templates select="@*|node()"/>
   </xsl:template>
   <!-- Vikas Rohilla : template to match the case:case:constituents [@constituenttype = 'counsel'] and creats the courtcase:representation/courtcase:counsel  -->
   <xsl:template match="case:constituent[@constituenttype = 'counsel']">
      <courtcase:representation>
         <courtcase:counsel>
            <xsl:apply-templates select="@* | node()"/>
         </courtcase:counsel>
      </courtcase:representation>
   </xsl:template>
   <!-- Vikas Rohilla : template to match the case:case:constituents [@constituenttype = 'consultant'] and creats the courtcase:testimony/courtcase:expertwitnesses/courtcase:expertwitness  -->
   <xsl:template match="case:constituent[@constituenttype = 'consultant']">
      <courtcase:testimony>
         <courtcase:expertwitnesses>
            <courtcase:expertwitness>
               <xsl:apply-templates select="@* | node()"/>
            </courtcase:expertwitness>
         </courtcase:expertwitnesses>
      </courtcase:testimony>
   </xsl:template>
   <!--Vikas Rohilla : Template to match the p[parent::case:constituents] and process the childs nodes-->
   <xsl:template match="p[parent::case:constituents]">
      <xsl:apply-templates select="@* | node()"/>
   </xsl:template>
   <!--Vikas Rohilla : Template to match the text[parent::case:constituents] and process the childs nodes-->
   <xsl:template match="text[ancestor::case:constituents]">
      <xsl:apply-templates select="@* | node()"/>
   </xsl:template>
   <!--Vikas Rohilla : supressed case:constituent/@constituenttype -->
   <xsl:template match="case:constituent/@constituenttype"/>
   <!-- <topicref href="case.courtcode.dita"/> -->   <xd:doc>
      <xd:desc>
         <xd:ul>
            <xd:li>
               <xd:i>case:courtcode</xd:i> becomes
            <xd:b>doc:legacy-metadata/meta/metaitem</xd:b> and the attributes will be
          populated as <xd:b>@name="case:courtcode"</xd:b> and
            <xd:b>@value</xd:b> will be the value of
          <xd:i>case:courtcode</xd:i>. <xd:pre>
&lt;case:courtinfo&gt;
  &lt;case:courtcode&gt;NFSC&lt;/case:courtcode&gt;
&lt;/case:courtinfo&gt;

<xd:b>Becomes</xd:b>

&lt;doc:legacy-metadata metadatasource="lbu-meta"&gt;
    &lt;meta&gt;
        &lt;metaitem name="case:courtcode" value="NFSC"&gt;
    &lt;/meta&gt;
&lt;/doc:legacy-metadata&gt;
</xd:pre>
               <!--  <note>For handling <sourcexml>@ln.user-displayed</sourcexml> attribute, please refer to
              <xref href="../../../common_newest/Rosetta_case.courtcode_ln.user-displayed.dita"
              >Rosetta_case.courtcode_ln.user-displayed</xref> in General Markup section of the
            CI.</note> -->
            </xd:li>
         </xd:ul>
         <!--Changes2014-11-11: Updated the mapping for
         case:courtcode, schema issue for
         jurisinfo:alternatecourtcode....Db issue #361 -->
      </xd:desc>
   </xd:doc>
   <!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
   <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA02-Case_Summaries\CA02DS_DIGESTDOC_to_seclaw\case.courtcode.dita  -->
   <!-- Vikas Rohilla : Template to match the case:courtcode nad creates the jurisinfo:alternatecourtcode -->
   <xsl:template match="case:courtcode">
      <jurisinfo:alternatecourtcode>
         <xsl:attribute name="alternatecourtcode">
            <xsl:apply-templates select="node()"/>
         </xsl:attribute>
      </jurisinfo:alternatecourtcode>
   </xsl:template>
   <!-- Vikas Rohilla : Template to match the case:courtcode and create the metaitem in doc:metadata -->
   <xsl:template match="case:courtcode" mode="meta_item">
      <metaitem>
         <xsl:attribute name="name" select="name()"/>
         <xsl:attribute name="value" select="."/>
      </metaitem>
   </xsl:template>
   <!-- <topicref href="case.courtinfo.dita"/> -->   <xd:doc>
      <xd:desc>
         <xd:ul>
            <xd:li>
               <xd:i>case:courtinfo</xd:i> becomes <xd:b>jurisinfo:courtinfo</xd:b>
               <xd:pre>
&lt;case:courtinfo&gt;
    ..........
    ..........
&lt;/case:courtinfo&gt;

<xd:b>Becomes</xd:b>

&lt;jurisinfo:courtinfo&gt;
    ..........
    ..........
&lt;/jurisinfo:courtinfo&gt;</xd:pre>
            </xd:li>
         </xd:ul>
      </xd:desc>
   </xd:doc>
   <!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
   <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA02-Case_Summaries\CA02DS_DIGESTDOC_to_seclaw\case.courtinfo.dita  -->
   <!-- Vikas Rohilla : Template to match the case:courtinfo -->
   <xsl:template match="case:courtinfo">
      <jurisinfo:courtinfo>
         <xsl:apply-templates select="case:courtcode,case:courtname,case:juris"/>
      </jurisinfo:courtinfo>
      <xsl:apply-templates select="node()[name() != 'case:courtcode'][name() != 'case:courtname'][name() != 'case:juris'][name() != 'abbrvname']"/>
   </xsl:template>
   <!-- <topicref href="case.courtloc.dita"/> -->   <xd:doc>
      <xd:desc>
         <xd:ul>
            <xd:li>
               <xd:i>case:courtloc</xd:i> becomes
                        <xd:b>jurisinfo:courtinfo/jurisinfo:jurisdiction/jurisinfo:location/location:state</xd:b>. <xd:pre>
&lt;case:courtinfo&gt;
    &lt;case:courtloc&gt;Ontario&lt;/case:courtloc&gt;
&lt;/case:courtinfo&gt;

<xd:b>Becomes</xd:b>

&lt;caseinfo:caseinfo&gt;
    &lt;jurisinfo:courtinfo&gt;
        &lt;jurisinfo:jurisdiction&gt;
            &lt;jurisinfo:location&gt;
                &lt;location:state&gt;Ontario&lt;/location:state&gt;
            &lt;/jurisinfo:location&gt;
        &lt;/jurisinfo:jurisdiction&gt;
    &lt;/jurisinfo:courtinfo&gt;
&lt;/caseinfo:caseinfo&gt;
</xd:pre>
            </xd:li>
         </xd:ul>
      </xd:desc>
   </xd:doc>
   <!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
   <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA02-Case_Summaries\CA02DS_DIGESTDOC_to_seclaw\case.courtloc.dita  -->
   <!-- Vikas Rohilla : Template to match the  case:courtloc and creates the jurisinfo:location location:state-->
   <xsl:template match="case:courtloc">
      <jurisinfo:location>
         <location:state>
            <xsl:apply-templates select="@* | node()"/>
         </location:state>
      </jurisinfo:location>
   </xsl:template>
   <!-- <topicref href="case.courtname.dita"/> -->   <xd:doc>
      <xd:desc>
         <xd:ul>
            <xd:li>
               <xd:i>case:courtname</xd:i> becomes
                        <xd:b>jurisinfo:courtinfo/jurisinfo:courtname</xd:b>
               <xd:p>
                  <xd:b>Note: </xd:b> If <xd:i>case:courtname</xd:i> has <xd:i>nl</xd:i> as child element, then <xd:i>nl</xd:i> will be converted to <xd:b>proc:nl</xd:b>.</xd:p>
               <xd:p>
                  <xd:b>Note: </xd:b> If <xd:i>case:courtname</xd:i> is contained in parentheses, the initial open paren and final close paren should be dropped during conversion. See examples.</xd:p>
               <xd:pre>


&lt;case:courtinfo&gt;
    &lt;case:courtname&gt;Ontario Superior Court of Justice&lt;/case:courtname&gt;
&lt;/case:courtinfo&gt;

<xd:b>Becomes</xd:b>


&lt;jurisinfo:courtinfo&gt;
    &lt;jurisinfo:courtname&gt;Ontario Superior Court of Justice&lt;/jurisinfo:courtname&gt;
&lt;/jurisinfo:courtinfo&gt;

                    </xd:pre>
               <xd:p>
                  <xd:b>Note: </xd:b>
                  <xd:p>Conversion need to to check couple of check points for handling twice
                        occurrences of <xd:i>case:courtname</xd:i> as given below</xd:p>
                  <xd:p>
                        Identify the impacted documents by looking for one or more of the
                        following:</xd:p>
                  <xd:ul>
                     <xd:li>Doc-id begins with an upper case “Q”, e.g. -
                                    <xd:i>&lt;docinfo:doc-id&gt;QSEN 10000&lt;/docinfo:doc-id&gt;</xd:i>.</xd:li>
                     <xd:li>Classitem classscheme = lnc.quantum -
                                    <xd:i>&lt;classitem classscheme="lnc.quantum"&gt;</xd:i>.</xd:li>
                     <xd:li>Case:courtname contains searchtype=”JUDGES”, e.g.
                                    <xd:i>&lt;emph typestyle="ro" searchtype="JUDGES"&gt;</xd:i>.</xd:li>
                  </xd:ul>
                  <xd:p>If above sceanrios occure in an xml file then
                                <xd:i>emph/@searchtype="COUNSEL"</xd:i> and
                                <xd:i>emph/@searchtype="JUDGES"</xd:i> both
                            will be suppresed including all its contents from
                                <xd:i>case:courtname</xd:i> during NL conversion.</xd:p>
                  <xd:p>IF second occurrences of closing tag
                                <xd:i>&lt;/emph&gt;</xd:i> precedes comma(,) like
                                <xd:i>"&lt;/emph&gt;,"</xd:i> then emph including
                            all its contants plus comma(,) will be suppressed from conversion.</xd:p>
                  <xd:p> And if second occurrences of <xd:i>case:courtname</xd:i>
                            contains
                                <xd:i>case:courtname/@ln.user-displayed="false"</xd:i>
                                then it will be suppresed from NL conversion.</xd:p>
               </xd:p>
               <xd:pre>
                  <xd:b>Rosetta INPUT:</xd:b>
             
             
&lt;case:courtinfo&gt;
    &lt;case:juris ln.user-displayed="false"&gt;ON&lt;/case:juris&gt;
    &lt;case:courtcode ln.user-displayed="false"&gt;ONSC&lt;/case:courtcode&gt;
    &lt;abbrvname ln.user-displayed="false"&gt;ONCtJus&lt;/abbrvname&gt;
    &lt;case:courtname&gt;
        DROP       &lt;emph typestyle="ro" searchtype="COUNSEL"&gt;Counsel:B. Jones(C),K. Stratos(C),J. Halberstadt(O),&lt;/emph&gt;
        DROP       &lt;emph typestyle="ro" searchtype="JUDGES"&gt;H. Borenstein J.&lt;/emph&gt;, 
        Retain     (Ontario Court of Justice)
    &lt;/case:courtname&gt;
    DROP    &lt;case:courtname ln.user-displayed="false"&gt;
    DROP        &lt;emph typestyle="ro" searchtype="DATE"&gt;2011-01-28&lt;/emph&gt;
    DROP    &lt;/case:courtname&gt;
    &lt;case:judges&gt;H. Borenstein J.&lt;/case:judges&gt;
        &lt;case:dates&gt;
            &lt;case:decisiondate ln.user-displayed="false"&gt;
   	            &lt;date month="01" day="28" year="2011"&gt;2011-01-28&lt;/date&gt;
            &lt;/case:decisiondate&gt;
        &lt;/case:dates&gt;
&lt;/case:courtinfo&gt;             

   
<xd:b>NewLexis Output(for courtname portion only)</xd:b>
             
             
&lt;jurisinfo:courtinfo&gt;
 &lt;jurisinfo:alternatecourtcode alternatecourtcode="ONSC"/&gt;
 &lt;jurisinfo:courtname normshortname="ONCtJus"&gt;Ontario Court of Justice&lt;/jurisinfo:courtname&gt;
 &lt;jurisinfo:jurisdiction&gt;
     &lt;jurisinfo:system&gt;ON&lt;/jurisinfo:system&gt;
 &lt;/jurisinfo:jurisdiction&gt;
 ........
 ........
&lt;jurisinfo:courtinfo&gt;               

                    </xd:pre>
               <xd:p>
                  <xd:b>Note: </xd:b>
                  <xd:p>If <xd:i>@ln.user-displayed="false"</xd:i> attribute does not appear before the date information under <xd:i>emph typestyle="ro" and searchtype="DATE"</xd:i>then suppress <xd:i>case:courtname</xd:i> in NL conversion</xd:p>
               </xd:p>
               <xd:pre>
    
    ...    
    &lt;case:courtname&gt;
    &lt;emph typestyle="ro" searchtype="DATE"&gt;January 25, 2005&lt;/emph&gt;
    &lt;/case:courtname&gt;
    &lt;case:courtname&gt;(British Columbia Collective Agreement Arbitration)
    &lt;/case:courtname&gt;
     ...
    
    
    <xd:b>Becomes</xd:b>
    
    ...
    &lt;jurisinfo:courtinfo&gt;
    ....
    &lt;jurisinfo:courtname normshortname="BCCollAgrArb"&gt;, British Columbia Collective Agreement Arbitration
    &lt;/jurisinfo:courtname&gt;
    ....
    &lt;/jurisinfo:courtinfo&gt;
    
</xd:pre>
            </xd:li>
         </xd:ul>
         <xd:p>
            <xd:b>Parentheses Removed Example</xd:b>
         </xd:p>
         <xd:pre>

&lt;case:courtinfo&gt;
	&lt;case:juris ln.user-displayed="false"&gt;BC&lt;/case:juris&gt;
	&lt;case:courtcode ln.user-displayed="false"&gt;BCSC&lt;/case:courtcode&gt;
	&lt;abbrvname ln.user-displayed="false"&gt;BCSC&lt;/abbrvname&gt;
	&lt;case:courtname&gt;(British Columbia Supreme Court)&lt;/case:courtname&gt;
&lt;/case:courtinfo&gt;			  

		  </xd:pre>
         <xd:b>becomes</xd:b>
         <xd:pre>

&lt;jurisinfo:courtinfo&gt;
  &lt;jurisinfo:alternatecourtcode alternatecourtcode="BCSC"/&gt;
  &lt;jurisinfo:courtname normshortname="BCSC"&gt;British Columbia Supreme Court&lt;/jurisinfo:courtname&gt;
  &lt;jurisinfo:jurisdiction&gt;
	&lt;jurisinfo:system&gt;BC&lt;/jurisinfo:system&gt;
  &lt;/jurisinfo:jurisdiction&gt;
&lt;/jurisinfo:courtinfo&gt;				

		  </xd:pre>
         <!--Changes2014-06-10 Drop initial open paren and trailing close paren. Add example.Comment from First UX Review.2014-04-30 case:courtname new scenarioDB item # 152-->
      </xd:desc>
   </xd:doc>
   <!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
   <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA02-Case_Summaries\CA02DS_DIGESTDOC_to_seclaw\case.courtname.dita  -->
   <!-- Vikas Rohilla : Template to match the case:courtname and create jurisinfo:courtname-->
   <!-- Awantika:2017-11-13- Updated as per CI to check for multiple case:courtname. Webstar 7042916  -->
   <!-- Awantika:2018-01-31- As pr CI emph typestyle="ro" and searchtype="DATE" has been suppressed. Webstar # 7103030 -->
   <xsl:template match="case:courtname">
      <xsl:if test="/DIGESTDOC/docinfo/docinfo:doc-id[starts-with('Q',.)] | /DIGESTDOC/dig:body/dig:collection/dig:level/dig:item/abstract/catchwordgrp/catchwords/catchphrase/classitem[@classscheme='lnc.quantum'] | case:courtname/emph[@searchtype='JUDGES']">
         <xsl:if test="emph[@searchtype='COUNSEL'] | emph[@searchtype='JUDGES']"/>
      </xsl:if>
      <xsl:if test="not(emph[@searchtype='COUNSEL'] | emph[@searchtype='JUDGES'] | emph[@searchtype='DATE' and @typestyle='ro']) and not(@ln.user-displayed)">
         <jurisinfo:courtname>
            <xsl:apply-templates select="parent::case:courtinfo/abbrvname"/>
            <!-- Awantika:2017-11-13- Removed parenthesis -->
            <xsl:value-of select="translate(.,'([)','')"/>
         </jurisinfo:courtname>
      </xsl:if>
   </xsl:template>
   <!-- Vikas Rohilla : Template to match the case:courtinfo/abbrvname and create the attribute normshortname    -->
   <xsl:template match="case:courtinfo/abbrvname">
      <xsl:attribute name="normshortname">
         <xsl:apply-templates select="node()"/>
      </xsl:attribute>
   </xsl:template>
   <!-- Vikas Rohilla : Supressed the abbrvname/@ln.user-displayed     -->
   <xsl:template match="abbrvname/@ln.user-displayed"/>
   <!--<xsl:template match="case:courtnameemph/@searchtype="COUNSEL""></xsl:template>-->   <!-- <topicref href="case.dates.dita"/> -->   <xd:doc>
      <xd:desc>
         <xd:ul>
            <xd:li>
               <xd:i>case:dates</xd:i> becomes
              <xd:b>caseinfo:caseinfo/decision:dates</xd:b>
               <xd:p>
                  <xd:b>Note: </xd:b>Conversion should not create consecutive <xd:b>caseinfo:caseinfo</xd:b>
              elements. When 2 or more consecutive sibling source elements map to
                <xd:b>caseinfo:caseinfo</xd:b>, data should be merged to a single
                <xd:b>caseinfo:caseinfo</xd:b> element unless this would hamper content
              ordering.</xd:p>
               <xd:ul>
                  <xd:li>
                     <xd:i>case:hearingdates</xd:i> becomes
                  <xd:b>caseinfo:caseinfo/decision:dates/decision:argueddate</xd:b>
                  </xd:li>
                  <xd:li>
                     <xd:i>date</xd:i> becomes
                  <xd:b>caseinfo:caseinfo/decision:dates/decision:decisiondate/date-text</xd:b>.
                  <xd:b>date-text</xd:b> will only be mapped around the text of the date.
                <xd:pre>

&lt;case:dates&gt;
    &lt;case:decisiondate&gt;
        &lt;date month="09" day="21" year="1959"&gt;19590921&lt;/date&gt;
    &lt;/case:decisiondate&gt;
&lt;/case:dates&gt;

  Becomes

&lt;decision:dates&gt;
   &lt;decision:decisiondate month="09" day="21" year="1959" normdate="1959-09-21"&gt;
        &lt;date-text&gt;September 21, 1959&lt;/date-text&gt;
    &lt;/decision:decisiondate&gt;
    &lt;decision:argueddate month="09" day="21" year="1959"&gt;
        &lt;date-text&gt;September 21, 1959&lt;/date-text&gt;
    &lt;/decision:argueddate&gt;
&lt;/decision:dates&gt;
</xd:pre>
                Example where complete date occurs within <xd:i>case:hearingdate</xd:i>:<xd:pre>
&lt;case:hearingdates&gt;
  &lt;date month="05" day="12" year="2000"&gt;12 May 2000&lt;/date&gt;
&lt;/case:hearingdates&gt;

<xd:b>Becomes</xd:b>

&lt;decision:argueddate month="05"  day="12" year="2000"&gt;
  &lt;date-text&gt;May 12, 2000&lt;/date-text&gt;
&lt;/decision:argueddate&gt;
</xd:pre>
                     <xd:p>
                        <xd:b>Note: </xd:b>If <xd:i>case:hearingdates</xd:i> is not populated with attributes
                  then attributes in <xd:b>decision:argueddate</xd:b> will not be
                  populated. </xd:p>
                     <xd:pre>
&lt;case:dates&gt;
    &lt;case:hearingdates&gt;Decision Date: December 18, 1984&lt;/case:hearingdates&gt;
&lt;/case:dates&gt;

<xd:b>Becomes</xd:b>

&lt;decision:dates&gt;   
    &lt;decision:argueddate&gt;
        Decision Date: &lt;date-text&gt;December 18, 1984&lt;/date-text&gt;
    &lt;/decision:argueddate&gt;
&lt;/decision:dates&gt;
</xd:pre>
                     <xd:p>
                        <xd:b>Note: </xd:b>If there are any <xd:i>nl</xd:i> elements in
                    <xd:i>case:hearingdates</xd:i>, then <xd:i>nl</xd:i> should
                  be suppressed, but a new <xd:b>date-text</xd:b> should be started for
                  every occurence of <xd:i>nl</xd:i>... DB item #1140</xd:p> Mapping of
                  <xd:i>case:dates/case:hearingdates</xd:i> with <xd:i>nl</xd:i>
                     <xd:pre>               
&lt;case:dates&gt;
    &lt;case:hearingdates&gt;Heard: May 23, 2007.&lt;nl/&gt; Oral judgment: May 23, 2007.&lt;nl/&gt; Filed: June 25, 2007.&lt;/case:hearingdates&gt;
&lt;/case:dates&gt;

 <xd:b> Becomes</xd:b>

&lt;decision:dates&gt;
    &lt;decision:argueddate&gt;
        Heard: &lt;date-text&gt;May 23, 2007.&lt;/date-text&gt;
    &lt;/decision:argueddate&gt;
    &lt;decision:argueddate&gt;
        Oral judgment: &lt;date-text&gt;May 23, 2007.&lt;/date-text&gt;
    &lt;/decision:argueddate&gt;
    &lt;decision:argueddate&gt;
        Filed: &lt;date-text&gt;June 25, 2007.&lt;/date-text&gt;
    &lt;/decision:argueddate&gt;
&lt;/decision:dates&gt;          
              </xd:pre>
                  </xd:li>
                  <xd:li>
                     <xd:i>case:decisiondate</xd:i> becomes
                  <xd:b>caseinfo:caseinfo/decision:dates/decision:decisiondate</xd:b>
                populated with below mentioned attributes:
                  <xd:i>case:decisiondate/date/@day</xd:i> becomes
                  <xd:b>decision:decisiondate/@day</xd:b>,
                  <xd:i>case:decisiondate/date/@month</xd:i> becomes
                  <xd:b>decision:decisiondate/@month</xd:b> and
                  <xd:i>case:decisiondate/date/@year</xd:i> becomes
                  <xd:b>decision:decisiondate/@year</xd:b>
                     <xd:p> The attribute <xd:b>decision:decisiondate/@normdate</xd:b> should be
                  populated with the values of <xd:i>case:decisiondate/date/@year</xd:i>,
                    <xd:i>case:decisiondate/date/@month</xd:i> and
                    <xd:i>case:decisiondate/date/@day</xd:i> concatenated and separated by
                  a single hyphen. The values of
                    <xd:i>case:decisiondate/date/@month</xd:i> and
                    <xd:i>case:decisiondate/date/@day</xd:i> should be padded with zeroes
                  so that they are 2 digits. s<xd:p>
                           <xd:b>Note: </xd:b>If one or more of the three date values (year,
                    month or day) are absent, then
                      <xd:b>decision:decisiondate/@normdate</xd:b> should <xd:b>not</xd:b> be
                    populated.</xd:p>
                        <xd:p>
                           <xd:b>Note: </xd:b> If there is any text in <xd:i>case:decisiondate</xd:i> then it
                    will be retained only if the @day, @month and @year attributes do not result in
                    a valid date. For more clarification please refer the example below.
                      </xd:p>
                     </xd:p>
                     <xd:p>
                        <xd:p>
                           <xd:b>Note: </xd:b>
                           <xd:b>date-text</xd:b> for
                      <xd:b>decision:argueddate</xd:b> should always be created even if
                      <xd:i>@ln.user-displayed="false“</xd:i>
                        </xd:p>
                        <xd:pre>

&lt;case:dates&gt;
    &lt;case:decisiondate ln.user-displayed="false"&gt;
        &lt;date month="01" day="25" year="2005"&gt;2005-01-25&lt;/date&gt;
    &lt;/case:decisiondate&gt;
&lt;/case:dates&gt;


<xd:b>Becomes</xd:b>


&lt;casedigest:head&gt;
    &lt;casedigest:caseinfo&gt;
        &lt;decision:dates&gt;
            &lt;decision:decisiondate month="01" day="25" year="2005" normdate="2005-01-25"/&gt; 
            &lt;decision:argueddate month="01"  day="25" year="2005"&gt;  
              &lt;date-text&gt;January 25, 2005&lt;/date-text&gt;
            &lt;/decision:argueddate&gt;           
        &lt;/decision:dates&gt;
    &lt;/casedigest:caseinfo&gt;
&lt;/casedigest:head&gt;

                </xd:pre>
                        <xd:p>
                           <xd:b>Note: </xd:b>when <xd:i>@ln.user-displayed="true“</xd:i> or attribute
                      <xd:i>@ln.user-displayed</xd:i> does not appears on a date element
                    (i.e, <xd:i>case:decisiondate/@ln.user-displayed="true"</xd:i> or
                      <xd:i>case:decisiondate</xd:i> without any argument) then that
                    element is translated into the target with the content. The attributes are
                    populated and content will be displayed.</xd:p>
                        <xd:pre>
                           <xd:b>Source:</xd:b>
                
&lt;case:dates&gt;
    &lt;case:decisiondate&gt;
        &lt;date month="09" day="21" year="1959"&gt;1959-09-21&lt;/date&gt;
    &lt;/case:decisiondate&gt;
&lt;/case:dates&gt;
                
                
<xd:b>Target:</xd:b>

&lt;decision:dates&gt;
    &lt;decision:decisiondate month="09" day="21" year="1959" normdate="1959-09-21"&gt;
        &lt;date-text&gt;September 21, 1959&lt;/date-text&gt;
    &lt;/decision:decisiondate&gt;
    &lt;decision:argueddate month="09" day="21" year="1959"&gt;
        &lt;date-text&gt;September 21, 1959&lt;/date-text&gt;
    &lt;/decision:argueddate&gt;
&lt;/decision:dates&gt;

                    </xd:pre>
                        <xd:b>Example2 </xd:b>
                        <xd:pre>
                           <xd:b>Source:</xd:b>
                
&lt;case:dates&gt;
    &lt;case:decisiondate ln.user-displayed="true"&gt;
        &lt;date month="09" day="21" year="1959"&gt;1959-09-21&lt;/date&gt;
    &lt;/case:decisiondate&gt;
&lt;/case:dates&gt;
                
                
<xd:b>Target:</xd:b>

&lt;decision:dates&gt;
    &lt;decision:decisiondate month="09" day="21" year="1959" normdate="1959-09-21"&gt;
        &lt;date-text&gt;September 21, 1959&lt;/date-text&gt;
    &lt;/decision:decisiondate&gt;
    &lt;decision:argueddate month="09" day="21" year="1959"&gt;
        &lt;date-text&gt;September 21, 1959&lt;/date-text&gt;
    &lt;/decision:argueddate&gt;
&lt;/decision:dates&gt;

            </xd:pre>
                        <xd:p>
                           <xd:b>Note: </xd:b>If there is no argued-date (<xd:i>case:hearingdates</xd:i>)
                    present in the source XML but there is a decided-date
                      (<xd:i>case:decisiondate</xd:i>), create
                      <xd:b>decision:argueddate</xd:b> using the values in the
                      <xd:i>case:decisiondate</xd:i> element.
                      <xd:b>decision:decisiondate</xd:b> should also be retained in its
                    normal location. Note that <xd:b>decision:argueddate</xd:b> output is
                    language dependent.<xd:p>If xml:lang = French, format is dd fullmonth yyyy, e.g. 2
                      mai 2000,</xd:p>
                           <xd:p>if xml:lang = English, format is fullmonth day, yyyy, e.g. May
                      2, 2000, as per the list of months attached below for, "DB item
                    #1272</xd:p>
                        </xd:p>
                        <xd:ol>
                           <xd:li>xml:lang=</xd:li>
                           <xd:li>en-CA</xd:li>
                           <xd:li>fr-CA</xd:li>
                           <xd:li>Date format – do not add leading zeroes on the days, e.g. “2” is
                            correct, “02” is incorrect.</xd:li>
                           <xd:li>Month DD, YYYY, e.g. April 2, 2014</xd:li>
                           <xd:li>DD month YYYY, e.g. 2 avril 2014 </xd:li>
                           <xd:li>Numerical month to month name:</xd:li>
                           <xd:li/>
                           <xd:li/>
                           <xd:li>01</xd:li>
                           <xd:li>January</xd:li>
                           <xd:li>janvier</xd:li>
                           <xd:li>02</xd:li>
                           <xd:li>February</xd:li>
                           <xd:li>février</xd:li>
                           <xd:li>03</xd:li>
                           <xd:li>March</xd:li>
                           <xd:li>mars</xd:li>
                           <xd:li>04</xd:li>
                           <xd:li>April</xd:li>
                           <xd:li>avril</xd:li>
                           <xd:li>05</xd:li>
                           <xd:li>May</xd:li>
                           <xd:li>mai</xd:li>
                           <xd:li>06</xd:li>
                           <xd:li>June</xd:li>
                           <xd:li>juin</xd:li>
                           <xd:li>07</xd:li>
                           <xd:li>July</xd:li>
                           <xd:li>juillet</xd:li>
                           <xd:li>08</xd:li>
                           <xd:li>August</xd:li>
                           <xd:li>août</xd:li>
                           <xd:li>09</xd:li>
                           <xd:li>September</xd:li>
                           <xd:li>septembre</xd:li>
                           <xd:li>10</xd:li>
                           <xd:li>October</xd:li>
                           <xd:li>octobre</xd:li>
                           <xd:li>11</xd:li>
                           <xd:li>November</xd:li>
                           <xd:li>novembre</xd:li>
                           <xd:li>12</xd:li>
                           <xd:li>December</xd:li>
                           <xd:li>décembre</xd:li>
                        </xd:ol>
                        <!--   <note>If <sourcexml>@day, @month, @year</sourcexml> in source have invalid values
                  then we will not populate the attributes in
                    <targetxml>decision:dates/decision:decisiondate</targetxml>. We will only
                  populate the @normdate in target. For more clarification please refer the example
                  below.</note>
                <b>Source XML</b>
                <pre>
&lt;case:info>
    &lt;case:courtinfo>
        &lt;case:dates>
            &lt;case:decisiondate ln.user-displayed="false">
                &lt;date year="0000" month="01" day="01">0000/01/01&lt;/date>
            &lt;/case:decisiondate>
        &lt;/case:dates>
    &lt;/case:courtinfo>
&lt;/case:info>   
         </pre>
                <b>Target XML</b>
                <pre>
&lt;casedigest:caseinfo>
    &lt;decision:dates>
        &lt;decision:decisiondate normdate="0000-01-01"/>
        &lt;decision:argueddate month="01" day="01"/>
    &lt;/decision:dates>
&lt;/casedigest:caseinfo>                        
          </pre> -->
                     </xd:p>
                  </xd:li>
               </xd:ul>
            </xd:li>
         </xd:ul>
         <!--Changes2014-11-18: updated example for ln.user-displayed="false"
            with decision:argueddateDB item # 3662014-10-06: case:decisiondate should not output
            argueddate/date-text if ln.user-displayed="false“. Removed
            instructions for invalid date as LBU has remediated the issue.DB item #
          3372014-08-19: Updated example for nl. Multiple argued date will
            not be created, multiple date-text will be created.2014-08-08: Updated instructions for argueddate. DB item
              # 17952014-07-23: Added instruction not to populate
              decision:argueddate if case:hearingdates
            does not contain attributes ..."Issue# 289 and 2562014-07-08: Added instruction to create date-text for
            decision:argueddate even if ln.user-displayed="false" ..."R4.5 Issue#
          15892014-05-30:  Explanation of invalid date..."DB item #
              2062014-05-30:  Explanation for ln.user-displayed=false or not
              present..."DB item # 2132014-05-21: Rules for Date..."DB item # 12732014-04-11: Instruction to display in Full View Subtitle -
            Summaries..."DB item # 12722014-04-11: Instruction to display Date for CA02-DS Quantums
            (seclaw)..."DB item # 1273 -->
      </xd:desc>
   </xd:doc>
   <!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
   <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA02-Case_Summaries\CA02DS_DIGESTDOC_to_seclaw\case.dates.dita  -->
   <!--<xsl:message>CA02DS_DIGESTDOC_to_seclaw_case.dates.xsl requires manual development!</xsl:message>-->
   <!--Vikas Rohilla : Template to match the case:dates and create the decision:dates -->
   <xsl:template match="case:dates">
      <decision:dates>
         <xsl:apply-templates select="@* | node()"/>
      </decision:dates>
   </xsl:template>
   <!--Vikas Rohilla : function for translate en month name-->   <xsl:function name="functx:month-name-en" as="xs:string?">
      <xsl:param name="date" as="xs:anyAtomicType?"/>
      <xsl:sequence select="('January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December')[month-from-date(xs:date($date))]"/>
   </xsl:function>
   <!--Vikas Rohilla : function for translate fr month name-->
   <xsl:function name="functx:month-name-fr" as="xs:string?">
      <xsl:param name="date" as="xs:anyAtomicType?"/>
      <xsl:sequence select="('janvier', 'février', 'mars', 'avril', 'mai', 'juin', 'juillet', 'août', 'septembre', 'octobre', 'novembre', 'décembre')[month-from-date(xs:date($date))]"/>
   </xsl:function>
   <!-- Vikas Rohilla : Template to match the case:decisiondate and creates the decision:decisiondate -->
   <xsl:template match="case:decisiondate">
      <decision:decisiondate>
         <xsl:attribute name="month">
            <xsl:value-of select="date/@month"/>
         </xsl:attribute>
         <xsl:attribute name="day">
            <xsl:value-of select="date/@day"/>
         </xsl:attribute>
         <xsl:attribute name="year">
            <xsl:value-of select="date/@year"/>
         </xsl:attribute>
         <xsl:if test="date/@year != '' and date/@day != '' and date/@month != ''">
            <xsl:attribute name="normdate">
               <xsl:value-of select="concat(date/@year, '-', date/@month, '-', date/@day)"/>
            </xsl:attribute>
         </xsl:if>
         <xsl:if test="not(@ln.user-displayed = 'false')">
            <date-text>
               <xsl:choose>
                  <xsl:when test="/DIGESTDOC/docinfo/docinfo:doc-lang/@lang = 'en'">
                     <xsl:value-of select="functx:month-name-en(concat(date/@year, '-', date/@month, '-', date/@day))"/>
                     <xsl:text> </xsl:text>
                     <xsl:value-of select="translate(date/@day, '^0', '')"/>
                     <xsl:text>, </xsl:text>
                     <xsl:value-of select="date/@year"/>
                  </xsl:when>
                  <xsl:when test="/DIGESTDOC/docinfo/docinfo:doc-lang/@lang = 'fr'">
                     <xsl:value-of select="translate(date/@day, '^0', '')"/>
                     <xsl:text> </xsl:text>
                     <xsl:value-of select="functx:month-name-fr(concat(date/@year, '-', date/@month, '-', date/@day))"/>
                     <xsl:text> </xsl:text>
                     <xsl:value-of select="date/@year"/>
                  </xsl:when>
               </xsl:choose>
            </date-text>
         </xsl:if>
      </decision:decisiondate>
      <decision:argueddate>
         <xsl:attribute name="month">
            <xsl:value-of select="date/@month"/>
         </xsl:attribute>
         <xsl:attribute name="day">
            <xsl:value-of select="date/@day"/>
         </xsl:attribute>
         <xsl:attribute name="year">
            <xsl:value-of select="date/@year"/>
         </xsl:attribute>
         <date-text>
            <xsl:choose>
               <xsl:when test="/DIGESTDOC/docinfo/docinfo:doc-lang/@lang = 'en'">
                  <xsl:value-of select="functx:month-name-en(concat(date/@year, '-', date/@month, '-', date/@day))"/>
                  <xsl:text> </xsl:text>
                  <xsl:value-of select="translate(date/@day, '^0', '')"/>
                  <xsl:text>, </xsl:text>
                  <xsl:value-of select="date/@year"/>
               </xsl:when>
               <xsl:when test="/DIGESTDOC/docinfo/docinfo:doc-lang/@lang = 'fr'">
                  <xsl:value-of select="translate(date/@day, '^0', '')"/>
                  <xsl:text> </xsl:text>
                  <xsl:value-of select="functx:month-name-fr(concat(date/@year, '-', date/@month, '-', date/@day))"/>
                  <xsl:text> </xsl:text>
                  <xsl:value-of select="date/@year"/>
               </xsl:when>
            </xsl:choose>
         </date-text>
      </decision:argueddate>
   </xsl:template>
   <!-- Vikas Rohilla : Template to match the case:hearingdates and creates the decision:argueddate -->
   <xsl:template match="case:hearingdates">
      <decision:argueddate>
         <xsl:attribute name="month">
            <xsl:value-of select="date/@month"/>
         </xsl:attribute>
         <xsl:attribute name="day">
            <xsl:value-of select="date/@day"/>
         </xsl:attribute>
         <xsl:attribute name="year">
            <xsl:value-of select="date/@year"/>
         </xsl:attribute>
         <date-text>
            <xsl:choose>
               <xsl:when test="/DIGESTDOC/docinfo/docinfo:doc-lang/@lang = 'en'">
                  <xsl:value-of select="functx:month-name-en(concat(date/@year, '-', date/@month, '-', date/@day))"/>
                  <xsl:text> </xsl:text>
                  <xsl:value-of select="translate(date/@day, '^0', '')"/>
                  <xsl:text>, </xsl:text>
                  <xsl:value-of select="date/@year"/>
               </xsl:when>
               <xsl:when test="/DIGESTDOC/docinfo/docinfo:doc-lang/@lang = 'fr'">
                  <xsl:value-of select="translate(date/@day, '^0', '')"/>
                  <xsl:text> </xsl:text>
                  <xsl:value-of select="functx:month-name-fr(concat(date/@year, '-', date/@month, '-', date/@day))"/>
                  <xsl:text> </xsl:text>
                  <xsl:value-of select="date/@year"/>
               </xsl:when>
            </xsl:choose>
         </date-text>
      </decision:argueddate>
   </xsl:template>
   <!-- Vikas Rohilla : Template to match the case:hearingdates not attributes @year or @month or @day  and creates the decision:argueddate -->
   <xsl:template match="case:hearingdates[not(date/@year or date/@month or date/@day)]">
      <xsl:for-each select="text()">
         <xsl:variable name="hearingdate-string" select="normalize-space(.)"/>
         <decision:argueddate>
            <xsl:if test="/DIGESTDOC/docinfo/docinfo:doc-lang/@lang = 'en'">
               <xsl:analyze-string select="$hearingdate-string"
                                   regex="(((January|February|March|April|May|June|July|August|September|October|November|December)\s(\d\d),\s(\d\d\d\d))|                    ((January|February|March|April|May|June|July|August|September|October|November|December)\s(\d),\s(\d\d\d\d)))">
                  <xsl:matching-substring>
                     <date-text>
                        <xsl:value-of select="regex-group(1)"/>
                     </date-text>
                  </xsl:matching-substring>
                  <xsl:non-matching-substring>
                     <xsl:value-of select="."/>
                  </xsl:non-matching-substring>
               </xsl:analyze-string>
            </xsl:if>
            <xsl:if test="/DIGESTDOC/docinfo/docinfo:doc-lang/@lang = 'fr'">
               <xsl:analyze-string select="$hearingdate-string"
                                   regex="(((\d\d)\s(janvier|février|mars|avril|mai|juin|juillet|août|septembre|octobre|novembre|décembre)\s(\d\d\d\d))|                    ((\d)\s(janvier|février|mars|avril|mai|juin|juillet|août|septembre|octobre|novembre|décembre)\s(\d\d\d\d)))">
                  <xsl:matching-substring>
                     <date-text>
                        <xsl:value-of select="normalize-space(regex-group(1))"/>
                     </date-text>
                  </xsl:matching-substring>
                  <xsl:non-matching-substring>
                     <xsl:value-of select="."/>
                  </xsl:non-matching-substring>
               </xsl:analyze-string>
            </xsl:if>
         </decision:argueddate>
      </xsl:for-each>
   </xsl:template>
   <!-- <topicref href="case.decisionsummary.dita"/> -->   <xd:doc>
      <xd:desc>
         <xd:ul>
            <xd:li>
               <xd:i>case:decisionsummary</xd:i> becomes
                            <xd:b>casesum:summaries/casesum:decisionsummary</xd:b>.
                        Multiple occurrences of <xd:i>p</xd:i> will be wrapped under
                            <xd:b>casesum:decisionsummary/bodytext</xd:b>
               <xd:p>
                  <xd:b>Note: </xd:b>Every element occuring within
                                <xd:i>case:decisionsummary</xd:i> should be handled via
                                <xd:b>bodytext</xd:b> within
                                <xd:b>casesum:decisionsummary</xd:b> except
                                <xd:i>heading</xd:i> element.</xd:p>
               <xd:p>
                  <xd:b>Note: </xd:b> Convert all double dashes (--) to m dashes (-). </xd:p>
               <xd:pre>
&lt;bodytext searchtype="DECISION-SUMMARY"&gt;
    &lt;case:embeddedcase&gt;
        &lt;case:headnote&gt;
            &lt;case:decisionsummary&gt;
                &lt;p&gt;
                    &lt;text&gt;Sentencing of KD, 16, for robbery and failing to
                        comply with his recognizance — At the time of the
                        robbery, KD was subject to a peace bond on another
                        robbery charge relating to the same 16-year-old
                        ient treatment he had received — KD had shown that he would not behave out of custody
                        or in custody — No sentence other than a custodial sentence would be fit in this case — A non-custodial
                        sentence would not hold KD accountable for these robberies — It would not promote his rehabilitation or
                        reintegration — The joint submission would have been
                        contrary to the public interest or would have, if
                        imposed, brought the administration of justice into
                        disrepute — Sentence: Three months' closed custody,
                        three months' open custody, three months' community
                        supervision and 12 months' probation for robbery; 12
                        months' probation for failure to comply.&lt;/text&gt;
                &lt;/p&gt;
            &lt;/case:decisionsummary&gt;
        &lt;/case:headnote&gt;
    &lt;/case:embeddedcase&gt;
&lt;/bodytext&gt;

<xd:b>Becomes</xd:b>   

&lt;bodytext&gt;
    &lt;courtcase:caseexcerpt&gt;
        &lt;courtcase:head&gt;
            &lt;casesum:summaries&gt;
                &lt;casesum:decisionsummary&gt;
                    &lt;bodytext&gt;
                        &lt;p&gt;
                            &lt;text&gt;Sentencing of KD, 16, for robbery and failing to
                                comply with his recognizance — At the time of the
                                robbery, KD was subject to a peace bond on another
                                robbery charge relating to the same 16-year-old
                                physically challenged complainant — KD and three others
                                encountered the complainant on the street — KD struck
                                him on the head wearing brass knuckles and then kicked
                                the complainant — KD and his friends then stole $5 from
                                the complainant — As a result of these robbery charges,
                                sentence would not hold KD accountable for these
                                robberies — It would not promote his rehabilitation or
                                reintegration — The joint submission would have been
                                contrary to the public interest or would have, if
                                imposed, brought the administration of justice into
                                disrepute — Sentence: Three months' closed custody,
                                three months' open custody, three months' community
                                supervision and 12 months' probation for robbery; 12
                                months' probation for failure to comply.&lt;/text&gt;
                        &lt;/p&gt;
                    &lt;/bodytext&gt;
                &lt;/casesum:decisionsummary&gt;
            &lt;/casesum:summaries&gt;
        &lt;/courtcase:head&gt;
    &lt;/courtcase:caseexcerpt&gt;
&lt;/bodytext&gt;</xd:pre>
            </xd:li>
         </xd:ul>
         <xd:p>When <xd:i>case:decisionsummary/heading/title</xd:i> begins with any of
                    the following text: <xd:ul>
               <xd:li>
                  <xd:i>"Court Summary:" (or the French version, "Résumé de la Cour
                                :")</xd:i>
               </xd:li>
               <xd:li>
                  <xd:i>Commission Summary:</xd:i>
               </xd:li>
               <xd:li>
                  <xd:i>Board Summary:</xd:i>
               </xd:li>
               <xd:li>
                  <xd:i>Tribunal Summary:</xd:i>
               </xd:li>
               <xd:li>
                  <xd:i>Executive Summary:</xd:i>
               </xd:li>
               <xd:li>
                  <xd:i>Commissioner Summary: </xd:i>
               </xd:li>
               <xd:li>
                  <xd:i>Résumé du tribunal :</xd:i>
               </xd:li>
               <xd:li>
                  <xd:i>Sommaire du tribunal :</xd:i>
               </xd:li>
            </xd:ul> then use <xd:b>casesum:courtsummary</xd:b> instead of
                        <xd:b>casesum:decisionsummary</xd:b>.</xd:p>
         <!--<p>Also, do the same when: <sourcexml>metaitem @name="SRCNAME" @value="SCJ "</sourcexml>
and, <sourcexml>casesum:decisionsummary/bodytext/p/text/emph</sourcexml> contains "Subsequent History:" ("Historique subs&#xe9;quent:" in French) or "Court Catchwords:" ("Indexation de la Cour:" in French).</p>-->
         <xd:p>
            <xd:b>Note: </xd:b>
            <xd:ul>
               <xd:li>If there is a scenario where
                                <xd:i>case:decisionsummary/heading/title</xd:i> begins
                            with any of the above given texts AND <xd:i>p/text</xd:i>
                            containing a sentence beginning with "HELD:" or "HELD ():" followed by
                            parenthesis or square barckets [ ], or the French language version
                            "DISPOSITIF :" or "DISPOSITIF ():" followed by parenthesis or square
                            barckets [ ], in all caps, with or without a space character before the
                            colon, or same within emph tag (e.g. "<xd:i>emph
                                typestyle="bf"</xd:i>"), then for mapping use
                                <xd:b>casesum:courtsummary</xd:b> instead of
                                <xd:b>casesum:decisionsummary</xd:b>.</xd:li>
               <xd:li>If for above scenario <xd:i>case:decisionsummary</xd:i>
                            contains <xd:i>figure</xd:i> as its child then map it to
                                <xd:b>p/text/figure</xd:b>, For more clarification please
                            refer the example below. </xd:li>
               <xd:li>If for above scenario <xd:i>case:decisionsummary</xd:i>
                            contains <xd:i>l</xd:i> as its child then map it to
                                <xd:b>p/list</xd:b>, For more clarification please refer
                            the example below. </xd:li>
            </xd:ul>
         </xd:p>
         <xd:pre>
            <xd:b>Source XML</xd:b>
      
&lt;case:decisionsummary&gt;
    &lt;heading&gt;
        &lt;title&gt;Tribunal Summary:&lt;/title&gt;
    &lt;/heading&gt;
    &lt;p&gt;
        &lt;text&gt;This arbitration involves the rate of pay for working overtime on a Named Holiday, or for
            working on a Named Holiday which is a designated Day of Rest. The collective agreement
            provides that work on a Named Holiday will be paid at 1.5 times the Basic Rate of Pay (or 2.0
            times the Basic Rate of Pay for two "Super Stats") plus other time off. Overtime is paid at
            2.0 times the employee's Basic Rate of Pay. Work on a designated Day of Rest is also paid at
            2.0 times the Basic Rate of Pay. The Union's position was that an employee working overtime on
            a Named Holiday should be paid 2.5 times their Basic Rate of Pay (or 3.0 times if the Named
            Holiday is a Super Stat), calculated as follows: &lt;/text&gt;
    &lt;/p&gt;
    &lt;figure&gt;
        &lt;p&gt;
            &lt;text align="left"&gt;
                &lt;inlineobject filename="CA00000005824190_00034502-0001.jpg" type="image"
                    attachment="ln-server"/&gt;
            &lt;/text&gt;
        &lt;/p&gt;
    &lt;/figure&gt;
    &lt;p&gt;
        &lt;text&gt;
            &lt;glp:note&gt;
                &lt;p nl="0"&gt;
                    &lt;text&gt;[Editor's Note: Notes&lt;fnr fnrtoken="fnr-1" fntoken="fn-1"&gt;1&lt;/fnr&gt;;&lt;fnr
                        fnrtoken="fnr-2" fntoken="fn-2"&gt;2&lt;/fnr&gt; are included in the image above]&lt;/text&gt;
                &lt;/p&gt;
            &lt;/glp:note&gt;
        &lt;/text&gt;
    &lt;/p&gt;
    &lt;p&gt;
        &lt;text&gt;The Employer's position was that the rate of pay should be the highest rate of pay
            applicable to the circumstances--mainly, 2.0 times the Basic Rate of Pay. &lt;/text&gt;
    &lt;/p&gt;
    &lt;p&gt;
        &lt;text&gt;HELD: The Employer's interpretation of the collective agreement is correct. &lt;/text&gt;
    &lt;/p&gt;
&lt;/case:decisionsummary&gt;</xd:pre>
         <xd:pre>
            <xd:b>Target XML</xd:b>
 
&lt;casesum:courtsummary&gt;
    &lt;heading&gt;
        &lt;title&gt;Tribunal Summary:&lt;/title&gt;
    &lt;/heading&gt;
    &lt;p&gt;
        &lt;text&gt;This arbitration involves the rate of pay for working overtime on a Named Holiday, or for
            working on a Named Holiday which is a designated Day of Rest. The collective agreement
            provides that work on a Named Holiday will be paid at 1.5 times the Basic Rate of Pay (or 2.0
            times the Basic Rate of Pay for two "Super Stats") plus other time off. Overtime is paid at
            2.0 times the employee's Basic Rate of Pay. Work on a designated Day of Rest is also paid at
            2.0 times the Basic Rate of Pay. The Union's position was that an employee working overtime on
            a Named Holiday should be paid 2.5 times their Basic Rate of Pay (or 3.0 times if the Named
            Holiday is a Super Stat), calculated as follows: &lt;/text&gt;
    &lt;/p&gt;
    &lt;p&gt;
        &lt;text&gt;
            &lt;figure&gt;
                &lt;ref:inlineobject&gt;
                    &lt;ref:locator&gt;
                        &lt;ref:locator-key&gt;
                            &lt;ref:key-name name="object-key"/&gt;
                            &lt;ref:key-value value="X-Y-CA00000005824190_00034502-0001"/&gt;   &lt;!-- X and Y are LNI and SMI values obtained from CSSM --&gt;
                        &lt;/ref:locator-key&gt;
                        &lt;ref:locator-params&gt;
                            &lt;proc:param name="componentseq" value="1"/&gt;
                            &lt;proc:param name="object-type" value="image"/&gt; &lt;!-- allowable values: “image”; (from .jpg, .gif, .png, .bmp)--&gt;
                            &lt;proc:param name="object-smi" value=""/&gt;    &lt;!-- This @value assignment is done by conversion program --&gt;
                        &lt;/ref:locator-params&gt;
                    &lt;/ref:locator&gt;
                &lt;/ref:inlineobject&gt;
            &lt;/figure&gt;
        &lt;/text&gt;
    &lt;/p&gt;
    &lt;p&gt;
        &lt;text&gt;
            &lt;inlinenote notetype="editor-note"&gt;
                [Editor's Note: Notes
                &lt;footnote-ref anchoridref="fnr-1"&gt;
                    &lt;ref:anchor id="fnr-1"/&gt;  
                    &lt;label&gt;1&lt;/label&gt;
                &lt;/footnote-ref&gt;
                &lt;footnote-ref anchoridref="fn-2"&gt;
                    &lt;ref:anchor id="fn-2"/&gt;   
                    &lt;label&gt;2&lt;/label&gt;
                &lt;/footnote-ref&gt;
                are included in the image above]
            &lt;/inlinenote&gt;
        &lt;/text&gt;
    &lt;/p&gt;
    &lt;p&gt;
        &lt;text&gt;The Employer's position was that the rate of pay should be the highest rate of pay
            applicable to the circumstances--mainly, 2.0 times the Basic Rate of Pay. &lt;/text&gt;
    &lt;/p&gt;
    &lt;p&gt;
        &lt;text&gt;HELD: The Employer's interpretation of the collective agreement is correct. &lt;/text&gt;
    &lt;/p&gt;
&lt;/casesum:courtsummary&gt;
</xd:pre>
         <xd:pre>
            <xd:b>Example when <xd:i>case:decisionsummary</xd:i> has <xd:i>l</xd:i> as its child element.

</xd:b>
            <xd:b>Source XML</xd:b>
&lt;case:decisionsummary&gt;
    &lt;heading&gt;
        &lt;title&gt;Tribunal Summary:&lt;/title&gt;
    &lt;/heading&gt;
    &lt;p&gt;
        &lt;text&gt;
            &lt;emph typestyle="bf"&gt;Noteworthy Decision Summary&lt;/emph&gt;
        &lt;/text&gt;
    &lt;/p&gt;
    &lt;l virtual-nesting="3"&gt;
        &lt;li&gt;
            &lt;lilabel&gt;*&lt;/lilabel&gt;
            &lt;p&gt;
                &lt;text&gt;The panel in &lt;emph typestyle="it"&gt;WCAT Decision #2005-01984&lt;/emph&gt; determined
                    that the standard of review for jurisdictional issues at common law is
                    correctness and that paragraph 58(2)(c) of the &lt;emph typestyle="it"
                        &gt;Administrative Tribunals Act&lt;/emph&gt; (ATA), which calls for a correctness
                    standard, may reasonably be interpreted as applying to jurisdictional
                    issues.&lt;/text&gt;
            &lt;/p&gt;
        &lt;/li&gt;
    &lt;/l&gt;
&lt;/case:decisionsummary&gt;</xd:pre>
         <xd:pre>
            <xd:b>Target XML</xd:b>
&lt;casesum:courtsummary&gt;
    &lt;heading&gt;
        &lt;title&gt;Tribunal Summary:&lt;/title&gt;
    &lt;/heading&gt;
    &lt;p&gt;
        &lt;text&gt;&lt;emph typestyle="bf"&gt;Noteworthy Decision Summary&lt;/emph&gt;&lt;/text&gt;
    &lt;/p&gt;
    &lt;p&gt;
      &lt;list&gt;
        &lt;listitem&gt;
            &lt;label&gt;*&lt;/label&gt;
            &lt;bodytext&gt;
                &lt;p&gt;
                    &lt;text&gt;The panel in &lt;emph typestyle="it"&gt;WCAT Decision #2005-01984&lt;/emph&gt; determined
                        that the standard of review for jurisdictional issues at common law is
                        correctness and that paragraph 58(2)(c) of the &lt;emph typestyle="it"
                            &gt;Administrative Tribunals Act&lt;/emph&gt; (ATA), which calls for a correctness
                        standard, may reasonably be interpreted as applying to jurisdictional
                        issues.&lt;/text&gt;
                &lt;/p&gt;
            &lt;/bodytext&gt;
        &lt;/listitem&gt;
      &lt;/list&gt;
    &lt;/p&gt;
&lt;/casesum:courtsummary&gt;</xd:pre>
         <xd:p>
            <xd:b>Note: </xd:b>If there is no text after <xd:b>HELD:</xd:b> and it is followed by
                        <xd:i>l</xd:i> then, whole list including its child elements will
                    come under <xd:b>casesum:disposition</xd:b>. For more clarification
                    please refer the below example.</xd:p>
         <xd:pre>
            <xd:b>Source XML</xd:b>
&lt;case:decisionsummary&gt;
    &lt;p&gt;
        &lt;text&gt; HELD: &lt;/text&gt;
    &lt;/p&gt;
    &lt;l virtual-nesting="3"&gt;
        &lt;li&gt;
            &lt;lilabel&gt;1.&lt;/lilabel&gt;
            &lt;p&gt;
                &lt;text&gt;The OSC's reasons for decision are not admissible in this proceeding.&lt;/text&gt;
            &lt;/p&gt;
        &lt;/li&gt;
        &lt;li&gt;
            &lt;lilabel&gt;2.&lt;/lilabel&gt;
            &lt;p&gt;
                &lt;text&gt;The OSC's reasons for decision are irrelevant to the certification
                    motion.&lt;/text&gt;
            &lt;/p&gt;
        &lt;/li&gt;
        &lt;li&gt;
            &lt;lilabel&gt;3.&lt;/lilabel&gt;
            &lt;p&gt;
                &lt;text&gt;The settlement agreement is admissible.&lt;/text&gt;
            &lt;/p&gt;
        &lt;/li&gt;
        &lt;li&gt;
            &lt;lilabel&gt;4.&lt;/lilabel&gt;
            &lt;p&gt;
                &lt;text&gt;The language of the settlement agreement deems it inadmissible.&lt;/text&gt;
            &lt;/p&gt;
        &lt;/li&gt;
    &lt;/l&gt;
&lt;/case:decisionsummary&gt;                
            </xd:pre>
         <xd:pre>
            <xd:b>Target XML</xd:b>

&lt;casesum:summaries&gt;
    &lt;casesum:decisionsummary&gt;
        &lt;casesum:disposition&gt;
            &lt;p&gt;
                &lt;text&gt;HELD:  &lt;/text&gt;
                &lt;list&gt;
                    &lt;listitem&gt;
                        &lt;label&gt;1.&lt;/label&gt;
                        &lt;bodytext&gt;
                            &lt;p&gt;
                                &lt;text&gt;The OSC's reasons for decision are not admissible in this proceeding.&lt;/text&gt;
                            &lt;/p&gt;
                        &lt;/bodytext&gt;
                    &lt;/listitem&gt;
                    &lt;listitem&gt;
                        &lt;label&gt;2.&lt;/label&gt;
                        &lt;bodytext&gt;
                            &lt;p&gt;
                                &lt;text&gt;The OSC's reasons for decision are irrelevant to the certification
                                    motion.&lt;/text&gt;
                            &lt;/p&gt;
                        &lt;/bodytext&gt;
                    &lt;/listitem&gt;
                    &lt;listitem&gt;
                        &lt;label&gt;3.&lt;/label&gt;
                        &lt;bodytext&gt;
                            &lt;p&gt;
                                &lt;text&gt;The settlement agreement is admissible.&lt;/text&gt;
                            &lt;/p&gt;
                        &lt;/bodytext&gt;
                    &lt;/listitem&gt;
                    &lt;listitem&gt;
                        &lt;label&gt;4.&lt;/label&gt;
                        &lt;bodytext&gt;
                            &lt;p&gt;
                                &lt;text&gt;The language of the settlement agreement deems it inadmissible.&lt;/text&gt;
                            &lt;/p&gt;
                        &lt;/bodytext&gt;
                    &lt;/listitem&gt;
                &lt;/list&gt;
            &lt;/p&gt;
        &lt;/casesum:disposition&gt;
    &lt;/casesum:decisionsummary&gt;
&lt;/casesum:summaries&gt;
</xd:pre>
         <xd:p>
            <xd:b>Note: </xd:b>
            <xd:p>For any <xd:i>p/text</xd:i> beginning with "HELD:" or "HELD ():"
                        followed by parenthesis or square barckets [ ], or the French language
                        version "DISPOSITIF :" or "DISPOSITIF ():" followed by parenthesis or square
                        barckets [ ], in all caps, with or without a space character before the
                        colon, or same within emph tag (e.g. "<xd:i>emph
                            typestyle="bf"</xd:i>"), the sentence becomes
                            <xd:b>casesum:disposition/p/text</xd:b> beginning with "HELD:"
                        or French language equivalent. That is, isolate the holdings sentence based
                        on looking in <xd:i>case:decisionsummary</xd:i> for the sentence
                        beginning "HELD:" (or French language version "DISPOSITIF :") in all capital
                        letters and and placing the end tags after the next period or dash character
                        followed by space, followed by an upper-case letter, that completes the
                        sentence. (i.e. the mark-up would surround only one sentence.) The preceding
                        and following space dash dash space, if any, should be converted to period
                        space. See the two examples.</xd:p>
         </xd:p>
         <xd:pre>
            
&lt;case:decisionsummary&gt;
    &lt;p&gt;
        &lt;text&gt;This was an appeal from the denial of injunctive relief, and a cross-appeal from a declaration that the defendant was violating the
            municipal by-law by operating a commercial greenhouse in an area zoned for residential use. For the facts and the decision appealed, see
            88 DRS P27-019. &lt;/text&gt;
    &lt;/p&gt;
    &lt;p&gt;
        &lt;text&gt;HELD: The appeal was allowed and the cross-appeal was dismissed. The defendant claimed that his use of the land was a valid continuing
            non-conforming use of the land. However, under the former by-law, the land was zoned for residential use. Certain farming operations were
            expressly prohibited by the by-law; greenhouse operation was not one of these. The defendant's claim that this legitimized his use was
            rejected. The whole scheme of the by-law was to limit this zone to residential use, and the by-law clearly did not contemplate use for a
            greenhouse. The defendant's use had been illegal under the former by-law, and therefore could not be protected as a continuing valid but
            non-conforming use. Under s. 49 of the Planning Act, the municipality had the same power to enforce a by-law as the Minister. This
            included, under s. 53 of the Act, the right to injunctive relief. An injunction restraining the defendant's continued use of the land as a
            commercial greenhouse operation was granted. &lt;/text&gt;
    &lt;/p&gt;
&lt;/case:decisionsummary&gt;
       
            <xd:b>becomes</xd:b>
           

        &lt;casesum:decisionsummary&gt;
            &lt;bodytext&gt;
                &lt;p&gt;
                    &lt;text&gt;This was an appeal from the denial of injunctive relief, and a cross-appeal from a declaration that the defendant was
                        violating the municipal by-law by operating a commercial greenhouse in an area zoned for residential use. For the facts and
                        the decision appealed, see 88 DRS P27-019. &lt;/text&gt;
                &lt;/p&gt;
            &lt;/bodytext&gt;
			&lt;casesum:disposition&gt;
				&lt;p&gt;
					&lt;text&gt;HELD: The appeal was allowed and the cross-appeal was dismissed.&lt;/text&gt; 
				&lt;/p&gt;
			&lt;/casesum:disposition&gt;
            &lt;bodytext&gt;
				&lt;p&gt;
					&lt;text&gt;The defendant claimed that his use of the land was a valid
                        continuing non-conforming use of the land. However, under the former by-law, the land was zoned for residential use. Certain
                        farming operations were expressly prohibited by the by-law; greenhouse operation was not one of these. The defendant's claim
                        that this legitimized his use was rejected. The whole scheme of the by-law was to limit this zone to residential use, and the
                        by-law clearly did not contemplate use for a greenhouse. The defendant's use had been illegal under the former by-law, and
                        therefore could not be protected as a continuing valid but non-conforming use. Under s. 49 of the Planning Act, the
                        municipality had the same power to enforce a by-law as the Minister. This included, under s. 53 of the Act, the right to
                        injunctive relief. An injunction restraining the defendant's continued use of the land as a commercial greenhouse operation
						was granted. &lt;/text&gt;
				&lt;/p&gt;
            &lt;/bodytext&gt;
        &lt;/casesum:decisionsummary&gt;

       
        </xd:pre>
         <xd:p>
            <xd:b>French language example with space before colon, and preceding and follwing
                    dash dash converted to period:</xd:b>
         </xd:p>
         <xd:pre> &lt;bodytext&gt; &lt;p&gt; &lt;text&gt;Demande d'injonction
                    interlocutoire -- Bérubé publie et distribue depuis 1973 un journal de quartier,
                    l'Information Centre-Ville -- Il tire son revenu de la publicité apparaissant
                    dans le journal -- Son fils était associé avec lui jusqu'à ce qu'il quitte le
                    journal et en publie un à son tour, l'Hebdo Centre-Ville (L'Hebdo) -- L'Hebdo
                    vise la même clientèle, le même secteur de la ville, sollicite les mêmes
                    commanditaires et met l'accent, dans sa présentation, sur l'expression
                    Centre-Ville, comme le fait l'Information Centre-Ville -- Bérubé demande qu'il
                    soit ordonné à son fils et son associé de cesser la distribution de l'Hebdo --
                    DISPOSITIF : Demande accueillie -- Même si la marque de commerce Centre-ville
                    n'est pas enregistrée, elle appartient à Bérubé depuis 1973 -- Le fils et son
                    associé ont concurrencé Bérubé d'une façon non permise par la Loi concernant les
                    marques de commerce -- La balance des inconvénients penche en faveur de Bérubé.
                    &lt;/text&gt; &lt;/p&gt; &lt;/bodytext&gt; </xd:pre>
         <xd:b>becomes</xd:b>
         <xd:pre> &lt;bodytext&gt; &lt;p&gt; &lt;text&gt;Demande d'injonction
                    interlocutoire - Bérubé publie et distribue depuis 1973 un journal de quartier,
                    l'Information Centre-Ville - Il tire son revenu de la publicité apparaissant
                    dans le journal - Son fils était associé avec lui jusqu'à ce qu'il quitte le
                    journal et en publie un à son tour, l'Hebdo Centre-Ville (L'Hebdo) - L'Hebdo
                    vise la même clientèle, le même secteur de la ville, sollicite les mêmes
                    commanditaires et met l'accent, dans sa présentation, sur l'expression
                    Centre-Ville, comme le fait l'Information Centre-Ville - Bérubé demande qu'il
                    soit ordonné à son fils et son associé de cesser la distribution de
                    l'Hebdo.&lt;/text&gt; &lt;/p&gt; &lt;/bodytext&gt; &lt;casesum:disposition&gt;
                    &lt;p&gt; &lt;text&gt;DISPOSITIF : Demande accueillie.&lt;/text&gt; &lt;/p&gt;
                    &lt;/casesum:disposition&gt; &lt;bodytext&gt; &lt;p&gt; &lt;text&gt;Même si la
                    marque de commerce Centre-ville n'est pas enregistrée, elle appartient à Bérubé
                    depuis 1973 - Le fils et son associé ont concurrencé Bérubé d'une façon non
                    permise par la Loi concernant les marques de commerce - La balance des
                    inconvénients penche en faveur de Bérubé. &lt;/text&gt; &lt;/p&gt;
                    &lt;/bodytext&gt; </xd:pre>
         <xd:pre> &lt;case:decisionsummary&gt; &lt;p&gt; &lt;text&gt;Sentencing of Fawaz
                    following his conviction on a charge of possession of a forged passport -- Fawaz
                    was apprehended at the Vancouver International Airport after he attempted to
                    enter Canada under a false name -- Fawaz made a refugee claim from Syria in 1991
                    and was in the process of seeking permanent residency -- He had previously been
                    convicted of GST fraud -- Fawaz admitted leaving and re-entering Canada several
                    times with the false passport -- &lt;emph typestyle="bf"&gt;HELD:&lt;/emph&gt;
                    Fawaz was sentenced to 10 months' imprisonment, less one month's credit for time
                    served -- The offence itself was serious -- Immigration fraud undermined a
                    system meant to protect the citizens of Canada -- Fawaz clearly regarded the law
                    as no particular impediment to doing what he otherwise wanted -- It was not
                    possible to convey the proper measure of denunciation outside of a custodial
                    sentence -- Sentence: Nine months' imprisonment.&lt;/text&gt; &lt;/p&gt;
                    &lt;/case:decisionsummary&gt; </xd:pre>
         <xd:b>becomes</xd:b>
         <xd:pre> &lt;casesum:decisionsummary&gt; &lt;bodytext&gt; &lt;p&gt;
                    &lt;text&gt;Sentencing of Fawaz following his conviction on a charge of
                    possession of a forged passport - Fawaz was apprehended at the Vancouver
                    International Airport after he attempted to enter Canada under a false name -
                    Fawaz made a refugee claim from Syria in 1991 and was in the process of seeking
                    permanent residency - He had previously been convicted of GST fraud - Fawaz
                    admitted leaving and re-entering Canada several times with the false passport
                    &lt;/text&gt; &lt;/p&gt; &lt;/bodytext&gt; &lt;casesum:disposition&gt; &lt;p&gt;
                    &lt;text&gt;&lt;emph typestyle="bf"&gt;HELD:&lt;/emph&gt;: Fawaz was sentenced
                    to 10 months' imprisonment, less one month's credit for time
                    served.&lt;/text&gt; &lt;/p&gt; &lt;/casesum:disposition&gt; &lt;bodytext&gt;
                    &lt;p&gt; &lt;text&gt; The offence itself was serious - Immigration fraud
                    undermined a system meant to protect the citizens of Canada - Fawaz clearly
                    regarded the law as no particular impediment to doing what he otherwise wanted -
                    It was not possible to convey the proper measure of denunciation outside of a
                    custodial sentence - Sentence: Nine months' imprisonment. &lt;/text&gt;
                    &lt;/p&gt; &lt;/bodytext&gt; &lt;/casesum:decisionsummary&gt; </xd:pre>
         <xd:pre>
            <xd:b>Example if text comes with HELD (dissent):</xd:b>
            <xd:b>Source XML</xd:b> &lt;case:decisionsummary&gt; &lt;p&gt; &lt;text&gt;Application
                    for costs. Respondents were trustees under a trust agreement in which the
                    appellant's mother purported to distribute her properties among her children and
                    nephews. At trial, the appellant unsuccessfully challenged the trust agreement
                    on the grounds that the respondents exercised undue influence on the settlor. On
                    appeal, the trust agreement was set aside and the parties were ordered to bear
                    their own costs of the trial but appellants were to have costs of the appeal.
                    The respondents applied for direction to recover their costs from the property
                    described in the trust agreement. &lt;emph typestyle="bf"&gt;HELD
                    (dissent):&lt;/emph&gt; Application dismissed. The respondent trustees were
                    wanting in their conduct in securing the trust settlement and therefore could
                    not rely on the trust for their costs.&lt;/text&gt; &lt;/p&gt;
                    &lt;/case:decisionsummary&gt; </xd:pre>
         <xd:b>Becomes</xd:b>
         <xd:pre> &lt;casesum:decisionsummary&gt; &lt;bodytext&gt; &lt;p&gt;
                    &lt;text&gt;Application for costs. Respondents were trustees under a trust
                    agreement in which the appellant's mother purported to distribute her properties
                    among her children and nephews. At trial, the appellant unsuccessfully
                    challenged the trust agreement on the grounds that the respondents exercised
                    undue influence on the settlor. On appeal, the trust agreement was set aside and
                    the parties were ordered to bear their own costs of the trial but appellants
                    were to have costs of the appeal. The respondents applied for direction to
                    recover their costs from the property described in the trust
                    agreement.&lt;/text&gt; &lt;/p&gt; &lt;/bodytext&gt; &lt;casesum:disposition&gt;
                    &lt;p&gt; &lt;text&gt;&lt;emph typestyle="bf"&gt;HELD (dissent):&lt;/emph&gt;
                    Application dismissed. &lt;/text&gt; &lt;/p&gt; &lt;/casesum:disposition&gt;
                    &lt;bodytext&gt; &lt;p&gt; &lt;text&gt;The respondent trustees were wanting in
                    their conduct in securing the trust settlement and therefore could not rely on
                    the trust for their costs.The respondent trustees were wanting in their conduct
                    in securing the trust settlement and therefore could not rely on the trust for
                    their costs.&lt;/text&gt; &lt;/p&gt; &lt;/bodytext&gt;
                    &lt;/casesum:decisionsummary&gt; &lt;/casesum:summaries&gt; </xd:pre>
         <!--Changes2014-11-18: updated instructions to handle "HELD ():"
                        and "HELD []:" ... P4 Issue #3452014-10-20: Added example to handle text coming with
                        HELD: ... P4 Issue #3452014-08-27: Updated instruction for
                        case:decisionsummary to place the period sign after completion of sentence
                        ... P4 Issue #3232014-08-11: Updated instruction for
                        case:decisionsummary having HELD without any following text... P4 Issue
                            #3172014-07-28: Added instruction to handle "HELD:"
                        keyword in case:decisionsummary.. R4.5 Issue #15842014-07-15: Clarification on HELD data
                        scenario...."DB item # 268 2014-06-19: Example to handle HELD and DESPOTIF
                        containing emph...."DB item # 222 2014-06-10: Loosened instruction to convert
                            p/text beginning with "HELD:" into
                            casesum:disposition/p/text. Allow dash to end
                        first sentence. Allow emph around HELD text. Allow
                        space before colon. Allow French language version. Convert preceding and
                        following space dash dash with a period. Add example.R4.5 Issue
                        #1588.2014-05-27:  holding's of court / despotif..."DB item
                        # 1602 2014-04-09: Removed double dashes at decisionsummary
                        section..."DB item # 1343 -->
      </xd:desc>
   </xd:doc>
   <!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
   <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA02-Case_Summaries\CA02DS_DIGESTDOC_to_seclaw\case.decisionsummary.dita  -->
   <!-- Vikas Rohilla : Template to match the case:decisionsummary	and creates the casesum:summaries or casesum:decisionsummary-->
   <!-- note apply template for the attributes remove if statement    -->
   <xsl:template match="case:decisionsummary">
      <casesum:summaries>
         <xsl:choose>
            <xsl:when test="starts-with(heading/title, 'Court Summary:') or starts-with(heading/title, 'Commission Summary:') or starts-with(heading/title, 'Board Summary:') or starts-with(heading/title, 'Tribunal Summary:') or starts-with(heading/title, 'Executive Summary:') or starts-with(heading/title, 'Commissioner Summary:') or starts-with(heading/title, 'Résumé du tribunal :') or starts-with(heading/title, 'Sommaire du tribunal :') or starts-with(heading/title, 'Résumé de la Cour :')">
               <xsl:element name="casesum:courtsummary">
                  <xsl:apply-templates select="@* | node()"/>
               </xsl:element>
            </xsl:when>
            <xsl:when test="heading/title[contains(., 'Subsequent History') or contains(., 'Historique subséquent') or contains(., 'Court Catchwords') or contains(., 'Indexation de la Cour')] or child::p[1]/text[1]/emph[1][contains(., 'Subsequent History') or contains(., 'Historique subséquent') or contains(., 'Court Catchwords') or contains(., 'Indexation de la Cour')]">
               <xsl:element name="casesum:courtsummary">
                  <xsl:apply-templates select="@* | node()"/>
               </xsl:element>
            </xsl:when>
            <xsl:otherwise>
               <casesum:decisionsummary>
                  <xsl:apply-templates select="@*"/>
                  <xsl:apply-templates select="heading"/>
                  <!--<xsl:if test="p[text[not(starts-with(., 'HELD:') or starts-with(., 'DISPOSITIF :'))]] | p[text/emph[not(starts-with(., 'HELD:') or starts-with(., 'DISPOSITIF:'))]]">
                            <bodytext>                                   
                                <xsl:apply-templates select="p[text[not(starts-with(., 'HELD:') or starts-with(., 'DISPOSITIF :'))]] | p[text/emph[not(starts-with(., 'HELD:') or starts-with(., 'DISPOSITIF:'))]]"/> 
                            </bodytext>
                        </xsl:if>-->
                  <xsl:for-each select="p">
                     <xsl:choose>
                        <xsl:when test=".[text[starts-with(., 'HELD:') or starts-with(., 'DISPOSITIF :')]]">
                           <casesum:disposition>
                              <p>
                                 <text>
                                    <xsl:choose>
                                       <xsl:when test=".[text[starts-with(., 'HELD:')]]">
                                          <xsl:value-of select="replace(substring-before(.[text[starts-with(., 'HELD:')]], '.'),'--','—')"/>
                                       </xsl:when>
                                       <xsl:otherwise>
                                          <xsl:value-of select="replace(substring-before(.[text[starts-with(., 'DISPOSITIF : ')]], '.'),'--','—')"/>
                                       </xsl:otherwise>
                                    </xsl:choose>
                                    <xsl:text>.</xsl:text>
                                 </text>
                              </p>
                           </casesum:disposition>
                           <bodytext>
                              <p>
                                 <text>
                                    <xsl:value-of select="substring-after(.[text[starts-with(., 'HELD:') or starts-with(., 'DISPOSITIF :')]], '.')"/>
                                 </text>
                              </p>
                           </bodytext>
                        </xsl:when>
                        <xsl:when test=".[text/emph[starts-with(., 'HELD:') or starts-with(., 'DISPOSITIF:')]]">
                           <bodytext>
                              <p>
                                 <text>
                                    <xsl:if test=".[text/emph[starts-with(., 'HELD:')]]"><!-- <xsl:value-of select="substring-before(p[text/emph[starts-with(., 'HELD:')]],'HELD:')"/>-->
                                       <xsl:value-of select="replace(substring-before(.[text/emph[starts-with(., 'HELD:')]],'HELD:'),'--','—')"/>
                                    </xsl:if>
                                    <xsl:if test=".[text/emph[starts-with(., 'DISPOSITIF:')]]"><!--<xsl:value-of select="substring-before(p[text/emph[starts-with(., 'DISPOSITIF:')]],'DISPOSITIF:')"/>-->
                                       <xsl:value-of select="replace(substring-before(.[text/emph[starts-with(., 'DISPOSITIF:')]],'DISPOSITIF:'),'--','—')"/>
                                    </xsl:if>
                                 </text>
                              </p>
                           </bodytext>
                           <casesum:disposition>
                              <p>
                                 <text>
                                    <xsl:apply-templates select="./text/emph[starts-with(., 'HELD:') or starts-with(., 'DISPOSITIF :')]"/>
                                    <xsl:if test=".[text/emph[starts-with(., 'HELD:')]]"><!--<xsl:value-of select="substring-before(p/text/text()[preceding-sibling::*[1][self::emph[starts-with(.,'HELD:')]]],'.')"/>-->
                                       <xsl:value-of select="replace(substring-before(./text/text()[preceding-sibling::*[1][self::emph[starts-with(.,'HELD:')]]],'.'),'--','—')"/>
                                       <xsl:text>.</xsl:text>
                                    </xsl:if>
                                    <xsl:if test=".[text/emph[starts-with(., 'DISPOSITIF:')]]"><!--<xsl:value-of select="substring-before(p/text/text()[preceding-sibling::*[1][self::emph[starts-with(.,'DISPOSITIF:')]]],'.')"/>-->
                                       <xsl:value-of select="replace(substring-before(./text/text()[preceding-sibling::*[1][self::emph[starts-with(.,'DISPOSITIF:')]]],'.'),'--','—')"/>
                                    </xsl:if>
                                 </text>
                              </p>
                           </casesum:disposition>
                           <bodytext>
                              <p>
                                 <text>
                                    <xsl:if test=".[text/emph[starts-with(., 'HELD:')]]">
                                       <xsl:value-of select="replace(substring-after(./text/text()[preceding-sibling::*[1][self::emph[starts-with(. , 'HELD:')]]] , '.'),'--','—')"/>
                                       <!--<xsl:value-of select="substring-after(p/text/text()[preceding-sibling::*[1][self::emph[starts-with(. , 'HELD:')]]] , '.')"/>-->
                                    </xsl:if>
                                    <xsl:if test=".[text/emph[starts-with(., 'DISPOSITIF:')]]">
                                       <xsl:value-of select="replace(substring-after(./text/text()[preceding-sibling::*[1][self::emph[starts-with(. , 'DISPOSITIF:')]]] , '.'),'--','—')"/>
                                       <!--<xsl:value-of select="substring-after(p/text/text()[preceding-sibling::*[1][self::emph[starts-with(. , 'DISPOSITIF:')]]] , '.')"/>-->
                                    </xsl:if>
                                 </text>
                              </p>
                           </bodytext>
                        </xsl:when>
                        <xsl:otherwise>
                           <bodytext>
                              <p>
                                 <text>
                                    <xsl:value-of select="replace(.,'--','—')"/>
                                 </text>
                              </p>
                           </bodytext>
                        </xsl:otherwise>
                     </xsl:choose>
                  </xsl:for-each>
               </casesum:decisionsummary>
            </xsl:otherwise>
         </xsl:choose>
      </casesum:summaries>
   </xsl:template>
   <!-- <topicref href="case.embeddedcase.dita"/> -->   <xd:doc>
      <xd:desc>
         <xd:ul>
            <xd:li>
               <xd:i>case:embeddedcase</xd:i> becmes
                        <xd:b>courtcase:caseexcerpt</xd:b>. <xd:p>
                  <xd:b>Note: </xd:b>Hence Rosetta element
                            <xd:i>case:embeddedcase</xd:i> occurs under
                            <xd:i>/dig:item/bodytext</xd:i>, and
                            <xd:i>bodytext</xd:i> only contains
                            <xd:i>case:embeddedcase</xd:i> and not any other sibling, So
                        during NL conversion we will omit <xd:i>bodytext</xd:i> and then
                            <xd:b>courtcase:caseexcerpt</xd:b> will be retained under
                            <xd:b>seclaw:digest</xd:b> as child element. So like this way...
                            <xd:p>
                     <xd:b>Rosetta Input XPATH:</xd:b>
                     <xd:i>/DIGESTDOC/dig:body/dig:collection/dig:level/dig:item/bodytext/case:embeddedcase</xd:i>
                  </xd:p>
                  <xd:b>Will become</xd:b>
                  <xd:p>
                     <xd:b>NL Output XPATH:</xd:b>
                     <xd:b>/seclaw:seclaw/seclaw:body/seclaw:level/seclaw:bodytext/seclaw:digestgrp/seclaw:digest/courtcase:caseexcerpt</xd:b>.</xd:p>
               </xd:p>
               <xd:pre>

&lt;dig:item&gt;
    ...........
    ...........
    &lt;bodytext searchtype="DECISION-SUMMARY"&gt;
        &lt;case:embeddedcase&gt;
            &lt;case:headnote&gt;
                &lt;case:decisionsummary&gt;
                    &lt;p&gt;
                        &lt;text&gt;Sentencing of KD, 16, for robbery and failing to
                            comply with his recognizance -- At the time of the
                            robbery, KD was subject to a peace bond on another
                            robbery charge relating to the same 16-year-old
                            ient treatment he had received
                            -- KD had shown that he would not behave out of custody
                            or in custody -- No sentence other than a custodial
                            sentence would be fit in this case -- A non-custodial
                            sentence would not hold KD accountable for these
                            robberies -- It would not promote his rehabilitation or
                            reintegration -- The joint submission would have been
                            contrary to the public interest or would have, if
                            imposed, brought the administration of justice into
                            disrepute -- Sentence: Three months' closed custody,
                            three months' open custody, three months' community
                            supervision and 12 months' probation for robbery; 12
                            months' probation for failure to comply.&lt;/text&gt;
                    &lt;/p&gt;
                &lt;/case:decisionsummary&gt;
            &lt;/case:headnote&gt;
        &lt;/case:embeddedcase&gt;
    &lt;/bodytext&gt;
    ..........
    ..........
&lt;/dig:item&gt;


<xd:b>Becomes</xd:b>   


&lt;seclaw:digest&gt;
    ..........
    ..........
    &lt;courtcase:caseexcerpt&gt;
        &lt;courtcase:head&gt;
            &lt;casesum:summaries&gt;
                &lt;casesum:decisionsummary&gt;
                    &lt;bodytext&gt;
                        &lt;p&gt;
                            &lt;text&gt;Sentencing of KD, 16, for robbery and failing to
                                comply with his recognizance -- At the time of the
                                robbery, KD was subject to a peace bond on another
                                robbery charge relating to the same 16-year-old
                                physically challenged complainant -- KD and three others
                                encountered the complainant on the street -- KD struck
                                him on the head wearing brass knuckles and then kicked
                                the complainant -- KD and his friends then stole $5 from
                                the complainant -- As a result of these robbery charges,
                                sentence would not hold KD accountable for these
                                robberies -- It would not promote his rehabilitation or
                                reintegration -- The joint submission would have been
                                contrary to the public interest or would have, if
                                imposed, brought the administration of justice into
                                disrepute -- Sentence: Three months' closed custody,
                                three months' open custody, three months' community
                                supervision and 12 months' probation for robbery; 12
                                months' probation for failure to comply.&lt;/text&gt;
                        &lt;/p&gt;
                    &lt;/bodytext&gt;
                &lt;/casesum:decisionsummary&gt;
            &lt;/casesum:summaries&gt;
        &lt;/courtcase:head&gt;
    &lt;/courtcase:caseexcerpt&gt;
    ..........
    ..........
&lt;/seclaw:digest&gt;
</xd:pre>
            </xd:li>
         </xd:ul>
      </xd:desc>
   </xd:doc>
   <!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
   <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA02-Case_Summaries\CA02DS_DIGESTDOC_to_seclaw\case.embeddedcase.dita  -->
   <!-- Vikas Rohilla : Template to match the case:embeddedcase and creates the courtcase:caseexcerpt -->
   <xsl:template match="case:embeddedcase">
      <courtcase:caseexcerpt>
         <xsl:apply-templates select="@* | node()"/>
      </courtcase:caseexcerpt>
   </xsl:template>
   <!-- <topicref href="case.filenum.dita"/> -->   <xd:doc>
      <xd:desc>
         <xd:ul>
            <xd:li>
               <xd:i>case:filenum</xd:i> becomes
                  <xd:b>caseinfo:caseinfo/caseinfo:docketnum</xd:b>
               <xd:pre>&lt;case:filenum&gt;No. 200301T1696&lt;/case:filenum&gt;

<xd:b>Becomes</xd:b>
             
&lt;caseinfo:docketnum&gt;No. 200301T1696&lt;/caseinfo:docketnum&gt;            
</xd:pre>
            </xd:li>
         </xd:ul>
      </xd:desc>
   </xd:doc>
   <!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
   <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA02-Case_Summaries\CA02DS_DIGESTDOC_to_seclaw\case.filenum.dita  -->
   <!-- Vikas Rohilla : template to match the case:filenum nad creates the caseinfo:docketnum -->
   <xsl:template match="case:filenum">
      <caseinfo:docketnum>
         <xsl:apply-templates select="@* | node()"/>
      </caseinfo:docketnum>
   </xsl:template>
   <!-- <topicref href="case.info.dita"/> -->   <xd:doc>
      <xd:desc>
         <xd:ul>
            <xd:li>
               <xd:i>case:info</xd:i> becomes
            <xd:b>caseinfo:caseinfo</xd:b>.
          <xd:p>
                  <xd:b>Note: </xd:b>Conversion should not create adjacent <xd:b>caseinfo:caseinfo</xd:b>, data should be merged into single element <xd:b>caseinfo:caseinfo</xd:b>.</xd:p>
               <xd:pre>


&lt;case:info&gt;
    ......
    ......
&lt;/case:info&gt; 

                    </xd:pre>
               <xd:b>Becomes</xd:b>
               <xd:pre>
    

&lt;caseinfo:caseinfo&gt;
    ......
    ......
&lt;/caseinfo:caseinfo&gt;

          </xd:pre>
            </xd:li>
         </xd:ul>
      </xd:desc>
   </xd:doc>
   <!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
   <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA02-Case_Summaries\CA02DS_DIGESTDOC_to_seclaw\case.info.dita  -->
   <!--Vikas Rohilla : Template to match the case:info and the parent dig:info and the child abbrvname or case:casename-->
   <xsl:template match="case:info[parent::dig:info][child::abbrvname or child::case:casename]">
      <caseinfo:caseinfo>
         <xsl:apply-templates select="abbrvname,case:casename,case:reportercite"/>
         <xsl:apply-templates select="node()[name()!='abbrvname'][name()!='case:casename'][name()!='case:reportercite']"/>
         <xsl:apply-templates select="./parent::dig:info/following-sibling::abstract/child::catchwordgrp"/>
      </caseinfo:caseinfo>
   </xsl:template>
   <!-- Vikas Rohilla : Template to match the case:info  -->
   <xsl:template match="case:info">
      <seclaw:digestinfo>
         <caseinfo:caseinfo>
            <xsl:apply-templates select="abbrvname,case:casename,case:reportercite"/>
            <xsl:apply-templates select="node()[name()!='abbrvname'][name()!='case:casename'][name()!='case:reportercite']"/>
            <xsl:apply-templates select="./parent::dig:info/following-sibling::abstract/child::catchwordgrp"/>
         </caseinfo:caseinfo>
      </seclaw:digestinfo>
   </xsl:template>
   <!-- <topicref href="case.judges.dita"/> -->   <xd:doc>
      <xd:desc>
         <xd:ul>
            <xd:li>
               <xd:i>case:judges</xd:i>
                    becomes <xd:b>/caseinfo:caseinfo/courtcase:panel/courtcase:judges</xd:b>
               <xd:pre>
&lt;case:judges&gt;per Gerwing J.A.&lt;/case:judges&gt;

<xd:b>Becomes</xd:b>

&lt;caseinfo:caseinfo&gt;
        &lt;courtcase:panel&gt;
            &lt;courtcase:judges&gt;per Gerwing J.A.&lt;/courtcase:judges&gt;
        &lt;/courtcase:panel&gt;
&lt;/caseinfo:caseinfo&gt; 
                    </xd:pre>
            </xd:li>
         </xd:ul>
      </xd:desc>
   </xd:doc>
   <!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
   <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA02-Case_Summaries\CA02DS_DIGESTDOC_to_seclaw\case.judges.dita  -->
   <!-- Vikas Rohilla : Template to match the case:judges and creates the courtcase:panel/courtcase:judges -->
   <xsl:template match="case:judges">
      <courtcase:panel>
         <courtcase:judges>
            <xsl:apply-templates select="@* | node()"/>
         </courtcase:judges>
      </courtcase:panel>
   </xsl:template>
   <!-- <topicref href="case.juris.dita"/> -->   <xd:doc>
      <xd:desc>
         <xd:i>case:juris</xd:i> can hold a code representing a Province or
            Country.  We will convert the following codes from old to new ISO: <xd:ul>
            <xd:li>For Canada: if input document contains <xd:i>CD</xd:i> or
                            <xd:i>Canada</xd:i> within <xd:i>leg:juris</xd:i>,
                        then convert it to <xd:b>CA</xd:b>.</xd:li>
            <xd:li>For UK: if input document contains <xd:i>UK</xd:i> within
                    <xd:i>case:juris</xd:i>, then convert it to
                    <xd:b>CA</xd:b>.</xd:li>
            <xd:li>For Newfoundland and Labrador: if input document contains
                            <xd:i>NF</xd:i> within <xd:i>leg:juris</xd:i>, then
                        convert it to <xd:b>NL</xd:b>.</xd:li>
            <xd:li>For Quebec: if input document contains <xd:i>PQ</xd:i> within
                            <xd:i>leg:juris</xd:i>, then convert it to
                            <xd:b>QC</xd:b>.</xd:li>
         </xd:ul>
         <xd:b>The translations should be</xd:b>: <xd:ul>
            <xd:li>
               <xd:b>jurisinfo:courtinfo/jurisinfo:jurisdiction/jurisinfo:system@normshortname/globalentity:entity/globalentity:entityReference@role="urn:contentType:geography",
                            @guid:guid</xd:b> and with
                            <xd:b>globalentity:content</xd:b> element. <xd:p>
                  <xd:b>Note: </xd:b>Place the
                            content of <xd:i>case:juris</xd:i> in
                                <xd:b>jurisinfo:system@normshortname</xd:b> .
                                </xd:p>
               <xd:p>
                  <xd:b>Note: </xd:b>
                  <xd:b>@guid:guid</xd:b> attribute value will
                            be taken from below mentioned table from <xd:b>PGUID</xd:b> column. Country or
                            Province code can also be taken from <xd:b>COUNTRY &amp; PROVINCE CODES</xd:b>
                            column.</xd:p>
            </xd:li>
         </xd:ul>
         <xd:p>
            <xd:ul>
               <xd:li>
                  <xd:ol>
                     <xd:li>The <xd:b>province</xd:b> codes with PGUID codes for Country:</xd:li>
                     <xd:li>
                        <xd:b>OFFICIAL NAME</xd:b>
                     </xd:li>
                     <xd:li>
                        <xd:b>COUNTRY &amp; PROVINCE CODES</xd:b>
                     </xd:li>
                     <xd:li>
                        <xd:b>COUNTRY/PROVINCE</xd:b>
                     </xd:li>
                     <xd:li>
                        <xd:b>PGUID</xd:b>
                     </xd:li>
                     <xd:li>
                        <xd:b>CODES</xd:b>
                     </xd:li>
                     <xd:li>Canada</xd:li>
                     <xd:li>(CA)</xd:li>
                     <xd:li>COUNTRY</xd:li>
                     <xd:li>urn:entity:geob-101733280</xd:li>
                     <xd:li>ISO-3166-1</xd:li>
                     <xd:li>Alberta</xd:li>
                     <xd:li>(AB)</xd:li>
                     <xd:li>PROVINCE</xd:li>
                     <xd:li>urn:entity:geob-101865413</xd:li>
                     <xd:li>ISO-3166-2</xd:li>
                     <xd:li>British Columbia</xd:li>
                     <xd:li>(BC)</xd:li>
                     <xd:li>PROVINCE</xd:li>
                     <xd:li>urn:entity:geob-100301383</xd:li>
                     <xd:li>ISO-3166-2</xd:li>
                     <xd:li>Prince Edward Island</xd:li>
                     <xd:li>(PE)</xd:li>
                     <xd:li>PROVINCE</xd:li>
                     <xd:li>urn:entity:geob-101864367</xd:li>
                     <xd:li>ISO-3166-2</xd:li>
                     <xd:li>Manitoba</xd:li>
                     <xd:li>(MB)</xd:li>
                     <xd:li>PROVINCE</xd:li>
                     <xd:li>urn:entity:geob-101864769</xd:li>
                     <xd:li>ISO-3166-2</xd:li>
                     <xd:li>Province of Newfoundland &amp; Labrador</xd:li>
                     <xd:li>(NL)</xd:li>
                     <xd:li>PROVINCE </xd:li>
                     <xd:li>urn:entity:geob-102223081</xd:li>
                     <xd:li>ISO-3166-2</xd:li>
                     <xd:li>Northwest Territories</xd:li>
                     <xd:li>(NT)</xd:li>
                     <xd:li>PROVINCE</xd:li>
                     <xd:li>urn:entity:geob-101865328</xd:li>
                     <xd:li>ISO-3166-2</xd:li>
                     <xd:li>New Brunswick</xd:li>
                     <xd:li>(NB)</xd:li>
                     <xd:li>PROVINCE</xd:li>
                     <xd:li>urn:entity:geob-101378115</xd:li>
                     <xd:li>ISO-3166-2</xd:li>
                     <xd:li>Nova Scotia</xd:li>
                     <xd:li>(NS)</xd:li>
                     <xd:li>PROVINCE</xd:li>
                     <xd:li>urn:entity:geob-101507047</xd:li>
                     <xd:li>ISO-3166-2</xd:li>
                     <xd:li>Nunavut</xd:li>
                     <xd:li>(NU)</xd:li>
                     <xd:li>PROVINCE</xd:li>
                     <xd:li>urn:entity:geob-101770571</xd:li>
                     <xd:li>ISO-3166-2</xd:li>
                     <xd:li>Ontario</xd:li>
                     <xd:li>(ON)</xd:li>
                     <xd:li>PROVINCE</xd:li>
                     <xd:li>urn:entity:geob-101149718</xd:li>
                     <xd:li>ISO-3166-2</xd:li>
                     <xd:li>Quebec</xd:li>
                     <xd:li>(QC)</xd:li>
                     <xd:li>PROVINCE</xd:li>
                     <xd:li>urn:entity:geob-100432051</xd:li>
                     <xd:li>ISO-3166-2</xd:li>
                     <xd:li>Saskatchewan</xd:li>
                     <xd:li>(SK)</xd:li>
                     <xd:li>PROVINCE</xd:li>
                     <xd:li>urn:entity:geob-102094956</xd:li>
                     <xd:li>ISO-3166-2</xd:li>
                     <xd:li>Yukon Territory</xd:li>
                     <xd:li>(YT)</xd:li>
                     <xd:li>PROVINCE</xd:li>
                     <xd:li>urn:entity:geob-102091695</xd:li>
                     <xd:li>ISO-3166-2</xd:li>
                     <!--<row>
                                        <entry>United Kingdom</entry>
                                        <entry>(UK)</entry>
                                        <entry>COUNTRY</entry>
                                        <entry>urn:entity:geob-102315884</entry>
                                        <entry>ISO-3166-1</entry>
                                    </row>-->
                  </xd:ol>
               </xd:li>
            </xd:ul>
         </xd:p>
         <xd:p>
            <xd:b>Note: </xd:b>If <xd:i>case:juris</xd:i> has or don't have attribute
                <xd:i>@ln.user-displayed="false"</xd:i> , then map it as usual.</xd:p>
         <xd:p>
            <xd:b>Mapping of <xd:i>case:juris</xd:i> with province code</xd:b>
         </xd:p>
         <xd:pre>
&lt;case:courtinfo&gt;
  &lt;case:juris ln.user-displayed="false"&gt;PQ&lt;/case:juris&gt;
&lt;/case:courtinfo&gt;
           </xd:pre>
         <xd:b>becomes</xd:b>
         <xd:pre>

&lt;jurisinfo:courtinfo&gt;
    &lt;jurisinfo:jurisdiction&gt;    
        &lt;jurisinfo:system normshortname="QC"&gt;
                &lt;globalentity:entity&gt;
                    &lt;globalentity:content&gt;QC&lt;/globalentity:content&gt;
                    &lt;globalentity:entityReference role="urn:contentType:geography" guid:guid="urn:entity:geob-100301383"/&gt;                    
                &lt;/globalentity:entity&gt;
        &lt;/jurisinfo:system&gt;
    &lt;/jurisinfo:jurisdiction&gt;
&lt;/jurisinfo:courtinfo&gt;
           </xd:pre>
         <xd:p>
            <xd:b>Mapping of <xd:i>case:juris</xd:i> with country code "CD"</xd:b>
         </xd:p>
         <xd:pre>
&lt;case:courtinfo&gt;
  &lt;case:juris ln.user-displayed="false"&gt;CD&lt;/case:juris&gt;
&lt;/case:courtinfo&gt;

           </xd:pre>
         <xd:b>becomes</xd:b>
         <xd:pre>
&lt;jurisinfo:courtinfo&gt;
    &lt;jurisinfo:jurisdiction&gt;    
        &lt;jurisinfo:system normshortname="CA"&gt;
                &lt;globalentity:entity&gt;
                    &lt;globalentity:content&gt;CA&lt;/globalentity:content&gt;
                    &lt;globalentity:entityReference role="urn:contentType:geography" guid:guid="urn:entity:geob-101733280"/&gt;                    
                &lt;/globalentity:entity&gt;
        &lt;/jurisinfo:system&gt;
    &lt;/jurisinfo:jurisdiction&gt;
&lt;/jurisinfo:courtinfo&gt;
           </xd:pre>
         <!-- <note>For handling <b>@ln.user-displayed</b>
       attribute, refer the general markup <xref
           href="../../../common_newest/Rosetta_case.juris_ln.user-displayed.dita"
         >ln.user_displayed="false"</xref> section in the CI.</note>-->
         <xd:p>
            <xd:b> Changes </xd:b>
         </xd:p>
         <xd:p>2015-02-05: Remove UK PGUID value from table (CA01, CA02 (all streams), CA03 and CA04). R45 RFA #2133.</xd:p>
         <xd:p>2015-02-02: Added instructions to apply CA in guid for country code "UK". Db issue #407 </xd:p>
         <xd:p>2015-01-30: Updated "The province codes with PGUID codes for Country" table when case:juris with country code "UK". Db issue #407 </xd:p>
         <xd:p>2014-12-15: Updated mapping. <xd:b>Db R4.5 issue
                    #2047</xd:b>
         </xd:p>
      </xd:desc>
   </xd:doc>
   <!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
   <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA02-Case_Summaries\CA02DS_DIGESTDOC_to_seclaw\case.juris.dita  -->
   <!-- Vikas Rohilla : Variable pguid with attribute key value pair	 -->
   <xsl:variable name="pguid">
      <ext:codes>
         <ext:code key="CA" value="urn:entity:geob-101733280"/>
         <ext:code key="CD" value="urn:entity:geob-101733280"/>
         <ext:code key="Canada" value="urn:entity:geob-101733280"/>
         <ext:code key="UK" value="urn:entity:geob-101733280"/>
         <ext:code key="AB" value="urn:entity:geob-101865413"/>
         <ext:code key="BC" value="urn:entity:geob-100301383"/>
         <ext:code key="PE" value="urn:entity:geob-101864367"/>
         <ext:code key="MB" value="urn:entity:geob-101864769"/>
         <ext:code key="NL" value="urn:entity:geob-102223081"/>
         <ext:code key="NF" value="urn:entity:geob-102223081"/>
         <ext:code key="NT" value="urn:entity:geob-101865328"/>
         <ext:code key="NB" value="urn:entity:geob-101378115"/>
         <ext:code key="NS" value="urn:entity:geob-101507047"/>
         <ext:code key="NU" value="urn:entity:geob-101770571"/>
         <ext:code key="ON" value="urn:entity:geob-101149718"/>
         <ext:code key="QC" value="urn:entity:geob-100432051"/>
         <ext:code key="PQ" value="urn:entity:geob-100432051"/>
         <ext:code key="SK" value="urn:entity:geob-102094956"/>
         <ext:code key="YT" value="urn:entity:geob-102091695"/>
      </ext:codes>
   </xsl:variable>
   <!--Key kCodeByName for match the ext:code -->
   <xsl:key name="kCodeByName" match="ext:code" use="string(@key)"/>
   <!-- Vikas Rohilla : Template to match the case:juris -->
   <xsl:template match="case:courtinfo/case:juris">
      <xsl:variable name="jurisValue">
         <xsl:choose>
            <xsl:when test=".='PQ'">
               <xsl:text>QC</xsl:text>
            </xsl:when>
            <xsl:when test=".='CD' or .='Canada' or .='UK'">
               <xsl:text>CA</xsl:text>
            </xsl:when>
            <xsl:when test=".='NF'">
               <xsl:text>NL</xsl:text>
            </xsl:when>
            <xsl:otherwise>
               <xsl:value-of select="."/>
            </xsl:otherwise>
         </xsl:choose>
      </xsl:variable>
      <xsl:element name="jurisinfo:jurisdiction">
         <xsl:element name="jurisinfo:system">
            <xsl:attribute name="normshortname">
               <xsl:value-of select="$jurisValue"/>
            </xsl:attribute>
            <xsl:element name="globalentity:entity">
               <xsl:element name="globalentity:content">
                  <xsl:value-of select="$jurisValue"/>
               </xsl:element>
               <xsl:element name="globalentity:entityReference">
                  <xsl:attribute name="guid:guid">
                     <xsl:value-of select="key('kCodeByName', ., $pguid)/@value"/>
                  </xsl:attribute>
                  <xsl:attribute name="role">
                     <xsl:text>urn:contentType:geography</xsl:text>
                  </xsl:attribute>
               </xsl:element>
            </xsl:element>
         </xsl:element>
      </xsl:element>
   </xsl:template>
   <!--  Vikas Rohilla : supressed the case:juris/@ln.user-displayed   -->
   <xsl:template match="case:juris/@ln.user-displayed"/>
   <!-- <topicref href="note.dita"/> -->   <xd:doc>
      <xd:desc>
         <xd:p>
            <xd:i>note</xd:i> becomes <xd:b>note</xd:b> 
          comes with optional attribute <xd:i>@notetype</xd:i> becomes <xd:b>@notetype</xd:b>.
        </xd:p>
         <xd:p>
            <xd:b>Note: </xd:b>If <xd:i>remotelink</xd:i> is direct child element of
                <xd:i>note</xd:i>, then during NL conversion it will be mapped to
           <xd:b>note/bodytext/p/text/ref:crossreference</xd:b>. So mapping for Rosetta scenario: <xd:i>/DIGESTDOC/dig:body/dig:collection/dig:level/dig:info/note</xd:i> will become <xd:b>/seclaw:seclaw/seclaw:body/seclaw:level/seclaw:bodytext/seclaw:digestgrp/seclaw:digestinfo/note/bodytext/p/text/ref:crossreference</xd:b>.</xd:p>
         <xd:p>
            <xd:b>Source XML</xd:b>
         </xd:p>
         <xd:pre>

&lt;note notetype="other"&gt;
    &lt;remotelink dpsi="0EJA" remotekey1="DOC-ID" remotekey2="CD-AEI 2551" service="DOC-ID"&gt;[version anglaise]&lt;/remotelink&gt;
&lt;/note&gt;


    </xd:pre>
         <xd:p>
            <xd:b>Target XML</xd:b>
         </xd:p>
         <xd:pre>

&lt;note notetype="other"&gt;
    &lt;bodytext&gt;
        &lt;p&gt;
            &lt;text&gt;
                &lt;ref:crossreference crossreferencetype="seeAlso"&gt;
                    &lt;ref:content&gt;[version anglaise]&lt;/ref:content&gt;
                    &lt;ref:locator&gt;
                        &lt;ref:locator-key&gt;
                            &lt;ref:key-name name="DOC-ID"/&gt;
                            &lt;ref:key-value value="0EJA-CD-AEI 2551"/&gt;
                        &lt;/ref:locator-key&gt;
                    &lt;/ref:locator&gt;
                &lt;/ref:crossreference&gt;
            &lt;/text&gt;
        &lt;/p&gt;
    &lt;/bodytext&gt;
&lt;/note&gt;

    </xd:pre>
      </xd:desc>
   </xd:doc>
   <!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
   <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA02-Case_Summaries\CA02DS_DIGESTDOC_to_seclaw\note.dita  -->
   <!-- Vikas Rohilla : Template to match the note and creates the note/bodytext/p/text   -->
   <xsl:template match="note">
      <note>
         <xsl:apply-templates select="@*"/>
         <bodytext>
            <p>
               <text>
                  <xsl:apply-templates select="node()"/>
               </text>
            </p>
         </bodytext>
      </note>
   </xsl:template>
   <!--Vikas Rohilla : Tempalte to match the note/@notetype and create the attribute notetype-->
   <xsl:template match="note/@notetype">
      <xsl:attribute name="notetype">
         <xsl:value-of select="."/>
      </xsl:attribute>
   </xsl:template>
   <!-- Vikas Rohilla : Template to match the note[@notetype='other']/remotelink[contains(.,'[version anglaise]') or contains(.,'[French Version]')] with the mode attribute  doc-related_content  -->
   <xsl:template match="note[@notetype='other']/remotelink[contains(upper-case(.),'[VERSION ANGLAISE]') or contains(upper-case(.),'[FRENCH VERSION]')]"
                 mode="doc-related_content">
      <doc:related-content>
         <doc:related-content-grp content-type="alternate-language-version">
            <doc:related-content-item>
               <doc:related-content-link>
                  <ref:lnlink service="DOCUMENT">
                     <ref:marker>
                        <xsl:value-of select="."/>
                     </ref:marker>
                     <ref:locator>
                        <ref:locator-key>
                           <ref:key-name>
                              <xsl:attribute name="name" select="@service"/>
                           </ref:key-name>
                           <ref:key-value>
                              <xsl:attribute name="value" select="@remotekey2"/>
                           </ref:key-value>
                        </ref:locator-key>
                        <ref:locator-params>
                           <proc:param>
                              <xsl:attribute name="name" select="'targetdoclang'"/>
                              <xsl:attribute name="value"
                                             select="concat(/DIGESTDOC/docinfo/docinfo:doc-lang/@lang,'-',/DIGESTDOC/docinfo/docinfo:doc-country/@iso-cc)"/>
                           </proc:param>
                        </ref:locator-params>
                     </ref:locator>
                  </ref:lnlink>
               </doc:related-content-link>
            </doc:related-content-item>
         </doc:related-content-grp>
      </doc:related-content>
   </xsl:template>
   <!-- <topicref href="case.parallelcite.dita"/> -->   <xd:doc>
      <xd:desc>
         <xd:ul>
            <xd:li>
               <xd:i>case:parallelcite</xd:i> becomes
                    <xd:b>ref:parallelcite@citetype="parallel"</xd:b> is a child
                    element of
                    <xd:b>seclaw:seclaw/seclaw:body/seclaw:level/seclaw:bodytext/seclaw:digestgrp/seclaw:digest/seclaw:digestinfo/caseinfo:caseinfo/ref:citations/ref:parallelcite</xd:b>
               <xd:p>
                  <xd:b>Note: </xd:b>
                  <xd:p>
                     <xd:b>Discussion Board Issue: </xd:b> reporter needs to be used to reorder the
                            list of cites so that reporter cite is in a list of reporter cites and
                            parallel cites are marked up as reporter cites. This will not be an
                            issue if a reload of the data fixes the order.</xd:p>
                  <xd:p>
                     <xd:b>Update: </xd:b> The order of the cites is driven by the source document
                            and a future reload of the source document is required to get the cites
                            in the LBU desired order.</xd:p>
               </xd:p>
               <xd:pre>

&lt;case:parallelcite&gt;
    &lt;ci:cite&gt;
        &lt;ci:case&gt;
            &lt;ci:caseref ID="cref00149229" spanref="cspan00149229"&gt;
                &lt;ci:reporter value="CCS"/&gt;
                &lt;ci:edition&gt;
                    &lt;ci:date year="2007"/&gt;
                &lt;/ci:edition&gt;
                &lt;ci:refnum num="4486"/&gt;
            &lt;/ci:caseref&gt;
        &lt;/ci:case&gt;
        &lt;ci:content&gt;
            &lt;ci:span spanid="cspan00149229"&gt;[2007] C.C.S. No. 4486&lt;/ci:span&gt;
        &lt;/ci:content&gt;
    &lt;/ci:cite&gt;
&lt;/case:parallelcite&gt;


<xd:b>Becomes</xd:b>
                        

&lt;seclaw:seclaw&gt;
    &lt;seclaw:body&gt;
        &lt;seclaw:level&gt;
            &lt;seclaw:bodytext&gt;
                &lt;seclaw:digestgrp&gt;
                    &lt;seclaw:digest&gt;
                        &lt;seclaw:digestinfo&gt;
                            &lt;caseinfo:caseinfo&gt;
                                &lt;ref:citations&gt;
                                    &lt;ref:parallelcite citetype="parallel"&gt;
                                        &lt;lnci:cite&gt;
                                            &lt;lnci:case&gt;
                                                &lt;lnci:caseref ID="cref00149229"&gt;
                                                  &lt;lnci:reporter value="CCS"/&gt;
                                                  &lt;lnci:edition&gt;
                                                  &lt;lnci:date year="2007"/&gt;
                                                  &lt;/lnci:edition&gt;
                                                  &lt;lnci:refnum num="4486"/&gt;
                                                &lt;/lnci:caseref&gt;
                                            &lt;/lnci:case&gt;
                                            &lt;lnci:content&gt; [2007] C.C.S. No. 4486 &lt;/lnci:content&gt;
                                        &lt;/lnci:cite&gt;
                                    &lt;/ref:parallelcite&gt;
                                &lt;/ref:citations&gt;
                            &lt;/caseinfo:caseinfo&gt;
                        &lt;/seclaw:digestinfo&gt;
                    &lt;/seclaw:digest&gt;
                &lt;/seclaw:digestgrp&gt;
            &lt;/seclaw:bodytext&gt;
        &lt;/seclaw:level&gt;
    &lt;/seclaw:body&gt;
&lt;/seclaw:seclaw&gt;

                    </xd:pre>
               <xd:p>
                  <xd:p>
                     <xd:b>Note: </xd:b>When text appears inside <xd:i>case:parallelcite</xd:i>,
                            then conversion need to move the pinpoint information into
                            <xd:i>lnci:content</xd:i>. This applies to CANADA
                            ONLY.</xd:p> Please see below example for the same:</xd:p>
               <xd:pre>

&lt;case:parallelcite&gt;
    &lt;ci:cite&gt;
        &lt;ci:case&gt;
            &lt;ci:caseref ID="cref00054999" spanref="cspan00054999"&gt;
                &lt;ci:reporter value="SCR"/&gt;
                &lt;ci:volume num="32"/&gt;
                &lt;ci:page num="147"/&gt;
            &lt;/ci:caseref&gt;
        &lt;/ci:case&gt;
        &lt;ci:content&gt;
            &lt;ci:span spanid="cspan00054999"&gt;32 S.C.R. 147&lt;/ci:span&gt;
        &lt;/ci:content&gt;
    &lt;/ci:cite&gt; at 152
&lt;/case:parallelcite&gt;
    
</xd:pre>
               <xd:b>Becomes</xd:b>
               <xd:pre>
&lt;seclaw:seclaw&gt;
    &lt;seclaw:body&gt;
        &lt;seclaw:level&gt;
            &lt;seclaw:bodytext&gt;
                &lt;seclaw:digestgrp&gt;
                    &lt;seclaw:digest&gt;
                        &lt;seclaw:digestinfo&gt;
                            &lt;caseinfo:caseinfo&gt;
                                &lt;ref:citations&gt;
                                    &lt;ref:parallelcite citetype="parallel"&gt;
                                        &lt;lnci:cite&gt;
                                            &lt;lnci:case&gt;
                                                &lt;lnci:caseref ID="cref00054999"&gt;
                                                    &lt;lnci:reporter value="SCR"/&gt;
                                                    &lt;lnci:volume num="32"/&gt;
                                                    &lt;lnci:page num="147"/&gt;
                                                &lt;/lnci:caseref&gt;
                                            &lt;/lnci:case&gt;
                                            &lt;lnci:content&gt;32 S.C.R. 147 at 152&lt;/lnci:content&gt;
                                        &lt;/lnci:cite&gt;
                                    &lt;/ref:parallelcite&gt;
                                &lt;/ref:citations&gt;
                            &lt;/caseinfo:caseinfo&gt;
                        &lt;/seclaw:digestinfo&gt;
                    &lt;/seclaw:digest&gt;
                &lt;/seclaw:digestgrp&gt;
            &lt;/seclaw:bodytext&gt;
        &lt;/seclaw:level&gt;
    &lt;/seclaw:body&gt;
&lt;/seclaw:seclaw&gt;
    
             </xd:pre>
               <xd:p>
                  <xd:b>Note: </xd:b>If <xd:i>case:parallelcite</xd:i> directly contains text without
                        any child element, then <xd:i>case:parallelcite</xd:i> becomes
                        <xd:b>/ref:citations/ref:parallelcite/lnci:cite/lnci:content</xd:b>.</xd:p>
                    But the below specific input example is a data error, that will be fixed, hence
                    text "<xd:i>2008 FC-974</xd:i>" encountered within
                    <xd:i>case:parallelcite</xd:i> is a data error, so conversion will
                    convert as per conversion rule. <xd:pre>

&lt;case:info&gt;
    &lt;case:parallelcite&gt;2008 FC-974&lt;/case:parallelcite&gt;
&lt;/case:info&gt;


<xd:b>Becomes</xd:b>

&lt;seclaw:seclaw&gt;
    &lt;seclaw:body&gt;
        &lt;seclaw:level&gt;
            &lt;seclaw:bodytext&gt;
                &lt;seclaw:digestgrp&gt;
                    &lt;seclaw:digest&gt;
                        &lt;seclaw:digestinfo&gt;
                            &lt;caseinfo:caseinfo&gt;
                                &lt;ref:citations&gt;
                                    &lt;ref:parallelcite citetype="parallel"&gt;
                                        &lt;lnci:cite&gt;
                                            &lt;lnci:content&gt;2008 FC-974&lt;/lnci:content&gt;
                                        &lt;/lnci:cite&gt;
                                    &lt;/ref:parallelcite&gt;
                                &lt;/ref:citations&gt;
                            &lt;/caseinfo:caseinfo&gt;
                        &lt;/seclaw:digestinfo&gt;
                    &lt;/seclaw:digest&gt;
                &lt;/seclaw:digestgrp&gt;
            &lt;/seclaw:bodytext&gt;
        &lt;/seclaw:level&gt;
    &lt;/seclaw:body&gt;
&lt;/seclaw:seclaw&gt;
 </xd:pre>
            </xd:li>
         </xd:ul>
         <!--Changes2014-12-04 Webteam# 284027 - Xpath clarification for ref:parallelcite  DB item # 20582014-06-11: Updated instruction and example to add
                attribute ref:parallelcite/@citetype="parallel" in
                target.2014-04-28 case:parallelcite mappingDB item # 812014-04-18 ref:citation in headDB item # 1152,11562014-03-26 Clarify that parallelcite will map to digest:body and still get the value "parallel".DB item # 145-->
      </xd:desc>
   </xd:doc>
   <!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
   <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA02-Case_Summaries\CA02DS_DIGESTDOC_to_seclaw\case.parallelcite.dita  -->
   <!-- Vikas Rohilla : Template to match the case:parallelcite and create ref:parallelcite -->
   <xsl:template match="case:parallelcite">
      <ref:citations>
         <xsl:choose>
            <xsl:when test="count(child::node())&gt;1">
               <xsl:for-each select="child::node()">
                  <ref:parallelcite>
                     <xsl:attribute name="citetype">
                        <xsl:text>parallel</xsl:text>
                     </xsl:attribute>
                     <lnci:cite>
                        <xsl:apply-templates select="@* | node()"/>
                     </lnci:cite>
                  </ref:parallelcite>
               </xsl:for-each>
            </xsl:when>
            <xsl:otherwise>
               <ref:parallelcite>
                  <xsl:attribute name="citetype">
                     <xsl:text>parallel</xsl:text>
                  </xsl:attribute>
                  <xsl:apply-templates select="@* | node()"/>
               </ref:parallelcite>
            </xsl:otherwise>
         </xsl:choose>
      </ref:citations>
   </xsl:template>
   <!-- <topicref href="case.reportercite.dita"/> -->   <xd:doc>
      <xd:desc>
         <xd:ul>
            <xd:li>
               <xd:i>case:reportercite</xd:i> becomes
                        <xd:b>ref:citations</xd:b> with child elements as described below: <xd:ul>
                  <xd:li> Create
                                <xd:b>/ref:citations/ref:cite4thisresource@citetype="reporter"</xd:b>
                     <xd:p>
                        <xd:b>Note: </xd:b>When the <xd:b>ref:citations/.../lnci:content</xd:b>
                                (either <xd:b>ref:cite4thisresource</xd:b> or
                                    <xd:b>ref:parallelcite</xd:b>) would begin with "Full
                                text: ", "Texte intégral : ", or "Full text/texte
                                intégral: ", it should be removed with and without the trailing
                                space. The presentation will add the language appropriate
                                text.</xd:p>
                     <xd:p>
                        <xd:b>Note: </xd:b>There are two scenarios found in Rosetta samples, so conversion
                                will follow the instructions as given below: <xd:ul>
                           <xd:li>When <xd:i>case:reportercite/ci:cite</xd:i>
                                        contains attribute
                                            <xd:i>ci:cite[@type="cite4thisdoc"]</xd:i>,
                                        then <xd:i>@type=”cite4thisdoc”</xd:i> needs to be
                                        converted to the <xd:b>seclaw:body</xd:b> so
                                        conversion will
                                            create<xd:b>seclaw:seclaw/seclaw:body/seclaw:level/seclaw:bodytext/seclaw:digestgrp/seclaw:digest/seclaw:digestinfo/caseinfo:caseinfo/ref:citations/ref:cite4thisresource/@citetype="reporter"</xd:b>
                           </xd:li>
                           <xd:li>And when <xd:i>case:reportercite/ci:cite</xd:i>
                                        doesn't contain any attribute with
                                            <xd:i>ci:cite</xd:i>, then it needs to be
                                        converted to
                                            <xd:b>seclaw:body</xd:b>
                              <xd:b>seclaw:seclaw/seclaw:body/seclaw:level/seclaw:bodytext/seclaw:digestgrp/seclaw:digest/seclaw:digestinfo/caseinfo:caseinfo/ref:citations/ref:parallelcite@citetype="parallel".</xd:b>
                           </xd:li>
                        </xd:ul>
                        <xd:b>For more confirmation please see below examples:</xd:b>
                     </xd:p>
                     <xd:p>
                        <xd:b>Note: </xd:b>For handling of citation markup kindly refer <xd:a href="../../../common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">Rosetta_ci.cite-LxAdv-lnci.cite</xd:a> instructions under
                                General Markup Section.</xd:p>
                  </xd:li>
               </xd:ul>
               <xd:p/>
               <xd:pre>

&lt;case:reportercite&gt;
    &lt;ci:cite type="cite4thisdoc"&gt;
        &lt;ci:case&gt;
            &lt;ci:caseref ID="cref00016684" spanref="cspan00016684"&gt;
                &lt;ci:reporter value="OJ"/&gt;
                &lt;ci:edition&gt;
                    &lt;ci:date year="2004"/&gt;
                &lt;/ci:edition&gt;
                &lt;ci:refnum num="340"/&gt;
            &lt;/ci:caseref&gt;
        &lt;/ci:case&gt;
        &lt;ci:content&gt;
            &lt;ci:span spanid="cspan00016684"&gt;[2004] O.J. No. 340&lt;/ci:span&gt;
        &lt;/ci:content&gt;
    &lt;/ci:cite&gt;
&lt;/case:reportercite&gt;

<xd:b>Becomes</xd:b>

&lt;seclaw:seclaw&gt;
    &lt;seclaw:body&gt;
        &lt;seclaw:level&gt;
            &lt;seclaw:bodytext&gt;
                &lt;seclaw:digestgrp&gt;
                    &lt;seclaw:digest&gt;
                        &lt;seclaw:digestinfo&gt;
                            &lt;caseinfo:caseinfo&gt;
                                &lt;ref:citations&gt;
                                    &lt;ref:cite4thisresource citetype="reporter"&gt;
                                        &lt;lnci:cite&gt;
                                            &lt;lnci:case&gt;
                                                &lt;lnci:caseref ID="cref00016684"&gt;
                                                    &lt;lnci:reporter value="OJ"/&gt;
                                                    &lt;lnci:edition&gt;
                                                        &lt;lnci:date year="2004"/&gt;
                                                    &lt;/lnci:edition&gt;
                                                    &lt;lnci:refnum num="340"/&gt;
                                                &lt;/lnci:caseref&gt;
                                            &lt;/lnci:case&gt;
                                            &lt;lnci:content&gt;[2004] O.J. No. 340&lt;/lnci:content&gt;
                                        &lt;/lnci:cite&gt;
                                    &lt;/ref:cite4thisresource&gt;
                                &lt;/ref:citations&gt;
                            &lt;/caseinfo:caseinfo&gt;
                        &lt;/seclaw:digestinfo&gt;
                    &lt;/seclaw:digest&gt;
                &lt;/seclaw:digestgrp&gt;
            &lt;/seclaw:bodytext&gt;
        &lt;/seclaw:level&gt;
    &lt;/seclaw:body&gt;
&lt;/seclaw:seclaw&gt;

          </xd:pre>
               <xd:p>
                  <xd:p>
                     <xd:b>Note: </xd:b>When text appears inside <xd:i>case:reportercite</xd:i>,
                            then conversion need to move the pinpoint information into
                                <xd:i>lnci:content</xd:i>. This applies to CANADA
                            ONLY.</xd:p> Please see below example for the same:</xd:p>
               <xd:pre>

&lt;case:reportercite&gt;    
    &lt;ci:cite&gt;        
        &lt;ci:case&gt;            
            &lt;ci:caseref ID="cref00019986" spanref="cspan00019986"&gt;                
                &lt;ci:reporter value="DLR3"/&gt;                
                &lt;ci:volume num="123"/&gt;                
                &lt;ci:page num="214"/&gt;                
            &lt;/ci:caseref&gt;            
        &lt;/ci:case&gt;        
        &lt;ci:content&gt;            
            &lt;ci:span spanid="cspan00019986"&gt;123 D.L.R. (3d) 214&lt;/ci:span&gt;            
        &lt;/ci:content&gt;        
    &lt;/ci:cite&gt; at 222    
&lt;/case:reportercite&gt;
    
</xd:pre>
               <xd:b>Becomes</xd:b>
               <xd:pre>

&lt;seclaw:seclaw&gt;
    &lt;seclaw:body&gt;
        &lt;seclaw:level&gt;
            &lt;seclaw:bodytext&gt;
                &lt;seclaw:digestgrp&gt;
                    &lt;seclaw:digest&gt;
                        &lt;seclaw:digestinfo&gt;
                            &lt;caseinfo:caseinfo&gt;
                                &lt;ref:citations&gt;
                                    &lt;ref:parallelcite citetype="parallel"&gt;
                                        &lt;lnci:cite&gt;        
                                            &lt;lnci:case&gt;            
                                                &lt;lnci:caseref ID="cref00019986"&gt;                
                                                    &lt;lnci:reporter value="DLR3"/&gt;                
                                                    &lt;lnci:volume num="123"/&gt;                
                                                    &lt;lnci:page num="214"/&gt;                
                                                &lt;/lnci:caseref&gt;            
                                            &lt;/lnci:case&gt;        
                                            &lt;lnci:content&gt;123 D.L.R. (3d) 214 at 222&lt;/lnci:content&gt;        
                                        &lt;/lnci:cite&gt;
                                    &lt;/ref:parallelcite&gt;
                                &lt;/ref:citations&gt;
                            &lt;/caseinfo:caseinfo&gt;
                        &lt;/seclaw:digestinfo&gt;
                    &lt;/seclaw:digest&gt;
                &lt;/seclaw:digestgrp&gt;
            &lt;/seclaw:bodytext&gt;
        &lt;/seclaw:level&gt;
    &lt;/seclaw:body&gt;
&lt;/seclaw:seclaw&gt;
    
</xd:pre>
               <xd:p>
                  <xd:b>Note: </xd:b>If <xd:i>case:reportercite</xd:i> directly contains text without
                        any child element, then <xd:i>case:reportercite</xd:i> becomes
                            <xd:b>/ref:citations/ref:parallelcite/lnci:cite/lnci:content</xd:b>
                        and it will be converted to body.</xd:p>
               <xd:pre>

&lt;case:info&gt;
    &lt;case:reportercite&gt;2006 LNQCCLP 05702&lt;/case:reportercite&gt;
&lt;/case:info&gt;


<xd:b>Becomes</xd:b>

&lt;seclaw:seclaw&gt;
    &lt;seclaw:body&gt;
        &lt;seclaw:level&gt;
            &lt;seclaw:bodytext&gt;
                &lt;seclaw:digestgrp&gt;
                    &lt;seclaw:digest&gt;
                        &lt;seclaw:digestinfo&gt;
                            &lt;caseinfo:caseinfo&gt;
                                &lt;ref:citations&gt;
                                    &lt;ref:parallelcite citetype="parallel"&gt;
                                        &lt;lnci:cite&gt;
                                            &lt;lnci:content&gt;2006 LNQCCLP 05702&lt;/lnci:content&gt;
                                        &lt;/lnci:cite&gt;
                                        &lt;/ref:cite4thisresource&gt;
                                &lt;/ref:citations&gt;
                            &lt;/caseinfo:caseinfo&gt;
                        &lt;/seclaw:digestinfo&gt;
                    &lt;/seclaw:digest&gt;
                &lt;/seclaw:digestgrp&gt;
            &lt;/seclaw:bodytext&gt;
        &lt;/seclaw:level&gt;
    &lt;/seclaw:body&gt;
&lt;/seclaw:seclaw&gt;

 </xd:pre>
               <xd:p>
                  <xd:p>
                     <xd:b>Note: </xd:b>In case of multiple occurrence of <xd:i>ci:cite</xd:i> under
                                <xd:i>case:reportercite</xd:i> and it will be converted to
                            body, conversion need to generate separate
                                <xd:b>ref:cite4thisresource</xd:b> for every
                                <xd:i>ci:cite</xd:i> element with attribute
                            @type="cite4thisresource", if attribute is not present the conversion
                            will be <xd:b>ref:parallelcite</xd:b> for every
                                <xd:i>ci:cite</xd:i> and still be marked in body.</xd:p>
               </xd:p>
               <xd:pre>

&lt;case:reportercite&gt;
    &lt;ci:cite&gt;
        &lt;ci:case&gt;
            &lt;ci:caseref ID="cref00000146" spanref="cspan00000146"&gt;
                &lt;ci:reporter value="BCJ"/&gt;
                &lt;ci:edition&gt;
                    &lt;ci:date year="2004"/&gt;
                &lt;/ci:edition&gt;
                &lt;ci:refnum num="1218"/&gt;
            &lt;/ci:caseref&gt;
        &lt;/ci:case&gt;
        &lt;ci:content&gt;&lt;ci:span spanid="cspan00000146"&gt;[2004] B.C.J. No.
            1218&lt;/ci:span&gt;, &lt;/ci:content&gt;
    &lt;/ci:cite&gt;
    &lt;ci:cite&gt;
        &lt;ci:case&gt;
            &lt;ci:caseinfo spanref="cspan00000147"&gt;
                &lt;ci:opinionnum num="790"/&gt;
                &lt;ci:jurisinfo&gt;
                    &lt;ci:can courtcode="BCSC"/&gt;
                &lt;/ci:jurisinfo&gt;
                &lt;ci:decisiondate year="2004"/&gt;
            &lt;/ci:caseinfo&gt;
        &lt;/ci:case&gt;
        &lt;ci:content&gt;&lt;ci:span spanid="cspan00000147"&gt;2004 BCSC 790&lt;/ci:span&gt;, June
            10, 2004 &lt;/ci:content&gt;
    &lt;/ci:cite&gt;
&lt;/case:reportercite&gt;
                
            </xd:pre>
               <xd:b>Becomes</xd:b>
               <xd:pre>
&lt;seclaw:seclaw&gt;
    &lt;seclaw:body&gt;
        &lt;seclaw:level&gt;
            &lt;seclaw:bodytext&gt;
                &lt;seclaw:digestgrp&gt;
                    &lt;seclaw:digest&gt;
                        &lt;seclaw:digestinfo&gt;
                            &lt;caseinfo:caseinfo&gt;
                                &lt;ref:citations&gt;
                                    &lt;ref:parallelcite citetype="parallel"&gt;
                                        &lt;lnci:cite&gt;
                                            &lt;lnci:case&gt;
                                                &lt;lnci:caseref ID="cref00000146"&gt;
                                                  &lt;lnci:reporter value="BCJ"/&gt;
                                                  &lt;lnci:edition&gt;
                                                  &lt;lnci:date year="2004"/&gt;
                                                  &lt;/lnci:edition&gt;
                                                  &lt;lnci:refnum num="1218"/&gt;
                                                &lt;/lnci:caseref&gt;
                                            &lt;/lnci:case&gt;
                                            &lt;lnci:content&gt;[2004] B.C.J. No. 1218&lt;/lnci:content&gt;
                                        &lt;/lnci:cite&gt;
                                    &lt;/ref:parallelcite&gt;
                                    &lt;ref:parallelcite citetype="parallel"&gt;
                                        &lt;lnci:cite&gt;
                                            &lt;lnci:case&gt;
                                                &lt;lnci:caseinfo&gt;
                                                  &lt;lnci:opinionnum num="790"/&gt;
                                                  &lt;lnci:jurisinfo&gt;
                                                  &lt;lnci:can courtcode="BCSC"/&gt;
                                                  &lt;/lnci:jurisinfo&gt;
                                                  &lt;lnci:decisiondate year="2004"/&gt;
                                                &lt;/lnci:caseinfo&gt;
                                            &lt;/lnci:case&gt;
                                            &lt;lnci:content&gt;2004 BCSC 790, June 10,
                                                2004&lt;/lnci:content&gt;
                                        &lt;/lnci:cite&gt;
                                    &lt;/ref:parallelcite&gt;
                                &lt;/ref:citations&gt;
                            &lt;/caseinfo:caseinfo&gt;
                        &lt;/seclaw:digestinfo&gt;
                    &lt;/seclaw:digest&gt;
                &lt;/seclaw:digestgrp&gt;
            &lt;/seclaw:bodytext&gt;
        &lt;/seclaw:level&gt;
    &lt;/seclaw:body&gt;
&lt;/seclaw:seclaw&gt;
                
            </xd:pre>
            </xd:li>
         </xd:ul>
         <!--Changes2014-12-04 Webteam# 284027 - Xpath clarification for ref:parallelcite DB item # 20582014-07-15: Mapped case:reportercite in head where it directly contains text without any other sibling  DB item # 2612014-07-07: Update to include attribute "citetype="parallel" for case:reportercite without cite4thisdoc attribute  DB item # 2532014-06-11: Attribute citetype="reporter" added to ref:cite4thisresource   DB item # 2252014-06-11: remove "Full Text: " with and without the trailing space in case:reportercite DB item # 16462014-05-22 Clarify "Full text: " removal for both ref:cite4thisresource and ref:parallelcite.DB item # 1323 and 2122014-04-30 case:reportercite mappingDB item # 1802014-04-28 case:reportercite mappingDB item # 1802014-04-18 ref:citation in headDB item # 1152,11562014-04-15 Removed Trailing Comma in Case Cites...DB #item 13322014-03-31 Remove "Full text: " and its language variants from the start of lnci:content in the body. R4.5 Item #1323.-->
      </xd:desc>
   </xd:doc>
   <!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
   <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA02-Case_Summaries\CA02DS_DIGESTDOC_to_seclaw\case.reportercite.dita  -->
   <!--Vikas Rohilla : Template to match the first case:reportercite and child elements then create the wrapper ref:citations-->
   <xsl:template match="case:reportercite[child::*][not(preceding-sibling::*[1][self::case:reportercite[child::*]])]">
      <ref:citations>
         <ref:parallelcite>
            <xsl:attribute name="citetype">
               <xsl:text>parallel</xsl:text>
            </xsl:attribute>
            <xsl:apply-templates select="*"/>
         </ref:parallelcite>
         <xsl:if test="following-sibling::*[1][self::case:parallelcite[child::*]]">
            <xsl:call-template name="following-parallelcite">
               <xsl:with-param name="node"
                               select="following-sibling::*[1][self::case:parallelcite[child::*]]"/>
            </xsl:call-template>
         </xsl:if>
      </ref:citations>
   </xsl:template>
   <!-- Vikas Rohilla : Tempalte name following-parallelcite  -->
   <xsl:template name="following-parallelcite">
      <xsl:param name="node"/>
      <xsl:apply-templates select="$node" mode="following-parallelcite"/>
      <xsl:if test="$node/following-sibling::*[1][self::case:parallelcite[child::*]]">
         <xsl:call-template name="following-parallelcite">
            <xsl:with-param name="node"
                            select="$node/following-sibling::*[1][self::case:parallelcite[child::*]]"/>
         </xsl:call-template>
      </xsl:if>
   </xsl:template>
   <!-- Vikas Rohilla : Template to match the case:parallelcite with the mode following-parallelcite   -->
   <xsl:template match="case:parallelcite" mode="following-parallelcite">
      <ref:parallelcite>
         <xsl:attribute name="citetype">
            <xsl:text>parallel</xsl:text>
         </xsl:attribute>
         <xsl:apply-templates select="*"/>
      </ref:parallelcite>
   </xsl:template>
   <!-- Vikas Rohilla : Supressed the case:parallelcite in current mode handeled in to the following-parallelcite mode    -->
   <xsl:template match="case:parallelcite[preceding-sibling::case:reportercite[child::*]]"/>
   <!-- Vikas Rohilla : Template to match the case:reportercite having the text() only and creates the caseinfo:docketnum    -->
   <xsl:template match="case:reportercite[not(child::*)]" priority="25">
      <xsl:element name="caseinfo:docketnum">
         <xsl:apply-templates select="node() | @*"/>
      </xsl:element>
   </xsl:template>
   <!-- <topicref href="catchwordgrp.dita"/> -->   <xd:doc>
      <xd:desc>
         <xd:ul>
            <xd:li>
               <xd:i>catchwordgrp</xd:i> omit tag and retain content. <xd:ul>
                  <xd:li>
                     <xd:i>catchwords</xd:i> becomes
                                    <xd:b>classify:classification</xd:b> and comes with
                                    <xd:b>@classscheme="catchwords"</xd:b>
                     <xd:ul>
                        <xd:li>
                           <xd:i>catchphrase</xd:i> becomes
                                            <xd:b>classify:classification/classify:classitem</xd:b>
                           <xd:ul>
                              <xd:li>Create
                                                  <xd:b>classify:classification/classify:classitem/classify:classitem-identifier</xd:b>
                                 <xd:ul>
                                    <xd:li>Create
                                                  <xd:b>classify:classification/classify:classitem/classify:classitem-identifier/classify:classname</xd:b>
                                    </xd:li>
                                 </xd:ul>
                              </xd:li>
                           </xd:ul>
                        </xd:li>
                     </xd:ul>
                  </xd:li>
               </xd:ul>
               <xd:p>
                  <xd:b>Note: </xd:b>Each instance of <xd:i>catchwords</xd:i> should be converted
                            to its own
                                <xd:b>classify:classification[@classscheme="catchwords"]</xd:b>
                            element.</xd:p>
               <xd:p>
                  <xd:b>Note: </xd:b>Conversion should not create adjacent
                                <xd:b>caseinfo:caseinfo</xd:b>, data should be merged into
                            single element <xd:b>caseinfo:caseinfo</xd:b>.</xd:p>
               <xd:pre>

&lt;catchwordgrp&gt;
    &lt;catchwords&gt;
        &lt;catchphrase&gt;Commercial law&lt;/catchphrase&gt;
        &lt;catchphrase&gt;Business of borrowing money for acquisition of mortgages and interests in
            land&lt;/catchphrase&gt;
        &lt;catchphrase&gt;Trading in promissory notes&lt;/catchphrase&gt;
        &lt;catchphrase&gt;Whether subject to The Securities Act --Order of Securities Commission removing
            exemption&lt;/catchphrase&gt;
        &lt;catchphrase&gt;Whether sections of The Securities Act dealing with promissory notes ultra
            vires Provincial Legislature&lt;/catchphrase&gt;
        &lt;catchphrase&gt;The Securities Act, S.S 1954, c. 89, s. 20(2), (3)&lt;/catchphrase&gt;
        &lt;catchphrase&gt;B.N.A. Act, 1867, s. 91.&lt;/catchphrase&gt;
    &lt;/catchwords&gt;
&lt;/catchwordgrp&gt;


<xd:b>Becomes</xd:b>


&lt;classify:classification classscheme="catchwords"&gt;
    &lt;classify:classitem&gt;
        &lt;classify:classitem-identifier&gt;
            &lt;classify:classname&gt;Commercial law&lt;/classify:classname&gt;
        &lt;/classify:classitem-identifier&gt;
    &lt;/classify:classitem&gt;
    &lt;classify:classitem&gt;
        &lt;classify:classitem-identifier&gt;
            &lt;classify:classname&gt;Business of borrowing money for acquisition of mortgages and
                interests in land&lt;/classify:classname&gt;
        &lt;/classify:classitem-identifier&gt;
    &lt;/classify:classitem&gt;
    &lt;classify:classitem&gt;
        &lt;classify:classitem-identifier&gt;
            &lt;classify:classname&gt;Whether subject to The Securities Act --Order of Securities
                Commission removing exemption&lt;/classify:classname&gt;
        &lt;/classify:classitem-identifier&gt;
    &lt;/classify:classitem&gt;
    &lt;classify:classitem&gt;
        &lt;classify:classitem-identifier&gt;
            &lt;classify:classname&gt;Whether sections of The Securities Act dealing with promissory notes
                ultra vires Provincial Legislature&lt;/classify:classname&gt;
        &lt;/classify:classitem-identifier&gt;
    &lt;/classify:classitem&gt;
    &lt;classify:classitem&gt;
        &lt;classify:classitem-identifier&gt;
            &lt;classify:classname&gt;The Securities Act, S.S 1954, c. 89, s. 20(2),
                (3)&lt;/classify:classname&gt;
        &lt;/classify:classitem-identifier&gt;
    &lt;/classify:classitem&gt;
    &lt;classify:classitem&gt;
        &lt;classify:classitem-identifier&gt;
            &lt;classify:classname&gt;B.N.A. Act, 1867, s. 91.&lt;/classify:classname&gt;
        &lt;/classify:classitem-identifier&gt;
    &lt;/classify:classitem&gt;
&lt;/classify:classification&gt;

          </xd:pre>
               <xd:p>
                  <xd:b>Note: </xd:b>Handling
                            of a special scenario occurred within
                                <xd:i>catchwordgrp</xd:i> which contains
                                <xd:i>heading/title</xd:i> along with value
                                <xd:i>"Catchwords:" ONLY</xd:i>. In this scenario, if
                            element <xd:i>heading/title</xd:i> contains only
                                <xd:i>"Catchwords:"</xd:i>, then conversion will suppress
                            it and rest conversion will be same for
                                <xd:i>catchwordgrp</xd:i> as given above.</xd:p> For more
                        details please see below input and output examples. <xd:pre>

&lt;catchwordgrp&gt;
    &lt;heading&gt;
        &lt;title&gt;Catchwords:&lt;/title&gt;
    &lt;/heading&gt;
    &lt;catchwords&gt;
        &lt;catchphrase&gt;Labour relations&lt;/catchphrase&gt;
        &lt;catchphrase&gt;Collective agreements&lt;/catchphrase&gt;
        &lt;catchphrase&gt;Pension plan&lt;/catchphrase&gt;
        &lt;catchphrase&gt;Jurisdiction of grievance arbitrator&lt;/catchphrase&gt;
        &lt;catchphrase&gt;Collective agreements referring expressly to pension plan
            established by university&lt;/catchphrase&gt;
        &lt;catchphrase&gt;Motion for authorization to institute class action filed in
            Superior Court by unionized employee disagreeing with decisions made by
            university respecting administration and use of pension fund&lt;/catchphrase&gt;
        &lt;catchphrase&gt;Majority of members of class action group covered by one of
            collective agreements between university and unions&lt;/catchphrase&gt;
        &lt;catchphrase&gt;Whether this dispute relating to pension plan within jurisdiction
            of Superior Court or of grievance arbitrator.&lt;/catchphrase&gt;
    &lt;/catchwords&gt;
&lt;/catchwordgrp&gt;
                
            </xd:pre>
               <xd:b>Becomes</xd:b>
               <xd:pre>

&lt;classify:classification classscheme="catchwords"&gt;
    &lt;classify:classitem&gt;
        &lt;classify:classitem-identifier&gt;
            &lt;classify:classname&gt;Labour relations&lt;/classify:classname&gt;
        &lt;/classify:classitem-identifier&gt;
    &lt;/classify:classitem&gt;
    &lt;classify:classitem&gt;
        &lt;classify:classitem-identifier&gt;
            &lt;classify:classname&gt;Collective agreements&lt;/classify:classname&gt;
        &lt;/classify:classitem-identifier&gt;
    &lt;/classify:classitem&gt;
    &lt;classify:classitem&gt;
        &lt;classify:classitem-identifier&gt;
            &lt;classify:classname&gt;Pension plan&lt;/classify:classname&gt;
        &lt;/classify:classitem-identifier&gt;
    &lt;/classify:classitem&gt;
    &lt;classify:classitem&gt;
        &lt;classify:classitem-identifier&gt;
            &lt;classify:classname&gt;Jurisdiction of grievance arbitrator&lt;/classify:classname&gt;
        &lt;/classify:classitem-identifier&gt;
    &lt;/classify:classitem&gt;
    &lt;classify:classitem&gt;
        &lt;classify:classitem-identifier&gt;
            &lt;classify:classname&gt;Collective agreements referring expressly to pension plan
                established by university&lt;/classify:classname&gt;
        &lt;/classify:classitem-identifier&gt;
    &lt;/classify:classitem&gt;
    &lt;classify:classitem&gt;
        &lt;classify:classitem-identifier&gt;
            &lt;classify:classname&gt;Motion for authorization to institute class action filed in
                Superior Court by unionized employee disagreeing with decisions made by
                university respecting administration and use of pension fund&lt;/classify:classname&gt;
        &lt;/classify:classitem-identifier&gt;
    &lt;/classify:classitem&gt;
    &lt;classify:classitem&gt;
        &lt;classify:classitem-identifier&gt;
            &lt;classify:classname&gt;Majority of members of class action group covered by one of
                collective agreements between university and unions&lt;/classify:classname&gt;
        &lt;/classify:classitem-identifier&gt;
    &lt;/classify:classitem&gt;
    &lt;classify:classitem&gt;
        &lt;classify:classitem-identifier&gt;
            &lt;classify:classname&gt;Whether this dispute relating to pension plan within jurisdiction
                of Superior Court or of grievance arbitrator.&lt;/classify:classname&gt;
        &lt;/classify:classitem-identifier&gt;
    &lt;/classify:classitem&gt;
&lt;/classify:classification&gt;
                
            </xd:pre>
            </xd:li>
         </xd:ul>
      </xd:desc>
   </xd:doc>
   <!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
   <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA02-Case_Summaries\CA02DS_DIGESTDOC_to_seclaw\catchwordgrp.dita  -->
   <!-- Vikas Rohilla : Template match the  catchwordgrp and process the childs except heading 	-->
   <xsl:template match="catchwordgrp">
      <xsl:apply-templates select="node() except heading | @*"/>
   </xsl:template>
   <!-- Vikas Rohilla : Template match the catchwords nad creates the classify:classification    -->
   <xsl:template match="catchwords">
      <classify:classification>
         <xsl:attribute name="classscheme">
            <xsl:text>catchwords</xsl:text>
         </xsl:attribute>
         <xsl:apply-templates select="@*,preceding-sibling::heading"/>
         <xsl:apply-templates select="node() except page"/>
      </classify:classification>
      <xsl:if test="child::page">
         <classify:classification>
            <classify:classitem>
               <classify:classitem-identifier>
                  <classify:classname>
                     <xsl:apply-templates select="page"/>
                  </classify:classname>
               </classify:classitem-identifier>
            </classify:classitem>
         </classify:classification>
      </xsl:if>
   </xsl:template>
   <!-- Vikas Rohilla : Template match the catchphrase nad process the child nodes    -->
   <xsl:template match="catchphrase">
      <xsl:apply-templates select="@* | node()"/>
   </xsl:template>
   <!-- Vikas Rohilla : Template to match the catchwords/catchphrase[not(child::classitem)] with the higher priority -->
   <xsl:template match="catchwords/catchphrase[not(child::classitem)]" priority="25">
      <classify:classitem>
         <classify:classitem-identifier>
            <classify:classname>
               <xsl:apply-templates select="@* | node()"/>
            </classify:classname>
         </classify:classitem-identifier>
      </classify:classitem>
   </xsl:template>
   <!--Vikas Rohilla : Template to match the catchwords/text()[following::catchphrase or preceding::catchphrase]-->
   <xsl:template match="catchwords/text()[following::catchphrase or preceding::catchphrase]">
      <xsl:value-of select="replace(., '[^a-zA-Z0-9]', ' ')"/>
   </xsl:template>
   <!-- Vikas Rohilla : Template to match the catchwords/catchphrase and process the child nodes-->
   <xsl:template match="catchwords/catchphrase">
      <xsl:apply-templates select="@* | node()"/>
   </xsl:template>
   <!-- Vikas Rohilla : Tempalte to match the catchwordgrp/heading nad cteate the heading   -->
   <xsl:template match="catchwordgrp/heading">
      <heading>
         <xsl:apply-templates select="@* | node()"/>
      </heading>
   </xsl:template>
   <!-- <topicref href="classification.dita"/> -->   <xd:doc>
      <xd:desc>
         <xd:ul>
            <xd:li>
               <xd:i>classification</xd:i> becomes
                        <xd:b>classify:classification</xd:b>
               <xd:p>
                  <xd:b>Note: </xd:b>if attribute <xd:i>@display-name</xd:i> contain any of the below
                        given values, then conversion need to create attribute
                        classification/@classscheme and value will be captured within it as given
                        below: <xd:ul>
                     <xd:li>
                        <xd:i>classification[@display-name="Classification
                                    Number"]</xd:i> becomes
                                    <xd:b>classification[@classscheme="classificationNumber"]</xd:b>
                     </xd:li>
                     <xd:li>
                        <xd:i>classification[@display-name="Num�ro de la classification"]</xd:i>
                                becomes <xd:b>classification[@classscheme="classificationNumber"]</xd:b>
                     </xd:li>
                  </xd:ul> Use <xd:b>"classificationNumber"</xd:b> for the
                            <xd:b>@classscheme</xd:b>. Both English and French convert to the same value, which will be used in the
							presentation spec to generate the heading "Classification Number". 
							The PSpec will determine the document language using <xd:b>xml:lang</xd:b> to present either 
							"Classification Number" or the French version of that phrase. </xd:p>
               <xd:p>Children are populated as below:</xd:p>
               <xd:ul>
                  <xd:li>
                     <xd:i>classitem</xd:i> becomes
                                <xd:b>classify:classitem</xd:b>.</xd:li>
                  <xd:li>
                     <xd:i>classitem-identifier</xd:i> becomes
                                <xd:b>classify:classitem-identifier</xd:b>.</xd:li>
                  <xd:li>
                     <xd:i>classcode</xd:i> becomes
                                <xd:b>classify:classcode</xd:b>.</xd:li>
               </xd:ul>
               <xd:p>Example 1:</xd:p>
               <xd:pre>

&lt;classification display-name="Numéro de la classification"&gt;
    &lt;classitem&gt;
        &lt;classitem-identifier&gt;
            &lt;classcode&gt;AEI254&lt;/classcode&gt;
        &lt;/classitem-identifier&gt;
    &lt;/classitem&gt;
&lt;/classification&gt;


<xd:b>Becomes</xd:b>


&lt;classify:classification classscheme="classificationNumber"&gt;
    &lt;classify:classitem&gt;
        &lt;classify:classitem-identifier&gt;
            &lt;classify:classcode&gt;AEI254&lt;/classify:classcode&gt;
        &lt;/classify:classitem-identifier&gt;
    &lt;/classify:classitem&gt;
&lt;/classify:classification&gt;

            
            </xd:pre>
               <xd:p>Example 2:</xd:p>
               <xd:pre>

&lt;classification display-name="Classification Number"&gt;
    &lt;classitem&gt;
        &lt;classitem-identifier&gt;
            &lt;classcode&gt;WIL935&lt;/classcode&gt;
        &lt;/classitem-identifier&gt;
    &lt;/classitem&gt;
&lt;/classification&gt;


<xd:b>Becomes</xd:b>


&lt;classify:classification classscheme="classificationNumber"&gt;
    &lt;classify:classitem&gt;
        &lt;classify:classitem-identifier&gt;
            &lt;classify:classcode&gt;WIL935&lt;/classify:classcode&gt;
        &lt;/classify:classitem-identifier&gt;
    &lt;/classify:classitem&gt;
&lt;/classify:classification&gt;

          </xd:pre>
               <xd:p>
                  <xd:b>Note: </xd:b>When attributes <xd:i>@rendition</xd:i> and
                            <xd:i>@classscheme</xd:i> occur with element
                            <xd:i>classification</xd:i>, then the value of
                            <xd:i>@rendition</xd:i> will move under
                            <xd:b>/doc:legacy-metadata[@metadatasource="lbu-meta"]/meta/metaitem/@value</xd:b>
                        and the value of attribute <xd:i>@classscheme</xd:i> will move
                        under
                            <xd:b>/doc:legacy-metadata[@metadatasource="lbu-meta"]/meta/metaitem/@name</xd:b>
                        followed by "classscheme:"</xd:p>
               <xd:p>Please see below example for more clarifiction.</xd:p>
               <xd:pre>

&lt;classification classscheme="lnc.card.damage-range" rendition="breadcrumb"&gt;
    &lt;classitem&gt;
        &lt;classitem-identifier&gt;
            &lt;classcode&gt;
                &lt;remotelink&gt;C3.070&lt;/remotelink&gt;
            &lt;/classcode&gt;
            &lt;classname&gt;$70,000 - $79,999&lt;/classname&gt;
        &lt;/classitem-identifier&gt;
    &lt;/classitem&gt;
&lt;/classification&gt;


<xd:b>Becomes</xd:b>
    

&lt;classify:classification classscheme="lnc.card.damage-range"&gt;
    &lt;classify:classitem&gt;
        &lt;classify:classitem-identifier&gt;
            &lt;classify:classcode&gt;C3.070&lt;/classify:classcode&gt;
            &lt;classify:classname&gt;$70,000 - $79,999&lt;/classify:classname&gt;
        &lt;/classify:classitem-identifier&gt;
    &lt;/classify:classitem&gt;
&lt;/classify:classification&gt;

&lt;doc:legacy-metadata metadatasource="lbu-meta"&gt;
    &lt;meta&gt;
        &lt;metaitem name="classscheme:lnc.card.damage-range" value="breadcrumb"/&gt;
    &lt;/meta&gt;
&lt;/doc:legacy-metadata&gt;
    
</xd:pre>
            </xd:li>
         </xd:ul>
         <!--Changes2014-03-26 Both English and French should convert to "classificationNumber".DB item # 1176-->
      </xd:desc>
   </xd:doc>
   <!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
   <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA02-Case_Summaries\CA02DS_DIGESTDOC_to_seclaw\classification.dita  -->
   <!--Vikas Rohilla : Template to match the classification and creates the classify:classification-->
   <xsl:template match="classification">
      <classify:classification>
         <xsl:attribute name="classscheme">
            <xsl:text>classificationNumber</xsl:text>
         </xsl:attribute>
         <xsl:apply-templates select="@* | node()"/>
      </classify:classification>
   </xsl:template>
   <!--Vikas Rohilla : Template to match the classitem and creates the classify:classitem-->
   <xsl:template match="classitem">
      <classify:classitem>
         <xsl:apply-templates select="@* | node()"/>
      </classify:classitem>
   </xsl:template>
   <!--Vikas Rohilla : Template to match the classitem-identifier and creates the classify:classitem-identifier-->
   <xsl:template match="classitem-identifier">
      <classify:classitem-identifier>
         <xsl:apply-templates select="@*|node()"/>
      </classify:classitem-identifier>
   </xsl:template>
   <!--Vikas Rohilla : Template to match the classcode and creates the classify:classcode-->
   <xsl:template match="classcode">
      <classify:classcode>
         <xsl:apply-templates select="@*|node()"/>
      </classify:classcode>
   </xsl:template>
   <!--Vikas Rohilla : Template to match the classname and creates the classify:classname-->
   <xsl:template match="classname">
      <classify:classname>
         <xsl:apply-templates select="@*|node()"/>
      </classify:classname>
   </xsl:template>
   <!--Vikas Rohilla : Template to match the classcode/@normval and creates the @normval-->
   <xsl:template match="classcode/@normval">
      <xsl:attribute name="normval" select="."/>
   </xsl:template>
   <!--Vikas Rohilla : Template to match the classitem/@classscheme and creates the @classscheme-->
   <xsl:template match="classitem/@classscheme">
      <xsl:attribute name="classscheme" select="."/>
   </xsl:template>
   <!--Vikas Rohilla :supressed the display-name-->
   <xsl:template match="classification/@display-name|classification/@ln.user-displayed"/>
   <!-- <topicref href="dig.collection.dita"/> -->   <xd:doc>
      <xd:desc>
         <xd:ul>
            <xd:li>
               <xd:i>dig:collection</xd:i>
                    becomes <xd:b>seclaw:level</xd:b> with attribute and value
             <xd:b>@leveltype="digestgroups"</xd:b> and conversion need to create required child element <xd:b>seclaw:bodytext</xd:b> under <xd:b>seclaw:level</xd:b>. 
             <xd:pre>


&lt;dig:collection&gt;
    ...........
    ...........
&lt;/dig:collection&gt;

                    </xd:pre>
               <xd:b>Becomes</xd:b>
               <xd:pre>

&lt;seclaw:level leveltype="digestgroups"&gt;
    &lt;seclaw:bodytext&gt;
    ...........
    ...........
    &lt;/seclaw:bodytext&gt;
&lt;/seclaw:level&gt; 
    

               </xd:pre>
            </xd:li>
         </xd:ul>
      </xd:desc>
   </xd:doc>
   <!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
   <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA02-Case_Summaries\CA02DS_DIGESTDOC_to_seclaw\dig.collection.dita  -->
   <!--Vikas Rohlla : Template to match the dig:collection and create the seclaw:level/seclaw:bodytext -->
   <xsl:template match="dig:collection">
      <seclaw:level>
         <xsl:attribute name="leveltype">
            <xsl:text>digestgroups</xsl:text>
         </xsl:attribute>
         <xsl:apply-templates select="@*"/>
         <seclaw:bodytext>
            <xsl:apply-templates select="node()"/>
         </seclaw:bodytext>
      </seclaw:level>
   </xsl:template>
   <!-- <topicref href="dig.item.dita"/> -->   <xd:doc>
      <xd:desc>
         <xd:ul>
            <xd:li>
               <xd:i>dig:item</xd:i> becomes
                  <xd:b>seclaw:digest</xd:b>.
            
               <xd:pre>

&lt;dig:item&gt;
    ...........
    ...........
&lt;/dig:item&gt;

                    </xd:pre>
               <xd:b>Becomes</xd:b>
               <xd:pre>
&lt;seclaw:digest&gt;
    ...........
    ...........
&lt;/seclaw:digest&gt; 
    

               </xd:pre>
            </xd:li>
         </xd:ul>
      </xd:desc>
   </xd:doc>
   <!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
   <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA02-Case_Summaries\CA02DS_DIGESTDOC_to_seclaw\dig.item.dita  -->
   <!-- Vikas Rohilla : Template to match the dig:item[./dig:info/case:info/abbrvname or ./dig:info/case:info/case:casename] and create the seclaw:digest   -->
   <xsl:template match="dig:item[./dig:info/case:info/abbrvname or ./dig:info/case:info/case:casename]">
      <seclaw:digest>
         <xsl:apply-templates select="@* | node()"/>
         <xsl:if test="following-sibling::*[1][self::dig:item[not(./dig:info/case:info/abbrvname or ./dig:info/case:info/case:casename)]]">
            <xsl:call-template name="wrap-digitem">
               <xsl:with-param name="node"
                               select="following-sibling::*[1][self::dig:item[not(./dig:info/case:info/abbrvname or ./dig:info/case:info/case:casename)]]"/>
            </xsl:call-template>
         </xsl:if>
      </seclaw:digest>
   </xsl:template>
   <!-- Vikas Rohilla : Template name wrap-digitem -->
   <xsl:template name="wrap-digitem">
      <xsl:param name="node"/>
      <xsl:apply-templates select="$node" mode="wrap-digitem"/>
      <xsl:if test="$node/following-sibling::*[1][self::dig:item[not(./dig:info/case:info/abbrvname or ./dig:info/case:info/case:casename)]]">
         <xsl:call-template name="wrap-digitem">
            <xsl:with-param name="node"
                            select="$node/following-sibling::*[1][self::dig:item[not(./dig:info/case:info/abbrvname or ./dig:info/case:info/case:casename)]]"/>
         </xsl:call-template>
      </xsl:if>
   </xsl:template>
   <!-- Vikas Rohilla : Template match dig:item not descendent abbrvname or the case:casename -->
   <xsl:template match="dig:item[not(./dig:info/case:info/abbrvname or ./dig:info/case:info/case:casename)][not(preceding-sibling::dig:item[./dig:info/case:info/abbrvname or ./dig:info/case:info/case:casename])]">
      <xsl:apply-templates select="@* | node()"/>
   </xsl:template>
   <!-- Vikas Rohilla : Template match the dig:item with mode wrap-digitem   -->
   <xsl:template match="dig:item" mode="wrap-digitem">
      <xsl:apply-templates select="node()|@*"/>
   </xsl:template>
   <!-- <topicref href="dig.level.dita"/> -->   <xd:doc>
      <xd:desc>
         <xd:ul>
            <xd:li>
               <xd:i>dig:level</xd:i> becomes
                  <xd:b>seclaw:digestgrp</xd:b>.
            
               <xd:pre>

&lt;dig:level&gt;
    ...........
    ...........
&lt;/dig:level&gt;

                    </xd:pre>
               <xd:b>Becomes</xd:b>
               <xd:pre>
&lt;seclaw:digestgrp&gt;
    ...........
    ...........
&lt;/seclaw:digestgrp&gt; 
    

               </xd:pre>
            </xd:li>
         </xd:ul>
      </xd:desc>
   </xd:doc>
   <!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
   <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA02-Case_Summaries\CA02DS_DIGESTDOC_to_seclaw\dig.level.dita  -->
   <!-- Vikas Rohilla : Tempalte to match the dig:level not child dig:item/level-->
   <xsl:template match="dig:level[not(child::dig:item/level)]">
      <seclaw:digestgrp>
         <xsl:apply-templates select="@* | node()"/>
      </seclaw:digestgrp>
   </xsl:template>
   <!-- Vikas Rohilla : Tempalte to match the dig:level child dig:item/level -->
   <xsl:template match="dig:level[child::dig:item/level]">
      <xsl:apply-templates select="@* | node()"/>
   </xsl:template>
   <!-- Vikas Rohilla : Tempalte to match the level and not parent level   -->
   <xsl:template match="level[not(parent::level)]">
      <seclaw:level>
         <xsl:if test="not(@leveltype)">
            <xsl:attribute name="leveltype">
               <xsl:text>unclassified</xsl:text>
            </xsl:attribute>
         </xsl:if>
         <xsl:apply-templates select="@*"/>
         <xsl:if test="@subdoc">
            <xsl:call-template name="refanchor"/>
         </xsl:if>
         <xsl:apply-templates select="node()"/>
      </seclaw:level>
   </xsl:template>
   <!-- Vikas Rohilla : Template to match the first level and parent level and create the seclaw:bodytext/seclaw:level    -->
   <xsl:template match="level[parent::level][not(preceding-sibling::*[1][self::level or self::bodytext])]"
                 priority="25">
      <seclaw:bodytext>
         <seclaw:level>
            <xsl:if test="not(@leveltype)">
               <xsl:attribute name="leveltype">
                  <xsl:text>unclassified</xsl:text>
               </xsl:attribute>
            </xsl:if>
            <xsl:apply-templates select="@*"/>
            <xsl:if test="@subdoc">
               <xsl:call-template name="refanchor"/>
            </xsl:if>
            <xsl:apply-templates select="node()"/>
         </seclaw:level>
         <xsl:if test="following-sibling::*[1][self::level]">
            <xsl:call-template name="wrapp-level">
               <xsl:with-param name="node" select="following-sibling::*[1][self::level]"/>
            </xsl:call-template>
         </xsl:if>
      </seclaw:bodytext>
   </xsl:template>
   <!-- Vikas Rohilla : Template name wrap-level     -->
   <xsl:template name="wrapp-level">
      <xsl:param name="node"/>
      <xsl:apply-templates select="$node" mode="wrap-level"/>
      <xsl:if test="$node/following-sibling::*[1][self::level]">
         <xsl:call-template name="wrapp-level">
            <xsl:with-param name="node" select="$node/following-sibling::*[1][self::level]"/>
         </xsl:call-template>
      </xsl:if>
   </xsl:template>
   <!-- supressd the level in the cureent mode handeld in the wrap-level mode   -->
   <xsl:template match="level[parent::level][following-sibling::level]"/>
   <!-- Tempalte to match the level with the @mode wrap-level    -->
   <xsl:template match="level" mode="wrap-level">
      <seclaw:level>
         <xsl:if test="not(@leveltype)">
            <xsl:attribute name="leveltype">
               <xsl:text>unclassified</xsl:text>
            </xsl:attribute>
         </xsl:if>
         <xsl:apply-templates select="@*"/>
         <xsl:if test="@subdoc">
            <xsl:call-template name="refanchor"/>
         </xsl:if>
         <xsl:apply-templates select="node()"/>
      </seclaw:level>
   </xsl:template>
   <!--Vikas Rohilla : Tempalate match level/@subdoc and creates  includeintoc   -->
   <xsl:template match="level/@subdoc">
      <xsl:attribute name="includeintoc">
         <xsl:value-of select="."/>
      </xsl:attribute>
   </xsl:template>
   <!--Vikas Rohilla : Tempalate match level/@toc-caption and creates  alternatetoccaption   -->
   <xsl:template match="level/@toc-caption">
      <xsl:attribute name="alternatetoccaption">
         <xsl:value-of select="."/>
      </xsl:attribute>
   </xsl:template>
   <!--Vikas Rohilla : Tempalate match level/@leveltype and creates  @leveltype   -->
   <xsl:template match="level/@leveltype">
      <xsl:copy-of select="."/>
   </xsl:template>
   <!--Vikas Rohilla : Supressed the @searchtype   -->
   <xsl:template match="level/@searchtype"/>
   <!-- Template to ref:anchor when no refpt element -->
   <xsl:template name="refanchor">
      <xsl:element name="ref:anchor">
         <xsl:attribute name="id">
            <xsl:text>TOC00</xsl:text>
            <xsl:number count="level[@subdoc]" level="any" format="1"/>
         </xsl:attribute>
         <xsl:attribute name="anchortype">
            <xsl:text>local</xsl:text>
         </xsl:attribute>
         <xsl:text xml:space="preserve"> </xsl:text>
      </xsl:element>
   </xsl:template>
   <!-- <topicref href="dig.cite.dita"/> -->   <xd:doc>
      <xd:desc>
         <xd:ul>
            <xd:li>
               <xd:i>dig:cite</xd:i> becomes
                        <xd:b>seclaw:head/ref:citations</xd:b>, and create
                        <xd:b>ref:cite4thisresource</xd:b>
               <xd:p>
                  <xd:b>Note: </xd:b>
                  <xd:i>dig:cite</xd:i> is the proper citation (cite4thisresource)
                        and goes in the head.</xd:p>
               <xd:p>
                  <xd:b>Note: </xd:b>If input citation marup is having <xd:i>emph</xd:i> inside the
                            <xd:i>ci:content/ci:span</xd:i> then target conversion needs
                        to removed <xd:i>emph</xd:i> markup in NewLexis output.</xd:p>
               <xd:b>Example 1</xd:b>
               <xd:pre>

&lt;dig:cite display-name="Numéro du résumé"&gt;
    &lt;ci:cite type="cite4thisdoc"&gt;
        &lt;ci:case&gt;
            &lt;ci:caseref ID="crref00010000" spanref="csspan00010000"&gt;
                &lt;ci:reporter value="QDSEN"/&gt;
                &lt;ci:refnum num="10000"/&gt;
            &lt;/ci:caseref&gt;
        &lt;/ci:case&gt;
        &lt;ci:content&gt;
            &lt;ci:span spanid="csspan00010000"&gt;
                &lt;emph typestyle="bf"&gt;QSEN 10000&lt;/emph&gt;
            &lt;/ci:span&gt;
        &lt;/ci:content&gt;
    &lt;/ci:cite&gt;
&lt;/dig:cite&gt;
                    </xd:pre>
               <xd:b>Becomes</xd:b>
               <xd:pre>
&lt;seclaw:head&gt;
  &lt;ref:citations&gt;
    &lt;ref:cite4thisresource citetype="reporter"&gt;
        &lt;lnci:cite&gt;
            &lt;lnci:case&gt;
                &lt;lnci:caseref ID="crref00010000"&gt;
                    &lt;lnci:reporter value="QDSEN"/&gt;
                    &lt;lnci:refnum num="10000"/&gt;
                &lt;/lnci:caseref&gt;
            &lt;/lnci:case&gt;
            &lt;lnci:content&gt;QSEN 10000&lt;/lnci:content&gt;
        &lt;/lnci:cite&gt;
    &lt;/ref:cite4thisresource&gt;
  &lt;/ref:citations&gt;
&lt;/seclaw:head&gt;    

                    </xd:pre>
               <xd:b>Example 2</xd:b>
               <xd:pre>
&lt;dig:cite display-name="Digest Number"&gt;
    &lt;ci:cite type="cite4thisdoc"&gt;
        &lt;ci:case&gt;
            &lt;ci:caseref ID="crref00625796" spanref="csspan00625796"&gt;
                &lt;ci:reporter value="LAX"/&gt;
                &lt;ci:refnum num="625796"/&gt;
            &lt;/ci:caseref&gt;
        &lt;/ci:case&gt;
        &lt;ci:content&gt;
            &lt;ci:span spanid="csspan00625796"&gt;
                &lt;emph typestyle="bf"&gt;LAX 625796&lt;/emph&gt;
            &lt;/ci:span&gt;
        &lt;/ci:content&gt;
    &lt;/ci:cite&gt;
&lt;/dig:cite&gt;
                    </xd:pre>
               <xd:b>Becomes</xd:b>
               <xd:pre>
&lt;seclaw:head&gt;
    &lt;ref:citations&gt;
        &lt;ref:cite4thisresource citetype="reporter"&gt;
            &lt;lnci:cite&gt;
                &lt;lnci:case&gt;
                    &lt;lnci:caseref ID="crref00625796"&gt;
                        &lt;lnci:reporter value="LAX"/&gt;
                        &lt;lnci:refnum num="625796"/&gt;
                    &lt;/lnci:caseref&gt;
                &lt;/lnci:case&gt;
                &lt;lnci:content&gt;LAX 625796&lt;/lnci:content&gt;
            &lt;/lnci:cite&gt;
        &lt;/ref:cite4thisresource&gt;
    &lt;/ref:citations&gt;
&lt;/seclaw:head&gt;
             </xd:pre>
            </xd:li>
         </xd:ul>
         <xd:p>2015-10-01: Added a note for removing
                        <xd:i>emph</xd:i> markup in target conversion when input document
                    is having a Xpath-"<xd:i>ci:content/ci:span/emph</xd:i>". (<xd:b>WebStar
                        #6273159</xd:b>)</xd:p>
         <xd:p>2014-06-02: Example added for dig:cite attribute display-name="Digest Number"... DB item #1534</xd:p>
         <xd:p>2014-05-09: citetype="reporter" added to dig:cite mapping for ref:cite4thisresource in target... DB item #198</xd:p>
      </xd:desc>
   </xd:doc>
   <!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
   <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA02-Case_Summaries\CA02DS_DIGESTDOC_to_seclaw\dig.cite.dita  -->
   <!-- Vikas Rohilla : Template to match the dig:cite and create the ref:cite4thisresource -->
   <xsl:template match="dig:cite">
      <ref:cite4thisresource citetype="reporter">
         <xsl:apply-templates select="@* | node()"/>
      </ref:cite4thisresource>
   </xsl:template>
   <!-- Vikas Rohilla : Template to match the dig:cite/@display-name -->
   <xsl:template match="dig:cite/@display-name"/>
   <!-- <topicref href="dig.info.dita"/> -->   <xd:doc>
      <xd:desc>
         <xd:ul>
            <xd:li>
               <xd:i>dig:info</xd:i> becomes <xd:b>seclaw:digestinfo</xd:b>.
             <xd:pre>

&lt;dig:info&gt;
    ...........
    ...........
&lt;/dig:info&gt;


<xd:b>Becomes</xd:b>


&lt;seclaw:digestinfo&gt;
    ...........
    ...........
&lt;/seclaw:digestinfo&gt;

             </xd:pre>
               <xd:p>
                  <xd:b>Note: </xd:b>There shouln't be any empty element <xd:b>seclaw:digestinfo</xd:b> created in target output.</xd:p>
            </xd:li>
         </xd:ul>
      </xd:desc>
   </xd:doc>
   <!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
   <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA02-Case_Summaries\CA02DS_DIGESTDOC_to_seclaw\dig.info.dita  -->
   <!-- Vikas Rohilla : Template to match the dig:info except publication,dig:cite -->
   <xsl:template match="dig:info">
      <seclaw:digestinfo>
         <xsl:apply-templates select="@* | node() except (publication|dig:cite)"/>
      </seclaw:digestinfo>
   </xsl:template>
   <!-- <topicref href="docinfo.subtype.dita"/> -->   <xd:doc>
      <xd:desc>
         <xd:ul>
            <xd:li>
               <xd:i>docinfo:subtype</xd:i> becomes
            <xd:b>doc:legacy-metadata/meta/metaitem</xd:b> with attributes
            <xd:b>@name="docinfo:subtype"</xd:b> and <xd:b>@value</xd:b> will
          keep the data from the <xd:i>docinfo:subtype</xd:i>.<xd:pre>

&lt;docinfo:subtype&gt;card&lt;/docinfo:subtype&gt;

                    </xd:pre>
               <xd:b>Not Targeted yet</xd:b>
               <xd:pre>
&lt;doc:legacy-metadata metadatasource="lbu-meta"&gt;
         &lt;meta&gt;
              &lt;metaitem name="docinfo:subtype" value="card"/&gt;
         &lt;/meta&gt;
&lt;/doc:legacy-metadata&gt;    

               </xd:pre>
            </xd:li>
         </xd:ul>
      </xd:desc>
   </xd:doc>
   <!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
   <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA02-Case_Summaries\CA02DS_DIGESTDOC_to_seclaw\docinfo.subtype.dita  -->
   <!-- Vikas Rohilla : Templtate to match the docinfo:subtype create the metaitem-->
   <xsl:template match="docinfo:subtype">
      <metaitem>
         <xsl:apply-templates select="@* | node()"/>
      </metaitem>
   </xsl:template>
   <!-- <topicref href="publication.dita"/> -->   <xd:doc>
      <xd:desc>
         <xd:ul>
            <xd:li>
               <xd:i>publication</xd:i>
             becomes <xd:b>doc:metadata/pubinfo:pubinfo/pubinfo:publicationname</xd:b>. 
             <xd:pre>


&lt;publication&gt;Quantum - Determination de la peine&lt;/publication&gt;

                    </xd:pre>
               <xd:b>Becomes</xd:b>
               <xd:pre>

&lt;doc:metadata&gt;
    &lt;pubinfo:pubinfo&gt;
        &lt;pubinfo:publicationname&gt;Quantum - Determination de la peine&lt;/pubinfo:publicationname&gt;
    &lt;/pubinfo:pubinfo&gt;
&lt;/doc:metadata&gt;    
    

               </xd:pre>
            </xd:li>
         </xd:ul>
      </xd:desc>
   </xd:doc>
   <!--  @@@This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
   <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA02-Case_Summaries\CA02DS_DIGESTDOC_to_seclaw\publication.dita  -->
   <!-- Vikas Rohilla : Template match publication and create pubinfo:publicationname -->
   <xsl:template match="publication">
      <pubinfo:publicationname>
         <xsl:apply-templates select="@* | node()"/>
      </pubinfo:publicationname>
   </xsl:template>
   <!--<topicref href="refnum.dita"/>-->   <!-- <topicref href="../../../common_newest/LxAdv_CA-ref.cite4thisresource-LxAdv-ref.parallelcite-doc.related-content.dita"/> -->   <!--		<xsl:include href="../../modules/case/LxAdv_CA-ref.cite4thisresource-LxAdv-ref.parallelcite-doc.related-content.xsl"/>-->   <!-- end topichead  Body  -->   <!-- start topichead  Metadata  -->   <!--<topicref href="../common/common_rosetta_docinfo.dita"/>-->   <!-- <topicref href="../../../common_newest/Rosetta_docinfo-LxAdv-doc.metadata_doc.docinfo.dita"/> -->   <!-- *****************************************************************************
	this template uses a global $dpsi parameter that should be placed in the 
	stream driver file as:
	
		<xsl:param name="dpsi" as="xs:string" select=" 'From LBU Manifest File' "/>
	
    this parameter can be used in any module in your stream.  Do not add 
    it as a variable or parameter in this file to avoid conflicts.
	*******************************************************************************	
	
	-->   <!--<xsl:variable name="dpsi"/>-->   <xd:doc>
      <xd:desc>
         <xd:p>
            <xd:b>Instructions <xd:i>[common element]</xd:i>
            </xd:b>
         </xd:p>
         <xd:p>
            <xd:ul>
               <xd:li>
                  <xd:i>docinfo</xd:i> becomes <xd:b>doc:metadata/doc:docinfo</xd:b>.
								<xd:i>docinfo:dpsi[@id-string]</xd:i>, <xd:i>docinfo[@browseprev]</xd:i>,
								<xd:i>docinfo[@browsenext]</xd:i>, <xd:i>docinfo[@partitionnum]</xd:i>,
								<xd:i>docinfo[@majorrevision]</xd:i>, and <xd:i>docinfo[@excludefromalerts]</xd:i>
							become <xd:b>doc:metadata/doc:docinfo/doc:legacy-metadata</xd:b> with attribute
								<xd:b>doc:legacy-metadata[@metadatasource="lbu-meta"]</xd:b> with child elements: <xd:ul>
                     <xd:li>Create <xd:b>meta</xd:b> and <xd:b>metaitem</xd:b> with attributes
										<xd:b>@name</xd:b> and <xd:b>@value</xd:b>. </xd:li>
                     <xd:li>If document also contains an element <xd:i>docinfo:lbu-meta</xd:i> with child elements
									that are not explicitly dropped, include each metaitem after all of the <xd:i>docinfo</xd:i>
									attributes are placed here. See Example <xd:i>docinfo</xd:i> and
										<xd:i>docinfo:lbu-meta</xd:i> below. </xd:li>
                  </xd:ul>
               </xd:li>
            </xd:ul>
         </xd:p>
         <xd:p>
            <xd:b>Source XML</xd:b>
         </xd:p>
         <xd:pre> &lt;docinfo partitionnum="2"&gt; &lt;docinfo:dpsi id-string="006F"&gt; .................
					................. &lt;/docinfo&gt; </xd:pre>
         <xd:p>
            <xd:b>Target XML</xd:b>
         </xd:p>
         <xd:pre> &lt;doc:metadata&gt; &lt;doc:docinfo doc-content-country="AU"&gt; &lt;dc:metadata&gt; ...... ......
					&lt;/dc:metadata&gt; &lt;doc:legacy-metadata metadatasource="lbu-meta"&gt; &lt;meta&gt; &lt;metaitem
					name="partitionnum" value="2"/&gt; &lt;metaitem name="dpsi" value="006F"/&gt; &lt;/meta&gt;
					&lt;/doc:legacy-metadata&gt; &lt;/doc:docinfo&gt; &lt;/doc:metadata&gt; </xd:pre>
         <xd:p>
            <xd:b>Source XML</xd:b>
         </xd:p>
         <xd:pre> &lt;docinfo browseprev="true" browsenext="true" majorrevision="false" excludefromalerts="true"&gt;
					................. ................. &lt;/docinfo&gt; </xd:pre>
         <xd:p>
            <xd:b>Target XML</xd:b>
         </xd:p>
         <xd:pre> &lt;doc:metadata&gt; &lt;doc:docinfo doc-content-country="AU"&gt; &lt;dc:metadata&gt; ...... ......
					&lt;/dc:metadata&gt; &lt;doc:legacy-metadata metadatasource="lbu-meta"&gt; &lt;meta&gt; &lt;metaitem
					name="browseprev" value="true"/&gt; &lt;metaitem name="browsenext" value="true"/&gt; &lt;metaitem
					name="majorrevision" value="false"/&gt; &lt;metaitem name="excludefromalerts" value="true"/&gt; &lt;/meta&gt;
					&lt;/doc:legacy-metadata&gt; &lt;/doc:docinfo&gt; &lt;/doc:metadata&gt; </xd:pre>
         <xd:p>
            <xd:b>Source XML</xd:b>
         </xd:p>
         <xd:pre> &lt;docinfo partitionnum="1"&gt; ................. ................. &lt;/docinfo&gt; </xd:pre>
         <xd:p>
            <xd:b>Target XML</xd:b>
         </xd:p>
         <xd:pre> &lt;doc:metadata&gt; &lt;doc:docinfo doc-content-country="CA"&gt; &lt;dc:metadata&gt; ...... ......
					&lt;/dc:metadata&gt; &lt;doc:legacy-metadata metadatasource="lbu-meta"&gt; &lt;meta&gt; &lt;metaitem
					name="partitionnum" value="1"/&gt; &lt;/meta&gt; &lt;/doc:legacy-metadata&gt; &lt;/doc:docinfo&gt;
					&lt;/doc:metadata&gt; </xd:pre>
         <xd:p>
            <xd:b>Example docinfo and docinfo:lbu-meta - Target</xd:b>
         </xd:p>
         <xd:pre> &lt;doc:legacy-metadata metadatasource="lbu-meta"&gt; &lt;meta&gt; &lt;metaitem name="browsenext"
					value="false"/&gt; &lt;metaitem name="browseprev" value="false"/&gt; &lt;metaitem name="majorrevision"
					value="false"/&gt; &lt;metaitem name="excludefromalerts" value="true"/&gt; &lt;metaitem name="partitionnum"
					value="COMM1"/&gt; &lt;metaitem name="lbu-sourcename" value="Business Law Emerging Issues"/&gt; &lt;metaitem
					name="document-type" value="Emerging Issue"/&gt; &lt;metaitem name="filename" value="BusLaw_EI_1850.xml"/&gt;
					&lt;/meta&gt; &lt;/doc:legacy-metadata&gt; </xd:pre>
         <xd:p>
            <xd:b>Create Required <xd:b>dc:metadata</xd:b> Element</xd:b>
         </xd:p>
         <xd:p>The element <xd:b>dc:metadata</xd:b> is the first required child element of
						<xd:b>doc:metadata/doc:docinfo</xd:b>. As such, <xd:b>dc:metadata</xd:b> should be
					created immediately after creating <xd:b>doc:metadata/doc:docinfo</xd:b>.</xd:p>
         <xd:p>
            <xd:p>
               <xd:b>Note: </xd:b>
               <xd:p>In addition, as part of workflow processing , ICCE will provide LNI values for each document. This PCDATA
							value will be mapped to the following:</xd:p>
               <xd:ul>
                  <xd:li>
                     <xd:b>dc:identifier[@lnmeta:identifier-scheme="LNI"]</xd:b>
                  </xd:li>
                  <xd:li>
                     <xd:b>dc:identifier[@lnmeta:identifier-scheme="PGUID"]</xd:b>
                  </xd:li>
               </xd:ul>
               <xd:p>The LNI value for <xd:b>dc:identifier[@lnmeta:identifier-scheme="PGUID"]</xd:b>will include the
							"urn:contentItem" namespace prefix.</xd:p>
            </xd:p>
         </xd:p>
         <xd:ul>
            <xd:li>
               <xd:p>Create <xd:b>dc:date[@lnmeta:datetype="conversion-date"]</xd:b>. This element will contain the
							date the output file was created during conversion. </xd:p>
               <xd:p>
                  <xd:b>Note: </xd:b>The format of the content of all <xd:b>dc:date</xd:b> elements must be in
							'YYYY-MM-DD'.</xd:p>
            </xd:li>
         </xd:ul>
         <xd:p>
            <xd:b>LNI Values from ICCE</xd:b>
         </xd:p>
         <xd:pre> &lt;dc:identifier
					lnmeta:identifier-scheme="LNI"&gt;5617-TBH1-67MJ-64K7-00000-00&lt;/dc:identifier&gt; &lt;dc:identifier
					lnmeta:identifier-scheme="PGUID"&gt;urn:contentItem:5617-TBH1-67MJ-64K7-00000-00&lt;/dc:identifier&gt;
				</xd:pre>
         <xd:p>
            <xd:b>dc:date[@lnmeta:datetype="conversion-date"]</xd:b>
         </xd:p>
         <xd:pre> &lt;dc:metadata&gt; ... &lt;dc:date lnmeta:datetype="conversion-date"&gt;2013-08-07&lt;/dc:date&gt;
					... &lt;/dc:metadata&gt; </xd:pre>
         <!--Changes2017-03-15: Added dc:identifier[@lnmeta:identifier-scheme =
							"LNI"] and dc:identifier[@lnmeta:identifier-scheme = "PGUID"] to
						XSLT.2015-04-14: Remove bullet icon in sub nested list for handling Indentation
						isssue.2013-08-09: Added instruction for creating
							dc:date[@lnmeta:datetype="conversion-date"]. Previously, "conversion-date" was
						created only if "load-date" was not present. Going forward, conversion should always create
						"conversion-date". This is not a retroactive change. It should be applied only to streams developed after
						Aug. 9 2013.2013-07-18: Added @excludefromalerts as one of the
							docinfo attributes to carry through. Also added
						@majorrevision to the narrative; already present in a target sample.2013-05-16: Fixed typo updating urn:contentitem to
					urn:contentItem2013-04-08: Removed instructions for 3.5 conversion as no longer applicable and to avoid confusion.2012-11-28: Added instructions for 3.5 conversion and 4.0 conversion.2012-10-05: Added instructions for consolidation of attributes from docinfo and content from lbu-meta from
					source into a single doc:legacy-metadata grouping.2012-09-06: Created. -->
      </xd:desc>
   </xd:doc>
   <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_docinfo-LxAdv-doc.metadata_doc.docinfo.dita  -->
   <!-- CSN: Created docinfo and children from base.xsl -->
   <!-- this template processes all the content that goes into doc:docinfo. -->
   <xsl:template match="docinfo">
      <doc:docinfo><!--   add attribute doc-content-country   --><!--Satbir: Added hardcore value inside attribute @doc-country-code only for HK-->
         <xsl:choose>
            <xsl:when test="starts-with($streamID, 'HK')">
               <xsl:attribute name="doc-content-country" select="'HK'"/>
            </xsl:when>
            <xsl:otherwise>
               <xsl:call-template name="doc_content_country"/>
            </xsl:otherwise>
         </xsl:choose>
         <dc:metadata>
            <dc:identifier lnmeta:identifier-scheme="LNI">0000-0000-0000-0000-00000-00</dc:identifier>
            <dc:identifier lnmeta:identifier-scheme="PGUID">urn:contentItem:0000-0000-0000-0000-00000-00</dc:identifier>
            <xsl:apply-templates select="docinfo:load-date"/>
            <dc:date lnmeta:datetype="conversion-date">
               <xsl:value-of select="format-date(current-date(), '[Y0001]-[M01]-[D01]')"/>
            </dc:date>
            <xsl:apply-templates select="/COMMENTARYDOC/comm:info/pubdate" mode="dc.metadata"/>
            <!-- PLEASE DO NOT REMOVE UK-SPECIFIC CONDITIONS  -->
            <xsl:if test="starts-with($streamID, 'UK')">
               <xsl:apply-templates select="docinfo:custom-metafields/docinfo:custom-metafield[@name = ('editorialPublishedDate', 'createdDate', 'updatedDate')]"/>
            </xsl:if>
            <!-- 20170623:  MCJ:  Removed AU06 from this list in preference to using modules/docinfo/Rosetta_docinfo.doc-id-LxAdv-dcidentifier_lnmetaidentifier-scheme.xsl. -->
            <!--  WPK 2017-11-06.  Due to webstar, all of the following streams must now use modules\docinfo\Rosetta_docinfo.doc-id-LxAdv-dcidentifier_lnmetaidentifier-scheme.xsl
				http://webstar.reedelsevier.com/WebStarWebApp/incident/viewIncident.do?incTktNum=7041473
				Also, streams need to remove any stream empty template that would conflict, i.e. <xsl:template match=”docinfo:doc=id”/>.  
				<xsl:if test="$streamID = ('AU10', 'AU13', 'AU16', 'AU17', 'AU19-CA', 'NZ14', 'NZ02', 'AU09', 'NZ10','HK09','AU19_CC')">
					<xsl:if test="docinfo:doc-id">
						<dc:identifier lnmeta:identifier-scheme="DOC-ID">
							<xsl:value-of select="docinfo:doc-id"/>
						</dc:identifier>
					</xsl:if>
				</xsl:if>
				
				<xsl:if test="$streamID=('NZ07-DN', 'NZ07DC','AU14','NZ08')">
					<xsl:if test="docinfo:doc-id">
						<dc:identifier lnmeta:identifier-scheme="DOC-ID">
							<xsl:value-of select="docinfo:dpsi/@id-string"/>
							<xsl:text>-</xsl:text>
							<xsl:value-of select="docinfo:doc-id"/>
						</dc:identifier>
					</xsl:if>
				</xsl:if>
				-->
            <!-- Sudhanshu Srivastava: Added condition for CA03 to convert leg:officialname,leg:num to dc:title -->
            <xsl:if test="$streamID = 'CA03'">
               <xsl:choose>
                  <xsl:when test="following-sibling::source_cttr:body/leg:info/leg:officialname">
                     <xsl:apply-templates select="following-sibling::source_cttr:body/leg:info/leg:officialname"/>
                  </xsl:when>
                  <xsl:otherwise>
                     <xsl:apply-templates select="following-sibling::source_cttr:body/case:headnote/case:info/case:casename"
                                          mode="dc.title"/>
                  </xsl:otherwise>
               </xsl:choose>
            </xsl:if>
            <xsl:apply-templates select="docinfo:doc-heading | docinfo:doc-id"/>
            <!-- JD: 2017-10-10: VSTS Bug 352379: use docinfo:doc-heading for dc:title for UK01 -->
            <!-- CN: 2017-10-13: VSTS Bug 352379: use docinfo:doc-heading for dc:title added UK02 and UK04 -->
            <xsl:if test="$streamID = ('UK01','UK02','UK04')">
               <dc:title>
                  <xsl:value-of select="/CASEDOC/docinfo/docinfo:doc-heading"/>
               </dc:title>
            </xsl:if>
            <!-- JD: UK01-UK04: case:casename to dc:title (id-CCCC-10531) -->
            <!--
				<xsl:if test="$streamID = ('UK02','UK04')">
				  <dc:title>
  				  <xsl:value-of select="concat(/CASEDOC/case:body/case:headnote/case:info/case:casename, ' ',/CASEDOC/case:body/case:headnote/case:info/case:reportercite/ci:cite[@type='cite4thisdoc']/ci:content)"/>
				  </dc:title>
				</xsl:if>
				-->
            <!-- CN: 2017-10-13: VSTS Bug 352379: use docinfo:doc-heading for dc:title for UK03 -->
            <xsl:if test="$streamID='UK03'">
               <dc:title>
                  <xsl:value-of select="/DIGESTDOC/docinfo/docinfo:doc-heading"/>
               </dc:title>
            </xsl:if>
            <!-- same as above, but different mode name -->
            <!--<xsl:if test="$streamID = ('UK04')">
					<xsl:apply-templates select="/CASEDOC/case:body/case:headnote/case:info/case:casename[$streamID='UK04']" mode="title"/>
				</xsl:if>-->
            <!-- JD: UK05: case:casename to dc:title (id-UK05-27824) -->
            <xsl:if test="$streamID = 'UK05'">
               <xsl:apply-templates select="/CITATORDOC/source_cttr:body/case:headnote/case:info/case:casename | /CITATORDOC/source_cttr:body/case2:headnote/case2:info/case2:casename"
                                    mode="dc.metadata"/>
            </xsl:if>
            <xsl:apply-templates select="docinfo:authorattribution"/>
            <!--  @@@ TODO:  update DITA to match this code!!!  -->
            <!-- Awantika: Removed /CASEDOC/case:body/case:headnote/case:info/case:courtinfo/case:juris from apply templates as this was creating unnecessary content(hkhk) mapping needs to be converted to <dc:coverage> in HK03 -->
            <xsl:choose>
               <xsl:when test="starts-with($streamID, 'CA08')">
                  <xsl:apply-templates select="         /CASEDOC/case:body/case:headnote/case:info/case:courtinfo/case:juris |         /CITATORDOC/source_cttr:body/case:headnote/case:info/case:courtinfo/case:juris"
                                       mode="metadata"/>
               </xsl:when>
               <xsl:when test="$streamID = ('CA01', 'CA03', 'CA02CC','CA02DC', 'CA06', 'CA05', 'CA04', 'CA07','UK03','UK07','UK06', 'NZ07DN','NZ13')"/>
               <xsl:when test="$streamID='AU12'">
                  <xsl:apply-templates select="/DIGESTDOC/dig:body/dig:info/leg:info/leg:juris"
                                       mode="metadata"/>
               </xsl:when>
               <xsl:when test="$streamID='NZ10'">
                  <xsl:apply-templates select="/LEGDOC/leg:body/leg:info/leg:juris" mode="metadata"/>
               </xsl:when>
               <xsl:when test="$streamID='CA19'">
                  <xsl:apply-templates select="/CASEDOC/case:body/case:headnote/case:info/case:courtinfo/case:juris"
                                       mode="metadata"/>
               </xsl:when>
               <xsl:otherwise><!--*********************
							Paul:  for AU08 this otherwise clause is applicable as is unedited.
							It creates dc:coverage/location:state because I have a stream specific "metadata" mode template for leg:juris.
							I've changed nothing here.  just noting that i'm leveraging this for AU08 court orders too.
							***************************--><!-- Awantika: added xpath /CITATORDOC/source_cttr:body/leg:info/leg:juris for AU20 --><!--Satbir: Added Xpath "/DIGESTDOC/dig:body/dig:info/case:info/case:courtinfo/case:juris" for NZ07DC--><!--Satbir: Mentioned first position for jursi handling "case:courtinfo[1]/case:juris" because juris comes twicely--><!-- Awantika:2017-10-17- Added not(streamID='AU01') to /CASEDOC/case:body/case:headnote/case:info/case:courtinfo[1]/case:juris as this was creating data outside identifier. --><!-- Awantika:2017-10-31- Removed not(streamID='AU01') to /CASEDOC/case:body/case:headnote/case:info/case:courtinfo[1]/case:juris data given was for NZ so changed back for AU01 -->
                  <xsl:apply-templates select="         /CASEDOC/case:body/case:headnote/case:info/case:courtinfo[1]/case:juris |         /LEGDOC/leg:body/leg:info/leg:juris | /CITATORDOC/source_cttr:body/leg:info/leg:juris |         /CITATORDOC/source_cttr:body/case:headnote/case:info/case:courtinfo/case:juris |         /CITATORDOC/source_cttr:body/case2:headnote/case2:info/case2:courtinfo/case2:juris | /DIGESTDOC/dig:body/dig:info/case:info/case:courtinfo/case:juris"
                                       mode="metadata"/>
               </xsl:otherwise>
            </xsl:choose>
            <!-- Awantika: case:juris will also be converted to <dc:coverage> in HK03  -->
            <!--<xsl:if test="/CASEDOC/case:body/case:headnote/case:info/case:courtinfo/case:juris and $streamID = 'HK03'">
					<dc:coverage>
						<location:country>
							<xsl:attribute name="codescheme">
								<xsl:text>ISO-3166-1</xsl:text>
							</xsl:attribute>
							<xsl:attribute name="countrycode">
								<xsl:text>HK</xsl:text>
							</xsl:attribute>
						</location:country>
					</dc:coverage>
				</xsl:if>-->
            <xsl:apply-templates select="/COMMENTARYDOC/comm:info [$streamID='USLPA']"
                                 mode="person_contributor"/>
            <xsl:if test="$streamID=('UK06','UK07')">
               <dc:coverage>
                  <location:country>
                     <xsl:attribute name="codescheme">
                        <xsl:text>ISO-3166-1</xsl:text>
                     </xsl:attribute>
                     <xsl:attribute name="countrycode">
                        <xsl:text>GB</xsl:text>
                     </xsl:attribute>
                  </location:country>
               </dc:coverage>
            </xsl:if>
         </dc:metadata>
         <xsl:apply-templates select="docinfo:versioninfo[@hasotherversions='true'][$streamID='CA05']"
                              mode="doc_version"/>
         <xsl:apply-templates select="/LEGDOC/docinfo/docinfo:custom-metafields/docinfo:custom-metafield[@name = 'actFirstDoc'][contains(upper-case(.), 'TRUE')][$streamID='CA05']"
                              mode="firstActDoc"/>
         <xsl:apply-templates select="/COMMENTARYDOC/comm:info/classification [$streamID='USLPA']"
                              mode="metadata_classification"/>
         <xsl:apply-templates select="docinfo:custom-metafields [$streamID='USLPA']"
                              mode="metadata_custom"/>
         <!-- Sudhanshu Srivastava:
			     Created on - 28-06-2017.
			     Comments : The below condition will create classify:classification inside doc:docinfo based on if input source having (docinfo:custom-metafield name="is-first-document-in-enactment") or (docinfo:custom-metafield name="is-last-document-in-enactment").
			-->
         <xsl:if test="($streamID=('UK06','UK07')) and (docinfo:custom-metafields/docinfo:custom-metafield[@name='is-first-document-in-enactment'] or docinfo:custom-metafields/docinfo:custom-metafield[@name='is-last-document-in-enactment'])">
            <classify:classification classscheme="actDocumentOrder">
               <xsl:apply-templates select="docinfo:custom-metafields/docinfo:custom-metafield[@name='is-first-document-in-enactment']"
                                    mode="isfirstdocumentinenactment"/>
               <xsl:apply-templates select="docinfo:custom-metafields/docinfo:custom-metafield[@name='is-last-document-in-enactment']"
                                    mode="islastdocumentinenactment"/>
            </classify:classification>
         </xsl:if>
         <!-- MDS - 2017-06-27 - For NZ07DN -->
         <xsl:if test="$streamID='NZ07-DN'">
            <xsl:apply-templates select="/DIGESTDOC/dig:body/dig:info/jrnl:articleinfo/pubnote[remotelink]"/>
         </xsl:if>
         <!-- process that belong in doc:docinfo -->
         <!--  @@@ TODO:  update DITA to match this code!!!  -->
         <!-- Sudhanshu Srivastava: in CA13 stream , i have no need to transform here 'docinfo:hier', so i am making changes for sequencing of 
			docinfo:heir-->
         <xsl:if test="not($streamID = 'CA13')">
            <xsl:apply-templates select="docinfo:hier"/>
         </xsl:if>
         <!-- Priya Kaushal : Added below for the stream UK15 -->
         <xsl:apply-templates select="classification[$streamID='UK15']"/>
         <!--	<xsl:if test = "$streamID='UK15'">
				<xsl:if test="./classification">
					<classify:classification>
						<xsl:attribute name="classscheme">
							<xsl:value-of select="./classification/@classscheme"/>
						</xsl:attribute>
						<xsl:for-each select="./classification/classitem">
							<classify:classitem>
								<xsl:attribute name="classscheme">
									<xsl:value-of select="./classification/classitem/@classscheme"/>
								</xsl:attribute>
								<meta>
									<metaitem name="appliedby" value="human"/>
								</meta>
								<topic:topicReference xmlns:topic="urn:x-lexisnexis:content:topic:global:1"
									xmlns:guid="urn:x-lexisnexis:content:guid:global:1">
									<xsl:attribute name="guid:guid">
									<xsl:value-of select="./classitem-identifier/classcode/@normval"/>
								</xsl:attribute>
								</topic:topicReference>
							</classify:classitem>
						</xsl:for-each>
						
						</classify:classification>	
				</xsl:if>				
			</xsl:if>
			-->
         <xsl:apply-templates select="//case:reportercite[$streamID=('CA01','CA04')]"
                              mode="docrelated-content"/>
         <!-- Vikas Rohilla : Added for the stream CA01 -->
         <xsl:apply-templates select="//refnum[@refnumtype = 'UCN'][$streamID = ('CA01', 'CA02CC', 'CA02DC', 'CA19', 'CA02DS','CA04')]"
                              mode="docinfoMember"/>
         <xsl:apply-templates select="docinfo:doc-id[$streamID='CA03']" mode="membership"/>
         <xsl:apply-templates select="docinfo:bookseqnum"/>
         <xsl:apply-templates select="docinfo:alt-renditions"/>
         <!-- Awantika: Added for UK11 -->
         <xsl:choose>
            <xsl:when test="$streamID='UK11DA'">
               <xsl:apply-templates select="following-sibling::dig:body/dig:info/dig:subject[@display-name='Jurisdiction']"/>
            </xsl:when>
            <xsl:otherwise>
               <xsl:apply-templates select="//dig:body/dig:info/dig:subject"/>
            </xsl:otherwise>
         </xsl:choose>
         <xsl:call-template name="legacy-metadata"/>
         <!-- Sudhanshu Srivastava : transforming 'docinfo:hier' here for making sequence correct for CA13 stream. -->
         <xsl:if test="$streamID = 'CA13'">
            <xsl:apply-templates select="docinfo:hier"/>
         </xsl:if>
         <xsl:if test="$streamID = 'CA03' and following-sibling::source_cttr:body/leg:info/leg:relatedleg">
            <xsl:apply-templates select="following-sibling::source_cttr:body/leg:info/leg:relatedleg"
                                 mode="relatedcon"/>
         </xsl:if>
         <xsl:apply-templates select="docinfo:topiccodes"/>
         <xsl:apply-templates select="//case:headnote/case:length"/>
         <xsl:apply-templates select="docinfo:assoc-links"/>
         <!-- Sudhanshu added an applied template for  -->
         <xsl:apply-templates select="docinfo:changemanagementcode"/>
         <!-- process all docinfo:selector elements in the same wrapper -->
         <xsl:if test="docinfo:selector">
            <classify:classification classscheme="selector">
               <xsl:apply-templates select="docinfo:selector"/>
            </classify:classification>
         </xsl:if>
         <!-- CSN - 2017/09/26 - added parenthesis so this classification does not show up in every stream -->
         <xsl:if test="$streamID='AU18' and (parent::LEGDOC[@legtype='misc-inst'] or contains(child::docinfo:selector/text(), 'misc-inst'))">
            <classify:classification classscheme="au.admindoctype">
               <classify:classitem>
                  <classify:classitem-identifier>
                     <classify:classname>
                        <xsl:text>miscellaneous-instrument</xsl:text>
                     </classify:classname>
                  </classify:classitem-identifier>
               </classify:classitem>
            </classify:classification>
         </xsl:if>
         <!-- CSN 2017-11-15 Added UK18 to accomodate docinfo/classification needed for Quantum Stub documents. VSTS Bug 402801. -->
         <xsl:apply-templates select="classification[$streamID=('UK13','UK18')]"/>
         <xsl:apply-templates select="docinfo:topiccodes[$streamID='NZ10']"/>
         <xsl:apply-templates select="/LEGDOC/@legtype[$streamID='NZ12']" mode="NZClassify"/>
         <xsl:if test="/COMMENTARYDOC/docinfo/docinfo:lbu-meta/docinfo:metaitem[@name = 'PA-PGUID' or @name = 'TOPIC-PGUID' or @name = 'SUB-TOPIC-PGUID']">
            <classify:classification-grp classscheme="ln.indexing-terms">
               <classify:classification classscheme="ln.legal">
                  <xsl:apply-templates select="/COMMENTARYDOC/docinfo/docinfo:lbu-meta/docinfo:metaitem[@name = 'PA-PGUID' or @name = 'TOPIC-PGUID' or @name = 'SUB-TOPIC-PGUID']"
                                       mode="classify"/>
               </classify:classification>
            </classify:classification-grp>
         </xsl:if>
         <!-- PLEASE DO NOT REMOVE UK-SPECIFIC CONDITIONS  -->
         <xsl:if test="starts-with($streamID, 'UK') and (@majorrevision or @excludefromalerts or docinfo:custom-metafields/docinfo:custom-metafield[@name = ('important', 'highlightFrequency', 'inEditorialReview', 'resultType', 'word-toc', 'isDocBuilderAvailable', 'isCorePrecedent')])">
            <xsl:apply-templates select="." mode="UKClassify"/>
         </xsl:if>
         <xsl:if test="//page">
            <xsl:variable name="pageList" select="//page"/>
            <doc:pagination>
               <xsl:for-each-group select="$pageList" group-by="@reporter">
                  <doc:pagination-scheme>
                     <xsl:if test="@reporter!=''">
                        <xsl:attribute name="page-scheme">
                           <xsl:value-of select="translate(@reporter,' ','_')"/>
                        </xsl:attribute>
                     </xsl:if>
                     <xsl:attribute name="page-scheme-type">reporter-abbreviation</xsl:attribute>
                  </doc:pagination-scheme>
               </xsl:for-each-group>
            </doc:pagination>
         </xsl:if>
         <xsl:apply-templates select="/LEGDOC/@legtype[$streamID = ('AU19LA', 'AU15')]"
                              mode="AUClassify"/>
         <xsl:apply-templates select="docinfo:currencystatement"/>
         <xsl:apply-templates select="docinfo:keywords[$streamID = 'UK15_DS']"/>
         <!--pawan: added to create  classify:classification[@classscheme="keywords"] from docinfo:keywords-->
         <xsl:apply-templates select="docinfo:lbu-indexing-terms"/>
         <xsl:apply-templates select="docinfo:lbu-subj"/>
         <xsl:apply-templates select="docinfo:lbu-juris"/>
         <xsl:apply-templates select="docinfo:overview"/>
         <xsl:apply-templates select="docinfo:versioninfo[$streamID != 'CA05']"/>
         <!-- Vikas Rohilla : Apply template for the streamID UK11DA					-->
         <!-- Awantika: Apply template for UK11DN -->
         <xsl:apply-templates select="classification[$streamID=('UK11DA','UK11DN','UK03')]"/>
         <!-- Vikas Rohilla : Updated the template for the highlight becomes doc:overview -->
         <xsl:apply-templates select="//dig:info/highlight[not(preceding-sibling::highlight)][$streamID = 'CA14']"
                              mode="doc-overview"/>
         <xsl:apply-templates select="//row/entry[@colname = 'col1'][matches(., 'SUBJECTS/SUJETS:') or matches(., 'Subjects\\Sujets:')][$streamID = 'CA11']"
                              mode="highlights"/>
         <xsl:apply-templates select="docinfo:custom-metafields/docinfo:custom-metafield[@name = 'actFirstDoc'][contains(., 'true')][($streamID = 'CA06') or ($streamID = 'CA07')or ($streamID = 'CA08')]"
                              mode="classify"/>
         <xsl:apply-templates select="docinfo:custom-metafields/docinfo:custom-metafield[@name='act-id' or @searchtype='act-id'][($streamID = 'CA08') or ($streamID = 'CA07')]"
                              mode="doc_membership"/>
         <xsl:apply-templates select="docinfo:versioninfo/docinfo:versionbranch[$streamID = ('CA05', 'CA06', 'CA08')]"
                              mode="member"/>
         <xsl:apply-templates select="docinfo:custom-metafields/docinfo:custom-metafield[@name = 'act-id'][$streamID = ('CA06')]"
                              mode="membership"/>
         <xsl:apply-templates select="following::ci:content[$streamID = ('CA06', 'CA07')]"
                              mode="doc-related"/>
         <xsl:apply-templates select="following::leg:num[not(starts-with(.,'solsak'))][$streamID = ('CA08')]"
                              mode="doc_related_content-alt-lang"/>
         <xsl:apply-templates select="following::leg:num[1][$streamID=('CA05', 'CA07')]"
                              mode="doc-related-content-alt-lang"/>
         <xsl:apply-templates select="following::leg:officialnum[1][not(child::ci:cite)][not(preceding-sibling::leg:num[child::ci:cite])][$streamID = ('CA06')]"
                              mode="doc_related_content_officialnum"/>
         <xsl:apply-templates select="/LEGDOC/leg:body[child::leg:level][$streamID = ('CA06', 'CA07', 'CA08')]"
                              mode="metadata"/>
         <xsl:apply-templates select="/LEGDOC/leg:body[$streamID = ('CA05')]"
                              mode="doc_overview_bills"/>
         <xsl:apply-templates select="/COMMENTARYDOC/comm:body[$streamID = 'CA10']"
                              mode="overviewmeta"/>
         <xsl:apply-templates select="/COMMENTARYDOC/comm:body[$streamID = 'CA09']"
                              mode="doc_overview"/>
         <xsl:apply-templates select="/COMMENTARYDOC/docinfo/relationshipmetadata[$streamID='UK14']"/>
         <xsl:apply-templates select="//note[@notetype = 'other']/remotelink[contains(., '[version anglaise]') or contains(., '[French Version]')][$streamID = 'CA02DS']"
                              mode="doc-related_content"/>
         <xsl:apply-templates select="//jrnl:body[$streamID = 'CA15']" mode="doc_overview"/>
         <!-- Awantika: Applied template for note scnario in AU20 -->
         <xsl:apply-templates select="//CITATORDOC/source_cttr:body/leg:info/note[@notetype = 'xref' and (@id = 'SCAP4' or 'SCAI4')]"/>
         <xsl:apply-templates select="docinfo:leginclude[$streamID = ('UK06','UK07')]"/>
      </doc:docinfo>
   </xsl:template>

   <xsl:template name="legacy-metadata"><!-- don't create doc:legacy-metadata unless at least one of the following is present -->
      <xsl:if test="docinfo:dpsi | /CITATORDOC/@citatordoctype | /CITATORDOC/@fullcourt | /CITATORDOC/@notannotated | /CITATORDOC/@shortannot | /CITATORDOC/@unreported | @browseprev | @browsenext | @partitionnum | @majorrevision | @excludefromalerts | @excludefromtoc | @id-string | docinfo:custom-metafields | //leg:info/leg:hier | docinfo:lbu-meta | docinfo:subtype | perjudge">
         <doc:legacy-metadata metadatasource="lbu-meta">
            <meta>
               <xsl:for-each select="/*[1]/docinfo[1]/@excludefromtoc">
                  <metaitem>
                     <xsl:attribute name="name">
                        <xsl:text>excludefromtoc</xsl:text>
                     </xsl:attribute>
                     <xsl:attribute name="value">
                        <xsl:value-of select="."/>
                     </xsl:attribute>
                  </metaitem>
               </xsl:for-each>
               <xsl:choose><!--			Vikas Rohilla : updated the and condition			-->
                  <xsl:when test="docinfo:dpsi[@id-string] and not(./docinfo:lbu-meta/docinfo:metaitem[upper-case(@name) = 'DPSI'])">
                     <xsl:apply-templates select="docinfo:dpsi"/>
                  </xsl:when>
                  <xsl:otherwise>
                     <xsl:call-template name="findDPSI"/>
                  </xsl:otherwise>
               </xsl:choose>
               <!-- Awantika: metaitem mapping for case:courtcode in HK03. SP: also using this for CA19. Sudhanshu : Added  -->
               <xsl:if test="//case:courtcode[$streamID = ('HK03', 'CA19', 'CA02CC', 'CA01' ,'NZ03', 'AU13', 'UK01', 'UK03', 'NZ07-DN', 'NZ07DC' , 'AU07' , 'NZ17CC', 'AU09','HK09','MY01')]">
                  <metaitem>
                     <xsl:attribute name="name">
                        <xsl:text>case:courtcode</xsl:text>
                     </xsl:attribute>
                     <xsl:attribute name="value">
                        <xsl:value-of select="//case:courtcode/text()"/>
                     </xsl:attribute>
                  </metaitem>
                  <!-- Awantika: instruction ends -->
               </xsl:if>
               <!-- Awantika: Added metaitem for UK11DN for alert:alertReference and topic:topicReference-->
               <!-- BRT 10/3/17: commented this out in favor of the code on line 680 -->
               <!--xsl:if test="/DIGESTDOC/docinfo/classification[child::classitem[@classscheme='alert:alertReference']/classitem-identifier/classname['ModuleID']][$streamID = ('UK11DN','UK03','UK11DA')]">
						<metaitem>
							<xsl:attribute name="name">
								<xsl:text>MODULE-CURRENTNESS-ALERT</xsl:text>
							</xsl:attribute>
							<xsl:attribute name="value">
								<xsl:value-of select="/DIGESTDOC/docinfo/classification/classitem[@classscheme='alert:alertReference']/classitem-identifier[child::classname['ModuleID']]/classcode/@normval"/>
							</xsl:attribute>
						</metaitem>
					</xsl:if-->
               <!-- BRT 10/3/17 commented out, use alert code as model for @classscheme='topic:topicReference' further down -->
               <!--xsl:if test="/DIGESTDOC/docinfo/classification[child::classitem[@classscheme='topic:topicReference']/classitem-identifier/classname['ModuleID']][$streamID = 'UK11DN']">
						<metaitem>
							<xsl:attribute name="name">
								<xsl:text>MODULE-PGUID</xsl:text>
							</xsl:attribute>
							<xsl:attribute name="value">
								<xsl:value-of select="/DIGESTDOC/docinfo/classification/classitem[@classscheme='topic:topicReference']/classitem-identifier[child::classname['ModuleID']]/classcode/@normval"/>
							</xsl:attribute>
						</metaitem>
					</xsl:if-->
               <!-- JD: 20170526: added for UK05
					"PLEASE NOTE that the element doc:legacy-metadata needs to be created only for case:courtcode occurring within
					case:headnote/case:info/case:courtinfo. There is NO NEED to create doc:legacy-metadata for all other occurrences, eg.,
					cttr:annot/case:info/case:courtinfo."
					-->
               <xsl:if test="/CITATORDOC/source_cttr:body/case:headnote/case:info/case:courtinfo/case:courtcode[$streamID = 'UK05']">
                  <metaitem>
                     <xsl:attribute name="name">
                        <xsl:text>case:courtcode</xsl:text>
                     </xsl:attribute>
                     <xsl:attribute name="value">
                        <xsl:value-of select="/CITATORDOC/source_cttr:body/case:headnote/case:info/case:courtinfo/case:courtcode/text()"/>
                     </xsl:attribute>
                  </metaitem>
               </xsl:if>
               <xsl:apply-templates select="//case:info/case:reportercite/@ln.user-displayed[$streamID='AU07']"
                                    mode="metadata"/>
               <!-- JD: end add for UK05 -->
               <xsl:apply-templates select="/CITATORDOC/@citatordoctype | /CITATORDOC/@fullcourt | /CITATORDOC/@notannotated | /CITATORDOC/@shortannot | /CITATORDOC/@unreported | @browseprev | @browsenext | @partitionnum | @majorrevision | @excludefromalerts | @id-string"/>
               <xsl:apply-templates select="docinfo:custom-metafields [not($streamID='USLPA')]"/>
               <xsl:if test="not($streamID = 'CA05')">
                  <xsl:apply-templates select="//leg:info/leg:hier"/>
               </xsl:if>
               <xsl:apply-templates select="docinfo:lbu-meta"/>
               <xsl:apply-templates select="docinfo:subtype"/>
               <!-- Vikas Rohilla	: Apply templates added for the streamID CA02DC -->
               <xsl:apply-templates select="//case:courtcode[$streamID = ('CA02DC', 'CA02DS')]"
                                    mode="meta_item"/>
               <xsl:apply-templates select="//classification[@rendition and @classscheme][$streamID = 'CA02DC']"
                                    mode="meta-item"/>
               <xsl:call-template name="perjudge"/>
               <!--<xsl:apply-templates select="//case:courtinfo/case:courtcode" mode="metadata"/>-->
               <xsl:if test="$streamID = ('HK08', 'AU02')">
                  <xsl:apply-templates select="//case:headnote/case:info/case:courtinfo/case:courtcode"
                                       mode="metadata"/>
               </xsl:if>
            </meta>
         </doc:legacy-metadata>
         <xsl:if test="$streamID='USLPA'">
            <xsl:apply-templates select="docinfo:custom-metafields"/>
         </xsl:if>
         <!-- Awantika: Need to create two legacy metadata one isdefault one is with @metadatasource="tracking-timestamp". 
				1. For all documents, the conversion should add a date-timestamp in the format YYYYMMDDHHMMSS using doc:legacymetadata@
metadatasource="tracking-timestamp"/meta containing meta/metaitem@name="conversiontimestamp"@
value="YYYYMMDDHHMMSS"
				2. If optional docinfo:custom-metafields/docinfo:custom-metafield[@name="lbu-publish-timestamp"] exists, create doc:legacymetadata[@
metadatasource="tracking-timestamp"] and add child meta/metaitem[@name="lbu-publish-timestamp"]
[@value="YYYYMMDDHHMMSS"] -->
         <xsl:if test="$streamID='AU20'">
            <doc:legacy-metadata metadatasource="tracking-timestamp">
               <meta>
                  <metaitem>
                     <xsl:attribute name="name">
                        <xsl:text>conversion-timestamp</xsl:text>
                     </xsl:attribute>
                     <xsl:attribute name="value">
                        <xsl:choose>
                           <xsl:when test="docinfo:custom-metafields/docinfo:custom-metafield[@name='lbu-publish-timestamp']">
                              <xsl:value-of select="concat(docinfo:custom-metafields/docinfo:custom-metafield[@name='lbu-publish-timestamp'],format-dateTime(current-dateTime(),'[H01][m01][s]'))"/>
                           </xsl:when>
                           <xsl:otherwise>
                              <xsl:value-of select="format-dateTime(current-dateTime(),'[Y0001][M01][D01][H01][m01][s]')"/>
                           </xsl:otherwise>
                        </xsl:choose>
                     </xsl:attribute>
                  </metaitem>
                  <xsl:if test="docinfo:custom-metafields/docinfo:custom-metafield[@name='lbu-publish-timestamp']">
                     <metaitem>
                        <xsl:attribute name="name">
                           <xsl:text>lbu-publish-timestamp</xsl:text>
                        </xsl:attribute>
                        <xsl:attribute name="value">
                           <xsl:value-of select="docinfo:custom-metafields/docinfo:custom-metafield[@name='lbu-publish-timestamp']"/>
                        </xsl:attribute>
                     </metaitem>
                  </xsl:if>
               </meta>
            </doc:legacy-metadata>
         </xsl:if>
      </xsl:if>
      <!-- Brad Thacker: corrected metaitem for classitem[@classscheme='topic:topicReference'] UK15CS, UK15ds, UK12cs, UK11dn -->
      <xsl:for-each select="/*/docinfo/classification/classitem[@classscheme='topic:topicReference'][classitem-identifier/classname['ModuleID']]">
         <xsl:if test="$streamID=('UK11DN','UK12', 'UK15')">
            <doc:legacy-metadata metadatasource="lbu-meta">
               <meta>
                  <metaitem>
                     <xsl:attribute name="name">
                        <xsl:text>MODULE-PGUID</xsl:text>
                     </xsl:attribute>
                     <xsl:attribute name="value">
                        <xsl:value-of select="./classitem-identifier[child::classname['ModuleID']]/classcode/@normval"/>
                     </xsl:attribute>
                  </metaitem>
                  <!-- BRT: comment out for now - don't need topic pguids in shared services (yet) -->
                  <!--xsl:for-each select="./classitem-identifier/classcode">
							<xsl:if test="contains(./@normval, 'urn:topic:')">
								<metaitem>
									<xsl:attribute name="name">
										<xsl:text>TOPIC-CURRENTNESS-ALERT</xsl:text>
									</xsl:attribute>
									<xsl:attribute name="value">
										<xsl:value-of select="./@normval"/>
									</xsl:attribute>
								</metaitem>
							</xsl:if>
						</xsl:for-each-->
               </meta>
            </doc:legacy-metadata>
         </xsl:if>
      </xsl:for-each>
      <!-- Rohan Borkar: modifications end-->
      <!-- Rohan Borkar: corrected metaitem for UK11DA for alert:alertReference -->
      <xsl:for-each select="/DIGESTDOC/docinfo/classification/classitem[@classscheme='alert:alertReference']">
         <xsl:if test="$streamID=('UK11DN','UK03','UK11DA')">
            <doc:legacy-metadata metadatasource="lbu-meta">
               <meta>
                  <metaitem>
                     <xsl:attribute name="name">
                        <xsl:text>MODULE-CURRENTNESS-ALERT</xsl:text>
                     </xsl:attribute>
                     <xsl:attribute name="value">
                        <xsl:value-of select="./classitem-identifier[child::classname['ModuleID']]/classcode/@normval"/>
                     </xsl:attribute>
                  </metaitem>
                  <xsl:for-each select="./classitem-identifier/classcode">
                     <xsl:if test="contains(./@normval, 'urn:topic:')">
                        <metaitem>
                           <xsl:attribute name="name">
                              <xsl:text>TOPIC-CURRENTNESS-ALERT</xsl:text>
                           </xsl:attribute>
                           <xsl:attribute name="value">
                              <xsl:value-of select="./@normval"/>
                           </xsl:attribute>
                        </metaitem>
                     </xsl:if>
                  </xsl:for-each>
               </meta>
            </doc:legacy-metadata>
         </xsl:if>
      </xsl:for-each>
      <!-- Rohan Borkar: modifications end-->
      <xsl:if test="$streamID=('AU13','HK09')">
         <doc:legacy-metadata metadatasource="rosetta">
            <meta>
               <xsl:for-each select="/CASEDOC/case:body/case:headnote/case:info/case:courtinfo/case:courtcode">
                  <metaitem>
                     <xsl:attribute name="name">case:courtcode</xsl:attribute>
                     <xsl:attribute name="value" select="."/>
                  </metaitem>
               </xsl:for-each>
            </meta>
         </doc:legacy-metadata>
      </xsl:if>
   </xsl:template>
   <!-- JD: 20170524: adding this template (called above) -->
   <xsl:template match="docinfo:dpsi">
      <metaitem name="dpsi" value="{@id-string}"/>
   </xsl:template>
   <!-- person[@searchtype="JUDGES"] -->
   <xsl:template name="perjudge"><!-- JD: 2017-07-14: added 'judge'; probably a data error from UK XSLT development -->
      <xsl:if test="//person[@searchtype = ('JUDGES','judge')]">
         <metaitem name="JUDGES"
                   value="{//person[ @searchtype = ('JUDGES','judge') ]/name.text}"/>
      </xsl:if>
   </xsl:template>

   <xsl:template match="/CITATORDOC/@citatordoctype | /CITATORDOC/@fullcourt | /CITATORDOC/@notannotated | /CITATORDOC/@shortannot | /CITATORDOC/@unreported | @browseprev | @browsenext | @partitionnum | @majorrevision | @excludefromalerts | @id-string">
      <metaitem name="{name()}" value="{.}"/>
   </xsl:template>

   <xsl:template name="findDPSI">
      <xsl:choose><!--	**************************************************************  
		Vikas Rohilla : Commented this part because findDPSI templete called in the docinfo
		template and after using the double dot (..) current element becomes
		the CASEDOC and the docinfo:lbu-meta never find in the CASEDOC. 
		and after match the conversion is skip becauese it is created by the 
		docinfo:metaitem template.
		**************************************************************--><!--	<xsl:when test="../docinfo:lbu-meta/docinfo:metaitem[@name='DPSI']">
				<metaitem xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
					<xsl:attribute name="name">dpsi</xsl:attribute>
					<xsl:attribute name="value" select="../docinfo:lbu-meta/docinfo:metaitem[@name='DPSI']/@value"/>
				</metaitem>
			</xsl:when>--><!-- Vikas Rohilla : replaced double dot(..) with the single dot (.)  -->
         <xsl:when test="./docinfo:lbu-meta/docinfo:metaitem[upper-case(@name) = 'DPSI']"/>
         <xsl:otherwise>
            <metaitem>
               <xsl:attribute name="name">dpsi</xsl:attribute>
               <xsl:attribute name="value" select="$dpsi"/>
            </metaitem>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>

   <xsl:template match="comm:info/pubdate" mode="dc.metadata">
      <xsl:apply-templates mode="dc.metadata"/>
   </xsl:template>

   <xsl:template match="case:headnote/case:info/case:casename | case2:headnote/case2:info/case2:casename"
                 mode="dc.metadata"><!--  Original Target XPath:  dc:metadata/dc:title   -->
      <dc:title>
         <xsl:apply-templates select="@* | node()" mode="dc.metadata"/>
      </dc:title>
   </xsl:template>

   <xsl:template match="comm:info/pubdate/date" mode="dc.metadata">
      <dc:date lnmeta:datetype="pubdate">
         <xsl:value-of select="@year"/>
         <xsl:text>-</xsl:text>
         <xsl:value-of select="@month"/>
         <xsl:text>-</xsl:text>
         <xsl:value-of select="@day"/>
      </dc:date>
   </xsl:template>

   <xsl:template match="docinfo:lbu-meta/docinfo:metaitem[@name = 'PA-PGUID' or @name = 'TOPIC-PGUID' or @name = 'SUB-TOPIC-PGUID']"
                 priority="2"
                 mode="classify">
      <classify:classitem>
         <meta>
            <metaitem name="appliedby" value="human"/>
         </meta>
         <topic:topicReference guid:guid="{@value}"/>
      </classify:classitem>
   </xsl:template>

   <xsl:template match="docinfo:versionbranch" priority="2" mode="member">
      <doc:membership>
         <ref:groupid group-type="variants-1">
            <ref:resourceid>
               <xsl:attribute name="ref:resourcekey">
                  <xsl:text>urn:cldi-1:</xsl:text>
                  <xsl:value-of select="translate(translate(translate(translate(@value,'          (&#x9; ',''),'          &#x9;) ',''),'          ,&#x9; ',''),'          ''&#x9; ','')"/>
               </xsl:attribute>
            </ref:resourceid>
         </ref:groupid>
      </doc:membership>
   </xsl:template>
   <!--<topicref href="../common/common_rosetta_docinfo.bookseqnum.dita"/>-->   <!-- <topicref href="../../../common_newest/Rosetta_docinfo.bookseqnum-LxAdv-doc.bookseqnum.dita"/> -->   <xd:doc>
      <xd:desc>
         <xd:p>
            <xd:b>Instructions <xd:i>[common element]</xd:i>
            </xd:b>
         </xd:p>
         <xd:p>This is an LBU-supplied, unsigned numeric value that indicates the relative position of a document and must be unique within a source. 
					<xd:i>docinfo:bookseqnum</xd:i> becomes <xd:b>doc:bookseqnum</xd:b>.
				</xd:p>
         <xd:p>
            <xd:b>Source XML</xd:b>
         </xd:p>
         <xd:pre>
		
		&lt;docinfo:bookseqnum&gt;273181624&lt;/docinfo:bookseqnum&gt;
		
			</xd:pre>
         <xd:p>
            <xd:b>Target XML</xd:b>
         </xd:p>
         <xd:pre>
		
		&lt;doc:bookseqnum&gt;273181624&lt;/doc:bookseqnum&gt;
		
			</xd:pre>
         <!--Changes2012-09-06: Created.
				-->
      </xd:desc>
   </xd:doc>
   <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_docinfo.bookseqnum-LxAdv-doc.bookseqnum.dita  -->
   <xsl:template match="docinfo:bookseqnum[not( normalize-space( . ) = '' )]"><!--  Original Target XPath:  doc:bookseqnum   -->
      <doc:bookseqnum>
         <xsl:apply-templates select="@* | node()"/>
      </doc:bookseqnum>
   </xsl:template>
   <!--    From Rosetta_Elements-LxAdv-Empty_Elements.dita / .xsl   -->
   <xsl:template match="docinfo:bookseqnum[ normalize-space( . ) = '' ]"/>
   <!-- <topicref href="../../../common_caselaw/Rosetta_refnum.refnumtype.UCN-LxAdv_ref.groupid.dita"/> -->   <xd:doc>
      <xd:desc>
         <xd:p>
            <xd:i>refnum[@refnumtype="UCN"]</xd:i> becomes
               <xd:b>doc:docinfo/doc:membership/ref:groupid[@group-type="ucn-1"]</xd:b>.</xd:p>
         <xd:p>The content of <xd:i>refnum</xd:i>, prepended with the string "urn:ucn-1:", becomes the content of the <xd:b>ref:resourcekey</xd:b>
			 attribute of <xd:b>ref:resourceid</xd:b>.</xd:p>
         <xd:p>Other attributes of <xd:i>refnum</xd:i> are dropped.</xd:p>
         <xd:p>
            <xd:b>Mapping of <xd:i>refnum[@refnumtype="UCN"]</xd:i>
            </xd:b>
         </xd:p>
         <xd:pre>
&lt;refnum refnumtype="UCN" ln.user-displayed="false"&gt;00180609&lt;/refnum&gt;
           </xd:pre>
         <xd:b>becomes</xd:b>
         <xd:pre>


&lt;doc:docinfo doc-content-country="CA"&gt;
    &lt;!-- ...--&gt;
    &lt;doc:membership&gt;       
        &lt;ref:groupid group-type="ucn-1"&gt;
            &lt;ref:resourceid ref:resourcekey="urn:ucn-1:00180609"/&gt; 
        &lt;/ref:groupid&gt;         
    &lt;/doc:membership&gt;
    ...
&lt;/doc:docinfo&gt;

           </xd:pre>
         <!--Changes2014-09-26: updated Instructions. Db issue# 19132014-09-17: updated example.
              P4- Db issue# 3382014-09-15: update target mapping of
                        refnum[@refnumtype="UCN"] from Head to
                        doc:docinfo/doc:membership/ref:groupid[@group-type="ucn-1"].
                    Db issue #1893 and 3382014-06-26: Make ref:resourcekey UCN value urn conform to PGUID registry, e.g. "urn:ucn-1:00180609".2014-06-12: Created this instruction.-->
      </xd:desc>
   </xd:doc>
   <!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
   <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_caselaw\Rosetta_refnum.refnumtype.UCN-LxAdv_ref.groupid.dita  -->
   <!-- Vikas Rohilla : Skip conversion in the current mode need to create in to the doc:docinfo the -->
   <xsl:template match="refnum|refnum/@*"/>
   <!-- Vikas Rohilla : Initial updated may be updated if required-->
   <xsl:template match="refnum[@refnumtype='UCN']" mode="docinfoMember">
      <xsl:element name="doc:membership">
         <xsl:element name="ref:groupid">
            <xsl:attribute name="group-type">
               <xsl:text>ucn-1</xsl:text>
            </xsl:attribute>
            <xsl:element name="ref:resourceid">
               <xsl:attribute name="ref:resourcekey">
                  <xsl:value-of select="concat('urn:ucn-1:',.)"/>
               </xsl:attribute>
            </xsl:element>
         </xsl:element>
      </xsl:element>
   </xsl:template>
   <!--<topicref href="../common/common_rosetta_docinfo.custom-metafields.dita"/>-->   <!-- <topicref href="../../../common_newest/Rosetta_CAN_docinfo.custom-metafields-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta.meta.metaitem.dita"/> -->   <!-- This is a generic module, this is coded as per CA11 CI. It can be modified if there is differnt scenario in other streams -->
   <xsl:template match="docinfo:custom-metafield[@name='COURT-CLASSIFY']" priority="2"/>

   <xsl:template match="docinfo:custom-metafield[@name='JURIS-CLASSIFY']" priority="2"/>

   <xsl:template match="docinfo:custom-metafield[@name='unhandled']" priority="2"/>

   <xsl:template match="docinfo:custom-metafield[@searchtype='JURIS-CLASSIFY']"
                 priority="2"/>

   <xsl:template match="docinfo:custom-metafield[@searchtype='COURT-CLASSIFY']"
                 priority="2"/>

   <xsl:template match="docinfo:custom-metafield[@searchtype='unhandled']" priority="2"/>

   <xsl:template match="docinfo:custom-metafields"><!-- Sudhanshu included streamID CA02CC and CA13for  legacy-metadata.-->
      <xsl:choose>
         <xsl:when test="$streamID='CA08' or $streamID='CA07' or $streamID='CA02CC' or $streamID='CA13' or $streamID='CA06' or $streamID='CA05' or $streamID='CA10' or $streamID='CA03' or $streamID='CA15' or $streamID='CA04'">
            <xsl:apply-templates select="@*|node()"/>
         </xsl:when>
         <xsl:when test="$streamID = 'CA12'">
            <xsl:apply-templates select="@* | node()"/>
            <xsl:apply-templates select="//heading/title/alias"/>
            <xsl:apply-templates select="//text[@searchtype[matches(., 'COURT-NAME')]]"
                                 mode="meta_court"/>
            <xsl:apply-templates select="//text[@searchtype[matches(., 'CASE-NAME')]]" mode="meta_case"/>
            <xsl:apply-templates select="//text[@searchtype[matches(., 'REPORTER-CITE')]]"
                                 mode="meta_reporter"/>
            <xsl:apply-templates select="//emph[@searchtype[matches(.,'JUDGES')]]" mode="meta_judge"/>
         </xsl:when>
         <xsl:otherwise>
            <doc:legacy-metadata metadatasource="lbu-meta">
               <meta>
                  <xsl:apply-templates select="@*|node()"/>
               </meta>
            </doc:legacy-metadata>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <!-- Vikas Rohilla : Template to match the  docinfo:custom-metafields and the streamID='CA01'  with the priority higher thn normal for avoid the ambiguity  -->
   <xsl:template match="docinfo:custom-metafields[$streamID='CA01' or $streamID='CA02DC' or $streamID='CA02DS' or $streamID='CA14']"
                 priority="2">
      <xsl:apply-templates select="node()|@*"/>
   </xsl:template>

   <xsl:template match="docinfo:custom-metafield">
      <metaitem>
         <xsl:apply-templates select="@*"/>
         <xsl:attribute name="value">
            <xsl:value-of select="normalize-space(.)"/>
         </xsl:attribute>
      </metaitem>
   </xsl:template>

   <xsl:template match="docinfo:custom-metafield[@name = 'effect-date'][$streamID = 'CA05' or $streamID='CA08' or $streamID='CA07']">
      <metaitem>
         <xsl:attribute name="name">
            <xsl:text>effect-date</xsl:text>
         </xsl:attribute>
         <xsl:attribute name="value">
            <xsl:value-of select="concat(substring(., 1, 4), '-', substring(., 5, 2), '-', substring(., 7, 2))"/>
         </xsl:attribute>
      </metaitem>
   </xsl:template>

   <xsl:template match="docinfo:custom-metafield/@name|docinfo:custom-metafield/@searchtype">
      <xsl:attribute name="name">
         <xsl:value-of select="normalize-space(.)"/>
      </xsl:attribute>
   </xsl:template>
   <!--<topicref href="../common/common_rosetta_docinfo.doc-country.dita"/>-->   <!-- <topicref href="../../../common_newest/Rosetta_docinfo.doc-country_iso-cc-LxAdv-doc.docinfo_doc-content-country.dita"/> -->   <xd:doc>
      <xd:desc>
         <xd:p>
            <xd:b>Instructions <xd:i>[common element]</xd:i>
            </xd:b>
         </xd:p>
         <xd:p>
            <xd:i>docinfo:doc-country[@iso-cc]</xd:i> becomes <xd:b>doc:docinfo[@doc-content-country]</xd:b>. </xd:p>
         <xd:p>If <xd:i>docinfo:doc-country[@iso-cc="AU"]</xd:i>, check the value of <xd:i>case:headnote/case:info/case:courtinfo//case:juris</xd:i>. If
						<xd:i>case:juris="NZ"</xd:i>, set <xd:b>doc:docinfo[@doc-content-country="NZ"]</xd:b>.<xd:p>
               <xd:b>Note: </xd:b>@doc-content-country is required.</xd:p>
            <xd:p>
               <xd:b>Note: </xd:b>
               <xd:i>docinfo:doc-country[@iso-cc]</xd:i> is used to specify the country in the source document and also becomes part of <xd:b>@xml:id</xd:b> as described in
						the instructions for <xd:a href="Rosetta_docinfo.doc-lang-and-doc-country-LxAdv-ROOT_xml.lang.dita">Target @xml:lang</xd:a>.</xd:p>
         </xd:p>
         <xd:p>
            <xd:b>Source XML</xd:b>
         </xd:p>
         <xd:pre>
	&lt;docinfo&gt;
			  ....
		   &lt;docinfo:doc-country iso-cc="AU"/&gt;
		   ....
		   &lt;/docinfo&gt;


		</xd:pre>
         <xd:p>
            <xd:b>Target XML</xd:b>
         </xd:p>
         <xd:pre>
&lt;doc:docinfo doc-content-country="AU"&gt;
         ...
        &lt;/doc:docinfo&gt;


		</xd:pre>
         <xd:p>
            <xd:b>Source XML - AU example with case:juris="NZ"</xd:b>
         </xd:p>
         <xd:pre>


&lt;CITATORDOC&gt;
 &lt;docinfo&gt;
   ....
   &lt;docinfo:doc-country iso-cc="AU"/&gt;
    ....
 &lt;/docinfo&gt;
 &lt;cttr:body&gt;
    &lt;case:headnote&gt;
        &lt;case:info&gt;
        ...........
            &lt;case:courtinfo&gt;
            .........
                 &lt;case:juris ln.user-displayed="false"&gt;NZ&lt;/case:juris&gt;
            &lt;/case:courtinfo&gt;
        &lt;/case:info&gt;
    &lt;/case:headnote&gt;
  &lt;/cttr:body&gt;
&lt;/CITATORDOC&gt;

		</xd:pre>
         <xd:p>
            <xd:b>Target XML - AU example with case:juris="NZ" </xd:b>
         </xd:p>
         <xd:pre>
&lt;doc:docinfo doc-content-country="NZ"&gt;
         ...
        &lt;/doc:docinfo&gt;


		</xd:pre>
         <xd:p>
            <xd:b>Source XML</xd:b>
         </xd:p>
         <xd:pre>
&lt;docinfo&gt;
          ....
       &lt;docinfo:doc-country iso-cc="CA"/&gt;
       ....
       &lt;/docinfo&gt;


		</xd:pre>
         <xd:p>
            <xd:b>Target XML</xd:b>
         </xd:p>
         <xd:pre>
&lt;doc:docinfo doc-content-country="CA"&gt;
         ...
        &lt;/doc:docinfo&gt;


		</xd:pre>
         <xd:p>
            <xd:b>Source XML - Example for UK Content</xd:b>
         </xd:p>
         <xd:pre>
&lt;docinfo&gt;
          ....
       &lt;docinfo:doc-country iso-cc="GB"/&gt;
       ....
       &lt;/docinfo&gt;


		</xd:pre>
         <xd:p>
            <xd:b>Target XML - Example for UK Content</xd:b>
         </xd:p>
         <xd:pre>
&lt;doc:docinfo doc-content-country="GB"&gt;
         ...
        &lt;/doc:docinfo&gt;


				</xd:pre>
         <!--Changes2014-11-13: Example added for AU content with case:juris="NZ".2012-10-05: Example added for UK content.-->
      </xd:desc>
   </xd:doc>
   <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_docinfo.doc-country_iso-cc-LxAdv-doc.docinfo_doc-content-country.dita  -->
   <xsl:template name="doc_content_country"><!-- This template creates @doc-content-country from doc-country 
                    however there is an NZ special case --><!-- 2017-10-03 - MDS: Added handling for $streamID starts with 'HK' --><!-- Awantika: 2017-10-11: added streamID HK in else to replace AU(which is given in input) -->
      <xsl:attribute name="doc-content-country"
                     select=" if (//docinfo:doc-country/@iso-cc = 'AU' or ($streamID='AU08')) then                       if (//case:headnote/case:info/case:courtinfo//case:juris = 'NZ') then                        'NZ'                       else                                             if(starts-with($streamID, 'HK'))then 'HK' else 'AU'                        else                         if(starts-with($streamID, 'HK')) then                           if (//docinfo:doc-country/@iso-cc) then //docinfo:doc-country/@iso-cc                          else 'HK'                         else                         //docinfo:doc-country/@iso-cc "/>
   </xsl:template>
   <!--  un-comment out the following template rule to perform unit testing via XSpec file   -->   <!--xsl:template match="docinfo">
		<test>
			<xsl:call-template name="doc_content_country"/>
		</test>
	</xsl:template-->   <!--<topicref href="../common/common_rosetta_docinfo.doc-heading.dita"/>-->   <!-- <topicref href="../../../common_newest/Rosetta_docinfo.doc-heading-LxAdv-dc.title.dita"/> -->   <xd:doc>
      <xd:desc>
         <xd:p>
            <xd:b>Instructions <xd:i>[common element]</xd:i>
            </xd:b>
         </xd:p>
         <xd:p>
            <xd:i>docinfo:doc-heading</xd:i> becomes
						<xd:b>dc:metadata/dc:title</xd:b>. </xd:p>
         <xd:p>Exceptional scenario for CA Indices: When <xd:i>docinfo:doc-heading</xd:i>
					contains word <xd:b>TITLE: </xd:b> or <xd:b>NAME: </xd:b> or <xd:b>SITE: </xd:b> or <xd:b>SUBJECT: </xd:b>
					or <xd:b>RULE: </xd:b> or <xd:b>STATUTE: </xd:b> then conversion should drop the word <xd:b>TITLE:
					</xd:b> or <xd:b>NAME: </xd:b> or <xd:b>SITE: </xd:b> or <xd:b>SUBJECT: </xd:b> or <xd:b>RULE: </xd:b> or
					<xd:b>STATUTE: </xd:b> from conversion.</xd:p>
         <xd:p>Exceptional scenario for AU Legislative Citator: When <xd:i>docinfo:doc-heading</xd:i>
					contains text <xd:b>Overview Tab for </xd:b> then conversion should drop the this text 
					<xd:b>Overview Tab for </xd:b> from conversion.</xd:p>
         <xd:p>Exceptional scenario for US Lexis Practice Advisor (LPA): 
					In addition to the standard mapping above, perform the following mappings. An example has been added 
					below. With this addition, the target output document will always contain three 
					<xd:b>dc:title</xd:b> elements; the one created above without any attributes, as well as 
					the two below with a <xd:b>@lnmeta:titlepurpose</xd:b> attribute:
					<xd:ul>
               <xd:li>
                  <xd:i>docinfo:doc-heading</xd:i> also maps to become 
							<xd:b>dc:metadata/dc:title[@lnmeta:titlepurpose='resultDisplayList']</xd:b>.</xd:li>
               <xd:li>If <xd:i>docinfo:doc-heading</xd:i> ends with a string enclosed by parentheses 
							(e.g. "Patent License Agreement (Pro-Licensee)"), remove 
							the parentheses and the enclosed text, remove any trailing spaces in the remaining text, and 
							the remaining text becomes the content of a new  
							<xd:b>dc:metadata/dc:title[@lnmeta:titlepurpose='download']</xd:b> element. 
							If <xd:i>docinfo:doc-heading</xd:i> does not end with a string inside parentheses, 
							map <xd:i>docinfo:doc-heading</xd:i>, with all of its text content, to a new 
							<xd:b>dc:metadata/dc:title[@lnmeta:titlepurpose='download']</xd:b> element.</xd:li>
            </xd:ul>
         </xd:p>
         <xd:p>
            <xd:b>Source XML</xd:b>
         </xd:p>
         <xd:pre>

&lt;docinfo:doc-heading&gt;PART�1&amp;#x2014;PRELIMINARY&lt;/docinfo:doc-heading&gt;

		</xd:pre>
         <xd:p>
            <xd:b>Target XML</xd:b>
         </xd:p>
         <xd:pre>

&lt;dc:title&gt;PART�1&amp;#x2014;PRELIMINARY&lt;/dc:title&gt;

		</xd:pre>
         <xd:p>
            <xd:b>Source XML</xd:b>
         </xd:p>
         <xd:pre>

&lt;docinfo:doc-heading&gt;West Energy Ltd. (Re), [2007] A.E.U.B.D. No. 57&lt;/docinfo:doc-heading&gt;

		</xd:pre>
         <xd:p>
            <xd:b>Target XML</xd:b>
         </xd:p>
         <xd:pre>

&lt;dc:title&gt;West Energy Ltd. (Re), [2007] A.E.U.B.D. No. 57&lt;/dc:title&gt;

		</xd:pre>
         <xd:p>
            <xd:b>Source XML - Example for UK Content</xd:b>
         </xd:p>
         <xd:pre>

&lt;docinfo:doc-heading&gt;In re B (Children) (Care Proceedings: Standard of Proof) (CAFCASS intervening) - [2009] AC 11&lt;/docinfo:doc-heading&gt;

		</xd:pre>
         <xd:p>
            <xd:b>Target XML - Example for UK Content</xd:b>
         </xd:p>
         <xd:pre>

&lt;dc:title&gt;In re B (Children) (Care Proceedings: Standard of Proof) (CAFCASS intervening) - [2009] AC 11&lt;/dc:title&gt;

		</xd:pre>
         <xd:p>
            <xd:b>Note: </xd:b>If <xd:i>emph</xd:i> is child of <xd:i>docinfo:doc-heading</xd:i>
				then suppress <xd:i>emph</xd:i> element and retain its content in
					<xd:b>dc:title</xd:b>.</xd:p>
         <xd:p>
            <xd:b>Note: </xd:b>
            <xd:b>For Canada Contents:</xd:b> if <xd:i>nl</xd:i> is child of
					<xd:i>docinfo:doc-heading</xd:i>, then replace it with single space
				character. For furter details please see the following example.</xd:p>
         <xd:p>
            <xd:b>Source XML- From CAN</xd:b>
         </xd:p>
         <xd:pre>

&lt;docinfo:doc-heading&gt;90F32&lt;nl/&gt;Memorandum of Argument of the Applicant&lt;/docinfo:doc-heading&gt;
            
			</xd:pre>
         <xd:p>
            <xd:b>Target XML</xd:b>
         </xd:p>
         <xd:pre>

&lt;dc:title&gt;90F32 Memorandum of Argument of the Applicant&lt;/dc:title&gt;
            
			</xd:pre>
         <xd:p>
            <xd:b>Note: </xd:b>
            <xd:b>Exception Scenario for Canada CA14:</xd:b>
            <xd:p>Trademarks and related marks: When (TM)
					or (R) occur in <xd:i>docinfo:doc-heading</xd:i>, convert to unicode code
					point as follows:</xd:p>
            <xd:p>
               <xd:b>(TM)</xd:b> becomes &amp;#8482;
					<xd:b>(R)</xd:b> becomes &amp;#174;</xd:p>
         </xd:p>
         <xd:p>
            <xd:b>Source XML- From CA14</xd:b>
         </xd:p>
         <xd:pre>
&lt;docinfo:doc-heading&gt;Alan D. Gold's NetLetter(TM), Monday, November 24, 2008 - Issue 615&lt;/docinfo:doc-heading&gt;            
			</xd:pre>
         <xd:p>
            <xd:b>Target XML for CA14</xd:b>
         </xd:p>
         <xd:pre>

&lt;dc:title&gt;Alan D. Gold's NetLetter&amp;#8482;, Monday, November 24, 2008 - Issue 615&lt;/dc:title&gt;
            
			</xd:pre>
         <xd:p>
            <xd:b>Source XML for US LPA Forms</xd:b>
         </xd:p>
         <xd:pre>

&lt;docinfo:doc-heading&gt;Patent License Agreement (Pro-Licensee)&lt;/docinfo:doc-heading&gt;
          					
					 </xd:pre>
         <xd:p>
            <xd:b>Target XML for US LPA Forms</xd:b>
         </xd:p>
         <xd:pre>
   
&lt;dc:metadata&gt;
	&lt;dc:title&gt;Patent License Agreement (Pro-Licensee)&lt;/dc:title&gt;
	&lt;dc:title lnmeta:titlepurpose="resultDisplayList"&gt;Patent License Agreement (Pro-Licensee)&lt;/dc:title&gt;
	&lt;dc:title lnmeta:titlepurpose="download"&gt;Patent License Agreement&lt;/dc:title&gt;
	...
&lt;/dc:metadata&gt;
 
             </xd:pre>
         <!--Changes2017-04-03: US LPA 2016 enhancements: Changes for treatment of 
					parenthesis containing form types for Title Parenthetical feature requirements for Forms 
					Enhancements. Change is to support content in forms (PCTs 275 and 305), but should be implemented 
					for all US LPA conversions. Added additional mapping of docinfo:doc-heading to 
					dc:metadata/dc:title[@lnmeta:titlepurpose='resultDisplayList'] for search results, 
					and to dc:metadata/dc:title[@lnmeta:titlepurpose='download'] for form 
					download. Also added an example.2015-12-04: Added exception for AU Legislative Citator to 
					drop text Overview Tab for  from conversion.2015-09-06: Modified only the special rule for CA14
						trademarks. No longer mapping (MC) to entity, the unicode code point is not
						currently supported. The pcdata (MC) is retained instead. RFA 145. CA14
						only.2015-05-05: Added note to convert (TM), (R), and (MC) to
						unicode code points. DB # 45. Applicable to CA14.2014-02-11: Updated note when emph
						is child of docinfo:doc-heading then suppress
							emph element and retain its content in
							dc:title, These instructions apply immediately to
						CA12.2013-10-18: Updated Instruction when
							docinfo:doc-heading contains word RULE: " or
							STATUTE: .2013-09-03: Updated Instruction when
							docinfo:doc-heading contains word "TITLE: " or
							NAME:  or SITE:  or SUBJECT:.2013-08-01: For Canada Content streams: Added a
						note and examples, when docinfo:doc-heading contains
							nl as a child element.2013-07-30: Added Instruction when
							docinfo:doc-heading contains word "TITLE: " or
							NAME: .2012-12-06: Added note for emph with
						docinfo:doc-heading.2012-10-05: Added example for UK Content.-->
      </xd:desc>
   </xd:doc>
   <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_docinfo.doc-heading-LxAdv-dc.title.dita  -->
   <xsl:template match="docinfo:doc-heading"><!-- these are used as regexes  -->
      <xsl:param name="docHeadingStringsToRemove"
                 as="xs:string*"
                 select="if ($streamID = 'CA11') then ( 'TITLE:' , 'NAME:' , 'SITE:' , 'SUBJECT:' , 'RULE:' , 'STATUTE:' ) else if ($streamID = 'CA15') then ('TITLE/TITRE:' , 'TITRE/TITLE:','CITED/CITÉ:','CITÉ/CITED:','CITE/CITED:','CITED:','TITLE:' , 'TITRE:')  else  'Overview Tab for' "/>
      <xsl:variable name="outputText" as="xs:string*">
         <xsl:apply-templates/>
      </xsl:variable>
      <!--  Original Target XPath:  dc:title   -->
      <dc:title><!--  remove any occurrence of $docHeadingStringsToRemove strings but assume case sensitive; also replace (TM) and (R) with the trademark and copyright characters, respectively, all depending on streamID   -->
         <xsl:choose>
            <xsl:when test=" $streamID = ( 'CA11' , 'AU20', 'CA15' ) ">
               <xsl:sequence select=" lnf:removeSequenceOfStrings( string-join( $outputText , '' ) , $docHeadingStringsToRemove , false() ) "/>
            </xsl:when>
            <xsl:when test=" $streamID = 'CA14' ">
               <xsl:sequence select="replace( replace( string-join( $outputText , '' ) , '\(TM\)' , '™' ) , '\(R\)' , '®' )"/>
            </xsl:when>
            <xsl:when test="$streamID = 'CA06' or $streamID = 'CA12' or $streamID = 'CA10'or $streamID = 'CA09'">
               <xsl:value-of select="."/>
            </xsl:when>
            <xsl:otherwise>
               <xsl:apply-templates select="@* | node()"/>
            </xsl:otherwise>
         </xsl:choose>
      </dc:title>
      <xsl:if test="$streamID='USLPA'">
         <dc:title>
            <xsl:attribute name="lnmeta:titlepurpose">
               <xsl:text>resultDisplayList</xsl:text>
            </xsl:attribute>
            <xsl:apply-templates select="@* | node()"/>
         </dc:title>
         <dc:title>
            <xsl:attribute name="lnmeta:titlepurpose">
               <xsl:text>download</xsl:text>
            </xsl:attribute>
            <xsl:apply-templates select="@* | node()"/>
         </dc:title>
      </xsl:if>
   </xsl:template>

   <xsl:template match="docinfo:doc-heading/emph"><!--  Original Target XPath:  dc:title   --><!--  emph is pass-through when under doc-heading   -->
      <xsl:apply-templates select="@* | node()"/>
   </xsl:template>

   <xsl:template match="docinfo:doc-heading/nl"><!--  Original Target XPath:  dc:title   --><!--  @SBy:  nl becomes a space when under doc-heading; implemented for ***all*** streamIDs, not just Canada Contents...   -->
      <xsl:text> </xsl:text>
   </xsl:template>
   <!--<topicref href="../common/common_rosetta_docinfo.doc-id.dita"/>-->   <!-- <topicref href="../../../common_newest/Rosetta_docinfo.doc-id-LxAdv-dcidentifier_lnmetaidentifier-scheme.dita"/> -->   <xd:doc>
      <xd:desc>
         <xd:p>
            <xd:b>Instructions <xd:i>[common element]</xd:i>
            </xd:b>
         </xd:p>
         <xd:p>Identifies the normalization scheme (e.g. URI, LNI, ISSN, et al.) used for the
					identifier. <xd:i>docinfo:doc-id</xd:i> becomes
						<xd:b>dc:metadata/dc:identifier[@lnmeta:identifier-scheme]</xd:b>.
					Also capture  <xd:i>docinfo:dpsi[@id-string]</xd:i>  and prepend the
					value, followed by hyphen, to create globally unique identifier. </xd:p>
         <xd:p>
            <xd:b>Note: </xd:b>
            <xd:p>If <xd:i>docinfo:dpsi[@id-string]</xd:i> is not present, the dpsi value
					must be captured from one of the following sources:</xd:p>
            <xd:ul>
               <xd:li>The value in
								<xd:i>docinfo/docinfo:lbu-meta/docinfo:metaitem[@name="DPSI"]/@value</xd:i>
               </xd:li>
               <xd:li>The value in
							<xd:i>docinfo/docinfo:custom-metafields/docinfo:custom-metafield[@name="dpsi"]</xd:i>
               </xd:li>
               <xd:li>The LBU manifest file</xd:li>
            </xd:ul>
         </xd:p>
         <xd:p>
            <xd:b>Source XML</xd:b>
         </xd:p>
         <xd:pre>

&lt;docinfo:dpsi id-string="008P"/&gt;
&lt;docinfo:doc-id&gt;VIC_ACT_1998-25_PT1&lt;/docinfo:doc-id&gt;

		</xd:pre>
         <xd:p>
            <xd:b>Target XML</xd:b>
         </xd:p>
         <xd:pre>

&lt;dc:identifier lnmeta:identifier-scheme="DOC-ID"&gt;008P-VIC_ACT_1998-25_PT1&lt;/dc:identifier&gt;

		</xd:pre>
         <xd:p>
            <xd:b>Source XML</xd:b>
         </xd:p>
         <xd:pre>

&lt;docinfo:dpsi id-string="0062"/&gt;
&lt;docinfo:doc-id&gt;CA00000005222733&lt;/docinfo:doc-id&gt;

		</xd:pre>
         <xd:p>
            <xd:b>Target XML</xd:b>
         </xd:p>
         <xd:pre>

&lt;dc:identifier lnmeta:identifier-scheme="DOC-ID"&gt;0062-CA00000005222733&lt;/dc:identifier&gt;

		</xd:pre>
         <xd:p>
            <xd:b>Source XML - Example for UK content</xd:b>
         </xd:p>
         <xd:pre>

&lt;docinfo:doc-id&gt;5B323030395D2D312D41432E3131&lt;/docinfo:doc-id&gt;

		</xd:pre>
         <xd:p>
            <xd:b>Target XML - Example for UK content</xd:b>
         </xd:p>
         <xd:pre>

&lt;dc:identifier lnmeta:identifier-scheme="DOC-ID"&gt;0GNE-5B323030395D2D312D41432E3131&lt;/dc:identifier&gt;

		</xd:pre>
         <xd:p>
            <xd:b>Note: </xd:b>In the above example <xd:b>0GNE</xd:b> is the dpsi value, which will be captured from LBU
				manifest file.</xd:p>
         <xd:p>
            <xd:b>Source XML - Example for CA content with the dpsi value in
						<xd:i>docinfo/docinfo:lbu-meta/docinfo:metaitem[@name="DPSI"]/@value</xd:i>
            </xd:b>
         </xd:p>
         <xd:pre>

&lt;docinfo&gt;
    ...
    &lt;docinfo:doc-id&gt;CA00000000450962&lt;/docinfo:doc-id&gt;
    ...
    &lt;docinfo:lbu-meta&gt;
        &lt;docinfo:metaitem name="SRCNAME" value="ACFH"/&gt;
        &lt;docinfo:metaitem name="SRCDOCNO" value="00018000"/&gt;
        &lt;docinfo:metaitem name="DPSI" value="03MN"/&gt;
    &lt;/docinfo:lbu-meta&gt;
    ...
&lt;/docinfo&gt;

		</xd:pre>
         <xd:p>
            <xd:b>Target XML - Example for CA content</xd:b>
         </xd:p>
         <xd:pre>

&lt;dc:identifier lnmeta:identifier-scheme="DOC-ID"&gt;03MN-CA00000000450962&lt;/dc:identifier&gt;

		</xd:pre>
         <xd:p>
            <xd:b>Source XML - Example for CA content with the dpsi value in
						<xd:i>docinfo/docinfo:custom-metafields/docinfo:custom-metafield[@name="dpsi"]</xd:i>
            </xd:b>
         </xd:p>
         <xd:pre>

&lt;docinfo&gt;
    ...
    &lt;docinfo:doc-id&gt;474&lt;/docinfo:doc-id&gt;
    ...
    &lt;docinfo:custom-metafields&gt;
         &lt;docinfo:custom-metafield name="dpsi"&gt;03EX&lt;/docinfo:custom-metafield&gt;
    &lt;/docinfo:custom-metafields&gt;
    ...
&lt;/docinfo&gt;

		</xd:pre>
         <xd:p>
            <xd:b>Target XML - Example for CA content</xd:b>
         </xd:p>
         <xd:pre>

&lt;dc:identifier lnmeta:identifier-scheme="DOC-ID"&gt;03EX-474&lt;/dc:identifier&gt;

		</xd:pre>
         <!--Changes2014-06-23: Note and Example removed - For CA05 Acts and
						Bills- Mapping in dc:identifier for act-no and chunk-no. Db issue #14642014-05-21:For CA05 Acts and Bills- Mapping in dc:identifier for act-no and chunk-no.. Db issue #1464 2013-03-20: Updated the information on handling the
						situation when docinfo:dpsi[@id-string] is absent with
						instructions to get the dpsi from
							docinfo/docinfo:custom-metafields/docinfo:custom-metafield[@name="dpsi"].2012-10-05: Example added for UK content.2012-12-04: Added a note and updated target example for UK content.2012-12-20: Updated the information on handling the situation when
						docinfo:dpsi[@id-string] is absent with instructions to
					get the dpsi from
						docinfo/docinfo:lbu-meta/docinfo:metaitem[@name="DPSI"]/@value
					if possible. Added an example of CA content with the dpsi in
						docinfo/docinfo:lbu-meta/docinfo:metaitem[@name="DPSI"]/@value.-->
      </xd:desc>
   </xd:doc>
   <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_docinfo.doc-id-LxAdv-dcidentifier_lnmetaidentifier-scheme.dita  -->
   <xsl:template match="docinfo:doc-id"><!--  Original Target XPath:  dc:identifier[@lnmeta:identifier-scheme]   -->
      <dc:identifier lnmeta:identifier-scheme="DOC-ID">
         <xsl:choose>
            <xsl:when test="../docinfo:dpsi/@id-string">
               <xsl:value-of select="../docinfo:dpsi/@id-string"/>
            </xsl:when>
            <xsl:when test="../docinfo:dpsi">
               <xsl:value-of select="../docinfo:dpsi"/>
            </xsl:when>
            <xsl:when test="..//docinfo:custom-metafield[ lower-case(@name) = 'dpsi' ]">
               <xsl:value-of select="..//docinfo:custom-metafield[ lower-case(@name) = 'dpsi' ]"/>
            </xsl:when>
            <!-- Vikas Rohilla : updated for the docinfo:metaitem dpsi				-->
            <xsl:when test="..//docinfo:metaitem[ lower-case(@name) = 'dpsi' ]">
               <xsl:value-of select="..//docinfo:metaitem[ lower-case(@name) = 'dpsi' ]/@value"/>
            </xsl:when>
            <xsl:otherwise>
               <xsl:value-of select="$dpsi"/>
            </xsl:otherwise>
         </xsl:choose>
         <xsl:text>-</xsl:text>
         <xsl:apply-templates/>
      </dc:identifier>
      <xsl:if test="$streamID=('AU16', 'AU17', 'AU19CA', 'NZ02', 'NZ07-DN', 'NZ14')">
         <xsl:choose>
            <xsl:when test="ends-with(., 'CTHLEG_') or ends-with(., '_CTH') or starts-with(., 'CTHLEG_')">
               <dc:coverage>
                  <location:country codescheme="ISO-3166-1" countrycode="AU">AU</location:country>
               </dc:coverage>
            </xsl:when>
            <xsl:when test="ends-with(., 'NSWLEG_') or ends-with(., '_NSW') or starts-with(., 'NSWLEG_')">
               <dc:coverage>
                  <location:state codescheme="ISO-3166-2" statecode="AU-NS">NSW</location:state>
               </dc:coverage>
            </xsl:when>
            <xsl:when test="ends-with(., 'QLDLEG_') or ends-with(., '_QLD') or starts-with(., 'QLDLEG_')">
               <dc:coverage>
                  <location:state codescheme="ISO-3166-2" statecode="AU-QL">QLD</location:state>
               </dc:coverage>
            </xsl:when>
            <xsl:when test="ends-with(., 'SALEG_') or ends-with(., '_SA') or starts-with(., 'SALEG_')">
               <dc:coverage>
                  <location:state codescheme="ISO-3166-2" statecode="AU-SA">SA</location:state>
               </dc:coverage>
            </xsl:when>
            <xsl:when test="ends-with(., 'TASLEG_') or ends-with(., '_TAS') or starts-with(., 'TASLEG_')">
               <dc:coverage>
                  <location:state codescheme="ISO-3166-2" statecode="AU-TS">TAS</location:state>
               </dc:coverage>
            </xsl:when>
            <xsl:when test="ends-with(., 'VICLEG_') or ends-with(., '_VIC') or starts-with(., 'VICLEG_')">
               <dc:coverage>
                  <location:state codescheme="ISO-3166-2" statecode="AU-VI">VIC</location:state>
               </dc:coverage>
            </xsl:when>
            <xsl:when test="ends-with(., 'WALEG_') or ends-with(., '_WA') or starts-with(., 'WALEG_')">
               <dc:coverage>
                  <location:state codescheme="ISO-3166-2" statecode="AU-WA">WA</location:state>
               </dc:coverage>
            </xsl:when>
            <xsl:when test="ends-with(., 'NTLEG_') or ends-with(., '_NT') or starts-with(., 'NTLEG_')">
               <dc:coverage>
                  <location:state codescheme="ISO-3166-2" statecode="AU-NT">NT</location:state>
               </dc:coverage>
            </xsl:when>
            <xsl:when test="ends-with(., 'ACTLEG_') or ends-with(., '_ACT') or starts-with(., 'ACTLEG_')">
               <dc:coverage>
                  <location:state codescheme="ISO-3166-2" statecode="AU-CT">ACT</location:state>
               </dc:coverage>
            </xsl:when>
            <xsl:otherwise/>
         </xsl:choose>
      </xsl:if>
   </xsl:template>
   <!--<topicref href="../common/common_rosetta_docinfo.doc-lang.dita"/>-->   <!-- <topicref href="../../../common_newest/Rosetta_docinfo.doc-lang-LxAdv-ROOT_xmllang.dita"/> -->   <xd:doc>
      <xd:desc>
         <xd:p>
            <xd:b>Instructions <xd:i>[common element]</xd:i>
            </xd:b>
         </xd:p>
         <xd:p>Since <xd:b>dc:language</xd:b> is not used, <xd:i>docinfo:doc-lang[@lang]</xd:i> only becomes part of <xd:b>@xml:lang</xd:b> as described in <xd:a href="Rosetta_docinfo.doc-lang-and-doc-country-LxAdv-ROOT_xml.lang.dita">Target @xml:lang</xd:a> and is otherwise suppressed. </xd:p>
         <!--Changes-->
      </xd:desc>
   </xd:doc>
   <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_docinfo.doc-lang-LxAdv-ROOT_xmllang.dita  -->
   <xsl:template name="xml_lang"><!-- This template creates @xml:lang from doc-lang and doc-country 
                    however there is an NZ special case --><!-- 2017-10-03 - MDS: Added handling for $streamID starts with 'HK' -->
      <xsl:attribute name="xml:lang"
                     select=" concat(  //docinfo:doc-lang/@lang ,                     '-' ,                     if (//docinfo:doc-country/@iso-cc = 'AU' or ($streamID='AU08')) then                      if (//case:headnote/case:info/case:courtinfo//case:juris = 'NZ') then                       'NZ'                      else                       'AU'                     else                       if(starts-with($streamID, 'HK')) then                         if (//docinfo:doc-country/@iso-cc) then //docinfo:doc-country/@iso-cc                        else 'HK'                       else                      //docinfo:doc-country/@iso-cc                    ) "/>
   </xsl:template>
   <!--  un-comment out the following template rule to perform unit testing via XSpec file   -->   <!--xsl:template match="docinfo">
		<test>
			<xsl:call-template name="xml_lang"/>
		</test>
	</xsl:template-->   <!--<topicref href="../common/common_rosetta_docinfo.topiccodes.dita"/>-->   <!-- <topicref href="../../../common_newest/Rosetta_docinfo.topiccodes-to-LxAdv-classify.classification_classscheme_docinfo-topiccodes.dita"/> -->   <xd:doc>
      <xd:desc>
         <xd:p>
            <xd:b>Instructions <xd:i>[common element]</xd:i>
            </xd:b>
         </xd:p>
         <xd:p>
            <xd:i>docinfo:topiccodes/docinfo:topiccode</xd:i> becomes
						<xd:b>classify:classification[@classscheme="docinfo:topiccodes"]/classify:classitem/classify:classitem-identifier/classify:classcode/@normval</xd:b>.
					The content of <xd:i>docinfo:topiccode</xd:i> becomes the value for
						<xd:b>classify:classcode/@normval</xd:b>. A single
						<xd:b>classify:classification[@classscheme="docinfo:topiccodes"]</xd:b>
					is created for each unique value of <xd:b>@classscheme</xd:b>. Within
					this single element, create multiple <xd:b>classify:classitem</xd:b>
					elements. Only create additional <xd:b>classify:classification</xd:b>
					wrapper elements when the
						<xd:b>classify:classification[@classscheme]</xd:b> has different
					values. </xd:p>
         <xd:p>
            <xd:b>Source XML</xd:b>
         </xd:p>
         <xd:pre> &lt;docinfo:topiccodes&gt;
					&lt;docinfo:topiccode&gt;#PA#CODE#&lt;/docinfo:topiccode&gt;
					&lt;docinfo:topiccode&gt;#PA#BUSM#&lt;/docinfo:topiccode&gt;
					&lt;/docinfo:topiccodes&gt; </xd:pre>
         <xd:p>
            <xd:b>Target XML</xd:b>
         </xd:p>
         <xd:pre> &lt;classify:classification classscheme="docinfo:topiccodes"&gt;
					&lt;classify:classitem&gt; &lt;classify:classitem-identifier&gt;
					&lt;classify:classcode normval="#PA#CODE#"/&gt;
					&lt;/classify:classitem-identifier&gt; &lt;/classify:classitem&gt;
					&lt;classify:classitem&gt; &lt;classify:classitem-identifier&gt;
					&lt;classify:classcode normval="#PA#BUSM#"/&gt;
					&lt;/classify:classitem-identifier&gt; &lt;/classify:classitem&gt;
					&lt;/classify:classification&gt; </xd:pre>
         <xd:p>
            <xd:b>Note: </xd:b>
            <xd:b>Applied for UK07 Regulation contents only:</xd:b> When element
						<xd:i>docinfo:topiccode</xd:i> contains attribute
						<xd:i>@scheme="source-by-date"</xd:i>, then conversion will
					suppress it including its contents as well. Please see below input and output
					examples for more details:</xd:p>
         <xd:p>
            <xd:b>Source XML:</xd:b>
         </xd:p>
         <xd:pre> &lt;docinfo:topiccodes&gt; &lt;docinfo:topiccode
					scheme="source-by-date"&gt;2012-08-02&lt;/docinfo:topiccode&gt;
					&lt;docinfo:topiccode&gt;#PA#CODE#&lt;/docinfo:topiccode&gt;
					&lt;/docinfo:topiccodes&gt; </xd:pre>
         <xd:p>
            <xd:b>Target XML(Only second <xd:i>docinfo:topiccode</xd:i>)
					converted</xd:b>
         </xd:p>
         <xd:pre> &lt;classify:classification classscheme="docinfo:topiccodes"&gt;
					&lt;classify:classitem&gt; &lt;classify:classitem-identifier&gt;
					&lt;classify:classcode normval="#PA#CODE#"/&gt;
					&lt;/classify:classitem-identifier&gt; &lt;/classify:classitem&gt;
					&lt;/classify:classification&gt; </xd:pre>
         <!--Changes2014-02-03: Added a special rule for UK07 contents,
						When element docinfo:topiccode contains attribute
							@scheme="source-by-date", then conversion will
						suppress it including its contents as well. Phase 5 UK discussion-defect
						tracking: issue #156. 2012-08-30: Created.-->
      </xd:desc>
   </xd:doc>
   <!--  @@@ This file has been autogenerated (although the DITA file already has embedded XSLT).  Remove this comment after manual development complete!  (also remove the embedded XSLT within the DITA above) @@@  -->
   <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_docinfo.topiccodes-to-LxAdv-classify.classification_classscheme_docinfo-topiccodes.dita  -->
   <!-- CSN: Added docinfo:topiccodes and docinfo:topiccode from base.xsl. -->
   <xsl:template match="docinfo:topiccodes">
      <xsl:element name="classify:classification">
         <xsl:attribute name="classscheme">docinfo:topiccodes</xsl:attribute>
         <xsl:apply-templates/>
      </xsl:element>
   </xsl:template>

   <xsl:template match="docinfo:topiccode">
      <xsl:element name="classify:classitem">
         <xsl:element name="classify:classitem-identifier">
            <xsl:element name="classify:classcode">
               <xsl:attribute name="normval">
                  <xsl:value-of select="."/>
               </xsl:attribute>
            </xsl:element>
         </xsl:element>
      </xsl:element>
   </xsl:template>
   <!--<topicref href="../common/common_rosetta_docinfo.assoc-links.dita"/>-->   <!-- <topicref href="../../../common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita"/> -->   <xd:doc>
      <xd:desc>
         <xd:p>
            <xd:b>Instructions <xd:i>[common element]</xd:i>
            </xd:b>
         </xd:p>
         <xd:p>
            <xd:b>Note: </xd:b>This topic is used in numerous conversion instructions for several LBUs. It is a shared
        topic rather than duplicated to ensure consistency and accuracy. The xml snippets contained
        in this topic reflect markup needed for the Apollo image handling application. The UK is the
        first LBU to move from Apollo to the Blobstore application for image handling. Therefore, if
        this is a UK conversion instruction document, please refer to the following topics for
        correct image handling markup.<xd:ul>
               <xd:li>
                  <xd:i>lnlink[@service="ATTACHMENT"]</xd:i> to
              <xd:b>ref:lnlink[@service="ATTACHMENT"]</xd:b> for BLOBSTORE images
            (id-CCCC-10542)</xd:li>
               <xd:li>
                  <xd:i>inlineobject</xd:i> to <xd:b>ref:inlineobject</xd:b> for
            BLOBSTORE images (id-CCCC-10540)</xd:li>
               <xd:li>
                  <xd:i>link[@filename]</xd:i> to
              <xd:b>ref:lnlink[@service="ATTACHMENT"]</xd:b> for BLOBSTORE images
            (id-CCCC-10541)</xd:li>
            </xd:ul>
         </xd:p>
         <xd:p>
            <xd:i>docinfo:assoc-links</xd:i> becomes
          <xd:b>doc:related-content</xd:b>. Attribute
          <xd:i>@assoc-content</xd:i> is suppressed.</xd:p>
         <xd:p>
            <xd:i>docinfo:assoc-links-grp</xd:i> becomes
          <xd:b>doc:related-content-grp</xd:b>, and its descendents are processed as
        follows: <xd:ul>
               <xd:li>If present, <xd:i>docinfo:assoc-resource</xd:i> becomes
              <xd:b>ref:relatedresourceref/ref:relatedresourceid</xd:b>. Copy the value of
              <xd:i>@assoc-resourceid</xd:i> to
            <xd:b>@ref:resourcekey</xd:b>
               </xd:li>
               <xd:li>The target value of <xd:b>doc:related-content-grp/@grptype</xd:b> depends on
            the existing attrribute in the source: <xd:ul>
                     <xd:li>If <xd:i>docinfo:assoc-links-grp/@assoc-content</xd:i> exists, it
                becomes <xd:b>@grptype</xd:b>.</xd:li>
                     <xd:li>Otherwise, <xd:i>docinfo:assoc-links-grp/@display-name</xd:i> becomes
                  <xd:b>@grptype</xd:b>.</xd:li>
                  </xd:ul>
               </xd:li>
               <xd:li>
                  <xd:i>heading/title</xd:i> becomes
            <xd:b>heading/title</xd:b>.</xd:li>
            </xd:ul>
         </xd:p>
         <xd:p>The children below may occur within either level,
          <xd:i>docinfo:assoc-links</xd:i> or
          <xd:i>docinfo:assoc-links-grp</xd:i>, and convert as follows:</xd:p>
         <xd:p>
            <xd:ul>
               <xd:li>With one exception, <xd:i>text</xd:i> becomes
              <xd:b>doc:related-content-item/doc:related-content-desc/p/text</xd:b>. The
            exception to this rule is if and only if the only children of
              <xd:i>text</xd:i> are one or more <xd:i>link</xd:i> elements; in
            this case see the rule for <xd:i>link</xd:i> below and example #4.</xd:li>
               <xd:li>
                  <xd:p>
                     <xd:i>link</xd:i> becomes
                <xd:b>doc:related-content-item/doc:related-content-link/ref:lnlink[@service="ATTACHMENT"]</xd:b>.</xd:p>
                  <xd:p>In addtion to this conversion being performed if the <xd:i>link</xd:i>
              element is a child of <xd:i>docinfo:assoc-links</xd:i> or
                <xd:i>docinfo:assoc-links-grp</xd:i>, it is also done when the only
              children of <xd:i>text</xd:i> are one or more
              <xd:i>link</xd:i>elements. That is, if and only if <xd:b>all</xd:b> of a
                <xd:i>text/link</xd:i> element's other siblings are also
                <xd:i>link</xd:i> elements. In the <xd:i>text</xd:i> scenario,
              the start-tag and end-tag (but not the content) of <xd:i>text</xd:i> are
              dropped (see example #4). If there are multiple <xd:i>link</xd:i> elements,
              then multiple <xd:b>doc:related-content-item</xd:b> and children are
              created, one for each <xd:i>link</xd:i> element.</xd:p>
                  <xd:p>For details about converting <xd:i>link</xd:i> to
                <xd:b>ref:lnlink[@service="ATTACHMENT"]</xd:b> see
                <xd:i>link</xd:i> rules in the General Markup section.</xd:p>
               </xd:li>
               <xd:li>
                  <xd:i>remotelink[@service="QUERY"]</xd:i> is suppressed. If nothing else is
            present then also suppress the parent. <xd:p>
                     <xd:b>Note: </xd:b>
                     <xd:p>
                        <xd:b>This Note is applicable to CA03, and
                  CA05-CA08 only</xd:b> If we have XPath
                  <xd:i>docinfo:assoc-links-grp/remotelink[@service="QUERY"]</xd:i> or
                  <xd:i>docinfo:assoc-links/remotelink[@service="QUERY"]</xd:i>then we
                don't need to suppress it from target but in certain condition for that
                stream-wise.</xd:p>
                     <xd:ul>
                        <xd:li>
                           <xd:b>For CA06 and CA07</xd:b> If document is having
                    <xd:i>remotelink[@service="QUERY"]</xd:i> under the
                    <xd:i>docinfo:assoc-links-grp[assoc-content="enabling"] </xd:i>and
                    <xd:i>remotelink</xd:i> comes with attributes
                    <xd:i>@remotekey1</xd:i> with the start value <xd:b>"DOCINFO(XXXX)"</xd:b>
                  and <xd:i>@remotekey2</xd:i> comes with value <xd:b>All Canadian
                    Statutes</xd:b> then it should be mapped with
                    <xd:b>doc:related-content/doc:related-content-grp/doc:related-content-item[@content-type="enablingLeg"]/ref:relatedresourceref/ref:relatedresourceid/ref:resourcekey="urn:leg-id-1:XXXX"</xd:b>
                  where <xd:b>XXXX</xd:b> will be taken from source attribute
                    <xd:i>remotekey1</xd:i> Refer Example 7.</xd:li>
                        <xd:li>
                           <xd:b>For CA05 and CA08</xd:b> If document is having
                    <xd:i>remotelink[@service="QUERY"]</xd:i> under the
                    <xd:i>docinfo:assoc-links</xd:i> or
                    <xd:i>docinfo:assoc-links-grp</xd:i> and
                    <xd:i>remotelink</xd:i> comes with attributes
                    <xd:i>@remotekey2="All Canadian Regulations"</xd:i> then it should be
                  mapped with
                    <xd:b>doc:related-content/doc:related-content-grp[@grptype="subordinateLeg"]/doc:related-content-item[@content-type="subordinateLeg"]/ref:relatedresourceref/ref:relatedresourceid/ref:resourcekey="urn:leg-id-1:XXXX"</xd:b>
                  where <xd:b>XXXX</xd:b> will be taken from source attribute
                    <xd:i>remotekey1</xd:i> Refer Example 8.</xd:li>
                        <xd:li>
                           <xd:b>For CA05 - CA08</xd:b> Conversion Needs to split multiple <xd:b>ORs</xd:b> into a
                  separate <xd:b>doc:related-content-item</xd:b>. Refer <xd:b>Example 9</xd:b>
                  for CA06-CA07 streams. </xd:li>
                        <xd:li>
                           <xd:b>For CA06 and CA07</xd:b>
                           <xd:i>docinfo:assoc-links-grp/@assoc-content="enabling"</xd:i> should
                  map with <xd:b>doc:related-content-grp/@grptype="enablingLeg"</xd:b>.
                  Any heading found inside
                    "<xd:i>docinfo:assoc-links-grp/remotelink</xd:i>" then it should be
                  mapped with <xd:b>@doc:related-content-grp/heading/title</xd:b>. Refer
                  Example 9.</xd:li>
                        <xd:li>
                           <xd:b>For CA03</xd:b> If document is having
                    <xd:i>remotelink[@service="QUERY"]</xd:i> and
                    <xd:i>remotelink</xd:i> comes with attributes
                    <xd:i>@remotekey1</xd:i> with the value <xd:b>"REFNUM(XXXX)"</xd:b> and
                    <xd:i>@remotekey2</xd:i> contains <xd:b>"All Canadian Summaries"</xd:b> then
                  it should be mapped with
                    <xd:b>doc:related-content/doc:related-content-grp/doc:related-content-item[@content-type="caseSummaries"]/ref:relatedresourceref/ref:relatedresourceid/ref:resourcekey="urn:ucn-1:XXXX"</xd:b>
                  where <xd:b>XXXX</xd:b> will be taken from source attribute
                    <xd:i>remotekey1</xd:i>. Any bilingual headings should be retained
                  along with their associated <xd:b>@xml:lang</xd:b>. Refer Example 10.
                </xd:li>
                     </xd:ul>
                  </xd:p>
               </xd:li>
               <xd:li>
                  <xd:i>remotelink[@service="DOC-ID"]</xd:i> becomes
              <xd:b>doc:related-content-item/doc:related-content-link/ref:lnlink[@service="DOCUMENT"]</xd:b>.
            If the parent <xd:i>docinfo:assoc-links</xd:i> contains
              <xd:i>@assoc-content="external-content-location"</xd:i>, then add
              <xd:b>@content-type="external-content-location"]</xd:b> to
              <xd:b>doc:related-content-item</xd:b>. Create the following child elements: <xd:ul>
                     <xd:li>Create <xd:b>ref:marker</xd:b> to capture the PCDATA of
                  <xd:i>remotelink</xd:i>.</xd:li>
                     <xd:li>Create <xd:b>ref:locator</xd:b> and populate it as follows: <xd:ul>
                           <xd:li>Create <xd:b>ref:locator-key</xd:b> and populate it as follows: <xd:ul>
                                 <xd:li>If <xd:i>@remotekey1="DOC-ID"</xd:i> then <xd:ul>
                                       <xd:li>
                                          <xd:b>ref:key-name/@name</xd:b> will have the value
                            "DOC-ID".</xd:li>
                                       <xd:li>
                                          <xd:b>key-value/@value</xd:b> will be the value of
                              <xd:i>@dpsi</xd:i> followed by hyphen and concatenated with
                              <xd:i>@refpt</xd:i> or <xd:i>@remotekey2</xd:i>,
                            which ever is present (if both are present, use
                              <xd:i>@remotekey2</xd:i>).</xd:li>
                                    </xd:ul>
                                 </xd:li>
                                 <xd:li>If <xd:i>@remotekey1="REFPTID"</xd:i> then <xd:ul>
                                       <xd:li>
                                          <xd:b>ref:key-name/@name</xd:b> will have the value
                            "DOC-ID".</xd:li>
                                       <xd:li>
                                          <xd:b>ref:key-value/@value</xd:b> will be the value of
                              <xd:i>@dpsi</xd:i> followed by hyphen and concatenated with
                              <xd:i>@docidref</xd:i>.</xd:li>
                                       <xd:li>Create <xd:b>ref:locator/@anchoridref</xd:b> with value from
                              <xd:i>@refpt</xd:i> or <xd:i>@remotekey2</xd:i>,
                            which ever is present (if both are present, use
                            <xd:i>@refpt</xd:i>).</xd:li>
                                    </xd:ul>
                                 </xd:li>
                              </xd:ul>
                           </xd:li>
                        </xd:ul>
                        <xd:p>
                           <xd:b>Note: </xd:b>If <xd:i>remotelink/@dpsi</xd:i> is not present, use value from
                    <xd:i>docinfo:dpsi/@id-string</xd:i> or capture value from the LBU
                  manifest file.</xd:p>
                        <xd:p>
                           <xd:b>Note: </xd:b>
                           <xd:b>ref:locator/@anchoridref</xd:b> that begins with a number must
                  have an underscore added at start. Also apply other identifier data type format as
                  used for <xd:b>xml:id</xd:b> and <xd:b>ref:anchor/@id</xd:b>
                  (e.g. change colon to underscore). Refer to the section titled "Identifiers to ID Data Type - 
                  Handling Pattern Restrictions", if that section exists in this CI.</xd:p>
                     </xd:li>
                  </xd:ul>
               </xd:li>
               <xd:li>
                  <xd:i>remotelink[@href]</xd:i> becomes
              <xd:b>doc:related-content-item/doc:related-content-link/ref:lnlink[@service="URL"]</xd:b>.
            If the parent <xd:i>docinfo:assoc-links</xd:i> contains
              <xd:i>@assoc-content="external-content-location"</xd:i>, then add
              <xd:b>@content-type="external-content-location"]</xd:b> to
              <xd:b>doc:related-content-item</xd:b>. <xd:p>For details on converting
                <xd:i>remotelink[@href]</xd:i> to <xd:b>ref:lnlink</xd:b> see
                <xd:i>remotelink</xd:i> rules in General Markup section.</xd:p>
               </xd:li>
               <xd:li>
                  <xd:p>
                     <xd:i>lnlink[@service="QUERYLINK"]</xd:i> becomes
                <xd:b>doc:related-content-item/doc:related-content-link/ref:lnlink</xd:b>
              which is populated as follows: <xd:ul>
                        <xd:li>
                           <xd:i>lnlink[@service="QUERYLINK"]</xd:i> becomes
                    <xd:b>ref:lnlink[@service="QUERYLINK"]</xd:b>
                        </xd:li>
                        <xd:li>
                           <xd:i>lnlink/marker</xd:i> becomes
                    <xd:b>ref:lnlink/ref:marker</xd:b>
                        </xd:li>
                        <xd:li>Create <xd:b>ref:locator</xd:b> and populate it as follows: <xd:ul>
                              <xd:li>Create <xd:b>ref:locator-key</xd:b> and populate it as follows: <xd:ul>
                                    <xd:li>
                                       <xd:i>lnlink/key-name[@name="queryTemplatePGUID"]</xd:i>
                          becomes
                            <xd:b>ref:locator/ref:locator-key/ref:key-name[@name="queryTemplatePGUID"].</xd:b>
                                    </xd:li>
                                    <xd:li>
                                       <xd:i>lnlink/key-value/@value</xd:i> becomes
                            <xd:b>ref:locator/ref:locator-key/ref:key-value/@value</xd:b>
                                    </xd:li>
                                 </xd:ul>
                              </xd:li>
                              <xd:li>
                                 <xd:i>lnlink/api-params</xd:i> becomes
                        <xd:b>ref:locator/ref:locator-params</xd:b>, and the children are
                      mapped as follows: <xd:ul>
                                    <xd:li>For each <xd:i>api-params/param</xd:i> element, create a
                          corresponding <xd:b>proc:param</xd:b> and populate the
                          attributes: <xd:ul>
                                          <xd:li>
                                             <xd:i>param/@name</xd:i> becomes
                                <xd:b>proc:param/@name</xd:b>
                                          </xd:li>
                                          <xd:li>
                                             <xd:i>param/@value</xd:i> becomes
                                <xd:b>proc:param/@value</xd:b>
                                          </xd:li>
                                       </xd:ul>
                                    </xd:li>
                                 </xd:ul>
                              </xd:li>
                           </xd:ul>
                        </xd:li>
                     </xd:ul>
                  </xd:p>
               </xd:li>
               <xd:li>
                  <xd:p>
                     <xd:i>lnlink[@service="ATTACHMENT"]</xd:i> becomes
                <xd:b>doc:related-content-item/doc:related-content-link/ref:lnlink</xd:b>
              which is populated as follows: See example 6 for more clarification.<xd:ul>
                        <xd:li>
                           <xd:i>lnlink[@service="ATTACHMENT"]</xd:i> becomes
                    <xd:b>ref:lnlink[@service="ATTACHMENT"]</xd:b>
                        </xd:li>
                        <xd:li>
                           <xd:i>lnlink/marker</xd:i> becomes
                    <xd:b>ref:lnlink/ref:marker</xd:b>
                        </xd:li>
                        <xd:li>Create <xd:b>ref:locator</xd:b> and populate it as follows: <xd:ul>
                              <xd:li>Create <xd:b>ref:locator-key</xd:b> and populate it as follows: <xd:ul>
                                    <xd:li>
                                       <xd:i>lnlink/api-params/param/@name="attachment-key"</xd:i>
                          becomes
                            <xd:b>ref:locator/ref:locator-key/ref:key-name/@name="attachment-key"</xd:b>.</xd:li>
                                    <xd:li>
                                       <xd:i>lnlink/api-params/param/@value</xd:i> becomes
                            <xd:b>ref:locator/ref:locator-key/ref:key-value/@value</xd:b>
                                       <xd:p>
                                          <xd:b>Note: </xd:b>Conversion final output will be
                              <xd:b>ref:key-value/@value="{LNI}-{SMI}-{X}"</xd:b> where as
                            {X} is the <xd:i>lnlink/api-params/param/@value</xd:i> as
                            described above and prepend {LNI} and {SMI} are not literal values, they
                            show where the LNI and SMI values obtained from CSSM should be output.
                            See the Example 6</xd:p>
                                    </xd:li>
                                 </xd:ul>
                              </xd:li>
                              <xd:li>
                                 <xd:i>lnlink/api-params</xd:i> becomes
                        <xd:b>ref:locator/ref:locator-params</xd:b>, and the children are
                      mapped as follows: <xd:ul>
                                    <xd:li>For each <xd:i>api-params/param</xd:i> element, create a
                          corresponding <xd:b>proc:param</xd:b> and populate the
                          attributes: <xd:ul>
                                          <xd:li>
                                             <xd:i>param/@name</xd:i> becomes
                                <xd:b>proc:param/@name</xd:b>
                                          </xd:li>
                                          <xd:li>
                                             <xd:i>param/@value</xd:i> becomes
                                <xd:b>proc:param/@value</xd:b>
                                          </xd:li>
                                       </xd:ul>
                                       <xd:p>
                                          <xd:b>Note: </xd:b>Also create the below markup in the target document while
                            conversion</xd:p>
                                       <xd:ul>
                                          <xd:li>
                                             <xd:b>proc:param/@name="attachment-smi"</xd:b> and
                                <xd:b>proc:param/@value="{SMI}"</xd:b>
                                             <xd:p>
                                                <xd:b>Note: </xd:b>@value populated with SMI obtained from CSSM. This @value
                                assignment is done by conversion program</xd:p>
                                          </xd:li>
                                       </xd:ul>
                                    </xd:li>
                                 </xd:ul>
                              </xd:li>
                           </xd:ul>
                        </xd:li>
                     </xd:ul>
                  </xd:p>
               </xd:li>
               <xd:li>
                  <xd:p>
                     <xd:i>lnlink[@service="TRAVERSE"]</xd:i> becomes
                <xd:b>doc:related-content-item/doc:related-content-link/ref:lnlink[@service="TRAVERSE"]</xd:b>.
              If the parent <xd:i>docinfo:assoc-links</xd:i> contains
                <xd:i>@assoc-content="external-content-location"</xd:i>, then add
                <xd:b>@content-type="external-content-location"]</xd:b> to
                <xd:b>doc:related-content-item</xd:b>.</xd:p>
                  <xd:p>For details on converting <xd:i>lnlink[@service="TRAVERSE"]</xd:i> to
                <xd:b>ref:lnlink[@service="TRAVERSE"] </xd:b> see
                <xd:i>lnlink[@service="TRAVERSE"]</xd:i> rules in General Markup
              section.</xd:p>
               </xd:li>
               <xd:li>
                  <xd:p>
                     <xd:i>lnlink[@service="URL"]</xd:i> becomes
                <xd:b>doc:related-content-item/doc:related-content-link/ref:lnlink[@service="URL"]</xd:b>.
              If the parent <xd:i>docinfo:assoc-links</xd:i> contains
                <xd:i>@assoc-content="external-content-location"</xd:i>, then add
                <xd:b>@content-type="external-content-location"]</xd:b> to
                <xd:b>doc:related-content-item</xd:b>.</xd:p>
                  <xd:p>For details on converting <xd:i>lnlink[@service="URL"]</xd:i> to
                <xd:b>ref:lnlink[@service="URL"] </xd:b> see
                <xd:i>lnlink[@service="URL"]</xd:i> rules in General Markup section.</xd:p>
               </xd:li>
               <xd:li>
                  <xd:i>ci:cite</xd:i> becomes
              <xd:b>doc:related-content-item/doc:related-content-link/ref:lnlink[@service="TRAVERSE"]</xd:b>.
            If the parent <xd:i>docinfo:assoc-links</xd:i> contains
              <xd:i>@assoc-content="external-content-location"</xd:i>, then add
              <xd:b>@content-type="external-content-location"]</xd:b> to
              <xd:b>doc:related-content-item</xd:b>. Create the following child elements: <xd:ul>
                     <xd:li> Create <xd:b>ref:marker</xd:b> to capture the PCDATA of
                  <xd:i>ci:cite/ci:content</xd:i>.</xd:li>
                     <xd:li>
                        <xd:b>ref:locator/ref:locator-key/ref:key-name/@name</xd:b> will have
                the value "normcite".</xd:li>
                     <xd:li>
                        <xd:b>ref:locator/ref:locator-key/key-value/@value</xd:b> will be the
                value of <xd:i>ci:cite/ci:content</xd:i>.</xd:li>
                     <xd:li>Create
                  <xd:b>ref:locator/ref:locator-params/proc:param[@name="normprotocol"]</xd:b>.
                If <xd:i>ci:cite/@normprotocol</xd:i> is present, create the attribute
                  <xd:b>proc:param/@value</xd:b> and copy the value of
                  <xd:i>normprotocol</xd:i>; otherwise, add
                  <xd:b>@value="lexsee"</xd:b>. This line is hard coded.</xd:li>
                     <xd:li>If <xd:i>docinfo:doc-country/@iso-cc</xd:i> exists, create
                  <xd:b>ref:locator/ref:locator-params/proc:param[@name="countrycode"]</xd:b>
                with the attribute <xd:b>@value</xd:b>. The <xd:b>@value</xd:b>
                value is from <xd:i>docinfo:doc-country/@iso-cc</xd:i>.</xd:li>
                  </xd:ul>
               </xd:li>
            </xd:ul>
         </xd:p>
         <!-- McNally Apr 3 2014. The following special rule is moved to separate AU-NZ module. Commenting-out for now; can delete when we want -->
         <!--<section>
   <p><b><u>Special Rule for AU and NZ</u></b></p>
   <p>Usual rule is that each rosetta child (<sourcexml>text</sourcexml>,
     <sourcexml>remotelink</sourcexml>, <sourcexml>ci:cite</sourcexml>) maps to its own
     <targetxml>doc:related-content-item</targetxml>, as described above. For AU and NZ streams, a
    special merge is required, as follows: If rosetta linking element
     (<sourcexml>remotelink</sourcexml> or <sourcexml>ci:cite</sourcexml>) is immediately followed
    by <sourcexml>text</sourcexml>, then map the linking element (<sourcexml>remotelink</sourcexml>
    or <sourcexml>ci:cite</sourcexml>) and <sourcexml>text</sourcexml> to a single
     <targetxml>doc:related-content-item</targetxml>. See Example 4.</p>
  </section>-->
         <xd:p>
            <xd:b>Source XML 1</xd:b>
         </xd:p>
         <xd:pre>

&lt;docinfo:assoc-links&gt;
 &lt;remotelink alttext="Find related journals" cmd="f:exp" remotekey1="LEG-REF(Flood and Water Management Act 2010 OR FWMA 2010 w/3 s 48 OR ss 48 OR section 48 OR sections 48) OR &amp;quot;Flood and Water Management Act 2010&amp;quot; OR FWMA 2010 w/3 LEG-REF(s 48 OR ss 48 OR section 48 OR sections 48)" remotekey2="All Subscribed Journals Sources" service="QUERY"&gt;Find related journals&lt;/remotelink&gt;
 &lt;remotelink service="DOC-ID" remotekey1="REFPTID" refpt="786617_SL" dpsi="02o0" docidref="ABC123"&gt;Find related subordinate legislation&lt;/remotelink&gt;
&lt;/docinfo:assoc-links&gt;

            </xd:pre>
         <xd:p>
            <xd:b>Target XML 1</xd:b>
         </xd:p>
         <xd:pre>

&lt;doc:related-content&gt;
 &lt;doc:related-content-item&gt;
  &lt;doc:related-content-link&gt;
   &lt;ref:lnlink service="DOCUMENT"&gt;
    &lt;ref:marker&gt; Find related subordinate legislation &lt;/ref:marker&gt;
    &lt;ref:locator anchoridref="_786617_SL "&gt;
     &lt;ref:locator-key&gt;
      &lt;ref:key-name name="DOC-ID"/&gt;
      &lt;ref:key-value value="02o0-ABC123"/&gt;
     &lt;/ref:locator-key&gt;
    &lt;/ref:locator&gt;    
   &lt;/ref:lnlink&gt;
  &lt;/doc:related-content-link&gt;
 &lt;/doc:related-content-item&gt;
&lt;/doc:related-content&gt;

            </xd:pre>
         <xd:p>
            <xd:b>Source XML 2</xd:b>
         </xd:p>
         <xd:pre>

&lt;docinfo:assoc-links assoc-content="related-content-pod"&gt;
 &lt;docinfo:assoc-links-grp assoc-content="related-documents"&gt;
  &lt;heading&gt;
   &lt;title&gt;Related Documents&lt;/title&gt;
  &lt;/heading&gt;
  &lt;remotelink service="DOC-ID" remotekey1="DOC-ID" remotekey2="0ONJ_151450"  dpsi="0ONJ"&gt;Transferring patent rights&lt;/remotelink&gt;
 &lt;/docinfo:assoc-links-grp&gt;
 &lt;docinfo:assoc-links-grp assoc-content="related-legislation"&gt;
  &lt;heading&gt;
   &lt;title&gt;Related Legislation&lt;/title&gt;
  &lt;/heading&gt;
  &lt;text&gt;Primary statute: 
   &lt;ci:cite searchtype="LEG-REF" status="valid"&gt;
    &lt;ci:sesslaw&gt;
     &lt;ci:sesslawinfo&gt;
      &lt;ci:sesslawnum num="1977_37a_Title"/&gt;
     &lt;/ci:sesslawinfo&gt;
     &lt;ci:sesslawref&gt;
      &lt;ci:standardname normpubcode="UK_ACTS"/&gt;
     &lt;/ci:sesslawref&gt;
    &lt;/ci:sesslaw&gt;
    &lt;ci:content&gt;Patents Act 1977&lt;/ci:content&gt;
   &lt;/ci:cite&gt;
  &lt;/text&gt;
 &lt;/docinfo:assoc-links-grp&gt;
&lt;/docinfo:assoc-links&gt;

            </xd:pre>
         <xd:p>
            <xd:b>Target XML 2</xd:b>
         </xd:p>
         <xd:pre>

&lt;doc:related-content&gt;
 &lt;doc:related-content-grp grptype="related-documents"&gt;
  &lt;heading&gt;
   &lt;title&gt;Related Documents&lt;/title&gt;
  &lt;/heading&gt;
  &lt;doc:related-content-item&gt;
   &lt;doc:related-content-link&gt;
    &lt;ref:lnlink service="DOCUMENT"&gt;
     &lt;ref:marker&gt;Transferring patent rights&lt;/ref:marker&gt;
     &lt;ref:locator&gt;
      &lt;ref:locator-key&gt;
       &lt;ref:key-name name="DOC-ID"/&gt;
       &lt;ref:key-value value="0ONJ-0ONJ_151450"/&gt;
      &lt;/ref:locator-key&gt;
     &lt;/ref:locator&gt;
    &lt;/ref:lnlink&gt;
   &lt;/doc:related-content-link&gt;
  &lt;/doc:related-content-item&gt;
 &lt;/doc:related-content-grp&gt;
 &lt;doc:related-content-grp grptype="related-legislation"&gt;
  &lt;heading&gt;
   &lt;title&gt;Related Legislation&lt;/title&gt;
  &lt;/heading&gt;
  &lt;doc:related-content-item&gt;
   &lt;doc:related-content-desc&gt;
    &lt;p&gt;
     &lt;text&gt;Primary statute: 
      &lt;lnci:cite status="valid"&gt;
       &lt;lnci:sesslaw&gt;
        &lt;lnci:sesslawinfo&gt;
         &lt;lnci:sesslawnum num="1977_37a_Title"/&gt;
        &lt;/lnci:sesslawinfo&gt;
        &lt;lnci:sesslawref&gt;
         &lt;lnci:standardname normpubcode="UK_ACTS"/&gt;
        &lt;/lnci:sesslawref&gt;
       &lt;/lnci:sesslaw&gt;
       &lt;lnci:content&gt;Patents Act 1977&lt;/lnci:content&gt;
      &lt;/lnci:cite&gt;
     &lt;/text&gt;
    &lt;/p&gt;
   &lt;/doc:related-content-desc&gt;
  &lt;/doc:related-content-item&gt;
 &lt;/doc:related-content-grp&gt;
&lt;/doc:related-content&gt;

            </xd:pre>
         <!-- McNally Apr 3 2014. Example 3 expanded to include ci:cite.  Done to illustrate general mapping; avoid confusion with separate module for AU-NZ use case.  -->
         <xd:p>
            <xd:b>Source XML 3</xd:b>
         </xd:p>
         <xd:pre>

&lt;docinfo:assoc-links&gt;
 &lt;remotelink alttext="Latest Times Law Reports" href="www.timesonline.co.uk/TGD/lexisDisplay/0,,,00.html" hrefclass="http"&gt;Latest Times Law Reports&lt;/remotelink&gt;
  &lt;ci:cite searchtype="BOOK-REF"&gt;
   &lt;ci:content&gt;Data technologies and patents (2012) 18 MCN 5&lt;/ci:content&gt;
  &lt;/ci:cite&gt;
&lt;/docinfo:assoc-links&gt;

            </xd:pre>
         <xd:p>
            <xd:b>Target XML 3</xd:b>
         </xd:p>
         <xd:pre>

&lt;doc:related-content&gt;
 &lt;doc:related-content-item&gt;
  &lt;doc:related-content-link&gt;
   &lt;ref:lnlink service="URL"&gt;
    &lt;ref:marker&gt;Latest Times Law Reports&lt;/ref:marker&gt;
    &lt;ref:locator&gt;
     &lt;ref:locator-key&gt;
      &lt;ref:key-name name="URL"/&gt;
      &lt;ref:key-value value="http://www.timesonline.co.uk/TGD/lexisDisplay/0,,,00.html"/&gt;
     &lt;/ref:locator-key&gt;
    &lt;/ref:locator&gt;
   &lt;/ref:lnlink&gt;
  &lt;/doc:related-content-link&gt;
 &lt;/doc:related-content-item&gt;
 &lt;doc:related-content-item&gt;
  &lt;doc:related-content-link&gt;
   &lt;ref:lnlink service="TRAVERSE"&gt;
    &lt;ref:marker role="label"&gt;Data technologies and patents (2012) 18 MCN 5&lt;/ref:marker&gt;
    &lt;ref:locator&gt;
     &lt;ref:locator-key&gt;
      &lt;ref:key-name name="normcite"/&gt;
      &lt;ref:key-value value="Data technologies and patents (2012) 18 MCN 5"/&gt;
     &lt;/ref:locator-key&gt;
     &lt;ref:locator-params&gt;
      &lt;proc:param name="normprotocol" value="lexsee"/&gt;
      &lt;proc:param name="countrycode" value="GB"/&gt;
     &lt;/ref:locator-params&gt;
    &lt;/ref:locator&gt;
   &lt;/ref:lnlink&gt;
  &lt;/doc:related-content-link&gt;
 &lt;/doc:related-content-item&gt;
&lt;/doc:related-content&gt;

            </xd:pre>
         <xd:p>
            <xd:b>Source XML 4, showing a <xd:i>text</xd:i> element containing only a
          <xd:i>link</xd:i> child element</xd:b>
         </xd:p>
         <xd:pre>

&lt;docinfo:assoc-links-grp assoc-content="related-documents"&gt;
  &lt;heading&gt;
    &lt;title&gt;Related documents&lt;/title&gt;
  &lt;/heading&gt;
  &lt;remotelink service="DOC-ID" remotekey1="REFPTID" newwindow="YES" refpt="0OLB_258264"
    dpsi="0OLB" status="invalid" docidref="e60348a7-cc9b-4d43-468b-55a207cd7f00"&gt;Serving the claim form—method, address, deemed service and dispensing with service&lt;/remotelink&gt;
  &lt;text searchtype="figure"&gt;
    &lt;link filename="EXT_DR_List of authorised government departments for service.pdf"
      alttext="EXT_DR_List of authorised government departments for service.pdf" type="pdf"
      &gt;List of authorised government departments for service&lt;/link&gt;
  &lt;/text&gt;
&lt;/docinfo:assoc-links-grp&gt;
&lt;/docinfo:assoc-links&gt;

     </xd:pre>
         <xd:p>
            <xd:b>Target XML 4</xd:b>
         </xd:p>
         <xd:pre>

&lt;doc:related-content&gt;
  &lt;doc:related-content-grp grptype="related-documents"&gt;
    &lt;heading&gt;
      &lt;title&gt;Related documents&lt;/title&gt;
    &lt;/heading&gt;
    &lt;doc:related-content-item&gt;
      &lt;doc:related-content-link&gt;
        &lt;ref:lnlink service="DOCUMENT"&gt;
          &lt;ref:marker&gt;Serving the claim form—method, address, deemed service and
    dispensing with service&lt;/ref:marker&gt;
          &lt;ref:locator anchoridref="0OLB_258264"&gt;
            &lt;ref:locator-key&gt;
              &lt;ref:key-name name="DOC-ID"/&gt;
              &lt;ref:key-value value="0OLB-e60348a7-cc9b-4d43-468b-55a207cd7f00"/&gt;
            &lt;/ref:locator-key&gt;
          &lt;/ref:locator&gt;
        &lt;/ref:lnlink&gt;
      &lt;/doc:related-content-link&gt;
    &lt;/doc:related-content-item&gt;
    &lt;doc:related-content-item&gt;
      &lt;doc:related-content-link&gt;
        &lt;ref:lnlink service="ATTACHMENT"&gt;
          &lt;ref:marker role="label"&gt;List of authorised government departments for service&lt;/ref:marker&gt;
          &lt;ref:locator&gt;
            &lt;ref:locator-key&gt;
              &lt;ref:key-name name="attachment-key"/&gt;
              &lt;ref:key-value value="{LNI}-{SMI}-EXT_DR_List of authorised government departments for service"/&gt;
              &lt;!-- 
                  The {LNI} and {SMI} are not literal values, 
                  they show where the LNI and SMI values 
                  obtained from CSSM should be output. 
              --&gt;
            &lt;/ref:locator-key&gt;
            &lt;ref:locator-params&gt;
              &lt;proc:param name="componentseq" value="1"/&gt;
              &lt;proc:param name="attachment-type" value="PDF"/&gt;
              &lt;proc:param name="attachment-smi" value=""/&gt;
              &lt;!-- proc:param/@value is set to the SMI value obtained from CSSM. --&gt;
              &lt;!-- This @value assignment is done by the conversion program. --&gt;
            &lt;/ref:locator-params&gt;
          &lt;/ref:locator&gt;
        &lt;/ref:lnlink&gt;
      &lt;/doc:related-content-link&gt;
    &lt;/doc:related-content-item&gt;
  &lt;/doc:related-content-grp&gt;
&lt;/doc:related-content&gt;

     </xd:pre>
         <xd:p>
            <xd:b>Source XML 5 - <xd:i>lnlink[@service="QUERYLINK"]</xd:i>
            </xd:b>
         </xd:p>
         <xd:pre>

&lt;docinfo:assoc-links&gt;
&lt;docinfo:assoc-links-grp display-name="VALUE_PROVIDED_BY_CONTENTEDITOR"&gt;
  &lt;heading&gt;
    &lt;title&gt;Query Links&lt;/title&gt;
  &lt;/heading&gt;
 &lt;lnlink service="QUERYLINK"&gt;
    &lt;key-name name="queryTemplatePGUID"/&gt;
    &lt;key-value value="urn:queryTemplate:1119"/&gt;    
    &lt;marker&gt;Other Tax documents&lt;/marker&gt;
    &lt;api-params&gt;
        &lt;param name="queryParameter1" value="CA $#$ US"/&gt; 
        &lt;param name="queryParameter2" value="MA"/&gt; 
        &lt;param name="queryParameter3" value="-60"/&gt; 
    &lt;/api-params&gt;
&lt;/lnlink&gt;
&lt;/docinfo:assoc-links-grp&gt;
&lt;/docinfo:assoc-links&gt;

     </xd:pre>
         <xd:p>
            <xd:b>Target XML 5</xd:b>
         </xd:p>
         <xd:pre>

&lt;doc:related-content&gt;
  &lt;doc:related-content-grp grptype="VALUE_PROVIDED_BY_CONTENTEDITOR"&gt;
    &lt;heading&gt;
      &lt;title&gt;Query Links&lt;/title&gt;
    &lt;/heading&gt;
    &lt;doc:related-content-item&gt;
      &lt;doc:related-content-link&gt;
         &lt;ref:lnlink service="QUERYLINK"&gt;
                &lt;ref:marker&gt;Other Tax documents&lt;/ref:marker&gt;
                &lt;ref:locator&gt;
                  &lt;ref:locator-key&gt;
                    &lt;ref:key-name name="queryTemplatePGUID"/&gt;
                    &lt;ref:key-value value="urn:queryTemplate:1119"/&gt;
                  &lt;/ref:locator-key&gt;
                  &lt;ref:locator-params&gt;
                    &lt;proc:param name="queryParameter1" value="CA $#$ US"/&gt;
                    &lt;proc:param name="queryParameter2" value="MA"/&gt;
                    &lt;proc:param name="queryParameter3" value="-60"/&gt;
                  &lt;/ref:locator-params&gt;
                &lt;/ref:locator&gt;
              &lt;/ref:lnlink&gt;
      &lt;/doc:related-content-link&gt;
    &lt;/doc:related-content-item&gt;
  &lt;/doc:related-content-grp&gt;
&lt;/doc:related-content&gt;

     </xd:pre>
         <xd:p>
            <xd:b>Source XML 6 - <xd:i>lnlink[@service="ATTACHMENT"]</xd:i>
            </xd:b>
         </xd:p>
         <xd:pre>
&lt;docinfo:assoc-links&gt;
    &lt;docinfo:assoc-links-grp assoc-content="related-documents"&gt;
        &lt;heading&gt;
            &lt;title&gt;Related Documents&lt;/title&gt;
        &lt;/heading&gt;
        &lt;lnlink service="ATTACHMENT"&gt;
            &lt;marker&gt;See PDF rendition&lt;/marker&gt;
            &lt;api-params&gt;
                &lt;param name="attachment-key" value="RSCS_14905_CURRENT-0001"/&gt;
                &lt;param name="attachment-type" value="PDF"/&gt;
                &lt;param name="componentseq" value="1"/&gt;
            &lt;/api-params&gt;
        &lt;/lnlink&gt;
    &lt;/docinfo:assoc-links-grp&gt;
&lt;/docinfo:assoc-links&gt;
     </xd:pre>
         <xd:p>
            <xd:b>Target XML 6</xd:b>
         </xd:p>
         <xd:pre>
&lt;doc:related-content-grp grptype="related-documents"&gt;
    &lt;heading&gt;
        &lt;title&gt;Related documents&lt;/title&gt;
    &lt;/heading&gt;
    &lt;doc:related-content-item&gt;
        &lt;doc:related-content-link&gt;
            &lt;ref:lnlink service="ATTACHMENT"&gt;
                &lt;ref:marker role="label"&gt;See PDF rendition&lt;/ref:marker&gt;
                &lt;ref:locator&gt;
                    &lt;ref:locator-key&gt;
                        &lt;ref:key-name name="attachment-key"/&gt;
                        &lt;ref:key-value value="{LNI}-{SMI}-RSCS_14905_CURRENT-0001"/&gt;
                        &lt;!-- 
                  The {LNI} and {SMI} are not literal values, 
                  they show where the LNI and SMI values 
                  obtained from CSSM should be output. 
              --&gt;
                    &lt;/ref:locator-key&gt;
                    &lt;ref:locator-params&gt;
                        &lt;proc:param name="componentseq" value="1"/&gt;
                        &lt;proc:param name="attachment-type" value="PDF"/&gt;
                        &lt;proc:param name="attachment-smi" value="{SMI}"/&gt;
                        &lt;!-- proc:param/@value is set to the SMI value obtained from CSSM. --&gt;
                        &lt;!-- This @value assignment is done by the conversion program. --&gt;
                    &lt;/ref:locator-params&gt;
                &lt;/ref:locator&gt;
            &lt;/ref:lnlink&gt;
        &lt;/doc:related-content-link&gt;
    &lt;/doc:related-content-item&gt;
&lt;/doc:related-content-grp&gt;
     </xd:pre>
         <xd:p>
            <xd:b>Source XML 7 - CA06-CA07
          <xd:i>docinfo:assoc-links-grp/remotelink[@service="QUERY"]</xd:i>
            </xd:b>
         </xd:p>
         <xd:pre>
        
&lt;docinfo:assoc-links&gt;
  &lt;docinfo:assoc-links-grp assoc-content="enabling"&gt;
      &lt;heading&gt;
        &lt;title&gt;Enabling Act&lt;/title&gt;
      &lt;/heading&gt;
      &lt;remotelink remotekey1="DOCINFO(2cb2cdcca9bdd55a897d897ac67f7e39)" remotekey2="All Canadian Statutes" service="QUERY"&gt;Enabling Act&lt;/remotelink&gt;
  &lt;/docinfo:assoc-links-grp&gt;
&lt;/docinfo:assoc-links&gt;

        
      </xd:pre>
         <xd:p>
            <xd:b>Target XML 7 -
          CA06-CA07<xd:i>docinfo:assoc-links-grp/remotelink[@service="QUERY"]</xd:i>
            </xd:b>
         </xd:p>
         <xd:pre>
    
&lt;doc:related-content&gt;
  &lt;doc:related-content-grp grptype="enablingLeg"&gt;
     &lt;heading&gt;
       &lt;title&gt;Enabling Act&lt;/title&gt;
     &lt;/heading&gt;
     &lt;doc:related-content-item content-type="enablingLeg"&gt;
        &lt;ref:relatedresourceref&gt;
            &lt;ref:relatedresourceid ref:resourcekey="urn:leg-id-1:2cb2cdcca9bdd55a897d897ac67f7e39"/&gt;
        &lt;/ref:relatedresourceref&gt;
     &lt;/doc:related-content-item&gt;
  &lt;/doc:related-content-grp&gt;
&lt;/doc:related-content&gt;
    
 </xd:pre>
         <xd:p>
            <xd:b>Source XML 8 - CA05
          <xd:i>docinfo:assoc-links/remotelink[@service="QUERY"]</xd:i>
            </xd:b>
         </xd:p>
         <xd:pre>
&lt;docinfo:assoc-links&gt;
    &lt;remotelink remotekey1="DOCINFO(5eff46c7fc603910e15eb944d97c13c0)"
        remotekey2="All Canadian Regulations" service="QUERY"&gt;Link to regulations enabled by this
        act&lt;/remotelink&gt;
&lt;/docinfo:assoc-links&gt;
      </xd:pre>
         <xd:p>
            <xd:b>Target XML 8 - CA05
          <xd:i>docinfo:assoc-links/remotelink[@service="QUERY"]</xd:i>
            </xd:b>
         </xd:p>
         <xd:pre>
&lt;doc:related-content&gt;
    &lt;doc:related-content-grp grptype="subordinateLeg"&gt;
      &lt;doc:related-content-item content-type="subordinateLeg"&gt;
        &lt;ref:relatedresourceref&gt;
            &lt;ref:relatedresourceid ref:resourcekey="urn:leg-id-1:5eff46c7fc603910e15eb944d97c13c0"/&gt;
        &lt;/ref:relatedresourceref&gt;
    &lt;/doc:related-content-item&gt;
  &lt;/doc:related-content-grp&gt;
&lt;/doc:related-content&gt;
 </xd:pre>
         <xd:p>
            <xd:b>Source XML 9 (CA06-CA07)</xd:b>
         </xd:p>
         <xd:pre>
        
&lt;docinfo:assoc-links&gt;
            &lt;docinfo:assoc-links-grp assoc-content="enabling"&gt;
                &lt;heading/&gt;
                &lt;remotelink
                    remotekey1="DOCINFO(2ccc2826b445aebac6f6b3f8013e7931) 
                    OR DOCINFO(2ccc2826b445aebac6f6b3f8013e7932) 
                    OR DOCINFO(2ccc2826b445aebac6f6b3f8013e7933) 
                    ....
                    OR DOCINFO(2ccc2826b445aebac6f6b3f8013e7939)"
                    remotekey2="All Canadian Statutes" service="QUERY"&gt;Enabling Act&lt;/remotelink&gt;
          &lt;/docinfo:assoc-links-grp&gt;
&lt;/docinfo:assoc-links&gt;
        
      </xd:pre>
         <xd:p>
            <xd:b>Target XML 9 (CA06-CA07)</xd:b>
         </xd:p>
         <xd:pre>
        
&lt;doc:related-content&gt;
  &lt;doc:related-content-grp grptype="enablingLeg"&gt;
         &lt;heading&gt;
		  &lt;title&gt;Enabling Act&lt;/title&gt;
	  &lt;/heading&gt;
     &lt;doc:related-content-item content-type="enablingLeg"&gt;
        &lt;ref:relatedresourceref&gt;
            &lt;ref:relatedresourceid ref:resourcekey="urn:leg-id-1:2ccc2826b445aebac6f6b3f8013e7931"/&gt;
        &lt;/ref:relatedresourceref&gt;
     &lt;/doc:related-content-item&gt;
     &lt;doc:related-content-item content-type="enablingLeg"&gt;
        &lt;ref:relatedresourceref&gt;
            &lt;ref:relatedresourceid ref:resourcekey="urn:leg-id-1:2ccc2826b445aebac6f6b3f8013e7932"/&gt;
        &lt;/ref:relatedresourceref&gt;
     &lt;/doc:related-content-item&gt;
          &lt;doc:related-content-item content-type="enablingLeg"&gt;
        &lt;ref:relatedresourceref&gt;
            &lt;ref:relatedresourceid ref:resourcekey="urn:leg-id-1:2ccc2826b445aebac6f6b3f8013e7933"/&gt;
        &lt;/ref:relatedresourceref&gt;
     &lt;/doc:related-content-item&gt;
     ....
     &lt;doc:related-content-item content-type="enablingLeg"&gt;
        &lt;ref:relatedresourceref&gt;
            &lt;ref:relatedresourceid ref:resourcekey="urn:leg-id-1:2ccc2826b445aebac6f6b3f8013e7939"/&gt;
        &lt;/ref:relatedresourceref&gt;
     &lt;/doc:related-content-item&gt;
  &lt;/doc:related-content-grp&gt;
&lt;/doc:related-content&gt;
        
      </xd:pre>
         <xd:p>
            <xd:b>Source XML 10 (CA03)</xd:b>
         </xd:p>
         <xd:pre>
        
    &lt;docinfo:assoc-links&gt;
      &lt;remotelink service="QUERY" remotekey1="REFNUM(01704997)" remotekey2="All Canadian Summaries (Netletters, Digests, Summaries)" xml:lang="en-CA"&gt;Find case digests&lt;/remotelink&gt;
      &lt;remotelink service="QUERY" remotekey1="REFNUM(01704997)" remotekey2="All Canadian Summaries (Netletters, Digests, Summaries)" xml:lang="fr-CA"&gt;Résumés jurisprudentiels&lt;/remotelink&gt;
    &lt;/docinfo:assoc-links&gt;
        
      </xd:pre>
         <!--CA03 note: doc:related-content-grp/@grptype we set to the same as doc:related-content-item@content-type: enablingLeg | subordinateLeg | caseSummaries | quantums-->
         <xd:p>
            <xd:b>Target XML 10 (CA03)</xd:b>
         </xd:p>
         <xd:pre>
        
&lt;doc:related-content&gt;
  &lt;doc:related-content-grp grptype="caseSummaries"&gt;
	  &lt;heading&gt;
		  &lt;title xml:lang="en-CA"&gt;Find case digests&lt;/title&gt;
		  &lt;title xml:lang="fr-CA"&gt;Résumés jurisprudentiels&lt;/title&gt;
	  &lt;/heading&gt;
     &lt;doc:related-content-item content-type="caseSummaries"&gt;
        &lt;ref:relatedresourceref&gt;
            &lt;ref:relatedresourceid ref:resourcekey="urn:ucn-1:01704997"/&gt;
        &lt;/ref:relatedresourceref&gt;
     &lt;/doc:related-content-item&gt;
  &lt;/doc:related-content-grp&gt;
&lt;/doc:related-content&gt;
        
      </xd:pre>
         <xd:p>
            <xd:b>Source XML 11 (LPA)</xd:b>
         </xd:p>
         <xd:pre>
        
&lt;docinfo:assoc-links&gt;
	&lt;docinfo:assoc-links-grp assoc-content="related-documents" content-type="form"&gt;
		&lt;docinfo:assoc-resource assoc-resourcename="BusLaw" assoc-resourceid="urn:krm:ABCDEABCDEABCDEABCDEABCDE3ABCDE1"/&gt;
		&lt;lnlink service="TRAVERSE"&gt;
			&lt;key-name name="normcite"/&gt;
			&lt;key-value value="LexisNexis Forms Form 219-8.22-7"/&gt;
			&lt;marker role="label"&gt;Notice of Commencement Of Case Under Chapter 11 of the Bankruptcy Code, Meeting of Creditors, and Deadlines--Chapter 11 Corporation/Partnership Case; Official Form 9F &lt;/marker&gt;
		&lt;/lnlink&gt;
		&lt;remotelink dpsi="0N5M" remotekey1="DOC-ID" remotekey2="0N5M_157408" service="DOC-ID"&gt;Exhibit A to Official Form 1&lt;/remotelink&gt;
		&lt;remotelink href="http://www.justice.gov/ust/index.htm" newwindow="YES" service="SEARCH" status="valid"&gt;Official Website of the U.S. Trustee Program&lt;/remotelink&gt;
	&lt;/docinfo:assoc-links-grp&gt;
	&lt;docinfo:assoc-links-grp assoc-content="related-documents" content-type="case"&gt;
		&lt;docinfo:assoc-resource assoc-resourcename="IP" assoc-resourceid="urn:krm:ABCDEABCDEABCDEABCDEABCDE3ABCDE2"/&gt;
		&lt;lnlink service="TRAVERSE"&gt;
			&lt;key-name name="normcite"/&gt;
			&lt;key-value value="2012 U.S. Bankr. Ct. Motions LEXIS 1246"/&gt;
			&lt;marker role="label"&gt;2012 U.S. Bankr. Ct. Motions LEXIS 1246 (Bankr. N.D. Ill.)&lt;/marker&gt;
		&lt;/lnlink&gt;
		&lt;remotelink dpsi="0N5N" remotekey1="DOC-ID" remotekey2="0N5N-0N5N_157355" service="DOC-ID"&gt;Emergency Motion for Joint Administration of Chapter 11 Cases&lt;/remotelink&gt;
		&lt;remotelink href="http://www.uscourts.gov/RulesAndPolicies/FederalRulemaking/LocalCourtRules/USBankruptcyCourts.htm" newwindow="YES" service="SEARCH" status="valid"&gt;Official Website of the Federal Judiciary&lt;/remotelink&gt;
	&lt;/docinfo:assoc-links-grp&gt;
&lt;/docinfo:assoc-links&gt;
        
      </xd:pre>
         <xd:p>
            <xd:b>Target XML 11 (LPA)</xd:b>
         </xd:p>
         <xd:pre>
        
&lt;doc:related-content&gt;
	&lt;doc:related-content-grp grptype="related-documents"&gt;
		&lt;ref:relatedresourceref&gt;
			&lt;ref:relatedresourceid ref:resourcekey="urn:krm:ABCDEABCDEABCDEABCDEABCDE3ABCDE1"/&gt;
		&lt;/ref:relatedresourceref&gt;
		&lt;doc:related-content-item&gt;
			&lt;doc:related-content-link&gt;
				&lt;ref:lnlink service="TRAVERSE"&gt;
					&lt;ref:marker role="label"&gt;Notice of Commencement Of Case Under Chapter 11 of the Bankruptcy Code, Meeting of Creditors, and Deadlines--Chapter 11 Corporation/Partnership Case; Official Form 9F &lt;/ref:marker&gt;
					&lt;ref:locator&gt;
						&lt;ref:locator-key&gt;
							&lt;ref:key-name name="normcite"/&gt;
							&lt;ref:key-value value="LexisNexis Forms Form 219-8.22-7"/&gt;
						&lt;/ref:locator-key&gt;
						&lt;ref:locator-params&gt;
							&lt;proc:param name="normprotocol" value="lexsee"/&gt;
						&lt;/ref:locator-params&gt;
					&lt;/ref:locator&gt;
				&lt;/ref:lnlink&gt;
			&lt;/doc:related-content-link&gt;
		&lt;/doc:related-content-item&gt;
		&lt;doc:related-content-item&gt;
			&lt;doc:related-content-link&gt;
				&lt;ref:lnlink service="DOCUMENT"&gt;
					&lt;ref:marker&gt;Exhibit A to Official Form 1&lt;/ref:marker&gt;
					&lt;ref:locator&gt;
						&lt;ref:locator-key&gt;
							&lt;ref:key-name name="DOC-ID"/&gt;
							&lt;ref:key-value value="0N5M-0N5M_157408"/&gt;
						&lt;/ref:locator-key&gt;
					&lt;/ref:locator&gt;
				&lt;/ref:lnlink&gt;
			&lt;/doc:related-content-link&gt;
		&lt;/doc:related-content-item&gt;
		&lt;doc:related-content-item&gt;
			&lt;doc:related-content-link&gt;
				&lt;ref:lnlink service="URL"&gt;
					&lt;ref:marker&gt;Official Website of the U.S. Trustee Program&lt;/ref:marker&gt;
					&lt;ref:locator&gt;
						&lt;ref:locator-key&gt;
							&lt;ref:key-name name="URL"/&gt;
							&lt;ref:key-value value="http://www.justice.gov/ust/index.htm"/&gt;
						&lt;/ref:locator-key&gt;
					&lt;/ref:locator&gt;
				&lt;/ref:lnlink&gt;
			&lt;/doc:related-content-link&gt;
		&lt;/doc:related-content-item&gt;
	&lt;/doc:related-content-grp&gt;
	&lt;doc:related-content-grp grptype="related-documents"&gt;
		&lt;ref:relatedresourceref&gt;
			&lt;ref:relatedresourceid ref:resourcekey="urn:krm:ABCDEABCDEABCDEABCDEABCDE3ABCDE2"/&gt;
		&lt;/ref:relatedresourceref&gt;
		&lt;doc:related-content-item&gt;
			&lt;doc:related-content-link&gt;
				&lt;ref:lnlink service="TRAVERSE"&gt;
					&lt;ref:marker role="label"&gt;2012 U.S. Bankr. Ct. Motions LEXIS 1246 (Bankr. N.D. Ill.)&lt;/ref:marker&gt;
					&lt;ref:locator&gt;
						&lt;ref:locator-key&gt;
							&lt;ref:key-name name="normcite"/&gt;
							&lt;ref:key-value value="2012 U.S. Bankr. Ct. Motions LEXIS 1246"/&gt;
						&lt;/ref:locator-key&gt;
						&lt;ref:locator-params&gt;
							&lt;proc:param name="normprotocol" value="lexsee"/&gt;
						&lt;/ref:locator-params&gt;
					&lt;/ref:locator&gt;
				&lt;/ref:lnlink&gt;
			&lt;/doc:related-content-link&gt;
		&lt;/doc:related-content-item&gt;
		&lt;doc:related-content-item&gt;
			&lt;doc:related-content-link&gt;
				&lt;ref:lnlink service="DOCUMENT"&gt;
					&lt;ref:marker&gt;Emergency Motion for Joint Administration of Chapter 11 Cases&lt;/ref:marker&gt;
					&lt;ref:locator&gt;
						&lt;ref:locator-key&gt;
							&lt;ref:key-name name="DOC-ID"/&gt;
							&lt;ref:key-value value="0N5N-0N5N_157355"/&gt;
						&lt;/ref:locator-key&gt;
					&lt;/ref:locator&gt;
				&lt;/ref:lnlink&gt;
			&lt;/doc:related-content-link&gt;
		&lt;/doc:related-content-item&gt;
		&lt;doc:related-content-item&gt;
			&lt;doc:related-content-link&gt;
				&lt;ref:lnlink service="URL"&gt;
					&lt;ref:marker&gt;Official Website of the Federal Judiciary&lt;/ref:marker&gt;
					&lt;ref:locator&gt;
						&lt;ref:locator-key&gt;
							&lt;ref:key-name name="URL"/&gt;
							&lt;ref:key-value value="http://www.uscourts.gov/RulesAndPolicies/FederalRulemaking/LocalCourtRules/USBankruptcyCourts.htm"/&gt;
						&lt;/ref:locator-key&gt;
					&lt;/ref:locator&gt;
				&lt;/ref:lnlink&gt;
			&lt;/doc:related-content-link&gt;
		&lt;/doc:related-content-item&gt;
	&lt;/doc:related-content-grp&gt;
&lt;/doc:related-content&gt;
        
      </xd:pre>
         <!-- McNally Apr 3 2014. Removing Example 4 to avoid confusion with separate module for AU-NZ use case. -->
         <!--        <example>
            <title>Source XML 4</title>
            <codeblock>
            <![CDATA[
                <docinfo:assoc-links>
                    <docinfo:assoc-links-grp>
                        <heading>
                            <title>Related Content</title>
                        </heading>
                        <remotelink dpsi="0084" remotekey1="REFPTID" service="DOC-ID" refpt="PCL.C19">Chapter 19
                            Debt Finance</remotelink>
                            <text>Ford's Principles of Corporations Law</text>
                        <remotelink dpsi="0KKU" remotekey1="REFPTID" service="DOC-ID" refpt="0KKU_72492">Overall
                            results and consequences of the PPSA</remotelink>
                        <text>LexisNexis Practical Guidance, Family module</text>
                        <remotelink href="www.familycourt.gov.au" hrefclass="http" newwindow="YES">Family Court of
                            Australia</remotelink>
                    </docinfo:assoc-links-grp>
                </docinfo:assoc-links>
             ]]>
	   </codeblock>
        </example>

        <example>
            <title>Target XML 4</title>
            <codeblock>
<![CDATA[
 <doc:related-content>
                 <doc:related-content-grp grptype="related-content">
                     <heading><title>Related Content</title></heading>
                     <doc:related-content-item>
                     <doc:related-content-link>
                         <ref:lnlink service="DOCUMENT">
                             <ref:marker>Chapter 19 Debt Finance</ref:marker>
                             <ref:locator>
                                 <ref:locator-key>
                                     <ref:key-name name="DOC-ID"/>
                                     <ref:key-value value="0084-PCL.C19"/>
                                 </ref:locator-key>
                             </ref:locator>
                         </ref:lnlink>
                     </doc:related-content-link>
                     </doc:related-content-item>
                     <doc:related-content-item>
                         <doc:related-content-desc>
                             <p><text>Ford's Principles of Corporations Law</text></p>
                         </doc:related-content-desc>
                     </doc:related-content-item>
                     <doc:related-content-item>
                         <doc:related-content-link>
                             <ref:lnlink service="DOCUMENT">
                                 <ref:marker>Overall
                                 results and consequences of the PPSA</ref:marker>
                                 <ref:locator>
                                     <ref:locator-key>
                                         <ref:key-name name="DOC-ID"/>
                                         <ref:key-value value="0KKU-0KKU_72492"/>
                                     </ref:locator-key>
                                 </ref:locator>
                             </ref:lnlink>
                         </doc:related-content-link>
                     </doc:related-content-item>
                     <doc:related-content-item>
                         <doc:related-content-desc>
                             <p><text>LexisNexis Practical Guidance, Family module</text></p>
                         </doc:related-content-desc>
                     </doc:related-content-item>
                     <doc:related-content-item>
                         <doc:related-content-link>
                             <ref:lnlink service="URL">
                                 <ref:marker>Family Court of Australia</ref:marker>
                                 <ref:locator>
                                     <ref:locator-key>
                                       <ref:key-name name="URL"/>
                                       <ref:key-value value="http://www.familycourt.gov.au"/>
                                     </ref:locator-key>
                                 </ref:locator>
                             </ref:lnlink>
                         </doc:related-content-link>
                     </doc:related-content-item>
                </doc:related-content-grp>
                ]]>
	   </codeblock>
	   </example>-->
         <!-- McNally Apr 3 2014. Removing Example 5 to avoid confusion with separate module for AU-NZ use case. -->
         <!--  <example>
   <title>Source XML 5 :
    <sourcexml>docinfo:assoc-links/docinfo:assoc-links-grp/ci:cite</sourcexml></title>
   <codeblock>
<![CDATA[
<docinfo:assoc-links>
 <docinfo:assoc-links-grp>  
  <heading><title>Related Content</title></heading>
  <remotelink dpsi="008D" remotekey1="DOC-ID" service="DOC-ID" refpt="PIL.OV">Overview of Insurance</remotelink>
  <text>Kelly &amp; Ball Principles of Insurance Law</text>
  <remotelink dpsi="0384" remotekey1="DOC-ID" service="DOC-ID" refpt="PFI.ICA.ICA">Insurance Contracts Act 1984</remotelink>
  <text>Australian Insurance Law Annotated</text>
  <ci:cite searchtype="BOOK-REF">
   <ci:content>The central role of insurance in modern society and in the development of the law (2013) 24 ILJ 1</ci:content>
  </ci:cite>
  <text>Insurance Law Journal</text>
 </docinfo:assoc-links-grp>
</docinfo:assoc-links>]]>
            </codeblock>
  </example>
  <example>
   <title>Target XML 5 :
    <sourcexml>docinfo:assoc-links/docinfo:assoc-links-grp/ci:cite</sourcexml></title>
   <codeblock>
<![CDATA[
<doc:related-content>
 <doc:related-content-grp> 
  <heading><title>Related Content</title></heading>
  <doc:related-content-item>
    <doc:related-content-link>
     <ref:lnlink service="DOCUMENT">
      <ref:marker>Overview of Insurance</ref:marker>
      <ref:locator>
       <ref:locator-key>
        <ref:key-name name="DOC-ID"/>
        <ref:key-value value="008D-PIL.OV"/>
       </ref:locator-key>
      </ref:locator>
     </ref:lnlink>
    </doc:related-content-link>
    <doc:related-content-desc>
     <p><text>Kelly &amp; Ball Principles of Insurance Law</text></p>
    </doc:related-content-desc>
  </doc:related-content-item>
  <doc:related-content-item>
    <doc:related-content-link>
     <ref:lnlink service="DOCUMENT">
      <ref:marker>Insurance Contracts Act 1984</ref:marker>
      <ref:locator>
       <ref:locator-key>
        <ref:key-name name="DOC-ID"/>
        <ref:key-value value="0384-PFI.ICA.ICA"/>
       </ref:locator-key>
      </ref:locator>
     </ref:lnlink>
    </doc:related-content-link>
    <doc:related-content-desc>
     <p><text>Australian Insurance Law Annotated</text></p>
    </doc:related-content-desc>
  </doc:related-content-item>
  <doc:related-content-item>
    <doc:related-content-link>
     <ref:lnlink service="TRAVERSE">
      <ref:marker role="label">The central role of insurance in modern society and in the development of the law (2013) 24 ILJ 1</ref:marker>
      <ref:locator>
       <ref:locator-key>
        <ref:key-name name="normcite"/>
        <ref:key-value value="The central role of insurance in modern society and in the development of the law (2013) 24 ILJ 1"/>
       </ref:locator-key>
       <ref:locator-params>
        <proc:param name="normprotocol" value="lexsee"/>
        <proc:param name="countrycode" value="AU"/>
       </ref:locator-params>
      </ref:locator>
     </ref:lnlink>
    </doc:related-content-link>
    <doc:related-content-desc>
     <p><text>Insurance Law Journal</text></p>
    </doc:related-content-desc>
  </doc:related-content-item>
 </doc:related-content-grp>
</doc:related-content>]]>                
            </codeblock>
  </example>-->
         <!--Changes2016-11-16: Added to note regarding applying any rules related to 
        @anchoridref, referring specifically to section for "Identifiers to ID Data Type - 
        Handling Pattern Restrictions".2016-07-29: Added Note about xml snippets that illustrate image
          handling. Note summarizes move from Apollo to Blobstore application. UK is first LBU to
          move to Blobstore.2015-09-11: Added instruction for handling of
            lnlink[@service="URL"] inside
            docinfo:assoc-links or
            docinfo:assoc-links-grp.2015-09-11: Correction to target XPATHs for
            lnlink[@service="QUERYLINK"],
            lnlink[@service="ATTACHMENT"], and
            lnlink[@service="TRAVERSE"] to add
            doc:related-content-item/doc:related-content-link before the
          existing ref:lnlink element in the XPATH.2015-09-03: Added instruction for handling of
            lnlink[@service="TRAVERSE"] inside
            docinfo:assoc-links or
            docinfo:assoc-links-grp.2015-09-03: Added
            doc:related-content-item/@content-type="external-content-location"
          when the parent
            docinfo:assoc-links[@assoc-content="external-content-location"]
          exists, for children: remotelink[@service="DOC-ID"],
            remotelink[@href],
            lnlink[@service="TRAVERSE"] and
          ci:cite.2015-09-03: Minor correction to bullet heading text for
          children of docinfo:assoc-links or
            docinfo:assoc-links-grp to change from
            lnlink/@service="QUERYLINK" to be
            lnlink[@service="QUERYLINK"] and
            lnlink/@service="ATTACHMENT" to be
            lnlink[@service="ATTACHMENT"].2015-07-16: Updated conversion for handling of
            ci:cite/@normprotocol,
            proc:param[@name="countrycode"]; added instructions for
            docinfo:assoc-resource.2015-05-22: Clarification. Not a new rule or target. Within
          rules handling remotelink[@service="DOC-ID"], added statement to
          create containing elements ref:locator/ref:locator-key which hold
            ref:key-name and ref:key-value. The xpath
          is controlled by schema and so conversions have been correct. CI examples were correct.
          The narrative rule is now explicit. R4.5 Content Issue 2326.2015-01-19: For CA05 - CA08- Updated Instruction and
          included "related-content-grp" markup inside the target Example
            8 for conversion of QUERY link to doc:related-content.2015-01-15: For CA03- Convert the QUERY link to
          doc:related-content. Refer Example 10. R4.5 RFA #2099.2015-01-13: For CA05 - CA08 Conversion Needs to split
          multiple ORs into a separate doc:related-content-item. Refer
          Example 92015-01-02: Added
            docinfo:assoc-links/remotelink[@service="QUERY"] and
            docinfo:assoc-links-grp/remotelink[@service="QUERY"] to generate
            doc:related-content markup. Applicable on CA05.2014-12-19: Updated target mapping for CA05 for handling
            docinfo:assoc-links/remotelink[@service="QUERY"]. Applicable on
          CA05.2014-12-17: Added a Note for CA05, CA06, CA07 and CA08
          for handling docinfo:assoc-links-grp/remotelink[@service="QUERY"]
           R4.5 issue #2088 and #2068.2014-09-16: Added a note to create
            proc:param/@name="attachment-smi" and
            proc:param/@value as these was there in the snippet but was
          missing in instruction and also added a note in to simplify in output
            ref:key-value/@value2014-08-21: Added instructions and an example for converting
            lnlink[@service="ATTACHMENT"] to
            ref:lnlink. Applicable on CA05-CA08.2014-06-18: Corrected minor typos in
            lnlink[@service="QUERYLINK"] instructions.2014-06-13: Added instructions and an example for converting
            lnlink[@service="QUERYLINK"] to
          ref:lnlink.2014-04-28: Clarified instructions regarding
            link elements and added an example (#4) illustrating the special
            text/link conversion. No mapping rules where changed or
          added.2014-04-21: Added an instruction to handle
            link elements. These can potentially occur in any future UK data
          and will be present in stream UK21fl when those documents become available later in
          2014.2014-04-03: Illustrative changes. Examples modified. Mapping
          for ci:cite added to Example 3. Former Examples 4 and 5 removed to
          avoid confusion with special AU-NZ use case described in a separate module. R4.5 Content
          issue #1125, for AU-NZ, has prompted the changes for this general module.2014-03-25: Added rule and example for
            docinfo:assoc-links/docinfo:assoc-links-grp/ci:cite. R4.5 Content
          issue #11252013-07-19: Added rule mapping attribute
            remotelink[@service="DOC-ID"] to
            ref:lnlink[@service="DOCUMENT"].2013-04-12: This module was changed from UK specific to
          applicable to all LBUs2013-04-10: An example for related content Source and Target
          XML 42013-03-28:  Added rules for
            docinfo:assoc-links-grp and for child
          text.2013-01-22:  Added mapping instruction for
            docinfo:assoc-links/remotelink @href.2012-12-05:  Example added for Canada content stream.2012-10-15:  Made some Kraken related changes.2012-10-08: Created.-->
      </xd:desc>
   </xd:doc>
   <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita  -->
   <!-- begin debug code -->
   <!--<xsl:param name="streamID" select="'CA07'"/>
  
  <xsl:include href="../../modules/nonamespace/Rosetta_identifier-LxAdv-ID_data_type-HandlingPatternRestrictions.xsl"/> 
  
  <xsl:template match="heading">
    <xsl:copy-of select="."/>
  </xsl:template>-->
   <!-- end debug code -->
   <!-- Awantika:use of variable for AU20 -->
   <xsl:template match="docinfo:assoc-links">
      <xsl:if test="child::*[not(self::remotelink[@service='QUERY'])] or $streamID=('CA03', 'CA05', 'CA06', 'CA07', 'CA08')">
         <doc:related-content>
            <xsl:apply-templates select="@* | node()"/>
         </doc:related-content>
      </xsl:if>
   </xsl:template>

   <xsl:template match="docinfo:assoc-links/@assoc-content"/>
   <!-- JL: to match DT, suppressing docinfo:assoc-links/@display-name -->
   <xsl:template match="docinfo:assoc-links/@display-name"/>

   <xsl:template match="docinfo:assoc-links-grp">
      <doc:related-content-grp>
         <xsl:apply-templates select="@* | node()"/>
         <!-- Awantika-2017-10-13: creating empty doc:related-content-item which is required child element for docinfo:assoc-links-grp
      Input data is coming with empty text the module created for docinfo:assoc-links-grp/text is not recognising the empty text and therefore 
      making the file invalid-->
         <!-- 2017-10-24 - MDS: Added 'UK11DA' streamID to test. -->
         <xsl:if test="$streamID=('UK11DN' , 'UK11DA') and child::text[not(preceding-sibling::* except heading and following-sibling::*)]=''">
            <doc:related-content-item/>
         </xsl:if>
         <xsl:if test="$streamID=('CA05' , 'CA06') and child::remotelink[@service='QUERY'][not(following-sibling::*) and preceding-sibling::heading='']">
            <doc:related-content-item/>
         </xsl:if>
      </doc:related-content-grp>
   </xsl:template>

   <xsl:template match="docinfo:assoc-links-grp/@assoc-content">
      <xsl:attribute name="grptype">
         <xsl:choose>
            <xsl:when test="(starts-with($streamID,'CA06') or starts-with($streamID ,'CA07')) and .='enabling'            and parent::docinfo:assoc-links-grp/remotelink[@service='QUERY'][starts-with(@remotekey1 , 'DOCINFO(')][@remotekey2[.='All Canadian Statutes']]">
               <xsl:text>enablingLeg</xsl:text>
            </xsl:when>
            <xsl:when test="(starts-with($streamID , 'CA05') or starts-with($streamID , 'CA08')) and parent::docinfo:assoc-links-grp/remotelink[@service='QUERY'][starts-with(@remotekey1 , 'DOCINFO(')][@remotekey2[.='All Canadian Regulations']]">
               <xsl:text>subordinateLeg</xsl:text>
            </xsl:when>
            <xsl:when test="starts-with($streamID , 'CA03') and parent::docinfo:assoc-links-grp/remotelink[@service='QUERY'][starts-with(@remotekey1 , 'REFNUM(')][@remotekey2='All Canadian Summaries']">
               <xsl:text>caseSummaries</xsl:text>
            </xsl:when>
            <xsl:otherwise>
               <xsl:value-of select="."/>
            </xsl:otherwise>
         </xsl:choose>
      </xsl:attribute>
   </xsl:template>

   <xsl:template match="docinfo:assoc-links-grp/@display-name">
      <xsl:if test="not(parent::docinfo:assoc-links-grp[@assoc-content])">
         <xsl:attribute name="grptype">
            <xsl:value-of select="."/>
         </xsl:attribute>
      </xsl:if>
   </xsl:template>

   <xsl:template match="docinfo:assoc-links-grp/@content-type"/>

   <xsl:template match="docinfo:assoc-resource"><!--  Original Target XPath:  ref:relatedresourceref/ref:relatedresourceid   -->
      <ref:relatedresourceref>
         <ref:relatedresourceid>
            <xsl:apply-templates select="@* | node()"/>
         </ref:relatedresourceid>
      </ref:relatedresourceref>
   </xsl:template>

   <xsl:template match="docinfo:assoc-resource/@assoc-resourceid">
      <xsl:attribute name="ref:resourcekey">
         <xsl:value-of select="."/>
      </xsl:attribute>
   </xsl:template>

   <xsl:template match="docinfo:assoc-resource/@assoc-resourcename"/>
   <!-- <xsl:template match="docinfo:assoc-links/text | docinfo:assoc-links-grp/text">
    <xsl:choose>
      <xsl:when test="child::link and not(child::*[not(self::link)]) and not(text())">
        <xsl:apply-templates select="link"/>
      </xsl:when>
        <xsl:otherwise>
          <doc:related-content-item>
            <doc:related-content-desc>
              <p xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
                <text xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
                  <xsl:apply-templates select="@* | node()"/>
                </text>
              </p>
            </doc:related-content-desc>
          </doc:related-content-item>
        </xsl:otherwise>     
    </xsl:choose>    
  </xsl:template>-->   <!-- 12/12/17 backed out 'priority="5" -->   <!-- BRT 12/7/17 W*7065778 added priority='5' docinfo:assoc-links-grp/text was getting triggered somewhere else (couldn't find the template)-->
   <xsl:template match="docinfo:assoc-links/text | docinfo:assoc-links-grp/text"><!-- BRT 12/12/17 backed out code to normalize the text --><!-- BRT 11/27/17 added processing to normlize the space in text nodes to avoid false positives --><!-- xsl:variable name="text">
      <xsl:for-each select="text()">
        <xsl:value-of select="normalize-space(.)"/>
      </xsl:for-each>
    </xsl:variable-->
      <xsl:choose><!-- BRT 12/12/17 backed out change: 'and not(text())' to  and $text =''" --><!-- BRT change 'and not(text())' to  and $text =''" -->
         <xsl:when test="child::link and not(child::*[not(self::link)]) and not(text())">
            <xsl:apply-templates select="link"/>
         </xsl:when>
         <!-- Awantika: remotelink[@service="DOC-ID"] becomes doc:related-content-item/doc:related-content-link/
ref:lnlink[@service="DOCUMENT"]. Added this for UK11DN -->
         <xsl:when test="(./remotelink or ./url/remotelink)and $streamID=('UK11DN','UK11DA')">
            <xsl:apply-templates select="@* | node()"/>
         </xsl:when>
         <!-- Priya Kaushal: Added below code for UK 15 -->
         <xsl:when test="(./remotelink or ./url/remotelink) and $streamID=('UK15')">
            <doc:related-content-item>
               <doc:related-content-desc>
                  <p>
                     <text>
                        <xsl:apply-templates select="remotelink | url/remotelink"/>
                     </text>
                  </p>
               </doc:related-content-desc>
            </doc:related-content-item>
         </xsl:when>
         <!-- Awantika: when condition for UK11DN -->
         <xsl:when test="$streamID='UK11DN' and child::link">
            <xsl:apply-templates select="node() except emph"/>
         </xsl:when>
         <xsl:otherwise>
            <doc:related-content-item>
               <doc:related-content-desc>
                  <p>
                     <text>
                        <xsl:apply-templates select="@* | node()"/>
                     </text>
                  </p>
               </doc:related-content-desc>
            </doc:related-content-item>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>

   <xsl:template match="link[parent::docinfo:assoc-links or parent::docinfo:assoc-links-grp or parent::text[parent::docinfo:assoc-links or parent::docinfo:assoc-links-grp]]">
      <doc:related-content-item>
         <doc:related-content-link>
            <ref:lnlink service="ATTACHMENT">
               <ref:marker>
                  <xsl:apply-templates/>
               </ref:marker>
               <ref:locator>
                  <ref:locator-key>
                     <ref:key-name name="attachment-key"/>
                     <ref:key-value>
                        <xsl:attribute name="value">
                           <xsl:choose>
                              <xsl:when test="@smi">
                                 <xsl:value-of select="substring-before(@filename, '.')"/>
                              </xsl:when>
                              <!-- BRT 2018-01-11 modified otherwise  to keep file extension. For UK15 determined the file extension is required for blobstore images; Rocel says it is required for other type images as well-->
                              <xsl:otherwise>
                                 <xsl:value-of select="@filename"/>
                              </xsl:otherwise>
                           </xsl:choose>
                        </xsl:attribute>
                     </ref:key-value>
                  </ref:locator-key>
                  <ref:locator-params><!-- 2017-10-04 - MDS: Added choose statement to test for stream ID to match modified monolithic in HK06 
            JL: 2017-10-06 added same for HK01--><!-- BRT 2018-01-02 added UK15 to choose statement. Note this template is almost exactly the same as in Rosetta_link-LxAdv-ref.lnlink_BLOBSTORE.xsl, which is commented out in UK15ds and is used by UK11dn. I don't know why both are present  -->
                     <xsl:choose>
                        <xsl:when test="$streamID=('HK06' , 'HK01', 'UK15')">
                           <proc:param name="attachment-type" value="IMG"/>
                           <proc:param name="external-or-local" value="external"/>
                           <proc:param name="attachment-server" value="BlobStore"/>
                           <proc:param name="attachment-pguid"
                                       value="urn:contentItem:0000-0000-0000-0000-00000-00"/>
                           <proc:param name="componentseq" value="1"/>
                        </xsl:when>
                        <xsl:otherwise>
                           <proc:param name="componentseq" value="1"/>
                           <proc:param>
                              <xsl:attribute name="name">attachment-type</xsl:attribute>
                              <xsl:attribute name="value">
                                 <xsl:apply-templates select="@type"/>
                              </xsl:attribute>
                           </proc:param>
                           <proc:param>
                              <xsl:attribute name="name">attachment-smi</xsl:attribute>
                              <xsl:attribute name="value">
                                 <xsl:value-of select="@smi"/>
                              </xsl:attribute>
                           </proc:param>
                        </xsl:otherwise>
                     </xsl:choose>
                  </ref:locator-params>
               </ref:locator>
            </ref:lnlink>
         </doc:related-content-link>
      </doc:related-content-item>
   </xsl:template>
   <!-- MDS 2017-04-07 - Declared in Rosetta_link-LxAdv-ref.lnlink.xsl -->   <!--<xsl:template match="link/@type">
    <xsl:choose>
      <xsl:when test=".=('para','page', 'ed-pnum','refpt','logo')">
        <xsl:message>attachment-type is invalid, cannot be determined.</xsl:message>
      </xsl:when>
      <xsl:when test=".=('pdf' , 'pdf-fillable')">PDF</xsl:when>
      <xsl:when test=".='hotdoc-nonfillable'">hotdoc</xsl:when>
      <xsl:otherwise><xsl:value-of select="."/></xsl:otherwise>
    </xsl:choose>
  </xsl:template>-->
   <xsl:template match="remotelink[@service='QUERY'][ancestor::docinfo:assoc-links][$streamID=('CA03', 'CA05', 'CA06', 'CA07', 'CA08')]">
      <xsl:choose>
         <xsl:when test="(starts-with($streamID,'CA06') or starts-with($streamID ,'CA07')) and parent::docinfo:assoc-links-grp[@assoc-content='enabling']          and starts-with(@remotekey1 , 'DOCINFO(') and @remotekey2='All Canadian Statutes'">
            <xsl:call-template name="makeRelatedresourceref">
               <xsl:with-param name="contentType" select="'enablingLeg'"/>
            </xsl:call-template>
         </xsl:when>
         <xsl:when test="(starts-with($streamID , 'CA05') or starts-with($streamID , 'CA08')) and starts-with(@remotekey1 , 'DOCINFO(') and @remotekey2='All Canadian Regulations'">
            <xsl:call-template name="makeRelatedresourceref">
               <xsl:with-param name="contentType" select="'subordinateLeg'"/>
            </xsl:call-template>
         </xsl:when>
         <xsl:when test="starts-with(@remotekey1 , 'REFNUM(') and contains(@remotekey2,'All Canadian Summaries') and $streamID='CA03' and not(preceding-sibling::*[1][self::remotelink])">
            <doc:related-content-grp grptype="caseSummaries">
               <heading>
                  <title xml:lang="en-CA">
                     <xsl:value-of select="."/>
                  </title>
                  <title xml:lang="fr-CA">
                     <xsl:value-of select="following-sibling::remotelink"/>
                  </title>
               </heading>
               <doc:related-content-item content-type="caseSummaries">
                  <ref:relatedresourceref>
                     <ref:relatedresourceid>
                        <xsl:attribute name="ref:resourcekey">
                           <xsl:value-of select="concat('urn:ucn-1:' , substring-before(substring-after(@remotekey1 , 'REFNUM(') , ')'))"/>
                        </xsl:attribute>
                     </ref:relatedresourceid>
                  </ref:relatedresourceref>
               </doc:related-content-item>
            </doc:related-content-grp>
         </xsl:when>
         <!-- otherwise we do nothing for remotelink service QUERY -->
      </xsl:choose>
   </xsl:template>

   <xsl:template name="makeRelatedresourceref">
      <xsl:param name="contentType"/>
      <xsl:for-each select="tokenize(@remotekey1 , '\s+OR\s+')">
         <doc:related-content-item>
            <xsl:attribute name="content-type" select="$contentType"/>
            <ref:relatedresourceref>
               <ref:relatedresourceid>
                  <xsl:attribute name="ref:resourcekey">
                     <xsl:value-of select="concat('urn:leg-id-1:', substring-before(substring-after(. , 'DOCINFO(') , ')'))"/>
                  </xsl:attribute>
               </ref:relatedresourceid>
            </ref:relatedresourceref>
         </doc:related-content-item>
      </xsl:for-each>
   </xsl:template>

   <xsl:template match="remotelink[@service='DOC-ID'][parent::docinfo:assoc-links or parent::docinfo:assoc-links-grp]">
      <doc:related-content-item>
         <xsl:if test="parent::docinfo:assoc-links[@assoc-content='external-content-location']">
            <xsl:attribute name="content-type">external-content-location</xsl:attribute>
         </xsl:if>
         <doc:related-content-link>
            <ref:lnlink>
               <xsl:attribute name="service">DOCUMENT</xsl:attribute>
               <ref:marker>
                  <xsl:apply-templates/>
               </ref:marker>
               <ref:locator>
                  <xsl:if test="@remotekey1='REFPTID' and (@refpt or @remotekey2)">
                     <xsl:attribute name="anchoridref">
                        <xsl:choose>
                           <xsl:when test="@refpt">
                              <xsl:for-each select="@refpt">
                                 <xsl:call-template name="normalizeIdString"/>
                              </xsl:for-each>
                           </xsl:when>
                           <xsl:otherwise>
                              <xsl:for-each select="@remotekey2">
                                 <xsl:call-template name="normalizeIdString"/>
                              </xsl:for-each>
                           </xsl:otherwise>
                        </xsl:choose>
                     </xsl:attribute>
                  </xsl:if>
                  <ref:locator-key>
                     <xsl:choose>
                        <xsl:when test="@remotekey1='DOC-ID'">
                           <ref:key-name name="DOC-ID"/>
                           <ref:key-value>
                              <xsl:attribute name="value">
                                 <xsl:value-of select="@dpsi"/>
                                 <xsl:text>-</xsl:text>
                                 <xsl:value-of select="if (@remotekey2) then @remotekey2 else @refpt"/>
                              </xsl:attribute>
                           </ref:key-value>
                        </xsl:when>
                        <xsl:when test="@remotekey1='REFPTID'">
                           <ref:key-name name="DOC-ID"/>
                           <ref:key-value>
                              <xsl:attribute name="value">
                                 <xsl:value-of select="if (@dpsi) then @dpsi else //docinfo/docinfo:dpsi/@id-string"/>
                                 <xsl:text>-</xsl:text>
                                 <xsl:value-of select="@docidref"/>
                              </xsl:attribute>
                           </ref:key-value>
                        </xsl:when>
                     </xsl:choose>
                  </ref:locator-key>
               </ref:locator>
            </ref:lnlink>
         </doc:related-content-link>
      </doc:related-content-item>
   </xsl:template>

   <xsl:template match="remotelink[@href][parent::docinfo:assoc-links or parent::docinfo:assoc-links-grp]"
                 priority="25">
      <doc:related-content-item>
         <xsl:if test="parent::docinfo:assoc-links[@assoc-content='external-content-location']">
            <xsl:attribute name="content-type">external-content-location</xsl:attribute>
         </xsl:if>
         <doc:related-content-link>
            <ref:lnlink service="URL">
               <ref:marker>
                  <xsl:value-of select="."/>
               </ref:marker>
               <ref:locator>
                  <ref:locator-key>
                     <ref:key-name name="URL"/>
                     <ref:key-value>
                        <xsl:attribute name="value">
                           <xsl:value-of select="if (@hrefclass) then concat(@hrefclass, '://' , @href) else @href"/>
                        </xsl:attribute>
                     </ref:key-value>
                  </ref:locator-key>
               </ref:locator>
            </ref:lnlink>
         </doc:related-content-link>
         <xsl:apply-templates select="following-sibling::text[1][$streamID!='UK14']"/>
      </doc:related-content-item>
      <xsl:apply-templates select="following-sibling::*[1][self::text][$streamID='UK14']"/>
   </xsl:template>
   <!-- from other module: If the data content of the remotelink does not start with one of the previous listed
          text sequences, <sourcexml>remotelink</sourcexml> becomes
            <targetxml>ref:lnlink</targetxml> and is populated as follows:<ul>
            <li>The <targetxml>ref:lnlink/@service</targetxml> attribute is set to "URL".</li>
            <li>Element <targetxml>ref:lnlink/ref:marker</targetxml> is created and the content of
                <sourcexml>remotelink</sourcexml> becomes the content of child
                <targetxml>ref:lnlink/ref:marker</targetxml>. Any descendant element is converted
              according to instructions for that element in the section <i>General Mark-Up</i>.</li>
            <li>The child <targetxml>ref:lnlink/ref:locator</targetxml> is created, and within it
              the child <targetxml>ref:lnlink/ref:locator/ref:locator-key</targetxml> is created,
              and within it the children
                <targetxml>ref:lnlink/ref:locator/ref:locator-key/ref:key-name</targetxml> and
                <targetxml>ref:lnlink/ref:locator/ref:locator-key/ref:key-value</targetxml> are
              created.</li>
            <li>The <targetxml>ref:key-name/@name</targetxml> attribute is set to "URL".</li>
            <li>If the <sourcexml>remotelink/@hrefclass</sourcexml> attribute is present,
                <targetxml>ref:key-value/@value</targetxml> is set to the combined value of
                <sourcexml>remotelink/@hrefclass</sourcexml>, followed by "://", followed by the
              value of <sourcexml>remotelink/@href</sourcexml>.</li>
            <li>If the <sourcexml>remotelink/@hrefclass</sourcexml> attribute is <b>not</b> present,
                <targetxml>ref:key-value/@value</targetxml> is set to the value of
                <sourcexml>remotelink/@href</sourcexml>.</li> -->
   <xsl:template match="lnlink[@service='QUERYLINK'][parent::docinfo:assoc-links or parent::docinfo:assoc-links-grp]">
      <doc:related-content-item>
         <doc:related-content-link>
            <ref:lnlink service="QUERYLINK">
               <xsl:apply-templates select="marker"/>
               <ref:locator>
                  <ref:locator-key>
                     <ref:key-name>
                        <xsl:attribute name="name">
                           <xsl:value-of select="key-name[@name='queryTemplatePGUID']/@name"/>
                        </xsl:attribute>
                     </ref:key-name>
                     <ref:key-value>
                        <xsl:attribute name="value">
                           <xsl:value-of select="key-value/@value"/>
                        </xsl:attribute>
                     </ref:key-value>
                  </ref:locator-key>
                  <xsl:apply-templates select="api-params"/>
               </ref:locator>
            </ref:lnlink>
         </doc:related-content-link>
      </doc:related-content-item>
   </xsl:template>

   <xsl:template match="lnlink/marker">
      <ref:marker>
         <xsl:apply-templates select="@*|node()"/>
      </ref:marker>
   </xsl:template>

   <xsl:template match="lnlink/marker/@role">
      <xsl:copy-of select="."/>
   </xsl:template>

   <xsl:template match="api-params">
      <ref:locator-params>
         <xsl:apply-templates/>
         <xsl:if test="parent::lnlink[@service='ATTACHMENT']">
            <proc:param>
               <xsl:attribute name="name">attachment-smi</xsl:attribute>
               <xsl:attribute name="value"/>
               <xsl:message>need SMI from CSSM? Is this a parameter?</xsl:message>
            </proc:param>
         </xsl:if>
      </ref:locator-params>
   </xsl:template>

   <xsl:template match="param">
      <xsl:if test="@name!='attachment-key'">
         <xsl:choose><!-- Awantika: For AU20 one more param needs to be created with the name targetcontentType value practicalguidance -->
            <xsl:when test="$streamID='AU20'">
               <xsl:if test="not(following-sibling::param)">
                  <proc:param>
                     <xsl:attribute name="name">
                        <xsl:text>targetContentType</xsl:text>
                     </xsl:attribute>
                     <xsl:attribute name="value">
                        <xsl:text>practicalguidance</xsl:text>
                     </xsl:attribute>
                  </proc:param>
               </xsl:if>
               <xsl:variable name="docinfoidtext" select="/*/docinfo/docinfo:doc-id/text()"/>
               <!-- Awantika: Need to create only proc:param for topiccode in AU20 for the specific condition -->
               <xsl:if test="$streamID='AU20' and contains(lower-case($docinfoidtext),'analytics') and ancestor::source_cttr:annotations[@annotgroup='LPG']">
                  <xsl:choose>
                     <xsl:when test="@name[.='topiccode']">
                        <proc:param>
                           <xsl:attribute name="name">
                              <xsl:text>topiccode</xsl:text>
                           </xsl:attribute>
                           <xsl:attribute name="value">
                              <xsl:value-of select="@value"/>
                           </xsl:attribute>
                        </proc:param>
                     </xsl:when>
                     <xsl:otherwise/>
                  </xsl:choose>
               </xsl:if>
            </xsl:when>
            <xsl:otherwise>
               <proc:param>
                  <xsl:apply-templates select="@name | @value"/>
               </proc:param>
            </xsl:otherwise>
         </xsl:choose>
      </xsl:if>
   </xsl:template>

   <xsl:template match="param/@name | param/@value">
      <xsl:copy-of select="."/>
   </xsl:template>

   <xsl:template match="lnlink[@service='ATTACHMENT'][parent::docinfo:assoc-links or parent::docinfo:assoc-links-grp]">
      <doc:related-content-item>
         <doc:related-content-link>
            <ref:lnlink service="ATTACHMENT">
               <xsl:apply-templates select="marker"/>
               <ref:locator>
                  <ref:locator-key>
                     <ref:key-name>
                        <xsl:attribute name="name">attachment-key</xsl:attribute>
                     </ref:key-name>
                     <ref:key-value>
                        <xsl:attribute name="value">
                           <xsl:value-of select="api-params/param[@name='attachment-key']/@value"/>
                        </xsl:attribute>
                     </ref:key-value>
                  </ref:locator-key>
                  <xsl:apply-templates select="api-params"/>
               </ref:locator>
            </ref:lnlink>
         </doc:related-content-link>
      </doc:related-content-item>
   </xsl:template>

   <xsl:template match="lnlink[@service='TRAVERSE'][parent::docinfo:assoc-links or parent::docinfo:assoc-links-grp]">
      <doc:related-content-item>
         <xsl:if test="parent::docinfo:assoc-links[@assoc-content='external-content-location']">
            <xsl:attribute name="content-type">external-content-location</xsl:attribute>
         </xsl:if>
         <doc:related-content-link>
            <ref:lnlink service="TRAVERSE">
               <xsl:apply-templates select="marker"/>
               <ref:locator>
                  <ref:locator-key>
                     <ref:key-name>
                        <xsl:attribute name="name">
                           <xsl:value-of select="key-name/@name"/>
                        </xsl:attribute>
                     </ref:key-name>
                     <ref:key-value>
                        <xsl:attribute name="value">
                           <xsl:value-of select="key-value/@value"/>
                        </xsl:attribute>
                     </ref:key-value>
                  </ref:locator-key>
                  <ref:locator-params>
                     <xsl:choose>
                        <xsl:when test="api-params/param[@name='normprotocol']">
                           <xsl:apply-templates select="api-params/param[@name='normprotocol']"/>
                        </xsl:when>
                        <xsl:otherwise>
                           <proc:param name="normprotocol" value="lexsee"/>
                        </xsl:otherwise>
                     </xsl:choose>
                     <xsl:apply-templates select="api-params/param[@name!='normprotocol']"/>
                  </ref:locator-params>
               </ref:locator>
            </ref:lnlink>
         </doc:related-content-link>
      </doc:related-content-item>
   </xsl:template>

   <xsl:template match="lnlink/@status"/>

   <xsl:template match="lnlink[@service='URL'][parent::docinfo:assoc-links or parent::docinfo:assoc-links-grp]">
      <doc:related-content-item>
         <xsl:if test="parent::docinfo:assoc-links[@assoc-content='external-content-location']">
            <xsl:attribute name="content-type">external-content-location</xsl:attribute>
         </xsl:if>
         <doc:related-content-link>
            <ref:lnlink service="URL">
               <xsl:apply-templates select="marker"/>
               <ref:locator>
                  <xsl:choose>
                     <xsl:when test="api-params/param[@name='URL']">
                        <ref:locator-key>
                           <ref:key-name name="URL"/>
                           <ref:key-value>
                              <xsl:attribute name="value">
                                 <xsl:value-of select="api-params/param[@name='URL']/@value"/>
                              </xsl:attribute>
                           </ref:key-value>
                        </ref:locator-key>
                     </xsl:when>
                     <xsl:otherwise>
                        <xsl:apply-templates select="api-params"/>
                     </xsl:otherwise>
                  </xsl:choose>
               </ref:locator>
            </ref:lnlink>
         </doc:related-content-link>
      </doc:related-content-item>
   </xsl:template>

   <xsl:template match="ci:cite[parent::docinfo:assoc-links or parent::docinfo:assoc-links-grp]">
      <doc:related-content-item>
         <xsl:if test="parent::docinfo:assoc-links[@assoc-content='external-content-location']">
            <xsl:attribute name="content-type">external-content-location</xsl:attribute>
         </xsl:if>
         <doc:related-content-link>
            <ref:lnlink service="TRAVERSE">
               <ref:marker role="label">
                  <xsl:value-of select="ci:content"/>
               </ref:marker>
               <ref:locator>
                  <ref:locator-key>
                     <ref:key-name>
                        <xsl:attribute name="name">normcite</xsl:attribute>
                     </ref:key-name>
                     <ref:key-value>
                        <xsl:attribute name="value">
                           <xsl:value-of select="ci:content"/>
                        </xsl:attribute>
                     </ref:key-value>
                  </ref:locator-key>
                  <ref:locator-params>
                     <xsl:choose>
                        <xsl:when test="api-params/param[@name='normprotocol']">
                           <xsl:apply-templates select="api-params/param[@name='normprotocol']"/>
                        </xsl:when>
                        <xsl:otherwise>
                           <proc:param name="normprotocol" value="lexsee"/>
                        </xsl:otherwise>
                     </xsl:choose>
                     <xsl:if test="//docinfo/docinfo:doc-country/@iso-cc">
                        <proc:param>
                           <xsl:attribute name="name">countrycode</xsl:attribute>
                           <xsl:attribute name="value">
                              <xsl:value-of select="//docinfo/docinfo:doc-country/@iso-cc"/>
                           </xsl:attribute>
                        </proc:param>
                     </xsl:if>
                  </ref:locator-params>
               </ref:locator>
            </ref:lnlink>
         </doc:related-content-link>
      </doc:related-content-item>
   </xsl:template>
   <!--<topicref href="../common/common_rosetta_docinfo.hier.dita"/>-->   <!-- <topicref href="../../../common_newest/Rosetta_docinfo.hier-LxAdv-doc.hier.dita"/> -->   <xd:doc>
      <xd:desc>
         <xd:p>
            <xd:b>Instructions <xd:i>[common element]</xd:i>
            </xd:b>
         </xd:p>
         <xd:p>
            <xd:i>docinfo:hier</xd:i> becomes <xd:b>doc:hier</xd:b>, with
					these children: <xd:ul>
               <xd:li>
                  <xd:i>docinfo:hier/docinfo:hierlev</xd:i> becomes
								<xd:b>doc:hier/doc:hierlev</xd:b>. </xd:li>
               <xd:li>
                  <xd:i>docinfo:hier/docinfo:hierlev/heading</xd:i> becomes
								<xd:b>doc:hier/doc:hierlev/heading</xd:b>
               </xd:li>
               <xd:li>
                  <xd:i>docinfo:hier/docinfo:hierlev/heading/title</xd:i>
							becomes <xd:b>doc:hier/doc:hierlev/heading/title</xd:b>
               </xd:li>
            </xd:ul>
            <xd:p>
               <xd:b>Note: </xd:b>The attribute <xd:i>@role</xd:i> is suppressed. The nesting
						level of a <xd:b>doc:hierlev</xd:b> determines its role in the
						hierarchy.</xd:p>
            <xd:p>
               <xd:b>Note: </xd:b>if <xd:i>nl</xd:i> is coming as child of
							<xd:i>docinfo:hierlev/heading/title</xd:i> then it should be
						replaced by a white space in the target -<xd:b> Applicable for CA06-CA07 </xd:b>
            </xd:p>
            <xd:p>
               <xd:b>Note: </xd:b>
               <xd:b> Applicable for CA05-CA08: </xd:b> Attribute
							<xd:i>docinfo:hierlev/@exclude-from-displayunits="true"</xd:i>
						should be converted into attribute
							<xd:b>doc:hier/@includeintoc="false"</xd:b>.</xd:p>
            <xd:p>
               <xd:b>Note: </xd:b>
               <xd:b>Applicable for CA09:</xd:b>
               <xd:i>title</xd:i> may contain <xd:i>num</xd:i>.
						Suppress <xd:i>num</xd:i> tag but output content. For example:
							<xd:i>&lt;docinfo:hier&gt;&lt;docinfo:hierlev&gt;&lt;heading&gt;&lt;title&gt;&lt;num&gt;</xd:i>6F1<xd:i>&lt;/num&gt;</xd:i>
						Appellant Form
							(A1)<xd:i>&lt;/title&gt;&lt;/heading&gt;&lt;/docinfo:hierlev&gt;&lt;/docinfo:hier&gt;</xd:i>
						becomes
							<xd:b>&lt;doc:hier&gt;&lt;doc:hierlev&gt;&lt;heading&gt;&lt;title&gt;</xd:b>6F1
						Appellant Form
							(A1)<xd:b>&lt;/title&gt;&lt;/heading&gt;&lt;/doc:hierlev&gt;&lt;/doc:hier&gt;</xd:b>
            </xd:p>
            <xd:p>
               <xd:b>Note: </xd:b>Suppress <xd:i>inlineobject</xd:i> if it's found within
							<xd:i>docinfo:hierlev</xd:i> element. i.e,
							<xd:i>/docinfo/docinfo:hier/docinfo:hierlev/docinfo:hierlev/docinfo:hierlev/heading/inlineobject</xd:i>,
							<xd:i>/docinfo/docinfo:hier/docinfo:hierlev/docinfo:hierlev/docinfo:hierlev/heading/subtitle/inlineobject</xd:i>
						and
							<xd:i>/docinfo/docinfo:hier/docinfo:hierlev/docinfo:hierlev/docinfo:hierlev/heading/title/inlineobject</xd:i>.</xd:p>
         </xd:p>
         <xd:p>
            <xd:b>Source XML</xd:b>
         </xd:p>
         <xd:pre> &lt;docinfo:hier&gt; &lt;docinfo:hierlev role="ancestor"&gt;
					&lt;heading&gt; &lt;title&gt;Victoria Acts&lt;/title&gt; &lt;/heading&gt;
					&lt;docinfo:hierlev role="ancestor"&gt; &lt;heading&gt;
					&lt;title&gt;E&lt;/title&gt; &lt;/heading&gt; &lt;docinfo:hierlev
					role="ancestor"&gt; &lt;heading&gt; &lt;title&gt;EL&lt;/title&gt;
					&lt;/heading&gt; &lt;docinfo:hierlev role="ancestor"&gt; &lt;heading&gt;
					&lt;title&gt;ELECTRICITY SAFETY ACT 1998&lt;/title&gt; &lt;/heading&gt;
					&lt;docinfo:hierlev role="me"&gt; &lt;heading&gt; &lt;title&gt;ELECTRICITY
					SAFETY ACT 1998�&lt;/title&gt; &lt;/heading&gt; &lt;/docinfo:hierlev&gt;
					&lt;/docinfo:hierlev&gt; &lt;/docinfo:hierlev&gt; &lt;/docinfo:hierlev&gt;
					&lt;/docinfo:hierlev&gt; &lt;/docinfo:hier&gt; </xd:pre>
         <xd:p>
            <xd:b>Target XML</xd:b>
         </xd:p>
         <xd:pre> &lt;doc:hier&gt; &lt;doc:hierlev&gt; &lt;heading&gt;
					&lt;title&gt;Victoria Acts&lt;/title&gt; &lt;/heading&gt; &lt;doc:hierlev&gt;
					&lt;heading&gt; &lt;title&gt;E&lt;/title&gt; &lt;/heading&gt;
					&lt;doc:hierlev&gt; &lt;heading&gt; &lt;title&gt;EL&lt;/title&gt;
					&lt;/heading&gt; &lt;doc:hierlev&gt; &lt;heading&gt; &lt;title&gt;ELECTRICITY
					SAFETY ACT 1998&lt;/title&gt; &lt;/heading&gt; &lt;doc:hierlev&gt;
					&lt;heading&gt; &lt;title&gt;ELECTRICITY SAFETY ACT 1998�&lt;/title&gt;
					&lt;/heading&gt; &lt;/doc:hierlev&gt; &lt;/doc:hierlev&gt; &lt;/doc:hierlev&gt;
					&lt;/doc:hierlev&gt; &lt;/doc:hierlev&gt; &lt;/doc:hier&gt; </xd:pre>
         <xd:p>
            <xd:b>Source XML <xd:i>nl</xd:i> as child of
						<xd:i>docinfo:hierlev/heading/title</xd:i>
            </xd:b>
         </xd:p>
         <xd:pre> &lt;docinfo:hier&gt; &lt;docinfo:hierlev role="ancestor"&gt;
					&lt;heading&gt; &lt;title&gt;Young Offenders Act (Canada)&lt;/title&gt;
					&lt;/heading&gt; &lt;docinfo:hierlev role="ancestor"&gt; &lt;heading&gt;
					&lt;title&gt;RULES OF YOUTH COURT REGULATION&lt;/title&gt; &lt;/heading&gt;
					&lt;docinfo:hierlev role="ancestor"&gt; &lt;heading&gt;
					&lt;title&gt;SCHEDULE&lt;/title&gt; &lt;/heading&gt; &lt;docinfo:hierlev
					role="me"&gt; &lt;heading&gt; &lt;title&gt;ROVINCIAL COURT OF
					ALBERTA&lt;nl/&gt;FORM 100&lt;nl/&gt;IN THE YOUTH DIVISION OF THE PROVINCIAL
					COURT OF ALBERTA&lt;nl/&gt;NOTICE OF APPLICATION &lt;/title&gt; &lt;/heading&gt;
					&lt;/docinfo:hierlev&gt; &lt;/docinfo:hierlev&gt; &lt;/docinfo:hierlev&gt;
					&lt;/docinfo:hierlev&gt; &lt;/docinfo:hier&gt; </xd:pre>
         <xd:p>
            <xd:b>
               <xd:b>Target XML</xd:b>
               <xd:i>nl</xd:i> as child of
						<xd:i>docinfo:hierlev/heading/title</xd:i>
            </xd:b>
         </xd:p>
         <xd:pre> &lt;doc:hier&gt; &lt;doc:hierlev&gt; &lt;heading&gt; &lt;title&gt;Young
					Offenders Act (Canada)&lt;/title&gt; &lt;/heading&gt; &lt;doc:hierlev&gt;
					&lt;heading&gt; &lt;title&gt;RULES OF YOUTH COURT REGULATION&lt;/title&gt;
					&lt;/heading&gt; &lt;doc:hierlev&gt; &lt;heading&gt;
					&lt;title&gt;SCHEDULE&lt;/title&gt; &lt;/heading&gt; &lt;doc:hierlev&gt;
					&lt;heading&gt; &lt;title&gt;ROVINCIAL COURT OF ALBERTA FORM 100 IN THE YOUTH
					DIVISION OF THE PROVINCIAL COURT OF ALBERTA NOTICE OF APPLICATION &lt;/title&gt;
					&lt;/heading&gt; &lt;/doc:hierlev&gt; &lt;/doc:hierlev&gt; &lt;/doc:hierlev&gt;
					&lt;/doc:hierlev&gt; &lt;/doc:hierlev&gt; </xd:pre>
         <!--Changes2015-03-25: Added note with rule for
							title/num. Suppress num
						tag but output content. Applicable for CA09 only. RFA 2249.2015-01-23: Added note to convert
							docinfo:hierlev/@exclude-from-displayunits="true"
						into doc:hier/@includeintoc="false". Applicable
					for CA05-CA08, RFA #21412015-01-13: Added a note to repalce
							nl to a white space when
							nl is coming as child of
							docinfo:hierlev/heading/title Applicable for
					CA06-CA07 , RFA #2108-->
      </xd:desc>
   </xd:doc>
   <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_docinfo.hier-LxAdv-doc.hier.dita  -->
   <xsl:variable name="Title_Dpsi_Code_CA05">
      <codes>
         <code key="0U95" value="Statutes"/>
         <code key="0U9A" value="Former Statutes"/>
         <code key="0U9S" value="Statutes"/>
         <code key="0U9V" value="Statutes"/>
         <code key="0U9X" value="Former Statutes"/>
         <code key="0UA4" value="Statutes"/>
         <code key="0UA6" value="Former Statutes"/>
         <code key="0UAN" value="Statutes"/>
         <code key="0UAP" value="Former Statutes"/>
         <code key="0UCM" value="Statutes"/>
         <code key="0UCO" value="Former Statutes"/>
         <code key="0UCV" value="Statutes"/>
         <code key="0UCX" value="Former Statutes"/>
         <code key="0UD9" value="Statutes"/>
         <code key="0UDB" value="Former Statutes"/>
         <code key="0UDF" value="Employment Insurance Statutes"/>
         <code key="0UDL" value="Statutes"/>
         <code key="0UDM" value="Statutes"/>
         <code key="0UDT" value="Employment Standards Statutes"/>
         <code key="0UDV" value="Employment Standards Former Statutes"/>
         <code key="0UEE" value="Statutes"/>
         <code key="0UEF" value="Former Statutes"/>
         <code key="0UFB" value="Human Rights/Equity Issues"/> Statutes"/&gt;
			<code key="0UFD" value="Human Rights/Equity Issues"/> Former Statutes"/&gt;
			<code key="0UFT" value="Statutes"/>
         <code key="0UHJ" value="Statutes"/>
         <code key="0UHL" value="Former Statutes"/>
         <code key="0UI1" value="Labour Relations Statutes"/>
         <code key="0UI3" value="Labour Relations Former Statutes"/>
         <code key="0UJ2" value="Statutes"/>
         <code key="0UJ3" value="Former Statutes"/>
         <code key="0UJ8" value="Statutes"/>
         <code key="0UJ9" value="Former Statutes"/>
         <code key="0UN0" value="Lois"/>
         <code key="0UN5" value="Lois"/>
         <code key="0UNO" value="Lois"/>
         <code key="0UNZ" value="Lois"/>
         <code key="0UOD" value="Lois"/>
         <code key="0UOJ" value="Lois"/>
         <code key="0UOS" value="Lois"/>
         <code key="0UPV" value="Statutes"/>
         <code key="0UPX" value="Former Statutes"/>
         <code key="0US1" value="Former Statutes"/>
         <code key="0US6" value="Lois"/>
         <code key="0USC" value="Archives - Lois"/>
         <code key="0UTB" value="Lois"/>
         <code key="0UVY" value="Acts"/>
         <code key="0USN" value="Former Acts"/>
      </codes>
   </xsl:variable>
   <xsl:variable name="Title_Dpsi_Code_CA10">
      <codes>
         <code key="0U91" value="Commentary"/>
         <code key="0U9L" value="Commentary"/>
         <code key="0U9M" value="Commentary"/>
         <code key="0UA0" value="Commentary"/>
         <code key="0UAK" value="Commentary"/>
         <code key="0UB1" value="Employment Insurance Commentary"/>
         <code key="0UCG" value="Commentary"/>
         <code key="0UCI" value="Commentary"/>
         <code key="0UCS" value="Commentary"/>
         <code key="0UDE" value="Editorial Board &amp; Case Comments"/>
         <code key="0UDJ" value="Commentary"/>
         <code key="0UDQ" value="Topical Index to Summaries"/>
         <code key="0UEB" value="Commentary"/>
         <code key="0UFA" value="Human Rights/Equity Issues Commentary"/>
         <code key="0UFQ" value="Commentary"/>
         <code key="0UHE" value="Commentary"/>
         <code key="0UHG" value="Bulletins and Social Security Agreements"/>
         <code key="0UHU" value="Employment Standards Commentary"/>
         <code key="0UHZ" value="Labour Relations Commentary"/>
         <code key="0UJ0" value="Commentary"/>
         <code key="0UJ4" value="Commentary"/>
         <code key="0UMX" value="Commentaires, Index et Abréviations"/>
         <code key="0UN3" value="Commentaires, Index et Abréviations"/>
         <code key="0UNN" value="Commentaires, bibliographies et index"/>
         <code key="0UNY" value="Commentaires, Index et Abréviations"/>
         <code key="0UO5" value="Commentaires, Index et Tables"/>
         <code key="0UOI" value="Commentaires, Index et Abréviations"/>
         <code key="0UOM" value="Modèles de procédures"/>
         <code key="0UOR" value="Commentaires, Index, Abréviations et Adresses"/>
         <code key="0UPT" value="Commentary"/>
         <code key="0US5" value="Équipe de rédaction, tables, grilles et index"/>
         <code key="0USQ" value="Jurisprudence - Annotations de Dubois et Schneider"/>
         <code key="0UTA" value="Commentaires et Indexes"/>
         <code key="0V21" value="MFDA Staff Notices"/>
         <code key="0V2H" value="Montreal Stock Exchange Charter &amp; List of Fees"/>
         <code key="0V5X" value="Quantum of Damages Table"/>
         <code key="0V5Y" value="Code Citator"/>
         <code key="0VNX" value="Securities Commissions"/>
      </codes>
   </xsl:variable>
   <xsl:variable name="Title_Dpsi_Code">
      <codes>
         <code key="0U96" value="Regulations"/>
         <code key="0U9B" value="Former Regulations"/>
         <code key="0U9T" value="Regulations"/>
         <code key="0U9W" value="Regulations"/>
         <code key="0U9Y" value="Former Regulations"/>
         <code key="0UA5" value="Regulations"/>
         <code key="0UA7" value="Former Regulations"/>
         <code key="0UAO" value="Regulations"/>
         <code key="0UAQ" value="Former Regulations"/>
         <code key="0UCN" value="Regulations"/>
         <code key="0UCP" value="Former Regulations"/>
         <code key="0UCW" value="Regulations"/>
         <code key="0UCY" value="Former Regulations"/>
         <code key="0UDA" value="Regulations"/>
         <code key="0UDC" value="Former Regulations"/>
         <code key="0UDG" value="Employment Insurance Regulations"/>
         <code key="0UDN" value="Regulations"/>
         <code key="0UDO" value="Regulations"/>
         <code key="0UDU" value="Employment Standards Regulations"/>
         <code key="0UEG" value="Regulations"/>
         <code key="0UEJ" value="Employment Standards Former Regulations"/>
         <code key="0UFC" value="Human Rights/Equity Issues Regulations"/>
         <code key="0UFE" value="Human Rights/Equity Issues Former Regulations"/>
         <code key="0UFU" value="Regulations"/>
         <code key="0UHK" value="Regulations"/>
         <code key="0UHM" value="Former Regulations"/>
         <code key="0UI2" value="Labour Relations Regulations"/>
         <code key="0UI4" value="Labour Relations Former Regulations"/>
         <code key="0UJA" value="Regulations"/>
         <code key="0UJB" value="Former Regulations"/>
         <code key="0UN6" value="Règlements"/>
         <code key="0UNP" value="Règlements"/>
         <code key="0UOE" value="Règlements"/>
         <code key="0UOK" value="Règlements"/>
         <code key="0UOT" value="Règlements"/>
         <code key="0UOV" value="Archives - Règlements"/>
         <code key="0UPW" value="Regulations"/>
         <code key="0UPY" value="Former Regulations"/>
         <code key="0US7" value="Règlements"/>
         <code key="0USD" value="Archives - Règlements"/>
         <code key="0USP" value="Former Regulations"/>
         <code key="0UTC" value="Règlements"/>
         <code key="0UVZ" value="Regulations"/>
         <code key="0VNX" value="Securities Commissions"/>
         <code key="0U98" value="CSA Regulatory Documents"/>
         <code key="0USA" value="Règles de pratique"/>
         <code key="0UW1" value="Codes of Practice"/>
         <code key="0V1Y" value="Universal Market Integrity Rules and Policies"/>
         <code key="0V22" value="MFDA By-laws, Rules and Policies"/>
         <code key="0V24" value="ICE Futures Canada Inc. Rules"/>
         <code key="0V26" value="NASDAQ Marketplace Rules"/>
         <code key="0V28" value="CNSX Rules, Policies and Notices"/>
         <code key="0V2A" value="TSX Rule Book and Policies"/>
         <code key="0V2B" value="TSX Venture Exchange Rules and Policies"/>
         <code key="0V2F" value="NEX Policies"/>
         <code key="0V2I"
               value="Montreal Stock Exchange Rules, Policies, Guidelines and Fees"/>
         <code key="0U9C" value="Forms"/>
         <code key="0U9R" value="Forms"/>
         <code key="0UAR" value="Forms"/>
         <code key="0UCU" value="Forms"/>
         <code key="0UCZ" value="Forms &amp; Precedents"/>
         <code key="0UDS" value="Employment Standards Forms"/>
         <code key="0UDW" value="Government and Agency Documents"/>
         <code key="0UEH" value="Forms"/>
         <code key="0UHF" value="Government and Agency Documents"/>
         <code key="0UI0" value="Labour Relations Forms"/>
         <code key="0UJC" value="Forms"/>
         <code key="0UOA" value="Formulaires"/>
         <code key="0UQ0" value="Forms"/>
         <code key="0USW" value="Formulaires"/>
         <code key="0V20"
               value="IIROC &amp; Market Integrity Notices, Guides, and Updates"/>
         <code key="0V23" value="MFDA Forms"/>
         <code key="0V25" value="ICE Futures Canada Inc. Annexes"/>
         <code key="0V29" value="CNSX Forms"/>
         <code key="0V2D"
               value="TSX Venture Exchange Corporate Finance Manual Appendices and Forms"/>
         <code key="0V2G" value="NEX Forms and Appendices"/>
         <code key="0V2J" value="Montreal Stock Exchange Forms"/>
         <!-- CA01 Start		-->
         <code key="0UW2" value="Cases"/>
         <code key="0UXQ" value="Cases"/>
         <code key="0UXS" value="Cases"/>
         <code key="0UXT" value="Summaries (Appeals &amp; Cases)"/>
         <code key="0UXU" value="Cases"/>
         <code key="0UXV" value="Cases"/>
         <code key="0UXW" value="Cases"/>
         <code key="0UXX" value="Cases"/>
         <code key="0UXZ" value="Cases"/>
         <code key="0UY0" value="Cases"/>
         <code key="0UY1" value="Cases"/>
         <code key="0UY3" value="Cases"/>
         <code key="0UY4" value="Jurisprudence - Texte intégraux et résumés archivés"/>
         <code key="0UY6" value="Jurisprudence"/>
         <code key="0UY7" value="Résumés de jurisprudence"/>
         <code key="0UY8" value="Jurisprudence sélectionnée"/>
         <code key="0UY9" value="Jurisprudence - Textes intégraux"/>
         <code key="0UYC" value="Cases"/>
         <code key="0V45" value="Cases"/>
         <code key="0V47" value="Cases"/>
         <code key="0V48" value="Cases"/>
         <code key="0V49" value="Cases"/>
         <!-- CA01 End		-->
      </codes>
   </xsl:variable>
   <xsl:key name="dpsititle" match="*:code" use="string(@key)"/>
   <xsl:template match="docinfo:hier"><!--  Original Target XPath:  doc:hier   -->
      <doc:hier>
         <xsl:if test="$streamID = ('CA05', 'CA06', 'CA07', 'CA08')">
            <xsl:if test="child::docinfo:hierlev/@exclude-from-displayunits = 'true'">
               <xsl:attribute name="includeintoc">
                  <xsl:text>false</xsl:text>
               </xsl:attribute>
            </xsl:if>
         </xsl:if>
         <!--  @SBy:  process the first descendant docinfo:hierlev/@exclude-from-displayunits where that attribute is true.  So if this attribute appears on any docinfo:hierlev and is true, then @includeintoc will be set to false  -->
         <!-- UK06 Requires indicators of first and last  -->
         <xsl:if test="$streamID = ('UK06','UK07')">
            <proc:processinginfo>
               <xsl:attribute name="process">LAToCBuilder</xsl:attribute>
               <xsl:choose>
                  <xsl:when test="/LEGDOC/docinfo/docinfo:custom-metafields/docinfo:custom-metafield[@name='is-first-document-in-enactment'] = 'true'">
                     <proc:param name="firstLegisItem" value="true"/>
                  </xsl:when>
                  <xsl:otherwise>
                     <proc:param name="firstLegisItem" value="false"/>
                  </xsl:otherwise>
               </xsl:choose>
               <xsl:choose>
                  <xsl:when test="/LEGDOC/docinfo/docinfo:custom-metafields/docinfo:custom-metafield[@name='is-last-document-in-enactment'] = 'true'">
                     <proc:param name="lastLegisItem" value="true"/>
                  </xsl:when>
                  <xsl:otherwise>
                     <proc:param name="lastLegisItem" value="false"/>
                  </xsl:otherwise>
               </xsl:choose>
            </proc:processinginfo>
         </xsl:if>
         <!--			<xsl:if test=" $streamID = ( 'CA06' , 'CA07' , 'CA08' ) ">
				<xsl:apply-templates select="descendant::docinfo:hierlev[ @exclude-from-displayunits = 'true' ][1]/@exclude-from-displayunits"/>
			</xsl:if>-->
         <xsl:apply-templates select="@* | node()"/>
      </doc:hier>
   </xsl:template>
   <!-- @Vikas Gupta: Template to match the docinfo:hier for the $streamID ='CA06','CA07','CA08' 	-->
   <xsl:template match="docinfo:hier[$streamID = ('CA05','CA06', 'CA07', 'CA08', 'CA10')]"><!--  Original Target XPath:  doc:hier   -->
      <xsl:variable name="dpsi_value">
         <xsl:value-of select="//docinfo:custom-metafield[@name = 'dpsi']"/>
      </xsl:variable>
      <xsl:variable name="dpsi_value_CA10">
         <xsl:value-of select="substring(/COMMENTARYDOC/docinfo/docinfo:doc-id,1,4)"/>
      </xsl:variable>
      <doc:hier><!--  @SBy:  process the first descendant docinfo:hierlev/@exclude-from-displayunits where that attribute is true.  So if this attribute appears on any docinfo:hierlev and is true, then @includeintoc will be set to false  -->
         <xsl:choose>
            <xsl:when test="($dpsi_value = $Title_Dpsi_Code//@key) and $streamID!=('CA06', 'CA07', 'CA08')">
               <doc:hierlev>
                  <heading>
                     <title>
                        <xsl:value-of select="key('dpsititle', //docinfo:custom-metafield[@name = 'dpsi'], $Title_Dpsi_Code)/@value"/>
                     </title>
                  </heading>
                  <xsl:apply-templates select="descendant::docinfo:hierlev[@exclude-from-displayunits = 'true'][1]/@exclude-from-displayunits"/>
                  <xsl:apply-templates select="@* | node()"/>
               </doc:hierlev>
            </xsl:when>
            <xsl:when test="($dpsi_value = $Title_Dpsi_Code_CA05//@key) and $streamID='CA05'">
               <doc:hierlev>
                  <heading>
                     <title>
                        <xsl:value-of select="key('dpsititle', //docinfo:custom-metafield[@name = 'dpsi'], $Title_Dpsi_Code_CA05)/@value"/>
                     </title>
                  </heading>
                  <xsl:apply-templates select="descendant::docinfo:hierlev[@exclude-from-displayunits = 'true'][1]/@exclude-from-displayunits"/>
                  <xsl:apply-templates select="@* | node()"/>
               </doc:hierlev>
            </xsl:when>
            <xsl:when test="($dpsi_value = $Title_Dpsi_Code_CA10//@key or $dpsi_value_CA10=$Title_Dpsi_Code_CA10//@key) and $streamID='CA10'">
               <doc:hierlev>
                  <heading>
                     <title>
                        <xsl:value-of select="key('dpsititle', substring(/COMMENTARYDOC/docinfo/docinfo:doc-id,1,4), $Title_Dpsi_Code_CA10)/@value"/>
                     </title>
                  </heading>
                  <xsl:apply-templates select="descendant::docinfo:hierlev[@exclude-from-displayunits = 'true'][1]/@exclude-from-displayunits"/>
                  <xsl:apply-templates select="@* | node()"/>
               </doc:hierlev>
            </xsl:when>
            <xsl:otherwise>
               <xsl:apply-templates select="descendant::docinfo:hierlev[@exclude-from-displayunits = 'true'][1]/@exclude-from-displayunits"/>
               <xsl:apply-templates select="@* | node()"/>
            </xsl:otherwise>
         </xsl:choose>
      </doc:hier>
   </xsl:template>
   <!-- @Vikas Rohilla: Template to match the docinfo:hier for the $streamID ='CA01' 	-->
   <xsl:template match="docinfo:hier[$streamID = 'CA01']">
      <xsl:variable name="dpsi_value">
         <xsl:value-of select="$dpsi"/>
      </xsl:variable>
      <doc:hier>
         <xsl:choose>
            <xsl:when test="$dpsi_value = $Title_Dpsi_Code//@key">
               <doc:hierlev>
                  <heading>
                     <title>
                        <xsl:value-of select="key('dpsititle', $dpsi_value, $Title_Dpsi_Code)/@value"/>
                     </title>
                  </heading>
                  <xsl:apply-templates select="node() | @*"/>
               </doc:hierlev>
            </xsl:when>
            <xsl:otherwise>
               <xsl:apply-templates select="node() | @*"/>
            </xsl:otherwise>
         </xsl:choose>
      </doc:hier>
   </xsl:template>

   <xsl:template match="docinfo:hier[$streamID = 'CA09']">
      <xsl:variable name="dpsi_value">
         <xsl:value-of select="$dpsi"/>
      </xsl:variable>
      <doc:hier>
         <xsl:choose>
            <xsl:when test="$dpsi_value = $Title_Dpsi_Code//@key">
               <doc:hierlev>
                  <heading>
                     <title>
                        <xsl:value-of select="key('dpsititle', $dpsi_value, $Title_Dpsi_Code)/@value"/>
                     </title>
                  </heading>
                  <xsl:apply-templates select="@* | node()"/>
               </doc:hierlev>
            </xsl:when>
            <xsl:otherwise>
               <xsl:apply-templates select="@* | node()"/>
            </xsl:otherwise>
         </xsl:choose>
      </doc:hier>
   </xsl:template>

   <xsl:template match="docinfo:hierlev"><!--  Original Target XPath:  doc:hier/doc:hierlev   -->
      <doc:hierlev><!--  @SBy:  @exclude-from-displayunits already taken care of in creating doc:hier/@includeintoc   -->
         <xsl:apply-templates select="@* except @exclude-from-displayunits"/>
         <xsl:apply-templates select="node()"/>
         <xsl:apply-templates select="following-sibling::*[1][self::docinfo:hierlev]"
                              mode="hierlevSibling"/>
      </doc:hierlev>
   </xsl:template>

   <xsl:template match="docinfo:hierlev[preceding-sibling::docinfo:hierlev]"
                 mode="hierlevSibling">
      <doc:hierlev>
         <xsl:apply-templates select="@* except @exclude-from-displayunits"/>
         <xsl:apply-templates select="node()"/>
         <xsl:apply-templates select="*[1][self::docinfo:hierlev]" mode="hierlevSibling"/>
      </doc:hierlev>
   </xsl:template>

   <xsl:template match="docinfo:hierlev[preceding-sibling::docinfo:hierlev]"/>
   <!-- Sudhanshu Srivastava : Handling attribute @display-name for UK06 -->
   <xsl:template match="docinfo:hierlev/@display-name[$streamID = ('UK06','UK07')]">
      <xsl:if test=". = 'act'">
         <xsl:attribute name="leveltype" select="'act'"/>
      </xsl:if>
      <xsl:if test=". = 'SI'">
         <xsl:attribute name="leveltype" select="'instrument'"/>
      </xsl:if>
      <xsl:if test=". = 'measure'">
         <xsl:attribute name="leveltype" select="'measure'"/>
      </xsl:if>
   </xsl:template>
   <!--			***		@SBy:  These requirements are covered via other modules:      ***

			<li><sourcexml>docinfo:hier/docinfo:hierlev/heading</sourcexml> becomes
					<targetxml>doc:hier/doc:hierlev/heading</targetxml>
			</li>
			<li><sourcexml>docinfo:hier/docinfo:hierlev/heading/title</sourcexml> becomes
					<targetxml>doc:hier/doc:hierlev/heading/title</targetxml>
			</li>  
	-->
   <xsl:template match="docinfo:hierlev/@role"/>

   <xsl:template match="docinfo:hierlev/heading/title/nl[$streamID = ('CA06', 'CA07')]"><!--  @SBy:  note that otherwise nl will become proc:nl which is permitted within title   -->
      <xsl:text> </xsl:text>
   </xsl:template>

   <xsl:template match="docinfo:hierlev/@exclude-from-displayunits[. = 'true']"><!--  Original Target XPath:  doc:hier/@includeintoc="false"   -->
      <xsl:attribute name="includeintoc" select="'false'"/>
   </xsl:template>
   <!--xsl:template match="docinfo:hierlev/@exclude-from-displayunits[ . != 'true' ]"/-->
   <xsl:template match="docinfo:hierlev/heading/title/num[$streamID = 'CA09']"><!--  @SBy:  note that otherwise num will become num which is permitted within title   --><!--  Original Target XPath:  doc:hierdoc:hierlevheadingtitle   -->
      <xsl:apply-templates select="@* | node()"/>
   </xsl:template>
   <!-- Sudhanshu Srivastava: create template for handling docinfo:hierlev for CA13. -->
   <xsl:template match="docinfo:hierlev[$streamID = 'CA13']/heading">
      <heading>
         <xsl:apply-templates select="@* | node()"/>
      </heading>
   </xsl:template>

   <xsl:template match="docinfo:hierlev[$streamID = 'CA13']/heading/title">
      <title>
         <xsl:apply-templates select="@* | node()"/>
      </title>
   </xsl:template>

   <xsl:template match="inlineobject[ancestor::docinfo:hierlev]"/>
   <!--<topicref href="../common/common_rosetta_docinfo.lbu-meta.dita"/>-->   <!-- <topicref href="../../../common_newest/Rosetta_docinfo.lbu-meta-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta-scheme.dita"/> -->   <xd:doc>
      <xd:desc>
         <xd:p>
            <xd:b>Instructions <xd:i>[common element]</xd:i>
            </xd:b>
         </xd:p>
         <xd:p>
            <xd:i>docinfo:lbu-meta</xd:i> becomes
						<xd:b>doc:legacy-metadata[@metadatasource="lbu-meta"]</xd:b>.
						<xd:i>docinfo:metaitem</xd:i> becomes
						<xd:b>meta/metaitem</xd:b>. The source attribute
						<xd:i>@name</xd:i> becomes <xd:b>metaitem[@name]</xd:b> and
						<xd:i>@value</xd:i> becomes <xd:b>metaitem[@value]</xd:b>. </xd:p>
         <xd:p>
            <xd:i>docinfo:metaitem</xd:i> should be dropped if the attribute
						<xd:i>@name</xd:i> has any of the following drop list values: <xd:ul>
               <xd:li>
                  <xd:i>@name="date"</xd:i>
               </xd:li>
               <xd:li>
                  <xd:i>@name="juris"</xd:i>
               </xd:li>
               <xd:li>
                  <xd:i>@name="court"</xd:i>
               </xd:li>
               <xd:li>
                  <xd:i>@name="country"</xd:i>
               </xd:li>
               <xd:li>
                  <xd:i>@name="parent-filename"</xd:i>
               </xd:li>
            </xd:ul>
         </xd:p>
         <xd:p>
            <xd:b>Source XML 1</xd:b>
         </xd:p>
         <xd:pre>
	&lt;docinfo&gt;
	&lt;docinfo:lbu-meta&gt;
		&lt;docinfo:metaitem name="date" value="18810104"/&gt;
		&lt;docinfo:metaitem name="country" value="2"/&gt;
		&lt;docinfo:metaitem name="court" value="2"/&gt;
		&lt;docinfo:metaitem name="date" value="18810104"/&gt;
		&lt;docinfo:metaitem name="juris" value="9"/&gt;
		&lt;docinfo:metaitem name="court" value="1"/&gt;
		&lt;docinfo:metaitem name="country" value="2"/&gt;
		&lt;docinfo:metaitem name="lbu-sourcename" value="New Zealand Law Reports"/&gt;
		&lt;docinfo:metaitem name="parent-docid" value="1NZLR_CA_1"/&gt;
		&lt;docinfo:metaitem name="parent-filename" value="1NZLR_CA_00001.xml"/&gt;
	&lt;/docinfo:lbu-meta&gt;&lt;/docinfo&gt;
	
		</xd:pre>
         <xd:p>
            <xd:b>Target XML 1</xd:b>
         </xd:p>
         <xd:pre>
	&lt;doc:metadata&gt;
	&lt;doc:docinfo&gt;
		&lt;doc:legacy-metadata metadatasource="lbu-meta"&gt;
			&lt;meta&gt;
			   &lt;metaitem name="lbu-sourcename" value="New Zealand Law Reports"/&gt;
			   &lt;metaitem name="parent-docid" value="1NZLR_CA_1"/&gt;
			&lt;/meta&gt;
		&lt;/doc:legacy-metadata&gt;
	&lt;/doc:docinfo&gt;&lt;/doc:metadata&gt;
	
		</xd:pre>
         <xd:p>
            <xd:b>Source XML 2</xd:b>
         </xd:p>
         <xd:pre>
	&lt;docinfo&gt;
	&lt;docinfo:lbu-meta&gt;
	&lt;docinfo:metaitem name="SRCNAME" value="AGAA"&gt;&lt;/docinfo:metaitem&gt;
	&lt;docinfo:metaitem name="SRCDOCNO" value="00000008"&gt;&lt;/docinfo:metaitem&gt;
	&lt;docinfo:metaitem name="DPSI" value="03EN"&gt;&lt;/docinfo:metaitem&gt;
	&lt;/docinfo:lbu-meta&gt;
	&lt;/docinfo&gt;
	
		</xd:pre>
         <xd:p>
            <xd:b>Target XML 2</xd:b>
         </xd:p>
         <xd:pre>
	&lt;doc:metadata&gt;
	&lt;doc:docinfo&gt;
		&lt;doc:legacy-metadata metadatasource="lbu-meta"&gt;
			&lt;meta&gt;
			   &lt;metaitem name="SRCNAME" value="AGAA"/&gt;
			   &lt;metaitem name="SRCDOCNO" value="00000008"/&gt;
			   &lt;metaitem name="DPSI" value="03EN"/&gt;
			&lt;/meta&gt;
		&lt;/doc:legacy-metadata&gt;
	&lt;/doc:docinfo&gt;&lt;/doc:metadata&gt;
	
		</xd:pre>
         <xd:p>
            <xd:b>Source XML 3</xd:b>
         </xd:p>
         <xd:pre>
	&lt;docinfo&gt;
	&lt;docinfo:lbu-meta&gt;
	&lt;docinfo:metaitem name="QLDB" value="sb99"&gt;&lt;/docinfo:metaitem&gt;
	&lt;/docinfo:lbu-meta&gt;
	&lt;/docinfo&gt;
	
		</xd:pre>
         <xd:p>
            <xd:b>Target XML 3</xd:b>
         </xd:p>
         <xd:pre>
	&lt;doc:metadata&gt;
	&lt;doc:docinfo&gt;
		&lt;doc:legacy-metadata metadatasource="lbu-meta"&gt;
			&lt;meta&gt;
			   &lt;metaitem name="QLDB" value="sb99"/&gt;	       
			&lt;/meta&gt;
		&lt;/doc:legacy-metadata&gt;
	&lt;/doc:docinfo&gt;&lt;/doc:metadata&gt;
	
		</xd:pre>
         <xd:p>
            <xd:b>Source XML 4</xd:b>
         </xd:p>
         <xd:pre>
	
	&lt;docinfo&gt;
	 &lt;!-- ETC. --&gt;
	 &lt;docinfo:lbu-meta&gt;
	  &lt;docinfo:metaitem name="selection_criteria_variant" value="PCT207_regulation_1" /&gt;
	  &lt;docinfo:metaitem name="lbu-sourcename" value="New Zealand Regulations" /&gt;
	  &lt;docinfo:metaitem name="parent-docid" value="GCG-REGULATIONS-D" /&gt;
	  &lt;docinfo:metaitem name="parent-filename" value="Regs-D.xml" /&gt;
	  &lt;docinfo:metaitem name="parent-docid" value="NZREGS_REGS-D.SGM_2001R326-FRONT-CONTENTS" /&gt;
	  &lt;docinfo:metaitem name="parent-filename" value="Regs-D1030.xml" /&gt;
	 &lt;/docinfo:lbu-meta&gt;
	 &lt;!-- ETC. --&gt;
	&lt;/docinfo&gt;
				</xd:pre>
         <xd:p>
            <xd:b>Target XML 4</xd:b>
         </xd:p>
         <xd:pre>
					
	&lt;doc:metadata&gt;
	&lt;doc:docinfo&gt;
		&lt;doc:legacy-metadata metadatasource="lbu-meta"&gt;
			&lt;meta&gt;
			   &lt;metaitem name="selection_criteria_variant" value="PCT207_regulation_1"/&gt;
			   &lt;metaitem name="lbu-sourcename" value="New Zealand Regulations"/&gt;
			   &lt;metaitem name="parent-docid" value="GCG-REGULATIONS-D"/&gt;
			   &lt;metaitem name="parent-docid" value="NZREGS_REGS-D.SGM_2001R326-FRONT-CONTENTS"/&gt;
			&lt;/meta&gt;
		&lt;/doc:legacy-metadata&gt;
	&lt;/doc:docinfo&gt;&lt;/doc:metadata&gt;
	
				</xd:pre>
         <!-- McNally July 28 2016.  I'm commenting-out the following section "Special rules for UK14". 
			Will investigate intent.  If truly UK14 only then probably want separate submodule. 
			Will need some work. Narrative describes custom-metafield which can't occur in docinfo:lbu-meta.
			Example shows docinfo:metaitem which would be ok. 
			Also commented-out the change entry and moved it out of the changelog section. -->
         <!--<section>
				<note><b>Special rules for UK14:</b> These are rules for mapping certain instances of
					the source element <sourcexml>docinfo:custom-metafield</sourcexml> and instances are
					identified through the <sourcexml>@name</sourcexml> attribute. If given source
					present then below rules apply. </note>
				<p><b><u>Mapping to <targetxml>classify:classification</targetxml></u></b></p>
				<p>Source: <ul>
						<li><sourcexml>docinfo:custom-metafield[@name="alternative-title-formal"]</sourcexml></li>
						<li><sourcexml>docinfo:custom-metafield[@name="alternative-title-acronym"]</sourcexml></li>
						<li><sourcexml>docinfo:custom-metafield[@name="alternative-title-popular"]</sourcexml></li>
					</ul></p>
				<p>Target: Each source item becomes <targetxml>metaitem[@name @value]</targetxml> within
						<targetxml>classify:classification</targetxml> markup. As follows:</p>
				<p>Within <targetxml>doc:metadata/doc:docinfo</targetxml> -<ul>
						<li>Create
								<targetxml>classify:classification[@classscheme="uk-functional-information"]/classify:classitem</targetxml>.
							The <targetxml>@classscheme</targetxml> value is hard coded.<ul>
								<li>Create <targetxml>meta</targetxml><ul>
										<li>For each <sourcexml>docinfo:custom-metafield</sourcexml>
											specified above, create <targetxml>metaitem[@name
												@value]</targetxml>. Where <sourcexml>@name</sourcexml>
											value becomes <targetxml>@name</targetxml> value. And
											content of source element becomes
												<targetxml>@value</targetxml> value.</li>
									</ul></li>
								<li>Create
										<targetxml>classify:classitem-identifier/classify:classcode[@normval="functional-parameters"]</targetxml>.
									The <targetxml>@normval</targetxml> value is hard coded.</li>
							</ul></li>
					</ul><note>Create only one container
							<targetxml>classify:classification[@classscheme="uk-functional-information"]/classify:classitem</targetxml>.
						The container holds the items described above and may also hold mappings from
						elsewhere in the same source file.</note></p>
			</section>
			<example>
				<title>Source XML 5</title>
				<codeblock>
	<![CDATA[<docinfo>
	<docinfo:lbu-meta>
		<docinfo:metaitem name="alternative-title-formal" value="Merger confidentiality agreement in letter form"/>
		<docinfo:metaitem name="alternative-title-acronym" value="NDA" />
		<docinfo:metaitem name="alternative-title-popular" value="Non-disclosure clause for a shareholders’ agreement"/>
	</docinfo:lbu-meta>
	</docinfo>
	]]>
		</codeblock>
			</example>
	
			<example>
				<title>Target XML 5</title>
				<codeblock>
	<![CDATA[
	<doc:metadata>
		<doc:docinfo>
			<classify:classification classscheme="uk-functional-information">
				<classify:classitem>
					<meta>
						<metaitem name="alternative-title-formal" value="Merger confidentiality agreement in letter form"/>
						<metaitem name="alternative-title-acronym" value="NDA"/>
						<metaitem name="alternative-title-popular" value="Non-disclosure clause for a shareholders’ agreement"/>
					</meta>
					<classify:classitem-identifier>
						<classify:classcode normval="functional-parameters"/>
					</classify:classitem-identifier>
				</classify:classitem>
			</classify:classification>
		</doc:docinfo>
	</doc:metadata>
	]]>
		</codeblock>
			</example>
			
				<p>2016-07-28: <ph id="change_20160728_ss">Added rules for handling of
							<sourcexml>@name="alternative-title-formal"</sourcexml>,
							<sourcexml>@name="alternative-title-acronym"</sourcexml> and
							<sourcexml>@name="alternative-title-popular"</sourcexml> with updated
						example.</ph></p> -->
         <!--Changes2013-08-12: We removed the docinfo:lbu-meta "include"
						list so now there is only a "drop" list. Anything not on the "drop" list should
						be passed through. Webteam 230557.2013-08-02: Added
							@name="selection_criteria_variant" to the list of
						values in docinfo:metaitem/@name that should be retained. And added a
						example.2013-05-31: Added "document-type" to the list of values
						in docinfo:metaitem/@name that should be retained.2013-04-09: Added the instruction for handling
							docinfo:metaitem[@name="QLDB"].2012-08-30: Created.-->
      </xd:desc>
   </xd:doc>
   <xsl:template match="docinfo:lbu-meta">
      <xsl:apply-templates/>
   </xsl:template>

   <xsl:template match="docinfo:metaitem">
      <xsl:choose>
         <xsl:when test="@name='date' or      @name='juris' or      @name='court' or      @name='country' or      @name='parent-filename' or      @name='PA-PGUID' or      @name='TOPIC-PGUID' or      @name='SUB-TOPIC-PGUID'         "/>
         <xsl:otherwise><!-- @name='parent-docid'and name='lbu-sourcename' are two values that need to be converted for court cases -->
            <metaitem>
               <xsl:attribute name="name">
                  <xsl:value-of select="@name"/>
               </xsl:attribute>
               <xsl:attribute name="value">
                  <xsl:value-of select="@value"/>
               </xsl:attribute>
            </metaitem>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <!--<topicref href="../common/common_rosetta_docinfo.lbu-indexing-terms.dita"/>-->   <!-- <topicref href="../../../common_newest/Rosetta_docinfo.lbu-indexing-terms-LxAdv-classify.classification_classscheme_lbu-subj-scheme.dita"/> -->   <xd:doc>
      <xd:desc>
         <xd:p>
            <xd:b>Instructions <xd:i>[common element]</xd:i>
            </xd:b>
         </xd:p>
         <xd:p>
            <xd:i>docinfo:lbu-indexing-terms/docinfo:lbu-subj</xd:i> becomes 
		    <xd:b>classify:classification[@classscheme="lbu-subj"]/classify:classitem/classify:classitem-identifier/classify:classcode[@normval]</xd:b>. 
		    The content of <xd:i>docinfo:lbu-subj</xd:i> becomes the value for <xd:b>classify:classcode[@normval]</xd:b>.
		</xd:p>
         <xd:p>
            <xd:b>Source XML</xd:b>
         </xd:p>
         <xd:pre>

&lt;docinfo:lbu-indexing-terms&gt;
    &lt;docinfo:lbu-subj&gt;lawnow160&lt;/docinfo:lbu-subj&gt;
&lt;/docinfo:lbu-indexing-terms            

	</xd:pre>
         <xd:p>
            <xd:b>Target XML</xd:b>
         </xd:p>
         <xd:pre>

&lt;classify:classification classscheme="lbu-subj"&gt;
    &lt;classify:classitem&gt;
        &lt;classify:classitem-identifier&gt;
            &lt;classify:classcode normval="lawnow160"/&gt;
        &lt;/classify:classitem-identifier&gt;
    &lt;/classify:classitem&gt;
&lt;/classify:classification&gt;

	</xd:pre>
         <xd:p>
            <xd:b>Note: </xd:b>If source document having multiple <xd:i>docinfo:lbu-subj</xd:i> within <xd:i>docinfo:lbu-indexing-terms</xd:i>, then each subsequent occurrence of the element  <xd:i>docinfo:lbu-subj</xd:i> will <xd:b>becomes</xd:b>
            <xd:b>classify:classitem/classify:classitem-identifier/classify:classcode[@normval]</xd:b> element.</xd:p>
         <xd:p>
            <xd:b>Source XML</xd:b>
         </xd:p>
         <xd:pre>

&lt;docinfo:lbu-indexing-terms&gt;
    &lt;docinfo:lbu-subj&gt;lawnowl60&lt;/docinfo:lbu-subj&gt;
    &lt;docinfo:lbu-subj&gt;lawnow295&lt;/docinfo:lbu-subj&gt;
&lt;/docinfo:lbu-indexing-terms&gt;            

	</xd:pre>
         <xd:p>
            <xd:b>Target XML</xd:b>
         </xd:p>
         <xd:pre>

&lt;classify:classification classscheme="lbu-subj"&gt;
    &lt;classify:classitem&gt;
        &lt;classify:classitem-identifier&gt;
            &lt;classify:classcode normval="lawnow160"/&gt;
        &lt;/classify:classitem-identifier&gt;
    &lt;/classify:classitem&gt;
    &lt;classify:classitem&gt;
        &lt;classify:classitem-identifier&gt;
            &lt;classify:classcode normval="lawnow295"/&gt;
        &lt;/classify:classitem-identifier&gt;
    &lt;/classify:classitem&gt;
&lt;/classify:classification&gt;

	</xd:pre>
         <!--Changes2012-08-30: Created.-->
      </xd:desc>
   </xd:doc>
   <!--  @@@ This file has been autogenerated (although the DITA file already has embedded XSLT).  Remove this comment after manual development complete!  (also remove the embedded XSLT within the DITA above) @@@  -->
   <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_docinfo.lbu-indexing-terms-LxAdv-classify.classification_classscheme_lbu-subj-scheme.dita  -->
   <!--<xsl:message>Rosetta_docinfo.lbu-indexing-terms-LxAdv-classify.classification_classscheme_lbu-subj-scheme.xsl requires manual development!</xsl:message> -->
   <!-- CSN: Added docinfo:lbu-indexing-terms from base.xsl. -->
   <xsl:template match="docinfo:lbu-indexing-terms">
      <xsl:if test="child::docinfo:lbu-juris">
         <xsl:element name="classify:classification">
            <xsl:attribute name="classscheme">docinfo:lbu-juris</xsl:attribute>
            <xsl:apply-templates select="child::docinfo:lbu-juris"/>
         </xsl:element>
      </xsl:if>
      <xsl:if test="child::docinfo:lbu-subj">
         <xsl:element name="classify:classification">
            <xsl:attribute name="classscheme">lbu-subj</xsl:attribute>
            <xsl:apply-templates select="child::docinfo:lbu-subj"/>
         </xsl:element>
      </xsl:if>
   </xsl:template>

   <xsl:template match="docinfo:lbu-subj">
      <xsl:element name="classify:classitem">
         <xsl:element name="classify:classitem-identifier">
            <xsl:element name="classify:classcode">
               <xsl:attribute name="normval">
                  <xsl:value-of select="."/>
               </xsl:attribute>
            </xsl:element>
         </xsl:element>
      </xsl:element>
   </xsl:template>

   <xsl:template match="docinfo:lbu-juris[not($streamID='CA01')]">
      <xsl:element name="classify:classitem">
         <xsl:element name="classify:classitem-identifier">
            <xsl:element name="classify:classcode">
               <xsl:attribute name="normval">
                  <xsl:value-of select="."/>
               </xsl:attribute>
            </xsl:element>
         </xsl:element>
      </xsl:element>
   </xsl:template>
   <!-- Vikas Rohilla : Updated as per the $streamID CA01    -->
   <xsl:template match="docinfo:lbu-juris[$streamID='CA01'][.!='CA' or .!='UK' or .!='NZ']">
      <xsl:element name="classify:classitem">
         <xsl:element name="classify:classitem-identifier">
            <xsl:element name="classify:classname">
               <xsl:value-of select="."/>
            </xsl:element>
         </xsl:element>
      </xsl:element>
   </xsl:template>
   <!--<topicref href="../common/common_rosetta_docinfo.load-date.dita"/>-->   <!-- <topicref href="../../../common_newest/Rosetta_date-Chof-docinfo.load-date-LxAdv-dc.date_lnmeta.datetype_load-date-scheme.dita"/> -->   <xd:doc>
      <xd:desc>
         <xd:p>
            <xd:b>Instructions <xd:i>[common element]</xd:i>
            </xd:b>
         </xd:p>
         <xd:p>
            <xd:i>docinfo:load-date/date</xd:i> becomes
						<xd:b>dc:metadata/dc:date[@lnmeta:datetype="load-date"]</xd:b>.</xd:p>
         <xd:p>
            <xd:b>Note: </xd:b>The format of the content of all <xd:b>dc:date</xd:b> elements must be
					in 'YYYY-MM-DD'.</xd:p>
         <xd:p>
            <xd:b>Source XML</xd:b>
         </xd:p>
         <xd:pre>

&lt;docinfo:load-date&gt;
&lt;date day="01" month="01" year="2006"&gt;01 January 2006&lt;/date&gt;
&lt;/docinfo:load-date&gt;

		</xd:pre>
         <xd:p>
            <xd:b>Target XML</xd:b>
         </xd:p>
         <xd:pre>

&lt;dc:date lnmeta:datetype="load-date"&gt;2006-01-01&lt;/dc:date&gt;

		</xd:pre>
         <xd:p>
            <xd:b>Note: </xd:b>
            <xd:p>The below example encountered in CANADA contents which contains "00" value in
						<xd:i>@day="00"</xd:i> and <xd:i>@month="00"</xd:i>
					attributes.</xd:p>
            <xd:p>
               <xd:b>Per LBU-</xd:b> This was the format used for historical data in which only the year was given. We will remediate the content to have a valid month/day and will send the remediated data in a subsequent reload.</xd:p>
         </xd:p>
         <xd:pre>

&lt;docinfo:load-date&gt;
    &lt;date year="1959" month="00" day="00"&gt;19590000&lt;/date&gt;
&lt;/docinfo:load-date&gt;
                
				</xd:pre>
         <!--Changes2014-01-07:  Added a note along with example which contains "00" value in @day="00" and @month="00" attributes encountered in CANADA contents.2013-08-07: Removed instructions for creating
							dc:date[@lnmeta:datetype="conversion-date"].2012-08-30: Created.-->
      </xd:desc>
   </xd:doc>
   <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_date-Chof-docinfo.load-date-LxAdv-dc.date_lnmeta.datetype_load-date-scheme.dita  -->
   <xsl:template match="docinfo:load-date">
      <xsl:apply-templates/>
   </xsl:template>

   <xsl:template match="docinfo:load-date/date">
      <dc:date lnmeta:datetype="load-date">
         <xsl:value-of select="@year"/>
         <xsl:text>-</xsl:text>
         <xsl:value-of select="@month"/>
         <xsl:text>-</xsl:text>
         <xsl:value-of select="@day"/>
      </dc:date>
   </xsl:template>
   <!-- end topichead  Metadata  -->   <!-- start topichead  General Markup  -->   <!--<topicref href="../common/common_rosetta_bodytext.dita"/>-->   <!-- <topicref href="../../../common_newest/Rosetta_bodytext-LxAdv-bodytext.dita"/> -->   <xd:doc>
      <xd:desc>
         <xd:p>
            <xd:i>bodytext</xd:i> becomes <xd:b>bodytext</xd:b>
            <xd:ul>
               <xd:li>
                  <xd:i>@searchtype</xd:i> attribute should be suppressed.</xd:li>
            </xd:ul>
         </xd:p>
         <xd:p>
            <xd:b>Source XML 1</xd:b>
         </xd:p>
         <xd:pre> &lt;bodytext&gt; &lt;p&gt;&lt;text&gt;This is a judgment of some significance for daily conveyancing practice.&lt;/text&gt;&lt;/p&gt; &lt;/bodytext&gt; </xd:pre>
         <xd:p>
            <xd:b>Target XML 1</xd:b>
         </xd:p>
         <xd:pre> &lt;bodytext&gt; &lt;p&gt;&lt;text&gt;This is a judgment of some significance for daily conveyancing practice.&lt;/text&gt;&lt;/p&gt; &lt;bodytext&gt; </xd:pre>
         <xd:p>
            <xd:b>Source XML 2</xd:b>
         </xd:p>
         <xd:pre> &lt;bodytext searchtype="COMMENTARY"&gt; &lt;p&gt;&lt;text&gt;Final recommendation 5. Interim recommendations pp 19 and 22.&lt;/text&gt;&lt;/p&gt; &lt;/bodytext&gt; </xd:pre>
         <xd:p>
            <xd:b>Target XML 2</xd:b>
         </xd:p>
         <xd:pre> &lt;bodytext&gt; &lt;p&gt;&lt;text&gt;Final recommendation 5. Interim recommendations pp 19 and 22.&lt;/text&gt;&lt;/p&gt; &lt;bodytext&gt; </xd:pre>
         <!--Changes2012-09-06: -->
      </xd:desc>
   </xd:doc>
   <!--Vikas Rohilla : Updated the template for the streamID CA02DC  -->
   <xsl:template match="bodytext">
      <xsl:choose><!-- JL: added the junk characters to get rid of bodytext elements in AU/NZ when there are nbsp and the junk character in them -->
         <xsl:when test="parent::leg:comntry and not(child::*[not(self::p[not(child::*[not(self::text[normalize-space(string-join(., '')) = ('', 'Â ', ' ')])])] or self::hrule)])"/>
         <!-- BRT 11/29/17  WS7053986 suppress this context for UK15cs -->
         <xsl:when test="references and name(preceding-sibling::*[1]) = 'level' and $streamID = 'UK15'"/>
         <xsl:when test="child::glp:note and parent::dig:body and $streamID = 'CA02DC'">
            <xsl:apply-templates select="node() | @*"/>
         </xsl:when>
         <xsl:when test="child::case:embeddedcase and $streamID = 'CA02DS'">
            <xsl:apply-templates select="node() | @*"/>
         </xsl:when>
         <xsl:when test="@searchtype = 'COMMENTARY' and $streamID = ('AU08') and parent::level/@leveltype = 'group'">
            <bodytext>
               <xsl:apply-templates select="@* | node()"/>
            </bodytext>
         </xsl:when>
         <xsl:when test="@searchtype = 'COMMENTARY' and $streamID = ('AU08') and parent::level">
            <bodytext><!-- use case AU08 PS2017050402162840900LNIAUCOURTRULES_input_fcr10081327.xml for bodytext
										PS2017042901112352335LNIAUCOURTRULES_input_voff10081099.xml for glp:note as preceding sibling
										-->
               <xsl:apply-templates select="preceding-sibling::glp:note"/>
               <xsl:apply-templates select="@* | node()"/>
            </bodytext>
         </xsl:when>
         <xsl:when test="parent::entry">
            <xsl:apply-templates select="@* | node()"/>
         </xsl:when>
         <!-- Added instruction for UK15 by Priya Kaushal -->
         <xsl:when test="$streamID = 'UK15'">
            <xsl:if test="not(./child::references[1]) or ./child::references[1]/preceding-sibling::node()">
               <seclaw:bodytext>
                  <xsl:apply-templates select="@* | node()"/>
                  <xsl:for-each select="following-sibling::level">
                     <xsl:call-template name="bodytext-following-level"/>
                  </xsl:for-each>
                  <xsl:for-each select="following-sibling::bodytext/references">
                     <xsl:call-template name="bodytext-references"/>
                  </xsl:for-each>
               </seclaw:bodytext>
            </xsl:if>
            <!--<xsl:choose>
					<xsl:when test="not(./references)">
						<seclaw:bodytext>
							<xsl:apply-templates select="@* | node()"/>
							<xsl:for-each select="following-sibling::level">
								<xsl:call-template name="bodytext-following-level"/>
							</xsl:for-each>
							<xsl:for-each select="following-sibling::bodytext/references">
								
								<xsl:call-template name="bodytext-references"/>
							</xsl:for-each>
						</seclaw:bodytext>
					</xsl:when>
					<xsl:otherwise>
						
						
							<!-\-<xsl:for-each select="following-sibling::level">
								<xsl:call-template name="bodytext-following-level"/>
							</xsl:for-each>-\->
							
						
					</xsl:otherwise>
				</xsl:choose>-->
         </xsl:when>
         <xsl:when test="$streamID ='MY02'">
            <xsl:apply-templates select="node()"/>
         </xsl:when>
         <xsl:when test="$streamID='UK09'">
            <xsl:choose>
               <xsl:when test="footnotegrp/footnote">
                  <bodytext>
                     <xsl:apply-templates select="preceding-sibling::glp:note[parent::level]"/>
                     <xsl:apply-templates select="@* | node()"/>
                  </bodytext>
               </xsl:when>
               <xsl:otherwise>
                  <bodytext>
                     <xsl:apply-templates select="preceding-sibling::glp:note[parent::level]"/>
                     <xsl:apply-templates select="@* | node() except(footnotegrp)"/>
                  </bodytext>
               </xsl:otherwise>
            </xsl:choose>
         </xsl:when>
         <xsl:otherwise>
            <bodytext>
               <xsl:apply-templates select="preceding-sibling::glp:note[parent::level]"/>
               <xsl:apply-templates select="@* | node()"/>
            </bodytext>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>

   <xsl:template match="bodytext[ancestor::leg:comntry and (not(parent::level/@leveltype) and not(parent::level/parent::leg:comntry))][$streamID = ('UK06', 'UK07')]">
      <annot:bodytext>
         <xsl:apply-templates select="@* | node()"/>
      </annot:bodytext>
   </xsl:template>
   <!-- Added template for UK15 by Priya kaushal -->
   <xsl:template name="bodytext-following-level">
      <xsl:choose>
         <xsl:when test="child::heading/title/refpt">
            <seclaw:level>
               <xsl:attribute name="leveltype">
                  <xsl:value-of select="@leveltype"/>
               </xsl:attribute>
               <!--<xsl:apply-templates select="child::heading/title/refpt"/>-->
               <xsl:apply-templates select="@* | node() except (level[preceding-sibling::bodytext])"/>
            </seclaw:level>
         </xsl:when>
         <xsl:when test="child::heading/title and (./child::heading/following-sibling::node())">
            <seclaw:level>
               <xsl:attribute name="leveltype">
                  <xsl:value-of select="@leveltype"/>
               </xsl:attribute>
               <!--<xsl:apply-templates select="child::heading/title"/>-->
               <xsl:apply-templates select="@* | node() except (level[preceding-sibling::bodytext])"/>
            </seclaw:level>
         </xsl:when>
         <xsl:when test="child::heading/title and not(./child::heading/following-sibling::node())">
            <seclaw:level>
               <xsl:attribute name="leveltype">
                  <xsl:value-of select="@leveltype"/>
               </xsl:attribute>
               <!--<xsl:apply-templates select="child::heading/title"/>-->
               <xsl:apply-templates select="@* | node() except (level[preceding-sibling::bodytext])"/>
               <seclaw:bodytext/>
            </seclaw:level>
         </xsl:when>
      </xsl:choose>
   </xsl:template>
   <!-- Added template for UK15 by Priya kaushal -->
   <xsl:template name="bodytext-references">
      <ref:relatedrefs>
         <xsl:apply-templates select="@* | node()"/>
      </ref:relatedrefs>
   </xsl:template>
   <!--***********
		
		BRT 11/26/17 the following template causes an ambiguity error with a more generic template - template match="level[1][parent::level]" 
	WS7051206. This template prevents duplicate seclaw:bodytext entries -->
   <xsl:template match="level[preceding-sibling::bodytext[not(./child::references[1]) or ./child::references[1]/preceding-sibling::node()]][$streamID = 'UK15']"/>

   <xsl:template match="bodytext/@searchtype"/>
   <!--<topicref href="../common/common_rosetta_pgrp.dita"/>-->   <!-- <topicref href="../../../common_newest/Rosetta_pgrp-LxAdv-pgrp.dita"/> -->   <xd:doc>
      <xd:desc>
         <xd:p>
            <xd:b>Instructions <xd:i>[common element]</xd:i>
            </xd:b>
         </xd:p>
         <xd:p>
            <xd:i>pgrp</xd:i> becomes <xd:b>pgrp</xd:b>.</xd:p>
         <xd:p>If <xd:i>pgrp</xd:i> comes with following attributes: <xd:ul>
               <xd:li>
                  <xd:i>@id</xd:i> becomes <xd:b>@xml:id</xd:b>
               </xd:li>
               <xd:li>
                  <xd:i>@subdoc</xd:i> becomes
                        <xd:b>@includeintoc</xd:b>
               </xd:li>
               <xd:li>
                  <xd:i>@toc-caption</xd:i> becomes
                            <xd:b>@alternatetoccaption</xd:b>
               </xd:li>
            </xd:ul>
         </xd:p>
         <xd:p>
            <xd:b>Source XML</xd:b>
         </xd:p>
         <xd:pre>

&lt;pgrp&gt;
    &lt;heading&gt;
        &lt;title&gt;Background&lt;/title&gt;
    &lt;/heading&gt;
    &lt;p&gt;
        &lt;pnum count="1"&gt;[1]&lt;/pnum&gt;
        &lt;text&gt;
            The present applicants are five 
            individuals who at one time or another were engaged by Combined 
            Insurance Company of America (Combined) as insurance agents. 
            In recent times, the five have sued Combined in the 
            Chief Industrial Magistrates&amp;#x2019; Court of New South Wales claiming 
            entitlements both to annual leave and long service leave. 
            One of the principal issues to be resolved in those proceedings is 
            the question of whether the agents were employees of Combined, 
            as they contend, or rather independent contractors, as Combined contends. 
            No doubt the resolution of that issue will involve a close consideration 
            of a broad range of indicia. One of the matters to which 
            Combined points is a term in its contract with each agent by 
            which each agreed, or appears to have agreed, that his relationship 
            with Combined was not one of employment.
        &lt;/text&gt;
    &lt;/p&gt;
    &lt;p&gt;
        &lt;pnum count="2"&gt;[2]&lt;/pnum&gt;
        &lt;text&gt;
            That question is, therefore, now pending before the Chief 
            Industrial Magistrates Court. Notwithstanding that circumstance, 
            Combined has commenced the present proceeding in this court 
            seeking three heads of relief:
        &lt;/text&gt;
    &lt;/p&gt;
&lt;/pgrp&gt;

	</xd:pre>
         <xd:p>
            <xd:b>Target XML</xd:b>
         </xd:p>
         <xd:pre>

&lt;pgrp&gt;
    &lt;heading&gt;
        &lt;title&gt;Background&lt;/title&gt;
    &lt;/heading&gt;
    &lt;p&gt;
        &lt;desig value="1" inline="true"&gt;[1]&lt;/desig&gt;
        &lt;text&gt;
            The present applicants are five 
            individuals who at one time or another were engaged by Combined 
            Insurance Company of America (Combined) as insurance agents. 
            In recent times, the five have sued Combined in the Chief Industrial 
            Magistrates&amp;#x2019; Court of New South Wales claiming entitlements 
            both to annual leave and long service leave. One of the principal 
            issues to be resolved in those proceedings is the question of whether 
            the agents were employees of Combined, as they contend, or rather 
            independent contractors, as Combined contends. No doubt the resolution
            of that issue will involve a close consideration of a broad range of indicia. 
            One of the matters to which Combined points is a term in its contract 
            with each agent by which each agreed, or appears to have agreed, that 
            his relationship with Combined was not one of employment.
        &lt;/text&gt;
    &lt;/p&gt;
    &lt;p&gt;
        &lt;desig value="2" inline="true"&gt;[2]&lt;/desig&gt;
        &lt;text&gt;
            That question is, therefore, now pending before the Chief
            Industrial Magistrates Court. Notwithstanding that circumstance,
            Combined has commenced the present proceeding in this court 
            seeking three heads of relief:
        &lt;/text&gt;
    &lt;/p&gt;  
&lt;/pgrp&gt;

	</xd:pre>
         <xd:p>
            <xd:b>Source XML</xd:b>
         </xd:p>
         <xd:pre>

&lt;pgrp id="BCA.C5.CHECK"&gt;
 &lt;heading&gt;
  &lt;title&gt;Check List for Lease prior to Lodgment (LPI August 2007)&lt;/title&gt;
 &lt;/heading&gt;
 &lt;!-- ETC. --&gt;
&lt;/pgrp&gt; 
        
    </xd:pre>
         <xd:p>
            <xd:b>Target XML</xd:b>
         </xd:p>
         <xd:pre>

&lt;pgrp xml:id="BCA.C5.CHECK"&gt;
 &lt;heading&gt;
  &lt;title&gt;Check List for Lease prior to Lodgment (LPI August 2007)&lt;/title&gt;
 &lt;/heading&gt;
 &lt;!-- ETC. --&gt;
&lt;/pgrp&gt; 
        
    </xd:pre>
         <xd:p>
            <xd:b>Source XML</xd:b>
         </xd:p>
         <xd:pre>

&lt;pgrp subdoc="true" toc-caption="Contributors"&gt;
 &lt;heading&gt;&lt;title&gt;Authors&lt;/title&gt;&lt;/heading&gt;
 &lt;!-- ETC. --&gt;
&lt;/pgrp&gt; 
        
    </xd:pre>
         <xd:p>
            <xd:b>Target XML</xd:b>
         </xd:p>
         <xd:pre>

&lt;pgrp includeintoc="true" alternatetoccaption="Contributors"&gt;
 &lt;heading&gt;&lt;title&gt;Authors&lt;/title&gt;&lt;/heading&gt;
 &lt;!-- ETC. --&gt;
&lt;/pgrp&gt; 
        
    </xd:pre>
         <!--Changes2015-03-17: An attribute @inline
                    get added with desig element even when the
                        sourcepnum is not having that
                        attribute@inline Applicable on CA12 only.2015-02-24: Example updated as per new rule an attribute
                        @inlineget added with
                    desigelement when the sourcepnumis
                    not having that attribute@inline2011-12-15: Created.2013-03-14: Add instruction and example
                        pgrp/@id.2014-02-11: Add instruction and example
                        pgrp/@subdoc and
                        pgrp/@toc-caption. Support Discussion Board: NZ09
                    Commentary, Form and Precedents-->
         <!-- <xsltinclusion>
            <xsl:stylesheet version="2.0">
                <!-\- BRT: this template is in the otherwise condition in base.xsl, but added the attributes to that template. 
                    This rule is similar to a rule in another topic in which pggrp is converted to pggrp.
             -\->
                <xsl:template match="pgrp">
                    <xsl:element name="pgrp">
                        <xsl:if test="@id">
                            <xsl:attribute name="xml:id">
                                <xsl:value-of select="@id"/>
                            </xsl:attribute>
                        </xsl:if>
                        <xsl:if test="@subdoc">
                            <xsl:attribute name="includeintoc">
                                <xsl:value-of select="@subdoc"/>
                            </xsl:attribute>
                        </xsl:if>
                        <xsl:if test="@toc-caption">
                            <xsl:attribute name="alternatetoccaption">
                                <xsl:value-of select="@toc-caption"/>
                            </xsl:attribute>
                        </xsl:if>
                        <xsl:apply-templates/>
                    </xsl:element>
                </xsl:template>
            </xsl:stylesheet>
        </xsltinclusion>-->
      </xd:desc>
   </xd:doc>
   <!--  @@@ This file has been autogenerated (although the DITA file already has embedded XSLT).  Remove this comment after manual development complete!  (also remove the embedded XSLT within the DITA above) @@@  -->
   <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_pgrp-LxAdv-pgrp.dita  -->
   <!--<xsl:message>Rosetta_pgrp-LxAdv-pgrp.xsl requires manual development!</xsl:message> -->
   <!-- BRT: this template is in the otherwise condition in base.xsl, but added the attributes to that template. 
                    This rule is similar to a rule in another topic in which pggrp is converted to pggrp.
             -->
   <xsl:template match="pgrp">
      <xsl:element name="pgrp">
         <xsl:if test="@id">
            <xsl:apply-templates select="@id"/>
         </xsl:if>
         <xsl:if test="@subdoc">
            <xsl:attribute name="includeintoc">
               <xsl:value-of select="@subdoc"/>
            </xsl:attribute>
         </xsl:if>
         <xsl:if test="@toc-caption">
            <xsl:attribute name="alternatetoccaption">
               <xsl:value-of select="@toc-caption"/>
            </xsl:attribute>
         </xsl:if>
         <xsl:apply-templates/>
      </xsl:element>
   </xsl:template>
   <!-- Vikas Rohilla : Template to match the pgrp and the parrent case:constituents and the streamID UK03   -->
   <xsl:template match="pgrp[parent::case:constituents][$streamID=('UK03', 'UK04')]">
      <courtcase:arguments>
         <bodytext>
            <pgrp>
               <xsl:apply-templates/>
            </pgrp>
         </bodytext>
      </courtcase:arguments>
   </xsl:template>
   <!-- Satbir : Template for creating textitem as a wrapper of ref:link-->
   <xsl:template match="pgrp[child::link][$streamID='AU18']">
      <pgrp>
         <xsl:for-each select="node()">
            <xsl:choose>
               <xsl:when test="self::link">
                  <textitem>
                     <xsl:apply-templates select="self::link"/>
                  </textitem>
               </xsl:when>
               <xsl:otherwise>
                  <xsl:apply-templates select="."/>
               </xsl:otherwise>
            </xsl:choose>
         </xsl:for-each>
      </pgrp>
   </xsl:template>
   <!-- Awantika: update to create wrapper around pgrp -->   <!--Awantika: Removed this and added it to case:appendix -->   <!-- <xsl:template xmlns:ditaarch="http://dita.oasis-open.org/architecture/2005/" match="pgrp[parent::case:appendix and $streamID='HK03']">
        <xsl:variable name="name" select="local-name()"/>
        
        
        <xsl:if test="local-name(preceding-sibling::*[position()=1]) != $name">
            <bodytext>
            <pgrp>
                <xsl:apply-templates />
                
                <!-\- Match the next sibling if it has the same name -\->
                <xsl:apply-templates select="following-sibling::*[1][local-name()=$name]" mode="nextpg"/>
            </pgrp>
            </bodytext>
        </xsl:if>
    </xsl:template>
    
    
    <xsl:template match="pgrp" mode="nextpg">
        <xsl:variable name="name" select="local-name()"/>
        <pgrp xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"><xsl:apply-templates /></pgrp>
        <xsl:apply-templates select="following-sibling::*[1][local-name()=$name]" mode="nextpg"/>
    </xsl:template>-->   <!--<topicref href="../common/common_rosetta_p.dita"/>-->   <!-- <topicref href="../../../common_newest/Rosetta_p-LxAdv-p.dita"/> -->   <xd:doc>
      <xd:desc>
         <xd:p>Except where otherwise noted, <xd:i>p</xd:i> becomes
                        <xd:b>p</xd:b> comes with <xd:i>@indent</xd:i> becomes
                        <xd:b>@indent</xd:b>. <xd:b>@indent</xd:b> has tokenized
                    value in NewLexis schema. And <xd:i>p/@style</xd:i> becomes
                        <xd:b>p/@align</xd:b>. <xd:b>@align</xd:b> has tokenized
                    value in NewLexis Schema. </xd:p>
         <xd:p>
            <xd:b>Source XML</xd:b>
         </xd:p>
         <xd:pre> &lt;blockquote&gt; &lt;p indent="hang"&gt; &lt;text&gt;Note: There is no
                    penalty for this Rule.&lt;/text&gt;&lt;/p&gt; &lt;/blockquote&gt; </xd:pre>
         <xd:p>
            <xd:b>Target XML</xd:b>
         </xd:p>
         <xd:pre> &lt;blockquote&gt; &lt;p indent="hang"&gt; &lt;text&gt;Note: There is no
                    penalty for this Rule.&lt;/text&gt; &lt;/p&gt; &lt;/blockquote&gt; </xd:pre>
         <xd:p>
            <xd:b>Note: </xd:b>
            <xd:b>If <xd:i>p</xd:i> comes with <xd:i>@i</xd:i> then
                        <xd:i>@i</xd:i> will get dropped in NewLexis.</xd:b>
         </xd:p>
         <xd:p>
            <xd:b>Source XML</xd:b>
         </xd:p>
         <xd:pre> &lt;blockquote&gt; &lt;p i="3.5" indent="hang"&gt; &lt;text&gt;Note:
                    There is no penalty for this Rule.&lt;/text&gt;&lt;/p&gt; &lt;/blockquote&gt;
                </xd:pre>
         <xd:p>
            <xd:b>Target XML</xd:b>
         </xd:p>
         <xd:pre> &lt;blockquote&gt; &lt;p indent="hang"&gt; &lt;text&gt;Note: There is no
                    penalty for this Rule.&lt;/text&gt; &lt;/p&gt; &lt;/blockquote&gt; </xd:pre>
         <xd:p>
            <xd:b>Note: </xd:b>
            <xd:b>If <xd:i>p</xd:i> comes with <xd:i>@nl</xd:i> this means the
                        <xd:b>p</xd:b> should start with the same number of
                        <xd:b>proc:nl</xd:b> elements before any text content in order to
                    maintain vertical white space.</xd:b>
         </xd:p>
         <xd:p>
            <xd:b>Source XML</xd:b>
         </xd:p>
         <xd:pre> &lt;p nl="1"&gt; &lt;text&gt; &lt;emph typestyle="bf"&gt;EDITORIAL
                    NOTE&lt;/emph&gt; ... &lt;/text&gt; &lt;/p&gt; </xd:pre>
         <xd:p>
            <xd:b>Target XML</xd:b>
         </xd:p>
         <xd:pre> &lt;p&gt; &lt;text&gt; &lt;proc:nl/&gt; &lt;emph
                    typestyle="bf"&gt;EDITORIAL NOTE&lt;/emph&gt; ... &lt;/text&gt; &lt;/p&gt;
                </xd:pre>
         <xd:p>
            <xd:b>Note: </xd:b>If <xd:i>p</xd:i> comes with <xd:i>@nl=”0”</xd:i>, this means
                the first <xd:i>&lt;nl/&gt;</xd:i> encountered within the
                    <xd:i>&lt;p&gt;</xd:i> should be omitted.</xd:p>
         <xd:p>
            <xd:b>Source XML</xd:b>
         </xd:p>
         <xd:pre> &lt;p nl="0"&gt; &lt;text&gt; &lt;nl/&gt; &lt;ci:cite
                    searchtype="LEG-REF"&gt; &lt;ci:content&gt;Companies Code (NSW)
                    s129&lt;/ci:content&gt; &lt;/ci:cite&gt; &lt;/text&gt; &lt;/p&gt; </xd:pre>
         <xd:p>
            <xd:b>Target XML</xd:b>
         </xd:p>
         <xd:pre> &lt;p&gt; &lt;text&gt; &lt;lnci:cite&gt; &lt;lnci:content&gt;Companies
                    Code (NSW) s129&lt;/lnci:content&gt; &lt;/lnci:cite&gt; &lt;/text&gt; &lt;/p&gt;
                </xd:pre>
         <xd:p>
            <xd:b>Source XML</xd:b>
         </xd:p>
         <xd:pre> &lt;p style="right"&gt; &lt;text&gt;&lt;emph typestyle="it"&gt;Last
                    updated: June 2011&lt;/emph&gt;&lt;/text&gt; &lt;/p&gt; </xd:pre>
         <xd:p>
            <xd:b>Target XML</xd:b>
         </xd:p>
         <xd:pre> &lt;p align="right"&gt; &lt;text&gt;&lt;emph typestyle="it"&gt;Last
                    updated: June 2011&lt;/emph&gt;&lt;/text&gt; &lt;/p&gt; </xd:pre>
         <xd:p>
            <xd:b>Exceptional scenario for NZ07-Linxplus</xd:b>
         </xd:p>
         <xd:p>If <xd:i>p</xd:i> or <xd:i>p/@nl="0"</xd:i> is a child of
                        <xd:i>references</xd:i> element then merge all
                        <xd:i>p</xd:i> or <xd:i>p/@nl="0"</xd:i> in a single
                        <xd:b>p</xd:b> in target. Also all occurences of
                        <xd:i>nl</xd:i> within <xd:i>text</xd:i> becomes
                        <xd:b>proc:nl</xd:b>. Refer below example.</xd:p>
         <xd:p>
            <xd:b>Source XML</xd:b>
         </xd:p>
         <xd:pre> &lt;references referencetype="statutes"&gt; &lt;p&gt; &lt;text&gt;
                    &lt;process-ignore process="kwd"&gt; &lt;emph typestyle="bf"&gt;References to
                    Legislation&lt;/emph&gt; &lt;/process-ignore&gt; &lt;/text&gt; &lt;/p&gt; &lt;p
                    nl="0"&gt; &lt;text&gt;&lt;ci:cite
                    searchtype="LEG-REF"&gt;&lt;ci:content&gt;&lt;citefragment
                    searchtype="LEG-NAME-REF"&gt;&lt;remotelink service="DOC-ID" dpsi="0069"
                    remotekey1="REFPTID" refpt="2000A38"&gt;Bail Act
                    2000&lt;/remotelink&gt;&lt;/citefragment&gt;&lt;/ci:content&gt;&lt;/ci:cite&gt;
                    &lt;ci:cite searchtype="LEG-REF"&gt;&lt;ci:content&gt;&lt;citefragment
                    searchtype="LEG-PROV-REF"&gt;&lt;remotelink service="DOC-ID" dpsi="0069"
                    remotekey1="REFPTID"
                    refpt="2000A38S8"&gt;s8&lt;/remotelink&gt;&lt;/citefragment&gt;&lt;/ci:content&gt;&lt;/ci:cite&gt;,
                    &lt;ci:cite searchtype="LEG-REF"&gt;&lt;ci:content&gt;&lt;citefragment
                    searchtype="LEG-PROV-REF"&gt;&lt;remotelink service="DOC-ID" dpsi="0069"
                    remotekey1="REFPTID" refpt="2000A38S13"
                    &gt;s13&lt;/remotelink&gt;&lt;/citefragment&gt;&lt;/ci:content&gt;&lt;/ci:cite&gt;&lt;/text&gt;
                    &lt;/p&gt; &lt;p nl="0"&gt; &lt;text&gt; &lt;nl/&gt; &lt;ci:cite
                    searchtype="LEG-REF"&gt; &lt;ci:content&gt; &lt;citefragment
                    searchtype="LEG-NAME-REF"&gt; &lt;remotelink service="DOC-ID" dpsi="0069"
                    remotekey1="REFPTID" refpt="1975A116"&gt;Misuse of Drugs Act
                    1975&lt;/remotelink&gt; &lt;/citefragment&gt; &lt;/ci:content&gt;
                    &lt;/ci:cite&gt; &lt;/text&gt; &lt;/p&gt; &lt;p nl="0"&gt; &lt;text&gt;
                    &lt;nl/&gt; &lt;ci:cite searchtype="LEG-REF"&gt; &lt;ci:content&gt;
                    &lt;citefragment searchtype="LEG-NAME-REF"&gt; &lt;remotelink service="DOC-ID"
                    dpsi="0069" remotekey1="REFPTID" refpt="2002A9"&gt;Sentencing Act
                    2002&lt;/remotelink&gt; &lt;/citefragment&gt; &lt;/ci:content&gt;
                    &lt;/ci:cite&gt; &lt;ci:cite searchtype="LEG-REF"&gt; &lt;ci:content&gt;
                    &lt;citefragment searchtype="LEG-PROV-REF"&gt; &lt;remotelink service="DOC-ID"
                    dpsi="0069" remotekey1="REFPTID" refpt="2002A9S65"&gt;s65&lt;/remotelink&gt;
                    &lt;/citefragment&gt; &lt;/ci:content&gt; &lt;/ci:cite&gt; &lt;/text&gt;
                    &lt;/p&gt; &lt;/references&gt; </xd:pre>
         <xd:p>
            <xd:b>Target XML</xd:b>
         </xd:p>
         <xd:pre> &lt;ref:relatedrefs referencetype="statutes"&gt; &lt;bodytext&gt;
                    &lt;p&gt; &lt;text&gt; &lt;emph typestyle="bf"&gt;References to
                    Legislation&lt;/emph&gt; &lt;/text&gt; &lt;text&gt; &lt;lnci:cite
                    type="legislation"&gt; &lt;lnci:content&gt; &lt;ref:crossreference
                    crossreferencetype="seeAlso"&gt; &lt;ref:content&gt;Bail Act
                    2000&lt;/ref:content&gt; &lt;ref:locator&gt; &lt;ref:locator-key&gt;
                    &lt;ref:key-name name="DOC-ID"/&gt; &lt;ref:key-value value="0069-2000A38"/&gt;
                    &lt;/ref:locator-key&gt; &lt;/ref:locator&gt; &lt;/ref:crossreference&gt;
                    &lt;/lnci:content&gt; &lt;/lnci:cite&gt; &lt;lnci:cite type="legislation"&gt;
                    &lt;lnci:content&gt; &lt;ref:crossreference crossreferencetype="seeAlso"&gt;
                    &lt;ref:content&gt;s8&lt;/ref:content&gt; &lt;ref:locator&gt;
                    &lt;ref:locator-key&gt; &lt;ref:key-name name="DOC-ID"/&gt; &lt;ref:key-value
                    value="0069-2000A38S8"/&gt; &lt;/ref:locator-key&gt; &lt;/ref:locator&gt;
                    &lt;/ref:crossreference&gt; &lt;/lnci:content&gt; &lt;/lnci:cite&gt;,
                    &lt;lnci:cite type="legislation"&gt;&lt;lnci:content&gt; &lt;ref:crossreference
                    crossreferencetype="seeAlso"&gt; &lt;ref:content&gt;s13&lt;/ref:content&gt;
                    &lt;ref:locator&gt; &lt;ref:locator-key&gt; &lt;ref:key-name name="DOC-ID"/&gt;
                    &lt;ref:key-value value="0069-2000A38S13"/&gt; &lt;/ref:locator-key&gt;
                    &lt;/ref:locator&gt; &lt;/ref:crossreference&gt; &lt;/lnci:content&gt;
                    &lt;/lnci:cite&gt; &lt;proc:nl/&gt; &lt;lnci:cite type="legislation"&gt;
                    &lt;lnci:content&gt; &lt;ref:crossreference crossreferencetype="seeAlso"&gt;
                    &lt;ref:content&gt;Misuse of Drugs Act 1975&lt;/ref:content&gt;
                    &lt;ref:locator&gt; &lt;ref:locator-key&gt; &lt;ref:key-name name="DOC-ID"/&gt;
                    &lt;ref:key-value value="0069-1975A116"/&gt; &lt;/ref:locator-key&gt;
                    &lt;/ref:locator&gt; &lt;/ref:crossreference&gt; &lt;/lnci:content&gt;
                    &lt;/lnci:cite&gt; &lt;proc:nl/&gt; &lt;lnci:cite type="legislation"&gt;
                    &lt;lnci:content&gt; &lt;ref:crossreference crossreferencetype="seeAlso"&gt;
                    &lt;ref:content&gt;Sentencing Act 2002&lt;/ref:content&gt; &lt;ref:locator&gt;
                    &lt;ref:locator-key&gt; &lt;ref:key-name name="DOC-ID"/&gt; &lt;ref:key-value
                    value="0069-2002A9"/&gt; &lt;/ref:locator-key&gt; &lt;/ref:locator&gt;
                    &lt;/ref:crossreference&gt; &lt;/lnci:content&gt; &lt;/lnci:cite&gt;
                    &lt;lnci:cite type="legislation"&gt; &lt;lnci:content&gt; &lt;ref:crossreference
                    crossreferencetype="seeAlso"&gt; &lt;ref:content&gt;s65&lt;/ref:content&gt;
                    &lt;ref:locator&gt; &lt;ref:locator-key&gt; &lt;ref:key-name name="DOC-ID"/&gt;
                    &lt;ref:key-value value="0069-2002A9S65"/&gt; &lt;/ref:locator-key&gt;
                    &lt;/ref:locator&gt; &lt;/ref:crossreference&gt; &lt;/lnci:content&gt;
                    &lt;/lnci:cite&gt; &lt;/text&gt; &lt;/p&gt; &lt;/bodytext&gt;
                    &lt;/ref:relatedrefs&gt; </xd:pre>
         <xd:p>
            <xd:p>
               <xd:b>Note: </xd:b>If source document is having the input scenario
                            "<xd:i>pgrp/p/leg:histnote</xd:i>" then conversion needs to
                        drop '<xd:i>p</xd:i>' markup in target conversion and target
                        mapping xpath is
                        "<xd:b>pgrp/note[@notetype="historical"]</xd:b>".</xd:p>
         </xd:p>
         <xd:p>
            <xd:b>Note: </xd:b>For Stream 'HK06'</xd:p>
         <xd:p> When the source has <xd:i>deflist/defitem/p/text</xd:i> then omit
                        <xd:i>p/text</xd:i> and retain <xd:i>defitem</xd:i>.
                </xd:p>
         <!--Changes2014-03-14: Removed Colons from Labels.. DB item
                        #12552012-10-05: Removed @i from the example.2013-03-14: Add instruction and example
                            p/@style.2013-10-09: Added instruction and example
                            p comes with
                    @nl=”0”.2013-10-25: Added instruction and example
                            p/@nl="0" comes in
                            references.2013-11-21: Updated instruction and example
                            p or p/@nl="0" comes in
                            references, this change directly affects
                        NZ07.2013-12-04: Updated target example when
                            p or p/@nl="0" comes in
                            references, this change directly affects
                        NZ07.-->
      </xd:desc>
   </xd:doc>
   <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_p-LxAdv-p.dita  -->
   <!-- BRT: this template is the otherwise condition in match="p" in base.xsl. 
                 The rules in this topic for handling @nl are different than the existing XSLT, which ignores and suppresses the element. 
                 Adding template match="p[@nl!='']/text" to handle this rule. *** Also, did not address NZ07 exception scenario** 
                 
       JL: seems like the @nl handling  will not behave properly unless we move it to the text template.  
        I moved it to XSLT/ContentArch/Rosetta-to-LA/modules/nonamespace/Rosetta_text-LxAdv-text-with-test-for-whitespace-content.xsl
        PLEASE LOOK THERE!!!!!! IF YOU NEED TO ADD IT TO ANOTHER MODULE FOR ELEMENT <text> WE MIGHT WANT TO FURTHER MODULARIZE IT -->
   <xsl:template match="p">
      <xsl:variable name="docinfoidtext" select="/*/docinfo/docinfo:doc-id/text()"/>
      <xsl:choose><!-- Priya Kaushal: Added below code for UK 15 -->
         <xsl:when test="parent::references[$streamID = 'UK15']">
            <bodytext>
               <p>
                  <xsl:apply-templates select="@* | node()"/>
               </p>
            </bodytext>
         </xsl:when>
         <xsl:when test="parent::in:body[$streamID = 'AU16']">
            <p>
               <xsl:apply-templates select="node()"/>
            </p>
         </xsl:when>
         <xsl:when test="parent::in:body">
            <bodytext>
               <p>
                  <xsl:apply-templates select="node()"/>
               </p>
            </bodytext>
         </xsl:when>
         <!-- Vikas Rohilla : Included for the stream UK12          -->
         <xsl:when test="parent::blockquote[$streamID = 'UK12']">
            <p>
               <xsl:apply-templates select="@* | refpt, node() except refpt"/>
            </p>
         </xsl:when>
         <xsl:when test="child::text/child::note[@notetype!='xref'][$streamID = 'UK12']">
            <xsl:apply-templates select="@* | refpt, node() except refpt"/>
         </xsl:when>
         <xsl:when test="(parent::frm:div                  | parent::frm:body                  | parent::clause[ancestor::frm:div | ancestor::frm:body]                  | parent::li[ancestor::frm:body and not(parent::l/parent::entry)])[not(ancestor::footnote or ancestor::note)]                 [$streamID = ('NZ11','AU10')]">
            <form:p>
               <xsl:if test="not(@style) and child::text[1]/@align[.!='']">
                  <xsl:copy-of select="child::text[1]/@align"/>
               </xsl:if>
               <xsl:apply-templates select="@* | refpt, node() except refpt"/>
            </form:p>
         </xsl:when>
         <xsl:when test="(parent::frm:div | parent::frm:body | parent::clause[ancestor::frm:div | ancestor::frm:body] | parent::li[ancestor::frm:body])[not(ancestor::footnote or ancestor::note)][$streamID = 'UK12']">
            <form:p>
               <xsl:if test="not(@style) and child::text[1]/@align[.!='']">
                  <xsl:copy-of select="child::text[1]/@align"/>
               </xsl:if>
               <xsl:apply-templates select="@* | refpt, node() except refpt"/>
            </form:p>
         </xsl:when>
         <xsl:when test="(parent::sigblock[ancestor::frm:div | ancestor::frm:body])[not(ancestor::footnote)][$streamID = 'UK12']">
            <form:line>
               <xsl:apply-templates select="@* | node()"/>
            </form:line>
         </xsl:when>
         <!-- MDS - occurs in HK04 -  child is leg:histnote then the p element is not output and simply passed through.-->
         <!-- JL revised to handle the many scenarios when p has other children than leg:histnote
            also revised to strip the p wrapper in certain conditions when legfragment is a child
            -->
         <xsl:when test="leg:histnote | blockquote[legfragment and not(child::*[2])][parent::p[parent::*:bodytext or parent::pgrp or parent::li or parent::fnbody or parent::glp:note or parent::case:judgmentbody or parent::case:appendix]]"><!--<xsl:apply-templates select="node()"/>-->
            <xsl:for-each-group select="*"
                                group-adjacent="                     if (self::leg:histnote or self::blockquote[legfragment and not(child::*[2])][parent::p[parent::*:bodytext or parent::pgrp or parent::li or parent::fnbody or parent::glp:note or parent::case:judgmentbody or parent::case:appendix]]) then                             0                         else                             1">
               <xsl:choose>
                  <xsl:when test="current-grouping-key() = 0">
                     <xsl:apply-templates select="current-group()"/>
                  </xsl:when>
                  <!--Satbir: Added below template for changing order of reft before desig in NZ03 only-->
                  <xsl:when test="$streamID = 'NZ03'">
                     <p>
                        <xsl:apply-templates select="following-sibling::refpt[preceding-sibling::pnum]"/>
                        <xsl:for-each select="current-group()">
                           <xsl:apply-templates select="current() except self::refpt"/>
                        </xsl:for-each>
                     </p>
                  </xsl:when>
                  <xsl:otherwise>
                     <p>
                        <xsl:apply-templates select="parent::p/@*"/>
                        <xsl:if test="not(parent::p/@style)">
                           <xsl:copy-of select="parent::p/text[1]/@align"/>
                        </xsl:if>
                        <!-- MDS 2017-08-08 Added handling for refpt to reorder in output-->
                        <xsl:apply-templates select="current-group()[self::refpt]"/>
                        <xsl:for-each select="current-group()">
                           <xsl:apply-templates select=". except(self::refpt)"/>
                        </xsl:for-each>
                     </p>
                  </xsl:otherwise>
               </xsl:choose>
            </xsl:for-each-group>
         </xsl:when>
         <!-- JL: funky NZ07 case where we collapse p or p[@nl='0'] element children of references 
            full logic isn't given but I assume we don't do the collapse if the reference has any non-p children or if 
            references has any p children where the @nl value is not zero or we're going to be here all year -->
         <xsl:when test="parent::references[not(child::*[not(self::p[@nl = '0' or not(@nl)])])] and starts-with($streamID, 'NZ07') and (not(@nl) or @nl = '0') and not(preceding-sibling::p)">
            <xsl:element name="p"
                         namespace="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"><!-- JL this "if" condition that moves text align att value to the parent p is generic and cannot be used for CA -->
               <xsl:apply-templates select="@*"/>
               <xsl:if test="not(@style) and child::text[@align[. != '']] and not(child::text[2]) and not(starts-with($streamID, 'CA'))">
                  <xsl:attribute name="align">
                     <xsl:value-of select="text/@align"/>
                  </xsl:attribute>
               </xsl:if>
               <!-- JL: the sample seems to indicate they want to collapse some of the text child elements too, 
                        but doesn't give the logic for doing that so I'm GUESSING based on the sample!
                        My guess at the logic used: if the @nl has the same value as (or is missing the same as) the previous p, then collapse 
                        text element children too.                          
                        This needs to be very carefully tested when we test  NZ07 data.
                    
                    -->
               <xsl:choose>
                  <xsl:when test="child::*[not(self::text)] or following-sibling::p[child::*[not(self::text)]]">
                     <xsl:apply-templates select="refpt | following-sibling::p/refpt"/>
                     <xsl:apply-templates select="*[not(self::refpt)] | text()"/>
                     <!-- if any p elements have ANY child elements other than <text>, don't merge child text nodes. cleaner -->
                     <xsl:for-each select="following-sibling::p">
                        <xsl:apply-templates select="*[not(self::refpt)] | text()"/>
                     </xsl:for-each>
                  </xsl:when>
                  <xsl:otherwise><!-- can assume p has only text children, yay! And we have also whittled the possibilities down to "p contains an nl att or not" -->
                     <xsl:for-each-group select="self::p | following-sibling::p" group-adjacent="exists(@nl)">
                        <xsl:element name="text"
                                     namespace="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
                           <xsl:apply-templates select="current-group()[1]/text[1]/@*"/>
                           <xsl:for-each select="current-group()">
                              <xsl:apply-templates select="text/node()"/>
                           </xsl:for-each>
                        </xsl:element>
                     </xsl:for-each-group>
                  </xsl:otherwise>
               </xsl:choose>
            </xsl:element>
         </xsl:when>
         <!-- suppresses context nodes already accessed in previous condition -->
         <xsl:when test="parent::references[not(child::*[not(self::p[@nl = '0' or not(@nl)])])] and starts-with($streamID, 'NZ07') and (not(@nl) or @nl = '0') and preceding-sibling::p"/>
         <xsl:when test="starts-with($streamID, 'CA') and count(text) &gt; 1 and not(@style) and text[@align]">
            <xsl:for-each-group select="*" group-adjacent="concat('', @align)">
               <xsl:element name="p"
                            namespace="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
                  <xsl:apply-templates select="parent::p/@*"/>
                  <xsl:copy-of select="@align"/>
                  <xsl:for-each select="current-group()">
                     <xsl:apply-templates select="."/>
                  </xsl:for-each>
               </xsl:element>
            </xsl:for-each-group>
         </xsl:when>
         <!-- Awantika: conditional change for AU20, using double slashes as full path is not working here  -->
         <xsl:when test="//source_cttr:annotations/child::heading/note/h[. = 'ActName' or . = 'Act Name'] and $streamID = 'AU20'">
            <xsl:apply-templates/>
         </xsl:when>
         <xsl:when test="parent::bodytext[$streamID = 'CA12']">
            <p>
               <xsl:if test="child::text/ci:cite[not(preceding::p/text/ci:cite)] and not(child::text/@searchtype='CASE-NAME')">
                  <ref:anchor>
                     <xsl:attribute name="id">dict-CASENAME-CITE</xsl:attribute>
                     <xsl:attribute name="anchortype">local</xsl:attribute>
                  </ref:anchor>
               </xsl:if>
               <xsl:apply-templates select="node()"/>
            </p>
         </xsl:when>
         <!-- 2017-10-17 - MDS: Added due to Webstar 7025682 -->
         <xsl:when test="parent::l[$streamID='UK12']">
            <listitem>
               <bodytext>
                  <p>
                     <xsl:apply-templates select="@* | node()"/>
                  </p>
               </bodytext>
            </listitem>
         </xsl:when>
         <xsl:when test="$streamID='UK22CF' and parent::legfragment and (preceding-sibling::leg:prelim or preceding-sibling::leg:info)">
            <xsl:element name="primlaw:bodytext">
               <xsl:element name="p">
                  <xsl:apply-templates select="refpt"/>
                  <xsl:apply-templates select="*[not(self::refpt)] | text()"/>
               </xsl:element>
            </xsl:element>
         </xsl:when>
         <xsl:when test="$streamID='HK07' and parent::bodytext[parent::level[@leveltype='prec' or @leveltype='prec.grp' or @leveltype='precgrp' or @leveltype='precgrp1' or @leveltype='precgrp2' or parent::comm.chap or ancestor::level[@leveltype = 'prec.grp']]]">
            <form:p>
               <xsl:apply-templates select="node() except inlineobject"/>
            </form:p>
         </xsl:when>
         <!--    <xsl:when test="$streamID='AU20' and contains(lower-case($docinfoidtext),'overview') and ancestor::source_cttr:annotations[not(@annotgroup='prov-al')]/heading/note[descendant::lnlink/marker['List of Provisions' or 'Defined Terms' or 'Government Website'][not(@id='OI13')]] | source_cttr:annotations[not(@annotgroup='prov-al')]/heading/remotelink">
                <xsl:apply-templates/>
            </xsl:when>-->
         <!-- Awantika:2018-02-15- mapping refpt inside <p>. Webstar # 7116564 -->
         <xsl:when test="$streamID='CA02CC' and preceding-sibling::heading[child::title/refpt]">
            <p>
               <xsl:apply-templates select="/CASEDOC/case:body/case:headnote/case:decisionsummary/heading/title/refpt"/>
               <xsl:apply-templates/>
            </p>
         </xsl:when>
         <xsl:otherwise>
            <xsl:choose><!-- Awantika: 2017-10-26- Added the condition to check multiple text/@align in one p
                   as per CI instructions which is currently only for Canada applying for HK07. 
                   Creating seperate <p> for each text/@align.-->
               <xsl:when test="count(child::text/@align) &gt;= 1 and $streamID='HK07'">
                  <xsl:for-each select="child::*">
                     <xsl:element name="p">
                        <xsl:if test="self::*[1]/@align">
                           <xsl:attribute name="align">
                              <xsl:value-of select="self::*[1]/@align"/>
                           </xsl:attribute>
                        </xsl:if>
                        <xsl:apply-templates select="self::*"/>
                     </xsl:element>
                  </xsl:for-each>
               </xsl:when>
               <!-- Awantika:2017-10-27: p/text will be converted to <textitem> for AU20 for specific scenario -->
               <xsl:when test="$streamID='AU20' and contains(lower-case($docinfoidtext),'history') and /CITATORDOC/source_cttr:body/source_cttr:content/source_cttr:annotations/heading/note[@id='HI4']| /CITATORDOC/source_cttr:body/source_cttr:content/source_cttr:annotations/heading/title[.='Assent']">
                  <xsl:apply-templates select="@* | node()"/>
               </xsl:when>
               <!--Satbir: Added mdule for handling glp:note under p/text-->
               <xsl:when test="$streamID='NZ03' and child::text/child::glp:note[not(child::node except glp:note)][ancestor::case:judgmentbody]">
                  <xsl:apply-templates select="child::text/child::glp:note"/>
               </xsl:when>
               <!-- Awntika: 2017-12-13- Updated for webstar# 7065522 -->
               <xsl:when test="$streamID='AU20' and contains(lower-case($docinfoidtext),'overview') and parent::note[ancestor::source_cttr:annotations[@id='OI2']/heading/title[.,'Former Title']]">
                  <xsl:apply-templates select="node()"/>
               </xsl:when>
               <xsl:otherwise>
                  <p><!-- JL this "if" condition that moves text align att value to the parent p is generic and cannot be used for CA -->
                     <xsl:apply-templates select="@*"/>
                     <!-- <xsl:if
                        test="not(@style) and child::text[@align[. != '']] and not(child::text[2]) and not(starts-with($streamID, 'CA'))">
                        <xsl:attribute name="align">
                            <xsl:value-of select="text/@align"/>
                        </xsl:attribute>
                    </xsl:if>-->
                     <!--                   Chaitanya :Making the for the P/@align as CA08 require this change, Luckabaugh, Joy H. (LNG-HBE) <Joy.Luckabaugh@lexisnexis.com> has approved to change this module  -->
                     <xsl:if test="not(@style) and child::text[@align[. != '']] and not(child::text[2])">
                        <xsl:attribute name="align">
                           <xsl:value-of select="text/@align"/>
                        </xsl:attribute>
                     </xsl:if>
                     <!-- JD: 2017-07-25: modifying the above for NZ18 create @align from only the first text/align so as to not concat -->
                     <xsl:if test="not(@style) and child::text[@align[. != '']]                    and $streamID=('NZ18','AU04','NZ13')">
                        <xsl:attribute name="align"><!-- take the @align from the first child <text> (don't concatenate all child text/@align values) -->
                           <xsl:value-of select="text[1]/@align"/>
                        </xsl:attribute>
                     </xsl:if>
                     <!-- Vikas Rohilla : Created desig altdesig before other element to meet schema ordering                  -->
                     <!-- create ref:anchor before other elements to meet schema ordering -->
                     <xsl:if test="not($streamID=('UK06','UK07'))">
                        <xsl:apply-templates select="(refpt | text/refpt), edpnum, pnum"/>
                     </xsl:if>
                     <!-- the above is the wrong order for legis and regulation if pnum goes to desig and edpnum goes to altdesig  -->
                     <xsl:if test="$streamID=('UK06','UK07')">
                        <xsl:apply-templates select="(refpt | text/refpt), pnum, edpnum"/>
                     </xsl:if>
                     <!-- JD: 2017-07-31: added loop in order to properly wrap p/link elements and proces other children when present -->
                     <xsl:for-each select="*">
                        <xsl:choose><!--SS: Added this condition for p/link becomes p/text/ref:lnlink - HK07--><!-- JD: 2017-07-28: this produces an extra <text> when there is a child <link> AND a child <text>;
                		adding "and not(child::text)" -->
                           <xsl:when test="self::link">
                              <xsl:element name="text"><!--<xsl:apply-templates />-->
                                 <xsl:call-template name="generic-link"/>
                              </xsl:element>
                              <!--SS: Added "except link" condition for handling p/link - HK07-->
                              <!--<xsl:apply-templates
                					select="*[not(self::refpt | self::edpnum | self::pnum)] except link | text()"/>-->
                           </xsl:when>
                           <!--SS: Added template for converting images from inline to figure/inline-->
                           <!-- Awantika: 2018-01-12- inlineobject was getting dropped when coming in text for AU01. -->
                           <xsl:when test="child::inlineobject[$streamID=('AU18','AU01')]">
                              <text>
                                 <xsl:apply-templates/>
                              </text>
                           </xsl:when>
                           <xsl:otherwise>
                              <xsl:apply-templates select=".[not(self::refpt | self::edpnum | self::pnum)]"/>
                           </xsl:otherwise>
                        </xsl:choose>
                     </xsl:for-each>
                     <!-- Vikas Rohilla : Created desig altdesig before other element to meet schema ordering                  -->
                     <!-- create ref:anchor before other elements to meet schema ordering -->
                     <!--<xsl:apply-templates select="(refpt | text/refpt), edpnum, pnum"/>
                    <!-\-SS: Added "except link" condition for handling p/link - HK07-\->
                	<!-\- JD: removing 'except link' -\->
                		<xsl:apply-templates
                			select="*[not(self::refpt | self::edpnum | self::pnum)] except link | text()"/>-->
                     <xsl:if test="note[@notetype='xref'] and $streamID='UK11DN'">
                        <xsl:for-each-group select="*" group-adjacent="if (self::note) then 1 else 0">
                           <xsl:choose>
                              <xsl:when test="current-grouping-key()=1"><!--  <xsl:apply-templates select="ancestor::p/text"/>-->
                                 <text>
                                    <marginnote>
                                       <ref:anchor>
                                          <xsl:attribute name="id">
                                             <xsl:value-of select="generate-id()"/>
                                          </xsl:attribute>
                                          <xsl:attribute name="anchortype">
                                             <xsl:text>local</xsl:text>
                                          </xsl:attribute>
                                       </ref:anchor>
                                       <bodytext>
                                          <xsl:for-each select="current-group()">
                                             <xsl:apply-templates select="@* | node()"/>
                                          </xsl:for-each>
                                       </bodytext>
                                    </marginnote>
                                 </text>
                              </xsl:when>
                           </xsl:choose>
                        </xsl:for-each-group>
                     </xsl:if>
                  </p>
               </xsl:otherwise>
            </xsl:choose>
            <xsl:for-each select="following-sibling::level">
               <xsl:call-template name="following_p_level"/>
            </xsl:for-each>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>

   <xsl:template match="p/@i"><!-- suppress --></xsl:template>

   <xsl:template match="p/@nl"><!-- suppress --><!-- see module for handling text when parent p has @nl --></xsl:template>

   <xsl:template match="p/@ln.nsprefix"><!-- suppress --></xsl:template>

   <xsl:template match="p/@class"><!-- suppress --></xsl:template>

   <xsl:template match="p/@style">
      <xsl:choose>
         <xsl:when test=". = 'right' or . = 'left' or . = 'center'">
            <xsl:attribute name="align">
               <xsl:value-of select="."/>
            </xsl:attribute>
         </xsl:when>
         <xsl:otherwise>
            <xsl:message>'p' element 'style' attribute has unexpected and unmappable value
                        <xsl:value-of select="."/> and will be omitted on output.</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <!-- Vikas Rohilla : Added template for the streamID CA01   -->   <!-- Sudhanshu Srivastava : Added streamID CA02CC -->
   <xsl:template match="p[parent::glp:note[parent::text]][$streamID = 'CA01' or $streamID = 'CA02CC' or $streamID = 'CA04']">
      <xsl:apply-templates/>
   </xsl:template>

   <xsl:template match="p/@indent">
      <xsl:copy-of select="."/>
   </xsl:template>

   <xsl:template match="p[parent::text][$streamID = 'UK12']">
      <xsl:apply-templates select="@* | node()"/>
   </xsl:template>
   <!-- Awantika: Added template to handle p/inlineobject in HK07 to p/text/ref:inlineobject
    JL: this isn't going to account for all scenarios; moved functionality to inlineobject templates-->   <!-- from text dita: <note><b>(For CANADA Content Stream only )</b>Only move the <sourcexml>
        text@align</sourcexml> to the parent <targetxml>p</targetxml> if it is the only
        text in <sourcexml>p</sourcexml>, Otherwise, wrap the <sourcexml>text</sourcexml>
        with <targetxml>p</targetxml> and move the <sourcexml>@align</sourcexml> attribute
        to the newly created <targetxml> p</targetxml>.</note>
    <section>
        <codeblock> &lt;p&gt; &lt;text&gt;Dated at Calgary, Alberta this 31 day of March
            1998.&lt;/text&gt; &lt;text&gt;The Honourable W. Kenneth Moore, Chief Justice of
            the Court of Queen's Bench of Alberta&lt;/text&gt; &lt;text
            align="center"&gt;ALBERTA RULES&lt;/text&gt; &lt;text&gt;Rules of practice made
            pursuant to subsection 745.64 of the Criminal Code to reflect the changes made
            to the Criminal Code regarding applications for reduction in the number of years
            of imprisonment without eligibility for parole.&lt;/text&gt; &lt;/p&gt; </codeblock>
        <b>Becomes</b>
        <codeblock> &lt;p&gt; &lt;text&gt;Dated at Calgary, Alberta this 31 day of March
            1998.&lt;/text&gt; &lt;text&gt;The Honourable W. Kenneth Moore, Chief Justice of
            the Court of Queen's Bench of Alberta&lt;/text&gt; &lt;/p&gt; &lt;p
            align="center"&gt; &lt;text&gt;ALBERTA RULES&lt;/text&gt; &lt;/p&gt; &lt;p&gt;
            &lt;text&gt;Rules of practice made pursuant to subsection 745.64 of the Criminal
            Code to reflect the changes made to the Criminal Code regarding applications for
            reduction in the number of years of imprisonment without eligibility for
            parole.&lt;/text&gt; &lt;/p&gt; </codeblock>
    </section>-->   <!-- JL: seems like the @nl handling  will not behave properly unless we move it to the text template.  
        I moved it to XSLT/ContentArch/Rosetta-to-LA/modules/nonamespace/Rosetta_text-LxAdv-text-with-test-for-whitespace-content.xsl
        PLEASE LOOK THERE!!!!!! IF YOU NEED TO ADD IT TO ANOTHER MODULE FOR ELEMENT <text> -->   <!-- BRT: included this specific text match template because it's part of p[@nl]. Added this template -->   <!--    <xsl:template match="p[@nl != '']/text">
        <xsl:element name="text">
            <xsl:apply-templates select="@*"/>           
            <!-\- BRT add number of nl that are in p/@nl -\->
            <xsl:call-template name="add_nl">
                <xsl:with-param name="length" select="parent::p/@nl"/>
                <xsl:with-param name="i" select="1"/>
            </xsl:call-template>

            <!-\- BRT remove hard-coded nl that are in source -\->
            <xsl:apply-templates select="*[not(self::nl)] | text()"/>
        </xsl:element>
    </xsl:template>



    <xsl:template name="add_nl">
        <xsl:param name="length" select="."/>
        <xsl:param name="i" select="1"/>
        <!-\- BRT: create <nl/> for each iteration of @nl value -\->
        <xsl:if test="$length &gt; 0">
            <xsl:element name="proc:nl"/>
            <xsl:call-template name="add_nl">
                <xsl:with-param name="length" select="$length - 1"/>
                <xsl:with-param name="i" select="$i + 1"/>
            </xsl:call-template>
        </xsl:if>
    </xsl:template>-->
   <xsl:template name="following_p_level">
      <xsl:choose>
         <xsl:when test="child::heading/title/refpt">
            <seclaw:level>
               <xsl:attribute name="leveltype">
                  <xsl:value-of select="@leveltype"/>
               </xsl:attribute>
               <xsl:apply-templates select="child::heading/title/refpt"/>
               <xsl:apply-templates select="@* | node() except (level[preceding-sibling::bodytext])"/>
            </seclaw:level>
         </xsl:when>
      </xsl:choose>
   </xsl:template>
   <!-- JD: 2017-07-21: added trap for p containing only empty node or single whitespace to match DT output.
	e.g., 
	<p>
	  <text/>
	</p>
	-->
   <xsl:template match="p[text[not(node()) or (string() and not(normalize-space()) and not(*))] and count(*)=1 ]"/>
   <!-- 
		JD:		match p that has at least one element child, and don't have any children not named 'text', which doesn't have any text() or children not named 'br' 
		e.g.,
 		 <p>
				<text>
					<nl/>
					<nl/>
				</text>
			</p>
		taken from https://stackoverflow.com/questions/11438787/find-an-element-that-only-has-one-other-kind-of-child
	-->
   <xsl:template match="p[* and not(*[not(self::text[* and not(text()) and not(*[not(self::nl)])])])]"/>
   <!-- MDS 2017-08-11 - Added supression of completely empty paragraph elements.  Only for specific streams -->
   <xsl:template match="p[not(node())][$streamID = 'AU13']"/>
   <!--<topicref href="../common/common_rosetta_text.dita"/>-->   <!-- <topicref href="../../../common_newest/Rosetta_text-LxAdv-text.dita"/> -->   <xd:doc>
      <xd:desc>
         <xd:p>
            <xd:b>Instructions <xd:i>[common element]</xd:i>
            </xd:b>
         </xd:p>
         <xd:p>
            <xd:i>text</xd:i> becomes <xd:b>text</xd:b>, and optional attributes <xd:i>@cont</xd:i> should be suppressed from conversion, <xd:i>@align</xd:i> becomes <xd:b>@align</xd:b> must only be used to preserve mandated horizontal spacing and <xd:b>@align</xd:b> will be moved in parent <xd:b>p</xd:b> in New Lexis conversion.
                <xd:pre>
                    &lt;p&gt;&lt;text align="right"&gt;TOBY HALLIGAN&lt;/text&gt;&lt;/p&gt;
                </xd:pre>
            <xd:b>Becomes</xd:b>
            <xd:pre>
                    &lt;p align="right"&gt;&lt;text&gt;TOBY HALLIGAN&lt;/text&gt;&lt;/p&gt;
                </xd:pre>
         </xd:p>
         <xd:p>
            <xd:b>Note: </xd:b>
            <xd:b>(For CANADA Content Stream only )</xd:b>Only move the <xd:i> text@align</xd:i> to the parent <xd:b>p</xd:b> if it is the only text in <xd:i>p</xd:i>,  Otherwise, wrap the <xd:i>text</xd:i> with <xd:b>p</xd:b> and move the <xd:i>@align</xd:i> attribute to the newly created <xd:b> p</xd:b>.</xd:p>
         <xd:pre>

&lt;p&gt;
    &lt;text&gt;Dated at Calgary, Alberta this 31 day of March 1998.&lt;/text&gt;
    &lt;text&gt;The Honourable W. Kenneth Moore, Chief Justice of the Court of Queen's Bench of Alberta&lt;/text&gt;
    &lt;text align="center"&gt;ALBERTA RULES&lt;/text&gt;
    &lt;text&gt;Rules of practice made pursuant to subsection 745.64 of the Criminal
        Code to reflect the changes made to the Criminal Code regarding
        applications for reduction in the number of years of imprisonment
        without eligibility for parole.&lt;/text&gt;
&lt;/p&gt;                     
                    

</xd:pre>
         <xd:b>Becomes</xd:b>
         <xd:pre>

&lt;p&gt;
    &lt;text&gt;Dated at Calgary, Alberta this 31 day of March 1998.&lt;/text&gt;
    &lt;text&gt;The Honourable W. Kenneth Moore, Chief Justice of the Court of Queen's Bench of Alberta&lt;/text&gt;
&lt;/p&gt;
&lt;p align="center"&gt;
    &lt;text&gt;ALBERTA RULES&lt;/text&gt;
&lt;/p&gt;
&lt;p&gt;
    &lt;text&gt;Rules of practice made pursuant to subsection 745.64 of the Criminal
        Code to reflect the changes made to the Criminal Code regarding
        applications for reduction in the number of years of imprisonment
        without eligibility for parole.&lt;/text&gt;
&lt;/p&gt;

</xd:pre>
         <!--Changes2011-12-21: Added instruction for attribute align. 2011-04-28: Added instruction for attribute cont. 2012-08-30: Moved form/bodytext/text scenario to Rosetta_form_bodytext_text-to-LexisAdvance_form.text.dita.2014-01-31: Updated instruction, align will be moved in p in NL conversion. NZ09 commentary discussion board issue for handling text/@align2014-08-12: For CANADA Content Stream: Only move the
                         text@align to the parent p if
                    it is the only text in p, Otherwise, wrap the
                        text with p and move the
                        @align attribute to the newly created 
                        p.-->
      </xd:desc>
   </xd:doc>
   <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_text-LxAdv-text.dita  -->
   <!-- *****************************************************************************
         * NOTE: @align handling including CA exception is addressed in              *
         * /XSLT/ContentArch/Rosetta-to-LA/modules/nonamespace/Rosetta_p-LxAdv-p.xsl *
         * because it can't be run from p/text context node.                         *
         * NOTE: @nl is addressed here and not in                                    *
         * /XSLT/ContentArch/Rosetta-to-LA/modules/nonamespace/Rosetta_p-LxAdv-p.xsl *
         * because it can't be run from p context node.                              *
          ****************************************************************************-->
   <!-- JD: 2017-07-21: added trap for empty node or single whitespace to match DT output.  -->
   <xsl:template match="text[not(node()) or string() and normalize-space(replace(., '^[\t\p{Zs}]+$', '')) = '']"
                 priority="2"/>

   <xsl:template match="text">
      <xsl:variable name="docinfoidtext" select="/*/docinfo/docinfo:doc-id/text()"/>
      <!--  Original Target XPath:  text   -->
      <xsl:choose>
         <xsl:when test="parent::p[@nl]">
            <xsl:call-template name="insert-vertical-space"/>
         </xsl:when>
         <xsl:otherwise><!-- Awantika: For AU20 history text becomes textitem -->
            <xsl:choose>
               <xsl:when test="$streamID='AU20' and parent::p[parent::note[@notetype='xref'][parent::heading]] and contains(lower-case($docinfoidtext),'history')">
                  <textitem>
                     <xsl:apply-templates/>
                  </textitem>
               </xsl:when>
               <xsl:when test="$streamID='AU20' and parent::p[ancestor::source_cttr:annotations[@annotgroup='prov-am']] and contains(lower-case($docinfoidtext),'history')">
                  <textitem>
                     <xsl:apply-templates/>
                  </textitem>
               </xsl:when>
               <!-- Awantika:2017-10-27: p/text will be converted to <textitem> for AU20 for specific scenario -->
               <xsl:when test="$streamID='AU20' and contains(lower-case($docinfoidtext),'history') and parent::p[ancestor::source_cttr:annotations/heading/note[@id='HI4']]| child::heading/title[.='Assent']">
                  <textitem>
                     <xsl:apply-templates/>
                  </textitem>
               </xsl:when>
               <xsl:otherwise>
                  <xsl:choose>
                     <xsl:when test="$streamID='AU20' and contains(lower-case($docinfoidtext),'overview') and ancestor::source_cttr:annotations[@id='OP3' or @id='OI7']/heading/note/l/li">
                        <xsl:apply-templates/>
                     </xsl:when>
                     <xsl:when test="$streamID='AU20' and contains(lower-case($docinfoidtext),'overview') and ancestor::source_cttr:annotations[@id='OP15']">
                        <xsl:apply-templates/>
                     </xsl:when>
                     <!-- Vikas Rohilla : Updated for the UK12                            -->
                     <xsl:when test="child::note[@notetype!='xref'][$streamID = 'UK12']">
                        <xsl:apply-templates/>
                     </xsl:when>
                     <!--Ravikant:2017-12-12: p/inlineobject move in form:p/from:text/figure for hk07  -->
                     <xsl:when test="$streamID='HK07' and parent::p[parent::bodytext[parent::level[@leveltype='prec' or @leveltype='prec.grp' or @leveltype='precgrp' or @leveltype='precgrp1' or @leveltype='precgrp2' or parent::comm.chap or ancestor::level[@leveltype = 'prec.grp']]]]">
                        <form:text>
                           <xsl:apply-templates select="node()"/>
                           <xsl:apply-templates select="following-sibling::inlineobject[parent::p]"/>
                        </form:text>
                     </xsl:when>
                     <!-- Awantika:2017-11-02: p/text will be converted to <textitem> for AU20 for specific scenario -->
                     <xsl:when test="$streamID='AU20' and contains(lower-case($docinfoidtext),'overview') and parent::p[ancestor::source_cttr:annotations[child::heading/note/h[.='Former Title'] or child::heading/title[.='Former Title']]/source_cttr:annot/leg:info/note]">
                        <xsl:apply-templates/>
                     </xsl:when>
                     <xsl:when test="$streamID='AU20' and contains(lower-case($docinfoidtext),'overview') and parent::p[ancestor::heading[child::title[starts-with(lower-case(.),'international equivalents') or starts-with(lower-case(.),'uniform equivalents')]]/note/l/li]">
                        <xsl:apply-templates/>
                     </xsl:when>
                     <xsl:otherwise>
                        <text><!-- <xsl:apply-templates select="node() except refpt"/>--><!-- Awantika: Updated, as refpt should not be created in the text element --><!-- Priya Bardhan: Added ci:cite[@type='cite4thisdoc'] in except condition. Since, not required inside text -->
                           <xsl:apply-templates select="@*"/>
                           <xsl:apply-templates select="node() except (refpt,ci:cite[@type='cite4thisdoc'],copyright[$streamID='UK06'])"/>
                           <!-- Awantika: UK11DN- Need to merge the adjacent notes and move them to the end of the existing text  -->
                           <xsl:if test="parent::p[note[@notetype='xref']] and $streamID='UK11DN'">
                              <xsl:for-each-group select="parent::p[note[@notetype='xref']]/node()"
                                                  group-adjacent="if (self::note) then 0 else 1">
                                 <xsl:choose>
                                    <xsl:when test="current-grouping-key()=0"><!--  <xsl:apply-templates select="ancestor::p/text"/>-->
                                       <marginnote>
                                          <ref:anchor>
                                             <xsl:attribute name="id">
                                                <xsl:value-of select="generate-id()"/>
                                             </xsl:attribute>
                                             <xsl:attribute name="anchortype">
                                                <xsl:text>local</xsl:text>
                                             </xsl:attribute>
                                          </ref:anchor>
                                          <bodytext>
                                             <xsl:for-each select="current-group()">
                                                <xsl:apply-templates select="@* | node()"/>
                                             </xsl:for-each>
                                          </bodytext>
                                       </marginnote>
                                    </xsl:when>
                                 </xsl:choose>
                              </xsl:for-each-group>
                           </xsl:if>
                        </text>
                     </xsl:otherwise>
                  </xsl:choose>
               </xsl:otherwise>
            </xsl:choose>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <!-- it doesn't make sense to address @align here, but to address it at the paragraph level.
        What do we do for <p> elements that get emptied by having now-empty text? Right now they remain, 
        as passively specified through omission of use case. -->   <!--    Updated by Chaitanya foe the text Alignment-->
   <xsl:template match="text/@align[$streamID!='CA09']"/>
   <!--<xsl:copy-of select="."></xsl:copy-of>-->
   <xsl:template match="text/@cont"/>

   <xsl:template match="text/@ln.nsprefix"/>

   <xsl:template match="text[$streamID='CA12']/@searchtype"/>

   <xsl:template name="insert-vertical-space">
      <xsl:element name="text"
                   namespace="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
         <xsl:apply-templates select="@*"/>
         <!--- BRT add number of nl that are in p/@nl -->
         <xsl:call-template name="add_nl">
            <xsl:with-param name="length" select="parent::p/@nl"/>
            <xsl:with-param name="i" select="1"/>
         </xsl:call-template>
         <!-- BRT remove hard-coded nl that are in source -->
         <xsl:apply-templates select="*[not(self::nl or self::refpt)] | text()"/>
      </xsl:element>
   </xsl:template>

   <xsl:template name="add_nl">
      <xsl:param name="length" select="."/>
      <xsl:param name="i" select="1"/>
      <!-- BRT: create <nl/> for each iteration of @nl value -->
      <xsl:if test="$length &gt; 0">
         <xsl:element name="proc:nl"/>
         <xsl:call-template name="add_nl">
            <xsl:with-param name="length" select="$length - 1"/>
            <xsl:with-param name="i" select="$i + 1"/>
         </xsl:call-template>
      </xsl:if>
   </xsl:template>
   <!-- Vikas Rohilla : Added the template for the streamID CA01    -->   <!-- Sudhanshu Srivastava : Added StreamID for passthrough. -->
   <xsl:template match="text[parent::p[parent::glp:note[parent::text]]][$streamID='CA01' or $streamID='CA02CC' or $streamID='CA04']">
      <xsl:apply-templates/>
   </xsl:template>
   <!--Satbir: Set the low priority in below template because this is common template which is already define in "Rosetta_strike-LxAdv-strike.xsl"-->   <!-- JD: 2017-07-14: just use common template "Rosetta_strike-LxAdv-strike.xsl"; removing this version because: 
				1) this is the module for the <text> element, not the <strike> element 
				2) the handling is nearly identical
				3) this version generates an empty @typestyle attribute, which causes validation errors.
		-->   <!--<xsl:template match="strike" priority="10">
        <strike>
            <xsl:attribute name="typestyle">
                <xsl:value-of select="@typestyle"/>   
            </xsl:attribute>
            <xsl:apply-templates select="node()"/>
        </strike>
    </xsl:template>-->   <!-- <!-\- Vikas Rohilla :Added template for the streamID CA01-\->
    <xsl:template match="text[matches(.,'^ARRÊT') or matches(.,'^HELD:') or matches(.,'^DISPOSITIF :')]">
        <xsl:element name="text">
            <xsl:choose>
                <xsl:when test="child::*">
                    <xsl:apply-templates/>
                </xsl:when>
                <xsl:when test="contains(.,'- ')">
                    <xsl:value-of select="substring-after(.,'- ')"/>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:value-of select="substring-after(.,'. ')"/>
                </xsl:otherwise>
            </xsl:choose>
        </xsl:element>
    </xsl:template>-->   <!-- Vikas Rohilla : created the template for text when ancestor frm:div    -->
   <xsl:template match="text[parent::p[parent::frm:div |                               parent::frm:body |                               parent::li[ancestor::frm:body] |                               parent::clause[ancestor::frm:div or ancestor::frm:body]]][not(ancestor::footnote or ancestor::note)][$streamID='UK12']">
      <form:text>
         <xsl:apply-templates select="@*|node()"/>
      </form:text>
   </xsl:template>
   <!-- Vikas Rohilla : created the template for text when ancestor frm:div    -->
   <xsl:template match="text[parent::p[parent::sigblock[ancestor::frm:div or ancestor::frm:body]]][$streamID='UK12']">
      <xsl:apply-templates select="@*|node()"/>
   </xsl:template>

   <xsl:template match="text[parent::p[parent::text]][$streamID='UK12']" priority="25">
      <xsl:apply-templates select="@*|node()"/>
   </xsl:template>

   <xsl:template match="text[preceding-sibling::note[@notetype='xref']]">
      <text>
         <xsl:apply-templates select="@*|node()"/>
         <xsl:if test="$streamID='UK12'">
            <xsl:apply-templates select="preceding-sibling::note[@notetype='xref']" mode="note-xref"/>
         </xsl:if>
      </text>
   </xsl:template>
   <!-- suppress the empty text    -->
   <xsl:template match="text[normalize-space(.)=''][$streamID=('UK12','UK03')]"/>

   <xsl:template match="text[matches(.,'^ $')][$streamID='NZ13']" priority="25">
      <text>
         <xsl:text xml:space="preserve"> </xsl:text>
      </text>
   </xsl:template>
   <!--<topicref href="../common/common_rosetta_emph.dita"/>-->   <!-- <topicref href="../../../common_newest/Rosetta_emph-LxAdv-emph.dita"/> -->   <xd:doc>
      <xd:desc>
         <xd:p>
            <xd:b>Instructions <xd:i>[common element]</xd:i>
            </xd:b>
         </xd:p>
         <xd:p>
            <xd:i>emph</xd:i> becomes <xd:b>emph</xd:b>.
                    <xd:b>@typestyle</xd:b> values are tokenized. These are given below: <xd:ul>
               <xd:li>
                  <xd:b>@typestyle="bf"</xd:b> bold.</xd:li>
               <xd:li>
                  <xd:b>@typestyle="biu"</xd:b> bold, italic and underline.</xd:li>
               <xd:li>
                  <xd:b>@typestyle="bu"</xd:b> bold underline.</xd:li>
               <xd:li>
                  <xd:b>@typestyle="caps"</xd:b> capital characters.</xd:li>
               <xd:li>
                  <xd:b>@typestyle="dbl-un"</xd:b> double underline.</xd:li>
               <xd:li>
                  <xd:b>@typestyle="grayscal"</xd:b> grayscale.</xd:li>
               <xd:li>
                  <xd:b>@typestyle="hi"</xd:b> highlighted.</xd:li>
               <xd:li>
                  <xd:b>@typestyle="ib"</xd:b> italic and bold.</xd:li>
               <xd:li>
                  <xd:b>@typestyle="it"</xd:b> italic.</xd:li>
               <xd:li>
                  <xd:b>@typestyle="iu"</xd:b> italic underline.</xd:li>
               <xd:li>
                  <xd:b>@typestyle="ro"</xd:b> roman.</xd:li>
               <xd:li>
                  <xd:b>@typestyle="smcaps"</xd:b> small caps.</xd:li>
               <xd:li>
                  <xd:b>@typestyle="un"</xd:b> underline.</xd:li>
               <xd:li>
                  <xd:b>@typestyle="inherit"</xd:b> inherit.</xd:li>
            </xd:ul>
         </xd:p>
         <xd:p>Children of <xd:i>emph</xd:i> should be processed.</xd:p>
         <xd:p>
            <xd:b>Source XML</xd:b>
         </xd:p>
         <xd:pre>

&lt;emph typestyle="ro"&gt;(1)&lt;/emph&gt;

	</xd:pre>
         <xd:p>
            <xd:b>Target XML</xd:b>
         </xd:p>
         <xd:pre>

&lt;emph typestyle="ro"&gt;(1)&lt;/emph&gt;

	</xd:pre>
         <xd:p>
            <xd:b>Note: </xd:b>If <xd:b>emph/emph</xd:b> has the same
            <xd:b>@typestyle</xd:b> value then remove one
            <xd:b>emph</xd:b> element.</xd:p>
         <xd:p>
            <xd:b>Note: </xd:b>
            <xd:p>
               <xd:i>heading/title/emph</xd:i> becomes <xd:b>heading/title</xd:b>. That
                is, the <xd:i>emph</xd:i> start-tag and end-tag (but not the content) are dropped, and the content 
                becomes part of the target parent <xd:b>title</xd:b> element.</xd:p>
            <xd:p>
               <xd:i>emph/inlineobject</xd:i> becomes
                <xd:b>figure/ref:inlineobject</xd:b>.</xd:p>
            <xd:p>
               <xd:i>h/emph/inlineobject</xd:i> becomes
                <xd:b>emph/ref:inlineobject</xd:b>.</xd:p>
            <xd:p>
               <xd:i>sup/emph/emph/inlineobject</xd:i> becomes
                <xd:b>sup/emph/ref:inlineobject</xd:b>.</xd:p>
         </xd:p>
         <xd:p>
            <xd:b>Source XML</xd:b>
         </xd:p>
         <xd:pre>
                
                &lt;heading&gt;
                &lt;title&gt;
                &lt;emph typestyle="bf"&gt;Judgment&lt;/emph&gt;
                &lt;/title&gt;
                &lt;/heading&gt;
                
            </xd:pre>
         <xd:p>
            <xd:b>Target XML</xd:b>
         </xd:p>
         <xd:pre>
                
                &lt;heading&gt;
                &lt;title&gt;
                Judgment
                &lt;/title&gt;
                &lt;/heading&gt;
                
            </xd:pre>
         <xd:p>
            <xd:b>Source XML: For multiple <xd:i>emph</xd:i> elements</xd:b>
         </xd:p>
         <xd:pre>
                
                &lt;heading&gt;
                &lt;title&gt;
                &lt;emph typestyle="bf"&gt;
                &lt;emph typestyle="bf"&gt;
                Doc. 5.27 - Section 10(&lt;emph typestyle="it"&gt;&lt;emph typestyle="it"&gt;b&lt;/emph&gt;&lt;/emph&gt;) &amp;#x2014; Affidavit
                &lt;/emph&gt;
                &lt;/emph&gt;
                &lt;/title&gt;
                &lt;/heading&gt;
                
            </xd:pre>
         <xd:p>
            <xd:b>Target XML</xd:b>
         </xd:p>
         <xd:pre>
                
                &lt;heading&gt;
                &lt;title&gt;Doc. 5.27 - Section 10(b) &amp;#x2014; Affidavit&lt;/title&gt;
                &lt;/heading&gt;
                
            </xd:pre>
         <xd:p>
            <xd:b>Source XML: Showing an <xd:i>emph</xd:i> that contains a child element</xd:b>
         </xd:p>
         <xd:pre>
                
                &lt;heading&gt;
                &lt;title&gt;
                &lt;emph typestyle="bf"&gt;Non-residential building—(&lt;ci:cite searchtype="LEG-REF" status="invalid"&gt;
                &lt;ci:sesslaw&gt;
                &lt;ci:sesslawinfo&gt;
                &lt;ci:sesslawnum num="1994_23a"/&gt;
                &lt;ci:hierpinpoint&gt;&lt;ci:hierlev label="schedule" num="8"/&gt;&lt;/ci:hierpinpoint&gt;
                &lt;/ci:sesslawinfo&gt;
                &lt;ci:sesslawref&gt;&lt;ci:standardname normpubcode="UK_ACTS"/&gt;&lt;/ci:sesslawref&gt;
                &lt;/ci:sesslaw&gt;
                &lt;ci:content&gt;VATA 1994, Schedule 8, group 5&lt;/ci:content&gt;&lt;/ci:cite&gt;, note 7A)&lt;/emph&gt;
                &lt;/title&gt;
                &lt;/heading&gt;
                
            </xd:pre>
         <xd:p>
            <xd:b>Target XML</xd:b>
         </xd:p>
         <xd:pre>
                
                &lt;heading&gt;
                &lt;title&gt;Non-residential building—(&lt;lnci:cite searchtype="LEG-REF" status="invalid"&gt;
                &lt;lnci:sesslaw&gt;
                &lt;lnci:sesslawinfo&gt;
                &lt;lnci:sesslawnum num="1994_23a"/&gt;
                &lt;lnci:hierpinpoint&gt;&lt;lnci:hierlev label="schedule" num="8"/&gt;&lt;/lnci:hierpinpoint&gt;
                &lt;/lnci:sesslawinfo&gt;
                &lt;lnci:sesslawref&gt;&lt;lnci:standardname normpubcode="UK_ACTS"/&gt;&lt;/lnci:sesslawref&gt;
                &lt;/lnci:sesslaw&gt;
                &lt;lnci:content&gt;VATA 1994, Schedule 8, group 5&lt;/lnci:content&gt;&lt;/lnci:cite&gt;, note 7A)&lt;/title&gt;
                &lt;/heading&gt;
                
            </xd:pre>
         <xd:p>
            <xd:b>Source XML: When source is having <xd:i>emph</xd:i> and <xd:i>PCDATA</xd:i> under <xd:i>heading/title</xd:i> than in that case the <xd:i>emph</xd:i> element get dropped from target and its content along with the PCDATA will be put directly under <xd:b>title</xd:b> element.</xd:b>
         </xd:p>
         <xd:pre>
                
                &lt;heading&gt;
                &lt;title&gt;
                &lt;emph typestyle="it"&gt;R&lt;/emph&gt;(on the application of Green) v Police Complaints Authority
                &lt;fnr fnrtoken="d30e128" fntoken="d30e1108"&gt;13&lt;/fnr&gt;
                &lt;/title&gt;
                &lt;/heading&gt;
                
            </xd:pre>
         <xd:p>
            <xd:b>Target XML</xd:b>
         </xd:p>
         <xd:pre>
                
                &lt;heading&gt;
                &lt;title&gt;R (on the application of Green) v Police Complaints Authority
                &lt;footnote-ref anchoridref="d30e128"&gt;
                &lt;ref:anchor id="d30e1108"/&gt;
                &lt;label&gt;13&lt;/label&gt;
                &lt;/footnote-ref&gt;   
                &lt;/title&gt;
                &lt;/heading&gt;
                
            </xd:pre>
         <xd:p>
            <xd:i>emph/sub/inlineobject</xd:i> becomes
            <xd:b>figure/ref:inlineobject</xd:b>.</xd:p>
         <!--Changes2015-03-18: When heading\title contains emph and PCDATA under it then from target the emph tags will dropped and it's content along with PCDATA content will be put directly under title element . Applicable to UK09 only.2014-10-22: Added an example to explicitly show child elements of emph being retained. (R4.5 Content Issue List #1998)2014-06-04: Clarified instructions and added an example to show multiple emph elements being handled.2013-02-26: Created.-->
         <!--Changes2016-04-01: Added statement to clarify that children of emph should be processed.2013-01-08: Added note for handling
                emph/emph has the same
                @typestyle value.2012-02-28: Added instructions for handling of
                case:judges/emph/@typestyle="smcaps".2011-12-15: Created.-->
      </xd:desc>
   </xd:doc>
   <xsl:template match="emph" name="emph-generic">
      <xsl:choose><!-- pass through when parent is title with heading parent or parent is emph with parent title with parent title-->
         <xsl:when test="(child::copyright and parent::disclaimer and $streamID='UK11DA')">
            <xsl:element name="emph">
               <xsl:copy-of select="@typestyle"/>
               <xsl:apply-templates select="@*|node() except copyright"/>
            </xsl:element>
         </xsl:when>
         <xsl:when test="parent::title/parent::heading[$streamID='UK07']">
            <xsl:element name="emph">
               <xsl:copy-of select="@typestyle"/>
               <xsl:apply-templates/>
            </xsl:element>
         </xsl:when>
         <!-- 2016-10-24 - MDS: Pass through when child outputting as URL in UK11DA -->
         <xsl:when test="parent::remotelink[$streamID='UK11DA']">
            <xsl:apply-templates select="node()"/>
         </xsl:when>
         <!-- JD: excluding the dropping of <emph> within title for streams to match DT output.  
                    			There is no instruction to remove <emph> from <title> in 
                    		 emph to emph (id-CCCC-10316)
                    		 title to title (id-CCCC-10479)
                    		-->
         <xsl:when test="$streamID=('AU11','NZ06','NZ08','NZ18','NZ11','NZ13','AU14') and (parent::title/parent::heading                       |parent::emph/parent::title/parent::heading                       | parent::title/parent::leg:heading                       |parent::emph/parent::title/parent::leg:heading) and (not(preceding-sibling::text()) or not(following-sibling::text()))                       "><!-- not in CI, but match DT output: when parent emph is same, merge -->
            <xsl:choose><!-- pass through when there is a parent emph with the same @typestyle -->
               <xsl:when test="@typestyle=parent::emph/@typestyle">
                  <xsl:apply-templates/>
               </xsl:when>
               <xsl:otherwise>
                  <xsl:element name="emph">
                     <xsl:copy-of select="@typestyle"/>
                     <xsl:apply-templates/>
                  </xsl:element>
               </xsl:otherwise>
            </xsl:choose>
         </xsl:when>
         <xsl:when test="(parent::title/parent::heading                             |parent::emph/parent::title/parent::heading                             | parent::title/parent::leg:heading                             |parent::emph/parent::title/parent::leg:heading) and (not(preceding-sibling::text()) or not(following-sibling::text()))                             ">
            <xsl:apply-templates/>
         </xsl:when>
         <!--skip over emphasis if only refpt at child -->
         <xsl:when test="refpt and not(normalize-space(string-join(text(), '')))[$streamID!='CA10']"><!-- suppress --></xsl:when>
         <xsl:when test="refpt and parent::h[$streamID='CA10']">
            <xsl:element name="emph">
               <xsl:copy-of select="@typestyle"/>
               <xsl:for-each select="node()"><!-- there's no target for refpt here, strip it out but leave the txt content 
                                JL 20180212 Webstar 7113097 -->
                  <xsl:choose>
                     <xsl:when test="self::refpt">
                        <xsl:apply-templates select="text()"/>
                     </xsl:when>
                     <xsl:otherwise>
                        <xsl:apply-templates select="."/>
                     </xsl:otherwise>
                  </xsl:choose>
               </xsl:for-each>
            </xsl:element>
         </xsl:when>
         <xsl:when test="@typestyle=parent::emph/@typestyle"><!-- pass through when there is a parent emph with the same @typestyle -->
            <xsl:apply-templates/>
         </xsl:when>
         <xsl:when test="child::inlineobject and not(parent::h) and $streamID='AU08'">
            <xsl:apply-templates/>
         </xsl:when>
         <!-- The handling for AU06 could be shareable but keeping as stream-specific until we have more testing. -->
         <!-- JD: 2017-07-19: tested with UK01 too (added); this appears to be working properly.  
                    			Note that the following 'when' drops text() that should be emphasized -->
         <xsl:when test="child::inlineobject and not(parent::h) and ($streamID=('AU06','AU04','UK01','HK02'))"><!-- this attempts to allow the emphasis markup to be retained around some output but not around others. --><!-- keep current emph node to get to later. -->
            <xsl:variable name="me" select="."/>
            <xsl:for-each-group select="node()" group-adjacent="if (self::inlineobject) then 0 else 1">
               <xsl:choose><!-- anything here is not kept within emphasis. -->
                  <xsl:when test="current-grouping-key()=0">
                     <xsl:apply-templates select="current-group()"/>
                  </xsl:when>
                  <!-- the otherwise condition allows the retention of the emphasis markup. -->
                  <xsl:otherwise>
                     <emph><!-- build @typestyle using the input node's @typestyle. -->
                        <xsl:copy-of select="$me/@typestyle"/>
                        <xsl:apply-templates select="current-group()"/>
                     </emph>
                  </xsl:otherwise>
               </xsl:choose>
            </xsl:for-each-group>
         </xsl:when>
         <!-- JD: Note that this template will drop any text() appearing in emph, as in "Declared takings (F)"  
                    		<emph typestyle="bf">Declared takings (F) 
                    		   <inlineobject type="image" mimetype="image/gif" filename="VATC_19761_1.gif"/>
                    	  </emph>
                    		-->
         <xsl:when test="child::inlineobject and not(parent::h) and not ($streamID='UK09')"><!-- AS: for emph/inlineobject in DT GDS it's emph/ref:inlineobject but in CI it's figure/ref:inlineobeject -->
            <xsl:element name="figure">
               <xsl:apply-templates/>
            </xsl:element>
         </xsl:when>
         <xsl:when test="child::sub/child::inlineobject">
            <xsl:apply-templates/>
         </xsl:when>
         <xsl:when test="ancestor::ci:content[$streamID='CA02DS']">
            <xsl:apply-templates/>
         </xsl:when>
         <xsl:otherwise>
            <xsl:element name="emph">
               <xsl:copy-of select="@typestyle"/>
               <xsl:apply-templates/>
            </xsl:element>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <!--suppress to get rid of errors as @typestyle already handled. JL -->
   <xsl:template match="emph/@typestyle"/>
   <!--<topicref href="../common/common_rosetta_remotelink.dita"/>-->   <!-- <topicref href="../../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita"/> -->   <xd:doc>
      <xd:desc>
         <xd:p>
            <xd:b>Instructions <xd:i>[common element]</xd:i>
            </xd:b>
         </xd:p>
         <xd:p>
            <xd:b>Note: </xd:b>This topic is used in numerous conversion instructions for several LBUs. It is a
			shared topic rather than duplicated to ensure consistency and accuracy. The xml
			snippets contained in this topic reflect markup needed for the Apollo image handling
			application. The UK is the first LBU to move from Apollo to the Blobstore
			application for image handling. Therefore, if this is a UK conversion instruction
			document, please refer to the following topics for correct image handling markup.<xd:ul>
               <xd:li>
                  <xd:i>lnlink[@service="ATTACHMENT"]</xd:i> to
				<xd:b>ref:lnlink[@service="ATTACHMENT"]</xd:b> for BLOBSTORE
				images (id-CCCC-10542)</xd:li>
               <xd:li>
                  <xd:i>inlineobject</xd:i> to
				<xd:b>ref:inlineobject</xd:b> for BLOBSTORE images
				(id-CCCC-10540)</xd:li>
               <xd:li>
                  <xd:i>link[@filename]</xd:i> to
				<xd:b>ref:lnlink[@service="ATTACHMENT"]</xd:b> for BLOBSTORE
				images (id-CCCC-10541)</xd:li>
            </xd:ul>
         </xd:p>
         <xd:p>Regardless of which of the use cases described below occurs, the attribute <xd:i>remotelink/@status</xd:i> is always suppressed, it is never output to the target document.</xd:p>
         <xd:ul>
            <xd:li>Use case: <xd:i>remotelink[@service='SEARCH']</xd:i>. The service type
			  "SEARCH" is not supported in New Lexis. Unless
				<xd:i>remotelink[@hrefclass='http']</xd:i> it is recommended that such
			  remotelink elements be copied into an xml comment. This retains the content for future
			  analysis without creating unsupported target markup. The risk of this approach is the loss
			  of ref:marker text content from display to the user. If there is a
				<xd:i>remotelink/@hrefclass]</xd:i> attribute equal to "http" then the
			  remotelink is <xd:b>not</xd:b> copied into a comment but is instead converted to either a
				<xd:b>url</xd:b> or <xd:b>ref:lnlink</xd:b>, see below for details. </xd:li>
            <xd:li>Use case: <xd:i>remotelink[@service='QUERY']</xd:i>: <xd:ul>
                  <xd:li>In General, convert the pcdata, but suppress the <xd:i>remotelink</xd:i>
				  tag and its attributes.</xd:li>
                  <xd:li>
                     <xd:p>For the following exceptional contexts, do not convert the pcdata of
					  <xd:i>remotelink[@service="QUERY"]</xd:i>. Instead, suppress both the
					pcdata and <xd:i>remotelink</xd:i> markup: <xd:ul>
                           <xd:li>
                              <xd:p> docinfo:assoc-links/remotelink[@service="QUERY"] </xd:p>
                              <xd:p>
                                 <xd:b>Note: </xd:b>For CA05-CA07 please follow <xd:a href="../common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">
                                    <xd:i>docinfo:assoc-links/remotelink[@service="QUERY"]</xd:i>
                                 </xd:a>
                              </xd:p>
                           </xd:li>
                           <xd:li>
                              <xd:p> docinfo:assoc-links-grp/remotelink[@service="QUERY"] </xd:p>
                           </xd:li>
                           <xd:li>
                              <xd:p> NZ-Cases only:   glp:note/remotelink[@service="QUERY"]</xd:p>
                           </xd:li>
                        </xd:ul>
                     </xd:p>
                  </xd:li>
               </xd:ul>
               <xd:p>A corresponding product requirement shall be created with an instruction to build
				the link on retrieval based on semantic markup in the document. </xd:p>
            </xd:li>
            <xd:li>Use case: <xd:i>remotelink[@service='DOC-ID']</xd:i> becomes
				<xd:b>ref:crossreference</xd:b> with required child
				<xd:b>ref:content</xd:b> and attribute
				<xd:i>remotelink/@xml:lang</xd:i> becomes
				<xd:b>ref:content/@xml:lang</xd:b>. For multiple, immediate, sibling
			  occurrences without intermediary text, group within a
				<xd:b>ref:crossreferencegroup</xd:b> parent except for
				<xd:b>lnci:content</xd:b> and <xd:b>title</xd:b>.<xd:ul>
                  <xd:li>The value of <xd:b>ref:crossreference/@crossreferencetype</xd:b> should be
				  set to "seeAlso".</xd:li>
                  <xd:li>
                     <xd:p> Create <xd:b>ref:crossreference/ref:locator/ref:locator-key</xd:b> with
					attributes and children as follows: <xd:ul>
                           <xd:li>If <xd:i>@remotekey1="DOC-ID"</xd:i> or
						  <xd:i>@remotekey1="DOCID"</xd:i> then <xd:ul>
                                 <xd:li>
                                    <xd:b>ref:key-name/@name</xd:b> will have the value
							"DOC-ID".</xd:li>
                                 <xd:li>
                                    <xd:b>key-value/@value</xd:b> will be the value of
							  <xd:i>@dpsi</xd:i> followed by hyphen and concatenated with
							  <xd:i>@refpt</xd:i> or <xd:i>@remotekey2</xd:i>, which
							ever is present (if both are present, use
							<xd:i>@remotekey2</xd:i>).</xd:li>
                              </xd:ul>
                           </xd:li>
                           <xd:li>If <xd:i>@remotekey1="REFPTID"</xd:i> or
						  <xd:i>@remotekey1="REFPT"</xd:i> then <xd:ul>
                                 <xd:li>
                                    <xd:b>ref:key-name/@name</xd:b> will have the value
							"DOC-ID".</xd:li>
                                 <xd:li>
                                    <xd:b>ref:key-value/@value</xd:b> will be the value of
							  <xd:i>@dpsi</xd:i> followed by hyphen and concatenated with
							  <xd:i>@docidref</xd:i>.</xd:li>
                                 <xd:li>Create <xd:b>ref:locator/@anchoridref</xd:b> with value from
							  <xd:i>@refpt</xd:i> or <xd:i>@remotekey2</xd:i>, which
							ever is present (if both are present, use
							<xd:i>@refpt</xd:i>).  If <xd:i>@refpt</xd:i> is empty or only whitespace, do not output a <xd:b>@anchoridref</xd:b>.</xd:li>
                              </xd:ul>
                           </xd:li>
                        </xd:ul>
                     </xd:p>
                     <xd:p>
                        <xd:b>Note: </xd:b>If <xd:i>remotelink/@dpsi</xd:i> is not present, use value from
					  <xd:i>docinfo:dpsi/@id-string</xd:i> or capture value from the LBU
					manifest file.</xd:p>
                     <xd:p>
                        <xd:b>Note: </xd:b>
                        <xd:b>ref:locator/@anchoridref</xd:b> that begins with a number must
					have an underscore added at start. Also apply other identifier data type format as
					used for <xd:b>xml:id</xd:b> and <xd:b>ref:anchor/@id</xd:b>
					(e.g. change colon to underscore). Refer to the section titled "Identifiers to ID Data Type - 
					Handling Pattern Restrictions", if that section exists in this CI.</xd:p>
                  </xd:li>
               </xd:ul>
            </xd:li>
            <xd:li>Use case: <xd:i>remotelink[@service='URL']</xd:i> or
				<xd:i>remotelink[@hrefclass='http'][@href]</xd:i> or
				<xd:i>remotelink[@href]</xd:i>
               <!-- SP: added 2013-10-03 -->
               <xd:b>and</xd:b> the data content of the remotelink is a URL. That is, the data content of
				<xd:i>remotelink</xd:i> starts with text such as "http://...", "https://...",
			  "www.some.domain", or is of type (http | https | nohttp | mailto | ftp). In this case,
				<xd:i>remotelink</xd:i> becomes <xd:b>url</xd:b>, and populated as follows:<xd:ul>
                  <xd:li>
                     <xd:p>If the <xd:i>remotelink/@hrefclass</xd:i> attribute is present in the
					source document, the <xd:i>remotelink[@hrefclass="http"]</xd:i> becomes
					  <xd:b>url</xd:b> and <xd:i>@href</xd:i> becomes
					  <xd:b>@normval</xd:b>. The value of the attribute
					  <xd:i>@hrefclass</xd:i> is prepended to the value of
					  <xd:i>@href</xd:i> with the addition of '://' to form the
					  <xd:b>@normval</xd:b>.</xd:p>
                     <xd:ul>
                        <xd:li>Exception: If content of <xd:i>@hrefclass</xd:i> is already present in
						<xd:i>@href</xd:i> then do not concatenate. Populate
						<xd:b>@normval</xd:b> with content of
					  <xd:i>@href</xd:i>.</xd:li>
                     </xd:ul>
                  </xd:li>
                  <xd:li>
                     <xd:p>When <xd:i>remotelink/@hrefclass</xd:i> does not exist in
					  <xd:i>remotelink</xd:i> then nothing will be prepended to the
					  <xd:i>@href</xd:i> value. That is, <xd:i>remotelink</xd:i>
					with <xd:i>@href</xd:i> attribute but no <xd:i>@hrefclass</xd:i>
					attribute converts to <xd:b>url</xd:b> where the
					  <xd:b>@normval</xd:b> attribute is set to
					  <xd:i>remotelink/@href</xd:i>. </xd:p>
                  </xd:li>
               </xd:ul>
            </xd:li>
            <xd:li>Use case: <xd:i>remotelink[@service='URL']</xd:i> or
				<xd:i>remotelink[@hrefclass='http'][@href]</xd:i>
               <xd:b>but</xd:b> the data content of the remotelink is <xd:b>not</xd:b> a URL. That is, the data
			  content of <xd:i>remotelink</xd:i>
               <xd:b>does not</xd:b> start with text such as "http://...", "https://...", "www.some.domain",
			  nor is it of type (http | https | nohttp | mailto | ftp). In this case,
				<xd:i>remotelink</xd:i> becomes <xd:b>ref:lnlink</xd:b> with
			  children <xd:b>ref:marker</xd:b> and <xd:b>ref:locator</xd:b>,
			  populated as follows: <xd:ol>
                  <xd:li>The <xd:b>ref:lnlink/@service</xd:b> attribute is set to "URL".</xd:li>
                  <xd:li>The contents of <xd:i>remotelink</xd:i> becomes the contents of child
					<xd:b>ref:lnlink/ref:marker</xd:b>. Any subelements (such as
					<xd:i>emph</xd:i> and <xd:i>inlineobject</xd:i>) are converted
				  as described elsewhere by instructions given for those specific elements. </xd:li>
                  <xd:li>The child <xd:b>ref:lnlink/ref:locator</xd:b> is created, and within it
				  the child <xd:b>ref:lnlink/ref:locator/ref:locator-key</xd:b> is created,
				  and within it the children
					<xd:b>ref:lnlink/ref:locator/ref:locator-key/ref:key-name</xd:b> and
					<xd:b>ref:lnlink/ref:locator/ref:locator-key/ref:key-value</xd:b> are
				  created.</xd:li>
                  <xd:li>The <xd:b>ref:key-name/@name</xd:b> attribute is set to "URL".</xd:li>
                  <xd:li>If the <xd:i>remotelink/@hrefclass</xd:i> attribute is present,
					<xd:b>ref:key-value/@value</xd:b> is set to the combined value of
					<xd:i>remotelink/@hrefclass</xd:i>, followed by "://", followed by the
				  value of <xd:i>remotelink/@href</xd:i>.<xd:ul>
                        <xd:li>Exception: If content of <xd:i>@hrefclass</xd:i> is already present in
						<xd:i>@href</xd:i> then do not concatenate. Populate
						<xd:b>@value</xd:b> with content of <xd:i>@href</xd:i>.</xd:li>
                     </xd:ul>
                  </xd:li>
                  <xd:li>If the <xd:i>remotelink/@hrefclass</xd:i> attribute is <xd:b>not</xd:b> present,
					<xd:b>ref:key-value/@value</xd:b> is set to the value of
					<xd:i>remotelink/@href</xd:i>.</xd:li>
               </xd:ol>
            </xd:li>
            <xd:li>Use case: <xd:i>remotelink[@href]</xd:i>
            </xd:li>
            <xd:li>If <xd:i>remotelink</xd:i> doesn't have any attributes, then
				<xd:i>remotelink</xd:i> should be suppressed, but any elements contained
			  within <xd:i>remotelink</xd:i> should be processed according to the appropriate
			  instructions.</xd:li>
         </xd:ul>
         <xd:p>
            <xd:b>Note: </xd:b>
            <xd:p>In the source documents, <xd:i>remotelink</xd:i> is used for two distinct
			purposes:</xd:p>
            <xd:ul>
               <xd:li>To create an inter-document link; a link to a location outside the containing
				document.</xd:li>
               <xd:li>To create link for a traditional URL.</xd:li>
            </xd:ul>
         </xd:p>
         <xd:p>If <xd:i>refpt</xd:i> and <xd:i>remotelink</xd:i> occurs as adjacent
			siblings then refer to the instructions for converting <xd:i>endnote</xd:i>.</xd:p>
         <xd:p>
            <xd:b>Note: </xd:b>
            <xd:b>Exception for NZ17CC:</xd:b> When <xd:i>remotelink</xd:i> is a child of
				<xd:i>emph</xd:i> then conversion should suppress <xd:i>emph</xd:i>
			  element only and process <xd:i>remotelink</xd:i> as per above instruction. See
			  example 17.</xd:p>
         <xd:p>
            <xd:b>Source XML 1: showing service type "DOC-ID" converted to ref:crossreference.</xd:b>
         </xd:p>
         <xd:pre>
					
	&lt;remotelink service="DOC-ID" remotekey1="DOC-ID" dpsi="0062"
				refpt="QLD_ACT_1992-48_20050831"&gt;31/8/2005 to
				18/11/2005&lt;/remotelink&gt;

				</xd:pre>
         <xd:p>
            <xd:b>Target XML 1</xd:b>
         </xd:p>
         <xd:pre>
				                              
	&lt;ref:crossreference crossreferencetype="seeAlso"&gt;                                        
		&lt;ref:content&gt;31/8/2005 to 18/11/2005&lt;/ref:content&gt;                                        
			&lt;ref:locator&gt;                                            
				&lt;ref:locator-key&gt;
					&lt;ref:key-name name="DOC-ID"/&gt;
					&lt;ref:key-value value="0062-QLD_ACT_1992-48_20050831"/&gt;
				&lt;/ref:locator-key&gt;		
			&lt;/ref:locator&gt;                                 
	&lt;/ref:crossreference&gt;
			</xd:pre>
         <xd:p>
            <xd:b>Source XML 2: showing <xd:i>remotelink/@xml:lang</xd:i>.</xd:b>
         </xd:p>
         <xd:pre>
				
&lt;remotelink dpsi="03JC" remotekey1="DOC-ID" remotekey2="currentness" 
service="DOC-ID" xml:lang="en"&gt;Current&amp;#x20;to&amp;#x20;June&amp;#x20;23,&amp;#x20;2012&lt;/remotelink&gt;

				</xd:pre>
         <xd:p>
            <xd:b>Target XML 2</xd:b>
         </xd:p>
         <xd:pre>
				                              
	&lt;ref:crossreference&gt;                                        
		&lt;ref:content xml:lang="en"&gt;Current&amp;#x20;to&amp;#x20;June&amp;#x20;23,&amp;#x20;2012&lt;/ref:content&gt;
    &lt;ref:locator&gt;
      &lt;ref:locator-key&gt;
         &lt;ref:key-name name="DOC-ID"/&gt;
         &lt;ref:key-value value="03JC-currentness"/&gt;
     &lt;/ref:locator-key&gt;
   &lt;/ref:locator&gt;                                 
	&lt;/ref:crossreference&gt;
				</xd:pre>
         <xd:p>
            <xd:b>Source XML 3: showing service type "DOC-ID" converted to ref:crossreference (multiple,
			immediate siblings).</xd:b>
         </xd:p>
         <xd:pre>
				           
&lt;remotelink service="DOC-ID" remotekey1="REFPTID" dpsi="0062" docidref="ABCD_5641"      
            refpt="QLD_ACT_1992-48_20050831"&gt;31/8/2005 to
            18/11/2005&lt;/remotelink&gt;
&lt;remotelink service="DOC-ID" remotekey1="DOC-ID" dpsi="0000"
            refpt="QLD_ACT_1992-48_00000000"&gt;31/8/2005 to
            18/11/2005&lt;/remotelink&gt;
&lt;remotelink service="DOC-ID" remotekey1="REFPTID" dpsi="1111" docidref="EFGH_2468"  
            refpt="QLD_ACT_1992-48_11111111"&gt;31/8/2005 to
            18/11/2005&lt;/remotelink&gt;

				</xd:pre>
         <xd:p>
            <xd:b>Target XML 3</xd:b>
         </xd:p>
         <xd:pre>
				
&lt;ref:crossreferencegroup&gt;
	&lt;ref:crossreference crossreferencetype="seeAlso"&gt;                                        
		&lt;ref:content&gt;31/8/2005 to 18/11/2005&lt;/ref:content&gt;                                        
			&lt;ref:locator anchoridref="QLD_ACT_1992-48_20050831"&gt;                                             
				&lt;ref:locator-key&gt;
					&lt;ref:key-name name="DOC-ID"/&gt;
					&lt;ref:key-value value="0062-ABCD_5641"/&gt;
				&lt;/ref:locator-key&gt;			
			&lt;/ref:locator&gt;                                 
	&lt;/ref:crossreference&gt;
	&lt;ref:crossreference crossreferencetype="seeAlso"&gt;                                        
		&lt;ref:content&gt;31/8/2005 to 18/11/2005&lt;/ref:content&gt;                                        
			&lt;ref:locator&gt;                                            
				&lt;ref:locator-key&gt;
					&lt;ref:key-name name="DOC-ID"/&gt;
					&lt;ref:key-value value="0000-QLD_ACT_1992-48_00000000"/&gt;
				&lt;/ref:locator-key&gt;			
			&lt;/ref:locator&gt;                                 
	&lt;/ref:crossreference&gt;
	&lt;ref:crossreference crossreferencetype="seeAlso"&gt;                                        
		&lt;ref:content&gt;31/8/2005 to 18/11/2005&lt;/ref:content&gt;                                        
			&lt;ref:locator anchoridref="QLD_ACT_1992-48_11111111"&gt;                                            
				&lt;ref:locator-key&gt;
					&lt;ref:key-name name="DOC-ID"/&gt;
					&lt;ref:key-value value="1111-EFGH_2468"/&gt;
				&lt;/ref:locator-key&gt;	
			&lt;/ref:locator&gt;                                 
	&lt;/ref:crossreference&gt;
&lt;/ref:crossreferencegroup&gt;
				</xd:pre>
         <xd:p>
            <xd:b>Source XML 4: showing remotelink/sup</xd:b>
         </xd:p>
         <xd:pre>
				
&lt;remotelink remotekey1="REFPTID" service="DOC-ID" dpsi="0062" docidref="ABCD_5641" refpt="VIC_ACT_6231_FN31"&gt;
&lt;sup&gt;31&lt;/sup&gt;
&lt;/remotelink&gt;

				</xd:pre>
         <xd:p>
            <xd:b>Target XML 4</xd:b>
         </xd:p>
         <xd:pre>
				
&lt;ref:crossreferencegroup&gt;
	&lt;ref:crossreference crossreferencetype="seeAlso"&gt;
		&lt;ref:content&gt;&lt;sup&gt;31&lt;/sup&gt;&lt;/ref:content&gt;
			&lt;ref:locator anchoridref="VIC_ACT_6231_FN31"&gt;                                                
				&lt;ref:locator-key&gt;
					&lt;ref:key-name name="DOC-ID"/&gt;
					&lt;ref:key-value value="0062-ABCD_5641"/&gt;
				&lt;/ref:locator-key&gt;                                                    
			&lt;/ref:locator&gt;                                 
	&lt;/ref:crossreference&gt;                                    
&lt;/ref:crossreferencegroup&gt;

				</xd:pre>
         <xd:p>
            <xd:b>Source XML 5: for link to URL, with URL as content</xd:b>
         </xd:p>
         <xd:pre>
				
&lt;remotelink href="www.statedevelopment.qld.gov.au" hrefclass="http" newwindow="YES"&gt;www.statedevelopment.qld.gov.au&lt;/remotelink&gt;

&lt;!-- The following illustrates scenario where content of @hrefclass is already present in @href and so values are not concatenated for target --&gt;

&lt;remotelink href="http://www.acmecorp.com" hrefclass="http" newwindow="YES"&gt;www.acmecorp.com&lt;/remotelink&gt;

				</xd:pre>
         <xd:p>
            <xd:b>Target XML 5: for link to URL, with URL as content</xd:b>
         </xd:p>
         <xd:pre>
				
&lt;url normval="http://www.statedevelopment.qld.gov.au"&gt;www.statedevelopment.qld.gov.au&lt;/url&gt;

&lt;url normval="http://www.acmecorp.com"&gt;www.acmecorp.com&lt;/url&gt;

				</xd:pre>
         <xd:p>
            <xd:b>Note: </xd:b>As shown here in Example 6, the use of an @href attribute without @hrefclass, where 
			the @href attribute does not itself contain an hrefclass, ("http://" for example),
			is not advised because the resulting @normval would not contain
			the hrefclass. Normalized values should be consistent in providing the href class.
			The link to the target may not work.</xd:p>
         <xd:p>
            <xd:b>Source XML 6: for link to URL with no hrefclass attribute, and with URL as
			content</xd:b>
         </xd:p>
         <xd:pre>
				
&lt;remotelink href="www.asx.com" newwindow="YES" service="SEARCH"&gt;www.asx.com&lt;/remotelink&gt;

				</xd:pre>
         <xd:p>
            <xd:b>Target XML 6: for link to URL with no hrefclass attribute, and with URL as
			content</xd:b>
         </xd:p>
         <xd:pre>
				
&lt;url normval="www.asx.com"&gt;www.asx.com&lt;/url&gt;

				</xd:pre>
         <xd:p>
            <xd:b>Source XML 7: for link to URL, with non-URL text content</xd:b>
         </xd:p>
         <xd:pre>
				
&lt;remotelink href="www.asx.com" hrefclass="http" newwindow="YES" service="SEARCH" status="valid"&gt;Australian Securities Exchange (ASX)&lt;/remotelink&gt;

&lt;!-- The following illustrates scenario where content of @hrefclass is already present in @href and so values are not concatenated for target --&gt;

&lt;remotelink href="http://www.acmecorp.com" hrefclass="http" newwindow="YES"&gt;Acme Corporation&lt;/remotelink&gt;

				</xd:pre>
         <xd:p>
            <xd:b>Target XML 7: for link to URL, with non-URL text content</xd:b>
         </xd:p>
         <xd:pre>
				
&lt;ref:lnlink service="URL"&gt;
  &lt;ref:marker&gt;Australian Securities Exchange (ASX)&lt;/ref:marker&gt;
  &lt;ref:locator&gt;
    &lt;ref:locator-key&gt;
      &lt;ref:key-name name="URL"/&gt;
      &lt;ref:key-value value="http://www.asx.com"/&gt;
    &lt;/ref:locator-key&gt;
  &lt;/ref:locator&gt;
&lt;/ref:lnlink&gt;

&lt;ref:lnlink service="URL"&gt;
  &lt;ref:marker&gt;Acme Corporation&lt;/ref:marker&gt;
  &lt;ref:locator&gt;
    &lt;ref:locator-key&gt;
      &lt;ref:key-name name="URL"/&gt;
      &lt;ref:key-value value="http://www.acmecorp.com"/&gt;
    &lt;/ref:locator-key&gt;
  &lt;/ref:locator&gt;
&lt;/ref:lnlink&gt;

				</xd:pre>
         <xd:p>
            <xd:b>Note: </xd:b>Please note that XML comments need to be added around markup <xd:b>ref:marker
		  </xd:b> if it is in <xd:b>ref:lnlink@service=”URL”</xd:b>and the
			<xd:b>ref:key-value@value</xd:b> starts-with
			(<xd:b>'http://www.lexisnexis.com/au/legal/api'</xd:b>). Please see the below target xml for more
		  details. </xd:p>
         <xd:p>
            <xd:b>Source XML 7a: for link to URL, with non-URL text content</xd:b>
         </xd:p>
         <xd:pre>

    &lt;remotelink href=”www.lexisnexis.com/au/legal/api/version1/sr?csi=357205&amp;sr=FILE%2DCODE(%28%23LL00093CF%23+OR+%23LL000CQNJ%23%29)&amp;shr=T&amp;oc=00254"
 hrefclass="http" newwindow="YES" service="SEARCH" status="valid"&gt;Search LexisNexisAU&lt;/remotelink&gt;

		  </xd:pre>
         <xd:p>
            <xd:b>Target XML 7a: for link to URL, with non-URL text content</xd:b>
         </xd:p>
         <xd:pre>

&lt;ref:lnlink service="URL"&gt;
  &lt;!--&lt;ref:marker&gt;Search LexisNexisAU&lt;/ref:marker&gt;--&gt;
  &lt;ref:locator&gt;
    &lt;ref:locator-key&gt;
      &lt;ref:key-name name="URL"/&gt;
      &lt;ref:key-value value="http://www.lexisnexis.com/au/legal/api/version1/sr?csi=357205&amp;sr=FILE%2DCODE(%28%23LL00093CF%23+OR+%23LL000CQNJ%23%29)&amp;shr=T&amp;oc=00254"/&gt;
    &lt;/ref:locator-key&gt;
  &lt;/ref:locator&gt;
&lt;/ref:lnlink&gt;

		  </xd:pre>
         <xd:p>
            <xd:b>Source XML 8: for link to URL with no hrefclass attribute, and with non-URL text
			content</xd:b>
         </xd:p>
         <xd:pre>
				
&lt;remotelink href="http://www.legislation.vic.gov.au/Domino/Web_Notes/LDMS/PubStatbook.nsf/b05145073fa2a882ca256da4001bc4e7/DDB2D286D7B9C8E2CA2578C6001CCC82/$FILE/11-058sr%20authorised.pdf" service="URL" newwindow="YES"&gt;Government Website&lt;/remotelink&gt;

				</xd:pre>
         <xd:p>
            <xd:b>Target XML 8: for link to URL with no hrefclass attribute, and with non-URL text
			content</xd:b>
         </xd:p>
         <xd:pre>
				
&lt;ref:lnlink service="URL"&gt;
  &lt;ref:marker&gt;Government Website&lt;/ref:marker&gt;
  &lt;ref:locator&gt;
    &lt;ref:locator-key&gt;
      &lt;ref:key-name name="URL"/&gt;
      &lt;ref:key-value value="http://www.legislation.vic.gov.au/Domino/Web_Notes/LDMS/PubStatbook.nsf/b05145073fa2a882ca256da4001bc4e7/DDB2D286D7B9C8E2CA2578C6001CCC82/$FILE/11-058sr%20authorised.pdf"/&gt;
    &lt;/ref:locator-key&gt;
  &lt;/ref:locator&gt;
&lt;/ref:lnlink&gt;

				</xd:pre>
         <xd:p>
            <xd:ul>
               <xd:li>If <xd:i>remotelink[@service= ‘DOC-ID’]</xd:i> is a child of
				  <xd:i>glp:note</xd:i>; glp:note becomes
				  <xd:b>note/bodytext/p/text</xd:b>, <xd:i>remotelink[@service=
				  ‘DOC-ID’]</xd:i> becomes <xd:b>ref:crossreference</xd:b> (see
				conversion rules in remotelink section). </xd:li>
            </xd:ul>
         </xd:p>
         <xd:p>
            <xd:b>Source XML 9:</xd:b>
         </xd:p>
         <xd:pre>

&lt;glp:note&gt;
    &lt;remotelink dpsi="006P" refpt="AFL.FL.FLA75.PT1_2" remotekey1="REFPTID" service="DOC-ID"  docidref="ABCD_5641" status="unval"&gt;
        Next page in this legislation
    &lt;/remotelink&gt;
&lt;/glp:note&gt;

		  </xd:pre>
         <xd:p>
            <xd:b>Target XML 9</xd:b>
         </xd:p>
         <xd:pre>

&lt;note&gt;
    &lt;bodytext&gt;
        &lt;p&gt;
            &lt;text&gt;					                            
                &lt;ref:crossreference crossreferencetype="seeAlso"&gt;                                        
                    &lt;ref:content&gt;Next page in this legislation&lt;/ref:content&gt;                                        
                    &lt;ref:locator anchoridref="AFL.FL.FLA75.PT1_2"&gt;                                            
                        &lt;ref:locator-key&gt;
                            &lt;ref:key-name name="DOC-ID"/&gt;
                            &lt;ref:key-value value="006P-ABCD_5641"/&gt;
                        &lt;/ref:locator-key&gt;		
                    &lt;/ref:locator&gt;                                 
                &lt;/ref:crossreference&gt;                             
            &lt;/text&gt;
        &lt;/p&gt;
    &lt;/bodytext&gt;
&lt;/note&gt;

		  </xd:pre>
         <xd:p>
            <xd:b>Source XML 10: <xd:i>remotelink</xd:i> as a child of
			  <xd:i>ci:cite/ci:content</xd:i>
            </xd:b>
         </xd:p>
         <xd:pre>
			
      &lt;ci:cite searchtype="LEG-REF"&gt;
        &lt;ci:content&gt;
          &lt;remotelink refpt="CTH_ACT_1993-80" dpsi="005X" docidref="ABCD_9876" 
            remotekey1="REFPTID" service="DOC-ID" 
            alttext="Click to link to LawNow Legislation"&gt;Superannuation (Resolution of Complaints) Act 1993&lt;/remotelink&gt;.
        &lt;/ci:content&gt;
      &lt;/ci:cite&gt;			
			
			</xd:pre>
         <xd:p>
            <xd:b>Target XML 10: <xd:i>remotelink</xd:i> as a child of
			  <xd:i>ci:cite/ci:content</xd:i>
            </xd:b>
         </xd:p>
         <xd:pre>

&lt;lnci:cite type="legislation"&gt;
    &lt;lnci:content&gt;
        &lt;ref:crossreference crossreferencetype="seeAlso"&gt;
            &lt;ref:content&gt;Superannuation (Resolution of Complaints) Act 1993&lt;/ref:content&gt;
            &lt;ref:locator anchoridref="CTH_ACT_1993-80"&gt;
                &lt;ref:locator-key&gt;
                    &lt;ref:key-name name="DOC-ID"/&gt;  
                    &lt;ref:key-value value="005X-ABCD_9876"/&gt;
                &lt;/ref:locator-key&gt;
            &lt;/ref:locator&gt;
        &lt;/ref:crossreference&gt;
    &lt;/lnci:content&gt;
&lt;/lnci:cite&gt;			

			</xd:pre>
         <xd:p>
            <xd:b>Source XML 11: <xd:i>remotelink</xd:i> as a child of
			  <xd:i>title</xd:i>
            </xd:b>
         </xd:p>
         <xd:pre>
				
&lt;level id="ACLPP_C1.SGM_ACLP.1.2.0015" leveltype="para0" toc-caption="[1.2.0015] Interpretation rules applicable to the Corporations Act: Pt&amp;#x00A0;1.2" subdoc="true"&gt;
    &lt;!-- ETC. --&gt;
    &lt;heading searchtype="COMMENTARY"&gt;
        &lt;edpnum&gt;
            &lt;refpt type="ext" id="ACLP.1.2.0015"&gt;&lt;/refpt&gt;[1.2.0015]&lt;/edpnum&gt;
        &lt;title&gt;Interpretation rules applicable to the Corporations Act:
            &lt;remotelink refpt="ACLL.CL.PT1-2" dpsi="006K" remotekey1="REFPTID" service="DOC-ID"  docidref="EFGH_2468"&gt;Pt&amp;#x00A0;1.2&lt;/remotelink&gt;
        &lt;/title&gt;
    &lt;/heading&gt;
    &lt;bodytext searchtype="COMMENTARY"&gt;
        &lt;!-- ETC. --&gt;
    &lt;/bodytext&gt;
&lt;/level&gt;
				</xd:pre>
         <xd:p>
            <xd:b>Target XML 11: <xd:i>remotelink</xd:i> as a child of
			  <xd:i>title</xd:i>
            </xd:b>
         </xd:p>
         <xd:pre>
				
&lt;seclaw:level xml:id="ACLPP_C1.SGM_ACLP.1.2.0015" leveltype="paragraph" alternatetoccaption="&amp;#x005B;1.2.0015&amp;#x005D; Interpretation rules applicable to the Corporations Act: Pt&amp;#x00A0;1.2" includeintoc="true"&gt;
    &lt;ref:anchor id="ACLP.1.2.0015" anchortype="global"/&gt;
    &lt;heading&gt;
        &lt;desig&gt;&amp;#x005B;1.2.0015&amp;#x005D;&lt;/desig&gt;
        &lt;title&gt;Interpretation rules applicable to the Corporations Act: &lt;ref:crossreferencegroup&gt;
                    &lt;ref:crossreference crossreferencetype="seeAlso"&gt;
                        &lt;ref:content&gt;Pt&amp;#x00A0;1.2&lt;/ref:content&gt;
                        &lt;ref:locator anchoridref="ACLL.CL.PT1-2"&gt;
                            &lt;ref:locator-key&gt;
                                &lt;ref:key-name name="DOC-ID"/&gt;
                                &lt;ref:key-value value="006K-EFGH_2468"/&gt;
                            &lt;/ref:locator-key&gt;
                        &lt;/ref:locator&gt;
                    &lt;/ref:crossreference&gt;
                &lt;/ref:crossreferencegroup&gt;&lt;/title&gt;
    &lt;/heading&gt;
    &lt;!-- ETC. --&gt;
    &lt;seclaw:bodytext&gt;
        &lt;!-- ETC. --&gt;
    &lt;/seclaw:bodytext&gt;
&lt;/seclaw:level&gt;
				</xd:pre>
         <xd:p>
            <xd:b>Source XML 12: <xd:i>remotelink</xd:i> with no attributes</xd:b>
         </xd:p>
         <xd:pre>

&lt;remotelink&gt;&lt;emph typestyle="smcaps"&gt;agency&lt;/emph&gt;&lt;/remotelink&gt;

				</xd:pre>
         <xd:p>
            <xd:b>Target XML 12: <xd:i>remotelink</xd:i> with no attributes</xd:b>
         </xd:p>
         <xd:pre>

&lt;emph typestyle="smcaps"&gt;agency&lt;/emph&gt;

				</xd:pre>
         <xd:p>
            <xd:b>Source XML 13: for link to URL with inlineobject as content</xd:b>
         </xd:p>
         <xd:pre>
				
&lt;remotelink href="www.kpmg.com.au/default.aspx?tabid=145" hrefclass="http" newwindow="YES"&gt;
  &lt;inlineobject type="image" attachment="ln-server" filename="kpmglogo.gif"/&gt;
&lt;/remotelink&gt;

				</xd:pre>
         <xd:p>
            <xd:b>Target XML 13: for link to URL with inlineobject as content</xd:b>
         </xd:p>
         <xd:pre>
				
&lt;ref:lnlink service="URL"&gt;
  &lt;ref:marker&gt;
    &lt;ref:inlineobject&gt;
      &lt;ref:locator&gt;
        &lt;ref:locator-key&gt;
            &lt;ref:key-name name="object-key"/&gt;
            &lt;ref:key-value value="X-Y-kpmglogo"/&gt;   &lt;!-- X and Y are LNI and SMI values obtained from CSSM --&gt;
        &lt;/ref:locator-key&gt;
        &lt;ref:locator-params&gt;
            &lt;proc:param name="componentseq" value="1"/&gt;
            &lt;proc:param name="object-type" value="image"/&gt; &lt;!-- allowable values: “image”; (from .jpg, .gif, .png, .bmp)--&gt;
            &lt;proc:param name="object-smi" value=""/&gt;    &lt;!-- This @value assignment is done by conversion program --&gt;
        &lt;/ref:locator-params&gt;
      &lt;/ref:locator&gt;
    &lt;/ref:inlineobject&gt;
  &lt;/ref:marker&gt;
  &lt;ref:locator&gt;
    &lt;ref:locator-key&gt;
      &lt;ref:key-name name="URL"/&gt;
      &lt;ref:key-value value="http://www.kpmg.com.au/default.aspx?tabid=145"/&gt;
    &lt;/ref:locator-key&gt;
  &lt;/ref:locator&gt;
&lt;/ref:lnlink&gt;

				</xd:pre>
         <xd:p>
            <xd:b>Source XML 14: <xd:i>emph</xd:i> as child of
			  <xd:i>remotelink</xd:i>
            </xd:b>
         </xd:p>
         <xd:pre>

    &lt;remotelink service="DOC-ID" remotekey1="REFPTID" refpt="04M2_1_1662:HTCOMM-PARAGRAPH" dpsi="04M2"&gt;
           HEC &lt;emph typestyle="bf"&gt;[1662]&lt;/emph&gt;
     &lt;/remotelink&gt;

				</xd:pre>
         <xd:p>
            <xd:b>Source XML 14: <xd:i>emph</xd:i> as child of
			  <xd:i>remotelink</xd:i>
            </xd:b>
         </xd:p>
         <xd:pre>
				
 &lt;ref:crossreference crossreferencetype="seeAlso"&gt;                                        
		&lt;ref:content&gt;HEC &lt;emph typestyle="bf"&gt;[1662]&lt;/emph&gt;&lt;/ref:content&gt;                                        
			&lt;ref:locator anchoridref="04M2_1_1662:HTCOMM-PARAGRAPH"&gt;                                             
				&lt;ref:locator-key&gt;
					&lt;ref:key-name name="DOC-ID"/&gt;
					&lt;ref:key-value value="04M2-ABC"/&gt;
				&lt;/ref:locator-key&gt;			
			&lt;/ref:locator&gt;                                 
	&lt;/ref:crossreference&gt;

				</xd:pre>
         <xd:p>
            <xd:b>Source XML 15: <xd:i>remotelink</xd:i> occurs as multiple, immediate siblings
			and without intermediary text within <xd:i>title</xd:i>
            </xd:b>
         </xd:p>
         <xd:pre>

&lt;leg:level&gt;
 &lt;leg:level-vrnt leveltype="prov1"&gt;
  &lt;leg:heading&gt;
   &lt;title&gt;&lt;refpt id="EU_LEGISLATION:31998L0096R_02:" type="ext"/&gt;Corrigendum to Council &lt;remotelink service="DOC-ID" remotekey1="REFPTID" refpt="EU_LEGISLATION:Directive_98_96_EC_" dpsi="08LU" docidref="08LU_EU_LEGISLATION:Directive_98_96_EC_"&gt;Directive 98/96/EC&lt;/remotelink&gt; of 14 December 1998 amending, inter alia, as regards unofficial field inspections under &lt;remotelink service="DOC-ID" remotekey1="REFPTID" refpt="EU_LEGISLATION:Directives_66_400_EEC__" dpsi="08LU" docidref="08LU_EU_LEGISLATION:Directives_66_400_EEC__"&gt;Directives 66/400/EEC, &lt;/remotelink&gt;66/401/EEC, 66/402/EEC, 66/403/EEC, 69/208/EEC, 70/457/EEC and 70/458/EEC on the marketing of beet seed, fodder plant seed, cereal seed, seed potatoes, seed of oil and fibre plants and vegetable seed and on the common catalogue of varieties of agricultural plant species (OJ L 25 of 1.2
   &lt;remotelink service="DOC-ID" remotekey1="REFPTID" refpt="EU_LEGISLATION:_EEC__66_401" dpsi="08LU" docidref="08LU_EU_LEGISLATION:_EEC__66_401"&gt;/EEC, 66/401&lt;/remotelink&gt;
   &lt;remotelink service="DOC-ID" remotekey1="REFPTID" refpt="EU_LEGISLATION:_EEC__66_402" dpsi="08LU" docidref="08LU_EU_LEGISLATION:_EEC__66_402"&gt;/EEC, 66/402&lt;/remotelink&gt;
   &lt;remotelink service="DOC-ID" remotekey1="REFPTID" refpt="EU_LEGISLATION:_EEC__66_403" dpsi="08LU" docidref="08LU_EU_LEGISLATION:_EEC__66_403"&gt;/EEC, 66/403&lt;/remotelink&gt;
   &lt;remotelink service="DOC-ID" remotekey1="REFPTID" refpt="EU_LEGISLATION:_EEC__69_208" dpsi="08LU" docidref="08LU_EU_LEGISLATION:_EEC__69_208"&gt;/EEC, 69/208&lt;/remotelink&gt;
   &lt;remotelink service="DOC-ID" remotekey1="REFPTID" refpt="EU_LEGISLATION:_EEC__70_457" dpsi="08LU" docidref="08LU_EU_LEGISLATION:_EEC__70_457"&gt;/EEC, 70/457&lt;/remotelink&gt;/EEC and
   &lt;remotelink service="DOC-ID" remotekey1="REFPTID" refpt="EU_LEGISLATION:_70_458" dpsi="08LU" docidref="08LU_EU_LEGISLATION:_70_458"&gt; 70/458&lt;/remotelink&gt;/EEC on the marketing of beet seed, fodder plant seed, cereal seed, seed potatoes, seed of oil and fibre plants and vegetable seed and on the common catalogue of varieties of agricultural plant species (OJ L 25 of 1.2.1999)&lt;/title&gt;
  &lt;/leg:heading&gt;
  &lt;!-- ETC. --&gt;
 &lt;/leg:level-vrnt&gt;
&lt;/leg:level&gt;
		  </xd:pre>
         <xd:p>
            <xd:b>Target XML 15: <xd:i>remotelink</xd:i> occurs as multiple, immediate siblings
			and without intermediary text within <xd:i>title</xd:i>
            </xd:b>
         </xd:p>
         <xd:pre>

&lt;primlaw:level leveltype="section"&gt;
 &lt;heading&gt;
  &lt;title&gt;Corrigendum to Council &lt;ref:crossreference crossreferencetype="seeAlso"&gt;&lt;ref:content&gt;Directive 98/96/EC &lt;/ref:content&gt;&lt;ref:locator anchoridref="EU_LEGISLATION_Directive_98_96_EC_"&gt;&lt;ref:locator-key&gt;&lt;ref:key-name name="DOC-ID"/&gt;&lt;ref:key-value value="08LU-08LU_EU_LEGISLATION_Directive_98_96_EC_"/&gt;&lt;/ref:locator-key&gt;&lt;/ref:locator&gt;&lt;/ref:crossreference&gt; of 14 December 1998 amending, inter alia, as regards unofficial field inspections under &lt;ref:crossreference crossreferencetype="seeAlso"&gt;&lt;ref:content&gt;Directives 66/400/EEC, &lt;/ref:content&gt;&lt;ref:locator anchoridref="EU_LEGISLATION_Directives_66_400_EEC__"&gt;&lt;ref:locator-key&gt;&lt;ref:key-name name="DOC-ID"/&gt;&lt;ref:key-value value="08LU-08LU_EU_LEGISLATION_Directives_66_400_EEC__"/&gt;&lt;/ref:locator-key&gt;&lt;/ref:locator&gt;&lt;/ref:crossreference&gt;66/401/EEC, 66/402/EEC, 66/403/EEC, 69/208/EEC, 70/457/EEC and 70/458/EEC on the marketing of beet seed, fodder plant seed, cereal seed, seed potatoes, seed of oil and fibre plants and vegetable seed and on the common catalogue of varieties of agricultural plant species (OJ L 25 of 1.2
   &lt;ref:crossreference crossreferencetype="seeAlso"&gt;
    &lt;ref:content&gt;/EEC, 66/401&lt;/ref:content&gt;
    &lt;ref:locator anchoridref="EU_LEGISLATION__EEC__66_401"&gt;
     &lt;ref:locator-key&gt;
      &lt;ref:key-name name="DOC-ID"/&gt;
      &lt;ref:key-value value="08LU-08LU_EU_LEGISLATION__EEC__66_401"/&gt;
     &lt;/ref:locator-key&gt;
    &lt;/ref:locator&gt;
   &lt;/ref:crossreference&gt;
   &lt;ref:crossreference crossreferencetype="seeAlso"&gt;
    &lt;ref:content&gt;/EEC, 66/402&lt;/ref:content&gt;
    &lt;ref:locator anchoridref="EU_LEGISLATION__EEC__66_402"&gt;
     &lt;ref:locator-key&gt;
      &lt;ref:key-name name="DOC-ID"/&gt;
      &lt;ref:key-value value="08LU-08LU_EU_LEGISLATION__EEC__66_402"/&gt;
     &lt;/ref:locator-key&gt;
    &lt;/ref:locator&gt;
   &lt;/ref:crossreference&gt;
   &lt;ref:crossreference crossreferencetype="seeAlso"&gt;
    &lt;ref:content&gt;/EEC, 66/403&lt;/ref:content&gt;
    &lt;ref:locator anchoridref="EU_LEGISLATION__EEC__66_403"&gt;
     &lt;ref:locator-key&gt;
      &lt;ref:key-name name="DOC-ID"/&gt;
      &lt;ref:key-value value="08LU-08LU_EU_LEGISLATION__EEC__66_403"/&gt;
     &lt;/ref:locator-key&gt;
    &lt;/ref:locator&gt;
   &lt;/ref:crossreference&gt;
   &lt;ref:crossreference crossreferencetype="seeAlso"&gt;
    &lt;ref:content&gt;/EEC, 69/208&lt;/ref:content&gt;
    &lt;ref:locator anchoridref="EU_LEGISLATION__EEC__69_208"&gt;
     &lt;ref:locator-key&gt;
      &lt;ref:key-name name="DOC-ID"/&gt;
      &lt;ref:key-value value="08LU-08LU_EU_LEGISLATION__EEC__69_208"/&gt;
     &lt;/ref:locator-key&gt;
    &lt;/ref:locator&gt;
   &lt;/ref:crossreference&gt;
   &lt;ref:crossreference crossreferencetype="seeAlso"&gt;
    &lt;ref:content&gt;/EEC, 70/457&lt;/ref:content&gt;
    &lt;ref:locator anchoridref="EU_LEGISLATION__EEC__70_457"&gt;
     &lt;ref:locator-key&gt;
      &lt;ref:key-name name="DOC-ID"/&gt;
      &lt;ref:key-value value="08LU-08LU_EU_LEGISLATION__EEC__70_457"/&gt;
     &lt;/ref:locator-key&gt;
    &lt;/ref:locator&gt;
   &lt;/ref:crossreference&gt;/EEC and
   &lt;ref:crossreference crossreferencetype="seeAlso"&gt;
    &lt;ref:content&gt; 70/458&lt;/ref:content&gt;
    &lt;ref:locator anchoridref="EU_LEGISLATION__70_458"&gt;
     &lt;ref:locator-key&gt;
      &lt;ref:key-name name="DOC-ID"/&gt;
      &lt;ref:key-value value="08LU-08LU_EU_LEGISLATION__70_458"/&gt;
     &lt;/ref:locator-key&gt;
    &lt;/ref:locator&gt;
   &lt;/ref:crossreference&gt;/EEC on the marketing of beet seed, fodder plant seed, cereal seed, seed potatoes, seed of oil and fibre plants and vegetable seed and on the common catalogue of varieties of agricultural plant species (OJ L 25 of 1.2.1999)&lt;/title&gt;
  &lt;/heading&gt;
  &lt;!-- ETC. --&gt;
&lt;/primlaw:level&gt;  

		  </xd:pre>
         <xd:p>
            <xd:b>Source XML 16: <xd:i>remotelink[@service="QUERY"]</xd:i>
            </xd:b>
         </xd:p>
         <xd:pre>

&lt;p&gt;
    &lt;text&gt;Consultation Paper: The Award of Costs from Central Funds in Criminal
        Cases - &lt;remotelink service="QUERY"
            remotekey1="DIGEST-CITATION(LNB News 06/11/2008 25)"
            remotekey2="All Subscribed Current Awareness Sources" cmd="f:exp"
            alttext="References to"&gt;LNB News 06/11/2008 25&lt;/remotelink&gt;; &lt;/text&gt;
&lt;/p&gt;

	</xd:pre>
         <xd:p>
            <xd:b>Target XML 16: <xd:i>remotelink[@service="QUERY"]</xd:i>
            </xd:b>
         </xd:p>
         <xd:pre>

&lt;p&gt;
    &lt;text&gt;Consultation Paper: The Award of Costs from Central Funds in Criminal
        Cases - LNB News 06/11/2008 25; &lt;/text&gt;
&lt;/p&gt;

	</xd:pre>
         <xd:p>
            <xd:b>Source XML 17: <xd:i>remotelink</xd:i> as a child of <xd:i>emph</xd:i>
            </xd:b>
         </xd:p>
         <xd:pre>
&lt;ci:cite searchtype="LEG-REF"&gt;
    &lt;ci:content&gt;
        &lt;citefragment searchtype="LEG-NAME-REF"&gt;
            &lt;emph typestyle="it"&gt;
                &lt;remotelink dpsi="0069" remotekey1="REFPTID" service="DOC-ID" refpt="1952A52"
                    docidref="1952A52.BODY"&gt;Land Transfer Act 1952&lt;/remotelink&gt;
            &lt;/emph&gt;
        &lt;/citefragment&gt;
        &lt;emph typestyle="it"&gt;, ss 62, 105 and 119&lt;/emph&gt;
    &lt;/ci:content&gt;
&lt;/ci:cite&gt;
	</xd:pre>
         <xd:p>
            <xd:b>Target XML 17: <xd:i>remotelink</xd:i> as a child of <xd:i>emph</xd:i>
            </xd:b>
         </xd:p>
         <xd:pre>
&lt;lnci:cite type="legislation"&gt;
    &lt;lnci:content&gt;
            &lt;ref:crossreference crossreferencetype="seeAlso"&gt;
                &lt;ref:content&gt;Land Transfer Act 1952&lt;/ref:content&gt;
                &lt;ref:locator anchoridref="_1952A52"&gt;
                    &lt;ref:locator-key&gt;
                        &lt;ref:key-name name="DOC-ID"/&gt;
                        &lt;ref:key-value value="0069-1952A52.BODY"/&gt;
                    &lt;/ref:locator-key&gt;
                &lt;/ref:locator&gt;
            &lt;/ref:crossreference&gt;
        &lt;emph typestyle="it"&gt;, ss 62, 105 and 119&lt;/emph&gt;
    &lt;/lnci:content&gt;
&lt;/lnci:cite&gt;
	</xd:pre>
         <!--Changes2016-11-16: Added to note regarding applying any rules related to 
			@anchoridref, referring specifically to section for "Identifiers to ID Data Type - 
			Handling Pattern Restrictions".2011-12-16: Created. 2011-12-16: Changed URL/Email link instructions and example to map to url target element. 2011-12-22: Defined a rule for glp:note/remotelink, per linking strategy.2011-12-22: Removed reference to Email links, these do not happen in AU nor NZ data. 2011-12-22: Fixed formating of a sublist. 2011-12-22: Updated to match linking strategy. 2012-01-17: Updated instruction and example for handling remotelink[@service="DOC-ID"].2012-01-17: Added example for handling of remotelink/sup.2012-02-23: Added conversion instructions and the NL example for /remotelink @dpsi for the
			use case - remotelink @service='DOC-ID'.2012-02-28: Instruction update for handling remotelink appear in
			  title.2012-02-28: Example added for handling remotelink appear in
			  title.2012-02-29: Added instruction and example when remotelink has no
			  @hrefclass.2012-03-12: Added instruction and example for handling of scenario glp:note/remotelink in
			AU legislation/Courtrule.2012-03-15: Added instruction for single versus multiple, sibling occurrences of
			  remotelink.2012-03-16: Corrected target markup for ref:key-name/@name value.
			Changed from "DOC-ID" to "REFPTID.2012-04-26: Modified the instructions for the use case:
			  remotelink[@service='DOC-ID'] to include the text -'without
			intermediary text'.2012-04-27: Made fundemental modifications the instructions regarding
			  remotelink[@service='URL']. This is now usually converted to
			  ref:lnlink and only converted to url under
			certain conditions as described in the instructions. 2012-05-09: Removed the reference to AU Legislation/Courtrule: for the rule when
			  remotelink is the child of glp:note . This
			instruction is common across content types and not just AU Legis/Courtrule2012-05-14: Removed a note for handling remotelink appear in
			  title.2012-05-14: Example updated for handling title/remotelink.2012-05-24: Instructions updated for handling
			  glp:note/remotelink/@service='QUERY'.2012-06-06: Updated the instruction The ref:marker/@service attribute is set to "URL"
			  to The ref:lnlink/@service attribute is set to "URL".2012-06-12: Updated the instructions for use case:
			  remotelink[@service='DOC-ID']. Described exactly how to obtain a
			value for ref:key-value/@value depending on what other attributes and
			values are present.2012-07-04: Added instructions for the situation when remotelink
			doesn't have any attributes.2012-07-12: modified instruction for glp:note/remotelink handling when
			remotelink@service="DOC-ID".2012-07-31: Replaced the instruction "some other form of a URL" with dtd values (http |
			https | nohttp | mailto | ftp).2012-07-31: Updated the instructions for use case
			  remotelink[@service='DOC-ID'] with directions to set the value of
			  ref:crossreference/@crossreferencetype to "seeAlso".2012-08-17: Updated the instructions for use case
			  remotelink[@service='DOC-ID'] with new instructions for
			  ref:crossreference/ref:locator/ref:locator-key.2012-08-17: Moved handling for NZ Cases to a separate module.2012-09-05: Added to note for ref:locator/@anchoridref that begins
			with a number... Also apply other identifier data type format as used for
			  xml:id and ref:anchor/@id (e.g. change colon
			to underscore).2012-12-03: Instruction and example added for
			remotelink/@xml:lang.2013-01-22: Instruction and example added for
			  ci:cite/ci:content/remotelink specifying that the
			  remotelink is to be converted to
			  ref:crossreference but the containing elements' start-tags and
			end-tags (ci:cite and ci:content) are
			dropped.2013-02-18: Target example updated per inlineobject instructions. 2013-02-18: Created two sections, one for "Release 4.0 and
				after" and another for "Pre-Release 4.0".2013-03-11: Instruction and example added on how to handle
				ref:marker  if it is in
				ref:lnlink@service=”URL”and the
				ref:key-value@value starts-with (.,
				'http://www.lexisnexis.com/au/legal/api')2013-04-10: Added Source XML 7a: for link to URL, with non-URL
			  text content because it was previously missing, only the target example was here.2013-04-30: Updated target sample according to latest Apollo
			  markup.2013-05-01: Removed instructions for section "Pre-Release
				4.0" because according to latest Apollo markup, section "Release 4.0 and
				after" and section "Pre-Release 4.0" now have similar conversion
			markup.2013-05-01: "Instruction added for
				ci:cite/ci:content/remotelink specifying that the
				remotelink is to be converted to
				ref:crossreference but the containing elements' start-tags and
			  end-tags (ci:cite and ci:content) are
			  dropped", has been removed from the instructions and now remotelink
			  will be converted to the resulting mapping where it is. For more details you can see
			  example: Source XML 10: remotelink as a child of
				  ci:cite/ci:content2013-05-08: Extended the list of allowable values for image
			  handling.2013-06-03: Updated the Target XML 2 by removing the
				@crossreferencetype for Canada example.2013-08-22: Not a rule change. Modified Sample #10 on
				ci:cite/ci:content/remotelink. Removed target attribute
				lnci:cite[@citeref] because value captured in
				ref:crossreference/ref:locator[@anchoridref].2013-10-03: Added use case where remotelink contains @href
			  which is a URL but does not contain @hrefclass='http'.2013-10-23: Added Example when
				remotelink having child emph. Webteam #
			  2398162014-02-03: Instruction updated if
				remotelink occurs as multiple, immediate siblings and without
			  intermediary text within title. Also added a example for the same
			  scenario. Phase 5 UK discussion-defect tracking issue #1612014-02-25: Updated instruction and created new example (#16)
			  for handling remotelink[@service="QUERY"]. New instruction
			  preserves pcdata but suppresses remotelink markup. Webstar #250335.
			  Change applies immediately to all Pacific streams, and in the long run to all
			  streams.2014-10-27: Minor. Within use case for
				@service="DOC-ID", rule for
				@remotekey1="REFPTID" now also applies when
				@remotekey1="REFPT". That is, the condition is expanded to
			  include value "REFPT"; the mapping is unchanged. The value
				"REFPT" is new in Oct 2014 redelivery of UK11-DN but the rule
			  applies to any stream where @remotekey1="REFPT" may occur. R4.5
			  Content Issue 2003.2015-01-09: For the two use cases associated with url (target
				url or ref:lnlink): Added exceptional rule
			  to not concatenate values when @hrefclass content is already
			  present in @href. Expanded examples 5 and 7 to illustrate the
			  scenario. Responds to data for UK10 Dictionaries but applies in general. R4.5 Content
			  Issue 2120.2015-05-22: Added an instruction to explicitly indicate remotelink/@status is always dropped (suppressed). This is a very low-priority change and has been added for technical correctness, particularly with respect to new CIs. Existing scripts do not have to implement this change unless needed since prior to the change remotelink/@status handling was not explicitly specified.2015-06-24: Added clarification note about url, @normval, and @hrefclass. Webstar 302055.2016-02-05: Added note and example when
				remotelink is a child of emph. Applicable
			on NZ17CC, Webstar: 319232 and 318735.2016-08-03: Added Note about xml snippets that illustrate
			image handling. Note summarizes move from Apollo to Blobstore application. UK is
			first LBU to move to Blobstore.-->
      </xd:desc>
   </xd:doc>
   <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_remotelink-LxAdv-ref.crossreference.dita  -->
   <xsl:template match="remotelink/@status"/>
   <!-- JL: suppressing attributes as templates because they are used in more complex ways below -->
   <xsl:template match="remotelink/@refpt"/>

   <xsl:template match="remotelink/@dpsi"/>

   <xsl:template match="remotelink/@service"/>

   <xsl:template match="remotelink/@remotekey1"/>

   <xsl:template match="remotelink[@hrefclass ne 'http'  and @service = 'SEARCH']">
      <xsl:comment>
         <xsl:copy-of select="."/>
      </xsl:comment>
   </xsl:template>

   <xsl:template match="remotelink[ @service = 'QUERY' ][ not( ancestor::docinfo:assoc-links or parent::glp:note[ not( starts-with( $streamID , 'NZ' ) ) ] ) ]"><!--  Original Target XPath:  ref:crossreference   --><!-- Suppress remotelink and retain the content -->
      <xsl:apply-templates/>
   </xsl:template>

   <xsl:template match="remotelink[ancestor::docinfo:assoc-links][ @service = 'QUERY' ][ not( $streamID = ( 'CA03', 'CA05' , 'CA06' , 'CA07', 'CA08' ) ) ]"/>
   <!--Commeted below line for stop the warning of duplicate rule of glp:note/remotelink-->   <!--<xsl:template match="glp:note/remotelink[ @service = 'QUERY' ][ starts-with( $streamID , 'NZ' ) ]"/>-->
   <xsl:template name="remotelinkDOCID"><!--  Original Target XPath:  ref:crossreference   -->
      <ref:crossreference><!-- following atts and inlineobject template from modules/cttr/HK08k_subseqcases_cttr.annot.xsl --><!-- Sudhanshu Srivastava : Added condition for parent cttr:annot and streamID CA03. --><!-- Awantika: Added inlineobject for AU01 -->
         <xsl:attribute name="crossreferencetype"
                        select="if (((parent::source_cttr:annot or parent::source_cttr:annot or ancestor::citefragment[ancestor::case:references]) and $streamID=('HK08' , 'AU02', 'AU04','UK05','CA03')) or (ancestor::citefragment and inlineobject and $streamID=('NZ09', 'AU17'))or (parent::ci:content and $streamID='AU20') or inlineobject and $streamID='AU01') then 'citatorAlert' else 'seeAlso'"/>
         <xsl:if test="(parent::source_cttr:annot or parent::source_cttr:annot and $streamID=('HK08' , 'AU02', 'AU04','UK05','CA03')) or (ancestor::citefragment and inlineobject and $streamID=('NZ09', 'AU17')) or (parent::ci:content and $streamID='AU20') or inlineobject and $streamID='AU01'">
            <xsl:attribute name="referencedresourcetype" select="'citator'"/>
            <xsl:apply-templates select="inlineobject" mode="citator-ref"/>
         </xsl:if>
         <!-- JD: 20170525: (from UK05) following if test for att 'referencedresourcesentiment' from modules/cttr/UK05_Citator_annotations_cttr.annot-LxAdv-cttr.refs.xsl -->
         <xsl:if test="parent::source_cttr:annot/@signal or parent::source_cttr:annot/@signal and $streamID=('UK05','CA03')">
            <xsl:attribute name="referencedresourcesentiment">
               <xsl:choose>
                  <xsl:when test="parent::source_cttr:annot/@signal='citation'">
                     <xsl:value-of select="'none'"/>
                  </xsl:when>
                  <xsl:when test="not(parent::source_cttr:annot/@signal='citation') and parent::source_cttr:annot/@signal">
                     <xsl:value-of select="parent::source_cttr:annot/@signal"/>
                  </xsl:when>
                  <xsl:when test="parent::source_cttr:annot/@signal='citation'">
                     <xsl:value-of select="'none'"/>
                  </xsl:when>
                  <xsl:otherwise>
                     <xsl:copy-of select="parent::source_cttr:annot/@signal"/>
                  </xsl:otherwise>
               </xsl:choose>
            </xsl:attribute>
         </xsl:if>
         <xsl:if test="ancestor::citefragment and inlineobject and $streamID=('AU17')">
            <xsl:attribute name="referencedresourcesentiment">
               <xsl:value-of select="lower-case(substring-before(inlineobject/@alttext, ' '))"/>
            </xsl:attribute>
         </xsl:if>
         <!-- JL: Ok to output empty ref:content as ref:content is a required element -->
         <!-- Awantika:24-07-2017: for AU20 added parent::ci:content -->
         <ref:content>
            <xsl:if test="$streamID='AU19_CC'">
               <xsl:attribute name="xml:lang">
                  <xsl:value-of select="/CASEDOC/docinfo/docinfo:doc-lang/@lang"/>
               </xsl:attribute>
            </xsl:if>
            <xsl:copy-of select="@xml:lang"/>
            <xsl:apply-templates select="if($streamID='UK12') then @* except(@xml:lang,@refpt) else @* except@xml:lang"/>
            <xsl:if test="parent::source_cttr:annot and $streamID=('HK08' , 'AU02', 'AU04') or parent::ci:content and $streamID='AU20'">
               <xsl:value-of select="if (contains(inlineobject/@alttext, ' - Click for CaseBase entry')) then substring-before(inlineobject/@alttext, ' - Click for CaseBase entry') else inlineobject/@alttext"/>
            </xsl:if>
            <xsl:if test=" $streamID=('NZ09', 'AU17','AU01','NZ11','AU10','HK07')">
               <xsl:value-of select="if (contains(inlineobject/@alttext, ' - Click for CaseBase entry')) then substring-before(inlineobject/@alttext, ' - Click for CaseBase entry') else inlineobject/@alttext"/>
            </xsl:if>
            <!-- Sudhanshu Srivastava: Added if condition for getting ref content for CA03 -->
            <xsl:if test="parent::source_cttr:annot and $streamID=('CA03')">
               <xsl:value-of select="if (contains(inlineobject/@alttext, 'QuickCITE - ')) then substring-after(inlineobject/@alttext, 'QuickCITE - ') else inlineobject/@alttext"/>
            </xsl:if>
            <!-- Awantika:24-07-2017: blobstore mapping was getting created therefore added 'except' for AU20 not to create that instead create the 
					below ref:locator-->
            <xsl:apply-templates select="node() except inlineobject[parent::remotelink[parent::ci:content][$streamID=('AU20','HK07')]] except inlineobject[$streamID='AU01']"/>
         </ref:content>
         <ref:locator>
            <xsl:for-each select=" if (@refpt) then @refpt else @remotekey2"><!-- MDS - 2017-05-12 - Created choose statement to deal with empty @refpt in source resulting in empty @anchoridref in target. -->
               <xsl:choose>
                  <xsl:when test="normalize-space(.) = ''"/>
                  <xsl:otherwise><!-- JD: 2017-05-26: adding 'if' to prevent @anchoridref being added from markup like this:
							<remotelink remotekey1="DOC-ID" service="DOC-ID" remotekey2="a1baecf6-dc1f-4bd0-ba0c-a91177f0efe6" dpsi="03W6" status="valid"/>
							so as to match DT output.
							--><!-- Sudhanshu Srivastava: addrd StreamID CA03, no need to generate anchoridref attribute. --><!-- Paul: this is often the case.  May want "and @remotekey1="REFPTID" in this somewhere.
								I'm getting it with DOC-ID in the attribute.  AU08
								PS2017042700263627135LNIAUCOURTRULES_input_VIC_REG_2008-14810000.xml
			                    <remotelink dpsi="03AP" remotekey1="DOC-ID" remotekey2="LAWNOW_LEG_LAUNCH_VIC" service="DOC-ID">LawNow Home Page</remotelink>
							If @remotekey1="REFPTID" then
								– Create ref:locator/@anchoridref with value from @refpt or @remotekey2, which ever is present (if both are present, use
								@refpt).-->
                     <xsl:if test="not($streamID='UK05' or $streamID='CA03' or $streamID='AU19_CC') and parent::remotelink/@remotekey1='REFPTID'">
                        <xsl:attribute name="anchoridref">
                           <xsl:call-template name="normalizeIdString"/>
                        </xsl:attribute>
                     </xsl:if>
                  </xsl:otherwise>
               </xsl:choose>
            </xsl:for-each>
            <ref:locator-key>
               <xsl:choose><!-- Awantika: Added choose as it is required to capture URL in ref:key-name while creating ref:crossreference for p/remotelink in AU20 -->
                  <xsl:when test="parent::p[parent::note][$streamID='AU20']">
                     <ref:key-name name="URL"/>
                  </xsl:when>
                  <xsl:otherwise>
                     <ref:key-name name="DOC-ID"/>
                  </xsl:otherwise>
               </xsl:choose>
               <ref:key-value>
                  <xsl:attribute name="value"><!-- Awantika: Added choose as it is required to capture value of @href while creating ref:crossreference for p/remotelink in AU20 -->
                     <xsl:choose>
                        <xsl:when test="@dpsi">
                           <xsl:value-of select="@dpsi"/>
                        </xsl:when>
                        <xsl:when test="parent::p[parent::note][$streamID='AU20']">
                           <xsl:value-of select="@href"/>
                        </xsl:when>
                        <xsl:when test="not(@dpsi) and //docinfo/docinfo:dpsi/@id-string">
                           <xsl:value-of select="//docinfo/docinfo:dpsi/@id-string"/>
                        </xsl:when>
                        <xsl:when test="not(@dpsi) and not(//docinfo/docinfo:dpsi/@id-string)">
                           <xsl:value-of select="$dpsi"/>
                        </xsl:when>
                        <!-- JL if @dpsi isn't present, use DPSI from document or LBU manifest file as in CI above. 
									Verified with Pacific LBU 2017-11-06 -->
                        <!-- JL : dpsi may be validly missing if the link is invalid -->
                        <xsl:when test="@status=('unval','invalid')"><!-- no @dpsi however status is unvalidated or invalid so don't throw error  --></xsl:when>
                        <xsl:otherwise><!--<xsl:value-of select="$dpsi"/>-->
                           <xsl:call-template name="outputErrorMessage">
                              <xsl:with-param name="messageText"
                                              as="xs:string"
                                              select=" 'remotelink/@dpsi is missing and link cannot be correctly completed' "/>
                              <xsl:with-param name="errorType" as="xs:string" select=" 'ICCE' "/>
                              <xsl:with-param name="errorCode" as="xs:string*" select=" 'TBD' "/>
                              <xsl:with-param name="context" as="xs:string">
                                 <xsl:value-of select="base-uri()"/>
                              </xsl:with-param>
                           </xsl:call-template>
                        </xsl:otherwise>
                     </xsl:choose>
                     <xsl:text>-</xsl:text>
                     <xsl:choose>
                        <xsl:when test="$streamID='AU19_CC'">
                           <xsl:value-of select="@refpt"/>
                        </xsl:when>
                        <!-- CSN - 2017/11/06 - Backing this change out from the last SVN Version becuase it may fix AU08 but it breaks links for the other Conversions
								<xsl:when test=" @remotekey1 = 'DOC-ID' or @remotekey1 = 'DOCID' or @service='DOC-ID'">
								-->
                        <xsl:when test=" @remotekey1 = 'DOC-ID' or @remotekey1 = 'DOCID'">
                           <xsl:value-of select="if (@remotekey2) then @remotekey2 else @refpt"/>
                        </xsl:when>
                        <xsl:when test=" @remotekey1 = 'REFPTID' or @remotekey1 = 'REFPT' ">
                           <xsl:choose>
                              <xsl:when test="@docidref">
                                 <xsl:value-of select="@docidref"/>
                              </xsl:when>
                              <xsl:when test="@status=('unval','invalid')"><!-- no @docidref however status is unvalidated or invalid so don't throw error  --></xsl:when>
                              <xsl:otherwise><!-- This should be an error message -->
                                 <xsl:text>XXXX</xsl:text>
                                 <xsl:call-template name="outputErrorMessage">
                                    <xsl:with-param name="messageText"
                                                    as="xs:string"
                                                    select=" 'remotelink/@docidref is missing and link cannot be correctly completed' "/>
                                    <xsl:with-param name="errorType" as="xs:string" select=" 'ICCE' "/>
                                    <xsl:with-param name="errorCode" as="xs:string*" select=" '403' "/>
                                    <!--SNB: 2017-10-27 adding the XPATH of problem link to error output instead of previous base:uri() -->
                                    <xsl:with-param name="context" as="xs:string">
                                       <xsl:call-template name="generateXPath"/>
                                    </xsl:with-param>
                                    <!--<xsl:with-param name="context" as="xs:string"><xsl:value-of select="base-uri()"/> </xsl:with-param>-->
                                 </xsl:call-template>
                              </xsl:otherwise>
                           </xsl:choose>
                        </xsl:when>
                     </xsl:choose>
                  </xsl:attribute>
               </ref:key-value>
            </ref:locator-key>
         </ref:locator>
      </ref:crossreference>
   </xsl:template>
   <!--  multiple immediate sibling remotelinks will get grouped, see further below  -->
   <xsl:template match="remotelink[not(ancestor::docinfo:assoc-links)][ @service = 'DOC-ID' ][ preceding-sibling::node()[1][self::remotelink[ @service = 'DOC-ID' ] ] ]"/>
   <!--  process immediate sibling remotelink elements one by one  -->
   <xsl:template match="remotelink[not(ancestor::docinfo:assoc-links)][ @service = 'DOC-ID' ]"
                 mode="combineSiblingRemotelinks"><!--  output  ref:crossreference for the current remotelink  -->
      <xsl:call-template name="remotelinkDOCID"/>
      <!--  process immediate sibling remotelink elements one by one  -->
      <xsl:apply-templates select="following-sibling::node()[1][self::remotelink[not(ancestor::docinfo:assoc-links)][ @service = 'DOC-ID' ] ]"
                           mode="combineSiblingRemotelinks"/>
   </xsl:template>
   <!-- JD: 2017-10-13: trap remotelink as child of <li>  -->
   <xsl:template match="remotelink[not(ancestor::docinfo:assoc-links)][ @service = 'DOC-ID' ][ not( preceding-sibling::node()[1][self::remotelink[ @service = 'DOC-ID' ] ] ) ]     [parent::li]"
                 priority="1">
      <p>
         <text>
            <xsl:choose>
               <xsl:when test=" following-sibling::node()[1][self::remotelink[ @service = 'DOC-ID' ] ] and not(parent::ci:content)"><!--  multiple immediate sibling remotelinks, so group in ref:crossreferencegroup  -->
                  <ref:crossreferencegroup><!--  output  ref:crossreference for the current remotelink  -->
                     <xsl:call-template name="remotelinkDOCID"/>
                     <!--  process immediate sibling remotelink elements one by one  -->
                     <xsl:apply-templates select="following-sibling::node()[1][self::remotelink[ @service = 'DOC-ID' ] ]"
                                          mode="combineSiblingRemotelinks"/>
                  </ref:crossreferencegroup>
               </xsl:when>
               <xsl:otherwise><!--  no grouping needed, so just output  ref:crossreference for the current remotelink  -->
                  <xsl:call-template name="remotelinkDOCID"/>
               </xsl:otherwise>
            </xsl:choose>
         </text>
      </p>
   </xsl:template>
   <!-- For multiple, immediate, sibling
			  occurrences without intermediary text, group within a
				<targetxml>ref:crossreferencegroup</targetxml> parent except for
				<targetxml>lnci:content</targetxml> and <targetxml>title</targetxml>.<ul>  -->   <!--  @@@ SBy:  I do not understand what is meant by "except for lnci:content and title" since the examples have those under ref:crossreferencegroup even if there is only one remotelink[ @service = 'DOC-ID' ] sibling !!!  -->   <!-- JL: seems like lnci:content/ref:crossreferencegroup is not schema valid -->
   <xsl:template match="remotelink[not(ancestor::docinfo:assoc-links)][ @service = 'DOC-ID' ][ not( preceding-sibling::node()[1][self::remotelink[ @service = 'DOC-ID' ] ] ) ]"
                 priority="2">
      <xsl:choose><!-- BRT 1/30/17 fix issue with missing p element -->
         <xsl:when test="parent::bodytext and $streamID = ('UK15_DS')">
            <p>
               <text>
                  <xsl:call-template name="remotelinkDOCID"/>
               </text>
            </p>
         </xsl:when>
         <xsl:when test="$streamID=('AU10','NZ11') and ancestor::level/@leveltype='landingpage'"><!--  no grouping needed, it becomes seclaw:subjectmatterreference 
					which doesn't allow groupings so just output  ref:crossreference for the current remotelink  -->
            <xsl:call-template name="remotelinkDOCID"/>
         </xsl:when>
         <xsl:when test=" following-sibling::node()[1][self::remotelink[ @service = 'DOC-ID' ] ] and not(parent::ci:content)"><!--  multiple immediate sibling remotelinks, so group in ref:crossreferencegroup  -->
            <ref:crossreferencegroup><!--  output  ref:crossreference for the current remotelink  -->
               <xsl:call-template name="remotelinkDOCID"/>
               <!--  process immediate sibling remotelink elements one by one  -->
               <xsl:apply-templates select="following-sibling::node()[1][self::remotelink[ @service = 'DOC-ID' ] ]"
                                    mode="combineSiblingRemotelinks"/>
            </ref:crossreferencegroup>
         </xsl:when>
         <xsl:otherwise><!--  no grouping needed, so just output  ref:crossreference for the current remotelink  -->
            <xsl:call-template name="remotelinkDOCID"/>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <!--  If there is a
				<sourcexml>remotelink/@hrefclass]</sourcexml> attribute equal to "http" then the
			  remotelink is <b>not</b> copied into a comment but is instead converted to either a
				<targetxml>url</targetxml> or <targetxml>ref:lnlink</targetxml>   -->   <!-- remotelink[@service='URL'] or remotelink[@hrefclass='http'][@href] or remotelink[@href] and the data content of the remotelink is a URL -->   <!--  @@@ SBy:  how does one check for "... or is of type (http | https | nohttp | mailto | ftp ..."  ??? using contains...  -->
   <xsl:template match="remotelink[ ( @service = 'URL' or @href ) and ( contains( . , 'www' ) or contains( . , 'http' ) or contains( . , 'mailto' ) or contains( . , 'ftp' ) ) ][not(parent::ci:content)]"
                 name="remotelink-url-urltext"><!--   @@@TODO:  perhaps fix type (http | https | nohttp | mailto | ftp handling.  Probably @hrefclass ?  also check for case insensitivity  --><!-- <li>Use case: <sourcexml>remotelink[@service='URL']</sourcexml> or
				<sourcexml>remotelink[@hrefclass='http'][@href]</sourcexml> or
				<sourcexml>remotelink[@href]</sourcexml>
			  <b>and</b> the data content of the remotelink is a URL. That is, the data content of
				<sourcexml>remotelink</sourcexml> starts with text such as "http://...", "https://...",
			  "www.some.domain", or is of type (http | https | nohttp | mailto | ftp). In this case,
				<sourcexml>remotelink</sourcexml> becomes <targetxml>url</targetxml>		-->
      <url>
         <xsl:attribute name="normval">
            <xsl:if test=" @hrefclass and not( contains( @href , @hrefclass ) ) ">
               <xsl:value-of select="@hrefclass"/>
               <xsl:text>://</xsl:text>
            </xsl:if>
            <xsl:value-of select="normalize-space( @href )"/>
         </xsl:attribute>
         <xsl:apply-templates/>
      </url>
   </xsl:template>
   <!-- JL emph is invalid as a child of url, so adding this: -->
   <xsl:template match="emph[parent::remotelink [( @service = 'URL' or @href ) and ( contains( . , 'www' ) or contains( . , 'http' ) or contains( . , 'mailto' ) or contains( . , 'ftp' ) ) ][not(parent::ci:content)]]"
                 priority="35">
      <xsl:apply-templates/>
   </xsl:template>
   <!--Awantika: If lnci:content/remotelink have the following scenarios:if it's href,url,or www.... then retain the content of remotelink and suppress the element-->   <!-- Awantika:11-07-2017: Added priority to resolve the conflict on template "remotelink[not(ancestor::docinfo:assoc-links)][ @service = 'DOC-ID' ][ not( preceding-sibling::node()[1][self::remotelink[ @service = 'DOC-ID' ] ] ) ]" -->
   <xsl:template match="remotelink[ ( @service = 'URL' or @href ) and ( contains( . , 'www' ) or contains( . , 'http' ) or contains( . , 'mailto' ) or contains( . , 'ftp' ) ) ][parent::ci:content]"
                 priority="5">
      <xsl:apply-templates/>
   </xsl:template>
   <!-- 2017-11-28 - MDS: person/remotelink output does not allow for ref:lnlink.  url is sufficient for UK12 stream -->
   <xsl:template match="person/remotelink[$streamID='UK12']" priority="25">
      <url>
         <xsl:attribute name="normval">
            <xsl:value-of select="@hrefclass"/>
            <xsl:text>://</xsl:text>
            <xsl:value-of select="@href"/>
         </xsl:attribute>
         <xsl:apply-templates select="node()"/>
      </url>
   </xsl:template>
   <!-- remotelink[@service='URL'] or remotelink[@hrefclass='http'][@href] but the data content of the remotelink is not a URL. -->   <!--  @@@ SBy:  how does one check for "... nor is it of type (http | https | nohttp | mailto | ftp ..."  ??? using contains...  -->
   <xsl:template match="remotelink[ ( @service = 'URL' or @href ) and not( ( contains( . , 'www' ) or contains( . , 'http' ) or contains( . , 'mailto' ) or contains( . , 'ftp' ) ) ) ]"
                 name="remotelink-url"><!--   @@@TODO:  perhaps fix type (http | https | nohttp | mailto | ftp handling.  Probably @hrefclass ?  also check for case insensitivity  --><!-- <li>Use case: <sourcexml>remotelink[@service='URL']</sourcexml> or
				<sourcexml>remotelink[@hrefclass='http'][@href]</sourcexml>
			  <b>but</b> the data content of the remotelink is <b>not</b> a URL. That is, the data
			  content of <sourcexml>remotelink</sourcexml>
			  <b>does not</b> start with text such as "http://...", "https://...", "www.some.domain",
			  nor is it of type (http | https | nohttp | mailto | ftp). In this case,
				<sourcexml>remotelink</sourcexml> becomes <targetxml>ref:lnlink</targetxml> with
			  children <targetxml>ref:marker</targetxml> and <targetxml>ref:locator</targetxml>	-->
      <ref:lnlink service="URL">
         <ref:marker>
            <xsl:apply-templates/>
         </ref:marker>
         <ref:locator>
            <ref:locator-key>
               <ref:key-name name="URL"/>
               <ref:key-value>
                  <xsl:attribute name="value">
                     <xsl:if test=" @hrefclass and not( contains( @href , @hrefclass ) ) ">
                        <xsl:value-of select="@hrefclass"/>
                        <xsl:text>://</xsl:text>
                     </xsl:if>
                     <xsl:value-of select="normalize-space( @href )"/>
                  </xsl:attribute>
               </ref:key-value>
            </ref:locator-key>
         </ref:locator>
      </ref:lnlink>
   </xsl:template>

   <xsl:template match="remotelink/@href"/>
   <!-- suppress remotelink and retain its content as text -->
   <xsl:template match="remotelink[not(@*)]">
      <xsl:apply-templates/>
   </xsl:template>
   <!-- @@@  SBy:  TODO, need to coordinate with Mark S footnote/endote logic:   <p>If <sourcexml>refpt</sourcexml> and <sourcexml>remotelink</sourcexml> occurs as adjacent
				siblings then refer to the instructions for converting <sourcexml>endnote</sourcexml>.</p>  

				There's another separate module for this... -->
   <xsl:template match="emph[ remotelink and $streamID = 'NZ17-CCD' ]">
      <xsl:apply-templates/>
   </xsl:template>

   <xsl:template match="remotelink/@remotekey2"/>
   <!-- it doesn't seem like we use this att -->
   <xsl:template match="remotelink/@newwindow"/>

   <xsl:template match="remotelink/@docidref"/>

   <xsl:template match="remotelink[parent::in:entry-text][$streamID='AU16']"
                 priority="25">
      <index:locator><!-- <in:entry-text>
          <remotelink dpsi="009K" remotekey1="REFPTID" service="DOC-ID" refpt="CTH_BIL_2017-74"
            status="unval">ASIC SUPERVISORY COST RECOVERY LEVY BILL 2017</remotelink>
        </in:entry-text> -->
         <ref:lnlink>
            <xsl:attribute name="service">DOCUMENT</xsl:attribute>
            <ref:marker>
               <xsl:apply-templates select="node()"/>
            </ref:marker>
            <ref:locator>
               <xsl:choose>
                  <xsl:when test="not(@refpt)">
                     <xsl:attribute name="anchoridref">
                        <xsl:choose>
                           <xsl:when test="string(number(substring(@remotekey2, 1, 1))) = 'NaN'">
                              <xsl:value-of select="@remotekey2"/>
                           </xsl:when>
                           <xsl:otherwise>
                              <xsl:value-of select="concat('_', @remotekey2)"/>
                           </xsl:otherwise>
                        </xsl:choose>
                     </xsl:attribute>
                  </xsl:when>
                  <xsl:otherwise>
                     <xsl:attribute name="anchoridref">
                        <xsl:choose>
                           <xsl:when test="string(number(substring(@refpt, 1, 1))) = 'NaN'">
                              <xsl:value-of select="@refpt"/>
                           </xsl:when>
                           <xsl:otherwise>
                              <xsl:value-of select="concat('_', @refpt)"/>
                           </xsl:otherwise>
                        </xsl:choose>
                     </xsl:attribute>
                  </xsl:otherwise>
               </xsl:choose>
               <ref:locator-key>
                  <ref:key-name name="DOC-ID"/>
                  <ref:key-value>
                     <xsl:attribute name="value">
                        <xsl:choose><!-- <in:entry-text>Insurance Premiums Order (January-June) 2014 <remotelink dpsi="005Y"
              remotekey1="REFPTID" service="DOC-ID" refpt="NSW_REG_2013-622_WA"
              docidref="NSW_REG_2013-622_SCH11">SCH11CL1SUB1</remotelink></in:entry-text> -->
                           <xsl:when test="@remotekey1 = 'DOC-ID'">
                              <xsl:value-of select="concat(@dpsi, '-')"/>
                              <xsl:choose>
                                 <xsl:when test="not(@remotekey2)">
                                    <xsl:value-of select="@refpt"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:value-of select="@remotekey2"/>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:when>
                           <xsl:when test="@remotekey1 = 'REFPTID'">
                              <xsl:value-of select="concat(@dpsi, '-')"/>
                              <xsl:choose>
                                 <xsl:when test="@docidref">
                                    <xsl:value-of select="@docidref"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>XXXX</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:when>
                        </xsl:choose>
                     </xsl:attribute>
                  </ref:key-value>
               </ref:locator-key>
            </ref:locator>
         </ref:lnlink>
      </index:locator>
   </xsl:template>
   <!--Vikas Rohilla : Template to match the remotelink-->
   <xsl:template match="remotelink[ ( @service = 'URL' or @href ) and not(( contains( . , 'www' ) or contains( . , 'http' ) or contains( . , 'mailto' ) or contains( . , 'ftp' ) )) ][$streamID='UK11DA']"
                 priority="20">
      <url>
         <xsl:attribute name="normval">
            <xsl:if test=" @hrefclass and not( contains( @href , @hrefclass ) ) ">
               <xsl:value-of select="@hrefclass"/>
               <xsl:text>://</xsl:text>
            </xsl:if>
            <xsl:value-of select="normalize-space( @href )"/>
         </xsl:attribute>
         <xsl:apply-templates/>
      </url>
   </xsl:template>

   <xsl:template match="remotelink/@alttext"/>
   <!-- Priya Kaushal added below for UK15 -->
   <xsl:template match="remotelink[(ancestor::docinfo:assoc-links)| (ancestor::docinfo:assoc-links-grp)] [parent::text] [ @service = 'DOC-ID' ][ not( preceding-sibling::node()[1][self::remotelink[ @service = 'DOC-ID' ] ] ) ] [$streamID='UK15' or $streamID='UK12' or $streamID='UK14']"
                 priority="40">
      <xsl:choose>
         <xsl:when test=" following-sibling::node()[1][self::remotelink[ @service = 'DOC-ID' ] ] and not(parent::ci:content)"><!--  multiple immediate sibling remotelinks, so group in ref:crossreferencegroup  --><!--<doc:related-content-item>
					<doc:related-content-desc>
						<p>
							<text>-->
            <ref:crossreferencegroup><!--  output  ref:crossreference for the current remotelink  -->
               <xsl:call-template name="remotelinkDOCID"/>
               <!--  process immediate sibling remotelink elements one by one  -->
               <xsl:apply-templates select="following-sibling::node()[1][self::remotelink[ @service = 'DOC-ID' ] ][not($streamID='UK15')]"
                                    mode="combineSiblingRemotelinks"/>
            </ref:crossreferencegroup>
            <!--</text>
											</p>
											</doc:related-content-desc>
				</doc:related-content-item>-->
         </xsl:when>
         <xsl:otherwise><!--  no grouping needed, so just output  ref:crossreference for the current remotelink  -->
            <xsl:call-template name="remotelinkDOCID"/>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>

   <xsl:template match="remotelink[(ancestor::docinfo:assoc-links)| (ancestor::docinfo:assoc-links-grp)][parent::text][preceding-sibling::node()[1][self::remotelink[ @service = 'DOC-ID' ]]][$streamID='UK15']"
                 priority="2">
      <xsl:call-template name="remotelinkDOCID"/>
   </xsl:template>
   <!-- Vikas Rohilla : included for the UK12	-->
   <xsl:template match="remotelink[@refpt=''][$streamID='UK12']" priority="25">
      <ref:lnlink>
         <ref:marker>
            <xsl:apply-templates select="node()"/>
         </ref:marker>
         <ref:locator>
            <xsl:apply-templates select="@refpt"/>
         </ref:locator>
      </ref:lnlink>
   </xsl:template>

   <xsl:template match="remotelink/@refpt[$streamID='UK12']" priority="25">
      <xsl:choose>
         <xsl:when test="normalize-space(.)!=''">
            <xsl:attribute name="anchoridref">
               <xsl:call-template name="normalizeIdString"/>
            </xsl:attribute>
         </xsl:when>
         <xsl:otherwise>
            <xsl:comment>Mandatory element according to the CI</xsl:comment>
            <xsl:call-template name="outputErrorMessage">
               <xsl:with-param name="messageText"
                               as="xs:string"
                               select=" 'remotelink/@refpt is missing and link cannot be correctly completed' "/>
               <xsl:with-param name="errorType" as="xs:string" select=" 'ICCE' "/>
               <xsl:with-param name="errorCode" as="xs:string*" select=" 'TBD' "/>
               <xsl:with-param name="context" as="xs:string">
                  <xsl:value-of select="base-uri()"/>
               </xsl:with-param>
            </xsl:call-template>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <!--SS 28-11-2017: Added handling of remotelink/@refpt='dummy' value comes in HK07.-->
   <xsl:template match="remotelink[@refpt='dummy' and @status='unval'][$streamID='HK07']">
      <xsl:apply-templates/>
   </xsl:template>
   <!-- @@@  SBy:  below is from Awntika and likely from QC code base, but not mentioned in DITA so commenting out for now -->   <!--xsl:template match="remotelink[@service=ATTACHMENT]">
		<!-/-  Original Target XPath:  ref:lnlink[@service="ATTACHMENT"]   -/->
		<xsl:element name="ref:lnlink">
			<xsl:attribute name="service"><xsl:text>URL</xsl:text></xsl:attribute>
			<xsl:element name="ref:marker">
				<xsl:apply-templates/>
			</xsl:element>
			<xsl:element name="ref:locator">
				<xsl:element name="ref:locator-key">
					<xsl:element name="ref:key-name">
						<xsl:attribute name="name"><xsl:value-of select="@remotekey1='DOC-ID' or @remotekey1='DOCID'"/></xsl:attribute>
					</xsl:element>
					<xsl:element name="ref:key-value">
						<xsl:attribute name="value"><xsl:value-of select="@dpsi"/><xsl:text>_</xsl:text><xsl:choose><xsl:when test="@docidref"><xsl:value-of select="./@docidref"/></xsl:when><xsl:otherwise><xsl:value-of select="./@refpt"/></xsl:otherwise></xsl:choose></xsl:attribute>
					</xsl:element>
				</xsl:element>
			</xsl:element>
		</xsl:element>
	</xsl:template>

	<xsl:template match="remotelink[parent::glp:note]">
		<xsl:element name="note">
			<xsl:element name="bodytext">
				<xsl:element name="p">
					<xsl:element name="text">
						<ref:crossreference>
							<xsl:attribute name="crossreferencetype">See Also</xsl:attribute>
							<ref:content>
								<xsl:if test="remotelink[@xml:lang]">
									<xsl:attribute name="xml:lang"><xsl:value-of select="@xml:lang"/></xsl:attribute>
								</xsl:if>
								<xsl:apply-templates/>
							</ref:content>
							<xsl:element name="ref:locator">
								<xsl:choose>
									<xsl:when test="@remotekey1='DOC-ID' or @remotekey1='DOCID'">
										<xsl:element name="ref:locator-key">
											<xsl:element name="ref:key-name">
												<xsl:attribute name="name"><xsl:text>DOC-ID</xsl:text></xsl:attribute>
											</xsl:element>
											<xsl:element name="ref:key-value">
												<xsl:attribute name="value"><xsl:choose><xsl:when test="@dpsi"><xsl:value-of select="@dpsi"/><xsl:text>-</xsl:text></xsl:when><xsl:when test="../docinfo:dpsi/@id-string"><xsl:value-of select="../docinfo:dpsi/@id-string"/></xsl:when><xsl:otherwise>***no dpsi</xsl:otherwise></xsl:choose><xsl:choose><xsl:when test="@remotekey2"><xsl:value-of select="@remotekey2"/></xsl:when><xsl:otherwise><xsl:value-of select="@refpt"/></xsl:otherwise></xsl:choose></xsl:attribute>
											</xsl:element>
										</xsl:element>
									</xsl:when>
									<xsl:when test="@remotekey1='REFPTID'">
										<xsl:attribute name="anchoridref"><xsl:choose><xsl:when test="contains('0123456789', substring(@refpt,1,1))"><xsl:text>_</xsl:text><xsl:value-of select="@refpt or @remotelink2"/></xsl:when><xsl:otherwise><xsl:value-of select="@refpt"/></xsl:otherwise></xsl:choose></xsl:attribute>
									</xsl:when>
								</xsl:choose>
							</xsl:element>
						</ref:crossreference>
					</xsl:element>
				</xsl:element>
			</xsl:element>
		</xsl:element>
	</xsl:template>

	<xsl:template match="remotelink[child::inlineobject]">
		<xsl:element name="ref:lnlink">
			<xsl:attribute name="service"><xsl:text>URL</xsl:text></xsl:attribute>
			<xsl:element name="ref:marker">
				<xsl:apply-templates/>
			</xsl:element>
			<xsl:element name="ref:locator">
				<xsl:element name="ref:locator-key">
					<xsl:element name="ref:key-name">
						<xsl:attribute name="name"><xsl:text>URL</xsl:text></xsl:attribute>
					</xsl:element>
					<xsl:element name="ref:key-value">
						<xsl:attribute name="value"><xsl:value-of select="normalize-space(@href)"/></xsl:attribute>
					</xsl:element>
				</xsl:element>
			</xsl:element>
		</xsl:element>
	</xsl:template>

	<xsl:template match="docinfo:assoc-links/remotelink[@service='DOC-ID']">
		<!-/-  Original Target XPath:  ref:crossreference   -/->
		<xsl:element name="doc:related-content">
			<xsl:element name="doc:related-content-item">
				<xsl:element name="doc:related-content-link">
					<xsl:element name="ref:lnlink">
						<xsl:attribute name="service"><xsl:text>DOCUMENT</xsl:text></xsl:attribute>
						<xsl:element name="ref:marker">
							<xsl:value-of select="./remotelink[@service='DOC-ID']"/>
						</xsl:element>
						<xsl:element name="ref:locator">
							<xsl:attribute name="anchoridref"><xsl:choose><xsl:when test="./remotelink[@service='DOC-ID']/@refpt"><xsl:value-of select="./remotelink[@service='DOC-ID']/@refpt"/></xsl:when><xsl:otherwise><xsl:value-of select="./remotelink[@service='DOC-ID']/@remotekey2"/></xsl:otherwise></xsl:choose></xsl:attribute>
							<xsl:element name="ref:locator-key">
								<xsl:element name="ref:key-name">
									<xsl:attribute name="name"><xsl:value-of select="./remotelink[@service='DOC-ID']/@service"/></xsl:attribute>
								</xsl:element>
								<xsl:element name="ref:key-value">
									<xsl:attribute name="value"><xsl:value-of select="./remotelink[@service='DOC-ID']/@dpsi"/><xsl:text>-</xsl:text><xsl:value-of select="remotelink[@service='DOC-ID']/@remotekey2"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</xsl:element>
					</xsl:element>
				</xsl:element>
			</xsl:element>
		</xsl:element>
	</xsl:template-->   <!--<topicref href="../common/common_rosetta_nl.dita"/>	-->   <!-- <topicref href="../../../common_newest/Rosetta_nl-LxAdv-proc.nl.dita"/> -->   <xd:doc>
      <xd:desc>
         <xd:p>
            <xd:i>nl</xd:i> becomes <xd:b>proc:nl</xd:b>
         </xd:p>
         <xd:p>
            <xd:b>Note: </xd:b>
            <xd:i>nl</xd:i> comes with <xd:i>@n</xd:i> then
          <xd:i>@n</xd:i> will be suppressed in NL conversion.</xd:p>
         <xd:p>
            <xd:b>Note: </xd:b>MLV: NSW Law reports - preserve spacing and linebreaks for licensing.</xd:p>
         <xd:p>
            <xd:b>Source XML</xd:b>
         </xd:p>
         <xd:pre>
&lt;tbody&gt;
    &lt;row&gt;
        &lt;entry colname="c1" align="left"&gt;On the day after this Regulation's notification
            day.&lt;nl/&gt;(4/11/2008)&lt;/entry&gt;
    &lt;/row&gt;
&lt;/tbody&gt;
    	</xd:pre>
         <xd:p>
            <xd:b>Target XML</xd:b>
         </xd:p>
         <xd:pre>
&lt;tbody&gt;
    &lt;row&gt;
        &lt;entry colname="c1" align="left"&gt;On the day after this Regulation's notification
            day.&lt;proc:nl/&gt;(4/11/2008)&lt;/entry&gt;
    &lt;/row&gt;
&lt;/tbody&gt;

    	</xd:pre>
         <xd:p>
            <xd:b>Source XML</xd:b>
         </xd:p>
         <xd:pre>
&lt;p&gt;
    &lt;text&gt;
        &lt;nl n="2"/&gt;
    &lt;/text&gt;
&lt;/p&gt;
      </xd:pre>
         <xd:p>
            <xd:b>Target XML</xd:b>
         </xd:p>
         <xd:pre>
&lt;p&gt;
    &lt;text&gt;
        &lt;proc:nl/&gt;
    &lt;/text&gt;
&lt;/p&gt;
</xd:pre>
         <!--Changes2013-03-14: Add instruction and example
            nl/@n.-->
      </xd:desc>
   </xd:doc>
   <!-- Awantika:2017-11-30- CI has differnt rule for CA02CC,DC and DS."Any nl elements that occur inside case:casename should be suppressed if they are preceded or followed by a space. Any nl elements that
are not preceded or followed by a space should be converted into a single space character. Webstar# 6994049" -->
   <xsl:template match="nl">
      <xsl:choose><!-- Awantika: Commenting this for CA02CC.Webstar  6994049. CI doesn't say to create proc:nl
                "Any nl elements that occur inside case:casename should be suppressed if they are preceded or followed by a space. Any nl elements that
are not preceded or followed by a space should be converted into a single space character."
                -->
         <xsl:when test="$streamID='CA02CC' and parent::case:casename">
            <xsl:apply-templates/>
         </xsl:when>
         <xsl:when test="$streamID='AU21'">
            <xsl:choose>
               <xsl:when test="parent::text/parent::p/parent::source_dict:subtopic/@id[starts-with(.,'BOOK:')]"/>
               <xsl:otherwise>
                  <xsl:element name="proc:nl">
                     <xsl:apply-templates/>
                  </xsl:element>
               </xsl:otherwise>
            </xsl:choose>
         </xsl:when>
         <xsl:otherwise>
            <xsl:element name="proc:nl">
               <xsl:apply-templates/>
            </xsl:element>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>

   <xsl:template match="nl/@n"><!-- suppress --></xsl:template>
   <!--<topicref href="../common/common_rosetta_heading.dita"/>-->   <!-- <topicref href="../../../common_newest/Rosetta_heading-LxAdv-heading.dita"/> -->   <xd:doc>
      <xd:desc><!--   @SBy:  bodytext/heading is added based on the QC XSLT   --><!--p><sourcexml>heading</sourcexml> becomes <targetxml>heading</targetxml>. The attributes of <sourcexml>heading</sourcexml> are handled as  -->
         <xd:p>
            <xd:i>heading</xd:i> becomes <xd:b>heading</xd:b> and <xd:i>bodytext/heading</xd:i> becomes <xd:b>h</xd:b>. The attributes of <xd:i>heading</xd:i> are handled as
					follows: <xd:ul>
               <xd:li>
                  <xd:i>heading/@inline</xd:i> is suppressed if target is <xd:b>h</xd:b>.  Otherwise, <xd:i>heading/@inline</xd:i> becomes <xd:b>heading/@inline</xd:b>. The valid values for
								<xd:b>@inline</xd:b> are:<xd:ul>
                     <xd:li>"true"</xd:li>
                     <xd:li>"false"</xd:li>
                  </xd:ul>
               </xd:li>
               <xd:li>
                  <xd:i>heading/@align</xd:i> becomes <xd:b>heading@align</xd:b>. The valid values for
								<xd:b>@align</xd:b> are:<xd:ul>
                     <xd:li>"left"</xd:li>
                     <xd:li>"right"</xd:li>
                     <xd:li>"center"</xd:li>
                  </xd:ul>
               </xd:li>
               <xd:li>
                  <xd:i>heading/@searchtype</xd:i> should be suppressed.</xd:li>
            </xd:ul>
         </xd:p>
         <xd:p>
            <xd:b>Note: </xd:b>Conversion should not create consecutive <xd:b>heading</xd:b> elements. When 2 or more sibling source elements map to
						<xd:b>heading</xd:b>, the data should be merged into a single <xd:b>heading</xd:b> element unless this would
					interfere with content ordering.</xd:p>
         <xd:p>
            <xd:b>Source XML</xd:b>
         </xd:p>
         <xd:pre>

&lt;heading align="center"&gt;
	&lt;title&gt;Consideration&lt;/title&gt;
&lt;/heading&gt;

				</xd:pre>
         <xd:p>
            <xd:b>Target XML</xd:b>
         </xd:p>
         <xd:pre>

&lt;heading align="center"&gt;
  &lt;title&gt;Consideration&lt;/title&gt;
&lt;/heading&gt;

		</xd:pre>
         <xd:p>
            <xd:b>Source XML</xd:b>
         </xd:p>
         <xd:pre>

&lt;heading inline="false"&gt;
	&lt;title&gt;Summary&lt;/title&gt;
&lt;/heading&gt;

				</xd:pre>
         <xd:p>
            <xd:b>Target XML</xd:b>
         </xd:p>
         <xd:pre>

&lt;heading inline="false"&gt;
	  &lt;title&gt;Summary&lt;/title&gt;
&lt;/heading&gt;

		</xd:pre>
         <!--Changes-->
         <xd:p>2013-03-06: Removed instructions/rules for exceptional desig scenario and deprecated
				attribute <xd:b>@followstitle</xd:b>.</xd:p>
      </xd:desc>
   </xd:doc>
   <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_heading-LxAdv-heading.dita  -->
   <xsl:template match="bodytext/heading[not($streamID='CA14' or $streamID='USLPA')]"><!--   @SBy:  this rule added based on the QC XSLT   -->
      <h>
         <xsl:choose>
            <xsl:when test="$streamID=('UK07','AU14','HK07')">
               <xsl:apply-templates select="title | subtitle" mode="bodytext_heading"/>
            </xsl:when>
            <xsl:otherwise>
               <xsl:apply-templates select="@* | node()"/>
               <!--    ... When 2 or more sibling source elements map to <targetxml>heading</targetxml>, the data should be merged into a single <targetxml>heading</targetxml> element unless this would interfere with content ordering.</note>     -->
               <xsl:for-each select="following-sibling::node()[1][ self::heading ]">
                  <xsl:call-template name="combineSiblingsOfSameName"/>
               </xsl:for-each>
            </xsl:otherwise>
         </xsl:choose>
      </h>
   </xsl:template>

   <xsl:template match="heading"><!--  Original Target XPath:  heading   -->
      <heading><!-- MDS 2017-05-05 - Added 'except(refpt) due to UK08CA source markup 
	JL added leg:empleg to except list - it's addressed elsewhere and not valid here ever -->
         <xsl:apply-templates select="@* | node() except (refpt | leg:empleg)"/>
         <!--    ... When 2 or more sibling source elements map to <targetxml>heading</targetxml>, the data should be merged into a single <targetxml>heading</targetxml> element unless this would interfere with content ordering.</note>     -->
         <xsl:for-each select="following-sibling::node()[1][ self::heading ]">
            <xsl:call-template name="combineSiblingsOfSameName"/>
         </xsl:for-each>
         <xsl:if test="$streamID=('UK06','UK12')">
            <xsl:apply-templates select="following-sibling::note"/>
         </xsl:if>
      </heading>
   </xsl:template>
   <!--		<li><sourcexml>heading/@searchtype</sourcexml> should be suppressed.</li>  -->   <!--		<li><sourcexml>heading/@inline</sourcexml> is suppressed if target is <targetxml>h</targetxml>.  Otherwise, ...  -->   <!--    ... When 2 or more sibling source elements map to <targetxml>heading</targetxml>, the data should be merged into a single <targetxml>heading</targetxml> element unless this would interfere with content ordering.</note>     -->
   <xsl:template match="heading/@searchtype | bodytext/heading/@inline | heading[ preceding-sibling::node()[1][ self::heading ] ]"/>

   <xsl:template match="heading[ not( parent::bodytext ) ]/@inline"><!--  Original Target XPath:  @inline   -->
      <xsl:copy-of select=" . "/>
   </xsl:template>

   <xsl:template match="heading/@align"><!--  Original Target XPath:  @align   -->
      <xsl:copy-of select=" . "/>
   </xsl:template>

   <xsl:template match="title [$streamID=('UK07','AU14','HK07')]"
                 mode="bodytext_heading">
      <xsl:apply-templates select="@* | node()"/>
   </xsl:template>

   <xsl:template match="subtitle [$streamID=('UK07','AU14','HK07')]"
                 mode="bodytext_heading">
      <xsl:apply-templates select="@* | node()"/>
   </xsl:template>
   <!--<topicref href="../common/common_rosetta_title.dita"/>-->   <!-- <topicref href="../../../common_newest/Rosetta_title-LxAdv-title.dita"/> -->   <xd:doc>
      <xd:desc>
         <xd:p>
            <xd:b>Instructions <xd:i>[common element]</xd:i>
            </xd:b>
         </xd:p>
         <xd:p>
            <xd:i>title</xd:i> becomes <xd:b>title</xd:b> with attributes:
					<xd:ul>
               <xd:li>
                  <xd:i>@inline</xd:i> becomes <xd:b>@inline</xd:b> with tokenized values of "true" and "false"</xd:li>
               <xd:li>
                  <xd:i>@align</xd:i> becomes <xd:b>@align</xd:b> with tokenized
							values and populated as: 
							<xd:ul>
                     <xd:li>
                        <xd:b>title[@align="left"]</xd:b>
                     </xd:li>
                     <xd:li>
                        <xd:b>title[@align="right"]</xd:b>
                     </xd:li>
                     <xd:li>
                        <xd:b>title[@align="center"]</xd:b>
                     </xd:li>
                  </xd:ul>
               </xd:li>
            </xd:ul>
         </xd:p>
         <xd:p>
					If the input document has title/defterm scenario then <xd:i>defterm</xd:i> within a title can be dropped, but the content of
					the tag is retained and no text is dropped.		
				</xd:p>
         <xd:p>Exceptional scenario for <xd:b>CA Indices</xd:b> and <xd:b>CA06 Regs</xd:b>: <xd:i>title/nl</xd:i>
					becomes <xd:b>title</xd:b>. <xd:i>nl</xd:i> will be replaces by
					a white space in the target.</xd:p>
         <xd:p>Exceptional scenario for CA Indices: When <xd:i>title</xd:i> is an child of
						<xd:i>docinfo:hierlev/heading</xd:i> and contains word <xd:b>TITLE: </xd:b>
					or <xd:b>NAME: </xd:b> or <xd:b>SITE: </xd:b> then conversion should drop the word <xd:b>TITLE: </xd:b> or <xd:b>NAME:
					</xd:b> or <xd:b>SITE: </xd:b> from conversion.</xd:p>
         <xd:p>
            <xd:b>Source XML</xd:b>
         </xd:p>
         <xd:pre>

&lt;heading&gt;
	  &lt;title align="center"&gt;Consideration&lt;/title&gt;
&lt;/heading&gt;
....
....
&lt;heading&gt;
	  &lt;title inline="false"&gt;Summary&lt;/title&gt;
&lt;/heading&gt;

		</xd:pre>
         <xd:p>
            <xd:b>Target XML</xd:b>
         </xd:p>
         <xd:pre>

&lt;heading&gt;
  &lt;title align="center"&gt;Consideration&lt;/title&gt;
&lt;/heading&gt;
....
....
&lt;heading&gt;
	  &lt;title inline="false"&gt;Summary&lt;/title&gt;
&lt;/heading&gt;

		</xd:pre>
         <xd:p>
            <xd:b>Source XML having <xd:i>title/nl</xd:i>
            </xd:b>
         </xd:p>
         <xd:pre>

&lt;title&gt; English-French&lt;nl/&gt;Trade-mark Lexicon&lt;/title&gt;

		</xd:pre>
         <xd:p>
            <xd:b>Target XML </xd:b>
         </xd:p>
         <xd:pre>

&lt;title&gt; English-French Trade-mark Lexicon&lt;/title&gt;

		</xd:pre>
         <xd:p>
            <xd:b>Source XML contains word "TITLE: " in <xd:i>title</xd:i>
            </xd:b>
         </xd:p>
         <xd:pre>
&lt;docinfo:hierlev role="me"&gt;
    &lt;heading&gt;
        &lt;title&gt;TITLE: Criminal Code French/English consolidation 2010 / Code criminal codification bilingue
            2010. 2010 ed. &lt;/title&gt;
    &lt;/heading&gt;
&lt;/docinfo:hierlev&gt;
		</xd:pre>
         <xd:p>
            <xd:b>Target XML </xd:b>
         </xd:p>
         <xd:pre>
&lt;doc:hierlev&gt;
    &lt;heading&gt;
        &lt;title&gt;Criminal Code French/English consolidation 2010 / Code criminal codification bilingue
            2010. 2010 ed. &lt;/title&gt;
    &lt;/heading&gt;
&lt;/doc:hierlev&gt;
	</xd:pre>
         <!--Changes2011-12-15: Created.2013-01-08: Removed CR number to allow ref:crossreference to the content model of title and subtitle.2013-01-08: Added Instruction for title/@searchtype="DIGEST-SUBJECT".2013-04-10: Added Instruction for title/nl.2013-07-05: Added Instruction when title contains word "TITLE: ".2013-07-30: Updated Instruction when title contains word "TITLE: " or "NAME: ".2013-09-03: Updated Instruction when title contains word "TITLE: " or "NAME: " or "SITE: ".2014-10-07: Removed instruction and example to convert attribute @searchtype="DIGEST-SUBJECT". Applicable to CA12.2014-12-19: Added CA06-Regs stream name inside the existing
						instruction for handling title/nl.-->
      </xd:desc>
   </xd:doc>
   <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_title-LxAdv-title.dita  -->
   <!-- JD: 2017-07-24: added 'replace()' function to get rid of characters not handled by normalize-space(e.g., nbsp) -->
   <xsl:template match="title[not( normalize-space(replace(., '^[\t\p{Zs}]+$', '')) = '')]"><!--<xsl:param name="titleStringsToRemove" as="xs:string*" select="( 'TITLE:' , 'NAME:' , 'SITE:' ,':' )"/>	--><!-- these are regular expressions  --><!--pawan:added for CA15-->
      <xsl:param name="titleStringsToRemove"
                 as="xs:string*"
                 select="if ($streamID = 'CA15') then ( 'TITLE: ' , 'TITRE: ' , 'TITLE/TITRE:' , 'TITRE/TITLE:','CITED/CITÉ: ', 'CITÉ/CITED: ', 'CITE/CITED: ', 'CITED: ' )  else  ( 'TITLE:' , 'NAME:' , 'SITE:' ,':' )"/>
      <xsl:variable name="outputText" as="xs:string*">
         <xsl:apply-templates/>
      </xsl:variable>
      <xsl:variable name="subtitletext"/>
      <!--  Original Target XPath:  title   -->
      <xsl:choose><!-- Due to jrnl:prelim outputting as nitf:hedline/nitf:h1, which does not have a child title. - See HK02_Articles for example -->
         <xsl:when test="parent::heading/parent::jrnl:prelim">
            <xsl:apply-templates/>
         </xsl:when>
         <!-- do not output empty element title when it only contains refpt and is a child of heading -->
         <xsl:when test="parent::heading and refpt and not(text()) and not(child::*[2])"/>
         <!--SNB 2017-10-17 add title child of transcript for new embedded video content. Note that transcript 
				is a new element, so this cant interfere with any other processing-->
         <xsl:when test="parent::transcript">
            <h>
               <xsl:apply-templates select="@*"/>
               <!-- refpts can't be output in title elements in target schemas -->
               <xsl:apply-templates select="node() except refpt"/>
            </h>
         </xsl:when>
         <xsl:otherwise>
            <title>
               <xsl:apply-templates select="@*"/>
               <xsl:choose>
                  <xsl:when test=" $streamID = 'CA11' or $streamID = 'CA15' and parent::heading[parent::docinfo:hierlev] "><!--  remove any occurrence of $titleStringsToRemove strings but assume case sensitive   -->
                     <xsl:sequence select=" lnf:removeSequenceOfStrings( string-join( $outputText , '' ) , $titleStringsToRemove , false() ) "/>
                  </xsl:when>
                  <!-- Vikas Rohilla : Added for the streamID CA01	-->
                  <xsl:when test="$streamID ='CA01' and ancestor::case:constituents">
                     <xsl:sequence select=" lnf:removeSequenceOfStrings( string-join( $outputText , '' ) , $titleStringsToRemove , false() ) "/>
                  </xsl:when>
                  <!-- Awantika: Added for AU20 -->
                  <xsl:when test="$streamID='AU20' and following-sibling::subtitle">
                     <xsl:value-of select="concat(.,' ','(',following-sibling::subtitle,')')"/>
                  </xsl:when>
                  <xsl:otherwise><!-- refpts can't be output in title elements in target schemas -->
                     <xsl:apply-templates select="node() except refpt"/>
                  </xsl:otherwise>
               </xsl:choose>
            </title>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <!--    From Rosetta_Elements-LxAdv-Empty_Elements.dita / .xsl   -->   <!--<xsl:template match="title[ normalize-space(string-join( . , '') ) = '' ]"/>-->   <!-- JD: 2017-07-24: could probably be combined with above, but shouldn't hurt -->
   <xsl:template match="title[normalize-space(replace(., '^[\t\p{Zs}]+$', '')) = '']"/>

   <xsl:template match="title/@inline"><!--  Original Target XPath:  @inline   -->
      <xsl:copy-of select=" . "/>
   </xsl:template>

   <xsl:template match="title/@align"><!--  Original Target XPath:  @align   -->
      <xsl:copy-of select=" . "/>
   </xsl:template>

   <xsl:template match="title/defterm"><!--  Original Target XPath:  title   -->
      <xsl:apply-templates select="@* | node()"/>
   </xsl:template>

   <xsl:template match="title/nl[ $streamID = ( 'CA11' ) ]"><!--  output a space.  Note that otherwise nl becomes proc:nl which is allowed under title   -->
      <xsl:text> </xsl:text>
   </xsl:template>
   <!-- JL suppress searchtype -->
   <xsl:template match="title/@searchtype"/>

   <xsl:template match="title/num[$streamID='CA09']/@searchtype" priority="30"/>
   <!--<topicref href="../common/common_rosetta_ci.cite.dita"/>-->   <!-- <topicref href="../../../common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita"/> -->   <xd:doc>
      <xd:desc>
         <xd:p>
            <xd:b>Instructions</xd:b>
         </xd:p>
         <xd:p>In the Fab Pipeline, JCite/CFE shall conduct a lookup based on the lnci:content
					or the @normcite (if populated) and populate the markup with the additional
					keywords needed for cite traversal. </xd:p>
         <xd:p>The only markup needed for JCite/CFE is
						<xd:b>lnci:cite/lnci:content</xd:b> and optionally
						<xd:b>lnci:cite/@normcite</xd:b>. In order to resolve the correct
					“pile” target for cite link traversal, either a semantic child content type
					element as described below <xd:b>or</xd:b> the <xd:b>lnci:cite/@type</xd:b>
					attribute (but not both) must also be present in the output markup.</xd:p>
         <xd:p>
            <xd:i>ci:cite</xd:i> becomes <xd:b>lnci:cite</xd:b>, with all
					attribute names and values copied as they occur in the source. Convert all
					descendant elements of <xd:i>ci:cite</xd:i> by copying the elements
					and their attribute names and values from the <xd:i>ci:</xd:i>
					namespace <xd:b>as is</xd:b> into the <xd:b>lnci:</xd:b> namespace. That is,
					every descendant of <xd:i>ci:cite</xd:i> that has the form
						<xd:i>ci:{element-name}</xd:i> is converted to
						<xd:b>lnci:{element-name}</xd:b>. As an example of converting the
					descendants of <xd:i>ci:cite</xd:i> into the
						<xd:b>lnci:</xd:b> namespace, here is a partial list of the child
					elements from Rosetta and what they should be converted to: <xd:ul>
               <xd:li>
                  <xd:i>ci:casename</xd:i> becomes
								<xd:b>lnci:casename</xd:b>
               </xd:li>
               <xd:li>
                  <xd:i>ci:constref</xd:i> becomes
								<xd:b>lnci:constref</xd:b>
               </xd:li>
               <xd:li>
                  <xd:i>ci:courtruleref</xd:i> becomes
								<xd:b>lnci:courtruleref</xd:b>
               </xd:li>
               <xd:li>
                  <xd:i>ci:decisionref</xd:i> becomes
								<xd:b>lnci:decisionref</xd:b>
               </xd:li>
               <xd:li>
                  <xd:i>ci:effdate</xd:i> becomes
								<xd:b>lnci:effdate</xd:b>
               </xd:li>
               <xd:li>
                  <xd:i>ci:party1</xd:i> becomes
								<xd:b>lnci:party1</xd:b>
               </xd:li>
               <xd:li>
                  <xd:i>ci:party2</xd:i> becomes
								<xd:b>lnci:party2</xd:b>
               </xd:li>
               <xd:li>
                  <xd:i>ci:procphrase</xd:i> becomes
								<xd:b>lnci:procphrase</xd:b>
               </xd:li>
               <xd:li>
                  <xd:i>ci:reglref</xd:i> becomes
								<xd:b>lnci:reglref</xd:b>
               </xd:li>
               <xd:li>
                  <xd:i>ci:statinfo</xd:i> becomes
								<xd:b>lnci:statinfo</xd:b>
               </xd:li>
               <xd:li>
                  <xd:i>ci:text</xd:i> becomes <xd:b>lnci:text</xd:b>
               </xd:li>
            </xd:ul>
         </xd:p>
         <xd:p>There are two important exceptions to the converstion instructions given in the
					preceding paragraph: <xd:ul>
               <xd:li>Do not convert any Rosetta-only markup that, if kept, would make the
							output invalid. </xd:li>
               <xd:li>Drop the start and end tags (the mark-up) for
								<xd:i>citefragment</xd:i> and
								<xd:i>ci:span</xd:i> but keep the content of these
							elements as part of what is converted to the content of
								<xd:b>lnci:content</xd:b>.</xd:li>
               <xd:li> Drop all instances of
							<xd:i>ci:{element-name}/@spanref</xd:i>.</xd:li>
            </xd:ul>
         </xd:p>
         <xd:p>The following are mappings for children of <xd:i>ci:cite</xd:i>: <xd:ul>
               <xd:li>
                  <xd:i>ci:case</xd:i> becomes
							<xd:b>lnci:case</xd:b>
               </xd:li>
               <xd:li>
                  <xd:i>ci:stat</xd:i> becomes
							<xd:b>lnci:stat</xd:b>
               </xd:li>
               <xd:li>
                  <xd:i>ci:juryinstr</xd:i> becomes
								<xd:b>lnci:juryinstr</xd:b>
               </xd:li>
               <xd:li>
                  <xd:i>ci:reg</xd:i> becomes
							<xd:b>lnci:reg</xd:b>
               </xd:li>
               <xd:li>
                  <xd:i>ci:courtrule</xd:i> becomes
								<xd:b>lnci:courtrule</xd:b>
               </xd:li>
               <xd:li>
                  <xd:i>ci:sesslaw</xd:i> becomes
								<xd:b>lnci:sesslaw</xd:b>
               </xd:li>
               <xd:li>
                  <xd:i>ci:patent</xd:i> becomes
								<xd:b>lnci:patent</xd:b>
               </xd:li>
               <xd:li>
                  <xd:i>ci:tmark</xd:i> becomes
								<xd:b>lnci:tmark</xd:b>
               </xd:li>
               <xd:li>
                  <xd:i>ci:copyright</xd:i> becomes
								<xd:b>lnci:copyright</xd:b>
               </xd:li>
               <xd:li>
                  <xd:i>ci:lawrev</xd:i> becomes
								<xd:b>lnci:lawrev</xd:b>
               </xd:li>
               <xd:li>
                  <xd:i>ci:periodical</xd:i> becomes
								<xd:b>lnci:periodical</xd:b>
               </xd:li>
               <xd:li>
                  <xd:i>ci:pinpoint</xd:i> becomes
								<xd:b>lnci:pinpoint</xd:b>
               </xd:li>
               <xd:li>
                  <xd:i>ci:book</xd:i> becomes
							<xd:b>lnci:book</xd:b>
               </xd:li>
               <xd:li>
                  <xd:i>ci:oag</xd:i> becomes
							<xd:b>lnci:oag</xd:b>
               </xd:li>
               <xd:li>
                  <xd:i>ci:agencydecision</xd:i> becomes
								<xd:b>lnci:agencydecision</xd:b>
               </xd:li>
               <xd:li>
                  <xd:i>ci:constitution</xd:i> becomes
								<xd:b>lnci:constitution</xd:b>
               </xd:li>
               <xd:li>
                  <xd:i>ci:annot</xd:i> becomes
								<xd:b>lnci:annot</xd:b>
               </xd:li>
               <xd:li>
                  <xd:i>ci:execdoc</xd:i> becomes
								<xd:b>lnci:execdoc</xd:b>
               </xd:li>
               <xd:li>
                  <xd:i>ci:admininterp</xd:i> becomes
								<xd:b>lnci:admininterp</xd:b>
               </xd:li>
               <xd:li>
                  <xd:i>ci:misc</xd:i> becomes
							<xd:b>lnci:misc</xd:b>
               </xd:li>
               <xd:li>
                  <xd:i>ci:form</xd:i> becomes
							<xd:b>lnci:form</xd:b>
               </xd:li>
            </xd:ul>Given one of the above mappings, the source
						<xd:i>ci:cite/@searchtype</xd:i> should be dropped and the target
						<xd:b>lnci:cite/@type</xd:b> should be <xd:b>omitted</xd:b>.</xd:p>
         <xd:p>In the absence of one of the possible children of <xd:i>ci:cite</xd:i>
					listed above, <xd:b>lnci:cite/@type</xd:b> should be populated as
					follows: <xd:ul>
               <xd:li>
                  <xd:i>ci:cite/@searchtype="LEG-REF"</xd:i> becomes
								<xd:b>lnci:cite/@type="legislation"</xd:b>
               </xd:li>
               <xd:li>
                  <xd:i>ci:cite/@searchtype="CASE-REF"</xd:i> becomes
								<xd:b>lnci:cite/@type="case"</xd:b>
               </xd:li>
               <xd:li>
                  <xd:i>ci:cite/@searchtype="BOOK-REF"</xd:i> becomes
								<xd:b>lnci:cite/@type="book"</xd:b>
               </xd:li>
               <xd:li>
                  <xd:i>ci:cite/@searchtype="BODY-CASE-REF"</xd:i> becomes
								<xd:b>lnci:cite/@type="case"</xd:b>
               </xd:li>
               <xd:li>
                  <xd:i>ci:cite/@searchtype="SUMM-CASE-REF"</xd:i> becomes
								<xd:b>lnci:cite/@type="case"</xd:b>
               </xd:li>
            </xd:ul>This will ensure that the correct “context clue” (Product Content Type or
					PCT) is populated in the Fab Pipeline so that the resulting citation hyperlink
					targets the correct pile. </xd:p>
         <xd:p>
            <xd:b>Handling for AU Journals/Newsitem:</xd:b>
            <xd:ul>
               <xd:li>
                  <xd:i>ci:cite</xd:i> with attribute
								<xd:i>@type="cite4thisdoc"</xd:i> becomes
								<xd:b>lnci:cite</xd:b> with attribute
								<xd:b>@type="cite4thisdoc"</xd:b>
               </xd:li>
            </xd:ul>
         </xd:p>
         <xd:p>
            <xd:b>Handling for NZ Regulation and NZ Act from services:</xd:b>
            <xd:ul>
               <xd:li>If <xd:i>ci:cite@type</xd:i> comes with attribute value
									"<xd:b>
                     <xd:i>legref</xd:i>
                  </xd:b>" in source document then conversion needs
							to suppressed attribute value in target and convert
								<xd:i>ci:cite</xd:i> according to general rule. </xd:li>
            </xd:ul>
         </xd:p>
         <xd:p>
            <xd:b>Source XML: ci:cite/searchtype="CASE-REF"</xd:b>
         </xd:p>
         <xd:pre> &lt;ci:cite searchtype="CASE-REF"&gt; &lt;ci:case&gt;
					&lt;ci:caseinfo&gt; &lt;ci:decisiondate year="2001"/&gt; &lt;/ci:caseinfo&gt;
					&lt;ci:caseref ID="cr000366" spanref="cr000366-001" status="unval"&gt;
					&lt;ci:reporter value="NSWCCR"/&gt; &lt;ci:volume num="22"/&gt; &lt;ci:page
					num="238"/&gt; &lt;/ci:caseref&gt; &lt;/ci:case&gt; &lt;ci:content&gt;
					&lt;citefragment searchtype="CASE-NAME-REF"&gt; &lt;emph typestyle="it"&gt;Betts
					v Prisk Contractors Pty Ltd&lt;/emph&gt; &lt;/citefragment&gt; &lt;citefragment
					searchtype="CASE-CITE-REF"&gt; &lt;ci:span spanid="cr000366-001"
					status="unval"&gt;(2001) 22 NSWCCR 238&lt;/ci:span&gt;; [2001] NSWCC 146
					&lt;/citefragment&gt; &lt;/ci:content&gt; &lt;/ci:cite&gt; </xd:pre>
         <xd:p>
            <xd:b>Target XML</xd:b>
         </xd:p>
         <xd:pre> &lt;lnci:cite&gt; &lt;lnci:case&gt; &lt;lnci:caseinfo&gt;
					&lt;lnci:decisiondate year="2001"/&gt; &lt;/lnci:caseinfo&gt; &lt;lnci:caseref
					ID="cr000366" status="unval"&gt; &lt;lnci:reporter value="NSWCCR"/&gt;
					&lt;lnci:volume num="22"/&gt; &lt;lnci:page num="238"/&gt; &lt;/lnci:caseref&gt;
					&lt;/lnci:case&gt; &lt;lnci:content&gt; &lt;emph typestyle="it"&gt;Betts v Prisk
					Contractors Pty Ltd&lt;/emph&gt; (2001) 22 NSWCCR 238; [2001] NSWCC 146
					&lt;/lnci:content&gt; &lt;/lnci:cite&gt; </xd:pre>
         <xd:p>
            <xd:b>SOURCE XML: ci:cite/searchtype="BOOK-REF"</xd:b>
         </xd:p>
         <xd:pre> &lt;ci:cite searchtype="BOOK-REF"&gt; &lt;ci:lawrev&gt; &lt;ci:lawrevref
					ID="cr003268" spanref="cr003268-001"&gt; &lt;ci:lawrevlocator&gt;
					&lt;ci:publicationname normpubcode="BCB"/&gt; &lt;ci:volume num="3"/&gt;
					&lt;ci:issue&gt; &lt;ci:date year="1985"/&gt; &lt;/ci:issue&gt; &lt;ci:page
					num="86"/&gt; &lt;/ci:lawrevlocator&gt; &lt;/ci:lawrevref&gt; &lt;/ci:lawrev&gt;
					&lt;ci:content&gt; &lt;citefragment searchtype="BOOK-CITE-REF"&gt; &lt;ci:span
					spanid="cr003268-001"&gt;(1985) 3 BCB 86&lt;/ci:span&gt; &lt;/citefragment&gt;
					&lt;/ci:content&gt; &lt;/ci:cite&gt; </xd:pre>
         <xd:p>
            <xd:b>Target XML</xd:b>
         </xd:p>
         <xd:pre> &lt;lnci:cite&gt; &lt;lnci:lawrev&gt; &lt;lnci:lawrevref
					ID="cr003268"&gt; &lt;lnci:lawrevlocator&gt; &lt;lnci:publicationname
					normpubcode="BCB"/&gt; &lt;lnci:volume num="3"/&gt; &lt;lnci:issue&gt;
					&lt;lnci:date year="1985"/&gt; &lt;/lnci:issue&gt; &lt;lnci:page num="86"/&gt;
					&lt;/lnci:lawrevlocator&gt; &lt;/lnci:lawrevref&gt; &lt;/lnci:lawrev&gt;
					&lt;lnci:content&gt;(1985) 3 BCB 86&lt;/lnci:content&gt; &lt;/lnci:cite&gt;
				</xd:pre>
         <xd:p>
            <xd:b>SOURCE XML: ci:cite/searchtype="SUMM-CASE-REF"</xd:b>
         </xd:p>
         <xd:pre> &lt;ci:cite searchtype="SUMM-CASE-REF"&gt; &lt;ci:case&gt;
					&lt;ci:caseref ID="cref00000048" spanref="cspan00000048"&gt; &lt;ci:reporter
					value="FCR"/&gt; &lt;ci:volume num="1"/&gt; &lt;ci:edition&gt;&lt;ci:date
					year="1985"/&gt;&lt;/ci:edition&gt; &lt;ci:page num="856"/&gt;
					&lt;/ci:caseref&gt; &lt;/ci:case&gt; &lt;ci:content&gt;&lt;ci:span
					spanid="cspan00000048"&gt;[1985] 1 F.C. 856&lt;/ci:span&gt;&lt;/ci:content&gt;
					&lt;/ci:cite&gt; </xd:pre>
         <xd:p>
            <xd:b>Target XML</xd:b>
         </xd:p>
         <xd:pre> &lt;lnci:cite&gt; &lt;lnci:case&gt; &lt;lnci:caseref
					ID="cref00000048"&gt; &lt;lnci:reporter value="FCR"/&gt; &lt;lnci:volume
					num="1"/&gt; &lt;lnci:edition&gt;&lt;lnci:date
					year="1985"/&gt;&lt;/lnci:edition&gt; &lt;lnci:page num="856"/&gt;
					&lt;/lnci:caseref&gt; &lt;/lnci:case&gt; &lt;lnci:content&gt;[1985] 1 F.C.
					856&lt;/lnci:content&gt; &lt;/lnci:cite&gt; </xd:pre>
         <xd:p>
            <xd:b>SOURCE XML: ci:cite/searchtype="BODY-CASE-REF"</xd:b>
         </xd:p>
         <xd:pre> &lt;ci:cite searchtype="BODY-CASE-REF"&gt; &lt;ci:case&gt;
					&lt;ci:caseref ID="cref00000047" spanref="cspan00000047"&gt; &lt;ci:reporter
					value="OEAB"/&gt; &lt;ci:edition&gt;&lt;ci:date
					year="1993"/&gt;&lt;/ci:edition&gt; &lt;ci:refnum num="55"/&gt;
					&lt;/ci:caseref&gt; &lt;/ci:case&gt; &lt;ci:content&gt;&lt;ci:span
					spanid="cspan00000047"&gt;[1993] O.E.A.B. No. 55&lt;/ci:span&gt;
					&lt;/ci:content&gt; &lt;/ci:cite&gt; </xd:pre>
         <xd:p>
            <xd:b>Target XML</xd:b>
         </xd:p>
         <xd:pre> &lt;lnci:cite&gt; &lt;lnci:case&gt; &lt;lnci:caseref
					ID="cref00000047"&gt; &lt;lnci:reporter value="OEAB"/&gt;
					&lt;lnci:edition&gt;&lt;lnci:date year="1993"/&gt;&lt;/lnci:edition&gt;
					&lt;lnci:refnum num="55"/&gt; &lt;/lnci:caseref&gt; &lt;/lnci:case&gt;
					&lt;lnci:content&gt;[1993] O.E.A.B. No. 55&lt;/lnci:content&gt;
					&lt;/lnci:cite&gt; </xd:pre>
         <xd:p>
            <xd:b>Source XML: ci:pinpoint</xd:b>
         </xd:p>
         <xd:pre> &lt;ci:cite ID="I5DDT1GS2SF8P90080000400" normprotocol="lexsee"
					status="valid"&gt; &lt;ci:agencydecision&gt; &lt;ci:decisionref
					ID="I5DDT1GS2SF8P90070000400"&gt; &lt;ci:reporter normpubcode="4007"
					value=""/&gt; &lt;ci:ldi jumppage="1" kw="8197_1999_805*.1" page="805"
					pagesuffix="*" reporter="8197" volume="1999"/&gt; &lt;ci:volume num="1999"/&gt;
					&lt;ci:page num="805"/&gt; &lt;ci:pinpoint lastnum="2" num="1"/&gt;
					&lt;/ci:decisionref&gt; &lt;/ci:agencydecision&gt; &lt;ci:content&gt;1999 SEC
					No-Act. LEXIS 805, 1-2&lt;/ci:content&gt; &lt;/ci:cite&gt; </xd:pre>
         <xd:p>
            <xd:b>Target XML: lnci:pinpoint</xd:b>
         </xd:p>
         <xd:pre> &lt;lnci:cite ID="I5DDT1GS2SF8P90080000400" normprotocol="lexsee"
					status="valid"&gt; &lt;lnci:agencydecision&gt; &lt;lnci:decisionref
					ID="I5DDT1GS2SF8P90070000400"&gt; &lt;lnci:reporter normpubcode="4007"
					value=""/&gt; &lt;lnci:ldi jumppage="1" kw="8197_1999_805*.1" page="805"
					pagesuffix="*" reporter="8197" volume="1999"/&gt; &lt;lnci:volume
					num="1999"/&gt; &lt;lnci:page num="805"/&gt; &lt;lnci:pinpoint lastnum="2"
					num="1"/&gt; &lt;/lnci:decisionref&gt; &lt;/lnci:agencydecision&gt;
					&lt;lnci:content&gt;1999 SEC No-Act. LEXIS 805, 1-2&lt;/lnci:content&gt;
					&lt;/lnci:cite&gt; </xd:pre>
         <xd:p>
            <xd:b>Exception: When <xd:i>link</xd:i> is used as intra-document linking
					within <xd:i>ci:content</xd:i>
            </xd:b>.</xd:p>
         <xd:p>If the <xd:i>ci:content</xd:i> contains a <xd:i>link</xd:i>
				child, the <xd:i>link</xd:i> wrapper markup (not its content) shall be
				removed (omit tag and retain content) and the <xd:i>link/@refpt</xd:i>
				value shall be moved to <xd:b>lnci:cite/@citeref</xd:b>.</xd:p>
         <xd:p>
            <xd:b>SOURCE XML: ci:content/link</xd:b>
         </xd:p>
         <xd:pre> &lt;p&gt; &lt;pnum count="5"&gt;[5]&lt;/pnum&gt; &lt;refpt
					id="20023NZLR_113_p5" type="ext" /&gt; &lt;text&gt;A number of issues were
					raised on Bs behalf but may be summarised as follows:&lt;/text&gt; ...
					&lt;/p&gt; … &lt;ci:cite searchtype="CASE-REF"&gt; &lt;ci:case&gt;
					&lt;ci:caseref ID="x20023NZLR_113-171" spanref="x20023NZLR_113-171-1"&gt;
					&lt;ci:reporter value="nzar" country="nz" /&gt; &lt;ci:edition&gt; &lt;ci:date
					year="2001" /&gt; &lt;/ci:edition&gt; &lt;ci:page num="598" /&gt;
					&lt;/ci:caseref&gt; &lt;/ci:case&gt; &lt;ci:content&gt; &lt;citefragment
					searchtype="CASE-NAME-REF"&gt; &lt;emph typestyle="it"&gt;Auckland District Law
					Society v Ford&lt;/emph&gt; &lt;/citefragment&gt; &lt;citefragment
					searchtype="CASE-CITE-REF"&gt; &lt;ci:span
					spanid="x20023NZLR_113-171-1"&gt;[2001] NZAR 598&lt;/ci:span&gt;
					&lt;/citefragment&gt; at para [ &lt;link
					refpt="20023NZLR_113_p5"&gt;5&lt;/link&gt; ] &lt;/ci:content&gt;
					&lt;/ci:cite&gt; </xd:pre>
         <xd:p>
            <xd:b>Target XML</xd:b>
         </xd:p>
         <xd:pre> &lt;p&gt; &lt;ref:anchor id="nz_20023NZLR_113_p5" anchortype="global"
					/&gt; &lt;desig value="5" inline="true"&gt;[5]&lt;/desig&gt; &lt;text&gt;A
					number of issues were raised on Bs behalf but may be summarised as
					follows:&lt;/text&gt; ... &lt;/p&gt; … &lt;lnci:cite
					citeref="20023NZLR_113_p5"&gt; &lt;lnci:case&gt; &lt;lnci:caseref
					ID="x20023NZLR_113-171"&gt; &lt;lnci:reporter value="nzar" country="nz" /&gt;
					&lt;lnci:edition&gt; &lt;lnci:date year="2001" /&gt; &lt;/lnci:edition&gt;
					&lt;lnci:page num="598" /&gt; &lt;/lnci:caseref&gt; &lt;/lnci:case&gt;
					&lt;lnci:content&gt; &lt;emph typestyle="it"&gt;Auckland District Law Society v
					Ford&lt;/emph&gt; [2001] NZAR 598 at para [ 5 ] &lt;/lnci:content&gt;
					&lt;/lnci:cite&gt; </xd:pre>
         <xd:p>
            <xd:b>Source XML: ci:cite/@type="cite4thisdoc" (AU Journals/Newsitem)</xd:b>
         </xd:p>
         <xd:pre> &lt;jrnl:journalcite&gt; &lt;ci:cite type="cite4thisdoc"&gt;
					&lt;ci:lawrev&gt; &lt;ci:lawrevref&gt; &lt;ci:lawrevlocator&gt;
					&lt;ci:publicationname normpubcode="Aust Jnl of Corp Law"/&gt; &lt;ci:volume
					num="15"/&gt; &lt;ci:page num="185"/&gt; &lt;/ci:lawrevlocator&gt;
					&lt;/ci:lawrevref&gt; &lt;/ci:lawrev&gt; &lt;ci:content&gt;(2003) 15 Aust Jnl of
					Corp Law 185&lt;/ci:content&gt; &lt;/ci:cite&gt; &lt;/jrnl:journalcite&gt;
				</xd:pre>
         <xd:p>
            <xd:b>Target XML: lnci:cite/@type="cite4thisdoc" (AU Journals/Newsitem)</xd:b>
         </xd:p>
         <xd:pre> &lt;ref:cite4thisresource&gt; &lt;lnci:cite type="cite4thisdoc"&gt;
					&lt;lnci:lawrev&gt; &lt;lnci:lawrevref&gt; &lt;lnci:lawrevlocator&gt;
					&lt;lnci:publicationname normpubcode="Aust Jnl of Corp Law"/&gt; &lt;lnci:volume
					num="15"/&gt; &lt;lnci:page num="185"/&gt; &lt;/lnci:lawrevlocator&gt;
					&lt;/lnci:lawrevref&gt; &lt;/lnci:lawrev&gt; &lt;lnci:content&gt;(2003) 15 Aust
					Jnl of Corp Law 185&lt;/lnci:content&gt; &lt;/lnci:cite&gt;
					&lt;/ref:cite4thisresource&gt; </xd:pre>
         <xd:p>
            <xd:b>Source XML: ci:cite/@type="legref" (NZ Regulation)</xd:b>
         </xd:p>
         <xd:pre> &lt;glp:note&gt; &lt;p&gt; &lt;text&gt; &lt;ci:cite searchtype="LEG-REF"
					type="legref"&gt; &lt;ci:content&gt;Compare: SR 1958/38 r 15Q&lt;/ci:content&gt;
					&lt;/ci:cite&gt; &lt;/text&gt; &lt;/p&gt; &lt;/glp:note&gt; </xd:pre>
         <xd:p>
            <xd:b>Target XML</xd:b>
         </xd:p>
         <xd:pre> &lt;note&gt; &lt;bodytext&gt; &lt;p&gt; &lt;text&gt; &lt;lnci:cite&gt;
					&lt;lnci:content&gt;Compare: SR 1958/38 r 15Q&lt;/lnci:content&gt;
					&lt;/lnci:cite&gt; &lt;/text&gt; &lt;/p&gt; &lt;/bodytext&gt; &lt;/note&gt;
				</xd:pre>
         <!--Changes2016-03-23: Updated main instructions to
						clarify that descendants of ci:cite, and not just children, are to be
						processed.2015-09-15: Updated instruction to suppressed the
						attribute @type with value "legref" in target.
						Applicable on NZ Regulation and NZ Act from services [Webstar
						#6245139].2015-03-17: An attribute
							@inline get added with
							desig element even when the
							sourcepnum is not having that
							attribute@inline Applicable on CA12
					only.2015-02-24: Example updated as per new rule an
						attribute @inlineget added with
							desigelement when the
							sourcepnumis not having that
							attribute@inline2014-12-08: Addition of mapping for
							ci:pinpoint to
							lnci:pinpoint and example from US LPA
						content.2013-12-30: Minor illustrative change. Added "(AU
						Journals/Newsitem)" to headings for last example to clarify that retention
						of @type="cite4thisdoc" is an exception for that
						content, as already described in narrative rules.2013-05-01: Removed special rule for
							ci:cite/ci:content/remotelink which required
						suppression of ci:cite/ci:content tags. The elements
						are now retained and convert according to common rules.2013-04-24: Added a mapping for
							ci:procphrase to
							lnci:procphrase.2013-01-22: Instruction modified for the scenario
							ci:cite/ci:content/remotelink to indicate that
						the ci:cite and ci:content
						start-tags and end-tags (but not their content) are dropped.2012-11-29: Updated instructions to drop all
							@spanref.2012-09-18: Instruction and example added for
						handling of ci:cite/@type="cite4thisdoc" for AU
						Journals/Newsitem.2012-09-11: Created.-->
      </xd:desc>
   </xd:doc>
   <xsl:template match="ci:cite">
      <xsl:choose>
         <xsl:when test="parent::leg:bodytext">
            <p>
               <text>
                  <lnci:cite>
                     <xsl:if test="ci:content/link">
                        <xsl:attribute name="citeref" select="ci:content/link/@refpt"/>
                     </xsl:if>
                     <!-- MDS 2017-05-01 - Added parameter 'childElementName' to match other call.  
				General ci:* module states to drop value of ci:cite/@searchtype if certain strings are found in first child element local-name.  
				Previously this first child element local-name value was not being passed.  The value is not invalid but it is a diff from the DT documents. -->
                     <xsl:apply-templates select="@*">
                        <xsl:with-param name="childElementName" select="local-name(child::*[1])"/>
                     </xsl:apply-templates>
                     <xsl:apply-templates select="node()"/>
                  </lnci:cite>
               </text>
            </p>
         </xsl:when>
         <xsl:otherwise>
            <lnci:cite><!-- JD: 2017-08-31: added for VSTS Issue 342175.
				  If there is no @type, and no child element aside from <ci:content>, and the parent is case:parallelcite,
				  then set @type='case'
				  -->
               <xsl:if test="not(@type) and not(*[not(name()='ci:content')])         and parent::case:parallelcite and $streamID='UK05'">
                  <xsl:attribute name="type" select="'case'"/>
               </xsl:if>
               <!-- MDS - 2017-08-10 - added to address instructions in CI for AU13 -->
               <!-- Awantika: Added AU01 for normcite -->
               <xsl:if test="$streamID=('AU13','AU01','HK09','UK11DN')">
                  <xsl:if test="ci:case/ci:caseref[ci:reporter/@value and ci:volume/@num and         ci:edition/ci:date/@year and ci:pinpoint[@targettype='page']/@num] and        not(ci:case/ci:caseref/ci:page/@num)"><!-- Done simply to set the context node -->
                     <xsl:for-each select="ci:case[1]/ci:caseref">
                        <xsl:attribute name="normcite">
                           <xsl:text>(</xsl:text>
                           <xsl:value-of select="ci:edition/ci:date/@year"/>
                           <xsl:text>) </xsl:text>
                           <xsl:value-of select="ci:volume/@num"/>
                           <xsl:text> </xsl:text>
                           <xsl:value-of select="ci:reporter/@value"/>
                           <xsl:text> </xsl:text>
                           <xsl:value-of select="ci:pinpoint[@targettype='page']/@num"/>
                        </xsl:attribute>
                     </xsl:for-each>
                  </xsl:if>
               </xsl:if>
               <!-- Ankita Singh 12 June 2017: Introducted value of lnci:cite/@type to "cite4thisdoc under jrnl:journalcite as per latest CI of UK09 -->
               <xsl:if test="$streamID = ('UK09', 'NZ08','AU14') and parent::jrnl:journalcite">
                  <xsl:attribute name="type">cite4thisdoc</xsl:attribute>
               </xsl:if>
               <xsl:if test="ci:content/link">
                  <xsl:attribute name="citeref" select="ci:content/link/@refpt"/>
               </xsl:if>
               <xsl:if test="ci:content/remotelink and $streamID = ('NZ14', 'NZ02','AU11','NZ08','AU14')">
                  <xsl:attribute name="citeref" select="ci:content/remotelink[1]/@refpt"/>
                  <!-- CSN 8/4/17 added [1] in case there are multiple remotelinks -->
               </xsl:if>
               <!-- 20170721:  MCJ:  We originally grouped NZ15 into the code for NZ14 and NZ02 but found there are differences in how DT was
						                  handling colons and the leading underscore... so we kept NZ15 apart.  It is possibly (likely?) that something
						                  is going to need to change.  The NZ15 code attempts to follow the instructions about using a leading underscore
						                  and translating colons to underscores... however, it is not clear whether the target documents have had their
						                  "cite def" processed similarly.
					                      Also, note the added predicate that ensures that there is a remotelink that has @refpt.  It is not clear
					                      what should happen if cite:content/remotelink[not(@refpt)] exists... hoping data is good.
					-->
               <xsl:if test="ci:content/remotelink[@refpt] and $streamID = ('NZ15')"><!-- First replace any colons with underscores. -->
                  <xsl:variable name="translatedCiteRefValue"
                                select="translate(ci:content/remotelink[@refpt][1]/@refpt, ':', '_')"/>
                  <!-- Now, check if the value starts with a digit... if so, prepend an underscore.  There may be other offending first characters that need to be checked but digits should cover most. -->
                  <xsl:variable name="processedCiteRefValue"
                                select="if (matches($translatedCiteRefValue, '^\d')) then concat('_', $translatedCiteRefValue) else $translatedCiteRefValue"/>
                  <xsl:attribute name="citeref" select="$processedCiteRefValue"/>
               </xsl:if>
               <!-- MDS 2017-05-01 - Added parameter 'childElementName' to match other call.  
				General ci:* module states to drop value of ci:cite/@searchtype if certain strings are found in first child element local-name.  
				Previously this first child element local-name value was not being passed.  The value is not invalid but it is a diff from the DT documents. -->
               <xsl:apply-templates select="@*">
                  <xsl:with-param name="childElementName" select="local-name(child::*[1])"/>
               </xsl:apply-templates>
               <xsl:apply-templates select="node()"/>
            </lnci:cite>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>

   <xsl:template match="ci:*[not(local-name() = ('cite', 'fragment', 'span', 'volume', 'page'))] | ci:volume[normalize-space(@num) != ''] | ci:page[normalize-space(@num) != '']">
      <xsl:element name="{concat('lnci:', local-name())}">
         <xsl:apply-templates select="@*">
            <xsl:with-param name="childElementName" select="node()[1]/local-name()"/>
         </xsl:apply-templates>
         <!-- Sudhanshu Srivastava 7 June 2017 : Added condition for CA03 stream Only. condition for generating lnci:popname and lnci:hiertext.-->
         <xsl:if test="$streamID = 'CA03' and local-name() = 'statinfo'">
            <xsl:variable name="beforestring"
                          select="substring-before(ancestor::source_cttr:body/leg:info/leg:officialname, '/')"/>
            <xsl:variable name="afterstring"
                          select="substring-after(ancestor::source_cttr:body/leg:info/leg:officialname, '/')"/>
            <xsl:variable name="fullstring"
                          select="ancestor::source_cttr:body/leg:info/leg:officialname"/>
            <xsl:variable name="cicitecount"
                          select="count(ancestor::source_cttr:body/leg:info/leg:officialnum/ci:cite)"/>
            <xsl:variable name="legjuris"
                          select="ancestor::source_cttr:body/leg:info/leg:juris[1]"/>
            <xsl:variable name="legofnumchild"
                          select="ancestor::source_cttr:body/leg:info/leg:officialnum"/>
            <xsl:if test="ancestor::leg:officialnum/parent::leg:info/parent::source_cttr:body">
               <xsl:choose>
                  <xsl:when test="$cicitecount = 1">
                     <xsl:choose>
                        <xsl:when test="not(contains($fullstring, '/'))">
                           <xsl:if test="not(ancestor::ci:cite/preceding-sibling::*[1][self::ci:cite])">
                              <lnci:popname value="{$fullstring}"/>
                           </xsl:if>
                        </xsl:when>
                        <xsl:otherwise>
                           <lnci:popname value="{$beforestring}"/>
                        </xsl:otherwise>
                     </xsl:choose>
                     <lnci:jurisinfo>
                        <lnci:can>
                           <xsl:attribute name="district">
                              <xsl:choose>
                                 <xsl:when test="$legjuris = 'PQ'">QC</xsl:when>
                                 <xsl:when test="$legjuris = ('CD', 'Canada', 'UK')">CA</xsl:when>
                                 <xsl:when test="$legjuris = ('NF')">NL</xsl:when>
                                 <xsl:when test="$legjuris = ('NU')"/>
                                 <xsl:otherwise>
                                    <xsl:value-of select="$legjuris"/>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </lnci:can>
                     </lnci:jurisinfo>
                  </xsl:when>
                  <xsl:when test="$cicitecount = 2">
                     <xsl:choose>
                        <xsl:when test="not(contains($fullstring, '/'))">
                           <xsl:if test="not(ancestor::ci:cite/preceding-sibling::*[1][self::ci:cite])">
                              <lnci:popname value="{$fullstring}"/>
                           </xsl:if>
                        </xsl:when>
                        <xsl:otherwise>
                           <lnci:popname value="{if(not(ancestor::ci:cite/preceding-sibling::*[1][self::ci:cite])) then $beforestring else $afterstring}"/>
                        </xsl:otherwise>
                     </xsl:choose>
                     <lnci:jurisinfo>
                        <lnci:can>
                           <xsl:attribute name="district">
                              <xsl:choose>
                                 <xsl:when test="$legjuris = 'PQ'">QC</xsl:when>
                                 <xsl:when test="$legjuris = ('CD', 'Canada', 'UK')">CA</xsl:when>
                                 <xsl:when test="$legjuris = ('NF')">NL</xsl:when>
                                 <xsl:when test="$legjuris = ('NU')"/>
                                 <xsl:otherwise>
                                    <xsl:value-of select="$legjuris"/>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </lnci:can>
                     </lnci:jurisinfo>
                  </xsl:when>
                  <xsl:when test="$cicitecount = 4">
                     <xsl:choose>
                        <xsl:when test="not(contains($fullstring, '/'))">
                           <xsl:if test="not(ancestor::ci:cite/preceding-sibling::*[1][self::ci:cite])">
                              <lnci:popname value="{$fullstring}"/>
                           </xsl:if>
                           <xsl:if test="ancestor::ci:cite/preceding-sibling::*[1][self::ci:cite] and count(ancestor::ci:cite/preceding-sibling::*[1][self::ci:cite]) = 1">
                              <lnci:popname value="{$fullstring}"/>
                           </xsl:if>
                        </xsl:when>
                        <xsl:otherwise>
                           <xsl:if test="not(ancestor::ci:cite/preceding-sibling::*[1][self::ci:cite])">
                              <lnci:popname value="{$beforestring}"/>
                           </xsl:if>
                           <xsl:if test="ancestor::ci:cite/preceding-sibling::*[1][self::ci:cite] and count(ancestor::ci:cite/preceding-sibling::ci:cite) = 1">
                              <lnci:popname value="{$beforestring}"/>
                           </xsl:if>
                           <xsl:if test="count(ancestor::ci:cite/preceding-sibling::ci:cite) = 2">
                              <lnci:popname value="{$afterstring}"/>
                           </xsl:if>
                           <xsl:if test="count(ancestor::ci:cite/preceding-sibling::ci:cite) = 3">
                              <lnci:popname value="{$afterstring}"/>
                           </xsl:if>
                        </xsl:otherwise>
                     </xsl:choose>
                     <lnci:jurisinfo>
                        <lnci:can>
                           <xsl:attribute name="district">
                              <xsl:choose>
                                 <xsl:when test="$legjuris = 'PQ'">QC</xsl:when>
                                 <xsl:when test="$legjuris = ('CD', 'Canada', 'UK')">CA</xsl:when>
                                 <xsl:when test="$legjuris = ('NF')">NL</xsl:when>
                                 <xsl:when test="$legjuris = ('NU')"/>
                                 <xsl:otherwise>
                                    <xsl:value-of select="$legjuris"/>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </lnci:can>
                     </lnci:jurisinfo>
                  </xsl:when>
                  <xsl:otherwise/>
               </xsl:choose>
            </xsl:if>
         </xsl:if>
         <xsl:if test="$streamID = 'CA03' and local-name() = 'hierlev' and not(child::ci:hierlev)">
            <xsl:variable name="beforeslash"
                          select="substring-before(ancestor::source_cttr:body/leg:info/leg:num, '/')"/>
            <xsl:variable name="afterslash"
                          select="substring-after(ancestor::source_cttr:body/leg:info/leg:num, '/')"/>
            <xsl:variable name="fullnumber" select="ancestor::source_cttr:body/leg:info/leg:num"/>
            <xsl:variable name="cicitecount"
                          select="count(ancestor::source_cttr:body/leg:info/leg:officialnum/ci:cite)"/>
            <xsl:variable name="legofnumchild"
                          select="ancestor::source_cttr:body/leg:info/leg:officialnum"/>
            <xsl:if test="contains(ancestor::leg:officialnum/preceding-sibling::leg:num, '/')">
               <xsl:choose>
                  <xsl:when test="$cicitecount = 1">
                     <lnci:hiertext value="{$beforeslash}"/>
                  </xsl:when>
                  <xsl:when test="$cicitecount = 2">
                     <lnci:hiertext value="{if(not(ancestor::ci:cite/preceding-sibling::*[1][self::ci:cite])) then $beforeslash else $afterslash}"/>
                  </xsl:when>
                  <xsl:when test="$cicitecount = 4">
                     <xsl:if test="not(ancestor::ci:cite/preceding-sibling::*[1][self::ci:cite])">
                        <lnci:hiertext value="{$beforeslash}"/>
                     </xsl:if>
                     <xsl:if test="ancestor::ci:cite/preceding-sibling::*[1][self::ci:cite] and count(ancestor::ci:cite/preceding-sibling::ci:cite) = 2">
                        <lnci:hiertext value="{$afterslash}"/>
                     </xsl:if>
                  </xsl:when>
               </xsl:choose>
            </xsl:if>
         </xsl:if>
         <!-- Awantika-21-07-2017- For AU20 remotelink needs to be created outside ci:content -->
         <xsl:choose>
            <xsl:when test="$streamID='AU20' and local-name() = 'content'">
               <xsl:apply-templates select="node() except remotelink"/>
            </xsl:when>
            <xsl:when test="$streamID='CA02DC' and local-name()='content' and ancestor::case:reportercite">
               <xsl:apply-templates select="*"/>
            </xsl:when>
            <!-- Awantika-2018-01-25-  trailing comma and space should be suppressed in target lnci:content. Webstar # 7102029 -->
            <!-- Awantika-2018-01-29-  trailing space should be suppressed in target lnci:content. Webstar # 7102029 -->
            <xsl:when test="$streamID='CA02CC' and local-name()='content'">
               <xsl:choose>
                  <xsl:when test="starts-with(.,'Full text: ') and contains(.,',')">
                     <xsl:value-of select="replace(replace(.,', ',''),'Full text: ','')"/>
                  </xsl:when>
                  <xsl:when test="starts-with(.,'Texte intégral :') and contains(.,',')">
                     <xsl:value-of select="replace(replace(.,', ',''),'Texte intégral :','')"/>
                  </xsl:when>
                  <xsl:when test="starts-with(.,'Full text/texte intégral: ') and contains(.,',')">
                     <xsl:value-of select="replace(replace(.,', ',''),'Full text/texte intégral: ','')"/>
                  </xsl:when>
                  <xsl:when test="starts-with(.,'Full text: ') and not(contains(.,','))">
                     <xsl:value-of select="replace(.,'Full text: ','')"/>
                  </xsl:when>
                  <xsl:when test="starts-with(.,'Texte intégral :') and not(contains(.,','))">
                     <xsl:value-of select="replace(.,'Texte intégral :','')"/>
                  </xsl:when>
                  <xsl:when test="starts-with(.,'Full text/texte intégral: ') and not(contains(.,','))">
                     <xsl:value-of select="replace(.,'Full text/texte intégral: ','')"/>
                  </xsl:when>
                  <xsl:otherwise>
                     <xsl:apply-templates select="node()"/>
                  </xsl:otherwise>
               </xsl:choose>
            </xsl:when>
            <xsl:otherwise>
               <xsl:apply-templates select="node()"/>
            </xsl:otherwise>
         </xsl:choose>
      </xsl:element>
   </xsl:template>
   <!-- JD: 20170524 : added to trap error output message -->
   <xsl:template match="ci:pinpoint/@searchtype"/>

   <xsl:template match="ci:*/@*[not(name() = ('searchtype', 'spanref', 'type', 'ID', 'ln.nsprefix'))]">
      <xsl:attribute name="{name()}">
         <xsl:value-of select="."/>
      </xsl:attribute>
   </xsl:template>

   <xsl:template match="ci:volume[@num = ''] | ci:volume[@num = ' '] | ci:page[@num = '']"/>

   <xsl:template match="ci:*/@spanref | ci:*/@ln.nsprefix"/>

   <xsl:template match="ci:*/@ID">
      <xsl:param name="increment-caserefid" tunnel="yes"/>
      <xsl:variable name="dupStatus">
         <xsl:for-each select="parent::*">
            <xsl:call-template name="amIaDuplicate"/>
         </xsl:for-each>
      </xsl:variable>
      <xsl:choose>
         <xsl:when test="$dupStatus = 'false'">
            <xsl:attribute name="ID">
               <xsl:call-template name="normalizeIdString"/>
               <xsl:if test="$increment-caserefid = 'yes'">
                  <xsl:text>_01</xsl:text>
               </xsl:if>
            </xsl:attribute>
         </xsl:when>
         <xsl:otherwise>
            <xsl:message>citation ID for <xsl:value-of select="parent::*"/> was a duplicate and
					has been removed from the conversion.</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>

   <xsl:template match="citefragment | ci:span"><!-- Sudhanshu : 6 june 2017 , requirement for converting ci:span to lnci:span, so using choose scenario. -->
      <xsl:choose>
         <xsl:when test="$streamID = 'CA03' and not(ancestor::leg:officialnum) and not(ancestor::case:parallelcite)">
            <lnci:span>
               <xsl:apply-templates select="@* | node()"/>
            </lnci:span>
         </xsl:when>
         <xsl:otherwise>
            <xsl:apply-templates/>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <!--<xsl:template
		match="citefragment[parent::ci:content and remotelink[@service = 'DOC-ID']][$streamID = 'AU04' or $streamID = 'AU08']"> </xsl:template>-->
   <xsl:template match="citefragment[parent::ci:content and remotelink[@service = 'DOC-ID']][$streamID = ('AU04', 'AU08')]">
      <xsl:call-template name="remotelinkDOCID"/>
   </xsl:template>

   <xsl:template match="citefragment[parent::ci:content and remotelink[@service = 'DOC-ID']][$streamID = ('NZ09', 'NZ07-DN')]">
      <xsl:apply-templates/>
   </xsl:template>

   <xsl:template match="ci:cite[not(ancestor::case:references) or $streamID='NZ17CC' or $streamID='HK09']/@searchtype"
                 priority="25">
      <xsl:param name="childElementName"/>
      <xsl:choose><!-- JD: 2017-08-01: NZ06 includes standard module id-CCCC-10268; by my reading ci:cite/@type should not be suppressed, only the value 'legref'
			"If ci:cite@type comes with attribute value "legref" in source document then conversion needs to suppressed attribute value in target 
			and convert ci:cite according to general rule."
			Moving this logic to ci:cite/@type, below
			--><!--<xsl:when test="$streamID = ('NZ06')"/>-->
         <xsl:when test="      $childElementName = 'case' or $childElementName = 'form' or      $childElementName = 'misc' or $childElementName = 'admininterp' or      $childElementName = 'execdoc' or $childElementName = 'annot' or      $childElementName = 'constitution' or $childElementName = 'agencydecision' or      $childElementName = 'oag' or $childElementName = 'book' or      $childElementName = 'pinpoint' or $childElementName = 'periodical' or      $childElementName = 'lawrev' or $childElementName = 'copyright' or      $childElementName = 'tmark' or $childElementName = 'patent' or      $childElementName = 'sesslaw' or $childElementName = 'courtrule' or      $childElementName = 'reg' or $childElementName = 'juryinstr'"/>
         <xsl:otherwise>
            <xsl:attribute name="type">
               <xsl:choose>
                  <xsl:when test=". = 'LEG-REF'">legislation</xsl:when>
                  <xsl:when test=". = 'CASE-REF'">case</xsl:when>
                  <xsl:when test=". = 'BOOK-REF'">book</xsl:when>
                  <xsl:when test=". = 'BODY-CASE-REF'">case</xsl:when>
                  <xsl:when test=". = 'SUMM-CASE-REF'">case</xsl:when>
                  <xsl:when test=". = 'EU-REF'">EU-REF</xsl:when>
               </xsl:choose>
            </xsl:attribute>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>

   <xsl:template match="ci:cite/@type | ci:citeditem/@type">
      <xsl:choose><!-- 
				"Handling for NZ Regulation and NZ Act from services:
				If ci:cite@type comes with attribute value "legref" in source document then conversion needs to suppressed attribute value in target 
			  and convert ci:cite according to general rule."  -->
         <xsl:when test=".='legref' and $streamID=('NZ05','NZ06')"/>
         <!-- do nothing -->
         <xsl:when test=". = 'legref' or parent::ci:cite[ci:case | ci:stat | ci:juryinstr | ci:reg | ci:courtrule | ci:sesslaw | ci:patent | ci:tmark | ci:copyright | ci:lawrev | ci:periodical | ci:pinpoint | ci:book | ci:oag | ci:agencydecision | ci:constitution | ci:annot | ci:execdoc | ci:admininterp | ci:misc | ci:form]"/>
         <xsl:otherwise>
            <xsl:attribute name="type" select="."/>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <!-- Vikas Rohilla : Added for the error messege	-->
   <xsl:template match="ci:cite/@searchtype"/>
   <!--<topicref href="../common/common_rosetta_table.dita"/>-->   <!-- <topicref href="../../../common_newest/Rosetta_table-LxAdv-table.dita"/> -->   <xd:doc>
						xmlns:primlawhist="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-history/1/"
		<xd:desc>
         <xd:p>
            <xd:b>Instructions <xd:i>[common element]</xd:i>
            </xd:b>
         </xd:p>
         <xd:p>Contains the titling content for a table, and titled groups that contain rows of
					cells ("entries"). Table now allows an optional heading element, which contains
					the titling content as well. The titling elements directly within table - title
					and subtitle - are deprecated in favor of using these elements inside the
					heading. </xd:p>
         <xd:ul>
            <xd:li>
               <xd:i>table</xd:i> becomes <xd:b>table</xd:b> comes with
							<xd:i>@frame</xd:i> becomes <xd:b>@frame</xd:b>
						which has tokenized values as (top | bottom | topbot | all | sides | none)
						and required child element is described below: <xd:ul>
                  <xd:li>
                     <xd:i>tgroup</xd:i> becomes <xd:b>tgroup</xd:b>
								with attributes <xd:i>@cols</xd:i> becomes
									<xd:b>@cols</xd:b> is the required attribute.
									<xd:i>@colsep</xd:i> becomes
									<xd:b>@colsep</xd:b>
                     <xd:i>@rowsep</xd:i> becomes
									<xd:b>@rowsep</xd:b> and child element includes: <xd:ul>
                        <xd:li>
                           <xd:i>colspec</xd:i> becomes
											<xd:b>colspec</xd:b> and attributes are
										converted as follows: <xd:ul>
                              <xd:li>
                                 <xd:i>@align</xd:i> becomes
												<xd:b>@align</xd:b>
                              </xd:li>
                              <xd:li>
                                 <xd:i>@char</xd:i> becomes
												<xd:b>@char</xd:b>
                              </xd:li>
                              <xd:li>
                                 <xd:i>@charoff</xd:i> becomes
												<xd:b>@charoff</xd:b>
                              </xd:li>
                              <xd:li>
                                 <xd:i>@colname</xd:i> becomes
												<xd:b>@colname</xd:b>
                              </xd:li>
                              <xd:li>
                                 <xd:i>@colnum</xd:i> becomes
												<xd:b>@colnum</xd:b>
                              </xd:li>
                              <xd:li>
                                 <xd:i>@colsep</xd:i> becomes
												<xd:b>@colsep</xd:b>
                              </xd:li>
                              <xd:li>
                                 <xd:i>@colwidth</xd:i> becomes
												<xd:b>@colwidth</xd:b>
                              </xd:li>
                              <xd:li>
                                 <xd:i>@id</xd:i> may be dropped or may
												require special handling. It may become
												<xd:b>@ref:anchor</xd:b> and if so is
												moved to the parent or higher ancestor element. This
												will be specified in the the particular CI as it
												will be done on a stream by stream basis and will
												depend on the particular XPath of the table element.
												In the absence of specific instructions elsewhere in
												the CI, <xd:i>@id</xd:i> is dropped.</xd:li>
                              <xd:li>
                                 <xd:i>@rowsep</xd:i> becomes
												<xd:b>@rowsep</xd:b>
                              </xd:li>
                              <xd:li>
                                 <xd:i>@searchtype</xd:i> is dropped</xd:li>
                              <xd:li>
                                 <xd:i>@xml:lang</xd:i> becomes
												<xd:b>@xml:lang</xd:b>
                              </xd:li>
                           </xd:ul>
                           <xd:p>
                              <xd:b>Note: </xd:b>
                              <xd:p>CALS table markup allows for units to be embedded in
												the column width. Lexis Advance only recognizes an
												integer in pixels and proportional, identified by a
												number ending with "*".</xd:p>
                              <xd:p>If a non-Lexis Advance format is discovered a warning
												should be raised.</xd:p>
                              <xd:p>If the LBU requires a conversion of CALS units to LA
												accepted units, some of the conversions are detailed
												below.</xd:p>
                              <xd:p>If colspec@colwidth ends in “in” (inch) them remove
												“in” and multiply the value by 96 to convert to
												pixel. Only keep the integer portion of the result.
												These are not valid: 0.1, 12.86. These are valid:
												12, 185</xd:p>
                              <xd:p>cm; follow the inches example above but use a
												conversion value of 37.7952755904</xd:p>
                              <xd:p>mm; follow the inches example above but use a
												conversion value of 3.77952755904</xd:p>
                              <xd:p>pt; follow the inches example above but use a
												conversion value of 1.0</xd:p>
                           </xd:p>
                        </xd:li>
                     </xd:ul>
                     <xd:p>The following instructions apply to all table markup (table
									element and its decendents) with @morerows, @colsep, and @rowsep
										attributes:<xd:ul>
                           <xd:li>Remove any instances of @morerows=0</xd:li>
                           <xd:li>If ALL occurrences of @colsep in one table have a value
											of zero, remove them all from that table. </xd:li>
                           <xd:li>If ALL occurrences of @rowsep in one table have a value
											of zero, remove them all from that table. </xd:li>
                        </xd:ul>
                        <xd:p>
                           <xd:b>Note: </xd:b>Although these instructions apply to all content streams,
										only the UK content streams and AU18 are known to have these
										issues.</xd:p>
                     </xd:p>
                     <xd:ul>
                        <xd:li>
                           <xd:i>thead</xd:i> becomes
											<xd:b>thead</xd:b> below is the required child
										element: <xd:ul>
                              <xd:li>
                                 <xd:i>row</xd:i> becomes
												<xd:b>row</xd:b> below is the required
												child element: <xd:ul>
                                    <xd:li>
                                       <xd:i>entry</xd:i> becomes
												<xd:b>entry</xd:b> and comes with
												<xd:i>@nameend</xd:i> becomes
												<xd:b>@nameend</xd:b>
                                       <xd:i>@namest</xd:i> becomes
												<xd:b>@namest</xd:b>
                                       <xd:i>@align</xd:i> becomes
												<xd:b>@align</xd:b> with tokenized
												values as (left | right | center | justify | char)
												</xd:li>
                                 </xd:ul>
                              </xd:li>
                           </xd:ul>
                        </xd:li>
                     </xd:ul>
                     <xd:ul>
                        <xd:li>
                           <xd:i>tbody</xd:i> becomes
											<xd:b>tbody</xd:b> and child element includes: <xd:ul>
                              <xd:li>
                                 <xd:i>row</xd:i> becomes
												<xd:b>row</xd:b> and child element
												includes: <xd:ul>
                                    <xd:li>
                                       <xd:i>entry</xd:i> becomes
												<xd:b>entry</xd:b> and comes with
												<xd:i>@nameend</xd:i> becomes
												<xd:b>@nameend</xd:b>
                                       <xd:i>@namest</xd:i> becomes
												<xd:b>@namest</xd:b>
                                       <xd:i>@char</xd:i> becomes
												<xd:b>@char</xd:b>
                                       <xd:i>@align</xd:i> becomes
												<xd:b>@align</xd:b> with tokenized
												values as (left | right | center | justify | char)
												</xd:li>
                                 </xd:ul>
                              </xd:li>
                           </xd:ul>
                        </xd:li>
                     </xd:ul>
                  </xd:li>
               </xd:ul>
            </xd:li>
         </xd:ul>
         <xd:p>
            <xd:b>Note: </xd:b> Multiple <xd:i>tgroup</xd:i> are retained for conversion.</xd:p>
         <xd:p>
            <xd:b>Source XML</xd:b>
         </xd:p>
         <xd:pre> &lt;table frame="none"&gt; &lt;tgroup cols="3" colsep="0" rowsep="0"&gt;
					&lt;colspec colname="col1" colnum="1" colwidth="5*"/&gt; &lt;colspec
					colname="col2" colnum="2" colwidth="83*"/&gt; &lt;colspec align="left"
					colname="col3" colnum="3" colwidth="12*"/&gt; &lt;thead&gt; &lt;row&gt;
					&lt;entry align="center" nameend="col3" namest="col1"&gt;&lt;emph
					typestyle="bf"&gt;Table of contents&lt;/emph&gt;&lt;/entry&gt; &lt;/row&gt;
					&lt;row&gt; &lt;entry/&gt;&lt;entry/&gt; &lt;entry align="right"
					colname="col3"&gt;&lt;emph typestyle="bf"&gt;Para no&lt;/emph&gt;&lt;/entry&gt;
					&lt;/row&gt; &lt;/thead&gt; &lt;tbody&gt; &lt;row&gt; &lt;entry align="left"
					nameend="col2" namest="col1"&gt;Introduction&lt;/entry&gt; &lt;entry
					align="right" colname="col3"&gt;[1]&lt;/entry&gt; &lt;/row&gt; &lt;row&gt;
					&lt;entry align="left" nameend="col2" namest="col1"&gt;Mental health legislation
					concerning informal patients&lt;/entry&gt; &lt;entry align="right"
					colname="col3"&gt;[6]&lt;/entry&gt; &lt;/row&gt; &lt;row&gt; &lt;entry
					align="left" nameend="col2" namest="col1"&gt;Procedural background&lt;/entry&gt;
					&lt;entry align="right" colname="col3"&gt;[15]&lt;/entry&gt; &lt;/row&gt;
					&lt;row&gt; &lt;entry align="left" nameend="col2" namest="col1"&gt;Applicable
					statutory provisions&lt;/entry&gt; &lt;entry align="right"
					colname="col3"&gt;[22]&lt;/entry&gt; &lt;/row&gt; &lt;row&gt; &lt;entry
					align="left" nameend="col2" namest="col1"&gt;The English position&lt;/entry&gt;
					&lt;entry align="right" colname="col3"&gt;[33]&lt;/entry&gt; &lt;/row&gt;
					&lt;row&gt; &lt;entry align="left" nameend="col2" namest="col1"&gt;Submissions
					of parties&lt;/entry&gt; &lt;entry align="right"
					colname="col3"&gt;[39]&lt;/entry&gt; &lt;/row&gt; &lt;row&gt; &lt;entry
					align="left" nameend="col2" namest="col1"&gt;Protective provisions&lt;/entry&gt;
					&lt;entry align="right" colname="col3"&gt;[43]&lt;/entry&gt; &lt;/row&gt;
					&lt;row&gt; &lt;entry align="left" nameend="col2" namest="col1"&gt;The 1961 Act:
					Crown authority to treat informal patients&lt;/entry&gt; &lt;entry align="right"
					colname="col3"&gt;[45]&lt;/entry&gt; &lt;/row&gt; &lt;row&gt; &lt;entry
					align="left" nameend="col2" namest="col1"&gt;Leave requirements&lt;/entry&gt;
					&lt;entry align="right" colname="col3"&gt;[50]&lt;/entry&gt; &lt;/row&gt;
					&lt;row&gt; &lt;entry align="left" nameend="col2" namest="col1"&gt;The 1969
					Act&lt;/entry&gt; &lt;entry align="right" colname="col3"&gt; &lt;/entry&gt;
					&lt;/row&gt; &lt;row&gt; &lt;entry/&gt; &lt;entry align="left"
					colname="col2"&gt;(a) Crown authority to treat informal patients&lt;/entry&gt;
					&lt;entry align="right" colname="col3"&gt;[54]&lt;/entry&gt; &lt;/row&gt;
					&lt;row&gt; &lt;entry/&gt; &lt;entry align="left" colname="col2"&gt;(b)
					Authority of hospital boards to treat informal patients&lt;/entry&gt; &lt;entry
					align="right" colname="col3"&gt;[56]&lt;/entry&gt; &lt;/row&gt; &lt;row&gt;
					&lt;entry align="left" nameend="col2" namest="col1"&gt;Conclusion&lt;/entry&gt;
					&lt;entry align="right" colname="col3"&gt;[75]&lt;/entry&gt; &lt;/row&gt;
					&lt;/tbody&gt; &lt;/tgroup&gt; &lt;/table&gt; </xd:pre>
         <xd:p>
            <xd:b>Target XML</xd:b>
         </xd:p>
         <xd:pre> &lt;table frame="none"&gt; &lt;tgroup cols="3"&gt; &lt;colspec
					colname="col1" colnum="1" colwidth="5*"/&gt; &lt;colspec colname="col2"
					colnum="2" colwidth="83*"/&gt; &lt;colspec align="left" colname="col3"
					colnum="3" colwidth="12*"/&gt; &lt;thead&gt; &lt;row&gt; &lt;entry
					align="center" nameend="col3" namest="col1"&gt;&lt;emph typestyle="bf"&gt;Table
					of contents&lt;/emph&gt;&lt;/entry&gt; &lt;/row&gt; &lt;row&gt;
					&lt;entry/&gt;&lt;entry/&gt; &lt;entry align="right" colname="col3"&gt;&lt;emph
					typestyle="bf"&gt;Para no&lt;/emph&gt;&lt;/entry&gt; &lt;/row&gt; &lt;/thead&gt;
					&lt;tbody&gt; &lt;row&gt; &lt;entry align="left" nameend="col2"
					namest="col1"&gt;Introduction&lt;/entry&gt; &lt;entry align="right"
					colname="col3"&gt;[1]&lt;/entry&gt; &lt;/row&gt; &lt;row&gt; &lt;entry
					align="left" nameend="col2" namest="col1"&gt;Mental health legislation
					concerning informal patients&lt;/entry&gt; &lt;entry align="right"
					colname="col3"&gt;[6]&lt;/entry&gt; &lt;/row&gt; &lt;row&gt; &lt;entry
					align="left" nameend="col2" namest="col1"&gt;Procedural background&lt;/entry&gt;
					&lt;entry align="right" colname="col3"&gt;[15]&lt;/entry&gt; &lt;/row&gt;
					&lt;row&gt; &lt;entry align="left" nameend="col2" namest="col1"&gt;Applicable
					statutory provisions&lt;/entry&gt; &lt;entry align="right"
					colname="col3"&gt;[22]&lt;/entry&gt; &lt;/row&gt; &lt;row&gt; &lt;entry
					align="left" nameend="col2" namest="col1"&gt;The English position&lt;/entry&gt;
					&lt;entry align="right" colname="col3"&gt;[33]&lt;/entry&gt; &lt;/row&gt;
					&lt;row&gt; &lt;entry align="left" nameend="col2" namest="col1"&gt;Submissions
					of parties&lt;/entry&gt; &lt;entry align="right"
					colname="col3"&gt;[39]&lt;/entry&gt; &lt;/row&gt; &lt;row&gt; &lt;entry
					align="left" nameend="col2" namest="col1"&gt;Protective provisions&lt;/entry&gt;
					&lt;entry align="right" colname="col3"&gt;[43]&lt;/entry&gt; &lt;/row&gt;
					&lt;row&gt; &lt;entry align="left" nameend="col2" namest="col1"&gt;The 1961 Act:
					Crown authority to treat informal patients&lt;/entry&gt; &lt;entry align="right"
					colname="col3"&gt;[45]&lt;/entry&gt; &lt;/row&gt; &lt;row&gt; &lt;entry
					align="left" nameend="col2" namest="col1"&gt;Leave requirements&lt;/entry&gt;
					&lt;entry align="right" colname="col3"&gt;[50]&lt;/entry&gt; &lt;/row&gt;
					&lt;row&gt; &lt;entry align="left" nameend="col2" namest="col1"&gt;The 1969
					Act&lt;/entry&gt; &lt;entry align="right" colname="col3"&gt; &lt;/entry&gt;
					&lt;/row&gt; &lt;row&gt; &lt;entry/&gt; &lt;entry align="left"
					colname="col2"&gt;(a) Crown authority to treat informal patients&lt;/entry&gt;
					&lt;entry align="right" colname="col3"&gt;[54]&lt;/entry&gt; &lt;/row&gt;
					&lt;row&gt; &lt;entry/&gt; &lt;entry align="left" colname="col2"&gt;(b)
					Authority of hospital boards to treat informal patients&lt;/entry&gt; &lt;entry
					align="right" colname="col3"&gt;[56]&lt;/entry&gt; &lt;/row&gt; &lt;row&gt;
					&lt;entry align="left" nameend="col2" namest="col1"&gt;Conclusion&lt;/entry&gt;
					&lt;entry align="right" colname="col3"&gt;[75]&lt;/entry&gt; &lt;/row&gt;
					&lt;/tbody&gt; &lt;/tgroup&gt; &lt;/table&gt; </xd:pre>
         <!--Changes2014-07-08: Updated instruction for added the
						following rarely occurring attributes @char inside
						the entry.2014-06-04: For completeness, added instructions for
						the following rarely occurring attributes of
							table/tgroup/colspec:
							@align, @char,
							@charoff, @colsep,
							@id, @rowsep,
							@searchtype, and
						@xml:lang. This is in response to various minor
						questions on message boards that have been asked and answered over the past
						two years. These instructions should not trigger changes to existing
						conversion programs, as the programs have already been changed in response
						to previous message board answers. These instructions have been added so
						this topic is up-to-date with respect to current conversion program behavior
						for these rarely occuring attributes.2013-09-16: Removed an obsolete note regarding
						visual styling of tables.2013-09-12: WebTeam #s 235116, 235130, 235126: Added instructions for deleting
						extraneous instances of @morerows, @colsep and @rowsep. These instructions
						apply immediately to all UK streams and also to AU18.2012-01-12: Added a note for handling multiple tgroup. 2011-12-15: Created. -->
      </xd:desc>
   </xd:doc>
   <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_table-LxAdv-table.dita  -->
   <!--  @SBy:  this is from QC XSLT.  Should it appear here?  -->
   <!-- BRT: process table with page elements (break table in row before each row//page, create ref:page, create another table starting from row//page -->
   <xsl:template match="table[descendant::entry/descendant::page]" priority="15"><!-- BRT create a separate table before the start of a row that contains entry/descendant::page -->
      <xsl:for-each-group select=".//row" group-starting-with="row[entry/descendant::page]"><!-- BRT: If there is a ref:page in the current-group(), create the ref:page first -->
         <xsl:if test="current-group()//page">
            <xsl:element name="ref:page">
               <xsl:attribute name="num">
                  <xsl:value-of select="translate(current-group()//page/@count, ',', '')"/>
               </xsl:attribute>
               <xsl:if test="current-group()//page/@reporter">
                  <xsl:attribute name="page-scheme">
                     <xsl:value-of select="translate(current-group()//page/@reporter, ' ', '_')"/>
                  </xsl:attribute>
               </xsl:if>
               <xsl:if test="current-group()//page/@subdoc">
                  <xsl:attribute name="includeintoc">
                     <xsl:value-of select="current-group()//page/@subdoc"/>
                  </xsl:attribute>
               </xsl:if>
               <xsl:attribute name="page-scheme-type">
                  <xsl:text>reporter-abbreviation</xsl:text>
               </xsl:attribute>
            </xsl:element>
         </xsl:if>
         <!-- BRT create separate table for each group -->
         <xsl:element name="table"
                      namespace="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"><!-- BRT: Convert table, tgroup, and colspec  -->
            <xsl:copy-of select="ancestor::table/(@* except @id)"/>
            <xsl:if test="ancestor::table/@id">
               <xsl:variable name="count" select="position()"/>
               <xsl:for-each select="ancestor::table/@id">
                  <xsl:attribute name="xml:id">
                     <xsl:value-of select="concat(ancestor::table/@id, '_', $count)"/>
                  </xsl:attribute>
               </xsl:for-each>
            </xsl:if>
            <xsl:element name="tgroup"
                         namespace="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
               <xsl:copy-of select="ancestor::table[1]/tgroup/@*"/>
               <xsl:for-each select="ancestor::table[1]//colspec">
                  <xsl:element name="colspec"
                               namespace="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
                     <xsl:copy-of select="@*"/>
                     <xsl:apply-templates/>
                  </xsl:element>
               </xsl:for-each>
               <xsl:for-each select="ancestor::table[1]//thead">
                  <xsl:element name="thead"
                               namespace="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
                     <xsl:copy-of select="@*"/>
                     <xsl:apply-templates/>
                  </xsl:element>
               </xsl:for-each>
               <xsl:element name="tbody"
                            namespace="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
                  <xsl:copy-of select="ancestor::table[1]//tbody/@*"/>
                  <!-- apply all the rows of the current group to the current table -->
                  <xsl:apply-templates select="current-group()"/>
               </xsl:element>
            </xsl:element>
         </xsl:element>
      </xsl:for-each-group>
   </xsl:template>
   <!--  @SBy:  modified from QC XSLT  -->   <!-- 2017-10-17 - MDS: Added choose statment due to webstar 7025682.   -->   <!-- 2017-11-16 - CSN: Added UK03|case:dicisionsummary to existing 'when'.  webstar 7050317.   -->
   <xsl:template match="table" name="table">
      <xsl:choose>
         <xsl:when test="parent::entry or ((parent::case:decisionsummary or parent::case:typeofcase) and $streamID='UK03')">
            <p>
               <table>
                  <xsl:copy-of select="@frame | @pgwide"/>
                  <!--  @SBy:  only @frame is in DITA  -->
                  <!--  @SBy:  note @colsep | @rowsep addressed specifically in other template rules below  -->
                  <xsl:apply-templates select="@* except (@frame, @pgwide)"/>
                  <xsl:apply-templates/>
               </table>
            </p>
         </xsl:when>
         <!-- MDS - 2018-02-09 - Added to handle those otherwise empty tables that seem to be in the development data.  STREAM SPECIFIC -->
         <xsl:when test="$streamID='AU16' and not(tgroup/tbody/row/entry[2]) and not(tgroup/tbody/row[2]) and tgroup/tbody/row/entry[contains(normalize-space(.), 'Â')]"/>
         <xsl:otherwise>
            <table>
               <xsl:copy-of select="@frame"/>
               <!-- BRT 11/16/17 added special handling for @pgwide in UK content. If value is '0', output is '0', otherwise, the output is '1' -->
               <xsl:choose>
                  <xsl:when test="$streamID = ('UK01', 'UK02', 'UK05', 'UK08CA','UK08OR', 'UK09', 'UK10', 'UK15', 'UK17', 'UK18','UK20','UK22LF')">
                     <xsl:if test="@pgwide">
                        <xsl:attribute name="pgwide">
                           <xsl:choose>
                              <xsl:when test="@pgwide='0'">
                                 <xsl:value-of select="'0'"/>
                              </xsl:when>
                              <xsl:otherwise>
                                 <xsl:value-of select="'1'"/>
                              </xsl:otherwise>
                           </xsl:choose>
                        </xsl:attribute>
                     </xsl:if>
                  </xsl:when>
                  <xsl:otherwise>
                     <xsl:copy-of select="@pgwide"/>
                  </xsl:otherwise>
               </xsl:choose>
               <xsl:copy-of select="@frame"/>
               <!--  @SBy:  only @frame is in DITA  -->
               <!--  @SBy:  note @colsep | @rowsep addressed specifically in other template rules below  -->
               <xsl:apply-templates select="@* except (@frame, @pgwide)"/>
               <xsl:apply-templates/>
            </table>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>

   <xsl:template match="tgroup">
      <tgroup>
         <xsl:copy-of select="@cols"/>
         <!--  @SBy:  note @colsep | @rowsep addressed specifically in other template rules below  -->
         <xsl:apply-templates select="@* except @cols"/>
         <xsl:apply-templates/>
      </tgroup>
   </xsl:template>

   <xsl:template match="tgroup/@align">
      <xsl:copy-of select="."/>
   </xsl:template>

   <xsl:template match="colspec">
      <colspec>
         <xsl:copy-of select="@align | @char | @charoff | @colname | @colnum | @xml:lang"/>
         <!--  @SBy:  note @colsep | @rowsep addressed specifically in other template rules below  -->
         <xsl:apply-templates select="@* except (@align, @char, @charoff, @colname, @colnum, @xml:lang)"/>
         <xsl:apply-templates/>
         <!--  ***NOTE  -  see DITA regarding conversions of @colwidth values; does the DT code do any of that?  ***  -->
      </colspec>
   </xsl:template>

   <xsl:template match="colspec/@colwidth">
      <xsl:attribute name="colwidth"><!--<xsl:value-of select="."/>-->
         <xsl:analyze-string select="." regex="([0-9]+)([*]|[a-z]+)">
            <xsl:matching-substring>
               <xsl:choose>
                  <xsl:when test="regex-group(2) = 'in'">
                     <xsl:variable name="var1">
                        <xsl:value-of select="number(regex-group(1)) * 96"/>
                     </xsl:variable>
                     <xsl:value-of select="$var1"/>
                     <xsl:value-of select="concat($var1, '*')"/>
                  </xsl:when>
                  <xsl:when test="regex-group(2) = 'cm'">
                     <xsl:variable name="var1">
                        <xsl:value-of select="number(regex-group(1)) * 37.7952755904"/>
                     </xsl:variable>
                     <xsl:value-of select="concat(substring-before($var1, '.'), '*')"/>
                  </xsl:when>
                  <xsl:when test="regex-group(2) = 'mm'">
                     <xsl:variable name="var1">
                        <xsl:value-of select="number(regex-group(1)) * 3.77952755904"/>
                     </xsl:variable>
                     <xsl:value-of select="concat(substring-before($var1, '.'), '*')"/>
                  </xsl:when>
                  <xsl:when test="regex-group(2) = 'pt'">
                     <xsl:variable name="var1">
                        <xsl:value-of select="number(regex-group(1)) * 1"/>
                     </xsl:variable>
                     <xsl:value-of select="concat($var1, '*')"/>
                  </xsl:when>
                  <xsl:otherwise>
                     <xsl:value-of select="concat(regex-group(1), '*')"/>
                  </xsl:otherwise>
               </xsl:choose>
            </xsl:matching-substring>
         </xsl:analyze-string>
      </xsl:attribute>
   </xsl:template>
   <!-- SNB 2017-10-17 creating a new template that I think probably oght to be the template for all rosetta conversions for colwidth... 
		the above template creates flat out WRONG rarget markup when here's a decimal ( colwidth="78.50pt" resulted in 
		  colwidth="50*", and  colwidth="80.00pt" resulted in  colwidth="0*"), and catching an empty column width seems wise in general. 
		  For LPA, we need to catch numbers with no * or units, which none of these templates do. The ones below for NZ111 and AU10 catch 
		  decimal numbers well, but not the case of no units or *. -->
   <xsl:template match="colspec[$streamID=('USLPA')]/@colwidth" priority="3">
      <xsl:attribute name="colwidth">
         <xsl:choose><!-- empty colwidth -->
            <xsl:when test="normalize-space(.)=''"><!-- converts empty colwidth to "*" -->
               <xsl:value-of select="'*'"/>
            </xsl:when>
            <!-- only a number, no decimal, no units, add * at end -->
            <xsl:when test="(not(matches(.,'[a-z\.*]+','i')))">
               <xsl:value-of select="concat(., '*')"/>
            </xsl:when>
            <!-- only a DECIMAL number, no units, strip decimal and following numbers and add * at end -->
            <xsl:when test="(not(matches(.,'[a-z*]+','i')))">
               <xsl:analyze-string select="." regex="([0-9]+)(\.+)([0-9]+)">
                  <xsl:matching-substring><!--Dont need to choose; just use regex-group(1) and throw rest away-->
                     <xsl:value-of select="concat(regex-group(1), '*')"/>
                  </xsl:matching-substring>
                  <xsl:non-matching-substring/>
               </xsl:analyze-string>
            </xsl:when>
            <!-- number with decimal, with units, strip decimal, convert to specified unit, and add * at end -->
            <xsl:when test="(matches(.,'[0-9]+[\.][0-9]*([*]|[a-z]+)','i'))">
               <xsl:analyze-string select="." regex="([0-9\.]+)([*]|[a-zA-Z]+)">
                  <xsl:matching-substring>
                     <xsl:variable name="wholenumber"
                                   select="number(substring-before(regex-group(1),'.'))"/>
                     <xsl:choose>
                        <xsl:when test="lower-case(regex-group(2)) = 'in'">
                           <xsl:variable name="var1">
                              <xsl:value-of select="number($wholenumber) * 96"/>
                           </xsl:variable>
                           <xsl:value-of select="concat($var1, '*')"/>
                        </xsl:when>
                        <xsl:when test="lower-case(regex-group(2)) = 'cm'">
                           <xsl:variable name="var1">
                              <xsl:value-of select="number($wholenumber) * 37.7952755904"/>
                           </xsl:variable>
                           <xsl:value-of select="concat(substring-before($var1, '.'), '*')"/>
                        </xsl:when>
                        <xsl:when test="lower-case(regex-group(2)) = 'mm'">
                           <xsl:variable name="var1">
                              <xsl:value-of select="number($wholenumber) * 3.77952755904"/>
                           </xsl:variable>
                           <xsl:value-of select="concat(substring-before($var1, '.'), '*')"/>
                        </xsl:when>
                        <xsl:when test="lower-case(regex-group(2)) = 'pt'">
                           <xsl:variable name="var1">
                              <xsl:value-of select="number($wholenumber) * 1"/>
                           </xsl:variable>
                           <xsl:value-of select="concat($var1, '*')"/>
                        </xsl:when>
                        <xsl:otherwise>
                           <xsl:value-of select="concat($wholenumber, '*')"/>
                        </xsl:otherwise>
                     </xsl:choose>
                  </xsl:matching-substring>
               </xsl:analyze-string>
            </xsl:when>
            <!-- number without decimal, with units, convert to specified unit, and add * at end -->
            <xsl:when test="(matches(.,'[0-9]+([*]|[a-z]+)','i'))">
               <xsl:analyze-string select="." regex="([0-9]+)([*]|[a-zA-Z]+)">
                  <xsl:matching-substring>
                     <xsl:choose>
                        <xsl:when test="lower-case(regex-group(2)) = 'in'">
                           <xsl:variable name="var1">
                              <xsl:value-of select="number(regex-group(1)) * 96"/>
                           </xsl:variable>
                           <xsl:value-of select="concat($var1, '*')"/>
                        </xsl:when>
                        <xsl:when test="lower-case(regex-group(2)) = 'cm'">
                           <xsl:variable name="var1">
                              <xsl:value-of select="number(regex-group(1)) * 37.7952755904"/>
                           </xsl:variable>
                           <xsl:value-of select="concat(substring-before($var1, '.'), '*')"/>
                        </xsl:when>
                        <xsl:when test="lower-case(regex-group(2))= 'mm'">
                           <xsl:variable name="var1">
                              <xsl:value-of select="number(regex-group(1)) * 3.77952755904"/>
                           </xsl:variable>
                           <xsl:value-of select="concat(substring-before($var1, '.'), '*')"/>
                        </xsl:when>
                        <xsl:when test="lower-case(regex-group(2)) = 'pt'">
                           <xsl:variable name="var1">
                              <xsl:value-of select="number(regex-group(1)) * 1"/>
                           </xsl:variable>
                           <xsl:value-of select="concat($var1, '*')"/>
                        </xsl:when>
                        <xsl:otherwise>
                           <xsl:value-of select="concat(regex-group(1), '*')"/>
                        </xsl:otherwise>
                     </xsl:choose>
                  </xsl:matching-substring>
               </xsl:analyze-string>
            </xsl:when>
            <!-- unsupported format -->
            <xsl:otherwise><!-- output whatever was in colwidth -->
               <xsl:value-of select="."/>
               <!-- generate warning -->
               <xsl:call-template name="outputErrorMessage">
                  <xsl:with-param name="messageText"
                                  as="xs:string"
                                  select="concat('ERROR: unexpected format for @colwidth: ',.) "/>
                  <xsl:with-param name="errorType" as="xs:string" select=" 'ROCKET' "/>
                  <xsl:with-param name="errorCode" as="xs:string*" select=" '405' "/>
                  <xsl:with-param name="context" as="xs:string">
                     <xsl:call-template name="generateXPath"/>
                  </xsl:with-param>
               </xsl:call-template>
            </xsl:otherwise>
         </xsl:choose>
      </xsl:attribute>
   </xsl:template>

   <xsl:template match="colspec[$streamID=('NZ11','AU10')]/@colwidth[.='']" priority="2"><!-- converts empty colwidth to "*" -->
      <xsl:attribute name="colwidth">*</xsl:attribute>
   </xsl:template>

   <xsl:template match="colspec[$streamID=('NZ11','AU10')]/@colwidth[contains(.,'.')]"
                 priority="2"><!-- for use when there is a decimal value in @colwidth.  it truncates the whole number and passes it through -->
      <xsl:attribute name="colwidth"><!--<xsl:value-of select="."/>-->
         <xsl:analyze-string select="." regex="([0-9\.]+)([*]|[a-z]+)">
            <xsl:matching-substring>
               <xsl:variable name="wholenumber"
                             select="number(substring-before(regex-group(1),'.'))"/>
               <xsl:choose>
                  <xsl:when test="regex-group(2) = 'in'">
                     <xsl:variable name="var1">
                        <xsl:value-of select="number($wholenumber) * 96"/>
                     </xsl:variable>
                     <xsl:value-of select="$var1"/>
                     <xsl:value-of select="concat($var1, '*')"/>
                  </xsl:when>
                  <xsl:when test="regex-group(2) = 'cm'">
                     <xsl:variable name="var1">
                        <xsl:value-of select="number($wholenumber) * 37.7952755904"/>
                     </xsl:variable>
                     <xsl:value-of select="concat(substring-before($var1, '.'), '*')"/>
                  </xsl:when>
                  <xsl:when test="regex-group(2) = 'mm'">
                     <xsl:variable name="var1">
                        <xsl:value-of select="number($wholenumber) * 3.77952755904"/>
                     </xsl:variable>
                     <xsl:value-of select="concat(substring-before($var1, '.'), '*')"/>
                  </xsl:when>
                  <xsl:when test="regex-group(2) = 'pt'">
                     <xsl:variable name="var1">
                        <xsl:value-of select="number($wholenumber) * 1"/>
                     </xsl:variable>
                     <xsl:value-of select="concat($var1, '*')"/>
                  </xsl:when>
                  <xsl:otherwise>
                     <xsl:value-of select="concat($wholenumber, '*')"/>
                  </xsl:otherwise>
               </xsl:choose>
            </xsl:matching-substring>
         </xsl:analyze-string>
      </xsl:attribute>
   </xsl:template>

   <xsl:template match="colspec/@searchtype"/>
   <!--	  .... In the absence of specific instructions elsewhere
			  in the CI, <sourcexml>@id</sourcexml> is dropped.</li>  -->   <!--  ***NOTE  -  NEED TO ADD TO THE $streamID LIST ALL STREAMS THAT HAVE SPECIFIC INSTRUCTIONS ON colspec/@id HANDLING!!!  ***  -->
   <xsl:template match="colspec/@id[not($streamID = ('XX', 'YY', 'ZZ'))]"/>

   <xsl:template match="*[self::table or self::tgroup or self::colspec or self::thead or self::tbody or self::row or self::entry]/@morerows[. = '0']"/>
   <!-- I think we want to preserve morerows if they're not 0, otherwise we lose formatting -->
   <xsl:template match="*[self::table or self::tgroup or self::colspec or self::thead or self::tbody or self::row or self::entry]/@morerows[. != '0']">
      <xsl:copy-of select="."/>
   </xsl:template>
   <!--  <li>If ALL occurrences of @colsep in one table have a value of
						zero, remove them all from that table.
				</li>
				<li>If ALL occurrences of @rowsep in one table have a value of zero,
					remove them all from that table. </li>  -->
   <xsl:template match="*[self::table or self::tgroup or self::colspec or self::thead or self::tbody or self::row or self::entry]/@colsep[. = '0'][not(ancestor-or-self::table//@colsep[. != '0'])]"/>

   <xsl:template match="*[self::table or self::tgroup or self::colspec or self::thead or self::tbody or self::row or self::entry]/@rowsep[. = '0'][not(ancestor-or-self::table//@rowsep[. != '0'])]"/>

   <xsl:template match="*[self::table or self::tgroup or self::colspec or self::thead or self::tbody or self::row or self::entry]/@colsep[ancestor-or-self::table//@colsep[. != '0']]">
      <xsl:copy-of select="."/>
   </xsl:template>

   <xsl:template match="*[self::table or self::tgroup or self::colspec or self::thead or self::tbody or self::row or self::entry]/@rowsep[ancestor-or-self::table//@rowsep[. != '0']]">
      <xsl:copy-of select="."/>
   </xsl:template>

   <xsl:template match="thead">
      <thead>
         <xsl:apply-templates select="@* | node()"/>
      </thead>
   </xsl:template>

   <xsl:template match="row">
      <row>
         <xsl:apply-templates select="@* | node()"/>
      </row>
   </xsl:template>

   <xsl:template match="entry"><!-- Awantika: For AU20 entry becomes  primlawhist:histitemdiv/textitem for different @id-->
      <xsl:variable name="docinfoidtext" select="/*/docinfo/docinfo:doc-id/text()"/>
      <xsl:choose>
         <xsl:when test="contains(lower-case($docinfoidtext),'history') and $streamID='AU20'"><!--<primlawhist:histitem>-->
            <xsl:if test="@id='HI5'">
               <primlawhist:histitemdiv>
                  <xsl:attribute name="divtype">heading</xsl:attribute>
                  <xsl:attribute name="status">assent</xsl:attribute>
                  <textitem>
                     <xsl:apply-templates/>
                  </textitem>
               </primlawhist:histitemdiv>
            </xsl:if>
            <xsl:if test="@id='HI7'">
               <primlawhist:histitemdiv>
                  <xsl:attribute name="divtype">text</xsl:attribute>
                  <xsl:attribute name="status">assent</xsl:attribute>
                  <textitem>
                     <date>
                        <xsl:apply-templates/>
                     </date>
                  </textitem>
               </primlawhist:histitemdiv>
            </xsl:if>
            <xsl:if test="@id='HI6'">
               <primlawhist:histitemdiv><!-- Awantika:2017-11-02: Updated for entry/p-limited to create only one textitem -->
                  <xsl:choose>
                     <xsl:when test="child::p-limited">
                        <xsl:apply-templates/>
                     </xsl:when>
                     <xsl:otherwise>
                        <textitem>
                           <xsl:apply-templates/>
                        </textitem>
                     </xsl:otherwise>
                  </xsl:choose>
               </primlawhist:histitemdiv>
            </xsl:if>
            <xsl:if test="normalize-space(.)='Date of assent'">
               <primlawhist:histitemdiv>
                  <textitem>
                     <xsl:apply-templates/>
                  </textitem>
               </primlawhist:histitemdiv>
            </xsl:if>
            <!--</primlawhist:histitem>-->
         </xsl:when>
         <xsl:when test="contains(lower-case($docinfoidtext),'cases') and $streamID='AU20'">
            <xsl:apply-templates/>
         </xsl:when>
         <xsl:otherwise>
            <xsl:choose>
               <xsl:when test="$streamID='AU20' and contains(lower-case($docinfoidtext),'overview')">
                  <xsl:apply-templates/>
               </xsl:when>
               <xsl:otherwise>
                  <entry><!-- NOTE: @colsep and @rowsep should be handled above -->
                     <xsl:copy-of select="@align | @char | @charoff | @colname | @nameend | @namest | @valign"/>
                     <xsl:apply-templates select="@* except (@align, @char, @charoff, @colname, @nameend, @namest, @valign)"/>
                     <xsl:apply-templates/>
                  </entry>
               </xsl:otherwise>
            </xsl:choose>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>

   <xsl:template match="tbody">
      <tbody>
         <xsl:apply-templates select="@* | node()"/>
      </tbody>
   </xsl:template>

   <xsl:template match="tbody/@valign">
      <xsl:copy-of select="."/>
   </xsl:template>

   <xsl:template match="row/@valign">
      <xsl:copy-of select="."/>
   </xsl:template>
   <!-- Suppressed the highlight 	-->
   <xsl:template match="entry/@highlight"/>
   <!-- JD: 2017-06-13: added to "entry" above -->   <!--	<xsl:template match="entry/@valign">
		<xsl:copy-of select="."/>
	</xsl:template>
	
	<xsl:template match="entry/@align">
		<xsl:copy-of select="."/>
	</xsl:template>
-->   <!--JL Got an error due to not dealing with thead/@valign -->
   <xsl:template match="thead/@valign">
      <xsl:copy-of select="."/>
   </xsl:template>

   <xsl:template match="table/@frame">
      <xsl:copy-of select="."/>
   </xsl:template>

   <xsl:template match="table/@pgwide"/>
   <!--<topicref href="../common/common_rosetta_glp.note.dita"/>-->   <!-- <topicref href="../../../common_newest/Rosetta_glp.note-LxAdv-note.dita"/> -->   <xd:doc>
      <xd:desc>
         <xd:p>
            <xd:i>glp:note</xd:i> becomes <xd:b>note</xd:b> and attribute <xd:i>@notetype</xd:i> becomes <xd:b>notetype</xd:b>. The children of <xd:i>glp:note</xd:i> are handled as
                follows: <xd:ul>
               <xd:li>
                  <xd:i>glp:note/heading</xd:i> becomes <xd:b>note/heading</xd:b>.</xd:li>
               <xd:li>
                  <xd:i>glp:note/refpt</xd:i> becomes <xd:b>note/ref:anchor</xd:b>.</xd:li>
               <xd:li>
                  <xd:p>Other children of <xd:i>glp:note</xd:i> should map to children of <xd:b>note/bodytext</xd:b>.</xd:p>
                  <xd:p>Ex.</xd:p>
                  <xd:ul>
                     <xd:li>
                        <xd:i>glp:note/p</xd:i> becomes <xd:b>note/bodytext/p</xd:b>.</xd:li>
                     <xd:li>
                        <xd:i>glp:note/pgrp</xd:i> becomes <xd:b>note/bodytext/pgrp</xd:b>.</xd:li>
                     <xd:li>
                        <xd:i>glp:note/table</xd:i> becomes <xd:b>note/bodytext/table</xd:b>.</xd:li>
                     <xd:li>
                        <xd:i>glp:note/h</xd:i> becomes <xd:b>note/bodytext/h</xd:b>.</xd:li>
                     <xd:li>
                        <xd:i>glp:note/blockquote</xd:i> becomes <xd:b>note/bodytext/blockquote</xd:b>.</xd:li>
                     <xd:li>
                        <xd:i>glp:note/page</xd:i> becomes <xd:b>note/bodytext/ref:page</xd:b>.</xd:li>
                     <xd:li/>
                  </xd:ul>
               </xd:li>
               <xd:li>
                  <xd:i/>
               </xd:li>
            </xd:ul>
         </xd:p>
         <xd:p>
            <xd:b>Source XML</xd:b>
         </xd:p>
         <xd:pre>

&lt;glp:note&gt;
	&lt;refpt id="257_ALR_1_1" type="ext"/&gt;
&lt;/glp:note&gt;

            </xd:pre>
         <xd:p>
            <xd:b>Target XML</xd:b>
         </xd:p>
         <xd:pre>

&lt;note&gt;
	&lt;ref:anchor id="au_257_ALR_1_1" anchortype="global"/&gt;
&lt;/note&gt;

	</xd:pre>
         <xd:p>
            <xd:b>Source XML</xd:b>
         </xd:p>
         <xd:pre>

&lt;glp:note notetype="warning"&gt;
&lt;p&gt;&lt;text&gt;Editor's Note: This document contains the full text of sections 1 to 70 and the Schedule. The Appendices to the Act are found in a separate document. Please conduct a cite search for "S.B.C. 1999, c. 2" to obtain all relevant documents.Acts Affected: Adoption Act, R.S.B.C. 1996, c. 5; Child, Family and Community Service Act, R.S.B.C. 1996, c. 46; Environmental Assessment Act, R.S.B.C. 1996, c. 119; Estate Administration Act, R.S.B.C. 1996, c. 122;...&lt;/text&gt;&lt;/p&gt;
&lt;/glp:note&gt;

            </xd:pre>
         <xd:p>
            <xd:b>Target XML</xd:b>
         </xd:p>
         <xd:pre>

&lt;note notetype="warning"&gt;
&lt;bodytext&gt;
&lt;p&gt;&lt;text&gt;Editor's Note: This document contains the full text of sections 1 to 70 and the Schedule. The Appendices to the Act are found in a separate document. Please conduct a cite search for "S.B.C. 1999, c. 2" to obtain all relevant documents.Acts Affected: Adoption Act, R.S.B.C. 1996, c. 5; Child, Family and Community Service Act, R.S.B.C. 1996, c. 46; Environmental Assessment Act, R.S.B.C. 1996, c. 119; Estate Administration Act, R.S.B.C. 1996, c. 122;...&lt;/text&gt;&lt;/p&gt;
&lt;/bodytext&gt;
&lt;/note&gt;

	</xd:pre>
         <!--Changes2012-11-30: Added instruction for attribute handling of glp:note.-->
         <!-- SEP 2015-8-6 added -->
         <!--  <xsltinclusion>
      <xsl:stylesheet version="2.0">
        <xsl:template match="glp:note">
			<xsl:element name="note">
				<xsl:apply-templates select="@*"/>
				<xsl:apply-templates select="heading"/>
				<xsl:element name="bodytext">
					<xsl:apply-templates select="*[not(heading)]"/>
				</xsl:element>
			</xsl:element>
			<xsl:apply-templates/>
        </xsl:template>
      </xsl:stylesheet>
    </xsltinclusion>	-->
      </xd:desc>
   </xd:doc>
   <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_glp.note-LxAdv-note.dita  -->
   <!-- JD: 2017-08-08: Note that this also processes 'leg:histnote' via template name, called from this module; this was done to match DT output, which groups both under a <notes> wrapper -->
   <xsl:template match="glp:note" name="glp-note-generic">
      <note>
         <xsl:if test="self::leg:histnote">
            <xsl:attribute name="notetype" select="'historical'"/>
         </xsl:if>
         <xsl:if test="$streamID='AU18' and child::heading/desig/designum/refpt">
            <xsl:attribute name="notetype" select="'jurisdiction-variant'"/>
         </xsl:if>
         <xsl:choose>
            <xsl:when test="$streamID='AU18' and ./@id = descendant::refpt/@id"/>
            <xsl:otherwise>
               <xsl:apply-templates select="@id"/>
            </xsl:otherwise>
         </xsl:choose>
         <xsl:apply-templates select="@* except @id"/>
         <!-- from 
                DITA/ConversionInstructions/Rosetta/common_newest/Rosetta_leg.comntry-level_LEVELTYPE_GROUP-LxAdv-annot.annotations-annot.annotation-grp.dita
            and other annotation CIs-->
         <xsl:if test="not(@notetype) and ancestor::level[ancestor::leg:comntry] and not(descendant::inlineobject | following-sibling::inlineobject)">
            <xsl:attribute name="notetype" select="'xref'"/>
         </xsl:if>
         <xsl:apply-templates select="refpt | heading/descendant::refpt"/>
         <xsl:apply-templates select="heading"/>
         <!-- SS: template added for handling heading and h under caseinfo for NZ03 cases-->
         <xsl:if test="preceding-sibling::heading[parent::caseinfo][$streamID='NZ03']">
            <xsl:apply-templates select="preceding-sibling::heading[parent::caseinfo]"/>
            <xsl:apply-templates select="preceding-sibling::h[parent::caseinfo]"/>
         </xsl:if>
         <xsl:if test="child::*[not(self::heading)][not(self::refpt)]">
            <bodytext><!-- Awantika: if remotelink is the child of glp:note then p/text is required -->
               <xsl:choose>
                  <xsl:when test="child::remotelink or not(child::p/child::table or child::p/child::text) and $streamID=('HK03, NZ03')">
                     <p>
                        <text>
                           <xsl:apply-templates select="child::* except (heading | refpt)"/>
                        </text>
                     </p>
                  </xsl:when>
                  <!--Satbir: Added condition for handling "glp:note/p/table"-->
                  <xsl:when test="child::p/child::table or child::p/child::text and $streamID='NZ03'">
                     <xsl:apply-templates select="child::* except (heading | refpt)"/>
                  </xsl:when>
                  <xsl:otherwise>
                     <xsl:apply-templates select="child::* except (heading | refpt)"/>
                  </xsl:otherwise>
               </xsl:choose>
            </bodytext>
         </xsl:if>
      </note>
   </xsl:template>

   <xsl:template match="glp:note/@notetype">
      <xsl:copy-of select="."/>
   </xsl:template>
   <!-- Vikas Rohilla : Updated for the streamID CA01 -->
   <xsl:template match="glp:note[parent::lilabel][$streamID=('CA01','CA04')]">
      <xsl:value-of select="."/>
   </xsl:template>
   <!-- Vikas Rohilla : Updated for the streamID CA14    -->
   <xsl:template match="glp:note[parent::dig:info[parent::dig:collection]][$streamID='CA14']">
      <xsl:text disable-output-escaping="yes">&lt;!--</xsl:text>
      <xsl:copy-of select="." copy-namespaces="no"/>
      <xsl:text disable-output-escaping="yes">--&gt;</xsl:text>
   </xsl:template>

   <xsl:template match="glp:note[parent::case:headnote][$streamID='NZ04']">
      <caseinfo:caseinfo>
         <note>
            <bodytext>
               <xsl:apply-templates/>
            </bodytext>
         </note>
      </caseinfo:caseinfo>
   </xsl:template>
   <!-- paul: this is a template that merges sibling glp:notes into <notes> wrapper.  add your stream id if you want to use it rather than the generic above 
    		JD: Note that in order to merge this must NOT be called from a for-each; see below template
    		JD: 2017-08-10: added 'leg:histnote' as well, as (at least in NZ06) these are grouped under the same <notes> wrapper.
    -->
   <xsl:template match="glp:note[$streamID=('AU10','NZ06','NZ13','NZ18')] | leg:histnote[$streamID=('AU10','NZ06','NZ13','NZ18')]"
                 name="glp-note-mergesiblings"
                 priority="2">
      <xsl:choose>
         <xsl:when test=".=''"/>
         <xsl:when test="parent::level or parent::heading/parent::level"><!-- these get mapped to prelim, which can't contain notes plural wrapper -->
            <xsl:call-template name="glp-note-generic"/>
         </xsl:when>
         <!-- when this is the first note and there are following sibling notes to be included in it, create wrapper  -->
         <xsl:when test="not(preceding-sibling::*[1][self::glp:note or self::leg:histnote]) and (following-sibling::glp:note or following-sibling::leg:histnote)">
            <notes>
               <xsl:call-template name="glp-note-generic"/>
               <!-- JD: replacing this for-each to (a) include leg:histnote and (b) limit to immediate siblings -->
               <!--<xsl:for-each select="following-sibling::*[name()='glp:note']/preceding-sibling::glp:note">-->
               <xsl:for-each select="following-sibling::glp:note[preceding-sibling::*[1][name()=('glp:note','leg:histnote')]]                   | following-sibling::leg:histnote[preceding-sibling::*[1][name()=('glp:note','leg:histnote')]]">
                  <xsl:call-template name="glp-note-generic"/>
               </xsl:for-each>
            </notes>
         </xsl:when>
         <!-- when the immediate preceding sibling is a glp:note it will have been grouped above, do nothing -->
         <xsl:when test="preceding-sibling::*[1][self::glp:note or self::leg:histnote]"/>
         <!-- otherwise, process in generic fashion -->
         <xsl:otherwise>
            <xsl:call-template name="glp-note-generic"/>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <!-- JD: 2017-08-08: new template to group multiple contiguous <glp:note> and <leg:histnote> under <notes> 
		   when called from a for-each-group (e.g., under <leg:bodytext> created from template priority="30" in /modules/nonamespace/Rosetta_endnote-LxAdv-endnote.xsl)
	-->
   <xsl:template match="glp:note[$streamID=('NZ06','NZ13') and parent::leg:bodytext   and not(preceding-sibling::*[1][name()=('glp:note','leg:histnote')])]    | leg:histnote[$streamID=('NZ06','NZ13') and parent::leg:bodytext   and not(preceding-sibling::*[1][name()=('glp:note','leg:histnote')])]    "
                 name="glp-note-mergesiblings-from-loop"
                 priority="3">
      <xsl:choose>
         <xsl:when test=".=''"/>
         <!-- if no content do nothing -->
         <xsl:when test="parent::level or parent::heading/parent::level"><!-- these get mapped to prelim, which can't contain notes plural wrapper -->
            <xsl:call-template name="glp-note-generic"/>
         </xsl:when>
         <!-- when this is the first note and there are following sibling notes to be included in it, create wrapper  -->
         <xsl:when test="not(preceding-sibling::*[1][self::glp:note or self::leg:histnote])     and (following-sibling::*[1][name()=('glp:note','leg:histnote')])">
            <notes><!-- process the first note -->
               <xsl:call-template name="glp-note-generic"/>
               <!-- 
					group immediate sibling notes (logic modified from https://gist.github.com/empo/1105204 )
					-->
               <xsl:variable name="children"
                             select="following-sibling::glp:note | following-sibling::leg:histnote"/>
               <xsl:for-each select="following-sibling::*">
                  <xsl:variable name="index" select="position()"/>
                  <xsl:if test="         generate-id( . ) = generate-id( $children[$index] )">
                     <xsl:call-template name="glp-note-generic"/>
                  </xsl:if>
               </xsl:for-each>
            </notes>
         </xsl:when>
         <!-- when the immediate preceding sibling is a glp:note it will have been grouped above, do nothing -->
         <xsl:when test="preceding-sibling::*[1][self::*[name()=('glp:note','leg:histnote')]]"/>
         <!-- otherwise, process in generic fashion -->
         <xsl:otherwise>
            <xsl:call-template name="glp-note-generic"/>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>

   <xsl:template match="glp:note[$streamID=('AU14')]">
      <xsl:choose>
         <xsl:when test="self::glp:note[following-sibling::level | preceding-sibling::level]">
            <bodytext>
               <xsl:call-template name="AU14-glp-note"/>
            </bodytext>
         </xsl:when>
         <xsl:otherwise>
            <xsl:call-template name="AU14-glp-note"/>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>

   <xsl:template name="AU14-glp-note">
      <note>
         <xsl:apply-templates select="@*"/>
         <xsl:apply-templates select="refpt"/>
         <xsl:apply-templates select="heading"/>
         <xsl:apply-templates select="contrib"/>
         <xsl:if test="child::*[not(self::heading)][not(self::refpt)][not(self::contrib)]">
            <bodytext>
               <xsl:apply-templates select="child::* except (heading | refpt | contrib)"/>
            </bodytext>
         </xsl:if>
      </note>
   </xsl:template>
   <!-- Awantika:2017-10-31- added template for AU01.
		If glp:note is the child of text then glp:note becomes inlinenote with attribute @notetype="editor-note" -->
   <xsl:template match="glp:note[parent::text][$streamID='AU01']">
      <inlinenote>
         <xsl:attribute name="notetype" select="'editor-note'"/>
         <xsl:value-of select="."/>
      </inlinenote>
   </xsl:template>
   <xd:doc>
      <xd:desc>
         <xd:p>
            <xd:i>link</xd:i> becomes <xd:b>ref:lnlink[@service="ATTACHMENT"]</xd:b> and children can be converted as follows: 
                <xd:ul>
               <xd:li>The attribute <xd:i>link/@status</xd:i> is always suppressed, it is never output to the target document.</xd:li>
               <xd:li>
                  <xd:i>link</xd:i> content becomes <xd:b>ref:marker</xd:b>. </xd:li>
               <xd:li>Create <xd:b>ref:locator</xd:b> and describe as: 
                        <xd:ul>
                     <xd:li>Create <xd:b>ref:locator-key</xd:b> and describe as: 
                                <xd:ul>
                           <xd:li>Create <xd:b>ref:key-name</xd:b> with <xd:b>@name="attachment-key"</xd:b>. 
                                        This line is hard coded.
                                    </xd:li>
                           <xd:li>Create <xd:b>ref:key-value</xd:b> with
                                        <xd:b>@value</xd:b>, as follows: 
                                        <xd:ul>
                                 <xd:li>If <xd:i>link[@smi]</xd:i> is present,
                                                copy <xd:i>link[@filename]</xd:i> to
                                                  <xd:b>@value</xd:b>
                                 </xd:li>
                                 <xd:li>If <xd:i>link[@smi]</xd:i> is not present,
                                                then <xd:b>@value="X-Y-Z"</xd:b>, where X
                                                is LNI, Y is SMI, and Z is filename. LNI and SMI
                                                (retreived from CSSM) values are added by
                                                <xd:b>"Workflow Generic Image Handlers</xd:b>. The last
                                                component "Z" is copied from
                                                <xd:i>link[@filename]</xd:i>.</xd:li>
                                 <xd:li>If <xd:i>link[@smi]</xd:i> is not present,
                                                then conversion program should pass
                                                <xd:i>link[@filename]</xd:i> value to
                                                <xd:b>“Workflow Generic Image Handler”</xd:b> as is and
                                                “Workflow Generic Image Handler” will do conversion
                                                of filename value as noted above. <xd:b>Conversion of
                                                    filename replaces underscore, blank, and period
                                                    with hyphen.</xd:b>
                                 </xd:li>
                              </xd:ul>
                           </xd:li>
                        </xd:ul>
                     </xd:li>
                     <xd:li>Create <xd:b>ref:locator-params</xd:b> and describe as: 
                                <xd:ul>
                           <xd:li>
                              <xd:b>ref:locator-params</xd:b> element contains locator parameters. It provides a parameter
                                        (identified as a name/value pair) passing mechanism for link services. Each parameter is expressed as a
                                        <xd:b>@name</xd:b> and <xd:b>@value</xd:b> pair in <xd:b>proc:param</xd:b>
                                        element. It is used to identify the attachment type and component sequence.
                                    </xd:li>
                           <xd:li>Create <xd:b>proc:param</xd:b> with <xd:b>@name</xd:b> and <xd:b>@value</xd:b>.
                                        <xd:b>@name</xd:b> and <xd:b>@value</xd:b> are required attributes in
                                        <xd:b>proc:param</xd:b>.
                                    </xd:li>
                           <xd:li>Three <xd:b>proc:param[@name]</xd:b> and <xd:b>proc:param[@value]</xd:b> pairs are described
                                        below: 
                                        <xd:ul>
                                 <xd:li>
                                    <xd:b>proc:param[@name="componentseq"]</xd:b> with the attribute
                                                <xd:b>@value="1"</xd:b>. This line is hard coded.
                                            </xd:li>
                                 <xd:li>
                                    <xd:b>proc:param[@name="attachment-type"]</xd:b> with the
                                                attribute <xd:b>@value</xd:b>. The <xd:b>@value</xd:b> value is from
                                                <xd:b>link[@type]</xd:b>. Allowable values: “image”; “PDF”; “spreadsheet”; “audio”; “HTML”; “video”; “hotdoc”; “wordprocess”.
                                            </xd:li>
                                 <xd:li>
                                    <xd:b>proc:param[@name="attachment-smi"]</xd:b> with the
                                                attribute <xd:b>@value</xd:b>. The <xd:b>@value</xd:b>
                                                value is from <xd:i>link[@smi]</xd:i>. If
                                                <xd:i>link[@smi]</xd:i> is not present, obtain SMI from CSSM.
                                                This <xd:b>@value</xd:b> assignment is done by conversion program.</xd:li>
                              </xd:ul>
                           </xd:li>
                        </xd:ul>
                     </xd:li>
                  </xd:ul>
               </xd:li>
            </xd:ul>
         </xd:p>
         <xd:p>
            <xd:b>Source XML. Source @smi present</xd:b>
         </xd:p>
         <xd:pre>

&lt;link type="pdf" smi="98765" filename="xmpl-c1.pdf" status="valid"&gt;Download in PDF&lt;/link&gt;

	</xd:pre>
         <xd:p>
            <xd:b>Target XML. Source @smi present</xd:b>
         </xd:p>
         <xd:pre>

&lt;ref:lnlink service="ATTACHMENT"&gt;
    &lt;ref:marker role="label"&gt;Download in PDF&lt;/ref:marker&gt; 
    &lt;ref:locator&gt;
        &lt;ref:locator-key&gt;
            &lt;ref:key-name name="attachment-key"/&gt;
            &lt;ref:key-value value="xmpl-c1"/&gt;
        &lt;/ref:locator-key&gt;
        &lt;ref:locator-params&gt;
            &lt;proc:param name="componentseq" value="1"/&gt;
            &lt;proc:param name="attachment-type" value="PDF"/&gt;
            &lt;proc:param name="attachment-smi" value="98765"/&gt;
        &lt;/ref:locator-params&gt;
    &lt;/ref:locator&gt;
&lt;/ref:lnlink&gt;

	</xd:pre>
         <xd:p>
            <xd:b>Source XML. Source @smi not present</xd:b>
         </xd:p>
         <xd:pre>

&lt;link type="pdf" filename="pbap-c1.pdf" status="valid"&gt;Download in PDF&lt;/link&gt;

	</xd:pre>
         <xd:p>
            <xd:b>Target XML. Source @smi not present</xd:b>
         </xd:p>
         <xd:pre>

&lt;ref:lnlink service="ATTACHMENT"&gt;
    &lt;ref:marker role="label"&gt;Download in PDF&lt;/ref:marker&gt; 
    &lt;ref:locator&gt;
        &lt;ref:locator-key&gt;
            &lt;ref:key-name name="attachment-key"/&gt;
            &lt;ref:key-value value="X-Y-pbap-c1"/&gt; 
            &lt;!-- X and Y are LNI and SMI values obtained from CSSM --&gt;
        &lt;/ref:locator-key&gt;
        &lt;ref:locator-params&gt;
            &lt;proc:param name="componentseq" value="1"/&gt;
            &lt;proc:param name="attachment-type" value="PDF"/&gt;
            &lt;proc:param name="attachment-smi" value=""/&gt; 
            &lt;!-- @value populated with SMI obtained from CSSM --&gt;
            &lt;!-- This @value assignment is done by conversion program --&gt;
        &lt;/ref:locator-params&gt;
    &lt;/ref:locator&gt;
&lt;/ref:lnlink&gt;

	</xd:pre>
         <!--Changes2015-09-08: Minor XPATH correction in title to change 
                ref:lnlink/@service="ATTACHMENT" to be 
                ref:lnlink[@service="ATTACHMENT"].2015-05-22: Changed the instructions to indicate link/@status is always dropped and removed ref:lnlink/@status from target example. This is a very low-priority change and has been added for technical correctness, particularly with respect to new CIs. Existing scripts do not have to implement this change since ref:lnlink/@status is ignored by LexisAdvance if it is present.2013-09-24: Not a rule change. Modified examples to illustrate when @status suppressed and when retained.2013-08-21: Added instruction for when to suppress @status.2013-05-24: Updated instruction for handling of link when smi is present and some of the verbiage is changed.2013-05-02: Some of the verbiage is changed and updated target example to if the SMI is present then a ref:lnlink/@status attribute is set to “valid”.2013-05-01: Updated instructions and target example per latest Apollo markup.2013-02-26: Updated target example per project requirement.2012-10-26: Changed to reflect recent requirements for attachment-type links.-->
         <!-- Added from /Rosetta-to-LA/modules/nonamespace/Rosetta_ci.cite-LxAdv-lnci.cite.xsl -->
         <xd:p>
            <xd:b>Exception: When <xd:i>link</xd:i> is used as intra-document linking within
                <xd:i>ci:content</xd:i>
            </xd:b>.</xd:p>
         <xd:p>If the <xd:i>ci:content</xd:i> contains a <xd:i>link</xd:i> child,
                the <xd:i>link</xd:i> wrapper markup (not its content) shall be removed (omit
                tag and retain content) and the <xd:i>link/@refpt</xd:i> value shall be moved
                to <xd:b>lnci:cite/@citeref</xd:b>.</xd:p>
      </xd:desc>
   </xd:doc>
   <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_link-LxAdv-ref.lnlink.dita  -->
   <!--   
        
        *****PLEASE READ*****
        
Image handling background note 2017-11-30:
        
Please use $streamID in Rosetta_link-LxAdv-ref.lnlink.xsl due to notation below.  

It was originally intended that Apollo jurisdictions would use these (when first introduced in the DITA):

\svn\dataArch\XSLT\ContentArch\Rosetta-to-LA\modules\nonamespace\Rosetta_lnlink_service_ATTACHMENT-LxAdv-ref.lnlink.xsl
\svn\dataArch\XSLT\ContentArch\Rosetta-to-LA\modules\nonamespace\Rosetta_link-LxAdv-ref.lnlink.xsl
\svn\dataArch\XSLT\ContentArch\Rosetta-to-LA\modules\nonamespace\Rosetta_inlineobject-LxAdv-ref.inlineobject.xsl

And blobstore jurisdictions would use these (notice BLOBSTORE in the file name):

\svn\dataArch\XSLT\ContentArch\Rosetta-to-LA\modules\nonamespace\Rosetta_lnlink_service_ATTACHMENT-LxAdv-ref.lnlink_BLOBSTORE.xsl
\svn\dataArch\XSLT\ContentArch\Rosetta-to-LA\modules\nonamespace\Rosetta_link-LxAdv-ref.lnlink_BLOBSTORE.xsl
\svn\dataArch\XSLT\ContentArch\Rosetta-to-LA\modules\nonamespace\Rosetta_inlineobject-LxAdv-ref.inlineobject_BLOBSTORE.xsl

They were originally meant to be mutually exclusive.

Ditamap includes (and subsequently xsl drivers) may have included both blobstore and Apollo handling during the transition from one to the other even though only one image handling 
is done in an LBU.  Image handling is LBU wide and not individual stream specific.

Very importantly, there is a named template (@name="generic-link") in Rosetta_link-LxAdv-ref.lnlink.xsl which is called by both "Rosetta_p-LxAdv-p.xsl" and "Rosetta_bodytext-link-LxAdv-seclaw.bodytext-p-text-ref.lnlink.xsl".   Both of these common modules are not LBU specific.  . 
This effectively, although unintentionally, crossed the original exclusivity described above.

Current fix is to use $streamID indicating HK and UK which are currently the only blobstore jurisdictions.  Ultimately, goal is to re-establish these image handling files are mutually exclusive.
-->
   <xsl:template match="link[not(parent::docinfo:assoc-links or parent::docinfo:assoc-links-grp or parent::text[parent::docinfo:assoc-links or parent::docinfo:assoc-links-grp])]"
                 name="generic-link">
      <xsl:choose><!-- Awantika:2017-11-07: updated for NZ12 for webstar #7039775 and #7076843 -->
         <xsl:when test="$streamID='NZ12' and parent::pgrp or parent::li">
            <p>
               <text>
                  <ref:lnlink service="ATTACHMENT">
                     <ref:marker role="label">
                        <xsl:apply-templates/>
                     </ref:marker>
                     <ref:locator>
                        <ref:locator-key>
                           <ref:key-name name="attachment-key"/>
                           <ref:key-value>
                              <xsl:attribute name="value">
                                 <xsl:choose><!-- JL: 20170526: Per Roopa and Selva, we should output the filename extension for image links to work -->
                                    <xsl:when test="@smi">
                                       <xsl:value-of select="@filename"/>
                                    </xsl:when>
                                    <xsl:otherwise>
                                       <xsl:value-of select="@filename"/>
                                    </xsl:otherwise>
                                 </xsl:choose>
                              </xsl:attribute>
                           </ref:key-value>
                        </ref:locator-key>
                        <ref:locator-params>
                           <proc:param name="componentseq" value="1"/>
                           <proc:param>
                              <xsl:attribute name="name">attachment-type</xsl:attribute>
                              <xsl:attribute name="value">
                                 <xsl:apply-templates select="@type"/>
                              </xsl:attribute>
                           </proc:param>
                           <proc:param>
                              <xsl:attribute name="name">attachment-smi</xsl:attribute>
                              <xsl:attribute name="value">
                                 <xsl:choose>
                                    <xsl:when test="@smi">
                                       <xsl:value-of select="@smi"/>
                                    </xsl:when>
                                    <xsl:otherwise>
                                       <xsl:value-of select="$smi"/>
                                    </xsl:otherwise>
                                 </xsl:choose>
                              </xsl:attribute>
                           </proc:param>
                        </ref:locator-params>
                     </ref:locator>
                  </ref:lnlink>
               </text>
            </p>
         </xsl:when>
         <xsl:otherwise>
            <ref:lnlink service="ATTACHMENT">
               <ref:marker role="label">
                  <xsl:apply-templates/>
               </ref:marker>
               <ref:locator>
                  <ref:locator-key>
                     <ref:key-name name="attachment-key"/>
                     <ref:key-value>
                        <xsl:attribute name="value">
                           <xsl:choose><!-- JL: 20170526: Per Roopa and Selva, we should output the filename extension for image links to work -->
                              <xsl:when test="@smi">
                                 <xsl:value-of select="@filename"/>
                              </xsl:when>
                              <xsl:otherwise>
                                 <xsl:value-of select="@filename"/>
                              </xsl:otherwise>
                           </xsl:choose>
                        </xsl:attribute>
                     </ref:key-value>
                  </ref:locator-key>
                  <ref:locator-params><!--SS - 2017-11-26: Added the below condition for added blobstore when link comes under 'paragraph' p.--><!-- JL: 2017-11-30: this module is supposed to be for Apollo but has been included in some blobstore LBUs (HK, UK). 
                                Using streamID to make sure Blobstore information goes to Blobstore LBUs. -->
                     <xsl:choose>
                        <xsl:when test="contains(./@type, 'wordprocess') and (starts-with($streamID, 'HK') or starts-with($streamID , 'UK'))">
                           <xsl:choose>
                              <xsl:when test="contains(./@type, 'wordprocess')">
                                 <proc:param name="attachment-type" value="wordprocess"/>
                              </xsl:when>
                              <xsl:otherwise>
                                 <proc:param name="attachment-type" value="IMG"/>
                              </xsl:otherwise>
                           </xsl:choose>
                           <proc:param name="external-or-local" value="external"/>
                           <proc:param name="attachment-server" value="BlobStore"/>
                           <proc:param name="attachment-pguid"
                                       value="urn:contentItem:0000-0000-0000-0000-00000-00"/>
                           <proc:param name="componentseq" value="1"/>
                        </xsl:when>
                        <xsl:otherwise><!--SS: end here-->
                           <proc:param name="componentseq" value="1"/>
                           <proc:param>
                              <xsl:attribute name="name">attachment-type</xsl:attribute>
                              <xsl:attribute name="value">
                                 <xsl:apply-templates select="@type"/>
                              </xsl:attribute>
                           </proc:param>
                           <proc:param>
                              <xsl:attribute name="name">attachment-smi</xsl:attribute>
                              <xsl:attribute name="value">
                                 <xsl:choose>
                                    <xsl:when test="@smi">
                                       <xsl:value-of select="@smi"/>
                                    </xsl:when>
                                    <xsl:otherwise>
                                       <xsl:value-of select="$smi"/>
                                    </xsl:otherwise>
                                 </xsl:choose>
                              </xsl:attribute>
                           </proc:param>
                        </xsl:otherwise>
                     </xsl:choose>
                  </ref:locator-params>
               </ref:locator>
            </ref:lnlink>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>

   <xsl:template match="link/@status"/>

   <xsl:template match="link/@smi"/>

   <xsl:template match="link/@filename"/>

   <xsl:template match="link/@type">
      <xsl:choose>
         <xsl:when test=".=('para','page', 'ed-pnum','refpt','logo')">
            <xsl:message>attachment-type is invalid, cannot be determined.</xsl:message>
         </xsl:when>
         <xsl:when test=".=('pdf' , 'pdf-fillable')">PDF</xsl:when>
         <xsl:when test=".='hotdoc-nonfillable'">hotdoc</xsl:when>
         <xsl:otherwise>
            <xsl:value-of select="."/>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <!-- MDS - 2017-03-14 - Passes through children of link if parent is ci:content
        This is taken from /Rosetta-to-LA/modules/nonamespace/Rosetta_ci.cite-LxAdv-lnci.cite.xsl documentation.  Also copied to documentation in this module.-->
   <xsl:template match="link[parent::ci:content]">
      <xsl:apply-templates/>
   </xsl:template>
   <!-- Vikas Rohilla : Template to match the link[@refpt]-->   <!-- JL removing status att because it's not valid in output schema and some modules copy it -->
   <xsl:template match="link[@refpt][not($streamID='AU21' or 'USLPA')]" priority="25">
      <ref:lnlink>
         <ref:marker>
            <xsl:apply-templates/>
         </ref:marker>
         <ref:locator>
            <xsl:apply-templates select="@* except @status"/>
         </ref:locator>
      </ref:lnlink>
   </xsl:template>
   <!-- Vikas Rohilla : Handle the empty link having no attributes and the content webstar #7045989 -->
   <xsl:template match="link[not(@*)][.='']" priority="10"/>
   <!-- MDS - 2017-09-07 Unhandled in NZ07-DN Examples in CI show the @alttext dropped.  There are no obviously matching structures in the ref:lnlink or ref:marker elements for LA.-->
   <xsl:template match="link/@alttext"/>
   <!-- <topicref href="refpt_-Chof-heading_title-LxAdv-ref.anchor.dita"/> -->   <!--<xsl:include href="../../modules/nonamespace/CA02DS_DIGESTDOC_to_seclaw_refpt_-Chof-heading_title-LxAdv-ref.anchor.xsl"/>-->   <!--<topicref href="../common/common_rosetta_ln.user_displayed.dita"/>-->   <!--<topicref href="../../../common_newest/Rosetta_case.juris_ln.user-displayed.dita"/>-->   <!-- <topicref href="../../../common_newest/Rosetta_case.courtcode_ln.user-displayed.dita"/>
    	<topicref href="../../../common_newest/Rosetta_abbrvname_ln.user-displayed.dita"/>
    	 <topicref href="../../../common_newest/Rosetta_refnum_ln.user-displayed.dita"/>-->   <!--<topicref href="../../../common_newest/Rosetta_case.decisiondate_ln.user-displayed-LxAdv-decision.dates.dita"/>-->   <!-- <topicref href="../../../common_newest/Rosetta_case.courtname_ln.user-displayed.dita"/> -->   <xd:doc>
      <xd:desc>
         <xd:p>
            <xd:b>Note: </xd:b>Elements that contain the attribute <xd:i>@ln.user-displayed="false"</xd:i> are used for certain functionality in Rosetta that does not exist in Lexis
                Advance. Each of the following elements have mappings described elsewhere in this CI for when this attribute does not exist. The examples here are ONLY for when
                this <xd:i>@ln.user-displayed="false"</xd:i> appears. (This attribute never has a "true" value, i.e. @ln.user-displayed="true".)</xd:p>
         <xd:p>When <xd:i>case:courtname</xd:i> has attribute <xd:i>@ln.user-displayed="false"</xd:i> (i.e. <xd:i>case:courtname/@ln.user-displayed="false"</xd:i>),
                that element is translated into the target but with the element content omitted. Only the attributes are populated. So there is no displayable content.</xd:p>
         <xd:p>
            <xd:b>Source XML</xd:b>
         </xd:p>
         <xd:pre>

&lt;case:courtname ln.user-displayed="false"&gt;XYZNOCOURTXYZ&lt;/case:courtname&gt;

            </xd:pre>
         <xd:p>
            <xd:b>Target XML</xd:b>
         </xd:p>
         <xd:pre>

&lt;jurisinfo:courtname normlongname="XYZNOCOURTXYZ"/&gt;

            </xd:pre>
      </xd:desc>
   </xd:doc>
   <!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
   <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_case.courtname_ln.user-displayed.dita  -->
   <!-- Vikas Rohilla :  -->
   <xsl:template match="case:courtname/@ln.user-displayed[.='false']"/>
   <!-- end topichead  General Markup  -->   <!-- <topicref href="Change-Log.dita"/> -->   <!--<xsl:include href="../../modules/changeLog/CA02DS_DIGESTDOC_to_seclaw_Change-Log.xsl"/>--></xsl:stylesheet>
