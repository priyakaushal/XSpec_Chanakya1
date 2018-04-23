<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:ci="http://www.lexis-nexis.com/ci" xmlns:comm="http://www.lexis-nexis.com/glp/comm" xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" xmlns:seclaw="http://www.lexisnexis.com/xmlschemas/content/legal/secondary-law/1/" version="2.0" exclude-result-prefixes="dita ci comm docinfo">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="LPA-PracticalGuidance_LandingPage">
  <title>Landing Pages <lnpid>id-CCCC-10186</lnpid></title>
  <body>
    <note>This topic is used in numerous conversion instructions for several LBUs. It is a
      shared topic rather than duplicated to ensure consistency and accuracy. The xml
      snippets contained in this topic reflect markup needed for the Apollo image handling
      application. The UK is the first LBU to move from Apollo to the Blobstore
      application for image handling. Therefore, if this is a UK conversion instruction
      document, please refer to the following topics for correct image handling markup.<ul>
        <li><sourcexml>lnlink[@service="ATTACHMENT"]</sourcexml> to
          <targetxml>ref:lnlink[@service="ATTACHMENT"]</targetxml> for BLOBSTORE
          images (id-CCCC-10542)</li>
        <li><sourcexml>inlineobject</sourcexml> to
          <targetxml>ref:inlineobject</targetxml> for BLOBSTORE images
          (id-CCCC-10540)</li>
        <li><sourcexml>link[@filename]</sourcexml> to
          <targetxml>ref:lnlink[@service="ATTACHMENT"]</targetxml> for BLOBSTORE
          images (id-CCCC-10541)</li>
      </ul></note>
    <p>A landing page is indicated by a top <sourcexml>level</sourcexml> having
        <sourcexml>@leveltype="landingpage"</sourcexml>. That is, the xpath matching
        <sourcexml>/COMMENTARYDOC/comm:body/level/@leveltype="landingpage</sourcexml> indicates the
      document is a landing page. When such a top <sourcexml>level</sourcexml> occurs, create a
        <targetxml>level/@leveltype="landingpage"</targetxml> and process the child elements using
      the rules given for landing page documents in this part of the conversion instructions. </p>

    <p>Please note that throughout the landing page documents the same Rosetta element is often used
      to represent a variety of different semantics in the source landing page documents. In
      particular, this is very much the case with <sourcexml>h</sourcexml> and
        <sourcexml>p</sourcexml>. As such, the same source elements map to a variety of different
      NewLexis target elements depending on what type of landing page document they occur in and
      their particular xpath within that type of landing page document. Partial xpaths (usually
      starting at <sourcexml>bodytext</sourcexml>) are given for the source elements in many places
      to make the specific context of the conversion rule as clear as possible. </p>

    <p>Within a landing page document, the following specific xpath conversions apply to the first
      few high level elements: <ul>
        <li><sourcexml>/COMMENTARYDOC</sourcexml> becomes
            <targetxml>/seclaw:seclaw/@seclawtype="practicalguidance"</targetxml>. </li>
        <li><sourcexml>/COMMENTARYDOC/docinfo</sourcexml> becomes
            <targetxml>/seclaw:seclaw/doc:metadata/doc:docinfo</targetxml> and its various children
          are converted as described in the <xref href="LPA-PracticalGuidance_Metadata.dita"/>. </li>
        <li><sourcexml>/COMMENTARYDOC/comm:body</sourcexml> becomes
            <targetxml>/seclaw:seclaw/seclaw:body</targetxml>. </li>
        <li><sourcexml>/COMMENTARYDOC/comm:body/level/@leveltype="landingpage"</sourcexml> becomes
            <targetxml>/seclaw:seclaw/seclaw:body/seclaw:level/@leveltype="landingpage"</targetxml>. </li>
        <li><sourcexml>/COMMENTARYDOC/comm:body/level/@leveltype="landingpage"/heading</sourcexml>
          becomes
            <targetxml>/seclaw:seclaw/seclaw:body/seclaw:level/@leveltype="landingpage"/heading</targetxml>.
          The attributes of <sourcexml>heading</sourcexml> in this xpath are converted as described
          for the <xref href="Rosetta_heading-LxAdv-heading.dita"/>. All subelements (such as <sourcexml>title</sourcexml> and its children) are converted using
          the common element instructions for these elements provided in the "General Markup" part
          of the conversion instructions. </li>
        <li><sourcexml>/COMMENTARYDOC/comm:body/level/@leveltype="landingpage"/level/@leveltype="documentlinks"</sourcexml>
          becomes
            <targetxml>/seclaw:seclaw/seclaw:body/seclaw:level/@leveltype="landingpage"/seclaw:bodytext/seclaw:level/@leveltype="digestgroups"</targetxml>.
          Note that a <targetxml>seclaw:bodytext</targetxml> element is created as a parent of
            <targetxml>level/@leveltype="digestgroups"</targetxml>. </li>
        <li><sourcexml>/COMMENTARYDOC/comm:body/level/@leveltype="landingpage"/level/@leveltype="documentlinks"/heading</sourcexml>
          becomes
            <targetxml>/seclaw:seclaw/seclaw:body/seclaw:level/@leveltype="landingpage"/seclaw:bodytext/seclaw:level/@leveltype="digestgroups"/heading</targetxml>.
          The attributes of <sourcexml>heading</sourcexml> in this xpath are converted as described
          for the <xref href="Rosetta_heading-LxAdv-heading.dita"/>. All
          subelements (such as <sourcexml>title</sourcexml> and its children) are converted using
          the common element instructions for these elements provided in the "General Markup" part
          of the conversion instructions. </li>
        <li><sourcexml>/COMMENTARYDOC/comm:body/level/@leveltype="landingpage"/level/@leveltype="documentlinks"/bodytext</sourcexml>
          becomes
            <targetxml>/seclaw:seclaw/seclaw:body/seclaw:level/@leveltype="landingpage"/seclaw:bodytext/seclaw:level/@leveltype="digestgroups"/seclaw:bodytext</targetxml>.
        </li>
      </ul>
    </p>

    <section>
      <title>Source XML</title>
      <codeblock>

&lt;comm:body&gt;
  &lt;level leveltype="landingpage"&gt;
    &lt;heading&gt;
      &lt;title&gt;Subject Matter &lt;/title&gt;
    &lt;/heading&gt;
    &lt;level leveltype="documentlinks"&gt;
      &lt;heading&gt;
        &lt;title&gt;Document Links &lt;/title&gt;
      &lt;/heading&gt;
      &lt;bodytext searchtype="Forms"&gt;
            
</codeblock>
    </section>
    <section>
      <title>Target XML</title>
      <codeblock>

&lt;seclaw:body&gt;
  &lt;seclaw:level leveltype="landingpage"&gt;
    &lt;heading&gt;
      &lt;title&gt;Subject Matter &lt;/title&gt;
    &lt;/heading&gt;
    &lt;seclaw:bodytext&gt;
      &lt;seclaw:level leveltype="digestgroups"&gt;
        &lt;heading&gt;
          &lt;title&gt;Document Links &lt;/title&gt;
        &lt;/heading&gt;
        &lt;seclaw:bodytext&gt;
            
</codeblock>
    </section>

  </body>

  <topic id="pg-landing-level3">
    <title>comm:body/level/level/level <lnpid>id-CCCC-10187</lnpid></title>
    <body>
      <p>The mappings of the top <sourcexml>level</sourcexml> and second (nested)
          <sourcexml>level</sourcexml> elements are described above. When a <b>third</b> nested
          <sourcexml>level</sourcexml> is encountered, it becomes a
          <targetxml>seclaw:digestgrp</targetxml>. Any
          <sourcexml>comm:body/level/level/level/heading</sourcexml> becomes
          <targetxml>heading</targetxml>. The attributes of <sourcexml>heading</sourcexml> in this
        xpath are converted as described for the <xref href="Rosetta_heading-LxAdv-heading.dita"/>. All
        subelements of <sourcexml>heading</sourcexml> (such as <sourcexml>title</sourcexml> and its
        children) are converted using the common element instructions for these elements provided in
        the "General Markup" part of the conversion instructions.</p>
      <p>Beside the <sourcexml>heading</sourcexml>, all other child elements of
          <sourcexml>comm:body/level/level/level</sourcexml> (such as <sourcexml>h</sourcexml>,
          <sourcexml>p</sourcexml>, and nested child <sourcexml>level</sourcexml> elements) are
        converted as described for their particular XPath in this <xref href="#LPA-PracticalGuidance_LandingPage">"Landing Pages" part of the conversion
          instructions</xref>.</p>

      <section>
        <title>Source XML</title>
        <codeblock>

&lt;comm:body&gt;
  &lt;level leveltype="landingpage"&gt;
    &lt;heading&gt;
      &lt;title&gt;Subject Matter &lt;/title&gt;
    &lt;/heading&gt;
    &lt;level leveltype="documentlinks"&gt;
      &lt;heading&gt;
        &lt;title&gt;Document Links &lt;/title&gt;
      &lt;/heading&gt;
      &lt;level leveltype="Guidance"&gt;
        &lt;heading&gt;
          &lt;title&gt;What is a business? &lt;/title&gt;
        &lt;/heading&gt;
            
</codeblock>
      </section>
      <section>
        <title>Target XML</title>
        <codeblock>

  &lt;seclaw:body&gt;
    &lt;seclaw:level leveltype="landingpage"&gt;
      &lt;heading&gt;
        &lt;title&gt;Subject Matter&lt;/title&gt;
      &lt;/heading&gt;
      &lt;seclaw:bodytext&gt;
        &lt;seclaw:level leveltype="digestgroups"&gt;
          &lt;heading&gt;
            &lt;title&gt;Document Links &lt;/title&gt;
          &lt;/heading&gt;
          &lt;seclaw:bodytext&gt;

            &lt;seclaw:digestgrp&gt;
              &lt;heading&gt;
                &lt;title&gt;What is a business?&lt;/title&gt;
              &lt;/heading&gt;
            
</codeblock>
      </section>

    </body>
  </topic>

  <topic id="pg-landing-level4">
    <title>comm:body/level/level/level/level <lnpid>id-CCCC-10188</lnpid></title>
    <body>
      <p>When a <b>forth</b> nested <sourcexml>level</sourcexml> is encountered, it becomes a nested
          <targetxml>seclaw:digestgrp</targetxml>. Any
          <sourcexml>comm:body/level/level/level/level/heading</sourcexml> becomes
          <targetxml>heading</targetxml>. The attributes of <sourcexml>heading</sourcexml> in this
        xpath are converted as described for the <xref href="Rosetta_heading-LxAdv-heading.dita"/>. All
        subelements of <sourcexml>heading</sourcexml> (such as <sourcexml>title</sourcexml> and its
        children) are converted using the common element instructions for these elements provided in
        the "General Markup" part of the conversion instructions.</p>
      <p>Besides the <sourcexml>heading</sourcexml>, all other child elements of
          <sourcexml>comm:body/level/level/level</sourcexml> (such as <sourcexml>h</sourcexml>,
          <sourcexml>p</sourcexml>, and nested child <sourcexml>level</sourcexml> elements) are
        converted as described for their particular xpath in this <xref href="#LPA-PracticalGuidance_LandingPage">"Landing Pages" part of the conversion
          instructions</xref>.</p>

      <section>
        <title>Source XML</title>
        <codeblock>

&lt;comm:body&gt;
  &lt;level leveltype="landingpage"&gt;
    &lt;heading&gt;
      &lt;title&gt;Subject Matter &lt;/title&gt;
    &lt;/heading&gt;
    &lt;level leveltype="documentlinks"&gt;
      &lt;heading&gt;
        &lt;title&gt;Document Links &lt;/title&gt;
      &lt;/heading&gt;
      &lt;level leveltype="Guidance"&gt;
        &lt;heading&gt;
          &lt;title&gt;What is a business? &lt;/title&gt;
        &lt;/heading&gt;
        &lt;level leveltype="Main Section" searchtype="Commentary"&gt;
          &lt;heading&gt;
            &lt;title&gt;Introduction &lt;/title&gt;
          &lt;/heading&gt;
            
</codeblock>
      </section>
      <section>
        <title>Target XML</title>
        <codeblock>

&lt;seclaw:body&gt;
  &lt;seclaw:level leveltype="landingpage"&gt;
    &lt;heading&gt;
      &lt;title&gt;Subject Matter&lt;/title&gt;
    &lt;/heading&gt;
    &lt;seclaw:bodytext&gt;
      &lt;seclaw:level leveltype="digestgroups"&gt;
        &lt;heading&gt;
          &lt;title&gt;Document Links &lt;/title&gt;
        &lt;/heading&gt;
        &lt;seclaw:bodytext&gt;

          &lt;seclaw:digestgrp&gt;
            &lt;heading&gt;
              &lt;title&gt;What is a business?&lt;/title&gt;
            &lt;/heading&gt;
            &lt;seclaw:digestgrp&gt;
              &lt;heading&gt;
                &lt;title&gt;Introduction&lt;/title&gt;
              &lt;/heading&gt;
            
</codeblock>
      </section>

    </body>
  </topic>

  <topic id="pg-landing-level5-p">
    <title>comm:body/level/level/level/level/level/bodytext/p <lnpid>id-CCCC-10189</lnpid></title>
    <body>
      <p>When a <b>fifth</b> nested <sourcexml>level</sourcexml> is encountered, each paragraph
        within it becomes a separate <targetxml>seclaw:digest</targetxml>. </p>
      <p>The start-tag and end-tag of the immediate child <sourcexml>bodytext</sourcexml> (xpath
          <sourcexml>comm:body/level/level/level/level/level/bodytext</sourcexml>) are dropped.
        However, the child <sourcexml>bodytext/p</sourcexml> elements are converted as described in
        the instructions for <xref href="#pg-landing-other-4"/>.</p>

    </body>
  </topic>

  <topic id="pg-landing-url">
    <title>drop start-tag and end-tag of url element <lnpid>id-CCCC-10190</lnpid></title>
    <body>
    <note>This instruction has been removed. The content of a <sourcexml>url</sourcexml> element is
        converted as described in the topic <xref href="Rosetta_remotelink-Chof-url-LxAdv-url.dita"/>. Please see that topic for details and examples.</note>
    </body>
  </topic>

  <topic id="pg-landing-altrendition">
    <title>lnlink/@service="ATTACHMENT" creates ref:alternaterendition <lnpid>id-CCCC-10191</lnpid></title>
    <body>
      <p>If <sourcexml>lnlink/@service</sourcexml> is <b>not</b> equal to "ATTACHMENT" then it should be converted according to the instructions for that particular lnlink scenario found in the "General Markup" section.</p>
      <p>If <sourcexml>lnlink/@service="ATTACHMENT"</sourcexml> does <b>not</b> occur within
          <sourcexml>p/text</sourcexml>, <sourcexml>h</sourcexml>, or
          <sourcexml>heading/title</sourcexml> (XPaths <sourcexml>p/text/lnlink</sourcexml>,
          <sourcexml>h/lnlink</sourcexml>, or <sourcexml>heading/title/lnlink</sourcexml>), then
          <sourcexml>lnlink</sourcexml> should be converted as decribed in the topic <xref href="Rosetta_lnlink_service_ATTACHMENT-LxAdv-ref.lnlink.dita"/>.</p>
      <p>If and only if <sourcexml>lnlink</sourcexml> has attribute
        <sourcexml>lnlink/@service="ATTACHMENT"</sourcexml> <b>and</b> it occurs within <sourcexml>p/text</sourcexml>, <sourcexml>h</sourcexml>, or <sourcexml>heading/title</sourcexml>
        (XPaths <sourcexml>p/text/lnlink</sourcexml>, <sourcexml>h/lnlink</sourcexml>, or <sourcexml>heading/title/lnlink</sourcexml>), then a new
          <targetxml>ref:alternaterendition</targetxml> is created. First,
          <targetxml>ref:alternaterenditions</targetxml> is created if not already open, then
          <targetxml>ref:alternaterendition</targetxml> is created, and then
          <sourcexml>lnlink</sourcexml> becomes <targetxml>ref:lnlink</targetxml>. The value of
          <sourcexml>lnlink/@service</sourcexml> is moved to
          <targetxml>ref:lnlink/@service</targetxml>, all other attributes of
          <sourcexml>lnlink</sourcexml> are dropped.</p>
      <note>Only <b>one</b>
        <targetxml>ref:alternaterenditions</targetxml> is created for multiple sequentially occuring
          <sourcexml>lnlink</sourcexml> elements.</note>

      <p>The subelements of <sourcexml>lnlink</sourcexml> are converted as follows: <ul>
          <li><sourcexml>lnlink/marker</sourcexml> becomes <targetxml>ref:lnlink/marker</targetxml>,
            and all attributes of <sourcexml>lnlink/marker</sourcexml> are dropped.</li>
          <li><sourcexml>lnlink/api-params</sourcexml> becomes
              <targetxml>ref:lnlink/ref:locator</targetxml></li>
          <li><sourcexml>lnlink/api-params/param/@name="attachment-key"</sourcexml> becomes the two
            elements:
              <targetxml>ref:lnlink/ref:locator/ref:locator-key/ref:key-name/@name="attachment-key"</targetxml>
            and
              <targetxml>ref:lnlink/ref:locator/ref:locator-key/ref:key-value/@value=</targetxml><sourcexml>(param/@value)</sourcexml>.
            In other words, when <sourcexml>param/@name="attachment-key"</sourcexml>: <ul>
              <li><targetxml>ref:key-name</targetxml> is created and
                  <targetxml>ref:key-name/@name</targetxml> is set to "attachment-key", and </li>
              <li><targetxml>ref:value</targetxml> is created and the value of
                  <sourcexml>lnlink/api-params/param/@value</sourcexml> is moved to
                  <targetxml>ref:key-value/@value</targetxml>.</li>
            </ul>
          </li>
          <li>each occurance of <sourcexml>lnlink/api-params/param</sourcexml> where
              <sourcexml>param/@name</sourcexml> is <b>not</b> equal to "attachment-key" becomes
              <targetxml>ref:locator-param</targetxml>. First,
              <targetxml>ref:lnlink/ref:locator/ref:locator-params</targetxml> is created if not
            already open, then <sourcexml>param</sourcexml> becomes
              <targetxml>ref:locator-param</targetxml>, with the value of
              <sourcexml>param/@name</sourcexml> moved to
              <targetxml>ref:locator-param/@name</targetxml> and the value of
              <sourcexml>param/@value</sourcexml> moved to
              <targetxml>ref:locator-param/@value</targetxml>.</li>
        </ul>
      </p>
      <note>Only <b>one</b>
        <targetxml>ref:locator-params</targetxml> is created for multiple sequentially occuring
          <sourcexml>param</sourcexml> elements.</note>
      <note>For clarity, every time this conversion instruction should be performed within a
        particular source xpath, a note will be added to the subtopic for that particular source
        xpath referencing this conversion instruction. If such a note is not given, then
          <sourcexml>lnlink</sourcexml> should be converted as decribed in for the <xref href="Rosetta_lnlink_service_SEARCH-LxAdv-SUPPRESS.dita"/>.</note>

      <section>
        <title>Source XML</title>
        <codeblock>

