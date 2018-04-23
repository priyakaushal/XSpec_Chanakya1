<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:ci="http://www.lexis-nexis.com/ci" xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" xmlns:casedigest="http://www.lexisnexis.com/xmlschemas/content/legal/case-digest/1/" xmlns:lnci="http://www.lexisnexis.com/xmlschemas/content/shared/citations/1/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita case ci docinfo lnci">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="case.reportercite">
    <title>case:reportercite <lnpid>id-CA02DC-12617</lnpid></title>
    <body>
        <section>
            <ul>
                <li>
                    <sourcexml>case:reportercite</sourcexml> becomes
                        <targetxml>ref:citations/ref:cite4thisresource</targetxml> along with
                    attribute <targetxml>citetype="reporter"</targetxml> within
                        <targetxml>casedigest:head</targetxml>
                    <note>When <sourcexml>case:reportercite/ci:cite</sourcexml> contains attribute
                            <sourcexml>ci:cite[@type="cite4thisdoc"]</sourcexml>, then
                            <sourcexml>@type="cite4thisdoc"</sourcexml> needs to be converted to the
                            <targetxml>casedigest:head</targetxml>, so conversion will create
                            <targetxml>casedigest:casedigest/casedigest:head/ref:citations/ref:cite4thisresource</targetxml>.
                        And when <sourcexml>case:reportercite/ci:cite</sourcexml> doesn't contain
                        any attribute with <sourcexml>ci:cite</sourcexml>, then it needs to be
                        mapped to,
                            <targetxml>casedigest:casedigest/casedigest:head/casedigest:caseinfo/ref:citations/ref:parallelcite@citetype="parallel"</targetxml>.
                        Any additional citations moved to the body will get their values of
                        "parallel" or "court", but the value
                            <targetxml>citetype="reporter"</targetxml> will be used only in
                            <targetxml>casedigest:head</targetxml>.</note>
                    <note>When the <targetxml>ref:citations/.../lnci:content</targetxml> (either
                            <targetxml>ref:cite4thisresource</targetxml> or
                            <targetxml>ref:parallelcite</targetxml>) would begin with "Full text: ",
                        "Texte intégral : ", or "Full text/texte intégral: ", it should be
                        removed with and without the trailing space. The presentation will add the
                        language appropriate text.</note>
                    <note><b>Exception scenario for CA02-Rosetta_digestdoc-to-LexAdv_casedigest:</b>
                        If <sourcexml>docinfo:subtype="wdns"</sourcexml> then
                            <sourcexml>case:reportercite</sourcexml> will be converted to
                            <targetxml>casedigest:head/casedigest:caseinfo/ref:citations/ref:parallelcite@citetype="parallel"</targetxml>.
                        Also, note that for this "wdns" scenario, the date after the cite should be removed. (dropped)
                        Refer the example below for more clarification</note>
                    <pre>
    
&lt;case:reportercite&gt;
    &lt;ci:cite&gt;
        &lt;ci:case&gt;
            &lt;ci:caseref ID="cref00003036" spanref="cspan00003036"&gt;
                &lt;ci:reporter value="OJ"/&gt;
                &lt;ci:edition&gt;
                    &lt;ci:date year="2010"/&gt;
                &lt;/ci:edition&gt;
                &lt;ci:refnum num="3766"/&gt;
            &lt;/ci:caseref&gt;
        &lt;/ci:case&gt;
        &lt;ci:content&gt;&lt;ci:span spanid="cspan00003036"&gt;[2010] O.J. No. 3766&lt;/ci:span&gt;, September 13, 2010 &lt;/ci:content&gt;
    &lt;/ci:cite&gt;
&lt;/case:reportercite&gt;
.......
&lt;docinfo&gt;
    &lt;docinfo:doc-heading&gt;Senior Executives - Simmons v. Webb&lt;/docinfo:doc-heading&gt;
.......
    &lt;docinfo:subtype&gt;wdns&lt;/docinfo:subtype&gt;
.......
&lt;/docinfo&gt;
    
    
    <b>Becomes</b>
    
    
&lt;casedigest:head&gt;
    &lt;casedigest:caseinfo&gt;
        &lt;caseinfo:casename&gt;
            &lt;caseinfo:shortcasename name="Case:"&gt;Simmons v.Webb&lt;/caseinfo:shortcasename&gt;
        &lt;/caseinfo:casename&gt;
        &lt;ref:citations&gt;
            &lt;ref:parallelcite citetype="parallel"&gt;
                &lt;lnci:cite&gt;
                    &lt;lnci:case&gt;
                        &lt;lnci:caseref ID="cref00003036"&gt;
                            &lt;lnci:reporter value="OJ"/&gt;
                            &lt;lnci:edition&gt;
                                &lt;lnci:date year="2010"/&gt;
                            &lt;/lnci:edition&gt;
                            &lt;lnci:refnum num="3766"/&gt;
                        &lt;/lnci:caseref&gt;
                    &lt;/lnci:case&gt;
                    &lt;lnci:content&gt;[2010] O.J. No. 3766&lt;/lnci:content&gt;
                &lt;/lnci:cite&gt;
            &lt;/ref:parallelcite&gt;
        &lt;/ref:citations&gt;
