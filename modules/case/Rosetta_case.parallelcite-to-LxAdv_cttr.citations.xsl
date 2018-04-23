<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:ci="http://www.lexis-nexis.com/ci" xmlns:source_cttr="http://www.lexis-nexis.com/glp/cttr"
    xmlns:cttr="urn:x-lexisnexis:content:citator:sharedservices:1" xmlns:lnci="http://www.lexisnexis.com/xmlschemas/content/shared/citations/1/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita case ci source_cttr">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="case-parallelcite">
	<title>case:parallelcite to cttr:citations <lnpid>id-CA03-13222</lnpid></title>
	<body>
		<section>
			<title>Instructions</title>
		    <p><sourcexml>case:parallelcite</sourcexml> becomes <targetxml>cttr:citations</targetxml> and
                    <targetxml>ref:citations/ref:cite4thisresource[@citetype="reporter"]</targetxml>,
                and the citations are duplicated in each path.</p>
		    <note>Duplicate citations cannot have the same IDs or the document becomes invalid. To avoid
                this validation error, append the IDs for the citations in
                ref:citations/ref:cite4thisresource/lnci:cite with extra text (such as '_1') to make
                them unique.</note>
		    <p>All the <sourcexml>ci:cite</sourcexml> elements within <sourcexml>case:parallelcite</sourcexml> are converted to <targetxml>lnci:cite</targetxml>
				as detailed in the entry for <sourcexml>ci:cite</sourcexml> in the General Markup section.. </p>
		   
		</section>
		<example>
			<title>Source XML</title>
			<codeblock>&lt;case:parallelcite&gt;
    &lt;ci:cite&gt;
        &lt;ci:case&gt;
            &lt;ci:caseref ID="cref00055520" spanref="cspan00055520"&gt;
                &lt;ci:reporter value="SCJ"/&gt;
                &lt;ci:edition&gt;
                    &lt;ci:date year="1985"/&gt;
                &lt;/ci:edition&gt;
                &lt;ci:refnum num="17"/&gt;
            &lt;/ci:caseref&gt;
        &lt;/ci:case&gt;
        &lt;ci:content&gt;&lt;ci:span spanid="cspan00055520"&gt;[1985] S.C.J. No. 17&lt;/ci:span&gt;&lt;/ci:content&gt;
    &lt;/ci:cite&gt;
    &lt;ci:cite&gt;
        &lt;ci:case&gt;
            &lt;ci:caseref ID="cref00055521" spanref="cspan00055521"&gt;
                &lt;ci:reporter value="SCJ"/&gt;
                &lt;ci:edition&gt;
                    &lt;ci:date year="1985"/&gt;
                &lt;/ci:edition&gt;
                &lt;ci:refnum num="17"/&gt;
            &lt;/ci:caseref&gt;
        &lt;/ci:case&gt;
        &lt;ci:content&gt;&lt;ci:span spanid="cspan00055521"&gt;[1985] A.C.S. no 17&lt;/ci:span&gt;&lt;/ci:content&gt;
    &lt;/ci:cite&gt;
    &lt;ci:cite&gt;
        &lt;ci:case&gt;
            &lt;ci:caseref ID="cref00055522" spanref="cspan00055522"&gt;
                &lt;ci:reporter value="SCR"/&gt;
                &lt;ci:volume num="1"/&gt;
                &lt;ci:edition&gt;
                    &lt;ci:date year="1985"/&gt;
                &lt;/ci:edition&gt;
                &lt;ci:page num="295"/&gt;
            &lt;/ci:caseref&gt;
        &lt;/ci:case&gt;
        &lt;ci:content&gt;&lt;ci:span spanid="cspan00055522"&gt;[1985] 1 S.C.R. 295&lt;/ci:span&gt;&lt;/ci:content&gt;
    &lt;/ci:cite&gt;
&lt;/case:parallelcite&gt;</codeblock>
			<title>Target XML</title>
			<codeblock>&lt;cttr:caseinfo&gt;
