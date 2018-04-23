<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:ci="http://www.lexis-nexis.com/ci" xmlns:dig="http://www.lexis-nexis.com/glp/dig" xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" xmlns:frm="http://www.lexis-nexis.com/glp/frm" xmlns:source_lnci="http://www.lexis-nexis.com/lnci" xmlns:admindoc="urn:x-lexisnexis:content:administrative-document:sharedservices:1" xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" xmlns:form="http://www.lexisnexis.com/xmlschemas/content/shared/form/1/" xmlns:lnci="http://www.lexisnexis.com/xmlschemas/content/shared/citations/1/" xmlns:person="http://www.lexisnexis.com/xmlschemas/content/shared/person/1/" xmlns:proc="http://www.lexisnexis.com/xmlschemas/content/shared/process-elements/1/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" xmlns:seclaw="http://www.lexisnexis.com/xmlschemas/content/legal/secondary-law/1/" version="2.0" exclude-result-prefixes="dita ci dig docinfo frm lnci">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="UK15PG_DIGESTDOC_changeLog">
  <title>Change Log for UK15 Practical Guidance - DIGESTDOC</title>
  <body>
    <section>
      <title>seclaw 8.19 PROD</title>
      <p>2017-02-06 - RS: </p>
      <ul>
        <li>
          <xref href="../../../Rosetta/DITA-UK/UK15-PracticalGuidance/UK15PG_DIGESTDOC_alt.rendition-ref.marker.dita">2017-02-06 - docinfo:alt-rendition/link without text id-UK15-30451: New rule. Handles
            <sourcexml>docinfo:alt-rendition/link</sourcexml> occurring without pcdata.
            Uses <sourcexml>docinfo:doc-heading</sourcexml> to populate
            <targetxml>ref:marker</targetxml>. VSTS Issue 226835.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_UK_docinfo.custom-metafields-LxAdv-dc.date_or_doc.docinfo_classify.classification.dita">2017-01-31 - (UK) docinfo:custom-metafield to dc:date or doc:metadata/doc:docinfo/classify:classification[@classscheme="uk-functional-information"] id-CCCC-10547: Added rule for "isCorePrecedent"; and updated the
            example.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.doc-heading-LxAdv-dc.title.dita">2017-01-17 - docinfo:doc-heading to dc:title id-CCCC-10292: concatenate the #PCDATA value for dc:title and create a new attribute lnmeta:titlepurpose="resultDisplayList" with fixed value ('resultDisplayList').</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_UK_docinfo.custom-metafields-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta.meta.metaitem.dita">2017-01-12 - docinfo:custom-metafields to doc:legacy-metadata[@metadatasource="lbu-meta"]/meta/metaitem id-CCCC-10485: Updated
            <sourcexml>docinfo:custom-metafield"</sourcexml> for
            "is-first-document-in-enactment" or "is-last-document-in-enactment". VSTS
            #162173</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_UK_docinfo.custom-metafields-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta.meta.metaitem.dita">2017-01-04 - docinfo:custom-metafields to doc:legacy-metadata[@metadatasource="lbu-meta"]/meta/metaitem id-CCCC-10485: Updated
            <sourcexml>docinfo:custom-metafield"</sourcexml> for
            "is-first-document-in-enactment" or "is-last-document-in-enactment". VSTS
            #162173</xref>
        </li>
      </ul>
    </section>
    <section>
      <title>seclaw 8.18 PROD</title>
      <p>2016-12-15 - RS: </p> 
      <ul>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_deflist-Chof-p_text-LxAdv-p_deflist.dita">2016-12-08 - p/text/deflist to p/deflist id-CCCC-10276: Added instruction to handle running text
            which is comes before <sourcexml>deflist</sourcexml> and it comes under
            <sourcexml>p/text</sourcexml>.</xref>
        </li>
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
          <xref href="../../../Rosetta/common_newest/Rosetta_link_refpt-LxAdv-ref.lnlink-ref.locator_anchoridref.dita">2016-11-16 - link/@refpt to ref:lnlink/ref.locator/@anchoridref id-CCCC-10395: Added to note regarding applying any rules related to 
            <targetxml>@anchoridref</targetxml>, referring specifically to section for "Identifiers to ID Data Type - 
            Handling Pattern Restrictions".</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2016-11-16 - remotelink to ref:crossreference id-CCCC-10465: Added to note regarding applying any rules related to 
            <targetxml>@anchoridref</targetxml>, referring specifically to section for "Identifiers to ID Data Type - 
            Handling Pattern Restrictions".</xref>
        </li>
      </ul>
    </section>
    <section>
      <title>seclaw 8.17 PROD</title>
      <p>2016-11-17 - RS: </p> 
      <ul>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_inlineobject-LxAdv-ref.inlineobject_BLOBSTORE.dita">2016-11-07 - inlineobject to ref:inlineobject for BLOBSTORE images id-CCCC-10540: Updated the instruction for ref:key-name and
            proc:param attribute values.</xref>
        </li>
      </ul>
    </section>
    <section>
      <title>seclaw 8.17 PROD</title>
      <p>2016-11-02 - RS: </p> 
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
          <xref href="../../../Rosetta/common_newest/Rosetta_edpnum-LxAdv-desig.dita">2016-10-12 - edpnum to desig id-CCCC-10308: Added rule for handling scenario when
            <sourcexml>pnum</sourcexml> and <sourcexml>edpnum </sourcexml> occur as
            siblings (applicable for UK22CS and UK06).</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_note-LxAdv-note.dita">2016-10-12 - note to note id-CCCC-10405: Added instruction for handling input scenario <sourcexml>note/legfragment</sourcexml>.
          </xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_UK_docinfo.custom-metafields-LxAdv-dc.date_or_doc.docinfo_classify.classification.dita">2016-10-04 - (UK) docinfo:custom-metafield to dc:date or doc:metadata/doc:docinfo/classify:classification[@classscheme="uk-functional-information"] id-CCCC-10547: Added rule for "word-toc"; and updated the example.</xref>
        </li></ul>
    </section>
    <section>
      <title>seclaw 8.15 PROD</title>
      <p>2016-09-21 - SS: 
        <ol>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_UK_docinfo.lbu-meta-LxAdv-doc.docinfo_classify.classification.dita">2016-09-21 - docinfo:lbu-meta to
              classify:classification[@classscheme="uk-functional-information id-CCCC-10548: Added
              the addtional instruction module for '<sourcexml>docinfo:lbu-meta</sourcexml>'
              markup.</xref>
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
        </ol>
      </p>
    </section>
    
    <section>
      <title>seclaw 8.14 PROD</title>
      <p>2016-08-10 - SS: 
        <ol>
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
            <xref href="../../../Rosetta/common_newest/Rosetta_blockquote-link-LxAdv-blockquote-p-text-ref.lnlink.dita">2016-08-03 - blockquote/link to blockquote/p/text/ref:lnlink id-CCCC-10246: Added Note about xml snippets that illustrate image
              handling. Note summarizes move from Apollo to Blobstore application. UK is first LBU to
              move to Blobstore.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_glp.note-Chof-figure-LxAdv-figure.dita">2016-08-03 - (Legislation &amp; Regulation) figure/glp:note to figure id-CCCC-10330: Added Note about xml snippets that illustrate
              image handling. Note summarizes move from Apollo to Blobstore application. UK is
              first LBU to move to Blobstore.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_h-Chof-figure-glp.note-LxAdv-figure-note-bodytext-h.dita">2016-08-03 - (Commentary &amp; Regulatroy) figure/glp:note/h to figure/note/bodytext/h id-CCCC-10346: Added Note about xml snippets that illustrate
              image handling. Note summarizes move from Apollo to Blobstore application. UK is
              first LBU to move to Blobstore.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_inlineobject-Chof-remotelink-LxAdv-ref.crossreference_ref.content_ref.inlineobject.dita">2016-08-03 - inlineobject Child of remotelink to ref:inlineobject id-CCCC-10364: Added Note about xml snippets that illustrate
              image handling. Note summarizes move from Apollo to Blobstore application. UK is
              first LBU to move to Blobstore.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_leg.histnote-Chof-p-LxAdv-note.dita">2016-08-03 - p/leg:histnote to note[@notetype="historical"] id-CCCC-10380: Added Note about xml snippets that illustrate
              image handling. Note summarizes move from Apollo to Blobstore application. UK is
              first LBU to move to Blobstore.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_p-limited_remotelink-LxAdv-p_text_ref.lnlink.dita">2016-08-03 - p-limited/remotelink to p/text/lnlink id-CCCC-10423: Added Note about xml snippets that illustrate
              image handling. Note summarizes move from Apollo to Blobstore application. UK is
              first LBU to move to Blobstore.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2016-08-03 - remotelink to ref:crossreference id-CCCC-10465: Added Note about xml snippets that illustrate
              image handling. Note summarizes move from Apollo to Blobstore application. UK is
              first LBU to move to Blobstore.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_inlineobject-Chof-emph-LxAdv-figure_ref.inlinobject.dita">2016-08-01 - emph/inlineobject to figure/ref:inlineobject id-CCCC-10359: Added Note about xml snippets that illustrate
              image handling. Note summarizes move from Apollo to Blobstore application. UK is
              first LBU to move to Blobstore.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_inlineobject-Chof-sub-LxAdv-figure_ref.inlineobject.dita">2016-08-01 - sub/inlineobject to figure/ref:inlineobject id-CCCC-10365: Added Note about xml snippets that illustrate
              image handling. Note summarizes move from Apollo to Blobstore application. UK is
              first LBU to move to Blobstore.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_inlineobject-Chof-dispformula-LxAdv-formula_ref.inlineobject.dita">2016-08-01 - dispformula/inlineobject to formula/ref:inlineobject id-CCCC-10358: Added Note about xml snippets that illustrate
              image handling. Note summarizes move from Apollo to Blobstore application. UK is
              first LBU to move to Blobstore.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_bodytext-link-LxAdv-seclaw.bodytext-p-text-ref.lnlink.dita">2016-08-01 - bodytext/link to seclaw:bodytext/p/text/ref:lnlink id-CCCC-10248: Added Note about xml snippets that illustrate image handling. Note summarizes move from Apollo to Blobstore application. UK is first LBU to move to Blobstore.</xref>
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
            <xref href="../../../Rosetta/common_newest/Rosetta_figure-LxAdv-figure.dita">2016-07-29 - figure to figure id-CCCC-10320: Added Note about xml snippets that illustrate
              image handling. Note summarizes move from Apollo to Blobstore application. UK is
              first LBU to move to Blobstore.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_inlineobject-LxAdv-figure_ref.inlineobject.dita">2016-07-29 - inlineobject to figure/ref:inlineobject id-CCCC-10368: Added Note about xml snippets that illustrate
              image handling. Note summarizes move from Apollo to Blobstore application. UK is
              first LBU to move to Blobstore.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_inlineobject-Chof-h-LxAdv-figure_ref.inlineobject.dita">2016-07-29 - h/inlineobject to figure/ref:inlineobject id-CCCC-10362: Added Note about xml snippets that illustrate
              image handling. Note summarizes move from Apollo to Blobstore application. UK is
              first LBU to move to Blobstore.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_inlineobject-Chof-bodytext-LxAdv-bodytext_p_text_figure_ref.inlineobject.dita">2016-07-29 - bodytext/inlineobject to bodytext/p/text/figure/ref:inlineobject id-CCCC-10354: Added Note about xml snippets that illustrate
              image handling. Note summarizes move from Apollo to Blobstore application. UK is
              first LBU to move to Blobstore. VSTS 76146</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_refpt-Chof-p_text_emph-LxAdv-p_ref.anchor.dita">2016-07-27 - refpt child of p/text/emph to p/ref:anchor id-CCCC-10457: Added a note for handling of text which is
              comes under the <sourcexml>refpt</sourcexml> in source.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_UK_docinfo.custom-metafields-LxAdv-dc.date_or_doc.docinfo_classify.classification.dita">2016-07-26 - (UK) docinfo:custom-metafield to dc:date or doc:metadata/doc:docinfo/classify:classification[@classscheme="uk-functional-information"] id-CCCC-10547: Added rule for "resultType"; and updated the
              example.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_inlineobject-Chof-p_blockquote-LxAdv-p_figure_ref.inlineobject.dita">2016-07-26 - p/blockquote/inlineobject to p/figure/ref:inlineobject id-CCCC-10363: Added Note about xml snippets that
              illustrate image handling. Note summarizes move from Apollo to Blobstore
              application. UK is first LBU to move to Blobstore. </xref>
          </li>
        </ol>
      </p>
    </section>
    <section>
      <title>seclaw 8.14 PROD</title>
      <p>2016-07-19 - JCG: 
        <ol>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_UK_docinfo-LxAdv-doc.docinfo_classify.classification.dita">2016-06-17 - (UK) docinfo to doc:metadata/doc:docinfo/classify:classification[@classscheme="uk-functional-information"] id-CCCC-10546: Created. New rules.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_UK_docinfo.custom-metafields-LxAdv-dc.date_or_doc.docinfo_classify.classification.dita">2016-06-17 - (UK) docinfo:custom-metafield to dc:date or doc:metadata/doc:docinfo/classify:classification[@classscheme="uk-functional-information"] id-CCCC-10547: Created. New rules.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_l-LxAdv-list.dita">2016-04-01 - l to list id-CCCC-10372: Added mapping instruction for handling h within listitem.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_footnote-LxAdv-footnote.dita">2016-01-05 - footnotegrp and footnote to footnotegrp and footnote id-CCCC-10322: Added instructions for
              <sourcexml>footnotegrp</sourcexml> within <sourcexml>frm:div</sourcexml>. To generate
              <targetxml>form:p/form:text</targetxml> wrapper for target
              <targetxml>footnotegroup</targetxml>. Immediately affects UK12 but will
              apply to any stream if the use case occurs. RFA 2653.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_inlineobject-Chof-p_blockquote-LxAdv-p_figure_ref.inlineobject.dita">2015-12-08 - p/blockquote/inlineobject to p/figure/ref:inlineobject id-CCCC-10363: Added '.tiff' to the list of allowable values for <sourcexml>proc:param[@name="object-type"]/@value="image"</sourcexml>.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_inlineobject-Chof-p_blockquote-LxAdv-p_figure_ref.inlineobject.dita">2015-11-17 - p/blockquote/inlineobject to p/figure/ref:inlineobject id-CCCC-10363: Added note to use a different instruction if <sourcexml>inlineobject</sourcexml> contains siblings.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_inlineobject-LxAdv-ref.inlineobject.dita">2015-11-16 - inlineobject to ref:inlineobject id-CCCC-10369: Added instruction for <sourcexml>inlineobject/@key</sourcexml> 
              to be suppressed.</xref>
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
            <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.overview-LxAdv-docinfo.overview.dita">2015-09-08 - docinfo:overview to doc:overview id-CCCC-10303: Added the handling of new attribute value
              "abstract" inside the <targetxml>docinfo:overview@type</targetxml> markup for UK
              streams and it should be mapped with <targetxml>doc:overview@type="abstract"</targetxml>.
              R4.5 Content Issue List #2391.</xref>
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
            <xref href="../../../Rosetta/common_newest/Rosetta_inlineobject-Chof-emph-LxAdv-figure_ref.inlinobject.dita">2015-07-24 - emph/inlineobject to figure/ref:inlineobject id-CCCC-10359: When Inlineobject is followed by two emph
              elements of same typestyle <sourcexml>sup/emph/emph/inlineobject</sourcexml>then from Target we should drop the one emph element
              and the followed <sourcexml>emph/inlineobject</sourcexml> should mapped with
              <targetxml>emph/ref:inlineobject</targetxml> in Target.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_p-limited_remotelink-LxAdv-p_text_ref.lnlink.dita">2015-07-24 - p-limited/remotelink to p/text/lnlink id-CCCC-10423: Corrected typo in title (was 
              "<sourcexml>p-limited/emph</sourcexml> to <targetxml>p/text/emph</targetxml>", corrected to be 
              "<sourcexml>p-limited/remotelink</sourcexml> to <targetxml>p/text/lnlink</targetxml>".</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_inlineobject-Chof-emph-LxAdv-figure_ref.inlinobject.dita">2015-07-21 - emph/inlineobject to figure/ref:inlineobject id-CCCC-10359: When Inlineobject is followed by two emph
              elements of same typestyle then from Target we should drop the one emph element
              and the followed <sourcexml>emph/inlineobject</sourcexml> should mapped with
              <targetxml>figure/ref:inlineobject</targetxml> in Target.</xref>
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
            <xref href="../../../Rosetta/common_newest/Rosetta_inlineobject-Chof-emph-LxAdv-figure_ref.inlinobject.dita">2015-06-18 - emph/inlineobject to figure/ref:inlineobject id-CCCC-10359: When source is having emph followed by inlineobject inside base:h element <sourcexml>h/emph/inlineobject</sourcexml> than in Target it should Map it like <targetxml>emph/ref:inlineobject</targetxml> as emph containing text under it.</xref>
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
            <xref href="../../../Rosetta/common_newest/Rosetta_remotelink-self-inter-document-link-LxAdv-intra-document-link.dita">2015-05-22 - remotelink (self inter-document link) to ref:lnlink (intra-document link) id-CCCC-10468: Added an instruction to explicitly indicate <sourcexml>remotelink/@status</sourcexml> is always dropped (suppressed). This is a very low-priority change and has been added for technical correctness, particularly with respect to new CIs. Existing scripts do not have to implement this change unless needed since prior to the change <targetxml>remotelink/@status</targetxml> handling was not explicitly specified.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_remotelink-Chof-url-LxAdv-url.dita">2015-05-22 - url/remotelink to url id-CCCC-10464: Added an instruction to explicitly indicate <sourcexml>remotelink/@status</sourcexml> is always dropped (suppressed). This is a very low-priority change and has been added for technical correctness, particularly with respect to new CIs. Existing scripts do not have to implement this change unless needed since prior to the change <targetxml>remotelink/@status</targetxml> handling was not explicitly specified.</xref>
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
            <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2014-12-17 - docinfo:assoc-links to doc:related-content id-CCCC-10284: Added a Note for CA05, CA06, CA07 and CA08 for handling
              <sourcexml>docinfo:assoc-links-grp/remotelink[@service="QUERY"] </sourcexml>
            </xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_classification_classitem_topic.topicreference-Chof-docinfo-LxAdv-doc.docinfo_classify.classification.dita">2014-12-15 - classification/classitem[@classscheme="topic:topicReference"] to classify:classification/classify:classitem/topic:topicReference id-CCCC-10516: New section. Responds to discussion board
              item for UK11-DA but markup expected for all UK streams and rule will apply for
              any jurisdiction where the markup occurs. R4.5 Content Issue 2073.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_entry_p-limited-LxAdv-entry_p.dita">2014-11-11 - entry/p-limited to entry/p id-CCCC-10319: Updated instruction when multiple consecutive <sourcexml>p-limited</sourcexml> elements occur within <sourcexml>entry</sourcexml>.</xref>
          </li>
        </ol>
      </p>
    </section>
    <section>
      <title>seclaw 8.1 PROD</title>
      <p>2014-11-04 - JCG:
        <ol>
          <li><xref href="../../common_newest/Rosetta_docinfo.overview-LxAdv-docinfo.overview.dita">2014-11-04 - <sourcexml>docinfo:overview</sourcexml> to <targetxml>doc:overview</targetxml> id-CCCC-10303: Added this instruction. (R4.5 Content Issue List #2017) </xref></li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_entry_p-limited-LxAdv-entry_p.dita">2014-10-28 - entry/p-limited to entry/p id-CCCC-10319: Added note to handle scenario when <sourcexml>l</sourcexml> is a child of <sourcexml>entry/p-limited</sourcexml>.</xref>
          </li>
        </ol>
      </p>
    </section>
    <section>
      <title>seclaw 8.1 PROD</title>
      <p>2014-10-27 - JCG:
        <ol>
          <li>
            <xref href="../../../Rosetta/DITA-UK/UK15-PracticalGuidance/UK15PG_DIGESTDOC_otherinfo.dita">2014-10-27 - otherinfo id-UK15-30442: Added a note refering to the new topic <sourcexml>issue</sourcexml> (id-UK15-30448). No change to instructions for the <sourcexml>otherinfo</sourcexml> element.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/DITA-UK/UK15-PracticalGuidance/UK15PG_DIGESTDOC_issue.dita">2014-10-27 - issue id-UK15-30448: Added this instruction to support a change in the Rosetta mark-up. (R4.5 Content Issue List #1972)</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_figure-LxAdv-figure.dita">2014-10-24 - figure to figure id-CCCC-10320: Added instructions and example to handle the new XPath <sourcexml>caption/note</sourcexml>. (R4.5 Content Issue List #1993)</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_pgrp_searchtype-LxAdv-blockquote.dita">2014-10-24 - pgrp/@searchtype="QUOTED-TEXT" id-CCCC-10511: Changed ID because it was same as a topic handling conversion to <targetxml>pgrp</targetxml> applicable to Canadian streams. Note this change is not a rule change, just an fix of the ID value for this topic.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_emp-Chof-heading_title-LxAdv-heading_title.dita">2014-10-22 - heading/title/emph to heading/title id-CCCC-10313: Added an example to explicitly show child elements of <sourcexml>emph</sourcexml> being retained. (R4.5 Content Issue List #1998)</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_lnlink_service_ATTACHMENT-LxAdv-ref.lnlink.dita">2014-10-15 - lnlink/@service="ATTACHMENT" to ref:lnlink id-CCCC-10396: Rewrote instructions, including the correction of a typographic error, and added an example.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_inlineobject-LxAdv-figure_ref.inlineobject.dita">2014-10-13 - inlineobject to figure/ref:inlineobject id-CCCC-10368: Added note and example to suppress
              <targetxml>proc:nl</targetxml> from before and after of
              <targetxml>figure/inlineobject</targetxml> when it comes inside
              <targetxml>verbatim</targetxml> element.</xref>
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
            <xref href="../../../Rosetta/common_newest/Rosetta_inlineobject-LxAdv-ref.inlineobject.dita">2014-07-08 - inlineobject to ref:inlineobject id-CCCC-10369: Not a rule change. Clarification added to note regarding suppression of <sourcexml>inlineobject</sourcexml> when <sourcexml>inlineobject/@filename</sourcexml> contains certain values.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_table-LxAdv-table.dita">2014-07-08 - table to table id-CCCC-10475: Updated instruction for added the
              following rarely occurring attributes <sourcexml>@char</sourcexml> inside the <sourcexml>entry</sourcexml>.</xref>
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
            <xref href="../../../Rosetta/common_newest/Rosetta_emp-Chof-heading_title-LxAdv-heading_title.dita">2014-06-04 - heading/title/emph to heading/title id-CCCC-10313: Clarified instructions and added an example to show multiple <sourcexml>emph</sourcexml> elements being handled.</xref>
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
        </ol>
      </p>
    </section>
    <section>
      <title>seclaw 7.10 PROD</title>
      <p>2014-04-17 - JCG: <ol>
          <li>
            <xref href="../../../Rosetta/DITA-UK/UK15-PracticalGuidance/UK15PG_DIGESTDOC_dig.info.dita">2014-04-17 - dig:info: Source <sourcexml>docinfo:selector</sourcexml> content value
              changed in redelivered data to "SmartForm" to indicate a
                <targetxml>seclaw:level[@leveltype="form"]</targetxml> should be used. The old value
              was "digest-form-placeholder". (Responds to issue #1321 on R4.5 post-initial launch
              issue list for UK15ds.)</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2014-04-03 - docinfo:assoc-links to doc:related-content: Illustrative changes.
              Examples modified. Mapping for <sourcexml>ci:cite</sourcexml> added to Example 3.
              Former Examples 4 and 5 removed to avoid confusion with special AU-NZ use case
              described in a separate module. R4.5 Content issue #1125, for AU-NZ, has prompted the
              changes for this general module.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2014-03-25 - docinfo:assoc-links to doc:related-content: Added rule and example for
                <sourcexml>docinfo:assoc-links/docinfo:assoc-links-grp/ci:cite</sourcexml>. R4.5
              Content issue #1125</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_figure-LxAdv-figure.dita">2014-03-20
              - figure to figure: Illustrative change. Added example to explicitly show standard
              conversion of child link to ref:lnlink. Prompted by Phase 6 UK Discussion Item 77.
              Webteam 252434.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_toc-LxAdv-toc.dita">2014-03-20 - toc
              to toc: New rule. Added mapping for <sourcexml>entry-pageref</sourcexml> to
                <targetxml>toc-pageref</targetxml>. Initially for UK12 but will apply for any stream
              if the use case occurs. Responds to data added in UK12 delivery Mar 2014; known to
              occur in dpsi 02FL and 03VY. Phase 6 UK Discussion Item 79. Webteam 252434.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2014-02-25 - remotelink to ref:crossreference: Updated instruction and created new
              example (#16) for handling <sourcexml>remotelink[@service="QUERY"]</sourcexml>. New
              instruction preserves pcdata but suppresses <sourcexml>remotelink</sourcexml> markup.
              Webstar #250335. Change applies immediately to all Pacific streams, and in the long
              run to all streams.</xref>
          </li>
        </ol>
      </p>
    </section>
    <section>
      <title>seclaw 7.9 PROD</title>
      <p>2014-02-13 - JCG: <ol>
          <li>
            <xref href="../../DITA-UK/UK15-PracticalGuidance/UK15PG_DIGESTDOC_dig.catchwordgrp.dita">2014-02-12 - catchwordgrp: Created this instruction to handle a new XPath in the
              source content that will provide the text for the "Overview" during display. (R4.5
              Content Issue List issue #1048)</xref>
          </li>
          <li>
            <xref href="../../DITA-UK/UK15-PracticalGuidance/UK15PG_DIGESTDOC_abstract.dita">2014-02-12 - abstract: Significant change in mapping requested by LBU: abstract is no
              longer suppressed, instead it becomes
                <targetxml>seclaw:level/seclaw:prelim/abstract</targetxml>. (discussion related to
              R4.5 Content Issue List issue #1048)</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_docinfo.topiccodes-to-LxAdv-classify.classification_classscheme_docinfo-topiccodes.dita">2014-02-03 - docinfo:topiccodes to
              classify:classification[@classscheme="docinfo:topiccodes"]: Added a special rule for
              UK07 contents, When element <sourcexml>docinfo:topiccode</sourcexml> contains
              attribute <sourcexml>@scheme="source-by-date"</sourcexml>, then conversion will
              suppress it including its contents as well. Phase 5 UK discussion-defect tracking:
              issue #156. </xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2014-02-03 - remotelink to ref:crossreference: Instruction updated if
                <sourcexml>remotelink</sourcexml> occurs as multiple, immediate siblings and without
              intermediary text within <sourcexml>title</sourcexml>. Also added a example for the
              same scenario. Phase 5 UK discussion-defect tracking issue #161</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_Elements-LxAdv-Empty_Elements.dita">2014-01-16 -
              Suppress each empty element unless otherwise stated: Added list of elements to
              suppress if empty.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_date-Chof-docinfo.load-date-LxAdv-dc.date_lnmeta.datetype_load-date-scheme.dita">2014-01-07 - docinfo:load-date/date to dc:date[@lnmeta:datetype="load-date"]: Added a
              note along with example which contains "00" value in <sourcexml>@day="00"</sourcexml>
              and <sourcexml>@month="00"</sourcexml> attributes encountered in CANADA
              contents.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_footnote-LxAdv-footnote.dita">2014-01-06 -
              footnotegrp and footnote to footnotegrp and footnote: Updated target example for
              applying the rule of "deleting extraneous instances of @morerows, @colsep and @rowsep"
              in sample documents.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_l-LxAdv-list.dita">2014-01-06 - l to list: Added
              mapping instruction for nested lists.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2013-12-30 -
              ci.cite to lnci.cite: Minor illustrative change. Added "(AU Journals/Newsitem)" to
              headings for last example to clarify that retention of
                <sourcexml>@type="cite4thisdoc"</sourcexml> is an exception for that content, as
              already described in narrative rules.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_deflist-LxAdv-deflist.dita">2013-12-20 - deflist
              to deflist: Added note to place a <sourcexml>footnote</sourcexml> or
                <sourcexml>fnr</sourcexml> that is a child of <sourcexml>defitem</sourcexml> into
              one of its children. WebTeam #5158742 - AU04.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_glp.note_blockquote_p_text_inlineobject-LxAdv-note_bodytext_p_text.dita">2013-12-20 - glp:note: Corrected the target example (added ref:corssreference).
              WebTeam #5158742 - AU04. Applies generally to all LBUs and streams.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_endnote-LxAdv-endnote.dita">2013-12-18 - endnote
              to endnote: Instruction added to convert <sourcexml>remotelink/@refpt</sourcexml> to
                <targetxml>footnote-ref/@anchoridref</targetxml>. WebTeam #5158742 - AU04. Applies
              generally to all LBUs and streams.</xref>
          </li>
        </ol>
      </p>
    </section>
    <section>
      <title>seclaw 7.8 PROD</title>
      <p>2013-12-17 - JCG: <ol>
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
          <li>
            <xref href="../../common_newest/Rosetta_glp.note-Chof-li-LxAdv-listitem-note.dita">2013-11-07 - l/glp:note to list/note: Fixed title to correctly indicate mapping
              described. Not a rule change.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_p-LxAdv-p.dita">2013-10-25 - p to p: Added
              instruction and example <sourcexml>p/@nl="0"</sourcexml> comes in
                <sourcexml>references</sourcexml>.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_figure-LxAdv-figure.dita">2013-10-23 - figure to
              figure: Added instruction for handling figure/p/text/inlineobject Webteam #
              239816</xref>
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
        </ol>
      </p>
    </section>
    <section>
      <title>seclaw 7.6 PROD</title>
      <p>2013-10-21<ol>
          <li>
            <xref href="../../common_newest/Rosetta_Elements-LxAdv-Empty_Elements.dita">2013-10-14 -
              Suppress each empty element unless otherwise stated: Changed antecedent to singular to
              match instructions.</xref>
          </li>
          <li>
            <xref href="../../DITA-UK/UK15-PracticalGuidance/UK15PG_DIGESTDOC.dita">2013-10-14 -
              DIGESTDOC: Minor change. Removed statement that seclaw:head expected to be empty.
              Reflects move of smart-form content from UK11-DA to UK15-DS. Webteam # 240975</xref>
          </li>
          <li>
            <xref href="../../DITA-UK/UK15-PracticalGuidance/UK15PG_DIGESTDOC_dig.info.dita">2013-10-14 - dig:info: Added rule for setting
                <targetxml>seclaw:level[@leveltype]</targetxml> to "form". Previously always set to
              "unclassified". Supports move of smart-form content from UK11-DA to UK15-DS. Webteam #
              240975</xref>
          </li>
          <li>
            <xref href="../../DITA-UK/UK15-PracticalGuidance/UK15PG_DIGESTDOC_dig.title.dita">2013-10-14 - dig:title: Minor change. Clarifies usual practice that
                <sourcexml>title</sourcexml> becomes <targetxml>heading/title</targetxml>. Rewording
              reflects move of smart-form content from UK11-DA to UK15-DS. Webteam # 240975</xref>
          </li>
          <li>
            <xref href="../../DITA-UK/UK15-PracticalGuidance/UK15PG_DIGESTDOC_dig.cite.dita">2013-10-14 - dig:cite: New Rule. Supports move of smart-form content from UK11-DA to
              UK15-DS. Webteam # 240975</xref>
          </li>
          <li>
            <xref href="../../DITA-UK/UK15-PracticalGuidance/UK15PG_DIGESTDOC_otherinfo.dita">2013-10-14 - otherinfo: New Rule. Supports move of smart-form content from UK11-DA to
              UK15-DS. Webteam # 240975</xref>
          </li>
          <li>
            <xref href="../../DITA-UK/UK15-PracticalGuidance/UK15PG_DIGESTDOC_pubdate.dita">2013-10-14 - pubdate: New Rule. Supports move of smart-form content from UK11-DA to
              UK15-DS. Webteam # 240975</xref>
          </li>
          <li>
            <xref href="../../DITA-UK/UK15-PracticalGuidance/UK15PG_DIGESTDOC_classification.dita">2013-10-14 - classification: New Rule. Supports move of smart-form content from
              UK11-DA to UK15-DS. Webteam # 240975</xref>
          </li>
          <li>
            <xref href="../../DITA-UK/UK15-PracticalGuidance/UK15PG_DIGESTDOC_abstract.dita">2013-10-14 - abstract: Minor change. Clarifies suppression of
                <sourcexml>abstract</sourcexml> container. Rewording reflects move of smart-form
              content from UK11-DA to UK15-DS. Webteam # 240975</xref>
          </li>
          <li>
            <xref href="../../DITA-UK/UK15-PracticalGuidance/UK15PG_DIGESTDOC_level.dita">2013-10-14
              - level: Minor change. Clarifies that target container
                <targetxml>seclaw:level/seclaw:bodytext</targetxml> is created from
                <sourcexml>dig:info</sourcexml>, not <sourcexml>abstract</sourcexml>. Also removed
              subsequent sections for child elements which are covered in General Markup rules.
              Rewording reflects move of smart-form content from UK11-DA to UK15-DS. Webteam #
              240975</xref>
          </li>
          <li>
            <xref href="../../DITA-UK/UK15-PracticalGuidance/UK15PG_DIGESTDOC_docinfo.keywords.dita">2013-10-14 - docinfo:keywords to classify:classification[@classscheme="keywords"]:
              New Rule. Supports move of smart-form content from UK11-DA to UK15-DS. Webteam #
              240975</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_deflist-LxAdv-deflist.dita">2013-10-14 - deflist
              to deflist: Added new rule to create a blank defitem/defdesc element after the defterm
              element. WebTeam # 237242.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_refpt-Chof-p_text-LxAdv-p_ref.anchor.dita">2013-10-11 - refpt child of p/text to p/ref:anchor: Added a note and update the
              target examples when refpt comes without attribute
                <sourcexml>[@type="ext"]</sourcexml> and <sourcexml>[@type="local"]</sourcexml> in
              source documents.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_refpt-Chof-p_text_emph-LxAdv-p_ref.anchor.dita">2013-10-11 - refpt child of p/text/emph to p/ref:anchor: Added a note and update the
              target examples when refpt comes without attribute
                <sourcexml>[@type="ext"]</sourcexml> and <sourcexml>[@type="local"]</sourcexml> in
              source documents.</xref>
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
            <xref href="../../common_newest/Rosetta_footnote-LxAdv-footnote.dita">2013-10-02 -
              footnotegrp and footnote to footnotegrp and footnote: Not a rule change. Cleaned up
              the note regarding the scenario when footnote/@fntoken has a value of "0" in an
              attempt to make the directions clearer.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_link-LxAdv-ref.lnlink.dita">2013-09-24 - link to
              ref:lnlink/@service="ATTACHMENT": Not a rule change. Modified examples to illustrate
              when <sourcexml>@status</sourcexml> suppressed and when retained.</xref>
          </li>
        </ol></p></section>
    <section>
      <title>seclaw 7.4 PROD</title>
      <p>2013-09-19 - JCG: <ol>
          <li>
            <xref href="../../common_newest/Rosetta_desiglabel-Chof-desig-LxAdv-desig.dita">2013-09-19 - desig/desiglabel to desig: Added rules to insert space between label and
              number when none present in source. Rule required for UK content. Immediately known to
              occur in UK06, UK07, and UK12. R4.5 Post Iterative Testing Issue 431. WebTeam #
              236033.</xref>
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
            <xref href="../../common_newest/Rosetta_desiglabel-Chof-desig-LxAdv-desig.dita">2013-08-23 - desig/desiglabel to desig: Removed <targetxml>@value</targetxml> from
              target example element <targetxml>desig</targetxml>, as it was decided, that if source
              element doesn't contain <sourcexml>@value</sourcexml> then target element
                <targetxml>desig</targetxml> will not contain <targetxml>@value</targetxml>.</xref>
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
            <xref href="../../common_newest/Rosetta_glp.note-Chof-level_heading-LxAdv-seclaw.level_seclaw.prelim_note.dita">2013-08-22 - level/heading/glp:note to seclaw:level/seclaw:prelim/note: Not a rule
              change. Target sample modified to remove attribute
                <targetxml>lnci:cite[@citeref]</targetxml> because value captured in descendant
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
            <xref href="../../common_newest/Rosetta_docinfo.doc-heading-LxAdv-dc.title.dita">2013-08-01 - docinfo:doc-heading to dc:title: For Canada Content streams: Added a
              note and examples, when <sourcexml>docinfo:doc-heading</sourcexml> contains
                <sourcexml>nl</sourcexml> as a child element.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_title-LxAdv-title.dita">2013-07-30 - title to
              title: Updated Instruction when <sourcexml>title</sourcexml> contains word "TITLE: "
              or "NAME: ".</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_docinfo.doc-heading-LxAdv-dc.title.dita">2013-07-30 - docinfo:doc-heading to dc:title: Added Instruction when
                <sourcexml>docinfo:doc-heading</sourcexml> contains word "TITLE: " or NAME: .</xref>
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
            <xref href="../../common_newest/Rosetta_docinfo.doc-lang-and-doc-country-LxAdv-ROOT_xml.lang.dita">2013-07-16 - docinfo:doc-lang and docinfo:doc-country to @xml:lang and @xml:ID:
              Instruction narrative edited for language; no changes to mappings, no impact to
              stylesheets.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_figure-LxAdv-figure.dita">2013-07-15 - figure to
              figure: Added instructions for handling figure/caption and an example demonstrating
              the mapping.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_title-LxAdv-title.dita">2013-07-05 - title to
              title: Added Instruction when <sourcexml>title</sourcexml> contains word "TITLE:
              ".</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_copyright-LxAdv-copyright.dita">2013-06-17 -
              copyright to copyright: Added an example when <sourcexml>copyright-holder</sourcexml>
              is not present in the source.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_note-LxAdv-note.dita">2013-06-12 - note to note:
              Remove note for CR "DACH2013041605253700" to allow element <targetxml>note</targetxml>
              before element <targetxml>heading</targetxml> within
                <targetxml>admindoc:level</targetxml>
            </xref>
          </li>
        </ol>
      </p>
    </section>
    <section>
      <title>seclaw 6.3 PROD</title>
      <p>2013-05-31<ul>
          <li>
            <xref href="../../common_newest/Rosetta_docinfo.lbu-meta-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta-scheme.dita">2013-05-31 - docinfo:lbu-meta to doc:legacy-metadata[@metadatasource="lbu-meta"]:
              Added "document-type" to the list of values in docinfo:metaitem/@name that should be
              retained.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_glp.note_blockquote_p_text_inlineobject-LxAdv-note_bodytext_p_text.dita">2013-05-29 - glp:note: Corrected the file name for
                <sourcexml>inlineobject</sourcexml> in order to make it linkable.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_docinfo.versioninfo-LxAdv-doc.versioninfo-scheme.dita">2013-05-24 - docinfo:versioninfo to doc:versioninfo: Instructions added for handling
              empty use cases of <sourcexml>docinfo:versioninfo</sourcexml> for Canada content
              stream.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_inlineobject-LxAdv-ref.inlineobject.dita">2013-05-24 - inlineobject to ref:inlineobject: Updated instruction for handling of
              inlineobject when smi is present and some of the verbiage is changed.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_inlineobject-LxAdv-figure_ref.inlineobject.dita">2013-05-24 - inlineobject to figure/ref:inlineobject: Updated target example, "when
              smi is present".</xref>
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
        </ul></p>
    </section>
    <section>
      <title>seclaw 6.3 PROD</title>
      <p>2013-05-15<ul>
          <li>
            <xref href="../../common_newest/Rosetta_blockquote-LxAdv-blockquote.dita">2013-05-08 -
              blockquote to blockquote: Extended the list of allowable values for image
              handling.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_figure-LxAdv-figure.dita">2013-05-08 - figure to
              figure: Extended the list of allowable values for image handling.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_glp.note-Chof-figure-LxAdv-figure.dita">2013-05-08 - (Legislation &amp; Regulation) figure/glp:note to figure: Extended the
              list of allowable values for image handling.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_h-Chof-figure-glp.note-LxAdv-figure-note-bodytext-h.dita">2013-05-08 - (Commentary &amp; Regulatroy) figure/glp:note/h to
              figure/note/bodytext/h: Extended the list of allowable values for image
              handling.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_inlineobject-LxAdv-ref.inlineobject.dita">2013-05-08 - inlineobject to ref:inlineobject: Extended the list of allowable values
              for image handling.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_inlineobject-Chof-remotelink-LxAdv-ref.crossreference_ref.content_ref.inlineobject.dita">2013-05-08 - inlineobject Child of remotelink to ref:inlineobject: Extended the list
              of allowable values for image handling.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_inlineobject-LxAdv-figure_ref.inlineobject.dita">2013-05-08 - inlineobject to figure/ref:inlineobject: Extended the list of allowable
              values for image handling.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_inlineobject-Chof-h-LxAdv-figure_ref.inlineobject.dita">2013-05-08 - h/inlineobject to figure/ref:inlineobject: Extended the list of
              allowable values for image handling.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_inlineobject-Chof-emph-LxAdv-figure_ref.inlinobject.dita">2013-05-08 - emph/inlineobject to figure/ref:inlineobject: Extended the list of
              allowable values for image handling.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_inlineobject-Chof-sub-LxAdv-figure_ref.inlineobject.dita">2013-05-08 - sub/inlineobject to figure/ref:inlineobject: Extended the list of
              allowable values for image handling.</xref>
          </li>
          <li>2013-05-08 - glp:note/inlineobject to: Extended the list of allowable values for image
            handling.</li>
          <li>
            <xref href="../../common_newest/Rosetta_inlineobject-Chof-dispformula-LxAdv-formula_ref.inlineobject.dita">2013-05-08 - dispformula/inlineobject to formula/ref:inlineobject: Extended the list
              of allowable values for image handling.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_inlineobject-Chof-p_blockquote-LxAdv-p_figure_ref.inlineobject.dita">2013-05-08 - p/blockquote/inlineobject to p/figure/ref:inlineobject: Extended the
              list of allowable values for image handling.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_inlineobject-Chof-bodytext-LxAdv-bodytext_p_text_figure_ref.inlineobject.dita">2013-05-08 - bodytext/inlineobject to bodytext/p/text/figure/ref:inlineobject:
              Extended the list of allowable values for image handling.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_p-limited_remotelink-LxAdv-p_text_ref.lnlink.dita">2013-05-08 - p-limited/emph to p/text/emph: Extended the list of allowable values for
              image handling.</xref>
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
            <xref href="../../common_newest/Rosetta_inlineobject-LxAdv-figure_ref.inlineobject.dita">2013-05-02 - inlineobject to figure/ref:inlineobject: Updated target example to if
              the SMI is present then a <targetxml>ref:inliineobject/@status</targetxml> attribute
              is set to “valid”.</xref>
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
            <xref href="../../common_newest/Rosetta_blockquote-link-LxAdv-blockquote-p-text-ref.lnlink.dita">2013-05-01 - blockquote/link to blockquote/p/text/ref:lnlink: Updated instructions
              and target example per latest Apollo markup.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2013-05-01 -
              ci.cite to lnci.cite: Removed special rule for
                <sourcexml>ci:cite/ci:content/remotelink</sourcexml> which required suppression of
                <sourcexml>ci:cite/ci:content</sourcexml> tags. The elements are now retained and
              convert according to common rules.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_figure-LxAdv-figure.dita">2013-05-01 - figure to
              figure: Removed instructions for section "Pre-Release 4.0" because according to latest
              Apollo markup, section "Release 4.0 and after" and section "Pre-Release 4.0" now have
              similar conversion markup.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_glp.note-Chof-figure-LxAdv-figure.dita">2013-05-01 - (Legislation &amp; Regulation) figure/glp:note to figure: Removed
              instructions for section "Pre-Release 4.0" because according to latest Apollo markup,
              section "Release 4.0 and after" and section "Pre-Release 4.0" now have similar
              conversion markup.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_h-Chof-figure-glp.note-LxAdv-figure-note-bodytext-h.dita">2013-05-01 - (Commentary &amp; Regulatroy) figure/glp:note/h to
              figure/note/bodytext/h: Removed instructions for section "Pre-Release 4.0" because
              according to latest Apollo markup, section "Release 4.0 and after" and section
              "Pre-Release 4.0" now have similar conversion markup.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_inlineobject-LxAdv-ref.inlineobject.dita">2013-05-01 - inlineobject to ref:inlineobject: Removed instructions for section
              "Pre-Release 4.0" because according to latest Apollo markup, section "Release 4.0 and
              after" and section "Pre-Release 4.0" now have similar conversion markup.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_inlineobject-Chof-remotelink-LxAdv-ref.crossreference_ref.content_ref.inlineobject.dita">2013-05-01 - inlineobject Child of remotelink to ref:inlineobject: Removed
              instructions for section "Pre-Release 4.0" because according to latest Apollo markup,
              section "Release 4.0 and after" and section "Pre-Release 4.0" now have similar
              conversion markup.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_inlineobject-LxAdv-figure_ref.inlineobject.dita">2013-05-01 - inlineobject to figure/ref:inlineobject: Removed instructions for
              section "Pre-Release 4.0" because according to latest Apollo markup, section "Release
              4.0 and after" and section "Pre-Release 4.0" now have similar conversion
              markup.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_inlineobject-Chof-h-LxAdv-figure_ref.inlineobject.dita">2013-05-01 - h/inlineobject to figure/ref:inlineobject: Removed instructions for
              section "Pre-Release 4.0" because according to latest Apollo markup, section "Release
              4.0 and after" and section "Pre-Release 4.0" now have similar conversion
              markup.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_inlineobject-Chof-emph-LxAdv-figure_ref.inlinobject.dita">2013-05-01 - emph/inlineobject to figure/ref:inlineobject: Removed instructions for
              section "Pre-Release 4.0" because according to latest Apollo markup, section "Release
              4.0 and after" and section "Pre-Release 4.0" now have similar conversion
              markup.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_inlineobject-Chof-sub-LxAdv-figure_ref.inlineobject.dita">2013-05-01 - sub/inlineobject to figure/ref:inlineobject: Removed instructions for
              section "Pre-Release 4.0" because according to latest Apollo markup, section "Release
              4.0 and after" and section "Pre-Release 4.0" now have similar conversion
              markup.</xref>
          </li>
          <li>2013-05-01 - glp:note/inlineobject to: Removed instructions for section "Pre-Release
            4.0" because according to latest Apollo markup, section "Release 4.0 and after" and
            section "Pre-Release 4.0" now have similar conversion markup.</li>
          <li>
            <xref href="../../common_newest/Rosetta_inlineobject-Chof-dispformula-LxAdv-formula_ref.inlineobject.dita">2013-05-01 - dispformula/inlineobject to formula/ref:inlineobject: Removed
              instructions for section "Pre-Release 4.0" because according to latest Apollo markup,
              section "Release 4.0 and after" and section "Pre-Release 4.0" now have similar
              conversion markup.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_inlineobject-Chof-p_blockquote-LxAdv-p_figure_ref.inlineobject.dita">2013-05-01 - p/blockquote/inlineobject to p/figure/ref:inlineobject: Removed
              instructions for section "Pre-Release 4.0" because according to latest Apollo markup,
              section "Release 4.0 and after" and section "Pre-Release 4.0" now have similar
              conversion markup.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_inlineobject-Chof-bodytext-LxAdv-bodytext_p_text_figure_ref.inlineobject.dita">2013-05-01 - bodytext/inlineobject to bodytext/p/text/figure/ref:inlineobject:
              Removed instructions for section "Pre-Release 4.0" because according to latest Apollo
              markup, section "Release 4.0 and after" and section "Pre-Release 4.0" now have similar
              conversion markup.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_link-LxAdv-ref.lnlink.dita">2013-05-01 - link to
              ref:lnlink/@service="ATTACHMENT": Updated instructions and target example per latest
              Apollo markup.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_bodytext-link-LxAdv-seclaw.bodytext-p-text-ref.lnlink.dita">2013-05-01 - bodytext/link to seclaw:bodytext/p/text/ref:lnlink: Updated instructions
              and target example per latest Apollo markup.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_leg.histnote-Chof-p-LxAdv-note.dita">2013-05-01
              - p/leg:histnote to note[@notetype="historical"]: Updated instructions and target
              example per latest Apollo markup.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_p-limited_remotelink-LxAdv-p_text_ref.lnlink.dita">2013-05-01 - p-limited/emph to p/text/emph: Removed instructions for section
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
                <targetxml>ref:crossreference</targetxml> but the containing elements' start-tags
              and end-tags (<sourcexml>ci:cite</sourcexml> and <sourcexml>ci:content</sourcexml>)
              are dropped", has been removed from the instructions and now
                <sourcexml>remotelink</sourcexml> will be converted to the resulting mapping where
              it is. For more details you can see example: Source XML 10:
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
            <xref href="../../common_newest/Rosetta_figure-LxAdv-figure.dita">2013-04-30 - figure to
              figure: Updated target sample according to latest Apollo markup.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_glp.note-Chof-figure-LxAdv-figure.dita">2013-04-30 - (Legislation &amp; Regulation) figure/glp:note to figure: Updated target
              sample according to latest Apollo markup.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_h-Chof-figure-glp.note-LxAdv-figure-note-bodytext-h.dita">2013-04-30 - (Commentary &amp; Regulatroy) figure/glp:note/h to
              figure/note/bodytext/h: Updated target sample according to latest Apollo
              markup.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_inlineobject-LxAdv-ref.inlineobject.dita">2013-04-30 - inlineobject to ref:inlineobject: Updated target sample according to
              latest Apollo markup.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_inlineobject-Chof-remotelink-LxAdv-ref.crossreference_ref.content_ref.inlineobject.dita">2013-04-30 - inlineobject Child of remotelink to ref:inlineobject: Updated target
              sample according to latest Apollo markup.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_inlineobject-LxAdv-figure_ref.inlineobject.dita">2013-04-30 - inlineobject to figure/ref:inlineobject: Updated target sample according
              to latest Apollo markup.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_inlineobject-Chof-h-LxAdv-figure_ref.inlineobject.dita">2013-04-30 - h/inlineobject to figure/ref:inlineobject: Updated target sample
              according to latest Apollo markup.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_inlineobject-Chof-emph-LxAdv-figure_ref.inlinobject.dita">2013-04-30 - emph/inlineobject to figure/ref:inlineobject: Updated target sample
              according to latest Apollo markup.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_inlineobject-Chof-sub-LxAdv-figure_ref.inlineobject.dita">2013-04-30 - sub/inlineobject to figure/ref:inlineobject: Updated target sample
              according to latest Apollo markup.</xref>
          </li>
          <li>2013-04-30 - glp:note/inlineobject to: Updated target sample according to latest
            Apollo markup.</li>
          <li>
            <xref href="../../common_newest/Rosetta_inlineobject-Chof-dispformula-LxAdv-formula_ref.inlineobject.dita">2013-04-30 - dispformula/inlineobject to formula/ref:inlineobject: Updated target
              sample according to latest Apollo markup.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_inlineobject-Chof-p_blockquote-LxAdv-p_figure_ref.inlineobject.dita">2013-04-30 - p/blockquote/inlineobject to p/figure/ref:inlineobject: Updated target
              sample according to latest Apollo markup.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_inlineobject-Chof-bodytext-LxAdv-bodytext_p_text_figure_ref.inlineobject.dita">2013-04-30 - bodytext/inlineobject to bodytext/p/text/figure/ref:inlineobject:
              Updated target sample according to latest Apollo markup.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_p-limited_remotelink-LxAdv-p_text_ref.lnlink.dita">2013-04-30 - p-limited/emph to p/text/emph: Updated target sample according to latest
              Apollo markup.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-04-30 - remotelink to ref:crossreference: Updated target sample according to
              latest Apollo markup.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2013-04-24 -
              ci.cite to lnci.cite: Added a mapping for <sourcexml>ci:procphrase</sourcexml> to
                <sourcexml>lnci:procphrase</sourcexml>
            </xref>
          </li>
        </ul></p>
    </section>
    <section>
      <title>seclaw 6.1 PROD</title>
      <p>2013-04-24<ul>
          <li>Created</li>
        </ul></p>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK15-PracticalGuidance\UK15PG_DIGESTDOC_changeLog.dita  -->
	<!--<xsl:message>UK15PG_DIGESTDOC_changeLog.xsl requires manual development!</xsl:message> -->

</xsl:stylesheet>