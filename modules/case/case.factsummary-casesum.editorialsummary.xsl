<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:glp="http://www.lexis-nexis.com/glp" xmlns:casesum="http://www.lexisnexis.com/xmlschemas/content/legal/case-summary/1/" version="2.0" exclude-result-prefixes="dita case glp">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="case.factsummary-casesum.editorialsummary">
  <title>case:factsummary <lnpid>id-ST01-26226</lnpid></title>
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
    &lt;text&gt;An action for deceit was twice tried, the plaintiff succeeding at both trials. At the second trial an extensive amendment was made in the statement of a fraudulent representation alleged in the declaration. The Judge at nisi prius held that he had no power to alter the terms of a rule which had made the costs of the first trial abide the event of the second, and in allowing the amendment reserved leave to move. The plaintiff stated that he relied partly on a representation in a newspaper article not admitted as evidence against the defendant, and partly upon the statement declared on and proved. The Judge directed the jury that the measure of damages was the difference between what the plaintiff gave for the subject matter and what he would have given had there been no such representation, cautioning the jury that they were not implicitly to accept the plaintiff's statement as to what he would have given. The Judges at both trials reported that they would, had they tried the case, probably have arrived at a different conclusion from that reached by the juries.&lt;/text&gt;
  &lt;/p&gt;
&lt;/case:factsummary&gt;
           </codeblock>
      <b>becomes</b>
      <codeblock>
&lt;casesum:summaries&gt;
  &lt;casesum:editorialsummary&gt;
    &lt;p&gt;
      &lt;text&gt;An action for deceit was twice tried, the plaintiff succeeding at both trials. At the second trial an extensive amendment was made in the statement of a fraudulent representation alleged in the declaration. The Judge at nisi prius held that he had no power to alter the terms of a rule which had made the costs of the first trial abide the event of the second, and in allowing the amendment reserved leave to move. The plaintiff stated that he relied partly on a representation in a newspaper article not admitted as evidence against the defendant, and partly upon the statement declared on and proved. The Judge directed the jury that the measure of damages was the difference between what the plaintiff gave for the subject matter and what he would have given had there been no such representation, cautioning the jury that they were not implicitly to accept the plaintiff's statement as to what he would have given. The Judges at both trials reported that they would, had they tried the case, probably have arrived at a different conclusion from that reached by the juries.&lt;/text&gt;
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
    <section><p>When <sourcexml>p/text</sourcexml> contains <sourcexml>glp:note</sourcexml> then
        conversion need to move <targetxml>note</targetxml> as a sibling of
        <targetxml>p</targetxml>. If parent of <sourcexml>p/text/glp:note</sourcexml> is
          <sourcexml>case:factsummary</sourcexml> then conversion need to handle
          <targetxml>note</targetxml> by creating <targetxml>pgrp</targetxml> as a sibling of
          <targetxml>p</targetxml> under <targetxml>casesum:editorialsummary</targetxml> i.e,
          <sourcexml>case:factsummary/p/text/glp:note</sourcexml> becomes
          <targetxml>casesum:editorialsummary/pgrp/note</targetxml>.</p></section>
    <example>
      <codeblock>
&lt;case:factsummary&gt;
    &lt;p&gt;
        &lt;text&gt;Stevens and Lakeland Steel Products Ltd were suppliers of finger jointing machines. Lakeland claimed that Stevens' machines infringed its copyright in spindles and press assembly units. On 1 December 1995 judgment was given finding that the copyright had been breached and that at the time of infringement Stevens was aware or had reasonable grounds for supposing that the relevant acts were infringements. An interim injunction was issued. At a subsequent hearing into damages, Lakeland claimed compensatory, conversion and exemplary damages. Stevens had sold three finger jointing machines containing press assemblies and spindles which infringed the copyright at prices lower than Lakeland's prices. It had also sold in smaller non-infringing finger pointing machines six spindles which infringed Lakeland's copyright. 
        &lt;glp:note&gt;
            &lt;p&gt;
                &lt;text&gt;Editorial note: This case was decided under the provisions of the Copyright Act 1962. The meaning of the term &amp;quot;flagrancy of infringement&amp;quot; in ss 24(3) and 25(2)(a) of that Act were, among other things, under consideration. The comparable section to s 24 in the 1994 Act is s 121 and in particular, with reference to flagrancy, s 121(2)(a). Section 25 of the 1962 Act is not repeated in the 1994 Act.&lt;/text&gt;
            &lt;/p&gt;
        &lt;/glp:note&gt;            
        &lt;/text&gt;
    &lt;/p&gt;
