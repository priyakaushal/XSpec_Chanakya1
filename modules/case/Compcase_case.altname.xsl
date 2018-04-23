<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:compcase="urn:x-lexisnexis:content:compositecourtcase:sharedservices:1" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="case.altname">
  <title>case:altname <lnpid>id-ST05-28408</lnpid></title>
  <body>
    <section>
      <p><sourcexml>case:altname</sourcexml> becomes
          <targetxml>compcase:caseinfo/caseinfo:alternatecasename</targetxml>.</p>
    </section>
    <example>
      <title>Source Example - based on AU content</title>
      <codeblock>
&lt;case:info&gt;
  &lt;case:casename&gt;Re SFE CORPORATION LTD (ABN 74 000 299 392) (No 1)
  &lt;/case:casename&gt;
  &lt;case:altname&gt;Re SFE CORPORATION LTD (ABN 74 000 299 392) (No 2)&lt;/case:altname&gt;
  ...
&lt;/case:info&gt;
           </codeblock>
    </example>
    
    <example>
      <title>Target Example</title>
      <codeblock>
&lt;compcase:caseinfo&gt;
  &lt;caseinfo:casename&gt;
    &lt;caseinfo:fullcasename&gt;Re SFE CORPORATION LTD (ABN 74 000 299 392) (No 1)
    &lt;/caseinfo:fullcasename&gt;
  &lt;/caseinfo:casename&gt;
  &lt;caseinfo:alternatecasename&gt;Re SFE CORPORATION LTD (ABN 74 000 299 392) (No 2)
  &lt;/caseinfo:alternatecasename&gt;
  ...
&lt;/compcase:caseinfo&gt;
           </codeblock>
    </example>
    <section>
      <title>Changes</title>
      <p>2014-05-15: <ph id="change_20140515_SS">Created.</ph></p>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-Standard\Compcase\case.altname.dita  -->
	<xsl:message>Compcase_case.altname.xsl requires manual development!</xsl:message> 

	<xsl:template match="case:altname">

		<!--  Original Target XPath:  compcase:caseinfo/caseinfo:alternatecasename   -->
		<compcase:caseinfo>
			<caseinfo:alternatecasename xmlns:caseinfo="http://www.lexisnexis.com/xmlschemas/content/legal/case-information/1/">
				<xsl:apply-templates select="@* | node()"/>
			</caseinfo:alternatecasename>
		</compcase:caseinfo>

	</xsl:template>

</xsl:stylesheet>