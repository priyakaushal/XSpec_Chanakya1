<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/" 
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
  xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:courtcase="http://www.lexisnexis.com/xmlschemas/content/legal/courtcase/1/" 
  xmlns:person="http://www.lexisnexis.com/xmlschemas/content/shared/person/1/" version="2.0" exclude-result-prefixes="#all">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="courtorder-case.info-case.judgments-case.constituents">
  <title>case:constituents <lnpid>id-UK04-27634</lnpid></title>
  <body>
    <section>
      <p>The element <sourcexml>case:judgments/case:constituents</sourcexml> becomes
          <targetxml>courtorder:body/courtcase:representation</targetxml> and its sub-elements are
        converted as follows.<ul>
          <li>The element <sourcexml>case:constituents/case:constituent</sourcexml> becomes
              <targetxml>courtcase:representation/courtcase:counsel</targetxml>.</li>
          <li>The element <sourcexml>case:constituent/person</sourcexml> becomes
              <targetxml>courtcase:representation/person:counselor/person:person</targetxml> with
            the element <targetxml>person:counselor</targetxml> created as a container for the
            element <targetxml>person:person</targetxml>.</li>
          <li>The content of the element <sourcexml>person/name.text</sourcexml> is then parsed and
            output as follows.<ol>
              <li>The content of <sourcexml>name.text</sourcexml> is tested after removing leading
                white-space to see if it starts with the text "Solicitor:" or "Solicitors:". If so,
                this text is <b><u>removed</u></b> from the name and output as the content of a new
                element <targetxml>courtcase:counsel/role</targetxml> that is <b><u>immdiately
                    before</u></b> the ancestor element <targetxml>person:counselor</targetxml> and
                is a child of the same ancestor <targetxml>courtcase:counsel</targetxml>. Please see
                Example 2 and 3.<p>If the value is "Solicitors:" (plural), the final "s" is removed
                  and only "Solicitor:" is output. Please see Example 4.</p><p>If the text
                  "Solicitor:" or "Solicitors:" is not found, element <targetxml>role</targetxml> is
                      <b><u>not</u></b> output. Please see Example 1.</p></li>
              <li>The <u>direct</u> PCDATA content of <sourcexml>name.text</sourcexml> is then
                parsed for one or more semi-colons ";" and if found, the content is tokenized into
                  <u>separate counsel</u> using the semi-colons as the counsel separator character,
                and each counsel causes the creation of a <b><u>separate</u></b> element
                  <targetxml>courtcase:counsel</targetxml> with sub-elements
                  <targetxml>role</targetxml> and
                  <targetxml>person:counsel/person:person/person:name.text</targetxml> created
                within it. If present, the same value for <targetxml>role</targetxml> is copied as a
                child to each <b><u>separate</u></b> element
                  <targetxml>courtcase:counsel</targetxml>. The semi-colon councel separator is
                dropped and not copied to the output. As described in point #5 below, 
                if a semi-colon occurs within <sourcexml>emph</sourcexml>, it
                is <b><u>not</u></b> considered a separator. Please see Examples 4, 5, and
                  6.</li>
              <li>The content of <u>each separate counsel</u> (or the entire content of
                  <sourcexml>name.text</sourcexml> if no semi-colon is found) is further parsed for
                the <b><u>first</u></b> occurrence of one of these name separators that happens
                    <b><u>after</u></b> the <b><u>last</u></b> occurence of
                  <sourcexml>emph</sourcexml>: <ul>
                  <li>parenthesis "("</li>
                  <li>comma "," </li>
                  <li>a space and the word "for".</li>
                </ul>
                <note>Within <u>each separate counsel</u>, the parse involving the name separators
                  is not done on any text that is within <sourcexml>emph</sourcexml>, nor is it done
                  on any text <u>within each separate counsel</u> occurring outside of
                    <sourcexml>emph</sourcexml> but before the last <sourcexml>emph</sourcexml>
                  end-tag. That is, none of the special name separators (commas, parenthesis, and
                  the special word "for") are considered separators if they occur before the last
                    <targetxml>emph</targetxml> within any particular <u>separate counsel</u>.
                  However, all <u>semi-colons</u> occuring <b><u>outside</u></b> of
                    <targetxml>emph</targetxml> still <u>first</u> need to be used to tokenize each
                  separate counsel as described in point #2 above. Please see Examples 5 and
                  6.</note>If any of these name separators are found, the content of each counsel
                    <b><u>before</u></b> the first occurrence of the name separator is output to
                  <targetxml>person:name.text</targetxml> and the content of each counsel
                    <b><u>after</u></b> the first occurrence of name separator, including the name
                separator, is output as the direct content of
                  <targetxml>courtcase:counsel</targetxml> immediately after the
                  <targetxml>person:counsel</targetxml> end-tag. Note that unlike the semi-colon
                counsel separator, the name separated is <b><u>not dropped</u></b>, it is copied to
                the output. Please see Examples 3 and 4. <p>If none of the separators are found for
                  a particular counsel, the entire counsel is output as the content of element
                    <targetxml>person:name.text</targetxml>. Please see Example 1.</p></li>
              <li>After separating <targetxml>courtcase:counsel</targetxml>, if the content of this
                element does not end with a period, add a period as the last character of the
                content. Please see Example 5.</li>
              <li>The element <sourcexml>emph</sourcexml> becomes <targetxml>emph</targetxml> and is
                converted as specified in the <b><i>General Markup</i></b> section. If
                  <sourcexml>emph</sourcexml> is present, it is <b><u>not</u></b> parsed for any
                separators. That is, neither the semi-colons listed in point #2, nor the commas,
                parenthesis, and special word "for" listed in point #3, are considered separators if
                they occur within <targetxml>emph</targetxml>. So, for example, if there are commas
                in the <targetxml>emph</targetxml> they do not cause the text to be split into a
                separate <targetxml>person:name.text</targetxml>. Likewise, if there are semi-colons
                within <targetxml>emph</targetxml> they do not cause the text to be split into a
                separate <targetxml>courtcase:counsel</targetxml>. Please see Example 6.</li></ol></li>
              <li>If there are multiple <sourcexml>case:constituent</sourcexml> elements, the
            content of each is parsed as described previously. So, each
              <sourcexml>case:constituent</sourcexml> element would become at least one separate
              <targetxml>courtcase:counsel</targetxml> element (or more than one if there are
            semi-colons present). Please see Example 7.</li>               
        </ul>
      </p>
    </section>
    <example>
      <title>Example 1: Showing <sourcexml>name.text</sourcexml> with content that is not moved nor
        specially parsed</title>
      <lines><b>SOURCE XML</b></lines>
      <codeblock>

