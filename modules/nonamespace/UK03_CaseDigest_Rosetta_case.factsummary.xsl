<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:casesum="http://www.lexisnexis.com/xmlschemas/content/legal/case-summary/1/"
  xmlns:courtcase="http://www.lexisnexis.com/xmlschemas/content/legal/courtcase/1/" version="2.0" exclude-result-prefixes="dita case">

  <dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_case.factsummary">
    <title>case:factsummary <lnpid>id-UK03-27425</lnpid></title>
    <body>
      <section>
        <p>
          <sourcexml>case:headnote/case:factsummary/</sourcexml> becomes <targetxml>courtcase:head/casesum:summaries/casesum:editorialsummary</targetxml>. The children can be converted as follows: <ul>
            <li>
              <sourcexml>case:factsummary/p</sourcexml> becomes <targetxml>casesum:summaries/casesum:editorialsummary/p</targetxml>.
              <pre>
&lt;DIGESTDOC&gt;
  &lt;dig:body&gt;
    &lt;level&gt;
      &lt;bodytext&gt;
        &lt;case:embeddedcase&gt;
          &lt;case:headnote&gt;
            &lt;case:factsummary&gt;
              &lt;p&gt;
                &lt;text&gt;William Wilson (W) began working for the respondent company as
                    a relief area manager in May 2001. His terms of employment were
                    set out in a “statement of terms and conditions of employment”
                    which was expressly said to include the particulars required to
                    be given under the Employment Rights Act.
                &lt;/text&gt;
              &lt;/p&gt;
            &lt;/case:factsummary&gt;
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
                  &lt;text&gt;William Wilson (W) began working for the respondent company as
                    a relief area manager in May 2001. His terms of employment were
                    set out in a “statement of terms and conditions of employment”
                    which was expressly said to include the particulars required to
                    be given under the Employment Rights Act.
                  &lt;/text&gt;
                &lt;/p&gt;
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
              <sourcexml>case:factsummary/pgrp</sourcexml> becomes <targetxml>casesum:summaries/casesum:editorialsummary/pgrp</targetxml>.
              <pre>
&lt;DIGESTDOC&gt;
  &lt;dig:body&gt;
    &lt;level&gt;
      &lt;bodytext&gt;
        &lt;case:embeddedcase&gt;
          &lt;case:headnote&gt;
            &lt;case:factsummary&gt;
              &lt;pgrp&gt;
                &lt;p&gt;
                  &lt;text&gt;It did not follow, as a matter of law, that applying a
                      trade mark to goods necessarily and in all cases amounted to
                      the application of a trade description. Whether it did
                      amount to the application of a trade description was a
                      matter of fact for the jury to decide, provided that there
                      was sufficient evidence to constitute a case. It followed
                      that the two questions were not certified as matters of
                      general public importance and leave would not be
                      granted.
                  &lt;/text&gt;
                &lt;/p&gt;
              &lt;/pgrp&gt;
            &lt;/case:factsummary&gt;
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
                &lt;pgrp&gt;
                  &lt;p&gt;
                    &lt;text&gt;It did not follow, as a matter of law, that applying a
                        trade mark to goods necessarily and in all cases amounted to
                        the application of a trade description. Whether it did
                        amount to the application of a trade description was a
                        matter of fact for the jury to decide, provided that there
                        was sufficient evidence to constitute a case. It followed
                        that the two questions were not certified as matters of
                        general public importance and leave would not be
                        granted.
                    &lt;/text&gt;
                  &lt;/p&gt;
                &lt;/pgrp&gt;
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
              <sourcexml>case:factsummary/h</sourcexml> becomes <targetxml>casesum:summaries/casesum:editorialsummary/h</targetxml>.
              <pre>
&lt;DIGESTDOC&gt;
  &lt;dig:body&gt;
    &lt;level&gt;
      &lt;bodytext&gt;
        &lt;case:embeddedcase&gt;
          &lt;case:headnote&gt;
            &lt;case:factsummary&gt;
              &lt;h&gt;
                &lt;emph typestyle="bf"&gt;Adults under disability&lt;/emph&gt;
              &lt;/h&gt;
            &lt;/case:factsummary&gt;
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
                &lt;h&gt;
                  &lt;emph typestyle="bf"&gt;Adults under disability&lt;/emph&gt;
                &lt;/h&gt;
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
              <sourcexml>case:factsummary/l</sourcexml> becomes <targetxml>casesum:summaries/casesum:editorialsummary/p/list</targetxml>. <sourcexml>case:factsummary/l/li/p/text/email</sourcexml> becomes
                <targetxml>casesum:summaries/casesum:editorialsummary/p/list/listitem/p/text/contact:email</targetxml>. <note>If <sourcexml>l</sourcexml> occurs within <sourcexml>case:factsummary</sourcexml> then corresponding element
                  <targetxml>list</targetxml> should occur within <targetxml>p</targetxml> under <targetxml>casesum:editorialsummary</targetxml> i.e, <sourcexml>case:factsummary/l</sourcexml> becomes
                <targetxml>casesum:editorialsummary/p/list</targetxml>.</note>
              <pre>
