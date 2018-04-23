<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:ci="http://www.lexis-nexis.com/ci" xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" xmlns:frm="http://www.lexis-nexis.com/glp/frm" xmlns:source_lnci="http://www.lexis-nexis.com/lnci" xmlns:classify="http://www.lexisnexis.com/xmlschemas/content/shared/classification/1/" xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" xmlns:form="http://www.lexisnexis.com/xmlschemas/content/shared/form/1/" xmlns:lnci="http://www.lexisnexis.com/xmlschemas/content/shared/citations/1/" xmlns:proc="http://www.lexisnexis.com/xmlschemas/content/shared/process-elements/1/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita ci docinfo frm lnci">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="UK14_Precedents_changeLog">
    <title>Change Log for UK14 Precedents</title>
    <body>
        <section>
            <title>Seclaw 8.19_PROD Schema</title><p>2017-02-06</p>
            <ul>
                <li>
                    <xref href="../../../Rosetta/DITA-UK/UK14-Precedents/UK14_Precedents_alt.rendition-ref.marker.dita">2017-02-06 - docinfo:alt-rendition/link without text id-UK14-30235: New rule. Handles
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
        
        <section><title>Seclaw 8.18_PROD Schema</title><p>2016-12-21</p><ul>
                <li>
                    <xref href="../../../Rosetta/DITA-UK/UK14-Precedents/UK14_Precedents_level-bodytext-form.dita">2016-12-21 - level, bodytext, and form id-UK14-30216: Expanded rule for
                            <sourcexml>level[@leveltype]</sourcexml>, previously mapped only when
                        value <sourcexml>"precedent"</sourcexml>, now also when value
                            <sourcexml>"form"</sourcexml>. Added rule to suppress optional attribute
                            <sourcexml>form[@id]</sourcexml>. The changes reflect markup in
                        precedents derived from UK12-Commentary sources which have been added to the
                        UK14-Precedents stream. No change to target xpaths.</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/DITA-UK/UK14-Precedents/UK14_Precedents_note.dita">2016-12-21 - note id-UK14-30219: Added rules for
                            <sourcexml>note[@notetype="commentary"]</sourcexml>. Reflects markup in
                        precedents derived from UK12-Commentary sources which have been added to the
                        UK14-Precedents stream.</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/DITA-UK/UK14-Precedents/UK14_Precedents_h.dita">2016-12-21 - h (the letter "h") id-UK14-30232: New section. Rule states
                        condition for transform to <targetxml>form:h</targetxml>. Reflects markup in
                        precedents derived from UK12-Commentary sources which have been added to the
                        UK14-Precedents stream.</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/DITA-UK/UK14-Precedents/UK14_Precedents_sigblock.dita">2016-12-21 - sigblock id-UK14-30233: New section. Reflects markup in
                        precedents derived from UK12-Commentary sources which have been added to the
                        UK14-Precedents stream.</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/DITA-UK/UK14-Precedents/UK14_Precedents_toc-ChOf-form.dita">2016-12-21 - toc child of form id-UK14-30234: New section. Reflects markup
                        in precedents derived from UK12-Commentary sources which have been added to
                        the UK14-Precedents stream.</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/DITA-UK/UK14-Precedents/UK14_Precedents_person-bio.dita">2016-12-14 - person/bio id-UK14-30221: Not a rule change directly to this
                        module. Modified Example Target to reflect blobstore markup for
                        ref:inlineobject; all paramater names that formerly contained the word
                        "attachment" are now "object".</xref>
                </li>
            </ul></section>
        <section><title>Seclaw 8.18_PROD Schema</title><p>2016-12-13</p><ul>
                <li>
                    <xref href="../../../Rosetta/DITA-UK/UK14-Precedents/UK14_Precedents_introduction.dita">2016-12-13 - Introduction id-UK14-30214: Updated schema version to 8.18
                        PROD.</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/DITA-UK/UK14-Precedents/UK14_Precedents_table_pgwide.dita">2016-12-13 - (UK14) table[@pgwide] check attribute value id-UK14-30231:
                        Modified rule to base <sourcexml>@pgwide</sourcexml> conversion on the
                        attribute's value. Attribute is mapped to target when value is
                            <sourcexml>"0"</sourcexml> or <sourcexml>"1"</sourcexml>. Otherwise
                        suppressed. Previously, this rule simply suppressed
                            <sourcexml>@pgwide</sourcexml> while rosetta markup was in
                        transition.</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/common_newest/Rosetta_UK_docinfo.custom-metafields-LxAdv-dc.date_or_doc.docinfo_classify.classification.dita">2016-11-30 - (UK) docinfo:custom-metafield to dc:date or
                        doc:metadata/doc:docinfo/classify:classification[@classscheme="uk-functional-information"]
                        id-CCCC-10547: Added rule for "isDocBuilderAvailable"; and updated the
                        example.</xref>
                </li>
            </ul></section>
        <section><title>Seclaw 8.17_PROD Schema</title><p>2016-11-18</p><ul>
                <li>
                    <xref href="../../../Rosetta/DITA-UK/UK14-Precedents/UK14_Precedents_note.dita">2016-11-16 - note id-UK14-30219: Revised rules for
                            <sourcexml>p/note</sourcexml> regarding containers created for target.
                        Added rule to move <sourcexml>note</sourcexml> occurring between clause
                        end-tags so that target <targetxml>note</targetxml> occurs at start of
                        parent clause rather than end.</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2016-11-16 - docinfo:assoc-links to doc:related-content id-CCCC-10284:
                        Added to note regarding applying any rules related to
                            <targetxml>@anchoridref</targetxml>, referring specifically to section
                        for "Identifiers to ID Data Type - Handling Pattern Restrictions".</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/common_newest/Rosetta_endnote-LxAdv-endnote.dita">2016-11-16 - endnote to endnote id-CCCC-10317: Added to note regarding
                        applying any rules related to <targetxml>@anchoridref</targetxml>, referring
                        specifically to section for "Identifiers to ID Data Type - Handling Pattern
                        Restrictions".</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/common_newest/Rosetta_link_refpt-LxAdv-ref.lnlink-ref.locator_anchoridref.dita">2016-11-16 - link/@refpt to ref:lnlink/ref.locator/@anchoridref
                        id-CCCC-10395: Added to note regarding applying any rules related to
                            <targetxml>@anchoridref</targetxml>, referring specifically to section
                        for "Identifiers to ID Data Type - Handling Pattern Restrictions".</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2016-11-16 - remotelink to ref:crossreference id-CCCC-10465: Added to note
                        regarding applying any rules related to <targetxml>@anchoridref</targetxml>,
                        referring specifically to section for "Identifiers to ID Data Type -
                        Handling Pattern Restrictions".</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/common_newest/Rosetta_inlineobject-LxAdv-ref.inlineobject_BLOBSTORE.dita">2016-11-07 - inlineobject to ref:inlineobject for BLOBSTORE images
                        id-CCCC-10540: Updated the instruction for ref:key-name and proc:param
                        attribute values.</xref>
                </li>
            </ul></section>
        <section>
            <title>Seclaw 8.17_PROD Schema</title><p>2016-11-02</p>
            <ul>
                <li>
                    <xref href="../../../Rosetta/common_newest/Rosetta_inlineobject-LxAdv-ref.inlineobject_BLOBSTORE.dita">2016-10-21 - inlineobject to ref:inlineobject for BLOBSTORE images
                        id-CCCC-10540: Changed one proc:param name for target. Formerly
                            <targetxml>@name="attachment-server"</targetxml>; changed to
                            <targetxml>@name="object-server"</targetxml>.</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/common_newest/Rosetta_link-LxAdv-ref.lnlink_BLOBSTORE.dita">2016-10-21 - link[@filename] to ref:lnlink[@service="ATTACHMENT"] for
                        BLOBSTORE images id-CCCC-10541: Updated the Blobstore related instruction
                        for use standardize specific output parameters.</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/common_newest/Rosetta_lnlink_service_ATTACHMENT-LxAdv-ref.lnlink_BLOBSTORE.dita">2016-10-21 - lnlink[@service="ATTACHMENT"] to
                        ref:lnlink[@service="ATTACHMENT"] for BLOBSTORE images id-CCCC-10542:
                        Updated the Blobstore related instruction for use standardize specific
                        output parameters.</xref>
                </li>
            </ul>
        </section>
        <section><title>Seclaw 8.16_PROD Schema</title><p>2016-10-20</p><ul>
                <li>
                    <xref href="../../../Rosetta/DITA-UK/UK14-Precedents/UK14_Precedents_clause.dita">2016-10-20 - clause id-UK14-30207: Revised rule for attribute
                            <sourcexml>@id</sourcexml>. Now maps only to
                            <targetxml>@xml:id</targetxml>. Previously also mapped to
                            <targetxml>ref:anchor</targetxml> which caused conflict. Source rosetta
                        now contains <sourcexml>refpt</sourcexml> which converts to
                            <targetxml>ref:anchor</targetxml>, as already described in section
                        "refpt (id-UK14-30223)". No new xpaths.</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.versioninfo-LxAdv-doc.versioninfo-scheme.dita">2016-10-17 - docinfo:versioninfo to doc:versioninfo id-CCCC-10307: Updated
                        the instruction for handling the target attribute
                            <targetxml>@normdate</targetxml>. [Webstar#6676189]</xref>
                </li>
            </ul></section>
        <section><title>Seclaw 8.16_PROD Schema</title><p>2016-10-05</p><ul>
                <li>
                    <xref href="../../../Rosetta/DITA-UK/UK14-Precedents/UK14_Precedents_introduction.dita">2016-10-05 - Introduction id-UK14-30214: Updated schema version to 8.16
                        PROD.</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/DITA-UK/UK14-Precedents/UK14_Precedents_alt-opt-elements.dita">2016-10-05 - frm:alternate, frm:optional id-UK14-30225: Added rule.
                        Generate form:div container for each direct child within alternate and
                        optional markup. New Xpaths. The consistent child container supports special
                        features associated with alternate and optional material.</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/DITA-UK/UK14-Precedents/UK14_Precedents_note.dita">2016-10-05 - note id-UK14-30219: Added rules to generate
                            <targetxml>pgrp</targetxml> wrapper for certain scenarios. New Xpaths.
                        Also removed an exception rule for p/note within alternate and optional
                        markup; see the "please notice" section for detail.</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/DITA-UK/UK14-Precedents/UK14_Precedents_table_pgwide.dita">2016-10-05 - (UK14) table[@pgwide] suppress attribute id-UK14-30231:
                        Created.</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/common_newest/Rosetta_UK_docinfo.custom-metafields-LxAdv-dc.date_or_doc.docinfo_classify.classification.dita">2016-10-04 - (UK) docinfo:custom-metafield to dc:date or
                        doc:metadata/doc:docinfo/classify:classification[@classscheme="uk-functional-information"]
                        id-CCCC-10547: Added rule for "word-toc"; and updated the example.</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.versioninfo-LxAdv-doc.versioninfo-scheme.dita">2016-09-14 - docinfo:versioninfo to doc:versioninfo id-CCCC-10307: Note
                        added for handling the input markup
                            '<targetxml>docinfo:versioninfo@startdate-tbd</targetxml>'.</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/common_newest/Rosetta_UK_docinfo.custom-metafields-LxAdv-dc.date_or_doc.docinfo_classify.classification.dita">2016-09-08 - (UK) docinfo:custom-metafield to dc:date or
                        doc:metadata/doc:docinfo/classify:classification[@classscheme="uk-functional-information"]
                        id-CCCC-10547: Added rule for attribute <sourcexml>@name</sourcexml> with
                        value "containsAppealTracker"; and updated the example.</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.versioninfo-LxAdv-doc.versioninfo-scheme.dita">2016-09-02 - docinfo:versioninfo to doc:versioninfo id-CCCC-10307: Special
                        Rule for added <targetxml>@normdate</targetxml> attribute inside the
                            <targetxml>doc:startdate</targetxml> and
                            <targetxml>doc:enddate</targetxml>.</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/common_newest/Rosetta_NZ-Newsitem_title_ci.cite_nl-LxAdv-title_lnci-cite.dita">2016-08-05 - title/ci:cite/nl to title/lnci:cite id-CCCC-10409: Added Note
                        about xml snippets that illustrate image handling. Note summarizes move from
                        Apollo to Blobstore application. UK is first LBU to move to Blobstore.
                    </xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2016-08-03 - remotelink to ref:crossreference id-CCCC-10465: Added Note
                        about xml snippets that illustrate image handling. Note summarizes move from
                        Apollo to Blobstore application. UK is first LBU to move to
                        Blobstore.</xref>
                </li>
            </ul></section>
        <section><title>Seclaw 8.14_PROD Schema</title><p>2016-08-01</p><ul>
                <li>
                    <xref href="../../../Rosetta/common_newest/Rosetta_UK_docinfo.lbu-meta-LxAdv-doc.docinfo_classify.classification.dita">2016-08-01 - (UK) docinfo:lbu-meta to
                        doc:metadata/doc:docinfo/classify:classification[@classscheme="uk-functional-information"]
                        id-CCCC-10548: Created. New rules.</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/common_newest/Rosetta_inlineobject-Chof-emph-LxAdv-figure_ref.inlinobject.dita">2016-08-01 - emph/inlineobject to figure/ref:inlineobject id-CCCC-10359:
                        Added Note about xml snippets that illustrate image handling. Note
                        summarizes move from Apollo to Blobstore application. UK is first LBU to
                        move to Blobstore.</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/common_newest/Rosetta_inlineobject-Chof-sub-LxAdv-figure_ref.inlineobject.dita">2016-08-01 - sub/inlineobject to figure/ref:inlineobject id-CCCC-10365:
                        Added Note about xml snippets that illustrate image handling. Note
                        summarizes move from Apollo to Blobstore application. UK is first LBU to
                        move to Blobstore.</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/common_newest/Rosetta_bodytext-link-LxAdv-seclaw.bodytext-p-text-ref.lnlink.dita">2016-08-01 - bodytext/link to seclaw:bodytext/p/text/ref:lnlink
                        id-CCCC-10248: Added Note about xml snippets that illustrate image handling.
                        Note summarizes move from Apollo to Blobstore application. UK is first LBU
                        to move to Blobstore.</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.alt-renditions-LxAdv-doc.alt-renditions.dita">2016-07-29 - docinfo:alt-renditions/docinfo:alt-rendition to
                        doc:alt-renditions/doc:alt-rendition id-CCCC-10283: Added Note about xml
                        snippets that illustrate image handling. Note summarizes move from Apollo to
                        Blobstore application. UK is first LBU to move to Blobstore.</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2016-07-29 - docinfo:assoc-links to doc:related-content id-CCCC-10284:
                        Added Note about xml snippets that illustrate image handling. Note
                        summarizes move from Apollo to Blobstore application. UK is first LBU to
                        move to Blobstore.</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/common_newest/Rosetta_figure-LxAdv-figure.dita">2016-07-29 - figure to figure id-CCCC-10320: Added Note about xml snippets
                        that illustrate image handling. Note summarizes move from Apollo to
                        Blobstore application. UK is first LBU to move to Blobstore.</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/common_newest/Rosetta_inlineobject-LxAdv-figure_ref.inlineobject.dita">2016-07-29 - inlineobject to figure/ref:inlineobject id-CCCC-10368: Added
                        Note about xml snippets that illustrate image handling. Note summarizes move
                        from Apollo to Blobstore application. UK is first LBU to move to
                        Blobstore.</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/common_newest/Rosetta_inlineobject-Chof-h-LxAdv-figure_ref.inlineobject.dita">2016-07-29 - h/inlineobject to figure/ref:inlineobject id-CCCC-10362: Added
                        Note about xml snippets that illustrate image handling. Note summarizes move
                        from Apollo to Blobstore application. UK is first LBU to move to
                        Blobstore.</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/common_newest/Rosetta_inlineobject-Chof-bodytext-LxAdv-bodytext_p_text_figure_ref.inlineobject.dita">2016-07-29 - bodytext/inlineobject to
                        bodytext/p/text/figure/ref:inlineobject id-CCCC-10354: Added Note about xml
                        snippets that illustrate image handling. Note summarizes move from Apollo to
                        Blobstore application. UK is first LBU to move to Blobstore. VSTS
                        76146</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/common_newest/Rosetta_refpt-Chof-p_text_emph-LxAdv-p_ref.anchor.dita">2016-07-27 - refpt child of p/text/emph to p/ref:anchor id-CCCC-10457:
                        Added a note for handling of text which is comes under the
                            <sourcexml>refpt</sourcexml> in source.</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/common_newest/Rosetta_UK_docinfo.custom-metafields-LxAdv-dc.date_or_doc.docinfo_classify.classification.dita">2016-07-26 - (UK) docinfo:custom-metafield to dc:date or
                        doc:metadata/doc:docinfo/classify:classification[@classscheme="uk-functional-information"]
                        id-CCCC-10547: Added rule for "resultType"; and updated the example.</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/common_newest/Rosetta_inlineobject-Chof-p_blockquote-LxAdv-p_figure_ref.inlineobject.dita">2016-07-26 - p/blockquote/inlineobject to p/figure/ref:inlineobject
                        id-CCCC-10363: Added Note about xml snippets that illustrate image handling.
                        Note summarizes move from Apollo to Blobstore application. UK is first LBU
                        to move to Blobstore. </xref>
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
                    <xref href="../../../Rosetta/common_newest/Rosetta_inlineobject-LxAdv-ref.inlineobject_BLOBSTORE.dita">2016-05-20 - inlineobject to ref:inlineobject for BLOBSTORE images
                        id-CCCC-10540: Created this instruction to specify Blobstore specific output
                        parameters.</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/common_newest/Rosetta_link-LxAdv-ref.lnlink_BLOBSTORE.dita">2016-05-20 - link[@filename] to ref:lnlink[@service="ATTACHMENT"] for
                        BLOBSTORE images id-CCCC-10541: Created this instruction to specify
                        Blobstore specific output parameters.</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/common_newest/Rosetta_lnlink_service_ATTACHMENT-LxAdv-ref.lnlink_BLOBSTORE.dita">2016-05-20 - lnlink[@service="ATTACHMENT"] to
                        ref:lnlink[@service="ATTACHMENT"] for BLOBSTORE images id-CCCC-10542:
                        Created this instruction to specify Blobstore specific output
                        parameters.</xref>
                </li>
            </ul>
        </section>
        <section><title>Seclaw 8.12_PROD Schema</title><p>2016-05-09</p><ul>
                <li>
                    <xref href="../../../Rosetta/DITA-UK/UK14-Precedents/UK14_Precedents_introduction.dita">2016-05-09 - Introduction id-UK14-30214: Updated schema version to 8.12
                        PROD.</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/DITA-UK/UK14-Precedents/UK14_Precedents_note.dita">2016-05-09 - note id-UK14-30219: No change to narrative rules. Fixed
                        Example 2 Target markup. Incorrectly showed parent-child
                            <targetxml>form:p/note</targetxml>. Now corrected to be sibling
                            <targetxml>form:p</targetxml> and <targetxml>note</targetxml>.</xref>
                </li>
            </ul></section>
        <section><title>Seclaw 8.11_PROD Schema</title><p>2016-05-03</p><ul>
                <li>
                    <xref href="../../../Rosetta/DITA-UK/UK14-Precedents/UK14_Precedents_introduction.dita">2016-05-03 - Introduction id-UK14-30214: Updated schema version to 8.11
                        PROD.</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/DITA-UK/UK14-Precedents/UK14_Precedents_note.dita">2016-05-03 - note id-UK14-30219: Added special rule for
                            <sourcexml>p/note</sourcexml> occurring as child of
                            <sourcexml>frm:alternate</sourcexml> or
                            <sourcexml>frm:optional</sourcexml>. Rule describes generation of
                        wrapping element <targetxml>form:div</targetxml> for target.</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/common_newest/Rosetta_refpt-Chof-p_text-LxAdv-p_ref.anchor.dita">2016-04-28 - refpt child of p/text to p/ref:anchor id-CCCC-10456: Added one
                        more source and target example.</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/common_newest/Rosetta_emph-LxAdv-emph.dita">2016-04-01 - emph to emph id-CCCC-10316: Added statement to clarify that
                        children of emph should be processed.</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/common_newest/Rosetta_l-LxAdv-list.dita">2016-04-01
                        - l to list id-CCCC-10372: Added mapping instruction for handling h within
                        listitem.</xref>
                </li>
            </ul></section>
        <section><title>Seclaw 8.10_PROD Schema</title><p>2016-03-30</p><ul>
                <li>
                    <xref href="../../../Rosetta/DITA-UK/UK14-Precedents/UK14_Precedents_frm.div.dita">2016-03-27 - frm:divs and frm:div id-UK14-30212: Revised for attributes.
                        Added rules for <sourcexml>@id</sourcexml> and
                            <sourcexml>@preservenumbering</sourcexml>. No change to rule for
                            <sourcexml>@divtype</sourcexml>.</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/DITA-UK/UK14-Precedents/UK14_Precedents_frm.prompt.dita">2016-03-27 - frm:prompt id-UK14-30213: Revised. Added rules for
                        attributes.</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/DITA-UK/UK14-Precedents/UK14_Precedents_clause.dita">2016-03-27 - clause id-UK14-30207: Added rule for new attribute
                            <sourcexml>@preservenumbering</sourcexml>. And expanded rule for
                        attribute <sourcexml>@id</sourcexml> to map to two targets.</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/DITA-UK/UK14-Precedents/UK14_Precedents_alt-opt-elements.dita">2016-03-27 - frm:alternate, frm:optional id-UK14-30225: New section. New
                        xpaths.</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/DITA-UK/UK14-Precedents/UK14_Precedents_refpt.dita">2016-03-27 - refpt id-UK14-30223: Revised to broaden rule for moving
                            <sourcexml>refpt</sourcexml>. Formerly covered only within
                            <sourcexml>form/heading/title</sourcexml>. Now covers any occurrence
                        within <sourcexml>heading</sourcexml> or
                        <sourcexml>title</sourcexml>.</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/DITA-UK/UK14-Precedents/UK14_Precedents_deflist-defitem.dita">2016-03-27 - deflist/defitem id-UK14-30226: Section is new. For UK14
                        Precedents, target is always
                            <targetxml>form:deflist/form:defitem</targetxml>. These rules apply
                        therefore <sourcexml>deflist/defitem</sourcexml> instructions have been
                        removed from the General Markup section.</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/DITA-UK/UK14-Precedents/UK14_Precedents_inlinedefitem.dita">2016-03-27 - inlinedefitem id-UK14-30229: New section. New xpaths.</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/DITA-UK/UK14-Precedents/UK14_Precedents_s.dita">2016-03-27 - s (the letter "s") id-UK14-30228: New section. New
                        xpaths.</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/DITA-UK/UK14-Precedents/UK14_Precedents_p-limited.dita">2016-03-27 - p-limited id-UK14-30230: New section. New xpaths. For UK14
                        Precedents, target is always <targetxml>form:p/form:text</targetxml>. These
                        rules apply therefore <sourcexml>p-limited</sourcexml> instructions have
                        been removed from the General Markup section.</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/DITA-UK/UK14-Precedents/UK14_Precedents_doc.relationshipmetadata.dita">2016-03-27 - relationshipmetadata to doc:relationshipmetadata
                        id-UK14-30227: Section is new. New data and xpaths.</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/DITA-UK/UK14-Precedents/UK14_Precedents_introduction.dita">2016-03-26 - Introduction id-UK14-30214: Administrative. Removed several
                        modules from the General Markup section. Coding not affected. The modules
                        concerned elements occurring as children of markup not used in UK14. For
                        example, some removed modules had rules for elements as children of
                        glp:note; UK14 does not use glp:note so the rules would never have been
                        applied and do not need to be present in these Conversion
                        Instructions.</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/DITA-UK/UK14-Precedents/UK14_Precedents_introduction.dita">2016-03-25 - Introduction id-UK14-30214: Updated schema version to 8.10
                        PROD.</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/common_newest/Rosetta_inlineobject-LxAdv-ref.inlineobject.dita">2015-11-16 - inlineobject to ref:inlineobject id-CCCC-10369: Added
                        instruction for <sourcexml>inlineobject/@key</sourcexml> to be
                        suppressed.</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2015-09-11 - docinfo:assoc-links to doc:related-content id-CCCC-10284:
                        Correction to target XPATHs for
                            <sourcexml>lnlink[@service="QUERYLINK"]</sourcexml>,
                            <sourcexml>lnlink[@service="ATTACHMENT"]</sourcexml>, and
                            <sourcexml>lnlink[@service="TRAVERSE"]</sourcexml> to add
                            <targetxml>doc:related-content-item/doc:related-content-link</targetxml>
                        before the existing <targetxml>ref:lnlink</targetxml> element in the
                        XPATH.</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2015-09-11 - docinfo:assoc-links to doc:related-content id-CCCC-10284:
                        Added instruction for handling of
                            <sourcexml>lnlink[@service="URL"]</sourcexml> inside
                            <sourcexml>docinfo:assoc-links</sourcexml> or
                            <sourcexml>docinfo:assoc-links-grp</sourcexml>.</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/common_newest/Rosetta_link-LxAdv-ref.lnlink.dita">2015-09-08 - link to ref:lnlink[@service="ATTACHMENT"] id-CCCC-10394: Minor
                        XPATH correction in title to change
                            <targetxml>ref:lnlink/@service="ATTACHMENT"</targetxml> to be
                            <targetxml>ref:lnlink[@service="ATTACHMENT"]</targetxml>.</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/common_newest/Rosetta_lnlink_service_SEARCH-LxAdv-SUPPRESS.dita">2015-09-08 - lnlink[@service='SEARCH'] is SUPPRESSED id-CCCC-10397: Minor
                        XPATH correction in instruction title and body to change
                            <sourcexml>lnlink/@service='SEARCH'</sourcexml> to be
                            <sourcexml>lnlink[@service='SEARCH']</sourcexml>.</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/common_newest/Rosetta_lnlink_service_ATTACHMENT-LxAdv-ref.lnlink.dita">2015-09-08 - lnlink[@service="ATTACHMENT"] to
                        ref:lnlink[@service="ATTACHMENT"] id-CCCC-10396: Minor XPATH correction in
                        instruction title and body to change
                            <sourcexml>lnlink/@service="ATTACHMENT"</sourcexml> to be
                            <sourcexml>lnlink[@service="ATTACHMENT"]</sourcexml>,
                            <targetxml>ref:lnlink</targetxml> to be
                            <targetxml>ref:lnlink[@service="ATTACHMENT"]</targetxml>, and
                            <targetxml>ref:lnlink/@service="ATTACHMENT"</targetxml> to be
                            <targetxml>ref:lnlink[@service="ATTACHMENT"]</targetxml>.</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2015-09-03 - docinfo:assoc-links to doc:related-content id-CCCC-10284:
                        Minor correction to bullet heading text for children of
                            <sourcexml>docinfo:assoc-links</sourcexml> or
                            <sourcexml>docinfo:assoc-links-grp</sourcexml> to change from
                            <sourcexml>lnlink/@service="QUERYLINK"</sourcexml> to be
                            <sourcexml>lnlink[@service="QUERYLINK"]</sourcexml> and
                            <sourcexml>lnlink/@service="ATTACHMENT"</sourcexml> to be
                            <sourcexml>lnlink[@service="ATTACHMENT"]</sourcexml>.</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2015-09-03 - docinfo:assoc-links to doc:related-content id-CCCC-10284:
                        Added
                            <targetxml>doc:related-content-item/@content-type="external-content-location"</targetxml>
                        when the parent
                            <sourcexml>docinfo:assoc-links[@assoc-content="external-content-location"]</sourcexml>
                        exists, for children: <sourcexml>remotelink[@service="DOC-ID"]</sourcexml>,
                            <sourcexml>remotelink[@href]</sourcexml>,
                            <sourcexml>lnlink[@service="TRAVERSE"]</sourcexml> and
                            <sourcexml>ci:cite</sourcexml>.</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2015-09-03 - docinfo:assoc-links to doc:related-content id-CCCC-10284:
                        Added instruction for handling of
                            <sourcexml>lnlink[@service="TRAVERSE"]</sourcexml> inside
                            <sourcexml>docinfo:assoc-links</sourcexml> or
                            <sourcexml>docinfo:assoc-links-grp</sourcexml>.</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/common_newest/Rosetta_inlineobject-Chof-emph-LxAdv-figure_ref.inlinobject.dita">2015-07-24 - emph/inlineobject to figure/ref:inlineobject id-CCCC-10359:
                        When Inlineobject is followed by two emph elements of same typestyle
                            <sourcexml>sup/emph/emph/inlineobject</sourcexml>then from Target we
                        should drop the one emph element and the followed
                            <sourcexml>emph/inlineobject</sourcexml> should mapped with
                            <targetxml>emph/ref:inlineobject</targetxml> in Target.</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/common_newest/Rosetta_inlineobject-Chof-emph-LxAdv-figure_ref.inlinobject.dita">2015-07-21 - emph/inlineobject to figure/ref:inlineobject id-CCCC-10359:
                        When Inlineobject is followed by two emph elements of same typestyle then
                        from Target we should drop the one emph element and the followed
                            <sourcexml>emph/inlineobject</sourcexml> should mapped with
                            <targetxml>figure/ref:inlineobject</targetxml> in Target.</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2015-07-16 - docinfo:assoc-links to doc:related-content id-CCCC-10284:
                        Updated conversion for handling of
                            <sourcexml>ci:cite/@normprotocol</sourcexml>,
                            <targetxml>proc:param[@name="countrycode"]</targetxml>; added
                        instructions for <sourcexml>docinfo:assoc-resource</sourcexml>.</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2015-06-24 - remotelink to ref:crossreference id-CCCC-10465: Added
                        clarification note about url, @normval, and @hrefclass. Webstar
                        302055.</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/common_newest/Rosetta_inlineobject-Chof-emph-LxAdv-figure_ref.inlinobject.dita">2015-06-18 - emph/inlineobject to figure/ref:inlineobject id-CCCC-10359:
                        When source is having emph followed by inlineobject inside base:h element
                            <sourcexml>h/emph/inlineobject</sourcexml> than in Target it should Map
                        it like <targetxml>emph/ref:inlineobject</targetxml> as emph containing text
                        under it.</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2015-05-22 - docinfo:assoc-links to doc:related-content id-CCCC-10284:
                        Clarification. Not a new rule or target. Within rules handling
                            <sourcexml>remotelink[@service="DOC-ID"]</sourcexml>, added statement to
                        create containing elements
                            <targetxml>ref:locator/ref:locator-key</targetxml> which hold
                            <targetxml>ref:key-name</targetxml> and
                            <targetxml>ref:key-value</targetxml>. The xpath is controlled by schema
                        and so conversions have been correct. CI examples were correct. The
                        narrative rule is now explicit. R4.5 Content Issue 2326.</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/common_newest/Rosetta_link-LxAdv-ref.lnlink.dita">2015-05-22 - link to ref:lnlink[@service="ATTACHMENT"] id-CCCC-10394:
                        Changed the instructions to indicate <sourcexml>link/@status</sourcexml> is
                        always dropped and removed <targetxml>ref:lnlink/@status</targetxml> from
                        target example. This is a very low-priority change and has been added for
                        technical correctness, particularly with respect to new CIs. Existing
                        scripts do not have to implement this change since
                            <targetxml>ref:lnlink/@status</targetxml> is ignored by LexisAdvance if
                        it is present.</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/common_newest/Rosetta_lnlink_service_ATTACHMENT-LxAdv-ref.lnlink.dita">2015-05-22 - lnlink[@service="ATTACHMENT"] to
                        ref:lnlink[@service="ATTACHMENT"] id-CCCC-10396: Added an instruction to
                        explicitly indicate <sourcexml>lnlink/@status</sourcexml> is always dropped
                        (suppressed). This is a very low-priority change and has been added for
                        technical correctness, particularly with respect to new CIs. Existing
                        scripts do not have to implement this change unless needed since prior to
                        the change <targetxml>lnlink/@status</targetxml> handling was not explicitly
                        specified.</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2015-05-22 - remotelink to ref:crossreference id-CCCC-10465: Added an
                        instruction to explicitly indicate <sourcexml>remotelink/@status</sourcexml>
                        is always dropped (suppressed). This is a very low-priority change and has
                        been added for technical correctness, particularly with respect to new CIs.
                        Existing scripts do not have to implement this change unless needed since
                        prior to the change <targetxml>remotelink/@status</targetxml> handling was
                        not explicitly specified.</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/common_newest/Rosetta_remotelink-self-inter-document-link-LxAdv-intra-document-link.dita">2015-05-22 - remotelink (self inter-document link) to ref:lnlink
                        (intra-document link) id-CCCC-10468: Added an instruction to explicitly
                        indicate <sourcexml>remotelink/@status</sourcexml> is always dropped
                        (suppressed). This is a very low-priority change and has been added for
                        technical correctness, particularly with respect to new CIs. Existing
                        scripts do not have to implement this change unless needed since prior to
                        the change <targetxml>remotelink/@status</targetxml> handling was not
                        explicitly specified.</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/common_newest/Rosetta_remotelink-Chof-url-LxAdv-url.dita">2015-05-22 - url/remotelink to url id-CCCC-10464: Added an instruction to
                        explicitly indicate <sourcexml>remotelink/@status</sourcexml> is always
                        dropped (suppressed). This is a very low-priority change and has been added
                        for technical correctness, particularly with respect to new CIs. Existing
                        scripts do not have to implement this change unless needed since prior to
                        the change <targetxml>remotelink/@status</targetxml> handling was not
                        explicitly specified.</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/common_newest/Rosetta_docinfo-LxAdv-doc.metadata_doc.docinfo.dita">2015-04-14 - docinfo to doc:metadata/doc:docinfo id-CCCC-10282: Remove
                        bullet icon in sub nested list for handling Indentation isssue.</xref>
                </li>
            </ul></section>
        <section><title>Seclaw 8.3_PROD Schema</title><p>2015-03-23</p><ul>
                <li>
                    <xref href="../../../Rosetta/DITA-UK/UK14-Precedents/UK14_Precedents_introduction.dita">2015-03-23 - Introduction id-UK14-30214: Updated schema version to 8.3
                        PROD.</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/DITA-UK/UK14-Precedents/UK14_Precedents_note.dita">2015-03-23 - note id-UK14-30219: Section revised. New xpaths. Drafting
                        notes have been added in UK12 docs. Previously UK12 notes were only links to
                        separately stored full-content notes. Changes include: removed
                            <targetxml>textitem</targetxml>, added <targetxml>notes</targetxml>
                        wrapper for adjacent <targetxml>note</targetxml>, added special rules to
                        locate <targetxml>note</targetxml> as following sibling. In addition,
                            <sourcexml>note[@notetype="xref"]</sourcexml>, formerly data error, is
                        now active and maps to <targetxml>marginnote</targetxml>. Notice that
                            <targetxml>marginnote</targetxml> occurs within full-content note,
                        meaning <targetxml>note[@notetype="instruction"]</targetxml> can have
                        descendant <targetxml>marginnote</targetxml>. R4.5 Content Issues 2233,
                        2234, 2236, 2237.</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/DITA-UK/UK14-Precedents/UK14_Precedents_introduction.dita">2015-03-22 - Introduction id-UK14-30214: Note that modules for handling
                            <sourcexml>p-limited</sourcexml> have been added to the General Markup
                        section. Markup is new in recent rosetta delivery. R4.5 Content Issue
                        2232.</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/common_newest/Rosetta_classification_classitem_topic.topicreference-Chof-docinfo-LxAdv-doc.docinfo_classify.classification.dita">2015-03-07 - classification/classitem[@classscheme="topic:topicReference"]
                        to classify:classification/classify:classitem/topic:topicReference
                        id-CCCC-10516: Added an indication that this mark-up may also occur within
                            <sourcexml>levelinfo</sourcexml> (as well as within
                            <sourcexml>docinfo</sourcexml> as originally stated).</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/DITA-UK/UK14-Precedents/UK14_Precedents_introduction.dita">2015-03-04 - Introduction id-UK14-30214: Note that the following module has
                        been added to the Metadata section:
                            <sourcexml>classification/classitem[@classscheme="topic:topicReference"]</sourcexml>
                        to
                            <targetxml>classify:classification/classify:classitem/topic:topicReference</targetxml>
                        (id-CCCC-10516). The data addition was announced in UK14 Audit Package
                        Review Mar 3 2015.</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2015-01-09 - remotelink to ref:crossreference id-CCCC-10465: For the two
                        use cases associated with url (target <targetxml>url</targetxml> or
                            <targetxml>ref:lnlink</targetxml>): Added exceptional rule to not
                        concatenate values when <sourcexml>@hrefclass</sourcexml> content is already
                        present in <sourcexml>@href</sourcexml>. Expanded examples 5 and 7 to
                        illustrate the scenario. Responds to data for UK10 Dictionaries but applies
                        in general. R4.5 Content Issue 2120.</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/common_newest/Rosetta_remotelink-Chof-url-LxAdv-url.dita">2015-01-09 - url/remotelink to url id-CCCC-10464: Within use case that maps
                        to <targetxml>ref:lnlink</targetxml>, added exceptional rule to not
                        concatenate values when <sourcexml>@hrefclass</sourcexml> content is already
                        present in <sourcexml>@href</sourcexml>. Expanded example to illustrate the
                        scenario. Responds to data for UK10 Dictionaries but applies in general.
                        R4.5 Content Issue 2120.</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/common_newest/Rosetta_classification_classitem_topic.topicreference-Chof-docinfo-LxAdv-doc.docinfo_classify.classification.dita">2014-12-15 - classification/classitem[@classscheme="topic:topicReference"]
                        to classify:classification/classify:classitem/topic:topicReference
                        id-CCCC-10516: New section. Responds to discussion board item for UK11-DA
                        but markup expected for all UK streams and rule will apply for any
                        jurisdiction where the markup occurs. R4.5 Content Issue 2073.</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2014-12-08 - ci.cite to lnci.cite id-CCCC-10268: Addition of mapping for
                            <sourcexml>ci:pinpoint</sourcexml> to
                            <targetxml>lnci:pinpoint</targetxml> and example from US LPA
                        content.</xref>
                </li>
                <!-- McNally Mar 30 2016: commented-out next item, re entry/p-limited. 
                    Because there are now special UK14 rules for p-limited. The General Markup modules are removed. 
                    This change log item causes validation error -->
                <!--<li>
                    <xref
                        href="../../../Rosetta/common_newest/Rosetta_entry_p-limited-LxAdv-entry_p.dita"
                        >2014-11-11 - entry/p-limited to entry/p id-CCCC-10319: Updated instruction
                        when multiple consecutive <sourcexml>p-limited</sourcexml> elements occur
                        within <sourcexml>entry</sourcexml>.</xref>
                </li>-->
                <li>
                    <xref href="../../../Rosetta/common_newest/Rosetta_figure-LxAdv-figure.dita">2014-10-28 - figure to figure id-CCCC-10320: Moved instruction regarding
                        the XPath XPath <sourcexml>caption/note</sourcexml> into a separate topic.
                        Not a rule change, just a minor reorganization of the instructions.</xref>
                </li>
                <!-- McNally Mar 30 2016: commented-out next item, re entry/p-limited. 
                    Because there are now special UK14 rules for p-limited. The General Markup modules are removed. 
                    This change log item causes validation error -->
                <!--<li>
                    <xref
                        href="../../../Rosetta/common_newest/Rosetta_entry_p-limited-LxAdv-entry_p.dita"
                        >2014-10-28 - entry/p-limited to entry/p id-CCCC-10319: Added note to handle
                        scenario when <sourcexml>l</sourcexml> is a child of
                            <sourcexml>entry/p-limited</sourcexml>.</xref>
                </li>-->
                <li>
                    <xref href="../../../Rosetta/common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2014-10-27 - remotelink to ref:crossreference id-CCCC-10465: Minor. Within
                        use case for <sourcexml>@service="DOC-ID"</sourcexml>, rule for
                            <sourcexml>@remotekey1="REFPTID"</sourcexml> now also applies when
                            <sourcexml>@remotekey1="REFPT"</sourcexml>. That is, the condition is
                        expanded to include value <sourcexml>"REFPT"</sourcexml>; the mapping is
                        unchanged. The value <sourcexml>"REFPT"</sourcexml> is new in Oct 2014
                        redelivery of UK11-DN but the rule applies to any stream where
                            <sourcexml>@remotekey1="REFPT"</sourcexml> may occur. R4.5 Content Issue
                        2003.</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/common_newest/Rosetta_figure-LxAdv-figure.dita">2014-10-24 - figure to figure id-CCCC-10320: Added instructions and example
                        to handle the new XPath <sourcexml>caption/note</sourcexml>. (R4.5 Content
                        Issue List #1993)</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/common_newest/Rosetta_emp-Chof-heading_title-LxAdv-heading_title.dita">2014-10-22 - heading/title/emph to heading/title id-CCCC-10313: Added an
                        example to explicitly show child elements of <sourcexml>emph</sourcexml>
                        being retained. (R4.5 Content Issue List #1998)</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/common_newest/Rosetta_lnlink_service_ATTACHMENT-LxAdv-ref.lnlink.dita">2014-10-15 - lnlink/@service="ATTACHMENT" to ref:lnlink id-CCCC-10396:
                        Rewrote instructions, including the correction of a typographic error, and
                        added an example.</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2014-09-16 - docinfo:assoc-links to doc:related-content id-CCCC-10284:
                        Added a note to create
                            <targetxml>proc:param/@name="attachment-smi"</targetxml> and
                            <targetxml>proc:param/@value</targetxml> as these was there in the
                        snippet but was missing in instruction and also added a note in to simplify
                        in output <targetxml>ref:key-value/@value</targetxml>
                    </xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/common_newest/Rosetta_inlineobject-LxAdv-ref.inlineobject.dita">2014-07-08 - inlineobject to ref:inlineobject id-CCCC-10369: Not a rule
                        change. Clarification added to note regarding suppression of
                            <sourcexml>inlineobject</sourcexml> when
                            <sourcexml>inlineobject/@filename</sourcexml> contains certain
                        values.</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/common_newest/Rosetta_table-LxAdv-table.dita">2014-07-08 - table to table id-CCCC-10475: Updated instruction for added
                        the following rarely occurring attributes <sourcexml>@char</sourcexml>
                        inside the <sourcexml>entry</sourcexml>.</xref>
                </li>
            </ul></section>
        <section><title>Seclaw 7.12_PROD Schema</title><p>2014-06-19</p><ul>
                <li>
                    <xref href="../../../Rosetta/DITA-UK/UK14-Precedents/UK14_Precedents_introduction.dita">2014-06-19 - Introduction id-UK14-30214: Updated schema version to 7.12
                        PROD</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/DITA-UK/UK14-Precedents/UK14_Precedents_note.dita">2014-06-19 - note id-UK14-30219: Added rule to handle
                            <sourcexml>note</sourcexml> occurring as child of
                            <sourcexml>p</sourcexml>. Specific to UK14. Phase-6 Discussion Item
                        101.</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/DITA-UK/UK14-Precedents/UK14_Precedents_note.dita">2014-06-18 - note id-UK14-30219: Added rule to suppress
                            <sourcexml>@id</sourcexml>. Specific to UK14. Phase-6 Discussion Item
                        104.</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/DITA-UK/UK14-Precedents/UK14_Precedents_link-dpsi.dita">2014-06-18 - link with @dpsi id-UK14-30217: Added rule to suppress
                            <sourcexml>link</sourcexml> when <sourcexml>@alt-label="Drafting
                            note"</sourcexml>. Specific to UK14. Phase-6 Discussion Item 103 and
                        associated Item 104.</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/DITA-UK/UK14-Precedents/UK14_Precedents_introduction.dita">2014-06-09 - Introduction id-UK14-30214: Note that the following module has
                        been added to the Metadata section:
                            <sourcexml>docinfo:currencystatement</sourcexml> to
                            <targetxml>doc:docinfo/currencystatement</targetxml> (id-CCCC-10289).
                        Responds to recently delivered data; Phase-6 Discussion Item 102</xref>
                </li>
                <!-- </ul><p>The following are common module changes</p><ul> -->
                <!-- removed, changelog cleanup 4/1/2016 jhm -->
                <li>
                    <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2014-06-18 - docinfo:assoc-links to doc:related-content id-CCCC-10284:
                        Corrected minor typos in <sourcexml>lnlink[@service="QUERYLINK"]</sourcexml>
                        instructions.</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2014-06-13 - docinfo:assoc-links to doc:related-content id-CCCC-10284:
                        Added instructions and an example for converting
                            <sourcexml>lnlink[@service="QUERYLINK"]</sourcexml> to
                            <targetxml>ref:lnlink</targetxml>.</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/common_newest/Rosetta_emp-Chof-heading_title-LxAdv-heading_title.dita">2014-06-04 - heading/title/emph to heading/title id-CCCC-10313: Clarified
                        instructions and added an example to show multiple
                            <sourcexml>emph</sourcexml> elements being handled.</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/common_newest/Rosetta_table-LxAdv-table.dita">2014-06-04 - table to table id-CCCC-10475: For completeness, added
                        instructions for the following rarely occurring attributes of
                            <sourcexml>table/tgroup/colspec</sourcexml>:
                            <sourcexml>@align</sourcexml>, <sourcexml>@char</sourcexml>,
                            <sourcexml>@charoff</sourcexml>, <sourcexml>@colsep</sourcexml>,
                            <sourcexml>@id</sourcexml>, <sourcexml>@rowsep</sourcexml>,
                            <sourcexml>@searchtype</sourcexml>, and
                        <sourcexml>@xml:lang</sourcexml>. This is in response to various minor
                        questions on message boards that have been asked and answered over the past
                        two years. These instructions should not trigger changes to existing
                        conversion programs, as the programs have already been changed in response
                        to previous message board answers. These instructions have been added so
                        this topic is up-to-date with respect to current conversion program behavior
                        for these rarely occuring attributes.</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2014-04-28 - docinfo:assoc-links to doc:related-content id-CCCC-10284:
                        Clarified instructions regarding <sourcexml>link</sourcexml> elements and
                        added an example (#4) illustrating the special
                            <sourcexml>text/link</sourcexml> conversion. No mapping rules where
                        changed or added.</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2014-04-21 - docinfo:assoc-links to doc:related-content id-CCCC-10284:
                        Added an instruction to handle <sourcexml>link</sourcexml> elements. These
                        can potentially occur in any future UK data and will be present in stream
                        UK21fl when those documents become available later in 2014.</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2014-04-03 - docinfo:assoc-links to doc:related-content id-CCCC-10284:
                        Illustrative changes. Examples modified. Mapping for
                            <sourcexml>ci:cite</sourcexml> added to Example 3. Former Examples 4 and
                        5 removed to avoid confusion with special AU-NZ use case described in a
                        separate module. R4.5 Content issue #1125, for AU-NZ, has prompted the
                        changes for this general module.</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2014-03-25 - docinfo:assoc-links to doc:related-content id-CCCC-10284:
                        Added rule and example for
                            <sourcexml>docinfo:assoc-links/docinfo:assoc-links-grp/ci:cite</sourcexml>.
                        R4.5 Content issue #1125</xref>
                </li>
            </ul></section>
        <section><title>Seclaw 7.9_PROD Schema</title><p>2014-03-21</p><ul>
                <li>
                    <xref href="../../DITA-UK/UK14-Precedents/UK14_Precedents_introduction.dita">2014-03-21 - Introduction: Updated schema version to 7.9 PROD</xref>
                </li>
                <li>
                    <xref href="../../DITA-UK/UK14-Precedents/UK14_Precedents_clause.dita">2014-03-21 - clause: New rule. Target xpath is not new. Rule provides
                        special handling for narrative elements (<sourcexml>p</sourcexml> and
                            <sourcexml>table</sourcexml>) occurring as children of
                            <sourcexml>clause[@clause-type]</sourcexml>. R4.5 Content Issue List
                        #1223.</xref>
                </li>
                <!-- </ul><p>The following are common module changes</p><ul> -->
                <!-- removed, changelog cleanup 4/1/2016 jhm -->
                <li>
                    <xref href="../../common_newest/Rosetta_figure-LxAdv-figure.dita">2014-03-20 -
                        figure to figure: Illustrative change. Added example to explicitly show
                        standard conversion of child link to ref:lnlink. Prompted by Phase 6 UK
                        Discussion Item 77. Webteam 252434.</xref>
                </li>
                <li>
                    <xref href="../../common_newest/Rosetta_toc-LxAdv-toc.dita">2014-03-20 - toc to
                        toc: New rule. Added mapping for <sourcexml>entry-pageref</sourcexml> to
                            <targetxml>toc-pageref</targetxml>. Initially for UK12 but will apply
                        for any stream if the use case occurs. Responds to data added in UK12
                        delivery Mar 2014; known to occur in dpsi 02FL and 03VY. Phase 6 UK
                        Discussion Item 79. Webteam 252434.</xref>
                </li>
                <li>
                    <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2014-02-25 - remotelink to ref:crossreference: Updated instruction and
                        created new example (#16) for handling
                            <sourcexml>remotelink[@service="QUERY"]</sourcexml>. New instruction
                        preserves pcdata but suppresses <sourcexml>remotelink</sourcexml> markup.
                        Webstar #250335. Change applies immediately to all Pacific streams, and in
                        the long run to all streams.</xref>
                </li>
                <li>
                    <xref href="../../common_newest/Rosetta_docinfo.doc-heading-LxAdv-dc.title.dita">2014-02-11 - docinfo:doc-heading to dc:title: Updated note when
                            <sourcexml>emph</sourcexml> is child of
                            <sourcexml>docinfo:doc-heading</sourcexml> then suppress
                            <sourcexml>emph</sourcexml> element and retain its content in
                            <targetxml>dc:title</targetxml>, These instructions apply immediately to
                        CA12.</xref>
                </li>
                <li>
                    <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2014-02-03 - remotelink to ref:crossreference: Instruction updated if
                            <sourcexml>remotelink</sourcexml> occurs as multiple, immediate siblings
                        and without intermediary text within <sourcexml>title</sourcexml>. Also
                        added a example for the same scenario. Phase 5 UK discussion-defect tracking
                        issue #161</xref>
                </li>
                <li>
                    <xref href="../../common_newest/Rosetta_text-LxAdv-text.dita">2014-01-31 - text
                        to text: Updated instruction, <targetxml>align</targetxml> will be moved in
                            <targetxml>p</targetxml> in NL conversion. NZ09 commentary discussion
                        board issue for handling <sourcexml>text/@align</sourcexml>
                    </xref>
                </li>
                <li>
                    <xref href="../../common_newest/Rosetta_Elements-LxAdv-Empty_Elements.dita">2014-01-16 - Suppress each empty element unless otherwise stated: Added
                        list of elements to suppress if empty.</xref></li>
            </ul></section>
        <section><title>Seclaw 7.8_PROD Schema</title><p>2014-01-15</p><ul>
                <li>
                    <xref href="../../DITA-UK/UK14-Precedents/UK14_Precedents_note.dita">2014-01-15
                        - note: Added rule to merge multiple adjacent <sourcexml>note</sourcexml> so
                        that output is single <targetxml>note/bodytext</targetxml> containing
                        multiple <targetxml>textitem</targetxml>. Supports presentation requirement
                        for single note icon. Only UK14 immediately affected. R4.5 Content Issue
                        List # 1011.</xref>
                </li>
                <!-- </ul><p>The following are common module changes</p><ul> -->
                <!-- removed, changelog cleanup 4/1/2016 jhm -->
                <li>
                    <xref href="../../common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2013-12-30
                        - ci.cite to lnci.cite: Minor illustrative change. Added "(AU
                        Journals/Newsitem)" to headings for last example to clarify that retention
                        of <sourcexml>@type="cite4thisdoc"</sourcexml> is an exception for that
                        content, as already described in narrative rules.</xref>
                </li>
                <!-- McNally Mar 30 2016: commented-out next item, re deflist. 
                    Because there are now special UK14 rules for deflist. The General Markup modules are removed. 
                    This change log item causes validation error -->
                <!--<li>
                    <xref href="../../common_newest/Rosetta_deflist-LxAdv-deflist.dita">2013-12-20 -
                        deflist to deflist: Added note to place a <sourcexml>footnote</sourcexml> or
                            <sourcexml>fnr</sourcexml> that is a child of
                            <sourcexml>defitem</sourcexml> into one of its children. WebTeam
                        #5158742 - AU04.</xref>
                </li>-->
                <li>
                    <xref href="../../common_newest/Rosetta_endnote-LxAdv-endnote.dita">2013-12-18 -
                        endnote to endnote: Instruction added to convert
                            <sourcexml>remotelink/@refpt</sourcexml> to
                            <targetxml>footnote-ref/@anchoridref</targetxml>. WebTeam #5158742 -
                        AU04. Applies generally to all LBUs and streams.</xref>
                </li>
                <li>
                    <xref href="../../common_newest/Rosetta_docinfo.alt-renditions-LxAdv-doc.alt-renditions.dita">2013-12-17 - docinfo:alt-renditions/docinfo:alt-rendition to
                        doc:alt-renditions/doc:alt-rendition: Added instruction and example for
                            <sourcexml>docinfo:alt-rendition/lnlink</sourcexml>. (Webteam
                        #247307)</xref>
                </li>
                <li>
                    <xref href="../../common_newest/Rosetta_UK_docinfo.custom-metafields-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta.meta.metaitem.dita">2013-11-20 - docinfo:custom-metafields to
                        doc:legacy-metadata[@metadatasource="lbu-meta"]/meta/metaitem: Added
                        instruction to handle
                            <sourcexml>docinfo:custom-metafields/docinfo:custom-metafield/@name="jurisdiction"</sourcexml>
                        is "European" Webteam # 239816 </xref>
                </li>
            </ul></section>
        <section><title>Seclaw 7.8_PROD Schema</title><p>2013-11-19</p><ul>
                <li>
                    <xref href="../../DITA-UK/UK14-Precedents/UK14_Precedents_frm.prompt.dita">2013-11-19 - frm:prompt: Added exceptional rule to suppress
                            <sourcexml>frm:prompt</sourcexml> tag within
                            <sourcexml>ci:content</sourcexml>. Very rare. LBU confirmed as data
                        error. Affects UK14 only. Responds to Phase 6 UK Discussion Board Item
                        64.</xref>
                </li>
            </ul></section>
        <section><title>Seclaw 7.8_PROD Schema</title><p>2013-11-13</p><ul>
                <li>
                    <xref href="../../DITA-UK/UK14-Precedents/UK14_Precedents_introduction.dita">2013-11-12 - Introduction: Updated schema version to 7.8 PROD</xref>
                </li>
                <li>
                    <xref href="../../DITA-UK/UK14-Precedents/UK14_Precedents_frm.prompt.dita">2013-11-12 - frm:prompt: Not a rule change. Removed Note about pending
                        Schema Change to handle <sourcexml>frm:prompt</sourcexml> without
                            <sourcexml>emph</sourcexml> wrapper; first occurring in Oct 2013
                        redelivery (Webteam 239323). Schema now allows
                            <targetxml>form:prompt</targetxml> as direct child of
                            <targetxml>text</targetxml>, <targetxml>defterm</targetxml>,
                            <targetxml>title</targetxml>, and <targetxml>subtitle</targetxml>. Only
                        UK14 immediately affected.</xref>
                </li>
                <li>
                    <xref href="../../DITA-UK/UK14-Precedents/UK14_Precedents_l-li.dita">2013-11-12
                        - l/li: Added special rule to transform <sourcexml>lilabel</sourcexml>
                        content "disc" and "line" to unicode code for bullet and en-dash. Required
                        for Presentation. Responds to LBU request. Limited to UK14. Webteam
                        245501.</xref>
                </li>
                <li>
                    <xref href="../../DITA-UK/UK14-Precedents/UK14_Precedents_note.dita">2013-11-11
                        - note: Illustrative. Ancillary to this section. Corrected example to show
                            <sourcexml>clause[@id]</sourcexml> mapped to
                            <targetxml>ref:anchor[@id]</targetxml>.</xref>
                </li>
                <li>
                    <xref href="../../DITA-UK/UK14-Precedents/UK14_Precedents_p-text.dita">2013-11-11 - p/text: Illustrative. Ancillary to this section. Corrected
                        example to show <sourcexml>clause[@id]</sourcexml> mapped to
                            <targetxml>ref:anchor[@id]</targetxml>.</xref>
                </li>
                <li>
                    <xref href="../../DITA-UK/UK14-Precedents/UK14_Precedents_l-li.dita">2013-11-11
                        - l/li: Illustrative. Ancillary to this section. Corrected example to show
                            <sourcexml>clause[@id]</sourcexml> mapped to
                            <targetxml>ref:anchor[@id]</targetxml>.</xref>
                </li>
                <li>
                    <xref href="../../DITA-UK/UK14-Precedents/UK14_Precedents_person-bio.dita">2013-11-11 - person/bio: Not a rule change. Illustrative. Corrected an
                        error in the example. Previously showed <targetxml>caption</targetxml> with
                        pcdata. Now corrected to <targetxml>caption/p/text</targetxml>. Responds to
                        Phase 6 UK discussion board item 61.</xref>
                </li>
                <!-- McNally Mar 30 2016: commented-out next item. The referenced module is removed from ditamap.  
                    This change log item causes validation error -->
                <!--<li>
                    <xref
                        href="../../common_newest/Rosetta_glp.note-Chof-li-LxAdv-listitem-note.dita"
                        >2013-11-07 - l/glp:note to list/note: Fixed title to correctly indicate
                        mapping described. Not a rule change.</xref>
                </li>-->
            </ul></section>
        <section><title>Seclaw 7.6_PROD Schema</title><p>2013-10-31</p><ul>
                <li>
                    <xref href="../../DITA-UK/UK14-Precedents/UK14_Precedents_introduction.dita">2013-10-31 - Introduction: Updated schema version to 7.6 PROD</xref>
                </li>
                <li>
                    <xref href="../../DITA-UK/UK14-Precedents/UK14_Precedents_frm.div.dita">2013-10-30 - frm:divs and frm:div: Illustrative change. Fixed typos in
                        target example, correcting p/text to
                        <targetxml>form:p/form:text</targetxml>.</xref>
                </li>
                <li>
                    <xref href="../../DITA-UK/UK14-Precedents/UK14_Precedents_frm.prompt.dita">2013-10-30 - frm:prompt: Not a rule change. Added Note that Schema Change
                        is in-process to handle <sourcexml>frm:prompt</sourcexml> without
                            <sourcexml>emph</sourcexml> wrapper; first occurring in Oct 2013
                        redelivery (Webteam 239323). Also added an example to illustrate
                            <targetxml>form:prompt</targetxml> within
                            <targetxml>form:text</targetxml>.</xref>
                </li>
                <li>
                    <xref href="../../DITA-UK/UK14-Precedents/UK14_Precedents_clause.dita">2013-10-30 - clause: Illustrative change. Fixed typos in target example,
                        correcting p/text to <targetxml>form:p/form:text</targetxml>.</xref>
                </li>
                <li>
                    <xref href="../../DITA-UK/UK14-Precedents/UK14_Precedents_p-text.dita">2013-10-30 - p/text: Added special rule for
                            <sourcexml>p[@class="cover-date"]</sourcexml>. The attribute is new in
                        Oct 2013 redelivery. A <targetxml>form:clause</targetxml> wrapper will be
                        generated but this is not a new target xpath. Webteam 239323.</xref>
                </li>
                <li>
                    <xref href="../../DITA-UK/UK14-Precedents/UK14_Precedents_person-bio.dita">2013-10-30 - person/bio: New section.
                            <sourcexml>person/bio/figure</sourcexml> is new in Oct 2013 redelivery.
                        This section describes rules for <sourcexml>person/bio</sourcexml>. Also
                        added common rules for <sourcexml>figure</sourcexml> in the General Markup
                        section. Webteam 239323.</xref>
                </li>
                <!-- </ul><p>The following are common module changes</p><ul> -->
                <!-- removed, changelog cleanup 4/1/2016 jhm -->
                <li>
                    <xref href="../../common_newest/Rosetta_figure-LxAdv-figure.dita">2013-10-23 -
                        figure to figure: Added instruction for handling figure/p/text/inlineobject
                        Webteam # 239816</xref>
                </li>
                <li>
                    <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-10-23 - remotelink to ref:crossreference: Added Example when
                            <sourcexml>remotelink</sourcexml> having child
                            <sourcexml>emph</sourcexml>. Webteam # 239816</xref>
                </li>
                <li>
                    <xref href="../../common_newest/Rosetta_edpnum-LxAdv-desig.dita">2013-10-22 -
                        edpnum to desig: Not a rule change. Modified 2nd example for clarity.
                        Removed <sourcexml>refpt</sourcexml> from source markup. Not pertinent to
                            <sourcexml>edpnum</sourcexml> rules. Separate rules for
                            <sourcexml>refpt</sourcexml> provide details. Responds to UK LBU
                        query.</xref>
                </li>
                <li>
                    <xref href="../../common_newest/Rosetta_Elements-LxAdv-Empty_Elements.dita">2013-10-14 - Suppress each empty element unless otherwise stated: Changed
                        antecedent to singular to match instructions.</xref>
                </li>
                <!-- McNally Mar 30 2016: commented-out next item, re deflist. 
                    Because there are now special UK14 rules for deflist. The General Markup modules are removed. 
                    This change log item causes validation error -->
                <!--<li>
                    <xref href="../../common_newest/Rosetta_deflist-LxAdv-deflist.dita">2013-10-14 -
                        deflist to deflist: Added new rule to create a blank defitem/defdesc element
                        after the defterm element. WebTeam # 237242.</xref>
                </li>-->
                <li>
                    <xref href="../../common_newest/Rosetta_refpt-Chof-p_text-LxAdv-p_ref.anchor.dita">2013-10-11 - refpt child of p/text to p/ref:anchor: Added a note and update
                        the target examples when refpt comes without attribute
                            <sourcexml>[@type="ext"]</sourcexml> and
                            <sourcexml>[@type="local"]</sourcexml> in source documents.</xref>
                </li>
                <li>
                    <xref href="../../common_newest/Rosetta_refpt-Chof-p_text_emph-LxAdv-p_ref.anchor.dita">2013-10-11 - refpt child of p/text/emph to p/ref:anchor: Added a note and
                        update the target examples when refpt comes without attribute
                            <sourcexml>[@type="ext"]</sourcexml> and
                            <sourcexml>[@type="local"]</sourcexml> in source documents.</xref>
                </li>
                <li>
                    <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-10-03 - remotelink to ref:crossreference: Added use case where
                        remotelink contains @href which is a URL but does not contain
                        @hrefclass='http'.</xref>
                </li>
                <li>
                    <xref href="../../common_newest/Rosetta_link-LxAdv-ref.lnlink.dita">2013-09-24 -
                        link to ref:lnlink/@service="ATTACHMENT": Not a rule change. Modified
                        examples to illustrate when <sourcexml>@status</sourcexml> suppressed and
                        when retained.</xref>
                </li>
                <li>
                    <xref href="../../common_newest/Rosetta_desiglabel-Chof-desig-LxAdv-desig.dita">2013-09-19 - desig/desiglabel to desig: Added rules to insert space between
                        label and number when none present in source. Rule required for UK content.
                        Immediately known to occur in UK06, UK07, and UK12. R4.5 Post Iterative
                        Testing Issue 431. WebTeam # 236033.</xref>
                </li>
                <li>
                    <xref href="../../common_newest/Rosetta_table-LxAdv-table.dita">2013-09-16 -
                        table to table: Removed an obsolete note regarding visual styling of
                        tables.</xref>
                </li>
                <li>
                    <xref href="../../common_newest/Rosetta_table-LxAdv-table.dita">2013-09-12 -
                        table to table: WebTeam #s 235116, 235130, 235126: Added instructions for
                        deleting extraneous instances of @morerows, @colsep and @rowsep. These
                        instructions apply immediately to all UK streams and also to AU18.</xref>
                </li>
                <li>
                    <xref href="../../common_newest/Rosetta_desiglabel-Chof-desig-LxAdv-desig.dita">2013-08-23 - desig/desiglabel to desig: Removed
                            <targetxml>@value</targetxml> from target example element
                            <targetxml>desig</targetxml>, as it was decided, that if source element
                        doesn't contain <sourcexml>@value</sourcexml> then target element
                            <targetxml>desig</targetxml> will not contain
                            <targetxml>@value</targetxml>.</xref>
                </li>
                <li>
                    <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-08-22 - remotelink to ref:crossreference: Not a rule change. Modified
                        Sample #10 on <sourcexml>ci:cite/ci:content/remotelink</sourcexml>. Removed
                        target attribute <targetxml>lnci:cite[@citeref]</targetxml> because value
                        captured in
                            <targetxml>ref:crossreference/ref:locator[@anchoridref]</targetxml>.</xref>
                </li>
                <li>
                    <xref href="../../common_newest/Rosetta_link-LxAdv-ref.lnlink.dita">2013-08-21 -
                        link to ref:lnlink/@service="ATTACHMENT": Added instruction for when to
                        suppress <sourcexml>@status</sourcexml>.</xref>
                </li>
                <li>
                    <xref href="../../common_newest/Rosetta_docinfo.lbu-meta-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta-scheme.dita">2013-08-12 - docinfo:lbu-meta to
                        doc:legacy-metadata[@metadatasource="lbu-meta"]: We removed the
                        docinfo:lbu-meta "include" list so now there is only a "drop" list. Anything
                        not on the "drop" list should be passed through. Webteam 230557.</xref>
                </li>
                <li>
                    <xref href="../../common_newest/Rosetta_remotelink-self-inter-document-link-LxAdv-intra-document-link.dita">2013-08-12 - remotelink (self inter-document link) to ref:lnlink
                        (intra-document link): Changed module heading from ref:crossreference to
                        ref:lnlink. NO instructions are changed. WebTeam # 230229. Affects all
                        streams.</xref>
                </li>
                <li>
                    <xref href="../../common_newest/Rosetta_docinfo-LxAdv-doc.metadata_doc.docinfo.dita">2013-08-09 - docinfo to doc:metadata/doc:docinfo: Added instruction for
                        creating <targetxml>dc:date[@lnmeta:datetype="conversion-date"]</targetxml>.
                        Previously, "conversion-date" was created only if "load-date" was not
                        present. Going forward, conversion should always create "conversion-date".
                        This is not a retroactive change. It should be applied only to streams
                        developed after Aug. 9 2013.</xref>
                </li>
                <li>
                    <xref href="../../common_newest/Rosetta_XML_Character_Entities-LxAdv-Unicode.dita">2013-08-08 - XML Character Entities to Unicode code points: This change
                        does not represent a change to conversion but rather documentation of the
                        existing behavior.</xref>
                </li>
                <li>
                    <xref href="../../common_newest/Rosetta_date-Chof-docinfo.load-date-LxAdv-dc.date_lnmeta.datetype_load-date-scheme.dita">2013-08-07 - docinfo:load-date/date to
                        dc:date[@lnmeta:datetype="load-date"]: Removed instructions for creating
                            <targetxml>dc:date[@lnmeta:datetype="conversion-date"]</targetxml>.</xref>
                </li>
                <li>
                    <xref href="../../common_newest/Rosetta_remotelink-self-inter-document-link-LxAdv-intra-document-link.dita">2013-08-07 - remotelink (self inter-document link) to ref:lnlink
                        (intra-document link): Changed target to <targetxml>ref:lnlink</targetxml>;
                        formerly <targetxml>ref:crossreference</targetxml>. Changed because the only
                        supported markup for intradoc linking is <targetxml>ref:lnlink</targetxml>,
                        as per Bency Thomas. WebTeam # 230229. Affects all streams.</xref>
                </li>
                <li>
                    <xref href="../../common_newest/Rosetta_docinfo.lbu-meta-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta-scheme.dita">2013-08-02 - docinfo:lbu-meta to
                        doc:legacy-metadata[@metadatasource="lbu-meta"]: Added
                            <sourcexml>@name="selection_criteria_variant"</sourcexml> to the list of
                        values in docinfo:metaitem/@name that should be retained. And added a
                        example.</xref>
                </li>
                <li>
                    <xref href="../../common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2013-07-19 - docinfo:assoc-links to doc:related-content: Added rule mapping
                        attribute <sourcexml>remotelink[@service="DOC-ID"]</sourcexml> to
                            <targetxml>ref:lnlink[@service="DOCUMENT"]</targetxml>
                    </xref>
                </li>
                <li>
                    <xref href="../../common_newest/Rosetta_docinfo-LxAdv-doc.metadata_doc.docinfo.dita">2013-07-18 - docinfo to doc:metadata/doc:docinfo: Added
                            <sourcexml>@excludefromalerts</sourcexml> as one of the
                            <sourcexml>docinfo</sourcexml> attributes to carry through</xref>
                </li>
                <li>
                    <xref href="../../common_newest/Rosetta_docinfo.doc-lang-and-doc-country-LxAdv-ROOT_xml.lang.dita">2013-07-16 - docinfo:doc-lang and docinfo:doc-country to @xml:lang and
                        @xml:ID: Instruction narrative edited for language; no changes to mappings,
                        no impact to stylesheets.</xref>
                </li>
                <li>
                    <xref href="../../common_newest/Rosetta_figure-LxAdv-figure.dita">2013-07-15 -
                        figure to figure: Added instructions for handling figure/caption and an
                        example demonstrating the mapping.</xref>
                </li>
            </ul></section>
        <section><title>Seclaw 7.0_PROD Schema</title><p>2013-06-19</p><ul>
                <li>
                    <xref href="../../DITA-UK/UK14-Precedents/UK14_Precedents_clause.dita">2013-06-19 - clause: Changed target for <sourcexml>clause[@id]</sourcexml>.
                        Attribute now maps to
                        <targetxml>form:clause/ref:anchor[@id]</targetxml>.</xref>
                </li>
                <li>
                    <xref href="../../DITA-UK/UK14-Precedents/UK14_Precedents_link-dpsi.dita">2013-06-19 - link with @dpsi: Created new section with special rule for
                            <sourcexml>link</sourcexml> with <sourcexml>@dpsi</sourcexml>
                    </xref>
                </li>
            </ul></section>
        <section><title>Seclaw 7.0_PROD Schema</title><p>2013-06-12</p><ul>
                <li>
                    <xref href="../../DITA-UK/UK14-Precedents/UK14_Precedents_introduction.dita">2013-06-12 - Introduction: Updated schema version to 7.0 PROD</xref>
                </li>
                <li>
                    <xref href="../../DITA-UK/UK14-Precedents/UK14_Precedents_clause.dita">2013-06-12 - clause: Removed mapping to
                            <targetxml>form:clausegrp</targetxml>. All <sourcexml>clause</sourcexml>
                        now map to <targetxml>form:clause</targetxml>.</xref>
                </li>
                <li>
                    <xref href="../../DITA-UK/UK14-Precedents/UK14_Precedents_frm.div.dita">2013-06-11 - frm:divs and frm:div: Seclaw schema now allows attribute
                            <targetxml>form:div[@divtype]</targetxml>. Removed reference to pending
                        CR.</xref>
                </li>
                <li>
                    <xref href="../../DITA-UK/UK14-Precedents/UK14_Precedents_comm.info-contrib-org.dita">2013-05-28 - comm:info, contrib, and org: Added rule to map
                            <sourcexml>@contribtype</sourcexml> to
                        <targetxml>@pubfmtype</targetxml>.</xref>
                </li>
                <!-- </ul><p>The following are common module changes</p><ul> -->
                <!-- removed, changelog cleanup 4/1/2016 jhm -->
                <li>
                    <xref href="../../common_newest/Rosetta_docinfo.lbu-meta-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta-scheme.dita">2013-05-31 - docinfo:lbu-meta to
                        doc:legacy-metadata[@metadatasource="lbu-meta"]: Added "document-type" to
                        the list of values in docinfo:metaitem/@name that should be retained.</xref>
                </li>
                <li>
                    <xref href="../../common_newest/Rosetta_inlineobject-LxAdv-ref.inlineobject.dita">2013-05-24 - inlineobject to ref:inlineobject: Updated instruction for
                        handling of inlineobject when smi is present and some of the verbiage is
                        changed.</xref>
                </li>
                <li>
                    <xref href="../../common_newest/Rosetta_inlineobject-LxAdv-figure_ref.inlineobject.dita">2013-05-24 - inlineobject to figure/ref:inlineobject: Updated target
                        example, "when smi is present".</xref>
                </li>
                <li>
                    <xref href="../../common_newest/Rosetta_link-LxAdv-ref.lnlink.dita">2013-05-24 -
                        link to ref:lnlink/@service="ATTACHMENT": Updated instruction for handling
                        of link when smi is present and some of the verbiage is changed.</xref>
                </li>
                <!-- McNally Mar 30 2016: commented-out next item. The referenced module is removed from ditamap.  
                    This change log item causes validation error -->
                <!--<li>
                    <xref
                        href="../../common_newest/Rosetta_CAN_title-Chof-leg.heading_to-LexisAdvance_heading_title.dita"
                        >2013-05-22 - leg:heading/title to heading/title: Suppressed the
                        "[@align="center"]" attribute in target mapping and this rule will be
                        applicable for CA05- Acts &amp; Bills, CA06-Regs and CA07-Court
                        Rules.</xref>
                </li>-->
                <li>
                    <xref href="../../common_newest/Rosetta_docinfo-LxAdv-doc.metadata_doc.docinfo.dita">2013-05-16 - docinfo to doc:metadata/doc:docinfo: Fixed typo updating
                        urn:contentitem to urn:contentItem</xref>
                </li>
            </ul></section>
        <section>
            <title>Seclaw 6.3_PROD Schema</title><p>2013-05-13</p>
            <ul>
                <li>
                    <xref href="../../DITA-UK/UK14-Precedents/UK14_Precedents_introduction.dita">2013-05-13 - Introduction: Updated schema version to 6.3 PROD</xref>
                </li>
                <!-- </ul><p>The following are common module changes</p><ul> -->
                <!-- removed, changelog cleanup 4/1/2016 jhm -->
                <!-- McNally Mar 30 2016: commented-out next 2 items. The referenced modules are removed from ditamap.  
                    These change log items cause validation error -->
                <!--<li>
                    <xref
                        href="../../common_newest/Rosetta_h-Chof-figure-glp.note-LxAdv-figure-note-bodytext-h.dita"
                        >2013-05-08 - (Commentary &amp; Regulatroy) figure/glp:note/h to
                        figure/note/bodytext/h: Extended the list of allowable values for image
                        handling.</xref>
                </li>-->
                <li>
                    <xref href="../../common_newest/Rosetta_inlineobject-LxAdv-ref.inlineobject.dita">2013-05-08 - inlineobject to ref:inlineobject: Extended the list of
                        allowable values for image handling.</xref>
                </li>
                <!-- McNally Mar 30 2016. commented-out next item. referenced module was duplicate, now removed from ditamap. 
                    The change log item causes validation error -->
                <!--<li>
                    <xref
                        href="../../common_newest/Rosetta_inlineobject-Chof-remotelink-LxAdv-ref.crossreference_ref.content_ref.inlineobject.dita"
                        >2013-05-08 - inlineobject Child of remotelink to ref:inlineobject: Extended
                        the list of allowable values for image handling.</xref>
                </li>-->
                <li>
                    <xref href="../../common_newest/Rosetta_inlineobject-LxAdv-figure_ref.inlineobject.dita">2013-05-08 - inlineobject to figure/ref:inlineobject: Extended the list of
                        allowable values for image handling.</xref>
                </li>
                <li>
                    <xref href="../../common_newest/Rosetta_inlineobject-Chof-h-LxAdv-figure_ref.inlineobject.dita">2013-05-08 - h/inlineobject to figure/ref:inlineobject: Extended the list
                        of allowable values for image handling.</xref>
                </li>
                <li>
                    <xref href="../../common_newest/Rosetta_inlineobject-Chof-emph-LxAdv-figure_ref.inlinobject.dita">2013-05-08 - emph/inlineobject to figure/ref:inlineobject: Extended the
                        list of allowable values for image handling.</xref>
                </li>
                <li>
                    <xref href="../../common_newest/Rosetta_inlineobject-Chof-sub-LxAdv-figure_ref.inlineobject.dita">2013-05-08 - sub/inlineobject to figure/ref:inlineobject: Extended the list
                        of allowable values for image handling.</xref>
                </li>
                <!-- McNally Mar 30 2016: commented-out next 3 items. The referenced modules are removed from ditamap.  
                    These change log items cause validation error -->
                <!--<li>
                    <xref
                        href="../../common_newest/Rosetta_inlineobject-Chof-glp.note-LxAdv-SUPPRESS.dita"
                        >2013-05-08 - glp:note/inlineobject to: Extended the list of allowable
                        values for image handling.</xref>
                </li>-->
                <!--<li>
                    <xref
                        href="../../common_newest/Rosetta_inlineobject-Chof-dispformula-LxAdv-formula_ref.inlineobject.dita"
                        >2013-05-08 - dispformula/inlineobject to formula/ref:inlineobject: Extended
                        the list of allowable values for image handling.</xref>
                </li>-->
                <!--<li>
                    <xref
                        href="../../common_newest/Rosetta_inlineobject-Chof-p_blockquote-LxAdv-p_figure_ref.inlineobject.dita"
                        >2013-05-08 - p/blockquote/inlineobject to p/figure/ref:inlineobject:
                        Extended the list of allowable values for image handling.</xref>
                </li>-->
                <li>
                    <xref href="../../common_newest/Rosetta_inlineobject-Chof-bodytext-LxAdv-bodytext_p_text_figure_ref.inlineobject.dita">2013-05-08 - bodytext/inlineobject to
                        bodytext/p/text/figure/ref:inlineobject: Extended the list of allowable
                        values for image handling.</xref>
                </li>
                <li>
                    <xref href="../../common_newest/Rosetta_NZ-Newsitem_title_ci.cite_nl-LxAdv-title_lnci-cite.dita">2013-05-08 - title/ci:cite/nl to title/lnci:cite: Extended the list of
                        allowable values for image handling.</xref>
                </li>
                <li>
                    <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-05-08 - remotelink to ref:crossreference: Extended the list of
                        allowable values for image handling.</xref>
                </li>
                <li>
                    <xref href="../../common_newest/Rosetta_inlineobject-LxAdv-ref.inlineobject.dita">2013-05-02 - inlineobject to ref:inlineobject: Some of the verbiage is
                        changed and updated target example to if the SMI is present then a
                            <targetxml>ref:inliineobject/@status</targetxml> attribute is set to
                        “valid”.</xref>
                </li>
                <li>
                    <xref href="../../common_newest/Rosetta_inlineobject-LxAdv-figure_ref.inlineobject.dita">2013-05-02 - inlineobject to figure/ref:inlineobject: Updated target
                        example to if the SMI is present then a
                            <targetxml>ref:inliineobject/@status</targetxml> attribute is set to
                        “valid”.</xref>
                </li>
                <li>
                    <xref href="../../common_newest/Rosetta_link-LxAdv-ref.lnlink.dita">2013-05-02 -
                        link to ref:lnlink/@service="ATTACHMENT": Some of the verbiage is changed
                        and updated target example to if the SMI is present then a
                            <targetxml>ref:lnlink/@status</targetxml> attribute is set to
                        “valid”.</xref>
                </li>
                <li>
                    <xref href="../../common_newest/Rosetta_docinfo.alt-renditions-LxAdv-doc.alt-renditions.dita">2013-05-01 - docinfo:alt-renditions/docinfo:alt-rendition to
                        doc:alt-renditions/doc:alt-rendition: Updated instructions and target
                        example per latest Apollo markup.</xref>
                </li>
                <li>
                    <xref href="../../common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2013-05-01
                        - ci.cite to lnci.cite: Removed special rule for
                            <sourcexml>ci:cite/ci:content/remotelink</sourcexml> which required
                        suppression of <sourcexml>ci:cite/ci:content</sourcexml> tags. The elements
                        are now retained and convert according to common rules.</xref>
                </li>
                <!-- McNally Mar 30 2016: commented-out next item. The referenced module is removed from ditamap.  
                    This change log item causes validation error -->
                <!--<li>
                    <xref
                        href="../../common_newest/Rosetta_h-Chof-figure-glp.note-LxAdv-figure-note-bodytext-h.dita"
                        >2013-05-01 - (Commentary &amp; Regulatroy) figure/glp:note/h to
                        figure/note/bodytext/h: Removed instructions for section "Pre-Release 4.0"
                        because according to latest Apollo markup, section "Release 4.0 and after"
                        and section "Pre-Release 4.0" now have similar conversion markup.</xref>
                </li>-->
                <li>
                    <xref href="../../common_newest/Rosetta_inlineobject-LxAdv-ref.inlineobject.dita">2013-05-01 - inlineobject to ref:inlineobject: Removed instructions for
                        section "Pre-Release 4.0" because according to latest Apollo markup, section
                        "Release 4.0 and after" and section "Pre-Release 4.0" now have similar
                        conversion markup.</xref>
                </li>
                <!-- McNally Mar 30 2016. commented-out next item. referenced module was duplicate, now removed from ditamap. 
                    The change log item causes validation error -->
                <!--<li>
                    <xref
                        href="../../common_newest/Rosetta_inlineobject-Chof-remotelink-LxAdv-ref.crossreference_ref.content_ref.inlineobject.dita"
                        >2013-05-01 - inlineobject Child of remotelink to ref:inlineobject: Removed
                        instructions for section "Pre-Release 4.0" because according to latest
                        Apollo markup, section "Release 4.0 and after" and section "Pre-Release 4.0"
                        now have similar conversion markup.</xref>
                </li>-->
                <li>
                    <xref href="../../common_newest/Rosetta_inlineobject-LxAdv-figure_ref.inlineobject.dita">2013-05-01 - inlineobject to figure/ref:inlineobject: Removed instructions
                        for section "Pre-Release 4.0" because according to latest Apollo markup,
                        section "Release 4.0 and after" and section "Pre-Release 4.0" now have
                        similar conversion markup.</xref>
                </li>
                <li>
                    <xref href="../../common_newest/Rosetta_inlineobject-Chof-h-LxAdv-figure_ref.inlineobject.dita">2013-05-01 - h/inlineobject to figure/ref:inlineobject: Removed
                        instructions for section "Pre-Release 4.0" because according to latest
                        Apollo markup, section "Release 4.0 and after" and section "Pre-Release 4.0"
                        now have similar conversion markup.</xref>
                </li>
                <li>
                    <xref href="../../common_newest/Rosetta_inlineobject-Chof-emph-LxAdv-figure_ref.inlinobject.dita">2013-05-01 - emph/inlineobject to figure/ref:inlineobject: Removed
                        instructions for section "Pre-Release 4.0" because according to latest
                        Apollo markup, section "Release 4.0 and after" and section "Pre-Release 4.0"
                        now have similar conversion markup.</xref>
                </li>
                <li>
                    <xref href="../../common_newest/Rosetta_inlineobject-Chof-sub-LxAdv-figure_ref.inlineobject.dita">2013-05-01 - sub/inlineobject to figure/ref:inlineobject: Removed
                        instructions for section "Pre-Release 4.0" because according to latest
                        Apollo markup, section "Release 4.0 and after" and section "Pre-Release 4.0"
                        now have similar conversion markup.</xref>
                </li>
                <!-- McNally Mar 30 2016: commented-out next 3 item. The referenced module removed from ditamap.  
                    The change log item causes validation error -->
                <!--<li>
                    <xref
                        href="../../common_newest/Rosetta_inlineobject-Chof-glp.note-LxAdv-SUPPRESS.dita"
                        >2013-05-01 - glp:note/inlineobject to: Removed instructions for section
                        "Pre-Release 4.0" because according to latest Apollo markup, section
                        "Release 4.0 and after" and section "Pre-Release 4.0" now have similar
                        conversion markup.</xref>
                </li>-->
                <!--<li>
                    <xref
                        href="../../common_newest/Rosetta_inlineobject-Chof-dispformula-LxAdv-formula_ref.inlineobject.dita"
                        >2013-05-01 - dispformula/inlineobject to formula/ref:inlineobject: Removed
                        instructions for section "Pre-Release 4.0" because according to latest
                        Apollo markup, section "Release 4.0 and after" and section "Pre-Release 4.0"
                        now have similar conversion markup.</xref>
                </li>-->
                <!--<li>
                    <xref
                        href="../../common_newest/Rosetta_inlineobject-Chof-p_blockquote-LxAdv-p_figure_ref.inlineobject.dita"
                        >2013-05-01 - p/blockquote/inlineobject to p/figure/ref:inlineobject:
                        Removed instructions for section "Pre-Release 4.0" because according to
                        latest Apollo markup, section "Release 4.0 and after" and section
                        "Pre-Release 4.0" now have similar conversion markup.</xref>
                </li>-->
                <li>
                    <xref href="../../common_newest/Rosetta_inlineobject-Chof-bodytext-LxAdv-bodytext_p_text_figure_ref.inlineobject.dita">2013-05-01 - bodytext/inlineobject to
                        bodytext/p/text/figure/ref:inlineobject: Removed instructions for section
                        "Pre-Release 4.0" because according to latest Apollo markup, section
                        "Release 4.0 and after" and section "Pre-Release 4.0" now have similar
                        conversion markup.</xref>
                </li>
                <li>
                    <xref href="../../common_newest/Rosetta_link-LxAdv-ref.lnlink.dita">2013-05-01 -
                        link to ref:lnlink/@service="ATTACHMENT": Updated instructions and target
                        example per latest Apollo markup.</xref>
                </li>
                <li>
                    <xref href="../../common_newest/Rosetta_bodytext-link-LxAdv-seclaw.bodytext-p-text-ref.lnlink.dita">2013-05-01 - bodytext/link to seclaw:bodytext/p/text/ref:lnlink: Updated
                        instructions and target example per latest Apollo markup.</xref>
                </li>
                <!-- McNally Mar 30 2016: commented-out next 2 items. The referenced modules are removed from ditamap.  
                    These change log items cause validation error -->
                <!--<li>
                    <xref
                        href="../../common_newest/Rosetta_NZ-Newsitem_title_ci.cite_nl-LxAdv-title_lnci-cite.dita"
                        >2013-05-01 - title/ci:cite/nl to title/lnci:cite: Removed instructions for
                        section "Pre-Release 4.0" because according to latest Apollo markup, section
                        "Release 4.0 and after" and section "Pre-Release 4.0" now have similar
                        conversion markup.</xref>
                </li>-->
                <!--<li>
                    <xref href="../../common_newest/Rosetta_leg.histnote-Chof-p-LxAdv-note.dita"
                        >2013-05-01 - p/leg:histnote to note[@notetype="historical"]: Updated
                        instructions and target example per latest Apollo markup.</xref>
                </li>-->
                <li>
                    <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-05-01 - remotelink to ref:crossreference: Removed instructions for
                        section "Pre-Release 4.0" because according to latest Apollo markup, section
                        "Release 4.0 and after" and section "Pre-Release 4.0" now have similar
                        conversion markup.</xref>
                </li>
                <li>
                    <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-05-01 - remotelink to ref:crossreference: "Instruction added for
                            <sourcexml>ci:cite/ci:content/remotelink</sourcexml> specifying that the
                            <sourcexml>remotelink</sourcexml> is to be converted to
                            <targetxml>ref:crossreference</targetxml> but the containing elements'
                        start-tags and end-tags (<sourcexml>ci:cite</sourcexml> and
                            <sourcexml>ci:content</sourcexml>) are dropped", has been removed from
                        the instructions and now <sourcexml>remotelink</sourcexml> will be converted
                        to the resulting mapping where it is. For more details you can see example:
                        Source XML 10: <sourcexml>remotelink</sourcexml> as a child of
                            <sourcexml>ci:cite/ci:content</sourcexml>
                    </xref>
                </li>
                <!-- McNally Mar 30 2016: commented-out next item. The referenced module is removed from ditamap.  
                    This change log item causes validation error -->
                <!--<li>
                    <xref
                        href="../../common_newest/Rosetta_h-Chof-figure-glp.note-LxAdv-figure-note-bodytext-h.dita"
                        >2013-04-30 - (Commentary &amp; Regulatroy) figure/glp:note/h to
                        figure/note/bodytext/h: Updated target sample according to latest Apollo
                        markup.</xref>
                </li>-->
                <li>
                    <xref href="../../common_newest/Rosetta_inlineobject-LxAdv-ref.inlineobject.dita">2013-04-30 - inlineobject to ref:inlineobject: Updated target sample
                        according to latest Apollo markup.</xref>
                </li>
                <!-- McNally Mar 30 2016. commented-out next item. referenced module was duplicate, now removed from ditamap. 
                    The change log item causes validation error -->
                <!--<li>
                    <xref
                        href="../../common_newest/Rosetta_inlineobject-Chof-remotelink-LxAdv-ref.crossreference_ref.content_ref.inlineobject.dita"
                        >2013-04-30 - inlineobject Child of remotelink to ref:inlineobject: Updated
                        target sample according to latest Apollo markup.</xref>
                </li>-->
                <li>
                    <xref href="../../common_newest/Rosetta_inlineobject-LxAdv-figure_ref.inlineobject.dita">2013-04-30 - inlineobject to figure/ref:inlineobject: Updated target sample
                        according to latest Apollo markup.</xref>
                </li>
                <li>
                    <xref href="../../common_newest/Rosetta_inlineobject-Chof-h-LxAdv-figure_ref.inlineobject.dita">2013-04-30 - h/inlineobject to figure/ref:inlineobject: Updated target
                        sample according to latest Apollo markup.</xref>
                </li>
                <li>
                    <xref href="../../common_newest/Rosetta_inlineobject-Chof-emph-LxAdv-figure_ref.inlinobject.dita">2013-04-30 - emph/inlineobject to figure/ref:inlineobject: Updated target
                        sample according to latest Apollo markup.</xref>
                </li>
                <li>
                    <xref href="../../common_newest/Rosetta_inlineobject-Chof-sub-LxAdv-figure_ref.inlineobject.dita">2013-04-30 - sub/inlineobject to figure/ref:inlineobject: Updated target
                        sample according to latest Apollo markup.</xref>
                </li>
                <!-- McNally Mar 30 2016: commented-out next 3 item. The referenced module removed from ditamap.  
                    The change log item causes validation error -->
                <!--<li>
                    <xref
                        href="../../common_newest/Rosetta_inlineobject-Chof-glp.note-LxAdv-SUPPRESS.dita"
                        >2013-04-30 - glp:note/inlineobject to: Updated target sample according to
                        latest Apollo markup.</xref>
                </li>-->
                <!--<li>
                    <xref
                        href="../../common_newest/Rosetta_inlineobject-Chof-dispformula-LxAdv-formula_ref.inlineobject.dita"
                        >2013-04-30 - dispformula/inlineobject to formula/ref:inlineobject: Updated
                        target sample according to latest Apollo markup.</xref>
                </li>-->
                <!--<li>
                    <xref
                        href="../../common_newest/Rosetta_inlineobject-Chof-p_blockquote-LxAdv-p_figure_ref.inlineobject.dita"
                        >2013-04-30 - p/blockquote/inlineobject to p/figure/ref:inlineobject:
                        Updated target sample according to latest Apollo markup.</xref>
                </li>-->
                <li>
                    <xref href="../../common_newest/Rosetta_inlineobject-Chof-bodytext-LxAdv-bodytext_p_text_figure_ref.inlineobject.dita">2013-04-30 - bodytext/inlineobject to
                        bodytext/p/text/figure/ref:inlineobject: Updated target sample according to
                        latest Apollo markup.</xref>
                </li>
                <li>
                    <xref href="../../common_newest/Rosetta_NZ-Newsitem_title_ci.cite_nl-LxAdv-title_lnci-cite.dita">2013-04-30 - title/ci:cite/nl to title/lnci:cite: Updated target sample
                        according to latest Apollo markup.</xref>
                </li>
                <li>
                    <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-04-30 - remotelink to ref:crossreference: Updated target sample
                        according to latest Apollo markup.</xref>
                </li>
                <li>
                    <xref href="../../common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2013-04-24
                        - ci.cite to lnci.cite: Added a mapping for
                            <sourcexml>ci:procphrase</sourcexml> to
                            <sourcexml>lnci:procphrase</sourcexml>
                    </xref>
                </li>
            </ul>
        </section>
        <section>
            <title>seclaw 6.1 PROD</title>
            <p>2013-04-19</p><ul>
                <li>Created</li>
            </ul>
        </section>
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK14-Precedents\UK14_Precedents_changeLog.dita  -->
	<!--<xsl:message>UK14_Precedents_changeLog.xsl requires manual development!</xsl:message> -->

</xsl:stylesheet>