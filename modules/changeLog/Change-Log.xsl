<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:ci="http://www.lexis-nexis.com/ci" xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" xmlns:casedigest="http://www.lexisnexis.com/xmlschemas/content/legal/case-digest/1/" xmlns:casehist="http://www.lexisnexis.com/xmlschemas/content/legal/case-history/1/" xmlns:caseinfo="http://www.lexisnexis.com/xmlschemas/content/legal/case-information/1/" xmlns:casesum="http://www.lexisnexis.com/xmlschemas/content/legal/case-summary/1/" xmlns:classify="http://www.lexisnexis.com/xmlschemas/content/shared/classification/1/" xmlns:courtcase="http://www.lexisnexis.com/xmlschemas/content/legal/courtcase/1/" xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns:decision="http://www.lexisnexis.com/xmlschemas/content/legal/decision/1/" xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" xmlns:globalentity="urn:x-lexisnexis:content:identified-entities:global:1" xmlns:jurisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/jurisdiction-info/1/" xmlns:legishist="http://www.lexisnexis.com/xmlschemas/content/legal/legislation-history/1/" xmlns:legisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/legislation-info/1/" xmlns:lnci="http://www.lexisnexis.com/xmlschemas/content/shared/citations/1/" xmlns:nitf="http://iptc.org/std/NITF/2006-10-18/" xmlns:person="http://www.lexisnexis.com/xmlschemas/content/shared/person/1/" xmlns:proc="http://www.lexisnexis.com/xmlschemas/content/shared/process-elements/1/" xmlns:pubinfo="http://www.lexisnexis.com/xmlschemas/content/shared/publication-info/1/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita case ci docinfo">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Change-Log">
  <title>Casedoc - Change Log</title>
  <body>  
    <section>
      <title>casedigest 8.3_PROD</title>
      <p>2015-03-18:
        <ul>
          <li>
            <xref href="case.juris.dita">2015-03-18 - case:juris id-CA02CC-12426: Added instructions to create single <targetxml>jurisinfo:courtinfo</targetxml>. Webteam 292982.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2015-03-17 - ci.cite to lnci.cite id-CCCC-10268: An attribute <targetxml>@inline</targetxml> get added with <targetxml>desig</targetxml> element even when the source<sourcexml>pnum</sourcexml> is not having that attribute<sourcexml>@inline</sourcexml> Applicable on CA12 only.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_pgrp-LxAdv-pgrp.dita">2015-03-17 - pgrp to pgrp id-CCCC-10431: An attribute <targetxml>@inline</targetxml> get added with <targetxml>desig</targetxml> element even when the source<sourcexml>pnum</sourcexml> is not having that attribute<sourcexml>@inline</sourcexml> Applicable on CA12 only.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_pnum-LxAdv-desig.dita">2015-03-17 - pnum to desig id-CCCC-10434: An attribute <targetxml>@inline</targetxml> get added with <targetxml>desig</targetxml> element even when the source<sourcexml>pnum</sourcexml> is not having that attribute<sourcexml>@inline</sourcexml> Applicable on CA12 only.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2015-02-24 - ci.cite to lnci.cite id-CCCC-10268: Example updated as per new rule an attribute <targetxml>@inline</targetxml>get added with <targetxml>desig</targetxml>element when the source<sourcexml>pnum</sourcexml>is not having that attribute<sourcexml>@inline</sourcexml>
            </xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_pgrp-LxAdv-pgrp.dita">2015-02-24 - pgrp to pgrp id-CCCC-10431: Example updated as per new rule an attribute <targetxml>@inline</targetxml>get added with <targetxml>desig</targetxml>element when the source<sourcexml>pnum</sourcexml>is not having that attribute<sourcexml>@inline</sourcexml> 
            </xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_pnum-LxAdv-desig.dita">2015-02-24 - pnum to desig id-CCCC-10434: An attribute <targetxml>@inline</targetxml>get added with <targetxml>desig</targetxml>element even when the source<sourcexml>pnum</sourcexml>is not having that attribute<sourcexml>@inline</sourcexml>
            </xref>
          </li>
          <li>
            <xref href="case.reportercite.dita">2015-02-23 - case:reportercite id-CA02CC-12432: remove trailing comma in target lnci:content DB item # 409</xref>
          </li>
          <li>
            <xref href="../../../common_newest/LxAdv_CA-ref.cite4thisresource-LxAdv-ref.parallelcite-doc.related-content.dita">2015-02-23 - ref:cite4thisresource with ref:parallelcite and doc:related-content id-CCCC-10497: Updated Scenario for CA02, when "DOC-ID" used with "DOCUMENT" service, <targetxml>proc:param/@name="targetdoclang"</targetxml> should be included. RFA# 2201, Applicable on CA02.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/LxAdv_CA-ref.cite4thisresource-LxAdv-ref.parallelcite-doc.related-content.dita">2015-02-19 - ref:cite4thisresource with ref:parallelcite and doc:related-content id-CCCC-10497: Updated Scenario for CA02, "DOC-ID" should be used with "DOCUMENT" service. RFA# 1873, Applicable on CA02.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/LxAdv_CA-ref.cite4thisresource-LxAdv-ref.parallelcite-doc.related-content.dita">2015-02-13 - ref:cite4thisresource with ref:parallelcite and doc:related-content id-CCCC-10497: Updated citation R.S.N.B., added period in the last. RFA# 200, Applicable on CA05.</xref>
          </li>
        </ul>
      </p>
      <p>2015-02-09:
        <ul>
          <li>
            <xref href="case.juris.dita">2015-02-05 - case:juris id-CA02CC-12426: Remove UK PGUID value from table (CA01, CA02 (all streams), CA03 and CA04). R45 RFA #2133.</xref>
          </li>
        </ul>
      </p>
      <p>2015-02-02:
        <ul>
          <li>
            <xref href="case.juris.dita">2015-02-02 - case:juris id-CA02CC-12426: Added instructions to apply CA in guid for country code "UK". Db issue #407 </xref>
          </li>
        </ul>
      </p>
      <p>2015-01-30
        <ul> 
          <li>
          <xref href="case.juris.dita">2015-01-30 - case:juris id-CA02CC-12426: Updated "The province codes with PGUID codes for Country" table when case:juris with country code "UK". Db issue #407 </xref>
        </li>
          <li>
            <xref href="case.references.dita">2015-01-30 - case:references id-CA02CC-12431: Updated instructions to only remove colons from heading/title not from bodytext/p. P4 DB Item
              #406.</xref>
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
        </ul>
      </p>
    </section>
    <section>
      <title>casedigest 8.1_PROD</title>
      <p>2015-01-09
      <ul>
        <li>
          <xref href="case.decisionsummary.dita">2015-01-09 - case:decisionsummary id-CA02CC-12418: Added instruction to map refpt to the following p if occuring under case:decisionsummary/heading/title  ... P4 Issue #393</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2015-01-02 - docinfo:assoc-links to doc:related-content id-CCCC-10284: Added
            <sourcexml>docinfo:assoc-links/remotelink[@service="QUERY"]</sourcexml> and
            <sourcexml>docinfo:assoc-links-grp/remotelink[@service="QUERY"]</sourcexml> to generate
            <targetxml>doc:related-content</targetxml> markup. Applicable on CA05.</xref>
        </li>
      </ul></p>
      <p>2014-12-23:
        <ul>
          <li>
            <xref href="case.decisionsummary.dita">2014-12-23 - refpt child of heading/title to ref:anchor: Created. Db issue #393</xref>
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
            <xref href="case.juris.dita">2014-12-15 - case:juris id-CA02CC-12426: Updated mapping. Db R4.5 issue
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
      <p>2014-12-11:
      <ul>
        <li>
          <xref href="case.reportercite.dita">2014-12-11 - case:reportercite id-CA02CC-12432: updated example to map ref:parallelcite under casedigest:caseinfo  DB item R4.5 issue no #2049 and #2069</xref>
        </li>
        <li>
          <xref href="case.reportercite_subset.dita">2014-12-11 - case:reportercite Subset: updated complete mapping with attribute <targetxml>citetype="parallel"</targetxml>..."DB item # 2049</xref>
        </li>
      </ul>
      </p>
      <p>2014-12-05
        <ul>
          <li>
            <xref href="case.reportercite.dita">2014-12-05 - case:reportercite id-CA02CC-12432: updated example to map ref:parallelcite under casedigest:caseinfo  DB item R4.5 issue no #2049</xref>
          </li>
        </ul>
      </p>
      <p>2014-12-04: 
        <ul> 
          <li>
          <xref href="case.reportercite_subset.dita">2014-12-04 - case:reportercite Subset: Added attribute <targetxml>citetype="parallel"</targetxml> to <targetxml>ref:parallelcite</targetxml>..."DB
            item # 1824</xref>
        </li></ul>
      </p>
    </section>
    <section>
      <title>casedigest 8.1_PROD</title>
      <p>2014-11-24: 
        <ul>
          <li>
            <xref href="../../../common_newest/Rosetta_link_refpt-LxAdv-ref.lnlink-ref.locator_anchoridref.dita">2014-11-24 - link/@refpt to ref:lnlink/ref.locator/@anchoridref id-CCCC-10395: Updated instruction for CA02-CC to drop
              <sourcexml>emph</sourcexml> in <sourcexml>link/emph</sourcexml>.</xref>
          </li>
          <li>
            <xref href="case.decisionsummary.dita">2014-11-24- Provided Mapping for case:decisionsummary/heading/title</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_refpt-Chof-p_text-LxAdv-p_ref.anchor.dita">2014-11-24- Added instructions for p/text/refpt</xref>
          </li>
        </ul>
      </p>
    </section>
    <section>
      <title>casedigest 8.0_PROD</title>
      <p>2014-11-18: 
        <ul>
          <li>
            <xref href="../../../common_newest/LxAdv_CA-ref.cite4thisresource-LxAdv-ref.parallelcite-doc.related-content.dita">2014-11-18 - ref:cite4thisresource with ref:parallelcite and doc:related-content id-CCCC-10497: For CA02- Updated instructions for "proc:param name="targetdoclang" value="" for both English and French. P4, Db issue #365</xref>
          </li>
          <li>
           2014-11-18 - case:courtcode/@ln.user-displayed id-CCCC-10257: Updated Instructions for case:courtcode P4, Db
              issue #364
          </li>
          <li>
           2014-11-18 - abbrvname/@ln.user-displayed="false" id-CCCC-10220: Updated Instructions for abbrvname P4, Db issue
              #364
          </li>
        </ul>
      </p>
    </section>
    <section>
      <title>casedigest 8.0_PROD</title>
      <ul>
        <li>
          <xref href="case.courtcode.dita">2014-11-11 - case:courtcode id-CA02CC-12414: Updated the mapping for
            <sourcexml>case:courtcode</sourcexml>, schema issue for
            jurisinfo:alternatecourtcode....Db issue #361 </xref>
        </li>
        <li>
          <xref href="../../../common_newest/LxAdv_CA-ref.cite4thisresource-LxAdv-ref.parallelcite-doc.related-content.dita">2014-11-06 - ref:cite4thisresource with ref:parallelcite and doc:related-content id-CCCC-10497: Added some english to french terms for
            translation of the citation and  also update c. to ch.   in  CA06 and
            CA07 table</xref>
        </li>
      </ul>
    </section>
    <section>
      <title>casedigest 8.0_PROD</title>
      <p>2014-10-30</p>
      <ul>
        <li>
          <xref href="case.constituents.dita">2014-10-27 - case:constituents id-CA02CC-12411: update the List of terms Db issue
            #358</xref>
        </li>
        <li>
          <xref href="case.references.dita">2014-10-27 - case:references id-CA02CC-12431: update the List of
            terms Db issue #358</xref>
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
    </section>
    <section>
      <title>casedigest 8.0_PROD</title>
      <p>2014-10-22<ul>
        <li>
          <xref href="abbrvname.dita">2014-10-22 - abbrvname id-CA02CC-12407: Updated CI for <targetxml>jurisinfo:courtname@normshortname</targetxml> to also be placed in <targetxml>jurisinfo:alternatecourtcode@alternatecourtcode</targetxml>...R4.5 Db issue #1987</xref>
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
      <title>casedigest 8.0_PROD</title>
      <p>2014-10-06<ul><li>
        <xref href="case.dates.dita">2014-10-06 - case:dates id-CA02CC-12417: case:decisiondate should not output argueddate/date-text if <sourcexml>ln.user-displayed="false“</sourcexml>. Removed instructions for invalid date as LBU has remediated the issue.DB item # 337</xref>
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
        </li></ul></p>
    </section>
    <section>
      <title>casedigest 8.0_PROD</title>
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
      <title>casedigest 8.0_PROD</title> 2014-09-18 <ul>
        <li>
          <xref href="../../../common_caselaw/Rosetta_refnum.refnumtype.UCN-LxAdv_ref.groupid.dita">2014-09-17 - refnum[@refnumtype="UCN"] - ref:groupid id-CCCC-12047: updated example.
            P4- Db issue# 338</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2014-09-16 - docinfo:assoc-links to doc:related-content id-CCCC-10284: Added a note to
            create <targetxml>proc:param/@name="attachment-smi"</targetxml> and
              <targetxml>proc:param/@value</targetxml> as these was there in the snippet but was
            missing in instruction and also added a note in to simplify in output
              <targetxml>ref:key-value/@value</targetxml>
          </xref>
        </li>
      </ul>
    </section>
    <section>
      <title>casedigest 8.0_PROD</title> 2014-09-15 <ul>

        <li>
          <xref href="../../../common_caselaw/Rosetta_refnum.refnumtype.UCN-LxAdv_ref.groupid.dita">2014-09-15 - refnum[@refnumtype="UCN"] - ref:groupid id-CCCC-12047: update target
            mapping of <sourcexml>refnum[@refnumtype="UCN"]</sourcexml> from Head to
              <targetxml>doc:docinfo/doc:membership/ref:groupid[@group-type="ucn-1"]</targetxml>. Db
            issue #1893</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_CAN_docinfo.custom-metafields-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta.meta.metaitem.dita">2014-09-15 - docinfo:custom-metafields to
            doc:legacy-metadata[@metadatasource="lbu-meta"]/meta/metaitem id-CCCC-10251: update
            target mapping of
              <sourcexml>docinfo:custom-metafields/docinfo:custom-metafield[@name="act-id"]</sourcexml>
            from Head to <targetxml>doc:docinfo
              doc-content-country/doc:membership/ref:groupid[@group-type="leg-id-1"]/ref:resourceid</targetxml>
          </xref>
        </li>
        <li>
          <xref href="case.reportercite_subset.dita">2014-09-12 - case:reportercite Subset:
              <sourcexml>case:reportercite</sourcexml> to be mapped as
              <targetxml>ref:parallelcite</targetxml> for specific subset..."DB item # 1824 </xref>
        </li>
      </ul>
    </section>
    <section>
      <title>casedigest 7.10_PROD</title>
      <ul>
        <li>
          <xref href="../../../common_newest/LxAdv_CA-ref.cite4thisresource-LxAdv-ref.parallelcite-doc.related-content.dita">2014-09-03 - ref:cite4thisresource with ref:parallelcite and doc:related-content
            id-CCCC-10497: Added instructions for proc:param name="targetdoclang". R4.5
            #1873.</xref>
        </li>
        <li>
          <xref href="../../../DITA-CAN/CA02-Case_Summaries/CA02CC_CASEDOC/case.decisionsummary.dita">2014-08-27 - case:decisionsummary id-CA02CC-12418: Updated instruction for
            case:decisionsummary to place the period sign after completion of sentence ... P4 Issue
            #323</xref>
        </li>
        <li>
          <xref href="../../../common_newest/LxAdv_CA-ref.cite4thisresource-LxAdv-ref.parallelcite-doc.related-content.dita">2014-08-27 - ref:cite4thisresource with ref:parallelcite and doc:related-content
            id-CCCC-10497: Added the new rule for CA02 content streams for alternate language. P4
            issue #324.</xref>
        </li>
        <li>
          <xref href="../../../common_newest/LxAdv_CA-ref.cite4thisresource-LxAdv-ref.parallelcite-doc.related-content.dita">2014-08-25 - ref:cite4thisresource with ref:parallelcite and doc:related-content
            id-CCCC-10497: Added the new citation inside the table for CA08 i.e. R.S.C. 1985,
            Appendix II, No. 4, s. L.</xref>
        </li>
        <li>
          <xref href="../../../common_newest/LxAdv_CA-ref.cite4thisresource-LxAdv-ref.parallelcite-doc.related-content.dita">2014-08-25 - ref:cite4thisresource with ref:parallelcite and doc:related-content
            id-CCCC-10497: Added Schedule to Annexe and vice a versa in C.R.C citation, Applicable
            for CA06 and CA07.</xref>
        </li>
        <li>
          <xref href="../../../DITA-CAN/CA02-Case_Summaries/CA02CC_CASEDOC/case.decisionsummary.dita">2014-08-21 - case:decisionsummary id-CA02CC-12418: Schema updated to allow
            casesum:courtsummary instead of casedigest:decisionsummary... P4 Issue #316</xref>
        </li>
        <li>
          <xref href="../../../common_newest/LxAdv_CA-ref.cite4thisresource-LxAdv-ref.parallelcite-doc.related-content.dita">2014-08-21 - ref:cite4thisresource with ref:parallelcite and doc:related-content
            id-CCCC-10497: Updated C.O.M.C. with "no" and T.M.O.B. "No." for CA04- Db issue
            #326</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2014-08-21 - docinfo:assoc-links to doc:related-content id-CCCC-10284: Added
            instructions and an example for converting
              <sourcexml>lnlink[@service="ATTACHMENT"]</sourcexml> to
              <targetxml>ref:lnlink</targetxml>. Applicable on CA05-CA08.</xref>
        </li>
        <li>
          <xref href="../../../DITA-CAN/CA02-Case_Summaries/CA02CC_CASEDOC/case.dates.dita">2014-08-19 - case:dates id-CA02CC-12417: Updated example for nl. date-text will be
            created around text of the date only....DB item # 1795</xref>
        </li>
        <li>
          <xref href="../../../DITA-CAN/CA02-Case_Summaries/CA02CC_CASEDOC/case.reportercite_subset.dita">2014-08-19 - case:reportercite Subset: <sourcexml>case:reportercite</sourcexml> to be
            mapped as <targetxml>ref:cite4thisresource @citetype="parallel"</targetxml> for specific
            subset..."DB item # 1824 </xref>
        </li>
      </ul></section>
    <section>
      <title>casedigest 7.9_PROD</title>
      <ul>
        <li>
          <xref href="case.judgments.dita">2014-06-06 - case:judgments id-CA02CC-12425: Canada CA02
            only. Added special rule for <sourcexml>case:judgements/footnotegrp</sourcexml> to map
            to
              <targetxml>casedigest:body/casedigest:decision/casedigest:decisionsummary/bodytext/courtcase:opinion/footnotegroup</targetxml>
            Phase 4 Issue 207.</xref>
        </li>
        <li>
          <xref href="../../../DITA-CAN/CA02-Case_Summaries/CA02CC_CASEDOC/case.decisionsummary.dita">2014-08-11 - case:decisionsummary id-CA02CC-12418: Updated instruction for
            case:decisionsummary having HELD without any following text... P4 Issue #317</xref>
        </li>
        <li>
          <xref href="../../../DITA-CAN/CA02-Case_Summaries/CA02CC_CASEDOC/case.reportercite.dita">2014-08-11 - case:reportercite id-CA02CC-12432: ref:parallelcite mapped under
            casedigest:caseinfo DB item # 319</xref>
        </li>
        <li>
          <xref href="../../../common_newest/LxAdv_CA-ref.cite4thisresource-LxAdv-ref.parallelcite-doc.related-content.dita">2014-08-11 - ref:cite4thisresource with ref:parallelcite and doc:related-content
            id-CCCC-10497: Added alternate citation for corresponding citation as provided in
            alternate and primary format for CA04- Db issue #321</xref>
        </li>
        <li>
          <xref href="../../../common_newest/LxAdv_CA-ref.cite4thisresource-LxAdv-ref.parallelcite-doc.related-content.dita">2014-08-11 - ref:cite4thisresource with ref:parallelcite and doc:related-content
            id-CCCC-10497: Updated references in the table of L.R.N.-B. to L.R.N.B. and L.N.-B. to
            L.N.B. for CA05.</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_CAN_docinfo.custom-metafields-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta.meta.metaitem.dita">2014-08-11 - docinfo:custom-metafields to
            doc:legacy-metadata[@metadatasource="lbu-meta"]/meta/metaitem id-CCCC-10251: Added
            identifier
              <sourcexml>docinfo:custom-metafields/docinfo:custom-metafield[@searchtype="act-id"]</sourcexml>
            to generate
              <targetxml>*:head/ref:groupid/ref:resourceid/@ref:resourcekey=urn:leg-id-1:X</targetxml>.</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_docinfo.lbu.juris-LxAdv-classify.classification_classscheme_docinfolbu-juris.dita">2014-08-11 - docinfo:lbu-juris to
            classify:classification[@classscheme="docinfo:lbu-juris"] id-CCCC-10301: Added a special
            scenario for all Canada streams to handle <sourcexml>docinfo:lbu-juris</sourcexml> to
              <targetxml>classify:classification@classscheme="docinfo:lbu-juris"/classify:classitem/classify:classitem-identifier/classify:classname</targetxml>.
            Db P4 issue #305</xref>
        </li>
        <li>
          <xref href="../../../DITA-CAN/CA02-Case_Summaries/CA02CC_CASEDOC/case.decisionsummary.dita">2014-08-08 - case:decisionsummary id-CA02CC-12418: Updated instruction for
            case:decisionsummary having l as its child element... P4 Issue #314</xref>
        </li>
        <li>
          <xref href="../../../DITA-CAN/CA02-Case_Summaries/CA02CC_CASEDOC/case.decisionsummary.dita">2014-08-07 - case:decisionsummary id-CA02CC-12418: Updated instruction for
            casesum:disposition - Space appearing before the "." .. P4 Issue #302 and 320</xref>
        </li>
        <li>
          <xref href="../../../DITA-CAN/CA02-Case_Summaries/CA02CC_CASEDOC/case.dates.dita">2014-08-06 - case:dates id-CA02CC-12417: Updated instructions for argueddate. DB item #
            1795</xref>
        </li>
        <li>
          <xref href="../../../DITA-CAN/CA02-Case_Summaries/CA02CC_CASEDOC/case.dates.dita">2014-08-06 - case:dates id-CA02CC-12417: Updated instructions for invalid date..."DB
            item # 296</xref>
        </li>
        <li>
          <xref href="../../../common_newest/LxAdv_CA-ref.cite4thisresource-LxAdv-ref.parallelcite-doc.related-content.dita">2014-08--0 - ref:cite4thisresource with ref:parallelcite and doc:related-content
            id-CCCC-10497: Updated Primary and Alternate Languages for C.B.D,D.B.D.A,LNCRTCE and
            2009 LNCRTCF 41... Db issue P4.313</xref>
        </li>
      </ul>
    </section>
    <section>
      <title>casedigest 7.8_PROD</title>
      <ul>
        <li>
          <xref href="case.courtcite.dita">2014-07-28 - case:courtcite id-CA02CC-12413: Updated
            instruction and example for grouping of citations under one
              <targetxml>ref:citations</targetxml>. R4.5 DB Item #1768.</xref>
        </li>
        <li>
          <xref href="case.decisionsummary.dita">2014-07-28 - case:decisionsummary id-CA02CC-12418:
            Added instruction to handle "HELD:" keyword in case:decisionsummary.. R4.5 Issue
            #1584</xref>
        </li>
        <li>
          <xref href="case.references.dita">2014-07-28 - case:references id-CA02CC-12431: Added
            LEGISLATION: to the table with @referencetype value legislation. R4.5 DB Item
            #1278.</xref>
        </li>
        <li>
          <xref href="../../../common_newest/LxAdv_CA-ref.cite4thisresource-LxAdv-ref.parallelcite-doc.related-content.dita">2014-07-24 - ref:cite4thisresource with ref:parallelcite and doc:related-content
            id-CCCC-10497: Added new rule for conversion of CA01, CA02, CA04 and updated instruction
            for CA05-CA08.</xref>
        </li>
        <li>
          <xref href="case.dates.dita">2014-07-23 - case:dates id-CA02CC-12417: Added instruction
            not to populate <targetxml>decision:argueddate</targetxml> if
              <sourcexml>case:hearingdates</sourcexml> does not contain attributes ..."Issue# 289
            and 256</xref>
        </li>
        <li>
          <xref href="catchwordgrp.dita">2014-07-23 - catchwordgrp id-CA02CC-12433: Mapping of
            Catchwordgrp in casedigest:body. Db issue #258</xref>
        </li>
        <li>
          <xref href="../../../common_newest/LxAdv_CA-ref.cite4thisresource-LxAdv-ref.parallelcite-doc.related-content.dita">2014-07-21 - ref:cite4thisresource with ref:parallelcite and doc:related-content
            id-CCCC-10497: Updated CA01 citation [1986] A.C.A.C. no 1 and snippet.</xref>
        </li>
        <li>Removed instructions for case:decisiondate/@ln.user-displayed="false" id-CCCC-10259 as
          this was in general markup and was contradicting case:dates. Db issue #255</li>
        <li>
          <xref href="catchwordgrp.dita">2014-07-16 - catchwordgrp id-CA02CC-12433: Resolution to
            maintain order of Catchword and Summary Content. Db issue #258</xref>
        </li>
        <li>
          <xref href="case.decisionsummary.dita">2014-07-15 - case:decisionsummary id-CA02CC-12418:
            Clarification on HELD data scenario...."DB item # 268 </xref>
        </li>
        <li>
          <xref href="case.reportercite.dita">2014-07-15 - case:reportercite id-CA02CC-12432: Mapped
            case:reportercite in head where it directly contains text without any other sibling DB
            item # 260</xref>
        </li>
        <li>
          <xref href="../../../common_newest/LxAdv_CA-ref.cite4thisresource-LxAdv-ref.parallelcite-doc.related-content.dita">2014-07-09 - ref:cite4thisresource with ref:parallelcite and doc:related-content
            id-CCCC-10497: Added primary and alternate language for CA04- Db issue #250</xref>
        </li>
        <li>
          <xref href="case.length.dita">2014-07-09 -mapping in case:length: DB item # 259</xref>
        </li>
        <li>
          <xref href="case.reportercite.dita">2014-07-09 - case:reportercite: Added
            citetype="parallel" to ref:parallelciteDB item # 257</xref>
        </li>
        <li>
          <xref href="case.dates.dita">2014-07-08 - case:dates id-CA02CC-12417: Added instruction to
            create date-text for decision:argueddate even if ln.user-displayed="false" ..."R4.5
            Issue# 1589</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_table-LxAdv-table.dita">2014-07-08 - table to
            table id-CCCC-10475: Updated instruction for added the following rarely occurring
            attributes <sourcexml>@char</sourcexml> inside the <sourcexml>entry</sourcexml>.</xref>
        </li>
        <li>
          <xref href="../../../common_newest/LxAdv_CA-ref.cite4thisresource-LxAdv-ref.parallelcite-doc.related-content.dita">2014-07-07 - ref:cite4thisresource with ref:parallelcite and doc:related-content
            id-CCCC-10497: Added R and Sch alternatives in CA06 and CA07 table</xref>
        </li>
        <li>
          <xref href="case.dates.dita">2014-06-30 - case:dates id-CA02CC-12417: case:hearingdates
            corrected typing error..."DB item # 241</xref>
        </li>
        <li>
          <xref href="../../../common_newest/LxAdv_CA-ref.cite4thisresource-LxAdv-ref.parallelcite-doc.related-content.dita">2014-06-27 - ref:cite4thisresource with ref:parallelcite and doc:related-content
            id-CCCC-10497: Added table for CA04....Db issue #1552</xref>
        </li>
        <li>
          <xref href="../../../common_caselaw/Rosetta_refnum.refnumtype.UCN-LxAdv_ref.groupid.dita">2014-06-26 - refnum[@refnumtype="UCN"] - ref:groupid id-CCCC-12047: Make
              <targetxml>ref:resourcekey</targetxml> UCN value urn conform to PGUID registry, e.g.
            "urn:ucn-1:00180609".</xref>
        </li>
        <li>
          <xref href="../../../common_newest/LxAdv_CA-ref.cite4thisresource-LxAdv-ref.parallelcite-doc.related-content.dita">2014-06-25 - ref:cite4thisresource with ref:parallelcite and doc:related-content
            id-CCCC-10497: Added instruction for <targetxml>ref:marker</targetxml> and updated table
            for CA01-CA02, CA05-CA07.</xref>
        </li>
        <li>
          <xref href="case.references.dita">2014-06-23 - case:references id-CA02CC-12431: Attribute
            @referencetype all lower case for "legislation" and "consideredcases". R4.5 DB Item
            #1278.</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_CAN_docinfo.custom-metafields-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta.meta.metaitem.dita">2014-06-23 - docinfo:custom-metafields to
            doc:legacy-metadata[@metadatasource="lbu-meta"]/meta/metaitem id-CCCC-10251: Added Rule
            for mapping
              <sourcexml>docinfo:custom-metafields/docinfo:custom-metafield/@act-id</sourcexml> in
            HEAD Section in target, this is applicable for CA05-CA08 only. Db issue #1464</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_docinfo.doc-id-LxAdv-dcidentifier_lnmetaidentifier-scheme.dita">2014-06-23 - docinfo:doc-id to dc:identifier[@lnmeta:identifier-scheme] id-CCCC-10293:
            Note and Example removed - For CA05 Acts and Bills- Mapping in dc:identifier for act-no
            and chunk-no. Db issue #1464</xref>
        </li>
        <li>
          <xref href="../../../common_newest/LxAdv_CA-ref.cite4thisresource-LxAdv-ref.parallelcite-doc.related-content.dita">2014-06-20 - ref:cite4thisresource with ref:parallelcite and doc:related-content
            id-CCCC-10497: Changed <targetxml>ref:parallelcite@citetype</targetxml> to "parallel"
            from "FrenchVersion" or "EnglishVersion" to be consistent with
              <targetxml>ref:parallelcite@citetype</targetxml> evreywhere else.</xref>
        </li>
        <li>
          <xref href="case.decisionsummary.dita">2014-06-19 - case:decisionsummary id-CA02CC-12418:
            Example to handle HELD and DESPOTIF containing emph...."DB item # 222 </xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2014-06-18 - docinfo:assoc-links to doc:related-content id-CCCC-10284: Corrected minor
            typos in <sourcexml>lnlink[@service="QUERYLINK"]</sourcexml> instructions.</xref>
        </li>
        <li>
          <xref href="../../../common_newest/LxAdv_CA-ref.cite4thisresource-LxAdv-ref.parallelcite-doc.related-content.dita">2014-06-17 - ref:cite4thisresource with ref:parallelcite and doc:related-content
            id-CCCC-10497: Created.</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2014-06-13 - docinfo:assoc-links to doc:related-content id-CCCC-10284: Added
            instructions and an example for converting
              <sourcexml>lnlink[@service="QUERYLINK"]</sourcexml> to
              <targetxml>ref:lnlink</targetxml>.</xref>
        </li>
        <li>
          <xref href="../../../common_caselaw/Rosetta_refnum.refnumtype.UCN-LxAdv_ref.groupid.dita">2014-06-12 - refnum[@refnumtype="UCN"] - ref:groupid id-CCCC-12047: Created this
            instruction.</xref>
        </li>
        <li>
          <xref href="case.parallelcite.dita">2014-06-11 - case:parallelcite id-CA02CC-12428:
            Updated instruction and example to add attribute
              <targetxml>ref:parallelcite/@citetype="parallel"</targetxml> in target.</xref>
        </li>
        <li>
          <xref href="case.reportercite.dita">2014-06-11 - case:reportercite id-CA02CC-12432: remove
            "Full Text: " with and without the trailing space in case:reportercite DB item #
            1646</xref>
        </li>
        <li>
          <xref href="case.decisionsummary.dita">2014-06-10 - case:decisionsummary id-CA02CC-12418:
            Loosened instruction to convert <sourcexml>p/text</sourcexml> beginning with "HELD:"
            into <targetxml>casesum:disposition/p/text</targetxml>. Allow dash to end first
            sentence. Allow <sourcexml>emph</sourcexml> around HELD text. Allow space before colon.
            Allow French language version. Convert preceding and following space dash dash with a
            period. Add example.R4.5 Issue #1588</xref>
        </li>
        <li>
          <xref href="case.references.dita">2014-06-04 - case:references id-CA02CC-12431: Updates
            Canada-only instruction and examples for where <targetxml>@referencetype</targetxml>
            value generated based on table value. R4.5 Item #1587.</xref>
        </li>
        <li>
          <xref href="case.references.dita">2014-06-04 - case:references id-CA02CC-12431: Removed
            nested ref:relatedrefs.Db Item #214.</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_table-LxAdv-table.dita">2014-06-04 - table to
            table id-CCCC-10475: For completeness, added instructions for the following rarely
            occurring attributes of <sourcexml>table/tgroup/colspec</sourcexml>:
              <sourcexml>@align</sourcexml>, <sourcexml>@char</sourcexml>,
              <sourcexml>@charoff</sourcexml>, <sourcexml>@colsep</sourcexml>,
              <sourcexml>@id</sourcexml>, <sourcexml>@rowsep</sourcexml>,
              <sourcexml>@searchtype</sourcexml>, and <sourcexml>@xml:lang</sourcexml>. This is in
            response to various minor questions on message boards that have been asked and answered
            over the past two years. These instructions should not trigger changes to existing
            conversion programs, as the programs have already been changed in response to previous
            message board answers. These instructions have been added so this topic is up-to-date
            with respect to current conversion program behavior for these rarely occuring
            attributes.</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_footnote-LxAdv-footnote.dita">2014-06-02 -
            footnotegrp and footnote to footnotegrp and footnote id-CCCC-10322: Canada only. Added
            special rule to suppress indent from <sourcexml>footnote/fnbody/p[@indent]</sourcexml>.
            Applies immediately to all Canada streams. R4.5 Content Issue 1609.</xref>
        </li>
        <li>
          <xref href="../../../DITA-CAN/CA02-Case_Summaries/CA02CC_CASEDOC/case.dates.dita">2014-05-31 - case:dates id-CA02CC-12417: Explanation of invalid date..."DB item #
            206</xref>
        </li>
        <li>
          <xref href="../../../DITA-CAN/CA02-Case_Summaries/CA02CC_CASEDOC/case.dates.dita">2014-05-30 - case:dates id-CA02CC-12417: Explanation for ln.user-displayed=false or not
            present..."DB item # 213</xref>
        </li>
        <li>
          <xref href="../../../DITA-CAN/CA02-Case_Summaries/CA02CC_CASEDOC/case.decisionsummary.dita">2014-05-27 - case:decisionsummary id-CA02CC-12418: holding's of court / despotif..."DB
            item # 1602 </xref>
        </li>
        <li>
          <xref href="../../../DITA-CAN/CA02-Case_Summaries/CA02CC_CASEDOC/case.length.dita">2014-05-23 - case:length id-CA02CC-12427: Instructions to handle case:length with
            Approx attribute...Db issue#205</xref>
        </li>
        <li>
          <xref href="../../../DITA-CAN/CA02-Case_Summaries/CA02CC_CASEDOC/case.references.dita">2014-05-22 - case:references id-CA02CC-12431: Add instruction and two examples for
              <targetxml>@referencetype</targetxml> "consideredcases" or "legislation".R4.5 Item
            #1278.</xref>
        </li>
        <li>
          <xref href="../../../DITA-CAN/CA02-Case_Summaries/CA02CC_CASEDOC/case.reportercite.dita">2014-05-22 - case:reportercite id-CA02CC-12432: Clarify "Full text: " removal for both
            ref:cite4thisresource and ref:parallelcite.DB item # 1323</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_docinfo.doc-id-LxAdv-dcidentifier_lnmetaidentifier-scheme.dita">2014-05-21 - docinfo:doc-id to dc:identifier[@lnmeta:identifier-scheme] id-CCCC-10293:
            For CA05 Acts and Bills- Mapping in dc:identifier for act-no and chunk-no.. Db issue
            #1464 </xref>
        </li>
        <li>
          <xref href="../../../DITA-CAN/CA02-Case_Summaries/CA02CC_CASEDOC/case.parallelcite.dita">2014-05-09 - case:parallelcite id-CA02CC-12428: ref:parallelcite open close tags
            updatedDB item # 193</xref>
        </li>
        <li>
          <xref href="../../../DITA-CAN/CA02-Case_Summaries/CA02CC_CASEDOC/case.reportercite.dita">2014-04-28 - case:reportercite id-CA02CC-12432: Remove
              <targetxml>casedigest:body</targetxml> from the XPATH so "Full Text", etc, can be
            removed even when occuring in head.DB item # 1323</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2014-04-28 - docinfo:assoc-links to doc:related-content id-CCCC-10284: Clarified
            instructions regarding <sourcexml>link</sourcexml> elements and added an example (#4)
            illustrating the special <sourcexml>text/link</sourcexml> conversion. No mapping rules
            where changed or added.</xref>
        </li>
        <li>
          <xref href="../../../DITA-CAN/CA02-Case_Summaries/CA02CC_CASEDOC/case.courtcite.dita">2014-04-25 - case:courtcite id-CA02CC-12413: Courtcite mapping to
            ref:parallelcite</xref>
        </li>
        <li>
          <xref href="../../../DITA-CAN/CA02-Case_Summaries/CA02CC_CASEDOC/case.constituents.dita">2014-04-21 - case:constituents id-CA02CC-12411: Note regarding the clarification of
            removal of colons...."DB item # 179</xref>
        </li>
        <li>
          <xref href="../../../DITA-CAN/CA02-Case_Summaries/CA02CC_CASEDOC/case.references.dita">2014-04-21 - case:references id-CA02CC-12431: Note regarding the clarification of
            removal of colons...."DB item # 179</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2014-04-21 - docinfo:assoc-links to doc:related-content id-CCCC-10284: Added an
            instruction to handle <sourcexml>link</sourcexml> elements. These can potentially occur
            in any future UK data and will be present in stream UK21fl when those documents become
            available later in 2014.</xref>
        </li>
        <li>
          <xref href="../../../DITA-CAN/CA02-Case_Summaries/CA02CC_CASEDOC/case.length.dita">2014-04-18 - case:length id-CA02CC-12427: Added note and example for Canada content to
            add period (.) in the value of <targetxml>@unit</targetxml> when the contents of @unit
            are an abbreviation, R4.5 Content Issue #:1402. This change immediately applies to
            CA02-Case Summaries.</xref>
        </li>
        <li>
          <xref href="../../../DITA-CAN/CA02-Case_Summaries/CA02CC_CASEDOC/case.reportercite.dita">2014-04-18 - case:reportercite id-CA02CC-12432: ref:citation in headDB item #
            1152,1156</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_footnote-LxAdv-footnote.dita">2014-04-17 -
            footnotegrp and footnote to footnotegrp and footnote id-CCCC-10322: Added instruction
            for <sourcexml>footnotegrp</sourcexml> within <sourcexml>sigblock</sourcexml>. Specifies
              <targetxml>p/text</targetxml> wrapper for target
              <targetxml>sigblock/p/text/footnotegroup</targetxml>. Immediately affects UK12 but
            will apply to any stream if the use case occurs. Phase 6 UK discussion items 76 and
            88.</xref>
        </li>
        <li>
          <xref href="../../../DITA-CAN/CA02-Case_Summaries/CA02CC_CASEDOC/case.parallelcite.dita">2014-04-16 - case:parallelcite id-CA02CC-12428: ref:citation in headDB item #
            1152,1156</xref>
        </li>
        <li>
          <xref href="../../../DITA-CAN/CA02-Case_Summaries/CA02CC_CASEDOC/case.reportercite.dita">2014-04-15 - case:reportercite id-CA02CC-12432: Removed Trailing Comma in Case
            Cites...DB #item 1332</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_p-LxAdv-p.dita">2014-04-14 - p to p
            id-CCCC-10424: Removed Colons from Labels.. DB item #1255</xref>
        </li>
      </ul>
    </section>

    <section>
      <title>casedigest 7.6_PROD</title>
      <p>2014-04-11 <ul>
          <li>
            <xref href="../../../DITA-CAN/CA02-Case_Summaries/CA02CC_CASEDOC/case.constituents.dita">2014-04-09 - case:constituents: Removed Colons (:) from lables..."DB item #
              1255</xref>
          </li>
          <li>
            <xref href="../../../DITA-CAN/CA02-Case_Summaries/CA02CC_CASEDOC/case.decisionsummary.dita">2014-04-09 - case:decisionsummary: Removed double dashes at decisionsummary
              section..."DB item # 1343 </xref>
          </li>
          <li>
            <xref href="../../../DITA-CAN/CA02-Case_Summaries/CA02CC_CASEDOC/case.references.dita">2014-04-09 - case:references: Removed Colons (:) from lables..."DB item # 1255</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2014-04-03 - docinfo:assoc-links to doc:related-content: Illustrative changes.
              Examples modified. Mapping for <sourcexml>ci:cite</sourcexml> added to Example 3.
              Former Examples 4 and 5 removed to avoid confusion with special AU-NZ use case
              described in a separate module. R4.5 Content issue #1125, for AU-NZ, has prompted the
              changes for this general module.</xref>
          </li>
          <li>
            <xref href="../../../DITA-CAN/CA02-Case_Summaries/CA02CC_CASEDOC/case.reportercite.dita">2014-03-28 - case:reportercite: Remove "Full text: " and its language variants from
              the start of <targetxml>lnci:content</targetxml> in the body. R4.5 Item #1323.</xref>
          </li>
        </ul>
      </p>
    </section>
    <section>
      <title>casedigest 7.5_PROD</title>
      <p>2014-03-26 <ul>
          <li>
            <xref href="../../../DITA-CAN/CA02-Case_Summaries/CA02CC_CASEDOC/case.courtcode.dita">2014-03-26 - case:courtcode: Removed ambiguity caused by the note beginning "From now
              onwards..."DB item # 145</xref>
          </li>
          <li>
            <xref href="../../../DITA-CAN/CA02-Case_Summaries/CA02CC_CASEDOC/case.courtinfo.dita">2014-03-26 - case:courtinfo: Removed ambiguity caused by the note beginning "From now
              onwards..."DB item # 145</xref>
          </li>
          <li>
            <xref href="../../../DITA-CAN/CA02-Case_Summaries/CA02CC_CASEDOC/case.courtname.dita">2014-03-26 - case:courtname: Removed ambiguity caused by the note beginning "From now
              onwards..."DB item # 145</xref>
          </li>
          <li>
            <xref href="../../../DITA-CAN/CA02-Case_Summaries/CA02CC_CASEDOC/case.dates.dita">2014-03-26 - case:dates: Removed ambiguity caused by the note beginning "From now
              onwards..."DB item # 145</xref>
          </li>
          <li>
            <xref href="../../../DITA-CAN/CA02-Case_Summaries/CA02CC_CASEDOC/case.filenum.dita">2014-03-26 - case:filenum: Removed ambiguity caused by the note beginning "From now
              onwards..."DB item # 145</xref>
          </li>
          <li>
            <xref href="../../../DITA-CAN/CA02-Case_Summaries/CA02CC_CASEDOC/case.parallelcite.dita">2014-03-26 - case:parallelcite: Clarify that parallelcite will map to digest:body and
              still get the value "parallel".DB item # 145</xref>
          </li>
          <li>
            <xref href="../../../DITA-CAN/CA02-Case_Summaries/CA02CC_CASEDOC/case.references.dita">2014-03-25 - case:references: Change
                <targetxml>casedigest:head/ref:relatedrefs</targetxml> to
                <targetxml>casedigest:body/ref:relatedrefs</targetxml> per discussion in UX
              workshop. DB item # 1278</xref>
          </li>
          <li>
            <xref href="../../../DITA-CAN/CA02-Case_Summaries/CA02CC_CASEDOC/case.reportercite.dita">2014-03-25 - case:reportercite: Added clarification note for cites going into head
              versus body and fixed examples.DB item # 145</xref>
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
            <xref href="../../../common_newest/Rosetta_docinfo.lbu.juris-LxAdv-classify.classification_classscheme_docinfolbu-juris.dita">2014-01-19 - docinfo:lbu-juris to
              classify:classification[@classscheme="docinfo:lbu-juris"]: Added a special scenario
              for handling <sourcexml>docinfo:lbu-juris</sourcexml> along with input and output
              examples for CANADA CA02 contents ONLY.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_Elements-LxAdv-Empty_Elements.dita">2014-01-16 - Suppress each empty element unless otherwise stated: Added list of
              elements to suppress if empty.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_date-Chof-docinfo.load-date-LxAdv-dc.date_lnmeta.datetype_load-date-scheme.dita">2014-01-07 - docinfo:load-date/date to dc:date[@lnmeta:datetype="load-date"]: Added a
              note along with example which contains "00" value in <sourcexml>@day="00"</sourcexml>
              and <sourcexml>@month="00"</sourcexml> attributes encountered in CANADA
              contents.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_footnote-LxAdv-footnote.dita">2014-01-06 -
              footnotegrp and footnote to footnotegrp and footnote: Updated target example for
              applying the rule of "deleting extraneous instances of @morerows, @colsep and @rowsep"
              in sample documents.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_l-LxAdv-list.dita">2014-01-06 - l to list:
              Added mapping instruction for nested lists.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2013-12-30 -
              ci.cite to lnci.cite: Minor illustrative change. Added "(AU Journals/Newsitem)" to
              headings for last example to clarify that retention of
                <sourcexml>@type="cite4thisdoc"</sourcexml> is an exception for that content, as
              already described in narrative rules.</xref>
          </li>
        </ul>
      </p>
    </section>
    <section>
      <title>casedigest 7.5_PROD</title>
      <p>2014-01-19 <ul>
          <li><xref href="../../../common_newest/Rosetta_docinfo.lbu.juris-LxAdv-classify.classification_classscheme_docinfolbu-juris.dita">2014-01-19: Added a special scenario for handling
                <sourcexml>docinfo:lbu-juris</sourcexml> along with input and output examples for
                <b>CANADA CA02 contents ONLY</b>.</xref></li>
          <li><xref href="case.parallelcite.dita">2014-01-07: Added a note along with example for
              handling <sourcexml>case:parallelcite</sourcexml>, which contains only text without
              any child element.</xref></li>
          <li><xref href="../../../common_newest/Rosetta_date-Chof-docinfo.load-date-LxAdv-dc.date_lnmeta.datetype_load-date-scheme.dita">2014-01-07: Added a note along with example which contains "00" value in
                <sourcexml>@day="00"</sourcexml> and <sourcexml>@month="00"</sourcexml> attributes
              encountered in CANADA contents.</xref></li>
          <li><xref href="catchwordgrp.dita">2014-01-07: Added a note along with example for
              handling <sourcexml>catchwordgrp</sourcexml>, which contains a special scenario
                <sourcexml>heading/title</sourcexml>.</xref></li>
          <li><xref href="case.juris.dita">2014-01-07: Added a note along with example for handling
                <sourcexml>case:juris</sourcexml>, which contains country code "UK".</xref></li>
        </ul>
      </p>
    </section>
    <section>
      <title>casedigest 7.5_PROD</title>
      <p>2013-12-19 <ul>
          <li><xref href="../../../common_newest/Rosetta_table-LxAdv-table.dita">2013-12-19: Removed
              an obsolete note regarding visual styling of tables.</xref></li>
          <li><xref href="case.pubinfo.dita">2013-12-19: Instructions changed for handling
                <sourcexml>case:pubinfo</sourcexml>.</xref></li>
          <li><xref href="../../../common_newest/Rosetta_table-LxAdv-table.dita">2013-09-12: WebTeam
              #s 235116, 235130, 235126: Added instructions for deleting extraneous instances of
              @morerows, @colsep and @rowsep. These instructions apply immediately to all UK streams
              and also to AU18.</xref></li>
          <li><xref href="abbrvname.dita">2013-12-19: A note and instructions added for handling
                <sourcexml>case:courtinfo/abbrvname</sourcexml> along with
                <sourcexml>case:courtname</sourcexml>.</xref></li>
        </ul>
      </p>
    </section>
    <section>
      <title>casedigest 7.5_PROD</title>
      <p>2013-11-06 <ul>
          <li><xref href="../../../common_newest/Rosetta_docinfo.lbu.juris-LxAdv-classify.classification_classscheme_docinfolbu-juris.dita">2013-11-06 - Added instruction for handling Rosetta element
                <sourcexml>docinfo:lbu-juris</sourcexml>.</xref></li>
          <li><xref href="../../../common_newest/Rosetta_CAN_docinfo.custom-metafields-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta.meta.metaitem.dita">2013-11-06 - Updated note and target example for retaining "country" and "court" in
              target example.</xref></li>
          <li><xref href="case.reportercite.dita">2013-11-06 - Updated target example of Rosetta
              element <sourcexml>case:reportercite</sourcexml> as there was a typo.</xref></li>
          <li><xref href="Body.dita">2013-11-06 - Added a note for handling empty
                <targetxml>casedigest:body</targetxml> in body module of the CI.</xref></li>
        </ul>
      </p>
    </section>

    <section>
      <title>casedigest 7.5_PROD</title>
      <p>2013-08-21 <ul>
          <li>It is decided now, that element <targetxml>casedigest:caseinfo</targetxml> along with
            all its children, conversion will be placed within
              <targetxml>casedigest:head</targetxml> and not in
              <targetxml>casedigest:body</targetxml>. So like this
              <targetxml>casedigest:caseinfo</targetxml> will become child element of
              <targetxml>casedigest:head</targetxml>. <p>Below are the reflected conversion
              modules...</p>
            <ul>
              <li><xref href="case.info.dita">case.info</xref></li>
              <li><xref href="case.reportercite.dita">case:reportercite</xref></li>
              <li><xref href="case.casename.dita">case:casename</xref></li>
              <li><xref href="case.parallelcite.dita">case:parallelcite</xref></li>
              <li><xref href="case.juris.dita">case:juris</xref></li>
              <li><xref href="case.judges.dita">case:judges</xref></li>
              <li><xref href="refnum.dita">refnum</xref></li>
              <li><xref href="case.filenum.dita">case:filenum</xref></li>
              <li><xref href="case.dates.dita">case:dates</xref></li>
              <li><xref href="case.courtname.dita">case:courtname</xref></li>
              <li><xref href="case.courtinfo.dita">case:courtinfo</xref></li>
              <li><xref href="case.courtcode.dita">case:courtcode</xref></li>
              <li><xref href="case.courtcite.dita">case:courtcite</xref></li>
              <li><xref href="catchwordgrp.dita">catchwordgrp</xref></li>
              <li><xref href="abbrvname.dita">abbrvname</xref></li>
              <li><xref href="case.references.dita">case:references</xref></li>
            </ul>
          </li>
          <li>Added the common module <xref href="../../../common_newest/Rosetta_remotelink-self-inter-document-link-LxAdv-intra-document-link.dita"/>. </li>
          <li>
            <xref href="../../../common_newest/Rosetta_docinfo.lbu-meta-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta-scheme.dita">2013-08-12 - docinfo:lbu-meta to doc:legacy-metadata[@metadatasource="lbu-meta"]: We
              removed the docinfo:lbu-meta "include" list so now there is only a "drop" list.
              Anything not on the "drop" list should be passed through. Webteam 230557.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_docinfo.lbu-meta-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta-scheme.dita">2013-08-12 - docinfo:lbu-meta to doc:legacy-metadata[@metadatasource="lbu-meta"]: We
              removed the docinfo:lbu-meta "include" list so now there is only a "drop" list.
              Anything not on the "drop" list should be passed through. Webteam 230557.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_remotelink-self-inter-document-link-LxAdv-intra-document-link.dita">2013-08-12 - remotelink (self inter-document link) to ref:lnlink (intra-document
              link): Changed module heading from ref:crossreference to ref:lnlink. NO instructions
              are changed. WebTeam # 230229. Affects all streams.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_remotelink-self-inter-document-link-LxAdv-intra-document-link.dita">2013-08-12 - remotelink (self inter-document link) to ref:lnlink (intra-document
              link): Changed module heading from ref:crossreference to ref:lnlink. NO instructions
              are changed. WebTeam # 230229. Affects all streams.</xref>
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
            <xref href="../../../common_newest/Rosetta_date-Chof-docinfo.load-date-LxAdv-dc.date_lnmeta.datetype_load-date-scheme.dita">2013-08-07 - docinfo:load-date/date to dc:date[@lnmeta:datetype="load-date"]: Removed
              instructions for creating
                <targetxml>dc:date[@lnmeta:datetype="conversion-date"]</targetxml>.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_remotelink-self-inter-document-link-LxAdv-intra-document-link.dita">2013-08-07 - remotelink (self inter-document link) to ref:lnlink (intra-document
              link): Changed target to <targetxml>ref:lnlink</targetxml>; formerly
                <targetxml>ref:crossreference</targetxml>. Changed because the only supported markup
              for intradoc linking is <targetxml>ref:lnlink</targetxml>, as per Bency Thomas.
              WebTeam # 230229. Affects all streams.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_docinfo.lbu-meta-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta-scheme.dita">2013-08-02 - docinfo:lbu-meta to doc:legacy-metadata[@metadatasource="lbu-meta"]:
              Added <sourcexml>@name="selection_criteria_variant"</sourcexml> to the list of values
              in docinfo:metaitem/@name that should be retained. And added a example.</xref>
          </li>
        </ul>
      </p>
    </section>
    <section>
      <title>casedigest 7.4_PROD</title>
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
      <title>casedigest 5.13_PROD</title>
      <p>2013-02-19<ul>
          <li>Introduction topic - Added Information of new Schema Released for <b>casedigest
              5.13_PROD</b>.</li>
          <li>Body topic - Instruction and examples changed for handling
              <sourcexml>case:reportercite</sourcexml>.</li>
          <li>Body topic - Instruction and examples changed for handling
              <sourcexml>case:judgments</sourcexml> and all its children.</li>
          <li>Head Section - One more instructio for handling <sourcexml>classification</sourcexml>
            has been added to the CI.</li>
          <li>Metadata Markup - Instruction and example added for
              <sourcexml>docinfo:custom-metafield[@name="unhandled"]</sourcexml>.</li>
        </ul></p>
    </section>
    <section>
      <title>casedigest 5.12_PROD (Schema Release Date - 2013-01-11)</title>
      <p>2013-01-16<ul>
          <li>General Markup - Added more instructions in <targetxml>glp:note</targetxml> part of
            the General Markup Section, for handling of <sourcexml>text/glp:note</sourcexml> and
              <sourcexml>emph/glp:note</sourcexml>.</li>
          <li>Head Section - Added a note in instruction of <sourcexml>case:courtname</sourcexml>
            for converting <sourcexml>nl</sourcexml> to <targetxml>proc:nl</targetxml> during
            conversion.</li>
          <li>Head Section - Added a note and one more example of
              <sourcexml>case:casename/glp:note</sourcexml> in instruction of
              <sourcexml>case:casename</sourcexml>.</li>
          <li>Head Section - Expanded targeted XPATH of <sourcexml>case:courtcite</sourcexml> in
            instruction of <sourcexml>case:courtcite</sourcexml>.</li>
          <li>Head Section - Expanded targeted XPATH of <sourcexml>case:priorhist</sourcexml> in
            instruction of <sourcexml>case:priorhist</sourcexml>.</li>
          <li>Head Section - Added a note in instruction of <sourcexml>case:judges</sourcexml> for
            converting <sourcexml>nl</sourcexml> to <targetxml>proc:nl</targetxml> during
            conversion.</li>
          <li>Head Section - A note has been added in instruction of
              <sourcexml>case:parallelcite</sourcexml>, regarding reporter and parallel citations
            ordering.</li>
          <li>Head Section - A note has been added in instruction of
              <sourcexml>case:reportercite</sourcexml>, regarding reporter and parallel citations
            ordering.</li>
          <li>Head Section - Expanded targeted XPATH of <sourcexml>catchwordgrp</sourcexml> in
            instruction of <sourcexml>catchwordgrp</sourcexml>.</li>
          <li>General Markup - Added more instructions for handling
              <targetxml>l/@virtual-nesting</targetxml>.</li>
          <li>Metadata Markup - Instruction and example added for
              <sourcexml>docinfo:custom-metafield[@searchtype="CITED-COUNT"]</sourcexml>.</li>
          <li>Metadata Markup - Updated the information on handling the situation when
              <sourcexml>docinfo:dpsi[@id-string]</sourcexml> is absent with instructions to get the
            dpsi from
              <sourcexml>docinfo/docinfo:lbu-meta/docinfo:metaitem[@name="DPSI"]/@value</sourcexml>
            if possible. Added an example of CA content with the dpsi in
              <sourcexml>docinfo/docinfo:lbu-meta/docinfo:metaitem[@name="DPSI"]/@value</sourcexml>,
            in <sourcexml>docinfo:doc-id</sourcexml> part of the CI.</li>
          <li>Head Section - The instructions for <sourcexml>case:dates</sourcexml> have been
            updated with directions for populating the attribute
              <targetxml>decision:decisiondate/@normdate</targetxml>.</li>
          <li>Head Section - Added a note and one more example for handling multiple occurrences of
              <sourcexml>case:references</sourcexml> in Rosetta xml.</li>
          <li>Head Section - Updated note and example for handling <sourcexml>case:juris</sourcexml>
            regarding country codes, in CI.</li>
          <li>Head Section - Added a note and example for handling occurrences of
              <sourcexml>l/@virtual-nesting</sourcexml> in Rosetta xml.</li>
          <li>Head Section - One more example added for handling occurrences of
              <sourcexml>/case:priorhist/p/text/glp:note</sourcexml> in Rosetta xml.</li>
          <li>Head Section - Multiple occurrences of <sourcexml>ci:cite</sourcexml> within
              <sourcexml>case:courtcite</sourcexml> updated with example.</li>
          <li>Head Section - A note added regarding <sourcexml>prelim</sourcexml> tag, that if
              <sourcexml>prelim</sourcexml> element is found within Rosetta document, then
            conversion will kick the document out hence this is data error.</li>
          <li>Head Section - A note has been added in <sourcexml>case:pubinfo</sourcexml>
            instruction for kicking mentioned document out from conversion.</li>
          <li>Head Section - A note added in <sourcexml>case:parallelcite</sourcexml> part of CI,
            for handling of <sourcexml>nl</sourcexml> under <sourcexml>ci:content</sourcexml>.</li>
        </ul></p>
    </section>
    <section>
      <title>casedigest 5.6_PROD (Schema Release Date - 2012-11-09).</title>
      <p>2012-11-20<ul>
          <li>Added <targetxml>classify:classification</targetxml> as an optional child of
              <targetxml>person:bio.employment</targetxml>.</li>
          <li>Added <targetxml>casehist:casehist</targetxml> as an optional child of
              <targetxml>casedigest:body</targetxml>.</li>
          <li>Added <targetxml>casedigest:decisionresult</targetxml> as a child within
              <targetxml>casedigest:caseinfo</targetxml>.</li>
          <li>Added <targetxml>casedigest:actionparty</targetxml> as an optional child of
              <targetxml>casedigest:causeofaction</targetxml>.</li>
          <li>Added a new attribute <targetxml>@conversioncontext</targetxml> to
              <targetxml>casedigest:specialdamages</targetxml>.</li>
          <li>Added <targetxml>bodytext</targetxml> as an optional child of
              <targetxml>courtcase:representation</targetxml>.</li>
          <li>Added <targetxml>proc:nl</targetxml> as an optional child of
              <targetxml>jurisinfo:courtname</targetxml>.</li>
          <li>Added <targetxml>pgrp</targetxml> as an optional child of
              <targetxml>courtcase:counsel</targetxml>.</li>
          <li>Added <targetxml>proc:nl</targetxml> as an optional child of
              <targetxml>caseinfo:fullcasename</targetxml>.</li>
          <li>Added <targetxml>bodytext.elements</targetxml> as an optional child of
              <targetxml>casehist:summary</targetxml> and removed the <targetxml>p</targetxml> and
              <targetxml>list</targetxml> elements.</li>
          <li>Added <targetxml>inlinenote</targetxml> as an optional child of
              <targetxml>entry</targetxml>, <targetxml>text</targetxml>,
            <targetxml>emph</targetxml>, <targetxml>strike</targetxml>,
              <targetxml>inlinenote</targetxml>, <targetxml>verbatim</targetxml>,
              <targetxml>credit</targetxml>, <targetxml>defterm</targetxml>,
              <targetxml>h</targetxml>, <targetxml>desig</targetxml>,
              <targetxml>altdesig</targetxml>, <targetxml>textitem</targetxml>,
              <targetxml>byline</targetxml>, <targetxml>currencystatement</targetxml>,
              <targetxml>miscdate</targetxml>, <targetxml>ref:content</targetxml>,
              <targetxml>pubinfo:volume</targetxml>, <targetxml>pubinfo:issue</targetxml>,
              <targetxml>pubinfo:publicationname</targetxml>,
            <targetxml>pubinfo:pubunit</targetxml>, <targetxml>pubinfo:edition</targetxml>,
              <targetxml>pubinfo:aggregationname</targetxml>,
              <targetxml>pubinfo:publength</targetxml>, <targetxml>nitf:media-producer</targetxml>,
              <targetxml>person:affiliation</targetxml>,
            <targetxml>globalentity:content</targetxml>, <targetxml>legishist:billitem</targetxml>,
              <targetxml>legishist:reportitem</targetxml>,
              <targetxml>legishist:recorditem</targetxml>,
              <targetxml>legishist:actionsummary</targetxml> and
              <targetxml>legisinfo:statustext</targetxml>.</li>
          <li>General Markup - Added one more instruction(DITA file) for handling of
              <sourcexml>ci:content/nl</sourcexml>.</li>
          <li>Head Section - Added a note in instruction of <sourcexml>prelim</sourcexml> for
            ignoring the documents which contain <sourcexml>prelim</sourcexml> tag.</li>
          <li>Head Section - Added a note and one more example of
              <sourcexml>case:casename/glp:note</sourcexml> in instruction of
              <sourcexml>case:casename</sourcexml>.</li>
          <li>Head Section - Expanded targeted XPATH of <sourcexml>case:courtcite</sourcexml> in
            instruction of <sourcexml>case:courtcite</sourcexml>.</li>
          <li>Head Section - Expanded targeted XPATH of <sourcexml>case:pubinfo</sourcexml> in
            instruction of <sourcexml>case:pubinfo</sourcexml>.</li>
          <li>Head Section - Expanded targeted XPATH of <sourcexml>case:priorhist</sourcexml> in
            instruction of <sourcexml>case:priorhist</sourcexml>.</li>
          <li>Head Section - Added a note in instruction of <sourcexml>case:judges</sourcexml> for
            converting <sourcexml>nl</sourcexml> to <targetxml>proc:nl</targetxml> during
            conversion.</li>
          <li>Head Section - A note has been added in instruction of
              <sourcexml>case:parallelcite</sourcexml>, regarding reporter and parallel citations
            ordering.</li>
          <li>Head Section - A note has been added in instruction of
              <sourcexml>case:reportercite</sourcexml>, regarding reporter and parallel citations
            ordering.</li>
          <li>Head Section - Expanded targeted XPATH of <sourcexml>catchwordgrp</sourcexml> in
            instruction of <sourcexml>catchwordgrp</sourcexml>.</li>
        </ul></p>
    </section>
    <section>
      <title>First release</title>
      <p>2012-09-18</p>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA02-Case_Summaries\CA02CC_CASEDOC\Change-Log.dita  -->
	<xsl:message>Change-Log.xsl requires manual development!</xsl:message> 

</xsl:stylesheet>