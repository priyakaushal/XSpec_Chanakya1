<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:casedigest="http://www.lexisnexis.com/xmlschemas/content/legal/case-digest/1/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="case.parallelcite">
    <title>case:parallelcite <lnpid>id-NZ17CC-25820</lnpid></title>
    <body>
        <section>
            <ul>
                <li class="- topic/li ">
                    <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:parallelcite</sourcexml> 
                    is mapped based upon the value of <sourcexml class="+ topic/keyword xml-d/sourcexml ">/CITATORDOC/@citatordoctype</sourcexml>. 
                    <ul>
                        <li>
                            If <sourcexml class="+ topic/keyword xml-d/sourcexml ">/CITATORDOC/@citatordoctype</sourcexml> = "aclrep", then 
                            <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:parallelcite</sourcexml> 
                            becomes <targetxml class="+ topic/keyword xml-d/targetxml ">ref:citations/ref:parallelcite/@citetype="parallel"</targetxml> as a child element
                            of <targetxml class="+ topic/keyword xml-d/targetxml ">ref:citations</targetxml>.
                        </li>
                        <li>
                            If <sourcexml class="+ topic/keyword xml-d/sourcexml ">/CITATORDOC/@citatordoctype</sourcexml> = "bcl", then 
                            <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:parallelcite</sourcexml> 
                            becomes <targetxml class="+ topic/keyword xml-d/targetxml ">ref:citations/ref:cite4thisresource/@citetype="parallel"</targetxml> as a child element
                            of <targetxml class="+ topic/keyword xml-d/targetxml ">ref:citations</targetxml>
                        </li>
                        <li>
                            If <sourcexml class="+ topic/keyword xml-d/sourcexml ">/CITATORDOC/@citatordoctype</sourcexml> contains a 
                            value other than "bcl" or "aclrep", then 
                            <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:parallelcite</sourcexml> 
                            becomes <targetxml class="+ topic/keyword xml-d/targetxml ">ref:citations/ref:parallelcite/@citetype="parallel"</targetxml> as a child element
                            of <targetxml class="+ topic/keyword xml-d/targetxml ">ref:citations</targetxml>.
                        </li>
                    </ul>
                    
                   
                    
                   
                    <note>Conversion needs to place the
                        <targetxml>ref:citations/ref:cite4thisresource/@citetype="parallel"</targetxml>
                        within <targetxml>casedigest:head</targetxml>. Also, for handling Citation
                        refer the <xref href="../../../common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">ci:cite</xref> section in this CI.</note>
                 </li>
            </ul>
                   <pre xml:space="preserve" class="- topic/pre ">


          </pre>
        </section>
        <example>
            <title>case:parallelcite Example 1: CITATORDOC/@citatordoctype = "aclrep"</title>
            
            <codeblock>
<b class="+ topic/ph hi-d/b ">Source Markup:</b>

&lt;case:parallelcite&gt;
    &lt;ci:cite searchtype="CASE-REF"&gt;
        &lt;ci:case&gt;
            &lt;ci:caseref ID="xcite1"&gt;
                &lt;ci:reporter value="BCL"/&gt;
                &lt;ci:edition&gt;
                    &lt;ci:date year="1996"/&gt;
                &lt;/ci:edition&gt;
                &lt;ci:page num="1"/&gt;
            &lt;/ci:caseref&gt;
        &lt;/ci:case&gt;
        &lt;ci:content&gt;
            &lt;citefragment searchtype="CASE-CITE-REF"&gt;[1996] BCL 1&lt;/citefragment&gt;
        &lt;/ci:content&gt;
    &lt;/ci:cite&gt;
&lt;/case:parallelcite&gt;


<b class="+ topic/ph hi-d/b ">Becomes</b>

<b class="+ topic/ph hi-d/b ">Target Markup:</b>

&lt;ref:citations&gt;
    &lt;ref:parallelcite citetype="parallel"&gt;
        &lt;lnci:cite&gt;
            &lt;lnci:case&gt;
                &lt;lnci:caseref ID="xcite1"&gt;
                    &lt;lnci:reporter value="BCL" /&gt;
                    &lt;lnci:edition&gt;
                        &lt;lnci:date year="1996"/&gt;
                    &lt;/lnci:edition&gt;
                    &lt;lnci:page num="1"/&gt;
                &lt;/lnci:caseref&gt;
            &lt;/lnci:case&gt;
            &lt;lnci:content&gt;[1996] BCL 1&lt;/lnci:content&gt;
        &lt;/lnci:cite&gt;
    &lt;/ref:parallelcite&gt;            
