<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:source_cttr="http://www.lexis-nexis.com/glp/cttr"
	xmlns:cttr="urn:x-lexisnexis:content:citator:sharedservices:1"  xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita cttr source_cttr">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="citator-annotations">
	<title>cttr:annotations to cttr:refsection <lnpid>id-CA03-13230</lnpid></title>
	<body>
		<section>
			<title>Instructions</title>
			<p>Each occurence of <sourcexml>cttr:annotations</sourcexml> becomes a <targetxml>cttr:refsection</targetxml> within <targetxml>cttr:refs</targetxml>.</p>
			<p>The attribute value <sourcexml>cttr:annotations[@annotationtype="appealproc"]</sourcexml> becomes
				<targetxml>cttr:refsection[@reftype="appeal-proceedings"]</targetxml>. The <targetxml>ref:anchor/@id</targetxml> becomes <targetxml>"historyOfCase"</targetxml>.</p>
			<p>The attribute value <sourcexml>cttr:annotations[@annotationtype="secondary-sources"]</sourcexml> becomes
					<targetxml>cttr:refsection[@reftype="citing-publications"]</targetxml>.  The <targetxml>ref:anchor/@id</targetxml> becomes <targetxml>"commentaryReferring"</targetxml>.</p>
			<p>The attribute value <sourcexml>cttr:annotations[@annotationtype="subseqcases"]</sourcexml> becomes
				<targetxml>cttr:refsection[@reftype="citing-cases"]</targetxml>.  The <targetxml>ref:anchor/@id</targetxml> becomes <targetxml>"citingCases"</targetxml>.</p>
			<p>Convert each child <sourcexml>cttr:annot</sourcexml> to <targetxml>ref:refitem</targetxml> as detailed below, based on the value of
					<sourcexml>@annotationtype</sourcexml> on the parent <sourcexml>cttr:annotations</sourcexml> and the contents of each
					<sourcexml>cttr:annot</sourcexml>. </p>
		</section>
		<example>
			<title>Source XML</title>
			<codeblock>&lt;cttr:content&gt;
    &lt;cttr:annotations annotationtype="appealproc" searchtype="HISTORY"&gt;
        ...
    &lt;/cttr:annotations&gt;
&lt;/cttr:content&gt;      </codeblock>
			<title>Target XML</title>
			<codeblock>&lt;cttr:body&gt;
    &lt;cttr:refs&gt;
        &lt;cttr:refsection reftype="appeal-proceedings"&gt;
            &lt;ref:anchor id="historyOfCase"/&gt;
            ...
        &lt;/cttr:refsection&gt;
	&lt;cttr:refs&gt;
&lt;/cttr:body&gt;      </codeblock>
		</example>
		<example>
			<title>Source XML</title>
			<codeblock>&lt;cttr:content&gt;
    &lt;cttr:annotations annotationtype="secondary-sources" searchtype="HISTORY"&gt;
        ...
    &lt;/cttr:annotations&gt;
&lt;/cttr:content&gt;      </codeblock>
			<title>Target XML</title>
			<codeblock>&lt;cttr:body&gt;
    &lt;cttr:refs&gt;
        &lt;cttr:refsection reftype="citing-publications"&gt;
            &lt;ref:anchor id="commentaryReferring"/&gt;
            ...
        &lt;/cttr:refsection&gt;
	&lt;cttr:refs&gt;
&lt;/cttr:body&gt;      </codeblock>
		</example>
		<example>
			<title>Source XML</title>
			<codeblock>&lt;cttr:content&gt;
    &lt;cttr:annotations annotationtype="subseqcases" searchtype="HISTORY"&gt;
        ...
    &lt;/cttr:annotations&gt;
&lt;/cttr:content&gt;      </codeblock>
			<title>Target XML</title>
			<codeblock>&lt;cttr:body&gt;
    &lt;cttr:refs&gt;
        &lt;cttr:refsection reftype="citing-cases"&gt;
            &lt;ref:anchor id="citingCases"/&gt;
            ...
        &lt;/cttr:refsection&gt;
	&lt;cttr:refs&gt;
&lt;/cttr:body&gt;      </codeblock>
		</example>
		<section>
			<title>Changes</title>
			<p>2014-09-18: <ph id="change_20140918_sep">Added 3 <targetxml>ref:anchor/@id</targetxml> to support RHS linking for History of Case, Citing Cases, and Commentary Referring to this Case. CA QuickCite Issue #79</ph>.</p>
		</section>
	</body>
	</dita:topic>

	
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA03-Citator\Rosetta_cttr.annotations-to-LxAdv_cttr.refsection.dita  -->
	 
<!-- Sudhanshu Srivastava : Initially drafted this module , if required then please change accordingaly. -->
	<xsl:template match="source_cttr:annotations">
		<!--  Original Target XPath:  cttr:refsection   -->
			<cttr:refsection>
				<xsl:choose>
					<xsl:when test="@annotationtype='appealproc'">
						<xsl:attribute name="reftype" select="'appeal-proceedings'"/>
					</xsl:when>
					<xsl:when test="@annotationtype='secondary-sources'">
						<xsl:attribute name="reftype" select="'citing-publications'"/>
					</xsl:when>
					<xsl:when test="@annotationtype='subseqcases'">
						<xsl:attribute name="reftype" select="'citing-cases'"/>
					</xsl:when>
				</xsl:choose>
				
				<xsl:choose>
					<xsl:when test="@annotationtype='appealproc'">
						<xsl:element name="ref:anchor">
							<xsl:attribute name="id" select="'historyOfCase'"/>
						</xsl:element>
					</xsl:when>
					<xsl:when test="@annotationtype='secondary-sources'">
						<xsl:element name="ref:anchor">
							<xsl:attribute name="id" select="'commentaryReferring'"/>
						</xsl:element>
					</xsl:when>
					<xsl:when test="@annotationtype='subseqcases'">
						<xsl:element name="ref:anchor">
							<xsl:attribute name="id" select="'citingCases'"/>
						</xsl:element>
						<xsl:call-template name="cttrrefssummary">
							<xsl:with-param name="refsummarynode" select="source_cttr:annot"/>
						</xsl:call-template>
					</xsl:when>
				</xsl:choose>
				<xsl:apply-templates select="node()"/>
			</cttr:refsection>
	</xsl:template>
</xsl:stylesheet>