<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:source_cttr="http://www.lexis-nexis.com/glp/cttr"
    xmlns:cttr="urn:x-lexisnexis:content:citator:sharedservices:1" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:ci="http://www.lexis-nexis.com/ci" xmlns:caseinfo="http://www.lexisnexis.com/xmlschemas/content/legal/case-information/1/" xmlns:decision="http://www.lexisnexis.com/xmlschemas/content/legal/decision/1/" xmlns:lnci="http://www.lexisnexis.com/xmlschemas/content/shared/citations/1/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita case ci cttr source_cttr">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="caseinfo">
    <title>case:info <lnpid>id-CA03-13220</lnpid></title>
    <body>
        <section>
            <title>Instructions</title>
            <p><sourcexml>case:info</sourcexml> becomes <targetxml>cttr:caseinfo</targetxml>, and
                its children are converted as detailed below. </p>
			<note><sourcexml>ci:cite</sourcexml> is now mapped to two places:
                    <targetxml>cttr:caseinfo/cttr:citations/lnci:cite</targetxml> and
                    <targetxml>cttr:caseinfo/ref:citations/ref:cite4thisresource[@citetype="reporter"]/lnci:cite</targetxml>,
                see example. </note>
            <note> <p>Duplicate citations cannot have the same IDs or the document becomes invalid. To avoid this
                    validation error, append the IDs for the citations in
                    ref:citations/ref:cite4thisresource/lnci:cite with extra text (such as '_1') to
                    make them unique.</p></note>
        </section>
        <example>
            <title>Source XML</title>
            <codeblock>&lt;case:info&gt;
    &lt;case:casename&gt;R v. BIG M DRUG MART LTD {Part 1 of 3}&lt;/case:casename&gt;
    &lt;case:parallelcite&gt;
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
            &lt;ci:content&gt;
                &lt;ci:span spanid="cspan00055520"&gt;[1985] S.C.J. No. 17&lt;/ci:span&gt;
            &lt;/ci:content&gt;
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
            &lt;ci:content&gt;
                &lt;ci:span spanid="cspan00055521"&gt;[1985] A.C.S. no 17&lt;/ci:span&gt;
            &lt;/ci:content&gt;
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
            &lt;ci:content&gt;
                &lt;ci:span spanid="cspan00055522"&gt;[1985] 1 S.C.R. 295&lt;/ci:span&gt;
            &lt;/ci:content&gt;
        &lt;/ci:cite&gt;
    &lt;/case:parallelcite&gt;
    &lt;case:courtinfo&gt;
        &lt;case:courtname&gt;Supreme Court of Canada&lt;/case:courtname&gt;
        &lt;abbrvname ln.user-displayed="false"&gt;CASCC&lt;/abbrvname&gt;
        &lt;case:courtcode ln.user-displayed="false"&gt;CASC&lt;/case:courtcode&gt;
        &lt;case:juris ln.user-displayed="false"&gt;CD&lt;/case:juris&gt;
        &lt;case:dates&gt;
            &lt;case:decisiondate&gt;
                &lt;date day="24" month="04" year="1985"&gt;1985/4/24&lt;/date&gt;
            &lt;/case:decisiondate&gt;
        &lt;/case:dates&gt;
    &lt;/case:courtinfo&gt;
&lt;/case:info&gt;     </codeblock>
            <title>Target XML</title>
            <codeblock>&lt;cttr:caseinfo&gt;
    &lt;caseinfo:casename&gt;
        &lt;caseinfo:shortcasename&gt;R v. BIG M DRUG MART LTD {Part 1 of 3}&lt;/caseinfo:shortcasename&gt;
        &lt;caseinfo:caseshortname&gt;Gambler v. Canada (Attorney General)&lt;/caseinfo:caseshortname&gt;
    &lt;/caseinfo:casename&gt;
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
    &lt;jurisinfo:courtinfo&gt;
        &lt;jurisinfo:courtname normshortname="CASCC"&gt;Supreme Court of Canada&lt;/jurisinfo:courtname&gt;
        &lt;jurisinfo:jurisdiction&gt;
            &lt;jurisinfo:system&gt;CA&lt;/jurisinfo:system&gt;
        &lt;/jurisinfo:jurisdiction&gt;
    &lt;/jurisinfo:courtinfo&gt;
    &lt;decision:dates&gt;
        &lt;decision:decisiondate day="24" month="04" year="1985" normadate="1985-04-24"&gt;&lt;date-text&gt;1985/04/24&lt;/date-text&gt;&lt;/decision:decisiondate&gt;
    &lt;/decision:dates&gt;
