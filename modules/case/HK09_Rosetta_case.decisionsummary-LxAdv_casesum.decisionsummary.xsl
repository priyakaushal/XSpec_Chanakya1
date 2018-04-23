<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" 
  xmlns:casesum="http://www.lexisnexis.com/xmlschemas/content/legal/case-summary/1/" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="HK09_Rosetta_case.decisionsummary-LxAdv_casesum.decisionsummary">
	  <title>case:decisionsummary <lnpid>id-HK09-39437</lnpid></title>
  <body>
    <section>
      <ul>
        <li>
          <sourcexml>case:decisionsummary</sourcexml> becomes
            <targetxml>/compcase:compositecourtcase/compcase:head/casesum:summaries/casesum:decisionsummary</targetxml>
          attributes <sourcexml>@summarytype</sourcexml> becomes
            <targetxml>@summarysource</targetxml>, <sourcexml>@subdoc</sourcexml> becomes
            <targetxml>@includeintoc</targetxml> and <sourcexml>@toc-caption</sourcexml> becomes
            <targetxml>@alternatetoccaption</targetxml>. <note>Every element occuring within
              <sourcexml>case:decisionsummary</sourcexml> should be handled via
              <targetxml>bodytext</targetxml> within <targetxml>casesum:decisionsummary</targetxml>
            except <sourcexml>heading</sourcexml> element.</note>
          <note>Conversion should not create consecutive <targetxml>casesum:summaries</targetxml>
            elements. When 2 or more sibling source elements map to
              <targetxml>casesum:summaries</targetxml>, data should be merged to a single
              <targetxml>casesum:summaries</targetxml> element.</note>
          <pre xml:space="preserve">

&lt;case:decisionsummary summarytype="held"&gt;
  &lt;p&gt;
    &lt;text&gt;
      &lt;emph typestyle="bf"&gt;Held&lt;/emph&gt;, dismissing the motion:
    &lt;/text&gt;
  &lt;/p&gt;
  &lt;p&gt;
    &lt;text&gt;(i)&amp;#x2003;The proceedings before the Industrial Court were wholly in federal jurisdiction. The claim by Combined against each agent in the Federal Court and the claim by each agent against Combined in the Industrial Court arose largely out of the same substratum of fact. It followed there was, as between each agent and Combined, a single matter comprising the basic question of whether each agent was an employee, related questions of estoppel and misleading conduct and remedial issues relating to money and penalties: at [13], [16].
    &lt;/text&gt;
  &lt;/p&gt;
&lt;/case:decisionsummary&gt;
<b>Becomes</b>   

&lt;casesum:summaries&gt;
  &lt;casesum:decisionsummary summarysource="held"&gt;
    &lt;bodytext&gt;
      &lt;p&gt;
        &lt;text&gt;&lt;emph typestyle="bf"&gt;Held&lt;/emph&gt;, dismissing the motion:&lt;/text&gt;
      &lt;/p&gt;
      &lt;p&gt;
        &lt;text&gt;(i)&amp;#x2003;The proceedings before the Industrial Court were wholly in federal jurisdiction. The claim by Combined against each agent in the Federal Court and the claim by each agent against Combined in the Industrial Court arose largely out of the same substratum of fact. It followed there was, as between each agent and Combined, a single matter comprising the basic question of whether each agent was an employee, related questions of estoppel and misleading conduct and remedial issues relating to money and penalties: at [13], [16].
        &lt;/text&gt;
      &lt;/p&gt;
    &lt;/bodytext&gt;
  &lt;/casesum:decisionsummary&gt;
&lt;/casesum:summaries&gt;
</pre>
        </li>
      </ul>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\HK09_composite_cases\HK09_Rosetta_case.decisionsummary-LxAdv_casesum.decisionsummary.dita  -->
	

	<xsl:template match="case:decisionsummary">

		<!--  Original Target XPath:  /compcase:compositecourtcase/compcase:head/casesum:summaries/casesum:decisionsummary   -->
					<casesum:decisionsummary>
					  <xsl:apply-templates select="@*"/>
						<xsl:apply-templates select="heading"/>
					  <bodytext xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
					    <xsl:apply-templates select="node() except (heading)"/>
					  </bodytext>
					</casesum:decisionsummary>

	</xsl:template>

  <xsl:template match="case:decisionsummary/@summarytype">

		<!--  Original Target XPath:  @summarysource   -->
		<xsl:attribute name="summarysource">
			<xsl:value-of select="."/>
		</xsl:attribute>

	</xsl:template>

  <xsl:template match="case:decisionsummary/@subdoc">

		<!--  Original Target XPath:  @includeintoc   -->
		<xsl:attribute name="includeintoc">
			<xsl:value-of select="."/>
		</xsl:attribute>

	</xsl:template>

  <xsl:template match="case:decisionsummary/@toc-caption">

		<!--  Original Target XPath:  @alternatetoccaption   -->
		<xsl:attribute name="alternatetoccaption">
			<xsl:value-of select="."/>
		</xsl:attribute>

	</xsl:template>


</xsl:stylesheet>