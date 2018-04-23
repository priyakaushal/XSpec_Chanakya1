<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="UK17_webinar_DIGESTDOC_changeLog">
  <title>UK17 Webinar - Change Log</title>
  <body>
    <section>
      <title>Seclaw Schema (Version 8.18 PROD)</title>    
      <p>2016-12-15:
      <ul>
        <li>
          <xref href="../../../Rosetta/DITA-UK/UK17-Webinar/UK17-Webinar_DIGESTDOC_person_bio_figure.dita">2016-12-14 - person/bio/figure id-UK17-36211: Not a rule change directly to this
            module. Modified Example Target to reflect blobstore markup for ref:inlineobject;
            all paramater names that formerly contained the word "attachment" are now
            "object".</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/DITA-UK/UK03_CaseDigest/Rosetta_docinfo-assoc-links-grp-text-person-bio-figure-to-LexisAdvance_doc-related-content-figure.dita">2016-12-14 -
            docinfo:assoc-links/docinfo:assoc-links-grp/text/person/bio/figure/inlineobject-to-doc:related-content/related-content-grp/related-content-item/related-content-desc/person/bio/bio.text/bodytext/figure
            id-UK03-27462: Not a rule change directly to this module. Modified Example Target
            to reflect blobstore markup for ref:inlineobject; all paramater names that
            formerly contained the word "attachment" are now "object".</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_UK_docinfo.custom-metafields-LxAdv-dc.date_or_doc.docinfo_classify.classification.dita">2016-11-30 - (UK) docinfo:custom-metafield to dc:date or
            doc:metadata/doc:docinfo/classify:classification[@classscheme="uk-functional-information"]
            id-CCCC-10547: Added rule for "isDocBuilderAvailable"; and updated the
            example.</xref>
        </li>
      </ul>
      </p>
    </section>
    <section>
      <title>Seclaw Schema (Version 8.17 PROD)</title>
      <p>2016-11-18: Created</p>
      <ul>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2016-11-16 - docinfo:assoc-links to doc:related-content id-CCCC-10284: Added to note regarding applying any rules related to 
            <targetxml>@anchoridref</targetxml>, referring specifically to section for "Identifiers to ID Data Type - 
            Handling Pattern Restrictions".</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2016-11-16 - remotelink to ref:crossreference id-CCCC-10465: Added to note regarding applying any rules related to 
            <targetxml>@anchoridref</targetxml>, referring specifically to section for "Identifiers to ID Data Type - 
            Handling Pattern Restrictions".</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_inlineobject-LxAdv-ref.inlineobject_BLOBSTORE.dita">2016-11-07 - inlineobject to ref:inlineobject for BLOBSTORE images id-CCCC-10540: Updated the instruction for ref:key-name and
            proc:param attribute values.</xref>
        </li>
        
      </ul>
    </section>
    <section>
      <title>Seclaw Schema (Version 8.17 PROD)</title>
      <p>2016-11-02: Created</p>
      <ul>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_inlineobject-LxAdv-ref.inlineobject_BLOBSTORE.dita">2016-10-21 - inlineobject to ref:inlineobject for BLOBSTORE images id-CCCC-10540: Changed one proc:param name for target. Formerly
            <targetxml>@name="attachment-server"</targetxml>; changed to
            <targetxml>@name="object-server"</targetxml>.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_lnlink_service_ATTACHMENT-LxAdv-ref.lnlink_BLOBSTORE.dita">2016-10-21 - lnlink[@service="ATTACHMENT"] to ref:lnlink[@service="ATTACHMENT"] for BLOBSTORE images id-CCCC-10542: Updated the Blobstore related instruction for use standardize specific output parameters.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_link-LxAdv-ref.lnlink_BLOBSTORE.dita">2016-10-21 - link[@filename] to ref:lnlink[@service="ATTACHMENT"] for BLOBSTORE images id-CCCC-10541: Updated the Blobstore related instruction for
            use standardize specific output parameters.</xref>
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
      <title>Seclaw Schema (Version 8.14 PROD)</title>
      <p>2016-08-10: Created</p>
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
          <xref href="../../../Rosetta/DITA-UK/UK17-Webinar/UK17-Webinar_DIGESTDOC_person_bio_figure.dita">2016-08-03 - person/bio/figure id-UK17-36211: Not a rule change directly to this module. Modified
            Example Target to reflect blobstore markup.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/DITA-UK/UK03_CaseDigest/Rosetta_docinfo-assoc-links-grp-text-person-bio-figure-to-LexisAdvance_doc-related-content-figure.dita">2016-08-03 - docinfo:assoc-links/docinfo:assoc-links-grp/text/person/bio/figure/inlineobject-to-doc:related-content/related-content-grp/related-content-item/related-content-desc/person/bio/bio.text/bodytext/figure id-UK03-27462: Not a rule change directly to this module.
            Modified Example Target to reflect blobstore markup.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_inlineobject-Chof-remotelink-LxAdv-ref.crossreference_ref.content_ref.inlineobject.dita">2016-08-03 - inlineobject Child of remotelink to ref:inlineobject id-CCCC-10364: Added Note about xml snippets that illustrate
            image handling. Note summarizes move from Apollo to Blobstore application. UK is
            first LBU to move to Blobstore.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2016-08-03 - remotelink to ref:crossreference id-CCCC-10465: Added Note about xml snippets that illustrate
            image handling. Note summarizes move from Apollo to Blobstore application. UK is
            first LBU to move to Blobstore.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2016-07-29 - docinfo:assoc-links to doc:related-content id-CCCC-10284: Added Note about xml snippets that illustrate image
            handling. Note summarizes move from Apollo to Blobstore application. UK is first LBU to
            move to Blobstore.</xref>
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
          <xref href="../../../Rosetta/common_newest/Rosetta_refpt-Chof-p_text_emph-LxAdv-p_ref.anchor.dita">2016-07-27 - refpt child of p/text/emph to p/ref:anchor id-CCCC-10457: Added a note for handling of text which is
            comes under the <sourcexml>refpt</sourcexml> in source.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_UK_docinfo.custom-metafields-LxAdv-dc.date_or_doc.docinfo_classify.classification.dita">2016-07-26 - (UK) docinfo:custom-metafield to dc:date or doc:metadata/doc:docinfo/classify:classification[@classscheme="uk-functional-information"] id-CCCC-10547: Added rule for "resultType"; and updated the
            example.</xref>
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
          <xref href="../../../Rosetta/common_newest/Rosetta_lnlink_service_ATTACHMENT-LxAdv-ref.lnlink_BLOBSTORE.dita">2016-05-20 - lnlink[@service="ATTACHMENT"] to ref:lnlink[@service="ATTACHMENT"] for BLOBSTORE images id-CCCC-10542: Created this instruction to specify Blobstore
            specific output parameters.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_link-LxAdv-ref.lnlink_BLOBSTORE.dita">2016-05-20 - link[@filename] to ref:lnlink[@service="ATTACHMENT"] for BLOBSTORE images id-CCCC-10541: Created this instruction to specify Blobstore specific output parameters.</xref>
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
          <xref href="../../../Rosetta/common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2016-03-23 - ci.cite to lnci.cite id-CCCC-10268: Updated main instructions to clarify that descendants of ci:cite, and not just children, are to be processed.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_edpnum-LxAdv-desig.dita">2016-03-15 - edpnum to desig id-CCCC-10308: Added rule for handling scenario when
            <sourcexml>pnum</sourcexml> and <sourcexml>edpnum </sourcexml> occur as
            siblings (applicable only for UK22CS). [RFA #2755]</xref>
        </li>
      </ul>
    </section>
    <section>
      <title>Seclaw Schema (Version 8.9 PROD)</title>
      <p>2016-02-29: Created</p>
      <ul>
        <li>
          <xref href="../../../Rosetta/DITA-UK/UK03_CaseDigest/Rosetta_remotelink-service-query.dita">2016-02-22 - remotelink @service="QUERY", @newwindow, @type and @alt-content-role id-UK03-27457: Added a rule for handling the new attributes
            [<sourcexml>@newwindow, @type and @alt-content-role</sourcexml>] of
            <sourcexml>remotelink</sourcexml>
          </xref>
        </li>
        <li>
          <xref href="../../../Rosetta/DITA-UK/UK03_CaseDigest/Rosetta_docinfo-assoc-links-grp-text-person-bio-figure-to-LexisAdvance_doc-related-content-figure.dita">2016-02-22 - docinfo:assoc-links/docinfo:assoc-links-grp/text/person/bio/figure/inlineobject-to-doc:related-content/related-content-grp/related-content-item/related-content-desc/person/bio/bio.text/bodytext/figure id-UK03-27462: Created the instruction for handling input scenario
            -
            <sourcexml>docinfo:assoc-links/docinfo:assoc-links-grp/text/person/bio/figure/inlineobject</sourcexml>.
            RFA #2742</xref>
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
          <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.doc-heading-LxAdv-dc.title.dita">2015-12-04 - docinfo:doc-heading to dc:title id-CCCC-10292: Added exception for AU Legislative Citator to 
            drop text Overview Tab for  from conversion.</xref>
        </li>
      </ul>
    </section>
    <section>
      <title>Seclaw Schema (Version 8.7 PROD)</title>
      <p>2015-11-26: Created</p>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK17-Webinar\UK17_webinar_DIGESTDOC_changeLog.dita  -->

</xsl:stylesheet>