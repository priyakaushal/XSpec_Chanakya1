<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet	version="2.0"
						xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
						xmlns:xs="http://www.w3.org/2001/XMLSchema"
						xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
						xmlns:cm="urn:x-lexisnexis:configuration-management:1"
						xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl"
						xmlns:xsltdoc="http://www.lexisnexis.com/xmlstylesheets/documentation/xslt-documentation/1/"

						exclude-result-prefixes="dita cm xs">

	<!-- Added by John Garbuio.
		For the use and function of these two parameters,
		please see the comments titled "Automated File Name & Version Insertion" below.
	-->
	<xsl:param name="XSLTFileVersion" as="xs:string" select=" '' "/>
	<xsl:param name="XSLTFileName" as="xs:string" select=" '' "/>
	<xsl:param name="outputDefaultNamespace" as="xs:string" select=" 'true' "/>
  
	<xsl:output exclude-result-prefixes="#all" method="xml" encoding="UTF-8" indent="yes"/>
	<xsl:strip-space elements="*"/>
	<xsl:preserve-space elements="xsl:text"/><!-- APF 2015-04-09 added -->

	<!--  @SBy:  2016-10-21  ROM 1218 IRM Strategic:  changing default handling of embedded DITA to become xd:* elements.  Include the templare rules from dita-to-xd  -->
	<xsl:include href="dita-to-xd.xsl"/>

	<xsl:template match="xsl:stylesheet" priority="1">

		<xsl:variable name="allNamespaces" as="element()">

			<xsl:element name="cm:namespaces" namespace="urn:x-lexisnexis:configuration-management:1">

				<!--  namespace elements will be created for every in-scope namespace  -->

				<xsl:apply-templates select="*" mode="getNS"/>																						<!--  only need to deal with element children  -->

				<!--  @SBy:  2016-10-21  ROM 1218 IRM Strategic:  changing default handling of embedded DITA to become xd:* elements.  add xd namespace  -->
				<cm:namespace>
					<cm:uri>http://www.oxygenxml.com/ns/doc/xsl</cm:uri>
					<cm:prefixused>xd</cm:prefixused>
				</cm:namespace>

			</xsl:element>

		</xsl:variable>

		<xsl:variable name="allPrefixesToExclude" as="xs:string+">
			<!--xsl:value-of select="tokenize( @exclude-result-prefixes , ' ' )" separator=" "/-->
			<xsl:sequence select="tokenize( @exclude-result-prefixes , ' ' )"/>

			<xsl:for-each select="xsl:include">
				<xsl:for-each select="document(@href)">

					<xsl:apply-templates select="xsl:stylesheet" mode="getPrefixes"/>															<!--  only need to deal with xsl:stylesheet  -->

				</xsl:for-each>
			</xsl:for-each> 

			<!--  @SBy:  2016-10-21  ROM 1218 IRM Strategic:  changing default handling of embedded DITA to become xd:* elements.  add xd to prefix exclude list  -->
			<xsl:text>xd</xsl:text>

		</xsl:variable>

		<xsl:copy>

			<!--  first copy over all the namespace nodes  -->
			<xsl:for-each-group select="$allNamespaces/cm:namespace" group-by="cm:prefixused">
				<xsl:sort select="current-grouping-key()"/>
				<xsl:for-each-group select="current-group()" group-by="cm:uri">

					<xsl:for-each select="current-group()[1]">
						<xsl:if test="not( cm:uri = 'urn:x-lexisnexis:configuration-management:1' or ( cm:uri = 'http://dita.oasis-open.org/architecture/2005/' and cm:prefixused = '' ) or ( $outputDefaultNamespace = 'false' and cm:prefixused = '' ) )">
							<xsl:namespace name="{cm:prefixused}" select="xs:anyURI( cm:uri )"/>
						</xsl:if>
					</xsl:for-each>

				</xsl:for-each-group>
			</xsl:for-each-group>

			<xsl:copy-of select="@* except @exclude-result-prefixes"/>

			<xsl:attribute name="exclude-result-prefixes" select="if (contains( string-join( $allPrefixesToExclude , '' ) , '#all' )) then '#all' else distinct-values( $allPrefixesToExclude[.] )"/>

			<xsl:apply-templates select="node()"/>

		</xsl:copy>

	</xsl:template>

	<!--   as a result of investigating WebStar 6980993, monolith generation will now enforce indent="no"  -->
	<xsl:template match="xsl:output" priority="1">
		<xsl:copy>
			<xsl:copy-of select="@* except @indent"/>
			<xsl:if test="@indent">
				<xsl:attribute name="indent" select=" 'no' "/>
			</xsl:if>
		</xsl:copy>
	</xsl:template>

	<!-- Added by John Garbuio.
		
		Automated File Name & Version Insertion
		
		NOTE: THERE ARE BETTER WAYS TO DO THIS, but I only had an hour and this works for now. :^)
		
		These next two templates allow automated insertion of the XSLT file name and version.
		These need to be passed as parameters when calling this combining stylesheet.
		The parameters are:
			XSLTFileVersion - this should contain the version and the stability level, 
												eg: "1.0_ALPHA"
			XSLTFileName - this should contain the full name of the combined file 
										(including the version) without the extension, 
										eg: "gem.pg.editableChecklist_to_LA.editlist_1.0_ALPHA"
										
		These parameter values will be used to replace the contents of 
		<xsl:text> elements that contain exactly the text 
		"COMBINE_PARAM:XSLTFileVersion" and "COMBINE_PARAM:XSLTFileName"
		
		One use of these is to allow the generated combined XSLT program to encode its version and name
		into each XML file it outputs by having an <xsl:element> such as the following
		within a template in one of the modules that are combined:
          <xsl:element name="doc:processes">
            <xsl:attribute name="processtype" select=" 'XSLT_MasterTier_to_SharedServicesTier' "/>
            <xsl:attribute name="version"><xsl:text>COMBINE_PARAM:XSLTFileVersion</xsl:text></xsl:attribute>
            <xsl:text>COMBINE_PARAM:XSLTFileName</xsl:text>
          </xsl:element>
					
		Each time a new combined file is generated with a different name and/or version, that veresion will 
		automatically be output into the XML by the above code without having to update the code 
		for each new version.
		
		This makes it very easy to quickly find issues related to the wrong or older version of an XSLT script being run on ICCE.
		I recommend to use this method to output a //doc:metadata/doc:docinfo/doc:processes' element such as the one shown above.
	-->
	<!--  @SBy:  2016-10-21  ROM 1218 IRM Strategic:  changing default handling of embedded DITA to become xd:* elements.  Bumping up priority  -->
	<xsl:template match="xsl:text[text()='COMBINE_PARAM:XSLTFileVersion']" priority="1">
		<xsl:element name="xsl:text">
			<xsl:sequence select="$XSLTFileVersion"/>
		</xsl:element>
	</xsl:template>    
	<xsl:template match="xsl:text[text()='COMBINE_PARAM:XSLTFileName']" priority="1">
		<xsl:element name="xsl:text">
			<xsl:sequence select="$XSLTFileName"/>
		</xsl:element>
	</xsl:template>

	<xsl:template match="xsl:stylesheet" mode="getPrefixes">

		<xsl:sequence select="tokenize( @exclude-result-prefixes , ' ' )"/>

		<xsl:for-each select="xsl:include">
			<xsl:for-each select="document(@href)">

				<xsl:apply-templates select="xsl:stylesheet" mode="getPrefixes"/>															<!--  only need to deal with xsl:stylesheet  -->

			</xsl:for-each>
		</xsl:for-each>

	</xsl:template>

	<!--  @SBy:  2016-10-21  ROM 1218 IRM Strategic:  changing default handling of embedded DITA to become xd:* elements.  removing comment from suppression  -->
	<xsl:template match="cm:*" priority="1"/>

	<xsl:template match="*" mode="getNS">

		<xsl:variable name="currentElement" as="element()" select="."/>											<!--  save current element node for later use  -->

		<xsl:for-each select="in-scope-prefixes(.)">																			<!--  loop through all ns prefixes in scope for this element  -->

			<xsl:variable name="currentPrefix" as="xs:string" select="."/>											<!--  output a namespace node for every in-scope prefix  -->
			<!--xsl:namespace name="{$currentPrefix}" select="namespace-uri-for-prefix( $currentPrefix , $currentElement )"/-->

			<cm:namespace>
				<cm:uri><xsl:sequence select="namespace-uri-for-prefix( $currentPrefix , $currentElement )"/></cm:uri>
				<cm:prefixused><xsl:sequence select="$currentPrefix"/></cm:prefixused>
			</cm:namespace>

		</xsl:for-each>

		<xsl:apply-templates select="*" mode="getNS"/>																	<!--  only need to deal with element children  -->

	</xsl:template>

	<xsl:template match="xsl:include" mode="getNS">

		<xsl:for-each select="document(@href)">

			<xsl:apply-templates select="*" mode="getNS"/>																	<!--  only need to deal with element children  -->

		</xsl:for-each>

	</xsl:template>

	<xsl:template match="xsl:include" priority="1">

		<xsl:for-each select="document(@href)">

			<!--  @SBy:  2016-10-21  ROM 1218 IRM Strategic:  changing default handling of embedded DITA to become xd:* elements.  Changing * to node() so comments are preserved  -->
			<xsl:apply-templates select="xsl:stylesheet/node()"/>

		</xsl:for-each>

	</xsl:template>

	<!--Cull all DITA where audience is CI-->
	<!--  @SBy:  2016-10-21  ROM 1218 IRM Strategic:  changing default handling of embedded DITA to become xd:* elements.  Bumping up the priority to ensure filtering out of "CI" audienced embedded DITA  -->
	<xsl:template match="dita:*[@audience='CI']" priority="1"/>

	<!--Turn non-audienced DITA and audience=XSL DITA into XML comments-->
	<!--xsl:template match="dita:*[@audience='XSL' or not(@audience)]">
		<xsl:comment><xsl:if test="text()"><xsl:value-of select="':: '"/></xsl:if><xsl:apply-templates/></xsl:comment><xsl:value-of select="'&#xA;'"/>
	</xsl:template-->
	<!--  @SBy:  2016-10-21  ROM 1218 IRM Strategic:  changing default handling of embedded DITA to become xd:* elements.  No longer turning these into XML comments; so commenting out for now  -->
	<!--xsl:template match="dita:topic[@audience='XSL' or not(@audience)]" priority="1">
		<xsl:value-of select="'&#xA;'"/>
		<xsl:comment><xsl:text>  </xsl:text><xsl:apply-templates/><xsl:text>  </xsl:text></xsl:comment>
	</xsl:template>
	<xsl:template match="dita:title[@audience='XSL' or not(@audience)]" priority="1">
		<xsl:apply-templates/>
		<xsl:value-of select="'&#xA;'"/><xsl:value-of select="'&#x9;'"/><xsl:value-of select="'&#x9;'"/><xsl:value-of select="'&#x9;'"/>
	</xsl:template>
	<xsl:template match="dita:*[@audience='XSL' or not(@audience)]">
		<xsl:apply-templates/>
	</xsl:template-->

	<!--  @SBy:  2016-10-21  ROM 1218 IRM Strategic:  changing default handling of embedded DITA to become xd:* elements.  Adding xsl:template to provide some spacing to monolithic for readability  -->
	<xsl:template match="xsl:template" priority="1">
		<xsl:value-of select="'&#xA;'"/><xsl:text>   </xsl:text><xsl:copy-of select="."/><xsl:value-of select="'&#xA;'"/><xsl:if test="following-sibling::*[1][self::dita:*]"><xsl:value-of select="'&#xA;'"/></xsl:if>
	</xsl:template>

	<!-- IdentityTransform -->
	<!--  @SBy:  2016-10-21  ROM 1218 IRM Strategic:  changing default handling of embedded DITA to become xd:* elements.  Removing xsl:if on xsl:template  -->
	<xsl:template match="@* | node()">
		<xsl:copy>
			<xsl:apply-templates select="@* | node()" />
		</xsl:copy>
	</xsl:template>

</xsl:stylesheet>