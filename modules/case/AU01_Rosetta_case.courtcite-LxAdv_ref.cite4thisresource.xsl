<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:ci="http://www.lexis-nexis.com/ci" xmlns:lnci="http://www.lexisnexis.com/xmlschemas/content/shared/citations/1/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita case ci">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="AU01_Rosetta_case.courtcite-LxAdv_caseinfo.courtcite">
    <title>case:courtcite <lnpid>id-AU01-18214</lnpid></title>
    <body>
        <section>
            <p><sourcexml>case:courtcite</sourcexml> conversion depends upon its child elements,
                refer below scenarios:</p>
            <p>When <sourcexml>ci:cite/@type="parallel"</sourcexml> is a child of
                    <sourcexml>case:courtcite</sourcexml> then its become
                    <targetxml>ref:parallelcite/@citetype="court"</targetxml>.</p>
        </section>
        <example>
            <codeblock>
&lt;case:courtcite&gt;
    &lt;ci:cite type="parallel"&gt;
        &lt;ci:content&gt;THE STATE OF WESTERN AUSTRALIA -v- A F [2014] WADC 124&lt;/ci:content&gt;
    &lt;/ci:cite&gt;
&lt;/case:courtcite&gt;
</codeblock>
            <b>becomes</b>
            <codeblock>
&lt;ref:parallelcite citetype="court"&gt;
    &lt;lnci:cite&gt;
        &lt;lnci:content&gt;THE STATE OF WESTERN AUSTRALIA -v- A F [2014] WADC 124&lt;/lnci:content&gt;
    &lt;/lnci:cite&gt;
&lt;/ref:parallelcite&gt;
           </codeblock>
        </example>
        <section>
            <p>When <sourcexml>ci:cite/@type="cite4thisdoc"</sourcexml> is a child of
                    <sourcexml>case:courtcite</sourcexml> then its become
                    <targetxml>ref:cite4thisresource/@citetype="court"</targetxml>.</p>
        </section>
        <example>
            <codeblock>
&lt;case:courtcite&gt;
    &lt;ci:cite type="cite4thisdoc"&gt;
        &lt;ci:content&gt;Maritime Union of Australia v Geraldton Port Authority [2000] FCA
            16&lt;/ci:content&gt;
    &lt;/ci:cite&gt;
&lt;/case:courtcite&gt;
</codeblock>
            <b>becomes</b>
            <codeblock>
&lt;ref:cite4thisresource citetype="court"&gt;
    &lt;lnci:cite&gt;
        &lt;lnci:content&gt;Maritime Union of Australia v Geraldton Port Authority [2000] FCA
            16&lt;/lnci:content&gt;
    &lt;/lnci:cite&gt;
&lt;/ref:cite4thisresource&gt;
           </codeblock>
        </example>
        <section>
            <p>When <sourcexml>@type</sourcexml> attribute is not present in the
                    <sourcexml>ci:cite</sourcexml> element then
                    <sourcexml>case:courtcite</sourcexml> becomes
                    <targetxml>ref:cite4thisresource/@citetype="court"</targetxml></p>
        </section>

        <example>
            <codeblock>
&lt;case:courtcite&gt;
    &lt;ci:cite&gt;
        &lt;ci:content&gt;Le Brun (An Incapable Person Suing By His Next Friend Elaine Le Brun) v Joseph
            and Ors [2006] WADC 200&lt;/ci:content&gt;
    &lt;/ci:cite&gt;
&lt;/case:courtcite&gt;
</codeblock>
            <b>becomes</b>
            <codeblock>
&lt;ref:cite4thisresource citetype="court"&gt;
    &lt;lnci:cite&gt;
        &lt;lnci:content&gt;Le Brun (An Incapable Person Suing By His Next Friend Elaine Le Brun) v Joseph
            and Ors [2006] WADC 200&lt;/lnci:content&gt;
    &lt;/lnci:cite&gt;
&lt;/ref:cite4thisresource&gt;
           </codeblock></example>
        <note>If <sourcexml>case:courtcite/ci:cite/@type="cite4thisdoc"</sourcexml> then duplicate
            all the <targetxml>ref:para</targetxml> in the document using the
                <targetxml>lnci:au@courtcode</targetxml> value in
                <targetxml>@para-scheme</targetxml> and
                <targetxml>@paraschemetype="court-code"</targetxml>. For more clarification please
            refer the example below. </note>
        <example>
            <codeblock><b>SOURCE XML</b>

