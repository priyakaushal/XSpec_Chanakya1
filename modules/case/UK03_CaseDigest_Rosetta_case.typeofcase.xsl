<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:casesum="http://www.lexisnexis.com/xmlschemas/content/legal/case-summary/1/"
  xmlns:courtcase="http://www.lexisnexis.com/xmlschemas/content/legal/courtcase/1/" version="2.0" exclude-result-prefixes="dita case">

  <dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_case.typeofcase">
    <title>case:typeofcase-to-casesum:overview <lnpid>id-UK03-27437</lnpid></title>
    <body>
      <section>
        <p>
          <sourcexml>case:headnote/case:typeofcase</sourcexml> becomes <targetxml>courtcase:head/casesum:summaries/casesum:editorialsummary/casesum:overview</targetxml>. The children can be converted as follows: <note>If source document having
              <sourcexml>case:typeofcase</sourcexml> element as a sibling of <sourcexml>case:factsummary</sourcexml> then <sourcexml>case:typeofcase</sourcexml> target mapping <targetxml>casesum:overview</targetxml> should be placed inside the
              <targetxml>casesum:editorialsummary</targetxml> (create additional <targetxml>casesum:editorialsummary</targetxml> wrapper elements for <targetxml>casesum:overview</targetxml>) in NewLexis conversion unless this would interfere with content
            ordering. Refer below input and target markups:</note>
          <ul>
            <li>
              <sourcexml>case:typeofcase/p</sourcexml> becomes <targetxml>casesum:overview/p</targetxml>.
              <pre>
&lt;DIGESTDOC&gt;
  &lt;dig:body&gt;
    &lt;level&gt;
      &lt;bodytext&gt;
        &lt;case:embeddedcase&gt;
          &lt;case:headnote&gt;
            &lt;case:factsummary&gt;
                &lt;p&gt;
                    &lt;text&gt;A bridge over a railway and a bridge under a railway were constructed by statutory
                        railway undertakers at about the time of the construction of the railways.&lt;/text&gt;
                &lt;/p&gt;
            &lt;/case:factsummary&gt;
            &lt;case:typeofcase&gt;
                &lt;p&gt;
                    &lt;text&gt;
                        &lt;emph typestyle="bf"&gt;Held&lt;/emph&gt; ? A statutory corporation, such as railway
                        undertakers, could validly dedicate to the public a right of way over its land if
                        the dedication were not inconsistent with the statutory purposes for which the
                        corporation was constituted; and, in the present cases, such a dedication was not
                        incompatible with those purposes.&lt;/text&gt;
                &lt;/p&gt;
            &lt;/case:typeofcase&gt;
          &lt;/case:headnote&gt;
        &lt;/case:embeddedcase&gt;
      &lt;/bodytext&gt;
    &lt;/level&gt;
  &lt;/dig:body&gt;
&lt;/DIGESTDOC&gt;

<b>Becomes</b>

&lt;casedigest:casedigest&gt;
  &lt;casedigest:body&gt;
    &lt;section&gt;
      &lt;bodytext&gt;
        &lt;courtcase:caseexcerpt&gt;
          &lt;courtcase:head&gt;
            &lt;casesum:summaries&gt;
              &lt;casesum:editorialsummary&gt;
                &lt;p&gt;
                  &lt;text&gt;A bridge over a railway and a bridge under a railway were constructed by statutory
                        railway undertakers at about the time of the construction of the railways.&lt;/text&gt;
                &lt;/p&gt;
              &lt;/casesum:editorialsummary&gt;
              &lt;casesum:editorialsummary&gt;
                &lt;casesum:overview&gt;
                  &lt;p&gt;
                      &lt;text&gt;
                          &lt;emph typestyle="bf"&gt;Held&lt;/emph&gt; ? A statutory corporation, such as railway
                          undertakers, could validly dedicate to the public a right of way over its land if
                          the dedication were not inconsistent with the statutory purposes for which the
                          corporation was constituted; and, in the present cases, such a dedication was not
                          incompatible with those purposes.&lt;/text&gt;
                  &lt;/p&gt;
                &lt;/casesum:overview&gt;
              &lt;/casesum:editorialsummary&gt;
            &lt;/casesum:summaries&gt;
          &lt;/courtcase:head&gt;
        &lt;/courtcase:caseexcerpt
      &lt;/bodytext&gt;
    &lt;/section&gt;    
  &lt;/casedigest:body&gt;  
&lt;/casedigest:casedigest&gt;

</pre>
            </li>
            <li>
              <sourcexml>case:typeofcase/h</sourcexml> becomes <targetxml>casesum:overview/bodytext/h</targetxml>.
              <pre>

&lt;case:typeofcase&gt;
    &lt;p&gt;
        &lt;text&gt;&lt;emph typestyle="it"&gt;R v Inhabitants of Leake&lt;/emph&gt;, (1833), 5 B...&lt;/text&gt;
    &lt;/p&gt;
    &lt;h&gt;Notes&lt;/h&gt;
    &lt;p&gt;
        &lt;text&gt;As to the capacity of statutory corporations to dedicate the surface of land vested in
            them for use as a highway&lt;/text&gt;
    &lt;/p&gt;
&lt;/case:typeofcase&gt;

<b>Becomes</b>

&lt;casesum:overview&gt;
    &lt;p&gt;
        &lt;text&gt;&lt;emph typestyle="it"&gt;R v Inhabitants of Leake&lt;/emph&gt;, (1833), 5 B...&lt;/text&gt;
    &lt;/p&gt;
    &lt;bodytext&gt;
    &lt;h&gt;Notes&lt;/h&gt;
    &lt;/bodytext&gt;
    &lt;p&gt;
        &lt;text&gt;As to the capacity of statutory corporations to dedicate the surface of land vested in
            them for use as a highway&lt;/text&gt;
    &lt;/p&gt;
&lt;/casesum:overview&gt;
</pre>
            </li>
          </ul>
        </p>
      </section>
      <section>
        <title>Changes</title>
        <p>2014-02-07: <ph id="change_20140207_SS">Updated the instruction for handling input scenario when source documents having <sourcexml>case:typeofcase</sourcexml> element as a sibling of <sourcexml>case:factsummary</sourcexml>"</ph>.</p>
        <p>2014-01-24: <ph id="change_20140124_SS">Created</ph>.</p>
      </section>
    </body>
  </dita:topic>

  <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK03_CaseDigest\Rosetta_case.typeofcase.dita  -->

  <!-- Vikas Rohilla : Template to match the case:typeofcase   -->
  <xsl:template match="case:typeofcase">
    <casesum:overview>
      <xsl:apply-templates select="@* | node()"/>
    </casesum:overview>
  </xsl:template>

  <xsl:template match="case:typeofcase[parent::case:content[parent::case:embeddedcase]]">
    <casesum:summaries>
      <casesum:editorialsummary>
        <casesum:overview>
          <!-- 2017-12-18 - CSN - Webstar 7074749 - simplify to add bodytext for all nodes -->
          <bodytext xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
            <xsl:apply-templates select="node()"/>
          </bodytext>
        </casesum:overview>
      </casesum:editorialsummary>
    </casesum:summaries>
  </xsl:template>

</xsl:stylesheet>
