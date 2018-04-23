<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:ci="http://www.lexis-nexis.com/ci" xmlns:caseinfo="http://www.lexisnexis.com/xmlschemas/content/legal/case-information/1/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita case ci">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="CA01_Rosetta_case.courtcite-LxAdv_ref.cite4thisresource">
  <title>case:courtcite <lnpid>id-CA01-12213</lnpid></title>
  <body>
    <section>
      <p><sourcexml>case:courtcite</sourcexml> becomes
                    <targetxml>caseinfo:caseinfo/ref:citations/ref:parallelcite</targetxml>. The
                value of <targetxml>ref:parallelcite/@citetype</targetxml> should be set to
                "court".</p>
      <note>For the handling of citation markup, please refer to the instructions for
          <sourcexml>ci:cite</sourcexml> in the General Markup Section.</note>
    </section>
    <example>
            <title>Mapping of <sourcexml>case:courtcite</sourcexml></title>
            <codeblock>
&lt;case:courtcite&gt;
    &lt;ci:cite type="cite4thisdoc"&gt;
        &lt;ci:case&gt;
            &lt;ci:caseinfo spanref="cspan00513909"&gt;
                &lt;ci:opinionnum num="1218"/&gt;
                &lt;ci:jurisinfo&gt;
                    &lt;ci:can courtcode="BCSC"/&gt;
                &lt;/ci:jurisinfo&gt;
                &lt;ci:decisiondate year="2011"/&gt;
            &lt;/ci:caseinfo&gt;
        &lt;/ci:case&gt;
        &lt;ci:content&gt;
            &lt;ci:span spanid="cspan00513909"&gt;2011 BCSC 1218&lt;/ci:span&gt;
        &lt;/ci:content&gt;
    &lt;/ci:cite&gt;
&lt;/case:courtcite&gt;
           </codeblock>
            <b>becomes</b>
            <codeblock>
&lt;caseinfo:caseinfo&gt;
    ...
    &lt;ref:citations&gt;
        &lt;ref:parallelcite citetype="court"&gt;
            &lt;lnci:cite&gt;
                &lt;lnci:case&gt;
                    &lt;lnci:caseinfo&gt;
                        &lt;lnci:opinionnum num="1218"/&gt;
                        &lt;lnci:jurisinfo&gt;
                            &lt;lnci:can courtcode="BCSC"/&gt;
                        &lt;/lnci:jurisinfo&gt;
                        &lt;lnci:decisiondate year="2011"/&gt;
                    &lt;/lnci:caseinfo&gt;
                &lt;/lnci:case&gt;
                &lt;lnci:content&gt;2011 BCSC 1218&lt;/lnci:content&gt;
            &lt;/lnci:cite&gt;
        &lt;/ref:parallelcite&gt;
    &lt;/ref:citations&gt;
    ...
&lt;/caseinfo:caseinfo&gt;
           </codeblock>
        </example>
	<example>
            <title>Grouping of citations under one <targetxml>ref:citations</targetxml></title>
            <note>If <sourcexml>case:courtcite</sourcexml>, <sourcexml>case:parallelcite</sourcexml>
                and <sourcexml>case:reportercite</sourcexml> are sibling then, map them under one
                    <targetxml>ref:citations</targetxml>. </note>
            <codeblock>
&lt;case:reportercite&gt;
    &lt;ci:cite type="cite4thisdoc"&gt;
        &lt;ci:case&gt;
            &lt;ci:caseref ID="cref00000912" spanref="cspan00000912"&gt;
                &lt;ci:reporter value="CARTD"/&gt;
                &lt;ci:edition&gt;
                    &lt;ci:date year="2010"/&gt;
                &lt;/ci:edition&gt;
                &lt;ci:refnum num="18"/&gt;
            &lt;/ci:caseref&gt;
        &lt;/ci:case&gt;
        &lt;ci:content&gt;
            &lt;ci:span spanid="cspan00000912"&gt;[2010] C.A.R.T.D. No. 18&lt;/ci:span&gt;
        &lt;/ci:content&gt;
    &lt;/ci:cite&gt;
&lt;/case:reportercite&gt;
&lt;case:parallelcite&gt;
    &lt;ci:cite&gt;
        &lt;ci:case&gt;
            &lt;ci:caseref ID="cref00000913" spanref="cspan00000913"&gt;
                &lt;ci:reporter value="CARTD"/&gt;
                &lt;ci:edition&gt;
                    &lt;ci:date year="2010"/&gt;
                &lt;/ci:edition&gt;
                &lt;ci:refnum num="18"/&gt;
            &lt;/ci:caseref&gt;
        &lt;/ci:case&gt;
        &lt;ci:content&gt;
            &lt;ci:span spanid="cspan00000913"&gt;[2010] D.C.R.A.C. no 18&lt;/ci:span&gt;
        &lt;/ci:content&gt;
    &lt;/ci:cite&gt;
