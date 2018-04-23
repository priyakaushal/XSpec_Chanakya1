<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:ci="http://www.lexis-nexis.com/ci" xmlns:casedigest="http://www.lexisnexis.com/xmlschemas/content/legal/case-digest/1/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita case ci">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="case.courtcite">
   <title>case:courtcite <lnpid>id-CA02CC-12413</lnpid></title>
   <body>
      <section>
<ul>
  <li>
                    <sourcexml>case:courtcite</sourcexml> becomes
                        <targetxml>ref:citations/ref:parallelcite</targetxml> and will be placed
                    within hierarchy
                        <targetxml>casedigest:head/casedigest:caseinfo/ref:citations</targetxml>.
                    The value of attribute <targetxml>ref:parallelcite/@citetype</targetxml> should
                    be set to <targetxml>"court"</targetxml>. <pre>

&lt;case:courtcite&gt;
    &lt;ci:cite type="cite4thisdoc"&gt;
        &lt;ci:case&gt;
            &lt;ci:caseinfo spanref="cspan00000003"&gt;
                &lt;ci:opinionnum num="159"/&gt;
                &lt;ci:jurisinfo&gt;
                    &lt;ci:can courtcode="NLSCT"/&gt;
                &lt;/ci:jurisinfo&gt;
                &lt;ci:decisiondate year="2003"/&gt;
            &lt;/ci:caseinfo&gt;
        &lt;/ci:case&gt;
        &lt;ci:content&gt;
            &lt;ci:span spanid="cspan00000003"&gt;2003 NLSCTD 159&lt;/ci:span&gt;
        &lt;/ci:content&gt;
    &lt;/ci:cite&gt;
&lt;/case:courtcite&gt;

<b>Becomes</b>


&lt;casedigest:head&gt;
    &lt;casedigest:caseinfo&gt;
        &lt;ref:citations&gt;
            &lt;ref:parallelcite citetype="court"&gt;
                &lt;lnci:cite&gt;
                    &lt;lnci:case&gt;
                        &lt;lnci:caseinfo&gt;
                            &lt;lnci:opinionnum num="159"/&gt;
                            &lt;lnci:jurisinfo&gt;
                                &lt;lnci:can courtcode="NLSCT"/&gt;
                            &lt;/lnci:jurisinfo&gt;
                            &lt;lnci:decisiondate year="2003"/&gt;
                        &lt;/lnci:caseinfo&gt;
                    &lt;/lnci:case&gt;
                    &lt;lnci:content&gt;
                        2003 NLSCTD 159
                    &lt;/lnci:content&gt;
                &lt;/lnci:cite&gt;
            &lt;/ref:cite4thisresource&gt;
        &lt;/ref:citations&gt;
    &lt;/casedigest:caseinfo&gt;
&lt;/casedigest:head&gt;

                    </pre>
                    <p>If there are more than one <sourcexml>ci:cite</sourcexml> within
                            <sourcexml>case:courtcite</sourcexml> then  seperate
                            <targetxml>ref:parallelcite</targetxml> will be created for every
                            <sourcexml>ci:cite/@type="cite4thisdoc"</sourcexml>. Please refer the
                        example below.</p>
                    <pre>

&lt;case:courtcite&gt;
    &lt;ci:cite type="cite4thisdoc"&gt;
        &lt;ci:case&gt;
            &lt;ci:caseinfo spanref="cspan00001104"&gt;
                &lt;ci:opinionnum num="42"/&gt;
                &lt;ci:jurisinfo&gt;
                    &lt;ci:can courtcode="CAOHS"/&gt;
                &lt;/ci:jurisinfo&gt;
                &lt;ci:decisiondate year="2007"/&gt;
            &lt;/ci:caseinfo&gt;
        &lt;/ci:case&gt;
        &lt;ci:content&gt;Interlocutory Decision Nos. &lt;ci:span spanid="cspan00001104"&gt;CAO-07-042&lt;/ci:span&gt;(A),
            &lt;ci:cite type="cite4thisdoc"&gt;
                &lt;ci:case&gt;
                    &lt;ci:caseinfo spanref="cspan00001105"&gt;
                        &lt;ci:opinionnum num="52"/&gt;
                        &lt;ci:jurisinfo&gt;
                            &lt;ci:can courtcode="CAOHS"/&gt;
                        &lt;/ci:jurisinfo&gt;
                        &lt;ci:decisiondate year="2006"/&gt;
                    &lt;/ci:caseinfo&gt;
                &lt;/ci:case&gt;
                &lt;ci:content&gt;
                    &lt;ci:span spanid="cspan00001105"&gt;CAO-06-052&lt;/ci:span&gt;
                &lt;/ci:content&gt;
            &lt;/ci:cite&gt;(S)&lt;/ci:content&gt;
    &lt;/ci:cite&gt;
