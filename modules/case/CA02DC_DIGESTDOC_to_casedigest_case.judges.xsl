<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:ci="http://www.lexis-nexis.com/ci" xmlns:casedigest="http://www.lexisnexis.com/xmlschemas/content/legal/case-digest/1/" xmlns:casehist="http://www.lexisnexis.com/xmlschemas/content/legal/case-history/1/" xmlns:proc="http://www.lexisnexis.com/xmlschemas/content/shared/process-elements/1/" xmlns:courtcase="http://www.lexisnexis.com/xmlschemas/content/legal/courtcase/1/" xmlns:xs="http://www.w3.org/2001/XMLSchema"
xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/" version="2.0" exclude-result-prefixes="dita case xs ci">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="case.judges">
    <title>case:judges <lnpid>id-CA02DC-12615</lnpid></title>
    <body>
        <section>
            <ul>
                <li>
                    <sourcexml>case:judges</sourcexml> becomes
                        <targetxml>/casedigest:casedigest/casedigest:head/casedigest:caseinfo/casedigest:appearances/courtcase:panel/courtcase:judges</targetxml>
                    <note>If <sourcexml>case:judges</sourcexml> has <sourcexml>nl</sourcexml> as
                        direct child element, then <sourcexml>nl</sourcexml> will be converted to
                            <targetxml>proc:nl</targetxml>.</note>
                    
                    <pre>

&lt;case:judges&gt;per Gerwing J.A.&lt;/case:judges&gt;


<b>Becomes</b>


&lt;casedigest:caseinfo&gt;
    &lt;casedigest:appearances&gt;
        &lt;courtcase:panel&gt;
            &lt;courtcase:judges&gt;per Gerwing J.A.&lt;/courtcase:judges&gt;
        &lt;/courtcase:panel&gt;
    &lt;/casedigest:appearances&gt;        
&lt;/caseinfo:caseinfo&gt;

                    </pre>
                    <note>There is a scenario found in Rosetta xml files where
                            <sourcexml>case:judges</sourcexml> contains <b>judge</b> information and
                            <b>history</b> information. This is a data error. Below are the
                        instructions given for handling it.<p>
                            <sourcexml>case:judges</sourcexml> will come in two patterns, as given
                            below:</p>
                        <ul>
                            <li>&lt;case:judges&gt;{judge(s)}&lt;/judges&gt;</li>
                            <li>&lt;case:judges&gt;{judge(s)} {phrase from spreadsheet} {&lt;ci:cite/&gt;} {text}&lt;/case:judges}</li>
                        </ul>
                        <p>If a phrase is found in the second {} from "wdns_with_cicite in judges
                            tag.xlsx" then that {} and everything after it is moved to:
                                <targetxml>casedigest:body/casehist:casehist/casehist:subhist/casehist:summary/p/text</targetxml>
                        </p></note><note>Instructions about spreadsheet <b>"wdns_with_cicite in
                            judges tag.xlsx":</b> Column <b>“C”</b> has the keyword that separates
                        the (optional) judges from the history statement. The keyword and stuff
                        after it are moved to history markup:
                            <targetxml>casedigest:body/casehist:casehist/casehist:subhist/casehist:summary/p/text</targetxml>.
                        The first should be handled the same as the second. If there is no judge
                        names, then there are no judge names. The keyword <sourcexml>“affd {date}
                            &lt;ci:case&gt;”</sourcexml> triggers everything in judges to be
                        moved to the history markup. The second one is a data error. It is annotated
                        in the <b>“comments”</b> column. But, if there is no text before the keyword
                            <b>“revd”</b> then according to the instruction the keyword and
                        subsequent <sourcexml>ci:cite</sourcexml> would move to the <b>history</b>
                        markup.</note><note>If there is punctuation between the judge and history,
                        for example a comma, then it is preferred to drop it. (the comma) If it can
                        not be dropped, then it would probably be better in the history but not much
                        difference if it is left in the judge.</note>
                    <pre>                            

