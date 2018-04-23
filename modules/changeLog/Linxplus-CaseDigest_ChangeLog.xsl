<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:ci="http://www.lexis-nexis.com/ci" xmlns:dig="http://www.lexis-nexis.com/glp/dig" xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:source_lnci="http://www.lexis-nexis.com/lnci" xmlns:casedigest="http://www.lexisnexis.com/xmlschemas/content/legal/case-digest/1/" xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" xmlns:lnci="http://www.lexisnexis.com/xmlschemas/content/shared/citations/1/" xmlns:person="http://www.lexisnexis.com/xmlschemas/content/shared/person/1/" xmlns:proc="http://www.lexisnexis.com/xmlschemas/content/shared/process-elements/1/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita case ci dig docinfo leg lnci">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Linxplus-CaseDigest_ChangeLog">
  <title>Change Log</title>
  <body>
    <section>
      <title>Casedigest 8.7_PROD</title>
    <p>2016-08-16
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
          <xref href="../../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2016-07-29 - docinfo:assoc-links to doc:related-content id-CCCC-10284: Added Note about xml snippets that illustrate image
            handling. Note summarizes move from Apollo to Blobstore application. UK is first LBU to
            move to Blobstore.</xref>
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
      <title>Casedigest 8.3_PROD</title>
     
     <p>2015-03-25
        <ul>
          <li>
            <xref href="Linxplus-CaseDigest_case.parallelcite.dita">2015-03-25 - case:parallelcite id-NZ07DC-23621: Modified instruction so that <sourcexml>parallelcite</sourcexml> maps to <targetxml>ref:parallelcite</targetxml> instead
              of ref:cite4thisresource.</xref>
          </li>
          <li>
            <xref href="../../../../Rosetta/common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2015-03-17 - ci.cite to lnci.cite id-CCCC-10268: An attribute <targetxml>@inline</targetxml> get added with <targetxml>desig</targetxml> element even when the source<sourcexml>pnum</sourcexml> is not having that attribute<sourcexml>@inline</sourcexml> Applicable on CA12 only.</xref>
          </li>
          <li>
            <xref href="../../../../Rosetta/common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2015-02-24 - ci.cite to lnci.cite id-CCCC-10268: Example updated as per new rule an attribute <targetxml>@inline</targetxml>get added with <targetxml>desig</targetxml>element when the source<sourcexml>pnum</sourcexml>is not having that attribute<sourcexml>@inline</sourcexml>
            </xref>
          </li>
          <li>
            <xref href="../../../../Rosetta/common_newest/Rosetta_docinfo.hier-LxAdv-doc.hier.dita">2015-01-23 - docinfo:hier to doc:hier id-CCCC-10297: Added note to convert <sourcexml>docinfo:hierlev/@exclude-from-displayunits="true"</sourcexml> into
              <targetxml>doc:hier/@includeintoc="false"</targetxml>.</xref>
          </li>
          <li>
            <xref href="../../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2015-01-19 - docinfo:assoc-links to doc:related-content id-CCCC-10284: For CA05 - CA08- Updated Instruction and
              included "<targetxml>related-content-grp</targetxml>" markup inside the target Example
              8 for conversion of QUERY link to doc:related-content.</xref>
          </li>
          <li>
            <xref href="../../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2015-01-15 - docinfo:assoc-links to doc:related-content id-CCCC-10284: For CA03- Convert the QUERY link to doc:related-content. Refer Example 10. R4.5 RFA #2099.</xref>
          </li>      
          <li>
            <xref href="../../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2015-01-15 - docinfo:assoc-links to doc:related-content id-CCCC-10284: For CA03- Convert the QUERY link to doc:related-content. Refer Example 10. R4.5 RFA #2099.</xref>
          </li>
          <li>
            <xref href="../../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2015-01-13 - docinfo:assoc-links to doc:related-content id-CCCC-10284: For CA05 - CA08 Conversion Needs to split
              multiple ORs into a separate <targetxml>doc:related-content-item</targetxml>. Refer
              Example 9</xref>
          </li>
          <li>
            <xref href="../../../../Rosetta/common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2015-01-09 - remotelink to ref:crossreference id-CCCC-10465: For the two use cases associated with url (target
              <targetxml>url</targetxml> or <targetxml>ref:lnlink</targetxml>): Added exceptional rule
              to not concatenate values when <sourcexml>@hrefclass</sourcexml> content is already
              present in <sourcexml>@href</sourcexml>. Expanded examples 5 and 7 to illustrate the
              scenario. Responds to data for UK10 Dictionaries but applies in general. R4.5 Content
              Issue 2120.</xref>
          </li>
          <li>
            <xref href="../../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2015-01-02 - docinfo:assoc-links to doc:related-content id-CCCC-10284: Added
              <sourcexml>docinfo:assoc-links/remotelink[@service="QUERY"]</sourcexml> and
              <sourcexml>docinfo:assoc-links-grp/remotelink[@service="QUERY"]</sourcexml> to generate
              <targetxml>doc:related-content</targetxml> markup. Applicable on CA05.</xref>
          </li>
          <li>
            <xref href="../../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2014-12-19 - docinfo:assoc-links to doc:related-content id-CCCC-10284: Updated target mapping for CA05 for handling
              <sourcexml>docinfo:assoc-links/remotelink[@service="QUERY"]</sourcexml>. Applicable on CA05.</xref>
          </li>
          <li>
            <xref href="../../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2014-12-17 - docinfo:assoc-links to doc:related-content id-CCCC-10284: Added a Note for CA05, CA06, CA07 and CA08 for handling
              <sourcexml>docinfo:assoc-links-grp/remotelink[@service="QUERY"]
              </sourcexml>
            </xref>
          </li>
          <li>
            <xref href="../../../../Rosetta/common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2014-12-08 - ci.cite to lnci.cite id-CCCC-10268: Addition of mapping for <sourcexml>ci:pinpoint</sourcexml> to 
              <targetxml>lnci:pinpoint</targetxml> and example from US LPA content.</xref>
          </li>
          <li>
            <xref href="../../../../Rosetta/common_newest/Rosetta_link_refpt-LxAdv-ref.lnlink-ref.locator_anchoridref.dita">2014-11-24 - link/@refpt to ref:lnlink/ref.locator/@anchoridref id-CCCC-10395: Updated instruction for CA02-CC to drop
              <sourcexml>emph</sourcexml> in <sourcexml>link/emph</sourcexml>.</xref>
          </li>
          <li>
            <xref href="../../../../Rosetta/common_newest/Rosetta_docinfo.overview-LxAdv-docinfo.overview.dita">2014-11-04 - docinfo:overview to doc:overview id-CCCC-10303: Clarification only: added text to explicitly indicate that the child <targetxml>doc:overview/bodytext</targetxml> should be created. Not a change to instructions.</xref>
          </li>
          <li>
            <xref href="../../../../Rosetta/common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2014-10-27 - remotelink to ref:crossreference id-CCCC-10465: Minor. Within use case for
              <sourcexml>@service="DOC-ID"</sourcexml>, rule for
              <sourcexml>@remotekey1="REFPTID"</sourcexml> now also applies when
              <sourcexml>@remotekey1="REFPT"</sourcexml>. That is, the condition is expanded to
              include value <sourcexml>"REFPT"</sourcexml>; the mapping is unchanged. The value
              <sourcexml>"REFPT"</sourcexml> is new in Oct 2014 redelivery of UK11-DN but the rule
              applies to any stream where <sourcexml>@remotekey1="REFPT"</sourcexml> may occur. R4.5
              Content Issue 2003.</xref>
          </li>
          <li>
            <xref href="../../../../Rosetta/common_newest/Rosetta_docinfo.overview-LxAdv-docinfo.overview.dita">2014-10-21 - docinfo:overview to doc:overview id-CCCC-10303: added to UK09 ditamap.</xref>
          </li>
          <li>
            <xref href="../../../../Rosetta/common_newest/Rosetta_lnlink_service_ATTACHMENT-LxAdv-ref.lnlink.dita">2014-10-15 - lnlink/@service="ATTACHMENT" to ref:lnlink id-CCCC-10396: Rewrote instructions, including the correction of a typographic error, and added an example.</xref>
          </li>
          <li>
            <xref href="../../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2014-09-16 - docinfo:assoc-links to doc:related-content id-CCCC-10284: Added a note to create
              <targetxml>proc:param/@name="attachment-smi"</targetxml> and
              <targetxml>proc:param/@value</targetxml> as these was there in the snippet but was
              missing in instruction and also added a note in to simplify in output
              <targetxml>ref:key-value/@value</targetxml>
            </xref>
          </li>
        </ul>
      
      </p>
    </section>
    <section>
      <title>Casedigest 7.10_PROD</title>
      <p>2014-08-22
      <ul>
        <li>
          <xref href="../../../../Rosetta/DITA-PAC/NZ07_Linxplus/NZ07DC_Linxplus-CaseDigest/Linxplus-CaseDigest_case.litigants.dita">2014-08-22 - case:litigants id-NZ07DC-23620: Updated target mapping and example for <sourcexml>case:party</sourcexml>, Applicable on NZ07 - Linxplus Casedigest.</xref>
        </li>
      </ul></p>
    </section>
    <section>
      <title>Casedigest 7.8_PROD</title>
      <p>2014-06-18
        <ul>
          <li>
            <xref href="../../../../Rosetta/DITA-PAC/NZ07_Linxplus/NZ07DC_Linxplus-CaseDigest/Linxplus-CaseDigest_case.courtcite.dita">2014-06-18 - case:courtcite id-NZ07DC-23610: Updated target mapping and snippet, Webteam #: 236888.</xref>
          </li>
          <li>
            <xref href="../../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2014-06-18 - docinfo:assoc-links to doc:related-content id-CCCC-10284: Corrected minor typos in <sourcexml>lnlink[@service="QUERYLINK"]</sourcexml> instructions.</xref>
          </li>
          <li>
            <xref href="../../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2014-06-13 - docinfo:assoc-links to doc:related-content id-CCCC-10284: Added instructions and an example for converting
              <sourcexml>lnlink[@service="QUERYLINK"]</sourcexml> to
              <targetxml>ref:lnlink</targetxml>.</xref>
          </li>
          <li>
            <xref href="../../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2014-04-28 - docinfo:assoc-links to doc:related-content id-CCCC-10284: Clarified instructions regarding
              <sourcexml>link</sourcexml> elements and added an example (#4) illustrating the special
              <sourcexml>text/link</sourcexml> conversion. No mapping rules where changed or
              added.</xref>
          </li>
        </ul>
      </p>
    </section>
    <section>
      <title>Casedigest 7.5_PROD</title>
      <p>2014-04-17
        <ul>
          <li>
            <xref href="../../../../Rosetta/DITA-PAC/NZ07_Linxplus/NZ07DC_Linxplus-CaseDigest/Linxplus-CaseDigest_case.courtcite.dita">2014-04-17 - case:courtcite: Created and WebTeam # 254568.</xref>
          </li>
          <li>
            <xref href="../../../../Rosetta/DITA-PAC/NZ07_Linxplus/NZ07DC_Linxplus-CaseDigest/Linxplus-CaseDigest_case.litigants.dita">2014-04-17 - case:litigants: Created and WebTeam # 254568.</xref>
          </li>
          <li>
            <xref href="../../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2014-04-03 - docinfo:assoc-links to doc:related-content: Illustrative changes. Examples modified. Mapping for
              <sourcexml>ci:cite</sourcexml> added to Example 3. Former Examples 4 and 5 removed to avoid
              confusion with special AU-NZ use case described in a separate module. R4.5 Content issue #1125,
              for AU-NZ, has prompted the changes for this general module.</xref>
          </li>
          <li>
            <xref href="../../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2014-03-25 - docinfo:assoc-links to doc:related-content: Added rule and example for
              <sourcexml>docinfo:assoc-links/docinfo:assoc-links-grp/ci:cite</sourcexml>. R4.5 Content issue
              #1125</xref>
          </li>
          <li>
            <xref href="../../../../Rosetta/common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2014-02-25 - remotelink to ref:crossreference: Updated instruction and created new example (#16) for handling <sourcexml>remotelink[@service="QUERY"]</sourcexml>. New instruction preserves pcdata but suppresses <sourcexml>remotelink</sourcexml> markup. Webstar #250335. Change applies immediately to all Pacific streams, and in the long run to all streams.</xref>
          </li>
          <li>
            <xref href="../../../../Rosetta/common_newest/Rosetta_Elements-LxAdv-Empty_Elements.dita">2014-01-16 - Suppress each empty element unless otherwise stated: Added list of
              elements to suppress if empty.</xref>
          </li>
        </ul>        
      </p>
    </section>
    
    <section>
      <title>Casedigest 7.5_PROD</title>
      <p>2014-01-07
        <ul>
          <li>
            <xref href="../../../DITA-PAC/NZ07_Linxplus/NZ07DC_Linxplus-CaseDigest/Linxplus-CaseDigest_abstract.dita">2014-01-07 - abstract: Updated target mapping and example, Webteam #: 248880, this change directly affects NZ07-Casedigest.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_docinfo.alt-renditions-LxAdv-doc.alt-renditions.dita">2013-12-17 - docinfo:alt-renditions/docinfo:alt-rendition to doc:alt-renditions/doc:alt-rendition: Added instruction and example for <sourcexml>docinfo:alt-rendition/lnlink</sourcexml>. (Webteam #247307)</xref>
          </li>
        </ul>
        </p>
    </section>
    
    <section>
      <title>Casedigest 7.5_PROD</title>
      <p>2013-12-10
        <ul>
          <li>
            <xref href="../../../DITA-PAC/NZ07_Linxplus/NZ07DC_Linxplus-CaseDigest/Linxplus-CaseDigest_case.info.dita">2013-12-10 - case:info: Updated target example, removed <targetxml>proc:process-ignore</targetxml> element, this change directly affects NZ07-Casedigest.</xref>
          </li>
          <li>
            <xref href="../../../DITA-PAC/NZ07_Linxplus/NZ07DC_Linxplus-CaseDigest/Linxplus-CaseDigest_references.dita">2013-12-10 - references: Updated target example, removed <targetxml>proc:process-ignore</targetxml> element, this change directly affects NZ07-Casedigest.</xref>
          </li>
        </ul>
      </p>
    </section>
    
    <section>
      <title>Casedigest 7.5_PROD</title>
      <p>2013-12-09
        <ul>
          <li>
            <xref href="../../../DITA-PAC/NZ07_Linxplus/NZ07DC_Linxplus-CaseDigest/Linxplus-CaseDigest_case.constituents.dita">2013-12-09 - case:constituents: Created new DITA, Webteam #: 247347, this change directly affects NZ07-Casedigest.</xref>
          </li>
        </ul>
      </p>
    </section>
    
    <section>
      <title>Casedigest 7.5_PROD</title>
      <p>2013-12-04
        <ul>
          <li>
            <xref href="../../../common_newest/Rosetta_p-LxAdv-p.dita">2013-12-04 - p to p: Updated target example when <sourcexml>p</sourcexml> or <sourcexml>p/@nl="0"</sourcexml> comes in <sourcexml>references</sourcexml>, this change directly affects NZ07.</xref>
          </li>
        </ul>
      </p>
    </section>
    
    <section>
      <title>Casedigest 7.5_PROD</title>
      <p>2013-11-21
      <ul>
        <li>
          <xref href="../../../common_newest/Rosetta_p-LxAdv-p.dita">2013-11-21 - p to p: Updated instruction and example <sourcexml>p</sourcexml> or <sourcexml>p/@nl="0"</sourcexml> comes in <sourcexml>references</sourcexml>, this change directly affects NZ07.</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_docinfo.alt-renditions-LxAdv-doc.alt-renditions.dita">2013-10-29 - docinfo:alt-renditions/docinfo:alt-rendition to doc:alt-renditions/doc:alt-rendition: Added instruction and example for UK06 Laws/Acts/Bills/Measures and UK07 Regulation place the text of <sourcexml>leg:officialname</sourcexml> in <targetxml>doc:alt-renditions/doc:alt-rendition/ref:lnlink/ref:marker</targetxml> (Webteam #243521)</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_docinfo.currencystatement-LxAdv-currencystatement.dita">2013-10-29 - docinfo:currencystatement to doc:docinfo/currencystatement: WebTeam #233318 created for pacific content stream inorder to suppress <sourcexml>docinfo:currencystatement</sourcexml> with in <sourcexml>leg:levelinfo</sourcexml> and <sourcexml>levelinfo</sourcexml>.</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_docinfo.overview-LxAdv-docinfo.overview.dita">2013-10-29 - docinfo:overview to doc:overview: WebTeam #233318 created for pacific content stream inorder to suppress <sourcexml>docinfo:overview</sourcexml> with in <sourcexml>leg:levelinfo</sourcexml> and <sourcexml>levelinfo</sourcexml>.</xref>
        </li>
      </ul>
      </p>
    </section>
    <section>
      <title>Casedigest 7.5_PROD</title>
      <p>2013-10-25
      <ul>
        <li>
          <xref href="../../../DITA-PAC/NZ07_Linxplus/NZ07DC_Linxplus-CaseDigest/Linxplus-CaseDigest_catchwordgrp.dita">2013-10-25 - catchwordgrp: Updated instruction and example of
            <sourcexml>catchwordgrp/catchwords/catchphrase</sourcexml>. Webteam # :
            243197.</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_p-LxAdv-p.dita">2013-10-25 - p to p: Added instruction and example <sourcexml>p/@nl="0"</sourcexml> comes in <sourcexml>references</sourcexml>.</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-10-23 - remotelink to ref:crossreference: Added Example when <sourcexml>remotelink</sourcexml> having child <sourcexml>emph</sourcexml>. Webteam # 239816</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_docinfo.doc-heading-LxAdv-dc.title.dita">2013-10-18 - docinfo:doc-heading to dc:title: Updated Instruction when <sourcexml>docinfo:doc-heading</sourcexml> contains word RULE: " or STATUTE: .</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_Elements-LxAdv-Empty_Elements.dita">2013-10-14 - Suppress each empty element unless otherwise stated: Changed antecedent to singular to match instructions.</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_deflist-LxAdv-deflist.dita">2013-10-14 - deflist to deflist: Added new rule to create a blank defitem/defdesc element after the defterm element.  WebTeam # 237242.</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_docinfo.authorattribution-LxAdv-dc.contributor.dita">2013-10-11 - docinfo:authorattribution to dc:contributor: Instruction added when <sourcexml>remotelink</sourcexml> as a child of <sourcexml>docinfo:authorattribution/contrib</sourcexml>. WebTeam # is 240252.</xref>
        </li>
      </ul></p>
    </section>
    
    <section>
      <title>Casedigest 7.5_PROD</title>
      <p>2013-10-09 <ul>
          <li>
            <xref href="../../../common_newest/Rosetta_remotelink-self-inter-document-link-LxAdv-intra-document-link.dita">2013-10-09 - Added new Instruction.</xref>
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
        </ul></p>
    </section>
    
    <section>
      <title>Casedigest 7.5_PROD</title>
      <p>2013-09-24 <ul>
        <li>
          <xref href="../../../DITA-PAC/NZ07_Linxplus/NZ07DC_Linxplus-CaseDigest/Linxplus-CaseDigest_case.parallelcite.dita">2013-09-24 - case:parallelcite: Sample updated to reflect the movement of element <targetxml>casedigest:caseinfo</targetxml> along with all its children to <targetxml>casedigest:caseinfo</targetxml>. 
            <targetxml>casedigest:caseinfo</targetxml> and its children will be placed within <targetxml>casedigest:head</targetxml> and no longer within  <targetxml>casedigest:body</targetxml>. WebTeam # 235783</xref>
        </li>
        <li>
          <xref href="../../../DITA-PAC/NZ07_Linxplus/NZ07DC_Linxplus-CaseDigest/Linxplus-CaseDigest_case.juris.dita">2013-09-24 - case:juris: Sample updated to reflect the movement of element <targetxml>casedigest:caseinfo</targetxml> along with all its children to <targetxml>casedigest:caseinfo</targetxml> . <targetxml>casedigest:caseinfo</targetxml> and its children
            will be placed within <targetxml>casedigest:head</targetxml> and no longer within  <targetxml>casedigest:body</targetxml>. WebTeam # 235783</xref>
        </li>
        <li>
          <xref href="../../../DITA-PAC/NZ07_Linxplus/NZ07DC_Linxplus-CaseDigest/Linxplus-CaseDigest_case.judges.dita">2013-09-24 - case:judges: Sample and XPath updated to reflect the movement of element <targetxml>casedigest:caseinfo</targetxml> along with all its children to <targetxml>casedigest:caseinfo</targetxml> . <targetxml>casedigest:caseinfo</targetxml> and its children
            will be placed within <targetxml>casedigest:head</targetxml> and no longer within  <targetxml>casedigest:body</targetxml>. WebTeam # 235783</xref>
        </li>
        <li>
          <xref href="../../../DITA-PAC/NZ07_Linxplus/NZ07DC_Linxplus-CaseDigest/Linxplus-CaseDigest_case.dates.dita">2013-09-24 - case:dates: XPath updated to reflect the movement of element <targetxml>casedigest:caseinfo</targetxml> along with all its children to <targetxml>casedigest:caseinfo</targetxml> . <targetxml>casedigest:caseinfo</targetxml> and its children
            will be placed within <targetxml>casedigest:head</targetxml> and no longer within  <targetxml>casedigest:body</targetxml>. WebTeam # 235783</xref>
        </li>
        <li>
          <xref href="../../../DITA-PAC/NZ07_Linxplus/NZ07DC_Linxplus-CaseDigest/Linxplus-CaseDigest_case.courtinfo.dita">2013-09-24 - case:courtinfo: Sample updated to reflect the movement of element <targetxml>casedigest:caseinfo</targetxml> along with all its children to <targetxml>casedigest:caseinfo</targetxml> . <targetxml>casedigest:caseinfo</targetxml> and its children
            will be placed within <targetxml>casedigest:head</targetxml> and no longer within  <targetxml>casedigest:body</targetxml>. WebTeam # 235783</xref>
        </li>
        <li>
          <xref href="../../../DITA-PAC/NZ07_Linxplus/NZ07DC_Linxplus-CaseDigest/Linxplus-CaseDigest_case.courtcode.dita">2013-09-24 - case:courtcode: Sample updated to reflect the movement of
            element <targetxml>casedigest:caseinfo</targetxml> along with all its children
            to <targetxml>casedigest:caseinfo</targetxml> .
            <targetxml>casedigest:caseinfo</targetxml> and its children will be placed
            within <targetxml>casedigest:head</targetxml> and no longer within
            <targetxml>casedigest:body</targetxml>. WebTeam # 235783</xref>
        </li>
        <li>
          <xref href="../../../DITA-PAC/NZ07_Linxplus/NZ07DC_Linxplus-CaseDigest/Linxplus-CaseDigest_case.casename.dita">2013-09-24 - case:casename: Sample updated to reflect the movement of element <targetxml>casedigest:caseinfo</targetxml> along with all its children to <targetxml>casedigest:caseinfo</targetxml> . <targetxml>casedigest:caseinfo</targetxml> and its children
            will be placed within <targetxml>casedigest:head</targetxml> and no longer within  <targetxml>casedigest:body</targetxml>. WebTeam # 235783</xref>
        </li>
        <li>
          <xref href="../../../DITA-PAC/NZ07_Linxplus/NZ07DC_Linxplus-CaseDigest/Linxplus-CaseDigest_case.info.dita">2013-09-24 - case:info: Updated the placement of element <targetxml>casedigest:caseinfo</targetxml> along with all its children. The conversion will be placed within
            <targetxml>casedigest:head</targetxml> and no longer within  <targetxml>casedigest:body</targetxml>. WebTeam # 235783</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_link-LxAdv-ref.lnlink.dita">2013-09-24 - link to ref:lnlink/@service="ATTACHMENT": Not a rule change. Modified examples to illustrate when <sourcexml>@status</sourcexml> suppressed and when retained.</xref>
        </li>
          <li>
            <xref href="../../../common_newest/Rosetta_docinfo.authorattribution-LxAdv-dc.contributor.dita">2013-09-16 - docinfo:authorattribution to dc:contributor: Instruction added for
              suppressing <sourcexml>docinfo:authorattribution/contrib</sourcexml> when it is child
              of <sourcexml>leg:levelinfo</sourcexml> and <sourcexml>levelinfo</sourcexml>.Affects
              all Pacific content streams. WebTeam # is 234193.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_docinfo.currencystatement-LxAdv-currencystatement.dita">2013-09-16 - docinfo:currencystatement to doc:docinfo/currencystatement: Instruction
              added for suppressing <sourcexml>docinfo:currencystatement</sourcexml> when it is
              child of <sourcexml>leg:levelinfo</sourcexml> and
              <sourcexml>levelinfo</sourcexml>.Affects all Pacific content streams. WebTeam # is
              234193.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_docinfo.overview-LxAdv-docinfo.overview.dita">2013-09-16 - docinfo:overview to doc:overview: Instruction added for suppressing
                <sourcexml>docinfo:overview</sourcexml> when it is child of
                <sourcexml>leg:levelinfo</sourcexml> and <sourcexml>levelinfo</sourcexml>.Affects
              all Pacific content streams. WebTeam # is 234193.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_docinfo.doc-heading-LxAdv-dc.title.dita">2013-09-03 - docinfo:doc-heading to dc:title: Updated Instruction when
                <sourcexml>docinfo:doc-heading</sourcexml> contains word "TITLE: " or NAME: or SITE:
              or SUBJECT:.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_text-When_Contains_Only_Wihitespace_Or_NBSP_Entity.dita">2013-08-29 - Converting text When it Contains Only Whitespace or NBSP Entity: Created
              per WebStar: WebTeam #223114</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_docinfo.authorattribution-LxAdv-dc.contributor.dita">2013-08-22 - docinfo:authorattribution to dc:contributor: Updated instruction and
              example when <sourcexml>person</sourcexml> is an child of
                <sourcexml>docinfo:authorattribution/contrib</sourcexml> and removed CR#
              DAAM2013080706295200. WebTeam # is 229509.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-08-22 - remotelink to ref:crossreference: Not a rule change. Modified Sample #10
              on <sourcexml>ci:cite/ci:content/remotelink</sourcexml>. Removed target attribute
                <targetxml>lnci:cite[@citeref]</targetxml> because value captured in
                <targetxml>ref:crossreference/ref:locator[@anchoridref]</targetxml>.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_link-LxAdv-ref.lnlink.dita">2013-08-21 - link to
              ref:lnlink/@service="ATTACHMENT": Added instruction for when to suppress
                <sourcexml>@status</sourcexml>.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_docinfo.authorattribution-LxAdv-dc.contributor.dita">2013-08-13 - docinfo:authorattribution to dc:contributor: Added instruction and
              example when <sourcexml>person</sourcexml> is an child of
                <sourcexml>docinfo:authorattribution/contrib</sourcexml> and CR#
              DAAM2013080706295200 has been created to add <targetxml>person:person</targetxml> to
              the content model of <targetxml>dc:contributor</targetxml>.WebTeam # is 229509</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_docinfo.lbu-meta-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta-scheme.dita">2013-08-12 - docinfo:lbu-meta to doc:legacy-metadata[@metadatasource="lbu-meta"]: We
              removed the docinfo:lbu-meta "include" list so now there is only a "drop" list.
              Anything not on the "drop" list should be passed through. Webteam 230557.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_docinfo-LxAdv-doc.metadata_doc.docinfo.dita">2013-08-09 - docinfo to doc:metadata/doc:docinfo: Added instruction for creating
                <targetxml>dc:date[@lnmeta:datetype="conversion-date"]</targetxml>. Previously,
              "conversion-date" was created only if "load-date" was not present. Going forward,
              conversion should always create "conversion-date". This is not a retroactive change.
              It should be applied only to streams developed after Aug. 9 2013.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_XML_Character_Entities-LxAdv-Unicode.dita">2013-08-08 - XML Character Entities to Unicode code points: This change does not
              represent a change to conversion but rather documentation of the existing
              behavior.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_date-Chof-docinfo.load-date-LxAdv-dc.date_lnmeta.datetype_load-date-scheme.dita">2013-08-07 - docinfo:load-date/date to dc:date[@lnmeta:datetype="load-date"]: Removed
              instructions for creating
                <targetxml>dc:date[@lnmeta:datetype="conversion-date"]</targetxml>.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_docinfo.lbu-meta-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta-scheme.dita">2013-08-02 - docinfo:lbu-meta to doc:legacy-metadata[@metadatasource="lbu-meta"]:
              Added <sourcexml>@name="selection_criteria_variant"</sourcexml> to the list of values
              in docinfo:metaitem/@name that should be retained. And added a example.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_docinfo.doc-heading-LxAdv-dc.title.dita">2013-08-01 - docinfo:doc-heading to dc:title: For Canada Content streams: Added a
              note and examples, when <sourcexml>docinfo:doc-heading</sourcexml> contains
                <sourcexml>nl</sourcexml> as a child element.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_docinfo.doc-heading-LxAdv-dc.title.dita">2013-07-30 - docinfo:doc-heading to dc:title: Added Instruction when
                <sourcexml>docinfo:doc-heading</sourcexml> contains word "TITLE: " or NAME: .</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2013-07-19 - docinfo:assoc-links to doc:related-content: Added rule mapping attribute
                <sourcexml>remotelink[@service="DOC-ID"]</sourcexml> to
                <targetxml>ref:lnlink[@service="DOCUMENT"]</targetxml>
            </xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_docinfo-LxAdv-doc.metadata_doc.docinfo.dita">2013-07-18 - docinfo to doc:metadata/doc:docinfo: Added
                <sourcexml>@excludefromalerts</sourcexml> as one of the
                <sourcexml>docinfo</sourcexml> attributes to carry through</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_docinfo.doc-lang-and-doc-country-LxAdv-ROOT_xml.lang.dita">2013-07-16 - docinfo:doc-lang and docinfo:doc-country to @xml:lang and @xml:ID:
              Instruction narrative edited for language; no changes to mappings, no impact to
              stylesheets.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_docinfo.authorattribution-LxAdv-dc.contributor.dita">2013-06-25 - docinfo:authorattribution to dc:contributor: added to AU and NZ ditamap
              for content enrichment</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_docinfo.currencystatement-LxAdv-currencystatement.dita">2013-06-25 - docinfo:currencystatement to doc:docinfo/currencystatement: added to AU
              and NZ ditamap for content enrichment</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_docinfo.overview-LxAdv-docinfo.overview.dita">2013-06-25 - docinfo:overview to doc:overview: added to AU and NZ ditamap for content
              enrichment</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_copyright-LxAdv-copyright.dita">2013-06-17 -
              copyright to copyright: Added an example when <sourcexml>copyright-holder</sourcexml>
              is not present in the source.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-06-03 - remotelink to ref:crossreference: Updated the Target XML 2 by removing
              the <targetxml>@crossreferencetype</targetxml> for Canada example.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_docinfo.lbu-meta-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta-scheme.dita">2013-05-31 - docinfo:lbu-meta to doc:legacy-metadata[@metadatasource="lbu-meta"]:
              Added "document-type" to the list of values in docinfo:metaitem/@name that should be
              retained.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_docinfo.versioninfo-LxAdv-doc.versioninfo-scheme.dita">2013-05-24 - docinfo:versioninfo to doc:versioninfo: Instructions added for handling
              empty use cases of <sourcexml>docinfo:versioninfo</sourcexml> for Canada content
              stream.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_link-LxAdv-ref.lnlink.dita">2013-05-24 - link to
              ref:lnlink/@service="ATTACHMENT": Updated instruction for handling of link when smi is
              present and some of the verbiage is changed.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_docinfo-LxAdv-doc.metadata_doc.docinfo.dita">
              2013-05-16 - docinfo to doc:metadata/doc:docinfo: Fixed typo updating urn:contentitem to urn:contentItem</xref>
          </li>
        </ul>
      </p>
    </section>

    <section>
      <title>casedigest 7.3 PROD</title>
      <p>2013-05-14<ul>
          <li>
            <xref href="../../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-05-08 - remotelink to ref:crossreference: Extended the list of allowable values
              for image handling.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_link-LxAdv-ref.lnlink.dita">2013-05-02 - link
              to ref:lnlink/@service="ATTACHMENT": Some of the verbiage is changed and updated
              target example to if the SMI is present then a
                <targetxml>ref:lnlink/@status</targetxml> attribute is set to “valid”.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_docinfo.alt-renditions-LxAdv-doc.alt-renditions.dita">2013-05-01 - docinfo:alt-renditions/docinfo:alt-rendition to
              doc:alt-renditions/doc:alt-rendition: Updated instructions and target example per
              latest Apollo markup.</xref>
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
            <xref href="../../../common_newest/Rosetta_link-LxAdv-ref.lnlink.dita">2013-05-01 - link
              to ref:lnlink/@service="ATTACHMENT": Updated instructions and target example per
              latest Apollo markup.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_bodytext-link-LxAdv-seclaw.bodytext-p-text-ref.lnlink.dita">2013-05-01 - bodytext/link to seclaw:bodytext/p/text/ref:lnlink: Updated instructions
              and target example per latest Apollo markup.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2013-05-01 -
              ci.cite to lnci.cite: Removed special rule for
                <sourcexml>ci:cite/ci:content/remotelink</sourcexml> which required suppression of
                <sourcexml>ci:cite/ci:content</sourcexml> tags. The elements are now retained and
              convert according to common rules.</xref>
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
            <xref href="../../../common_newest/Rosetta_docinfo.custom-metafields-LxAdv-SUPPRESS.dita">2013-03-20 - docinfo:custom-metafields is SUPPRESSED: Updated the instruction of
              handling <sourcexml>docinfo:custom-metafield[@name="dpsi"]</sourcexml> markup in CA
              content stream.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_docinfo.doc-id-LxAdv-dcidentifier_lnmetaidentifier-scheme.dita">2013-03-20 - docinfo:doc-id to dc:identifier[@lnmeta:identifier-scheme]: Updated the
              information on handling the situation when
                <sourcexml>docinfo:dpsi[@id-string]</sourcexml> is absent with instructions to get
              the dpsi from
                <sourcexml>docinfo/docinfo:custom-metafields/docinfo:custom-metafield[@name="dpsi"]</sourcexml>.</xref>
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
            <xref href="../../../common_newest/Rosetta_docinfo.alt-renditions-LxAdv-doc.alt-renditions.dita">2013-02-26 - docinfo:alt-renditions/docinfo:alt-rendition to
              doc:alt-renditions/doc:alt-rendition: Updated target example per project
              requirement.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_link-LxAdv-ref.lnlink.dita">2013-02-26 - link
              to ref:lnlink/@service="ATTACHMENT": Updated target example per project
              requirement.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_bodytext-link-LxAdv-seclaw.bodytext-p-text-ref.lnlink.dita">2013-02-26 - bodytext/link to seclaw:bodytext/p/text/ref:lnlink: Updated target
              example per project requirement.</xref>
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
            <xref href="../../../common_newest/Rosetta_emph-LxAdv-emph.dita">2013-01-08 - emph to
              emph: Added note for handling <targetxml>emph/emph</targetxml> has the same
                <targetxml>@typestyle</targetxml> value.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_docinfo.custom-metafields-LxAdv-SUPPRESS.dita">2013-01-07 - docinfo:custom-metafields is SUPPRESSED: Updated the instruction of
              handling <sourcexml>docinfo:custom-metafield[@searchtype="CITED-COUNT"]</sourcexml>
              markup in CA content stream.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2012-11-29 -
              ci.cite to lnci.cite: Updated instructions to drop all
              <sourcexml>@spanref</sourcexml>.</xref>
          </li>
        </ul>
      </p>
    </section>

    <section>
      <title>casedigest 5.7 PROD</title>
      <p>2012-11-30<ul>
          <li>Added Instruction for multiple <targetxml>ci:cite</targetxml> in
              <targetxml>case:parallelcite</targetxml>.</li>
        </ul></p>
    </section>
    <section>
      <p>2012-11-07<ul>
          <li>Removed Instruction and example of <sourcexml>dig:body/bodytext</sourcexml> from
            Linxplus-CaseDigest_dig_body.dita.</li>
          <li>Removed reference of Rosetta_endnote-LxAdv-endnote.dita.</li>
          <li>Removed reference of <sourcexml>heading</sourcexml> element.</li>
          <li>Removed reference of <sourcexml>h</sourcexml> element.</li>
          <li>Removed reference of <sourcexml>refpt</sourcexml> element.</li>
          <li>Removed reference of <sourcexml>blockquote</sourcexml> element.</li>
        </ul></p>
    </section>
    <section>
      <p>2012-10-11<ul>
          <li>Removed CR #: DARG2012092707533400 from Linxplus-CaseDigest_abstract.dita.</li>
          <li>Removed CR #: DARG2012092403144700 from Linxplus-CaseDigest_references.dita.</li>
          <li>Removed CR #: DARG2012092403210400 from Linxplus-CaseDigest_case.info.dita.</li>
          <li>Removed CR #: DARG2012100115545600 from Linxplus-CaseDigest_dig_body.dita.</li>
        </ul></p>
    </section>
    <section>
      <p>2012-10-05<ul>
          <li>Change log created.</li>
        </ul></p>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\NZ07_Linxplus\NZ07DC_Linxplus-CaseDigest\Linxplus-CaseDigest_ChangeLog.dita  -->
	<!--<xsl:message>Linxplus-CaseDigest_ChangeLog.xsl requires manual development!</xsl:message> -->

</xsl:stylesheet>