&lt;/case:parallelcite&gt;
&lt;case:courtinfo&gt;
    &lt;case:courtcite&gt;
        &lt;ci:cite type="cite4thisdoc"&gt;
            &lt;ci:case&gt;
                &lt;ci:caseinfo spanref="cspan00000914"&gt;
                    &lt;ci:opinionnum num="17"/&gt;
                    &lt;ci:jurisinfo&gt;
                        &lt;ci:can courtcode="CAGRT"/&gt;
                    &lt;/ci:jurisinfo&gt;
                    &lt;ci:decisiondate year="2010"/&gt;
                &lt;/ci:caseinfo&gt;
            &lt;/ci:case&gt;
            &lt;ci:content&gt;
                &lt;ci:span spanid="cspan00000914"&gt;2010 CART 17&lt;/ci:span&gt;
            &lt;/ci:content&gt;
        &lt;/ci:cite&gt;
    &lt;/case:courtcite&gt;
    &lt;case:filenum&gt;No. RTA-60380&lt;/case:filenum&gt;
    &lt;case:filenum&gt;(RT-1525)&lt;/case:filenum&gt;
&lt;/case:courtinfo&gt;

           </codeblock>
            <b>becomes</b>
            <codeblock>
&lt;ref:citations&gt;
    &lt;ref:cite4thisresource citetype="reporter"&gt;
        &lt;lnci:cite&gt;
            &lt;lnci:case&gt;
                &lt;lnci:caseref ID="cref00000912"&gt;
                    &lt;lnci:reporter value="CARTD"/&gt;
                    &lt;lnci:edition&gt;
                        &lt;lnci:date year="2010"/&gt;
                    &lt;/lnci:edition&gt;
                    &lt;lnci:refnum num="18"/&gt;
                &lt;/lnci:caseref&gt;
            &lt;/lnci:case&gt;
            &lt;lnci:content&gt;[2010] C.A.R.T.D. No. 18&lt;/lnci:content&gt;
        &lt;/lnci:cite&gt;
    &lt;/ref:cite4thisresource&gt;
    &lt;ref:parallelcite citetype="parallel"&gt;
        &lt;lnci:cite&gt;
            &lt;lnci:case&gt;
                &lt;lnci:caseref ID="cref00000913"&gt;
                    &lt;lnci:reporter value="CARTD"/&gt;
                    &lt;lnci:edition&gt;
                        &lt;lnci:date year="2010"/&gt;
                    &lt;/lnci:edition&gt;
                    &lt;lnci:refnum num="18"/&gt;
                &lt;/lnci:caseref&gt;
            &lt;/lnci:case&gt;
            &lt;lnci:content&gt;[2010] D.C.R.A.C. no 18&lt;/lnci:content&gt;
        &lt;/lnci:cite&gt;
    &lt;/ref:parallelcite&gt;
    &lt;ref:parallelcite citetype="court"&gt;
        &lt;lnci:cite&gt;
            &lt;lnci:case&gt;
                &lt;lnci:caseinfo&gt;
                    &lt;lnci:opinionnum num="17"/&gt;
                    &lt;lnci:jurisinfo&gt;
                        &lt;lnci:can courtcode="CAGRT"/&gt;
                    &lt;/lnci:jurisinfo&gt;
                    &lt;lnci:decisiondate year="2010"/&gt;
                &lt;/lnci:caseinfo&gt;
            &lt;/lnci:case&gt;
            &lt;lnci:content&gt;2010 CART 17&lt;/lnci:content&gt;
        &lt;/lnci:cite&gt;
    &lt;/ref:parallelcite&gt;
&lt;/ref:citations&gt;
           </codeblock>
        </example>
       <section>
           <title>Changes</title>
           <p>2015-06-24: <ph id="change_20150624_PS">Updated instruction and example to generate <targetxml>ref:parallelcite/@citetype="court"</targetxml>, Webteam # 302381. Applicable on CA01.</ph></p>
           <p>2015-01-28: <ph id="change_20150128_SEP">Updated instruction and example for grouping of citations under one <targetxml>ref:citations</targetxml>. R4.5 DB Item #2158.</ph></p>
       </section>
  </body>
	</dita:topic>

	
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA01-Cases\CA01_Rosetta_case.courtcite-LxAdv_ref.cite4thisresource.dita  -->
	 
    <!-- Vikas Rohilla : Template to match the case:courtcite and creates the ref:citations-->
    <xsl:template match="case:courtcite">
	    <ref:parallelcite citetype="court">
		  <xsl:apply-templates/>
	    </ref:parallelcite>
   	</xsl:template>

</xsl:stylesheet>