&lt;p&gt;
  &lt;text&gt;
    &lt;remotelink dpsi="0086" refpt="AEFP.SB11.P10-60" remotekey1="REFPTID" docidref="EXAMPLE_DOCID" service="DOC-ID"
      &gt;Approval of shareholders of the purchaser under ASX Listing Rule 7.1 &lt;/remotelink&gt;
    &lt;lnlink service="ATTACHMENT" status="valid"&gt;
      &lt;marker role="content"&gt;wordprocess Format &lt;/marker&gt;
      &lt;api-params&gt;
        &lt;param name="attachment-key" value="4H51-98C0-TWN4-6080-00000-00"/&gt;
        &lt;param name="attachment-type" value="wordprocess"/&gt;
        &lt;param name="attachment-smi" value="20838"/&gt;
        &lt;param name="componentseq" value="1"/&gt;
      &lt;/api-params&gt;
    &lt;/lnlink&gt;
  &lt;/text&gt;
&lt;/p&gt;
            
</codeblock>
      </section>
      <section>
        <title>Target XML</title>
        <codeblock>

&lt;seclaw:digest&gt;
 &lt;seclaw:digestinfo&gt;
  &lt;seclaw:subjectmatterreference&gt;
    &lt;ref:crossreference&gt;
      &lt;ref:content&gt;Approval of shareholders of the purchaser under ASX Listing Rule 7.1&lt;/ref:content&gt;
      &lt;ref:locator anchoridref="AEFP.SB11.P10-60"&gt;
        &lt;ref:locator-key&gt;
          &lt;ref:key-name name="DOC-ID"/&gt;
          &lt;ref:key-value value="0086-EXAMPLE_DOCID"/&gt;
        &lt;/ref:locator-key&gt;
    &lt;/ref:crossreference&gt;
    &lt;ref:alternaterenditions&gt;
      &lt;ref:alternaterendition&gt;
        &lt;ref:lnlink service="ATTACHMENT"&gt;
          &lt;ref:marker&gt;wordprocess Format&lt;/ref:marker&gt;
          &lt;ref:locator&gt;
            &lt;ref:locator-key&gt;
              &lt;ref:key-name name="attachment-key"/&gt;
              &lt;ref:key-value value="4H51-98C0-TWN4-6080-00000-00"/&gt;
            &lt;/ref:locator-key&gt;
            &lt;ref:locator-params&gt;
              &lt;proc:param name="attachment-type" value="wordprocess"/&gt;
              &lt;proc:param name="attachment-smi" value="20838"/&gt;
              &lt;proc:param name="componentseq" value="1"/&gt;
            &lt;/ref:locator-params&gt;
          &lt;/ref:locator&gt;
        &lt;/ref:lnlink&gt;
      &lt;/ref:alternaterendition&gt;
    &lt;/ref:alternaterenditions&gt;
  &lt;/seclaw:subjectmatterreference&gt;
 &lt;/seclaw:digestinfo&gt;
&lt;/seclaw:digest&gt;
            
</codeblock>
      </section>
      <section>
        <title>Changes</title>
        <p>2014-06-18 <ph id="change_20140618_JCG">Clarified that the references to the conversion of <sourcexml>lnlink</sourcexml> to <targetxml>ref:alternaterendition</targetxml> were and are only to
          <sourcexml>lnlink/@service="ATTACHMENT"</sourcexml>. This is not a rule change, but simply some additional text, 
          since future Landing Page documents may contain other kinds of <sourcexml>lnlink</sourcexml> elements such as
          <sourcexml>lnlink/@service="QUERYLINK"</sourcexml> and these should be either suppressed or converted to <targetxml>ref:lnlink</targetxml>, as specified in the section "General Markup".</ph></p>
      </section>
    </body>
  </topic>

  <topic id="pg-landing-byline">
    <title>person becomes byline <lnpid>id-CCCC-10192</lnpid></title>
    <body>
      <p>In most cases within landing page documents, <sourcexml>person</sourcexml> within a
          <sourcexml>text</sourcexml> or <sourcexml>h</sourcexml>
          (<sourcexml>p/text/person</sourcexml> or <sourcexml>h/person</sourcexml>) becomes
          <targetxml>byline</targetxml>. The start-tag and end-tag for child element
          <sourcexml>name.text</sourcexml> (but not the element content) are dropped. The data
        character content of <sourcexml>name.text</sourcexml> is moved to the target as the direct
        content of <targetxml>byline</targetxml>.</p>
      <p>For clarity, every time this conversion instruction should be performed within a particular
        source xpath, a note will be added to the subtopic for that particular source xpath
        referencing this conversion instruction.</p>

      <section>
        <title>Source XML</title>
        <codeblock>

&lt;p&gt;
  &lt;text&gt;
    &lt;remotelink dpsi="0086" refpt="AEFP.SB11.P10-50" remotekey1="REFPTID" docidref="EXAMPLE_DOCID" service="DOC-ID"
      &gt;Approval by shareholders under ASX Listing Rule 11.1 &lt;/remotelink&gt;
    &lt;lnlink service="ATTACHMENT" status="valid"&gt;
      &lt;marker role="content"&gt;wordprocess Format &lt;/marker&gt;
      &lt;api-params&gt;
        &lt;param name="attachment-key" value="4H51-9830-TWN4-61FY-00000-00"/&gt;
        &lt;param name="attachment-type" value="wordprocess"/&gt;
        &lt;param name="attachment-smi" value="20838"/&gt;
        &lt;param name="componentseq" value="1"/&gt;
      &lt;/api-params&gt;
    &lt;/lnlink&gt;
    &lt;person&gt;
      &lt;name.text&gt; [D. Magarey and J. Kriewaldt, Australian Encyclopaedia of Forms and
        Precedents] &lt;/name.text&gt;
    &lt;/person&gt;
  &lt;/text&gt;
&lt;/p&gt;
            
</codeblock>
      </section>
      <section>
        <title>Target XML</title>
        <codeblock>

&lt;seclaw:digest&gt;
 &lt;seclaw:digestinfo&gt;
  &lt;seclaw:subjectmatterreference&gt;
    &lt;ref:crossreference&gt;
      &lt;ref:content&gt;Approval by shareholders under ASX Listing Rule 11.1 &lt;/ref:content&gt;
      &lt;ref:locator anchoridref="AEFP.SB11.P10-50"&gt;
        &lt;ref:locator-key&gt;
          &lt;ref:key-name name="DOC-ID"/&gt;
          &lt;ref:key-value value="0086-EXAMPLE_DOCID"/&gt;
        &lt;/ref:locator-key&gt;
      &lt;/ref:locator&gt;
    &lt;/ref:crossreference&gt;
    &lt;ref:alternaterenditions&gt;
      &lt;ref:alternaterendition&gt;
        &lt;ref:lnlink service="ATTACHMENT"&gt;
          &lt;ref:marker&gt;wordprocess Format&lt;/ref:marker&gt;
          &lt;ref:locator&gt;
            &lt;ref:locator-key&gt;
              &lt;ref:key-name name="attachment-key"/&gt;
              &lt;ref:key-value value="0086-4H51-9830-TWN4-61FY-00000-00"/&gt;
            &lt;/ref:locator-key&gt;
            &lt;ref:locator-params&gt;
              &lt;proc:param name="attachment-type" value="wordprocess"/&gt;
              &lt;proc:param name="attachment-smi" value="20838"/&gt;
              &lt;proc:param name="componentseq" value="1"/&gt;
            &lt;/ref:locator-params&gt;
          &lt;/ref:locator&gt;
        &lt;/ref:lnlink&gt;
      &lt;/ref:alternaterendition&gt;
    &lt;/ref:alternaterenditions&gt;
    &lt;byline&gt;[D. Magarey and J. Kriewaldt, Australian Encyclopaedia of Forms and Precedents]&lt;/byline&gt;
  &lt;/seclaw:subjectmatterreference&gt;
 &lt;/seclaw:digestinfo&gt;
&lt;/seclaw:digest&gt;
            
</codeblock>
      </section>

<note>If there is no <sourcexml>lnlink/@service="ATTACHMENT"</sourcexml> element present
        that translates to <targetxml>ref:alternaterenditions</targetxml>, then no <targetxml>ref:alternaterenditions</targetxml> element should be generated before the <targetxml>byline</targetxml>. Do not generate an "empty" <targetxml>ref:alternaterenditions</targetxml> element.</note>

      <section>
        <title>Source XML showing <sourcexml>person</sourcexml> occuring without a
            <sourcexml>lnlink/@service="ATTACHMENT"</sourcexml></title>
        <codeblock>

&lt;p&gt;
  &lt;text&gt;
    &lt;remotelink dpsi="0086" refpt="AEFP.SB11.P10-192" remotekey1="REFPTID" docidref="EXAMPLE_DOCID" service="DOC-ID"&gt;
      NSW - Contract for the Sale of Business &amp;#x2014; 2004 edition &amp;#x2014; 
      Law Society of NSW and Real Estate Institute of NSW
    &lt;/remotelink&gt;
    &lt;person&gt;
      &lt;name.text&gt; [Australian Encyclopaedia of Forms &amp;amp; Precedents]&lt;/name.text&gt;
    &lt;/person&gt;
  &lt;/text&gt;
&lt;/p&gt;
            
</codeblock>
      </section>

      <section>
        <title>Target XML showing generation of <targetxml>byline</targetxml> without preceding <targetxml>ref:alternaterenditions</targetxml></title>
        <codeblock>

&lt;seclaw:digest&gt;
  &lt;seclaw:digestinfo&gt;
    &lt;seclaw:subjectmatterreference&gt;
      &lt;ref:crossreference&gt;
        &lt;ref:content&gt;NSW - Contract for the Sale of Business &amp;#x2014; 2004 edition &amp;#x2014; Law Society of NSW and Real Estate Institute of NSW&lt;/ref:content&gt;
        &lt;ref:locator anchoridref="AEFP.SB11.P10-192"&gt;
          &lt;ref:locator-key&gt;
            &lt;ref:key-name name="REFPTID"&gt;&lt;/ref:key-name&gt;
            &lt;ref:key-value value="0086-EXAMPLE_DOCID"&gt;&lt;/ref:key-value&gt;
          &lt;/ref:locator-key&gt;
        &lt;/ref:locator&gt;
      &lt;/ref:crossreference&gt;
      &lt;!-- Note that no &lt;ref:alternaterendtions&gt; element is present. --&gt;
      &lt;byline&gt; [Australian Encyclopaedia of Forms &amp;amp; Precedents]&lt;/byline&gt;
    &lt;/seclaw:subjectmatterreference&gt;
  &lt;/seclaw:digestinfo&gt;
&lt;/seclaw:digest&gt;
            
</codeblock>
      </section>
      
    </body>
  </topic>

  <topic id="pg-landing-types">
    <title>landing page types <lnpid>id-CCCC-10193</lnpid></title>
    <body>
      <p>The type of a landing page is determined by the <sourcexml>bodytext/@searchtype</sourcexml>
        attribute. The subtopics that follow specify different conversion instructions for the same
        Rosetta element, depending on the type of landing page. The
          <sourcexml>bodytext/@searchtype</sourcexml> attribute has the following values for landing
        page documents: <ul>
          <li>"Home"</li>
          <li>"Checklist"</li>
          <li>"Latest Legal Updates"</li>
          <li>"Guidance"</li>
          <li>"Forms"</li>
          <li>"Precedents"</li>
          <li>"Commentary"</li>
          <li>"Cases"</li>
          <li>"Legislation"</li>
          <li>"Other Resources"</li>
        </ul>
      </p>
    </body>
  </topic>

    <topic id="pg-landing-home">
    <title>Landing Page Type "Home" or "Other Resources <lnpid>id-CCCC-10194</lnpid></title>
    <body>
      <p>These conversions apply only to child elements of
          <sourcexml>bodytext/@searchtype="Home"</sourcexml> and 
          <sourcexml>bodytext/@searchtype="Other Resources"</sourcexml>.</p>
      </body>
    <topic id="pg-landing-home-1">
      <title>bodytext/h <lnpid>id-CCCC-10195</lnpid></title>
      <body>
        <p>Each <sourcexml>bodytext/h</sourcexml> causes a new
            <targetxml>seclaw:digestgrp</targetxml> and child <targetxml>heading</targetxml> to be
          created, then <sourcexml>bodytext/h</sourcexml> becomes <targetxml>title</targetxml>, and
          then the <targetxml>heading</targetxml> is closed. The created
            <targetxml>seclaw:digestgrp</targetxml> is closed when the next
            <sourcexml>bodytext/h</sourcexml> start-tag or the <sourcexml>bodytext</sourcexml>
          end-tag is encountered. </p>

        <section>
          <title>Source XML showing single digest group in "Home" type landing page</title>
          <codeblock>

&lt;comm:body&gt;
  &lt;level leveltype="landingpage"&gt;
    &lt;heading&gt;
      &lt;title&gt;Family (AU)&lt;/title&gt;
    &lt;/heading&gt;
    &lt;level leveltype="documentlinks"&gt;
      &lt;heading&gt;
        &lt;title&gt;Document Links&lt;/title&gt;
      &lt;/heading&gt;
      &lt;bodytext searchtype="Home"&gt;
        &lt;h&gt;What's new&lt;/h&gt;
        &lt;pgrp&gt;
          &lt;!-- ...1... --&gt;
        &lt;/pgrp&gt;
        &lt;pgrp&gt;
          &lt;!-- ...2... --&gt;
        &lt;/pgrp&gt;
        &lt;pgrp&gt;
          &lt;!-- ...3... --&gt;
        &lt;/pgrp&gt;
        &lt;pgrp&gt;
          &lt;!-- ...4... --&gt;
        &lt;/pgrp&gt;
      &lt;/bodytext&gt;
    &lt;/level&gt;
  &lt;/level&gt;
&lt;/comm:body&gt;
            
</codeblock>
        </section>
        <section>
          <title>Target XML showing single digest group in "Home" type landing page</title>
          <codeblock>

&lt;seclaw:body&gt;
  &lt;seclaw:level leveltype="landingpage"&gt;
    &lt;heading&gt;
      &lt;title&gt;Family (AU)&lt;/title&gt;
    &lt;/heading&gt;
    &lt;seclaw:bodytext&gt;
      &lt;seclaw:level leveltype="digestgroups"&gt;
        &lt;heading&gt;
          &lt;title&gt;Document Links &lt;/title&gt;
        &lt;/heading&gt;
        &lt;seclaw:bodytext&gt;
          &lt;seclaw:digestgrp&gt;
            &lt;heading&gt;
              &lt;title&gt;What's new&lt;/title&gt;
            &lt;/heading&gt;
            &lt;seclaw:digest&gt;
              &lt;!-- ...1... --&gt;
            &lt;/seclaw:digest&gt;
            &lt;seclaw:digest&gt;
              &lt;!-- ...2... --&gt;
            &lt;/seclaw:digest&gt;
            &lt;seclaw:digest&gt;
              &lt;!-- ...3... --&gt;
            &lt;/seclaw:digest&gt;
            &lt;seclaw:digest&gt;
              &lt;!-- ...4... --&gt;
            &lt;/seclaw:digest&gt;
          &lt;/seclaw:digestgrp&gt;
        &lt;/seclaw:bodytext&gt;
      &lt;/seclaw:level&gt;
    &lt;/seclaw:bodytext&gt;        
  &lt;/seclaw:level&gt;
&lt;/seclaw:body&gt;
            
</codeblock>
        </section>
        
        <section>
          <title>Source XML showing multiple digest groups in "Other Resources" type landing page with topical headings</title>
          <codeblock>

