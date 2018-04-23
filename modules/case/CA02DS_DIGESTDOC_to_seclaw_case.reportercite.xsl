<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:ci="http://www.lexis-nexis.com/ci" xmlns:source_lnci="http://www.lexis-nexis.com/lnci" xmlns:lnci="http://www.lexisnexis.com/xmlschemas/content/shared/citations/1/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" xmlns:caseinfo="http://www.lexisnexis.com/xmlschemas/content/legal/case-information/1/" xmlns:seclaw="http://www.lexisnexis.com/xmlschemas/content/legal/secondary-law/1/" version="2.0" exclude-result-prefixes="dita case ci source_lnci lnci">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="case.reportercite">
  <title>case:reportercite <lnpid>id-CA02DS-12826</lnpid></title>
  <body>
    <section>
      <ul>
        <li>
                    <sourcexml>case:reportercite</sourcexml> becomes
                        <targetxml>ref:citations</targetxml> with child elements as described below: <ul>
                        <li> Create
                                <targetxml>/ref:citations/ref:cite4thisresource@citetype="reporter"</targetxml>
                            <note>When the <targetxml>ref:citations/.../lnci:content</targetxml>
                                (either <targetxml>ref:cite4thisresource</targetxml> or
                                    <targetxml>ref:parallelcite</targetxml>) would begin with "Full
                                text: ", "Texte intégral : ", or "Full text/texte
                                intégral: ", it should be removed with and without the trailing
                                space. The presentation will add the language appropriate
                                text.</note>
                            <note>There are two scenarios found in Rosetta samples, so conversion
                                will follow the instructions as given below: <ul>
                                    <li>When <sourcexml>case:reportercite/ci:cite</sourcexml>
                                        contains attribute
                                            <sourcexml>ci:cite[@type="cite4thisdoc"]</sourcexml>,
                                        then <sourcexml>@type=”cite4thisdoc”</sourcexml> needs to be
                                        converted to the <targetxml>seclaw:body</targetxml> so
                                        conversion will
                                            create<targetxml>seclaw:seclaw/seclaw:body/seclaw:level/seclaw:bodytext/seclaw:digestgrp/seclaw:digest/seclaw:digestinfo/caseinfo:caseinfo/ref:citations/ref:cite4thisresource/@citetype="reporter"</targetxml></li>
                                    <li>And when <sourcexml>case:reportercite/ci:cite</sourcexml>
                                        doesn't contain any attribute with
                                            <sourcexml>ci:cite</sourcexml>, then it needs to be
                                        converted to
                                            <targetxml>seclaw:body</targetxml><targetxml>seclaw:seclaw/seclaw:body/seclaw:level/seclaw:bodytext/seclaw:digestgrp/seclaw:digest/seclaw:digestinfo/caseinfo:caseinfo/ref:citations/ref:parallelcite@citetype="parallel".</targetxml>
                                    </li>
                                </ul>
                                <b>For more confirmation please see below examples:</b>
                            </note>
                            <note>For handling of citation markup kindly refer <xref href="../../../common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">Rosetta_ci.cite-LxAdv-lnci.cite</xref> instructions under
                                General Markup Section.</note>
                        </li>
                    </ul>
                    <p/>
                    <pre>

&lt;case:reportercite&gt;
    &lt;ci:cite type="cite4thisdoc"&gt;
        &lt;ci:case&gt;
            &lt;ci:caseref ID="cref00016684" spanref="cspan00016684"&gt;
                &lt;ci:reporter value="OJ"/&gt;
                &lt;ci:edition&gt;
                    &lt;ci:date year="2004"/&gt;
                &lt;/ci:edition&gt;
                &lt;ci:refnum num="340"/&gt;
            &lt;/ci:caseref&gt;
        &lt;/ci:case&gt;
        &lt;ci:content&gt;
            &lt;ci:span spanid="cspan00016684"&gt;[2004] O.J. No. 340&lt;/ci:span&gt;
        &lt;/ci:content&gt;
    &lt;/ci:cite&gt;
&lt;/case:reportercite&gt;

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
                                    &lt;ref:cite4thisresource citetype="reporter"&gt;
                                        &lt;lnci:cite&gt;
                                            &lt;lnci:case&gt;
                                                &lt;lnci:caseref ID="cref00016684"&gt;
                                                    &lt;lnci:reporter value="OJ"/&gt;
                                                    &lt;lnci:edition&gt;
                                                        &lt;lnci:date year="2004"/&gt;
                                                    &lt;/lnci:edition&gt;
                                                    &lt;lnci:refnum num="340"/&gt;
                                                &lt;/lnci:caseref&gt;
                                            &lt;/lnci:case&gt;
                                            &lt;lnci:content&gt;[2004] O.J. No. 340&lt;/lnci:content&gt;
                                        &lt;/lnci:cite&gt;
                                    &lt;/ref:cite4thisresource&gt;
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
                        <note>When text appears inside <sourcexml>case:reportercite</sourcexml>,
                            then conversion need to move the pinpoint information into
                                <sourcexml>lnci:content</sourcexml>. This applies to CANADA
                            ONLY.</note> Please see below example for the same:</p>
                    <pre>

