<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:ci="http://www.lexis-nexis.com/ci" xmlns:source_cttr="http://www.lexis-nexis.com/glp/cttr" xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:source_lnci="http://www.lexis-nexis.com/lnci" xmlns:caseinfo="http://www.lexisnexis.com/xmlschemas/content/legal/case-information/1/" xmlns:cttr="urn:x-lexisnexis:content:citator:sharedservices:1" xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" xmlns:jurisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/jurisdiction-info/1/" xmlns:lnci="http://www.lexisnexis.com/xmlschemas/content/shared/citations/1/" xmlns:proc="http://www.lexisnexis.com/xmlschemas/content/shared/process-elements/1/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita case ci cttr docinfo leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="citator-change-log">
  <title>Change Log for Citator</title>
  <body>
    <section>
      <title>Citator - 1.17 PROD</title>
      <p>2017-01-17:
        <ul>
          <li>
            <xref href="../../../Rosetta/DITA-UK/UK05_Citator/subseqcases_cttr.annot.dita">2017-01-17 - cttr:annotations/@annotationtype="subseqcases"/cttr:annot id-UK05-27823: Use <sourcexml>cttr:annot/@signal</sourcexml> to
              determine the value for
              <targetxml>ref:crossreference/@referencedresourcesentiment</targetxml>.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/DITA-UK/UK05_Citator/consideredcases_cttr.annot.dita">2017-01-17 - cttr:annotations/@annotationtype="consideredcases"/cttr:annot id-UK05-27814: Use <sourcexml>cttr:annot/@signal</sourcexml> to
              determine the value for
              <targetxml>ref:crossreference/@referencedresourcesentiment</targetxml>.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/DITA-UK/UK05_Citator/appealproc_cttr.annot.dita">2017-01-17 - cttr:annotations @annotationtype="appealproc"/cttr:annot id-UK05-27807: Use <sourcexml>cttr:annot/@signal</sourcexml> to
              determine the value for
              <targetxml>ref:crossreference/@referencedresourcesentiment</targetxml>.</xref>
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
      </p>
    </section>
    <section>
      <title>Citator - 1.17 PROD</title>
      <p>2016-12-14:
      <ul>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_UK_docinfo.custom-metafields-LxAdv-dc.date_or_doc.docinfo_classify.classification.dita">2016-11-30 - (UK) docinfo:custom-metafield to dc:date or doc:metadata/doc:docinfo/classify:classification[@classscheme="uk-functional-information"] id-CCCC-10547: Added rule for "isDocBuilderAvailable"; and
            updated the example.</xref>
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
      </ul>
      </p>
    </section>
      <section>
        <title>Citator - 1.17 PROD</title>
        <p>2016-11-17:
        <ul>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_inlineobject-LxAdv-ref.inlineobject_BLOBSTORE.dita">2016-11-07 - inlineobject to ref:inlineobject for BLOBSTORE images id-CCCC-10540: Updated the instruction for ref:key-name and
              proc:param attribute values.</xref>
          </li>
        </ul>
        </p>
      </section>
          <section>
      <title>Citator - 1.17 PROD</title>
      <p>2016-10-28:
      <ul>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_inlineobject-LxAdv-ref.inlineobject_BLOBSTORE.dita">2016-10-21 - inlineobject to ref:inlineobject for BLOBSTORE images id-CCCC-10540: Changed one proc:param name for target. Formerly
            <targetxml>@name="attachment-server"</targetxml>; changed to
            <targetxml>@name="object-server"</targetxml>.</xref>
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
      </ul>
      </p>
    </section>
    <section>
      <title>Citator - 1.17 PROD</title>
      <p>2016-09-08: <ul>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_UK_docinfo.custom-metafields-LxAdv-dc.date_or_doc.docinfo_classify.classification.dita">2016-09-08 - (UK) docinfo:custom-metafield to dc:date or
              doc:metadata/doc:docinfo/classify:classification[@classscheme="uk-functional-information"]
              id-CCCC-10547: Added rule for attribute <sourcexml>@name</sourcexml> with value
              "containsAppealTracker"; and updated the example.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2016-08-03 - remotelink to ref:crossreference id-CCCC-10465: Added Note about xml
              snippets that illustrate image handling. Note summarizes move from Apollo to Blobstore
              application. UK is first LBU to move to Blobstore.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_inlineobject-Chof-emph-LxAdv-figure_ref.inlinobject.dita">2016-08-01 - emph/inlineobject to figure/ref:inlineobject id-CCCC-10359: Added Note
              about xml snippets that illustrate image handling. Note summarizes move from Apollo to
              Blobstore application. UK is first LBU to move to Blobstore.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_inlineobject-Chof-dispformula-LxAdv-formula_ref.inlineobject.dita">2016-08-01 - dispformula/inlineobject to formula/ref:inlineobject id-CCCC-10358:
              Added Note about xml snippets that illustrate image handling. Note summarizes move
              from Apollo to Blobstore application. UK is first LBU to move to Blobstore.</xref>
          </li>
        </ul>
      </p>
    </section>
    <section>
      <title>Citator - 1.17 PROD</title>
      <p>2016-07-29 BRT: 
      <ul>
        <li>
            <xref href="../../../Rosetta/DITA-UK/UK05_Citator/lexiscitation.dita">2016-07-29 -
              LexisCitation id-UK05-27825: Added a note that LexisCitation should NOT be converted
              to <targetxml>cttr:caseinfo/ref:citations/ref:cite4thisresource</targetxml>.</xref>
          </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_inlineobject-LxAdv-figure_ref.inlineobject.dita">2016-07-29 - inlineobject to figure/ref:inlineobject id-CCCC-10368: Added Note about xml snippets that illustrate
            image handling. Note summarizes move from Apollo to Blobstore application. UK is
            first LBU to move to Blobstore.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_inlineobject-LxAdv-figure_ref.inlineobject.dita">2016-07-29 - inlineobject to figure/ref:inlineobject id-CCCC-10368: Added Note about xml snippets that illustrate
            image handling. Note summarizes move from Apollo to Blobstore application. UK is
            first LBU to move to Blobstore.</xref>
        </li></ul></p>
      <p>2016-07-27 BRT: 
        <ul>
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
          <xref href="../../../Rosetta/common_newest/Rosetta_UK_docinfo-LxAdv-doc.docinfo_classify.classification.dita">2016-07-20 - (UK) docinfo to doc:metadata/doc:docinfo/classify:classification[@classscheme="uk-functional-information"] id-CCCC-10546: Created. New rules.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/DITA-UK/UK05_Citator/lexiscitation.dita">2016-07-19 - LexisCitation id-UK05-27825: Changed source markup from <sourcexml>docinfo:doc-id</sourcexml> to <sourcexml>case:parallelcite</sourcexml>. </xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_UK_docinfo.custom-metafields-LxAdv-dc.date_or_doc.docinfo_classify.classification.dita">2016-07-13 - (UK) docinfo:custom-metafield to dc:date or doc:metadata/doc:docinfo/classify:classification[@classscheme="uk-functional-information"] id-CCCC-10547: Added rules for "createdDate", "updatedDate", and "inEditorialReview"; and updated the example.</xref>
        </li>
      </ul></p>
      <p>2016-06-24 BRT: <ul>
        <li>
          <xref href="../../../Rosetta/DITA-UK/UK05_Citator/lexiscitation.dita">2016-06-24 - LexisCitation: Created. </xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_refpt-Chof-p_text-LxAdv-p_ref.anchor.dita">2016-04-28 - refpt child of p/text to p/ref:anchor id-CCCC-10456: Added one more source and target example.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_emph-LxAdv-emph.dita">2016-04-01 - emph to emph id-CCCC-10316: Added statement to clarify that children of emph should be processed.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2016-03-23 - ci.cite to lnci.cite id-CCCC-10268: Updated main instructions to clarify that descendants of ci:cite, and not just children, are to be processed.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_edpnum-LxAdv-desig.dita">2016-03-15 - edpnum to desig id-CCCC-10308: Added rule for handling scenario when
            <sourcexml>pnum</sourcexml> and <sourcexml>edpnum </sourcexml> occur as
            siblings (applicable only for UK22CS). [RFA #2755]</xref>
        </li>
      </ul>
      </p>
    </section>
    <section>
      <title>Citator - 1.16 PROD</title>
      <p>2016-02-26 BRT: <ul>
          <li>
            <xref href="../../../Rosetta/DITA-UK/UK05_Citator/cttr.summary.dita">2016-02-26 -
              cttr:summary id-UK05-27815: Added rule to use instructions under General Markup to
              convert the children of <sourcexml>text</sourcexml>. </xref>
          </li>
          <li>
            <xref href="../../../Rosetta/DITA-UK/UK05_Citator/Rosetta_case.casename-LxAdv-dc.title.dita">2016-02-24 - case:casename to dc:title id-UK05-27824: Modified topic to clarify the
              source path. Aadded more rules and a second example.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/DITA-UK/UK05_Citator/Rosetta_case.casename-LxAdv-dc.title.dita">2016-02-19 - case:casename to dc:title id-UK05-27824: Created as new topic, removed
                <sourcexml>docinfo:doc-heading</sourcexml> to <targetxml>dc:title</targetxml>
              conversion.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2016-02-05 - remotelink to ref:crossreference id-CCCC-10465: Added note and example
              when <sourcexml>remotelink</sourcexml> is a child of <sourcexml>emph</sourcexml>.
              Applicable on NZ17CC, Webstar: 319232 and 318735.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/DITA-UK/UK05_Citator/cttr.summary.dita">2016-01-21 -
              cttr:summary id-UK05-27815: Added instructions for handling multiple instances of
                <sourcexml>nl</sourcexml>. </xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_inlineobject-Chof-p_blockquote-LxAdv-p_figure_ref.inlineobject.dita">2015-12-08 - p/blockquote/inlineobject to p/figure/ref:inlineobject id-CCCC-10363:
              Added '.tiff' to the list of allowable values for
                <sourcexml>proc:param[@name="object-type"]/@value="image"</sourcexml>.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_inlineobject-Chof-p_blockquote-LxAdv-p_figure_ref.inlineobject.dita">2015-11-17 - p/blockquote/inlineobject to p/figure/ref:inlineobject id-CCCC-10363:
              Added note to use a different instruction if <sourcexml>inlineobject</sourcexml>
              contains siblings.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_inlineobject-LxAdv-ref.inlineobject.dita">2015-11-16 - inlineobject to ref:inlineobject id-CCCC-10369: Added instruction for
                <sourcexml>inlineobject/@key</sourcexml> to be suppressed.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2015-09-15 - ci.cite to lnci.cite id-CCCC-10268: Updated instruction to suppressed
              the attribute <sourcexml>@type</sourcexml> with value "legref" in target. Applicable
              on NZ Regulation and NZ Act from services [Webstar #6245139].</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.overview-LxAdv-docinfo.overview.dita">2015-09-08 - docinfo:overview to doc:overview id-CCCC-10303: Added the handling of
              new attribute value "abstract" inside the <targetxml>docinfo:overview@type</targetxml>
              markup for UK streams and it should be mapped with
                <targetxml>doc:overview@type="abstract"</targetxml>. R4.5 Content Issue List
              #2391.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_inlineobject-Chof-emph-LxAdv-figure_ref.inlinobject.dita">2015-08-12 - emph/inlineobject to figure/ref:inlineobject id-CCCC-10359: Added
              instruction and example for
                <sourcexml>leg:comntry/level/bodytext/heading/title/emph/inlineobject</sourcexml>,
              Applicable on UK07, R4.5 issue # 2364.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_inlineobject-Chof-emph-LxAdv-figure_ref.inlinobject.dita">2015-07-24 - emph/inlineobject to figure/ref:inlineobject id-CCCC-10359: When
              Inlineobject is followed by two emph elements of same typestyle
                <sourcexml>sup/emph/emph/inlineobject</sourcexml>then from Target we should drop the
              one emph element and the followed <sourcexml>emph/inlineobject</sourcexml> should
              mapped with <targetxml>emph/ref:inlineobject</targetxml> in Target.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_inlineobject-Chof-emph-LxAdv-figure_ref.inlinobject.dita">2015-07-21 - emph/inlineobject to figure/ref:inlineobject id-CCCC-10359: When
              Inlineobject is followed by two emph elements of same typestyle then from Target we
              should drop the one emph element and the followed
                <sourcexml>emph/inlineobject</sourcexml> should mapped with
                <targetxml>figure/ref:inlineobject</targetxml> in Target.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2015-06-24 - remotelink to ref:crossreference id-CCCC-10465: Added clarification note
              about url, @normval, and @hrefclass. Webstar 302055.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_inlineobject-Chof-emph-LxAdv-figure_ref.inlinobject.dita">2015-06-18 - emph/inlineobject to figure/ref:inlineobject id-CCCC-10359: When source
              is having emph followed by inlineobject inside base:h element
                <sourcexml>h/emph/inlineobject</sourcexml> than in Target it should Map it like
                <targetxml>emph/ref:inlineobject</targetxml> as emph containing text under
              it.</xref>
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
              indicate <sourcexml>remotelink/@status</sourcexml> is always dropped (suppressed).
              This is a very low-priority change and has been added for technical correctness,
              particularly with respect to new CIs. Existing scripts do not have to implement this
              change unless needed since prior to the change
                <targetxml>remotelink/@status</targetxml> handling was not explicitly
              specified.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_docinfo-LxAdv-doc.metadata_doc.docinfo.dita">2015-04-14 - docinfo to doc:metadata/doc:docinfo id-CCCC-10282: Remove bullet icon in
              sub nested list for handling Indentation isssue.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2015-03-17 - ci.cite to lnci.cite id-CCCC-10268: An attribute
                <targetxml>@inline</targetxml> get added with <targetxml>desig</targetxml> element
              even when the source<sourcexml>pnum</sourcexml> is not having that
                attribute<sourcexml>@inline</sourcexml> Applicable on CA12 only.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_pgrp-LxAdv-pgrp.dita">2015-03-17 -
              pgrp to pgrp id-CCCC-10431: An attribute <targetxml>@inline</targetxml> get added with
                <targetxml>desig</targetxml> element even when the source<sourcexml>pnum</sourcexml>
              is not having that attribute<sourcexml>@inline</sourcexml> Applicable on CA12
              only.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2015-02-24 - ci.cite to lnci.cite id-CCCC-10268: Example updated as per new rule an
              attribute <targetxml>@inline</targetxml>get added with
              <targetxml>desig</targetxml>element when the source<sourcexml>pnum</sourcexml>is not
              having that attribute<sourcexml>@inline</sourcexml>
            </xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_pgrp-LxAdv-pgrp.dita">2015-02-24 -
              pgrp to pgrp id-CCCC-10431: Example updated as per new rule an attribute
                <targetxml>@inline</targetxml>get added with <targetxml>desig</targetxml>element
              when the source<sourcexml>pnum</sourcexml>is not having that
                attribute<sourcexml>@inline</sourcexml>
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
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_remotelink-Chof-url-LxAdv-url.dita">2015-01-09 - url/remotelink to url id-CCCC-10464: Within use case that maps to
                <targetxml>ref:lnlink</targetxml>, added exceptional rule to not concatenate values
              when <sourcexml>@hrefclass</sourcexml> content is already present in
                <sourcexml>@href</sourcexml>. Expanded example to illustrate the scenario. Responds
              to data for UK10 Dictionaries but applies in general. R4.5 Content Issue 2120.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2014-12-08 - ci.cite to lnci.cite id-CCCC-10268: Addition of mapping for
                <sourcexml>ci:pinpoint</sourcexml> to <targetxml>lnci:pinpoint</targetxml> and
              example from US LPA content.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.overview-LxAdv-docinfo.overview.dita">2014-11-04 - docinfo:overview to doc:overview id-CCCC-10303: Clarification only:
              added text to explicitly indicate that the child
                <targetxml>doc:overview/bodytext</targetxml> should be created. Not a change to
              instructions.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2014-10-27 - remotelink to ref:crossreference id-CCCC-10465: Minor. Within use case
              for <sourcexml>@service="DOC-ID"</sourcexml>, rule for
                <sourcexml>@remotekey1="REFPTID"</sourcexml> now also applies when
                <sourcexml>@remotekey1="REFPT"</sourcexml>. That is, the condition is expanded to
              include value <sourcexml>"REFPT"</sourcexml>; the mapping is unchanged. The value
                <sourcexml>"REFPT"</sourcexml> is new in Oct 2014 redelivery of UK11-DN but the rule
              applies to any stream where <sourcexml>@remotekey1="REFPT"</sourcexml> may occur. R4.5
              Content Issue 2003.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.overview-LxAdv-docinfo.overview.dita">2014-10-21 - docinfo:overview to doc:overview id-CCCC-10303: added to UK09
              ditamap.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_inlineobject-LxAdv-figure_ref.inlineobject.dita">2014-10-13 - inlineobject to figure/ref:inlineobject id-CCCC-10368: Added note and
              example to suppress <targetxml>proc:nl</targetxml> from before and after of
                <targetxml>figure/inlineobject</targetxml> when it comes inside
                <targetxml>verbatim</targetxml> element.</xref>
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
            <xref href="../../../Rosetta/common_newest/Rosetta_text-LxAdv-text.dita">2014-08-11 -
              text to text id-CCCC-10477: For CANADA Content Stream: Only move the <sourcexml>
                text@align</sourcexml> to the parent <targetxml>p</targetxml> if it is the only text
              in <sourcexml>p</sourcexml>, Otherwise, wrap the <sourcexml>text</sourcexml> with
                <targetxml>p</targetxml> and move the <sourcexml>@align</sourcexml> attribute to the
              newly created <targetxml> p</targetxml>.</xref>
          </li>
        </ul></p>
    </section>
    <section>
      <title>Citator - 3.11_ALPHA</title>
      <p>2014-08-04 BRT:</p>
      <ul>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.overview-LxAdv-docinfo.overview.dita">2014-08-04 - docinfo:overview to doc:overview id-CCCC-10303: added to UK05 ditamap.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_inlineobject-LxAdv-ref.inlineobject.dita">2014-07-08 - inlineobject to ref:inlineobject id-CCCC-10369: Not a rule change. Clarification added to note regarding suppression of <sourcexml>inlineobject</sourcexml> when <sourcexml>inlineobject/@filename</sourcexml> contains certain values.</xref>
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
          <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.doc-id-LxAdv-dcidentifier_lnmetaidentifier-scheme.dita">2014-05-21 - docinfo:doc-id to dc:identifier[@lnmeta:identifier-scheme] id-CCCC-10293: For CA05 Acts and Bills- Mapping in dc:identifier for act-no and chunk-no.. Db issue #1464 </xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_p-LxAdv-p.dita">2014-04-14 - p to p id-CCCC-10424: Removed Colons from Labels.. DB item #1255</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2014-02-25 - remotelink to ref:crossreference id-CCCC-10465: Updated instruction and created new example (#16) for handling <sourcexml>remotelink[@service="QUERY"]</sourcexml>. New instruction preserves pcdata but suppresses <sourcexml>remotelink</sourcexml> markup. Webstar #250335. Change applies immediately to all Pacific streams, and in the long run to all streams.</xref>
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
          <xref href="../../../Rosetta/common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2014-02-03 - remotelink to ref:crossreference id-CCCC-10465: Instruction updated if <sourcexml>remotelink</sourcexml> occurs as multiple, immediate siblings and without intermediary text within <sourcexml>title</sourcexml>. Also added a example for the same scenario. Phase 5 UK discussion-defect tracking issue #161</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_text-LxAdv-text.dita">2014-01-31 - text to text id-CCCC-10477: Updated instruction, <targetxml>align</targetxml> will be moved in <targetxml>p</targetxml> in NL conversion. NZ09 commentary discussion board issue for handling <sourcexml>text/@align</sourcexml>
          </xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_Elements-LxAdv-Empty_Elements.dita">2014-01-16 - Suppress each empty element unless otherwise stated id-CCCC-10310: Added list of elements to suppress if empty.</xref>
        </li>
      </ul>
    </section>
    
    <section>
      <title>Citator - 3.5_ALPHA</title>
      <p>2014-01-13</p>
      <ul>
        <li>
          <xref href="../../DITA-UK/UK05_Citator/subseqarticles_cttr.annot.dita">2014-01-13 - cttr:annotations/@annotationtype="subseqarticles"/cttr:annot: Added note to convert
            <sourcexml>cttr:annot/remotelink/inlineobject/@filename</sourcexml> to
            <targetxml>cttr:refitem/cttr:citingpub/@treatment</targetxml> when <sourcexml>cttr:annot/@signal</sourcexml> is not present.</xref>
        </li>
        <li>
          <xref href="../../DITA-UK/UK05_Citator/consideredcases_cttr.annot.dita">2014-01-13 - cttr:annotations/@annotationtype="consideredcases"/cttr:annot: Added note to convert
            <sourcexml>cttr:annot/remotelink/inlineobject/@filename</sourcexml> to
            <targetxml>cttr:refitem/cttr:consideredcase/@treatment</targetxml> when <sourcexml>cttr:annot/@signal</sourcexml> is not present.</xref>
        </li>
        <li>
          <xref href="../../DITA-UK/UK05_Citator/appealproc_cttr.annot.dita">2014-01-13 - cttr:annotations @annotationtype="appealproc"/cttr:annot: Added note to convert
            <sourcexml>cttr:annot/remotelink/inlineobject/@filename</sourcexml> to
            <targetxml>cttr:refitem/cttr:appealproceeding/@treatment</targetxml> when <sourcexml>cttr:annot/@signal</sourcexml> is not present.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2013-12-30 - ci.cite to lnci.cite: Minor illustrative change. Added "(AU
            Journals/Newsitem)" to headings for last example to clarify that retention of
            <sourcexml>@type="cite4thisdoc"</sourcexml> is an exception for that
            content, as already described in narrative rules.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_endnote-LxAdv-endnote.dita">2013-12-18 - endnote to endnote: Instruction added to convert <sourcexml>remotelink/@refpt</sourcexml> to <targetxml>footnote-ref/@anchoridref</targetxml>.  WebTeam #5158742 - AU04. Applies generally to all LBUs and streams.</xref>
        </li>
      </ul>
      </section>
    <section>
      <title>Citator - 3.5_ALPHA</title>
      <p>2013-12-11</p>
      <ul>
        <li>
          <xref href="../../common_newest/Rosetta_UK_docinfo.custom-metafields-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta.meta.metaitem.dita">2013-12-11 - This document included another topic for processing
            docinfo:custom-metafields that is for Pacific LBUs. That topic was removed  from UK05
            for this release. Use the link to this topic instead.</xref>
        </li>
        <li>
          <xref href="../../DITA-UK/UK05_Citator/subseqcases_cttr.annot.dita">2013-12-11 - cttr:annotations/@annotationtype="subseqcases"/cttr:annot: Modified instructions to determine the value for
            <targetxml>ref:crossreference/@referencedresourcesentiment</targetxml> - replaced 'citation' with 'none'.</xref>
        </li>
        <li>
          <xref href="../../DITA-UK/UK05_Citator/consideredcases_cttr.annot.dita">2013-12-11 - cttr:annotations/@annotationtype="consideredcases"/cttr:annot: Modified instructions to determine the value for
            <targetxml>ref:crossreference/@referencedresourcesentiment</targetxml> - replaced 'citation' with 'none'.</xref>
        </li>
        <li>
          <xref href="../../DITA-UK/UK05_Citator/appealproc_cttr.annot.dita">2013-12-11 - cttr:annotations @annotationtype="appealproc"/cttr:annot: Modified instructions to determine the value for
            <targetxml>ref:crossreference/@referencedresourcesentiment</targetxml> - replaced 'citation' with 'none'.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_p-LxAdv-p.dita">2013-12-04 - p to p: Updated target example when <sourcexml>p</sourcexml> or <sourcexml>p/@nl="0"</sourcexml> comes in <sourcexml>references</sourcexml>, this change directly affects NZ07.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_p-LxAdv-p.dita">2013-11-21 - p to p: Updated instruction and example <sourcexml>p</sourcexml> or <sourcexml>p/@nl="0"</sourcexml> comes in <sourcexml>references</sourcexml>, this change directly affects NZ07.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_UK_docinfo.custom-metafields-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta.meta.metaitem.dita">2013-11-20 - docinfo:custom-metafields to doc:legacy-metadata[@metadatasource="lbu-meta"]/meta/metaitem: Added instruction to handle
            <sourcexml>docinfo:custom-metafields/docinfo:custom-metafield/@name="jurisdiction"</sourcexml>
            is "European"  Webteam # 239816 </xref>
        </li>
      </ul>
    </section>
    
    <section>
      <title>Citator - 3.5_ALPHA</title>
      <p>2013-11-19</p>
      <ul>
        <li>
          <xref href="../../DITA-UK/UK05_Citator/parallelcite.dita">2013-11-14 - parallelcite: Added instructions and examples for duplicating the citation in <targetxml>cttr:caseinfo/cttr:citations</targetxml>. </xref>
        </li>
        <li>
          <xref href="../../DITA-UK/UK05_Citator/subseqcases_cttr.annot.dita">2013-11-13 - cttr:annotations/@annotationtype="subseqcases"/cttr:annot: Added instructions to determine the value for
            <targetxml>ref:crossreference/@referencedresourcesentiment</targetxml>.</xref>
        </li>
        <li>
          <xref href="../../DITA-UK/UK05_Citator/consideredcases_cttr.annot.dita">2013-11-13 - cttr:annotations/@annotationtype="consideredcases"/cttr:annot: Added instructions to determine the value for
            <targetxml>ref:crossreference/@referencedresourcesentiment</targetxml>.</xref>
        </li>
        <li>
          <xref href="../../DITA-UK/UK05_Citator/appealproc_cttr.annot.dita">2013-11-13 - cttr:annotations @annotationtype="appealproc"/cttr:annot: Added instructions to determine the value for
            <targetxml>ref:crossreference/@referencedresourcesentiment</targetxml>.</xref>
        </li>
      </ul>
    </section>
    <section>
      <title>Citator - 3.5_ALPHA</title>
      <p>2013-10-30</p>
      <ul>
        <li>
          <xref href="../../common_newest/LxAdv-cttr.usagegroup_AddingSortWeightInformation.dita">2013-10-30 - Adding Sort Weight Information to cttr:usagegroup: Added second XPath for <sourcexml>case:descisiondate</sourcexml>. Paths are different for UK citator documents than originally listed.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_p-LxAdv-p.dita">2013-10-25 - p to p: Added instruction and example <sourcexml>p/@nl="0"</sourcexml> comes in <sourcexml>references</sourcexml>.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-10-23 - remotelink to ref:crossreference: Added Example when <sourcexml>remotelink</sourcexml> having child <sourcexml>emph</sourcexml>. Webteam # 239816</xref>
        </li>
      </ul>
    </section>
    
    <section>
      <title>Citator - 3.5_ALPHA</title>
      <p>2013-10-22</p>
      <ul>
        <li>
          <xref href="../../DITA-UK/UK05_Citator/subseqcases_cttr.annot.dita">2013-10-22 - cttr:annotations/@annotationtype="subseqcases"/cttr:annot: Added instructions to convert <sourcexml>cttr:annot/@signal</sourcexml> to <targetxml>cttr:refitem/cttr:citingcase/@treatment</targetxml>.</xref>
        </li>
        <li>
          <xref href="../../DITA-UK/UK05_Citator/subseqarticles_cttr.annot.dita">2013-10-22 - cttr:annotations/@annotationtype="subseqarticles"/cttr:annot: Added instructions to convert
            <sourcexml>cttr:annot/@signal</sourcexml> to
            <targetxml>cttr:refitem/cttr:citingpub/@treatment</targetxml>.</xref>
        </li>
        <li>
          <xref href="../../DITA-UK/UK05_Citator/consideredcases_cttr.annot.dita">2013-10-22 - cttr:annotations/@annotationtype="consideredcases"/cttr:annot: Added instructions to convert
            <sourcexml>cttr:annot/@signal</sourcexml> to
            <targetxml>cttr:refitem/cttr:consideredcase/@treatment</targetxml>.</xref>
        </li>
        <li>
          <xref href="../../DITA-UK/UK05_Citator/appealproc_cttr.annot.dita">2013-10-22 - cttr:annotations @annotationtype="appealproc"/cttr:annot: Added instructions to convert
            <sourcexml>cttr:annot/@signal</sourcexml> to
            <targetxml>cttr:refitem/cttr:appealproceeding/@treatment</targetxml>.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_edpnum-LxAdv-desig.dita">2013-10-22 - edpnum to desig: Not a rule change. Modified 2nd example for
            clarity. Removed <sourcexml>refpt</sourcexml> from source markup. Not pertinent
            to <sourcexml>edpnum</sourcexml> rules. Separate rules for
            <sourcexml>refpt</sourcexml> provide details. Responds to UK LBU
            query.</xref>
        </li>
      </ul>
    </section>
    
    <section>
      <title>Citator - 3.5_ALPHA</title>
      <p>2013-10-18</p>
      <ul>
        <li>
          <xref href="../../common_newest/Rosetta_docinfo.doc-heading-LxAdv-dc.title.dita">2013-10-18 - docinfo:doc-heading to dc:title: Updated Instruction when <sourcexml>docinfo:doc-heading</sourcexml> contains word RULE: " or STATUTE: .</xref>
        </li>
        <li>
          <xref href="../../DITA-UK/UK05_Citator/Rosetta_case.casename-to-LexisAdvance_caseinfo.fullcasename.dita">2013-10-17 - case:casename-to-caseinfo:fullcasename: Added instruction and modified examples to create
            an additional path for converting <sourcexml>case:casename/ci:cite</sourcexml> to
            <targetxml>cttr:caseinfo/cttr: cttr:citations/lnci:cite</targetxml>. This change creates
            a second duplicate of the citation. </xref>
        </li>
        <li>
          <xref href="../../common_newest/LxAdv-cttr.usagegroup_AddingSortWeightInformation.dita">2013-10-16 - Adding Sort Weight Information to cttr:usagegroup: Further updates per Shan's "CaseBase Case Citator - Table Sorting &amp; Filtering" document: WebTeams 233689, 233908, and 233912.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_Elements-LxAdv-Empty_Elements.dita">2013-10-14 - Suppress each empty element unless otherwise stated: Changed antecedent to singular to match instructions.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_refpt-Chof-p_text-LxAdv-p_ref.anchor.dita">2013-10-11 - refpt child of p/text to p/ref:anchor: Added a note and update the target examples when refpt
            comes without attribute <sourcexml>[@type="ext"]</sourcexml> and
            <sourcexml>[@type="local"]</sourcexml> in source documents.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_refpt-Chof-p_text_emph-LxAdv-p_ref.anchor.dita">2013-10-11 - refpt child of p/text/emph to p/ref:anchor: Added a note and update the target examples when refpt
            comes without attribute <sourcexml>[@type="ext"]</sourcexml> and
            <sourcexml>[@type="local"]</sourcexml> in source documents.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_p-LxAdv-p.dita">2013-10-09 - p to p: Added instruction and example <sourcexml>p</sourcexml> comes with <sourcexml>@nl=”0”</sourcexml>.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_endnote-LxAdv-endnote.dita">2013-10-07 - endnote to endnote: Instruction and example for added for the Xpath <sourcexml>leg:bodytext/glp:note/l/li</sourcexml> related to <targetxml>endnote</targetxml> handling. WebTeam # is 238790.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-10-03 - remotelink to ref:crossreference: Added use case where remotelink contains @href which is a URL but does not contain @hrefclass='http'.</xref>
        </li>
        <li>
          <xref href="../../common_newest/LxAdv-cttr.usagegroup_AddingSortWeightInformation.dita">2013-09-18 - Adding Sort Weight Information to cttr:usagegroup: Updated per Shan's "CaseBase Case Citator - Table Sorting &amp; Filtering" document amended 22 August 2012: WebTeams 233689, 233908, and 233912.</xref>
        </li>
      </ul>
    </section>
    <section>
      <title>Citator - 3.4_ALPHA</title>
      <p>2013-09-16</p>
      <ul>
            <li>
               <xref href="../../common_newest/Rosetta_table-LxAdv-table.dita">2013-09-16 - table to table: Removed an obsolete note regarding visual styling of tables.</xref>
            </li>
            <li>
               <xref href="../../common_newest/Rosetta_table-LxAdv-table.dita">2013-09-12 - table to table: WebTeam #s 235116, 235130, 235126: Added instructions for deleting extraneous instances of @morerows, @colsep and @rowsep. These instructions apply immediately to all UK streams and also to AU18.</xref>
            </li>
            <li>
               <xref href="../../common_newest/Rosetta_title-LxAdv-title.dita">2013-09-03 - title to title: Updated Instruction when <sourcexml>title</sourcexml> contains word "TITLE: " or "NAME: " or "SITE: ".</xref>
            </li>
      </ul>
      </section>
    <section>
      <title>Citator - 3.3_ALPHA</title>
      <p>2013-09-03</p>
      <ul>
        <li>
          <xref href="../../common_newest/LxAdv-cttr.usagegroup_AddingSortWeightInformation.dita">2013-09-03 - Adding Sort Weight Information to cttr:usagegroup: Created.</xref>
        </li>
        <li>
          <xref href="../../DITA-UK/UK05_Citator/parallelcite.dita">2013-08-30 - parallelcite: Removed instruction for creating
            <targetxml>ref:cite4thisresource[@citetype="parallel"]</targetxml>.  Added markup
            example showing <sourcexml>case:parallelcite</sourcexml> with one and more than one
            <sourcexml>ci:cite</sourcexml> child.</xref>
        </li>
        <li>
          <xref href="../../DITA-UK/UK05_Citator/subseqcases_cttr.annot.dita">2013-08-30 - cttr:annotations/@annotationtype="subseqcases"/cttr:annot: Added reference to instruction for attributes <targetxml>@negativesortweight</targetxml> and <targetxml>@positivesortweight</targetxml> of <targetxml>cttr:usagegroup</targetxml>. WebTeam # 233689</xref>
        </li>
        <li>
          <xref href="../../DITA-UK/UK05_Citator/consideredcases_cttr.annot.dita">2013-08-30 - cttr:annotations/@annotationtype="consideredcases"/cttr:annot: Added reference to instruction for attributes <targetxml>@negativesortweight</targetxml> and <targetxml>@positivesortweight</targetxml> of <targetxml>cttr:usagegroup</targetxml>. WebTeam # 233689</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-08-22 - remotelink to ref:crossreference: Not a rule change. Modified Sample #10 on
            <sourcexml>ci:cite/ci:content/remotelink</sourcexml>. Removed target attribute
            <targetxml>lnci:cite[@citeref]</targetxml> because value captured in
            <targetxml>ref:crossreference/ref:locator[@anchoridref]</targetxml>.</xref>
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
      </ul>
      </section>
    <section>
      <title>Citator - 3.2_ALPHA</title>
      <p>2013-07-18</p>
      <ul>
        <li>
          <xref href="../../DITA-UK/UK05_Citator/Rosetta_case.casename-to-LexisAdvance_caseinfo.fullcasename.dita">2013-07-18 - case:casename-to-caseinfo:fullcasename: Added instructions for not creating
            <targetxml>connector</targetxml> elements when only space characters occur in between
            <sourcexml>ci:cite</sourcexml> elements.</xref>
        </li>
        <li>
          <xref href="../../DITA-UK/UK05_Citator/parallelcite.dita">2013-07-18 - parallelcite: Added instructions for not creating
            <targetxml>connector</targetxml> elements when only space characters occur in
            between <sourcexml>case:parallelcite</sourcexml> and <sourcexml>ci:cite</sourcexml>
            elements.</xref>
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
      </ul>
    </section>
    <section>
      <title>Citator - 3.2_ALPHA</title>
      <p>2013-06-13
        <ul>
          <li>
            Citator Head : Added instructions on how to handle <sourcexml>case:info/case:altname</sourcexml>.
          </li>
        </ul>
      </p>
    </section>    
    <section>
      <title>Citator - 3.2_ALPHA</title>
      <p>2013-06-11
        <ul>
          <li>
            Introduction topic: Modified the Citator schema version to 3.2_ALPHA.
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_UK_docinfo.custom-metafields-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta.meta.metaitem.dita">2013-06-11 - docinfo:custom-metafields to doc:legacy-metadata[@metadatasource="lbu-meta"]/meta/metaitem: Included UK specific instructions for <sourcexml>docinfo:custom-metafields</sourcexml>.</xref>
          </li>
          <li>
            <xref href="parallelcite.dita">2013-06-11 - case:parallelcite to ref:citations/ref:cite4thisresource: Added instructions to handle simple PCDATA within case:parallelcite.</xref>
          </li>
          <li>
            <xref href="Rosetta_case.casename-to-LexisAdvance_caseinfo.fullcasename.dita">2013-06-11 - cttr:casename to caseinfo:fullcasename: Added instruction to handle more than one <sourcexml>ci:cite</sourcexml> with casename.</xref>
          </li>
        </ul>
      </p>
      <p><b>The following are common module changes</b>
        <ul>
          <li>
            <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-06-03 - remotelink to ref:crossreference: Updated the Target XML 2 by removing the <targetxml>@crossreferencetype</targetxml> for Canada example.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_docinfo.lbu-meta-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta-scheme.dita">2013-05-31 - docinfo:lbu-meta to doc:legacy-metadata[@metadatasource="lbu-meta"]: Added "document-type" to the list of values
              in docinfo:metaitem/@name that should be retained.</xref>
          </li>
        </ul>
      </p>
    </section>
    <section>
      <title>Citator - 3.1_ALPHA</title>
      <p>2013-05-30
        <ul>
          <li>
            <xref href="Rosetta_cttr.courtinfo-to-LexisAdvance_cttr.jurisinfo.courtinfo.dita">2013-05-30 - case:courtinfo/abbrvname - Updated instruction to convert element 'abbrvname' regardless of its attribute @ln.user-displayed's value.</xref>
          </li>
        </ul>
      </p>
    </section>
    <section>
      <title>Citator - 3.1_ALPHA</title>
      <p>2013-05-28
        <ul>
          <li>
            Introduction topic: Modified the Citator schema version to 3.1_ALPHA.
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_Elements-LxAdv-Empty_Elements.dita">
              Added a new section in Introduction, to suppress empty elements - Rosetta_Elements-LxAdv-Empty_Elements
            </xref>
          </li>
          <li>
            <xref href="subseqarticles_cttr.annot.dita">2013-05-28 - cttr:citingpub/@treatment: Note modified to mention attribute @treatement as required and default value would be "unspecified".</xref>
          </li>
        </ul>
      </p>
      <p><b>The following are common module changes</b>
        <ul>
          <li>
            <xref href="../../common_newest/Rosetta_inlineobject-LxAdv-figure_ref.inlineobject.dita">2013-05-24 - inlineobject to figure/ref:inlineobject: Updated target example, "when smi is present".</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_inlineobject-LxAdv-ref.inlineobject.dita">2013-05-24 - inlineobject to ref:inlineobject: Updated instruction for handling of inlineobject when smi is present and some of the verbiage is changed.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_inlineobject-LxAdv-figure_ref.inlineobject.dita">2013-05-24 - inlineobject to figure/ref:inlineobject: Updated target example, "when smi is present".</xref>
          </li>
        </ul>
      </p>
    </section>
    <section>
      <title>Citator - 3.0_ALPHA</title>
      <p>2013-05-17
        <ul>
          <li>
            <xref href="Rosetta_case.casename-to-LexisAdvance_caseinfo.fullcasename.dita">2013-05-17 - cttr:casename to caseinfo:fullcasename: Added instruction to add <targetxml>emph</targetxml> element within each <targetxml>caseinfo:alternatecasename</targetxml>. Also corrected the example target XML, where <targetxml>caseinfo:docketnum</targetxml> was missing. </xref>
          </li>
          <li>
            <xref href="Citator_Introduction.dita">2013-05-17 - Introduction: Updated the latest schema version to 3.0 ALPHA in the introduction section.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_inlineobject-LxAdv-figure_ref.inlineobject.dita">2013-05-08 - inlineobject to figure/ref:inlineobject: Extended the list of allowable values for image handling.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_inlineobject-LxAdv-ref.inlineobject.dita">2013-05-08 - inlineobject to ref:inlineobject: Extended the list of allowable values for image handling.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_inlineobject-LxAdv-figure_ref.inlineobject.dita">2013-05-08 - inlineobject to figure/ref:inlineobject: Extended the list of allowable values for image handling.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_inlineobject-Chof-h-LxAdv-figure_ref.inlineobject.dita">2013-05-08 - h/inlineobject to figure/ref:inlineobject: Extended the list of allowable values for image handling.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_inlineobject-Chof-emph-LxAdv-figure_ref.inlinobject.dita">2013-05-08 - emph/inlineobject to figure/ref:inlineobject: Extended the list of allowable values for image handling.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_inlineobject-Chof-glp.note-LxAdv-SUPPRESS.dita">2013-05-08 - glp:note/inlineobject to: Extended the list of allowable values for image handling.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_inlineobject-Chof-dispformula-LxAdv-formula_ref.inlineobject.dita">2013-05-08 - dispformula/inlineobject to formula/ref:inlineobject: Extended the list of allowable values for image handling.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_inlineobject-Chof-p_blockquote-LxAdv-p_figure_ref.inlineobject.dita">2013-05-08 - p/blockquote/inlineobject to p/figure/ref:inlineobject: Extended the list of allowable values for image handling.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-05-08 - remotelink to ref:crossreference: Extended the list of allowable values for image handling.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_inlineobject-LxAdv-figure_ref.inlineobject.dita">2013-05-02 - inlineobject to figure/ref:inlineobject: Updated target example to if the SMI is present then a <targetxml>ref:inliineobject/@status</targetxml> attribute is set to “valid”.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_inlineobject-LxAdv-ref.inlineobject.dita">2013-05-02 - inlineobject to ref:inlineobject: Some of the verbiage is changed and updated target example to if the SMI is present then a <targetxml>ref:inliineobject/@status</targetxml> attribute is set to “valid”.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_inlineobject-LxAdv-figure_ref.inlineobject.dita">2013-05-02 - inlineobject to figure/ref:inlineobject: Updated target example to if the SMI is present then a <targetxml>ref:inliineobject/@status</targetxml> attribute is set to “valid”.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2013-05-01 - ci.cite to lnci.cite: Removed special rule for
              <sourcexml>ci:cite/ci:content/remotelink</sourcexml> which required
              suppression of <sourcexml>ci:cite/ci:content</sourcexml> tags. The elements are
              now retained and convert according to common rules.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_inlineobject-LxAdv-figure_ref.inlineobject.dita">2013-05-01 - inlineobject to figure/ref:inlineobject: Removed instructions for section
              "Pre-Release 4.0" because according to latest Apollo markup, section
              "Release 4.0 and after" and section "Pre-Release 4.0" now have
              similar conversion markup.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_inlineobject-LxAdv-ref.inlineobject.dita">2013-05-01 - inlineobject to ref:inlineobject: Removed instructions for section
              "Pre-Release 4.0" because according to latest Apollo markup, section
              "Release 4.0 and after" and section "Pre-Release 4.0" now have
              similar conversion markup.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_inlineobject-LxAdv-figure_ref.inlineobject.dita">2013-05-01 - inlineobject to figure/ref:inlineobject: Removed instructions for section
              "Pre-Release 4.0" because according to latest Apollo markup, section
              "Release 4.0 and after" and section "Pre-Release 4.0" now have
              similar conversion markup.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_inlineobject-Chof-h-LxAdv-figure_ref.inlineobject.dita">2013-05-01 - h/inlineobject to figure/ref:inlineobject: Removed instructions for section
              "Pre-Release 4.0" because according to latest Apollo markup, section
              "Release 4.0 and after" and section "Pre-Release 4.0" now have
              similar conversion markup.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_inlineobject-Chof-emph-LxAdv-figure_ref.inlinobject.dita">2013-05-01 - emph/inlineobject to figure/ref:inlineobject: Removed instructions for section
              "Pre-Release 4.0" because according to latest Apollo markup, section
              "Release 4.0 and after" and section "Pre-Release 4.0" now have
              similar conversion markup.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_inlineobject-Chof-glp.note-LxAdv-SUPPRESS.dita">2013-05-01 - glp:note/inlineobject to: Removed instructions for section
              "Pre-Release 4.0" because according to latest Apollo markup, section
              "Release 4.0 and after" and section "Pre-Release 4.0" now have
              similar conversion markup.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_inlineobject-Chof-dispformula-LxAdv-formula_ref.inlineobject.dita">2013-05-01 - dispformula/inlineobject to formula/ref:inlineobject: Removed instructions for section
              "Pre-Release 4.0" because according to latest Apollo markup, section
              "Release 4.0 and after" and section "Pre-Release 4.0" now have
              similar conversion markup.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_inlineobject-Chof-p_blockquote-LxAdv-p_figure_ref.inlineobject.dita">2013-05-01 - p/blockquote/inlineobject to p/figure/ref:inlineobject: Removed instructions for section
              "Pre-Release 4.0" because according to latest Apollo markup, section
              "Release 4.0 and after" and section "Pre-Release 4.0" now have
              similar conversion markup.</xref>
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
            <xref href="../../common_newest/Rosetta_inlineobject-LxAdv-figure_ref.inlineobject.dita">2013-04-30 - inlineobject to figure/ref:inlineobject: Updated target sample according to latest Apollo markup.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_inlineobject-LxAdv-ref.inlineobject.dita">2013-04-30 - inlineobject to ref:inlineobject: Updated target sample according to latest Apollo markup.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_inlineobject-LxAdv-figure_ref.inlineobject.dita">2013-04-30 - inlineobject to figure/ref:inlineobject: Updated target sample according to latest Apollo markup.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_inlineobject-Chof-h-LxAdv-figure_ref.inlineobject.dita">2013-04-30 - h/inlineobject to figure/ref:inlineobject: Updated target sample according to latest Apollo markup.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_inlineobject-Chof-emph-LxAdv-figure_ref.inlinobject.dita">2013-04-30 - emph/inlineobject to figure/ref:inlineobject: Updated target sample according to latest Apollo markup.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_inlineobject-Chof-glp.note-LxAdv-SUPPRESS.dita">2013-04-30 - glp:note/inlineobject to: Updated target sample according to latest Apollo markup.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_inlineobject-Chof-dispformula-LxAdv-formula_ref.inlineobject.dita">2013-04-30 - dispformula/inlineobject to formula/ref:inlineobject: Updated target sample according to latest Apollo markup.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_inlineobject-Chof-p_blockquote-LxAdv-p_figure_ref.inlineobject.dita">2013-04-30 - p/blockquote/inlineobject to p/figure/ref:inlineobject: Updated target sample according to latest Apollo markup.</xref>
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
            <xref href="../../common_newest/Rosetta_docinfo.custom-metafields-LxAdv-SUPPRESS.dita">2013-04-16 - docinfo:custom-metafields is SUPPRESSED: Updated the instruction of handling
              <sourcexml>docinfo:custom-metafield[@name="JURIS-SORT"]</sourcexml>, <sourcexml>docinfo:custom-metafield[@name="COURT-SORT"]</sourcexml>, and <sourcexml>docinfo:custom-metafield[@name="TERM-SORT"]</sourcexml> markup in CA Dictionary content stream.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-04-10 - remotelink to ref:crossreference: Added Source XML 7a: for link to URL, with non-URL text content because it was previously missing, only the target example was here.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_docinfo.lbu-meta-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta-scheme.dita">2013-04-09 - docinfo:lbu-meta to doc:legacy-metadata[@metadatasource="lbu-meta"]: Added the instruction for handling <sourcexml>docinfo:metaitem[@name="QLDB"]</sourcexml>.</xref>
          </li>
        </ul>
      </p>
    </section>
    <section>
      <title>Citator - 2.21_ALPHA</title>
      <p>2013-04-05
        <ul>
          <li>
            <xref href="../../DITA-UK/UK05_Citator/Rosetta_case.casename-to-LexisAdvance_caseinfo.fullcasename.dita">
              2013-04-05 - cttr:casename-to-caseinfo:fullcasename -  Added instruction to handle alternatename within <sourcexml>case:casename</sourcexml>.
            </xref>
          </li>
        </ul>
      </p>
    </section>
    <section>
      <title>Citator - 2.21_ALPHA</title>
      <p>2013-04-02
          <ul>
            <li>
              <xref href="../../DITA-UK/UK05_Citator/Rosetta_case.casename-to-LexisAdvance_caseinfo.fullcasename.dita">
                2013-04-02 - cttr:casename-to-caseinfo:fullcasename -  Added instruction to handle <sourcexml>ci:cite</sourcexml> within <sourcexml>cttr:casename</sourcexml>.
              </xref>
            </li>
            <li>
              <xref href="../../DITA-UK/UK05_Citator/Rosetta_cttr.courtinfo-to-LexisAdvance_cttr.jurisinfo.courtinfo.dita">
                2013-04-02 - case:courtinfo-to-jurisinfo:courtinfo - Added instruction to handle <sourcexml>case:courtinfo/abbrvname</sourcexml>. 
                Schema change is done to add <targetxml>meta</targetxml> within <targetxml>jurisinfo:courtinfo</targetxml>. 
              </xref>
            </li>
          </ul>
        
      </p>
    </section>
    <section>
      <title>Citator - 2.20_ALPHA</title>
      <p>2013-03-18</p>
      <ul>
        <li>
          Introduction - Updated the schema version to Citator 2.20_ALPHA.
        </li>
        <li>
          cttr:summary - Added instructions for <sourcexml>ci:pinpoint</sourcexml>.
        </li>
        <li>
          cttr:casename-to-caseinfo:fullcasename - Added a note section on how to handle <sourcexml>nl</sourcexml> within <sourcexml>case:casename</sourcexml>.
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_remotelink-Chof-p-LxAdv-p_text_ref.crossreference.dita"> 2013-03-07 - p/remotelink to p/text/ref:crossreference: Created.</xref>
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
          <xref href="../../common_newest/Rosetta_blockquote-LxAdv-blockquote.dita">2013-02-18 - blockquote to blockquote: Created two sections, one for "Release 4.0 and after" and another for "Pre-Release 4.0".</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_inlineobject-LxAdv-ref.inlineobject.dita">2013-02-18 - inlineobject to ref:inlineobject: Created two sections, one for "Release 4.0 and after" and another for "Pre-Release 4.0".</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_inlineobject-LxAdv-figure_ref.inlineobject.dita">2013-02-18 - inlineobject to figure/ref:inlineobject: Created two sections, one for "Release 4.0 and after" and another for "Pre-Release 4.0".</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-02-18 - remotelink to ref:crossreference: Created two sections, one for "Release 4.0 and after" and another for "Pre-Release 4.0".</xref>
        </li>
      </ul>
    </section>
    <section>
      <title>Citator - 2.18_ALPHA</title>
      <p>2013-01-10 <ul>
          <li>cttr:consideredcase @treatment="unspecified" - Note modified to mention attribute
            @treatement as required and default value would be "unspecified".</li>
          <li>cttr:appealproceeding @treatment="unspecified" - Note modified to mention attribute
            @treatement as required and default value would be "unspecified".</li>
          <li>cttr:usage @usagetype - Note added to mention attribute @usagetype as required and
            default value would be "unspecified".</li>
          <li>casesum:editorialsummary @summarysource - Default value for the attribute changed to
            "lexis-casesearch-editorial" from "lexis-casebase-editorial".</li>
        </ul></p>
    </section>
    <section>
      <title>2012-12-10</title>
      <p>Created</p>
    </section>
  </body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK05_Citator\citator-change-log.dita  -->

</xsl:stylesheet>