&lt;case:constituents&gt;
    &lt;case:constituent&gt;
        &lt;person&gt;
            &lt;name.text&gt;Nigel Cox&lt;/name.text&gt;
        &lt;/person&gt;
    &lt;/case:constituent&gt;
&lt;/case:constituents&gt;

        </codeblock>
      <lines><b>TARGET XML</b></lines>
      <codeblock>

&lt;courtcase:representation&gt;
    &lt;courtcase:counsel&gt;
        &lt;person:counselor&gt;
            &lt;person:person&gt;
                &lt;person:name.text&gt;Nigel Cox&lt;/person:name.text&gt;
              &lt;/person:person&gt;
        &lt;/person:counselor&gt;
    &lt;/courtcase:counsel&gt;
&lt;/courtcase:representation&gt;

        </codeblock>
    </example>
    <example>
      <title>Example 2: Showing <sourcexml>name.text</sourcexml> with content that is moved to
          <targetxml>role</targetxml></title>
      <lines><b>SOURCE XML</b></lines>
      <codeblock>

&lt;case:constituents&gt;
    &lt;case:constituent&gt;
        &lt;person&gt;
            &lt;name.text&gt;Solicitor: Laura Harris&lt;/name.text&gt;
        &lt;/person&gt;
    &lt;/case:constituent&gt;
&lt;/case:constituents&gt;

        </codeblock>
      <lines><b>TARGET XML</b></lines>
      <codeblock>

&lt;courtcase:representation&gt;
    &lt;courtcase:counsel&gt;
        &lt;role&gt;Solicitor:&lt;/role&gt;    
        &lt;person:counselor&gt;
            &lt;person:person&gt;
                &lt;person:name.text&gt;Laura Harris&lt;/person:name.text&gt;
              &lt;/person:person&gt;
        &lt;/person:counselor&gt;
    &lt;/courtcase:counsel&gt;
&lt;/courtcase:representation&gt;

        </codeblock>
    </example>
    <example>
      <title>Example 3: Showing <sourcexml>name.text</sourcexml> parsed for
          <targetxml>role</targetxml> and <targetxml>courtcase:counsel</targetxml> content</title>
      <lines><b>SOURCE XML</b></lines>
      <codeblock>

