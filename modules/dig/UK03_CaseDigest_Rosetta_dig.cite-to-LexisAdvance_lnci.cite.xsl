<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:ci="http://www.lexis-nexis.com/ci" xmlns:dig="http://www.lexis-nexis.com/glp/dig"
  xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" xmlns:casedigest="http://www.lexisnexis.com/xmlschemas/content/legal/case-digest/1/" version="2.0" exclude-result-prefixes="dita ci dig">

  <dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_dig.cite-to-LexisAdvance_lnci.cite">
    <title>dig:cite-to-lnci:cite <lnpid>id-UK03-27444</lnpid></title>
    <body>
      <p>
        <sourcexml>dig:cite</sourcexml> becomes <targetxml>casedigest:head/ref:citations/ref:cite4thisresource/lnci:cite/lnci:content</targetxml>. <pre>
&lt;DIGESTDOC&gt;
  &lt;dig:body&gt;
    &lt;dig:info&gt;
      &lt;dig:cite&gt;
          &lt;ci:cite type="cite4thisdoc"&gt;
            &lt;ci:case&gt;
             &lt;ci:caseref&gt;
                &lt;ci:reporter value="ALLERD"/&gt;
                &lt;ci:volume num="11"/&gt;
                &lt;ci:edition&gt;
                  &lt;ci:date year="2012"/&gt;
                &lt;/ci:edition&gt;
                &lt;ci:page num="188"/&gt;
             &lt;/ci:caseref&gt;
            &lt;/ci:case&gt;
            &lt;ci:content&gt;
              &lt;citefragment searchtype="CASE-CITE-REF"&gt;[2012] All ER (D) 188
              (Nov)&lt;/citefragment&gt;
            &lt;/ci:content&gt;
          &lt;/ci:cite&gt;
        &lt;/dig:cite&gt;
    &lt;/dig:info&gt;
  &lt;/dig:body&gt;
&lt;/DIGESTDOC&gt;

<b>Becomes</b>

&lt;casedigest:casedigest&gt;
    &lt;casedigest:head&gt;
        &lt;ref:citations&gt;
            &lt;ref:cite4thisresource citetype="reporter"&gt;
                &lt;lnci:cite&gt;
                    &lt;lnci:case&gt;
                        &lt;lnci:caseref&gt;
                            &lt;lnci:reporter value="ALLERD"/&gt;
                            &lt;lnci:volume num="11"&gt; &lt;/lnci:volume&gt;
                            &lt;lnci:edition&gt;
                                &lt;lnci:date year="2012"/&gt;
                            &lt;/lnci:edition&gt;
                            &lt;lnci:page num="188"/&gt;
                        &lt;/lnci:caseref&gt;
                    &lt;/lnci:case&gt;
                    &lt;lnci:content&gt;[2012] All ER (D) 188 (Nov)&lt;/lnci:content&gt;
                &lt;/lnci:cite&gt;
            &lt;/ref:cite4thisresource&gt;
        &lt;/ref:citations&gt;    
    &lt;/casedigest:head&gt;  
&lt;/casedigest:casedigest&gt;

</pre>
        <pre>
  <b>If <sourcexml>ci:cite</sourcexml> markup missing inside the <sourcexml>dig:cite</sourcexml> then below markup refer for handling:</b>
&lt;DIGESTDOC&gt;
  &lt;dig:body&gt;
    &lt;dig:info&gt;
      &lt;dig:cite&gt;(1871) L.R. 8 Ch.App. 1075&lt;/dig:cite&gt;
    &lt;/dig:info&gt;
  &lt;/dig:body&gt;
&lt;/DIGESTDOC&gt;

<b>Becomes</b>

&lt;casedigest:casedigest&gt;
  &lt;casedigest:head&gt;
    &lt;ref:citations&gt;
      &lt;ref:cite4thisresource citetype="reporter"&gt;
        &lt;lnci:cite&gt;
          &lt;lnci:content&gt;(1871) L.R. 8 Ch.App. 1075&lt;/lnci:content&gt;
        &lt;/lnci:cite&gt;
      &lt;/ref:cite4thisresource&gt;
    &lt;/ref:citations&gt;    
  &lt;/casedigest:head&gt;  
&lt;/casedigest:casedigest&gt;
</pre>
      </p>
      <p>
        <sourcexml>dig:cite/ci:cite</sourcexml> becomes <targetxml>casedigest:head/ref:citations/ref:cite4thisresource/lnci:cite/lnci:content</targetxml>.
        <pre>
&lt;DIGESTDOC&gt;
  &lt;dig:body&gt;
    &lt;dig:info&gt;
      &lt;dig:cite&gt;
        &lt;ci:cite type="cite4thisdoc"&gt;
            &lt;ci:case&gt;
                  &lt;ci:caseref&gt;
                        &lt;ci:reporter value="ALLER"/&gt;
                        &lt;ci:volume num="3"/&gt;
                        &lt;ci:edition&gt;
                            &lt;ci:date year="1936"/&gt;
                        &lt;/ci:edition&gt;
                       &lt;ci:page num="148"/&gt;
                    &lt;/ci:caseref&gt;
            &lt;/ci:case&gt;
            &lt;ci:content&gt;
              &lt;citefragment searchtype="CASE-CITE-REF"&gt;[1936] 3 All ER 148&lt;/citefragment&gt;
            &lt;/ci:content&gt;
        &lt;/ci:cite&gt;
      &lt;/dig:cite&gt;
    &lt;/dig:info&gt;
  &lt;/dig:body&gt;
&lt;/DIGESTDOC&gt;

<b>Becomes</b>
&lt;casedigest:casedigest&gt;
  &lt;casedigest:head&gt;
    &lt;ref:citations&gt;
      &lt;ref:cite4thisresource citetype="reporter"&gt;
        &lt;lnci:cite&gt;
            &lt;lnci:case&gt;
                  &lt;lnci:caseref&gt;
                        &lt;lnci:reporter value="ALLER"/&gt;
                        &lt;lnci:volume num="3"/&gt;
                        &lt;lnci:edition&gt;
                            &lt;lnci:date year="1936"/&gt;
                        &lt;/lnci:edition&gt;
                       &lt;lnci:page num="148"/&gt;
                    &lt;/lnci:caseref&gt;
            &lt;/lnci:case&gt;
            &lt;lnci:content&gt;[1936] 3 All ER 148&lt;/lnci:content&gt;
        &lt;/lnci:cite&gt;
      &lt;/ref:cite4thisresource&gt;
    &lt;/ref:citations&gt;    
  &lt;/casedigest:head&gt;  
&lt;/casedigest:casedigest&gt;
</pre>
      </p>
      <section>
        <title>Changes</title>
        <p>2016-01-19: <ph id="change_20160119_SS">Updated the examples for handling the scenrio "<sourcexml>dig:cite/ci:cite@type="cite4thisdoc"</sourcexml>. RFA list #2724</ph></p>
      </section>
    </body>
  </dita:topic>

  <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK03_CaseDigest\Rosetta_dig.cite-to-LexisAdvance_lnci.cite.dita  -->

  <!-- Vikas Rohilla : Updated the Template -->
  <xsl:template match="dig:cite">
    <ref:cite4thisresource citetype="reporter">
      <xsl:apply-templates select="@* | node()"/>
    </ref:cite4thisresource>
  </xsl:template>

  <xsl:template match="dig:cite/@display-name"/>

</xsl:stylesheet>
