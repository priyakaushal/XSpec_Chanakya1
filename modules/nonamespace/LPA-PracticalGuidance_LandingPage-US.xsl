<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:comm="http://www.lexis-nexis.com/glp/comm"
  xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
  xmlns:classify="http://www.lexisnexis.com/xmlschemas/content/shared/classification/1/"
  xmlns:ci="http://www.lexis-nexis.com/ci" xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo"
  xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/"
  xmlns:seclaw="http://www.lexisnexis.com/xmlschemas/content/legal/secondary-law/1/" version="2.0"
  exclude-result-prefixes="dita ci docinfo">

  <dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/"
    id="LPA-PracticalGuidance_LandingPage">
    <title>Landing Pages <lnpid>id-USPA-31029</lnpid></title>
    <body>
      <p>A landing page is indicated by a top <sourcexml>level</sourcexml> having
          <sourcexml>@leveltype="landingpage"</sourcexml>. That is, the xpath matching
          <sourcexml>/COMMENTARYDOC/comm:body/level/@leveltype="landingpage</sourcexml> indicates
        the document is a landing page. When such a top <sourcexml>level</sourcexml> occurs, create
        a <targetxml>level/@leveltype="landingpage"</targetxml> and process the child elements using
        the rules given for landing page documents in this part of the conversion instructions. </p>

      <p>Please note that throughout the landing page documents the same Rosetta element is often
        used to represent a variety of different semantics in the source landing page documents. In
        particular, this is very much the case with <sourcexml>h</sourcexml> and
          <sourcexml>p</sourcexml>. As such, the same source elements map to a variety of different
        NewLexis target elements depending on what type of landing page document they occur in and
        their particular xpath within that type of landing page document. Partial xpaths (starting
        at <sourcexml>bodytext</sourcexml>) are given for the source elements in many places to make
        the specific context of the conversion rule as clear as possible. </p>

      <p>Within a landing page document, the following specific xpath conversions apply to the first
        few high level elements and their children: <ul>
          <li><sourcexml>/COMMENTARYDOC</sourcexml> becomes
              <targetxml>/seclaw:seclaw/@seclawtype="practicalguidance</targetxml>. </li>
          <li><sourcexml>/COMMENTARYDOC/docinfo</sourcexml> becomes
              <targetxml>/seclaw:seclaw/doc:metadata/doc:docinfo</targetxml> and its various
            children are converted as described in the <xref
              href="../../common_newest/LPA-PracticalGuidance_Metadata.dita">Metadata
            section</xref>. </li>
          <li><sourcexml>/COMMENTARYDOC/comm:body</sourcexml> becomes
              <targetxml>/seclaw:seclaw/seclaw:body</targetxml>. </li>
          <li><sourcexml>/COMMENTARYDOC/comm:body/level/@leveltype="landingpage"</sourcexml> becomes
              <targetxml>/seclaw:seclaw/seclaw:body/seclaw:level/@leveltype="landingpage"</targetxml>. </li>
          <li><sourcexml>/COMMENTARYDOC/comm:body/level/@leveltype="landingpage"/heading</sourcexml>
            becomes
              <targetxml>/seclaw:seclaw/seclaw:body/seclaw:level/@leveltype="landingpage"/heading</targetxml>.
            The attributes of <sourcexml>heading</sourcexml> in this xpath are converted as
            described for the <xref href="../../common_newest/Rosetta_heading-LxAdv-heading.dita"
              >common heading element</xref>. All subelements (such as <sourcexml>title</sourcexml>
            and its children) are converted using the common element instructions for these elements
            provided in the "General Markup" part of the conversion instructions. </li>
          <li><sourcexml>/COMMENTARYDOC/comm:body/level/@leveltype="landingpage"/level/@leveltype="documentlinks"</sourcexml>
            becomes
              <targetxml>/seclaw:seclaw/seclaw:body/seclaw:level/@leveltype="landingpage"/seclaw:bodytext/seclaw:level/@leveltype="digestgroups"</targetxml>.
            Note that a <targetxml>seclaw:bodytext</targetxml> element is created as well as a
              <targetxml>level/@leveltype="digestgroups"</targetxml>. </li>
          <li><sourcexml>/COMMENTARYDOC/comm:body/level/@leveltype="landingpage"/level/@leveltype="documentlinks"/heading</sourcexml>
            becomes
              <targetxml>/seclaw:seclaw/seclaw:body/seclaw:level/@leveltype="landingpage"/seclaw:bodytext/seclaw:level/@leveltype="digestgroups"/heading</targetxml>.
            The attributes of <sourcexml>heading</sourcexml> in this xpath are converted as
            described for the <xref href="../../common_newest/Rosetta_heading-LxAdv-heading.dita"
              >common heading element</xref>. All subelements (such as <sourcexml>title</sourcexml>
            and its children) are converted using the common element instructions for these elements
            provided in the "General Markup" part of the conversion instructions. </li>
          <li><sourcexml>/COMMENTARYDOC/comm:body/level/@leveltype="landingpage"/level/@leveltype="documentlinks"/bodytext</sourcexml>
            becomes
              <targetxml>/seclaw:seclaw/seclaw:body/seclaw:level/@leveltype="landingpage"/seclaw:bodytext/seclaw:level/@leveltype="digestgroups"/seclaw:bodytext</targetxml>.
          </li>
        </ul></p>

      <section>
        <title>Source XML</title>
        <codeblock> &lt;comm:body&gt; &lt;level leveltype="landingpage"&gt; &lt;heading&gt;
          &lt;title searchtype="MAIN-TITLE"&gt;Nevada Business Corporations &lt;/title&gt;
          &lt;/heading&gt; &lt;level leveltype="documentlinks"&gt; &lt;heading&gt;
          &lt;title&gt;Document Links &lt;/title&gt; &lt;/heading&gt; &lt;bodytext
          searchtype="Practical Guidance"&gt; </codeblock>
      </section>
      <section>
        <title>Target XML</title>
        <codeblock> &lt;seclaw:body&gt; &lt;seclaw:level leveltype="landingpage"&gt; &lt;heading&gt;
          &lt;title&gt;Nevada Business Corporations&lt;/title&gt; &lt;/heading&gt;
          &lt;seclaw:bodytext&gt; &lt;seclaw:level leveltype="digestgroups"&gt; &lt;heading&gt;
          &lt;title&gt;Document Links &lt;/title&gt; &lt;/heading&gt; &lt;seclaw:bodytext&gt;
        </codeblock>
      </section>

    </body>

    <topic id="pg-landing-inlinenote">
      <title>note becomes inlinenote <lnpid>id-USPA-31030</lnpid></title>
      <body>
        <p>In most cases within landing page documents, a <sourcexml>note</sourcexml> within a
            <sourcexml>p</sourcexml> or <sourcexml>h</sourcexml> (<sourcexml>p/note</sourcexml> or
            <sourcexml>h/note</sourcexml>) becomes <targetxml>inlinenote</targetxml>, and the
            <sourcexml>note/@notetype</sourcexml> attribute value becomes the value for the required
          attribute <targetxml>inlinenote/@notetype</targetxml>. If the
            <sourcexml>note/@notetype</sourcexml> attribute value is missing,
            <targetxml>inlinenote/@notetype</targetxml> is set to "other". The start-tags and
          end-tags for <sourcexml>note/p</sourcexml> and <sourcexml>note/p/text</sourcexml> (but not
          the element content) are dropped. </p>
        <p>For increased clarity, every time this conversion instruction should be performed within
          a particular source xpath, a note will be added to the subtopic for that particular source
          xpath referencing this conversion instruction.</p>

        <section>
          <title>Source XML</title>
          <codeblock> &lt;h&gt; &lt;remotelink dpsi="0N5C" remotekey1="DOC-ID"
            remotekey2="0N5C_3541" service="DOC-ID"&gt;...&lt;/remotelink&gt; &lt;note
            notetype="other"&gt; &lt;p&gt; &lt;text&gt;Lorem ipsum velit lacinia egestas auctor,
            diam eros tempus arcu, nec vulputate augue magna vel risus. Cras non magna vel ante
            adipiscing rhoncus. Vivamus a mi. Morbi neque. Aliquam erat volutpat. Integer ultrices
            lobortis eros. Pellentesque habitant morbi tristique senectus et netus et malesuada
            fames ac turpis egestas. Proin semper, ante vitae sollicitudin posuere, metus quam
            iaculis nibh, vitae scelerisque nunc massa eget pede. &lt;/text&gt; &lt;/p&gt;
            &lt;/note&gt; &lt;/h&gt; </codeblock>
        </section>
        <section>
          <title>Target XML</title>
          <codeblock> &lt;seclaw:digest&gt; &lt;seclaw:digestinfo&gt;
            &lt;seclaw:subjectmatterreference&gt;
            &lt;ref:crossreference&gt;...&lt;/ref:crossreference&gt; &lt;inlinenote
            notetype="other"&gt;Lorem ipsum velit lacinia egestas auctor, diam eros tempus arcu, nec
            vulputate augue magna vel risus. Cras non magna vel ante adipiscing rhoncus. Vivamus a
            mi. Morbi neque. Aliquam erat volutpat. Integer ultrices lobortis eros. Pellentesque
            habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Proin
            semper, ante vitae sollicitudin posuere, metus quam iaculis nibh, vitae scelerisque nunc
            massa eget pede.&lt;/inlinenote&gt; </codeblock>
        </section>

      </body>
    </topic>

    <topic id="pg-landing-url">
      <title>drop start-tag and end-tag of url element <lnpid>id-USPA-31031</lnpid></title>
      <body>
        <note>This instruction has been removed. The content of a <sourcexml>url</sourcexml> element
          is converted as described in <xref
            href="../../common_newest/Rosetta_remotelink-Chof-url-LxAdv-url.dita">common url
            element</xref>. Please see that topic for details and examples.</note>
      </body>
    </topic>

    <topic id="pg-landing-types">
      <title>landing page types <lnpid>id-USPA-31032</lnpid></title>
      <body>
        <section>
          <p>The type of a landing page is determined by the
              <sourcexml>bodytext/@searchtype</sourcexml> attribute. The subtopics that follow
            specify different conversion instructions for the same Rosetta element, depending on the
            type of landing page. Examples values for the
              <sourcexml>bodytext/@searchtype</sourcexml> attribute are listed below (note that
            other values not in this list may exist in source documents):<ul>
              <li>"Home"</li>
              <li>"Practical Guidance"</li>
              <li>"Forms and Precedents"</li>
              <li>"Legal Analysis"</li>
              <li>"Cases"</li>
              <li>"Codes"</li>
              <li>"Emerging Issues"</li>
              <li>"News"</li>
            </ul>
          </p>
        </section>
        <section>
          <title>Changes</title>
          <p>2015-04-27: <ph id="change_20150427_snb">Clarified description to indicate that the
              list of <sourcexml>bodytext/@searchtype</sourcexml> attribute values was an example,
              and not necessarily a complete list.</ph></p>
        </section>

      </body>
    </topic>

    <topic id="pg-landing-home">
      <title>Landing Page Type "Home" <lnpid>id-USPA-31033</lnpid></title>
      <body>
        <p>The conversion instructions originally in this subtopic are no longer applicable as of 29
          August 2012 due to new requirements. Please see the subtopic <xref
            href="#pg-landing-other">All Landing Pages</xref> for the instructions that now describe
          the conversion of all Landing Pages, including Landing Page type "Home". This subtopic
          will remain in the document to preserve the subtopic numbering from previous releases of
          this CI. </p>
      </body>
    </topic>

    <topic id="pg-landing-other">
      <title>All Landing Pages <lnpid>id-USPA-31034</lnpid></title>
      <body>
        <p>These conversions apply to all child elements of <sourcexml>bodytext</sourcexml> in
          landing pages. (As mentioned at the <xref href="#LPA-PracticalGuidance_LandingPage">start
            of this topic</xref>, landing pages are indicated by XPath
            <sourcexml>/COMMENTARYDOC/comm:body/level/@leveltype="landingpage"</sourcexml>.)</p>
      </body>

      <topic id="pg-landing-other-1">
        <title>bodytext/h <lnpid>id-USPA-31035</lnpid></title>
        <body>
          <p>Each <sourcexml>bodytext/h</sourcexml> that does not have a <sourcexml>h/@l</sourcexml>
            attribute specified causes a new <targetxml>seclaw:digestgrp</targetxml> and child
              <targetxml>heading</targetxml> to be created, then <sourcexml>bodytext/h</sourcexml>
            becomes <targetxml>title</targetxml>, and then <targetxml>heading</targetxml> is closed.
            The created <targetxml>seclaw:digestgrp</targetxml> is closed when the next
              <sourcexml>bodytext/h</sourcexml> start-tag or the <sourcexml>bodytext</sourcexml>
            end-tag is encountered. </p>

          <section>
            <title>Source XML</title>
            <codeblock> &lt;bodytext searchtype="Practical Guidance"&gt; &lt;h&gt;Formation of the
              Not-for-Profit Corporation&lt;/h&gt; &lt;pgrp&gt; &lt;!-- ...1... --&gt; &lt;/pgrp&gt;
              &lt;!-- ...2... --&gt; &lt;h&gt;Organizational Matters&lt;/h&gt; &lt;pgrp&gt; &lt;!--
              ...3... --&gt; &lt;/pgrp&gt; &lt;/bodytext&gt; </codeblock>
          </section>
          <section>
            <title>Target XML</title>
            <codeblock> &lt;seclaw:bodytext&gt; &lt;seclaw:digestgrp&gt;
              &lt;heading&gt;&lt;title&gt;Formation of the Not-for-Profit
              Corporation&lt;/title&gt;&lt;/heading&gt; &lt;seclaw:digest&gt; &lt;!-- ...1... --&gt;
              &lt;/seclaw:digest&gt; &lt;!-- ...2... --&gt; &lt;/seclaw:digestgrp&gt;
              &lt;seclaw:digestgrp&gt; &lt;heading&gt;&lt;title&gt;Organizational
              Matters&lt;/title&gt;&lt;/heading&gt; &lt;seclaw:digest&gt; &lt;!-- ...3... --&gt;
              &lt;/seclaw:digest&gt; &lt;/seclaw:digestgrp&gt; &lt;/seclaw:bodytext&gt; </codeblock>
          </section>

        </body>
      </topic>

      <topic id="pg-landing-other-2">
        <title>bodytext/pgrp/h <lnpid>id-USPA-31036</lnpid></title>
        <body>
          <p>Each <sourcexml>bodytext/pgrp/h</sourcexml> that does not have a
              <sourcexml>h/@l</sourcexml> attribute specified causes a new
              <targetxml>seclaw:digest</targetxml> and child
              <targetxml>seclaw:digestinfo</targetxml> to be created. </p>
          <p>The <sourcexml>bodytext/pgrp/h</sourcexml> then becomes either
              <targetxml>seclaw:subjectmatterreference</targetxml> or
              <targetxml>ref:subjectmattercite</targetxml> depending on its contents:</p>
          <ul>
            <li>If the <sourcexml>h</sourcexml>, or any of its subelements, does <b>not</b> contain
              a <sourcexml>ci:cite</sourcexml>, then a
                <targetxml>seclaw:subjectmatterreference</targetxml> element is created. In this
              case the content of <sourcexml>h</sourcexml> is moved to the target document as the
              content of the created <targetxml>seclaw:subjectmatterreference</targetxml> element's
              children: <ul>
                <li><targetxml>seclaw:subjectmattertext</targetxml></li>
                <li><targetxml>ref:crossreference</targetxml></li>
                <li><targetxml>ref:lnlink</targetxml></li>
                <li><targetxml>url</targetxml></li>
                <li><targetxml>connector</targetxml></li>
                <li><targetxml>inlinenote</targetxml></li>
              </ul> Any sequence of data characters that occur as a direct child of the
                <sourcexml>h</sourcexml> are wrapped with a
                <targetxml>seclaw:subjectmattertext</targetxml> element. <note>There is one an
                exception to the above sentence: if an entire sequence of data characters consists
                of <b>only</b> punctuation and/or the words "and" or "or", this sequence should be
                wrapped with <targetxml>connector</targetxml> instead of
                  <targetxml>seclaw:subjectmattertext</targetxml>.</note> A child element with the
              XPath <sourcexml>h/emph</sourcexml> is also wrapped with a
                <targetxml>seclaw:subjectmattertext</targetxml> element, and the
                <sourcexml>emph</sourcexml> is converted using the common element instructions for
              this element provided in the "General Markup" part of the conversion instructions.
              With the exception of <sourcexml>note</sourcexml> (see note below), all subelements of
                <sourcexml>h</sourcexml> (such as <sourcexml>empth</sourcexml>,
                <sourcexml>url</sourcexml>, and <sourcexml>remotelink</sourcexml>) are converted
              using the common element instructions for these elements provided in the "General
              Markup" part of the conversion instructions. <note>Convert any child
                  <sourcexml>note</sourcexml> elements to <targetxml>inlinenote</targetxml> as
                described in the subtopic <xref href="#pg-landing-inlinenote">note becomes
                  inlinenote</xref>. </note>
              <note>There is currently no scenario where there are multiple
                  <sourcexml>note</sourcexml> elements in this context, and given our understanding
                of the way the data is generated this is not even theorectically possible.</note>
            </li>
            <li>If the <sourcexml>h</sourcexml>, or any of its subelements, <b>does</b> contain a
                <sourcexml>ci:cite</sourcexml>, then a <targetxml>ref:subjectmattercite</targetxml>
              element is created. Any data character content of the <sourcexml>h</sourcexml> becomes
              the direct content of the created <targetxml>ref:subjectmattercite</targetxml>. All
              subelements of <sourcexml>h</sourcexml> (such as <sourcexml>empth</sourcexml> and
                <sourcexml>ci:cite</sourcexml>) are converted using the common element instructions
              for these elements provided in the "General Markup" part of the conversion
              instructions. </li>
          </ul>
          <p>Any sibling nested pgrp elements (<sourcexml>bodytext/pgrp/pgrp</sourcexml>)
            immediately following the <sourcexml>bodytext/pgrp/h</sourcexml> should be processed as
            described in the section of this instruction appropriate for the landing page type
              (<xref href="#pg-landing-nestedpgrp-pg">Nested pgrp within Landing Page Type
              "Practical Guidance"</xref> or <xref href="#pg-landing-nestedpgrp-other">Nested pgrp
              within Landing Page Type NOT "Practical Guidance"</xref>). Note that for landing pages
            of type "Practical Guidance", any nested <sourcexml>pgrp</sourcexml> elements will be
            processed and produce target markup inside the
              <targetxml>seclaw:subjectmatterreference</targetxml> or
              <targetxml>ref:subjectmattercite</targetxml> element created from this
              <sourcexml>bodytext/pgrp/h</sourcexml>.</p>
          <p>The created <targetxml>seclaw:subjectmatterreference</targetxml> or
              <targetxml>ref:subjectmattercite</targetxml> is closed when all children of
              <sourcexml>bodytext/pgrp/h</sourcexml> have been processed and all immediately
            following nested pgrp elements (<sourcexml>bodytext/pgrp/pgrp</sourcexml>) have been
            processed.</p>
          <p>The created <targetxml>seclaw:digest</targetxml> and
              <targetxml>seclaw:digestinfo</targetxml> are closed when a
              <sourcexml>bodytext/pgrp/h</sourcexml> start-tag,
              <sourcexml>bodytext/pgrp/p</sourcexml> start-tag, or a
              <sourcexml>bodytext/pgrp</sourcexml> end-tag is encountered. </p>

          <section>
            <title>Source XML showing conversion to seclaw:subjectmatterreference</title>
            <codeblock> &lt;bodytext searchtype="Forms and Precedents"&gt; &lt;h&gt;Formation of the
              Not-for-Profit Corporation &lt;/h&gt; &lt;pgrp&gt; &lt;h&gt; &lt;remotelink
              dpsi="0MSE" remotekey1="DOC-ID" remotekey2="0MSE_10631" service="DOC-ID" &gt;Articles
              of Incorporation of a General Stock Corporation (California Official Form)
              &lt;/remotelink&gt; &lt;/h&gt; &lt;h&gt; &lt;remotelink dpsi="0MSE"
              remotekey1="DOC-ID" remotekey2="0MSE_10639" service="DOC-ID" &gt;Statement of
              Information (California Official Form) &lt;/remotelink&gt; &lt;/h&gt; </codeblock>
          </section>
          <section>
            <title>Target XML showing conversion to seclaw:subjectmatterreference</title>
            <codeblock> &lt;seclaw:bodytext&gt; &lt;seclaw:digestgrp&gt; &lt;heading&gt;
              &lt;title&gt;Formation of the Not-for-Profit Corporation&lt;/title&gt;
              &lt;/heading&gt; &lt;seclaw:digest&gt; &lt;seclaw:digestinfo&gt;
              &lt;seclaw:subjectmatterreference&gt; &lt;ref:crossreference&gt;
              &lt;ref:content&gt;Articles of Incorporation of a General Stock Corporation
              (California Official Form)&lt;/ref:content&gt; &lt;ref:locator&gt;
              &lt;ref:locator-key&gt; &lt;ref:key-name name="DOC-ID"/&gt; &lt;ref:key-value
              value="0MSE-0MSE_10631"/&gt; &lt;/ref:locator-key&gt; &lt;/ref:locator&gt;
              &lt;/ref:crossreference&gt; &lt;/seclaw:subjectmatterreference&gt;
              &lt;/seclaw:digestinfo&gt; &lt;/seclaw:digest&gt; &lt;seclaw:digest&gt;
              &lt;seclaw:digestinfo&gt; &lt;seclaw:subjectmatterreference&gt;
              &lt;ref:crossreference&gt; &lt;ref:content&gt;Statement of Information (California
              Official Form)&lt;/ref:content&gt; &lt;ref:locator&gt; &lt;ref:locator-key&gt;
              &lt;ref:key-name name="DOC-ID"/&gt; &lt;ref:key-value value="0MSE-0MSE_10639"/&gt;
              &lt;/ref:locator-key&gt; &lt;/ref:locator&gt; &lt;/ref:crossreference&gt;
              &lt;/seclaw:subjectmatterreference&gt; &lt;/seclaw:digestinfo&gt;
              &lt;/seclaw:digest&gt; </codeblock>
          </section>

          <section>
            <title>Source XML showing conversion to ref:subjectmattercite</title>
            <codeblock> &lt;bodytext searchtype="Cases"&gt; &lt;h&gt;Formation of the Not-for-Profit
              Corporation &lt;/h&gt; &lt;pgrp&gt; &lt;p&gt; &lt;text&gt;Barber v. Irving &lt;ci:cite
              ID="I54P3G8T2N1RFG0020000400" normprotocol="lexsee" status="valid"&gt; &lt;ci:case&gt;
              &lt;ci:caseinfo&gt; &lt;ci:jurisinfo txt="Cal. App. 2d Dist."/&gt; &lt;ci:decisiondate
              txt="1964"/&gt; &lt;/ci:caseinfo&gt; &lt;ci:caseref ID="I54P3G8T2N1RFG0010000400"&gt;
              &lt;ci:reporter normpubcode="573" value="Cal. App. 2d"/&gt; &lt;ci:ldi jumppage="560"
              kw="264_226_560*.560" page="560" pagesuffix="*" reporter="264" volume="226"/&gt;
              &lt;ci:volume num="226"/&gt; &lt;ci:page num="560"/&gt; &lt;/ci:caseref&gt;
              &lt;/ci:case&gt; &lt;ci:content&gt;226 Cal. App. 2d 560 (Cal. App. 2d Dist. 1964)
              &lt;/ci:content&gt; &lt;/ci:cite&gt; &lt;/text&gt; </codeblock>
          </section>

          <section>
            <title>Target XML showing conversion to ref:subjectmattercite</title>
            <codeblock> &lt;seclaw:bodytext&gt; &lt;seclaw:digestgrp&gt;
              &lt;heading&gt;&lt;title&gt;Formation of the Not-for-Profit
              Corporation&lt;/title&gt;&lt;/heading&gt; &lt;seclaw:digest&gt;
              &lt;seclaw:digestinfo&gt; &lt;ref:subjectmattercite&gt;Barber v. Irving &lt;lnci:cite
              ID="I54P3G8T2N1RFG0020000400" normprotocol="lexsee" status="valid"&gt;
              &lt;lnci:case&gt; &lt;lnci:caseinfo&gt; &lt;lnci:jurisinfo txt="Cal. App. 2d
              Dist."/&gt; &lt;lnci:decisiondate txt="1964"/&gt; &lt;/lnci:caseinfo&gt;
              &lt;lnci:caseref ID="I54P3G8T2N1RFG0010000400"&gt; &lt;lnci:reporter normpubcode="573"
              value="Cal. App. 2d"/&gt; &lt;lnci:volume num="226"/&gt; &lt;lnci:page num="560"/&gt;
              &lt;/lnci:caseref&gt; &lt;/lnci:case&gt; &lt;lnci:content&gt;226 Cal. App. 2d 560
              (Cal. App. 2d Dist. 1964) &lt;/lnci:content&gt; &lt;/lnci:cite&gt; &lt;inlinenote
              notetype="other"&gt;The articles or certificate of incorporation of a nonprofit
              corporation, duly certified by the Secretary of State, is conclusive evidence of the
              formation of the corporation and prima facie evidence of its corporate existence.
              &lt;/inlinenote&gt; &lt;/ref:subjectmattercite&gt; &lt;/seclaw:digestinfo&gt;
              &lt;/seclaw:digest&gt; </codeblock>
          </section>
          <section>
            <title>Changes</title>
            <p>2015-04-27: <ph id="change_20150427_snb">Corrected typo in 2nd paragraph; changed
                  <sourcexml>bodytext/h</sourcexml> to <sourcexml>bodytext/pgrp/h</sourcexml>. Added
                instruction to process all immediately following nested pgrp elements
                  (<sourcexml>bodytext/pgrp/pgrp</sourcexml>), and an instruction describing when to
                close the created <targetxml>seclaw:subjectmatterreference</targetxml> or
                  <targetxml>ref:subjectmattercite</targetxml> element.</ph></p>
          </section>

        </body>
      </topic>

      <topic id="pg-landing-other-3">
        <title>bodytext/pgrp/p <lnpid>id-USPA-31037</lnpid></title>
        <body>
          <p>Each <sourcexml>bodytext/pgrp/p</sourcexml> causes a new
              <targetxml>seclaw:digest</targetxml> and child
              <targetxml>seclaw:digestinfo</targetxml> to be created. </p>
          <p>The <sourcexml>bodytext/pgrp/p</sourcexml> then becomes either
              <targetxml>seclaw:subjectmatterreference</targetxml> or
              <targetxml>ref:subjectmattercite</targetxml> depending on its contents:</p>
          <ul>
            <li>If the <sourcexml>p</sourcexml>, or any of its subelements, does <b>not</b> contain
              a <sourcexml>ci:cite</sourcexml>, then a
                <targetxml>seclaw:subjectmatterreference</targetxml> element is created. In this
              case the content of <sourcexml>p</sourcexml> and <sourcexml>p/text</sourcexml> is
              moved to the target document as the content of the created
                <targetxml>seclaw:subjectmatterreference</targetxml> element's children: <ul>
                <li><targetxml>seclaw:subjectmattertext</targetxml></li>
                <li><targetxml>ref:crossreference</targetxml></li>
                <li><targetxml>ref:lnlink</targetxml></li>
                <li><targetxml>url</targetxml></li>
                <li><targetxml>connector</targetxml></li>
                <li><targetxml>inlinenote</targetxml></li>
              </ul> The start-tag and end-tag for <sourcexml>text</sourcexml> (but not the element
              content) are dropped. Any sequence of data characters that occur as a direct child of
                <sourcexml>p/text</sourcexml> are wrapped with a
                <targetxml>seclaw:subjectmattertext</targetxml> element. <note>There is one an
                exception to the above sentence: if an entire sequence of data characters consists
                of <b>only</b> punctuation and/or the words "and" or "or", this sequence should be
                wrapped with <targetxml>connector</targetxml> instead of
                  <targetxml>seclaw:subjectmattertext</targetxml>.</note> A child element with the
              XPath <sourcexml>p/text/emph</sourcexml> is also wrapped with a
                <targetxml>seclaw:subjectmattertext</targetxml> element, and the
                <sourcexml>emph</sourcexml> is converted using the common element instructions for
              this element provided in the "General Markup" part of the conversion instructions.
              With the exception of <sourcexml>note</sourcexml> (see note below), all subelements of
                <sourcexml>p</sourcexml> and <sourcexml>p/text</sourcexml> (such as
                <sourcexml>empth</sourcexml>, <sourcexml>url</sourcexml>, and
                <sourcexml>remotelink</sourcexml>) are converted using the common element
              instructions for these elements provided in the "General Markup" part of the
              conversion instructions. <note>Convert any child <sourcexml>note</sourcexml> elements
                to <targetxml>inlinenote</targetxml> as described in the subtopic <xref
                  href="#pg-landing-inlinenote">note becomes inlinenote</xref>. </note>
              <note>There is currently no scenario where there are multiple
                  <sourcexml>note</sourcexml> elements in this context, and given our understanding
                of the way the data is generated this is not even theorectically possible.</note>
            </li>
            <li>If the <sourcexml>p</sourcexml>, or any of its subelements, <b>does</b> contain a
                <sourcexml>ci:cite</sourcexml>, then a <targetxml>ref:subjectmattercite</targetxml>
              element is created. The start-tag and end-tag for <sourcexml>text</sourcexml> (but not
              the element content) are dropped. Any data character content of the
                <sourcexml>p</sourcexml> and <sourcexml>p/text</sourcexml> becomes the direct
              content of the created <targetxml>ref:subjectmattercite</targetxml>. All subelements
              of <sourcexml>p</sourcexml> and <sourcexml>p/text </sourcexml> (such as
                <sourcexml>empth</sourcexml> and <sourcexml>ci:cite</sourcexml>) are converted using
              the common element instructions for these elements provided in the "General Markup"
              part of the conversion instructions. </li>
          </ul>
          <p>Any sibling nested pgrp elements (<sourcexml>bodytext/pgrp/pgrp</sourcexml>)
            immediately following the <sourcexml>bodytext/pgrp/h</sourcexml> should be processed as
            described in the section of this instruction appropriate for the landing page type
              (<xref href="#pg-landing-nestedpgrp-pg">Nested pgrp within Landing Page Type
              "Practical Guidance"</xref> or <xref href="#pg-landing-nestedpgrp-other">Nested pgrp
              within Landing Page Type NOT "Practical Guidance"</xref>). Note that for landing pages
            of type "Practical Guidance", any nested <sourcexml>pgrp</sourcexml> elements will be
            processed and produce target markup inside the
              <targetxml>seclaw:subjectmatterreference</targetxml> or
              <targetxml>ref:subjectmattercite</targetxml> element created from this
              <sourcexml>bodytext/pgrp/h</sourcexml>.</p>
          <p>The created <targetxml>seclaw:subjectmatterreference</targetxml> or
              <targetxml>ref:subjectmattercite</targetxml> is closed when all children of
              <sourcexml>bodytext/pgrp/p</sourcexml> have been processed and all immediately
            following nested pgrp elements (<sourcexml>bodytext/pgrp/pgrp</sourcexml>) have been
            processed.</p>
          <p>The created <targetxml>seclaw:digest</targetxml> and
              <targetxml>seclaw:digestinfo</targetxml> are closed when a
              <sourcexml>bodytext/pgrp/h</sourcexml> start-tag,
              <sourcexml>bodytext/pgrp/p</sourcexml> start-tag, or a
              <sourcexml>bodytext/pgrp</sourcexml> end-tag is encountered. </p>

          <section>
            <title>Source XML showing conversion to seclaw:subjectmatterreference</title>
            <codeblock> &lt;bodytext searchtype="Practical Guidance"&gt; &lt;h&gt;Formation of the
              Not-for-Profit Corporation &lt;/h&gt; &lt;pgrp&gt; &lt;p&gt; &lt;text&gt;
              &lt;remotelink dpsi="0LTT" remotekey1="DOC-ID" remotekey2="0LTT_7025" service="DOC-ID"
              &gt;California Nonprofit Corporation Formation Checklist &lt;/remotelink&gt;
              &lt;/text&gt; &lt;/p&gt; &lt;p&gt; &lt;remotelink dpsi="0LTT" remotekey1="DOC-ID"
              remotekey2="0LTT_9746" service="DOC-ID" &gt;Formation of the Nonprofit, Nonstock
              Corporation by Nicholas Unkovic, Squire, Sanders &amp;amp; Dempsey (US) LLP
              &lt;/remotelink&gt; &lt;/p&gt; </codeblock>
          </section>
          <section>
            <title>Target XML showing conversion to seclaw:subjectmatterreference</title>
            <codeblock> &lt;seclaw:bodytext&gt; &lt;seclaw:digestgrp&gt; &lt;heading&gt;
              &lt;title&gt;Formation of the Not-for-Profit Corporation&lt;/title&gt;
              &lt;/heading&gt; &lt;seclaw:digest&gt; &lt;seclaw:digestinfo&gt;
              &lt;seclaw:subjectmatterreference&gt; &lt;ref:crossreference&gt;
              &lt;ref:content&gt;California Nonprofit Corporation Formation
              Checklist&lt;/ref:content&gt; &lt;ref:locator&gt; &lt;ref:locator-key&gt;
              &lt;ref:key-name name="DOC-ID"/&gt; &lt;ref:key-value value="0LTT-0LTT_7025"/&gt;
              &lt;/ref:locator-key&gt; &lt;/ref:locator&gt; &lt;/ref:crossreference&gt;
              &lt;/seclaw:subjectmatterreference&gt; &lt;/seclaw:digestinfo&gt;
              &lt;/seclaw:digest&gt; &lt;seclaw:digest&gt; &lt;seclaw:digestinfo&gt;
              &lt;seclaw:subjectmatterreference&gt; &lt;ref:crossreference&gt;
              &lt;ref:content&gt;Formation of the Nonprofit, Nonstock Corporation by Nicholas
              Unkovic, Squire, Sanders &amp;amp; Dempsey (US) LLP&lt;/ref:content&gt;
              &lt;ref:locator&gt; &lt;ref:locator-key&gt; &lt;ref:key-name name="DOC-ID"/&gt;
              &lt;ref:key-value value="0LTT-0LTT_9746"/&gt; &lt;/ref:locator-key&gt;
              &lt;/ref:locator&gt; &lt;/ref:crossreference&gt;
              &lt;/seclaw:subjectmatterreference&gt; &lt;/seclaw:digestinfo&gt;
              &lt;/seclaw:digest&gt; </codeblock>
          </section>

          <section>
            <title>Source XML showing conversion to ref:subjectmattercite</title>
            <codeblock> &lt;bodytext searchtype="Legal Analysis"&gt; &lt;h&gt;Formation of the
              Not-for-Profit Corporation &lt;/h&gt; &lt;pgrp&gt; &lt;p&gt;
              &lt;text&gt;Preincorporation Planning 3-19 &lt;ci:cite ID="I54P3G8828T4F50010000400"
              normcite="BALLANTINE STERLING CALIFORNIA CORPORATION LAWS 404" normprotocol="lexstat"
              status="valid"&gt; &lt;ci:stat&gt; &lt;ci:statref normcite="_404"&gt;
              &lt;ci:standardname normpubcode="26148"/&gt; &lt;/ci:statref&gt; &lt;/ci:stat&gt;
              &lt;ci:content&gt;Ballantine and Sterling California Corporation Laws § 404
              &lt;/ci:content&gt; &lt;/ci:cite&gt; &lt;/text&gt; &lt;note notetype="other"&gt;
              &lt;p&gt; &lt;text&gt;When a nonprofit organization is proposed to carry out some
              activity, a threshold determination is the proper form of entity and type of nonprofit
              corporation. &lt;/text&gt; &lt;/p&gt; &lt;/note&gt; &lt;/p&gt; &lt;p&gt;
              &lt;text&gt;Selecting Appropriate Type of Nonprofit Corporation &lt;ci:cite
              ID="I54P3G8828T4F50020000400" normcite="CALIFORNIA LEGAL FORMS--TRANSACTION GUIDE
              13.12" normprotocol="lexstat" status="valid"&gt; &lt;ci:stat&gt; &lt;ci:statref
              normcite="_13.12"&gt; &lt;ci:standardname normpubcode="26166"/&gt; &lt;/ci:statref&gt;
              &lt;/ci:stat&gt; &lt;ci:content&gt;6-13 California Legal Forms--Transaction Guide §
              13.12 &lt;/ci:content&gt; &lt;/ci:cite&gt; &lt;/text&gt; &lt;note notetype="other"&gt;
              &lt;p&gt; &lt;text&gt;Generally, a nonprofit can be a public benefit corporation,
              mutual benefit corporation or a religious organization. &lt;/text&gt; &lt;/p&gt;
              &lt;/note&gt; &lt;/p&gt; </codeblock>
          </section>
          <section>
            <title>Target XML showing conversion to ref:subjectmattercite</title>
            <codeblock> &lt;seclaw:bodytext&gt; &lt;seclaw:digestgrp&gt;
              &lt;heading&gt;&lt;title&gt;Formation of the Not-for-Profit
              Corporation&lt;/title&gt;&lt;/heading&gt; &lt;seclaw:digest&gt;
              &lt;seclaw:digestinfo&gt; &lt;ref:subjectmattercite&gt;Preincorporation Planning 3-19
              &lt;lnci:cite ID="I54P3G8828T4F50010000400" normcite="BALLANTINE STERLING CALIFORNIA
              CORPORATION LAWS 404" normprotocol="lexstat" status="valid"&gt; &lt;lnci:stat&gt;
              &lt;lnci:statref normcite="_404"&gt; &lt;lnci:standardname normpubcode="26148"/&gt;
              &lt;/lnci:statref&gt; &lt;/lnci:stat&gt; &lt;lnci:content&gt;Ballantine and Sterling
              California Corporation Laws § 404 &lt;/lnci:content&gt; &lt;/lnci:cite&gt;
              &lt;inlinenote notetype="other"&gt;When a nonprofit organization is proposed to carry
              out some activity, a threshold determination is the proper form of entity and type of
              nonprofit corporation.&lt;/inlinenote&gt; &lt;/ref:subjectmattercite&gt;
              &lt;/seclaw:digestinfo&gt; &lt;/seclaw:digest&gt; &lt;seclaw:digest&gt;
              &lt;seclaw:digestinfo&gt; &lt;ref:subjectmattercite&gt;Selecting Appropriate Type of
              Nonprofit Corporation &lt;lnci:cite ID="I54P3G8828T4F50020000400" normcite="CALIFORNIA
              LEGAL FORMS--TRANSACTION GUIDE 13.12" normprotocol="lexstat" status="valid"&gt;
              &lt;lnci:stat&gt; &lt;lnci:statref normcite="_13.12"&gt; &lt;lnci:standardname
              normpubcode="26166"/&gt; &lt;/lnci:statref&gt; &lt;/lnci:stat&gt;
              &lt;lnci:content&gt;6-13 California Legal Forms--Transaction Guide § 13.12
              &lt;/lnci:content&gt; &lt;/lnci:cite&gt; &lt;inlinenote notetype="other"&gt;Generally,
              a nonprofit can be a public benefit corporation, mutual benefit corporation or a
              religious organization.&lt;/inlinenote&gt; &lt;/ref:subjectmattercite&gt;
              &lt;/seclaw:digestinfo&gt; &lt;/seclaw:digest&gt; </codeblock>
          </section>

          <section>
            <title>Changes</title>
            <p>2015-04-27: <ph id="change_20150427_snb">Added instruction to process all immediately
                following nested pgrp elements (<sourcexml>bodytext/pgrp/pgrp</sourcexml>), and an
                instruction describing when to close the created
                  <targetxml>seclaw:subjectmatterreference</targetxml> or
                  <targetxml>ref:subjectmattercite</targetxml> element.</ph></p>
          </section>

        </body>
      </topic>

    </topic>

    <topic id="pg-landing-nestedpgrp-pg">
      <title>Nested pgrp within Landing Page Type "Practical Guidance"
        <lnpid>id-USPA-31038</lnpid></title>
      <body>
        <p>These conversions apply only to child elements of
            <sourcexml>bodytext/@searchtype="Practical Guidance"/pgrp/pgrp</sourcexml>. </p>
      </body>

      <topic id="pg-landing-nestedpgrp-pg-1">
        <title>bodytext/pgrp/pgrp <lnpid>id-USPA-31039</lnpid></title>
        <body>
          <p><sourcexml>bodytext/pgrp/pgrp</sourcexml> becomes <targetxml>toc</targetxml>. </p>

          <note>Because of the way in which these landing pages are structured, the
              <targetxml>toc</targetxml> element created will be inside a target document
              <targetxml>seclaw:subjectmatterreference</targetxml> or
              <targetxml>ref:subjectmattercite</targetxml> element created by another instruction in
            this document.</note>

          <section>
            <title>Source XML</title>
            <codeblock> &lt;h&gt;Organizational Matters &lt;/h&gt; &lt;pgrp&gt; &lt;h&gt;
              &lt;remotelink dpsi="0LTT" remotekey1="DOC-ID" remotekey2="0LTT_9964" service="DOC-ID"
              &gt;Organizational Matters by Nicholas Unkovic, Squire, Sanders &amp;amp; Dempsey (US)
              LLP &lt;/remotelink&gt; &lt;/h&gt; &lt;pgrp&gt; &lt;!-- ... --&gt; </codeblock>
          </section>
          <section>
            <title>Target XML</title>
            <codeblock> &lt;seclaw:digestgrp&gt; &lt;heading&gt; &lt;title&gt;Organizational Matters
              &lt;/title&gt; &lt;/heading&gt; &lt;seclaw:digest&gt; &lt;seclaw:digestinfo&gt;
              &lt;seclaw:subjectmatterreference&gt; &lt;ref:crossreference&gt;
              &lt;ref:content&gt;Organizational Matters by Nicholas Unkovic, Squire, Sanders
              &amp;amp; Dempsey (US) LLP&lt;/ref:content&gt; &lt;ref:locator&gt;
              &lt;ref:locator-key&gt; &lt;ref:key-name name="DOC-ID"/&gt; &lt;ref:key-value
              value="0LTT-0LTT_9964"/&gt; &lt;/ref:locator-key&gt; &lt;/ref:locator&gt;
              &lt;/ref:crossreference&gt; &lt;toc&gt; &lt;!-- ... --&gt; </codeblock>
          </section>

          <section>
            <title>Changes</title>
            <p>2015-04-27: <ph id="change_20150427_snb">Added a note to indicate that
                  <targetxml>toc</targetxml> created from <sourcexml>bodytext/pgrp/pgrp</sourcexml>
                will be inside a a target document
                  <targetxml>seclaw:subjectmatterreference</targetxml> or
                  <targetxml>ref:subjectmattercite</targetxml> element created by another
                instruction in this document.</ph></p>
          </section>

        </body>
      </topic>

      <topic id="pg-landing-nestedpgrp-pg-2">
        <title>bodytext/pgrp/pgrp/p <lnpid>id-USPA-31040</lnpid></title>
        <body>
          <p><sourcexml>bodytext/pgrp/pgrp/p</sourcexml> causes a new
              <sourcexml>toc-entry</sourcexml> to be created. The first <sourcexml>text</sourcexml>
            child element of these <sourcexml>bodytext/pgrp/pgrp/p</sourcexml> elements always
            starts with a child <sourcexml>remotelink</sourcexml> or <sourcexml>url</sourcexml>, or
            a child <sourcexml>emph</sourcexml> that starts with a child
              <sourcexml>remotelink</sourcexml> or <sourcexml>url</sourcexml>. The
              <sourcexml>url</sourcexml> always contains a <sourcexml>remotelink</sourcexml> child
            element. Thus, there will always be a <sourcexml>remotelink</sourcexml> child.</p>

          <p><targetxml>toc-entry/@ref:locatorkeyprotocol</targetxml> is set to "DOC-ID" and the
              <sourcexml>remotelink</sourcexml> is parsed and converted as follows. <ul>
              <li>If <sourcexml>remotelink/@remotekey1="DOC-ID":</sourcexml><ul>
                  <li><targetxml>toc-entry/@ref:locatorkey</targetxml> is set to the the value of
                      <sourcexml>remotelink/@dpsi</sourcexml>, followed by a hyphen ("-"). Then it
                    is concatenated with the value of <sourcexml>remotelink/@remotekey2</sourcexml>.
                    If and only if <sourcexml>remotelink/@remotelink2</sourcexml> is <b>not</b>
                    present, use <sourcexml>remotelink/@refpt</sourcexml> instead.</li>
                </ul></li>
              <li>If <sourcexml>remotelink/@remotekey1="REFPTID":</sourcexml><ul>
                  <li><targetxml>toc-entry/@ref:locatorkey</targetxml> is set to the the value of
                      <sourcexml>remotelink/@dpsi</sourcexml>, followed by a hyphen ("-"). Then it
                    is concatenated with the value of <sourcexml>remotelink/@docidref</sourcexml>.
                    If <sourcexml>remotelink/@docidref</sourcexml> is not present, this is
                    considered a data error. </li>
                  <li><targetxml>toc-entry/@anchoridref</targetxml> is set to the value of
                      <sourcexml>remotelink/@refpt</sourcexml>. If and only if
                      <sourcexml>remotelink/@refpt</sourcexml> is <b>not</b> present, use
                      <sourcexml>remotelink/@remotelink2</sourcexml> instead. If this value begins
                    with a number, an underscore (_) is added to the front.</li>
                </ul>
              </li>
            </ul> All other attributes of <sourcexml>remotelink</sourcexml> are dropped. </p>

          <note>If <sourcexml>remotelink/@dpsi</sourcexml> is not present, the value from
              <sourcexml>docinfo:dpsi/@id-string</sourcexml> is used. If there is no
              <sourcexml>docinfo:dpsi/@id-string</sourcexml> value, the value from the LBU manifest
            file is captured and used.</note>

          <p>Within the new <sourcexml>toc-entry</sourcexml> a child <sourcexml>heading</sourcexml>
            is also created, then <sourcexml>bodytext/pgrp/pgrp/p</sourcexml> becomes
              <targetxml>title</targetxml>. The start-tags and end-tags (but not the element
            content) of <sourcexml>p</sourcexml> child elements <sourcexml>text</sourcexml>,
              <sourcexml>url</sourcexml>, and <sourcexml>remotelink</sourcexml> are dropped.</p>
          <p>The newly created <sourcexml>heading</sourcexml> and <sourcexml>toc-entry</sourcexml>
            are closed immediately after the <targetxml>title</targetxml> is closed. </p>
          <note>If no <sourcexml>remotelink</sourcexml> exists within a
              <sourcexml>bodytext/pgrp/pgrp/p</sourcexml>, the given conversion instructions still
            apply except that the optional attributes
              <targetxml>toc-entry/@ref:locatorkeyprotocol</targetxml> and
              <targetxml>toc-entry/@ref:locatorkey</targetxml> are not populated. This scenario of
            no <sourcexml>remotelink</sourcexml> does not currently happen, but is mentioned since
            it is a possibility. </note>

          <section>
            <title>Source XML</title>
            <codeblock> &lt;h&gt;Organizational Matters &lt;/h&gt; &lt;pgrp&gt; &lt;h&gt;
              &lt;remotelink dpsi="0LTT" remotekey1="DOC-ID" remotekey2="0LTT_9964" service="DOC-ID"
              &gt;Organizational Matters by Nicholas Unkovic, Squire, Sanders &amp;amp; Dempsey (US)
              LLP &lt;/remotelink&gt; &lt;/h&gt; &lt;pgrp&gt; &lt;p&gt; &lt;text&gt; &lt;remotelink
              dpsi="0LTT" refpt="CITEID_759" remotekey1="REFPTID" docidref="EXAMPLE_DOCID1"
              service="DOC-ID" &gt;Action of Incorporator &lt;/remotelink&gt; &lt;/text&gt;
              &lt;/p&gt; &lt;p&gt; &lt;text&gt; &lt;remotelink dpsi="0LTT" refpt="CITEID_760"
              remotekey1="REFPTID" docidref="EXAMPLE_DOCID2" service="DOC-ID" &gt;Organizational
              Meeting &lt;/remotelink&gt; &lt;/text&gt; &lt;/p&gt; &lt;/pgrp&gt; &lt;/pgrp&gt;
              &lt;h&gt;Ongoing Compliance Requirements &lt;/h&gt; </codeblock>
          </section>
          <section>
            <title>Target XML</title>
            <codeblock> &lt;seclaw:digestgrp&gt; &lt;heading&gt; &lt;title&gt;Organizational Matters
              &lt;/title&gt; &lt;/heading&gt; &lt;seclaw:digest&gt; &lt;seclaw:digestinfo&gt;
              &lt;seclaw:subjectmatterreference&gt; &lt;ref:crossreference&gt;
              &lt;ref:content&gt;Organizational Matters by Nicholas Unkovic, Squire, Sanders
              &amp;amp; Dempsey (US) LLP&lt;/ref:content&gt; &lt;ref:locator&gt;
              &lt;ref:locator-key&gt; &lt;ref:key-name name="DOC-ID"/&gt; &lt;ref:key-value
              value="OLTT-0LTT_9964"/&gt; &lt;/ref:locator-key&gt; &lt;/ref:locator&gt;
              &lt;/ref:crossreference&gt; &lt;toc&gt; &lt;toc-entry ref:locatorkeyprotocol="DOC-ID"
              ref:locatorkey="OLTT-EXAMPLE_DOCID1 anchoridref="CITEID_759"&gt; &lt;heading&gt;
              &lt;title&gt;Action of Incorporator&lt;/title&gt; &lt;/heading&gt; &lt;/toc-entry&gt;
              &lt;toc-entry ref:locatorkeyprotocol="DOC-ID" ref:locatorkey="OLTT-EXAMPLE_DOCID2"
              anchoridref="CITEID_760"&gt; &lt;heading&gt; &lt;title&gt;Organizational
              Meeting&lt;/title&gt; &lt;/heading&gt; &lt;/toc-entry&gt; &lt;/toc&gt;
              &lt;/seclaw:subjectmatterreference&gt; &lt;/seclaw:digestinfo&gt;
              &lt;/seclaw:digest&gt; &lt;/seclaw:digestgrp&gt; &lt;seclaw:digestgrp&gt;
              &lt;heading&gt; &lt;title&gt;Ongoing Compliance Requirements &lt;/title&gt;
              &lt;/heading&gt; &lt;!-- ... --&gt; </codeblock>
          </section>

        </body>
      </topic>

    </topic>

    <topic id="pg-landing-nestedpgrp-other">
      <title>Nested pgrp within Landing Page Type NOT "Practical Guidance"
          <lnpid>id-USPA-31041</lnpid></title>
      <body>
        <p>These conversions apply only to child elements of <sourcexml>bodytext</sourcexml> when
            <sourcexml>bodytext/@searchtype</sourcexml> is NOT equal to "Practical Guidance". </p>
      </body>

      <topic id="pg-landing-nestedpgrp-other-1">
        <title>bodytext/pgrp/h/@l="2" <lnpid>id-USPA-31042</lnpid></title>
        <body>
          <p><sourcexml>bodytext/pgrp/h/@l="2"</sourcexml> causes a new
              <targetxml>seclaw:digestgrp</targetxml> tand child <targetxml>heading</targetxml> to
            be created, then <sourcexml>bodytext/h/@l="2"</sourcexml> becomes
              <targetxml>title</targetxml>, the <sourcexml>@l</sourcexml> attribute is dropped, and
            then the <targetxml>heading</targetxml> is closed. The created
              <targetxml>seclaw:digestgrp</targetxml> is closed when any
              <sourcexml>bodytext/pgrp/h</sourcexml> start-tag (regardless of attribute values),
              <sourcexml>bodytext/pgrp/p</sourcexml> start-tag, or the
              <sourcexml>bodytext/pgrp</sourcexml> end-tag is encountered. </p>
          <note>Due to the way the source document is structured, and given the other conversion
            instructions, when this new <targetxml>seclaw:digestgrp</targetxml> is created, there
            will already be a <targetxml>seclaw:digestgrp</targetxml> open, and that
              <targetxml>seclaw:digestgrp</targetxml> must remain open, becoming the new
              <targetxml>seclaw:digestgrp</targetxml> element's parent. In other words, the new
              <targetxml>seclaw:digestgrp</targetxml> will be nested inside an existing
              <targetxml>seclaw:digestgrp</targetxml> and this is by design. </note>
          <note>The <sourcexml>bodytext/pgrp/h/@l="2"</sourcexml> element is always followed by a
              <sourcexml>pgrp</sourcexml>, so that a nested <sourcexml>pgrp</sourcexml> context
            occurs (partial xpath <sourcexml>bodytext/pgrp/pgrp</sourcexml>). </note>
          <section>
            <title>Source XML</title>
            <codeblock> &lt;bodytext searchtype="Forms and Precedents"&gt; &lt;h&gt;Papering the
              Transaction &lt;/h&gt; &lt;pgrp&gt; &lt;h l="2"&gt;Expert Annotated Forms &lt;/h&gt;
              &lt;pgrp&gt; &lt;p&gt; &lt;!-- ... --&gt; </codeblock>
          </section>
          <section>
            <title>Target XML</title>
            <codeblock> &lt;seclaw:bodytext&gt; &lt;seclaw:digestgrp&gt;
              &lt;heading&gt;&lt;title&gt;Papering the Transaction&lt;/title&gt;&lt;/heading&gt;
              &lt;seclaw:digestgrp&gt; &lt;heading&gt;&lt;title&gt;Expert Annotated
              Forms&lt;/title&gt;&lt;/heading&gt; &lt;seclaw:digest&gt; &lt;seclaw:digestinfo&gt;
              &lt;!-- ... --&gt; </codeblock>
          </section>

          <section>
            <title>Changes</title>
            <p>2015-04-27: <ph id="change_20150427_snb">Corrected a typo in the note starting with
                "Due to the way the source document.." Changed "already be a
                  <targetxml>seclaw:digest</targetxml> open..." to "already be a
                  <targetxml>seclaw:digestgrp</targetxml> open..."</ph></p>
          </section>
        </body>
      </topic>

      <topic id="pg-landing-nestedpgrp-other-2">
        <title>bodytext/pgrp/pgrp/h <lnpid>id-USPA-31043</lnpid></title>
        <body>
          <p>Each <sourcexml>bodytext/pgrp/pgrp/h</sourcexml> that does not have a
              <sourcexml>h/@l</sourcexml> attribute specified causes a new
              <targetxml>seclaw:digest</targetxml> and child
              <targetxml>seclaw:digestinfo</targetxml> to be created. </p>
          <p>If <sourcexml>bodytext/pgrp/pgrp/h</sourcexml> contains
              <sourcexml>classifcation</sourcexml>, transform <sourcexml>classification</sourcexml>
            as a preceding-sibling to the <targetxml>seclaw:subjectmatterreference</targetxml> or
              <targetxml>ref:subjectmattercite</targetxml> indicated below (that is, as a child of
            the same <targetxml>seclaw:digestinfo</targetxml> that will contain the cite), according
            to the <sourcexml>classifcation</sourcexml> conversion instructions elsewhere. </p>
          <p><sourcexml>bodytext/pgrp/h</sourcexml> then becomes either
              <targetxml>seclaw:subjectmatterreference</targetxml> or
              <targetxml>ref:subjectmattercite</targetxml> depending on its contents:</p>
          <ul>
            <li>If the <sourcexml>h</sourcexml>, or any of its subelements, does <b>not</b> contain
              a <sourcexml>ci:cite</sourcexml>, then a
                <targetxml>seclaw:subjectmatterreference</targetxml> element is created. In this
              case the content of <sourcexml>h</sourcexml> is moved to the target document as the
              content of the created <targetxml>seclaw:subjectmatterreference</targetxml> element's
              children: <ul>
                <li><targetxml>seclaw:subjectmattertext</targetxml></li>
                <li><targetxml>ref:crossreference</targetxml></li>
                <li><targetxml>ref:lnlink</targetxml></li>
                <li><targetxml>url</targetxml></li>
                <li><targetxml>connector</targetxml></li>
                <li><targetxml>inlinenote</targetxml></li>
              </ul> Any sequence of data characters that occur as a direct child of the
                <sourcexml>h</sourcexml> are wrapped with a
                <targetxml>seclaw:subjectmattertext</targetxml> element. <note>There is one an
                exception to the above sentence: if an entire sequence of data characters consists
                of <b>only</b> punctuation and/or the words "and" or "or", this sequence should be
                wrapped with <targetxml>connector</targetxml> instead of
                  <targetxml>seclaw:subjectmattertext</targetxml>.</note> A child element with the
              XPath <sourcexml>h/emph</sourcexml> is also wrapped with a
                <targetxml>seclaw:subjectmattertext</targetxml> element, and the
                <sourcexml>emph</sourcexml> is converted using the common element instructions for
              this element provided in the "General Markup" part of the conversion instructions.
              With the exception of <sourcexml>note</sourcexml> (see note below), all subelements of
                <sourcexml>h</sourcexml> (such as <sourcexml>empth</sourcexml>,
                <sourcexml>url</sourcexml>, and <sourcexml>remotelink</sourcexml>) are converted
              using the common element instructions for these elements provided in the "General
              Markup" part of the conversion instructions. <note>Convert any child
                  <sourcexml>note</sourcexml> elements to <targetxml>inlinenote</targetxml> as
                described in the subtopic <xref href="#pg-landing-inlinenote">note becomes
                  inlinenote</xref>. </note>
              <note>There is currently no scenario where there are multiple
                  <sourcexml>note</sourcexml> elements in this context, and given our understanding
                of the way the data is generated this is not even theorectically possible.</note>
            </li>
            <li>If the <sourcexml>h</sourcexml>, or any of its subelements, <b>does</b> contain a
                <sourcexml>ci:cite</sourcexml>, then a <targetxml>ref:subjectmattercite</targetxml>
              element is created. Any data character content of the <sourcexml>h</sourcexml> becomes
              the direct content of the created <targetxml>ref:subjectmattercite</targetxml>. All
              subelements of <sourcexml>h</sourcexml> (such as <sourcexml>empth</sourcexml> and
                <sourcexml>ci:cite</sourcexml>) are converted using the common element instructions
              for these elements provided in the "General Markup" part of the conversion
              instructions. </li>
          </ul>

          <p>The created <targetxml>seclaw:digest</targetxml> and
              <targetxml>seclaw:digestinfo</targetxml> are closed when a
              <sourcexml>bodytext/pgrp/pgrp/h</sourcexml> start-tag,
              <sourcexml>bodytext/pgrp/pgrp/p</sourcexml> start-tag, or a
              <sourcexml>bodytext/pgrp/pgrp</sourcexml> end-tag is encountered. </p>

          <section>
            <title>Source XML</title>
            <codeblock> &lt;pgrp&gt; &lt;h&gt;...&lt;/h&gt; &lt;pgrp&gt; &lt;h l="2"&gt;Amending
              Organizational Documents &lt;/h&gt; &lt;pgrp&gt; &lt;h&gt; &lt;remotelink dpsi="0MSE"
              remotekey1="DOC-ID" remotekey2="0MSE_10608" service="DOC-ID" &gt;Certificate of
              Amendment of Articles of Incorporation (Sample) (California Official Form)
              &lt;/remotelink&gt; &lt;/h&gt; &lt;h&gt; &lt;remotelink dpsi="0MSE"
              remotekey1="DOC-ID" remotekey2="0MSE_10951" service="DOC-ID" &gt;Restated Articles of
              Incorporation (Sample) (California Official Form) &lt;/remotelink&gt; &lt;/h&gt;
              &lt;/pgrp&gt; &lt;!-- ... --&gt; &lt;/pgrp&gt; </codeblock>
          </section>
          <section>
            <title>Target XML</title>
            <codeblock> &lt;seclaw:digestgrp&gt; &lt;heading&gt; &lt;title&gt;...&lt;/title&gt;
              &lt;/heading&gt; &lt;seclaw:digestgrp&gt; &lt;heading&gt; &lt;title&gt;Amending
              Organizational Documents&lt;/title&gt; &lt;/heading&gt; &lt;seclaw:digest&gt;
              &lt;seclaw:digestinfo&gt; &lt;seclaw:subjectmatterreference&gt;
              &lt;ref:crossreference&gt; &lt;ref:content&gt;Certificate of Amendment of Articles of
              Incorporation (Sample) (California Official Form)&lt;/ref:content&gt;
              &lt;ref:locator&gt; &lt;ref:locator-key&gt; &lt;ref:key-name name="DOC-ID"/&gt;
              &lt;ref:key-value value="0MSE-0MSE_10608"/&gt; &lt;/ref:locator-key&gt;
              &lt;/ref:locator&gt; &lt;/ref:crossreference&gt;
              &lt;/seclaw:subjectmatterreference&gt; &lt;/seclaw:digestinfo&gt;
              &lt;/seclaw:digest&gt; &lt;seclaw:digest&gt; &lt;seclaw:digestinfo&gt;
              &lt;seclaw:subjectmatterreference&gt; &lt;ref:crossreference&gt;
              &lt;ref:content&gt;Restated Articles of Incorporation (Sample) (California Official
              Form)&lt;/ref:content&gt; &lt;ref:locator&gt; &lt;ref:locator-key&gt; &lt;ref:key-name
              name="DOC-ID"/&gt; &lt;ref:key-value value="0MSE-0MSE_10951"/&gt;
              &lt;/ref:locator-key&gt; &lt;/ref:locator&gt; &lt;/ref:crossreference&gt;
              &lt;/seclaw:subjectmatterreference&gt; &lt;/seclaw:digestinfo&gt;
              &lt;/seclaw:digest&gt; &lt;/seclaw:digestgrp&gt; &lt;/seclaw:digestgrp&gt;
            </codeblock>
          </section>

          <section>
            <title>Changes</title>
            <p>2015-07-17: <ph id="change_20150716_bmh">Added instructions for
                  <sourcexml>classification</sourcexml> within
                  <sourcexml>bodytext/pgrp/pgrp/h</sourcexml>.</ph></p>
            <p>2015-04-27: <ph id="change_20150427_snb">Corrected typo. Changed "Each
                  <sourcexml>bodytext/pgrp/h</sourcexml> that does not have..." to "Each
                  <sourcexml>bodytext/pgrp/pgrp/h</sourcexml> that does not have..."</ph></p>
          </section>
        </body>
      </topic>

      <topic id="pg-landing-nestedpgrp-other-3">
        <title>bodytext/pgrp/pgrp/p <lnpid>id-USPA-31044</lnpid></title>
        <body>
          <p>Each <sourcexml>bodytext/pgrp/pgrp/p</sourcexml> causes a new
              <targetxml>seclaw:digest</targetxml> and child
              <targetxml>seclaw:digestinfo</targetxml> to be created. </p>
          <p>If <sourcexml>bodytext/pgrp/pgrp/p</sourcexml> contains
              <sourcexml>classifcation</sourcexml>, transform <sourcexml>classification</sourcexml>
            as a preceding-sibling to the <targetxml>seclaw:subjectmatterreference</targetxml> or
              <targetxml>ref:subjectmattercite</targetxml> indicated below (that is, as a child of
            the same <targetxml>seclaw:digestinfo</targetxml> that will contain the cite), according
            to the <sourcexml>classifcation</sourcexml> conversion instructions elsewhere. </p>
          <p><sourcexml>bodytext/pgrp/p</sourcexml> then becomes either
              <targetxml>seclaw:subjectmatterreference</targetxml> or
              <targetxml>ref:subjectmattercite</targetxml> depending on its contents: </p>
          <ul>
            <li>If the <sourcexml>p</sourcexml>, or any of its subelements, does <b>not</b> contain
              a <sourcexml>ci:cite</sourcexml>, then a
                <targetxml>seclaw:subjectmatterreference</targetxml> element is created. In this
              case the content of <sourcexml>p</sourcexml> and <sourcexml>p/text</sourcexml> is
              moved to the target document as the content of the created
                <targetxml>seclaw:subjectmatterreference</targetxml> element's children: <ul>
                <li><targetxml>seclaw:subjectmattertext</targetxml></li>
                <li><targetxml>ref:crossreference</targetxml></li>
                <li><targetxml>ref:lnlink</targetxml></li>
                <li><targetxml>url</targetxml></li>
                <li><targetxml>connector</targetxml></li>
                <li><targetxml>inlinenote</targetxml></li>
              </ul> The start-tag and end-tag for <sourcexml>text</sourcexml> (but not the element
              content) are dropped. Any sequence of data characters that occur as a direct child of
                <sourcexml>p/text</sourcexml> are wrapped with a
                <targetxml>seclaw:subjectmattertext</targetxml> element. <note>There is one an
                exception to the above sentence: if an entire sequence of data characters consists
                of <b>only</b> punctuation and/or the words "and" or "or", this sequence should be
                wrapped with <targetxml>connector</targetxml> instead of
                  <targetxml>seclaw:subjectmattertext</targetxml>.</note> A child element with the
              XPath <sourcexml>p/text/emph</sourcexml> is also wrapped with a
                <targetxml>seclaw:subjectmattertext</targetxml> element, and the
                <sourcexml>emph</sourcexml> is converted using the common element instructions for
              this element provided in the "General Markup" part of the conversion instructions.
              With the exception of <sourcexml>note</sourcexml> (see note below), all subelements of
                <sourcexml>p</sourcexml> and <sourcexml>p/text</sourcexml> (such as
                <sourcexml>empth</sourcexml>, <sourcexml>url</sourcexml>, and
                <sourcexml>remotelink</sourcexml>) are converted using the common element
              instructions for these elements provided in the "General Markup" part of the
              conversion instructions. <note>Convert any child <sourcexml>note</sourcexml> elements
                to <targetxml>inlinenote</targetxml> as described in the subtopic <xref
                  href="#pg-landing-inlinenote">note becomes inlinenote</xref>. </note>
              <note>There is currently no scenario where there are multiple
                  <sourcexml>note</sourcexml> elements in this context, and given our understanding
                of the way the data is generated this is not even theorectically possible.</note>
            </li>
            <li>If the <sourcexml>p</sourcexml>, or any of its subelements, <b>does</b> contain a
                <sourcexml>ci:cite</sourcexml>, then a <targetxml>ref:subjectmattercite</targetxml>
              element is created. The start-tag and end-tag for <sourcexml>text</sourcexml> (but not
              the element content) are dropped. Any data character content of the
                <sourcexml>p</sourcexml> and <sourcexml>p/text</sourcexml> becomes the direct
              content of the created <targetxml>ref:subjectmattercite</targetxml>. All subelements
              of <sourcexml>p</sourcexml> and <sourcexml>p/text </sourcexml> (such as
                <sourcexml>empth</sourcexml> and <sourcexml>ci:cite</sourcexml>) are converted using
              the common element instructions for these elements provided in the "General Markup"
              part of the conversion instructions. </li>
          </ul>
          <p>The created <targetxml>seclaw:digest</targetxml> and
              <targetxml>seclaw:digestinfo</targetxml> are closed when a
              <sourcexml>bodytext/pgrp/pgrp/h</sourcexml> start-tag,
              <sourcexml>bodytext/pgrp/pgrp/p</sourcexml> start-tag, or a
              <sourcexml>bodytext/pgrp/pgrp</sourcexml> end-tag is encountered. </p>

          <section>
            <title>Source XML showing conversion to seclaw:subjectmatterreference and
              ref:subjectmattercite</title>
            <codeblock> &lt;bodytext searchtype="Forms and Precedents"&gt; &lt;h&gt;Papering the
              Transaction &lt;/h&gt; &lt;pgrp&gt; &lt;h l="2"&gt;Expert Annotated Forms &lt;/h&gt;
              &lt;pgrp&gt; &lt;p&gt; &lt;text&gt; &lt;remotelink dpsi="0N5N" remotekey1="DOC-ID"
              remotekey2="0N5N_17008" service="DOC-ID"&gt;Asset Purchase Agreement
              &lt;/remotelink&gt; &lt;/text&gt; &lt;/p&gt; &lt;/pgrp&gt; &lt;h l="2"&gt;Collier
              Forms &lt;/h&gt; &lt;pgrp&gt; &lt;p&gt; &lt;text&gt;Purchase and Sale of Assets
              Agreement &lt;ci:cite ID="I552KD492D6MYW0010000400" normcite="COLLIER FORMS MANUAL, 3D
              EDITION REVISED 28.33" normprotocol="lexstat" status="valid"&gt; &lt;ci:stat&gt;
              &lt;ci:statref normcite="_28.33"&gt; &lt;ci:standardname normpubcode="27020"/&gt;
              &lt;/ci:statref&gt; &lt;/ci:stat&gt; &lt;ci:content&gt;17-CM28 Collier Forms Manual,
              3d Edition Revised § 28.33 &lt;/ci:content&gt; &lt;/ci:cite&gt; &lt;/text&gt; &lt;note
              notetype="other"&gt; &lt;p&gt; &lt;text&gt;See Form No. 28.33-7 &lt;/text&gt;
              &lt;/p&gt; &lt;/note&gt; &lt;/p&gt; &lt;!-- ...1... --&gt; &lt;/pgrp&gt; &lt;!--
              ...2... --&gt; &lt;/pgrp&gt; &lt;/bodytext&gt; </codeblock>
          </section>
          <section>
            <title>Target XML showing conversion to seclaw:subjectmatterreference and
              ref:subjectmattercite</title>
            <codeblock> &lt;seclaw:bodytext&gt; &lt;seclaw:digestgrp&gt; &lt;heading&gt;
              &lt;title&gt;Papering the Transaction&lt;/title&gt; &lt;/heading&gt;
              &lt;seclaw:digestgrp&gt; &lt;heading&gt; &lt;title&gt;Expert Annotated
              Forms&lt;/title&gt; &lt;/heading&gt; &lt;seclaw:digest&gt; &lt;seclaw:digestinfo&gt;
              &lt;seclaw:subjectmatterreference&gt; &lt;ref:crossreference&gt;
              &lt;ref:content&gt;Asset Purchase Agreement&lt;/ref:content&gt; &lt;ref:locator&gt;
              &lt;ref:locator-key&gt; &lt;ref:key-name name="DOC-ID"/&gt; &lt;ref:key-value
              value="0N5N-0N5N_17008"/&gt; &lt;/ref:locator-key&gt; &lt;/ref:locator&gt;
              &lt;/ref:crossreference&gt; &lt;/seclaw:subjectmatterreference&gt;
              &lt;/seclaw:digestinfo&gt; &lt;/seclaw:digest&gt; &lt;/seclaw:digestgrp&gt;
              &lt;seclaw:digestgrp&gt; &lt;heading&gt; &lt;title&gt;Collier Forms&lt;/title&gt;
              &lt;/heading&gt; &lt;seclaw:digest&gt; &lt;seclaw:digestinfo&gt;
              &lt;ref:subjectmattercite&gt;Purchase and Sale of Assets Agreement &lt;lnci:cite
              ID="I552KD492D6MYW0010000400" normcite="COLLIER FORMS MANUAL, 3D EDITION REVISED
              28.33" normprotocol="lexstat" status="valid"&gt; &lt;lnci:stat&gt; &lt;lnci:statref
              normcite="_28.33"&gt; &lt;lnci:standardname normpubcode="27020"/&gt;
              &lt;/lnci:statref&gt; &lt;/lnci:stat&gt; &lt;lnci:content&gt;17-CM28 Collier Forms
              Manual, 3d Edition Revised § 28.33 &lt;/lnci:content&gt; &lt;/lnci:cite&gt;
              &lt;inlinenote notetype="other"&gt;See Form No. 28.33-7&lt;/inlinenote&gt;
              &lt;/ref:subjectmattercite&gt; &lt;/seclaw:digestinfo&gt; &lt;/seclaw:digest&gt;
              &lt;!-- ...1... --&gt; &lt;/seclaw:digestgrp&gt; &lt;!-- ...2... --&gt;
              &lt;/seclaw:digestgrp&gt; &lt;/seclaw:bodytext&gt; </codeblock>
          </section>

          <section>
            <title>Changes</title>
            <p>2015-07-17: <ph id="change_20150716_bmh">Added instructions for
                  <sourcexml>classification</sourcexml> within
                  <sourcexml>bodytext/pgrp/pgrp/h</sourcexml>.</ph></p>
            <p>2015-04-27: <ph id="change_20150427_snb">Corrected typo. Changed "Each
                  <sourcexml>bodytext/pgrp/p</sourcexml> causes a new..." to "Each
                  <sourcexml>bodytext/pgrp/pgrp/p</sourcexml> causes a new..."</ph></p>
          </section>
        </body>
      </topic>
    </topic>

    <topic id="pg-landing-referencestatusgroup">
      <title>Dates associated with remotelinks in landing page documents
          <lnpid>id-USPA-31045</lnpid></title>

      <body>
        <p>/bodytext/pgrp/h/date/[@searchtype="LAST-ACTION-DATE"] and
          /bodytext/pgrp/h/date/[@searchtype="LAST-UPDATE-DATE"]</p>

        <p>When a document is a landing page as designated by @leveltype,
            <sourcexml>/COMMENTARYDOC/comm:body/level/@leveltype="landingpage"</sourcexml> links may
          also include dates which provide specific metadata related to the link target
          document.</p>

        <p>When the source contains a <sourcexml>date/[@searchtype="LAST-ACTION-DATE"] or
            date/[@searchtype="LAST-UPDATE-DATE"]</sourcexml> create a new element following the
            <targetxml>ref:crossreference</targetxml> element. The elements
            <targetxml>ref:crossreference</targetxml> and
            <targetxml>ref:referencestatusgroup</targetxml> should be sibling elements.</p>

        <p>For each occurrence of date element a single
            <targetxml>ref:referencestatusdate</targetxml> must be created.</p>

        <p><sourcexml>date/@searchtype="LAST-ACTION-DATE"</sourcexml> becomes
            <targetxml>ref:referencestatusdate/@name="lastactiondate"</targetxml> and
            <sourcexml>date@searchtype="LAST-UPDATE-DATE"</sourcexml> becomes
            <targetxml>ref:referencestatusdate/@name="updatedate"</targetxml>.</p>

        <p>The attributes <sourcexml>date/@year date/@month date/@day</sourcexml> are copied to
            <targetxml>referencestatusdate/@year referencestatusdate/@month
            referencestatusdate/@day</targetxml>.</p>

        <note>If a day or month is only one digit, it should be padded with a leading 0 to make it
          two digits.</note>

        <section>
          <title>Source XML showing conversion from
              <sourcexml>/bodytext/pgrp/h/date/[@searchtype="LAST-ACTION-DATE"] and
              /bodytext/pgrp/h/date/[@searchtype="LAST-UPDATE-DATE"]</sourcexml>
          </title>
          <codeblock> &lt;bodytext searchtype="Practical Guidance"&gt; &lt;h&gt;Formation of the
            Business Corporation &lt;/h&gt; &lt;pgrp&gt; &lt;h&gt; &lt;remotelink dpsi="0N5C"
            remotekey1="DOCID" remotekey2="0N5C_3541" service="DOC-ID"&gt;Nevada Business
            Corporations — Formation by Craig E. Etem, Lionel Sawyer &amp;
            Collins&lt;/remotelink&gt; &lt;date day="10" month="2" searchtype="LAST-ACTION-DATE"
            year="2012"/&gt; &lt;date day="21" month="3" searchtype="LAST-UPDATE-DATE"
            year="2012"/&gt; &lt;note notetype="other"&gt;... </codeblock>
        </section>

        <section>
          <title>Target XML showing conversion to
              <targetxml>/seclaw:digestgrp/seclaw:digest/seclaw:digestinfo/seclaw:subjectmatterreference/ref:referencestatusgroup</targetxml></title>
          <codeblock> &lt;seclaw:bodytext&gt; &lt;seclaw:digestgrp&gt;
            &lt;heading&gt;&lt;title&gt;Formation of the Business
            Corporation&lt;/title&gt;&lt;/heading&gt; &lt;seclaw:digest&gt;
            &lt;seclaw:digestinfo&gt; &lt;seclaw:subjectmatterreference&gt;
            &lt;ref:crossreference&gt; &lt;ref:content&gt;Nevada Business Corporations — Formation
            by Craig E. Etem, Lionel Sawyer &amp; Collins&lt;/ref:content&gt;
            &lt;ref:locator&gt;&lt;ref:locator-key&gt; &lt;ref:key-name name="DOC-ID"/&gt;
            &lt;ref:key-value value="0N5C-0N5C_3541"/&gt; &lt;/ref:locator-key&gt;
            &lt;/ref:locator&gt; &lt;/ref:crossreference&gt; &lt;ref:referencestatusgroup&gt;
            &lt;ref:referencestatusdate name="updatedate" year="2012" month="03" day="21"/&gt;
            &lt;ref:referencestatusdate name="lastactiondate" year="2012" month="02" day="10"/&gt;
            &lt;/ref:referencestatusgroup&gt; &lt;inlinenote notetype="other"&gt;... </codeblock>
        </section>

      </body>

    </topic>

  </dita:topic>

  <!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
  <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-US\US_LPA\LPA-PracticalGuidance_LandingPage-US.dita  -->
  <!--<xsl:message>LPA-PracticalGuidance_LandingPage-US.xsl requires manual development!</xsl:message> -->

  <!--<xsl:template match="level">

    <!-\-  Original Target XPath:  level/@leveltype="landingpage"   -\->
    <level>
      <xsl:attribute name="leveltype">
        <xsl:text>landingpage</xsl:text>
      </xsl:attribute>
    </level>

  </xsl:template>-->

  <!-- <xsl:template match="@leveltype[.='landingpage']">-->
  <xsl:template match="level/@leveltype[. = 'landingpage']">
    <xsl:attribute name="leveltype">
      <xsl:text>landingpage</xsl:text>
    </xsl:attribute>
  </xsl:template>

  <xsl:template match="/COMMENTARYDOC/comm:body">

    <!--  Original Target XPath:  /seclaw:seclaw/seclaw:body   -->
    <!--<seclaw:seclaw>-->
    <seclaw:body>
      <xsl:apply-templates select="@* | node()"/>
    </seclaw:body>
    <!--</seclaw:seclaw>-->

  </xsl:template>


  <xsl:template match="/COMMENTARYDOC/comm:body/level">

    <!--  Original Target XPath:  /seclaw:seclaw/seclaw:body/seclaw:level/@leveltype="landingpage"/heading   -->
    <!-- <seclaw:seclaw>
      <seclaw:body>
        <seclaw:level>-->
    <!--  Could not determine target element or attribute name:  <@leveltype="landingpage"/heading>  -->
    <heading>
      <xsl:apply-templates select="@* | node()"/>
    </heading>
    <!--  Could not determine target element or attribute name:  </@leveltype="landingpage"/heading>  -->
    <!--</seclaw:level>
      </seclaw:body>
    </seclaw:seclaw>-->

  </xsl:template>




  <!--<xsl:template match="/COMMENTARYDOC/comm:body/level/@leveltype=&#34;landingpage&#34;/level/@leveltype=&#34;documentlinks&#34;">-->
  <xsl:template
    match="/COMMENTARYDOC/comm:body/level[@leveltype=&#34;landingpage&#34;]/level[@leveltype=&#34;documentlinks&#34;]">
    <!--  Original Target XPath:  /seclaw:seclaw/seclaw:body/seclaw:level/@leveltype="landingpage"/seclaw:bodytext/seclaw:level/@leveltype="digestgroups"   -->
    <seclaw:seclaw>
      <seclaw:body>
        <seclaw:level>
          <!--  Could not determine target element or attribute name:  <@leveltype="landingpage"/seclaw:bodytext/seclaw:level/@leveltype="digestgroups">  -->
          <seclaw:bodytext>
            <seclaw:level>
              <xsl:attribute name="leveltype">
                <xsl:text>digestgroups</xsl:text>
              </xsl:attribute>
            </seclaw:level>
          </seclaw:bodytext>
          <!--  Could not determine target element or attribute name:  </@leveltype="landingpage"/seclaw:bodytext/seclaw:level/@leveltype="digestgroups">  -->
        </seclaw:level>
      </seclaw:body>
    </seclaw:seclaw>

  </xsl:template>


  <xsl:template
    match="/COMMENTARYDOC/comm:body/level[@leveltype=&#34;landingpage&#34;]/level[@leveltype=&#34;documentlinks&#34;]/bodytext">
    <seclaw:bodytext>
      <xsl:apply-templates select="@* | node()"/>
    </seclaw:bodytext>
  </xsl:template>

  <xsl:template match="pgrp/p/note | pgrp/h/note">

    <!--  Original Target XPath:  inlinenote   -->
    <inlinenote>
      <xsl:attribute name="notetype">
        <xsl:value-of select="@notetype"/>
      </xsl:attribute>
      <xsl:apply-templates select="p" mode="pgrp_note"/>
    </inlinenote>

  </xsl:template>

  <xsl:template match="p" mode="pgrp_note">
    <xsl:apply-templates select="@* | node()" mode="pgrp_note_text"/>
  </xsl:template>

  <xsl:template match="text" mode="pgrp_note_text">
    <xsl:apply-templates select="@* | node()"/>
  </xsl:template>


  <!-- <xsl:template match="note/@notetype">-->
  <xsl:template match="contrib/note" mode="practice">
    <!--  Original Target XPath:  inlinenote/@notetype   -->
    <inlinenote>
      <xsl:attribute name="notetype">
        <xsl:value-of select="@notetype"/>
      </xsl:attribute>
      <xsl:apply-templates/>
    </inlinenote>

  </xsl:template>

  <xsl:template match="url">

    <!--  Original Target XPath:  seclaw:digestgrp   -->
    <seclaw:digestgrp>
      <xsl:apply-templates select="@* | node()"/>
    </seclaw:digestgrp>

  </xsl:template>