&lt;/cttr:caseinfo&gt;      </codeblock>
        </example>
        <section>
            <title>Changes</title>
            <p>2014-12-17: <ph id="change_20141217_brt">Added @citetype="reporter" to <targetxml>ref:cite4thisresource</targetxml>. Addresses RFA#2083.</ph></p>
              <p>2014-02-12: <ph id="change_20140212_brt">Added note to modify the citation IDs to avoid duplicate IDs. Updated example.</ph></p>
          <p>2014-01-16: <ph id="change_20140116_sp">Added <targetxml>ref:citations/ref:cite4thisresource</targetxml> as additional target. Updated example.</ph></p>
            <p>2013-01-29: <ph id="change_20130129_rj">Changed target markup to reflect that country
                    code "CD" will be converted to "CA" in all instances. Changed target, example
                    for <sourcexml>case:casename</sourcexml> to
                        <targetxml>caseinfo:shortcasename</targetxml>.</ph></p>
            <p>2013-01-17: <ph id="change_20130117_dsf">Updated target example to include
                        <targetxml>@normdate</targetxml> in
                        <targetxml>decision:decisiondate</targetxml>.</ph></p>
			 <p>2012-11-13: <ph id="change_20121113_bh">Removed <targetxml>lnci:span</targetxml> as
                    per general <sourcexml>ci:cite</sourcexml> instructions.</ph></p>
           
        </section>
    </body>
	</dita:topic>


	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA03-Citator\Rosetta_case.info-to-LxAdv_cttr.caseinfo.dita  -->

<!-- Sudhanshu Srivastava : Initially drafted on 25 May 2017. If changes required , please update accordingly. -->
    <xsl:template match="case:info">
		<!--  Original Target XPath:  cttr:caseinfo   -->
        <xsl:choose>
            <xsl:when test="parent::case:headnote">
                <cttr:caseinfo>
                    <xsl:if test="case:casename">
                        <caseinfo:casename>
                            <xsl:apply-templates select="case:casename"/>
                        </caseinfo:casename>
                    </xsl:if>
                    <xsl:apply-templates select="case:altname"/>
                    <xsl:apply-templates select="case:parallelcite"/>
                    <xsl:apply-templates select="case:courtinfo"/>
                    <xsl:apply-templates select="case:courtinfo/case:dates"/>
                    
                    <!-- Calling template handling ci:cite that will be having all the ci:case and all ci:content. -->
                    <xsl:call-template name="refcitationsforhead">
                        <xsl:with-param name="refcitnode" select="case:parallelcite/ci:cite"/>
                    </xsl:call-template>
                </cttr:caseinfo>          
            </xsl:when>
            <xsl:otherwise>
                <cttr:caseinfo>
                    <xsl:if test="case:casename">
                    <caseinfo:casename>
                    <xsl:apply-templates select="case:casename"/>
                    </caseinfo:casename>
                    </xsl:if>
                    <xsl:apply-templates select="case:altname"/>
                    <xsl:apply-templates select="following-sibling::case:citations"/>
                    <xsl:apply-templates select="case:courtinfo"/>
                </cttr:caseinfo>
                <xsl:apply-templates select="preceding-sibling::source_cttr:use-group"/>
            </xsl:otherwise>
        </xsl:choose>
      
	</xsl:template>
</xsl:stylesheet>