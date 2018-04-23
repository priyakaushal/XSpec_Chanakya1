<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:ci="http://www.lexis-nexis.com/ci" xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:classify="http://www.lexisnexis.com/xmlschemas/content/shared/classification/1/" xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" xmlns:globalentity="urn:x-lexisnexis:content:identified-entities:global:1" xmlns:legisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/legislation-info/1/" xmlns:lnci="http://www.lexisnexis.com/xmlschemas/content/shared/citations/1/" xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" xmlns:proc="http://www.lexisnexis.com/xmlschemas/content/shared/process-elements/1/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita ci docinfo leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="CA_Const-change-log">
  <title>Change Log</title>
  <body>
    <section>
      <title>legis 9.6_PROD</title>
      <p>2016-06-20</p>
      <ul>
        <li>
          <xref href="../../../Rosetta/DITA-CAN/CA08-Constitutions/leg.level.dita">2016-06-13 -
            leg:level id-CA08-14220: Updated target element mapping when source is not having
              <sourcexml>refpt</sourcexml> as a child of <sourcexml>leg:heading, leg:level,
              leg:level-vrnt,leg:level-not-in-force,leg:levelbody,leg:histnote</sourcexml> and note
            for generation of <targetxml>ref:anchor</targetxml> based on
              <sourcexml>@subdoc="true"</sourcexml> value.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_emph-LxAdv-emph.dita">2016-04-01 - emph
            to emph id-CCCC-10316: Added statement to clarify that children of emph should be
            processed.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_l-LxAdv-list.dita">2016-04-01 - l to
            list id-CCCC-10372: Added mapping instruction for handling h within listitem.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2016-03-23 - ci.cite to lnci.cite id-CCCC-10268: Updated main instructions to clarify
            that descendants of ci:cite, and not just children, are to be processed.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_edpnum-LxAdv-desig.dita">2016-03-15 -
            edpnum to desig id-CCCC-10308: Added rule for handling scenario when
              <sourcexml>pnum</sourcexml> and <sourcexml>edpnum </sourcexml> occur as siblings
            (applicable only for UK22CS). [RFA #2755]</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2016-02-05 - remotelink to ref:crossreference id-CCCC-10465: Added note and example
            when <sourcexml>remotelink</sourcexml> is a child of <sourcexml>emph</sourcexml>.
            Applicable on NZ17CC, Webstar: 319232 and 318735.</xref>
        </li>
      </ul>
    </section>
    <section>
      <title>2015-08-14 (legis 9.2_PROD) SEP</title>
      <ul>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_CAN_docinfo.custom-metafields-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta.meta.metaitem.dita">2015-08-13 - docinfo:custom-metafields to
            doc:legacy-metadata[@metadatasource="lbu-meta"]/meta/metaitem id-CCCC-10251: For Single
            Document Retrieval (SDR), <sourcexml>"actFirstDoc"</sourcexml> triggers output of an
            additional <targetxml>ref:cite4thisresource/lnci:cite/@type="act"</targetxml> where
            target <targetxml>lnci:content</targetxml> is copied from
              <sourcexml>leg:officialnum</sourcexml>. Affects CA05,CA06,CA07,CA08. Canada CR506 as
            related to WT 305581.</xref>
        </li>
      </ul>
    </section>
    <section>
      <title>2015-07-30 (legis 9.2_PROD) SEP</title>
      <ul>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_CAN_docinfo.custom-metafields-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta.meta.metaitem.dita">2015-07-29 - docinfo:custom-metafields to
            doc:legacy-metadata[@metadatasource="lbu-meta"]/meta/metaitem id-CCCC-10251: Update
              <targetxml>metaitem[@name="effect-date"]/value</targetxml> in the example to have a
            real date, "19950505", instead of all zeroes, "00000000". R4.5 Canada CR458.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_CAN_docinfo.custom-metafields-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta.meta.metaitem.dita">2015-07-28 - docinfo:custom-metafields to
            doc:legacy-metadata[@metadatasource="lbu-meta"]/meta/metaitem id-CCCC-10251: Canada Sort
            Option for Point in Time Legislation.
              <targetxml>metaitem[@name="effect-date"]/value</targetxml> shall have simple digit
            date validation and dashes added to separate YYYY-MM-DD. Affects CA05, 06, 07, 08. R4.5
            Canada CR458.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2015-07-16 - docinfo:assoc-links to doc:related-content id-CCCC-10284: Updated
            conversion for handling of <sourcexml>ci:cite/@normprotocol</sourcexml>,
              <targetxml>proc:param[@name="countrycode"]</targetxml>; added instructions for
              <sourcexml>docinfo:assoc-resource</sourcexml>.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2015-06-24 - remotelink to ref:crossreference id-CCCC-10465: Added clarification note
            about url, @normval, and @hrefclass. Webstar 302055.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2015-05-22 - docinfo:assoc-links to doc:related-content id-CCCC-10284: Clarification.
            Not a new rule or target. Within rules handling
              <sourcexml>remotelink[@service="DOC-ID"]</sourcexml>, added statement to create
            containing elements <targetxml>ref:locator/ref:locator-key</targetxml> which hold
              <targetxml>ref:key-name</targetxml> and <targetxml>ref:key-value</targetxml>. The
            xpath is controlled by schema and so conversions have been correct. CI examples were
            correct. The narrative rule is now explicit. R4.5 Content Issue 2326.</xref>
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
      </ul>
    </section>
    <section>
      <title>2015-03-26 (legis 9.2_PROD)</title>
      <ul>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.hier-LxAdv-doc.hier.dita">2015-03-25 - docinfo:hier to doc:hier id-CCCC-10297: Added note with rule for
              <sourcexml>title/num</sourcexml>. Suppress <sourcexml>num</sourcexml> tag but output
            content. Applicable for CA09 only. RFA 2249.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/DITA-CAN/CA08-Constitutions/document.highlights-to-doc.overview.dita">2015-03-25 - Document Highlights become doc:overview id-CA08-14230: Provide
            clarifications for text() PCDATA descendants and multiple child elements. Phase 5 RFA
            #204.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/DITA-CAN/CA08-Constitutions/document.highlights-to-doc.overview.dita">2015-03-24 - Document Highlights become doc:overview id-CA08-14230: Updated target
            XPATH to include <targetxml>bodytext/p/text</targetxml>. R4.5 RFA #2220.</xref>
        </li>
      </ul>
    </section>
    <section>
      <title>2015-03-20 (legis 9.2_PROD)</title>
      <ul>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_CAN_docinfo.custom-metafields-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta.meta.metaitem.dita">2015-03-19 - docinfo:custom-metafields to
            doc:legacy-metadata[@metadatasource="lbu-meta"]/meta/metaitem id-CCCC-10251: Within
            rules for First Act Doc, made the word act lower-case in source value to reflect recent
            data change. Formerly <sourcexml>"ActFirstDoc"</sourcexml>, now
              <sourcexml>"actFirstDoc"</sourcexml>. Affects CA05, 06, 07, 08. </xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2015-03-17 - ci.cite to lnci.cite id-CCCC-10268: An attribute
              <targetxml>@inline</targetxml> get added with <targetxml>desig</targetxml> element
            even when the source<sourcexml>pnum</sourcexml> is not having that
              attribute<sourcexml>@inline</sourcexml> Applicable on CA12 only.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/DITA-CAN/CA08-Constitutions/document.highlights-to-doc.overview.dita">2015-03-12 - Document Highlights become doc:overview id-CA08-14230: Created. R4.5 RFA
            #2220.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2015-02-24 - ci.cite to lnci.cite id-CCCC-10268: Example updated as per new rule an
            attribute <targetxml>@inline</targetxml>get added with
            <targetxml>desig</targetxml>element when the source<sourcexml>pnum</sourcexml>is not
            having that attribute<sourcexml>@inline</sourcexml>
          </xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/LxAdv_CA-ref.cite4thisresource-LxAdv-ref.parallelcite-doc.related-content.dita">2015-02-23 - ref:cite4thisresource with ref:parallelcite and doc:related-content
            id-CCCC-10497: Updated Scenario for CA02, when "DOC-ID" used with "DOCUMENT" service,
              <targetxml>proc:param/@name="targetdoclang"</targetxml> should be included. RFA# 2201,
            Applicable on CA02.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/LxAdv_CA-ref.cite4thisresource-LxAdv-ref.parallelcite-doc.related-content.dita">2015-02-19 - ref:cite4thisresource with ref:parallelcite and doc:related-content
            id-CCCC-10497: Updated Scenario for CA02, "DOC-ID" should be used with "DOCUMENT"
            service. RFA# 1873, Applicable on CA02.</xref>
        </li>
      </ul>
    </section>

    <section>
      <title>2015-02-13 (legis 9.2_PROD)</title>
      <ul>
        <li>
          <xref href="../../../Rosetta/DITA-CAN/CA08-Constitutions/docinfo.versioninfo.dita">2015-02-13 - docinfo:versioninfo id-CA08-14229: Create the rule and example for
            handling of <sourcexml>docinfo:versioninfo</sourcexml>
          </xref>
        </li>
      </ul>
    </section>
    <section>
      <title>2015-01-27 (legis 9.1_PROD)</title>
      <ul>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_CAN_docinfo.custom-metafields-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta.meta.metaitem.dita">2015-01-27 - docinfo:custom-metafields to
            doc:legacy-metadata[@metadatasource="lbu-meta"]/meta/metaitem id-CCCC-10251: For
            CA05,CA06,CA07 and CA08 Existing topic CA first document in "current" material
            (id-CCCC-10517) removed and added a note here to handle firstActDocument</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/LxAdv_CA-ref.cite4thisresource-LxAdv-ref.parallelcite-doc.related-content.dita">2015-01-26 - ref:cite4thisresource with ref:parallelcite and doc:related-content
            id-CCCC-10497: Update proc:param name="normprotocol" from value="jcite" to
            value="CAEditorial"; for CA01, CA02, CA04, CA05, CA06, CA07 and CA08. R4.5 RFA
            #1873.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.hier-LxAdv-doc.hier.dita">2015-01-23 - docinfo:hier to doc:hier id-CCCC-10297: Added note to convert
              <sourcexml>docinfo:hierlev/@exclude-from-displayunits="true"</sourcexml> into
              <targetxml>doc:hier/@includeintoc="false"</targetxml>.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.versioninfo--LxAdv_ref.groupid.dita">2015-01-21 - docinfo:versioninfo to ref:groupid id-CCCC-10499: Per Enterprise
            Architecture, update target urn from "urn:variants-1:" to "urn:cldi-1:". R4.5 RFA
            #2146.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2015-01-19 - docinfo:assoc-links to doc:related-content id-CCCC-10284: For CA05 - CA08-
            Updated Instruction and included "<targetxml>related-content-grp</targetxml>" markup
            inside the target Example 8 for conversion of QUERY link to doc:related-content.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2015-01-15 - docinfo:assoc-links to doc:related-content id-CCCC-10284: For CA03-
            Convert the QUERY link to doc:related-content. Refer Example 10. R4.5 RFA #2099.</xref>
        </li>
      </ul>
    </section>
    <section>
      <title>2015-01-15 (legis 9.1_PROD)</title>
      <ul>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2015-01-13 - docinfo:assoc-links to doc:related-content id-CCCC-10284: For CA05 - CA08
            Conversion Needs to split multiple ORs into a separate
              <targetxml>doc:related-content-item</targetxml>. Refer Example 9</xref>
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
      <title>2015-01-06 (legis 9.1_PROD)</title>
      <ul>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2015-01-02 - docinfo:assoc-links to doc:related-content id-CCCC-10284: Added
              <sourcexml>docinfo:assoc-links/remotelink[@service="QUERY"]</sourcexml> and
              <sourcexml>docinfo:assoc-links-grp/remotelink[@service="QUERY"]</sourcexml> to
            generate <targetxml>doc:related-content</targetxml> markup. Applicable on CA05.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/LxAdv_CA-legisinfo.statusgroup-LxAdv-classify.classification.dita">2015-01-02 - CA first document in "current" material id-CCCC-10517: Updated
              <targetxml>classify:classcode/@normval</targetxml> attribute value from false to true.
            R 4.5 Issue # 2048, Applicable on CA05-CA08.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2014-12-19 - docinfo:assoc-links to doc:related-content id-CCCC-10284: Updated target
            mapping for CA05 for handling
              <sourcexml>docinfo:assoc-links/remotelink[@service="QUERY"]</sourcexml>. Applicable on
            CA05.</xref>
        </li>
      </ul>
    </section>
    <section>
      <title>2014-12-19 (legis 9.1_PROD)</title>
      <ul>
        <li>
          <xref href="../../../Rosetta/common_newest/LxAdv_CA-legisinfo.statusgroup-LxAdv-classify.classification.dita">2014-12-19 - CA first document in "current" material id-CCCC-10517: Added new
            instruction for creation of
              <targetxml>classify:classification/classify:classitem/classify:classitem-identifier/classify:classname</targetxml>.
            Applicable on CA05-CA08.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/LxAdv_CA-ref.cite4thisresource-LxAdv-ref.parallelcite-doc.related-content.dita">2014-12-19 - ref:cite4thisresource with ref:parallelcite and doc:related-content
            id-CCCC-10497: Updated citation from [2000] A.C.F. No. 1985 to [2000] A.C.F. no 1985,
            for CA01.</xref>
        </li>
      </ul>
    </section>

    <section>
      <title>2014-12-18 (legis 9.1_PROD)</title>
      <ul>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2014-12-17 - docinfo:assoc-links to doc:related-content id-CCCC-10284: Added a Note for
            CA05, CA06, CA07 and CA08 for handling
              <sourcexml>docinfo:assoc-links-grp/remotelink[@service="QUERY"] </sourcexml>
          </xref>
        </li>
        <li>
          <xref href="../../../Rosetta/DITA-CAN/CA08-Constitutions/leg.juris.dita">2014-12-16 -
            leg:juris id-CA08-14218: Updated the instruction and example for handling
              <sourcexml>leg:juris</sourcexml> and added the new elements
              <targetxml>globalentity:entityReference</targetxml> and
              <targetxml>globalentity:content</targetxml> under
              the<targetxml>globalentity:entity/</targetxml> target markup.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/DITA-CAN/CA08-Constitutions/leg.num.dita">2014-12-16 -
            leg:num id-CA08-14224: Updated instruction and example for adding attribute
              <targetxml>@citetype</targetxml> with "reporter" value inside the
              <targetxml>ref:cite4thisresource</targetxml> in target conversion</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/LxAdv_CA-ref.cite4thisresource-LxAdv-ref.parallelcite-doc.related-content.dita">2014-12-16 - ref:cite4thisresource with ref:parallelcite and doc:related-content
            id-CCCC-10497: Added note for conversion of short term citations and it's come any
            combinations with the mandatory (primary or alternative citation) citations then short
            terms ciatation should be converetd according to short table. Applicable on
            CA06-CA07.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/LxAdv_CA-ref.cite4thisresource-LxAdv-ref.parallelcite-doc.related-content.dita">2014-12-16 - ref:cite4thisresource with ref:parallelcite and doc:related-content
            id-CCCC-10497: Added note to identify primary and alternate language when primary and
            alternate citation are same. Applicable on CA05-CA08.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/LxAdv_CA-ref.cite4thisresource-LxAdv-ref.parallelcite-doc.related-content.dita">2014-11-18 - ref:cite4thisresource with ref:parallelcite and doc:related-content
            id-CCCC-10497: For CA02- Updated instructions for "proc:param name="targetdoclang"
            value="" for both English and French. P4, Db issue #365</xref>
        </li>
      </ul>
    </section>

    <section>
      <title>2014-11-12 (legis 9.1_PROD)</title>
      <ul>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_entry_p-limited-LxAdv-entry_p.dita">2014-11-11 - entry/p-limited to entry/p id-CCCC-10319: Updated instruction when
            multiple consecutive <sourcexml>p-limited</sourcexml> elements occur within
              <sourcexml>entry</sourcexml>.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/LxAdv_CA-ref.cite4thisresource-LxAdv-ref.parallelcite-doc.related-content.dita">2014-11-11 - ref:cite4thisresource with ref:parallelcite and doc:related-content
            id-CCCC-10497: Added note and table "Terms conversion for CA05" for terms translation,
            Applicable on CA05.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/LxAdv_CA-ref.cite4thisresource-LxAdv-ref.parallelcite-doc.related-content.dita">2014-11-06 - ref:cite4thisresource with ref:parallelcite and doc:related-content
            id-CCCC-10497: Added some english to french terms for translation of the citation and
            also update c. to ch. in CA06 and CA07 table</xref>
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
      </ul>
    </section>
    <section>
      <title>2014-10-20 (legis 9.1_PROD)</title>
      <ul>
        <li>
          <xref href="../../../Rosetta/common_newest/LxAdv_CA-ref.cite4thisresource-LxAdv-ref.parallelcite-doc.related-content.dita">2014-10-20 - ref:cite4thisresource with ref:parallelcite and doc:related-content
            id-CCCC-10497: Updated the old citation inside the table for CA08 stream i.e. appendice
            II to Appendix II.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/LxAdv_CA-ref.cite4thisresource-LxAdv-ref.parallelcite-doc.related-content.dita">2014-10-20 - ref:cite4thisresource with ref:parallelcite and doc:related-content
            id-CCCC-10497: Updated instruction to remove english version and add french version. P4
            Db issue #324</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_title-LxAdv-title.dita">2014-10-07 -
            title to title id-CCCC-10479: Removed instruction and example to convert attribute
              <sourcexml>@searchtype="DIGEST-SUBJECT"</sourcexml>. Applicable to CA12.</xref>
        </li>
      </ul>
    </section>
    <section>
      <title>2014-10-01 (legis 9.0_PROD)</title>
      <ul>
        <li>
          <xref href="../../../Rosetta/common_newest/LxAdv_CA-ref.cite4thisresource-LxAdv-ref.parallelcite-doc.related-content.dita">2014-10-01 - ref:cite4thisresource with ref:parallelcite and doc:related-content
            id-CCCC-10497: Added the new citations inside the table for CA08 stream i.e. Annexe
            abrogratives to Repeal Schedules.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/LxAdv_CA-ref.cite4thisresource-LxAdv-ref.parallelcite-doc.related-content.dita">2014-10-01 - ref:cite4thisresource with ref:parallelcite and doc:related-content
            id-CCCC-10497: Updated CA05 table for "s." to "art." and "art." to "s." for citation
            "L.R.C." and "R.S.C.". Also updated the citation "L.N.B." to generate ch. to c..
            Applicable on CA05.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/LxAdv_CA-ref.cite4thisresource-LxAdv-ref.parallelcite-doc.related-content.dita">2014-10-01 - ref:cite4thisresource with ref:parallelcite and doc:related-content
            id-CCCC-10497: Added the new citation inside the table for CA08 stream i.e. Annexe
            abrogratives to Repeal Schedules.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/LxAdv_CA-ref.cite4thisresource-LxAdv-ref.parallelcite-doc.related-content.dita">2014-10-01 - ref:cite4thisresource with ref:parallelcite and doc:related-content
            id-CCCC-10497: Updated CA05 table for "s." to "art." and "art." to "s." for citation
            "L.R.C." and "R.S.C.". Also updated the citation "L.N.B." to generate ch. to c..
            Applicable on CA05.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_CAN_title-Chof-leg.heading_to-LexisAdvance_heading_title.dita">2014-10-01 - leg:heading/title to heading/title id-CCCC-10253: Added CA08 content
            stream code inside the rule for suppressed the "[@align="center"]" attribute in target
            mapping.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/LxAdv_CA-ref.cite4thisresource-LxAdv-ref.parallelcite-doc.related-content.dita">2014-09-23 - ref:cite4thisresource with ref:parallelcite and doc:related-content
            id-CCCC-10497: Added English <sourcexml>Enactment Clause</sourcexml> To
              <targetxml>Formule d'édiction </targetxml>, <sourcexml>Long Title</sourcexml> To
              <targetxml>Titre intégral</targetxml>, <sourcexml>Short Title</sourcexml> To
              <targetxml>Titre abrégé</targetxml>,<sourcexml>Preamble</sourcexml> To
              <targetxml>Préambule </targetxml> and vice versa in CA06-CA07 Table</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/LxAdv_CA-ref.cite4thisresource-LxAdv-ref.parallelcite-doc.related-content.dita">2014-09-23 - ref:cite4thisresource with ref:parallelcite and doc:related-content
            id-CCCC-10497: Added English <sourcexml>Enactment Clause</sourcexml> To
              <targetxml>Formule d'édiction </targetxml>, <sourcexml>Long Title</sourcexml> To
              <targetxml>Titre intégral</targetxml>, <sourcexml>Short Title</sourcexml> To
              <targetxml>Titre abrégé</targetxml>,<sourcexml>Preamble</sourcexml> To
              <targetxml>Préambule </targetxml> and vice versa in CA06-CA07 Table</xref>
        </li>
      </ul>
    </section>

    <section>
      <title>2014-09-22 (legis 9.0_PROD)</title>
      <ul>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.versioninfo--LxAdv_ref.groupid.dita">2014-09-15 - docinfo:versioninfo to ref:groupid id-CCCC-10499: Updated target mapping
            of <sourcexml>docinfo:versioninfo/docinfo:versionbranch</sourcexml> from Head to
              <targetxml>doc:docinfo/doc:membership/ref:groupid[@group-type="variants-1"]/ref:resourceid</targetxml>
          </xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_CAN_docinfo.custom-metafields-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta.meta.metaitem.dita">2014-09-15 - docinfo:custom-metafields to
            doc:legacy-metadata[@metadatasource="lbu-meta"]/meta/metaitem id-CCCC-10251: update
            target mapping of
              <sourcexml>docinfo:custom-metafields/docinfo:custom-metafield[@name="act-id"]</sourcexml>
            from Head to
              <targetxml>doc:docinfo/doc:membership/ref:groupid[@group-type="leg-id-1"]/ref:resourceid</targetxml>
          </xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/LxAdv_CA-ref.cite4thisresource-LxAdv-ref.parallelcite-doc.related-content.dita">2014-09-03 - ref:cite4thisresource with ref:parallelcite and doc:related-content
            id-CCCC-10497: Added instructions for proc:param name="targetdoclang". R4.5
            #1873.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/LxAdv_CA-ref.cite4thisresource-LxAdv-ref.parallelcite-doc.related-content.dita">2014-09-03 - ref:cite4thisresource with ref:parallelcite and doc:related-content
            id-CCCC-10497: Added instructions for proc:param name="targetdoclang". R4.5
            #1873.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/LxAdv_CA-ref.cite4thisresource-LxAdv-ref.parallelcite-doc.related-content.dita">2014-08-27 - ref:cite4thisresource with ref:parallelcite and doc:related-content
            id-CCCC-10497: Added the new rule for CA02 content streams for alternate language. P4
            issue #324.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/LxAdv_CA-ref.cite4thisresource-LxAdv-ref.parallelcite-doc.related-content.dita">2014-08-27 - ref:cite4thisresource with ref:parallelcite and doc:related-content
            id-CCCC-10497: Added the new rule for CA02 content streams for alternate language. P4
            issue #324.</xref>
        </li>
      </ul>
    </section>

    <section>
      <title>2014-08-25 (legis 8.8_PROD)</title>
      <ul>
        <li>
          <xref href="../../../Rosetta/DITA-CAN/CA08-Constitutions/leg.level-not-in-force.dita">2014-08-25 - leg:level-not-in-force id-CA08-14219: Added a note for handling of Editior
            Notes or French Notes which is comes under the
              <sourcexml>leg:bodytext/l/li/p/text</sourcexml> markup and its mapped with
              <targetxml>note[@notetype="instruction"]</targetxml>.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/LxAdv_CA-ref.cite4thisresource-LxAdv-ref.parallelcite-doc.related-content.dita">2014-08-25 - ref:cite4thisresource with ref:parallelcite and doc:related-content
            id-CCCC-10497: Added the new citation inside the table for CA08 i.e. R.S.C. 1985,
            Appendix II, No. 4, s. L.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/LxAdv_CA-ref.cite4thisresource-LxAdv-ref.parallelcite-doc.related-content.dita">2014-08-25 - ref:cite4thisresource with ref:parallelcite and doc:related-content
            id-CCCC-10497: Added Schedule to Annexe and vice a versa in C.R.C citation, Applicable
            for CA06 and CA07.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/LxAdv_CA-ref.cite4thisresource-LxAdv-ref.parallelcite-doc.related-content.dita">2014-08-21 - ref:cite4thisresource with ref:parallelcite and doc:related-content
            id-CCCC-10497: Updated C.O.M.C. with "no" and T.M.O.B. "No." for CA04- Db issue
            #326</xref>
        </li>
      </ul>
    </section>

    <section>
      <title>2014-08-12 (legis 8.8_PROD)</title>
      <ul>
        <li>
          <xref href="../../../Rosetta/DITA-CAN/CA08-Constitutions/leg.level-not-in-force.dita">2014-08-12 - leg:level-not-in-force id-CA08-14219: Instruction and example updated for
            handling of Editior Notes and Official Notes which is comes under the
              <sourcexml>leg:level-not-in-force</sourcexml> markup and its mapped with
              <targetxml>note[@notetype="instruction"]</targetxml> and
              <targetxml>note[@notesource="official"]</targetxml>.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.versioninfo--LxAdv_ref.groupid.dita">2014-08-11 - docinfo:versioninfo to ref:groupid id-CCCC-10499: Updated source snippet
            elements starting with "docinfo:" instead of "doc:".</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_CAN_docinfo.custom-metafields-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta.meta.metaitem.dita">2014-08-11 - docinfo:custom-metafields to
            doc:legacy-metadata[@metadatasource="lbu-meta"]/meta/metaitem id-CCCC-10251: Added
            identifier
              <sourcexml>docinfo:custom-metafields/docinfo:custom-metafield[@searchtype="act-id"]</sourcexml>
            to generate
              <targetxml>*:head/ref:groupid/ref:resourceid/@ref:resourcekey=urn:leg-id-1:X</targetxml>.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/LxAdv_CA-ref.cite4thisresource-LxAdv-ref.parallelcite-doc.related-content.dita">2014-08-11 - ref:cite4thisresource with ref:parallelcite and doc:related-content
            id-CCCC-10497: Updated references in the table of L.R.N.-B. to L.R.N.B. and L.N.-B. to
            L.N.B. for CA05.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_text-LxAdv-text.dita">2014-08-11 - text
            to text id-CCCC-10477: For CANADA Content Stream: Only move the <sourcexml>
              text@align</sourcexml> to the parent <targetxml>p</targetxml> if it is the only text
            in <sourcexml>p</sourcexml>, Otherwise, wrap the <sourcexml>text</sourcexml> with
              <targetxml>p</targetxml> and move the <sourcexml>@align</sourcexml> attribute to the
            newly created <targetxml> p</targetxml>.</xref>
        </li>
      </ul>
    </section>

    <section>
      <title>2014-08-01 (legis 8.7_PROD)</title>
      <ul>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_leg.num_ln.user-displayed-LxAdv-classify.classification.dita">2014-08-01 - leg:num[@ln.user-displayed="false"] to classify:classification: Updated
            the note with example for handling "solsak" scenario means it should be placed above the
            first <targetxml>legisinfo:officialtitle</targetxml> instead of the last element in the
              <targetxml>*:head</targetxml> section</xref>
        </li>
      </ul>
    </section>
    <section>
      <title>2014-07-30 (legis 8.7_PROD)</title>
      <ul>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_leg.num_ln.user-displayed-LxAdv-classify.classification.dita">2014-07-30 - leg:num[@ln.user-displayed="false"] to classify:classification: Added a
            note for handling "solsak" scenario means it should be placed above the first
              <targetxml>legisinfo:officialtitle</targetxml> instead of the last element in the
              <targetxml>*:head</targetxml> section</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/LxAdv_CA-ref.cite4thisresource-LxAdv-ref.parallelcite-doc.related-content.dita">2014-07-28 - ref:cite4thisresource with ref:parallelcite and doc:related-content
            id-CCCC-10497: Added the new citation inside the table for CA06 and CA07 i.e. CQLR, c.
            A-2.1, r.1.1 .</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/DITA-CAN/CA08-Constitutions/leg.currencydate.dita">2014-07-25
            - leg:currencydate id-CA08-14212: Added instruction to suppress target markup of
              <sourcexml>leg:currencydate</sourcexml> with it's child
              <sourcexml>remotelink</sourcexml> from conversion Webteam # 271366.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/LxAdv_CA-ref.cite4thisresource-LxAdv-ref.parallelcite-doc.related-content.dita">2014-07-24 - ref:cite4thisresource with ref:parallelcite and doc:related-content
            id-CCCC-10497: Added new rule for conversion of CA01, CA02, CA04 and updated instruction
            for CA05-CA08.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/LxAdv_CA-ref.cite4thisresource-LxAdv-ref.parallelcite-doc.related-content.dita">2014-07-21 - ref:cite4thisresource with ref:parallelcite and doc:related-content
            id-CCCC-10497: Updated CA01 citation [1986] A.C.A.C. no 1 and snippet.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/LxAdv_CA-ref.cite4thisresource-LxAdv-ref.parallelcite-doc.related-content.dita">2014-07-09 - ref:cite4thisresource with ref:parallelcite and doc:related-content
            id-CCCC-10497: Added primary and alternate language for CA04- Db issue #250</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_table-LxAdv-table.dita">2014-07-08 -
            table to table id-CCCC-10475: Updated instruction for added the following rarely
            occurring attributes <sourcexml>@char</sourcexml> inside the
              <sourcexml>entry</sourcexml>.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/LxAdv_CA-ref.cite4thisresource-LxAdv-ref.parallelcite-doc.related-content.dita">2014-07-07 - ref:cite4thisresource with ref:parallelcite and doc:related-content
            id-CCCC-10497: Added R and Sch alternatives in CA06 and CA07 table</xref>
        </li>
      </ul>
    </section>
    <section>
      <title>2014-07-03 (legis 8.7_PROD)</title>
      <ul>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.versioninfo-LxAdv-doc.versioninfo-scheme.dita">2014-07-02 - docinfo:versioninfo to doc:versioninfo id-CCCC-10307: Edit a note for
            Canada only to generate <targetxml>@day</targetxml> attribute value must be in
            sequential digit number. No need to add leading zero (0) to make the value in two
            digits. This immediate applies to ALL Canada streams.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/LxAdv_CA-ref.cite4thisresource-LxAdv-ref.parallelcite-doc.related-content.dita">2014-06-27 - ref:cite4thisresource with ref:parallelcite and doc:related-content
            id-CCCC-10497: Added table for CA04....Db issue #1552</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.versioninfo--LxAdv_ref.groupid.dita">2014-06-26 - docinfo:versioninfo to ref:groupid id-CCCC-10499: Make
              <targetxml>ref:resourcekey</targetxml> UCN value urn conform to PGUID registry, e.g.
            "urn:variants-1:03JC-55f4bd2a842a39d3580d89a0dcbb9cb0".</xref>
        </li>
      </ul>
    </section>
    <section>
      <title>2014-06-26 (legis 8.7_PROD)</title>
      <ul>
        <li>
          <xref href="../../../Rosetta/common_newest/LxAdv_CA-ref.cite4thisresource-LxAdv-ref.parallelcite-doc.related-content.dita">2014-06-25 - ref:cite4thisresource with ref:parallelcite and doc:related-content
            id-CCCC-10497: Added instruction for <targetxml>ref:marker</targetxml> and updated table
            for CA01-CA02, CA05-CA07.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_CAN_docinfo.custom-metafields-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta.meta.metaitem.dita">2014-06-23 - docinfo:custom-metafields to
            doc:legacy-metadata[@metadatasource="lbu-meta"]/meta/metaitem id-CCCC-10251: Added Rule
            for mapping
              <sourcexml>docinfo:custom-metafields/docinfo:custom-metafield/@act-id</sourcexml> in
            HEAD Section in target, this is applicable for CA05-CA08 only</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.doc-id-LxAdv-dcidentifier_lnmetaidentifier-scheme.dita">2014-06-23 - docinfo:doc-id to dc:identifier[@lnmeta:identifier-scheme] id-CCCC-10293:
            Note and Example removed - For CA05 Acts and Bills- Mapping in dc:identifier for act-no
            and chunk-no. Db issue #1464</xref>
        </li>
      </ul>
    </section>

    <section>
      <title>2014-06-20 (legis 8.7_PROD)</title>
      <ul>
        <li>
          <xref href="../../../Rosetta/DITA-CAN/CA08-Constitutions/leg.officialnum.dita">2014-06-20
            - leg:officialnum id-CA08-14227: Added a rule to move the first
              <sourcexml>leg:officialnum</sourcexml> to ref:parallelcite markup.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/DITA-CAN/CA08-Constitutions/leg.num.dita">2014-06-20 -
            leg:num id-CA08-14224: Removed instruction and example for when No leg:num exists, per
            LBU 6/19/14. Docs with no leg:num have no officialnum either. Also, removed solsak note
            and example since it is covered elsewhere in this CI.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/LxAdv_CA-ref.cite4thisresource-LxAdv-ref.parallelcite-doc.related-content.dita">2014-06-20 - ref:cite4thisresource with ref:parallelcite and doc:related-content
            id-CCCC-10497: Changed ref:parallelcite@citetype to "parallel" from "FrenchVersion" or
            "EnglishVersion" to be consistent with ref:parallelcite@citetype evreywhere else.</xref>
        </li>
      </ul>
    </section>

    <section>
      <title>2014-06-17 (legis 8.6 PROD)</title>
      <p>
        <ul>
          <li>
            <xref href="../../../Rosetta/DITA-CAN/CA08-Constitutions/leg.officialnum.dita">2014-06-17 - leg:officialnum id-CA08-14227: Instruction and example added for
              handling "English " and "French " text (means drop text "[Reprinted in " and
              "[Reproduite dans ") within <sourcexml>leg:officialnum</sourcexml> markup.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/DITA-CAN/CA08-Constitutions/leg.heading.dita">2014-06-17 -
              leg:heading id-CA08-14214: Added note and example for conversion need to move @align
              attribute from <sourcexml>heading/title[@align='center']</sourcexml> to
                <targetxml>heading[@align='center']</targetxml> in target mapping when input
              documents having a <sourcexml>docinfo:subtype</sourcexml> element with values
                <sourcexml>"cdc" or "dcc"</sourcexml>
            </xref>
          </li>
          <li>
            <xref href="../../../Rosetta/DITA-CAN/CA08-Constitutions/leg.marginal-note.dita">2014-06-17 - leg:marginal-note id-CA08-14223: Instruction and example updated for
              adding attribute <targetxml>[@notetype="reference"]</targetxml> inside the target
                <targetxml>marginnote</targetxml> element for handling the input
                <sourcexml>leg:marginal-note</sourcexml>.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/LxAdv_CA-ref.cite4thisresource-LxAdv-ref.parallelcite-doc.related-content.dita">2014-06-17 - ref:cite4thisresource with ref:parallelcite and doc:related-content
              id-CCCC-10497: Created.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.versioninfo-LxAdv-doc.versioninfo-scheme.dita">2014-06-09 - docinfo:versioninfo to doc:versioninfo id-CCCC-10307: Added note for
              Canada only to generate <targetxml>@day</targetxml> attribute value as per the source.
              No need to add zero (0) to make the value in two digits. This immediate applies to ALL
              Canada streams.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_table-LxAdv-table.dita">2014-06-04 -
              table to table id-CCCC-10475: For completeness, added instructions for the following
              rarely occurring attributes of <sourcexml>table/tgroup/colspec</sourcexml>:
                <sourcexml>@align</sourcexml>, <sourcexml>@char</sourcexml>,
                <sourcexml>@charoff</sourcexml>, <sourcexml>@colsep</sourcexml>,
                <sourcexml>@id</sourcexml>, <sourcexml>@rowsep</sourcexml>,
                <sourcexml>@searchtype</sourcexml>, and <sourcexml>@xml:lang</sourcexml>. This is in
              response to various minor questions on message boards that have been asked and
              answered over the past two years. These instructions should not trigger changes to
              existing conversion programs, as the programs have already been changed in response to
              previous message board answers. These instructions have been added so this topic is
              up-to-date with respect to current conversion program behavior for these rarely
              occuring attributes.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/DITA-CAN/CA08-Constitutions/leg.num.dita">2014-05-29 -
              leg:num id-CA08-14224: Added instruction and example, when No leg:num exit with text
              in it Webteam # 260692</xref>
          </li>
        </ul>
      </p>
    </section>
    <section>
      <title>2014-05-27 (legis 8.5 PROD)</title>
      <p><ul>
          <li>
            <xref href="leg.marginal-note.dita">2014-05-27- modified mapping of
                <sourcexml>leg:marginal-note</sourcexml> to
                <targetxml>primlaw:bodytext/marginnote</targetxml></xref>
          </li>
        </ul>
      </p>
    </section>
    <section>
      <title>2014-04-30 (legis 8.5: PROD)</title>
      <p>
        <ul>
          <li>
            <xref href="../../../Rosetta/DITA-CAN/CA08-Constitutions/leg.num_ci.cite.dita">2014-04-30 - leg:num/ci:cite: Update the instruction for adding the attribute
                <targetxml>@citetype</targetxml> with "reporter" value inside the
                <targetxml>ref:cite4thisresource</targetxml> in target conversion when input is
              having <sourcexml>leg:num/ci:cite@type="cite4thisdoc"</sourcexml>. Webteam # 255931 .
            </xref>
          </li>
        </ul>
      </p>
    </section>

    <section>
      <title>2014-04-15 (legis 8.5: PROD)</title>
      <p>
        <ul>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.versioninfo-LxAdv-doc.versioninfo-scheme.dita">2014-04-15 - docinfo:versioninfo to doc:versioninfo: Added the content stream code
              "CA08 Constitutions" inside the Note for handling empty use cases of
                <sourcexml>docinfo:versioninfo</sourcexml> for Canada streams.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_p-LxAdv-p.dita">2014-04-14 - p to p:
              Removed Colons from Labels.. DB item #1255</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2014-02-25 - remotelink to ref:crossreference: Updated instruction and created new
              example (#16) for handling <sourcexml>remotelink[@service="QUERY"]</sourcexml>. New
              instruction preserves pcdata but suppresses <sourcexml>remotelink</sourcexml> markup.
              Webstar #250335. Change applies immediately to all Pacific streams, and in the long
              run to all streams.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.doc-heading-LxAdv-dc.title.dita">2014-02-11 - docinfo:doc-heading to dc:title: Updated note when
                <sourcexml>emph</sourcexml> is child of <sourcexml>docinfo:doc-heading</sourcexml>
              then suppress <sourcexml>emph</sourcexml> element and retain its content in
                <targetxml>dc:title</targetxml>, These instructions apply immediately to
              CA12.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.topiccodes-to-LxAdv-classify.classification_classscheme_docinfo-topiccodes.dita">2014-02-03 - docinfo:topiccodes to
              classify:classification[@classscheme="docinfo:topiccodes"]: Added a special rule for
              UK07 contents, When element <sourcexml>docinfo:topiccode</sourcexml> contains
              attribute <sourcexml>@scheme="source-by-date"</sourcexml>, then conversion will
              suppress it including its contents as well. Phase 5 UK discussion-defect tracking:
              issue #156. </xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2014-02-03 - remotelink to ref:crossreference: Instruction updated if
                <sourcexml>remotelink</sourcexml> occurs as multiple, immediate siblings and without
              intermediary text within <sourcexml>title</sourcexml>. Also added a example for the
              same scenario. Phase 5 UK discussion-defect tracking issue #161</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_text-LxAdv-text.dita">2014-01-31 -
              text to text: Updated instruction, <targetxml>align</targetxml> will be moved in
                <targetxml>p</targetxml> in NL conversion. NZ09 commentary discussion board issue
              for handling <sourcexml>text/@align</sourcexml>
            </xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_Elements-LxAdv-Empty_Elements.dita">2014-01-16 - Suppress each empty element unless otherwise stated: Added list of
              elements to suppress if empty.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_date-Chof-docinfo.load-date-LxAdv-dc.date_lnmeta.datetype_load-date-scheme.dita">2014-01-07 - docinfo:load-date/date to dc:date[@lnmeta:datetype="load-date"]: Added a
              note along with example which contains "00" value in <sourcexml>@day="00"</sourcexml>
              and <sourcexml>@month="00"</sourcexml> attributes encountered in CANADA
              contents.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_l-LxAdv-list.dita">2014-01-06 - l to
              list: Added mapping instruction for nested lists.</xref>
          </li>
        </ul>
      </p>
    </section>

    <section>
      <title>2014-01-16 (legis 8.5: PROD)</title>
      <p>
        <ul>
          <li>
            <xref href="../../common_newest/Rosetta_date-Chof-docinfo.load-date-LxAdv-dc.date_lnmeta.datetype_load-date-scheme.dita">2014-01-07 - docinfo:load-date/date to dc:date[@lnmeta:datetype="load-date"]: Added a
              note along with example which contains "00" value in <sourcexml>@day="00"</sourcexml>
              and <sourcexml>@month="00"</sourcexml> attributes encountered in CANADA
              contents.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2013-12-30 -
              ci.cite to lnci.cite: Minor illustrative change. Added "(AU Journals/Newsitem)" to
              headings for last example to clarify that retention of
                <sourcexml>@type="cite4thisdoc"</sourcexml> is an exception for that content, as
              already described in narrative rules.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_CAN_docinfo.custom-metafields-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta.meta.metaitem.dita">2013-12-04 - docinfo:custom-metafields to
              doc:legacy-metadata[@metadatasource="lbu-meta"]/meta/metaitem: Updated target example
              for retaining "date" and "court" in target example.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_p-LxAdv-p.dita">2013-12-04 - p to p: Updated
              target example when <sourcexml>p</sourcexml> or <sourcexml>p/@nl="0"</sourcexml> comes
              in <sourcexml>references</sourcexml>, this change directly affects NZ07.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_p-LxAdv-p.dita">2013-11-21 - p to p: Updated
              instruction and example <sourcexml>p</sourcexml> or <sourcexml>p/@nl="0"</sourcexml>
              comes in <sourcexml>references</sourcexml>, this change directly affects NZ07.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_p-LxAdv-p.dita">2013-10-25 - p to p: Added
              instruction and example <sourcexml>p/@nl="0"</sourcexml> comes in
                <sourcexml>references</sourcexml>.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-10-23 - remotelink to ref:crossreference: Added Example when
                <sourcexml>remotelink</sourcexml> having child <sourcexml>emph</sourcexml>. Webteam
              # 239816</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_edpnum-LxAdv-desig.dita">2013-10-22 - edpnum to
              desig: Not a rule change. Modified 2nd example for clarity. Removed
                <sourcexml>refpt</sourcexml> from source markup. Not pertinent to
                <sourcexml>edpnum</sourcexml> rules. Separate rules for <sourcexml>refpt</sourcexml>
              provide details. Responds to UK LBU query.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_docinfo.doc-heading-LxAdv-dc.title.dita">2013-10-18 - docinfo:doc-heading to dc:title: Updated Instruction when
                <sourcexml>docinfo:doc-heading</sourcexml> contains word RULE: " or STATUTE:
              .</xref>
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
            <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-10-03 - remotelink to ref:crossreference: Added use case where remotelink
              contains @href which is a URL but does not contain @hrefclass='http'.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_table-LxAdv-table.dita">2013-09-16 - table to
              table: Removed an obsolete note regarding visual styling of tables.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_table-LxAdv-table.dita">2013-09-12 - table to
              table: WebTeam #s 235116, 235130, 235126: Added instructions for deleting extraneous
              instances of @morerows, @colsep and @rowsep. These instructions apply immediately to
              all UK streams and also to AU18.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_title-LxAdv-title.dita">2013-09-03 - title to
              title: Updated Instruction when <sourcexml>title</sourcexml> contains word "TITLE: "
              or "NAME: " or "SITE: ".</xref>
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
      </p>
    </section>
    <section>
      <title>2013-08-22 (legis 8.3: PROD)</title>
      <p>
        <ul>
          <li>
            <xref href="../../common_newest/Rosetta_docinfo.lbu-meta-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta-scheme.dita">2013-08-12 - docinfo:lbu-meta to doc:legacy-metadata[@metadatasource="lbu-meta"]: We
              removed the docinfo:lbu-meta "include" list so now there is only a "drop" list.
              Anything not on the "drop" list should be passed through. Webteam 230557.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_remotelink-self-inter-document-link-LxAdv-intra-document-link.dita">2013-08-12 - remotelink (self inter-document link) to ref:lnlink (intra-document
              link): Changed module heading from ref:crossreference to ref:lnlink. NO instructions
              are changed. WebTeam # 230229. Affects all streams.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_docinfo-LxAdv-doc.metadata_doc.docinfo.dita">2013-08-09 - docinfo to doc:metadata/doc:docinfo: Added instruction for creating
                <targetxml>dc:date[@lnmeta:datetype="conversion-date"]</targetxml>. Previously,
              "conversion-date" was created only if "load-date" was not present. Going forward,
              conversion should always create "conversion-date". This is not a retroactive change.
              It should be applied only to streams developed after Aug. 9 2013.</xref>
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
            <xref href="../../common_newest/Rosetta_remotelink-self-inter-document-link-LxAdv-intra-document-link.dita">2013-08-07 - remotelink (self inter-document link) to ref:lnlink (intra-document
              link): Changed target to <targetxml>ref:lnlink</targetxml>; formerly
                <targetxml>ref:crossreference</targetxml>. Changed because the only supported markup
              for intradoc linking is <targetxml>ref:lnlink</targetxml>, as per Bency Thomas.
              WebTeam # 230229. Affects all streams.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_docinfo.lbu-meta-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta-scheme.dita">2013-08-02 - docinfo:lbu-meta to doc:legacy-metadata[@metadatasource="lbu-meta"]:
              Added <sourcexml>@name="selection_criteria_variant"</sourcexml> to the list of values
              in docinfo:metaitem/@name that should be retained. And added a example.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_CAN_docinfo.custom-metafields-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta.meta.metaitem.dita">2013-08-01 - docinfo:custom-metafields to
              doc:legacy-metadata[@metadatasource="lbu-meta"]/meta/metaitem: Updated target example
              for retaining "JURIS-SORT", "COURT-SORT" and "TERM-SORT" in target example.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_docinfo.doc-heading-LxAdv-dc.title.dita">2013-08-01 - docinfo:doc-heading to dc:title: For Canada Content streams: Added a
              note and examples, when <sourcexml>docinfo:doc-heading</sourcexml> contains
                <sourcexml>nl</sourcexml> as a child element.</xref>
          </li>
        </ul></p>
    </section>
    <section>
      <title>2013-07-30 (legis 8.1: PROD)</title>
      <p>
        <ul>
          <li>
            <xref href="leg.level-not-in-force.dita">2013-07-30 - leg:level-not-in-force:
              Instruction and example updated for adding
                <targetxml>primlaw:level[@leveltype="amendment"]</targetxml> as wrapper element for
                <sourcexml>leg:level-not-in-force</sourcexml> handling.</xref>
          </li>
          <li>
            <xref href="leg.heading.dita">2013-07-30 - leg:heading: Instruction and example updated
              for retaining the attribute <targetxml>@align="center"</targetxml> in target mapping
              when input documents having a <sourcexml>docinfo:subtype</sourcexml> element with
              values <sourcexml>"cdc" or "dcc"</sourcexml>.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_docinfo-LxAdv-doc.metadata_doc.docinfo.dita">2013-07-18 - docinfo to doc:metadata/doc:docinfo: Added
                <sourcexml>@excludefromalerts</sourcexml> as one of the
                <sourcexml>docinfo</sourcexml> attributes to carry through</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_docinfo.doc-lang-and-doc-country-LxAdv-ROOT_xml.lang.dita">2013-07-16 - docinfo:doc-lang and docinfo:doc-country to @xml:lang and @xml:ID:
              Instruction narrative edited for language; no changes to mappings, no impact to
              stylesheets.</xref>
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
        </ul>
      </p>
    </section>
    <section>
      <title>2013-06-03 (legis 7.2: PROD)</title>
      <ul>
        <li>
          <xref href="leg.num.dita">2013-06-03 - leg:num to ref:citations/ref:cite4thisresource:
            Added a <sourcexml>leg:num</sourcexml> module for handling when leg:num contains just
            text.</xref>
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
          <xref href="../../common_newest/Rosetta_CAN_docinfo.custom-metafields-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta.meta.metaitem.dita">2013-05-24 - docinfo:custom-metafields to
            doc:legacy-metadata[@metadatasource="lbu-meta"]/meta/metaitem: Instruction and example
            added for handling of
              <sourcexml>docinfo:custom-metafield/@name="pageestimate"</sourcexml>.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_docinfo.versioninfo-LxAdv-doc.versioninfo-scheme.dita">2013-05-24 - docinfo:versioninfo to doc:versioninfo: Instructions added for handling
            empty use cases of <sourcexml>docinfo:versioninfo</sourcexml> for Canada content
            stream.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_CAN_title-Chof-leg.heading_to-LexisAdvance_heading_title.dita">2013-05-22 - leg:heading/title to heading/title: Suppressed the "[@align="center"]"
            attribute in target mapping and this rule will be applicable for CA05- Acts &amp; Bills,
            CA06-Regs and CA07-Court Rules.</xref>
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
          <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-05-08 - remotelink to ref:crossreference: Extended the list of allowable values
            for image handling.</xref>
        </li>
      </ul>
    </section>
    <section>
      <title>2013-05-02 (legis 7.1: PROD)</title>
      <p>First Release.</p>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA08-Constitutions\CA_Const-change-log.dita  -->
	<!--<xsl:message>CA_Const-change-log.xsl requires manual development!</xsl:message> -->

</xsl:stylesheet>