&lt;comm:body&gt;
  &lt;level leveltype="landingpage"&gt;
    &lt;heading&gt;&lt;title&gt;Corporate governance&lt;/title&gt;&lt;/heading&gt;
      &lt;level leveltype="documentlinks"&gt;
        &lt;heading&gt;&lt;title&gt;Document Links&lt;/title&gt;&lt;/heading&gt;
        &lt;bodytext searchtype="Other Resources"&gt;
          &lt;h&gt;Corporate governance&lt;/h&gt;
          &lt;pgrp&gt;
            &lt;!-- ...1a... --&gt;
          &lt;/pgrp&gt;
          &lt;h&gt;The role of shareholders and stakeholders&lt;/h&gt;
          &lt;pgrp&gt;
            &lt;!-- ...2a... --&gt;
          &lt;/pgrp&gt;
          &lt;pgrp&gt;
            &lt;!-- ...2b.. --&gt;
          &lt;/pgrp&gt;
          &lt;pgrp&gt;
            &lt;!-- ...2c... --&gt;
          &lt;/pgrp&gt;
          &lt;h&gt;Establishing a corporate governance framework&lt;/h&gt;
          &lt;pgrp&gt;
            &lt;!-- ...3a... --&gt;
          &lt;/pgrp&gt;
          &lt;pgrp&gt;
            &lt;!-- ...3b... --&gt;
          &lt;/pgrp&gt;
      &lt;/bodytext&gt;
    &lt;/level&gt;
  &lt;/level&gt;
&lt;/comm:body&gt;
            
</codeblock>
        </section>

        <section>
          <title>Target XML showing multiple digest groups in "Other Resources" type landing page</title>
          <codeblock>

&lt;seclaw:body&gt;
  &lt;seclaw:level leveltype="landingpage"&gt;
    &lt;heading&gt;
      &lt;title&gt;Family (AU)&lt;/title&gt;
    &lt;/heading&gt;
    &lt;seclaw:bodytext&gt;
      &lt;seclaw:level leveltype="digestgroups"&gt;
        &lt;heading&gt;
          &lt;title&gt;Document Links &lt;/title&gt;
        &lt;/heading&gt;
        &lt;seclaw:bodytext&gt;
          &lt;seclaw:digestgrp&gt;
            &lt;heading&gt;
              &lt;title&gt;Corporate governance&lt;/title&gt;
            &lt;/heading&gt;
            &lt;seclaw:digest&gt;
              &lt;!-- ...1a... --&gt;
            &lt;/seclaw:digest&gt;
          &lt;/seclaw:digestgrp&gt;
          &lt;seclaw:digestgrp&gt;
            &lt;heading&gt;
              &lt;title&gt;The role of shareholders and stakeholders&lt;/title&gt;
            &lt;/heading&gt;
            &lt;seclaw:digest&gt;
              &lt;!-- ...2a... --&gt;
            &lt;/seclaw:digest&gt;
            &lt;seclaw:digest&gt;
              &lt;!-- ...2b... --&gt;
            &lt;/seclaw:digest&gt;
            &lt;seclaw:digest&gt;
              &lt;!-- ...2c... --&gt;
            &lt;/seclaw:digest&gt;
          &lt;/seclaw:digestgrp&gt;
          &lt;seclaw:digestgrp&gt;
            &lt;heading&gt;
              &lt;title&gt;Establishing a corporate governance framework&lt;/title&gt;
            &lt;/heading&gt;
            &lt;seclaw:digest&gt;
              &lt;!-- ...3a... --&gt;
            &lt;/seclaw:digest&gt;
            &lt;seclaw:digest&gt;
              &lt;!-- ...3b... --&gt;
            &lt;/seclaw:digest&gt;
          &lt;/seclaw:digestgrp&gt;
        &lt;/seclaw:bodytext&gt;
      &lt;/seclaw:level&gt;
    &lt;/seclaw:bodytext&gt;        
  &lt;/seclaw:level&gt;
&lt;/seclaw:body&gt;
            
</codeblock>
        </section>
        
        <section>
          <title>Source XML showing multiple digest groups in "Other Resources" type landing page without topical headings</title>
          <codeblock>
            
&lt;level leveltype="documentlinks"&gt;
   &lt;heading&gt;
     &lt;title&gt;Document Links&lt;/title&gt;&lt;/heading&gt;
        &lt;bodytext searchtype="Other Resources"&gt;
          &lt;p&gt;
            &lt;!-- ...1a... --&gt;
          &lt;p&gt;
            &lt;!-- ...1b... --&gt;
          &lt;p&gt;
            &lt;!-- ...1c... --&gt;
          &lt;p&gt;
            &lt;!-- ...1d... --&gt;
        &lt;/bodytext&gt;
 &lt;/level&gt;
            
          </codeblock>
        </section>
        
        <section>
          <title>Target XML showing multiple digest groups in "Other Resources" type landing page without topical headings</title>
          <codeblock>
            
    &lt;seclaw:level leveltype="digestgroups"&gt;
        &lt;heading&gt;
          &lt;title&gt;Document Links &lt;/title&gt;
        &lt;/heading&gt;
        &lt;seclaw:bodytext&gt;
          &lt;seclaw:digestgrp&gt;   
            &lt;seclaw:digest&gt;
              &lt;!-- ...1a... --&gt;
            &lt;/seclaw:digest&gt;          
            &lt;seclaw:digest&gt;
              &lt;!-- ...1b... --&gt;
            &lt;/seclaw:digest&gt;
            &lt;seclaw:digest&gt;
              &lt;!-- ...1c... --&gt;
            &lt;/seclaw:digest&gt;
            &lt;seclaw:digest&gt;
              &lt;!-- ...1d... --&gt;
            &lt;/seclaw:digest&gt;  
          &lt;/seclaw:digestgrp&gt;
        &lt;/seclaw:bodytext&gt;            
     &lt;/seclaw:level&gt;          
            
          </codeblock>
        </section>  
        
        <section>
          <title>Changes</title>
          <p>2014-10-29 <ph id="change_20141029_MLV"/>Added new instruction when <sourcexml>bodytext[@searchtype="Other Resources"]/p</sourcexml>
            occurs with no topical headings. The conversion follows the same pattern as with topical headings except that only one <targetxml>seclaw:digestgrp</targetxml> is created
            and each <sourcexml>p</sourcexml> element becomes a <targetxml>seclaw:digest</targetxml>.</p>
        </section>    
            
        </body>
</topic>
   
    <topic id="pg-landing-home-2">
      <title>bodytext/pgrp <lnpid>id-CCCC-10196</lnpid></title>
      <body>
        <p>Each <sourcexml>bodytext/pgrp</sourcexml> causes a new <targetxml>seclaw:digest</targetxml>
          and child <targetxml>seclaw:digestinfo</targetxml> to be created. These two elements are closed when the 
          <sourcexml>pgrp</sourcexml> end-tag is encountered.</p>
          <p>Within <sourcexml>bodytext/pgrp</sourcexml> there will be a <sourcexml>bodytext/pgrp/heading</sourcexml> followed by an optional <sourcexml>bodytext/pgrp/p</sourcexml> element. See the subtopic <xref href="#pg-landing-home-3"/> for a description and example of how the child elements are converted.</p>
        </body>
      </topic>
      
 
      <topic id="pg-landing-home-2a">
        <title>bodytext/p</title>
        <body>
          <p>Each <sourcexml>bodytext/p</sourcexml> causes a new <targetxml>seclaw:digest</targetxml>
            and child <targetxml>seclaw:digestinfo</targetxml> to be created. These two elements are closed when the 
            <sourcexml>p</sourcexml> end-tag is encountered.</p>
          
          <p>Within each <sourcexml>bodytext/p</sourcexml> element. See the subtopic <xref href="#pg-landing-home-3"/> for a description and 
            example of how the child elements are converted.</p>
        </body>
      </topic>
      
      
          
    <topic id="pg-landing-home-3">
      <title>bodytext/pgrp/heading and optional bodytext/pgrp/p <lnpid>id-CCCC-10197</lnpid> OR bodytext/p</title>
      <body>
        <p>Each <sourcexml>bodytext/@searchtype="Home"/pgrp/heading/title</sourcexml> causes either
            <targetxml>seclaw:subjectmatterreference</targetxml> or
            <targetxml>ref:subjectmattercite</targetxml> to be created depending on its contents:</p>
        <ul>
          <li>If the <sourcexml>heading/title</sourcexml>, or any of its subelements, does
              <b>not</b> contain a <sourcexml>ci:cite</sourcexml>, then a
              <targetxml>seclaw:subjectmatterreference</targetxml> element is created. In this case
            the content of <sourcexml>heading/title</sourcexml> is moved to the target document as
            the content of the created <targetxml>seclaw:subjectmatterreference</targetxml>
            element's children: <ul>
              <li><targetxml>seclaw:subjectmattertext</targetxml></li>
              <li><targetxml>ref:crossreference</targetxml></li>
              <li><targetxml>ref:lnlink</targetxml></li>
              <li><targetxml>url</targetxml></li>
              <li><targetxml>ref:referencestatusgroup</targetxml></li>
              <li><targetxml>connector</targetxml></li>
              <li><targetxml>inlinenote</targetxml></li>
              <li><targetxml>ref:alternaterenditions</targetxml></li>
              <li><targetxml>byline</targetxml>)</li>
            </ul> The start-tag and end-tag for <sourcexml>heading</sourcexml> and
              <sourcexml>heading/title</sourcexml> (but not the element content) are dropped. Any
            sequence of data characters that occur as a direct child of <sourcexml>title</sourcexml>
            are wrapped with a <targetxml>seclaw:subjectmattertext</targetxml> element. <note>There
              is one an exception to the above sentence: if an entire sequence of data characters
              consists of <b>only</b> punctuation and/or the words "and" or "or", this sequence
              should be wrapped with <targetxml>connector</targetxml> instead of
                <targetxml>seclaw:subjectmattertext</targetxml>.</note> A child element with the
            XPath <sourcexml>heading/title/emph</sourcexml> is also wrapped with a
              <targetxml>seclaw:subjectmattertext</targetxml> element, and the
              <sourcexml>emph</sourcexml> is converted using the common element instructions for
            this element provided in the "General Markup" part of the conversion instructions. With
            the exception of <sourcexml>date</sourcexml>,
              <sourcexml>lnlink/@service="ATTACHMENT"</sourcexml> and <sourcexml>person</sourcexml>
            (see notes below), all subelements of <sourcexml>heading/title</sourcexml> (such as
              <sourcexml>url</sourcexml>, <sourcexml>remotelink</sourcexml>, and all other
              <sourcexml>lnlink</sourcexml> elements) are converted using the common element
            instructions for these elements provided in the "General Markup" part of the conversion
            instructions. <note>Convert any child <sourcexml>date</sourcexml> elements to
                <targetxml>ref:referencestatusgroup</targetxml> as described in the subtopic <xref href="#pg-landing-referencestatusgroup"/>.</note>
            <note>Convert any child <sourcexml>lnlink/@service="ATTACHMENT"</sourcexml> elements to
                <targetxml>ref:alternaterenditions</targetxml> as described in the subtopic <xref href="#pg-landing-altrendition"/>. </note>
            <note>Convert any child <sourcexml>person</sourcexml> elements to
                <targetxml>byline</targetxml> as described in the subtopic <xref href="#pg-landing-byline"/>. </note>
            <note>There is currently no scenario where there are multiple
                <sourcexml>note</sourcexml> or <sourcexml>person</sourcexml> elements in this
              context, and given our understanding of the way the data is generated this is not even
              theorectically possible. It <b>is</b> theorectically possible to have multiple
                <sourcexml>lnlink</sourcexml> child elements and these become multiple
                <targetxml>ref:alternaterendition</targetxml> elements within a single
                <targetxml>ref:alternaterendition</targetxml>.</note>
          </li>
        <li>If the <sourcexml>heading/title</sourcexml>, or any of its subelements,
          <b>does</b> contain a <sourcexml>ci:cite</sourcexml>, then a
            <targetxml>ref:subjectmattercite</targetxml> element is created. The start-tag and
          end-tag for <sourcexml>heading</sourcexml> (but not the element content) are dropped. Any
          data character content of the <sourcexml>heading</sourcexml> becomes the direct content of the created <targetxml>ref:subjectmattercite</targetxml>.
          All subelements of <sourcexml>heading</sourcexml> (such as
            <sourcexml>emph</sourcexml> and <sourcexml>ci:cite</sourcexml>) are converted using the
          common element instructions for these elements provided in the "General Markup" part of
          the conversion instructions. 
          <note>Currently there is no such scenario in the source where a <sourcexml>bodytext/@searchtype="Home"/pgrp/heading/title</sourcexml> or any of its subelements contains a <sourcexml>ci:cite</sourcexml>. This conversion is mentioned only for completeness. This is also true of <sourcexml>bodytext/@searchtype="Other Resources"/pgrp/heading/title</sourcexml>.</note>
          </li>
        </ul>
        <p>The created <targetxml>seclaw:subjectmatterreference</targetxml> or
            <targetxml>ref:subjectmattercite</targetxml> is <b>not</b> closed when the
            <sourcexml>heading</sourcexml> or <sourcexml>title</sourcexml> end-tags are encountered. Instead, the <targetxml>seclaw:subjectmatterreference</targetxml> or
            <targetxml>ref:subjectmattercite</targetxml> is closed only when the parent <sourcexml>pgrp</sourcexml> end-tag is encountered in the source.</p>
          <p>Immediately following the <sourcexml>bodytext/pgrp/heading</sourcexml>, an optional <sourcexml>bodytext/pgrp/p</sourcexml> may occur. If present, any <sourcexml>p</sourcexml> element becomes <targetxml>inlinenote</targetxml> as a child of the created <targetxml>seclaw:subjectmatterreference</targetxml> or <targetxml>ref:subjectmattercite</targetxml>, with the <targetxml>inlinenote@notetype</targetxml> attribute set to "other". The start-tag and end-tag for this <sourcexml>p</sourcexml> and the child <sourcexml>p/text</sourcexml> (but not the element content) are dropped. All child elements of <sourcexml>p/text</sourcexml> are converted using the common element instructions
            provided in the "General Markup" part of the conversion instructions.
          </p>

        <section>
          <title>Source XML showing conversion to seclaw:subjectmatterreference</title>
          <codeblock>

&lt;pgrp&gt;
  &lt;heading&gt;
      &lt;title&gt;
        &lt;emph typestyle="bf"&gt;Court procedure: &lt;/emph&gt;
        &lt;url&gt;
          &lt;remotelink href="http://www.familylawcourts.gov.au/wps/wcm/connect/FLC/Home/Forms/Family+Law+Courts+forms/Financial_Statement_form" newwindow="YES"&gt;Family Law Courts &amp;#x2014; Financial Statement&lt;/remotelink&gt;
        &lt;/url&gt;: &lt;date day="17" month="1" year="2012"&gt;[17/1/2012]&lt;/date&gt;
      &lt;/title&gt;
    &lt;/heading&gt;
    &lt;p&gt;
      &lt;text&gt;Updated form.&lt;/text&gt;
    &lt;/p&gt;
 &lt;/pgrp&gt;

</codeblock>
        </section>
        <section>
          <title>Target XML showing conversion to seclaw:subjectmatterreference</title>
          <codeblock>

&lt;seclaw:digest&gt;
  &lt;seclaw:digestinfo&gt;
    &lt;seclaw:subjectmatterreference&gt;
      &lt;seclaw:subjectmattertext&gt;&lt;emph typestyle="bf"&gt;Court procedure: &lt;/emph&gt;&lt;/subjectmattertext&gt;
      &lt;ref:lnlink service="URL"&gt;
        &lt;ref:marker&gt;Family Law Courts — Financial Statement&lt;/ref:marker&gt;
          &lt;ref:locator&gt;
            &lt;ref:locator-key&gt;
              &lt;ref:key-name name="URL"&gt;&lt;/ref:key-name&gt;
              &lt;ref:key-value value="http://www.familylawcourts.gov.au/wps/wcm/connect/FLC/Home/Forms/Family+Law+Courts+forms/Financial_Statement_form"&gt;&lt;/ref:key-value&gt;
          &lt;/ref:locator-key&gt;
        &lt;/ref:locator&gt;
      &lt;/ref:lnlink&gt;
      &lt;subjectmattertext&gt;:&lt;/subjectmattertext&gt;
      &lt;ref:referencestatusgroup&gt;
        &lt;ref:referencestatusdate name="updatedate" year="2012" month="01" day="17"&gt;&lt;/ref:referencestatusdate&gt;
      &lt;/ref:referencestatusgroup&gt;
      &lt;inlinenote notetype="other"&gt;Updated form.&lt;/inlinenote&gt;
    &lt;/seclaw:subjectmatterreference&gt;
  &lt;/seclaw:digestinfo&gt;
&lt;/seclaw:digest&gt;
            
