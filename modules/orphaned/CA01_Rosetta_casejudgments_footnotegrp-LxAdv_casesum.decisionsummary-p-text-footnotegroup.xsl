<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:casesum="http://www.lexisnexis.com/xmlschemas/content/legal/case-summary/1/" xmlns:courtcase="http://www.lexisnexis.com/xmlschemas/content/legal/courtcase/1/" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="CA01_Rosetta_casejudgments_footnotegrp-LxAdv_casesum.decisionsummary-p-text-footnotegroup">
    <title>case:judgments/footnotegrp <lnpid>id-CA01-12232</lnpid></title>
  <body>
    <section>
        <p>If converted footnote group (<targetxml>footnotegroup</targetxml>) is the only child of
                    <targetxml>courtcase:opinions</targetxml> in target then conversion needs to
                convert the footnote group (<targetxml>footnotegroup</targetxml>) to a new
                    <targetxml>p/text</targetxml> at the end of the existing decision summary
                    (<targetxml>casesum:decisionsummary</targetxml>). Refer below input and output
                snippet: </p>
    </section>
    <example>
      <codeblock>

&lt;case:headnote&gt;
...
 &lt;case:decisionsummary&gt;
    &lt;p&gt;
        &lt;text&gt;La présence d'hydrocarbures dans le sol ne constitue pas nécessairement un
            vice caché &lt;/text&gt;
    &lt;/p&gt;
    ...
    &lt;p&gt;
        &lt;text&gt;En matière de contamination de sol,...&lt;/text&gt;
    &lt;/p&gt;
  &lt;/case:decisionsummary&gt;
&lt;/case:headnote&gt;
&lt;case:content&gt;
    &lt;case:judgments&gt;
        &lt;footnotegrp&gt;
            &lt;footnote fntoken="fn-1" fnrtokens="fnr-1"&gt;
                &lt;fnlabel&gt;1&lt;/fnlabel&gt;
                &lt;fnbody&gt;
                    &lt;p&gt;
                        &lt;text&gt;Paragraphe 30 du jugement.&lt;/text&gt;
                    &lt;/p&gt;
                &lt;/fnbody&gt;
            &lt;/footnote&gt;
            ...
        &lt;/footnotegrp&gt;
    &lt;/case:judgments&gt;
&lt;/case:content&gt;

           </codeblock>
      <b>becomes</b>
      <codeblock>

&lt;courtcase:head&gt;
 ...
 &lt;casesum:summaries&gt;
    &lt;casesum:decisionsummary&gt;
        &lt;bodytext&gt;
            &lt;p&gt;
                &lt;text&gt; La présence d'hydrocarbures dans le sol ne constitue pas
                    nécessairement un vice caché &lt;/text&gt;
            &lt;/p&gt;
            ...
            &lt;p&gt;
                &lt;text&gt; En matière de contamination de sol,...&lt;/text&gt;
            &lt;/p&gt;
            &lt;p&gt;
                &lt;text&gt;
                    &lt;footnotegroup&gt;
                        &lt;footnote&gt;
                            &lt;ref:anchor id="fn-1"/&gt;
                            &lt;label&gt;1&lt;/label&gt;
                            &lt;bodytext&gt;
                                &lt;p&gt;
                                    &lt;text&gt;Paragraphe 30 du jugement.&lt;/text&gt;
                                &lt;/p&gt;
                            &lt;/bodytext&gt;
                        &lt;/footnote&gt;
                        ...
                    &lt;/footnotegroup&gt;
                &lt;/text&gt;
            &lt;/p&gt;
        &lt;/bodytext&gt;
    &lt;/casesum:decisionsummary&gt;
 &lt;/casesum:summaries&gt;
&lt;/courtcase:head&gt;
&lt;courtcase:body&gt;
    &lt;courtcase:opinions/&gt;
 &lt;/courtcase:body&gt;

           </codeblock>
    </example>
      <section>
      <title>Changes</title>
          <p>2016-07-05: <ph id="change_20160705_SS">Added a new instruction for handling input
                    scenario "<sourcexml>case:judgments/footnotegrp</sourcexml>", Applicable on CA01
                    Cases.</ph></p>
    </section>
  </body>
	</dita:topic>

<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA01-Cases\CA01_Rosetta_casejudgments_footnotegrp-LxAdv_casesum.decisionsummary-p-text-footnotegroup.dita  -->
 
<!-- Vikas Rohilla : Template to match footnotegrp nad create the wrapper p/text -->
    <xsl:template match="footnotegrp">
        <xsl:element name="p">
		    <xsl:element name="text">
		        <xsl:copy>
		            <xsl:apply-templates/>
		        </xsl:copy>
		    </xsl:element>
		</xsl:element>
	</xsl:template>
    
</xsl:stylesheet>