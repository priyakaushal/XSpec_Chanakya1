<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
  xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:source_dict="http://www.lexis-nexis.com/glp/dict" 
  xmlns:in="http://www.lexis-nexis.com/glp/in" xmlns:dict="urn:x-lexisnexis:content:dict:sharedservices:1"
  xmlns:lnf="urn:x-lexisnexis:conversion:global:functions:1"
  xmlns:index="urn:x-lexisnexis:content:publicationindex:sharedservices:1" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" xmlns:tei="http://www.tei-c.org/ns/1.0/" 
  version="2.0" exclude-result-prefixes="#all">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="dictionary-Body">
  <title>Body <lnpid>id-UK10-29218</lnpid></title>
  <shortdesc>All of the following are descendants of <targetxml>dict:body</targetxml>. Handle in
    document order unless specifically stated otherwise. Refer to General Markup Section for
    handling of children (including mixed content).</shortdesc>
  <body>
    <section>
      <title>dict:body</title>
      <p><sourcexml>dict:body</sourcexml> becomes <targetxml>dict:body</targetxml>.</p>
      <p><sourcexml>dict:term-entry</sourcexml> becomes <targetxml>dict:defitem</targetxml>.</p>
      <p><sourcexml>defterm</sourcexml> becomes <targetxml>tei:form/tei:orth[@norm]</targetxml>. The
        value of <targetxml>@norm</targetxml> should be the value of <sourcexml>defterm</sourcexml>
        with space normalized, punctutation removed, and converted to
            lower-case.<note><targetxml>tei:form/tei:orth</targetxml> will be a child of
            <targetxml>tei:entry</targetxml> or <targetxml>tei:superEntry</targetxml>, as explained
          below in rules for <sourcexml>dict:definition</sourcexml>.</note></p>
      <p><sourcexml>dict:definition</sourcexml> is a container that does not directly convert.
        Conversion is based on content as follows:<ul>
          <li><b>narrative elements only, e.g. <sourcexml>h, p, l</sourcexml> (no
                <sourcexml>dict:subtopic</sourcexml>).</b> Create one
              <targetxml>tei:entry/tei:def/pgrp</targetxml> wrapper to hold narrative elements.
            Place <targetxml>tei:form/tei:orth</targetxml> as 1st child of
              <targetxml>tei:entry</targetxml>.</li>
          <li><b>one <sourcexml>dict:subtopic</sourcexml> only (no narrative siblings).</b>
            <sourcexml>dict:subtopic</sourcexml> becomes <targetxml>tei:entry</targetxml>
            (conversion described in detail below). Place <targetxml>tei:form/tei:orth</targetxml>
            as 1st child of <targetxml>tei:entry</targetxml>.</li>
          <li><b>narrative elements and one/more <sourcexml>dict:subtopic</sourcexml>.</b> Create
              <targetxml>tei:superEntry</targetxml> and place
              <targetxml>tei:form/tei:orth</targetxml> as 1st child. Create one
              <targetxml>tei:entry/tei:def/pgrp</targetxml> wrapper to hold narrative elements. Each
              <sourcexml>dict:subtopic</sourcexml> becomes sibling <targetxml>tei:entry</targetxml>
            (conversion described in detail below).</li>
          <li><b>two/more <sourcexml>dict:subtopic</sourcexml> only (no narrative siblings).</b>
            Create <targetxml>tei:superEntry</targetxml> and place
              <targetxml>tei:form/tei:orth</targetxml> as 1st child. Each
              <sourcexml>dict:subtopic</sourcexml> becomes <targetxml>tei:entry</targetxml>
            (conversion described in detail below).<ul>
              <li>Do not include the <targetxml>tei:entry</targetxml> element in the output file if
                it will only consist of empty child elements, or if the only child element that
                contains content is <targetxml>tei:usg</targetxml>.</li>
            </ul></li>
        </ul><note>The above rules accommodate significant differences in the two dpsi constituting
          this stream. Documents in dpsi 0KBL, "Legal Terms Navigator", are generally more
          standardized with all content occurring within <sourcexml>dict:subtopic</sourcexml>.
          Documents in dpsi 0KMN, "Words and Phrases Legally Defined", are generally more varied and
          may include a set of narrative elements which may be followed by
            <sourcexml>dict:subtopic</sourcexml>.</note></p>
      <p><sourcexml>dict:subtopic[@id]</sourcexml> becomes <targetxml>tei:entry[@type]</targetxml>.
        The attribute is optional. Children convert as follows:<ul>
          <li><sourcexml>dict:topicname</sourcexml> converts depending on content (pcdata), as follows:<ul>
              <li>If <sourcexml>dict:topicname</sourcexml> begins with "See" or "See also" (without
                quotes) then <sourcexml>dict:topicname</sourcexml> becomes
                  <targetxml>tei:re</targetxml> with <targetxml>@type</targetxml> set to
                  <targetxml>"see"</targetxml> or <targetxml>"see-also"</targetxml>. Note that
                pcdata is usually wrapped in <sourcexml>emph</sourcexml>.</li>
              <li>Otherwise <sourcexml>dict:topicname</sourcexml> becomes
                  <targetxml>tei:usg</targetxml>. Set <targetxml>tei:usg[@type]</targetxml> to the
                text from <sourcexml>dict:topicname</sourcexml> (convert to lower-case and apply
                constraints for XML Name datatype; suppress characters not allowed in Name datatype,
                e.g. suppress apostrophe).</li>
              <li>Exceptional case: If <sourcexml>dict:subtopic</sourcexml> contains ONLY
                  <sourcexml>dict:topicname</sourcexml> and is immediately followed by another
                  <sourcexml>dict:subtopic</sourcexml> then create only one
                  <targetxml>tei:entry</targetxml> for the two <sourcexml>dict:subtopic</sourcexml>.
                In this scenario, the 1st <sourcexml>dict:subtopic</sourcexml> contains usage
                (becomes <targetxml>tei:usg</targetxml>) and the 2nd contains reference and
                sometimes definition (<targetxml>tei:re</targetxml> and
                  <targetxml>tei:def</targetxml>) and all components become a single
                  <targetxml>tei:entry</targetxml>. Do not apply this rule beyond two
                  <sourcexml>dict:subtopic</sourcexml>; i.e. if <sourcexml>dict:subtopic</sourcexml>
                with ONLY <sourcexml>dict:topicname</sourcexml> is followed by another with ONLY
                  <sourcexml>dict:topicname</sourcexml> then those two become one
                  <targetxml>tei:entry</targetxml>; and the next
                  <sourcexml>dict:subtopic</sourcexml> becomes a new
                  <targetxml>tei:entry</targetxml>.</li>
            </ul></li>
          <li><sourcexml>dict:note</sourcexml> becomes
            <targetxml>note/bodytext/p/text</targetxml>.</li>
          <li><sourcexml>dict:short-definition</sourcexml> becomes
              <targetxml>tei:def[@label="short-definition"]/pgrp</targetxml>.</li>
          <li><sourcexml>dict:detailed-definition</sourcexml> becomes
              <targetxml>tei:def[@label="detailed-definition"]/pgrp</targetxml>.</li>
          <li><sourcexml>dict:equivalent-term</sourcexml> becomes
              <targetxml>tei:usg[@type="equivalent-term"]</targetxml>.</li>
          <li><sourcexml>see-also</sourcexml> becomes
              <targetxml>tei:re[@type="see-also"]</targetxml>.</li>
          <li>Create one <targetxml>tei:def/pgrp</targetxml> wrapper to hold narrative elements
            (those described in the General Markup section, e.g. <sourcexml>h, p,
            l</sourcexml>).</li>
          <li><sourcexml>index</sourcexml> becomes
              <targetxml>tei:sense/pgrp/section/index:index</targetxml>.<ul id="ul_pxr_wgf_ci">
              <li>Set <targetxml>@indextype="topical"</targetxml>.</li>
              <li><sourcexml>@id</sourcexml> becomes <targetxml>@xml:id</targetxml></li>
              <li><sourcexml>in:lev1</sourcexml>, <sourcexml>in:lev2</sourcexml>,
                  <sourcexml>in:lev3</sourcexml>, <sourcexml>in:lev4</sourcexml>,
                  <sourcexml>in:lev5</sourcexml>, or <sourcexml>in:lev6</sourcexml> becomes
                  <targetxml>index:item</targetxml>.<ul id="ul_prf_eif_ci">
                  <li><sourcexml>in:entry</sourcexml> becomes <targetxml>index:entry</targetxml><ul id="ul_hie_iif_ci">
                      <li><sourcexml>in:entry-text</sourcexml> becomes
                          <targetxml>index:entrytext</targetxml></li>
                      <li><sourcexml>in:index-ref/refpt</sourcexml> becomes
                          <targetxml>index:item/ref:anchor</targetxml>. That is, suppress
                          <sourcexml>in:index-ref</sourcexml> wrapper and move
                          <targetxml>ref:anchor</targetxml> to be 1st child of
                          <targetxml>index:item</targetxml>. Follow common rules for mapping
                          <sourcexml>refpt</sourcexml> to <targetxml>ref:anchor</targetxml>, as
                        described in General Markup section.<note>There are known instances of
                          duplicate <sourcexml>@id</sourcexml> values in
                            <sourcexml>in:index-ref/refpt[@id]</sourcexml>. UK LBU is checking. In
                          the meantime, please comment out or suppress duplicates, whichever is
                          usual practice.</note></li>
                    </ul></li>
                </ul></li>
            </ul></li>
        </ul></p>
    </section>
    <example>
      <title>Example 1. Source. narrative elements, zero
        <sourcexml>dict:subtopic</sourcexml></title>
      <codeblock>

