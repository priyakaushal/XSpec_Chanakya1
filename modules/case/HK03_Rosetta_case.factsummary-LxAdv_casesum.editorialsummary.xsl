<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
  xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
  xmlns:case="http://www.lexis-nexis.com/glp/case" 
  xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"
  xmlns:casesum="http://www.lexisnexis.com/xmlschemas/content/legal/case-summary/1/" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="HK03_Rosetta_case.factsummary-LxAdv_casesum.editorialsummary">
  <title>case:factsummary <lnpid>id-HK03-37216</lnpid></title>
  <body>
    <section conref="../../common_caselaw/conref_content/Rosetta_case.factsummary-LxAdv_casesum.editorialsummary.dita#Rosetta_case.factsummary-LxAdv_casesum.editorialsummary/mapping1"/>
    <section>
      <p>The attributes of <sourcexml>case:factsummary</sourcexml> are handled as follows:<ul>
          <li><sourcexml>case:factsummary/@subdoc</sourcexml> becomes
              <targetxml>casesum:editorialsummary/@includeintoc</targetxml>.</li>
          <li><sourcexml>case:factsummary/@toc-caption</sourcexml> becomes
              <targetxml>casesum:editorialsummary/@alternatetoccaption</targetxml>.</li>
        </ul></p>
      <note>Conversion should not create consecutive <targetxml>casesum:summaries</targetxml>
        elements. When 2 or more consecutive sibling source elements map to
          <targetxml>casesum:summaries</targetxml>, target data should be merged to a single
          <targetxml>casesum:summaries</targetxml> element unless this would hamper content
        ordering.</note>
    </section>
    <example>
      <codeblock>
&lt;case:factsummary&gt;
  &lt;p&gt;
    &lt;text&gt;The respondents (the agents) were engaged by Combined as insurance agents. The respondents commenced proceedings in the Chief Industrial Magistrates Court of NSW (Industrial Court) claiming entitlements to annual and long service leave. That court&amp;#x2019;s jurisdiction to make orders was conferred by the Workplace Relations Act 1996 (Cth). Combined commenced proceedings in the Federal Court seeking declarations that the respondents were independent contractors. It also sought an indemnity from each agent for misrepresenting that each was an independent contractor if they were not; and damages. On 27 April 2009, the agents filed a notice of motion seeking that the proceedings against them be dismissed primarily on the basis none of the claims was in federal jurisdiction.
    &lt;/text&gt;
  &lt;/p&gt;
&lt;/case:factsummary&gt;
           </codeblock>
      <b>becomes</b>
      <codeblock>
&lt;casesum:summaries&gt;
  &lt;casesum:editorialsummary&gt;
    &lt;p&gt;
      &lt;text&gt;The respondents (the agents) were engaged by Combined as insurance agents. The respondents commenced proceedings in the Chief Industrial Magistrates Court of NSW (Industrial Court) claiming entitlements to annual and long service leave. That court&amp;#x2019;s jurisdiction to make orders was conferred by the Workplace Relations Act 1996 (Cth). Combined commenced proceedings in the Federal Court seeking declarations that the respondents were independent contractors. It also sought an indemnity from each agent for misrepresenting that each was an independent contractor if they were not; and damages. On 27 April 2009, the agents filed a notice of motion seeking that the proceedings against them be dismissed primarily on the basis none of the claims was in federal jurisdiction.
      &lt;/text&gt;
    &lt;/p&gt;
  &lt;/casesum:editorialsummary&gt;
&lt;/casesum:summaries&gt;
           </codeblock>
    </example>
    <section conref="../../common_caselaw/conref_content/Rosetta_case.factsummary-LxAdv_casesum.editorialsummary.dita#Rosetta_case.factsummary-LxAdv_casesum.editorialsummary/mapping2"/>
    <example>
      <codeblock>