&lt;/case:courtcite&gt;


<b>Becomes</b>
          

&lt;casedigest:head&gt;
    &lt;casedigest:caseinfo&gt;
        &lt;ref:citations&gt;
            &lt;ref:parallelcite citetype="court"&gt;
                &lt;lnci:cite&gt;
                    &lt;lnci:case&gt;
                        &lt;lnci:caseref ID="cspan00001104"&gt;
                            &lt;lnci:opinionnum num="42"/&gt;
                            &lt;lnci:jurisinfo&gt;
                                &lt;lnci:can courtcode="CAOHS"/&gt;
                            &lt;/lnci:jurisinfo&gt;
                            &lt;lnci:decisiondate year="2007"/&gt;
                        &lt;/lnci:caseref&gt;
                    &lt;/lnci:case&gt;
                    &lt;lnci:content&gt;Interlocutory Decision Nos. CAO-07-042(A),&lt;/lnci:content&gt;
                &lt;/lnci:cite&gt;
            &lt;/ref:cite4thisresource&gt;       
            &lt;ref:parallelcite citetype="court"&gt;
                &lt;lnci:cite&gt;
                    &lt;lnci:case&gt;
                        &lt;lnci:caseref ID="cspan00001105"&gt;
                            &lt;lnci:opinionnum num="52"/&gt;
                            &lt;lnci:jurisinfo&gt;
                                &lt;lnci:can courtcode="CAOHS"/&gt;
                            &lt;/lnci:jurisinfo&gt;
                            &lt;lnci:decisiondate year="2006"/&gt;
                        &lt;/lnci:caseref&gt;
                    &lt;/lnci:case&gt;
                    &lt;lnci:content&gt;CAO-06-052 (S)&lt;/lnci:content&gt;
                &lt;/lnci:cite&gt;
            &lt;/ref:cite4thisresource&gt;
        &lt;/ref:citations&gt;
    &lt;/casedigest:caseinfo&gt;
&lt;/casedigest:head&gt;


        </pre>
      
      <note>If <sourcexml>case:courtcite</sourcexml>,
          <sourcexml>case:parallelcite</sourcexml> and
          <sourcexml>case:reportercite</sourcexml> are sibling then, map them
          under one <targetxml>ref:citations</targetxml>. </note>
      <b>Source XML</b>
      <pre>&lt;case:reportercite&gt;
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
&lt;/case:courtinfo&gt;</pre></li>
    <li><b>Target
        XML</b><pre>
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
    &lt;ref:parallelcite&gt;
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
    &lt;ref:cite4thisresource citetype="court"&gt;
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
    &lt;/ref:cite4thisresource&gt;
&lt;/ref:citations&gt;                        
                    </pre>
                </li>
      </ul>
      </section>
       <section>
           <title>Changes</title>
           <p>2014-07-28: <ph id="change_20140728_AS">Updated instruction and example for grouping of citations under one <targetxml>ref:citations</targetxml>. R4.5 DB Item #1768.</ph></p>
           <p>2014-05-09: <ph id="change_20140509_AS">case:courtcite updated closing tag to
               head... DB #195</ph></p>
           <p>2014-04-25: <ph id="change_20140425_AS">Courtcite mapping to ref:parallelcite</ph></p>
       </section>
   </body>
	</dita:topic>

	
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA02-Case_Summaries\CA02CC_CASEDOC\case.courtcite.dita  -->
	
<!-- Sudhanshu Srivastava edited on 16-May-2017.-->
    <!--<xsl:template match="case:courtcite" mode="parallelorcourt">-->
        <xsl:template match="case:courtcite">
		<!--  Original Target XPath:  ref:citations/ref:parallelcite   -->
	    <ref:parallelcite>
			    <xsl:attribute name="citetype" select="'court'"/>
				<xsl:apply-templates select="@* | node()"/>
		</ref:parallelcite>
	</xsl:template>
</xsl:stylesheet>