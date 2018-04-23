<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet	version="2.0"
						xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
						xmlns:xs="http://www.w3.org/2001/XMLSchema"
						xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
						xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl"
						xmlns:xsltdoc="http://www.lexisnexis.com/xmlstylesheets/documentation/xslt-documentation/1/"

						exclude-result-prefixes="xs xsltdoc">

	<xsl:output method="xml" indent="yes"/>

	<xsl:template match="xsl:*[not(self::xsl:stylesheet)]">
		<xsl:copy-of select="."/>
	</xsl:template>

	<xsl:template match="/xsl:stylesheet">
		<xsl:element name="xsl:stylesheet">
			<xsl:namespace name="xd" select="'http://www.oxygenxml.com/ns/doc/xsl'"/>
			<xsl:copy-of select="@* | namespace::*"/>
			<xsl:apply-templates/>
		</xsl:element>
	</xsl:template>
	
	<xsl:template match="xsltdoc:header">
		<xsl:if test=".//xsltdoc:version[1]/xsltdoc:source and .//xsltdoc:version[1]/xsltdoc:target">
			<xd:doc>
				<xd:desc>
					<xsl:apply-templates/>
					<xd:p><xd:b>Source: </xd:b><xsl:value-of select=".//xsltdoc:version[1]/xsltdoc:source[1]"/></xd:p>
					<xd:p><xd:b>Target: </xd:b><xsl:value-of select=".//xsltdoc:version[1]/xsltdoc:target[1]"/></xd:p>
				</xd:desc>
			</xd:doc>
		</xsl:if>
	</xsl:template>	
	
	<xsl:template match="xsltdoc:version-hist">
		<xd:p><xd:b>Version History:</xd:b></xd:p>
		<xsl:apply-templates/>
	</xsl:template>
	
	<xsl:template match="xsltdoc:version">
		<xd:p>
			<xsl:value-of select="@version-id"/>: <xsl:value-of select="@version-date"/>
		</xd:p>
		<xd:p>
			<xsl:value-of select="./xsltdoc:author"/>: <xsl:value-of select="./xsltdoc:desc/xsltdoc:p"/>
		</xd:p>
	</xsl:template>
	
	<!-- things mapped to <xd:p> -->
	<xsl:template match="xsltdoc:p | xsltdoc:created | dita:shortdesc">
		<xd:p>
			<xsl:apply-templates/>
		</xd:p>
	</xsl:template>
	
	<xsl:template match="xsltdoc:author">
		<xd:p>
			<xsl:apply-templates/> (<xsl:value-of select="following-sibling::xsltdoc:maint-by/xsltdoc:email"/>)
		</xd:p>
	</xsl:template>

	
	<xsl:template match="dita:topic">
		<xd:doc>
			<xsl:apply-templates/>
		</xd:doc>
	</xsl:template>

	<xsl:template match="dita:xref">
		<xd:a href="{@href}">
			<xsl:apply-templates/>
		</xd:a>
	</xsl:template>

	<!-- suppresssions -->
	<xsl:template match="dita:title[parent::dita:topic] | dita:shortdesc[parent::dita:topic] | dita:colspec | dita:prolog | dita:lines
		| xsltdoc:maint-by | xsltdoc:source | xsltdoc:target | xsltdoc:filename"/>

	<!-- pass thru -->
	<xsl:template match="dita:topic[parent::dita:topic] | dita:section | dita:example | dita:tgroup | dita:tbody | dita:thead | dita:row | dita:sectiondiv | xsltdoc:desc | dita:ph">
		<xsl:apply-templates/>
	</xsl:template>
	
	<!-- abstract creates a new <xd:desc class='abstract'> block -->
	<xsl:template match="abstract | dita:abstract">
		<xd:desc class="abstract">
			<xsl:apply-templates/>
		</xd:desc>
	</xsl:template>

	<xsl:template match="dita:body">
		<xd:desc>
			<xsl:for-each select="preceding-sibling::dita:shortdesc[parent::dita:topic]">
				<xd:p>
					<xd:b>
						<xsl:apply-templates/>
					</xd:b>
				</xd:p>
			</xsl:for-each>
			<xsl:apply-templates/>
		</xd:desc>
	</xsl:template>

	<xsl:template match="dita:title[parent::dita:section or parent::dita:example] | xsltdoc:title">
		<xd:p>
			<xd:b>
				<xsl:apply-templates/>
			</xd:b>
		</xd:p>
	</xsl:template>

	<xsl:template match="dita:note">
		<xd:p>
			<xd:b>Note: </xd:b>
			<xsl:apply-templates/>
		</xd:p>
	</xsl:template>

	<xsl:template match="dita:sl">
		<xd:ul>
			<xsl:apply-templates/>
		</xd:ul>
	</xsl:template>

	<xsl:template match="dita:sli">
		<xd:li>
			<xsl:apply-templates/>
		</xd:li>
	</xsl:template>

	<!--  @SBy:  2016-10-21  ROM 1218 IRM Strategic:  changing default handling of embedded DITA to become xd:* elements.  Added dita:ol to this rule  -->
	<xsl:template match="dita:p | dita:ul | dita:ol | dita:li | dita:b | dita:i">
		<xsl:element name="{concat('xd:',local-name(.))}">
			<xsl:apply-templates/>
		</xsl:element>
	</xsl:template>

	<xsl:template match="dita:sourcexml | dita:u">		<!--   @SBy:  dita:u underline will have to just be italics; no xd:u available   -->
		<xd:i>
			<xsl:apply-templates/>
		</xd:i>
	</xsl:template>

	<xsl:template match="dita:targetxml">
		<xd:b>
			<xsl:apply-templates/>
		</xd:b>
	</xsl:template>

	<xsl:template match="dita:pre | dita:codeblock">
		<xd:pre>
			<xsl:apply-templates/>
		</xd:pre>
	</xsl:template>

	<xsl:template match="dita:section[dita:title='Changes']">
		<!-- TODO: determine change tracking logic and markup -->
		<xsl:comment>
			<xsl:copy-of select="."/>
		</xsl:comment>
	</xsl:template>

	<xsl:template match="dita:xsltinclusion">
		<xsl:message>xsltinclusion element found in file:  <xsl:value-of select="base-uri(.)"/>, be sure to comment it out or delete!</xsl:message>
	</xsl:template>

	<xsl:template match="dita:*">
		<xsl:message>
      Element <xsl:value-of select="name(.)"/> not supported.  File:  <xsl:value-of select="base-uri(.)"/>, element: <xsl:text>        
      </xsl:text>
			<xsl:copy-of select="."/>
		</xsl:message>
	</xsl:template>
	
	<!-- JD: 2017-07-12: Added -->
	<xsl:template match="dita:lnpid">
		<!-- pass-through -->
		<xsl:apply-templates/>
	</xsl:template>

	<!-- may need to revisit, works for current single-col tables -->
	<xsl:template match="dita:table">
		<xd:ol>
			<xsl:apply-templates/>
		</xd:ol>
	</xsl:template>

	<xsl:template match="dita:entry | dita:table/dita:title">
		<xd:li>
			<xsl:apply-templates/>
		</xd:li>
	</xsl:template>

	<xsl:template match="xd:* | xsl:*">
		<xsl:copy>
			<xsl:apply-templates select="@* | node()"/>
		</xsl:copy>
	</xsl:template>

	<!--  @SBy:  2016-10-21  ROM 1218 IRM Strategic:  changing default handling of embedded DITA to become xd:* elements.  Bumped up priority to avoid ambiguity errors  -->
	<xsl:template match="comment()" priority="1">
		<xsl:copy-of select="."/>
	</xsl:template>

</xsl:stylesheet>