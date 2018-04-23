<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
    xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
    xmlns:case="http://www.lexis-nexis.com/glp/case" 
    xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"
    xmlns:casesum="http://www.lexisnexis.com/xmlschemas/content/legal/case-summary/1/"
    version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="HK03_Rosetta_case.decisionsummary-LxAdv_casesum.decisionsummary">
    <title>case:decisionsummary <lnpid>id-HK03-37214</lnpid></title>
    <body>
        <section conref="../../common_caselaw/conref_content/Rosetta_case.decisionsummary-LxAdv_casesum.decisionsummary.dita#Rosetta_case.decisionsummary-LxAdv_casesum.decisionsummary/mapping1"/>
        <section>
            <p>The optional attributes of <sourcexml>case:decisionsummary</sourcexml> are handled as follows:<ul>
                    <li><sourcexml>case:decisionsummary/@summarytype</sourcexml> becomes
                            <targetxml>casesum:decisionsummary/@summarysource</targetxml></li>
                    <li><sourcexml>case:decisionsummary/@subdoc</sourcexml> becomes
                            <targetxml>casesum:decisionsummary/@includeintoc</targetxml></li>
                    <li><sourcexml>case:decisionsummary/@toc-caption</sourcexml> becomes
                            <targetxml>casesum:decisionsummary/@alternatetoccaption</targetxml></li>
                </ul></p>
        </section>
        <section conref="../../common_caselaw/conref_content/Rosetta_case.decisionsummary-LxAdv_casesum.decisionsummary.dita#Rosetta_case.decisionsummary-LxAdv_casesum.decisionsummary/mapping2"/>
        <example>
      <codeblock>
&lt;case:body&gt;
    &lt;case:headnote&gt;
        &lt;case:decisionsummary summarytype="held"&gt;
            &lt;pgrp&gt;
                &lt;heading&gt;
                    &lt;title&gt;
                        &lt;emph typestyle="bf"&gt;Held, ruling accordingly:&lt;/emph&gt;
                    &lt;/title&gt;
                &lt;/heading&gt;
            &lt;/pgrp&gt;
        &lt;/case:decisionsummary&gt;
    &lt;/case:headnote&gt;
&lt;/case:body&gt;
       </codeblock>
      <b>becomes</b>
      <codeblock>
&lt;courtcase:courtcase&gt;
    &lt;courtcase:head&gt;
        &lt;casesum:summaries&gt;
            &lt;casesum:decisionsummary summarysource="held"&gt;
                &lt;bodytext&gt;
                    &lt;pgrp&gt;
                        &lt;heading&gt;
                            &lt;title&gt;
                                &lt;emph typestyle="bf"&gt;Held, ruling accordingly:&lt;/emph&gt;
                            &lt;/title&gt;
                        &lt;/heading&gt;
                    &lt;/pgrp&gt;
                &lt;/bodytext&gt;
            &lt;/casesum:decisionsummary&gt;
        &lt;/casesum:summaries&gt;
    &lt;/courtcase:head&gt;
&lt;/courtcase:courtcase&gt;
       </codeblock>
    </example>
        <!--<section
            conref="../../common_caselaw/conref_content/Rosetta_case.filenum-LxAdv_caseinfo.docketnum.dita#Rosetta_case.filenum-LxAdv_caseinfo.docketnum/changes"/>-->
        <!--<section>
            <title>Changes Specific to AU01</title>
            </section>-->

    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-HK\HK03\HK03_Rosetta_case.decisionsummary-LxAdv_casesum.decisionsummary.dita  -->
	 

    <xsl:template match="case:decisionsummary" mode="summaries">

		<!--  Original Target XPath:  casesum:decisionsummary/@summarysource   -->
		<casesum:decisionsummary>
		    <xsl:if test="@summarytype">
		        <xsl:attribute name="summarysource">
		            <xsl:value-of select="@summarytype"/>
		        </xsl:attribute>
		    </xsl:if>
		    <xsl:if test="@subdoc">
		        <xsl:attribute name="includeintoc">
		            <xsl:value-of select="@subdoc"/>
		        </xsl:attribute>
		    </xsl:if>
		    <xsl:if test="@toc-caption">
		        <xsl:attribute name="alternatetoccaption">
		            <xsl:value-of select="@toc-caption"/>
		        </xsl:attribute>
		    </xsl:if>		   
		   
		    <xsl:apply-templates select="heading"/>
		    <bodytext>
		    <xsl:apply-templates select="@* | node() except heading"/>
		    </bodytext>
		</casesum:decisionsummary>

	</xsl:template>
    <xsl:template match="@summarytype"/>
</xsl:stylesheet>