</codeblock>
        </section>
        <section>
          <title>Conversion to ref:subjectmattercite</title>
            <p>There is no such scenario in the source where a <sourcexml>bodytext/@searchtype="Home"/pgrp/heading/title</sourcexml> or any of its subelements contains a <sourcexml>ci:cite</sourcexml> and so currently there is no sample regarding conversion to <targetxml>ref:subjectmattercite</targetxml>. This is also true of <sourcexml>bodytext/@searchtype="Other Resources"/pgrp/heading/title</sourcexml>.</p>
        </section>
        <section>
          <title>Changes</title>
          <p>2014-06-18 <ph id="change_20140618_JCG">Clarified that the references to the conversion of <sourcexml>lnlink</sourcexml> to <targetxml>ref:alternaterendition</targetxml> were and are only to
            <sourcexml>lnlink/@service="ATTACHMENT"</sourcexml>. This is not a rule change, but simply some additional text, 
            since future Landing Page documents may contain other kinds of <sourcexml>lnlink</sourcexml> elements such as
            <sourcexml>lnlink/@service="QUERYLINK"</sourcexml> and these should be either suppressed or converted to <targetxml>ref:lnlink</targetxml>, as specified in the section "General Markup".</ph></p>
        </section>
        </body>
    </topic>
    </topic>
  
  <topic id="pg-landing-latest-legal-updates">
    <title>Landing Page Type "Checklist" or "Latest Legal Updates" <lnpid>id-CCCC-10198</lnpid></title>
    <body>
      <p>The conversion instructions originally in this subtopic are no longer applicable as of 12 July 2012 due to mark-up changes in production files. Please see the subtopic <xref href="#pg-landing-other"/> for the instructions that now describe the conversion of Landing Page types "Checklist" and "Latest Legal Updates". This subtopic will remain in the document to preserve the subtopic numbering from previous releases of this CI.
      </p>
    </body>
  </topic>

  <topic id="pg-landing-guidance">
    <title>Landing Page Type "Guidance" <lnpid>id-CCCC-10199</lnpid></title>
    <body>
      <p>These conversions apply only to child elements of <sourcexml>bodytext</sourcexml> when
          <sourcexml>bodytext/@searchtype="Guidance"</sourcexml>. </p>
    </body>

    <topic id="pg-landing-guidance-1">
      <title>FIRST bodytext/h <lnpid>id-CCCC-10200</lnpid></title>
      <body>
        <p>If the <b>first</b>
          <sourcexml>bodytext/h</sourcexml> in a document, or any of its subelements, does <b>not</b> contain a
            <sourcexml>remotelink</sourcexml> or <sourcexml>ci:cite</sourcexml>, it causes a new
            <targetxml>seclaw:digestgrp</targetxml> and child <targetxml>heading</targetxml> to be
          created, then <sourcexml>bodytext/h</sourcexml> becomes <targetxml>title</targetxml>, and
          then the <targetxml>heading</targetxml> is closed. The created
            <targetxml>seclaw:digestgrp</targetxml> is closed when the
            <sourcexml>bodytext</sourcexml> end-tag is encountered. </p>
        <p>If the first <sourcexml>bodytext/h</sourcexml> in a document, or any of its subelements, <b>does</b> contain a
            <sourcexml>remotelink</sourcexml> or <sourcexml>ci:cite</sourcexml>, it will be
          converted as described below in the subtopic <xref href="#pg-landing-guidance-2"/>.
          However, a new <targetxml>seclaw:digestgrp</targetxml> must still be created first, but it
          will not have a child <targetxml>heading</targetxml>. This created
            <targetxml>seclaw:digestgrp</targetxml> is closed when the
            <sourcexml>bodytext</sourcexml> end-tag is encountered. Please see the example titled
          "Source XML showing FIRST bodytext/h with a remotelink" shown below in the subtopic <xref href="#pg-landing-guidance-2"/>.</p>

        <section>
          <title>Source XML</title>
          <codeblock>

&lt;comm:body&gt;
  &lt;level leveltype="landingpage"&gt;
    &lt;heading&gt;
      &lt;title&gt;Subject Matter &lt;/title&gt;
    &lt;/heading&gt;
    &lt;level leveltype="documentlinks"&gt;
      &lt;heading&gt;
        &lt;title&gt;Document Links &lt;/title&gt;
      &lt;/heading&gt;
      &lt;bodytext searchtype="Guidance"&gt;
        &lt;h&gt;Subject Matter &lt;/h&gt;
        &lt;h&gt;
          &lt;!-- ... --&gt;
        &lt;/h&gt;
            
</codeblock>
        </section>
        <section>
          <title>Target XML</title>
          <codeblock>

&lt;seclaw:body&gt;
  &lt;seclaw:level leveltype="landingpage"&gt;
    &lt;heading&gt;
      &lt;title&gt;Subject Matter &lt;/title&gt;
    &lt;/heading&gt;
    &lt;seclaw:bodytext&gt;
      &lt;seclaw:level leveltype="digestgroups"&gt;
        &lt;heading&gt;
          &lt;title&gt;Document Links &lt;/title&gt;
        &lt;/heading&gt;
        &lt;seclaw:bodytext&gt;
          &lt;seclaw:digestgrp&gt;
            &lt;heading&gt;&lt;title&gt;Subject Matter&lt;/title&gt;&lt;/heading&gt;
            &lt;seclaw:digest&gt;
              &lt;seclaw:digestinfo&gt;
              &lt;!-- ... --&gt;
            
</codeblock>
        </section>

      </body>

    </topic>

    <topic id="pg-landing-guidance-2">
      <title>SUBSEQUENT bodytext/h, or when FIRST bodytext/h contains
          <sourcexml>remotelink</sourcexml> or ci:cite <lnpid>id-CCCC-10201</lnpid></title>
      <body>
        <p>As mentioned in the previous subtopic <xref href="#pg-landing-guidance-1"/>, if the first <sourcexml>bodytext/h</sourcexml> in a document, or any of its subelements,
            <b>does</b> contain a <sourcexml>remotelink</sourcexml> or
            <sourcexml>ci:cite</sourcexml>, it will be converted as described here in this subtopic.
          However, a new <targetxml>seclaw:digestgrp</targetxml> must still be created first, but it
          will <targetxml>seclaw:digestgrp</targetxml> will not have a child
            <targetxml>heading</targetxml>. This created <targetxml>seclaw:digestgrp</targetxml> is
          closed when the <sourcexml>bodytext</sourcexml> end-tag is encountered. Please see the
          example titled "Source XML showing FIRST bodytext/h with a remotelink" shown below.</p>
        <p>Each <sourcexml>bodytext/h</sourcexml> (after a FIRST bodytext/h without a
            <sourcexml>remotelink</sourcexml>) causes a new <targetxml>seclaw:digest</targetxml> and
          child <targetxml>seclaw:digestinfo</targetxml> to be created. </p>
        <p>The <sourcexml>bodytext/h</sourcexml> then becomes either
            <targetxml>seclaw:subjectmatterreference</targetxml> or
            <targetxml>ref:subjectmattercite</targetxml> depending on its contents:</p>
        <ul>
          <li>If the <sourcexml>h</sourcexml>, or any of its subelements, does <b>not</b> contain a
              <sourcexml>ci:cite</sourcexml>, then a
              <targetxml>seclaw:subjectmatterreference</targetxml> element is created. In this case
            the content of <sourcexml>h</sourcexml> is moved to the target document as the content
            of the created <targetxml>seclaw:subjectmatterreference</targetxml> element's children: <ul>
              <li><targetxml>seclaw:subjectmattertext</targetxml></li>
              <li><targetxml>ref:crossreference</targetxml></li>
              <li><targetxml>ref:lnlink</targetxml></li>
              <li><targetxml>url</targetxml></li>
              <li><targetxml>ref:referencestatusgroup</targetxml></li>
              <li><targetxml>connector</targetxml></li>
              <li><targetxml>inlinenote</targetxml></li>
              <li><targetxml>ref:alternaterenditions</targetxml></li>
              <li><targetxml>byline</targetxml></li>
            </ul> Any sequence of data characters that occur as a direct child of the
              <sourcexml>h</sourcexml> are wrapped with a
              <targetxml>seclaw:subjectmattertext</targetxml> element. <note>There is one an
              exception to the above sentence: if an entire sequence of data characters consists of
                <b>only</b> punctuation and/or the words "and" or "or", this sequence should be
              wrapped with <targetxml>connector</targetxml> instead of
                <targetxml>seclaw:subjectmattertext</targetxml>.</note> A child element with the
            XPath <sourcexml>h/emph</sourcexml> is also wrapped with a
              <targetxml>seclaw:subjectmattertext</targetxml> element, and the
              <sourcexml>emph</sourcexml> is converted using the common element instructions for
            this element provided in the "General Markup" part of the conversion instructions. With
            the exception of <sourcexml>date</sourcexml>,
              <sourcexml>lnlink/@service="ATTACHMENT"</sourcexml> and <sourcexml>person</sourcexml>
            (see notes below), all subelements of <sourcexml>h</sourcexml> (such as
              <sourcexml>url</sourcexml>, and <sourcexml>remotelink</sourcexml>, and all other
            <sourcexml>lnlink</sourcexml> elements) are converted using the common element
            instructions for these elements provided in the "General Markup" part of the conversion
            instructions. <note>Convert any child <sourcexml>date</sourcexml> elements to
                <targetxml>ref:referencestatusgroup</targetxml> as described in the subtopic <xref href="#pg-landing-referencestatusgroup"/>.</note>
            <note>Convert any child <sourcexml>lnlink/@service="ATTACHMENT"</sourcexml> elements to
                <targetxml>ref:alternaterenditions</targetxml> as described in the subtopic <xref href="#pg-landing-altrendition"/>. </note>
            <note>Convert any child <sourcexml>person</sourcexml> elements to
                <targetxml>byline</targetxml> as described in the subtopic <xref href="#pg-landing-byline"/>. </note>
            <note>There is currently no scenario where there are multiple
                <sourcexml>note</sourcexml> or <sourcexml>person</sourcexml> elements in this
              context, and given our understanding of the way the data is generated this is not even
              theorectically possible. It <b>is</b> theorectically possible to have multiple
                <sourcexml>lnlink</sourcexml> child elements and these become multiple
                <sourcexml>ref:alternaterendition</sourcexml> elements within a single
                <sourcexml>ref:alternaterendition</sourcexml>.</note>
          </li>
          <li>If the <sourcexml>h</sourcexml>, or any of its subelements,
            <b>does</b> contain a <sourcexml>ci:cite</sourcexml>, then a
              <targetxml>ref:subjectmattercite</targetxml> element is created. Any data character
            content of the <sourcexml>h</sourcexml> becomes the direct content of the created
              <targetxml>ref:subjectmattercite</targetxml>. All subelements of
              <sourcexml>h</sourcexml> (such as <sourcexml>emph</sourcexml> and
              <sourcexml>ci:cite</sourcexml>) are converted using the common element instructions
            for these elements provided in the "General Markup" part of the conversion instructions.
          </li>
        </ul>
        <p>The created <targetxml>seclaw:digest</targetxml> and
            <targetxml>seclaw:digestinfo</targetxml> are closed when a
            <sourcexml>bodytext/h</sourcexml> start-tag, <sourcexml>bodytext/p</sourcexml>
          start-tag, or the <sourcexml>bodytext</sourcexml> end-tag is encountered. </p>

        <section>
          <title>Source XML</title>
          <codeblock>

&lt;comm:body&gt;
  &lt;level leveltype="landingpage"&gt;
    &lt;heading&gt;
      &lt;title&gt;Subject Matter &lt;/title&gt;
    &lt;/heading&gt;
    &lt;level leveltype="documentlinks"&gt;
      &lt;heading&gt;
        &lt;title&gt;Document Links &lt;/title&gt;
      &lt;/heading&gt;
      &lt;bodytext searchtype="Guidance"&gt;
        &lt;h&gt;Subject Matter &lt;/h&gt;
        &lt;h&gt;
          &lt;remotelink dpsi="0M2S" remotekey1="DOC-ID" remotekey2="0M2S_29007" service="DOC-ID"
            &gt;What is a business? &lt;/remotelink&gt;
        &lt;/h&gt;
            
</codeblock>
        </section>
        <section>
          <title>Target XML</title>
          <codeblock>

&lt;seclaw:body&gt;
  &lt;seclaw:level leveltype="landingpage"&gt;
    &lt;heading&gt;
      &lt;title&gt;Subject Matter &lt;/title&gt;
    &lt;/heading&gt;
    &lt;seclaw:bodytext&gt;
      &lt;seclaw:level leveltype="digestgroups"&gt;
        &lt;heading&gt;
          &lt;title&gt;Document Links &lt;/title&gt;
        &lt;/heading&gt;
        &lt;seclaw:bodytext&gt;
          &lt;seclaw:digestgrp&gt;
            &lt;heading&gt;&lt;title&gt;Subject Matter&lt;/title&gt;&lt;/heading&gt;
            &lt;seclaw:digest&gt;
              &lt;seclaw:digestinfo&gt;
                &lt;seclaw:subjectmatterreference&gt;
                  &lt;ref:crossreference&gt;
                    &lt;ref:content&gt;What is a business?&lt;/ref:content&gt;
                    &lt;ref:locator&gt;
                      &lt;ref:locator-key&gt;
                        &lt;ref:key-name name="DOC-ID"/&gt;
                        &lt;ref:key-value value="0M2S-0M2S_29007"/&gt;
                      &lt;/ref:locator-key&gt;
                    &lt;/ref:locator&gt;
                  &lt;/ref:crossreference&gt;
            
</codeblock>
        </section>

        <section>
          <title>Source XML showing FIRST <sourcexml>bodytext/h</sourcexml> with a
              <sourcexml>remotelink</sourcexml></title>
          <codeblock>

&lt;comm:body&gt;
  &lt;level leveltype="landingpage"&gt;
    &lt;heading&gt;
      &lt;title&gt;Relevant factors to be considered in granting order&lt;/title&gt;
    &lt;/heading&gt;
    &lt;level leveltype="documentlinks"&gt;
      &lt;heading&gt;
        &lt;title&gt;Document Links &lt;/title&gt;
      &lt;/heading&gt;
      &lt;bodytext searchtype="Guidance"&gt;
        &lt;!-- NOTE: there is usually a &lt;h&gt; here without a &lt;remotelink&gt; but in this example it is missing. --&gt;
        &lt;h&gt;
          &lt;remotelink dpsi="0L6Q" remotekey1="DOC-ID" remotekey2="0L6Q_15416" service="DOC-ID"
            &gt;Heading&lt;/remotelink&gt;
        &lt;/h&gt;
            
</codeblock>
        </section>
        <section>
          <title>Target XML showing FIRST <sourcexml>bodytext/h</sourcexml> with a
              <sourcexml>remotelink</sourcexml></title>
          <codeblock>

&lt;seclaw:body&gt;
  &lt;seclaw:level leveltype="landingpage"&gt;
    &lt;heading&gt;
      &lt;title&gt;Relevant factors to be considered in granting order&lt;/title&gt;
    &lt;/heading&gt;
    &lt;seclaw:bodytext&gt;
      &lt;seclaw:level leveltype="digestgroups"&gt;
        &lt;heading&gt;
          &lt;title&gt;Document Links &lt;/title&gt;
        &lt;/heading&gt;
        &lt;seclaw:bodytext&gt;
          &lt;seclaw:digestgrp&gt;
            &lt;!-- NOTE: this is no heading for this &lt;digestgrp&gt; --&gt;
            &lt;seclaw:digest&gt;
              &lt;seclaw:digestinfo&gt;
                &lt;seclaw:subjectmatterreference&gt;
                  &lt;ref:crossreference&gt;
                    &lt;ref:content&gt;Heading&lt;/ref:content&gt;
                    &lt;ref:locator&gt;
                      &lt;ref:locator-key&gt;
                        &lt;ref:key-name name="DOC-ID"/&gt;
                        &lt;ref:key-value value="0L6Q-0L6Q_15416"/&gt;
                      &lt;/ref:locator-key&gt;
                    &lt;/ref:locator&gt;
                  &lt;/ref:crossreference&gt;
            
</codeblock>
        </section>

        <section>
          <title>Source XML showing data character sequences mapping to
              <targetxml>seclaw:subjectmattertext</targetxml></title>
          <codeblock>

&lt;h&gt;Australian Family Law State Legislation &gt; Status of Children &gt; &lt;remotelink dpsi="0KNG" remotekey1="DOC-ID" remotekey2="0KNG_571563" service="DOC-ID"&gt;[60,010] General nature of the legislation&lt;/remotelink&gt;&lt;/h&gt;
            
</codeblock>
        </section>

        <section>
          <title>Target XML showing data character sequences mapped to
              <targetxml>seclaw:subjectmattertext</targetxml></title>
          <codeblock>

&lt;seclaw:subjectmatterreference&gt;
  &lt;seclaw:subjectmattertext&gt;Australian Family Law State Legislation &gt; Status of Children &gt;&lt;/seclaw:subjectmattertext&gt;
    &lt;ref:crossreference&gt;
      &lt;ref:content&gt;[60,010] General nature of the legislation&lt;/ref:content&gt;
      &lt;ref:locator&gt;
        &lt;ref:locator-key&gt;
          &lt;ref:key-name name="DOC-ID"/&gt;
          &lt;ref:key-value value="0KNG-0KNG_5715631"/&gt;
        &lt;/ref:locator-key&gt;
      &lt;/ref:locator&gt;
    &lt;/ref:crossreference&gt;
&lt;/seclaw:subjectmatterreference&gt;
            
</codeblock>
        </section>

        <section>
          <title>Source XML showing multiple <sourcexml>remotelink</sourcexml> elements and use of
              <targetxml>connector</targetxml></title>
          <codeblock>

