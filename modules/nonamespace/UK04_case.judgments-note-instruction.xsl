<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="courtorder-note-instruction">
    <title>note noteype="instruction" <lnpid>id-UK04-27622</lnpid></title>
    <body>
      <p>The element <sourcexml>case:judgments/note</sourcexml> with attribute
          <sourcexml>@notetype</sourcexml> equal to "instruction" becomes
          <targetxml>courtorder:body/section/bodytext</targetxml> and the source attribute
          <sourcexml>note/@notetype</sourcexml> is dropped.</p>
      <p>The <sourcexml>note</sourcexml> element's children are converted as described in the
          <b>"General Markup"</b> section and placed within the <targetxml>bodytext</targetxml>
        element, with one exception. </p>
      <p>The exception is the element <sourcexml>heading</sourcexml>. This element always occurs
        before any <sourcexml>p</sourcexml> or <sourcexml>pgrp</sourcexml> elements in the
          <sourcexml>note</sourcexml>. The <sourcexml>heading</sourcexml> should be moved to the
        parent <targetxml>section</targetxml> element so that it becomes
          <targetxml>section/heading</targetxml> and all child elements of
          <sourcexml>heading</sourcexml> (such as <sourcexml>title</sourcexml>) are converted as
        described in the <b>"General Markup"</b> section.</p>
      <note>As stated above, <sourcexml>heading</sourcexml> always occurs before any
          <sourcexml>p</sourcexml> or <sourcexml>pgrp</sourcexml> elements in the
          <sourcexml>note</sourcexml>. If there is ever a future use case where
          <sourcexml>heading</sourcexml> occurs <b>after</b> a <sourcexml>p</sourcexml> or
          <sourcexml>pgrp</sourcexml> element in a <sourcexml>note</sourcexml>, then the start-tag
        and end-tag of <sourcexml>heading</sourcexml> are dropped, and <sourcexml>title</sourcexml>
        becomes <targetxml>h</targetxml>. All child elements of <sourcexml>heading/title</sourcexml>
        are converted as described in the <b>"General Markup"</b> section.</note>
      <note>As described in the instructions for converting <sourcexml>footnotegrp</sourcexml> found
        in the <b>"General Markup"</b> section, the element
          <sourcexml>note[@noteype="instruction]/footnotegrp</sourcexml> becomes
          <targetxml>section/bodytext/p/text/footnotegroup</targetxml> by creating
          <targetxml>p</targetxml> and <targetxml>text</targetxml> elements to contain the
          <targetxml>footnotegroup</targetxml> since it is not allowed directly within
          <targetxml>bodytext</targetxml>. Also, these footnotes <b>do not</b> have a corresponding
        footnote reference (<sourcexml>fnr</sourcexml>) elsewhere and the
          <sourcexml>footnote/@fntoken</sourcexml> is always "0". The actual "reference" is usually
        a <sourcexml>sup</sourcexml> somewhere in the previous paragraphs. Since the child
          <targetxml>footnote/ref:anchor</targetxml> element is required, it should be added as per
        the General Markup instructions for footnotes.</note>
      <note>A separate <targetxml>courtorder:body/section</targetxml> is created for each separate
          <sourcexml>case:judgments/note</sourcexml> or
        <sourcexml>case:headnote/note</sourcexml>.</note>

      <section>
        <title>Source XML with one note with a heading</title>
        <codeblock>

&lt;case:content&gt;
  &lt;case:judgments&gt;
    &lt;note notetype="instruction"&gt;
      &lt;heading&gt;
        &lt;title&gt;
          &lt;emph typestyle="bf"&gt;Bound Cases.&lt;/emph&gt;
        &lt;/title&gt;
      &lt;/heading&gt;
      &lt;pgrp&gt;
        &lt;p&gt;
          &lt;text&gt;In future bound cases will&amp;#x2014;(a) be bound, thread sewn in sections, in limp
            cornflower covers, Fibrex Board substance, drawn on; (b) contain cut out indices for
            the petition of appeal, appellant's case, respondent's case and appendix
            respectively, tabbed with name of document on front sheet of each.&lt;/text&gt;
        &lt;/p&gt;
        &lt;p&gt;
          &lt;text&gt;This will apply to all appeals set down for hearing on or after 1 May
            1965.&lt;/text&gt;
        &lt;/p&gt;
        &lt;p&gt;
          &lt;text&gt;Direction 22(ii) is amended accordingly, as also para 3 of the Practice
            Direction issued on 1 March 1964.&lt;/text&gt;
        &lt;/p&gt;
      &lt;/pgrp&gt;
    &lt;/note&gt;
  &lt;/case:judgments&gt;

      </codeblock>
      </section>
      <section>
        <title>Target XML </title>
        <codeblock>

&lt;courtorder:body&gt;
  &lt;section&gt;
    &lt;heading&gt;
      &lt;title&gt;
        &lt;emph typestyle="bf"&gt;Bound Cases.&lt;/emph&gt;
      &lt;/title&gt;
    &lt;/heading&gt;
    &lt;bodytext&gt;
      &lt;pgrp&gt;
        &lt;p&gt;
          &lt;text&gt;In future bound cases will&amp;#x2014;(a) be bound, thread sewn in sections, in limp
            cornflower covers, Fibrex Board substance, drawn on; (b) contain cut out indices for
            the petition of appeal, appellant's case, respondent's case and appendix
            respectively, tabbed with name of document on front sheet of each.&lt;/text&gt;
        &lt;/p&gt;
        &lt;p&gt;
          &lt;text&gt;This will apply to all appeals set down for hearing on or after 1 May
            1965.&lt;/text&gt;
        &lt;/p&gt;
        &lt;p&gt;
          &lt;text&gt;Direction 22(ii) is amended accordingly, as also para 3 of the Practice
            Direction issued on 1 March 1964.&lt;/text&gt;
        &lt;/p&gt;
      &lt;/pgrp&gt;
    &lt;/bodytext&gt;
  &lt;/section&gt;

        </codeblock>
      </section>

      <section>
        <title>Source XML with multiple notes and a heading</title>
        <codeblock>

&lt;case:content&gt;
  &lt;case:judgments&gt;
    &lt;note notetype="commentary"&gt;
      &lt;pgrp&gt;
        &lt;p&gt;
          &lt;text&gt;Notice is given of the following alterations in the Directions as to Procedure
            relating to appeals to the House of Lords:&lt;/text&gt;
        &lt;/p&gt;
      &lt;/pgrp&gt;
    &lt;/note&gt;
    &lt;note notetype="instruction"&gt;
      &lt;heading&gt;
        &lt;title&gt;
          &lt;emph typestyle="bf"&gt;Bound Cases.&lt;/emph&gt;
        &lt;/title&gt;
      &lt;/heading&gt;
      &lt;pgrp&gt;
        &lt;p&gt;
          &lt;text&gt;In future bound cases will&amp;#x2014;(a) be bound, thread sewn in sections, in limp
            cornflower covers, Fibrex Board substance, drawn on; (b) contain cut out indices for
            the petition of appeal, appellant's case, respondent's case and appendix
            respectively, tabbed with name of document on front sheet of each.&lt;/text&gt;
        &lt;/p&gt;
        &lt;p&gt;
          &lt;text&gt;This will apply to all appeals set down for hearing on or after 1 May
            1965.&lt;/text&gt;
        &lt;/p&gt;
        &lt;p&gt;
          &lt;text&gt;Direction 22(ii) is amended accordingly, as also para 3 of the Practice
            Direction issued on 1 March 1964.&lt;/text&gt;
        &lt;/p&gt;
      &lt;/pgrp&gt;
    &lt;/note&gt;
  &lt;/case:judgments&gt;

      </codeblock>
      </section>
      <section>
        <title>Target XML </title>
        <codeblock>

&lt;case:content&gt;
  &lt;case:judgments&gt;
    &lt;section&gt;
      &lt;heading&gt;
        &lt;title&gt;
          &lt;emph typestyle="bf"&gt;Bound Cases.&lt;/emph&gt;
        &lt;/title&gt;
      &lt;/heading&gt;
      &lt;bodytext&gt;
        &lt;note notetype="commentary"&gt;
          &lt;bodytext&gt;
          &lt;pgrp&gt;
            &lt;p&gt;
              &lt;text&gt;Notice is given of the following alterations in the Directions as to Procedure
                relating to appeals to the House of Lords:&lt;/text&gt;
            &lt;/p&gt;
          &lt;/pgrp&gt;
          &lt;/bodytext&gt;
        &lt;/note&gt;
      &lt;/bodytext&gt;
    &lt;/section&gt;
    &lt;section&gt;
      &lt;bodytext&gt;
        &lt;pgrp&gt;
          &lt;p&gt;
            &lt;text&gt;In future bound cases will&amp;#x2014;(a) be bound, thread sewn in sections, in limp
              cornflower covers, Fibrex Board substance, drawn on; (b) contain cut out indices for
              the petition of appeal, appellant's case, respondent's case and appendix
              respectively, tabbed with name of document on front sheet of each.&lt;/text&gt;
          &lt;/p&gt;
          &lt;p&gt;
            &lt;text&gt;This will apply to all appeals set down for hearing on or after 1 May
              1965.&lt;/text&gt;
          &lt;/p&gt;
          &lt;p&gt;
            &lt;text&gt;Direction 22(ii) is amended accordingly, as also para 3 of the Practice
              Direction issued on 1 March 1964.&lt;/text&gt;
          &lt;/p&gt;
        &lt;/pgrp&gt;
      &lt;/bodytext&gt;
    &lt;/section&gt;
  &lt;/case:judgments&gt;

        </codeblock>
      </section>

      <section>
        <title>Source XML with a note from <sourcexml>case:headnote</sourcexml></title>
        <codeblock>

&lt;case:headnote&gt;
  &lt;!--...--&gt;
  &lt;note notetype="commentary"&gt;
    &lt;pgrp&gt;
      &lt;p&gt;
        &lt;text&gt;The following Practice Direction has been issued by Sir Igor Judge, President of
          the Queens Bench Division with the agreement of the Master of the Rolls.&lt;/text&gt;
      &lt;/p&gt;
    &lt;/pgrp&gt;
  &lt;/note&gt;
&lt;/case:headnote&gt;
&lt;case:content&gt;
  &lt;case:judgments&gt;
    &lt;note notetype="instruction"&gt;
      &lt;pgrp&gt;
        &lt;p&gt;
          &lt;text&gt;
            &lt;person searchtype="judge"&gt;
              &lt;name.text&gt;Sir Igor Judge P:&lt;/name.text&gt;
            &lt;/person&gt;
          &lt;/text&gt;
        &lt;/p&gt;
      &lt;/pgrp&gt;
      &lt;pgrp&gt;
        &lt;p&gt;
          &lt;text&gt;1. Where there is an application to a magistrates' court for an anti-social
            behaviour order under s.1 of the
            Crime and Disorder Act 1998 (the Act), or an application to a magistrates' court for
            an anti-social behaviour order to be varied or discharged under s.1(8) of the Act,
            and the person against whom the order is sought is under 18, the justices
            constituting the court should normally be qualified to sit in the youth
            court.&lt;/text&gt;
        &lt;/p&gt;
      &lt;/pgrp&gt;
      &lt;pgrp&gt;
        &lt;p&gt;
          &lt;text&gt;2. Applications for interim orders under s.1D of the Act, including those made
            without notice, may be listed before justices who are not so qualified.&lt;/text&gt;
        &lt;/p&gt;
      &lt;/pgrp&gt;
      &lt;pgrp&gt;
        &lt;p&gt;
          &lt;text&gt;3. If it is not practicable to constitute a bench in accordance with para.1, in
            particular where to do so would result in a delayed hearing, this Direction does not
            apply.&lt;/text&gt;
        &lt;/p&gt;
      &lt;/pgrp&gt;
    &lt;/note&gt;
  &lt;/case:judgments&gt;
&lt;/case:content&gt;

      </codeblock>
      </section>
      <section>
        <title>Target XML </title>
        <codeblock>

&lt;courtorder:head&gt;
  &lt;!--...--&gt;
&lt;/courtorder:head&gt;
&lt;courtorder:body&gt;
  &lt;section&gt;
    &lt;bodytext&gt;
      &lt;note notetype="commentary"&gt;
        &lt;bodytext&gt;
          &lt;pgrp&gt;
            &lt;p&gt;
              &lt;text&gt;The following Practice Direction has been issued by Sir Igor Judge, President of
                the Queens Bench Division with the agreement of the Master of the Rolls.&lt;/text&gt;
            &lt;/p&gt;
          &lt;/pgrp&gt;
        &lt;/bodytext&gt;
      &lt;/note&gt;
    &lt;/bodytext&gt;
  &lt;/section&gt;
    
  &lt;section&gt;
    &lt;bodytext&gt;
        &lt;pgrp&gt;
          &lt;p&gt;
            &lt;text&gt;
              &lt;person:person&gt;
                &lt;person:name.text&gt;Sir Igor Judge P:&lt;/person:name.text&gt;
              &lt;/person:person&gt;
            &lt;/text&gt;
          &lt;/p&gt;
        &lt;/pgrp&gt;
        &lt;pgrp&gt;
          &lt;p&gt;
            &lt;text&gt;1. Where there is an application to a magistrates' court for an anti-social
              behaviour order under s.1 of the
              Crime and Disorder Act 1998 (the Act), or an application to a magistrates' court for
              an anti-social behaviour order to be varied or discharged under s.1(8) of the Act,
              and the person against whom the order is sought is under 18, the justices
              constituting the court should normally be qualified to sit in the youth
              court.&lt;/text&gt;
          &lt;/p&gt;
        &lt;/pgrp&gt;
        &lt;pgrp&gt;
          &lt;p&gt;
            &lt;text&gt;2. Applications for interim orders under s.1D of the Act, including those made
              without notice, may be listed before justices who are not so qualified.&lt;/text&gt;
          &lt;/p&gt;
        &lt;/pgrp&gt;
        &lt;pgrp&gt;
          &lt;p&gt;
            &lt;text&gt;3. If it is not practicable to constitute a bench in accordance with para.1, in
              particular where to do so would result in a delayed hearing, this Direction does not
              apply.&lt;/text&gt;
          &lt;/p&gt;
        &lt;/pgrp&gt;
      &lt;/bodytext&gt;
    &lt;/section&gt;

        </codeblock>
      </section>
        <!--
        <section>
            <title>Changes</title>
            <p>2015-02-04: <ph id="change_20150204_JCG">Description of change...</ph></p>
        </section>
        -->
    </body>
  	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK04_CourtOrder\case.judgments-note-instruction.dita  -->
	<!--<xsl:message>case.judgments-note-instruction.xsl requires manual development!</xsl:message> -->

  <!--<xsl:template match="case:judgments/note[@notetype='instruction']">
    <xsl:choose>
      <xsl:when test="child::footnotegrp">
        <section>
          <xsl:apply-templates select="heading"/>
          <bodytext>
            <note notetype='instruction'>
              <bodytext>
                <p>
                  <text>
                    <xsl:apply-templates select="@* | node() except heading"/>
                  </text>
                </p>
              </bodytext>
            </note>
          </bodytext>
        </section>
      </xsl:when>
      <xsl:otherwise>
        <section>
          <xsl:apply-templates select="heading"/>
          <bodytext>
            <note notetype='instruction'>
              <bodytext>
                <xsl:apply-templates select="@* | node() except heading"/>
              </bodytext>
            </note>
          </bodytext>
        </section>
      </xsl:otherwise>
    </xsl:choose>
	</xsl:template>
-->
<!--<xsl:template match="note/@notetype"/>-->
	
</xsl:stylesheet>