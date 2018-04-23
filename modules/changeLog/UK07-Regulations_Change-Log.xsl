<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:ci="http://www.lexis-nexis.com/ci" xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:source_lnci="http://www.lexis-nexis.com/lnci" xmlns:annot="http://www.lexisnexis.com/xmlschemas/content/shared/annotations/1/" xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" xmlns:legis="http://www.lexisnexis.com/xmlschemas/content/legal/legislation/1/" xmlns:lnci="http://www.lexisnexis.com/xmlschemas/content/shared/citations/1/" xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" xmlns:primlawinfo="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-info/1/" xmlns:proc="http://www.lexisnexis.com/xmlschemas/content/shared/process-elements/1/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" xmlns:regulation="urn:x-lexisnexis:content:regulation:sharedservices:1" version="2.0" exclude-result-prefixes="dita ci docinfo leg lnci">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Change-Log">
  <title>Change Log</title>
  <body>
    <section>
      <title> Regulation 9.1_PROD Schema</title>
      <p>2017-01-27: <ul>
          <li>
            <xref href="../../common_newest/Rosetta_classification_classitem_topic.topicreference-Chof-docinfo-LxAdv-doc.docinfo_classify.classification.dita">2017-01-27 -Added Instructions for <sourcexml>topic:topicReference</sourcexml></xref>
          </li>
          <li>
            <xref href="../../../Rosetta/DITA-UK/UK07-Regulations/leg.body.dita">2017-01-27 -
              leg:body id-UK07-28209: Added note to create empty
                <targetxml>regulation:head</targetxml> and <targetxml>regulation:body</targetxml> id
              there is no <sourcexml>leg:body</sourcexml>. VSTS #223179</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/DITA-UK/UK07-Regulations/leg.comntry.dita">2017-01-18 -
              leg:comntry id-UK07-28212: Instructions for
                <sourcexml>leg:comntry/level/@leveltype="analysis|amendments"</sourcexml> converts
              to
                <targetxml>annot:annotations/annot:annotation-grp[@grptype="analysis|amendments"]/annot:annotation.
                VSTS #216684</targetxml>
            </xref>
          </li>
        </ul>
      </p>
      <p>2017-01-12 <ul>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_UK_docinfo.custom-metafields-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta.meta.metaitem.dita">2017-01-12 - docinfo:custom-metafields to
              doc:legacy-metadata[@metadatasource="lbu-meta"]/meta/metaitem id-CCCC-10485: Updated
                <sourcexml>docinfo:custom-metafield"</sourcexml> for
              "is-first-document-in-enactment" or "is-last-document-in-enactment". VSTS
              #162173</xref>
          </li>
        </ul>
      </p>
      <p>2017-01-04: <ul>
          <li>
            <xref href="../../../Rosetta/DITA-UK/UK07-Regulations/levelinfo.dita">2017-01-04 -
              levelinfo id-UK07-28232: Added instructions for
                <sourcexml>leg:comntry/level/levelinfo</sourcexml>.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_UK_docinfo.custom-metafields-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta.meta.metaitem.dita">2017-01-04 - docinfo:custom-metafields to
              doc:legacy-metadata[@metadatasource="lbu-meta"]/meta/metaitem id-CCCC-10485: Updated
                <sourcexml>docinfo:custom-metafield"</sourcexml> for
              "is-first-document-in-enactment" or "is-last-document-in-enactment". VSTS
              #162173</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_desigrange-LxAdv-desigrange.dita">2016-12-19 - desigrange to desigrange id-CCCC-10518: Instructions for nested
              designum.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_UK_form_LexAdv_form_form.dita">2016-12-16 - form id-CCCC-10552: Created.</xref>
          </li>
        </ul>
      </p>
      <p>2016-12-09: <ul>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.hierlev-note-LxAdv-proc.processinginfo.dita">2016-12-09 - docinfo:hierlev-note to proc:processinginfo id-CCCC-10534: Updated the
              Instruction (note) to handle more input scenario
                <sourcexml>docinfo:hierlev[@display-name='SI']</sourcexml> and schema updated for
                <sourcexml>docinfo:hierlev[@display-name='measure']</sourcexml>. VSTS Issue
              #188265</xref>
          </li>
          <li>
            <xref href="leg.categories.dita">2016-12-05 - leg:categories id-UK07-28211: Added
              instructions to handle <sourcexml>leg:categories/h/emph</sourcexml>.</xref>
          </li>
          <li>
            <xref href="leg.juris.dita">2016-12-05 - leg:juris id-UK07-28241: Created.</xref>
          </li>
        </ul>
      </p>
    </section>
    <section>
      <title> Regulation 9.0_PROD Schema</title>
      <p>2016-12-05: <ul>
          <li>
            <xref href="leg.categories.dita">2016-12-05 - leg:categories id-UK07-28211: Added
              instructions to handle <sourcexml>leg:categories/h/emph</sourcexml>.</xref>
          </li>
          <li>
            <xref href="leg.juris.dita">2016-12-05 - leg:juris id-UK07-28241: Created.</xref>
          </li>
        </ul>
      </p>
      <p>2016-11-30: <ul>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_UK_docinfo.custom-metafields-LxAdv-dc.date_or_doc.docinfo_classify.classification.dita">2016-11-30 - (UK) docinfo:custom-metafield to dc:date or
              doc:metadata/doc:docinfo/classify:classification[@classscheme="uk-functional-information"]
              id-CCCC-10547: Added rule for "isDocBuilderAvailable"; and updated the example.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/DITA-UK/UK07-Regulations/Rosetta_UK_docinfo.lbu-meta-LxAdv-doc.docinfo_classify.classification.dita">2016-11-28 - (UK) docinfo:lbu-meta to
              doc:metadata/doc:docinfo/classify:classification[@classscheme="actDocumentOrder"]
              id-UK07-28238: Updated Attribute value for <targetxml>docinfo:metaitem
                name="is-first-document-in-enactment" value="true | false"</targetxml>. VSTS
              #162173</xref>
          </li>
        </ul>
      </p>
      <p>2016-11-21: <ul>
          <li>
            <xref href="../../../Rosetta/DITA-UK/UK07-Regulations/leg.comntry.dita">2016-11-18 -
              leg:comntry id-UK07-28212: Edited instructions for target element mapping when source
              is not having <sourcexml>refpt</sourcexml> as a child of
                <targetxml>leg:heading</targetxml> and note for generation of
                <targetxml>ref:anchor</targetxml> based on <sourcexml>@subdoc="true"</sourcexml>
              value. </xref>
          </li>
        </ul>
      </p>
      <p>2016-11-17: <ul>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.hierlev-note-LxAdv-proc.processinginfo.dita">2016-11-16 - docinfo:hierlev-note to proc:processinginfo id-CCCC-10534: Updated the
              Instruction (note) to handle more input scenario
                <sourcexml>docinfo:hierlev[@display-name='SI']</sourcexml> and
                <sourcexml>docinfo:hierlev[@display-name='measure']</sourcexml>. VSTS Issue
              #188265</xref>
          </li>
        </ul>
      </p>
      <p>2016-11-09: <ul>
          <li>
            <xref href="Rosetta_UK_docinfo.lbu-meta-LxAdv-doc.docinfo_classify.classification.dita">2016-11-09 - (UK) docinfo:lbu-meta to
              doc:metadata/doc:docinfo/classify:classification[@classscheme="actDocumentOrder"]
              id-UK07-28238: Updated Attribute value for
                <targetxml>doc:hier/proc:processinginfo[@process="LAToCBuilder"]</targetxml>
            </xref>
          </li>
          <li>
            <xref href="../../../Rosetta/DITA-UK/UK07-Regulations/leg.comntry.dita">2016-11-08 -
              leg:comntry id-UK07-28212: Updated target element mapping when source is not having
                <sourcexml>refpt</sourcexml> as a child of <targetxml>leg:heading</targetxml> and
              note for generation of <targetxml>ref:anchor</targetxml> based on
                <sourcexml>@subdoc="true"</sourcexml> value. </xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_inlineobject-LxAdv-ref.inlineobject_BLOBSTORE.dita">2016-11-07 - inlineobject to ref:inlineobject for BLOBSTORE images id-CCCC-10540:
              Updated the instruction for ref:key-name and proc:param attribute values.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/DITA-UK/UK07-Regulations/leg.dates.dita">2016-10-27 -
              leg:dates id-UK07-28213: Added instruction for <targetxml>@normdate</targetxml>
              attribute that falls on various NL date elements.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_UK_docinfo.lbu-meta-to-LexisAdvance_primlawinfo_legisinfo_statusgroup_legisinfo-status.dita">2016-10-26 - docinfo:lbu-meta/docinfo:metaitem[@name="provision-status"] to
              primlawinfo:primlawinfo/legisinfo:legisinfo/legisinfo:statusgroup/legisinfo:status[@statuscode]
              id-CCCC-10549: Corrected the text value from 'repeal' to 'repealed' inside
                <sourcexml>docinfo:custom-metafield[@name="provision-status"]</sourcexml> and it's
              text value in source examples.</xref>
          </li>
        </ul>
      </p>
    </section>
    <section>
      <title> Regulation 8.3_PROD Schema</title>
      <p>2016-10-21: <ul>
          <li>
            <xref href="../../../Rosetta/DITA-UK/UK07-Regulations/leg.dates.dita">2016-10-27 -
              leg:dates id-UK07-28213: Added instruction for <targetxml>@normdate</targetxml>
              attribute that falls on various NL date elements.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_UK_docinfo.lbu-meta-to-LexisAdvance_primlawinfo_legisinfo_statusgroup_legisinfo-status.dita">2016-10-26 - docinfo:lbu-meta/docinfo:metaitem[@name="provision-status"] to
              primlawinfo:primlawinfo/legisinfo:legisinfo/legisinfo:statusgroup/legisinfo:status[@statuscode]
              id-CCCC-10549: Corrected the text value from 'repeal' to 'repealed' inside
                <sourcexml>docinfo:custom-metafield[@name="provision-status"]</sourcexml> and it's
              text value in source examples.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_inlineobject-LxAdv-ref.inlineobject_BLOBSTORE.dita">2016-10-21 - inlineobject to ref:inlineobject for BLOBSTORE images id-CCCC-10540:
              Changed one proc:param name for target. Formerly
                <targetxml>@name="attachment-server"</targetxml>; changed to
                <targetxml>@name="object-server"</targetxml>.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_lnlink_service_ATTACHMENT-LxAdv-ref.lnlink_BLOBSTORE.dita">2016-10-21 - lnlink[@service="ATTACHMENT"] to ref:lnlink[@service="ATTACHMENT"] for
              BLOBSTORE images id-CCCC-10542: Updated the Blobstore related instruction for use
              standardize specific output parameters.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_link-LxAdv-ref.lnlink_BLOBSTORE.dita">2016-10-21 - link[@filename] to ref:lnlink[@service="ATTACHMENT"] for BLOBSTORE
              images id-CCCC-10541: Updated the Blobstore related instruction for use standardize
              specific output parameters.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_UK_docinfo.lbu-meta-to-LexisAdvance_primlawinfo_legisinfo_statusgroup_legisinfo-status.dita">2016-10-21 - docinfo:lbu-meta/docinfo:metaitem[@name="provision-status"] to
              primlawinfo:primlawinfo/legisinfo:legisinfo/legisinfo:statusgroup/legisinfo:status[@statuscode]
              id-CCCC-10549: Added rule for handling more attribute values
                <sourcexml>@value="not-yet-in-force"</sourcexml> and
                <sourcexml>@value="no-longer-in-force"</sourcexml> inside
                <sourcexml>docinfo:metaitem</sourcexml>
            </xref>
          </li>
          <li>
            <xref href="Rosetta_bodytext-or-pgrp-legfragment-LxAdv-primlaw.bodytext-or-pgrp-primlaw.excerpt.dita">2016-10-21 - legfragment id-UK07-28237: Added instructions for nested
                <sourcexml>legfragment</sourcexml>.</xref>
          </li>
          <li>
            <xref href="leg.longtitle.dita">2016-10-20 - leg:longtitle id-UK07-28239: Created
              .</xref>
          </li>
          <li>
            <xref href="leg.miscdate.dita">2016-10-20 - leg:miscdate id-UK07-28240: Created for
              handling scenario of <sourcexml>leg:info/leg:dates/leg:miscdate</sourcexml>.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.versioninfo-LxAdv-doc.versioninfo-scheme.dita">2016-10-17 - docinfo:versioninfo to doc:versioninfo id-CCCC-10307: Updated the
              instruction for handling the target attribute <targetxml>@normdate</targetxml>.
              [Webstar#6676189]</xref>
          </li>
        </ul>
      </p>
      <p>2016-10-13: <ul>

          <li>
            <xref href="head.dita">2016-10-12 - head id-UK07-28207: Added instruction for handling
              input <sourcexml>ci:cite/@type="cite4thisdoc"</sourcexml> and
                <sourcexml>ci:cite/@type="parallel"</sourcexml>.</xref>
          </li>
          <li>
            <xref href="Rosetta_UK_docinfo.lbu-meta-LxAdv-doc.docinfo_classify.classification.dita">2016-10-12 - (UK) docinfo:lbu-meta to
              doc:metadata/doc:docinfo/classify:classification[@classscheme="actDocumentOrder"]
              id-UK07-28238: Created.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_edpnum-LxAdv-desig.dita">2016-10-12 -
              edpnum to desig id-CCCC-10308: Added rule for handling scenario when
                <sourcexml>pnum</sourcexml> and <sourcexml>edpnum </sourcexml> occur as siblings
              (applicable for UK22CS and UK06).</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_note-LxAdv-note.dita">2016-10-12 -
              note to note id-CCCC-10405: Added instruction for handling input scenario
                <sourcexml>note/legfragment</sourcexml>. </xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.hierlev-note-LxAdv-proc.processinginfo.dita">2016-10-10 - docinfo:hierlev-note to proc:processinginfo id-CCCC-10534: Updated the
              Instruction (note) for handling input scenario
                <sourcexml>docinfo:hierlev[@display-name='act']</sourcexml>.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_UK_docinfo.custom-metafields-LxAdv-dc.date_or_doc.docinfo_classify.classification.dita">2016-10-04 - (UK) docinfo:custom-metafield to dc:date or
              doc:metadata/doc:docinfo/classify:classification[@classscheme="uk-functional-information"]
              id-CCCC-10547: Added rule for "word-toc"; and updated the example.</xref>
          </li>
          <li>
            <xref href="Rosetta_bodytext-or-pgrp-legfragment-LxAdv-primlaw.bodytext-or-pgrp-primlaw.excerpt.dita">2016-09-30 - legfragment id-UK07-28237: Created</xref>
          </li>
          <li>
            <xref href="Rosetta_bodytext-or-pgrp-legfragment-LxAdv-primlaw.bodytext-or-pgrp-primlaw.excerpt.dita">2016-09-30 - legfragment id-UK07-28237: Created</xref>
          </li>
        </ul>
      </p>
      <p>2016-09-27: <ul>
          <li>
            <xref href="../../../Rosetta/DITA-UK/UK07-Regulations/leg.empleg.dita">2016-09-27 -
              leg:empleg id-UK07-28234: Created.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_desigrange-LxAdv-desigrange.dita">2016-09-27 - desigrange id-CCCC-10518: Added this common DITA module for handling
                '<sourcexml>desigrange</sourcexml>'.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_figure-LxAdv-figure.dita">2016-09-27
              - figure/caption id-CCCC-10320: Added the <sourcexml>figure/caption</sourcexml>
              instruction for handling image markups.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/DITA-UK/UK07-Regulations/leg.endmatter.dita">2016-09-27 -
              leg:endmatter id-UK07-28236: Created, element <sourcexml>leg:endmatter</sourcexml>
              encountered in new content source delivery. Created instruction and examples for
              handling <sourcexml>leg:endmatter</sourcexml>.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/DITA-UK/UK07-Regulations/leg.endmatter-sigblock.dita">2016-09-27 - leg:endmatter/sigblock id-UK07-28235: Created the instruction for
              handling input <sourcexml>leg:endmatter/sigblock</sourcexml>.</xref>
          </li>
        </ul>
      </p>
    </section>
    <section>
      <title> Regulation 8.3_PROD Schema</title>
      <p>2016-09-19: <ul>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.versioninfo-LxAdv-doc.versioninfo-scheme.dita">2016-09-14 - docinfo:versioninfo to doc:versioninfo id-CCCC-10307: Note added for
              handling the input markup
              '<targetxml>docinfo:versioninfo@startdate-tbd</targetxml>'.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_UK_docinfo.custom-metafields-LxAdv-dc.date_or_doc.docinfo_classify.classification.dita">2016-09-08 - (UK) docinfo:custom-metafield to dc:date or
              doc:metadata/doc:docinfo/classify:classification[@classscheme="uk-functional-information"]
              id-CCCC-10547: Added rule for attribute <sourcexml>@name</sourcexml> with value
              "containsAppealTracker"; and updated the example.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.versioninfo-LxAdv-doc.versioninfo-scheme.dita">2016-09-02 - docinfo:versioninfo to doc:versioninfo id-CCCC-10307: Special Rule for
              added <targetxml>@normdate</targetxml> attribute inside the
                <targetxml>doc:startdate</targetxml> and <targetxml>doc:enddate</targetxml>.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_UK_docinfo.lbu-meta-to-LexisAdvance_primlawinfo_legisinfo_statusgroup_legisinfo-status.dita">2016-08-23 - docinfo:lbu-meta/docinfo:metaitem[@name="provision-status"] to
              primlawinfo:primlawinfo/legisinfo:legisinfo/legisinfo:statusgroup/legisinfo:status[@statuscode]
              id-CCCC-10549: Corrected attribute @name value and it's text value in source
              examples.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_footnote-LxAdv-footnote.dita">2016-08-08 - footnotegrp and footnote to footnotegroup and footnote id-CCCC-10322:
              Removing duplicate entry of <sourcexml>lilabel/fnr</sourcexml>
            </xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_footnote-LxAdv-footnote.dita">2016-08-04 - footnotegrp and footnote to footnotegroup and footnote id-CCCC-10322:
              Added note for handling <sourcexml>lilabel/fnr</sourcexml> Applicable for AU05,
              Incident #6597893</xref>
          </li>
        </ul>
      </p>
    </section>
    <section>
      <title> Regulation 8.2_PROD Schema</title>
      <p>2016-08-03: <ul>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_UK_docinfo.lbu-meta-to-LexisAdvance_primlawinfo_legisinfo_statusgroup_legisinfo-status.dita">2016-08-03 - docinfo:lbu-meta/docinfo:metaitem[@name="provision-status"] to
              primlawinfo:primlawinfo/legisinfo:legisinfo/legisinfo:statusgroup/legisinfo:status[@statuscode]
              id-CCCC-10549: Created the rule for handling specific attribute values
                <sourcexml>@value="repealed"</sourcexml>,
                <sourcexml>@value="partly-in-force"</sourcexml> and
                <sourcexml>@value="in-force"</sourcexml> inside
                <sourcexml>docinfo:metaitem</sourcexml>
            </xref>
          </li>
          <li>
            <xref href="../../../Rosetta/DITA-UK/UK07-Regulations/Rosetta_normcite_LexAdv_classify-classification.dita">2016-08-03 - Rosetta docinfo:normcite to classify:classification id-UK07-28231:
              Removed instruction to identify the <sourcexml>Repealed</sourcexml> source
              documents.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_inlineobject-Chof-sub-LxAdv-figure_ref.inlineobject.dita">2016-08-01 - sub/inlineobject to figure/ref:inlineobject id-CCCC-10365: Added Note
              about xml snippets that illustrate image handling. Note summarizes move from Apollo to
              Blobstore application. UK is first LBU to move to Blobstore.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_inlineobject-Chof-emph-LxAdv-figure_ref.inlinobject.dita">2016-08-01 - emph/inlineobject to figure/ref:inlineobject id-CCCC-10359: Added Note
              about xml snippets that illustrate image handling. Note summarizes move from Apollo to
              Blobstore application. UK is first LBU to move to Blobstore.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_bodytext-link-LxAdv-seclaw.bodytext-p-text-ref.lnlink.dita">2016-08-01 - bodytext/link to seclaw:bodytext/p/text/ref:lnlink id-CCCC-10248: Added
              Note about xml snippets that illustrate image handling. Note summarizes move from
              Apollo to Blobstore application. UK is first LBU to move to Blobstore.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.alt-renditions-LxAdv-doc.alt-renditions.dita">2016-07-29 - docinfo:alt-renditions/docinfo:alt-rendition to
              doc:alt-renditions/doc:alt-rendition id-CCCC-10283: Added Note about xml snippets that
              illustrate image handling. Note summarizes move from Apollo to Blobstore application.
              UK is first LBU to move to Blobstore.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2016-07-29 - docinfo:assoc-links to doc:related-content id-CCCC-10284: Added Note
              about xml snippets that illustrate image handling. Note summarizes move from Apollo to
              Blobstore application. UK is first LBU to move to Blobstore.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_inlineobject-LxAdv-figure_ref.inlineobject.dita">2016-07-29 - inlineobject to figure/ref:inlineobject id-CCCC-10368: Added Note about
              xml snippets that illustrate image handling. Note summarizes move from Apollo to
              Blobstore application. UK is first LBU to move to Blobstore.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_UK_docinfo.custom-metafields-LxAdv-dc.date_or_doc.docinfo_classify.classification.dita">2016-07-26 - (UK) docinfo:custom-metafield to dc:date or
              doc:metadata/doc:docinfo/classify:classification[@classscheme="uk-functional-information"]
              id-CCCC-10547: Added rule for "resultType"; and updated the example.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_UK_docinfo.custom-metafields-LxAdv-dc.date_or_doc.docinfo_classify.classification.dita">2016-07-13 - (UK) docinfo:custom-metafield to dc:date or
              doc:metadata/doc:docinfo/classify:classification[@classscheme="uk-functional-information"]
              id-CCCC-10547: Added rules for "createdDate", "updatedDate", and "inEditorialReview";
              and updated the example.</xref>
          </li>
        </ul>
      </p>
    </section>
    <section>
      <title> Regulation 8.2_PROD Schema</title>
      <p>2016-06-23: <ul>
          <li>
            <xref href="../../../Rosetta/DITA-UK/UK07-Regulations/leg.engrossedtext.dita">2016-06-22
              - leg:engrossedtext: Created, element <sourcexml>leg:engrossedtext</sourcexml>
              encountered in new content source delivery. Created instruction and examples for
              handling <sourcexml>leg:engrossedtext</sourcexml>.</xref>
          </li>
        </ul>
      </p>
      <p>2016-05-27: <ul>
          <li>
            <xref href="leg.dates.dita">2016-05-23 - leg:dates id-UK07-28213: Mapping for
                <sourcexml>docinfo:custom-metafield searchtype="LEG-ENACT-DATE" </sourcexml> to
                <targetxml>primlawinfo:enactdate</targetxml>
            </xref>
          </li>
          <li>
            <xref href="Rosetta_normcite_LexAdv_classify-classification.dita">2016-05-06 - Rosetta
              docinfo:normcite to classify:classification id-UK07-28231: Added attribute value
                <targetxml>@normval="provision" or "enactment".</targetxml>
            </xref>
          </li>
        </ul>
      </p>
      <p>2016-04-06: <ul>
          <li>
            <xref href="../../../Rosetta/DITA-UK/UK07-Regulations/Rosetta_normcite_LexAdv_classify-classification.dita">2016-05-06 - Rosetta docinfo:normcite to classify:classification id-UK07-28231: Added
              attribute value <targetxml>@normval="provision" or "enactment".</targetxml>
            </xref>
          </li>
          <li>
            <xref href="../../../Rosetta/DITA-UK/UK07-Regulations/Rosetta_normcite_LexAdv_classify-classification.dita">2016-04-06 - Rosetta docinfo:normcite to classify:classification id-UK07-28231:
              Instruction update to identify enactment and provision source document. (RFA
              #2639).</xref>
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
            <xref href="../../../Rosetta/common_newest/Rosetta_edpnum-LxAdv-desig.dita">2016-03-15 -
              edpnum to desig id-CCCC-10308: Added rule for handling scenario when
                <sourcexml>pnum</sourcexml> and <sourcexml>edpnum </sourcexml> occur as siblings
              (applicable only for UK22CS). [RFA #2755]</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.leginclude-LxAdv-doc.merge.dita">2016-02-29 - docinfo:leginclude to doc:merge id-CCCC-10537: Usage note, not a rule
              change. Supports UK One Truth project. Applicable for any stream where the data
              occur.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_footnote-LxAdv-footnote.dita">2016-02-29 - footnotegrp and footnote to footnotegrp and footnote id-CCCC-10322:
              Added note for handling <sourcexml>@type="editorial"</sourcexml> attribute. Applicable
              for UK22CS, RFA# 2762</xref>
          </li>
        </ul>
      </p>
      <p>2016-02-24: <ul>
          <li>
            <xref href="../../../Rosetta/DITA-UK/UK07-Regulations/levelinfo.dita">2016-02-24 -
              levelinfo id-UK07-28232: Created. Applicable on UK07, RFA#, 2752.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.leginclude-LxAdv-doc.merge.dita">2016-02-24 - docinfo:leginclude id-CCCC-10537: Created. Applicable on UK07, RFA#,
              2752.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_footnote-LxAdv-footnote.dita">2016-02-24 -
              Footnote instructions added UK07, RFA#, 2753.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_p-limited-LxAdv-p.dita">2016-02-24 - p-limited
              instructions added UK07, RFA#, 2752 and 2765.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2016-02-05 - remotelink to ref:crossreference id-CCCC-10465: Added note and example
              when <sourcexml>remotelink</sourcexml> is a child of <sourcexml>emph</sourcexml>.
              Applicable on NZ17CC, Webstar: 319232 and 318735.</xref>
          </li>
        </ul>
      </p>
    </section>
    <section>
      <title> Regulation 8.0_PROD Schema </title>
      <p>2016-01-06: <ul>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.hierlev-note-LxAdv-proc.processinginfo.dita">2016-01-08 - docinfo:hierlev-note to proc:processinginfo id-CCCC-10534: Created. RFA
              #2688.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/DITA-UK/UK07-Regulations/Rosetta_normcite_LexAdv_classify-classification.dita">2016-01-06 - Rosetta docinfo:normcite to classify:classification id-UK07-28231:
              instructions to add Repealed status indicator [R] in dc:title. RFA # 2641</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.doc-heading-LxAdv-dc.title.dita">2015-12-04 - docinfo:doc-heading to dc:title id-CCCC-10292: Added exception for AU
              Legislative Citator to drop text Overview Tab for from conversion.</xref>
          </li>
        </ul>
      </p>
    </section>
    <section>
      <title> Regulation 8.0_PROD Schema </title>
      <p>2015-11-26: <ul>
          <li>
            <xref href="../../../Rosetta/DITA-UK/UK07-Regulations/refnum.dita">2015-11-26 - refnum
              id-UK07-28228: Updated target mapping of <sourcexml>refnum</sourcexml> to be mapped
              under <sourcexml>regulation:head</sourcexml>. RFA #2440</xref>
          </li>
        </ul></p>
      <p>
        <ul>
          <li>Removed docinfo:normcite rule from general instructions. RFA # 2562</li>
        </ul>
      </p>
      <p>2015-11-16</p>
      <title>Regulation 8.0_PROD Schema</title>
      <p>2015-11-04</p>
      <ul>
        <li>
          <xref href="../../../Rosetta/DITA-UK/UK07-Regulations/Rosetta_normcite_LexAdv_classify-classification.dita">2015-11-03 - Rosetta docinfo:normcite to classify:classification id-UK07-28231:
            Created. Applicable on UK07. RFA # 2469.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/DITA-UK/UK07-Regulations/refnum.dita">2015-10-29 - refnum
            id-UK07-28228: Updated target mapping and example of <sourcexml>refnum</sourcexml>
            element. Applicable on UK07.</xref>
        </li>
      </ul>
    </section>

    <section>
      <title>Regulation 8.0_PROD Schema</title>
      <p>2015-08-26</p>
      <ul>
        <li>
          <xref href="../../../Rosetta/DITA-UK/UK07-Regulations/leg.dates.dita">2015-08-26 -
            leg:dates id-UK07-28213: Added note in <sourcexml>leg:enactdate</sourcexml> for handling
            of PCDATA under <sourcexml>date</sourcexml> or
              <sourcexml>primlawinfo:enactdate</sourcexml>, Applicable on UK07, R 4.5 issue #
            2379.</xref>
        </li>
      </ul>
    </section>

    <section>
      <title>Regulation 8.0_PROD Schema</title>
      <p>2015-08-12</p>
      <ul>
        <li>
          <xref href="../../../Rosetta/DITA-UK/UK07-Regulations/leg.dates.dita">2015-08-12 -
            leg:dates id-UK07-28213: Added note and example in <sourcexml>leg:laidline</sourcexml>
            when multiple <sourcexml>date</sourcexml> element occuring, Applicable on UK07, R4.5
            issue # 2365.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/DITA-UK/UK07-Regulations/leg.dates.dita">2015-08-12 -
            leg:dates id-UK07-28213: Removed note from <sourcexml>leg:enacdate</sourcexml>,
            Applicable on UK07, R4.5 issue # 2362.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/DITA-UK/UK07-Regulations/leg.officialnum.dita">2015-08-12 -
            leg:officialnum id-UK07-28223: Added instruction and example of
              <sourcexml>leg:info/leg:year</sourcexml>, Applicable on UK07, R4.5 Issue #
            2363.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_inlineobject-Chof-emph-LxAdv-figure_ref.inlinobject.dita">2015-08-12 - emph/inlineobject to figure/ref:inlineobject id-CCCC-10359: Added
            instruction and example for
              <sourcexml>leg:comntry/level/bodytext/heading/title/emph/inlineobject</sourcexml>,
            Applicable on UK07, R4.5 issue # 2364.</xref>
        </li>
      </ul>
    </section>
    <section>
      <title>Regulation 8.0_PROD Schema</title>
      <p>2015-05-25</p>
      <ul>
        <li>
          <xref href="../../../Rosetta/DITA-UK/UK07-Regulations/leg.comntry.dita">2015-05-25 -
            leg:comntry id-UK07-28212: Updated target mapping for
              <sourcexml>leg:comntry/level/bodytext/leg:comntry/level/bodytext</sourcexml>. Db
            issue.... #2289. </xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2015-05-22 - docinfo:assoc-links to doc:related-content id-CCCC-10284: Clarification.
            Not a new rule or target. Within rules handling
              <sourcexml>remotelink[@service="DOC-ID"]</sourcexml>, added statement to create
            containing elements <targetxml>ref:locator/ref:locator-key</targetxml> which hold
              <targetxml>ref:key-name</targetxml> and <targetxml>ref:key-value</targetxml>. The
            xpath is controlled by schema and so conversions have been correct. CI examples were
            correct. The narrative rule is now explicit. R4.5 Content Issue 2326.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.doc-heading-LxAdv-dc.title.dita">2015-05-05 - docinfo:doc-heading to dc:title id-CCCC-10292: Added note to convert (TM),
            (R), and (MC) to unicode code points. DB # 45. Applicable to CA14.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_docinfo-LxAdv-doc.metadata_doc.docinfo.dita">2015-04-14 - docinfo to doc:metadata/doc:docinfo id-CCCC-10282: Remove bullet icon in
            sub nested list for handling Indentation isssue.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.hier-LxAdv-doc.hier.dita">2015-03-25 - docinfo:hier to doc:hier id-CCCC-10297: Added note with rule for
              <sourcexml>title/num</sourcexml>. Suppress <sourcexml>num</sourcexml> tag but output
            content. Applicable for CA09 only. RFA 2249.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2015-03-17 - ci.cite to lnci.cite id-CCCC-10268: An attribute
              <targetxml>@inline</targetxml> get added with <targetxml>desig</targetxml> element
            even when the source<sourcexml>pnum</sourcexml> is not having that
              attribute<sourcexml>@inline</sourcexml> Applicable on CA12 only.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_pgrp-LxAdv-pgrp.dita">2015-03-17 - pgrp
            to pgrp id-CCCC-10431: An attribute <targetxml>@inline</targetxml> get added with
              <targetxml>desig</targetxml> element even when the source<sourcexml>pnum</sourcexml>
            is not having that attribute<sourcexml>@inline</sourcexml> Applicable on CA12
            only.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2015-02-24 - ci.cite to lnci.cite id-CCCC-10268: Example updated as per new rule an
            attribute <targetxml>@inline</targetxml>get added with
            <targetxml>desig</targetxml>element when the source<sourcexml>pnum</sourcexml>is not
            having that attribute<sourcexml>@inline</sourcexml>
          </xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_pgrp-LxAdv-pgrp.dita">2015-02-24 - pgrp
            to pgrp id-CCCC-10431: Example updated as per new rule an attribute
              <targetxml>@inline</targetxml>get added with <targetxml>desig</targetxml>element when
            the source<sourcexml>pnum</sourcexml>is not having that
              attribute<sourcexml>@inline</sourcexml>
          </xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.hier-LxAdv-doc.hier.dita">2015-01-23 - docinfo:hier to doc:hier id-CCCC-10297: Added note to convert
              <sourcexml>docinfo:hierlev/@exclude-from-displayunits="true"</sourcexml> into
              <targetxml>doc:hier/@includeintoc="false"</targetxml>.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2015-01-19 - docinfo:assoc-links to doc:related-content id-CCCC-10284: For CA05 - CA08-
            Updated Instruction and included "<targetxml>related-content-grp</targetxml>" markup
            inside the target Example 8 for conversion of QUERY link to doc:related-content.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2015-01-15 - docinfo:assoc-links to doc:related-content id-CCCC-10284: For CA03-
            Convert the QUERY link to doc:related-content. Refer Example 10. R4.5 RFA #2099.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2015-01-13 - docinfo:assoc-links to doc:related-content id-CCCC-10284: For CA05 - CA08
            Conversion Needs to split multiple ORs into a separate
              <targetxml>doc:related-content-item</targetxml>. Refer Example 9</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.hier-LxAdv-doc.hier.dita">2015-01-13 - docinfo:hier to doc:hier id-CCCC-10297: Added a note to repalce
              <sourcexml>nl</sourcexml> to a white space when <sourcexml>nl</sourcexml> is coming as
            child of <sourcexml>docinfo:hierlev/heading/title</sourcexml>
          </xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2015-01-09 - remotelink to ref:crossreference id-CCCC-10465: For the two use cases
            associated with url (target <targetxml>url</targetxml> or
              <targetxml>ref:lnlink</targetxml>): Added exceptional rule to not concatenate values
            when <sourcexml>@hrefclass</sourcexml> content is already present in
              <sourcexml>@href</sourcexml>. Expanded examples 5 and 7 to illustrate the scenario.
            Responds to data for UK10 Dictionaries but applies in general. R4.5 Content Issue
            2120.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_remotelink-Chof-url-LxAdv-url.dita">2015-01-09 - url/remotelink to url id-CCCC-10464: Within use case that maps to
              <targetxml>ref:lnlink</targetxml>, added exceptional rule to not concatenate values
            when <sourcexml>@hrefclass</sourcexml> content is already present in
              <sourcexml>@href</sourcexml>. Expanded example to illustrate the scenario. Responds to
            data for UK10 Dictionaries but applies in general. R4.5 Content Issue 2120.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2015-01-02 - docinfo:assoc-links to doc:related-content id-CCCC-10284: Added
              <sourcexml>docinfo:assoc-links/remotelink[@service="QUERY"]</sourcexml> and
              <sourcexml>docinfo:assoc-links-grp/remotelink[@service="QUERY"]</sourcexml> to
            generate <targetxml>doc:related-content</targetxml> markup. Applicable on CA05.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2014-12-19 - docinfo:assoc-links to doc:related-content id-CCCC-10284: Updated target
            mapping for CA05 for handling
              <sourcexml>docinfo:assoc-links/remotelink[@service="QUERY"]</sourcexml>. Applicable on
            CA05.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2014-12-17 - docinfo:assoc-links to doc:related-content id-CCCC-10284: Added a Note for
            CA05, CA06, CA07 and CA08 for handling
              <sourcexml>docinfo:assoc-links-grp/remotelink[@service="QUERY"] </sourcexml>
          </xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2014-12-08 - ci.cite to lnci.cite id-CCCC-10268: Addition of mapping for
              <sourcexml>ci:pinpoint</sourcexml> to <targetxml>lnci:pinpoint</targetxml> and example
            from US LPA content.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_link_refpt-LxAdv-ref.lnlink-ref.locator_anchoridref.dita">2014-11-24 - link/@refpt to ref:lnlink/ref.locator/@anchoridref id-CCCC-10395: Updated
            instruction for CA02-CC to drop <sourcexml>emph</sourcexml> in
              <sourcexml>link/emph</sourcexml>.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.overview-LxAdv-docinfo.overview.dita">2014-11-04 - docinfo:overview to doc:overview id-CCCC-10303: Clarification only: added
            text to explicitly indicate that the child <targetxml>doc:overview/bodytext</targetxml>
            should be created. Not a change to instructions.</xref>
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
          <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.overview-LxAdv-docinfo.overview.dita">2014-10-21 - docinfo:overview to doc:overview id-CCCC-10303: added to UK09
            ditamap.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_lnlink_service_ATTACHMENT-LxAdv-ref.lnlink.dita">2014-10-15 - lnlink/@service="ATTACHMENT" to ref:lnlink id-CCCC-10396: Rewrote
            instructions, including the correction of a typographic error, and added an
            example.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_inlineobject-LxAdv-figure_ref.inlineobject.dita">2014-10-13 - inlineobject to figure/ref:inlineobject id-CCCC-10368: Added note and
            example to suppress <targetxml>proc:nl</targetxml> from before and after of
              <targetxml>figure/inlineobject</targetxml> when it comes inside
              <targetxml>verbatim</targetxml> element.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_title-LxAdv-title.dita">2014-10-07 -
            title to title id-CCCC-10479: Removed instruction and example to convert attribute
              <sourcexml>@searchtype="DIGEST-SUBJECT"</sourcexml>. Applicable to CA12.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2014-09-16 - docinfo:assoc-links to doc:related-content id-CCCC-10284: Added a note to
            create <targetxml>proc:param/@name="attachment-smi"</targetxml> and
              <targetxml>proc:param/@value</targetxml> as these was there in the snippet but was
            missing in instruction and also added a note in to simplify in output
              <targetxml>ref:key-value/@value</targetxml>
          </xref>
        </li>
      </ul>
    </section>
    <section>
      <title>Regulation 7.7_PROD Schema (2014-08-21) </title>
      <ul>
        <li>
          <xref href="../../../Rosetta/DITA-UK/UK07-Regulations/leg.dates.dita">2014-09-05 -
            leg:dates id-UK07-28213: Clarification on mapping of multiple
              <sourcexml>date</sourcexml> with different dates inside
              <targetxml>leg:enacdate</targetxml>.... Db issue #1863 </xref>
        </li>
        <li>
          <xref href="../../../Rosetta/DITA-UK/UK07-Regulations/leg.hier.dita">2014-09-03 -
            leg:hier/leg:hierlev id-UK07-28216: Mapping of <sourcexml>leg:hier</sourcexml> inside
              <sourcexml>leg:info</sourcexml>. Db issue R4.5 1854</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/DITA-UK/UK07-Regulations/leg.info.dita">2014-08-21 - leg:info
            id-UK07-28218: Added a scnario for <sourcexml>leg:info/note</sourcexml> in above note
            describing scenarios where <targetxml>legis:body/primlaw:prelim</targetxml> should be
            created.R4.5 Content issue List #1810</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_text-LxAdv-text.dita">2014-08-11 - text
            to text id-CCCC-10477: For CANADA Content Stream: Only move the <sourcexml>
              text@align</sourcexml> to the parent <targetxml>p</targetxml> if it is the only text
            in <sourcexml>p</sourcexml>, Otherwise, wrap the <sourcexml>text</sourcexml> with
              <targetxml>p</targetxml> and move the <sourcexml>@align</sourcexml> attribute to the
            newly created <targetxml> p</targetxml>.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.overview-LxAdv-docinfo.overview.dita">2014-08-04 - docinfo:overview to doc:overview id-CCCC-10303: added to UK05
            ditamap.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_inlineobject-LxAdv-ref.inlineobject.dita">2014-07-08 - inlineobject to ref:inlineobject id-CCCC-10369: Not a rule change.
            Clarification added to note regarding suppression of <sourcexml>inlineobject</sourcexml>
            when <sourcexml>inlineobject/@filename</sourcexml> contains certain values.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_table-LxAdv-table.dita">2014-07-08 -
            table to table id-CCCC-10475: Updated instruction for added the following rarely
            occurring attributes <sourcexml>@char</sourcexml> inside the
              <sourcexml>entry</sourcexml>.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.doc-id-LxAdv-dcidentifier_lnmetaidentifier-scheme.dita">2014-06-23 - docinfo:doc-id to dc:identifier[@lnmeta:identifier-scheme] id-CCCC-10293:
            Note and Example removed - For CA05 Acts and Bills- Mapping in dc:identifier for act-no
            and chunk-no. Db issue #1464</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2014-06-18 - docinfo:assoc-links to doc:related-content id-CCCC-10284: Corrected minor
            typos in <sourcexml>lnlink[@service="QUERYLINK"]</sourcexml> instructions.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2014-06-13 - docinfo:assoc-links to doc:related-content id-CCCC-10284: Added
            instructions and an example for converting
              <sourcexml>lnlink[@service="QUERYLINK"]</sourcexml> to
              <targetxml>ref:lnlink</targetxml>.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_table-LxAdv-table.dita">2014-06-04 -
            table to table id-CCCC-10475: For completeness, added instructions for the following
            rarely occurring attributes of <sourcexml>table/tgroup/colspec</sourcexml>:
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
          <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.doc-id-LxAdv-dcidentifier_lnmetaidentifier-scheme.dita">2014-05-21 - docinfo:doc-id to dc:identifier[@lnmeta:identifier-scheme] id-CCCC-10293:
            For CA05 Acts and Bills- Mapping in dc:identifier for act-no and chunk-no.. Db issue
            #1464 </xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2014-04-28 - docinfo:assoc-links to doc:related-content id-CCCC-10284: Clarified
            instructions regarding <sourcexml>link</sourcexml> elements and added an example (#4)
            illustrating the special <sourcexml>text/link</sourcexml> conversion. No mapping rules
            where changed or added.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2014-04-21 - docinfo:assoc-links to doc:related-content id-CCCC-10284: Added an
            instruction to handle <sourcexml>link</sourcexml> elements. These can potentially occur
            in any future UK data and will be present in stream UK21fl when those documents become
            available later in 2014.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_p-LxAdv-p.dita">2014-04-14 - p to p
            id-CCCC-10424: Removed Colons from Labels.. DB item #1255</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2014-04-03 - docinfo:assoc-links to doc:related-content id-CCCC-10284: Illustrative
            changes. Examples modified. Mapping for <sourcexml>ci:cite</sourcexml> added to Example
            3. Former Examples 4 and 5 removed to avoid confusion with special AU-NZ use case
            described in a separate module. R4.5 Content issue #1125, for AU-NZ, has prompted the
            changes for this general module.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2014-03-25 - docinfo:assoc-links to doc:related-content id-CCCC-10284: Added rule and
            example for <sourcexml>docinfo:assoc-links/docinfo:assoc-links-grp/ci:cite</sourcexml>.
            R4.5 Content issue #1125</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2014-02-25 - remotelink to ref:crossreference id-CCCC-10465: Updated instruction and
            created new example (#16) for handling
              <sourcexml>remotelink[@service="QUERY"]</sourcexml>. New instruction preserves pcdata
            but suppresses <sourcexml>remotelink</sourcexml> markup. Webstar #250335. Change applies
            immediately to all Pacific streams, and in the long run to all streams.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.doc-heading-LxAdv-dc.title.dita">2014-02-11 - docinfo:doc-heading to dc:title id-CCCC-10292: Updated note when
              <sourcexml>emph</sourcexml> is child of <sourcexml>docinfo:doc-heading</sourcexml>
            then suppress <sourcexml>emph</sourcexml> element and retain its content in
              <targetxml>dc:title</targetxml>, These instructions apply immediately to CA12.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_pgrp-LxAdv-pgrp.dita">2014-02-11 - pgrp
            to pgrp id-CCCC-10431: Add instruction and example <sourcexml>pgrp/@subdoc</sourcexml>
            and <sourcexml>pgrp/@toc-caption</sourcexml>. Support Discussion Board: NZ09 Commentary,
            Form and Precedents</xref>
        </li>
      </ul>
    </section>
    <section>
      <title>Regulation Schema 7.4_PROD</title>
      <p>2014-02-05 <ul>
          <li><xref href="leg.level.dita">2014-02-05 - Added two special rules for handling nested
              subsections and multiple headings within subsection. (from R4.5 Content Issue List:
              UK07 Regulations - subsection leveltype within subsection leveltype). WebTeam
              #249313.</xref></li>
        </ul>
      </p>
    </section>
    <section>
      <title>Regulation Schema 7.4_PROD</title>
      <p>2014-02-03 <ul>
          <li><xref href="leg.officialnum.dita">2014-02-03 - UK07 should only ever have <b>‘No’</b>
              between <sourcexml>leg:year</sourcexml> and <sourcexml>leg:seriesnum</sourcexml> and
              UK06 should only ever have <b>‘chapter’</b> between <sourcexml>leg:year</sourcexml>
              and <sourcexml>leg:seriesnum</sourcexml>. Phase 5 UK discussion-defect tracking: issue
              #154.</xref></li>
          <li><xref href="../../common_newest/Rosetta_docinfo.topiccodes-to-LxAdv-classify.classification_classscheme_docinfo-topiccodes.dita">2014-02-03 - Added a special rule for UK07 contents, When element
                <sourcexml>docinfo:topiccode</sourcexml> contains attribute
                <sourcexml>@scheme="source-by-date"</sourcexml>, then conversion will suppress it
              including its contents as well. Phase 5 UK discussion-defect tracking: issue
              #156.</xref></li>
          <li>
            <xref href="../../common_newest/Rosetta_l-LxAdv-list.dita">2014-01-06 - l to list: Added
              mapping instruction for nested lists.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2013-12-30 -
              ci.cite to lnci.cite: Minor illustrative change. Added "(AU Journals/Newsitem)" to
              headings for last example to clarify that retention of
                <sourcexml>@type="cite4thisdoc"</sourcexml> is an exception for that content, as
              already described in narrative rules.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_docinfo.alt-renditions-LxAdv-doc.alt-renditions.dita">2013-12-17 - docinfo:alt-renditions/docinfo:alt-rendition to
              doc:alt-renditions/doc:alt-rendition: Added instruction and example for
                <sourcexml>docinfo:alt-rendition/lnlink</sourcexml>. (Webteam #247307)</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_p-LxAdv-p.dita">2013-12-04 - p to p: Updated
              target example when <sourcexml>p</sourcexml> or <sourcexml>p/@nl="0"</sourcexml> comes
              in <sourcexml>references</sourcexml>, this change directly affects NZ07.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_p-LxAdv-p.dita">2013-11-21 - p to p: Updated
              instruction and example <sourcexml>p</sourcexml> or <sourcexml>p/@nl="0"</sourcexml>
              comes in <sourcexml>references</sourcexml>, this change directly affects NZ07.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_UK_docinfo.custom-metafields-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta.meta.metaitem.dita">2013-11-20 - docinfo:custom-metafields to
              doc:legacy-metadata[@metadatasource="lbu-meta"]/meta/metaitem: Added instruction to
              handle
                <sourcexml>docinfo:custom-metafields/docinfo:custom-metafield/@name="jurisdiction"</sourcexml>
              is "European" Webteam # 239816 </xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_docinfo.alt-renditions-LxAdv-doc.alt-renditions.dita">2013-10-29 - docinfo:alt-renditions/docinfo:alt-rendition to
              doc:alt-renditions/doc:alt-rendition: Added instruction and example for UK06
              Laws/Acts/Bills/Measures and UK07 Regulation place the text of
                <sourcexml>leg:officialname</sourcexml> in
                <targetxml>doc:alt-renditions/doc:alt-rendition/ref:lnlink/ref:marker</targetxml>
              (Webteam #243521)</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_p-LxAdv-p.dita">2013-10-25 - p to p: Added
              instruction and example <sourcexml>p/@nl="0"</sourcexml> comes in
                <sourcexml>references</sourcexml>.</xref>
          </li>

        </ul>
      </p>
    </section>
    <section>
      <title>Regulation Schema 7.3_PROD</title>
      <p>2013-10-25 <ul>
          <li><xref href="leg.officialnum.dita">2013-10-25 - Replaced <b>"NO"</b>(upper case) with
                <b>"No"</b> in note and target example.</xref></li>
        </ul>
      </p>
    </section>
    <section>
      <title>Regulation Schema 7.2_PROD</title>
      <p>2013-09-26 <ul>
          <li><xref href="leg.heading.dita">2013-09-26 - Added a note with instructions, When
                <sourcexml>leg:heading</sourcexml> occurs as a first child of
                <sourcexml>leg:level/leg:level-vrnt/leg:levelbody/leg:bodytext</sourcexml>, then
              move <sourcexml>leg:heading</sourcexml> before
                <sourcexml>leg:levelbody/leg:bodytext</sourcexml> and will become the first child of
                <targetxml>primlaw:level</targetxml> in NewLexis conversion. (WebTeam
              #236020).</xref></li>
        </ul>
      </p>
    </section>
    <section>
      <title>Regulation Schema 7.2_PROD</title>
      <p>2013-09-23 <ul>
          <li>
            <xref href="leg.officialnum.dita">2013-09-23 - Added a note with instructions to add if
                <b>"NO"</b> does not exist between <sourcexml>leg:year</sourcexml> and
                <sourcexml>leg:seriesnum</sourcexml>, then conversion need to add <b>"NO"</b> (with
              single space before and after) before the target
                <targetxml>primlawinfo:identifier-component/@type="seriesnum"</targetxml> WebTeam
              #236022.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_desiglabel-Chof-desig-LxAdv-desig.dita">2013-09-19 - desig/desiglabel to desig: Added rules to insert space between label and
              number when none present in source. Rule required for UK content. Immediately known to
              occur in UK06, UK07, and UK12. R4.5 Post Iterative Testing Issue 431. WebTeam #
              236033.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_table-LxAdv-table.dita">2013-09-16 - table to
              table: Removed an obsolete note regarding visual styling of tables.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_table-LxAdv-table.dita">2013-09-12 - table to
              table: WebTeam #s 235116, 235130, 235126: Added instructions for deleting extraneous
              instances of @morerows, @colsep and @rowsep. These instructions apply immediately to
              all UK streams and also to AU18.</xref>
          </li>

          <li>
            <xref href="../../common_newest/Rosetta_title-LxAdv-title.dita">2013-09-03 - title to
              title: Updated Instruction when <sourcexml>title</sourcexml> contains word "TITLE: "
              or "NAME: " or "SITE: ".</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_docinfo.doc-heading-LxAdv-dc.title.dita">2013-09-03 - docinfo:doc-heading to dc:title: Updated Instruction when
                <sourcexml>docinfo:doc-heading</sourcexml> contains word "TITLE: " or NAME: or SITE:
              or SUBJECT:.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_desiglabel-Chof-desig-LxAdv-desig.dita">2013-08-23 - desig/desiglabel to desig: Removed <targetxml>@value</targetxml> from
              target example element <targetxml>desig</targetxml>, as it was decided, that if source
              element doesn't contain <sourcexml>@value</sourcexml> then target element
                <targetxml>desig</targetxml> will not contain <targetxml>@value</targetxml>.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-08-22 - remotelink to ref:crossreference: Not a rule change. Modified Sample #10
              on <sourcexml>ci:cite/ci:content/remotelink</sourcexml>. Removed target attribute
                <targetxml>lnci:cite[@citeref]</targetxml> because value captured in
                <targetxml>ref:crossreference/ref:locator[@anchoridref]</targetxml>.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_link-LxAdv-ref.lnlink.dita">2013-08-21 - link to
              ref:lnlink/@service="ATTACHMENT": Added instruction for when to suppress
                <sourcexml>@status</sourcexml>.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_title-LxAdv-title.dita">2013-09-03 - title to
              title: Updated Instruction when <sourcexml>title</sourcexml> contains word "TITLE: "
              or "NAME: " or "SITE: ".</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_docinfo.doc-heading-LxAdv-dc.title.dita">2013-09-03 - docinfo:doc-heading to dc:title: Updated Instruction when
                <sourcexml>docinfo:doc-heading</sourcexml> contains word "TITLE: " or NAME: or SITE:
              or SUBJECT:.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_desiglabel-Chof-desig-LxAdv-desig.dita">2013-08-23 - desig/desiglabel to desig: Removed <targetxml>@value</targetxml> from
              target example element <targetxml>desig</targetxml>, as it was decided, that if source
              element doesn't contain <sourcexml>@value</sourcexml> then target element
                <targetxml>desig</targetxml> will not contain <targetxml>@value</targetxml>.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-08-22 - remotelink to ref:crossreference: Not a rule change. Modified Sample #10
              on <sourcexml>ci:cite/ci:content/remotelink</sourcexml>. Removed target attribute
                <targetxml>lnci:cite[@citeref]</targetxml> because value captured in
                <targetxml>ref:crossreference/ref:locator[@anchoridref]</targetxml>.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_link-LxAdv-ref.lnlink.dita">2013-08-21 - link to
              ref:lnlink/@service="ATTACHMENT": Added instruction for when to suppress
                <sourcexml>@status</sourcexml>.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_docinfo.lbu-meta-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta-scheme.dita">2013-08-12 - docinfo:lbu-meta to doc:legacy-metadata[@metadatasource="lbu-meta"]: We
              removed the docinfo:lbu-meta "include" list so now there is only a "drop" list.
              Anything not on the "drop" list should be passed through. Webteam 230557.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_remotelink-self-inter-document-link-LxAdv-intra-document-link.dita">2013-08-12 - remotelink (self inter-document link) to ref:lnlink (intra-document
              link): Changed module heading from ref:crossreference to ref:lnlink. NO instructions
              are changed. WebTeam # 230229. Affects all streams.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_docinfo-LxAdv-doc.metadata_doc.docinfo.dita">2013-08-09 - docinfo to doc:metadata/doc:docinfo: Added instruction for creating
                <targetxml>dc:date[@lnmeta:datetype="conversion-date"]</targetxml>. Previously,
              "conversion-date" was created only if "load-date" was not present. Going forward,
              conversion should always create "conversion-date". This is not a retroactive change.
              It should be applied only to streams developed after Aug. 9 2013.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_XML_Character_Entities-LxAdv-Unicode.dita">2013-08-08 - XML Character Entities to Unicode code points: This change does not
              represent a change to conversion but rather documentation of the existing
              behavior.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_remotelink-self-inter-document-link-LxAdv-intra-document-link.dita">2013-08-07 - remotelink (self inter-document link) to ref:lnlink (intra-document
              link): Changed target to <targetxml>ref:lnlink</targetxml>; formerly
                <targetxml>ref:crossreference</targetxml>. Changed because the only supported markup
              for intradoc linking is <targetxml>ref:lnlink</targetxml>, as per Bency Thomas.
              WebTeam # 230229. Affects all streams.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_docinfo.lbu-meta-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta-scheme.dita">2013-08-02 - docinfo:lbu-meta to doc:legacy-metadata[@metadatasource="lbu-meta"]:
              Added <sourcexml>@name="selection_criteria_variant"</sourcexml> to the list of values
              in docinfo:metaitem/@name that should be retained. And added a example.</xref>
          </li>
        </ul>
      </p>
    </section>
    <section>
      <title>Regulation Schema 7.1_PROD</title>
      <p>2013-08-01 <ul>
          <li>
            <xref href="../../common_newest/Rosetta_link-LxAdv-ref.lnlink.dita">2013-08-01 - added
              new common module.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_docinfo.alt-renditions-LxAdv-doc.alt-renditions.dita">2013-08-01 - added new common module.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_docinfo.doc-heading-LxAdv-dc.title.dita">2013-08-01 - docinfo:doc-heading to dc:title: Added Instruction when
                <sourcexml>docinfo:doc-heading</sourcexml> contains child element
                <sourcexml>nl</sourcexml>.</xref>
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
            <xref href="../../common_newest/Rosetta_docinfo-LxAdv-doc.metadata_doc.docinfo.dita">2013-07-18 - docinfo to doc:metadata/doc:docinfo: Added
                <sourcexml>@excludefromalerts</sourcexml> as one of the
                <sourcexml>docinfo</sourcexml> attributes to carry through</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_docinfo.doc-lang-and-doc-country-LxAdv-ROOT_xml.lang.dita">2013-07-16 - docinfo:doc-lang and docinfo:doc-country to @xml:lang and @xml:ID:
              Instruction narrative edited for language; no changes to mappings, no impact to
              stylesheets.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_title-LxAdv-title.dita">2013-07-05 - title to
              title: Added Instruction when <sourcexml>title</sourcexml> contains word "TITLE:
              ".</xref>
          </li>
        </ul>
      </p>
    </section>
    <section>
      <title>Regulation V6.2_PROD</title>
      <p>2013-06-06 <ul>
          <li>
            <xref href="../../common_newest/Rosetta_UK_docinfo.custom-metafields-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta.meta.metaitem.dita">2013-06-03 - Instruction changed now: docinfo:custom-metafields to
              doc:legacy-metadata[@metadatasource="lbu-meta"]/meta/metaitem.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-06-03 - remotelink to ref:crossreference: Updated the Target XML 2 by removing
              the <targetxml>@crossreferencetype</targetxml> for Canada example.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_docinfo.lbu-meta-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta-scheme.dita">2013-05-31 - docinfo:lbu-meta to doc:legacy-metadata[@metadatasource="lbu-meta"]:
              Added "document-type" to the list of values in docinfo:metaitem/@name that should be
              retained.</xref>
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
            <xref href="../../common_newest/Rosetta_docinfo-LxAdv-doc.metadata_doc.docinfo.dita">2013-05-16 - docinfo to doc:metadata/doc:docinfo: Fixed typo updating urn:contentitem
              to urn:contentItem</xref>
          </li>
        </ul>
      </p>
    </section>
    <section>
      <title>Regulation V6.2_PROD (Schema Release Date - 2013-05-03).</title>
      <p>2013-05-13 <ul>
          <li>
            <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-05-08 - remotelink to ref:crossreference: Extended the list of allowable values
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
            <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-04-30 - remotelink to ref:crossreference: Updated target sample according to
              latest Apollo markup.</xref>
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
            <xref href="../../common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2013-04-12 - docinfo:assoc-links to doc:related-content: This module was changed from
              UK specific to applicable to all LBUs</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-04-10 - remotelink to ref:crossreference: Added Source XML 7a: for link to URL,
              with non-URL text content because it was previously missing, only the target example
              was here.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2013-04-10 - docinfo:assoc-links to doc:related-content: An example for related
              content Source and Target XML 4</xref>
          </li>
        </ul>
      </p>
    </section>

    <section>
      <title>Regulation V5.0_PROD (Schema Release Date - 03/08/2013).</title>
      <p>2013-03-11 <ul>
          <li><xref href="Introduction.dita">2013-03-08 - Added Information of new Schema Released
              for <b>Regulation V5.0_PROD</b></xref>.</li>
          <li><xref href="../../common_newest/Rosetta_nl-Chof-ci.content-LxAdv-SingleSpaceCharacter.dita">2013-03-08 - Added new dita for handling
            <sourcexml>ci:content/nl</sourcexml></xref>.</li>
          <li><xref href="../../common_newest/Rosetta_date-LxAdv-date.dita">2013-0c3-08 - date to
              date: Added instruction for @normdate attribute that falls on various NL date
              elements</xref>
          </li>
          <li><xref href="../../common_newest/Rosetta_heading-LxAdv-heading.dita">2013-03-06 -
              heading to heading: Removed instructions/rules for exceptional desig scenario and
              deprecated attribute <targetxml>@followstitle</targetxml>.</xref>
          </li>
        </ul>
      </p>
    </section>
    <section>
      <title>2013-01-04</title>
      <p>First release.</p>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK07-Regulations\Change-Log.dita  -->
 

</xsl:stylesheet>