<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:ci="http://www.lexis-nexis.com/ci" xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" xmlns:frm="http://www.lexis-nexis.com/glp/frm" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:source_lnci="http://www.lexis-nexis.com/lnci" xmlns:admindoc="urn:x-lexisnexis:content:administrative-document:sharedservices:1" xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" xmlns:form="http://www.lexisnexis.com/xmlschemas/content/shared/form/1/" xmlns:lnci="http://www.lexisnexis.com/xmlschemas/content/shared/citations/1/" xmlns:proc="http://www.lexisnexis.com/xmlschemas/content/shared/process-elements/1/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita case ci docinfo frm leg lnci">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="UK08_QUASI_ReguMate_COMMTOADMINDOC-change-log">
  <title>Change Log for UK08 QUASI Regulatory Materials COMMENTARYDOC TO ADMINDOC</title>
  <body>
    <section>
      <title>Admindoc 4.9:PROD</title>
      <p><b>2016-11-17</b></p>
      <ul>
        <li>
          <xref href="../../../../Rosetta/common_newest/Rosetta_inlineobject-LxAdv-ref.inlineobject_BLOBSTORE.dita">2016-11-07 - inlineobject to ref:inlineobject for BLOBSTORE images id-CCCC-10540: Updated the instruction for ref:key-name and
            proc:param attribute values.</xref>
        </li>
      </ul>
    </section>
    <section>
      <title>Admindoc 4.9:PROD</title>
      <p><b>2016-10-28</b></p>
      <ul>
        <li>
          <xref href="../../../../Rosetta/common_newest/Rosetta_inlineobject-LxAdv-ref.inlineobject_BLOBSTORE.dita">2016-10-21 - inlineobject to ref:inlineobject for BLOBSTORE images id-CCCC-10540: Changed one proc:param name for target. Formerly
            <targetxml>@name="attachment-server"</targetxml>; changed to
            <targetxml>@name="object-server"</targetxml>.</xref>
        </li>
        <li>
          <xref href="../../../../Rosetta/common_newest/Rosetta_link-LxAdv-ref.lnlink_BLOBSTORE.dita">2016-10-21 - link[@filename] to ref:lnlink[@service="ATTACHMENT"] for BLOBSTORE images id-CCCC-10541: Updated the Blobstore related instruction for
            use standardize specific output parameters.</xref>
        </li>
        <li>
          <xref href="../../../../Rosetta/common_newest/Rosetta_docinfo.versioninfo-LxAdv-doc.versioninfo-scheme.dita">2016-10-17 - docinfo:versioninfo to doc:versioninfo id-CCCC-10307: Updated the instruction for handling the
            target attribute <targetxml>@normdate</targetxml>.
            [Webstar#6676189]</xref>
        </li>
        <li>
          <xref href="../../../../Rosetta/common_newest/Rosetta_edpnum-LxAdv-desig.dita">2016-10-12 - edpnum to desig id-CCCC-10308: Added rule for handling scenario when
            <sourcexml>pnum</sourcexml> and <sourcexml>edpnum </sourcexml> occur as
            siblings (applicable for UK22CS and UK06).</xref>
        </li>
        <li>
          <xref href="../../../../Rosetta/common_newest/Rosetta_note-LxAdv-note.dita">2016-10-12 - note to note id-CCCC-10405: Added instruction for handling input scenario <sourcexml>note/legfragment</sourcexml>.
          </xref>
        </li>
        <li>
          <xref href="../../../../Rosetta/common_newest/Rosetta_UK_docinfo.custom-metafields-LxAdv-dc.date_or_doc.docinfo_classify.classification.dita">2016-10-04 - (UK) docinfo:custom-metafield to dc:date or doc:metadata/doc:docinfo/classify:classification[@classscheme="uk-functional-information"] id-CCCC-10547: Added rule for "word-toc"; and updated the example.</xref>
        </li>
        <li>
          <xref href="../../../../Rosetta/common_newest/Rosetta_docinfo.versioninfo-LxAdv-doc.versioninfo-scheme.dita">2016-09-14 - docinfo:versioninfo to doc:versioninfo id-CCCC-10307: Note added for handling the input markup '<targetxml>docinfo:versioninfo@startdate-tbd</targetxml>'.</xref>
        </li>
        <li>
          <xref href="../../../../Rosetta/common_newest/Rosetta_UK_docinfo.custom-metafields-LxAdv-dc.date_or_doc.docinfo_classify.classification.dita">2016-09-08 - (UK) docinfo:custom-metafield to dc:date or doc:metadata/doc:docinfo/classify:classification[@classscheme="uk-functional-information"] id-CCCC-10547: Added rule for attribute
            <sourcexml>@name</sourcexml> with value "containsAppealTracker"; and
            updated the example.</xref>
        </li>
        <li>
          <xref href="../../../../Rosetta/common_newest/Rosetta_docinfo.versioninfo-LxAdv-doc.versioninfo-scheme.dita">2016-09-02 - docinfo:versioninfo to doc:versioninfo id-CCCC-10307: Special Rule for added
            <targetxml>@normdate</targetxml> attribute inside the
            <targetxml>doc:startdate</targetxml> and
            <targetxml>doc:enddate</targetxml>.</xref>
        </li>
        <li>
          <xref href="../../../../Rosetta/common_newest/Rosetta_footnote-LxAdv-footnote.dita">2016-08-08 - footnotegrp and footnote to footnotegroup and footnote id-CCCC-10322: Removing duplicate entry of
            <sourcexml>lilabel/fnr</sourcexml>
          </xref>
        </li>
        <li>
          <xref href="../../../../Rosetta/common_newest/Rosetta_footnote-LxAdv-footnote.dita">2016-08-04 - footnotegrp and footnote to footnotegroup and footnote id-CCCC-10322: Added note for handling
            <sourcexml>lilabel/fnr</sourcexml> Applicable for AU05,
            Incident #6597893</xref>
        </li>
        <li>
          <xref href="../../../../Rosetta/common_newest/Rosetta_inlineobject-DescendantOf-title-LxAdv-ref.inlineobject.dita">2016-08-03 - inlineobject[ancestor::title] to ref:inlineobject id-CCCC-10367: Added Note about xml snippets that illustrate image
            handling. Note summarizes move from Apollo to Blobstore application. UK is first LBU to
            move to Blobstore.</xref>
        </li>
        <li>
          <xref href="../../../../Rosetta/common_newest/Rosetta_inlineobject-Chof-emph_sub-LxAdv-figure_ref.inlinobject.dita">2016-08-03 - emph/sub/inlineobject to figure/ref:inlineobject id-CCCC-10360: Added Note about xml snippets that illustrate
            image handling. Note summarizes move from Apollo to Blobstore application. UK is
            first LBU to move to Blobstore.</xref>
        </li>
        <li>
          <xref href="../../../../Rosetta/common_newest/Rosetta_bodytext-link-LxAdv-admindoc.bodytext-p-text-ref.lnlink.dita">2016-08-03 - bodytext/link to admindoc:bodytext/p/text/ref:lnlink id-CCCC-10535: Added Note about xml snippets that illustrate
            image handling. Note summarizes move from Apollo to Blobstore application. UK is
            first LBU to move to Blobstore.</xref>
        </li>
        <li>
          <xref href="../../../../Rosetta/common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2016-08-03 - remotelink to ref:crossreference id-CCCC-10465: Added Note about xml snippets that illustrate
            image handling. Note summarizes move from Apollo to Blobstore application. UK is
            first LBU to move to Blobstore.</xref>
        </li>
        <li>
          <xref href="../../../../Rosetta/common_newest/Rosetta_inlineobject-Chof-emph-LxAdv-figure_ref.inlinobject.dita">2016-08-01 - emph/inlineobject to figure/ref:inlineobject id-CCCC-10359: Added Note about xml snippets that illustrate
            image handling. Note summarizes move from Apollo to Blobstore application. UK is
            first LBU to move to Blobstore.</xref>
        </li>
        <li>
          <xref href="../../../../Rosetta/common_newest/Rosetta_inlineobject-Chof-sub-LxAdv-figure_ref.inlineobject.dita">2016-08-01 - sub/inlineobject to figure/ref:inlineobject id-CCCC-10365: Added Note about xml snippets that illustrate
            image handling. Note summarizes move from Apollo to Blobstore application. UK is
            first LBU to move to Blobstore.</xref>
        </li>
        <li>
          <xref href="../../../../Rosetta/common_newest/Rosetta_blockquote-LxAdv-blockquote.dita">2016-07-29 - blockquote to blockquote id-CCCC-10247: Added Note about xml snippets that illustrate
            image handling. Note summarizes move from Apollo to Blobstore application. UK is
            first LBU to move to Blobstore. VSTS 76146</xref>
        </li>
        <li>
          <xref href="../../../../Rosetta/common_newest/Rosetta_figure-LxAdv-figure.dita">2016-07-29 - figure to figure id-CCCC-10320: Added Note about xml snippets that illustrate
            image handling. Note summarizes move from Apollo to Blobstore application. UK is
            first LBU to move to Blobstore.</xref>
        </li>
        <li>
          <xref href="../../../../Rosetta/common_newest/Rosetta_inlineobject-LxAdv-figure_ref.inlineobject.dita">2016-07-29 - inlineobject to figure/ref:inlineobject id-CCCC-10368: Added Note about xml snippets that illustrate
            image handling. Note summarizes move from Apollo to Blobstore application. UK is
            first LBU to move to Blobstore.</xref>
        </li>
        <li>
          <xref href="../../../../Rosetta/common_newest/Rosetta_UK_docinfo.custom-metafields-LxAdv-dc.date_or_doc.docinfo_classify.classification.dita">2016-07-26 - (UK) docinfo:custom-metafield to dc:date or doc:metadata/doc:docinfo/classify:classification[@classscheme="uk-functional-information"] id-CCCC-10547: Added rule for "resultType"; and updated the
            example.</xref>
        </li>
        <li>
          <xref href="../../../../Rosetta/common_newest/Rosetta_UK_docinfo.custom-metafields-LxAdv-dc.date_or_doc.docinfo_classify.classification.dita">2016-07-13 - (UK) docinfo:custom-metafield to dc:date or doc:metadata/doc:docinfo/classify:classification[@classscheme="uk-functional-information"] id-CCCC-10547: Added rules for "createdDate", "updatedDate", and "inEditorialReview"; and updated the example.</xref>
        </li>
        <li>
          <xref href="../../../../Rosetta/common_newest/Rosetta_UK_docinfo-LxAdv-doc.docinfo_classify.classification.dita">2016-06-17 - (UK) docinfo to doc:metadata/doc:docinfo/classify:classification[@classscheme="uk-functional-information"] id-CCCC-10546: Created. New rules.</xref>
        </li>
        <li>
          <xref href="../../../../Rosetta/common_newest/Rosetta_UK_docinfo.custom-metafields-LxAdv-dc.date_or_doc.docinfo_classify.classification.dita">2016-06-17 - (UK) docinfo:custom-metafield to dc:date or doc:metadata/doc:docinfo/classify:classification[@classscheme="uk-functional-information"] id-CCCC-10547: Created. New rules.</xref>
        </li>
        <li>
          <xref href="../../../../Rosetta/common_newest/Rosetta_inlineobject-LxAdv-ref.inlineobject_BLOBSTORE.dita">2016-05-20 - inlineobject to ref:inlineobject for BLOBSTORE images id-CCCC-10540: Created this instruction to specify Blobstore
            specific output parameters.</xref>
        </li>
        <li>
          <xref href="../../../../Rosetta/common_newest/Rosetta_link-LxAdv-ref.lnlink_BLOBSTORE.dita">2016-05-20 - link[@filename] to ref:lnlink[@service="ATTACHMENT"] for BLOBSTORE images id-CCCC-10541: Created this instruction to specify Blobstore specific output parameters.</xref>
        </li>
      </ul>
    </section>
    
    <section>
      <title>Admindoc 4.9:PROD</title>
      <p><b>2016-06-02</b></p>
      <ul>
        <li>
          <xref href="../../../common_newest/Rosetta_emph-LxAdv-emph.dita">2016-04-01 - emph to emph id-CCCC-10316: Added statement to clarify that children of emph should be processed.</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_l-LxAdv-list.dita">2016-04-01 - l to list id-CCCC-10372: Added mapping instruction for handling h within listitem.</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2016-03-23 - ci.cite to lnci.cite id-CCCC-10268: Updated main instructions to clarify that descendants of ci:cite, and not just children, are to be processed.</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_edpnum-LxAdv-desig.dita">2016-03-15 - edpnum to desig id-CCCC-10308: Added rule for handling scenario when
            <sourcexml>pnum</sourcexml> and <sourcexml>edpnum </sourcexml> occur as
            siblings (applicable only for UK22CS). [RFA #2755]</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_footnote-LxAdv-footnote.dita">2016-02-29 - footnotegrp and footnote to footnotegrp and footnote id-CCCC-10322: Added note for handling
            <sourcexml>@type="editorial"</sourcexml> attribute. Applicable for UK22CS,
            RFA# 2762</xref>
        </li>
      </ul>
    </section>
    <section>
      <title>Admindoc 4.8:PROD</title>
      <p><b>2016-02-24</b></p>
      <ul>
        <li>
          <xref href="../../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2016-02-05 - remotelink to ref:crossreference id-CCCC-10465: Added note and example when
            <sourcexml>remotelink</sourcexml> is a child of <sourcexml>emph</sourcexml>. Applicable
            on NZ17CC, Webstar: 319232 and 318735.</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_footnote-LxAdv-footnote.dita">2016-01-05 - footnotegrp and footnote to footnotegrp and footnote id-CCCC-10322: Added instructions for
            <sourcexml>footnotegrp</sourcexml> within <sourcexml>frm:div</sourcexml>. To generate
            <targetxml>form:p/form:text</targetxml> wrapper for target
            <targetxml>footnotegroup</targetxml>. Immediately affects UK12 but will
            apply to any stream if the use case occurs. RFA 2653.</xref>
        </li>
      </ul>
    </section>
    <section>
      <title>Admindoc 4.8:PROD</title>
      <p><b>2015-12-16</b>
        <ul>
          <li>Introduction topic: Modified the Admindoc schema version to 4.8_PROD.</li>
        </ul>
      </p>
      <ol>
        <li>
          <xref href="../../../common_newest/Rosetta_docinfo.doc-heading-LxAdv-dc.title.dita">2015-12-04 - docinfo:doc-heading to dc:title id-CCCC-10292: Added exception for AU Legislative Citator to 
            drop text Overview Tab for  from conversion.</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_inlineobject-LxAdv-ref.inlineobject.dita">2015-11-16 - inlineobject to ref:inlineobject id-CCCC-10369: Added instruction for <sourcexml>inlineobject/@key</sourcexml> 
            to be suppressed.</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2015-09-15 - ci.cite to lnci.cite id-CCCC-10268: Updated instruction to suppressed the attribute
            <sourcexml>@type</sourcexml> with value "legref" in target.
            Applicable on NZ Regulation and NZ Act from services [Webstar
            #6245139].</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_link-LxAdv-ref.lnlink.dita">2015-09-08 - link to ref:lnlink[@service="ATTACHMENT"] id-CCCC-10394: Minor XPATH correction in title to change 
            <targetxml>ref:lnlink/@service="ATTACHMENT"</targetxml> to be 
            <targetxml>ref:lnlink[@service="ATTACHMENT"]</targetxml>.</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_docinfo.doc-heading-LxAdv-dc.title.dita">2015-09-06 - docinfo:doc-heading to dc:title id-CCCC-10292: Modified only the special rule for CA14
            trademarks. No longer mapping (MC) to entity, the unicode code point is not
            currently supported. The pcdata (MC) is retained instead. RFA 145. CA14
            only.</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_inlineobject-Chof-emph-LxAdv-figure_ref.inlinobject.dita">2015-08-12 - emph/inlineobject to figure/ref:inlineobject id-CCCC-10359: Added instruction and example for 
            <sourcexml>leg:comntry/level/bodytext/heading/title/emph/inlineobject</sourcexml>, Applicable on UK07, R4.5 issue # 2364.</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_inlineobject-Chof-emph-LxAdv-figure_ref.inlinobject.dita">2015-07-24 - emph/inlineobject to figure/ref:inlineobject id-CCCC-10359: When Inlineobject is followed by two emph
            elements of same typestyle <sourcexml>sup/emph/emph/inlineobject</sourcexml>then from Target we should drop the one emph element
            and the followed <sourcexml>emph/inlineobject</sourcexml> should mapped with
            <targetxml>emph/ref:inlineobject</targetxml> in Target.</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_inlineobject-Chof-emph-LxAdv-figure_ref.inlinobject.dita">2015-07-21 - emph/inlineobject to figure/ref:inlineobject id-CCCC-10359: When Inlineobject is followed by two emph
            elements of same typestyle then from Target we should drop the one emph element
            and the followed <sourcexml>emph/inlineobject</sourcexml> should mapped with
            <targetxml>figure/ref:inlineobject</targetxml> in Target.</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2015-06-24 - remotelink to ref:crossreference id-CCCC-10465: Added clarification note about url, @normval, and @hrefclass. Webstar 302055.</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_inlineobject-Chof-emph-LxAdv-figure_ref.inlinobject.dita">2015-06-18 - emph/inlineobject to figure/ref:inlineobject id-CCCC-10359: When source is having emph followed by inlineobject inside base:h element <sourcexml>h/emph/inlineobject</sourcexml> than in Target it should Map it like <targetxml>emph/ref:inlineobject</targetxml> as emph containing text under it.</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_link-LxAdv-ref.lnlink.dita">2015-05-22 - link to ref:lnlink[@service="ATTACHMENT"] id-CCCC-10394: Changed the instructions to indicate <sourcexml>link/@status</sourcexml> is always dropped and removed <targetxml>ref:lnlink/@status</targetxml> from target example. This is a very low-priority change and has been added for technical correctness, particularly with respect to new CIs. Existing scripts do not have to implement this change since <targetxml>ref:lnlink/@status</targetxml> is ignored by LexisAdvance if it is present.</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2015-05-22 - remotelink to ref:crossreference id-CCCC-10465: Added an instruction to explicitly indicate <sourcexml>remotelink/@status</sourcexml> is always dropped (suppressed). This is a very low-priority change and has been added for technical correctness, particularly with respect to new CIs. Existing scripts do not have to implement this change unless needed since prior to the change <targetxml>remotelink/@status</targetxml> handling was not explicitly specified.</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_remotelink-Chof-url-LxAdv-url.dita">2015-05-22 - url/remotelink to url id-CCCC-10464: Added an instruction to explicitly indicate <sourcexml>remotelink/@status</sourcexml> is always dropped (suppressed). This is a very low-priority change and has been added for technical correctness, particularly with respect to new CIs. Existing scripts do not have to implement this change unless needed since prior to the change <targetxml>remotelink/@status</targetxml> handling was not explicitly specified.</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_footnote-LxAdv-footnote.dita">2015-05-14 - footnotegrp and footnote to footnotegrp and footnote id-CCCC-10322: Added instructions for
            <sourcexml>footnotegrp</sourcexml> within <sourcexml>frm:body</sourcexml>
            and <sourcexml>clause</sourcexml>. To generate
            <targetxml>form:p/form:text</targetxml> wrapper for target
            <targetxml>footnotegroup</targetxml>. Immediately affects UK12 but will
            apply to any stream if the use case occurs. R4.5 Content Issues 2316 and
            2317.</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_docinfo.doc-heading-LxAdv-dc.title.dita">2015-05-05 - docinfo:doc-heading to dc:title id-CCCC-10292: Added note to convert (TM), (R), and (MC) to
            unicode code points. DB # 45. Applicable to CA14.</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_docinfo.hier-LxAdv-doc.hier.dita">2015-03-25 - docinfo:hier to doc:hier id-CCCC-10297: Added note with rule for
            <sourcexml>title/num</sourcexml>. Suppress <sourcexml>num</sourcexml> tag but
            output content. Applicable for CA09 only. RFA 2249.</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2015-03-17 - ci.cite to lnci.cite id-CCCC-10268: An attribute <targetxml>@inline</targetxml> get added with <targetxml>desig</targetxml> element even when the source<sourcexml>pnum</sourcexml> is not having that attribute<sourcexml>@inline</sourcexml> Applicable on CA12 only.</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2015-02-24 - ci.cite to lnci.cite id-CCCC-10268: Example updated as per new rule an attribute <targetxml>@inline</targetxml>get added with <targetxml>desig</targetxml>element when the source<sourcexml>pnum</sourcexml>is not having that attribute<sourcexml>@inline</sourcexml>
          </xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_docinfo.hier-LxAdv-doc.hier.dita">2015-01-23 - docinfo:hier to doc:hier id-CCCC-10297: Added note to convert
            <sourcexml>docinfo:hierlev/@exclude-from-displayunits="true"</sourcexml>
            into <targetxml>doc:hier/@includeintoc="false"</targetxml>.</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_docinfo.hier-LxAdv-doc.hier.dita">2015-01-13 - docinfo:hier to doc:hier id-CCCC-10297: Added a note to repalce
            <sourcexml>nl</sourcexml> to a white space when <sourcexml>nl</sourcexml> is
            coming as child of <sourcexml>docinfo:hierlev/heading/title</sourcexml>
          </xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2015-01-09 - remotelink to ref:crossreference id-CCCC-10465: For the two use cases associated with url (target
            <targetxml>url</targetxml> or <targetxml>ref:lnlink</targetxml>): Added exceptional rule
            to not concatenate values when <sourcexml>@hrefclass</sourcexml> content is already
            present in <sourcexml>@href</sourcexml>. Expanded examples 5 and 7 to illustrate the
            scenario. Responds to data for UK10 Dictionaries but applies in general. R4.5 Content
            Issue 2120.</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_remotelink-Chof-url-LxAdv-url.dita">2015-01-09 - url/remotelink to url id-CCCC-10464: Within use case that maps to
            <targetxml>ref:lnlink</targetxml>, added exceptional rule to not concatenate values when
            <sourcexml>@hrefclass</sourcexml> content is already present in
            <sourcexml>@href</sourcexml>. Expanded example to illustrate the scenario. Responds to
            data for UK10 Dictionaries but applies in general. R4.5 Content Issue 2120.</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2014-12-08 - ci.cite to lnci.cite id-CCCC-10268: Addition of mapping for <sourcexml>ci:pinpoint</sourcexml> to 
            <targetxml>lnci:pinpoint</targetxml> and example from US LPA content.</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2014-10-27 - remotelink to ref:crossreference id-CCCC-10465: Minor. Within use case for
            <sourcexml>@service="DOC-ID"</sourcexml>, rule for
            <sourcexml>@remotekey1="REFPTID"</sourcexml> now also applies when
            <sourcexml>@remotekey1="REFPT"</sourcexml>. That is, the condition is expanded to
            include value <sourcexml>"REFPT"</sourcexml>; the mapping is unchanged. The value
            <sourcexml>"REFPT"</sourcexml> is new in Oct 2014 redelivery of UK11-DN but the rule
            applies to any stream where <sourcexml>@remotekey1="REFPT"</sourcexml> may occur. R4.5
            Content Issue 2003.</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_inlineobject-LxAdv-figure_ref.inlineobject.dita">2014-10-13 - inlineobject to figure/ref:inlineobject id-CCCC-10368: Added note and example to suppress
            <targetxml>proc:nl</targetxml> from before and after of
            <targetxml>figure/inlineobject</targetxml> when it comes inside
            <targetxml>verbatim</targetxml> element.</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_title-LxAdv-title.dita">2014-10-07 - title to title id-CCCC-10479: Removed instruction and example to convert attribute <sourcexml>@searchtype="DIGEST-SUBJECT"</sourcexml>. Applicable to CA12.</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_text-LxAdv-text.dita">2014-08-11 - text to text id-CCCC-10477: For CANADA Content Stream: Only move the
            <sourcexml> text@align</sourcexml> to the parent <targetxml>p</targetxml> if
            it is the only text in <sourcexml>p</sourcexml>, Otherwise, wrap the
            <sourcexml>text</sourcexml> with <targetxml>p</targetxml> and move the
            <sourcexml>@align</sourcexml> attribute to the newly created <targetxml>
              p</targetxml>.</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_inlineobject-LxAdv-ref.inlineobject.dita">2014-07-08 - inlineobject to ref:inlineobject id-CCCC-10369: Not a rule change. Clarification added to note regarding suppression of <sourcexml>inlineobject</sourcexml> when <sourcexml>inlineobject/@filename</sourcexml> contains certain values.</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_table-LxAdv-table.dita">2014-07-08 - table to table id-CCCC-10475: Updated instruction for added the
            following rarely occurring attributes <sourcexml>@char</sourcexml> inside the <sourcexml>entry</sourcexml>.</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_docinfo.doc-id-LxAdv-dcidentifier_lnmetaidentifier-scheme.dita">2014-06-23 - docinfo:doc-id to dc:identifier[@lnmeta:identifier-scheme] id-CCCC-10293: Note and Example removed - For CA05 Acts and
            Bills- Mapping in dc:identifier for act-no and chunk-no. Db issue #1464</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_table-LxAdv-table.dita">2014-06-04 - table to table id-CCCC-10475: For completeness, added instructions for the
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
          <xref href="../../../common_newest/Rosetta_footnote-LxAdv-footnote.dita">2014-06-02 - footnotegrp and footnote to footnotegrp and footnote id-CCCC-10322: Canada only. Added special rule to suppress
            indent from <sourcexml>footnote/fnbody/p[@indent]</sourcexml>. Applies
            immediately to all Canada streams. R4.5 Content Issue 1609.</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_docinfo.doc-id-LxAdv-dcidentifier_lnmetaidentifier-scheme.dita">2014-05-21 - docinfo:doc-id to dc:identifier[@lnmeta:identifier-scheme] id-CCCC-10293: For CA05 Acts and Bills- Mapping in dc:identifier for act-no and chunk-no.. Db issue #1464 </xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_footnote-LxAdv-footnote.dita">2014-04-17 - footnotegrp and footnote to footnotegrp and footnote id-CCCC-10322: Added instruction for
            <sourcexml>footnotegrp</sourcexml> within <sourcexml>sigblock</sourcexml>.
            Specifies <targetxml>p/text</targetxml> wrapper for target
            <targetxml>sigblock/p/text/footnotegroup</targetxml>. Immediately affects
            UK12 but will apply to any stream if the use case occurs. Phase 6 UK discussion
            items 76 and 88.</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_toc-LxAdv-toc.dita">2014-03-20 - toc to toc id-CCCC-10480: New rule. Added mapping for
            <sourcexml>entry-pageref</sourcexml> to <targetxml>toc-pageref</targetxml>.
            Initially for UK12 but will apply for any stream if the use case occurs.
            Responds to data added in UK12 delivery Mar 2014; known to occur in dpsi 02FL
            and 03VY. Phase 6 UK Discussion Item 79. Webteam 252434.</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2014-02-25 - remotelink to ref:crossreference id-CCCC-10465: Updated instruction and created new example (#16)
            for handling <sourcexml>remotelink[@service="QUERY"]</sourcexml>. New instruction
            preserves pcdata but suppresses <sourcexml>remotelink</sourcexml> markup. Webstar #250335.
            Change applies immediately to all Pacific streams, and in the long run to all
            streams.</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_docinfo.doc-heading-LxAdv-dc.title.dita">2014-02-11 - docinfo:doc-heading to dc:title id-CCCC-10292: Updated note when <sourcexml>emph</sourcexml>
            is child of <sourcexml>docinfo:doc-heading</sourcexml> then suppress
            <sourcexml>emph</sourcexml> element and retain its content in
            <targetxml>dc:title</targetxml>, These instructions apply immediately to
            CA12.</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2014-02-03 - remotelink to ref:crossreference id-CCCC-10465: Instruction updated if
            <sourcexml>remotelink</sourcexml> occurs as multiple, immediate siblings and without
            intermediary text within <sourcexml>title</sourcexml>. Also added a example for the same
            scenario. Phase 5 UK discussion-defect tracking issue #161</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_text-LxAdv-text.dita">2014-01-31 - text to text id-CCCC-10477: Updated instruction, <targetxml>align</targetxml> will be moved in <targetxml>p</targetxml> in NL conversion. NZ09 commentary discussion board issue for handling <sourcexml>text/@align</sourcexml>
          </xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_Elements-LxAdv-Empty_Elements.dita">2014-01-16 - Suppress each empty element unless otherwise stated id-CCCC-10310: Added list of elements to suppress if empty.</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_inlineobject-Chof-emph_sub-LxAdv-figure_ref.inlinobject.dita">2014-01-13 - emph/sub/inlineobject to figure/ref:inlineobject id-CCCC-10360: Updated Instruction to handle <sourcexml>emph/sub/inlineobject</sourcexml> when PCDATA occuring between <sourcexml>emph</sourcexml> and <sourcexml>sub</sourcexml>, this change directly affects UK01 Cases WebTeam # 249487</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_footnote-LxAdv-footnote.dita">2014-01-06 - footnotegrp and footnote to footnotegrp and footnote id-CCCC-10322: Updated target example for applying the rule
            of "deleting extraneous instances of @morerows, @colsep and @rowsep" in sample
            documents.</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_l-LxAdv-list.dita">2014-01-06 - l to list id-CCCC-10372: Added mapping instruction for nested lists.</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_Topic_Identifiers.dita">2014--0-5- - Topic Identifiers id-CCCC-10481: Created.</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2013-12-30 - ci.cite to lnci.cite id-CCCC-10268: Minor illustrative change. Added "(AU
            Journals/Newsitem)" to headings for last example to clarify that retention of
            <sourcexml>@type="cite4thisdoc"</sourcexml> is an exception for that
            content, as already described in narrative rules.</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_UK_docinfo.custom-metafields-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta.meta.metaitem.dita">2013-11-20 - docinfo:custom-metafields to doc:legacy-metadata[@metadatasource="lbu-meta"]/meta/metaitem id-CCCC-10485: Added instruction to handle
            <sourcexml>docinfo:custom-metafields/docinfo:custom-metafield/@name="jurisdiction"</sourcexml>
            is "European"  Webteam # 239816 </xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-10-23 - remotelink to ref:crossreference id-CCCC-10465: Added Example when
            <sourcexml>remotelink</sourcexml> having child <sourcexml>emph</sourcexml>. Webteam #
            239816</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_docinfo.doc-heading-LxAdv-dc.title.dita">2013-10-18 - docinfo:doc-heading to dc:title id-CCCC-10292: Updated Instruction when
            <sourcexml>docinfo:doc-heading</sourcexml> contains word RULE: " or
            STATUTE: .</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_Elements-LxAdv-Empty_Elements.dita">2013-10-14 - Suppress each empty element unless otherwise stated id-CCCC-10310: Changed antecedent to singular to match
            instructions.</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-10-03 - remotelink to ref:crossreference id-CCCC-10465: Added use case where remotelink contains @href
            which is a URL but does not contain @hrefclass='http'.</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_footnote-LxAdv-footnote.dita">2013-10-02 - footnotegrp and footnote to footnotegrp and footnote id-CCCC-10322: Not a rule change. Cleaned up the note
            regarding the scenario when footnote/@fntoken has a value of "0" in an attempt
            to make the directions clearer.</xref>
        </li>
      </ol>
    </section>
    <section>
      <title>Admindoc 3.4:PROD</title>
      <p><b>2013-09-25</b>
        <ul>
          <li>Introduction topic: Modified the Admindoc schema version to 3.4_PROD.</li>
        </ul>
      </p>
      <p><b>The following are common module changes</b>
      <ol>
            <li>
               <xref href="../../../common_newest/Rosetta_link-LxAdv-ref.lnlink.dita">2013-09-24 - link to ref:lnlink/@service="ATTACHMENT": Not a rule change. Modified examples to illustrate when <sourcexml>@status</sourcexml> suppressed and when retained.</xref>
            </li>
            <li>
               <xref href="../../../common_newest/Rosetta_desiglabel-Chof-desig-LxAdv-desig.dita">2013-09-19 - desig/desiglabel to desig: Added rules to insert space between label
                    and number when none present in source. Rule required for UK content.
                    Immediately known to occur in UK06, UK07, and UK12. R4.5 Post Iterative Testing
                    Issue 431. WebTeam # 236033.</xref>
            </li>
            <li>
               <xref href="../../../common_newest/Rosetta_table-LxAdv-table.dita">2013-09-16 - table to table: Removed an obsolete note regarding visual styling of tables.</xref>
            </li>
            <li>
               <xref href="../../../common_newest/Rosetta_table-LxAdv-table.dita">2013-09-12 - table to table: WebTeam #s 235116, 235130, 235126: Added instructions for deleting extraneous instances of @morerows, @colsep and @rowsep. These instructions apply immediately to all UK streams and also to AU18.</xref>
            </li>
            <li>
               <xref href="../../../common_newest/Rosetta_title-LxAdv-title.dita">2013-09-03 - title to title: Updated Instruction when <sourcexml>title</sourcexml> contains word "TITLE: " or "NAME: " or "SITE: ".</xref>
            </li>
            <li>
               <xref href="../../../common_newest/Rosetta_docinfo.doc-heading-LxAdv-dc.title.dita">2013-09-03 - docinfo:doc-heading to dc:title: Updated Instruction when <sourcexml>docinfo:doc-heading</sourcexml> contains word "TITLE: " or NAME:  or SITE:  or SUBJECT:.</xref>
            </li>
            <li>
               <xref href="../../../common_newest/Rosetta_desiglabel-Chof-desig-LxAdv-desig.dita">2013-08-23 - desig/desiglabel to desig: Removed <targetxml>@value</targetxml> from
                    target example element <targetxml>desig</targetxml>, as it was decided, that if
                    source element doesn't contain <sourcexml>@value</sourcexml> then target element
                        <targetxml>desig</targetxml> will not contain
                    <targetxml>@value</targetxml>.</xref>
            </li>
            <li>
               <xref href="../../../common_newest/Rosetta_footnote-LxAdv-footnote.dita">2013-08-22 - footnotegrp and footnote to footnotegrp and footnote: Not a rule change. Second target sample
                    modified to remove attribute <targetxml>lnci:cite[@citeref]</targetxml> because
                    value captured in descendant
                        <targetxml>ref:crossreference/ref:locator[@anchoridref]</targetxml>.
                    Ancillary/illustrative within this module. Change made to promote uniformity
                    across samples.</xref>
            </li>
            <li>
               <xref href="../../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-08-22 - remotelink to ref:crossreference: Not a rule change. Modified Sample #10 on
            <sourcexml>ci:cite/ci:content/remotelink</sourcexml>. Removed target attribute
            <targetxml>lnci:cite[@citeref]</targetxml> because value captured in
            <targetxml>ref:crossreference/ref:locator[@anchoridref]</targetxml>.</xref>
            </li>
            <li>
               <xref href="../../../common_newest/Rosetta_link-LxAdv-ref.lnlink.dita">2013-08-21 - link to ref:lnlink/@service="ATTACHMENT": Added instruction for when to suppress <sourcexml>@status</sourcexml>.</xref>
            </li>
            <li>
               <xref href="../../../common_newest/Rosetta_docinfo.lbu-meta-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta-scheme.dita">2013-08-12 - docinfo:lbu-meta to doc:legacy-metadata[@metadatasource="lbu-meta"]: We removed the docinfo:lbu-meta "include" list so now there is only a "drop" list. Anything not on the "drop" list should be passed through. Webteam 230557.</xref>
            </li>
            <li>
               <xref href="../../../common_newest/Rosetta_docinfo-LxAdv-doc.metadata_doc.docinfo.dita">2013-08-09 - docinfo to doc:metadata/doc:docinfo: Added instruction for creating
                        <targetxml>dc:date[@lnmeta:datetype="conversion-date"]</targetxml>.
                    Previously, "conversion-date" was created only if "load-date" was not present.
                    Going forward, conversion should always create "conversion-date". This is not a
                    retroactive change. It should be applied only to streams developed after Aug. 9
                    2013.</xref>
            </li>
            <li>
               <xref href="../../../common_newest/Rosetta_XML_Character_Entities-LxAdv-Unicode.dita">2013-08-08 - XML Character Entities to Unicode code points: This change does not represent a change to
					conversion but rather documentation of the existing behavior.</xref>
            </li>
            <li>
               <xref href="../../../common_newest/Rosetta_docinfo.lbu-meta-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta-scheme.dita">2013-08-02 - docinfo:lbu-meta to doc:legacy-metadata[@metadatasource="lbu-meta"]: Added <sourcexml>@name="selection_criteria_variant"</sourcexml> to the list of values in docinfo:metaitem/@name that should be retained. And added a example.</xref>
            </li>
            <li>
               <xref href="../../../common_newest/Rosetta_docinfo.doc-heading-LxAdv-dc.title.dita">2013-08-01 - docinfo:doc-heading to dc:title: For Canada Content streams: Added a note and examples, when <sourcexml>docinfo:doc-heading</sourcexml> contains <sourcexml>nl</sourcexml> as a child element.</xref>
            </li>
            <li>
               <xref href="../../../common_newest/Rosetta_title-LxAdv-title.dita">2013-07-30 - title to title: Updated Instruction when <sourcexml>title</sourcexml> contains word "TITLE: " or "NAME: ".</xref>
            </li>
            <li>
               <xref href="../../../common_newest/Rosetta_docinfo.doc-heading-LxAdv-dc.title.dita">2013-07-30 - docinfo:doc-heading to dc:title: Added Instruction when <sourcexml>docinfo:doc-heading</sourcexml> contains word "TITLE: " or NAME: .</xref>
            </li>
            <li>
               <xref href="../../../common_newest/Rosetta_docinfo-LxAdv-doc.metadata_doc.docinfo.dita">2013-07-18 - docinfo to doc:metadata/doc:docinfo: Added
                        <sourcexml>@excludefromalerts</sourcexml> as one of the
                        <sourcexml>docinfo</sourcexml> attributes to carry through</xref>
            </li>
            <li>
               <xref href="../../../common_newest/Rosetta_identifier-LxAdv-ID_data_type-HandlingPatternRestrictions.dita">2013-07-17 - Identifiers to ID Data Type - Handling Pattern Restrictions: Added instructions for handling
					leading/trailing space(s) and XML entities.</xref>
            </li>
            <li>
               <xref href="../../../common_newest/Rosetta_docinfo.doc-lang-and-doc-country-LxAdv-ROOT_xml.lang.dita">2013-07-16 - docinfo:doc-lang and docinfo:doc-country to @xml:lang and @xml:ID: Instruction narrative edited for language; no changes to mappings, no impact to stylesheets.</xref>
            </li>
            <li>
               <xref href="../../../common_newest/Rosetta_identifier-LxAdv-ID_data_type-HandlingPatternRestrictions.dita">2013-07-10 - Identifiers to ID Data Type - Handling Pattern Restrictions: Added instruction to replace space with
					underscore.</xref>
            </li>
            <li>
               <xref href="../../../common_newest/Rosetta_title-LxAdv-title.dita">2013-07-05 - title to title: Added Instruction when <sourcexml>title</sourcexml> contains word "TITLE: ".</xref>
            </li>
            <li>
               <xref href="../../../common_newest/Rosetta_note-LxAdv-note.dita">2013-06-12 - note to note: Remove note for CR "DACH2013041605253700" to
                    allow element <targetxml>note</targetxml> before element
                        <targetxml>heading</targetxml> within
                    <targetxml>admindoc:level</targetxml>
               </xref>
            </li>
            <li>
               <xref href="../../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-06-03 - remotelink to ref:crossreference: Updated the Target XML 2 by removing the
            <targetxml>@crossreferencetype</targetxml> for Canada example.</xref>
            </li>
            <li>
               <xref href="../../../common_newest/Rosetta_docinfo.lbu-meta-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta-scheme.dita">2013-05-31 - docinfo:lbu-meta to doc:legacy-metadata[@metadatasource="lbu-meta"]: Added "document-type" to the list of values
                in docinfo:metaitem/@name that should be retained.</xref>
            </li>
            <li>
               <xref href="../../../common_newest/Rosetta_inlineobject-LxAdv-ref.inlineobject.dita">2013-05-24 - inlineobject to ref:inlineobject: Updated instruction for handling of inlineobject when smi is present and some of the verbiage is changed.</xref>
            </li>
            <li>
               <xref href="../../../common_newest/Rosetta_inlineobject-LxAdv-figure_ref.inlineobject.dita">2013-05-24 - inlineobject to figure/ref:inlineobject: Updated target example, "when smi is present".</xref>
            </li>
            <li>
               <xref href="../../../common_newest/Rosetta_link-LxAdv-ref.lnlink.dita">2013-05-24 - link to ref:lnlink/@service="ATTACHMENT": Updated instruction for handling of link when smi is present and some of the verbiage is changed.</xref>
            </li>
            <li>
               <xref href="../../../common_newest/Rosetta_docinfo-LxAdv-doc.metadata_doc.docinfo.dita">2013-05-16 - docinfo to doc:metadata/doc:docinfo: Fixed typo updating urn:contentitem to
                        urn:contentItem</xref>
            </li>
            <li>
               <xref href="../../../common_newest/Rosetta_blockquote-LxAdv-blockquote.dita">2013-05-08 - blockquote to blockquote: Extended the list of allowable values for image handling.</xref>
            </li>
            <li>
               <xref href="../../../common_newest/Rosetta_inlineobject-LxAdv-ref.inlineobject.dita">2013-05-08 - inlineobject to ref:inlineobject: Extended the list of allowable values for image handling.</xref>
            </li>
            <li>
               <xref href="../../../common_newest/Rosetta_inlineobject-LxAdv-figure_ref.inlineobject.dita">2013-05-08 - inlineobject to figure/ref:inlineobject: Extended the list of allowable values for image handling.</xref>
            </li>
            <li>
               <xref href="../../../common_newest/Rosetta_inlineobject-Chof-emph-LxAdv-figure_ref.inlinobject.dita">2013-05-08 - emph/inlineobject to figure/ref:inlineobject: Extended the list of allowable values for image handling.</xref>
            </li>
            <li>
               <xref href="../../../common_newest/Rosetta_inlineobject-Chof-sub-LxAdv-figure_ref.inlineobject.dita">2013-05-08 - sub/inlineobject to figure/ref:inlineobject: Extended the list of allowable values for image handling.</xref>
            </li>
            <li>
               <xref href="../../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-05-08 - remotelink to ref:crossreference: Extended the list of allowable values for image
          handling.</xref>
            </li>
            <li>
               <xref href="../../../common_newest/Rosetta_inlineobject-LxAdv-ref.inlineobject.dita">2013-05-02 - inlineobject to ref:inlineobject: Some of the verbiage is changed and updated target example to if the SMI is present then a <targetxml>ref:inliineobject/@status</targetxml> attribute is set to “valid”.</xref>
            </li>
            <li>
               <xref href="../../../common_newest/Rosetta_inlineobject-LxAdv-figure_ref.inlineobject.dita">2013-05-02 - inlineobject to figure/ref:inlineobject: Updated target example to if the SMI is present then a <targetxml>ref:inliineobject/@status</targetxml> attribute is set to “valid”.</xref>
            </li>
            <li>
               <xref href="../../../common_newest/Rosetta_link-LxAdv-ref.lnlink.dita">2013-05-02 - link to ref:lnlink/@service="ATTACHMENT": Some of the verbiage is changed and updated target example to if the SMI is present then a <targetxml>ref:lnlink/@status</targetxml> attribute is set to “valid”.</xref>
            </li>
            <li>
               <xref href="../../../common_newest/Rosetta_blockquote-LxAdv-blockquote.dita">2013-05-01 - blockquote to blockquote: Removed instructions for section
                "Pre-Release 4.0" because according to latest Apollo markup, section
                "Release 4.0 and after" and section "Pre-Release 4.0" now have
                similar conversion markup.</xref>
            </li>
            <li>
               <xref href="../../../common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2013-05-01 - ci.cite to lnci.cite: Removed special rule for
						<sourcexml>ci:cite/ci:content/remotelink</sourcexml> which required
					suppression of <sourcexml>ci:cite/ci:content</sourcexml> tags. The elements are
					now retained and convert according to common rules.</xref>
            </li>
            <li>
               <xref href="../../../common_newest/Rosetta_inlineobject-LxAdv-ref.inlineobject.dita">2013-05-01 - inlineobject to ref:inlineobject: Removed instructions for section
                "Pre-Release 4.0" because according to latest Apollo markup, section
                "Release 4.0 and after" and section "Pre-Release 4.0" now have
                similar conversion markup.</xref>
            </li>
            <li>
               <xref href="../../../common_newest/Rosetta_inlineobject-LxAdv-figure_ref.inlineobject.dita">2013-05-01 - inlineobject to figure/ref:inlineobject: Removed instructions for section
                "Pre-Release 4.0" because according to latest Apollo markup, section
                "Release 4.0 and after" and section "Pre-Release 4.0" now have
                similar conversion markup.</xref>
            </li>
            <li>
               <xref href="../../../common_newest/Rosetta_inlineobject-Chof-emph-LxAdv-figure_ref.inlinobject.dita">2013-05-01 - emph/inlineobject to figure/ref:inlineobject: Removed instructions for section
                "Pre-Release 4.0" because according to latest Apollo markup, section
                "Release 4.0 and after" and section "Pre-Release 4.0" now have
                similar conversion markup.</xref>
            </li>
            <li>
               <xref href="../../../common_newest/Rosetta_inlineobject-Chof-sub-LxAdv-figure_ref.inlineobject.dita">2013-05-01 - sub/inlineobject to figure/ref:inlineobject: Removed instructions for section
                "Pre-Release 4.0" because according to latest Apollo markup, section
                "Release 4.0 and after" and section "Pre-Release 4.0" now have
                similar conversion markup.</xref>
            </li>
            <li>
               <xref href="../../../common_newest/Rosetta_link-LxAdv-ref.lnlink.dita">2013-05-01 - link to ref:lnlink/@service="ATTACHMENT": Updated instructions and target example per
                latest Apollo markup.</xref>
            </li>
            <li>
               <xref href="../../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-05-01 - remotelink to ref:crossreference: Removed instructions for section "Pre-Release
            4.0" because according to latest Apollo markup, section "Release 4.0 and
            after" and section "Pre-Release 4.0" now have similar conversion
        markup.</xref>
            </li>
            <li>
               <xref href="../../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-05-01 - remotelink to ref:crossreference: "Instruction added for
            <sourcexml>ci:cite/ci:content/remotelink</sourcexml> specifying that the
            <sourcexml>remotelink</sourcexml> is to be converted to
            <targetxml>ref:crossreference</targetxml> but the containing elements' start-tags and
          end-tags (<sourcexml>ci:cite</sourcexml> and <sourcexml>ci:content</sourcexml>) are
          dropped", has been removed from the instructions and now <sourcexml>remotelink</sourcexml>
          will be converted to the resulting mapping where it is. For more details you can see
          example: Source XML 10: <sourcexml>remotelink</sourcexml> as a child of
              <sourcexml>ci:cite/ci:content</sourcexml>
               </xref>
            </li>
            <li>
               <xref href="../../../common_newest/Rosetta_blockquote-LxAdv-blockquote.dita">2013-04-30 - blockquote to blockquote: Updated target sample according to latest Apollo markup.</xref>
            </li>
            <li>
               <xref href="../../../common_newest/Rosetta_inlineobject-LxAdv-ref.inlineobject.dita">2013-04-30 - inlineobject to ref:inlineobject: Updated target sample according to latest Apollo markup.</xref>
            </li>
            <li>
               <xref href="../../../common_newest/Rosetta_inlineobject-LxAdv-figure_ref.inlineobject.dita">2013-04-30 - inlineobject to figure/ref:inlineobject: Updated target sample according to latest Apollo markup.</xref>
            </li>
            <li>
               <xref href="../../../common_newest/Rosetta_inlineobject-Chof-emph-LxAdv-figure_ref.inlinobject.dita">2013-04-30 - emph/inlineobject to figure/ref:inlineobject: Updated target sample according to latest Apollo markup.</xref>
            </li>
            <li>
               <xref href="../../../common_newest/Rosetta_inlineobject-Chof-sub-LxAdv-figure_ref.inlineobject.dita">2013-04-30 - sub/inlineobject to figure/ref:inlineobject: Updated target sample according to latest Apollo markup.</xref>
            </li>
            <li>
               <xref href="../../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-04-30 - remotelink to ref:crossreference: Updated target sample according to latest Apollo
          markup.</xref>
            </li>
            <li>
               <xref href="../../../common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2013-04-24 - ci.cite to lnci.cite: Added a mapping for
						<sourcexml>ci:procphrase</sourcexml> to
						<sourcexml>lnci:procphrase</sourcexml>
               </xref>
            </li>
            <li>
               <xref href="../../../common_newest/Rosetta_inlineobject-Chof-emph_sub-LxAdv-figure_ref.inlinobject.dita">2013-04-22 - emph/sub/inlineobject to figure/ref:inlineobject: Created.</xref>
            </li>
            <li>
               <xref href="../../../common_newest/Rosetta_docinfo.doc-lang-and-doc-country-LxAdv-ROOT_xml.lang.dita">2013-04-19 - docinfo:doc-lang and docinfo:doc-country to @xml:lang and @xml:ID: Added note about applicability of
                    restrictions and required modifications for <targetxml>xml:id</targetxml> to
                    other scenarios.</xref>
            </li>
            <li>
               <xref href="../../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-04-10 - remotelink to ref:crossreference: Added Source XML 7a: for link to URL, with non-URL
          text content because it was previously missing, only the target example was here.</xref>
            </li>
            <li>
               <xref href="../../../common_newest/Rosetta_docinfo.lbu-meta-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta-scheme.dita">2013-04-09 - docinfo:lbu-meta to doc:legacy-metadata[@metadatasource="lbu-meta"]: Added the instruction for handling
                <sourcexml>docinfo:metaitem[@name="QLDB"]</sourcexml>.</xref>
            </li>
            <li>
               <xref href="../../../common_newest/Rosetta_Elements-LxAdv-Empty_Elements.dita">2013-03-28 - Suppress empty elements unless otherwise stated: Created.</xref>
            </li>
            <li>
               <xref href="../../../common_newest/Rosetta_note-LxAdv-note.dita">2013-03-25 - note to note: Created.</xref>
            </li>
            <li>
               <xref href="../../../common_newest/Rosetta_docinfo.doc-id-LxAdv-dcidentifier_lnmetaidentifier-scheme.dita">2013-03-20 - docinfo:doc-id to dc:identifier[@lnmeta:identifier-scheme]: Updated the information on handling the
                    situation when <sourcexml>docinfo:dpsi[@id-string]</sourcexml> is absent with
                    instructions to get the dpsi from
                        <sourcexml>docinfo/docinfo:custom-metafields/docinfo:custom-metafield[@name="dpsi"]</sourcexml>.</xref>
            </li>
            <li>
               <xref href="../../../common_newest/Rosetta_nl-LxAdv-proc.nl.dita">2013-03-14 - nl to proc:nl: Add instruction and example <sourcexml>nl/@n</sourcexml>.</xref>
            </li>
            <li>
               <xref href="../../../common_newest/Rosetta_p-LxAdv-p.dita">2013-03-14 - p to p: Add instruction and example <sourcexml>p/@style</sourcexml>.</xref>
            </li>
            <li>
               <xref href="../../../common_newest/Rosetta_pgrp-LxAdv-pgrp.dita">2013-03-14 - pgrp to pgrp: Add instruction and example <sourcexml>pgrp/@id</sourcexml>.</xref>
            </li>
            <li>
               <xref href="../../../common_newest/Rosetta_inlineobject-LxAdv-ref.inlineobject.dita">2013-03-13 - inlineobject to ref:inlineobject: Removed the value leg1.png and added the statement "These files should be suppressed for both *.gif and *.png file types" was added.</xref>
            </li>
            <li>
               <xref href="../../../common_newest/Rosetta_inlineobject-LxAdv-ref.inlineobject.dita">2013-03-12 - inlineobject to ref:inlineobject: Added an additional value of leg1.pngto the <sourcexml>inlineobject</sourcexml>suppression list</xref>
            </li>
            <li>
               <xref href="../../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-03-11 - remotelink to ref:crossreference: Instruction and example added on how to handle
            <targetxml>ref:marker </targetxml> if it is in
            <targetxml>ref:lnlink@service=”URL”</targetxml>and the
            <targetxml>ref:key-value@value</targetxml> starts-with (.,
            'http://www.lexisnexis.com/au/legal/api')</xref>
            </li>
            <li>
               <xref href="../../../common_newest/Rosetta_remotelink-Chof-url-LxAdv-url.dita">2013-03-11 - url/remotelink to url: Added instructions for omitting
            <sourcexml>emph</sourcexml> when it occurs as a child of
            <sourcexml>url/remotelink</sourcexml>. Added an sample mapping demonstrating this
          scenario.</xref>
            </li>
            <li>
               <xref href="../../../common_newest/Rosetta_date-LxAdv-date.dita">2013-03-08 - date to date: Added instruction for @normdate attribute that falls
					on various NL date elements</xref>
            </li>
            <li>
               <xref href="../../../common_newest/Rosetta_edpnum-LxAdv-desig.dita">2013-03-06 - edpnum to desig: Removed instructions/rules for exceptional desig scenario and deprecated
                attribute <targetxml>@followstitle</targetxml>. Added instructions for
                    maintaining source document ordering.</xref>
            </li>
            <li>
               <xref href="../../../common_newest/Rosetta_heading-LxAdv-heading.dita">2013-03-06 - heading to heading: Removed instructions/rules for exceptional desig scenario and deprecated
			attribute <targetxml>@followstitle</targetxml>.</xref>
            </li>
            <li>
               <xref href="../../../common_newest/Rosetta_link-LxAdv-ref.lnlink.dita">2013-02-26 - link to ref:lnlink/@service="ATTACHMENT": Updated target example per project
                requirement.</xref>
            </li>
            <li>
               <xref href="../../../common_newest/Rosetta_blockquote-LxAdv-blockquote.dita">2013-02-18 - blockquote to blockquote: Created two sections, one for "Release 4.0 and after" and another for "Pre-Release 4.0".</xref>
            </li>
            <li>
               <xref href="../../../common_newest/Rosetta_inlineobject-LxAdv-ref.inlineobject.dita">2013-02-18 - inlineobject to ref:inlineobject: Created two sections, one for "Release 4.0 and after" and another for "Pre-Release 4.0".</xref>
            </li>
            <li>
               <xref href="../../../common_newest/Rosetta_inlineobject-LxAdv-figure_ref.inlineobject.dita">2013-02-18 - inlineobject to figure/ref:inlineobject: Created two sections, one for "Release 4.0 and after" and another for "Pre-Release 4.0".</xref>
            </li>
            <li>
               <xref href="../../../common_newest/Rosetta_inlineobject-Chof-emph-LxAdv-figure_ref.inlinobject.dita">2013-02-18 - emph/inlineobject to figure/ref:inlineobject: Created two sections, one for "Release 4.0 and after" and another for "Pre-Release 4.0".</xref>
            </li>
            <li>
               <xref href="../../../common_newest/Rosetta_inlineobject-Chof-sub-LxAdv-figure_ref.inlineobject.dita">2013-02-18 - sub/inlineobject to figure/ref:inlineobject: Created two sections, one for "Release 4.0 and after" and another for "Pre-Release 4.0".</xref>
            </li>
            <li>
               <xref href="../../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-02-18 - remotelink to ref:crossreference: Created two sections, one for "Release 4.0 and
            after" and another for "Pre-Release 4.0".</xref>
            </li>
            <li>
               <xref href="../../../common_newest/Rosetta_UK_docinfo.custom-metafields-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta.meta.metaitem.dita">2013-01-25 - docinfo:custom-metafields to doc:legacy-metadata[@metadatasource="lbu-meta"]/meta/metaitem: Added instruction to handle the scenario when <sourcexml>docinfo:custom-metafield</sourcexml> content is empty, and provided an example.</xref>
            </li>
            <li>
               <xref href="../../../common_newest/Rosetta_UK_docinfo.custom-metafields-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta.meta.metaitem.dita">2013-01-25 - docinfo:custom-metafields to doc:legacy-metadata[@metadatasource="lbu-meta"]/meta/metaitem: Added instruction to handle <sourcexml>docinfo:custom-metafield/@searchtype</sourcexml> attribute, and provided an example.</xref>
            </li>
            <li>
               <xref href="../../../common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2013-01-22 - ci.cite to lnci.cite: Instruction modified for the scenario
						<sourcexml>ci:cite/ci:content/remotelink</sourcexml> to indicate that the
						<sourcexml>ci:cite</sourcexml> and <sourcexml>ci:content</sourcexml>
					start-tags and end-tags (but not their content) are dropped.</xref>
            </li>
            <li>
               <xref href="../../../common_newest/Rosetta_UK_docinfo.custom-metafields-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta.meta.metaitem.dita">2013-01-09 - docinfo:custom-metafields to doc:legacy-metadata[@metadatasource="lbu-meta"]/meta/metaitem: Created.</xref>
            </li>
            <li>
               <xref href="../../../common_newest/Rosetta_footnote-LxAdv-footnote.dita">2013-01-09 - footnotegrp and footnote to footnotegrp and footnote: Added instruction note for handling of
                        <sourcexml>footnote[@fntoken]</sourcexml> with value 0 for UK content
                    types.</xref>
            </li>
            <li>
               <xref href="../../../common_newest/Rosetta_emph-LxAdv-emph.dita">2013-01-08 - emph to emph: Added note for handling
                        <targetxml>emph/emph</targetxml> has the same
                        <targetxml>@typestyle</targetxml> value.</xref>
            </li>
            <li>
               <xref href="../../../common_newest/Rosetta_inlineobject-LxAdv-figure_ref.inlineobject.dita">2012-12-03 - inlineobject to figure/ref:inlineobject:  Moved full conversion instruction to new base topic
                <sourcexml>inlineobject</sourcexml> to <targetxml>ref:inlineobject</targetxml>.
                This topic now specific to <targetxml>figure/ref:inlineobject</targetxml>
                mapping.</xref>
            </li>
            <li>
               <xref href="../../../common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2012-11-29 - ci.cite to lnci.cite: Updated instructions to drop all
						<sourcexml>@spanref</sourcexml>.</xref>
            </li>
            <li>
               <xref href="../../../common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2012-09-18 - ci.cite to lnci.cite: Instruction and example added for handling
					of <sourcexml>ci:cite/@type="cite4thisdoc"</sourcexml> for AU
					Journals/Newsitem.</xref>
            </li>
            <li>
               <xref href="../../../common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2012-09-11 - ci.cite to lnci.cite: Created.</xref>
            </li>
            <li>
               <xref href="../../../common_newest/Rosetta_emph-LxAdv-emph.dita">2012-02-28 - emph to emph: Added instructions for handling of
                        <sourcexml>case:judges/emph/@typestyle="smcaps"</sourcexml>.</xref>
            </li>
            <li>
               <xref href="../../../common_newest/Rosetta_emph-LxAdv-emph.dita">2011-12-15 - emph to emph: Created.</xref>
            </li>
      </ol>
      </p>
    </section>
    <section>
      <title>Admindoc 3.1:PROD</title>
      <p><b>2013-07-01</b>
        <ul>
          <li>Introduction topic: Modified the Admindoc schema version to 3.1_PROD.</li>
        </ul>
      </p>
      <p><b>The following are common module changes</b>
        <ol>
          <li>
            <xref href="../../../common_newest/Rosetta_note-LxAdv-note.dita">2013-06-12 - note to note: Remove note for CR "DACH2013041605253700" to allow element <targetxml>note</targetxml> before element <targetxml>heading</targetxml> within <targetxml>admindoc:level</targetxml>
            </xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-06-03 - remotelink to ref:crossreference: Updated the Target XML 2 by removing the <targetxml>@crossreferencetype</targetxml> for Canada example.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_docinfo.lbu-meta-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta-scheme.dita">2013-05-31 - docinfo:lbu-meta to doc:legacy-metadata[@metadatasource="lbu-meta"]: Added "document-type" to the list of values
              in docinfo:metaitem/@name that should be retained.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_inlineobject-LxAdv-ref.inlineobject.dita">2013-05-24 - inlineobject to ref:inlineobject: Updated instruction for handling of inlineobject when smi is present and some of the verbiage is changed.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_inlineobject-LxAdv-figure_ref.inlineobject.dita">2013-05-24 - inlineobject to figure/ref:inlineobject: Updated target example, "when smi is present".</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_link-LxAdv-ref.lnlink.dita">2013-05-24 - link to ref:lnlink/@service="ATTACHMENT": Updated instruction for handling of link when smi is present and some of the verbiage is changed.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_docinfo-LxAdv-doc.metadata_doc.docinfo.dita">2013-05-16 - docinfo to doc:metadata/doc:docinfo: Fixed typo updating urn:contentitem to urn:contentItem</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_blockquote-LxAdv-blockquote.dita">2013-05-08 - blockquote to blockquote: Extended the list of allowable values for image handling.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_inlineobject-LxAdv-ref.inlineobject.dita">2013-05-08 - inlineobject to ref:inlineobject: Extended the list of allowable values for image handling.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_inlineobject-LxAdv-figure_ref.inlineobject.dita">2013-05-08 - inlineobject to figure/ref:inlineobject: Extended the list of allowable values for image handling.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_inlineobject-Chof-emph-LxAdv-figure_ref.inlinobject.dita">2013-05-08 - emph/inlineobject to figure/ref:inlineobject: Extended the list of allowable values for image handling.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_inlineobject-Chof-sub-LxAdv-figure_ref.inlineobject.dita">2013-05-08 - sub/inlineobject to figure/ref:inlineobject: Extended the list of allowable values for image handling.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-05-08 - remotelink to ref:crossreference: Extended the list of allowable values for image handling.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_inlineobject-LxAdv-ref.inlineobject.dita">2013-05-02 - inlineobject to ref:inlineobject: Some of the verbiage is changed and updated target example to if the SMI is present then a <targetxml>ref:inliineobject/@status</targetxml> attribute is set to “valid”.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_inlineobject-LxAdv-figure_ref.inlineobject.dita">2013-05-02 - inlineobject to figure/ref:inlineobject: Updated target example to if the SMI is present then a <targetxml>ref:inliineobject/@status</targetxml> attribute is set to “valid”.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_link-LxAdv-ref.lnlink.dita">2013-05-02 - link to ref:lnlink/@service="ATTACHMENT": Some of the verbiage is changed and updated target example to if the SMI is present then a <targetxml>ref:lnlink/@status</targetxml> attribute is set to “valid”.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_blockquote-LxAdv-blockquote.dita">2013-05-01 - blockquote to blockquote: Removed instructions for section
              "Pre-Release 4.0" because according to latest Apollo markup, section
              "Release 4.0 and after" and section "Pre-Release 4.0" now have
              similar conversion markup.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2013-05-01 - ci.cite to lnci.cite: Removed special rule for
              <sourcexml>ci:cite/ci:content/remotelink</sourcexml> which required
              suppression of <sourcexml>ci:cite/ci:content</sourcexml> tags. The elements are
              now retained and convert according to common rules.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_inlineobject-LxAdv-ref.inlineobject.dita">2013-05-01 - inlineobject to ref:inlineobject: Removed instructions for section
              "Pre-Release 4.0" because according to latest Apollo markup, section
              "Release 4.0 and after" and section "Pre-Release 4.0" now have
              similar conversion markup.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_inlineobject-LxAdv-figure_ref.inlineobject.dita">2013-05-01 - inlineobject to figure/ref:inlineobject: Removed instructions for section
              "Pre-Release 4.0" because according to latest Apollo markup, section
              "Release 4.0 and after" and section "Pre-Release 4.0" now have
              similar conversion markup.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_inlineobject-Chof-emph-LxAdv-figure_ref.inlinobject.dita">2013-05-01 - emph/inlineobject to figure/ref:inlineobject: Removed instructions for section
              "Pre-Release 4.0" because according to latest Apollo markup, section
              "Release 4.0 and after" and section "Pre-Release 4.0" now have
              similar conversion markup.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_inlineobject-Chof-sub-LxAdv-figure_ref.inlineobject.dita">2013-05-01 - sub/inlineobject to figure/ref:inlineobject: Removed instructions for section
              "Pre-Release 4.0" because according to latest Apollo markup, section
              "Release 4.0 and after" and section "Pre-Release 4.0" now have
              similar conversion markup.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_link-LxAdv-ref.lnlink.dita">2013-05-01 - link to ref:lnlink/@service="ATTACHMENT": Updated instructions and target example per
              latest Apollo markup.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-05-01 - remotelink to ref:crossreference: Removed instructions for section
              "Pre-Release 4.0" because according to latest Apollo markup, section
              "Release 4.0 and after" and section "Pre-Release 4.0" now have
              similar conversion markup.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-05-01 - remotelink to ref:crossreference: "Instruction added for <sourcexml>ci:cite/ci:content/remotelink</sourcexml> specifying that the <sourcexml>remotelink</sourcexml> is to be converted to <targetxml>ref:crossreference</targetxml> but the containing elements' start-tags and end-tags (<sourcexml>ci:cite</sourcexml> and <sourcexml>ci:content</sourcexml>) are dropped", has been removed from the instructions and now <sourcexml>remotelink</sourcexml> will be converted to the resulting mapping where it is. For more details you can see example: Source XML 10: <sourcexml>remotelink</sourcexml> as a child of
              <sourcexml>ci:cite/ci:content</sourcexml>
            </xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_blockquote-LxAdv-blockquote.dita">2013-04-30 - blockquote to blockquote: Updated target sample according to latest Apollo markup.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_inlineobject-LxAdv-ref.inlineobject.dita">2013-04-30 - inlineobject to ref:inlineobject: Updated target sample according to latest Apollo markup.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_inlineobject-LxAdv-figure_ref.inlineobject.dita">2013-04-30 - inlineobject to figure/ref:inlineobject: Updated target sample according to latest Apollo markup.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_inlineobject-Chof-emph-LxAdv-figure_ref.inlinobject.dita">2013-04-30 - emph/inlineobject to figure/ref:inlineobject: Updated target sample according to latest Apollo markup.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_inlineobject-Chof-sub-LxAdv-figure_ref.inlineobject.dita">2013-04-30 - sub/inlineobject to figure/ref:inlineobject: Updated target sample according to latest Apollo markup.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-04-30 - remotelink to ref:crossreference: Updated target sample according to latest Apollo markup.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2013-04-24 - ci.cite to lnci.cite: Added a mapping for
              <sourcexml>ci:procphrase</sourcexml> to
              <sourcexml>lnci:procphrase</sourcexml>
            </xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_inlineobject-Chof-emph_sub-LxAdv-figure_ref.inlinobject.dita">2013-04-22 - emph/sub/inlineobject to figure/ref:inlineobject: Created.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_docinfo.doc-lang-and-doc-country-LxAdv-ROOT_xml.lang.dita">2013-04-19 - docinfo:doc-lang and docinfo:doc-country to @xml:lang and @xml:ID: Added note about applicability of
              restrictions and required modifications for <targetxml>xml:id</targetxml> to
              other scenarios.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-04-10 - remotelink to ref:crossreference: Added Source XML 7a: for link to URL, with non-URL text content because it was previously missing, only the target example was here.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_docinfo.lbu-meta-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta-scheme.dita">2013-04-09 - docinfo:lbu-meta to doc:legacy-metadata[@metadatasource="lbu-meta"]: Added the instruction for handling
              <sourcexml>docinfo:metaitem[@name="QLDB"]</sourcexml>.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_Elements-LxAdv-Empty_Elements.dita">2013-03-28 - Suppress empty elements unless otherwise stated: Created.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_note-LxAdv-note.dita">2013-03-25 - note to note: Created.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_docinfo.doc-id-LxAdv-dcidentifier_lnmetaidentifier-scheme.dita">2013-03-20 - docinfo:doc-id to dc:identifier[@lnmeta:identifier-scheme]: Updated the information on handling the
              situation when <sourcexml>docinfo:dpsi[@id-string]</sourcexml> is absent with
              instructions to get the dpsi from
              <sourcexml>docinfo/docinfo:custom-metafields/docinfo:custom-metafield[@name="dpsi"]</sourcexml>.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_nl-LxAdv-proc.nl.dita">2013-03-14 - nl to proc:nl: Add instruction and example <sourcexml>nl/@n</sourcexml>.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_p-LxAdv-p.dita">2013-03-14 - p to p: Add instruction and example <sourcexml>p/@style</sourcexml>.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_pgrp-LxAdv-pgrp.dita">2013-03-14 - pgrp to pgrp: Add instruction and example <sourcexml>pgrp/@id</sourcexml>.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_inlineobject-LxAdv-ref.inlineobject.dita">2013-03-13 - inlineobject to ref:inlineobject: Removed the value leg1.png and added the statement "These files should be suppressed for both *.gif and *.png file types" was added.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_inlineobject-LxAdv-ref.inlineobject.dita">2013-03-12 - inlineobject to ref:inlineobject: Added an additional value of leg1.pngto the <sourcexml>inlineobject</sourcexml>suppression list</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-03-11 - remotelink to ref:crossreference: Instruction and example added on how to handle <targetxml>ref:marker </targetxml> 
              if it is in <targetxml>ref:lnlink@service=”URL”</targetxml>and the <targetxml>ref:key-value@value</targetxml> starts-with (., 'http://www.lexisnexis.com/au/legal/api')</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_remotelink-Chof-url-LxAdv-url.dita">2013-03-11 - url/remotelink to url: Added instructions for omitting
              <sourcexml>emph</sourcexml> when it occurs as a child of
              <sourcexml>url/remotelink</sourcexml>. Added an sample mapping demonstrating this
              scenario.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_date-LxAdv-date.dita">2013-03-08 - date to date: Added instruction for @normdate attribute that falls
              on various NL date elements</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_edpnum-LxAdv-desig.dita">2013-03-06 - edpnum to desig: Removed instructions/rules for exceptional desig scenario and deprecated
              attribute <targetxml>@followstitle</targetxml>. Added instructions for
              maintaining source document ordering.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_heading-LxAdv-heading.dita">2013-03-06 - heading to heading: Removed instructions/rules for exceptional desig scenario and deprecated
              attribute <targetxml>@followstitle</targetxml>.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_link-LxAdv-ref.lnlink.dita">2013-02-26 - link to ref:lnlink/@service="ATTACHMENT": Updated target example per project
              requirement.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_blockquote-LxAdv-blockquote.dita">2013-02-18 - blockquote to blockquote: Created two sections, one for "Release 4.0 and after" and another for "Pre-Release 4.0".</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_inlineobject-LxAdv-ref.inlineobject.dita">2013-02-18 - inlineobject to ref:inlineobject: Created two sections, one for "Release 4.0 and after" and another for "Pre-Release 4.0".</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_inlineobject-LxAdv-figure_ref.inlineobject.dita">2013-02-18 - inlineobject to figure/ref:inlineobject: Created two sections, one for "Release 4.0 and after" and another for "Pre-Release 4.0".</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_inlineobject-Chof-emph-LxAdv-figure_ref.inlinobject.dita">2013-02-18 - emph/inlineobject to figure/ref:inlineobject: Created two sections, one for "Release 4.0 and after" and another for "Pre-Release 4.0".</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_inlineobject-Chof-sub-LxAdv-figure_ref.inlineobject.dita">2013-02-18 - sub/inlineobject to figure/ref:inlineobject: Created two sections, one for "Release 4.0 and after" and another for "Pre-Release 4.0".</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-02-18 - remotelink to ref:crossreference: Created two sections, one for "Release 4.0 and after" and another for "Pre-Release 4.0".</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_UK_docinfo.custom-metafields-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta.meta.metaitem.dita">2013-01-25 - docinfo:custom-metafields to doc:legacy-metadata[@metadatasource="lbu-meta"]/meta/metaitem: Added instruction to handle the scenario when <sourcexml>docinfo:custom-metafield</sourcexml> content is empty, and provided an example.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_UK_docinfo.custom-metafields-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta.meta.metaitem.dita">2013-01-25 - docinfo:custom-metafields to doc:legacy-metadata[@metadatasource="lbu-meta"]/meta/metaitem: Added instruction to handle <sourcexml>docinfo:custom-metafield/@searchtype</sourcexml> attribute, and provided an example.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2013-01-22 - ci.cite to lnci.cite: Instruction modified for the scenario
              <sourcexml>ci:cite/ci:content/remotelink</sourcexml> to indicate that the
              <sourcexml>ci:cite</sourcexml> and <sourcexml>ci:content</sourcexml>
              start-tags and end-tags (but not their content) are dropped.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_UK_docinfo.custom-metafields-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta.meta.metaitem.dita">2013-01-09 - docinfo:custom-metafields to doc:legacy-metadata[@metadatasource="lbu-meta"]/meta/metaitem: Created.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_footnote-LxAdv-footnote.dita">2013-01-09 - footnotegrp and footnote to footnotegrp and footnote: Added instruction note for handling of
              <sourcexml>footnote[@fntoken]</sourcexml> with value 0 for UK content
              types.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_emph-LxAdv-emph.dita">2013-01-08 - emph to emph: Added note for handling
              <targetxml>emph/emph</targetxml> has the same
              <targetxml>@typestyle</targetxml> value.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_inlineobject-LxAdv-figure_ref.inlineobject.dita">2012-12-03 - inlineobject to figure/ref:inlineobject:  Moved full conversion instruction to new base topic
              <sourcexml>inlineobject</sourcexml> to <targetxml>ref:inlineobject</targetxml>.
              This topic now specific to <targetxml>figure/ref:inlineobject</targetxml>
              mapping.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2012-11-29 - ci.cite to lnci.cite: Updated instructions to drop all
              <sourcexml>@spanref</sourcexml>.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2012-09-18 - ci.cite to lnci.cite: Instruction and example added for handling
              of <sourcexml>ci:cite/@type="cite4thisdoc"</sourcexml> for AU
              Journals/Newsitem.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2012-09-11 - ci.cite to lnci.cite: Created.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_emph-LxAdv-emph.dita">2012-02-28 - emph to emph: Added instructions for handling of
              <sourcexml>case:judges/emph/@typestyle="smcaps"</sourcexml>.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_emph-LxAdv-emph.dita">2011-12-15 - emph to emph: Created.</xref>
          </li>
        </ol>
      </p>
    </section>
    <section>
      <title>Admindoc 3.0:PROD</title>
      <p><b>2013-06-12</b>
        <ul>
          <li>Introduction topic: Modified the Admindoc schema version to 3.0_PROD.</li>
        </ul>
      </p>
      <p><b>The following are common module changes</b>
        <ol>
          <li>Remove a note for CR "DACH2013041605253700" to add "administrative-decision" to list of <targetxml>admindoc:level[@leveltype]</targetxml> in body section.</li>
          <li>Remove a note for CR "DACH2013041605572100" to allow <targetxml>astract</targetxml> within <targetxml>admindoc:prelim</targetxml> in body section.</li>
          <li>
            <xref href="../../../common_newest/Rosetta_note-LxAdv-note.dita">2013-06-12 - note to note: Remove note for CR "DACH2013041605253700" to allow element <targetxml>note</targetxml> before element <targetxml>heading</targetxml> within <targetxml>admindoc:level</targetxml>
            </xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-06-03 - remotelink to ref:crossreference: Updated the Target XML 2 by removing the <targetxml>@crossreferencetype</targetxml> for Canada example.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_docinfo.lbu-meta-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta-scheme.dita">2013-05-31 - docinfo:lbu-meta to doc:legacy-metadata[@metadatasource="lbu-meta"]: Added "document-type" to the list of values
              in docinfo:metaitem/@name that should be retained.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_inlineobject-LxAdv-ref.inlineobject.dita">2013-05-24 - inlineobject to ref:inlineobject: Updated instruction for handling of inlineobject when smi is present and some of the verbiage is changed.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_inlineobject-LxAdv-figure_ref.inlineobject.dita">2013-05-24 - inlineobject to figure/ref:inlineobject: Updated target example, "when smi is present".</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_link-LxAdv-ref.lnlink.dita">2013-05-24 - link to ref:lnlink/@service="ATTACHMENT": Updated instruction for handling of link when smi is present and some of the verbiage is changed.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_docinfo-LxAdv-doc.metadata_doc.docinfo.dita">2013-05-16 - docinfo to doc:metadata/doc:docinfo: Fixed typo updating urn:contentitem to urn:contentItem</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_blockquote-LxAdv-blockquote.dita">2013-05-08 - blockquote to blockquote: Extended the list of allowable values for image handling.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_inlineobject-LxAdv-ref.inlineobject.dita">2013-05-08 - inlineobject to ref:inlineobject: Extended the list of allowable values for image handling.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_inlineobject-LxAdv-figure_ref.inlineobject.dita">2013-05-08 - inlineobject to figure/ref:inlineobject: Extended the list of allowable values for image handling.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_inlineobject-Chof-emph-LxAdv-figure_ref.inlinobject.dita">2013-05-08 - emph/inlineobject to figure/ref:inlineobject: Extended the list of allowable values for image handling.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_inlineobject-Chof-sub-LxAdv-figure_ref.inlineobject.dita">2013-05-08 - sub/inlineobject to figure/ref:inlineobject: Extended the list of allowable values for image handling.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-05-08 - remotelink to ref:crossreference: Extended the list of allowable values for image handling.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_inlineobject-LxAdv-ref.inlineobject.dita">2013-05-02 - inlineobject to ref:inlineobject: Some of the verbiage is changed and updated target example to if the SMI is present then a <targetxml>ref:inliineobject/@status</targetxml> attribute is set to “valid”.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_inlineobject-LxAdv-figure_ref.inlineobject.dita">2013-05-02 - inlineobject to figure/ref:inlineobject: Updated target example to if the SMI is present then a <targetxml>ref:inliineobject/@status</targetxml> attribute is set to “valid”.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_link-LxAdv-ref.lnlink.dita">2013-05-02 - link to ref:lnlink/@service="ATTACHMENT": Some of the verbiage is changed and updated target example to if the SMI is present then a <targetxml>ref:lnlink/@status</targetxml> attribute is set to “valid”.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_blockquote-LxAdv-blockquote.dita">2013-05-01 - blockquote to blockquote: Removed instructions for section
              "Pre-Release 4.0" because according to latest Apollo markup, section
              "Release 4.0 and after" and section "Pre-Release 4.0" now have
              similar conversion markup.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2013-05-01 - ci.cite to lnci.cite: Removed special rule for
              <sourcexml>ci:cite/ci:content/remotelink</sourcexml> which required
              suppression of <sourcexml>ci:cite/ci:content</sourcexml> tags. The elements are
              now retained and convert according to common rules.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_inlineobject-LxAdv-ref.inlineobject.dita">2013-05-01 - inlineobject to ref:inlineobject: Removed instructions for section
              "Pre-Release 4.0" because according to latest Apollo markup, section
              "Release 4.0 and after" and section "Pre-Release 4.0" now have
              similar conversion markup.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_inlineobject-LxAdv-figure_ref.inlineobject.dita">2013-05-01 - inlineobject to figure/ref:inlineobject: Removed instructions for section
              "Pre-Release 4.0" because according to latest Apollo markup, section
              "Release 4.0 and after" and section "Pre-Release 4.0" now have
              similar conversion markup.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_inlineobject-Chof-emph-LxAdv-figure_ref.inlinobject.dita">2013-05-01 - emph/inlineobject to figure/ref:inlineobject: Removed instructions for section
              "Pre-Release 4.0" because according to latest Apollo markup, section
              "Release 4.0 and after" and section "Pre-Release 4.0" now have
              similar conversion markup.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_inlineobject-Chof-sub-LxAdv-figure_ref.inlineobject.dita">2013-05-01 - sub/inlineobject to figure/ref:inlineobject: Removed instructions for section
              "Pre-Release 4.0" because according to latest Apollo markup, section
              "Release 4.0 and after" and section "Pre-Release 4.0" now have
              similar conversion markup.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_link-LxAdv-ref.lnlink.dita">2013-05-01 - link to ref:lnlink/@service="ATTACHMENT": Updated instructions and target example per
              latest Apollo markup.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-05-01 - remotelink to ref:crossreference: Removed instructions for section
              "Pre-Release 4.0" because according to latest Apollo markup, section
              "Release 4.0 and after" and section "Pre-Release 4.0" now have
              similar conversion markup.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-05-01 - remotelink to ref:crossreference: "Instruction added for <sourcexml>ci:cite/ci:content/remotelink</sourcexml> specifying that the <sourcexml>remotelink</sourcexml> is to be converted to <targetxml>ref:crossreference</targetxml> but the containing elements' start-tags and end-tags (<sourcexml>ci:cite</sourcexml> and <sourcexml>ci:content</sourcexml>) are dropped", has been removed from the instructions and now <sourcexml>remotelink</sourcexml> will be converted to the resulting mapping where it is. For more details you can see example: Source XML 10: <sourcexml>remotelink</sourcexml> as a child of
              <sourcexml>ci:cite/ci:content</sourcexml>
            </xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_blockquote-LxAdv-blockquote.dita">2013-04-30 - blockquote to blockquote: Updated target sample according to latest Apollo markup.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_inlineobject-LxAdv-ref.inlineobject.dita">2013-04-30 - inlineobject to ref:inlineobject: Updated target sample according to latest Apollo markup.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_inlineobject-LxAdv-figure_ref.inlineobject.dita">2013-04-30 - inlineobject to figure/ref:inlineobject: Updated target sample according to latest Apollo markup.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_inlineobject-Chof-emph-LxAdv-figure_ref.inlinobject.dita">2013-04-30 - emph/inlineobject to figure/ref:inlineobject: Updated target sample according to latest Apollo markup.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_inlineobject-Chof-sub-LxAdv-figure_ref.inlineobject.dita">2013-04-30 - sub/inlineobject to figure/ref:inlineobject: Updated target sample according to latest Apollo markup.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-04-30 - remotelink to ref:crossreference: Updated target sample according to latest Apollo markup.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2013-04-24 - ci.cite to lnci.cite: Added a mapping for
              <sourcexml>ci:procphrase</sourcexml> to
              <sourcexml>lnci:procphrase</sourcexml>
            </xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_inlineobject-Chof-emph_sub-LxAdv-figure_ref.inlinobject.dita">2013-04-22 - emph/sub/inlineobject to figure/ref:inlineobject: Created.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_docinfo.doc-lang-and-doc-country-LxAdv-ROOT_xml.lang.dita">2013-04-19 - docinfo:doc-lang and docinfo:doc-country to @xml:lang and @xml:ID: Added note about applicability of
              restrictions and required modifications for <targetxml>xml:id</targetxml> to
              other scenarios.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-04-10 - remotelink to ref:crossreference: Added Source XML 7a: for link to URL, with non-URL text content because it was previously missing, only the target example was here.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_docinfo.lbu-meta-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta-scheme.dita">2013-04-09 - docinfo:lbu-meta to doc:legacy-metadata[@metadatasource="lbu-meta"]: Added the instruction for handling
              <sourcexml>docinfo:metaitem[@name="QLDB"]</sourcexml>.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_note-LxAdv-note.dita">2013-03-25 - note to note: Created.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_docinfo.doc-id-LxAdv-dcidentifier_lnmetaidentifier-scheme.dita">2013-03-20 - docinfo:doc-id to dc:identifier[@lnmeta:identifier-scheme]: Updated the information on handling the
              situation when <sourcexml>docinfo:dpsi[@id-string]</sourcexml> is absent with
              instructions to get the dpsi from
              <sourcexml>docinfo/docinfo:custom-metafields/docinfo:custom-metafield[@name="dpsi"]</sourcexml>.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_nl-LxAdv-proc.nl.dita">2013-03-14 - nl to proc:nl: Add instruction and example <sourcexml>nl/@n</sourcexml>.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_p-LxAdv-p.dita">2013-03-14 - p to p: Add instruction and example <sourcexml>p/@style</sourcexml>.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_pgrp-LxAdv-pgrp.dita">2013-03-14 - pgrp to pgrp: Add instruction and example <sourcexml>pgrp/@id</sourcexml>.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_inlineobject-LxAdv-ref.inlineobject.dita">2013-03-13 - inlineobject to ref:inlineobject: Removed the value leg1.png and added the statement "These files should be suppressed for both *.gif and *.png file types" was added.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_inlineobject-LxAdv-ref.inlineobject.dita">2013-03-12 - inlineobject to ref:inlineobject: Added an additional value of leg1.pngto the <sourcexml>inlineobject</sourcexml>suppression list</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-03-11 - remotelink to ref:crossreference: Instruction and example added on how to handle <targetxml>ref:marker </targetxml> 
              if it is in <targetxml>ref:lnlink@service=”URL”</targetxml>and the <targetxml>ref:key-value@value</targetxml> starts-with (., 'http://www.lexisnexis.com/au/legal/api')</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_remotelink-Chof-url-LxAdv-url.dita">2013-03-11 - url/remotelink to url: Added instructions for omitting
              <sourcexml>emph</sourcexml> when it occurs as a child of
              <sourcexml>url/remotelink</sourcexml>. Added an sample mapping demonstrating this
              scenario.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_date-LxAdv-date.dita">2013-03-08 - date to date: Added instruction for @normdate attribute that falls
              on various NL date elements</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_edpnum-LxAdv-desig.dita">2013-03-06 - edpnum to desig: Removed instructions/rules for exceptional desig scenario and deprecated
              attribute <targetxml>@followstitle</targetxml>. Added instructions for
              maintaining source document ordering.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_heading-LxAdv-heading.dita">2013-03-06 - heading to heading: Removed instructions/rules for exceptional desig scenario and deprecated
              attribute <targetxml>@followstitle</targetxml>.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_link-LxAdv-ref.lnlink.dita">2013-02-26 - link to ref:lnlink/@service="ATTACHMENT": Updated target example per project
              requirement.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_blockquote-LxAdv-blockquote.dita">2013-02-18 - blockquote to blockquote: Created two sections, one for "Release 4.0 and after" and another for "Pre-Release 4.0".</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_inlineobject-LxAdv-ref.inlineobject.dita">2013-02-18 - inlineobject to ref:inlineobject: Created two sections, one for "Release 4.0 and after" and another for "Pre-Release 4.0".</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_inlineobject-LxAdv-figure_ref.inlineobject.dita">2013-02-18 - inlineobject to figure/ref:inlineobject: Created two sections, one for "Release 4.0 and after" and another for "Pre-Release 4.0".</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_inlineobject-Chof-emph-LxAdv-figure_ref.inlinobject.dita">2013-02-18 - emph/inlineobject to figure/ref:inlineobject: Created two sections, one for "Release 4.0 and after" and another for "Pre-Release 4.0".</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_inlineobject-Chof-sub-LxAdv-figure_ref.inlineobject.dita">2013-02-18 - sub/inlineobject to figure/ref:inlineobject: Created two sections, one for "Release 4.0 and after" and another for "Pre-Release 4.0".</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-02-18 - remotelink to ref:crossreference: Created two sections, one for "Release 4.0 and after" and another for "Pre-Release 4.0".</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_UK_docinfo.custom-metafields-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta.meta.metaitem.dita">2013-01-25 - docinfo:custom-metafields to doc:legacy-metadata[@metadatasource="lbu-meta"]/meta/metaitem: Added instruction to handle the scenario when <sourcexml>docinfo:custom-metafield</sourcexml> content is empty, and provided an example.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_UK_docinfo.custom-metafields-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta.meta.metaitem.dita">2013-01-25 - docinfo:custom-metafields to doc:legacy-metadata[@metadatasource="lbu-meta"]/meta/metaitem: Added instruction to handle <sourcexml>docinfo:custom-metafield/@searchtype</sourcexml> attribute, and provided an example.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2013-01-22 - ci.cite to lnci.cite: Instruction modified for the scenario
              <sourcexml>ci:cite/ci:content/remotelink</sourcexml> to indicate that the
              <sourcexml>ci:cite</sourcexml> and <sourcexml>ci:content</sourcexml>
              start-tags and end-tags (but not their content) are dropped.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_UK_docinfo.custom-metafields-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta.meta.metaitem.dita">2013-01-09 - docinfo:custom-metafields to doc:legacy-metadata[@metadatasource="lbu-meta"]/meta/metaitem: Created.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_footnote-LxAdv-footnote.dita">2013-01-09 - footnotegrp and footnote to footnotegrp and footnote: Added instruction note for handling of
              <sourcexml>footnote[@fntoken]</sourcexml> with value 0 for UK content
              types.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_emph-LxAdv-emph.dita">2013-01-08 - emph to emph: Added note for handling
              <targetxml>emph/emph</targetxml> has the same
              <targetxml>@typestyle</targetxml> value.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_inlineobject-LxAdv-figure_ref.inlineobject.dita">2012-12-03 - inlineobject to figure/ref:inlineobject:  Moved full conversion instruction to new base topic
              <sourcexml>inlineobject</sourcexml> to <targetxml>ref:inlineobject</targetxml>.
              This topic now specific to <targetxml>figure/ref:inlineobject</targetxml>
              mapping.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2012-11-29 - ci.cite to lnci.cite: Updated instructions to drop all
              <sourcexml>@spanref</sourcexml>.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2012-09-18 - ci.cite to lnci.cite: Instruction and example added for handling
              of <sourcexml>ci:cite/@type="cite4thisdoc"</sourcexml> for AU
              Journals/Newsitem.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2012-09-11 - ci.cite to lnci.cite: Created.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_emph-LxAdv-emph.dita">2012-02-28 - emph to emph: Added instructions for handling of
              <sourcexml>case:judges/emph/@typestyle="smcaps"</sourcexml>.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_emph-LxAdv-emph.dita">2011-12-15 - emph to emph: Created.</xref>
          </li>
        </ol>
      </p>
    </section>
    <section>
      <title>Admindoc 2.2:PROD</title>
      <p><b>2013-05-24</b>
        <ul>
          <li>Introduction topic: Modified the Admindoc schema version to 2.2_PROD.</li>
        </ul>
      </p>
      <p><b>The following are common module changes</b>
      <ol>
        <li>
          <xref href="../../../common_newest/Rosetta_inlineobject-LxAdv-ref.inlineobject.dita">2013-05-24 - inlineobject to ref:inlineobject: Updated instruction for handling of inlineobject when smi is present and some of the verbiage is changed.</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_inlineobject-LxAdv-figure_ref.inlineobject.dita">2013-05-24 - inlineobject to figure/ref:inlineobject: Updated target example, "when smi is present".</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_link-LxAdv-ref.lnlink.dita">2013-05-24 - link to ref:lnlink/@service="ATTACHMENT": Updated instruction for handling of link when smi is present and some of the verbiage is changed.</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_docinfo-LxAdv-doc.metadata_doc.docinfo.dita">2013-05-16 - docinfo to doc:metadata/doc:docinfo: Fixed typo updating urn:contentitem to urn:contentItem</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_blockquote-LxAdv-blockquote.dita">2013-05-08 - blockquote to blockquote: Extended the list of allowable values for image handling.</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_inlineobject-LxAdv-ref.inlineobject.dita">2013-05-08 - inlineobject to ref:inlineobject: Extended the list of allowable values for image handling.</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_inlineobject-LxAdv-figure_ref.inlineobject.dita">2013-05-08 - inlineobject to figure/ref:inlineobject: Extended the list of allowable values for image handling.</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_inlineobject-Chof-emph-LxAdv-figure_ref.inlinobject.dita">2013-05-08 - emph/inlineobject to figure/ref:inlineobject: Extended the list of allowable values for image handling.</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_inlineobject-Chof-sub-LxAdv-figure_ref.inlineobject.dita">2013-05-08 - sub/inlineobject to figure/ref:inlineobject: Extended the list of allowable values for image handling.</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-05-08 - remotelink to ref:crossreference: Extended the list of allowable values for image handling.</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_inlineobject-LxAdv-ref.inlineobject.dita">2013-05-02 - inlineobject to ref:inlineobject: Some of the verbiage is changed and updated target example to if the SMI is present then a <targetxml>ref:inliineobject/@status</targetxml> attribute is set to “valid”.</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_inlineobject-LxAdv-figure_ref.inlineobject.dita">2013-05-02 - inlineobject to figure/ref:inlineobject: Updated target example to if the SMI is present then a <targetxml>ref:inliineobject/@status</targetxml> attribute is set to “valid”.</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_link-LxAdv-ref.lnlink.dita">2013-05-02 - link to ref:lnlink/@service="ATTACHMENT": Some of the verbiage is changed and updated target example to if the SMI is present then a <targetxml>ref:lnlink/@status</targetxml> attribute is set to “valid”.</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_blockquote-LxAdv-blockquote.dita">2013-05-01 - blockquote to blockquote: Removed instructions for section
            "Pre-Release 4.0" because according to latest Apollo markup, section
            "Release 4.0 and after" and section "Pre-Release 4.0" now have
            similar conversion markup.</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2013-05-01 - ci.cite to lnci.cite: Removed special rule for
            <sourcexml>ci:cite/ci:content/remotelink</sourcexml> which required
            suppression of <sourcexml>ci:cite/ci:content</sourcexml> tags. The elements are
            now retained and convert according to common rules.</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_inlineobject-LxAdv-ref.inlineobject.dita">2013-05-01 - inlineobject to ref:inlineobject: Removed instructions for section
            "Pre-Release 4.0" because according to latest Apollo markup, section
            "Release 4.0 and after" and section "Pre-Release 4.0" now have
            similar conversion markup.</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_inlineobject-LxAdv-figure_ref.inlineobject.dita">2013-05-01 - inlineobject to figure/ref:inlineobject: Removed instructions for section
            "Pre-Release 4.0" because according to latest Apollo markup, section
            "Release 4.0 and after" and section "Pre-Release 4.0" now have
            similar conversion markup.</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_inlineobject-Chof-emph-LxAdv-figure_ref.inlinobject.dita">2013-05-01 - emph/inlineobject to figure/ref:inlineobject: Removed instructions for section
            "Pre-Release 4.0" because according to latest Apollo markup, section
            "Release 4.0 and after" and section "Pre-Release 4.0" now have
            similar conversion markup.</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_inlineobject-Chof-sub-LxAdv-figure_ref.inlineobject.dita">2013-05-01 - sub/inlineobject to figure/ref:inlineobject: Removed instructions for section
            "Pre-Release 4.0" because according to latest Apollo markup, section
            "Release 4.0 and after" and section "Pre-Release 4.0" now have
            similar conversion markup.</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_link-LxAdv-ref.lnlink.dita">2013-05-01 - link to ref:lnlink/@service="ATTACHMENT": Updated instructions and target example per
            latest Apollo markup.</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-05-01 - remotelink to ref:crossreference: Removed instructions for section
            "Pre-Release 4.0" because according to latest Apollo markup, section
            "Release 4.0 and after" and section "Pre-Release 4.0" now have
            similar conversion markup.</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-05-01 - remotelink to ref:crossreference: "Instruction added for <sourcexml>ci:cite/ci:content/remotelink</sourcexml> specifying that the <sourcexml>remotelink</sourcexml> is to be converted to <targetxml>ref:crossreference</targetxml> but the containing elements' start-tags and end-tags (<sourcexml>ci:cite</sourcexml> and <sourcexml>ci:content</sourcexml>) are dropped", has been removed from the instructions and now <sourcexml>remotelink</sourcexml> will be converted to the resulting mapping where it is. For more details you can see example: Source XML 10: <sourcexml>remotelink</sourcexml> as a child of
            <sourcexml>ci:cite/ci:content</sourcexml>
          </xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_blockquote-LxAdv-blockquote.dita">2013-04-30 - blockquote to blockquote: Updated target sample according to latest Apollo markup.</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_inlineobject-LxAdv-ref.inlineobject.dita">2013-04-30 - inlineobject to ref:inlineobject: Updated target sample according to latest Apollo markup.</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_inlineobject-LxAdv-figure_ref.inlineobject.dita">2013-04-30 - inlineobject to figure/ref:inlineobject: Updated target sample according to latest Apollo markup.</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_inlineobject-Chof-emph-LxAdv-figure_ref.inlinobject.dita">2013-04-30 - emph/inlineobject to figure/ref:inlineobject: Updated target sample according to latest Apollo markup.</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_inlineobject-Chof-sub-LxAdv-figure_ref.inlineobject.dita">2013-04-30 - sub/inlineobject to figure/ref:inlineobject: Updated target sample according to latest Apollo markup.</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-04-30 - remotelink to ref:crossreference: Updated target sample according to latest Apollo markup.</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2013-04-24 - ci.cite to lnci.cite: Added a mapping for
            <sourcexml>ci:procphrase</sourcexml> to
            <sourcexml>lnci:procphrase</sourcexml>
          </xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_inlineobject-Chof-emph_sub-LxAdv-figure_ref.inlinobject.dita">2013-04-22 - emph/sub/inlineobject to figure/ref:inlineobject: Created.</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_docinfo.doc-lang-and-doc-country-LxAdv-ROOT_xml.lang.dita">2013-04-19 - docinfo:doc-lang and docinfo:doc-country to @xml:lang and @xml:ID: Added note about applicability of
            restrictions and required modifications for <targetxml>xml:id</targetxml> to
            other scenarios.</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-04-10 - remotelink to ref:crossreference: Added Source XML 7a: for link to URL, with non-URL text content because it was previously missing, only the target example was here.</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_docinfo.lbu-meta-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta-scheme.dita">2013-04-09 - docinfo:lbu-meta to doc:legacy-metadata[@metadatasource="lbu-meta"]: Added the instruction for handling <sourcexml>docinfo:metaitem[@name="QLDB"]</sourcexml>.</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_note-LxAdv-note.dita">2013-03-25 - note to note: Created.</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_docinfo.doc-id-LxAdv-dcidentifier_lnmetaidentifier-scheme.dita">2013-03-20 - docinfo:doc-id to dc:identifier[@lnmeta:identifier-scheme]: Updated the information on handling the
            situation when <sourcexml>docinfo:dpsi[@id-string]</sourcexml> is absent with
            instructions to get the dpsi from
            <sourcexml>docinfo/docinfo:custom-metafields/docinfo:custom-metafield[@name="dpsi"]</sourcexml>.</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_nl-LxAdv-proc.nl.dita">2013-03-14 - nl to proc:nl: Add instruction and example <sourcexml>nl/@n</sourcexml>.</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_p-LxAdv-p.dita">2013-03-14 - p to p: Add instruction and example <sourcexml>p/@style</sourcexml>.</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_pgrp-LxAdv-pgrp.dita">2013-03-14 - pgrp to pgrp: Add instruction and example <sourcexml>pgrp/@id</sourcexml>.</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_inlineobject-LxAdv-ref.inlineobject.dita">2013-03-13 - inlineobject to ref:inlineobject: Removed the value leg1.png and added the statement "These files should be suppressed for both *.gif and *.png file types" was added.</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_inlineobject-LxAdv-ref.inlineobject.dita">2013-03-12 - inlineobject to ref:inlineobject: Added an additional value of leg1.pngto the <sourcexml>inlineobject</sourcexml>suppression list</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-03-11 - remotelink to ref:crossreference: Instruction and example added on how to handle <targetxml>ref:marker </targetxml> 
            if it is in <targetxml>ref:lnlink@service=”URL”</targetxml>and the <targetxml>ref:key-value@value</targetxml> starts-with (., 'http://www.lexisnexis.com/au/legal/api')</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_date-LxAdv-date.dita">2013-03-08 - date to date: Added instruction for @normdate attribute that falls
            on various NL date elements</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_edpnum-LxAdv-desig.dita">2013-03-06 - edpnum to desig: Removed instructions/rules for exceptional desig scenario and deprecated
            attribute <targetxml>@followstitle</targetxml>. Added instructions for
            maintaining source document ordering.</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_heading-LxAdv-heading.dita">2013-03-06 - heading to heading: Removed instructions/rules for exceptional desig scenario and deprecated
            attribute <targetxml>@followstitle</targetxml>.</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_link-LxAdv-ref.lnlink.dita">2013-02-26 - link to ref:lnlink/@service="ATTACHMENT": Updated target example per project
            requirement.</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_blockquote-LxAdv-blockquote.dita">2013-02-18 - blockquote to blockquote: Created two sections, one for "Release 4.0 and after" and another for "Pre-Release 4.0".</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_inlineobject-LxAdv-ref.inlineobject.dita">2013-02-18 - inlineobject to ref:inlineobject: Created two sections, one for "Release 4.0 and after" and another for "Pre-Release 4.0".</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_inlineobject-LxAdv-figure_ref.inlineobject.dita">2013-02-18 - inlineobject to figure/ref:inlineobject: Created two sections, one for "Release 4.0 and after" and another for "Pre-Release 4.0".</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_inlineobject-Chof-emph-LxAdv-figure_ref.inlinobject.dita">2013-02-18 - emph/inlineobject to figure/ref:inlineobject: Created two sections, one for "Release 4.0 and after" and another for "Pre-Release 4.0".</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_inlineobject-Chof-sub-LxAdv-figure_ref.inlineobject.dita">2013-02-18 - sub/inlineobject to figure/ref:inlineobject: Created two sections, one for "Release 4.0 and after" and another for "Pre-Release 4.0".</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-02-18 - remotelink to ref:crossreference: Created two sections, one for "Release 4.0 and after" and another for "Pre-Release 4.0".</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_UK_docinfo.custom-metafields-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta.meta.metaitem.dita">2013-01-25 - docinfo:custom-metafields to doc:legacy-metadata[@metadatasource="lbu-meta"]/meta/metaitem: Added instruction to handle the scenario when <sourcexml>docinfo:custom-metafield</sourcexml> content is empty, and provided an example.</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_UK_docinfo.custom-metafields-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta.meta.metaitem.dita">2013-01-25 - docinfo:custom-metafields to doc:legacy-metadata[@metadatasource="lbu-meta"]/meta/metaitem: Added instruction to handle <sourcexml>docinfo:custom-metafield/@searchtype</sourcexml> attribute, and provided an example.</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2013-01-22 - ci.cite to lnci.cite: Instruction modified for the scenario
            <sourcexml>ci:cite/ci:content/remotelink</sourcexml> to indicate that the
            <sourcexml>ci:cite</sourcexml> and <sourcexml>ci:content</sourcexml>
            start-tags and end-tags (but not their content) are dropped.</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_UK_docinfo.custom-metafields-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta.meta.metaitem.dita">2013-01-09 - docinfo:custom-metafields to doc:legacy-metadata[@metadatasource="lbu-meta"]/meta/metaitem: Created.</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_footnote-LxAdv-footnote.dita">2013-01-09 - footnotegrp and footnote to footnotegrp and footnote: Added instruction note for handling of
            <sourcexml>footnote[@fntoken]</sourcexml> with value 0 for UK content
            types.</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_emph-LxAdv-emph.dita">2013-01-08 - emph to emph: Added note for handling
            <targetxml>emph/emph</targetxml> has the same
            <targetxml>@typestyle</targetxml> value.</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_inlineobject-LxAdv-figure_ref.inlineobject.dita">2012-12-03 - inlineobject to figure/ref:inlineobject:  Moved full conversion instruction to new base topic
            <sourcexml>inlineobject</sourcexml> to <targetxml>ref:inlineobject</targetxml>.
            This topic now specific to <targetxml>figure/ref:inlineobject</targetxml>
            mapping.</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2012-11-29 - ci.cite to lnci.cite: Updated instructions to drop all
            <sourcexml>@spanref</sourcexml>.</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2012-09-18 - ci.cite to lnci.cite: Instruction and example added for handling
            of <sourcexml>ci:cite/@type="cite4thisdoc"</sourcexml> for AU
            Journals/Newsitem.</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2012-09-11 - ci.cite to lnci.cite: Created.</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_emph-LxAdv-emph.dita">2012-02-28 - emph to emph: Added instructions for handling of
            <sourcexml>case:judges/emph/@typestyle="smcaps"</sourcexml>.</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_emph-LxAdv-emph.dita">2011-12-15 - emph to emph: Created.</xref>
        </li>
      </ol>
      </p>
    </section>
    <section>
      <title>Admindoc 2.2:PROD</title>
      <p><b>2013-05-13</b></p>
      <ol>
        <li>
          <xref href="../../../common_newest/Rosetta_blockquote-LxAdv-blockquote.dita">2013-05-08 - blockquote to blockquote: Extended the list of allowable values for image handling.</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_inlineobject-LxAdv-figure_ref.inlineobject.dita">2013-05-08 - inlineobject to figure/ref:inlineobject: Extended the list of allowable values for image handling.</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-05-08 - remotelink to ref:crossreference: Extended the list of allowable values for image handling.</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_inlineobject-LxAdv-figure_ref.inlineobject.dita">2013-05-02 - inlineobject to figure/ref:inlineobject: Updated target example to if the SMI is present then a <targetxml>ref:inliineobject/@status</targetxml> attribute is set to “valid”.</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_link-LxAdv-ref.lnlink.dita">2013-05-02 - link to ref:lnlink/@service="ATTACHMENT": Some of the verbiage is changed and updated target example to if the SMI is present then a <targetxml>ref:lnlink/@status</targetxml> attribute is set to “valid”.</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_blockquote-LxAdv-blockquote.dita">2013-05-01 - blockquote to blockquote: Removed instructions for section
            "Pre-Release 4.0" because according to latest Apollo markup, section
            "Release 4.0 and after" and section "Pre-Release 4.0" now have
            similar conversion markup.</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2013-05-01 - ci.cite to lnci.cite: Removed special rule for
            <sourcexml>ci:cite/ci:content/remotelink</sourcexml> which required
            suppression of <sourcexml>ci:cite/ci:content</sourcexml> tags. The elements are
            now retained and convert according to common rules.</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_inlineobject-LxAdv-figure_ref.inlineobject.dita">2013-05-01 - inlineobject to figure/ref:inlineobject: Removed instructions for section
            "Pre-Release 4.0" because according to latest Apollo markup, section
            "Release 4.0 and after" and section "Pre-Release 4.0" now have
            similar conversion markup.</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_link-LxAdv-ref.lnlink.dita">2013-05-01 - link to ref:lnlink/@service="ATTACHMENT": Updated instructions and target example per
            latest Apollo markup.</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-05-01 - remotelink to ref:crossreference: Removed instructions for section
            "Pre-Release 4.0" because according to latest Apollo markup, section
            "Release 4.0 and after" and section "Pre-Release 4.0" now have
            similar conversion markup.</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-05-01 - remotelink to ref:crossreference: "Instruction added for <sourcexml>ci:cite/ci:content/remotelink</sourcexml> specifying that the <sourcexml>remotelink</sourcexml> is to be converted to <targetxml>ref:crossreference</targetxml> but the containing elements' start-tags and end-tags (<sourcexml>ci:cite</sourcexml> and <sourcexml>ci:content</sourcexml>) are dropped", has been removed from the instructions and now <sourcexml>remotelink</sourcexml> will be converted to the resulting mapping where it is. For more details you can see example: Source XML 10: <sourcexml>remotelink</sourcexml> as a child of
            <sourcexml>ci:cite/ci:content</sourcexml>
          </xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_blockquote-LxAdv-blockquote.dita">2013-04-30 - blockquote to blockquote: Updated target sample according to latest Apollo markup.</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_inlineobject-LxAdv-figure_ref.inlineobject.dita">2013-04-30 - inlineobject to figure/ref:inlineobject: Updated target sample according to latest Apollo markup.</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-04-30 - remotelink to ref:crossreference: Updated target sample according to latest Apollo markup.</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2013-04-24 - ci.cite to lnci.cite: Added a mapping for
            <sourcexml>ci:procphrase</sourcexml> to
            <sourcexml>lnci:procphrase</sourcexml>
          </xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_docinfo.doc-lang-and-doc-country-LxAdv-ROOT_xml.lang.dita">2013-04-19 - docinfo:doc-lang and docinfo:doc-country to @xml:lang and @xml:ID: Added note about applicability of
            restrictions and required modifications for <targetxml>xml:id</targetxml> to
            other scenarios.</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-04-10 - remotelink to ref:crossreference: Added Source XML 7a: for link to URL, with non-URL text content because it was previously missing, only the target example was here.</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_docinfo.lbu-meta-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta-scheme.dita">2013-04-09 - docinfo:lbu-meta to doc:legacy-metadata[@metadatasource="lbu-meta"]: Added the instruction for handling <sourcexml>docinfo:metaitem[@name="QLDB"]</sourcexml>.</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_note-LxAdv-note.dita">2013-03-25 - note to note: Created.</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_docinfo.doc-id-LxAdv-dcidentifier_lnmetaidentifier-scheme.dita">2013-03-20 - docinfo:doc-id to dc:identifier[@lnmeta:identifier-scheme]: Updated the information on handling the
            situation when <sourcexml>docinfo:dpsi[@id-string]</sourcexml> is absent with
            instructions to get the dpsi from
            <sourcexml>docinfo/docinfo:custom-metafields/docinfo:custom-metafield[@name="dpsi"]</sourcexml>.</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_nl-LxAdv-proc.nl.dita">2013-03-14 - nl to proc:nl: Add instruction and example <sourcexml>nl/@n</sourcexml>.</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_p-LxAdv-p.dita">2013-03-14 - p to p: Add instruction and example <sourcexml>p/@style</sourcexml>.</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_pgrp-LxAdv-pgrp.dita">2013-03-14 - pgrp to pgrp: Add instruction and example <sourcexml>pgrp/@id</sourcexml>.</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-03-11 - remotelink to ref:crossreference: Instruction and example added on how to handle <targetxml>ref:marker </targetxml> 
            if it is in <targetxml>ref:lnlink@service=”URL”</targetxml>and the <targetxml>ref:key-value@value</targetxml> starts-with (., 'http://www.lexisnexis.com/au/legal/api')</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_date-LxAdv-date.dita">2013-03-08 - date to date: Added instruction for @normdate attribute that falls
            on various NL date elements</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_edpnum-LxAdv-desig.dita">2013-03-06 - edpnum to desig: Removed instructions/rules for exceptional desig scenario and deprecated
            attribute <targetxml>@followstitle</targetxml>. Added instructions for
            maintaining source document ordering.</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_heading-LxAdv-heading.dita">2013-03-06 - heading to heading: Removed instructions/rules for exceptional desig scenario and deprecated
            attribute <targetxml>@followstitle</targetxml>.</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_link-LxAdv-ref.lnlink.dita">2013-02-26 - link to ref:lnlink/@service="ATTACHMENT": Updated target example per project
            requirement.</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_blockquote-LxAdv-blockquote.dita">2013-02-18 - blockquote to blockquote: Created two sections, one for "Release 4.0 and after" and another for "Pre-Release 4.0".</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_inlineobject-LxAdv-figure_ref.inlineobject.dita">2013-02-18 - inlineobject to figure/ref:inlineobject: Created two sections, one for "Release 4.0 and after" and another for "Pre-Release 4.0".</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-02-18 - remotelink to ref:crossreference: Created two sections, one for "Release 4.0 and after" and another for "Pre-Release 4.0".</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_UK_docinfo.custom-metafields-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta.meta.metaitem.dita">2013-01-25 - docinfo:custom-metafields to doc:legacy-metadata[@metadatasource="lbu-meta"]/meta/metaitem: Added instruction to handle the scenario when <sourcexml>docinfo:custom-metafield</sourcexml> content is empty, and provided an example.</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_UK_docinfo.custom-metafields-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta.meta.metaitem.dita">2013-01-25 - docinfo:custom-metafields to doc:legacy-metadata[@metadatasource="lbu-meta"]/meta/metaitem: Added instruction to handle <sourcexml>docinfo:custom-metafield/@searchtype</sourcexml> attribute, and provided an example.</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2013-01-22 - ci.cite to lnci.cite: Instruction modified for the scenario
            <sourcexml>ci:cite/ci:content/remotelink</sourcexml> to indicate that the
            <sourcexml>ci:cite</sourcexml> and <sourcexml>ci:content</sourcexml>
            start-tags and end-tags (but not their content) are dropped.</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_UK_docinfo.custom-metafields-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta.meta.metaitem.dita">2013-01-09 - docinfo:custom-metafields to doc:legacy-metadata[@metadatasource="lbu-meta"]/meta/metaitem: Created.</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_footnote-LxAdv-footnote.dita">2013-01-09 - footnotegrp and footnote to footnotegrp and footnote: Added instruction note for handling of
            <sourcexml>footnote[@fntoken]</sourcexml> with value 0 for UK content
            types.</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_emph-LxAdv-emph.dita">2013-01-08 - emph to emph: Added note for handling
            <targetxml>emph/emph</targetxml> has the same
            <targetxml>@typestyle</targetxml> value.</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_inlineobject-LxAdv-figure_ref.inlineobject.dita">2012-12-03 - inlineobject to figure/ref:inlineobject:  Moved full conversion instruction to new base topic
            <sourcexml>inlineobject</sourcexml> to <targetxml>ref:inlineobject</targetxml>.
            This topic now specific to <targetxml>figure/ref:inlineobject</targetxml>
            mapping.</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2012-11-29 - ci.cite to lnci.cite: Updated instructions to drop all
            <sourcexml>@spanref</sourcexml>.</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2012-09-18 - ci.cite to lnci.cite: Instruction and example added for handling
            of <sourcexml>ci:cite/@type="cite4thisdoc"</sourcexml> for AU
            Journals/Newsitem.</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2012-09-11 - ci.cite to lnci.cite: Created.</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_emph-LxAdv-emph.dita">2012-02-28 - emph to emph: Added instructions for handling of
            <sourcexml>case:judges/emph/@typestyle="smcaps"</sourcexml>.</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_emph-LxAdv-emph.dita">2011-12-15 - emph to emph: Created.</xref>
        </li>
      </ol>
    </section>
    <section>
      <title>Admindoc 2.0:PROD</title>
      <p><b>2013-04-17</b></p>
      <ol>
        <li>First Draft CI created UK08 QUASI Regulatory Materials COMMENTARYDOC TO ADMINDOC.</li>
      </ol>
    </section>
  </body>
	</dita:topic>

</xsl:stylesheet>