&lt;h&gt;
&lt;remotelink dpsi="0M2T" remotekey1="DOC-ID" remotekey2="0M2T_833812" service="DOC-
ID"&gt;Australian Encyclopaedia of Forms &amp; Precedents &gt; Franchise Agreements &gt; 
Introduction to franchise agreements &gt; [4020]
&lt;/remotelink&gt;, 
&lt;remotelink dpsi="0M2T" remotekey1="DOC-ID" remotekey2="0M2T_833832" service="DOC-
ID"&gt;[4115]
&lt;/remotelink&gt;
&lt;/h&gt;
            
</codeblock>
        </section>

        <section>
          <title>Target XML showing multiple <sourcexml>remotelink</sourcexml> elements and use of
              <targetxml>connector</targetxml></title>
          <codeblock>

&lt;seclaw:subjectmatterreference&gt;
  &lt;ref:crossreference&gt;
    &lt;ref:content&gt;Australian Encyclopaedia of Forms &amp; Precedents &gt; Franchise Agreements 
&gt; Introduction to franchise agreements &gt; [4020]&lt;/ref:content&gt;
    &lt;ref:locator&gt;
      &lt;ref:locator-key&gt;
        &lt;ref:key-name name="DOC-ID"/&gt;
        &lt;ref:key-value value="0M2T-0M2T_833812"/&gt;
      &lt;/ref:locator-key&gt;
    &lt;/ref:locator&gt;
  &lt;/ref:crossreference&gt;
  &lt;connector&gt;, &lt;/connector&gt;
  &lt;ref:crossreference&gt;
    &lt;ref:content&gt;[4115]&lt;/ref:content&gt;
    &lt;ref:locator&gt;
      &lt;ref:locator-key&gt;
        &lt;ref:key-name name="DOC-ID"/&gt;
        &lt;ref:key-value value="0M2T-0M2T_833832"/&gt;
      &lt;/ref:locator-key&gt;
    &lt;/ref:locator&gt;
  &lt;/ref:crossreference&gt;
&lt;/seclaw:subjectmatterreference&gt;
            
</codeblock>
        </section>
        <section>
          <title>Changes</title>
          <p>2014-06-18 <ph id="change_20140618_JCG">Clarified that the references to the conversion of <sourcexml>lnlink</sourcexml> to <targetxml>ref:alternaterendition</targetxml> were and are only to
            <sourcexml>lnlink/@service="ATTACHMENT"</sourcexml>. This is not a rule change, but simply some additional text, 
            since future Landing Page documents may contain other kinds of <sourcexml>lnlink</sourcexml> elements such as
            <sourcexml>lnlink/@service="QUERYLINK"</sourcexml> and these should be either suppressed or converted to <targetxml>ref:lnlink</targetxml>, as specified in the section "General Markup".</ph></p>
        </section>
  </body>
    </topic>

    <topic id="pg-landing-guidance-3">
      <title>bodytext/p <lnpid>id-CCCC-10202</lnpid></title>
      <body>
        <p>Each <sourcexml>bodytext/p</sourcexml> causes a new <targetxml>seclaw:digest</targetxml>
          and child <targetxml>seclaw:digestinfo</targetxml> to be created. </p>
        <p><sourcexml>bodytext/p</sourcexml> then becomes either
            <targetxml>seclaw:subjectmatterreference</targetxml> or
            <targetxml>ref:subjectmattercite</targetxml> depending on its contents:</p>
        <ul>
          <li>If the <sourcexml>p</sourcexml>, or any of its subelements, does <b>not</b> contain a
              <sourcexml>ci:cite</sourcexml>, then a
              <targetxml>seclaw:subjectmatterreference</targetxml> element is created. In this case
            the content of <sourcexml>p</sourcexml> and <sourcexml>p/text</sourcexml> is moved to
            the target document as the content of the created
              <targetxml>seclaw:subjectmatterreference</targetxml> element's children: <ul>
              <li><targetxml>seclaw:subjectmattertext</targetxml></li>
              <li><targetxml>ref:crossreference</targetxml></li>
              <li><targetxml>ref:lnlink</targetxml></li>
              <li><targetxml>url</targetxml></li>
              <li><targetxml>ref:referencestatusgroup</targetxml></li>
              <li><targetxml>connector</targetxml></li>
              <li><targetxml>inlinenote</targetxml></li>
              <li><targetxml>ref:alternaterenditions</targetxml></li>
              <li><targetxml>byline</targetxml>)</li>
            </ul> The start-tag and end-tag for <sourcexml>text</sourcexml> (but not the element
            content) are dropped. Any sequence of data characters that occur as a direct child of
              <sourcexml>p/text</sourcexml> are wrapped with a
              <targetxml>seclaw:subjectmattertext</targetxml> element. <note>There is one an
              exception to the above sentence: if an entire sequence of data characters consists of
                <b>only</b> punctuation and/or the words "and" or "or", this sequence should be
              wrapped with <targetxml>connector</targetxml> instead of
                <targetxml>seclaw:subjectmattertext</targetxml>.</note> A child element with the
            XPath <sourcexml>p/text/emph</sourcexml> is also wrapped with a
              <targetxml>seclaw:subjectmattertext</targetxml> element, and the
              <sourcexml>emph</sourcexml> is converted using the common element instructions for
            this element provided in the "General Markup" part of the conversion instructions. With
            the exception of <sourcexml>date</sourcexml>,
              <sourcexml>lnlink/@service="ATTACHMENT"</sourcexml> and <sourcexml>person</sourcexml>
            (see notes below), all subelements of <sourcexml>p</sourcexml> and
            <sourcexml>p/text</sourcexml> (such as <sourcexml>url</sourcexml>, <sourcexml>remotelink</sourcexml>, and all other
            <sourcexml>lnlink</sourcexml> elements) are converted using the common element instructions
            for these elements provided in the "General Markup" part of the conversion instructions.
              <note>Convert any child <sourcexml>date</sourcexml> elements to
                <targetxml>ref:referencestatusgroup</targetxml> as described in the subtopic <xref href="#pg-landing-referencestatusgroup"/>.</note>
            <note>Convert any child <sourcexml>lnlink/@service="ATTACHMENT"</sourcexml> elements to
                <targetxml>ref:alternaterenditions</targetxml> as described in the subtopic <xref href="#pg-landing-altrendition"/>. </note>
            <note>Convert any child <sourcexml>person</sourcexml> elements to
                <targetxml>byline</targetxml> as described in the subtopic <xref href="#pg-landing-byline"/>. </note>
            <note>There is currently no scenario where there are multiple
                <sourcexml>note</sourcexml> or <sourcexml>person</sourcexml> elements in this
              context, and given our understanding of the way the data is generated this is not even
              theorectically possible. It <b>is</b> theorectically possible to have multiple
                <sourcexml>lnlink</sourcexml> child elements and these become multiple
                <sourcexml>ref:alternaterendition</sourcexml> elements within a single
                <sourcexml>ref:alternaterendition</sourcexml>.</note>
          </li>
        <li>If the <sourcexml>p</sourcexml>, or any of its subelements,
          <b>does</b> contain a <sourcexml>ci:cite</sourcexml>, then a
            <targetxml>ref:subjectmattercite</targetxml> element is created. The start-tag and
          end-tag for <sourcexml>text</sourcexml> (but not the element content) are dropped. Any
          data character content of the <sourcexml>p</sourcexml> and <sourcexml>p/text</sourcexml>
          becomes the direct content of the created <targetxml>ref:subjectmattercite</targetxml>.
          All subelements of <sourcexml>p</sourcexml> and <sourcexml>p/text </sourcexml> (such as
            <sourcexml>emph</sourcexml> and <sourcexml>ci:cite</sourcexml>) are converted using the
          common element instructions for these elements provided in the "General Markup" part of
          the conversion instructions. </li>
        </ul>
        <p>The created <targetxml>seclaw:digest</targetxml> and
            <targetxml>seclaw:digestinfo</targetxml> are closed when a
            <sourcexml>bodytext/h</sourcexml> start-tag, <sourcexml>bodytext/p</sourcexml>
          start-tag, or the <sourcexml>bodytext</sourcexml> end-tag is encountered. </p>

        <section>
          <title>Source XML</title>
          <codeblock>

&lt;comm:body&gt;
  &lt;level leveltype="landingpage"&gt;
    &lt;heading&gt;
      &lt;title&gt;Nature of disputes &lt;/title&gt;
    &lt;/heading&gt;
    &lt;level leveltype="documentlinks"&gt;
      &lt;heading&gt;
        &lt;title&gt;Document Links &lt;/title&gt;
      &lt;/heading&gt;
      &lt;bodytext searchtype="Guidance"&gt;
        &lt;h&gt;Nature of disputes&lt;/h&gt;
        &lt;!-- ...1... --&gt;
        &lt;p&gt;
          &lt;remotelink dpsi="0KKU" remotekey1="DOC-ID" remotekey2="0KKU_9523" service="DOC-ID"
            &gt;Sale of goods&lt;/remotelink&gt;
        &lt;/p&gt;
        &lt;!-- ...2... --&gt;
      &lt;/bodytext&gt;
    &lt;/level&gt;
  &lt;/level&gt;
&lt;/comm:body&gt;
            
</codeblock>
        </section>
        <section>
          <title>Target XML</title>
          <codeblock>

&lt;seclaw:body&gt;
  &lt;seclaw:level leveltype="landingpage"&gt;
    &lt;heading&gt;
      &lt;title&gt;Nature of disputes &lt;/title&gt;
    &lt;/heading&gt;
    &lt;seclaw:bodytext&gt;
      &lt;seclaw:level leveltype="digestgroups"&gt;
        &lt;heading&gt;
          &lt;title&gt;Document Links &lt;/title&gt;
        &lt;/heading&gt;
        &lt;seclaw:bodytext&gt;
          &lt;seclaw:digestgrp&gt;
            &lt;heading&gt;&lt;title&gt;Nature of disputes&lt;/title&gt;&lt;/heading&gt;
            &lt;!-- ...1... --&gt;
            &lt;seclaw:digest&gt;
              &lt;seclaw:digestinfo&gt;
                &lt;seclaw:subjectmatterreference&gt;
                  &lt;ref:crossreference&gt;
                    &lt;ref:content&gt;Sale of goods&lt;/ref:content&gt;
                    &lt;ref:locator&gt;
                      &lt;ref:locator-key&gt;
                        &lt;ref:key-name name="DOC-ID"/&gt;
                        &lt;ref:key-value value="0KKU-0KKU_9523"/&gt;
                      &lt;/ref:locator-key&gt;
                    &lt;/ref:locator&gt;
                  &lt;/ref:crossreference&gt;
                &lt;/seclaw:subjectmatterreference&gt;
              &lt;/seclaw:digestinfo&gt;
            &lt;/seclaw:digest&gt;
            &lt;!-- ...2... --&gt;
          &lt;/seclaw:digestgrp&gt;
        &lt;/seclaw:bodytext&gt;
      &lt;/seclaw:level&gt;
    &lt;/seclaw:bodytext&gt;
  &lt;/seclaw:level&gt;
&lt;/seclaw:body&gt;
            
</codeblock>
        </section>

        <section>
          <title>Source XML showing data character sequences mapping to
              <targetxml>seclaw:subjectmattertext</targetxml></title>
          <codeblock>

&lt;p&gt;&lt;text&gt;Australian Family Law State Legislation &gt; Status of Children &gt; &lt;remotelink dpsi="0KNG" remotekey1="DOC-ID" remotekey2="0KNG_571563" service="DOC-ID"&gt;[60,010] General nature of the legislation&lt;/remotelink&gt;&lt;/text&gt;&lt;/p&gt;
            
</codeblock>
        </section>

        <section>
          <title>Target XML showing data character sequences mapped to
              <targetxml>seclaw:subjectmattertext</targetxml></title>
          <codeblock>

&lt;seclaw:subjectmatterreference&gt;
  &lt;seclaw:subjectmattertext&gt;Australian Family Law State Legislation &gt; Status of Children &gt;&lt;/seclaw:subjectmattertext&gt;
    &lt;ref:crossreference&gt;
      &lt;ref:content&gt;[60,010] General nature of the legislation&lt;/ref:content&gt;
      &lt;ref:locator&gt;
        &lt;ref:locator-key&gt;
          &lt;ref:key-name name="DOC-ID"/&gt;
          &lt;ref:key-value value="0KNG-0KNG_5715631"/&gt;
        &lt;/ref:locator-key&gt;
      &lt;/ref:locator&gt;
    &lt;/ref:crossreference&gt;
&lt;/seclaw:subjectmatterreference&gt;
            
</codeblock>
        </section>        

        <section>
          <title>Source XML showing data character sequences within <sourcexml>emph</sourcexml> mapping to
              <targetxml>seclaw:subjectmattertext</targetxml></title>
          <codeblock>

&lt;p&gt;
&lt;text&gt;
&lt;emph typestyle="it"&gt;Austra Tanks Pty Ltd v Running &lt;/emph&gt;[1982] 2 NSWLR 840&lt;/text&gt;
&lt;/p&gt;
            
</codeblock>
        </section>


        <section>
          <title>Target XML showing data character sequences within <sourcexml>emph</sourcexml> mapping to
            <targetxml>seclaw:subjectmattertext</targetxml></title>
          <codeblock>

&lt;seclaw:subjectmatterreference&gt;
&lt;seclaw:subjectmattertext&gt;&lt;emph typestyle="it"&gt;Austra Tanks Pty Ltd v Running &lt;/emph&gt;[1982] 2 NSWLR 840&lt;/seclaw:subjectmattertext&gt;
&lt;/seclaw:subjectmatterreference&gt;
            
</codeblock>
        </section>

        <section>
          <title>Source XML showing multiple <sourcexml>remotelink</sourcexml> elements and use of
              <targetxml>connector</targetxml></title>
          <codeblock>

&lt;p&gt;&lt;text&gt;&lt;remotelink dpsi="0M2T" remotekey1="DOC-ID" remotekey2="0M2T_833812" service="DOC-
ID"&gt;Australian Encyclopaedia of Forms &amp; Precedents &gt; Franchise Agreements &gt; 
Introduction to franchise agreements &gt; [4020]
&lt;/remotelink&gt;, 
&lt;remotelink dpsi="0M2T" remotekey1="DOC-ID" remotekey2="0M2T_833832" service="DOC-
ID"&gt;[4115]
&lt;/remotelink&gt;&lt;/text&gt;&lt;/p&gt;
            
</codeblock>
        </section>

        <section>
          <title>Target XML showing multiple <sourcexml>remotelink</sourcexml> elements and use of
              <targetxml>connector</targetxml></title>
          <codeblock>

&lt;seclaw:subjectmatterreference&gt;
  &lt;ref:crossreference&gt;
    &lt;ref:content&gt;Australian Encyclopaedia of Forms &amp; Precedents &gt; Franchise Agreements 
&gt; Introduction to franchise agreements &gt; [4020]&lt;/ref:content&gt;
    &lt;ref:locator&gt;
      &lt;ref:locator-key&gt;
        &lt;ref:key-name name="DOC-ID"/&gt;
        &lt;ref:key-value value="0M2T-0M2T_833812"/&gt;
      &lt;/ref:locator-key&gt;
    &lt;/ref:locator&gt;
  &lt;/ref:crossreference&gt;
  &lt;connector&gt;, &lt;/connector&gt;
  &lt;ref:crossreference&gt;
    &lt;ref:content&gt;[4115]&lt;/ref:content&gt;
    &lt;ref:locator&gt;
      &lt;ref:locator-key&gt;
        &lt;ref:key-name name="DOC-ID"/&gt;
        &lt;ref:key-value value="0M2T_0M2T_833832"/&gt;
      &lt;/ref:locator-key&gt;
    &lt;/ref:locator&gt;
  &lt;/ref:crossreference&gt;
&lt;/seclaw:subjectmatterreference&gt;
            
</codeblock>
        </section>
        <section>
          <title>Changes</title>
          <p>2014-06-18 <ph id="change_20140618_JCG">Clarified that the references to the conversion of <sourcexml>lnlink</sourcexml> to <targetxml>ref:alternaterendition</targetxml> were and are only to
            <sourcexml>lnlink/@service="ATTACHMENT"</sourcexml>. This is not a rule change, but simply some additional text, 
            since future Landing Page documents may contain other kinds of <sourcexml>lnlink</sourcexml> elements such as
            <sourcexml>lnlink/@service="QUERYLINK"</sourcexml> and these should be either suppressed or converted to <targetxml>ref:lnlink</targetxml>, as specified in the section "General Markup".</ph></p>
        </section>
      </body>
    </topic>

    <topic id="pg-landing-guidance-4">
      <title>bodytext/pgrp <lnpid>id-CCCC-10203</lnpid></title>
      <body>
        <p><sourcexml>bodytext/pgrp</sourcexml> becomes <sourcexml>toc</sourcexml>. </p>

        <section>
          <title>Source XML</title>
          <codeblock>

&lt;comm:body&gt;
  &lt;level leveltype="landingpage"&gt;
    &lt;heading&gt;
      &lt;title&gt;Subject Matter &lt;/title&gt;
    &lt;/heading&gt;
    &lt;level leveltype="documentlinks"&gt;
      &lt;heading&gt;
        &lt;title&gt;Document Links &lt;/title&gt;
      &lt;/heading&gt;
      &lt;bodytext searchtype="Guidance"&gt;
        &lt;h&gt;Subject Matter &lt;/h&gt;
        &lt;h&gt;
          &lt;remotelink dpsi="0M2S" remotekey1="DOC-ID" remotekey2="0M2S_29007" service="DOC-ID"
            &gt;What is a business? &lt;/remotelink&gt;
        &lt;/h&gt;
        &lt;pgrp&gt;
          &lt;!-- ...1... --&gt;
        &lt;/pgrp&gt;
        &lt;!-- ...2... --&gt;
      &lt;/bodytext&gt;
    &lt;/level&gt;
  &lt;/level&gt;