&lt;case:factsummary&gt;
  &lt;l&gt;
    &lt;li&gt;
      &lt;lilabel&gt;&lt;emph typestyle="ro"&gt;&amp;hellip;&lt;/emph&gt;&lt;/lilabel&gt;
      &lt;p&gt;
        &lt;text&gt;&lt;/text&gt;
      &lt;/p&gt;
    &lt;/li&gt;
    &lt;li&gt;
      &lt;lilabel&gt;&lt;emph typestyle="ro"&gt;(d)&lt;/emph&gt;&lt;/lilabel&gt;
      &lt;p&gt;
        &lt;text&gt;in the opinion of the Commission, the death of the veteran was due to an accident that would not have occurred, or to a disease that would not have been contracted, but for his or her having rendered eligible war service or but for changes in the veteran's environment consequent upon his or her having rendered eligible war service &amp;hellip;&amp;rdquo;&lt;/text&gt;
      &lt;/p&gt;
    &lt;/li&gt;
  &lt;/l&gt;
  &lt;p&gt;&lt;text&gt;Counsel for W relied upon dictionary definitions of &amp;ldquo;consequent upon&amp;rdquo; to mean &amp;ldquo;following as a result&amp;rdquo; and &amp;ldquo;following logically&amp;rdquo;.&lt;/text&gt;
  &lt;/p&gt;
&lt;/case:factsummary&gt;
           </codeblock>
      <b>becomes</b>
      <codeblock>
&lt;casesum:summaries&gt;
  &lt;casesum:editorialsummary&gt;
    &lt;p&gt;
      &lt;list&gt;
      &lt;listitem&gt;
        &lt;label&gt;&lt;emph typestyle="ro"&gt;&amp;#x2026;&lt;/emph&gt;&lt;/label&gt;
        &lt;p&gt;
          &lt;text&gt;&lt;/text&gt;
        &lt;/p&gt;
      &lt;/listitem&gt;
      &lt;listitem&gt;
        &lt;label&gt;&lt;emph typestyle="ro"&gt;(d)&lt;/emph&gt;&lt;/label&gt;
        &lt;p&gt;
          &lt;text&gt;in the opinion of the Commission, the death of the veteran was due to an accident that would not have occurred, or to a disease that would not have been contracted, but for his or her having rendered eligible war service or but for changes in the veteran's environment consequent upon his or her having rendered eligible war service &amp;#x2026;&amp;#x201D;&lt;/text&gt;
        &lt;/p&gt;
      &lt;/listitem&gt;
      &lt;/list&gt;
    &lt;/p&gt;
    &lt;p&gt;
      &lt;text&gt;Counsel for W relied upon dictionary definitions of &amp;#x201C;consequent upon&amp;#x201D; to mean &amp;#x201C;following as a result&amp;#x201D; and &amp;#x201C;following logically&amp;#x201D;.&lt;/text&gt;
    &lt;/p&gt;
  &lt;/casesum:editorialsummary&gt;
&lt;/casesum:summaries&gt;
           </codeblock>
    </example>
    <!--<section
      conref="../../common_caselaw/conref_content/Rosetta_case.factsummary-LxAdv_casesum.editorialsummary.dita.dita#Rosetta_case.factsummary-LxAdv_casesum.editorialsummary.dita/changes"/>-->
    <!--<section>
      <title>Changes Specific to AU01</title>
    </section>-->
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-HK\HK03\HK03_Rosetta_case.factsummary-LxAdv_casesum.editorialsummary.dita  -->
	 

  <xsl:template match="case:factsummary" mode="summaries">

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
		  <!--<xsl:if test="child::l">
		    <p>
		      <xsl:apply-templates select="@* | node()"/>
		    </p>             
		  </xsl:if>
		  <xsl:if test="node() except l">
		    <xsl:apply-templates select="@* | node()"/>
		  </xsl:if>-->
		  <!--<xsl:choose>
		    <xsl:when test="child::l">
		      <p>
		        <xsl:apply-templates select="@* | node()"/>
		      </p>
		    </xsl:when>
		    <xsl:otherwise>
		      <xsl:apply-templates select="@* | node()"/>
		    </xsl:otherwise>
		  </xsl:choose>		-->  
		</casesum:editorialsummary>	  
	</xsl:template>


</xsl:stylesheet>