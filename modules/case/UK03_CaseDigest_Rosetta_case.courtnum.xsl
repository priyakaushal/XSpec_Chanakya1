<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:caseinfo="http://www.lexisnexis.com/xmlschemas/content/legal/case-information/1/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:ci="http://www.lexis-nexis.com/ci" xmlns:dig="http://www.lexis-nexis.com/glp/dig" xmlns:casedigest="http://www.lexisnexis.com/xmlschemas/content/legal/case-digest/1/" version="2.0" exclude-result-prefixes="dita case ci dig">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_case.courtnum">
  <title>case:courtnum <lnpid>id-UK03-27418</lnpid></title>
  <body>
    <p>If <sourcexml>dig:body/dig:info/case:info/case:courtinfo/case:courtnum</sourcexml> contains
        <sourcexml>ci:cite</sourcexml> it should be mapped to 2 locations: <ul>
        <li>The <sourcexml>ci:cite</sourcexml> should be mapped to
            <targetxml>casedigest:head/casedigest:caseinfo/ref:citations/ref:cite4thisresource</targetxml> along with attribute type <targetxml>@citetype="reporter"</targetxml></li>
        <li>The content inside <sourcexml>ci:cite/ci:content</sourcexml> should also be placed
          inside <targetxml>casedigest:head/casedigest:caseinfo/caseinfo:docketnum</targetxml>.</li>
      </ul></p>
    <p>If <sourcexml>dig:body/dig:info/case:info/case:courtinfo/case:courtnum</sourcexml> does
        <b>not</b> contain <sourcexml>ci:cite</sourcexml>, then it should only be mapped to
        <targetxml>casedigest:head/casedigest:caseinfo/caseinfo:docketnum</targetxml>.</p>
    <note>Any <sourcexml>emph</sourcexml> elements in <sourcexml>case:courtnum</sourcexml> should be
      suppressed.</note>
    <example>
      <title><sourcexml>case:courtnum</sourcexml> with child <sourcexml>ci:cite</sourcexml></title>
      <codeblock>
&lt;DIGESTDOC&gt;
  &lt;dig:body&gt;
    &lt;dig:info&gt;
      &lt;case:info&gt;
        &lt;case:courtinfo&gt;
          &lt;case:courtnum&gt;
            &lt;emph typestyle="bf"&gt;
              &lt;ci:cite type="cite4thisdoc"&gt;
                &lt;ci:case&gt;
                  &lt;ci:caseref&gt;
                    &lt;ci:reporter value="EWHCCH"/&gt;
                    &lt;ci:edition&gt;
                      &lt;ci:date year="2003"/&gt;
                    &lt;/ci:edition&gt;
                    &lt;ci:page num="2883"/&gt;
                  &lt;/ci:caseref&gt;
                &lt;/ci:case&gt;
                &lt;ci:content&gt;
                  &lt;citefragment searchtype="CASE-CITE-REF"&gt;[2003] EWHC 2883 (Ch)&lt;/citefragment&gt;
                &lt;/ci:content&gt;
              &lt;/ci:cite&gt;
            &lt;/emph&gt;
          &lt;/case:courtnum&gt;
        &lt;/case:courtinfo&gt;
      &lt;/case:info&gt;
    &lt;/dig:info&gt;
  &lt;/dig:body&gt;
&lt;/DIGESTDOC&gt;
<b>Becomes</b>
&lt;casedigest:casedigest&gt;
  &lt;casedigest:head&gt;
    &lt;casedigest:caseinfo&gt;
      &lt;caseinfo:docketnum&gt;[2003] EWHC 2883 (Ch)&lt;/caseinfo:docketnum&gt;
      &lt;ref:citations&gt;
        &lt;ref:cite4thisresource citetype="reporter"&gt;
          &lt;lnci:cite&gt;
            &lt;lnci:case&gt;
              &lt;lnci:caseref&gt;
                &lt;lnci:reporter value="EWHCCH"/&gt;
                &lt;lnci:edition&gt;
                  &lt;lnci:date year="2003"/&gt;
                &lt;/lnci:edition&gt;
                &lt;lnci:page num="2883"/&gt;
              &lt;/lnci:caseref&gt;
            &lt;/lnci:case&gt;
            &lt;lnci:content&gt;[2003] EWHC 2883 (Ch)&lt;/lnci:content&gt;
          &lt;/lnci:cite&gt;
        &lt;/ref:cite4thisresource&gt;
      &lt;/ref:citations&gt;
    &lt;/casedigest:caseinfo&gt;
  &lt;/casedigest:head&gt;
&lt;/casedigest:casedigest&gt;
      </codeblock>
    </example>
    <example>
      <title><sourcexml>case:courtnum</sourcexml>
        <i>without</i> child <sourcexml>ci:cite</sourcexml></title>
      <codeblock>
&lt;DIGESTDOC&gt;
  &lt;dig:body&gt;
    &lt;dig:info&gt;
      &lt;case:info&gt;
         &lt;case:courtinfo&gt;
          &lt;case:courtnum&gt;
            &lt;emph typestyle="bf"&gt;508-1&lt;/emph&gt;
          &lt;/case:courtnum&gt;
         &lt;/case:courtinfo&gt;
      &lt;/case:info&gt;
    &lt;/dig:info&gt;
  &lt;/dig:body&gt;
