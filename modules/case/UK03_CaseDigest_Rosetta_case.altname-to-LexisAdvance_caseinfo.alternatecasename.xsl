<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:caseinfo="http://www.lexisnexis.com/xmlschemas/content/legal/case-information/1/" version="2.0" exclude-result-prefixes="dita case caseinfo">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_case.altname-to-LexisAdvance_caseinfo.alternatecasename">
  <title>case:altname-to-caseinfo:alternatecasename <lnpid>id-UK03-27458</lnpid></title>
  <body>
    <section>
      <p><sourcexml>dig:body/dig:info/case:info/case:altname</sourcexml> becomes
        <targetxml>casedigest:head/casedigest:caseinfo/caseinfo:alternatecasename</targetxml>.</p>
    </section>
    <example>
      <codeblock>
&lt;DIGESTDOC&gt;
  &lt;dig:body&gt;
    &lt;dig:info&gt;
      &lt;case:info&gt;
        &lt;case:casename&gt;S v United Kingdom&lt;/case:casename&gt;
        &lt;case:altname&gt;&lt;emph typestyle="bf"&gt;(App no 32733/08)&lt;/emph&gt;&lt;/case:altname&gt;
      &lt;/case:info&gt;
    &lt;/dig:info&gt;
  &lt;/dig:body&gt;
            </codeblock>
      <b>becomes</b>
      <codeblock>
&lt;casedigest:casedigest&gt;
  &lt;casedigest:head&gt;
    &lt;casedigest:caseinfo&gt;
      &lt;caseinfo:casename&gt;
        &lt;caseinfo:fullcasename&gt;S v United Kingdom&lt;/caseinfo:fullcasename&gt;
      &lt;/caseinfo:casename&gt;
      &lt;caseinfo:alternatecasename&gt;&lt;emph typestyle="bf"&gt;(App no 32733/08)&lt;/emph&gt;&lt;/caseinfo:alternatecasename&gt;
    &lt;/casedigest:caseinfo&gt;
  &lt;/casedigest:head&gt;  
&lt;/casedigest:casedigest&gt;
           </codeblock>
    </example>
    <section>
      <title>Changes</title>
      <p>2015-09-08: <ph id="change_20150908_SS">Instruction and examples created for handling input
          scenario "<sourcexml>case:info/case:altname</sourcexml>". R4.5 Content Issue List
          #2388.</ph></p>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK03_CaseDigest\Rosetta_case.altname-to-LexisAdvance_caseinfo.alternatecasename.dita  -->
 
  <!--Vikas Rohilla : Template to match the case:altname nad creates the caseinfo:alternatecasename -->
  <xsl:template match="case:altname">
    <caseinfo:alternatecasename>
      <xsl:apply-templates select="@* | node()"/>
    </caseinfo:alternatecasename>
  </xsl:template>
  
</xsl:stylesheet>