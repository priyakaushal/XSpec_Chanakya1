<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:caseinfo="http://www.lexisnexis.com/xmlschemas/content/legal/case-information/1/" xmlns:jurisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/jurisdiction-info/1/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="case.courtloc-jurisinfo.jurisdiction_jurisinfo.location">
    <title>case:courtloc <lnpid>id-ST01-26209</lnpid></title>
    <body>
        <section conref="../../common_caselaw/conref_content/Rosetta_case.courtloc-LxAdv_jurisinfo.jurisdiction_jurisinfo.location.dita#Rosetta_case.courtloc-LxAdv_jurisinfo.jurisdiction_jurisinfo.location/mapping"/>
        <note>Conversion should not create consecutive <targetxml>caseinfo:caseinfo</targetxml>
            elements. When 2 or more consecutive sibling source elements map to
                <targetxml>caseinfo:caseinfo</targetxml>, data should be merged to a single
                <targetxml>caseinfo:caseinfo</targetxml> element unless this would hamper content
            ordering.</note>
        <example>
            <codeblock>
&lt;case:courtinfo&gt;
  &lt;case:courtname&gt;FEDERAL COURT OF AUSTRALIA&lt;/case:courtname&gt;
  &lt;case:courtcode&gt;FCA&lt;/case:courtcode&gt;  - will be moved under doc:legacy-metadata.
  &lt;case:courtloc&gt;Sydney&lt;/case:courtloc&gt;
&lt;/case:courtinfo&gt;
       </codeblock>
            <b>becomes</b>
            <codeblock>
&lt;courtcase:head&gt;
  &lt;caseinfo:caseinfo&gt;
    &lt;jurisinfo:courtinfo&gt;
      &lt;jurisinfo:courtname&gt;FEDERAL COURT OF AUSTRALIA&lt;/jurisinfo:courtname&gt;
      &lt;jurisinfo:jurisdiction&gt;
        &lt;jurisinfo:location&gt;
          &lt;location:city&gt;Sydney&lt;/location:city&gt;
        &lt;/jurisinfo:location&gt;
      &lt;/jurisinfo:jurisdiction&gt;
    &lt;/jurisinfo:courtinfo&gt;
  &lt;/caseinfo:caseinfo&gt;
&lt;/courtcase:head&gt;
       </codeblock>
        </example>
        <note>Connecting punctuation and text must be captured by using
                <targetxml>connector</targetxml> within
            <targetxml>jurisinfo:location</targetxml>.</note>
        <example>
            <codeblock>
&lt;case:courtinfo&gt;
    &lt;case:courtname&gt;COMMERCIAL TRIBUNAL OF NEW SOUTH WALES&lt;/case:courtname&gt; 
    &lt;case:courtcode&gt;NSWSC&lt;/case:courtcode&gt; 
    &lt;case:judges&gt;
        Deputy Chairman 
        &lt;case:judge&gt;Vermeesch&lt;/case:judge&gt; 
    &lt;/case:judges&gt;
    &lt;case:dates&gt;
        &lt;case:decisiondate&gt;
            &lt;date day="19" month="12" year="1994"&gt;19 December 1994&lt;/date&gt; 
        &lt;/case:decisiondate&gt;
    &lt;/case:dates&gt;
    — 
    &lt;case:courtloc&gt;Sydney&lt;/case:courtloc&gt; 
    &lt;case:juris&gt;nsw&lt;/case:juris&gt; 
&lt;/case:courtinfo&gt;
       </codeblock>
            <b>becomes</b>
            <codeblock>
&lt;jurisinfo:courtinfo&gt;
    &lt;jurisinfo:courtname&gt;COMMERCIAL TRIBUNAL OF NEW SOUTH WALES&lt;/jurisinfo:courtname&gt;
    &lt;jurisinfo:jurisdiction&gt;
        &lt;jurisinfo:location&gt;
            &lt;connector&gt;
            —
            &lt;/connector&gt;
            &lt;location:city&gt;Sydney&lt;/location:city&gt;
        &lt;/jurisinfo:location&gt;
    &lt;/jurisinfo:jurisdiction&gt;
&lt;/jurisinfo:courtinfo&gt;
       </codeblock>
        </example>
        <!--<section>
            <title>Changes</title>
        </section>-->
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-Standard\courtcase\case.courtloc-jurisinfo.jurisdiction_jurisinfo.location.dita  -->
	<xsl:message>case.courtloc-jurisinfo.jurisdiction_jurisinfo.location.xsl requires manual development!</xsl:message> 

</xsl:stylesheet>