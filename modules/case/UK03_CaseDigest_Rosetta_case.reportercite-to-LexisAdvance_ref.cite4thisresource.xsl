<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
  xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:ci="http://www.lexis-nexis.com/ci"
  xmlns:dig="http://www.lexis-nexis.com/glp/dig"
  xmlns:casedigest="http://www.lexisnexis.com/xmlschemas/content/legal/case-digest/1/" xmlns:lnci="http://www.lexisnexis.com/xmlschemas/content/shared/citations/1/"
  xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0"
  exclude-result-prefixes="dita case ci dig">

  <dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/"
    id="Rosetta_case.reportercite-to-LexisAdvance_ref.cite4thisresource">
    <title>case:reportercite-to-ref:cite4thisresource <lnpid>id-UK03-27436</lnpid></title>
    <body>
      <p>
        <ul>
          <li>
            <sourcexml>dig:body/dig:info/case:info/case:reportercite</sourcexml> becomes
              <targetxml>casedigest:head/casedigest:caseinfo/ref:citations/ref:cite4thisresource/@citetype="reporter"</targetxml>.
            The source attribute <sourcexml>case:reportercite/@display-name</sourcexml> is dropped.
              <note>For handling of <sourcexml>ci:cite</sourcexml> and its children, please refer to
                <sourcexml>ci:cite</sourcexml> instructions under General Markup Section.</note>
            <note>Please see <xref
                href="../../common_newest/Rosetta_UK_case.casename-Plus-case.reportercite-LxAdv-dc.title.dita"
              /> for an additional conversion that uses
                <sourcexml>case:info/case:casename</sourcexml>.</note>
            <b>Scenario : 1</b>
            <pre>
&lt;DIGESTDOC&gt;
  &lt;dig:body&gt;
    &lt;dig:info&gt;
      &lt;case:info&gt;
        &lt;case:reportercite&gt;
           &lt;ci:cite type="cite4thisdoc"&gt;
              &lt;ci:case&gt;
                &lt;ci:caseref&gt;
                   &lt;ci:reporter value="ALLERD"/&gt;
                   &lt;ci:edition&gt;
                       &lt;ci:date year="1999"/&gt;
                   &lt;/ci:edition&gt;
                   &lt;ci:page num="701"/&gt;
                &lt;/ci:caseref&gt;
              &lt;/ci:case&gt;
              &lt;ci:content&gt;
                &lt;citefragment searchtype="CASE-CITE-REF"&gt;[1999] All ER (D) 701&lt;/citefragment&gt;
              &lt;/ci:content&gt;
           &lt;/ci:cite&gt;
        &lt;/case:reportercite&gt;
      &lt;/case:info&gt;
    &lt;/dig:info&gt;
  &lt;/dig:body&gt;
&lt;/DIGESTDOC&gt;

<b>Becomes</b>
&lt;casedigest:casedigest&gt;
  &lt;casedigest:head&gt;
    &lt;casedigest:caseinfo&gt;
      &lt;ref:citations&gt;
        &lt;ref:cite4thisresource citetype="reporter"&gt;
          &lt;lnci:cite&gt;
              &lt;lnci:case&gt;
                &lt;lnci:caseref&gt;
                   &lt;lnci:reporter value="ALLERD"/&gt;
                   &lt;lnci:edition&gt;
                       &lt;lnci:date year="1999"/&gt;
                   &lt;/lnci:edition&gt;
                   &lt;lnci:page num="701"/&gt;
                &lt;/lnci:caseref&gt;
              &lt;/lnci:case&gt;
              &lt;lnci:content&gt;[1999] All ER (D) 701&lt;/lnci:content&gt;
           &lt;/lnci:cite&gt;
        &lt;/ref:cite4thisresource&gt;
      &lt;/ref:citations&gt;        
    &lt;/casedigest:caseinfo&gt;
  &lt;/casedigest:head&gt;  
&lt;/casedigest:casedigest&gt;
</pre>
            <b>Scenario : 2</b>
            <pre>
&lt;DIGESTDOC&gt;
  &lt;dig:body&gt;
    &lt;dig:info&gt;
      &lt;case:info&gt;
        &lt;case:reportercite display-name="Citation"&gt;
            &lt;emph typestyle="smcaps"&gt;Wilson v Circular Distributors Ltd [2006] IRLR 38&lt;/emph&gt;
        &lt;/case:reportercite&gt;
      &lt;/case:info&gt;
    &lt;/dig:info&gt;
  &lt;/dig:body&gt;
&lt;/DIGESTDOC&gt;

