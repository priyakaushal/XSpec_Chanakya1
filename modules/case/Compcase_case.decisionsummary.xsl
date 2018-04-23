<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:casesum="http://www.lexisnexis.com/xmlschemas/content/legal/case-summary/1/" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="case.decisionsummary">
  <title>case:decisionsummary <lnpid>id-ST05-28423</lnpid></title>
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
        </li>
      </ul>
    </section>
    <example>
      <title>Source XML based on AU content</title>
      <codeblock>

&lt;case:decisionsummary summarytype="held"&gt;
  &lt;p&gt;
    &lt;text&gt;
      &lt;emph typestyle="bf"&gt;Held&lt;/emph&gt;, dismissing the motion:
    &lt;/text&gt;
  &lt;/p&gt;
  &lt;p&gt;
    &lt;text&gt;(i)&amp;amp;#x2003;The proceedings before the Industrial Court were wholly in federal jurisdiction. The claim by Combined against each agent in the Federal Court and the claim by each agent against Combined in the Industrial Court arose largely out of the same substratum of fact. It followed there was, as between each agent and Combined, a single matter comprising the basic question of whether each agent was an employee, related questions of estoppel and misleading conduct and remedial issues relating to money and penalties: at [13], [16].
    &lt;/text&gt;
  &lt;/p&gt;
&lt;/case:decisionsummary&gt;

           </codeblock>
       </example>
       <example>
           <title>Target XML</title>
           <codeblock>

&lt;casesum:summaries&gt;
  &lt;casesum:decisionsummary summarysource="held"&gt;
    &lt;bodytext&gt;
      &lt;p&gt;
        &lt;text&gt;&lt;emph typestyle="bf"&gt;Held&lt;/emph&gt;, dismissing the motion:&lt;/text&gt;
      &lt;/p&gt;
      &lt;p&gt;
        &lt;text&gt;(i)&amp;amp;#x2003;The proceedings before the Industrial Court were wholly in federal jurisdiction. The claim by Combined against each agent in the Federal Court and the claim by each agent against Combined in the Industrial Court arose largely out of the same substratum of fact. It followed there was, as between each agent and Combined, a single matter comprising the basic question of whether each agent was an employee, related questions of estoppel and misleading conduct and remedial issues relating to money and penalties: at [13], [16].
        &lt;/text&gt;
      &lt;/p&gt;
    &lt;/bodytext&gt;
  &lt;/casesum:decisionsummary&gt;
&lt;/casesum:summaries&gt;

           </codeblock>
       </example>
       <section>
           <title>Changes</title>
           <p>2014-05-15: <ph id="change_20140515_SS">Created.</ph></p>
       </section>
   </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-Standard\Compcase\case.decisionsummary.dita  -->
	<xsl:message>Compcase_case.decisionsummary.xsl requires manual development!</xsl:message> 

	<xsl:template match="case:decisionsummary">

		<!--  Original Target XPath:  /compcase:compositecourtcase/compcase:head/casesum:summaries/casesum:decisionsummary   -->
		<compcase:compositecourtcase xmlns:compcase="urn:x-lexisnexis:content:compositecourtcase:sharedservices:1">
			<compcase:head>
				<casesum:summaries>
					<casesum:decisionsummary>
						<xsl:apply-templates select="@* | node()"/>
					</casesum:decisionsummary>
				</casesum:summaries>
			</compcase:head>
		</compcase:compositecourtcase>

	</xsl:template>

	<xsl:template match="@summarytype">

		<!--  Original Target XPath:  @summarysource   -->
		<xsl:attribute name="summarysource">
			<xsl:apply-templates select="node()"/>
		</xsl:attribute>

	</xsl:template>

	<xsl:template match="@subdoc">

		<!--  Original Target XPath:  @includeintoc   -->
		<xsl:attribute name="includeintoc">
			<xsl:apply-templates select="node()"/>
		</xsl:attribute>

	</xsl:template>

	<xsl:template match="@toc-caption">

		<!--  Original Target XPath:  @alternatetoccaption   -->
		<xsl:attribute name="alternatetoccaption">
			<xsl:apply-templates select="node()"/>
		</xsl:attribute>

	</xsl:template>

	<xsl:template match="heading">

		<!--  Original Target XPath:  casesum:summaries   -->
		<casesum:summaries>
			<xsl:apply-templates select="@* | node()"/>
		</casesum:summaries>

	</xsl:template>

</xsl:stylesheet>