&lt;case:constituents&gt;
    &lt;case:constituent&gt;
        &lt;person&gt;
            &lt;name.text&gt;Solicitor: Laura Harris (Messrs Hudgell &amp; Partners)&lt;/name.text&gt;
        &lt;/person&gt;
    &lt;/case:constituent&gt;
&lt;/case:constituents&gt;

        </codeblock>
      <lines><b>TARGET XML</b></lines>
      <codeblock>

&lt;courtcase:representation&gt;
    &lt;courtcase:counsel&gt;
        &lt;role&gt;Solicitor:&lt;/role&gt;    
        &lt;person:counselor&gt;
            &lt;person:person&gt;
                &lt;person:name.text&gt;Laura Harris&lt;/person:name.text&gt;
              &lt;/person:person&gt;
        &lt;/person:counselor&gt; (Messrs Hudgell &amp; Partners)
    &lt;/courtcase:counsel&gt;
&lt;/courtcase:representation&gt;

        </codeblock>
    </example>
    <example>
      <title>Example 4: Showing <sourcexml>name.text</sourcexml> with multiple counsel and parsing for
          <targetxml>role</targetxml> and <targetxml>courtcase:counsel</targetxml></title>
      <lines><b>SOURCE XML</b></lines>
      <codeblock>

&lt;case:constituents&gt;
    &lt;case:constituent&gt;
        &lt;person&gt;
            &lt;name.text&gt;Solicitors: Laura Harris (Messrs Hudgell &amp;amp; Partners) for
                the mother.; Nigel Cox (Messrs Mullinger Banks) for the local
                authority.; Jane Drew (Messrs Harman Garfield) for the child.
            &lt;/name.text&gt;
        &lt;/person&gt;
    &lt;/case:constituent&gt;
&lt;/case:constituents&gt;

        </codeblock>
      <lines><b>TARGET XML</b></lines>
      <codeblock>

&lt;courtcase:representation&gt;
    &lt;courtcase:counsel&gt;
        &lt;role&gt;Solicitor:&lt;/role&gt;    
        &lt;person:counselor&gt;
            &lt;person:person&gt;
                &lt;person:name.text&gt;Laura Harris&lt;/person:name.text&gt;
              &lt;/person:person&gt;
        &lt;/person:counselor&gt; (Messrs Hudgell &amp; Partners) for the mother.
    &lt;/courtcase:counsel&gt;
    &lt;courtcase:counsel&gt;
        &lt;role&gt;Solicitor:&lt;/role&gt;    
        &lt;person:counselor&gt;
            &lt;person:person&gt;
                &lt;person:name.text&gt;Nigel Cox&lt;/person:name.text&gt;
              &lt;/person:person&gt;
        &lt;/person:counselor&gt; (Messrs Mullinger Banks) for the local authority.
    &lt;/courtcase:counsel&gt;
    &lt;courtcase:counsel&gt;
        &lt;role&gt;Solicitor:&lt;/role&gt;    
        &lt;person:counselor&gt;
            &lt;person:person&gt;
                &lt;person:name.text&gt;Jane Drew&lt;/person:name.text&gt;
              &lt;/person:person&gt;
        &lt;/person:counselor&gt; (Messrs Harman Garfield) for the child.
    &lt;/courtcase:counsel&gt;
&lt;/courtcase:representation&gt;

        </codeblock>
    </example>
    <example>
      <title>Example 5: Showing <sourcexml>name.text</sourcexml> with child <sourcexml>emph</sourcexml>, as well as an example of a missing period.</title>
      <lines><b>SOURCE XML</b></lines>
      <codeblock>

&lt;case:constituents&gt;
  &lt;case:constituent&gt;
    &lt;person&gt;
      &lt;name.text&gt;Solicitors: &lt;emph typestyle="it"&gt;Alexander Pollock&lt;/emph&gt; (for the
        petitioner); &lt;emph typestyle="it"&gt;Stannard, Bosanquet &amp;amp; Michaelson&lt;/emph&gt; (for
        the company).&lt;/name.text&gt;
    &lt;/person&gt;
  &lt;/case:constituent&gt;
&lt;/case:constituents&gt;

        </codeblock>
      <lines><b>TARGET XML</b></lines>
      <p>Note that a period is added as the last character of <targetxml>courtcase:counsel</targetxml> (immediately after the "...petitioner)" text). 
      </p>
      <codeblock>

