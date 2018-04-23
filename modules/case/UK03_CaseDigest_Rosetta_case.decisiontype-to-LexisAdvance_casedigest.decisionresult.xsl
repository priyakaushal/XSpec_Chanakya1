<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:casedigest="http://www.lexisnexis.com/xmlschemas/content/legal/case-digest/1/" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_case.decisiontype-to-LexisAdvance_casedigest.decisionresult">
  <title>case:decisiontype-to-casedigest:decisionresult <lnpid>id-UK03-27421</lnpid></title>
  <body>
    <p>
      <sourcexml>case:decisiontype</sourcexml> becomes
        <targetxml>casedigest:caseinfo/casedigest:decisionresult</targetxml>. The source attribute
        <sourcexml>case:decisiontype/@display-name</sourcexml> can be ignored. LBU has indicated the
      standardized headings in the UX samples and will be handled in stylesheets. <pre>
&lt;DIGESTDOC&gt;
  &lt;dig:body&gt;
    &lt;dig:info&gt;
      &lt;case:info&gt;
         &lt;case:decisiontype display-name="Decision"&gt;ALLOWED&lt;/case:decisiontype&gt;
      &lt;/case:info&gt;
    &lt;/dig:info&gt;
  &lt;/dig:body&gt;
&lt;/DIGESTDOC&gt;

<b>Becomes</b>
&lt;casedigest:casedigest&gt;
  &lt;casedigest:body&gt;
    &lt;casedigest:caseinfo&gt;
      &lt;casedigest:decisionresult&gt;ALLOWED&lt;/casedigest:decisionresult&gt;
    &lt;/casedigest:caseinfo&gt;
  &lt;/casedigest:body&gt;  
&lt;/casedigest:casedigest&gt;
</pre>
      <note><p><u><b>Scenario 1st:</b></u> If "<sourcexml>case:decisiontype</sourcexml>" element is having
          attribute "<sourcexml>@searchtype</sourcexml>" with value "<b>OUT-OF-COURT</b>" then it
          should be mapped in target
            "<targetxml>casedigest:caseinfo/casedigest:decisionresult</targetxml>" and create the
            "<targetxml>metaitem</targetxml>" element with attributes
            "<targetxml>@name='SettledOrTrial'</targetxml>" and
            "<targetxml>value='Settled'</targetxml>". <pre>

&lt;case:info&gt;
  &lt;case:decisiontype searchtype="OUT-OF-COURT"&gt;Out of Court&lt;/case:decisiontype&gt;
&lt;/case:info&gt;

        <b>Becomes</b>

&lt;casedigest:caseinfo&gt;
    &lt;casedigest:decisionresult&gt;Out of Court&lt;/casedigest:decisionresult&gt;
&lt;/casedigest:caseinfo&gt;
...
&lt;metaitem name="SettledOrTrial" value="Settled"/&gt;

</pre></p>
        <p><u><b>Scenario 2nd:</b></u>: If "<sourcexml>case:decisiontype</sourcexml>" element is the
          having attribute "<sourcexml>@searchtype</sourcexml>" with values "<b>COURT |
            COURT-APPROVED</b>" then it should be mapped in NL target
            "<targetxml>casedigest:caseinfo/casedigest:decisionresult</targetxml>" and create the
            "<targetxml>metaitem</targetxml>" with attributes
            "<targetxml>@name='SettledOrTrial'</targetxml>" and
            "<targetxml>value='Trial'</targetxml>". <pre>

&lt;case:info&gt;
  &lt;case:decisiontype searchtype="COURT-APPROVED"&gt;Court Approved&lt;/case:decisiontype&gt;
&lt;/case:info&gt;

        <b>Becomes</b>

&lt;casedigest:caseinfo&gt;
    &lt;casedigest:decisionresult&gt;Court Approved&lt;/casedigest:decisionresult&gt;
&lt;/casedigest:caseinfo&gt;
...
&lt;metaitem name="SettledOrTrial" value="Trial"/&gt;

</pre></p>
      </note>
    </p>
    <section>
      <title>Changes</title>
      <p>2016-05-11: <ph id="change_20160511_SS">Including the correction of a typographic error and refer the updated instruction of "<sourcexml>case:decisiontype</sourcexml>".</ph></p>
      <p>2016-03-18: <ph id="change_20160318_SS">Instruction created for handling
            <sourcexml>case:decisiontype</sourcexml> element comes with attribute
            <sourcexml>@searchtype</sourcexml>.</ph></p>
      <p>2015-08-12: <ph id="change_20150812_SS">Created.</ph></p>
    </section>
    
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK03_CaseDigest\Rosetta_case.decisiontype-to-LexisAdvance_casedigest.decisionresult.dita  -->
	 
  <!-- Vikas Rohilla : Updated the template initial -->
  <xsl:template match="case:decisiontype">	
    <casedigest:decisionresult>
      <xsl:apply-templates select="@* | node()"/>
    </casedigest:decisionresult>
    
  </xsl:template>
  
  <xsl:template match="case:decisiontype/@display-name"/>
  <xsl:template match="case:decisiontype/@searchtype"/>
  
</xsl:stylesheet>