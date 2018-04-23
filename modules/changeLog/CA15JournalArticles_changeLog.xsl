<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:ci="http://www.lexis-nexis.com/ci" xmlns:frm="http://www.lexis-nexis.com/glp/frm" xmlns:jrnl="http://www.lexis-nexis.com/glp/jrnl" xmlns:form="http://www.lexisnexis.com/xmlschemas/content/shared/form/1/" xmlns:proc="http://www.lexisnexis.com/xmlschemas/content/shared/process-elements/1/" version="2.0" exclude-result-prefixes="dita ci frm jrnl">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="CA15JournalArticles_changeLog">
  <title>Change Log</title>
  <body>
    
    <section>
      <title>Newsitem 4.4 PROD</title>
      <p>2016-04-01 
        <ul>
          <li>
            <xref href="../../../Rosetta/DITA-CAN/CA15-Journal_Articles/CA15_Suppress_Captions.dita">2016-04-01 - Suppress Captions id-CA15-35427: Added caption variation  AUTEURS/AUTHOR to
              the suppress list: Webstar 6485528</xref>
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
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_inlineobject-LxAdv-ref.inlineobject.dita">2015-11-16 - inlineobject to ref:inlineobject id-CCCC-10369: Added instruction for <sourcexml>inlineobject/@key</sourcexml> 
              to be suppressed.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/DITA-CAN/CA15-Journal_Articles/CA15_Rosetta_pubdate.dita">2015-10-13 - pubdate id-CA15-35421: Added mapping to
              <targetxml>date-text</targetxml> to hold the pcdata. RFA 59.</xref>
          </li>
        </ul>
      </p>
    </section>
    
    <section>
      <title>Newsitem 4.2 PROD</title>
      <p>2015-10-14 <ul>
        <li>
          <xref href="../../../Rosetta/DITA-CAN/CA15-Journal_Articles/CA15_Rosetta_pubdate.dita">2015-10-13 - pubdate id-CA15-35421: Added mapping to
            <targetxml>date-text</targetxml> to hold the pcdata. RFA 59.</xref>
        </li>
      </ul></p>
    </section>
    
    <section>
      <title>Newsitem 4.2 PROD</title>
      <p>2015-10-06 <ul>
        <li>
          <xref href="../../../Rosetta/DITA-CAN/CA15-Journal_Articles/CA15_Rosetta_pubdate.dita">2015-10-05 - pubdate id-CA15-35421: Revision concerning
            <sourcexml>@ln.user-displayed</sourcexml>. When
            <sourcexml>"true"</sourcexml>, pcdata is retained for target. When
            <sourcexml>"false"</sourcexml>, pcdata is suppressed. RFA 59.</xref>
        </li>
      </ul></p>
    </section>
    
    <section>
      <title>Newsitem 4.2 PROD</title>
      <p>2015-09-30 <ul>
        <li>
          <xref href="../../../Rosetta/DITA-CAN/CA15-Journal_Articles/CA15_Rosetta_pubdate.dita">2015-09-29 - pubdate id-CA15-35421: Revised. Previously, pcdata was not included
            in target based on source attribute
            <sourcexml>pubdate[@ln.user-displayed="false"]</sourcexml>. That attribute
            is now ignored/suppressed and pcdata is carried through to target. RFA
            59.</xref>
        </li>
      </ul></p>
    </section>
    
    <section>
      <title>Newsitem 4.1 PROD</title>
      <p>2015-09-01 <ul>
          <li>
            <xref href="../../../Rosetta/DITA-CAN/CA15-Journal_Articles/CA15_Rosetta_articletitle.dita">2015-08-31 - jrnl:articletitle id-CA15-35410: Modified rule for two consecutive
                <sourcexml>nl</sourcexml>. Maps to single <targetxml>proc:nl</targetxml> as before
              but now requires space preceding <targetxml>proc:nl</targetxml>. RFA 72.</xref>
          </li>
        </ul></p>
    </section>

    <section>
      <title>Newsitem 4.1 PROD</title>
      <p>2015-08-13 <ul>
          <li>
            <xref href="../../../Rosetta/DITA-CAN/CA15-Journal_Articles/document.highlights-to-doc.overview.dita">2015-08-12 - Document Highlights become doc:overview id-CA15-35428: Modified scenario
              3, extracting from <sourcexml>bodytext</sourcexml>, to concatenate contents of
              multiple <sourcexml>p</sourcexml> elements. Previous rule extracted from only the
              first <sourcexml>p</sourcexml>. No change to target xpath. RFA 131.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_CAN_docinfo.custom-metafields-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta.meta.metaitem.dita">2015-07-29 - docinfo:custom-metafields to
              doc:legacy-metadata[@metadatasource="lbu-meta"]/meta/metaitem id-CCCC-10251: Update
                <targetxml>metaitem[@name="effect-date"]/value</targetxml> in the example to have a
              real date, "19950505", instead of all zeroes, "00000000". R4.5 Canada CR458.</xref>
          </li>
        </ul></p>
    </section>

    <section>
      <title>Newsitem 4.1 PROD</title>
      <p>2015-07-27 <ul>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_inlineobject-Chof-emph-LxAdv-figure_ref.inlinobject.dita">2015-07-24 - emph/inlineobject to figure/ref:inlineobject id-CCCC-10359: When
              Inlineobject is followed by two emph elements of same typestyle
                <sourcexml>sup/emph/emph/inlineobject</sourcexml>then from Target we should drop the
              one emph element and the followed <sourcexml>emph/inlineobject</sourcexml> should
              mapped with <targetxml>emph/ref:inlineobject</targetxml> in Target.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/DITA-CAN/CA15-Journal_Articles/document.highlights-to-doc.overview.dita">2015-07-21 - Document Highlights become doc:overview id-CA15-35428: Added special
              rule to suppress <sourcexml>fnr</sourcexml> tag and content. RFA 79.</xref>
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
        </ul>
      </p>
      <p>2015-06-11 <ul>
          <li>
            <xref href="CA15_Rosetta_jrnl_journalcite.dita">2015-06-11 - jrnl:journalcite
              id-CA15-35417: Updated instructions for new line under
                <sourcexml>ci:content</sourcexml>. RFA 74</xref>
          </li>
          <li><xref href="../../../Rosetta/common_newest/Rosetta_nl-Chof-ci.content-LxAdv-SingleSpaceCharacter.dita">2015-06-11- General instructions for nl are added.</xref></li>
          <li>
            <xref href="document.highlights-to-doc.overview.dita">2015-06-09 - Document Highlights
              become doc:overview id-CA15-35428: Modified scenario 3, extracting from
                <sourcexml>bodytext</sourcexml>, to state that first <sourcexml>p</sourcexml> is
              used even if not an immediate child of <sourcexml>bodytext</sourcexml>. No change to
              target xpath. RFA 73.</xref>
          </li>
        </ul></p>
      <p>2015-06-08 <ul>
          <li>
            <xref href="CA15_Rosetta_publication.dita">2015-06-08 - publication id-CA15-35423:
              Replace <sourcexml>nl</sourcexml> with space. Db issue #70.</xref>
          </li>
          <li>
            <xref href="CA15_Suppress_Captions.dita">2015-06-03 - Suppress Captions id-CA15-35427:
              Added captions for docinfo:doc-heading, four variations of CITED:. Included note that
              this is an exceptional scenario. These captions are suppressed even if they do not
              occur at start of pcdata. RFA 39.</xref>
          </li>
          <li>
            <xref href="CA15_Rosetta_jrnl_journalcite.dita">2015-06-03 - jrnl:journalcite
              id-CA15-35417: At example for multiple <sourcexml>ci:cite</sourcexml>, added note to
              suppress forward slash, / , if occurs as first or last character in
                <sourcexml>ci:content</sourcexml>. RFA 71.</xref>
          </li>
        </ul>
      </p>
      <p>2015-06-02 <ul>
          <li>
            <xref href="CA15_Rosetta_jrnl_prelim-footnote.dita">2015-05-27 -
              jrnl:prelim/footnotegrp/footnote: New rule. Target is not new. Instructions for moving
              footnotes from preliminary portion in source to end of file in target. RFA 48 and
              54.</xref>
          </li>
          <li>
            <xref href="CA15_Rosetta__contrib.dita">2015-05-27 - contrib id-CA15-35425: Modified
              instructions for <sourcexml>contrib/fnr</sourcexml>... Db #issue 48 and 54.</xref>
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
            <xref href="../../../Rosetta/common_newest/Rosetta_remotelink-self-inter-document-link-LxAdv-intra-document-link.dita">2015-05-22 - remotelink (self inter-document link) to ref:lnlink (intra-document
              link) id-CCCC-10468: Added an instruction to explicitly indicate
                <sourcexml>remotelink/@status</sourcexml> is always dropped (suppressed). This is a
              very low-priority change and has been added for technical correctness, particularly
              with respect to new CIs. Existing scripts do not have to implement this change unless
              needed since prior to the change <targetxml>remotelink/@status</targetxml> handling
              was not explicitly specified.</xref>
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
            <xref href="../../../Rosetta/common_newest/Rosetta_footnote-LxAdv-footnote.dita">2015-05-14 - footnotegrp and footnote to footnotegrp and footnote id-CCCC-10322:
              Added instructions for <sourcexml>footnotegrp</sourcexml> within
                <sourcexml>frm:body</sourcexml> and <sourcexml>clause</sourcexml>. To generate
                <targetxml>form:p/form:text</targetxml> wrapper for target
                <targetxml>footnotegroup</targetxml>. Immediately affects UK12 but will apply to any
              stream if the use case occurs. R4.5 Content Issues 2316 and 2317.</xref>
          </li>
        </ul>
      </p>
      <p>2015-05-12: <ul>
          <li>
            <xref href="document.highlights-to-doc.overview.dita">2015-05-11 - Document Highlights
              become doc:overview id-CA15-35428: New rule. Target xpath is not new. Added scenario 3
              to extract from bodytext when abstract and highlight not present. RFA #58.</xref>
          </li>
        </ul>
      </p>
      <p>2015-05-06: <ul>
          <li>
            <xref href="CA15_Suppress_Captions.dita">2015-05-05 - Suppress Captions id-CA15-35427:
              Added two captions. LENGTH: and COPYRIGHT:. RFA 39.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.doc-heading-LxAdv-dc.title.dita">2015-05-05 - docinfo:doc-heading to dc:title id-CCCC-10292: Added note to convert
              (TM), (R), and (MC) to unicode code points. DB # 45. Applicable to CA14.</xref>
          </li>
        </ul>
      </p>
      <p>2015-05-04: <ul>
          <li>
            <xref href="CA15_Rosetta_articletitle.dita">2015-05-04 - jrnl:articletitle
              id-CA15-35410: <sourcexml>jrnl:articletitle</sourcexml> directions for
                <sourcexml>nl</sourcexml>. Db issue #43</xref>
          </li>
          <li>
            <xref href="CA15_Rosetta_copyright.dita">2015-05-04 - copyright id-CA15-35412:
              Directions for Copyright Symbol. Db issue #44</xref>
          </li>
          <li>
            <xref href="CA15_Suppress_Captions.dita">2015-04-29 - Suppress Captions id-CA15-35427:
              Added two captions. CRITIQUE/REVIEW: and CITE/CITED: (without accent). And added rule
              to also suppress space following a caption. RFA 39 and 36.</xref>
          </li>
          <li>
            <xref href="document.highlights-to-doc.overview.dita">2015-04-27 - Document Highlights
              become doc:overview id-CA15-35428: New section. New target. Rules to create extracted
              overview. R4.5 RFA #2287.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_docinfo-LxAdv-doc.metadata_doc.docinfo.dita">2015-04-14 - docinfo to doc:metadata/doc:docinfo id-CCCC-10282: Remove bullet icon in
              sub nested list for handling Indentation isssue.</xref>
          </li>
          <li>
            <note>2015-04-06: An example XSLT stylesheet to transform the source Rosetta mark-up
              into the target New Lexis mark-up is included with this update and can be found on
              Sharepoint at the same location as this PDF file. Please be aware that the example
              XSLT stylesheet was created as part of the quality control process of conversion
              instruction creation and is offered as an informational asset. This CI document
              remains the authoritative source of conversion instructions.</note>
          </li>
          <li>
            <xref href="CA15_Rosetta_jrnl_journalcite.dita">2015-04-01 - jrnl:journalcite
              id-CA15-35417: Updated instructioins for multiple ci:cite.</xref>
          </li>
          <li>
            <xref href="CA15JournalArticles_introduction.dita">2015-03-27 - Introduction
              id-CA15-35407: Note that the emphasis portion of the General Markup section has
              changed. Now contains the Canada-specific rules for <sourcexml>emph</sourcexml> as
              child of <sourcexml>title</sourcexml>, see
                <sourcexml>heading/title/emph/@typestyle="bf"</sourcexml> to
                <targetxml>heading/title</targetxml> (id-CCCC-10495).</xref>
          </li>
          <li>
            <xref href="CA15_Rosetta_articletitle.dita">2015-03-26 - jrnl:articletitle
              id-CA15-35410: Minor. Administrative. Removed rule about child
                <sourcexml>emph</sourcexml>. Not in data.</xref>
          </li>
          <li>
            <xref href="CA15_Suppress_Captions.dita">2015-03-26 - Suppress Captions id-CA15-35427:
              New section. Concerns content, pcdata. No impact for target xpaths. RFA 4.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.hier-LxAdv-doc.hier.dita">2015-03-25 - docinfo:hier to doc:hier id-CCCC-10297: Added note with rule for
                <sourcexml>title/num</sourcexml>. Suppress <sourcexml>num</sourcexml> tag but output
              content. Applicable for CA09 only. RFA 2249.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_CAN_docinfo.custom-metafields-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta.meta.metaitem.dita">2015-03-19 - docinfo:custom-metafields to
              doc:legacy-metadata[@metadatasource="lbu-meta"]/meta/metaitem id-CCCC-10251: Within
              rules for First Act Doc, made the word act lower-case in source value to reflect
              recent data change. Formerly <sourcexml>"ActFirstDoc"</sourcexml>, now
                <sourcexml>"actFirstDoc"</sourcexml>. Affects CA05, 06, 07, 08. R4.5 RFA
              #2240.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2015-03-17 - ci.cite to lnci.cite id-CCCC-10268: An attribute
                <targetxml>@inline</targetxml> get added with <targetxml>desig</targetxml> element
              even when the source<sourcexml>pnum</sourcexml> is not having that
                attribute<sourcexml>@inline</sourcexml> Applicable on CA12 only.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_pnum-LxAdv-desig.dita">2015-03-17 -
              pnum to desig id-CCCC-10434: An attribute <targetxml>@inline</targetxml> get added
              with <targetxml>desig</targetxml> element even when the
                source<sourcexml>pnum</sourcexml> is not having that
                attribute<sourcexml>@inline</sourcexml> Applicable on CA12 only.</xref>
          </li>
        </ul>
      </p>
      <p>2015-03-03 <ul>
          <li> Created. </li>
        </ul>
      </p>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA15-Journal_Articles\CA15JournalArticles_changeLog.dita  -->

</xsl:stylesheet>
