<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
	xmlns:xs="http://www.w3.org/2001/XMLSchema"
	version="2.0" exclude-result-prefixes="dita xs">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/"
		id="Rosetta_identifier-LxAdv-ID_data_type-HandlingDuplicates">
		<title>Identifiers to ID Data Type - Handling Duplicates
			<lnpid>id-CCCC-10352</lnpid></title>
		<body>
			<section>
				<title>Instructions</title>
				<p>Identifier values in the source, such as <sourcexml>@id</sourcexml>, may not have
					uniqueness constraints applied to them. As a result, duplicate identifier values
					may exist. If such values are mapped to a target such as
						<targetxml>@xml:id</targetxml>, schema validation errors will occur. The
						<targetxml>@xml:id</targetxml> attribute is ID data typed, and therefore
						<i>does</i> have the uniqueness constraint applied. In this case:<ul
						id="ul_wyb_bxf_yh">
						<li>convert the first value in the duplicate sequence</li>
						<li>drop the remaining values in the duplicate sequence</li>
					</ul></p>
			</section>
			<example>
				<title>Source XML 1</title>
				<codeblock> &lt;p&gt; &lt;table id="T0103011"&gt; ... &lt;/table&gt; &lt;/p&gt;
					&lt;page count="302" /&gt; &lt;p&gt; &lt;table id="T0103011"&gt; ...
					&lt;/table&gt; &lt;/p&gt; </codeblock>
			</example>
			<example>
				<title>Target XML 1</title>
				<codeblock> &lt;p&gt; &lt;table xml:id="T0103011"&gt; ... &lt;/table&gt; &lt;/p&gt;
					&lt;ref:page num="302"/&gt; &lt;p&gt; &lt;table&gt; ... &lt;/table&gt;
					&lt;/p&gt; </codeblock>
			</example>
			<section>
				<title>Changes</title>
				<p>2012-10-18: Created. </p>
			</section>
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
		</body>
	</dita:topic>

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
			<xsl:when test="not(key('idTypeValue', @id | @ID | @fntoken[parent::footnote] | @fnrtoken[parent::fnr])[2])">
				<!-- id value is unique to document -->
				<xsl:text>false</xsl:text>
			</xsl:when>
			<xsl:otherwise>
				<xsl:variable name="contextNodeGenID" select="generate-id(.)"/>
				<xsl:choose>
					<xsl:when test="key('idTypeValue', @id | @ID | @fntoken[parent::footnote] | @fnrtoken[parent::fnr])[local-name(.)!=('refpt', 'footnote' , 'fnr')] and key('idTypeValue', @id | @ID)[local-name(.)=('refpt' , 'footnote', 'fnr')]">
						<!--*** key has mixed refpt, footnote, fnr / and other values ***-->
						<!-- non-refpt/footenote/fnr values are all dupes by definition -->						
						<!-- TO DO only the first refpt/footnote/fnr key is false -->
						<!-- so IF I am the first refpt/footnote/fnr, I am the only nondupe -->
						<xsl:for-each select="key('idTypeValue', @id | @ID | @fntoken[parent::footnote] | @fnrtoken[parent::fnr])[local-name(.)=('refpt' , 'footnote', 'fnr')][1]">
							<xsl:choose>
								<xsl:when test="generate-id(.)=$contextNodeGenID">false</xsl:when>
								<xsl:otherwise>true</xsl:otherwise>
							</xsl:choose>
						</xsl:for-each>
					</xsl:when>
					<xsl:otherwise>
						<!-- everything with matching id is a refpt/footnote/fnr or everything with matching id is not a 
							refpt/footnote/fnr	so everything but the first id is a dup -->
						<xsl:for-each select="key('idTypeValue', @id | @ID | @fntoken[parent::footnote] | @fnrtoken[parent::fnr])[1]">
						<xsl:choose>
							<xsl:when test="generate-id(.)=$contextNodeGenID">false</xsl:when>
							<xsl:otherwise>true</xsl:otherwise>
						</xsl:choose>
					</xsl:for-each></xsl:otherwise>
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
	</xsl:template>	-->

</xsl:stylesheet>
