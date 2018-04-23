<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:ci="http://www.lexis-nexis.com/ci" xmlns:source_cttr="http://www.lexis-nexis.com/glp/cttr" xmlns:dig="http://www.lexis-nexis.com/glp/dig" xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" xmlns:jrnl="http://www.lexis-nexis.com/glp/jrnl" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:source_lnci="http://www.lexis-nexis.com/lnci" xmlns:abstract="urn:x-lexisnexis:content:abstract:sharedservices:1" xmlns:caseinfo="http://www.lexisnexis.com/xmlschemas/content/legal/case-information/1/" xmlns:classify="http://www.lexisnexis.com/xmlschemas/content/shared/classification/1/" xmlns:cttr="urn:x-lexisnexis:content:citator:sharedservices:1" xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns:decision="http://www.lexisnexis.com/xmlschemas/content/legal/decision/1/" xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" xmlns:jurisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/jurisdiction-info/1/" xmlns:legisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/legislation-info/1/" xmlns:lnci="http://www.lexisnexis.com/xmlschemas/content/shared/citations/1/" xmlns:person="http://www.lexisnexis.com/xmlschemas/content/shared/person/1/" xmlns:proc="http://www.lexisnexis.com/xmlschemas/content/shared/process-elements/1/" xmlns:pubinfo="http://www.lexisnexis.com/xmlschemas/content/shared/publication-info/1/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita case ci cttr dig docinfo jrnl leg lnci">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="UK11_DA_Change-Log">
  <title>Change Log for UK11 Digests to Abstract</title>
  <body>
    <section><title>Abstract 4.1_BETA Schema</title><p>2016-11-11</p><ul>
        <li>
          <xref href="../../../Rosetta/DITA-UK/UK11DA-Digest-Abstract/UK11_DA_publication.dita">2016-11-11 - publication id-UK11DA-29439: Not a rule change directly to this module.
            Modified Example 2 Target to reflect blobstore markup; all paramater names that formerly
            contained the word "attachment" are now "object".</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_inlineobject-LxAdv-ref.inlineobject_BLOBSTORE.dita">2016-11-07 - inlineobject to ref:inlineobject for BLOBSTORE images id-CCCC-10540:
            Updated the instruction for ref:key-name and proc:param attribute values.</xref>
        </li>
      </ul></section>
    <section><title>Abstract 4.1_BETA Schema</title><p>2016-10-28</p><ul>
        <li>
          <xref href="../../../Rosetta/DITA-UK/UK11DA-Digest-Abstract/UK11_DA_publication.dita">2016-10-28 - publication id-UK11DA-29439: Not a rule change directly to this module.
            Modified Example 2 Target to reflect blobstore markup for the parameter
            "object-server".</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_inlineobject-LxAdv-ref.inlineobject_BLOBSTORE.dita">2016-10-21 - inlineobject to ref:inlineobject for BLOBSTORE images id-CCCC-10540:
            Changed one proc:param name for target. Formerly
              <targetxml>@name="attachment-server"</targetxml>; changed to
              <targetxml>@name="object-server"</targetxml>.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_link-LxAdv-ref.lnlink_BLOBSTORE.dita">2016-10-21 - link[@filename] to ref:lnlink[@service="ATTACHMENT"] for BLOBSTORE images
            id-CCCC-10541: Updated the Blobstore related instruction for use standardize specific
            output parameters.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_lnlink_service_ATTACHMENT-LxAdv-ref.lnlink_BLOBSTORE.dita">2016-10-21 - lnlink[@service="ATTACHMENT"] to ref:lnlink[@service="ATTACHMENT"] for
            BLOBSTORE images id-CCCC-10542: Updated the Blobstore related instruction for use
            standardize specific output parameters.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.versioninfo-LxAdv-doc.versioninfo-scheme.dita">2016-10-17 - docinfo:versioninfo to doc:versioninfo id-CCCC-10307: Updated the
            instruction for handling the target attribute <targetxml>@normdate</targetxml>.
            [Webstar#6676189]</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_UK_docinfo.custom-metafields-LxAdv-dc.date_or_doc.docinfo_classify.classification.dita">2016-10-04 - (UK) docinfo:custom-metafield to dc:date or
            doc:metadata/doc:docinfo/classify:classification[@classscheme="uk-functional-information"]
            id-CCCC-10547: Added rule for "word-toc"; and updated the example.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.versioninfo-LxAdv-doc.versioninfo-scheme.dita">2016-09-14 - docinfo:versioninfo to doc:versioninfo id-CCCC-10307: Note added for
            handling the input markup
            '<targetxml>docinfo:versioninfo@startdate-tbd</targetxml>'.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_UK_docinfo.custom-metafields-LxAdv-dc.date_or_doc.docinfo_classify.classification.dita">2016-09-08 - (UK) docinfo:custom-metafield to dc:date or
            doc:metadata/doc:docinfo/classify:classification[@classscheme="uk-functional-information"]
            id-CCCC-10547: Added rule for attribute <sourcexml>@name</sourcexml> with value
            "containsAppealTracker"; and updated the example.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.versioninfo-LxAdv-doc.versioninfo-scheme.dita">2016-09-02 - docinfo:versioninfo to doc:versioninfo id-CCCC-10307: Special Rule for
            added <targetxml>@normdate</targetxml> attribute inside the
              <targetxml>doc:startdate</targetxml> and <targetxml>doc:enddate</targetxml>.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2016-08-03 - remotelink to ref:crossreference id-CCCC-10465: Added Note about xml
            snippets that illustrate image handling. Note summarizes move from Apollo to Blobstore
            application. UK is first LBU to move to Blobstore.</xref>
        </li>
      </ul></section>
    <section><title>Abstract 4.1_BETA Schema</title><p>2016-07-29</p><ul>
        <li>
          <xref href="../../../Rosetta/DITA-UK/UK11DA-Digest-Abstract/UK11_DA_publication.dita">2016-07-29 - publication id-UK11DA-29439: Not a rule change directly to this module.
            Modified xref link for inlineobject, to point to new blobstore module; and revised
            Example 2 Target to reflect blobstore markup.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.alt-renditions-LxAdv-doc.alt-renditions.dita">2016-07-29 - docinfo:alt-renditions/docinfo:alt-rendition to
            doc:alt-renditions/doc:alt-rendition id-CCCC-10283: Added Note about xml snippets that
            illustrate image handling. Note summarizes move from Apollo to Blobstore application. UK
            is first LBU to move to Blobstore.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2016-07-29 - docinfo:assoc-links to doc:related-content id-CCCC-10284: Added Note about
            xml snippets that illustrate image handling. Note summarizes move from Apollo to
            Blobstore application. UK is first LBU to move to Blobstore.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_blockquote-LxAdv-blockquote.dita">2016-07-29 - blockquote to blockquote id-CCCC-10247: Added Note about xml snippets that
            illustrate image handling. Note summarizes move from Apollo to Blobstore application. UK
            is first LBU to move to Blobstore. VSTS 76146</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_inlineobject-LxAdv-figure_ref.inlineobject.dita">2016-07-29 - inlineobject to figure/ref:inlineobject id-CCCC-10368: Added Note about
            xml snippets that illustrate image handling. Note summarizes move from Apollo to
            Blobstore application. UK is first LBU to move to Blobstore.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_UK_docinfo.custom-metafields-LxAdv-dc.date_or_doc.docinfo_classify.classification.dita">2016-07-26 - (UK) docinfo:custom-metafield to dc:date or
            doc:metadata/doc:docinfo/classify:classification[@classscheme="uk-functional-information"]
            id-CCCC-10547: Added rule for "resultType"; and updated the example.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_UK_docinfo.custom-metafields-LxAdv-dc.date_or_doc.docinfo_classify.classification.dita">2016-07-13 - (UK) docinfo:custom-metafield to dc:date or
            doc:metadata/doc:docinfo/classify:classification[@classscheme="uk-functional-information"]
            id-CCCC-10547: Added rules for "createdDate", "updatedDate", and "inEditorialReview";
            and updated the example.</xref>
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
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_link-LxAdv-ref.lnlink_BLOBSTORE.dita">2016-05-20 - link[@filename] to ref:lnlink[@service="ATTACHMENT"] for BLOBSTORE images
            id-CCCC-10541: Created this instruction to specify Blobstore specific output
            parameters.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_lnlink_service_ATTACHMENT-LxAdv-ref.lnlink_BLOBSTORE.dita">2016-05-20 - lnlink[@service="ATTACHMENT"] to ref:lnlink[@service="ATTACHMENT"] for
            BLOBSTORE images id-CCCC-10542: Created this instruction to specify Blobstore specific
            output parameters.</xref>
        </li>
      </ul></section>
    <section><title>Abstract 4.1_BETA Schema</title><p>2016-06-17</p><ul>
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
          <xref href="../../../Rosetta/common_newest/Rosetta_emph-LxAdv-emph.dita">2016-04-01 - emph
            to emph id-CCCC-10316: Added statement to clarify that children of emph should be
            processed.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_l-LxAdv-list.dita">2016-04-01 - l to
            list id-CCCC-10372: Added mapping instruction for handling h within listitem.</xref>
        </li>
      </ul></section>
    <section><title>Abstract 4.1_BETA Schema</title><p>2016-03-30</p><ul>
        <li>
          <xref href="../../../Rosetta/DITA-UK/UK11DA-Digest-Abstract/UK11_DA_dig.review-contrib-disclaimer-copyright.dita">2016-03-30 - dig:review, contrib, disclaimer, copyright id-UK11DA-29450: New section.
            New xpaths.</xref>
        </li>
      </ul></section>
    <section><title>Abstract 4.1_BETA Schema</title><p>2016-01-06</p><ul>
        <li>
          <xref href="../../../Rosetta/DITA-UK/UK11DA-Digest-Abstract/UK11_DA_Introduction.dita">2016-01-05 - Introduction id-UK11DA-29423: Note that the following module has been
            added to the General Markup section: <sourcexml>sup</sourcexml> to
              <targetxml>sup</targetxml> (id-CCCC-10474). RFA 2684.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/DITA-UK/UK11DA-Digest-Abstract/UK11_DA_address.dita">2016-01-05 - address id-UK11DA-29449: New section. New target xpath. Markup new in
            recent rosetta redelivery. RFA 2669.</xref>
        </li>
      </ul></section>
    <section><title>Abstract 4.1_BETA Schema</title><p>2015-12-20</p><ul>
        <li>
          <xref href="../../../Rosetta/DITA-UK/UK11DA-Digest-Abstract/UK11_DA_Introduction.dita">2015-12-20 - Introduction id-UK11DA-29423: Note that the following module has been
            added to the General Markup section: <sourcexml>p-limited</sourcexml> to
              <targetxml>p</targetxml> (id-CCCC-10419). RFA 2617.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_inlineobject-LxAdv-ref.inlineobject.dita">2015-11-16 - inlineobject to ref:inlineobject id-CCCC-10369: Added instruction for
              <sourcexml>inlineobject/@key</sourcexml> to be suppressed.</xref>
        </li>
      </ul></section>
    <section><title>Abstract 4.1_BETA Schema</title><p>2015-11-12</p><ul>
        <li>
          <xref href="../../../Rosetta/DITA-UK/UK11DA-Digest-Abstract/UK11_DA_publication.dita">2015-11-12 - publication id-UK11DA-29439: Not a rule change directly to this module.
            Added reference to UK special rule for objects that are logos. And updated example. RFA
            2542.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_UK_inlineobject-LxAdv-logo-special.dita">2015-11-12 - (UK) inlineobject when target logo/ref:inlineobject id-CCCC-10529: New
            rule. UK exception for "object-smi" value when object is logo. RFA 2519, 2542.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2015-09-11 - docinfo:assoc-links to doc:related-content id-CCCC-10284: Correction to
            target XPATHs for <sourcexml>lnlink[@service="QUERYLINK"]</sourcexml>,
              <sourcexml>lnlink[@service="ATTACHMENT"]</sourcexml>, and
              <sourcexml>lnlink[@service="TRAVERSE"]</sourcexml> to add
              <targetxml>doc:related-content-item/doc:related-content-link</targetxml> before the
            existing <targetxml>ref:lnlink</targetxml> element in the XPATH.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2015-09-11 - docinfo:assoc-links to doc:related-content id-CCCC-10284: Added
            instruction for handling of <sourcexml>lnlink[@service="URL"]</sourcexml> inside
              <sourcexml>docinfo:assoc-links</sourcexml> or
              <sourcexml>docinfo:assoc-links-grp</sourcexml>.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_link-LxAdv-ref.lnlink.dita">2015-09-08
            - link to ref:lnlink[@service="ATTACHMENT"] id-CCCC-10394: Minor XPATH correction in
            title to change <targetxml>ref:lnlink/@service="ATTACHMENT"</targetxml> to be
              <targetxml>ref:lnlink[@service="ATTACHMENT"]</targetxml>.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_lnlink_service_ATTACHMENT-LxAdv-ref.lnlink.dita">2015-09-08 - lnlink[@service="ATTACHMENT"] to ref:lnlink[@service="ATTACHMENT"]
            id-CCCC-10396: Minor XPATH correction in instruction title and body to change
              <sourcexml>lnlink/@service="ATTACHMENT"</sourcexml> to be
              <sourcexml>lnlink[@service="ATTACHMENT"]</sourcexml>,
              <targetxml>ref:lnlink</targetxml> to be
              <targetxml>ref:lnlink[@service="ATTACHMENT"]</targetxml>, and
              <targetxml>ref:lnlink/@service="ATTACHMENT"</targetxml> to be
              <targetxml>ref:lnlink[@service="ATTACHMENT"]</targetxml>.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_lnlink_service_SEARCH-LxAdv-SUPPRESS.dita">2015-09-08 - lnlink[@service='SEARCH'] is SUPPRESSED id-CCCC-10397: Minor XPATH
            correction in instruction title and body to change
              <sourcexml>lnlink/@service='SEARCH'</sourcexml> to be
              <sourcexml>lnlink[@service='SEARCH']</sourcexml>.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2015-09-03 - docinfo:assoc-links to doc:related-content id-CCCC-10284: Minor correction
            to bullet heading text for children of <sourcexml>docinfo:assoc-links</sourcexml> or
              <sourcexml>docinfo:assoc-links-grp</sourcexml> to change from
              <sourcexml>lnlink/@service="QUERYLINK"</sourcexml> to be
              <sourcexml>lnlink[@service="QUERYLINK"]</sourcexml> and
              <sourcexml>lnlink/@service="ATTACHMENT"</sourcexml> to be
              <sourcexml>lnlink[@service="ATTACHMENT"]</sourcexml>.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2015-09-03 - docinfo:assoc-links to doc:related-content id-CCCC-10284: Added
              <targetxml>doc:related-content-item/@content-type="external-content-location"</targetxml>
            when the parent
              <sourcexml>docinfo:assoc-links[@assoc-content="external-content-location"]</sourcexml>
            exists, for children: <sourcexml>remotelink[@service="DOC-ID"]</sourcexml>,
              <sourcexml>remotelink[@href]</sourcexml>,
              <sourcexml>lnlink[@service="TRAVERSE"]</sourcexml> and
            <sourcexml>ci:cite</sourcexml>.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2015-09-03 - docinfo:assoc-links to doc:related-content id-CCCC-10284: Added
            instruction for handling of <sourcexml>lnlink[@service="TRAVERSE"]</sourcexml> inside
              <sourcexml>docinfo:assoc-links</sourcexml> or
              <sourcexml>docinfo:assoc-links-grp</sourcexml>.</xref>
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
      </ul></section>
    <section><title>Abstract 4.1_BETA Schema</title><p>2015-05-22</p><ul>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2015-05-22 - docinfo:assoc-links to doc:related-content id-CCCC-10284: Clarification.
            Not a new rule or target. Within rules handling
              <sourcexml>remotelink[@service="DOC-ID"]</sourcexml>, added statement to create
            containing elements <targetxml>ref:locator/ref:locator-key</targetxml> which hold
              <targetxml>ref:key-name</targetxml> and <targetxml>ref:key-value</targetxml>. The
            xpath is controlled by schema and so conversions have been correct. CI examples were
            correct. The narrative rule is now explicit. R4.5 Content Issue 2326.</xref>
        </li>
      </ul></section>
    <section><title>Abstract 4.1_BETA Schema</title><p>2015-05-19</p><ul>
        <li>
          <xref href="../../../Rosetta/DITA-UK/UK11DA-Digest-Abstract/UK11_DA_Introduction.dita">2015-05-19 - Introduction id-UK11DA-29423: Note that the following module has been
            added to the Metadata section: <sourcexml>docinfo:assoc-links</sourcexml> to
              <targetxml>doc:related-content</targetxml> (id-CCCC-10284). Data are new in recent
            Rosetta delivery. New target xpath. R4.5 Content Issue 2323.</xref>
        </li>
      </ul></section>
    <section><title>Abstract 4.1_BETA Schema</title><p>2015-03-30</p><ul>
        <li>
          <xref href="../../../Rosetta/DITA-UK/UK11DA-Digest-Abstract/UK11_DA_case.info.dita">2015-03-30 - case:info id-UK11DA-29409: Rule change to reflect rosetta element change.
            No change to target. Within markup for <sourcexml>cttr:annot</sourcexml>, former rosetta
              <sourcexml>abbrvname</sourcexml> is now <sourcexml>case:courtcode</sourcexml>. Target
            remains <targetxml>jurisinfo:courtname/@normshortname</targetxml>. R4.5 Content Issue
            2239.</xref>
        </li>
      </ul></section>
    <section><title>Abstract 4.1_BETA Schema</title><p>2015-03-16</p><ul>
        <li>
          <xref href="../../../Rosetta/DITA-UK/UK11DA-Digest-Abstract/UK11_DA_dig.subject.dita">2015-03-16 - dig:subject id-UK11DA-29420: Section revised. Target xpaths are not
            changed. Formerly, rules were based on whether child <sourcexml>url</sourcexml> present
            in rosetta source. Child <sourcexml>url</sourcexml> has been removed from rosetta.
            Mappings now based on value of <sourcexml>@display-name</sourcexml>. Affects the general
            rules and the special rules for dpsi 03WX. Note to Conversion Engineering: Former
            special rules for dpsi 0SY4 are now generally applicable; may be able to re-use code.
            R4.5 Content Issue 2227.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/DITA-UK/UK11DA-Digest-Abstract/UK11_DA_dig.type.dita">2015-03-16 - dig:type id-UK11DA-29448: New section. New target xpath. Data are new in
            recent rosetta redelivery. R4.5 Board Item 2221.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/DITA-UK/UK11DA-Digest-Abstract/UK11_DA_ci.cite-ChOf-ci.content.dita">2015-03-12 - ci:cite within ci:content id-UK11DA-29447: New section. Target is not new.
            Handles <sourcexml>ci:cite/ci:content</sourcexml> with child
              <sourcexml>ci:cite</sourcexml>. Rule suppresses the parent wrappers. Responds to
            recent UK11-DA rosetta delivery. R4.5 Board Item 2224.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_classification_classitem_topic.topicreference-Chof-docinfo-LxAdv-doc.docinfo_classify.classification.dita">2015-03-07 - classification/classitem[@classscheme="topic:topicReference"] to
            classify:classification/classify:classitem/topic:topicReference id-CCCC-10516: Added an
            indication that this mark-up may also occur within <sourcexml>levelinfo</sourcexml> (as
            well as within <sourcexml>docinfo</sourcexml> as originally stated).</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/DITA-UK/UK11DA-Digest-Abstract/UK11_DA_Introduction.dita">2015-03-04 - Introduction id-UK11DA-29423: Note that the following module has been
            added to the Metadata section: <sourcexml>docinfo:dpsi[@id-string]</sourcexml> to
              <targetxml>doc:legacy-metadata[@metadatasource="lbu-meta"]/meta/metaitem</targetxml>
            (id-CCCC-10296). The data addition was announced in UK11-DA Audit Package Review Mar 3
            2015.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_person-LxAdv-person.person.dita">2015-02-03 - person to person:person id-CCCC-10428: Added instruction for
              <sourcexml>name.detail/name.honorific</sourcexml> mapping to
              <targetxml>person:name.detail/person:name.honorific</targetxml>.</xref>
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
          <xref href="../../../Rosetta/common_newest/Rosetta_remotelink-Chof-url-LxAdv-url.dita">2015-01-09 - url/remotelink to url id-CCCC-10464: Within use case that maps to
              <targetxml>ref:lnlink</targetxml>, added exceptional rule to not concatenate values
            when <sourcexml>@hrefclass</sourcexml> content is already present in
              <sourcexml>@href</sourcexml>. Expanded example to illustrate the scenario. Responds to
            data for UK10 Dictionaries but applies in general. R4.5 Content Issue 2120.</xref>
        </li>
      </ul></section>
    <section><title>Abstract 4.1_BETA Schema</title><p>2014-12-15</p><ul>
        <li>
          <xref href="../../../Rosetta/DITA-UK/UK11DA-Digest-Abstract/UK11_DA_dig.info.dita">2014-12-15 - dig:info id-UK11DA-29419: Added note explaining that the container
              <targetxml>abstract:target</targetxml> should be created only once. Note added at this
            location to encompass all descendants of <sourcexml>dig:info</sourcexml> which are
            described in subsequent sections. R4.5 Content Issue 2096.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/DITA-UK/UK11DA-Digest-Abstract/UK11_DA_note.dita">2014-12-15
            - note id-UK11DA-29434: Rule changes to sync with UK11-DN (newsitem) and UK12-Treatise.
            Occurrence in this stream, UK11-DA, is rare but rules need to be same as elsewhere. For
            description of UK12 issue, see R4.5 Board Item 1804.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_classification_classitem_topic.topicreference-Chof-docinfo-LxAdv-doc.docinfo_classify.classification.dita">2014-12-15 - classification/classitem[@classscheme="topic:topicReference"] to
            classify:classification/classify:classitem/topic:topicReference id-CCCC-10516: New
            section. Responds to discussion board item for UK11-DA but markup expected for all UK
            streams and rule will apply for any jurisdiction where the markup occurs. R4.5 Content
            Issue 2073.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/DITA-UK/UK11DA-Digest-Abstract/UK11_DA_case.info-ChOf-dig.info.dita">2014-11-04 - case:info (and descendants) id-UK11DA-29408: Minor correction in example.
            Not a rule change. Source <sourcexml>@searchtype</sourcexml> at
              <sourcexml>ci:cite</sourcexml> was incorrectly copied to target
              <targetxml>lnci:cite</targetxml>. Attribute searchtype now removed from target.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.overview-LxAdv-docinfo.overview.dita">2014-11-04 - docinfo:overview to doc:overview id-CCCC-10303: Clarification only: added
            text to explicitly indicate that the child <targetxml>doc:overview/bodytext</targetxml>
            should be created. Not a change to instructions.</xref>
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
      </ul></section>
    <section><title>Abstract 4.1_BETA Schema</title><p>2014-10-15</p><ul>
        <li>
          <xref href="../../../Rosetta/DITA-UK/UK11DA-Digest-Abstract/UK11_DA_Introduction.dita">2014-10-14 - Introduction id-UK11DA-29423: Updated schema version to 4.1 Beta</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/DITA-UK/UK11DA-Digest-Abstract/UK11_DA_Introduction.dita">2014-10-14 - Introduction id-UK11DA-29423: Note that the following module has been
            added to the Metadata section: <sourcexml>docinfo:overview</sourcexml> to
              <targetxml>doc:overview</targetxml> (id-CCCC-10303). Data are new in Oct 2014
            redelivery. New target xpath. R4.5 Board Item 1959.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/DITA-UK/UK11DA-Digest-Abstract/UK11_DA_dig.cite.dita">2014-10-14 - dig:cite id-UK11DA-29418: Minor, not a rule change. Adjusted note about
            when to create empty abstract:head element. Updated list of source elements that convert
            to abstract:head.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/DITA-UK/UK11DA-Digest-Abstract/UK11_DA_dig.subject.dita">2014-10-14 - dig:subject id-UK11DA-29420: Added special rules for dpsi 0SY4 "Legal
            News". Child <sourcexml>url</sourcexml> is not present to distinguish the two types of
            content. Special rule is based on <sourcexml>@display-name</sourcexml> instead. Data are
            new in Oct 2014 delivery. Target xpaths are not new. Also added note that the attribute
            itself does not convert.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/DITA-UK/UK11DA-Digest-Abstract/UK11_DA_contrib.dita">2014-10-14 - contrib (and children) id-UK11DA-29413: Rule change for
              <sourcexml>@contribtype="bill-sponsor"</sourcexml>. Person markup is removed from
            target. Formerly
              <targetxml>.../legisinfo:sponsor/person:person/person:name.text</targetxml>. Now
              <targetxml>.../legisinfo:sponsor</targetxml>. New data in Oct 2014 redelivery have
            different source markup for sponsor content,
              <sourcexml>leg:billinfo/sponsors/sponsor</sourcexml>. LBU has purposely excluded
            person markup because upcoming deliveries will include non-person content, e.g. "Home
            Office". Mapping for all is set to <targetxml>legisinfo:sponsor</targetxml> to sync
            target for similar content.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/DITA-UK/UK11DA-Digest-Abstract/UK11_DA_jrnl.journalcite.dita">2014-10-14 - jrnl:journalcite id-UK11DA-29425: New rule. Added mapping for
              <sourcexml>@display-name</sourcexml> which is new in Oct 2014 redelivery. The value is
            an enhancement for stored data. Does not affect presentation.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/DITA-UK/UK11DA-Digest-Abstract/UK11_DA_leg.dates.dita">2014-10-14 - leg:dates, leg:assentdate, leg:enactdate id-UK11DA-29426: Rules and
            examples modified to accommodate variations in Oct 2014 redelivery: semantic date
            without child date, semantic date with pcdata plus child date, child date with
            attributes.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/DITA-UK/UK11DA-Digest-Abstract/UK11_DA_leg.billinfo_sponsors.dita">2014-10-14 - leg:billinfo/sponsors id-UK11DA-29443: New section. Handles xpath
              <sourcexml>leg:billinfo/sponsors/sponsor</sourcexml> which is new in Oct 2014
            redelivery. R4.5 Board Item 1960.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/DITA-UK/UK11DA-Digest-Abstract/UK11_DA_leg.govoffice.dita">2014-10-14 - leg:govoffice id-UK11DA-29445: New section. Data are new in Oct 2014
            redelivery. R4.5 Board Item 1962.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/DITA-UK/UK11DA-Digest-Abstract/UK11_DA_leg.categories.dita">2014-10-14 - leg:categories id-UK11DA-29444: New section. Data are new in Oct 2014
            redelivery. R4.5 Board Item 1960.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/DITA-UK/UK11DA-Digest-Abstract/UK11_DA_catchword.dita">2014-10-14 - catchwordgrp, catchwords, catchphrase id-UK11DA-29410: New rule. Formerly
            source data occurred as single block at <sourcexml>catchwords</sourcexml>, now
            disaggregated to multiple child <sourcexml>catchphrase</sourcexml>. Target is same
            except formerly single <targetxml>classify:classitem</targetxml>, now multiple. R4.5
            Board Item 1963.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/DITA-UK/UK11DA-Digest-Abstract/UK11_DA_case.info-ChOf-dig.info.dita">2014-10-14 - case:info (and descendants) id-UK11DA-29408: New rules. Mappings for
              <sourcexml>case:courtcite</sourcexml> to <targetxml>caseinfo:courtcite</targetxml> and
              <sourcexml>case:hearingdates</sourcexml> to
            <targetxml>decision:argueddate</targetxml>. Data are new in Oct 2014 redelivery. New
            target xpaths. R4.5 Board Item 1965.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/DITA-UK/UK11DA-Digest-Abstract/UK11_DA_remotelink-service-query.dita">2014-10-14 - remotelink @service="QUERY" id-UK11DA-29442: Not a rule change. Added Note
            explaining that special rule to retain pcdata for
              <sourcexml>remotelink[@service="QUERY"]</sourcexml> has become common practice. This
            section is retained to avoid confusion with previous versions of the CI.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/DITA-UK/UK11DA-Digest-Abstract/UK11_DA_leg.dates.dita">2014-10-13 - leg:dates, leg:assentdate, leg:enactdate id-UK11DA-29426: Minor, not a
            rule change. Adjusted note about when to create empty abstract:head element. Updated
            list of source elements that convert to abstract:head.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/DITA-UK/UK11DA-Digest-Abstract/UK11_DA_references.dita">2014-10-13 - references id-UK11DA-29440: New rule. Carry through
              <sourcexml>@referencetype</sourcexml> to target. The attribute is new in Oct 2014
            redelivery. Also added note to generate only one
              <targetxml>abstract:references</targetxml> container for multiple
              <targetxml>ref:relatedrefs</targetxml>. R4.5 Board Item 1964.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/DITA-UK/UK11DA-Digest-Abstract/UK11_DA_case.info-ChOf-dig.info.dita">2014-10-13 - case:info (and descendants) id-UK11DA-29408: Added rule for ci:cite
            occurring as child of ci:content. Rule added within section titled "Note about
              <sourcexml>case:reportercite</sourcexml>". R4.5 Board Item 1969.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/DITA-UK/UK11DA-Digest-Abstract/UK11_DA_remotelink-status.dita">2014-10-13 - remotelink/@status, attribute suppressed id-UK11DA-29446: Not a rule
            change. Clarifies that it is correct to suppress attribute
              <sourcexml>remotelink[@status]</sourcexml>. Section created in response to increased
            presence of <sourcexml>@status</sourcexml> in UK11-DA data delivered Oct 2014.</xref>
        </li>
        <!-- </ul><p>The following are common module changes</p><ul> -->
        <!-- removed, changelog cleanup 4/1/2016 jhm -->
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
      </ul></section>
    <section><title>Abstract 3.11_BETA Schema</title><p>2014-01-13</p><ul>
        <li>
          <xref href="../../DITA-UK/UK11DA-Digest-Abstract/UK11_DA_dig.subject.dita">2014-01-13 -
            dig:subject: Within special rules for dpsi 03WX "Events", corrected mapping for
              <sourcexml>date</sourcexml>. Removed <targetxml>date-text</targetxml> from target
            which is not allowed as child of <targetxml>date</targetxml>. This was a CI error
            limited to this one use case. No other mappings or streams affected. Phase 5 UK
            Discussion Board Item 143.</xref>
        </li>
        <!-- </ul><p>The following are common module changes</p><ul> -->
        <!-- removed, changelog cleanup 4/1/2016 jhm -->
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
          <xref href="../../common_newest/Rosetta_UK_docinfo.custom-metafields-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta.meta.metaitem.dita">2013-11-20 - docinfo:custom-metafields to
            doc:legacy-metadata[@metadatasource="lbu-meta"]/meta/metaitem: Added instruction to
            handle
              <sourcexml>docinfo:custom-metafields/docinfo:custom-metafield/@name="jurisdiction"</sourcexml>
            is "European" Webteam # 239816 </xref>
        </li>
      </ul></section>
    <section><title>Abstract 3.11_BETA Schema</title><p>2013-10-30</p><ul>
        <li>
          <xref href="../../DITA-UK/UK11DA-Digest-Abstract/UK11_DA_Introduction.dita">2013-10-30 -
            Introduction: Updated schema version to 3.11 Beta</xref>
        </li>
        <li>
          <xref href="../../DITA-UK/UK11DA-Digest-Abstract/UK11_DA_case.info-ChOf-dig.info.dita">2013-10-30 - case:info (and descendants): New rule. Handles text (pcdata) within
              <sourcexml>case:reportercite</sourcexml>. Target result is
              <targetxml>abstract:target/casedigest:caseinfo/ref:citations</targetxml> with multiple
              <targetxml>ref:cite4thisresource</targetxml> and intervening
              <targetxml>connector</targetxml>. This is same mapping as used in UK03 casedigest.
            Webteam 243798.</xref>
        </li>
        <!-- </ul><p>The following are common module changes</p><ul> -->
        <!-- removed, changelog cleanup 4/1/2016 jhm -->
        <li>
          <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-10-23 - remotelink to ref:crossreference: Added Example when
              <sourcexml>remotelink</sourcexml> having child <sourcexml>emph</sourcexml>. Webteam #
            239816</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_Elements-LxAdv-Empty_Elements.dita">2013-10-14 -
            Suppress each empty element unless otherwise stated: Changed antecedent to singular to
            match instructions.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-10-03 - remotelink to ref:crossreference: Added use case where remotelink contains
            @href which is a URL but does not contain @hrefclass='http'.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_link-LxAdv-ref.lnlink.dita">2013-09-24 - link to
            ref:lnlink/@service="ATTACHMENT": Not a rule change. Modified examples to illustrate
            when <sourcexml>@status</sourcexml> suppressed and when retained.</xref>
        </li>
      </ul></section>
    <section><title>Abstract 3.10_BETA Schema</title><p>2013-09-17</p><ul>
        <li>
          <xref href="../../DITA-UK/UK11DA-Digest-Abstract/UK11_DA_Introduction.dita">2013-09-17 -
            Introduction: Updated schema version to 3.10 Beta</xref>
        </li>
        <li>
          <xref href="../../DITA-UK/UK11DA-Digest-Abstract/UK11_DA_dig.cite.dita">2013-09-17 -
            dig:cite: Added rule to handle <sourcexml>dig:cite</sourcexml> containing pcdata instead
            of child <sourcexml>ci:cite</sourcexml>.</xref>
        </li>
        <li>
          <xref href="../../DITA-UK/UK11DA-Digest-Abstract/UK11_DA_pubdate.dita">2013-09-17 -
            pubdate and date: Added exceptional rule for dpsi 0MCR and 042W, newspaper article
            abstracts. Rosetta lacks wrapper <sourcexml>jrnl:articleinfo</sourcexml>. Special rule
            is required to achieve target <targetxml>pubinfo:issuedate</targetxml>. The two dpsi are
            new in Sept 2013 delivery, as noted in WebTeam # 233402.</xref>
        </li>
        <li>
          <xref href="../../DITA-UK/UK11DA-Digest-Abstract/UK11_DA_dig.subject.dita">2013-09-17 -
            dig:subject: Added special rules for dpsi 03WX "Events" which contains unique
              <sourcexml>dig:subject</sourcexml> markup. The dpsi is new in Sept 2013 delivery, as
            noted in WebTeam # 233402.</xref>
        </li>
        <li>
          <xref href="../../DITA-UK/UK11DA-Digest-Abstract/UK11_DA_publication.dita">2013-09-17 -
            publication: Added mapping to handle rosetta containing two
              <sourcexml>publication</sourcexml>. Usecase occurs in dpsi 0MCR and 042W, newspaper
            article abstracts, which are new in Sept 2013 redelivery, as noted in WebTeam #
            233402.</xref>
        </li>
        <li>
          <xref href="../../DITA-UK/UK11DA-Digest-Abstract/UK11_DA_catchword.dita">2013-09-17 -
            catchwordgrp, catchwords: Section completely revised. Formerly, section was a temporary
            rule to allow processing of known data error within dpsi 0KVS "smart forms". Those data
            have been corrected. Revised section presents rules for recently received
              <sourcexml>catchwords</sourcexml> markup. The new markup occurs in dpsi 0MGR "Cases"
            which is new in Sept 2013 redelivery, as noted in WebTeam # 233402.</xref>
        </li>
        <li>
          <xref href="../../DITA-UK/UK11DA-Digest-Abstract/UK11_DA_case.info-ChOf-dig.info.dita">2013-09-17 - case:info (and descendants): New section. Handles new xpath
              <sourcexml>dig:body/dig:info/case:info</sourcexml> which has multiple new children.
            Markup occurs in dpsi 0MGR "Cases" which is new in Sept 2013 redelivery, as noted in
            WebTeam # 233402.</xref>
        </li>
        <li>
          <xref href="../../DITA-UK/UK11DA-Digest-Abstract/UK11_DA_relatedpub.dita">2013-09-17 -
            relatedpub: New section. Handles new xpath
              <sourcexml>dig:body/dig:info/relatedpub</sourcexml>. Markup occurs in dpsi 0MCR and
            042W "Newspapers" which are new in Sept 2013 redelivery, as noted in WebTeam #
            233402.</xref>
        </li>
        <!-- </ul><p>The following are common module changes</p><ul> -->
        <!-- removed, changelog cleanup 4/1/2016 jhm -->
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
      </ul></section>
    <section><title>Abstract 3.9_BETA Schema</title><p>2013-08-30</p><ul>
        <li>
          <xref href="../../DITA-UK/UK11DA-Digest-Abstract/UK11_DA_Introduction.dita">2013-08-30 -
            Introduction: Updated schema version to 3.9 Beta</xref>
        </li>
        <li>
          <xref href="../../DITA-UK/UK11DA-Digest-Abstract/UK11_DA_dig.subject.dita">2013-08-30 -
            dig:subject: Rule changed to handle new xpath
              <sourcexml>dig:subject/url/remotelink</sourcexml>. Rule is now conditional based on
            whether child <sourcexml>url</sourcexml> is present. See R4.5 Post-Iterative Testing
            UK11DA Issue 356.</xref>
        </li>
        <li>
          <xref href="../../DITA-UK/UK11DA-Digest-Abstract/UK11_DA_leg.relatedleg.dita">2013-08-30 -
            leg:relatedleg: Value of <sourcexml>@display-name</sourcexml> should carry through
            without manipulation. Removed rule requiring transform to lower-case for target
              <targetxml>@referencetype</targetxml>. Responds to stylesheet requirement that display
            format be retained in xml. Issue raised for newsitem stream but also applies to
            abstract. See R4.5 Post-Iterative Testing UK11DN Issue 351.</xref>
        </li>
        <li>
          <xref href="../../DITA-UK/UK11DA-Digest-Abstract/UK11_DA_references.dita">2013-08-30 -
            references: Rule changed to reflect recent rosetta delivery. Removed special mapping for
              <sourcexml>references[@referencetype="citingdocs"]/p/text/url/remotelink</sourcexml>.
            That was the anticipated xpath. Actual delivery supplies those data as
              <sourcexml>dig:subject/url/remotelink</sourcexml>. See R4.5 Post-Iterative Testing
            UK11DA Issue 356.</xref>
        </li>
        <!-- </ul><p>The following are common module changes</p><ul> -->
        <!-- removed, changelog cleanup 4/1/2016 jhm -->
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
      </ul></section>
    <section><title>Abstract 3.8_BETA Schema</title><p>2013-07-31</p><ul>
        <li>
          <xref href="../../DITA-UK/UK11DA-Digest-Abstract/UK11_DA_Introduction.dita">2013-07-31 -
            Introduction: Updated schema version to 3.8 Beta</xref>
        </li>
        <li>
          <xref href="../../DITA-UK/UK11DA-Digest-Abstract/UK11_DA_cttr.annotations.dita">2013-07-31
            - cttr:annotations: Expanded example to show two
            <sourcexml>cttr:annotations</sourcexml>. No change to rules.</xref>
        </li>
        <li>
          <xref href="../../DITA-UK/UK11DA-Digest-Abstract/UK11_DA_cttr.annot.dita">2013-07-31 -
            cttr:annot: Added mapping for attribute <sourcexml>cttr:annot[@leg-signal]</sourcexml>
          </xref>
        </li>
        <li>
          <xref href="../../DITA-UK/UK11DA-Digest-Abstract/UK11_DA_cttr.use-group_cttr.use.dita">2013-07-31 - cttr:use-group/cttr:use: Added mapping to
              <targetxml>legisinfo:statustext</targetxml> when topic is
            considered-legislation</xref>
        </li>
        <li>
          <xref href="../../DITA-UK/UK11DA-Digest-Abstract/UK11_DA_leg.info-ChOf-cttr.annot.dita">2013-07-31 - leg:info: Updated target example, replacing
              <targetxml>cttr:usage</targetxml> with <targetxml>legisinfo:status</targetxml>.</xref>
        </li>
        <li>
          <xref href="../../DITA-UK/UK11DA-Digest-Abstract/UK11_DA_citations.dita">2013-07-31 -
            *:citations: Expanded example to include considered-legislation. No change to
            rules</xref>
        </li>
        <!-- </ul><p>The following are common module changes</p><ul> -->
        <!-- removed, changelog cleanup 4/1/2016 jhm -->
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
    <section><title>Abstract 3.6_BETA Schema</title><p>2013-07-26</p><ul>
        <li>
          <xref href="../../DITA-UK/UK11DA-Digest-Abstract/UK11_DA_Introduction.dita">2013-07-26 -
            Introduction: Updated schema version to 3.6 Beta</xref>
        </li>
        <li>
          <xref href="../../DITA-UK/UK11DA-Digest-Abstract/UK11_DA_case.info.dita">2013-07-26 -
            case:info: Added special rule to suppress date for year one</xref>
        </li>
        <!-- </ul><p>The following are common module changes</p><ul> -->
        <!-- removed, changelog cleanup 4/1/2016 jhm -->
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
      </ul></section>
    <section><title>Abstract 3.5_BETA Schema</title><p>2013-07-01</p><ul>
        <li>
          <xref href="../../DITA-UK/UK11DA-Digest-Abstract/UK11_DA_Introduction.dita">2013-07-01 -
            Introduction: Target Schema: Removed jrnl:articleinfo as a condition for Abstract
            target; replaced with jrnl:journalcite.</xref>
        </li>
        <li>
          <xref href="../../DITA-UK/UK11DA-Digest-Abstract/UK11_DA_abstract.dita">2013-07-01 -
            abstract: Added rule to suppress <sourcexml>@display-name</sourcexml>
          </xref>
        </li>
      </ul></section>
    <section><title>Abstract 3.5_BETA Schema</title><p>2013-06-14</p><ul>
        <li>
          <xref href="../../DITA-UK/UK11DA-Digest-Abstract/UK11_DA_publication.dita">2013-06-14 -
            publication: Changed conversion of <sourcexml>publication/inlineobject</sourcexml>, now
            mapping within <targetxml>pubinfo:publicationlogo</targetxml>.</xref>
        </li>
      </ul></section>
    <section><title>Abstract 3.5_BETA Schema</title><p>2013-06-10</p><ul>
        <li>
          <xref href="../../DITA-UK/UK11DA-Digest-Abstract/UK11_DA_Introduction.dita">2013-06-10 -
            Introduction: Updated schema version to 3.5 Beta</xref>
        </li>
        <li>
          <xref href="../../DITA-UK/UK11DA-Digest-Abstract/UK11_DA_remotelink-service-query.dita">2013-06-05 - remotelink @service="QUERY":
              <sourcexml>remotelink[@service="QUERY"]</sourcexml> - Created special rule to capture
            pcdata</xref>
        </li>
        <!-- </ul><p>The following are common module changes</p><ul> -->
        <!-- removed, changelog cleanup 4/1/2016 jhm -->
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
          <xref href="../../common_newest/Rosetta_link-LxAdv-ref.lnlink.dita">2013-05-24 - link to
            ref:lnlink/@service="ATTACHMENT": Updated instruction for handling of link when smi is
            present and some of the verbiage is changed.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_docinfo-LxAdv-doc.metadata_doc.docinfo.dita">2013-05-16 - docinfo to doc:metadata/doc:docinfo: Fixed typo updating urn:contentitem
            to urn:contentItem</xref>
        </li>
      </ul></section>
    <section><title>Abstract 3.3_BETA Schema</title><p>2013-05-13</p><ul>
        <li>
          <xref href="../../DITA-UK/UK11DA-Digest-Abstract/UK11_DA_Introduction.dita">2013-05-13 -
            Introduction: Updated schema version to 3.3 Beta</xref>
        </li>
        <li>
          <xref href="../../DITA-UK/UK11DA-Digest-Abstract/UK11_DA_cttr.use-group_cttr.use.dita">2013-05-09 - cttr:use-group/cttr:use: Added rule for
              <sourcexml>cttr:use/@signal</sourcexml> when attribute absent or value is
            "citation"</xref>
        </li>
        <li>
          <xref href="../../DITA-UK/UK11DA-Digest-Abstract/UK11_DA_publication.dita">2013-05-02 -
            publication: Updated target example to reflect changes per latest Apollo markup.</xref>
        </li>
        <!-- </ul><p>The following are common module changes</p><ul> -->
        <!-- removed, changelog cleanup 4/1/2016 jhm -->
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
          <xref href="../../common_newest/Rosetta_link-LxAdv-ref.lnlink.dita">2013-05-02 - link to
            ref:lnlink/@service="ATTACHMENT": Some of the verbiage is changed and updated target
            example to if the SMI is present then a <targetxml>ref:lnlink/@status</targetxml>
            attribute is set to “valid”.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_docinfo.alt-renditions-LxAdv-doc.alt-renditions.dita">2013-05-01 - docinfo:alt-renditions/docinfo:alt-rendition to
            doc:alt-renditions/doc:alt-rendition: Updated instructions and target example per latest
            Apollo markup.</xref>
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
          <xref href="../../common_newest/Rosetta_link-LxAdv-ref.lnlink.dita">2013-05-01 - link to
            ref:lnlink/@service="ATTACHMENT": Updated instructions and target example per latest
            Apollo markup.</xref>
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
      </ul></section>
    <section><title>Abstract 3.1_BETA Schema</title><p>2013-04-11</p><ul>
        <li>
          <xref href="../../DITA-UK/UK11DA-Digest-Abstract/UK11_DA_Introduction.dita">2013-04-09 -
            Introduction: Updated schema version to 3.1 Beta</xref>
        </li>
        <li>
          <xref href="../../DITA-UK/UK11DA-Digest-Abstract/UK11_DA_Introduction.dita">2013-04-08 -
            Introduction: Added <sourcexml>otherinfo</sourcexml> as a condition requiring Abstract
            schema target</xref>
        </li>
        <li>
          <xref href="../../DITA-UK/UK11DA-Digest-Abstract/UK11_DA_pubdate.dita">2013-04-08 -
            pubdate and date: Abstract schema allows
              <targetxml>abstract:target/pubinfo:pubinfo</targetxml>. Removed all references to
            pending CR.</xref>
        </li>
        <li>
          <xref href="../../DITA-UK/UK11DA-Digest-Abstract/UK11_DA_contrib.dita">2013-04-08 -
            contrib (and children): Contributors - Removed references to pending CRs. Abstract
            schema allows all <sourcexml>contrib</sourcexml> mappings.</xref>
        </li>
        <li>
          <xref href="../../DITA-UK/UK11DA-Digest-Abstract/UK11_DA_leg.officialnum.dita">2013-04-08
            - leg:officialnum: <sourcexml>leg:officialnum</sourcexml> - Abstract schema allows
              <targetxml>legisinfo:bill/lnci:cite</targetxml>. Removed reference to pending
            CR.</xref>
        </li>
        <li>
          <xref href="../../DITA-UK/UK11DA-Digest-Abstract/UK11_DA_level.dita">2013-04-08 - level:
              <sourcexml>level</sourcexml> - <targetxml>section</targetxml> added to Abstract
            schema. Removed reference to pending CR.</xref>
        </li>
        <li>
          <xref href="../../DITA-UK/UK11DA-Digest-Abstract/UK11_DA_cttr.annotations.dita">2013-04-08
            - cttr:annotations: <sourcexml>cttr:annotations</sourcexml> -
              <targetxml>cttr:refs</targetxml> added to Abstract schema. Removed reference to
            pending CR.</xref>
        </li>
        <li>
          <xref href="../../DITA-UK/UK11DA-Digest-Abstract/UK11_DA_cttr.annot.dita">2013-04-08 -
            cttr:annot: <sourcexml>cttr:annot</sourcexml> - Removed reference to pending CR.
              <targetxml>cttr:consideredlegis</targetxml> no longer requires child
              <targetxml>cttr:legiscomponents</targetxml>
          </xref>
        </li>
        <li>
          <xref href="../../DITA-UK/UK11DA-Digest-Abstract/UK11_DA_cttr.use-group_cttr.use.dita">2013-04-08 - cttr:use-group/cttr:use: <sourcexml>cttr:use-group</sourcexml> - Removed
            reference to pending CR. <targetxml>cttr:usagegroup</targetxml> now allowed as child of
              <targetxml>cttr:consideredlegis</targetxml>
          </xref>
        </li>
        <li>
          <xref href="../../DITA-UK/UK11DA-Digest-Abstract/UK11_DA_leg.info-ChOf-cttr.annot.dita">2013-04-08 - leg:info: <sourcexml>cttr:annot/leg:info</sourcexml> -
              <targetxml>cttr:legisinfo</targetxml> added to Abstract schema. Removed reference to
            pending CR.</xref>
        </li>
        <!-- </ul><p>The following are common module changes</p><ul> -->
        <!-- removed, changelog cleanup 4/1/2016 jhm -->
        <li>
          <xref href="../../common_newest/Rosetta_docinfo.lbu-meta-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta-scheme.dita">2013-04-09 - docinfo:lbu-meta to doc:legacy-metadata[@metadatasource="lbu-meta"]: Added
            the instruction for handling
            <sourcexml>docinfo:metaitem[@name="QLDB"]</sourcexml>.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_Elements-LxAdv-Empty_Elements.dita">2013-03-28 -
            Suppress empty elements unless otherwise stated: Created.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_docinfo.alt-renditions-LxAdv-doc.alt-renditions.dita">2013-03-26 - docinfo:alt-renditions/docinfo:alt-rendition to
            doc:alt-renditions/doc:alt-rendition: Updated target example
              (<targetxml>proc:param/@value="pdf"</targetxml>) per project requirement.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_link-LxAdv-ref.lnlink.dita">2013-03-26 - link to
            ref:lnlink/@service="ATTACHMENT": Updated instruction and target example
              (<targetxml>proc:param/@value="pdf"</targetxml>) per project requirement.</xref>
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
          <xref href="../../common_newest/Rosetta_pgrp-LxAdv-pgrp.dita">2013-03-14 - pgrp to pgrp:
            Add instruction and example <sourcexml>pgrp/@id</sourcexml>.</xref>
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
          <xref href="../../common_newest/Rosetta_docinfo.alt-renditions-LxAdv-doc.alt-renditions.dita">2013-02-26 - docinfo:alt-renditions/docinfo:alt-rendition to
            doc:alt-renditions/doc:alt-rendition: Updated target example per project
            requirement.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_link-LxAdv-ref.lnlink.dita">2013-02-26 - link to
            ref:lnlink/@service="ATTACHMENT": Updated target example per project requirement.</xref>
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
      <title>Conversion Instructions Created</title>
      <p>2013-01-31</p>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK11DA-Digest-Abstract\UK11_DA_Change-Log.dita  -->
	<xsl:message>UK11_DA_Change-Log.xsl requires manual development!</xsl:message> 

</xsl:stylesheet>