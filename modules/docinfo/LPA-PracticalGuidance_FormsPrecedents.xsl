<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
  xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" xmlns:glp="http://www.lexis-nexis.com/glp" xmlns:frm="http://www.lexis-nexis.com/glp/frm"
  xmlns:form="http://www.lexisnexis.com/xmlschemas/content/shared/form/1/" xmlns:proc="http://www.lexisnexis.com/xmlschemas/content/shared/process-elements/1/"
  xmlns:seclaw="http://www.lexisnexis.com/xmlschemas/content/legal/secondary-law/1/" version="2.0" exclude-result-prefixes="#all">

  <dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="lpa_forms_introduction">
    <title>Forms and Precedents <lnpid>id-CCCC-10153</lnpid></title>
    <body>
      <section>
        <title>Introduction</title>
        <p>There are a variety of "Forms and Precedents" documents to consider in the AU and US conversion workflows. At this time, it appears that the best disambiguator available to determine a
          conversion path is the value of <sourcexml>docinfo/docinfo:selector</sourcexml>.</p>
        <p><b>Note:</b> that if the top <sourcexml>level</sourcexml> element is <sourcexml>level[@leveltype="landingpage"]</sourcexml>, then regardless of the value of
            <sourcexml>docinfo:selector</sourcexml> the <b>Landing Page instructions should be used instead of any other instructions.</b></p>
      </section>
    </body>
    <topic id="docinfo-selector_forms">
      <title>docinfo:selector[text()] <lnpid>id-CCCC-10154</lnpid></title>
      <topic id="selector-forms_seclaw-seclaw">
        <title>seclaw:seclaw[@seclawtype] <lnpid>id-CCCC-10155</lnpid></title>
        <body>
          <section>
            <title>Instructions</title>
            <p>The content of <sourcexml>docinfo:selector</sourcexml> needs to be queried to determine a proper value for <targetxml>seclaw:seclaw[@seclawtype]</targetxml>. </p>
          </section>
        </body>
      </topic>
      <topic id="selector-forms">
        <title>docinfo:selector[text()="Forms"] <lnpid>id-CCCC-10156</lnpid></title>
        <body>
          <section>
            <title>Instructions</title>
            <p>When <sourcexml>docinfo:selector</sourcexml> is "Forms", <targetxml>seclaw:seclaw[@seclawtype]</targetxml> is "form".</p>
          </section>
          <example>
            <title>Source XML</title>
            <codeblock> &lt;docinfo:selector&gt;Forms&lt;/docinfo:selector&gt; </codeblock>
          </example>
          <example>
            <title>Target XML</title>
            <codeblock> @seclawtype="form" </codeblock>
          </example>
        </body>
      </topic>
      <topic id="selector-precedent">
        <title>docinfo:selector[text()="FormsAndPrecedents - Precedent"] <lnpid>id-CCCC-10157</lnpid></title>
        <body>
          <section>
            <title>Instructions</title>
            <p>When <sourcexml>docinfo:selector</sourcexml> is "FormsAndPrecedents - Precedent", <targetxml>seclaw:seclaw[@seclawtype]</targetxml> is "precedent".</p>
          </section>
          <example>
            <title>Source XML</title>
            <codeblock> &lt;docinfo:selector&gt;FormsAndPrecedents - Precedent&lt;/docinfo:selector&gt; </codeblock>
          </example>
          <example>
            <title>Target XML</title>
            <codeblock> @seclawtype="seclawtype="precedent"" </codeblock>
          </example>
        </body>
      </topic>
      <topic id="selector-formannotation">
        <title>docinfo:selector[text()="FormsAndPrecedents - FormAnnotation"] <lnpid>id-CCCC-10158</lnpid></title>
        <body>
          <section>
            <title>Instructions</title>
            <p>When <sourcexml>docinfo:selector</sourcexml> is "FormsAndPrecedents - FormAnnotation", <targetxml>seclaw:seclaw[@seclawtype]</targetxml> is "form".</p>
            <p>It should be noted that the content of this document will not typically contain form markup at all and the only indication of this being a form (besides the
                <targetxml>@seclawtype</targetxml> on the root element) will be on the main <targetxml>seclaw:level[@leveltype="form"]</targetxml>.</p>
            <p>The main <sourcexml>level</sourcexml> within this content will often contain many instances of <sourcexml>bodytext</sourcexml>; these multiple instances need to be consolidated into a
              single <targetxml>seclaw:bodytext</targetxml> within the resulting main <targetxml>seclaw:level</targetxml>.</p>
          </section>
          <example>
            <title>Source XML: docinfo:selector</title>
            <codeblock> &lt;docinfo:selector&gt;FormsAndPrecedents - Precedent&lt;/docinfo:selector&gt; </codeblock>
          </example>
          <example>
            <title>Target XML: @seclawtype</title>
            <codeblock> @seclawtype="seclawtype="form"" </codeblock>
          </example>
          <example>
            <title>Source XML: bodytext content</title>
            <codeblock> &lt;level leveltype="comm13"&gt; &lt;heading&gt; &lt;title searchtype="MAIN-TITLE"&gt;Certificate of Amendment of Certificate of Incorporation (Delaware Official
              Form)&lt;/title&gt; &lt;/heading&gt; &lt;bodytext&gt; &lt;p&gt; &lt;text&gt;Filing instructions and fee information accompany the attached form. &lt;/text&gt; &lt;/p&gt;
              &lt;/bodytext&gt; &lt;bodytext&gt; &lt;p&gt; &lt;text&gt;Send completed application with appropriate fees to:&lt;/text&gt; &lt;/p&gt; &lt;/bodytext&gt; [...] &lt;/level&gt; </codeblock>
          </example>
          <example>
            <title>Target XML: consolidated bodytext</title>
            <codeblock> &lt;seclaw:level leveltype="form"&gt; &lt;heading&gt; &lt;title&gt;Certificate of Amendment of Certificate of Incorporation (Delaware Official Form)&lt;/title&gt;
              &lt;/heading&gt; &lt;seclaw:bodytext&gt; &lt;p&gt; &lt;text&gt;Filing instructions and fee information accompany the attached form. &lt;/text&gt; &lt;/p&gt; &lt;p&gt; &lt;text&gt;Send
              completed application with appropriate fees to:&lt;/text&gt; &lt;/p&gt; [...] &lt;/seclaw:level&gt; </codeblock>
          </example>
        </body>
      </topic>
      <topic id="selector-draftingnote">
        <title>docinfo:selector[text()="FormsAndPrecedents - DraftingNote"] <lnpid>id-CCCC-10159</lnpid></title>
        <body>
          <section>
            <title>Instructions</title>
            <p>When <sourcexml>docinfo:selector</sourcexml> is "FormsAndPrecedents - DraftingNote", <targetxml>seclaw:seclaw[@seclawtype]</targetxml> is "form".</p>
            <p>It should be noted that the content of this document will not typically contain form markup at all and the only indication of this being a form (besides the
                <targetxml>@seclawtype</targetxml> on the root element) will be on the main <targetxml>seclaw:level[@leveltype="form"]</targetxml>.</p>
          </section>
          <example>
            <title>Source XML: docinfo:selector</title>
            <codeblock> &lt;docinfo:selector&gt;FormsAndPrecedents - DraftingNote&lt;/docinfo:selector&gt; </codeblock>
          </example>
          <example>
            <title>Target XML: @seclawtype</title>
            <codeblock> @seclawtype="seclawtype="form"" </codeblock>
          </example>
          <example>
            <title>Source XML: form markup absent</title>
            <codeblock> &lt;level&gt; &lt;heading&gt; &lt;title searchtype="COMMENTARY MAIN-TITLE"&gt;&lt;refpt id="0LTW_1_DN2696" type="ext" /&gt;Certificate of Use of Assumed Name (Drafting
              Notes)&lt;/title&gt; &lt;/heading&gt; &lt;bodytext searchtype="COMMENTARY"&gt; &lt;h&gt;Drafting Note to Form&lt;/h&gt; &lt;p&gt; &lt;text&gt;This form should be filed with the NY
              Secretary of State.&lt;/text&gt; &lt;/p&gt; &lt;h&gt;Drafting Note to Clause 1&lt;/h&gt; &lt;p&gt; &lt;text&gt;List both the Sole Proprietor’s name and the DBA Name.&lt;/text&gt;
              &lt;/p&gt; &lt;/bodytext&gt; &lt;/level&gt; </codeblock>
          </example>
          <example>
            <title>Target XML: @leveltype="form"</title>
            <codeblock> &lt;seclaw:level leveltype="form"&gt; &lt;ref:anchor id="_0LTW_1_DN2696" anchortype="global"/&gt; &lt;heading&gt; &lt;title&gt;Certificate of Use of Assumed Name (Drafting
              Notes)&lt;/title&gt; &lt;/heading&gt; &lt;seclaw:bodytext&gt; &lt;h&gt;Drafting Note to Form&lt;/h&gt; &lt;p&gt; &lt;text&gt;This form should be filed with the NY Secretary of
              State.&lt;/text&gt; &lt;/p&gt; &lt;h&gt;Drafting Note to Clause 1&lt;/h&gt; &lt;p&gt; &lt;text&gt;List both the Sole Proprietor’s name and the DBA Name.&lt;/text&gt; &lt;/p&gt;
              &lt;/seclaw:bodytext&gt; &lt;/seclaw:level&gt; </codeblock>
          </example>
        </body>
      </topic>
    </topic>
    <topic id="forms_precedents_general">
      <title>Forms and Precedents: General Mappings <lnpid>id-CCCC-10160</lnpid></title>
      <body>
        <section>
          <title>Instructions</title>
          <p>These general mappings apply to all of the mapping scenarios for Forms and Precedents. These instructions override or augment any previous instructions in this document.</p>
        </section>
      </body>
      <topic id="_level">
        <title>level <lnpid>id-CCCC-10161</lnpid></title>
        <body>
          <section>
            <title>Instructions</title>
            <p>Any <sourcexml>level</sourcexml> elements in the source, regardless of the value of <sourcexml>@leveltype</sourcexml> (if any), should map to
                <targetxml>seclaw:level[@leveltype="form"]</targetxml>.</p>
            <p><b>Note:</b> this assumes that a check for <sourcexml>level[@leveltype="landingpage"]</sourcexml> has already been made. If a <sourcexml>level[@leveltype="landingpage"]</sourcexml> is
              found, then the <b>Landing Page instructions should be used instead of any other instructions.</b></p>
            <note>If <sourcexml>level/heading/title</sourcexml> exists and contains <sourcexml>nl</sourcexml>, see the General Markup section for details on mapping <sourcexml>nl</sourcexml> to
                <targetxml>proc:nl</targetxml> (within <targetxml>seclaw:level/heading/title</targetxml>) (This General Markup section is <xref href="Rosetta_nl-LxAdv-proc.nl.dita"/>).</note>
          </section>
          <example>
            <title>Source XML</title>
            <codeblock> &lt;level&gt; &lt;heading&gt; &lt;title searchtype="FORM-TITLE"&gt; Employment contracts &amp;#x2014; Director/executive employment agreement[Brooke Pendlebury, Principal
              Lawyer, Pendlebury Workplace Law]&lt;/title&gt; &lt;/heading&gt; &lt;bodytext searchtype="FORM"&gt; [...] &lt;/level&gt; </codeblock>
          </example>
          <example>
            <title>Target XML: @leveltype="form"</title>
            <codeblock> &lt;seclaw:level leveltype="form"&gt; &lt;heading&gt; &lt;title&gt; Employment contracts — Director/executive employment agreement[Brooke Pendlebury, Principal Lawyer,
              Pendlebury Workplace Law]&lt;/title&gt; &lt;/heading&gt; &lt;seclaw:bodytext&gt; [...] &lt;/seclaw:level&gt; </codeblock>
          </example>
          <section>
            <title>Changes</title>
            <p>2017-02-07: <ph id="change_20170207a_snb">LPA 2016 enhancements: Added note about possibility that <sourcexml>heading/title</sourcexml> contains <sourcexml>nl</sourcexml> and reference
                to the General Mapping section for instructions.</ph></p>
          </section>
        </body>
        <topic id="_level_glp-note">
          <title>glp:note <lnpid>id-CCCC-10162</lnpid></title>
          <body>
            <section>
              <title>Instructions</title>
              <p><sourcexml>level/glp:note</sourcexml> becomes <targetxml>seclaw:prelim/note</targetxml>.</p>
            </section>
            <section>
              <title>Changes</title>
              <p>2012-05-14: <ph id="changes_20120514_sk">SK - added this instruction to map level/glp:note to seclaw:prelim/note.</ph></p>
            </section>
          </body>
        </topic>
        <topic id="_level_bodytext">
          <title>bodytext <lnpid>id-CCCC-10163</lnpid></title>
          <body>
            <section>
              <title>Instructions</title>
              <p><sourcexml>bodytext</sourcexml> becomes <targetxml>seclaw:bodytext</targetxml>. Do not copy attributes to the target document.</p>
              <p>There are frequently 2 (or more) instances of <sourcexml>bodytext</sourcexml> in forms documents; in these situations, the multiple instances of <sourcexml>bodytext</sourcexml> need
                to be consolidated into a single <targetxml>seclaw:bodytext</targetxml> in the target document.</p>
            </section>
            <example>
              <title>Source XML</title>
              <codeblock> &lt;level&gt; [...] &lt;bodytext searchtype="FORM"&gt; [...] &lt;/bodytext&gt; &lt;bodytext searchtype="FORM"&gt; [...] &lt;/bodytext&gt; &lt;/level&gt; </codeblock>
            </example>
            <example>
              <title>Target XML</title>
              <codeblock> &lt;seclaw:level leveltype="form"&gt; [...] &lt;seclaw:bodytext&gt; [...] &lt;/seclaw:bodytext&gt; &lt;/seclaw:level&gt; </codeblock>
            </example>
            <section>
              <title>Changes</title>
              <p>2012-05-14: <ph id="changes_20120514_sk">SK - added instruction to consolidate multiple instance of bodytext into a single seclaw:bodytext in the target document.</ph></p>
              <p>2012-04-27: <ph id="changes_20120427_sk">SK - added this instruction.</ph></p>
            </section>
          </body>
        </topic>
      </topic>
      <topic id="_form">
        <title>form <lnpid>id-CCCC-10164</lnpid></title>
        <body>
          <section>
            <title>Instructions</title>
            <p><sourcexml>form</sourcexml> becomes <targetxml>form:form</targetxml>.</p>
          </section>
          <example>
            <title>Source XML</title>
            <codeblock> &lt;form&gt; &lt;frm:body&gt; &lt;p&gt; &lt;text&gt; &lt;emph typestyle="bf"&gt;RECITALS:&lt;/emph&gt; &lt;/text&gt; </codeblock>
          </example>
          <example>
            <title>Target XML</title>
            <codeblock> &lt;form:form&gt; &lt;form:document annotated="false" official="false" typeofdoc="unnamed"&gt; &lt;form:bodytext&gt; &lt;form:p&gt; &lt;form:text&gt; &lt;emph
              typestyle="bf"&gt;RECITALS:&lt;/emph&gt; &lt;/form:text&gt; &lt;/form:p&gt; </codeblock>
          </example>
        </body>
        <topic id="consecutive_bodytext_searchtype_eq_form">
          <title>consecutive bodytext[@searchtype="FORM"] <lnpid>id-CCCC-10165</lnpid></title>
          <body>
            <section>
              <title>Instruction</title>
              <p>The PAM to Rosetta conversion will occassionally produce two consecutive instances of <sourcexml>bodytext[@searchtype="FORM"]</sourcexml>. When this occurs, conversion should merge
                the contents of the first <sourcexml>bodytext[@searchtype="FORM"]/form/frm:body</sourcexml> into the second <sourcexml>bodytext[@searchtype="FORM"]/form/frm:body</sourcexml> so that
                the resulting output is a single <targetxml>form:form/form:document/form:bodytext</targetxml>.</p>
            </section>
            <example>
              <title>Source XML</title>
              <codeblock> &lt;bodytext searchtype="FORM"&gt; &lt;form&gt; &lt;frm:body&gt; &lt;p&gt; &lt;text&gt; &lt;emph typestyle="bf"&gt;Unanimous Written Consent of Board of Directors in Lieu of
                First Meeting of ____________________ [&lt;frm:prompt&gt;Name of benefit corporation&lt;/frm:prompt&gt;]&lt;/emph&gt; &lt;/text&gt; &lt;/p&gt; &lt;p&gt; &lt;text&gt; &lt;emph
                typestyle="bf"&gt;a California Benefit Corporation&lt;/emph&gt; &lt;/text&gt; &lt;/p&gt; &lt;p&gt; &lt;text&gt; &lt;emph typestyle="bf"&gt;_____________
                [&lt;frm:prompt&gt;Date&lt;/frm:prompt&gt;]&lt;/emph&gt; &lt;/text&gt; &lt;/p&gt; &lt;/frm:body&gt; &lt;/form&gt; &lt;/bodytext&gt; &lt;bodytext searchtype="FORM"&gt; &lt;form&gt;
                &lt;frm:body&gt; &lt;p&gt; &lt;text&gt;The undersigned, constituting all of the directors of ___________________ [&lt;frm:prompt&gt;name of corporation&lt;/frm:prompt&gt;], a
                California benefit corporation (the “Corporation”), acting by unanimous written consent without a meeting, in accordance with &lt;ci:cite ID="I56SCKVW0000650010000400" loadable="0"
                normcite="CAL. CORP. CODE 307" normprotocol="lexstat" status="valid" validate="0"&gt;&lt;ci:stat&gt;&lt;ci:statref normcite="_307(b)"&gt;&lt;ci:standardname normpubcode="15012"
                /&gt;&lt;/ci:statref&gt;&lt;/ci:stat&gt;&lt;ci:content&gt;California Corporations Code Section 307(b)&lt;/ci:content&gt;&lt;/ci:cite&gt; [&lt;emph typestyle="it"&gt;add, if
                desired:&lt;/emph&gt; and Article _____, Section _____ of the bylaws of the corporation if bylaws were adopted by the incorporators], consent to taking the following actions and adopt
                the resolutions set out below. This written consent of the board of directors (the “Board”), and all of the actions taken and resolutions set out in it shall have the same force and
                effect as if they were taken or adopted at such first meeting. This written consent is executed on the date first written above and shall be filed in the Corporation’s minute
                book.&lt;/text&gt; &lt;/p&gt; [...] &lt;/form&gt; &lt;/bodytext&gt; </codeblock>
            </example>
            <example>
              <title>Target XML</title>
              <codeblock> &lt;form:form&gt; &lt;form:document annotated="false" official="false" typeofdoc="unnamed"&gt; &lt;form:bodytext&gt; &lt;form:p&gt; &lt;form:text&gt; &lt;emph
                typestyle="bf"&gt;Unanimous Written Consent of Board of Directors in Lieu of First Meeting of ____________________ [&lt;form:prompt&gt;Name of benefit
                corporation&lt;/form:prompt&gt;]&lt;/emph&gt; &lt;/form:text&gt; &lt;/form:p&gt; &lt;form:p&gt; &lt;form:text&gt; &lt;emph typestyle="bf"&gt;a California Benefit
                Corporation&lt;/emph&gt; &lt;/form:text&gt; &lt;/form:p&gt; &lt;form:p&gt; &lt;form:text&gt; &lt;emph typestyle="bf"&gt;_____________
                [&lt;form:prompt&gt;Date&lt;/form:prompt&gt;]&lt;/emph&gt; &lt;/form:text&gt; &lt;/form:p&gt; &lt;form:p&gt; &lt;form:text&gt;The undersigned, constituting all of the directors of
                ___________________ [&lt;form:prompt&gt;name of corporation&lt;/form:prompt&gt;], a California benefit corporation (the “Corporation”), acting by unanimous written consent without a
                meeting, in accordance with &lt;lnci:cite ID="I56SCKVW0000650010000400" loadable="0" validate="0" normprotocol="lexstat" normcite="CAL. CORP. CODE 307" status="valid"&gt;
                &lt;lnci:stat&gt; &lt;lnci:statref normcite="_307(b)"&gt; &lt;lnci:standardname normpubcode="15012"/&gt; &lt;/lnci:statref&gt; &lt;/lnci:stat&gt; &lt;lnci:content&gt;California
                Corporations Code Section 307(b)&lt;/lnci:content&gt; &lt;/lnci:cite&gt; [&lt;emph typestyle="it"&gt;add, if desired:&lt;/emph&gt; and Article _____, Section _____ of the bylaws of the
                corporation if bylaws were adopted by the incorporators], consent to taking the following actions and adopt the resolutions set out below. This written consent of the board of
                directors (the “Board”), and all of the actions taken and resolutions set out in it shall have the same force and effect as if they were taken or adopted at such first meeting. This
                written consent is executed on the date first written above and shall be filed in the Corporation’s minute book.&lt;/form:text&gt; &lt;/form:p&gt; [...] &lt;/form:bodytext&gt;
                &lt;/form:document&gt; &lt;/form:form&gt; </codeblock>
            </example>
          </body>
        </topic>
        <topic id="_frm-body">
          <title>frm:body <lnpid>id-CCCC-10166</lnpid></title>
          <body>
            <section>
              <title>Instructions</title>
              <p><sourcexml>frm:body</sourcexml> becomes <sourcexml>form:document/form:bodytext.</sourcexml>. The attributes on <targetxml>form:document</targetxml> should be set to:
                  <targetxml>@annotated="false"</targetxml>, <targetxml>@official="false"</targetxml> and <targetxml>@typeofdoc="unnamed"</targetxml>.</p>
            </section>
            <example>
              <title>Source XML</title>
              <codeblock> [...] &lt;frm:body&gt; &lt;p&gt; &lt;text&gt; &lt;emph typestyle="bf"&gt;RECITALS:&lt;/emph&gt; &lt;/text&gt; [...] </codeblock>
            </example>
            <example>
              <title>Target XML</title>
              <codeblock> [...] &lt;form:document annotated="false" official="false" typeofdoc="unnamed"&gt; &lt;form:bodytext&gt; &lt;form:p&gt; &lt;form:text&gt; &lt;emph
                typestyle="bf"&gt;RECITALS:&lt;/emph&gt; &lt;/form:text&gt; &lt;/form:p&gt; [...] </codeblock>
            </example>
          </body>
          <topic id="_form-p">
            <title>p <lnpid>id-CCCC-10167</lnpid></title>
            <body>
              <section>
                <title>Instructions</title>
                <p>In the context of <sourcexml>frm:body</sourcexml>, the element <sourcexml>p</sourcexml> becomes <targetxml>form:p</targetxml>.</p>
              </section>
              <example>
                <title>Source XML</title>
                <codeblock> [...] &lt;frm:body&gt; &lt;p&gt; &lt;text&gt; &lt;emph typestyle="bf"&gt;SHARE OWNERSHIP&lt;/emph&gt; &lt;/text&gt; &lt;/p&gt; [...] </codeblock>
              </example>
              <example>
                <title>Target XML</title>
                <codeblock> [...] &lt;form:p&gt; &lt;form:text&gt; &lt;emph typestyle="bf"&gt;SHARE OWNERSHIP&lt;/emph&gt; &lt;/form:text&gt; &lt;/form:p&gt; [...] </codeblock>
              </example>
            </body>
          </topic>
          <topic id="_form-text">
            <title>text <lnpid>id-CCCC-10168</lnpid></title>
            <body>
              <section>
                <title>Instructions</title>
                <p>In the context of <sourcexml>frm:body</sourcexml>, the element <sourcexml>text</sourcexml> becomes <targetxml>form:text</targetxml>.</p>
              </section>
              <example>
                <title>Source XML</title>
                <codeblock> [...] &lt;frm:body&gt; &lt;p&gt; &lt;text&gt; &lt;emph typestyle="bf"&gt;SHARE OWNERSHIP&lt;/emph&gt; &lt;/text&gt; &lt;/p&gt; [...] </codeblock>
              </example>
              <example>
                <title>Target XML</title>
                <codeblock> [...] &lt;form:p&gt; &lt;form:text&gt; &lt;emph typestyle="bf"&gt;SHARE OWNERSHIP&lt;/emph&gt; &lt;/form:text&gt; &lt;/form:p&gt; [...] </codeblock>
              </example>
            </body>
          </topic>


          <topic id="form-body-note">
            <title>frm:body/note <lnpid>id-CCCC-10168x</lnpid></title>
            <body>
              <section>
                <title>Instructions</title>
                <p>In the context of <sourcexml>frm:body</sourcexml>, the element <sourcexml>note</sourcexml> becomes <targetxml>form:bodytext/note</targetxml>.</p>
              </section>
              <example>
                <title>Source XML</title>
                <codeblock> &lt;form&gt; &lt;frm:body&gt; [...] &lt;note&gt; &lt;heading&gt; &lt;title&gt;Drafting Note to Inducement Letter&lt;/title&gt; &lt;/heading&gt; &lt;p&gt; &lt;text&gt;When
                  services are provided by a loan-out company, the production company includes a letter, sometimes termed &amp;quot;Inducement Letter&amp;quot; which enables the production [...]
                </codeblock>
              </example>
              <example>
                <title>Target XML</title>
                <codeblock> &lt;form:form&gt; &lt;form:document&gt; &lt;form:bodytext&gt; [...] &lt;note&gt; &lt;heading&gt; &lt;title&gt;Drafting Note to Inducement Letter&lt;/title&gt;
                  &lt;/heading&gt; &lt;p&gt; &lt;text&gt;When services are provided by a loan-out company, the production company includes a letter, sometimes termed &amp;quot;Inducement
                  Letter&amp;quot; which enables the production [...] </codeblock>
              </example>
            </body>
          </topic>


          <topic id="_form-lists">
            <title>lists <lnpid>id-CCCC-10169</lnpid></title>
            <topic id="_form-l">
              <title>l <lnpid>id-CCCC-10170</lnpid></title>
              <body>
                <section>
                  <title>Instructions</title>
                  <p>In the context of <sourcexml>frm:body</sourcexml>, the element <sourcexml>l</sourcexml> becomes <targetxml>form:list</targetxml>.</p>
                </section>
              </body>
            </topic>
            <topic id="_form-li">
              <title>li <lnpid>id-CCCC-10171</lnpid></title>
              <body>
                <section>
                  <title>Instructions</title>
                  <p>In the context of <sourcexml>frm:body/l</sourcexml>, the element <sourcexml>li</sourcexml> becomes <targetxml>form:listitem</targetxml>.</p>
                  <p>If an optional <sourcexml>lilabel</sourcexml> exists, it becomes <targetxml>label</targetxml>.</p>
                  <p>The contents of the <sourcexml>li</sourcexml> following the optional <sourcexml>lilabel</sourcexml> must be wrapped within <targetxml>form:bodytext</targetxml>.</p>
                </section>
                <example>
                  <title>Source XML</title>
                  <codeblock> [...] &lt;l&gt; &lt;li&gt; &lt;p&gt; &lt;text&gt;A. The Company wishes to employ the Executive, and the parties have agreed that their mutual rights and obligations and
                    the terms and conditions of the Executive's employment with the Company shall be as provided in this Agreement.&lt;/text&gt; &lt;/p&gt; &lt;/li&gt; &lt;/l&gt; [...] </codeblock>
                </example>
                <example>
                  <title>Target XML</title>
                  <codeblock> [...] &lt;form:list&gt; &lt;form:listitem&gt; &lt;form:bodytext&gt; &lt;form:p&gt; &lt;form:text&gt;A. The Company wishes to employ the Executive, and the parties have
                    agreed that their mutual rights and obligations and the terms and conditions of the Executive's employment with the Company shall be as provided in this
                    Agreement.&lt;/form:text&gt; &lt;/form:p&gt; &lt;/form:bodytext&gt; &lt;/form:listitem&gt; &lt;/form:list&gt; [...] </codeblock>
                </example>
              </body>
            </topic>
          </topic>
          <topic id="_h">
            <title>h <lnpid>id-CCCC-10172</lnpid></title>
            <body>
              <section>
                <title>Instructions</title>
                <p>In the context of <sourcexml>frm:body</sourcexml>, the element <sourcexml>h</sourcexml> becomes <targetxml>form:h</targetxml>.</p>
              </section>
              <example>
                <title>Source XML</title>
                <codeblock> [...] &lt;h&gt;Drafting Note to Form&lt;/h&gt; [...] </codeblock>
              </example>
              <example>
                <title>Target XML</title>
                <codeblock> [...] &lt;form:h&gt;Drafting Note to Form&lt;/form:h&gt; [...] </codeblock>
              </example>
            </body>
          </topic>
          <topic id="LPA_FormsPrecedents_sigblock-LxAdv-form.sigblock">
            <title><sourcexml>sigblock</sourcexml> within a Form to <targetxml>form:sigblock</targetxml>
              <lnpid>id-CCCC-10553</lnpid></title>
            <body>
              <section>
                <title>Instructions</title>
                <p>In the context of <sourcexml>frm:body</sourcexml> (including inside <sourcexml>clause</sourcexml> within <sourcexml>frm:body</sourcexml>), the element
                    <sourcexml>sigblock</sourcexml> becomes <targetxml>form:sigblock</targetxml>. Refer to the detailed mapping instructions in the General Markup section of this document (<xref
                    href="Rosetta_sigblock-LxAdv-form.sigblock.dita"/>).</p>
              </section>
            </body>
          </topic>

          <topic id="LPA_FormsPrecedents_frm.block-LxAdv-form.block">
            <title><sourcexml>frm:block</sourcexml> to <targetxml>form:block</targetxml>
              <lnpid>id-CCCC-10554</lnpid></title>
            <body>
              <section>
                <title>Instructions</title>
                <p>In the context of <sourcexml>frm:body</sourcexml> (including inside <sourcexml>clause</sourcexml> within <sourcexml>frm:body</sourcexml>), the element
                    <sourcexml>frm:block</sourcexml> becomes <targetxml>form:block</targetxml>. Refer to the detailed mapping instructions in the General Markup section of this document (<xref
                    href="Rosetta_frm.block-LxAdv-form.block.dita"/>).</p>
              </section>
            </body>
          </topic>

          <topic id="_clause">
            <title>clause <lnpid>id-CCCC-10173</lnpid></title>
            <body>
              <section>
                <title>Instructions</title>
                <p><sourcexml>clause[@clause-type="container"]</sourcexml> is passed through and not output to the target document. All child elements are processed as normal.</p>
                <p><sourcexml>clause[@clause-type="group"]</sourcexml> is mapped to <targetxml>form:clausegrp</targetxml> as described in the clause[@clause-type="group"] (id-USPA-31011) section of
                  this document.</p>
                <p>Any other <sourcexml>clause</sourcexml> becomes <targetxml>form:clause</targetxml>. <sourcexml>@clause-type</sourcexml> is copied to <targetxml>@clausetype</targetxml>.
                    <sourcexml>@id</sourcexml> is copied to <targetxml>@xml:id</targetxml>. <sourcexml>@include-in-toc</sourcexml> is copied to <targetxml>@includeintoc</targetxml></p>
                <p><sourcexml>clause/heading</sourcexml> maps to <targetxml>form:clause/heading</targetxml>, using standard mapping rules in the General Markup section of this document for the content
                  of heading.</p>
                <p>Note that any content in the source following <sourcexml>clause/heading</sourcexml>, other than <sourcexml>clause/refpt</sourcexml> and
                    <sourcexml>clause/frm:clausecaption</sourcexml>, must be encapsulated within a <targetxml>form:bodytext</targetxml> in the target document. </p>
                <p><sourcexml>clause/refpt</sourcexml> and <sourcexml>clause/frm:clausecaption</sourcexml> are mapped to be <targetxml>form:clause/ref:anchor</targetxml> and
                    <targetxml>form:clause/form:info/form:clausecaption</targetxml>, respectively, using the instructions specific to those mappings in the appropriate sections of this document.
                  However, any target <targetxml>form:clause/ref:anchor</targetxml> created must be inserted as the FIRST child of the <targetxml>form:clause</targetxml> element it is within. Mapping
                  of <sourcexml>refpt</sourcexml> is provided in the General Markup section of this document (<xref href="Rosetta_refpt-LxAdv-ref.anchor.dita"/>), and mapping of
                    <sourcexml>frm:clausecaption</sourcexml> is provided below in this section of the document ("clause/frm:clausecaption to form:clause/form:info/form:clausecaption").</p>
              </section>
              <example>
                <title>Source XML: <sourcexml>clause[@clause-type="container"]</sourcexml> and nested <sourcexml>clause</sourcexml></title>
                <codeblock> &lt;form&gt; &lt;frm:body&gt; &lt;clause clause-type="container"&gt; &lt;clause clause-type="clause-level1-text" id="c00001"&gt; &lt;heading inline="true"&gt; &lt;desig
                  inline="true"&gt; &lt;designum id="number"&gt;1&lt;/designum&gt; &lt;/desig&gt; &lt;/heading&gt; &lt;refpt id="LPAcontentitem_0QYN_0QYN_211388_1" type="local"/&gt; &lt;p&gt;
                  &lt;text&gt; &lt;emph typestyle="bf"&gt;SHARE OWNERSHIP&lt;/emph&gt; &lt;/text&gt; &lt;/p&gt; &lt;p&gt; &lt;text&gt; &lt;emph typestyle="ib"&gt;Qualifications of
                  Shareholders&lt;/emph&gt; &lt;/text&gt; &lt;/p&gt; &lt;clause clause-type="clause-level2-text"&gt; &lt;heading inline="true"&gt; &lt;desig inline="true"&gt; &lt;designum
                  id="number"&gt;1.1&lt;/designum&gt; &lt;/desig&gt; &lt;/heading&gt; &lt;p&gt; &lt;text&gt; The Corporation may not issue shares nor may any shareholder transfer any of its capital
                  stock to anyone other than to [&lt;emph typestyle="it"&gt;in FLORIDA: another professional corporation, a professional limited liability company, or; in ALABAMA: a professional
                  corporation or general partnership, or&lt;/emph&gt;] [&lt;emph typestyle="it"&gt;in FLORIDA/ALABAMA: individuals, each of which; or in GEORGIA: an individual who&lt;/emph&gt;] is
                  duly licensed to render the specific professional services for which the Corporation is organized.&lt;/text&gt; &lt;/p&gt; &lt;/clause&gt; [...] </codeblock>

                <title>Target XML for Rosetta <sourcexml>clause[@clause-type="container"]</sourcexml> and nested <sourcexml>clause</sourcexml></title>
                <codeblock> &lt;form:form&gt; &lt;form:document annotated="false" official="true" typeofdoc="unnamed"&gt; &lt;form:bodytext&gt; &lt;form:clause clausetype="clause-level1-text"
                  xml:id="c00001"&gt; &lt;ref:anchor id="LPAcontentitem_0QYN_0QYN_211388_1" anchortype="local"/&gt; &lt;heading inline="true"&gt; &lt;desig inline="true"&gt;1&lt;/desig&gt;
                  &lt;/heading&gt; &lt;form:bodytext&gt; &lt;form:p&gt; &lt;form:text&gt; &lt;emph typestyle="bf"&gt;SHARE OWNERSHIP&lt;/emph&gt; &lt;/form:text&gt; &lt;/form:p&gt; &lt;form:p&gt;
                  &lt;form:text&gt; &lt;emph typestyle="ib"&gt;Qualifications of Shareholders&lt;/emph&gt; &lt;/form:text&gt; &lt;/form:p&gt; &lt;form:clause clausetype="clause-level2-text"&gt;
                  &lt;heading inline="true"&gt; &lt;desig inline="true"&gt; 1.1&lt;/desig&gt; &lt;/heading&gt; &lt;form:bodytext&gt; &lt;form:p&gt; &lt;form:text&gt;The Corporation may not issue
                  shares nor may any shareholder transfer any of its capital stock to anyone other than to [&lt;emph typestyle="it"&gt;in FLORIDA: another professional corporation, a professional
                  limited liability company, or; in ALABAMA: a professional corporation or general partnership, or&lt;/emph&gt;] [&lt;emph typestyle="it"&gt;in FLORIDA/ALABAMA: individuals, each of
                  which; or in GEORGIA: an individual who&lt;/emph&gt;] is duly licensed to render the specific professional services for which the Corporation is organized.&lt;/form:text&gt;
                  &lt;/form:p&gt; &lt;/form:bodytext&gt; &lt;/form:clause&gt; [...] </codeblock>
              </example>

              <example>
                <title>Source XML: numbered clause with nested numbered clause group, clause captions</title>
                <codeblock> &lt;clause id="N1009D" include-in-toc="true"&gt; &lt;heading&gt; &lt;desig&gt; &lt;desiglabel&gt;Article&lt;/desiglabel&gt; &lt;designum&gt;I&lt;/designum&gt;
                  &lt;/desig&gt; &lt;title&gt; &lt;emph typestyle="bu"&gt;Definitions&lt;/emph&gt; &lt;/title&gt; &lt;/heading&gt; &lt;refpt id="LPAcontentitem_0QYN_0QYN_211388_1" type="local"/&gt;
                  &lt;clause clause-type="group" label-type="number"&gt; &lt;clause id="N100A5"&gt; &lt;heading&gt; &lt;desig&gt; &lt;designum&gt;1.1&lt;/designum&gt; &lt;/desig&gt; &lt;/heading&gt;
                  &lt;refpt id="LPAcontentitem_0QYN_0QYN_211388_1.1" type="local"/&gt; &lt;p&gt; &lt;text&gt;"LICENSOR" shall mean LICENSOR CORP, and its past, present or future divisions, affiliates
                  and Subsidiaries (as defined below).&lt;/text&gt; &lt;/p&gt; &lt;note&gt; &lt;heading&gt; &lt;title&gt;Drafting Note to Paragraph &lt;link refpt="LPAcontentitem_0QYN_0QYN_211388_1.1"
                  alt-label="clause" dpsi="0QYN"&gt;1.1&lt;/link&gt; &lt;/title&gt; &lt;/heading&gt; &lt;p&gt; &lt;text&gt;To avoid the risk of future disputes, ... parties.&lt;/text&gt; &lt;/p&gt;
                  &lt;/note&gt; &lt;/clause&gt; &lt;clause id="N100B1"&gt; &lt;heading&gt; &lt;desig&gt; &lt;designum&gt;1.2&lt;/designum&gt; &lt;/desig&gt; &lt;/heading&gt; &lt;refpt
                  id="LPAcontentitem_0QYN_0QYN_211388_1.2" type="local"/&gt; &lt;p&gt; &lt;text&gt;"LICENSEE" shall mean LICENSEE CORP., and its past, present or future divisions, affiliates and
                  Subsidiaries (as defined below). &lt;/text&gt; &lt;/p&gt; &lt;note&gt; &lt;heading&gt; &lt;title&gt;Drafting Note to Paragraph &lt;link refpt="LPAcontentitem_0QYN_0QYN_211388_1.2"
                  alt-label="clause" dpsi="0QYN"&gt;1.2&lt;/link&gt; &lt;/title&gt; &lt;/heading&gt; &lt;p&gt; &lt;text&gt;Naming the proper licensee ... subsidiaries.&lt;/text&gt; &lt;/p&gt;
                  &lt;/note&gt; &lt;/clause&gt; &lt;clause id="N100BD"&gt; &lt;heading&gt; &lt;desig&gt; &lt;designum&gt;1.3&lt;/designum&gt; &lt;/desig&gt; &lt;/heading&gt; &lt;refpt
                  id="LPAcontentitem_0QYN_0QYN_211388_1.3" type="local"/&gt; &lt;p&gt; &lt;text&gt;"Subsidiaries" shall mean and ... or controls:&lt;/text&gt; &lt;/p&gt; &lt;clause clause-type="group"
                  label-type="alpha-lower"&gt; &lt;clause id="N100C3"&gt; &lt;heading&gt; &lt;desig&gt; &lt;designum&gt;a&lt;/designum&gt; &lt;/desig&gt; &lt;/heading&gt; &lt;refpt
                  id="LPAcontentitem_0QYN_0QYN_211388_1.3.a" type="local"/&gt; &lt;p&gt; &lt;text&gt;iin the case ... of directors; and&lt;/text&gt; &lt;/p&gt; &lt;/clause&gt; &lt;clause
                  id="N100C7"&gt; &lt;heading&gt; &lt;desig&gt; &lt;designum&gt;b&lt;/designum&gt; &lt;/desig&gt; &lt;/heading&gt; &lt;refpt id="LPAcontentitem_0QYN_0QYN_211388_1.3.b"
                  type="local"/&gt; &lt;p&gt; &lt;text&gt;in the case of non-corporate .. entity. &lt;/text&gt; &lt;/p&gt; &lt;/clause&gt; &lt;clause clause-type="optional" id="N100CB"&gt;
                  &lt;heading&gt; &lt;desig&gt; &lt;designum&gt;c&lt;/designum&gt; &lt;/desig&gt; &lt;/heading&gt; &lt;refpt id="LPAcontentitem_0QYN_0QYN_211388_1.3.c" type="local"/&gt;
                  &lt;frm:clausecaption&gt; &lt;text&gt; &lt;emph typestyle="bf"&gt;Optional Clause to Paragraph &lt;link refpt="LPAcontentitem_0QYN_0QYN_211388_1.3" alt-label="clause"
                  dpsi="0QYN"&gt;1.3&lt;/link&gt; &lt;/emph&gt; &lt;/text&gt; &lt;/frm:clausecaption&gt; &lt;p&gt; &lt;text&gt;Notwithstanding the foregoing, the following shall be considered
                  Subsidiaries under the Agreement: &lt;frm:prompt prompttype="longname"&gt;_____________&lt;/frm:prompt&gt;.&lt;/text&gt; &lt;/p&gt; &lt;note&gt; &lt;heading&gt; &lt;title&gt;Drafting
                  Note to Optional Clause to Paragraph &lt;link refpt="LPAcontentitem_0QYN_0QYN_211388_1.3.c" alt-label="clause" dpsi="0QYN"&gt;1.3(c)&lt;/link&gt; &lt;/title&gt; &lt;/heading&gt;
                  &lt;p&gt; &lt;text&gt;Certain foreign jurisdictions do not allow companies to own or control 50% or more of another company. Therefore, a licensee may wish to expand the definition
                  of Subsidiary to include listed companies in such jurisdictions.&lt;/text&gt; &lt;/p&gt; &lt;/note&gt; &lt;/clause&gt; &lt;/clause&gt; &lt;note&gt; &lt;heading&gt;
                  &lt;title&gt;Drafting Note to Paragraph &lt;link refpt="LPAcontentitem_0QYN_0QYN_211388_1.3" alt-label="clause" dpsi="0QYN"&gt;1.3&lt;/link&gt; &lt;/title&gt; &lt;/heading&gt;
                  &lt;p&gt; &lt;text&gt;Pay attention to the ... may avoid confusion and future disputes.&lt;/text&gt; &lt;/p&gt; &lt;/note&gt; &lt;/clause&gt; &lt;/clause&gt; &lt;/clause&gt; + </codeblock>

                <title>Target XML numbered clause with nested numbered clause group, clause captions</title>
                <codeblock> &lt;form:clause xml:id="N1009D" includeintoc="true"&gt; &lt;ref:anchor id="LPAcontentitem_0QYN_0QYN_211388_1" anchortype="local"/&gt; &lt;heading&gt; &lt;desig&gt;Article
                  I&lt;/desig&gt; &lt;title&gt; &lt;emph typestyle="bu"&gt;Definitions&lt;/emph&gt; &lt;/title&gt; &lt;/heading&gt; &lt;form:bodytext&gt; &lt;form:clausegrp labeltype="number"&gt;
                  &lt;form:annotatedclause&gt; &lt;form:clause xml:id="N100A5"&gt; &lt;ref:anchor id="LPAcontentitem_0QYN_0QYN_211388_1.1" anchortype="local"/&gt; &lt;heading&gt;
                  &lt;desig&gt;1.1&lt;/desig&gt; &lt;/heading&gt; &lt;form:bodytext&gt; &lt;form:p&gt; &lt;form:text&gt;"LICENSOR" shall mean LICENSOR CORP, and its past, present or future divisions,
                  affiliates and Subsidiaries (as defined below).&lt;/form:text&gt; &lt;/form:p&gt; &lt;/form:bodytext&gt; &lt;/form:clause&gt; &lt;form:annotation&gt; &lt;heading&gt;
                  &lt;title&gt;Drafting Note to Paragraph &lt;ref:lnlink&gt; &lt;ref:marker&gt;1.1&lt;/ref:marker&gt; &lt;ref:locator anchoridref="LPAcontentitem_0QYN_0QYN_211388_1.1"/&gt;
                  &lt;/ref:lnlink&gt; &lt;/title&gt; &lt;/heading&gt; &lt;form:bodytext&gt; &lt;form:p&gt; &lt;form:text&gt;To avoid the risk of future disputes, ... parties.&lt;/form:text&gt;
                  &lt;/form:p&gt; &lt;/form:bodytext&gt; &lt;/form:annotation&gt; &lt;/form:annotatedclause&gt; &lt;form:annotatedclause&gt; &lt;form:clause xml:id="N100B1"&gt; &lt;ref:anchor
                  id="LPAcontentitem_0QYN_0QYN_211388_1.2" anchortype="local"/&gt; &lt;heading&gt; &lt;desig&gt;1.2&lt;/desig&gt; &lt;/heading&gt; &lt;form:bodytext&gt; &lt;form:p&gt;
                  &lt;form:text&gt;"LICENSEE" shall mean LICENSEE CORP., and its past, present or future divisions, affiliates and Subsidiaries (as defined below). &lt;/form:text&gt; &lt;/form:p&gt;
                  &lt;/form:bodytext&gt; &lt;/form:clause&gt; &lt;form:annotation&gt; &lt;heading&gt; &lt;title&gt;Drafting Note to Paragraph &lt;ref:lnlink&gt;
                  &lt;ref:marker&gt;1.2&lt;/ref:marker&gt; &lt;ref:locator anchoridref="LPAcontentitem_0QYN_0QYN_211388_1.2"/&gt; &lt;/ref:lnlink&gt; &lt;/title&gt; &lt;/heading&gt;
                  &lt;form:bodytext&gt; &lt;form:p&gt; &lt;form:text&gt;Naming the proper licensee ... subsidiaries.&lt;/form:text&gt; &lt;/form:p&gt; &lt;/form:bodytext&gt; &lt;/form:annotation&gt;
                  &lt;/form:annotatedclause&gt; &lt;form:annotatedclause&gt; &lt;form:clause xml:id="N100BD"&gt; &lt;ref:anchor id="LPAcontentitem_0QYN_0QYN_211388_1.3" anchortype="local"/&gt;
                  &lt;heading&gt; &lt;desig&gt;1.3&lt;/desig&gt; &lt;/heading&gt; &lt;form:bodytext&gt; &lt;form:p&gt; &lt;form:text&gt;"Subsidiaries" shall mean and ... or controls:&lt;/form:text&gt;
                  &lt;/form:p&gt; &lt;form:clausegrp labeltype="lowerAlpha"&gt; &lt;form:clause xml:id="N100C3"&gt; &lt;ref:anchor id="LPAcontentitem_0QYN_0QYN_211388_1.3.a" anchortype="local"/&gt;
                  &lt;heading&gt; &lt;desig&gt;a&lt;/desig&gt; &lt;/heading&gt; &lt;form:bodytext&gt; &lt;form:p&gt; &lt;form:text&gt;in the case ... of directors; and&lt;/form:text&gt;
                  &lt;/form:p&gt; &lt;/form:bodytext&gt; &lt;/form:clause&gt; &lt;form:clause xml:id="N100C7"&gt; &lt;ref:anchor id="LPAcontentitem_0QYN_0QYN_211388_1.3.b" anchortype="local"/&gt;
                  &lt;heading&gt; &lt;desig&gt;b&lt;/desig&gt; &lt;/heading&gt; &lt;form:bodytext&gt; &lt;form:p&gt; &lt;form:text&gt;in the case of non-corporate .. entity. &lt;/form:text&gt;
                  &lt;/form:p&gt; &lt;/form:bodytext&gt; &lt;/form:clause&gt; &lt;form:annotatedclause&gt; &lt;form:clause clausetype="optional" xml:id="N100CB"&gt; &lt;ref:anchor
                  id="LPAcontentitem_0QYN_0QYN_211388_1.3.c" anchortype="local"/&gt; &lt;heading&gt; &lt;desig&gt;c&lt;/desig&gt; &lt;/heading&gt; &lt;!--@@@ SNB Markup note: move alternate/optional
                  clauses from form:p elements to instead be inside form:clause/form:info/form:clausecaption--&gt; &lt;form:info&gt; &lt;form:clausecaption&gt; &lt;p&gt; &lt;text&gt; &lt;emph
                  typestyle="bf"&gt;Optional Clause to Paragraph &lt;ref:lnlink&gt; &lt;ref:marker&gt;1.3&lt;/ref:marker&gt; &lt;ref:locator anchoridref="LPAcontentitem_0QYN_0QYN_211388_1.3"/&gt;
                  &lt;/ref:lnlink&gt;:&lt;/emph&gt; &lt;/text&gt; &lt;/p&gt; &lt;/form:clausecaption&gt; &lt;/form:info&gt; &lt;form:bodytext&gt; &lt;form:p&gt; &lt;form:text&gt;Notwithstanding the
                  foregoing, the following shall be considered Subsidiaries under the Agreement: &lt;form:prompt formcharuse="longname"&gt;_____________&lt;/form:prompt&gt;.&lt;/form:text&gt;
                  &lt;/form:p&gt; &lt;/form:bodytext&gt; &lt;/form:clause&gt; &lt;form:annotation&gt; &lt;heading&gt; &lt;title&gt;Drafting Note to Optional Clause to Paragraph &lt;ref:lnlink&gt;
                  &lt;ref:marker&gt;1.3(c)&lt;/ref:marker&gt; &lt;ref:locator anchoridref="LPAcontentitem_0QYN_0QYN_211388_1.3.c"/&gt; &lt;/ref:lnlink&gt; &lt;/title&gt; &lt;/heading&gt;
                  &lt;form:bodytext&gt; &lt;form:p&gt; &lt;form:text&gt;Certain foreign jurisdictions do not allow companies to own or control 50% or more of another company. Therefore, a licensee may
                  wish to expand the definition of Subsidiary to include listed companies in such jurisdictions.&lt;/form:text&gt; &lt;/form:p&gt; &lt;/form:bodytext&gt; &lt;/form:annotation&gt;
                  &lt;/form:annotatedclause&gt; &lt;/form:clausegrp&gt; &lt;/form:bodytext&gt; &lt;/form:clause&gt; &lt;form:annotation&gt; &lt;heading&gt; &lt;title&gt;Drafting Note to Paragraph
                  &lt;ref:lnlink&gt; &lt;ref:marker&gt;1.3&lt;/ref:marker&gt; &lt;ref:locator anchoridref="LPAcontentitem_0QYN_0QYN_211388_1.3"/&gt; &lt;/ref:lnlink&gt; &lt;/title&gt; &lt;/heading&gt;
                  &lt;form:bodytext&gt; &lt;form:p&gt; &lt;form:text&gt;Pay attention to the ... may avoid confusion and future disputes.&lt;/form:text&gt; &lt;/form:p&gt; &lt;/form:bodytext&gt;
                  &lt;/form:annotation&gt; &lt;/form:annotatedclause&gt; &lt;/form:clausegrp&gt; &lt;/form:bodytext&gt; &lt;/form:clause&gt; </codeblock>
              </example>

              <section>
                <title>Changes</title>
                <p>2017-02-07: <ph id="change_20170207b_snb">LPA 2016 enhancements: Clarified that <sourcexml>clause[@clause-type="group"]</sourcexml> maps to <targetxml>form:clausegrp</targetxml> as
                    described in the clause[@clause-type="group"] (id-USPA-31011) section of this document.</ph></p>
                <p>2017-02-07: <ph id="change_20170207c_snb">LPA 2016 enhancements: Added mapping of <sourcexml>clause/heading</sourcexml> to <targetxml>form:clause/heading</targetxml>.</ph></p>
                <p>2017-02-07: <ph id="change_20170207d_snb">LPA 2016 enhancements: Added mapping of <sourcexml>@include-in-toc</sourcexml> to <targetxml>@includeintoc</targetxml>.</ph></p>
                <p>2017-02-07: <ph id="change_20170207e_snb">LPA 2016 enhancements: Added note regarding mapping of <sourcexml>clause/refpt</sourcexml> to
                    <targetxml>form:clause/ref:anchor</targetxml>, and <sourcexml>clause/frm:clausecaption</sourcexml> to <targetxml>form:clause/form:info/form:clausecaption</targetxml>. Also reworded
                    to indicate that these elements are NOT encapsulated within a <targetxml>form:bodytext</targetxml> in the target document.</ph></p>
                <p>2017-02-07: <ph id="change_20170207f_snb">LPA 2016 enhancements: Added markup example for a clause with autonumbering parameters, <sourcexml>@include-in-toc</sourcexml>,
                      <sourcexml>heading</sourcexml>, <sourcexml>clause/refpt</sourcexml>, and <sourcexml>clause/frm:clausecaption</sourcexml>.</ph></p>
              </section>

              <section>
                <title>clause/frm:clausecaption to form:clause/form:info/form:clausecaption</title>
                <p><sourcexml>clause/frm:clausecaption</sourcexml> maps to <targetxml>form:clause/form:info/form:clausecaption</targetxml>. If no <targetxml>form:clause/form:info</targetxml> element
                  already exists in the target document inside the current close, then one should be created. Note that <targetxml>form:clause/form:info</targetxml> must be inserted in sequence within
                  the current target <targetxml>form:clause</targetxml> element after any <targetxml>heading</targetxml> elements and before any <targetxml>form:bodytext</targetxml> element. </p>
              </section>

              <example>
                <title>Source clause/frm:clausecaption</title>
                <codeblock> &lt;clause clause-type="optional" id="N100CB"&gt; &lt;heading&gt; &lt;desig&gt; &lt;designum&gt;c&lt;/designum&gt; &lt;/desig&gt; &lt;/heading&gt; &lt;refpt
                  id="LPAcontentitem_0QYN_0QYN_211388_1.3.c" type="local"/&gt; &lt;frm:clausecaption&gt; &lt;text&gt; &lt;emph typestyle="bf"&gt;Optional Clause to Paragraph &lt;link
                  refpt="LPAcontentitem_0QYN_0QYN_211388_1.3" alt-label="clause" dpsi="0QYN"&gt;1.3&lt;/link&gt; &lt;/emph&gt; &lt;/text&gt; &lt;/frm:clausecaption&gt; &lt;p&gt;
                  &lt;text&gt;Notwithstanding the foregoing, the following shall be considered Subsidiaries under the Agreement: &lt;frm:prompt
                  prompttype="longname"&gt;_____________&lt;/frm:prompt&gt;.&lt;/text&gt; &lt;/p&gt; &lt;note&gt; &lt;heading&gt; &lt;title&gt;Drafting Note to Optional Clause to Paragraph &lt;link
                  refpt="LPAcontentitem_0QYN_0QYN_211388_1.3.c" alt-label="clause" dpsi="0QYN"&gt;1.3(c)&lt;/link&gt; &lt;/title&gt; &lt;/heading&gt; &lt;p&gt; &lt;text&gt;Certain foreign
                  jurisdictions do not allow companies to own or control 50% or more of another company. Therefore, a licensee may wish to expand the definition of Subsidiary to include listed
                  companies in such jurisdictions.&lt;/text&gt; &lt;/p&gt; &lt;/note&gt; &lt;/clause&gt; </codeblock>

                <title>Target form:clause/form:info/form:clausecaption</title>
                <codeblock> &lt;form:annotatedclause&gt; &lt;form:clause clausetype="optional" xml:id="N100CB"&gt; &lt;ref:anchor id="LPAcontentitem_0QYN_0QYN_211388_1.3.c" anchortype="local"/&gt;
                  &lt;heading&gt; &lt;desig&gt;c&lt;/desig&gt; &lt;/heading&gt; &lt;form:info&gt; &lt;form:clausecaption&gt; &lt;p&gt; &lt;text&gt; &lt;emph typestyle="bf"&gt;Optional Clause to
                  Paragraph &lt;ref:lnlink&gt; &lt;ref:marker&gt;1.3&lt;/ref:marker&gt; &lt;ref:locator anchoridref="LPAcontentitem_0QYN_0QYN_211388_1.3"/&gt; &lt;/ref:lnlink&gt;:&lt;/emph&gt;
                  &lt;/text&gt; &lt;/p&gt; &lt;/form:clausecaption&gt; &lt;/form:info&gt; &lt;form:bodytext&gt; &lt;form:p&gt; &lt;form:text&gt;Notwithstanding the foregoing, the following shall be
                  considered Subsidiaries under the Agreement: &lt;form:prompt formcharuse="longname"&gt;_____________&lt;/form:prompt&gt;.&lt;/form:text&gt; &lt;/form:p&gt; &lt;/form:bodytext&gt;
                  &lt;/form:clause&gt; &lt;form:annotation&gt; &lt;heading&gt; &lt;title&gt;Drafting Note to Optional Clause to Paragraph &lt;ref:lnlink&gt; &lt;ref:marker&gt;1.3(c)&lt;/ref:marker&gt;
                  &lt;ref:locator anchoridref="LPAcontentitem_0QYN_0QYN_211388_1.3.c"/&gt; &lt;/ref:lnlink&gt; &lt;/title&gt; &lt;/heading&gt; &lt;form:bodytext&gt; &lt;form:p&gt;
                  &lt;form:text&gt;Certain foreign jurisdictions do not allow companies to own or control 50% or more of another company. Therefore, a licensee may wish to expand the definition of
                  Subsidiary to include listed companies in such jurisdictions.&lt;/form:text&gt; &lt;/form:p&gt; &lt;/form:bodytext&gt; &lt;/form:annotation&gt; &lt;/form:annotatedclause&gt;
                </codeblock>
              </example>


              <section>
                <title>Changes</title>
                <p>2017-02-07: <ph id="change_20170207g_snb">LPA 2016 enhancements: Added new mapping for <sourcexml>clause/frm:clausecaption</sourcexml> to
                      <targetxml>form:clause/form:info/form:clausecaption</targetxml>.</ph></p>
              </section>


              <section>
                <title>clause/p/text[@align="center"] to form:clause/form:bodytext/form:p[@align="center"]</title>
                <p><sourcexml>clause/p/text[@align="center"]</sourcexml> maps to <targetxml>form:clause/form:bodytext/form:p[@align="center"]</targetxml></p>
              </section>


              <example>
                <title>Source clause/p/text[@align="center"]</title>
                <codeblock> &lt;clause id="N1007F"&gt; &lt;p&gt; &lt;text align="center"&gt; &lt;emph typestyle="bf"&gt;RECITALS&lt;/emph&gt; &lt;/text&gt; &lt;/p&gt; ... </codeblock>
              </example>

              <example>
                <title>Target form:clause/form:bodytext/form:p[@align="center"]</title>
                <codeblock> &lt;form:clause xml:id="N1007F"&gt; &lt;form:bodytext&gt; &lt;form:p align="center"&gt; &lt;form:text&gt;&lt;emph typestyle="bf"&gt;RECITALS&lt;/emph&gt; &lt;/form:text&gt;
                  &lt;/form:p&gt; &lt;/form:bodytext&gt; ... </codeblock>
              </example>


              <section>
                <title>clause[@clause-type="group"][@runin="exhibit"] to form:clausegrp[@grptype="exhibit"]</title>
                <p>When document contain forms including clause markup there are instances of clause groups which are indicated by <sourcexml>@clause-type="group"</sourcexml> and a further descriptive
                  attribute of <sourcexml>@runin="exhibit"</sourcexml>. When this occurs, map the output to <targetxml>form:clausegrp[@grptype="exhibit"]</targetxml> and content
                    <sourcexml>clause</sourcexml> gets mapped to a normal <targetxml>form:clause</targetxml> element as described above.</p>
              </section>

              <example>
                <title>Source clause[@clause-type="group"][@runin="exhibit"]</title>
                <codeblock> &lt;clause clause-type="group" runin="exhibit"&gt; &lt;clause&gt; … &lt;/clause&gt; &lt;/clause&gt; </codeblock>
              </example>

              <example>
                <title>Target form:clausegrp[@grptype="exhibit"]</title>
                <codeblock> &lt;form:clausegrp grptype=”exhibit”&gt; &lt;form:clause&gt; … &lt;/form:clause&gt; &lt;/form:clausegrp&gt; </codeblock>
              </example>


              <section>
                <title>Changes</title>
                <p>2014-12-08: <ph id="change_20141208-2_mlv">Addition of mapping for <sourcexml>form/frm:body/note</sourcexml> to <targetxml>form:form/form:document/form:bodytext/note</targetxml> and
                    example from US LPA form content.</ph></p>
                <p>2014-04-23: MLV - added instruction for mapping clause/p/text[@align="center"] to form:clause/form:bodytext/form:p[@align="center"].</p>
                <p>2012-11-29: MLV - added explicit instruction for mapping clause@id to form:clause@xml:id.</p>
                <p>2012-04-27: <ph id="change_20120427_sk">SK - changed the wording of the clause[@clause-type="container"] instruction to make it more clear that the element is passed through to the
                    target document.</ph></p>
              </section>
              <section>
                <title>Notes</title>
                <p>Need to confirm whether we need/want to copy the source's @clause-type verbatim to the target.</p>
              </section>
            </body>
          </topic>

          <topic id="clause-table">
            <title>clause/table <lnpid>id-CCCC-10173x</lnpid></title>
            <body>
              <section>
                <title>Instructions</title>
                <p>In the context of <sourcexml>clause</sourcexml>, the element <sourcexml>table</sourcexml> becomes <targetxml>form:clause/form:bodytext/table</targetxml>.</p>
              </section>
              <example>
                <title>Source XML</title>
                <codeblock> &lt;clause id="N100C1"&gt; [...] &lt;table&gt; &lt;tgroup cols="2"&gt; &lt;colspec colname="col1" colwidth="200"/&gt; &lt;colspec colname="col2" colwidth="200"/&gt;
                  &lt;tbody&gt; &lt;row&gt; &lt;entry&gt; &lt;emph typestyle="bf"&gt;STATE&lt;/emph&gt; &lt;/entry&gt; [...] </codeblock>
              </example>
              <example>
                <title>Target XML</title>
                <codeblock> &lt;form:clause id="N100C1"&gt; &lt;form:bodytext&gt; [...] &lt;table&gt; &lt;tgroup cols="2"&gt; &lt;colspec colname="col1" colwidth="200"/&gt; &lt;colspec colname="col2"
                  colwidth="200"/&gt; &lt;tbody&gt; &lt;row&gt; &lt;entry&gt; &lt;emph typestyle="bf"&gt;STATE&lt;/emph&gt; &lt;/entry&gt; [...] </codeblock>
              </example>
              <section>
                <title>Changes</title>
                <p>2014-12-08: <ph id="change_20141208-3_mlv">Addition of mapping for <sourcexml>clause/table</sourcexml> to <targetxml>form:clause/form:bodytext/table</targetxml> and example from US
                    LPA form content.</ph></p>
              </section>
            </body>
          </topic>

          <topic id="frm-body_pgrp">
            <title>pgrp <lnpid>id-CCCC-10174</lnpid></title>
            <body>
              <section>
                <title>Instructions</title>
                <p>In the context of <sourcexml>frm:body</sourcexml>, <sourcexml>pgrp</sourcexml> is not processed and its contents are passed through to the target documents under default template
                  rules.</p>
              </section>
            </body>
          </topic>
          <topic id="frm-body_glp-note">
            <title>glp:note <lnpid>id-CCCC-10175</lnpid></title>
            <body>
              <section>
                <title>Instructions</title>
                <p><sourcexml>frm:body//glp:note</sourcexml> becomes <targetxml>form:bodytext//note</targetxml>.</p>
                <note>Please note the XPath syntax "//" is a notation indicating all decendant elements, not just immediate children. So the above instruction also indicates scenarios such as
                    <sourcexml>form/frm:body/clause/glp:note</sourcexml> becoming <targetxml>form:form/form:document/form:bodytext/form:clause/form:bodytext/note</targetxml>.</note>
                <note>If there are multiple consecutive target <targetxml>note</targetxml> elements created, these are wrapped with a <targetxml>notes</targetxml>. Please see <xref
                    href="Rosetta_NZ-consecutive-note-LxAdv-notes.dita"/> for details.</note>
              </section>
              <section>
                <title>Changes</title>
                <p>2014-03-04: <ph id="changes_20140304_JCG">Added a note to indicate that consecutive target <targetxml>note</targetxml> elements are wrapped with a <targetxml>notes</targetxml>
                    element. (Webteam #252304)</ph></p>
                <p>2014-03-03: <ph id="changes_20140303_JCG">Added a note to clarify the intention of "//"; this is not a change to the instruction.</ph></p>
                <p>2012-05-14: <ph id="changes_20120514_sk">SK - added this instruction to map frm:body//glp:note to form:bodytext//note.</ph></p>
              </section>
            </body>
          </topic>
        </topic>
      </topic>
    </topic>
  </dita:topic>

  <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\LPA-PracticalGuidance_FormsPrecedents.dita  -->


  <xsl:template match="frm:body" priority="2">
    <form:document annotated="false" official="false" typeofdoc="unnamed">
      <form:bodytext>
        <!-- SNB: 2017-12-04 : change for webstar 7053908. change frm:body processing to only parse following note when there is 
             no preceding frm:body that already processed it. The following logic will handle 
             frm:body,note[@notetype = 'summary'],frm:body,note[@notetype = 'summary'], but it WONT handle more complex structures  -->
        <xsl:choose>
          <xsl:when test="following::frm:body">
            <!--SNB: 2017-12-04 : last frm:body will process notes following it, 
                     so only process note[@notetype = 'summary'] that is between this frm:body and the last frm:body -->
            <xsl:apply-templates select="(clause[@clause-type] | following::note[@notetype = 'summary'][following::frm:body] | p | table | l)"/>
          </xsl:when>
          <xsl:otherwise>
            <!--SNB: 2017-12-04 : this is last frm:body, so pull in any  following note[@notetype = 'summary'] -->
            <xsl:apply-templates select="(clause[@clause-type] | following::note[@notetype = 'summary'] | p | table | l)"/>
          </xsl:otherwise>
        </xsl:choose>
      </form:bodytext>
    </form:document>
  </xsl:template>

  <xsl:template match="sigblock" priority="22">
    <!-- SNB: 2018-04-05 : webstar 7134522: add flag for creating bodytext or not -->
    <xsl:param name="CreateBodytext" as="xs:string" select="'true'"></xsl:param>
    <xsl:choose>
      <xsl:when test="$streamID = 'NZ11'">
        <sigblock>
          <xsl:apply-templates select="@* | node()"/>
        </sigblock>
      </xsl:when>
        <!--SNB: 2017-12-13: webstar 7058441: add "or preceding-sibling::clause" to not. 
        getting stupid with all these following-sibling/preceding-sibling pairs, but have to 
        process following sigblocks before closing bodytext--> 
      <!-- SNB: 2018-04-05 : webstar 7134522: add processing of sigblock when no preceding p -->
      <xsl:when test="not(preceding-sibling::p or preceding-sibling::clause or preceding-sibling::frm:block or following-sibling::frm:block)">
        <!-- SNB: 2018-04-05 : webstar 7134522: add flag for creating bodytext or not -->
        <xsl:choose>
          <xsl:when test="$CreateBodytext='false'">
            <form:sigblock>
              <xsl:apply-templates select="@* | node()"/>
            </form:sigblock>
            <!-- added element p as well for applying the template on p whenever it occur as sibling of sigblock -->
            <xsl:apply-templates select="following-sibling::p | following-sibling::clause"/>
          </xsl:when>
          <xsl:otherwise>
            <form:bodytext>
              <form:sigblock>
                <xsl:apply-templates select="@* | node()"/>
              </form:sigblock>
              <!-- added element p as well for applying the template on p whenever it occur as sibling of sigblock -->
              <xsl:apply-templates select="following-sibling::p | following-sibling::clause"/>
            </form:bodytext>                  
          </xsl:otherwise>
        </xsl:choose>
      </xsl:when>
      <xsl:otherwise>
        <form:sigblock>
          <xsl:apply-templates select="@* | node()"/>
        </form:sigblock>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <xsl:template match="sigblock/@align">
    <xsl:attribute name="align">
      <xsl:value-of select="."/>
    </xsl:attribute>
  </xsl:template>
  
  <xsl:template match="sigblock/pgrp" priority="22">
    <form:signatures>
      <xsl:apply-templates select="@* | node()"/>
    </form:signatures>
  </xsl:template>
  
  <xsl:template match="sigblock/pgrp/pgrp" priority="22">
      <xsl:apply-templates select="@* | node()"/>
  </xsl:template>
  
  <xsl:template match="sigblock/pgrp/p | sigblock/pgrp/pgrp/p" priority="30">
    <!-- SNB 2017-11-03 removing attribute processing in sigblock/pgrp/p and moving to the sigblock/pgrp/p/text 
      template. This code generates a parser error and stops all processing if a p element.
      The p element itself doesnt have any output; it's the text child that maps to form:line. consequently attributes of p must be
      parsed as part of the p/text template. Line below was previously xsl:apply-templates select="@* | node()"-->
    <xsl:apply-templates select="node()"/>
  </xsl:template>

  <xsl:template match="sigblock/pgrp/p/text | sigblock/pgrp/pgrp/p/text" priority="30">
    <form:line>
        <!-- SNB 2017-11-03 removing attribute processing in sigblock/pgrp/p and moving to the sigblock/pgrp/p/text 
         template. This code generates a parser error and stops all processing if a p element.
         The p element itself doesnt have any output; it's the text child that maps to form:line. consequently attributes of p must be
         parsed as part of the p/text template. below was previously only xsl:apply-templates select="@* | node()" -->
      <xsl:apply-templates select="parent::p/@*"/>
      <xsl:apply-templates select="@* | node()"/>
    </form:line>
  </xsl:template>

  <xsl:template match="frm:block">
    <form:block>
      <xsl:apply-templates select="@* | node()"/>
    </form:block>
  </xsl:template>

  <xsl:template match="frm:block/@align">
    <xsl:attribute name="align">
      <xsl:value-of select="."/>
    </xsl:attribute>
  </xsl:template>

  <xsl:template match="frm:block/@block-type">
    <xsl:attribute name="blocktype">
      <xsl:value-of select="."/>
    </xsl:attribute>
  </xsl:template>

  <xsl:template match="frm:block/p" priority="30">
    <form:p>
      <xsl:apply-templates select="@* | node()"/>
    </form:p>
  </xsl:template>
  
  <xsl:template match="note[@notetype = 'summary']" priority="2">
    <note>
      <xsl:apply-templates select="@*, heading"/>
      <bodytext>
        <xsl:apply-templates select="node() except heading"/>
      </bodytext>
    </note>
  </xsl:template>

  <xsl:template match="note/@notetype[. = 'summary']" priority="2">
    <xsl:attribute name="notetype">
      <xsl:value-of select="."/>
    </xsl:attribute>
  </xsl:template>
  
  <xsl:template match="note[@notetype = 'summary']/p/text" priority="2">
    <text>
      <xsl:apply-templates select="@* | node()"/>
    </text>
  </xsl:template>

</xsl:stylesheet>
