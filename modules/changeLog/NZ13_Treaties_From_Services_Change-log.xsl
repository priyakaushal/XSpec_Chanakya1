<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:ci="http://www.lexis-nexis.com/ci" xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" xmlns:frm="http://www.lexis-nexis.com/glp/frm" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:source_lnci="http://www.lexis-nexis.com/lnci" xmlns:admindoc="urn:x-lexisnexis:content:administrative-document:sharedservices:1" xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" xmlns:form="http://www.lexisnexis.com/xmlschemas/content/shared/form/1/" xmlns:lnci="http://www.lexisnexis.com/xmlschemas/content/shared/citations/1/" xmlns:person="http://www.lexisnexis.com/xmlschemas/content/shared/person/1/" xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita ci docinfo frm leg lnci">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Change-log">
  <title>Change Log</title>
  <body>
    <section>
        <title>funddoc 2.7_PROD</title>
        <p>2016-08-22</p>
      <ul>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_footnote-LxAdv-footnote.dita">2016-08-08 - footnotegrp and footnote to footnotegrp and footnote id-CCCC-10322: Removing duplicate entry of
            <sourcexml>lilabel/fnr</sourcexml>
          </xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_footnote-LxAdv-footnote.dita">2016-08-04 - footnotegrp and footnote to footnotegrp and footnote id-CCCC-10322: Added note for handling
            <sourcexml>lilabel/fnr</sourcexml> Applicable for AU05,
            Incident #6597893</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_PAC_docinfo.doc-id-LxAdv-dcidentifier_lnmetaidentifier-scheme.dita">2016-08-03 - docinfo:doc-id to dc:identifier[@lnmeta:identifier-scheme] id-CCCC-10550: Created the rule to, Check manifest file for
            DPSI value and create new element
            <targetxml>dc:metadata/dc:source[@lnmeta:sourcescheme]</targetxml>
          </xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2016-08-03 - remotelink to ref:crossreference id-CCCC-10465: Added Note about xml snippets that illustrate
            image handling. Note summarizes move from Apollo to Blobstore application. UK is
            first LBU to move to Blobstore.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_blockquote-LxAdv-blockquote.dita">2016-07-29 - blockquote to blockquote id-CCCC-10247: Added Note about xml snippets that illustrate
            image handling. Note summarizes move from Apollo to Blobstore application. UK is
            first LBU to move to Blobstore. VSTS 76146</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2016-07-29 - docinfo:assoc-links to doc:related-content id-CCCC-10284: Added Note about xml snippets that illustrate image
            handling. Note summarizes move from Apollo to Blobstore application. UK is first LBU to
            move to Blobstore.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_emph-LxAdv-emph.dita">2016-04-01 - emph to emph id-CCCC-10316: Added statement to clarify that children of emph should be processed.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_l-LxAdv-list.dita">2016-04-01 - l to list id-CCCC-10372: Added mapping instruction for handling h within listitem.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2016-03-23 - ci.cite to lnci.cite id-CCCC-10268: Updated main instructions to clarify that descendants of ci:cite, and not just children, are to be processed.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_edpnum-LxAdv-desig.dita">2016-03-15 - edpnum to desig id-CCCC-10308: Added rule for handling scenario when
            <sourcexml>pnum</sourcexml> and <sourcexml>edpnum </sourcexml> occur as
            siblings (applicable only for UK22CS). [RFA #2755]</xref>
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
      </ul>
    </section>
    <section>
      <title>funddoc 2.5_PROD</title>
      <p>2014-04-03</p>
      <ul>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2014-04-02 - docinfo:assoc-links to doc:related-content: Added special rule for AU and NZ streams. Applies when a linking element is immediately followed by <sourcexml>text</sourcexml>. The pair map to a single <targetxml>doc:related-content-item</targetxml>. Example 4 is changed, now illustrates new rule. R4.5 Content issue #1125</xref>
        </li>
      </ul>
    </section>
    <section>
      <title>funddoc 2.5_PROD</title>
      <p>2014-03-27</p>
      <ul>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2014-03-25 - docinfo:assoc-links to doc:related-content: Added rule and example for <sourcexml>docinfo:assoc-links/docinfo:assoc-links-grp/ci:cite</sourcexml>. R4.5 Content issue #1125</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_deflist-LxAdv-deflist.dita">2014-03-21 - deflist to deflist: Added instruction to handle <sourcexml>defitem/@id</sourcexml> and <sourcexml>defterm/@id</sourcexml> only for GPL IN content Streams.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_NZ-consecutive-note-LxAdv-notes.dita">2014-03-04 - Consecutive note elements to notes: Added NZ11 to the list of streams affected by this instruction. Also added some clarifying comments, including that this instruction only applies to target note elements and not marginnote or inlinenote elements.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2014-02-25 - remotelink to ref:crossreference: Updated instruction and created new example (#16) for handling <sourcexml>remotelink[@service="QUERY"]</sourcexml>. New instruction preserves pcdata but suppresses <sourcexml>remotelink</sourcexml> markup. Webstar #250335. Change applies immediately to all Pacific streams, and in the long run to all streams.</xref>
        </li>
      </ul>
    </section>
    <section>
      <title>funddoc 2.5_PROD</title>
      <p>2014-02-21<ul>
        <li>
          <xref href="Body.dita">2014-02-20 - leg:level to primlaw:level: Updated the instruction and example for handling <sourcexml>@inline</sourcexml> attribute when target conversion having <targetxml>primlaw:level@leveltype</targetxml> element with attribute values "clause, section and regulation".</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_docinfo.doc-heading-LxAdv-dc.title.dita">2014-02-11 - docinfo:doc-heading to dc:title: Updated note when <sourcexml>emph</sourcexml> is
            child of <sourcexml>docinfo:doc-heading</sourcexml> then suppress
            <sourcexml>emph</sourcexml> element and retain its content in
            <targetxml>dc:title</targetxml>, These instructions apply immediately to
            CA12.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_pgrp-LxAdv-pgrp.dita">2014-02-11 - pgrp to pgrp: Add instruction and example <sourcexml>pgrp/@subdoc</sourcexml> and <sourcexml>pgrp/@toc-caption</sourcexml>. Support Discussion Board: NZ09 Commentary, Form and Precedents</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_docinfo.topiccodes-to-LxAdv-classify.classification_classscheme_docinfo-topiccodes.dita">2014-02-03 - docinfo:topiccodes to classify:classification[@classscheme="docinfo:topiccodes"]: Added a special rule for UK07 contents, When element <sourcexml>docinfo:topiccode</sourcexml> contains attribute <sourcexml>@scheme="source-by-date"</sourcexml>, then conversion will suppress it including its contents as well. Phase 5 UK discussion-defect tracking: issue #156. </xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2014-02-03 - remotelink to ref:crossreference: Instruction updated if <sourcexml>remotelink</sourcexml> occurs as multiple, immediate siblings and without intermediary text within <sourcexml>title</sourcexml>. Also added a example for the same scenario. Phase 5 UK discussion-defect tracking issue #161</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_text-LxAdv-text.dita">2014-01-31 - text to text: Updated instruction, <targetxml>align</targetxml> will be moved in <targetxml>p</targetxml> in NL conversion. NZ09 commentary discussion board issue for handling <sourcexml>text/@align</sourcexml>
          </xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_Elements-LxAdv-Empty_Elements.dita">2014-01-16 - Suppress each empty element unless otherwise stated: Added list of elements to suppress if empty.</xref>
        </li>
      </ul>
      </p>
    </section>
    <section>
      <title>funddoc 2.5_PROD</title>
      <p>2014-01-16
        <ul>
          <li>
            <xref href="../../common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2014-01-16 - Added a new common module for handling <sourcexml>docinfo:assoc-links</sourcexml>.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_date-Chof-docinfo.load-date-LxAdv-dc.date_lnmeta.datetype_load-date-scheme.dita">2014-01-07 - docinfo:load-date/date to dc:date[@lnmeta:datetype="load-date"]:  Added a note along with example which contains "00" value in <sourcexml>@day="00"</sourcexml> and <sourcexml>@month="00"</sourcexml> attributes encountered in CANADA contents.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_footnote-LxAdv-footnote.dita">2014-01-06 - footnotegrp and footnote to footnotegrp and footnote: Updated target example for applying the rule of "deleting extraneous
              instances of @morerows, @colsep and @rowsep" in sample documents.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2013-12-30 - ci.cite to lnci.cite: Minor illustrative change. Added "(AU
              Journals/Newsitem)" to headings for last example to clarify that retention of
              <sourcexml>@type="cite4thisdoc"</sourcexml> is an exception for that
              content, as already described in narrative rules.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_deflist-LxAdv-deflist.dita">2013-12-20 - deflist to deflist: Added note to place a <sourcexml>footnote</sourcexml> or <sourcexml>fnr</sourcexml> that is a child of <sourcexml>defitem</sourcexml> into one of its children. WebTeam #5158742 - AU04.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_endnote-LxAdv-endnote.dita">2013-12-18 - endnote to endnote: Instruction added to convert <sourcexml>remotelink/@refpt</sourcexml> to <targetxml>footnote-ref/@anchoridref</targetxml>.  WebTeam #5158742 - AU04. Applies generally to all LBUs and streams.</xref>
          </li>
          </ul>
      </p>
      </section>
    
    <section>
      <title>funddoc 2.5_PROD</title>
      <p>2013-12-04
        <ul>
          <li>
            <xref href="../../common_newest/Rosetta_NZ-consecutive-note-LxAdv-notes.dita">2013-11-21 - Consecutive note elements to notes: New. R4.5 PIT Issue
              #246365. Streams this change immediately applies to (data exists for) --
              NZ06, NZ10, NZ12, NZ13, NZ18. No additional streams will be affected in
              the future. </xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_p-LxAdv-p.dita">2013-11-21 - p to p: Updated instruction and example <sourcexml>p</sourcexml> or <sourcexml>p/@nl="0"</sourcexml> comes in <sourcexml>references</sourcexml>, this change directly affects NZ07.</xref>
          </li>
        </ul>
      </p>
      </section>
    <section>
      <title>funddoc 2.4_PROD</title>
      <p>2013-11-15
        <ul>
          <li>
            <xref href="Body.dita">2013-11-15 - leg:level to
              admindoc:level: Added the intruction for suppressing the
              "<targetxml>@inline</targetxml>" attribute when target conversion are having
              <targetxml>admindoc:level@leveltype="clause"</targetxml>. WebTeam # 245268 created for
              pacific content stream (NZ06, NZ10, NZ12 and NZ13) in order to suppress</xref>
            [<targetxml>@inline</targetxml>] attribute. </li>
         
          
          <li>
            <xref href="../../common_newest/Rosetta_docinfo.currencystatement-LxAdv-currencystatement.dita">2013-10-29 - docinfo:currencystatement to doc:docinfo/currencystatement: WebTeam #233318 created for pacific content stream inorder to suppress <sourcexml>docinfo:currencystatement</sourcexml> with in <sourcexml>leg:levelinfo</sourcexml> and <sourcexml>levelinfo</sourcexml>.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_docinfo.overview-LxAdv-docinfo.overview.dita">2013-10-29 - docinfo:overview to doc:overview: WebTeam #233318 created for pacific content stream inorder to suppress <sourcexml>docinfo:overview</sourcexml> with in <sourcexml>leg:levelinfo</sourcexml> and <sourcexml>levelinfo</sourcexml>.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_p-LxAdv-p.dita">2013-10-25 - p to p: Added instruction and example <sourcexml>p/@nl="0"</sourcexml> comes in <sourcexml>references</sourcexml>.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-10-23 - remotelink to ref:crossreference: Added Example when <sourcexml>remotelink</sourcexml> having child <sourcexml>emph</sourcexml>. Webteam # 239816</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_edpnum-LxAdv-desig.dita">2013-10-22 - edpnum to desig: Not a rule change. Modified 2nd example for
              clarity. Removed <sourcexml>refpt</sourcexml> from source markup. Not pertinent
              to <sourcexml>edpnum</sourcexml> rules. Separate rules for
              <sourcexml>refpt</sourcexml> provide details. Responds to UK LBU
              query.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_docinfo.doc-heading-LxAdv-dc.title.dita">2013-10-18 - docinfo:doc-heading to dc:title: Updated Instruction when <sourcexml>docinfo:doc-heading</sourcexml> contains word RULE: " or STATUTE: .</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_Elements-LxAdv-Empty_Elements.dita">2013-10-14 - Suppress each empty element unless otherwise stated: Changed antecedent to singular to match instructions.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_deflist-LxAdv-deflist.dita">2013-10-14 - deflist to deflist: Added new rule to create a blank defitem/defdesc element after the defterm element.  WebTeam # 237242.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_docinfo.authorattribution-LxAdv-dc.contributor.dita">2013-10-11 - docinfo:authorattribution to dc:contributor: Instruction added when <sourcexml>remotelink</sourcexml> as a child of <sourcexml>docinfo:authorattribution/contrib</sourcexml>. WebTeam # is 240252.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_p-LxAdv-p.dita">2013-10-09 - p to p: Added instruction and example <sourcexml>p</sourcexml> comes with <sourcexml>@nl=”0”</sourcexml>.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_docinfo.authorattribution-LxAdv-dc.contributor.dita">2013-10-08 - docinfo:authorattribution to dc:contributor: Instruction added for handling
              <sourcexml>docinfo:authorattribution</sourcexml> when it is having a running
              text. Affects all Pacific content streams. WebTeam # is 238798.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_endnote-LxAdv-endnote.dita">2013-10-07 - endnote to endnote: Instruction and example for added for the Xpath <sourcexml>leg:bodytext/glp:note/l/li</sourcexml> related to <targetxml>endnote</targetxml> handling. WebTeam # is 238790.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-10-03 - remotelink to ref:crossreference: Added use case where remotelink contains @href which is a URL but does not contain @hrefclass='http'.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_footnote-LxAdv-footnote.dita">2013-10-02 - footnotegrp and footnote to footnotegrp and footnote: Not a rule change. Cleaned up the note regarding
              the scenario when footnote/@fntoken has a value of "0" in an attempt to make the directions clearer.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_link-LxAdv-ref.lnlink.dita">2013-09-24 - link to ref:lnlink/@service="ATTACHMENT": Not a rule change. Modified examples to illustrate when <sourcexml>@status</sourcexml> suppressed and when retained.</xref>
          </li>
          
          <li>
            <xref href="../../common_newest/Rosetta_docinfo.authorattribution-LxAdv-dc.contributor.dita">2013-09-16 - docinfo:authorattribution to dc:contributor: Instruction added for suppressing
              <sourcexml>docinfo:authorattribution/contrib</sourcexml> when it is child of
              <sourcexml>leg:levelinfo</sourcexml> and
              <sourcexml>levelinfo</sourcexml>.Affects all Pacific content streams. WebTeam #
              is 234193.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_docinfo.currencystatement-LxAdv-currencystatement.dita">2013-09-16 - docinfo:currencystatement to doc:docinfo/currencystatement: Instruction added for suppressing <sourcexml>docinfo:currencystatement</sourcexml> when it is child of <sourcexml>leg:levelinfo</sourcexml> and  <sourcexml>levelinfo</sourcexml>.Affects all Pacific content streams. WebTeam # is 234193.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_docinfo.overview-LxAdv-docinfo.overview.dita">2013-09-16 - docinfo:overview to doc:overview: Instruction added for suppressing <sourcexml>docinfo:overview</sourcexml> when it is child of <sourcexml>leg:levelinfo</sourcexml> and <sourcexml>levelinfo</sourcexml>.Affects all Pacific content streams. WebTeam # is 234193.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_table-LxAdv-table.dita">2013-09-16 - table to table: Removed an obsolete note regarding visual styling of tables.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_table-LxAdv-table.dita">2013-09-12 - table to table: WebTeam #s 235116, 235130, 235126: Added instructions for deleting extraneous instances of @morerows, @colsep and @rowsep. These instructions apply immediately to all UK streams and also to AU18.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_title-LxAdv-title.dita">2013-09-03 - title to title: Updated Instruction when <sourcexml>title</sourcexml> contains word "TITLE: " or "NAME: " or "SITE: ".</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_docinfo.doc-heading-LxAdv-dc.title.dita">2013-09-03 - docinfo:doc-heading to dc:title: Updated Instruction when <sourcexml>docinfo:doc-heading</sourcexml> contains word "TITLE: " or NAME:  or SITE:  or SUBJECT:.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_text-When_Contains_Only_Wihitespace_Or_NBSP_Entity.dita">2013-08-29 - Converting text When it Contains Only Whitespace or NBSP Entity: Created per WebStar: WebTeam #223114</xref>
          </li>
         
          <li>
            <xref href="../../common_newest/Rosetta_docinfo.authorattribution-LxAdv-dc.contributor.dita">2013-08-22 - docinfo:authorattribution to dc:contributor: Updated instruction and example when
              <sourcexml>person</sourcexml> is an child of
              <sourcexml>docinfo:authorattribution/contrib</sourcexml> and removed CR# DAAM2013080706295200. WebTeam # is 229509.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_footnote-LxAdv-footnote.dita">2013-08-22 - footnotegrp and footnote to footnotegrp and footnote: Not a rule change. Second target sample modified to
              remove attribute <targetxml>lnci:cite[@citeref]</targetxml> because value captured in
              descendant <targetxml>ref:crossreference/ref:locator[@anchoridref]</targetxml>.
              Ancillary/illustrative within this module. Change made to promote uniformity across
              samples.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-08-22 - remotelink to ref:crossreference: Not a rule change. Modified Sample #10 on
              <sourcexml>ci:cite/ci:content/remotelink</sourcexml>. Removed target attribute
              <targetxml>lnci:cite[@citeref]</targetxml> because value captured in
              <targetxml>ref:crossreference/ref:locator[@anchoridref]</targetxml>.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_link-LxAdv-ref.lnlink.dita">2013-08-21 - link to ref:lnlink/@service="ATTACHMENT": Added instruction for when to suppress <sourcexml>@status</sourcexml>.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_docinfo.authorattribution-LxAdv-dc.contributor.dita">2013-08-13 - docinfo:authorattribution to dc:contributor: Added instruction and example when
              <sourcexml>person</sourcexml> is an child of
              <sourcexml>docinfo:authorattribution/contrib</sourcexml> and CR# DAAM2013080706295200 has been created to add <targetxml>person:person</targetxml> to the content model of <targetxml>dc:contributor</targetxml>.WebTeam # is 229509</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_docinfo.lbu-meta-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta-scheme.dita">2013-08-12 - docinfo:lbu-meta to doc:legacy-metadata[@metadatasource="lbu-meta"]: We removed the docinfo:lbu-meta "include" list so now there is only a "drop" list. Anything not on the "drop" list should be passed through. Webteam 230557.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_remotelink-self-inter-document-link-LxAdv-intra-document-link.dita">2013-08-12 - remotelink (self inter-document link) to ref:lnlink (intra-document link): Changed module heading from ref:crossreference to ref:lnlink.  NO
              instructions are changed.  WebTeam # 230229. Affects all streams.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_docinfo-LxAdv-doc.metadata_doc.docinfo.dita">2013-08-09 - docinfo to doc:metadata/doc:docinfo: Added instruction for creating
              <targetxml>dc:date[@lnmeta:datetype="conversion-date"]</targetxml>.
              Previously, "conversion-date" was created only if "load-date" was not present.
              Going forward, conversion should always create "conversion-date". This is not a
              retroactive change. It should be applied only to streams developed after Aug. 9
              2013.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_XML_Character_Entities-LxAdv-Unicode.dita">2013-08-08 - XML Character Entities to Unicode code points: This change does not represent a change to
              conversion but rather documentation of the existing behavior.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_date-Chof-docinfo.load-date-LxAdv-dc.date_lnmeta.datetype_load-date-scheme.dita">2013-08-07 - docinfo:load-date/date to dc:date[@lnmeta:datetype="load-date"]: Removed instructions for creating
              <targetxml>dc:date[@lnmeta:datetype="conversion-date"]</targetxml>.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_remotelink-self-inter-document-link-LxAdv-intra-document-link.dita">2013-08-07 - remotelink (self inter-document link) to ref:lnlink (intra-document link): Changed target to
              <targetxml>ref:lnlink</targetxml>; formerly
              <targetxml>ref:crossreference</targetxml>. Changed because the only
              supported markup for intradoc linking is <targetxml>ref:lnlink</targetxml>, as
              per Bency Thomas. WebTeam # 230229. Affects all streams.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_docinfo.lbu-meta-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta-scheme.dita">2013-08-02 - docinfo:lbu-meta to doc:legacy-metadata[@metadatasource="lbu-meta"]: Added <sourcexml>@name="selection_criteria_variant"</sourcexml> to the list of values in docinfo:metaitem/@name that should be retained. And added a example.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_docinfo.doc-heading-LxAdv-dc.title.dita">2013-08-01 - docinfo:doc-heading to dc:title: For Canada Content streams: Added a note and examples, when <sourcexml>docinfo:doc-heading</sourcexml> contains <sourcexml>nl</sourcexml> as a child element.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_title-LxAdv-title.dita">2013-07-30 - title to title: Updated Instruction when <sourcexml>title</sourcexml> contains word "TITLE: " or "NAME: ".</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_docinfo.doc-heading-LxAdv-dc.title.dita">2013-07-30 - docinfo:doc-heading to dc:title: Added Instruction when <sourcexml>docinfo:doc-heading</sourcexml> contains word "TITLE: " or NAME: .</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_docinfo-LxAdv-doc.metadata_doc.docinfo.dita">2013-07-18 - docinfo to doc:metadata/doc:docinfo: Added
              <sourcexml>@excludefromalerts</sourcexml> as one of the
              <sourcexml>docinfo</sourcexml> attributes to carry through</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_docinfo.doc-lang-and-doc-country-LxAdv-ROOT_xml.lang.dita">2013-07-16 - docinfo:doc-lang and docinfo:doc-country to @xml:lang and @xml:ID: Instruction narrative edited for language; no changes to mappings, no impact to stylesheets.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_title-LxAdv-title.dita">2013-07-05 - title to title: Added Instruction when <sourcexml>title</sourcexml> contains word "TITLE: ".</xref>
          </li>
        </ul>
      </p>
      </section>
    <section>
      <title>funddoc 2.2_PROD</title>
      <p>2013-07-02
        <ul>
          <li>
            <xref href="../../common_newest/Rosetta_Elements-LxAdv-Empty_Elements.dita">2013-07-01 - EMPTY Element to Suppressed: Added the rule for handling EMPTY Elements.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_docinfo.authorattribution-LxAdv-dc.contributor.dita">2013-06-25 - docinfo:authorattribution to dc:contributor: added to AU and NZ ditamap for content enrichment</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_docinfo.currencystatement-LxAdv-currencystatement.dita">2013-06-25 - docinfo:currencystatement to doc:docinfo/currencystatement: added to AU and NZ ditamap for content enrichment</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_docinfo.overview-LxAdv-docinfo.overview.dita">2013-06-25 - docinfo:overview to doc:overview: added to AU and NZ ditamap for content enrichment</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-06-03 - remotelink to ref:crossreference: Updated the Target XML 2 by removing the <targetxml>@crossreferencetype</targetxml> for Canada example.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_docinfo.lbu-meta-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta-scheme.dita">2013-05-31 - docinfo:lbu-meta to doc:legacy-metadata[@metadatasource="lbu-meta"]: Added "document-type" to the list of values
              in docinfo:metaitem/@name that should be retained.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_link-LxAdv-ref.lnlink.dita">2013-05-24 - link to ref:lnlink/@service="ATTACHMENT": Updated instruction for handling of link when smi is present and some of the verbiage is changed.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_docinfo-LxAdv-doc.metadata_doc.docinfo.dita">2013-05-16 - docinfo to doc:metadata/doc:docinfo: Fixed typo updating urn:contentitem to urn:contentItem</xref>
          </li>
        </ul>
      </p>
    </section>
    <section>
      <title>funddoc 2.2_PROD</title>
      <p>2013-05-13
        <ul>
          <li>
            <xref href="../../common_newest/Rosetta_blockquote-LxAdv-blockquote.dita">2013-05-08 - blockquote to blockquote: Extended the list of allowable values for image handling.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-05-08 - remotelink to ref:crossreference: Extended the list of allowable values for image handling.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_blockquote-LxAdv-blockquote.dita">2013-05-01 - blockquote to blockquote: Removed instructions for section
              "Pre-Release 4.0" because according to latest Apollo markup, section
              "Release 4.0 and after" and section "Pre-Release 4.0" now have
              similar conversion markup.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2013-05-01 - ci.cite to lnci.cite: Removed special rule for
              <sourcexml>ci:cite/ci:content/remotelink</sourcexml> which required
              suppression of <sourcexml>ci:cite/ci:content</sourcexml> tags. The elements are
              now retained and convert according to common rules.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-05-01 - remotelink to ref:crossreference: Removed instructions for section
              "Pre-Release 4.0" because according to latest Apollo markup, section
              "Release 4.0 and after" and section "Pre-Release 4.0" now have
              similar conversion markup.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-05-01 - remotelink to ref:crossreference: "Instruction added for <sourcexml>ci:cite/ci:content/remotelink</sourcexml> specifying that the <sourcexml>remotelink</sourcexml> is to be converted to <targetxml>ref:crossreference</targetxml> but the containing elements' start-tags and end-tags (<sourcexml>ci:cite</sourcexml> and <sourcexml>ci:content</sourcexml>) are dropped", has been removed from the instructions and now <sourcexml>remotelink</sourcexml> will be converted to the resulting mapping where it is. For more details you can see example: Source XML 10: <sourcexml>remotelink</sourcexml> as a child of
              <sourcexml>ci:cite/ci:content</sourcexml>
            </xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_blockquote-LxAdv-blockquote.dita">2013-04-30 - blockquote to blockquote: Updated target sample according to latest Apollo markup.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-04-30 - remotelink to ref:crossreference: Updated target sample according to latest Apollo markup.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2013-04-24 - ci.cite to lnci.cite: Added a mapping for
              <sourcexml>ci:procphrase</sourcexml> to
              <sourcexml>lnci:procphrase</sourcexml>
            </xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_docinfo.doc-lang-and-doc-country-LxAdv-ROOT_xml.lang.dita">2013-04-19 - docinfo:doc-lang and docinfo:doc-country to @xml:lang and @xml:ID: Added note about applicability of
              restrictions and required modifications for <targetxml>xml:id</targetxml> to
              other scenarios.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-04-10 - remotelink to ref:crossreference: Added Source XML 7a: for link to URL, with non-URL text content because it was previously missing, only the target example was here.</xref>
          </li>
        </ul>
      </p>
    </section>
    <section>
      <title>funddoc 1.8_PROD</title>
      <p>2013-03-25
        <ul>
          <li>
            <xref href="../../common_newest/Rosetta_docinfo.doc-id-LxAdv-dcidentifier_lnmetaidentifier-scheme.dita">2013-03-20 - docinfo:doc-id to dc:identifier[@lnmeta:identifier-scheme]: Updated the information on handling the
              situation when <sourcexml>docinfo:dpsi[@id-string]</sourcexml> is absent with
              instructions to get the dpsi from
              <sourcexml>docinfo/docinfo:custom-metafields/docinfo:custom-metafield[@name="dpsi"]</sourcexml>.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_nl-LxAdv-proc.nl.dita">2013-03-14 - nl to proc:nl: Add instruction and example <sourcexml>nl/@n</sourcexml>.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_p-LxAdv-p.dita">2013-03-14 - p to p: Add instruction and example <sourcexml>p/@style</sourcexml>.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-03-11 - remotelink to ref:crossreference: Instruction and example added on how to handle <targetxml>ref:marker </targetxml> 
              if it is in <targetxml>ref:lnlink@service=”URL”</targetxml>and the <targetxml>ref:key-value@value</targetxml> starts-with (., 'http://www.lexisnexis.com/au/legal/api') 
            </xref>
          </li>
        </ul>
      </p>
    </section>
    
    <section>
      <title>funddoc 1.8_PROD (Schema Release Date - 10/06/2012).</title>
      <p>2013-02-11<ul>
          <li>Introduction topic - Added Information of new Schema Released for <b>funddoc
              1.8_PROD</b>.</li>
          <li>Body topic - Instructions and examples updated for handling
              <sourcexml>leg:level</sourcexml> when it occurs with attribute @id value starts with
            hyphen(-) as:
            <sourcexml>leg:level[@id="-GENEVA-19-SEPTEMBER-1949-A1-S2"]</sourcexml>.</li>
        </ul></p>
    </section>
    <section>
      <title>First Release</title>
      <p>2012-10-09 10/09/2012</p>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\NZ13_Treaties_From_Services\Change-log.dita  -->
	<xsl:message>NZ13_Treaties_From_Services_Change-log.xsl requires manual development!</xsl:message> 

</xsl:stylesheet>