&lt;courtcase:representation&gt;
  &lt;courtcase:counsel&gt;
    &lt;role&gt;Solicitor:&lt;/role&gt;
    &lt;person:counselor&gt;
      &lt;person:person&gt;
        &lt;person:name.text&gt;&lt;emph typestyle="it"&gt;Alexander Pollock&lt;/emph&gt;&lt;/person:name.text&gt;
      &lt;/person:person&gt;
    &lt;/person:counselor&gt; (for the petitioner).
  &lt;/courtcase:counsel&gt;
  &lt;courtcase:counsel&gt;
    &lt;role&gt;Solicitor:&lt;/role&gt;
    &lt;person:counselor&gt;
      &lt;person:person&gt;
        &lt;person:name.text&gt;&lt;emph typestyle="it"&gt;Stannard, Bosanquet &amp;amp; Michaelson&lt;/emph&gt;&lt;/person:name.text&gt;
      &lt;/person:person&gt;
    &lt;/person:counselor&gt; (for the company).
  &lt;/courtcase:counsel&gt;
&lt;/courtcase:representation&gt;

        </codeblock>
    </example>
    <example>
      <title>Example 6: Showing <sourcexml>name.text</sourcexml> with child <sourcexml>emph</sourcexml>, as well as an example of a missing period.</title>
      <lines><b>SOURCE XML</b></lines>
      <codeblock>

&lt;case:constituents&gt;
  &lt;case:constituent&gt;
    &lt;person&gt;
      &lt;name.text&gt;Solicitors: &lt;emph typestyle="it"&gt;Field, Roscoe &amp;amp; Co&lt;/emph&gt; agents for
        &lt;emph typestyle="it"&gt;Isaac Edwards &amp;amp; Owens&lt;/emph&gt;, Rhyl (for the plaintiff,
        Healey); &lt;emph typestyle="it"&gt;Rhys Roberts &amp;amp; Co&lt;/emph&gt; agents for &lt;emph
          typestyle="it"&gt;Glyn Owen, Ellis &amp;amp; Co&lt;/emph&gt;, Rhyl (for the plaintiffs, Hill,
        McPartland, Maisey and Thorley); &lt;emph typestyle="it"&gt;Layton &amp;amp; Co&lt;/emph&gt; agents
        for &lt;emph typestyle="it"&gt;Turner &amp;amp; Wayman-Hales&lt;/emph&gt;, Chester (for the
        plaintiff, Thompson); &lt;emph typestyle="it"&gt;Robbins, Olivey &amp;amp; Lake&lt;/emph&gt; agents
        for &lt;emph typestyle="it"&gt;Wilding, Earley &amp;amp; Pegge&lt;/emph&gt;, Manchester (for the
        plaintiff, Dempster); &lt;emph typestyle="it"&gt;Geo Thatcher &amp;amp; Son&lt;/emph&gt; agents for
        &lt;emph typestyle="it"&gt;J Kerfoot-Roberts &amp;amp; Son&lt;/emph&gt;, Holywell (for the
        plaintiff, Jones); &lt;emph typestyle="it"&gt;Berrymans&lt;/emph&gt; agents for &lt;emph
          typestyle="it"&gt;Barrell &amp;amp; Co&lt;/emph&gt;, Liverpool (for the second defendants);
        &lt;emph typestyle="it"&gt;Donald H Haslam&lt;/emph&gt; (for the third
        defendants).&lt;/name.text&gt;
    &lt;/person&gt;
  &lt;/case:constituent&gt;
&lt;/case:constituents&gt;

        </codeblock>
      <lines><b>TARGET XML</b></lines>
      <p>Note that a period is added as the last character of <targetxml>courtcase:counsel</targetxml> (immediately after the "...petitioner)" text). 
      </p>
      <codeblock>

