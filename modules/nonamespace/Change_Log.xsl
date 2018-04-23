<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:ci="http://www.lexis-nexis.com/ci" xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:source_lnci="http://www.lexis-nexis.com/lnci" xmlns:courtcase="http://www.lexisnexis.com/xmlschemas/content/legal/courtcase/1/" xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" xmlns:lnci="http://www.lexisnexis.com/xmlschemas/content/shared/citations/1/" xmlns:proc="http://www.lexisnexis.com/xmlschemas/content/shared/process-elements/1/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita case ci docinfo leg lnci">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="courtorder-changelog">
  <title>UK Case Practise Directions - Change Log</title>
  <body>
    <section>
      <title>courtorder 1.3 PROD</title>
      <p>2016-12-14 - RS:
      <ul>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_UK_docinfo.custom-metafields-LxAdv-dc.date_or_doc.docinfo_classify.classification.dita">2016-11-30 - (UK) docinfo:custom-metafield to dc:date or doc:metadata/doc:docinfo/classify:classification[@classscheme="uk-functional-information"] id-CCCC-10547: Added rule for "isDocBuilderAvailable"; and
            updated the example.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2016-11-16 - docinfo:assoc-links to doc:related-content id-CCCC-10284: Added to note regarding applying any rules related to 
            <targetxml>@anchoridref</targetxml>, referring specifically to section for "Identifiers to ID Data Type - 
            Handling Pattern Restrictions".</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_endnote-LxAdv-endnote.dita">2016-11-16 - endnote to endnote id-CCCC-10317: Added to note regarding applying any rules related to 
            <targetxml>@anchoridref</targetxml>, referring specifically to section for "Identifiers to ID Data Type - 
            Handling Pattern Restrictions".</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2016-11-16 - remotelink to ref:crossreference id-CCCC-10465: Added to note regarding applying any rules related to 
            <targetxml>@anchoridref</targetxml>, referring specifically to section for "Identifiers to ID Data Type - 
            Handling Pattern Restrictions".</xref>
        </li>
      </ul></p>
    </section>
    <section>
      <title>courtorder 1.3 PROD</title>
      <p>2016-11-17 - RS:
      <ul>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_inlineobject-LxAdv-ref.inlineobject_BLOBSTORE.dita">2016-11-07 - inlineobject to ref:inlineobject for BLOBSTORE images id-CCCC-10540: Updated the instruction for ref:key-name and
            proc:param attribute values.</xref>
        </li>
        <li>
        </li>
      </ul>
      </p>
    </section>
    <section>
      <title>courtorder 1.3 PROD</title>
      <p>2016-10-28 - RS:
      <ul>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_inlineobject-LxAdv-ref.inlineobject_BLOBSTORE.dita">2016-10-21 - inlineobject to ref:inlineobject for BLOBSTORE images id-CCCC-10540: Changed one proc:param name for target. Formerly
            <targetxml>@name="attachment-server"</targetxml>; changed to
            <targetxml>@name="object-server"</targetxml>.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_link-LxAdv-ref.lnlink_BLOBSTORE.dita">2016-10-21 - link[@filename] to ref:lnlink[@service="ATTACHMENT"] for BLOBSTORE images id-CCCC-10541: Updated the Blobstore related instruction for
            use standardize specific output parameters.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_lnlink_service_ATTACHMENT-LxAdv-ref.lnlink_BLOBSTORE.dita">2016-10-21 - lnlink[@service="ATTACHMENT"] to ref:lnlink[@service="ATTACHMENT"] for BLOBSTORE images id-CCCC-10542: Updated the Blobstore related instruction for use standardize specific output parameters.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.versioninfo-LxAdv-doc.versioninfo-scheme.dita">2016-10-17 - docinfo:versioninfo to doc:versioninfo id-CCCC-10307: Updated the instruction for handling the
            target attribute <targetxml>@normdate</targetxml>.
            [Webstar#6676189]</xref>
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
      </p>
    </section>
    
    <section>
      <title>courtorder 1.3 PROD</title>
      <p>2016-08-10 - SS:
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
            <xref href="../../../Rosetta/common_newest/Rosetta_blockquote-link-LxAdv-blockquote-p-text-ref.lnlink.dita">2016-08-03 - blockquote/link to blockquote/p/text/ref:lnlink id-CCCC-10246: Added Note about xml snippets that illustrate image
              handling. Note summarizes move from Apollo to Blobstore application. UK is first LBU to
              move to Blobstore.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2016-08-03 - remotelink to ref:crossreference id-CCCC-10465: Added Note about xml snippets that illustrate
              image handling. Note summarizes move from Apollo to Blobstore application. UK is
              first LBU to move to Blobstore.</xref>
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
            <xref href="../../../Rosetta/common_newest/Rosetta_blockquote-LxAdv-blockquote.dita">2016-07-29 - blockquote to blockquote id-CCCC-10247: Added Note about xml snippets that illustrate
              image handling. Note summarizes move from Apollo to Blobstore application. UK is
              first LBU to move to Blobstore. VSTS 76146</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_inlineobject-LxAdv-figure_ref.inlineobject.dita">2016-07-29 - inlineobject to figure/ref:inlineobject id-CCCC-10368: Added Note about xml snippets that illustrate
              image handling. Note summarizes move from Apollo to Blobstore application. UK is
              first LBU to move to Blobstore.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_refpt-Chof-p_text_emph-LxAdv-p_ref.anchor.dita">2016-07-27 - refpt child of p/text/emph to p/ref:anchor id-CCCC-10457: Added a note for handling of text which is
              comes under the <sourcexml>refpt</sourcexml> in source.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_UK_docinfo.custom-metafields-LxAdv-dc.date_or_doc.docinfo_classify.classification.dita">2016-07-26 - (UK) docinfo:custom-metafield to dc:date or doc:metadata/doc:docinfo/classify:classification[@classscheme="uk-functional-information"] id-CCCC-10547: Added rule for "resultType"; and updated the
              example.</xref>
          </li>
        </ul>
      </p>
    </section>
    <section>
      <title>courtorder 1.3 PROD</title>
      <p>2016-07-13 - JCG:
        <ul>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_UK_docinfo.custom-metafields-LxAdv-dc.date_or_doc.docinfo_classify.classification.dita">2016-07-13 - (UK) docinfo:custom-metafield to dc:date or doc:metadata/doc:docinfo/classify:classification[@classscheme="uk-functional-information"] id-CCCC-10547: Added this topic to the CI.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_UK_docinfo-LxAdv-doc.docinfo_classify.classification.dita">2016-07-13 - (UK) docinfo to doc:metadata/doc:docinfo/classify:classification[@classscheme="uk-functional-information"] id-CCCC-10546: Added this topic to the CI.</xref>
          </li>
        </ul>
      </p>
    </section>
    <section>
      <title>courtorder 1.3 PROD</title>
      <p>2016-06-17 - JCG:
        <ul>
          <li>
            <xref href="../../../Rosetta/DITA-UK/UK04_CourtOrder/case.judgments-case.constituents.dita">2016-06-17 - case:constituents id-UK04-27634: Added an instruction regarding parsing of
              <sourcexml>person/name.text</sourcexml> when it contains multiple child
              <sourcexml>emph</sourcexml> elements, and also added several clarifications regarding parsing the contents of <sourcexml>person/name.text</sourcexml>. These changes are related to resolution of issues arising from Rosetta delivered in March 2016.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_refpt-Chof-p_text-LxAdv-p_ref.anchor.dita">2016-04-28 - refpt child of p/text to p/ref:anchor id-CCCC-10456: Added one more source and target example.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_emph-LxAdv-emph.dita">2016-04-01 - emph to emph id-CCCC-10316: Added statement to clarify that children of emph should be processed.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_l-LxAdv-list.dita">2016-04-01 - l to list id-CCCC-10372: Added mapping instruction for handling h within listitem.</xref>
          </li>
        </ul>
      </p>
    </section>
    <section>
      <title>courtorder 1.3 PROD</title>
      <p>2016-03-24 - JCG:
        <ol>
          <li><xref href="../../../Rosetta/common_newest/Rosetta_footnote-LxAdv-footnote.dita">2016-03-24 - footnotegrp and footnote to footnotegrp and footnote id-CCCC-10322: added this common topic to the CI.</xref></li>
          <li>
            <xref href="../../../Rosetta/DITA-UK/UK04_CourtOrder/footnotegrp.dita">2016-03-24 - footnotegrp, footnote, &amp; fnr id-UK04-27629: Added instructions regarding <sourcexml>fnr</sourcexml> and <sourcexml>/CASEDOC/case:body/case:headnote/footnotegroup</sourcexml>. These instructions also now reference the newly added common topic for <sourcexml>footnotegrp</sourcexml>, <sourcexml>footnote</sourcexml>, and <sourcexml>fnr</sourcexml>.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2016-03-23 - ci.cite to lnci.cite id-CCCC-10268: Updated main instructions to clarify that descendants of ci:cite, and not just children, are to be processed.</xref>
          </li>
        </ol>
      </p>
    </section>
    <section>
      <title>courtorder 1.2 PROD</title>
      <p>2016-03-02 - JCG:
        <ol>
          <li>
            <xref href="../../../Rosetta/DITA-UK/UK04_CourtOrder/catchwordgrp.dita">2016-02-16 - catchwordgrp id-UK04-27628: Modified existing instructions to clearly explain
              how to handle multiple <sourcexml>catchphrase</sourcexml> elements occuring within the
              same <sourcexml>catchwords</sourcexml> element. Then, added an instruction to handle
              punctuation/seperator characters occurring outside of (between)
              <sourcexml>catchphrase</sourcexml> elements (as direct PCDATA of
              <sourcexml>catchwords</sourcexml>). Finally, added an example to illustrate this
              senario. (International Content RFA List, issue #2768)</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2016-02-05 - remotelink to ref:crossreference id-CCCC-10465: Added note and example when
              <sourcexml>remotelink</sourcexml> is a child of <sourcexml>emph</sourcexml>. Webstar: 319232 and 318735.</xref>
          </li>
          <li>2016-02-01 - docinfo:doc-heading to dc:title id-CCCC-10292: Removed this topic and replaced it with <xref href="../../../Rosetta/common_newest/Rosetta_UK_docinfo.doc-heading-LxAdv-SUPPRESS.dita"/>. Requested in UXRs for these streams during November 2015.</li>
          <li>
            <xref href="../../../Rosetta/DITA-UK/UK04_CourtOrder/case.casename.dita">2016-02-01 - case:casename id-UK04-27609: Added note regarding additional conversion described in the topic (UK01-UK04) case:casename and case:reportercite to dc:title id-CCCC-10531. Requested in UXRs for these streams during November 2015.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/DITA-UK/UK04_CourtOrder/case.reportercite.dita">2016-02-01 - case:reportercite id-UK04-27627: Added note regarding additional conversion described in the topic (UK01-UK04) case:casename and case:reportercite to dc:title id-CCCC-10531. Requested in UXRs for these streams during November 2015.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_UK_case.casename-Plus-case.reportercite-LxAdv-dc.title.dita">2015-11-20 - (UK01-UK04) case:casename and case:reportercite to dc:title id-CCCC-10531: Added this topic. Requested in UXRs for these streams during November 2015.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_UK_docinfo.doc-heading-LxAdv-SUPPRESS.dita">2015-11-20 - (UK01-UK04) docinfo:doc-heading is SUPPRESSED id-CCCC-10532: Added this topic. Requested in UXRs for these streams during November 2015.</xref>
          </li>
        </ol>
      </p>
    </section>
    <section>
      <title>courtorder 1.2 PROD</title>
      <p>2015-10-02 - JCG:
        <ol>
          <li>
            <xref href="../../../Rosetta/DITA-UK/UK04_CourtOrder/case.parallelcite.dita">2015-09-30 - case:parallelcite id-UK04-27626: Changed target of conversion instruction to be
              <targetxml>ref:parallelcite</targetxml>, and updated examples. (Previous taget was
              <targetxml>ref:cite4thisresource</targetxml>.)</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2015-09-15 - ci.cite to lnci.cite id-CCCC-10268: Updated instruction to suppress the attribute
              <sourcexml>@type</sourcexml> with value "legref" in target. [Webstar #6245139].</xref>
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
            <xref href="../../../Rosetta/common_newest/Rosetta_lnlink_service_SEARCH-LxAdv-SUPPRESS.dita">2015-09-08 - lnlink[@service='SEARCH'] is SUPPRESSED id-CCCC-10397: Minor XPATH correction in instruction title and body to change 
              <sourcexml>lnlink/@service='SEARCH'</sourcexml> to be <sourcexml>lnlink[@service='SEARCH']</sourcexml>.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_lnlink_service_ATTACHMENT-LxAdv-ref.lnlink.dita">2015-09-08 - lnlink[@service="ATTACHMENT"] to ref:lnlink[@service="ATTACHMENT"] id-CCCC-10396: Minor XPATH correction in instruction title and body to change 
              <sourcexml>lnlink/@service="ATTACHMENT"</sourcexml> to be <sourcexml>lnlink[@service="ATTACHMENT"]</sourcexml>, 
              <targetxml>ref:lnlink</targetxml> to be <targetxml>ref:lnlink[@service="ATTACHMENT"]</targetxml>, and 
              <targetxml>ref:lnlink/@service="ATTACHMENT"</targetxml> to be <targetxml>ref:lnlink[@service="ATTACHMENT"]</targetxml>.</xref>
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
            <xref href="../../../Rosetta/DITA-UK/UK04_CourtOrder/case.judgments-case.constituents.dita">2015-08-25 - case:constituents id-UK04-27634: Added a clarification regarding parsing of
              <sourcexml>person/name.text</sourcexml> when it contains a child
              <sourcexml>emph</sourcexml> element, and provided examples demonstrating this. (R4.5
              Content Issue List item #2381)</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/DITA-UK/UK04_CourtOrder/case.judgments-case.constituents.dita">2015-08-24 - case:constituents id-UK04-27634: Added an instruction indicating a period should be
              added to <targetxml>courtcase:counsel</targetxml> if it doesn't end with one, and provided
              an example demonstrating this. Also added a comment clarifying that multiple
              <sourcexml>case:constituent</sourcexml> elements will each become one (or more) separate
              <targetxml>courtcase:counsel</targetxml> elements. Triggered by discovery of slightly
              differet format in documents provided as part of R4.5 Content Issue List item
              #2381.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2015-07-16 - docinfo:assoc-links to doc:related-content id-CCCC-10284: Updated conversion for handling of
              <sourcexml>ci:cite/@normprotocol</sourcexml>, <targetxml>proc:param[@name="countrycode"]</targetxml>; added
              instructions for <sourcexml>docinfo:assoc-resource</sourcexml>.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_person-LxAdv-person.person.dita">2015-07-16 - person to person:person id-CCCC-10428: Added instruction for
              <sourcexml>person/remotelink</sourcexml> mapping to <targetxml>ref:lnlink</targetxml>.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2015-06-24 - remotelink to ref:crossreference id-CCCC-10465: Added clarification note about url, @normval, and @hrefclass. Webstar 302055.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2015-05-22 - docinfo:assoc-links to doc:related-content id-CCCC-10284: Clarification. Not a new rule or target. Within rules handling
              <sourcexml>remotelink[@service="DOC-ID"]</sourcexml>, added statement to create containing elements
              <targetxml>ref:locator/ref:locator-key</targetxml> which hold <targetxml>ref:key-name</targetxml> and
              <targetxml>ref:key-value</targetxml>. The xpath is controlled by schema and so conversions have been
              correct. CI examples were correct. The narrative rule is now explicit. R4.5 Content Issue 2326.</xref>
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
            <xref href="../../../Rosetta/common_newest/Rosetta_remotelink-Chof-url-LxAdv-url.dita">2015-05-22 - url/remotelink to url id-CCCC-10464: Added an instruction to explicitly indicate <sourcexml>remotelink/@status</sourcexml> is always dropped (suppressed). This is a very low-priority change and has been added for technical correctness, particularly with respect to new CIs. Existing scripts do not have to implement this change unless needed since prior to the change <targetxml>remotelink/@status</targetxml> handling was not explicitly specified.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.doc-heading-LxAdv-dc.title.dita">2015-05-05 - docinfo:doc-heading to dc:title id-CCCC-10292: Added note to convert (TM), (R), and (MC) to
              unicode code points. DB # 45.</xref>
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
            <xref href="../../../Rosetta/common_newest/Rosetta_classification_classitem_topic.topicreference-Chof-docinfo-LxAdv-doc.docinfo_classify.classification.dita">2015-03-07 - classification/classitem[@classscheme="topic:topicReference"] to classify:classification/classify:classitem/topic:topicReference id-CCCC-10516: Added an indication that this mark-up may also occur within <sourcexml>levelinfo</sourcexml> (as well as within <sourcexml>docinfo</sourcexml> as originally stated).</xref>
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
            <xref href="../../../Rosetta/common_newest/Rosetta_pnum-LxAdv-desig.dita">2015-02-24 - pnum to desig id-CCCC-10434: An attribute <targetxml>@inline</targetxml>get added with <targetxml>desig</targetxml>element even when the source<sourcexml>pnum</sourcexml>is not having that attribute<sourcexml>@inline</sourcexml>
            </xref>
          </li>
        </ol>
      </p>
    </section>
    <section>
      <title>courtorder 1.2 PROD</title>
      <p>2015-02-04 - JCG:
        <ol>
          <li>
            <xref href="../../../Rosetta/DITA-UK/UK04_CourtOrder/case.priorhist.dita">2015-02-04 - case:priorhist id-UK04-27635: Added this topic. (R4.5 Content Issue List item #2151)</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/DITA-UK/UK04_CourtOrder/case.content.dita">2015-02-04 -
              case:content id-UK04-27633: Added this topic and moved the instructions for
                <sourcexml>case:content</sourcexml> child elements to subsections within it. (As
              part of changes made due to R4.5 Content Issue List items #2149, #2150, and
              #2151.)</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/DITA-UK/UK04_CourtOrder/case.judgments-case.constituents.dita">2015-02-04 - case:constituents id-UK04-27634: Added this topic. (R4.5 Content Issue List item
              #2149)</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/DITA-UK/UK04_CourtOrder/note-chof-case.content.dita">2015-02-04 - note id-UK04-27636: Added this topic. (R4.5 Content Issue List item #2150)</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.hier-LxAdv-doc.hier.dita">2015-01-23 - docinfo:hier to doc:hier id-CCCC-10297: Added note to convert <sourcexml>docinfo:hierlev/@exclude-from-displayunits="true"</sourcexml> into
              <targetxml>doc:hier/@includeintoc="false"</targetxml>.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2015-01-19 - docinfo:assoc-links to doc:related-content id-CCCC-10284: For CA05 - CA08- Updated Instruction and
              included "<targetxml>related-content-grp</targetxml>" markup inside the target Example
              8 for conversion of QUERY link to doc:related-content.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2015-01-15 - docinfo:assoc-links to doc:related-content id-CCCC-10284: For CA03- Convert the QUERY link to doc:related-content. Refer Example 10. R4.5 RFA #2099.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2015-01-13 - docinfo:assoc-links to doc:related-content id-CCCC-10284: For CA05 - CA08 Conversion Needs to split
              multiple ORs into a separate <targetxml>doc:related-content-item</targetxml>. Refer
              Example 9</xref>
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
            <xref href="../../../Rosetta/common_newest/Rosetta_remotelink-Chof-url-LxAdv-url.dita">2015-01-09 - url/remotelink to url id-CCCC-10464: Within use case that maps to
              <targetxml>ref:lnlink</targetxml>, added exceptional rule to not concatenate values when
              <sourcexml>@hrefclass</sourcexml> content is already present in
              <sourcexml>@href</sourcexml>. Expanded example to illustrate the scenario. Responds to
              data for UK10 Dictionaries but applies in general. R4.5 Content Issue 2120.</xref>
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
              <sourcexml>docinfo:assoc-links-grp/remotelink[@service="QUERY"]
              </sourcexml>
            </xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_classification_classitem_topic.topicreference-Chof-docinfo-LxAdv-doc.docinfo_classify.classification.dita">2014-12-15 - classification/classitem[@classscheme="topic:topicReference"] to classify:classification/classify:classitem/topic:topicReference id-CCCC-10516: New section. Responds to discussion board
              item for UK11-DA but markup expected for all UK streams and rule will apply for
              any jurisdiction where the markup occurs. R4.5 Content Issue 2073.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2014-12-08 - ci.cite to lnci.cite id-CCCC-10268: Addition of mapping for <sourcexml>ci:pinpoint</sourcexml> to 
              <targetxml>lnci:pinpoint</targetxml> and example from US LPA content.</xref>
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
            <xref href="../../../Rosetta/common_newest/Rosetta_lnlink_service_ATTACHMENT-LxAdv-ref.lnlink.dita">2014-10-15 - lnlink/@service="ATTACHMENT" to ref:lnlink id-CCCC-10396: Rewrote instructions, including the correction of a typographic error, and added an example.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_title-LxAdv-title.dita">2014-10-07 - title to title id-CCCC-10479: Removed instruction and example to convert attribute <sourcexml>@searchtype="DIGEST-SUBJECT"</sourcexml>. Applicable to CA12.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2014-09-16 - docinfo:assoc-links to doc:related-content id-CCCC-10284: Added a note to create
              <targetxml>proc:param/@name="attachment-smi"</targetxml> and
              <targetxml>proc:param/@value</targetxml> as these was there in the snippet but was
              missing in instruction and also added a note in to simplify in output
              <targetxml>ref:key-value/@value</targetxml>
            </xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2014-08-21 - docinfo:assoc-links to doc:related-content id-CCCC-10284: Added instructions and an example for converting
              <sourcexml>lnlink[@service="ATTACHMENT"]</sourcexml> to
              <targetxml>ref:lnlink</targetxml>. Applicable on CA05-CA08.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_table-LxAdv-table.dita">2014-07-08 - table to table id-CCCC-10475: Updated instruction for added the
              following rarely occurring attributes <sourcexml>@char</sourcexml> inside the <sourcexml>entry</sourcexml>.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.doc-id-LxAdv-dcidentifier_lnmetaidentifier-scheme.dita">2014-06-23 - docinfo:doc-id to dc:identifier[@lnmeta:identifier-scheme] id-CCCC-10293: Note and Example removed - For CA05 Acts and
              Bills- Mapping in dc:identifier for act-no and chunk-no. Db issue #1464</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2014-06-18 - docinfo:assoc-links to doc:related-content id-CCCC-10284: Corrected minor typos in <sourcexml>lnlink[@service="QUERYLINK"]</sourcexml> instructions.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2014-06-13 - docinfo:assoc-links to doc:related-content id-CCCC-10284: Added instructions and an example for converting
              <sourcexml>lnlink[@service="QUERYLINK"]</sourcexml> to
              <targetxml>ref:lnlink</targetxml>.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_table-LxAdv-table.dita">2014-06-04 - table to table id-CCCC-10475: For completeness, added instructions for the
              following rarely occurring attributes of <sourcexml>table/tgroup/colspec</sourcexml>:
              <sourcexml>@align</sourcexml>, <sourcexml>@char</sourcexml>,
              <sourcexml>@charoff</sourcexml>, <sourcexml>@colsep</sourcexml>,
              <sourcexml>@id</sourcexml>, <sourcexml>@rowsep</sourcexml>,
              <sourcexml>@searchtype</sourcexml>, and <sourcexml>@xml:lang</sourcexml>. This is in
              response to various minor questions on message boards that have been asked and answered
              over the past two years. These instructions should not trigger changes to existing
              conversion programs, as the programs have already been changed in response to previous
              message board answers. These instructions have been added so this topic is up-to-date with
              respect to current conversion program behavior for these rarely occuring
              attributes.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_page-LxAdv-ref.page.dita">2014-06-03 - page to ref:page id-CCCC-10426: Added instruction and example to generate
              <targetxml>doc:pagination/doc:pagination-scheme</targetxml> in target and
              this immediately applies to all LNI streams.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.doc-id-LxAdv-dcidentifier_lnmetaidentifier-scheme.dita">2014-05-21 - docinfo:doc-id to dc:identifier[@lnmeta:identifier-scheme] id-CCCC-10293: For CA05 Acts and Bills- Mapping in dc:identifier for act-no and chunk-no.. Db issue #1464 </xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2014-04-28 - docinfo:assoc-links to doc:related-content id-CCCC-10284: Clarified instructions regarding
              <sourcexml>link</sourcexml> elements and added an example (#4) illustrating the special
              <sourcexml>text/link</sourcexml> conversion. No mapping rules where changed or
              added.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2014-04-21 - docinfo:assoc-links to doc:related-content id-CCCC-10284: Added an instruction to handle
              <sourcexml>link</sourcexml> elements. These can potentially occur in any future UK data
              and will be present in stream UK21fl when those documents become available later in
              2014.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_p-LxAdv-p.dita">2014-04-14 - p to p id-CCCC-10424: Removed Colons from Labels.. DB item #1255</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2014-04-03 - docinfo:assoc-links to doc:related-content id-CCCC-10284: Illustrative changes. Examples modified. Mapping
              for <sourcexml>ci:cite</sourcexml> added to Example 3. Former Examples 4 and 5 removed to
              avoid confusion with special AU-NZ use case described in a separate module. R4.5 Content
              issue #1125, for AU-NZ, has prompted the changes for this general module.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2014-03-25 - docinfo:assoc-links to doc:related-content id-CCCC-10284: Added rule and example for
              <sourcexml>docinfo:assoc-links/docinfo:assoc-links-grp/ci:cite</sourcexml>. R4.5 Content
              issue #1125</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2014-02-25 - remotelink to ref:crossreference id-CCCC-10465: Updated instruction and created new example (#16)
              for handling <sourcexml>remotelink[@service="QUERY"]</sourcexml>. New instruction
              preserves pcdata but suppresses <sourcexml>remotelink</sourcexml> markup. Webstar #250335.
              Change applies immediately to all Pacific streams, and in the long run to all
              streams.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.doc-heading-LxAdv-dc.title.dita">2014-02-11 - docinfo:doc-heading to dc:title id-CCCC-10292: Updated note when <sourcexml>emph</sourcexml> is
              child of <sourcexml>docinfo:doc-heading</sourcexml> then suppress
              <sourcexml>emph</sourcexml> element and retain its content in
              <targetxml>dc:title</targetxml>, These instructions apply immediately to
              CA12.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_pgrp-LxAdv-pgrp.dita">2014-02-11 - pgrp to pgrp id-CCCC-10431: Add instruction and example <sourcexml>pgrp/@subdoc</sourcexml> and <sourcexml>pgrp/@toc-caption</sourcexml>. Support Discussion Board: NZ09 Commentary, Form and Precedents</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.topiccodes-to-LxAdv-classify.classification_classscheme_docinfo-topiccodes.dita">2014-02-03 - docinfo:topiccodes to classify:classification[@classscheme="docinfo:topiccodes"] id-CCCC-10306: Added a special rule for UK07 contents, When element <sourcexml>docinfo:topiccode</sourcexml> contains attribute <sourcexml>@scheme="source-by-date"</sourcexml>, then conversion will suppress it including its contents as well. Phase 5 UK discussion-defect tracking: issue #156. </xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2014-02-03 - remotelink to ref:crossreference id-CCCC-10465: Instruction updated if
              <sourcexml>remotelink</sourcexml> occurs as multiple, immediate siblings and without
              intermediary text within <sourcexml>title</sourcexml>. Also added a example for the same
              scenario. Phase 5 UK discussion-defect tracking issue #161</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_Elements-LxAdv-Empty_Elements.dita">2014-01-16 - Suppress each empty element unless otherwise stated id-CCCC-10310: Added list of elements to suppress if empty.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_l-LxAdv-list.dita">2014-01-06 - l to list id-CCCC-10372: Added mapping instruction for nested lists.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_Topic_Identifiers.dita">2014--0-5- - Topic Identifiers id-CCCC-10481: Created.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_endnote-LxAdv-endnote.dita">2013-12-18 - endnote to endnote id-CCCC-10317: Instruction added to convert <sourcexml>remotelink/@refpt</sourcexml> to <targetxml>footnote-ref/@anchoridref</targetxml>.  WebTeam #5158742 - AU04. Applies generally to all LBUs and streams.</xref>
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
            <xref href="../../../Rosetta/common_newest/Rosetta_UK_docinfo.custom-metafields-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta.meta.metaitem.dita">2013-11-20 - docinfo:custom-metafields to doc:legacy-metadata[@metadatasource="lbu-meta"]/meta/metaitem id-CCCC-10485: Added instruction to handle
              <sourcexml>docinfo:custom-metafields/docinfo:custom-metafield/@name="jurisdiction"</sourcexml>
              is "European"  Webteam # 239816 </xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_glp.note-Chof-li-LxAdv-listitem-note.dita">2013-11-07 - l/glp:note to list/note id-CCCC-10336: Fixed title to correctly indicate mapping described. Not a rule change.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.alt-renditions-LxAdv-doc.alt-renditions.dita">2013-10-29 - docinfo:alt-renditions/docinfo:alt-rendition to doc:alt-renditions/doc:alt-rendition id-CCCC-10283: Added instruction and example for UK06 Laws/Acts/Bills/Measures and UK07 Regulation place the text of <sourcexml>leg:officialname</sourcexml> in <targetxml>doc:alt-renditions/doc:alt-rendition/ref:lnlink/ref:marker</targetxml> (Webteam #243521)</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/DITA-UK/UK04_CourtOrder/case.parallelcite.dita">2013-10-25 - case:parallelcite id-UK04-27626: No substantive change, just a correction of a typographic error: fixed spelling of "parallel" (was misspelt as "paralell" in several places).</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_p-LxAdv-p.dita">2013-10-25 - p to p id-CCCC-10424: Added instruction and example <sourcexml>p/@nl="0"</sourcexml> comes in <sourcexml>references</sourcexml>.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-10-23 - remotelink to ref:crossreference id-CCCC-10465: Added Example when
              <sourcexml>remotelink</sourcexml> having child <sourcexml>emph</sourcexml>. Webteam #
              239816</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.doc-heading-LxAdv-dc.title.dita">2013-10-18 - docinfo:doc-heading to dc:title id-CCCC-10292: Updated Instruction when <sourcexml>docinfo:doc-heading</sourcexml> contains word RULE: " or STATUTE: .</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_Elements-LxAdv-Empty_Elements.dita">2013-10-14 - Suppress each empty element unless otherwise stated id-CCCC-10310: Changed antecedent to singular to match
              instructions.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_refpt-Chof-p_text-LxAdv-p_ref.anchor.dita">2013-10-11 - refpt child of p/text to p/ref:anchor id-CCCC-10456: Added a note and update the target examples when refpt
              comes without attribute <sourcexml>[@type="ext"]</sourcexml> and
              <sourcexml>[@type="local"]</sourcexml> in source documents.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_refpt-Chof-p_text_emph-LxAdv-p_ref.anchor.dita">2013-10-11 - refpt child of p/text/emph to p/ref:anchor id-CCCC-10457: Added a note and update the target examples when refpt
              comes without attribute <sourcexml>[@type="ext"]</sourcexml> and
              <sourcexml>[@type="local"]</sourcexml> in source documents.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_p-LxAdv-p.dita">2013-10-09 - p to p id-CCCC-10424: Added instruction and example <sourcexml>p</sourcexml> comes with <sourcexml>@nl=”0”</sourcexml>.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_endnote-LxAdv-endnote.dita">2013-10-07 - endnote to endnote id-CCCC-10317: Instruction and example for added for the Xpath <sourcexml>leg:bodytext/glp:note/l/li</sourcexml> related to <targetxml>endnote</targetxml> handling. WebTeam # is 238790.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-10-03 - remotelink to ref:crossreference id-CCCC-10465: Added use case where remotelink contains @href
              which is a URL but does not contain @hrefclass='http'.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_link-LxAdv-ref.lnlink.dita">2013-09-24 - link to ref:lnlink/@service="ATTACHMENT" id-CCCC-10394: Not a rule change. Modified examples to illustrate when <sourcexml>@status</sourcexml> suppressed and when retained.</xref>
          </li>
        </ol>
      </p>
    </section>
    <section>
      <title>courtorder 3.6 BETA</title>
      <p>2013-09-19 - JCG:
        <ol>
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
            <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-08-22 - remotelink to ref:crossreference: Not a rule change. Modified Sample #10 on
              <sourcexml>ci:cite/ci:content/remotelink</sourcexml>. Removed target attribute
              <targetxml>lnci:cite[@citeref]</targetxml> because value captured in
              <targetxml>ref:crossreference/ref:locator[@anchoridref]</targetxml>.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_link-LxAdv-ref.lnlink.dita">2013-08-21 - link to ref:lnlink/@service="ATTACHMENT": Added instruction for when to suppress <sourcexml>@status</sourcexml>.</xref>
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
            <xref href="../../common_newest/Rosetta_identifier-LxAdv-ID_data_type-HandlingPatternRestrictions.dita">2013-07-17 - Identifiers to ID Data Type - Handling Pattern Restrictions: Added instructions for handling
              leading/trailing space(s) and XML entities.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_docinfo.doc-lang-and-doc-country-LxAdv-ROOT_xml.lang.dita">2013-07-16 - docinfo:doc-lang and docinfo:doc-country to @xml:lang and @xml:ID: Instruction narrative edited for language; no changes to mappings, no impact to stylesheets.</xref>
          </li>
          <li>
            <xref href="../../DITA-UK/UK04_CourtOrder/case.info_case.dates.dita">2013-07-15 - case:dates: Very minor change to the numbered list of scenarios. Removed point #4 ("For content matching this scenario, duplicates are not checked...") and added it as a separate bullet to the end of #3, since it is meant to be a comment regarding scenario #3. This does not change the instructions at all, I just wanted to make it clearer that the comment referred to scenerio #3.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_identifier-LxAdv-ID_data_type-HandlingPatternRestrictions.dita">2013-07-10 - Identifiers to ID Data Type - Handling Pattern Restrictions: Added instruction to replace space with
              underscore.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_title-LxAdv-title.dita">2013-07-05 - title to title: Added Instruction when <sourcexml>title</sourcexml> contains word "TITLE: ".</xref>
          </li>
        </ol>
      </p>
    </section>
    <section>
      <title>courtorder 3.4 BETA</title>
      <p>2013-07-01 - JCG:
        <ol>
          <li>
            <xref href="../../DITA-UK/UK04_CourtOrder/case.info_case.dates.dita">2013-06-21 - case:dates: Updated instructions and added a note to one of the examples to emphasize that content matching scenario #3 is not checked for duplicates and so there can be multiple <targetxml>courtorder:issuedate</targetxml> elements created with the same attribute values if one or more of these is created from content matching scenario #3.</xref>
          </li>
          <li>
            <xref href="../../DITA-UK/UK04_CourtOrder/case.info_case.dates.dita">2013-06-20 - case:dates: Updated instructions and added an example to emphasize that partial dates match scenario #3. Though content might be a partial date, it will not match scenario #2 since that only deals with complete dates in the given formats.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_docinfo.lbu-meta-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta-scheme.dita">2013-05-31 - docinfo:lbu-meta to doc:legacy-metadata[@metadatasource="lbu-meta"]: Added "document-type" to the list of values
              in docinfo:metaitem/@name that should be retained.</xref>
          </li>
        </ol>
      </p>
    </section>
    <section>
      <title>courtorder 3.4 BETA</title>
      <p>2013-05-30 - JCG:
        <ol>
          <li>
            <xref href="../../DITA-UK/UK04_CourtOrder/case.litigants.dita">2013-05-29 - case:litigants: Added this entirely new instruction to handle new XPath appearing in redelivered content.</xref>
          </li>
          <li>
            <xref href="../../DITA-UK/UK04_CourtOrder/case.parallelcite.dita">2013-05-28 - case:parallelcite: Updated instruction and added an example to handle a new scenario in the redelivered content where <sourcexml>ci:cite</sourcexml> appears as a chlid element.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_link-LxAdv-ref.lnlink.dita">2013-05-24 - link to ref:lnlink/@service="ATTACHMENT": Updated instruction for handling of link when smi is present and some of the verbiage is changed.</xref>
          </li>
          <li>
            <xref href="../../DITA-UK/UK04_CourtOrder/case.info_case.dates.dita">2013-05-23 -
              case:dates: Updated instructions and added two more examples to deal with the scenario
              when there is PCDATA directly within <sourcexml>case:decisiondate</sourcexml> or
                <sourcexml>case:hearingdates</sourcexml> that contains only a date (the entire
              content is a date).</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_docinfo-LxAdv-doc.metadata_doc.docinfo.dita">2013-05-16 - docinfo to doc:metadata/doc:docinfo: Fixed typo updating urn:contentitem to urn:contentItem</xref>
          </li>
        </ol>
      </p>
    </section>
    <section>
      <title>courtorder 3.4 BETA</title>
      <p>2013-05-10 - JCG:
        <ol>
          <li>
            <xref href="../../common_newest/Rosetta_blockquote-LxAdv-blockquote.dita">2013-05-08 - blockquote to blockquote: Extended the list of allowable values for image handling.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-05-08 - remotelink to ref:crossreference: Extended the list of allowable values for image handling.</xref>
          </li>
          <li>
            <xref href="../../DITA-UK/UK04_CourtOrder/case.courtloc.dita">2013-05-07 - case:courtloc: Updated instruction to handle additional conversion scenarios.</xref>
          </li>
          <li>
            <xref href="../../DITA-UK/UK04_CourtOrder/case.juris.dita">2013-05-07 - case:juris: Updated instruction to handle additional conversion scenarios.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_link-LxAdv-ref.lnlink.dita">2013-05-02 - link to ref:lnlink/@service="ATTACHMENT": Some of the verbiage is changed and updated target example to if the SMI is present then a <targetxml>ref:lnlink/@status</targetxml> attribute is set to “valid”.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_docinfo.alt-renditions-LxAdv-doc.alt-renditions.dita">2013-05-01 - docinfo:alt-renditions/docinfo:alt-rendition to doc:alt-renditions/doc:alt-rendition: Updated instructions and target example per latest Apollo markup.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_blockquote-LxAdv-blockquote.dita">2013-05-01 - blockquote to blockquote: Removed instructions for section
              "Pre-Release 4.0" because according to latest Apollo markup, section
              "Release 4.0 and after" and section "Pre-Release 4.0" now have
              similar conversion markup.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_blockquote-link-LxAdv-blockquote-p-text-ref.lnlink.dita">2013-05-01 - blockquote/link to blockquote/p/text/ref:lnlink: Updated instructions and target example per latest Apollo markup.</xref>
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
            <xref href="../../common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2013-04-12 - docinfo:assoc-links to doc:related-content: This module was changed from UK
              specific to applicable to all LBUs</xref>
          </li>
        </ol>
      </p>
    </section>
    <section>
      <title>courtorder 3.2 BETA</title>
      <p>2013-04-11 - JCG:
        <ol>
          <li>2013-04-11 - <xref href="case.info_case.dates.dita"/>: Updated instruction to explicitly specify that empty elements should be suppressed and provided an example.</li>
          <li>
            <xref href="../../common_newest/Rosetta_docinfo.lbu-meta-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta-scheme.dita">2013-04-09 - docinfo:lbu-meta to doc:legacy-metadata[@metadatasource="lbu-meta"]: Added the instruction for handling <sourcexml>docinfo:metaitem[@name="QLDB"]</sourcexml>.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_Elements-LxAdv-Empty_Elements.dita">2013-03-28 - Suppress empty elements unless otherwise stated: Created.</xref>
          </li>
        </ol>
      </p>
    </section>
  
    <section>
      <title>courtorder 3.2 BETA</title>
      <p>2013-03-27 - JCG:
        <ol>
          <li><xref href="case.judges.dita">2013-03-27 - case:judges</xref>: Updated instruction so that proper conversion is described whether <sourcexml>case:judge</sourcexml> is present as a child element or not. Also added a two more examples: one showing conversion when <sourcexml>case:judge</sourcexml> is present, and one showing conversion when a child such as <sourcexml>emph</sourcexml> is present.</li>
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
            <xref href="../../common_newest/Rosetta_pgrp-LxAdv-pgrp.dita">2013-03-14 - pgrp to pgrp: Add instruction and example <sourcexml>pgrp/@id</sourcexml>.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-03-11 - remotelink to ref:crossreference: Instruction and example added on how to handle <targetxml>ref:marker </targetxml> 
              if it is in <targetxml>ref:lnlink@service=”URL”</targetxml>and the <targetxml>ref:key-value@value</targetxml> starts-with (., 'http://www.lexisnexis.com/au/legal/api') 
            </xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_date-LxAdv-date.dita">2013-03-08 - date to date: Added instruction for @normdate attribute that falls
              on various NL date elements</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_heading-LxAdv-heading.dita">2013-03-06 - heading to heading: Removed instructions/rules for exceptional desig scenario and deprecated
              attribute <targetxml>@followstitle</targetxml>.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_docinfo.alt-renditions-LxAdv-doc.alt-renditions.dita">2013-03-05 - docinfo:alt-renditions/docinfo:alt-rendition to doc:alt-renditions/doc:alt-rendition: Updated target example (removed ".pdf" from attribute value of <sourcexml>ref:key-value/@value</sourcexml>).</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_docinfo.alt-renditions-LxAdv-doc.alt-renditions.dita">2013-02-26 - docinfo:alt-renditions/docinfo:alt-rendition to doc:alt-renditions/doc:alt-rendition: Updated target example per project requirement.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_blockquote-link-LxAdv-blockquote-p-text-ref.lnlink.dita">2013-02-26 - blockquote/link to blockquote/p/text/ref:lnlink: Updated target example per project requirement.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_link-LxAdv-ref.lnlink.dita">2013-02-26 - link to ref:lnlink/@service="ATTACHMENT": Updated target example per project requirement.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_blockquote-LxAdv-blockquote.dita">2013-02-18 - blockquote to blockquote: Created two sections, one for "Release 4.0 and after" and another for "Pre-Release 4.0".</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-02-18 - remotelink to ref:crossreference: Created two sections, one for "Release 4.0 and after" and another for "Pre-Release 4.0".</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_UK_docinfo.custom-metafields-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta.meta.metaitem.dita">2013-01-25 - docinfo:custom-metafields to doc:legacy-metadata[@metadatasource="lbu-meta"]/meta/metaitem: Added instruction to handle the scenario when <sourcexml>docinfo:custom-metafield</sourcexml> content is empty, and provided an example.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_UK_docinfo.custom-metafields-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta.meta.metaitem.dita">2013-01-25 - docinfo:custom-metafields to doc:legacy-metadata[@metadatasource="lbu-meta"]/meta/metaitem: Added instruction to handle <sourcexml>docinfo:custom-metafield/@searchtype</sourcexml> attribute, and provided an example.</xref>
          </li>
        </ol>
      </p>
    </section>
    
    <section>
      <title>courtorder 3.1 BETA</title>
      <p>2013-01-25 - JCG:
        <ol>
          <li>Initial handover for conversion.</li>
        </ol>
      </p>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK04_CourtOrder\Change_Log.dita  -->
	<!--<xsl:message>Change_Log.xsl requires manual development!</xsl:message> -->

	<!--<xsl:template match="@name"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  @normdate   -\->
		<xsl:attribute name="normdate">
			<xsl:apply-templates select="node()"/>
		</xsl:attribute>

	</xsl:template>

	<xsl:template match="lilabel/fnr"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  ref:parallelcite   -\->
		<ref:parallelcite>
			<xsl:apply-templates select="@* | node()"/>
		</ref:parallelcite>

	</xsl:template>

	<xsl:template match="refpt"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  ref:parallelcite   -\->
		<ref:parallelcite>
			<xsl:apply-templates select="@* | node()"/>
		</ref:parallelcite>

	</xsl:template>

	<xsl:template match="person/name.text"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  ref:parallelcite   -\->
		<ref:parallelcite>
			<xsl:apply-templates select="@* | node()"/>
		</ref:parallelcite>

	</xsl:template>

	<xsl:template match="emph"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  ref:parallelcite   -\->
		<ref:parallelcite>
			<xsl:apply-templates select="@* | node()"/>
		</ref:parallelcite>

	</xsl:template>

	<xsl:template match="fnr"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  ref:parallelcite   -\->
		<ref:parallelcite>
			<xsl:apply-templates select="@* | node()"/>
		</ref:parallelcite>

	</xsl:template>

	<xsl:template match="/CASEDOC/case:body/case:headnote/footnotegroup"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  ref:parallelcite   -\->
		<ref:parallelcite>
			<xsl:apply-templates select="@* | node()"/>
		</ref:parallelcite>

	</xsl:template>

	<xsl:template match="footnotegrp"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  ref:parallelcite   -\->
		<ref:parallelcite>
			<xsl:apply-templates select="@* | node()"/>
		</ref:parallelcite>

	</xsl:template>

	<xsl:template match="footnote"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  ref:parallelcite   -\->
		<ref:parallelcite>
			<xsl:apply-templates select="@* | node()"/>
		</ref:parallelcite>

	</xsl:template>

	<xsl:template match="catchphrase"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  ref:parallelcite   -\->
		<ref:parallelcite>
			<xsl:apply-templates select="@* | node()"/>
		</ref:parallelcite>

	</xsl:template>

	<xsl:template match="catchwords"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  ref:parallelcite   -\->
		<ref:parallelcite>
			<xsl:apply-templates select="@* | node()"/>
		</ref:parallelcite>

	</xsl:template>

	<xsl:template match="remotelink"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  ref:parallelcite   -\->
		<ref:parallelcite>
			<xsl:apply-templates select="@* | node()"/>
		</ref:parallelcite>

	</xsl:template>

	<xsl:template match="@type"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  doc:related-content-item/doc:related-content-link   -\->
		<doc:related-content-item>
			<doc:related-content-link>
				<xsl:apply-templates select="@* | node()"/>
			</doc:related-content-link>
		</doc:related-content-item>

	</xsl:template>

	<xsl:template match="lnlink[@service=&#34;QUERYLINK&#34;]"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  doc:related-content-item/doc:related-content-link   -\->
		<doc:related-content-item>
			<doc:related-content-link>
				<xsl:apply-templates select="@* | node()"/>
			</doc:related-content-link>
		</doc:related-content-item>

	</xsl:template>

	<xsl:template match="lnlink[@service=&#34;ATTACHMENT&#34;]"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  doc:related-content-item/doc:related-content-link   -\->
		<doc:related-content-item>
			<doc:related-content-link>
				<xsl:apply-templates select="@* | node()"/>
			</doc:related-content-link>
		</doc:related-content-item>

	</xsl:template>

	<xsl:template match="lnlink[@service=&#34;TRAVERSE&#34;]"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  doc:related-content-item/doc:related-content-link   -\->
		<doc:related-content-item>
			<doc:related-content-link>
				<xsl:apply-templates select="@* | node()"/>
			</doc:related-content-link>
		</doc:related-content-item>

	</xsl:template>

	<xsl:template match="lnlink[@service=&#34;URL&#34;]"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  ref:lnlink/@service="ATTACHMENT"   -\->
		<ref:lnlink>
			<xsl:attribute name="service">
				<xsl:text>ATTACHMENT</xsl:text>
			</xsl:attribute>
		</ref:lnlink>

	</xsl:template>

	<xsl:template match="docinfo:assoc-links"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  ref:lnlink/@service="ATTACHMENT"   -\->
		<ref:lnlink>
			<xsl:attribute name="service">
				<xsl:text>ATTACHMENT</xsl:text>
			</xsl:attribute>
		</ref:lnlink>

	</xsl:template>

	<xsl:template match="docinfo:assoc-links-grp"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  ref:lnlink/@service="ATTACHMENT"   -\->
		<ref:lnlink>
			<xsl:attribute name="service">
				<xsl:text>ATTACHMENT</xsl:text>
			</xsl:attribute>
		</ref:lnlink>

	</xsl:template>

	<xsl:template match="lnlink/@service='SEARCH'"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  ref:lnlink   -\->
		<ref:lnlink>
			<xsl:apply-templates select="@* | node()"/>
		</ref:lnlink>

	</xsl:template>

	<xsl:template match="lnlink[@service='SEARCH']"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  ref:lnlink   -\->
		<ref:lnlink>
			<xsl:apply-templates select="@* | node()"/>
		</ref:lnlink>

	</xsl:template>

	<xsl:template match="lnlink/@service=&#34;ATTACHMENT&#34;"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  ref:lnlink   -\->
		<ref:lnlink>
			<xsl:apply-templates select="@* | node()"/>
		</ref:lnlink>

	</xsl:template>

	<xsl:template match="lnlink/@service=&#34;QUERYLINK&#34;"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  doc:related-content-item/@content-type="external-content-location"   -\->
		<doc:related-content-item>
			<xsl:attribute name="content-type">
				<xsl:text>external-content-location</xsl:text>
			</xsl:attribute>
		</doc:related-content-item>

	</xsl:template>

	<xsl:template match="docinfo:assoc-links[@assoc-content=&#34;external-content-location&#34;]"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  courtcase:counsel   -\->
		<courtcase:counsel>
			<xsl:apply-templates select="@* | node()"/>
		</courtcase:counsel>

	</xsl:template>

	<xsl:template match="remotelink[@service=&#34;DOC-ID&#34;]"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  courtcase:counsel   -\->
		<courtcase:counsel>
			<xsl:apply-templates select="@* | node()"/>
		</courtcase:counsel>

	</xsl:template>

	<xsl:template match="remotelink[@href]"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  courtcase:counsel   -\->
		<courtcase:counsel>
			<xsl:apply-templates select="@* | node()"/>
		</courtcase:counsel>

	</xsl:template>

	<xsl:template match="ci:cite"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  courtcase:counsel   -\->
		<courtcase:counsel>
			<xsl:apply-templates select="@* | node()"/>
		</courtcase:counsel>

	</xsl:template>

	<xsl:template match="case:constituent"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  courtcase:counsel   -\->
		<courtcase:counsel>
			<xsl:apply-templates select="@* | node()"/>
		</courtcase:counsel>

	</xsl:template>

	<xsl:template match="ci:cite/@normprotocol"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  proc:param[@name="countrycode"]   -\->
		<proc:param>
			<xsl:apply-templates select="@* | node()"/>
		</proc:param>

	</xsl:template>

	<xsl:template match="docinfo:assoc-resource"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  ref:lnlink   -\->
		<ref:lnlink>
			<xsl:apply-templates select="@* | node()"/>
		</ref:lnlink>

	</xsl:template>

	<xsl:template match="person/remotelink"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  ref:lnlink   -\->
		<ref:lnlink>
			<xsl:apply-templates select="@* | node()"/>
		</ref:lnlink>

	</xsl:template>

	<xsl:template match="link/@status"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  ref:lnlink/@status   -\->
		<ref:lnlink>
			<xsl:attribute name="status">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</ref:lnlink>

	</xsl:template>

	<xsl:template match="lnlink/@status"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  lnlink/@status   -\->
		<lnlink>
			<xsl:attribute name="status">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</lnlink>

	</xsl:template>

	<xsl:template match="remotelink/@status"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  remotelink/@status   -\->
		<remotelink>
			<xsl:attribute name="status">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</remotelink>

	</xsl:template>

	<xsl:template match="page/@count"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  ref:page   -\->
		<ref:page>
			<xsl:apply-templates select="@* | node()"/>
		</ref:page>

	</xsl:template>

	<xsl:template match="li/page"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  ref:page   -\->
		<ref:page>
			<xsl:apply-templates select="@* | node()"/>
		</ref:page>

	</xsl:template>

	<xsl:template match="page"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  ref:page   -\->
		<ref:page>
			<xsl:apply-templates select="@* | node()"/>
		</ref:page>

	</xsl:template>

	<xsl:template match="table"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  @inline   -\->
		<xsl:attribute name="inline">
			<xsl:apply-templates select="node()"/>
		</xsl:attribute>

	</xsl:template>

	<xsl:template match="levelinfo"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  @inline   -\->
		<xsl:attribute name="inline">
			<xsl:apply-templates select="node()"/>
		</xsl:attribute>

	</xsl:template>

	<xsl:template match="docinfo"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  @inline   -\->
		<xsl:attribute name="inline">
			<xsl:apply-templates select="node()"/>
		</xsl:attribute>

	</xsl:template>

	<xsl:template match="pnum"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  @inline   -\->
		<xsl:attribute name="inline">
			<xsl:apply-templates select="node()"/>
		</xsl:attribute>

	</xsl:template>

	<xsl:template match="@inline"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  desig   -\->
		<desig>
			<xsl:apply-templates select="@* | node()"/>
		</desig>

	</xsl:template>

	<xsl:template match="case:content"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  doc:hier/@includeintoc="false"   -\->
		<doc:hier>
			<xsl:attribute name="includeintoc">
				<xsl:text>false</xsl:text>
			</xsl:attribute>
		</doc:hier>

	</xsl:template>

	<xsl:template match="docinfo:hierlev/@exclude-from-displayunits=&#34;true&#34;"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  doc:hier/@includeintoc="false"   -\->
		<doc:hier>
			<xsl:attribute name="includeintoc">
				<xsl:text>false</xsl:text>
			</xsl:attribute>
		</doc:hier>

	</xsl:template>

	<xsl:template match="nl"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  url   -\->
		<url>
			<xsl:apply-templates select="@* | node()"/>
		</url>

	</xsl:template>

	<xsl:template match="docinfo:hierlev/heading/title"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  url   -\->
		<url>
			<xsl:apply-templates select="@* | node()"/>
		</url>

	</xsl:template>

	<xsl:template match="@hrefclass"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  ref:lnlink   -\->
		<ref:lnlink>
			<xsl:apply-templates select="@* | node()"/>
		</ref:lnlink>

	</xsl:template>

	<xsl:template match="@href"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  ref:lnlink   -\->
		<ref:lnlink>
			<xsl:apply-templates select="@* | node()"/>
		</ref:lnlink>

	</xsl:template>

	<xsl:template match="docinfo:assoc-links/remotelink[@service=&#34;QUERY&#34;]"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  doc:related-content   -\->
		<doc:related-content>
			<xsl:apply-templates select="@* | node()"/>
		</doc:related-content>

	</xsl:template>

	<xsl:template match="docinfo:assoc-links-grp/remotelink[@service=&#34;QUERY&#34;]"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  doc:related-content   -\->
		<doc:related-content>
			<xsl:apply-templates select="@* | node()"/>
		</doc:related-content>

	</xsl:template>

	<xsl:template match="docinfo:assoc-links-grp/remotelink[@service=&#34;QUERY&#34;]&#xA;              "><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  lnci:pinpoint   -\->
		<lnci:pinpoint>
			<xsl:apply-templates select="@* | node()"/>
		</lnci:pinpoint>

	</xsl:template>

	<xsl:template match="ci:pinpoint"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  lnci:pinpoint   -\->
		<lnci:pinpoint>
			<xsl:apply-templates select="@* | node()"/>
		</lnci:pinpoint>

	</xsl:template>

	<xsl:template match="@service=&#34;DOC-ID&#34;"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  proc:param/@name="attachment-smi"   -\->
		<proc:param>
			<xsl:attribute name="name">
				<xsl:text>attachment-smi</xsl:text>
			</xsl:attribute>
		</proc:param>

	</xsl:template>

	<xsl:template match="@remotekey1=&#34;REFPTID&#34;"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  proc:param/@name="attachment-smi"   -\->
		<proc:param>
			<xsl:attribute name="name">
				<xsl:text>attachment-smi</xsl:text>
			</xsl:attribute>
		</proc:param>

	</xsl:template>

	<xsl:template match="@remotekey1=&#34;REFPT&#34;"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  proc:param/@name="attachment-smi"   -\->
		<proc:param>
			<xsl:attribute name="name">
				<xsl:text>attachment-smi</xsl:text>
			</xsl:attribute>
		</proc:param>

	</xsl:template>

	<xsl:template match="&#34;REFPT&#34;"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  proc:param/@name="attachment-smi"   -\->
		<proc:param>
			<xsl:attribute name="name">
				<xsl:text>attachment-smi</xsl:text>
			</xsl:attribute>
		</proc:param>

	</xsl:template>

	<xsl:template match="@searchtype=&#34;DIGEST-SUBJECT&#34;"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  proc:param/@name="attachment-smi"   -\->
		<proc:param>
			<xsl:attribute name="name">
				<xsl:text>attachment-smi</xsl:text>
			</xsl:attribute>
		</proc:param>

	</xsl:template>

	<xsl:template match="@char"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  ref:lnlink   -\->
		<ref:lnlink>
			<xsl:apply-templates select="@* | node()"/>
		</ref:lnlink>

	</xsl:template>

	<xsl:template match="entry"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  ref:lnlink   -\->
		<ref:lnlink>
			<xsl:apply-templates select="@* | node()"/>
		</ref:lnlink>

	</xsl:template>

	<xsl:template match="table/tgroup/colspec"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  doc:pagination/doc:pagination-scheme   -\->
		<doc:pagination>
			<doc:pagination-scheme>
				<xsl:apply-templates select="@* | node()"/>
			</doc:pagination-scheme>
		</doc:pagination>

	</xsl:template>

	<xsl:template match="@align"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  doc:pagination/doc:pagination-scheme   -\->
		<doc:pagination>
			<doc:pagination-scheme>
				<xsl:apply-templates select="@* | node()"/>
			</doc:pagination-scheme>
		</doc:pagination>

	</xsl:template>

	<xsl:template match="@charoff"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  doc:pagination/doc:pagination-scheme   -\->
		<doc:pagination>
			<doc:pagination-scheme>
				<xsl:apply-templates select="@* | node()"/>
			</doc:pagination-scheme>
		</doc:pagination>

	</xsl:template>

	<xsl:template match="@colsep"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  doc:pagination/doc:pagination-scheme   -\->
		<doc:pagination>
			<doc:pagination-scheme>
				<xsl:apply-templates select="@* | node()"/>
			</doc:pagination-scheme>
		</doc:pagination>

	</xsl:template>

	<xsl:template match="@id"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  doc:pagination/doc:pagination-scheme   -\->
		<doc:pagination>
			<doc:pagination-scheme>
				<xsl:apply-templates select="@* | node()"/>
			</doc:pagination-scheme>
		</doc:pagination>

	</xsl:template>

	<xsl:template match="@rowsep"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  doc:pagination/doc:pagination-scheme   -\->
		<doc:pagination>
			<doc:pagination-scheme>
				<xsl:apply-templates select="@* | node()"/>
			</doc:pagination-scheme>
		</doc:pagination>

	</xsl:template>

	<xsl:template match="@searchtype"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  doc:pagination/doc:pagination-scheme   -\->
		<doc:pagination>
			<doc:pagination-scheme>
				<xsl:apply-templates select="@* | node()"/>
			</doc:pagination-scheme>
		</doc:pagination>

	</xsl:template>

	<xsl:template match="@xml:lang"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  doc:pagination/doc:pagination-scheme   -\->
		<doc:pagination>
			<doc:pagination-scheme>
				<xsl:apply-templates select="@* | node()"/>
			</doc:pagination-scheme>
		</doc:pagination>

	</xsl:template>

	<xsl:template match="link"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  dc:title   -\->
		<dc:title>
			<xsl:apply-templates select="@* | node()"/>
		</dc:title>

	</xsl:template>

	<xsl:template match="text/link"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  dc:title   -\->
		<dc:title>
			<xsl:apply-templates select="@* | node()"/>
		</dc:title>

	</xsl:template>

	<xsl:template match="docinfo:assoc-links/docinfo:assoc-links-grp/ci:cite"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  dc:title   -\->
		<dc:title>
			<xsl:apply-templates select="@* | node()"/>
		</dc:title>

	</xsl:template>

	<xsl:template match="remotelink[@service=&#34;QUERY&#34;]"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  dc:title   -\->
		<dc:title>
			<xsl:apply-templates select="@* | node()"/>
		</dc:title>

	</xsl:template>

	<xsl:template match="docinfo:doc-heading"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  dc:title   -\->
		<dc:title>
			<xsl:apply-templates select="@* | node()"/>
		</dc:title>

	</xsl:template>

	<xsl:template match="pgrp/@subdoc"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  footnote-ref/@anchoridref   -\->
		<footnote-ref>
			<xsl:attribute name="anchoridref">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</footnote-ref>

	</xsl:template>

	<xsl:template match="pgrp/@toc-caption"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  footnote-ref/@anchoridref   -\->
		<footnote-ref>
			<xsl:attribute name="anchoridref">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</footnote-ref>

	</xsl:template>

	<xsl:template match="docinfo:topiccode"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  footnote-ref/@anchoridref   -\->
		<footnote-ref>
			<xsl:attribute name="anchoridref">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</footnote-ref>

	</xsl:template>

	<xsl:template match="@scheme=&#34;source-by-date&#34;"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  footnote-ref/@anchoridref   -\->
		<footnote-ref>
			<xsl:attribute name="anchoridref">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</footnote-ref>

	</xsl:template>

	<xsl:template match="title"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  footnote-ref/@anchoridref   -\->
		<footnote-ref>
			<xsl:attribute name="anchoridref">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</footnote-ref>

	</xsl:template>

	<xsl:template match="remotelink/@refpt"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  footnote-ref/@anchoridref   -\->
		<footnote-ref>
			<xsl:attribute name="anchoridref">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</footnote-ref>

	</xsl:template>

	<xsl:template match="docinfo:alt-rendition/lnlink"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  doc:alt-renditions/doc:alt-rendition/ref:lnlink/ref:marker   -\->
		<doc:alt-renditions>
			<doc:alt-rendition>
				<ref:lnlink>
					<ref:marker>
						<xsl:apply-templates select="@* | node()"/>
					</ref:marker>
				</ref:lnlink>
			</doc:alt-rendition>
		</doc:alt-renditions>

	</xsl:template>

	<xsl:template match="p"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  doc:alt-renditions/doc:alt-rendition/ref:lnlink/ref:marker   -\->
		<doc:alt-renditions>
			<doc:alt-rendition>
				<ref:lnlink>
					<ref:marker>
						<xsl:apply-templates select="@* | node()"/>
					</ref:marker>
				</ref:lnlink>
			</doc:alt-rendition>
		</doc:alt-renditions>

	</xsl:template>

	<xsl:template match="p/@nl=&#34;0&#34;"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  doc:alt-renditions/doc:alt-rendition/ref:lnlink/ref:marker   -\->
		<doc:alt-renditions>
			<doc:alt-rendition>
				<ref:lnlink>
					<ref:marker>
						<xsl:apply-templates select="@* | node()"/>
					</ref:marker>
				</ref:lnlink>
			</doc:alt-rendition>
		</doc:alt-renditions>

	</xsl:template>

	<xsl:template match="references"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  doc:alt-renditions/doc:alt-rendition/ref:lnlink/ref:marker   -\->
		<doc:alt-renditions>
			<doc:alt-rendition>
				<ref:lnlink>
					<ref:marker>
						<xsl:apply-templates select="@* | node()"/>
					</ref:marker>
				</ref:lnlink>
			</doc:alt-rendition>
		</doc:alt-renditions>

	</xsl:template>

	<xsl:template match="docinfo:custom-metafields/docinfo:custom-metafield/@name=&#34;jurisdiction&#34;"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  doc:alt-renditions/doc:alt-rendition/ref:lnlink/ref:marker   -\->
		<doc:alt-renditions>
			<doc:alt-rendition>
				<ref:lnlink>
					<ref:marker>
						<xsl:apply-templates select="@* | node()"/>
					</ref:marker>
				</ref:lnlink>
			</doc:alt-rendition>
		</doc:alt-renditions>

	</xsl:template>

	<xsl:template match="leg:officialname"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  doc:alt-renditions/doc:alt-rendition/ref:lnlink/ref:marker   -\->
		<doc:alt-renditions>
			<doc:alt-rendition>
				<ref:lnlink>
					<ref:marker>
						<xsl:apply-templates select="@* | node()"/>
					</ref:marker>
				</ref:lnlink>
			</doc:alt-rendition>
		</doc:alt-renditions>

	</xsl:template>

	<xsl:template match="[@type=&#34;ext&#34;]"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  endnote   -\->
		<endnote>
			<xsl:apply-templates select="@* | node()"/>
		</endnote>

	</xsl:template>

	<xsl:template match="[@type=&#34;local&#34;]"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  endnote   -\->
		<endnote>
			<xsl:apply-templates select="@* | node()"/>
		</endnote>

	</xsl:template>

	<xsl:template match="@nl=”0”"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  endnote   -\->
		<endnote>
			<xsl:apply-templates select="@* | node()"/>
		</endnote>

	</xsl:template>

	<xsl:template match="leg:bodytext/glp:note/l/li"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  endnote   -\->
		<endnote>
			<xsl:apply-templates select="@* | node()"/>
		</endnote>

	</xsl:template>

	<xsl:template match="@status"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  lnci:cite[@citeref]   -\->
		<lnci:cite>
			<xsl:apply-templates select="@* | node()"/>
		</lnci:cite>

	</xsl:template>

	<xsl:template match="ci:cite/ci:content/remotelink"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  lnci:cite[@citeref]   -\->
		<lnci:cite>
			<xsl:apply-templates select="@* | node()"/>
		</lnci:cite>

	</xsl:template>

	<xsl:template match="@name=&#34;selection_criteria_variant&#34;"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  ref:lnlink[@service="DOCUMENT"]   -\->
		<ref:lnlink>
			<xsl:apply-templates select="@* | node()"/>
		</ref:lnlink>

	</xsl:template>

	<xsl:template match="@excludefromalerts"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  courtorder:issuedate   -\->
		<error_courtorder:issuedate xmlns:error_courtorder="courtorder_ERROR">
			<xsl:apply-templates select="@* | node()"/>
		</error_courtorder:issuedate>

	</xsl:template>

	<xsl:template match="case:decisiondate"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  ref:lnlink/@status   -\->
		<ref:lnlink>
			<xsl:attribute name="status">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</ref:lnlink>

	</xsl:template>

	<xsl:template match="case:hearingdates"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  ref:lnlink/@status   -\->
		<ref:lnlink>
			<xsl:attribute name="status">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</ref:lnlink>

	</xsl:template>

	<xsl:template match="ci:cite/ci:content"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  ref:crossreference   -\->
		<ref:crossreference>
			<xsl:apply-templates select="@* | node()"/>
		</ref:crossreference>

	</xsl:template>

	<xsl:template match="ci:content"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  xml:id   -\->
		<xml:id>
			<xsl:apply-templates select="@* | node()"/>
		</xml:id>

	</xsl:template>

	<xsl:template match="ci:procphrase"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  xml:id   -\->
		<xml:id>
			<xsl:apply-templates select="@* | node()"/>
		</xml:id>

	</xsl:template>

	<xsl:template match="lnci:procphrase"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  xml:id   -\->
		<xml:id>
			<xsl:apply-templates select="@* | node()"/>
		</xml:id>

	</xsl:template>

	<xsl:template match="docinfo:metaitem[@name=&#34;QLDB&#34;]"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  ref:marker   -\->
		<ref:marker>
			<xsl:apply-templates select="@* | node()"/>
		</ref:marker>

	</xsl:template>

	<xsl:template match="case:judge"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  ref:marker   -\->
		<ref:marker>
			<xsl:apply-templates select="@* | node()"/>
		</ref:marker>

	</xsl:template>

	<xsl:template match="docinfo:dpsi[@id-string]"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  ref:marker   -\->
		<ref:marker>
			<xsl:apply-templates select="@* | node()"/>
		</ref:marker>

	</xsl:template>

	<xsl:template match="docinfo/docinfo:custom-metafields/docinfo:custom-metafield[@name=&#34;dpsi&#34;]"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  ref:marker   -\->
		<ref:marker>
			<xsl:apply-templates select="@* | node()"/>
		</ref:marker>

	</xsl:template>

	<xsl:template match="nl/@n"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  ref:marker   -\->
		<ref:marker>
			<xsl:apply-templates select="@* | node()"/>
		</ref:marker>

	</xsl:template>

	<xsl:template match="p/@style"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  ref:marker   -\->
		<ref:marker>
			<xsl:apply-templates select="@* | node()"/>
		</ref:marker>

	</xsl:template>

	<xsl:template match="pgrp/@id"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  ref:marker   -\->
		<ref:marker>
			<xsl:apply-templates select="@* | node()"/>
		</ref:marker>

	</xsl:template>

	<xsl:template match="ref:key-value/@value"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  ref:lnlink   -\->
		<ref:lnlink>
			<xsl:apply-templates select="@* | node()"/>
		</ref:lnlink>

	</xsl:template>

	<xsl:template match="docinfo:custom-metafield"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:     -\->
		<!-\-  Could not determine target element or attribute name:  <>  -\->			<xsl:apply-templates select="@* | node()"/>
		<!-\-  Could not determine target element or attribute name:  </>  -\->

	</xsl:template>

	<xsl:template match="docinfo:custom-metafield/@searchtype"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:     -\->
		<!-\-  Could not determine target element or attribute name:  <>  -\->			<xsl:apply-templates select="@* | node()"/>
		<!-\-  Could not determine target element or attribute name:  </>  -\->

	</xsl:template>
-->
</xsl:stylesheet>