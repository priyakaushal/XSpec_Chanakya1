<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:compcase="urn:x-lexisnexis:content:compositecourtcase:sharedservices:1" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="case.courtcite">
  <title>case:courtcite <lnpid>id-AU13-20425</lnpid></title>
  <body>
    <section>
      <p><sourcexml>case:courtcite</sourcexml> becomes
          <targetxml>compcase:head/compcase:caseinstanceinfo/ref:citations/ref:cite4thisresource</targetxml>
        with the value of <targetxml>ref:cite4thisresource/@citetype</targetxml> set to "court".</p>
    </section>
    <example>
      <codeblock>
&lt;case:courtcite&gt;
    &lt;ci:cite&gt;
        &lt;ci:content&gt;[2005] AATA 1111&lt;/ci:content&gt;
    &lt;/ci:cite&gt;
&lt;/case:courtcite&gt;
           </codeblock>
      <b>becomes</b>
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
      <p>2013-08-15: <ph id="change_20130815_DSF">Changed the target to
          compcase:head/caseinfo:caseinstanceinfo/ref:citations/ref:cite4thisresource[@citetype="court"].
          This change has been implemented as a resolution for CR 732.</ph></p>
      <p>2013-05-30: <ph id="change_20130530_DSF">Added direction to create textitem inside
          caseinfo:courtcite (already reflected in example). Updated example so that ci:cite is no
          longer dropped as part of mapping.</ph></p>
    </section>
  </body>
	</dita:topic>


	<xsl:template match="case:courtcite">

		<!--  Original Target XPath:  compcase:head/compcase:caseinstanceinfo/ref:citations/ref:cite4thisresource   -->
					<ref:citations>
					  <ref:cite4thisresource citetype='court'>
					    <xsl:apply-templates select="node()"/>
					  </ref:cite4thisresource>
					</ref:citations>

	</xsl:template>

</xsl:stylesheet>