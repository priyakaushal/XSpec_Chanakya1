<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:ci="http://www.lexis-nexis.com/ci" xmlns:casedigest="http://www.lexisnexis.com/xmlschemas/content/legal/case-digest/1/" xmlns:lnci="http://www.lexisnexis.com/xmlschemas/content/shared/citations/1/"
    xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita case ci casedigest lnci ref">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Linxplus-CaseDigest_case.parallelcite">
    <title>case:parallelcite <lnpid>id-NZ07DC-23621</lnpid></title>
    <body>
        <section>
            <p><sourcexml>case:parallelcite</sourcexml> becomes
                <targetxml>casedigest:head/casedigest:caseinfo/ref:citations/ref:parallelcite/@citetype="parallel"</targetxml>.</p>
            
            <note>Conversion should not create consecutive
                    <targetxml>casedigest:caseinfo</targetxml> elements. When 2 or more consecutive
                sibling source elements map to <targetxml>casedigest:caseinfo</targetxml>, data
                should be merged to a single <targetxml>casedigest:caseinfo</targetxml> element
                unless this would hamper content ordering.</note>
            <pre>
&lt;case:parallelcite&gt;
    &lt;ci:cite searchtype="CASE-REF"&gt;
        &lt;ci:case&gt;
            &lt;ci:caseinfo&gt;
                &lt;ci:decisiondate year="2005"/&gt;
            &lt;/ci:caseinfo&gt;
            &lt;ci:caseref ID="x-331115" spanref="x-331115-1"&gt;
                &lt;ci:reporter value="nzcpr" country="nz"/&gt;
                &lt;ci:volume num="6"/&gt;
                &lt;ci:page num="433"/&gt;
            &lt;/ci:caseref&gt;
        &lt;/ci:case&gt;
        &lt;ci:content&gt;
            &lt;citefragment searchtype="CASE-CITE-REF"&gt;
                &lt;ci:span spanid="x-331115-1"&gt;(2005) 6 NZCPR 433&lt;/ci:span&gt;
            &lt;/citefragment&gt;
        &lt;/ci:content&gt;
    &lt;/ci:cite&gt;, &lt;ci:cite searchtype="CASE-REF"&gt;
        &lt;ci:case&gt;
            &lt;ci:caseref ID="x-331116" spanref="x-331116-1"&gt;
                &lt;ci:reporter value="nzar" country="nz"/&gt;
                &lt;ci:edition&gt;
                    &lt;ci:date year="2006"/&gt;
                &lt;/ci:edition&gt;
                &lt;ci:page num="594"/&gt;
            &lt;/ci:caseref&gt;
        &lt;/ci:case&gt;
        &lt;ci:content&gt;
            &lt;citefragment searchtype="CASE-CITE-REF"&gt;
                &lt;ci:span spanid="x-331116-1"&gt;[2006] NZAR 594&lt;/ci:span&gt;
            &lt;/citefragment&gt;
        &lt;/ci:content&gt;
    &lt;/ci:cite&gt;
&lt;/case:parallelcite&gt;

<b>Becomes</b>

&lt;casedigest:head&gt;
    &lt;casedigest:caseinfo&gt;
        &lt;ref:citations&gt;
        
            &lt;ref:parallelcite citetype="parallel"&gt;
            
                &lt;lnci:cite&gt;
                    &lt;lnci:case&gt;
                        &lt;lnci:caseinfo&gt;
                            &lt;lnci:decisiondate year="2005"/&gt;
                        &lt;/lnci:caseinfo&gt;
                        &lt;lnci:caseref ID="x-331115"&gt;&lt;lnci:reporter value="nzcpr" country="nz"/&gt;
                            &lt;lnci:volume num="6"/&gt;
                            &lt;lnci:page num="433"/&gt;
                        &lt;/lnci:caseref&gt;
                    &lt;/lnci:case&gt;
                    &lt;lnci:content&gt;(2005) 6 NZCPR 433&lt;/lnci:content&gt;
                &lt;/lnci:cite&gt;, &lt;lnci:cite&gt;
                    &lt;lnci:case&gt;
                        &lt;lnci:caseref ID="x-331116"&gt;
                            &lt;lnci:reporter value="nzar" country="nz"/&gt;
                            &lt;lnci:edition&gt;
                                &lt;lnci:date year="2006"/&gt;
                            &lt;/lnci:edition&gt;
                            &lt;lnci:page num="594"/&gt;
                        &lt;/lnci:caseref&gt;
                    &lt;/lnci:case&gt;
                    &lt;lnci:content&gt;[2006] NZAR 594&lt;/lnci:content&gt;
                &lt;/lnci:cite&gt;
            &lt;/ref:parallelcite&gt;
        &lt;/ref:citations&gt;
    &lt;/casedigest:caseinfo&gt;
&lt;/casedigest:head&gt;
        </pre>
            <p>When <sourcexml>ci:cite</sourcexml> element occurs more than once
                    <sourcexml>case:parallelcite</sourcexml> then conversion should create
                <targetxml>ref:parallelcite citetype="parallel"</targetxml> for
                each <targetxml>lnci:cite</targetxml> element.</p>
            <p>Data between the two consecutive <targetxml>lnci:cite</targetxml> (, | ; | and)
                should be captured in <targetxml>connector</targetxml> element.</p>
            <pre>
