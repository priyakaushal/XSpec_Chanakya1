<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case"
    xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/" xmlns:courtcase="http://www.lexisnexis.com/xmlschemas/content/legal/courtcase/1/" version="2.0" exclude-result-prefixes="dita case courtcase">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="CA01_Rosetta_case.judgments-LxAdv_courtcase.opinions">
    <title>case:judgments <lnpid>id-CA01-12224</lnpid></title>
    <body>
        <section conref="../../common_caselaw/conref_content/Rosetta_case.judgments-LxAdv_courtcase.opinions.dita#Rosetta_case.judgments-LxAdv_courtcase.opinions/mapping"/>
        <example>
            <codeblock>
&lt;case:judgments&gt;
    &lt;case:judgment&gt;
        &lt;case:judgmentbody&gt;
           ...
        &lt;/case:judgmentbody&gt;
    &lt;/case:judgment&gt;
&lt;/case:judgments&gt;
       </codeblock>
            <b>becomes</b>
            <codeblock>
&lt;![CDATA[
&lt;courtcase:opinions&gt;
    &lt;courtcase:opinion&gt;
        &lt;bodytext&gt;
            ...
        &lt;/bodytext&gt;
    &lt;/courtcase:opinion&gt;
&lt;/courtcase:opinions&gt;

       </codeblock>
        </example>
        <!--<section
            conref="../../common_caselaw/conref_content/Rosetta_case.judgments-LxAdv_courtcase.opinions.dita#Rosetta_case.judgments-LxAdv_courtcase.opinions/changes"/>-->
        <!--<section>
            <title>Changes Specific to CA01</title>
            </section>-->

    </body>
	</dita:topic>

	
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA01-Cases\CA01_Rosetta_case.judgments-LxAdv_courtcase.opinions.dita  -->

    <!-- Vikas Rohilla : Template to match the case:judgments   -->
    <xsl:template match="case:judgments[not(child::case:appendix)]">
        <xsl:element name="courtcase:opinions">
            <xsl:apply-templates select="node()"/>
        </xsl:element>
    </xsl:template>     
    
    <xsl:template match="case:judgments[child::case:appendix]">
        <xsl:element name="courtcase:opinions">
            <xsl:apply-templates select="case:judgment"/>
            <xsl:if test="child::case:appendix/case:headnote/case:references">
                <courtcase:opinion>
                <bodytext>
                <xsl:apply-templates select="child::case:appendix/case:headnote/case:references"/>
                </bodytext>
                </courtcase:opinion>
            </xsl:if>
                <xsl:apply-templates select="child::footnotegrp[not(preceding-sibling::case:appendix/case:headnote/case:info/case:constituents)]"/>
        </xsl:element>
        <xsl:apply-templates select="case:appendix/case:headnote/case:info/case:constituents"/>
        <xsl:if test="child::footnotegrp[preceding-sibling::case:appendix/case:headnote/case:info/case:constituents]">
        <xsl:element name="courtcase:opinions">
            <xsl:apply-templates select="footnotegrp"/>
        </xsl:element>
        </xsl:if>
    </xsl:template>     
   
   

</xsl:stylesheet>