&lt;cttr:citations&gt;
    &lt;lnci:cite&gt;
        &lt;lnci:case&gt;
            &lt;lnci:caseref ID="cref00055520" spanref="cspan00055520"&gt;
                &lt;lnci:reporter value="SCJ"/&gt;
                &lt;lnci:edition&gt;
                    &lt;lnci:date year="1985"/&gt;
                &lt;/lnci:edition&gt;
                &lt;lnci:refnum num="17"/&gt;
            &lt;/lnci:caseref&gt;
        &lt;/lnci:case&gt;
        &lt;lnci:content&gt;[1985] S.C.J. No. 17&lt;/lnci:content&gt;
    &lt;/lnci:cite&gt;
    &lt;lnci:cite&gt;
        &lt;lnci:case&gt;
            &lt;lnci:caseref ID="cref00055521" spanref="cspan00055521"&gt;
                &lt;lnci:reporter value="SCJ"/&gt;
                &lt;lnci:edition&gt;
                    &lt;lnci:date year="1985"/&gt;
                &lt;/lnci:edition&gt;
                &lt;lnci:refnum num="17"/&gt;
            &lt;/lnci:caseref&gt;
        &lt;/lnci:case&gt;
        &lt;lnci:content&gt;[1985] A.C.S. no 17&lt;/lnci:content&gt;
    &lt;/lnci:cite&gt;
    &lt;lnci:cite&gt;
        &lt;lnci:case&gt;
            &lt;lnci:caseref ID="cref00055522" spanref="cspan00055522"&gt;
                &lt;lnci:reporter value="SCR"/&gt;
                &lt;lnci:volume num="1"/&gt;
                &lt;lnci:edition&gt;
                    &lt;lnci:date year="1985"/&gt;
                &lt;/lnci:edition&gt;
                &lt;lnci:page num="295"/&gt;
            &lt;/lnci:caseref&gt;
        &lt;/lnci:case&gt;
        &lt;lnci:content&gt;[1985] 1 S.C.R. 295&lt;/lnci:content&gt;
    &lt;/lnci:cite&gt;
&lt;/cttr:citations&gt;
&lt;ref:citations&gt;
    &lt;ref:cite4thisresource citetype="reporter"&gt;
        &lt;lnci:cite&gt;
        &lt;lnci:case&gt;
            &lt;lnci:caseref ID="cref00055520_1" spanref="cspan00055520"&gt;
                &lt;lnci:reporter value="SCJ"/&gt;
                &lt;lnci:edition&gt;
                    &lt;lnci:date year="1985"/&gt;
                &lt;/lnci:edition&gt;
                &lt;lnci:refnum num="17"/&gt;
            &lt;/lnci:caseref&gt;
        &lt;/lnci:case&gt;
        &lt;lnci:content&gt;[1985] S.C.J. No. 17&lt;/lnci:content&gt;
    &lt;/lnci:cite&gt;
    &lt;lnci:cite&gt;
        &lt;lnci:case&gt;
            &lt;lnci:caseref ID="cref00055521_1" spanref="cspan00055521"&gt;
                &lt;lnci:reporter value="SCJ"/&gt;
                &lt;lnci:edition&gt;
                    &lt;lnci:date year="1985"/&gt;
                &lt;/lnci:edition&gt;
                &lt;lnci:refnum num="17"/&gt;
            &lt;/lnci:caseref&gt;
        &lt;/lnci:case&gt;
        &lt;lnci:content&gt;[1985] A.C.S. no 17&lt;/lnci:content&gt;
    &lt;/lnci:cite&gt;
    &lt;lnci:cite&gt;
        &lt;lnci:case&gt;
            &lt;lnci:caseref ID="cref00055522_1" spanref="cspan00055522"&gt;
                &lt;lnci:reporter value="SCR"/&gt;
                &lt;lnci:volume num="1"/&gt;
                &lt;lnci:edition&gt;
                    &lt;lnci:date year="1985"/&gt;
                &lt;/lnci:edition&gt;
                &lt;lnci:page num="295"/&gt;
            &lt;/lnci:caseref&gt;
        &lt;/lnci:case&gt;
        &lt;lnci:content&gt;[1985] 1 S.C.R. 295&lt;/lnci:content&gt;
    &lt;/lnci:cite&gt;
    &lt;/ref:cite4thisresource&gt;
    &lt;/ref:citations&gt;
    &lt;/cttr:caseinfo&gt;     		</codeblock>
		</example>
		<section>
			<title>Changes</title>
		    <p>2014-12-17: <ph id="change_20141217_brt">Added @citetype="reporter" to
                        <targetxml>ref:cite4thisresource</targetxml>. Addresses RFA#2083.</ph></p>
			<p>2012-11-13: <ph id="change_20121113_bh">Removed <targetxml>lnci:span</targetxml> as per general <sourcexml>ci:cite</sourcexml> instructions.</ph></p>
		    <p>2014-02-12: <ph id="change_20140112_brt">Added instruction to duplicate the ciatations and
                    a note to modify the citation ID on the duplicate. Modified example.</ph></p>
		    
		</section>
		</body>
	</dita:topic>


	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA03-Citator\Rosetta_case.parallelcite-to-LxAdv_cttr.citations.dita  -->

    <!-- Sudanshu Srivastava : Initially drafted this on 26 May 2017. If changes required , please update accordingly. -->
    <xsl:template match="case:parallelcite">
		<!--  Original Target XPath:  cttr:citations   -->
		<cttr:citations>
		  <xsl:apply-templates/>
		</cttr:citations>
	</xsl:template>
</xsl:stylesheet>