<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:ci="http://www.lexis-nexis.com/ci" xmlns:dig="http://www.lexis-nexis.com/glp/dig" xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:source_lnci="http://www.lexis-nexis.com/lnci" xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns:decision="http://www.lexisnexis.com/xmlschemas/content/legal/decision/1/" xmlns:lnci="http://www.lexisnexis.com/xmlschemas/content/shared/citations/1/" xmlns:person="http://www.lexisnexis.com/xmlschemas/content/shared/person/1/" xmlns:proc="http://www.lexisnexis.com/xmlschemas/content/shared/process-elements/1/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita case ci dig docinfo leg lnci">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Linxplus-Article_ChangeLog">
  <title>Change Log</title>
  <body>
    <section>
      <title>Newsitem 4.4 PROD</title>
      <p>2016-08-17
        <ul>
          <li>
            <xref href="../../../../Rosetta/common_newest/Rosetta_PAC_docinfo.doc-id-LxAdv-dcidentifier_lnmetaidentifier-scheme.dita">2016-08-03 - docinfo:doc-id to dc:identifier[@lnmeta:identifier-scheme] id-CCCC-10550: Created the rule to, Check manifest file for
              DPSI value and create new element
              <targetxml>dc:metadata/dc:source[@lnmeta:sourcescheme]</targetxml>
            </xref>
          </li>
          <li>
            <xref href="../../../../Rosetta/common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2016-08-03 - remotelink to ref:crossreference id-CCCC-10465: Added Note about xml snippets that illustrate
              image handling. Note summarizes move from Apollo to Blobstore application. UK is
              first LBU to move to Blobstore.</xref>
          </li>
          <li>
            <xref href="../../../../Rosetta/common_newest/Rosetta_bodytext-link-LxAdv-seclaw.bodytext-p-text-ref.lnlink.dita">2016-08-01 - bodytext/link to seclaw:bodytext/p/text/ref:lnlink id-CCCC-10248: Added Note about xml snippets that illustrate image handling. Note summarizes move from Apollo to Blobstore application. UK is first LBU to move to Blobstore.</xref>
          </li>
          <li>
            <xref href="../../../../Rosetta/common_newest/Rosetta_docinfo.alt-renditions-LxAdv-doc.alt-renditions.dita">2016-07-29 - docinfo:alt-renditions/docinfo:alt-rendition to doc:alt-renditions/doc:alt-rendition id-CCCC-10283: Added Note about xml snippets that illustrate
              image handling. Note summarizes move from Apollo to Blobstore application. UK is
              first LBU to move to Blobstore.</xref>
          </li>
          <li>
            <xref href="../../../../Rosetta/common_newest/Rosetta_blockquote-LxAdv-blockquote.dita">2016-07-29 - blockquote to blockquote id-CCCC-10247: Added Note about xml snippets that illustrate
              image handling. Note summarizes move from Apollo to Blobstore application. UK is
              first LBU to move to Blobstore. VSTS 76146</xref>
          </li>
          <li>
            <xref href="../../../../Rosetta/common_newest/Rosetta_refpt-Chof-p_text_emph-LxAdv-p_ref.anchor.dita">2016-07-27 - refpt child of p/text/emph to p/ref:anchor id-CCCC-10457: Added a note for handling of text which is
              comes under the <sourcexml>refpt</sourcexml> in source.</xref>
          </li>
          <li>
            <xref href="../../../../Rosetta/common_newest/Rosetta_refpt-Chof-p_text-LxAdv-p_ref.anchor.dita">2016-04-28 - refpt child of p/text to p/ref:anchor id-CCCC-10456: Added one more source and target example.</xref>
          </li>
          <li>
            <xref href="../../../../Rosetta/common_newest/Rosetta_emph-LxAdv-emph.dita">2016-04-01 - emph to emph id-CCCC-10316: Added statement to clarify that children of emph should be processed.</xref>
          </li>
          <li>
            <xref href="../../../../Rosetta/common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2016-03-23 - ci.cite to lnci.cite id-CCCC-10268: Updated main instructions to clarify that descendants of ci:cite, and not just children, are to be processed.</xref>
          </li>
          <li>
            <xref href="../../../../Rosetta/common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2016-02-05 - remotelink to ref:crossreference id-CCCC-10465: Added note and example when
              <sourcexml>remotelink</sourcexml> is a child of <sourcexml>emph</sourcexml>. Applicable
              on NZ17CC, Webstar: 319232 and 318735.</xref>
          </li>
        </ul>
      </p>
    </section>
  <section>
      <title>Newsitem 3.6 PROD</title>
      <p>
        <ul>
          <li>
            <xref href="../../../DITA-PAC/NZ07_Linxplus/NZ07DN_Linxplus-Article/Linxplus-Article_pubnote.dita">2014-02-12 - pubnote: Updated Instruction and example for scenario 2, Webteam #: 251187, This change
              immediately applies to NZ07 Linxplus-Article.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_Elements-LxAdv-Empty_Elements.dita">2014-01-16 - Suppress each empty element unless otherwise stated: Added list of elements to suppress if empty.</xref>
          </li>
          </ul>
      </p>
    </section>
    <section>
      <title>Newsitem 3.6 PROD</title>
      <p>2014-01-15 <ul>
          <li>
            <xref href="../../../DITA-PAC/NZ07_Linxplus/NZ07DN_Linxplus-Article/Linxplus-Article_Introduction.dita">2014-01-15 - Introduction: Added Source identification for journalsindexed.xml file,
              Webteam #: 249664, This change immediately applies to NZ07 Linxplus-Article.</xref>
          </li>
          <li>
            <xref href="../../../DITA-PAC/NZ07_Linxplus/NZ07DN_Linxplus-Article/Linxplus-Article_dig_body.dita">2014-01-15 - dig:body: Updated target mapping when
                <sourcexml>heading/title</sourcexml> comes under <sourcexml>dig:body</sourcexml>,
              Webteam #: 249664, This change immediately applies to NZ07 Linxplus-Article.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_endnote-LxAdv-endnote.dita">2013-12-18 - endnote
              to endnote: Instruction added to convert <sourcexml>remotelink/@refpt</sourcexml> to
                <targetxml>footnote-ref/@anchoridref</targetxml>. WebTeam #5158742 - AU04. Applies
              generally to all LBUs and streams.</xref>
          </li>
        </ul></p>
    </section>
    
    <section>
      <title>Newsitem 3.6 PROD</title>
      <p>2013-12-10
        <ul>
          <li>
            <xref href="../../../DITA-PAC/NZ07_Linxplus/NZ07DN_Linxplus-Article/Linxplus-Article_pubnote.dita">2013-12-10 - pubnote: Updated Instruction and created 2 scenario for <sourcexml>pubnote</sourcexml> element, Webteam #: 247032, This change
              immediately applies to NZ07 Linxplus-Article.</xref>
          </li>
        </ul>
      </p>
    </section>
    
    <section>
      <title>Newsitem 3.6 PROD</title>
      <p>2013-12-04
        <ul>
          <li>
            <xref href="../../../common_newest/Rosetta_p-LxAdv-p.dita">2013-12-04 - p to p: Updated target example when <sourcexml>p</sourcexml> or <sourcexml>p/@nl="0"</sourcexml> comes in <sourcexml>references</sourcexml>, this change directly affects NZ07.</xref>
          </li>
          <li>
            <xref href="../../../DITA-PAC/NZ07_Linxplus/NZ07DN_Linxplus-Article/Linxplus-Article_pubnote.dita">2013-12-03 - pubnote: Updated Instruction and example for PCDATA of
              <sourcexml>pubnote</sourcexml> element, Webteam #: 247032, This change
              immediately applies to NZ07 Linxplus-Article.</xref>
          </li>
        </ul>
      </p>
    </section>
    
    <section>
      <title>Newsitem 3.6 PROD</title>
      <p>2013-12-02
        <ul>
          <li>
            <xref href="../../../DITA-PAC/NZ07_Linxplus/NZ07DN_Linxplus-Article/Linxplus-Article_pubnote.dita">2013-12-02 - pubnote: Updated Instruction and example, Webteam #: 247032, This change immediately applies to NZ07 Linxplus-Article.</xref>
          </li>
        </ul>
      </p>
    </section>
    
    <section>
      <title>Newsitem 3.6 PROD</title>
      <p>2013-11-21
        <ul>
          <li>
            <xref href="../../../common_newest/Rosetta_p-LxAdv-p.dita">2013-11-21 - p to p: Updated instruction and example <sourcexml>p</sourcexml> or <sourcexml>p/@nl="0"</sourcexml> comes in <sourcexml>references</sourcexml>, this change directly affects NZ07.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_AU_NZ_copyright-LxAdv-copyright.dita">2013-11-12 - (AU/NZ) copyright to copyright: Added example for AU Cases. Webstar #: 5093906. This change immediately applies to AU01 Caselaw.</xref>
          </li>
        </ul>
      </p>
    </section>
        
    <section>
      <title>Newsitem 3.6 PROD</title>
      <p>2013-10-30
        <ul>
          <li>
            <xref href="../../../DITA-PAC/NZ07_Linxplus/NZ07DN_Linxplus-Article/Linxplus-Article_abstract.dita">2013-10-30 - abstract: Updated target example, removed <targetxml>proc:process-ignore</targetxml> mapping.</xref>
          </li>
          <li>
            <xref href="../../../DITA-PAC/NZ07_Linxplus/NZ07DN_Linxplus-Article/Linxplus-Article_bio.dita">2013-10-30 - bio: Updated target example, removed <targetxml>proc:process-ignore</targetxml> mapping.</xref>
          </li>
          <li>
            <xref href="../../../DITA-PAC/NZ07_Linxplus/NZ07DN_Linxplus-Article/Linxplus-Article_contrib.dita">2013-10-30 - contrib: Updated target example, removed <targetxml>proc:process-ignore</targetxml> mapping.</xref>
          </li>
          <li>
            <xref href="../../../DITA-PAC/NZ07_Linxplus/NZ07DN_Linxplus-Article/Linxplus-Article_references.dita">2013-10-30 - references: Updated target example, removed <targetxml>proc:process-ignore</targetxml> mapping.</xref>
          </li>
          <li>
            <xref href="../../../DITA-PAC/NZ07_Linxplus/NZ07DN_Linxplus-Article/Linxplus-Article_pubnote.dita">2013-10-30 - pubnote: Updated target example, removed <targetxml>proc:process-ignore</targetxml> mapping.</xref>
          </li>
        </ul>
      </p>
    </section>

