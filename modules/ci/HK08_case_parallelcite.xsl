<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
    xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
    xmlns:case="http://www.lexis-nexis.com/glp/case" 
    xmlns:ci="http://www.lexis-nexis.com/ci" 
    xmlns:cttr="urn:x-lexisnexis:content:citator:sharedservices:1" 
    xmlns:lnci="http://www.lexisnexis.com/xmlschemas/content/shared/citations/1/" 
    xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" 
    version="2.0" exclude-result-prefixes="dita case ci">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="case.parallelcite">
   <title>case:parallelcite <lnpid>id-HK08-37608</lnpid></title>
   <body>
      <section>
         <ul><li class="- topic/li ">
                    <sourcexml>case:parallelcite/ci:cite</sourcexml> is now mapped to two places:
                        <targetxml>cttr:caseinfo/cttr:citations/lnci:cite</targetxml> and
                        <targetxml>cttr:caseinfo/ref:citations/ref:cite4thisresource/lnci:cite</targetxml>,
                    see example. <note>LBU has in requirements that a search on a citation gets both
                        results of the citator document and the case it refers to. In order to
                        accomplish this, we need to map
                            <sourcexml>case:parallelcite/ci:cite</sourcexml> to
                            <targetxml>ref:citations/ref:cite4thisresource/lnci:cite</targetxml> so
                        the JCite search should pick up both the case summary document and the
                        citator document for the case. This would allow the JCite to get what it
                        needs to meet the “get both documents” business requirement. </note>
                    <note>
                        <p>Duplicate citations cannot have the same IDs or the document becomes
                            invalid. To avoid this validation error, append the IDs for the
                            citations in ref:citations/ref:cite4thisresource/lnci:cite with extra
                            text (such as '_1') to make them unique.</p>
                    </note> The children can be converted as follows : <ul>
                        <li>
                            <sourcexml>ci:case</sourcexml> maps to <targetxml>lnci:case</targetxml>. </li>
                        <li>
                            <sourcexml>ci:content</sourcexml> maps to
                                <targetxml>lnci:content</targetxml>. </li>
                    </ul>
                    <pre>

&lt;case:info&gt;
    &lt;case:parallelcite&gt;
        &lt;ci:cite searchtype="CASE-REF"&gt;
            &lt;ci:case&gt;
                &lt;ci:caseinfo&gt;
                    &lt;ci:decisiondate year="1993"/&gt;
                &lt;/ci:caseinfo&gt;
                &lt;ci:caseref ID="cr000001" spanref="cr000001-001"&gt;
                    &lt;ci:reporter value="HKPLR"/&gt;
                    &lt;ci:volume num="3"/&gt;
                    &lt;ci:page num="243"/&gt;
                &lt;/ci:caseref&gt;
            &lt;/ci:case&gt;            
            &lt;ci:content&gt;
                &lt;citefragment searchtype="CASE-CITE-REF"&gt;&lt;ci:span spanid="cr000001-001"&gt;(1993)
                           3 HKPLR 243&lt;/ci:span&gt;; &lt;ci:span spanid="cr000002-001"&gt;[1993] 2 HKCLR
                           212&lt;/ci:span&gt;; &lt;ci:span spanid="cr000003-001"&gt;[1993] HKCU
                        674&lt;/ci:span&gt;&lt;/citefragment&gt;
            &lt;/ci:content&gt;
        &lt;/ci:cite&gt;
    &lt;/case:parallelcite&gt;
&lt;/case:info&gt;


<b>Becomes</b>

&lt;cttr:caseinfo&gt; 
    &lt;cttr:citations&gt;
        &lt;lnci:cite type="case"&gt;
                &lt;lnci:case&gt;
                    &lt;lnci:caseinfo&gt;
                        &lt;lnci:decisiondate year="1993"/&gt;
                    &lt;/lnci:caseinfo&gt;
                    &lt;lnci:caseref ID="cr000001"&gt;
                        &lt;lnci:reporter value="HKPLR"/&gt;
                        &lt;lnci:volume num="3"/&gt;
                        &lt;lnci:page num="243"/&gt;
                    &lt;/lnci:caseref&gt;
                &lt;/lnci:case&gt;
                &lt;lnci:content&gt;(1993)3 HKPLR 243; [1993] 2 HKCLR 212; [1993] HKCU 674&lt;/lnci:content&gt;
            &lt;/lnci:cite&gt;
    &lt;/cttr:citations&gt;
    &lt;ref:citations&gt;
        &lt;ref:cite4thisresource&gt;
            &lt;lnci:cite type="case"&gt;
                &lt;lnci:case&gt;
                    &lt;lnci:caseinfo&gt;
                        &lt;lnci:decisiondate year="1993"/&gt;
                    &lt;/lnci:caseinfo&gt;
                    &lt;lnci:caseref ID="cr000001"&gt;
                        &lt;lnci:reporter value="HKPLR"/&gt;
                        &lt;lnci:volume num="3"/&gt;
                        &lt;lnci:page num="243"/&gt;
                    &lt;/lnci:caseref&gt;
                &lt;/lnci:case&gt;
                &lt;lnci:content&gt;(1993)3 HKPLR 243; [1993] 2 HKCLR 212; [1993] HKCU 674&lt;/lnci:content&gt;
            &lt;/lnci:cite&gt;
        &lt;/ref:cite4thisresource&gt;
    &lt;/ref:citations&gt;
&lt;/cttr:caseinfo&gt;

</pre>
                </li></ul>
      </section>
       <section>
           <title>Changes</title>
           <p>2016-04-19: <ph id="change_20160419_AS">Created</ph></p>
       </section>
   </body>
	</dita:topic>

	<xsl:template match="case:parallelcite">
	    <xsl:if test="ci:cite">
			<cttr:citations>
					<xsl:apply-templates select="@* | node()"/>
			</cttr:citations>
	    </xsl:if>
	    <xsl:if test="($streamID='AU02') and (normalize-space(/text())='') and not(child::ci:cite)">
	        <cttr:citations>
	            <!-- Mandatory element as per CI -->
	        </cttr:citations>
	    </xsl:if>
	</xsl:template>
    
    <xsl:template match="case:parallelcite" mode="ref">
        <xsl:if test="ci:cite">
        <ref:citations>
            <xsl:for-each select="ci:cite">
            <ref:cite4thisresource>
                <xsl:apply-templates select=".">
                    <xsl:with-param name="increment-caserefid" select="'yes'" tunnel="yes"/>
                </xsl:apply-templates>
            </ref:cite4thisresource>
            </xsl:for-each>            
        </ref:citations>
        </xsl:if>
    </xsl:template>   

  
</xsl:stylesheet>