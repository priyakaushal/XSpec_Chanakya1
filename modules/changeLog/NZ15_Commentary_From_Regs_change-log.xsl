<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
                xmlns:case="http://www.lexis-nexis.com/glp/case" 
                xmlns:ci="http://www.lexis-nexis.com/ci"
                xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo"
                xmlns:source_lnci="http://www.lexis-nexis.com/lnci" 
                xmlns:dc="http://purl.org/dc/elements/1.1/"
                xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" 
                version="2.0"
                exclude-result-prefixes="dita case ci docinfo">

  <dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/"
    id="Commentary_From_Regs-change-Log">
    <title>Change Log for Commentary From Regulation</title>
    <body>
      <section>
        <title>Regulation Schema 8.3 PROD</title>
        <p>
          <b>2016-08-22</b>
        </p>
        <ul>
          <li>
            <xref
              href="../../../Rosetta/common_newest/Rosetta_PAC_docinfo.doc-id-LxAdv-dcidentifier_lnmetaidentifier-scheme.dita"
              >2016-08-03 - docinfo:doc-id to dc:identifier[@lnmeta:identifier-scheme]
              id-CCCC-10550: Created the rule to, Check manifest file for DPSI value and create new
              element <targetxml>dc:metadata/dc:source[@lnmeta:sourcescheme]</targetxml>
            </xref>
          </li>
          <li>
            <xref
              href="../../../Rosetta/common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita"
              >2016-08-03 - remotelink to ref:crossreference id-CCCC-10465: Added Note about xml
              snippets that illustrate image handling. Note summarizes move from Apollo to Blobstore
              application. UK is first LBU to move to Blobstore.</xref>
          </li>
          <li>
            <xref
              href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita"
              >2016-07-29 - docinfo:assoc-links to doc:related-content id-CCCC-10284: Added Note
              about xml snippets that illustrate image handling. Note summarizes move from Apollo to
              Blobstore application. UK is first LBU to move to Blobstore.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_emph-LxAdv-emph.dita">2016-04-01 -
              emph to emph id-CCCC-10316: Added statement to clarify that children of emph should be
              processed.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_l-LxAdv-list.dita">2016-04-01 - l to
              list id-CCCC-10372: Added mapping instruction for handling h within listitem.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita"
              >2016-03-23 - ci.cite to lnci.cite id-CCCC-10268: Updated main instructions to clarify
              that descendants of ci:cite, and not just children, are to be processed.</xref>
          </li>
          <li>
            <xref
              href="../../../Rosetta/common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita"
              >2016-02-05 - remotelink to ref:crossreference id-CCCC-10465: Added note and example
              when <sourcexml>remotelink</sourcexml> is a child of <sourcexml>emph</sourcexml>.
              Applicable on NZ17CC, Webstar: 319232 and 318735.</xref>
          </li>
        </ul>
      </section>
      <section>
        <title>Regulation Schema 7.2 PROD</title>
        <p>
          <b>2012-08-12</b>
        </p>
        <ul>
          <li>
            <xref
              href="../../common_newest/Rosetta_docinfo.lbu-meta-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta-scheme.dita"
              >2013-08-12 - docinfo:lbu-meta to doc:legacy-metadata[@metadatasource="lbu-meta"]: We
              removed the docinfo:lbu-meta "include" list so now there is only a "drop" list.
              Anything not on the "drop" list should be passed through. Webteam 230557.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_docinfo-LxAdv-doc.metadata_doc.docinfo.dita"
              >2013-08-09 - docinfo to doc:metadata/doc:docinfo: Added instruction for creating
                <targetxml>dc:date[@lnmeta:datetype="conversion-date"]</targetxml>. Previously,
              "conversion-date" was created only if "load-date" was not present. Going forward,
              conversion should always create "conversion-date". This is not a retroactive change.
              It should be applied only to streams developed after Aug. 9 2013.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_XML_Character_Entities-LxAdv-Unicode.dita"
              >2013-08-08 - XML Character Entities to Unicode code points: This change does not
              represent a change to conversion but rather documentation of the existing
              behavior.</xref>
          </li>
          <li>
            <xref
              href="../../common_newest/Rosetta_date-Chof-docinfo.load-date-LxAdv-dc.date_lnmeta.datetype_load-date-scheme.dita"
              >2013-08-07 - docinfo:load-date/date to dc:date[@lnmeta:datetype="load-date"]: Removed
              instructions for creating
                <targetxml>dc:date[@lnmeta:datetype="conversion-date"]</targetxml>.</xref>
          </li>
          <li>
            <xref
              href="../../common_newest/Rosetta_docinfo.lbu-meta-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta-scheme.dita"
              >2013-08-02 - docinfo:lbu-meta to doc:legacy-metadata[@metadatasource="lbu-meta"]:
              Added <sourcexml>@name="selection_criteria_variant"</sourcexml> to the list of values
              in docinfo:metaitem/@name that should be retained. And added a example.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_docinfo.doc-heading-LxAdv-dc.title.dita"
              >2013-08-01 - docinfo:doc-heading to dc:title: For Canada Content streams: Added a
              note and examples, when <sourcexml>docinfo:doc-heading</sourcexml> contains
                <sourcexml>nl</sourcexml> as a child element.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_title-LxAdv-title.dita">2013-07-30 - title to
              title: Updated Instruction when <sourcexml>title</sourcexml> contains word "TITLE: "
              or "NAME: ".</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_docinfo.doc-heading-LxAdv-dc.title.dita"
              >2013-07-30 - docinfo:doc-heading to dc:title: Added Instruction when
                <sourcexml>docinfo:doc-heading</sourcexml> contains word "TITLE: " or NAME: .</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_docinfo-LxAdv-doc.metadata_doc.docinfo.dita"
              >2013-07-18 - docinfo to doc:metadata/doc:docinfo: Added
                <sourcexml>@excludefromalerts</sourcexml> as one of the
                <sourcexml>docinfo</sourcexml> attributes to carry through</xref>
          </li>
          <li>
            <xref
              href="../../common_newest/Rosetta_docinfo.doc-lang-and-doc-country-LxAdv-ROOT_xml.lang.dita"
              >2013-07-16 - docinfo:doc-lang and docinfo:doc-country to @xml:lang and @xml:ID:
              Instruction narrative edited for language; no changes to mappings, no impact to
              stylesheets.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_title-LxAdv-title.dita">2013-07-05 - title to
              title: Added Instruction when <sourcexml>title</sourcexml> contains word "TITLE:
              ".</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita"
              >2013-06-03 - remotelink to ref:crossreference: Updated the Target XML 2 by removing
              the <targetxml>@crossreferencetype</targetxml> for Canada example.</xref>
          </li>
          <li>
            <xref
              href="../../common_newest/Rosetta_docinfo.lbu-meta-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta-scheme.dita"
              >2013-05-31 - docinfo:lbu-meta to doc:legacy-metadata[@metadatasource="lbu-meta"]:
              Added "document-type" to the list of values in docinfo:metaitem/@name that should be
              retained.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_docinfo-LxAdv-doc.metadata_doc.docinfo.dita"
              >2013-05-16 - docinfo to doc:metadata/doc:docinfo: Fixed typo updating urn:contentitem
              to urn:contentItem</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita"
              >2013-05-08 - remotelink to ref:crossreference: Extended the list of allowable values
              for image handling.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2013-05-01 -
              ci.cite to lnci.cite: Removed special rule for
                <sourcexml>ci:cite/ci:content/remotelink</sourcexml> which required suppression of
                <sourcexml>ci:cite/ci:content</sourcexml> tags. The elements are now retained and
              convert according to common rules.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita"
              >2013-05-01 - remotelink to ref:crossreference: Removed instructions for section
              "Pre-Release 4.0" because according to latest Apollo markup, section "Release 4.0 and
              after" and section "Pre-Release 4.0" now have similar conversion markup.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita"
              >2013-05-01 - remotelink to ref:crossreference: "Instruction added for
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
            <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita"
              >2013-04-30 - remotelink to ref:crossreference: Updated target sample according to
              latest Apollo markup.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2013-04-24 -
              ci.cite to lnci.cite: Added a mapping for <sourcexml>ci:procphrase</sourcexml> to
                <sourcexml>lnci:procphrase</sourcexml>
            </xref>
          </li>
          <li>
            <xref
              href="../../common_newest/Rosetta_docinfo.doc-lang-and-doc-country-LxAdv-ROOT_xml.lang.dita"
              >2013-04-19 - docinfo:doc-lang and docinfo:doc-country to @xml:lang and @xml:ID: Added
              note about applicability of restrictions and required modifications for
                <targetxml>xml:id</targetxml> to other scenarios.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita"
              >2013-04-10 - remotelink to ref:crossreference: Added Source XML 7a: for link to URL,
              with non-URL text content because it was previously missing, only the target example
              was here.</xref>
          </li>
          <li>
            <xref
              href="../../common_newest/Rosetta_docinfo.lbu-meta-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta-scheme.dita"
              >2013-04-09 - docinfo:lbu-meta to doc:legacy-metadata[@metadatasource="lbu-meta"]:
              Added the instruction for handling
                <sourcexml>docinfo:metaitem[@name="QLDB"]</sourcexml>.</xref>
          </li>
          <li>
            <xref
              href="../../common_newest/Rosetta_docinfo.doc-id-LxAdv-dcidentifier_lnmetaidentifier-scheme.dita"
              >2013-03-20 - docinfo:doc-id to dc:identifier[@lnmeta:identifier-scheme]: Updated the
              information on handling the situation when
                <sourcexml>docinfo:dpsi[@id-string]</sourcexml> is absent with instructions to get
              the dpsi from
                <sourcexml>docinfo/docinfo:custom-metafields/docinfo:custom-metafield[@name="dpsi"]</sourcexml>.</xref>
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
            <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita"
              >2013-03-11 - remotelink to ref:crossreference: Instruction and example added on how
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
            <xref href="../../common_newest/Rosetta_heading-LxAdv-heading.dita">2013-03-06 - heading
              to heading: Removed instructions/rules for exceptional desig scenario and deprecated
              attribute <targetxml>@followstitle</targetxml>.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita"
              >2013-02-18 - remotelink to ref:crossreference: Created two sections, one for "Release
              4.0 and after" and another for "Pre-Release 4.0".</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2013-01-22 -
              ci.cite to lnci.cite: Instruction modified for the scenario
                <sourcexml>ci:cite/ci:content/remotelink</sourcexml> to indicate that the
                <sourcexml>ci:cite</sourcexml> and <sourcexml>ci:content</sourcexml> start-tags and
              end-tags (but not their content) are dropped.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_emph-LxAdv-emph.dita">2013-01-08 - emph to emph:
              Added note for handling <targetxml>emph/emph</targetxml> has the same
                <targetxml>@typestyle</targetxml> value.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2012-11-29 -
              ci.cite to lnci.cite: Updated instructions to drop all
              <sourcexml>@spanref</sourcexml>.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2012-09-18 -
              ci.cite to lnci.cite: Instruction and example added for handling of
                <sourcexml>ci:cite/@type="cite4thisdoc"</sourcexml> for AU Journals/Newsitem.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2012-09-11 -
              ci.cite to lnci.cite: Created.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_emph-LxAdv-emph.dita">2012-02-28 - emph to emph:
              Added instructions for handling of
                <sourcexml>case:judges/emph/@typestyle="smcaps"</sourcexml>.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_emph-LxAdv-emph.dita">2011-12-15 - emph to emph:
              Created.</xref>
          </li>
        </ul>
      </section>
      <section>
        <title>Regulation Schema 7.2 PROD</title>
        <p>
          <b>2012-08-12</b>
        </p>
        <ul>
          <li>
            <xref
              href="../../common_newest/Rosetta_docinfo.lbu-meta-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta-scheme.dita"
              >2013-08-12 - docinfo:lbu-meta to doc:legacy-metadata[@metadatasource="lbu-meta"]: We
              removed the docinfo:lbu-meta "include" list so now there is only a "drop" list.
              Anything not on the "drop" list should be passed through. Webteam 230557.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_docinfo-LxAdv-doc.metadata_doc.docinfo.dita"
              >2013-08-09 - docinfo to doc:metadata/doc:docinfo: Added instruction for creating
                <targetxml>dc:date[@lnmeta:datetype="conversion-date"]</targetxml>. Previously,
              "conversion-date" was created only if "load-date" was not present. Going forward,
              conversion should always create "conversion-date". This is not a retroactive change.
              It should be applied only to streams developed after Aug. 9 2013.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_XML_Character_Entities-LxAdv-Unicode.dita"
              >2013-08-08 - XML Character Entities to Unicode code points: This change does not
              represent a change to conversion but rather documentation of the existing
              behavior.</xref>
          </li>
          <li>
            <xref
              href="../../common_newest/Rosetta_date-Chof-docinfo.load-date-LxAdv-dc.date_lnmeta.datetype_load-date-scheme.dita"
              >2013-08-07 - docinfo:load-date/date to dc:date[@lnmeta:datetype="load-date"]: Removed
              instructions for creating
                <targetxml>dc:date[@lnmeta:datetype="conversion-date"]</targetxml>.</xref>
          </li>
          <li>
            <xref
              href="../../common_newest/Rosetta_docinfo.lbu-meta-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta-scheme.dita"
              >2013-08-02 - docinfo:lbu-meta to doc:legacy-metadata[@metadatasource="lbu-meta"]:
              Added <sourcexml>@name="selection_criteria_variant"</sourcexml> to the list of values
              in docinfo:metaitem/@name that should be retained. And added a example.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_docinfo.doc-heading-LxAdv-dc.title.dita"
              >2013-08-01 - docinfo:doc-heading to dc:title: For Canada Content streams: Added a
              note and examples, when <sourcexml>docinfo:doc-heading</sourcexml> contains
                <sourcexml>nl</sourcexml> as a child element.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_title-LxAdv-title.dita">2013-07-30 - title to
              title: Updated Instruction when <sourcexml>title</sourcexml> contains word "TITLE: "
              or "NAME: ".</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_docinfo.doc-heading-LxAdv-dc.title.dita"
              >2013-07-30 - docinfo:doc-heading to dc:title: Added Instruction when
                <sourcexml>docinfo:doc-heading</sourcexml> contains word "TITLE: " or NAME: .</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_docinfo-LxAdv-doc.metadata_doc.docinfo.dita"
              >2013-07-18 - docinfo to doc:metadata/doc:docinfo: Added
                <sourcexml>@excludefromalerts</sourcexml> as one of the
                <sourcexml>docinfo</sourcexml> attributes to carry through</xref>
          </li>
          <li>
            <xref
              href="../../common_newest/Rosetta_docinfo.doc-lang-and-doc-country-LxAdv-ROOT_xml.lang.dita"
              >2013-07-16 - docinfo:doc-lang and docinfo:doc-country to @xml:lang and @xml:ID:
              Instruction narrative edited for language; no changes to mappings, no impact to
              stylesheets.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_title-LxAdv-title.dita">2013-07-05 - title to
              title: Added Instruction when <sourcexml>title</sourcexml> contains word "TITLE:
              ".</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita"
              >2013-06-03 - remotelink to ref:crossreference: Updated the Target XML 2 by removing
              the <targetxml>@crossreferencetype</targetxml> for Canada example.</xref>
          </li>
          <li>
            <xref
              href="../../common_newest/Rosetta_docinfo.lbu-meta-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta-scheme.dita"
              >2013-05-31 - docinfo:lbu-meta to doc:legacy-metadata[@metadatasource="lbu-meta"]:
              Added "document-type" to the list of values in docinfo:metaitem/@name that should be
              retained.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_docinfo-LxAdv-doc.metadata_doc.docinfo.dita"
              >2013-05-16 - docinfo to doc:metadata/doc:docinfo: Fixed typo updating urn:contentitem
              to urn:contentItem</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita"
              >2013-05-08 - remotelink to ref:crossreference: Extended the list of allowable values
              for image handling.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2013-05-01 -
              ci.cite to lnci.cite: Removed special rule for
                <sourcexml>ci:cite/ci:content/remotelink</sourcexml> which required suppression of
                <sourcexml>ci:cite/ci:content</sourcexml> tags. The elements are now retained and
              convert according to common rules.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita"
              >2013-05-01 - remotelink to ref:crossreference: Removed instructions for section
              "Pre-Release 4.0" because according to latest Apollo markup, section "Release 4.0 and
              after" and section "Pre-Release 4.0" now have similar conversion markup.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita"
              >2013-05-01 - remotelink to ref:crossreference: "Instruction added for
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
            <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita"
              >2013-04-30 - remotelink to ref:crossreference: Updated target sample according to
              latest Apollo markup.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2013-04-24 -
              ci.cite to lnci.cite: Added a mapping for <sourcexml>ci:procphrase</sourcexml> to
                <sourcexml>lnci:procphrase</sourcexml>
            </xref>
          </li>
          <li>
            <xref
              href="../../common_newest/Rosetta_docinfo.doc-lang-and-doc-country-LxAdv-ROOT_xml.lang.dita"
              >2013-04-19 - docinfo:doc-lang and docinfo:doc-country to @xml:lang and @xml:ID: Added
              note about applicability of restrictions and required modifications for
                <targetxml>xml:id</targetxml> to other scenarios.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita"
              >2013-04-10 - remotelink to ref:crossreference: Added Source XML 7a: for link to URL,
              with non-URL text content because it was previously missing, only the target example
              was here.</xref>
          </li>
          <li>
            <xref
              href="../../common_newest/Rosetta_docinfo.lbu-meta-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta-scheme.dita"
              >2013-04-09 - docinfo:lbu-meta to doc:legacy-metadata[@metadatasource="lbu-meta"]:
              Added the instruction for handling
                <sourcexml>docinfo:metaitem[@name="QLDB"]</sourcexml>.</xref>
          </li>
          <li>
            <xref
              href="../../common_newest/Rosetta_docinfo.doc-id-LxAdv-dcidentifier_lnmetaidentifier-scheme.dita"
              >2013-03-20 - docinfo:doc-id to dc:identifier[@lnmeta:identifier-scheme]: Updated the
              information on handling the situation when
                <sourcexml>docinfo:dpsi[@id-string]</sourcexml> is absent with instructions to get
              the dpsi from
                <sourcexml>docinfo/docinfo:custom-metafields/docinfo:custom-metafield[@name="dpsi"]</sourcexml>.</xref>
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
            <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita"
              >2013-03-11 - remotelink to ref:crossreference: Instruction and example added on how
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
            <xref href="../../common_newest/Rosetta_heading-LxAdv-heading.dita">2013-03-06 - heading
              to heading: Removed instructions/rules for exceptional desig scenario and deprecated
              attribute <targetxml>@followstitle</targetxml>.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita"
              >2013-02-18 - remotelink to ref:crossreference: Created two sections, one for "Release
              4.0 and after" and another for "Pre-Release 4.0".</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2013-01-22 -
              ci.cite to lnci.cite: Instruction modified for the scenario
                <sourcexml>ci:cite/ci:content/remotelink</sourcexml> to indicate that the
                <sourcexml>ci:cite</sourcexml> and <sourcexml>ci:content</sourcexml> start-tags and
              end-tags (but not their content) are dropped.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_emph-LxAdv-emph.dita">2013-01-08 - emph to emph:
              Added note for handling <targetxml>emph/emph</targetxml> has the same
                <targetxml>@typestyle</targetxml> value.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2012-11-29 -
              ci.cite to lnci.cite: Updated instructions to drop all
              <sourcexml>@spanref</sourcexml>.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2012-09-18 -
              ci.cite to lnci.cite: Instruction and example added for handling of
                <sourcexml>ci:cite/@type="cite4thisdoc"</sourcexml> for AU Journals/Newsitem.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2012-09-11 -
              ci.cite to lnci.cite: Created.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_emph-LxAdv-emph.dita">2012-02-28 - emph to emph:
              Added instructions for handling of
                <sourcexml>case:judges/emph/@typestyle="smcaps"</sourcexml>.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_emph-LxAdv-emph.dita">2011-12-15 - emph to emph:
              Created.</xref>
          </li>
        </ul>
      </section>
      <section>
        <title>Regulation Schema 7.1 PROD</title>
        <p>
          <b>2012-08-02</b>
        </p>
        <ul>
          <li>Added instruction and example for <sourcexml>docinfo:metaitem/@name
              ="selection_criteria_variant"</sourcexml>. This change was made to resolve discussion
            board issue.</li>
          <li>
            <xref
              href="../../common_newest/Rosetta_docinfo.lbu-meta-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta-scheme.dita"
              >2013-08-02 - docinfo:lbu-meta to doc:legacy-metadata[@metadatasource="lbu-meta"]:
              Added <sourcexml>@name="selection_criteria_variant"</sourcexml> to the list of values
              in docinfo:metaitem/@name that should be retained. And added a example.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_docinfo.doc-heading-LxAdv-dc.title.dita"
              >2013-08-01 - docinfo:doc-heading to dc:title: Added a note and examples, when
                <sourcexml>docinfo:doc-heading</sourcexml> contains child element
                <sourcexml>nl</sourcexml>.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_title-LxAdv-title.dita">2013-07-30 - title to
              title: Updated Instruction when <sourcexml>title</sourcexml> contains word "TITLE: "
              or "NAME: ".</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_docinfo.doc-heading-LxAdv-dc.title.dita"
              >2013-07-30 - docinfo:doc-heading to dc:title: Added Instruction when
                <sourcexml>docinfo:doc-heading</sourcexml> contains word "TITLE: " or NAME: .</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_docinfo-LxAdv-doc.metadata_doc.docinfo.dita"
              >2013-07-18 - docinfo to doc:metadata/doc:docinfo: Added
                <sourcexml>@excludefromalerts</sourcexml> as one of the
                <sourcexml>docinfo</sourcexml> attributes to carry through</xref>
          </li>
          <li>
            <xref
              href="../../common_newest/Rosetta_docinfo.doc-lang-and-doc-country-LxAdv-ROOT_xml.lang.dita"
              >2013-07-16 - docinfo:doc-lang and docinfo:doc-country to @xml:lang and @xml:ID:
              Instruction narrative edited for language; no changes to mappings, no impact to
              stylesheets.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_title-LxAdv-title.dita">2013-07-05 - title to
              title: Added Instruction when <sourcexml>title</sourcexml> contains word "TITLE:
              ".</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita"
              >2013-06-03 - remotelink to ref:crossreference: Updated the Target XML 2 by removing
              the <targetxml>@crossreferencetype</targetxml> for Canada example.</xref>
          </li>
          <li>
            <xref
              href="../../common_newest/Rosetta_docinfo.lbu-meta-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta-scheme.dita"
              >2013-05-31 - docinfo:lbu-meta to doc:legacy-metadata[@metadatasource="lbu-meta"]:
              Added "document-type" to the list of values in docinfo:metaitem/@name that should be
              retained.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_docinfo-LxAdv-doc.metadata_doc.docinfo.dita"
              >2013-05-16 - docinfo to doc:metadata/doc:docinfo: Fixed typo updating urn:contentitem
              to urn:contentItem</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita"
              >2013-05-08 - remotelink to ref:crossreference: Extended the list of allowable values
              for image handling.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2013-05-01 -
              ci.cite to lnci.cite: Removed special rule for
                <sourcexml>ci:cite/ci:content/remotelink</sourcexml> which required suppression of
                <sourcexml>ci:cite/ci:content</sourcexml> tags. The elements are now retained and
              convert according to common rules.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita"
              >2013-05-01 - remotelink to ref:crossreference: Removed instructions for section
              "Pre-Release 4.0" because according to latest Apollo markup, section "Release 4.0 and
              after" and section "Pre-Release 4.0" now have similar conversion markup.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita"
              >2013-05-01 - remotelink to ref:crossreference: "Instruction added for
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
            <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita"
              >2013-04-30 - remotelink to ref:crossreference: Updated target sample according to
              latest Apollo markup.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2013-04-24 -
              ci.cite to lnci.cite: Added a mapping for <sourcexml>ci:procphrase</sourcexml> to
                <sourcexml>lnci:procphrase</sourcexml>
            </xref>
          </li>
          <li>
            <xref
              href="../../common_newest/Rosetta_docinfo.doc-lang-and-doc-country-LxAdv-ROOT_xml.lang.dita"
              >2013-04-19 - docinfo:doc-lang and docinfo:doc-country to @xml:lang and @xml:ID: Added
              note about applicability of restrictions and required modifications for
                <targetxml>xml:id</targetxml> to other scenarios.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita"
              >2013-04-10 - remotelink to ref:crossreference: Added Source XML 7a: for link to URL,
              with non-URL text content because it was previously missing, only the target example
              was here.</xref>
          </li>
          <li>
            <xref
              href="../../common_newest/Rosetta_docinfo.lbu-meta-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta-scheme.dita"
              >2013-04-09 - docinfo:lbu-meta to doc:legacy-metadata[@metadatasource="lbu-meta"]:
              Added the instruction for handling
                <sourcexml>docinfo:metaitem[@name="QLDB"]</sourcexml>.</xref>
          </li>
          <li>
            <xref
              href="../../common_newest/Rosetta_docinfo.doc-id-LxAdv-dcidentifier_lnmetaidentifier-scheme.dita"
              >2013-03-20 - docinfo:doc-id to dc:identifier[@lnmeta:identifier-scheme]: Updated the
              information on handling the situation when
                <sourcexml>docinfo:dpsi[@id-string]</sourcexml> is absent with instructions to get
              the dpsi from
                <sourcexml>docinfo/docinfo:custom-metafields/docinfo:custom-metafield[@name="dpsi"]</sourcexml>.</xref>
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
            <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita"
              >2013-03-11 - remotelink to ref:crossreference: Instruction and example added on how
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
            <xref href="../../common_newest/Rosetta_heading-LxAdv-heading.dita">2013-03-06 - heading
              to heading: Removed instructions/rules for exceptional desig scenario and deprecated
              attribute <targetxml>@followstitle</targetxml>.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita"
              >2013-02-18 - remotelink to ref:crossreference: Created two sections, one for "Release
              4.0 and after" and another for "Pre-Release 4.0".</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2013-01-22 -
              ci.cite to lnci.cite: Instruction modified for the scenario
                <sourcexml>ci:cite/ci:content/remotelink</sourcexml> to indicate that the
                <sourcexml>ci:cite</sourcexml> and <sourcexml>ci:content</sourcexml> start-tags and
              end-tags (but not their content) are dropped.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_emph-LxAdv-emph.dita">2013-01-08 - emph to emph:
              Added note for handling <targetxml>emph/emph</targetxml> has the same
                <targetxml>@typestyle</targetxml> value.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2012-11-29 -
              ci.cite to lnci.cite: Updated instructions to drop all
              <sourcexml>@spanref</sourcexml>.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2012-09-18 -
              ci.cite to lnci.cite: Instruction and example added for handling of
                <sourcexml>ci:cite/@type="cite4thisdoc"</sourcexml> for AU Journals/Newsitem.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2012-09-11 -
              ci.cite to lnci.cite: Created.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_emph-LxAdv-emph.dita">2012-02-28 - emph to emph:
              Added instructions for handling of
                <sourcexml>case:judges/emph/@typestyle="smcaps"</sourcexml>.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_emph-LxAdv-emph.dita">2011-12-15 - emph to emph:
              Created.</xref>
          </li>
        </ul>
      </section>
      <section>
        <title>Regulation Schema 7.0 PROD</title>
        <p>
          <b>2012-06-24</b>
        </p>
        <ul>
          <li>
            <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita"
              >2013-06-03 - remotelink to ref:crossreference: Updated the Target XML 2 by removing
              the <targetxml>@crossreferencetype</targetxml> for Canada example.</xref>
          </li>
          <li>
            <xref
              href="../../common_newest/Rosetta_docinfo.lbu-meta-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta-scheme.dita"
              >2013-05-31 - docinfo:lbu-meta to doc:legacy-metadata[@metadatasource="lbu-meta"]:
              Added "document-type" to the list of values in docinfo:metaitem/@name that should be
              retained.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_docinfo-LxAdv-doc.metadata_doc.docinfo.dita"
              >2013-05-16 - docinfo to doc:metadata/doc:docinfo: Fixed typo updating urn:contentitem
              to urn:contentItem</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita"
              >2013-05-08 - remotelink to ref:crossreference: Extended the list of allowable values
              for image handling.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2013-05-01 -
              ci.cite to lnci.cite: Removed special rule for
                <sourcexml>ci:cite/ci:content/remotelink</sourcexml> which required suppression of
                <sourcexml>ci:cite/ci:content</sourcexml> tags. The elements are now retained and
              convert according to common rules.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita"
              >2013-05-01 - remotelink to ref:crossreference: Removed instructions for section
              "Pre-Release 4.0" because according to latest Apollo markup, section "Release 4.0 and
              after" and section "Pre-Release 4.0" now have similar conversion markup.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita"
              >2013-05-01 - remotelink to ref:crossreference: "Instruction added for
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
            <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita"
              >2013-04-30 - remotelink to ref:crossreference: Updated target sample according to
              latest Apollo markup.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2013-04-24 -
              ci.cite to lnci.cite: Added a mapping for <sourcexml>ci:procphrase</sourcexml> to
                <sourcexml>lnci:procphrase</sourcexml>
            </xref>
          </li>
          <li>
            <xref
              href="../../common_newest/Rosetta_docinfo.doc-lang-and-doc-country-LxAdv-ROOT_xml.lang.dita"
              >2013-04-19 - docinfo:doc-lang and docinfo:doc-country to @xml:lang and @xml:ID: Added
              note about applicability of restrictions and required modifications for
                <targetxml>xml:id</targetxml> to other scenarios.</xref>
          </li>
          <li>
            <xref
              href="../../common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita"
              >2013-04-12 - docinfo:assoc-links to doc:related-content: This module was changed from
              UK specific to applicable to all LBUs</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_levelinfo_classification-LxAdv-SUPPRESS.dita"
              >2013-04-12 - levelinfo/classification @ln.user-displayed="false"/classitem
              @ln.user-displayed="false"/classitem-identifier/classname is SUPPRESSED: Temporary
              Note on Suppression inserted from Andrew Martin</xref>
          </li>
          <li>
            <xref
              href="../../common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita"
              >2013-04-10 - docinfo:assoc-links to doc:related-content: An example for related
              content Source and Target XML 4</xref>
          </li>
          <li>
            <xref
              href="../../common_newest/Rosetta_docinfo.authorattribution-LxAdv-dc.contributor.dita"
              >2013-04-10 - docinfo:authorattribution to dc:contributor: Created</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_docinfo.overview-LxAdv-docinfo.overview.dita"
              >2013-04-10 - docinfo:overview to doc:overview: Created</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita"
              >2013-04-10 - remotelink to ref:crossreference: Added Source XML 7a: for link to URL,
              with non-URL text content because it was previously missing, only the target example
              was here.</xref>
          </li>
          <li>
            <xref
              href="../../common_newest/Rosetta_docinfo.currencystatement-LxAdv-currencystatement.dita"
              >2013-04-09 - docinfo:currencystatement to doc:docinfo/currencystatement:
              Created</xref>
          </li>
          <li>
            <xref
              href="../../common_newest/Rosetta_docinfo.lbu-meta-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta-scheme.dita"
              >2013-04-09 - docinfo:lbu-meta to doc:legacy-metadata[@metadatasource="lbu-meta"]:
              Added the instruction for handling
                <sourcexml>docinfo:metaitem[@name="QLDB"]</sourcexml>.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_Elements-LxAdv-Empty_Elements.dita">2013-03-28 -
              Suppress empty elements unless otherwise stated: Created.</xref>
          </li>
          <li>
            <xref
              href="../../common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita"
              >2013-03-28 - docinfo:assoc-links to doc:related-content: Added rules for
                <sourcexml>docinfo:assoc-links-grp</sourcexml> and for child
                <sourcexml>text</sourcexml>.</xref>
          </li>
          <li>
            <xref
              href="../../common_newest/Rosetta_docinfo.doc-id-LxAdv-dcidentifier_lnmetaidentifier-scheme.dita"
              >2013-03-20 - docinfo:doc-id to dc:identifier[@lnmeta:identifier-scheme]: Updated the
              information on handling the situation when
                <sourcexml>docinfo:dpsi[@id-string]</sourcexml> is absent with instructions to get
              the dpsi from
                <sourcexml>docinfo/docinfo:custom-metafields/docinfo:custom-metafield[@name="dpsi"]</sourcexml>.</xref>
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
            <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita"
              >2013-03-11 - remotelink to ref:crossreference: Instruction and example added on how
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
            <xref href="../../common_newest/Rosetta_heading-LxAdv-heading.dita">2013-03-06 - heading
              to heading: Removed instructions/rules for exceptional desig scenario and deprecated
              attribute <targetxml>@followstitle</targetxml>.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita"
              >2013-02-18 - remotelink to ref:crossreference: Created two sections, one for "Release
              4.0 and after" and another for "Pre-Release 4.0".</xref>
          </li>
          <li>
            <xref
              href="../../common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita"
              >2013-01-22 - docinfo:assoc-links to doc:related-content: Added mapping instruction
              for <sourcexml>docinfo:assoc-links/remotelink @href</sourcexml>.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2013-01-22 -
              ci.cite to lnci.cite: Instruction modified for the scenario
                <sourcexml>ci:cite/ci:content/remotelink</sourcexml> to indicate that the
                <sourcexml>ci:cite</sourcexml> and <sourcexml>ci:content</sourcexml> start-tags and
              end-tags (but not their content) are dropped.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_emph-LxAdv-emph.dita">2013-01-08 - emph to emph:
              Added note for handling <targetxml>emph/emph</targetxml> has the same
                <targetxml>@typestyle</targetxml> value.</xref>
          </li>
          <li>
            <xref
              href="../../common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita"
              >2012-12-05 - docinfo:assoc-links to doc:related-content: Example added for Canada
              content stream.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2012-11-29 -
              ci.cite to lnci.cite: Updated instructions to drop all
              <sourcexml>@spanref</sourcexml>.</xref>
          </li>
          <li>
            <xref
              href="../../common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita"
              >2012-10-15 - docinfo:assoc-links to doc:related-content: Made some Kraken related
              changes.</xref>
          </li>
          <li>
            <xref
              href="../../common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita"
              >2012-10-08 - docinfo:assoc-links to doc:related-content: Created.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2012-09-18 -
              ci.cite to lnci.cite: Instruction and example added for handling of
                <sourcexml>ci:cite/@type="cite4thisdoc"</sourcexml> for AU Journals/Newsitem.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2012-09-11 -
              ci.cite to lnci.cite: Created.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_emph-LxAdv-emph.dita">2012-02-28 - emph to emph:
              Added instructions for handling of
                <sourcexml>case:judges/emph/@typestyle="smcaps"</sourcexml>.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_emph-LxAdv-emph.dita">2011-12-15 - emph to emph:
              Created.</xref>
          </li>
        </ul>
      </section>
      <section>
        <title>Regulation Schema 6.2_PROD</title>
        <p>
          <b>2012-05-13</b>
          <ul>
            <li>
              <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita"
                >2013-05-08 - remotelink to ref:crossreference: Extended the list of allowable
                values for image handling.</xref>
            </li>
            <li>
              <xref href="../../common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2013-05-01 -
                ci.cite to lnci.cite: Removed special rule for
                  <sourcexml>ci:cite/ci:content/remotelink</sourcexml> which required suppression of
                  <sourcexml>ci:cite/ci:content</sourcexml> tags. The elements are now retained and
                convert according to common rules.</xref>
            </li>
            <li>
              <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita"
                >2013-05-01 - remotelink to ref:crossreference: Removed instructions for section
                "Pre-Release 4.0" because according to latest Apollo markup, section "Release 4.0
                and after" and section "Pre-Release 4.0" now have similar conversion markup.</xref>
            </li>
            <li>
              <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita"
                >2013-05-01 - remotelink to ref:crossreference: "Instruction added for
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
              <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita"
                >2013-04-30 - remotelink to ref:crossreference: Updated target sample according to
                latest Apollo markup.</xref>
            </li>
            <li>
              <xref href="../../common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2013-04-24 -
                ci.cite to lnci.cite: Added a mapping for <sourcexml>ci:procphrase</sourcexml> to
                  <sourcexml>lnci:procphrase</sourcexml>
              </xref>
            </li>
            <li>
              <xref
                href="../../common_newest/Rosetta_docinfo.doc-lang-and-doc-country-LxAdv-ROOT_xml.lang.dita"
                >2013-04-19 - docinfo:doc-lang and docinfo:doc-country to @xml:lang and @xml:ID:
                Added note about applicability of restrictions and required modifications for
                  <targetxml>xml:id</targetxml> to other scenarios.</xref>
            </li>
            <li>
              <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita"
                >2013-04-10 - remotelink to ref:crossreference: Added Source XML 7a: for link to
                URL, with non-URL text content because it was previously missing, only the target
                example was here.</xref>
            </li>
            <li>
              <xref
                href="../../common_newest/Rosetta_docinfo.lbu-meta-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta-scheme.dita"
                >2013-04-09 - docinfo:lbu-meta to doc:legacy-metadata[@metadatasource="lbu-meta"]:
                Added the instruction for handling
                  <sourcexml>docinfo:metaitem[@name="QLDB"]</sourcexml>.</xref>
            </li>
            <li>
              <xref
                href="../../common_newest/Rosetta_docinfo.doc-id-LxAdv-dcidentifier_lnmetaidentifier-scheme.dita"
                >2013-03-20 - docinfo:doc-id to dc:identifier[@lnmeta:identifier-scheme]: Updated
                the information on handling the situation when
                  <sourcexml>docinfo:dpsi[@id-string]</sourcexml> is absent with instructions to get
                the dpsi from
                  <sourcexml>docinfo/docinfo:custom-metafields/docinfo:custom-metafield[@name="dpsi"]</sourcexml>.</xref>
            </li>
            <li>
              <xref href="../../common_newest/Rosetta_p-LxAdv-p.dita">2013-03-14 - p to p: Add
                instruction and example <sourcexml>p/@style</sourcexml>.</xref>
            </li>
            <li>
              <xref href="../../common_newest/Rosetta_pgrp-LxAdv-pgrp.dita">2013-03-14 - pgrp to
                pgrp: Add instruction and example <sourcexml>pgrp/@id</sourcexml>.</xref>
            </li>
            <li>
              <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita"
                >2013-03-11 - remotelink to ref:crossreference: Instruction and example added on how
                to handle <targetxml>ref:marker </targetxml> if it is in
                  <targetxml>ref:lnlink@service=”URL”</targetxml>and the
                  <targetxml>ref:key-value@value</targetxml> starts-with (.,
                'http://www.lexisnexis.com/au/legal/api')</xref>
            </li>
            <li>
              <xref href="../../common_newest/Rosetta_date-LxAdv-date.dita">2013-03-08 - date to
                date: Added instruction for @normdate attribute that falls on various NL date
                elements</xref>
            </li>
            <li>
              <xref href="../../common_newest/Rosetta_heading-LxAdv-heading.dita">2013-03-06 -
                heading to heading: Removed instructions/rules for exceptional desig scenario and
                deprecated attribute <targetxml>@followstitle</targetxml>.</xref>
            </li>
            <li>
              <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita"
                >2013-02-18 - remotelink to ref:crossreference: Created two sections, one for
                "Release 4.0 and after" and another for "Pre-Release 4.0".</xref>
            </li>
            <li>
              <xref href="../../common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2013-01-22 -
                ci.cite to lnci.cite: Instruction modified for the scenario
                  <sourcexml>ci:cite/ci:content/remotelink</sourcexml> to indicate that the
                  <sourcexml>ci:cite</sourcexml> and <sourcexml>ci:content</sourcexml> start-tags
                and end-tags (but not their content) are dropped.</xref>
            </li>
            <li>
              <xref href="../../common_newest/Rosetta_emph-LxAdv-emph.dita">2013-01-08 - emph to
                emph: Added note for handling <targetxml>emph/emph</targetxml> has the same
                  <targetxml>@typestyle</targetxml> value.</xref>
            </li>
            <li>
              <xref href="../../common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2012-11-29 -
                ci.cite to lnci.cite: Updated instructions to drop all
                  <sourcexml>@spanref</sourcexml>.</xref>
            </li>
            <li>
              <xref href="../../common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2012-09-18 -
                ci.cite to lnci.cite: Instruction and example added for handling of
                  <sourcexml>ci:cite/@type="cite4thisdoc"</sourcexml> for AU
                Journals/Newsitem.</xref>
            </li>
            <li>
              <xref href="../../common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2012-09-11 -
                ci.cite to lnci.cite: Created.</xref>
            </li>
            <li>
              <xref href="../../common_newest/Rosetta_emph-LxAdv-emph.dita">2012-02-28 - emph to
                emph: Added instructions for handling of
                  <sourcexml>case:judges/emph/@typestyle="smcaps"</sourcexml>.</xref>
            </li>
            <li>
              <xref href="../../common_newest/Rosetta_emph-LxAdv-emph.dita">2011-12-15 - emph to
                emph: Created.</xref>
            </li>
          </ul>
        </p>
      </section>
      <section>
        <title>Regulation Schema 4.14_PROD</title>
        <p>
          <b>2012-12-27</b>
          <ul>
            <li>General Markup: Instruction and Example added for handling of
                <sourcexml>heading[@ln.user-displayed="false"]/title/refpt</sourcexml>.</li>
          </ul>
        </p>
      </section>
      <section>
        <title>Regulation Schema 4.14_PROD</title>
        <p>
          <b>2012-12-13</b>
          <ul>
            <li>Instruction update for <sourcexml>refpt/@id</sourcexml> start with integer.</li>
          </ul>
        </p>
      </section>
      <section>
        <title>Regulation Schema 4.11_PROD</title>
        <p>
          <b>2012-09-28</b>
          <ul>
            <li>Updated the instruction for modularization.</li>
          </ul>
        </p>
      </section>
      <section>
        <title>Regulation Schema 4.10_PROD</title>
        <p>
          <b>2012-08-28</b>
          <ul>
            <li>Instructions updated for handling of
                <sourcexml>level/bodytext/footnotegrp</sourcexml>. Refer to common module for:
                <sourcexml>footnotegrp &amp; footnote</sourcexml>.</li>
          </ul>
        </p>
      </section>
      <section>
        <title>Regulation Schema 4.9_PROD</title>
        <p>
          <b>2012-08-14</b>
          <ul>
            <li>Instructions and example updated for handling of footnotes. Refer to common module
              for: <sourcexml>footnotegrp &amp; footnote</sourcexml>.</li>
          </ul>
        </p>
      </section>
      <section>
        <title>Regulation Schema 4.7_PROD</title>
        <p>
          <b>2012-07-04</b>
          <ul>
            <li>Introduction Topic: schema release information added - version 4.7 PROD.</li>
          </ul>
        </p>
      </section>
      <section>
        <title>2012-06-05</title>
        <p>
          <ul>
            <li>Instruction updated: if <sourcexml>refpt/@id</sourcexml> starts with a number, it
              must be prefixed with <b>nz_</b>.</li>
            <li>Instruction updated: if <sourcexml>remotelink[@remotekey1="REFPTID"]</sourcexml> and
                <sourcexml>remotelink[@refpt]</sourcexml> starts with a number, it must be prefixed
              with <b>nz_</b>.</li>
          </ul>
        </p>
      </section>
      <section>
        <title>2012-05-09</title>
        <p>
          <ul>
            <li>Commentary From Regulation Conversion Instructions Created.</li>
          </ul>
        </p>
      </section>
    </body>
  </dita:topic>

  <!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
  <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\NZ15_Commentary_From_Regs\change-log.dita  -->
  <!-- <xsl:message>NZ15_Commentary_From_Regs_change-log.xsl requires manual development!</xsl:message> -->

</xsl:stylesheet>