&lt;DIGESTDOC&gt;
  &lt;dig:body&gt;
    &lt;level&gt;
      &lt;bodytext&gt;
        &lt;case:embeddedcase&gt;
          &lt;case:headnote&gt;
            &lt;case:factsummary&gt;
              &lt;l&gt;
                &lt;li&gt;
                  &lt;lilabel&gt; &lt;/lilabel&gt;
                  &lt;p&gt;
                    &lt;text&gt;Under Children Act proceedings applicants should seek
                        an order in the following form:
                    &lt;/text&gt;
                  &lt;/p&gt;
                &lt;/li&gt;
              &lt;/l&gt;
            &lt;/case:factsummary&gt;
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
                  &lt;list&gt;
                    &lt;listitem&gt;
                      &lt;label&gt;&lt;/label&gt;
                      &lt;p&gt;
                        &lt;text&gt;Under Children Act proceedings applicants should seek
                              an order in the following form:
                        &lt;/text&gt;
                      &lt;/p&gt;
                    &lt;/listitem&gt;
                  &lt;/list&gt;
                &lt;/p&gt;
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
              <sourcexml>case:factsummary/blockquote</sourcexml> becomes <targetxml>casesum:summaries/casesum:editorialsummary/blockquote</targetxml>.
              <pre>
&lt;DIGESTDOC&gt;
  &lt;dig:body&gt;
    &lt;level&gt;
      &lt;bodytext&gt;
        &lt;case:embeddedcase&gt;
          &lt;case:headnote&gt;
            &lt;case:factsummary&gt;
             &lt;blockquote&gt;
              &lt;p&gt;
                &lt;text&gt;&amp;#x201c;Is there an unlawful restriction on
                    intra-Community trade for the purposes of Articles 30 and 36
                    of the EEC Treaty if a subsidiary trading in Member State A
                    of an automobile manufacturer established in Member State B
                    is prohibited from using as a mark in Member State A the
                    designation 'Quadra', which the manufacturer has hitherto
                    used without restriction for a four-wheel drive motor
                    vehicle, both in its own State and elsewhere, on the grounds
                    that another automobile manufacturer in Member State A
                    claims &amp;#x2013; validly under the internal law of Member
                    State A &amp;#x2013; a trade mark right in the word
                    'Quattro' even though that word denotes a numeral in another
                    Member State and that meaning is clearly discernible in yet
                    other Member States, and even though the number 4 thereby
                    designated plays a significant and varied role in automobile
                    manufacturing and the automobile trade?&amp;#x201d;
                &lt;/text&gt;
              &lt;/p&gt;
             &lt;/blockquote&gt;
            &lt;/case:factsummary&gt;
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
                &lt;blockquote&gt;
                  &lt;p&gt;
                    &lt;text&gt;&amp;#x201c;Is there an unlawful restriction on
                      intra-Community trade for the purposes of Articles 30 and 36
                      of the EEC Treaty if a subsidiary trading in Member State A
                      of an automobile manufacturer established in Member State B
                      is prohibited from using as a mark in Member State A the
                      designation 'Quadra', which the manufacturer has hitherto
                      used without restriction for a four-wheel drive motor
                      vehicle, both in its own State and elsewhere, on the grounds
                      that another automobile manufacturer in Member State A
                      claims &amp;#x2013; validly under the internal law of Member
                      State A &amp;#x2013; a trade mark right in the word
                      'Quattro' even though that word denotes a numeral in another
                      Member State and that meaning is clearly discernible in yet
                      other Member States, and even though the number 4 thereby
                      designated plays a significant and varied role in automobile
                      manufacturing and the automobile trade?&amp;#x201d;
                    &lt;/text&gt;
                  &lt;/p&gt;
                &lt;/blockquote&gt;
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
              <sourcexml>case:factsummary/page</sourcexml> becomes <targetxml>casesum:summaries/casesum:editorialsummary/ref:page</targetxml>.
              <pre>
