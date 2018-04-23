<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:ci="http://www.lexis-nexis.com/ci" xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" xmlns:source_lnci="http://www.lexis-nexis.com/lnci" xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns:person="http://www.lexisnexis.com/xmlschemas/content/shared/person/1/" xmlns:proc="http://www.lexisnexis.com/xmlschemas/content/shared/process-elements/1/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita case ci docinfo lnci">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="change-log">
    <title>Change Log for Standard legis</title>
    <body>
        <section>
            <title>Legis 8.3:PROD</title>
            <p><b>2013-08-21</b></p>
            <ul>
                <li><xref href="../../DITA-Standard/Legislation/legis-leg.assentdate.dita">2013-08-14 - leg:assentdate: Instruction narrative edited for language; no changes to mappings, no impact to stylesheets.</xref></li>
                <li><xref href="../../DITA-Standard/Legislation/legis-leg.enactdate.dita">2013-08-14 - leg:enactdate: Instruction narrative edited for language; no changes to mappings, no impact to stylesheets.</xref></li>
            <li>
               <xref href="../../DITA-Standard/Legislation/legis-leg.effdate.dita">2013-08-14 - leg:effdate: Instruction narrative edited for language; no changes to mappings, no impact to stylesheets.</xref>
            </li>
            <li>
               <xref href="../../DITA-Standard/Legislation/legis-leg.revisedate.dita">2013-08-14 - leg:revisedate: Instruction narrative edited for language; no changes to mappings, no impact to stylesheets.</xref>
            </li>
            <li>
               <xref href="../../DITA-Standard/Legislation/legis-leg.hier.dita">2013-08-14 - leg:hier: Instruction narrative edited for language; no changes to mappings, no impact to stylesheets.</xref>
            </li>
            <li>
               <xref href="../../common_newest/Rosetta_docinfo.authorattribution-LxAdv-dc.contributor.dita">2013-08-13 - docinfo:authorattribution to dc:contributor: Added instruction and example when
            <sourcexml>person</sourcexml> is an child of
        <sourcexml>docinfo:authorattribution/contrib</sourcexml> and CR# DAAM2013080706295200 has been created to add <targetxml>person:person</targetxml> to the content model of <targetxml>dc:contributor</targetxml>.WebTeam # is 229509</xref>
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
               <xref href="../../DITA-Standard/Legislation/legis-Introduction.dita">2013-07-16 - Introduction: Instruction narrative edited for language; no changes to mappings, no impact to stylesheets.</xref>
            </li>
            <li>
               <xref href="../../common_newest/Rosetta_docinfo.doc-lang-and-doc-country-LxAdv-ROOT_xml.lang.dita">2013-07-16 - docinfo:doc-lang and docinfo:doc-country to @xml:lang and @xml:ID: Instruction narrative edited for language; no changes to mappings, no impact to stylesheets.</xref>
            </li>
            <li>
               <xref href="../../DITA-Standard/Legislation/legis-Head.dita">2013-07-16 - Head: Instruction narrative edited for language; no changes to mappings, no impact to stylesheets.</xref>
            </li>
            <li>
               <xref href="../../DITA-Standard/Legislation/legis-docinfo-normcite.dita">2013-07-16 - docinfo:normcite: Instruction narrative edited for language; no changes to mappings, no impact to stylesheets.</xref>
            </li>
            <li>
               <xref href="../../DITA-Standard/Legislation/legis-leg.info.dita">2013-07-16 - leg:info: Instruction narrative edited for language; no changes to mappings, no impact to stylesheets.</xref>
            </li>
            <li>
               <xref href="../../DITA-Standard/Legislation/legis-leg.categories.dita">2013-07-16 - leg:categories: Instruction narrative edited for language; no changes to mappings, no impact to stylesheets.</xref>
            </li>
            <li>
               <xref href="../../DITA-Standard/Legislation/legis-leg.dates.dita">2013-07-16 - leg:dates: Instruction narrative edited for language; no changes to mappings, no impact to stylesheets.</xref>
            </li>
            <li>
               <xref href="../../DITA-Standard/Legislation/legis-leg.assentdate.dita">2013-07-16 - leg:assentdate: Instruction narrative edited for language; no changes to mappings, no impact to stylesheets.</xref>
            </li>
            <li>
               <xref href="../../DITA-Standard/Legislation/legis-leg.enactdate.dita">2013-07-16 - leg:enactdate: Instruction narrative edited for language; no changes to mappings, no impact to stylesheets.</xref>
            </li>
            <li>
               <xref href="../../DITA-Standard/Legislation/legis-leg.effdate.dita">2013-07-16 - leg:effdate: Instruction narrative edited for language; no changes to mappings, no impact to stylesheets.</xref>
            </li>
            <li>
               <xref href="../../DITA-Standard/Legislation/legis-leg.revisedate.dita">2013-07-16 - leg:revisedate: Instruction narrative edited for language; no changes to mappings, no impact to stylesheets.</xref>
            </li>
            <li>
               <xref href="../../DITA-Standard/Legislation/legis-leg.hier.dita">2013-07-16 - leg:hier: Instruction narrative edited for language; no changes to mappings, no impact to stylesheets.</xref>
            </li>
            <li>
               <xref href="../../DITA-Standard/Legislation/legis-leg.history.dita">2013-07-16 - leg:history: Instruction narrative edited for language; no changes to mappings, no impact to stylesheets.</xref>
            </li>
            <li>
               <xref href="../../DITA-Standard/Legislation/legis-leg.juris.dita">2013-07-16 - leg:juris: Instruction narrative edited for language; no changes to mappings, no impact to stylesheets.</xref>
            </li>
            <li>
               <xref href="../../DITA-Standard/Legislation/legis-leg.num_ci.cite.dita">2013-07-16 - leg:num/ci:cite: Instruction narrative edited for language; no changes to mappings, no impact to stylesheets.</xref>
            </li>
            <li>
               <xref href="../../DITA-Standard/Legislation/legis-leg.officialname.dita">2013-07-16 - leg:officialname: Instruction narrative edited for language; no changes to mappings, no impact to stylesheets.</xref>
            </li>
            <li>
               <xref href="../../DITA-Standard/Legislation/legis-leg.officialnum.dita">2013-07-16 - leg:officialnum: Instruction narrative edited for language; no changes to mappings, no impact to stylesheets.</xref>
            </li>
            <li>
               <xref href="../../DITA-Standard/Legislation/legis-leg.relatedleg.dita">2013-07-16 - leg:relatedleg: Instruction narrative edited for language; no changes to mappings, no impact to stylesheets.</xref>
            </li>
            <li>
               <xref href="../../DITA-Standard/Legislation/legis-leg.status.dita">2013-07-16 - leg:status: Instruction narrative edited for language; no changes to mappings, no impact to stylesheets.</xref>
            </li>
            <li>
               <xref href="../../DITA-Standard/Legislation/legis-leg.year.dita">2013-07-16 - leg:year: Instruction narrative edited for language; no changes to mappings, no impact to stylesheets.</xref>
            </li>
            <li>
               <xref href="../../DITA-Standard/Legislation/legis-popname.dita">2013-07-16 - popname: Instruction narrative edited for language; no changes to mappings, no impact to stylesheets.</xref>
            </li>
            <li>
               <xref href="../../DITA-Standard/Legislation/legis-Body.dita">2013-07-16 - Body: Instruction narrative edited for language; no changes to mappings, no impact to stylesheets.</xref>
            </li>
            <li>
               <xref href="../../DITA-Standard/Legislation/legis-leg.companion.dita">2013-07-16 - leg:companion: Instruction narrative edited for language; no changes to mappings, no impact to stylesheets.</xref>
            </li>
            <li>
               <xref href="../../DITA-Standard/Legislation/legis-leg.currencydate.dita">2013-07-16 - leg:currencydate: Instruction narrative edited for language; no changes to mappings, no impact to stylesheets.</xref>
            </li>
            <li>
               <xref href="../../DITA-Standard/Legislation/legis-leg.comntry.dita">2013-07-16 - leg:comntry: Instruction narrative edited for language; no changes to mappings, no impact to stylesheets.</xref>
            </li>
            <li>
               <xref href="../../DITA-Standard/Legislation/legis-leg.comntry2.dita">2013-07-16 - Nested level in leg:comntry: Instruction narrative edited for language; no changes to mappings, no impact to stylesheets.</xref>
            </li>
            <li>
               <xref href="../../DITA-Standard/Legislation/legis-leg.endmatter.dita">2013-07-16 - leg:endmatter: Instruction narrative edited for language; no changes to mappings, no impact to stylesheets.</xref>
            </li>
            <li>
               <xref href="../../DITA-Standard/Legislation/legis-leg.empleg.dita">2013-07-16 - leg:empleg: Instruction narrative edited for language; no changes to mappings, no impact to stylesheets.</xref>
            </li>
            <li>
               <xref href="../../DITA-Standard/Legislation/legis-leg.heading.dita">2013-07-16 - leg:heading: Instruction narrative edited for language; no changes to mappings, no impact to stylesheets.</xref>
            </li>
            <li>
               <xref href="../../DITA-Standard/Legislation/legis-leg.histcite.dita">2013-07-16 - leg:histcite: Instruction narrative edited for language; no changes to mappings, no impact to stylesheets.</xref>
            </li>
            <li>
               <xref href="../../DITA-Standard/Legislation/legis-leg.histnote.dita">2013-07-16 - leg:histnote: Instruction narrative edited for language; no changes to mappings, no impact to stylesheets.</xref>
            </li>
            <li>
               <xref href="../../DITA-Standard/Legislation/legis-leg.level.dita">2013-07-16 - leg:level: Instruction narrative edited for language; no changes to mappings, no impact to stylesheets.</xref>
            </li>
            <li>
               <xref href="../../DITA-Standard/Legislation/legis-leg.levelbody.dita">2013-07-16 - leg:levelbody and leg:bodytext: Instruction narrative edited for language; no changes to mappings, no impact to stylesheets.</xref>
            </li>
            <li>
               <xref href="../../DITA-Standard/Legislation/legis-leg.levelstatus.dita">2013-07-16 - leg:levelstatus: Instruction narrative edited for language; no changes to mappings, no impact to stylesheets.</xref>
            </li>
            <li>
               <xref href="../../DITA-Standard/Legislation/legis-leg.level-not-in-force.dita">2013-07-16 - leg:level-not-in-force: Instruction narrative edited for language; no changes to mappings, no impact to stylesheets.</xref>
            </li>
            <li>
               <xref href="../../DITA-Standard/Legislation/legis-leg.tableofamend.dita">2013-07-16 - leg:tableofamend: Instruction narrative edited for language; no changes to mappings, no impact to stylesheets.</xref>
            </li>
            <li>
               <xref href="../../DITA-Standard/Legislation/legis-leg.longtitle.dita">2013-07-16 - leg:longtitle: Instruction narrative edited for language; no changes to mappings, no impact to stylesheets.</xref>
            </li>
            <li>
               <xref href="../../DITA-Standard/Legislation/legis-marginal-note.dita">2013-07-16 - leg:marginal-note: Instruction narrative edited for language; no changes to mappings, no impact to stylesheets.</xref>
            </li>
            <li>
               <xref href="../../DITA-Standard/Legislation/legis-leg.preamble.dita">2013-07-16 - leg:preamble: Instruction narrative edited for language; no changes to mappings, no impact to stylesheets.</xref>
            </li>
            <li>
               <xref href="../../DITA-Standard/Legislation/legis-leg.sectionlist.dita">2013-07-16 - leg:sectionlist: Instruction narrative edited for language; no changes to mappings, no impact to stylesheets.</xref>
            </li>
            <li>
               <xref href="../../common_newest/Rosetta_figure-LxAdv-figure.dita">2013-07-15 - figure to figure: Added instructions for handling
                    figure/caption and an example demonstrating the mapping.</xref>
            </li>
            <li>
               <xref href="../../DITA-Standard/Legislation/legis-docinfo-normcite.dita">2013-07-08 - docinfo:normcite: Created.</xref>
            </li>
            <li>
               <xref href="../../DITA-Standard/Legislation/legis-leg.info.dita">2013-07-08 - leg:info: Created.</xref>
            </li>
            <li>
               <xref href="../../DITA-Standard/Legislation/legis-leg.categories.dita">2013-07-08 - leg:categories: Created.</xref>
            </li>
            <li>
               <xref href="../../DITA-Standard/Legislation/legis-leg.dates.dita">2013-07-08 - leg:dates: Created.</xref>
            </li>
            <li>
               <xref href="../../DITA-Standard/Legislation/legis-leg.assentdate.dita">2013-07-08 - leg:assentdate: Created.</xref>
            </li>
            <li>
               <xref href="../../DITA-Standard/Legislation/legis-leg.enactdate.dita">2013-07-08 - leg:enactdate: Created.</xref>
            </li>
            <li>
               <xref href="../../DITA-Standard/Legislation/legis-leg.effdate.dita">2013-07-08 - leg:effdate: Created.</xref>
            </li>
            <li>
               <xref href="../../DITA-Standard/Legislation/legis-leg.revisedate.dita">2013-07-08 - leg:revisedate: Created.</xref>
            </li>
            <li>
               <xref href="../../DITA-Standard/Legislation/legis-leg.hier.dita">2013-07-08 - leg:hier: Created.</xref>
            </li>
            <li>
               <xref href="../../DITA-Standard/Legislation/legis-leg.history.dita">2013-07-08 - leg:history: Created.</xref>
            </li>
            <li>
               <xref href="../../DITA-Standard/Legislation/legis-leg.juris.dita">2013-07-08 - leg:juris: Created.</xref>
            </li>
            <li>
               <xref href="../../DITA-Standard/Legislation/legis-leg.num_ci.cite.dita">2013-07-08 - leg:num/ci:cite: Created.</xref>
            </li>
            <li>
               <xref href="../../DITA-Standard/Legislation/legis-leg.officialname.dita">2013-07-08 - leg:officialname: Created.</xref>
            </li>
            <li>
               <xref href="../../DITA-Standard/Legislation/legis-leg.officialnum.dita">2013-07-08 - leg:officialnum: Created.</xref>
            </li>
            <li>
               <xref href="../../DITA-Standard/Legislation/legis-leg.relatedleg.dita">2013-07-08 - leg:relatedleg: Created.</xref>
            </li>
            <li>
               <xref href="../../DITA-Standard/Legislation/legis-leg.status.dita">2013-07-08 - leg:status: Created.</xref>
            </li>
            <li>
               <xref href="../../DITA-Standard/Legislation/legis-leg.year.dita">2013-07-08 - leg:year: Created.</xref>
            </li>
            <li>
               <xref href="../../DITA-Standard/Legislation/legis-popname.dita">2013-07-08 - popname: Created.</xref>
            </li>
            <li>
               <xref href="../../DITA-Standard/Legislation/legis-Body.dita">2013-07-08 - Body: Created.</xref>
            </li>
            <li>
               <xref href="../../DITA-Standard/Legislation/legis-leg.companion.dita">2013-07-08 - leg:companion: Created.</xref>
            </li>
            <li>
               <xref href="../../DITA-Standard/Legislation/legis-leg.currencydate.dita">2013-07-08 - leg:currencydate: Created.</xref>
            </li>
            <li>
               <xref href="../../DITA-Standard/Legislation/legis-leg.comntry.dita">2013-07-08 - leg:comntry: Created.</xref>
            </li>
            <li>
               <xref href="../../DITA-Standard/Legislation/legis-leg.comntry2.dita">2013-07-08 - Nested level in leg:comntry: Created.</xref>
            </li>
            <li>
               <xref href="../../DITA-Standard/Legislation/legis-leg.endmatter.dita">2013-07-08 - leg:endmatter: Created.</xref>
            </li>
            <li>
               <xref href="../../DITA-Standard/Legislation/legis-leg.empleg.dita">2013-07-08 - leg:empleg: Created.</xref>
            </li>
            <li>
               <xref href="../../DITA-Standard/Legislation/legis-leg.heading.dita">2013-07-08 - leg:heading: Created.</xref>
            </li>
            <li>
               <xref href="../../DITA-Standard/Legislation/legis-leg.histcite.dita">2013-07-08 - leg:histcite: Created.</xref>
            </li>
            <li>
               <xref href="../../DITA-Standard/Legislation/legis-leg.histnote.dita">2013-07-08 - leg:histnote: Created.</xref>
            </li>
            <li>
               <xref href="../../DITA-Standard/Legislation/legis-leg.level.dita">2013-07-08 - leg:level: Created.</xref>
            </li>
            <li>
               <xref href="../../DITA-Standard/Legislation/legis-leg.levelbody.dita">2013-07-08 - leg:levelbody and leg:bodytext: Created.</xref>
            </li>
            <li>
               <xref href="../../DITA-Standard/Legislation/legis-leg.levelstatus.dita">2013-07-08 - leg:levelstatus: Created.</xref>
            </li>
            <li>
               <xref href="../../DITA-Standard/Legislation/legis-leg.level-not-in-force.dita">2013-07-08 - leg:level-not-in-force: Created.</xref>
            </li>
            <li>
               <xref href="../../DITA-Standard/Legislation/legis-leg.prelim.dita">2013-07-08 - leg:prelim: Created.</xref>
            </li>
            <li>
               <xref href="../../DITA-Standard/Legislation/legis-leg.tableofamend.dita">2013-07-08 - leg:tableofamend: Created.</xref>
            </li>
            <li>
               <xref href="../../DITA-Standard/Legislation/legis-leg.longtitle.dita">2013-07-08 - leg:longtitle: Created.</xref>
            </li>
            <li>
               <xref href="../../DITA-Standard/Legislation/legis-marginal-note.dita">2013-07-08 - leg:marginal-note: Created.</xref>
            </li>
            <li>
               <xref href="../../DITA-Standard/Legislation/legis-leg.preamble.dita">2013-07-08 - leg:preamble: Created.</xref>
            </li>
            <li>
               <xref href="../../DITA-Standard/Legislation/legis-leg.sectionlist.dita">2013-07-08 - leg:sectionlist: Created.</xref>
            </li>
            <li>
               <xref href="../../DITA-Standard/Legislation/legis-form.dita">2013-07-08 - form: Created.</xref>
            </li>
            <li>
               <xref href="../../DITA-Standard/Legislation/legis-index.dita">2013-07-08 - index: Created.</xref>
            </li>
            <li>
               <xref href="../../common_newest/Rosetta_title-LxAdv-title.dita">2013-07-05 - title to title: Added Instruction when <sourcexml>title</sourcexml> contains word "TITLE: ".</xref>
            </li>
            <li>
               <xref href="../../common_newest/Rosetta_docinfo.authorattribution-LxAdv-dc.contributor.dita">2013-06-25 - docinfo:authorattribution to dc:contributor: added to AU and NZ ditamap for content enrichment</xref>
            </li>
            <li>
               <xref href="../../common_newest/Rosetta_docinfo.currencystatement-LxAdv-currencystatement.dita">2013-06-25 - docinfo:currencystatement to doc:docinfo/currencystatement: added to AU and NZ ditamap for content enrichment</xref>
            </li>
            <li>
               <xref href="../../common_newest/Rosetta_docinfo.overview-LxAdv-docinfo.overview.dita">2013-06-25 - docinfo:overview to doc:overview: added to AU and NZ ditamap for content enrichment</xref>
            </li>
            <li>
               <xref href="../../common_newest/Rosetta_inlineobject-DescendantOf-title-LxAdv-ref.inlineobject.dita">2013-06-18 - inlineobject[ancestor::title] to ref:inlineobject: Added an example in which inlineobject is a
                    direct child of title.</xref>
            </li>
            <li>
               <xref href="../../common_newest/Rosetta_copyright-LxAdv-copyright.dita">2013-06-17 - copyright to copyright: Added an example when <sourcexml>copyright-holder</sourcexml> is not present in the source.</xref>
            </li>
            <li>
               <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-06-03 - remotelink to ref:crossreference: Updated the Target XML 2 by removing the <targetxml>@crossreferencetype</targetxml> for Canada example.</xref>
            </li>
            <li>
               <xref href="../../common_newest/Rosetta_docinfo.lbu-meta-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta-scheme.dita">2013-05-31 - docinfo:lbu-meta to doc:legacy-metadata[@metadatasource="lbu-meta"]: Added "document-type" to the list of values
                in docinfo:metaitem/@name that should be retained.</xref>
            </li>
            <li>
               <xref href="../../common_newest/Rosetta_glp.note_blockquote_p_text_inlineobject-LxAdv-note_bodytext_p_text.dita">2013-05-29 - glp:note:  Corrected the file name for <sourcexml>inlineobject</sourcexml> in order to make it linkable.</xref>
            </li>
            <li>
               <xref href="../../common_newest/Rosetta_docinfo.versioninfo-LxAdv-doc.versioninfo-scheme.dita">2013-05-24 - docinfo:versioninfo to doc:versioninfo: Instructions added for handling empty use cases of <sourcexml>docinfo:versioninfo</sourcexml> for Canada content stream.</xref>
            </li>
            <li>
               <xref href="../../common_newest/Rosetta_inlineobject-LxAdv-ref.inlineobject.dita">2013-05-24 - inlineobject to ref:inlineobject: Updated instruction for handling of inlineobject when smi is present and some of the verbiage is changed.</xref>
            </li>
            <li>
               <xref href="../../common_newest/Rosetta_inlineobject-LxAdv-figure_ref.inlineobject.dita">2013-05-24 - inlineobject to figure/ref:inlineobject: Updated target example, "when smi is present".</xref>
            </li>
            <li>
               <xref href="../../common_newest/Rosetta_link-LxAdv-ref.lnlink.dita">2013-05-24 - link to ref:lnlink/@service="ATTACHMENT": Updated instruction for handling of link when smi is present and some of the verbiage is changed.</xref>
            </li>
            <li>
               <xref href="../../common_newest/Rosetta_CAN_title-Chof-leg.heading_to-LexisAdvance_heading_title.dita">2013-05-22 - leg:heading/title to heading/title: Suppressed the "[@align="center"]" attribute in target
					mapping and this rule will be applicable for CA05- Acts &amp; Bills, CA06-Regs
					and CA07-Court Rules.</xref>
            </li>
            <li>
               <xref href="../../common_newest/Rosetta_docinfo-LxAdv-doc.metadata_doc.docinfo.dita">2013-05-16 - docinfo to doc:metadata/doc:docinfo: Fixed typo updating urn:contentitem to
                        urn:contentItem</xref>
            </li>
            <li>
               <xref href="../../common_newest/Rosetta_blockquote-LxAdv-blockquote.dita">2013-05-08 - blockquote to blockquote: Extended the list of allowable values for image handling.</xref>
            </li>
            <li>
               <xref href="../../common_newest/Rosetta_figure-LxAdv-figure.dita">2013-05-08 - figure to figure: Extended the list of allowable values for
                    image handling.</xref>
            </li>
            <li>
               <xref href="../../common_newest/Rosetta_glp.note-Chof-figure-LxAdv-figure.dita">2013-05-08 - (Legislation &amp; Regulation) figure/glp:note to figure: Extended the list of allowable values for image handling.</xref>
            </li>
            <li>
               <xref href="../../common_newest/Rosetta_inlineobject-LxAdv-ref.inlineobject.dita">2013-05-08 - inlineobject to ref:inlineobject: Extended the list of allowable values for image handling.</xref>
            </li>
            <li>
               <xref href="../../common_newest/Rosetta_inlineobject-Chof-remotelink-LxAdv-ref.crossreference_ref.content_ref.inlineobject.dita">2013-05-08 - inlineobject Child of remotelink to ref:inlineobject: Extended the list of allowable values for image handling.</xref>
            </li>
            <li>
               <xref href="../../common_newest/Rosetta_inlineobject-LxAdv-figure_ref.inlineobject.dita">2013-05-08 - inlineobject to figure/ref:inlineobject: Extended the list of allowable values for image handling.</xref>
            </li>
            <li>
               <xref href="../../common_newest/Rosetta_inlineobject-Chof-h-LxAdv-figure_ref.inlineobject.dita">2013-05-08 - h/inlineobject to figure/ref:inlineobject: Extended the list of allowable values for image handling.</xref>
            </li>
            <li>
               <xref href="../../common_newest/Rosetta_inlineobject-Chof-emph-LxAdv-figure_ref.inlinobject.dita">2013-05-08 - emph/inlineobject to figure/ref:inlineobject: Extended the list of allowable values for image handling.</xref>
            </li>
            <li>
               <xref href="../../common_newest/Rosetta_inlineobject-Chof-sub-LxAdv-figure_ref.inlineobject.dita">2013-05-08 - sub/inlineobject to figure/ref:inlineobject: Extended the list of allowable values for image handling.</xref>
            </li>
            <li>
               <xref href="../../common_newest/Rosetta_inlineobject-Chof-glp.note-LxAdv-SUPPRESS.dita">2013-05-08 - glp:note/inlineobject to: Extended the list of allowable values for image handling.</xref>
            </li>
            <li>
               <xref href="../../common_newest/Rosetta_inlineobject-Chof-dispformula-LxAdv-formula_ref.inlineobject.dita">2013-05-08 - dispformula/inlineobject to formula/ref:inlineobject: Extended the list of allowable values for image handling.</xref>
            </li>
            <li>
               <xref href="../../common_newest/Rosetta_inlineobject-Chof-p_blockquote-LxAdv-p_figure_ref.inlineobject.dita">2013-05-08 - p/blockquote/inlineobject to p/figure/ref:inlineobject: Extended the list of allowable values for image handling.</xref>
            </li>
            <li>
               <xref href="../../common_newest/Rosetta_inlineobject-Chof-bodytext-LxAdv-bodytext_p_text_figure_ref.inlineobject.dita">2013-05-08 - bodytext/inlineobject to bodytext/p/text/figure/ref:inlineobject: Extended the list of allowable values for image handling.</xref>
            </li>
            <li>
               <xref href="../../common_newest/Rosetta_p-limited_remotelink-LxAdv-p_text_ref.lnlink.dita">2013-05-08 - p-limited/emph to p/text/emph: Extended the list of allowable values for image handling.</xref>
            </li>
            <li>
               <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-05-08 - remotelink to ref:crossreference: Extended the list of allowable values for image handling.</xref>
            </li>
            <li>
               <xref href="../../common_newest/Rosetta_inlineobject-LxAdv-ref.inlineobject.dita">2013-05-02 - inlineobject to ref:inlineobject: Some of the verbiage is changed and updated target example to if the SMI is present then a <targetxml>ref:inliineobject/@status</targetxml> attribute is set to “valid”.</xref>
            </li>
            <li>
               <xref href="../../common_newest/Rosetta_inlineobject-LxAdv-figure_ref.inlineobject.dita">2013-05-02 - inlineobject to figure/ref:inlineobject: Updated target example to if the SMI is present then a <targetxml>ref:inliineobject/@status</targetxml> attribute is set to “valid”.</xref>
            </li>
            <li>
               <xref href="../../common_newest/Rosetta_link-LxAdv-ref.lnlink.dita">2013-05-02 - link to ref:lnlink/@service="ATTACHMENT": Some of the verbiage is changed and updated target example to if the SMI is present then a <targetxml>ref:lnlink/@status</targetxml> attribute is set to “valid”.</xref>
            </li>
            <li>
               <xref href="../../common_newest/Rosetta_docinfo.alt-renditions-LxAdv-doc.alt-renditions.dita">2013-05-01 - docinfo:alt-renditions/docinfo:alt-rendition to doc:alt-renditions/doc:alt-rendition: Updated instructions and target example per latest Apollo markup.</xref>
            </li>
            <li>
               <xref href="../../common_newest/Rosetta_blockquote-LxAdv-blockquote.dita">2013-05-01 - blockquote to blockquote: Removed instructions for section
                "Pre-Release 4.0" because according to latest Apollo markup, section
                "Release 4.0 and after" and section "Pre-Release 4.0" now have
                similar conversion markup.</xref>
            </li>
            <li>
               <xref href="../../common_newest/Rosetta_blockquote-link-LxAdv-blockquote-p-text-ref.lnlink.dita">2013-05-01 - blockquote/link to blockquote/p/text/ref:lnlink: Updated instructions and target example per latest Apollo markup.</xref>
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
               <xref href="../../common_newest/Rosetta_inlineobject-LxAdv-ref.inlineobject.dita">2013-05-01 - inlineobject to ref:inlineobject: Removed instructions for section
                "Pre-Release 4.0" because according to latest Apollo markup, section
                "Release 4.0 and after" and section "Pre-Release 4.0" now have
                similar conversion markup.</xref>
            </li>
            <li>
               <xref href="../../common_newest/Rosetta_inlineobject-Chof-remotelink-LxAdv-ref.crossreference_ref.content_ref.inlineobject.dita">2013-05-01 - inlineobject Child of remotelink to ref:inlineobject: Removed instructions for section
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
               <xref href="../../common_newest/Rosetta_inlineobject-Chof-h-LxAdv-figure_ref.inlineobject.dita">2013-05-01 - h/inlineobject to figure/ref:inlineobject: Removed instructions for section
                "Pre-Release 4.0" because according to latest Apollo markup, section
                "Release 4.0 and after" and section "Pre-Release 4.0" now have
                similar conversion markup.</xref>
            </li>
            <li>
               <xref href="../../common_newest/Rosetta_inlineobject-Chof-emph-LxAdv-figure_ref.inlinobject.dita">2013-05-01 - emph/inlineobject to figure/ref:inlineobject: Removed instructions for section
                "Pre-Release 4.0" because according to latest Apollo markup, section
                "Release 4.0 and after" and section "Pre-Release 4.0" now have
                similar conversion markup.</xref>
            </li>
            <li>
               <xref href="../../common_newest/Rosetta_inlineobject-Chof-sub-LxAdv-figure_ref.inlineobject.dita">2013-05-01 - sub/inlineobject to figure/ref:inlineobject: Removed instructions for section
                "Pre-Release 4.0" because according to latest Apollo markup, section
                "Release 4.0 and after" and section "Pre-Release 4.0" now have
                similar conversion markup.</xref>
            </li>
            <li>
               <xref href="../../common_newest/Rosetta_inlineobject-Chof-glp.note-LxAdv-SUPPRESS.dita">2013-05-01 - glp:note/inlineobject to: Removed instructions for section
                "Pre-Release 4.0" because according to latest Apollo markup, section
                "Release 4.0 and after" and section "Pre-Release 4.0" now have
                similar conversion markup.</xref>
            </li>
            <li>
               <xref href="../../common_newest/Rosetta_inlineobject-Chof-dispformula-LxAdv-formula_ref.inlineobject.dita">2013-05-01 - dispformula/inlineobject to formula/ref:inlineobject: Removed instructions for section
                "Pre-Release 4.0" because according to latest Apollo markup, section
                "Release 4.0 and after" and section "Pre-Release 4.0" now have
                similar conversion markup.</xref>
            </li>
            <li>
               <xref href="../../common_newest/Rosetta_inlineobject-Chof-p_blockquote-LxAdv-p_figure_ref.inlineobject.dita">2013-05-01 - p/blockquote/inlineobject to p/figure/ref:inlineobject: Removed instructions for section
                "Pre-Release 4.0" because according to latest Apollo markup, section
                "Release 4.0 and after" and section "Pre-Release 4.0" now have
                similar conversion markup.</xref>
            </li>
            <li>
               <xref href="../../common_newest/Rosetta_inlineobject-Chof-bodytext-LxAdv-bodytext_p_text_figure_ref.inlineobject.dita">2013-05-01 - bodytext/inlineobject to bodytext/p/text/figure/ref:inlineobject: Removed instructions for section
                "Pre-Release 4.0" because according to latest Apollo markup, section
                "Release 4.0 and after" and section "Pre-Release 4.0" now have
                similar conversion markup.</xref>
            </li>
            <li>
               <xref href="../../common_newest/Rosetta_link-LxAdv-ref.lnlink.dita">2013-05-01 - link to ref:lnlink/@service="ATTACHMENT": Updated instructions and target example per
                latest Apollo markup.</xref>
            </li>
            <li>
               <xref href="../../common_newest/Rosetta_p-limited_remotelink-LxAdv-p_text_ref.lnlink.dita">2013-05-01 - p-limited/emph to p/text/emph: Removed instructions for section
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
               <xref href="../../common_newest/Rosetta_blockquote-LxAdv-blockquote.dita">2013-04-30 - blockquote to blockquote: Updated target sample according to latest Apollo markup.</xref>
            </li>
            <li>
               <xref href="../../common_newest/Rosetta_figure-LxAdv-figure.dita">2013-04-30 - figure to figure: Updated target sample according to latest
                    Apollo markup.</xref>
            </li>
            <li>
               <xref href="../../common_newest/Rosetta_glp.note-Chof-figure-LxAdv-figure.dita">2013-04-30 - (Legislation &amp; Regulation) figure/glp:note to figure: Updated target sample according to latest Apollo markup.</xref>
            </li>
            <li>
               <xref href="../../common_newest/Rosetta_inlineobject-LxAdv-ref.inlineobject.dita">2013-04-30 - inlineobject to ref:inlineobject: Updated target sample according to latest Apollo markup.</xref>
            </li>
            <li>
               <xref href="../../common_newest/Rosetta_inlineobject-Chof-remotelink-LxAdv-ref.crossreference_ref.content_ref.inlineobject.dita">2013-04-30 - inlineobject Child of remotelink to ref:inlineobject: Updated target sample according to latest Apollo markup.</xref>
            </li>
            <li>
               <xref href="../../common_newest/Rosetta_inlineobject-LxAdv-figure_ref.inlineobject.dita">2013-04-30 - inlineobject to figure/ref:inlineobject: Updated target sample according to latest Apollo markup.</xref>
            </li>
            <li>
               <xref href="../../common_newest/Rosetta_inlineobject-Chof-h-LxAdv-figure_ref.inlineobject.dita">2013-04-30 - h/inlineobject to figure/ref:inlineobject: Updated target sample according to latest Apollo markup.</xref>
            </li>
            <li>
               <xref href="../../common_newest/Rosetta_inlineobject-Chof-emph-LxAdv-figure_ref.inlinobject.dita">2013-04-30 - emph/inlineobject to figure/ref:inlineobject: Updated target sample according to latest Apollo markup.</xref>
            </li>
            <li>
               <xref href="../../common_newest/Rosetta_inlineobject-Chof-sub-LxAdv-figure_ref.inlineobject.dita">2013-04-30 - sub/inlineobject to figure/ref:inlineobject: Updated target sample according to latest Apollo markup.</xref>
            </li>
            <li>
               <xref href="../../common_newest/Rosetta_inlineobject-Chof-glp.note-LxAdv-SUPPRESS.dita">2013-04-30 - glp:note/inlineobject to: Updated target sample according to latest Apollo markup.</xref>
            </li>
            <li>
               <xref href="../../common_newest/Rosetta_inlineobject-Chof-dispformula-LxAdv-formula_ref.inlineobject.dita">2013-04-30 - dispformula/inlineobject to formula/ref:inlineobject: Updated target sample according to latest Apollo markup.</xref>
            </li>
            <li>
               <xref href="../../common_newest/Rosetta_inlineobject-Chof-p_blockquote-LxAdv-p_figure_ref.inlineobject.dita">2013-04-30 - p/blockquote/inlineobject to p/figure/ref:inlineobject: Updated target sample according to latest Apollo markup.</xref>
            </li>
            <li>
               <xref href="../../common_newest/Rosetta_inlineobject-Chof-bodytext-LxAdv-bodytext_p_text_figure_ref.inlineobject.dita">2013-04-30 - bodytext/inlineobject to bodytext/p/text/figure/ref:inlineobject: Updated target sample according to latest Apollo markup.</xref>
            </li>
            <li>
               <xref href="../../common_newest/Rosetta_p-limited_remotelink-LxAdv-p_text_ref.lnlink.dita">2013-04-30 - p-limited/emph to p/text/emph: Updated target sample according to latest Apollo markup.</xref>
            </li>
            <li>
               <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-04-30 - remotelink to ref:crossreference: Updated target sample according to latest Apollo markup.</xref>
            </li>
            <li>
               <xref href="../../common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2013-04-24 - ci.cite to lnci.cite: Added a mapping for
						<sourcexml>ci:procphrase</sourcexml> to
						<sourcexml>lnci:procphrase</sourcexml>
               </xref>
            </li>
            <li>
               <xref href="../../common_newest/Rosetta_inlineobject-Chof-emph_sub-LxAdv-figure_ref.inlinobject.dita">2013-04-22 - emph/sub/inlineobject to figure/ref:inlineobject: Created.</xref>
            </li>
            <li>
               <xref href="../../common_newest/Rosetta_inlineobject-Chof-sub_AND_followingSibling_sub_inlineobject-LxAdv-formula.dita">2013-04-22 - sub/inlineobject[following-sibling::sub/inlineobject] to formula: Created.</xref>
            </li>
            <li>
               <xref href="../../common_newest/Rosetta_docinfo.doc-lang-and-doc-country-LxAdv-ROOT_xml.lang.dita">2013-04-19 - docinfo:doc-lang and docinfo:doc-country to @xml:lang and @xml:ID: Added note about applicability of
                    restrictions and required modifications for <targetxml>xml:id</targetxml> to
                    other scenarios.</xref>
            </li>
            <li>
               <xref href="../../common_newest/Rosetta_inlineobject-DescendantOf-title-LxAdv-ref.inlineobject.dita">2013-04-17 - inlineobject[ancestor::title] to ref:inlineobject: Created.</xref>
            </li>
            <li>
               <xref href="../../common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2013-04-12 - docinfo:assoc-links to doc:related-content: This module was changed from UK
                    specific to applicable to all LBUs</xref>
            </li>
            <li>
               <xref href="../../common_newest/AU_Comm-Rosetta_link-LxAdv-ref.lnlink.dita">2013-04-12 - link to ref:lnlink/@service="ATTACHMENT": Added instruction and update Source and Target example for ref:lnlink[@service="ATTACHMENT"] : <targetxml>//ref:lnlink[@service="ATTACHMENT"]/ref:locator/ref:locator-key</targetxml> and it's child elements place in <targetxml>/doc:docinfo/doc:related-content/doc:related-content-grp[grptype="attachments"]/doc:related-content-item</targetxml>.</xref>
            </li>
            <li>
               <xref href="../../common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2013-04-10 - docinfo:assoc-links to doc:related-content: An example for related content Source and
                    Target XML 4</xref>
            </li>
            <li>
               <xref href="../../common_newest/Rosetta_docinfo.authorattribution-LxAdv-dc.contributor.dita">2013-04-10 - docinfo:authorattribution to dc:contributor:  Created</xref>
            </li>
            <li>
               <xref href="../../common_newest/Rosetta_docinfo.overview-LxAdv-docinfo.overview.dita">2013-04-10 - docinfo:overview to doc:overview:  Created</xref>
            </li>
            <li>
               <xref href="../../common_newest/AU_Comm-Rosetta_link-LxAdv-ref.lnlink.dita">2013-04-10 - link to ref:lnlink/@service="ATTACHMENT": Updated instruction and Source and Target example per project requirement.</xref>
            </li>
            <li>
               <xref href="../../common_newest/Rosetta_leg.num_ln.user-displayed-LxAdv-classify.classification.dita">2013-04-10 - leg:num[@ln.user-displayed="false"] to classify:classification: Updated the note for handling of
                        leg:num/@ln.user-displayed="false"</xref>
            </li>
            <li>
               <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-04-10 - remotelink to ref:crossreference: Added Source XML 7a: for link to URL, with non-URL text content because it was previously missing, only the target example was here.</xref>
            </li>
            <li>
               <xref href="../../common_newest/Rosetta_docinfo.currencystatement-LxAdv-currencystatement.dita">2013-04-09 - docinfo:currencystatement to doc:docinfo/currencystatement: Created</xref>
            </li>
            <li>
               <xref href="../../common_newest/Rosetta_docinfo.lbu-meta-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta-scheme.dita">2013-04-09 - docinfo:lbu-meta to doc:legacy-metadata[@metadatasource="lbu-meta"]: Added the instruction for handling
                <sourcexml>docinfo:metaitem[@name="QLDB"]</sourcexml>.</xref>
            </li>
            <li>
               <xref href="../../common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2013-03-28 - docinfo:assoc-links to doc:related-content:  Added rules for
                        <sourcexml>docinfo:assoc-links-grp</sourcexml> and for child
                        <sourcexml>text</sourcexml>.</xref>
            </li>
            <li>
               <xref href="../../common_newest/AU_Comm-Rosetta_link-LxAdv-ref.lnlink.dita">2013-03-26 - link to ref:lnlink/@service="ATTACHMENT": Updated instruction and target example (<targetxml>proc:param/@value="pdf"</targetxml>) per project requirement.</xref>
            </li>
            <li>
               <xref href="../../common_newest/Rosetta_inlineobject-Chof-ci.conent_remotelink-LxAdv-lnci.content_ref.crossreference.dita">2013-03-21 - ci:content/remotelink/inlineobject to lnci:content/ref:crossreference:  Created.</xref>
            </li>
            <li>
               <xref href="../../common_newest/Rosetta_docinfo.doc-id-LxAdv-dcidentifier_lnmetaidentifier-scheme.dita">2013-03-20 - docinfo:doc-id to dc:identifier[@lnmeta:identifier-scheme]: Updated the information on handling the
                    situation when <sourcexml>docinfo:dpsi[@id-string]</sourcexml> is absent with
                    instructions to get the dpsi from
                        <sourcexml>docinfo/docinfo:custom-metafields/docinfo:custom-metafield[@name="dpsi"]</sourcexml>.</xref>
            </li>
            <li>
               <xref href="../../common_newest/Rosetta_leg.num_ln.user-displayed-LxAdv-classify.classification.dita">2013-03-14 - leg:num[@ln.user-displayed="false"] to classify:classification: Updated instruction and example for handling of
        leg:num/@ln.user-displayed="false"</xref>
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
               <xref href="../../common_newest/Rosetta_inlineobject-LxAdv-ref.inlineobject.dita">2013-03-13 - inlineobject to ref:inlineobject: Removed the value leg1.png and added the statement "These files should be suppressed for both *.gif and *.png file types" was added.</xref>
            </li>
            <li>
               <xref href="../../common_newest/Rosetta_glp.note_blockquote_p_text_inlineobject-LxAdv-note_bodytext_p_text.dita">2013-03-12 - glp:note:  Updated the instructions to remove the contradictory addition of inlineobject within the output</xref>
            </li>
            <li>
               <xref href="../../common_newest/Rosetta_inlineobject-LxAdv-ref.inlineobject.dita">2013-03-12 - inlineobject to ref:inlineobject: Added an additional value of leg1.pngto the <sourcexml>inlineobject</sourcexml>suppression list</xref>
            </li>
            <li>
               <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-03-11 - remotelink to ref:crossreference: Instruction and example added on how to handle <targetxml>ref:marker </targetxml> 
        if it is in <targetxml>ref:lnlink@service=”URL”</targetxml>and the <targetxml>ref:key-value@value</targetxml> starts-with (., 'http://www.lexisnexis.com/au/legal/api')</xref>
            </li>
            <li>
               <xref href="../../common_newest/Rosetta_remotelink-Chof-url-LxAdv-url.dita">2013-03-11 - url/remotelink to url: Added instructions for omitting
            <sourcexml>emph</sourcexml> when it occurs as a child of
            <sourcexml>url/remotelink</sourcexml>. Added an sample mapping demonstrating this
          scenario.</xref>
            </li>
            <li>
               <xref href="../../common_newest/Rosetta_date-LxAdv-date.dita">2013-03-08 - date to date: Added instruction for @normdate attribute that falls
					on various NL date elements</xref>
            </li>
            <li>
               <xref href="../../common_newest/Rosetta_remotelink-Chof-p-LxAdv-p_text_ref.crossreference.dita">2013-03-07 - p/remotelink to p/text/ref:crossreference: Created.</xref>
            </li>
            <li>
               <xref href="../../common_newest/Rosetta_edpnum-LxAdv-desig.dita">2013-03-06 - edpnum to desig: Removed instructions/rules for exceptional desig scenario and deprecated
                attribute <targetxml>@followstitle</targetxml>. Added instructions for
                    maintaining source document ordering.</xref>
            </li>
            <li>
               <xref href="../../common_newest/Rosetta_heading-LxAdv-heading.dita">2013-03-06 - heading to heading: Removed instructions/rules for exceptional desig scenario and deprecated
			attribute <targetxml>@followstitle</targetxml>.</xref>
            </li>
            <li>
               <xref href="../../common_newest/Rosetta_glp.note_blockquote_p_text_inlineobject-LxAdv-note_bodytext_p_text.dita">2013-03-05 - glp:note: Example was added for <sourcexml>inlineobject</sourcexml> within target xml example.</xref>
            </li>
            <li>
               <xref href="../../common_newest/Rosetta_glp.note_blockquote_p_text_inlineobject-LxAdv-note_bodytext_p_text.dita">2013-03-01 - glp:note: Additional information was added for the handling of leg1.gif and leg1.png within an <sourcexml>inlineobject</sourcexml>.</xref>
            </li>
            <li>
               <xref href="../../common_newest/Rosetta_docinfo.alt-renditions-LxAdv-doc.alt-renditions.dita">2013-02-26 - docinfo:alt-renditions/docinfo:alt-rendition to doc:alt-renditions/doc:alt-rendition: Updated target example per project requirement.</xref>
            </li>
            <li>
               <xref href="../../common_newest/Rosetta_blockquote-link-LxAdv-blockquote-p-text-ref.lnlink.dita">2013-02-26 - blockquote/link to blockquote/p/text/ref:lnlink: Updated target example per project requirement.</xref>
            </li>
            <li>
               <xref href="../../common_newest/Rosetta_emp-Chof-heading_title-LxAdv-heading_title.dita">2013-02-26 - heading/title/emph to heading/title: Created.</xref>
            </li>
            <li>
               <xref href="../../common_newest/Rosetta_link-LxAdv-ref.lnlink.dita">2013-02-26 - link to ref:lnlink/@service="ATTACHMENT": Updated target example per project
                requirement.</xref>
            </li>
            <li>
               <xref href="../../common_newest/AU_Comm-Rosetta_link-LxAdv-ref.lnlink.dita">2013-02-26 - link to ref:lnlink/@service="ATTACHMENT": Updated target example per project requirement.</xref>
            </li>
            <li>
               <xref href="../../common_newest/Rosetta_blockquote-LxAdv-blockquote.dita">2013-02-18 - blockquote to blockquote: Created two sections, one for "Release 4.0 and after" and another for "Pre-Release 4.0".</xref>
            </li>
            <li>
               <xref href="../../common_newest/Rosetta_figure-LxAdv-figure.dita">2013-02-18 - figure to figure: Created two sections, one for "Release 4.0
                        and after" and another for "Pre-Release 4.0".</xref>
            </li>
            <li>
               <xref href="../../common_newest/Rosetta_glp.note-Chof-figure-LxAdv-figure.dita">2013-02-18 - (Legislation &amp; Regulation) figure/glp:note to figure: Created two sections, one for "Release 4.0 and after" and another for "Pre-Release 4.0".</xref>
            </li>
            <li>
               <xref href="../../common_newest/Rosetta_inlineobject-LxAdv-ref.inlineobject.dita">2013-02-18 - inlineobject to ref:inlineobject: Created two sections, one for "Release 4.0 and after" and another for "Pre-Release 4.0".</xref>
            </li>
            <li>
               <xref href="../../common_newest/Rosetta_inlineobject-Chof-remotelink-LxAdv-ref.crossreference_ref.content_ref.inlineobject.dita">2013-02-18 - inlineobject Child of remotelink to ref:inlineobject: Created two sections, one for "Release 4.0 and after" and another for "Pre-Release 4.0".</xref>
            </li>
            <li>
               <xref href="../../common_newest/Rosetta_inlineobject-LxAdv-figure_ref.inlineobject.dita">2013-02-18 - inlineobject to figure/ref:inlineobject: Created two sections, one for "Release 4.0 and after" and another for "Pre-Release 4.0".</xref>
            </li>
            <li>
               <xref href="../../common_newest/Rosetta_inlineobject-Chof-h-LxAdv-figure_ref.inlineobject.dita">2013-02-18 - h/inlineobject to figure/ref:inlineobject: Created two sections, one for "Release 4.0 and after" and another for "Pre-Release 4.0".</xref>
            </li>
            <li>
               <xref href="../../common_newest/Rosetta_inlineobject-Chof-emph-LxAdv-figure_ref.inlinobject.dita">2013-02-18 - emph/inlineobject to figure/ref:inlineobject: Created two sections, one for "Release 4.0 and after" and another for "Pre-Release 4.0".</xref>
            </li>
            <li>
               <xref href="../../common_newest/Rosetta_inlineobject-Chof-sub-LxAdv-figure_ref.inlineobject.dita">2013-02-18 - sub/inlineobject to figure/ref:inlineobject: Created two sections, one for "Release 4.0 and after" and another for "Pre-Release 4.0".</xref>
            </li>
            <li>
               <xref href="../../common_newest/Rosetta_inlineobject-Chof-glp.note-LxAdv-SUPPRESS.dita">2013-02-18 - glp:note/inlineobject to: Created two sections, one for "Release 4.0 and after" and another for "Pre-Release 4.0".</xref>
            </li>
            <li>
               <xref href="../../common_newest/Rosetta_inlineobject-Chof-dispformula-LxAdv-formula_ref.inlineobject.dita">2013-02-18 - dispformula/inlineobject to formula/ref:inlineobject: Created two sections, one for "Release 4.0 and after" and another for "Pre-Release 4.0".</xref>
            </li>
            <li>
               <xref href="../../common_newest/Rosetta_inlineobject-Chof-p_blockquote-LxAdv-p_figure_ref.inlineobject.dita">2013-02-18 - p/blockquote/inlineobject to p/figure/ref:inlineobject: Created two sections, one for "Release 4.0 and after" and another for "Pre-Release 4.0".</xref>
            </li>
            <li>
               <xref href="../../common_newest/Rosetta_inlineobject-Chof-bodytext-LxAdv-bodytext_p_text_figure_ref.inlineobject.dita">2013-02-18 - bodytext/inlineobject to bodytext/p/text/figure/ref:inlineobject: Created two sections, one for "Release 4.0 and after" and another for "Pre-Release 4.0".</xref>
            </li>
            <li>
               <xref href="../../common_newest/Rosetta_p-limited_remotelink-LxAdv-p_text_ref.lnlink.dita">2013-02-18 - p-limited/emph to p/text/emph: Created two sections, one for "Release 4.0 and after" and another for "Pre-Release 4.0".</xref>
            </li>
            <li>
               <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-02-18 - remotelink to ref:crossreference: Created two sections, one for "Release 4.0 and after" and another for "Pre-Release 4.0".</xref>
            </li>
            <li>
               <xref href="../../common_newest/Rosetta_char-line-LxAdv-proc.formchars.dita">2013-02-08 - char-line to proc:formchars: Corrected the last mapping of <sourcexml>char-line[@character="
                    "]</sourcexml> to <targetxml>proc:formchars[@formchar="invisible"]</targetxml>
                so that the source element properly displays as
                    <sourcexml>char-line[@character="&amp;nbsp;"]</sourcexml>.</xref>
            </li>
            <li>
               <xref href="../../common_newest/Rosetta_form-chars-LxAdv-formchars.dita">2013-02-08 - form-chars to proc:formchars: Corrected the last mapping of
                        <sourcexml>form-chars[@character=" "]</sourcexml> to
                        <targetxml>proc:formchars[@formchar="invisible"]</targetxml> so that the
                    source element properly displays as
                        <sourcexml>form-chars[@character="&amp;nbsp;"]</sourcexml>.</xref>
            </li>
            <li>
               <xref href="../../common_newest/Rosetta_pgrp_searchtype-LxAdv-blockquote.dita">2013-01-28 - pgrp/@searchtype="QUOTED-TEXT": Removed CR number to allow <targetxml>hrule</targetxml> to the content model of
              <targetxml>blockquote</targetxml>
               </xref>
            </li>
            <li>
               <xref href="../../common_newest/Rosetta_CAN_title-Chof-leg.heading_to-LexisAdvance_heading_title.dita">2013-01-28 - leg:heading/title to heading/title: Created</xref>
            </li>
            <li>
               <xref href="../../common_newest/Rosetta_UK_docinfo.custom-metafields-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta.meta.metaitem.dita">2013-01-25 - docinfo:custom-metafields to doc:legacy-metadata[@metadatasource="lbu-meta"]/meta/metaitem: Added instruction to handle the scenario when <sourcexml>docinfo:custom-metafield</sourcexml> content is empty, and provided an example.</xref>
            </li>
            <li>
               <xref href="../../common_newest/Rosetta_UK_docinfo.custom-metafields-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta.meta.metaitem.dita">2013-01-25 - docinfo:custom-metafields to doc:legacy-metadata[@metadatasource="lbu-meta"]/meta/metaitem: Added instruction to handle <sourcexml>docinfo:custom-metafield/@searchtype</sourcexml> attribute, and provided an example.</xref>
            </li>
            <li>
               <xref href="../../common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2013-01-22 - docinfo:assoc-links to doc:related-content:  Added mapping instruction for
                        <sourcexml>docinfo:assoc-links/remotelink @href</sourcexml>.</xref>
            </li>
            <li>
               <xref href="../../common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2013-01-22 - ci.cite to lnci.cite: Instruction modified for the scenario
						<sourcexml>ci:cite/ci:content/remotelink</sourcexml> to indicate that the
						<sourcexml>ci:cite</sourcexml> and <sourcexml>ci:content</sourcexml>
					start-tags and end-tags (but not their content) are dropped.</xref>
            </li>
            <li>
               <xref href="../../common_newest/Rosetta_UK_docinfo.custom-metafields-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta.meta.metaitem.dita">2013-01-09 - docinfo:custom-metafields to doc:legacy-metadata[@metadatasource="lbu-meta"]/meta/metaitem: Created.</xref>
            </li>
            <li>
               <xref href="../../common_newest/Rosetta_footnote-LxAdv-footnote.dita">2013-01-09 - footnotegrp and footnote to footnotegrp and footnote: Added instruction note for handling of
                        <sourcexml>footnote[@fntoken]</sourcexml> with value 0 for UK content
                    types.</xref>
            </li>
            <li>
               <xref href="../../common_newest/Rosetta_leg.num_ln.user-displayed-LxAdv-classify.classification.dita">2013-01-09 - leg:num[@ln.user-displayed="false"] to classify:classification: Updated instructions to eliminate any confusion</xref>
            </li>
            <li>
               <xref href="../../common_newest/Rosetta_emph-LxAdv-emph.dita">2013-01-08 - emph to emph: Added note for handling
                        <targetxml>emph/emph</targetxml> has the same
                        <targetxml>@typestyle</targetxml> value.</xref>
            </li>
            <li>
               <xref href="../../common_newest/Rosetta_pgrp_searchtype-LxAdv-blockquote.dita">2013-01-08 - pgrp/@searchtype="QUOTED-TEXT": Created.</xref>
            </li>
            <li>
               <xref href="../../common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2012-12-05 - docinfo:assoc-links to doc:related-content:  Example added for Canada content
                    stream.</xref>
            </li>
            <li>
               <xref href="../../common_newest/Rosetta_inlineobject-Chof-remotelink-LxAdv-ref.crossreference_ref.content_ref.inlineobject.dita">2012-12-03 - inlineobject Child of remotelink to ref:inlineobject: Created. New topic to address
                <sourcexml>inlineobject</sourcexml> as child of
                <sourcexml>remotelink</sourcexml>
               </xref>
            </li>
            <li>
               <xref href="../../common_newest/Rosetta_inlineobject-LxAdv-figure_ref.inlineobject.dita">2012-12-03 - inlineobject to figure/ref:inlineobject:  Moved full conversion instruction to new base topic
                <sourcexml>inlineobject</sourcexml> to <targetxml>ref:inlineobject</targetxml>.
                This topic now specific to <targetxml>figure/ref:inlineobject</targetxml>
                mapping.</xref>
            </li>
            <li>
               <xref href="../../common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2012-11-29 - ci.cite to lnci.cite: Updated instructions to drop all
						<sourcexml>@spanref</sourcexml>.</xref>
            </li>
            <li>
               <xref href="../../common_newest/Rosetta_remotelink-self-inter-document-link-LxAdv-intra-document-link.dita">2012-11-01 - remotelink (self inter-document link) to ref:lnlink (intra-document link): Created.</xref>
            </li>
            <li>
               <xref href="../../common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2012-10-15 - docinfo:assoc-links to doc:related-content:  Made some Kraken related changes.</xref>
            </li>
            <li>
               <xref href="../../common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2012-10-08 - docinfo:assoc-links to doc:related-content: Created.</xref>
            </li>
            <li>
               <xref href="../../common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2012-09-18 - ci.cite to lnci.cite: Instruction and example added for handling
					of <sourcexml>ci:cite/@type="cite4thisdoc"</sourcexml> for AU
					Journals/Newsitem.</xref>
            </li>
            <li>
               <xref href="../../common_newest/Rosetta_char-line-LxAdv-proc.formchars.dita">2012-09-11 - char-line to proc:formchars: Removed CR number
                (LBAM2011121605552800).</xref>
            </li>
            <li>
               <xref href="../../common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2012-09-11 - ci.cite to lnci.cite: Created.</xref>
            </li>
            <li>
               <xref href="../../common_newest/Rosetta_form-chars-LxAdv-formchars.dita">2012-08-30 - form-chars to proc:formchars: Created.</xref>
            </li>
            <li>
               <xref href="../../common_newest/Rosetta_emph-LxAdv-emph.dita">2012-02-28 - emph to emph: Added instructions for handling of
                        <sourcexml>case:judges/emph/@typestyle="smcaps"</sourcexml>.</xref>
            </li>
            <li>
               <xref href="../../common_newest/Rosetta_emph-LxAdv-emph.dita">2011-12-15 - emph to emph: Created.</xref>
            </li>
            <li>
               <xref href="../../common_newest/Rosetta_char-line-LxAdv-proc.formchars.dita">2011-09-11 - char-line to proc:formchars: Created.</xref>
            </li>
            </ul>
        </section>
      <section>
          <title>Legis 8.1:PROD</title>
          <p><b>2013-07-08</b></p>
          <ul>
              <li>Created.</li>
          </ul>
      </section>     
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-Standard\Legislation\change-log.dita  -->
	<xsl:message>Legislation_change-log.xsl requires manual development!</xsl:message> 

</xsl:stylesheet>