<b>Becomes</b>
&lt;casedigest:casedigest&gt;
  &lt;casedigest:head&gt;
    &lt;casedigest:caseinfo&gt;
      &lt;ref:citations&gt;
        &lt;ref:cite4thisresource citetype="reporter"&gt;
           &lt;lnci:cite&gt;
              &lt;lnci:content&gt;Wilson v Circular Distributors Ltd [2006] IRLR 38&lt;/lnci:content&gt; 
           &lt;/lnci:cite&gt;
        &lt;/ref:cite4thisresource&gt;
      &lt;/ref:citations&gt;        
    &lt;/casedigest:caseinfo&gt;
  &lt;/casedigest:head&gt;  
&lt;/casedigest:casedigest&gt;
</pre>
            <note>Please note that in the above sample, the child element
                <sourcexml>case:reportercite/emph</sourcexml> is dropped in the NL sample.</note>
          </li>
          <li>
            <note>Text (PCDATA) occuring in between <sourcexml>case:reportercite</sourcexml> and
                <sourcexml>ci:cite</sourcexml> should be moved inside a connector element and put in
              between multiple <targetxml>ref:cite4thisresource</targetxml> elements if needed.
              Please see the below example for details. </note>
            <pre>
&lt;case:reportercite&gt;
  &lt;ci:cite searchtype="CASE-REF"&gt;
   &lt;ci:case&gt;
     &lt;ci:caseref&gt;
        &lt;ci:reporter value="AC"/&gt;
        &lt;ci:volume num="1"/&gt;
        &lt;ci:edition&gt;
            &lt;ci:date year="2001"/&gt;
        &lt;/ci:edition&gt;
        &lt;ci:page num="596"/&gt;
     &lt;/ci:caseref&gt;
   &lt;/ci:case&gt;
   &lt;ci:content&gt;[2001] 1 AC 596&lt;/ci:content&gt;
&lt;/ci:cite&gt;, &lt;ci:cite searchtype="CASE-REF"&gt;
   &lt;ci:case&gt;
      &lt;ci:caseref&gt;
         &lt;ci:reporter value="ALLER"/&gt;
         &lt;ci:volume num="1"/&gt;
        &lt;ci:edition&gt;
          &lt;ci:date year="2001"/&gt;
        &lt;/ci:edition&gt;
        &lt;ci:page num="1"/&gt;
      &lt;/ci:caseref&gt;
    &lt;/ci:case&gt;
    &lt;ci:content&gt;[2001] 1 All ER 1&lt;/ci:content&gt;
&lt;/ci:cite&gt;, [2000] 3 WLR 1571, &lt;ci:cite searchtype="CASE-REF"&gt;
&lt;ci:case&gt;
   &lt;ci:caseref&gt;
      &lt;ci:reporter value="FCR"/&gt;
      &lt;ci:volume num="3"/&gt;
      &lt;ci:edition&gt;
         &lt;ci:date year="2000"/&gt;
      &lt;/ci:edition&gt;
      &lt;ci:page num="555"/&gt;
    &lt;/ci:caseref&gt;
  &lt;/ci:case&gt;
  &lt;ci:content&gt;[2000] 3 FCR 555&lt;/ci:content&gt;
&lt;/ci:cite&gt;, &lt;ci:cite searchtype="CASE-REF"&gt;
  &lt;ci:case&gt;
     &lt;ci:caseref&gt;
        &lt;ci:reporter value="FLR"/&gt;
        &lt;ci:volume num="2"/&gt;
        &lt;ci:edition&gt;
          &lt;ci:date year="2000"/&gt;
        &lt;/ci:edition&gt;
        &lt;ci:page num="981"/&gt;
     &lt;/ci:caseref&gt;
   &lt;/ci:case&gt;
   &lt;ci:content&gt;[2000] 2 FLR 981&lt;/ci:content&gt;
  &lt;/ci:cite&gt;, [2001] Fam Law 12, [2000] 43 LS Gaz R 38,  [2000] NLJR 1716, 144 Sol
Jo LB 266&lt;/case:reportercite&gt;


<b>Becomes</b>
&lt;ref:citations&gt;
  &lt;ref:cite4thisresource citetype="reporter"&gt; 
     &lt;lnci:cite&gt;
       &lt;lnci:case&gt;
         &lt;lnci:caseref&gt;
            &lt;lnci:reporter value="AC"/&gt;
            &lt;lnci:edition&gt;
              &lt;lnci:date year="2001"/&gt;
            &lt;/lnci:edition&gt;
            &lt;lnci:page num="596"/&gt;
         &lt;/lnci:caseref&gt;
      &lt;/lnci:case&gt;
      &lt;lnci:content&gt;[2001] 1 AC 596&lt;/lnci:content&gt;
    &lt;/lnci:cite&gt;
    &lt;/ref:cite4thisresource&gt;
    &lt;connector&gt;,&lt;/connector&gt;
   &lt;ref:cite4thisresource&gt;
      &lt;lnci:cite&gt;
         &lt;lnci:case&gt;
           &lt;lnci:caseref&gt;
             &lt;lnci:reporter value="ALLER"/&gt;
             &lt;lnci:volume num="1"/&gt;
             &lt;lnci:edition&gt;
                &lt;lnci:date year="2001"/&gt;
             &lt;/lnci:edition&gt;
             &lt;lnci:page num="1"/&gt;
          &lt;/lnci:caseref&gt;
      &lt;/lnci:case&gt;
      &lt;lnci:content&gt;[2001] 1 All ER 1&lt;/lnci:content&gt;
