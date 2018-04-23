<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet	version="2.0"
						xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
						xmlns:xs="http://www.w3.org/2001/XMLSchema"
						xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
						xmlns:cm="urn:x-lexisnexis:configuration-management:1"
						exclude-result-prefixes="dita cm xs">

	<!-- Added by John Garbuio.
		For the use and function of these two parameters,
		please see the comments titled "Automated File Name & Version Insertion" below.
	-->
  <xsl:param name="XSLTFileVersion" as="xs:string" select=" '' "/>
  <xsl:param name="XSLTFileName" as="xs:string" select=" '' "/>
  
	<xsl:output exclude-result-prefixes="#all" method="xml" encoding="UTF-8" indent="yes"/>
	<xsl:strip-space elements="*"/>
	<xsl:preserve-space elements="xsl:text"/><!-- APF 2015-04-09 added -->

	<xsl:template match="xsl:stylesheet">

		<xsl:variable name="allNamespaces" as="element()">

			<xsl:element name="cm:namespaces" namespace="urn:x-lexisnexis:configuration-management:1">

				<!--  namespace elements will be created for every in-scope namespace  -->

				<xsl:apply-templates select="*" mode="getNS"/>																						<!--  only need to deal with element children  -->

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

		</xsl:variable>

		<xsl:copy>

			<!--  first copy over all the namespace nodes  -->
			<xsl:for-each-group select="$allNamespaces/cm:namespace" group-by="cm:prefixused">
				<xsl:sort select="current-grouping-key()"/>
				<xsl:for-each-group select="current-group()" group-by="cm:uri">

					<xsl:for-each select="current-group()[1]">
						<xsl:if test="not( cm:uri = 'urn:x-lexisnexis:configuration-management:1' or ( cm:uri = 'http://dita.oasis-open.org/architecture/2005/' and cm:prefixused = '' ) )">
							<xsl:namespace name="{cm:prefixused}" select="xs:anyURI( cm:uri )"/>
						</xsl:if>
					</xsl:for-each>

				</xsl:for-each-group>
			</xsl:for-each-group>

			<xsl:copy-of select="@* except @exclude-result-prefixes"/>

			<xsl:attribute name="exclude-result-prefixes" select="if (contains( string-join( $allPrefixesToExclude , '' ) , '#all' )) then '#all' else distinct-values( $allPrefixesToExclude[.] )"/>

			<xsl:apply-templates select="node()" />

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
  <xsl:template match="xsl:text[text()='COMBINE_PARAM:XSLTFileVersion']">
      <xsl:element name="xsl:text">
        <xsl:sequence select="$XSLTFileVersion"/>
      </xsl:element>
  </xsl:template>    
  <xsl:template match="xsl:text[text()='COMBINE_PARAM:XSLTFileName']">
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

	<xsl:template match="cm:* | comment()" priority="1"/>

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

	<xsl:template match="xsl:include">

		<xsl:for-each select="document(@href)">

			<xsl:apply-templates select="xsl:stylesheet/*"/>

		</xsl:for-each>

	</xsl:template>

<!--	<!-\-Cull all DITA where audience is CI-\->
	<xsl:template match="dita:*[@audience='CI']"/>

	<!-\-Turn non-audienced DITA and audience=XSL DITA into XML comments-\->
	<!-\-xsl:template match="dita:*[@audience='XSL' or not(@audience)]">
		<xsl:comment><xsl:if test="text()"><xsl:value-of select="':: '"/></xsl:if><xsl:apply-templates/></xsl:comment><xsl:value-of select="'&#xA;'"/>
	</xsl:template-\->
	<xsl:template match="dita:topic[@audience='XSL' or not(@audience)]" priority="1">
		<xsl:value-of select="'&#xA;'"/>
		<xsl:comment><xsl:text>  </xsl:text><xsl:apply-templates/><xsl:text>  </xsl:text></xsl:comment>
	</xsl:template>
	<xsl:template match="dita:title[@audience='XSL' or not(@audience)]" priority="1">
		<xsl:apply-templates/>
		<xsl:value-of select="'&#xA;'"/><xsl:value-of select="'&#x9;'"/><xsl:value-of select="'&#x9;'"/><xsl:value-of select="'&#x9;'"/>
	</xsl:template>
	<xsl:template match="dita:*[@audience='XSL' or not(@audience)]">
		<xsl:apply-templates/>
	</xsl:template>
-->
	<!-- IdentityTransform -->
	<xsl:template match="@* | node()">
		<xsl:if test="self::xsl:template"><xsl:value-of select="'&#xA;'"/><xsl:text>  </xsl:text></xsl:if><xsl:copy>
			<xsl:apply-templates select="@* | node()" />
		</xsl:copy><xsl:if test="self::xsl:template"><xsl:value-of select="'&#xA;'"/></xsl:if>
	</xsl:template>

</xsl:stylesheet>