&lt;dict:body&gt;
  &lt;dict:term-entry&gt;
    &lt;defterm&gt;
      &lt;refpt id="0KMN_2_A_ABANDON:HTDICT-TERM" type="ext"/&gt;
      &lt;emph typestyle="bf"&gt;Abandon&lt;/emph&gt;
    &lt;/defterm&gt;
    &lt;dict:definition&gt;
      &lt;p&gt;
        &lt;text&gt;'Whatever be the distinction ...&lt;/text&gt;
      &lt;/p&gt;
      &lt;h&gt;
        &lt;emph typestyle="bf"&gt;Australia&lt;/emph&gt;
      &lt;/h&gt;
      &lt;p&gt;
        &lt;text&gt;'In my opinion the words ...&lt;/text&gt;
      &lt;/p&gt;
    &lt;/dict:definition&gt;
  &lt;/dict:term-entry&gt;
&lt;/dict:body&gt;

	</codeblock>
    </example>
    <example>
      <title>Example 1. Target. narrative elements, zero
        <sourcexml>dict:subtopic</sourcexml></title>
      <codeblock>

&lt;dict:body&gt;
  &lt;dict:defitem&gt;
    &lt;tei:entry&gt;
      &lt;tei:form&gt;
        &lt;tei:orth norm="abandon"&gt;
          &lt;ref:anchor id="_0KMN_2_A_ABANDON_HTDICT-TERM" anchortype="global"/&gt;
          &lt;emph typestyle="bf"&gt;Abandon&lt;/emph&gt;
        &lt;/tei:orth&gt;
      &lt;/tei:form&gt;
      &lt;tei:def&gt;
        &lt;pgrp&gt;
          &lt;p&gt;
            &lt;text&gt;'Whatever be the distinction ...&lt;/text&gt;
          &lt;/p&gt;
          &lt;h&gt;
            &lt;emph typestyle="bf"&gt;Australia&lt;/emph&gt;
          &lt;/h&gt;
          &lt;p&gt;
            &lt;text&gt;'In my opinion the words ...&lt;/text&gt;
          &lt;/p&gt;
        &lt;/pgrp&gt;
      &lt;/tei:def&gt;
    &lt;/tei:entry&gt;
  &lt;/dict:defitem&gt;
&lt;/dict:body&gt;

	</codeblock>
    </example>
    <example>
      <title>Example 2. Source. one <sourcexml>dict:subtopic</sourcexml>, no narrative
        siblings</title>
      <codeblock>

