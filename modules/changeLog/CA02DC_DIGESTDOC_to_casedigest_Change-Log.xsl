<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:ci="http://www.lexis-nexis.com/ci" xmlns:dig="http://www.lexis-nexis.com/glp/dig" xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" xmlns:glp="http://www.lexis-nexis.com/glp" xmlns:casedigest="http://www.lexisnexis.com/xmlschemas/content/legal/case-digest/1/" xmlns:casehist="http://www.lexisnexis.com/xmlschemas/content/legal/case-history/1/" xmlns:caseinfo="http://www.lexisnexis.com/xmlschemas/content/legal/case-information/1/" xmlns:classify="http://www.lexisnexis.com/xmlschemas/content/shared/classification/1/" xmlns:courtcase="http://www.lexisnexis.com/xmlschemas/content/legal/courtcase/1/" xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns:decision="http://www.lexisnexis.com/xmlschemas/content/legal/decision/1/" xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" xmlns:globalentity="urn:x-lexisnexis:content:identified-entities:global:1" xmlns:jurisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/jurisdiction-info/1/" xmlns:legishist="http://www.lexisnexis.com/xmlschemas/content/legal/legislation-history/1/" xmlns:legisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/legislation-info/1/" xmlns:lnci="http://www.lexisnexis.com/xmlschemas/content/shared/citations/1/" xmlns:nitf="http://iptc.org/std/NITF/2006-10-18/" xmlns:person="http://www.lexisnexis.com/xmlschemas/content/shared/person/1/" xmlns:proc="http://www.lexisnexis.com/xmlschemas/content/shared/process-elements/1/" xmlns:pubinfo="http://www.lexisnexis.com/xmlschemas/content/shared/publication-info/1/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita case ci dig docinfo glp">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Change-Log">
        <title>Change Log</title>
        <body>
                <section>
                        <title>casedigest 8.3_PROD</title>
                        <p>2015-03-02:
                                <ul>
                                        <li>
                                                <xref href="classification.dita">2015-03-02 - classification id-CA02DC-12620: Updated instruction to group <targetxml>classify:classification-grp classscheme="carlson-index" </targetxml> in one. Db P4 #408</xref>
                                        </li>
                                        <li>
                                                <xref href="../../../common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2015-02-24 - ci.cite to lnci.cite id-CCCC-10268: Example updated as per new rule an attribute <targetxml>@inline</targetxml>get added with <targetxml>desig</targetxml>element when the source<sourcexml>pnum</sourcexml>is not having that attribute<sourcexml>@inline</sourcexml>
                                                </xref>
                                        </li>
                                </ul>
                        </p>
                        <p>2015-02-13:
                                <ul>
									<li>
									   <xref href="case.reportercite.dita">2015-02-13 - case:reportercite id-CA02DC-12617: Added note to remove the date from the cite for WDNS source  DB item R4.5 issue no #1593</xref>
									</li>
                                </ul>
                        </p>
                        <p>2015-02-09:
                                <ul>
                                        <li>
                                                <xref href="case.juris.dita">2015-02-05 - case:juris id-CA02DC-12616: Remove UK PGUID value from table (CA01, CA02 (all streams), CA03 and CA04). R45 RFA #2133.</xref>
                                        </li>
                                </ul>
                        </p>
                        <p>2015-02-02:
                                <ul>
                                        <li>
                                                <xref href="case.juris.dita">2015-02-02 - case:juris id-CA02DC-12616: Added instructions to apply CA in guid for country code "UK". Db issue #407 </xref>
                                        </li>
                                </ul>
                        </p>
                        <p>2015-01-30:
                                <ul>
                                        <li>
                                                <xref href="case.juris.dita">2015-01-30 - case:juris id-CA02DC-12616: Updated "The province codes with PGUID codes for Country" table when case:juris with country code "UK". Db issue #407 </xref>
                                        </li>
                                        <li>
                                                <xref href="../../../common_newest/Rosetta_CAN_docinfo.custom-metafields-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta.meta.metaitem.dita">2015-01-27 - docinfo:custom-metafields to doc:legacy-metadata[@metadatasource="lbu-meta"]/meta/metaitem id-CCCC-10251: For CA05,CA06,CA07 and CA08 Existing topic
                                                        CA first document in "current" material (id-CCCC-10517) removed and
                                                        added a note here to handle firstActDocument</xref>
                                        </li>
                                </ul></p>
                </section>
                <section>
                        <title>casedigest 8.1_PROD</title>
                        <p>2015-01-15:
                        <ul>
                                <li>
                                        <xref href="classification.dita">2015-01-15 - classification id-CA02DC-12620: We have added <targetxml>classify:classification-grp classscheme="carlson-index" </targetxml>element around <targetxml>classify:classification</targetxml> when it is having attribute value any of these <targetxml>[@classscheme="lnc.card.cause-of-injury" | "lnc.card.injury-topic-numbers" | "lnc.card.damages-issues-topic-numbers" | "lnc.card.damage-range"]
                                        </targetxml> in the target.</xref>
                                </li>
                        </ul></p>
                </section>
                <section>
                        <title>casedigest 8.1_PROD</title>
                        <p>2014-12-15:
                                <ul>
                                        <li>
                                                <xref href="case.juris.dita">2014-12-15 - case:juris id-CA02DC-12616: Updated mapping. Db R4.5 issue
                                                        #2047</xref>
                                        </li>
                                        <li>
                                                2014-11-15 - case:courtcode/@ln.user-displayed id-CCCC-10257: Removed this section P4, Db
                                                issue #387
                                        </li>
                                        <li>
                                                2014-11-15 - abbrvname/@ln.user-displayed="false" id-CCCC-10220: Removed this section P4, Db issue
                                                #387
                                        </li>
                                </ul>
                        </p>
                        <p>2014-12-11
                        <ul>
                                <li>
                                        <xref href="case.reportercite.dita">2014-12-11 - case:reportercite id-CA02DC-12617: updated example to map ref:parallelcite under casedigest:caseinfo  DB item R4.5 issue no #2049 and #2069</xref>
                                </li>
                                <li>
                                        <xref href="classification.dita">2014-12-11 - classification id-CA02DC-12620: Added instructions to accomodate WDNS
                                                classifications. Db issue R4.5 #2071</xref>
                                </li>
                        </ul>
                        </p>
                        <p>2014-12-05
                                <ul>
                                        <li>
                                                <xref href="case.reportercite.dita">2014-12-05 - case:reportercite id-CA02DC-12617: Added <targetxml>casedigest:caseinfo</targetxml> to examples DB item # R4.5- 2049</xref>
                                        </li>
                                </ul>
                        </p>
                        <p>2014-12-04
                                <ul><li>
                                        <xref href="case.dates.dita">2014-12-04 - case:dates id-CA02DC-12613: Removed docinfo:subtype="wdns" scenario and updated
                                                CI to create date-text for case:decisiondate ln.user-displayed="false".... Db issue
                                                #263</xref>
                                </li>
                                </ul>
                        </p>
                </section>
                <section>
                        <title>casedigest 8.1_PROD</title>
                        <p>2014-11-18
                                <ul>
                                        <li>
                                                2014-11-18 - abbrvname/@ln.user-displayed="false" id-CCCC-10220: Updated Instructions for abbrvname P4, Db issue
                                                        #364
                                        </li>
                                        <li>
                                                2014-11-18 - case:courtcode/@ln.user-displayed id-CCCC-10257: Updated Instructions for case:courtcode P4, Db
                                                        issue #364
                                        </li>
                                </ul>
                        </p>
                </section>
                <section>
                        <title>casedigest 8.1_PROD</title>
                       <p>2014-11-11 <ul>
                                <li>
                                        <xref href="case.courtcode.dita">2014-11-11 - case:courtcode id-CA02DC-12609: Updated the mapping for
                                                <sourcexml>case:courtcode</sourcexml>, schema issue for
                                                jurisinfo:alternatecourtcode....Db issue #361 </xref>
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
                       </ul></p>
                </section>
                <section>
                        <title>casedigest 8.1_PROD</title>
                        <p>2014-10-22 <ul>
                                        <li>
                                                <xref href="abbrvname.dita">2014-10-22 - abbrvname
                                                  id-CA02DC-12607: Updated CI for
                                                  <targetxml>jurisinfo:courtname@normshortname</targetxml>
                                                  to also be placed in
                                                  <targetxml>jurisinfo:alternatecourtcode@alternatecourtcode</targetxml>...R4.5
                                                  Db issue #1987</xref>
                                        </li>
                                </ul></p>
                </section>
                <section>
                        <title>casedigest 8.0_PROD</title> 2014-10-06 <ul>
                                <li>
                                        <xref href="../../../common_caselaw/Rosetta_refnum.refnumtype.UCN-LxAdv_ref.groupid.dita">2014-09-17 - refnum[@refnumtype="UCN"] -
                                                ref:groupid id-CCCC-12047: updated example. P4- Db
                                                issue# 338</xref>
                                </li>
                                <li>
                                        <xref href="case.dates.dita">2014-10-06 - case:dates
                                                id-CA02DC-12613: case:decisiondate should not output
                                                argueddate/date-text if
                                                  <sourcexml>ln.user-displayed="false“</sourcexml>.
                                                Removed instructions for invalid date as LBU has
                                                remediated the issue.DB item # 337</xref>
                                </li>
                                <li>
                                        <xref href="../../../common_caselaw/Rosetta_refnum.refnumtype.UCN-LxAdv_ref.groupid.dita">2014-09-26 - refnum[@refnumtype="UCN"] -
                                                ref:groupid id-CCCC-12047: updated Instructions. Db
                                                issue# 1913</xref>
                                </li>
                        </ul>
                </section>
                <section><title>casedigest 8.0_PROD</title> 2014-09-15 <ul>
                                <li>
                                        <xref href="../../../common_caselaw/Rosetta_refnum.refnumtype.UCN-LxAdv_ref.groupid.dita">2014-09-15 - refnum[@refnumtype="UCN"] -
                                                ref:groupid id-CCCC-12047: update target mapping of
                                                  <sourcexml>refnum[@refnumtype="UCN"]</sourcexml>
                                                from Head to
                                                  <targetxml>doc:docinfo/doc:membership/ref:groupid[@group-type="ucn-1"]</targetxml>.
                                                Db issue #1893</xref>
                                </li>
                                <li>
                                        <xref href="../../../common_newest/Rosetta_CAN_docinfo.custom-metafields-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta.meta.metaitem.dita">2014-09-15 - docinfo:custom-metafields to
                                                doc:legacy-metadata[@metadatasource="lbu-meta"]/meta/metaitem
                                                id-CCCC-10251: update target mapping of
                                                  <sourcexml>docinfo:custom-metafields/docinfo:custom-metafield[@name="act-id"]</sourcexml>
                                                from Head to <targetxml>doc:docinfo
                                                  doc-content-country/doc:membership/ref:groupid[@group-type="leg-id-1"]/ref:resourceid</targetxml>
                                        </xref>
                                </li>
                        </ul>
                </section>
                <section>
                        <title>casedigest 7.10_PROD</title>
                        <ul>
                                <li>
                                        <xref href="classification.dita">2014-09-04 - classification
                                                id-CA02DC-12620: clarification for remote link and
                                                  classcode.<sourcexml>classcode/remotelink</sourcexml>
                                                becomes
                                                  <targetxml>classify:classcode/@normval</targetxml>
                                                DB item # 336</xref>
                                </li>
                                <li>
                                        <xref href="classcode.dita">2014-08-29 - classcode
                                                id-CA02DC-12619: <sourcexml>classcode</sourcexml>
                                                mapping to
                                                  <targetxml>classify:classcode/@normval</targetxml>.
                                                R4.5 Db issue #1842</xref>
                                </li>
                                <li>
                                        <xref href="case.dates.dita">2014-08-19 - case:dates
                                                id-CA02DC-12613: Updated example for nl. Multiple
                                                argued date will not be created, multiple date-text
                                                will be created.</xref>
                                </li>
                        </ul>
                </section>
                <section>
                        <title>casedigest 7.9_PROD</title>
                        <ul>
                                <li>
                                        <xref href="case.dates.dita">2014-08-11 - case:dates
                                                id-CA02DC-12613: Updated instructions for invalid
                                                date..."DB item # 296</xref>
                                </li>
                                <li>
                                        <xref href="../../../common_newest/Rosetta_CAN_docinfo.custom-metafields-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta.meta.metaitem.dita">2014-08-11 - docinfo:custom-metafields to
                                                doc:legacy-metadata[@metadatasource="lbu-meta"]/meta/metaitem
                                                id-CCCC-10251: Added identifier
                                                  <sourcexml>docinfo:custom-metafields/docinfo:custom-metafield[@searchtype="act-id"]</sourcexml>
                                                to generate
                                                  <targetxml>*:head/ref:groupid/ref:resourceid/@ref:resourcekey=urn:leg-id-1:X</targetxml>.</xref>
                                </li>
                                <li>
                                        <xref href="case.dates.dita">2014-08-06 - case:dates
                                                id-CA02DC-12613: Updated instructions for
                                                argueddate. DB item # 1795</xref>
                                </li>
                        </ul>
                </section>
                <section>
                        <title>casedigest 7.8_PROD</title>
                        <p><ul>
                                        <li>
                                                <xref href="case.dates.dita">2014-07-23 - case:dates
                                                  id-CA02DC-12613: Added instruction not to populate
                                                  <targetxml>decision:argueddate</targetxml> if
                                                  <sourcexml>case:hearingdates</sourcexml> does not
                                                  contain attributes ..."Issue# 289 and 256</xref>
                                        </li>
                                        <li>
                                                <xref href="case.reportercite.dita">2014-07-15 -
                                                  case:reportercite id-CA02DC-12617: Mapped
                                                  case:reportercite in head where it directly
                                                  contains text without any other sibling DB item #
                                                  266</xref>
                                        </li>
                                        <li>
                                                <xref href="case.reportercite.dita">2014-07-09 -
                                                  case:reportercite id-CA02DC-12617: Added
                                                  citetype="parallel" to ref:parallelciteDB item #
                                                  257</xref>
                                        </li>
                                        <li>
                                                <xref href="case.dates.dita">2014-07-08 - case:dates
                                                  id-CA02DC-12613: Added instruction to create
                                                  date-text for decision:argueddate even if
                                                  ln.user-displayed="false" ..."R4.5 Issue#
                                                  1589</xref>
                                        </li>
                                        <li>
                                                <xref href="case.dates.dita">2014-06-30 - case:dates
                                                  id-CA02DC-12613: Instruction to handle text after
                                                  date..."DB item # 215</xref>
                                        </li>
                                        <li>
                                                <xref href="../../../common_caselaw/Rosetta_refnum.refnumtype.UCN-LxAdv_ref.groupid.dita">2014-06-26 - refnum[@refnumtype="UCN"] -
                                                  ref:groupid id-CCCC-12047: Make
                                                  <targetxml>ref:resourcekey</targetxml> UCN value
                                                  urn conform to PGUID registry, e.g.
                                                  "urn:ucn-1:00180609".</xref>
                                        </li>
                                        <li>
                                                <xref href="../../../common_newest/Rosetta_CAN_docinfo.custom-metafields-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta.meta.metaitem.dita">2014-06-23 - docinfo:custom-metafields to
                                                  doc:legacy-metadata[@metadatasource="lbu-meta"]/meta/metaitem
                                                  id-CCCC-10251: Added Rule for mapping
                                                  <sourcexml>docinfo:custom-metafields/docinfo:custom-metafield/@act-id</sourcexml>
                                                  in HEAD Section in target, this is applicable for
                                                  CA05-CA08 only. Db issue #1464</xref>
                                        </li>
                                        <li>
                                                <xref href="../../../common_newest/Rosetta_docinfo.doc-id-LxAdv-dcidentifier_lnmetaidentifier-scheme.dita">2014-06-23 - docinfo:doc-id to
                                                  dc:identifier[@lnmeta:identifier-scheme]
                                                  id-CCCC-10293: Note and Example removed - For CA05
                                                  Acts and Bills- Mapping in dc:identifier for
                                                  act-no and chunk-no. Db issue #1464</xref>
                                        </li>
                                        <li>
                                                <xref href="../../../common_caselaw/Rosetta_refnum.refnumtype.UCN-LxAdv_ref.groupid.dita">2014-06-12 - refnum[@refnumtype="UCN"] -
                                                  ref:groupid id-CCCC-12047: Created this
                                                  instruction.</xref>
                                        </li>
                                        <li>
                                                <xref href="case.reportercite.dita">2014-06-11 -
                                                  case:reportercite id-CA02DC-12617: remove "Full
                                                  Text: " with and without the trailing space in
                                                  case:reportercite DB item # 1646</xref>
                                        </li>
                                        <li>
                                                <xref href="case.dates.dita">2014-05-31 - case:dates
                                                  id-CA02DC-12613: Explanation of invalid date..."DB
                                                  item #206</xref>
                                        </li>
                                        <li>
                                                <xref href="case.dates.dita">2014-05-30 - case:dates
                                                  id-CA02DC-12613: Explanation for
                                                  ln.user-displayed=false or not present..."DB item
                                                  # 213</xref>
                                        </li>
                                        <li>
                                                <xref href="case.reportercite.dita">2014-05-22 -
                                                  case:reportercite id-CA02DC-12617: Clarify "Full
                                                  text: " removal for both ref:cite4thisresource and
                                                  ref:parallelcite.DB item # 1323</xref>
                                        </li>
                                </ul></p>
                </section>
                <section>
                        <title>casedigest 7.6_PROD</title>
                        <p>2014-05-21 <ul>
                                        <li><xref href="case.dates.dita">2014-05-21- Rules for
                                                  Date...DB item #1273</xref></li>

                                        <li>
                                                <xref href="../../../common_newest/Rosetta_docinfo.doc-id-LxAdv-dcidentifier_lnmetaidentifier-scheme.dita">2014-05-21 - docinfo:doc-id to
                                                  dc:identifier[@lnmeta:identifier-scheme]
                                                  id-CCCC-10293: For CA05 Acts and Bills- Mapping in
                                                  dc:identifier for act-no and chunk-no.. Db issue
                                                  #1464 </xref>
                                        </li>
                                </ul></p>
                </section>
                <section>
                        <title>casedigest 7.6_PROD</title>
                        <p>2014-05-16 <ul>
                                        <li><xref href="dig.cause-of-action_dig.action-party.dita">2014-05-16- casedigest:injuryduration mapping in
                                                  example...DB item #210</xref></li>
                                        <li>
                                                <xref href="case.reportercite.dita">2014-05-16-
                                                  Remove Trailing Comma and space in Case Cites...DB
                                                  item #1332</xref>
                                        </li>
                                </ul></p>
                </section>
                <section>
                        <title>casedigest 7.6_PROD</title>
                        <p>2014-05-09 <ul>
                                        <li>2014-05-09- UCN suggested mapping added for refnum... DB
                                                #192</li>
                                </ul></p>
                </section>
                <section>
                        <title>casedigest 7.6_PROD</title>
                        <p>2014-05-05 <ul>
                                        <li><xref href="case.reportercite.dita">2014-05-05-
                                                  Reportercite mapping to head in target</xref></li>
                                </ul></p>
                </section>
                <section>
                        <title>casedigest 7.6_PROD</title>
                        <p>2014-05-05 <ul>
                                        <li><xref href="case.reportercite.dita">2014-05-05- Example
                                                  for Exception Scenario where
                                                  docinfo:subtype="wdns"</xref></li>
                                </ul></p>
                </section>
                <section>
                        <title>casedigest 7.6_PROD</title>
                        <p>2014-04-25 <ul>
                                        <li><xref href="case.reportercite.dita">2014-04-25 -
                                                  Exception scenario for CA02-DC: If
                                                  docinfo:subtype="wdns" DB item # 1364</xref></li>
                                </ul>
                        </p>
                </section>
                <section>
                        <title>casedigest 7.6_PROD</title>
                        <p>2014-04-18 <ul>
                                        <li><xref href="case.reportercite.dita">2014-04-18 -
                                                  ref:citation in head DB item #
                                                1152,1156</xref></li>
                                </ul>
                        </p>
                </section>
                <section>
                        <title>casedigest 7.6_PROD</title>
                        <p>2014-04-15 <ul>
                                        <li><xref href="case.reportercite.dita">2014-04-15 - Removed
                                                  Trailing Comma in Case Cites...R4.5 Issue DB #item
                                                  1332</xref></li>
                                        <li><xref href="dig.cause-of-action_dig.action-party.dita">2014-04-15-Issue related to
                                                  dig:cause-of-action...DB item #175</xref></li>
                                </ul>
                        </p>
                </section>
                <section>
                        <title>casedigest 7.6_PROD</title>
                        <p>2014-04-11 <ul>
                                        <li>
                                                <xref href="../../../DITA-CAN/CA02-Case_Summaries/CA02DC_DIGESTDOC_to_casedigest/dig.cause-of-action_dig.action-facts.dita">2014-04-09 -
                                                  dig:cause-of-action/dig:action-facts:
                                                  Differentiate
                                                  <targetxml>casedigest:injuryduration</targetxml>
                                                  and <targetxml>casedigest:injury</targetxml> R4.5
                                                  Issue #1193</xref>
                                        </li>
                                        <li>
                                                <xref href="../../../DITA-CAN/CA02-Case_Summaries/CA02DC_DIGESTDOC_to_casedigest/dig.damages.dita">2014-04-09 - dig:damages: Enhance this
                                                  instruction to differentiate
                                                  <targetxml>casedigest:awardamount</targetxml> and
                                                  <targetxml>casedigest:awarddescription</targetxml>
                                                  R4.5 Issue #1193</xref>
                                        </li>
                                        <li>
                                                <xref href="../../../DITA-CAN/CA02-Case_Summaries/CA02DC_DIGESTDOC_to_casedigest/case.reportercite.dita">2014-03-28 - case:reportercite: Remove "Full
                                                  text: " and its language variants from the start
                                                  of <targetxml>lnci:content</targetxml> in the
                                                  body. R4.5 Item #1323.</xref>
                                        </li>
                                </ul>
                        </p>
                </section>
                <section>
                        <title>casedigest 7.5_PROD</title>
                        <p>2014-03-26 <ul>
                                        <li>
                                                <xref href="../../../DITA-CAN/CA02-Case_Summaries/CA02DC_DIGESTDOC_to_casedigest/case.dates.dita">2014-03-26 - case:dates: Removed ambiguity caused
                                                  by the note beginning "From now onwards..."DB item
                                                  # 145</xref>
                                        </li>
                                        <li>
                                                <xref href="../../../DITA-CAN/CA02-Case_Summaries/CA02DC_DIGESTDOC_to_casedigest/classification.dita">2014-03-26 - classification: Both English and
                                                  French should convert to "classificationNumber".DB
                                                  item # 1176</xref>
                                        </li>
                                        <li>
                                                <xref href="../../../DITA-CAN/CA02-Case_Summaries/CA02DC_DIGESTDOC_to_casedigest/case.reportercite.dita">2014-03-25 - case:reportercite: Added
                                                  clarification note for cites going into head
                                                  versus body and fixed examples.DB item #
                                                  145</xref>
                                        </li>
                                        <li>
                                                <xref href="../../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2014-02-25 - remotelink to ref:crossreference:
                                                  Updated instruction and created new example (#16)
                                                  for handling
                                                  <sourcexml>remotelink[@service="QUERY"]</sourcexml>.
                                                  New instruction preserves pcdata but suppresses
                                                  <sourcexml>remotelink</sourcexml> markup. Webstar
                                                  #250335. Change applies immediately to all Pacific
                                                  streams, and in the long run to all
                                                  streams.</xref>
                                        </li>
                                        <li>
                                                <xref href="../../../common_newest/Rosetta_docinfo.doc-heading-LxAdv-dc.title.dita">2014-02-11 - docinfo:doc-heading to dc:title:
                                                  Updated note when <sourcexml>emph</sourcexml> is
                                                  child of
                                                  <sourcexml>docinfo:doc-heading</sourcexml> then
                                                  suppress <sourcexml>emph</sourcexml> element and
                                                  retain its content in
                                                  <targetxml>dc:title</targetxml>, These
                                                  instructions apply immediately to CA12.</xref>
                                        </li>
                                        <li>
                                                <xref href="../../../common_newest/Rosetta_docinfo.topiccodes-to-LxAdv-classify.classification_classscheme_docinfo-topiccodes.dita">2014-02-03 - docinfo:topiccodes to
                                                  classify:classification[@classscheme="docinfo:topiccodes"]:
                                                  Added a special rule for UK07 contents, When
                                                  element <sourcexml>docinfo:topiccode</sourcexml>
                                                  contains attribute
                                                  <sourcexml>@scheme="source-by-date"</sourcexml>,
                                                  then conversion will suppress it including its
                                                  contents as well. Phase 5 UK discussion-defect
                                                  tracking: issue #156. </xref>
                                        </li>
                                        <li>
                                                <xref href="../../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2014-02-03 - remotelink to ref:crossreference:
                                                  Instruction updated if
                                                  <sourcexml>remotelink</sourcexml> occurs as
                                                  multiple, immediate siblings and without
                                                  intermediary text within
                                                  <sourcexml>title</sourcexml>. Also added a example
                                                  for the same scenario. Phase 5 UK
                                                  discussion-defect tracking issue #161</xref>
                                        </li>
                                        <li>
                                                <xref href="../../../common_newest/Rosetta_text-LxAdv-text.dita">2014-01-31 - text to text: Updated instruction,
                                                  <targetxml>align</targetxml> will be moved in
                                                  <targetxml>p</targetxml> in NL conversion. NZ09
                                                  commentary discussion board issue for handling
                                                  <sourcexml>text/@align</sourcexml>
                                                </xref>
                                        </li>
                                </ul>
                        </p>
                </section>
                <section>
                        <title>casedigest 7.5_PROD</title>
                        <p>2014-01-23 <ul>
                                        <li><xref href="../../../common_newest/Rosetta_Elements-LxAdv-Empty_Elements.dita">2014-01-16 - Suppress each empty element unless
                                                  otherwise stated: Added list of elements to
                                                  suppress if empty.</xref></li>
                                        <li><xref href="../../../common_newest/Rosetta_date-Chof-docinfo.load-date-LxAdv-dc.date_lnmeta.datetype_load-date-scheme.dita">2014-01-07: Added a note along with example which
                                                  contains "00" value in
                                                  <sourcexml>@day="00"</sourcexml> and
                                                  <sourcexml>@month="00"</sourcexml> attributes
                                                  encountered in CANADA contents.</xref></li>
                                        <li><xref href="case.juris.dita">2014-01-07: Added a note
                                                  along with example for handling
                                                  <sourcexml>case:juris</sourcexml>, which contains
                                                  country code "UK".</xref></li>
                                </ul>
                        </p>
                </section>
                <section>
                        <title>casedigest 7.5_PROD</title>
                        <p>2013-11-07 <ul>
                                        <li><xref href="../../../common_newest/Rosetta_CAN_docinfo.custom-metafields-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta.meta.metaitem.dita">2013-11-06 - Updated note and target example for
                                                  retaining "country" and "court" in target
                                                  example.</xref></li>
                                        <li><xref href="case.reportercite.dita">2013-11-06 - Updated
                                                  target example of Rosetta element
                                                  <sourcexml>case:reportercite</sourcexml> along
                                                  with a new scenario.</xref></li>
                                        <li><xref href="dig.body.dita">2013-11-06 - Added a note for
                                                  handling empty
                                                  <targetxml>casedigest:body</targetxml> in body
                                                  module of the CI.</xref></li>
                                </ul>
                        </p>
                </section>
                <section>
                        <title>casedigest 7.5_PROD</title>
                        <p>2013-08-21 <ul>
                                        <li>It is decided now, that element
                                                  <targetxml>casedigest:caseinfo</targetxml> along
                                                with all its children, conversion will be placed
                                                within <targetxml>casedigest:head</targetxml> and
                                                not in <targetxml>casedigest:body</targetxml>. So
                                                like this <targetxml>casedigest:caseinfo</targetxml>
                                                will become child element of
                                                  <targetxml>casedigest:head</targetxml>. <p>Below
                                                  are the reflected conversion modules...</p>
                                                <ul>
                                                  <li><xref href="case.info.dita">case.info</xref></li>
                                                  <li><xref href="abbrvname.dita">abbrvname</xref></li>
                                                  <li><xref href="case.constituents.dita">case:constituents</xref></li>
                                                  <li><xref href="case.courtinfo.dita">case:courtinfo</xref></li>
                                                  <li><xref href="case.courtcode.dita">case:courtcode</xref></li>
                                                  <li><xref href="case.courtloc.dita">case:courtloc</xref></li>
                                                  <li><xref href="case.courtname.dita">case:courtname</xref></li>
                                                  <li><xref href="case.judges.dita">case:judges</xref></li>
                                                  <li><xref href="case.juris.dita">case:juris</xref></li>
                                                  <li><xref href="case.dates.dita">case:dates</xref></li>
                                                  <li><xref href="case.reportercite.dita">case:reportercite</xref></li>
                                                </ul>
                                        </li>
                                        <li>Added the common module <xref href="../../../common_newest/Rosetta_remotelink-self-inter-document-link-LxAdv-intra-document-link.dita"/>. </li>
                                        <li>
                                                <xref href="../../../common_newest/Rosetta_remotelink-self-inter-document-link-LxAdv-intra-document-link.dita">2013-08-12 - remotelink (self inter-document
                                                  link) to ref:lnlink (intra-document link): Changed
                                                  module heading from ref:crossreference to
                                                  ref:lnlink. NO instructions are changed. WebTeam #
                                                  230229. Affects all streams.</xref>
                                        </li>
                                        <li>
                                                <xref href="../../../common_newest/Rosetta_remotelink-self-inter-document-link-LxAdv-intra-document-link.dita">2013-08-12 - remotelink (self inter-document
                                                  link) to ref:lnlink (intra-document link): Changed
                                                  module heading from ref:crossreference to
                                                  ref:lnlink. NO instructions are changed. WebTeam #
                                                  230229. Affects all streams.</xref>
                                        </li>
                                        <li>
                                                <xref href="../../../common_newest/Rosetta_docinfo-LxAdv-doc.metadata_doc.docinfo.dita">2013-08-09 - docinfo to doc:metadata/doc:docinfo:
                                                  Added instruction for creating
                                                  <targetxml>dc:date[@lnmeta:datetype="conversion-date"]</targetxml>.
                                                  Previously, "conversion-date" was created only if
                                                  "load-date" was not present. Going forward,
                                                  conversion should always create "conversion-date".
                                                  This is not a retroactive change. It should be
                                                  applied only to streams developed after Aug. 9
                                                  2013.</xref>
                                        </li>
                                        <li>
                                                <xref href="../../../common_newest/Rosetta_XML_Character_Entities-LxAdv-Unicode.dita">2013-08-08 - XML Character Entities to Unicode
                                                  code points: This change does not represent a
                                                  change to conversion but rather documentation of
                                                  the existing behavior.</xref>
                                        </li>
                                        <li>
                                                <xref href="../../../common_newest/Rosetta_date-Chof-docinfo.load-date-LxAdv-dc.date_lnmeta.datetype_load-date-scheme.dita">2013-08-07 - docinfo:load-date/date to
                                                  dc:date[@lnmeta:datetype="load-date"]: Removed
                                                  instructions for creating
                                                  <targetxml>dc:date[@lnmeta:datetype="conversion-date"]</targetxml>.</xref>
                                        </li>
                                        <li>
                                                <xref href="../../../common_newest/Rosetta_date-Chof-docinfo.load-date-LxAdv-dc.date_lnmeta.datetype_load-date-scheme.dita">2013-08-07 - docinfo:load-date/date to
                                                  dc:date[@lnmeta:datetype="load-date"]: Removed
                                                  instructions for creating
                                                  <targetxml>dc:date[@lnmeta:datetype="conversion-date"]</targetxml>.</xref>
                                        </li>
                                        <li>
                                                <xref href="../../../common_newest/Rosetta_remotelink-self-inter-document-link-LxAdv-intra-document-link.dita">2013-08-07 - remotelink (self inter-document
                                                  link) to ref:lnlink (intra-document link): Changed
                                                  target to <targetxml>ref:lnlink</targetxml>;
                                                  formerly
                                                  <targetxml>ref:crossreference</targetxml>. Changed
                                                  because the only supported markup for intradoc
                                                  linking is <targetxml>ref:lnlink</targetxml>, as
                                                  per Bency Thomas. WebTeam # 230229. Affects all
                                                  streams.</xref>
                                        </li>
                                </ul>
                        </p>
                </section>
                <section>
                        <title>casedigest 7.4_PROD</title>
                        <p>2013-08-02 <ul>
                                        <li>
                                                <xref href="../../../common_newest/Rosetta_docinfo.doc-heading-LxAdv-dc.title.dita">2013-07-30 - docinfo:doc-heading to dc:title:
                                                  Added Instruction when
                                                  <sourcexml>docinfo:doc-heading</sourcexml>
                                                  contains word "TITLE: " or NAME: .</xref>
                                        </li>
                                        <li>
                                                <xref href="../../../common_newest/Rosetta_docinfo-LxAdv-doc.metadata_doc.docinfo.dita">2013-07-18 - docinfo to doc:metadata/doc:docinfo:
                                                  Added <sourcexml>@excludefromalerts</sourcexml> as
                                                  one of the <sourcexml>docinfo</sourcexml>
                                                  attributes to carry through</xref>
                                        </li>
                                        <li>
                                                <xref href="../../../common_newest/Rosetta_docinfo.doc-lang-and-doc-country-LxAdv-ROOT_xml.lang.dita">2013-07-16 - docinfo:doc-lang and
                                                  docinfo:doc-country to @xml:lang and @xml:ID:
                                                  Instruction narrative edited for language; no
                                                  changes to mappings, no impact to
                                                  stylesheets.</xref>
                                        </li>
                                        <li>
                                                <xref href="../../../common_newest/Rosetta_CAN_docinfo.custom-metafields-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta.meta.metaitem.dita">2013-06-04 - docinfo:custom-metafields to
                                                  doc:legacy-metadata[@metadatasource="lbu-meta"]/meta/metaitem:
                                                  Consolidated narrative and examples for
                                                  clarity.</xref>
                                        </li>
                                        <li>
                                                <xref href="../../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-06-03 - remotelink to ref:crossreference:
                                                  Updated the Target XML 2 by removing the
                                                  <targetxml>@crossreferencetype</targetxml> for
                                                  Canada example.</xref>
                                        </li>
                                        <li>
                                                <xref href="../../../common_newest/Rosetta_CAN_docinfo.custom-metafields-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta.meta.metaitem.dita">2013-05-24 - docinfo:custom-metafields to
                                                  doc:legacy-metadata[@metadatasource="lbu-meta"]/meta/metaitem:
                                                  Instruction and example added for handling of
                                                  <sourcexml>docinfo:custom-metafield/@name="pageestimate"</sourcexml>.</xref>
                                        </li>
                                        <li>
                                                <xref href="../../../common_newest/Rosetta_docinfo-LxAdv-doc.metadata_doc.docinfo.dita">2013-05-16 - docinfo to doc:metadata/doc:docinfo:
                                                  Fixed typo updating urn:contentitem to
                                                  urn:contentItem</xref>
                                        </li>
                                        <li>
                                                <xref href="../../../common_newest/Rosetta_CAN_docinfo.custom-metafields-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta.meta.metaitem.dita">2013-05-13 - docinfo:custom-metafields to
                                                  doc:legacy-metadata[@metadatasource="lbu-meta"]/meta/metaitem:
                                                  Example added for handling of
                                                  <sourcexml>docinfo:custom-metafields/@name="reg-no"</sourcexml>.</xref>
                                        </li>
                                        <li>
                                                <xref href="../../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-05-08 - remotelink to ref:crossreference:
                                                  Extended the list of allowable values for image
                                                  handling.</xref>
                                        </li>
                                        <li>
                                                <xref href="../../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-05-01 - remotelink to ref:crossreference:
                                                  Removed instructions for section "Pre-Release 4.0"
                                                  because according to latest Apollo markup, section
                                                  "Release 4.0 and after" and section "Pre-Release
                                                  4.0" now have similar conversion markup.</xref>
                                        </li>
                                        <li>
                                                <xref href="../../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-05-01 - remotelink to ref:crossreference:
                                                  "Instruction added for
                                                  <sourcexml>ci:cite/ci:content/remotelink</sourcexml>
                                                  specifying that the
                                                  <sourcexml>remotelink</sourcexml> is to be
                                                  converted to
                                                  <targetxml>ref:crossreference</targetxml> but the
                                                  containing elements' start-tags and end-tags
                                                  (<sourcexml>ci:cite</sourcexml> and
                                                  <sourcexml>ci:content</sourcexml>) are dropped",
                                                  has been removed from the instructions and now
                                                  <sourcexml>remotelink</sourcexml> will be
                                                  converted to the resulting mapping where it is.
                                                  For more details you can see example: Source XML
                                                  10: <sourcexml>remotelink</sourcexml> as a child
                                                  of <sourcexml>ci:cite/ci:content</sourcexml>
                                                </xref>
                                        </li>
                                        <li>
                                                <xref href="../../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-04-30 - remotelink to ref:crossreference:
                                                  Updated target sample according to latest Apollo
                                                  markup.</xref>
                                        </li>
                                        <li>
                                                <xref href="../../../common_newest/Rosetta_CAN_docinfo.custom-metafields-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta.meta.metaitem.dita">2013-04-29 - docinfo:custom-metafields to
                                                  doc:legacy-metadata[@metadatasource="lbu-meta"]/meta/metaitem:
                                                  Instructions and example added for handling
                                                  various scenarios of
                                                  <sourcexml>docinfo:custom-metafields</sourcexml>
                                                  for CA06-Regs and CA08-Const.</xref>
                                        </li>
                                        <li>
                                                <xref href="../../../common_newest/Rosetta_docinfo.doc-lang-and-doc-country-LxAdv-ROOT_xml.lang.dita">2013-04-19 - docinfo:doc-lang and
                                                  docinfo:doc-country to @xml:lang and @xml:ID:
                                                  Added note about applicability of restrictions and
                                                  required modifications for
                                                  <targetxml>xml:id</targetxml> to other
                                                  scenarios.</xref>
                                        </li>
                                        <li>
                                                <xref href="../../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-04-10 - remotelink to ref:crossreference:
                                                  Added Source XML 7a: for link to URL, with non-URL
                                                  text content because it was previously missing,
                                                  only the target example was here.</xref>
                                        </li>
                                        <li>
                                                <xref href="../../../common_newest/Rosetta_Elements-LxAdv-Empty_Elements.dita">2013-03-28 - Suppress empty elements unless
                                                  otherwise stated: Created.</xref>
                                        </li>
                                </ul>
                        </p>
                </section>
                <section>
                        <title>casedigest 5.14 PROD</title>
                        <p>2013-02-22 <ul>
                                        <li>Schema Change: Multiple occurrences of
                                                  <targetxml>classify:classification</targetxml> are
                                                allowed inside
                                                  <targetxml>casedigest:award</targetxml>.</li>
                                        <li>
                                                <xref href="Introduction.dita">2013-03-04 -
                                                  Introduction topic: Added a note about handling of
                                                  empty elements.</xref>
                                        </li>
                                        <li>
                                                <xref href="case.judges.dita">2013-03-04 - Body
                                                  topic: Added two notes about handling of judges
                                                  and history part, and punctuation between the
                                                  judge and history.</xref>
                                        </li>
                                        <li><xref href="../../../common_newest/Rosetta_CAN_docinfo.custom-metafields-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta.meta.metaitem.dita">2013-03-04 - Metadata Markup - Instruction and
                                                  example added for
                                                  <sourcexml>docinfo:custom-metafield[@name="unhandled"]</sourcexml>.</xref></li>
                                </ul></p>
                </section>
                <section>
                        <title>casedigest 5.14 PROD</title>
                        <p>2013-02-22 <ul>
                                        <li>
                                                <xref href="dig.cause-of-action_dig.action-facts.dita">2013-02-21 -
                                                  dig:cause-of-action/dig:action-facts: Added a note
                                                  about mapping sibling
                                                  <sourcexml>dig:injury</sourcexml> and
                                                  <sourcexml>dig:injury-duration</sourcexml>
                                                  elements to a single
                                                  <targetxml>casedigest:injury</targetxml>. Updated
                                                  the example to reflect this change to the
                                                  mapping.</xref>
                                        </li>
                                </ul></p>
                </section>

                <section>
                        <p>2013-02-13<ul>
                                        <li>Body topic - One note added along with example to
                                                include <targetxml>@normdate</targetxml> within
                                                  <targetxml>decision:decisiondate</targetxml>.</li>
                                        <li>Body topic - One note added along with example to handle
                                                  <targetxml>case:jusges/ci:cite</targetxml> within
                                                  <targetxml>case:judges</targetxml> part of the
                                                CI.</li>
                                </ul></p>
                </section>
                <section>
                        <title>casedigest 5.13_PROD (Schema Release Date - 2013-01-29)</title>
                        <p>2013-02-05<ul>
                                        <li>Introduction topic - A note has been added with the
                                                instructions for creating empty
                                                  <targetxml>casedigest:head</targetxml> tag in
                                                introduction part of the CI.</li>
                                        <li>Body topic - Instruction for handling
                                                  <sourcexml>classification/@rendition</sourcexml>
                                                and
                                                  <sourcexml>classification/@display-name</sourcexml>has
                                                been added along with examples.</li>
                                        <li>Body topic - Target XPATH instruction for handling
                                                  <sourcexml>case:subhist</sourcexml> has been
                                                corrected, earlier there was a typo.</li>
                                        <li>Body topic - Instruction for handling
                                                  <sourcexml>case:juris</sourcexml> has been added
                                                along with examples.</li>
                                        <li>Body topic - Instruction for handling
                                                  <sourcexml>case:dates</sourcexml> has been added
                                                along with examples.</li>
                                        <li>Body topic - A note has been added for handling
                                                  <sourcexml>case:reportercite</sourcexml> along
                                                with examples.</li>
                                        <li>Body topic - Instructions changed along with examples
                                                for handling
                                                  <sourcexml>case.constituents</sourcexml>.</li>
                                </ul></p>
                </section>
                <section>
                        <title>casedigest 5.6_PROD (Schema Release Date - 2012-11-09)</title>
                        <p>2012-11-20<ul>
                                        <li>Added <targetxml>classify:classification</targetxml> as
                                                an optional child of
                                                  <targetxml>person:bio.employment</targetxml>.</li>
                                        <li>Added <targetxml>casehist:casehist</targetxml> as an
                                                optional child of
                                                  <targetxml>casedigest:body</targetxml>.</li>
                                        <li>Added <targetxml>casedigest:decisionresult</targetxml>
                                                as a child within
                                                  <targetxml>casedigest:caseinfo</targetxml>.</li>
                                        <li>Added <targetxml>casedigest:actionparty</targetxml> as
                                                an optional child of
                                                  <targetxml>casedigest:causeofaction</targetxml>.</li>
                                        <li>Added a new attribute
                                                  <targetxml>@conversioncontext</targetxml> to
                                                  <targetxml>casedigest:specialdamages</targetxml>.</li>
                                        <li>Added <targetxml>bodytext</targetxml> as an optional
                                                child of
                                                  <targetxml>courtcase:representation</targetxml>.</li>
                                        <li>Added <targetxml>proc:nl</targetxml> as an optional
                                                child of
                                                <targetxml>jurisinfo:courtname</targetxml>.</li>
                                        <li>Added <targetxml>pgrp</targetxml> as an optional child
                                                of <targetxml>courtcase:counsel</targetxml>.</li>
                                        <li>Added <targetxml>proc:nl</targetxml> as an optional
                                                child of
                                                  <targetxml>caseinfo:fullcasename</targetxml>.</li>
                                        <li>Added <targetxml>bodytext.elements</targetxml> as an
                                                optional child of
                                                  <targetxml>casehist:summary</targetxml> and
                                                removed the <targetxml>p</targetxml> and
                                                  <targetxml>list</targetxml> elements.</li>
                                        <li>Added <targetxml>inlinenote</targetxml> as an optional
                                                child of <targetxml>entry</targetxml>,
                                                  <targetxml>text</targetxml>,
                                                  <targetxml>emph</targetxml>,
                                                  <targetxml>strike</targetxml>,
                                                  <targetxml>inlinenote</targetxml>,
                                                  <targetxml>verbatim</targetxml>,
                                                  <targetxml>credit</targetxml>,
                                                  <targetxml>defterm</targetxml>,
                                                  <targetxml>h</targetxml>,
                                                  <targetxml>desig</targetxml>,
                                                  <targetxml>altdesig</targetxml>,
                                                  <targetxml>textitem</targetxml>,
                                                  <targetxml>byline</targetxml>,
                                                  <targetxml>currencystatement</targetxml>,
                                                  <targetxml>miscdate</targetxml>,
                                                  <targetxml>ref:content</targetxml>,
                                                  <targetxml>pubinfo:volume</targetxml>,
                                                  <targetxml>pubinfo:issue</targetxml>,
                                                  <targetxml>pubinfo:publicationname</targetxml>,
                                                  <targetxml>pubinfo:pubunit</targetxml>,
                                                  <targetxml>pubinfo:edition</targetxml>,
                                                  <targetxml>pubinfo:aggregationname</targetxml>,
                                                  <targetxml>pubinfo:publength</targetxml>,
                                                  <targetxml>nitf:media-producer</targetxml>,
                                                  <targetxml>person:affiliation</targetxml>,
                                                  <targetxml>globalentity:content</targetxml>,
                                                  <targetxml>legishist:billitem</targetxml>,
                                                  <targetxml>legishist:reportitem</targetxml>,
                                                  <targetxml>legishist:recorditem</targetxml>,
                                                  <targetxml>legishist:actionsummary</targetxml> and
                                                  <targetxml>legisinfo:statustext</targetxml>.</li>
                                        <li>Body topic - Added a note in and corresponding example
                                                in <sourcexml>dig:body</sourcexml> part.</li>
                                        <li>Body topic - One more instruction added in CI for the
                                                Rosetta scenario
                                                  <sourcexml>dig:cause-of-action/dig:action-party</sourcexml>
                                                with its children.</li>
                                        <li>Body topic - Instruction of
                                                  <sourcexml>case:constituents</sourcexml> changed
                                                with example.</li>
                                        <li>Body topic - A note has been added in instruction of
                                                  <sourcexml>case:reportercite</sourcexml>,
                                                regarding reporter citations ordering.</li>
                                        <li>General Markup Section - Handling for
                                                  <sourcexml>glp:note</sourcexml> expanded for
                                                different scenarios.</li>
                                </ul></p>
                </section>
                <section>
                        <title>casedigest 5.5_PROD (Schema Release Date - 10/23/2012)</title>
                        <p>2012-10-26<ul>
                                        <li>Added <targetxml>classify.classification</targetxml> as
                                                a child of
                                                <targetxml>casedigest:body</targetxml>.</li>
                                        <li>Added <targetxml>casedigest.injury</targetxml> as a
                                                child of
                                                  <targetxml>casedigest.causeofaction</targetxml>.</li>
                                        <li>Added <targetxml>section</targetxml> as a child of
                                                  <targetxml>casedigest:body</targetxml>.</li>
                                        <li>Allowed zero or more occurrences of
                                                  <targetxml>casedigest:causeofaction</targetxml>
                                                within <targetxml>casedigest:facts</targetxml>.</li>
                                        <li>Introduction topic - Added Information of new Schema
                                                Released for <b>casedigest 5.5_PROD</b>.</li>
                                        <li>Body topic - Updated instructions and example for
                                                  <sourcexml>case:constituents</sourcexml> with its
                                                child element
                                                  <sourcexml>case:constituent</sourcexml>.</li>
                                        <li>Body topic - Added a note in instructions for
                                                  <sourcexml>case:juris</sourcexml>.</li>
                                </ul></p>
                </section>
                <section>
                        <title>casedigest 5.5_PROD (Schema Release Date - 10/23/2012)</title>
                        <p>2012-10-26<ul>
                                        <li>Added <targetxml>classify.classification</targetxml> as
                                                a child of
                                                <targetxml>casedigest:body</targetxml>.</li>
                                        <li>Added <targetxml>casedigest.injury</targetxml> as a
                                                child of
                                                  <targetxml>casedigest.causeofaction</targetxml>.</li>
                                        <li>Added <targetxml>section</targetxml> as a child of
                                                  <targetxml>casedigest:body</targetxml>.</li>
                                        <li>Allowed zero or more occurrences of
                                                  <targetxml>casedigest:causeofaction</targetxml>
                                                within <targetxml>casedigest:facts</targetxml>.</li>
                                        <li>Introduction topic - Added Information of new Schema
                                                Released for <b>casedigest 5.5_PROD</b>.</li>
                                        <li>Body topic - Updated instructions and example for
                                                  <sourcexml>case:constituents</sourcexml> with its
                                                child element
                                                  <sourcexml>case:constituent</sourcexml>.</li>
                                        <li>Body topic - Added a note in instructions for
                                                  <sourcexml>case:juris</sourcexml>.</li>
                                </ul></p>
                </section>
                <section>
                        <title>First release</title>
                        <p>2012-10-14</p>
                </section>
        </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA02-Case_Summaries\CA02DC_DIGESTDOC_to_casedigest\Change-Log.dita  -->
	 

</xsl:stylesheet>