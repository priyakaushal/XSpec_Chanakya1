<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
	xmlns:case="http://www.lexis-nexis.com/glp/case"
	xmlns:ci="http://www.lexis-nexis.com/ci"
	xmlns:source_cttr="http://www.lexis-nexis.com/glp/cttr"
	xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo"
	xmlns:glp="http://www.lexis-nexis.com/glp"
	xmlns:leg="http://www.lexis-nexis.com/glp/leg"
	xmlns:lnci="http://www.lexisnexis.com/xmlschemas/content/shared/citations/1/"
	xmlns:comm="http://www.lexis-nexis.com/glp/comm" xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"
	xmlns:seclaw="http://www.lexisnexis.com/xmlschemas/content/legal/secondary-law/1/"
	xmlns:in="http://www.lexis-nexis.com/glp/in"
	xmlns:proc="http://www.lexisnexis.com/xmlschemas/content/shared/process-elements/1/"  
	version="2.0" exclude-result-prefixes="dita comm ref xs ci docinfo glp leg case source_cttr in proc">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="CA10_Body">
  <title>Body <lnpid>id-CA10-14607</lnpid></title>
  <shortdesc>All of the following are descendants of <targetxml>seclaw:body</targetxml>. Handle in
    document order unless specifically stated otherwise. Refer to General Markup Section for
    handling of children (including mixed content).</shortdesc>
  <body>
    <section>
      <p><sourcexml>comm:body</sourcexml> becomes <targetxml>seclaw:body</targetxml></p>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA10-Treatise_Textbook_Forms\CA10_Body.dita  -->
	<!--<xsl:message>CA10_Body.xsl requires manual development!</xsl:message> 
-->
	<xsl:template match="comm:body">

		<!--  Original Target XPath:  seclaw:body   -->
		<seclaw:body>
			<xsl:apply-templates select="@* | node()"/>
		</seclaw:body>

	</xsl:template>