.....
    &lt;/casedigest:caseinfo&gt;
&lt;/casedigest:head&gt;
    
    
                    </pre>
                    <note> Remove the trailing comma along with space in target
                            <targetxml>lnci:content</targetxml> if coming in
                            <sourcexml>ci:content/ci:span</sourcexml>. Please refer the example
                        below. </note>
                    <pre>
  .....
 &lt;ci:content&gt;
     &lt;ci:span spanid="cspan00003631"&gt;[2006] B.C.J. No. 1986&lt;/ci:span&gt;, 
 &lt;/ci:content&gt;
 .....
  
                        
 <b>Becomes</b>
                        
 .....
  &lt;lnci:content&gt; [2006] B.C.J. No. 1986&lt;/lnci:content&gt;
 .....

                    </pre>
                    <ul>
                        <li>
                            <b>For more confirmation please see below examples:</b>
                            <note>For handling of citation markup kindly refer <xref href="../../../common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">Rosetta_ci.cite-LxAdv-lnci.cite</xref> instructions under
                                General Markup Section.</note>
                        </li>
                    </ul>
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


&lt;casedigest:casedigest&gt;
    &lt;casedigest:head&gt;
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
    &lt;/casedigest:head&gt;
    ..................
&lt;/casedigest:casedigest&gt;

          </pre>
                    <p>
                        <note>When text appears inside <sourcexml>case:reportercite</sourcexml>,
                            then conversion need to move the pinpoint information into
                                <sourcexml>lnci:content</sourcexml>. This applies to CANADA
                            ONLY.</note> Please see below example for the same:</p>
                    <p>Example of <sourcexml>case:reportercite/ci:cite</sourcexml> without any
                        attribute, so it will be converted to head.</p>
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

&lt;casedigest:casedigest&gt;
    &lt;casedigest:head&gt;
        &lt;casedigest:caseinfo&gt;
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
        &lt;/casedigest:caseinfo&gt;
    &lt;/casedigest:head&gt;
    ..................
&lt;/casedigest:casedigest&gt;
    
</pre>
                    <note>If <sourcexml>case:reportercite</sourcexml> directly contains text without
                        any other sibling element, then <sourcexml>case:reportercite</sourcexml>
                        becomes <targetxml>/ref:citations/ref:parallelcite@
                            citetype="parallel"/lnci:cite/lnci:content</targetxml> and it will be
                        converted to head.</note>
                    <pre>

&lt;case:info&gt;
    &lt;case:reportercite&gt;2006 LNQCCLP 05702&lt;/case:reportercite&gt;
&lt;/case:info&gt;


<b>Becomes</b>


&lt;casedigest:casedigest&gt;
    &lt;casedigest:head&gt;
        &lt;casedigest:caseinfo&gt;
            &lt;ref:citations&gt;
                &lt;ref:parallelcite citetype="parallel"&gt;
                    &lt;lnci:cite&gt;
                        &lt;lnci:content&gt;2006 LNQCCLP 05702&lt;/lnci:content&gt;
                    &lt;/lnci:cite&gt;
                &lt;/ref:parallelcite&gt;
            &lt;/ref:citations&gt;
        &lt;/casedigest:caseinfo&gt;
    &lt;/casedigest:head&gt;
    ..................
&lt;/casedigest:casedigest&gt;

 </pre>
                    <p>
                        <note>In case of multiple occurrence of <sourcexml>ci:cite</sourcexml> under
                                <sourcexml>case:reportercite</sourcexml> and it will be converted to
                            head, conversion need to generate separate
                                <targetxml>ref:cite4thisresource</targetxml> for every
                                <sourcexml>ci:cite</sourcexml> element with attribute
                            @type="cite4thisresource", if attribute is not present the conversion
                            will be <targetxml>ref:parallelcite</targetxml> for every
                                <sourcexml>ci:cite</sourcexml> and still be marked in head.</note>
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

