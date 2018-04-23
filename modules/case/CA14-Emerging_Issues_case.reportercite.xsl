<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
    xmlns:lnci="http://www.lexisnexis.com/xmlschemas/content/shared/citations/1/"
    xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:ci="http://www.lexis-nexis.com/ci"
    xmlns:caseinfo="http://www.lexisnexis.com/xmlschemas/content/legal/case-information/1/"
    xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/"
    xmlns:seclaw="http://www.lexisnexis.com/xmlschemas/content/legal/secondary-law/1/" version="2.0"
    exclude-result-prefixes="dita case ci">

    <dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="case.reportercite">
        <title>case:reportercite <lnpid>id-CA14-35618</lnpid></title>
        <body>
            <section>
                <p><sourcexml>case:reportercite</sourcexml> becomes
                        <targetxml>ref:citations/ref:cite4thisresource</targetxml> within
                        <targetxml>seclaw:body/seclaw:digestgrp/seclaw:digest/seclaw:digestinfo/caseinfo:caseinfo</targetxml></p>
                <p>And generate <targetxml>@citetype</targetxml> as follows: <ul>
                        <li>The <b>first</b>
                            <sourcexml>case:reportercite</sourcexml> becomes
                                <targetxml>ref:cite4thisresource[@citetype="netletter"]</targetxml>.</li>
                        <li>Subsequent <sourcexml>case:reportercite</sourcexml> become
                                <targetxml>ref:cite4thisresource[@citetype="reporter"]</targetxml>.<ul>
                                <li>Except: Any subsequent <sourcexml>case:reportercite</sourcexml>
                                    that contains <u>only</u> pcdata becomes
                                        <targetxml>[@citetype="parallel"]</targetxml>.</li>
                            </ul></li>
                    </ul></p>
            </section>
            <section>
                <p>
                    <b>
                        <u>Special Rules for dpsi 0FTO "Supreme Court Netletter"</u>
                    </b>
                </p>
                <p>Content of dpsi 0FTO is unique and the rules above do <u>not</u> apply. There are
                    no "netletter" citations. Content includes "reporter" citations and docket
                    numbers. Special rules as follow (and see Example 6):<ul>
                        <li><sourcexml>case:reportercite</sourcexml> becomes
                                <targetxml>ref:cite4thisresource[@citetype="reporter"]</targetxml>.
                            That is,
                                <targetxml>seclaw:body/seclaw:digestgrp/seclaw:digest/seclaw:digestinfo/caseinfo:caseinfo/ref:citations/ref:cite4thisresource[@citetype="reporter"]</targetxml></li>
                        <li>Except: <sourcexml>case:reportercite</sourcexml> that contains
                                <u>only</u> pcdata becomes
                            <targetxml>caseinfo:docketnum</targetxml>. That is,
                                <targetxml>seclaw:body/seclaw:digestgrp/seclaw:digest/seclaw:digestinfo/caseinfo:caseinfo/caseinfo:docketnum</targetxml>.</li>
                    </ul></p>
            </section>
            <note>If source has sibling <sourcexml>case:reportercite</sourcexml> then output should
                be single <targetxml>ref:citations</targetxml> containing multiple
                    <targetxml>ref:cite4thisresource</targetxml>.</note>


            <example>
                <title>Example 1</title>
                <codeblock> &lt;dig:level&gt; &lt;case:reportercite&gt; &lt;ci:cite&gt;
                    &lt;ci:case&gt; &lt;ci:caseref ID="cref00000016" spanref="cspan00000016"&gt;
                    &lt;ci:reporter value="CARL"/&gt; &lt;ci:edition&gt; &lt;ci:date
                    year="2013"/&gt; &lt;/ci:edition&gt; &lt;ci:refnum num="3"/&gt;
                    &lt;/ci:caseref&gt; &lt;/ci:case&gt; &lt;ci:content&gt; &lt;ci:span
                    spanid="cspan00000016"&gt;CARL/2013-003&lt;/ci:span&gt; &lt;/ci:content&gt;
                    &lt;/ci:cite&gt; &lt;/case:reportercite&gt; &lt;case:reportercite&gt;
                    &lt;ci:cite&gt; &lt;ci:case&gt; &lt;ci:caseref ID="cref00000017"
                    spanref="cspan00000017"&gt; &lt;ci:reporter value="OJ"/&gt; &lt;ci:edition&gt;
                    &lt;ci:date year="2012"/&gt; &lt;/ci:edition&gt; &lt;ci:refnum num="5937"/&gt;
                    &lt;/ci:caseref&gt; &lt;/ci:case&gt; &lt;ci:content&gt; &lt;ci:span
                    spanid="cspan00000017"&gt;[2012] O.J. No. 5937&lt;/ci:span&gt;
                    &lt;/ci:content&gt; &lt;/ci:cite&gt; &lt;/case:reportercite&gt;
                    &lt;/dig:level&gt; </codeblock>
                <b>becomes</b>
                <codeblock> &lt;seclaw:body&gt; &lt;seclaw:digestgrp&gt; &lt;seclaw:digest&gt;
                    &lt;seclaw:digestinfo&gt; &lt;caseinfo:caseinfo&gt; &lt;ref:citations&gt;
                    &lt;ref:cite4thisresource citetype="netletter"&gt; &lt;lnci:cite&gt;
                    &lt;lnci:case&gt; &lt;lnci:caseref ID="cref00000016"&gt; &lt;lnci:reporter
                    value="CARL"/&gt; &lt;lnci:edition&gt; &lt;lnci:date year="2013"/&gt;
                    &lt;/lnci:edition&gt; &lt;lnci:refnum num="3"/&gt; &lt;/lnci:caseref&gt;
                    &lt;/lnci:case&gt; &lt;lnci:content&gt;CARL/2013-003&lt;/lnci:content&gt;
                    &lt;/lnci:cite&gt; &lt;/ref:cite4thisresource&gt; &lt;ref:cite4thisresource
                    citetype="reporter"&gt; &lt;lnci:cite&gt; &lt;lnci:case&gt; &lt;lnci:caseref
                    ID="cref00000017"&gt; &lt;lnci:reporter value="OJ"/&gt; &lt;lnci:edition&gt;
                    &lt;lnci:date year="2012"/&gt; &lt;/lnci:edition&gt; &lt;lnci:refnum
                    num="5937"/&gt; &lt;/lnci:caseref&gt; &lt;/lnci:case&gt;
                    &lt;lnci:content&gt;[2012] O.J. No. 5937&lt;/lnci:content&gt; &lt;/lnci:cite&gt;
                    &lt;/ref:cite4thisresource&gt; &lt;/ref:citations&gt; &lt;/caseinfo:caseinfo&gt;
                    &lt;/seclaw:digestinfo&gt; &lt;/seclaw:digest&gt; &lt;/seclaw:digestgrp&gt;
                    &lt;/seclaw:body&gt; </codeblock>
            </example>
            <section>
                <p>In case of multiple occurrence of <sourcexml>ci:cite</sourcexml> under
                        <sourcexml>case:reportercite</sourcexml> and separated with puncuation <b>(
                        , | : | ; )</b> then conversion need to generate separate
                        <targetxml>ref:cite4thisresource</targetxml> for every occurence of
                        <sourcexml>ci:cite</sourcexml> and suppress the puncuation.</p>
            </section>
            <example>
                <title>Example 2</title>
                <codeblock> &lt;dig:level&gt; &lt;case:reportercite&gt; &lt;!-- first occurrence
                    --&gt; &lt;/case:reportercite&gt; &lt;case:reportercite&gt; &lt;ci:cite&gt;
                    &lt;ci:case&gt; &lt;ci:caseref ID="cref00000017" spanref="cspan00000017"&gt;
                    &lt;ci:reporter value="OJ"/&gt; &lt;ci:edition&gt; &lt;ci:date year="2012"/&gt;
                    &lt;/ci:edition&gt; &lt;ci:refnum num="5937"/&gt; &lt;/ci:caseref&gt;
                    &lt;/ci:case&gt; &lt;ci:content&gt; &lt;ci:span spanid="cspan00000017"&gt;[2012]
                    O.J. No. 5937&lt;/ci:span&gt; &lt;/ci:content&gt; &lt;/ci:cite&gt;,
                    &lt;ci:cite&gt; &lt;ci:case&gt; &lt;ci:caseinfo spanref="cspan00000018"&gt;
                    &lt;ci:opinionnum num="7090"/&gt; &lt;ci:jurisinfo&gt; &lt;ci:can
                    courtcode="ONSC"/&gt; &lt;/ci:jurisinfo&gt; &lt;ci:decisiondate year="2012"/&gt;
                    &lt;/ci:caseinfo&gt; &lt;/ci:case&gt; &lt;ci:content&gt; &lt;ci:span
                    spanid="cspan00000018"&gt;2012 ONSC 7090&lt;/ci:span&gt; &lt;/ci:content&gt;
                    &lt;/ci:cite&gt; &lt;/case:reportercite&gt; &lt;/dig:level&gt; </codeblock>
                <b>becomes</b>
                <codeblock> &lt;seclaw:body&gt; &lt;seclaw:digestgrp&gt; &lt;seclaw:digest&gt;
                    &lt;seclaw:digestinfo&gt; &lt;caseinfo:caseinfo&gt; &lt;ref:citations&gt;
                    &lt;ref:cite4thisresource citetype="netletter"&gt; &lt;!-- first occurrence
                    --&gt; &lt;/ref:cite4thisresource&gt; &lt;ref:cite4thisresource
                    citetype="reporter"&gt; &lt;lnci:cite&gt; &lt;lnci:case&gt; &lt;lnci:caseref
                    ID="cref00000017"&gt; &lt;lnci:reporter value="OJ"/&gt; &lt;lnci:edition&gt;
                    &lt;lnci:date year="2012"/&gt; &lt;/lnci:edition&gt; &lt;lnci:refnum
                    num="5937"/&gt; &lt;/lnci:caseref&gt; &lt;/lnci:case&gt;
                    &lt;lnci:content&gt;[2012] O.J. No. 5937&lt;/lnci:content&gt; &lt;/lnci:cite&gt;
                    &lt;/ref:cite4thisresource&gt; &lt;!-- Suppress ,--&gt;
                    &lt;ref:cite4thisresource citetype="reporter"&gt; &lt;lnci:cite&gt;
                    &lt;lnci:case&gt; &lt;lnci:caseinfo&gt; &lt;lnci:opinionnum num="7090"/&gt;
                    &lt;lnci:jurisinfo&gt; &lt;lnci:can courtcode="ONSC"/&gt;
                    &lt;/lnci:jurisinfo&gt; &lt;lnci:decisiondate year="2012"/&gt;
                    &lt;/lnci:caseinfo&gt; &lt;/lnci:case&gt; &lt;lnci:content&gt;2012 ONSC
                    7090&lt;/lnci:content&gt; &lt;/lnci:cite&gt; &lt;/ref:cite4thisresource&gt;
                    &lt;/ref:citations&gt; &lt;/caseinfo:caseinfo&gt; &lt;/seclaw:digestinfo&gt;
                    &lt;/seclaw:digest&gt; &lt;/seclaw:digestgrp&gt; &lt;/seclaw:body&gt;
                </codeblock>
            </example>
            <section>
                <p>When the <sourcexml>case:reportercite</sourcexml> would begin with word <b>Full
                        text: </b> or <b>Texte intégral: </b> or <b>On appeal from: </b> or <b>En
                        appel de : </b>, then conversion should suppress these words along with the
                    trailing space. The presentation will add the language appropriate text.</p>
            </section>
            <example>
                <title>Example 3</title>
                <codeblock> &lt;dig:level&gt; &lt;case:reportercite&gt; &lt;!-- first occurrence
                    --&gt; &lt;/case:reportercite&gt; &lt;case:reportercite&gt;Full text:
                    &lt;ci:cite&gt; &lt;ci:case&gt; &lt;ci:caseref ID="cref00000006"
                    spanref="cspan00000006"&gt; &lt;ci:reporter value="OJ"/&gt; &lt;ci:edition&gt;
                    &lt;ci:date year="2013"/&gt; &lt;/ci:edition&gt; &lt;ci:refnum num="1472"/&gt;
                    &lt;/ci:caseref&gt; &lt;/ci:case&gt; &lt;ci:content&gt; &lt;ci:span
                    spanid="cspan00000006"&gt;[2013] O.J. No. 1472&lt;/ci:span&gt;
                    &lt;/ci:content&gt; &lt;/ci:cite&gt; &lt;/case:reportercite&gt;
                    &lt;/dig:level&gt; </codeblock>
                <b>becomes</b>
                <codeblock> &lt;seclaw:body&gt; &lt;seclaw:digestgrp&gt; &lt;seclaw:digest&gt;
                    &lt;seclaw:digestinfo&gt; &lt;caseinfo:caseinfo&gt; &lt;ref:citations&gt;
                    &lt;ref:cite4thisresource citetype="netletter"&gt; &lt;!-- first occurrence
                    --&gt; &lt;/ref:cite4thisresource&gt; &lt;ref:cite4thisresource
                    citetype="reporter"&gt; &lt;!-- Suppress Full text: --&gt; &lt;lnci:cite&gt;
                    &lt;lnci:case&gt; &lt;lnci:caseref ID="cref00000006"&gt; &lt;lnci:reporter
                    value="OJ"/&gt; &lt;lnci:edition&gt; &lt;lnci:date year="2013"/&gt;
                    &lt;/lnci:edition&gt; &lt;lnci:refnum num="1472"/&gt; &lt;/lnci:caseref&gt;
                    &lt;/lnci:case&gt; &lt;lnci:content&gt;[2013] O.J. No. 1472&lt;/lnci:content&gt;
                    &lt;/lnci:cite&gt; &lt;/ref:cite4thisresource&gt; &lt;/ref:citations&gt;
                    &lt;/caseinfo:caseinfo&gt; &lt;/seclaw:digestinfo&gt; &lt;/seclaw:digest&gt;
                    &lt;/seclaw:digestgrp&gt; &lt;/seclaw:body&gt; </codeblock>
            </example>
            <section>
                <p>When trailing comma present after <sourcexml>ci:cite</sourcexml>, then conversion
                    should suppress trailing comma along with space in the target.</p>
            </section>
            <example>
                <title>Example 4</title>
                <codeblock> &lt;dig:level&gt; &lt;case:reportercite&gt; &lt;!-- first occurrence
                    --&gt; &lt;/case:reportercite&gt; &lt;case:reportercite&gt; &lt;ci:cite&gt;
                    &lt;ci:case&gt; &lt;ci:caseref ID="cref00000006" spanref="cspan00000006"&gt;
                    &lt;ci:reporter value="OJ"/&gt; &lt;ci:edition&gt; &lt;ci:date year="2013"/&gt;
                    &lt;/ci:edition&gt; &lt;ci:refnum num="1472"/&gt; &lt;/ci:caseref&gt;
                    &lt;/ci:case&gt; &lt;ci:content&gt; &lt;ci:span spanid="cspan00000006"&gt;[2013]
                    O.J. No. 1472&lt;/ci:span&gt; &lt;/ci:content&gt; &lt;/ci:cite&gt;,
                    &lt;/case:reportercite&gt; &lt;/dig:level&gt; </codeblock>
                <b>becomes</b>
                <codeblock> &lt;seclaw:body&gt; &lt;seclaw:digestgrp&gt; &lt;seclaw:digest&gt;
                    &lt;seclaw:digestinfo&gt; &lt;caseinfo:caseinfo&gt; &lt;ref:citations&gt;
                    &lt;ref:cite4thisresource citetype="netletter"&gt; &lt;!-- first occurrence
                    --&gt; &lt;/ref:cite4thisresource&gt; &lt;ref:cite4thisresource
                    citetype="reporter"&gt; &lt;lnci:cite&gt; &lt;lnci:case&gt; &lt;lnci:caseref
                    ID="cref00000006"&gt; &lt;lnci:reporter value="OJ"/&gt; &lt;lnci:edition&gt;
                    &lt;lnci:date year="2013"/&gt; &lt;/lnci:edition&gt; &lt;lnci:refnum
                    num="1472"/&gt; &lt;/lnci:caseref&gt; &lt;/lnci:case&gt;
                    &lt;lnci:content&gt;[2013] O.J. No. 1472&lt;/lnci:content&gt; &lt;/lnci:cite&gt;
                    &lt;!-- Suppress , (comma with trailing space)--&gt;
                    &lt;/ref:cite4thisresource&gt; &lt;/ref:citations&gt; &lt;/caseinfo:caseinfo&gt;
                    &lt;/seclaw:digestinfo&gt; &lt;/seclaw:digest&gt; &lt;/seclaw:digestgrp&gt;
                    &lt;/seclaw:body&gt; </codeblock>
            </example>
            <section>
                <p>If case:reportercite directly contains text without any other sibling element,
                    then <sourcexml>case:reportercite</sourcexml> becomes
                        <targetxml>seclaw:body/seclaw:digestgrp/seclaw:digest/seclaw:digestinfo/caseinfo:caseinfo/ref:citations/ref:parallelcite/@citetype="parallel"/lnci:cite/lnci:content</targetxml>.</p>
            </section>
            <example>
                <title>Example 5</title>
                <codeblock> &lt;dig:level&gt; &lt;case:reportercite&gt; &lt;!-- first occurrence
                    --&gt; &lt;/case:reportercite&gt; &lt;case:reportercite&gt;BOUC/2007-067,
                    &lt;/case:reportercite&gt; &lt;/dig:level&gt; </codeblock>
                <b>becomes</b>
                <codeblock> &lt;seclaw:body&gt; &lt;seclaw:digestgrp&gt; &lt;seclaw:digest&gt;
                    &lt;seclaw:digestinfo&gt; &lt;caseinfo:caseinfo&gt; &lt;ref:citations&gt;
                    &lt;ref:cite4thisresource citetype="netletter"&gt; &lt;!-- first occurrence
                    --&gt; &lt;/ref:cite4thisresource&gt; &lt;ref:parallelcite
                    citetype="parallel"&gt; &lt;lnci:cite&gt;
                    &lt;lnci:content&gt;BOUC/2007-067&lt;/lnci:content&gt; &lt;/lnci:cite&gt;
                    &lt;!-- Suppress , (comma with trailing space)--&gt; &lt;/ref:parallelcite&gt;
                    &lt;/ref:citations&gt; &lt;/caseinfo:caseinfo&gt; &lt;/seclaw:digestinfo&gt;
                    &lt;/seclaw:digest&gt; &lt;/seclaw:digestgrp&gt; &lt;/seclaw:body&gt;
                </codeblock>
            </example>
            <example>
                <title>Example 6. dpsi 0FTO, special mapping</title>
                <codeblock> &lt;dig:level&gt; ... &lt;case:reportercite&gt; &lt;ci:cite&gt;
                    &lt;ci:case&gt; &lt;ci:caseref ID="cref00000003" spanref="cspan00000003"&gt;
                    &lt;ci:reporter value="SCJ"/&gt; &lt;ci:edition&gt; &lt;ci:date year="2013"/&gt;
                    &lt;/ci:edition&gt; &lt;ci:refnum num="73"/&gt; &lt;/ci:caseref&gt;
                    &lt;/ci:case&gt; &lt;ci:content&gt; &lt;ci:span spanid="cspan00000003"&gt;[2013]
                    S.C.J. No. 73&lt;/ci:span&gt; &lt;/ci:content&gt; &lt;/ci:cite&gt;
                    &lt;/case:reportercite&gt; &lt;case:reportercite&gt; &lt;ci:cite&gt;
                    &lt;ci:case&gt; &lt;ci:caseinfo spanref="cspan00000004"&gt; &lt;ci:opinionnum
                    num="73"/&gt; &lt;ci:jurisinfo&gt; &lt;ci:can courtcode="SCC"/&gt;
                    &lt;/ci:jurisinfo&gt; &lt;ci:decisiondate year="2013"/&gt; &lt;/ci:caseinfo&gt;
                    &lt;/ci:case&gt; &lt;ci:content&gt; &lt;ci:span spanid="cspan00000004"&gt;2013
                    SCC 73&lt;/ci:span&gt; &lt;/ci:content&gt; &lt;/ci:cite&gt;
                    &lt;/case:reportercite&gt; &lt;case:reportercite&gt;Court File No(s). 34466,
                    34467&lt;/case:reportercite&gt; ... &lt;/dig:level&gt; </codeblock>
                <b>becomes</b>
                <codeblock> &lt;seclaw:body&gt; &lt;seclaw:digestgrp&gt; &lt;seclaw:digest&gt;
                    &lt;seclaw:digestinfo&gt; &lt;caseinfo:caseinfo&gt; &lt;ref:citations&gt;
                    &lt;ref:cite4thisresource citetype="reporter"&gt; &lt;lnci:cite&gt;
                    &lt;lnci:case&gt; &lt;lnci:caseref ID="cref00000003"&gt; &lt;lnci:reporter
                    value="SCJ"/&gt; &lt;lnci:edition&gt; &lt;lnci:date year="2013"/&gt;
                    &lt;/lnci:edition&gt; &lt;lnci:refnum num="73"/&gt; &lt;/lnci:caseref&gt;
                    &lt;/lnci:case&gt; &lt;lnci:content&gt;[2013] S.C.J. No. 73&lt;/lnci:content&gt;
                    &lt;/lnci:cite&gt; &lt;/ref:cite4thisresource&gt; &lt;ref:cite4thisresource
                    citetype="reporter"&gt; &lt;lnci:cite&gt; &lt;lnci:case&gt;
                    &lt;lnci:caseinfo&gt; &lt;lnci:opinionnum num="73"/&gt; &lt;lnci:jurisinfo&gt;
                    &lt;lnci:can courtcode="SCC"/&gt; &lt;/lnci:jurisinfo&gt; &lt;lnci:decisiondate
                    year="2013"/&gt; &lt;/lnci:caseinfo&gt; &lt;/lnci:case&gt;
                    &lt;lnci:content&gt;2013 SCC 73&lt;/lnci:content&gt; &lt;/lnci:cite&gt;
                    &lt;/ref:cite4thisresource&gt; &lt;/ref:citations&gt;
                    &lt;caseinfo:docketnum&gt;Court File No(s). 34466,
                    34467&lt;/caseinfo:docketnum&gt; &lt;/caseinfo:caseinfo&gt;
                    &lt;/seclaw:digestinfo&gt; &lt;/seclaw:digest&gt; &lt;/seclaw:digestgrp&gt;
                    &lt;/seclaw:body&gt; </codeblock>
            </example>
            <section>
                <title>Changes</title>
                <p>2015-09-09: <ph id="change_20150909_jm">Changed special rules for dpsi 0FTO.
                        Removed mapping to
                            <targetxml>ref:cite4thisresource[@citetype="netletter"]</targetxml>. RFA
                        123.</ph></p>
                <p>2015-08-25: <ph id="change_20150825_jm">Added special rule for dpsi 0FTO. Creates
                        mapping to <targetxml>caseinfo:docketnum</targetxml>. The target xpath is
                        new. RFA 136.</ph></p>
                <p>2015-05-28: <ph id="change_20150528_jm">Modified rule. Changed
                            <targetxml>@citetype</targetxml> value that is applied to the first
                        citation. Formerly <targetxml>@citetype="journal"</targetxml>. Now
                            <targetxml>@citetype="netletter"</targetxml>. RFA 23.</ph></p>
                <p>2015-04-27: <ph id="change_20150427_jm">New rule. Adds value
                            <targetxml>@citetype="journal"</targetxml>. To be applied to the first
                        citation. Canada is remediating source data so that the journal cite always
                        comes first. RFA 3 and 23.</ph></p>
                <p>2015-03-26: <ph id="change_20150326_jm">Added note on sibling
                            <sourcexml>case:reportercite</sourcexml>, to map within single
                            <targetxml>ref:citations</targetxml> wrapper. No change to target
                        xpaths. RFA 12.</ph></p>
                <p>2015-02-20: <ph id="change_20150220_PS">Created.</ph></p>
            </section>
        </body>
    </dita:topic>

    <!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
    <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA14-Emerging_Issues\case.reportercite.dita  -->
    <!--<xsl:message>CA14-Emerging_Issues_case.reportercite.xsl requires manual development!</xsl:message> -->

    <!--Vikas Rohilla : Template to match the first case:reportercite and child elements then create the wrapper ref:citations-->
    <xsl:template match="case:reportercite[child::*][not(preceding-sibling::*[1][self::case:reportercite[child::*]])]">
        <ref:citations>
            <xsl:apply-templates select="*"/>
            <xsl:if test="following-sibling::*[1][self::case:reportercite[child::*]]">
                <xsl:call-template name="following-reportercite">
                    <xsl:with-param name="node" select="following-sibling::*[1][self::case:reportercite[child::*]]"/>
                </xsl:call-template>
            </xsl:if>
        </ref:citations>
    </xsl:template>

    <!-- Vikas Rohilla : Tempalte name following-reportercite  -->
    <xsl:template name="following-reportercite">
        <xsl:param name="node"/>
        <xsl:apply-templates select="$node" mode="following-reportercite"/>
        <xsl:if test="$node/following-sibling::*[1][self::case:reportercite[child::*]]">
            <xsl:call-template name="following-reportercite">
                <xsl:with-param name="node" select="$node/following-sibling::*[1][self::case:reportercite[child::*]]"/>
            </xsl:call-template>
        </xsl:if>
    </xsl:template>
    
    <!-- Vikas Rohilla : Template to match the case:reportercite with the mode following-reportercite   -->
    <xsl:template match="case:reportercite" mode="following-reportercite">
        <xsl:apply-templates select="*"/>
    </xsl:template>
    
    <!-- Vikas Rohilla : Supressed the case:reportercite in current mode handeled in to the following-reportercite mode    -->
    <xsl:template match="case:reportercite[preceding-sibling::*[1][self::case:reportercite[child::*]]]"/>
    
    <!-- Vikas Rohilla : Template to match the case:reportercite having the text() only and creates the caseinfo:docketnum    -->
    <xsl:template match="case:reportercite[not(child::*)]" priority="25">
        <xsl:element name="caseinfo:docketnum">
            <xsl:apply-templates select="node() | @*"/>
        </xsl:element>
    </xsl:template>
    
    <!--Vikas Rohilla : Template to match the ci:cite and the parent is case:reportercite creates the ref:cite4thisresource    -->
    <xsl:template match="ci:cite[parent::case:reportercite]">
        <ref:cite4thisresource>
            <xsl:attribute name="citetype">
                <xsl:choose>
                    <xsl:when test="parent::case:reportercite[not(preceding-sibling::case:reportercite)]">
                        <xsl:value-of select="'netletter'"/>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:value-of select="'reporter'"/>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:attribute>
            <lnci:cite>
                <xsl:apply-templates select="@* | node()"/>
            </lnci:cite>
        </ref:cite4thisresource>
    </xsl:template>

</xsl:stylesheet>
