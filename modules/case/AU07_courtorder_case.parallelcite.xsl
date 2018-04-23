<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:ci="http://www.lexis-nexis.com/ci" xmlns:lnci="http://www.lexisnexis.com/xmlschemas/content/shared/citations/1/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita case ci">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="case.info_case.parallelcite">
   <title>case:parallelcite <lnpid>id-AU07-19228</lnpid></title>
   <body>
      <section>
         <ul><li class="- topic/li ">         
                        <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:info/case:parallelcite</sourcexml> becomes 
                        <targetxml class="+ topic/keyword xml-d/targetxml ">courtorder:head/ref:citations/ref:cite4thisresource @citetype="parallel"</targetxml>
                        <note class="- topic/note ">Text occurring between <sourcexml class="+ topic/keyword xml-d/sourcexml ">ci:cite</sourcexml> and <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:parallelcite</sourcexml> should be dropped since it will be handled on a presentation spec level.</note>
                        The children are described below:
                        <ul class="- topic/ul ">
                            <li class="- topic/li ">
                                <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:info/case:parallelcite/ci:cite/ci:case</sourcexml> becomes 
                                <targetxml class="+ topic/keyword xml-d/targetxml ">courtorder:head/ref:citations/ref:cite4thisresource @citetype="parallel"/lnci:cite/lnci:courtorder</targetxml>.
                                
                                <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:parallelcite/ci:cite @searchtype="CASE-REF"</sourcexml> is dropped.
                                
                                <note class="- topic/note ">
                                    <sourcexml class="+ topic/keyword xml-d/sourcexml ">ci:case</sourcexml> will become <targetxml class="+ topic/keyword xml-d/targetxml ">lnci:case</targetxml> 
                                    except when CASEDOC/@type="practicenote" and with the following xpath:
                                    <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:parallelcite/ci:cite @searchtype="CASE-REF"/ci:case</sourcexml> :                                            
                                    In this situation, the <sourcexml class="+ topic/keyword xml-d/sourcexml ">ci:case</sourcexml> will map to <targetxml class="+ topic/keyword xml-d/targetxml ">lnci:cite/lnci:courtorder</targetxml>.                                    
                                </note>
                                
                                The children are described below:
                                <ul class="- topic/ul ">
                                    <li class="- topic/li ">
                                        <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:info/case:parallelcite/ci:cite/ci:case/ci:caseref</sourcexml> becomes
                                        <targetxml class="+ topic/keyword xml-d/targetxml ">ref:citations/ref:cite4thisresource @citetype="parallel"/lnci:cite/lnci:courtorder/lnci:courtorderref</targetxml>.
                                        The source attributes :
                                        <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:info/case:parallelcite/ci:cite/ci:case/ci:caseref @ID="cr000001"</sourcexml> becomes
                                        <targetxml class="+ topic/keyword xml-d/targetxml ">ref:citations/ref:cite4thisresource @citetype="parallel"/lnci:cite/lnci:courtorder/lnci:courtorderref @ID="cr000001"</targetxml>.
                                        
                                        <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:info/case:parallelcite/ci:cite/ci:case/ci:caseref @spanref="cr000001-001"</sourcexml> is dropped. 
                                        The children are described below:
                                        <ul class="- topic/ul ">
                                            <li class="- topic/li ">
                                                <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:info/case:parallelcite/ci:cite/ci:case/ci:caseref/ci:reporter @value="Qd R"</sourcexml> becomes
                                                <targetxml class="+ topic/keyword xml-d/targetxml ">ref:citations/ref:cite4thisresource @citetype="parallel"/lnci:cite/lnci:courtorder/lnci:courtorderref/lnci:reporter @value="Qd R"</targetxml>.
                                            </li>
                                            <li class="- topic/li ">
                                                <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:info/case:parallelcite/ci:cite/ci:case/ci:caseref/ci:volume @num="1"</sourcexml> becomes
                                                <targetxml class="+ topic/keyword xml-d/targetxml ">ref:citations/ref:cite4thisresource @citetype="parallel"/lnci:cite/lnci:courtorder/lnci:courtorderref/lnci:volume @num="1"</targetxml>.
                                            </li>
                                            <li class="- topic/li ">
                                                <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:info/case:parallelcite/ci:cite/ci:case/ci:caseref/ci:edition/ci:date @year="1996"</sourcexml> becomes
                                                <targetxml class="+ topic/keyword xml-d/targetxml ">ref:citations/ref:cite4thisresource @citetype="parallel"/lnci:cite/lnci:courtorder/lnci:courtorderref/lnci:edition/lnci:date @year="1996"</targetxml>.
                                            </li>
                                            <li class="- topic/li ">
                                                <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:info/case:parallelcite/ci:cite/ci:case/ci:caseref/ci:page @num="617"</sourcexml> becomes
                                                <targetxml class="+ topic/keyword xml-d/targetxml ">ref:citations/ref:cite4thisresource @citetype="parallel"/lnci:cite/lnci:courtorder/lnci:courtorderref/lnci:page @num="617"</targetxml>.
                                            </li>                                            
                                        </ul>
                                    </li>
                                </ul>
                                
                            </li>
                            <li class="- topic/li ">
                                <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:info/case:parallelcite/ci:cite/ci:content</sourcexml> becomes
                                <targetxml class="+ topic/keyword xml-d/targetxml ">courtorder:head/ref:citations/ref:cite4thisresource @citetype="parallel"/lnci:cite/lnci:content</targetxml>
                                The children are described below:
                                <ul class="- topic/ul ">
                                    <li class="- topic/li ">
                                        <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:parallelcite/ci:cite/ci:content/citefragment @searchtype="CASE-REF"</sourcexml> the element is dropped 
                                        but the content is maintained in <targetxml class="+ topic/keyword xml-d/targetxml ">courtorder:head/ref:citations/ref:cite4thisresource @citetype="parallel"/lnci:cite/lnci:content</targetxml>
                                    </li>
                                </ul>                               
                                                      
                            </li>                         
                                             
                        </ul>
                  <pre xml:space="preserve" class="- topic/pre ">