<!-- This module also handles a remotlink for CA10 -->

	<xsl:template match="remotelink/@status"/>
	
	<!-- JL: suppressing attributes as templates because they are used in more complex ways below -->
	<xsl:template match="remotelink/@refpt"/>
	<xsl:template match="remotelink/@dpsi"/>
	<xsl:template match="remotelink/@service"/>
	<xsl:template match="remotelink/@remotekey1"/>
	
	<xsl:template match="remotelink[ @service = 'SEARCH' ][ not( @hrefclass = 'http' ) ]">
		<xsl:comment>
			<xsl:copy-of select="."/>
		</xsl:comment>
	</xsl:template>
	
	<xsl:template match="remotelink[ @service = 'QUERY' ][ not( ancestor::docinfo:assoc-links or parent::glp:note) ]">
		<!--  Original Target XPath:  ref:crossreference   -->
		<!-- Suppress remotelink and retain the content -->
		<xsl:apply-templates/>
	</xsl:template>
	<xsl:template match="remotelink[ancestor::docinfo:assoc-links][ @service = 'QUERY' ]"/>
	
	
	<xsl:template name="remotelinkDOCID">
		<!--  Original Target XPath:  ref:crossreference   -->
		
		<ref:crossreference>
			<!-- following atts and inlineobject template from modules/cttr/HK08k_subseqcases_cttr.annot.xsl -->
			<xsl:attribute name="crossreferencetype">
				<xsl:text>seeAlso</xsl:text>
			</xsl:attribute>			
			<ref:content>
				<xsl:copy-of select="@xml:lang"/>
				<xsl:apply-templates select="@* except @xml:lang"/>
				<xsl:apply-templates/>
			</ref:content>
			
			<ref:locator>
				<xsl:for-each select=" if (@refpt) then @refpt else @remotekey2">
					<!-- MDS - 2017-05-12 - Created choose statement to deal with empty @refpt in source resulting in empty @anchoridref in target. -->
					<xsl:choose>
						<xsl:when test="normalize-space(.) = ''"/>
						<xsl:otherwise>
							<xsl:attribute name="anchoridref">
								<xsl:call-template name="normalizeIdString"/>
							</xsl:attribute>
						</xsl:otherwise>
					</xsl:choose>
				</xsl:for-each>
				<ref:locator-key>
					<ref:key-name name="DOC-ID"/>
					<ref:key-value>
						<xsl:attribute name="value">
							<xsl:choose>
								<xsl:when test="@dpsi">
									<xsl:value-of select="@dpsi"/>
								</xsl:when>
								<!-- JL I don't think we can assume that @dpsi is always equal to the dpsi for the 
									document's product, so removing other ways to find the dpsi for the product -->
								<!--<xsl:when test="//docinfo:dpsi/@id-string">
									<xsl:value-of select="//docinfo:dpsi/@id-string"/>
								</xsl:when>-->
								<xsl:otherwise>
									<!--<xsl:value-of select="$dpsi"/>-->
									<xsl:call-template name="outputErrorMessage">
										<xsl:with-param name="messageText" as="xs:string" select=" 'remotelink/@dpsi is missing and link cannot be correctly completed' "/>
										<xsl:with-param name="errorType" as="xs:string" select=" 'ICCE' "/>
										<xsl:with-param name="errorCode" as="xs:string*" select=" 'TBD' "/>
										<xsl:with-param name="context" as="xs:string"><xsl:value-of select="base-uri()"/> </xsl:with-param>
									</xsl:call-template>
								</xsl:otherwise>
							</xsl:choose>
							
							<xsl:text>-</xsl:text>
							
							<xsl:choose>
								<xsl:when test=" @remotekey1 = 'DOC-ID' or @remotekey1 = 'DOCID' ">
									
									<xsl:value-of select="if (@remotekey2) then @remotekey2 else @refpt"/>
									
								</xsl:when>
								<xsl:when test=" @remotekey1 = 'REFPTID' or @remotekey1 = 'REFPT' ">
									
									<xsl:choose>
										<xsl:when test="@docidref">
											<xsl:value-of select="@docidref"/>
										</xsl:when>
										<xsl:when test="@status=('unval','invalid')"><!-- no @docidref however status is unvalidated or invalid so don't throw error  --></xsl:when>
										<xsl:otherwise>
											<!-- This should be an error message -->
											<xsl:text>XXXX</xsl:text>
											<xsl:call-template name="outputErrorMessage">
												<xsl:with-param name="messageText" as="xs:string" select=" 'remotelink/@docidref is missing and link cannot be correctly completed' "/>
												<xsl:with-param name="errorType" as="xs:string" select=" 'ICCE' "/>
												<xsl:with-param name="errorCode" as="xs:string*" select=" '403' "/>
												<xsl:with-param name="context" as="xs:string"><xsl:value-of select="base-uri()"/> </xsl:with-param>
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
	<xsl:template match="remotelink[not(ancestor::docinfo:assoc-links)][ @service = 'DOC-ID' ]" mode="combineSiblingRemotelinks">
		
		<!--  output  ref:crossreference for the current remotelink  -->
		<xsl:call-template name="remotelinkDOCID"/>
		<!--  process immediate sibling remotelink elements one by one  -->
		<xsl:apply-templates select="following-sibling::node()[1][self::remotelink[not(ancestor::docinfo:assoc-links)][ @service = 'DOC-ID' ] ]" mode="combineSiblingRemotelinks"/>
		
	</xsl:template>
	
	<!-- For multiple, immediate, sibling
			  occurrences without intermediary text, group within a
				<targetxml>ref:crossreferencegroup</targetxml> parent except for
				<targetxml>lnci:content</targetxml> and <targetxml>title</targetxml>.<ul>  -->
	<!--  @@@ SBy:  I do not understand what is meant by "except for lnci:content and title" since the examples have those under ref:crossreferencegroup even if there is only one remotelink[ @service = 'DOC-ID' ] sibling !!!  -->
	
	<!-- JL: seems like lnci:content/ref:crossreferencegroup is not schema valid -->
	
	<xsl:template match="remotelink[not(ancestor::docinfo:assoc-links)][ @service = 'DOC-ID' ][ not( preceding-sibling::node()[1][self::remotelink[ @service = 'DOC-ID' ] ] ) ]">
		
		<xsl:choose>
			<xsl:when test="preceding-sibling::*[1][name()='p'] and following-sibling::node()[1][self::remotelink[ @service = 'DOC-ID' ] ] and not(parent::ci:content)">
				<text>
					
					<!--  output  ref:crossreference for the current remotelink  -->
					<xsl:call-template name="remotelinkDOCID"/>
					<!--  process immediate sibling remotelink elements one by one  -->
					<xsl:apply-templates select="following-sibling::node()[1][self::remotelink[ @service = 'DOC-ID' ] ]" mode="combineSiblingRemotelinks"/>
					
				</text>
				
			</xsl:when>
			<xsl:when test=" following-sibling::node()[1][self::remotelink[ @service = 'DOC-ID' ] ] and not(parent::ci:content)">			<!--  multiple immediate sibling remotelinks, so group in ref:crossreferencegroup  -->
				
				<ref:crossreferencegroup>
					
					<!--  output  ref:crossreference for the current remotelink  -->
					<xsl:call-template name="remotelinkDOCID"/>
					<!--  process immediate sibling remotelink elements one by one  -->
					<xsl:apply-templates select="following-sibling::node()[1][self::remotelink[ @service = 'DOC-ID' ] ]" mode="combineSiblingRemotelinks"/>
					
				</ref:crossreferencegroup>
				
			</xsl:when>
			<xsl:otherwise>
				
				<!--  no grouping needed, so just output  ref:crossreference for the current remotelink  -->
				<xsl:call-template name="remotelinkDOCID"/>
				
			</xsl:otherwise>
		</xsl:choose>
		
	</xsl:template>
	
	<!--  If there is a
				<sourcexml>remotelink/@hrefclass]</sourcexml> attribute equal to "http" then the
			  remotelink is <b>not</b> copied into a comment but is instead converted to either a
				<targetxml>url</targetxml> or <targetxml>ref:lnlink</targetxml>   -->
	<!-- remotelink[@service='URL'] or remotelink[@hrefclass='http'][@href] or remotelink[@href] and the data content of the remotelink is a URL -->
	<!--  @@@ SBy:  how does one check for "... or is of type (http | https | nohttp | mailto | ftp ..."  ??? using contains...  -->
	<xsl:template match="remotelink[ ( @service = 'URL' or @href ) and ( contains( . , 'www' ) or contains( . , 'http' ) or contains( . , 'mailto' ) or contains( . , 'ftp' ) ) ][not(parent::ci:content)]">
		
		<!--   @@@TODO:  perhaps fix type (http | https | nohttp | mailto | ftp handling.  Probably @hrefclass ?  also check for case insensitivity  -->
		
		<!-- <li>Use case: <sourcexml>remotelink[@service='URL']</sourcexml> or
				<sourcexml>remotelink[@hrefclass='http'][@href]</sourcexml> or
				<sourcexml>remotelink[@href]</sourcexml>
			  <b>and</b> the data content of the remotelink is a URL. That is, the data content of
				<sourcexml>remotelink</sourcexml> starts with text such as "http://...", "https://...",
			  "www.some.domain", or is of type (http | https | nohttp | mailto | ftp). In this case,
				<sourcexml>remotelink</sourcexml> becomes <targetxml>url</targetxml>		-->
		
		
		
		<url xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
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
	
	<!--Awantika: If lnci:content/remotelink have the following scenarios:if it's href,url,or www.... then retain the content of remotelink and suppress the element-->
	<xsl:template match="remotelink[ ( @service = 'URL' or @href ) and ( contains( . , 'www' ) or contains( . , 'http' ) or contains( . , 'mailto' ) or contains( . , 'ftp' ) ) ][parent::ci:content]">
		<xsl:apply-templates/>			
	</xsl:template>
	
	<!-- remotelink[@service='URL'] or remotelink[@hrefclass='http'][@href] but the data content of the remotelink is not a URL. -->
	<!--  @@@ SBy:  how does one check for "... nor is it of type (http | https | nohttp | mailto | ftp ..."  ??? using contains...  -->
	<xsl:template match="remotelink[ ( @service = 'URL' or @href ) and not( ( contains( . , 'www' ) or contains( . , 'http' ) or contains( . , 'mailto' ) or contains( . , 'ftp' ) ) ) ]">
		
		<!--   @@@TODO:  perhaps fix type (http | https | nohttp | mailto | ftp handling.  Probably @hrefclass ?  also check for case insensitivity  -->
		
		<!-- <li>Use case: <sourcexml>remotelink[@service='URL']</sourcexml> or
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
	
	<!-- suppress remotelink and retain its content as text -->
	<xsl:template match="remotelink[not(@*)]">
		<xsl:apply-templates/>
	</xsl:template>
	
	
	<xsl:template match="remotelink/@remotekey2"/>
	<!-- it doesn't seem like we use this att -->
	<xsl:template match="remotelink/@newwindow"/>
	<xsl:template match="remotelink/@docidref"/>
	<xsl:template match="p">
		<xsl:choose>
			<xsl:when test="parent::in:body">
				<bodytext xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
					<p>
						<xsl:apply-templates select="node()"/>
					</p>
				</bodytext>
			</xsl:when>
			<!-- MDS - occurs in HK04 -  child is leg:histnote then the p element is not output and simply passed through.-->
			<!-- JL revised to handle the many scenarios when p has other children than leg:histnote -->
			<xsl:when test="leg:histnote | blockquote/legfragment">
				<!--<xsl:apply-templates select="node()"/>-->
				<xsl:for-each-group select="*" group-adjacent="if (self::leg:histnote or self::blockquote[legfragment]) then 0 else 1">
					<xsl:choose>
						<xsl:when test="current-grouping-key()=0">
							<xsl:for-each select="current-group()">
								<xsl:apply-templates select="."/>
							</xsl:for-each>
						</xsl:when>
						<xsl:otherwise>
							<p xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
								
								<xsl:for-each select="current-group()">
									<xsl:apply-templates select="."/>
								</xsl:for-each>
							</p>
						</xsl:otherwise>
					</xsl:choose>
				</xsl:for-each-group>
			</xsl:when>
			<!-- JL: funky NZ07 case where we collapse p or p[@nl='0'] element children of references 
            full logic isn't given but I assume we don't do the collapse if the reference has any non-p children or if 
            references has any p children where the @nl value is not zero or we're going to be here all year -->
			<xsl:when
				test="parent::references[not(child::*[not(self::p[@nl = '0' or not(@nl)])])] and starts-with($streamID, 'NZ07') and (not(@nl) or @nl = '0') and not(preceding-sibling::p)">
				<xsl:element name="p"
					namespace="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
					<!-- JL this "if" condition that moves text align att value to the parent p is generic and cannot be used for CA -->
					<xsl:apply-templates select="@*"/>
					<xsl:if
						test="not(@style) and child::text[@align[. != '']] and not(child::text[2]) and not(starts-with($streamID, 'CA'))">
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
						<xsl:when
							test="child::*[not(self::text)] or following-sibling::p[child::*[not(self::text)]]">
							<xsl:apply-templates select="refpt | following-sibling::p/refpt"/>
							<xsl:apply-templates select="*[not(self::refpt)] | text()"/>
							<!-- if any p elements have ANY child elements other than <text>, don't merge child text nodes. cleaner -->
							<xsl:for-each select="following-sibling::p">
								<xsl:apply-templates select="*[not(self::refpt)] | text()"/>
							</xsl:for-each>
						</xsl:when>
						<xsl:otherwise>
							<!-- can assume p has only text children, yay! And we have also whittled the possibilities down to "p contains an nl att or not" -->
							<xsl:for-each-group select="self::p | following-sibling::p"
								group-adjacent="exists(@nl)">
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
			<xsl:when
				test="parent::references[not(child::*[not(self::p[@nl = '0' or not(@nl)])])] and starts-with($streamID, 'NZ07') and (not(@nl) or @nl = '0') and preceding-sibling::p"/>
			<xsl:when
				test="starts-with($streamID, 'CA') and count(text) &gt; 1 and not(@style) and text[@align]">
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
			<xsl:when test="following-sibling::*[1][name()='remotelink']">
				<xsl:element name="p"
					namespace="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
					<!-- JL this "if" condition that moves text align att value to the parent p is generic and cannot be used for CA -->
					<xsl:apply-templates select="@*"/>
					<!-- <xsl:if
                        test="not(@style) and child::text[@align[. != '']] and not(child::text[2]) and not(starts-with($streamID, 'CA'))">
                        <xsl:attribute name="align">
                            <xsl:value-of select="text/@align"/>
                        </xsl:attribute>
                    </xsl:if>-->
					<!--                   Chaitanya :Making the for the P/@align as CA08 require this change, Luckabaugh, Joy H. (LNG-HBE) <Joy.Luckabaugh@lexisnexis.com> has approved to change this module  -->
					<xsl:if
						test="not(@style) and child::text[@align[. != '']] and not(child::text[2])">
						<xsl:attribute name="align">
							<xsl:value-of select="text/@align"/>
						</xsl:attribute>
					</xsl:if>
					
					<!--SS: Added this condition for p/link becomes p/text/ref:lnlink - HK07-->
					<xsl:if test="child::link">
						<xsl:element name="text">
							<xsl:apply-templates select="@* | node()"/>
						</xsl:element>
					</xsl:if>
					<!-- create ref:anchor before other elements to meet schema ordering -->
					<xsl:apply-templates select="refpt | text/refpt"/>
					<!--SS: Added "except link" condition for handling p/link - HK07-->
					<xsl:apply-templates select="*[not(self::refpt)] except link | text()"/>
					<xsl:apply-templates select="following-sibling::remotelink"/>
				</xsl:element>
			</xsl:when>
			<xsl:otherwise>
				<xsl:element name="p"
					namespace="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
					<!-- JL this "if" condition that moves text align att value to the parent p is generic and cannot be used for CA -->
					<xsl:apply-templates select="@*"/>
					<!-- <xsl:if
                        test="not(@style) and child::text[@align[. != '']] and not(child::text[2]) and not(starts-with($streamID, 'CA'))">
                        <xsl:attribute name="align">
                            <xsl:value-of select="text/@align"/>
                        </xsl:attribute>
                    </xsl:if>-->
					<!--                   Chaitanya :Making the for the P/@align as CA08 require this change, Luckabaugh, Joy H. (LNG-HBE) <Joy.Luckabaugh@lexisnexis.com> has approved to change this module  -->
					<xsl:if
						test="not(@style) and child::text[@align[. != '']] and not(child::text[2])">
						<xsl:attribute name="align">
							<xsl:value-of select="text/@align"/>
						</xsl:attribute>
					</xsl:if>
					
					<!--SS: Added this condition for p/link becomes p/text/ref:lnlink - HK07-->
					<xsl:if test="child::link">
						<xsl:element name="text">
							<xsl:apply-templates select="@* | node()"/>
						</xsl:element>
					</xsl:if>
					<!-- create ref:anchor before other elements to meet schema ordering -->
					<xsl:apply-templates select="refpt | text/refpt|text/emph/refpt"/>
					<!--SS: Added "except link" condition for handling p/link - HK07-->
					<xsl:apply-templates select="*[not(self::refpt)] except link | text()"/>
				</xsl:element>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
	
	<xsl:template match="p/@i">
		<!-- suppress -->
	</xsl:template>
	
	<xsl:template match="p/@nl">
		<!-- suppress -->
		<!-- see module for handling text when parent p has @nl -->
	</xsl:template>
	
	<xsl:template match="p/@ln.nsprefix">
		<!-- suppress -->
	</xsl:template>
	
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
	
	<xsl:template match="p/@indent">
		<xsl:copy-of select="."/>
	</xsl:template>
	
	
	

	
	
</xsl:stylesheet>