&lt;/lnci:cite&gt;
&lt;/ref:cite4thisresource&gt;&lt;connector&gt;, [2000] 3 WLR 1571, &lt;/connector&gt;
&lt;ref:cite4thisresource&gt;
   &lt;lnci:cite&gt;
     &lt;lnci:case&gt;
       &lt;lnci:caseref&gt;
         &lt;lnci:reporter value="FCR"/&gt;
         &lt;lnci:volume num="3"/&gt;
         &lt;lnci:edition&gt;
            &lt;lnci:date year="2000"/&gt;
        &lt;/lnci:edition&gt;
        &lt;lnci:page num="555"/&gt;
     &lt;/lnci:caseref&gt;
   &lt;/lnci:case&gt;
   &lt;lnci:content&gt;[2000] 3 FCR 555&lt;/lnci:content&gt;
  &lt;/lnci:cite&gt;
  &lt;/ref:cite4thisresource&gt;&lt;connector&gt;,&lt;/connector&gt;
  &lt;ref:cite4thisresource&gt;
    &lt;lnci:cite&gt;
      &lt;lnci:case&gt;
        &lt;lnci:caseref&gt;
          &lt;lnci:reporter value="FLR"/&gt;
          &lt;lnci:volume num="2"/&gt;
          &lt;lnci:edition&gt;
            &lt;lnci:date year="2000"/&gt;
          &lt;/lnci:edition&gt;
          &lt;lnci:page num="981"/&gt;
        &lt;/lnci:caseref&gt;
      &lt;/lnci:case&gt;
      &lt;lnci:content&gt;[2000] 2 FLR 981&lt;/lnci:content&gt;
    &lt;/lnci:cite&gt;
  &lt;/ref:cite4thisresource&gt;
  &lt;connector&gt;, [2001] Fam Law 12, [2000] 43 LS Gaz R 38, [2000] NLJR 1716, 144 Sol
  Jo LB 266&lt;/connector&gt;
&lt;/ref:citations&gt;

</pre>
          </li>
          <li>If <sourcexml>case:reportercite</sourcexml> contains nothing other than an empty
              <sourcexml>ci:cite/ci:content</sourcexml>, then it should be suppressed.</li>
        </ul>
      </p>
      <example>
        <title>Example: <sourcexml>case:reportercite</sourcexml> with empty
            <sourcexml>ci:cite/ci:content</sourcexml></title>
        <codeblock> &lt;case:reportercite display-name="Citation"&gt; &lt;ci:cite&gt;
          &lt;ci:content/&gt; &lt;/ci:cite&gt; &lt;/case:reportercite&gt; </codeblock>
        <b><sourcexml>case:reportercite</sourcexml> and all its descendants should be suppressed in
          this scenario.</b>
      </example>
      <section>
        <title>Changes</title>
        <p>2013-07-19: <ph id="change_20130719_DSF">Changed the target XPath to
              <b>casedigest:head</b>/casedigest:caseinfo/ref:citations/ref:cite4thisresource/@citetype="reporter".</ph></p>
        <p>2013-07-09: <ph id="change_20130709_DSF">Added instructions and an example for the
            scenario when case:reportercite contains nothing other than an empty
            ci:cite/ci:content.</ph></p>
      </section>
    </body>
  </dita:topic>

  <!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
  <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK03_CaseDigest\Rosetta_case.reportercite-to-LexisAdvance_ref.cite4thisresource.dita  -->

  <!-- Vikas Rohilla : Tempalte match the  case:reportercite-->
  <!-- BRT 10/10/17 added choice statement -->
  <xsl:template match="case:reportercite">
    <ref:citations>
      <ref:cite4thisresource>
        <xsl:attribute name="citetype">
          <xsl:text>reporter</xsl:text>
        </xsl:attribute>
        <xsl:choose>
          <xsl:when test="not(ci:cite)">
            <xsl:element name="lnci:cite">
              <xsl:element name="lnci:content">
                <xsl:apply-templates/>
              </xsl:element>
            </xsl:element>
          </xsl:when>
          <xsl:otherwise>
            <xsl:apply-templates select="@* | node()"/>
          </xsl:otherwise>
        </xsl:choose>
      </ref:cite4thisresource>
    </ref:citations>
  </xsl:template>

  <xsl:template match="case:reportercite/@display-name"/>




</xsl:stylesheet>