&lt;case:judges&gt;Reilly J., additional reasons, &lt;ci:cite&gt;
        &lt;ci:case&gt;
            &lt;ci:caseinfo&gt;
                &lt;ci:decisiondate year="2000"/&gt;
            &lt;/ci:caseinfo&gt;
            &lt;ci:caseref ID="cref00001214" spanref="cspan00001214"&gt;
                &lt;ci:reporter value="CCEL2"/&gt;
                &lt;ci:volume num="49"/&gt;
                &lt;ci:page num="285"/&gt;
            &lt;/ci:caseref&gt;
        &lt;/ci:case&gt;
        &lt;ci:content&gt;
            &lt;ci:span spanid="cspan00001214"&gt;(2000), 49 C.C.E.L. (2d) 285&lt;/ci:span&gt;
        &lt;/ci:content&gt;
    &lt;/ci:cite&gt; (ONSupCtJus) &lt;/case:judges&gt;
                            
</pre>
                    <b>Becomes</b>
                    <pre>
                   
&lt;casedigest:head&gt;
    &lt;casedigest:caseinfo&gt;
        &lt;casedigest:appearances&gt;
            &lt;courtcase:panel&gt;
                &lt;courtcase:judges&gt;Reilly J.&lt;/courtcase:judges&gt;
            &lt;/courtcase:panel&gt;
        &lt;/casedigest:appearances&gt;
    &lt;/casedigest:caseinfo&gt;
&lt;/casedigest:head&gt;

&lt;casedigest:body&gt;
    &lt;casehist:casehist&gt;
        &lt;casehist:subhist&gt;
            &lt;casehist:summary&gt;
                &lt;p&gt;
                    &lt;text&gt;additional reasons, &lt;lnci:cite&gt;
                        &lt;lnci:case&gt;
                            &lt;lnci:caseinfo&gt;
                                &lt;lnci:decisiondate year="2000"/&gt;
                            &lt;/lnci:caseinfo&gt;
                            &lt;lnci:caseref ID="cref00001214" spanref="cspan00001214"&gt;
                                &lt;lnci:reporter value="CCEL2"/&gt;
                                &lt;lnci:volume num="49"/&gt;
                                &lt;lnci:page num="285"/&gt;
                            &lt;/lnci:caseref&gt;
                        &lt;/lnci:case&gt;
                        &lt;lnci:content&gt;
                            &lt;lnci:span spanid="cspan00001214"&gt;(2000), 49 C.C.E.L. (2d) 285&lt;/lnci:span&gt;
                        &lt;/lnci:content&gt;
                    &lt;/lnci:cite&gt; (ONSupCtJus)&lt;/text&gt;
                &lt;/p&gt;
            &lt;/casehist:summary&gt;
        &lt;/casehist:subhist&gt;
    &lt;/casehist:casehist&gt;
&lt;/casedigest:body&gt;    
   </pre>
                    <note><targetxml>casehist:casehist</targetxml> will move in <targetxml>casedigest:body</targetxml>.</note>
                </li>
            </ul>
        </section>
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA02-Case_Summaries\CA02DC_DIGESTDOC_to_casedigest\case.judges.dita  -->
	 
	 <xsl:variable name="lookups">
	     <lookup-term>additional reasons</lookup-term>
	     <lookup-term>affd</lookup-term>
	     <lookup-term>suppd</lookup-term>
	     <lookup-term>vard</lookup-term>
	     <lookup-term>affg</lookup-term>
	     <lookup-term>appeal allowed</lookup-term>
	     <lookup-term>new trial ordered</lookup-term>
	     <lookup-term>revd</lookup-term>
	     <lookup-term>revg</lookup-term>
	     <lookup-term>varg</lookup-term>
	     <lookup-term>unreported, February 17, 1997 (ONCA) Labrosse J.A. Leave to appeal refused</lookup-term>
	 </xsl:variable>
	 
	 
	 