&lt;/DIGESTDOC&gt;
<b>Becomes</b>
&lt;casedigest:casedigest&gt;
  &lt;casedigest:head&gt;
    &lt;casedigest:caseinfo&gt;
      &lt;caseinfo:docketnum&gt;508-1&lt;/caseinfo:docketnum&gt;
    &lt;/casedigest:caseinfo&gt;
  &lt;/casedigest:head&gt;  
&lt;/casedigest:casedigest&gt;
      </codeblock>
    </example>
    <note> Text (PCDATA) occuring in between <sourcexml>case:courtnum</sourcexml> and
        <sourcexml>ci:cite</sourcexml> should be moved inside <targetxml>connector</targetxml>
      element. Multiple <targetxml>connector</targetxml> elements can be used if the text is
      fragmented. </note>
    <example>
      <title><sourcexml>case:courtnum/emph</sourcexml> with text before
          <sourcexml>ci:cite</sourcexml></title>
      <codeblock>
&lt;DIGESTDOC&gt;
  &lt;dig:body&gt;
    &lt;dig:info&gt;
      &lt;case:info&gt;
        &lt;case:courtinfo&gt;
          &lt;case:courtnum&gt;
            &lt;emph typestyle="bf"&gt;
            (Case 
              &lt;ci:cite searchtype="CASE-REF"&gt;
                &lt;ci:case&gt;
                  &lt;ci:caseref&gt;
                    &lt;ci:reporter value="C" /&gt; 
                    &lt;ci:edition&gt;
                      &lt;ci:date year="1989" /&gt; 
                    &lt;/ci:edition&gt;
                    &lt;ci:page num="119" /&gt; 
                  &lt;/ci:caseref&gt;
                &lt;/ci:case&gt;
                &lt;ci:content&gt;C-119/89&lt;/ci:content&gt; 
              &lt;/ci:cite&gt;
            ) 
            &lt;/emph&gt;
          &lt;/case:courtnum&gt;
        &lt;/case:courtinfo&gt;
      &lt;/case:info&gt;
    &lt;/dig:info&gt;
  &lt;/dig:body&gt;
&lt;/DIGESTDOC&gt;
<b>Becomes</b>
&lt;casedigest:casedigest&gt;
  &lt;casedigest:head&gt;
    &lt;casedigest:caseinfo&gt;
      &lt;caseinfo:docketnum&gt;(Case C-119/89)&lt;/caseinfo:docketnum&gt;
      &lt;ref:citations&gt;
        &lt;connector&gt;(Case &lt;/connector&gt;
        &lt;ref:cite4thisresource&gt;
          &lt;lnci:cite&gt;
            &lt;lnci:case&gt;
              &lt;lnci:caseref&gt;
                &lt;lnci:reporter value="C"/&gt;
                &lt;lnci:edition&gt;
                  &lt;lnci:date year="1989"/&gt;
                &lt;/lnci:edition&gt;
                &lt;lnci:page num="119"/&gt;
              &lt;/lnci:caseref&gt;
            &lt;/lnci:case&gt;
            &lt;lnci:content&gt;C-119-89&lt;/lnci:content&gt;
          &lt;/lnci:cite&gt;
        &lt;/ref:cite4thisresource&gt;
        &lt;connector&gt;)&lt;/connector&gt;
      &lt;/ref:citations&gt;
    &lt;/casedigest:caseinfo&gt;
  &lt;/casedigest:head&gt;
&lt;/casedigest:casedigest&gt;
      </codeblock>
    </example>
    <section>
      <title>Changes</title>
      <p>2014-05-19: <ph id="change_20140519_AS">added attribute citetype="reporter" to ref:cite4thisresource.</ph></p>
      <p>2013-07-19: <ph id="change_20130719_DSF">Changed the target XPaths so that they being with
            <b>casedigest:head</b>/casedigest:caseinfo instead of
          <b>casedigest:body</b>/casedigest:caseinfo.</ph></p>
      <p>2013-03-05: <ph id="change_20130305_RMS">Mapping for <sourcexml>case:courtnum</sourcexml>
          has been corrected to
            <targetxml>casedigest:casedigest/casedigest:body/casedigest:caseinfo/...</targetxml></ph>
      </p>
      <p>2013-02-27: <ph id="change_20130227_RMS">Updated the example with
            <targetxml>connector</targetxml> tags for the text within
            <sourcexml>case:courtnum/emph</sourcexml> before <sourcexml>ci:cite</sourcexml></ph>
      </p>
      <p>2013-02-26: <ph id="change_20130226_RMS">Appended example with scenario having text within
            <sourcexml>case:courtnum/emph</sourcexml> before <sourcexml>ci:cite</sourcexml></ph>
      </p>
      <p>2013-02-20: <ph id="change_20130220_DSF">Corrected the sample mapping for
            <sourcexml>case:courtnum</sourcexml> with child <sourcexml>ci:cite</sourcexml>.</ph></p>
      <p>2013-02-19: <ph id="change_20130219_DSF">Changed the mapping for
            <sourcexml>case:courtnum</sourcexml> so that it is dependent on whether a
            <sourcexml>ci:cite</sourcexml> child is present.</ph></p>
    </section>
  </body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK03_CaseDigest\Rosetta_case.courtnum.dita  -->

  <xsl:template match="case:courtnum">
    <caseinfo:docketnum>    
    <xsl:apply-templates select="@* | node()"/>
    </caseinfo:docketnum>
  </xsl:template>

<!-- CSN - 2017-11-27 - Webstar 7056763 suppress emph according to this dita -->
  <xsl:template match="emph[parent::case:courtnum]">
      <xsl:apply-templates/>
  </xsl:template>
  
</xsl:stylesheet>