&lt;courtcase:representation&gt;
  &lt;courtcase:counsel&gt;
    &lt;role&gt;Solicitor:&lt;/role&gt;
    &lt;person:counselor&gt;
      &lt;person:person&gt;
        &lt;person:name.text&gt;&lt;emph typestyle="it"&gt;Field, Roscoe &amp;amp; Co&lt;/emph&gt; 
        agents for &lt;emph typestyle="it"&gt;Isaac Edwards &amp;amp; Owens&lt;/emph&gt;&lt;/person:name.text&gt;
      &lt;/person:person&gt;
    &lt;/person:counselor&gt;, Rhyl (for the plaintiff, Healey).
  &lt;/courtcase:counsel&gt;
  &lt;courtcase:counsel&gt;
    &lt;role&gt;Solicitor:&lt;/role&gt;
    &lt;person:counselor&gt;
      &lt;person:person&gt;
        &lt;person:name.text&gt;&lt;emph typestyle="it"&gt;Rhys Roberts &amp;amp; Co&lt;/emph&gt; 
        agents for &lt;emph typestyle="it"&gt;Glyn Owen, Ellis &amp;amp; Co&lt;/emph&gt;&lt;/person:name.text&gt;
      &lt;/person:person&gt;
    &lt;/person:counselor&gt;, Rhyl (for the plaintiffs, Hill, McPartland, Maisey and Thorley).
  &lt;/courtcase:counsel&gt;
  &lt;courtcase:counsel&gt;
    &lt;role&gt;Solicitor:&lt;/role&gt;
    &lt;person:counselor&gt;
      &lt;person:person&gt;
        &lt;person:name.text&gt;&lt;emph typestyle="it"&gt;Layton &amp;amp; Co&lt;/emph&gt; 
        agents for &lt;emph typestyle="it"&gt;Turner &amp;amp; Wayman-Hales&lt;/emph&gt;&lt;/person:name.text&gt;
      &lt;/person:person&gt;
    &lt;/person:counselor&gt;, Chester (for the plaintiff, Thompson).
  &lt;/courtcase:counsel&gt;
  &lt;courtcase:counsel&gt;
    &lt;role&gt;Solicitor:&lt;/role&gt;
    &lt;person:counselor&gt;
      &lt;person:person&gt;
        &lt;person:name.text&gt;&lt;emph typestyle="it"&gt;Robbins, Olivey &amp;amp; Lake&lt;/emph&gt; 
        agents for &lt;emph typestyle="it"&gt;Wilding, Earley &amp;amp; Pegge&lt;/emph&gt;&lt;/person:name.text&gt;
      &lt;/person:person&gt;
    &lt;/person:counselor&gt;, Manchester (for the plaintiff, Dempster).
  &lt;/courtcase:counsel&gt;
  &lt;courtcase:counsel&gt;
    &lt;role&gt;Solicitor:&lt;/role&gt;
    &lt;person:counselor&gt;
      &lt;person:person&gt;
        &lt;person:name.text&gt;&lt;emph typestyle="it"&gt;Geo Thatcher &amp;amp; Son&lt;/emph&gt; 
        agents for &lt;emph typestyle="it"&gt;J Kerfoot-Roberts &amp;amp; Son&lt;/emph&gt;&lt;/person:name.text&gt;
      &lt;/person:person&gt;
    &lt;/person:counselor&gt;, Holywell (for the plaintiff, Jones).
  &lt;/courtcase:counsel&gt;
  &lt;courtcase:counsel&gt;
    &lt;role&gt;Solicitor:&lt;/role&gt;
    &lt;person:counselor&gt;
      &lt;person:person&gt;
        &lt;person:name.text&gt;&lt;emph typestyle="it"&gt;Berrymans&lt;/emph&gt; 
        agents for &lt;emph typestyle="it"&gt;Barrell &amp;amp; Co&lt;/emph&gt;&lt;/person:name.text&gt;
      &lt;/person:person&gt;
    &lt;/person:counselor&gt;, Liverpool (for the second defendants).
  &lt;/courtcase:counsel&gt;
  &lt;courtcase:counsel&gt;
    &lt;role&gt;Solicitor:&lt;/role&gt;
    &lt;person:counselor&gt;
      &lt;person:person&gt;
        &lt;person:name.text&gt;&lt;emph typestyle="it"&gt;Donald H Haslam&lt;/emph&gt;&lt;/person:name.text&gt;
      &lt;/person:person&gt;
    &lt;/person:counselor&gt; (for the third defendants).
  &lt;/courtcase:counsel&gt;
&lt;/courtcase:representation&gt;

        </codeblock>
    </example>
    <example>
      <title>Example 7: Showing multiple <sourcexml>case:constituent</sourcexml> elements.</title>
      <lines><b>SOURCE XML</b></lines>
      <codeblock>

