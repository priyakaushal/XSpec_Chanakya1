<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:ci="http://www.lexis-nexis.com/ci" xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" xmlns:frm="http://www.lexis-nexis.com/glp/frm" xmlns:glp="http://www.lexis-nexis.com/glp" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:source_lnci="http://www.lexis-nexis.com/lnci" xmlns:casedigest="http://www.lexisnexis.com/xmlschemas/content/legal/case-digest/1/" xmlns:caseinfo="http://www.lexisnexis.com/xmlschemas/content/legal/case-information/1/" xmlns:classify="http://www.lexisnexis.com/xmlschemas/content/shared/classification/1/" xmlns:courtcase="http://www.lexisnexis.com/xmlschemas/content/legal/courtcase/1/" xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns:decision="http://www.lexisnexis.com/xmlschemas/content/legal/decision/1/" xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" xmlns:entity="http://www.lexisnexis.com/xmlschemas/content/shared/identified-entities/1/" xmlns:form="http://www.lexisnexis.com/xmlschemas/content/shared/form/1/" xmlns:globalentity="urn:x-lexisnexis:content:identified-entities:global:1" xmlns:jurisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/jurisdiction-info/1/" xmlns:lnci="http://www.lexisnexis.com/xmlschemas/content/shared/citations/1/" xmlns:location="http://www.lexisnexis.com/xmlschemas/content/shared/location/1/" xmlns:person="http://www.lexisnexis.com/xmlschemas/content/shared/person/1/" xmlns:proc="http://www.lexisnexis.com/xmlschemas/content/shared/process-elements/1/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita case ci docinfo frm glp leg lnci">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="change-log">
  <title>Change Log</title>
  <body>
    <section>
      <title>Case Digest V8.7_PROD</title>
      <p>2016-08-10
      <ul>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_footnote-LxAdv-footnote.dita">2016-08-08 - footnotegrp and footnote to footnotegrp and footnote id-CCCC-10322: Removing duplicate entry of
            <sourcexml>lilabel/fnr</sourcexml>
          </xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_glp.note_blockquote_p_text_inlineobject-LxAdv-note_bodytext_p_text.dita">2016-08-05 - glp:note id-CCCC-10341: Added Note about xml snippets that
            illustrate image handling. Note summarizes move from Apollo to Blobstore
            application. UK is first LBU to move to Blobstore. </xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_footnote-LxAdv-footnote.dita">2016-08-04 - footnotegrp and footnote to footnotegrp and footnote id-CCCC-10322: Added note for handling
            <sourcexml>lilabel/fnr</sourcexml> Applicable for AU05,
            Incident #6597893</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2016-08-03 - remotelink to ref:crossreference id-CCCC-10465: Added Note about xml snippets that illustrate
            image handling. Note summarizes move from Apollo to Blobstore application. UK is
            first LBU to move to Blobstore.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_PAC_docinfo.doc-id-LxAdv-dcidentifier_lnmetaidentifier-scheme.dita">2016-08-03 - docinfo:doc-id to dc:identifier[@lnmeta:identifier-scheme] id-CCCC-10550: Created the rule to, Check manifest file for
            DPSI value and create new element
            <targetxml>dc:metadata/dc:source[@lnmeta:sourcescheme]</targetxml>
          </xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_blockquote-LxAdv-blockquote.dita">2016-07-29 - blockquote to blockquote id-CCCC-10247: Added Note about xml snippets that illustrate
            image handling. Note summarizes move from Apollo to Blobstore application. UK is
            first LBU to move to Blobstore. VSTS 76146</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.alt-renditions-LxAdv-doc.alt-renditions.dita">2016-07-29 - docinfo:alt-renditions/docinfo:alt-rendition to doc:alt-renditions/doc:alt-rendition id-CCCC-10283: Added Note about xml snippets that illustrate
            image handling. Note summarizes move from Apollo to Blobstore application. UK is
            first LBU to move to Blobstore.</xref>
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
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.doc-heading-LxAdv-dc.title.dita">2015-12-04 - docinfo:doc-heading to dc:title id-CCCC-10292: Added exception for AU Legislative Citator to 
            drop text Overview Tab for  from conversion.</xref>
        </li>
      </ul>
      </p>
    </section>
    <section>
      <title>Case Digest V8.6_PROD</title>
      <p>2015-11-19:
      <ul>
        <li>
          <xref href="Body.dita">2015-11-19 - Body id-AU09-19607: Mapping For the new XPath <sourcexml>ci:content/remotelink/inlineobject</sourcexml>
          </xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2015-09-15 - ci.cite to lnci.cite id-CCCC-10268: Updated instruction to suppressed the attribute
            <sourcexml>@type</sourcexml> with value "legref" in target.
            Applicable on NZ Regulation and NZ Act from services [Webstar
            #6245139].</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2015-09-11 - docinfo:assoc-links to doc:related-content id-CCCC-10284: Correction to target XPATHs for 
            <sourcexml>lnlink[@service="QUERYLINK"]</sourcexml>, <sourcexml>lnlink[@service="ATTACHMENT"]</sourcexml>, 
            and <sourcexml>lnlink[@service="TRAVERSE"]</sourcexml>
            to add <targetxml>doc:related-content-item/doc:related-content-link</targetxml> before the existing 
            <targetxml>ref:lnlink</targetxml> element in the XPATH.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2015-09-11 - docinfo:assoc-links to doc:related-content id-CCCC-10284: Added instruction for handling of
            <sourcexml>lnlink[@service="URL"]</sourcexml> inside <sourcexml>docinfo:assoc-links</sourcexml> or
            <sourcexml>docinfo:assoc-links-grp</sourcexml>.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_link-LxAdv-ref.lnlink.dita">2015-09-08 - link to ref:lnlink[@service="ATTACHMENT"] id-CCCC-10394: Minor XPATH correction in title to change 
            <targetxml>ref:lnlink/@service="ATTACHMENT"</targetxml> to be 
            <targetxml>ref:lnlink[@service="ATTACHMENT"]</targetxml>.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.overview-LxAdv-docinfo.overview.dita">2015-09-08 - docinfo:overview to doc:overview id-CCCC-10303: Added the handling of new attribute value
            "abstract" inside the <targetxml>docinfo:overview@type</targetxml> markup for UK
            streams and it should be mapped with <targetxml>doc:overview@type="abstract"</targetxml>.
            R4.5 Content Issue List #2391.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.doc-heading-LxAdv-dc.title.dita">2015-09-06 - docinfo:doc-heading to dc:title id-CCCC-10292: Modified only the special rule for CA14
            trademarks. No longer mapping (MC) to entity, the unicode code point is not
            currently supported. The pcdata (MC) is retained instead. RFA 145. CA14
            only.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2015-09-03 - docinfo:assoc-links to doc:related-content id-CCCC-10284: Minor correction to bullet heading text for children of 
            <sourcexml>docinfo:assoc-links</sourcexml> or <sourcexml>docinfo:assoc-links-grp</sourcexml> to change from 
            <sourcexml>lnlink/@service="QUERYLINK"</sourcexml> to be <sourcexml>lnlink[@service="QUERYLINK"]</sourcexml> and 
            <sourcexml>lnlink/@service="ATTACHMENT"</sourcexml> to be <sourcexml>lnlink[@service="ATTACHMENT"]</sourcexml>.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2015-09-03 - docinfo:assoc-links to doc:related-content id-CCCC-10284: Added <targetxml>doc:related-content-item/@content-type="external-content-location"</targetxml> 
            when the parent <sourcexml>docinfo:assoc-links[@assoc-content="external-content-location"]</sourcexml> exists, for children: 
            <sourcexml>remotelink[@service="DOC-ID"]</sourcexml>, <sourcexml>remotelink[@href]</sourcexml>, 
            <sourcexml>lnlink[@service="TRAVERSE"]</sourcexml> and <sourcexml>ci:cite</sourcexml>.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2015-09-03 - docinfo:assoc-links to doc:related-content id-CCCC-10284: Added instruction for handling of
            <sourcexml>lnlink[@service="TRAVERSE"]</sourcexml> inside <sourcexml>docinfo:assoc-links</sourcexml> or
            <sourcexml>docinfo:assoc-links-grp</sourcexml>.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_person-LxAdv-person.person.dita">2015-07-16 - person to person:person id-CCCC-10428: Added instruction for
            <sourcexml>person/remotelink</sourcexml> mapping to <targetxml>ref:lnlink</targetxml>.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2015-07-16 - docinfo:assoc-links to doc:related-content id-CCCC-10284: Updated conversion for handling of
            <sourcexml>ci:cite/@normprotocol</sourcexml>, <targetxml>proc:param[@name="countrycode"]</targetxml>; added
            instructions for <sourcexml>docinfo:assoc-resource</sourcexml>.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2015-06-24 - remotelink to ref:crossreference id-CCCC-10465: Added clarification note about url, @normval, and @hrefclass. Webstar 302055.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_levelinfo_classification-LxAdv-SUPPRESS.dita">2015-06-01 - levelinfo/classification @ln.user-displayed="false"/classitem @ln.user-displayed="false"/classitem-identifier/classname is SUPPRESSED id-CCCC-10392: This temporary note is also applicable for NZ09. Webstar #6019310</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_link-LxAdv-ref.lnlink.dita">2015-05-22 - link to ref:lnlink[@service="ATTACHMENT"] id-CCCC-10394: Changed the instructions to indicate <sourcexml>link/@status</sourcexml> is always dropped and removed <targetxml>ref:lnlink/@status</targetxml> from target example. This is a very low-priority change and has been added for technical correctness, particularly with respect to new CIs. Existing scripts do not have to implement this change since <targetxml>ref:lnlink/@status</targetxml> is ignored by LexisAdvance if it is present.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2015-05-22 - remotelink to ref:crossreference id-CCCC-10465: Added an instruction to explicitly indicate <sourcexml>remotelink/@status</sourcexml> is always dropped (suppressed). This is a very low-priority change and has been added for technical correctness, particularly with respect to new CIs. Existing scripts do not have to implement this change unless needed since prior to the change <targetxml>remotelink/@status</targetxml> handling was not explicitly specified.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_remotelink-self-inter-document-link-LxAdv-intra-document-link.dita">2015-05-22 - remotelink (self inter-document link) to ref:lnlink (intra-document link) id-CCCC-10468: Added an instruction to explicitly indicate <sourcexml>remotelink/@status</sourcexml> is always dropped (suppressed). This is a very low-priority change and has been added for technical correctness, particularly with respect to new CIs. Existing scripts do not have to implement this change unless needed since prior to the change <targetxml>remotelink/@status</targetxml> handling was not explicitly specified.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2015-05-22 - docinfo:assoc-links to doc:related-content id-CCCC-10284: Clarification. Not a new rule or target. Within rules handling
            <sourcexml>remotelink[@service="DOC-ID"]</sourcexml>, added statement to create containing elements
            <targetxml>ref:locator/ref:locator-key</targetxml> which hold <targetxml>ref:key-name</targetxml> and
            <targetxml>ref:key-value</targetxml>. The xpath is controlled by schema and so conversions have been
            correct. CI examples were correct. The narrative rule is now explicit. R4.5 Content Issue 2326.</xref>
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
          <xref href="../../../Rosetta/common_newest/Rosetta_PAC-page-wAncestor-entry-LxAdv-ref.page.dita">2015-05-05 - page with an ancestor of entry to ref:page id-CCCC-10425: Change to consolidate instructions, actual
            instructions have not changed. Removed redundant instructions pertaining to commas,
            periods, and spaces within <sourcexml>page/@count</sourcexml>, as well as instructions
            regarding the XPath <sourcexml>li/page</sourcexml>. Added note to refer to to topic
            "<sourcexml>page</sourcexml> to <targetxml>ref:page</targetxml>
            id-CCCC-10426" that contains the general instructions for
            <sourcexml>page</sourcexml> to <targetxml>ref:page</targetxml>, including the
            instructions removed from this topic.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.doc-heading-LxAdv-dc.title.dita">2015-05-05 - docinfo:doc-heading to dc:title id-CCCC-10292: Added note to convert (TM), (R), and (MC) to
            unicode code points. DB # 45. Applicable to CA14.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_PAC-page-wAncestor-entry-LxAdv-ref.page.dita">2015-04-24 - page with an ancestor of entry to ref:page id-CCCC-10425: Added a note and an example ("Source XML showing
            table with multiple page elements") to explicitly specify and demonstrate handling the
            scenario where there are multiple <sourcexml>page</sourcexml> elements in the same
            <sourcexml>table</sourcexml>. (Webstar #5771989 &amp; #5945128)</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_docinfo-LxAdv-doc.metadata_doc.docinfo.dita">2015-04-14 - docinfo to doc:metadata/doc:docinfo id-CCCC-10282: Remove bullet icon in sub nested list for
            handling Indentation isssue.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.hier-LxAdv-doc.hier.dita">2015-03-25 - docinfo:hier to doc:hier id-CCCC-10297: Added note with rule for
            <sourcexml>title/num</sourcexml>. Suppress <sourcexml>num</sourcexml> tag but
            output content. Applicable for CA09 only. RFA 2249.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2015-03-17 - ci.cite to lnci.cite id-CCCC-10268: An attribute <targetxml>@inline</targetxml> get added with <targetxml>desig</targetxml> element even when the source<sourcexml>pnum</sourcexml> is not having that attribute<sourcexml>@inline</sourcexml> Applicable on CA12 only.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_pgrp-LxAdv-pgrp.dita">2015-03-17 - pgrp to pgrp id-CCCC-10431: An attribute <targetxml>@inline</targetxml>
            get added with <targetxml>desig</targetxml> element even when the
            source<sourcexml>pnum</sourcexml> is not having that
            attribute<sourcexml>@inline</sourcexml> Applicable on CA12 only.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2015-02-24 - ci.cite to lnci.cite id-CCCC-10268: Example updated as per new rule an attribute <targetxml>@inline</targetxml>get added with <targetxml>desig</targetxml>element when the source<sourcexml>pnum</sourcexml>is not having that attribute<sourcexml>@inline</sourcexml>
          </xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_pgrp-LxAdv-pgrp.dita">2015-02-24 - pgrp to pgrp id-CCCC-10431: Example updated as per new rule an attribute
            <targetxml>@inline</targetxml>get added with
            <targetxml>desig</targetxml>element when the source<sourcexml>pnum</sourcexml>is
            not having that attribute<sourcexml>@inline</sourcexml>
          </xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_person-LxAdv-person.person.dita">2015-02-03 - person to person:person id-CCCC-10428: Added instruction for
            <sourcexml>name.detail/name.honorific</sourcexml> mapping to
            <targetxml>person:name.detail/person:name.honorific</targetxml>.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.hier-LxAdv-doc.hier.dita">2015-01-23 - docinfo:hier to doc:hier id-CCCC-10297: Added note to convert
            <sourcexml>docinfo:hierlev/@exclude-from-displayunits="true"</sourcexml>
            into <targetxml>doc:hier/@includeintoc="false"</targetxml>.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2015-01-19 - docinfo:assoc-links to doc:related-content id-CCCC-10284: For CA05 - CA08- Updated Instruction and included
            "<targetxml>related-content-grp</targetxml>" markup inside the target Example 8 for conversion of
            QUERY link to doc:related-content.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2015-01-15 - docinfo:assoc-links to doc:related-content id-CCCC-10284: For CA03- Convert the QUERY link to doc:related-content. Refer
            Example 10. R4.5 RFA #2099.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2015-01-13 - docinfo:assoc-links to doc:related-content id-CCCC-10284: For CA05 - CA08 Conversion Needs to split multiple ORs
            into a separate <targetxml>doc:related-content-item</targetxml>. Refer Example 9</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.hier-LxAdv-doc.hier.dita">2015-01-13 - docinfo:hier to doc:hier id-CCCC-10297: Added a note to repalce
            <sourcexml>nl</sourcexml> to a white space when <sourcexml>nl</sourcexml> is
            coming as child of <sourcexml>docinfo:hierlev/heading/title</sourcexml>
          </xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2015-01-09 - remotelink to ref:crossreference id-CCCC-10465: For the two use cases associated with url (target
            <targetxml>url</targetxml> or <targetxml>ref:lnlink</targetxml>): Added exceptional rule
            to not concatenate values when <sourcexml>@hrefclass</sourcexml> content is already
            present in <sourcexml>@href</sourcexml>. Expanded examples 5 and 7 to illustrate the
            scenario. Responds to data for UK10 Dictionaries but applies in general. R4.5 Content
            Issue 2120.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_page-LxAdv-ref.page.dita">2015-01-05 - page to ref:page id-CCCC-10426: Defined handling for page/@count if period (.) occurs in the value.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2015-01-02 - docinfo:assoc-links to doc:related-content id-CCCC-10284: Added
            <sourcexml>docinfo:assoc-links/remotelink[@service="QUERY"]</sourcexml> and
            <sourcexml>docinfo:assoc-links-grp/remotelink[@service="QUERY"]</sourcexml> to generate
            <targetxml>doc:related-content</targetxml> markup. Applicable on CA05.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2014-12-19 - docinfo:assoc-links to doc:related-content id-CCCC-10284: Updated target mapping for CA05 for handling
            <sourcexml>docinfo:assoc-links/remotelink[@service="QUERY"]</sourcexml>. Applicable on CA05.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2014-12-17 - docinfo:assoc-links to doc:related-content id-CCCC-10284: Added a Note for CA05, CA06, CA07 and CA08 for handling
            <sourcexml>docinfo:assoc-links-grp/remotelink[@service="QUERY"] </sourcexml>
          </xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2014-12-08 - ci.cite to lnci.cite id-CCCC-10268: Addition of mapping for <sourcexml>ci:pinpoint</sourcexml> to 
            <targetxml>lnci:pinpoint</targetxml> and example from US LPA content.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.overview-LxAdv-docinfo.overview.dita">2014-11-04 - docinfo:overview to doc:overview id-CCCC-10303: Clarification only: added text to explicitly indicate that the child <targetxml>doc:overview/bodytext</targetxml> should be created. Not a change to instructions.</xref>
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
          <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.overview-LxAdv-docinfo.overview.dita">2014-10-21 - docinfo:overview to doc:overview id-CCCC-10303: added to UK09 ditamap.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_title-LxAdv-title.dita">2014-10-07 - title to title id-CCCC-10479: Removed instruction and example to convert attribute <sourcexml>@searchtype="DIGEST-SUBJECT"</sourcexml>. Applicable to CA12.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2014-09-16 - docinfo:assoc-links to doc:related-content id-CCCC-10284: Added a note to create
            <targetxml>proc:param/@name="attachment-smi"</targetxml> and <targetxml>proc:param/@value</targetxml> as
            these was there in the snippet but was missing in instruction and also added a note in to simplify in output
            <targetxml>ref:key-value/@value</targetxml>
          </xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2014-08-21 - docinfo:assoc-links to doc:related-content id-CCCC-10284: Added instructions and an example for converting
            <sourcexml>lnlink[@service="ATTACHMENT"]</sourcexml> to <targetxml>ref:lnlink</targetxml>. Applicable on
            CA05-CA08.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_text-LxAdv-text.dita">2014-08-11 - text to text id-CCCC-10477: For CANADA Content Stream: Only move the
            <sourcexml> text@align</sourcexml> to the parent <targetxml>p</targetxml> if
            it is the only text in <sourcexml>p</sourcexml>, Otherwise, wrap the
            <sourcexml>text</sourcexml> with <targetxml>p</targetxml> and move the
            <sourcexml>@align</sourcexml> attribute to the newly created <targetxml>
              p</targetxml>.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.overview-LxAdv-docinfo.overview.dita">2014-08-04 - docinfo:overview to doc:overview id-CCCC-10303: added to UK05 ditamap.</xref>
        </li>
      </ul></p>
    </section>
    <section>      
      <title>Case Digest V7.8_PROD</title>
      <p>
        <ul>
          <li>
            <xref href="Headnote.dita">2014-07-24 - Headnote id-AU09-19611: Instructions to handle <sourcexml>case:judgments/footnotegrp</sourcexml>, Webteam #: 5494303.</xref>
          </li>
          <li>
            <xref href="LPA-PracticalGuidance_edpnum-refpt-LxAdv-AU.dita">2014-07-24 - edpnum/refpt to ref:anchor and heading/desig: Added instructions to handel <sourcexml>edpnum/refpt</sourcexml>
            </xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_h-LxAdv-h.dita">2014-07-24 - Created.
            </xref>
          </li>
        </ul>
      </p>
    </section>
    <section><title>Case Digest V7.8_PROD</title>
      <p>2014-06-18
        <ul>
          <li>
            <xref href="Headnote.dita">2014-06-18 - Headnote id-AU09-19611: Updated target mapping and snippet for <sourcexml>case:courtcite</sourcexml>, Webteam #: 236888.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2014-06-18 - docinfo:assoc-links to doc:related-content id-CCCC-10284: Corrected minor typos in <sourcexml>lnlink[@service="QUERYLINK"]</sourcexml> instructions.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2014-06-13 - docinfo:assoc-links to doc:related-content id-CCCC-10284: Added instructions and an example for converting
              <sourcexml>lnlink[@service="QUERYLINK"]</sourcexml> to
              <targetxml>ref:lnlink</targetxml>.</xref>
          </li>
        </ul>
      </p>
    </section>
    
    <section><title>Case Digest V7.7_PROD</title>
    <p>2014-06-04
      <ul>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_page-LxAdv-ref.page.dita">2014-06-03 - page to ref:page id-CCCC-10426: Added instruction and example to generate
            <targetxml>doc:pagination/doc:pagination-scheme</targetxml> in target and
            this immediately applies to all LNI streams.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_footnote-LxAdv-footnote.dita">2014-06-02 - footnotegrp and footnote to footnotegrp and footnote id-CCCC-10322: Canada only. Added special rule to suppress
            indent from <sourcexml>footnote/fnbody/p[@indent]</sourcexml>. Applies
            immediately to all Canada streams. R4.5 Content Issue 1609.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.doc-id-LxAdv-dcidentifier_lnmetaidentifier-scheme.dita">2014-05-21 - docinfo:doc-id to dc:identifier[@lnmeta:identifier-scheme] id-CCCC-10293: For CA05 Acts and Bills- Mapping in dc:identifier for act-no and chunk-no.. Db issue #1464 </xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2014-04-28 - docinfo:assoc-links to doc:related-content id-CCCC-10284: Clarified instructions regarding <sourcexml>link</sourcexml> elements and added an example (#4) illustrating the special <sourcexml>text/link</sourcexml> conversion. No mapping rules where changed or added.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2014-04-21 - docinfo:assoc-links to doc:related-content id-CCCC-10284: Added an instruction to handle
            <sourcexml>link</sourcexml> elements. These can potentially occur in any future UK data
            and will be present in stream UK21fl when those documents become available later in
            2014.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_footnote-LxAdv-footnote.dita">2014-04-17 - footnotegrp and footnote to footnotegrp and footnote id-CCCC-10322: Added instruction for
            <sourcexml>footnotegrp</sourcexml> within <sourcexml>sigblock</sourcexml>.
            Specifies <targetxml>p/text</targetxml> wrapper for target
            <targetxml>sigblock/p/text/footnotegroup</targetxml>. Immediately affects
            UK12 but will apply to any stream if the use case occurs. Phase 6 UK discussion
            items 76 and 88.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_p-LxAdv-p.dita">2014-04-14 - p to p id-CCCC-10424: Removed Colons from Labels.. DB item #1255</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2014-04-03 - docinfo:assoc-links to doc:related-content id-CCCC-10284: Illustrative changes. Examples modified. Mapping for
            <sourcexml>ci:cite</sourcexml> added to Example 3. Former Examples 4 and 5 removed to avoid
            confusion with special AU-NZ use case described in a separate module. R4.5 Content issue #1125,
            for AU-NZ, has prompted the changes for this general module.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2014-03-25 - docinfo:assoc-links to doc:related-content id-CCCC-10284: Added rule and example for
            <sourcexml>docinfo:assoc-links/docinfo:assoc-links-grp/ci:cite</sourcexml>. R4.5 Content issue
            #1125</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2014-02-25 - remotelink to ref:crossreference id-CCCC-10465: Updated instruction and created new example (#16) for handling <sourcexml>remotelink[@service="QUERY"]</sourcexml>. New instruction preserves pcdata but suppresses <sourcexml>remotelink</sourcexml> markup. Webstar #250335. Change applies immediately to all Pacific streams, and in the long run to all streams.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_pgrp-LxAdv-pgrp.dita">2014-02-11 - pgrp to pgrp id-CCCC-10431: Add instruction and example <sourcexml>pgrp/@subdoc</sourcexml> and <sourcexml>pgrp/@toc-caption</sourcexml>. Support Discussion Board: NZ09 Commentary, Form and Precedents</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.doc-heading-LxAdv-dc.title.dita">2014-02-11 - docinfo:doc-heading to dc:title id-CCCC-10292: Updated note when <sourcexml>emph</sourcexml> is
            child of <sourcexml>docinfo:doc-heading</sourcexml> then suppress
            <sourcexml>emph</sourcexml> element and retain its content in
            <targetxml>dc:title</targetxml>, These instructions apply immediately to
            CA12.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2014-02-03 - remotelink to ref:crossreference id-CCCC-10465: Instruction updated if <sourcexml>remotelink</sourcexml> occurs as multiple, immediate siblings and without intermediary text within <sourcexml>title</sourcexml>. Also added a example for the same scenario. Phase 5 UK discussion-defect tracking issue #161</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.topiccodes-to-LxAdv-classify.classification_classscheme_docinfo-topiccodes.dita">2014-02-03 - docinfo:topiccodes to classify:classification[@classscheme="docinfo:topiccodes"] id-CCCC-10306: Added a special rule for UK07 contents, When element <sourcexml>docinfo:topiccode</sourcexml> contains attribute <sourcexml>@scheme="source-by-date"</sourcexml>, then conversion will suppress it including its contents as well. Phase 5 UK discussion-defect tracking: issue #156. </xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_text-LxAdv-text.dita">2014-01-31 - text to text id-CCCC-10477: Updated instruction, <targetxml>align</targetxml> will be moved in <targetxml>p</targetxml> in NL conversion. NZ09 commentary discussion board issue for handling <sourcexml>text/@align</sourcexml>
          </xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_Elements-LxAdv-Empty_Elements.dita">2014-01-16 - Suppress each empty element unless otherwise stated id-CCCC-10310: Added list of elements to suppress if empty.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_date-Chof-docinfo.load-date-LxAdv-dc.date_lnmeta.datetype_load-date-scheme.dita">2014-01-07 - docinfo:load-date/date to dc:date[@lnmeta:datetype="load-date"] id-CCCC-10274:  Added a note along with example which contains "00" value in <sourcexml>@day="00"</sourcexml> and <sourcexml>@month="00"</sourcexml> attributes encountered in CANADA contents.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_footnote-LxAdv-footnote.dita">2014-01-06 - footnotegrp and footnote to footnotegrp and footnote id-CCCC-10322: Updated target example for applying the rule
            of "deleting extraneous instances of @morerows, @colsep and @rowsep" in sample
            documents.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_l-LxAdv-list.dita">2014-01-06 - l to list id-CCCC-10372: Added mapping instruction for nested lists.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_Topic_Identifiers.dita">2014--0-5- - Topic Identifiers id-CCCC-10481: Created.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2013-12-30 - ci.cite to lnci.cite id-CCCC-10268: Minor illustrative change. Added "(AU
            Journals/Newsitem)" to headings for last example to clarify that retention of
            <sourcexml>@type="cite4thisdoc"</sourcexml> is an exception for that
            content, as already described in narrative rules.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_glp.note_blockquote_p_text_inlineobject-LxAdv-note_bodytext_p_text.dita">2013-12-20 - glp:note id-CCCC-10341:  Corrected the target example (added ref:corssreference). WebTeam #5158742 - AU04. Applies generally to all LBUs and streams.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.alt-renditions-LxAdv-doc.alt-renditions.dita">2013-12-17 - docinfo:alt-renditions/docinfo:alt-rendition to doc:alt-renditions/doc:alt-rendition id-CCCC-10283: Added instruction and example for <sourcexml>docinfo:alt-rendition/lnlink</sourcexml>. (Webteam #247307)</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_p-LxAdv-p.dita">2013-12-04 - p to p id-CCCC-10424: Updated target example when <sourcexml>p</sourcexml> or <sourcexml>p/@nl="0"</sourcexml> comes in <sourcexml>references</sourcexml>, this change directly affects NZ07.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_p-LxAdv-p.dita">2013-11-21 - p to p id-CCCC-10424: Updated instruction and example <sourcexml>p</sourcexml> or <sourcexml>p/@nl="0"</sourcexml> comes in <sourcexml>references</sourcexml>, this change directly affects NZ07.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.alt-renditions-LxAdv-doc.alt-renditions.dita">2013-10-29 - docinfo:alt-renditions/docinfo:alt-rendition to doc:alt-renditions/doc:alt-rendition id-CCCC-10283: Added instruction and example for UK06 Laws/Acts/Bills/Measures and UK07 Regulation place the text of <sourcexml>leg:officialname</sourcexml> in <targetxml>doc:alt-renditions/doc:alt-rendition/ref:lnlink/ref:marker</targetxml> (Webteam #243521)</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.currencystatement-LxAdv-currencystatement.dita">2013-10-29 - docinfo:currencystatement to doc:docinfo/currencystatement id-CCCC-10289: WebTeam #233318 created for pacific content stream inorder to suppress <sourcexml>docinfo:currencystatement</sourcexml> with in <sourcexml>leg:levelinfo</sourcexml> and <sourcexml>levelinfo</sourcexml>.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.overview-LxAdv-docinfo.overview.dita">2013-10-29 - docinfo:overview to doc:overview id-CCCC-10303: WebTeam #233318 created for pacific content stream inorder to suppress <sourcexml>docinfo:overview</sourcexml> with in <sourcexml>leg:levelinfo</sourcexml> and <sourcexml>levelinfo</sourcexml>.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_p-LxAdv-p.dita">2013-10-25 - p to p id-CCCC-10424: Added instruction and example <sourcexml>p/@nl="0"</sourcexml> comes in <sourcexml>references</sourcexml>.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-10-23 - remotelink to ref:crossreference id-CCCC-10465: Added Example when <sourcexml>remotelink</sourcexml> having child <sourcexml>emph</sourcexml>. Webteam # 239816</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_edpnum-LxAdv-desig.dita">2013-10-22 - edpnum to desig id-CCCC-10308: Not a rule change. Modified 2nd example for
            clarity. Removed <sourcexml>refpt</sourcexml> from source markup. Not pertinent
            to <sourcexml>edpnum</sourcexml> rules. Separate rules for
            <sourcexml>refpt</sourcexml> provide details. Responds to UK LBU
            query.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.doc-heading-LxAdv-dc.title.dita">2013-10-18 - docinfo:doc-heading to dc:title id-CCCC-10292: Updated Instruction when <sourcexml>docinfo:doc-heading</sourcexml> contains word RULE: " or STATUTE: .</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_Elements-LxAdv-Empty_Elements.dita">2013-10-14 - Suppress each empty element unless otherwise stated id-CCCC-10310: Changed antecedent to singular to match
            instructions.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.authorattribution-LxAdv-dc.contributor.dita">2013-10-11 - docinfo:authorattribution to dc:contributor id-CCCC-10287: Instruction added when <sourcexml>remotelink</sourcexml> as a child of <sourcexml>docinfo:authorattribution/contrib</sourcexml>. WebTeam # is 240252.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_p-LxAdv-p.dita">2013-10-09 - p to p id-CCCC-10424: Added instruction and example <sourcexml>p</sourcexml> comes with <sourcexml>@nl=”0”</sourcexml>.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.authorattribution-LxAdv-dc.contributor.dita">2013-10-08 - docinfo:authorattribution to dc:contributor id-CCCC-10287: Instruction added for handling
            <sourcexml>docinfo:authorattribution</sourcexml> when it is having a running
            text. Affects all Pacific content streams. WebTeam # is 238798.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-10-03 - remotelink to ref:crossreference id-CCCC-10465: Added use case where remotelink contains @href which is a URL but does not contain @hrefclass='http'.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_footnote-LxAdv-footnote.dita">2013-10-02 - footnotegrp and footnote to footnotegrp and footnote id-CCCC-10322: Not a rule change. Cleaned up the note
            regarding the scenario when footnote/@fntoken has a value of "0" in an attempt
            to make the directions clearer.</xref>
        </li>
      </ul>
    </p>
    </section>
    <section>
      <title>Case Digest V7.5_PROD</title>
      <p>2013-09-26
      <ul>
        <li>
          <xref href="../../DITA-PAC/AU09_case_digest/Headnote.dita">2013-09-26 - Headnote:  Added instructions for handling scenario <sourcexml>case:body/case:headnote/footnotegrp</sourcexml>.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_link-LxAdv-ref.lnlink.dita">2013-09-24 - link to ref:lnlink/@service="ATTACHMENT": Not a rule change. Modified examples to illustrate when <sourcexml>@status</sourcexml> suppressed and when retained.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_table-LxAdv-table.dita">2013-09-16 - table to table: Removed an obsolete note regarding visual styling of tables.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_docinfo.authorattribution-LxAdv-dc.contributor.dita">2013-09-16 - docinfo:authorattribution to dc:contributor: Instruction added for suppressing <sourcexml>docinfo:authorattribution/contrib</sourcexml> when it is child of <sourcexml>leg:levelinfo</sourcexml> and 
            <sourcexml>levelinfo</sourcexml>.Affects all Pacific content streams. WebTeam # is 234193.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_docinfo.currencystatement-LxAdv-currencystatement.dita">2013-09-16 - docinfo:currencystatement to doc:docinfo/currencystatement: Instruction added for suppressing <sourcexml>docinfo:currencystatement</sourcexml> when it is child of <sourcexml>leg:levelinfo</sourcexml> and 
            <sourcexml>levelinfo</sourcexml>.Affects all Pacific content streams. WebTeam # is 234193.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_docinfo.overview-LxAdv-docinfo.overview.dita">2013-09-16 - docinfo:overview to doc:overview: Instruction added for suppressing <sourcexml>docinfo:overview</sourcexml> when it is child of <sourcexml>leg:levelinfo</sourcexml> and 
            <sourcexml>levelinfo</sourcexml>.Affects all Pacific content streams. WebTeam # is 234193.</xref>
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
          <xref href="../../common_newest/Rosetta_footnote-LxAdv-footnote.dita">2013-08-22 - footnotegrp and footnote to footnotegrp and footnote: Not a rule change. Second target sample
            modified to remove attribute <targetxml>lnci:cite[@citeref]</targetxml> because
            value captured in descendant
            <targetxml>ref:crossreference/ref:locator[@anchoridref]</targetxml>.
            Ancillary/illustrative within this module. Change made to promote uniformity
            across samples.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-08-22 - remotelink to ref:crossreference: Not a rule change. Modified Sample #10 on
            <sourcexml>ci:cite/ci:content/remotelink</sourcexml>. Removed target attribute
            <targetxml>lnci:cite[@citeref]</targetxml> because value captured in
            <targetxml>ref:crossreference/ref:locator[@anchoridref]</targetxml>.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_docinfo.authorattribution-LxAdv-dc.contributor.dita">2013-08-22 - docinfo:authorattribution to dc:contributor: Updated instruction and example when
            <sourcexml>person</sourcexml> is an child of
            <sourcexml>docinfo:authorattribution/contrib</sourcexml> and removed CR# DAAM2013080706295200. WebTeam # is 229509.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_link-LxAdv-ref.lnlink.dita">2013-08-21 - link to ref:lnlink/@service="ATTACHMENT": Added instruction for when to suppress <sourcexml>@status</sourcexml>.</xref>
        </li>
      </ul>
        </p>
    </section>
    <section>
      <title>Case Digest V7.5_PROD</title>
      <p>2013-09-24
        <ul>
          <li>
            <xref href="case.references.dita">2013-09-24 Added instructions for handling element <sourcexml>case:references</sourcexml>.</xref>
          </li>
          <li>
            <xref href="case.constituents.dita">2013-09-24 Added instructions for handling element <sourcexml>case:constituents</sourcexml>.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_table-LxAdv-table.dita">2013-09-16 - table to table: Removed an obsolete note regarding visual styling of tables.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_docinfo.authorattribution-LxAdv-dc.contributor.dita">2013-09-16 - docinfo:authorattribution to dc:contributor: Instruction added for suppressing <sourcexml>docinfo:authorattribution/contrib</sourcexml> when it is child of <sourcexml>leg:levelinfo</sourcexml> and 
              <sourcexml>levelinfo</sourcexml>.Affects all Pacific content streams. WebTeam # is 234193.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_docinfo.currencystatement-LxAdv-currencystatement.dita">2013-09-16 - docinfo:currencystatement to doc:docinfo/currencystatement: Instruction added for suppressing <sourcexml>docinfo:currencystatement</sourcexml> when it is child of <sourcexml>leg:levelinfo</sourcexml> and 
              <sourcexml>levelinfo</sourcexml>.Affects all Pacific content streams. WebTeam # is 234193.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_docinfo.overview-LxAdv-docinfo.overview.dita">2013-09-16 - docinfo:overview to doc:overview: Instruction added for suppressing <sourcexml>docinfo:overview</sourcexml> when it is child of <sourcexml>leg:levelinfo</sourcexml> and 
              <sourcexml>levelinfo</sourcexml>.Affects all Pacific content streams. WebTeam # is 234193.</xref>
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
            <xref href="../../common_newest/Rosetta_footnote-LxAdv-footnote.dita">2013-08-22 - footnotegrp and footnote to footnotegrp and footnote: Not a rule change. Second target sample
              modified to remove attribute <targetxml>lnci:cite[@citeref]</targetxml> because
              value captured in descendant
              <targetxml>ref:crossreference/ref:locator[@anchoridref]</targetxml>.
              Ancillary/illustrative within this module. Change made to promote uniformity
              across samples.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-08-22 - remotelink to ref:crossreference: Not a rule change. Modified Sample #10 on
              <sourcexml>ci:cite/ci:content/remotelink</sourcexml>. Removed target attribute
              <targetxml>lnci:cite[@citeref]</targetxml> because value captured in
              <targetxml>ref:crossreference/ref:locator[@anchoridref]</targetxml>.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_docinfo.authorattribution-LxAdv-dc.contributor.dita">2013-08-22 - docinfo:authorattribution to dc:contributor: Updated instruction and example when
              <sourcexml>person</sourcexml> is an child of
              <sourcexml>docinfo:authorattribution/contrib</sourcexml> and removed CR# DAAM2013080706295200. WebTeam # is 229509.</xref>
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
            <xref href="../../common_newest/Rosetta_remotelink-self-inter-document-link-LxAdv-intra-document-link.dita">2013-08-12 - remotelink (self inter-document link) to ref:lnlink (intra-document link): Changed module heading from ref:crossreference to ref:lnlink.  NO
              instructions are changed.  WebTeam # 230229. Affects all streams.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_docinfo.lbu-meta-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta-scheme.dita">2013-08-12 - docinfo:lbu-meta to doc:legacy-metadata[@metadatasource="lbu-meta"]: We removed the docinfo:lbu-meta "include" list so now there is only a "drop" list. Anything not on the "drop" list should be passed through. Webteam 230557.</xref>
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
            <xref href="../../common_newest/Rosetta_remotelink-self-inter-document-link-LxAdv-intra-document-link.dita">2013-08-07 - remotelink (self inter-document link) to ref:lnlink (intra-document link): Changed target to
              <targetxml>ref:lnlink</targetxml>; formerly
              <targetxml>ref:crossreference</targetxml>. Changed because the only
              supported markup for intradoc linking is <targetxml>ref:lnlink</targetxml>, as
              per Bency Thomas. WebTeam # 230229. Affects all streams.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_date-Chof-docinfo.load-date-LxAdv-dc.date_lnmeta.datetype_load-date-scheme.dita">2013-08-07 - docinfo:load-date/date to dc:date[@lnmeta:datetype="load-date"]: Removed instructions for creating
              <targetxml>dc:date[@lnmeta:datetype="conversion-date"]</targetxml>.</xref>
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
            <xref href="../../common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2013-07-19 - docinfo:assoc-links to doc:related-content: Added rule mapping attribute
              <sourcexml>remotelink[@service="DOC-ID"]</sourcexml> to
              <targetxml>ref:lnlink[@service="DOCUMENT"]</targetxml>
            </xref>
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
          <li>
            <xref href="../../common_newest/Rosetta_docinfo.authorattribution-LxAdv-dc.contributor.dita">2013-06-25 - docinfo:authorattribution to dc:contributor: added to AU and NZ ditamap for content enrichment</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_docinfo.currencystatement-LxAdv-currencystatement.dita">2013-06-25 - docinfo:currencystatement to doc:docinfo/currencystatement: added to AU and NZ ditamap for content enrichment</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_docinfo.overview-LxAdv-docinfo.overview.dita">2013-06-25 - docinfo:overview to doc:overview: added to AU and NZ ditamap for content enrichment</xref>
          </li>
        </ul>
      </p>
    </section>
    
    <section>
      <title>Case Digest V7.5_PROD</title>
      <p>2013-08-13
        <ul>
          <li>
            <xref href="../../common_newest/Rosetta_remotelink-self-inter-document-link-LxAdv-intra-document-link.dita">2013-08-12 - remotelink (self inter-document link) to ref:lnlink (intra-document link): Changed module heading from ref:crossreference to ref:lnlink.  NO
              instructions are changed.  WebTeam # 230229. Affects all streams.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_docinfo.lbu-meta-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta-scheme.dita">2013-08-12 - docinfo:lbu-meta to doc:legacy-metadata[@metadatasource="lbu-meta"]: We removed the docinfo:lbu-meta "include" list so now there is only a "drop" list. Anything not on the "drop" list should be passed through. Webteam 230557.</xref>
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
            <xref href="../../common_newest/Rosetta_remotelink-self-inter-document-link-LxAdv-intra-document-link.dita">2013-08-07 - remotelink (self inter-document link) to ref:lnlink (intra-document link): Changed target to
              <targetxml>ref:lnlink</targetxml>; formerly
              <targetxml>ref:crossreference</targetxml>. Changed because the only
              supported markup for intradoc linking is <targetxml>ref:lnlink</targetxml>, as
              per Bency Thomas. WebTeam # 230229. Affects all streams.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_date-Chof-docinfo.load-date-LxAdv-dc.date_lnmeta.datetype_load-date-scheme.dita">2013-08-07 - docinfo:load-date/date to dc:date[@lnmeta:datetype="load-date"]: Removed instructions for creating
              <targetxml>dc:date[@lnmeta:datetype="conversion-date"]</targetxml>.</xref>
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
            <xref href="../../common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2013-07-19 - docinfo:assoc-links to doc:related-content: Added rule mapping attribute
              <sourcexml>remotelink[@service="DOC-ID"]</sourcexml> to
              <targetxml>ref:lnlink[@service="DOCUMENT"]</targetxml>
            </xref>
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
            <xref href="../../common_newest/Rosetta_glp.note_blockquote_p_text_inlineobject-LxAdv-note_bodytext_p_text.dita">2013-05-29 - glp:note:  Corrected the file name for <sourcexml>inlineobject</sourcexml> in order to make it linkable.</xref>
          </li>
        </ul>
      </p>
    </section>
    <section>
      <title>Case Digest V7.4_PROD</title>
      <p>2013-06-20
        <ul>
          <li>
            <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-06-03 - remotelink to ref:crossreference: Updated the Target XML 2 by removing the <targetxml>@crossreferencetype</targetxml> for Canada example.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_docinfo.lbu-meta-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta-scheme.dita">2013-05-31 - docinfo:lbu-meta to doc:legacy-metadata[@metadatasource="lbu-meta"]: Added "document-type" to the list of values
              in docinfo:metaitem/@name that should be retained.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_glp.note_blockquote_p_text_inlineobject-LxAdv-note_bodytext_p_text.dita">2013-05-29 - glp:note:  Corrected the file name for <sourcexml>inlineobject</sourcexml> in order to make it linkable.</xref>
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
      <title>Case Digest V7.4_PROD</title>
      <p>2013-05-28
        <ul>
          <li>
            <xref href="../../common_newest/Rosetta_link-LxAdv-ref.lnlink.dita">2013-05-24 - link to ref:lnlink/@service="ATTACHMENT": Updated instruction for handling of link when smi is present and some of the verbiage is changed.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_docinfo-LxAdv-doc.metadata_doc.docinfo.dita">2013-05-16 - docinfo to doc:metadata/doc:docinfo: Fixed typo updating urn:contentitem to urn:contentItem</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_blockquote-LxAdv-blockquote.dita">2013-05-08 - blockquote to blockquote: Extended the list of allowable values for image handling.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-05-08 - remotelink to ref:crossreference: Extended the list of allowable values for image handling.</xref>
          </li>
        </ul>
      </p>
    </section>
    <section>
      <title>Case Digest V7.3_PROD (Schema Release Date - 2013-05-03)</title>
      <p>2013-05-13
        <ul>
          <li>
            <xref href="../../common_newest/Rosetta_blockquote-LxAdv-blockquote.dita">2013-05-08 - blockquote to blockquote: Extended the list of allowable values for image handling.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-05-08 - remotelink to ref:crossreference: Extended the list of allowable values for image handling.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_link-LxAdv-ref.lnlink.dita">2013-05-02 - link to ref:lnlink/@service="ATTACHMENT": Some of the verbiage is changed and updated target example to if the SMI is present then a <targetxml>ref:lnlink/@status</targetxml> attribute is set to “valid”.</xref>
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
            <xref href="../../common_newest/Rosetta_link-LxAdv-ref.lnlink.dita">2013-05-01 - link to ref:lnlink/@service="ATTACHMENT": Updated instructions and target example per
              latest Apollo markup.</xref>
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
            <xref href="../../common_newest/Rosetta_docinfo.alt-renditions-LxAdv-doc.alt-renditions.dita">2013-05-01 - docinfo:alt-renditions/docinfo:alt-rendition to doc:alt-renditions/doc:alt-rendition: Updated instructions and target example per latest Apollo markup.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_blockquote-LxAdv-blockquote.dita">2013-04-30 - blockquote to blockquote: Updated target sample according to latest Apollo markup.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-04-30 - remotelink to ref:crossreference: Updated target sample according to latest Apollo markup.</xref>
          </li>
        </ul>
      </p>
    </section>
    <section>
      <title>Case Digest V7.2_PROD (Schema Release Date - 04/26/2013).</title>
      <p>2013-05-02
        <ul>
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
            <xref href="../../common_newest/Rosetta_link-LxAdv-ref.lnlink.dita">2013-05-01 - link to ref:lnlink/@service="ATTACHMENT": Updated instructions and target example per latest Apollo markup.</xref>
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
            <xref href="../../common_newest/Rosetta_docinfo.alt-renditions-LxAdv-doc.alt-renditions.dita">2013-05-01 - docinfo:alt-renditions/docinfo:alt-rendition to doc:alt-renditions/doc:alt-rendition: Updated instructions and target example per latest Apollo markup.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_blockquote-LxAdv-blockquote.dita">2013-04-30 - blockquote to blockquote: Updated target sample according to latest Apollo markup.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-04-30 - remotelink to ref:crossreference: Updated target sample according to latest Apollo markup.</xref>
          </li>
        </ul>
      </p>
    </section>
    
    <section>
      <title>Case Digest V7.2_PROD (Schema Release Date - 04/26/2013).</title>
      <p>2013-04-29
        <ul>
          <li>
            <xref href="../../DITA-PAC/AU09_case_digest/Body.dita">2013-04-29 - Body: Added note to handle, if only <sourcexml>heading</sourcexml> element is found within <sourcexml>case:body</sourcexml> in Rosetta input documents.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2013-04-24 - ci.cite to lnci.cite: Added a mapping for <sourcexml>ci:procphrase</sourcexml> to <sourcexml>lnci:procphrase</sourcexml>
            </xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_docinfo.doc-lang-and-doc-country-LxAdv-ROOT_xml.lang.dita">2013-04-19 - docinfo:doc-lang and docinfo:doc-country to @xml:lang and @xml:ID: Added note about applicability of
              restrictions and required modifications for <targetxml>xml:id</targetxml> to
              other scenarios.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_docinfo.alt-renditions-LxAdv-doc.alt-renditions.dita">2013-04-17 - docinfo:alt-renditions/docinfo:alt-rendition to doc:alt-renditions/doc:alt-rendition: Updated target example (removed ".pdf" from <targetxml>ref:key-value/@value</targetxml>).</xref>
          </li>
        <li>
          <xref href="../../common_newest/Rosetta_levelinfo_classification-LxAdv-SUPPRESS.dita">2013-04-12 - levelinfo/classification @ln.user-displayed="false"/classitem @ln.user-displayed="false"/classitem-identifier/classname is SUPPRESSED: Temporary Note on Suppression inserted from Andrew Martin</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2013-04-12 - docinfo:assoc-links to doc:related-content: This module was changed from UKspecific to applicable to all LBUs</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-04-10 - remotelink to ref:crossreference: Added Source XML 7a: for link to URL, with non-URL text content because it was previously missing, only the target example was here.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2013-04-10 - docinfo:assoc-links to doc:related-content: An example for related content source and
            target xml 4</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_docinfo.authorattribution-LxAdv-dc.contributor.dita">2013-04-10 - docinfo:authorattribution to dc:contributor:  Created</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_docinfo.overview-LxAdv-docinfo.overview.dita">2013-04-10 - docinfo:overview to doc:overview:  Created</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_docinfo.currencystatement-LxAdv-currencystatement.dita">2013-04-09 - docinfo:currencystatement to doc:docinfo/currencystatement: Created</xref>
        </li>
      </ul>
      </p>
    </section>
    <section>
      <title>Case Digest V6.1_PROD (Schema Release Date - 04/06/2013).</title>
      <p>04/08/2013: 
        <ol>
          <li><xref href="Introduction.dita">2013-04-08 - Added Information of new Schema Released for <b>Case Digest V6.1_PROD</b></xref>.</li>
          <li>
            <xref href="Body.dita">2013-04-08 - A note added within Body section of the CI, to create an empty element <targetxml>proc:nocontent</targetxml> within <targetxml>casedigest:body</targetxml>.</xref>
          </li>
        </ol>
      </p>
    </section>
    
    <section>
      <title>Case Digest V6.0_PROD (Schema Release Date - 03/08/2013).</title>
      <p>03/11/2013: 
        <ol>
          <li>Introduction topic - <xref href="Introduction.dita">2013-03-08 - Added Information of new Schema Released for <b>Case Digest V6.0_PROD</b></xref>.</li>
          <li>Case-Headnote topic - <xref href="Headnote.dita">2013-03-08 - All below elements those are currently landing in <targetxml>casedigest:body/casedigest:caseinfo</targetxml>, must now go to <targetxml>casedigest:head/casedigest:caseinfo</targetxml>.</xref> during NL conversion.
            
                <ol>
                  <li><xref href="Headnote.dita">2013-03-08 - <sourcexml>case:altname</sourcexml></xref></li>
                  <li><xref href="Headnote.dita">2013-03-08 - <sourcexml>case:casename</sourcexml></xref></li>	
                  <li><xref href="Headnote.dita">2013-03-08 - <sourcexml>case:courtinfo</sourcexml></xref></li>
                  <li><xref href="Headnote.dita">2013-03-08 - <sourcexml>case:courtcode</sourcexml></xref></li>	
                  <li><xref href="Headnote.dita">2013-03-08 - <sourcexml>case:courtloc</sourcexml></xref></li>	
                  <li><xref href="Headnote.dita">2013-03-08 - <sourcexml>case:courtname</sourcexml></xref></li>	
                  <li><xref href="Headnote.dita">2013-03-08 - <sourcexml>case:dates</sourcexml></xref></li>	
                  <li><xref href="Headnote.dita">2013-03-08 - <sourcexml>case:decisiondate</sourcexml></xref></li>
                  <li><xref href="Headnote.dita">2013-03-08 - <sourcexml>case:hearingdates</sourcexml></xref></li>
                  <li><xref href="Headnote.dita">2013-03-08 - <sourcexml>case:filenum</sourcexml></xref></li>		
                  <li><xref href="Headnote.dita">2013-03-08 - <sourcexml>case:judges</sourcexml></xref></li>		
                  <li><xref href="Headnote.dita">2013-03-08 - <sourcexml>case:judges/case:judge</sourcexml></xref></li>	
                  <li><xref href="Headnote.dita">2013-03-08 - <sourcexml>case:juris</sourcexml></xref></li>
                  <li><xref href="Headnote.dita">2013-03-08 - <sourcexml>case:reportercite</sourcexml></xref></li>
                  <li><xref href="Headnote.dita">2013-03-08 - <sourcexml>catchwordgrp/catchwords</sourcexml></xref></li>
                </ol>
            
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_date-LxAdv-date.dita">2013-03-08 - date to date: Added instruction for @normdate attribute that falls
              on various NL date elements</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_edpnum-LxAdv-desig.dita">2013-03-06 - edpnum to desig: Removed instructions/rules for exceptional desig scenario and deprecated
              attribute <targetxml>@followstitle</targetxml>. Added instructions for
              maintaining source document ordering.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_heading-LxAdv-heading.dita">2013-03-06 - heading to heading: Removed instructions/rules for exceptional desig scenario and deprecated
              attribute <targetxml>@followstitle</targetxml>.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_docinfo.alt-renditions-LxAdv-doc.alt-renditions.dita">2013-03-05 - docinfo:alt-renditions/docinfo:alt-rendition to doc:alt-renditions/doc:alt-rendition: Updated target example (removed ".pdf" from attribute value of <sourcexml>ref:key-value/@value</sourcexml>).</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_glp.note_blockquote_p_text_inlineobject-LxAdv-note_bodytext_p_text.dita">2013-03-05 - glp:note: Example was added for <sourcexml>inlineobject</sourcexml> within target xml example.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_glp.note_blockquote_p_text_inlineobject-LxAdv-note_bodytext_p_text.dita">2013-03-01 - glp:note: Additional information was added for the handling of leg1.gif and leg1.png within an <sourcexml>inlineobject</sourcexml>.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_docinfo.alt-renditions-LxAdv-doc.alt-renditions.dita">2013-02-26 - docinfo:alt-renditions/docinfo:alt-rendition to doc:alt-renditions/doc:alt-rendition: Updated target example per project requirement.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_link-LxAdv-ref.lnlink.dita">2013-02-26 - link to ref:lnlink/@service="ATTACHMENT": Updated target example per project requirement.</xref>
          </li>
        </ol>
      </p>
    </section>
    
    <section>
      <title>Case Digest V5.14_PROD (Schema Release Date - 02/22/2013).</title>
      <p>02/25/2013: 
        <ol>
          <li>Introduction topic - Added Information of new Schema Released for <b>Case Digest
            V5.14_PROD</b>.</li>
          <li>Case-Headnote topic - Now, the conversion of Rosetta element <sourcexml>case:reportercite</sourcexml> will be populated within <targetxml>casedigest:head</targetxml> during NL conversion.</li>
        </ol>
      </p>
    </section>
    <section>
      <title>Case Digest V5.12_PROD (Schema Release Date - 1/11/2013).</title>
      <p>01/29/2013: 
        <ol>
          <li>Introduction topic - Added Information of new Schema Released for <b>Case Digest
              V5.12_PROD</b>.</li>
          <li>Case-Headnote topic - Instructions have been updated with directions for populating
            the attribute <targetxml>decision:decisiondate/@normdate</targetxml>.</li>
        </ol>
      </p>
    </section>

    <section>
      <title>Case Digest V5.2_PROD (Schema Release Date - 8/31/2012).</title>
      <p>09/03/2012: 
        <ol>
          <li>Introduction topic - Added Information of new Schema Released for <b>Case Digest
              V5.2_PROD</b>.</li>
          <li>General Markup topic - ci:cite : Updated the instructions for handling
              <sourcexml>ci:content/remotelink</sourcexml>.</li>
          <li>General Markup topic - remotelink : Instructions for handling
              <sourcexml>remotelink/@docidref</sourcexml> has been updated.</li>
        </ol>
      </p>
    </section>
    <section>
      <title>Case Digest V4.9_PROD (Schema Release Date - 7/13/2012).</title>
      <p>7/16/2012: <ol>
          <li>Introduction topic - Added Information of new Schema Released for <b>Case Digest
              V4.9_PROD</b>.</li>
          <li>General Markup topic - heading : Added instructions to merge data into a single
              <sourcexml>heading</sourcexml> element when 2 or more consecutive sibling source
            elements map to <sourcexml>heading</sourcexml>.</li>
          <li>General Markup topic - inlineobject : Updated the instructions for handling
              <sourcexml>ci:content/remotelink/inlineobject/@alttext</sourcexml> in a citator
            document with directions to strip the text " - Click for CaseBase entry" before mapping
            it to <targetxml>ref:crossreference/ref:content</targetxml>.</li>
          <li>General Markup topic - footnote : Updated the instructions for handling
              <sourcexml>footnote/@type</sourcexml> with directions to suppress
              <sourcexml>@type</sourcexml> when it has a value of "annotation".</li>
          <li>General Markup topic - remotelink : The instruction -
              <targetxml>ref:marker/@service</targetxml> attribute is set to "URL" was updated to
              <targetxml>ref:lnlink/@service</targetxml> attribute is set to "URL".</li>
          <li>General Markup topic - footnotegrp and footnote : Removed instructions for handling of
              <sourcexml>footnotegrp</sourcexml> without <sourcexml>fnr</sourcexml>.</li>
        </ol>
      </p>
    </section>

    <section>
      <title>Case Digest V4.7_PROD (Schema Release Date - 6/10/2012).</title>
      <p>6/12/2012: <ol>
          <li>Introduction topic - Added Information of new Schema Released for <b>Case Digest
              V4.7_PROD</b>.</li>

          <li>CR # DAAM2012052912394100 implemented to add
              <targetxml>casedigest:appearances</targetxml> as a child of
              <targetxml>casedigest:caseinfo</targetxml> in this schema.</li>

          <li>Added <targetxml>ref:lnlink</targetxml> to content model of
              <targetxml>title</targetxml> and <targetxml>subtitle</targetxml> in this schema.</li>

          <li>Case-Headnote topic - A note added in <sourcexml>case:info</sourcexml>, informing that
            data should be merged to single <targetxml>casedigest:caseinfo</targetxml>.</li>

          <li>Case-Headnote topic - Conversion changed for handling
              <sourcexml>case:judges</sourcexml>, earliar it was moving under
              <targetxml>casedigest:body</targetxml> but now it will be captured under
              <targetxml>casedigest:caseinfo</targetxml> example and NL XPATH changed in CI.</li>

          <li>Case-Headnote topic - A note added in <sourcexml>catchwordgrp</sourcexml> for
            informing that data should be merged to single
              <targetxml>casedigest:caseinfo</targetxml>.</li>

          <li>Case-Headnote topic - A note added in <sourcexml>case:courtcode</sourcexml> for
            informing that the ordering of the <targetxml>jurisinfo:alternatecourtcode</targetxml>
            and <targetxml>jurisinfo:jurisdiction/jurisinfo:system</targetxml> is not significant in
            terms of display.</li>

          <li>General Markup topic - One new rule added for handling whitespaces during Rosetta to
            NL conversion, please refer to <xref href="../../common_newest/Rosetta_whitespace-LxAdv-preserve_whitespace.dita">common_target_whitespace</xref> instructions under General Markup Section.</li>
        </ol>
      </p>
    </section>




    <section>
      <title>Case Digest V4.6_PROD (Schema Release Date - Time: 5/19/2012 - 1:06 AM), but at
        5/25/2012 schema release date, there was no schema released.</title>
      <p>5/28/2012: <ol>
          <li>Introduction topic - Added Information of previous Schema Released for <b>Case Digest
              4.6_PROD</b>.</li>

          <li>Added <targetxml>currencystatement</targetxml> as an optional child to the content
            model of <targetxml>note</targetxml> for AU use case.</li>

          <li>Case-Headnote topic - Note removed saying, <targetxml>casedigest:head</targetxml>
            captures generalized classification elements and citing references for this
            resource.</li>

          <li>Case-Headnote topic - A note added related, If there is no header information found in
            input document, then conversion will create an empty tag of
              <targetxml>casedigest:head</targetxml> in output.</li>

          <li>General Markup topic - Removed the instructions for handling
              <sourcexml>footnote</sourcexml> without a corresponding
            <sourcexml>fnr</sourcexml>.</li>

          <li>General Markup topic - <sourcexml>ln.user_displayed="false"</sourcexml> section
            redefined the rule for handling of <sourcexml>case:decisiondate</sourcexml>,
              <sourcexml>case:disposition</sourcexml>, <sourcexml>case:judges</sourcexml>,
              <sourcexml>case:reportercite</sourcexml>, <sourcexml>edpnum</sourcexml>,
              <sourcexml>heading</sourcexml>, <sourcexml>leg:heading</sourcexml>,
              <sourcexml>leg:juris</sourcexml>, <sourcexml>leg:levelstatus</sourcexml>,
              <sourcexml>leg:officialname</sourcexml>, <sourcexml>leg:officialnum</sourcexml> and
              <sourcexml>leg:year</sourcexml>.</li>
        </ol>
      </p>
    </section>
    <section>
      <title>Case Digest V4.5_PROD (Schema Release Date - Time: 5/11/2012 - 4:45 PM)</title>
      <p>5/14/2012: <ol>
          <li>Introduction topic - Added Information of new Schema Released for <b>Case Digest
              4.5_PROD</b> with changed language.</li>
          <li>Added <targetxml>note</targetxml> as an child of <targetxml>figure</targetxml> in this
            schema.</li>
          <li>Added <targetxml>globalentity:entity</targetxml> as an optional child of
              <targetxml>ref:marker</targetxml> in this schema.</li>
          <li>Added zero-or-more <targetxml>globalentity:entityReference</targetxml> to provide
            ability to directly reference the entity definition(s) for
              <targetxml>person:person</targetxml> in this schema.</li>
          <li>Added <targetxml>globalentity:entity</targetxml> as an optional child of
              <targetxml>entity:company</targetxml> in this schema.</li>
          <li>Added <targetxml>globalentity:entity</targetxml> as an optional child of
              <targetxml>entity:edu-institution</targetxml> in this schema.</li>
          <li>Added <targetxml>globalentity:entity</targetxml> as an optional child of
              <targetxml>entity:govt-entity</targetxml> in this schema.</li>
          <li>Added <targetxml>globalentity:entity</targetxml> as an optional child of
              <targetxml>entity:org</targetxml> in this schema.</li>
          <li>Added <targetxml>globalentity:entity</targetxml> as an optional child of
              <targetxml>entity:lawfirm</targetxml> in this schema.</li>
          <li>Added <targetxml>globalentity:entityReference</targetxml> to list of choices within
              <targetxml>dc:coverage</targetxml> in this schema.</li>
          <li>Added <targetxml>globalentity:entityReference</targetxml> as an optional child to
            point to the mastered entity associated with the parent element under
              <targetxml>jurisinfo:courtinfo</targetxml> in this schema.</li>
          <li>Added <targetxml>globalentity:entity</targetxml> as an optional child of
              <targetxml>courtcase:forparty</targetxml> in this schema.</li>
          <li>Add to <targetxml>pgrp</targetxml> and <targetxml>section</targetxml>: allow zero or
            more <targetxml>ref:anchor</targetxml> elements to appear before
              <targetxml>heading</targetxml>.</li>
          <li>Case-Content topic - A note removed from <sourcexml>case:author</sourcexml>, informing
            about to create an empty <targetxml>bodytext</targetxml> element as required under
              <targetxml>note</targetxml> element.</li>
          <li>Case-Headnote topic - A note removed from <sourcexml>case:disposition</sourcexml>,
            informing about raised CR number.</li>
          <li>General Markup topic - Added instruction for handling of "2" or more consecutive
              <sourcexml>blockquote</sourcexml> siblings.</li>
          <li>General Markup topic - Adjusted the language for the instruction
              <sourcexml>glp:note</sourcexml> under <targetxml>heading</targetxml> and
              <targetxml>level</targetxml>, and next one the element <targetxml>bodytext</targetxml>
            is no longer is required under <targetxml>note</targetxml> now it has become optional in
            schema.</li>
          <li>General Markup topic - Updated instructions for handling
              <sourcexml>footnotegrp/footnote</sourcexml> when it occurs without a corresponding
              <sourcexml>fnr</sourcexml>.</li>
          <li>General Markup topic - Added instructions for handling empty
              <sourcexml>fnr</sourcexml>.</li>
          <li>General Markup topic - Added instructions for handling
            <sourcexml>li/page</sourcexml>.</li>
          <li>General Markup topic - Added note that the value of
              <targetxml>footnote/@xml:id</targetxml> should be prefixed with the lower case country
            code followed by an underscore.</li>
        </ol>
      </p>
    </section>


    <section>
      <title>Case Digest V4.3 PROD (Schema Release Date - Time: 4/28/2012 - 10:16 PM)</title>
      <p>2012-04-30: <ol>
          <li>Added caseinfo:courtcite as an optional child of casedigest:caseinfo in this
            schema.</li>
          <li>Made bodytext optional for AU use case of byline only note in this schema.</li>
          <li>Made doc:sourcedocinfo optional in this schema.</li>
          <li>Introduction topic - Added Information of new Schema Released for Case Digest 4.3
            PROD.</li>
          <li>Introduction topic - Added Information: the attribute
              <sourcexml>@searchtype</sourcexml> will be suppressed from conversion except for the
            citation element.</li>
          <li>General Markup topic - Modified the instructions and examples under
              <sourcexml>ln.user_displayed="false"</sourcexml>.</li>
          <li>General Markup topic - Added instruction under <sourcexml>refpt</sourcexml> to
            suppress <targetxml>@xml:id</targetxml> whenever it is duplicate of
              <targetxml>ref:anchor/@id</targetxml>.</li>
          <li>General Markup topic - Handling for attribute <sourcexml>/text/@cont</sourcexml> has
            been updated in CI under <sourcexml>text</sourcexml>.</li>
          <li>General Markup topic - Added the instruction and example for handling -
              <sourcexml>fnr</sourcexml> appears without <sourcexml>footnote</sourcexml>.</li>
          <li>Headnote topic - A note added in CI for handling
              <sourcexml>case:disposition</sourcexml> against raised CR number:
            DAL2012041716281500.</li>
          <li>Headnote topic - Added more instructions in CI under
              <sourcexml>catchwordgrp</sourcexml> section.</li>
          <li>Headnote topic - Instructions for handling <sourcexml>case:judges</sourcexml> changed
            in CI with new example under <sourcexml>case:judges</sourcexml> section.</li>
          <li>Headnote topic - Instruction and example for handling
              <sourcexml>case:courtcode</sourcexml> has been changed.</li>
          <li>Headnote topic - Example for handling <sourcexml>case:courtloc</sourcexml> has been
            changed.</li>
        </ol>
      </p>
    </section>



    <section>
      <title>Case Digest V4.2 PROD (Schema Release Date - Time: 4/14/2012 - 1:20 PM)</title>
      <p>2012-04-16: <ol>
          <li>Introduction topic - Added Information of new Schema Released for Case Digest 4.2
            PROD.</li>
          <li>Introduction topic - A note added related to handling of element
              <sourcexml>refpt</sourcexml>, as <sourcexml>refpt</sourcexml> has to be converted to
              <targetxml>ref:anchor</targetxml> and <targetxml>xml:id</targetxml> can stay as long
            as it does not duplicate. If it duplicates with <targetxml>ref:anchor/@id</targetxml>,
            remove the <targetxml>@xml:id</targetxml> and retain <targetxml>ref:anchor</targetxml>
            in output.</li>
          <li>Headnote topic - Instruction for handling <sourcexml>case:juris</sourcexml> has been
            changed and example is added for the same.</li>
          <li>General Markup topic - Defined handling for
              <sourcexml>/CASEDOC/case:body/case:headnote/page</sourcexml> between two
            decisionsummary elements as sibling.</li>
          <li>Headnote topic - Instruction for handling <sourcexml>case:consideredcases</sourcexml>
            has been updated for maintaining content ordering issue.</li>
          <li>Headnote topic - Instruction for handling <sourcexml>case:courtcite</sourcexml> has
            been added in the CI.</li>
          <li>Headnote topic - Instruction for handling <sourcexml>case:disposition</sourcexml> has
            been added in the CI.</li>
          <li>Headnote topic - Value for <targetxml>location:state/@statecode</targetxml> has been
            updated in CI.</li>
          <li>Case-Content topic - Handling for new element <sourcexml>case:author</sourcexml> has
            been added in CI.</li>
          <li>Case-Content topic - Handling for new element <sourcexml>role</sourcexml> has been
            added in CI.</li>
        </ol>
      </p>
    </section>


    <section>
      <title>Case Digest V4.1 PROD (Schema Release Date - Time: 3/27/2012 - 7:52 PM)</title>
      <p>2012-03-28: <ol>
          <li>Introduction topic - Added Information of new Schema Released for Case Digest 4.1
            PROD.</li>
          <li>Headnote topic - NL XPATH and example expanded for handling
              <sourcexml>doc:doclength</sourcexml>.</li>
          <li>Headnote topic - Instruction for handling <sourcexml>case:courtcode</sourcexml> has
            been updated, now it's value will be retained in
              <targetxml>jurisinfo:courtinfo/@courtcode</targetxml> and doc:legacy-metadata.
            Handling for Connecting punctuation and text is added with examples.</li>
          <li>Headnote topic - NL XPATH included in CI for handling
              <sourcexml>case:dates</sourcexml>.</li>
          <li>Headnote topic - Instruction for handling <sourcexml>case:reportercite</sourcexml> has
            been updated due to content ordering issues.</li>
          <li>Headnote topic - Instruction for handling <sourcexml>case:juris</sourcexml> has been
            changed and example is added for the same and attribute
              <targetxml>jurisinfo:courtinfo/@courtcode</targetxml> will keep value of
              <sourcexml>case:courtcode</sourcexml>.</li>
          <li>Headnote topic - One more note added in <sourcexml>catchwordgrp</sourcexml> for
            handling text occured between <sourcexml>catchphrase</sourcexml>, and target xpath has
            been changed to retain content ordering.</li>
        </ol>
      </p>
    </section>


    <section>
      <title>Case Digest V4.0 PROD (Schema Release Date - Time: 3/8/2012 - 7:04 PM)</title>
      <p>2012-03-09: <ol>
          <li>Introduction topic - Added Information of new Schema Released for Case Digest 4.0
            PROD.</li>
          <li>Headnote topic - A note with example added in <sourcexml>catchwords</sourcexml> for
            handling text found between Rosetta elements <sourcexml>catchphrase</sourcexml>.</li>
          <li>General Markup topic - value of @page-scheme-type corrected as reporter-abbreviation
            from reporterabbreviation.</li>
          <li>Headnote topic - Instruction for handling <sourcexml>case:judge</sourcexml> has been
            updated for handling two different scenarios.</li>
          <li>Headnote topic - Instruction for handling <sourcexml>case:juris</sourcexml> has been
            changed and example is added for the same.</li>
        </ol>
      </p>
    </section>



    <section>
      <title/>
      <p>2012-02-24: <ol>
          <li>Headnote topic - One more example added in
            <sourcexml>case:decisionsummary</sourcexml>, for handling multiple occurrences of
              <sourcexml>p</sourcexml> under <sourcexml>case:decisionsummary</sourcexml>.</li>
          <li>Word Drop/Dropped replaced with Omit/Omitted into entire DITAs.</li>
        </ol>
      </p>
    </section>

    <section>
      <title>Case Digest V3.2 PROD (Schema Release Date - Time: 2/14/2012 - 5:24 PM)</title>
      <p>2012-02-15: <ol>
          <li><b>Elements Added in Schema: </b></li>
          <li>Element <targetxml>ref:page</targetxml> added in the schema to the content model of
              <targetxml>p</targetxml>, <targetxml>pgrp</targetxml>, <targetxml>text</targetxml>,
              <targetxml>casedigest:decision</targetxml>,
              <targetxml>casedigest:decisionsummary</targetxml>,
              <targetxml>classify:classification</targetxml>,
              <targetxml>classify:classname</targetxml>, <targetxml>blockquote</targetxml>,
              <targetxml>emph</targetxml>, and <targetxml>bodytext</targetxml>, per raised CR
            number: DAAM2012011604280900</li>
          <li><b>I affected due to Schema Release:</b></li>
          <li>Introduction topic - Added Information of new Schema Released for Case Digest 3.2
            PROD.</li>
          <li>Headnote topic - A note added in <sourcexml>case:decisionsummary</sourcexml> for
            handling two different scenarios and example given below of it edited per updated schema
            V3.2 PROD.</li>
          <li>Headnote topic - Description for handling <sourcexml>case:embeddedcase</sourcexml>
            added in a note and examples of the Rosetta and NL output per schema V3.2 PROD.</li>
          <li>Headnote topic - Description for handling <sourcexml>case:factsummary/page</sourcexml>
            added in a note for <sourcexml>case:factsummary</sourcexml>.</li>
          <li>Case-Content topic - CI for handling <sourcexml>case:judgments</sourcexml> has been
            updated and example has been changed.</li>
          <li>Added: <targetxml>@includeintoc</targetxml> and
              <targetxml>@alternatetoccaption</targetxml> in elements
              <targetxml>courtcase:opinions</targetxml> and
              <targetxml>courtcase:opinions</targetxml>.</li>
          <li>Added: <targetxml>@includeintoc</targetxml> in element
            <targetxml>ref:page</targetxml>.</li>
        </ol>
      </p>
    </section>
    <section>
      <title/>
      <p>2012-02-14: <ol>
          <li>Introduction topic - An information added to identify AU-Case Digest Rosetta
            samples.</li>
          <li>Headnote topic - Some more information added in
              <sourcexml>case:reportercite</sourcexml> note for handling it. And a wrapper element
            added in target xml example.</li>
          <li>Word Drop/Dropped replaced with Omit/Omitted into entire DITAs.</li>
        </ol>
      </p>
    </section>
    <section>
      <title/>
      <p>2012-02-08: <ol>
          <li>Headnote topic - A note and one more example added in CI for element
              <sourcexml>case:decisiondate</sourcexml> due to raised one new scenario on Discussion
            Board.</li>
        </ol>
      </p>
    </section>
    <section>
      <title>Case Digest V3.1 PROD (Schema Release Date - Time: 2/6/2012 - 10:47 PM)</title>
      <p>2012-02-07: <ol>
          <li><b>Elements Added in Schema:</b></li>
          <li>Element <targetxml>figure</targetxml> added in the schema to the content model of
              <targetxml>entry</targetxml>, <targetxml>text</targetxml> and
            <targetxml>p</targetxml>, per raised CR number: LBAM2011121702043300</li>
          <li>Element <targetxml>ref:relatedrefs</targetxml> added in the schema to the content
            model of <targetxml>casedigest:head</targetxml>, per raised CR number:
            DAAM2012011802192900</li>
          <li>Element <targetxml>caseinfo:alternatecasename</targetxml> added in the schema to right
            content model of <targetxml>casedigest:caseinfo</targetxml>, per raised CR number:
            DAAM2012011605260100</li>
          <li><b>CI affected due to Schema Release:</b></li>
          <li>Introduction topic - Added Information of new Schema Released for Case Digest V3.1
            PROD.</li>
          <li>Case-Content topic - Information changed for added note in case:judgments.</li>
          <li>Case-Content topic - Information changed for added note in case:judgment.</li>
          <li>Case-Content topic - A reference link has been created in note for element
              <sourcexml>legfragment</sourcexml>, and note's language changed.</li>
          <li>Headnote topic - Conversion Instruction for Element
              <sourcexml>case:filenum</sourcexml> moved from Case-Content topic to Headnote topic,
            as it is part of <sourcexml>case:info/case:courtinfo</sourcexml>
          </li>
          <li>Headnote topic - Conversion Instruction for Element
              <sourcexml>case:decisionsummary</sourcexml>, has been changed as per Schema V3.1 PROD
            update.</li>
          <li>Headnote topic - Note added in CI for Element
              <sourcexml>case:consideredcases</sourcexml>, has been changed as per Schema V3.1 PROD
            update.</li>
          <li>Headnote topic - Instruction for <sourcexml>case:embeddedcase</sourcexml> has been
            changed and example added for the same.</li>
        </ol>
      </p>
    </section>

    <section>
      <title>Case Digest 3.0 PROD (Schema Release Date - Time: 1/27/2012 - 6:29 PM)</title>
      <p>2012-01-30: <ol>
          <li><b>Elements Added in Schema:</b></li>
          <li>Element <targetxml>casedigest:decision</targetxml> added in the schema to the content
            model of <targetxml>casedigest:body</targetxml>, per raised CR number:
            LBAM2011121702043300</li>
          <li>Element <targetxml>figure</targetxml> added in the schema to the content model of
              <targetxml>entry</targetxml> and <targetxml>text</targetxml>, per raised CR number:
            LBAM2011121702043300</li>
          <li>Element <targetxml>caseinfo:alternatecasename</targetxml> added in the schema but to
            the content model of <targetxml>caseinfo:caseinfo</targetxml> instead of
              <targetxml>casedigest:caseinfo</targetxml>, per raised CR number:
            DAAM2012011605260100</li>
          <li>Element <targetxml>courtcase:caseexcerpt</targetxml> added in the schema but not per
            requirements.</li>
          <li><b>CI affected due to Schema Release:</b></li>
          <li>Introduction topic - Added Information of new Schema Released for Case Digest 3.0
            PROD.</li>
          <li>Case-Content topic - Note for CR number removed from element case:judgments and a note
            information added.</li>
          <li>Case-Content topic - Note for CR number removed from element case:judgment.</li>
          <li>Case-Content topic - Example changed for case:judgments.</li>
          <li>Headnote topic - Note for CR number removed from case:embeddedcase and added some
            information</li>
        </ol>
      </p>
    </section>
    <section>
      <title/>
      <p>2012-01-25: <ol>
          <li>Headnote topic - Instructions for Rosetta element case:consideredcases added with
            raised CR number in CI.</li>
        </ol>
      </p>
    </section>
    <section>
      <title/>
      <p>2012-01-24: <ol>
          <li>Headnote topic - Instruction for Rosetta element case:decisionsummary with proposed NL
            markup added in CI.</li>
        </ol>
      </p>
    </section>
    <section>
      <title/>
      <p>2012-01-16: <ol>
          <li>A Change Request submitted to allow element ref:page in different required scenarios
            per Rosetta samples.</li>
        </ol>
      </p>
    </section>

    <section>
      <title/>
      <p>2012-01-13: <ol>
          <li>Headnote topic - Rosetta element case:altname and corresponding NL element added with
            examples in CI.</li>
          <li>Headnote topic - Example for Rosetta element case:factsummary corrected in CI.</li>
          <li>Headnote topic - A note(containing reference of citation markup(ci:cite) handling)
            added in part of Rosetta element case:reportercite in CI.</li>
        </ol>
      </p>
    </section>
    <section>
      <title/>
      <p>2011-12-28: <ol>
          <li>General Markup topic - added the phrase “[common element]” to the instructions for all
            of the general markup elements.</li>
          <li>Metadata topic - added the phrase “[common element]” to the instructions for all of
            the metadata elements.</li>
        </ol>
      </p>
    </section>
    <section>
      <title/>
      <p>2011-12-21: <ol>
          <li>Case-Content topic - Added primlaw:excerpt instructions and example.</li>
          <li>Introduction topic - Changed language for attribute
            <sourcexml>@xml:lang</sourcexml>.</li>
          <li>Taken care in all Examples - All entities converted into unicode values in NL
            output.</li>
          <li>Introduction topic - Statement <sourcexml>casedoc/@type="summaries"</sourcexml>
            changed to <sourcexml>casedoc/@type="summary"</sourcexml>.</li>
        </ol>
      </p>
    </section>
    <section>
      <title/>
      <p>2011-12-20: <ol>
          <li>Case-Content topic - Added the CR number's for <sourcexml>case:jugments</sourcexml>
            and <sourcexml>case:judgment</sourcexml>.</li>
          <li>Changed the language under Introduction part.</li>
          <li>Case-Content topic - Removed instruction for legfragment.</li>
        </ol>
      </p>
    </section>
    <section>
      <title/>
      <p>2011-12-18: <ol>
          <li>Removed all commentary based elements.</li>
        </ol>
      </p>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU09_case_digest\change-log.dita  -->
	<xsl:message>AU09_case_digest_change-log.xsl requires manual development!</xsl:message> 

</xsl:stylesheet>