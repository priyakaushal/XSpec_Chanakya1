<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
    xmlns:courtcase="http://www.lexisnexis.com/xmlschemas/content/legal/courtcase/1/"
    xmlns:case="http://www.lexis-nexis.com/glp/case"
    xmlns:casesum="http://www.lexisnexis.com/xmlschemas/content/legal/case-summary/1/"
    xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0"
    exclude-result-prefixes="dita case courtcase casesum ref">

    <dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/"
        id="HK03_Rosetta_case.headnote-LxAdv_courtcase.head">
        <title>case:headnote <lnpid>id-HK03-37217</lnpid></title>
        <body>
            <section
                conref="../../common_caselaw/conref_content/Rosetta_case.headnote-LxAdv_courtcase.head.dita#Rosetta_case.headnote-LxAdv_courtcase.head/mapping"/>
            <example>
                <codeblock>

&lt;case:headnote&gt;  
    &lt;case:info&gt;
        &lt;case:casename&gt;CHARTER VIEW DEVELOPMENT LTD v GOLDEN RICH ENTERPRISES LTD &amp;amp; ANOR&lt;/case:casename&gt;
    &lt;/case:info&gt;
    ...
&lt;/case:headnote&gt;

       </codeblock>
                <b>becomes</b>
                <codeblock>

&lt;courtcase:head&gt;
    &lt;caseinfo:caseinfo&gt;
        &lt;caseinfo:casename&gt;
            &lt;caseinfo:fullcasename&gt;CHARTER VIEW DEVELOPMENT LTD v GOLDEN RICH ENTERPRISES LTD &amp;#x0026; ANOR&lt;/caseinfo:fullcasename&gt;
        &lt;/caseinfo:casename&gt;
    &lt;/caseinfo:caseinfo&gt;
    ...
&lt;/courtcase:head&gt;

       </codeblock>
            </example>
            <!--<section
            conref="../../common_caselaw/conref_content/Rosetta_case.headnote-LxAdv_courtcase.head.dita#Rosetta_case.headnote-LxAdv_courtcase.head/changes"/>-->
            <!--<section>
            <title>Changes Specific to AU01</title>
            </section>-->

            <section>
                <title>case:headnote/page</title>

                <p>If <sourcexml>page</sourcexml> occurs as a direct child of
                        <sourcexml>case:headnote</sourcexml> then the conversion should append this
                    element as children of nearest element.</p>

                <p>The resulting conversion should maintain a physical order with the existing
                    document content.</p>
            </section>


            <example>
                <title>Source: <sourcexml>case:headnote/footnotegrp and
                        case:headnote/page</sourcexml></title>

                <codeblock>
&lt;case:headnote&gt;   
    &lt;case:info&gt;
        &lt;case:casename&gt;FOOK-HONG CHAN (NO. 2) v WANG KING FONG&lt;/case:casename&gt;
    &lt;/case:info&gt;
    .....
    &lt;page reporter="HKCU" count="2" text="[1961] HKCU 66 at " subdoc="true"/&gt;
&lt;/case:headnote&gt;          
             
         </codeblock>
            </example>


            <example>
                <title>Target: <sourcexml>courtcase:head/casesum:summaries</sourcexml> with
                        <targetxml>ref:page</targetxml></title>

                <codeblock>
             
 &lt;courtcase:head&gt;
    &lt;caseinfo:caseinfo&gt;
        &lt;caseinfo:casename&gt;
            &lt;caseinfo:fullcasename&gt;FOOK-HONG CHAN &amp;#x0028;NO. 2&amp;#x0029; v WANG KING FONG&lt;/caseinfo:fullcasename&gt;
        &lt;/caseinfo:casename&gt;
        ....
        &lt;ref:page num="2" page-scheme="HKCU" page-scheme-type="reporter-abbreviation"
            includeintoc="true"/&gt;
        ....
    &lt;/caseinfo:caseinfo&gt;
&lt;/courtcase:head&gt;
....
&lt;doc:docinfo&gt;
    &lt;doc:pagination&gt;
        &lt;doc:pagination-scheme page-scheme="HKCU" page-scheme-type="reporter-abbreviation"/&gt;
    &lt;/doc:pagination&gt;
&lt;/doc:docinfo&gt;          
             
         </codeblock>
            </example>

            <section>
                <title>Changes</title>
                <p>2016-02-29: <ph id="change_20160229_AS">Created.</ph></p>
            </section>

        </body>
    </dita:topic>
   
    <!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
    <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-HK\HK03\HK03_Rosetta_case.headnote-LxAdv_courtcase.head.dita  -->



    <xsl:template match="case:headnote">

        <!--  Original Target XPath:  ref:page   -->
        <courtcase:head>
            <xsl:apply-templates select="@* | node()"/>
        </courtcase:head>

    </xsl:template>

<!-- Awantika: not coming the GDS -->
   <!-- <xsl:template match="case:headnote/footnotegrp and case:headnote/page">

        <!-\-  Original Target XPath:  ref:page   -\->
        <ref:page>
            <xsl:apply-templates select="@* | node()"/>
        </ref:page>

    </xsl:template>-->
    
    <!-- Awantika: not coming the GDS -->
    <!--<xsl:template match="courtcase:head/casesum:summaries">

        <!-\-  Original Target XPath:  ref:page   -\->
        <ref:page>
            <xsl:apply-templates select="@* | node()"/>
        </ref:page>

    </xsl:template>-->

</xsl:stylesheet>
