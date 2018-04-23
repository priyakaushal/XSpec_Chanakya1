<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet	version="2.0"
							xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
							xmlns:xsltdoc="http://www.lexisnexis.com/xmlstylesheets/documentation/xslt-documentation/1/"
							xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
							xmlns:map="http://docs.oasis-open.org/dita/v1.1/OS/dtd/"
							xmlns:cm="urn:x-lexisnexis:configuration-management:1"
							xmlns:fn="http://www.w3.org/2005/xpath-functions"
							
							xmlns:xs="http://www.w3.org/2001/XMLSchema"
							exclude-result-prefixes="xsltdoc dita cm fn map xs">

	<xsl:param name="mode" select="@audience"/>
	<xsl:param name="mapTitle" select="*/*/*[local-name() = 'filename']/*"/>
	<xsl:param name="docTitle" select="*/*/*[local-name() = 'title']"/>
	<xsl:param name="changeLogName" select=" 'notApplicable' "/>
	<!-- list of element names are explicitly supported. Should be all unique element names from XPath report -->
	<xsl:param name="allSupportedElements"/>
	<xsl:variable name="allSupported" select='tokenize(translate($allSupportedElements,"()&apos;",""),",")'/>
	<!-- regex used to parse element name from dita:title (use regex-group $1) -->
	<xsl:variable name="titleRegex" select="'(^lnv.[^\s]+:.[^\s]+)(\s)*(.)*$'"/>

	<xsl:template match="/">
		<!--write out the overall ditamap file-->
		<xsl:result-document doctype-public="-//OASIS//DTD DITA Map//EN" 
			doctype-system="http://docs.oasis-open.org/dita/v1.1/OS/dtd/map.dtd" 
			href="./dita{$mode}/{$mapTitle}.ditamap" method="xml" encoding="UTF-8" indent="yes" >
			<map xmlns:map="http://docs.oasis-open.org/dita/v1.1/OS/dtd/">
				
				<title><xsl:value-of select="$docTitle"/></title>
				<topicmeta>
					<prodinfo>
						<prodname><xsl:value-of select="$docTitle"/></prodname>
						<vrmlist>
							<vrm version="1"/>
						</vrmlist>
					</prodinfo>
				</topicmeta>

				<!-- CImodeTopicHead mode to create the ditamap topichead lines -->
				<xsl:apply-templates mode="CImodeTopicHead"/>
			</map>
		</xsl:result-document>

		<!--create individual dita files-->
		<xsl:apply-templates/>

	</xsl:template>

	<!-- Added by John Garbuio. 
		Error log declutter.
		Suppress the output of XSLT documentation header when creating DITA.
		Also added the xsltdoc: namespace on root element, and added it to the @exclude-result-prefixes attribute value.
	-->
	<xsl:template match="xsltdoc:header"/>
	
		
	<!--SP: TODO get rid of global includes that are just place holders -->
	<!--SP: TODO seems to be a problem with <xsl:template match="cm:* | xsl:*"/>-->
	<xsl:template match="cm:* "/>

	<xsl:template match="dita:topic">
		<!-- typically the title of the topic is the name of the element -->
		<!--<xsl:variable name="elementName" select="./dita:title//text()"/>-->
		<xsl:variable name="elementName" select="if(matches(./dita:title//text(),$titleRegex)) then replace(./dita:title//text(),$titleRegex,'$1') else normalize-space(./dita:title//text())"/>
		
		<!-- 
		This test removes elements in modules that aren't used in the DITA; it determines this
		based on the DITA topic <title> and assumes that the elements all start with "l" and have a colon in the name.
		This allows topics with titles like "Introduction", "Head", etc. to be output.
		Otherwise, if an lnv:* element is encountered and it is NOT in the list of $allSupportedElements it won't write a topic.
		-->
		<xsl:if test="not(matches($elementName,$titleRegex)) 
			or (matches($elementName,$titleRegex) 
			and fn:index-of($allSupported, $elementName))">
			<xsl:if test="@audience = $mode or not(@audience)">
				
				<xsl:result-document doctype-public="-//LEXISNEXIS//DTD DITA Topic//EN" 
					doctype-system="http://docs.oasis-open.org/dita/v1.1/OS/dtd/topic.dtd" 
					href="./dita{$mode}/{@id}.dita">
					<topic xmlns:ditaarch="http://dita.oasis-open.org/architecture/2005/">
						<xsl:copy-of select="@*"/>
						<xsl:apply-templates/>
					</topic>
				</xsl:result-document>
	
			</xsl:if>
		</xsl:if>

	</xsl:template>
	
	<xsl:template match="dita:*">
		<xsl:if test="@audience = $mode or not(@audience)">
			<xsl:element name="{local-name()}">
				<xsl:copy-of select="@* except @audience"/>
				<xsl:apply-templates/>
			</xsl:element>
		</xsl:if>
	</xsl:template>

	<xsl:template match="xsl:template">
		<!-- Commented out by John Garbuio.
		
			Error log declutter.
			This sometimes gives so many errors it prevents effective use of the log file, so change this template to just suppress input templates completely for now.
			
		<xsl:if test="not(preceding-sibling::*[1]/name() ='dita:topic')">
			<xsl:message>ERROR[DITA TOPIC NOT FOUND]:<xsl:value-of select="concat(name(),':',@match,':',@name,':(',base-uri()),')'"/> == <xsl:value-of select="@name"/><xsl:value-of select="@match"/></xsl:message>
		</xsl:if>
		-->
	</xsl:template>

	
	<xsl:template match="xsl:include">

		<xsl:for-each select="document(@href)">

			<xsl:apply-templates/>

		</xsl:for-each>

	</xsl:template>

	<xsl:template match="xsl:include" mode="CImodeTopicHead">

		<xsl:variable name="navtitleRaw" select="fn:substring-before(fn:tokenize(@href,'/')[last()],'.xsl')"/>
		<xsl:variable name="navtitle" select=" if (ends-with( $navtitleRaw , 'change-log' ) and $changeLogName != 'notApplicable' ) then $changeLogName else $navtitleRaw "/>
		<xsl:variable name="href" select="@href"/>
	  <!-- JD: 2016-08-09: added "[descendant::dita:*]" below to only generate topicheads for included files that actually contain DITA markup so as to prevent empty topics being 
	    created for functions and utility transforms (e.g., DateFormatter.xsl); seems related to what SP is doing below.  -->
		<xsl:for-each select="document(@href)[descendant::dita:*]">

			<!--SP: for now (11/13 these currently contain zero dita content), exclude a few global shared function files from the output of the dita CI-->
			<!--TBD need an attribute to key off for sections not to be included in the DITAMAP-->
			<xsl:if test="not(contains($href,'sharedGlobal.xsl')) 
				and not(contains($href,'shared/outputMethodText.xsl'))
				and not(contains($href,'shared/functions/globalFunctions.xsl'))">
				<!--and not(contains($href,'shared/namedTemplates.xsl'))-->
				
				<topichead>
					<xsl:attribute name="navtitle" select="$navtitle"/>

					<!-- CImodeTopicRef mode to create the ditamap topicref lines -->
					<xsl:apply-templates select="*" mode="CImodeTopicRef"/>

				</topichead>

			</xsl:if>

		</xsl:for-each>

	</xsl:template>

	<xsl:template match="cm:*  |  dita:*  |  text()" mode="CImodeTopicHead"/>

	<xsl:template match="cm:*  |  text()" mode="CImodeTopicRef"/>

	<xsl:template match="dita:topic[@audience=$mode or not(@audience)]" mode="CImodeTopicRef">
		<!-- typically the title of the topic is the name of the element -->
		<xsl:variable name="elementName" select="if(matches(./dita:title//text(),$titleRegex)) then replace(./dita:title//text(),$titleRegex,'$1') else normalize-space(./dita:title//text())"/>
		<!-- 
		This test removes elements in modules that aren't used in the DITA; it determines this
		based on the DITA topic <title> and assumes that the elements all start with "l" and have a colon in the name.
		This allows topics with titles like "Introduction", "Head", etc. to be output.
		Otherwise, if an lnv:* element is encountered and it is NOT in the list of $allSupportedElements it won't write a topic.
		-->

		<!--<xsl:message>
			file = <xsl:value-of select="base-uri(.)"/>
			$elementName = <xsl:value-of select="$elementName"/>
			fn:index-of($allSupported, $elementName) = <xsl:value-of select="fn:index-of($allSupported, $elementName)"/>
			matches = <xsl:value-of select="matches($elementName,$titleRegex)"/>
		</xsl:message>-->
		
		<xsl:if test="not(matches($elementName,$titleRegex)) 
			or (matches($elementName,$titleRegex) 
			and fn:index-of($allSupported, $elementName))">
			<!--xsl:if test="matches($elementName,'^l.+:.+$')
			and fn:index-of($allSupported, $elementName)"-->
			<topicref>
				<xsl:attribute name="href" select="concat(@id,'.dita')"/>
				<!-- MK - added to support nested topics -->
				<xsl:apply-templates select="*" mode="CImodeTopicRef"/>
			</topicref>
		</xsl:if>
	</xsl:template>

</xsl:stylesheet>
