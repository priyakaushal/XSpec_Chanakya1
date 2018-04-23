<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:source_case="http://www.lexis-nexis.com/glp/case" xmlns:ci="http://www.lexis-nexis.com/ci" xmlns:cttr="urn:x-lexisnexis:content:citator:sharedservices:1" xmlns:lnci="http://www.lexisnexis.com/xmlschemas/content/shared/citations/1/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita source_case ci">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="case.parallelcite">
   <title>parallelcite <lnpid>id-AU02-18417</lnpid></title>
   <body>
      <section>
         <ul>
             <li><sourcexml>case:parallelcite/ci:cite</sourcexml> is now mapped to two places:
                        <targetxml>cttr:caseinfo/cttr:citations/lnci:cite</targetxml> and
                        <targetxml>cttr:caseinfo/ref:citations/ref:cite4thisresource/lnci:cite</targetxml>,
                    see example. <note>LBU has in requirements that a search on a citator journal
                        article gets both results of the journal article document and the article it
                        refers to. In order to accomplish this, we need to map
                            <sourcexml>case:parallelcite/ci:cite</sourcexml> to
                            <targetxml>ref:citations/ref:cite4thisresource/lnci:cite</targetxml> so
                        the JCite search should pick up both the documents. This would allow the
                        JCite to get what it needs to meet the “get both documents” business
                        requirement. </note>
                    <note>
                        <p>Duplicate citations cannot have the same IDs or the document becomes
                            invalid. To avoid this validation error, append the IDs for the
                            citations in ref:citations/ref:cite4thisresource/lnci:cite with extra
                            text (such as '_1') to make them unique.</p>
                    </note> The children are converted as follows: <ul>
                        <li>
                            <sourcexml>ci:case</sourcexml> maps to <targetxml>lnci:case</targetxml>. </li>
                        <li>
                            <sourcexml>ci:lawrev</sourcexml> maps to
                                <targetxml>lnci:lawrev</targetxml>. </li>
                        <li>
                            <sourcexml>ci:content</sourcexml> maps to
                                <targetxml>lnci:content</targetxml>. </li>
                    </ul>
                    <pre>
&lt;case:info&gt;
    &lt;case:parallelcite&gt;
        &lt;ci:cite searchtype="BOOK-REF"&gt;
            &lt;ci:lawrev&gt;
                &lt;ci:lawrevref ID="cr000001" spanref="cr000001-001"&gt;
                    &lt;ci:lawrevlocator&gt;
                        &lt;ci:publicationname normpubcode="CPNN"/&gt;
                        &lt;ci:volume num="8 "/&gt;
                        &lt;ci:date day="01" month="01" year="2011"/&gt;
                        &lt;ci:page num="35"/&gt;
                    &lt;/ci:lawrevlocator&gt;
                &lt;/ci:lawrevref&gt;
            &lt;/ci:lawrev&gt;
            &lt;ci:content&gt;
                &lt;citefragment searchtype="BOOK-CITE-REF"&gt;
                    &lt;ci:span spanid="cr000001-001"&gt;(2011) 8 (3 &amp;amp; 4) CPNN 35&lt;/ci:span&gt;
                &lt;/citefragment&gt;
            &lt;/ci:content&gt;
        &lt;/ci:cite&gt;
    &lt;/case:parallelcite&gt;
&lt;/case:info&gt;


<b>Becomes</b>
&lt;cttr:citedarticle&gt;
    &lt;cttr:citations&gt;
        &lt;lnci:cite&gt;
                &lt;lnci:lawrev&gt;
                    &lt;lnci:lawrevref ID="cr000001"&gt;
                        &lt;lnci:lawrevlocator&gt;
                            &lt;lnci:publicationname normpubcode="CPNN"/&gt;
                            &lt;lnci:volume num="8 "/&gt;
                            &lt;lnci:date day="01" month="01" year="2011"/&gt;
                            &lt;lnci:page num="35"/&gt;
                        &lt;/lnci:lawrevlocator&gt;
                    &lt;/lnci:lawrevref&gt;
                &lt;/lnci:lawrev&gt;
                &lt;lnci:content&gt;(2011) 8 (3 &amp;amp; 4) CPNN 35&lt;/lnci:content&gt;
            &lt;/lnci:cite&gt;
    &lt;/cttr:citations&gt;
    &lt;ref:citations&gt;
        &lt;ref:cite4thisresource&gt;  
            &lt;lnci:cite&gt;
                &lt;lnci:lawrev&gt;
                    &lt;lnci:lawrevref ID="cr000001"&gt;
                        &lt;lnci:lawrevlocator&gt;
                            &lt;lnci:publicationname normpubcode="CPNN"/&gt;
                            &lt;lnci:volume num="8 "/&gt;
                            &lt;lnci:date day="01" month="01" year="2011"/&gt;
                            &lt;lnci:page num="35"/&gt;
                        &lt;/lnci:lawrevlocator&gt;
                    &lt;/lnci:lawrevref&gt;
                &lt;/lnci:lawrev&gt;
                &lt;lnci:content&gt;(2011) 8 (3 &amp;amp; 4) CPNN 35&lt;/lnci:content&gt;
            &lt;/lnci:cite&gt;
        &lt;/ref:cite4thisresource&gt;   
    &lt;/ref:citations&gt;
&lt;/cttr:citedarticle&gt;

</pre>
                </li>
        </ul>
      </section>
       <section>
           <title>Changes</title>
           <p>2014-10-02: <ph id="change_20141002_brt">Added new instruction to dublicate <sourcexml>case:parallelcite/ci:cite</sourcexml> in <targetxml>cttr:citations/lnci:cite</targetxml> and
               <targetxml>ref:citations/ref:cite4thisresource/lnci:cite</targetxml></ph></p>
       </section>
   </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU02_citator\Citator_Journal.parallelcite.dita  -->

	<!-- I don't think there's anything to do here , the other modules carry this -->

</xsl:stylesheet>