<!--Vikas Rohilla : Updated the template Initial -->
    <xsl:template match="case:judges[child::ci:cite]">
        <xsl:variable name="judge" select="text()[1]"/>
        <casedigest:appearances>
            <courtcase:panel>
                <courtcase:judges>
                   <xsl:choose>
                       <xsl:when test="contains($judge,'additional reasons')">
                           <xsl:analyze-string select="$judge" regex="(.*)(additional reasons)(.*)">
                               <xsl:matching-substring>
                                   <xsl:value-of select="regex-group(1)"/>
                               </xsl:matching-substring>
                           </xsl:analyze-string>
                       </xsl:when>
                       <xsl:when test="contains($judge,', affd')">
                           <xsl:analyze-string select="$judge" regex="(.*)(, affd)(.*)">
                               <xsl:matching-substring>
                                   <xsl:value-of select="regex-group(1)"/>
                               </xsl:matching-substring>
                           </xsl:analyze-string>
                       </xsl:when>
                       <xsl:when test="contains($judge,'; affd')">
                           <xsl:analyze-string select="$judge" regex="(.*)(; affd)(.*)">
                               <xsl:matching-substring>
                                   <xsl:value-of select="regex-group(1)"/>
                               </xsl:matching-substring>
                           </xsl:analyze-string>
                       </xsl:when>
                       <xsl:when test="contains($judge,'affd')">
                           <xsl:analyze-string select="$judge" regex="(.*)(affd)(.*)">
                               <xsl:matching-substring>
                                   <xsl:value-of select="regex-group(1)"/>
                               </xsl:matching-substring>
                           </xsl:analyze-string>
                       </xsl:when>
                       <xsl:when test="contains($judge,', suppd')">
                           <xsl:analyze-string select="$judge" regex="(.*)(, suppd)(.*)">
                               <xsl:matching-substring>
                                   <xsl:value-of select="regex-group(1)"/>
                               </xsl:matching-substring>
                           </xsl:analyze-string>
                       </xsl:when>
                       <xsl:when test="contains($judge,'suppd')">
                           <xsl:analyze-string select="$judge" regex="(.*)(suppd)(.*)">
                               <xsl:matching-substring>
                                   <xsl:value-of select="regex-group(1)"/>
                               </xsl:matching-substring>
                           </xsl:analyze-string>
                       </xsl:when>
                       <xsl:when test="contains($judge,', vard')">
                           <xsl:analyze-string select="$judge" regex="(.*)(, vard)(.*)">
                               <xsl:matching-substring>
                                   <xsl:value-of select="regex-group(1)"/>
                               </xsl:matching-substring>
                           </xsl:analyze-string>
                       </xsl:when>
                       <xsl:when test="contains($judge,'vard')">
                           <xsl:analyze-string select="$judge" regex="(.*)(vard)(.*)">
                               <xsl:matching-substring>
                                   <xsl:value-of select="regex-group(1)"/>
                               </xsl:matching-substring>
                           </xsl:analyze-string>
                       </xsl:when>
                       <xsl:when test="contains($judge,', affg')">
                           <xsl:analyze-string select="$judge" regex="(.*)(, affg)(.*)">
                               <xsl:matching-substring>
                                   <xsl:value-of select="regex-group(1)"/>
                               </xsl:matching-substring>
                           </xsl:analyze-string>
                       </xsl:when>
                       <xsl:when test="contains($judge,'affg')">
                           <xsl:analyze-string select="$judge" regex="(.*)(affg)(.*)">
                               <xsl:matching-substring>
                                   <xsl:value-of select="regex-group(1)"/>
                               </xsl:matching-substring>
                           </xsl:analyze-string>
                       </xsl:when>
                       <xsl:when test="contains($judge,', appeal allowed')">
                           <xsl:analyze-string select="$judge" regex="(.*)(, appeal allowed)(.*)">
                               <xsl:matching-substring>
                                   <xsl:value-of select="regex-group(1)"/>
                               </xsl:matching-substring>
                           </xsl:analyze-string>
                       </xsl:when>
                       <xsl:when test="contains($judge,'appeal allowed')">
                           <xsl:analyze-string select="$judge" regex="(.*)(appeal allowed)(.*)">
                               <xsl:matching-substring>
                                   <xsl:value-of select="regex-group(1)"/>
                               </xsl:matching-substring>
                           </xsl:analyze-string>
                       </xsl:when>
                       <xsl:when test="contains($judge,', new trial order')">
                           <xsl:analyze-string select="$judge" regex="(.*)(, new trial order)(.*)">
                               <xsl:matching-substring>
                                   <xsl:value-of select="regex-group(1)"/>
                               </xsl:matching-substring>
                           </xsl:analyze-string>
                       </xsl:when>
                       <xsl:when test="contains($judge,'new trial order')">
                           <xsl:analyze-string select="$judge" regex="(.*)(new trial order)(.*)">
                               <xsl:matching-substring>
                                   <xsl:value-of select="regex-group(1)"/>
                               </xsl:matching-substring>
                           </xsl:analyze-string>
                       </xsl:when>
                       <xsl:when test="contains($judge,', revd')">
                           <xsl:analyze-string select="$judge" regex="(.*)(, revd)(.*)">
                               <xsl:matching-substring>
                                   <xsl:value-of select="regex-group(1)"/>
                               </xsl:matching-substring>
                           </xsl:analyze-string>
                       </xsl:when>
                       <xsl:when test="contains($judge,'revd')">
                           <xsl:analyze-string select="$judge" regex="(.*)(revd)(.*)">
                               <xsl:matching-substring>
                                   <xsl:value-of select="regex-group(1)"/>
                               </xsl:matching-substring>
                           </xsl:analyze-string>
                       </xsl:when>
                       <xsl:when test="contains($judge,', revg')">
                           <xsl:analyze-string select="$judge" regex="(.*)(, revg)(.*)">
                               <xsl:matching-substring>
                                   <xsl:value-of select="regex-group(1)"/>
                               </xsl:matching-substring>
                           </xsl:analyze-string>
                       </xsl:when>
                       <xsl:when test="contains($judge,'revg')">
                           <xsl:analyze-string select="$judge" regex="(.*)(revg)(.*)">
                               <xsl:matching-substring>
                                   <xsl:value-of select="regex-group(1)"/>
                               </xsl:matching-substring>
                           </xsl:analyze-string>
                       </xsl:when>
                       <xsl:when test="contains($judge,', varg')">
                           <xsl:analyze-string select="$judge" regex="(.*)(, varg)(.*)">
                               <xsl:matching-substring>
                                   <xsl:value-of select="regex-group(1)"/>
                               </xsl:matching-substring>
                           </xsl:analyze-string>
                       </xsl:when>
                       <xsl:when test="contains($judge,'varg')">
                           <xsl:analyze-string select="$judge" regex="(.*)(varg)(.*)">
                               <xsl:matching-substring>
                                   <xsl:value-of select="regex-group(1)"/>
                               </xsl:matching-substring>
                           </xsl:analyze-string>
                       </xsl:when>
                       <xsl:when test="contains($judge,', unreported')">
                           <xsl:analyze-string select="$judge" regex="(.*)(, unreported)(.*)">
                               <xsl:matching-substring>
                                   <xsl:value-of select="regex-group(1)"/>
                               </xsl:matching-substring>
                           </xsl:analyze-string>
                       </xsl:when>
                       <xsl:when test="contains($judge,'unreported')">
                           <xsl:analyze-string select="$judge" regex="(.*)(unreported)(.*)">
                               <xsl:matching-substring>
                                   <xsl:value-of select="regex-group(1)"/>
                               </xsl:matching-substring>
                           </xsl:analyze-string>
                       </xsl:when>  
                       <xsl:otherwise>
                           <xsl:call-template name="outputErrorMessage">
                               <xsl:with-param name="messageText" as="xs:string" select=" 'judge value is empty'"/>
                               <xsl:with-param name="errorType" as="xs:string" select=" 'ROCKET' "/>
                               <xsl:with-param name="errorCode" as="xs:string*" select=" '403' "/>
                               <xsl:with-param name="context" as="xs:string">
                                   <xsl:value-of select="base-uri()"/> 
                               </xsl:with-param>
                           </xsl:call-template>    
                       </xsl:otherwise>
                   </xsl:choose>             
                </courtcase:judges>
            </courtcase:panel>
        </casedigest:appearances>
    </xsl:template>
    
    <xsl:template match="case:judges[not(child::ci:cite)]">
        <casedigest:appearances>
            <courtcase:panel>
                <courtcase:judges>
                    <xsl:apply-templates/>
                </courtcase:judges>
            </courtcase:panel>
        </casedigest:appearances>
    </xsl:template>

    <xsl:template match="case:judges/nl">
        <proc:nl>
        </proc:nl>        
    </xsl:template>


</xsl:stylesheet>