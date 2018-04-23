<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:source_lnci="http://www.lexis-nexis.com/lnci" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" xmlns:seclaw="http://www.lexisnexis.com/xmlschemas/content/legal/secondary-law/1/" xmlns:lnci="http://www.lexisnexis.com/xmlschemas/content/shared/citations/1/" version="2.0" exclude-result-prefixes="dita case source_lnci">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="case.parallelcite">
    <title>case:parallelcite <lnpid>id-CA02DS-12825</lnpid></title>
    <body>
        <section>
            <ul>
                <li>
                    <sourcexml>case:parallelcite</sourcexml> becomes
                    <targetxml>ref:parallelcite@citetype="parallel"</targetxml> is a child
                    element of
                    <targetxml>seclaw:seclaw/seclaw:body/seclaw:level/seclaw:bodytext/seclaw:digestgrp/seclaw:digest/seclaw:digestinfo/caseinfo:caseinfo/ref:citations/ref:parallelcite</targetxml>
                    <note>
                        <p><b>Discussion Board Issue: </b> reporter needs to be used to reorder the
                            list of cites so that reporter cite is in a list of reporter cites and
                            parallel cites are marked up as reporter cites. This will not be an
                            issue if a reload of the data fixes the order.</p>
                        <p><b>Update: </b> The order of the cites is driven by the source document
                            and a future reload of the source document is required to get the cites
                            in the LBU desired order.</p>
                    </note>
                    <pre>

&lt;case:parallelcite&gt;
    &lt;ci:cite&gt;
        &lt;ci:case&gt;
            &lt;ci:caseref ID="cref00149229" spanref="cspan00149229"&gt;
                &lt;ci:reporter value="CCS"/&gt;
                &lt;ci:edition&gt;
                    &lt;ci:date year="2007"/&gt;
                &lt;/ci:edition&gt;
                &lt;ci:refnum num="4486"/&gt;
            &lt;/ci:caseref&gt;
        &lt;/ci:case&gt;
        &lt;ci:content&gt;
            &lt;ci:span spanid="cspan00149229"&gt;[2007] C.C.S. No. 4486&lt;/ci:span&gt;
        &lt;/ci:content&gt;
    &lt;/ci:cite&gt;
&lt;/case:parallelcite&gt;


<b>Becomes</b>
                        

&lt;seclaw:seclaw&gt;
    &lt;seclaw:body&gt;
        &lt;seclaw:level&gt;
            &lt;seclaw:bodytext&gt;
                &lt;seclaw:digestgrp&gt;
                    &lt;seclaw:digest&gt;
                        &lt;seclaw:digestinfo&gt;
                            &lt;caseinfo:caseinfo&gt;
                                &lt;ref:citations&gt;
                                    &lt;ref:parallelcite citetype="parallel"&gt;
                                        &lt;lnci:cite&gt;
                                            &lt;lnci:case&gt;
                                                &lt;lnci:caseref ID="cref00149229"&gt;
                                                  &lt;lnci:reporter value="CCS"/&gt;
                                                  &lt;lnci:edition&gt;
                                                  &lt;lnci:date year="2007"/&gt;
                                                  &lt;/lnci:edition&gt;
                                                  &lt;lnci:refnum num="4486"/&gt;
                                                &lt;/lnci:caseref&gt;
                                            &lt;/lnci:case&gt;
                                            &lt;lnci:content&gt; [2007] C.C.S. No. 4486 &lt;/lnci:content&gt;
                                        &lt;/lnci:cite&gt;
                                    &lt;/ref:parallelcite&gt;
                                &lt;/ref:citations&gt;
                            &lt;/caseinfo:caseinfo&gt;
                        &lt;/seclaw:digestinfo&gt;
                    &lt;/seclaw:digest&gt;
                &lt;/seclaw:digestgrp&gt;
            &lt;/seclaw:bodytext&gt;
        &lt;/seclaw:level&gt;
    &lt;/seclaw:body&gt;
&lt;/seclaw:seclaw&gt;

                    </pre>
                    <p>
                        <note>When text appears inside <sourcexml>case:parallelcite</sourcexml>,
                            then conversion need to move the pinpoint information into
                            <sourcexml>lnci:content</sourcexml>. This applies to CANADA
                            ONLY.</note> Please see below example for the same:</p>
                    <pre>

&lt;case:parallelcite&gt;
    &lt;ci:cite&gt;
        &lt;ci:case&gt;
            &lt;ci:caseref ID="cref00054999" spanref="cspan00054999"&gt;
                &lt;ci:reporter value="SCR"/&gt;
                &lt;ci:volume num="32"/&gt;
                &lt;ci:page num="147"/&gt;
            &lt;/ci:caseref&gt;
        &lt;/ci:case&gt;
        &lt;ci:content&gt;
            &lt;ci:span spanid="cspan00054999"&gt;32 S.C.R. 147&lt;/ci:span&gt;
        &lt;/ci:content&gt;
    &lt;/ci:cite&gt; at 152
&lt;/case:parallelcite&gt;
    
</pre>
                    <b>Becomes</b>
                    <pre>
