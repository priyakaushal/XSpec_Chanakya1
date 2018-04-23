<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:ci="http://www.lexis-nexis.com/ci" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita case ci">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="case.reportercite">
  <title>case:reportercite <lnpid>id-ST05-28441</lnpid></title>
  <body>
    <section>
      <p><sourcexml>case:reportercite</sourcexml> becomes
          <targetxml>/compcase:compositecourtcase/compcase:head/compcase:caseinfo/ref:citations/ref:cite4thisresource</targetxml>
        with the value of <targetxml>ref:cite4thisresource</targetxml> set to "reporter".</p>
      <p>For details on the handling of citation markup, refer to the instructions for
          <sourcexml>ci:cite</sourcexml> in the General Markup section.</p>
      <note>If there are 2 or more <sourcexml>case:reportercite</sourcexml> elements with the same
        citation, only map the first occurrence and suppress any duplicates.</note>
    </section>
    <example>
        <title>Source Example - based on AU content</title>
      <codeblock>

&lt;case:reportercite&gt;
    &lt;ci:cite type="cite4thisdoc"&gt;
        &lt;ci:case&gt;
            &lt;ci:caseinfo&gt;
                &lt;ci:decisiondate year="2009"/&gt;
            &lt;/ci:caseinfo&gt;
            &lt;ci:caseref&gt;
                &lt;ci:reporter value="ALR"/&gt;
                &lt;ci:volume num="256"/&gt;
                &lt;ci:edition&gt;
                    &lt;ci:date year="2009"/&gt;
                &lt;/ci:edition&gt;
                &lt;ci:page num="25"/&gt;
                &lt;ci:pinpoint targettype="para" num="4"/&gt;
            &lt;/ci:caseref&gt;
        &lt;/ci:case&gt;
        &lt;ci:content&gt;
            &lt;citefragment searchtype="CASE-CITE-REF"&gt;(2009) 256 ALR 25&lt;/citefragment&gt;
        &lt;/ci:content&gt;
    &lt;/ci:cite&gt;
&lt;/case:reportercite&gt;

           </codeblock>
      <title>Target XML</title>
      <codeblock>

&lt;ref:citations&gt;
    &lt;ref:cite4thisresource citetype="reporter"&gt;
        &lt;lnci:cite&gt;
            &lt;lnci:case&gt;
                &lt;lnci:caseinfo&gt;
                    &lt;lnci:decisiondate year="2009"/&gt;
                &lt;/lnci:caseinfo&gt;
                &lt;lnci:caseref&gt;
                    &lt;lnci:reporter value="ALR"/&gt;
                    &lt;lnci:volume num="256"/&gt;
                    &lt;lnci:edition&gt;
                        &lt;lnci:date year="2009"/&gt;
                    &lt;/lnci:edition&gt;
                    &lt;lnci:page num="25"/&gt;
                    &lt;lnci:pinpoint targettype="para" num="4"/&gt;
                &lt;/lnci:caseref&gt;
            &lt;/lnci:case&gt;
            &lt;lnci:content&gt;(2009) 256 ALR 25&lt;/lnci:content&gt;
        &lt;/lnci:cite&gt;
    &lt;/ref:cite4thisresource&gt;
&lt;/ref:citations&gt;

           </codeblock>
    </example>
    <example>
      <title>Source XML: duplicate citations</title>
      <codeblock>

&lt;case:reportercite ln.user-displayed="false"&gt;
    &lt;ci:cite type="cite4thisdoc" searchtype="CASE-REF"&gt;
        &lt;ci:case&gt;
            &lt;ci:caseinfo&gt;
                &lt;ci:decisiondate year="2005"/&gt;
            &lt;/ci:caseinfo&gt;
            &lt;ci:caseref&gt;
                &lt;ci:reporter value="nswlr"/&gt;
                &lt;ci:volume num="65"/&gt;
                &lt;ci:page num="92"/&gt;
            &lt;/ci:caseref&gt;
        &lt;/ci:case&gt;
        &lt;ci:content&gt;
            &lt;citefragment searchtype="CASE-CITE-REF"&gt;(2005) 65 NSWLR 92&lt;/citefragment&gt;
        &lt;/ci:content&gt;
    &lt;/ci:cite&gt;
&lt;/case:reportercite&gt;
...
&lt;case:reportercite ln.user-displayed="false"&gt;
    &lt;ci:cite type="cite4thisdoc" searchtype="CASE-REF"&gt;
        &lt;ci:case&gt;
            &lt;ci:caseinfo&gt;
                &lt;ci:decisiondate year="2005"/&gt;
            &lt;/ci:caseinfo&gt;
            &lt;ci:caseref&gt;
                &lt;ci:reporter value="nswlr"/&gt;
                &lt;ci:volume num="65"/&gt;
                &lt;ci:page num="92"/&gt;
            &lt;/ci:caseref&gt;
        &lt;/ci:case&gt;
        &lt;ci:content&gt;
            &lt;citefragment searchtype="CASE-CITE-REF"&gt;(2005) 65 NSWLR 92&lt;/citefragment&gt;
        &lt;/ci:content&gt;
    &lt;/ci:cite&gt;
&lt;/case:reportercite&gt;

           </codeblock>
      <title>Target XML</title>
      <codeblock>

&lt;ref:citations&gt;
    &lt;ref:cite4thisresource citetype="reporter"&gt;
        &lt;lnci:cite&gt;
            &lt;lnci:case&gt;
                &lt;lnci:caseinfo&gt;
                    &lt;lnci:decisiondate year="2005"/&gt;
                &lt;/lnci:caseinfo&gt;
                &lt;lnci:caseref&gt;
                    &lt;lnci:reporter value="nswlr"/&gt;
                    &lt;lnci:volume num="65"&gt; &lt;/lnci:volume&gt;
                    &lt;lnci:page num="92"/&gt;
                &lt;/lnci:caseref&gt;
            &lt;/lnci:case&gt;
            &lt;lnci:content&gt;(2005) 65 NSWLR 92&lt;/lnci:content&gt;
        &lt;/lnci:cite&gt;
    &lt;/ref:cite4thisresource&gt;
&lt;/ref:citations&gt;

           </codeblock>
    </example>
      <note>Text (PCDATA) occuring in between <sourcexml>case:reportercite</sourcexml> and <sourcexml>ci:cite</sourcexml> should be moved inside a connector element and put in between multiple <targetxml>ref:cite4thisresource</targetxml> elements if needed.</note>
      <section>
          <title>Changes</title>
          <p>2013-03-29: <ph id="change_20130329_DSF">Added instructions for handling the scenario when
              there are multiple <sourcexml>case:reportercite</sourcexml> elements that contain the same
              citation.</ph></p>
      </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-Standard\Compcase\case.reportercite.dita  -->
	
    <xsl:template match="case:reportercite">
        <ref:citations>
            <ref:cite4thisresource citetype='reporter'>
                <xsl:apply-templates select="@* | node()"/>
            </ref:cite4thisresource>
        </ref:citations>
    </xsl:template>
    
    <xsl:template match="case:reportercite[preceding-sibling::*[self::case:reportercite]]"/>

</xsl:stylesheet>