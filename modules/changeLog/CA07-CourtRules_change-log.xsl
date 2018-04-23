<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:ci="http://www.lexis-nexis.com/ci" xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" xmlns:frm="http://www.lexis-nexis.com/glp/frm" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:classify="http://www.lexisnexis.com/xmlschemas/content/shared/classification/1/" xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" xmlns:form="http://www.lexisnexis.com/xmlschemas/content/shared/form/1/" xmlns:globalentity="urn:x-lexisnexis:content:identified-entities:global:1" xmlns:legisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/legislation-info/1/" xmlns:lnci="http://www.lexisnexis.com/xmlschemas/content/shared/citations/1/" xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" xmlns:primlawinfo="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-info/1/" xmlns:proc="http://www.lexisnexis.com/xmlschemas/content/shared/process-elements/1/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita ci docinfo frm leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="courtrule-change-log">
  <title>Change Log for Canada CourtRule</title>
  <body>
    
    <section>
      <title>7.2 PROD</title>
      <p>2016-06-04 PS<ul>
        <li>
          <xref href="../../../Rosetta/DITA-CAN/CA07-CourtRules/leg.level.dita">2016-06-04 - leg:level id-CA07-14020: Updated target element mapping when source is not having
            <sourcexml>refpt</sourcexml> as a child of <sourcexml>leg:heading</sourcexml>. Applicable on CA07.</xref>
        </li>
      </ul>
      </p>
    </section>
    
    <section>
      <title>7.2 PROD</title>
      <p>2016-06-01 PS <ul>
        <li>
          <xref href="../../../Rosetta/DITA-CAN/CA07-CourtRules/leg.level.dita">2016-06-01 - leg:level id-CA07-14020: Updated note for generation of <targetxml>ref:anchor</targetxml> based on 
            <sourcexml>@subdoc="true"</sourcexml> value.</xref>
        </li>
      </ul>
      </p>
    </section>
    
    <section>
      <title>7.2 PROD</title>
      <p>2016-06-01 PS <ul>
          <li>
            <xref href="../../../Rosetta/DITA-CAN/CA07-CourtRules/leg.level.dita">2016-06-01 -
              leg:level id-CA07-14020: Added rule to generate <targetxml>ref:anchor</targetxml>
              element in <targetxml>primlaw:level</targetxml> when source is not having
                <sourcexml>refpt</sourcexml> as a child of <sourcexml>leg:heading</sourcexml>,
              Applicable on CA07. Webstar # 6527826.</xref>
          </li>
        </ul>
      </p>
    </section>
    
    <section>
      <title>7.1 PROD</title>
      <p>2015-08-14 SEP
      <ul>
            <li>
               <xref href="../../../Rosetta/common_newest/Rosetta_CAN_docinfo.custom-metafields-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta.meta.metaitem.dita">2015-08-13 - docinfo:custom-metafields to doc:legacy-metadata[@metadatasource="lbu-meta"]/meta/metaitem id-CCCC-10251: For Single Document Retrieval (SDR), <sourcexml>"actFirstDoc"</sourcexml> triggers output of an additional <targetxml>ref:cite4thisresource/lnci:cite/@type="act"</targetxml> where target <targetxml>lnci:content</targetxml> is copied from  <sourcexml>leg:officialnum</sourcexml>. Affects CA05,CA06,CA07,CA08. Canada CR506 as related to WT 305581.</xref>
            </li>
      </ul>
      </p>
    </section>
    <section>
      <title>7.1 PROD</title>
      <p>2015-07-30 SEP
      <ul>
            <li>
               <xref href="../../../Rosetta/common_newest/Rosetta_CAN_docinfo.custom-metafields-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta.meta.metaitem.dita">2015-07-29 - docinfo:custom-metafields to doc:legacy-metadata[@metadatasource="lbu-meta"]/meta/metaitem id-CCCC-10251: Update  
					<targetxml>metaitem[@name="effect-date"]/value</targetxml> in the example to have a 
					real date, "19950505", instead of all zeroes, "00000000". R4.5 Canada CR458.</xref>
            </li>
            <li>
               <xref href="../../../Rosetta/common_newest/Rosetta_CAN_docinfo.custom-metafields-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta.meta.metaitem.dita">2015-07-28 - docinfo:custom-metafields to doc:legacy-metadata[@metadatasource="lbu-meta"]/meta/metaitem id-CCCC-10251: Canada Sort Option for Point in Time Legislation. 
					<targetxml>metaitem[@name="effect-date"]/value</targetxml> shall have simple digit date validation
					and dashes added to separate YYYY-MM-DD. Affects CA05, 06, 07, 08. R4.5 Canada CR458.</xref>
            </li>
            <li>
               <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2015-07-16 - docinfo:assoc-links to doc:related-content id-CCCC-10284: Updated conversion for handling of
            <sourcexml>ci:cite/@normprotocol</sourcexml>, <targetxml>proc:param[@name="countrycode"]</targetxml>; added
          instructions for <sourcexml>docinfo:assoc-resource</sourcexml>.</xref>
            </li>
            <li>
               <xref href="../../../Rosetta/common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2015-06-24 - remotelink to ref:crossreference id-CCCC-10465: Added clarification note about url, @normval, and @hrefclass. Webstar 302055.</xref>
            </li>
            <li>
               <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2015-05-22 - docinfo:assoc-links to doc:related-content id-CCCC-10284: Clarification. Not a new rule or target. Within rules handling
            <sourcexml>remotelink[@service="DOC-ID"]</sourcexml>, added statement to create containing elements
            <targetxml>ref:locator/ref:locator-key</targetxml> which hold <targetxml>ref:key-name</targetxml> and
            <targetxml>ref:key-value</targetxml>. The xpath is controlled by schema and so conversions have been
          correct. CI examples were correct. The narrative rule is now explicit. R4.5 Content Issue 2326.</xref>
            </li>
            <li>
               <xref href="../../../Rosetta/common_newest/Rosetta_link-LxAdv-ref.lnlink.dita">2015-05-22 - link to ref:lnlink/@service="ATTACHMENT" id-CCCC-10394: Changed the instructions to indicate <sourcexml>link/@status</sourcexml> is always dropped and removed <targetxml>ref:lnlink/@status</targetxml> from target example. This is a very low-priority change and has been added for technical correctness, particularly with respect to new CIs. Existing scripts do not have to implement this change since <targetxml>ref:lnlink/@status</targetxml> is ignored by LexisAdvance if it is present.</xref>
            </li>
            <li>
               <xref href="../../../Rosetta/common_newest/Rosetta_lnlink_service_ATTACHMENT-LxAdv-ref.lnlink.dita">2015-05-22 - lnlink/@service="ATTACHMENT" to ref:lnlink id-CCCC-10396: Added an instruction to explicitly indicate <sourcexml>lnlink/@status</sourcexml> is always dropped (suppressed). This is a very low-priority change and has been added for technical correctness, particularly with respect to new CIs. Existing scripts do not have to implement this change unless needed since prior to the change <targetxml>lnlink/@status</targetxml> handling was not explicitly specified.</xref>
            </li>
            <li>
               <xref href="../../../Rosetta/common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2015-05-22 - remotelink to ref:crossreference id-CCCC-10465: Added an instruction to explicitly indicate <sourcexml>remotelink/@status</sourcexml> is always dropped (suppressed). This is a very low-priority change and has been added for technical correctness, particularly with respect to new CIs. Existing scripts do not have to implement this change unless needed since prior to the change <targetxml>remotelink/@status</targetxml> handling was not explicitly specified.</xref>
            </li>
            <li>
               <xref href="../../../Rosetta/common_newest/Rosetta_remotelink-self-inter-document-link-LxAdv-intra-document-link.dita">2015-05-22 - remotelink (self inter-document link) to ref:lnlink (intra-document link) id-CCCC-10468: Added an instruction to explicitly indicate <sourcexml>remotelink/@status</sourcexml> is always dropped (suppressed). This is a very low-priority change and has been added for technical correctness, particularly with respect to new CIs. Existing scripts do not have to implement this change unless needed since prior to the change <targetxml>remotelink/@status</targetxml> handling was not explicitly specified.</xref>
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
            <li>
               <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.doc-heading-LxAdv-dc.title.dita">2015-05-05 - docinfo:doc-heading to dc:title id-CCCC-10292: Added note to convert (TM), (R), 
                and (MC) to unicode code points. DB # 45. Applicable to CA14.</xref>
            </li>
            <li>
               <xref href="../../../Rosetta/common_newest/Rosetta_docinfo-LxAdv-doc.metadata_doc.docinfo.dita">2015-04-14 - docinfo to doc:metadata/doc:docinfo id-CCCC-10282: Remove bullet icon in sub nested list for
                    handling Indentation isssue.</xref>
            </li>
      </ul>
      </p>
    </section>
    <section>
      <title>7.1 PROD</title>
      <p>2015-03-26
      <ul>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.hier-LxAdv-doc.hier.dita">2015-03-25 - docinfo:hier to doc:hier id-CCCC-10297: Added note with rule for
            <sourcexml>title/num</sourcexml>. Suppress <sourcexml>num</sourcexml> tag but
            output content. Applicable for CA09 only. RFA 2249.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/DITA-CAN/CA07-CourtRules/document.highlights-to-doc.overview.dita">2015-03-25 - Document Highlights become doc:overview id-CA07-14033: Provide clarifications for text() PCDATA descendants and multiple child elements. Phase 5 RFA #204.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/DITA-CAN/CA07-CourtRules/document.highlights-to-doc.overview.dita">2015-03-24 - Document Highlights become doc:overview id-CA07-14033: Updated target XPATH to include <targetxml>bodytext/p/text</targetxml>. R4.5 RFA #2220.</xref>
        </li>
      </ul>
      </p>
    </section>
    <section>
      <title>7.1 PROD</title>
      <p>2015-03-20
      <ul>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_CAN_docinfo.custom-metafields-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta.meta.metaitem.dita">2015-03-19 - docinfo:custom-metafields to doc:legacy-metadata[@metadatasource="lbu-meta"]/meta/metaitem id-CCCC-10251: Within rules for First Act Doc, made the word
            act lower-case in source value to reflect recent data change. Formerly
            <sourcexml>"ActFirstDoc"</sourcexml>, now
            <sourcexml>"actFirstDoc"</sourcexml>. Affects CA05, 06, 07, 08. R4.5 RFA #2240.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/DITA-CAN/CA07-CourtRules/document.highlights-to-doc.overview.dita">2015-03-12 - Document Highlights become doc:overview id-CA07-14033: Created. R4.5 RFA #2220.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/LxAdv_CA-ref.cite4thisresource-LxAdv-ref.parallelcite-doc.related-content.dita">2015-02-23 - ref:cite4thisresource with ref:parallelcite and doc:related-content id-CCCC-10497: Updated Scenario for CA02, when "DOC-ID" used with "DOCUMENT" service, <targetxml>proc:param/@name="targetdoclang"</targetxml> should be included. RFA# 2201, Applicable on CA02.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/LxAdv_CA-ref.cite4thisresource-LxAdv-ref.parallelcite-doc.related-content.dita">2015-02-19 - ref:cite4thisresource with ref:parallelcite and doc:related-content id-CCCC-10497: Updated Scenario for CA02, "DOC-ID" should be used with "DOCUMENT" service. RFA# 1873, Applicable on CA02.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/LxAdv_CA-ref.cite4thisresource-LxAdv-ref.parallelcite-doc.related-content.dita">2015-02-13 - ref:cite4thisresource with ref:parallelcite and doc:related-content id-CCCC-10497: Updated citation R.S.N.B., added period in the last. RFA# 200, Applicable on CA05.</xref>
        </li>
      </ul>
      </p>
    </section>
    <section>
      <title>7.1 PROD</title>
      <p>2015-02-13
        <ul>
            <li>
               <xref href="../../../Rosetta/DITA-CAN/CA07-CourtRules/docinfo.versioninfo.dita">2015-02-13 - docinfo:versioninfo id-CA07-14032: Create the rule and example for handling of <sourcexml>docinfo:versioninfo</sourcexml>
               </xref>
            </li>
        </ul>
      </p>
      <p>2015-02-06
        <ul>
          <li>
            <xref href="../../../Rosetta/DITA-CAN/CA07-CourtRules/leg.level-not-in-force.dita">2015-02-06 - leg:level-not-in-force id-CA07-14019: Added instruction and snippet when
              leg:level-not-in-force does not match the French or English note or Note:, refer
              Example 4.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/DITA-CAN/CA07-CourtRules/leg.level-not-in-force.dita">2015-02-05 - leg:level-not-in-force id-CA07-14019: Modified the rule for handling of the terms starting with TRANSITIONAL
              PROVISION or RELATED PROVISION or INTERIM PROVISION or
              DISPOSITION TRANSITOIRE within leg:level-not-in-force</xref>
          </li>
        </ul>
      </p>
    </section>
    <section>
      <title>7.1 PROD</title>
      <p>2015-02-03
        <ul>
          <li>
            <xref href="../../../Rosetta/DITA-CAN/CA07-CourtRules/leg.level-not-in-force.dita">2015-02-03 - leg:level-not-in-force id-CA07-14019: Enhance the Target Snippet Example 3</xref>
          </li>
        </ul>
      </p>
    </section>
    <section>
      <title>7.1 PROD</title>
      <p>2015-02-02
      <ul>
        <li>
          <xref href="../../../Rosetta/DITA-CAN/CA07-CourtRules/leg.levelbody.dita">2015-02-02 - leg:levelbody id-CA07-14021: Removed ambiguity line for handling French or English note</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/DITA-CAN/CA07-CourtRules/leg.level-not-in-force.dita">2015-02-02 - leg:level-not-in-force id-CA07-14019: Added instrution for handling terms starting
            with TRANSITIONAL PROVISION or RELATED PROVISION or INTERIM
            PROVISION or DISPOSITION TRANSITOIRE within</xref>
        </li>
      </ul>
      </p>
    </section>
    <section>
      <title>7.1 PROD</title>
      <p>2015-01-27
      <ul>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_CAN_docinfo.custom-metafields-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta.meta.metaitem.dita">2015-01-27 - docinfo:custom-metafields to doc:legacy-metadata[@metadatasource="lbu-meta"]/meta/metaitem id-CCCC-10251: For CA05,CA06,CA07 and CA08 Existing topic
            CA first document in "current" material (id-CCCC-10517) removed and
            added a note here to handle firstActDocument</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/LxAdv_CA-ref.cite4thisresource-LxAdv-ref.parallelcite-doc.related-content.dita">2015-01-26 - ref:cite4thisresource with ref:parallelcite and doc:related-content id-CCCC-10497: Update proc:param name="normprotocol" from value="jcite" to value="CAEditorial"; for CA01, CA02, CA04, CA05, CA06, CA07 and CA08. R4.5 RFA #1873.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.hier-LxAdv-doc.hier.dita">2015-01-23 - docinfo:hier to doc:hier id-CCCC-10297: Added note to convert <sourcexml>docinfo:hierlev/@exclude-from-displayunits="true"</sourcexml> into
            <targetxml>doc:hier/@includeintoc="false"</targetxml>.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.versioninfo--LxAdv_ref.groupid.dita">2015-01-21 - docinfo:versioninfo to ref:groupid id-CCCC-10499: Per Enterprise Architecture, update target urn from "urn:variants-1:" to "urn:cldi-1:". R4.5 RFA #2146.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2015-01-19 - docinfo:assoc-links to doc:related-content id-CCCC-10284: For CA05 - CA08- Updated Instruction and
            included "<targetxml>related-content-grp</targetxml>" markup inside the target Example
            8 for conversion of QUERY link to doc:related-content.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2015-01-15 - docinfo:assoc-links to doc:related-content id-CCCC-10284: For CA03- Convert the QUERY link to doc:related-content. Refer Example 10. R4.5 RFA #2099.</xref>
        </li>
      </ul>
      </p>
    </section>
    <section>
      <title>7.1 PROD</title>
      <p>2015-01-13
      <ul>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2015-01-13 - docinfo:assoc-links to doc:related-content id-CCCC-10284: For CA05 - CA08 Conversion Needs to split
            multiple  ORs into a separate <targetxml>doc:related-content-item</targetxml>.
            Refer Example 9 </xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.hier-LxAdv-doc.hier.dita">2015-01-13 - docinfo:hier to doc:hier id-CCCC-10297: Added a note to repalce
            <sourcexml>nl</sourcexml> to a white space when <sourcexml>nl</sourcexml> is
            coming as child of <sourcexml>docinfo:hierlev/heading/title</sourcexml>
            Applicable for CA06-CA07 , RFA #2108 </xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2015-01-09 - remotelink to ref:crossreference id-CCCC-10465: For the two use cases associated with url (target
            <targetxml>url</targetxml> or <targetxml>ref:lnlink</targetxml>): Added exceptional rule
            to not concatenate values when <sourcexml>@hrefclass</sourcexml> content is already
            present in <sourcexml>@href</sourcexml>. Expanded examples 5 and 7 to illustrate the
            scenario. Responds to data for UK10 Dictionaries but applies in general. R4.5 Content
            Issue 2120.</xref>
        </li>
      </ul>
      </p>
    </section>
    <section>
      <title>7.1 PROD</title>
      <p>2015-01-02
      <ul>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2015-01-02 - docinfo:assoc-links to doc:related-content id-CCCC-10284: Added
            <sourcexml>docinfo:assoc-links/remotelink[@service="QUERY"]</sourcexml> and
            <sourcexml>docinfo:assoc-links-grp/remotelink[@service="QUERY"]</sourcexml> to generate
            <targetxml>doc:related-content</targetxml> markup. Applicable on CA05.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/LxAdv_CA-legisinfo.statusgroup-LxAdv-classify.classification.dita">2015-01-02 - CA first document in "current" material id-CCCC-10517: Updated
            <targetxml>classify:classcode/@normval</targetxml> attribute value from
            false to true. R 4.5 Issue # 2048, Applicable on
            CA05-CA08.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/LxAdv_CA-ref.cite4thisresource-LxAdv-ref.parallelcite-doc.related-content.dita">2014-12-19 - ref:cite4thisresource with ref:parallelcite and doc:related-content id-CCCC-10497: Updated citation from [2000] A.C.F. No.
            1985 to [2000] A.C.F. no 1985, for CA01.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2014-12-19 - docinfo:assoc-links to doc:related-content id-CCCC-10284: Updated target mapping for CA05 for handling
            <sourcexml>docinfo:assoc-links/remotelink[@service="QUERY"]</sourcexml>. Applicable on CA05.</xref>
        </li>
      </ul>
      </p>
    </section>
    <section>
      <title>7.1 PROD</title>
      <p>2014-12-19
      <ul>
        <li>
          <xref href="../../../Rosetta/common_newest/LxAdv_CA-legisinfo.statusgroup-LxAdv-classify.classification.dita">2014-12-19 - CA first document in "current" material id-CCCC-10517: Added new instruction for creation of
            <targetxml>classify:classification/classify:classitem/classify:classitem-identifier/classify:classname</targetxml>.
            Applicable on CA05-CA08.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2014-12-17 - docinfo:assoc-links to doc:related-content id-CCCC-10284: Added a Note for CA05, CA06, CA07 and CA08 for handling
            <sourcexml>docinfo:assoc-links-grp/remotelink[@service="QUERY"]
            </sourcexml>
          </xref>
        </li>
      </ul>
      </p>
    </section>
    <section>
      <title>7.1 PROD</title>
      <p>2014-12-17
      <ul>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2014-12-17 - docinfo:assoc-links to doc:related-content id-CCCC-10284: Added a Note for CA06-CA07 for handling
            <sourcexml>docinfo:assoc-links-grp[docinfo:assoc-links-grp="enabling"]/remotelink[@service="QUERY"]
            </sourcexml>
          </xref>
        </li>
      </ul>
      </p>
    </section>
    <section>
      <title>7.1 PROD</title>
      <p>2014-12-16 
      <ul>
        <li>
          <xref href="../../../Rosetta/common_newest/LxAdv_CA-ref.cite4thisresource-LxAdv-ref.parallelcite-doc.related-content.dita">2014-12-16 - ref:cite4thisresource with ref:parallelcite and doc:related-content id-CCCC-10497: Added note for conversion of short term
            citations and it's come any combinations with the mandatory (primary or
            alternative citation) citations then short terms ciatation should be converetd
            according to short table. Applicable on CA06-CA07.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/LxAdv_CA-ref.cite4thisresource-LxAdv-ref.parallelcite-doc.related-content.dita">2014-12-16 - ref:cite4thisresource with ref:parallelcite and doc:related-content id-CCCC-10497: Added note to identify primary and alternate language when primary and alternate citation are same. Applicable on CA05-CA08.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/DITA-CAN/CA07-CourtRules/leg.juris.dita">2014-12-15 - leg:juris id-CA07-14018: Updated the instruction and example for
            handling <sourcexml>leg:juris</sourcexml> and added the new elements
            <targetxml>globalentity:entityReference</targetxml> and
            <targetxml>globalentity:content</targetxml> under
            the<targetxml>globalentity:entity/</targetxml> target markup.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/LxAdv_CA-ref.cite4thisresource-LxAdv-ref.parallelcite-doc.related-content.dita">2014-11-18 - ref:cite4thisresource with ref:parallelcite and doc:related-content id-CCCC-10497: For CA02- Updated instructions for "proc:param name="targetdoclang" value="" for both English and French. P4, Db issue #365</xref>
        </li>
      </ul>
      </p>
    </section>
    <section>
      <title>7.1 PROD</title>
      <p>2014-11-18
      <ul>
        <li>
          <xref href="../../../Rosetta/DITA-CAN/CA07-CourtRules/leg.level-not-in-force.dita">2014-11-18 - leg:level-not-in-force id-CA07-14019: Added a French word <b>Note de l'èditeur</b> in for handling <sourcexml>leg:level-not-in-force</sourcexml>
          </xref>
        </li>
      </ul>
      </p>
    </section>
    <section>
      <title>7 PROD</title>
      <p>2014-11-06 
      <ul>
        <li>
          <xref href="../../../Rosetta/common_newest/LxAdv_CA-ref.cite4thisresource-LxAdv-ref.parallelcite-doc.related-content.dita">2014-11-06 - ref:cite4thisresource with ref:parallelcite and doc:related-content id-CCCC-10497: Added some english to french terms for
            translation of the citation and  also update <sourcexml>c.</sourcexml> to <targetxml>ch.</targetxml>   and vice versa in CA06-CA07 Table</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_figure-LxAdv-figure.dita">2014-10-28 - figure to figure id-CCCC-10320: Moved instruction regarding the XPath XPath <sourcexml>caption/note</sourcexml> into a separate topic. Not a rule change, just a minor reorganization of the instructions.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2014-10-27 - remotelink to ref:crossreference id-CCCC-10465: Minor. Within use case for
            <sourcexml>@service="DOC-ID"</sourcexml>, rule for
            <sourcexml>@remotekey1="REFPTID"</sourcexml> now also applies when
            <sourcexml>@remotekey1="REFPT"</sourcexml>. That is, the condition is expanded to
            include value <sourcexml>"REFPT"</sourcexml>; the mapping is unchanged. The value
            <sourcexml>"REFPT"</sourcexml> is new in Oct 2014 redelivery of UK11-DN but the rule
            applies to any stream where <sourcexml>@remotekey1="REFPT"</sourcexml> may occur. R4.5
            Content Issue 2003.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_figure-LxAdv-figure.dita">2014-10-24 - figure to figure id-CCCC-10320: Added instructions and example to handle the new XPath <sourcexml>caption/note</sourcexml>. (R4.5 Content Issue List #1993)</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/LxAdv_CA-ref.cite4thisresource-LxAdv-ref.parallelcite-doc.related-content.dita">2014-10-20 - ref:cite4thisresource with ref:parallelcite and doc:related-content id-CCCC-10497: Updated the old citation inside the table for
            CA08 stream i.e. appendice II to Appendix II.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/LxAdv_CA-ref.cite4thisresource-LxAdv-ref.parallelcite-doc.related-content.dita">2014-10-20 - ref:cite4thisresource with ref:parallelcite and doc:related-content id-CCCC-10497: Updated instruction to remove english version and add french version. P4 Db issue #324</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_lnlink_service_ATTACHMENT-LxAdv-ref.lnlink.dita">2014-10-15 - lnlink/@service="ATTACHMENT" to ref:lnlink id-CCCC-10396: Rewrote instructions, including the correction of a typographic error, and added an example.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_inlineobject-LxAdv-figure_ref.inlineobject.dita">2014-10-13 - inlineobject to figure/ref:inlineobject id-CCCC-10368: Added note and example to suppress
            <targetxml>proc:nl</targetxml> from before and after of
            <targetxml>figure/inlineobject</targetxml> when it comes inside
            <targetxml>verbatim</targetxml> element.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_title-LxAdv-title.dita">2014-10-07 - title to title id-CCCC-10479: Removed instruction and example to convert attribute <sourcexml>@searchtype="DIGEST-SUBJECT"</sourcexml>. Applicable to CA12.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/LxAdv_CA-ref.cite4thisresource-LxAdv-ref.parallelcite-doc.related-content.dita">2014-10-01 - ref:cite4thisresource with ref:parallelcite and doc:related-content id-CCCC-10497: Added the new citation inside the table for
            CA08 stream i.e. Annexe abrogratives to Repeal
            Schedules.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/LxAdv_CA-ref.cite4thisresource-LxAdv-ref.parallelcite-doc.related-content.dita">2014-10-01 - ref:cite4thisresource with ref:parallelcite and doc:related-content id-CCCC-10497: Updated CA05 table for "s." to
            "art." and "art." to "s." for citation "L.R.C."
            and "R.S.C.". Also updated the citation "L.N.B." to generate ch. to c.. Applicable on CA05.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_CAN_title-Chof-leg.heading_to-LexisAdvance_heading_title.dita">2014-10-01 - leg:heading/title to heading/title id-CCCC-10253: Added CA08 content stream code inside the rule for
            suppressed the "[@align="center"]" attribute in target mapping.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/DITA-CAN/CA07-CourtRules/leg.heading.dita">2014-09-25 - leg:heading id-CA07-14013: Corrected output markup, We have instruction to
            remove <sourcexml>title/@align="center"</sourcexml> from target output.</xref>
        </li>
      </ul>
      </p>
    </section>
    <section>
      <title>7 PROD</title>
      <p>2014-09-23 <ul>
          <li>
            <xref href="../../../Rosetta/common_newest/LxAdv_CA-ref.cite4thisresource-LxAdv-ref.parallelcite-doc.related-content.dita">2014-09-23 - ref:cite4thisresource with ref:parallelcite and doc:related-content
              id-CCCC-10497: Added English <sourcexml>Enactment Clause</sourcexml> To
                <targetxml>Formule d'édiction </targetxml>, <sourcexml>Long Title</sourcexml> To
                <targetxml>Titre intégral</targetxml>, <sourcexml>Short Title</sourcexml> To
                <targetxml>Titre abrégé</targetxml>,<sourcexml>Preamble</sourcexml> To
                <targetxml>Préambule </targetxml> and vice versa in CA06-CA07 Table</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/DITA-CAN/CA07-CourtRules/leg.marginal-note.dita">2014-09-17
              - leg:marginal-note id-CA07-14023: Updated instruction to generate
                <targetxml>ref:anchor/@id</targetxml> in given format
                <targetxml>"CountryCode_FileName_NumDigit"</targetxml>
            </xref>
          </li>        
        </ul></p>
    </section>
    <section>
      <title>7 PROD</title>
      <p>2014-09-16
        <ul>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2014-09-16 - docinfo:assoc-links to doc:related-content id-CCCC-10284: Added a note to create
              <targetxml>proc:param/@name="attachment-smi"</targetxml> and
              <targetxml>proc:param/@value</targetxml> as these was there in the snippet but was
              missing in instruction and also added a note in to simplify in output <targetxml>ref:key-value/@value</targetxml>
            </xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.versioninfo--LxAdv_ref.groupid.dita">2014-09-15 -docinfo:versioninfo to  ref:groupid id-CCCC-10499 :
              Updated target mapping of <sourcexml>docinfo:versioninfo/docinfo:versionbranch</sourcexml> from <b>Head</b> to <targetxml>doc:docinfo/doc:membership/ref:groupid[@group-type="variants-1"]/ref:resourceid</targetxml>
            </xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_CAN_docinfo.custom-metafields-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta.meta.metaitem.dita">2014-09-15 - docinfo:custom-metafields to doc:legacy-metadata[@metadatasource="lbu-meta"]/meta/metaitem id-CCCC-10251: update target mapping of
              <sourcexml>docinfo:custom-metafields/docinfo:custom-metafield[@name="act-id"]</sourcexml>
              from Head to
              <targetxml>doc:docinfo/doc:membership/ref:groupid[@group-type="leg-id-1"]/ref:resourceid</targetxml>
            </xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/LxAdv_CA-ref.cite4thisresource-LxAdv-ref.parallelcite-doc.related-content.dita">2014-09-03 - ref:cite4thisresource with ref:parallelcite and doc:related-content id-CCCC-10497: Added instructions for proc:param name="targetdoclang". R4.5 #1873.</xref>
          </li>
        </ul>
      </p>
    </section>
    <section>
      <title>6.7 PROD</title>
      <p>2014-09-05
        <ul>
          <li>
            <xref href="../../../Rosetta/common_newest/LxAdv_CA-ref.cite4thisresource-LxAdv-ref.parallelcite-doc.related-content.dita">2014-09-03 - ref:cite4thisresource with ref:parallelcite and doc:related-content id-CCCC-10497: Added instructions for proc:param name="targetdoclang". R4.5 #1873.</xref>
          </li>
        </ul>
      </p>
    </section>
    <section>
      <title>6.7 PROD</title>
      <p>2014-08-27
        <ul>
          <li>
            <xref href="../../../Rosetta/common_newest/LxAdv_CA-ref.cite4thisresource-LxAdv-ref.parallelcite-doc.related-content.dita">2014-08-25 - ref:cite4thisresource with ref:parallelcite and doc:related-content id-CCCC-10497: Added the new citation inside the table for
              CA08 i.e. R.S.C. 1985, Appendix II, No. 4, s. L.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/LxAdv_CA-ref.cite4thisresource-LxAdv-ref.parallelcite-doc.related-content.dita">2014-08-25 - ref:cite4thisresource with ref:parallelcite and doc:related-content id-CCCC-10497: Added Schedule to Annexe and
              vice a versa in C.R.C citation, Applicable for CA06 and CA07.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/LxAdv_CA-ref.cite4thisresource-LxAdv-ref.parallelcite-doc.related-content.dita">2014-08-21 - ref:cite4thisresource with ref:parallelcite and doc:related-content id-CCCC-10497: Updated C.O.M.C. with "no" and T.M.O.B. "No." for CA04- Db issue #326</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2014-08-21 - docinfo:assoc-links to doc:related-content id-CCCC-10284: Added instructions and an example for converting
              <sourcexml>lnlink[@service="ATTACHMENT"]</sourcexml> to
              <targetxml>ref:lnlink</targetxml>. Applicable on CA05-CA08.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/DITA-CAN/CA07-CourtRules/leg.levelbody.dita">2014-08-20 - leg.levelbody -id-CA07-14021: Updated instruction to handle French or English Note when it comes inside <sourcexml>leg:bodytext/p/text</sourcexml> to <targetxml>primlaw:bodytext/note[@notetype="instruction"]/bodytext/p/text</targetxml></xref>
          </li>
        <li>
          <xref href="../../../Rosetta/DITA-CAN/CA07-CourtRules/leg.level-not-in-force.dita">2014-08-20 - leg:level-not-in-force id-CA07-14019: Instruction and example updated for handling
            of Editior Notes and Official Notes which is comes under the
            <sourcexml>leg:level-not-in-force</sourcexml> markup and its mapped with
            <targetxml>note[@notetype="instruction"]</targetxml> and <targetxml>note[@notesource="official"]</targetxml>.and Added a note for handling PCDATA ENACTMENT NOT IN
            FORCE within <sourcexml>leg:heading/title</sourcexml> in
            <sourcexml>leg:level-not-in-force</sourcexml>. Phase 5 Canada discussion-defect tracking: Issue #89</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/LxAdv_CA-ref.cite4thisresource-LxAdv-ref.parallelcite-doc.related-content.dita">2014-08-11 - ref:cite4thisresource with ref:parallelcite and doc:related-content id-CCCC-10497: Added alternate citation for corresponding primary LNCRTCF and LNCRTCE citation as provided in alternate and primary format for CA04- Db issue #321</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/LxAdv_CA-ref.cite4thisresource-LxAdv-ref.parallelcite-doc.related-content.dita">2014-08-11 - ref:cite4thisresource with ref:parallelcite and doc:related-content id-CCCC-10497: Updated references in the table of L.R.N.-B. to L.R.N.B. and L.N.-B. to L.N.B. for CA05.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.versioninfo--LxAdv_ref.groupid.dita">2014-08-11 - docinfo:versioninfo to ref:groupid id-CCCC-10499: Updated source snippet elements starting with
            "docinfo:" instead of "doc:".</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_CAN_docinfo.custom-metafields-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta.meta.metaitem.dita">2014-08-11 - docinfo:custom-metafields to doc:legacy-metadata[@metadatasource="lbu-meta"]/meta/metaitem id-CCCC-10251: Added identifier <sourcexml>docinfo:custom-metafields/docinfo:custom-metafield[@searchtype="act-id"]</sourcexml> to generate <targetxml>*:head/ref:groupid/ref:resourceid/@ref:resourcekey=urn:leg-id-1:X</targetxml>.</xref>
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
      <title>6.6 PROD</title>
      <p>2014-07-30
      <ul>
      <li>
        <xref href="../../../Rosetta/common_newest/Rosetta_leg.num_ln.user-displayed-LxAdv-classify.classification.dita">2014-07-30 - leg:num[@ln.user-displayed="false"] to classify:classification: Added a note for handling "solsak"
          scenario means it should be placed above the first
          <targetxml>legisinfo:officialtitle</targetxml> instead of the last element
          in the <targetxml>*:head</targetxml> section</xref>
      </li>
      <li>
        <xref href="../../../Rosetta/common_newest/LxAdv_CA-ref.cite4thisresource-LxAdv-ref.parallelcite-doc.related-content.dita">2014-07-28 - ref:cite4thisresource with ref:parallelcite and doc:related-content id-CCCC-10497: Added the new citation inside the table for
          CA06 and CA07 i.e. CQLR, c. A-2.1, r.1.1 .</xref>
      </li>
      <li>
        <xref href="../../../Rosetta/DITA-CAN/CA07-CourtRules/leg.level-not-in-force.dita">2014-07-28 - leg:level-not-in-force id-CA07-14019: Added a note: Conversion needs to place
          <targetxml>primlaw:level[@leveltype="amendment"]</targetxml> in order to
          distinguish it from other primlaw:level, when
          <sourcexml>leg:level-not-in-force</sourcexml> starts with the normal
          text.</xref>
      </li>
        <li>
          <xref href="../../../Rosetta/DITA-CAN/CA07-CourtRules/leg.levelbody.dita">2014-07-28 - leg.levelbody -id-CA07-14021: Added a note to handle French or English Note when it comes inside <sourcexml>leg:bodytext/p/text</sourcexml></xref>
        </li>
      </ul>
      </p>
    </section>
    <section>
      <title>6.6 PROD</title>
      <p>2014-07-25
      <ul>
        <li>
          <xref href="../../../Rosetta/DITA-CAN/CA07-CourtRules/leg.currencydate.dita">2014-07-25 - leg:currencydate id-CA07-14011: Added instruction to suppress target markup of
            <sourcexml>leg:currencydate</sourcexml> with it's child
            <sourcexml>remotelink</sourcexml> from conversion Webteam # 271366.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/LxAdv_CA-ref.cite4thisresource-LxAdv-ref.parallelcite-doc.related-content.dita">2014-07-24 - ref:cite4thisresource with ref:parallelcite and doc:related-content id-CCCC-10497: Added new rule for conversion of CA01, CA02,
            CA04 and updated instruction for CA05-CA08.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/LxAdv_CA-ref.cite4thisresource-LxAdv-ref.parallelcite-doc.related-content.dita">2014-07-21 - ref:cite4thisresource with ref:parallelcite and doc:related-content id-CCCC-10497: Updated CA01 citation [1986] A.C.A.C. no
            1 and snippet.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/LxAdv_CA-ref.cite4thisresource-LxAdv-ref.parallelcite-doc.related-content.dita">2014-07-09 - ref:cite4thisresource with ref:parallelcite and doc:related-content id-CCCC-10497: Added primary and alternate language for CA04- Db issue #250</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_inlineobject-LxAdv-ref.inlineobject.dita">2014-07-08 - inlineobject to ref:inlineobject id-CCCC-10369: Not a rule change. Clarification added to note regarding suppression of <sourcexml>inlineobject</sourcexml> when <sourcexml>inlineobject/@filename</sourcexml> contains certain values.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/LxAdv_CA-ref.cite4thisresource-LxAdv-ref.parallelcite-doc.related-content.dita">2014-07-07 - ref:cite4thisresource with ref:parallelcite and doc:related-content id-CCCC-10497: Added R and Sch alternatives in CA06 and CA07 table</xref>
        </li>
      </ul>
      </p>
    </section>
    <section>
      <title>6.6 PROD</title>
      <p>2014-06-27 
      <ul>
        <li>
          <xref href="../../../Rosetta/DITA-CAN/CA07-CourtRules/leg.num.dita">2014-06-27 - leg:num id-CA07-14025: Updated instruction and example to add
            attribute
            <sourcexml>ref:cite4thisresource/@citetype="reporter"</sourcexml>
          </xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.versioninfo--LxAdv_ref.groupid.dita">2014-06-26 - docinfo:versioninfo to ref:groupid id-CCCC-10499: Make <targetxml>ref:resourcekey</targetxml> UCN value urn conform to PGUID registry, e.g. "urn:variants-1:03JC-55f4bd2a842a39d3580d89a0dcbb9cb0".</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/LxAdv_CA-ref.cite4thisresource-LxAdv-ref.parallelcite-doc.related-content.dita">2014-06-25 - ref:cite4thisresource with ref:parallelcite and doc:related-content id-CCCC-10497: Added instruction for
            <targetxml>ref:marker</targetxml> and updated table for CA01-CA02,
            CA05-CA07.</xref>
        </li>
      </ul>
      </p>
    </section>
    <section>
      <title>6.6 PROD</title>
      <p>2014-06-23 
      <ul>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_CAN_docinfo.custom-metafields-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta.meta.metaitem.dita">2014-06-23 - docinfo:custom-metafields to doc:legacy-metadata[@metadatasource="lbu-meta"]/meta/metaitem id-CCCC-10251: Added Rule for mapping
            <sourcexml>docinfo:custom-metafields/docinfo:custom-metafield/@act-id</sourcexml>
            in HEAD Section in target, this is applicable for CA05-CA08 only Db issue #1464</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.doc-id-LxAdv-dcidentifier_lnmetaidentifier-scheme.dita">2014-06-23 - docinfo:doc-id to dc:identifier[@lnmeta:identifier-scheme] id-CCCC-10293: Note and Example removed - For CA05 Acts and
            Bills- Mapping in dc:identifier for act-no and chunk-no. Db issue #1464</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/LxAdv_CA-ref.cite4thisresource-LxAdv-ref.parallelcite-doc.related-content.dita">2014-06-20 - ref:cite4thisresource with ref:parallelcite and doc:related-content id-CCCC-10497: Changed ref:parallelcite@citetype to "parallel"
            from "FrenchVersion" or "EnglishVersion" to be consistent with ref:parallelcite@citetype evreywhere else.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2014-06-18 - docinfo:assoc-links to doc:related-content id-CCCC-10284: Corrected minor typos in <sourcexml>lnlink[@service="QUERYLINK"]</sourcexml> instructions.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/LxAdv_CA-ref.cite4thisresource-LxAdv-ref.parallelcite-doc.related-content.dita">2014-06-17 - ref:cite4thisresource with ref:parallelcite and doc:related-content id-CCCC-10497: Created.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2014-06-13 - docinfo:assoc-links to doc:related-content id-CCCC-10284: Added instructions and an example for converting
            <sourcexml>lnlink[@service="QUERYLINK"]</sourcexml> to
            <targetxml>ref:lnlink</targetxml>.</xref>
        </li>
      </ul>
      </p>
    </section>
    <section>
      <title>6.6 PROD</title>
      <p>2014-06-04 
        <ul>
        <li>
          <xref href="../../../Rosetta/DITA-CAN/CA07-CourtRules/leg.marginal-note.dita">2014-06-03 - leg:marginal-note id-CA07-14023: Instruction and example updated for adding
            attribute <targetxml>[@notetype="reference"]</targetxml> inside the target
            <targetxml>marginnote</targetxml> element for handling the input
            <sourcexml>leg:marginal-note</sourcexml>.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_footnote-LxAdv-footnote.dita">2014-06-02 - footnotegrp and footnote to footnotegrp and footnote id-CCCC-10322: Canada only. Added special rule to suppress
            indent from <sourcexml>footnote/fnbody/p[@indent]</sourcexml>. Applies
            immediately to all Canada streams. R4.5 Content Issue 1609.</xref>
        </li>
      </ul>
      </p>
      </section>
    <section>
      <title>6.5 PROD</title>
      <p>2014-05-29 <ul>
        <li>
          <xref href="../../../Rosetta/DITA-CAN/CA07-CourtRules/leg.num.dita">2014-05-29 - leg:num id-CA07-14025:  Added instruction and example, when NO
            leg:num exists with text in it Webteam # 260692</xref>
        </li>
        <li>
          <xref href="leg.marginal-note.dita">2014-05-27- modified mapping of <sourcexml>leg:marginal-note</sourcexml> to <targetxml>primlaw:bodytext/marginnote</targetxml></xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.doc-id-LxAdv-dcidentifier_lnmetaidentifier-scheme.dita">2014-05-21 - docinfo:doc-id to dc:identifier[@lnmeta:identifier-scheme] id-CCCC-10293: For CA05 Acts and Bills- Mapping in dc:identifier for act-no and chunk-no.. Db issue #1464 </xref>
        </li>
      </ul>
      </p>
    </section>
    
    <section>
      <title>6.5_PROD</title>
      <p>2014-05-01 
      <ul>
        <li>
          <xref href="../../../Rosetta/DITA-CAN/CA07-CourtRules/leg.num_ci.cite.dita">2014-05-01 - leg:num/ci:cite: Instruction and example added for handling
            <sourcexml>leg:num/ci:cite[@type="cite4thisdoc"]</sourcexml>. Webteam # 255931 . </xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2014-04-28 - docinfo:assoc-links to doc:related-content: Clarified instructions regarding <sourcexml>link</sourcexml> elements and added an example (#4) illustrating the special <sourcexml>text/link</sourcexml> conversion. No mapping rules where changed or added.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2014-04-21 - docinfo:assoc-links to doc:related-content: Added an instruction to handle
            <sourcexml>link</sourcexml> elements. These can potentially occur in any future UK data
            and will be present in stream UK21fl when those documents become available later in
            2014.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_footnote-LxAdv-footnote.dita">2014-04-17 - footnotegrp and footnote to footnotegrp and footnote: Added instruction for
            <sourcexml>footnotegrp</sourcexml> within <sourcexml>sigblock</sourcexml>.
            Specifies <targetxml>p/text</targetxml> wrapper for target
            <targetxml>sigblock/p/text/footnotegroup</targetxml>. Immediately affects
            UK12 but will apply to any stream if the use case occurs. Phase 6 UK discussion
            items 76 and 88.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_p-LxAdv-p.dita">2014-04-14 - p to p: Removed Colons from Labels.. DB item #1255</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2014-04-03 - docinfo:assoc-links to doc:related-content: Illustrative changes. Examples modified. Mapping for
            <sourcexml>ci:cite</sourcexml> added to Example 3. Former Examples 4 and 5 removed to avoid
            confusion with special AU-NZ use case described in a separate module. R4.5 Content issue #1125,
            for AU-NZ, has prompted the changes for this general module.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2014-03-25 - docinfo:assoc-links to doc:related-content: Added rule and example for
            <sourcexml>docinfo:assoc-links/docinfo:assoc-links-grp/ci:cite</sourcexml>. R4.5 Content issue
            #1125</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_figure-LxAdv-figure.dita">2014-03-20 - figure to figure: Illustrative change. Added example to
            explicitly show standard conversion of child link to ref:lnlink. Prompted by
            Phase 6 UK Discussion Item 77. Webteam 252434.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2014-02-25 - remotelink to ref:crossreference: Updated instruction and created new example (#16) for handling <sourcexml>remotelink[@service="QUERY"]</sourcexml>. New instruction preserves pcdata but suppresses <sourcexml>remotelink</sourcexml> markup. Webstar #250335. Change applies immediately to all Pacific streams, and in the long run to all streams.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.doc-heading-LxAdv-dc.title.dita">2014-02-11 - docinfo:doc-heading to dc:title: Updated note when <sourcexml>emph</sourcexml> is
            child of <sourcexml>docinfo:doc-heading</sourcexml> then suppress
            <sourcexml>emph</sourcexml> element and retain its content in
            <targetxml>dc:title</targetxml>, These instructions apply immediately to
            CA12.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.topiccodes-to-LxAdv-classify.classification_classscheme_docinfo-topiccodes.dita">2014-02-03 - docinfo:topiccodes to classify:classification[@classscheme="docinfo:topiccodes"]: Added a special rule for UK07 contents, When element <sourcexml>docinfo:topiccode</sourcexml> contains attribute <sourcexml>@scheme="source-by-date"</sourcexml>, then conversion will suppress it including its contents as well. Phase 5 UK discussion-defect tracking: issue #156. </xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2014-02-03 - remotelink to ref:crossreference: Instruction updated if <sourcexml>remotelink</sourcexml> occurs as multiple, immediate siblings and without intermediary text within <sourcexml>title</sourcexml>. Also added a example for the same scenario. Phase 5 UK discussion-defect tracking issue #161</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_text-LxAdv-text.dita">2014-01-31 - text to text: Updated instruction, <targetxml>align</targetxml> will be moved in <targetxml>p</targetxml> in NL conversion. NZ09 commentary discussion board issue for handling <sourcexml>text/@align</sourcexml>
          </xref>
        </li>
      </ul></p>
      </section>
    <section>
      <title>6.5_PROD</title>
      <p>2014-01-23 
      <ul>
        <li>
          <xref href="../../common_newest/Rosetta_Elements-LxAdv-Empty_Elements.dita">2014-01-16 - Suppress each empty element unless otherwise stated: Added list of elements to suppress if empty.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_date-Chof-docinfo.load-date-LxAdv-dc.date_lnmeta.datetype_load-date-scheme.dita">2014-01-07 - docinfo:load-date/date to dc:date[@lnmeta:datetype="load-date"]:  Added a note along with example which contains "00" value in <sourcexml>@day="00"</sourcexml> and <sourcexml>@month="00"</sourcexml> attributes encountered in CANADA contents.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_footnote-LxAdv-footnote.dita">2014-01-06 - footnotegrp and footnote to footnotegrp and footnote: Updated target example for applying the rule of "deleting extraneous
            instances of @morerows, @colsep and @rowsep" in sample documents.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_l-LxAdv-list.dita">2014-01-06 - l to list: Added mapping instruction for nested lists.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_docinfo.alt-renditions-LxAdv-doc.alt-renditions.dita">2013-12-17 - docinfo:alt-renditions/docinfo:alt-rendition to doc:alt-renditions/doc:alt-rendition: Added instruction and example for <sourcexml>docinfo:alt-rendition/lnlink</sourcexml>. (Webteam #247307)</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_CAN_docinfo.custom-metafields-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta.meta.metaitem.dita">2013-12-04 - docinfo:custom-metafields to doc:legacy-metadata[@metadatasource="lbu-meta"]/meta/metaitem: Updated target example for retaining "date" and "court" in target example.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_p-LxAdv-p.dita">2013-12-04 - p to p: Updated target example when <sourcexml>p</sourcexml> or <sourcexml>p/@nl="0"</sourcexml> comes in <sourcexml>references</sourcexml>, this change directly affects NZ07.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_p-LxAdv-p.dita">2013-11-21 - p to p: Updated instruction and example <sourcexml>p</sourcexml> or <sourcexml>p/@nl="0"</sourcexml> comes in <sourcexml>references</sourcexml>, this change directly affects NZ07.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_docinfo.alt-renditions-LxAdv-doc.alt-renditions.dita">2013-10-29 - docinfo:alt-renditions/docinfo:alt-rendition to doc:alt-renditions/doc:alt-rendition: Added instruction and example for UK06 Laws/Acts/Bills/Measures and UK07 Regulation place the text of <sourcexml>leg:officialname</sourcexml> in <targetxml>doc:alt-renditions/doc:alt-rendition/ref:lnlink/ref:marker</targetxml> (Webteam #243521)</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_p-LxAdv-p.dita">2013-10-25 - p to p: Added instruction and example <sourcexml>p/@nl="0"</sourcexml> comes in <sourcexml>references</sourcexml>.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_figure-LxAdv-figure.dita">2013-10-23 - figure to figure: Added instruction for handling figure/p/text/inlineobject Webteam # 239816</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-10-23 - remotelink to ref:crossreference: Added Example when <sourcexml>remotelink</sourcexml> having child <sourcexml>emph</sourcexml>. Webteam # 239816</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_docinfo.doc-heading-LxAdv-dc.title.dita">2013-10-18 - docinfo:doc-heading to dc:title: Updated Instruction when <sourcexml>docinfo:doc-heading</sourcexml> contains word RULE: " or STATUTE: .</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_Elements-LxAdv-Empty_Elements.dita">2013-10-14 - Suppress each empty element unless otherwise stated: Changed antecedent to singular to match
            instructions.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_p-LxAdv-p.dita">2013-10-09 - p to p: Added instruction and example <sourcexml>p</sourcexml> comes with <sourcexml>@nl=”0”</sourcexml>.</xref>
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
          <xref href="../../common_newest/Rosetta_title-LxAdv-title.dita">2013-09-03 - title to title: Updated Instruction when <sourcexml>title</sourcexml> contains word "TITLE: " or "NAME: " or "SITE: ".</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_docinfo.doc-heading-LxAdv-dc.title.dita">2013-09-03 - docinfo:doc-heading to dc:title: Updated Instruction when <sourcexml>docinfo:doc-heading</sourcexml> contains word "TITLE: " or NAME:  or SITE:  or SUBJECT:.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_footnote-LxAdv-footnote.dita">2013-08-22 - footnotegrp and footnote to footnotegrp and footnote: Not a rule change. Second target sample modified to
            remove attribute <targetxml>lnci:cite[@citeref]</targetxml> because value captured in
            descendant <targetxml>ref:crossreference/ref:locator[@anchoridref]</targetxml>.
            Ancillary/illustrative within this module. Change made to promote uniformity across
            samples.</xref>
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
        <li>
          <xref href="../../common_newest/Rosetta_XML_Character_Entities-LxAdv-Unicode.dita">2013-08-08 - XML Character Entities to Unicode code points: This change does not represent a change to
            conversion but rather documentation of the existing behavior.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_date-Chof-docinfo.load-date-LxAdv-dc.date_lnmeta.datetype_load-date-scheme.dita">2013-08-07 - docinfo:load-date/date to dc:date[@lnmeta:datetype="load-date"]: Removed instructions for creating
            <targetxml>dc:date[@lnmeta:datetype="conversion-date"]</targetxml>.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_remotelink-self-inter-document-link-LxAdv-intra-document-link.dita">2013-08-07 - remotelink (self inter-document link) to ref:lnlink (intra-document link): Changed target to
            <targetxml>ref:lnlink</targetxml>; formerly
            <targetxml>ref:crossreference</targetxml>. Changed because the only
            supported markup for intradoc linking is <targetxml>ref:lnlink</targetxml>, as
            per Bency Thomas. WebTeam # 230229. Affects all streams.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_CAN_docinfo.custom-metafields-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta.meta.metaitem.dita">2013-08-01 - docinfo:custom-metafields to doc:legacy-metadata[@metadatasource="lbu-meta"]/meta/metaitem: Updated target example for retaining "JURIS-SORT", "COURT-SORT" and "TERM-SORT" in target example.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_docinfo.doc-heading-LxAdv-dc.title.dita">2013-08-01 - docinfo:doc-heading to dc:title: For Canada Content streams: Added a note and examples, when <sourcexml>docinfo:doc-heading</sourcexml> contains <sourcexml>nl</sourcexml> as a child element.</xref>
        </li>
      </ul>
        </p>
      </section>
    <section>
      <title>6.3_PROD</title>
      <p>2013-07-31 
      <ul>
        <li>
          <xref href="../../common_newest/Rosetta_title-LxAdv-title.dita">2013-07-30 - title to title: Updated Instruction when <sourcexml>title</sourcexml> contains word "TITLE: " or "NAME: ".</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_docinfo.doc-heading-LxAdv-dc.title.dita">2013-07-30 - docinfo:doc-heading to dc:title: Added Instruction when <sourcexml>docinfo:doc-heading</sourcexml> contains word "TITLE: " or NAME: .</xref>
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
          <xref href="../../common_newest/Rosetta_docinfo.doc-lang-and-doc-country-LxAdv-ROOT_xml.lang.dita">2013-07-16 - docinfo:doc-lang and docinfo:doc-country to @xml:lang and @xml:ID: Instruction narrative edited for language; no changes to mappings, no impact to stylesheets.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_figure-LxAdv-figure.dita">2013-07-15 - figure to figure: Added instructions for handling
            figure/caption and an example demonstrating the mapping.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_title-LxAdv-title.dita">2013-07-05 - title to title: Added Instruction when <sourcexml>title</sourcexml> contains word "TITLE: ".</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_CAN_docinfo.custom-metafields-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta.meta.metaitem.dita">2013-06-04 - docinfo:custom-metafields to doc:legacy-metadata[@metadatasource="lbu-meta"]/meta/metaitem: Consolidated narrative and examples for clarity.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-06-03 - remotelink to ref:crossreference: Updated the Target XML 2 by removing the <targetxml>@crossreferencetype</targetxml> for Canada example.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_CAN_docinfo.custom-metafields-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta.meta.metaitem.dita">2013-05-24 - docinfo:custom-metafields to doc:legacy-metadata[@metadatasource="lbu-meta"]/meta/metaitem: Instruction and example added for handling of
            <sourcexml>docinfo:custom-metafield/@name="pageestimate"</sourcexml>.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_inlineobject-LxAdv-ref.inlineobject.dita">2013-05-24 - inlineobject to ref:inlineobject: Updated instruction for handling of inlineobject when smi is present and some of the verbiage is changed.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_link-LxAdv-ref.lnlink.dita">2013-05-24 - link to ref:lnlink/@service="ATTACHMENT": Updated instruction for handling of link when smi is present and some of the verbiage is changed.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_CAN_title-Chof-leg.heading_to-LexisAdvance_heading_title.dita">2013-05-22 - leg:heading/title to heading/title: Suppressed the "[@align="center"]" attribute in target
            mapping and this rule will be applicable for CA05- Acts &amp; Bills, CA06-Regs
            and CA07-Court Rules.</xref>
        </li>
      </ul>
        </p>
    </section>
    <section>
      <title>6.2_PROD</title>
      <p>2013-05-20 - SP
        <ul>
          <li>
            <p>2013-05-20: <ph id="change_20130520_vv">Removed Canada content stream codes from instruction since its a Canada specific rule and will be applicable to all the content streams.</ph></p>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_docinfo-LxAdv-doc.metadata_doc.docinfo.dita">2013-05-16 - docinfo to doc:metadata/doc:docinfo: Fixed typo updating urn:contentitem to urn:contentItem</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_CAN_docinfo.custom-metafields-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta.meta.metaitem.dita">2013-05-13 - docinfo:custom-metafields to doc:legacy-metadata[@metadatasource="lbu-meta"]/meta/metaitem: Example added for handling of <sourcexml>docinfo:custom-metafields/@name="reg-no"</sourcexml>.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_figure-LxAdv-figure.dita">2013-05-08 - figure to figure: Extended the list of allowable values for image handling.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_inlineobject-LxAdv-ref.inlineobject.dita">2013-05-08 - inlineobject to ref:inlineobject: Extended the list of allowable values for image handling.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-05-08 - remotelink to ref:crossreference: Extended the list of allowable values for image handling.</xref>
          </li>
          <li>
            <xref href="../../DITA-CAN/CA07-CourtRules/leg.currencydate.dita">2013-05-07 - leg:currencydate: Updated example and rule for handling of
              <sourcexml>leg:dates/leg:currencydate/remotelink</sourcexml>
            </xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_inlineobject-LxAdv-ref.inlineobject.dita">2013-05-02 - inlineobject to ref:inlineobject: Some of the verbiage is changed and updated target example to if the SMI is present then a <targetxml>ref:inliineobject/@status</targetxml> attribute is set to “valid”.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_link-LxAdv-ref.lnlink.dita">2013-05-02 - link to ref:lnlink/@service="ATTACHMENT": Some of the verbiage is changed and updated target example to if the SMI is present then a <targetxml>ref:lnlink/@status</targetxml> attribute is set to “valid”.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_docinfo.alt-renditions-LxAdv-doc.alt-renditions.dita">2013-05-01 - docinfo:alt-renditions/docinfo:alt-rendition to doc:alt-renditions/doc:alt-rendition: Updated instructions and target example per latest Apollo markup.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_figure-LxAdv-figure.dita">2013-05-01 - figure to figure: Removed instructions for section
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
            <xref href="../../common_newest/Rosetta_link-LxAdv-ref.lnlink.dita">2013-05-01 - link to ref:lnlink/@service="ATTACHMENT": Updated instructions and target example per
              latest Apollo markup.</xref>
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
            <xref href="../../common_newest/Rosetta_figure-LxAdv-figure.dita">2013-04-30 - figure to figure: Updated target sample according to latest Apollo markup.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_inlineobject-LxAdv-ref.inlineobject.dita">2013-04-30 - inlineobject to ref:inlineobject: Updated target sample according to latest Apollo markup.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-04-30 - remotelink to ref:crossreference: Updated target sample according to latest Apollo markup.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_CAN_docinfo.custom-metafields-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta.meta.metaitem.dita">2013-04-29 - docinfo:custom-metafields to doc:legacy-metadata[@metadatasource="lbu-meta"]/meta/metaitem: Instructions and example added for handling various scenarios of 
              <sourcexml>docinfo:custom-metafields</sourcexml> for CA06-Regs and CA08-Const.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_docinfo.doc-lang-and-doc-country-LxAdv-ROOT_xml.lang.dita">2013-04-19 - docinfo:doc-lang and docinfo:doc-country to @xml:lang and @xml:ID: Added note about applicability of
              restrictions and required modifications for <targetxml>xml:id</targetxml> to
              other scenarios.</xref>
          </li>
        </ul>      
      </p>
    </section>
    <section>
      <title>6.0_PROD</title>
      <p>2013-04-18 - SP
        <ul>
          <li>
            <p><xref href="../../common_newest/Rosetta_date-Chof-docinfo.load-date-LxAdv-dc.date_lnmeta.datetype_load-date-scheme.dita">2013-04-18 - handling for dc:date.</xref></p>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_docinfo.alt-renditions-LxAdv-doc.alt-renditions.dita">2013-04-17 - docinfo:alt-renditions/docinfo:alt-rendition to doc:alt-renditions/doc:alt-rendition: Updated target example (removed ".pdf" from <targetxml>ref:key-value/@value</targetxml>).</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2013-04-12 - docinfo:assoc-links to doc:related-content: This module was changed from UKspecific to applicable to all LBUs</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2013-04-10 - docinfo:assoc-links to doc:related-content: An example for related content source and
              target xml 4</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_leg.num_ln.user-displayed-LxAdv-classify.classification.dita">2013-04-10 - leg:num[@ln.user-displayed="false"] to classify:classification: Updated the note for handling of
              leg:num/@ln.user-displayed="false"</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-04-10 - remotelink to ref:crossreference: Added Source XML 7a: for link to URL, with non-URL text content because it was previously missing, only the target example was here.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_Elements-LxAdv-Empty_Elements.dita">2013-03-28 - Suppress empty elements unless otherwise stated: Created.</xref>
          </li>
          <li>
            <xref href="../../DITA-CAN/CA07-CourtRules/leg.body.dita">2013-03-28 - leg:body: Updated target example [added <targetxml>@leveltype="unclassified"</targetxml> to 
              <targetxml>primlaw:level</targetxml>.</xref>
          </li>
          <li>
            <xref href="../../DITA-CAN/CA07-CourtRules/leg.level.dita">2013-03-28 - leg:level: Updated target example [removed <targetxml>@align="center"</targetxml> from <targetxml>title</targetxml>.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2013-03-28 - docinfo:assoc-links to doc:related-content:  Added rules for
              <sourcexml>docinfo:assoc-links-grp</sourcexml> and for child
              <sourcexml>text</sourcexml>.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_docinfo.alt-renditions-LxAdv-doc.alt-renditions.dita">2013-03-26 - docinfo:alt-renditions/docinfo:alt-rendition to doc:alt-renditions/doc:alt-rendition: Updated target example (<targetxml>proc:param/@value="pdf"</targetxml>) per project requirement.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_link-LxAdv-ref.lnlink.dita">2013-03-26 - link to ref:lnlink/@service="ATTACHMENT": Updated instruction and target example (<targetxml>proc:param/@value="pdf"</targetxml>) per project requirement.</xref>
          </li>
        </ul>
      </p>
    </section>
    <section>
      <title>5.0_PROD</title>
      <p>2013-04-02 - SP
        <ul>
          <li>
            <xref href="../../common_newest/Rosetta_Elements-LxAdv-Empty_Elements.dita">2013-03-28 - Suppress empty elements unless and otherwise stated: Created.</xref>
          </li>
          <li>
            <xref href="../../DITA-CAN/CA07-CourtRules/leg.body.dita">2013-03-28 - leg:body: Updated target example [added <targetxml>@leveltype="unclassified"</targetxml> to 
              <targetxml>primlaw:level</targetxml>.</xref>
          </li>
          <li>
            <xref href="../../DITA-CAN/CA07-CourtRules/leg.level.dita">2013-03-28 - leg:level: Updated target example [removed <targetxml>@align="center"</targetxml> from <targetxml>title</targetxml>.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_docinfo.alt-renditions-LxAdv-doc.alt-renditions.dita">2013-03-26 - docinfo:alt-renditions/docinfo:alt-rendition to doc:alt-renditions/doc:alt-rendition: Updated target example (<targetxml>proc:param/@value="pdf"</targetxml>) per project requirement.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_link-LxAdv-ref.lnlink.dita">2013-03-26 - link to ref:lnlink/@service="ATTACHMENT": Updated instruction and target example (<targetxml>proc:param/@value="pdf"</targetxml>) per project requirement.</xref>
          </li>
          <li>
            <xref href="../../DITA-CAN/CA07-CourtRules/leg.body.dita">2013-03-20 - leg:body: Added instruction and example for handling where document is having no legislative body information 
              i.e, <sourcexml>leg:body</sourcexml>.</xref>
          </li>
          <li>
            <xref href="../../DITA-CAN/CA07-CourtRules/leg.currencydate.dita">2013-03-20 - leg:currencydate: Added attribute <targetxml>crossreferencetype="seeAlso"</targetxml> to the target example.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_docinfo.doc-id-LxAdv-dcidentifier_lnmetaidentifier-scheme.dita">2013-03-20 - docinfo:doc-id to dc:identifier[@lnmeta:identifier-scheme]: Updated the information on handling the
              situation when <sourcexml>docinfo:dpsi[@id-string]</sourcexml> is absent with
              instructions to get the dpsi from
              <sourcexml>docinfo/docinfo:custom-metafields/docinfo:custom-metafield[@name="dpsi"]</sourcexml>.</xref>
          </li>
        </ul>        
      </p>
    </section>
    <section>
      <title>5.0_PROD</title>
      <p>2013-03-21 - SP
        <ul>
          <li>
            <xref href="../../DITA-CAN/CA07-CourtRules/leg.body.dita">2013-03-20 - leg:body: Added instruction and example for handling where document is having no legislative body information 
              i.e, <sourcexml>leg:body</sourcexml>.</xref>
          </li>
          <li>
            <xref href="../../DITA-CAN/CA07-CourtRules/leg.currencydate.dita">2013-03-20 - leg:currencydate: Added attribute <targetxml>crossreferencetype="seeAlso"</targetxml> to the target example.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_docinfo.doc-id-LxAdv-dcidentifier_lnmetaidentifier-scheme.dita">2013-03-20 - docinfo:doc-id to dc:identifier[@lnmeta:identifier-scheme]: Updated the information on handling the
              situation when <sourcexml>docinfo:dpsi[@id-string]</sourcexml> is absent with
              instructions to get the dpsi from
              <sourcexml>docinfo/docinfo:custom-metafields/docinfo:custom-metafield[@name="dpsi"]</sourcexml>.</xref>
          </li>
        </ul>
      </p>
    </section>
    <section>
      <title>5.0_PROD</title>
      <p>2013-03-14 - SP
        <ul>
          <li>
            <xref href="../../common_newest/Rosetta_leg.num_ln.user-displayed-LxAdv-classify.classification.dita">2013-03-14 - leg:num[@ln.user-displayed="false"] to classify:classification: Updated instruction and example for handling of
              leg:num/@ln.user-displayed="false"</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-03-11 - remotelink to ref:crossreference: Instruction and example added on how to handle <targetxml>ref:marker </targetxml> 
              if it is in <targetxml>ref:lnlink@service=”URL”</targetxml>and the <targetxml>ref:key-value@value</targetxml> starts-with (., 'http://www.lexisnexis.com/au/legal/api') 
            </xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_heading-LxAdv-heading.dita">2013-03-06 - heading to heading: Removed instructions/rules for exceptional desig scenario and deprecated
              attribute <targetxml>@followstitle</targetxml>.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_docinfo.alt-renditions-LxAdv-doc.alt-renditions.dita">2013-03-05 - docinfo:alt-renditions/docinfo:alt-rendition to doc:alt-renditions/doc:alt-rendition: Updated target example (removed ".pdf" from attribute value of <sourcexml>ref:key-value/@value</sourcexml>).</xref>
          </li>
        </ul>
      </p>
    </section>
    <section>
      <title>4.12_PROD</title>
      <p>2013-03-04 - SP
        <ol>
          <li>
            <p>Head: <ph id="change_20130227_SP">Added instruction and example for handling where document is having no legislative information.</ph></p>
          </li>
          <li>
            <p>leg:relatedleg: <ph id="change_20130304_SP">Removed CR number for <targetxml>primlaw:authority</targetxml>.</ph></p>
          </li>
        </ol>
      </p>
    </section>
    <section>
      <title/>
      <p>2013-02-11 
        <ul>
          <li><b>Head:</b> Moved the Instruction for <sourcexml>leg:officialname</sourcexml>,
              <sourcexml>leg:officialnum</sourcexml>, <sourcexml>leg:dates</sourcexml>,
              <sourcexml>leg:miscdate</sourcexml> and <sourcexml>leg:relatedleg</sourcexml> markups
            from <b>Body</b> to <b>Head</b> part because <sourcexml>leg:info</sourcexml> markups
            containing information about the entire legislation and not just about to some specific
            level and this is a semantic changes for CA content stream.</li>
          <li><b>Head</b>: Placed change request number <b>[DASS2013020805083300]</b> for handling
            of <sourcexml>leg:relatedleg</sourcexml> element in Rosetta (to allow
              <targetxml>primlaw:authority</targetxml> within
              <targetxml>primlawinfo:primlawinfo</targetxml> in NL schema).</li>
        </ul></p>
    </section>
    <section>
      <title/>
      <p>2013-01-30
        <ul>
          <li>Added instructions for handling of <sourcexml>link</sourcexml> element.</li>
          <li>Added instructions for handling of <sourcexml>title</sourcexml> when it occurs within
              <sourcexml>leg:heading</sourcexml>.</li>
        </ul></p>
    </section>
    <section>
      <title/>
      <p>2013-01-11
        <ul>
          <li>Created</li>
        </ul>
      </p>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA07-CourtRules\change-log.dita  -->
<!--	<xsl:message>CA07-CourtRules_change-log.xsl requires manual development!</xsl:message> -->

</xsl:stylesheet>