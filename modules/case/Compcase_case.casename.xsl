<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:caseinfo="http://www.lexisnexis.com/xmlschemas/content/legal/case-information/1/" xmlns:compcase="urn:x-lexisnexis:content:compositecourtcase:sharedservices:1" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="case.casename">
  <title>case:casename <lnpid>id-ST05-28411</lnpid></title>
  <body>
    <section>
      <ul>
        <li>
          <sourcexml>case:casename</sourcexml> becomes
            <targetxml>compcase:caseinfo/caseinfo:casename</targetxml> and populate the child as
          below: <ul>
            <li>Create <targetxml>caseinfo:fullcasename</targetxml>
            </li>
          </ul>
          <note>If input document has <sourcexml>nl</sourcexml> within
              <sourcexml>case:casename</sourcexml> then convert all newlines to a single space
            character because <sourcexml>nl</sourcexml> is no longer needed in this element.</note>
        </li>
        </ul>
    </section>
    <example>
      <title>Source Example - based on AU content</title>
      <codeblock>

&lt;case:casename&gt;Re: GOLDEN BREAD PTY. LTD.; THE QUEENSLAND &lt;nl/&gt;CO-OPERATIVE MILLING ASSOCIATION v HUTCHISON&lt;/case:casename&gt;

       </codeblock>
    </example>
    
    <example>
      <title>Target Example</title>
      <codeblock>

&lt;caseinfo:casename&gt;
  &lt;caseinfo:fullcasename&gt;Re: GOLDEN BREAD PTY. LTD.; THE QUEENSLAND CO-OPERATIVE MILLING ASSOCIATION v HUTCHISON&lt;/caseinfo:fullcasename&gt;
&lt;/caseinfo:casename&gt;

       </codeblock>
    </example>
    <section>
      <title>Changes</title>
      <p>2014-05-15: <ph id="change_20140515_SS">Created.</ph></p>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-Standard\Compcase\case.casename.dita  -->
	<xsl:message>Compcase_case.casename.xsl requires manual development!</xsl:message> 

	<xsl:template match="case:casename">

		<!--  Original Target XPath:  compcase:caseinfo/caseinfo:casename   -->
		<compcase:caseinfo>
			<caseinfo:casename>
				<xsl:apply-templates select="@* | node()"/>
			</caseinfo:casename>
		</compcase:caseinfo>

	</xsl:template>

	<xsl:template match="nl">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

</xsl:stylesheet>