&lt;case:constituents&gt;
  &lt;case:constituent&gt;
    &lt;person&gt;
      &lt;name.text&gt;&lt;emph typestyle="it"&gt;W S Wigglesworth&lt;/emph&gt; for the applicants.&lt;/name.text&gt;
    &lt;/person&gt;
  &lt;/case:constituent&gt;
  &lt;case:constituent&gt;
    &lt;person&gt;
      &lt;name.text&gt;&lt;emph typestyle="it"&gt;F G King&lt;/emph&gt; for the first, second and third
        respondents, the trustees of the settlement.&lt;/name.text&gt;
    &lt;/person&gt;
  &lt;/case:constituent&gt;
  &lt;case:constituent&gt;
    &lt;person&gt;
      &lt;name.text&gt;&lt;emph typestyle="it"&gt;R Gwyn Rees&lt;/emph&gt; for the fourth, fifth and seventh
        respondents, the infant beneficiaries; &lt;emph typestyle="it"&gt;J A Wolfe&lt;/emph&gt; for the sixth respondent.&lt;/name.text&gt;
    &lt;/person&gt;
  &lt;/case:constituent&gt;
&lt;/case:constituents&gt;

        </codeblock>
      <lines><b>TARGET XML</b></lines>
      <p>Note that the last <sourcexml>case:constituent</sourcexml> element contains a semi-colon and so is parsed into two separate <targetxml>courtcase:counsel</targetxml> elements with the missing period added as needed.</p>
      <codeblock>

&lt;courtcase:representation&gt;
  &lt;courtcase:counsel&gt;
    &lt;person:counselor&gt;
      &lt;person:person&gt;
        &lt;person:name.text&gt;&lt;emph typestyle="it"&gt;W S Wigglesworth&lt;/emph&gt;&lt;/person:name.text&gt;
      &lt;/person:person&gt;
    &lt;/person:counselor&gt; for the applicants.
  &lt;/courtcase:counsel&gt;
  &lt;courtcase:counsel&gt;
    &lt;person:counselor&gt;
      &lt;person:person&gt;
        &lt;person:name.text&gt;&lt;emph typestyle="it"&gt;F G King&lt;/emph&gt;&lt;/person:name.text&gt;
      &lt;/person:person&gt;
    &lt;/person:counselor&gt; for the first, second and third respondents, the trustees of the settlement.
  &lt;/courtcase:counsel&gt;
  &lt;courtcase:counsel&gt;
    &lt;person:counselor&gt;
      &lt;person:person&gt;
        &lt;person:name.text&gt;&lt;emph typestyle="it"&gt;R Gwyn Rees&lt;/emph&gt;&lt;/person:name.text&gt;
      &lt;/person:person&gt;
    &lt;/person:counselor&gt; for the fourth, fifth and seventh respondents, the infant beneficiaries.
  &lt;/courtcase:counsel&gt;
  &lt;courtcase:counsel&gt;
    &lt;person:counselor&gt;
      &lt;person:person&gt;
        &lt;person:name.text&gt;&lt;emph typestyle="it"&gt;J A Wolfe&lt;/emph&gt;&lt;/person:name.text&gt;
      &lt;/person:person&gt;
    &lt;/person:counselor&gt; for the sixth respondent.
  &lt;/courtcase:counsel&gt;
