<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
  xmlns:case="http://www.lexis-nexis.com/glp/case" 
  xmlns:compcase="urn:x-lexisnexis:content:compositecourtcase:sharedservices:1" 
  xmlns:caseinfo="http://www.lexisnexis.com/xmlschemas/content/legal/case-information/1/"
  xmlns:lnci="http://www.lexisnexis.com/xmlschemas/content/shared/citations/1/"
  xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="AU13_Rosetta_case.filenum-LxAdv_caseinfo.docketnum">
  <title>case:filenum <lnpid>id-AU13-20414</lnpid></title>
  <body>
    <section>
      <p><sourcexml>case:filenum</sourcexml> becomes
          <targetxml>compcase:head/compcase:caseinstanceinfo/caseinfo:docketnum</targetxml>.</p>
      <p>If the content inside <sourcexml>case:filenum</sourcexml> is in the format
            <b><i>text</i>;<i>text</i></b> (i.e. text separated by a semicolon), then the content
        should be handled in the following manner: <ul>
          <li>The text <b>preceding</b> the semicolon should be be placed in
              <targetxml>compcase:head/compcase:caseinstanceinfo/caseinfo:docketnum</targetxml> as
            usual.</li>
          <li>The semicolon should be suppressed.</li>
          <li>The text <b>following</b> the semi colon should be placed in
              <targetxml>compcase:head/compcase:caseinstanceinfo/ref:citations/cite4thisresource/lnci:cite/lnci:content</targetxml>
            with the value of <targetxml>ref:cite4thisresource/@citetype</targetxml> set to
            "court".</li>
        </ul></p>
    </section>
    <example>
      <title>Standard mapping of <sourcexml>case:filenum</sourcexml></title>
      <codeblock>
&lt;case:filenum&gt;N2003/810&lt;/case:filenum&gt;
      </codeblock>
      <b>becomes</b>
      <codeblock>
&lt;caseinfo:docketnum&gt;N2003/810&lt;/caseinfo:docketnum&gt;
      </codeblock>
    </example>
    <example>
      <title>Mapping when <sourcexml>case:filenum</sourcexml> contains text separated by a
        semicolon</title>
      <codeblock>
&lt;case:filenum&gt;SC 67/2009; [2009] NZSC 98&lt;/case:filenum&gt;
      </codeblock>
      <b>becomes</b>
      <codeblock>
&lt;compcase:head&gt;
  ...
  &lt;compcase:caseinstanceinfo&gt;
    &lt;ref:citations&gt;
      &lt;ref:cite4thisresource citetype="court"&gt;
        &lt;lnci:cite&gt;
          &lt;lnci:content&gt;[2009] NZSC 98&lt;/lnci:content&gt;
        &lt;/lnci:cite&gt;
      &lt;/ref:cite4thisresource&gt;
    &lt;/ref:citations&gt;
    ...
    &lt;caseinfo:docketnum&gt;SC 67/2009&lt;/caseinfo:docketnum&gt;
    ...
  &lt;/compcase:caseinstanceinfo&gt;
  ...
&lt;/compcase:head&gt;
      </codeblock>
    </example>
    <section>
      <title>Changes</title>
      <p>2013-09-03: <ph id="20130903_DSF">Added instructions and an example for the scenario when
          case:filenum contains content in the format <b><i>text</i>;<i>text</i></b>. This change
          has been implemented as part of the resolution for CR 732.</ph></p>
    </section>
  </body>
	</dita:topic>

	<xsl:template match="case:filenum">

		<!--  Original Target XPath:  compcase:head/compcase:caseinstanceinfo/caseinfo:docketnum   -->
	  <xsl:choose>
	    <xsl:when test="contains(., ';')">
	      <xsl:analyze-string select="." regex="^(.*);(.*)$">
	        <xsl:matching-substring>
	          <ref:citations>
	            <ref:cite4thisresource citetype='court'>
	              <lnci:cite>
	                <lnci:content>
	                  <xsl:value-of select="regex-group(2)"/>
	                </lnci:content>
	              </lnci:cite>
	            </ref:cite4thisresource>
	          </ref:citations>
	          <caseinfo:docketnum>
	            <xsl:value-of select="regex-group(1)"/>
	          </caseinfo:docketnum>
	        </xsl:matching-substring>
	        <xsl:non-matching-substring>
	          <caseinfo:docketnum>
	            <xsl:value-of select="."/>
	          </caseinfo:docketnum>
	        </xsl:non-matching-substring>
	      </xsl:analyze-string>
	    </xsl:when>
	    <xsl:otherwise>
	      <caseinfo:docketnum>
	        <xsl:apply-templates select="@* | node()"/>
	      </caseinfo:docketnum>
	    </xsl:otherwise>
	  </xsl:choose>
	  
	</xsl:template>

</xsl:stylesheet>