&lt;seclaw:seclaw&gt;
    &lt;seclaw:body&gt;
        &lt;seclaw:level&gt;
            &lt;seclaw:bodytext&gt;
                &lt;seclaw:digestgrp&gt;
                    &lt;seclaw:digest&gt;
                        &lt;seclaw:digestinfo&gt;
                            &lt;caseinfo:caseinfo&gt;
                                &lt;ref:citations&gt;
                                    &lt;ref:parallelcite citetype="parallel"&gt;
                                        &lt;lnci:cite&gt;
                                            &lt;lnci:case&gt;
                                                &lt;lnci:caseref ID="cref00054999"&gt;
                                                    &lt;lnci:reporter value="SCR"/&gt;
                                                    &lt;lnci:volume num="32"/&gt;
                                                    &lt;lnci:page num="147"/&gt;
                                                &lt;/lnci:caseref&gt;
                                            &lt;/lnci:case&gt;
                                            &lt;lnci:content&gt;32 S.C.R. 147 at 152&lt;/lnci:content&gt;
                                        &lt;/lnci:cite&gt;
                                    &lt;/ref:parallelcite&gt;
                                &lt;/ref:citations&gt;
                            &lt;/caseinfo:caseinfo&gt;
                        &lt;/seclaw:digestinfo&gt;
                    &lt;/seclaw:digest&gt;
                &lt;/seclaw:digestgrp&gt;
            &lt;/seclaw:bodytext&gt;
        &lt;/seclaw:level&gt;
    &lt;/seclaw:body&gt;
&lt;/seclaw:seclaw&gt;
    
             </pre>
                    <note>If <sourcexml>case:parallelcite</sourcexml> directly contains text without
                        any child element, then <sourcexml>case:parallelcite</sourcexml> becomes
                        <targetxml>/ref:citations/ref:parallelcite/lnci:cite/lnci:content</targetxml>.</note>
                    But the below specific input example is a data error, that will be fixed, hence
                    text "<sourcexml>2008 FC-974</sourcexml>" encountered within
                    <sourcexml>case:parallelcite</sourcexml> is a data error, so conversion will
                    convert as per conversion rule. <pre>

&lt;case:info&gt;
    &lt;case:parallelcite&gt;2008 FC-974&lt;/case:parallelcite&gt;
&lt;/case:info&gt;


<b>Becomes</b>

&lt;seclaw:seclaw&gt;
    &lt;seclaw:body&gt;
        &lt;seclaw:level&gt;
            &lt;seclaw:bodytext&gt;
                &lt;seclaw:digestgrp&gt;
                    &lt;seclaw:digest&gt;
                        &lt;seclaw:digestinfo&gt;
                            &lt;caseinfo:caseinfo&gt;
                                &lt;ref:citations&gt;
                                    &lt;ref:parallelcite citetype="parallel"&gt;
                                        &lt;lnci:cite&gt;
                                            &lt;lnci:content&gt;2008 FC-974&lt;/lnci:content&gt;
                                        &lt;/lnci:cite&gt;
                                    &lt;/ref:parallelcite&gt;
                                &lt;/ref:citations&gt;
                            &lt;/caseinfo:caseinfo&gt;
                        &lt;/seclaw:digestinfo&gt;
                    &lt;/seclaw:digest&gt;
                &lt;/seclaw:digestgrp&gt;
            &lt;/seclaw:bodytext&gt;
        &lt;/seclaw:level&gt;
    &lt;/seclaw:body&gt;
&lt;/seclaw:seclaw&gt;
 </pre>
                </li>
            </ul>
        </section>
        <section>
            <title>Changes</title>
            <p>2014-12-04 <ph id="change_20141204_AS">Webteam# 284027 - Xpath clarification for ref:parallelcite  <b>DB item # 2058</b></ph></p>
            <p>2014-06-11: <ph id="change_20140611_SSX">Updated instruction and example to add
                attribute <targetxml>ref:parallelcite/@citetype="parallel"</targetxml> in
                target.</ph></p>
            <p>2014-04-28 <ph id="change_20140428_AS">case:parallelcite mapping<b>DB item # 81</b></ph></p>
            <p>2014-04-18 <ph id="change_20140416_AS">ref:citation in head<b>DB item # 1152,1156</b></ph></p>
            <p>2014-03-26 <ph id="change_20140326_SEP">Clarify that parallelcite will map to digest:body and still get the value "parallel".<b>DB item # 145</b></ph></p>
        </section>
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA02-Case_Summaries\CA02DS_DIGESTDOC_to_seclaw\case.parallelcite.dita  -->
 

    <!-- Vikas Rohilla : Template to match the case:parallelcite and create ref:parallelcite -->
    <xsl:template match="case:parallelcite">
        <ref:citations>
        <xsl:choose>
            <xsl:when test="count(child::node())&gt;1">
                <xsl:for-each select="child::node()">
                    <ref:parallelcite>
                        <xsl:attribute name="citetype">
                            <xsl:text>parallel</xsl:text>
                        </xsl:attribute>
                        <lnci:cite>
                            <xsl:apply-templates select="@* | node()"/>
                        </lnci:cite>
                    </ref:parallelcite>
                </xsl:for-each>
            </xsl:when>
            <xsl:otherwise>
                <ref:parallelcite>
                    <xsl:attribute name="citetype">
                        <xsl:text>parallel</xsl:text>
                    </xsl:attribute>
                    <xsl:apply-templates select="@* | node()"/>
                </ref:parallelcite>
            </xsl:otherwise>
        </xsl:choose>
        </ref:citations>
    </xsl:template>

</xsl:stylesheet>