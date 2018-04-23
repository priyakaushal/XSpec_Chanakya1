<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
	xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/" 
	xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/"	
	xmlns:case="http://www.lexis-nexis.com/glp/case"
	xmlns:ci="http://www.lexis-nexis.com/ci"
	version="2.0"
	exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/"
		id="Rosetta_pnum-to-LexisAdvance_desig">
		<title><sourcexml>pnum</sourcexml> to <targetxml>desig</targetxml>
			<lnpid>id-CCCC-10434</lnpid></title>
		<body>
			<section>
				<title>Instructions <i>[common element]</i></title>
				<p><sourcexml>pnum</sourcexml> becomes <targetxml>desig</targetxml> attribute
						<sourcexml>@count</sourcexml> becomes <targetxml>@value</targetxml> and
						<sourcexml>@inline</sourcexml> becomes <targetxml>@inline</targetxml>. </p>
			</section>

			<example>
				<title>Source XML</title>
				<codeblock> &lt;pnum count="2" inline="true"&gt;[2]&lt;/pnum&gt; </codeblock>
			</example>

			<example>
				<title>Target XML</title>
				<codeblock> &lt;desig value="2" inline="true"&gt;[2]&lt;/desig&gt; </codeblock>
			</example>

			<section>
				<p>When <sourcexml>pnum</sourcexml>is not having attribute
						<sourcexml>@inline</sourcexml>present in the source than the conversion will
					add <targetxml>@inline</targetxml> attribute in the target along with element
						<targetxml>desig</targetxml>. </p>
			</section>
			<example>
				<title>Source XML</title>
				<codeblock> &lt;pnum count="2"&gt;[2]&lt;/pnum&gt; </codeblock>
			</example>

			<example>
				<title>Target XML</title>
				<codeblock> &lt;desig value="2" inline="true"&gt;[2]&lt;/desig&gt; </codeblock>
			</example>


			<section>
				<title>Changes</title>
				<p>2015-03-17: <ph id="change_20150317_AK">An attribute
							<targetxml>@inline</targetxml> get added with
							<targetxml>desig</targetxml> element even when the
							source<sourcexml>pnum</sourcexml> is not having that
							attribute<sourcexml>@inline</sourcexml> Applicable on CA12
					only.</ph></p>
				<p>2015-02-24: <ph id="change_20150224_AK">An attribute
							<targetxml>@inline</targetxml>get added with
							<targetxml>desig</targetxml>element even when the
							source<sourcexml>pnum</sourcexml>is not having that
							attribute<sourcexml>@inline</sourcexml></ph></p>
				<p>2011-12-15: Created. </p>
				<p>Instruction added for handling of @inline and changed the example.</p>
			</section>
			<!-- <xsltinclusion>
		<xsl:stylesheet version="2.0">  
			... BRT: Modified existing template in base.xsl to add @inline='true' when not present ... 
			<xsl:template match="pnum">
				<xsl:element name="desig">
					<xsl:if test="@count">
						<xsl:attribute name="value">
							<xsl:value-of select="@count"/>
						</xsl:attribute>
					</xsl:if>
					<xsl:attribute name="inline">
						<xsl:choose>
							<xsl:when test="@inline">
								<xsl:value-of select="@inline"/>
							</xsl:when>
							... BRT: added this condition according to existing instruction in Rosetta_pnum-LxAdv-desig.dita.
                        Creates @inline='true' when value isn't present  ...
							<xsl:otherwise>
								<xsl:value-of select="'true'"/>
							</xsl:otherwise>
						</xsl:choose>
					</xsl:attribute>
					
					<xsl:apply-templates/>
				</xsl:element>
			</xsl:template>
		</xsl:stylesheet>
	</xsltinclusion> -->
		</body>
	</dita:topic>


	<!-- BRT: Modified existing template in base.xsl to add @inline='true' when not present -->
	<xsl:template match="pnum">
		<xsl:element name="desig">
			<xsl:apply-templates select="@count"/>
			<!-- JD: 2017-06-19: it appears that this should only be set for CA12 -->
			<!--pawan: inline should for created for CA15 --><!-- 2017/10/04 - CSN - added UK07 to match GDS-->
			<xsl:if test="$streamID=('CA12','CA15','UK07')">
				<xsl:attribute name="inline">
					<xsl:choose>
						<xsl:when test="@inline">
							<xsl:value-of select="@inline"/>
						</xsl:when>
						<!-- BRT: added this condition according to existing instruction in Rosetta_pnum-LxAdv-desig.dita.
	                        Creates @inline='true' when value isn't present  -->
						<xsl:otherwise>
							<xsl:value-of select="'true'"/>
						</xsl:otherwise>
					</xsl:choose>
				</xsl:attribute>
			</xsl:if>
			<!-- MDS 2017-08-10 - In order to match the output of DT, that I believe to be incorrect, ref:para must be added when creating a desig.
				BUT ONLY FOR AU13 -->
			<xsl:if test="$streamID = ('AU13','HK09')">
				<ref:para>
					<xsl:attribute name="num" select="@count"/>
					<xsl:attribute name="para-scheme">
						<xsl:value-of select="/CASEDOC/case:body/case:headnote/case:info/case:reportercite[1]/ci:cite/ci:case/ci:caseref/ci:reporter/@value"/>
					</xsl:attribute>						
					<xsl:attribute name="para-scheme-type">reporter-abbrev</xsl:attribute>
				</ref:para>
			</xsl:if>
			<xsl:apply-templates select="node()"/>
		</xsl:element>
	</xsl:template>

	<xsl:template match="pnum/@count">
		<xsl:attribute name="value">
			<xsl:value-of select="."/>
		</xsl:attribute>
	</xsl:template>
	
	<xsl:template match="pnum[parent::case:constituent]">
		<xsl:apply-templates/>
	</xsl:template>
	
	<xsl:template match="searchhit">
		<xsl:apply-templates select="node()"/>
	</xsl:template>

</xsl:stylesheet>