&lt;casedigest:casedigest&gt;
    &lt;casedigest:head&gt;
        &lt;casedigest:caseinfo&gt;
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
                        &lt;lnci:content&gt;2004 BCSC 790, June 10, 2004&lt;/lnci:content&gt;
                    &lt;/lnci:cite&gt;
                &lt;/ref:parallelcite&gt;
            &lt;/ref:citations&gt;
        &lt;/casedigest:caseinfo&gt;
    &lt;/casedigest:head&gt;
    ..................
&lt;/casedigest:casedigest&gt;
                
            </pre>
                </li>
            </ul>
        </section>
        <section>
            <title>Changes</title>
            <p>2015-02-13: <ph id="change_20150213_CSN">Added note to remove the date from the cite for WDNS source  <b>DB item R4.5 issue no #1593</b></ph></p>
            <p>2014-12-11: <ph id="change_20141211_AS">updated example to map ref:parallelcite under casedigest:caseinfo  <b>DB item R4.5 issue no #2049</b></ph></p>
            <p>2014-12-05: <ph id="change_20141205_AS">Added <targetxml>casedigest:caseinfo</targetxml> to examples <b>DB item # R4.5- 2049</b></ph></p>
            <p>2014-07-15: <ph id="change_20140715_AS">Mapped case:reportercite in head where it directly contains text without any other sibling  <b>DB item # 266</b></ph></p>
            <p>2014-07-09 <ph id="change_20140709_AS">Added citetype="parallel" to ref:parallelcite<b>DB item # 257</b></ph></p>
            <p>2014-06-11: <ph id="change_20140611_AS">remove "Full Text: " with and without the trailing space in case:reportercite <b>DB item # 1646</b></ph></p>
		  <p>2014-05-22 <ph id="change_20140522_SEP">Clarify "Full text: " removal for both ref:cite4thisresource and ref:parallelcite.<b>DB item # 1323</b></ph></p>
            <p><ph id="change_20140516_AS">Remove Trailing Comma and space in Case Cites...<b>DB item #1332</b></ph></p>
            <p>2014-04-28 <ph id="change_20140428_SEP">Remove <targetxml>casedigest:body</targetxml>
                    from the XPATH so "Full Text", etc, can be removed even when occuring in
                        head.<b>DB item # 1323</b></ph></p>
            <p>2014-04-25 <ph id="change_20140425_AS">Exception scenario for CA02-DC: If
                        docinfo:subtype="wdns"<b>DB item # 1364</b></ph></p>
            <p>2014-04-18 <ph id="change_20140418_AS">ref:citation in head<b>DB item #
                    1152,1156</b></ph></p>
            <p>2014-04-15 <ph id="change_20140415_AS">Removed Trailing Comma in Case Cites...DB
                    #item 1332</ph></p>
            <p>2014-03-28 <ph id="change_20140328_SEP">Remove "Full text: " and its language
                    variants from the start of <targetxml>lnci:content</targetxml> in the body.
                        <b>R4.5 Item #1323.</b></ph></p>
            <p>2014-03-25 <ph id="change_20140325_SEP">Added clarification note for cites going into
                    head versus body and fixed examples.<b>DB item # 145</b></ph></p>
        </section>
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA02-Case_Summaries\CA02DC_DIGESTDOC_to_casedigest\case.reportercite.dita  -->
	
<!-- Vikas Rohilla : Updated the Template Initial	-->

    <xsl:template match="case:reportercite">
	    <ref:citations>
	    <xsl:choose>
	        <xsl:when test="$subtype='wdns'">
	            <xsl:for-each select="ci:cite">
	            <ref:parallelcite>
	                <xsl:attribute name="citetype">
	                    <xsl:text>parallel</xsl:text>
	                </xsl:attribute>
	                <xsl:apply-templates select="."/>
	            </ref:parallelcite>
	            </xsl:for-each>
	        </xsl:when>
	        <xsl:otherwise>
	            <xsl:choose>
	                <xsl:when test="child::ci:cite[@type='cite4thisdoc']">
	                    <ref:cite4thisresource>
	                        <xsl:attribute name="citetype">
	                            <xsl:text>reporter</xsl:text>
	                        </xsl:attribute>
	                        <xsl:apply-templates select="@* | node()"/>
	                    </ref:cite4thisresource>        
	                </xsl:when>
	                <xsl:otherwise>
	                    <xsl:for-each select="ci:cite">
	                        <ref:parallelcite>
	                            <xsl:attribute name="citetype">
	                                <xsl:text>parallel</xsl:text>
	                            </xsl:attribute>
	                            <xsl:apply-templates select="."/>
	                        </ref:parallelcite>
	                    </xsl:for-each>
	                </xsl:otherwise>
	            </xsl:choose>	            
	        </xsl:otherwise>
	    </xsl:choose>	    
	    </ref:citations>
	</xsl:template>


</xsl:stylesheet>