&lt;/courtcase:representation&gt;

        </codeblock>
    </example>
    <section>
      <title>Changes</title>
      <p>2016-06-17: <ph id="change_20160617_JCG">Added an instruction regarding parsing of
        <sourcexml>person/name.text</sourcexml> when it contains multiple child
        <sourcexml>emph</sourcexml> elements, and also added several clarifications regarding parsing the contents of <sourcexml>person/name.text</sourcexml>. These changes are related to resolution of issues arising from Rosetta delivered in March 2016.</ph></p>
      <p>2015-08-25: <ph id="change_20150825_JCG">Added a clarification regarding parsing of
            <sourcexml>person/name.text</sourcexml> when it contains a child
            <sourcexml>emph</sourcexml> element, and provided examples demonstrating this. (R4.5
          Content Issue List item #2381)</ph></p>
      <p>2015-08-24: <ph id="change_20150824_JCG">Added an instruction indicating a period should be
          added to <targetxml>courtcase:counsel</targetxml> if it doesn't end with one, and provided
          an example demonstrating this. Also added a comment clarifying that multiple
            <sourcexml>case:constituent</sourcexml> elements will each become one (or more) separate
            <targetxml>courtcase:counsel</targetxml> elements. Triggered by discovery of slightly
          differet format in documents provided as part of R4.5 Content Issue List item
        #2381.</ph></p>
      <p>2015-02-04: <ph id="change_20150204_JCG">Added this topic. (R4.5 Content Issue List item #2149)</ph></p>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK04_CourtOrder\case.judgments-case.constituents.dita  -->
	<!--<xsl:message>case.judgments-case.constituents.xsl requires manual development!</xsl:message> -->

  
  
	<xsl:template match="case:judgments/case:constituents">
	  <courtcase:representation>
				<xsl:apply-templates select="@* | node()"/>
			</courtcase:representation>
	</xsl:template>










  <xsl:template match="case:constituents/case:constituent">
    <xsl:choose>
      <xsl:when test="(count(descendant::emph)  > 1) and (person/name.text/text()[starts-with(normalize-space(.),'Solicitor:') or starts-with(normalize-space(.),'Solicitors:')] and person/name.text/text()[contains(normalize-space(.),';')] and person/name.text/text()[contains(normalize-space(.),'(')])">
       <xsl:apply-templates select="@*|node()"/>
      </xsl:when>
      <xsl:when test="person/name.text/text()[starts-with(normalize-space(.),'Solicitor:') or starts-with(normalize-space(.),'Solicitors:')] and person/name.text/text()[contains(normalize-space(.),';')] and person/name.text/text()[contains(normalize-space(.),'(')]">
        <courtcase:counsel>
          <xsl:apply-templates select="@*|node()"/>
          </courtcase:counsel>
      </xsl:when>
      <xsl:otherwise>
        <courtcase:counsel>
          <xsl:apply-templates select="person/name.text/text()" mode='role'/>
          <xsl:apply-templates select="@*|node()"/>
        </courtcase:counsel>
      </xsl:otherwise>
    </xsl:choose>
    
  </xsl:template>
  
  <xsl:template match="case:constituent/person">
    <xsl:choose>
      <xsl:when test="(count(descendant::emph)  > 1) and (name.text/text()[starts-with(normalize-space(.),'Solicitor:') or starts-with(normalize-space(.),'Solicitors:')] and name.text/text()[contains(normalize-space(.),';')] and name.text/text()[contains(normalize-space(.),'(')])">
        <xsl:apply-templates select="@*|node()"/>
      </xsl:when>
    <xsl:otherwise>
      <person:counselor>
        <person:person>
          <xsl:apply-templates select="@*|node()"/>
        </person:person>
      </person:counselor>
      <xsl:apply-templates select="name.text/text()" mode="conselor"/>
    </xsl:otherwise>
    </xsl:choose>
  </xsl:template>
  
  <xsl:template match="person/name.text/text()" mode='role'>
    
    <xsl:choose>
      <xsl:when test="starts-with(normalize-space(.),'Solicitor:')">
        <role>
          <xsl:text>Solicitor:</xsl:text>
        </role>
      </xsl:when>
      <xsl:when test="starts-with(normalize-space(.),'Solicitors:')">
        <role>
          <xsl:text>Solicitor:</xsl:text>
        </role>
      </xsl:when>
    </xsl:choose>
  </xsl:template>
  
  <!--<xsl:template match="case:constituent/person/name.text/text()">
    <xsl:choose>
      <xsl:when test="starts-with(normalize-space(.),'Solicitor:') or starts-with(normalize-space(.),'Solicitors:') and not(contains(.,';')) and contains(.,'(')">
        <person:name.text>
          <xsl:variable name="solicitor" select="substring-after(.,'Solicitor:')"/>
          <xsl:variable name="solicitors" select="substring-after(.,'Solicitors:')"/>
        <xsl:value-of select="substring-before($solicitor,'(')"/>
          <xsl:value-of select="substring-before($solicitors,'(')"/>
        </person:name.text>
      </xsl:when>
      <xsl:when test="starts-with(normalize-space(.),'Solicitor:') or starts-with(normalize-space(.),'Solicitors:') and contains(.,';') and contains(.,'(')">
        <xsl:for-each select="tokenize(.,'.;')">
          <courtcase:counsel>
            <role>
              <xsl:choose>
                <xsl:when test="starts-with(.,'Solicitor:')">
                  <xsl:text>Solicitor:</xsl:text>
                </xsl:when>
                <xsl:when test="starts-with(.,'Solicitors:')">
                  <xsl:text>Solicitors:</xsl:text>
                </xsl:when>
              </xsl:choose>
            </role>
            <person:counselor>
              <person:person>
                <person:name.text>
                  <xsl:choose>
                    <xsl:when test="contains(normalize-space(.),'Solicitor:') or contains(normalize-space(.),'Solicitors:')">
                      <xsl:variable name="solicitor" select="substring-after(.,'Solicitor:')"/>
                      <xsl:variable name="solicitors" select="substring-after(.,'Solicitors:')"/>
                      <xsl:value-of select="substring-before($solicitor,'(')"/>
                      <xsl:value-of select="substring-before($solicitors,'(')"/>
                    </xsl:when>
                    <xsl:otherwise>
                      <xsl:value-of select="substring-before(.,'(')"/>
                    </xsl:otherwise>
                  </xsl:choose>
                </person:name.text>
              </person:person>
            </person:counselor>
            <xsl:choose>
              <xsl:when test="contains(normalize-space(.),'Solicitor:') or contains(normalize-space(.),'Solicitors:')">
                <xsl:variable name="solicitor" select="substring-after(.,'Solicitor:')"/>
                <xsl:variable name="solicitors" select="substring-after(.,'Solicitors:')"/>
                <xsl:value-of select="substring-after($solicitor,'(')"/>
                <xsl:value-of select="substring-after($solicitors,'(')"/>
              </xsl:when>
              <xsl:otherwise>
                <xsl:value-of select="concat('(',substring-after(.,'('))"/>
              </xsl:otherwise>
            </xsl:choose>
          </courtcase:counsel>
        </xsl:for-each>
      </xsl:when>
      <xsl:when test="starts-with(normalize-space(.),'Solicitor:') or starts-with(normalize-space(.),'Solicitors:') and not(contains(.,';') or contains(.,'('))">
        
          <xsl:value-of select="substring-after(.,'Solicitor:')"/>
          <xsl:value-of select="substring-after(.,'Solicitors:')"/>
        
      </xsl:when>
      <xsl:otherwise>
       
        
        
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>
  -->
  <xsl:template match="case:constituent/person/name.text">
    <xsl:choose>
      <xsl:when test="(count(descendant::emph)  > 1) and (text()[starts-with(normalize-space(.),'Solicitor:') or starts-with(normalize-space(.),'Solicitors:')] and text()[contains(normalize-space(.),';')] and text()[contains(normalize-space(.),'(')])">
        <xsl:apply-templates select="*"/>
      </xsl:when>
      <xsl:otherwise>
        <person:name.text>
          <xsl:apply-templates select="@*|node()"/>
        </person:name.text>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>
  
  <xsl:template match="person/name.text/text()" mode="conselor">
    <xsl:choose>
      <xsl:when test="starts-with(normalize-space(.),'Solicitor:') or starts-with(normalize-space(.),'Solicitors:') and not(contains(.,';')) and contains(.,'(')">
          <xsl:variable name="solicitor" select="substring-after(.,'Solicitor:')"/>
          <xsl:variable name="solicitors" select="substring-after(.,'Solicitors:')"/>
          <xsl:value-of select="concat('(',substring-after($solicitor,'('))"/>
          <xsl:value-of select="concat('(',substring-after($solicitors,'('))"/>
      </xsl:when>
    </xsl:choose>
  </xsl:template>
  
  
  <xsl:template match="case:constituents/case:constituent/person/name.text/emph">
    <xsl:choose>

      <xsl:when test="parent::name.text/text()[starts-with(normalize-space(.),'Solicitor:') or starts-with(normalize-space(.),'Solicitors:')] and parent::name.text/text()[contains(normalize-space(.),';')] and parent::name.text/text()[contains(normalize-space(.),'(')]">
        <xsl:choose>
          
        
        <xsl:when test="following-sibling::emph">
        <courtcase:counsel>
          <role>
            <xsl:text>Solicitor:</xsl:text>
            </role>
          <person:counselor>
            <person:person>
              <person:name.text>
                <emph typestyle="it">
                  <xsl:value-of select="."/>
                </emph>
              </person:name.text>
            </person:person>
          </person:counselor>
          <xsl:value-of select="replace(parent::name.text/text()[2],';','')"/>
        </courtcase:counsel>
      </xsl:when>
      <xsl:when test="preceding-sibling::emph">
        <courtcase:counsel>
          <role><xsl:text>Solicitor:</xsl:text></role>
          <person:counselor>
            <person:person>
              <person:name.text>
                <emph typestyle="it">
                  <xsl:value-of select="."/>
                </emph>
              </person:name.text>
            </person:person>
          </person:counselor>
          <xsl:value-of select="parent::name.text/text()[3]"/>
        </courtcase:counsel>
      </xsl:when>
        </xsl:choose>
      </xsl:when>
        <xsl:otherwise>
        <emph typestyle="it">
          <xsl:value-of select="."/>
        </emph>
      </xsl:otherwise>
    </xsl:choose>
    
  </xsl:template>
</xsl:stylesheet>