&lt;dict:body&gt;
  &lt;dict:term-entry&gt;
    &lt;defterm&gt;Ordinary legislative procedure (EU)&lt;/defterm&gt;
    &lt;dict:definition&gt;
      &lt;dict:subtopic id="DEF"&gt;
        &lt;dict:topicname&gt;Definition&lt;/dict:topicname&gt;
        &lt;dict:short-definition&gt;
          &lt;p&gt;
            &lt;text&gt;This is the commonly used law ...&lt;/text&gt;
          &lt;/p&gt;
        &lt;/dict:short-definition&gt;
        &lt;dict:detailed-definition&gt;
          &lt;p&gt;
            &lt;text&gt;The ordinary procedure is ... as follows:&lt;/text&gt;
          &lt;/p&gt;
          &lt;l&gt;
            &lt;li&gt;
              &lt;p&gt;
                &lt;text&gt;The Commission submits ...&lt;/text&gt;
              &lt;/p&gt;
            &lt;/li&gt;
            &lt;li&gt;
              &lt;p&gt;
                &lt;text&gt;If the Council rejects ...&lt;/text&gt;
              &lt;/p&gt;
            &lt;/li&gt;
          &lt;/l&gt;
        &lt;/dict:detailed-definition&gt;
        &lt;dict:equivalent-term&gt;Also known as ...&lt;/dict:equivalent-term&gt;
        &lt;p&gt;
          &lt;remotelink service="DOC-ID" remotekey1="REFPTID" dpsi="0KMN" docidref="1234"
              refpt="0KMN_2_o_ordinary_legislative_procedure_eu:HTDICT-TERM"&gt;Get a full
              definition of Ordinary legislative procedure (EU)&lt;/remotelink&gt;
        &lt;/p&gt;
      &lt;/dict:subtopic&gt;
    &lt;/dict:definition&gt;
  &lt;/dict:term-entry&gt;
&lt;/dict:body&gt;

	</codeblock>
    </example>
    <example>
      <title>Example 2. Target. one <sourcexml>dict:subtopic</sourcexml>, no narrative
        siblings</title>
      <codeblock>

&lt;dict:body&gt;
  &lt;dict:defitem&gt;
    &lt;tei:entry type="DEF"&gt;
      &lt;tei:form&gt;
        &lt;tei:orth norm="ordinary legislative procedure eu"&gt;Ordinary legislative
            procedure (EU)&lt;/tei:orth&gt;
      &lt;/tei:form&gt;
      &lt;tei:usg type="definition"&gt;Definition&lt;/tei:usg&gt;
      &lt;tei:def label="short-definition"&gt;
        &lt;pgrp&gt;
          &lt;p&gt;
            &lt;text&gt;This is the commonly used law ...&lt;/text&gt;
          &lt;/p&gt;
        &lt;/pgrp&gt;
      &lt;/tei:def&gt;
      &lt;tei:def label="detailed-definition"&gt;
        &lt;pgrp&gt;
          &lt;p&gt;
            &lt;text&gt;The ordinary procedure is ... as follows:&lt;/text&gt;
          &lt;/p&gt;
          &lt;list&gt;
            &lt;listitem&gt;
              &lt;bodytext&gt;
                &lt;p&gt;
                  &lt;text&gt;The Commission submits ...&lt;/text&gt;
                &lt;/p&gt;
              &lt;/bodytext&gt;
            &lt;/listitem&gt;
            &lt;listitem&gt;
              &lt;bodytext&gt;
                &lt;p&gt;
                  &lt;text&gt;If the Council rejects ...&lt;/text&gt;
                &lt;/p&gt;
              &lt;/bodytext&gt;
            &lt;/listitem&gt;
          &lt;/list&gt;
        &lt;/pgrp&gt;
      &lt;/tei:def&gt;
      &lt;tei:usg type="equivalent-term"&gt;Also known as ...&lt;/tei:usg&gt;
      &lt;tei:def&gt;
        &lt;pgrp&gt;
          &lt;p&gt;
            &lt;text&gt;
              &lt;ref:crossreference crossreferencetype="seeAlso"&gt;
                &lt;ref:content&gt;Get a full definition of Ordinary legislative
                    procedure (EU)&lt;/ref:content&gt;
                &lt;ref:locator
                    anchoridref="_0KMN_2_o_ordinary_legislative_procedure_eu_HTDICT-TERM"&gt;
                   &lt;ref:locator-key&gt;
                     &lt;ref:key-name name="DOC-ID"/&gt;
                     &lt;ref:key-value value="0KMN-1234"/&gt;
                   &lt;/ref:locator-key&gt;
                &lt;/ref:locator&gt;
              &lt;/ref:crossreference&gt;
            &lt;/text&gt;
          &lt;/p&gt;
        &lt;/pgrp&gt;
      &lt;/tei:def&gt;
    &lt;/tei:entry&gt;
  &lt;/dict:defitem&gt;
&lt;/dict:body&gt;

	</codeblock>
    </example>
    <example>
      <title>Example 3. Source. narrative plus sibling <sourcexml>dict:subtopic</sourcexml></title>
      <codeblock>

&lt;dict:body&gt;
  &lt;dict:term-entry&gt;
    &lt;defterm&gt;
      &lt;refpt id="0KMN_2_A_ACCESS:HTDICT-TERM" type="ext"/&gt;
      &lt;emph typestyle="bf"&gt;Access&lt;/emph&gt;
    &lt;/defterm&gt;
    &lt;dict:definition&gt;
      &lt;p&gt;
        &lt;text&gt;'[11] Section 173(1)...&lt;/text&gt;
      &lt;/p&gt;
      &lt;p&gt;
        &lt;text&gt;'[12] Parliament has also ...&lt;/text&gt;
      &lt;/p&gt;
      &lt;dict:subtopic&gt;
        &lt;dict:topicname&gt;
          &lt;emph typestyle="it"&gt;Means of access&lt;/emph&gt;
        &lt;/dict:topicname&gt;
        &lt;see-also&gt;Right of entry&lt;/see-also&gt;
        &lt;p&gt;
          &lt;text&gt;'Means of access' includes ...&lt;/text&gt;
        &lt;/p&gt;
      &lt;/dict:subtopic&gt;
      &lt;dict:subtopic&gt;
        &lt;dict:topicname&gt;
          &lt;emph typestyle="it"&gt;To computer data&lt;/emph&gt;
        &lt;/dict:topicname&gt;
        &lt;p&gt;
          &lt;text&gt;A person secures access ...&lt;/text&gt;
        &lt;/p&gt;
        &lt;l&gt;
          &lt;li&gt;
            &lt;lilabel&gt;(a)&lt;/lilabel&gt;
            &lt;p&gt;
              &lt;text&gt;alters or erases ...&lt;/text&gt;
            &lt;/p&gt;
          &lt;/li&gt;
          &lt;li&gt;
            &lt;lilabel&gt;(b)&lt;/lilabel&gt;
            &lt;p&gt;
              &lt;text&gt;copies or moves ...&lt;/text&gt;
            &lt;/p&gt;
          &lt;/li&gt;
        &lt;/l&gt;
      &lt;/dict:subtopic&gt;
    &lt;/dict:definition&gt;
  &lt;/dict:term-entry&gt;
