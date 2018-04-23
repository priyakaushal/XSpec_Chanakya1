<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
   version="2.0">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="dictionary-change-log">
  <title>Change Log for UK10 Dictionary</title>
  <body>
    <section>
      <title>PROD 2.5</title>
      <p>2016-11-17</p>
      <ul>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_inlineobject-LxAdv-ref.inlineobject_BLOBSTORE.dita">2016-11-07 - inlineobject to ref:inlineobject for BLOBSTORE images id-CCCC-10540: Updated the instruction for ref:key-name and
            proc:param attribute values.</xref>
        </li>
      </ul>
    </section>
    <section>
      <title>PROD 2.5</title>
      <p>2016-10-31</p>
      <ul>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_inlineobject-LxAdv-ref.inlineobject_BLOBSTORE.dita">2016-10-21 - inlineobject to ref:inlineobject for BLOBSTORE images id-CCCC-10540: Changed one proc:param name for target. Formerly
            <targetxml>@name="attachment-server"</targetxml>; changed to
            <targetxml>@name="object-server"</targetxml>.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.versioninfo-LxAdv-doc.versioninfo-scheme.dita">2016-10-17 - docinfo:versioninfo to doc:versioninfo id-CCCC-10307: Updated the instruction for handling the
            target attribute <targetxml>@normdate</targetxml>.
            [Webstar#6676189]</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_edpnum-LxAdv-desig.dita">2016-10-12 - edpnum to desig id-CCCC-10308: Added rule for handling scenario when
            <sourcexml>pnum</sourcexml> and <sourcexml>edpnum </sourcexml> occur as
            siblings (applicable for UK22CS and UK06).</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_UK_docinfo.custom-metafields-LxAdv-dc.date_or_doc.docinfo_classify.classification.dita">2016-10-04 - (UK) docinfo:custom-metafield to dc:date or doc:metadata/doc:docinfo/classify:classification[@classscheme="uk-functional-information"] id-CCCC-10547: Added rule for "word-toc"; and updated the example.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.versioninfo-LxAdv-doc.versioninfo-scheme.dita">2016-09-14 - docinfo:versioninfo to doc:versioninfo id-CCCC-10307: Note added for handling the input markup '<targetxml>docinfo:versioninfo@startdate-tbd</targetxml>'.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_UK_docinfo.custom-metafields-LxAdv-dc.date_or_doc.docinfo_classify.classification.dita">2016-09-08 - (UK) docinfo:custom-metafield to dc:date or doc:metadata/doc:docinfo/classify:classification[@classscheme="uk-functional-information"] id-CCCC-10547: Added rule for attribute
            <sourcexml>@name</sourcexml> with value "containsAppealTracker"; and
            updated the example.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.versioninfo-LxAdv-doc.versioninfo-scheme.dita">2016-09-02 - docinfo:versioninfo to doc:versioninfo id-CCCC-10307: Special Rule for added
            <targetxml>@normdate</targetxml> attribute inside the
            <targetxml>doc:startdate</targetxml> and
            <targetxml>doc:enddate</targetxml>.</xref>
        </li>
      </ul>
    </section>
    <section><title>PROD 2.5</title><p>2016-08-03</p><ul>
      <li>
        <xref href="../../../Rosetta/common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2016-08-03 - remotelink to ref:crossreference id-CCCC-10465: Added Note about xml
          snippets that illustrate image handling. Note summarizes move from Apollo to
          Blobstore application. UK is first LBU to move to Blobstore.</xref>
      </li>
      <li>
        <xref href="../../../Rosetta/common_newest/Rosetta_blockquote-LxAdv-blockquote.dita">2016-07-29 - blockquote to blockquote id-CCCC-10247: Added Note about xml
          snippets that illustrate image handling. Note summarizes move from Apollo to
          Blobstore application. UK is first LBU to move to Blobstore. VSTS 76146</xref>
      </li>
      <li>
        <xref href="../../../Rosetta/common_newest/Rosetta_inlineobject-LxAdv-figure_ref.inlineobject.dita">2016-07-29 - inlineobject to figure/ref:inlineobject id-CCCC-10368: Added Note
          about xml snippets that illustrate image handling. Note summarizes move from
          Apollo to Blobstore application. UK is first LBU to move to Blobstore.</xref>
      </li>
      <li>
        <xref href="../../../Rosetta/common_newest/Rosetta_UK_docinfo.custom-metafields-LxAdv-dc.date_or_doc.docinfo_classify.classification.dita">2016-07-26 - (UK) docinfo:custom-metafield to dc:date or
          doc:metadata/doc:docinfo/classify:classification[@classscheme="uk-functional-information"]
          id-CCCC-10547: Added rule for "resultType"; and updated the example.</xref>
      </li>
      <li>
        <xref href="../../../Rosetta/common_newest/Rosetta_UK_docinfo.custom-metafields-LxAdv-dc.date_or_doc.docinfo_classify.classification.dita">2016-07-13 - (UK) docinfo:custom-metafield to dc:date or
          doc:metadata/doc:docinfo/classify:classification[@classscheme="uk-functional-information"]
          id-CCCC-10547: Added rules for "createdDate", "updatedDate", and
          "inEditorialReview"; and updated the example.</xref>
      </li>
      <li>
        <xref href="../../../Rosetta/common_newest/Rosetta_UK_docinfo-LxAdv-doc.docinfo_classify.classification.dita">2016-06-17 - (UK) docinfo to
          doc:metadata/doc:docinfo/classify:classification[@classscheme="uk-functional-information"]
          id-CCCC-10546: Created. New rules.</xref>
      </li>
      <li>
        <xref href="../../../Rosetta/common_newest/Rosetta_UK_docinfo.custom-metafields-LxAdv-dc.date_or_doc.docinfo_classify.classification.dita">2016-06-17 - (UK) docinfo:custom-metafield to dc:date or
          doc:metadata/doc:docinfo/classify:classification[@classscheme="uk-functional-information"]
          id-CCCC-10547: Created. New rules.</xref>
      </li>
      <li>
        <xref href="../../../Rosetta/common_newest/Rosetta_inlineobject-LxAdv-ref.inlineobject_BLOBSTORE.dita">2016-05-20 - inlineobject to ref:inlineobject for BLOBSTORE images id-CCCC-10540:
          Created this instruction to specify Blobstore specific output parameters.</xref>
      </li></ul></section>
    <section>
      <title>PROD 2.5</title>
      <p>2016-04-15 - JM</p><ul>
        <li>
          <xref href="../../../Rosetta/DITA-UK/UK10_Dictionary/dictionary-Body.dita">2016-04-15
            - Body id-UK10-29218: Minor. At rule for <sourcexml>dict:topicname</sourcexml> to
            <targetxml>tei:usg[@type]</targetxml>. For <targetxml>@type</targetxml> value,
            added statement to suppress characters not allowed in Name datatype, e.g. suppress
            apostrophe. No change to target xpath. Responds to question from Conversion
            Engineering.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_emph-LxAdv-emph.dita">2016-04-01 -
            emph to emph id-CCCC-10316: Added statement to clarify that children of emph
            should be processed.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_l-LxAdv-list.dita">2016-04-01 - l
            to list id-CCCC-10372: Added mapping instruction for handling h within
            listitem.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_inlineobject-LxAdv-ref.inlineobject.dita">2015-11-16 - inlineobject to ref:inlineobject id-CCCC-10369: Added instruction
            for <sourcexml>inlineobject/@key</sourcexml> to be suppressed.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2015-06-24 - remotelink to ref:crossreference id-CCCC-10465: Added clarification
            note about url, @normval, and @hrefclass. Webstar 302055.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2015-05-22 - remotelink to ref:crossreference id-CCCC-10465: Added an instruction
            to explicitly indicate <sourcexml>remotelink/@status</sourcexml> is always dropped
            (suppressed). This is a very low-priority change and has been added for technical
            correctness, particularly with respect to new CIs. Existing scripts do not have to
            implement this change unless needed since prior to the change
            <targetxml>remotelink/@status</targetxml> handling was not explicitly
            specified.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_remotelink-Chof-url-LxAdv-url.dita">2015-05-22 - url/remotelink to url id-CCCC-10464: Added an instruction to
            explicitly indicate <sourcexml>remotelink/@status</sourcexml> is always dropped
            (suppressed). This is a very low-priority change and has been added for technical
            correctness, particularly with respect to new CIs. Existing scripts do not have to
            implement this change unless needed since prior to the change
            <targetxml>remotelink/@status</targetxml> handling was not explicitly
            specified.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_remotelink-self-inter-document-link-LxAdv-intra-document-link.dita">2015-05-22 - remotelink (self inter-document link) to ref:lnlink (intra-document
            link) id-CCCC-10468: Added an instruction to explicitly indicate
            <sourcexml>remotelink/@status</sourcexml> is always dropped (suppressed). This
            is a very low-priority change and has been added for technical correctness,
            particularly with respect to new CIs. Existing scripts do not have to implement
            this change unless needed since prior to the change
            <targetxml>remotelink/@status</targetxml> handling was not explicitly
            specified.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2015-03-23 - ci.cite to lnci.cite id-CCCC-10268: Updated main instructions to
            clarify that descendants of ci:cite, and not just children, are to be
            processed.</xref>
        </li></ul>
    </section>
    <section>
      <title>PROD 2.5</title>
      <p>2015-01-09 - JM</p><ul>
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
          <xref href="../../../Rosetta/common_newest/Rosetta_remotelink-Chof-url-LxAdv-url.dita">2015-01-09 - url/remotelink to url id-CCCC-10464: Within use case that maps to
              <targetxml>ref:lnlink</targetxml>, added exceptional rule to not concatenate values
            when <sourcexml>@hrefclass</sourcexml> content is already present in
              <sourcexml>@href</sourcexml>. Expanded example to illustrate the scenario. Responds to
            data for UK10 Dictionaries but applies in general. R4.5 Content Issue 2120.</xref>
        </li>
      </ul>
    </section>
    <section>
      <title>PROD 2.5</title>
      <p>2015-01-05 - JM</p><ul>
        <li>
          <xref href="../../../Rosetta/DITA-UK/UK10_Dictionary/dictionary-Introduction.dita">2015-01-05 - Introduction id-UK10-29221: Updated to latest version of schema (2.5
            PROD).</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/DITA-UK/UK10_Dictionary/dictionary-Introduction.dita">2015-01-05 - Introduction id-UK10-29221: Note that the following module has been added
            to the Metadata section: <sourcexml>docinfo:topiccodes</sourcexml> to
              <targetxml>classify:classification[@classscheme="docinfo:topiccodes"]</targetxml>
            (id-CCCC-10306). Data are new for UK10 in Dec 2014 redelivery. R4.5 Content Issue
            2111.</xref>
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
          <xref href="../../../Rosetta/common_newest/Rosetta_Elements-LxAdv-Empty_Elements.dita">2014-01-16 - Suppress each empty element unless otherwise stated id-CCCC-10310: Added
            list of elements to suppress if empty.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_l-LxAdv-list.dita">2014-01-06 - l to
            list id-CCCC-10372: Added mapping instruction for nested lists.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_Topic_Identifiers.dita">2014--0-5- -
            Topic Identifiers id-CCCC-10481: Created.</xref>
        </li>
      </ul>
    </section>
    <section>
      <title>PROD 2.2</title>
      <p>2013-12-31 - JM</p><ul>
        <li>
          <xref href="../../DITA-UK/UK10_Dictionary/dictionary-Body.dita">2013-12-30 - Body:
            Significant changes to rules. Necessary to accommodate differences in the two component
            dpsi. Previously, conversion relied on <sourcexml>dict:subtopic</sourcexml> to determine
            mappings for <targetxml>tei:entry</targetxml> and <targetxml>tei:superEntry</targetxml>.
            But many docs, especially in dpsi 0KMN "Words and Phrases Legally Defined", contain
            narrative elements preceding dict:subtopic. Revised rules for
              <sourcexml>dict:definition</sourcexml> provide mappings for the narrative set as well
            as <sourcexml>dict:subtopic</sourcexml>. Result will be more consistent output for
              <targetxml>tei:entry</targetxml> and <targetxml>tei:superEntry</targetxml>. Also, it
            has been found that <sourcexml>dict:topicname</sourcexml> which generally represents
            term usage (<targetxml>tei:usg</targetxml>) is sometimes used for references
              (<targetxml>tei:re</targetxml>). Rules have been added to provide appropriate mapping.
            Examples have been changed/added to illustrate details. There are no new xpaths for
            output files. Webteam 248552.</xref>
        </li>
        <li>
          <xref href="../../DITA-UK/UK10_Dictionary/dictionary-Body.dita">2013-12-28 - Body: Removed
            separate section 5.1. for <sourcexml>dict:note</sourcexml> to
              <targetxml>note</targetxml>. That mapping now included in Section 5 Body. No change to
            rule.</xref>
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
          <xref href="../../common_newest/Rosetta_UK_docinfo.custom-metafields-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta.meta.metaitem.dita">2013-11-20 - docinfo:custom-metafields to
            doc:legacy-metadata[@metadatasource="lbu-meta"]/meta/metaitem: Added instruction to
            handle
              <sourcexml>docinfo:custom-metafields/docinfo:custom-metafield/@name="jurisdiction"</sourcexml>
            is "European" Webteam # 239816 </xref>
        </li>
      </ul></section>
    <section>
      <title>PROD 2.2</title>
      <p>2013-11-07 - JM</p>
      <ul>
        <li>
          <xref href="../../DITA-UK/UK10_Dictionary/dictionary-Body.dita">2013-11-07 - Body: New
            rule. Within <sourcexml>index</sourcexml> markup. Handles
              <sourcexml>in:index-ref/refpt</sourcexml> which is new in Oct 2013 delivery. Webteam
            241340. Streams this change immediately applies to (data exists for) -- UK10. This is a
            narrow use case and not applicable to other streams.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-10-23 - remotelink to ref:crossreference: Added Example when
              <sourcexml>remotelink</sourcexml> having child <sourcexml>emph</sourcexml>. Webteam #
            239816</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_edpnum-LxAdv-desig.dita">2013-10-22 - edpnum to
            desig: Not a rule change. Modified 2nd example for clarity. Removed
              <sourcexml>refpt</sourcexml> from source markup. Not pertinent to
              <sourcexml>edpnum</sourcexml> rules. Separate rules for <sourcexml>refpt</sourcexml>
            provide details. Responds to UK LBU query.</xref>
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
          <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-10-03 - remotelink to ref:crossreference: Added use case where remotelink contains
            @href which is a URL but does not contain @hrefclass='http'.</xref>
        </li>
        <li><xref href="../../common_newest/Rosetta_Elements-LxAdv-Empty_Elements.dita">2013-10-03 -
            Suppress each empty element unless otherwise stated: Common module was inadvertently
            omitted from this CI. Now added for completeness. The rules have already been applied
            across streams. Does not represent unique action for UK10.</xref></li>
      </ul>
    </section>
    <section>
      <title>PROD 2.2</title>
      <p>2013-09-16 - SP</p>
      <ul>
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
          <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-08-22 - remotelink to ref:crossreference: Not a rule change. Modified Sample #10
            on <sourcexml>ci:cite/ci:content/remotelink</sourcexml>. Removed target attribute
              <targetxml>lnci:cite[@citeref]</targetxml> because value captured in
              <targetxml>ref:crossreference/ref:locator[@anchoridref]</targetxml>.</xref>
        </li>
      </ul>
    </section>
    <section>
      <title>PROD 2.2</title>
      <p>2013-08-21 - RAJ</p>
      <ul>
        <li>
          <xref href="../../DITA-UK/UK10_Dictionary/dictionary-Introduction.dita">2013-08-21 -
            Introduction: Updated to latest version of schema (2.2 PROD).</xref>
        </li>
        <li>
          <xref href="../../DITA-UK/UK10_Dictionary/link.dita">2013-08-21 - link to ref:lnlink:
            Added instruction for when to suppress <sourcexml>@status</sourcexml>.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_docinfo.lbu-meta-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta-scheme.dita">2013-08-12 - docinfo:lbu-meta to doc:legacy-metadata[@metadatasource="lbu-meta"]: We
            removed the docinfo:lbu-meta "include" list so now there is only a "drop" list. Anything
            not on the "drop" list should be passed through. Webteam 230557.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_remotelink-self-inter-document-link-LxAdv-intra-document-link.dita">2013-08-12 - remotelink (self inter-document link) to ref:lnlink (intra-document link):
            Changed module heading from ref:crossreference to ref:lnlink. NO instructions are
            changed. WebTeam # 230229. Affects all streams.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_docinfo-LxAdv-doc.metadata_doc.docinfo.dita">2013-08-09 - docinfo to doc:metadata/doc:docinfo: Added instruction for creating
              <targetxml>dc:date[@lnmeta:datetype="conversion-date"]</targetxml>. Previously,
            "conversion-date" was created only if "load-date" was not present. Going forward,
            conversion should always create "conversion-date". This is not a retroactive change. It
            should be applied only to streams developed after Aug. 9 2013.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_XML_Character_Entities-LxAdv-Unicode.dita">2013-08-08 - XML Character Entities to Unicode code points: This change does not
            represent a change to conversion but rather documentation of the existing
            behavior.</xref>
        </li>
      </ul>
    </section>
    <section>
      <title>PROD 2.1</title>
      <p>2013-08-07 - RAJ</p>
      <ul>
        <li>
          <xref href="../../DITA-UK/UK10_Dictionary/dictionary-Body.dita">2013-08-07 - Body: Added
            instruction and sample markup for handling <targetxml>tei:entry</targetxml> when
            resulting in empty child elements or if the only child element containing content is
              <targetxml>tei:usg</targetxml>.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_remotelink-self-inter-document-link-LxAdv-intra-document-link.dita">2013-08-07 - remotelink (self inter-document link) to ref:crossreference
            (intra-document link): Changed target to <targetxml>ref:lnlink</targetxml>; formerly
              <targetxml>ref:crossreference</targetxml>. Changed because the only supported markup
            for intradoc linking is <targetxml>ref:lnlink</targetxml>, as per Bency Thomas. WebTeam
            # 230229. Affects all streams.</xref>
        </li>
      </ul>
    </section>
    <section>
      <title>PROD 2.1</title>
      <p>2013-08-02 - RAJ</p>
      <ul>
        <li>
          <xref href="../../DITA-UK/UK10_Dictionary/dictionary-Body.dita">2013-08-02 - Body:
            Clarified instructions for <sourcexml>dict:subtopic</sourcexml>. Added instruction for
            converting <sourcexml>dict:subtopic</sourcexml> general mark-up children.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_docinfo.lbu-meta-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta-scheme.dita">2013-08-02 - docinfo:lbu-meta to doc:legacy-metadata[@metadatasource="lbu-meta"]: Added
              <sourcexml>@name="selection_criteria_variant"</sourcexml> to the list of values in
            docinfo:metaitem/@name that should be retained. And added a example.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_docinfo.doc-heading-LxAdv-dc.title.dita">2013-08-01 - docinfo:doc-heading to dc:title: Added a note and examples, when
              <sourcexml>docinfo:doc-heading</sourcexml> contains child element
              <sourcexml>nl</sourcexml>.</xref>
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
      </ul></section>
    <section>
      <title>PROD 2.1</title>
      <p>2013-07-18 - RAJ</p>
      <ul>
        <li>
          <xref href="../../common_newest/Rosetta_identifier-LxAdv-ID_data_type-HandlingPatternRestrictions.dita">2013-07-17 - Identifiers to ID Data Type - Handling Pattern Restrictions: Added
            instructions for handling leading/trailing space(s) and XML entities.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_docinfo.doc-lang-and-doc-country-LxAdv-ROOT_xml.lang.dita">2013-07-16 - docinfo:doc-lang and docinfo:doc-country to @xml:lang and @xml:ID:
            Instruction narrative edited for language; no changes to mappings, no impact to
            stylesheets.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_identifier-LxAdv-ID_data_type-HandlingPatternRestrictions.dita">2013-07-10 - Identifiers to ID Data Type - Handling Pattern Restrictions: Added
            instruction to replace space with underscore.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_title-LxAdv-title.dita">2013-07-05 - title to
            title: Added Instruction when <sourcexml>title</sourcexml> contains word "TITLE:
            ".</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-06-03 - remotelink to ref:crossreference: Updated the Target XML 2 by removing the
              <targetxml>@crossreferencetype</targetxml> for Canada example.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_docinfo.lbu-meta-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta-scheme.dita">2013-05-31 - docinfo:lbu-meta to doc:legacy-metadata[@metadatasource="lbu-meta"]: Added
            "document-type" to the list of values in docinfo:metaitem/@name that should be
            retained.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_inlineobject-LxAdv-ref.inlineobject.dita">2013-05-24 - inlineobject to ref:inlineobject: Updated instruction for handling of
            inlineobject when smi is present and some of the verbiage is changed.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_inlineobject-LxAdv-figure_ref.inlineobject.dita">2013-05-24 - inlineobject to figure/ref:inlineobject: Updated target example, "when smi
            is present".</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_docinfo-LxAdv-doc.metadata_doc.docinfo.dita">2013-05-16 - docinfo to doc:metadata/doc:docinfo: Fixed typo updating urn:contentitem
            to urn:contentItem</xref>
        </li>
      </ul>
    </section>
    <section>
      <title>PROD 2.0</title>
      <p>2013-05-13 - RAJ</p>
      <ul>
        <li>
          <xref href="../../DITA-UK/UK10_Dictionary/dictionary-Introduction.dita">2013-05-13 -
            Introduction: Updated to latest version of schema (2.0 PROD).</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_blockquote-LxAdv-blockquote.dita">2013-05-08 -
            blockquote to blockquote: Extended the list of allowable values for image
            handling.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_inlineobject-LxAdv-ref.inlineobject.dita">2013-05-08 - inlineobject to ref:inlineobject: Extended the list of allowable values
            for image handling.</xref>
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
          <xref href="../../common_newest/Rosetta_inlineobject-LxAdv-ref.inlineobject.dita">2013-05-02 - inlineobject to ref:inlineobject: Some of the verbiage is changed and
            updated target example to if the SMI is present then a
              <targetxml>ref:inliineobject/@status</targetxml> attribute is set to “valid”.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_inlineobject-LxAdv-figure_ref.inlineobject.dita">2013-05-02 - inlineobject to figure/ref:inlineobject: Updated target example to if the
            SMI is present then a <targetxml>ref:inliineobject/@status</targetxml> attribute is set
            to “valid”.</xref>
        </li>
        <li>
          <xref href="../../DITA-UK/UK10_Dictionary/link.dita">2013-05-02 - link to ref:lnlink:
            Updated target example to reflect changes per latest Apollo markup.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_blockquote-LxAdv-blockquote.dita">2013-05-01 -
            blockquote to blockquote: Removed instructions for section "Pre-Release 4.0" because
            according to latest Apollo markup, section "Release 4.0 and after" and section
            "Pre-Release 4.0" now have similar conversion markup.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2013-05-01 - ci.cite
            to lnci.cite: Removed special rule for
              <sourcexml>ci:cite/ci:content/remotelink</sourcexml> which required suppression of
              <sourcexml>ci:cite/ci:content</sourcexml> tags. The elements are now retained and
            convert according to common rules.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_inlineobject-LxAdv-ref.inlineobject.dita">2013-05-01 - inlineobject to ref:inlineobject: Removed instructions for section
            "Pre-Release 4.0" because according to latest Apollo markup, section "Release 4.0 and
            after" and section "Pre-Release 4.0" now have similar conversion markup.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_inlineobject-LxAdv-figure_ref.inlineobject.dita">2013-05-01 - inlineobject to figure/ref:inlineobject: Removed instructions for section
            "Pre-Release 4.0" because according to latest Apollo markup, section "Release 4.0 and
            after" and section "Pre-Release 4.0" now have similar conversion markup.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-05-01 - remotelink to ref:crossreference: Removed instructions for section
            "Pre-Release 4.0" because according to latest Apollo markup, section "Release 4.0 and
            after" and section "Pre-Release 4.0" now have similar conversion markup.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-05-01 - remotelink to ref:crossreference: "Instruction added for
              <sourcexml>ci:cite/ci:content/remotelink</sourcexml> specifying that the
              <sourcexml>remotelink</sourcexml> is to be converted to
              <targetxml>ref:crossreference</targetxml> but the containing elements' start-tags and
            end-tags (<sourcexml>ci:cite</sourcexml> and <sourcexml>ci:content</sourcexml>) are
            dropped", has been removed from the instructions and now
              <sourcexml>remotelink</sourcexml> will be converted to the resulting mapping where it
            is. For more details you can see example: Source XML 10:
              <sourcexml>remotelink</sourcexml> as a child of
              <sourcexml>ci:cite/ci:content</sourcexml>
          </xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_blockquote-LxAdv-blockquote.dita">2013-04-30 -
            blockquote to blockquote: Updated target sample according to latest Apollo
            markup.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_inlineobject-LxAdv-ref.inlineobject.dita">2013-04-30 - inlineobject to ref:inlineobject: Updated target sample according to
            latest Apollo markup.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_inlineobject-LxAdv-figure_ref.inlineobject.dita">2013-04-30 - inlineobject to figure/ref:inlineobject: Updated target sample according
            to latest Apollo markup.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-04-30 - remotelink to ref:crossreference: Updated target sample according to
            latest Apollo markup.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2013-04-24 - ci.cite
            to lnci.cite: Added a mapping for <sourcexml>ci:procphrase</sourcexml> to
              <sourcexml>lnci:procphrase</sourcexml>
          </xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_docinfo.doc-lang-and-doc-country-LxAdv-ROOT_xml.lang.dita">2013-04-19 - docinfo:doc-lang and docinfo:doc-country to @xml:lang and @xml:ID: Added
            note about applicability of restrictions and required modifications for
              <targetxml>xml:id</targetxml> to other scenarios.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-04-10 - remotelink to ref:crossreference: Added Source XML 7a: for link to URL,
            with non-URL text content because it was previously missing, only the target example was
            here.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_docinfo.lbu-meta-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta-scheme.dita">2013-04-09 - docinfo:lbu-meta to doc:legacy-metadata[@metadatasource="lbu-meta"]: Added
            the instruction for handling
            <sourcexml>docinfo:metaitem[@name="QLDB"]</sourcexml>.</xref>
        </li>
        <li>
          <xref href="../../DITA-UK/UK10_Dictionary/dictionary-Body.dita">2013-04-08 - Body: Added
            XML Name datatype constraints application to <targetxml>tei:usg[@type]</targetxml>
            rule.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_docinfo.doc-id-LxAdv-dcidentifier_lnmetaidentifier-scheme.dita">2013-03-20 - docinfo:doc-id to dc:identifier[@lnmeta:identifier-scheme]: Updated the
            information on handling the situation when
              <sourcexml>docinfo:dpsi[@id-string]</sourcexml> is absent with instructions to get the
            dpsi from
              <sourcexml>docinfo/docinfo:custom-metafields/docinfo:custom-metafield[@name="dpsi"]</sourcexml>.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_nl-LxAdv-proc.nl.dita">2013-03-14 - nl to proc:nl:
            Add instruction and example <sourcexml>nl/@n</sourcexml>.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_p-LxAdv-p.dita">2013-03-14 - p to p: Add
            instruction and example <sourcexml>p/@style</sourcexml>.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_inlineobject-LxAdv-ref.inlineobject.dita">2013-03-13 - inlineobject to ref:inlineobject: Removed the value leg1.png and added the
            statement "These files should be suppressed for both *.gif and *.png file types" was
            added.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_inlineobject-LxAdv-ref.inlineobject.dita">2013-03-12 - inlineobject to ref:inlineobject: Added an additional value of leg1.pngto
            the <sourcexml>inlineobject</sourcexml>suppression list</xref>
        </li>
        <li>
          <xref href="../../DITA-UK/UK10_Dictionary/dictionary-Head.dita">2013-03-11 - Head: Removed
            note about creating empty <targetxml>dict:head</targetxml> element.</xref>
        </li>
        <li>
          <xref href="../../DITA-UK/UK10_Dictionary/dict.body_heading.dita">2013-03-11 -
            dict:body/heading to dict:head/heading: Created.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-03-11 - remotelink to ref:crossreference: Instruction and example added on how to
            handle <targetxml>ref:marker </targetxml> if it is in
              <targetxml>ref:lnlink@service=”URL”</targetxml>and the
              <targetxml>ref:key-value@value</targetxml> starts-with (.,
            'http://www.lexisnexis.com/au/legal/api')</xref>
        </li>
        <li>
          <xref href="../../DITA-UK/UK10_Dictionary/dictionary-Body.dita">2013-03-07 - Body: Changed
            mappings targeting <targetxml>tei:def</targetxml> to
            <targetxml>tei:def/pgrp</targetxml>.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_remotelink-Chof-p-LxAdv-p_text_ref.crossreference.dita">2013-03-07 - p/remotelink to p/text/ref:crossreference: Created.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_edpnum-LxAdv-desig.dita">2013-03-06 - edpnum to
            desig: Removed instructions/rules for exceptional desig scenario and deprecated
            attribute <targetxml>@followstitle</targetxml>. Added instructions for maintaining
            source document ordering.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_heading-LxAdv-heading.dita">2013-03-06 - heading
            to heading: Removed instructions/rules for exceptional desig scenario and deprecated
            attribute <targetxml>@followstitle</targetxml>.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_blockquote-LxAdv-blockquote.dita">2013-02-18 -
            blockquote to blockquote: Created two sections, one for "Release 4.0 and after" and
            another for "Pre-Release 4.0".</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_inlineobject-LxAdv-ref.inlineobject.dita">2013-02-18 - inlineobject to ref:inlineobject: Created two sections, one for "Release
            4.0 and after" and another for "Pre-Release 4.0".</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_inlineobject-LxAdv-figure_ref.inlineobject.dita">2013-02-18 - inlineobject to figure/ref:inlineobject: Created two sections, one for
            "Release 4.0 and after" and another for "Pre-Release 4.0".</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-02-18 - remotelink to ref:crossreference: Created two sections, one for "Release
            4.0 and after" and another for "Pre-Release 4.0".</xref>
        </li>
      </ul>
    </section>
    <section>
      <title>PROD 1.1</title>
      <p>2013-03-07 - RAJ</p>
      <ul>
        <li>
          <xref href="../../DITA-UK/UK10_Dictionary/dictionary-Body.dita">2013-03-07 - Body: Changed
            mappings targeting <targetxml>tei:def</targetxml> to
            <targetxml>tei:def/pgrp</targetxml>.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_remotelink-Chof-p-LxAdv-p_text_ref.crossreference.dita">2013-03-07 - p/remotelink to p/text/ref:crossreference: Created.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_edpnum-LxAdv-desig.dita">2013-03-06 - edpnum to
            desig: Removed instructions/rules for exceptional desig scenario and deprecated
            attribute <targetxml>@followstitle</targetxml>. Added instructions for maintaining
            source document ordering.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_heading-LxAdv-heading.dita">2013-03-06 - heading
            to heading: Removed instructions/rules for exceptional desig scenario and deprecated
            attribute <targetxml>@followstitle</targetxml>.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_blockquote-LxAdv-blockquote.dita">2013-02-18 -
            blockquote to blockquote: Created two sections, one for "Release 4.0 and after" and
            another for "Pre-Release 4.0".</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_inlineobject-LxAdv-ref.inlineobject.dita">2013-02-18 - inlineobject to ref:inlineobject: Created two sections, one for "Release
            4.0 and after" and another for "Pre-Release 4.0".</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_inlineobject-LxAdv-figure_ref.inlineobject.dita">2013-02-18 - inlineobject to figure/ref:inlineobject: Created two sections, one for
            "Release 4.0 and after" and another for "Pre-Release 4.0".</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-02-18 - remotelink to ref:crossreference: Created two sections, one for "Release
            4.0 and after" and another for "Pre-Release 4.0".</xref>
        </li>
      </ul>
    </section>
    <section>
      <title>ALPHA 1.0</title>
      <p>2013-02-11 - RAJ</p>
      <!--<p>Added sections:</p>-->  <!-- removed, added first li below. changelog cleanup 4/1/2016 jhm -->
      <ul>
        <li>Added the following sections:</li>
        <li>5.1. <sourcexml>dict:note</sourcexml> to <targetxml>note</targetxml></li>
        <li>7.8. <sourcexml>h</sourcexml> to <targetxml>h</targetxml></li>
      </ul>
    </section>
  </body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK10_Dictionary\change-log.dita  -->


</xsl:stylesheet>