<!--  <xsl:template match="bodytext">
    <!-\-  Original Target XPath:  seclaw:digestgrp   -\->
    <seclaw:digestgrp>
      <xsl:apply-templates select="@* | node()"/>
    </seclaw:digestgrp>

  </xsl:template>-->

  <xsl:template match="h" priority="25">

    <!--  Original Target XPath:  seclaw:digestgrp   -->
    <xsl:choose>
      <xsl:when test="(parent::bodytext) or (parent::pgrp and following-sibling::*[1][self::pgrp] and not(child::remotelink))">
          <seclaw:digestgrp>
          <heading>
            <title>
              <xsl:apply-templates select="node()"/>
            </title>
          </heading>
          <xsl:apply-templates select="following-sibling::*[1][self::pgrp]"/>
        </seclaw:digestgrp>
      </xsl:when>
      <xsl:when test="parent::pgrp[not(following-sibling::*[1][self::pgrp])] and child::remotelink">
        <seclaw:digest>
          <seclaw:digestinfo>
            <xsl:apply-templates select="classification"/>
            <seclaw:subjectmatterreference>
              <xsl:apply-templates select="@* | node() except (date[@searchtype='LAST-UPDATE-DATE'] | classification)"/>
              <xsl:apply-templates select="following-sibling::*[1][self::pgrp][1][not(preceding-sibling::*[1][self::h[@l]])]" mode="following_pgrp"/>
            </seclaw:subjectmatterreference>
          </seclaw:digestinfo>
        </seclaw:digest>
      </xsl:when>
    </xsl:choose>
    

  </xsl:template>
  
  <xsl:template match="h" mode="pgrp_digest">
    
    <!--  Original Target XPath:  seclaw:digestgrp   -->
    <xsl:choose>
      <xsl:when test="(parent::bodytext) or (parent::pgrp and following-sibling::*[1][self::pgrp] and not(child::remotelink))">
        <seclaw:digestgrp>
          <heading>
            <title>
              <xsl:apply-templates select="node()"/>
            </title>
          </heading>
          <xsl:apply-templates select="following-sibling::*[1][self::pgrp]"/>
        </seclaw:digestgrp>
      </xsl:when>
      <xsl:when test="parent::pgrp[not(following-sibling::*[1][self::pgrp])] and child::remotelink">
        <seclaw:digest>
          <seclaw:digestinfo>
            <xsl:apply-templates select="classification"/>
            <seclaw:subjectmatterreference>
              <xsl:apply-templates select="@* | node() except (date[@searchtype='LAST-UPDATE-DATE'] | classification)"/>
              <xsl:apply-templates select="following-sibling::*[1][self::pgrp][1][not(preceding-sibling::*[1][self::h[@l]])]" mode="following_pgrp"/>
            </seclaw:subjectmatterreference>
          </seclaw:digestinfo>
        </seclaw:digest>
      </xsl:when>
    </xsl:choose>
    
    
  </xsl:template>
  
  <xsl:template match="pgrp[not(preceding-sibling::*[1][self::h[@l]])]" mode="following_pgrp">
    <toc>
      <xsl:apply-templates select="p" mode="following_pgrp_p"/>
    </toc>
  </xsl:template>