&lt;case:parallelcite&gt;
    &lt;ci:cite searchtype="CASE-REF"&gt;
        &lt;ci:case&gt;
            &lt;ci:caseinfo&gt;
                &lt;ci:decisiondate year="1995"/&gt;
            &lt;/ci:caseinfo&gt;
            &lt;ci:caseref ID="x-125495" spanref="x-125495-1"&gt;
                &lt;ci:reporter value="trnz" country="nz"/&gt;
                &lt;ci:volume num="19"/&gt;
                &lt;ci:page num="724"/&gt;
            &lt;/ci:caseref&gt;
        &lt;/ci:case&gt;
        &lt;ci:content&gt;
            &lt;citefragment searchtype="CASE-CITE-REF"&gt;
                &lt;ci:span spanid="x-125495-1"&gt;(1995) 19 TRNZ 724&lt;/ci:span&gt;
            &lt;/citefragment&gt;
        &lt;/ci:content&gt;
    &lt;/ci:cite&gt;, 
    &lt;ci:cite searchtype="CASE-REF"&gt;
        &lt;ci:content&gt;
            &lt;citefragment searchtype="CASE-CITE-REF"&gt;(1995) 17 NZTC 12,226&lt;/citefragment&gt;
        &lt;/ci:content&gt;
    &lt;/ci:cite&gt;
&lt;/case:parallelcite&gt;
     
<b>Becomes</b>
                
&lt;casedigest:head&gt;
    &lt;casedigest:caseinfo&gt;
        &lt;ref:citations&gt;
            &lt;ref:parallelcite citetype="parallel"&gt;
                &lt;lnci:cite&gt;
                    &lt;lnci:case&gt;
                        &lt;lnci:caseinfo&gt;
                            &lt;lnci:decisiondate year="1995"/&gt;
                        &lt;/lnci:caseinfo&gt;
                        &lt;lnci:caseref ID="x-125495"&gt;
                            &lt;lnci:reporter value="trnz" country="nz"/&gt;
                            &lt;lnci:volume num="19"/&gt;
                            &lt;lnci:page num="724"/&gt;
                        &lt;/lnci:caseref&gt;
                    &lt;/lnci:case&gt;
                    &lt;lnci:content&gt;(1995) 19 TRNZ 724&lt;/lnci:content&gt;
                &lt;/lnci:cite&gt;
            &lt;/ref:parallelcite&gt;
            &lt;connector&gt;,&lt;/connector&gt;
            &lt;ref:parallelcite citetype="parallel"&gt;
                &lt;lnci:cite type="case"&gt;
                    &lt;lnci:content&gt;(1995) 17 NZTC 12,226&lt;/lnci:content&gt;
                &lt;/lnci:cite&gt;
            &lt;/ref:parallelcite&gt;
        &lt;/ref:citations&gt;
    &lt;/casedigest:caseinfo&gt;
&lt;/casedigest:head&gt;
            </pre>
            
            <note>Conversion should not create consecutive
                <targetxml>ref:citations</targetxml> elements. When 2 or more consecutive
                sibling source elements map to <targetxml>ref:citations</targetxml>, data
                should be merged to a single <targetxml>ref:citations</targetxml> element
                unless this would hamper content ordering.</note>
            
        </section>
        <section>
            <title>Changes</title>
            
            <p>2015-03-25 <ph id="change_20150325_mlv_1">Modified instruction so that <sourcexml>parallelcite</sourcexml> maps to <targetxml>ref:parallelcite</targetxml> instead
            of ref:cite4thisresource.</ph></p>
            
            <p>2013-09-24 <ph id="change_20130924_WL_9">Sample updated to reflect the movement of element <targetxml>casedigest:caseinfo</targetxml> along with all its children to <targetxml>casedigest:caseinfo</targetxml>. 
                <targetxml>casedigest:caseinfo</targetxml> and its children will be placed within <targetxml>casedigest:head</targetxml> and no longer within  <targetxml>casedigest:body</targetxml>. <b>WebTeam # 235783</b></ph></p>
        </section>
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\NZ07_Linxplus\NZ07DC_Linxplus-CaseDigest\Linxplus-CaseDigest_case.parallelcite.dita  -->
	<!--<xsl:message>Linxplus-CaseDigest_case.parallelcite.xsl requires manual development!</xsl:message>--> 

	<xsl:template match="case:parallelcite">
	    <xsl:apply-templates select="@* | node()"/>
	</xsl:template>

    <xsl:template match="case:parallelcite/text()">
        <connector><xsl:value-of select="."/></connector>
    </xsl:template>
    
    <xsl:template match="case:parallelcite/ci:cite">
        <ref:parallelcite>
            <xsl:attribute name="citetype">
                <xsl:text>parallel</xsl:text>
            </xsl:attribute>
            <lnci:cite>
                <xsl:apply-templates select="@* | node()"/>
            </lnci:cite>
        </ref:parallelcite>
    </xsl:template>
</xsl:stylesheet>