&lt;/comm:body&gt;
            
</codeblock>
        </section>
        <section>
          <title>Target XML</title>
          <codeblock>

&lt;seclaw:body&gt;
  &lt;seclaw:level leveltype="landingpage"&gt;
    &lt;heading&gt;
      &lt;title&gt;Subject Matter &lt;/title&gt;
    &lt;/heading&gt;
    &lt;seclaw:bodytext&gt;
      &lt;seclaw:level leveltype="digestgroups"&gt;
        &lt;heading&gt;
          &lt;title&gt;Document Links &lt;/title&gt;
        &lt;/heading&gt;
        &lt;seclaw:bodytext&gt;
          &lt;seclaw:digestgrp&gt;
            &lt;heading&gt;&lt;title&gt;Subject Matter&lt;/title&gt;&lt;/heading&gt;
            &lt;seclaw:digest&gt;
              &lt;seclaw:digestinfo&gt;
                &lt;seclaw:subjectmatterreference&gt;
                  &lt;ref:crossreference&gt;
                    &lt;ref:content&gt;What is a business?&lt;/ref:content&gt;
                    &lt;ref:locator&gt;&lt;ref:locator-key&gt;
                      &lt;ref:key-name name="DOC-ID"/&gt;
                      &lt;ref:key-value value="0M2S-0M2S_29007"/&gt;
                    &lt;/ref:locator-key&gt;
                    &lt;/ref:locator&gt;
                  &lt;/ref:crossreference&gt;
                  &lt;toc&gt;
                    &lt;!-- ...1... --&gt;
                  &lt;/toc&gt;
                &lt;/seclaw:subjectmatterreference&gt;
              &lt;/seclaw:digestinfo&gt;
            &lt;/seclaw:digest&gt;
            &lt;!-- ...2... --&gt;
          &lt;/seclaw:digestgrp&gt;
        &lt;/seclaw:bodytext&gt;
      &lt;/seclaw:level&gt;
    &lt;/seclaw:bodytext&gt;
  &lt;/seclaw:level&gt;
&lt;/seclaw:body&gt;
            
</codeblock>
        </section>

      </body>
    </topic>

    <topic id="pg-landing-guidance-5">
      <title>bodytext/pgrp/p <lnpid>id-CCCC-10204</lnpid></title>
      <body>
        <p><sourcexml>bodytext/pgrp/p</sourcexml> causes a new <targetxml>toc-entry</targetxml> to
          be created. The first <sourcexml>text</sourcexml> child element of these
            <sourcexml>bodytext/pgrp/p</sourcexml> elements always starts with a child
            <sourcexml>remotelink</sourcexml> or <sourcexml>url</sourcexml>, or an
            <sourcexml>emph</sourcexml> that contains only a child <sourcexml>remotelink</sourcexml>
          or <sourcexml>url</sourcexml>. The <sourcexml>url</sourcexml> always contains a
            <sourcexml>remotelink</sourcexml> child element. Thus, there will always be a
            <sourcexml>remotelink</sourcexml> child. </p>
            
            <p><targetxml>toc-entry/@ref:locatorkeyprotocol</targetxml> is set to "DOC-ID" and the  <sourcexml>remotelink</sourcexml> is parsed and converted as follows. <ul>
            <li>If <sourcexml>remotelink/@remotekey1="DOC-ID":</sourcexml><ul>
              <li><targetxml>toc-entry/@ref:locatorkey</targetxml> is set to the the value of <sourcexml>remotelink/@dpsi</sourcexml>, followed by a hyphen ("-"). Then it is concatenated with the value of <sourcexml>remotelink/@remotekey2</sourcexml>. If and only if <sourcexml>remotelink/@remotelink2</sourcexml> is <b>not</b> present, use <sourcexml>remotelink/@refpt</sourcexml> instead.</li>
              </ul></li>
            <li>If <sourcexml>remotelink/@remotekey1="REFPTID":</sourcexml><ul>
              <li><targetxml>toc-entry/@ref:locatorkey</targetxml> is set to the the value of <sourcexml>remotelink/@dpsi</sourcexml>, followed by a hyphen ("-"). Then it is concatenated with the value of <sourcexml>remotelink/@docidref</sourcexml>. If <sourcexml>remotelink/@docidref</sourcexml> is not present, this is considered a data error. </li>
              <li><targetxml>toc-entry/@anchoridref</targetxml> is set to the value of <sourcexml>remotelink/@refpt</sourcexml>. If and only if <sourcexml>remotelink/@refpt</sourcexml> is <b>not</b> present, use <sourcexml>remotelink/@remotelink2</sourcexml> instead. If this value begins with a number, an underscore (_) is added to the front.</li>
            </ul>
              </li>
          </ul>
          All other attributes of <sourcexml>remotelink</sourcexml> are dropped.
          </p>
          
          <note>If <sourcexml>remotelink/@dpsi</sourcexml> is not present, the value from <sourcexml>docinfo:dpsi/@id-string</sourcexml> is used. If there is no <sourcexml>docinfo:dpsi/@id-string</sourcexml> value, the value from the LBU manifest 
          file is captured and used.</note>
         
        <p>Within the new <targetxml>toc-entry</targetxml> a child <targetxml>heading</targetxml> is
          also created, then <sourcexml>bodytext/pgrp/p</sourcexml> becomes
            <targetxml>title</targetxml>. The start-tags and end-tags
          (but not the element content) of <sourcexml>p</sourcexml> child elements <sourcexml>text</sourcexml>,
            <sourcexml>url</sourcexml>, and <sourcexml>remotelink</sourcexml> are dropped.</p>
        <p>The newly created <targetxml>heading</targetxml> and <targetxml>toc-entry</targetxml> are
          closed immediately after the <targetxml>title</targetxml> is closed. </p>
          
        <note>If no <sourcexml>remotelink</sourcexml> exists within a
            <sourcexml>bodytext/pgrp/p</sourcexml>, the given conversion instructions still apply
          except that the optional attributes
            <targetxml>toc-entry/@ref:locatorkeyprotocol</targetxml> and
            <targetxml>toc-entry/@ref:locatorkey</targetxml> are not populated. This scenario of no
            <sourcexml>remotelink</sourcexml> does not currently happen, but is mentioned since it
          is a possibility. </note>

        <section>
          <title>Source XML</title>
          <codeblock>

&lt;comm:body&gt;
  &lt;level leveltype="landingpage"&gt;
    &lt;heading&gt;
      &lt;title&gt;Subject Matter &lt;/title&gt;
    &lt;/heading&gt;
    &lt;level leveltype="documentlinks"&gt;
      &lt;heading&gt;
        &lt;title&gt;Document Links &lt;/title&gt;
      &lt;/heading&gt;
      &lt;bodytext searchtype="Guidance"&gt;
        &lt;h&gt;Subject Matter &lt;/h&gt;
        &lt;h&gt;...&lt;/h&gt;
          &lt;remotelink dpsi="0M2S" remotekey1="DOC-ID" remotekey2="0M2S_29007" service="DOC-ID"
            &gt;What is a business? &lt;/remotelink&gt;
        &lt;/h&gt;
        &lt;pgrp&gt;
          &lt;p&gt;
            &lt;text&gt;
              &lt;remotelink dpsi="0M2S" refpt="CITEID_7340" remotekey1="REFPTID" docidref="EXAMPLE_DOCID1" service="DOC-ID"
                status="valid"&gt;Introduction &lt;/remotelink&gt;
            &lt;/text&gt;
          &lt;/p&gt;
          &lt;p&gt;
            &lt;text&gt;
              &lt;remotelink dpsi="0M2S" refpt="CITEID_7341" remotekey1="REFPTID" docidref="EXAMPLE_DOCID2" service="DOC-ID"
                status="valid"&gt;Goodwill &lt;/remotelink&gt;
            &lt;/text&gt;
          &lt;/p&gt;
          &lt;!-- ...1... --&gt;
        &lt;/pgrp&gt;
        &lt;!-- ...2... --&gt;
      &lt;/bodytext&gt;
    &lt;/level&gt;
  &lt;/level&gt;
&lt;/comm:body&gt;
            
</codeblock>
        </section>
        <section>
          <title>Target XML</title>
          <codeblock>

&lt;seclaw:body&gt;
  &lt;seclaw:level leveltype="landingpage"&gt;
    &lt;heading&gt;
      &lt;title&gt;Subject Matter &lt;/title&gt;
    &lt;/heading&gt;
    &lt;seclaw:bodytext&gt;
      &lt;seclaw:level leveltype="digestgroups"&gt;
        &lt;heading&gt;
          &lt;title&gt;Document Links &lt;/title&gt;
        &lt;/heading&gt;
        &lt;seclaw:bodytext&gt;
          &lt;seclaw:digestgrp&gt;
            &lt;heading&gt;&lt;title&gt;Subject Matter&lt;/title&gt;&lt;/heading&gt;
            &lt;seclaw:digest&gt;
              &lt;seclaw:digestinfo&gt;
                &lt;seclaw:subjectmatterreference&gt;
                  &lt;ref:crossreference&gt;
                    &lt;ref:content&gt;What is a business?&lt;/ref:content&gt;
                    &lt;ref:locator&gt;&lt;ref:locator-key&gt;
                      &lt;ref:key-name name="DOC-ID"/&gt;
                      &lt;ref:key-value value="0M2S-0M2S_29007"/&gt;
                    &lt;/ref:locator-key&gt;
                    &lt;/ref:locator&gt;
                  &lt;/ref:crossreference&gt;
                  &lt;toc&gt;
                    &lt;toc-entry ref:locatorkeyprotocol="DOC-ID" ref:locatorkey="OM2S-EXAMPLE_DOCID1" anchoridref="CITEID_7340"&gt;
                      &lt;heading&gt;&lt;title&gt;Introduction&lt;/title&gt;&lt;/heading&gt;
                    &lt;/toc-entry&gt;
                    &lt;toc-entry ref:locatorkeyprotocol="DOC-ID" ref:locatorkey="OM2S-EXAMPLE_DOCID2" anchoridref="CITEID_7341"&gt;
                      &lt;heading&gt;&lt;title&gt;Goodwill&lt;/title&gt;&lt;/heading&gt;
                    &lt;/toc-entry&gt;
                    &lt;!-- ...1... --&gt;
                  &lt;/toc&gt;
                &lt;/seclaw:subjectmatterreference&gt;
              &lt;/seclaw:digestinfo&gt;
            &lt;/seclaw:digest&gt;
            &lt;!-- ...2... --&gt;
          &lt;/seclaw:digestgrp&gt;
        &lt;/seclaw:bodytext&gt;
      &lt;/seclaw:level&gt;
    &lt;/seclaw:bodytext&gt;
  &lt;/seclaw:level&gt;
&lt;/seclaw:body&gt;
            
</codeblock>
        </section>

      </body>
    </topic>


  </topic>


  <topic id="pg-landing-other">
    <title>Landing Page Type NOT "Home", "Other Resources", or "Guidance" <lnpid>id-CCCC-10205</lnpid></title>
    <body>
      <p>These conversions apply only to child elements of <sourcexml>bodytext</sourcexml> when
          <sourcexml>bodytext/@searchtype</sourcexml> is NOT equal to "Home", "Other Resources",
        or "Guidance". </p>
    </body>

    <topic id="pg-landing-other-3">
      <title>bodytext/h <lnpid>id-CCCC-10206</lnpid></title>
      <body>
        <p>Each <sourcexml>bodytext/h</sourcexml> causes a new
            <targetxml>seclaw:digestgrp</targetxml> and child <targetxml>heading</targetxml> to be
          created, then <sourcexml>bodytext/h</sourcexml> becomes <targetxml>title</targetxml>, and
          then the <targetxml>heading</targetxml> is closed. The created
            <targetxml>seclaw:digestgrp</targetxml> is closed when the next
            <sourcexml>bodytext/h</sourcexml> start-tag or the <sourcexml>bodytext</sourcexml>
          end-tag is encountered. </p>

        <section>
          <title>Source XML</title>
          <codeblock>

&lt;comm:body&gt;
  &lt;level leveltype="landingpage"&gt;
    &lt;heading&gt;
      &lt;title&gt;Subject Matter &lt;/title&gt;
    &lt;/heading&gt;
    &lt;level leveltype="documentlinks"&gt;
      &lt;heading&gt;
        &lt;title&gt;Document Links &lt;/title&gt;
      &lt;/heading&gt;
      &lt;bodytext searchtype="Legislation"&gt;
        &lt;h&gt;Overview&lt;/h&gt;
        &lt;p&gt;
          &lt;!-- ...1... --&gt;
        &lt;/p&gt;
        &lt;!-- ...2... --&gt;
        &lt;h&gt;Buying shares in a company &lt;/h&gt;
        &lt;p&gt;
          &lt;!-- ...3... --&gt;
        &lt;/p&gt;
        &lt;!-- ...4... --&gt;
      &lt;/bodytext&gt;
    &lt;/level&gt;
  &lt;/level&gt;
&lt;/comm:body&gt;
      
            
</codeblock>
        </section>
        <section>
          <title>Target XML</title>
          <codeblock>

&lt;seclaw:body&gt;
  &lt;seclaw:level leveltype="landingpage"&gt; 
    &lt;heading&gt;
      &lt;title&gt;Subject Matter&lt;/title&gt;
    &lt;/heading&gt;
    &lt;seclaw:bodytext&gt;
      &lt;seclaw:level leveltype="digestgroups"&gt;
        &lt;heading&gt;
          &lt;title&gt;Document Links &lt;/title&gt;
        &lt;/heading&gt;
        &lt;seclaw:bodytext&gt;
          &lt;seclaw:digestgrp&gt;
            &lt;heading&gt;&lt;title&gt;Overview&lt;/title&gt;&lt;/heading&gt;
            &lt;seclaw:digest&gt;
              &lt;seclaw:digestinfo&gt;
                &lt;!-- ...1... --&gt;
              &lt;/seclaw:digestinfo&gt;
            &lt;/seclaw:digest&gt;
            &lt;!-- ...2... --&gt;
          &lt;/seclaw:digestgrp&gt;
          &lt;seclaw:digestgrp&gt;
            &lt;heading&gt;&lt;title&gt;Buying shares in a company&lt;/title&gt;&lt;/heading&gt;
            &lt;seclaw:digest&gt;
              &lt;seclaw:digestinfo&gt;
                &lt;!-- ...3... --&gt;
              &lt;/seclaw:digestinfo&gt;
            &lt;/seclaw:digest&gt;
            &lt;!-- ...4... --&gt;
          &lt;/seclaw:digestgrp&gt;
        &lt;/seclaw:bodytext&gt;
      &lt;/seclaw:level&gt;        
    &lt;/seclaw:bodytext&gt;
  &lt;/seclaw:level&gt;
&lt;/seclaw:body&gt;
            
