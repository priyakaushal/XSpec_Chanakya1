<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
  xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
  xmlns:case="http://www.lexis-nexis.com/glp/case" 
  xmlns:ci="http://www.lexis-nexis.com/ci" xmlns:source_dict="http://www.lexis-nexis.com/glp/dict" 
  xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" xmlns:leg="http://www.lexis-nexis.com/glp/leg" 
  xmlns:source_lnci="http://www.lexis-nexis.com/lnci" xmlns:dc="http://purl.org/dc/elements/1.1/" 
  xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" 
  xmlns:dict="urn:x-lexisnexis:content:dict:sharedservices:1"
  xmlns:lnci="http://www.lexisnexis.com/xmlschemas/content/shared/citations/1/" xmlns:person="http://www.lexisnexis.com/xmlschemas/content/shared/person/1/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" xmlns:tei="http://www.tei-c.org/ns/1.0/" version="2.0" exclude-result-prefixes="dita case ci dict docinfo leg lnci">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="change-log">
  <title>Change Log for Dictionary</title>
  <body>
    <section>
      <title>2.5 PROD</title>
      <p>2016-11-28</p>
      <ul>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_AU_commentary_inlineobject-Chof-ci.conent_remotelink-LxAdv-lnci.content_ref.crossreference.dita">2016-11-28 - ci:content//remotelink/inlineobject to lnci:content//ref:crossreference
            id-CCCC-10231: Updated to handle remotelink/inlineobject at ci:content or
            ci:content/citefragment or ci:content/citefragment/ci:span. Webstars 6716788,
            6705412.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_endnote-LxAdv-endnote.dita">2016-11-16
            - endnote to endnote id-CCCC-10317: Added to note regarding applying any rules related
            to <targetxml>@anchoridref</targetxml>, referring specifically to section for
            "Identifiers to ID Data Type - Handling Pattern Restrictions".</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2016-11-16 - remotelink to ref:crossreference id-CCCC-10465: Added to note regarding
            applying any rules related to <targetxml>@anchoridref</targetxml>, referring
            specifically to section for "Identifiers to ID Data Type - Handling Pattern
            Restrictions".</xref>
        </li>
      </ul>
    </section>
    <section>
      <title>2.5 PROD</title>
      <p>2016-08-11</p>
      <ul>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_PAC_docinfo.doc-id-LxAdv-dcidentifier_lnmetaidentifier-scheme.dita">2016-08-03 - docinfo:doc-id to dc:identifier[@lnmeta:identifier-scheme] id-CCCC-10550:
            Created the rule to, Check manifest file for DPSI value and create new element
              <targetxml>dc:metadata/dc:source[@lnmeta:sourcescheme]</targetxml>
          </xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2016-08-03 - remotelink to ref:crossreference id-CCCC-10465: Added Note about xml
            snippets that illustrate image handling. Note summarizes move from Apollo to Blobstore
            application. UK is first LBU to move to Blobstore.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_emph-LxAdv-emph.dita">2016-04-01 - emph
            to emph id-CCCC-10316: Added statement to clarify that children of emph should be
            processed.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2016-03-23 - ci.cite to lnci.cite id-CCCC-10268: Updated main instructions to clarify
            that descendants of ci:cite, and not just children, are to be processed.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2016-02-05 - remotelink to ref:crossreference id-CCCC-10465: Added note and example
            when <sourcexml>remotelink</sourcexml> is a child of <sourcexml>emph</sourcexml>.
            Applicable on NZ17CC, Webstar: 319232 and 318735.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.doc-heading-LxAdv-dc.title.dita">2015-12-04 - docinfo:doc-heading to dc:title id-CCCC-10292: Added exception for AU
            Legislative Citator to drop text Overview Tab for from conversion.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2015-09-15 - ci.cite to lnci.cite id-CCCC-10268: Updated instruction to suppressed the
            attribute <sourcexml>@type</sourcexml> with value "legref" in target. Applicable on NZ
            Regulation and NZ Act from services [Webstar #6245139].</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.overview-LxAdv-docinfo.overview.dita">2015-09-08 - docinfo:overview to doc:overview id-CCCC-10303: Added the handling of new
            attribute value "abstract" inside the <targetxml>docinfo:overview@type</targetxml>
            markup for UK streams and it should be mapped with
              <targetxml>doc:overview@type="abstract"</targetxml>. R4.5 Content Issue List
            #2391.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.doc-heading-LxAdv-dc.title.dita">2015-09-06 - docinfo:doc-heading to dc:title id-CCCC-10292: Modified only the special
            rule for CA14 trademarks. No longer mapping (MC) to entity, the unicode code point is
            not currently supported. The pcdata (MC) is retained instead. RFA 145. CA14 only.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2015-06-24 - remotelink to ref:crossreference id-CCCC-10465: Added clarification note
            about url, @normval, and @hrefclass. Webstar 302055.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2015-05-22 - remotelink to ref:crossreference id-CCCC-10465: Added an instruction to
            explicitly indicate <sourcexml>remotelink/@status</sourcexml> is always dropped
            (suppressed). This is a very low-priority change and has been added for technical
            correctness, particularly with respect to new CIs. Existing scripts do not have to
            implement this change unless needed since prior to the change
              <targetxml>remotelink/@status</targetxml> handling was not explicitly
            specified.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_remotelink-self-inter-document-link-LxAdv-intra-document-link.dita">2015-05-22 - remotelink (self inter-document link) to ref:lnlink (intra-document link)
            id-CCCC-10468: Added an instruction to explicitly indicate
              <sourcexml>remotelink/@status</sourcexml> is always dropped (suppressed). This is a
            very low-priority change and has been added for technical correctness, particularly with
            respect to new CIs. Existing scripts do not have to implement this change unless needed
            since prior to the change <targetxml>remotelink/@status</targetxml> handling was not
            explicitly specified.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.doc-heading-LxAdv-dc.title.dita">2015-05-05 - docinfo:doc-heading to dc:title id-CCCC-10292: Added note to convert (TM),
            (R), and (MC) to unicode code points. DB # 45. Applicable to CA14.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_docinfo-LxAdv-doc.metadata_doc.docinfo.dita">2015-04-14 - docinfo to doc:metadata/doc:docinfo id-CCCC-10282: Remove bullet icon in
            sub nested list for handling Indentation isssue.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.hier-LxAdv-doc.hier.dita">2015-03-25 - docinfo:hier to doc:hier id-CCCC-10297: Added note with rule for
              <sourcexml>title/num</sourcexml>. Suppress <sourcexml>num</sourcexml> tag but output
            content. Applicable for CA09 only. RFA 2249.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2015-03-17 - ci.cite to lnci.cite id-CCCC-10268: An attribute
              <targetxml>@inline</targetxml> get added with <targetxml>desig</targetxml> element
            even when the source<sourcexml>pnum</sourcexml> is not having that
              attribute<sourcexml>@inline</sourcexml> Applicable on CA12 only.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2015-02-24 - ci.cite to lnci.cite id-CCCC-10268: Example updated as per new rule an
            attribute <targetxml>@inline</targetxml>get added with
            <targetxml>desig</targetxml>element when the source<sourcexml>pnum</sourcexml>is not
            having that attribute<sourcexml>@inline</sourcexml>
          </xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.hier-LxAdv-doc.hier.dita">2015-01-23 - docinfo:hier to doc:hier id-CCCC-10297: Added note to convert
              <sourcexml>docinfo:hierlev/@exclude-from-displayunits="true"</sourcexml> into
              <targetxml>doc:hier/@includeintoc="false"</targetxml>.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.hier-LxAdv-doc.hier.dita">2015-01-13 - docinfo:hier to doc:hier id-CCCC-10297: Added a note to repalce
              <sourcexml>nl</sourcexml> to a white space when <sourcexml>nl</sourcexml> is coming as
            child of <sourcexml>docinfo:hierlev/heading/title</sourcexml>
          </xref>
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
      </ul>
    </section>

    <section>
      <title>2.2 PROD</title>
      <p>2013-10-23 - JM</p><ul>
        <li>
          <xref href="../../DITA-PAC/AU17_AU_NZ_Dictionary/dictionary-Body.dita">2013-10-23 - Body:
            Not a rule change. Further refinement to sync narrative and examples for condition
              <sourcexml>see</sourcexml> as direct child of <sourcexml>dict:definition</sourcexml>.
            Condition is present in example headed <sourcexml>dict:definition/see</sourcexml> and
            target is updated, changing <targetxml>tei:def/text</targetxml> to
              <targetxml>tei:def/pgrp/p/text</targetxml>. As a related change, fixed Example-3 which
            contains <sourcexml>see</sourcexml> as child of <sourcexml>dict:subtopic</sourcexml>,
            changing target from <targetxml>tei:def/pgrp/p/text</targetxml> to
              <targetxml>tei:re</targetxml> to sync with narrative rules. Refer R4.5 Post Iterative
            Item 571.</xref>
        </li>
        <li>
          <xref href="../../DITA-PAC/AU17_AU_NZ_Dictionary/dictionary-Body.dita">2013-10-23 - Body:
            Fixed typo in Case-1 description. July update changed word "multiple" to "1 or more".
            Should have been "2 or more". Now corrected. Not a webteam or discussion board item.
            Believe coding not affected, i.e. ConvEng correctly continued to apply "multiple"
            concept for Case-2, based on issue described in R4.5 Post Iterative Item 571.</xref>
        </li>
      </ul></section>
    <section>
      <title>2.2 PROD</title>
      <p>2013-10-14 - JM</p><ul>
        <li>
          <xref href="../../DITA-PAC/AU17_AU_NZ_Dictionary/dictionary-Body.dita">2013-10-14 - Body:
            Modified narrative for <sourcexml>dict:definition</sourcexml>, Case-1, child
              <sourcexml>see</sourcexml>. Target formerly stated as <targetxml>text</targetxml>. Now
            clarified as <targetxml>pgrp/p/text</targetxml> to match Example 3. Reference R4.5 Post
            Iterative Item 571.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_Elements-LxAdv-Empty_Elements.dita">2013-10-14 -
            Suppress each empty element unless otherwise stated: Changed antecedent to singular to
            match instructions.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_docinfo.authorattribution-LxAdv-dc.contributor.dita">2013-10-11 - docinfo:authorattribution to dc:contributor: Instruction added when
              <sourcexml>remotelink</sourcexml> as a child of
              <sourcexml>docinfo:authorattribution/contrib</sourcexml>. WebTeam # is 240252.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_p-LxAdv-p.dita">2013-10-09 - p to p: Added
            instruction and example <sourcexml>p</sourcexml> comes with
              <sourcexml>@nl=”0”</sourcexml>.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_docinfo.authorattribution-LxAdv-dc.contributor.dita">2013-10-08 - docinfo:authorattribution to dc:contributor: Instruction added for
            handling <sourcexml>docinfo:authorattribution</sourcexml> when it is having a running
            text. Affects all Pacific content streams. WebTeam # is 238798.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_endnote-LxAdv-endnote.dita">2013-10-07 - endnote
            to endnote: Instruction and example for added for the Xpath
              <sourcexml>leg:bodytext/glp:note/l/li</sourcexml> related to
              <targetxml>endnote</targetxml> handling. WebTeam # is 238790.</xref>
        </li>
      </ul></section>
    <section>
      <title>2.2 PROD</title>
      <p>2013-10-04 - SP</p>
      <ul>
        <li>
          <xref href="../../DITA-PAC/AU17_AU_NZ_Dictionary/dictionary-Body.dita">2013-10-04 - Body:
            Corrected "Target XML 3" example to include <targetxml>pgrp/p</targetxml>.</xref>
        </li>
        <li>
          <xref href="../../DITA-PAC/AU17_AU_NZ_Dictionary/dictionary-Body.dita">2013-10-04 - Body:
            Note to also include any descendant PCDATA of <sourcexml>defterm</sourcexml> such as
              <sourcexml>remotelink</sourcexml> and added example. Webteam #238175.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-10-03 - remotelink to ref:crossreference: Added use case where remotelink contains
            @href which is a URL but does not contain @hrefclass='http'.</xref>
        </li>
      </ul>
    </section>
    <section>
      <title>2.2 PROD</title>
      <p>2013-09-30 - SP</p>
      <ul>
        <li>
          <xref href="../../DITA-PAC/AU17_AU_NZ_Dictionary/dictionary-Body.dita">2013-09-30 - Body:
            Added instruction to suppress <sourcexml>dict:topicname</sourcexml> when it is
            empty.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_docinfo.authorattribution-LxAdv-dc.contributor.dita">2013-09-16 - docinfo:authorattribution to dc:contributor: Instruction added for
            suppressing <sourcexml>docinfo:authorattribution/contrib</sourcexml> when it is child of
              <sourcexml>leg:levelinfo</sourcexml> and <sourcexml>levelinfo</sourcexml>.Affects all
            Pacific content streams. WebTeam # is 234193.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_docinfo.currencystatement-LxAdv-currencystatement.dita">2013-09-16 - docinfo:currencystatement to doc:docinfo/currencystatement: Instruction
            added for suppressing <sourcexml>docinfo:currencystatement</sourcexml> when it is child
            of <sourcexml>leg:levelinfo</sourcexml> and <sourcexml>levelinfo</sourcexml>.Affects all
            Pacific content streams. WebTeam # is 234193.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_docinfo.overview-LxAdv-docinfo.overview.dita">2013-09-16 - docinfo:overview to doc:overview: Instruction added for suppressing
              <sourcexml>docinfo:overview</sourcexml> when it is child of
              <sourcexml>leg:levelinfo</sourcexml> and <sourcexml>levelinfo</sourcexml>.Affects all
            Pacific content streams. WebTeam # is 234193.</xref>
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
          <xref href="../../common_newest/Rosetta_text-When_Contains_Only_Wihitespace_Or_NBSP_Entity.dita">2013-08-29 - Converting text When it Contains Only Whitespace or NBSP Entity: Created
            per WebStar: WebTeam #223114</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_docinfo.authorattribution-LxAdv-dc.contributor.dita">2013-08-22 - docinfo:authorattribution to dc:contributor: Updated instruction and
            example when <sourcexml>person</sourcexml> is an child of
              <sourcexml>docinfo:authorattribution/contrib</sourcexml> and removed CR#
            DAAM2013080706295200. WebTeam # is 229509.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-08-22 - remotelink to ref:crossreference: Not a rule change. Modified Sample #10
            on <sourcexml>ci:cite/ci:content/remotelink</sourcexml>. Removed target attribute
              <targetxml>lnci:cite[@citeref]</targetxml> because value captured in
              <targetxml>ref:crossreference/ref:locator[@anchoridref]</targetxml>.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_docinfo.authorattribution-LxAdv-dc.contributor.dita">2013-08-13 - docinfo:authorattribution to dc:contributor: Added instruction and example
            when <sourcexml>person</sourcexml> is an child of
              <sourcexml>docinfo:authorattribution/contrib</sourcexml> and CR# DAAM2013080706295200
            has been created to add <targetxml>person:person</targetxml> to the content model of
              <targetxml>dc:contributor</targetxml>.WebTeam # is 229509</xref>
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
        <li>
          <xref href="../../common_newest/Rosetta_date-Chof-docinfo.load-date-LxAdv-dc.date_lnmeta.datetype_load-date-scheme.dita">2013-08-07 - docinfo:load-date/date to dc:date[@lnmeta:datetype="load-date"]: Removed
            instructions for creating
              <targetxml>dc:date[@lnmeta:datetype="conversion-date"]</targetxml>.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_remotelink-self-inter-document-link-LxAdv-intra-document-link.dita">2013-08-07 - remotelink (self inter-document link) to ref:lnlink (intra-document link):
            Changed target to <targetxml>ref:lnlink</targetxml>; formerly
              <targetxml>ref:crossreference</targetxml>. Changed because the only supported markup
            for intradoc linking is <targetxml>ref:lnlink</targetxml>, as per Bency Thomas. WebTeam
            # 230229. Affects all streams.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_docinfo.lbu-meta-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta-scheme.dita">2013-08-02 - docinfo:lbu-meta to doc:legacy-metadata[@metadatasource="lbu-meta"]: Added
              <sourcexml>@name="selection_criteria_variant"</sourcexml> to the list of values in
            docinfo:metaitem/@name that should be retained. And added a example.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_docinfo.doc-heading-LxAdv-dc.title.dita">2013-08-01 - docinfo:doc-heading to dc:title: For Canada Content streams: Added a note
            and examples, when <sourcexml>docinfo:doc-heading</sourcexml> contains
              <sourcexml>nl</sourcexml> as a child element.</xref>
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
      <title>2.1 PROD</title>
      <p>2013-07-26 - RAJ</p>
      <ul>
        <li>
          <xref href="../../DITA-PAC/AU17_AU_NZ_Dictionary/dictionary-Body.dita">2013-07-26 - Body:
            Changed mapping for <sourcexml>dict:definition</sourcexml>. Revised body instructions
            for clarity.</xref>
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
          <xref href="../../common_newest/Rosetta_docinfo-LxAdv-doc.metadata_doc.docinfo.dita">2013-05-16 - docinfo to doc:metadata/doc:docinfo: Fixed typo updating urn:contentitem
            to urn:contentItem</xref>
        </li>
      </ul>
    </section>
    <section>
      <title/>
      <p>2013-05-13 - RAJ</p>
      <ul>
        <li>
          <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-05-08 - remotelink to ref:crossreference: Extended the list of allowable values
            for image handling.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2013-05-01 - ci.cite
            to lnci.cite: Removed special rule for
              <sourcexml>ci:cite/ci:content/remotelink</sourcexml> which required suppression of
              <sourcexml>ci:cite/ci:content</sourcexml> tags. The elements are now retained and
            convert according to common rules.</xref>
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
          <xref href="../../common_newest/Rosetta_docinfo.doc-id-LxAdv-dcidentifier_lnmetaidentifier-scheme.dita">2013-03-20 - docinfo:doc-id to dc:identifier[@lnmeta:identifier-scheme]: Updated the
            information on handling the situation when
              <sourcexml>docinfo:dpsi[@id-string]</sourcexml> is absent with instructions to get the
            dpsi from
              <sourcexml>docinfo/docinfo:custom-metafields/docinfo:custom-metafield[@name="dpsi"]</sourcexml>.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_p-LxAdv-p.dita">2013-03-14 - p to p: Add
            instruction and example <sourcexml>p/@style</sourcexml>.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-03-11 - remotelink to ref:crossreference: Instruction and example added on how to
            handle <targetxml>ref:marker </targetxml> if it is in
              <targetxml>ref:lnlink@service=”URL”</targetxml>and the
              <targetxml>ref:key-value@value</targetxml> starts-with (.,
            'http://www.lexisnexis.com/au/legal/api')</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_date-LxAdv-date.dita">2013-03-08 - date to date:
            Added instruction for @normdate attribute that falls on various NL date elements</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_heading-LxAdv-heading.dita">2013-03-06 - heading
            to heading: Removed instructions/rules for exceptional desig scenario and deprecated
            attribute <targetxml>@followstitle</targetxml>.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-02-18 - remotelink to ref:crossreference: Created two sections, one for "Release
            4.0 and after" and another for "Pre-Release 4.0".</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2013-01-22 - ci.cite
            to lnci.cite: Instruction modified for the scenario
              <sourcexml>ci:cite/ci:content/remotelink</sourcexml> to indicate that the
              <sourcexml>ci:cite</sourcexml> and <sourcexml>ci:content</sourcexml> start-tags and
            end-tags (but not their content) are dropped.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_emph-LxAdv-emph.dita">2013-01-08 - emph to emph:
            Added note for handling <targetxml>emph/emph</targetxml> has the same
              <targetxml>@typestyle</targetxml> value.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2012-11-29 - ci.cite
            to lnci.cite: Updated instructions to drop all <sourcexml>@spanref</sourcexml>.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2012-09-18 - ci.cite
            to lnci.cite: Instruction and example added for handling of
              <sourcexml>ci:cite/@type="cite4thisdoc"</sourcexml> for AU Journals/Newsitem.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2012-09-11 - ci.cite
            to lnci.cite: Created.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_emph-LxAdv-emph.dita">2012-02-28 - emph to emph:
            Added instructions for handling of
              <sourcexml>case:judges/emph/@typestyle="smcaps"</sourcexml>.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_emph-LxAdv-emph.dita">2011-12-15 - emph to emph:
            Created.</xref>
        </li>
      </ul>
    </section>

    <section>
      <title/>
      <p>2012-11-28: <ul>
          <li>BODY topic - Updated instructions and added example for processing
              <sourcexml>dict:definition/p</sourcexml>.</li>
          <li>BODY topic - Added instructions for when to add <targetxml>text</targetxml> under
              <targetxml>tei:def</targetxml>.</li>
          <li>GENERAL MARKUP topic - Added topic <sourcexml>remotelink</sourcexml> (self
            inter-document link) to <targetxml>ref:crossreference</targetxml> (intra-document
            link).</li>
        </ul>
      </p>
    </section>

    <section>
      <title/>
      <p>2012-11-09: <ul>
          <li>GENERAL MARKUP topic - Added <sourcexml>endnote</sourcexml> to
              <targetxml>endnote</targetxml> topic.</li>
        </ul>
      </p>
    </section>

    <section>
      <title>Dictionary (Version 1.5:BETA)</title>
      <p>2012-10-23: <ul>
          <li>GENERAL MARKUP topic - Removed reference to CR DARJ2012091912251100 for
              <sourcexml>refpt</sourcexml> to <targetxml>ref:anchor</targetxml> instruction.</li>
          <li>MAPPING TO ID DATA TYPE topic - Addition of conversion instructions for handling ID
            data type.</li>
        </ul>
      </p>
    </section>

    <section>
      <title/>
      <p>2012-10-12: <ul>
          <li>BODY topic - Addition of conversion Instructions for handling
              <sourcexml>dict:definition/see</sourcexml>.</li>
        </ul>
      </p>
    </section>

  </body>
	</dita:topic>

</xsl:stylesheet>