&lt;case:reportercite&gt;    
    &lt;ci:cite&gt;        
        &lt;ci:case&gt;            
            &lt;ci:caseref ID="cref00019986" spanref="cspan00019986"&gt;                
                &lt;ci:reporter value="DLR3"/&gt;                
                &lt;ci:volume num="123"/&gt;                
                &lt;ci:page num="214"/&gt;                
            &lt;/ci:caseref&gt;            
        &lt;/ci:case&gt;        
        &lt;ci:content&gt;            
            &lt;ci:span spanid="cspan00019986"&gt;123 D.L.R. (3d) 214&lt;/ci:span&gt;            
        &lt;/ci:content&gt;        
    &lt;/ci:cite&gt; at 222    
&lt;/case:reportercite&gt;
    
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
                                                &lt;lnci:caseref ID="cref00019986"&gt;                
                                                    &lt;lnci:reporter value="DLR3"/&gt;                
                                                    &lt;lnci:volume num="123"/&gt;                
                                                    &lt;lnci:page num="214"/&gt;                
                                                &lt;/lnci:caseref&gt;            
                                            &lt;/lnci:case&gt;        
                                            &lt;lnci:content&gt;123 D.L.R. (3d) 214 at 222&lt;/lnci:content&gt;        
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
                    <note>If <sourcexml>case:reportercite</sourcexml> directly contains text without
                        any child element, then <sourcexml>case:reportercite</sourcexml> becomes
                            <targetxml>/ref:citations/ref:parallelcite/lnci:cite/lnci:content</targetxml>
                        and it will be converted to body.</note>
                    <pre>

&lt;case:info&gt;
    &lt;case:reportercite&gt;2006 LNQCCLP 05702&lt;/case:reportercite&gt;
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
                                            &lt;lnci:content&gt;2006 LNQCCLP 05702&lt;/lnci:content&gt;
                                        &lt;/lnci:cite&gt;
                                        &lt;/ref:cite4thisresource&gt;
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
                        <note>In case of multiple occurrence of <sourcexml>ci:cite</sourcexml> under
                                <sourcexml>case:reportercite</sourcexml> and it will be converted to
                            body, conversion need to generate separate
                                <targetxml>ref:cite4thisresource</targetxml> for every
                                <sourcexml>ci:cite</sourcexml> element with attribute
                            @type="cite4thisresource", if attribute is not present the conversion
                            will be <targetxml>ref:parallelcite</targetxml> for every
                                <sourcexml>ci:cite</sourcexml> and still be marked in body.</note>
                    </p>
                    <pre>

&lt;case:reportercite&gt;
    &lt;ci:cite&gt;
        &lt;ci:case&gt;
            &lt;ci:caseref ID="cref00000146" spanref="cspan00000146"&gt;
                &lt;ci:reporter value="BCJ"/&gt;
                &lt;ci:edition&gt;
                    &lt;ci:date year="2004"/&gt;
                &lt;/ci:edition&gt;
                &lt;ci:refnum num="1218"/&gt;
            &lt;/ci:caseref&gt;
        &lt;/ci:case&gt;
        &lt;ci:content&gt;&lt;ci:span spanid="cspan00000146"&gt;[2004] B.C.J. No.
            1218&lt;/ci:span&gt;, &lt;/ci:content&gt;
    &lt;/ci:cite&gt;
    &lt;ci:cite&gt;
        &lt;ci:case&gt;
            &lt;ci:caseinfo spanref="cspan00000147"&gt;
                &lt;ci:opinionnum num="790"/&gt;
                &lt;ci:jurisinfo&gt;
                    &lt;ci:can courtcode="BCSC"/&gt;
                &lt;/ci:jurisinfo&gt;
                &lt;ci:decisiondate year="2004"/&gt;
            &lt;/ci:caseinfo&gt;
        &lt;/ci:case&gt;
        &lt;ci:content&gt;&lt;ci:span spanid="cspan00000147"&gt;2004 BCSC 790&lt;/ci:span&gt;, June
            10, 2004 &lt;/ci:content&gt;
    &lt;/ci:cite&gt;
