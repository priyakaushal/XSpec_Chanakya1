<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:caseinfo="http://www.lexisnexis.com/xmlschemas/content/legal/case-information/1/" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_case.altname-to-LxAdv_caseinfo.alternatecasename">
  <title>case:altname to caseinfo:alternatecasename <lnpid>id-CA03-13210</lnpid></title>
  <body>
    <section>
      <title>Instructions</title>
      <p><sourcexml>case:altname</sourcexml> becomes
          <targetxml>caseinfo:alternatecasename</targetxml>. </p>
    </section>
    <example>
      <title>Source XML</title>
      <codeblock>
&lt;case:info&gt;
  &lt;case:casename&gt;
    CUPE LOC 963 v. NB LIQUOR CORP
  &lt;/case:casename&gt;
  &lt;case:altname&gt;
    SCFP LOC 963 v. NB SOCIETY/SOCIETÉ DES ALCOOLS
  &lt;/case:altname&gt;
  ...
&lt;/case:info&gt;
			        </codeblock>
      <title>Target XML</title>
      <codeblock>			 
&lt;cttr:caseinfo&gt;
    &lt;caseinfo:casename&gt;
        &lt;caseinfo:shortcasename&gt;
          CUPE LOC 963 v. NB LIQUOR CORP
        &lt;/caseinfo:shortcasename&gt;
    &lt;/caseinfo:casename&gt; 
    &lt;caseinfo:alternatecasename&gt;
      SCFP LOC 963 v. NB SOCIETY/SOCIETÉ DES ALCOOLS
    &lt;/caseinfo:alternatecasename&gt;
    ...
&lt;/cttr:caseinfo&gt;   
      </codeblock>
    </example>
    <section>
      <title>Changes</title>
      <p>2013-01-29: <ph id="change_20130129_rj">Changed target, example for <sourcexml>case:casename</sourcexml> to
        <targetxml>caseinfo:shortcasename</targetxml>.</ph></p>
      <p>2013-01-23: <ph id="change_20130123_rj">Changed target mapping to
            <targetxml>caseinfo:alternatecasename</targetxml>.</ph></p>
      <p>2012-10-30: <ph id="change_20121030_bh">Corrected name of target XML to
            <targetxml>caseinfo:fullcasename</targetxml> (was caseinfo:casefullname).</ph></p>
    </section>

  </body>
	</dita:topic>

	
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA03-Citator\Rosetta_case.altname-to-LxAdv_caseinfo.alternatecasename.dita  -->
	<!-- Sudhanshu Srivastava : initially drafted on 25 May 2017. If changes required , please update accordingly. --> 

	<xsl:template match="case:altname">
		<!--  Original Target XPath:  caseinfo:alternatecasename   -->
		<caseinfo:alternatecasename>
			<xsl:apply-templates select="@* | node()"/>
		</caseinfo:alternatecasename>
	</xsl:template>

</xsl:stylesheet>