<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:ci="http://www.lexis-nexis.com/ci" xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" xmlns:frm="http://www.lexis-nexis.com/glp/frm" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:base="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/" xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns:form="http://www.lexisnexis.com/xmlschemas/content/shared/form/1/" xmlns:lnci="http://www.lexisnexis.com/xmlschemas/content/shared/citations/1/" xmlns:location="http://www.lexisnexis.com/xmlschemas/content/shared/location/1/" xmlns:proc="http://www.lexisnexis.com/xmlschemas/content/shared/process-elements/1/" xmlns:pubinfo="http://www.lexisnexis.com/xmlschemas/content/shared/publication-info/1/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" xmlns:seclaw="http://www.lexisnexis.com/xmlschemas/content/legal/secondary-law/1/" version="2.0" exclude-result-prefixes="dita ci docinfo frm leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="CA10-Treatise_Textbook_Forms-change-log">
  <title>Change Log for CA10</title>
  <body>
    <section>
      <title>Seclaw 8.14 PROD</title>
      <p>2016-07-27
        <ol><li>
          <xref href="../../../Rosetta/DITA-CAN/CA10-Treatise_Textbook_Forms/CA10_dpsi-stream-doc.hierlev-heading-title.dita">2016-07-27 - docinfo:custom-metafield/@name="dpsi" id-CA10-14628: Only change the language of existing rule for
            handling the DPSI values inside the column of 'TOC top line'.</xref>
        </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_refpt-Chof-p_text_emph-LxAdv-p_ref.anchor.dita">2016-07-27 - refpt child of p/text/emph to p/ref:anchor id-CCCC-10457: Added a note
              for handling of <u>text</u> which is comes under the <sourcexml>refpt</sourcexml> in
              source.</xref>
          </li>
        </ol>
      </p>
    </section>
    <section>
      <title>Seclaw 8.13 PROD</title>
      <p>2016-07-20
        <ol><li>
          <xref href="../../../Rosetta/DITA-CAN/CA10-Treatise_Textbook_Forms/CA10_dpsi-stream-doc.hierlev-heading-title.dita">2016-07-20 - docinfo:custom-metafield/@name="dpsi" id-CA10-14628: Deleted and updated some DPSI values inside
            the column TOC top line.</xref>
        </li>
        </ol>
      </p>
    </section>
    
    <section>
      <title>Seclaw 8.13 PROD</title>
      <p>2016-07-19
        <ol><li>
          <xref href="../../common_newest/Rosetta_refpt-Chof-p_text_emph-LxAdv-p_ref.anchor.dita">2016-07-18- Added mapping for xpath <sourcexml>p/text/emph/refpt</sourcexml> </xref>
        </li></ol>
      </p>
      <p>2016-06-20
      <ol>
        <li>
          <xref href="../../../Rosetta/DITA-CAN/CA10-Treatise_Textbook_Forms/CA10_level.dita">2016-06-17 - level id-CA10-14614: Updated target element mapping when source is
            not having <sourcexml>refpt</sourcexml> as a child of
            <sourcexml>leg:heading, leg:heading, leg:level, leg:level-vrnt, page, level</sourcexml> or other elements having
            <sourcexml>@subdoc="true"</sourcexml>and note for generation of
            <targetxml>ref:anchor</targetxml> based on
            <sourcexml>@subdoc="true"</sourcexml> value.</xref>
        </li>
      </ol>
      </p>
    </section>
    <section>
      <title> updates</title>
      <p>2016-04-28 - PS
        <ol>
          <li>
            <xref href="../../../Rosetta/DITA-CAN/CA10-Treatise_Textbook_Forms/CA10_Introduction.dita">2016-04-28 - Introduction id-CA10-14613: Added instruction for generation of attaribute 
              <targetxml>seclaw:seclaw[@seclawtype="commentary"]</targetxml>.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/DITA-CAN/CA10-Treatise_Textbook_Forms/Rosetta_remotelink-Chof-bodytext-LxAdv-p_text_ref.crossreference.dita">2016-04-28 - When remotelink is a child of bodytext id-CA10-14629: Created.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_refpt-Chof-p_text-LxAdv-p_ref.anchor.dita">2016-04-28 - refpt child of p/text to p/ref:anchor id-CCCC-10456: Added one more source and target example.</xref>
          </li>
        </ol></p>
    </section>
    
    <section>
      <title>8.11 PROD updates</title>
      <p>2016-04-22 - PS
      <ol>
        <li>
          <xref href="../../../Rosetta/DITA-CAN/CA10-Treatise_Textbook_Forms/CA10_dpsi-stream-doc.hierlev-heading-title.dita">2016-04-22 - docinfo:custom-metafield/@name="dpsi" id-CA10-14628: Created.</xref>
        </li>
      </ol></p>
    </section>
    
    <section>
      <title>8.11 PROD updates</title>
      <p>2016-04-21 - MCJ</p>
      <ol>
        <li>
          <xref href="../../../Rosetta/DITA-CAN/CA10-Treatise_Textbook_Forms/CA10_frmprompt.dita">2016-04-20 - frm:prompt id-CA10-14624: Added instructions for treating <sourcexml>h/frm:prompt</sourcexml> as a pass-through element.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/DITA-CAN/CA10-Treatise_Textbook_Forms/CA10_form.dita">2016-04-14 - form id-CA10-14623: Updated instructions for how <sourcexml>frm:bracein/p/text/@align</sourcexml> affects the mapping of <sourcexml>frm:bracein/p</sourcexml> to <targetxml>form:bracein/form:line</targetxml>.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/DITA-CAN/CA10-Treatise_Textbook_Forms/CA10_form.dita">2016-04-12 - form id-CA10-14623: Corrected instructions for mapping <sourcexml>frm:body</sourcexml> to <targetxml>form:document/form:bodytext</targetxml>.</xref>
        </li>
      </ol>
    </section>
    <section>
      <title>8.11 PROD</title>
      <p>2016-04-05 - MCJ</p>
      <ol>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_frac-LxAdv-num_frac.dita">2016-04-01 - frac to num/frac id-CCCC-10327: Added instructions for mapping <sourcexml>frac</sourcexml> to <targetxml>num/frac</targetxml>.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_strike-LxAdv-strike.dita">2016-04-01 - 
            strike to strike id-CCCC-10471: Added instructions for mapping <sourcexml>strike</sourcexml> to <targetxml>strike</targetxml>.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_note-LxAdv-note.dita">2016-04-01 - note to note id-CCCC-10405: Added instructions for mapping <sourcexml>note</sourcexml> to <targetxml>note</targetxml>.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_CA_emp-Chof-heading_title-LxAdv-heading_title.dita">2016-04-01 - heading/title/emph[@typestyle="bf"] to heading/title id-CCCC-10495: Added statement to clarify that children of emph should be processed.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/DITA-CAN/CA10-Treatise_Textbook_Forms/CA10_Introduction.dita">2016-04-01 - Introduction id-CA10-14613: Updated schema version to
            8.11 PROD.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_emph-LxAdv-emph.dita">2016-04-01 - emph to emph id-CCCC-10316: Added statement to clarify that children of emph should be processed.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_CA_emp-Chof-heading_title-LxAdv-heading_title.dita">2016-04-01 - heading/title/emph[@typestyle="bf"] to heading/title id-CCCC-10495: Corrected xpath to use predicate condition for attribute.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_l-LxAdv-list.dita">2016-04-01 - l to list id-CCCC-10372: Added mapping instruction for handling h within listitem.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/DITA-CAN/CA10-Treatise_Textbook_Forms/CA10_form.dita">2016-03-30 - form id-CA10-14623: Added instructions for mapping <sourcexml>form</sourcexml> to <targetxml>form:form</targetxml>.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/DITA-CAN/CA10-Treatise_Textbook_Forms/CA10_h.dita">2016-03-30 - h id-CA10-14625: Added instructions for mapping <sourcexml>h</sourcexml> to <targetxml>base:h</targetxml>.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/DITA-CAN/CA10-Treatise_Textbook_Forms/CA10_frmprompt.dita">2016-03-23 - frm:prompt id-CA10-14624: Added instructions for mapping <sourcexml>frm:prompt</sourcexml> to <targetxml>form:prompt</targetxml>.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2016-03-23 - ci.cite to lnci.cite id-CCCC-10268: Updated main instructions to clarify that descendants of ci:cite, and not just children, are to be processed.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/DITA-CAN/CA10-Treatise_Textbook_Forms/CA10_note-level.dita">2016-03-22 - note as direct child of level id-CA10-14626: Added instructions for handling <sourcexml>note</sourcexml> when it occurs as a direct child of <sourcexml>level</sourcexml>.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/DITA-CAN/CA10-Treatise_Textbook_Forms/CA10_address.dita">2016-03-22 - address id-CA10-14622: Added instructions for mapping <sourcexml>address</sourcexml> to <targetxml>location:address</targetxml>.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_footnote-LxAdv-footnote.dita">2016-02-29 - footnotegrp and footnote to footnotegrp and footnote id-CCCC-10322: Added note for handling
            <sourcexml>@type="editorial"</sourcexml> attribute. Applicable for UK22CS,
            RFA# 2762</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2016-02-05 - remotelink to ref:crossreference id-CCCC-10465: Added note and example when
            <sourcexml>remotelink</sourcexml> is a child of <sourcexml>emph</sourcexml>. Applicable
            on NZ17CC, Webstar: 319232 and 318735.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_footnote-LxAdv-footnote.dita">2016-01-05 - footnotegrp and footnote to footnotegrp and footnote id-CCCC-10322: Added instructions for
            <sourcexml>footnotegrp</sourcexml> within <sourcexml>frm:div</sourcexml>. To generate
            <targetxml>form:p/form:text</targetxml> wrapper for target
            <targetxml>footnotegroup</targetxml>. Immediately affects UK12 but will
            apply to any stream if the use case occurs. RFA 2653.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.doc-heading-LxAdv-dc.title.dita">2015-12-04 - docinfo:doc-heading to dc:title id-CCCC-10292: Added exception for AU Legislative Citator to 
            drop text Overview Tab for  from conversion.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_inlineobject-LxAdv-ref.inlineobject.dita">2015-11-16 - inlineobject to ref:inlineobject id-CCCC-10369: Added instruction for <sourcexml>inlineobject/@key</sourcexml> 
            to be suppressed.</xref>
        </li>
      </ol>
    </section>
    <section><title>8.7 PROD</title>
      <p>2015-11-12 - SP</p><ul>
            <li>
               <xref href="../../../Rosetta/common_newest/note_empty_lilabel_not_supp.dita">2015-11-12 - Empty lilabel not suppressed id-CCCC-10525: Updated this section to convert into non breaking space entity. Affects CA09 and CA10. Webteams 304328, 315536. </xref>
            </li>
            <li>
               <xref href="../../../Rosetta/common_newest/Rosetta_link-LxAdv-ref.lnlink.dita">2015-09-08 - link to ref:lnlink[@service="ATTACHMENT"] id-CCCC-10394: Minor XPATH correction in title to change 
                <targetxml>ref:lnlink/@service="ATTACHMENT"</targetxml> to be 
                <targetxml>ref:lnlink[@service="ATTACHMENT"]</targetxml>.</xref>
            </li>
            <li>
               <xref href="../../../Rosetta/common_newest/Rosetta_lnlink_service_ATTACHMENT-LxAdv-ref.lnlink.dita">2015-09-08 - lnlink[@service="ATTACHMENT"] to ref:lnlink[@service="ATTACHMENT"] id-CCCC-10396: Minor XPATH correction in instruction title and body to change 
        <sourcexml>lnlink/@service="ATTACHMENT"</sourcexml> to be <sourcexml>lnlink[@service="ATTACHMENT"]</sourcexml>, 
        <targetxml>ref:lnlink</targetxml> to be <targetxml>ref:lnlink[@service="ATTACHMENT"]</targetxml>, and 
        <targetxml>ref:lnlink/@service="ATTACHMENT"</targetxml> to be <targetxml>ref:lnlink[@service="ATTACHMENT"]</targetxml>.</xref>
            </li>
            <li>
               <xref href="../../../Rosetta/common_newest/Rosetta_CAN_docinfo.custom-metafields-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta.meta.metaitem.dita">2015-07-29 - docinfo:custom-metafields to doc:legacy-metadata[@metadatasource="lbu-meta"]/meta/metaitem id-CCCC-10251: Update  
					<targetxml>metaitem[@name="effect-date"]/value</targetxml> in the example to have a 
					real date, "19950505", instead of all zeroes, "00000000". R4.5 Canada CR458.</xref>
            </li>
            <li>
               <xref href="../../../Rosetta/common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2015-06-24 - remotelink to ref:crossreference id-CCCC-10465: Added clarification note about url, @normval, and @hrefclass. Webstar 302055.</xref>
            </li>
            <li>
               <xref href="../../../Rosetta/common_newest/Rosetta_link-LxAdv-ref.lnlink.dita">2015-05-22 - link to ref:lnlink[@service="ATTACHMENT"] id-CCCC-10394: Changed the instructions to indicate <sourcexml>link/@status</sourcexml> is always dropped and removed <targetxml>ref:lnlink/@status</targetxml> from target example. This is a very low-priority change and has been added for technical correctness, particularly with respect to new CIs. Existing scripts do not have to implement this change since <targetxml>ref:lnlink/@status</targetxml> is ignored by LexisAdvance if it is present.</xref>
            </li>
            <li>
               <xref href="../../../Rosetta/common_newest/Rosetta_lnlink_service_ATTACHMENT-LxAdv-ref.lnlink.dita">2015-05-22 - lnlink[@service="ATTACHMENT"] to ref:lnlink[@service="ATTACHMENT"] id-CCCC-10396: Added an instruction to explicitly indicate <sourcexml>lnlink/@status</sourcexml> is always dropped (suppressed). This is a very low-priority change and has been added for technical correctness, particularly with respect to new CIs. Existing scripts do not have to implement this change unless needed since prior to the change <targetxml>lnlink/@status</targetxml> handling was not explicitly specified.</xref>
            </li>
            <li>
               <xref href="../../../Rosetta/common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2015-05-22 - remotelink to ref:crossreference id-CCCC-10465: Added an instruction to explicitly indicate <sourcexml>remotelink/@status</sourcexml> is always dropped (suppressed). This is a very low-priority change and has been added for technical correctness, particularly with respect to new CIs. Existing scripts do not have to implement this change unless needed since prior to the change <targetxml>remotelink/@status</targetxml> handling was not explicitly specified.</xref>
            </li>
            <li>
               <xref href="../../../Rosetta/common_newest/Rosetta_remotelink-self-inter-document-link-LxAdv-intra-document-link.dita">2015-05-22 - remotelink (self inter-document link) to ref:lnlink (intra-document link) id-CCCC-10468: Added an instruction to explicitly indicate <sourcexml>remotelink/@status</sourcexml> is always dropped (suppressed). This is a very low-priority change and has been added for technical correctness, particularly with respect to new CIs. Existing scripts do not have to implement this change unless needed since prior to the change <targetxml>remotelink/@status</targetxml> handling was not explicitly specified.</xref>
            </li>
            <li>
               <xref href="../../../Rosetta/common_newest/Rosetta_footnote-LxAdv-footnote.dita">2015-05-14 - footnotegrp and footnote to footnotegrp and footnote id-CCCC-10322: Added instructions for
                        <sourcexml>footnotegrp</sourcexml> within <sourcexml>frm:body</sourcexml>
                    and <sourcexml>clause</sourcexml>. To generate
                        <targetxml>form:p/form:text</targetxml> wrapper for target
                        <targetxml>footnotegroup</targetxml>. Immediately affects UK12 but will
                    apply to any stream if the use case occurs. R4.5 Content Issues 2316 and
                    2317.</xref>
            </li>
            <li>
               <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.doc-heading-LxAdv-dc.title.dita">2015-05-05 - docinfo:doc-heading to dc:title id-CCCC-10292: Added note to convert (TM), (R), and (MC) to
                    unicode code points. DB # 45. Applicable to CA14.</xref>
            </li>
            <li>
               <xref href="../../../Rosetta/common_newest/Rosetta_docinfo-LxAdv-doc.metadata_doc.docinfo.dita">2015-04-14 - docinfo to doc:metadata/doc:docinfo id-CCCC-10282: Remove bullet icon in sub nested list for
                    handling Indentation isssue.</xref>
            </li>
      </ul></section>
    <section><title>8.3 PROD</title>
      <p>2015-03-25 - JM</p><ul>
        <li>
          <xref href="../../../Rosetta/DITA-CAN/CA10-Treatise_Textbook_Forms/document.highlights-to-doc.overview.dita">2015-03-25 - Document Highlights become doc:overview id-CA10-14621: Provide
            clarifications for text() PCDATA descendants and multiple child elements. Phase 6 RFA
            #157.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/DITA-CAN/CA10-Treatise_Textbook_Forms/document.highlights-to-doc.overview.dita">2015-03-24 - Document Highlights become doc:overview id-CA10-14621: Updated target
            XPATH to include <targetxml>bodytext/p/text</targetxml>. R4.5 RFA #2220.</xref>
        </li>
      </ul></section>
    <section><title>8.3 PROD</title>
      <p>2015-03-20 - JM</p><ul>
        <li>
          <xref href="../../../Rosetta/DITA-CAN/CA10-Treatise_Textbook_Forms/CA10_Introduction.dita">2015-03-20 - Introduction id-CA10-14613: Updated schema version to 8.3 PROD.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/DITA-CAN/CA10-Treatise_Textbook_Forms/document.highlights-to-doc.overview.dita">2015-03-12 - Document Highlights become doc:overview id-CA10-14621: Created. R4.5 RFA
            #2220.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2015-01-09 - remotelink to ref:crossreference id-CCCC-10465: For the two use cases
            associated with url (target <targetxml>url</targetxml> or
              <targetxml>ref:lnlink</targetxml>): Added exceptional rule to not concatenate values
            when <sourcexml>@hrefclass</sourcexml> content is already present in
              <sourcexml>@href</sourcexml>. Expanded examples 5 and 7 to illustrate the scenario.
            Responds to data for UK10 Dictionaries but applies in general. R4.5 Content Issue
            2120.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2014-12-08 - ci.cite to lnci.cite id-CCCC-10268: Addition of mapping for
              <sourcexml>ci:pinpoint</sourcexml> to <targetxml>lnci:pinpoint</targetxml> and example
            from US LPA content.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_entry_p-limited-LxAdv-entry_p.dita">2014-11-11 - entry/p-limited to entry/p id-CCCC-10319: Updated instruction when
            multiple consecutive <sourcexml>p-limited</sourcexml> elements occur within
              <sourcexml>entry</sourcexml>.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_entry_p-limited-LxAdv-entry_p.dita">2014-10-28 - entry/p-limited to entry/p id-CCCC-10319: Added note to handle scenario
            when <sourcexml>l</sourcexml> is a child of
            <sourcexml>entry/p-limited</sourcexml>.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2014-10-27 - remotelink to ref:crossreference id-CCCC-10465: Minor. Within use case for
              <sourcexml>@service="DOC-ID"</sourcexml>, rule for
              <sourcexml>@remotekey1="REFPTID"</sourcexml> now also applies when
              <sourcexml>@remotekey1="REFPT"</sourcexml>. That is, the condition is expanded to
            include value <sourcexml>"REFPT"</sourcexml>; the mapping is unchanged. The value
              <sourcexml>"REFPT"</sourcexml> is new in Oct 2014 redelivery of UK11-DN but the rule
            applies to any stream where <sourcexml>@remotekey1="REFPT"</sourcexml> may occur. R4.5
            Content Issue 2003.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_lnlink_service_ATTACHMENT-LxAdv-ref.lnlink.dita">2014-10-15 - lnlink/@service="ATTACHMENT" to ref:lnlink id-CCCC-10396: Rewrote
            instructions, including the correction of a typographic error, and added an
            example.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_inlineobject-LxAdv-figure_ref.inlineobject.dita">2014-10-13 - inlineobject to figure/ref:inlineobject id-CCCC-10368: Added note and
            example to suppress <targetxml>proc:nl</targetxml> from before and after of
              <targetxml>figure/inlineobject</targetxml> when it comes inside
              <targetxml>verbatim</targetxml> element.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/DITA-CAN/CA10-Treatise_Textbook_Forms/CA10_ci.cite_cite4thisdoc.dita">2014-10-09 - ci:cite[@type="cite4thisdoc"] to
            ref:citations/ref:cite4thisresource/lnci:cite id-CA10-14609: Updated target example 2
            and 3, add <targetxml>citetype="reporter"</targetxml> value in
              <targetxml>ref:cite4thisresource</targetxml>.</xref>
        </li>
      </ul></section>
    <section>
      <title>8.1 PROD</title>
      <p>2014-10-07 <ul>
          <li>
            <xref href="../../../Rosetta/DITA-CAN/CA10-Treatise_Textbook_Forms/CA10_Introduction.dita">2014-10-07 - Introduction id-CA10-14613: Updated schema version to 8.1 PROD.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/DITA-CAN/CA10-Treatise_Textbook_Forms/CA10_ci.cite_cite4thisdoc.dita">2014-10-07 - ci:cite[@type="cite4thisdoc"] to
              ref:citations/ref:cite4thisresource/lnci:cite id-CA10-14609: Added
                <targetxml>@citetype="reporter"</targetxml> attribute in
                <targetxml>ref:cite4thisresource</targetxml>. Applicable to CA10.</xref>
          </li>
        </ul></p>
    </section>
    <section><title>7.13 PROD</title>
      <p>2014-08-13 - JM</p><ul>
        <li>
          <xref href="../../../Rosetta/DITA-CAN/CA10-Treatise_Textbook_Forms/CA10_Introduction.dita">2014-08-13 - Introduction id-CA10-14613: Updated schema version to 7.13 PROD.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/DITA-CAN/CA10-Treatise_Textbook_Forms/CA10_docinfo.custom-metafield-QLDBGRP-to-pubinfo.aggregationname.dita">2014-08-13 - docinfo:custom-metafield[@name="QLDBGRP"] to pubinfo:aggregationname
            id-CA10-14620: New rule. Maps new source data
              <sourcexml>docinfo:custom-metafield[@name="QLDBGRP"]</sourcexml> to new target
              <targetxml>pubinfo:aggregationname</targetxml>. Specific for CA10. R4.5 Content Issue
            1725.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_text-LxAdv-text.dita">2014-08-11 - text
            to text id-CCCC-10477: For CANADA Content Stream: Only move the <sourcexml>
              text@align</sourcexml> to the parent <targetxml>p</targetxml> if it is the only text
            in <sourcexml>p</sourcexml>, Otherwise, wrap the <sourcexml>text</sourcexml> with
              <targetxml>p</targetxml> and move the <sourcexml>@align</sourcexml> attribute to the
            newly created <targetxml> p</targetxml>.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_inlineobject-LxAdv-ref.inlineobject.dita">2014-07-08 - inlineobject to ref:inlineobject id-CCCC-10369: Not a rule change.
            Clarification added to note regarding suppression of <sourcexml>inlineobject</sourcexml>
            when <sourcexml>inlineobject/@filename</sourcexml> contains certain values.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_table-LxAdv-table.dita">2014-07-08 -
            table to table id-CCCC-10475: Updated instruction for added the following rarely
            occurring attributes <sourcexml>@char</sourcexml> inside the
              <sourcexml>entry</sourcexml>.</xref>
        </li>
      </ul></section>
    <section><title>7.11 PROD</title>
      <p>2014-06-06 - JM</p><ul>
        <li>
          <xref href="../../../Rosetta/DITA-CAN/CA10-Treatise_Textbook_Forms/CA10_Introduction.dita">2014-06-06 - Introduction id-CA10-14613: Updated schema version to 7.11 PROD.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/DITA-CAN/CA10-Treatise_Textbook_Forms/CA10_ci.cite_cite4thisdoc.dita">2014-06-06 - ci:cite[@type="cite4thisdoc"] to
            ref:citations/ref:cite4thisresource/lnci:cite id-CA10-14609: Added exceptional rule when
            source is "Halsbury's Laws of Canada". Do not append text to target
              <targetxml>lnci:content</targetxml>. R4.5 Content Issue 1617.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/DITA-CAN/CA10-Treatise_Textbook_Forms/CA10_Introduction.dita">2014-06-05 - Introduction id-CA10-14613: Note that the following module has been added
            to the emphasis (emph) rules in the General Markup section:
              <sourcexml>heading/title/emph/@typestyle="bf"</sourcexml> to
              <targetxml>heading/title</targetxml> (id-CCCC-10495). This is a common module for all
            Canada streams.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/DITA-CAN/CA10-Treatise_Textbook_Forms/CA10_Introduction.dita">2014-06-04 - Introduction id-CA10-14613: Note there is a minor administrative change
            for the <sourcexml>publication</sourcexml> module in the General Markup section. No
            change to rule. Original module was written for CA10 and is now replaced with common
            all-stream version. Module name now shows the common identifier id-CCCC-10438. No other
            impact.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/DITA-CAN/CA10-Treatise_Textbook_Forms/CA10_level.dita">2014-06-04 - level id-CA10-14614: Not a rule change. Not directly related to
              <sourcexml>level</sourcexml>. Target sample mistakenly showed bold emphasis as child
            of title. Now removed to reflect common rules for emph within title.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/DITA-CAN/CA10-Treatise_Textbook_Forms/CA10_defterm.dita">2014-06-04 - defterm id-CA10-14611: Not a rule change. Not directly related to
              <sourcexml>defterm</sourcexml>. Target sample mistakenly showed bold emphasis as child
            of title. Now removed to reflect common rules for emph within title.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_CA_emp-Chof-heading_title-LxAdv-heading_title.dita">2014-06-04 - heading/title/emph/@typestyle="bf" to heading/title id-CCCC-10495: Created
            this instruction specifically for all Canadian streams. (Response to discussion board
            issue #91 particularly concerning streams CA09, CA10, CA11, and CA12.)</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_table-LxAdv-table.dita">2014-06-04 -
            table to table id-CCCC-10475: For completeness, added instructions for the following
            rarely occurring attributes of <sourcexml>table/tgroup/colspec</sourcexml>:
              <sourcexml>@align</sourcexml>, <sourcexml>@char</sourcexml>,
              <sourcexml>@charoff</sourcexml>, <sourcexml>@colsep</sourcexml>,
              <sourcexml>@id</sourcexml>, <sourcexml>@rowsep</sourcexml>,
              <sourcexml>@searchtype</sourcexml>, and <sourcexml>@xml:lang</sourcexml>. This is in
            response to various minor questions on message boards that have been asked and answered
            over the past two years. These instructions should not trigger changes to existing
            conversion programs, as the programs have already been changed in response to previous
            message board answers. These instructions have been added so this topic is up-to-date
            with respect to current conversion program behavior for these rarely occuring
            attributes.</xref>
        </li>
      </ul>
    </section>
    <section><title>7.10 PROD</title>
      <p>2014-06-02 - JM</p><ul>
        <li>
          <xref href="../../../Rosetta/DITA-CAN/CA10-Treatise_Textbook_Forms/CA10_Introduction.dita">2014-06-02 - Introduction id-CA10-14613: Updated schema version to 7.10 PROD.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_footnote-LxAdv-footnote.dita">2014-06-02 - footnotegrp and footnote to footnotegrp and footnote id-CCCC-10322: Canada
            only. Added special rule to suppress indent from
              <sourcexml>footnote/fnbody/p[@indent]</sourcexml>. Applies immediately to all Canada
            streams. R4.5 Content Issue 1609.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/DITA-CAN/CA10-Treatise_Textbook_Forms/CA10_ci.cite_cite4thisdoc.dita">2014-05-29 - ci:cite[@type="cite4thisdoc"] to
            ref:citations/ref:cite4thisresource/lnci:cite id-CA10-14609: Expanded rule to include
            conversion of <sourcexml>ci:cite[@type="cite4thisdoc"]</sourcexml> and trailing text
            when <sourcexml>emph</sourcexml> wrapper not present. No change for target xpath.
            Phase-6 Board #116.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/DITA-CAN/CA10-Treatise_Textbook_Forms/CA10_contrib.dita">2014-05-28 - contrib id-CA10-14610: Added rule to suppress
              <sourcexml>contrib</sourcexml> when content is only "&amp;#160;" as already done when
            content is "&amp;nbsp;". Phase 6 Board Item 112.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_footnote-LxAdv-footnote.dita">2014-04-17 - footnotegrp and footnote to footnotegrp and footnote id-CCCC-10322: Added
            instruction for <sourcexml>footnotegrp</sourcexml> within
              <sourcexml>sigblock</sourcexml>. Specifies <targetxml>p/text</targetxml> wrapper for
            target <targetxml>sigblock/p/text/footnotegroup</targetxml>. Immediately affects UK12
            but will apply to any stream if the use case occurs. Phase 6 UK discussion items 76 and
            88.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_p-LxAdv-p.dita">2014-04-14 - p to p
            id-CCCC-10424: Removed Colons from Labels.. DB item #1255</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2014-02-25 - remotelink to ref:crossreference id-CCCC-10465: Updated instruction and
            created new example (#16) for handling
              <sourcexml>remotelink[@service="QUERY"]</sourcexml>. New instruction preserves pcdata
            but suppresses <sourcexml>remotelink</sourcexml> markup. Webstar #250335. Change applies
            immediately to all Pacific streams, and in the long run to all streams.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.doc-heading-LxAdv-dc.title.dita">2014-02-11 - docinfo:doc-heading to dc:title id-CCCC-10292: Updated note when
              <sourcexml>emph</sourcexml> is child of <sourcexml>docinfo:doc-heading</sourcexml>
            then suppress <sourcexml>emph</sourcexml> element and retain its content in
              <targetxml>dc:title</targetxml>, These instructions apply immediately to CA12.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2014-02-03 - remotelink to ref:crossreference id-CCCC-10465: Instruction updated if
              <sourcexml>remotelink</sourcexml> occurs as multiple, immediate siblings and without
            intermediary text within <sourcexml>title</sourcexml>. Also added a example for the same
            scenario. Phase 5 UK discussion-defect tracking issue #161</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_text-LxAdv-text.dita">2014-01-31 - text
            to text id-CCCC-10477: Updated instruction, <targetxml>align</targetxml> will be moved
            in <targetxml>p</targetxml> in NL conversion. NZ09 commentary discussion board issue for
            handling <sourcexml>text/@align</sourcexml>
          </xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_Elements-LxAdv-Empty_Elements.dita">2014-01-16 - Suppress each empty element unless otherwise stated id-CCCC-10310: Added
            list of elements to suppress if empty.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_footnote-LxAdv-footnote.dita">2014-01-06 - footnotegrp and footnote to footnotegrp and footnote id-CCCC-10322:
            Updated target example for applying the rule of "deleting extraneous instances of
            @morerows, @colsep and @rowsep" in sample documents.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_l-LxAdv-list.dita">2014-01-06 - l to
            list id-CCCC-10372: Added mapping instruction for nested lists.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_Topic_Identifiers.dita">2014--0-5- -
            Topic Identifiers id-CCCC-10481: Created.</xref>
        </li>
      </ul></section>
    <section><title>7.8 PROD</title>
      <p>2013-12-30 - JM</p>
      <ul>
        <li>
          <xref href="../../DITA-CAN/CA10-Treatise_Textbook_Forms/CA10_Introduction.dita">2013-12-30
            - Introduction: Updated schema version to 7.8 PROD.</xref>
        </li>
        <li>
          <xref href="../../DITA-CAN/CA10-Treatise_Textbook_Forms/CA10_ci.cite_cite4thisdoc.dita">2013-12-30 - ci:cite[@type="cite4thisdoc"] to
            ref:citations/ref:cite4thisresource/lnci:cite: Minor, not a rule change. Fixed target
            sample. Mistakenly showed <sourcexml>@type="cite4thisdoc"</sourcexml> retained. Now
            removed from target as per usual rules; and clarified in narrative. Conversion already
            correctly suppresses, no coding change required. Discussion Board Item 74.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2013-12-30 - ci.cite
            to lnci.cite: Minor illustrative change. Added "(AU Journals/Newsitem)" to headings for
            last example to clarify that retention of <sourcexml>@type="cite4thisdoc"</sourcexml> is
            an exception for that content, as already described in narrative rules.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_endnote-LxAdv-endnote.dita">2013-12-18 - endnote
            to endnote: Instruction added to convert <sourcexml>remotelink/@refpt</sourcexml> to
              <targetxml>footnote-ref/@anchoridref</targetxml>. WebTeam #5158742 - AU04. Applies
            generally to all LBUs and streams.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_docinfo.alt-renditions-LxAdv-doc.alt-renditions.dita">2013-12-17 - docinfo:alt-renditions/docinfo:alt-rendition to
            doc:alt-renditions/doc:alt-rendition: Added instruction and example for
              <sourcexml>docinfo:alt-rendition/lnlink</sourcexml>. (Webteam #247307)</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_CAN_docinfo.custom-metafields-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta.meta.metaitem.dita">2013-12-04 - docinfo:custom-metafields to
            doc:legacy-metadata[@metadatasource="lbu-meta"]/meta/metaitem: Updated target example
            for retaining "date" and "court" in target example.</xref>
        </li>
        <li>
          <xref href="../../DITA-CAN/CA10-Treatise_Textbook_Forms/CA10_ci.cite_cite4thisdoc.dita">2013-10-24 - ci:cite[@type="cite4thisdoc"] to
            ref:citations/ref:cite4thisresource/lnci:cite: Minor change. Clarified that rule to
            suppress <sourcexml>emph</sourcexml> also applies to nested <sourcexml>emph</sourcexml>.
            Discussion Board Item 71.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-10-23 - remotelink to ref:crossreference: Added Example when
              <sourcexml>remotelink</sourcexml> having child <sourcexml>emph</sourcexml>. Webteam #
            239816</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_docinfo.doc-heading-LxAdv-dc.title.dita">2013-10-18 - docinfo:doc-heading to dc:title: Updated Instruction when
              <sourcexml>docinfo:doc-heading</sourcexml> contains word RULE: " or STATUTE: .</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_Elements-LxAdv-Empty_Elements.dita">2013-10-14 -
            Suppress each empty element unless otherwise stated: Changed antecedent to singular to
            match instructions.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_p-LxAdv-p.dita">2013-10-09 - p to p: Added
            instruction and example <sourcexml>p</sourcexml> comes with
              <sourcexml>@nl=”0”</sourcexml>.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_endnote-LxAdv-endnote.dita">2013-10-07 - endnote
            to endnote: Instruction and example for added for the Xpath
              <sourcexml>leg:bodytext/glp:note/l/li</sourcexml> related to
              <targetxml>endnote</targetxml> handling. WebTeam # is 238790.</xref>
        </li>
      </ul></section>
    <section>
      <title>7.4 PROD</title>
      <p>2013-10-04 - SP</p>
      <ul>
        <li>
          <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-10-03 - remotelink to ref:crossreference: Added use case where remotelink contains
            @href which is a URL but does not contain @hrefclass='http'.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_footnote-LxAdv-footnote.dita">2013-10-02 -
            footnotegrp and footnote to footnotegrp and footnote: Not a rule change. Cleaned up the
            note regarding the scenario when footnote/@fntoken has a value of "0" in an attempt to
            make the directions clearer.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_link-LxAdv-ref.lnlink.dita">2013-09-24 - link to
            ref:lnlink/@service="ATTACHMENT": Not a rule change. Modified examples to illustrate
            when <sourcexml>@status</sourcexml> suppressed and when retained.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_table-LxAdv-table.dita">2013-09-16 - table to
            table: Removed an obsolete note regarding visual styling of tables.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_table-LxAdv-table.dita">2013-09-12 - table to
            table: WebTeam #s 235116, 235130, 235126: Added instructions for deleting extraneous
            instances of @morerows, @colsep and @rowsep. These instructions apply immediately to all
            UK streams and also to AU18.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_title-LxAdv-title.dita">2013-09-03 - title to
            title: Updated Instruction when <sourcexml>title</sourcexml> contains word "TITLE: " or
            "NAME: " or "SITE: ".</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_docinfo.doc-heading-LxAdv-dc.title.dita">2013-09-03 - docinfo:doc-heading to dc:title: Updated Instruction when
              <sourcexml>docinfo:doc-heading</sourcexml> contains word "TITLE: " or NAME: or SITE:
            or SUBJECT:.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_footnote-LxAdv-footnote.dita">2013-08-22 -
            footnotegrp and footnote to footnotegrp and footnote: Not a rule change. Second target
            sample modified to remove attribute <targetxml>lnci:cite[@citeref]</targetxml> because
            value captured in descendant
              <targetxml>ref:crossreference/ref:locator[@anchoridref]</targetxml>.
            Ancillary/illustrative within this module. Change made to promote uniformity across
            samples.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-08-22 - remotelink to ref:crossreference: Not a rule change. Modified Sample #10
            on <sourcexml>ci:cite/ci:content/remotelink</sourcexml>. Removed target attribute
              <targetxml>lnci:cite[@citeref]</targetxml> because value captured in
              <targetxml>ref:crossreference/ref:locator[@anchoridref]</targetxml>.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_link-LxAdv-ref.lnlink.dita">2013-08-21 - link to
            ref:lnlink/@service="ATTACHMENT": Added instruction for when to suppress
              <sourcexml>@status</sourcexml>.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_remotelink-self-inter-document-link-LxAdv-intra-document-link.dita">2013-08-12 - remotelink (self inter-document link) to ref:lnlink (intra-document link):
            Changed module heading from ref:crossreference to ref:lnlink. NO instructions are
            changed. WebTeam # 230229. Affects all streams.</xref>
        </li>
      </ul>
    </section>
    <section>
      <title>7.3 PROD</title>
      <p>2013-08-09 - RAJ</p>
      <ul>
        <li>
          <xref href="../../common_newest/Rosetta_docinfo-LxAdv-doc.metadata_doc.docinfo.dita">2013-08-09 - docinfo to doc:metadata/doc:docinfo: Added instruction for creating
              <targetxml>dc:date[@lnmeta:datetype="conversion-date"]</targetxml>.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_XML_Character_Entities-LxAdv-Unicode.dita">2013-08-08 - XML Character Entities to Unicode code points: This change does not
            represent a change to conversion but rather documentation of the existing
            behavior.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_remotelink-self-inter-document-link-LxAdv-intra-document-link.dita">2013-08-07 - remotelink (self inter-document link) to ref:crossreference
            (intra-document link): Changed target to <targetxml>ref:lnlink</targetxml>; formerly
              <targetxml>ref:crossreference</targetxml>. Changed because the only supported markup
            for intradoc linking is <targetxml>ref:lnlink</targetxml>, as per Bency Thomas. WebTeam
            # 230229. Affects all streams.</xref>
        </li>
        <li>
          <xref href="../../DITA-CAN/CA10-Treatise_Textbook_Forms/CA10_Introduction.dita">2013-08-06
            - Introduction: Added rules for setting the value of
              <targetxml>seclaw:seclaw[@seclawtype]</targetxml>.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_CAN_docinfo.custom-metafields-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta.meta.metaitem.dita">2013-08-01 - docinfo:custom-metafields to
            doc:legacy-metadata[@metadatasource="lbu-meta"]/meta/metaitem: Updated target example
            for retaining "JURIS-SORT", "COURT-SORT" and "TERM-SORT" in target example.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_docinfo.doc-heading-LxAdv-dc.title.dita">2013-08-01 - docinfo:doc-heading to dc:title: For Canada Content streams: Added a note
            and examples, when <sourcexml>docinfo:doc-heading</sourcexml> contains
              <sourcexml>nl</sourcexml> as a child element.</xref>
        </li>
      </ul>
    </section>
    <section>
      <title>7.3 PROD</title>
      <p>2013-07-31 - RAJ</p>
      <ul>
        <li>
          <xref href="../../common_newest/Rosetta_inlineobject-LxAdv-ref.inlineobject.dita">2013-07-31 - Added base module for converting
            <sourcexml>inlineobject</sourcexml>.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_title-LxAdv-title.dita">2013-07-30 - title to
            title: Updated Instruction when <sourcexml>title</sourcexml> contains word "TITLE: " or
            "NAME: ".</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_docinfo.doc-heading-LxAdv-dc.title.dita">2013-07-30 - docinfo:doc-heading to dc:title: Added Instruction when
              <sourcexml>docinfo:doc-heading</sourcexml> contains word "TITLE: " or NAME: .</xref>
        </li>
      </ul>
    </section>
    <section>
      <title>7.3 PROD</title>
      <p>2013-07-22 - RAJ</p>
      <ul>
        <li>
          <xref href="../../common_newest/Rosetta_l_virtual-nesting-LxAdv-list.dita">2013-07-22 -
            Added module covering l/@virtual-nesting.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_docinfo-LxAdv-doc.metadata_doc.docinfo.dita">2013-07-18 - docinfo to doc:metadata/doc:docinfo: Added
              <sourcexml>@excludefromalerts</sourcexml> as one of the <sourcexml>docinfo</sourcexml>
            attributes to carry through</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_identifier-LxAdv-ID_data_type-HandlingPatternRestrictions.dita">2013-07-17 - Identifiers to ID Data Type - Handling Pattern Restrictions: Added
            instructions for handling leading/trailing space(s) and XML entities.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_docinfo.doc-lang-and-doc-country-LxAdv-ROOT_xml.lang.dita">2013-07-16 - docinfo:doc-lang and docinfo:doc-country to @xml:lang and @xml:ID:
            Instruction narrative edited for language; no changes to mappings, no impact to
            stylesheets.</xref>
        </li>
      </ul>
    </section>
    <section>
      <title>7.3 PROD</title>
      <p>2013-07-10 - RAJ</p>
      <ul>
        <li>
          <xref href="../../common_newest/Rosetta_identifier-LxAdv-ID_data_type-HandlingPatternRestrictions.dita">2013-07-10 - Identifiers to ID Data Type - Handling Pattern Restrictions: Added
            instruction to replace space with underscore.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_glp.note-Chof-level_heading_title-LxAdv-seclaw.level_seclaw.prelim_note.dita">2013-07-08 - glp:note Child of level/heading/title: Created.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_title-LxAdv-title.dita">2013-07-05 - title to
            title: Added Instruction when <sourcexml>title</sourcexml> contains word "TITLE:
            ".</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_CAN_docinfo.custom-metafields-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta.meta.metaitem.dita">2013-06-04 - docinfo:custom-metafields to
            doc:legacy-metadata[@metadatasource="lbu-meta"]/meta/metaitem: Consolidated narrative
            and examples for clarity.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-06-03 - remotelink to ref:crossreference: Updated the Target XML 2 by removing the
              <targetxml>@crossreferencetype</targetxml> for Canada example.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_CAN_docinfo.custom-metafields-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta.meta.metaitem.dita">2013-05-24 - docinfo:custom-metafields to
            doc:legacy-metadata[@metadatasource="lbu-meta"]/meta/metaitem: Instruction and example
            added for handling of
              <sourcexml>docinfo:custom-metafield/@name="pageestimate"</sourcexml>.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_inlineobject-LxAdv-figure_ref.inlineobject.dita">2013-05-24 - inlineobject to figure/ref:inlineobject: Updated target example, "when smi
            is present".</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_link-LxAdv-ref.lnlink.dita">2013-05-24 - link to
            ref:lnlink/@service="ATTACHMENT": Updated instruction for handling of link when smi is
            present and some of the verbiage is changed.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_CAN_docinfo.custom-metafields-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta.meta.metaitem.dita">2013-05-20 - docinfo:custom-metafields to
            doc:legacy-metadata[@metadatasource="lbu-meta"]/meta/metaitem: Removed Canada content
            stream codes from instruction since its a Canada specific rule and will be applicable to
            all the content streams.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_docinfo-LxAdv-doc.metadata_doc.docinfo.dita">2013-05-16 - docinfo to doc:metadata/doc:docinfo: Fixed typo updating urn:contentitem
            to urn:contentItem</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_CAN_docinfo.custom-metafields-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta.meta.metaitem.dita">2013-05-13 - docinfo:custom-metafields to
            doc:legacy-metadata[@metadatasource="lbu-meta"]/meta/metaitem: Example added for
            handling of <sourcexml>docinfo:custom-metafields/@name="reg-no"</sourcexml>.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_blockquote-LxAdv-blockquote.dita">2013-05-08 -
            blockquote to blockquote: Extended the list of allowable values for image
            handling.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_inlineobject-LxAdv-figure_ref.inlineobject.dita">2013-05-08 - inlineobject to figure/ref:inlineobject: Extended the list of allowable
            values for image handling.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-05-08 - remotelink to ref:crossreference: Extended the list of allowable values
            for image handling.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_inlineobject-LxAdv-figure_ref.inlineobject.dita">2013-05-02 - inlineobject to figure/ref:inlineobject: Updated target example to if the
            SMI is present then a <targetxml>ref:inliineobject/@status</targetxml> attribute is set
            to “valid”.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_link-LxAdv-ref.lnlink.dita">2013-05-02 - link to
            ref:lnlink/@service="ATTACHMENT": Some of the verbiage is changed and updated target
            example to if the SMI is present then a <targetxml>ref:lnlink/@status</targetxml>
            attribute is set to “valid”.</xref>
        </li>
      </ul>
    </section>
    <section>
      <title>6.2 PROD</title>
      <p>2013-05-01 - RAJ</p>
      <ul><li>Initial Release</li></ul>
      <!-- McNally Apr 1 2016. changed "Initial Release" markup from p to ul/li, part of cross-stream changelog cleanup -->
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA10-Treatise_Textbook_Forms\change-log.dita  -->
	<!--<xsl:message>CA10-Treatise_Textbook_Forms_change-log.xsl requires manual development!</xsl:message> -->

</xsl:stylesheet>