&lt;/dict:body&gt;

	</codeblock>
    </example>
    <example>
      <title>Example 3. Target. narrative plus sibling <sourcexml>dict:subtopic</sourcexml></title>
      <codeblock>

&lt;dict:body&gt;
  &lt;dict:defitem&gt;
    &lt;tei:superEntry&gt;
      &lt;tei:form&gt;
        &lt;tei:orth norm="access"&gt;
          &lt;ref:anchor id="_0KMN_2_A_ACCESS_HTDICT-TERM" anchortype="global"/&gt;
          &lt;emph typestyle="bf"&gt;Access&lt;/emph&gt;
        &lt;/tei:orth&gt;
      &lt;/tei:form&gt;
      &lt;tei:entry&gt;
        &lt;tei:def&gt;
          &lt;pgrp&gt;
            &lt;p&gt;
              &lt;text&gt;'[11] Section 173(1)...&lt;/text&gt;
            &lt;/p&gt;
            &lt;p&gt;
              &lt;text&gt;'[12] Parliament has also ...&lt;/text&gt;
            &lt;/p&gt;
          &lt;/pgrp&gt;
        &lt;/tei:def&gt;
      &lt;/tei:entry&gt;
      &lt;tei:entry&gt;
        &lt;tei:usg type="meansofaccess"&gt;
          &lt;emph typestyle="it"&gt;Means of access&lt;/emph&gt;
        &lt;/tei:usg&gt;
        &lt;tei:re type="see-also"&gt;Right of entry&lt;/tei:re&gt;
        &lt;tei:def&gt;
          &lt;pgrp&gt;
            &lt;p&gt;
              &lt;text&gt;'Means of access' includes ...&lt;/text&gt;
            &lt;/p&gt;
          &lt;/pgrp&gt;
        &lt;/tei:def&gt;
      &lt;/tei:entry&gt;
      &lt;tei:entry&gt;
        &lt;tei:usg type="tocomputerdata"&gt;
          &lt;emph typestyle="it"&gt;To computer data&lt;/emph&gt;
        &lt;/tei:usg&gt;
        &lt;tei:def&gt;
          &lt;pgrp&gt;
            &lt;p&gt;
              &lt;text&gt;A person secures access ...&lt;/text&gt;
            &lt;/p&gt;
            &lt;list&gt;
              &lt;listitem&gt;
                &lt;label&gt;(a)&lt;/label&gt;
                &lt;bodytext&gt;
                  &lt;p&gt;
                    &lt;text&gt;alters or erases ...&lt;/text&gt;
                  &lt;/p&gt;
                &lt;/bodytext&gt;
              &lt;/listitem&gt;
              &lt;listitem&gt;
                &lt;label&gt;(b)&lt;/label&gt;
                &lt;bodytext&gt;
                  &lt;p&gt;
                    &lt;text&gt;copies or moves ...&lt;/text&gt;
                  &lt;/p&gt;
                &lt;/bodytext&gt;
              &lt;/listitem&gt;
            &lt;/list&gt;
          &lt;/pgrp&gt;
        &lt;/tei:def&gt;
      &lt;/tei:entry&gt;
    &lt;/tei:superEntry&gt;
  &lt;/dict:defitem&gt;
&lt;/dict:body&gt;

	</codeblock>
    </example>
    <example>
      <title>Example 4. Source. multiple <sourcexml>dict:subtopic</sourcexml>, no narrative
        siblings</title>
      <p>(also includes example of <sourcexml>dict:subtopic</sourcexml> containing only
          <sourcexml>dict:topicname</sourcexml>)</p>
      <codeblock>