&lt;/case:factsummary&gt;
           </codeblock>
      <b>becomes</b>
      <codeblock>
&lt;casesum:editorialsummary&gt;
    &lt;p&gt;
        &lt;text&gt;Stevens and Lakeland Steel Products Ltd were suppliers of finger jointing machines. Lakeland claimed that Stevens' machines infringed its copyright in spindles and press assembly units. On 1 December 1995 judgment was given finding that the copyright had been breached and that at the time of infringement Stevens was aware or had reasonable grounds for supposing that the relevant acts were infringements. An interim injunction was issued. At a subsequent hearing into damages, Lakeland claimed compensatory, conversion and exemplary damages. Stevens had sold three finger jointing machines containing press assemblies and spindles which infringed the copyright at prices lower than Lakeland's prices. It had also sold in smaller non-infringing finger pointing machines six spindles which infringed Lakeland's copyright. 
        &lt;/text&gt;
    &lt;/p&gt;
    &lt;pgrp&gt;
        &lt;note&gt;
            &lt;bodytext&gt;
                &lt;p&gt;
                    &lt;text&gt;Editorial note: This case was decided under the provisions of the Copyright Act 1962. The meaning of the term &amp;quot;flagrancy of infringement&amp;quot; in ss 24(3) and 25(2)(a) of that Act were, among other things, under consideration. The comparable section to s 24 in the 1994 Act is s 121 and in particular, with reference to flagrancy, s 121(2)(a). Section 25 of the 1962 Act is not repeated in the 1994 Act.
                    &lt;/text&gt;
                &lt;/p&gt;
            &lt;/bodytext&gt;
        &lt;/note&gt;
    &lt;/pgrp&gt;
&lt;/casesum:editorialsummary&gt;
           </codeblock>
    </example>
    <!--<section
      conref="../../common_caselaw/conref_content/Rosetta_case.factsummary-LxAdv_casesum.editorialsummary.dita.dita#Rosetta_case.factsummary-LxAdv_casesum.editorialsummary.dita/changes"/>-->
    <!--<section>
      <title>Changes Specific to NZ03</title>
    </section>-->
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-Standard\courtcase\case.factsummary-casesum.editorialsummary.dita  -->
	<xsl:message>case.factsummary-casesum.editorialsummary.xsl requires manual development!</xsl:message> 

	<xsl:template match="case:factsummary">

		<!--  Original Target XPath:  casesum:editorialsummary/@includeintoc   -->
		<casesum:editorialsummary>
			<xsl:attribute name="includeintoc">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</casesum:editorialsummary>

	</xsl:template>

	<xsl:template match="case:factsummary/@subdoc">

		<!--  Original Target XPath:  casesum:editorialsummary/@includeintoc   -->
		<casesum:editorialsummary>
			<xsl:attribute name="includeintoc">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</casesum:editorialsummary>

	</xsl:template>

	<xsl:template match="case:factsummary/@toc-caption">

		<!--  Original Target XPath:  casesum:editorialsummary/@alternatetoccaption   -->
		<casesum:editorialsummary>
			<xsl:attribute name="alternatetoccaption">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</casesum:editorialsummary>

	</xsl:template>

	<xsl:template match="p/text">

		<!--  Original Target XPath:  note   -->
		<note>
			<xsl:apply-templates select="@* | node()"/>
		</note>

	</xsl:template>

	<xsl:template match="glp:note">

		<!--  Original Target XPath:  note   -->
		<note>
			<xsl:apply-templates select="@* | node()"/>
		</note>

	</xsl:template>

	<xsl:template match="p/text/glp:note">

		<!--  Original Target XPath:  note   -->
		<note>
			<xsl:apply-templates select="@* | node()"/>
		</note>

	</xsl:template>

	<xsl:template match="case:factsummary/p/text/glp:note">

		<!--  Original Target XPath:  casesum:editorialsummary/pgrp/note   -->
		<casesum:editorialsummary>
			<pgrp>
				<note>
					<xsl:apply-templates select="@* | node()"/>
				</note>
			</pgrp>
		</casesum:editorialsummary>

	</xsl:template>

</xsl:stylesheet>