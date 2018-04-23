<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case"
	xmlns:source_cttr="http://www.lexis-nexis.com/glp/cttr"
	xmlns:cttr="urn:x-lexisnexis:content:citator:sharedservices:1"
	xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/"  xmlns:jurisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/jurisdiction-info/1/" version="2.0" exclude-result-prefixes="dita case source_cttr">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="case-courtinfo">
	<title>case:courtcode to doc:legacy-metadata <lnpid>id-CA03-13214</lnpid></title>
	<body>
		<section>
			<p><sourcexml>case:headnote/case:info/case:courtinfo/case:courtcode</sourcexml> is mapped to <targetxml>doc:metadata/doc:docinfo/doc:legacy-metadata[metadatasource="lbu-meta"]/meta/metaitem</targetxml>. The attributes of
					<targetxml>metaitem</targetxml> are populated as follows:
					<ul>
						<li><targetxml>metaitem/@name</targetxml> should be set to "case:courtcode".</li>
						<li><targetxml>metaitem/@value</targetxml> should be set to the value of <sourcexml>case:courtcode</sourcexml>.</li>
					</ul>
			</p>
			<note><sourcexml>case:courtcode</sourcexml> is only converted when it appears in
					<sourcexml>case:headnote</sourcexml>. Instances of
					<sourcexml>case:courtcode</sourcexml> that appear in
					<sourcexml>cttr:content//cttr:annot/case:info/case:courtinfo</sourcexml> are
				dropped.</note>
		</section>
		<example>
			<title>Source XML</title>
			<codeblock>
&lt;case:courtcode ln.user-displayed="false"&gt;NSSC&lt;/case:courtcode&gt;
</codeblock>
			<title>Target XML</title>
			<codeblock>
&lt;doc:metadata&gt;
    &lt;doc:docinfo doc-content-country="CA"&gt;
        ...
        &lt;doc:legacy-metadata metadatasource="lbu-meta"&gt;
            &lt;meta&gt;
                ...
                &lt;metaitem name="case:courtcode" value="NSSC"/&gt;
            &lt;/meta&gt;
        &lt;/doc:legacy-metadata&gt;
    &lt;/doc:docinfo&gt;
&lt;/doc:metadata&gt;
</codeblock>
		</example>
		<section>
			<title>Changes</title>
			<p>2014-10-16: <ph id="change_20141016_brt">Removed instruction to convert <sourcexml>case:courtcode</sourcexml> to <targetxml>jurisinfo:alternatecourtcode/@alternatecourtcode</targetxml>; this target element is now populated by <sourcexml>case:courtname</sourcexml>.</ph></p>
			<p>2012-11-07: <ph id="change_20121107_bh">Removed instruction to populate <targetxml>jurisinfo:courtinfo/@courtcode</targetxml>; updated to match other CA
					rules for <sourcexml>case:courtcode</sourcexml>.</ph></p>
		</section>
	</body>
	</dita:topic>
	<!--  
	<xsl:choose>
			<xsl:when test="parent::case:courtinfo/parent::case:info/parent::source_cttr:annot/parent::source_cttr:annotations">
				
			</xsl:when>
			<xsl:otherwise>
				<jurisinfo:alternatecourtcode>
					<xsl:attribute name="alternatecourtcode">
						<xsl:value-of select="."/>
					</xsl:attribute>
				</jurisinfo:alternatecourtcode>	
			</xsl:otherwise>
		</xsl:choose>-->


	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA03-Citator\Rosetta_case.courtcode-to-LxAdv_jurisinfo.courtinfo.dita  -->
	 
	 <!-- Sudhanshu Srivastava : Initiallt drafted this module on 26 may 2017, if changes required , please update accordingly. -->
	<xsl:template match="case:courtcode">
		<xsl:if test="parent::case:courtinfo/parent::case:info/parent::source_cttr:annot/parent::source_cttr:annotations">
			<jurisinfo:courtname>
				<xsl:if test="preceding-sibling::case:courtname">
					<xsl:value-of select="preceding-sibling::case:courtname"/>	
				</xsl:if>
				<xsl:if test="following-sibling::case:courtname">
					<xsl:value-of select="following-sibling::case:courtname"/>
				</xsl:if>
			</jurisinfo:courtname>
		</xsl:if>
	</xsl:template>
</xsl:stylesheet>