&lt;case:headnote&gt;
    &lt;case:info&gt;
        &lt;case:parallelcite&gt;Also reported at: 
            &lt;ci:cite searchtype="CASE-REF"&gt;
                &lt;ci:case&gt;
                    &lt;ci:caseref ID="cr000001" spanref="cr000001-001"&gt;
                        &lt;ci:reporter value="Qd R"/&gt;
                        &lt;ci:volume num="1"/&gt;
                        &lt;ci:edition&gt;
                        &lt;ci:date year="1996"/&gt;
                        &lt;/ci:edition&gt;
                        &lt;ci:page num="617"/&gt;
                    &lt;/ci:caseref&gt;
                &lt;/ci:case&gt;
                &lt;ci:content&gt;
                    &lt;citefragment searchtype="CASE-CITE-REF"&gt;
                        &lt;ci:span spanid="cr000001-001"&gt;[1996] 1 Qd R 617&lt;/ci:span&gt;
                    &lt;/citefragment&gt;
                &lt;/ci:content&gt;
            &lt;/ci:cite&gt;
        &lt;/case:parallelcite&gt;
    &lt;/case:info&gt;
&lt;/case:headnote&gt;
<b class="+ topic/ph hi-d/b ">Becomes</b>

&lt;courtorder:head&gt;
    &lt;ref:citations&gt;
        &lt;ref:cite4thisresource citetype="parallel"&gt;
            &lt;lnci:cite&gt;
                &lt;lnci:courtorder&gt;
                    &lt;lnci:courtorderref&gt;
                        &lt;lnci:reporter value="Qd R"/&gt;
                        &lt;lnci:volume num="1"/&gt;     
                        &lt;lnci:edition&gt;
                        &lt;lnci:date year="1996"/&gt;
                        &lt;/lnci:edition&gt;
                        &lt;lnci:page num="617"/&gt;
                    &lt;/lnci:courtorderref&gt;
                &lt;/lnci:courtorder&gt;
                &lt;lnci:content&gt;Also reporter at: [1996] 1 Qd R 617&lt;/lnci:content&gt;
            &lt;/lnci:cite&gt;
        &lt;/ref:cite4thisresource&gt;
    &lt;/ref:citations&gt;
&lt;/courtorder:head&gt;                
</pre>
                    
                    </li></ul>
      </section>
       <section>
           <title>Changes</title>
           <p>2013-05-14: <ph id="change_20130514_RPX">Updated instructions on how to handle the attribute <sourcexml>case:parallelcite/ci:cite/ci:case/ci:caseref @spanref</sourcexml>.</ph></p>
       </section>
   </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU07_courtorder\case.parallelcite.dita  -->
	
	<xsl:template match="case:parallelcite">
	    <ref:citations>
		 <ref:cite4thisresource>
			<xsl:attribute name="citetype">parallel</xsl:attribute>
			<xsl:apply-templates select="@* | *"/>
		 </ref:cite4thisresource>
	    </ref:citations>
	</xsl:template>
	
	
	<xsl:template match="case:parallelcite[/CASEDOC[lower-case(@type)='practicenote']]/ci:cite/ci:case" priority="35">
		<lnci:courtorder>
			<lnci:courtorder>
				<xsl:apply-templates select="@*"/>
				<xsl:call-template name="courtorderCitation"/>
			</lnci:courtorder>
		</lnci:courtorder>
	</xsl:template>
	
	<!-- I think the rest is handled under reportercite or generic ci:cite module -->
	
	
	
</xsl:stylesheet>