<section>
  <title>Newsitem 3.6 PROD</title>
  <p>2013-10-25
  <ul>
    <li>
      <xref href="../../../DITA-PAC/NZ07_Linxplus/NZ07DN_Linxplus-Article/Linxplus-Article_process.ignore.dita">2013-10-25 - process-ignore: Updated <sourcexml>process-ignore</sourcexml>
        instruction and example. Webteam #: 243194.</xref>
    </li>
    <li>
      <xref href="../../../common_newest/Rosetta_p-LxAdv-p.dita">2013-10-25 - p to p: Added instruction and example <sourcexml>p/@nl="0"</sourcexml> comes in <sourcexml>references</sourcexml>.</xref>
    </li>
    <li>
      <xref href="../../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-10-23 - remotelink to ref:crossreference: Added Example when <sourcexml>remotelink</sourcexml> having child <sourcexml>emph</sourcexml>. Webteam # 239816</xref>
    </li>
    <li>
      <xref href="../../../common_newest/Rosetta_Elements-LxAdv-Empty_Elements.dita">2013-10-14 - Suppress each empty element unless otherwise stated: Changed antecedent to singular to match instructions.</xref>
    </li>
    <li>
      <xref href="../../../common_newest/Rosetta_deflist-LxAdv-deflist.dita">2013-10-14 - deflist to deflist: Added new rule to create a blank defitem/defdesc element after the defterm element.  WebTeam # 237242.</xref>
    </li>
  </ul></p>
