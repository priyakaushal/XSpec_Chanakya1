<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
    xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
    xmlns:case="http://www.lexis-nexis.com/glp/case"
    xmlns:caseinfo="http://www.lexisnexis.com/xmlschemas/content/legal/case-information/1/"
    version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="NZ03_Rosetta_case.filenum-LxAdv_caseinfo.docketnum">
    <title>case:filenum <lnpid>id-NZ03-23020</lnpid></title>
    <body>
        <section conref="../../common_caselaw/conref_content/Rosetta_case.filenum-LxAdv_caseinfo.docketnum.dita#Rosetta_case.filenum-LxAdv_caseinfo.docketnum/mapping"/>
        <example>
            <codeblock>
&lt;case:courtinfo&gt;
    ...
    &lt;case:filenum&gt;HAC 11/01&lt;/case:filenum&gt;
    ...
&lt;/case:courtinfo&gt;
       </codeblock>
            <b>becomes</b>
            <codeblock>
&lt;caseinfo:caseinfo&gt;
    ...
    &lt;caseinfo:docketnum&gt;HAC 11/01&lt;/caseinfo:docketnum&gt;
    ...
&lt;/caseinfo:caseinfo&gt;
       </codeblock>
        </example>
        <section><p>If <sourcexml>process-ignore</sourcexml> occurs inside
                    <sourcexml>case:filenum</sourcexml>, then it should be omitted but its content
                    should be carried forward in the same location.</p></section>
        <example>
            <codeblock>
&lt;case:filenum ln.user-displayed="false"&gt;PC 47 of 2003 &lt;process-ignore process="kwd"&gt;20110826&lt;/process-ignore&gt; &lt;process-ignore process="kwd"&gt;Belize
        Alliance of Conservation Non-Governmental Organizations v. The Department of the Environment and Belize Electric
    Compan&lt;/process-ignore&gt;&lt;/case:filenum&gt;
       </codeblock>
            <b>becomes</b>
            <codeblock>
&lt;caseinfo:docketnum&gt;PC 47 of 2003 20110826 Belize Alliance of Conservation Non-Governmental Organizations v. The Department of the Environment and
    Belize Electric Compan&lt;/caseinfo:docketnum&gt;
       </codeblock>
        </example>
        <!--<section
            conref="../../common_caselaw/conref_content/Rosetta_case.filenum-LxAdv_caseinfo.docketnum.dita#Rosetta_case.filenum-LxAdv_caseinfo.docketnum/changes"/>-->
        <!--<section>
            <title>Changes Specific to NZ03</title>
            </section>-->

    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\NZ03_CaseLaw\NZ03_Rosetta_case.filenum-LxAdv_caseinfo.docketnum.dita  -->
	<!--<xsl:message>NZ03_Rosetta_case.filenum-LxAdv_caseinfo.docketnum.xsl requires manual development!</xsl:message>--> 

    <xsl:template match="case:filenum">
        <caseinfo:docketnum>
            <xsl:if test="child::process-ignore"/>
            <xsl:apply-templates select="@* | node() | text()"/>
        </caseinfo:docketnum>
    </xsl:template>

</xsl:stylesheet>