&lt;DIGESTDOC&gt;
  &lt;dig:body&gt;
    &lt;level&gt;
      &lt;bodytext&gt;
        &lt;case:embeddedcase&gt;
          &lt;case:headnote&gt;
            &lt;case:factsummary&gt;
              &lt;page text="[1950] Ch. 643 at " count="" reporter="CH"/&gt;
            &lt;/case:factsummary&gt;
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
                &lt;ref:page num="" page-scheme="CH"/&gt;
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
              <sourcexml>case:factsummary/footnotegrp</sourcexml> becomes <targetxml>casesum:summaries/casesum:editorialsummary/p/text/footnotegroup</targetxml>. <note>Please refer to general markup section - footnotegrp for more details.</note>
              <pre>
&lt;DIGESTDOC&gt;
  &lt;dig:body&gt;
    &lt;level&gt;
      &lt;bodytext&gt;
        &lt;case:embeddedcase&gt;
          &lt;case:headnote&gt;
            &lt;case:factsummary&gt;
              &lt;footnotegrp&gt;
                &lt;footnote fntoken="0"&gt;
                  &lt;fnbody&gt;
                    &lt;p&gt;
                      &lt;text&gt;&lt;sup&gt;a&lt;/sup&gt;     &lt;emph typestyle="bf"&gt;Editor's
                        Note.&lt;/emph&gt; In &lt;emph typestyle="it"&gt;The Family
                        Court Practice 1998&lt;/emph&gt; (p 1265) it is stated:
                        'This article [art 13 of the Children (Allocation of
                        Proceedings) Order 1991, 
                        &lt;ci:cite searchtype="LEG-REF" status="valid"&gt;
                          &lt;ci:sesslaw&gt;
                            &lt;ci:sesslawinfo&gt;
                              &lt;ci:sesslawnum num="1991_1677s_Title"/&gt;
                            &lt;/ci:sesslawinfo&gt;
                            &lt;ci:sesslawref&gt;
                              &lt;ci:standardname normpubcode="UK_SI"/&gt;
                            &lt;/ci:sesslawref&gt;
                          &lt;/ci:sesslaw&gt;
                          &lt;ci:content&gt;SI 1991/1677&lt;/ci:content&gt;
                        &lt;/ci:cite&gt;] allows the High court to transfer proceedings under [Children Act] 1989.&lt;/text&gt;
                      &lt;/p&gt;
                    &lt;/fnbody&gt;
                  &lt;/footnote&gt;
                &lt;/footnotegrp&gt;
            &lt;/case:factsummary&gt;
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
                  &lt;text&gt;
                    &lt;footnotegroup&gt;
                      &lt;footnote&gt;
                        &lt;ref:anchor id="0"/&gt;
                        &lt;bodytext&gt;
                          &lt;p&gt;
                            &lt;text&gt;&lt;sup&gt;a&lt;/sup&gt;     &lt;emph typestyle="bf"&gt;Editor's
                              Note.&lt;/emph&gt; In &lt;emph typestyle="it"&gt;The Family
                              Court Practice 1998&lt;/emph&gt; (p 1265) it is stated:
                              'This article [art 13 of the Children (Allocation of
                              Proceedings) Order 1991, 
                              &lt;lnci:cite status="valid"&gt;
                                 &lt;lnci:sesslaw&gt;
                                  &lt;lnci:sesslawinfo&gt;
                                     &lt;lnci:sesslawnum num="1991_1677s_Title"/&gt;
                                  &lt;/lnci:sesslawinfo&gt;
                                  &lt;lnci:sesslawref&gt;
                                    &lt;lnci:standardname normpubcode="UK_SI"/&gt;
                                  &lt;/lnci:sesslawref&gt;
                                &lt;/lnci:sesslaw&gt;
                              &lt;lnci:content&gt;SI 1991/1677&lt;/lnci:content&gt;
                             &lt;/lnci:cite&gt;] allows the High court to transfer proceedings under [Children Act] 1989.
                          &lt;/text&gt;
                        &lt;/p&gt;
                      &lt;/bodytext&gt;
                    &lt;/footnote&gt;
                  &lt;/footnotegroup&gt;
                &lt;/text&gt;
              &lt;/p&gt;
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
          </ul>
        </p>
      </section>
      <section>
        <title>Created</title>
        <p>2015-08-12</p>
      </section>
    </body>
  </dita:topic>

  <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK03_CaseDigest\Rosetta_case.factsummary.dita  -->

  <xsl:template match="case:factsummary">
    <!-- CSN - 2017-12-16 - Webstar 7074227 - omit output if no text -->
    <xsl:if test="normalize-space(.) != ''">
      <casesum:summaries>
        <casesum:editorialsummary>
          <xsl:apply-templates select="@* | node()"/>
        </casesum:editorialsummary>
      </casesum:summaries>
    </xsl:if>
  </xsl:template>

  <xsl:template match="case:factsummary/p/@searchtype"/>

</xsl:stylesheet>