</section>

    <section>
      <title>NewsItem 3.6 PROD</title>
      <p>2013-10-11
        <ul>
          <li>
            <xref href="../../../common_newest/Rosetta_refpt-Chof-p_text-LxAdv-p_ref.anchor.dita">2013-10-11 - refpt child of p/text to p/ref:anchor: Added a note and update the target examples when refpt
              comes without attribute <sourcexml>[@type="ext"]</sourcexml> and
              <sourcexml>[@type="local"]</sourcexml> in source documents.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_refpt-Chof-p_text_emph-LxAdv-p_ref.anchor.dita">2013-10-11 - refpt child of p/text/emph to p/ref:anchor: Added a note and update the target examples when refpt
              comes without attribute <sourcexml>[@type="ext"]</sourcexml> and
              <sourcexml>[@type="local"]</sourcexml> in source documents.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_p-LxAdv-p.dita">2013-10-09 - p to p: Added instruction and example <sourcexml>p</sourcexml> comes with <sourcexml>@nl=”0”</sourcexml>.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_docinfo.authorattribution-LxAdv-dc.contributor.dita">2013-10-08 - docinfo:authorattribution to dc:contributor: Instruction added for handling
              <sourcexml>docinfo:authorattribution</sourcexml> when it is having a running
              text. Affects all Pacific content streams. WebTeam # is 238798.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_endnote-LxAdv-endnote.dita">2013-10-07 - endnote to endnote: Instruction and example for added for the Xpath <sourcexml>leg:bodytext/glp:note/l/li</sourcexml> related to <targetxml>endnote</targetxml> handling. WebTeam # is 238790.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-10-03 - remotelink to ref:crossreference: Added use case where remotelink contains @href which is a URL but does not contain @hrefclass='http'.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_link-LxAdv-ref.lnlink.dita">2013-09-24 - link to ref:lnlink/@service="ATTACHMENT": Not a rule change. Modified examples to illustrate when <sourcexml>@status</sourcexml> suppressed and when retained.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_docinfo.authorattribution-LxAdv-dc.contributor.dita">2013-09-16 - docinfo:authorattribution to dc:contributor: Instruction added for suppressing
              <sourcexml>docinfo:authorattribution/contrib</sourcexml> when it is child of
              <sourcexml>leg:levelinfo</sourcexml> and
              <sourcexml>levelinfo</sourcexml>.Affects all Pacific content streams. WebTeam #
              is 234193.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_docinfo.currencystatement-LxAdv-currencystatement.dita">2013-09-16 - docinfo:currencystatement to doc:docinfo/currencystatement: Instruction added for suppressing <sourcexml>docinfo:currencystatement</sourcexml> when it is child of <sourcexml>leg:levelinfo</sourcexml> and 
              <sourcexml>levelinfo</sourcexml>.Affects all Pacific content streams. WebTeam # is 234193.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_docinfo.overview-LxAdv-docinfo.overview.dita">2013-09-16 - docinfo:overview to doc:overview: Instruction added for suppressing <sourcexml>docinfo:overview</sourcexml> when it is child of <sourcexml>leg:levelinfo</sourcexml> and 
              <sourcexml>levelinfo</sourcexml>.Affects all Pacific content streams. WebTeam # is 234193.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_text-When_Contains_Only_Wihitespace_Or_NBSP_Entity.dita">2013-08-29 - Converting text When it Contains Only Whitespace or NBSP Entity: Created per WebStar: WebTeam #223114</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_docinfo.authorattribution-LxAdv-dc.contributor.dita">2013-08-22 - docinfo:authorattribution to dc:contributor: Updated instruction and example when
              <sourcexml>person</sourcexml> is an child of
              <sourcexml>docinfo:authorattribution/contrib</sourcexml> and removed CR# DAAM2013080706295200. WebTeam # is 229509.</xref>
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
            <xref href="../../../common_newest/Rosetta_docinfo.authorattribution-LxAdv-dc.contributor.dita">2013-08-13 - docinfo:authorattribution to dc:contributor: Added instruction and example when
              <sourcexml>person</sourcexml> is an child of
              <sourcexml>docinfo:authorattribution/contrib</sourcexml> and CR# DAAM2013080706295200 has been created to add <targetxml>person:person</targetxml> to the content model of <targetxml>dc:contributor</targetxml>.WebTeam # is 229509</xref>
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
            <xref href="../../../common_newest/Rosetta_date-Chof-docinfo.load-date-LxAdv-dc.date_lnmeta.datetype_load-date-scheme.dita">2013-08-07 - docinfo:load-date/date to dc:date[@lnmeta:datetype="load-date"]: Removed instructions for creating
              <targetxml>dc:date[@lnmeta:datetype="conversion-date"]</targetxml>.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_docinfo.lbu-meta-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta-scheme.dita">2013-08-02 - docinfo:lbu-meta to doc:legacy-metadata[@metadatasource="lbu-meta"]: Added <sourcexml>@name="selection_criteria_variant"</sourcexml> to the list of values in docinfo:metaitem/@name that should be retained. And added a example.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_docinfo.doc-heading-LxAdv-dc.title.dita">2013-08-01 - docinfo:doc-heading to dc:title: For Canada Content streams: Added a note and examples, when <sourcexml>docinfo:doc-heading</sourcexml> contains <sourcexml>nl</sourcexml> as a child element.</xref>
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
            <xref href="../../../common_newest/Rosetta_docinfo.doc-lang-and-doc-country-LxAdv-ROOT_xml.lang.dita">2013-07-16 - docinfo:doc-lang and docinfo:doc-country to @xml:lang and @xml:ID: Instruction narrative edited for language; no changes to mappings, no impact to stylesheets.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_docinfo.authorattribution-LxAdv-dc.contributor.dita">2013-06-25 - docinfo:authorattribution to dc:contributor: added to AU and NZ ditamap for content enrichment</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_docinfo.currencystatement-LxAdv-currencystatement.dita">2013-06-25 - docinfo:currencystatement to doc:docinfo/currencystatement: added to AU and NZ ditamap for content enrichment</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_docinfo.overview-LxAdv-docinfo.overview.dita">2013-06-25 - docinfo:overview to doc:overview: added to AU and NZ ditamap for content enrichment</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_copyright-LxAdv-copyright.dita">2013-06-17 - copyright to copyright: Added an example when <sourcexml>copyright-holder</sourcexml> is not present in the source.</xref>
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
            <xref href="../../../common_newest/Rosetta_docinfo.versioninfo-LxAdv-doc.versioninfo-scheme.dita">2013-05-24 - docinfo:versioninfo to doc:versioninfo: Instructions added for handling empty use cases of <sourcexml>docinfo:versioninfo</sourcexml> for Canada content stream.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_link-LxAdv-ref.lnlink.dita">2013-05-24 - link to ref:lnlink/@service="ATTACHMENT": Updated instruction for handling of link when smi is present and some of the verbiage is changed.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_docinfo-LxAdv-doc.metadata_doc.docinfo.dita">2013-05-16 - docinfo to doc:metadata/doc:docinfo: Fixed typo updating urn:contentitem to
              urn:contentItem</xref>
          </li>
        </ul>
      </p>
    </section>
    

    <section>
      <title>NewsItem 3.2 PROD</title>
      <p>2013-05-14<ul>
          <li>
            <xref href="../../../common_newest/Rosetta_blockquote-LxAdv-blockquote.dita">2013-05-08 -
              blockquote to blockquote: Extended the list of allowable values for image
              handling.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-05-08 - remotelink to ref:crossreference: Extended the list of allowable values
              for image handling.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_link-LxAdv-ref.lnlink.dita">2013-05-02 - link to
              ref:lnlink/@service="ATTACHMENT": Some of the verbiage is changed and updated target
              example to if the SMI is present then a <targetxml>ref:lnlink/@status</targetxml>
              attribute is set to “valid”.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_docinfo.alt-renditions-LxAdv-doc.alt-renditions.dita">2013-05-01 - docinfo:alt-renditions/docinfo:alt-rendition to
              doc:alt-renditions/doc:alt-rendition: Updated instructions and target example per
              latest Apollo markup.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2013-05-01 -
              ci.cite to lnci.cite: Removed special rule for
                <sourcexml>ci:cite/ci:content/remotelink</sourcexml> which required suppression of
                <sourcexml>ci:cite/ci:content</sourcexml> tags. The elements are now retained and
              convert according to common rules.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_blockquote-LxAdv-blockquote.dita">2013-05-01 -
              blockquote to blockquote: Removed instructions for section "Pre-Release 4.0" because
              according to latest Apollo markup, section "Release 4.0 and after" and section
              "Pre-Release 4.0" now have similar conversion markup.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_link-LxAdv-ref.lnlink.dita">2013-05-01 - link to
              ref:lnlink/@service="ATTACHMENT": Updated instructions and target example per latest
              Apollo markup.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_bodytext-link-LxAdv-seclaw.bodytext-p-text-ref.lnlink.dita">2013-05-01 - bodytext/link to seclaw:bodytext/p/text/ref:lnlink: Updated instructions
              and target example per latest Apollo markup.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-05-01 - remotelink to ref:crossreference: Removed instructions for section
              "Pre-Release 4.0" because according to latest Apollo markup, section "Release 4.0 and
              after" and section "Pre-Release 4.0" now have similar conversion markup.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-05-01 - remotelink to ref:crossreference: "Instruction added for
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
            <xref href="../../../common_newest/Rosetta_blockquote-LxAdv-blockquote.dita">2013-04-30 -
              blockquote to blockquote: Updated target sample according to latest Apollo
              markup.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-04-30 - remotelink to ref:crossreference: Updated target sample according to
              latest Apollo markup.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2013-04-24 -
              ci.cite to lnci.cite: Added a mapping for <sourcexml>ci:procphrase</sourcexml> to
                <sourcexml>lnci:procphrase</sourcexml>
            </xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_docinfo.doc-lang-and-doc-country-LxAdv-ROOT_xml.lang.dita">2013-04-19 - docinfo:doc-lang and docinfo:doc-country to @xml:lang and @xml:ID: Added
              note about applicability of restrictions and required modifications for
                <targetxml>xml:id</targetxml> to other scenarios.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_docinfo.custom-metafields-LxAdv-SUPPRESS.dita">2013-04-16 - docinfo:custom-metafields is SUPPRESSED: Updated the instruction of
              handling <sourcexml>docinfo:custom-metafield[@name="JURIS-SORT"]</sourcexml>,
                <sourcexml>docinfo:custom-metafield[@name="COURT-SORT"]</sourcexml>, and
                <sourcexml>docinfo:custom-metafield[@name="TERM-SORT"]</sourcexml> markup in CA
              Dictionary content stream.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-04-10 - remotelink to ref:crossreference: Added Source XML 7a: for link to URL,
              with non-URL text content because it was previously missing, only the target example
              was here.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_docinfo.lbu-meta-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta-scheme.dita">2013-04-09 - docinfo:lbu-meta to doc:legacy-metadata[@metadatasource="lbu-meta"]:
              Added the instruction for handling
                <sourcexml>docinfo:metaitem[@name="QLDB"]</sourcexml>.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_docinfo.doc-id-LxAdv-dcidentifier_lnmetaidentifier-scheme.dita">2013-03-20 - docinfo:doc-id to dc:identifier[@lnmeta:identifier-scheme]: Updated the
              information on handling the situation when
                <sourcexml>docinfo:dpsi[@id-string]</sourcexml> is absent with instructions to get
              the dpsi from
                <sourcexml>docinfo/docinfo:custom-metafields/docinfo:custom-metafield[@name="dpsi"]</sourcexml>.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_docinfo.custom-metafields-LxAdv-SUPPRESS.dita">2013-03-20 - docinfo:custom-metafields is SUPPRESSED: Updated the instruction of
              handling <sourcexml>docinfo:custom-metafield[@name="dpsi"]</sourcexml> markup in CA
              content stream.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_p-LxAdv-p.dita">2013-03-14 - p to p: Add
              instruction and example <sourcexml>p/@style</sourcexml>.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_nl-LxAdv-proc.nl.dita">2013-03-14 - nl to
              proc:nl: Add instruction and example <sourcexml>nl/@n</sourcexml>.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-03-11 - remotelink to ref:crossreference: Instruction and example added on how
              to handle <targetxml>ref:marker </targetxml> if it is in
                <targetxml>ref:lnlink@service=”URL”</targetxml>and the
                <targetxml>ref:key-value@value</targetxml> starts-with (.,
              'http://www.lexisnexis.com/au/legal/api')</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_date-LxAdv-date.dita">2013-03-08 - date to date:
              Added instruction for @normdate attribute that falls on various NL date
              elements</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_docinfo.alt-renditions-LxAdv-doc.alt-renditions.dita">2013-02-26 - docinfo:alt-renditions/docinfo:alt-rendition to
              doc:alt-renditions/doc:alt-rendition: Updated target example per project
              requirement.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_link-LxAdv-ref.lnlink.dita">2013-02-26 - link to
              ref:lnlink/@service="ATTACHMENT": Updated target example per project
              requirement.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_bodytext-link-LxAdv-seclaw.bodytext-p-text-ref.lnlink.dita">2013-02-26 - bodytext/link to seclaw:bodytext/p/text/ref:lnlink: Updated target
              example per project requirement.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_blockquote-LxAdv-blockquote.dita">2013-02-18 -
              blockquote to blockquote: Created two sections, one for "Release 4.0 and after" and
              another for "Pre-Release 4.0".</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-02-18 - remotelink to ref:crossreference: Created two sections, one for "Release
              4.0 and after" and another for "Pre-Release 4.0".</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2013-01-22 -
              ci.cite to lnci.cite: Instruction modified for the scenario
                <sourcexml>ci:cite/ci:content/remotelink</sourcexml> to indicate that the
                <sourcexml>ci:cite</sourcexml> and <sourcexml>ci:content</sourcexml> start-tags and
              end-tags (but not their content) are dropped.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_case.decisiondate_ln.user-displayed-LxAdv-decision.dates.dita">2013-01-09 - case:decisiondate/@ln.user-displayed="false" to decision:dates:
              Instructions have been added with directions for populating the attribute
                <targetxml>decision:decisiondate/@normdate</targetxml>.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_emph-LxAdv-emph.dita">2013-01-08 - emph to emph:
              Added note for handling <targetxml>emph/emph</targetxml> has the same
                <targetxml>@typestyle</targetxml> value.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_docinfo.custom-metafields-LxAdv-SUPPRESS.dita">2013-01-07 - docinfo:custom-metafields is SUPPRESSED: Updated the instruction of
              handling <sourcexml>docinfo:custom-metafield[@searchtype="CITED-COUNT"]</sourcexml>
              markup in CA content stream.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_refpt-Chof-level_heading_title-LxAdv-primlaw.level_OR_seclaw.level_ref.anchor.dita">2012-12-07 - refpt child of level/heading/title to seclaw:level/ref:anchor,
              primlaw:level/ref:anchor and section/ref:anchor: Instruction and Example added:
                <sourcexml>refpt</sourcexml> has text.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2012-11-29 -
              ci.cite to lnci.cite: Updated instructions to drop all
              <sourcexml>@spanref</sourcexml>.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_case.decisiondate_ln.user-displayed-LxAdv-decision.dates.dita">2012-10-24 - case:decisiondate/@ln.user-displayed="false" to decision:dates: Added
              note to zero pad month and day attributes.</xref>
          </li>
        </ul>
      </p>
    </section>


    <section>
      <title>NewsItem 1.11 PROD</title>
      <p>2012-11-07<ul>
          <li>Added instruction and example for <sourcexml>dig:body/heading/title</sourcexml> and
              <sourcexml>dig:body/bodytext</sourcexml>.</li>
          <li>Added Instruction of <targetxml>h</targetxml> element.</li>
          <li>Added Instruction of <targetxml>refpt</targetxml> element.</li>
          <li>Added Instruction of <targetxml>blockquote</targetxml> element.</li>
          <li>Added Instruction of <targetxml>link</targetxml> element.</li>
          <li>Updated Instruction for <sourcexml>case:info</sourcexml> element.</li>
          <li>Updated Instruction for <sourcexml>contrib</sourcexml> element.</li>
          <li>Updated Instruction for <sourcexml>bio</sourcexml> element.</li>
          <li>Moved Instruction of <sourcexml>case:info</sourcexml>,
              <sourcexml>case:courtinfo</sourcexml>, <sourcexml>case:courtcode</sourcexml> and
              <sourcexml>case:juris</sourcexml> from body to head.</li>
          <li>Removed note from Linxplus-Article_Head.dita</li>
        </ul></p>
    </section>
    <section>
      <p>2012-10-11<ul>
          <li>Removed CR # DARG2012092604585500 from Linxplus-Article_publength.data.</li>
          <li>Removed CR # DARG2012092403330700 from Linxplus-Article_pubclassification.data.</li>
        </ul></p>
    </section>
    <section>
      <p>2012-10-05<ul>
          <li>Change log created.</li>
        </ul></p>
    </section>
  </body>
	</dita:topic>


</xsl:stylesheet>