<xsl:template match="@l[parent::h[parent::pgrp]]" priority="2"></xsl:template>

  <xsl:template match="h/emph">

    <!--  Original Target XPath:  seclaw:subjectmattertext   -->
    <seclaw:subjectmattertext>
      <xsl:apply-templates select="@* | node()"/>
    </seclaw:subjectmattertext>

  </xsl:template>

<!--  <xsl:template match="pgrp">

    <!-\-  Original Target XPath:  seclaw:subjectmatterreference   -\->
    <seclaw:subjectmatterreference>
      <xsl:apply-templates select="@* | node()"/>
    </seclaw:subjectmatterreference>

  </xsl:template>-->

  <xsl:template match="emph" priority="25">

    <!--  Original Target XPath:  seclaw:subjectmattertext   -->
    <!--<seclaw:subjectmattertext>-->
    <emph>
      <xsl:apply-templates select="@* | node()"/>
    </emph>
    <!--</seclaw:subjectmattertext>-->

  </xsl:template>

  <xsl:template match="emph/@typestyle" priority="2">
    <xsl:attribute name="typestyle">
      <xsl:value-of select="."/>
    </xsl:attribute>
  </xsl:template>


  <xsl:template match="bodytext/pgrp/pgrp/p | bodytext/pgrp/pgrp/pgrp/p" mode="following_pgrp_p">

    <!--  Original Target XPath:  toc-entry/@ref:locatorkeyprotocol   -->
    <toc-entry>
      <xsl:attribute name="ref:locatorkey">
        <xsl:value-of select="concat(text/remotelink/@dpsi,'-',text/remotelink/@docidref)"/>
      </xsl:attribute>
      <xsl:attribute name="ref:locatorkeyprotocol">
        <xsl:value-of select="text/remotelink/@service"/>
      </xsl:attribute>
      <xsl:attribute name="anchoridref">
        <xsl:value-of select="text/remotelink/@refpt"/>
      </xsl:attribute>
      <heading>
        <title>
          <xsl:value-of select="text/remotelink/text()"/>
        </title>
      </heading>
    </toc-entry>

  </xsl:template>


  <xsl:template match="bodytext/pgrp/pgrp/h">

    <!--  Original Target XPath:  seclaw:digest   -->
    <seclaw:digest>
      <seclaw:digestinfo>
      <xsl:apply-templates select="classification"/>
        <seclaw:subjectmatterreference>
          <xsl:apply-templates select="@* | node() except (classification | date[@searchtype='LAST-UPDATE-DATE'])"/>
        </seclaw:subjectmatterreference>
      </seclaw:digestinfo>
    </seclaw:digest>

  </xsl:template>

  <xsl:template match="classification">

    <!--  Original Target XPath:  seclaw:subjectmatterreference   -->
    <!--SNB 2018-03-08: webstar 7124139: remove hardcoded classscheme="echo:usformtype" (which is desired output for formtypes, but shouldnt be hard-coded).-->
    <classify:classification>
      <xsl:attribute name="classscheme" select="@classscheme"/>
      <xsl:apply-templates select="@* | node()"/>
    </classify:classification>
    
  </xsl:template>

  <!--  <xsl:template match="date/[@searchtype=&#34;LAST-ACTION-DATE&#34;] or&#xA;          date/[@searchtype=&#34;LAST-UPDATE-DATE&#34;]">-->

  <!--  <xsl:template match="date/@searchtype=&#34;LAST-ACTION-DATE&#34;">-->
  <xsl:template
    match="date[@searchtype = 'LAST-ACTION-DATE']">
    <!--  Original Target XPath:  ref:referencestatusdate/@name="lastactiondate"   -->
    <ref:referencestatusgroup>
      <ref:referencestatusdate>
        <xsl:choose>
          <xsl:when test="@searchtype = 'LAST-ACTION-DATE'">
            <xsl:attribute name="name">
              <xsl:text>lastactiondate</xsl:text>
            </xsl:attribute>
          </xsl:when>
        </xsl:choose>
        <xsl:attribute name="month">
          <xsl:value-of select="@month"/>
        </xsl:attribute>
        <xsl:attribute name="day">
          <xsl:choose>
            <xsl:when test="starts-with(@day,'0')">
              <xsl:value-of select="substring-after(@day,'0')"/>
            </xsl:when>
            <xsl:otherwise>
              <xsl:value-of select="@day"/>             
            </xsl:otherwise>
          </xsl:choose>
        </xsl:attribute>
        <xsl:attribute name="year">
          <xsl:value-of select="@year"/>
        </xsl:attribute>
      </ref:referencestatusdate>
      <xsl:apply-templates select="following-sibling::date[@searchtype = 'LAST-UPDATE-DATE']" mode="update-date"/>
    </ref:referencestatusgroup>
  </xsl:template>
  
  <xsl:template match="date[@searchtype = 'LAST-UPDATE-DATE']" mode="update-date">
    <ref:referencestatusdate>
      <xsl:choose>
        <xsl:when test="@searchtype = 'LAST-UPDATE-DATE'">
          <xsl:attribute name="name">
            <xsl:text>updatedate</xsl:text>
          </xsl:attribute>
        </xsl:when>
        <xsl:otherwise>
          <xsl:attribute name="name">
            <xsl:text>updatedate</xsl:text>
          </xsl:attribute>
        </xsl:otherwise>
      </xsl:choose>
      <xsl:attribute name="month">
        <xsl:value-of select="@month"/>
      </xsl:attribute>
      <xsl:attribute name="day">
        <xsl:choose>
          <xsl:when test="starts-with(@day,'0')">
            <xsl:value-of select="substring-after(@day,'0')"/>
          </xsl:when>
          <xsl:otherwise>
            <xsl:value-of select="@day"/>             
          </xsl:otherwise>
        </xsl:choose>
      </xsl:attribute>
      <xsl:attribute name="year">
        <xsl:value-of select="@year"/>
      </xsl:attribute>
    </ref:referencestatusdate>
  </xsl:template>
  
  <xsl:template match="classification/@classscheme"/>
  
  <xsl:template match="/COMMENTARYDOC/comm:info/classification" mode="metadata_classification">
    <!--SNB 2018-03-08: webstar 7124139: remove hardcoded classscheme="echo:formtypes" (which was wrong).-->
    <classify:classification-grp classscheme="echo:terms">
      <classify:classification>
        <xsl:attribute name="classscheme" select="@classscheme"/>
        <classify:classitem>
          <classify:classitem-identifier>
            <classify:classname>
              <xsl:value-of select="/COMMENTARYDOC/comm:info/classification/classitem/classitem-identifier/classname"/>
            </classify:classname>
            <classify:classcode>
              <xsl:attribute name="codescheme">
                <xsl:value-of select="/COMMENTARYDOC/comm:info/classification/classitem/classitem-identifier/classcode/@codescheme"/>
              </xsl:attribute>
              <xsl:attribute name="normval">
                <xsl:value-of select="/COMMENTARYDOC/comm:info/classification/classitem/classitem-identifier/classcode/@normval"/>
              </xsl:attribute>
            </classify:classcode>
          </classify:classitem-identifier>
        </classify:classitem>
      </classify:classification>
    </classify:classification-grp>
  </xsl:template>
  
</xsl:stylesheet>
