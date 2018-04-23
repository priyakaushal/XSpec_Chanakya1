<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:ci="http://www.lexis-nexis.com/ci" xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" xmlns:jrnl="http://www.lexis-nexis.com/glp/jrnl" xmlns:source_lnci="http://www.lexis-nexis.com/lnci" xmlns:classify="http://www.lexisnexis.com/xmlschemas/content/shared/classification/1/" xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" xmlns:lnci="http://www.lexisnexis.com/xmlschemas/content/shared/citations/1/" xmlns:nitf="http://iptc.org/std/NITF/2006-10-18/" xmlns:proc="http://www.lexisnexis.com/xmlschemas/content/shared/process-elements/1/" xmlns:pubinfo="http://www.lexisnexis.com/xmlschemas/content/shared/publication-info/1/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita ci docinfo jrnl lnci">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="UK11_DN_Change-Log">
  <title>Change Log for UK11 Digests to Newsitem</title>
  <body>
    <section><title>Newsitem 4.4_PROD Schema</title><p>2016-11-11</p><ul>
        <li>
          <xref href="../../../Rosetta/DITA-UK/UK11DN-Digest-Newsitem/UK11_DN_publication.dita">2016-11-11 - publication id-UK11DN-29621: Not a rule change directly to this module.
            Modified Example Target to reflect blobstore markup; all paramater names that formerly
            contained the word "attachment" are now "object".</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_inlineobject-LxAdv-ref.inlineobject_BLOBSTORE.dita">2016-11-07 - inlineobject to ref:inlineobject for BLOBSTORE images id-CCCC-10540:
            Updated the instruction for ref:key-name and proc:param attribute values.</xref>
        </li>
      </ul></section>
    <section><title>Newsitem 4.4_PROD Schema</title><p>2016-10-28</p><ul>
        <li>
          <xref href="../../../Rosetta/DITA-UK/UK11DN-Digest-Newsitem/UK11_DN_publication.dita">2016-10-28 - publication id-UK11DN-29621: Not a rule change directly to this module.
            Modified Example Target to reflect blobstore markup for the parameter
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
    <section><title>Newsitem 4.4_PROD Schema</title><p>2016-07-29</p><ul>
        <li>
          <xref href="../../../Rosetta/DITA-UK/UK11DN-Digest-Newsitem/UK11_DN_publication.dita">2016-07-29 - publication id-UK11DN-29621: Not a rule change directly to this module.
            Modified xref link for inlineobject, to point to new blobstore module; and revised
            Example Target to reflect blobstore markup.</xref>
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
          <xref href="../../../Rosetta/common_newest/Rosetta_figure-LxAdv-figure.dita">2016-07-29 -
            figure to figure id-CCCC-10320: Added Note about xml snippets that illustrate image
            handling. Note summarizes move from Apollo to Blobstore application. UK is first LBU to
            move to Blobstore.</xref>
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
    <section><title>Newsitem 4.4_PROD Schema</title><p>2016-06-17</p><ul>
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
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2016-03-23 - ci.cite to lnci.cite id-CCCC-10268: Updated main instructions to clarify
            that descendants of ci:cite, and not just children, are to be processed.</xref>
        </li>
      </ul></section>
    <section><title>Newsitem 4.4_PROD Schema</title><p>2015-12-20</p><ul>
        <li>
          <xref href="../../../Rosetta/DITA-UK/UK11DN-Digest-Newsitem/UK11_DN_Introduction.dita">2015-12-20 - Introduction id-UK11DN-29614: Note that the following module has been
            added to the General Markup section: <sourcexml>p-limited</sourcexml> to
              <targetxml>p</targetxml> (id-CCCC-10419). RFA 2617.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/DITA-UK/UK11DN-Digest-Newsitem/UK11_DN_Introduction.dita">2015-12-20 - Introduction id-UK11DN-29614: Updated schema version to 4.4 PROD.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_inlineobject-LxAdv-ref.inlineobject.dita">2015-11-16 - inlineobject to ref:inlineobject id-CCCC-10369: Added instruction for
              <sourcexml>inlineobject/@key</sourcexml> to be suppressed.</xref>
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
          <xref href="../../../Rosetta/common_newest/Rosetta_link-LxAdv-ref.lnlink.dita">2015-05-22
            - link to ref:lnlink[@service="ATTACHMENT"] id-CCCC-10394: Changed the instructions to
            indicate <sourcexml>link/@status</sourcexml> is always dropped and removed
              <targetxml>ref:lnlink/@status</targetxml> from target example. This is a very
            low-priority change and has been added for technical correctness, particularly with
            respect to new CIs. Existing scripts do not have to implement this change since
              <targetxml>ref:lnlink/@status</targetxml> is ignored by LexisAdvance if it is
            present.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_lnlink_service_ATTACHMENT-LxAdv-ref.lnlink.dita">2015-05-22 - lnlink[@service="ATTACHMENT"] to ref:lnlink[@service="ATTACHMENT"]
            id-CCCC-10396: Added an instruction to explicitly indicate
              <sourcexml>lnlink/@status</sourcexml> is always dropped (suppressed). This is a very
            low-priority change and has been added for technical correctness, particularly with
            respect to new CIs. Existing scripts do not have to implement this change unless needed
            since prior to the change <targetxml>lnlink/@status</targetxml> handling was not
            explicitly specified.</xref>
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
          <xref href="../../../Rosetta/common_newest/Rosetta_remotelink-Chof-url-LxAdv-url.dita">2015-05-22 - url/remotelink to url id-CCCC-10464: Added an instruction to explicitly
            indicate <sourcexml>remotelink/@status</sourcexml> is always dropped (suppressed). This
            is a very low-priority change and has been added for technical correctness, particularly
            with respect to new CIs. Existing scripts do not have to implement this change unless
            needed since prior to the change <targetxml>remotelink/@status</targetxml> handling was
            not explicitly specified.</xref>
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
      </ul></section>
    <section><title>Newsitem 4.1_PROD Schema</title><p>2015-04-09</p><ul>
        <li>
          <xref href="../../../Rosetta/DITA-UK/UK11DN-Digest-Newsitem/UK11_DN_Introduction.dita">2015-04-09 - Introduction id-UK11DN-29614: Updated schema version to 4.1 PROD.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/DITA-UK/UK11DN-Digest-Newsitem/UK11_DN_Introduction.dita">2015-04-09 - Introduction id-UK11DN-29614: Note that the following module has been
            added to the Metadata section:
              <sourcexml>classification/classitem[@classscheme="topic:topicReference"]</sourcexml>
            to
              <targetxml>classify:classification/classify:classitem/topic:topicReference</targetxml>
            (id-CCCC-10516). The data addition was announced in UK11-DN Audit Package Review.
            Subsequent R4.5 Board Item 2257.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/DITA-UK/UK11DN-Digest-Newsitem/UK11_DN_dig.type.dita">2015-04-09 - dig:type id-UK11DN-29626: New section. New target xpath. Data are new in
            recent rosetta redelivery. R4.5 Board Item 2259.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_UK_docinfo.custom-metafield-id-attribute-suppressed.dita">2015-04-09 - docinfo:custom-metafield[@id] suppress [@id] id-CCCC-10521: New rule.
            Suppresses <sourcexml>@id</sourcexml> at
              <sourcexml>docinfo:custom-metafield[@id]</sourcexml>. No change to target xpath. The
            attribute is new in recent rosetta. Immediately affects only UK11-DN. R4.5 Content Issue
            2261.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_classification_classitem_topic.topicreference-Chof-docinfo-LxAdv-doc.docinfo_classify.classification.dita">2015-03-07 - classification/classitem[@classscheme="topic:topicReference"] to
            classify:classification/classify:classitem/topic:topicReference id-CCCC-10516: Added an
            indication that this mark-up may also occur within <sourcexml>levelinfo</sourcexml> (as
            well as within <sourcexml>docinfo</sourcexml> as originally stated).</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/DITA-UK/UK11DN-Digest-Newsitem/UK11_DN_Introduction.dita">2015-03-04 - Introduction id-UK11DN-29614: Note that the following module has been
            added to the Metadata section: <sourcexml>docinfo:dpsi[@id-string]</sourcexml> to
              <targetxml>doc:legacy-metadata[@metadatasource="lbu-meta"]/meta/metaitem</targetxml>
            (id-CCCC-10296). The data addition was announced in UK11-DN Audit Package Review Mar 3
            2015.</xref>
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
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_classification_classitem_topic.topicreference-Chof-docinfo-LxAdv-doc.docinfo_classify.classification.dita">2014-12-15 - classification/classitem[@classscheme="topic:topicReference"] to
            classify:classification/classify:classitem/topic:topicReference id-CCCC-10516: New
            section. Responds to discussion board item for UK11-DA but markup expected for all UK
            streams and rule will apply for any jurisdiction where the markup occurs. R4.5 Content
            Issue 2073.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2014-12-08 - ci.cite to lnci.cite id-CCCC-10268: Addition of mapping for
              <sourcexml>ci:pinpoint</sourcexml> to <targetxml>lnci:pinpoint</targetxml> and example
            from US LPA content.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.overview-LxAdv-docinfo.overview.dita">2014-11-04 - docinfo:overview to doc:overview id-CCCC-10303: Clarification only: added
            text to explicitly indicate that the child <targetxml>doc:overview/bodytext</targetxml>
            should be created. Not a change to instructions.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_figure-LxAdv-figure.dita">2014-10-28 -
            figure to figure id-CCCC-10320: Moved instruction regarding the XPath XPath
              <sourcexml>caption/note</sourcexml> into a separate topic. Not a rule change, just a
            minor reorganization of the instructions.</xref>
        </li>
      </ul></section>
    <section><title>Newsitem 4.0_PROD Schema</title><p>2014-10-27</p><ul>
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
          <xref href="../../../Rosetta/common_newest/Rosetta_figure-LxAdv-figure.dita">2014-10-24 -
            figure to figure id-CCCC-10320: Added instructions and example to handle the new XPath
              <sourcexml>caption/note</sourcexml>. (R4.5 Content Issue List #1993)</xref>
        </li>
      </ul></section>
    <section><title>Newsitem 4.0_PROD Schema</title><p>2014-10-16</p><ul>
        <li>
          <xref href="../../../Rosetta/DITA-UK/UK11DN-Digest-Newsitem/UK11_DN_Introduction.dita">2014-10-16 - Introduction id-UK11DN-29614: Updated schema version to 4.0 PROD.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/DITA-UK/UK11DN-Digest-Newsitem/UK11_DN_Introduction.dita">2014-10-16 - Introduction id-UK11DN-29614: Note that the following module has been
            added to the Metadata section: <sourcexml>docinfo:overview</sourcexml> to
              <targetxml>doc:overview</targetxml> (id-CCCC-10303). Data are new in Oct 2014
            redelivery. New target xpath. R4.5 Board Item 1970.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/DITA-UK/UK11DN-Digest-Newsitem/UK11_DN_Introduction.dita">2014-10-16 - Introduction id-UK11DN-29614: Note that the following module has been
            added to the General Markup section: <sourcexml>figure</sourcexml> to
              <targetxml>figure</targetxml> (id-CCCC-10320). Data are new in Oct 2014 redelivery.
            New target xpath. R4.5 Board Item 1971.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/DITA-UK/UK11DN-Digest-Newsitem/UK11_DN_note.dita">2014-10-16
            - note id-UK11DN-29619: Rule changes. Removed requirement to generate
              <targetxml>text</targetxml> wrapper for <targetxml>marginnote</targetxml>. Instead,
              <targetxml>marginnote</targetxml> is placed at end of <targetxml>text</targetxml>
            element which contains the associated narrative. This is done to sync with UK12-Treatise
            conversion. For description of UK12 issue, see R4.5 Board Item 1804.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_lnlink_service_ATTACHMENT-LxAdv-ref.lnlink.dita">2014-10-15 - lnlink/@service="ATTACHMENT" to ref:lnlink id-CCCC-10396: Rewrote
            instructions, including the correction of a typographic error, and added an
            example.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2014-09-16 - docinfo:assoc-links to doc:related-content id-CCCC-10284: Added a note to
            create <targetxml>proc:param/@name="attachment-smi"</targetxml> and
              <targetxml>proc:param/@value</targetxml> as these was there in the snippet but was
            missing in instruction and also added a note in to simplify in output
              <targetxml>ref:key-value/@value</targetxml>
          </xref>
        </li>
      </ul></section>
    <section><title>Newsitem 3.9_PROD Schema</title><p>2014-08-18</p><ul>
        <li>
          <xref href="../../../Rosetta/DITA-UK/UK11DN-Digest-Newsitem/UK11_DN_Introduction.dita">2014-08-18 - Introduction id-UK11DN-29614: Updated schema version to 3.9 PROD.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/DITA-UK/UK11DN-Digest-Newsitem/UK11_DN_Introduction.dita">2014-08-17 - Introduction id-UK11DN-29614: Note that the following module has been
            added to the Metadata section: <sourcexml>docinfo:assoc-links</sourcexml> to
              <targetxml>doc:related-content</targetxml> (id-CCCC-10284). Responds to recently
            delivered data; Phase-5 Discussion Item 170.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/DITA-UK/UK11DN-Digest-Newsitem/UK11_DN_Introduction.dita">2014-08-16 - Introduction id-UK11DN-29614: Note that the following module has been
            added to the General Markup section: <sourcexml>sup</sourcexml> to
              <targetxml>sup</targetxml> (id-CCCC-10474). Responds to recently delivered data;
            Phase-5 Discussion Item 170.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/DITA-UK/UK11DN-Digest-Newsitem/UK11_DN_remotelink-service-query.dita">2014-08-16 - remotelink @service="QUERY" id-UK11DN-29623: Not a rule change. Added Note
            explaining that special rule to retain pcdata for
              <sourcexml>remotelink[@service="QUERY"]</sourcexml> has become common practice. This
            section is retained to avoid confusion with previous versions of the CI.</xref>
        </li>
        <!-- Commented next item, about alttext, because module was removed and this changelog entry was causing error. 
      Module removed because not needed after move to blobstore.  McNally Sept 2016. -->
        <!--<li>
          <xref href="../../../Rosetta/DITA-UK/UK11DN-Digest-Newsitem/UK11_DN_link-alttext.dita"
            >2014-08-16 - link/@alttext, attribute suppressed id-UK11DN-29624: New rule.
              <sourcexml>link</sourcexml> may contain <sourcexml>@alttext</sourcexml>. The attribute
            is suppressed. The attribute is new in Aug 2014 delivery. No change for presentation.
            Specific to UK11-DN. Phase-5 Issue 171.</xref>
        </li>-->
        <li>
          <xref href="../../../Rosetta/DITA-UK/UK11DN-Digest-Newsitem/UK11_DN_remotelink-status.dita">2014-08-16 - remotelink/@status, attribute suppressed id-UK11DN-29625: Not a rule
            change. Clarifies that it is correct to suppress attribute
              <sourcexml>remotelink[@status]</sourcexml>. Section created in response to increased
            presence of <sourcexml>@status</sourcexml> in UK11-DN data delivered Aug 2014. Phase-5
            Issue 171.</xref>
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
          <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2014-06-18 - docinfo:assoc-links to doc:related-content id-CCCC-10284: Corrected minor
            typos in <sourcexml>lnlink[@service="QUERYLINK"]</sourcexml> instructions.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2014-06-13 - docinfo:assoc-links to doc:related-content id-CCCC-10284: Added
            instructions and an example for converting
              <sourcexml>lnlink[@service="QUERYLINK"]</sourcexml> to
              <targetxml>ref:lnlink</targetxml>.</xref>
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
          <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2014-04-28 - docinfo:assoc-links to doc:related-content id-CCCC-10284: Clarified
            instructions regarding <sourcexml>link</sourcexml> elements and added an example (#4)
            illustrating the special <sourcexml>text/link</sourcexml> conversion. No mapping rules
            where changed or added.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2014-04-21 - docinfo:assoc-links to doc:related-content id-CCCC-10284: Added an
            instruction to handle <sourcexml>link</sourcexml> elements. These can potentially occur
            in any future UK data and will be present in stream UK21fl when those documents become
            available later in 2014.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2014-04-03 - docinfo:assoc-links to doc:related-content id-CCCC-10284: Illustrative
            changes. Examples modified. Mapping for <sourcexml>ci:cite</sourcexml> added to Example
            3. Former Examples 4 and 5 removed to avoid confusion with special AU-NZ use case
            described in a separate module. R4.5 Content issue #1125, for AU-NZ, has prompted the
            changes for this general module.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2014-03-25 - docinfo:assoc-links to doc:related-content id-CCCC-10284: Added rule and
            example for <sourcexml>docinfo:assoc-links/docinfo:assoc-links-grp/ci:cite</sourcexml>.
            R4.5 Content issue #1125</xref>
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
      </ul></section>
    <section><title>Newsitem 3.6_PROD Schema</title><p>2014-01-02</p><ul>
        <li>
          <xref href="../../DITA-UK/UK11DN-Digest-Newsitem/UK11_DN_note.dita">2014-01-02 - note:
            Rule changes. Added rules to merge adjacent notes and to move notes. Responds to
            presentation requirements for producing single marginnote icon and to position icon
            after the associated text. These changes sync the conversion with UK12 Treatise.
            Tracking: R4.5 Content Issues 958 (UK11) and 972 (UK12), Webteam 103703 (UK12).</xref>
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
          <xref href="../../common_newest/Rosetta_UK_docinfo.custom-metafields-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta.meta.metaitem.dita">2013-11-20 - docinfo:custom-metafields to
            doc:legacy-metadata[@metadatasource="lbu-meta"]/meta/metaitem: Added instruction to
            handle
              <sourcexml>docinfo:custom-metafields/docinfo:custom-metafield/@name="jurisdiction"</sourcexml>
            is "European" Webteam # 239816 </xref>
        </li>
      </ul></section>
    <section><title>Newsitem 3.6_PROD Schema</title><p>2013-10-25</p><ul>
        <li>
          <xref href="../../DITA-UK/UK11DN-Digest-Newsitem/UK11_DN_Introduction.dita">2013-10-25 -
            Introduction: A Note about Oct 25 2013 CI release: The release incorporates updates to
            common instructions, particulary rules for table attributes morerows, colsep, rowsep
            (see webteams 235132 and 237774). There are no changes unique to UK11-DN.</xref>
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
    <section><title>Newsitem 3.6_PROD Schema</title><p>2013-08-29</p><ul>
        <li>
          <xref href="../../DITA-UK/UK11DN-Digest-Newsitem/UK11_DN_publication.dita">2013-08-29 -
            publication: Changed target to <targetxml>pubinfo:publicationlogo</targetxml>; formerly
            mapped within <targetxml>copyright</targetxml>. Changed in support of Vspec/stylesheet.
            R4.5 Post-Iterative Testing UK11DN Issue 354.</xref>
        </li>
        <li>
          <xref href="../../DITA-UK/UK11DN-Digest-Newsitem/UK11_DN_jrnl.articleinfo.dita">2013-08-29
            - jrnl:articleinfo, pubnote, copyright: Minor change, deleted Note. Formerly, Note
            explained that <targetxml>copyright</targetxml> would also hold mapping from
              <sourcexml>publication</sourcexml>. Target for <sourcexml>publication</sourcexml> has
            changed. Note no longer needed.</xref>
        </li>
      </ul></section>
    <section><title>Newsitem 3.6_PROD Schema</title><p>2013-08-26</p><ul>
        <li>
          <xref href="../../DITA-UK/UK11DN-Digest-Newsitem/UK11_DN_Introduction.dita">2013-08-26 -
            Introduction: Updated schema version to 3.6 PROD</xref>
        </li>
        <li>
          <xref href="../../DITA-UK/UK11DN-Digest-Newsitem/UK11_DN_leg.info.dita">2013-08-26 -
            leg:info and leg:relatedleg: Value of <sourcexml>@display-name</sourcexml> should carry
            through without manipulation. Removed rule requiring transform to lower-case for target
              <targetxml>@referencetype</targetxml>. Responds to stylesheet requirement that display
            format be retained in xml. R4.5 Post-Iterative Testing UK11DN Issue 351.</xref>
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
          <xref href="../../common_newest/Rosetta_title-LxAdv-title.dita">2013-07-30 - title to
            title: Updated Instruction when <sourcexml>title</sourcexml> contains word "TITLE: " or
            "NAME: ".</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_docinfo.doc-heading-LxAdv-dc.title.dita">2013-07-30 - docinfo:doc-heading to dc:title: Added Instruction when
              <sourcexml>docinfo:doc-heading</sourcexml> contains word "TITLE: " or "NAME: "
            .</xref>
        </li>
      </ul></section>
    <section><title>Newsitem 3.4_PROD Schema</title><p>2013-07-18</p><ul>
        <li>
          <xref href="../../DITA-UK/UK11DN-Digest-Newsitem/UK11_DN_pubdate.dita">2013-07-15 -
            pubdate and date: Added rule to suppress <sourcexml>@display-name</sourcexml>
          </xref>
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
    <section><title>Newsitem 3.4_PROD Schema</title><p>2013-07-01</p><ul>
        <li>
          <xref href="../../DITA-UK/UK11DN-Digest-Newsitem/UK11_DN_Introduction.dita">2013-07-01 -
            Introduction: Target Schema: Removed jrnl:articleinfo as a condition for Abstract
            target; replaced with jrnl:journalcite.</xref>
        </li>
        <li>
          <xref href="../../DITA-UK/UK11DN-Digest-Newsitem/UK11_DN_Introduction.dita">2013-07-01 -
            Introduction: Updated schema version to 3.4 PROD</xref>
        </li>
        <li>
          <xref href="../../DITA-UK/UK11DN-Digest-Newsitem/UK11_DN_publication.dita">2013-07-01 -
            publication: Created instructions for <sourcexml>publication</sourcexml>. Element was
            added in June 2013 data redelivery</xref>
        </li>
        <li>
          <xref href="../../DITA-UK/UK11DN-Digest-Newsitem/UK11_DN_jrnl.articleinfo.dita">2013-07-01
            - jrnl:articleinfo, pubnote, copyright: Created instructions for
              <sourcexml>jrnl:articleinfo</sourcexml> and children. Elements were added in June 2013
            data redelivery</xref>
        </li>
      </ul></section>
    <section><title>Newsitem 3.3_PROD Schema</title><p>2013-06-10</p><ul>
        <li>
          <xref href="../../DITA-UK/UK11DN-Digest-Newsitem/UK11_DN_Introduction.dita">2013-06-10 -
            Introduction: Updated schema version to 3.3 PROD</xref>
        </li>
        <li>
          <xref href="../../DITA-UK/UK11DN-Digest-Newsitem/UK11_DN_remotelink-service-query.dita">2013-06-05 - remotelink @service="QUERY":
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
    <section><title>Newsitem 3.2_PROD Schema</title><p>2013-05-13</p><ul>
        <li>
          <xref href="../../DITA-UK/UK11DN-Digest-Newsitem/UK11_DN_Introduction.dita">2013-05-13 -
            Introduction: Updated schema version to 3.2 PROD</xref>
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
      </ul></section>
    <section><title>Newsitem 3.0_PROD Schema</title><p>2013-04-15</p><ul>
        <li>
          <xref href="../../DITA-UK/UK11DN-Digest-Newsitem/UK11_DN_Introduction.dita">2013-04-09 -
            Introduction: Updated schema version to 3.0 PROD</xref>
        </li>
        <li>
          <xref href="../../DITA-UK/UK11DN-Digest-Newsitem/UK11_DN_Introduction.dita">2013-04-08 -
            Introduction: Added <sourcexml>otherinfo</sourcexml> as a condition requiring Abstract
            schema target</xref>
        </li>
        <li>
          <xref href="../../DITA-UK/UK11DN-Digest-Newsitem/UK11_DN_contrib.dita">2013-04-08 -
            contrib and org: <sourcexml>contrib/org</sourcexml> - <targetxml>nitf:byline</targetxml>
            now allows child <targetxml>ref:lnlink</targetxml>. Removed reference to pending
            CR.</xref>
        </li>
        <li>
          <xref href="../../DITA-UK/UK11DN-Digest-Newsitem/UK11_DN_note.dita">2013-04-08 - note:
              <sourcexml>note</sourcexml> - <targetxml>marginnote</targetxml> added to Newsitem
            schema. Removed reference to pending CR.</xref>
        </li>
        <li>
          <xref href="../../DITA-UK/UK11DN-Digest-Newsitem/UK11_DN_note.dita">2013-01-09 - note:
            Added detail on expected value for <sourcexml>note[@notetype]</sourcexml>; per
            workshop</xref>
        </li>
        <!-- </ul><p>The following are common module changes</p><ul> -->
        <!-- removed, changelog cleanup 4/1/2016 jhm -->
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
          <xref href="../../common_newest/Rosetta_Elements-LxAdv-Empty_Elements.dita">2013-03-28 -
            Suppress empty elements unless otherwise stated: Created.</xref>
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
        <li>
          <xref href="../../common_newest/Rosetta_UK_docinfo.custom-metafields-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta.meta.metaitem.dita">2013-01-25 - docinfo:custom-metafields to
            doc:legacy-metadata[@metadatasource="lbu-meta"]/meta/metaitem: Added instruction to
            handle the scenario when <sourcexml>docinfo:custom-metafield</sourcexml> content is
            empty, and provided an example.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_UK_docinfo.custom-metafields-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta.meta.metaitem.dita">2013-01-25 - docinfo:custom-metafields to
            doc:legacy-metadata[@metadatasource="lbu-meta"]/meta/metaitem: Added instruction to
            handle <sourcexml>docinfo:custom-metafield/@searchtype</sourcexml> attribute, and
            provided an example.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2013-01-22 - ci.cite
            to lnci.cite: Instruction modified for the scenario
              <sourcexml>ci:cite/ci:content/remotelink</sourcexml> to indicate that the
              <sourcexml>ci:cite</sourcexml> and <sourcexml>ci:content</sourcexml> start-tags and
            end-tags (but not their content) are dropped.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_UK_docinfo.custom-metafields-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta.meta.metaitem.dita">2013-01-09 - docinfo:custom-metafields to
            doc:legacy-metadata[@metadatasource="lbu-meta"]/meta/metaitem: Created.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_emph-LxAdv-emph.dita">2013-01-08 - emph to emph:
            Added note for handling <targetxml>emph/emph</targetxml> has the same
              <targetxml>@typestyle</targetxml> value.</xref>
        </li>
      </ul>
    </section>
    <section>
      <title>Conversion Instructions Created</title>
      <p>2012-12-28</p>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK11DN-Digest-Newsitem\UK11_DN_Change-Log.dita  -->
	<xsl:message>UK11_DN_Change-Log.xsl requires manual development!</xsl:message> 

</xsl:stylesheet>