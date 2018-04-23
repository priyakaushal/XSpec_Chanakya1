<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:ci="http://www.lexis-nexis.com/ci" xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" xmlns:frm="http://www.lexis-nexis.com/glp/frm" xmlns:glp="http://www.lexis-nexis.com/glp" xmlns:jrnl="http://www.lexis-nexis.com/glp/jrnl" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:source_lnci="http://www.lexis-nexis.com/lnci" xmlns:classify="http://www.lexisnexis.com/xmlschemas/content/shared/classification/1/" xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" xmlns:form="http://www.lexisnexis.com/xmlschemas/content/shared/form/1/" xmlns:legisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/legislation-info/1/" xmlns:lnci="http://www.lexisnexis.com/xmlschemas/content/shared/citations/1/" xmlns:nitf="http://iptc.org/std/NITF/2006-10-18/" xmlns:proc="http://www.lexisnexis.com/xmlschemas/content/shared/process-elements/1/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita ci docinfo frm glp jrnl leg lnci">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="UK09LegalNews_changeLog">
  <title>Change Log</title>
  <body>
    <section>
      <title>Newsitem 4.5 PROD</title>
      <p>2017-02-06</p>
      <ul>
        <li>
          <xref href="../../../Rosetta/DITA-UK/UK09-LegalNews/UK09_LegalNews_alt.rendition-ref.marker.dita">2017-02-06 - docinfo:alt-rendition/link without text id-UK09-29029: New rule. Handles
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
      <title>Newsitem 4.5 PROD</title>
      <p>2016-11-17</p>
      <ul>
        <li>
          <xref href="../../../Rosetta/DITA-UK/UK09-LegalNews/UK09LegalNews_publication_inlineobject.dita">2016-11-07 - inlineobject id-UK09-29025: Updated the instruction for
            <targetxml>ref:key-name</targetxml> and <targetxml>proc:param</targetxml>
            attribute values.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/DITA-UK/UK09-LegalNews/UK09_Rosetta_inlineobject-Chof-lilabel_emph_sub-LxAdv_ref.inlineobject.dita">2016-11-07 - emph/sub/inlineobject[ancestor::lilabel] to ref:inlineobject id-UK09-29027: Updated the instruction for ref:key-name and
            proc:param attribute values.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_inlineobject-LxAdv-ref.inlineobject_BLOBSTORE.dita">2016-11-07 - inlineobject to ref:inlineobject for BLOBSTORE images id-CCCC-10540: Updated the instruction for ref:key-name and
            proc:param attribute values.</xref>
        </li>
      </ul>
    </section>
    <section>
      <title>Newsitem 4.4 PROD</title>
      <p>2016-10-31</p>
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
    <section>
      <title>Newsitem 4.4 PROD</title>
      <p>2016-08-10 <ul>
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
          <xref href="../../../Rosetta/DITA-UK/UK09-LegalNews/UK09LegalNews_publication_inlineobject.dita">2016-08-03 - inlineobject id-UK09-29025: Not a rule change directly to this module. Modified
            xref link for inlineobject, to point to new blobstore module; and revised Example Target
            to reflect blobstore markup.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/DITA-UK/UK09-LegalNews/UK09_Rosetta_inlineobject-Chof-lilabel_emph_sub-LxAdv_ref.inlineobject.dita">2016-08-03 - emph/sub/inlineobject[ancestor::lilabel] to ref:inlineobject id-UK09-29027: Not a rule change directly to this module.
            Modified Example Target to reflect blobstore markup.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_blockquote-link-LxAdv-blockquote-p-text-ref.lnlink.dita">2016-08-03 - blockquote/link to blockquote/p/text/ref:lnlink id-CCCC-10246: Added Note about xml snippets that illustrate image
            handling. Note summarizes move from Apollo to Blobstore application. UK is first LBU to
            move to Blobstore.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_inlineobject-Chof-emph_sub-LxAdv-figure_ref.inlinobject.dita">2016-08-03 - emph/sub/inlineobject to figure/ref:inlineobject id-CCCC-10360: Added Note about xml snippets that illustrate
            image handling. Note summarizes move from Apollo to Blobstore application. UK is
            first LBU to move to Blobstore.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_inlineobject-DescendantOf-title-LxAdv-ref.inlineobject.dita">2016-08-03 - inlineobject[ancestor::title] to ref:inlineobject id-CCCC-10367: Added Note about xml snippets that illustrate image
            handling. Note summarizes move from Apollo to Blobstore application. UK is first LBU to
            move to Blobstore.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_inlineobject-Chof-sub_AND_followingSibling_sub_inlineobject-LxAdv-formula.dita">2016-08-03 - sub/inlineobject[following-sibling::sub/inlineobject] to formula id-CCCC-10366: Added Note about xml snippets that illustrate
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
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_UK_docinfo.custom-metafields-LxAdv-dc.date_or_doc.docinfo_classify.classification.dita">2016-07-13 - (UK) docinfo:custom-metafield to dc:date or doc:metadata/doc:docinfo/classify:classification[@classscheme="uk-functional-information"] id-CCCC-10547: Added rules for "createdDate", "updatedDate", and "inEditorialReview"; and updated the example.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_UK_docinfo-LxAdv-doc.docinfo_classify.classification.dita">2016-06-17 - (UK) docinfo to doc:metadata/doc:docinfo/classify:classification[@classscheme="uk-functional-information"] id-CCCC-10546: Created. New rules.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_UK_docinfo.custom-metafields-LxAdv-dc.date_or_doc.docinfo_classify.classification.dita">2016-06-17 - (UK) docinfo:custom-metafield to dc:date or doc:metadata/doc:docinfo/classify:classification[@classscheme="uk-functional-information"] id-CCCC-10547: Created. New rules.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_inlineobject-LxAdv-ref.inlineobject_BLOBSTORE.dita">2016-05-20 - inlineobject to ref:inlineobject for BLOBSTORE images id-CCCC-10540: Created this instruction to specify Blobstore specific output parameters.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_link-LxAdv-ref.lnlink_BLOBSTORE.dita">2016-05-20 - link[@filename] to ref:lnlink[@service="ATTACHMENT"] for BLOBSTORE images id-CCCC-10541: Created this instruction to specify Blobstore specific output parameters.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_lnlink_service_ATTACHMENT-LxAdv-ref.lnlink_BLOBSTORE.dita">2016-05-20 - lnlink[@service="ATTACHMENT"] to ref:lnlink[@service="ATTACHMENT"] for BLOBSTORE images id-CCCC-10542: Created this instruction to specify Blobstore
            specific output parameters.</xref>
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
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_glp.note-Chof-text-LxAdv-inlinenote.dita">2016-04-01 - text/glp:note to text/inlinenote id-CCCC-10339: Added instruction for child elements of <sourcexml>glp:note</sourcexml> element, Applicable on CA01.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_glp.note-Chof-emph-LxAdv-inlinenote.dita">2016-04-01 - emph/glp:note to emph/inlinenote id-CCCC-10329: Added instruction for child elements of <sourcexml>glp:note</sourcexml> element, Applicable on CA01.</xref>
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
          <xref href="../../../Rosetta/common_newest/Rosetta_glp.note-Chof-leg.heading-LxAdv-primlaw.level_note.dita">2016-03-08 - leg:heading/glp:note to primlaw:level/note id-CCCC-10333: (AU04 only) Added new section for converting heading markup following
            <sourcexml>glp:note</sourcexml>. Addresses WS6034981.</xref>
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
          <xref href="../../../Rosetta/common_newest/Rosetta_inlineobject-Chof-p_blockquote-LxAdv-p_figure_ref.inlineobject.dita">2015-12-08 - p/blockquote/inlineobject to p/figure/ref:inlineobject id-CCCC-10363: Added '.tiff' to the list of allowable values for <sourcexml>proc:param[@name="object-type"]/@value="image"</sourcexml>.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.doc-heading-LxAdv-dc.title.dita">2015-12-04 - docinfo:doc-heading to dc:title id-CCCC-10292: Added exception for AU Legislative Citator to 
            drop text Overview Tab for  from conversion.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_inlineobject-Chof-p_blockquote-LxAdv-p_figure_ref.inlineobject.dita">2015-11-17 - p/blockquote/inlineobject to p/figure/ref:inlineobject id-CCCC-10363: Added note to use a different instruction if <sourcexml>inlineobject</sourcexml> contains siblings.</xref>
        </li>
      </ul>
      </p>
    </section>
    <section>
      <title>Newsitem 4.4 PROD</title>
      <p>2015-11-12 <ul>
          <li>
            <xref href="../../../Rosetta/DITA-UK/UK09-LegalNews/UK09LegalNews_publication_inlineobject.dita">2015-11-12 - inlineobject id-UK09-29025: Not a rule change directly to this module.
              Added reference to UK special rule for objects that are logos. And updated example.
              RFA 2519.</xref>
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
            <xref href="../../../Rosetta/common_newest/Rosetta_link-LxAdv-ref.lnlink.dita">2015-09-08 - link to ref:lnlink[@service="ATTACHMENT"] id-CCCC-10394: Minor XPATH
              correction in title to change <targetxml>ref:lnlink/@service="ATTACHMENT"</targetxml>
              to be <targetxml>ref:lnlink[@service="ATTACHMENT"]</targetxml>.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_lnlink_service_SEARCH-LxAdv-SUPPRESS.dita">2015-09-08 - lnlink[@service='SEARCH'] is SUPPRESSED id-CCCC-10397: Minor XPATH
              correction in instruction title and body to change
                <sourcexml>lnlink/@service='SEARCH'</sourcexml> to be
                <sourcexml>lnlink[@service='SEARCH']</sourcexml>.</xref>
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
            <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2015-09-03 - docinfo:assoc-links to doc:related-content id-CCCC-10284: Minor
              correction to bullet heading text for children of
                <sourcexml>docinfo:assoc-links</sourcexml> or
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
        </ul>
      </p>
    </section>
    <section>
      <title>Newsitem 4.1 PROD</title>
      <p>2015-07-24 <ul>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_inlineobject-Chof-emph-LxAdv-figure_ref.inlinobject.dita">2015-07-24 - emph/inlineobject to figure/ref:inlineobject id-CCCC-10359: When
              Inlineobject is followed by two emph elements of same typestyle
                <sourcexml>sup/emph/emph/inlineobject</sourcexml>then from Target we should drop the
              one emph element and the followed <sourcexml>emph/inlineobject</sourcexml> should
              mapped with <targetxml>emph/ref:inlineobject</targetxml> in Target.</xref>
          </li>
        </ul>
      </p>
    </section>
    <section>
      <title>Newsitem 4.1 PROD</title>
      <p>2015-07-21 <ul>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_inlineobject-Chof-emph-LxAdv-figure_ref.inlinobject.dita">2015-07-21 - emph/inlineobject to figure/ref:inlineobject id-CCCC-10359: When
              Inlineobject is followed by two emph elements of same typestyle then from Target we
              should drop the one emph element and the followed
                <sourcexml>emph/inlineobject</sourcexml> should mapped with
                <targetxml>figure/ref:inlineobject</targetxml> in Target.</xref>
          </li>
        </ul>
      </p>
    </section>

    <section>
      <title>Newsitem 4.1 PROD</title>
      <p>2015-07-15 <ul>
          <li>
            <xref href="../../../Rosetta/DITA-UK/UK09-LegalNews/UK09LegalNews_jrnl_bodytext.dita">2015-07-15 - jrnl:bodytext id-UK09-29013: Earlier we have put an unwanted Element
              name <targetxml>bodytext</targetxml> in the Target after
                <targetxml>nitf:body.head</targetxml> which we remove in this change</xref>
          </li>
        </ul>
      </p>
    </section>
    <section>
      <title>Newsitem 4.1 PROD</title>
      <p>2015-06-18 <ul>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_inlineobject-Chof-emph-LxAdv-figure_ref.inlinobject.dita">2015-06-18 - emph/inlineobject to figure/ref:inlineobject id-CCCC-10359: When source
              is having emph followed by inlineobject inside base:h element
                <sourcexml>h/emph/inlineobject</sourcexml> than in Target it should Map it like
                <targetxml>emph/ref:inlineobject</targetxml> as emph containing text under
              it.</xref>
          </li>
        </ul>
      </p>
    </section>


    <section>
      <title>Newsitem 4.1 PROD</title>
      <p>2015-04-28 <ul>
          <li>
            <xref href="../../../Rosetta/DITA-UK/UK09-LegalNews/UK09LegalNews_jrnl_bodytext.dita">2015-04-28 - jrnl:bodytext id-UK09-29013: When Source is having Xpath
                <sourcexml>/JOURNALDOC/jrnl:body/jrnl:bodytext/level/levelinfo/classification/classitem/classitem-identifier/classname</sourcexml>
              then our conversion needs to put the converted classification elements under
                <targetxml>nitf:body.head</targetxml> in the Target.#RFA2212</xref>
          </li>
        </ul>
      </p>
    </section>



    <section>
      <title>Newsitem 4.1 PROD</title>
      <p>2015-03-18 <ul>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_emp-Chof-heading_title-LxAdv-heading_title.dita">2015-03-18 - heading/title/emph to heading/title id-CCCC-10313: When
                <sourcexml>heading\title</sourcexml> contains <sourcexml>emph</sourcexml> and
                <sourcexml>PCDATA</sourcexml> under it then from target the emph tags will dropped
              and it's content along with PCDATA content will be put directly under
                <targetxml>title</targetxml> element . #RFA2214, Applicable to UK09 only.</xref>
          </li>
        </ul>
      </p>
    </section>
    <section>
      <title>Newsitem 4.0 PROD</title>
      <p>2015-01-05 <ul>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_page-LxAdv-ref.page.dita">2015-01-05
              - page to ref:page id-CCCC-10426: Defined handling for page/@count if period (.)
              occurs in the value.#RFA2110, Applicable to UK09.</xref>
          </li>
        </ul>
      </p>
    </section>
    <section>
      <title>Newsitem 4.0 PROD</title>
      <p>2014-10-21 <ul>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.overview-LxAdv-docinfo.overview.dita">2014-10-21 - docinfo:overview to doc:overview id-CCCC-10303: added to UK09
              ditamap.</xref>
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
            <xref href="../../../Rosetta/common_newest/Rosetta_title-LxAdv-title.dita">2014-10-07 -
              title to title id-CCCC-10479: Removed instruction and example to convert attribute
                <sourcexml>@searchtype="DIGEST-SUBJECT"</sourcexml>. Applicable to CA12.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2014-09-16 - docinfo:assoc-links to doc:related-content id-CCCC-10284: Added a note
              to create <targetxml>proc:param/@name="attachment-smi"</targetxml> and
                <targetxml>proc:param/@value</targetxml> as these was there in the snippet but was
              missing in instruction and also added a note in to simplify in output
                <targetxml>ref:key-value/@value</targetxml>
            </xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2014-08-21 - docinfo:assoc-links to doc:related-content id-CCCC-10284: Added
              instructions and an example for converting
                <sourcexml>lnlink[@service="ATTACHMENT"]</sourcexml> to
                <targetxml>ref:lnlink</targetxml>. Applicable on CA05-CA08.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.lbu.juris-LxAdv-classify.classification_classscheme_docinfolbu-juris.dita">2014-08-11 - docinfo:lbu-juris to
              classify:classification[@classscheme="docinfo:lbu-juris"] id-CCCC-10301: Added a
              special scenario for all Canada streams to handle
                <sourcexml>docinfo:lbu-juris</sourcexml> to
                <targetxml>classify:classification@classscheme="docinfo:lbu-juris"/classify:classitem/classify:classitem-identifier/classify:classname</targetxml>.
              Db P4 issue #305</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_text-LxAdv-text.dita">2014-08-11 -
              text to text id-CCCC-10477: For CANADA Content Stream: Only move the <sourcexml>
                text@align</sourcexml> to the parent <targetxml>p</targetxml> if it is the only text
              in <sourcexml>p</sourcexml>, Otherwise, wrap the <sourcexml>text</sourcexml> with
                <targetxml>p</targetxml> and move the <sourcexml>@align</sourcexml> attribute to the
              newly created <targetxml> p</targetxml>.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.overview-LxAdv-docinfo.overview.dita">2014-08-04 - docinfo:overview to doc:overview id-CCCC-10303: added to UK05
              ditamap.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_leg.num_ln.user-displayed-LxAdv-classify.classification.dita">2014-08-01 - leg:num[@ln.user-displayed="false"] to classify:classification: Updated
              the note with example for handling "solsak" scenario means it should be placed above
              the first <targetxml>legisinfo:officialtitle</targetxml> instead of the last element
              in the <targetxml>*:head</targetxml> section</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_leg.num_ln.user-displayed-LxAdv-classify.classification.dita">2014-07-30 - leg:num[@ln.user-displayed="false"] to classify:classification: Added a
              note for handling "solsak" scenario means it should be placed above the first
                <targetxml>legisinfo:officialtitle</targetxml> instead of the last element in the
                <targetxml>*:head</targetxml> section</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_inlineobject-LxAdv-ref.inlineobject.dita">2014-07-08 - inlineobject to ref:inlineobject id-CCCC-10369: Not a rule change.
              Clarification added to note regarding suppression of
                <sourcexml>inlineobject</sourcexml> when
                <sourcexml>inlineobject/@filename</sourcexml> contains certain values.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_table-LxAdv-table.dita">2014-07-08 -
              table to table id-CCCC-10475: Updated instruction for added the following rarely
              occurring attributes <sourcexml>@char</sourcexml> inside the
                <sourcexml>entry</sourcexml>.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.versioninfo-LxAdv-doc.versioninfo-scheme.dita">2014-07-02 - docinfo:versioninfo to doc:versioninfo id-CCCC-10307: Edit a note for
              Canada only to generate <targetxml>@day</targetxml> attribute value must be in
              sequential digit number. No need to add leading zero (0) to make the value in two
              digits. This immediate applies to ALL Canada streams.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.doc-id-LxAdv-dcidentifier_lnmetaidentifier-scheme.dita">2014-06-23 - docinfo:doc-id to dc:identifier[@lnmeta:identifier-scheme]
              id-CCCC-10293: Note and Example removed - For CA05 Acts and Bills- Mapping in
              dc:identifier for act-no and chunk-no. Db issue #1464</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2014-06-18 - docinfo:assoc-links to doc:related-content id-CCCC-10284: Corrected
              minor typos in <sourcexml>lnlink[@service="QUERYLINK"]</sourcexml>
              instructions.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2014-06-13 - docinfo:assoc-links to doc:related-content id-CCCC-10284: Added
              instructions and an example for converting
                <sourcexml>lnlink[@service="QUERYLINK"]</sourcexml> to
                <targetxml>ref:lnlink</targetxml>.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.versioninfo-LxAdv-doc.versioninfo-scheme.dita">2014-06-09 - docinfo:versioninfo to doc:versioninfo id-CCCC-10307: Added note for
              Canada only to generate <targetxml>@day</targetxml> attribute value as per the source.
              No need to add zero (0) to make the value in two digits. This immediate applies to ALL
              Canada streams.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_emp-Chof-heading_title-LxAdv-heading_title.dita">2014-06-04 - heading/title/emph to heading/title id-CCCC-10313: Clarified
              instructions and added an example to show multiple <sourcexml>emph</sourcexml>
              elements being handled.</xref>
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
            <xref href="../../../Rosetta/common_newest/Rosetta_page-LxAdv-ref.page.dita">2014-06-03
              - page to ref:page id-CCCC-10426: Added instruction and example to generate
                <targetxml>doc:pagination/doc:pagination-scheme</targetxml> in target and this
              immediately applies to all LNI streams.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_footnote-LxAdv-footnote.dita">2014-06-02 - footnotegrp and footnote to footnotegrp and footnote id-CCCC-10322:
              Canada only. Added special rule to suppress indent from
                <sourcexml>footnote/fnbody/p[@indent]</sourcexml>. Applies immediately to all Canada
              streams. R4.5 Content Issue 1609.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.doc-id-LxAdv-dcidentifier_lnmetaidentifier-scheme.dita">2014-05-21 - docinfo:doc-id to dc:identifier[@lnmeta:identifier-scheme]
              id-CCCC-10293: For CA05 Acts and Bills- Mapping in dc:identifier for act-no and
              chunk-no.. Db issue #1464 </xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2014-04-28 - docinfo:assoc-links to doc:related-content id-CCCC-10284: Clarified
              instructions regarding <sourcexml>link</sourcexml> elements and added an example (#4)
              illustrating the special <sourcexml>text/link</sourcexml> conversion. No mapping rules
              where changed or added.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2014-04-21 - docinfo:assoc-links to doc:related-content id-CCCC-10284: Added an
              instruction to handle <sourcexml>link</sourcexml> elements. These can potentially
              occur in any future UK data and will be present in stream UK21fl when those documents
              become available later in 2014.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_footnote-LxAdv-footnote.dita">2014-04-17 - footnotegrp and footnote to footnotegrp and footnote id-CCCC-10322:
              Added instruction for <sourcexml>footnotegrp</sourcexml> within
                <sourcexml>sigblock</sourcexml>. Specifies <targetxml>p/text</targetxml> wrapper for
              target <targetxml>sigblock/p/text/footnotegroup</targetxml>. Immediately affects UK12
              but will apply to any stream if the use case occurs. Phase 6 UK discussion items 76
              and 88.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.versioninfo-LxAdv-doc.versioninfo-scheme.dita">2014-04-15 - docinfo:versioninfo to doc:versioninfo id-CCCC-10307: Added the content
              stream code "CA08 Constitutions" inside the Note for handling empty use cases of
                <sourcexml>docinfo:versioninfo</sourcexml> for Canada streams.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_p-LxAdv-p.dita">2014-04-14 - p to p
              id-CCCC-10424: Removed Colons from Labels.. DB item #1255</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2014-04-03 - docinfo:assoc-links to doc:related-content id-CCCC-10284: Illustrative
              changes. Examples modified. Mapping for <sourcexml>ci:cite</sourcexml> added to
              Example 3. Former Examples 4 and 5 removed to avoid confusion with special AU-NZ use
              case described in a separate module. R4.5 Content issue #1125, for AU-NZ, has prompted
              the changes for this general module.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2014-03-25 - docinfo:assoc-links to doc:related-content id-CCCC-10284: Added rule and
              example for
              <sourcexml>docinfo:assoc-links/docinfo:assoc-links-grp/ci:cite</sourcexml>. R4.5
              Content issue #1125</xref>
          </li>
        </ul>
      </p>
    </section>
    <section>
      <title>Newsitem 3.6 PROD</title>
      <p>2014-03-24 <ul>
          <li>2014-03-24: Deleted the DITA module '<b>6.52.2. url/remotelink</b>' in UK09 NewsItems
            CI.</li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_deflist-LxAdv-deflist.dita">2014-03-21 - deflist to deflist: Added instruction to handle
                <sourcexml>defitem/@id</sourcexml> and <sourcexml>defterm/@id</sourcexml> only for
              GPL IN content Streams.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_leg.comntry-LxAdv-annot.annotations-annot.annotation-grp.dita">2014-03-21 - leg:comntry to annot:annotations/annot:annotation-grp: Added instruction
              to handle <sourcexml>leg:comntry/@searchtype</sourcexml> For GPL IN Content
              Streams</xref>
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
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.doc-heading-LxAdv-dc.title.dita">2014-02-11 - docinfo:doc-heading to dc:title: Updated note when
                <sourcexml>emph</sourcexml> is child of <sourcexml>docinfo:doc-heading</sourcexml>
              then suppress <sourcexml>emph</sourcexml> element and retain its content in
                <targetxml>dc:title</targetxml>, These instructions apply immediately to
              CA12.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_pgrp-LxAdv-pgrp.dita">2014-02-11 -
              pgrp to pgrp: Add instruction and example <sourcexml>pgrp/@subdoc</sourcexml> and
                <sourcexml>pgrp/@toc-caption</sourcexml>. Support Discussion Board: NZ09 Commentary,
              Form and Precedents</xref>
          </li>
        </ul>
      </p>
    </section>



    <section>
      <title>Newsitem 3.6 PROD</title>
      <p>2014-03-20 <ul>
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
            <xref href="../../common_newest/Rosetta_footnote-LxAdv-footnote.dita">2014-01-06 -
              footnotegrp and footnote to footnotegrp and footnote: Updated target example for
              applying the rule of "deleting extraneous instances of @morerows, @colsep and @rowsep"
              in sample documents.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_docinfo.alt-renditions-LxAdv-doc.alt-renditions.dita">2013-12-17 - docinfo:alt-renditions/docinfo:alt-rendition to
              doc:alt-renditions/doc:alt-rendition: Added instruction and example for
                <sourcexml>docinfo:alt-rendition/lnlink</sourcexml>. (Webteam #247307)</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_glp.note-Chof-li-LxAdv-listitem-note.dita">2013-11-07 - l/glp:note to list/note: Fixed title to correctly indicate mapping
              described. Not a rule change.</xref>
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
            <xref href="../../common_newest/Rosetta_refpt-Chof-p_text-LxAdv-p_ref.anchor.dita">2013-10-11 - refpt child of p/text to p/ref:anchor: Added a note and update the
              target examples when refpt comes without attribute
                <sourcexml>[@type="ext"]</sourcexml> and <sourcexml>[@type="local"]</sourcexml> in
              source documents.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-10-03 - remotelink to ref:crossreference: Added use case where remotelink
              contains @href which is a URL but does not contain @hrefclass='http'.</xref>
          </li>
        </ul>
      </p>
    </section>

    <section>
      <title>Newsitem 3.6 PROD</title>
      <p>2013-10-02<ul>
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
        </ul></p>
    </section>
    <section>
      <title>Newsitem 3.6 PROD</title>
      <p>2013-09-03<ul>
          <li>
            <xref href="../../common_newest/Rosetta_title-LxAdv-title.dita">2013-09-03 - title to
              title: Updated Instruction when <sourcexml>title</sourcexml> contains word "TITLE: "
              or "NAME: " or "SITE: ".</xref>
          </li>
          <li>
            <xref href="../../DITA-UK/UK09-LegalNews/UK09LegalNews_contrib.dita">2013-09-03 -
              contrib: Added instruction to suppress any emph descendants of contrib/person and
              updated the example.</xref>
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
        </ul></p>
    </section>
    <section>
      <title>Newsitem 3.4 PROD</title>
      <p>2013-06-18<ul>
          <li>
            <xref href="../../common_newest/Rosetta_inlineobject-DescendantOf-title-LxAdv-ref.inlineobject.dita">2013-06-18 - inlineobject[ancestor::title] to ref:inlineobject: Added an example in
              which inlineobject is a direct child of title.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_copyright-LxAdv-copyright.dita">2013-06-17 -
              copyright to copyright: Added an example when <sourcexml>copyright-holder</sourcexml>
              is not present in the source.</xref>
          </li>
        </ul></p>
    </section>
    <section>
      <title>Newsitem 3.3 PROD</title>
      <p>2013-06-05<ul>
          <li>
            <xref href="../../DITA-UK/UK09-LegalNews/UK09_Rosetta_inlineobject-Chof-lilabel_emph_sub-LxAdv_ref.inlineobject.dita">2013-06-05 - emph/sub/inlineobject[ancestor::lilabel] to ref:inlineobject:
              Created.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-06-03 - remotelink to ref:crossreference: Updated the Target XML 2 by removing
              the <targetxml>@crossreferencetype</targetxml> for Canada example.</xref>
          </li>
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
          <li>
            <xref href="../../common_newest/Rosetta_leg.comntry-LxAdv-annot.annotations-annot.annotation-grp.dita">2013-05-15 - leg:comntry to annot:annotations/annot:annotation-grp: Fixed typo:
              (extra semicolon in xpath expression)</xref>
          </li>
        </ul></p>
    </section>
    <section>
      <title>Newsitem 3.2 PROD</title>
      <p>2013-05-10<ul>
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
            <xref href="../../common_newest/Rosetta_inlineobject-LxAdv-ref.inlineobject.dita">2013-05-08 - inlineobject to ref:inlineobject: Extended the list of allowable values
              for image handling.</xref>
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
            <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-05-08 - remotelink to ref:crossreference: Extended the list of allowable values
              for image handling.</xref>
          </li>
          <li>
            <xref href="../../DITA-UK/UK09-LegalNews/UK09LegalNews_publication_inlineobject.dita">2013-05-02 - inlineobject: Updated target example to reflect changes per latest
              Apollo markup.</xref>
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
            <xref href="../../common_newest/Rosetta_docinfo.alt-renditions-LxAdv-doc.alt-renditions.dita">2013-05-01 - docinfo:alt-renditions/docinfo:alt-rendition to
              doc:alt-renditions/doc:alt-rendition: Updated instructions and target example per
              latest Apollo markup.</xref>
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
            <xref href="../../common_newest/Rosetta_inlineobject-LxAdv-ref.inlineobject.dita">2013-05-01 - inlineobject to ref:inlineobject: Removed instructions for section
              "Pre-Release 4.0" because according to latest Apollo markup, section "Release 4.0 and
              after" and section "Pre-Release 4.0" now have similar conversion markup.</xref>
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
            <xref href="../../common_newest/Rosetta_inlineobject-LxAdv-ref.inlineobject.dita">2013-04-30 - inlineobject to ref:inlineobject: Updated target sample according to
              latest Apollo markup.</xref>
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
    <section><title>Newsitem 3.1 PROD</title>
      <p>2013-04-22</p><ul>
        <li>
          <xref href="../../common_newest/Rosetta_inlineobject-Chof-emph_sub-LxAdv-figure_ref.inlinobject.dita">2013-04-22 - emph/sub/inlineobject to figure/ref:inlineobject: Created.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_inlineobject-Chof-sub_AND_followingSibling_sub_inlineobject-LxAdv-formula.dita">2013-04-22 - sub/inlineobject[following-sibling::sub/inlineobject] to formula:
            Created.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_docinfo.doc-lang-and-doc-country-LxAdv-ROOT_xml.lang.dita">2013-04-19 - docinfo:doc-lang and docinfo:doc-country to @xml:lang and @xml:ID: Added
            note about applicability of restrictions and required modifications for
              <targetxml>xml:id</targetxml> to other scenarios.</xref>
        </li>
      </ul></section>
    <section>
      <title>Newsitem 3.1 PROD</title>
      <p>2013-04-17<ul>
          <li>
            <xref href="../../common_newest/Rosetta_inlineobject-DescendantOf-title-LxAdv-ref.inlineobject.dita">2013-04-17 - inlineobject[ancestor::title] to ref:inlineobject: Created.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_docinfo.alt-renditions-LxAdv-doc.alt-renditions.dita">2013-04-17 - docinfo:alt-renditions/docinfo:alt-rendition to
              doc:alt-renditions/doc:alt-rendition: Updated target example (removed ".pdf" from
                <targetxml>ref:key-value/@value</targetxml>).</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2013-04-12 - docinfo:assoc-links to doc:related-content: This module was changed from
              UKspecific to applicable to all LBUs</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2013-04-10 - docinfo:assoc-links to doc:related-content: An example for related
              content source and target xml 4</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_leg.num_ln.user-displayed-LxAdv-classify.classification.dita">2013-04-10 - leg:num[@ln.user-displayed="false"] to classify:classification: Updated
              the note for handling of leg:num/@ln.user-displayed="false"</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-04-10 - remotelink to ref:crossreference: Added Source XML 7a: for link to URL,
              with non-URL text content because it was previously missing, only the target example
              was here.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_docinfo.lbu-meta-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta-scheme.dita">2013-04-09 - docinfo:lbu-meta to doc:legacy-metadata[@metadatasource="lbu-meta"]:
              Added the instruction for handling
                <sourcexml>docinfo:metaitem[@name="QLDB"]</sourcexml>.</xref>
          </li>
        </ul></p>
    </section>
    <section>
      <title>Newsitem 2.1 PROD</title>
      <p>2013-04-08<ul>
          <li>
            <xref href="../../DITA-UK/UK09-LegalNews/UK09LegalNews_jrnl_journalcite.dita">2013-04-08
              - jrnl:journalcite: Corrected the instructions for handling the scenario when
                <sourcexml>jrnl:journalcite</sourcexml> only contains text so that it states "Place
              the contents of <sourcexml>jrnl:journalcite</sourcexml> inside
                <targetxml>lnci:content</targetxml>."</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_docinfo.alt-renditions-LxAdv-doc.alt-renditions.dita">2013-03-26 - docinfo:alt-renditions/docinfo:alt-rendition to
              doc:alt-renditions/doc:alt-rendition: Updated target example
                (<targetxml>proc:param/@value="pdf"</targetxml>) per project requirement.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_blockquote-link-LxAdv-blockquote-p-text-ref.lnlink.dita">2013-03-26 - blockquote/link to blockquote/p/text/ref:lnlink: Updated target example
                (<targetxml>proc:param/@value="pdf"</targetxml>) per project requirement.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_link-LxAdv-ref.lnlink.dita">2013-03-26 - link to
              ref:lnlink/@service="ATTACHMENT": Updated instruction and target example
                (<targetxml>proc:param/@value="pdf"</targetxml>) per project requirement.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_bodytext-link-LxAdv-seclaw.bodytext-p-text-ref.lnlink.dita">2013-03-26 - bodytext/link to seclaw:bodytext/p/text/ref:lnlink: Updated target
              example (<targetxml>proc:param/@value="pdf"</targetxml>) per project
              requirement.</xref>
          </li>
        </ul></p>
    </section>
    <section>
      <title>Newsitem 2.1 PROD</title>
      <p>2013-03-25<ul>
          <li>
            <xref href="../../DITA-UK/UK09-LegalNews/UK09LegalNews_jrnl_journalcite.dita">2013-03-25
              - jrnl:journalcite: Added instructions for handling the scenario when
                <sourcexml>jrnl:journalcite</sourcexml> only contains text.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_docinfo.doc-id-LxAdv-dcidentifier_lnmetaidentifier-scheme.dita">2013-03-20 - docinfo:doc-id to dc:identifier[@lnmeta:identifier-scheme]: Updated the
              information on handling the situation when
                <sourcexml>docinfo:dpsi[@id-string]</sourcexml> is absent with instructions to get
              the dpsi from
                <sourcexml>docinfo/docinfo:custom-metafields/docinfo:custom-metafield[@name="dpsi"]</sourcexml>.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_leg.num_ln.user-displayed-LxAdv-classify.classification.dita">2013-03-14 - leg:num[@ln.user-displayed="false"] to classify:classification: Updated
              instruction and example for handling of leg:num/@ln.user-displayed="false"</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_nl-LxAdv-proc.nl.dita">2013-03-14 - nl to
              proc:nl: Add instruction and example <sourcexml>nl/@n</sourcexml>.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_org-to-LexisAdvance_entity_org.dita">2013-03-14
              - org to entity:org: Created.</xref>
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
            <xref href="../../common_newest/Rosetta_inlineobject-LxAdv-ref.inlineobject.dita">2013-03-13 - inlineobject to ref:inlineobject: Removed the value leg1.png and added
              the statement "These files should be suppressed for both *.gif and *.png file types"
              was added.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_glp.note_blockquote_p_text_inlineobject-LxAdv-note_bodytext_p_text.dita">2013-03-12 - glp:note: Updated the instructions to remove the contradictory addition
              of inlineobject within the output</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_inlineobject-LxAdv-ref.inlineobject.dita">2013-03-12 - inlineobject to ref:inlineobject: Added an additional value of
              leg1.pngto the <sourcexml>inlineobject</sourcexml>suppression list</xref>
          </li>
        </ul></p>
    </section>
    <section>
      <title>Newsitem 1.12 PROD</title>
      <p>2013-03-11<ul>
          <li>
            <xref href="../../common_newest/Rosetta_remotelink-Chof-url-LxAdv-url.dita">2013-03-11 -
              url/remotelink to url: Added instructions for omitting <sourcexml>emph</sourcexml>
              when it occurs as a child of <sourcexml>url/remotelink</sourcexml>. Added an sample
              mapping demonstrating this scenario.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_date-LxAdv-date.dita">2013-03-08 - date to date:
              Added instruction for @normdate attribute that falls on various NL date
              elements</xref>
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
            <xref href="../../common_newest/Rosetta_docinfo.alt-renditions-LxAdv-doc.alt-renditions.dita">2013-03-05 - docinfo:alt-renditions/docinfo:alt-rendition to
              doc:alt-renditions/doc:alt-rendition: Updated target example (removed ".pdf" from
              attribute value of <sourcexml>ref:key-value/@value</sourcexml>).</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_glp.note_blockquote_p_text_inlineobject-LxAdv-note_bodytext_p_text.dita">2013-03-05 - glp:note: Example was added for <sourcexml>inlineobject</sourcexml>
              within target xml example.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_glp.note_blockquote_p_text_inlineobject-LxAdv-note_bodytext_p_text.dita">2013-03-01 - glp:note: Additional information was added for the handling of leg1.gif
              and leg1.png within an <sourcexml>inlineobject</sourcexml>.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_docinfo.alt-renditions-LxAdv-doc.alt-renditions.dita">2013-02-26 - docinfo:alt-renditions/docinfo:alt-rendition to
              doc:alt-renditions/doc:alt-rendition: Updated target example per project
              requirement.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_blockquote-link-LxAdv-blockquote-p-text-ref.lnlink.dita">2013-02-26 - blockquote/link to blockquote/p/text/ref:lnlink: Updated target example
              per project requirement.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_emp-Chof-heading_title-LxAdv-heading_title.dita">2013-02-26 - heading/title/emph to heading/title: Created.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_link-LxAdv-ref.lnlink.dita">2013-02-26 - link to
              ref:lnlink/@service="ATTACHMENT": Updated target example per project
              requirement.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_bodytext-link-LxAdv-seclaw.bodytext-p-text-ref.lnlink.dita">2013-02-26 - bodytext/link to seclaw:bodytext/p/text/ref:lnlink: Updated target
              example per project requirement.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_blockquote-LxAdv-blockquote.dita">2013-02-18 -
              blockquote to blockquote: Created two sections, one for "Release 4.0 and after" and
              another for "Pre-Release 4.0".</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_figure-LxAdv-figure.dita">2013-02-18 - figure to
              figure: Created two sections, one for "Release 4.0 and after" and another for
              "Pre-Release 4.0".</xref>
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
            <xref href="../../common_newest/Rosetta_inlineobject-Chof-h-LxAdv-figure_ref.inlineobject.dita">2013-02-18 - h/inlineobject to figure/ref:inlineobject: Created two sections, one for
              "Release 4.0 and after" and another for "Pre-Release 4.0".</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_inlineobject-Chof-emph-LxAdv-figure_ref.inlinobject.dita">2013-02-18 - emph/inlineobject to figure/ref:inlineobject: Created two sections, one
              for "Release 4.0 and after" and another for "Pre-Release 4.0".</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_inlineobject-Chof-sub-LxAdv-figure_ref.inlineobject.dita">2013-02-18 - sub/inlineobject to figure/ref:inlineobject: Created two sections, one
              for "Release 4.0 and after" and another for "Pre-Release 4.0".</xref>
          </li>
          <li>2013-02-18 - glp:note/inlineobject to: Created two sections, one for "Release 4.0 and
            after" and another for "Pre-Release 4.0".</li>
          <li>
            <xref href="../../common_newest/Rosetta_inlineobject-Chof-dispformula-LxAdv-formula_ref.inlineobject.dita">2013-02-18 - dispformula/inlineobject to formula/ref:inlineobject: Created two
              sections, one for "Release 4.0 and after" and another for "Pre-Release 4.0".</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_inlineobject-Chof-p_blockquote-LxAdv-p_figure_ref.inlineobject.dita">2013-02-18 - p/blockquote/inlineobject to p/figure/ref:inlineobject: Created two
              sections, one for "Release 4.0 and after" and another for "Pre-Release 4.0".</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_inlineobject-Chof-bodytext-LxAdv-bodytext_p_text_figure_ref.inlineobject.dita">2013-02-18 - bodytext/inlineobject to bodytext/p/text/figure/ref:inlineobject:
              Created two sections, one for "Release 4.0 and after" and another for "Pre-Release
              4.0".</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-02-18 - remotelink to ref:crossreference: Created two sections, one for "Release
              4.0 and after" and another for "Pre-Release 4.0".</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_char-line-LxAdv-proc.formchars.dita">2013-02-08
              - char-line to proc:formchars: Corrected the last mapping of
                <sourcexml>char-line[@character=" "]</sourcexml> to
                <targetxml>proc:formchars[@formchar="invisible"]</targetxml> so that the source
              element properly displays as
              <sourcexml>char-line[@character="&amp;nbsp;"]</sourcexml>.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_form-chars-LxAdv-formchars.dita">2013-02-08 -
              form-chars to proc:formchars: Corrected the last mapping of
                <sourcexml>form-chars[@character=" "]</sourcexml> to
                <targetxml>proc:formchars[@formchar="invisible"]</targetxml> so that the source
              element properly displays as
                <sourcexml>form-chars[@character="&amp;nbsp;"]</sourcexml>.</xref>
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
        </ul></p>
    </section>
    <section>
      <title>Newsitem 1.12 PROD</title>
      <p>2013-01-25<ul>
          <li>Created.</li>
        </ul></p>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK09-LegalNews\UK09LegalNews_changeLog.dita  -->
	<!--<xsl:message>UK09LegalNews_changeLog.xsl requires manual development!</xsl:message> -->

</xsl:stylesheet>