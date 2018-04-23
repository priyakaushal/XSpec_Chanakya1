<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:caseinfo="http://www.lexisnexis.com/xmlschemas/content/legal/case-information/1/" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="UK01_Rosetta_case.litigants">
  <title>case:litigants <lnpid>id-UK01-27036</lnpid></title>
  <body>
    <section>
      <p>
        <sourcexml>case:litigants</sourcexml> becomes <targetxml>caseinfo:party</targetxml> i.e.,
          <sourcexml>case:info/case:litigants/case:constituents/case:constituent/person/name.text</sourcexml>
        will become
          <targetxml>caseinfo:caseinfo/caseinfo:casename/caseinfo:fullcasename/caseinfo:party</targetxml>
        and populate attribute <targetxml>@partyrole</targetxml> which is set to "unknown" i.e,
          <targetxml>@partyrole="unknown"</targetxml>.</p>
      <note>When <sourcexml>case:constituents</sourcexml> is used within
          <sourcexml>case:litigants</sourcexml>, these are the parties in this case. When it's
        outside <sourcexml>case:litigants</sourcexml>, this is the representation for the
        case.</note>
    </section>

    <example>
      <title>Source XML</title>
      <codeblock>

&lt;case:body&gt;
    &lt;case:headnote&gt;
        &lt;case:info&gt;
            &lt;case:casename&gt;00000: GEORGE FREDERICK RIDGEON&lt;/case:casename&gt;
            ...
            &lt;case:courtinfo&gt;
                ...
            &lt;/case:courtinfo&gt;
            &lt;case:litigants&gt;
                &lt;case:constituents&gt;
                    &lt;case:constituent&gt;
                        &lt;person&gt;
                            &lt;name.text&gt;APPELLANT: GEORGE FREDERICK RIDGEON&lt;/name.text&gt;
                        &lt;/person&gt;
                    &lt;/case:constituent&gt;
                    &lt;case:constituent&gt;
                        &lt;person&gt;
                            &lt;name.text&gt;RESPONDENTS: THE COMMISSIONERS OF CUSTOMS AND
                                EXCISE&lt;/name.text&gt;
                        &lt;/person&gt;
                    &lt;/case:constituent&gt;
                &lt;/case:constituents&gt;
            &lt;/case:litigants&gt;
        &lt;/case:info&gt;
        ...
    &lt;/case:headnote&gt;
&lt;/case:body&gt;


    </codeblock>
    </example>

    <example>
      <title>Target XML</title>
      <codeblock>

&lt;courtcase:head&gt;
    &lt;caseinfo:caseinfo&gt;
        &lt;caseinfo:casename&gt;
            &lt;caseinfo:fullcasename&gt;00000: GEORGE FREDERICK RIDGEON&lt;/caseinfo:fullcasename&gt;
            &lt;caseinfo:fullcasename&gt;
                &lt;caseinfo:party partyrole="unknown"&gt;APPELLANT: GEORGE FREDERICK RIDGEON&lt;/caseinfo:party&gt;
                &lt;caseinfo:party partyrole="unknown"&gt;RESPONDENTS: THE COMMISSIONERS OF CUSTOMS AND EXCISE&lt;/caseinfo:party&gt;
            &lt;/caseinfo:fullcasename&gt;
        &lt;/caseinfo:casename&gt;
        ...
        &lt;jurisinfo:courtinfo&gt;
            ...
        &lt;/jurisinfo:courtinfo&gt;
    &lt;/caseinfo:caseinfo&gt;
&lt;/courtcase:head&gt;


    </codeblock>
    </example>

  </body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK01_CaseLaw\UK01_Rosetta_case.litigants.dita  -->

	<xsl:template match="case:litigants">
		<!--<caseinfo:casename>-->
			<caseinfo:fullcasename>
				<xsl:apply-templates select="@* | node()"/>
			</caseinfo:fullcasename>
		<!--</caseinfo:casename>-->
	</xsl:template>
	
	<xsl:template match="case:constituents[parent::case:litigants]">
		<xsl:apply-templates/>
	</xsl:template>
	
	<xsl:template match="case:constituent[parent::case:constituents/parent::case:litigants]">
		<!--  Original Target XPath:  caseinfo:party   -->
		<caseinfo:party partyrole="unknown">
			<!-- Just output the text content -->
			<xsl:value-of select="."/>
		</caseinfo:party>		
	</xsl:template>

</xsl:stylesheet>