&lt;/case:reportercite&gt;
                
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
                                                &lt;lnci:caseref ID="cref00000146"&gt;
                                                  &lt;lnci:reporter value="BCJ"/&gt;
                                                  &lt;lnci:edition&gt;
                                                  &lt;lnci:date year="2004"/&gt;
                                                  &lt;/lnci:edition&gt;
                                                  &lt;lnci:refnum num="1218"/&gt;
                                                &lt;/lnci:caseref&gt;
                                            &lt;/lnci:case&gt;
                                            &lt;lnci:content&gt;[2004] B.C.J. No. 1218&lt;/lnci:content&gt;
                                        &lt;/lnci:cite&gt;
                                    &lt;/ref:parallelcite&gt;
                                    &lt;ref:parallelcite citetype="parallel"&gt;
                                        &lt;lnci:cite&gt;
                                            &lt;lnci:case&gt;
                                                &lt;lnci:caseinfo&gt;
                                                  &lt;lnci:opinionnum num="790"/&gt;
                                                  &lt;lnci:jurisinfo&gt;
                                                  &lt;lnci:can courtcode="BCSC"/&gt;
                                                  &lt;/lnci:jurisinfo&gt;
                                                  &lt;lnci:decisiondate year="2004"/&gt;
                                                &lt;/lnci:caseinfo&gt;
                                            &lt;/lnci:case&gt;
                                            &lt;lnci:content&gt;2004 BCSC 790, June 10,
                                                2004&lt;/lnci:content&gt;
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
          <p>2014-12-04 <ph id="change_20141204_AS">Webteam# 284027 - Xpath clarification for ref:parallelcite <b>DB item # 2058</b></ph></p>
          <p>2014-07-15: <ph id="change_20140715_AS">Mapped case:reportercite in head where it directly contains text without any other sibling  <b>DB item # 261</b></ph></p>
          <p>2014-07-07: <ph id="change_20140707_AS">Update to include attribute "citetype="parallel" for case:reportercite without cite4thisdoc attribute  <b>DB item # 253</b></ph></p>
          <p>2014-06-11: <ph id="change_20140610_AS">Attribute citetype="reporter" added to ref:cite4thisresource   <b>DB item # 225</b></ph></p>
          <p>2014-06-11: <ph id="change_20140611_AS">remove "Full Text: " with and without the trailing space in case:reportercite <b>DB item # 1646</b></ph></p>
		  <p>2014-05-22 <ph id="change_20140522_SEP">Clarify "Full text: " removal for both ref:cite4thisresource and ref:parallelcite.<b>DB item # 1323 and 212</b></ph></p>
          <p>2014-04-30 <ph id="change_20140430_AS">case:reportercite mapping<b>DB item # 180</b></ph></p>
          <p>2014-04-28 <ph id="change_20140428_AS">case:reportercite mapping<b>DB item # 180</b></ph></p>
          <p>2014-04-18 <ph id="change_20140416_AS">ref:citation in head<b>DB item # 1152,1156</b></ph></p>
          <p>2014-04-15 <ph id="change_20140415_AS">Removed Trailing Comma in Case Cites...DB #item 1332</ph></p>
		  <p>2014-03-31 <ph id="change_20140331_SEP">Remove "Full text: " and its language variants from the start of <targetxml>lnci:content</targetxml> in the body. <b>R4.5 Item #1323.</b></ph></p>
      </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA02-Case_Summaries\CA02DS_DIGESTDOC_to_seclaw\case.reportercite.dita  -->
	 
    <!--Vikas Rohilla : Template to match the first case:reportercite and child elements then create the wrapper ref:citations-->
    <xsl:template match="case:reportercite[child::*][not(preceding-sibling::*[1][self::case:reportercite[child::*]])]">
        <ref:citations>
            <ref:parallelcite>
                <xsl:attribute name="citetype">
                    <xsl:text>parallel</xsl:text>
                </xsl:attribute>
            <xsl:apply-templates select="*"/>
            </ref:parallelcite>
            <xsl:if test="following-sibling::*[1][self::case:parallelcite[child::*]]">
                <xsl:call-template name="following-parallelcite">
                    <xsl:with-param name="node" select="following-sibling::*[1][self::case:parallelcite[child::*]]"></xsl:with-param>
                </xsl:call-template>   
            </xsl:if>
        </ref:citations>
    </xsl:template>
    
    <!-- Vikas Rohilla : Tempalte name following-parallelcite  -->
    <xsl:template name="following-parallelcite">
        <xsl:param name="node"/>
        <xsl:apply-templates select="$node" mode="following-parallelcite"/>
        <xsl:if test="$node/following-sibling::*[1][self::case:parallelcite[child::*]]">
            <xsl:call-template name="following-parallelcite">
                <xsl:with-param name="node" select="$node/following-sibling::*[1][self::case:parallelcite[child::*]]"/>
            </xsl:call-template>
        </xsl:if>
    </xsl:template>
    
    <!-- Vikas Rohilla : Template to match the case:parallelcite with the mode following-parallelcite   -->
    <xsl:template match="case:parallelcite" mode="following-parallelcite">
        <ref:parallelcite>
            <xsl:attribute name="citetype">
                <xsl:text>parallel</xsl:text>
            </xsl:attribute>
        <xsl:apply-templates select="*"/>
        </ref:parallelcite>
    </xsl:template>

    <!-- Vikas Rohilla : Supressed the case:parallelcite in current mode handeled in to the following-parallelcite mode    -->
    <xsl:template match="case:parallelcite[preceding-sibling::case:reportercite[child::*]]"/>
    
    <!-- Vikas Rohilla : Template to match the case:reportercite having the text() only and creates the caseinfo:docketnum    -->
    <xsl:template match="case:reportercite[not(child::*)]" priority="25">
        <xsl:element name="caseinfo:docketnum">
            <xsl:apply-templates select="node() | @*"/>
        </xsl:element>
    </xsl:template>
    

</xsl:stylesheet>