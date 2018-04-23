<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:compcase="urn:x-lexisnexis:content:compositecourtcase:sharedservices:1" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="case.courtcite">
  <title>case:courtcite <lnpid>id-ST05-28416</lnpid></title>
  <body>
    <section>
      <p><sourcexml>case:courtcite</sourcexml> becomes
          <targetxml>compcase:head/compcase:caseinstanceinfo/ref:citations/ref:cite4thisresource</targetxml>
        with the value of <targetxml>ref:cite4thisresource/@citetype</targetxml> set to "court".</p>
    </section>
    <example>
      <title>Source XML based on AU content</title>
      <codeblock>
&lt;case:courtcite&gt;
    &lt;ci:cite&gt;
        &lt;ci:content&gt;[2005] AATA 1111&lt;/ci:content&gt;
    &lt;/ci:cite&gt;
&lt;/case:courtcite&gt;
      </codeblock>
    </example>
    <example>
      <title>Target XML</title>
      <codeblock>
&lt;compcase:head&gt;
  ...
  &lt;compcase:caseinstanceinfo&gt;
    &lt;ref:citations&gt;
      &lt;ref:cite4thisresource citetype="court"&gt;
        &lt;lnci:cite&gt;
          &lt;lnci:content&gt;[2005] AATA 1111&lt;/lnci:content&gt;
        &lt;/lnci:cite&gt;
      &lt;/ref:cite4thisresource&gt;
    &lt;/ref:citations&gt;
    ...
  &lt;/compcase:caseinstanceinfo&gt;
  ...
&lt;/compcase:head&gt;
           </codeblock>
    </example>
    <section>
      <title>Changes</title>
      <p>2014-05-15: <ph id="change_20140515_SS">Created.</ph></p>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-Standard\Compcase\case.courtcite.dita  -->
	<xsl:message>Compcase_case.courtcite.xsl requires manual development!</xsl:message> 

	<xsl:template match="case:courtcite">

		<!--  Original Target XPath:  compcase:head/compcase:caseinstanceinfo/ref:citations/ref:cite4thisresource   -->
		<compcase:head>
			<compcase:caseinstanceinfo>
				<ref:citations>
					<ref:cite4thisresource>
						<xsl:apply-templates select="@* | node()"/>
					</ref:cite4thisresource>
				</ref:citations>
			</compcase:caseinstanceinfo>
		</compcase:head>

	</xsl:template>

</xsl:stylesheet>