</codeblock>
        </section>

      </body>
    </topic>

    <topic id="pg-landing-other-4">
      <title>bodytext/p <lnpid>id-CCCC-10207</lnpid></title>
      <body>
        <p>Each <sourcexml>bodytext/p</sourcexml> causes a new <targetxml>seclaw:digest</targetxml>
          and child <targetxml>seclaw:digestinfo</targetxml> to be created, then <sourcexml>bodytext/p</sourcexml>  becomes either <targetxml>seclaw:subjectmatterreference</targetxml> or
              <targetxml>ref:subjectmattercite</targetxml> depending on its contents:</p>
          <ul>
            <li>If the <sourcexml>p</sourcexml>, or any of its subelements, does <b>not</b> contain
            a <sourcexml>ci:cite</sourcexml>, then a
              <targetxml>seclaw:subjectmatterreference</targetxml> element is created. In this case
            the content of <sourcexml>p</sourcexml> and <sourcexml>p/text</sourcexml> is moved to
            the target document as the content of the created
              <targetxml>seclaw:subjectmatterreference</targetxml> element's children: <ul>
              <li><targetxml>seclaw:subjectmattertext</targetxml></li>
              <li><targetxml>ref:crossreference</targetxml></li>
              <li><targetxml>ref:lnlink</targetxml></li>
              <li><targetxml>ref:referencestatusgroup</targetxml></li>
              <li><targetxml>connector</targetxml></li>
              <li><targetxml>inlinenote</targetxml></li>
              <li><targetxml>ref:alternaterenditions</targetxml></li>
              <li><targetxml>byline</targetxml>)</li>
            </ul> The start-tag and end-tag for <sourcexml>text</sourcexml> (but not the element
            content) are dropped. Any sequence of data characters that occur as a direct child of
              <sourcexml>p/text</sourcexml> are wrapped with a
              <targetxml>seclaw:subjectmattertext</targetxml> element. <note>There is one an
              exception to the above sentence: if an entire sequence of data characters consists of
                <b>only</b> punctuation and/or the words "and" or "or", this sequence should be
              wrapped with <targetxml>connector</targetxml> instead of
                <targetxml>seclaw:subjectmattertext</targetxml>.</note> A child element with the
            XPath <sourcexml>p/text/emph</sourcexml> is also wrapped with a
              <targetxml>seclaw:subjectmattertext</targetxml> element, and the
              <sourcexml>emph</sourcexml> is converted using the common element instructions for
            this element provided in the "General Markup" part of the conversion instructions. With
            the exception of <sourcexml>date</sourcexml>,
              <sourcexml>lnlink/@service="ATTACHMENT"</sourcexml> and <sourcexml>person</sourcexml>
            (see notes below), all subelements of <sourcexml>p</sourcexml> and
              <sourcexml>p/text</sourcexml> (such as <sourcexml>url</sourcexml>,
              <sourcexml>remotelink</sourcexml>, and all other <sourcexml>lnlink</sourcexml>
            elements) are converted using the common element instructions for these elements
            provided in the "General Markup" part of the conversion instructions. <note>Convert any
              child <sourcexml>date</sourcexml> elements to
                <targetxml>ref:referencestatusgroup</targetxml> as described in the subtopic <xref href="#pg-landing-referencestatusgroup"/>.</note>
            <note>Convert any child <sourcexml>lnlink/@service="ATTACHMENT"</sourcexml> elements to
                <targetxml>ref:alternaterenditions</targetxml> as described in the subtopic <xref href="#pg-landing-altrendition"/>. </note>
            <note>Convert any child <sourcexml>person</sourcexml> elements to
                <targetxml>byline</targetxml> as described in the subtopic <xref href="#pg-landing-byline"/>. </note>
            <note>There is currently no scenario where there are multiple
                <sourcexml>note</sourcexml> or <sourcexml>person</sourcexml> elements in this
              context, and given our understanding of the way the data is generated this is not even
              theorectically possible. It <b>is</b> theorectically possible to have multiple
                <sourcexml>lnlink</sourcexml> child elements and these become multiple
                <sourcexml>ref:alternaterendition</sourcexml> elements within a single
                <sourcexml>ref:alternaterendition</sourcexml>.</note>
          </li>
          <li>If the <sourcexml>p</sourcexml>, or any of its subelements,
            <b>does</b> contain a <sourcexml>ci:cite</sourcexml>, then a
              <targetxml>ref:subjectmattercite</targetxml> element is created. The start-tag and
            end-tag for <sourcexml>text</sourcexml> (but not the element content) are dropped. Any
            data character content of the <sourcexml>p</sourcexml> and <sourcexml>p/text</sourcexml>
            becomes the direct content of the created <targetxml>ref:subjectmattercite</targetxml>.
            All subelements of <sourcexml>p</sourcexml> and <sourcexml>p/text </sourcexml> (such as
              <sourcexml>emph</sourcexml> and <sourcexml>ci:cite</sourcexml>) are converted using
            the common element instructions for these elements provided in the "General Markup" part
            of the conversion instructions. </li>
            </ul>
          <p>The created <targetxml>seclaw:digest</targetxml> and
              <targetxml>seclaw:digestinfo</targetxml> are closed when a
              <sourcexml>bodytext/h</sourcexml> start-tag, <sourcexml>bodytext/p</sourcexml>
            start-tag, or the <sourcexml>bodytext</sourcexml> end-tag is encountered. </p>

        <section>
          <title>Source XML showing conversion to seclaw:subjectmatterreference</title>
          <codeblock>

&lt;comm:body&gt;
  &lt;level leveltype="landingpage"&gt;
    &lt;heading&gt;
      &lt;title&gt;Subject Matter &lt;/title&gt;
    &lt;/heading&gt;
    &lt;level leveltype="documentlinks"&gt;
      &lt;heading&gt;
        &lt;title&gt;Document Links &lt;/title&gt;
      &lt;/heading&gt;
      &lt;bodytext searchtype="Forms"&gt;
        &lt;h&gt;Buying shares in a company &lt;/h&gt;
        &lt;p&gt;
          &lt;text&gt;
            &lt;url&gt;
              &lt;remotelink
                href="http://www.asic.gov.au/asic/pdflib.nsf/LookupByFileName/2601.pdf/$file/2601.pdf"
                newwindow="YES" service="SEARCH" status="valid"&gt;ASIC &amp;#x2014; Form 2601
                Notification of intention to give financial assistance (PDF) &lt;/remotelink&gt;
            &lt;/url&gt;
          &lt;/text&gt;
        &lt;/p&gt;
        &lt;p&gt;
          &lt;text&gt;
            &lt;url&gt;
              &lt;remotelink
                href="http://www.asic.gov.au/asic/pdflib.nsf/LookupByFileName/2205.pdf/$file/2205.pdf"
                newwindow="YES" service="SEARCH" status="valid"&gt;ASIC &amp;#x2014; Form 2205
                Notification of resolutions regarding shares (PDF) &lt;/remotelink&gt;
            &lt;/url&gt;
          &lt;/text&gt;
        &lt;/p&gt;
        &lt;h&gt;...&lt;/h&gt;

</codeblock>
        </section>
        <section>
          <title>Target XML showing conversion to seclaw:subjectmatterreference</title>
          <codeblock>

&lt;seclaw:body&gt;
  &lt;seclaw:level leveltype="landingpage"&gt;
    &lt;heading&gt;
      &lt;title&gt;Subject Matter &lt;/title&gt;
    &lt;/heading&gt;
    &lt;seclaw:bodytext&gt;
      &lt;seclaw:level leveltype="digestgroups"&gt;
        &lt;heading&gt;
          &lt;title&gt;Document Links &lt;/title&gt;
        &lt;/heading&gt;
        &lt;seclaw:bodytext&gt;
          &lt;seclaw:digestgrp&gt;
            &lt;heading&gt;
              &lt;title&gt;Buying shares in a company&lt;/title&gt;
            &lt;/heading&gt;
            &lt;seclaw:digest&gt;
              &lt;seclaw:digestinfo&gt;
                &lt;seclaw:subjectmatterreference&gt;
                  &lt;ref:lnlink service="URL"&gt;
                    &lt;ref:marker&gt;ASIC &amp;#x2014; Form 2601 Notification of intention to give financial assistance (PDF) &lt;/ref:marker&gt;
                    &lt;ref:locator&gt;
                      &lt;ref:locator-key&gt;
                        &lt;ref:key-name name="URL"/&gt;
                        &lt;ref:key-value value="http://www.asic.gov.au/asic/pdflib.nsf/LookupByFileName/2601.pdf/$file/2601.pdf"/&gt;
                      &lt;/ref:locator-key&gt;
                      &lt;ref:locator-params&gt;
                        &lt;proc:param name="attachment-type" value="pdf"/&gt;
                      &lt;/ref:locator-params&gt;
                    &lt;/ref:locator&gt;
                  &lt;/ref:lnlink&gt;
                &lt;/seclaw:subjectmatterreference&gt;
              &lt;/seclaw:digestinfo&gt;
            &lt;/seclaw:digest&gt;
            &lt;seclaw:digest&gt;
              &lt;seclaw:digestinfo&gt;
                &lt;seclaw:subjectmatterreference&gt;
                  &lt;ref:lnlink service="URL"&gt;
                    &lt;ref:marker&gt;ASIC &amp;#x2014; Form 2205 Notification of resolutions regarding shares (PDF) &lt;/ref:marker&gt;
                    &lt;ref:locator&gt;
                      &lt;ref:locator-key&gt;
                        &lt;ref:key-name name="URL"/&gt;
                        &lt;ref:key-value value="http://www.asic.gov.au/asic/pdflib.nsf/LookupByFileName/2205.pdf/$file/2205.pdf"/&gt;
                      &lt;/ref:locator-key&gt;
                      &lt;ref:locator-params&gt;
                        &lt;proc:param name="attachment-type" value="pdf"/&gt;
                      &lt;/ref:locator-params&gt;
                    &lt;/ref:locator&gt;
                  &lt;/ref:lnlink&gt;
                &lt;/seclaw:subjectmatterreference&gt;
              &lt;/seclaw:digestinfo&gt;
            &lt;/seclaw:digest&gt;
          &lt;/seclaw:digestgrp&gt;
          &lt;seclaw:digestgrp&gt;
            &lt;heading&gt;
              &lt;title&gt;...&lt;/title&gt;
            &lt;/heading&gt;
            
</codeblock>
        </section>

        <section>
          <title>Source XML showing conversion to ref:subjectmattercite</title>
          <codeblock>

  &lt;seclaw:body&gt;
     &lt;seclaw:level leveltype="landingpage"&gt; 
      &lt;heading&gt;
        &lt;title&gt;Subject Matter&lt;/title&gt;
      &lt;/heading&gt;
       &lt;seclaw:bodytext&gt;
      &lt;seclaw:level leveltype="digestgroups"&gt;
        &lt;heading&gt;
          &lt;title&gt;Document Links &lt;/title&gt;
        &lt;/heading&gt;
        &lt;bodytext searchtype="Cases"&gt;
          &lt;h&gt;What is a business?&lt;/h&gt;
          &lt;p&gt;
            &lt;text&gt;
              &lt;emph typestyle="it"&gt;Primary Health Care Limited v Commissioner of Taxation &lt;/emph&gt;
              &lt;ci:cite searchtype="CASE-REF" status="valid"&gt;
                &lt;ci:case&gt;
                  &lt;ci:caseinfo&gt;
                    &lt;ci:decisiondate year="2010"/&gt;
                  &lt;/ci:caseinfo&gt;
                  &lt;ci:caseref&gt;
                    &lt;ci:reporter value="ALR"/&gt;
                    &lt;ci:volume num="267"/&gt;
                    &lt;ci:page num="648"/&gt;
                  &lt;/ci:caseref&gt;
                &lt;/ci:case&gt;
                &lt;ci:content&gt;(2010) 267 ALR 648&lt;/ci:content&gt;
              &lt;/ci:cite&gt;
            &lt;/text&gt;
          &lt;/p&gt;
          &lt;h&gt;...&lt;/h&gt;
            
</codeblock>
        </section>
        <section>
          <title>Target XML showing conversion to ref:subjectmattercite</title>
          <codeblock>

&lt;comm:body&gt;
  &lt;level leveltype="landingpage"&gt;
    &lt;heading&gt;
      &lt;title&gt;Subject Matter&lt;/title&gt;
    &lt;/heading&gt;
    &lt;level leveltype="documentlinks"&gt;
      &lt;heading&gt;
        &lt;title&gt;Document Links&lt;/title&gt;
      &lt;/heading&gt;
      &lt;seclaw:bodytext&gt;
          &lt;seclaw:digestgrp&gt;
            &lt;heading&gt;&lt;title&gt;What is a business?&lt;/title&gt;&lt;/heading&gt;
            &lt;seclaw:digest&gt;
              &lt;seclaw:digestinfo&gt;
                &lt;ref:subjectmattercite&gt;
                  &lt;emph typestyle="it"&gt;Primary Health Care Limited v Commissioner of Taxation &lt;/emph&gt;
                    &lt;lnci:cite status="valid"&gt;
                      &lt;lnci:case&gt;
                        &lt;lnci:caseinfo&gt;
                          &lt;lnci:decisiondate year="2010"/&gt;
                        &lt;/lnci:caseinfo&gt;
                        &lt;lnci:caseref&gt;
                          &lt;lnci:reporter value="ALR"/&gt;
                         &lt;lnci:volume num="267"/&gt;
                          &lt;lnci:page num="648"/&gt;
                        &lt;/lnci:caseref&gt;
                      &lt;/lnci:case&gt;
                      &lt;lnci:content&gt;(2010) 267 ALR 648&lt;/lnci:content&gt;
                    &lt;/lnci:cite&gt;
                &lt;/ref:subjectmattercite&gt;
              &lt;/seclaw:digestinfo&gt;
            &lt;/seclaw:digest&gt;
          &lt;/seclaw:digestgrp&gt;
            
</codeblock>
        </section>

        <section>
          <title>Source XML showing conversion of p within a nested level element structure</title>
          <codeblock>

  &lt;comm:body&gt;
    &lt;level leveltype="landingpage"&gt;
      &lt;heading&gt;
        &lt;title&gt;Subject Matter &lt;/title&gt;
      &lt;/heading&gt;
      &lt;level leveltype="documentlinks"&gt;
        &lt;heading&gt;
          &lt;title&gt;Document Links &lt;/title&gt;
        &lt;/heading&gt;
        &lt;!-- ... --&gt;
        &lt;level leveltype="Guidance"&gt;
          &lt;heading&gt;
            &lt;title&gt;Buying shares in a company &lt;/title&gt;
          &lt;/heading&gt;
          &lt;level leveltype="Main Section" searchtype="Commentary"&gt;
            &lt;heading&gt;
              &lt;title&gt;Buying the business and the shares in the vendor &lt;/title&gt;
            &lt;/heading&gt;
            &lt;level leveltype="Excerpt" searchtype="Commentary"&gt;
              &lt;bodytext searchtype="Commentary"&gt;
                &lt;p&gt;
                  &lt;text&gt;
                    &lt;remotelink dpsi="0M2T" remotekey1="DOC-ID" remotekey2="0M2T_714329"
                      service="DOC-ID"&gt;Australian Encylopaedia of Forms &amp;amp; Precedents &gt; Sale of
                      Business &gt; Share sale agreement: Agreement to sell and buy the shares &gt; [1085]
                      The agreement &lt;/remotelink&gt;
                  &lt;/text&gt;
                &lt;/p&gt;
                &lt;p&gt;
                  &lt;text&gt;
                    &lt;remotelink dpsi="0M2T" remotekey1="DOC-ID" remotekey2="0M2T_714343"
                      service="DOC-ID"&gt;Australian Encylopaedia of Forms &amp;amp; Precedents &gt; Sale of
                      Business &gt; Share sale agreement: Agreement to sell and buy the shares &gt; [1145]
                      Shares as consideration &lt;/remotelink&gt;
                  &lt;/text&gt;
                &lt;/p&gt;
              &lt;/bodytext&gt;
            &lt;/level&gt;
          &lt;/level&gt;
        &lt;/level&gt;
      &lt;/level&gt;
    &lt;/level&gt;
  &lt;/comm:body&gt;
&lt;/COMMENTARYDOC&gt;
            
</codeblock>
        </section>
        <section>
          <title>Target XML showing conversion of p within a nested level element structure</title>
          <codeblock>

&lt;seclaw:body&gt;
  &lt;seclaw:level leveltype="landingpage"&gt;
    &lt;heading&gt;
      &lt;title&gt;Subject Matter&lt;/title&gt;
    &lt;/heading&gt;
    &lt;seclaw:bodytext&gt;
      &lt;seclaw:level leveltype="digestgroups"&gt;
        &lt;heading&gt;
          &lt;title&gt;Document Links &lt;/title&gt;
        &lt;/heading&gt;
        &lt;seclaw:bodytext&gt;
          &lt;seclaw:digestgrp&gt;
            &lt;heading&gt;
              &lt;title&gt;Buying shares in a company&lt;/title&gt;
            &lt;/heading&gt;
            &lt;seclaw:digestgrp&gt;
              &lt;heading&gt;
                &lt;title&gt;Buying the business and the shares in the vendor&lt;/title&gt;
              &lt;/heading&gt;
              &lt;seclaw:digest&gt;
                &lt;seclaw:digestinfo&gt;
                  &lt;seclaw:subjectmatterreference&gt;
                    &lt;ref:crossreference&gt;
                      &lt;ref:content&gt;Australian Encylopaedia of Forms &amp;amp; Precedents &gt; Sale of
                        Business &gt; Share sale agreement: Agreement to sell and buy the shares &gt;
                        [1085] The agreement &lt;/ref:content&gt;
                      &lt;ref:locator&gt;
                        &lt;ref:locator-key&gt;
                          &lt;ref:key-name name="DOC-ID"/&gt;
                          &lt;ref:key-value value="0M2T-0M2T_714329"/&gt;
                        &lt;/ref:locator-key&gt;
                      &lt;/ref:locator&gt;
                    &lt;/ref:crossreference&gt;
                  &lt;/seclaw:subjectmatterreference&gt;
                &lt;/seclaw:digestinfo&gt;
              &lt;/seclaw:digest&gt;
              &lt;seclaw:digest&gt;
                &lt;seclaw:digestinfo&gt;
                  &lt;seclaw:subjectmatterreference&gt;
                    &lt;ref:crossreference&gt;
                      &lt;ref:content&gt;Australian Encylopaedia of Forms &amp;amp; Precedents &gt; Sale of
                        Business &gt; Share sale agreement: Agreement to sell and buy the shares &gt;
                        [1145] The agreement &lt;/ref:content&gt;
                      &lt;ref:locator&gt;
                        &lt;ref:locator-key&gt;
                          &lt;ref:key-name name="DOC-ID"/&gt;
                          &lt;ref:key-value value="0M2T-0M2T_714343"/&gt;
                        &lt;/ref:locator-key&gt;
                      &lt;/ref:locator&gt;
                    &lt;/ref:crossreference&gt;
                  &lt;/seclaw:subjectmatterreference&gt;
                &lt;/seclaw:digestinfo&gt;
              &lt;/seclaw:digest&gt;
            &lt;/seclaw:digestgrp&gt;
          &lt;/seclaw:digestgrp&gt;
        &lt;/seclaw:bodytext&gt;
      &lt;/seclaw:level&gt;
    &lt;/seclaw:bodytext&gt;
  &lt;/seclaw:level&gt;
&lt;/seclaw:body&gt;
            
</codeblock>
        </section>

        <section>
          <title>Source XML showing data character sequences mapping to
              <targetxml>seclaw:subjectmattertext</targetxml></title>
          <codeblock>

