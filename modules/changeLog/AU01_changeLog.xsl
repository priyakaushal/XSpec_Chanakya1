<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:ci="http://www.lexis-nexis.com/ci" xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" xmlns:frm="http://www.lexis-nexis.com/glp/frm" xmlns:glp="http://www.lexis-nexis.com/glp" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:source_lnci="http://www.lexis-nexis.com/lnci" xmlns:caseinfo="http://www.lexisnexis.com/xmlschemas/content/legal/case-information/1/" xmlns:casesum="http://www.lexisnexis.com/xmlschemas/content/legal/case-summary/1/" xmlns:courtcase="http://www.lexisnexis.com/xmlschemas/content/legal/courtcase/1/" xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns:decision="http://www.lexisnexis.com/xmlschemas/content/legal/decision/1/" xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" xmlns:form="http://www.lexisnexis.com/xmlschemas/content/shared/form/1/" xmlns:lnci="http://www.lexisnexis.com/xmlschemas/content/shared/citations/1/" xmlns:lndocmeta="http://www.lexisnexis.com/xmlschemas/content/shared/lndocmeta/1/" xmlns:person="http://www.lexisnexis.com/xmlschemas/content/shared/person/1/" xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" xmlns:proc="http://www.lexisnexis.com/xmlschemas/content/shared/process-elements/1/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita case ci docinfo frm glp leg lnci">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="AU01_changeLog">
  <title>Change Log</title>
  <body>
    <section>
      <title>Courtcase 10.2 PROD</title>
      <p>2016-11-17:
        <ul>
          <li>
            <xref href="../../../Rosetta/DITA-PAC/AU01_CaseLaw/AU01_Rosetta_case.courtcite-LxAdv_ref.cite4thisresource.dita">2016-11-15 - case:courtcite id-AU01-18214: Added instruction and example when
              <sourcexml>case:courtcite/ci:cite/@type="cite4thisdoc"</sourcexml> then duplicate all the <targetxml>ref:para</targetxml> using the <targetxml>lnci:au@courtcode</targetxml> Applicable for AU01 and NZ03. Webstar # 6366618 and VSTS #147977</xref>
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
            <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.versioninfo-LxAdv-doc.versioninfo-scheme.dita">2016-09-14 - docinfo:versioninfo to doc:versioninfo id-CCCC-10307: Note added for handling the input markup '<targetxml>docinfo:versioninfo@startdate-tbd</targetxml>'.</xref>
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
      <title>Courtcase 9.20 PROD</title>
      <p>2016-08-09:
      <ul>
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
          <xref href="../../../Rosetta/common_newest/Rosetta_PAC_docinfo.doc-id-LxAdv-dcidentifier_lnmetaidentifier-scheme.dita">2016-08-03 - docinfo:doc-id to dc:identifier[@lnmeta:identifier-scheme] id-CCCC-10550: Created the rule to, Check manifest file for
            DPSI value and create new element
            <targetxml>dc:metadata/dc:source[@lnmeta:sourcescheme]</targetxml>
          </xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_blockquote-link-LxAdv-blockquote-p-text-ref.lnlink.dita">2016-08-03 - blockquote/link to blockquote/p/text/ref:lnlink id-CCCC-10246: Added Note about xml snippets that illustrate image
            handling. Note summarizes move from Apollo to Blobstore application. UK is first LBU to
            move to Blobstore.</xref>
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
          <xref href="../../../Rosetta/common_newest/Rosetta_inlineobject-Chof-p_blockquote-LxAdv-p_figure_ref.inlineobject.dita">2016-07-26 - p/blockquote/inlineobject to p/figure/ref:inlineobject id-CCCC-10363: Added Note about xml snippets that
            illustrate image handling. Note summarizes move from Apollo to Blobstore
            application. UK is first LBU to move to Blobstore. </xref>
        </li>
      </ul></p>
    </section>
    <section>
      
      <title>Courtcase 9.19 PROD </title>
      <p>2016-06-07
        <ul>
          <li>
            <xref href="../../../Rosetta/DITA-PAC/AU01_CaseLaw/AU01_Rosetta_case.parallelcite-LxAdv_ref.cite4thisresource.dita">2016-06-07 - case:parallelcite id-AU01-18232: Added new instruction <sourcexml>case:parallelcite[ci:cite@type="reporter"]</sourcexml>to
              <targetxml> ref:parallelcite[@citetype="reporter"]</targetxml> Applicable on AU01, Webstar # 6497089.</xref>
          </li>         
          <li>
            <xref href="../../../Rosetta/DITA-PAC/AU01_CaseLaw/AU01_introduction.dita">2016-06-07 - Introduction id-AU01-18207: Schema version updated to Courtcase 9.19
              PROD</xref>
          </li>
        </ul></p>
    </section>
    
    <section>
      <title>Courtcase 9.16 PROD</title>
      <p>2015-12-24
        <ul>
          <li>
            <xref href="../../../Rosetta/DITA-PAC/AU01_CaseLaw/AU01_Rosetta_case.courtcite-LxAdv_ref.cite4thisresource.dita">2015-12-24 - case:courtcite id-AU01-18214: Added instruction and example when <sourcexml>@type</sourcexml> attribute is not present in 
              <sourcexml>ci:cite</sourcexml> element. Applicable on AU01, Webstar # 6004406</xref>
          </li>
        </ul></p>
    </section>
    
    <section>
      <title>Courtcase 9.16 PROD</title>
      <p>2015-12-22
        <ul>
          <li>
            <xref href="../../../Rosetta/DITA-PAC/AU01_CaseLaw/AU01_Rosetta_case.courtcite-LxAdv_ref.cite4thisresource.dita">2015-12-22 - case:courtcite id-AU01-18214: Updated target mapping and snippet based on the
              <sourcexml>ci:cite/@type</sourcexml> value, Applicable on AU01, Webstar #
              6004406.</xref>
          </li>
        </ul></p>
    </section>
    
    <section>
      <title>Courtcase 9.13 PROD</title>
      <p>2015-10-05
      <ul>
        <li>
          <xref href="../../common_newest/Rosetta_AU_commentary_inlineobject-Chof-ci.conent_remotelink-LxAdv-lnci.content_ref.crossreference.dita">2015-10-05 - ci:content/remotelink/inlineobject to lnci:content/ref:crossreference: Updated Instruction, Applicable on AU01.</xref>
        </li>
      </ul></p>
    </section>
    
    <section>
      <title>Courtcase 9.13 PROD</title>
      
      <p>2015-09-10
        <ul>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_AU_commentary_inlineobject-Chof-ci.conent_remotelink-LxAdv-lnci.content_ref.crossreference.dita">2015-09-10 - ci:content/remotelink/inlineobject to lnci:content/ref:crossreference: Created.</xref>
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
            <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2015-05-22 - docinfo:assoc-links to doc:related-content id-CCCC-10284: Clarification. Not a new rule or target. Within rules handling
              <sourcexml>remotelink[@service="DOC-ID"]</sourcexml>, added statement to create containing elements
              <targetxml>ref:locator/ref:locator-key</targetxml> which hold <targetxml>ref:key-name</targetxml> and
              <targetxml>ref:key-value</targetxml>. The xpath is controlled by schema and so conversions have been
              correct. CI examples were correct. The narrative rule is now explicit. R4.5 Content Issue 2326.</xref>
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
        </ul></p>
    </section>
    
    <section>
      <title>Courtcase 9.11 PROD</title>
      
      <p>2015-05-12
        <ul>
          <li>
            <xref href="../../../Rosetta/common_caselaw/Rosetta_catchwordgrp.dita">2015-05-12 - catchwordgrp id-CCCC-12023: Updated note for Pacific Content (AU) to replace <sourcexml>nl</sourcexml> with space when occur in <sourcexml>catchwords/catchphrase</sourcexml>, Webstar # 5992021, Applicable on AU01.</xref>
          </li>
        </ul></p>
    </section>
    
    <section>
      <title>Courtcase 9.11 PROD</title>
      
      <p>2015-05-08
      <ul>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.doc-heading-LxAdv-dc.title.dita">2015-05-05 - docinfo:doc-heading to dc:title id-CCCC-10292: Added note to convert (TM), (R), 
            and (MC) to unicode code points. DB # 45. Applicable to CA14.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_PAC-page-wAncestor-entry-LxAdv-ref.page.dita">2015-05-05 - page with an ancestor of entry to ref:page id-CCCC-10425: Change to consolidate instructions, actual
            instructions have not changed. Removed redundant instructions pertaining to commas,
            periods, and spaces within <sourcexml>page/@count</sourcexml>, as well as instructions
            regarding the XPath <sourcexml>li/page</sourcexml>. Added note to refer to to topic
            "<sourcexml>page</sourcexml> to <targetxml>ref:page</targetxml>
            id-CCCC-10426" that contains the general instructions for
            <sourcexml>page</sourcexml> to <targetxml>ref:page</targetxml>, including the
            instructions removed from this topic.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_PAC-page-wAncestor-entry-LxAdv-ref.page.dita">2015-04-24 - page with an ancestor of entry to ref:page id-CCCC-10425: Added a note and an example ("Source XML showing table with multiple page elements") to explicitly specify and demonstrate handling the scenario where there are multiple <sourcexml>page</sourcexml> elements in the same <sourcexml>table</sourcexml>. (Webstar #5771989 &amp; #5945128)</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_docinfo-LxAdv-doc.metadata_doc.docinfo.dita">2015-04-14 - docinfo to doc:metadata/doc:docinfo id-CCCC-10282: Remove bullet icon in sub nested list for
            handling Indentation isssue.</xref>
        </li>
      </ul></p>
    </section>
    
    <section>
      <title>Courtcase 9.11 PROD</title>
      
      <p>2015-03-24
        <ul>
          <li>
            <xref href="../../../Rosetta/DITA-PAC/AU01_CaseLaw/AU01_Rosetta_case.judges.dita">2015-03-24 - case:judges id-AU01-18225: Modified handling of any occurence of a colon in the source within the judges label text.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_emp-Chof-heading_title-LxAdv-heading_title.dita">2015-03-18 - heading/title/emph to heading/title id-CCCC-10313: When <sourcexml>heading\title</sourcexml> contains <sourcexml>emph</sourcexml> and <sourcexml>PCDATA</sourcexml> under it then from target the emph tags will dropped and it's content along with PCDATA content will be put directly under <targetxml>title</targetxml> element . Applicable to UK09 only.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2015-03-17 - ci.cite to lnci.cite id-CCCC-10268: An attribute <targetxml>@inline</targetxml> get added with <targetxml>desig</targetxml> element even when the source<sourcexml>pnum</sourcexml> is not having that attribute<sourcexml>@inline</sourcexml> Applicable on CA12 only.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_pgrp-LxAdv-pgrp.dita">2015-03-17 - pgrp to pgrp id-CCCC-10431: An attribute <targetxml>@inline</targetxml> get added with <targetxml>desig</targetxml> element even when the source<sourcexml>pnum</sourcexml> is not having that attribute<sourcexml>@inline</sourcexml> Applicable on CA12 only.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_caselaw/Rosetta_case.references-LxAdv_ref.relatedrefs.dita">2015-03-13 - case:references id-CCCC-12019: Added STATUTES AND REGULATION CITED: to the @referencetype substitution table. Webteam #292787</xref>
          </li>
        </ul> 
      </p>
      
      <p>2015-02-26
        <ul>
          <li>
            <xref href="../../../Rosetta/DITA-PAC/AU01_CaseLaw/AU01_Rosetta_case.judges.dita">2015-02-26 - case:judges id-AU01-18225: Added clarification information to note for handling mixed content labels which precede judge lists.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2015-02-24 - ci.cite to lnci.cite id-CCCC-10268: Example updated as per new rule an attribute <targetxml>@inline</targetxml>get added with <targetxml>desig</targetxml>element when the source<sourcexml>pnum</sourcexml>is not having that attribute<sourcexml>@inline</sourcexml>
            </xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_pgrp-LxAdv-pgrp.dita">2015-02-24 - pgrp to pgrp id-CCCC-10431: Example updated as per new rule an attribute <targetxml>@inline</targetxml>get added with <targetxml>desig</targetxml>element when the source<sourcexml>pnum</sourcexml>is not having that attribute<sourcexml>@inline</sourcexml> 
            </xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_caselaw/Rosetta_case.courtname-LxAdv_jurisinfo.courtname.dita">2015-02-09 - case:courtname id-CCCC-12013: Updated target example, removed attribute <targetxml>@normlongname</targetxml> from target, Applicable on CA01.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_person-LxAdv-person.person.dita">2015-02-03 - person to person:person id-CCCC-10428: Added instruction for <sourcexml>name.detail/name.honorific</sourcexml>
              mapping to <targetxml>person:name.detail/person:name.honorific</targetxml>.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.hier-LxAdv-doc.hier.dita">2015-01-23 - docinfo:hier to doc:hier id-CCCC-10297: Added note to convert <sourcexml>docinfo:hierlev/@exclude-from-displayunits="true"</sourcexml> into
              <targetxml>doc:hier/@includeintoc="false"</targetxml>.</xref>
          </li>
        </ul>
      </p>
      
      <p>2015-01-21
        <ul>
          <li>
            <xref href="../../../Rosetta/DITA-PAC/AU01_CaseLaw/AU01_Rosetta_case.headnote-LxAdv_courtcase.head.dita">2015-01-21 - case:headnote id-AU01-18223: Added instruction and example for <sourcexml>footnotegroup and page</sourcexml> elements that
              occur as child of <sourcexml>case:headnote</sourcexml>.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2015-01-19 - docinfo:assoc-links to doc:related-content id-CCCC-10284: For CA05 - CA08- Updated Instruction and
              included "<targetxml>related-content-grp</targetxml>" markup inside the target Example
              8 for conversion of QUERY link to doc:related-content.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2015-01-15 - docinfo:assoc-links to doc:related-content id-CCCC-10284: For CA03- Convert the QUERY link to doc:related-content. Refer Example 10. R4.5 RFA #2099.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2015-01-13 - docinfo:assoc-links to doc:related-content id-CCCC-10284: For CA05 - CA08 Conversion Needs to split
              multiple ORs into a separate <targetxml>doc:related-content-item</targetxml>. Refer
              Example 9</xref>
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
        </ul>  
      </p>
      <p>2015-01-07
        <ul>
          <li>
            <xref href="../../../Rosetta/common_caselaw/Rosetta_catchwordgrp.dita">2015-01-07 - catchwordgrp id-CCCC-12023: Added note for Pacific Content (AU) to drop
              <sourcexml>nl</sourcexml> if occur within <sourcexml>catchwords/catchphrase</sourcexml>,
              Webteam # 282244, Applicable on AU01.</xref>
          </li>
        </ul></p>
    </section>
    
    <section>
      <title>Courtcase 9.10 PROD</title>
      <p>2014-09-12
      <ul>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_pnum-to-LexisAdvance_desig_ref.para.dita">2014-09-12 - pnum to desig/ref:para: Created, Applicable on AU01, AU13, NZ03, CA01 and CA04.</xref>
        </li>
      </ul></p>
    </section>
    
    <section>
      <title>Courtcase 9.9 PROD</title>
      <p>2014-09-01
        <ul>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_desig-LxAdv-desig_ref.para.dita">2014-08-29 - desig to desig/ref:para id-CCCC-10501: Updated instruction and example
              for handling <targetxml>desig/@value</targetxml> and it's mapped with
                <targetxml>desig@value/ref:para@num</targetxml> (means
                <targetxml>ref:para</targetxml> should be placed inside of
                <targetxml>desig</targetxml> markup).</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2014-08-21 - docinfo:assoc-links to doc:related-content id-CCCC-10284: Added instructions and an example for converting
              <sourcexml>lnlink[@service="ATTACHMENT"]</sourcexml> to
              <targetxml>ref:lnlink</targetxml>. Applicable on CA05-CA08.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_text-LxAdv-text.dita">2014-08-11 - text to text id-CCCC-10477: For CANADA Content Stream: Only move the
              <sourcexml> text@align</sourcexml> to the parent <targetxml>p</targetxml> if
              it is the only text in <sourcexml>p</sourcexml>, Otherwise, wrap the
              <sourcexml>text</sourcexml> with <targetxml>p</targetxml> and move the
              <sourcexml>@align</sourcexml> attribute to the newly created <targetxml>
                p</targetxml>.</xref>
          </li>
        </ul>
      </p>
    </section>
    <section>
      <title>Courtcase 9.8 PROD</title>
      <p>2014-08-04
      <ul>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_desig-LxAdv-desig_ref.para.dita">2014-08-04 - desig to desig and ref:para id-CCCC-10501: Updated instruction for <targetxml>@para-scheme</targetxml> and <targetxml>@para-scheme-type</targetxml> attribute.</xref>
        </li>
      </ul></p>
    </section>
    <section>
      <title>Courtcase 9.8 PROD</title>
      <p>2014-07-08
      <ul>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_AU_NZ_docinfo.assoc-links-LxAdv-additional-rule.dita">2014-07-08 - (AU-NZ) <sourcexml>docinfo:assoc-links</sourcexml> with linking and text children id-CCCC-10243: Added.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_table-LxAdv-table.dita">2014-07-08 - table to table id-CCCC-10475: Updated instruction for added the
            following rarely occurring attributes <sourcexml>@char</sourcexml> inside the <sourcexml>entry</sourcexml>.</xref>
        </li>
        <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2014-06-18 - docinfo:assoc-links to doc:related-content id-CCCC-10284: Corrected
              minor typos in <sourcexml>lnlink[@service="QUERYLINK"]</sourcexml>
              instructions.</xref>
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
      </ul></p>
    </section>
    <section>
      <title>Courtcase 9.7 PROD</title>
      <p>2014-06-18
      <ul>
        <li>
          <xref href="../../../Rosetta/DITA-PAC/AU01_CaseLaw/AU01_Rosetta_case.courtcite-LxAdv_ref.cite4thisresource.dita">2014-06-18 - case:courtcite id-AU01-18214: Updated target mapping and snippet, Webteam #: 236888.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2014-06-18 - docinfo:assoc-links to doc:related-content id-CCCC-10284: Corrected minor typos in <sourcexml>lnlink[@service="QUERYLINK"]</sourcexml> instructions.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2014-06-13 - docinfo:assoc-links to doc:related-content id-CCCC-10284: Added instructions and an example for converting
            <sourcexml>lnlink[@service="QUERYLINK"]</sourcexml> to
            <targetxml>ref:lnlink</targetxml>.</xref>
        </li>
      </ul></p>
    </section>
    <section>
      <title>Courtcase 9.7 PROD</title>
      <p>2014-06-03
      <ul>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_page-LxAdv-ref.page.dita">2014-06-03 - page to ref:page id-CCCC-10426: Added instruction and example to generate <targetxml>doc:pagination/doc:pagination-scheme</targetxml> in target and this immediately applies to all LNI streams.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2014-04-28 - docinfo:assoc-links to doc:related-content id-CCCC-10284: Clarified instructions regarding <sourcexml>link</sourcexml> elements and added an example (#4) illustrating the special <sourcexml>text/link</sourcexml> conversion. No mapping rules where changed or added.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2014-04-03 - docinfo:assoc-links to doc:related-content id-CCCC-10284: Illustrative changes. Examples modified. Mapping for
            <sourcexml>ci:cite</sourcexml> added to Example 3. Former Examples 4 and 5 removed to avoid
            confusion with special AU-NZ use case described in a separate module. R4.5 Content issue #1125,
            for AU-NZ, has prompted the changes for this general module.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2014-03-25 - docinfo:assoc-links to doc:related-content id-CCCC-10284: Added rule and example for
            <sourcexml>docinfo:assoc-links/docinfo:assoc-links-grp/ci:cite</sourcexml>. R4.5 Content issue
            #1125</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2014-02-25 - remotelink to ref:crossreference id-CCCC-10465: Updated instruction and created new example (#16) for handling <sourcexml>remotelink[@service="QUERY"]</sourcexml>. New instruction preserves pcdata but suppresses <sourcexml>remotelink</sourcexml> markup. Webstar #250335. Change applies immediately to all Pacific streams, and in the long run to all streams.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_Elements-LxAdv-Empty_Elements.dita">2014-01-16 - Suppress each empty element unless otherwise stated id-CCCC-10310: Added list of elements to suppress if empty.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_footnote-LxAdv-footnote.dita">2014-01-06 - footnotegrp and footnote to footnotegrp and footnote id-CCCC-10322: Updated target example for applying the rule
            of "deleting extraneous instances of @morerows, @colsep and @rowsep" in sample
            documents.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_l-LxAdv-list.dita">2014-01-06 - l to list id-CCCC-10372: Added mapping instruction for nested lists.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_Topic_Identifiers.dita">2014--0-5- - Topic Identifiers id-CCCC-10481: Created.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_glp.note_blockquote_p_text_inlineobject-LxAdv-note_bodytext_p_text.dita">2013-12-20 - glp:note id-CCCC-10341:  Corrected the target example (added ref:corssreference). WebTeam #5158742 - AU04. Applies generally to all LBUs and streams.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_endnote-LxAdv-endnote.dita">2013-12-18 - endnote to endnote id-CCCC-10317: Instruction added to convert <sourcexml>remotelink/@refpt</sourcexml> to <targetxml>footnote-ref/@anchoridref</targetxml>.  WebTeam #5158742 - AU04. Applies generally to all LBUs and streams.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.alt-renditions-LxAdv-doc.alt-renditions.dita">2013-12-17 - docinfo:alt-renditions/docinfo:alt-rendition to doc:alt-renditions/doc:alt-rendition id-CCCC-10283: Added instruction and example for <sourcexml>docinfo:alt-rendition/lnlink</sourcexml>. (Webteam #247307)</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_caselaw/Rosetta_catchwordgrp.dita">2013-12-13 - catchwordgrp id-CCCC-12023: Added instruction to drop punctuation occuring between catchwords and catchphrase Webteam# 247658</xref>
        </li>
      </ul></p>
    </section>
    
    <section>
      <title>Courtcase 9.5 PROD</title>
      <p>2013-11-12
      <ul>
        <li>
          <xref href="../../DITA-PAC/AU01_CaseLaw/AU01_Rosetta_case.courtinfo_abbrvname-LxAdv_caseinfo.shortcasename.dita">2013-11-12 - case:courtinfo/abbrvname: Added Instruction and example when <sourcexml>emph</sourcexml> is a child of <sourcexml>abbrvname</sourcexml>. Webstar #: 5093906. This change immediately applies to AU01 Caselaw.</xref>
        </li>
        <li>
          <xref href="../../DITA-PAC/AU01_CaseLaw/AU01_Rosetta_case.appendix-LxAdv_attachments_appendix.dita">2013-11-12 - case:appendix: Added Instruction and example when <sourcexml>sigblock</sourcexml> is a child of <sourcexml>case:appendix</sourcexml>: Webstar #: 5093906. This change immediately applies to AU01 Caselaw.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_AU-Caselaw_legfragment-leg.level-leg.level-vrnt_leg.heading_legempleg_LxAdv-primlaw.excerpt_primlaw.level_primlaw.authority_primlaw.authority-item_bodytext_textitem.dita">2013-11-12 - (AU Caselaw) legfragment/leg:level/leg:level-vrnt/leg:heading/leg:empleg to primlaw:excerpt/primlaw:level/primlaw:authority/primlaw:authority-item/bodytext/textitemt: Created. Webstar #: 5093906. This change immediately applies to AU01 Caselaw.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_AU_NZ_caselaw_toc-LxAdv-toc.dita">2013-11-12 - toc to toc: Added Instruction and example when <sourcexml>toc-entry</sourcexml> is having child <sourcexml>entry-pageref</sourcexml>. Webstar #: 5093906. This change immediately applies to AU01 Caselaw.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_AU_NZ_copyright-LxAdv-copyright.dita">2013-11-12 - (AU/NZ) copyright to copyright: Added example for AU Cases. Webstar #: 5093906. This change immediately applies to AU01 Caselaw.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_docinfo.currencystatement-LxAdv-currencystatement.dita">2013-10-29 - docinfo:currencystatement to doc:docinfo/currencystatement: WebTeam #233318 created for pacific content stream inorder to suppress <sourcexml>docinfo:currencystatement</sourcexml> with in <sourcexml>leg:levelinfo</sourcexml> and <sourcexml>levelinfo</sourcexml>.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_docinfo.overview-LxAdv-docinfo.overview.dita">2013-10-29 - docinfo:overview to doc:overview: WebTeam #233318 created for pacific content stream inorder to suppress <sourcexml>docinfo:overview</sourcexml> with in <sourcexml>leg:levelinfo</sourcexml> and <sourcexml>levelinfo</sourcexml>.</xref>
        </li>
      </ul></p>
    </section>
    <section>
      <title>Courtcase 9.4 PROD</title>
      <p>2013-10-22
        <ul>
        <li>
          <xref href="../../common_newest/Rosetta_AU-Caselaw_p-blockquote-p-blockquote-legfragment-leg.level-LxAdv-p_blockquote_p_blockquote_primlaw.excerpt_primlaw.level.dita">2013-10-22 - (AU Caselaw) p/blockquote/p/blockquote/legfragment/leg:level to p/blockquote/p/blockquote/primlaw:excerpt: Created and webstar # is 5070931.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_Elements-LxAdv-Empty_Elements.dita">2013-10-14 - Suppress each empty element unless otherwise stated: Changed antecedent to singular to match instructions.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_docinfo.authorattribution-LxAdv-dc.contributor.dita">2013-10-11 - docinfo:authorattribution to dc:contributor: Instruction added when <sourcexml>remotelink</sourcexml> as a child of <sourcexml>docinfo:authorattribution/contrib</sourcexml>. WebTeam # is 240252.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_refpt-Chof-p_text-LxAdv-p_ref.anchor.dita">2013-10-11 - refpt child of p/text to p/ref:anchor: Added a note and update the target examples when refpt
            comes without attribute <sourcexml>[@type="ext"]</sourcexml> and
            <sourcexml>[@type="local"]</sourcexml> in source documents.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_p-LxAdv-p.dita">2013-10-09 - p to p: Added instruction and example <sourcexml>p</sourcexml> comes with <sourcexml>@nl=”0”</sourcexml>.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_docinfo.authorattribution-LxAdv-dc.contributor.dita">2013-10-08 - docinfo:authorattribution to dc:contributor: Instruction added for handling
            <sourcexml>docinfo:authorattribution</sourcexml> when it is having a running
            text. Affects all Pacific content streams. WebTeam # is 238798.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_endnote-LxAdv-endnote.dita">2013-10-07 - endnote to endnote: Instruction and example for added for the Xpath <sourcexml>leg:bodytext/glp:note/l/li</sourcexml> related to <targetxml>endnote</targetxml> handling. WebTeam # is 238790.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-10-03 - remotelink to ref:crossreference: Added use case where remotelink contains @href which is a URL but does not contain @hrefclass='http'.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_footnote-LxAdv-footnote.dita">2013-10-02 - footnotegrp and footnote to footnotegrp and footnote: Not a rule change. Cleaned up the note regarding
            the scenario when footnote/@fntoken has a value of "0" in an attempt to make the directions clearer.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_link-LxAdv-ref.lnlink.dita">2013-09-24 - link to ref:lnlink/@service="ATTACHMENT": Not a rule change. Modified examples to illustrate when <sourcexml>@status</sourcexml> suppressed and when retained.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_docinfo.authorattribution-LxAdv-dc.contributor.dita">2013-09-16 - docinfo:authorattribution to dc:contributor: Instruction added for suppressing
            <sourcexml>docinfo:authorattribution/contrib</sourcexml> when it is child of
            <sourcexml>leg:levelinfo</sourcexml> and
            <sourcexml>levelinfo</sourcexml>.Affects all Pacific content streams. WebTeam #
            is 234193.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_docinfo.currencystatement-LxAdv-currencystatement.dita">2013-09-16 - docinfo:currencystatement to doc:docinfo/currencystatement: Instruction added for suppressing <sourcexml>docinfo:currencystatement</sourcexml> when it is child of <sourcexml>leg:levelinfo</sourcexml> and 
            <sourcexml>levelinfo</sourcexml>.Affects all Pacific content streams. WebTeam # is 234193.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_docinfo.overview-LxAdv-docinfo.overview.dita">2013-09-16 - docinfo:overview to doc:overview: Instruction added for suppressing <sourcexml>docinfo:overview</sourcexml> when it is child of <sourcexml>leg:levelinfo</sourcexml> and 
            <sourcexml>levelinfo</sourcexml>.Affects all Pacific content streams. WebTeam # is 234193.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_table-LxAdv-table.dita">2013-09-16 - table to table: Removed an obsolete note regarding visual styling of tables.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_table-LxAdv-table.dita">2013-09-12 - table to table: WebTeam #s 235116, 235130, 235126: Added instructions for deleting extraneous instances of @morerows, @colsep and @rowsep. These instructions apply immediately to all UK streams and also to AU18.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_text-When_Contains_Only_Wihitespace_Or_NBSP_Entity.dita">2013-08-29 - Converting text When it Contains Only Whitespace or NBSP Entity: Created per WebStar: WebTeam #223114</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_desiglabel-Chof-desig-LxAdv-desig.dita">2013-08-23 - desig/desiglabel to desig: Removed <targetxml>@value</targetxml> from
            target example element <targetxml>desig</targetxml>, as it was decided, that if
            source element doesn't contain <sourcexml>@value</sourcexml> then target element
            <targetxml>desig</targetxml> will not contain
            <targetxml>@value</targetxml>.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_footnote-LxAdv-footnote.dita">2013-08-22 - footnotegrp and footnote to footnotegrp and footnote: Not a rule change. Second target sample modified to
            remove attribute <targetxml>lnci:cite[@citeref]</targetxml> because value captured in
            descendant <targetxml>ref:crossreference/ref:locator[@anchoridref]</targetxml>.
            Ancillary/illustrative within this module. Change made to promote uniformity across
            samples.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_glp.note-Chof-level_heading-LxAdv-seclaw.level_seclaw.prelim_note.dita">2013-08-22 - level/heading/glp:note to seclaw:level/seclaw:prelim/note: Not a rule change. Target sample
            modified to remove attribute <targetxml>lnci:cite[@citeref]</targetxml> because
            value captured in descendant
            <targetxml>ref:crossreference/ref:locator[@anchoridref]</targetxml>.
            Ancillary/illustrative within this module. Change made to promote uniformity
            across samples.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-08-22 - remotelink to ref:crossreference: Not a rule change. Modified Sample #10 on
            <sourcexml>ci:cite/ci:content/remotelink</sourcexml>. Removed target attribute
            <targetxml>lnci:cite[@citeref]</targetxml> because value captured in
            <targetxml>ref:crossreference/ref:locator[@anchoridref]</targetxml>.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_link-LxAdv-ref.lnlink.dita">2013-08-21 - link to ref:lnlink/@service="ATTACHMENT": Added instruction for when to suppress <sourcexml>@status</sourcexml>.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_remotelink-self-inter-document-link-LxAdv-intra-document-link.dita">2013-08-12 - remotelink (self inter-document link) to ref:lnlink (intra-document link): Changed module heading from ref:crossreference to ref:lnlink.  NO
            instructions are changed.  WebTeam # 230229. Affects all streams.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_docinfo-LxAdv-doc.metadata_doc.docinfo.dita">2013-08-09 - docinfo to doc:metadata/doc:docinfo: Added instruction for creating
            <targetxml>dc:date[@lnmeta:datetype="conversion-date"]</targetxml>.
            Previously, "conversion-date" was created only if "load-date" was not present.
            Going forward, conversion should always create "conversion-date". This is not a
            retroactive change. It should be applied only to streams developed after Aug. 9
            2013.</xref>
        </li>
        </ul>
      </p>
    </section>
    
    <section>
      <title>Courtcase 9.1 PROD</title>
      <p>2013-08-09<ul>
          <li>
            <xref href="../../common_newest/Rosetta_XML_Character_Entities-LxAdv-Unicode.dita">2013-08-08 - XML Character Entities to Unicode code points: This change does not
              represent a change to conversion but rather documentation of the existing
              behavior.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_remotelink-self-inter-document-link-LxAdv-intra-document-link.dita">2013-08-07 - remotelink (self inter-document link) to ref:crossreference
              (intra-document link): Changed target to <targetxml>ref:lnlink</targetxml>; formerly
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
            <xref href="../../common_newest/Rosetta_identifier-LxAdv-ID_data_type-HandlingPatternRestrictions.dita">2013-07-17 - Identifiers to ID Data Type - Handling Pattern Restrictions: Added
              instructions for handling leading/trailing space(s) and XML entities.</xref>
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
            <xref href="../../common_newest/Rosetta_identifier-LxAdv-ID_data_type-HandlingPatternRestrictions.dita">2013-07-10 - Identifiers to ID Data Type - Handling Pattern Restrictions: Added
              instruction to replace space with underscore.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_title-LxAdv-title.dita">2013-07-05 - title to
              title: Added Instruction when <sourcexml>title</sourcexml> contains word "TITLE:
              ".</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_docinfo.authorattribution-LxAdv-dc.contributor.dita">2013-06-25 - docinfo:authorattribution to dc:contributor: added to AU and NZ ditamap
              for content enrichment</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_docinfo.currencystatement-LxAdv-currencystatement.dita">2013-06-25 - docinfo:currencystatement to doc:docinfo/currencystatement: added to AU
              and NZ ditamap for content enrichment</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_docinfo.overview-LxAdv-docinfo.overview.dita">2013-06-25 - docinfo:overview to doc:overview: added to AU and NZ ditamap for content
              enrichment</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_copyright-LxAdv-copyright.dita">2013-06-17 -
              copyright to copyright: Added an example when <sourcexml>copyright-holder</sourcexml>
              is not present in the source.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_docinfo.lbu-meta-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta-scheme.dita">2013-05-31 - docinfo:lbu-meta to doc:legacy-metadata[@metadatasource="lbu-meta"]:
              Added "document-type" to the list of values in docinfo:metaitem/@name that should be
              retained.</xref>
          </li>
        </ul></p>
    </section>
    <section>
      <title>Courtcase 8.3 PROD</title>
      <p>2013-05-30<ul>
          <li>
            <xref href="../../DITA-PAC/AU01_CaseLaw/AU01_Rosetta_case.courtcite-LxAdv_ref.cite4thisresource.dita">2013-05-30 -
              case:courtcite: Added direction to create textitem inside caseinfo:courtcite (already
              reflected in example). Updated example so that ci:cite is no longer dropped as part of
              mapping.</xref>
          </li>
        </ul></p>
    </section>
    <section>
      <title>Courtcase 8.3 PROD</title>
      <p>2013-05-29<ul>
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
        </ul></p>
    </section>
    <section>
      <title>Courtcase 8.3 PROD</title>
      <p>2013-05-17<ul>
          <li>
            <xref href="../../common_newest/Rosetta_docinfo-LxAdv-doc.metadata_doc.docinfo.dita">2013-05-16 - docinfo to doc:metadata/doc:docinfo: Fixed typo updating urn:contentitem
              to urn:contentItem</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_leg.comntry-LxAdv-annot.annotations-annot.annotation-grp.dita">2013-05-15 - leg:comntry to annot:annotations/annot:annotation-grp: Fixed typo:
              (extra semicolon in xpath expression)</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_AU_NZ_caselaw_toc-LxAdv-toc.dita">2013-05-10 -
              toc to toc: Removed the directions to set toc-ref/@type to "paragraph" in the
              directions specific to NZ03 caselaw. Expanded the NZ03-specific directions to cover
              AU01.</xref>
          </li>
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
          <li>2013-05-08 - glp:note/inlineobject to: Extended the list of allowable values for
              image handling.</li>
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
          <li>2013-05-02 - case:judgments: Updated target example to reflect changes per latest
            Apollo markup.</li>
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
            <xref href="../../common_newest/Rosetta_p-limited_remotelink-LxAdv-p_text_ref.lnlink.dita">2013-04-30 - p-limited/emph to p/text/emph: Updated target sample according to latest
              Apollo markup.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-04-30 - remotelink to ref:crossreference: Updated target sample according to
              latest Apollo markup.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_AU_NZ_caselaw_toc-LxAdv-toc.dita">2013-04-30 -
              toc to toc: Created new version of instructions for <sourcexml>toc</sourcexml> with
              directions specific to NZ03 caselaw.</xref>
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
            <xref href="../../common_newest/Rosetta_docinfo.custom-metafields-LxAdv-SUPPRESS.dita">2013-04-16 - docinfo:custom-metafields is SUPPRESSED: Updated the instruction of
              handling <sourcexml>docinfo:custom-metafield[@name="JURIS-SORT"]</sourcexml>,
                <sourcexml>docinfo:custom-metafield[@name="COURT-SORT"]</sourcexml>, and
                <sourcexml>docinfo:custom-metafield[@name="TERM-SORT"]</sourcexml> markup in CA
              Dictionary content stream.</xref>
          </li>
        </ul></p>
    </section>
    <section>
      <title>Courtcase 7.14 PROD</title>
      <p>2013-04-12 <ul>
          <li>2013-04-12 - Content Enrichment Updates</li>
          <li>
            <xref href="../../common_newest/Rosetta_levelinfo_classification-LxAdv-SUPPRESS.dita">2013-04-12 - levelinfo/classification @ln.user-displayed="false"/classitem
              @ln.user-displayed="false"/classitem-identifier/classname is SUPPRESSED: Temporary
              Note on Suppression inserted from Andrew Martin</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_docinfo.authorattribution-LxAdv-dc.contributor.dita">2013-04-10 - docinfo:authorattribution to dc:contributor: Created</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_docinfo.overview-LxAdv-docinfo.overview.dita">2013-04-10 - docinfo:overview to doc:overview: Created</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-04-10 - remotelink to ref:crossreference: Added Source XML 7a: for link to URL,
              with non-URL text content because it was previously missing, only the target example
              was here.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_docinfo.currencystatement-LxAdv-currencystatement.dita">2013-04-09 - docinfo:currencystatement to doc:docinfo/currencystatement:
              Created</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_docinfo.lbu-meta-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta-scheme.dita">2013-04-09 - docinfo:lbu-meta to doc:legacy-metadata[@metadatasource="lbu-meta"]:
              Added the instruction for handling
                <sourcexml>docinfo:metaitem[@name="QLDB"]</sourcexml>.</xref>
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
          <li>
            <xref href="../../common_newest/Rosetta_docinfo.custom-metafields-LxAdv-SUPPRESS.dita">2013-03-20 - docinfo:custom-metafields is SUPPRESSED: Updated the instruction of
              handling <sourcexml>docinfo:custom-metafield[@name="dpsi"]</sourcexml> markup in CA
              content stream.</xref>
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
            <xref href="../../common_newest/Rosetta_p-limited_remotelink-LxAdv-p_text_ref.lnlink.dita">2013-02-18 - p-limited/emph to p/text/emph: Created two sections, one for "Release
              4.0 and after" and another for "Pre-Release 4.0".</xref>
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
            <xref href="../../common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2013-01-22 -
              ci.cite to lnci.cite: Instruction modified for the scenario
                <sourcexml>ci:cite/ci:content/remotelink</sourcexml> to indicate that the
                <sourcexml>ci:cite</sourcexml> and <sourcexml>ci:content</sourcexml> start-tags and
              end-tags (but not their content) are dropped.</xref>
          </li>
        </ul>
      </p>
    </section>
    <section>
      <p>2013-01-09<ul>
          <li>case:dates and case:judgments section: Instructions have been updated with directions
            for populating the attribute
            <targetxml>decision:decisiondate/@normdate</targetxml>.</li>
        </ul></p>
    </section>
    <section>
      <title>Courtcase 7.8 PROD</title>
      <p>2012-11-02<ul>
          <li>Added general markup instructions for mapping <sourcexml>text/glp:note</sourcexml> and
              <sourcexml>emph/glp:note</sourcexml>.</li>
        </ul></p>
      <p>2012-11-01<ul>
          <li>Added the section "Mapping to ID Data Type"</li>
          <li>Added rules for <targetxml>ref:returnreference</targetxml> in the footnote
            instructions.</li>
        </ul></p>
    </section>
    <section>
      <title>Courtcase 7.6 PROD</title>
      <p>2012-09-26<ul>
          <li>Added general markup instruction for mapping <sourcexml>blockquote/p/pnum</sourcexml>
            to <targetxml>blockquote/p/desig[@inline=”true”]</targetxml></li>
        </ul></p>
    </section>
    <section>
      <title>Courtcase 7.2 PROD</title>
      <p>2012-08-29<ul>
          <li>Added instructions for handling <sourcexml>footnotegrp</sourcexml> when it is a child
            of the following elements: <sourcexml>case:judgments</sourcexml>,
              <sourcexml>case:judgmentbody</sourcexml>, <sourcexml>case:headnote</sourcexml>,
              <sourcexml>case:decisionsummary</sourcexml>, <sourcexml>case:factsummary</sourcexml>,
              <sourcexml>case:references</sourcexml>, <sourcexml>case:typeofcase</sourcexml>,
              <sourcexml>p</sourcexml>, <sourcexml>glp:note</sourcexml>,
              <sourcexml>blockquote</sourcexml>, <sourcexml>li</sourcexml>,
              <sourcexml>catchwordgrp</sourcexml></li>
          <li>Added instructions to suppress <sourcexml>nl</sourcexml> elements in
              <sourcexml>case:judges</sourcexml>.</li>
          <li>Updated the instructions for <sourcexml>case:reportercite</sourcexml> with directions
            for creating additional markup when <sourcexml>case:reportercite/searchtype</sourcexml>
            has a value of "BCNUM".</li>
        </ul></p>
    </section>
    <section>
      <title>Courtcase 7.1 PROD</title>
      <p>2012-08-20<ul>
          <li>Errors in the general markup instructions for footnote and footnotegrp have been
            corrected.</li>
        </ul></p>
    </section>
    <section>
      <title>Courtcase 7.0 PROD</title>
      <p>2012-08-09<ul>
          <li>The general markup instructions for footnote and footnotegrp have been updated.</li>
        </ul></p>
    </section>
    <section>
      <title>Courtcase 6.12 PROD</title>
      <p>2012-08-07<ul>
          <li>num &amp; frac section: Instructions added for handling of
              <sourcexml>emph/frac</sourcexml>.</li>
          <li>Addded a new section for the handling of <sourcexml>credit</sourcexml> element.</li>
        </ul></p>
    </section>
    <section>
      <title>Courtcase 6.9 PROD</title>
      <p>2012-06-15<ul>
          <li>Removed the sample mapping for the scenario of <sourcexml>footnote</sourcexml> without
            a corresponding <sourcexml>fnr</sourcexml> in the general markup instructions for
              <sourcexml>footnote</sourcexml>. The instructions for this scenario had previously
            been removed, the but the example was left behind.</li>
        </ul></p>
    </section>
    <section>
      <title>Courtcase 6.9 PROD</title>
      <p>2012-06-14<ul>
          <li>Modified the text for the note about not creating consecutive
              <targetxml>casesum:summaries</targetxml> elements in the instructions for mapping the
            following elements: <ul>
              <li><sourcexml>case:consideredcases</sourcexml></li>
              <li><sourcexml>case:decisionsummary</sourcexml></li>
              <li><sourcexml>case:disposition</sourcexml></li>
              <li><sourcexml>case:factsummary</sourcexml></li>
              <li><sourcexml>case:typeofcase</sourcexml></li>
            </ul></li>
          <li>Modified the text for the note about not creating consecutive
              <targetxml>caseinfo:caseinfo</targetxml> elements in the instructions for mapping the
            following elements: <ul>
              <li><sourcexml>case:altname</sourcexml></li>
              <li><sourcexml>case:courtinfo</sourcexml></li>
              <li><sourcexml>case:courtloc</sourcexml></li>
              <li><sourcexml>case:dates</sourcexml></li>
              <li><sourcexml>case:info</sourcexml></li>
              <li><sourcexml>case:info/case:filenum</sourcexml></li>
              <li><sourcexml>case:judges</sourcexml></li>
              <li><sourcexml>case:reportercite</sourcexml></li>
              <li><sourcexml>catchwordgrp</sourcexml></li>
            </ul></li>
        </ul></p>
    </section>
    <section>
      <title>Courtcase 6.9 PROD</title>
      <p>2012-06-08<ul>
          <li>Modified note for <sourcexml>case:factsummary</sourcexml> and
              <sourcexml>case:info</sourcexml>.</li>
          <li>Updated the general markup instructions for <sourcexml>toc</sourcexml> with directions
            to map <sourcexml>toc/page</sourcexml> to <targetxml>toc/toc-entry/ref:page</targetxml>
            when <sourcexml>page</sourcexml> has a following sibling
              <sourcexml>toc-entry</sourcexml>.</li>
        </ul></p>
    </section>
    <section>
      <title>Courtcase 6.9 PROD</title>
      <p>2012-05-30<ul>
          <li>Added a note for handling of <sourcexml>case:content/case:appendix</sourcexml>.</li>
          <li>Added a note about not creating consecutive <targetxml>casesum:summaries</targetxml>
            elements to the instructions for mapping the following elements: <ul>
              <li><sourcexml>case:consideredcases</sourcexml></li>
              <li><sourcexml>case:decisionsummary</sourcexml></li>
              <li><sourcexml>case:disposition</sourcexml></li>
              <li><sourcexml>case:factsummary</sourcexml></li>
              <li><sourcexml>case:typeofcase</sourcexml></li>
            </ul></li>
          <li>Added a note about not creating consecutive <targetxml>caseinfo:caseinfo</targetxml>
            elements to the instructions for mapping the following elements: <ul>
              <li><sourcexml>case:altname</sourcexml></li>
              <li><sourcexml>case:courtinfo</sourcexml></li>
              <li><sourcexml>case:courtloc</sourcexml></li>
              <li><sourcexml>case:dates</sourcexml></li>
              <li><sourcexml>case:info</sourcexml></li>
              <li><sourcexml>case:info/case:filenum</sourcexml></li>
              <li><sourcexml>case:judges</sourcexml></li>
              <li><sourcexml>case:reportercite</sourcexml></li>
              <li><sourcexml>catchwordgrp</sourcexml></li>
            </ul></li>
        </ul></p>
    </section>
    <section>
      <title>Courtcase 6.8 PROD</title>
      <p>2012-05-22<ul>
          <li>Updated instructions for handling <sourcexml>footnotegrp/footnote</sourcexml> when it
            occurs without a corresponding <sourcexml>fnr</sourcexml>.</li>
          <li>Added instructions for handling empty <sourcexml>fnr</sourcexml>.</li>
          <li>Added instructions for handling <sourcexml>li/page</sourcexml>.</li>
          <li>Added note that the value of <targetxml>footnote/@xml:id</targetxml> should be
            prefixed with the lower case country code followed by an underscore.</li>
        </ul></p>
      <p>2012-05-11<ul>
          <li>ln.user_displayed="false" section - Redefined the rule for handling of
              <sourcexml>case:decisiondate</sourcexml>, <sourcexml>case:disposition</sourcexml>,
              <sourcexml>case:judges</sourcexml>, <sourcexml>case:reportercite</sourcexml>,
              <sourcexml>edpnum</sourcexml>, <sourcexml>heading</sourcexml>,
              <sourcexml>leg:heading</sourcexml>, <sourcexml>leg:juris</sourcexml>,
              <sourcexml>leg:levelstatus</sourcexml>, <sourcexml>leg:officialname</sourcexml>,
              <sourcexml>leg:officialnum</sourcexml> and <sourcexml>leg:year</sourcexml>.</li>
        </ul></p>
    </section>
    <section>
      <title>Courtcase 6.7 PROD</title>
      <p>2012-05-04<ul>
          <li>Added a note for handling of <sourcexml>case:body/heading</sourcexml>.</li>
          <li>Updated instructions for <sourcexml>blockquote</sourcexml> and
              <sourcexml>footnote</sourcexml> section.</li>
          <li>docinfo section - Made doc:sourcedocinfo optional child</li>
          <li>blockquote section - Added instruction for handling of "2" or more consecutive
            blockquote siblings.</li>
          <li>footnote section - Updated the instruction and example for handling - fnr appears
            without footnote.</li>
          <li>Added instructions for handling of <sourcexml>case:embeddedcase/@id</sourcexml>.</li>
          <li>Updated example for <sourcexml>case:appendix</sourcexml>.</li>
          <li>form-char section - Added instructions and example for handling of
              <sourcexml>@num-char</sourcexml> value that doesn't fall in the specified list.</li>
        </ul></p>
    </section>
    <section>
      <title>Courtcase 6.7 PROD</title>
      <p>2012-05-02<ul>
          <li>Added a note for <sourcexml>case:juris</sourcexml> and
              <sourcexml>case:courtcode</sourcexml>.</li>
          <li>Updated instructions for <sourcexml>case:appendix</sourcexml>.</li>
          <li>Updated instructions for <sourcexml>case:disposition</sourcexml>.</li>
          <li>Updated instructions for <sourcexml>case:author</sourcexml>.</li>
          <li>Updated instructions for <sourcexml>case:order</sourcexml>.</li>
          <li>Added <targetxml>attachments</targetxml> under
            <targetxml>courtcase:body</targetxml>.</li>
          <li>Added <targetxml>casesum:disposition</targetxml> as a child of
              <targetxml>courtcase:opinions</targetxml>.</li>
          <li>Made <targetxml>bodytext</targetxml> optional for <targetxml>note</targetxml>.</li>
          <li>Made <targetxml>doc:sourcedocinfo</targetxml> optional.</li>
          <li>Added attributes <targetxml>@includeintoc and @alternatetoccaption</targetxml> under
              <targetxml>courtcase:order</targetxml>.</li>
          <li>Added optional, repeatable reference to <targetxml>ref:anchor</targetxml> within
              <targetxml>casesum:editorialsummary, casesum:decisionsummary, casesum:courtsummary,
              casesum:disposition, casesum:headnote-grp, casesum:summaries and
              primlaw:prelim</targetxml>.</li>
        </ul></p>
    </section>
    <section>
      <title>Courtcase 6.6 PROD</title>
      <p>2012-04-20<ul>
          <li>Changed the mapping for <sourcexml>case:courtcode</sourcexml>.</li>
          <li>Added <targetxml>lndocmeta:version</targetxml> optionally to content model of
              <targetxml>lndocmeta:docinfo</targetxml></li>
          <li>Added <targetxml>ref:anchor</targetxml> as a child of <targetxml>courtcase:opinions,
              courtcase:opinion and courtcase:order</targetxml>.</li>
          <li>Added instruction for handling of content for <sourcexml>case:judges</sourcexml>.</li>
          <li>Added instruction for handling of
            <sourcexml>case:judgment/@searchtype</sourcexml>.</li>
        </ul></p>
    </section>
    <section>
      <title>Courtcase 6.5 PROD</title>
      <p>2012-04-16<ul>
          <li>Changed the Xpth for <sourcexml>case:decisionsummary</sourcexml> and
              <sourcexml>case:factsummary</sourcexml>.</li>
          <li>Added instructions under catchwordgrp section.</li>
          <li>Added instructions for handling of <targetxml>person:judge</targetxml>.</li>
          <li>Added instructions for handling of <sourcexml>case:disposition</sourcexml>.</li>
          <li>Allowed <targetxml>ref:page</targetxml> to occur before or after
              <targetxml>heading</targetxml> under <targetxml>pgrp</targetxml>.</li>
          <li>Allowed <targetxml>courtcase:prelim</targetxml> to occur within the zeroOrMore choice
            in <targetxml>courtcase:head</targetxml>.</li>
          <li>Added <targetxml>courtcase:representation</targetxml> as a child of
              <targetxml>courtcase:opinions</targetxml>.</li>
          <li>Allowed <targetxml>ref:page</targetxml> an optional child of
              <targetxml>courtcase:orders</targetxml>.</li>
          <li>Allowed <targetxml>ref:page</targetxml> to occur before <targetxml>heading</targetxml>
            under <targetxml>courtcase:representation</targetxml> and
              <targetxml>casesum:overview</targetxml>.</li>
          <li>Added optional <targetxml>@role</targetxml> attribute with possible values of
              <targetxml>"image", "character", "logo", or "thumbnail"</targetxml>.</li>
          <li>Loosen the existing content model of <targetxml>primlaw:level</targetxml> to be one
            "or" group.</li>
        </ul></p>
    </section>
    <section>
      <title>Courtcase 6.4 PROD</title>
      <p>2012-04-05<ul>
          <li>Added: <targetxml>casesum:summaries</targetxml> and <targetxml>note</targetxml> to the
            content model of <targetxml>courtcase:body</targetxml>.</li>
          <li>Update: Made <targetxml>@summarysource</targetxml> as optional attribute for
              <targetxml>casesum:editorialsummary</targetxml>,
              <targetxml>casesum:decisionsummary</targetxml> and
              <targetxml>casesum:courtsummary</targetxml>.</li>
        </ul></p>
    </section>
    <section>
      <title>Courtcase 6.2 PROD</title>
      <p>2012-03-29<ul>
          <li>Updated the instructions for handling of <sourcexml>case:juris</sourcexml> and
              <sourcexml>case:courtcode</sourcexml>.</li>
          <li>Modified the Xpath for <sourcexml>case:citations</sourcexml> and
              <sourcexml>case:references</sourcexml>.</li>
          <li>Updated the example to capture value of attribute <targetxml>@unit</targetxml> for
              <targetxml>doc:doclength</targetxml>.</li>
          <li>Updated the mapping and example for <sourcexml>case:constituents/p</sourcexml>.</li>
        </ul></p>
    </section>
    <section>
      <title>Courtcase 6.1 PROD</title>
      <p>2012-03-14<ul>
          <li>Updated the instructions for handling of text between catchphrases.</li>
          <li>Updated the instructions for handling of colon before case:judges.</li>
          <li>Added a note for handling of <targetxml>courtcase:representation</targetxml>.</li>
          <li>Updated the mapping for <sourcexml>case:consideredcases</sourcexml>.</li>
          <li>Added a note for handling of child elements
              <sourcexml>case:decisionsummary</sourcexml>.</li>
          <li>Added instructions and example for handling of <sourcexml>case:juris</sourcexml>.</li>
          <li>Changed the content model for <targetxml>courtcase:opinions</targetxml> and
              <targetxml>courtcase:opinion</targetxml>.</li>
          <li>Added: <targetxml>ref:page</targetxml> to the content model of
              <targetxml>list</targetxml>.</li>
          <li>Added: <targetxml>casesum:disposition</targetxml> to the content model of
              <targetxml>courtcase:body</targetxml>.</li>
          <li><b>form-chars Section</b>: Added instructions and example for handling of
              <sourcexml>form-chars/@character="line"</sourcexml> and
              <sourcexml>form-chars/@character="blank"</sourcexml>.</li>
        </ul></p>
    </section>
    <section>
      <title>Courtcase 5.3 PROD</title>
      <p>2012-02-28<ul>
          <li>Added a note for handling of colon( ; ) if it is preceding
              <sourcexml>case:judges</sourcexml> in NSWLR cases.</li>
          <li>Added a note for handling of
              <sourcexml>case:judges/emph/@typestyle="smcaps"</sourcexml>.</li>
          <li>Added: <targetxml>ref:relatedrefs</targetxml> to the content model of
              <targetxml>bodytext</targetxml>.</li>
          <li><b>Headnote Section</b>: Added instructions for handling of
              <sourcexml>case:consideredcases</sourcexml> when have paragraphs before or after.</li>
          <li><b>ci:cite Section</b>: Added instructions for handling of
              <sourcexml>ci:content/link</sourcexml> when <sourcexml>link</sourcexml> is used as
            intra-document linking.</li>
        </ul></p>
    </section>
    <section>
      <title>Courtcase 5.2 PROD</title>
      <p>2012-02-15<ul>
          <li>Updated: example for <sourcexml>blockquote/case:embeddedcase</sourcexml>.</li>
          <li>Added: <targetxml>proc:nl</targetxml> to the content model of
              <targetxml>title</targetxml>.</li>
          <li>Added: <targetxml>ref:anchor</targetxml> to the content model of
              <targetxml>listitem</targetxml>.</li>
          <li>Added: attributes <targetxml>@includeintoc</targetxml> and
              <targetxml>@alternatetoccaption</targetxml> to elements
              <targetxml>courtcase:opinions</targetxml>, <targetxml>courtcase:opinion</targetxml>,
              <targetxml>casesum:summaries</targetxml>,
              <targetxml>casesum:decisionsummary</targetxml>,
              <targetxml>casesum:disposition</targetxml>,
              <targetxml>casesum:editorialsummary</targetxml>, <targetxml>ref:page</targetxml>.</li>
        </ul></p>
    </section>
    <section>
      <title>Courtcase 5.1 PROD</title>
      <p>2012-02-7<ul>
          <li>Added a note for handling of
              <sourcexml>case:judgments/case:dates/case:decisiondate</sourcexml>.</li>
          <li>Added a instructions for handling of punctuations and text within
              <sourcexml>case:courtinfo</sourcexml>.</li>
          <li>Updated a note for handling of newlines within
            <sourcexml>case:courtinfo</sourcexml>.</li>
          <li>Added a note and example for handling of <sourcexml>case:info/h</sourcexml>.</li>
          <li>Added a note for handling of multiple <targetxml>p</targetxml> elements within
              <targetxml>ref:relatedrefs</targetxml>.</li>
          <li>Added a note and example for handling of
              <sourcexml>case:judgments/case:dates/case:decisiondate</sourcexml>.</li>
          <li>Added a note for handling of <sourcexml>case:content/page</sourcexml>.</li>
          <li>Added a note for handling of <sourcexml>case:headnote/heading</sourcexml>.</li>
          <li>Added a note for handling of <sourcexml>case:info/h</sourcexml>.</li>
          <li>Added instructions for handling of
              <sourcexml>case:decisiondate/@ln.user-displayed="false"</sourcexml>.</li>
          <li>Added a note to create empty hierarchy of <targetxml>bodytext</targetxml> within
              <targetxml>note</targetxml> element.</li>
          <li>Added: <targetxml>heading</targetxml> to the content model of
              <targetxml>caseinfo:caseinfo</targetxml>.</li>
          <li>Added: <targetxml>figure</targetxml> to the content model of
            <targetxml>p</targetxml>.</li>
          <li>Added: <targetxml>proc:nl</targetxml> to the content model of
              <targetxml>decision:argueddate</targetxml>, <targetxml>lnci:span</targetxml> and
              <targetxml>lnci:content</targetxml>.</li>
        </ul></p>
    </section>
    <section>
      <title>Courtcase 5.0 PROD</title>
      <p>2012-02-2<ul>
          <li>Added a note for handling of <sourcexml>case:content/case:appendix</sourcexml> and
            updated the example too.</li>
          <li>Added a note for <sourcexml>case:judges</sourcexml>.</li>
          <li>Added a note for handling of <sourcexml>case:length</sourcexml> within
              <sourcexml>case:embeddedcase</sourcexml>.</li>
          <li>Added: <targetxml>courtcase:head</targetxml> and
            <targetxml>courtcase:body</targetxml>to the content model of
              <targetxml>courtcase:caseexcerpt</targetxml>.</li>
          <li>Removed note and example from instructions regarding handling of
              <sourcexml>case:embeddedcase/case:headnote/catchwordgrp/catchwords</sourcexml>
            Xpath.</li>
          <li>Added: <targetxml>ref:page</targetxml> to the content model of
              <targetxml>courtcase:body</targetxml>.</li>
          <li>Added: <targetxml>ref:page</targetxml> to the content model of
              <targetxml>toc</targetxml> and <targetxml>toc-entry</targetxml>.</li>
          <li>Changed: content model of <targetxml>casesum:overview</targetxml> to make
              <targetxml>p</targetxml> and <targetxml>bodytext</targetxml> as optional child
            elements.</li>
          <li>Added: <targetxml>h</targetxml>, <targetxml>pgrp</targetxml> and
              <targetxml>table</targetxml> to the content model of
              <targetxml>casesum:editorialsummary</targetxml>.</li>
          <li>Added: <targetxml>heading</targetxml> to the content model of
              <targetxml>courtcase:body</targetxml>.</li>
          <li>Added: <targetxml>decision:decisiondate</targetxml> to the content model of
              <targetxml>courtcase:opinions</targetxml>.</li>
          <li>Added: <targetxml>proc:nl</targetxml> to the content model of
              <targetxml>courtcase:counsel</targetxml> and
            <targetxml>courtcase:judges</targetxml>.</li>
          <li>Added: <targetxml>footnote</targetxml> to the content model of
              <targetxml>caseinfo:caseinfo</targetxml>.</li>
          <li>Added: <targetxml>attachments</targetxml> to the content model of
              <targetxml>courtcase:opinions</targetxml>.</li>
          <li>Added: <targetxml>figure</targetxml> to the content model of
              <targetxml>text</targetxml> and <targetxml>entry</targetxml>.</li>
        </ul></p>
    </section>
    <section>
      <title>Courtcase 4.0 PROD</title>
      <p>2012-01-25<ul>
          <li>Added instructions for handling of
            <sourcexml>case:judgmentbody/heading</sourcexml>.</li>
          <li>Added a note for handling of <sourcexml>case:casename/nl</sourcexml> and modified the
            example too.</li>
          <li>Added a note for handling of child elements of <sourcexml>case:order</sourcexml>.</li>
          <li>Added: <targetxml>note</targetxml> as a child of <targetxml>entry</targetxml>.</li>
          <li>Added: <targetxml>courtcase:prelim</targetxml> as a child of
              <targetxml>courtcase:head</targetxml>.</li>
          <li>Added: <targetxml>heading</targetxml> as a child of
              <targetxml>courtcase:prelim</targetxml>.</li>
          <li>Added: <targetxml>bodytext</targetxml> as an optional child element of
              <targetxml>courtcase:order</targetxml>.</li>
          <li>Added: <targetxml>courtcase:caseexcerpt</targetxml> as a child of
              <targetxml>blockquote</targetxml>.</li>
          <li>Added: <targetxml>heading</targetxml> to the content model of
              <targetxml>courtcase:prelim</targetxml>.</li>
          <li>Added a note and example for handling of
              <sourcexml>case:appendix/case:embeddedcase</sourcexml>.</li>
          <li>Removed a note from CI's saying: need to create an empty hierarchy of
              <targetxml>casesum:citeoverview/p</targetxml> for
              <targetxml>casesum:editorialsummary</targetxml>.</li>
        </ul></p>
    </section>
    <section>
      <title>Courtcase 3.2 PROD</title>
      <p>2012-01-19<ul>
          <li>Added instructions and example for handing of
            <sourcexml>case:reviseddate</sourcexml>.</li>
          <li>Added instructions and example for handing of <sourcexml>case:libnum</sourcexml>.</li>
          <li>Added instructions and example for handing of
            <sourcexml>case:embeddedcase</sourcexml>.</li>
          <li>Added instructions and example for handing of <sourcexml>prelim</sourcexml>.</li>
          <li>Suppress: <sourcexml>case:juris</sourcexml> should be suppressed from conversion,
            GNCODE will populate this data as required.</li>
          <li>Updated: instruction for handling of text occuring between
              <sourcexml>ci:cite</sourcexml> and <sourcexml>case:parallelcite</sourcexml>.</li>
          <li>Changed the mapping and example for <sourcexml>case:author</sourcexml>.</li>
          <li>Added: <targetxml>note</targetxml>, <targetxml>ref:page</targetxml> and
              <targetxml>ref:relatedrefs</targetxml> to the content model of
              <targetxml>courtcase:head</targetxml>.</li>
          <li>Update: Made <targetxml>bodytext</targetxml> and <targetxml>p</targetxml> as optional
            child to the content model of <targetxml>casesum:overview</targetxml>.</li>
          <li>Added a note for handling of <targetxml>casesum:overview</targetxml> and modified the
            example too.</li>
          <li>Removed @excerpt-source from example since its an optional attribute now.</li>
          <li>Added instructions to handle an exceptional use case; when headnote is being used to
            capture only catchwords under embeddedcase.</li>
          <li>Changed the Xpath and example for <sourcexml>case:judges</sourcexml>.</li>
        </ul></p>
    </section>
    <section>
      <p>2012-1-13<ul>
          <li>Changed the mapping and example for ref:relatedrefs.</li>
          <li>Added CR numbers for addition of ref:page and ref:relatedrefs to the content model of
            courtcase:head.</li>
          <li>Extensive changes to instructions and examples of <sourcexml>ci:cite</sourcexml>
            regarding preservation of child elements.</li>
          <li>Added a note for handling of person if it occurs inside case:author or
            case:constituent.</li>
          <li>Added a note for handling of multiple catchphrases within catchwords.</li>
          <li>Removed instructions for converting ci:cite from Headnote Section.</li>
          <li>Removed instructions to avoid any misleading output(if only one ref:relatedrefs
            occurs) for ref:relatedrefs.</li>
        </ul></p>
    </section>
    <section>
      <p>2012-1-12<ul>
          <li>Changed the mapping and example for case:headnote.</li>
        </ul></p>
    </section>
    <section>
      <p>2012-1-11<ul>
          <li>Updated the example for case:length.</li>
          <li>Updated instructions to handle ref:relatedrefs.</li>
        </ul></p>
    </section>
    <section>
      <p>2012-1-6<ul>
          <li>Updated the Xpath for case:author.</li>
        </ul></p>
    </section>
    <section>
      <p>2012-1-5<ul>
          <li>Defined handling for element p when it occurs within case:constituents i.e,
            case:constituents/p.</li>
        </ul></p>
    </section>
    <section>
      <p>2012-1-4<ul>
          <li>Defined handling for element p when it occurs within case:typeofcase.</li>
          <li>Added CR number to make element p and bodytext as optional child element of
            casesum:overview.</li>
          <li>Changed the example for headnote.</li>
        </ul></p>
    </section>
    <section>
      <p>2011-12-29<ul>
          <li>Changed the value of @summarysource to "lawyers-edition".</li>
          <li>Changed the value of @headnotesource to "lawyers-edition".</li>
        </ul></p>
    </section>
    <section>
      <p>2011-12-28<ul>
          <li>Defined handling for l and blockquote when it occurs within case:order</li>
          <li>Defined handling for l and blockquote when it occurs within case:factsummary</li>
          <li>Defined handling for pgrp, l and blockquote when it occurs within
            case:decisionsummary</li>
          <li>Defined handling when multiple ref:relatedrefs occurs in a single document.</li>
          <li>Defined handling for page, l, blockquote, table and pgrp when it occurs within
            case:typeofcase</li>
          <li>General Markup topic - added the phrase “[common element]” to the instructions for all
            of the general markup elements.</li>
          <li>Metadata topic - added the phrase “[common element]” to the instructions for all of
            the metadata elements.</li>
        </ul></p>
    </section>
    <section>
      <p>2011-12-22<ul>
          <li>Added the CR number for case:libnum</li>
        </ul></p>
    </section>
    <section>
      <p>2011-12-21<ul>
          <li>Added an example for case:headnote.</li>
          <li>Updated instruction for root-element/@xml:lang.</li>
          <li><b>Fixed</b> footnotegrp &amp; footnote instructions to indicate that the @fntoken
            value (not @fnrtokens) should be used to populate ref:anchor[@id].</li>
        </ul></p>
    </section>
    <section>
      <p>2011-12-17<ul>
          <li>Changed the placement for classification markup.</li>
          <li>Changed the placement for ref:relatedrefs.</li>
          <li>Added an example for case:hearingdate</li>
          <li>Defined the handling for new elements: case:embeddedcase, case:appendix,
            case:reviseddate, case:libnum, case:parallelcite, abbrvname.</li>
        </ul></p>
    </section>
    <section>
      <p>2011-11-28<ul>
          <li>Modified CIs to generate ref:anchor/@id.</li>
        </ul></p>
    </section>
    <section>
      <p>2011-11-25<ul>
          <li>Modified CIs per linking strategy updates.</li>
        </ul></p>
    </section>
    <section>
      <p>2011-11-16<ul>
          <li>Handling for docinfo/docinfo:topiccodes/docinfo:topiccode has been modified.</li>
        </ul></p>
    </section>
    <section>
      <p>2011-10-19<ul>
          <li>BODY topic - Added courtcase:opinions/courtcase:opinion @opiniontype as an optional
            attribute.</li>
          <li>BODY topic - Updated the example for docinfo:lbu-meta.</li>
        </ul></p>
    </section>
    <section>
      <p>2011-10-5<ul>
          <li>BODY topic - Addition of comments for populating values for @type attribute in the
            JCite Markup.</li>
        </ul></p>
    </section>
    <section>
      <p>2011-10-4<ul>
          <li>BODY topic - Added the complete Xpath for case:typeofcase in the Conversion
            Instructions.</li>
          <li>BODY topic - Added the complete Xpath for case:headnote in the Conversion
            Instructions.</li>
          <li>BODY topic - Removed the mapping for caseinfo:shortcasename in the Conversion
            Instructions.</li>
        </ul></p>
    </section>
    <section>
      <p>2011-09-29<ul>
          <li>BODY topic - Addition of comments for handling of dc:language and @lang in the
            Conversion Instructions.</li>
        </ul></p>
    </section>
    <section>
      <p>2011-09-27<ul>
          <li>BODY topic - Addition of comments for handling of casejudgments in the Conversion
            Instructions.</li>
          <li>BODY topic - Updated the mapping for case:altname in Conversion Instructions.</li>
          <li>BODY topic - Updated the example for case:courtcite in Conversion Instructions.</li>
        </ul></p>
    </section>
    <section>
      <p>2011-09-23<ul>
          <li>BODY topic - Updated the mapping for docinfo:selector and docinfo:topiccode in
            Conversion Instructions.</li>
        </ul></p>
    </section>
    <section>
      <p>2011-09-21<ul>
          <li>BODY topic - Removed the note about 'always use location:city' in Conversion
            Instructions.</li>
        </ul></p>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU01_CaseLaw\AU01_changeLog.dita  -->
	<xsl:message>AU01_changeLog.xsl requires manual development!</xsl:message> 

</xsl:stylesheet>