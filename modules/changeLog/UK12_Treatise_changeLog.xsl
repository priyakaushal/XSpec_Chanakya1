<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:ci="http://www.lexis-nexis.com/ci" xmlns:comm="http://www.lexis-nexis.com/glp/comm" xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" xmlns:frm="http://www.lexis-nexis.com/glp/frm" xmlns:in="http://www.lexis-nexis.com/glp/in" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:source_lnci="http://www.lexis-nexis.com/lnci" xmlns:classify="http://www.lexisnexis.com/xmlschemas/content/shared/classification/1/" xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" xmlns:form="http://www.lexisnexis.com/xmlschemas/content/shared/form/1/" xmlns:index="urn:x-lexisnexis:content:publicationindex:sharedservices:1" xmlns:lnci="http://www.lexisnexis.com/xmlschemas/content/shared/citations/1/" xmlns:location="http://www.lexisnexis.com/xmlschemas/content/shared/location/1/" xmlns:person="http://www.lexisnexis.com/xmlschemas/content/shared/person/1/" xmlns:primlawinfo="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-info/1/" xmlns:proc="http://www.lexisnexis.com/xmlschemas/content/shared/process-elements/1/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" xmlns:seclaw="http://www.lexisnexis.com/xmlschemas/content/legal/secondary-law/1/" version="2.0" exclude-result-prefixes="dita ci comm docinfo frm in leg lnci">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="UK12_Treatise_changeLog">
    <title>Change Log for UK12 Treatise</title>
    <body>
        <section><title>Seclaw 8.19_PROD Schema</title><p>2017-02-06</p>
            <ul>
                <li>
                    <xref href="../../../Rosetta/DITA-UK/UK12-Treatise/UK12_Treatise_alt.rendition-ref.marker.dita">2017-02-06 - docinfo:alt-rendition/link without text id-UK12-29824: New rule. Handles
                        <sourcexml>docinfo:alt-rendition/link</sourcexml> occurring without pcdata.
                        Uses <sourcexml>docinfo:doc-heading</sourcexml> to populate
                        <targetxml>ref:marker</targetxml>. VSTS Issue 226835.</xref>
                </li> 
        </ul>
        </section>
        <section><title>Seclaw 8.19_PROD Schema</title><p>2017-01-25</p><ul>
            <li>
                <xref href="../../../Rosetta/DITA-UK/UK12-Treatise/UK12_Treatise_introduction.dita">2017-01-25 - Introduction id-UK12-29815: Updated schema version to 8.19
                    PROD.</xref>
            </li>
            <li>
                <xref href="../../../Rosetta/DITA-UK/UK12-Treatise/UK12_Treatise_note.dita">2017-01-25 - note id-UK12-29821: At the rule for mapping
                    <sourcexml>note</sourcexml> to <targetxml>note</targetxml>, added instruction
                    for moving <targetxml>note</targetxml> when source is
                    <sourcexml>p/text/note</sourcexml>. And updated Example 2.</xref>
            </li>
            <li>
                <xref href="../../../Rosetta/DITA-UK/UK12-Treatise/UK12_Treatise_address-phone-fax.dita">2017-01-25 - address, phone, fax id-UK12-29807: Added rule for attribute
                    <sourcexml>address[@type]</sourcexml>, mapping to same-named attribute
                    <targetxml>location:address[@type]</targetxml>. The element mapping is
                    unchanged.</xref>
            </li>
            <li>
                <xref href="../../../Rosetta/common_newest/Rosetta_UK_docinfo.custom-metafields-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta.meta.metaitem.dita">2017-01-12 - docinfo:custom-metafields to
                    doc:legacy-metadata[@metadatasource="lbu-meta"]/meta/metaitem id-CCCC-10485:
                    Updated <sourcexml>docinfo:custom-metafield"</sourcexml> for
                    "is-first-document-in-enactment" or "is-last-document-in-enactment". VSTS
                    #162173</xref>
            </li>
            <li>
                <xref href="../../../Rosetta/common_newest/Rosetta_UK_docinfo.custom-metafields-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta.meta.metaitem.dita">2017-01-04 - docinfo:custom-metafields to
                    doc:legacy-metadata[@metadatasource="lbu-meta"]/meta/metaitem id-CCCC-10485:
                    Updated <sourcexml>docinfo:custom-metafield"</sourcexml> for
                    "is-first-document-in-enactment" or "is-last-document-in-enactment". VSTS
                    #162173</xref>
            </li>
            <li>
                <xref href="../../../Rosetta/common_newest/Rosetta_desigrange-LxAdv-desigrange.dita">2016-12-19 - desigrange to desigrange id-CCCC-10518: Instructions for nested
                    designum.</xref>
            </li>
            <li>
                <xref href="../../../Rosetta/DITA-UK/UK12-Treatise/UK12_Treatise_contrib.dita">2016-12-14 - contrib (and children) id-UK12-29810: Not a rule change directly to
                    this module. Modified Example 2 Target to reflect blobstore markup for
                    ref:inlineobject; all paramater names that formerly contained the word
                    "attachment" are now "object".</xref>
            </li>
            <li>
                <xref href="../../../Rosetta/DITA-UK/UK12-Treatise/UK12_Treatise_alt.rendition-ref.marker.dita">2016-12-14 - docinfo:alt-rendition/link without text id-UK12-29824: Not a rule
                    change directly to this module. Modified Example Target to reflect blobstore
                    markup for ref:lnlink; changed casing at value="BlobStore", making S upper
                    case.</xref>
            </li>
            <li>
                <xref href="../../../Rosetta/common_newest/Rosetta_deflist-Chof-p_text-LxAdv-p_deflist.dita">2016-12-08 - p/text/deflist to p/deflist id-CCCC-10276: Added instruction to
                    handle running text which is comes before <sourcexml>deflist</sourcexml> and it
                    comes under <sourcexml>p/text</sourcexml>.</xref>
            </li>
        </ul></section>
        <section><title>Seclaw 8.17_PROD Schema</title><p>2016-12-06</p><ul>
                <li>
                    <xref href="../../../Rosetta/DITA-UK/UK12-Treatise/UK12_Treatise_note-Chof-toc.entry.dita">2016-12-06 - note as child of toc-entry id-UK12-29830: New section. Handles
                        note within toc-entry. New Xpath.</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/DITA-UK/UK12-Treatise/UK12_Treatise_docinfo.normcite.dita">2016-12-06 - docinfo:normcite to ref:nonciteidentifier id-UK12-29829:
                        Modified to reflect recent rosetta. Removed rule for rosetta
                            <sourcexml>@normcite</sourcexml>; attribute not present. Changed rule
                        for <sourcexml>ci:content</sourcexml>, formerly suppressed, now maps to
                            <targetxml>ref:nonciteidentifier</targetxml>. Target xpath not
                        changed.</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/common_newest/Rosetta_UK_docinfo.custom-metafields-LxAdv-dc.date_or_doc.docinfo_classify.classification.dita">2016-11-30 - (UK) docinfo:custom-metafield to dc:date or
                        doc:metadata/doc:docinfo/classify:classification[@classscheme="uk-functional-information"]
                        id-CCCC-10547: Added rule for "isDocBuilderAvailable"; and updated the
                        example.</xref>
                </li>
            </ul></section>
        <section><title>Seclaw 8.17_PROD Schema</title><p>2016-11-21</p><ul>
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
        <section><title>Seclaw 8.17_PROD Schema</title><p>2016-10-28</p><ul>
                <li>
                    <xref href="../../../Rosetta/DITA-UK/UK12-Treatise/UK12_Treatise_introduction.dita">2016-10-28 - Introduction id-UK12-29815: Updated schema version to 8.17
                        PROD.</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/DITA-UK/UK12-Treatise/UK12_Treatise_docinfo.normcite.dita">2016-10-26 - docinfo:normcite to ref:nonciteidentifier id-UK12-29829: New
                        section. New xpath. Specific to UK12</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/DITA-UK/UK12-Treatise/UK12_Treatise_level-bodytext.dita">2016-10-21 - level and bodytext id-UK12-29817: In section on special rules
                        for certain @leveltype values, added rules for source values
                            <sourcexml>"stop-press"</sourcexml>,
                            <sourcexml>"affected-enactment-notice"</sourcexml>, and
                            <sourcexml>"source-enactments"</sourcexml>. Supports stop-press
                        docs.</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/DITA-UK/UK12-Treatise/UK12_Treatise_levelprelim-abstract-scope.dita">2016-10-21 - levelprelim, abstract, scope id-UK12-29819: Added rule for
                            <sourcexml>leg:status</sourcexml>. And changed rule for attribute
                            <sourcexml>leg:officialname[@leg-signal]</sourcexml>. The attribute is
                        now suppressed because same content as the recently added element
                            <sourcexml>leg:status</sourcexml>. No new xpath.</xref>
                </li>
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
                <li>
                    <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.versioninfo-LxAdv-doc.versioninfo-scheme.dita">2016-10-17 - docinfo:versioninfo to doc:versioninfo id-CCCC-10307: Updated
                        the instruction for handling the target attribute
                            <targetxml>@normdate</targetxml>. [Webstar#6676189]</xref>
                </li>
            </ul></section>
        <section><title>Seclaw 8.16_PROD Schema</title><p>2016-10-04</p><ul>
                <li>
                    <xref href="../../../Rosetta/DITA-UK/UK12-Treatise/UK12_Treatise_introduction.dita">2016-10-04 - Introduction id-UK12-29815: Updated schema version to 8.16
                        PROD.</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/DITA-UK/UK12-Treatise/UK12_Treatise_legfragment.dita">2016-10-04 - legfragment (and descendants) id-UK12-29827: Added rule for
                            <sourcexml>leg:empleg</sourcexml>. Maps to
                            <targetxml>primlawinfo:authority</targetxml>, as following sibling of
                            <targetxml>heading</targetxml>. New xpath.</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/DITA-UK/UK12-Treatise/UK12_Treatise_legfragment.dita">2016-10-04 - legfragment (and descendants) id-UK12-29827: Added rule for
                            <sourcexml>leg:laidline</sourcexml>. Maps to
                            <targetxml>primlawinfo:presenteddate</targetxml>. New xpath.</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/DITA-UK/UK12-Treatise/UK12_Treatise_legfragment.dita">2016-10-04 - legfragment (and descendants) id-UK12-29827: Added exceptional
                        rule for leveltype value <sourcexml>"schedule-grp"</sourcexml>. Maps to
                            <targetxml>"schedule"</targetxml>.</xref>
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
                    <xref href="../../../Rosetta/common_newest/Rosetta_blockquote-link-LxAdv-blockquote-p-text-ref.lnlink.dita">2016-08-03 - blockquote/link to blockquote/p/text/ref:lnlink id-CCCC-10246:
                        Added Note about xml snippets that illustrate image handling. Note
                        summarizes move from Apollo to Blobstore application. UK is first LBU to
                        move to Blobstore.</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/common_newest/Rosetta_leg.histnote-Chof-p-LxAdv-note.dita">2016-08-03 - p/leg:histnote to note[@notetype="historical"] id-CCCC-10380:
                        Added Note about xml snippets that illustrate image handling. Note
                        summarizes move from Apollo to Blobstore application. UK is first LBU to
                        move to Blobstore.</xref>
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
                    <xref href="../../../Rosetta/DITA-UK/UK12-Treatise/UK12_Treatise_contrib.dita">2016-08-01 - contrib (and children) id-UK12-29810: Not a rule change
                        directly to this module. Modified Example 2 Target to reflect blobstore
                        markup.</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/DITA-UK/UK12-Treatise/UK12_Treatise_alt.rendition-ref.marker.dita">2016-08-01 - docinfo:alt-rendition/link without text id-UK12-29824: Not a
                        rule change directly to this module. Modified Example Target to reflect
                        blobstore markup.</xref>
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
                    <xref href="../../../Rosetta/common_newest/Rosetta_inlineobject-Chof-dispformula-LxAdv-formula_ref.inlineobject.dita">2016-08-01 - dispformula/inlineobject to formula/ref:inlineobject
                        id-CCCC-10358: Added Note about xml snippets that illustrate image handling.
                        Note summarizes move from Apollo to Blobstore application. UK is first LBU
                        to move to Blobstore.</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/common_newest/Rosetta_inlineobject-w-siblings-Chof-p_blockquote-LxAdv-p_figure_ref.inlineobject.dita">2016-08-01 - p/blockquote/inlineobject (with siblings) to
                        p/text/blockquote/p/text/ref:inlineobject id-CCCC-10530: Added Note about
                        xml snippets that illustrate image handling. Note summarizes move from
                        Apollo to Blobstore application. UK is first LBU to move to
                        Blobstore.</xref>
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
                    <xref href="../../../Rosetta/common_newest/Rosetta_blockquote-LxAdv-blockquote.dita">2016-07-29 - blockquote to blockquote id-CCCC-10247: Added Note about xml
                        snippets that illustrate image handling. Note summarizes move from Apollo to
                        Blobstore application. UK is first LBU to move to Blobstore. VSTS
                        76146</xref>
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
                    <xref href="../../../Rosetta/common_newest/Rosetta_inlineobject-Chof-glp.note-LxAdv-SUPPRESS.dita">2016-07-29 - glp:note/inlineobject to id-CCCC-10361: Added Note about xml
                        snippets that illustrate image handling. Note summarizes move from Apollo to
                        Blobstore application. UK is first LBU to move to Blobstore. VSTS
                        76146</xref>
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
            </ul></section>
        <section><title>Seclaw 8.13_PROD Schema</title><p>2016-07-07</p><ul>
                <li>
                    <xref href="../../../Rosetta/DITA-UK/UK12-Treatise/UK12_Treatise_note.dita">2016-07-07 - note id-UK12-29821: Not a rule change for this section. Added
                        a cross-reference to section covering <sourcexml>note</sourcexml> occurring
                        within <sourcexml>legfragment</sourcexml>.</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/DITA-UK/UK12-Treatise/UK12_Treatise_legfragment.dita">2016-07-07 - legfragment (and descendants) id-UK12-29827: Several new rules
                        covering <sourcexml>leg:effdate, leg:enactdate, publication, note,
                            leg:sectionlist, leg:status</sourcexml>. Plus exceptional rule when
                            <sourcexml>legfragment</sourcexml> is child of
                            <sourcexml>leg:bodytext</sourcexml>. New xpaths.</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/DITA-UK/UK12-Treatise/UK12_Treatise_defdesc-additional-text.dita">2016-07-07 - (UK12) defdesc followed by narrative id-UK12-29828: New
                        section. UK12 only. Handles text occurring after
                            <sourcexml>defdesc</sourcexml>. No new xpaths.</xref>
                </li>
            </ul></section>
        <section><title>Seclaw 8.13_PROD Schema</title><p>2016-06-14</p><ul>
                <li>
                    <xref href="../../../Rosetta/DITA-UK/UK12-Treatise/UK12_Treatise_introduction.dita">2016-06-14 - Introduction id-UK12-29815: Updated schema version to 8.13
                        PROD.</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/DITA-UK/UK12-Treatise/UK12_Treatise_introduction.dita">2016-06-14 - Introduction id-UK12-29815: Note that the following module has
                        been added to the General Markup section: <sourcexml>pnum</sourcexml> to
                            <targetxml>desig</targetxml> (id-CCCC-10434).</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/DITA-UK/UK12-Treatise/UK12_Treatise_form-clause.dita">2016-06-14 - form and clause id-UK12-29825: Rule expanded for target
                            <targetxml>form:sigblock</targetxml>. Maps children
                            <sourcexml>p/table</sourcexml> to <targetxml>table</targetxml>. New
                        target xpath.</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/DITA-UK/UK12-Treatise/UK12_Treatise_legfragment.dita">2016-06-14 - legfragment (and descendants) id-UK12-29827: New section. New
                        target xpaths. Cover legislative excerpts.</xref>
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
                <li>
                    <xref href="../../../Rosetta/common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2016-03-23 - ci.cite to lnci.cite id-CCCC-10268: Updated main instructions
                        to clarify that descendants of ci:cite, and not just children, are to be
                        processed.</xref>
                </li>
            </ul></section>
        <section><title>Seclaw 8.9_PROD Schema</title><p>2016-02-29</p><ul>
                <li>
                    <xref href="../../../Rosetta/DITA-UK/UK12-Treatise/UK12_Treatise_introduction.dita">2016-02-29 - Introduction id-UK12-29815: Updated schema version to 8.9
                        PROD.</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.leginclude-LxAdv-doc.merge.dita">2016-02-29 - docinfo:leginclude to doc:merge id-CCCC-10537: Usage note, not
                        a rule change. Supports UK One Truth project. Applicable for any stream
                        where the data occur.</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.leginclude-LxAdv-doc.merge.dita">2016-02-24 - docinfo:leginclude to doc:merge id-CCCC-10537: Created.
                        Applicable on UK06 and UK07, RFA#, 2748 and 2752.</xref>
                </li>
            </ul></section>
        <section><title>Seclaw 8.7_PROD Schema</title><p>2016-01-28</p><ul>
                <li>
                    <xref href="../../../Rosetta/DITA-UK/UK12-Treatise/UK12_Treatise_levelprelim-abstract-scope.dita">2016-01-28 - levelprelim, abstract, scope id-UK12-29819: New rules. New
                        target xpaths. Cover <sourcexml>leg:info</sourcexml> and children. Occur in
                        Amendment Table docs. RFA 2659.</xref>
                </li>
            </ul></section>
        <section><title>Seclaw 8.7_PROD Schema</title><p>2016-01-11</p><ul>
                <li>
                    <xref href="../../../Rosetta/DITA-UK/UK12-Treatise/UK12_Treatise_form-clause.dita">2016-01-06 - form and clause id-UK12-29825: Rule expanded for target
                            <targetxml>form:sigblock</targetxml>. Maps children
                            <sourcexml>p/text</sourcexml> to <targetxml>form:line</targetxml>. New
                        target xpath. RFA 2642.</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/common_newest/Rosetta_footnote-LxAdv-footnote.dita">2016-01-05 - footnotegrp and footnote to footnotegrp and footnote
                        id-CCCC-10322: Added instructions for <sourcexml>footnotegrp</sourcexml>
                        within <sourcexml>frm:div</sourcexml>. To generate
                            <targetxml>form:p/form:text</targetxml> wrapper for target
                            <targetxml>footnotegroup</targetxml>. Immediately affects UK12 but will
                        apply to any stream if the use case occurs. RFA 2653.</xref>
                </li>
            </ul></section>
        <section><title>Seclaw 8.7_PROD Schema</title><p>2015-12-23</p><ul>
                <li>
                    <xref href="../../../Rosetta/DITA-UK/UK12-Treatise/UK12_Treatise_introduction.dita">2015-12-23 - Introduction id-UK12-29815: Updated schema version to 8.7
                        PROD.</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/DITA-UK/UK12-Treatise/UK12_Treatise_form-clause.dita">2015-12-23 - form and clause id-UK12-29825: Rules expanded to cover
                        additional forms markup, including for divisions, h-tags, lists, and
                        signature blocks. New target xpaths. RFA 2626.</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/common_newest/Rosetta_inlineobject-Chof-p_blockquote-LxAdv-p_figure_ref.inlineobject.dita">2015-12-08 - p/blockquote/inlineobject to p/figure/ref:inlineobject
                        id-CCCC-10363: Added '.tiff' to the list of allowable values for
                            <sourcexml>proc:param[@name="object-type"]/@value="image"</sourcexml>.</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/common_newest/Rosetta_inlineobject-Chof-p_blockquote-LxAdv-p_figure_ref.inlineobject.dita">2015-11-17 - p/blockquote/inlineobject to p/figure/ref:inlineobject
                        id-CCCC-10363: Added note to use a different instruction if
                            <sourcexml>inlineobject</sourcexml> contains siblings.</xref>
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
                    <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.overview-LxAdv-docinfo.overview.dita">2015-09-08 - docinfo:overview to doc:overview id-CCCC-10303: Added the
                        handling of new attribute value "abstract" inside the
                            <targetxml>docinfo:overview@type</targetxml> markup for UK streams and
                        it should be mapped with
                        <targetxml>doc:overview@type="abstract"</targetxml>. R4.5 Content Issue List
                        #2391.</xref>
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
                    <xref href="../../../Rosetta/common_newest/Rosetta_person-LxAdv-person.person.dita">2015-07-16 - person to person:person id-CCCC-10428: Added instruction for
                            <sourcexml>person/remotelink</sourcexml> mapping to
                            <targetxml>ref:lnlink</targetxml>.</xref>
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
            </ul>
        </section>
        <section><title>Seclaw 8.5_PROD Schema</title><p>2015-05-14</p><ul>
                <li>
                    <xref href="../../../Rosetta/DITA-UK/UK12-Treatise/UK12_Treatise_introduction.dita">2015-05-14 - Introduction id-UK12-29815: Updated schema version to 8.5
                        PROD.</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/DITA-UK/UK12-Treatise/UK12_Treatise_introduction.dita">2015-05-14 - Introduction id-UK12-29815: Administrative. The following has
                        been removed from General Markup section: 6.36.2.
                            <sourcexml>page</sourcexml> with an ancestor of
                            <sourcexml>entry</sourcexml> to <targetxml>ref:page</targetxml>
                        (id-CCCC-10425). The markup does not occur in UK12. Would never have been
                        coded. The change is strictly housekeeping.</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/DITA-UK/UK12-Treatise/UK12_Treatise_levelprelim-abstract-scope.dita">2015-05-14 - levelprelim, abstract, scope id-UK12-29819: New rule. New
                        target xpath. Maps <sourcexml>scope</sourcexml> to
                            <targetxml>unitscope</targetxml>. Responds to new markup in recent UK12
                        data delivery. R4.5 Content Issue 2308.</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/DITA-UK/UK12-Treatise/UK12_Treatise_form-clause.dita">2015-05-14 - form and clause id-UK12-29825: New rule. New target xpath.
                        Handles <sourcexml>toc</sourcexml> as child of <sourcexml>form</sourcexml>.
                        Responds to new markup in recent UK12 data delivery. R4.5 Content Issue
                        2314.</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/common_newest/Rosetta_footnote-LxAdv-footnote.dita">2015-05-14 - footnotegrp and footnote to footnotegrp and footnote
                        id-CCCC-10322: Added instructions for <sourcexml>footnotegrp</sourcexml>
                        within <sourcexml>frm:body</sourcexml> and <sourcexml>clause</sourcexml>. To
                        generate <targetxml>form:p/form:text</targetxml> wrapper for target
                            <targetxml>footnotegroup</targetxml>. Immediately affects UK12 but will
                        apply to any stream if the use case occurs. R4.5 Content Issues 2316 and
                        2317.</xref>
                </li>
            </ul></section>
        <section><title>Seclaw 8.3_PROD Schema</title><p>2015-03-13</p><ul>
                <li>
                    <xref href="../../../Rosetta/DITA-UK/UK12-Treatise/UK12_Treatise_introduction.dita">2015-03-13 - Introduction id-UK12-29815: Updated schema version to 8.3
                        PROD.</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/DITA-UK/UK12-Treatise/UK12_Treatise_introduction.dita">2015-03-12 - Introduction id-UK12-29815: Note that modules for handling
                            <sourcexml>p-limited</sourcexml> have been added to the General Markup
                        section. Markup is new in recent rosetta delivery. R4.5 Content Issue
                        2230.</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/DITA-UK/UK12-Treatise/UK12_Treatise_references.dita">2015-03-12 - references id-UK12-29826: New section. Target xpath is new.
                        Maps <sourcexml>references</sourcexml> to
                            <targetxml>ref:relatedrefs</targetxml>. Responds to new markup in recent
                        UK12 rosetta delivery. R4.5 Board Item 2231.</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/common_newest/Rosetta_classification_classitem_topic.topicreference-Chof-docinfo-LxAdv-doc.docinfo_classify.classification.dita">2015-03-07 - classification/classitem[@classscheme="topic:topicReference"]
                        to classify:classification/classify:classitem/topic:topicReference
                        id-CCCC-10516: Added an indication that this mark-up may also occur within
                            <sourcexml>levelinfo</sourcexml> (as well as within
                            <sourcexml>docinfo</sourcexml> as originally stated).</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/DITA-UK/UK12-Treatise/UK12_Treatise_introduction.dita">2015-03-04 - Introduction id-UK12-29815: Note that the following module has
                        been added to the Metadata section:
                            <sourcexml>classification/classitem[@classscheme="topic:topicReference"]</sourcexml>
                        to
                            <targetxml>classify:classification/classify:classitem/topic:topicReference</targetxml>
                        (id-CCCC-10516). The data addition was announced in UK14 Audit Package
                        Review Mar 3 2015.</xref>
                </li>
            </ul></section>
        <section><title>Seclaw 8.2_PROD Schema</title><p>2015-02-10</p><ul>
                <li>
                    <xref href="../../../Rosetta/DITA-UK/UK12-Treatise/UK12_Treatise_introduction.dita">2015-02-10 - Introduction id-UK12-29815: Updated schema version to 8.2
                        PROD</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/DITA-UK/UK12-Treatise/UK12_Treatise_form-clause.dita">2015-02-10 - form and clause id-UK12-29825: New section. New target xpaths.
                        Includes mappings to the <targetxml>form</targetxml> namespace. Responds to
                        new markup in recent UK12 data delivery. Known to occur in dpsi 02FN and
                        0429. R4.5 Content Issues 2160 and 2161.</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/common_newest/Rosetta_desigrange-LxAdv-desigrange.dita">2015-02-10 - desigrange to desigrange id-CCCC-10518: New section. Responds
                        to UK12 data but rules will be generally applicable. R4.5 Content Issue
                        2162.</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.hier-LxAdv-doc.hier.dita">2015-01-23 - docinfo:hier to doc:hier id-CCCC-10297: Added note to convert
                            <sourcexml>docinfo:hierlev/@exclude-from-displayunits="true"</sourcexml>
                        into <targetxml>doc:hier/@includeintoc="false"</targetxml>.</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.hier-LxAdv-doc.hier.dita">2015-01-13 - docinfo:hier to doc:hier id-CCCC-10297: Added a note to
                        repalce <sourcexml>nl</sourcexml> to a white space when
                            <sourcexml>nl</sourcexml> is coming as child of
                            <sourcexml>docinfo:hierlev/heading/title</sourcexml>
                    </xref>
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
            </ul></section>
        <section><title>Seclaw 8.1_PROD Schema</title><p>2015-01-07</p><ul>
                <li>
                    <xref href="../../../Rosetta/DITA-UK/UK12-Treatise/UK12_Treatise_introduction.dita">2015-01-07 - Introduction id-UK12-29815: Note that the following module has
                        been added to the Metadata section: <sourcexml>docinfo:overview</sourcexml>
                        to <targetxml>doc:overview</targetxml> (id-CCCC-10303). Data are new in Dec
                        2014 redelivery. New target xpath. R4.5 Content Issue 2114.</xref>
                </li>
            </ul></section>
        <section><title>Seclaw 8.1_PROD Schema</title><p>2014-12-23</p><ul>
                <li>
                    <xref href="../../../Rosetta/DITA-UK/UK12-Treatise/UK12_Treatise_note.dita">2014-12-23 - note id-UK12-29821: Modified rule when
                            <sourcexml>@notetype</sourcexml> value is not
                            <sourcexml>"xref"</sourcexml>. Previously, rule specified the values
                        "commentary" and "example". Other values will occur. Rule now generalized to
                        cover any value other than "xref". Target remains
                            <targetxml>note[@notetype]/bodytext</targetxml>. Also removed request to
                        report any value other than xref, commentary, or example; no longer
                        necessary. R4.5 Content Issue 2104.</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/common_newest/Rosetta_figure-LxAdv-figure.dita">2014-10-28 - figure to figure id-CCCC-10320: Moved instruction regarding
                        the XPath XPath <sourcexml>caption/note</sourcexml> into a separate topic.
                        Not a rule change, just a minor reorganization of the instructions.</xref>
                </li>
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
            </ul></section>
        <section><title>Seclaw 8.1_PROD Schema</title><p>2014-10-20</p><ul>
                <li>
                    <xref href="../../../Rosetta/DITA-UK/UK12-Treatise/UK12_Treatise_introduction.dita">2014-10-20 - Introduction id-UK12-29815: Updated schema version to 8.1
                        PROD</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/DITA-UK/UK12-Treatise/UK12_Treatise_contrib.dita">2014-10-20 - contrib (and children) id-UK12-29810: New rule. Within rules
                        for <sourcexml>levelinfo/contrib</sourcexml>: Added requirement to generate
                            <targetxml>person:person</targetxml> wrapper when source
                            <sourcexml>bio</sourcexml> preceded by pcdata. Noted as rare. Known in
                        dpsi 041V. Target xpath is not new. R4.5 Content Issue 1973.</xref>
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
            </ul></section>
        <section><title>Seclaw 8.0_PROD Schema</title><p>2014-09-15</p><ul>
                <li>
                    <xref href="../../../Rosetta/DITA-UK/UK12-Treatise/UK12_Treatise_introduction.dita">2014-09-15 - Introduction id-UK12-29815: Updated schema version to 8.0
                        PROD</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/DITA-UK/UK12-Treatise/UK12_Treatise_note.dita">2014-09-15 - note id-UK12-29821: Revised rule for
                            <sourcexml>note[@notetype="xref"]</sourcexml> to
                            <targetxml>marginnote</targetxml>. Removed requirement to generate
                            <targetxml>text</targetxml> wrapper for
                            <targetxml>marginnote</targetxml>. Instead,
                            <targetxml>marginnote</targetxml> is placed at end of
                            <targetxml>text</targetxml> element which contains the associated
                        narrative. R4.5 Content Issue 1804.</xref>
                </li>
            </ul></section>
        <section><title>Seclaw 7.13_PROD Schema</title><p>2014-09-10</p><ul>
                <li>
                    <xref href="../../../Rosetta/DITA-UK/UK12-Treatise/UK12_Treatise_contrib.dita">2014-09-10 - contrib (and children) id-UK12-29810: New rule. Within rules
                        for <sourcexml>levelinfo/contrib</sourcexml>: Added note to suppress start
                        and end spaces in children of <sourcexml>name.detail</sourcexml>. R4.5
                        Content Issue 1884.</xref>
                </li>
            </ul></section>
        <section><title>Seclaw 7.13_PROD Schema</title><p>2014-09-03</p><ul>
                <li>
                    <xref href="../../../Rosetta/DITA-UK/UK12-Treatise/UK12_Treatise_alt.rendition-ref.marker.dita">2014-09-03 - docinfo:alt-rendition/link without text id-UK12-29824: New
                        rule. Handles <sourcexml>docinfo:alt-rendition/link</sourcexml> occurring
                        without pcdata. Uses <sourcexml>docinfo:doc-heading</sourcexml> to populate
                            <targetxml>ref:marker</targetxml>. Specific to UK12. R4.5 Content Issue
                        1838.</xref>
                </li>
            </ul></section>
        <section><title>Seclaw 7.13_PROD Schema</title><p>2014-09-02</p><ul>
                <li>
                    <xref href="../../../Rosetta/DITA-UK/UK12-Treatise/UK12_Treatise_introduction.dita">2014-09-02 - Introduction id-UK12-29815: Updated schema version to 7.13
                        PROD</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/DITA-UK/UK12-Treatise/UK12_Treatise_level-bodytext.dita">2014-09-02 - level and bodytext id-UK12-29817: Not a rule change. This is a
                        note to Presentation. Source data for "Getting the Deal Through" material
                        (dpsi 0NF9) have been modified to make the "question" and "answer" levels
                        siblings instead of parent-child. The change is appropriate for the data and
                        will support requirement for different display of question and answer. The
                        markup sample is modified to show the new sibling relationship. Conversion
                        carries through the source relationship so coding not affected. R4.5 Content
                        Issue 1868.</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/DITA-UK/UK12-Treatise/UK12_Treatise_contrib.dita">2014-09-02 - contrib (and children) id-UK12-29810: New rule. Within rules
                        for <sourcexml>comm:info/contrib</sourcexml>: Added attribute mapping for
                            <sourcexml>@contribtype="series"</sourcexml> to
                            <targetxml>@pubfmtype="series"</targetxml>. Target for any other value
                        remains <targetxml>@pubfmtype="author"</targetxml>. Mappings for child
                        elements are unchanged. Note for Presentation: The special value
                            <targetxml>"series"</targetxml> will occur in "Getting the Deal Through"
                        material (dpsi 0NF9) and can be used as indicator that content should
                        display at end. R4.5 Content Issue 1765.</xref>
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
            </ul></section>
        <section><title>Seclaw 7.10_PROD Schema</title><p>2014-04-17</p><ul>
                <li>
                    <xref href="../../../Rosetta/DITA-UK/UK12-Treatise/UK12_Treatise_introduction.dita">2014-04-17 - Introduction: Updated schema version to 7.10 PROD</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/common_newest/Rosetta_footnote-LxAdv-footnote.dita">2014-04-17 - footnotegrp and footnote to footnotegrp and footnote: Added
                        instruction for <sourcexml>footnotegrp</sourcexml> within
                            <sourcexml>sigblock</sourcexml>. Specifies <targetxml>p/text</targetxml>
                        wrapper for target <targetxml>sigblock/p/text/footnotegroup</targetxml>.
                        Immediately affects UK12 but will apply to any stream if the use case
                        occurs. Phase 6 UK discussion items 76 and 88.</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2014-04-03 - docinfo:assoc-links to doc:related-content: Illustrative
                        changes. Examples modified. Mapping for <sourcexml>ci:cite</sourcexml> added
                        to Example 3. Former Examples 4 and 5 removed to avoid confusion with
                        special AU-NZ use case described in a separate module. R4.5 Content issue
                        #1125, for AU-NZ, has prompted the changes for this general module.</xref>
                </li>
            </ul></section>
        <section><title>Seclaw 7.9_PROD Schema</title><p>2014-04-01</p><ul>
                <li>
                    <xref href="../../../Rosetta/common_newest/Rosetta_UK_ci.cite-Chof-ci.content-LxAdv-lnci.cite.dita">2014-03-28 - (UK) ci:cite[@type]/ci:content/ci:cite[@searchtype] to
                        lnci:cite: Modified rule. Target xpath is not new. Handles pcdata and
                        multiple <sourcexml>ci:cite[@searchtype]</sourcexml> within this special use
                        case. Known to occur in UK12 dpsi 0424 and 041V, newly delivered Mar 2014.
                        Phase 6 UK discussion items 75 and 90. Webteam 252434.</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/DITA-UK/UK12-Treatise/UK12_Treatise_note.dita">2014-03-27 - note: New rule. Handles
                            <sourcexml>note[@notetype="example"]</sourcexml>. Similar to
                            <sourcexml>note[@notetype="commentary"]</sourcexml>. Known to occur in
                        dpsi 040Y which was added in Mar 2014 redelivery. Phase 6 UK Discussion Item
                        85. Webteam 252434.</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/DITA-UK/UK12-Treatise/UK12_Treatise_leg.comntry.dita">2014-03-27 - leg:comntry: New section. Target xpath is new. Limited use
                        case in UK12 only. Known to occur in dpsi 02GS, newly delivered Mar 2014.
                        Phase 6 UK discussion item 86. Webteam 252434.</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2014-03-25 - docinfo:assoc-links to doc:related-content: Added rule and
                        example for
                            <sourcexml>docinfo:assoc-links/docinfo:assoc-links-grp/ci:cite</sourcexml>.
                        R4.5 Content issue #1125</xref>
                </li>
            </ul></section>
        <section><title>Seclaw 7.9_PROD Schema</title><p>2014-03-21</p><ul>
                <li>
                    <xref href="../../../Rosetta/DITA-UK/UK12-Treatise/UK12_Treatise_docinfo.assoc-doc-id.dita">2014-03-21 - docinfo:assoc-doc-id to ref:relatedresourcelocator: New rule.
                        Target xpath is new. Known only for UK12 "Stop Press" documents. Rule notes
                        that locating information may be modified in future interations. Webteam
                        252187.</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/DITA-UK/UK12-Treatise/UK12_Treatise_introduction.dita">2014-03-20 - Introduction: Note that common rule for
                            "<sourcexml>figure</sourcexml> to <targetxml>figure</targetxml>" has
                        been added to the General Markup section. Reflects new data in Mar 2014
                        redelivery. Known to occur in dpsi 041J and 04M3. Means new target xpath.
                        Phase 6 UK Discussion Board Item 77. Webteam 252434.</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/DITA-UK/UK12-Treatise/UK12_Treatise_note.dita">2014-03-20 - note: New rule. Handles
                            <sourcexml>note[@notetype="commentary"]</sourcexml>. Means new target
                        xpath. Known to occur in dpsi 02GS which was added in Mar 2014 redelivery.
                        Phase 6 UK Discussion Item 73. Webteam 252434.</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/DITA-UK/UK12-Treatise/UK12_Treatise_index.dita">2014-03-20 - index and "in:" children: New rule. Means new target xpath.
                        Added mapping for <sourcexml>in:index-ref</sourcexml> to
                            <targetxml>index:locator</targetxml>, and children. Reflects new data in
                        Mar 2014 redelivery. Known to occur in dpsi 0MQW. Affects UK12 only. Phase 6
                        UK Discussion Item 82. Webteam 252434.</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/common_newest/Rosetta_figure-LxAdv-figure.dita">2014-03-20 - figure to figure: Illustrative change. Added example to
                        explicitly show standard conversion of child link to ref:lnlink. Prompted by
                        Phase 6 UK Discussion Item 77. Webteam 252434.</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/common_newest/Rosetta_toc-LxAdv-toc.dita">2014-03-20 - toc to toc: New rule. Added mapping for
                            <sourcexml>entry-pageref</sourcexml> to
                            <targetxml>toc-pageref</targetxml>. Initially for UK12 but will apply
                        for any stream if the use case occurs. Responds to data added in UK12
                        delivery Mar 2014; known to occur in dpsi 02FL and 03VY. Phase 6 UK
                        Discussion Item 79. Webteam 252434.</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/DITA-UK/UK12-Treatise/UK12_Treatise_introduction.dita">2014-03-19 - Introduction: Note that common rule for
                            "<sourcexml>sigblock</sourcexml> to <targetxml>sigblock</targetxml>" has
                        been added to the General Markup section. Reflects new data in Mar 2014
                        redelivery. Known to occur in dpsi 02GS. Means new target xpath. Phase 6 UK
                        Discussion Board Item 76. Webteam 252434.</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/DITA-UK/UK12-Treatise/UK12_Treatise_contrib.dita">2014-03-19 - contrib (and children): New rule. Within rules for
                            <sourcexml>levelinfo/contrib</sourcexml>: Added mapping for
                            <sourcexml>person</sourcexml> and <sourcexml>bio</sourcexml> occurring
                        as siblings. Noted as very rare. Known only in dpsi 03WB which is new in
                        March 2014 redelivery. Target xpath is not new. Phase 6 UK Discussion Board
                        Item 78. Webteam 252434.</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/DITA-UK/UK12-Treatise/UK12_Treatise_introduction.dita">2014-03-18 - Introduction: Note that common rule for
                            "<sourcexml>pgrp</sourcexml> to <targetxml>pgrp</targetxml>" has been
                        added to the General Markup section. Reflects new data in Mar 2014
                        redelivery. Known to occur in dpsi 02GS. Means new target xpath. Phase 6 UK
                        Discussion Board Item 74. Webteam 252434.</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/common_newest/Rosetta_UK_ci.cite-Chof-ci.content-LxAdv-lnci.cite.dita">2014-03-18 - (UK) ci:cite[@type]/ci:content/ci:cite[@searchtype] to
                        lnci:cite: New rule. Target xpath is not new. Initially applies to UK12 but
                        expected to apply to any UK stream if the use case occurs. Known to occur in
                        UK12 dpsi 0424, newly delivered Mar 2014. Phase 6 UK discussion item 75.
                        Webteam 252434.</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/DITA-UK/UK12-Treatise/UK12_Treatise_introduction.dita">2014-03-17 - Introduction: Updated schema version to 7.9 PROD</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2014-02-25 - remotelink to ref:crossreference: Updated instruction and
                        created new example (#16) for handling
                            <sourcexml>remotelink[@service="QUERY"]</sourcexml>. New instruction
                        preserves pcdata but suppresses <sourcexml>remotelink</sourcexml> markup.
                        Webstar #250335. Change applies immediately to all Pacific streams, and in
                        the long run to all streams.</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.doc-heading-LxAdv-dc.title.dita">2014-02-11 - docinfo:doc-heading to dc:title: Updated note when
                            <sourcexml>emph</sourcexml> is child of
                            <sourcexml>docinfo:doc-heading</sourcexml> then suppress
                            <sourcexml>emph</sourcexml> element and retain its content in
                            <targetxml>dc:title</targetxml>, These instructions apply immediately to
                        CA12.</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2014-02-03 - remotelink to ref:crossreference: Instruction updated if
                            <sourcexml>remotelink</sourcexml> occurs as multiple, immediate siblings
                        and without intermediary text within <sourcexml>title</sourcexml>. Also
                        added a example for the same scenario. Phase 5 UK discussion-defect tracking
                        issue #161</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/common_newest/Rosetta_text-LxAdv-text.dita">2014-01-31 - text to text: Updated instruction,
                            <targetxml>align</targetxml> will be moved in <targetxml>p</targetxml>
                        in NL conversion. NZ09 commentary discussion board issue for handling
                            <sourcexml>text/@align</sourcexml>
                    </xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/common_newest/Rosetta_Elements-LxAdv-Empty_Elements.dita">2014-01-16 - Suppress each empty element unless otherwise stated: Added
                        list of elements to suppress if empty.</xref>
                </li>
            </ul></section>
        <section><title>Seclaw 7.8_PROD Schema</title><p>2014-01-14</p><ul>
                <li>
                    <xref href="../../DITA-UK/UK12-Treatise/UK12_Treatise_introduction.dita">2014-01-13 - Introduction: Note that common rule for
                            "<sourcexml>credit</sourcexml> to <targetxml>credit</targetxml>" has
                        been added to the General Markup section. Reflects new data in Jan 2014
                        redelivery, dpsi 02H1. Means new target xpath. Phase 6 UK Discussion Board
                        Item 65. Webteam 248201.</xref>
                </li>
                <li>
                    <xref href="../../DITA-UK/UK12-Treatise/UK12_Treatise_contrib.dita">2014-01-13 -
                        contrib (and children): New rule. Within rules for
                            <sourcexml>bodytext/contrib</sourcexml>: Added mapping for
                            <sourcexml>person</sourcexml> and <sourcexml>bio</sourcexml> occurring
                        as siblings. Noted as very rare. Known only in dpsi 02H1 which is new in Jan
                        2014 redelivery. Target xpath is not new. Phase 6 UK Discussion Board Item
                        66. Webteam 248201.</xref>
                </li>
                <li>
                    <xref href="../../DITA-UK/UK12-Treatise/UK12_Treatise_pnum.dita">2014-01-13 -
                        pnum: New rule. Source <sourcexml>pnum</sourcexml> is new in Dec 2013
                        redelivery of dpsi 02FO.</xref>
                </li>
                <li>
                    <xref href="../../common_newest/Rosetta_refpt-Chof-p_edpnum-LxAdv-p_ref.anchor.dita">2014-01-13 - refpt child of p/edpnum to p/ref:anchor: New module.
                        Immediately applies to UK12-Treatise (Dec 2013 redelivery, dpsi 02FO) and
                        expected to apply to any future stream if the use case occurs.</xref>
                </li>
                <li>
                    <xref href="../../common_newest/Rosetta_footnote-LxAdv-footnote.dita">2014-01-06
                        - footnotegrp and footnote to footnotegrp and footnote: Updated target
                        example for applying the rule of "deleting extraneous instances of
                        @morerows, @colsep and @rowsep" in sample documents.</xref>
                </li>
            </ul></section>
        <section><title>Seclaw 7.8_PROD Schema</title><p>2014-01-02</p><ul>
                <li>
                    <xref href="../../DITA-UK/UK12-Treatise/UK12_Treatise_note.dita">2014-01-02 -
                        note: New rule. Source docs have note before associated text. Presentation
                        requires note after associated text to get marginnote icon in correct
                        position. New rule describes moving note for target. Affects UK11 Newsitem
                        and UK12 Treatise. Tracking: R4.5 Content Issues 958 (UK11) and 972 (UK12),
                        Webteam 103703 (UK12).</xref>
                </li>
                <li>
                    <xref href="../../DITA-UK/UK12-Treatise/UK12_Treatise_index.dita">2013-12-04 -
                        index and "in:" children: Not a rule change. Modified target example. Added
                            <targetxml>@indextype="topical"</targetxml> to reflect existing rule for
                        generating <targetxml>index:index</targetxml>.</xref>
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
                <li>
                    <xref href="../../common_newest/Rosetta_deflist-LxAdv-deflist.dita">2013-12-20 -
                        deflist to deflist: Added note to place a <sourcexml>footnote</sourcexml> or
                            <sourcexml>fnr</sourcexml> that is a child of
                            <sourcexml>defitem</sourcexml> into one of its children. WebTeam
                        #5158742 - AU04.</xref>
                </li>
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
        <section><title>Seclaw 7.8_PROD Schema</title><p>2013-11-13</p><ul>
                <li>
                    <xref href="../../DITA-UK/UK12-Treatise/UK12_Treatise_introduction.dita">2013-11-13 - Introduction: Updated schema version to 7.8 PROD</xref>
                </li>
                <li>
                    <xref href="../../DITA-UK/UK12-Treatise/UK12_Treatise_note.dita">2013-11-13 -
                        note: Rule change. Now requires <targetxml>text</targetxml> wrapper for
                            <targetxml>marginnote</targetxml>. Also requires merging multiple
                        adjacent <sourcexml>note[@notetype="xref"]</sourcexml> to single
                            <targetxml>marginnote</targetxml>. Applies to UK12. Webteam
                        245550.</xref>
                </li>
                <li>
                    <xref href="../../common_newest/Rosetta_glp.note-Chof-li-LxAdv-listitem-note.dita">2013-11-07 - l/glp:note to list/note: Fixed title to correctly indicate
                        mapping described. Not a rule change.</xref>
                </li>
            </ul></section>
        <section><title>Seclaw 7.6_PROD Schema</title><p>2013-10-31</p><ul>
                <li>
                    <xref href="../../DITA-UK/UK12-Treatise/UK12_Treatise_introduction.dita">2013-10-31 - Introduction: Updated schema version to 7.6 PROD</xref>
                </li>
                <li>
                    <xref href="../../DITA-UK/UK12-Treatise/UK12_Treatise_contrib.dita">2013-10-31 -
                        contrib (and children): New rule. Within rules for
                            <sourcexml>bodytext/contrib</sourcexml>: Added mapping for
                            <sourcexml>bio</sourcexml>. And expanded exceptional rule covering
                        multiple <sourcexml>name.text</sourcexml> to also cover one/more sibling
                            <sourcexml>bio</sourcexml>. Webteam 243988.</xref>
                </li>
                <!-- </ul><p>The following are common module changes</p><ul> -->
                <!-- removed, changelog cleanup 4/1/2016 jhm -->
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
                <li>
                    <xref href="../../common_newest/Rosetta_deflist-LxAdv-deflist.dita">2013-10-14 -
                        deflist to deflist: Added new rule to create a blank defitem/defdesc element
                        after the defterm element. WebTeam # 237242.</xref>
                </li>
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
                    <xref href="../../common_newest/Rosetta_footnote-LxAdv-footnote.dita">2013-10-02
                        - footnotegrp and footnote to footnotegrp and footnote: Not a rule change.
                        Cleaned up the note regarding the scenario when footnote/@fntoken has a
                        value of "0" in an attempt to make the directions clearer.</xref>
                </li>
            </ul>
        </section>
        <section><title>Seclaw 7.4_PROD Schema</title><p>2013-09-24</p>
            <!--<p>The following are common module changes</p>-->
            <!-- removed, changelog cleanup 4/1/2016 jhm -->
            <ul>
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
            </ul></section>
        <section><title>Seclaw 7.4_PROD Schema</title><p>2013-09-12</p><ul>
                <li>
                    <xref href="../../DITA-UK/UK12-Treatise/UK12_Treatise_introduction.dita">2013-09-12 - Introduction: Updated schema version to 7.4 PROD</xref>
                </li>
                <li>
                    <xref href="../../DITA-UK/UK12-Treatise/UK12_Treatise_contrib.dita">2013-09-12 -
                        contrib (and children): Added mapping for new xpath
                            <sourcexml>bodytext/contrib</sourcexml>.</xref>
                </li>
                <!-- </ul><p>The following are common module changes</p><ul> -->
                <!-- removed, changelog cleanup 4/1/2016 jhm -->
                <li>
                    <xref href="../../common_newest/Rosetta_desiglabel-Chof-desig-LxAdv-desig.dita">2013-08-23 - desig/desiglabel to desig: Removed
                            <targetxml>@value</targetxml> from target example element
                            <targetxml>desig</targetxml>, as it was decided, that if source element
                        doesn't contain <sourcexml>@value</sourcexml> then target element
                            <targetxml>desig</targetxml> will not contain
                            <targetxml>@value</targetxml>.</xref>
                </li>
                <li>
                    <xref href="../../common_newest/Rosetta_footnote-LxAdv-footnote.dita">2013-08-22
                        - footnotegrp and footnote to footnotegrp and footnote: Not a rule change.
                        Second target sample modified to remove attribute
                            <targetxml>lnci:cite[@citeref]</targetxml> because value captured in
                        descendant
                            <targetxml>ref:crossreference/ref:locator[@anchoridref]</targetxml>.
                        Ancillary/illustrative within this module. Change made to promote uniformity
                        across samples.</xref>
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
            </ul></section>
        <section><title>Seclaw 7.3_PROD Schema</title><p>2013-07-12</p><ul>
                <li>
                    <xref href="../../DITA-UK/UK12-Treatise/UK12_Treatise_footnote-type-editorial.dita">2013-07-12 - footnote with @type="editorial": Added section with special
                        rule for <sourcexml>footnote[@type="editorial"]</sourcexml>
                    </xref>
                </li>
                <li>
                    <xref href="../../DITA-UK/UK12-Treatise/UK12_Treatise_footnote-dupID.dita">2013-07-12 - footnote duplicate IDs: Correction for target sample: removed
                            <sourcexml>@type="editorial"</sourcexml> from
                            <sourcexml>footnote</sourcexml>.</xref>
                </li>
                <li>
                    <xref href="../../DITA-UK/UK12-Treatise/UK12_Treatise_introduction.dita">2013-07-12 - Introduction: Updated schema version to 7.3 PROD</xref>
                </li>
                <!-- </ul><p>The following are common module changes</p><ul> -->
                <!-- removed, changelog cleanup 4/1/2016 jhm -->
                <li>
                    <xref href="../../common_newest/Rosetta_refpt-Chof-leg.level_leg.level-vrnt_leg.heading_edpnum-LxAdv-primlaw.level_ref.anchor.dita">2013-07-10 - refpt child of leg:level/leg:level-vrnt/leg:heading/edpnum to
                        primlaw:level/ref:anchor: populated the sample content with a sample from
                        AU04 </xref>
                </li>
                <li>
                    <xref href="../../common_newest/Rosetta_title-LxAdv-title.dita">2013-07-05 -
                        title to title: Added Instruction when <sourcexml>title</sourcexml> contains
                        word "TITLE: ".</xref>
                </li>
            </ul></section>
        <section><title>Seclaw 7.0_PROD Schema</title><p>2013-06-18</p><ul>
                <li>
                    <xref href="../../DITA-UK/UK12-Treatise/UK12_Treatise_contrib.dita">2013-06-18 -
                        contrib (and children): Changed mapping for
                            <sourcexml>levelinfo/contrib/org</sourcexml>. Removed
                            <targetxml>contributor</targetxml> from target. Target is now
                            <targetxml>seclaw:prelim/byline/entity:lawfirm</targetxml>.</xref>
                </li>
            </ul></section>
        <section><title>Seclaw 7.0_PROD Schema</title><p>2013-06-12</p><ul>
                <li>
                    <xref href="../../DITA-UK/UK12-Treatise/UK12_Treatise_introduction.dita">2013-06-12 - Introduction: Updated schema version to 7.0 PROD</xref>
                </li>
                <li>
                    <xref href="../../DITA-UK/UK12-Treatise/UK12_Treatise_index.dita">2013-06-11 -
                        index and "in:" children: Removed references to pending CRs. Seclaw schema
                        now allows <targetxml>seclaw:bodytext/index:index</targetxml> and
                            <targetxml>index:entrytext/lnci:cite</targetxml>.</xref>
                </li>
                <li>
                    <xref href="../../DITA-UK/UK12-Treatise/UK12_Treatise_level-bodytext.dita">2013-06-06 - level and bodytext: <sourcexml>level[@leveltype]</sourcexml> -
                        Added special rule for mapping to
                            <targetxml>@leveltype="questionanswergroup"</targetxml> when text is
                        "All Questions". And removed reference to pending CR for values "question"
                        and "answer", now allowed.</xref>
                </li>
                <!-- </ul><p>The following are common module changes</p><ul> -->
                <!-- removed, changelog cleanup 4/1/2016 jhm -->
                <li>
                    <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-06-03 - remotelink to ref:crossreference: Updated the Target XML 2 by
                        removing the <targetxml>@crossreferencetype</targetxml> for Canada
                        example.</xref>
                </li>
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
                <li>
                    <xref href="../../common_newest/Rosetta_CAN_title-Chof-leg.heading_to-LexisAdvance_heading_title.dita">2013-05-22 - leg:heading/title to heading/title: Suppressed the
                        "[@align="center"]" attribute in target mapping and this rule will be
                        applicable for CA05- Acts &amp; Bills, CA06-Regs and CA07-Court
                        Rules.</xref>
                </li>
                <li>
                    <xref href="../../common_newest/Rosetta_docinfo-LxAdv-doc.metadata_doc.docinfo.dita">2013-05-16 - docinfo to doc:metadata/doc:docinfo: Fixed typo updating
                        urn:contentitem to urn:contentItem</xref>
                </li>
            </ul></section>
        <section><title>Seclaw 6.3_PROD Schema</title><p>2013-05-13</p><ul>
                <li>
                    <xref href="../../DITA-UK/UK12-Treatise/UK12_Treatise_introduction.dita">2013-05-13 - Introduction: Updated schema version to 6.3 PROD</xref>
                </li>
                <!-- </ul><p>The following are common module changes</p><ul> -->
                <!-- removed, changelog cleanup 4/1/2016 jhm -->
                <li>
                    <xref href="../../common_newest/Rosetta_blockquote-LxAdv-blockquote.dita">2013-05-08 - blockquote to blockquote: Extended the list of allowable
                        values for image handling.</xref>
                </li>
                <li>
                    <xref href="../../common_newest/Rosetta_inlineobject-LxAdv-ref.inlineobject.dita">2013-05-08 - inlineobject to ref:inlineobject: Extended the list of
                        allowable values for image handling.</xref>
                </li>
                <li>
                    <xref href="../../common_newest/Rosetta_inlineobject-Chof-remotelink-LxAdv-ref.crossreference_ref.content_ref.inlineobject.dita">2013-05-08 - inlineobject Child of remotelink to ref:inlineobject: Extended
                        the list of allowable values for image handling.</xref>
                </li>
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
                <li>
                    <xref href="../../common_newest/Rosetta_inlineobject-Chof-glp.note-LxAdv-SUPPRESS.dita">2013-05-08 - glp:note/inlineobject to: Extended the list of allowable
                        values for image handling.</xref>
                </li>
                <li>
                    <xref href="../../common_newest/Rosetta_inlineobject-Chof-dispformula-LxAdv-formula_ref.inlineobject.dita">2013-05-08 - dispformula/inlineobject to formula/ref:inlineobject: Extended
                        the list of allowable values for image handling.</xref>
                </li>
                <li>
                    <xref href="../../common_newest/Rosetta_inlineobject-Chof-p_blockquote-LxAdv-p_figure_ref.inlineobject.dita">2013-05-08 - p/blockquote/inlineobject to p/figure/ref:inlineobject:
                        Extended the list of allowable values for image handling.</xref>
                </li>
                <li>
                    <xref href="../../common_newest/Rosetta_inlineobject-Chof-bodytext-LxAdv-bodytext_p_text_figure_ref.inlineobject.dita">2013-05-08 - bodytext/inlineobject to
                        bodytext/p/text/figure/ref:inlineobject: Extended the list of allowable
                        values for image handling.</xref>
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
                    <xref href="../../common_newest/Rosetta_blockquote-LxAdv-blockquote.dita">2013-05-01 - blockquote to blockquote: Removed instructions for section
                        "Pre-Release 4.0" because according to latest Apollo markup, section
                        "Release 4.0 and after" and section "Pre-Release 4.0" now have similar
                        conversion markup.</xref>
                </li>
                <li>
                    <xref href="../../common_newest/Rosetta_blockquote-link-LxAdv-blockquote-p-text-ref.lnlink.dita">2013-05-01 - blockquote/link to blockquote/p/text/ref:lnlink: Updated
                        instructions and target example per latest Apollo markup.</xref>
                </li>
                <li>
                    <xref href="../../common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2013-05-01
                        - ci.cite to lnci.cite: Removed special rule for
                            <sourcexml>ci:cite/ci:content/remotelink</sourcexml> which required
                        suppression of <sourcexml>ci:cite/ci:content</sourcexml> tags. The elements
                        are now retained and convert according to common rules.</xref>
                </li>
                <li>
                    <xref href="../../common_newest/Rosetta_inlineobject-LxAdv-ref.inlineobject.dita">2013-05-01 - inlineobject to ref:inlineobject: Removed instructions for
                        section "Pre-Release 4.0" because according to latest Apollo markup, section
                        "Release 4.0 and after" and section "Pre-Release 4.0" now have similar
                        conversion markup.</xref>
                </li>
                <li>
                    <xref href="../../common_newest/Rosetta_inlineobject-Chof-remotelink-LxAdv-ref.crossreference_ref.content_ref.inlineobject.dita">2013-05-01 - inlineobject Child of remotelink to ref:inlineobject: Removed
                        instructions for section "Pre-Release 4.0" because according to latest
                        Apollo markup, section "Release 4.0 and after" and section "Pre-Release 4.0"
                        now have similar conversion markup.</xref>
                </li>
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
                <li>
                    <xref href="../../common_newest/Rosetta_inlineobject-Chof-glp.note-LxAdv-SUPPRESS.dita">2013-05-01 - glp:note/inlineobject to: Removed instructions for section
                        "Pre-Release 4.0" because according to latest Apollo markup, section
                        "Release 4.0 and after" and section "Pre-Release 4.0" now have similar
                        conversion markup.</xref>
                </li>
                <li>
                    <xref href="../../common_newest/Rosetta_inlineobject-Chof-dispformula-LxAdv-formula_ref.inlineobject.dita">2013-05-01 - dispformula/inlineobject to formula/ref:inlineobject: Removed
                        instructions for section "Pre-Release 4.0" because according to latest
                        Apollo markup, section "Release 4.0 and after" and section "Pre-Release 4.0"
                        now have similar conversion markup.</xref>
                </li>
                <li>
                    <xref href="../../common_newest/Rosetta_inlineobject-Chof-p_blockquote-LxAdv-p_figure_ref.inlineobject.dita">2013-05-01 - p/blockquote/inlineobject to p/figure/ref:inlineobject:
                        Removed instructions for section "Pre-Release 4.0" because according to
                        latest Apollo markup, section "Release 4.0 and after" and section
                        "Pre-Release 4.0" now have similar conversion markup.</xref>
                </li>
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
                <li>
                    <xref href="../../common_newest/Rosetta_leg.histnote-Chof-p-LxAdv-note.dita">2013-05-01 - p/leg:histnote to note[@notetype="historical"]: Updated
                        instructions and target example per latest Apollo markup.</xref>
                </li>
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
                <li>
                    <xref href="../../common_newest/Rosetta_blockquote-LxAdv-blockquote.dita">2013-04-30 - blockquote to blockquote: Updated target sample according to
                        latest Apollo markup.</xref>
                </li>
                <li>
                    <xref href="../../common_newest/Rosetta_inlineobject-LxAdv-ref.inlineobject.dita">2013-04-30 - inlineobject to ref:inlineobject: Updated target sample
                        according to latest Apollo markup.</xref>
                </li>
                <li>
                    <xref href="../../common_newest/Rosetta_inlineobject-Chof-remotelink-LxAdv-ref.crossreference_ref.content_ref.inlineobject.dita">2013-04-30 - inlineobject Child of remotelink to ref:inlineobject: Updated
                        target sample according to latest Apollo markup.</xref>
                </li>
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
                <li>
                    <xref href="../../common_newest/Rosetta_inlineobject-Chof-glp.note-LxAdv-SUPPRESS.dita">2013-04-30 - glp:note/inlineobject to: Updated target sample according to
                        latest Apollo markup.</xref>
                </li>
                <li>
                    <xref href="../../common_newest/Rosetta_inlineobject-Chof-dispformula-LxAdv-formula_ref.inlineobject.dita">2013-04-30 - dispformula/inlineobject to formula/ref:inlineobject: Updated
                        target sample according to latest Apollo markup.</xref>
                </li>
                <li>
                    <xref href="../../common_newest/Rosetta_inlineobject-Chof-p_blockquote-LxAdv-p_figure_ref.inlineobject.dita">2013-04-30 - p/blockquote/inlineobject to p/figure/ref:inlineobject:
                        Updated target sample according to latest Apollo markup.</xref>
                </li>
                <li>
                    <xref href="../../common_newest/Rosetta_inlineobject-Chof-bodytext-LxAdv-bodytext_p_text_figure_ref.inlineobject.dita">2013-04-30 - bodytext/inlineobject to
                        bodytext/p/text/figure/ref:inlineobject: Updated target sample according to
                        latest Apollo markup.</xref>
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
            <title>seclaw 6.1_PROD Schema</title>
            <p>2013-04-19</p><ul>
                <li>Created</li>
            </ul>
        </section>
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK12-Treatise\UK12_Treatise_changeLog.dita  -->
	<xsl:message>UK12_Treatise_changeLog.xsl requires manual development!</xsl:message> 

</xsl:stylesheet>