&lt;dict:body&gt;
  &lt;dict:term-entry&gt;
    &lt;defterm&gt;
      &lt;refpt id="0KMN_2_A_ACCIDENT:HTDICT-TERM" type="ext"/&gt;
      &lt;emph typestyle="bf"&gt;Accident&lt;/emph&gt;
    &lt;/defterm&gt;
    &lt;dict:definition&gt;
      &lt;dict:subtopic&gt;
        &lt;dict:topicname&gt;
          &lt;emph typestyle="it"&gt;See also &lt;emph typestyle="smcaps"&gt;&lt;remotelink
                  service="DOC-ID" remotekey1="REFPTID"
                  refpt="0KMN_2_I_INEVITABLE_ACCIDENT:HTDICT-TERM" dpsi="0KMN"
                  &gt;inevitable accident&lt;/remotelink&gt;&lt;/emph&gt;&lt;/emph&gt;
        &lt;/dict:topicname&gt;
        &lt;p&gt;
          &lt;text&gt;'The word “accident” may ...&lt;/text&gt;
        &lt;/p&gt;
        &lt;h&gt;
          &lt;emph typestyle="bf"&gt;Canada&lt;/emph&gt;
        &lt;/h&gt;
        &lt;p&gt;
          &lt;text&gt;45. Lombard disagrees. Lombard argues ...&lt;/text&gt;
        &lt;/p&gt;
      &lt;/dict:subtopic&gt;
      &lt;dict:subtopic&gt;
        &lt;dict:topicname&gt;
          &lt;emph typestyle="it"&gt;Air accident&lt;/emph&gt;
        &lt;/dict:topicname&gt;
        &lt;dict:note&gt;Selected by ...&lt;/dict:note&gt;
        &lt;p&gt;
          &lt;text&gt;[Under the Warsaw Convention ...&lt;/text&gt;
        &lt;/p&gt;
        &lt;p&gt;
          &lt;text&gt;'&lt;emph typestyle="bf"&gt;[13] &lt;/emph&gt;The same word ...&lt;/text&gt;
        &lt;/p&gt;
      &lt;/dict:subtopic&gt;
      &lt;dict:subtopic&gt;
        &lt;dict:topicname&gt;
          &lt;emph typestyle="it"&gt;In charterparty&lt;/emph&gt;
        &lt;/dict:topicname&gt;
      &lt;/dict:subtopic&gt;
      &lt;dict:subtopic&gt;
        &lt;dict:topicname&gt;
          &lt;emph typestyle="it"&gt;See also &lt;emph typestyle="smcaps"&gt;&lt;remotelink
                      service="DOC-ID" remotekey1="REFPTID"
                      refpt="0KMN_2_D_DANGER:HTDICT-TERM" dpsi="0KMN"
                      &gt;danger&lt;/remotelink&gt;&lt;/emph&gt;&lt;/emph&gt;
        &lt;/dict:topicname&gt;
        &lt;p&gt;
          &lt;text&gt;[A charterparty provided ...&lt;/text&gt;
        &lt;/p&gt;
      &lt;/dict:subtopic&gt;
      &lt;dict:subtopic&gt;
        &lt;dict:topicname&gt;
          &lt;emph typestyle="it"&gt;External cause&lt;/emph&gt;
        &lt;/dict:topicname&gt;
      &lt;/dict:subtopic&gt;
      &lt;dict:subtopic&gt;
        &lt;dict:topicname&gt;
          &lt;emph typestyle="it"&gt;See &lt;emph typestyle="smcaps"&gt;&lt;remotelink
                      service="DOC-ID" remotekey1="REFPTID"
                      refpt="0KMN_2_C_CAUSE:HTDICT-TERM" dpsi="0KMN"
                      &gt;cause&lt;/remotelink&gt;&lt;/emph&gt;&lt;/emph&gt;
        &lt;/dict:topicname&gt;
      &lt;/dict:subtopic&gt;
      &lt;dict:subtopic&gt;
        &lt;dict:topicname&gt;
          &lt;emph typestyle="it"&gt;External injury&lt;/emph&gt;
        &lt;/dict:topicname&gt;
        &lt;p&gt;
          &lt;text&gt;[A policy of insurance ...&lt;/text&gt;
        &lt;/p&gt;
      &lt;/dict:subtopic&gt;
    &lt;/dict:definition&gt;
  &lt;/dict:term-entry&gt;
&lt;/dict:body&gt;

	</codeblock>
    </example>
    <example>
      <title>Example 4. Target. multiple <sourcexml>dict:subtopic</sourcexml>, no narrative
        siblings</title>
      <p>(also includes example of <sourcexml>dict:subtopic</sourcexml> containing only
          <sourcexml>dict:topicname</sourcexml>)</p>
      <codeblock>

&lt;dict:body&gt;
  &lt;dict:defitem&gt;
    &lt;tei:superEntry&gt;
      &lt;tei:form&gt;
        &lt;tei:orth norm="accident"&gt;
          &lt;ref:anchor id="_0KMN_2_A_ACCIDENT_HTDICT-TERM" anchortype="global"/&gt;
          &lt;emph typestyle="bf"&gt;Accident&lt;/emph&gt;
        &lt;/tei:orth&gt;
      &lt;/tei:form&gt;
      &lt;tei:entry&gt;
        &lt;tei:re type="see-also"&gt;
          &lt;emph typestyle="it"&gt;See also &lt;emph typestyle="smcaps"&gt;&lt;ref:crossreference
                   crossreferencetype="seeAlso"&gt;&lt;ref:content&gt;inevitable
                       accident&lt;/ref:content&gt;&lt;ref:locator
                       anchoridref="_0KMN_2_I_INEVITABLE_ACCIDENT_HTDICT-TERM"&gt;
                            &lt;ref:locator-key&gt;&lt;ref:key-name name="DOC-ID"/&gt;
                            &lt;ref:key-value value="0KMN-"/&gt;&lt;/ref:locator-key&gt;
                       &lt;/ref:locator&gt;&lt;/ref:crossreference&gt;&lt;/emph&gt;&lt;/emph&gt;
        &lt;/tei:re&gt;
        &lt;tei:def&gt;
          &lt;pgrp&gt;
            &lt;p&gt;
              &lt;text&gt;'The word “accident” may ...&lt;/text&gt;
            &lt;/p&gt;
            &lt;h&gt;
              &lt;emph typestyle="bf"&gt;Canada&lt;/emph&gt;
            &lt;/h&gt;
            &lt;p&gt;
              &lt;text&gt;45. Lombard disagrees. Lombard argues ...&lt;/text&gt;
            &lt;/p&gt;
          &lt;/pgrp&gt;
        &lt;/tei:def&gt;
      &lt;/tei:entry&gt;
      &lt;tei:entry&gt;
        &lt;tei:usg type="airaccident"&gt;
          &lt;emph typestyle="it"&gt;Air accident&lt;/emph&gt;
        &lt;/tei:usg&gt;
        &lt;note&gt;
          &lt;bodytext&gt;
            &lt;p&gt;
              &lt;text&gt;Selected by ...&lt;/text&gt;
            &lt;/p&gt;
          &lt;/bodytext&gt;
        &lt;/note&gt;
        &lt;tei:def&gt;
          &lt;pgrp&gt;
            &lt;p&gt;
              &lt;text&gt;[Under the Warsaw Convention ...&lt;/text&gt;
            &lt;/p&gt;
            &lt;p&gt;
              &lt;text&gt;'&lt;emph typestyle="bf"&gt;[13] &lt;/emph&gt;The same word ...&lt;/text&gt;
            &lt;/p&gt;
          &lt;/pgrp&gt;
        &lt;/tei:def&gt;
      &lt;/tei:entry&gt;
      &lt;tei:entry&gt;
        &lt;tei:usg type="incharterparty"&gt;
          &lt;emph typestyle="it"&gt;In charterparty&lt;/emph&gt;
        &lt;/tei:usg&gt;
        &lt;tei:re type="see-also"&gt;
          &lt;emph typestyle="it"&gt;See also &lt;emph typestyle="smcaps"&gt;&lt;ref:crossreference
                      crossreferencetype="seeAlso"&gt;&lt;ref:content&gt;danger&lt;/ref:content&gt;
                          &lt;ref:locator anchoridref="_0KMN_2_D_DANGER_HTDICT-TERM"&gt;
                               &lt;ref:locator-key&gt;&lt;ref:key-name name="DOC-ID"/&gt;
                               &lt;ref:key-value value="0KMN-"/&gt;&lt;/ref:locator-key&gt;
                          &lt;/ref:locator&gt;&lt;/ref:crossreference&gt;&lt;/emph&gt;&lt;/emph&gt;
        &lt;/tei:re&gt;
        &lt;tei:def&gt;
          &lt;pgrp&gt;
            &lt;p&gt;
              &lt;text&gt;[A charterparty provided ...&lt;/text&gt;
            &lt;/p&gt;
          &lt;/pgrp&gt;
        &lt;/tei:def&gt;
      &lt;/tei:entry&gt;
      &lt;tei:entry&gt;
        &lt;tei:usg type="externaldebt"&gt;
          &lt;emph typestyle="it"&gt;External cause&lt;/emph&gt;
        &lt;/tei:usg&gt;
        &lt;tei:re type="see"&gt;
          &lt;emph typestyle="it"&gt;See &lt;emph typestyle="smcaps"&gt;&lt;ref:crossreference
                     crossreferencetype="seeAlso"&gt;&lt;ref:content&gt;cause&lt;/ref:content&gt;
                         &lt;ref:locator anchoridref="_0KMN_2_C_CAUSE_HTDICT-TERM"&gt;
                            &lt;ref:locator-key&gt;&lt;ref:key-name name="DOC-ID"/&gt;
                            &lt;ref:key-value value="0KMN-"/&gt;&lt;/ref:locator-key&gt;
                         &lt;/ref:locator&gt;&lt;/ref:crossreference&gt;&lt;/emph&gt;&lt;/emph&gt;
        &lt;/tei:re&gt;
      &lt;/tei:entry&gt;
      &lt;tei:entry&gt;
        &lt;tei:usg type="externalinjury"&gt;
          &lt;emph typestyle="it"&gt;External injury&lt;/emph&gt;
        &lt;/tei:usg&gt;
        &lt;tei:def&gt;
          &lt;pgrp&gt;
            &lt;p&gt;
              &lt;text&gt;[A policy of insurance ...&lt;/text&gt;
            &lt;/p&gt;
          &lt;/pgrp&gt;
        &lt;/tei:def&gt;
      &lt;/tei:entry&gt;
    &lt;/tei:superEntry&gt;
  &lt;/dict:defitem&gt;
&lt;/dict:body&gt;

	</codeblock>
    </example>
    <example>
      <title>Example 5. Source. Output exception when <targetxml>tei:entry</targetxml> contains no
        content or only <targetxml>tei:usg</targetxml> has content</title>
      <codeblock>

&lt;dict:term-entry&gt;
...
  &lt;dict:definition&gt;
    &lt;dict:subtopic id="JOUR"&gt;
      &lt;dict:topicname&gt;Journals&lt;/dict:topicname&gt;
      &lt;p&gt;
        &lt;text&gt;
          &lt;remotelink 
            alttext="Relevant journal articles" 
            cmd="f:exp" 
            remotekey2="All Subscribed Journals Sources" 
            service="QUERY" 
            remotekey1="FILE-CODE(#LL000CVHX#)"&gt;
                Relevant journal articles
          &lt;/remotelink&gt;
        &lt;/text&gt;
      &lt;/p&gt;
    &lt;/dict:subtopic&gt;
...

	</codeblock>
    </example>
    <example>
      <title>Example 5. Target. Output exception when <targetxml>tei:entry</targetxml> contains no
        content or only <targetxml>tei:usg</targetxml> has content</title>
      <codeblock>

...
&lt;!-- 
    This would be the resulting output because the query link is correctly suppressed
    from the tei:def element. Since the only element with content is tei:usg, 
    the entire tei:entry element should not appear in the output file.
--&gt;
&lt;!--
    &lt;tei:entry type="JOUR"&gt;
      &lt;tei:usg type="journals"&gt;Journals&lt;/tei:usg&gt;
      &lt;tei:def/&gt;
    &lt;/tei:entry&gt;
--&gt;
...

	</codeblock>
    </example>
    <example>
      <title>Example 6. Source. <sourcexml>index</sourcexml> markup</title>
      <codeblock>

&lt;dict:subtopic id="INDX"&gt;
    &lt;dict:topicname&gt;Indexes&lt;/dict:topicname&gt;
    &lt;index id="HALSBURYS"&gt;
        &lt;heading&gt;
            &lt;title&gt;...&lt;/title&gt;
        &lt;/heading&gt;
        &lt;in:lev1&gt;
            &lt;refpt id="tab-1" type="ext"/&gt;
            &lt;in:entry&gt;
                &lt;in:entry-text&gt;...&lt;/in:entry-text&gt;
            &lt;/in:entry&gt;
            &lt;in:lev2&gt;
                &lt;in:entry&gt;
                    &lt;in:entry-text&gt;...&lt;/in:entry-text&gt;
                &lt;/in:entry&gt;
            &lt;/in:lev2&gt;
        &lt;/in:lev1&gt;
        &lt;in:lev1&gt;
            &lt;in:entry&gt;
                &lt;in:entry-text&gt;...&lt;/in:entry-text&gt;
                &lt;in:index-ref&gt;
                    &lt;refpt id="tab-2" type="ext"/&gt;
                &lt;/in:index-ref&gt;
            &lt;/in:entry&gt;
            &lt;in:lev2&gt;
                &lt;in:entry&gt;
                    &lt;in:entry-text&gt;...&lt;/in:entry-text&gt;
                &lt;/in:entry&gt;
                &lt;in:lev3&gt;
                    &lt;in:entry&gt;
                        &lt;in:entry-text&gt;...&lt;/in:entry-text&gt;
                    &lt;/in:entry&gt;
                &lt;/in:lev3&gt;
            &lt;/in:lev2&gt;
        &lt;/in:lev1&gt;
        ...
    &lt;/index&gt;
    ...

	</codeblock>
    </example>
    <example>
      <title>Example 6. Target. <sourcexml>index</sourcexml> markup</title>
      <codeblock>

&lt;tei:entry type="INDX"&gt;
    &lt;tei:usg type="precedents"&gt;Indexes&lt;/tei:usg&gt;
    &lt;tei:sense&gt;
        &lt;pgrp&gt;
            &lt;section&gt;
                &lt;index:index indextype="topical" xml:id="HALSBURYS"&gt;
                    &lt;heading&gt;
                        &lt;title&gt;...&lt;/title&gt;
                    &lt;/heading&gt;
                    &lt;index:item&gt;
                        &lt;ref:anchor id="tab-1" anchortype="global"/&gt;
                        &lt;index:entry&gt;
                            &lt;index:entrytext&gt;...&lt;/index:entrytext&gt;
                        &lt;/index:entry&gt;
                        &lt;index:item&gt;
                            &lt;index:entry&gt;
                                &lt;index:entrytext&gt;...&lt;/index:entrytext&gt;
                            &lt;/index:entry&gt;
                        &lt;/index:item&gt;
                    &lt;/index:item&gt;
                    &lt;index:item&gt;
                        &lt;ref:anchor id="tab-2" anchortype="global"/&gt;
                        &lt;index:entry&gt;
                            &lt;index:entrytext&gt;...&lt;/index:entrytext&gt;
                        &lt;/index:entry&gt;
                        &lt;index:item&gt;
                            &lt;index:entry&gt;
                                &lt;index:entrytext&gt;...&lt;/index:entrytext&gt;
                            &lt;/index:entry&gt;
                            &lt;index:item&gt;
                                &lt;index:entry&gt;
                                  &lt;index:entrytext&gt;...&lt;/index:entrytext&gt;
                                &lt;/index:entry&gt;
                            &lt;/index:item&gt;
                        &lt;/index:item&gt;
                    &lt;/index:item&gt;
                    ...
                &lt;/index:index&gt;
            &lt;/section&gt;
        &lt;/pgrp&gt;
    &lt;/tei:sense&gt;
    ...

	</codeblock>
    </example>

    <section>
      <title>Changes</title>
      <p>2016-04-15: <ph id="change_20160415_jm">Minor. At rule for
            <sourcexml>dict:topicname</sourcexml> to <targetxml>tei:usg[@type]</targetxml>. For
            <targetxml>@type</targetxml> value, added statement to suppress characters not allowed
          in Name datatype, e.g. suppress apostrophe. No change to target xpath. Responds to
          question from Conversion Engineering.</ph></p>
      <p>2013-12-30: <ph id="change_20131230_jm">Significant changes to rules. Necessary to
          accommodate differences in the two component dpsi. Previously, conversion relied on
            <sourcexml>dict:subtopic</sourcexml> to determine mappings for
            <targetxml>tei:entry</targetxml> and <targetxml>tei:superEntry</targetxml>. But many
          docs, especially in dpsi 0KMN "Words and Phrases Legally Defined", contain narrative
          elements preceding dict:subtopic. Revised rules for <sourcexml>dict:definition</sourcexml>
          provide mappings for the narrative set as well as <sourcexml>dict:subtopic</sourcexml>.
          Result will be more consistent output for <targetxml>tei:entry</targetxml> and
            <targetxml>tei:superEntry</targetxml>. Also, it has been found that
            <sourcexml>dict:topicname</sourcexml> which generally represents term usage
            (<targetxml>tei:usg</targetxml>) is sometimes used for references
            (<targetxml>tei:re</targetxml>). Rules have been added to provide appropriate mapping.
          Examples have been changed/added to illustrate details. There are no new xpaths for output
          files. Webteam 248552.</ph></p>
      <p>2013-12-28: <ph id="change_20131228_jm">Removed separate section 5.1. for
            <sourcexml>dict:note</sourcexml> to <targetxml>note</targetxml>. That mapping now
          included in Section 5 Body. No change to rule.</ph></p>
      <p>2013-11-07: <ph id="change_20131107_jm">New rule. Within <sourcexml>index</sourcexml>
          markup. Handles <sourcexml>in:index-ref/refpt</sourcexml> which is new in Oct 2013
          delivery. Webteam 241340. Streams this change immediately applies to (data exists for) --
          UK10. This is a narrow use case and not applicable to other streams.</ph></p>
      <p>2013-08-07: <ph id="change_20130807_rj">Added instruction and sample markup for handling
            <targetxml>tei:entry</targetxml> when resulting in empty child elements or if the only
          child element containing content is <targetxml>tei:usg</targetxml>.</ph></p>
      <p>2013-08-02: <ph id="change_20130802_rj">Clarified instructions for
            <sourcexml>dict:subtopic</sourcexml>. Added instruction for converting
            <sourcexml>dict:subtopic</sourcexml> general mark-up children.</ph></p>
      <p>2013-04-08: <ph id="change_20130408_rj">Added XML Name datatype constraints application to
            <targetxml>tei:usg[@type]</targetxml> rule.</ph></p>
      <p>2013-03-07: <ph id="change_20130307_rj">Changed mappings targeting
            <targetxml>tei:def</targetxml> to <targetxml>tei:def/pgrp</targetxml>.</ph></p>
      <p>2013-01-30: <ph id="change_20130130_rj">Created.</ph></p>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK10_Dictionary\dictionary-Body.dita  -->
  
  <xsl:template match="source_dict:body">
    <dict:body>
      <xsl:apply-templates select="@* | node()[not(self::heading)]"/>
    </dict:body>
  </xsl:template>
  
  <xsl:template match="source_dict:term-entry">
    <dict:defitem>     
        <xsl:apply-templates select="@* | node() except defterm"/>      
    </dict:defitem>    
  </xsl:template>
  
  <xsl:template match="defterm">
    <!--  Original Target XPath:  tei:form/tei:orth   -->
    <tei:form>
      <tei:orth>
        <xsl:attribute name="norm">
          <xsl:value-of select="replace(normalize-space(lower-case(.)), '\.|\?|!|,|;|:|-', '')"/>
        </xsl:attribute>
        <xsl:apply-templates select="@* | node()"/>
      </tei:orth>
    </tei:form>    
  </xsl:template>
  
  <xsl:template match="source_dict:definition">
   <xsl:choose>
     <xsl:when test="not(source_dict:subtopic)">
       <tei:entry>
         <xsl:apply-templates select="preceding-sibling::defterm"/>
         <tei:def>
           <pgrp xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
             <xsl:apply-templates/>
           </pgrp>
         </tei:def>
       </tei:entry>
     </xsl:when>
     <xsl:when test="source_dict:subtopic and not(child::*[2])">
       <xsl:if test="not(source_dict:subtopic[source_dict:topicname and p[text[remotelink[@service='QUERY'][not(child::*[2])]][not(child::*[2])]]][not(child::*[3])])">
       <tei:entry>
         <xsl:apply-templates select="source_dict:subtopic/@id"/>
         <xsl:apply-templates select="preceding-sibling::defterm"/>
         <xsl:apply-templates/>
       </tei:entry>
       </xsl:if>
     </xsl:when>
     <xsl:otherwise>
       <tei:superEntry>
         <xsl:apply-templates select="preceding-sibling::defterm"/>
         <xsl:for-each-group select="*" group-adjacent="if (self::source_dict:subtopic) then 0 else 1">
           <xsl:choose>
             <xsl:when test="current-grouping-key()=1">
               <tei:entry>
                 <tei:def>
                   <pgrp xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
                     <xsl:apply-templates select="current-group()"/>
                   </pgrp>
                 </tei:def>
               </tei:entry>
             </xsl:when>
             <xsl:otherwise>
               <xsl:for-each select="current-group()">
                 <xsl:if test="not(preceding-sibling::*[1][self::source_dict:subtopic[source_dict:topicname[not(starts-with(., 'See ') or starts-with(child::*[1][self::emph], 'See '))] and not(child::*[2])]]) and not(self::source_dict:subtopic[source_dict:topicname and p[text[remotelink[@service='QUERY'][not(child::*[2])]][not(child::*[2])]]][not(child::*[3])])   ">
                 <tei:entry>
                    <xsl:apply-templates select="@id"/>
                    <xsl:apply-templates select="."/>
                 </tei:entry>
                 </xsl:if>
               </xsl:for-each>
             </xsl:otherwise>
           </xsl:choose>
         </xsl:for-each-group>
       </tei:superEntry>
     </xsl:otherwise>
   </xsl:choose>
  </xsl:template>
  
  <xsl:template match="source_dict:subtopic/@id">
    <xsl:attribute name="type" select="."/>
  </xsl:template>
  
  
  <xsl:template match="source_dict:subtopic">
    <!-- need to separate out narrative elements with pgrp -->    
    <xsl:choose>
      <xsl:when test="source_dict:topicname[not(starts-with(., 'See ') or starts-with(child::*[1][self::emph], 'See '))] and not(child::*[2]) and following-sibling::*[1][self::source_dict:subtopic]">
        <xsl:call-template name="subtopicProcessing"/>    
        <xsl:for-each select="following-sibling::*[1][self::source_dict:subtopic]">
          <xsl:call-template name="subtopicProcessing"/>
        </xsl:for-each>
      </xsl:when>
      <xsl:when test="preceding-sibling::*[1][self::source_dict:subtopic[source_dict:topicname[not(starts-with(., 'See ') or starts-with(child::*[1][self::emph], 'See '))] and not(child::*[2])]]"/>
      <xsl:otherwise>
        <xsl:call-template name="subtopicProcessing"/>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>
  
  <xsl:template name="subtopicProcessing">
    <!-- according to xpaths in GDS, h,l, and p are the only general markup children of subtopic -->
    <xsl:for-each-group select="*" group-adjacent="if (self::h or self::l or self::p) then 0 else 1">
      <xsl:choose>
        <xsl:when test="current-grouping-key()=0">
          <tei:def>
            <pgrp xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
                <xsl:for-each select="current-group()">
                  <xsl:apply-templates select="."/>
               </xsl:for-each>
           </pgrp>
          </tei:def>
        </xsl:when>
        <xsl:otherwise>
          <xsl:for-each select="current-group()">     
              <xsl:apply-templates select="."/>            
          </xsl:for-each>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:for-each-group>
  </xsl:template>
  
  <xsl:template match="source_dict:topicname">
    <xsl:choose>
      <xsl:when test="starts-with(., 'See ') or starts-with(child::*[1][self::emph], 'See ')">
        <tei:re>
        <xsl:choose>
          <xsl:when test="starts-with(., 'See also') or starts-with(child::*[1][self::emph], 'See also')">
            <xsl:attribute name="type">see-also</xsl:attribute>
          </xsl:when>
          <xsl:otherwise>
            <xsl:attribute name="type">see</xsl:attribute>
          </xsl:otherwise>
        </xsl:choose>
          <xsl:apply-templates select="@*|node()"/>
        </tei:re>
      </xsl:when>
      <xsl:otherwise>
        <tei:usg>
          <xsl:attribute name="type">
            <xsl:value-of select="lnf:createValidIDstring(lower-case(.))"/>
          </xsl:attribute>
          <xsl:apply-templates/>
        </tei:usg>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>
  
  
  <xsl:template match="source_dict:note">
    <note xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
      <bodytext>
        <p>
          <text>
            <xsl:apply-templates/>
          </text>
        </p>
      </bodytext>
    </note>
  </xsl:template>
  
  <xsl:template match="source_dict:short-definition">
    <tei:def>
      <xsl:attribute name="label" select="'short-definition'"/>
      <pgrp xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
        <xsl:apply-templates/>
      </pgrp>
    </tei:def>
  </xsl:template>
  
  <xsl:template match="source_dict:detailed-definition">
    <tei:def>
      <xsl:attribute name="label" select="'detailed-definition'"/>
      <pgrp xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
        <xsl:apply-templates/>
      </pgrp>
    </tei:def>
  </xsl:template>
  
  <xsl:template match="source_dict:equivalent-term">
    <tei:usg type="equivalent-term">
      <xsl:apply-templates select="@*|node()"/>
    </tei:usg>
  </xsl:template>
  
  <xsl:template match="see-also">
    <tei:re type="see-also">
      <xsl:apply-templates/>
    </tei:re>
  </xsl:template>
  
  <xsl:template match="index">
    <tei:sense>
      <pgrp xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
        <section>
          <index:index>
            <xsl:attribute name="indextype">topical</xsl:attribute>
            <xsl:apply-templates select="@*|node()"/>
          </index:index>
        </section>
      </pgrp>
    </tei:sense>
  </xsl:template>
  
  <xsl:template match="in:lev1 | in:lev2 | in:lev3 | in:lev4 | in:lev5 | in:lev6">
    <index:item>
      <xsl:apply-templates select="@*"/>
      <xsl:apply-templates select="in:index-ref"/>
      <xsl:apply-templates select="node() except in:index-ref"/>
    </index:item>
  </xsl:template>
  
  <xsl:template match="in:entry">
    <index:entry>
      <xsl:apply-templates select="@*|node()"/>
    </index:entry>
  </xsl:template>
  
  <xsl:template match="in:entry-text">
    <index:entrytext>
      <xsl:apply-templates select="@*|node()"/>
    </index:entrytext>
  </xsl:template>
  
  <xsl:template match="in:index-ref">
    <xsl:apply-templates/>
  </xsl:template>

</xsl:stylesheet>