&lt;p&gt;&lt;text&gt;Australian Family Law State Legislation &gt; Status of Children &gt; &lt;remotelink dpsi="0KNG" remotekey1="DOC-ID" remotekey2="0KNG_571563" service="DOC-ID"&gt;[60,010] General nature of the legislation&lt;/remotelink&gt;&lt;/text&gt;&lt;/p&gt;
            
</codeblock>
        </section>

        <section>
          <title>Target XML showing data character sequences mapped to
              <targetxml>seclaw:subjectmattertext</targetxml></title>
          <codeblock>

&lt;seclaw:subjectmatterreference&gt;
  &lt;seclaw:subjectmattertext&gt;Australian Family Law State Legislation &gt; Status of Children &gt;&lt;/seclaw:subjectmattertext&gt;
    &lt;ref:crossreference&gt;
      &lt;ref:content&gt;[60,010] General nature of the legislation&lt;/ref:content&gt;
      &lt;ref:locator&gt;
        &lt;ref:locator-key&gt;
          &lt;ref:key-name name="DOC-ID"/&gt;
          &lt;ref:key-value value="0KNG-0KNG_5715631"/&gt;
        &lt;/ref:locator-key&gt;
      &lt;/ref:locator&gt;
    &lt;/ref:crossreference&gt;
&lt;/seclaw:subjectmatterreference&gt;
            
</codeblock>
        </section>

        <section>
          <title>Source XML showing multiple <sourcexml>remotelink</sourcexml> elements and use of
              <targetxml>connector</targetxml></title>
          <codeblock>

&lt;p&gt;&lt;text&gt;&lt;remotelink dpsi="0M2T" remotekey1="DOC-ID" remotekey2="0M2T_833812" service="DOC-
ID"&gt;Australian Encyclopaedia of Forms &amp; Precedents &gt; Franchise Agreements &gt; 
Introduction to franchise agreements &gt; [4020]
&lt;/remotelink&gt;, 
&lt;remotelink dpsi="0M2T" remotekey1="DOC-ID" remotekey2="0M2T_833832" service="DOC-
ID"&gt;[4115]
&lt;/remotelink&gt;&lt;/text&gt;&lt;/p&gt;
            
</codeblock>
        </section>

        <section>
          <title>Target XML showing multiple <sourcexml>remotelink</sourcexml> elements and use of
              <targetxml>connector</targetxml></title>
          <codeblock>

&lt;seclaw:subjectmatterreference&gt;
  &lt;ref:crossreference&gt;
    &lt;ref:content&gt;Australian Encyclopaedia of Forms &amp; Precedents &gt; Franchise Agreements 
&gt; Introduction to franchise agreements &gt; [4020]&lt;/ref:content&gt;
    &lt;ref:locator&gt;
      &lt;ref:locator-key&gt;
        &lt;ref:key-name name="DOC-ID"/&gt;
        &lt;ref:key-value value="0M2T-0M2T_833812"/&gt;
      &lt;/ref:locator-key&gt;
    &lt;/ref:locator&gt;
  &lt;/ref:crossreference&gt;
  &lt;connector&gt;, &lt;/connector&gt;
  &lt;ref:crossreference&gt;
    &lt;ref:content&gt;[4115]&lt;/ref:content&gt;
    &lt;ref:locator&gt;
      &lt;ref:locator-key&gt;
        &lt;ref:key-name name="DOC-ID"/&gt;
        &lt;ref:key-value value="0M2T-0M2T_833832"/&gt;
      &lt;/ref:locator-key&gt;
    &lt;/ref:locator&gt;
  &lt;/ref:crossreference&gt;
&lt;/seclaw:subjectmatterreference&gt;
            
</codeblock>
        </section>
        <section>
          <title>Changes</title>
          <p>2014-06-18 <ph id="change_20140618_JCG">Clarified that the references to the conversion of <sourcexml>lnlink</sourcexml> to <targetxml>ref:alternaterendition</targetxml> were and are only to
            <sourcexml>lnlink/@service="ATTACHMENT"</sourcexml>. This is not a rule change, but simply some additional text, 
            since future Landing Page documents may contain other kinds of <sourcexml>lnlink</sourcexml> elements such as
            <sourcexml>lnlink/@service="QUERYLINK"</sourcexml> and these should be either suppressed or converted to <targetxml>ref:lnlink</targetxml>, as specified in the section "General Markup".</ph></p>
        </section>
      </body>
    </topic>
  </topic>
   
  <topic id="pg-landing-referencestatusgroup">
    <title>Dates associated with remotelinks in landing page documents <lnpid>id-CCCC-10208</lnpid></title>
    
    <body>
      <p>When a document is a landing page as designated by @leveltype, <sourcexml>/COMMENTARYDOC/comm:body/level/@leveltype="landingpage"</sourcexml> links may also
        include dates which provide specific metadata related to the link target document.</p>
      
      <p>When the source contains one or more <sourcexml>date</sourcexml> elements that immediately follow a <sourcexml>remotelink</sourcexml> where the Xpath is one of: <ul>
      <li><sourcexml>bodytext/h/date</sourcexml></li>
      <li><sourcexml>bodytext/p/text/date</sourcexml></li>
      <li><sourcexml>bodytext/pgrp/heading/title/date</sourcexml></li>
      </ul>
      create a new element <targetxml>ref:referencestatusgroup</targetxml> following the <targetxml>ref:crossreference</targetxml> element. The elements <targetxml>ref:crossreference</targetxml> and <targetxml>ref:referencestatusgroup</targetxml> should be sibling elements.</p>
      
       <p>For each occurrence of a <sourcexml>date</sourcexml> element a single <targetxml>ref:referencestatusdate/@name="updatedate"</targetxml> must be created within the created <targetxml>ref:referencestatusgroup</targetxml>.</p>
      
        <p>The attributes <sourcexml>date/@year date/@month date/@day</sourcexml> are copied to <targetxml>referencestatusdate/@year referencestatusdate/@month referencestatusdate/@day</targetxml>.</p>
        
        <note>If a day or month is only one digit, it should be padded with a leading 0 to make it two digits.</note>
        
        <p>The content of the <sourcexml>date</sourcexml> element should be dropped.</p>
        
        <p>If a colon (":") followed by optional white-space immediately precedes the <sourcexml>date</sourcexml>, this colon and any white-space following it is dropped.</p>
      
      <section>
        <title>Source XML showing conversion from <sourcexml>/bodytext/p/text/date</sourcexml></title>
        
        <codeblock>

&lt;bodytext searchtype="Latest Legal Updates"&gt;
  &lt;h&gt;Latest legal updates&lt;/h&gt;
  &lt;p&gt;
    &lt;text&gt;
      &lt;remotelink dpsi="0M2U" remotekey1="DOC-ID" remotekey2="0M2U_25531" service="DOC-ID"&gt;Employment law - Australian Building and Construction Commissioner v Construction, Forestry, Mining and Energy Union [2011] FCA 810
      &lt;/remotelink&gt;: 
      &lt;date day="11" month="8" year="2011"&gt;11/8/2011&lt;/date&gt;
    &lt;/text&gt;
  &lt;/p&gt;       

   
 </codeblock>
      </section>
      
      <section>
        <title>Target XML showing conversion to <targetxml>seclaw:subjectmatterreference/ref:referencestatusgroup/ref:referencestatus</targetxml></title>          
     
     <codeblock>

&lt;seclaw:bodytext&gt;
  &lt;seclaw:digestgrp&gt;
    &lt;heading&gt;&lt;title&gt;Latest legal updates&lt;/title&gt;&lt;/heading&gt;
    &lt;seclaw:digest&gt;
      &lt;seclaw:digestinfo&gt;
        &lt;seclaw:subjectmatterreference&gt;
          &lt;ref:crossreference&gt;
            &lt;ref:content&gt;Employment law - Australian Building and Construction Commissioner v Construction, Forestry, Mining and Energy Union [2011] FCA 810&lt;/ref:content&gt;
            &lt;ref:locator&gt;&lt;ref:locator-key&gt;
              &lt;ref:key-name name="DOC-ID"/&gt;
              &lt;ref:key-value value="0M2U-0M2U_25531"/&gt;
            &lt;/ref:locator-key&gt;
            &lt;/ref:locator&gt;
          &lt;/ref:crossreference&gt;
          &lt;ref:referencestatusgroup&gt; 
              &lt;ref:referencestatusdate name="updatedate" year="2012" month="08" day="11"/&gt;
          &lt;/ref:referencestatusgroup&gt;
        &lt;/seclaw:subjectmatterreference&gt;
      &lt;/seclaw:digestinfo&gt;
    &lt;/seclaw:digest&gt;
       
     </codeblock>
      </section>
    </body>
  </topic>
    
  <topic id="pg-landing-do-not-convert-url-api">
    <title>Do not convert the content associated with <q>&lt;h&gt;URL API&lt;/h&gt;</q> <lnpid>id-CCCC-10209</lnpid></title>
    <body>
      <p>If a <sourcexml>h</sourcexml> contains the exact content "URLAPI" after removing all
        white-space, then this <sourcexml>h</sourcexml> and all <sourcexml>p</sourcexml> elements
        and children of these <sourcexml>p</sourcexml> elements that follow it, up to but not
        including the next <sourcexml>h</sourcexml> element or the <sourcexml>bodytext</sourcexml>
        end-tag, are wrapped in an XML comment. These portions of the content contain links to
        LexisNexis Rosetta platform searches via a URL and cannot be simply mapped to the NewLexis
        platform. Preserving them as comments will retain the content for future analysis without
        creating unsupported target markup.</p>
     <section>
       <title>Source XML</title>  
       <codeblock>

&lt;comm:body&gt;
  &lt;level leveltype="landingpage"&gt;
    &lt;heading&gt;
      &lt;title&gt;Parentage&lt;/title&gt;
    &lt;/heading&gt;
    &lt;level leveltype="documentlinks"&gt;
      &lt;heading&gt;
        &lt;title&gt;Document Links&lt;/title&gt;
      &lt;/heading&gt;
      &lt;bodytext searchtype="Forms"&gt;
        &lt;h&gt;Paternity&lt;/h&gt;
        &lt;p&gt;
          &lt;text&gt;
            &lt;url&gt;
              &lt;remotelink
                href="http://www.familylawcourts.gov.au/wps/wcm/resources/file/eb0a980a375e327/Application_Case_0309V2.doc"
                newwindow="YES" service="SEARCH" status="valid"&gt;© Family Court &amp;#x2014;
                Application in a Case (Word)&lt;/remotelink&gt;
            &lt;/url&gt;
          &lt;/text&gt;
        &lt;/p&gt;
        &lt;!--...1...--&gt;
        &lt;h&gt;Surrogacy&lt;/h&gt;
        &lt;p&gt;
          &lt;text&gt;
            &lt;url&gt;
              &lt;remotelink
                href="http://www.health.vic.gov.au/prp/documents/app_for_surrogacy_220110.pdf"
                newwindow="YES" service="SEARCH" status="valid"&gt;Department of Health, Victoria
                &amp;#x2014; Patient Review Panel &amp;#x2014; Application for surrogacy &amp;#x2014;
                surrogate mother (PDF)&lt;/remotelink&gt;
            &lt;/url&gt;
          &lt;/text&gt;
        &lt;/p&gt;
        &lt;!--...2...--&gt;
        &lt;h&gt;URL API&lt;/h&gt;
        &lt;p&gt;
          &lt;text&gt;
            &lt;url&gt;
              &lt;remotelink
                href="http://www.lexisnexis.com/au/legal/api/version1/sr?csi=360220&amp;amp;sr=FILE%2DCODE(%28%23LL000932D%23%29)&amp;amp;shr=T&amp;amp;oc=00254"
                newwindow="YES" service="SEARCH" status="valid"&gt;Search LexisNexisAU&lt;/remotelink&gt;
            &lt;/url&gt;
          &lt;/text&gt;
        &lt;/p&gt;
      &lt;/bodytext&gt;
    &lt;/level&gt;
  &lt;/level&gt;
&lt;/comm:body&gt;         
       
       </codeblock>
     </section>
      <section>
        <title>Target XML</title>  
        <p>Note how the URL API heading and paragraphs that follow it are not converted in the target file, but instead are wrapped in an XML comment.</p>
        <codeblock>

&lt;seclaw:body&gt;
  &lt;seclaw:level leveltype="landingpage"&gt;
    &lt;heading&gt;
      &lt;title&gt;Parentage&lt;/title&gt;
    &lt;/heading&gt;
    &lt;seclaw:bodytext&gt;
      &lt;seclaw:level leveltype="digestgroups"&gt;
        &lt;heading&gt;
          &lt;title&gt;Document Links&lt;/title&gt;
        &lt;/heading&gt;
        &lt;seclaw:bodytext&gt;
          &lt;seclaw:digestgrp&gt;
            &lt;heading&gt;
              &lt;title&gt;Paternity&lt;/title&gt;
            &lt;/heading&gt;
            &lt;seclaw:digest&gt;
              &lt;seclaw:digestinfo&gt;
                &lt;seclaw:subjectmatterreference&gt;
                  &lt;ref:lnlink service="URL"&gt;
                    &lt;ref:marker&gt;© Family Court — Application in a Case (Word)&lt;/ref:marker&gt;
                    &lt;ref:locator&gt;
                      &lt;ref:locator-key&gt;
                        &lt;ref:key-name name="URL"/&gt;
                        &lt;ref:key-value
                          value="http://www.familylawcourts.gov.au/wps/wcm/resources/file/eb0a980a375e327/Application_Case_0309V2.doc"
                        /&gt;
                      &lt;/ref:locator-key&gt;
                    &lt;/ref:locator&gt;
                  &lt;/ref:lnlink&gt;
                &lt;/seclaw:subjectmatterreference&gt;
              &lt;/seclaw:digestinfo&gt;
            &lt;/seclaw:digest&gt;
            &lt;!--...1...--&gt;
          &lt;/seclaw:digestgrp&gt;
          &lt;seclaw:digestgrp&gt;
            &lt;heading&gt;
              &lt;title&gt;Surrogacy&lt;/title&gt;
            &lt;/heading&gt;
            &lt;seclaw:digest&gt;
              &lt;seclaw:digestinfo&gt;
                &lt;seclaw:subjectmatterreference&gt;
                  &lt;ref:lnlink service="URL"&gt;
                    &lt;ref:marker&gt;Department of Health, Victoria — Patient Review Panel —
                      Application for surrogacy — surrogate mother (PDF)&lt;/ref:marker&gt;
                    &lt;ref:locator&gt;
                      &lt;ref:locator-key&gt;
                        &lt;ref:key-name name="URL"/&gt;
                        &lt;ref:key-value
                          value="http://www.health.vic.gov.au/prp/documents/app_for_surrogacy_220110.pdf"
                        /&gt;
                      &lt;/ref:locator-key&gt;
                    &lt;/ref:locator&gt;
                  &lt;/ref:lnlink&gt;
                &lt;/seclaw:subjectmatterreference&gt;
              &lt;/seclaw:digestinfo&gt;
            &lt;/seclaw:digest&gt;
            &lt;!--...2...--&gt;
          &lt;/seclaw:digestgrp&gt;
          &lt;!-- URL API source:
          &lt;h&gt;URL API&lt;/h&gt;
          &lt;p&gt;
            &lt;text&gt;
              &lt;url&gt;
                &lt;remotelink
                  href="http://www.lexisnexis.com/au/legal/api/version1/sr?csi=360220&amp;amp;sr=FILE%2DCODE(%28%23LL000932D%23%29)&amp;amp;shr=T&amp;amp;oc=00254"
                  newwindow="YES" service="SEARCH" status="valid"&gt;Search LexisNexisAU&lt;/remotelink&gt;
              &lt;/url&gt;
            &lt;/text&gt;
          &lt;/p&gt;
          --&gt;
        &lt;/seclaw:bodytext&gt;
      &lt;/seclaw:level&gt;
    &lt;/seclaw:bodytext&gt;
  &lt;/seclaw:level&gt;
&lt;/seclaw:body&gt;
       
        </codeblock>
      </section>
      <section>
        <title>Changes</title>
        <p>2016-08-03: <ph id="change_20160803_csn">Added Note about xml snippets that illustrate
          image handling. Note summarizes move from Apollo to Blobstore application. UK is
          first LBU to move to Blobstore.</ph></p>
        <p>2013-10-15 <ph id="change_20131015_JCG">Created this new topic. (Webteam #237967)</ph>
        </p>
       </section>
    </body>
  </topic>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\LPA-PracticalGuidance_LandingPage.dita  -->
<!--	<xsl:message>LPA-PracticalGuidance_LandingPage.xsl requires manual development!</xsl:message> 
-->

  <xsl:template match="docinfo:metaitem[not(@name='PA-PGUID' or @name='TOPIC-PGUID' or @name='SUB-TOPIC-PGUID')]" priority="25">
    <!-- docinfo:lbu-meta Topic mapping (id-CCCC-10217) -->
    <xsl:choose>
      <xsl:when
        test="@name='date' or 
        @name='juris' or 
        @name='court' or 
        @name='country' "/>
      <xsl:otherwise>
        <!-- @name='parent-docid'and name='lbu-sourcename' are two values that need to be converted for court cases -->
        <metaitem xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
          <xsl:attribute name="name">
            <xsl:value-of select="@name"/>
          </xsl:attribute>
          <xsl:attribute name="value">
            <xsl:value-of select="@value"/>
          </xsl:attribute>
        </metaitem>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>
  

</xsl:stylesheet>