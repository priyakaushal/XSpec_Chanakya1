<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:ci="http://www.lexis-nexis.com/ci" xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" xmlns:source_lnci="http://www.lexis-nexis.com/lnci" xmlns:admindecision="urn:x-lexisnexis:content:administrative-decision:sharedservices:1" xmlns:admindoc="urn:x-lexisnexis:content:administrative-document:sharedservices:1" xmlns:caseinfo="http://www.lexisnexis.com/xmlschemas/content/legal/case-information/1/" xmlns:casesum="http://www.lexisnexis.com/xmlschemas/content/legal/case-summary/1/" xmlns:classify="http://www.lexisnexis.com/xmlschemas/content/shared/classification/1/" xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns:decision="http://www.lexisnexis.com/xmlschemas/content/legal/decision/1/" xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" xmlns:jurisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/jurisdiction-info/1/" xmlns:lnci="http://www.lexisnexis.com/xmlschemas/content/shared/citations/1/" xmlns:proc="http://www.lexisnexis.com/xmlschemas/content/shared/process-elements/1/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita case ci docinfo lnci">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Admindecisions_Change-Log">
  <title>Change Log for Administrative Decisions</title>
  <body>
      <section>
          <title>admindoc 4.5_PROD</title>
          <p>2015-06-24:
              <ul>
                  <li>
                      <xref href="case.courtcite.dita">2015-06-24 - case.courtcite id-CA04-13416: case:courtcite will be mapped to admindecision:decisioninfo/admindecision:caseinfo/ref:citations/ref:parallelcite. The value of ref:parallelcite/@citetype should be set to "court". .WebTeam # 302381.</xref>
                  </li>
              </ul>
          </p>
          <p>2015-02-09:
              <ul>
                  <li>
                      <xref href="case.juris.dita">2015-02-05 - case:juris id-CA04-13429: Remove UK PGUID value from table (CA01, CA02 (all streams), CA03 and CA04). R45 RFA #2133.</xref>
                  </li>
                  <li>
                      <xref href="case.juris.dita">2015-02-02 - case:juris id-CA04-13429: Added instructions to apply CA in guid for country code "UK". Db issue #407 </xref>
                  </li>
                  <li>
                      <xref href="../../../Rosetta/common_newest/Rosetta_CAN_docinfo.custom-metafields-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta.meta.metaitem.dita">2015-01-27 - docinfo:custom-metafields to doc:legacy-metadata[@metadatasource="lbu-meta"]/meta/metaitem id-CCCC-10251: For CA05,CA06,CA07 and CA08 Existing topic
                          CA first document in "current" material (id-CCCC-10517) removed and
                          added a note here to handle firstActDocument</xref>
                  </li>
                  <li>
                      <xref href="../../../Rosetta/common_newest/LxAdv_CA-ref.cite4thisresource-LxAdv-ref.parallelcite-doc.related-content.dita">2015-01-26 - ref:cite4thisresource with ref:parallelcite and doc:related-content id-CCCC-10497: Update proc:param name="normprotocol" from value="jcite" to value="CAEditorial"; for CA01, CA02, CA04, CA05, CA06, CA07 and CA08. R4.5 RFA #1873.</xref>
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
                      <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2015-01-02 - docinfo:assoc-links to doc:related-content id-CCCC-10284: Added
                          <sourcexml>docinfo:assoc-links/remotelink[@service="QUERY"]</sourcexml> and
                          <sourcexml>docinfo:assoc-links-grp/remotelink[@service="QUERY"]</sourcexml> to generate
                          <targetxml>doc:related-content</targetxml> markup. Applicable on CA05.</xref>
                  </li>
                  <li>
                      <xref href="../../../Rosetta/common_newest/LxAdv_CA-ref.cite4thisresource-LxAdv-ref.parallelcite-doc.related-content.dita">2014-12-19 - ref:cite4thisresource with ref:parallelcite and doc:related-content id-CCCC-10497: Updated citation from [2000] A.C.F. No.
                          1985 to [2000] A.C.F. no 1985, for CA01.</xref>
                  </li>
                  <li>
                      <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2014-12-19 - docinfo:assoc-links to doc:related-content id-CCCC-10284: Updated target mapping for CA05 for handling
                          <sourcexml>docinfo:assoc-links/remotelink[@service="QUERY"]</sourcexml>. Applicable on CA05.</xref>
                  </li>
                  <li>
                      <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2014-12-17 - docinfo:assoc-links to doc:related-content id-CCCC-10284: Added a Note for CA05, CA06, CA07 and CA08 for handling
                          <sourcexml>docinfo:assoc-links-grp/remotelink[@service="QUERY"]
                          </sourcexml>
                      </xref>
                  </li>
                  <li>
                      <xref href="../../../Rosetta/common_newest/LxAdv_CA-ref.cite4thisresource-LxAdv-ref.parallelcite-doc.related-content.dita">2014-12-16 - ref:cite4thisresource with ref:parallelcite and doc:related-content id-CCCC-10497: Added note for conversion of short term
                          citations and it's come any combinations with the mandatory (primary or
                          alternative citation) citations then short terms ciatation should be converetd
                          according to short table. Applicable on CA06-CA07.</xref>
                  </li>
                  <li>
                      <xref href="../../../Rosetta/common_newest/LxAdv_CA-ref.cite4thisresource-LxAdv-ref.parallelcite-doc.related-content.dita">2014-12-16 - ref:cite4thisresource with ref:parallelcite and doc:related-content id-CCCC-10497: Added note to identify primary and alternate language when primary and alternate citation are same. Applicable on CA05-CA08.</xref>
                  </li>
              </ul>
          </p>
          <p>2014-12-16:
              <ul>
                  <li>
                      <xref href="case.juris.dita">2014-12-15 - case:juris id-CA04-13429: Updated mapping. Db R4.5 issue
                          #2047</xref>
                  </li>
              </ul>
          </p>
      </section>
      <section>
          <title>admindoc 4.4_PROD</title>
          <p>2014-11-19:
              <ul>
                  <li>
                      <xref href="../../../Rosetta/DITA-CAN/CA04-Administrative_Decisions/case.courtcode.dita">2014-11-19 - case:courtcode id-CA04-13417: Updated the mapping for case:courtcode, schema issue for jurisinfo:alternatecourtcode....Db issue #368 and #367</xref>
                  </li>
                  <li>
                      <xref href="../../../Rosetta/common_newest/LxAdv_CA-ref.cite4thisresource-LxAdv-ref.parallelcite-doc.related-content.dita">2014-11-18 - ref:cite4thisresource with ref:parallelcite and doc:related-content id-CCCC-10497: For CA02- Updated instructions for "proc:param name="targetdoclang" value="" for both English and French. P4, Db issue #365</xref>
                  </li>
                  <li>
                      <xref href="../../../Rosetta/common_newest/LxAdv_CA-ref.cite4thisresource-LxAdv-ref.parallelcite-doc.related-content.dita">2014-11-11 - ref:cite4thisresource with ref:parallelcite and doc:related-content id-CCCC-10497: Added note and table "Terms conversion for CA05" for terms translation, Applicable on CA05.</xref>
                  </li>
                  <li>
                      <xref href="../../../Rosetta/common_newest/Rosetta_entry_p-limited-LxAdv-entry_p.dita">2014-11-11 - entry/p-limited to entry/p id-CCCC-10319: Updated instruction when multiple consecutive <sourcexml>p-limited</sourcexml> elements occur within <sourcexml>entry</sourcexml>.</xref>
                  </li>
                  <li>
                      <xref href="../../../Rosetta/common_newest/LxAdv_CA-ref.cite4thisresource-LxAdv-ref.parallelcite-doc.related-content.dita">2014-11-06 - ref:cite4thisresource with ref:parallelcite and doc:related-content id-CCCC-10497: Added some english to french terms for
                          translation of the citation and also update c. to ch.  in CA06 and
                          CA07 table</xref>
                  </li>
                  <li>
                      <xref href="../../../Rosetta/common_newest/Rosetta_figure-LxAdv-figure.dita">2014-10-28 - figure to figure id-CCCC-10320: Moved instruction regarding the XPath XPath <sourcexml>caption/note</sourcexml> into a separate topic. Not a rule change, just a minor reorganization of the instructions.</xref>
                  </li>
                  <li>
                      <xref href="../../../Rosetta/common_newest/Rosetta_entry_p-limited-LxAdv-entry_p.dita">2014-10-28 - entry/p-limited to entry/p id-CCCC-10319: Added note to handle scenario when <sourcexml>l</sourcexml> is a child of <sourcexml>entry/p-limited</sourcexml>.</xref>
                  </li>
              </ul>
          </p>
      </section>
      <section>
          <title>admindoc 4.4_PROD</title>
          <ul>
              <li>
                  <xref href="../../common_newest/Rosetta_pnum-to-LexisAdvance_desig_ref.para.dita">2014-10-27 - updated instructions for pnum... Db issue..356</xref>
              </li>
              <li>
                  <xref href="../../../Rosetta/DITA-CAN/CA04-Administrative_Decisions/case.references.dita">2014-10-27 - case:references id-CA04-13434: update the List of terms in CA04 CI with the terms listed in the CA01 CI where the CI mentions admindecision:representation and ref:relatedrefs Db issue #355</xref>
              </li>
              <li>
                  <xref href="../../../Rosetta/DITA-CAN/CA04-Administrative_Decisions/case.constituents.dita">2014-10-27 - case:constituents id-CA04-13414: update the List of terms in CA04 CI with the terms listed in the CA01 CI where the CI mentions admindecision:representation and ref:relatedrefs Db issue #355</xref>
              </li>
              <li>
                  <xref href="../../../Rosetta/common_newest/Rosetta_figure-LxAdv-figure.dita">2014-10-24 - figure to figure id-CCCC-10320: Added instructions and example to handle the new XPath <sourcexml>caption/note</sourcexml>. (R4.5 Content Issue List #1993)</xref>
              </li>
              <li>
                  <xref href="../../../Rosetta/DITA-CAN/CA04-Administrative_Decisions/abbrvname.dita">2014-10-22 - abbrvname id-CA04-13407: Updated CI for <targetxml>jurisinfo:courtname@normshortname</targetxml> to also be placed in <targetxml>jurisinfo:alternatecourtcode@alternatecourtcode</targetxml>...R4.5 Db issue #1987</xref>
              </li>
              <li>
                  <xref href="../../../Rosetta/common_newest/LxAdv_CA-ref.cite4thisresource-LxAdv-ref.parallelcite-doc.related-content.dita">2014-10-20 - ref:cite4thisresource with ref:parallelcite and doc:related-content id-CCCC-10497: Updated the old citation inside the table for
                      CA08 stream i.e. appendice II to Appendix II.</xref>
              </li>
              <li>
                  <xref href="../../../Rosetta/common_newest/LxAdv_CA-ref.cite4thisresource-LxAdv-ref.parallelcite-doc.related-content.dita">2014-10-20 - ref:cite4thisresource with ref:parallelcite and doc:related-content id-CCCC-10497: Updated instruction to remove english version and add french version. P4 Db issue #324</xref>
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
          </ul>
      </section>
      <section>
          <title>admindoc 4.1_PROD</title>
          <ul>
              
              <li>
                  <xref href="../../../Rosetta/DITA-CAN/CA04-Administrative_Decisions/catchwordgrp.dita">2014-09-26 - catchwordgrp: Updated instructions to map <sourcexml>catchwordgrp</sourcexml> to <targetxml>admindoc:head/classify:classification/heading</targetxml>
                  </xref>
              </li>
              <li>
                  <xref href="../../../Rosetta/common_caselaw/Rosetta_refnum.refnumtype.UCN-LxAdv_ref.groupid.dita">2014-09-26 - refnum[@refnumtype="UCN"] - ref:groupid id-CCCC-12047: updated Instructions. Db issue# 1913</xref>
              </li>
              <li>
                  <xref href="../../../Rosetta/common_newest/LxAdv_CA-ref.cite4thisresource-LxAdv-ref.parallelcite-doc.related-content.dita">2014-09-23 - ref:cite4thisresource with ref:parallelcite and doc:related-content id-CCCC-10497: Added English <sourcexml>Enactment
                      Clause</sourcexml> To <targetxml>Formule d'édiction </targetxml>,
                      <sourcexml>Long Title</sourcexml> To <targetxml>Titre intégral</targetxml>,
                      <sourcexml>Short Title</sourcexml> To <targetxml>Titre
                          abrégé</targetxml>,<sourcexml>Preamble</sourcexml> To <targetxml>Préambule
                          </targetxml> and vice versa in CA06-CA07 Table</xref>
              </li>
              <li>
                  <xref href="../../../Rosetta/common_caselaw/Rosetta_refnum.refnumtype.UCN-LxAdv_ref.groupid.dita">2014-09-17 - refnum[@refnumtype="UCN"] - ref:groupid id-CCCC-12047: updated example.
                      P4- Db issue# 338</xref>
              </li>
              <li>
                  <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2014-09-16 - docinfo:assoc-links to doc:related-content id-CCCC-10284: Added a note to create
                      <targetxml>proc:param/@name="attachment-smi"</targetxml> and
                      <targetxml>proc:param/@value</targetxml> as these was there in the snippet but was
                      missing in instruction and also added a note in to simplify in output
                      <targetxml>ref:key-value/@value</targetxml>
                  </xref>
              </li>
              <li>
                  <xref href="../../../Rosetta/common_caselaw/Rosetta_refnum.refnumtype.UCN-LxAdv_ref.groupid.dita">2014-09-15 - refnum[@refnumtype="UCN"] - ref:groupid id-CCCC-12047: update target mapping of
                      <sourcexml>refnum[@refnumtype="UCN"]</sourcexml> from Head to
                      <targetxml>doc:docinfo/doc:membership/ref:groupid[@group-type="ucn-1"]</targetxml>.
                      Db issue #1893 and 338</xref>
              </li>
              <li>
                  <xref href="../../../Rosetta/common_newest/Rosetta_CAN_docinfo.custom-metafields-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta.meta.metaitem.dita">2014-09-15 - docinfo:custom-metafields to doc:legacy-metadata[@metadatasource="lbu-meta"]/meta/metaitem id-CCCC-10251: update target mapping of
                      <sourcexml>docinfo:custom-metafields/docinfo:custom-metafield[@name="act-id"]</sourcexml>
                      from Head to
                      <targetxml>doc:docinfo/doc:membership/ref:groupid[@group-type="leg-id-1"]/ref:resourceid</targetxml>
                  </xref>
              </li>
          </ul>
      </section>
      <section>
          <title>admindoc 4.0_PROD</title>
          <ul>
              <li>
                  <xref href="case.references.dita">2014-09-04 - case:references id-CA04-13434: Remove colon from case:references. Applicable
                      to CA01 and CA04... Db issue #335</xref>
              </li>
              <li>
                  <xref href="../../../Rosetta/common_newest/LxAdv_CA-ref.cite4thisresource-LxAdv-ref.parallelcite-doc.related-content.dita">2014-09-03 - ref:cite4thisresource with ref:parallelcite and doc:related-content id-CCCC-10497: Added instructions for proc:param name="targetdoclang". R4.5 #1873.</xref>
              </li>
              <li>
                  <xref href="../../../Rosetta/common_newest/Rosetta_desig-LxAdv-desig_ref.para.dita">2014-09-03 - desig to desig/ref:para id-CCCC-10501: The same rule is applicable on CA01 and CA04.</xref>
              </li>
              <li>
                  <xref href="../../../Rosetta/common_newest/Rosetta_desig-LxAdv-desig_ref.para.dita">2014-08-29 - desig to desig/ref:para id-CCCC-10501: Updated instruction and example for handling
                      <targetxml>desig/@value</targetxml> and it's mapped with
                      <targetxml>desig@value/ref:para@num</targetxml> (means
                      <targetxml>ref:para</targetxml> should be placed inside of
                      <targetxml>desig</targetxml> markup).</xref>
              </li>
              <li>
                  <xref href="case.decisionsummary.dita">2014-08-27 - case:decisionsummary id-CA04-13421: Updated instruction for case:decisionsummary to place the period sign after completion of sentence ... P4 Issue #323</xref>
              </li>
              <li>
                  <xref href="../../../Rosetta/common_newest/LxAdv_CA-ref.cite4thisresource-LxAdv-ref.parallelcite-doc.related-content.dita">2014-08-27 - ref:cite4thisresource with ref:parallelcite and doc:related-content id-CCCC-10497: Added the new rule for CA02 content streams for alternate language. P4 issue #324.</xref>
              </li>
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
                  <xref href="case.casename.dita">2014-08-20 - case:casename id-CA04-13413: Update rule for <sourcexml>nl</sourcexml>
                      inside <sourcexml>case:casename</sourcexml> where there is a newline after
                      <sourcexml>nl</sourcexml>. Db issue no. #329</xref>
              </li>
              <li>
                  <xref href="case.dates.dita">2014-08-19 - case:dates id-CA04-13420: Updated example for nl. Multiple argued date will not be created, multiple date-text will be created. Db issue #328</xref>
              </li>
          </ul>
      </section>
      <section>
          <title>admindoc 3.14: PROD</title>
          <ul>
              <li>
                  <xref href="../../../Rosetta/common_newest/LxAdv_CA-ref.cite4thisresource-LxAdv-ref.parallelcite-doc.related-content.dita">2014-08-11 - ref:cite4thisresource with ref:parallelcite and doc:related-content id-CCCC-10497: Added alternate citation for corresponding primary LNCRTCF and LNCRTCE citation as provided in alternate and primary format for CA04- Db issue #321</xref>
              </li>
              <li>
                  <xref href="../../../Rosetta/common_newest/LxAdv_CA-ref.cite4thisresource-LxAdv-ref.parallelcite-doc.related-content.dita">2014-08-11 - ref:cite4thisresource with ref:parallelcite and doc:related-content id-CCCC-10497: Updated references in the table of L.R.N.-B. to L.R.N.B. and L.N.-B. to L.N.B. for CA05.</xref>
              </li>
              <li>
                  <xref href="case.judgmentbody.dita">2014-08-11 - case:judgmentbody id-CA04-13427: Remove leading spaces from admindecision:opinionby. P4 item# 300</xref>
              </li>
              <li>
                  <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.lbu.juris-LxAdv-classify.classification_classscheme_docinfolbu-juris.dita">2014-08-11 - docinfo:lbu-juris to classify:classification[@classscheme="docinfo:lbu-juris"] id-CCCC-10301: Added a special scenario for all Canada streams to handle <sourcexml>docinfo:lbu-juris</sourcexml> to <targetxml>classify:classification@classscheme="docinfo:lbu-juris"/classify:classitem/classify:classitem-identifier/classify:classname</targetxml>. Db P4 issue #305</xref>
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
              <li>
                  <xref href="case.decisionsummary.dita">2014-08-08 - case:decisionsummary id-CA04-13421: Updated instruction for case:decisionsummary having l as its child element... P4 Issue #314</xref>
              </li>
              <li>
                  <xref href="case.decisionsummary.dita">2014-08-07 - case:decisionsummary id-CA04-13421: Updated instruction for casesum:disposition - Space appearing before the "." .. P4 Issue #302</xref>
              </li>
              <li>
                  <xref href="case.dates.dita">2014-08-01 - case:dates id-CA04-13420: Added instruction to suppress
                      <sourcexml>nl</sourcexml> in target.. P4 Issue #301 and 297</xref>
              </li>
              <li>
                  <xref href="../../common_caselaw/Rosetta_refnum.refnumtype.UCN-LxAdv_ref.groupid.dita">2014-08-01 - refnum[@refnumtype="UCN"] - ref:groupid id-CCCC-12047: Updated target mapping specific to CA04.... P4 Db issue 312</xref>
              </li>
              <li>
                  <xref href="../../../Rosetta/common_newest/LxAdv_CA-ref.cite4thisresource-LxAdv-ref.parallelcite-doc.related-content.dita">2014-08-06 - ref:cite4thisresource with ref:parallelcite and doc:related-content id-CCCC-10497: Updated Primary and Alternate Languages for C.B.D,D.B.D.A,LNCRTCE and 2009 LNCRTCF 41... Db issue P4.313</xref>
              </li>
          </ul>
      </section>
      <section>
          <title>admindoc 3.13: PROD</title>
          <ul>
              <li>
                  <xref href="case.courtcite.dita">2014-07-28 - case:courtcite id-CA04-13416: Updated instruction and example for grouping of citations under one <targetxml>ref:citations</targetxml>. R4.5 DB Item #1768.</xref>
              </li>
              <li>
                  <xref href="case.decisionsummary.dita">2014-07-28 - case:decisionsummary id-CA04-13421: Added instruction to handle "HELD:" keyword in case:decisionsummary.. R4.5 Issue #1584</xref>
              </li>
              <li>
                  <xref href="case.references.dita">2014-07-28 - case:references id-CA04-13434: Added LEGISLATION: to the table with @referencetype value legislation. R4.5 DB Item #1278.</xref>
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
                  <xref href="case.pubinfo.dita">2014-07-17 - case:pubinfo id-CA04-13433: Added the list of values when <sourcexml>case:pubinfo</sourcexml> needs to be suppressed.</xref>
              </li>
              <li>
                  <xref href="../../../Rosetta/common_newest/LxAdv_CA-ref.cite4thisresource-LxAdv-ref.parallelcite-doc.related-content.dita">2014-07-09 - ref:cite4thisresource with ref:parallelcite and doc:related-content id-CCCC-10497: Added primary and alternate language for CA04- Db issue #250</xref>
              </li>
              <li>
                  <xref href="case.decisionsummary.dita">2014-07-08 - case:decisionsummary id-CA04-13421: Added the additional phrases from the attached Word document in addition to "Court Summary:"R4.5 Issue #1584</xref>
              </li>
              <li>
                  <xref href="../../../Rosetta/common_newest/Rosetta_table-LxAdv-table.dita">2014-07-08 - table to table id-CCCC-10475: Updated instruction for added the
                      following rarely occurring attributes <sourcexml>@char</sourcexml> inside the <sourcexml>entry</sourcexml>.</xref>
              </li>
              <li>
                  <xref href="../../../Rosetta/common_newest/LxAdv_CA-ref.cite4thisresource-LxAdv-ref.parallelcite-doc.related-content.dita">2014-07-07 - ref:cite4thisresource with ref:parallelcite and doc:related-content id-CCCC-10497: Added R and Sch alternatives in CA06 and CA07 table</xref>
              </li>
          </ul>
      </section>
      <section>
          <title>admindoc 3.12: PROD</title>
          <ul>  
              <li>
                  <xref href="../../../Rosetta/common_newest/LxAdv_CA-ref.cite4thisresource-LxAdv-ref.parallelcite-doc.related-content.dita">2014-06-27 - ref:cite4thisresource with ref:parallelcite and doc:related-content id-CCCC-10497: Added table for CA04....Db issue #1552</xref>
              </li>
              <li>
                  <xref href="../../common_caselaw/Rosetta_refnum.refnumtype.UCN-LxAdv_ref.groupid.dita">2014-06-26 - refnum[@refnumtype="UCN"] - ref:groupid id-CCCC-12047: Make <targetxml>ref:resourcekey</targetxml> UCN value urn conform to PGUID registry, e.g. "urn:ucn-1:00180609".</xref>
              </li>
              <li>
                  <xref href="../../../Rosetta/DITA-CAN/CA04-Administrative_Decisions/case.references.dita">2014-06-25 - case:references id-CA04-13434: Removed note to suppress pnum.Db Item #233.</xref>
              </li>
              <li>
                  <xref href="../../../Rosetta/DITA-CAN/CA04-Administrative_Decisions/case.parallelcite.dita">2014-06-23 - case:parallelcite id-CA04-13431: Instructions for multiple occurance of <sourcexml>ci:cite</sourcexml> under
                      <targetxml>case:parallelcite</targetxml>... Db issue #234</xref>
              </li>
              <li>
                  <xref href="../../../Rosetta/DITA-CAN/CA04-Administrative_Decisions/case.references.dita">2014-06-23 - case:references id-CA04-13434: Attribute @referencetype all lower case for "legislation" and "consideredcases". R4.5 DB Item #1278.</xref>
              </li>
              <li>
                  <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.doc-id-LxAdv-dcidentifier_lnmetaidentifier-scheme.dita">2014-06-23 - docinfo:doc-id to dc:identifier[@lnmeta:identifier-scheme] id-CCCC-10293: Note and Example removed - For CA05 Acts and
                      Bills- Mapping in dc:identifier for act-no and chunk-no. Db issue #1464</xref>
              </li>
              <li>
                  <xref href="../../../Rosetta/common_newest/Rosetta_CAN_docinfo.custom-metafields-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta.meta.metaitem.dita">2014-06-23 - docinfo:custom-metafields to doc:legacy-metadata[@metadatasource="lbu-meta"]/meta/metaitem id-CCCC-10251: Added Rule for mapping
                      <sourcexml>docinfo:custom-metafields/docinfo:custom-metafield/@act-id</sourcexml>
                      in HEAD Section in target, this is applicable for CA05-CA08 only</xref>
              </li>
              <li>
                  <xref href="../../../Rosetta/DITA-CAN/CA04-Administrative_Decisions/case.constituents.dita">2014-06-19 - case:constituents id-CA04-13414: Remove colon from case:constituents title Appearances:... Db issue #1649</xref>
              </li>
              <li>
                  <xref href="../../../Rosetta/DITA-CAN/CA04-Administrative_Decisions/case.judgmentbody.dita">2014-06-18 - case:judgmentbody id-CA04-13427: Add note and example about creating multiple <targetxml>admindecision:opinion</targetxml>. Phase 4B item# 232</xref>
              </li>
              <li>
                  <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2014-06-18 - docinfo:assoc-links to doc:related-content id-CCCC-10284: Corrected minor typos in <sourcexml>lnlink[@service="QUERYLINK"]</sourcexml> instructions.</xref>
              </li>
              <li>
                  <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2014-06-13 - docinfo:assoc-links to doc:related-content id-CCCC-10284: Added instructions and an example for converting
                      <sourcexml>lnlink[@service="QUERYLINK"]</sourcexml> to
                      <targetxml>ref:lnlink</targetxml>.</xref>
              </li>
              <li>
                  <xref href="../../common_caselaw/Rosetta_refnum.refnumtype.UCN-LxAdv_ref.groupid.dita">2014-06-12 - refnum[@refnumtype="UCN"] - ref:groupid id-CCCC-12047: Created this instruction.</xref>
              </li>
              <li>
                  <xref href="../../../Rosetta/DITA-CAN/CA04-Administrative_Decisions/case.parallelcite.dita">2014-06-11 - case:parallelcite id-CA04-13431: Updated instruction and example to add attribute
                      <targetxml>ref:parallelcite/@citetype="parallel"</targetxml> in target.</xref>
              </li>
              <li>
                  <xref href="../../../Rosetta/DITA-CAN/CA04-Administrative_Decisions/case.decisionsummary.dita">2014-06-10 - case:decisionsummary id-CA04-13421: Loosened instruction to convert <sourcexml>p/text</sourcexml> beginning with "HELD:" into <targetxml>casesum:disposition/p/text</targetxml>. Allow dash to end first sentence. Allow <sourcexml>emph</sourcexml> around HELD text. Allow space before colon. Allow French language version. Convert preceding and following space dash dash with a period. Add example.R4.5 Issue #1588</xref>
              </li>
              
          </ul>
      </section>
      
      <section>
          <title>admindoc 3.10: PROD</title>
          <ul>    
              <li>
                  <xref href="../../../Rosetta/DITA-CAN/CA04-Administrative_Decisions/case.references.dita">2014-06-05 - case:references id-CA04-13434: Removed nested ref:relatedrefs.Db Item #214.</xref>
              </li>
              <li>
                  <xref href="../../../Rosetta/DITA-CAN/CA04-Administrative_Decisions/case.judgmentbody.dita">2014-06-05 - case:judgmentbody id-CA04-13427: Discerning Opinion By from Text. R4.5 item# 1592</xref>
              </li>
              <li>
                  <xref href="../../../Rosetta/DITA-CAN/CA04-Administrative_Decisions/case.references.dita">2014-06-04 - case:references id-CA04-13434: Updates Canada-only instruction and examples for where <targetxml>@referencetype</targetxml> value generated based on table value. R4.5 Item #1587.</xref>
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
              <li>
                  <xref href="../../../Rosetta/common_newest/Rosetta_footnote-LxAdv-footnote.dita">2014-06-02 - footnotegrp and footnote to footnotegrp and footnote id-CCCC-10322: Canada only. Added special rule to suppress
                      indent from <sourcexml>footnote/fnbody/p[@indent]</sourcexml>. Applies
                      immediately to all Canada streams. R4.5 Content Issue 1609.</xref>
              </li>
              <li>
                  <xref href="../../../Rosetta/DITA-CAN/CA04-Administrative_Decisions/case.references.dita">2014-05-30 - Instructions provided on how to handle the mandatory sequence order.Db Item #203.</xref>
              </li>
              <li>
                  <xref href="../../../Rosetta/DITA-CAN/CA04-Administrative_Decisions/case.references.dita">2014-04-29 - case:references id-CA04-13434: Modify instruction to better preserve document order.R4.5 Item #1368.</xref>
              </li>
          </ul>
      </section>
      <section>
          <title>admindoc 3.8: PROD</title>
          <ul>
              <li>
                  <xref href="../../../Rosetta/DITA-CAN/CA04-Administrative_Decisions/case.decisionsummary.dita">2014-04-24 - case:decisionsummary: Updated instruction to convert <sourcexml>p/text</sourcexml> beginning with "HELD:" into <targetxml>casesum:disposition/p/text</targetxml>R4.5 Issue #1355</xref>
              </li>
              <li>
                  <xref href="../../../Rosetta/DITA-CAN/CA04-Administrative_Decisions/case.decisionsummary.dita">2014-04-24 - case:decisionsummary: Provide a "Jump To Link" for Court Summary by use of target <targetxml>casesum:courtsummary</targetxml> instead of <targetxml>casesum:decisionsummary</targetxml>R4.5 Issue #1355</xref>
              </li>
              <li>
                  <xref href="../../../Rosetta/DITA-CAN/CA04-Administrative_Decisions/case.references.dita">2014-04-24 - case:references: Add instruction and two examples for where <targetxml>@referencetype</targetxml> becomes "consideredcases" or "legislation".R4.5 Item #1355.</xref>
              </li>
          </ul>
      </section>
      
      <section>
          <title>admindoc 3.8: PROD</title>
          <ul>
              <li>
                  <xref href="../../../Rosetta/DITA-CAN/CA04-Administrative_Decisions/case.length.dita">2014-04-22 - case:length: Added list of abbreviated values for
                      <targetxml>@unit</targetxml> attribute, R4.5 Content Issue #:1402. This change
                      immediately applies to CA04-Admindoc.</xref>
              </li>
          </ul>
      </section>
      <section>
          <title>admindoc 3.8: PROD</title>
          <ul>
              <li>
                  <xref href="../../../Rosetta/DITA-CAN/CA04-Administrative_Decisions/case.length.dita">2014-04-18 - case:length: Added note and example for Canada content to
                      add period (.) in <targetxml>@unit</targetxml> attribute, R4.5 Content Issue
                      #:1402. This change immediately applies to CA04-Admindoc.</xref>
              </li>
          </ul>
      </section>
      <section>
          <title>admindoc 3.8: PROD</title>
          <p>
              <ul>
                  <li>
                      <xref href="../../../Rosetta/DITA-CAN/CA04-Administrative_Decisions/case.parallelcite.dita">2014-04-16 - case:parallelcite: Update target mapping and target example for <sourcexml>case:parallelcite</sourcexml>.</xref>
                  </li>
                  <li>
                      <xref href="../../../Rosetta/common_newest/Rosetta_p-LxAdv-p.dita">2014-04-14 - p to p: Removed Colons from Labels.. DB item #1255</xref>
                  </li>
                  <li>
                      <xref href="../../../Rosetta/DITA-CAN/CA04-Administrative_Decisions/case.casename.dita">2014-04-01 - case:casename: Update rule for <sourcexml>nl</sourcexml>
                          inside <sourcexml>case:casename</sourcexml>. These changes immediate applies to CA04 - Administrative Decisions.</xref>
                  </li>
                  <li>
                      <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2014-03-25 - docinfo:assoc-links to doc:related-content: Added rule and example for
                          <sourcexml>docinfo:assoc-links/docinfo:assoc-links-grp/ci:cite</sourcexml>. R4.5 Content issue
                          #1125</xref>
                  </li>
                  <li>
                      <xref href="../../../Rosetta/common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2014-02-25 - remotelink to ref:crossreference: Updated instruction and created new example (#16) for handling <sourcexml>remotelink[@service="QUERY"]</sourcexml>. New instruction preserves pcdata but suppresses <sourcexml>remotelink</sourcexml> markup. Webstar #250335. Change applies immediately to all Pacific streams, and in the long run to all streams.</xref>
                  </li>
              </ul>
          </p>
        
      </section>
      <section>
          <title>admindoc 3.8: PROD</title>
          <p>2014-04-01
          <ul>
                  <li>
                      <xref href="../../../Rosetta/DITA-CAN/CA04-Administrative_Decisions/case.casename.dita">2014-04-01 - case:casename: Update rule for <sourcexml>nl</sourcexml>
                          inside <sourcexml>case:casename</sourcexml>. These changes immediate applies to CA04 - Administrative Decisions.</xref>
                  </li>
                  <li>
                      <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2014-03-25 - docinfo:assoc-links to doc:related-content: Added rule and example for <sourcexml>docinfo:assoc-links/docinfo:assoc-links-grp/ci:cite</sourcexml>. R4.5 Content issue #1125</xref>
                  </li>
              
          </ul></p>
      </section>
      <section>
          <title>admindoc 3.8: PROD</title>
          <p>2014-01-31</p>
          <ul>
              <li>
                  <xref href="../../DITA-CAN/CA04-Administrative_Decisions/case.appendix.dita">2014-01-31 - Added instruction for handling <sourcexml>case:appendix/p</sourcexml>. Phase 4 Canada content stream defect list: issue #161.</xref>
              </li>
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
                  <xref href="../../common_newest/Rosetta_text-LxAdv-text.dita">2014-01-31: Updated instruction, <targetxml>align</targetxml> will be moved in <targetxml>p</targetxml> in NL conversion. NZ09 commentary discussion board issue for handling <sourcexml>text/@align</sourcexml></xref>
              </li>
              <li>
                  <xref href="../../common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2013-12-30 - ci.cite to lnci.cite: Minor illustrative change. Added "(AU
                      Journals/Newsitem)" to headings for last example to clarify that retention of
                      <sourcexml>@type="cite4thisdoc"</sourcexml> is an exception for that
                      content, as already described in narrative rules.</xref>
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
                  <xref href="../../common_newest/Rosetta_table-LxAdv-table.dita">2013-09-16 - table to table: Removed an obsolete note regarding visual styling of tables.</xref>
              </li>
              <li>
                  <xref href="../../common_newest/Rosetta_table-LxAdv-table.dita">2013-09-12 - table to table: WebTeam #s 235116, 235130, 235126: Added instructions for deleting extraneous instances of @morerows, @colsep and @rowsep. These instructions apply immediately to all UK streams and also to AU18.</xref>
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
                  <xref href="../../common_newest/Rosetta_docinfo.lbu-meta-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta-scheme.dita">2013-08-12 - docinfo:lbu-meta to doc:legacy-metadata[@metadatasource="lbu-meta"]: We removed the docinfo:lbu-meta "include" list so now there is only a "drop" list. Anything not on the "drop" list should be passed through. Webteam 230557.</xref>
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
                  <xref href="../../common_newest/Rosetta_docinfo.lbu-meta-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta-scheme.dita">2013-08-02 - docinfo:lbu-meta to doc:legacy-metadata[@metadatasource="lbu-meta"]: Added <sourcexml>@name="selection_criteria_variant"</sourcexml> to the list of values in docinfo:metaitem/@name that should be retained. And added a example.</xref>
              </li>
              <li>
                  <xref href="../../common_newest/Rosetta_docinfo.doc-heading-LxAdv-dc.title.dita">2013-08-01 - docinfo:doc-heading to dc:title: For Canada Content streams: Added a note and examples, when <sourcexml>docinfo:doc-heading</sourcexml> contains <sourcexml>nl</sourcexml> as a child element.</xref>
              </li>
              <li>
                  <xref href="../../common_newest/Rosetta_CAN_docinfo.custom-metafields-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta.meta.metaitem.dita">2013-08-01 - docinfo:custom-metafields to doc:legacy-metadata[@metadatasource="lbu-meta"]/meta/metaitem: Updated target example for retaining "JURIS-SORT", "COURT-SORT" and "TERM-SORT" in target example.</xref>
              </li>
              <li>
                  <xref href="../../common_newest/Rosetta_title-LxAdv-title.dita">2013-07-30 - title to title: Updated Instruction when <sourcexml>title</sourcexml> contains word "TITLE: " or "NAME: ".</xref>
              </li>
              <li>
                  <xref href="../../common_newest/Rosetta_docinfo.doc-heading-LxAdv-dc.title.dita">2013-07-30 - docinfo:doc-heading to dc:title: Added Instruction when <sourcexml>docinfo:doc-heading</sourcexml> contains word "TITLE: " or NAME: .</xref>
              </li>
          </ul>
      </section>
      <section>
          <title>admindoc 3.8: PROD</title>
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
                      <xref href="../../common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2013-12-30 - ci.cite to lnci.cite: Minor illustrative change. Added "(AU
                          Journals/Newsitem)" to headings for last example to clarify that retention of
                          <sourcexml>@type="cite4thisdoc"</sourcexml> is an exception for that
                          content, as already described in narrative rules.</xref>
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
                      <xref href="../../common_newest/Rosetta_table-LxAdv-table.dita">2013-09-16 - table to table: Removed an obsolete note regarding visual styling of tables.</xref>
                  </li>
                  <li>
                      <xref href="../../common_newest/Rosetta_table-LxAdv-table.dita">2013-09-12 - table to table: WebTeam #s 235116, 235130, 235126: Added instructions for deleting extraneous instances of @morerows, @colsep and @rowsep. These instructions apply immediately to all UK streams and also to AU18.</xref>
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
                      <xref href="../../common_newest/Rosetta_docinfo.lbu-meta-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta-scheme.dita">2013-08-12 - docinfo:lbu-meta to doc:legacy-metadata[@metadatasource="lbu-meta"]: We removed the docinfo:lbu-meta "include" list so now there is only a "drop" list. Anything not on the "drop" list should be passed through. Webteam 230557.</xref>
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
                      <xref href="../../common_newest/Rosetta_docinfo.lbu-meta-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta-scheme.dita">2013-08-02 - docinfo:lbu-meta to doc:legacy-metadata[@metadatasource="lbu-meta"]: Added <sourcexml>@name="selection_criteria_variant"</sourcexml> to the list of values in docinfo:metaitem/@name that should be retained. And added a example.</xref>
                  </li>
                  <li>
                      <xref href="../../common_newest/Rosetta_docinfo.doc-heading-LxAdv-dc.title.dita">2013-08-01 - docinfo:doc-heading to dc:title: For Canada Content streams: Added a note and examples, when <sourcexml>docinfo:doc-heading</sourcexml> contains <sourcexml>nl</sourcexml> as a child element.</xref>
                  </li>
                  <li>
                      <xref href="../../common_newest/Rosetta_CAN_docinfo.custom-metafields-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta.meta.metaitem.dita">2013-08-01 - docinfo:custom-metafields to doc:legacy-metadata[@metadatasource="lbu-meta"]/meta/metaitem: Updated target example for retaining "JURIS-SORT", "COURT-SORT" and "TERM-SORT" in target example.</xref>
                  </li>
                  <li>
                      <xref href="../../common_newest/Rosetta_title-LxAdv-title.dita">2013-07-30 - title to title: Updated Instruction when <sourcexml>title</sourcexml> contains word "TITLE: " or "NAME: ".</xref>
                  </li>
                  <li>
                      <xref href="../../common_newest/Rosetta_docinfo.doc-heading-LxAdv-dc.title.dita">2013-07-30 - docinfo:doc-heading to dc:title: Added Instruction when <sourcexml>docinfo:doc-heading</sourcexml> contains word "TITLE: " or NAME: .</xref>
                  </li>
              </ul>
          </p>
      </section>
      <section>
          <title>admindoc 3.1:PROD</title>
          <p>2013-07-22
              <ul>
                  <li>
                      <xref href="../../common_newest/Rosetta_CAN_docinfo.custom-metafields-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta.meta.metaitem.dita">2013-07-22 - Added DITA reference having updated instructions for <sourcexml>docinfo:custom-metafields</sourcexml> handling.                         
                      </xref>
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
                      <xref href="../../common_newest/Rosetta_identifier-LxAdv-ID_data_type-HandlingPatternRestrictions.dita">2013-07-17 - Identifiers to ID Data Type - Handling Pattern Restrictions: Added instructions for handling
                          leading/trailing space(s) and XML entities.</xref>
                  </li>
                  <li>
                      <xref href="../../common_newest/Rosetta_docinfo.doc-lang-and-doc-country-LxAdv-ROOT_xml.lang.dita">2013-07-16 - docinfo:doc-lang and docinfo:doc-country to @xml:lang and @xml:ID: Instruction narrative edited for language; no changes to mappings, no impact to stylesheets.</xref>
                  </li>
                  <li>
                      <xref href="../../common_newest/Rosetta_figure-LxAdv-figure.dita">2013-07-15 - figure to figure: Added instructions for handling
                          figure/caption and an example demonstrating the mapping.</xref>
                  </li>
                  <li>
                      <xref href="../../common_newest/Rosetta_identifier-LxAdv-ID_data_type-HandlingPatternRestrictions.dita">2013-07-10 - Identifiers to ID Data Type - Handling Pattern Restrictions: Added instruction to replace space with
                          underscore.</xref>
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
                      <xref href="../../common_newest/Rosetta_docinfo.lbu-meta-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta-scheme.dita">2013-05-31 - docinfo:lbu-meta to doc:legacy-metadata[@metadatasource="lbu-meta"]: Added "document-type" to the list of values
                          in docinfo:metaitem/@name that should be retained.</xref>
                  </li>
                  <li>
                      <xref href="../../common_newest/Rosetta_CAN_docinfo.custom-metafields-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta.meta.metaitem.dita">2013-05-24 - docinfo:custom-metafields to doc:legacy-metadata[@metadatasource="lbu-meta"]/meta/metaitem: Instruction and example added for handling of
                          <sourcexml>docinfo:custom-metafield/@name="pageestimate"</sourcexml>.</xref>
                  </li>
                  <li>
                      <xref href="../../common_newest/Rosetta_inlineobject-LxAdv-figure_ref.inlineobject.dita">2013-05-24 - inlineobject to figure/ref:inlineobject: Updated target example, "when smi is present".</xref>
                  </li>
                  <li>
                      <xref href="../../common_newest/Rosetta_CAN_docinfo.custom-metafields-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta.meta.metaitem.dita">2013-05-20 - docinfo:custom-metafields to doc:legacy-metadata[@metadatasource="lbu-meta"]/meta/metaitem: Removed Canada content stream codes from
                          instruction since its a Canada specific rule and will be applicable to all the
                          content streams.</xref>
                  </li>
                  <li>
                      <xref href="../../common_newest/Rosetta_docinfo-LxAdv-doc.metadata_doc.docinfo.dita">2013-05-16 - docinfo to doc:metadata/doc:docinfo: Fixed typo updating urn:contentitem to
                          urn:contentItem</xref>
                  </li>
                  <li>
                      <xref href="../../common_newest/Rosetta_CAN_docinfo.custom-metafields-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta.meta.metaitem.dita">2013-05-13 - docinfo:custom-metafields to doc:legacy-metadata[@metadatasource="lbu-meta"]/meta/metaitem: Example added for handling of
                          <sourcexml>docinfo:custom-metafields/@name="reg-no"</sourcexml>.</xref>
                  </li>
                  <li>
                      <xref href="../../common_newest/Rosetta_figure-LxAdv-figure.dita">2013-05-08 - figure to figure: Extended the list of allowable values for
                          image handling.</xref>
                  </li>
                  <li>
                      <xref href="../../common_newest/Rosetta_glp.note-Chof-figure-LxAdv-figure.dita">2013-05-08 - (Legislation &amp; Regulation) figure/glp:note to figure: Extended the list of allowable values for image handling.</xref>
                  </li>
                  <li>
                      <xref href="../../common_newest/Rosetta_inlineobject-LxAdv-figure_ref.inlineobject.dita">2013-05-08 - inlineobject to figure/ref:inlineobject: Extended the list of allowable values for image handling.</xref>
                  </li>
                  <li>
                      <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-05-08 - remotelink to ref:crossreference: Extended the list of allowable values for image handling.</xref>
                  </li>
                  <li>
                      <xref href="../../common_newest/Rosetta_inlineobject-LxAdv-figure_ref.inlineobject.dita">2013-05-02 - inlineobject to figure/ref:inlineobject: Updated target example to if the SMI is present then a <targetxml>ref:inliineobject/@status</targetxml> attribute is set to “valid”.</xref>
                  </li>
                  <li>
                      <xref href="../../common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2013-05-01 - ci.cite to lnci.cite: Removed special rule for
                          <sourcexml>ci:cite/ci:content/remotelink</sourcexml> which required
                          suppression of <sourcexml>ci:cite/ci:content</sourcexml> tags. The elements are
                          now retained and convert according to common rules.</xref>
                  </li>
                  <li>
                      <xref href="../../common_newest/Rosetta_figure-LxAdv-figure.dita">2013-05-01 - figure to figure: Removed instructions for section
                          "Pre-Release 4.0" because according to latest Apollo markup, section
                          "Release 4.0 and after" and section "Pre-Release 4.0" now have
                          similar conversion markup.</xref>
                  </li>
                  <li>
                      <xref href="../../common_newest/Rosetta_glp.note-Chof-figure-LxAdv-figure.dita">2013-05-01 - (Legislation &amp; Regulation) figure/glp:note to figure: Removed instructions for section
                          "Pre-Release 4.0" because according to latest Apollo markup, section
                          "Release 4.0 and after" and section "Pre-Release 4.0" now have
                          similar conversion markup.</xref>
                  </li>
                  <li>
                      <xref href="../../common_newest/Rosetta_inlineobject-LxAdv-figure_ref.inlineobject.dita">2013-05-01 - inlineobject to figure/ref:inlineobject: Removed instructions for section
                          "Pre-Release 4.0" because according to latest Apollo markup, section
                          "Release 4.0 and after" and section "Pre-Release 4.0" now have
                          similar conversion markup.</xref>
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
                      <xref href="../../common_newest/Rosetta_figure-LxAdv-figure.dita">2013-04-30 - figure to figure: Updated target sample according to latest
                          Apollo markup.</xref>
                  </li>
                  <li>
                      <xref href="../../common_newest/Rosetta_glp.note-Chof-figure-LxAdv-figure.dita">2013-04-30 - (Legislation &amp; Regulation) figure/glp:note to figure: Updated target sample according to latest Apollo markup.</xref>
                  </li>
                  <li>
                      <xref href="../../common_newest/Rosetta_inlineobject-LxAdv-figure_ref.inlineobject.dita">2013-04-30 - inlineobject to figure/ref:inlineobject: Updated target sample according to latest Apollo markup.</xref>
                  </li>
                  <li>
                      <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-04-30 - remotelink to ref:crossreference: Updated target sample according to latest Apollo markup.</xref>
                  </li>
                  <li>
                      <xref href="../../common_newest/Rosetta_CAN_docinfo.custom-metafields-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta.meta.metaitem.dita">2013-04-29 - docinfo:custom-metafields to doc:legacy-metadata[@metadatasource="lbu-meta"]/meta/metaitem: Instructions and example added for handling
                          various scenarios of <sourcexml>docinfo:custom-metafields</sourcexml> for
                          CA06-Regs and CA08-Const.</xref>
                  </li>
                  <li>
                      <xref href="../../common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2013-04-24 - ci.cite to lnci.cite: Added a mapping for
                          <sourcexml>ci:procphrase</sourcexml> to
                          <sourcexml>lnci:procphrase</sourcexml>
                      </xref>
                  </li>
                  <li>
                      <xref href="../../common_newest/Rosetta_docinfo.doc-lang-and-doc-country-LxAdv-ROOT_xml.lang.dita">2013-04-19 - docinfo:doc-lang and docinfo:doc-country to @xml:lang and @xml:ID: Added note about applicability of
                          restrictions and required modifications for <targetxml>xml:id</targetxml> to
                          other scenarios.</xref>
                  </li>
                  <li>
                      <xref href="../../common_newest/Rosetta_CAN_docinfo.custom-metafields-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta.meta.metaitem.dita">2013-04-18 - docinfo:custom-metafields to doc:legacy-metadata[@metadatasource="lbu-meta"]/meta/metaitem: Instructions and example added for handling
                          various scenarios of <sourcexml>docinfo:custom-metafields</sourcexml> for CA
                          Acts and Bills.</xref>
                  </li>
                  <li>
                      <xref href="../../common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2013-04-12 - docinfo:assoc-links to doc:related-content: This module was changed from UK
                          specific to applicable to all LBUs</xref>
                  </li>
                  <li>
                      <xref href="../../common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2013-04-10 - docinfo:assoc-links to doc:related-content: An example for related content Source and
                          Target XML 4</xref>
                  </li>
                  <li>
                      <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-04-10 - remotelink to ref:crossreference: Added Source XML 7a: for link to URL, with non-URL text content because it was previously missing, only the target example was here.</xref>
                  </li>
                  <li>
                      <xref href="../../common_newest/Rosetta_docinfo.lbu-meta-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta-scheme.dita">2013-04-09 - docinfo:lbu-meta to doc:legacy-metadata[@metadatasource="lbu-meta"]: Added the instruction for handling
                          <sourcexml>docinfo:metaitem[@name="QLDB"]</sourcexml>.</xref>
                  </li>
                  <li>
                      <xref href="../../common_newest/Rosetta_Elements-LxAdv-Empty_Elements.dita">2013-03-28 - Suppress empty elements unless otherwise stated: Created.</xref>
                  </li>
                  <li>
                      <xref href="../../common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2013-03-28 - docinfo:assoc-links to doc:related-content:  Added rules for
                          <sourcexml>docinfo:assoc-links-grp</sourcexml> and for child
                          <sourcexml>text</sourcexml>.</xref>
                  </li>
                  <li>
                      <xref href="../../common_newest/Rosetta_docinfo.doc-id-LxAdv-dcidentifier_lnmetaidentifier-scheme.dita">2013-03-20 - docinfo:doc-id to dc:identifier[@lnmeta:identifier-scheme]: Updated the information on handling the
                          situation when <sourcexml>docinfo:dpsi[@id-string]</sourcexml> is absent with
                          instructions to get the dpsi from
                          <sourcexml>docinfo/docinfo:custom-metafields/docinfo:custom-metafield[@name="dpsi"]</sourcexml>.</xref>
                  </li>
                  <li>
                      <xref href="../../common_newest/Rosetta_nl-LxAdv-proc.nl.dita">2013-03-14 - nl to proc:nl: Add instruction and example <sourcexml>nl/@n</sourcexml>.</xref>
                  </li>
                  <li>
                      <xref href="../../common_newest/Rosetta_p-LxAdv-p.dita">2013-03-14 - p to p: Add instruction and example <sourcexml>p/@style</sourcexml>.</xref>
                  </li>
                  <li>
                      <xref href="../../common_newest/Rosetta_pgrp-LxAdv-pgrp.dita">2013-03-14 - pgrp to pgrp: Add instruction and example <sourcexml>pgrp/@id</sourcexml>.</xref>
                  </li>
                  <li>
                      <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-03-11 - remotelink to ref:crossreference: Instruction and example added on how to handle <targetxml>ref:marker </targetxml> 
                          if it is in <targetxml>ref:lnlink@service=”URL”</targetxml>and the <targetxml>ref:key-value@value</targetxml> starts-with (., 'http://www.lexisnexis.com/au/legal/api')</xref>
                  </li>
                  <li>
                      <xref href="../../common_newest/Rosetta_heading-LxAdv-heading.dita">2013-03-06 - heading to heading: Removed instructions/rules for exceptional desig scenario and deprecated
                          attribute <targetxml>@followstitle</targetxml>.</xref>
                  </li>
                  <li>
                      <xref href="../../common_newest/Rosetta_figure-LxAdv-figure.dita">2013-02-18 - figure to figure: Created two sections, one for "Release 4.0
                          and after" and another for "Pre-Release 4.0".</xref>
                  </li>
                  <li>
                      <xref href="../../common_newest/Rosetta_glp.note-Chof-figure-LxAdv-figure.dita">2013-02-18 - (Legislation &amp; Regulation) figure/glp:note to figure: Created two sections, one for "Release 4.0 and after" and another for "Pre-Release 4.0".</xref>
                  </li>
                  <li>
                      <xref href="../../common_newest/Rosetta_inlineobject-LxAdv-figure_ref.inlineobject.dita">2013-02-18 - inlineobject to figure/ref:inlineobject: Created two sections, one for "Release 4.0 and after" and another for "Pre-Release 4.0".</xref>
                  </li>
                  <li>
                      <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-02-18 - remotelink to ref:crossreference: Created two sections, one for "Release 4.0 and after" and another for "Pre-Release 4.0".</xref>
                  </li>
              </ul>              
          </p>
      </section>
   <!-- <section>
      <p>2013-01-30<ul>
          <li>A new section titled "<xref href="CA04admin_decisions_CoderCodesRemoval.dita">Removal
              of Coder Codes</xref>" has been added to the CI with information on the suppression of
            coder codes.</li>
        </ul></p>
    </section>-->
    <section>
      <p>2012-12-24<ul>
          <li>Example added for case:headnote/case:references/p/pnum scenario. Refer
              <sourcexml>case:references</sourcexml>.</li>
          <li>Instruction and example added for multiple
              <sourcexml>ci:cite/@type="cite4thisdoc"</sourcexml>. Refer
              <sourcexml>case:courtcite</sourcexml>.</li>
          <li>The instructions for <sourcexml>case:dates</sourcexml> have been updated with
            directions for populating the attribute
              <targetxml>decision:decisiondate/@normdate</targetxml>.</li>
        </ul></p>
    </section>
    <section>
      <p>2012-12-10<ul>
          <li>Instruction and example added for handling of <b>Codercodes</b>, Refer
              <sourcexml>case:appendix</sourcexml>.</li>
          <li>Added <targetxml>footnotegroup</targetxml> to the content model of
              <targetxml>admindecision:opinions</targetxml>.</li>
          <li>Instruction and example added for
              <sourcexml>docinfo:custom-metafield[@searchtype="CITED-COUNT"]</sourcexml>.</li>
        </ul></p>
    </section>
    <section>
      <title/>
      <p>2012-11-21<ul>
          <li>Example updated for <sourcexml>case:priorhist</sourcexml>.</li>
          <li>Example added for handling of multilple <sourcexml>case:references</sourcexml>.</li>
          <li>Instruction and example updated for <sourcexml>case:hearingdates</sourcexml>.</li>
        </ul></p>
    </section>
    <section>
      <title/>
      <p>2012-11-07<ul>
          <li>Instructions added for <sourcexml>case:references</sourcexml> handling when it is the
            child of <sourcexml>case:appendix/case:headnote</sourcexml>.</li>
          <li>Added the section "Mapping to ID Data Type".</li>
          <li>Added <targetxml>proc:nl</targetxml> to the content model of
              <targetxml>jurisinfo:courtname</targetxml> and
              <targetxml>caseinfo:fullcasename</targetxml>, Instruction and example updated.</li>
          <li>Instruction updated for <targetxml>case:courtcite</targetxml> handling.</li>
        </ul></p>
    </section>
    <section>
      <title>Created</title>
      <p>2012-08-10</p>
    </section>
  </body>

	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA04-Administrative_Decisions\Admindecisions_Change-Log.dita  -->
	<!--<xsl:message>Admindecisions_Change-Log.xsl requires manual development!</xsl:message> -->

</xsl:stylesheet>