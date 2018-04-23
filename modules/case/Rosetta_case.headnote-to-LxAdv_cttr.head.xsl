<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:ci="http://www.lexis-nexis.com/ci" xmlns:source_cttr="http://www.lexis-nexis.com/glp/cttr"
	xmlns:cttr="urn:x-lexisnexis:content:citator:sharedservices:1"  xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita case ci cttr source_cttr">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="citator-head">
	<title>cttr:body/case:headnote to cttr:head/cttr:citeddecision <lnpid>id-CA03-13219</lnpid></title>
	<body>
		<section>
			<title>Instructions</title>
			<p><sourcexml>cttr:body/case:headnote</sourcexml> becomes <targetxml>cttr:head/cttr:citeddecision</targetxml>. The <targetxml>cttr:head</targetxml> element
				should be created as a child of <targetxml>cttr:citator</targetxml> for all converted files. </p>
			<p><sourcexml>case:info</sourcexml> is converted to <targetxml>cttr:head/cttr:citeddecision/cttr:caseinfo</targetxml> as detailed in the General Markup
				section under <sourcexml>case:info</sourcexml>. </p>
			<note><sourcexml>ci:cite</sourcexml> is now mapped to two places: <targetxml>cttr:caseinfo/cttr:citations/lnci:cite</targetxml> and 
			<targetxml>cttr:caseinfo/ref:citations/ref:cite4thisresource[@citetype="reporter"]/lnci:cite</targetxml>, see example.</note>
			<note> <p>Duplicate citations cannot have the same IDs or the document becomes invalid. To avoid this
				validation error, append the IDs for the citations in ref:citations/ref:cite4thisresource/lnci:cite with extra text (such as '_1') to
				make them unique.</p></note>
		</section>
		<example>
			<title>Source XML</title>
			<codeblock>&lt;cttr:body&gt;
    &lt;case:headnote&gt;
		&lt;case:info&gt;
			&lt;ci:cite&gt;
				...
			&lt;/ci:cite&gt;
		&lt;/case:info&gt;
	&lt;/case:headnote&gt;
&lt;/cttr:body&gt;</codeblock>
			<title>Target XML </title>
			<codeblock>&lt;cttr:citator&gt;
    &lt;cttr:head&gt;
		&lt;cttr:citeddecision&gt;
			&lt;cttr:caseinfo&gt;
				&lt;cttr:citations&gt;
					&lt;lnci:cite&gt;
						...
					&lt;/lnci:cite&gt;
				&lt;/cttr:citations&gt;
				&lt;ref:citations&gt;
					&lt;ref:cite4thisresource citetype="reporter"&gt;
						&lt;lnci:cite&gt;
							...
						&lt;/lnci:cite&gt;
					&lt;/ref:cite4thisresource&gt;
				&lt;/ref:citations&gt;
			&lt;/cttr:caseinfo&gt;
		&lt;/cttr:citeddecision&gt;
    &lt;/cttr:head&gt;
&lt;/cttr:citator&gt;      </codeblock>
		</example>
        <section>
            <title>Changes</title>
        	<p>2014-12-17: <ph id="change_20141217_brt">Added @citetype="reporter" to <targetxml>ref:cite4thisresource</targetxml>. Addresses RFA #2083.</ph></p>
        	<p>2014-02-12: <ph id="change_20140212_brt">Added note to modify the citation IDs to avoid duplicate IDs.</ph></p>
        	<p>2014-01-16: <ph id="change_20140116_sp">Added <targetxml>ref:citations/ref:cite4thisresource</targetxml> as additional target. Updated example.</ph></p>
        </section>
	</body>
	</dita:topic>

	
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA03-Citator\Rosetta_case.headnote-to-LxAdv_cttr.head.dita  -->
	 
<!-- Sudhanshu Srivastava initially drafted this module on 23-May-2017. -->
	<xsl:template match="case:headnote">
		<!--  Original Target XPath:  cttr:head/cttr:citeddecision   -->
		<cttr:head>
			<cttr:citeddecision>
				<xsl:apply-templates select="@*|node()"/>
			</cttr:citeddecision>
		</cttr:head>
	</xsl:template>
	
</xsl:stylesheet>