&lt;/ref:citations&gt;

</codeblock>
        </example>
        <example>
            <title>case:parallelcite Example 2: CITATORDOC/@citatordoctype = "bcl"</title>
            
            <codeblock>
<b class="+ topic/ph hi-d/b ">Source Markup:</b>

&lt;case:parallelcite&gt;
    &lt;ci:cite searchtype="CASE-REF"&gt;
        &lt;ci:case&gt;
            &lt;ci:caseref ID="xcite1"&gt;
                &lt;ci:reporter value="BCL"/&gt;
                &lt;ci:edition&gt;
                    &lt;ci:date year="1996"/&gt;
                &lt;/ci:edition&gt;
                &lt;ci:page num="1"/&gt;
            &lt;/ci:caseref&gt;
        &lt;/ci:case&gt;
        &lt;ci:content&gt;
            &lt;citefragment searchtype="CASE-CITE-REF"&gt;[1996] BCL 1&lt;/citefragment&gt;
        &lt;/ci:content&gt;
    &lt;/ci:cite&gt;
&lt;/case:parallelcite&gt;


<b class="+ topic/ph hi-d/b ">Becomes</b>

<b class="+ topic/ph hi-d/b ">Target Markup:</b>

&lt;ref:citations&gt;
    &lt;ref:cite4thisresource citetype="parallel"&gt;
        &lt;lnci:cite&gt;
            &lt;lnci:case&gt;
                &lt;lnci:caseref ID="xcite1"&gt;
                    &lt;lnci:reporter value="BCL" /&gt;
                    &lt;lnci:edition&gt;
                        &lt;lnci:date year="1996"/&gt;
                    &lt;/lnci:edition&gt;
                    &lt;lnci:page num="1"/&gt;
                &lt;/lnci:caseref&gt;
            &lt;/lnci:case&gt;
            &lt;lnci:content&gt;[1996] BCL 1&lt;/lnci:content&gt;
        &lt;/lnci:cite&gt;
    &lt;/ref:cite4thisresource&gt;            
&lt;/ref:citations&gt;

</codeblock>
        </example>

        <section>
            <title>Changes</title>     
            <p>2015-11-13: <ph id="change_2015113_snb:1">Instruction and example modified to map <sourcexml>case:parallelcite</sourcexml> based 
                upon the type of document. For ACL (CITATORDOC@citatordoctype="aclrep") the existing mapping to 
                <targetxml>ref:parallelcite citetype="parallel"</targetxml> is unchanged. For BCL (CITATORDOC@citatordoctype="bcl"), 
                <targetxml>ref:parallelcite citetype="parallel"</targetxml> maps to 
                <targetxml>ref:cite4thisresource citetype="parallel"</targetxml> instead of <targetxml>ref:parallelcite citetype="parallel"</targetxml></ph>.</p>
            <p>2015-09-10: <ph id="change_20150910_mlv:1">Instruction and example updated for mapping <sourcexml>case:parallelcite</sourcexml> to
                <targetxml>ref:parallelcite citetype="parallel"</targetxml></ph>.</p>
        </section>        
        
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\NZ17_Case_Summaries\NZ17CC_Citatordoc_To_CaseDigest\case.parallelcite.dita  -->

<!-- may need to ensure this maps to the head -->
	<xsl:template match="case:parallelcite">
	    <ref:citations>
	        <xsl:choose>
	            <xsl:when test="/CITATORDOC/@citatordoctype='bcl'">
	                <ref:cite4thisresource>
	                    <xsl:attribute name="citetype">parallel</xsl:attribute>
	                    <xsl:apply-templates select="@* | node()"></xsl:apply-templates>
	                </ref:cite4thisresource>
	            </xsl:when>
	            <xsl:otherwise>
	                <ref:parallelcite>
	                    <xsl:attribute name="citetype">parallel</xsl:attribute>
	                    <xsl:apply-templates select="@* | node()"></xsl:apply-templates>
	                </ref:parallelcite>
	            </xsl:otherwise>
	        </xsl:choose>
	    </ref:citations>
	</xsl:template>




</xsl:stylesheet>