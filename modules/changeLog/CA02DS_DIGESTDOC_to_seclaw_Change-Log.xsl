<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:ci="http://www.lexis-nexis.com/ci" xmlns:dig="http://www.lexis-nexis.com/glp/dig" xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:caseinfo="http://www.lexisnexis.com/xmlschemas/content/legal/case-information/1/" xmlns:casesum="http://www.lexisnexis.com/xmlschemas/content/legal/case-summary/1/" xmlns:courtcase="http://www.lexisnexis.com/xmlschemas/content/legal/courtcase/1/" xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns:decision="http://www.lexisnexis.com/xmlschemas/content/legal/decision/1/" xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" xmlns:jurisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/jurisdiction-info/1/" xmlns:lnci="http://www.lexisnexis.com/xmlschemas/content/shared/citations/1/" xmlns:proc="http://www.lexisnexis.com/xmlschemas/content/shared/process-elements/1/" xmlns:pubinfo="http://www.lexisnexis.com/xmlschemas/content/shared/publication-info/1/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" xmlns:seclaw="http://www.lexisnexis.com/xmlschemas/content/legal/secondary-law/1/" version="2.0" exclude-result-prefixes="dita case ci dig docinfo leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Change-Log">
  <title>Change Log</title>
  <body>
    <section>
      <title>seclaw 8.6_PROD</title>
      <p>2015-10-01:
        <ul><li>
            <xref href="../CA02DS_DIGESTDOC_to_seclaw/dig.cite.dita">2015-10-01 - dig:cite id-CA02DS-12829: Added a note for removing
                <sourcexml>emph</sourcexml> markup in target conversion when input document is
              having a Xpath-"<sourcexml>ci:content/ci:span/emph</sourcexml>". (<b>WebStar
                #6273159</b>)</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2015-09-15 - ci.cite to lnci.cite id-CCCC-10268: Updated instruction to suppressed the attribute
              <sourcexml>@type</sourcexml> with value "legref" in target.
              Applicable on NZ Regulation and NZ Act from services [Webstar
              #6245139].</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2015-09-11 - docinfo:assoc-links to doc:related-content id-CCCC-10284: Correction to target XPATHs for 
              <sourcexml>lnlink[@service="QUERYLINK"]</sourcexml>, <sourcexml>lnlink[@service="ATTACHMENT"]</sourcexml>, 
              and <sourcexml>lnlink[@service="TRAVERSE"]</sourcexml>
              to add <targetxml>doc:related-content-item/doc:related-content-link</targetxml> before the existing 
              <targetxml>ref:lnlink</targetxml> element in the XPATH.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2015-09-11 - docinfo:assoc-links to doc:related-content id-CCCC-10284: Added instruction for handling of
              <sourcexml>lnlink[@service="URL"]</sourcexml> inside <sourcexml>docinfo:assoc-links</sourcexml> or
              <sourcexml>docinfo:assoc-links-grp</sourcexml>.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_docinfo.doc-heading-LxAdv-dc.title.dita">2015-09-06 - docinfo:doc-heading to dc:title id-CCCC-10292: Modified only the special rule for CA14
              trademarks. No longer mapping (MC) to entity, the unicode code point is not
              currently supported. The pcdata (MC) is retained instead. RFA 145. CA14
              only.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2015-09-03 - docinfo:assoc-links to doc:related-content id-CCCC-10284: Minor correction to bullet heading text for children of 
              <sourcexml>docinfo:assoc-links</sourcexml> or <sourcexml>docinfo:assoc-links-grp</sourcexml> to change from 
              <sourcexml>lnlink/@service="QUERYLINK"</sourcexml> to be <sourcexml>lnlink[@service="QUERYLINK"]</sourcexml> and 
              <sourcexml>lnlink/@service="ATTACHMENT"</sourcexml> to be <sourcexml>lnlink[@service="ATTACHMENT"]</sourcexml>.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2015-09-03 - docinfo:assoc-links to doc:related-content id-CCCC-10284: Added <targetxml>doc:related-content-item/@content-type="external-content-location"</targetxml> 
              when the parent <sourcexml>docinfo:assoc-links[@assoc-content="external-content-location"]</sourcexml> exists, for children: 
              <sourcexml>remotelink[@service="DOC-ID"]</sourcexml>, <sourcexml>remotelink[@href]</sourcexml>, 
              <sourcexml>lnlink[@service="TRAVERSE"]</sourcexml> and <sourcexml>ci:cite</sourcexml>.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2015-09-03 - docinfo:assoc-links to doc:related-content id-CCCC-10284: Added instruction for handling of
              <sourcexml>lnlink[@service="TRAVERSE"]</sourcexml> inside <sourcexml>docinfo:assoc-links</sourcexml> or
              <sourcexml>docinfo:assoc-links-grp</sourcexml>.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_CAN_docinfo.custom-metafields-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta.meta.metaitem.dita">2015-08-13 - docinfo:custom-metafields to doc:legacy-metadata[@metadatasource="lbu-meta"]/meta/metaitem id-CCCC-10251: For Single Document Retrieval (SDR), <sourcexml>"actFirstDoc"</sourcexml> triggers output of an additional <targetxml>ref:cite4thisresource/lnci:cite/@type="act"</targetxml> where target <targetxml>lnci:content</targetxml> is copied from  <sourcexml>leg:officialnum</sourcexml>. Affects CA05,CA06,CA07,CA08. Canada CR506 as related to WT 305581.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_CAN_docinfo.custom-metafields-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta.meta.metaitem.dita">2015-07-29 - docinfo:custom-metafields to doc:legacy-metadata[@metadatasource="lbu-meta"]/meta/metaitem id-CCCC-10251: Update  
              <targetxml>metaitem[@name="effect-date"]/value</targetxml> in the example to have a 
              real date, "19950505", instead of all zeroes, "00000000". R4.5 Canada CR458.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_CAN_docinfo.custom-metafields-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta.meta.metaitem.dita">2015-07-28 - docinfo:custom-metafields to doc:legacy-metadata[@metadatasource="lbu-meta"]/meta/metaitem id-CCCC-10251: Canada Sort Option for Point in Time Legislation. 
              <targetxml>metaitem[@name="effect-date"]/value</targetxml> shall have simple digit date validation
              and dashes added to separate YYYY-MM-DD. Affects CA05, 06, 07, 08. R4.5 Canada CR458.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2015-07-16 - docinfo:assoc-links to doc:related-content id-CCCC-10284: Updated conversion for handling of
              <sourcexml>ci:cite/@normprotocol</sourcexml>, <targetxml>proc:param[@name="countrycode"]</targetxml>; added
              instructions for <sourcexml>docinfo:assoc-resource</sourcexml>.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2015-06-24 - remotelink to ref:crossreference id-CCCC-10465: Added clarification note about url, @normval, and @hrefclass. Webstar 302055.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2015-05-22 - docinfo:assoc-links to doc:related-content id-CCCC-10284: Clarification. Not a new rule or target. Within rules handling
              <sourcexml>remotelink[@service="DOC-ID"]</sourcexml>, added statement to create containing elements
              <targetxml>ref:locator/ref:locator-key</targetxml> which hold <targetxml>ref:key-name</targetxml> and
              <targetxml>ref:key-value</targetxml>. The xpath is controlled by schema and so conversions have been
              correct. CI examples were correct. The narrative rule is now explicit. R4.5 Content Issue 2326.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2015-05-22 - remotelink to ref:crossreference id-CCCC-10465: Added an instruction to explicitly indicate <sourcexml>remotelink/@status</sourcexml> is always dropped (suppressed). This is a very low-priority change and has been added for technical correctness, particularly with respect to new CIs. Existing scripts do not have to implement this change unless needed since prior to the change <targetxml>remotelink/@status</targetxml> handling was not explicitly specified.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_docinfo.doc-heading-LxAdv-dc.title.dita">2015-05-05 - docinfo:doc-heading to dc:title id-CCCC-10292: Added note to convert (TM), (R), and (MC) to
              unicode code points. DB # 45. Applicable to CA14.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_docinfo-LxAdv-doc.metadata_doc.docinfo.dita">2015-04-14 - docinfo to doc:metadata/doc:docinfo id-CCCC-10282: Remove bullet icon in sub nested list for
              handling Indentation isssue.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_docinfo.hier-LxAdv-doc.hier.dita">2015-03-25 - docinfo:hier to doc:hier id-CCCC-10297: Added note with rule for
              <sourcexml>title/num</sourcexml>. Suppress <sourcexml>num</sourcexml> tag but
              output content. Applicable for CA09 only. RFA 2249.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_CAN_docinfo.custom-metafields-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta.meta.metaitem.dita">2015-03-19 - docinfo:custom-metafields to doc:legacy-metadata[@metadatasource="lbu-meta"]/meta/metaitem id-CCCC-10251: Within rules for First Act Doc, made the word
              act lower-case in source value to reflect recent data change. Formerly
              <sourcexml>"ActFirstDoc"</sourcexml>, now
              <sourcexml>"actFirstDoc"</sourcexml>. Affects CA05, 06, 07, 08. R4.5 RFA #2240.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_pgrp-LxAdv-pgrp.dita">2015-03-17 - pgrp to pgrp id-CCCC-10431: An attribute <targetxml>@inline</targetxml>
              get added with <targetxml>desig</targetxml> element even when the
              source<sourcexml>pnum</sourcexml> is not having that
              attribute<sourcexml>@inline</sourcexml> Applicable on CA12 only.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2015-03-17 - ci.cite to lnci.cite id-CCCC-10268: An attribute <targetxml>@inline</targetxml> get added with <targetxml>desig</targetxml> element even when the source<sourcexml>pnum</sourcexml> is not having that attribute<sourcexml>@inline</sourcexml> Applicable on CA12 only.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_pgrp-LxAdv-pgrp.dita">2015-02-24 - pgrp to pgrp id-CCCC-10431: Example updated as per new rule an attribute
              <targetxml>@inline</targetxml>get added with
              <targetxml>desig</targetxml>element when the source<sourcexml>pnum</sourcexml>is
              not having that attribute<sourcexml>@inline</sourcexml>
            </xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2015-02-24 - ci.cite to lnci.cite id-CCCC-10268: Example updated as per new rule an attribute <targetxml>@inline</targetxml>get added with <targetxml>desig</targetxml>element when the source<sourcexml>pnum</sourcexml>is not having that attribute<sourcexml>@inline</sourcexml>
            </xref>
          </li></ul>
      </p>
    </section>
    <section>
      <title>seclaw 8.2_PROD</title>
      <p>2015-02-23:
        <ul>
            <li>
               <xref href="../../../common_newest/LxAdv_CA-ref.cite4thisresource-LxAdv-ref.parallelcite-doc.related-content.dita">2015-02-23 - ref:cite4thisresource with ref:parallelcite and doc:related-content id-CCCC-10497: Updated Scenario for CA02, when "DOC-ID" used with "DOCUMENT" service, <targetxml>proc:param/@name="targetdoclang"</targetxml> should be included. RFA# 2201, Applicable on CA02.</xref>
            </li>
        </ul>
      </p>
      <p>2015-02-19:
        <ul>
            <li>
               <xref href="../../../common_newest/LxAdv_CA-ref.cite4thisresource-LxAdv-ref.parallelcite-doc.related-content.dita">2015-02-19 - ref:cite4thisresource with ref:parallelcite and doc:related-content id-CCCC-10497: Updated Scenario for CA02, "DOC-ID" should be used with "DOCUMENT" service. RFA# 1873, Applicable on CA02.</xref>
            </li>
        </ul>
      </p>
      <p>2015-02-09:
        <ul>
          <li>
            <xref href="case.juris.dita">2015-02-05 - case:juris id-CA02DS-12824: Remove UK PGUID value from table (CA01, CA02 (all streams), CA03 and CA04). R45 RFA #2133.</xref>
          </li>
        </ul>
      </p>
      <p>2015-02-02:
        <ul>
          <li>
            <xref href="case.juris.dita">2015-02-02 - case:juris id-CA02DS-12824: Added instructions to apply CA in guid for country code "UK". Db issue #407 </xref>
          </li>
        </ul>
      </p>
      <p>2014-01-30:
        <ul>
          <li>
            <xref href="case.juris.dita">2015-01-30 - case:juris id-CA02DS-12824: Updated "The province codes with PGUID codes for Country" table when case:juris with country code "UK". Db issue #407 </xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_CAN_docinfo.custom-metafields-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta.meta.metaitem.dita">2015-01-27 - docinfo:custom-metafields to doc:legacy-metadata[@metadatasource="lbu-meta"]/meta/metaitem id-CCCC-10251: For CA05,CA06,CA07 and CA08 Existing topic
              CA first document in "current" material (id-CCCC-10517) removed and
              added a note here to handle firstActDocument</xref>
          </li>
          <li>
            <xref href="../../../common_newest/LxAdv_CA-ref.cite4thisresource-LxAdv-ref.parallelcite-doc.related-content.dita">2015-01-26 - ref:cite4thisresource with ref:parallelcite and doc:related-content id-CCCC-10497: Update proc:param name="normprotocol" from value="jcite" to value="CAEditorial"; for CA01, CA02, CA04, CA05, CA06, CA07 and CA08. R4.5 RFA #1873.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_docinfo.hier-LxAdv-doc.hier.dita">2015-01-23 - docinfo:hier to doc:hier id-CCCC-10297: Added note to convert <sourcexml>docinfo:hierlev/@exclude-from-displayunits="true"</sourcexml> into
              <targetxml>doc:hier/@includeintoc="false"</targetxml>.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2015-01-19 - docinfo:assoc-links to doc:related-content id-CCCC-10284: For CA05 - CA08- Updated Instruction and
              included "<targetxml>related-content-grp</targetxml>" markup inside the target Example
              8 for conversion of QUERY link to doc:related-content.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2015-01-15 - docinfo:assoc-links to doc:related-content id-CCCC-10284: For CA03- Convert the QUERY link to doc:related-content. Refer Example 10. R4.5 RFA #2099.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2015-01-13 - docinfo:assoc-links to doc:related-content id-CCCC-10284: For CA05 - CA08 Conversion Needs to split
              multiple ORs into a separate <targetxml>doc:related-content-item</targetxml>. Refer
              Example 9</xref>
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
            <xref href="../../../common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2015-01-02 - docinfo:assoc-links to doc:related-content id-CCCC-10284: Added
              <sourcexml>docinfo:assoc-links/remotelink[@service="QUERY"]</sourcexml> and
              <sourcexml>docinfo:assoc-links-grp/remotelink[@service="QUERY"]</sourcexml> to generate
              <targetxml>doc:related-content</targetxml> markup. Applicable on CA05.</xref>
          </li>
        </ul>
      </p>
    </section>
    <section>
      <title>seclaw 8.1_PROD</title>
      <p>2014-12-23:
      <ul>
        <li>
          <xref href="refpt_-Chof-heading_title-LxAdv-ref.anchor.dita">2014-12-23 - refpt child of heading/title to ref:anchor: Created. Db issue #393</xref>
        </li>
        <li>
          <xref href="../../../common_newest/LxAdv_CA-ref.cite4thisresource-LxAdv-ref.parallelcite-doc.related-content.dita">2014-12-19 - ref:cite4thisresource with ref:parallelcite and doc:related-content id-CCCC-10497: Updated citation from [2000] A.C.F. No.
            1985 to [2000] A.C.F. no 1985, for CA01.</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2014-12-19 - docinfo:assoc-links to doc:related-content id-CCCC-10284: Updated target mapping for CA05 for handling
            <sourcexml>docinfo:assoc-links/remotelink[@service="QUERY"]</sourcexml>. Applicable on CA05.</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2014-12-17 - docinfo:assoc-links to doc:related-content id-CCCC-10284: Added a Note for CA05, CA06, CA07 and CA08 for handling
            <sourcexml>docinfo:assoc-links-grp/remotelink[@service="QUERY"]
            </sourcexml>
          </xref>
        </li>
        <li>
          <xref href="../../../common_newest/LxAdv_CA-ref.cite4thisresource-LxAdv-ref.parallelcite-doc.related-content.dita">2014-12-16 - ref:cite4thisresource with ref:parallelcite and doc:related-content id-CCCC-10497: Added note for conversion of short term
            citations and it's come any combinations with the mandatory (primary or
            alternative citation) citations then short terms ciatation should be converetd
            according to short table. Applicable on CA06-CA07.</xref>
        </li>
        <li>
          <xref href="../../../common_newest/LxAdv_CA-ref.cite4thisresource-LxAdv-ref.parallelcite-doc.related-content.dita">2014-12-16 - ref:cite4thisresource with ref:parallelcite and doc:related-content id-CCCC-10497: Added note to identify primary and alternate language when primary and alternate citation are same. Applicable on CA05-CA08.</xref>
        </li>
      </ul>
      </p>
      <p>2014-12-15:
        <ul>
          <li>
            <xref href="case.juris.dita">2014-12-15 - case:juris id-CA02DS-12824: Updated mapping. Db R4.5 issue #2047</xref>
          </li>
        </ul>
      </p>
      <p>2014-12-04
        <ul>
          <li>
            <xref href="case.parallelcite.dita">2014-12-04 - case:parallelcite id-CA02DS-12825: Webteam# 284027 - Xpath clarification for ref:parallelcite  DB item # 2058</xref>
          </li>
          <li>
            <xref href="case.reportercite.dita">2014-12-04 - case:reportercite id-CA02DS-12826: Webteam# 284027 - Xpath clarification for ref:parallelcite DB item # 2058</xref>
          </li>
        </ul>
      </p>
    </section>
    <section>
      <title>seclaw 8.1_PROD</title>
      <p>2014-11-18
        <ul>
          <li>
            <xref href="case.dates.dita">2014-11-18 - case:dates id-CA02DS-12817: updated example for ln.user-displayed="false" with <sourcexml>decision:argueddate</sourcexml>DB item #
              366</xref>
          </li>
          <li>
            <xref href="case.decisionsummary.dita">2014-11-18 - case:decisionsummary id-CA02DS-12818: updated instructions to handle "HELD ():" and "HELD []:" ... P4 Issue
              #345</xref>
          </li>
          <li>
            <xref href="../../../common_newest/LxAdv_CA-ref.cite4thisresource-LxAdv-ref.parallelcite-doc.related-content.dita">2014-11-18 - ref:cite4thisresource with ref:parallelcite and doc:related-content id-CCCC-10497: For CA02- Updated instructions for "proc:param name="targetdoclang" value="" for both English and French. P4, Db issue #365</xref>
          </li>
          <li>
            2014-11-18 - case:courtcode/@ln.user-displayed id-CCCC-10257: Removed this section P4, Db
              issue #364
          </li>
          <li>
            2014-11-18 - abbrvname/@ln.user-displayed="false" id-CCCC-10220: Removed this section P4, Db issue
              #364
          </li>
        </ul>
      </p>
    </section>
    <section>
      <title>seclaw 8.1_PROD</title>
      <p>2014-11-11
        <ul>
          <li>
            <xref href="case.courtcode.dita">2014-11-11 - case:courtcode id-CA02DS-12813: Updated the mapping for
              <sourcexml>case:courtcode</sourcexml>, schema issue for
              jurisinfo:alternatecourtcode....Db issue #361 </xref>
          </li>
          <li>
            <xref href="../../../common_newest/LxAdv_CA-ref.cite4thisresource-LxAdv-ref.parallelcite-doc.related-content.dita">2014-11-06 - ref:cite4thisresource with ref:parallelcite and doc:related-content id-CCCC-10497: Added some english to french terms for
              translation of the citation and  also update c. to ch.   in  CA06 and
              CA07 table</xref>
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
        </ul>
      </p>
    </section>
    <section>
      <title>seclaw 8.1_PROD</title>
      <p>2014-10-22<ul>
        <li>
          <xref href="abbrvname.dita">2014-10-22 - abbrvname id-CA02DS-12807: Updated CI for <sourcexml>abbrvname</sourcexml> to also be placed in
                        <targetxml>jurisinfo:alternatecourtcode@alternatecourtcode</targetxml>...R4.5 Db issue #1987</xref>
        </li>
        <li>
          <xref href="case.decisionsummary.dita">2014-10-20 - case:decisionsummary id-CA02DS-12818: Added example to handle text coming with HELD: ... P4 Issue
            #345</xref>
        </li>
        <li>
          <xref href="../../../common_newest/LxAdv_CA-ref.cite4thisresource-LxAdv-ref.parallelcite-doc.related-content.dita">2014-10-20 - ref:cite4thisresource with ref:parallelcite and doc:related-content id-CCCC-10497: Updated the old citation inside the table for
            CA08 stream i.e. appendice II to Appendix II.</xref>
        </li>
        <li>
          <xref href="../../../common_newest/LxAdv_CA-ref.cite4thisresource-LxAdv-ref.parallelcite-doc.related-content.dita">2014-10-20 - ref:cite4thisresource with ref:parallelcite and doc:related-content id-CCCC-10497: Updated instruction to remove english version and add french version. P4 Db issue #324</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_title-LxAdv-title.dita">2014-10-07 - title to title id-CCCC-10479: Removed instruction and example to convert attribute <sourcexml>@searchtype="DIGEST-SUBJECT"</sourcexml>. Applicable to CA12.</xref>
        </li>
      </ul></p>
    </section>
    <section>
      <title>seclaw 8.1_PROD</title>
      <p>2014-10-06<ul>
        <li>
          <xref href="case.dates.dita">2014-10-06 - case:dates id-CA02DS-12817: case:decisiondate should not output
            argueddate/date-text if <sourcexml>ln.user-displayed="false“</sourcexml>. Removed
            instructions for invalid date as LBU has remediated the issue.DB item #
            337</xref>
        </li>
        <li>
          <xref href="../../../common_newest/LxAdv_CA-ref.cite4thisresource-LxAdv-ref.parallelcite-doc.related-content.dita">2014-10-01 - ref:cite4thisresource with ref:parallelcite and doc:related-content id-CCCC-10497: Added the new citation inside the table for
            CA08 stream i.e. Annexe abrogratives to Repeal
            Schedules.</xref>
        </li>
        <li>
          <xref href="../../../common_newest/LxAdv_CA-ref.cite4thisresource-LxAdv-ref.parallelcite-doc.related-content.dita">2014-10-01 - ref:cite4thisresource with ref:parallelcite and doc:related-content id-CCCC-10497: Updated CA05 table for "s." to
            "art." and "art." to "s." for citation "L.R.C."
            and "R.S.C.". Also updated the citation "L.N.B." to generate ch. to c.. Applicable on CA05.</xref>
        </li>
        <li>
          <xref href="../../../common_caselaw/Rosetta_refnum.refnumtype.UCN-LxAdv_ref.groupid.dita">2014-09-26 - refnum[@refnumtype="UCN"] - ref:groupid id-CCCC-12047: updated Instructions. Db issue# 1913</xref>
        </li>
      </ul></p>
    </section>
    <section>
      <title>seclaw 8.1_PROD</title>
      <p>2014-09-25<ul>
        <li>
          <xref href="../../../common_newest/LxAdv_CA-ref.cite4thisresource-LxAdv-ref.parallelcite-doc.related-content.dita">2014-09-23 - ref:cite4thisresource with ref:parallelcite and doc:related-content id-CCCC-10497: Added English <sourcexml>Enactment
            Clause</sourcexml> To <targetxml>Formule d'édiction </targetxml>,
            <sourcexml>Long Title</sourcexml> To <targetxml>Titre intégral</targetxml>,
            <sourcexml>Short Title</sourcexml> To <targetxml>Titre
              abrégé</targetxml>,<sourcexml>Preamble</sourcexml> To <targetxml>Préambule
              </targetxml> and vice versa in CA06-CA07 Table</xref>
        </li>
      </ul></p>
    </section>
    
    <section>
      <title>seclaw 8.0_PROD</title>
      2014-09-18
      <ul>
        <li>
          <xref href="../../../common_caselaw/Rosetta_refnum.refnumtype.UCN-LxAdv_ref.groupid.dita">2014-09-17 - refnum[@refnumtype="UCN"] - ref:groupid id-CCCC-12047: updated example.
            P4- Db issue# 338</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2014-09-16 - docinfo:assoc-links to doc:related-content id-CCCC-10284: Added a note to create
            <targetxml>proc:param/@name="attachment-smi"</targetxml> and
            <targetxml>proc:param/@value</targetxml> as these was there in the snippet but was
            missing in instruction and also added a note in to simplify in output
            <targetxml>ref:key-value/@value</targetxml>
          </xref>
        </li>
      </ul>
    </section>
    <section>
      <title>seclaw 8.0_PROD</title>
      2014-09-15
      <ul>
        <li>
          <xref href="../../../common_caselaw/Rosetta_refnum.refnumtype.UCN-LxAdv_ref.groupid.dita">2014-09-15 - refnum[@refnumtype="UCN"] - ref:groupid id-CCCC-12047: update target mapping of
            <sourcexml>refnum[@refnumtype="UCN"]</sourcexml>
            from Head to <targetxml>doc:docinfo/doc:membership/ref:groupid[@group-type="ucn-1"]</targetxml>. Db issue #1893</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_CAN_docinfo.custom-metafields-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta.meta.metaitem.dita">2014-09-15 - docinfo:custom-metafields to doc:legacy-metadata[@metadatasource="lbu-meta"]/meta/metaitem id-CCCC-10251: update target mapping of
            <sourcexml>docinfo:custom-metafields/docinfo:custom-metafield[@name="act-id"]</sourcexml>
            from Head to <targetxml>doc:docinfo
              doc-content-country/doc:membership/ref:groupid[@group-type="leg-id-1"]/ref:resourceid</targetxml>
          </xref>
        </li>
      </ul>
    </section>
    <section>
      <title>seclaw 7.13_PROD</title>
      <ul>
        <li>
          <xref href="../../../common_newest/LxAdv_CA-ref.cite4thisresource-LxAdv-ref.parallelcite-doc.related-content.dita">2014-09-03 - ref:cite4thisresource with ref:parallelcite and doc:related-content id-CCCC-10497: Added instructions for proc:param name="targetdoclang". R4.5 #1873.</xref>
        </li>
        <li>
          <xref href="../CA02DS_DIGESTDOC_to_seclaw/case.decisionsummary.dita">2014-08-27 - case:decisionsummary id-CA02DS-12818: Updated instruction for case:decisionsummary to place the period sign after completion of sentence ... P4 Issue #323</xref>
        </li>
        <li>
          <xref href="../../../common_newest/LxAdv_CA-ref.cite4thisresource-LxAdv-ref.parallelcite-doc.related-content.dita">2014-08-27 - ref:cite4thisresource with ref:parallelcite and doc:related-content id-CCCC-10497: Added the new rule for CA02 content streams for alternate language. P4 issue #324.</xref>
        </li>
        <li>
          <xref href="../../../common_newest/LxAdv_CA-ref.cite4thisresource-LxAdv-ref.parallelcite-doc.related-content.dita">2014-08-25 - ref:cite4thisresource with ref:parallelcite and doc:related-content id-CCCC-10497: Added the new citation inside the table for
            CA08 i.e. R.S.C. 1985, Appendix II, No. 4, s. L.</xref>
        </li>
        <li>
          <xref href="../../../common_newest/LxAdv_CA-ref.cite4thisresource-LxAdv-ref.parallelcite-doc.related-content.dita">2014-08-25 - ref:cite4thisresource with ref:parallelcite and doc:related-content id-CCCC-10497: Added Schedule to Annexe and
            vice a versa in C.R.C citation, Applicable for CA06 and CA07.</xref>
        </li>
        <li>
          <xref href="../../../common_newest/LxAdv_CA-ref.cite4thisresource-LxAdv-ref.parallelcite-doc.related-content.dita">2014-08-21 - ref:cite4thisresource with ref:parallelcite and doc:related-content id-CCCC-10497: Updated C.O.M.C. with "no" and T.M.O.B. "No." for CA04- Db issue #326</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2014-08-21 - docinfo:assoc-links to doc:related-content id-CCCC-10284: Added instructions and an example for converting
            <sourcexml>lnlink[@service="ATTACHMENT"]</sourcexml> to
            <targetxml>ref:lnlink</targetxml>. Applicable on CA05-CA08.</xref>
        </li>
        <li>
          <xref href="../CA02DS_DIGESTDOC_to_seclaw/case.dates.dita">2014-08-19 - case:dates id-CA02DS-12817: Updated example for nl. Multiple argued date will not be created,
            multiple date-text will be created.</xref>
        </li>
      </ul>
    </section>
    
    <section>
      <title>seclaw 7.9_PROD</title>
      <ul>
        <li>
          <xref href="case.decisionsummary.dita">2014-08-11 - case:decisionsummary id-CA02DS-12818: Updated instruction for case:decisionsummary having HELD without any following text... P4 Issue #317</xref>
        </li>
        <li>
          <xref href="../../../common_newest/LxAdv_CA-ref.cite4thisresource-LxAdv-ref.parallelcite-doc.related-content.dita">2014-08-11 - ref:cite4thisresource with ref:parallelcite and doc:related-content id-CCCC-10497: Added alternate citation for corresponding primary LNCRTCF and LNCRTCE citation as provided in alternate and primary format for CA04- Db issue #321</xref>
        </li>
        <li>
          <xref href="../../../common_newest/LxAdv_CA-ref.cite4thisresource-LxAdv-ref.parallelcite-doc.related-content.dita">2014-08-11 - ref:cite4thisresource with ref:parallelcite and doc:related-content id-CCCC-10497: Updated references in the table of L.R.N.-B. to L.R.N.B. and L.N.-B. to L.N.B. for CA05.</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_CAN_docinfo.custom-metafields-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta.meta.metaitem.dita">2014-08-11 - docinfo:custom-metafields to doc:legacy-metadata[@metadatasource="lbu-meta"]/meta/metaitem id-CCCC-10251: Added identifier <sourcexml>docinfo:custom-metafields/docinfo:custom-metafield[@searchtype="act-id"]</sourcexml> to generate <targetxml>*:head/ref:groupid/ref:resourceid/@ref:resourcekey=urn:leg-id-1:X</targetxml>.</xref>
        </li>
        <li>
          <xref href="case.dates.dita">2014-08-06 - case:dates id-CA02DS-12817: Updated instructions for argueddate. DB item # 1795</xref>
        </li>
        <li>
          <xref href="../../../common_newest/LxAdv_CA-ref.cite4thisresource-LxAdv-ref.parallelcite-doc.related-content.dita">2014-08-06 - ref:cite4thisresource with ref:parallelcite and doc:related-content id-CCCC-10497: Updated Primary and Alternate Languages for C.B.D,D.B.D.A,LNCRTCE and 2009 LNCRTCF 41... Db issue P4.313</xref>
        </li>
      </ul>
    </section>
    <section>
      <title>seclaw 7.8_PROD</title>
      <ul> 
        <li>
          <xref href="case.decisionsummary.dita">2014-07-28 - case:decisionsummary id-CA02DS-12818: Added instruction to handle "HELD:" keyword in case:decisionsummary.. R4.5 Issue #1584</xref>
        </li>
        <li>
          <xref href="../../../common_newest/LxAdv_CA-ref.cite4thisresource-LxAdv-ref.parallelcite-doc.related-content.dita">2014-07-24 - ref:cite4thisresource with ref:parallelcite and doc:related-content id-CCCC-10497: Added new rule for conversion of CA01, CA02,
            CA04 and updated instruction for CA05-CA08.</xref>
        </li>
        <li>
          <xref href="case.dates.dita">2014-07-23 - case:dates id-CA02DS-12817: Added instruction not to populate <targetxml>decision:argueddate</targetxml> if <sourcexml>case:hearingdates</sourcexml> does not contain attributes ..."Issue# 289 and 256</xref>
        </li>
        <li>
          <xref href="../../../common_newest/LxAdv_CA-ref.cite4thisresource-LxAdv-ref.parallelcite-doc.related-content.dita">2014-07-21 - ref:cite4thisresource with ref:parallelcite and doc:related-content id-CCCC-10497: Updated CA01 citation [1986] A.C.A.C. no
            1 and snippet.</xref>
        </li>
        <li>
          <xref href="case.decisionsummary.dita">2014-07-15 - case:decisionsummary id-CA02DS-12818: Clarification on HELD data scenario...."DB item # 268 </xref>
        </li>
        <li>
          <xref href="case.reportercite.dita">2014-07-15 - case:reportercite id-CA02DS-12826: Mapped case:reportercite in head where it directly contains text without any other sibling  DB item # 261</xref>
        </li>
        <li>
          <xref href="../../../common_newest/LxAdv_CA-ref.cite4thisresource-LxAdv-ref.parallelcite-doc.related-content.dita">2014-07-09 - ref:cite4thisresource with ref:parallelcite and doc:related-content id-CCCC-10497: Added primary and alternate language for CA04- Db issue #250</xref>
        </li>
        <li>
          <xref href="case.dates.dita">2014-07-08 - case:dates id-CA02DS-12817: Added instruction to create date-text for decision:argueddate even if ln.user-displayed="false" ..."R4.5 Issue# 1589</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_table-LxAdv-table.dita">2014-07-08 - table to table id-CCCC-10475: Updated instruction for added the
            following rarely occurring attributes <sourcexml>@char</sourcexml> inside the <sourcexml>entry</sourcexml>.</xref>
        </li>
        <li>
          <xref href="case.reportercite.dita">2014-07-07 - case:reportercite id-CA02DS-12826: Update to include attribute "citetype="parallel" for case:reportercite without cite4thisdoc attribute  DB item # 253</xref>
        </li>
      </ul>
    </section>
    <section>
      <title>seclaw 7.6_PROD</title>
      <ul> 
        <li>
          <xref href="../../../common_newest/LxAdv_CA-ref.cite4thisresource-LxAdv-ref.parallelcite-doc.related-content.dita">2014-06-27 - ref:cite4thisresource with ref:parallelcite and doc:related-content id-CCCC-10497: Added table for CA04....Db issue #1552</xref>
        </li>
        <li>
          <xref href="../../../common_caselaw/Rosetta_refnum.refnumtype.UCN-LxAdv_ref.groupid.dita">2014-06-26 - refnum[@refnumtype="UCN"] - ref:groupid id-CCCC-12047: Make <targetxml>ref:resourcekey</targetxml> UCN value urn conform to PGUID registry, e.g. "urn:ucn-1:00180609".</xref>
        </li>
        <li>
          <xref href="../../../common_newest/LxAdv_CA-ref.cite4thisresource-LxAdv-ref.parallelcite-doc.related-content.dita">2014-06-25 - ref:cite4thisresource with ref:parallelcite and doc:related-content id-CCCC-10497: Added instruction for
            <targetxml>ref:marker</targetxml> and updated table for CA01-CA02,
            CA05-CA07.</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_CAN_docinfo.custom-metafields-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta.meta.metaitem.dita">2014-06-23 - docinfo:custom-metafields to doc:legacy-metadata[@metadatasource="lbu-meta"]/meta/metaitem id-CCCC-10251: Added Rule for mapping
            <sourcexml>docinfo:custom-metafields/docinfo:custom-metafield/@act-id</sourcexml>
            in HEAD Section in target, this is applicable for CA05-CA08 only. Db
            issue #1464</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_docinfo.doc-id-LxAdv-dcidentifier_lnmetaidentifier-scheme.dita">2014-06-23 - docinfo:doc-id to dc:identifier[@lnmeta:identifier-scheme] id-CCCC-10293: Note and Example removed - For CA05 Acts and
            Bills- Mapping in dc:identifier for act-no and chunk-no. Db issue #1464</xref>
        </li>
        <li>
          <xref href="../../../common_newest/LxAdv_CA-ref.cite4thisresource-LxAdv-ref.parallelcite-doc.related-content.dita">2014-06-20 - ref:cite4thisresource with ref:parallelcite and doc:related-content id-CCCC-10497: Changed
            <targetxml>ref:parallelcite@citetype</targetxml> to "parallel" from
            "FrenchVersion" or "EnglishVersion" to be consistent with
            <targetxml>ref:parallelcite@citetype</targetxml> evreywhere else.</xref>
        </li>
        <li>
          <xref href="case.decisionsummary.dita">2014-06-19 - case:decisionsummary id-CA02DS-12818: Example to handle HELD and DESPOTIF containing emph...."DB item # 222 </xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2014-06-18 - docinfo:assoc-links to doc:related-content id-CCCC-10284: Corrected minor typos in <sourcexml>lnlink[@service="QUERYLINK"]</sourcexml> instructions.</xref>
        </li>
        <li>
          <xref href="../../../common_newest/LxAdv_CA-ref.cite4thisresource-LxAdv-ref.parallelcite-doc.related-content.dita">2014-06-17 - ref:cite4thisresource with ref:parallelcite and doc:related-content
            id-CCCC-10497: Created.</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2014-06-13 - docinfo:assoc-links to doc:related-content id-CCCC-10284: Added instructions and an example for converting
            <sourcexml>lnlink[@service="QUERYLINK"]</sourcexml> to
            <targetxml>ref:lnlink</targetxml>.</xref>
        </li>
        <li>
          <xref href="case.headnote.dita">2014-06-12 - case:headnote id-CA02DS-12821: case:headnote instructions in CI.. DB item# 221</xref>
        </li>
        <li>
          <xref href="case.parallelcite.dita">2014-06-11 - case:parallelcite id-CA02DS-12825: Updated instruction and example to add
            attribute <targetxml>ref:parallelcite/@citetype="parallel"</targetxml> in
            target.</xref>
        </li>
        <li>
          <xref href="case.reportercite.dita">2014-06-11 - case:reportercite id-CA02DS-12826: remove "Full Text: " with and without the trailing space in case:reportercite DB item # 1646</xref>
        </li>
        <li>
          <xref href="case.courtname.dita">2014-06-10 - case:courtname id-CA02DS-12816: Drop initial open paren and trailing close paren. Add example.Comment from First UX Review.</xref>
        </li>
        <li>
          <xref href="case.decisionsummary.dita">2014-06-10 - case:decisionsummary id-CA02DS-12818: Loosened instruction to convert <sourcexml>p/text</sourcexml> beginning with "HELD:" into <targetxml>casesum:disposition/p/text</targetxml>. Allow dash to end first sentence. Allow <sourcexml>emph</sourcexml> around HELD text. Allow space before colon. Allow French language version. Convert preceding and following space dash dash with a period. Add example.R4.5 Issue #1588</xref>
        </li>
        <li>
          <xref href="case.reportercite.dita">2014-06-10 - case:reportercite id-CA02DS-12826: Attribute citetype="reporter" added to ref:cite4thisresource   DB item # 225</xref>
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
          <xref href="../CA02DS_DIGESTDOC_to_seclaw/dig.cite.dita">2014-06-02 - dig:cite id-CA02DS-12829: Example added for dig:cite attribute display-name="Digest Number"... DB item #1534</xref>
        </li>
          <li>
            <xref href="../CA02DS_DIGESTDOC_to_seclaw/case.dates.dita">2014-05-31 - case:dates id-CA02DS-12817:  Explanation of invalid date..."DB item #
              206</xref>
          </li>
          <li>
            <xref href="../CA02DS_DIGESTDOC_to_seclaw/case.dates.dita">2014-05-30 - case:dates id-CA02DS-12817:  Explanation for ln.user-displayed=false or not
              present..."DB item # 213</xref>
          </li>       
      </ul>
      <p>2014-05-27 <ul>
          <li><xref href="case.decisionsummary.dita">2014-05-27- holding's of court / despotif...DB
              item #1602</xref></li>

        </ul></p>
    </section>
    <section>
      <title>seclaw 7.6_PROD</title>
      <p>2014-05-21 <ul>
          <li><xref href="case.dates.dita">2014-05-21- Rules for Date...DB item #1273</xref></li>
          <li><xref href="case.reportercite.dita">2014-05-21- Removal of Full Text from
              ref:parallelcite...DB item #212 and 1323</xref></li>
        </ul></p>
    </section>
    <section>
      <title>seclaw 7.6_PROD</title>
      <p>2014-05-05 <ul>
          <li><xref href="dig.cite.dita">2014-05-05- citetype="reporter" added to dig:cite mapping
              for ref:cite4thisresource in target...DB item #198</xref></li>
        </ul></p>
    </section>
    <section>
      <title>seclaw 7.6_PROD</title>
      <p>2014-05-05 <ul>
          <li><xref href="case.reportercite.dita">2014-05-05- Reportercite mapping to head in
              target</xref></li>
        </ul></p>
    </section>
    <section>
      <title>seclaw 7.6_PROD</title>
      <p>2014-04-30 <ul>
          <li><xref href="case.courtname.dita">2014-04-30-case:courtname new scenario...."DB item
              #152</xref></li>
        </ul></p>
    </section>
    <section>
      <title>seclaw 7.6_PROD</title>
      <p>2014-04-29 <ul>
          <li><xref href="case.courtname.dita">2014-04-28-case:parallelcite mapping...."DB item
              #101</xref></li>
        </ul></p>
    </section>
    <section>
      <title>seclaw 7.6_PROD</title>
      <p>2014-04-28 <ul>
          <li><xref href="case.parallelcite.dita">2014-04-28-case:parallelcite mapping...."DB item
              #181</xref></li>
          <li><xref href="case.reportercite.dita">2014-04-28 -case:reportercite mapping...."DB item
              #180 </xref></li>
        </ul></p>
    </section>
    <section>
      <title>seclaw 7.6_PROD</title>
      <p>2014-04-24 <ul>
          <li><xref href="case.casename.dita">2014-04-24-Fullcasename displayed in multiple lines
              under casename... "DB item #1151</xref></li>
        </ul></p>
    </section>
    <section>
      <title>seclaw 7.6_PROD</title>
      <p>2014-04-18 <ul>
          <li><xref href="case.parallelcite.dita">2014-04-18 - ref:citation in head DB item #
              1152,1156 </xref></li>
          <li><xref href="case.reportercite.dita">2014-04-18 - ref:citation in head DB item #
              1152,1156 </xref></li>
        </ul>
      </p>
    </section>
    <section>
      <title>seclaw 7.10_PROD</title>
      <p>2014-04-15 <ul>
          <li><xref href="case.reportercite.dita">2014-04-15 - Removed Trailing Comma in Case
              Cites...R4.5 Issue DB #item 1332</xref></li>
        </ul>
      </p>
    </section>
    <section>
      <title>seclaw 7.10_PROD</title>
      <p>2014-04-11 <ul>
          <li><xref href="case.dates.dita">2014-04-11 - Instruction to display in Full View Subtitle
              - Summaries..."DB item # 1272</xref></li>
          <li><xref href="case.dates.dita">2014-04-11 - Instruction to display Date for CA02-DS
              Quantums (seclaw)..."DB item # 1273</xref></li>
          <li>
            <xref href="../CA02DS_DIGESTDOC_to_seclaw/case.decisionsummary.dita">2014-04-09 - case:decisionsummary: Removed double dashes at decisionsummary
              section..."DB item # 1343 </xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2014-04-03 - docinfo:assoc-links to doc:related-content: Illustrative changes.
              Examples modified. Mapping for <sourcexml>ci:cite</sourcexml> added to Example 3.
              Former Examples 4 and 5 removed to avoid confusion with special AU-NZ use case
              described in a separate module. R4.5 Content issue #1125, for AU-NZ, has prompted the
              changes for this general module.</xref>
          </li>
          <li>
            <xref href="../CA02DS_DIGESTDOC_to_seclaw/case.reportercite.dita">2014-03-31 - case:reportercite: Remove "Full text: " and its language variants from
              the start of <targetxml>lnci:content</targetxml> in the body. R4.5 Item #1323.</xref>
          </li>
        </ul>
      </p>
    </section>
    <section>
      <title>seclaw 7.8_PROD</title>
      <p>2014-03-26 <ul>
          <li>
            <xref href="../CA02DS_DIGESTDOC_to_seclaw/case.parallelcite.dita">2014-03-26 - case:parallelcite: Clarify that parallelcite will map to digest:body and
              still get the value "parallel".DB item # 145</xref>
          </li>
          <li>
            <xref href="../CA02DS_DIGESTDOC_to_seclaw/classification.dita">2014-03-26 - classification: Both English and French should convert to
              "classificationNumber".DB item # 1176</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2014-03-25 - docinfo:assoc-links to doc:related-content: Added rule and example for
                <sourcexml>docinfo:assoc-links/docinfo:assoc-links-grp/ci:cite</sourcexml>. R4.5
              Content issue #1125</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2014-02-25 - remotelink to ref:crossreference: Updated instruction and created new
              example (#16) for handling <sourcexml>remotelink[@service="QUERY"]</sourcexml>. New
              instruction preserves pcdata but suppresses <sourcexml>remotelink</sourcexml> markup.
              Webstar #250335. Change applies immediately to all Pacific streams, and in the long
              run to all streams.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_docinfo.doc-heading-LxAdv-dc.title.dita">2014-02-11 - docinfo:doc-heading to dc:title: Updated note when
                <sourcexml>emph</sourcexml> is child of <sourcexml>docinfo:doc-heading</sourcexml>
              then suppress <sourcexml>emph</sourcexml> element and retain its content in
                <targetxml>dc:title</targetxml>, These instructions apply immediately to
              CA12.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_pgrp-LxAdv-pgrp.dita">2014-02-11 - pgrp to
              pgrp: Add instruction and example <sourcexml>pgrp/@subdoc</sourcexml> and
                <sourcexml>pgrp/@toc-caption</sourcexml>. Support Discussion Board: NZ09 Commentary,
              Form and Precedents</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_docinfo.topiccodes-to-LxAdv-classify.classification_classscheme_docinfo-topiccodes.dita">2014-02-03 - docinfo:topiccodes to
              classify:classification[@classscheme="docinfo:topiccodes"]: Added a special rule for
              UK07 contents, When element <sourcexml>docinfo:topiccode</sourcexml> contains
              attribute <sourcexml>@scheme="source-by-date"</sourcexml>, then conversion will
              suppress it including its contents as well. Phase 5 UK discussion-defect tracking:
              issue #156. </xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2014-02-03 - remotelink to ref:crossreference: Instruction updated if
                <sourcexml>remotelink</sourcexml> occurs as multiple, immediate siblings and without
              intermediary text within <sourcexml>title</sourcexml>. Also added a example for the
              same scenario. Phase 5 UK discussion-defect tracking issue #161</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_text-LxAdv-text.dita">2014-01-31 - text to
              text: Updated instruction, <targetxml>align</targetxml> will be moved in
                <targetxml>p</targetxml> in NL conversion. NZ09 commentary discussion board issue
              for handling <sourcexml>text/@align</sourcexml>
            </xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_Elements-LxAdv-Empty_Elements.dita">2014-01-16 - Suppress each empty element unless otherwise stated: Added list of
              elements to suppress if empty.</xref>
          </li>
        </ul>
      </p>
    </section>
    <section>
      <title>seclaw 7.8_PROD</title>
      <p>2014-01-07 <ul>
          <li><xref href="case.parallelcite.dita">2014-01-07: Added a note along with example for
              handling <sourcexml>case:parallelcite</sourcexml>, which contains only text without
              any child element.</xref></li>
          <li><xref href="../../../common_newest/Rosetta_date-Chof-docinfo.load-date-LxAdv-dc.date_lnmeta.datetype_load-date-scheme.dita">2014-01-07: Added a note along with example which contains "00" value in
                <sourcexml>@day="00"</sourcexml> and <sourcexml>@month="00"</sourcexml> attributes
              encountered in CANADA contents.</xref></li>
          <li><xref href="catchwordgrp.dita">2014-01-07: Added a note along with example for
              handling <sourcexml>catchwordgrp</sourcexml>, which contains a special scenario
                <sourcexml>heading/title</sourcexml>.</xref></li>
          <li><xref href="dig.info.dita">2014-01-07: Added a note for NOT creating empty
                <sourcexml>seclaw:digestinfo</sourcexml>.</xref></li>
          <li><xref href="case.juris.dita">2014-01-07: Added a note along with example for handling
                <sourcexml>case:juris</sourcexml>, which contains country code "UK".</xref></li>
        </ul>
      </p>
    </section>
    <section>
      <title>seclaw 7.8_PROD</title>
      <p>2013-12-04 <ul>
          <li>
            <xref href="../../../common_newest/Rosetta_CAN_docinfo.custom-metafields-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta.meta.metaitem.dita">2013-12-04 - docinfo:custom-metafields to
              doc:legacy-metadata[@metadatasource="lbu-meta"]/meta/metaitem: Updated instruction to
              retain docinfo:custom-metafield name="date"&gt; and docinfo:custom-metafield
              name="court"&gt;.</xref>
          </li>
          <li>
            <xref href="case.constituents.dita">2013-11-25: case:constituent - courtcase:counsel:
              Updated source and target snippet example.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-10-23 - remotelink to ref:crossreference: Added Example when
                <sourcexml>remotelink</sourcexml> having child <sourcexml>emph</sourcexml>. Webteam
              # 239816.</xref>
          </li>

          <li>
            <xref href="../../../common_newest/Rosetta_docinfo.doc-heading-LxAdv-dc.title.dita">2013-10-18 - docinfo:doc-heading to dc:title: Updated Instruction when
                <sourcexml>docinfo:doc-heading</sourcexml> contains word <b>RULE: "</b> or
                <b>STATUTE: </b>.</xref>
          </li>

          <li>
            <xref href="../../../common_newest/Rosetta_Elements-LxAdv-Empty_Elements.dita">2013-10-14 - Suppress empty elements unless otherwise stated: Changed antecedent to
              singular to match instructions..</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_docinfo.doc-heading-LxAdv-dc.title.dita">2013-09-03 - docinfo:doc-heading to dc:title: Updated Instruction when
                <sourcexml>docinfo:doc-heading</sourcexml> contains word <b>"TITLE: "</b> or
                <b>NAME: </b> or <b>SITE: </b> or <b>SUBJECT:</b>.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_title-LxAdv-title.dita">2013-09-03 - title to
              title: Updated Instruction when <sourcexml>title</sourcexml> contains word <b>"TITLE:
                "</b> or <b>"NAME: "</b> or <b>"SITE: "</b>.</xref>
          </li>
        </ul>
      </p>
    </section>
    <section>
      <title>seclaw 7.3_PROD</title>
      <p>2013-08-02 <ul>
          <li>
            <xref href="../../../common_newest/Rosetta_title-LxAdv-title.dita">2013-07-30 - title to
              title: Updated Instruction when <sourcexml>title</sourcexml> contains word "TITLE: "
              or "NAME: ".</xref>
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
            <xref href="../../../common_newest/Rosetta_title-LxAdv-title.dita">2013-07-05 - title to
              title: Added Instruction when <sourcexml>title</sourcexml> contains word "TITLE:
              ".</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_CAN_docinfo.custom-metafields-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta.meta.metaitem.dita">2013-06-04 - docinfo:custom-metafields to
              doc:legacy-metadata[@metadatasource="lbu-meta"]/meta/metaitem: Consolidated narrative
              and examples for clarity.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-06-03 - remotelink to ref:crossreference: Updated the Target XML 2 by removing
              the <targetxml>@crossreferencetype</targetxml> for Canada example.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_CAN_docinfo.custom-metafields-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta.meta.metaitem.dita">2013-05-24 - docinfo:custom-metafields to
              doc:legacy-metadata[@metadatasource="lbu-meta"]/meta/metaitem: Instruction and example
              added for handling of
                <sourcexml>docinfo:custom-metafield/@name="pageestimate"</sourcexml>.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_docinfo-LxAdv-doc.metadata_doc.docinfo.dita">2013-05-16 - docinfo to doc:metadata/doc:docinfo: Fixed typo updating urn:contentitem
              to urn:contentItem</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_CAN_docinfo.custom-metafields-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta.meta.metaitem.dita">2013-05-13 - docinfo:custom-metafields to
              doc:legacy-metadata[@metadatasource="lbu-meta"]/meta/metaitem: Example added for
              handling of <sourcexml>docinfo:custom-metafields/@name="reg-no"</sourcexml>.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-05-08 - remotelink to ref:crossreference: Extended the list of allowable values
              for image handling.</xref>
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
            <xref href="../../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-04-30 - remotelink to ref:crossreference: Updated target sample according to
              latest Apollo markup.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_CAN_docinfo.custom-metafields-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta.meta.metaitem.dita">2013-04-29 - docinfo:custom-metafields to
              doc:legacy-metadata[@metadatasource="lbu-meta"]/meta/metaitem: Instructions and
              example added for handling various scenarios of
                <sourcexml>docinfo:custom-metafields</sourcexml> for CA06-Regs and
              CA08-Const.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_docinfo.doc-lang-and-doc-country-LxAdv-ROOT_xml.lang.dita">2013-04-19 - docinfo:doc-lang and docinfo:doc-country to @xml:lang and @xml:ID: Added
              note about applicability of restrictions and required modifications for
                <targetxml>xml:id</targetxml> to other scenarios.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-04-10 - remotelink to ref:crossreference: Added Source XML 7a: for link to URL,
              with non-URL text content because it was previously missing, only the target example
              was here.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_Elements-LxAdv-Empty_Elements.dita">2013-03-28 - Suppress empty elements unless otherwise stated: Created.</xref>
          </li>
        </ul>
      </p>
    </section>
    <section>
      <title>seclaw 4.25_PROD (Schema Release Date - 2012-12-12)</title>
      <p>02/26/2013_WLL <ol>
          <li>Created a new dita file case.casename.DS.dita to change the mapping of
              <targetxml>caseinfo:fullcasename</targetxml> to
              <targetxml>caseinfo:shortcasename</targetxml> for seclaw only.</li>
        </ol>
      </p>
    </section>

    <section>
      <title>seclaw 4.25_PROD (Schema Release Date - 2012-12-12)</title>
      <p>02/19/2013<ul>
          <li>Introduction topic - Added Information of new Schema Released for <b>seclaw
              4.25_PROD</b>.</li>
          <li>Body topic - Instruction and examples changed for handling
              <sourcexml>case:reportercite</sourcexml>.</li>
          <li>Head Section - One more instructio for handling <sourcexml>classification</sourcexml>
            has been added to the CI.</li>
          <li>Metadata Markup - Instruction and example added for
              <sourcexml>docinfo:custom-metafield[@name="unhandled"]</sourcexml>.</li>
        </ul></p>
    </section>

    <section>
      <title>seclaw 4.24_PROD (Schema Release Date - 2012-12-12)</title>
      <p>01/19/2013<ul>
          <li>Added <targetxml>courtcase:representation</targetxml> as an optional child of
              <targetxml>caseinfo:caseinfo</targetxml> in the seclaw schema.</li>
          <li>Introduction topic - Added Information of new Schema Released for <b>seclaw
              4.24_PROD</b>.</li>
          <li>Body topic - One more instruction for handling text inside
              <sourcexml>case:parallelcite</sourcexml> element added in CI.</li>
          <li>Body topic - One more instruction for handling text inside
              <sourcexml>case:reportercite</sourcexml> element added in CI.</li>
          <li>Head Section - Updated note and example for handling <sourcexml>case:juris</sourcexml>
            regarding country codes, in CI.</li>
          <li>Head Section - The instructions for <sourcexml>case:dates</sourcexml> have been
            updated with directions for populating the attribute
              <targetxml>decision:decisiondate/@normdate</targetxml>.</li>
          <li>Head Section - One more instructio for handling <sourcexml>classification</sourcexml>
            has been added to the CI.</li>
          <li>Metadata Markup - Instruction and example added for
              <sourcexml>docinfo:custom-metafield[@searchtype="CITED-COUNT"]</sourcexml>.</li>
        </ul></p>
    </section>
    <section>
      <title>seclaw 4.21_PROD (Schema Release Date - 11/27/2012)</title>
      <p>11/29/2012<ul>
          <li>Added <targetxml>courtcase:caseexcerpt</targetxml> as a child of
              <targetxml>seclaw:digest</targetxml>.</li>
          <li>Added <targetxml>footnote-ref</targetxml> as a child of
              <targetxml>caseinfo:shortcasename</targetxml>.</li>
          <li>Added <targetxml>pubinfo:publicationsubtitle</targetxml> as a child of
              <targetxml>pubinfo:pubinfo</targetxml>.</li>
          <li>Introduction topic - Added Information of new Schema Released for <b>seclaw
              4.21_PROD</b>.</li>
          <li>Body topic - One more instruction for handling <sourcexml>note</sourcexml> element
            added in CI.</li>
          <li>Body topic - Updated instructions and example for
              <sourcexml>case:embeddedcase</sourcexml>.</li>
          <li>Body topic - Handling for <sourcexml>dig:info</sourcexml> has been chenaged and now it
            will become <targetxml>seclaw:digestinfo</targetxml>.</li>
          <li>Body topic - A note added in <sourcexml>catchwordgrp</sourcexml> conversion part of
            CI.</li>
          <li>Body topic - A note added in <sourcexml>case:info</sourcexml> conversion part of
            CI.</li>
          <li>Body topic - Added instructions for handling
              <sourcexml>abstract/catchwordgrp</sourcexml> in <sourcexml>abstract</sourcexml>
            conversion.</li>
          <li>Body topic - Updated instructions and example for <sourcexml>refnum</sourcexml>.</li>
          <li>Body topic - A note added in <sourcexml>case:reportercite</sourcexml>, regarding the
            order of the cites is driven by the source document and a future reload of the source
            document is required to get the cites in the LBU desired order.</li>
          <li>Body topic - A note added in <sourcexml>case:parallelcite</sourcexml>, regarding the
            order of the cites is driven by the source document and a future reload of the source
            document is required to get the cites in the LBU desired order.</li>
        </ul></p>
    </section>
    <section>
      <title>First release</title>
      <p>2012-09-18</p>
    </section>

  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA02-Case_Summaries\CA02DS_DIGESTDOC_to_seclaw\Change-Log.dita  -->
<!--	<xsl:message>CA02DS_DIGESTDOC_to_seclaw_Change-Log.xsl requires manual development!</xsl:message> -->

</xsl:stylesheet>