&lt;case:courtcite&gt;
    &lt;ci:cite type="cite4thisdoc"&gt;
        &lt;ci:case&gt;
            &lt;ci:caseinfo&gt;
                &lt;ci:opinionnum num="201"/&gt;
                &lt;ci:jurisinfo&gt;
                    &lt;ci:au courtcode="nswca"/&gt;
                &lt;/ci:jurisinfo&gt;
                &lt;ci:decisiondate year="2008"/&gt;
            &lt;/ci:caseinfo&gt;
        &lt;/ci:case&gt;
        &lt;ci:content&gt;[2008] NSWCA 201&lt;/ci:content&gt;
    &lt;/ci:cite&gt;
&lt;/case:courtcite&gt;

           </codeblock>
            <b>becomes</b>
            <codeblock>
&lt;ref:citations&gt;    
    &lt;ref:cite4thisresource citetype="court"&gt;        
        &lt;lnci:cite&gt;            
            &lt;lnci:case&gt;                
                &lt;lnci:caseinfo&gt;                    
                    &lt;lnci:opinionnum num="201"/&gt;                    
                    &lt;lnci:jurisinfo&gt;                        
                        &lt;lnci:au courtcode="nswca"/&gt;                        
                    &lt;/lnci:jurisinfo&gt;                    
                    &lt;lnci:decisiondate year="2008"/&gt;                    
                &lt;/lnci:caseinfo&gt;                
            &lt;/lnci:case&gt;            
            &lt;lnci:content&gt;[2008] NSWCA 201&lt;/lnci:content&gt;            
        &lt;/lnci:cite&gt;        
    &lt;/ref:cite4thisresource&gt;    
&lt;/ref:citations&gt;

and

&lt;ref:para num="1" para-scheme="nswlr" para-scheme-type="reporter-abbreviation"&gt;[1]&lt;/ref:para&gt;
&lt;ref:para num="1" para-scheme="nswca" para-scheme-type="court-code"/&gt;  


            </codeblock>
        </example>

        <section>
            <title>Changes</title>
            <p>2016-11-15: <ph id="change_20161115_AS">Added instruction and example when
                <sourcexml>case:courtcite/ci:cite/@type="cite4thisdoc"</sourcexml> then duplicate all the <targetxml>ref:para</targetxml> using the <targetxml>lnci:au@courtcode</targetxml> Applicable for AU01 and NZ03. Webstar # 6366618 and VSTS #147977</ph></p>
            <p>2015-12-24: <ph id="change_20151224_PS">Added instruction and example when
                        <sourcexml>@type</sourcexml> attribute is not present in
                        <sourcexml>ci:cite</sourcexml> element. Applicable on AU01, Webstar #
                    6004406</ph></p>
            <p>2015-12-22: <ph id="change_20151222_PS">Updated target mapping and snippet based on
                    the <sourcexml>ci:cite/@type</sourcexml> value, Applicable on AU01, Webstar #
                    6004406.</ph></p>
            <p>2014-06-18: <ph id="change_20140618_PS">Updated target mapping and snippet, Webteam
                    #: 236888.</ph></p>
            <p>2013-05-30: <ph id="change_20130530_DSF">Added direction to create textitem inside
                    caseinfo:courtcite (already reflected in example). Updated example so that
                    ci:cite is no longer dropped as part of mapping.</ph></p>
        </section>
    </body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU01_CaseLaw\AU01_Rosetta_case.courtcite-LxAdv_ref.cite4thisresource.dita  -->

    <xsl:template match="case:courtcite">
        <xsl:if test="child::ci:cite[@type='parallel']">
            <ref:citations>
                <ref:parallelcite citetype="court">
                    <xsl:apply-templates select="node() | @*"/>
                </ref:parallelcite>
            </ref:citations>    
        </xsl:if>
        
    </xsl:template>
    
    
    <xsl:template match="case:courtcite[ci:cite[@type='cite4thisdoc' or not(@type)]]">
        <ref:citations>
            <ref:cite4thisresource citetype="court">
                <xsl:apply-templates select="node() | @*"/>
            </ref:cite4thisresource>
        </ref:citations>
    </xsl:template>

	<!--<xsl:template match="case:courtcite[ci:cite[@type='parallel']]">
	    <ref:citations>
	    <ref:parallelcite citetype="court">
			<xsl:apply-templates select="node() | @*"/>
		</ref:parallelcite>
	    </ref:citations>
	</xsl:template>


	<xsl:template match="case:courtcite[ci:cite[@type='cite4thisdoc' or not(@type)]]">
	    <ref:citations>
	    <ref:cite4thisresource citetype="court">
			<xsl:apply-templates select="node() | @*"/>
		</ref:cite4thisresource>
	    </ref:citations>
	</xsl:template>-->
	
	<!-- TODO: implement DITA <note> above:
	If case:courtcite/ci:cite[@type="cite4thisdoc"] then duplicate all the ref:para in the document using the lnci:au@courtcode 
	value in @para-scheme and @paraschemetype="court-code". For more clarification please refer the example below. 
	-->

</xsl:stylesheet>