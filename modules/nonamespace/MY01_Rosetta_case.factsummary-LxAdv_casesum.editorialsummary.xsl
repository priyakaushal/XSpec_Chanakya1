<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:casesum="http://www.lexisnexis.com/xmlschemas/content/legal/case-summary/1/" xmlns:case="http://www.lexis-nexis.com/glp/case" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="MY01_Rosetta_case.factsummary-LxAdv_casesum.editorialsummary">
  <title>case:factsummary <lnpid>id-MY01-16019</lnpid></title>
  <body>
    <section conref="../../common_caselaw/conref_content/Rosetta_case.factsummary-LxAdv_casesum.editorialsummary.dita#Rosetta_case.factsummary-LxAdv_casesum.editorialsummary/mapping1"/>
        <example>
      <codeblock>
&lt;case:factsummary&gt;
    &lt;p&gt;
        &lt;text&gt;The respondent had pleaded guilty to two offences arising out of a road accident and
            was sentenced to a fine, in total, of $30 with imprisonment in default. The Public
            Prosecutor P brought an appeal alleging that the sentences were inadequate.&lt;/text&gt;
    &lt;/p&gt;
    &lt;p&gt;
        &lt;text&gt;The trial magistrate's note was rather brief and did not set out the facts of the
            offence.&lt;/text&gt;
    &lt;/p&gt;
&lt;/case:factsummary&gt;
           </codeblock>
      <b>becomes</b>
      <codeblock>
&lt;casesum:summaries&gt;
    &lt;casesum:editorialsummary&gt;
        &lt;p&gt;
            &lt;text&gt;The respondent had pleaded guilty to two offences arising out of a road accident
                and was sentenced to a fine, in total, of $30 with imprisonment in default. The
                Public Prosecutor P brought an appeal alleging that the sentences were
                inadequate.&lt;/text&gt;
        &lt;/p&gt;
        &lt;p&gt;
            &lt;text&gt;The trial magistrate&amp;#x0027;s note was rather brief and did not set out the facts
                of the offence.&lt;/text&gt;
        &lt;/p&gt;
    &lt;/casesum:editorialsummary&gt;
&lt;/casesum:summaries&gt;
           </codeblock>
      <note>Conversion should not create consecutive <targetxml>casesum:summaries</targetxml>
        elements. When 2 or more consecutive sibling source elements map to
          <targetxml>casesum:summaries</targetxml>, target data should be merged to a single
          <targetxml>casesum:summaries</targetxml> element unless this would hamper content
        ordering.</note></example>
    
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-MY\MY01_Cases\MY01_Rosetta_case.factsummary-LxAdv_casesum.editorialsummary.dita  -->
<!--	<xsl:message>MY01_Rosetta_case.factsummary-LxAdv_casesum.editorialsummary.xsl requires manual development!</xsl:message> -->

    <xsl:template match="case:factsummary">
        <!--  Original Target XPath:  casesum:editorialsummary/@includeintoc   -->
        <casesum:editorialsummary>
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
            <xsl:apply-templates select="@* | node()"/>
        </casesum:editorialsummary>
    </xsl:template>
    
    <xsl:template match="case:factsummary/@subdoc">
        <xsl:attribute name="includeintoc">
            <xsl:value-of select="."/>
        </xsl:attribute>
    </xsl:template>
    
    <xsl:template match="case:factsummary/@toc-caption">
        <xsl:attribute name="alternatetoccaption">
            <xsl:value-of select="."/>
        </xsl:attribute>
    </xsl:template>
    
    <!--Skip empty elements    -->
    <xsl:template match="case:factsummary[.='']"/>
    

</xsl:stylesheet>