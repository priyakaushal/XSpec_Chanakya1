<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:casesum="http://www.lexisnexis.com/xmlschemas/content/legal/case-summary/1/" xmlns:courtcase="http://www.lexisnexis.com/xmlschemas/content/legal/courtcase/1/" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="UK01_Rosetta_case.decisionsummary-LxAdv_casesum.decisionsummary">
  <title>case:decisionsummary <lnpid>id-UK01-27024</lnpid></title>
  <body>
    <section conref="../../common_caselaw/conref_content/Rosetta_case.decisionsummary-LxAdv_casesum.decisionsummary.dita#Rosetta_case.decisionsummary-LxAdv_casesum.decisionsummary/mapping1"/>
    <section>
      <p>The optional attributes of <sourcexml>case:decisionsummary</sourcexml> are handled as follows:<ul>
          <li><sourcexml>case:decisionsummary/@summarytype</sourcexml> becomes
              <targetxml>casesum:decisionsummary/@summarysource</targetxml></li>
        </ul></p>
    </section>
    <section conref="../../common_caselaw/conref_content/Rosetta_case.decisionsummary-LxAdv_casesum.decisionsummary.dita#Rosetta_case.decisionsummary-LxAdv_casesum.decisionsummary/mapping2"/>
    <example>
      <codeblock>
&lt;case:decisionsummary summarytype="held"&gt;
    &lt;pgrp&gt;
        &lt;p&gt;
            &lt;text&gt;&lt;emph typestyle="bf"&gt;Held&lt;/emph&gt; &amp;#x2013; the defendants could not be
                required to make further enquiries as to information which might have
                been received by the author since the date of publication, or as to
                information which the author had possessed before or at the date of
                publication and which, in fact, he had never communicated to the
                defendants; and that the interrogatories must be limited to asking for
                such information as to the state of the author's mind as was in the
                possession of the defendants at the moment of publication.&lt;/text&gt;
        &lt;/p&gt;
    &lt;/pgrp&gt;
&lt;/case:decisionsummary&gt;
       </codeblock>
      <b>becomes</b>
      <codeblock>
&lt;casesum:summaries&gt;
    &lt;casesum:decisionsummary summarysource="held"&gt;
        &lt;bodytext&gt;
            &lt;pgrp&gt;
                &lt;p&gt;
                    &lt;text&gt;&lt;emph typestyle="bf"&gt;Held&lt;/emph&gt; &amp;#x2013; the defendants could not be
                        required to make further enquiries as to information which might have
                        been received by the author since the date of publication, or as to
                        information which the author had possessed before or at the date of
                        publication and which, in fact, he had never communicated to the
                        defendants; and that the interrogatories must be limited to asking for
                        such information as to the state of the author's mind as was in the
                        possession of the defendants at the moment of publication.&lt;/text&gt;
                &lt;/p&gt;
            &lt;/pgrp&gt;
        &lt;/bodytext&gt;
    &lt;/casesum:decisionsummary&gt;
&lt;/casesum:summaries&gt;
       </codeblock>
    </example>
      
      <section>
          <p>When <sourcexml>case:decisionsummary</sourcexml> is a child of <sourcexml>case:content/case:judgments</sourcexml> then <sourcexml>case:decisionsummary</sourcexml> becomes <targetxml>courtcase:opinions/casesum:decisionsummary</targetxml>.</p>
          <p>Wrap all <sourcexml>p</sourcexml> within <targetxml>casesum:decisionsummary/bodytext</targetxml>.</p>
          <p>The optional attributes of <sourcexml>case:decisionsummary</sourcexml> are handled as follows:<ul>
              <li><sourcexml>case:decisionsummary/@summarytype</sourcexml> becomes
                  <targetxml>casesum:decisionsummary/@summarysource</targetxml></li>
          </ul></p>
      </section>
      <example>
          <codeblock>
&lt;case:content&gt;
    &lt;case:judgments&gt;
        &lt;case:decisionsummary summarytype="disposition"&gt;
            &lt;p&gt;
                &lt;text&gt;
                    &lt;emph typestyle="it"&gt;Order appealed from reversed. Case remitted to the
                        Court of Quarter Sessions.&lt;/emph&gt;
                &lt;/text&gt;
            &lt;/p&gt;
            &lt;p&gt;
                &lt;text&gt;
                    &lt;emph typestyle="it"&gt;Respondents to pay to the appellant his costs in
                        the courts below and in this House.&lt;/emph&gt;
                &lt;/text&gt;
            &lt;/p&gt;
        &lt;/case:decisionsummary&gt;
    &lt;/case:judgments&gt;
&lt;/case:content&gt;
       </codeblock>
          <b>becomes</b>
          <codeblock>
&lt;courtcase:opinions&gt;
    &lt;casesum:decisionsummary summarysource="disposition"&gt;
        &lt;bodytext&gt;
            &lt;p&gt;
                &lt;text&gt;
                    &lt;emph typestyle="it"&gt;Order appealed from reversed. Case remitted to the
                        Court of Quarter Sessions.&lt;/emph&gt;
                &lt;/text&gt;
            &lt;/p&gt;
            &lt;p&gt;
                &lt;text&gt;
                    &lt;emph typestyle="it"&gt;Respondents to pay to the appellant his costs in
                        the courts below and in this House.&lt;/emph&gt;
                &lt;/text&gt;
            &lt;/p&gt;
        &lt;/bodytext&gt;
    &lt;/casesum:decisionsummary&gt;
&lt;/courtcase:opinions&gt;
       </codeblock>
      </example>
    <!--<section
            conref="../../common_caselaw/conref_content/Rosetta_case.filenum-LxAdv_caseinfo.docketnum.dita#Rosetta_case.filenum-LxAdv_caseinfo.docketnum/changes"/>-->
    <!--<section>
            <title>Changes Specific to UK01</title>
            </section>-->
<section>
    <title>Changes</title>
    <p>2015-09-21: <ph id="change_20150921_PS">Added instruction and example when <sourcexml>case:decisionsummary</sourcexml> is a child of <sourcexml>case:content/case:judgments</sourcexml>, Applicable on UK01, RFA 4.5 # 2386.</ph></p>
</section>
  </body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK01_CaseLaw\UK01_Rosetta_case.decisionsummary-LxAdv_casesum.decisionsummary.dita  -->

	<xsl:template match="case:decisionsummary">
		<!--  Original Target XPath:  casesum:decisionsummary/@summarysource   -->
		<casesum:decisionsummary>
				<xsl:apply-templates select="@*"/>
			<xsl:apply-templates select="heading"/>
			<bodytext xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
				<xsl:apply-templates select="node() except heading"/>
			</bodytext>
		</casesum:decisionsummary>
	</xsl:template>

	<xsl:template match="case:decisionsummary/@summarytype">
		<!--  Original Target XPath:  casesum:decisionsummary/@summarysource   -->
			<xsl:attribute name="summarysource">
				<xsl:value-of select="."/>
			</xsl:attribute>
	</xsl:template>

	<xsl:template match="case:decisionsummary[parent::case:judgments]">
		<!--  Original Target XPath:  courtcase:opinions/casesum:decisionsummary   -->
		<!--<courtcase:opinions>-->
			<casesum:decisionsummary>
				<xsl:apply-templates select="@*"/>
				<bodytext xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
					<xsl:apply-templates />
				</bodytext>
			</casesum:decisionsummary>
		<!--</courtcase:opinions>-->
	</xsl:template>


</xsl:stylesheet>