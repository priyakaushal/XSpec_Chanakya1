<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:ci="http://www.lexis-nexis.com/ci" xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" xmlns:frm="http://www.lexis-nexis.com/glp/frm" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:source_lnci="http://www.lexis-nexis.com/lnci" xmlns:courtcase="http://www.lexisnexis.com/xmlschemas/content/legal/courtcase/1/" xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns:decision="http://www.lexisnexis.com/xmlschemas/content/legal/decision/1/" xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" xmlns:form="http://www.lexisnexis.com/xmlschemas/content/shared/form/1/" xmlns:lnci="http://www.lexisnexis.com/xmlschemas/content/shared/citations/1/" xmlns:person="http://www.lexisnexis.com/xmlschemas/content/shared/person/1/" xmlns:proc="http://www.lexisnexis.com/xmlschemas/content/shared/process-elements/1/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita case ci docinfo frm leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="UK01_changeLog">
  <title>Change Log</title>
  <body>
    <section>
      <title>Courtcase 10.2_PROD </title>
      <ul>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_note-Chof-emph-LxAdv-inlinenote.dita">2016-12-06 - emph/note to emph/inlinenote id-CCCC-10551: Created.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/DITA-UK/UK01_CaseLaw/case.pubinfo.dita">2016-12-05 - case:pubinfo id-UK01-27043: Added instructions for handling case:pubinfo elements.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_caselaw/Rosetta_case.priorhist-LxAdv_casehist.priorhist.dita">2016-12-05 - case:priorhist id-CCCC-12017: Added the note for hadling input scenario
            "<sourcexml>case:priorhist/heading/title/refpt</sourcexml>". Applicable on
            CA01, Webstar # 6699088.</xref>
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
          <xref href="../../../Rosetta/common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2016-11-16 - remotelink to ref:crossreference id-CCCC-10465: Added to note regarding applying any rules related to 
            <targetxml>@anchoridref</targetxml>, referring specifically to section for "Identifiers to ID Data Type - 
            Handling Pattern Restrictions".</xref>
        </li>
      </ul>
    </section>
    
    <section>
      <title>Courtcase 10.2_PROD </title>
      <ul>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_inlineobject-LxAdv-ref.inlineobject_BLOBSTORE.dita">2016-11-07 - inlineobject to ref:inlineobject for BLOBSTORE images id-CCCC-10540: Updated the instruction for ref:key-name and
            proc:param attribute values.</xref>
        </li>
        <li>
        </li>
      </ul>
    </section>
    <section>
      <title>Courtcase 10.0_PROD </title>
      <p><ul>
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
          <xref href="../../../Rosetta/common_newest/Rosetta_note-LxAdv-note.dita">2016-10-12 - note to note id-CCCC-10405: Added instruction for handling input scenario <sourcexml>note/legfragment</sourcexml>.
          </xref>
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
      <title>Courtcase 9.20</title>
      <p><ul>
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
          <xref href="../../../Rosetta/common_newest/Rosetta_inlineobject-Chof-emph_sub-LxAdv-figure_ref.inlinobject.dita">2016-08-03 - emph/sub/inlineobject to figure/ref:inlineobject id-CCCC-10360: Added Note about xml snippets that illustrate
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
          <xref href="../../../Rosetta/common_newest/Rosetta_figure-LxAdv-figure.dita">2016-07-29 - figure to figure id-CCCC-10320: Added Note about xml snippets that illustrate
            image handling. Note summarizes move from Apollo to Blobstore application. UK is
            first LBU to move to Blobstore.</xref>
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
          <xref href="../../../Rosetta/common_newest/Rosetta_link-LxAdv-ref.lnlink_BLOBSTORE.dita">2016-05-20 - link[@filename] to ref:lnlink[@service="ATTACHMENT"] for BLOBSTORE images id-CCCC-10541: Created this instruction to specify Blobstore specific output parameters.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_lnlink_service_ATTACHMENT-LxAdv-ref.lnlink_BLOBSTORE.dita">2016-05-20 - lnlink[@service="ATTACHMENT"] to ref:lnlink[@service="ATTACHMENT"] for BLOBSTORE images id-CCCC-10542: Created this instruction to specify Blobstore
            specific output parameters.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_caselaw/Rosetta_case.references-LxAdv_ref.relatedrefs.dita">2016-04-22 - case:references id-CCCC-12019: Added new term "Doctrine et jurisprudence"
            to the table to generate "consideredcases". Applicable on CA01.</xref>
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
      </ul>
      </p>
    </section>
    <section>
      <title>Courtcase 9.16</title>
      <p><ul>
        <li>
          <xref href="../../../Rosetta/DITA-UK/UK01_CaseLaw/UK01_Rosetta_case.juris.dita">2015-12-22 - case:juris id-UK01-27035: Added note to suppress <sourcexml>emph</sourcexml> element and retain its text in target, Applicable in UK01, RFA# 2608.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/DITA-UK/UK01_CaseLaw/UK01_Rosetta_case.courtloc-LxAdv_jurisinfo.jurisdiction_jurisinfo.location.dita">2015-12-22 - case:courtloc id-UK01-27020: Added City and Country table to identify proper names
            and added note to suppress <sourcexml>emph</sourcexml> element only and retain
            its content in target, Applicable on UK01, RFA# 2612.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_caselaw/Rosetta_case.casename-LxAdv_caseinfo.casename_caseinfo.fullcasename.dita">2015-12-05 - case:casename id-CCCC-12009: Added special note for UK01-UK04, RFA # 2602.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_UK_case.casename-Plus-case.reportercite-LxAdv-dc.title.dita">2015-11-20 - (UK01-UK04) case:casename and case:reportercite to dc:title id-CCCC-10531: Added this topic. Requested in UXRs for these streams during November 2015.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_UK_docinfo.doc-heading-LxAdv-SUPPRESS.dita">2015-11-20 - (UK01-UK04) docinfo:doc-heading is SUPPRESSED id-CCCC-10532: Added this topic. Requested in UXRs for these streams during November 2015.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_inlineobject-LxAdv-ref.inlineobject.dita">2015-11-16 - inlineobject to ref:inlineobject id-CCCC-10369: Added instruction for <sourcexml>inlineobject/@key</sourcexml> 
            to be suppressed.</xref>
        </li>
      </ul></p>
    </section>    
    
    <section>
      <title>Courtcase 9.15</title>
      <p><ul>
        <li>
          <xref href="../../../Rosetta/DITA-UK/UK01_CaseLaw/UK01_Rosetta_case.headnote.case.typeofcase-LxAdv_casesum.overview.dita">2015-10-09 - case:typeofcase id-UK01-27028: Added instruction and example when
            <sourcexml>case:typeofcase</sourcexml> is child of
            <sourcexml>case:headnote</sourcexml>, Applicable on UK01, RFA # 2483.</xref>
        </li>
      </ul></p>
    </section>    
    
    <section>
      <title>Courtcase 9.15</title>
      <p><ul>
        <li>
          <xref href="../../DITA-UK/UK01_CaseLaw/UK01_Rosetta_case.parallelcite-LxAdv_ref.parallelcite.dita">2015-09-23 - case:parallelcite: Updated target mapping and example of
            <sourcexml>case:parallelcite</sourcexml>, Applicable on UK01. </xref>
        </li>
      </ul></p>
    </section>
        
    <section>
      <title>Courtcase 9.15</title>
      <p><ul>
          <li>
            <xref href="../../../Rosetta/DITA-UK/UK01_CaseLaw/UK01_Rosetta_case.decisionsummary-LxAdv_casesum.decisionsummary.dita">2015-09-21 - case:decisionsummary id-UK01-27024: Added instruction and example when
                <sourcexml>case:decisionsummary</sourcexml> is a child of
                <sourcexml>case:content/case:judgments</sourcexml>, Applicable on UK01, RFA 4.5 #
              2386.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/DITA-UK/UK01_CaseLaw/UK01_Rosetta_case.decisionnum.dita">2015-09-04 - case:decisionnum id-UK01-27042: Created.</xref>
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
            <xref href="../../../Rosetta/common_newest/Rosetta_inlineobject-Chof-emph-LxAdv-figure_ref.inlinobject.dita">2015-08-12 - emph/inlineobject to figure/ref:inlineobject id-CCCC-10359: Added
              instruction and example for
                <sourcexml>leg:comntry/level/bodytext/heading/title/emph/inlineobject</sourcexml>,
              Applicable on UK07, R4.5 issue # 2364.</xref>
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
            <xref href="../../../Rosetta/common_newest/Rosetta_pnum-LxAdv-desig.dita">2015-02-24 -
              pnum to desig id-CCCC-10434: An attribute <targetxml>@inline</targetxml>get added with
                <targetxml>desig</targetxml>element even when the
              source<sourcexml>pnum</sourcexml>is not having that
                attribute<sourcexml>@inline</sourcexml>
            </xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_person-LxAdv-person.person.dita">2015-02-03 - person to person:person id-CCCC-10428: Added instruction for
                <sourcexml>name.detail/name.honorific</sourcexml> mapping to
                <targetxml>person:name.detail/person:name.honorific</targetxml>.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.hier-LxAdv-doc.hier.dita">2015-01-23 - docinfo:hier to doc:hier id-CCCC-10297: Added note to convert
                <sourcexml>docinfo:hierlev/@exclude-from-displayunits="true"</sourcexml> into
                <targetxml>doc:hier/@includeintoc="false"</targetxml>.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2015-01-19 - docinfo:assoc-links to doc:related-content id-CCCC-10284: For CA05 -
              CA08- Updated Instruction and included "<targetxml>related-content-grp</targetxml>"
              markup inside the target Example 8 for conversion of QUERY link to
              doc:related-content.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2015-01-15 - docinfo:assoc-links to doc:related-content id-CCCC-10284: For CA03-
              Convert the QUERY link to doc:related-content. Refer Example 10. R4.5 RFA
              #2099.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2015-01-13 - docinfo:assoc-links to doc:related-content id-CCCC-10284: For CA05 -
              CA08 Conversion Needs to split multiple ORs into a separate
                <targetxml>doc:related-content-item</targetxml>. Refer Example 9</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.hier-LxAdv-doc.hier.dita">2015-01-13 - docinfo:hier to doc:hier id-CCCC-10297: Added a note to repalce
                <sourcexml>nl</sourcexml> to a white space when <sourcexml>nl</sourcexml> is coming
              as child of <sourcexml>docinfo:hierlev/heading/title</sourcexml>
            </xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_figure-LxAdv-figure.dita">2014-10-28
              - figure to figure id-CCCC-10320: Moved instruction regarding the XPath XPath
                <sourcexml>caption/note</sourcexml> into a separate topic. Not a rule change, just a
              minor reorganization of the instructions.</xref>
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
            <xref href="../../../Rosetta/common_newest/Rosetta_figure-LxAdv-figure.dita">2014-10-24
              - figure to figure id-CCCC-10320: Added instructions and example to handle the new
              XPath <sourcexml>caption/note</sourcexml>. (R4.5 Content Issue List #1993)</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_emp-Chof-heading_title-LxAdv-heading_title.dita">2014-10-22 - heading/title/emph to heading/title id-CCCC-10313: Added an example to
              explicitly show child elements of <sourcexml>emph</sourcexml> being retained. (R4.5
              Content Issue List #1998)</xref>
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
            <xref href="../../../Rosetta/common_newest/Rosetta_text-LxAdv-text.dita">2014-08-11 -
              text to text id-CCCC-10477: For CANADA Content Stream: Only move the <sourcexml>
                text@align</sourcexml> to the parent <targetxml>p</targetxml> if it is the only text
              in <sourcexml>p</sourcexml>, Otherwise, wrap the <sourcexml>text</sourcexml> with
                <targetxml>p</targetxml> and move the <sourcexml>@align</sourcexml> attribute to the
              newly created <targetxml> p</targetxml>.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_caselaw/Rosetta_case.references-LxAdv_ref.relatedrefs.dita">2014-07-24 - case:references id-CCCC-12019: Added "LEGISLATION:" to table with
              @referencetype legislation. R4.5 DB Item #1278.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_caselaw/Rosetta_case.references-LxAdv_ref.relatedrefs.dita">2014-07-18 - case:references id-CCCC-12019: Updated CA target snippet to capture
                <targetxml>@referencetype="consideredcases"</targetxml> attribute in
                <targetxml>ref:relatedrefs</targetxml> element and change all references of
              "Jurisprudence" from "legislation" to "consideredcases", and also added new
              terms.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_inlineobject-LxAdv-ref.inlineobject.dita">2014-07-08 - inlineobject to ref:inlineobject id-CCCC-10369: Not a rule change.
              Clarification added to note regarding suppression of
                <sourcexml>inlineobject</sourcexml> when
                <sourcexml>inlineobject/@filename</sourcexml> contains certain values.</xref>
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
            <xref href="../../../Rosetta/common_caselaw/Rosetta_case.references-LxAdv_ref.relatedrefs.dita">2014-06-04 - case:references id-CCCC-12019: Updates Canada-only instruction and
              examples for where <targetxml>@referencetype</targetxml> value generated based on
              table value. R4.5 Item #1587.</xref>
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
          <li><xref href="../../../Rosetta/common_newest/Rosetta_footnote-LxAdv-footnote.dita">
              Specifies <targetxml>p/text</targetxml> wrapper for target
                <targetxml>sigblock/p/text/footnotegroup</targetxml>. Immediately affects UK12 but
              will apply to any stream if the use case occurs. Phase 6 UK discussion items 76 and
              88.</xref>
          </li>
        </ul></p>
    </section>

    <section>
      <title>Courtcase 9.5</title>
      <p>
        <ul>
          <li>
            <xref href="../../DITA-UK/UK01_CaseLaw/UK01_Rosetta_case.disposition-LxAdv_casesum.disposition.dita">2014-02-28 - case:disposition: Added an Example of
                <sourcexml>case:disposition/page</sourcexml>
            </xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2014-02-25 - remotelink to ref:crossreference: Updated instruction and created new
              example (#16) for handling <sourcexml>remotelink[@service="QUERY"]</sourcexml>. New
              instruction preserves pcdata but suppresses <sourcexml>remotelink</sourcexml>
              markup.</xref>
          </li>
          <li>
            <xref href="../../common_caselaw/Rosetta_case.courtname-LxAdv_jurisinfo.courtname.dita">2014-02-19 - case:courtname: Added note and updated snippet for CA content, This
              change immediately applies to CA01-Cases.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_docinfo.doc-heading-LxAdv-dc.title.dita">2014-02-11 - docinfo:doc-heading to dc:title: Updated note when
                <sourcexml>emph</sourcexml> is child of <sourcexml>docinfo:doc-heading</sourcexml>
              then suppress <sourcexml>emph</sourcexml> element and retain its content in
                <targetxml>dc:title</targetxml>, These instructions apply immediately to
              CA12.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_pgrp-LxAdv-pgrp.dita">2014-02-11 - pgrp to pgrp:
              Add instruction and example <sourcexml>pgrp/@subdoc</sourcexml> and
                <sourcexml>pgrp/@toc-caption</sourcexml>. Support Discussion Board: NZ09 Commentary,
              Form and Precedents</xref>
          </li>
        </ul>
      </p>
    </section>
    <section>
      <title>Courtcase 9.5</title>
      <p>
        <ul>
          <li>
            <xref href="../../DITA-UK/UK01_CaseLaw/UK01_Rosetta_case.courtnum.dita">2014-02-05 -
              case:courtnum: Added instruction to handle PCDATA occuring between
                <sourcexml>case:courtnum/emph</sourcexml> and <sourcexml>ci:cite</sourcexml>
            </xref>
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
            <xref href="../../common_newest/Rosetta_text-LxAdv-text.dita">2014-01-31 - text to text:
              Updated instruction, <targetxml>align</targetxml> will be moved in
                <targetxml>p</targetxml> in NL conversion. NZ09 commentary discussion board issue
              for handling <sourcexml>text/@align</sourcexml>
            </xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_Elements-LxAdv-Empty_Elements.dita">2014-01-16 -
              Suppress each empty element unless otherwise stated: Added list of elements to
              suppress if empty.</xref>
          </li>
        </ul>
      </p>
    </section>
    <section>
      <title>Courtcase 9.5</title>
      <p>
        <ul>
          <li>
            <xref href="../../common_newest/Rosetta_inlineobject-Chof-emph_sub-LxAdv-figure_ref.inlinobject.dita">2014-01-13 - emph/sub/inlineobject to figure/ref:inlineobject: Updated Instruction to
              handle <sourcexml>emph/sub/inlineobject</sourcexml> when PCDATA occuring between
                <sourcexml>emph</sourcexml> and <sourcexml>sub</sourcexml>, this change directly
              affects UK01 Cases WebTeam # 249487</xref>
          </li>
        </ul>
      </p>
    </section>
    <section>
      <title>Courtcase 9.5</title>
      <p>2014-01-08 <ul>
          <li>
            <xref href="../../DITA-UK/UK01_CaseLaw/UK01_Rosetta_case.disposition-LxAdv_casesum.disposition.dita">2014-01-08 - case:disposition: Added instruction for handling multiple sibling
                <sourcexml>casesum:disposition</sourcexml> elements. Webteam# 248990</xref>
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
            <xref href="../../common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2013-12-30 -
              ci.cite to lnci.cite: Minor illustrative change. Added "(AU Journals/Newsitem)" to
              headings for last example to clarify that retention of
                <sourcexml>@type="cite4thisdoc"</sourcexml> is an exception for that content, as
              already described in narrative rules.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_glp.note_blockquote_p_text_inlineobject-LxAdv-note_bodytext_p_text.dita">2013-12-20 - glp:note: Corrected the target example (added ref:corssreference).
              WebTeam #5158742 - AU04. Applies generally to all LBUs and streams.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_docinfo.alt-renditions-LxAdv-doc.alt-renditions.dita">2013-12-17 - docinfo:alt-renditions/docinfo:alt-rendition to
              doc:alt-renditions/doc:alt-rendition: Added instruction and example for
                <sourcexml>docinfo:alt-rendition/lnlink</sourcexml>. (Webteam #247307)</xref>
          </li>
        </ul>
      </p>
    </section>
    <section>
      <title>Courtcase 9.5</title>
      <p>2013-12-13 <ul>
          <li>
            <xref href="../../common_caselaw/Rosetta_catchwordgrp.dita">2013-12-13 - catchwordgrp:
              Added instruction to drop punctuation occuring between catchwords and catchphrase
              Webteam# 247658</xref>
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
        </ul>
      </p>
    </section>
    <section>
      <title>Courtcase 9.5</title>
      <p>2013-11-20 <ul>
          <li>
            <xref href="../../common_newest/Rosetta_UK_docinfo.custom-metafields-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta.meta.metaitem.dita">2013-11-20 - docinfo:custom-metafields to
              doc:legacy-metadata[@metadatasource="lbu-meta"]/meta/metaitem: Added instruction to
              handle
                <sourcexml>docinfo:custom-metafields/docinfo:custom-metafield/@name="jurisdiction"</sourcexml>
              is "European" Webteam # 239816 </xref>
          </li>
          <li>
            <xref href="../../DITA-UK/UK01_CaseLaw/UK01_introduction.dita">2013-11-15 -
              Introduction: Added value for doninfo:selector Webteam # 239816</xref>
          </li>
          <li>
            <xref href="../../DITA-UK/UK01_CaseLaw/UK01_Rosetta_case.parallelcite-LxAdv_ref.parallelcite.dita">2013-10-30 - case:parallelcite: Added instruction to handle PCDATA when there is no
              citation in case:parallelcite. Webteam # 243687 </xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_docinfo.alt-renditions-LxAdv-doc.alt-renditions.dita">2013-10-29 - docinfo:alt-renditions/docinfo:alt-rendition to
              doc:alt-renditions/doc:alt-rendition: Added instruction and example for UK06
              Laws/Acts/Bills/Measures and UK07 Regulation place the text of
                <sourcexml>leg:officialname</sourcexml> in
                <targetxml>doc:alt-renditions/doc:alt-rendition/ref:lnlink/ref:marker</targetxml>
              (Webteam #243521)</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_p-LxAdv-p.dita">2013-10-25 - p to p: Added
              instruction and example <sourcexml>p/@nl="0"</sourcexml> comes in
                <sourcexml>references</sourcexml>.</xref>
          </li>
        </ul>
      </p>
    </section>
    <section>
      <title>Courtcase 9.4</title>
      <p>2013-10-30 <ul>
          <li>
            <xref href="../../DITA-UK/UK01_CaseLaw/UK01_Rosetta_case.parallelcite-LxAdv_ref.parallelcite.dita">2013-10-30 - case:parallelcite: Added instruction to handle PCDATA when there is no
              citation in case:parallelcite. Webteam # 243687 .</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_docinfo.alt-renditions-LxAdv-doc.alt-renditions.dita">2013-10-29 - docinfo:alt-renditions/docinfo:alt-rendition to
              doc:alt-renditions/doc:alt-rendition: Added instruction and example for UK06
              Laws/Acts/Bills/Measures and UK07 Regulation place the text of
                <sourcexml>leg:officialname</sourcexml> in
                <targetxml>doc:alt-renditions/doc:alt-rendition/ref:lnlink/ref:marker</targetxml>
              (Webteam #243521)</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_p-LxAdv-p.dita">2013-10-25 - p to p: Added
              instruction and example <sourcexml>p/@nl="0"</sourcexml> comes in
                <sourcexml>references</sourcexml>.</xref>
          </li>
        </ul>
      </p>
    </section>
    <section>
      <title>Courtcase 9.4</title>
      <p>2013-10-23 <ul>
          <li>
            <xref href="../../common_newest/Rosetta_inlineobject-LxAdv-ref.inlineobject.dita">2013-10-23 Added Common element Rosetta_inlineobject-LxAdv-ref.inlineobject.dita on
              2013-10-23 Webteam # 239816 </xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_process-ignore-to-LxAdv_SUPPRESS.dita">2013-10-23 Added Common element Rosetta_process-ignore-to-LxAdv_SUPPRESS.dita on
              2013-10-23 Webteam # 239816 </xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_hrule-LxAdv-hrule.dita">2013-10-23 Added Common
              element Rosetta_hrule-LxAdv-hrule.dita on 2013-10-23 Webteam # 239816 </xref>
          </li>
          <li>
            <xref href="../../DITA-UK/UK01_CaseLaw/UK01_Rosetta_case.subject-LxAdv-caseinfocaseinfo.classify.classification.dita">2013-10-23 - case:subject: Created on 2013-10-23 Webteam # 239816</xref>
          </li>
          <li>
            <xref href="../../DITA-UK/UK01_CaseLaw/UK01_Rosetta_case.headnote.case.typeofcase-LxAdv_casesum.overview.dita">2013-10-23 - case:typeofcase: Created on 2013-10-23 Webteam # 239816</xref>
          </li>
          <li>
            <xref href="../../DITA-UK/UK01_CaseLaw/UK01_Rosetta_case.headnote.prelim-LxAdv_courtcase.head.courtcase.prelim.dita">2013-10-23 - prelim: Created on 2013-10-23 Webteam # 239816</xref>
          </li>
          <li>
            <xref href="../../DITA-UK/UK01_CaseLaw/UK01_Rosetta_case.order-LxAdv_courtcase.order.dita">2013-10-23 - case:order: Created on 2013-10-23 Webteam # 239816</xref>
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
            <xref href="../../common_newest/Rosetta_process-ignore-to-LxAdv_SUPPRESS.dita">2013-10-03 - process-ignore: Not a rule change. Clarified directions by stating that
              children should be processed as normal. This was already correctly demonstrated by the
              example.</xref>
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
        </ul>
      </p>
    </section>
    <section>
      <title>Courtcase 9.2 PROD</title>
      <p>2013-09-20 <ul>
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
            <xref href="../../common_newest/Rosetta_footnote-LxAdv-footnote.dita">2013-08-22 -
              footnotegrp and footnote to footnotegrp and footnote: Not a rule change. Second target
              sample modified to remove attribute <targetxml>lnci:cite[@citeref]</targetxml> because
              value captured in descendant
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
        </ul>
      </p>
    </section>
    <section>
      <title>Courtcase 9.1 PROD</title>
      <p>2013-08-01 <ul>
          <li>
            <xref href="../../common_newest/Rosetta_UK_docinfo.custom-metafields-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta.meta.metaitem.dita">2013-08-01 - Updated instructions for converting
                <sourcexml>docinfo.custom-metafields</sourcexml> in order to be consistent with all
              UK streams.</xref>
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
            <xref href="../../common_newest/Rosetta_title-LxAdv-title.dita">2013-07-05 - title to
              title: Added Instruction when <sourcexml>title</sourcexml> contains word "TITLE:
              ".</xref>
          </li>
        </ul>
      </p>
    </section>
    <section>
      <title>Courtcase 9.0 PROD</title>
      <p>2013-06-17 <ul>
          <li>
            <xref href="../../common_newest/Rosetta_copyright-LxAdv-copyright.dita">2013-06-17 -
              copyright to copyright: Added an example when <sourcexml>copyright-holder</sourcexml>
              is not present in the source.</xref>
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
        </ul>
      </p>
    </section>
    <section>
      <title>Courtcase 8.3 PROD</title>
      <p>2013-05-13 <ul>
          <li>
            <xref href="../../common_newest/Rosetta_blockquote-LxAdv-blockquote.dita">2013-05-08 -
              blockquote to blockquote: Extended the list of allowable values for image
              handling.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_inlineobject-LxAdv-figure_ref.inlineobject.dita">2013-05-08 - inlineobject to figure/ref:inlineobject: Extended the list of allowable
              values for image handling.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_inlineobject-Chof-emph-LxAdv-figure_ref.inlinobject.dita">2013-05-08 - emph/inlineobject to figure/ref:inlineobject: Extended the list of
              allowable values for image handling.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_inlineobject-Chof-sub-LxAdv-figure_ref.inlineobject.dita">2013-05-08 - sub/inlineobject to figure/ref:inlineobject: Extended the list of
              allowable values for image handling.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-05-08 - remotelink to ref:crossreference: Extended the list of allowable values
              for image handling.</xref>
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
            <xref href="../../common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2013-05-01 -
              ci.cite to lnci.cite: Removed special rule for
                <sourcexml>ci:cite/ci:content/remotelink</sourcexml> which required suppression of
                <sourcexml>ci:cite/ci:content</sourcexml> tags. The elements are now retained and
              convert according to common rules.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_inlineobject-LxAdv-figure_ref.inlineobject.dita">2013-05-01 - inlineobject to figure/ref:inlineobject: Removed instructions for
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
            <xref href="../../common_newest/Rosetta_inlineobject-LxAdv-figure_ref.inlineobject.dita">2013-04-30 - inlineobject to figure/ref:inlineobject: Updated target sample according
              to latest Apollo markup.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_inlineobject-Chof-emph-LxAdv-figure_ref.inlinobject.dita">2013-04-30 - emph/inlineobject to figure/ref:inlineobject: Updated target sample
              according to latest Apollo markup.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_inlineobject-Chof-sub-LxAdv-figure_ref.inlineobject.dita">2013-04-30 - sub/inlineobject to figure/ref:inlineobject: Updated target sample
              according to latest Apollo markup.</xref>
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
          <li>
            <xref href="../../common_newest/Rosetta_docinfo.doc-lang-and-doc-country-LxAdv-ROOT_xml.lang.dita">2013-04-19 - docinfo:doc-lang and docinfo:doc-country to @xml:lang and @xml:ID: Added
              note about applicability of restrictions and required modifications for
                <targetxml>xml:id</targetxml> to other scenarios.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2013-04-12 - docinfo:assoc-links to doc:related-content: This module was changed from
              UK specific to applicable to all LBUs</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2013-04-10 - docinfo:assoc-links to doc:related-content: An example for related
              content Source and Target XML 4</xref>
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
          <li>
            <xref href="../../common_newest/Rosetta_Elements-LxAdv-Empty_Elements.dita">2013-03-28 -
              Suppress empty elements unless otherwise stated: Created.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2013-03-28 - docinfo:assoc-links to doc:related-content: Added rules for
                <sourcexml>docinfo:assoc-links-grp</sourcexml> and for child
                <sourcexml>text</sourcexml>.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_docinfo.doc-id-LxAdv-dcidentifier_lnmetaidentifier-scheme.dita">2013-03-20 - docinfo:doc-id to dc:identifier[@lnmeta:identifier-scheme]: Updated the
              information on handling the situation when
                <sourcexml>docinfo:dpsi[@id-string]</sourcexml> is absent with instructions to get
              the dpsi from
                <sourcexml>docinfo/docinfo:custom-metafields/docinfo:custom-metafield[@name="dpsi"]</sourcexml>.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_nl-LxAdv-proc.nl.dita">2013-03-14 - nl to
              proc:nl: Add instruction and example <sourcexml>nl/@n</sourcexml>.</xref>
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
            <xref href="../../common_newest/Rosetta_glp.note_blockquote_p_text_inlineobject-LxAdv-note_bodytext_p_text.dita">2013-03-12 - glp:note: Updated the instructions to remove the contradictory addition
              of inlineobject within the output</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-03-11 - remotelink to ref:crossreference: Instruction and example added on how
              to handle <targetxml>ref:marker </targetxml> if it is in
                <targetxml>ref:lnlink@service=”URL”</targetxml>and the
                <targetxml>ref:key-value@value</targetxml> starts-with (.,
              'http://www.lexisnexis.com/au/legal/api')</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_date-LxAdv-date.dita">2013-03-08 - date to date:
              Added instruction for @normdate attribute that falls on various NL date
              elements</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_heading-LxAdv-heading.dita">2013-03-06 - heading
              to heading: Removed instructions/rules for exceptional desig scenario and deprecated
              attribute <targetxml>@followstitle</targetxml>.</xref>
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
            <xref href="../../common_newest/Rosetta_emp-Chof-heading_title-LxAdv-heading_title.dita">2013-02-26 - heading/title/emph to heading/title: Created.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_link-LxAdv-ref.lnlink.dita">2013-02-26 - link to
              ref:lnlink/@service="ATTACHMENT": Updated target example per project
              requirement.</xref>
          </li>
          <li>
            <xref href="UK01_Rosetta_case.courtnum.dita">2013-02-25 - case:courtnum: Changed the
              mapping for <sourcexml>case:courtnum</sourcexml> so that it is dependent on whether a
                <sourcexml>ci:cite</sourcexml> child is present.</xref>
          </li>
          <li>
            <xref href="UK01_Rosetta_case.juris.dita">2013-02-25 - case:juris: Instruction have been
              added to handle <sourcexml>case:juris</sourcexml> according to the jurisdiction value
              it holds.</xref>
          </li>
          <li>
            <xref href="../../common_caselaw/Rosetta_catchwordgrp.dita">2013-02-25 - catchwordgrp:
              Added instruction and example for handling of
              <sourcexml>catchwords/page</sourcexml>.</xref>
          </li>
        </ul>
      </p>
    </section>
    <section>
      <title>Courtcase 7.14 PROD</title>
      <p>2013-02-26<ul>
          <li>
            <xref href="../../common_newest/Rosetta_docinfo.alt-renditions-LxAdv-doc.alt-renditions.dita">2013-02-26 - docinfo:alt-renditions/docinfo:alt-rendition to
              doc:alt-renditions/doc:alt-rendition: Updated target example per project
              requirement.</xref>
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
            <xref href="UK01_Rosetta_case.courtnum.dita">2013-02-25 - case:courtnum: Changed the
              mapping for <sourcexml>case:courtnum</sourcexml> so that it is dependent on whether a
                <sourcexml>ci:cite</sourcexml> child is present.</xref>
          </li>
          <li>
            <xref href="UK01_Rosetta_case.juris.dita">2013-02-25 - case:juris: Instruction have been
              added to handle <sourcexml>case:juris</sourcexml> according to the jurisdiction value
              it holds.</xref>
          </li>
          <li>
            <xref href="../../common_caselaw/Rosetta_catchwordgrp.dita">2013-02-25 - catchwordgrp:
              Added instruction and example for handling of
              <sourcexml>catchwords/page</sourcexml>.</xref>
          </li>
        </ul></p>
    </section>
    <section>
      <title>Courtcase 7.14 PROD</title>
      <p>2013-02-20<ul>
          <li>
            <xref href="../../common_caselaw/Rosetta_case.casename-LxAdv_caseinfo.casename_caseinfo.fullcasename.dita">2013-02-20 - case:casename: Added a note regarding the suppression of
                <sourcexml>@ln.user-displayed</sourcexml>.</xref>
          </li>
          <li>
            <xref href="UK01_Rosetta_case.parallelcite-LxAdv_ref.parallelcite.dita">2013-02-20
              - case:parallelcite: Added a note regarding the suppression of
                <sourcexml>@ln.user-displayed</sourcexml>.</xref>
          </li>
          <li>
            <xref href="UK01_Rosetta_case.courtnum.dita">2013-02-20 - case:courtnum: Added a note
              regarding the suppression of <sourcexml>@ln.user-displayed</sourcexml>.</xref>
          </li>
          <li>
            <xref href="../../DITA-UK/UK01_CaseLaw/UK01_Rosetta_case.dates-LxAdv_decision.dates.dita">2013-02-20 - case:dates: Added a note regarding the suppression of
                <sourcexml>@ln.user-displayed</sourcexml>.</xref>
          </li>
          <li>
            <xref href="../../DITA-UK/UK01_CaseLaw/UK01_Rosetta_case.judges.dita">2013-02-20 -
              case:judges: Added a note regarding the suppression of
                <sourcexml>@ln.user-displayed</sourcexml>.</xref>
          </li>
        </ul></p>
    </section>
    <section>
      <p>2013-02-18<ul>
          <li>catchwordgrp section: Updated target example for handling of
              <sourcexml>catchwordgrp/page</sourcexml>.</li>
        </ul></p>
    </section>
    <section>
      <p>2013-01-24<ul>
          <li>case:constituents section: Updated target example for handling of
              <sourcexml>footnote/@fntoken="0"</sourcexml>.</li>
          <li>case:litigants section: Updated instruction and example for poulating attribute
              <targetxml>@partyrole</targetxml>.</li>
          <li><targetxml>lnci:cite</targetxml> has been added to the content model of
              <targetxml>decision:argueddate</targetxml>.</li>
        </ul></p>
    </section>
    <section>
      <p>2013-01-14<ul>
          <li><targetxml>lnci:cite</targetxml> is added to the content model of
              <targetxml>courtcase:judges</targetxml>.</li>
          <li>case:judgments section: Instructions have been updated with directions for populating
            the attribute <targetxml>decision:decisiondate/@normdate</targetxml>.</li>
          <li>case:litigants section: Updated target example because
              <targetxml>@partyrole</targetxml> has become optional in CourtCase Schema 7.13
            Prod.</li>
        </ul></p>
    </section>
    <section>
      <p>2012-12-26<ul>
          <li>Instructions have been updated with directions for populating the attribute
              <targetxml>decision:decisiondate/@normdate</targetxml>.</li>
          <li>Added instruction and example for handling of text(PCDATA) occuring in between
              <sourcexml>case:parallelcite</sourcexml> and <sourcexml>ci:cite</sourcexml>.</li>
          <li>Added instruction and example for handling of text(PCDATA) occuring in between
              <sourcexml>case:reportercite</sourcexml> and <sourcexml>ci:cite</sourcexml>.</li>
        </ul></p>
    </section>
    <section>
      <p>2012-12-03<ul>
          <li>Added instruction and example for handling of
              <sourcexml>case:hearingdate/emph</sourcexml>.</li>
          <li>Added instruction and example for handling of
              <sourcexml>case:courtnum/emph</sourcexml>.</li>
        </ul></p>
    </section>
    <section>
      <p>2012-11-12<ul>
          <li>Added instructions and example for handling of
              <sourcexml>catchphrase/remotelink</sourcexml>.</li>
          <li>Target Xpath has been revised for <sourcexml>case:litigants</sourcexml>.</li>
          <li>Added instructions and example for handling of
            <sourcexml>sub/inlineobject</sourcexml>.</li>
        </ul></p>
    </section>
    <section>
      <p>2012-11-06<ul>
          <li>Added CR number to allow caseinfo:party to the content model of
            caseinfo:caseinfo.</li>
          <li>Removed instruction for <sourcexml>email</sourcexml> because they are already in
              <b>General Markup</b> section.</li>
          <li>Added instructions for handling of
              <sourcexml>case:appendix/case:consideredcases</sourcexml></li>
          <li>Added a note for handling the child elements of
            <sourcexml>case:subhist</sourcexml>.</li>
          <li>Removed CR number from <sourcexml>case:priorhist</sourcexml> section.</li>
          <li>Removed CR number from <sourcexml>case:subhist</sourcexml> section.</li>
          <li>Updated the target example for <sourcexml>case:priorhist</sourcexml> and
              <sourcexml>case:subhist</sourcexml>.</li>
          <li>Added instruction and example for handling of
              <sourcexml>case:decisiondate/emph</sourcexml>.</li>
        </ul></p>
    </section>
    <section>
      <title>Created</title>
    </section>
  </body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK01_CaseLaw\UK01_changeLog.dita  -->

</xsl:stylesheet>