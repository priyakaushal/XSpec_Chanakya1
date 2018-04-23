<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
    xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:ci="http://www.lexis-nexis.com/ci"
    xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo"
    xmlns:frm="http://www.lexis-nexis.com/glp/frm" xmlns:leg="http://www.lexis-nexis.com/glp/leg"
    xmlns:source_lnci="http://www.lexis-nexis.com/lnci"
    xmlns:classify="http://www.lexisnexis.com/xmlschemas/content/shared/classification/1/"
    xmlns:dc="http://purl.org/dc/elements/1.1/"
    xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/"
    xmlns:form="http://www.lexisnexis.com/xmlschemas/content/shared/form/1/"
    xmlns:globalentity="urn:x-lexisnexis:content:identified-entities:global:1"
    xmlns:legisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/legislation-info/1/"
    xmlns:lnci="http://www.lexisnexis.com/xmlschemas/content/shared/citations/1/"
    xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/"
    xmlns:primlawinfo="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-info/1/"
    xmlns:proc="http://www.lexisnexis.com/xmlschemas/content/shared/process-elements/1/"
    xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/"
    xmlns:regulation="urn:x-lexisnexis:content:regulation:sharedservices:1" version="2.0"
    exclude-result-prefixes="dita case ci docinfo frm leg lnci">

    <dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="change-log">
        <title>Change Log</title>
        <body>
            <section>
                <title>Regulation 9.1_PROD Schema</title>
                <p>
                    <ul>
                        <li>
                            <xref
                                href="../../../Rosetta/common_newest/LxAdv_CA-ref.cite4thisresource-LxAdv-ref.parallelcite-doc.related-content.dita"
                                >2017-02-06 - ref:cite4thisresource with ref:parallelcite and
                                doc:related-content id-CCCC-10497: Added some French to English
                                terms for translation of the citation inside the table for CA06 and
                                CA07 i.e. ch. A-6.002, r. 1</xref>
                        </li>
                        <li>
                            <xref
                                href="../../../Rosetta/common_newest/Rosetta_docinfo.doc-heading-LxAdv-dc.title.dita"
                                >2017-01-17 - docinfo:doc-heading to dc:title id-CCCC-10292:
                                concatenate the #PCDATA value for dc:title and create a new
                                attribute lnmeta:titlepurpose="resultDisplayList" with fixed value
                                ('resultDisplayList').</xref>
                        </li>
                        <li>
                            <xref
                                href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita"
                                >2016-11-16 - docinfo:assoc-links to doc:related-content
                                id-CCCC-10284: Added to note regarding applying any rules related to
                                    <targetxml>@anchoridref</targetxml>, referring specifically to
                                section for "Identifiers to ID Data Type - Handling Pattern
                                Restrictions".</xref>
                        </li>
                        <li>
                            <xref
                                href="../../../Rosetta/common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita"
                                >2016-11-16 - remotelink to ref:crossreference id-CCCC-10465: Added
                                to note regarding applying any rules related to
                                    <targetxml>@anchoridref</targetxml>, referring specifically to
                                section for "Identifiers to ID Data Type - Handling Pattern
                                Restrictions".</xref>
                        </li>
                        <li>
                            <xref
                                href="../../../Rosetta/common_newest/LxAdv_CA-ref.cite4thisresource-LxAdv-ref.parallelcite-doc.related-content.dita"
                                >2016-11-10 - ref:cite4thisresource with ref:parallelcite and
                                doc:related-content id-CCCC-10497: For CA05alternate language
                                abbreviation for R.S.C 1970 changed to S.R.C. Webstar
                                #6714384</xref>
                        </li>
                        <li>
                            <xref
                                href="../../../Rosetta/common_newest/Rosetta_docinfo.versioninfo-LxAdv-doc.versioninfo-scheme.dita"
                                >2016-10-17 - docinfo:versioninfo to doc:versioninfo id-CCCC-10307:
                                Updated the instruction for handling the target attribute
                                    <targetxml>@normdate</targetxml>. [Webstar#6676189]</xref>
                        </li>
                        <li>
                            <xref
                                href="../../../Rosetta/common_newest/Rosetta_docinfo.versioninfo--LxAdv_ref.groupid.dita"
                                >2016-10-14 - docinfo:versioninfo to ref:groupid id-CCCC-10499:
                                Updated the note for handling the source attribute
                                    <sourcexml>@hasotherversions="false"</sourcexml>.[Webstar#6676189]</xref>
                        </li>
                        <li>
                            <xref
                                href="../../../Rosetta/common_newest/Rosetta_docinfo.versioninfo--LxAdv_ref.groupid.dita"
                                >2016-10-07 - docinfo:versioninfo to ref:groupid id-CCCC-10499:
                                Added note for handling the source attribute
                                    <sourcexml>@hasotherversions</sourcexml> comes with value
                                'false'.</xref>
                        </li>
                        <li>
                            <xref
                                href="../../../Rosetta/common_newest/Rosetta_docinfo.versioninfo-LxAdv-doc.versioninfo-scheme.dita"
                                >2016-09-14 - docinfo:versioninfo to doc:versioninfo id-CCCC-10307:
                                Note added for handling the input markup
                                    '<targetxml>docinfo:versioninfo@startdate-tbd</targetxml>'.</xref>
                        </li>
                        <li>
                            <xref
                                href="../../../Rosetta/common_newest/Rosetta_docinfo.versioninfo-LxAdv-doc.versioninfo-scheme.dita"
                                >2016-09-02 - docinfo:versioninfo to doc:versioninfo id-CCCC-10307:
                                Special Rule for added <targetxml>@normdate</targetxml> attribute
                                inside the <targetxml>doc:startdate</targetxml> and
                                    <targetxml>doc:enddate</targetxml>.</xref>
                        </li>
                    </ul>
                </p>
            </section>
            <section>
                <title>Regulation 8.3_PROD Schema</title>
                <p>
                    <ul>
                        <li>
                            <xref
                                href="../../../Rosetta/DITA-CAN/CA06-Regulation/leg.num_ci.cite.dita"
                                >2016-08-19 - leg:num/ci:cite id-CA06-13825: Updated NOTE for
                                scenario1, Scenario2 and instructions for DPSI value table</xref>
                        </li>
                        <li>
                            <xref
                                href="../../../Rosetta/DITA-CAN/CA06-Regulation/CA06_dpsi-stream-doc.hierlev-heading-title.dita"
                                >2016-08-14 - docinfo:custom-metafield/@name="dpsi" id-CA06-13835:
                                Added some new DPSI values inside the column TOC top line.</xref>
                        </li>
                        <li>
                            <xref
                                href="../../../Rosetta/common_newest/Rosetta_footnote-LxAdv-footnote.dita"
                                >2016-08-08 - footnotegrp and footnote to footnotegrp and footnote
                                id-CCCC-10322: Removing duplicate entry of
                                    <sourcexml>lilabel/fnr</sourcexml>
                            </xref>
                        </li>
                        <li>
                            <xref
                                href="../../../Rosetta/DITA-CAN/CA06-Regulation/leg.num_ci.cite.dita"
                                >2016-08-04 - leg:num/ci:cite id-CA06-13825: Instruction to run
                                Scenario1 first. WebStar: WebTeam # 331046 </xref>
                        </li>
                        <li>
                            <xref
                                href="../../../Rosetta/common_newest/Rosetta_footnote-LxAdv-footnote.dita"
                                >2016-08-04 - footnotegrp and footnote to footnotegrp and footnote
                                id-CCCC-10322: Added note for handling
                                    <sourcexml>lilabel/fnr</sourcexml> Applicable for AU05, Incident
                                #6597893</xref>
                        </li>
                        <li>
                            <xref
                                href="../../../Rosetta/common_newest/Rosetta_inlineobject-Chof-verbatim-LxAdv-figure_ref.inlineobject.dita"
                                >2016-08-03 - verbatim/inlineobject to figure/ref:inlineobject
                                id-CCCC-10505: Added Note about xml snippets that illustrate image
                                handling. Note summarizes move from Apollo to Blobstore application.
                                UK is first LBU to move to Blobstore.</xref>
                        </li>
                        <li>
                            <xref
                                href="../../../Rosetta/common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita"
                                >2016-08-03 - remotelink to ref:crossreference id-CCCC-10465: Added
                                Note about xml snippets that illustrate image handling. Note
                                summarizes move from Apollo to Blobstore application. UK is first
                                LBU to move to Blobstore.</xref>
                        </li>
                        <li>
                            <xref
                                href="../../../Rosetta/common_newest/Rosetta_docinfo.alt-renditions-LxAdv-doc.alt-renditions.dita"
                                >2016-07-29 - docinfo:alt-renditions/docinfo:alt-rendition to
                                doc:alt-renditions/doc:alt-rendition id-CCCC-10283: Added Note about
                                xml snippets that illustrate image handling. Note summarizes move
                                from Apollo to Blobstore application. UK is first LBU to move to
                                Blobstore.</xref>
                        </li>
                        <li>
                            <xref
                                href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita"
                                >2016-07-29 - docinfo:assoc-links to doc:related-content
                                id-CCCC-10284: Added Note about xml snippets that illustrate image
                                handling. Note summarizes move from Apollo to Blobstore application.
                                UK is first LBU to move to Blobstore.</xref>
                        </li>
                        <li>
                            <xref
                                href="../../../Rosetta/common_newest/Rosetta_figure-LxAdv-figure.dita"
                                >2016-07-29 - figure to figure id-CCCC-10320: Added Note about xml
                                snippets that illustrate image handling. Note summarizes move from
                                Apollo to Blobstore application. UK is first LBU to move to
                                Blobstore.</xref>
                        </li>
                        <li>
                            <xref
                                href="../../../Rosetta/common_newest/Rosetta_inlineobject-LxAdv-figure_ref.inlineobject.dita"
                                >2016-07-29 - inlineobject to figure/ref:inlineobject id-CCCC-10368:
                                Added Note about xml snippets that illustrate image handling. Note
                                summarizes move from Apollo to Blobstore application. UK is first
                                LBU to move to Blobstore.</xref>
                        </li>
                    </ul>
                </p>
            </section>
            <section>
                <title>Regulation 8.3_PROD Schema</title>
                <p>
                    <ul>
                        <li>
                            <xref
                                href="../../../Rosetta/DITA-CAN/CA06-Regulation/leg.num_ci.cite.dita"
                                >2016-08-04 - leg:num/ci:cite id-CA06-13825: Instruction to run
                                Scenario1 first. WebStar: WebTeam # 331046 </xref>
                        </li>
                        <li>
                            <xref
                                href="../../../Rosetta/common_newest/Rosetta_inlineobject-Chof-verbatim-LxAdv-figure_ref.inlineobject.dita"
                                >2016-08-03 - verbatim/inlineobject to figure/ref:inlineobject
                                id-CCCC-10505: Added Note about xml snippets that illustrate image
                                handling. Note summarizes move from Apollo to Blobstore application.
                                UK is first LBU to move to Blobstore.</xref>
                        </li>
                        <li>
                            <xref
                                href="../../../Rosetta/common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita"
                                >2016-08-03 - remotelink to ref:crossreference id-CCCC-10465: Added
                                Note about xml snippets that illustrate image handling. Note
                                summarizes move from Apollo to Blobstore application. UK is first
                                LBU to move to Blobstore.</xref>
                        </li>
                        <li>
                            <xref
                                href="../../../Rosetta/common_newest/Rosetta_docinfo.alt-renditions-LxAdv-doc.alt-renditions.dita"
                                >2016-07-29 - docinfo:alt-renditions/docinfo:alt-rendition to
                                doc:alt-renditions/doc:alt-rendition id-CCCC-10283: Added Note about
                                xml snippets that illustrate image handling. Note summarizes move
                                from Apollo to Blobstore application. UK is first LBU to move to
                                Blobstore.</xref>
                        </li>
                        <li>
                            <xref
                                href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita"
                                >2016-07-29 - docinfo:assoc-links to doc:related-content
                                id-CCCC-10284: Added Note about xml snippets that illustrate image
                                handling. Note summarizes move from Apollo to Blobstore application.
                                UK is first LBU to move to Blobstore.</xref>
                        </li>
                        <li>
                            <xref
                                href="../../../Rosetta/common_newest/Rosetta_figure-LxAdv-figure.dita"
                                >2016-07-29 - figure to figure id-CCCC-10320: Added Note about xml
                                snippets that illustrate image handling. Note summarizes move from
                                Apollo to Blobstore application. UK is first LBU to move to
                                Blobstore.</xref>
                        </li>
                        <li>
                            <xref
                                href="../../../Rosetta/common_newest/Rosetta_inlineobject-LxAdv-figure_ref.inlineobject.dita"
                                >2016-07-29 - inlineobject to figure/ref:inlineobject id-CCCC-10368:
                                Added Note about xml snippets that illustrate image handling. Note
                                summarizes move from Apollo to Blobstore application. UK is first
                                LBU to move to Blobstore.</xref>
                        </li>
                    </ul>
                </p>
                <title>Regulation 8.2_PROD Schema</title>
                <p>2016-07-28 <ul>
                        <li><xref
                                href="../../../Rosetta/common_newest/Rosetta_remotelink-Chof-url-LxAdv-url.dita"
                                >2016-07-28 - url/remotelink to url id-CCCC-10464: Added this DITA
                                module (conversion instruction) under the CA06 stream for handling
                                    "<sourcexml>url/remotelink</sourcexml>".</xref></li>
                    </ul>
                </p>
            </section>

            <section>
                <title>Regulation 8.2_PROD Schema</title>
                <p>2016-07-20 <ul>
                        <li>
                            <xref
                                href="../../../Rosetta/DITA-CAN/CA06-Regulation/CA06_dpsi-stream-doc.hierlev-heading-title.dita"
                                >2016-07-20 - docinfo:custom-metafield/@name="dpsi" id-CA06-13835:
                                Updated some DPSI values inside the column TOC top line.</xref>
                        </li>
                    </ul>
                </p>
            </section>
            <section>
                <title>Regulation 8.2_PROD Schema</title>
                <p>2016-07-07 <ul>
                        <li>
                            <xref
                                href="../../../Rosetta/DITA-CAN/CA06-Regulation/leg.num_ci.cite.dita"
                                >2016-07-07 - leg:num/ci:cite id-CA06-13825: Updated the instruction
                                for handling <sourcexml>leg:num/ci:cite</sourcexml>
                            </xref>
                        </li>
                        <li>
                            <xref
                                href="../../../Rosetta/DITA-CAN/CA06-Regulation/leg.relatedleg.dita"
                                >2016-07-07 - leg:relatedleg id-CA06-13830: Added note for the
                                handling "<sourcexml>leg:relatedleg</sourcexml>", if source
                                documents have mentioned DPSI's value according to the define
                                list.</xref>
                        </li>
                        <li>
                            <xref
                                href="../../../Rosetta/common_newest/LxAdv_CA-ref.cite4thisresource-LxAdv-ref.parallelcite-doc.related-content.dita"
                                >2016-07-07 - ref:cite4thisresource with ref:parallelcite and
                                doc:related-content id-CCCC-10497: For CA05 and CA06- Block RHS link
                                to alternate version for given DPSI values</xref>
                        </li>
                    </ul>
                </p>
            </section>
            <section>
                <title>Regulation 8.2_PROD Schema</title>
                <p>2016-06-17 <ul>
                        <li>
                            <xref href="../../../Rosetta/DITA-CAN/CA06-Regulation/leg.level.dita"
                                >2016-06-10 - leg:level id-CA06-13820: Updated target element
                                mapping when source is not having <sourcexml>refpt</sourcexml> as a
                                child of <sourcexml>leg:heading</sourcexml> and note for generation
                                of <targetxml>ref:anchor</targetxml> based on
                                    <sourcexml>@subdoc="true"</sourcexml> value.</xref>
                        </li>
                    </ul>
                </p>
                <p>2016-04-23 <ul>
                        <li>
                            <xref
                                href="../../../Rosetta/DITA-CAN/CA06-Regulation/CA06_dpsi-stream-doc.hierlev-heading-title.dita"
                                >2016-04-23 - docinfo:custom-metafield/@name="dpsi" id-CA06-13835:
                                Created.</xref>
                        </li>
                        <li>
                            <xref href="../../../Rosetta/common_newest/Rosetta_emph-LxAdv-emph.dita"
                                >2016-04-01 - emph to emph id-CCCC-10316: Added statement to clarify
                                that children of emph should be processed.</xref>
                        </li>
                        <li>
                            <xref href="../../../Rosetta/common_newest/Rosetta_l-LxAdv-list.dita"
                                >2016-04-01 - l to list id-CCCC-10372: Added mapping instruction for
                                handling h within listitem.</xref>
                        </li>
                    </ul>
                </p>
            </section>

            <section>
                <title>Regulation 8.2_PROD Schema</title>
                <p>2016-03-23 <ul>
                        <li>
                            <xref
                                href="../../../Rosetta/common_newest/Rosetta_CA06-docinfo.custom-metafield-LxAdv-legisinfo.status.dita"
                                >2016-03-23 - docinfo:custom-metafield to legisinfo:status
                                id-CCCC-10520: Included the additional DPSI values (i.e. 0U9B &amp;
                                0USP) inside the Repealed DPSI values table.</xref>
                        </li>
                        <li>
                            <xref
                                href="../../../Rosetta/common_newest/Rosetta_footnote-LxAdv-footnote.dita"
                                >2016-02-29 - footnotegrp and footnote to footnotegrp and footnote
                                id-CCCC-10322: Added note for handling
                                    <sourcexml>@type="editorial"</sourcexml> attribute. Applicable
                                for UK22CS, RFA# 2762</xref>
                        </li>
                        <li>
                            <xref
                                href="../../../Rosetta/common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita"
                                >2016-02-05 - remotelink to ref:crossreference id-CCCC-10465: Added
                                note and example when <sourcexml>remotelink</sourcexml> is a child
                                of <sourcexml>emph</sourcexml>. Applicable on NZ17CC, Webstar:
                                319232 and 318735.</xref>
                        </li>
                        <li>
                            <xref
                                href="../../../Rosetta/common_newest/Rosetta_footnote-LxAdv-footnote.dita"
                                >2016-01-05 - footnotegrp and footnote to footnotegrp and footnote
                                id-CCCC-10322: Added instructions for
                                    <sourcexml>footnotegrp</sourcexml> within
                                    <sourcexml>frm:div</sourcexml>. To generate
                                    <targetxml>form:p/form:text</targetxml> wrapper for target
                                    <targetxml>footnotegroup</targetxml>. Immediately affects UK12
                                but will apply to any stream if the use case occurs. RFA
                                2653.</xref>
                        </li>
                        <li>
                            <xref
                                href="../../../Rosetta/common_newest/Rosetta_docinfo.doc-heading-LxAdv-dc.title.dita"
                                >2015-12-04 - docinfo:doc-heading to dc:title id-CCCC-10292: Added
                                exception for AU Legislative Citator to drop text Overview Tab for
                                from conversion.</xref>
                        </li>
                        <li>
                            <xref
                                href="../../../Rosetta/common_newest/Rosetta_inlineobject-LxAdv-ref.inlineobject.dita"
                                >2015-11-16 - inlineobject to ref:inlineobject id-CCCC-10369: Added
                                instruction for <sourcexml>inlineobject/@key</sourcexml> to be
                                suppressed.</xref>
                        </li>
                        <li>
                            <xref
                                href="../../../Rosetta/common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita"
                                >2015-09-15 - ci.cite to lnci.cite id-CCCC-10268: Updated
                                instruction to suppressed the attribute <sourcexml>@type</sourcexml>
                                with value "legref" in target. Applicable on NZ Regulation and NZ
                                Act from services [Webstar #6245139].</xref>
                        </li>
                        <li>
                            <xref
                                href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita"
                                >2015-09-11 - docinfo:assoc-links to doc:related-content
                                id-CCCC-10284: Correction to target XPATHs for
                                    <sourcexml>lnlink[@service="QUERYLINK"]</sourcexml>,
                                    <sourcexml>lnlink[@service="ATTACHMENT"]</sourcexml>, and
                                    <sourcexml>lnlink[@service="TRAVERSE"]</sourcexml> to add
                                    <targetxml>doc:related-content-item/doc:related-content-link</targetxml>
                                before the existing <targetxml>ref:lnlink</targetxml> element in the
                                XPATH.</xref>
                        </li>
                        <li>
                            <xref
                                href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita"
                                >2015-09-11 - docinfo:assoc-links to doc:related-content
                                id-CCCC-10284: Added instruction for handling of
                                    <sourcexml>lnlink[@service="URL"]</sourcexml> inside
                                    <sourcexml>docinfo:assoc-links</sourcexml> or
                                    <sourcexml>docinfo:assoc-links-grp</sourcexml>.</xref>
                        </li>
                        <li>
                            <xref
                                href="../../../Rosetta/common_newest/Rosetta_docinfo.doc-heading-LxAdv-dc.title.dita"
                                >2015-09-06 - docinfo:doc-heading to dc:title id-CCCC-10292:
                                Modified only the special rule for CA14 trademarks. No longer
                                mapping (MC) to entity, the unicode code point is not currently
                                supported. The pcdata (MC) is retained instead. RFA 145. CA14
                                only.</xref>
                        </li>
                        <li>
                            <xref
                                href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita"
                                >2015-09-03 - docinfo:assoc-links to doc:related-content
                                id-CCCC-10284: Minor correction to bullet heading text for children
                                of <sourcexml>docinfo:assoc-links</sourcexml> or
                                    <sourcexml>docinfo:assoc-links-grp</sourcexml> to change from
                                    <sourcexml>lnlink/@service="QUERYLINK"</sourcexml> to be
                                    <sourcexml>lnlink[@service="QUERYLINK"]</sourcexml> and
                                    <sourcexml>lnlink/@service="ATTACHMENT"</sourcexml> to be
                                    <sourcexml>lnlink[@service="ATTACHMENT"]</sourcexml>.</xref>
                        </li>
                        <li>
                            <xref
                                href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita"
                                >2015-09-03 - docinfo:assoc-links to doc:related-content
                                id-CCCC-10284: Added
                                    <targetxml>doc:related-content-item/@content-type="external-content-location"</targetxml>
                                when the parent
                                    <sourcexml>docinfo:assoc-links[@assoc-content="external-content-location"]</sourcexml>
                                exists, for children:
                                    <sourcexml>remotelink[@service="DOC-ID"]</sourcexml>,
                                    <sourcexml>remotelink[@href]</sourcexml>,
                                    <sourcexml>lnlink[@service="TRAVERSE"]</sourcexml> and
                                    <sourcexml>ci:cite</sourcexml>.</xref>
                        </li>
                        <li>
                            <xref
                                href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita"
                                >2015-09-03 - docinfo:assoc-links to doc:related-content
                                id-CCCC-10284: Added instruction for handling of
                                    <sourcexml>lnlink[@service="TRAVERSE"]</sourcexml> inside
                                    <sourcexml>docinfo:assoc-links</sourcexml> or
                                    <sourcexml>docinfo:assoc-links-grp</sourcexml>.</xref>
                        </li>
                    </ul>
                </p>
            </section>
            <section>
                <title>Regulation 8.0_PROD Schema</title>
                <p>2015-08-14 SEP<ul>
                        <li>
                            <xref
                                href="../../../Rosetta/common_newest/Rosetta_CAN_docinfo.custom-metafields-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta.meta.metaitem.dita"
                                >2015-08-13 - docinfo:custom-metafields to
                                doc:legacy-metadata[@metadatasource="lbu-meta"]/meta/metaitem
                                id-CCCC-10251: For Single Document Retrieval (SDR),
                                    <sourcexml>"actFirstDoc"</sourcexml> triggers output of an
                                additional
                                    <targetxml>ref:cite4thisresource/lnci:cite/@type="act"</targetxml>
                                where target <targetxml>lnci:content</targetxml> is copied from
                                    <sourcexml>leg:officialnum</sourcexml>. Affects
                                CA05,CA06,CA07,CA08. Canada CR506 as related to WT 305581.</xref>
                        </li>
                    </ul>
                </p>
            </section>
            <section>
                <title>Regulation 8.0_PROD Schema</title>
                <p>2015-07-31 SEP<ul>
                        <li>
                            <xref
                                href="../../../Rosetta/common_newest/Rosetta_CAN_docinfo.custom-metafields-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta.meta.metaitem.dita"
                                >2015-07-29 - docinfo:custom-metafields to
                                doc:legacy-metadata[@metadatasource="lbu-meta"]/meta/metaitem
                                id-CCCC-10251: Update
                                    <targetxml>metaitem[@name="effect-date"]/value</targetxml> in
                                the example to have a real date, "19950505", instead of all zeroes,
                                "00000000". R4.5 Canada CR458.</xref>
                        </li>
                    </ul>
                </p>
            </section>
            <section>
                <title>Regulation 8.0_PROD Schema</title>
                <p>2015-07-29 SEP<ul>
                        <li>
                            <xref
                                href="../../../Rosetta/common_newest/Rosetta_CAN_docinfo.custom-metafields-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta.meta.metaitem.dita"
                                >2015-07-28 - docinfo:custom-metafields to
                                doc:legacy-metadata[@metadatasource="lbu-meta"]/meta/metaitem
                                id-CCCC-10251: Canada Sort Option for Point in Time Legislation.
                                    <targetxml>metaitem[@name="effect-date"]/value</targetxml> shall
                                have simple digit date validation and dashes added to separate
                                YYYY-MM-DD. Affects CA05, 06, 07, 08. R4.5 Canada CR458.</xref>
                        </li>
                        <li>
                            <xref
                                href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita"
                                >2015-07-16 - docinfo:assoc-links to doc:related-content
                                id-CCCC-10284: Updated conversion for handling of
                                    <sourcexml>ci:cite/@normprotocol</sourcexml>,
                                    <targetxml>proc:param[@name="countrycode"]</targetxml>; added
                                instructions for
                                <sourcexml>docinfo:assoc-resource</sourcexml>.</xref>
                        </li>
                        <li>
                            <xref
                                href="../../../Rosetta/common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita"
                                >2015-06-24 - remotelink to ref:crossreference id-CCCC-10465: Added
                                clarification note about url, @normval, and @hrefclass. Webstar
                                302055.</xref>
                        </li>
                    </ul>
                </p>
            </section>
            <section>
                <title>Regulation 8.0_PROD Schema</title>
                <p>2015-06-17 SEP<ul>
                        <li>
                            <xref
                                href="../../../Rosetta/DITA-CAN/CA06-Regulation/docinfo.versioninfo.dita"
                                >2015-06-16 - docinfo:versioninfoid-CA06-13833: Add to note that if
                                a statuscode is created for "repealed, repealedshell, annual" then
                                one should not be created here for "historical or consolidated". A
                                document should have only one status value. WebTeam # 302809.</xref>
                        </li>
                        <li>
                            <xref
                                href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita"
                                >2015-05-22 - docinfo:assoc-links to doc:related-content
                                id-CCCC-10284: Clarification. Not a new rule or target. Within rules
                                handling <sourcexml>remotelink[@service="DOC-ID"]</sourcexml>, added
                                statement to create containing elements
                                    <targetxml>ref:locator/ref:locator-key</targetxml> which hold
                                    <targetxml>ref:key-name</targetxml> and
                                    <targetxml>ref:key-value</targetxml>. The xpath is controlled by
                                schema and so conversions have been correct. CI examples were
                                correct. The narrative rule is now explicit. R4.5 Content Issue
                                2326.</xref>
                        </li>
                        <li>
                            <xref
                                href="../../../Rosetta/common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita"
                                >2015-05-22 - remotelink to ref:crossreference id-CCCC-10465: Added
                                an instruction to explicitly indicate
                                    <sourcexml>remotelink/@status</sourcexml> is always dropped
                                (suppressed). This is a very low-priority change and has been added
                                for technical correctness, particularly with respect to new CIs.
                                Existing scripts do not have to implement this change unless needed
                                since prior to the change <targetxml>remotelink/@status</targetxml>
                                handling was not explicitly specified.</xref>
                        </li>
                        <li>
                            <xref
                                href="../../../Rosetta/common_newest/Rosetta_remotelink-self-inter-document-link-LxAdv-intra-document-link.dita"
                                >2015-05-22 - remotelink (self inter-document link) to ref:lnlink
                                (intra-document link) id-CCCC-10468: Added an instruction to
                                explicitly indicate <sourcexml>remotelink/@status</sourcexml> is
                                always dropped (suppressed). This is a very low-priority change and
                                has been added for technical correctness, particularly with respect
                                to new CIs. Existing scripts do not have to implement this change
                                unless needed since prior to the change
                                    <targetxml>remotelink/@status</targetxml> handling was not
                                explicitly specified.</xref>
                        </li>
                        <li>
                            <xref
                                href="../../../Rosetta/common_newest/Rosetta_footnote-LxAdv-footnote.dita"
                                >2015-05-14 - footnotegrp and footnote to footnotegrp and footnote
                                id-CCCC-10322: Added instructions for
                                    <sourcexml>footnotegrp</sourcexml> within
                                    <sourcexml>frm:body</sourcexml> and
                                    <sourcexml>clause</sourcexml>. To generate
                                    <targetxml>form:p/form:text</targetxml> wrapper for target
                                    <targetxml>footnotegroup</targetxml>. Immediately affects UK12
                                but will apply to any stream if the use case occurs. R4.5 Content
                                Issues 2316 and 2317.</xref>
                        </li>
                        <li>
                            <xref
                                href="../../../Rosetta/common_newest/Rosetta_docinfo.doc-heading-LxAdv-dc.title.dita"
                                >2015-05-05 - docinfo:doc-heading to dc:title id-CCCC-10292: Added
                                note to convert (TM), (R), and (MC) to unicode code points. DB # 45.
                                Applicable to CA14.</xref>
                        </li>
                        <li>
                            <xref
                                href="../../../Rosetta/common_newest/Rosetta_docinfo-LxAdv-doc.metadata_doc.docinfo.dita"
                                >2015-04-14 - docinfo to doc:metadata/doc:docinfo id-CCCC-10282:
                                Remove bullet icon in sub nested list for handling Indentation
                                isssue.</xref>
                        </li>
                    </ul>
                </p>
            </section>
            <section>
                <title>Regulation 8.0_PROD Schema</title>
                <p>2015-03-26<ul>
                        <li>
                            <xref
                                href="../../../Rosetta/common_newest/Rosetta_docinfo.hier-LxAdv-doc.hier.dita"
                                >2015-03-25 - docinfo:hier to doc:hier id-CCCC-10297: Added note
                                with rule for <sourcexml>title/num</sourcexml>. Suppress
                                    <sourcexml>num</sourcexml> tag but output content. Applicable
                                for CA09 only. RFA 2249.</xref>
                        </li>
                        <li>
                            <xref
                                href="../../../Rosetta/DITA-CAN/CA06-Regulation/document.highlights-to-doc.overview.dita"
                                >2015-03-25 - Document Highlights become doc:overview id-CA06-13834:
                                Provide clarifications for text() PCDATA descendants and multiple
                                child elements. Phase 5 RFA #204.</xref>
                        </li>
                        <li>
                            <xref
                                href="../../../Rosetta/DITA-CAN/CA06-Regulation/document.highlights-to-doc.overview.dita"
                                >2015-03-24 - Document Highlights become doc:overview id-CA06-13834:
                                Updated target XPATH to include
                                    <targetxml>bodytext/p/text</targetxml>. R4.5 RFA #2220.</xref>
                        </li>
                    </ul>
                </p>
            </section>
            <section>
                <title>Regulation 8.0_PROD Schema</title>
                <p>2015-03-20<ul>
                        <li>
                            <xref
                                href="../../../Rosetta/common_newest/Rosetta_CAN_docinfo.custom-metafields-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta.meta.metaitem.dita"
                                >2015-03-19 - docinfo:custom-metafields to
                                doc:legacy-metadata[@metadatasource="lbu-meta"]/meta/metaitem
                                id-CCCC-10251: Within rules for First Act Doc, made the word act
                                lower-case in source value to reflect recent data change. Formerly
                                    <sourcexml>"ActFirstDoc"</sourcexml>, now
                                    <sourcexml>"actFirstDoc"</sourcexml>. Affects CA05, 06, 07, 08.
                            </xref>
                        </li>
                        <li>
                            <xref
                                href="../../../Rosetta/DITA-CAN/CA06-Regulation/document.highlights-to-doc.overview.dita"
                                >2015-03-18 - Document Highlights become doc:overview id-CA06-13834:
                                Created. R4.5 RFA #2220.</xref>
                        </li>
                        <li>
                            <xref
                                href="../../../Rosetta/common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita"
                                >2015-03-17 - ci.cite to lnci.cite id-CCCC-10268: An attribute
                                    <targetxml>@inline</targetxml> get added with
                                    <targetxml>desig</targetxml> element even when the
                                    source<sourcexml>pnum</sourcexml> is not having that
                                    attribute<sourcexml>@inline</sourcexml> Applicable on CA12
                                only.</xref>
                        </li>
                        <li>
                            <xref
                                href="../../../Rosetta/common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita"
                                >2015-02-24 - ci.cite to lnci.cite id-CCCC-10268: Example updated as
                                per new rule an attribute <targetxml>@inline</targetxml>get added
                                with <targetxml>desig</targetxml>element when the
                                    source<sourcexml>pnum</sourcexml>is not having that
                                    attribute<sourcexml>@inline</sourcexml>
                            </xref>
                        </li>
                        <li>
                            <xref
                                href="../../../Rosetta/common_newest/LxAdv_CA-ref.cite4thisresource-LxAdv-ref.parallelcite-doc.related-content.dita"
                                >2015-02-23 - ref:cite4thisresource with ref:parallelcite and
                                doc:related-content id-CCCC-10497: Updated Scenario for CA02, when
                                "DOC-ID" used with "DOCUMENT" service,
                                    <targetxml>proc:param/@name="targetdoclang"</targetxml> should
                                be included. RFA# 2201, Applicable on CA02.</xref>
                        </li>
                        <li>
                            <xref
                                href="../../../Rosetta/common_newest/LxAdv_CA-ref.cite4thisresource-LxAdv-ref.parallelcite-doc.related-content.dita"
                                >2015-02-19 - ref:cite4thisresource with ref:parallelcite and
                                doc:related-content id-CCCC-10497: Updated Scenario for CA02,
                                "DOC-ID" should be used with "DOCUMENT" service. RFA# 1873,
                                Applicable on CA02.</xref>
                        </li>
                    </ul>
                </p>
            </section>
            <section>
                <title>Regulation 8.0_PROD Schema</title>
                <p>2015-02-13<ul>
                        <li>
                            <xref
                                href="../../../Rosetta/common_newest/Rosetta_CA06-docinfo.custom-metafield-LxAdv-legisinfo.status.dita"
                                >2015-02-13 - docinfo:custom-metafield to legisinfo:status
                                id-CCCC-10520: Separate into distinct rules for CA05/06. Remove
                                ANNUALS/STATUTES DPSI from 06 R4.5 Item #2048.</xref>
                        </li>
                        <li>
                            <xref
                                href="../../../Rosetta/common_newest/LxAdv_CA-ref.cite4thisresource-LxAdv-ref.parallelcite-doc.related-content.dita"
                                >2015-02-13 - ref:cite4thisresource with ref:parallelcite and
                                doc:related-content id-CCCC-10497: Updated citation R.S.N.B., added
                                period in the last. RFA# 200, Applicable on CA05.</xref>
                        </li>
                        <li>
                            <xref
                                href="../../../Rosetta/common_newest/Rosetta_CA06-docinfo.custom-metafield-LxAdv-legisinfo.status.dita"
                                >2015-02-10 - docinfo:custom-metafield to legisinfo:status
                                id-CCCC-10520: Separate out Table for Annual DPSI Values. Applicable
                                on CA05/06. R4.5 Item #2048.</xref>
                        </li>
                        <li>
                            <xref
                                href="../../../Rosetta/DITA-CAN/CA06-Regulation/docinfo.versioninfo.dita"
                                >2015-02-10 - docinfo:versioninfoid-CA06-13833: Add note and cross
                                ref to check logic on custom-metafield before applying this logic on
                                historical or consolidated. Also create "consolidated" markup when
                                no <sourcexml>docinfo:versioninfo</sourcexml>. R4.5 Item
                                #2048.</xref>
                        </li> </ul>
                </p>
                <p>2015-01-27<ul>
                        <li>
                            <xref
                                href="../../../Rosetta/common_newest/Rosetta_CAN_docinfo.custom-metafields-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta.meta.metaitem.dita"
                                >2015-01-27 - docinfo:custom-metafields to
                                doc:legacy-metadata[@metadatasource="lbu-meta"]/meta/metaitem
                                id-CCCC-10251: For CA05,CA06,CA07 and CA08 Existing topic CA first
                                document in "current" material (id-CCCC-10517) removed and added a
                                note here to handle firstActDocument</xref>
                        </li>
                        <li>
                            <xref
                                href="../../../Rosetta/common_newest/LxAdv_CA-ref.cite4thisresource-LxAdv-ref.parallelcite-doc.related-content.dita"
                                >2015-01-26 - ref:cite4thisresource with ref:parallelcite and
                                doc:related-content id-CCCC-10497: Update proc:param
                                name="normprotocol" from value="jcite" to value="CAEditorial"; for
                                CA01, CA02, CA04, CA05, CA06, CA07 and CA08. R4.5 RFA #1873.</xref>
                        </li>
                        <li>
                            <xref
                                href="../../../Rosetta/common_newest/Rosetta_docinfo.hier-LxAdv-doc.hier.dita"
                                >2015-01-23 - docinfo:hier to doc:hier id-CCCC-10297: Added note to
                                convert
                                    <sourcexml>docinfo:hierlev/@exclude-from-displayunits="true"</sourcexml>
                                into <targetxml>doc:hier/@includeintoc="false"</targetxml>.</xref>
                        </li>
                        <li>
                            <xref
                                href="../../../Rosetta/common_newest/Rosetta_CA-docinfo.custom-metafield-LxAdv-legisinfo.status.dita"
                                >2015-01-22 - docinfo:custom-metafield to legisinfo:status
                                id-CCCC-10496: Changed attaribute value
                                    <targetxml>@statuscode="repealedshell"</targetxml> to
                                    <targetxml>@statuscode="repealed"</targetxml>. Applicable on
                                CA05.</xref>
                        </li>
                        <li>
                            <xref
                                href="../../../Rosetta/common_newest/Rosetta_docinfo.versioninfo--LxAdv_ref.groupid.dita"
                                >2015-01-21 - docinfo:versioninfo to ref:groupid id-CCCC-10499: Per
                                Enterprise Architecture, update target urn from "urn:variants-1:" to
                                "urn:cldi-1:". R4.5 RFA #2146.</xref>
                        </li>
                        <li>
                            <xref
                                href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita"
                                >2015-01-19 - docinfo:assoc-links to doc:related-content
                                id-CCCC-10284: For CA05 - CA08- Updated Instruction and included
                                    "<targetxml>related-content-grp</targetxml>" markup inside the
                                target Example 8 for conversion of QUERY link to
                                doc:related-content.</xref>
                        </li>
                    </ul>
                </p>
            </section>
            <section>
                <title>Regulation 8.0_PROD Schema (2015-01-15)</title>
                <p>2015-01-15<ul>
                        <li>
                            <xref
                                href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita"
                                >2015-01-13 - docinfo:assoc-links to doc:related-content
                                id-CCCC-10284: For CA05 - CA08 Conversion Needs to split multiple
                                ORs into a separate <targetxml>doc:related-content-item</targetxml>.
                                Refer Example 9</xref>
                        </li>
                        <li>
                            <xref
                                href="../../../Rosetta/common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita"
                                >2015-01-09 - remotelink to ref:crossreference id-CCCC-10465: For
                                the two use cases associated with url (target
                                    <targetxml>url</targetxml> or
                                <targetxml>ref:lnlink</targetxml>): Added exceptional rule to not
                                concatenate values when <sourcexml>@hrefclass</sourcexml> content is
                                already present in <sourcexml>@href</sourcexml>. Expanded examples 5
                                and 7 to illustrate the scenario. Responds to data for UK10
                                Dictionaries but applies in general. R4.5 Content Issue 2120.</xref>
                        </li>
                    </ul>
                </p>
            </section>
            <section>
                <title>Regulation 8.0_PROD Schema (2015-01-06)</title>
                <p>2015-01-06<ul>
                        <li>
                            <xref
                                href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita"
                                >2015-01-02 - docinfo:assoc-links to doc:related-content
                                id-CCCC-10284: Added
                                    <sourcexml>docinfo:assoc-links/remotelink[@service="QUERY"]</sourcexml>
                                and
                                    <sourcexml>docinfo:assoc-links-grp/remotelink[@service="QUERY"]</sourcexml>
                                to generate <targetxml>doc:related-content</targetxml> markup.
                                Applicable on CA05.</xref>
                        </li>
                        <li>
                            <xref
                                href="../../../Rosetta/common_newest/LxAdv_CA-legisinfo.statusgroup-LxAdv-classify.classification.dita"
                                >2015-01-02 - CA first document in "current" material id-CCCC-10517:
                                Updated <targetxml>classify:classcode/@normval</targetxml> attribute
                                value from false to true. R 4.5 Issue # 2048, Applicable on
                                CA05-CA08.</xref>
                        </li>
                    </ul>
                </p>
            </section>

            <section>
                <title>Regulation 8.0_PROD Schema (2014-12-19)</title>
                <p>2014-12-19<ul>
                        <li>
                            <xref
                                href="../../../Rosetta/common_newest/LxAdv_CA-legisinfo.statusgroup-LxAdv-classify.classification.dita"
                                >2014-12-19 - CA first document in "current" material id-CCCC-10517:
                                Added new instruction for creation of
                                    <targetxml>classify:classification/classify:classitem/classify:classitem-identifier/classify:classname</targetxml>.
                                Applicable on CA05-CA08.</xref>
                        </li>
                        <li>
                            <xref
                                href="../../../Rosetta/common_newest/LxAdv_CA-ref.cite4thisresource-LxAdv-ref.parallelcite-doc.related-content.dita"
                                >2014-12-19 - ref:cite4thisresource with ref:parallelcite and
                                doc:related-content id-CCCC-10497: Updated citation from [2000]
                                A.C.F. No. 1985 to [2000] A.C.F. no 1985, for CA01.</xref>
                        </li>
                        <li>
                            <xref
                                href="../../../Rosetta/common_newest/Rosetta_title-LxAdv-title.dita"
                                >2014-12-19 - title and title id-CCCC-10479: Added <b>CA06-Regs</b>
                                stream name inside the existing instruction for handling
                                    <sourcexml>title/nl</sourcexml>.</xref>
                        </li>
                    </ul>
                </p>
            </section>
            <section>
                <title>Regulation 8.0_PROD Schema (2014-12-17)</title>
                <p>2014-12-17<ul>
                        <li>
                            <xref
                                href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita"
                                >2014-12-17 - docinfo:assoc-links to doc:related-content
                                id-CCCC-10284: Added a Note for CA06-CA07 for handling
                                    <sourcexml>docinfo:assoc-links-grp[docinfo:assoc-links-grp="enabling"]/remotelink[@service="QUERY"
                                </sourcexml>
                            </xref>
                        </li>
                        <li>
                            <xref href="../../../Rosetta/DITA-CAN/CA06-Regulation/leg.juris.dita"
                                >2014-12-16 - leg:juris id-CA06-13818: Updated the instruction and
                                example for handling <sourcexml>leg:juris</sourcexml> and added the
                                new elements <targetxml>globalentity:entityReference</targetxml> and
                                    <targetxml>globalentity:content</targetxml> under
                                    the<targetxml>globalentity:entity/</targetxml> target
                                markup.</xref>
                        </li>
                        <li>
                            <xref
                                href="../../../Rosetta/common_newest/LxAdv_CA-ref.cite4thisresource-LxAdv-ref.parallelcite-doc.related-content.dita"
                                >2014-12-16 - ref:cite4thisresource with ref:parallelcite and
                                doc:related-content id-CCCC-10497: Added note for conversion of
                                short term citations and it's come any combinations with the
                                mandatory (primary or alternative citation) citations then short
                                terms ciatation should be converetd according to short table.
                                Applicable on CA06-CA07.</xref>
                        </li>
                        <li>
                            <xref
                                href="../../../Rosetta/common_newest/LxAdv_CA-ref.cite4thisresource-LxAdv-ref.parallelcite-doc.related-content.dita"
                                >2014-12-16 - ref:cite4thisresource with ref:parallelcite and
                                doc:related-content id-CCCC-10497: Added note to identify primary
                                and alternate language when primary and alternate citation are same.
                                Applicable on CA05-CA08.</xref>
                        </li>
                    </ul>
                </p>
            </section>
            <section>
                <title>Regulation 8.0_PROD Schema (2014-11-27)</title>
                <p>2014-11-27<ul>
                        <li>
                            <xref
                                href="../../../Rosetta/common_newest/Rosetta_CA-docinfo.custom-metafield-LxAdv-legisinfo.status.dita"
                                >2014-11-24 - docinfo:custom-metafield to legisinfo:status
                                id-CCCC-10496: Added note to generate Historical Note convertes into
                                    <targetxml>legisinfo:statustext</targetxml> then conversion
                                should not convert <sourcexml>leg:histnote/p/text</sourcexml> at his
                                original location, Applicable on CA05 &amp; CA06.</xref>
                        </li>
                        <li>
                            <xref
                                href="../../../Rosetta/common_newest/LxAdv_CA-ref.cite4thisresource-LxAdv-ref.parallelcite-doc.related-content.dita"
                                >2014-11-18 - ref:cite4thisresource with ref:parallelcite and
                                doc:related-content id-CCCC-10497: For CA02- Updated instructions
                                for "proc:param name="targetdoclang" value="" for both English and
                                French. P4, Db issue #365</xref>
                        </li>
                        <li>
                            <xref
                                href="../../../Rosetta/common_newest/LxAdv_CA-ref.cite4thisresource-LxAdv-ref.parallelcite-doc.related-content.dita"
                                >2014-11-11 - ref:cite4thisresource with ref:parallelcite and
                                doc:related-content id-CCCC-10497: Added note and table "Terms
                                conversion for CA05" for terms translation, Applicable on
                                CA05.</xref>
                        </li>
                        <li>
                            <xref
                                href="../../../Rosetta/common_newest/LxAdv_CA-ref.cite4thisresource-LxAdv-ref.parallelcite-doc.related-content.dita"
                                >2014-11-06 - ref:cite4thisresource with ref:parallelcite and
                                doc:related-content id-CCCC-10497: Added some english to french
                                terms for translation of the citation and also update c. to ch. in
                                CA06 and CA07 table</xref>
                        </li>
                    </ul>
                </p>
            </section>
            <section>
                <title>Regulation 8.0_PROD Schema (2014-10-30)</title>
                <p>2014-10-30<ul>
                        <li>
                            <xref
                                href="../../../Rosetta/common_newest/Rosetta_CA-docinfo.custom-metafield-LxAdv-legisinfo.status.dita"
                                >2014-10-28 - docinfo:custom-metafield to legisinfo:status
                                id-CCCC-10496: Added new DPSI of ANNUALS for creation of
                                    <targetxml>legisinfo:status</targetxml> and also change the
                                attribute value of
                                    <targetxml>legisinfo:status/@statuscode="repealed"</targetxml>
                                to
                                    <targetxml>legisinfo:status/@statuscode="repealedshell"</targetxml>.
                                Applicable on CA05 &amp; CA06.</xref>
                        </li>
                        <li>
                            <xref
                                href="../../../Rosetta/common_newest/Rosetta_figure-LxAdv-figure.dita"
                                >2014-10-28 - figure to figure id-CCCC-10320: Moved instruction
                                regarding the XPath XPath <sourcexml>caption/note</sourcexml> into a
                                separate topic. Not a rule change, just a minor reorganization of
                                the instructions.</xref>
                        </li>
                        <li>
                            <xref
                                href="../../../Rosetta/common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita"
                                >2014-10-27 - remotelink to ref:crossreference id-CCCC-10465: Minor.
                                Within use case for <sourcexml>@service="DOC-ID"</sourcexml>, rule
                                for <sourcexml>@remotekey1="REFPTID"</sourcexml> now also applies
                                when <sourcexml>@remotekey1="REFPT"</sourcexml>. That is, the
                                condition is expanded to include value
                                    <sourcexml>"REFPT"</sourcexml>; the mapping is unchanged. The
                                value <sourcexml>"REFPT"</sourcexml> is new in Oct 2014 redelivery
                                of UK11-DN but the rule applies to any stream where
                                    <sourcexml>@remotekey1="REFPT"</sourcexml> may occur. R4.5
                                Content Issue 2003.</xref>
                        </li>
                        <li>
                            <xref
                                href="../../../Rosetta/common_newest/Rosetta_figure-LxAdv-figure.dita"
                                >2014-10-24 - figure to figure id-CCCC-10320: Added instructions and
                                example to handle the new XPath <sourcexml>caption/note</sourcexml>.
                                (R4.5 Content Issue List #1993)</xref>
                        </li>
                    </ul>
                </p>
            </section>
            <section>
                <title>Regulation 8.0_PROD Schema (2014-10-21) </title>
                <p>2014-10-21<ul>
                        <li>
                            <xref href="leg.levelbody.dita">2014-10-21 - leg:levelbody to
                                primlaw:level id-CCCC-13821: Updated the target example for handling
                                Editior Note means added attribute @notetype="instruction" inside
                                the note markup.</xref>
                        </li>
                        <li>
                            <xref
                                href="../../../Rosetta/common_newest/LxAdv_CA-ref.cite4thisresource-LxAdv-ref.parallelcite-doc.related-content.dita"
                                >2014-10-20 - ref:cite4thisresource with ref:parallelcite and
                                doc:related-content id-CCCC-10497: Updated the old citation inside
                                the table for CA08 stream i.e. appendice II to Appendix II.</xref>
                        </li>
                        <li>
                            <xref
                                href="../../../Rosetta/common_newest/LxAdv_CA-ref.cite4thisresource-LxAdv-ref.parallelcite-doc.related-content.dita"
                                >2014-10-20 - ref:cite4thisresource with ref:parallelcite and
                                doc:related-content id-CCCC-10497: Updated instruction to remove
                                english version and add french version. P4 Db issue #324</xref>
                        </li>
                        <li>
                            <xref
                                href="../../../Rosetta/common_newest/Rosetta_inlineobject-LxAdv-figure_ref.inlineobject.dita"
                                >2014-10-13 - inlineobject to figure/ref:inlineobject id-CCCC-10368:
                                Added note and example to suppress <targetxml>proc:nl</targetxml>
                                from before and after of <targetxml>figure/inlineobject</targetxml>
                                when it comes inside <targetxml>verbatim</targetxml> element.</xref>
                        </li>
                        <li>
                            <xref
                                href="../../../Rosetta/common_newest/Rosetta_title-LxAdv-title.dita"
                                >2014-10-07 - title to title id-CCCC-10479: Removed instruction and
                                example to convert attribute
                                    <sourcexml>@searchtype="DIGEST-SUBJECT"</sourcexml>. Applicable
                                to CA12.</xref>
                        </li>
                        <li>
                            <xref
                                href="../../../Rosetta/common_newest/LxAdv_CA-ref.cite4thisresource-LxAdv-ref.parallelcite-doc.related-content.dita"
                                >2014-10-01 - ref:cite4thisresource with ref:parallelcite and
                                doc:related-content id-CCCC-10497: Added the new citation inside the
                                table for CA08 stream i.e. Annexe abrogratives to Repeal
                                Schedules.</xref>
                        </li>
                        <li>
                            <xref
                                href="../../../Rosetta/common_newest/LxAdv_CA-ref.cite4thisresource-LxAdv-ref.parallelcite-doc.related-content.dita"
                                >2014-10-01 - ref:cite4thisresource with ref:parallelcite and
                                doc:related-content id-CCCC-10497: Updated CA05 table for "s." to
                                "art." and "art." to "s." for citation "L.R.C." and "R.S.C.". Also
                                updated the citation "L.N.B." to generate ch. to c.. Applicable on
                                CA05.</xref>
                        </li>
                        <li>
                            <xref
                                href="../../../Rosetta/common_newest/Rosetta_CAN_title-Chof-leg.heading_to-LexisAdvance_heading_title.dita"
                                >2014-10-01 - leg:heading/title to heading/title id-CCCC-10253:
                                Added CA08 content stream code inside the rule for suppressed the
                                "[@align="center"]" attribute in target mapping.</xref>
                        </li>
                    </ul>
                </p>
            </section>
            <section>
                <title>Regulation 8.0_PROD Schema (2014-09-25) </title>
                <p>2014-09-25<ul>
                        <li>
                            <xref
                                href="../../../Rosetta/common_newest/Rosetta_CA-docinfo.custom-metafield-LxAdv-legisinfo.status.dita"
                                >2014-09-23 - docinfo:custom-metafield to legisinfo:status
                                id-CCCC-10496: Updated rule and example to capture entire text of
                                    <sourcexml>leg:histnote/p/text</sourcexml> in
                                    <targetxml>legisinfo:statustext</targetxml>. Applicable only on
                                CA05 &amp; CA06.</xref>
                        </li>
                        <li>
                            <xref
                                href="../../../Rosetta/common_newest/LxAdv_CA-ref.cite4thisresource-LxAdv-ref.parallelcite-doc.related-content.dita"
                                >2014-09-23 - ref:cite4thisresource with ref:parallelcite and
                                doc:related-content id-CCCC-10497: Added English
                                    <sourcexml>Enactment Clause</sourcexml> To <targetxml>Formule
                                    d'édiction </targetxml>, <sourcexml>Long Title</sourcexml> To
                                    <targetxml>Titre intégral</targetxml>, <sourcexml>Short
                                    Title</sourcexml> To <targetxml>Titre
                                    abrégé</targetxml>,<sourcexml>Preamble</sourcexml> To
                                    <targetxml>Préambule </targetxml> and vice versa in CA06-CA07
                                Table</xref>
                        </li>
                    </ul>
                </p>
            </section>
            <section>
                <title>Regulation 8.0_PROD Schema (2014-09-22) </title>
                <p>2014-09-22<ul>
                        <li>
                            <xref
                                href="../../../Rosetta/common_newest/Rosetta_inlineobject-Chof-verbatim-LxAdv-figure_ref.inlineobject.dita"
                                >2014-09-22 - verbatim/inlineobject to figure/ref:inlineobject
                                id-CCCC-10505: Created instruction for handling
                                    <sourcexml>inlineobject</sourcexml> within
                                    <sourcexml>verbatim</sourcexml> in source documents.</xref>
                        </li>
                        <li>
                            <xref
                                href="../../../Rosetta/common_newest/Rosetta_CA-docinfo.custom-metafield-LxAdv-legisinfo.status.dita"
                                >2014-09-17 - docinfo:custom-metafield to legisinfo:status
                                id-CCCC-10496: Added Status text column in the DPSI table and also
                                added an instruction to generate
                                    <targetxml>legisinfo:statustext</targetxml> value based on
                                historical note. Added example also. Applicable only on CA05 &amp;
                                CA06.</xref>
                        </li>
                        <li>
                            <xref
                                href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita"
                                >2014-09-16 - docinfo:assoc-links to doc:related-content
                                id-CCCC-10284: Added a note to create
                                    <targetxml>proc:param/@name="attachment-smi"</targetxml> and
                                    <targetxml>proc:param/@value</targetxml> as these was there in
                                the snippet but was missing in instruction and also added a note in
                                to simplify in output <targetxml>ref:key-value/@value</targetxml>
                            </xref>
                        </li>
                        <li>
                            <xref
                                href="../../../Rosetta/common_newest/Rosetta_CAN_docinfo.custom-metafields-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta.meta.metaitem.dita"
                                >2014-09-15 - docinfo:custom-metafields to
                                doc:legacy-metadata[@metadatasource="lbu-meta"]/meta/metaitem
                                id-CCCC-10251: update target mapping of
                                    <sourcexml>docinfo:custom-metafields/docinfo:custom-metafield[@name="act-id"]</sourcexml>
                                from Head to
                                    <targetxml>doc:docinfo/doc:membership/ref:groupid[@group-type="leg-id-1"]/ref:resourceid</targetxml>
                            </xref>
                        </li>
                        <li>
                            <xref
                                href="../../../Rosetta/common_newest/Rosetta_docinfo.versioninfo--LxAdv_ref.groupid.dita"
                                >2014-09-15 - docinfo:versioninfo to ref:groupid id-CCCC-10499:
                                Updated target mapping of
                                    <sourcexml>docinfo:versioninfo/docinfo:versionbranch</sourcexml>
                                from Head to
                                    <targetxml>doc:docinfo/doc:membership/ref:groupid[@group-type="variants-1"]/ref:resourceid</targetxml>
                            </xref>
                        </li>
                    </ul>
                </p>
            </section>

            <section>
                <title>Regulation 7.7_PROD Schema (2014-09-05) </title>
                <p>2014-09-05<ul>
                        <li>
                            <xref href="../../../Rosetta/DITA-CAN/CA06-Regulation/leg.miscdate.dita"
                                >2014-09-05 - leg:miscdate id-CA06-13824: Instruction and example
                                updated for added attribute
                                    <targetxml>@datetype="miscdate"</targetxml> inside the
                                    <targetxml>miscdate</targetxml> markup.</xref>
                        </li>
                        <li>
                            <xref
                                href="../../../Rosetta/common_newest/LxAdv_CA-ref.cite4thisresource-LxAdv-ref.parallelcite-doc.related-content.dita"
                                >2014-09-03 - ref:cite4thisresource with ref:parallelcite and
                                doc:related-content id-CCCC-10497: Added instructions for proc:param
                                name="targetdoclang". R4.5 #1873.</xref>
                        </li>
                        <li>
                            <xref
                                href="../../../Rosetta/common_newest/LxAdv_CA-ref.cite4thisresource-LxAdv-ref.parallelcite-doc.related-content.dita"
                                >2014-08-27 - ref:cite4thisresource with ref:parallelcite and
                                doc:related-content id-CCCC-10497: Added the new rule for CA02
                                content streams for alternate language. P4 issue #324.</xref>
                        </li>
                    </ul>
                </p>
            </section>
            <section>
                <title>Regulation 7.7_PROD Schema (2014-08-25) </title>
                <p>2014-08-25<ul>
                        <li>
                            <xref
                                href="../../../Rosetta/common_newest/LxAdv_CA-ref.cite4thisresource-LxAdv-ref.parallelcite-doc.related-content.dita"
                                >2014-08-25 - ref:cite4thisresource with ref:parallelcite and
                                doc:related-content id-CCCC-10497: Added the new citation inside the
                                table for CA08 i.e. R.S.C. 1985, Appendix II, No. 4, s. L.</xref>
                        </li>
                        <li>
                            <xref
                                href="../../../Rosetta/common_newest/LxAdv_CA-ref.cite4thisresource-LxAdv-ref.parallelcite-doc.related-content.dita"
                                >2014-08-25 - ref:cite4thisresource with ref:parallelcite and
                                doc:related-content id-CCCC-10497: Added Schedule to Annexe and vice
                                a versa in C.R.C citation, Applicable for CA06 and CA07.</xref>
                        </li>
                        <li>
                            <xref
                                href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita"
                                >2014-08-21 - docinfo:assoc-links to doc:related-content
                                id-CCCC-10284: Added instructions and an example for converting
                                    <sourcexml>lnlink[@service="ATTACHMENT"]</sourcexml> to
                                    <targetxml>ref:lnlink</targetxml>. Applicable on
                                CA05-CA08.</xref>
                        </li>
                        <li>
                            <xref
                                href="../../../Rosetta/common_newest/LxAdv_CA-ref.cite4thisresource-LxAdv-ref.parallelcite-doc.related-content.dita"
                                >2014-08-21 - ref:cite4thisresource with ref:parallelcite and
                                doc:related-content id-CCCC-10497: Updated C.O.M.C. with "no" and
                                T.M.O.B. "No." for CA04- Db issue #326</xref>
                        </li>
                    </ul>
                </p>
            </section>
            <section>
                <title>Regulation 7.7_PROD Schema (2014-08-21) </title>
                <p>2014-08-21<ul>
                        <li>
                            <xref
                                href="../../../Rosetta/common_newest/Rosetta_CA-docinfo.custom-metafield-LxAdv-legisinfo.status.dita"
                                >2014-08-19 - docinfo:custom-metafield to legisinfo:status
                                id-CCCC-10496: Updated rule to read only DPSI value and remove the
                                reference to historical notes. Applicable only on CA05 &amp;
                                CA06.</xref>
                        </li>
                        <li>
                            <xref
                                href="../../../Rosetta/common_newest/Rosetta_CA-docinfo.custom-metafield-LxAdv-legisinfo.status.dita"
                                >2014-08-13 - docinfo:custom-metafield to legisinfo:status
                                id-CCCC-10496: Updated Instruction and example for creating
                                    <targetxml>legisinfo:status[@statuscode="repealed"]/legisinfo:statustext</targetxml>
                                markup in target converstion when input is having desired DPSI
                                value.</xref>
                        </li>
                    </ul>
                </p>
            </section>

            <section>
                <title>Regulation 7.7_PROD Schema (2014-08-12) </title>
                <p>2014-08-12<ul>
                        <li>
                            <xref
                                href="../../../Rosetta/DITA-CAN/CA06-Regulation/leg.level-not-in-force.dita"
                                >2014-08-12 - leg:level-not-in-force id-CA06-13819: Instruction and
                                example updated for handling of <b>Editior Notes</b> and <b>Official
                                    Notes</b> which is comes under the
                                    <sourcexml>leg:level-not-in-force</sourcexml> markup and its
                                mapped with <targetxml>note[@notetype="instruction"]</targetxml> and
                                    <targetxml>note[@notesource="official"]</targetxml>.</xref>
                        </li>
                        <li>
                            <xref
                                href="../../../Rosetta/common_newest/Rosetta_docinfo.versioninfo--LxAdv_ref.groupid.dita"
                                >2014-08-11 - docinfo:versioninfo to ref:groupid id-CCCC-10499:
                                Updated source snippet elements starting with "docinfo:" instead of
                                "doc:".</xref>
                        </li>
                        <li>
                            <xref
                                href="../../../Rosetta/common_newest/Rosetta_CAN_docinfo.custom-metafields-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta.meta.metaitem.dita"
                                >2014-08-11 - docinfo:custom-metafields to
                                doc:legacy-metadata[@metadatasource="lbu-meta"]/meta/metaitem
                                id-CCCC-10251: Added identifier
                                    <sourcexml>docinfo:custom-metafields/docinfo:custom-metafield[@searchtype="act-id"]</sourcexml>
                                to generate
                                    <targetxml>*:head/ref:groupid/ref:resourceid/@ref:resourcekey=urn:leg-id-1:X</targetxml>.</xref>
                        </li>
                        <li>
                            <xref
                                href="../../../Rosetta/common_newest/LxAdv_CA-ref.cite4thisresource-LxAdv-ref.parallelcite-doc.related-content.dita"
                                >2014-08-11 - ref:cite4thisresource with ref:parallelcite and
                                doc:related-content id-CCCC-10497: Updated references in the table
                                of L.R.N.-B. to L.R.N.B. and L.N.-B. to L.N.B. for CA05.</xref>
                        </li>
                        <li>
                            <xref href="../../../Rosetta/common_newest/Rosetta_text-LxAdv-text.dita"
                                >2014-08-11 - text to text id-CCCC-10477: For CANADA Content Stream:
                                Only move the <sourcexml> text@align</sourcexml> to the parent
                                    <targetxml>p</targetxml> if it is the only text in
                                    <sourcexml>p</sourcexml>, Otherwise, wrap the
                                    <sourcexml>text</sourcexml> with <targetxml>p</targetxml> and
                                move the <sourcexml>@align</sourcexml> attribute to the newly
                                created <targetxml> p</targetxml>.</xref>
                        </li>
                    </ul>
                </p>
            </section>
            <section>
                <title>Regulation 7.6_PROD Schema (2014-08-01) </title>
                <p>2014-08-01<ul>
                        <li>
                            <xref
                                href="../../../Rosetta/DITA-CAN/CA06-Regulation/leg.num_ci.cite.dita"
                                >2014-08-01 - leg:num/ci:cite id-CA06-13825: Updated the instruction
                                and example, when <sourcexml>leg:num</sourcexml> does not exit
                                inside the input document then create only one target
                                    "<targetxml>ref:citations/ref:cite4thisresource[@citetype="reporter"]</targetxml>"</xref>
                        </li>
                        <li>
                            <xref
                                href="../../../Rosetta/common_newest/Rosetta_leg.num_ln.user-displayed-LxAdv-classify.classification.dita"
                                >2014-08-01 - leg:num[@ln.user-displayed="false"] to
                                classify:classification: Updated the note with example for handling
                                "solsak" scenario means it should be placed above the first
                                    <targetxml>legisinfo:officialtitle</targetxml> instead of the
                                last element in the <targetxml>*:head</targetxml> section</xref>
                        </li>
                    </ul>
                </p>
            </section>
            <section>
                <title>Regulation 7.6_PROD Schema (2014-07-30) </title>
                <p>2014-07-30<ul>
                        <li>
                            <xref
                                href="../../../Rosetta/common_newest/Rosetta_leg.num_ln.user-displayed-LxAdv-classify.classification.dita"
                                >2014-07-30 - leg:num[@ln.user-displayed="false"] to
                                classify:classification: Added a note for handling "solsak" scenario
                                means it should be placed above the first
                                    <targetxml>legisinfo:officialtitle</targetxml> instead of the
                                last element in the <targetxml>*:head</targetxml> section</xref>
                        </li>
                        <li>
                            <xref
                                href="../../../Rosetta/common_newest/Rosetta_CA-docinfo.custom-metafield-LxAdv-legisinfo.status.dita"
                                >2014-07-28 - docinfo:custom-metafield to legisinfo:status
                                id-CCCC-10496: Added a note for creating empty
                                    <targetxml>primlaw:level[@leveltype="unclassified"]</targetxml>
                                inside <targetxml>regulation:body</targetxml> in target conversion
                                when input <sourcexml>leg:body</sourcexml> markup is only having one
                                child <sourcexml>leg:info</sourcexml>.</xref>
                        </li>
                        <li>
                            <xref
                                href="../../../Rosetta/DITA-CAN/CA06-Regulation/leg.currencydate.dita"
                                >2014-07-25 - leg:currencydate id-CA06-13811: Added instruction to
                                suppress target markup of <sourcexml>leg:currencydate</sourcexml>
                                with it's child <sourcexml>remotelink</sourcexml> from conversion
                                Webteam # 271366.</xref>
                        </li>
                        <li>
                            <xref
                                href="../../../Rosetta/common_newest/LxAdv_CA-ref.cite4thisresource-LxAdv-ref.parallelcite-doc.related-content.dita"
                                >2014-07-24 - ref:cite4thisresource with ref:parallelcite and
                                doc:related-content id-CCCC-10497: Added new rule for conversion of
                                CA01, CA02, CA04 and updated instruction for CA05-CA08.</xref>
                        </li>
                        <li>
                            <xref
                                href="../../../Rosetta/common_newest/LxAdv_CA-ref.cite4thisresource-LxAdv-ref.parallelcite-doc.related-content.dita"
                                >2014-07-21 - ref:cite4thisresource with ref:parallelcite and
                                doc:related-content id-CCCC-10497: Updated CA01 citation [1986]
                                A.C.A.C. no 1 and snippet.</xref>
                        </li>
                        <li>
                            <xref
                                href="../../../Rosetta/common_newest/LxAdv_CA-ref.cite4thisresource-LxAdv-ref.parallelcite-doc.related-content.dita"
                                >2014-07-09 - ref:cite4thisresource with ref:parallelcite and
                                doc:related-content id-CCCC-10497: Added primary and alternate
                                language for CA04- Db issue #250</xref>
                        </li>
                        <li>
                            <xref
                                href="../../../Rosetta/common_newest/Rosetta_inlineobject-LxAdv-ref.inlineobject.dita"
                                >2014-07-08 - inlineobject to ref:inlineobject id-CCCC-10369: Not a
                                rule change. Clarification added to note regarding suppression of
                                    <sourcexml>inlineobject</sourcexml> when
                                    <sourcexml>inlineobject/@filename</sourcexml> contains certain
                                values.</xref>
                        </li>
                        <li>
                            <xref
                                href="../../../Rosetta/common_newest/LxAdv_CA-ref.cite4thisresource-LxAdv-ref.parallelcite-doc.related-content.dita"
                                >2014-07-07 - ref:cite4thisresource with ref:parallelcite and
                                doc:related-content id-CCCC-10497: Added R and Sch alternatives in
                                CA06 and CA07 table</xref>
                        </li>
                        <li>
                            <xref
                                href="../../../Rosetta/common_newest/Rosetta_docinfo.versioninfo-LxAdv-doc.versioninfo-scheme.dita"
                                >2014-07-02 - docinfo:versioninfo to doc:versioninfo id-CCCC-10307:
                                Edit a note for Canada only to generate <targetxml>@day</targetxml>
                                attribute value must be in sequential digit number. No need to add
                                leading zero (0) to make the value in two digits. This immediate
                                applies to ALL Canada streams.</xref>
                        </li>
                        <li>
                            <xref
                                href="../../../Rosetta/common_newest/LxAdv_CA-ref.cite4thisresource-LxAdv-ref.parallelcite-doc.related-content.dita"
                                >2014-06-27 - ref:cite4thisresource with ref:parallelcite and
                                doc:related-content id-CCCC-10497: Added table for CA04....Db issue
                                #1552</xref>
                        </li>
                        <li>
                            <xref
                                href="../../../Rosetta/common_newest/Rosetta_docinfo.versioninfo--LxAdv_ref.groupid.dita"
                                >2014-06-26 - docinfo:versioninfo to ref:groupid id-CCCC-10499: Make
                                    <targetxml>ref:resourcekey</targetxml> UCN value urn conform to
                                PGUID registry, e.g.
                                "urn:variants-1:03JC-55f4bd2a842a39d3580d89a0dcbb9cb0".</xref>
                        </li>
                    </ul>
                </p>
            </section>
            <section>
                <title>Regulation 7.6_PROD Schema (2014-06-25)</title>
                <p>2014-06-25<ul>
                        <li>
                            <xref
                                href="../../../Rosetta/common_newest/LxAdv_CA-ref.cite4thisresource-LxAdv-ref.parallelcite-doc.related-content.dita"
                                >2014-06-25 - ref:cite4thisresource with ref:parallelcite and
                                doc:related-content id-CCCC-10497: Added instruction for
                                    <targetxml>ref:marker</targetxml> and updated table for
                                CA01-CA02, CA05-CA07.</xref>
                        </li>
                        <li>
                            <xref
                                href="../../../Rosetta/common_newest/Rosetta_docinfo.doc-id-LxAdv-dcidentifier_lnmetaidentifier-scheme.dita"
                                >2014-06-23 - docinfo:doc-id to
                                dc:identifier[@lnmeta:identifier-scheme] id-CCCC-10293: Note and
                                Example removed - For CA05 Acts and Bills- Mapping in dc:identifier
                                for act-no and chunk-no. Db issue #1464</xref>
                        </li>
                        <li>
                            <xref
                                href="../../../Rosetta/common_newest/Rosetta_CAN_docinfo.custom-metafields-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta.meta.metaitem.dita"
                                >2014-06-23 - docinfo:custom-metafields to
                                doc:legacy-metadata[@metadatasource="lbu-meta"]/meta/metaitem
                                id-CCCC-10251: Added Rule for mapping
                                    <sourcexml>docinfo:custom-metafields/docinfo:custom-metafield/@act-id</sourcexml>
                                in HEAD Section in target, this is applicable for CA05-CA08
                                only</xref>
                        </li>
                        <li>
                            <xref
                                href="../../../Rosetta/common_newest/LxAdv_CA-ref.cite4thisresource-LxAdv-ref.parallelcite-doc.related-content.dita"
                                >2014-06-20 - ref:cite4thisresource with ref:parallelcite and
                                doc:related-content id-CCCC-10497: Changed
                                    <targetxml>ref:parallelcite@citetype</targetxml> to "parallel"
                                from "FrenchVersion" or "EnglishVersion" to be consistent with
                                    <targetxml>ref:parallelcite@citetype</targetxml> evreywhere
                                else.</xref>
                        </li>
                        <li>
                            <xref
                                href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita"
                                >2014-06-18 - docinfo:assoc-links to doc:related-content
                                id-CCCC-10284: Corrected minor typos in
                                    <sourcexml>lnlink[@service="QUERYLINK"]</sourcexml>
                                instructions.</xref>
                        </li>
                        <li>
                            <xref
                                href="../../../Rosetta/common_newest/LxAdv_CA-ref.cite4thisresource-LxAdv-ref.parallelcite-doc.related-content.dita"
                                >2014-06-17 - ref:cite4thisresource with ref:parallelcite and
                                doc:related-content id-CCCC-10497: Created.</xref>
                        </li>
                        <li>
                            <xref
                                href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita"
                                >2014-06-13 - docinfo:assoc-links to doc:related-content
                                id-CCCC-10284: Added instructions and an example for converting
                                    <sourcexml>lnlink[@service="QUERYLINK"]</sourcexml> to
                                    <targetxml>ref:lnlink</targetxml>.</xref>
                        </li>
                        <li>
                            <xref
                                href="../../../Rosetta/common_newest/Rosetta_CA-docinfo.custom-metafield-LxAdv-legisinfo.status.dita"
                                >2014-06-12 - docinfo:custom-metafield to legisinfo:status
                                id-CCCC-10496: Created. This is applicable to CA05 and CA06.</xref>
                        </li>
                        <li>
                            <xref
                                href="../../../Rosetta/common_newest/Rosetta_docinfo.versioninfo-LxAdv-doc.versioninfo-scheme.dita"
                                >2014-06-09 - docinfo:versioninfo to doc:versioninfo id-CCCC-10307:
                                Added note for Canada only to generate <targetxml>@day</targetxml>
                                attribute value as per the source. No need to add zero (0) to make
                                the value in two digits. This immediate applies to ALL Canada
                                streams.</xref>
                        </li>
                    </ul>
                </p>
            </section>
            <section>
                <title>Regulation 7.5_PROD Schema (2014-06-04)</title>
                <p>2014-06-04 <ul>
                        <li>
                            <xref
                                href="../../../Rosetta/DITA-CAN/CA06-Regulation/docinfo.versioninfo.dita"
                                >2014-06-04 - docinfo:versioninfoid-CA06-13833: Create the rule and
                                example for handling of <sourcexml>docinfo:versioninfo</sourcexml>
                                with child elements <sourcexml>docinfo:startdate</sourcexml> and
                                    <sourcexml>docinfo:enddate</sourcexml>
                            </xref>
                        </li>
                        <li>
                            <xref
                                href="../../../Rosetta/DITA-CAN/CA06-Regulation/leg.marginal-note.dita"
                                >2014-06-04 - leg:marginal-note id-CA06-13823: Instruction and
                                example updated for adding attribute
                                    <targetxml>[@notetype="reference"]</targetxml> inside the target
                                    <targetxml>marginnote</targetxml> element for handling the input
                                    <sourcexml>leg:marginal-note</sourcexml>.</xref>
                        </li>
                        <li>
                            <xref
                                href="../../../Rosetta/common_newest/Rosetta_footnote-LxAdv-footnote.dita"
                                >2014-06-02 - footnotegrp and footnote to footnotegrp and footnote
                                id-CCCC-10322: Canada only. Added special rule to suppress indent
                                from <sourcexml>footnote/fnbody/p[@indent]</sourcexml>. Applies
                                immediately to all Canada streams. R4.5 Content Issue 1609.</xref>
                        </li>
                        <li>
                            <xref
                                href="../../../Rosetta/DITA-CAN/CA06-Regulation/leg.num_ci.cite.dita"
                                >2014-05-29 - leg:num/ci:cite id-CA06-13825: Added instruction and
                                example, when No leg:num exit with text in it Webteam #
                                260692</xref>
                        </li>
                    </ul>
                </p>
            </section>
            <section>
                <title>Regulation 7.4_PROD Schema (2014-05-27)</title>
                <p>2014-05-27 <ul>
                        <li>
                            <xref href="leg.marginal-note.dita">2014-05-27 - modified mapping of
                                    <sourcexml>leg:marginal-note</sourcexml> to
                                    <targetxml>primlaw:bodytext/marginnote</targetxml></xref>
                        </li>
                    </ul>
                </p>
            </section>

            <section>
                <title>Regulation 7.4_PROD Schema (2014-04-30)</title>
                <p>
                    <ul>
                        <li>
                            <xref
                                href="../../../Rosetta/DITA-CAN/CA06-Regulation/leg.num_ci.cite.dita"
                                >2014-04-30 - leg:num/ci:cite: Update the instruction for adding the
                                attribute <targetxml>@citetype</targetxml> with "reporter" value
                                inside the <targetxml>ref:cite4thisresource</targetxml> in target
                                conversion when input is having
                                    <sourcexml>leg:num/ci:cite@type="cite4thisdoc"</sourcexml>.
                                Webteam # 255931 . </xref>
                        </li>
                        <li>
                            <xref
                                href="../../../Rosetta/DITA-CAN/CA06-Regulation/leg.officialnum_ci.cite.dita"
                                >2014-04-30 - leg:officialnum_ci:cite: Update the instruction for
                                adding the attribute <targetxml>@citetype</targetxml> with
                                "reporter" value inside the
                                    <targetxml>ref:cite4thisresource</targetxml> in target
                                conversion when input is having
                                    <sourcexml>leg:officialnum/ci:cite@type="cite4thisdoc"</sourcexml>.
                                Webteam # 255931 . </xref>
                        </li>
                        <li>
                            <xref
                                href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita"
                                >2014-04-28 - docinfo:assoc-links to doc:related-content: Clarified
                                instructions regarding <sourcexml>link</sourcexml> elements and
                                added an example (#4) illustrating the special
                                    <sourcexml>text/link</sourcexml> conversion. No mapping rules
                                where changed or added.</xref>
                        </li>
                        <li>
                            <xref
                                href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita"
                                >2014-04-21 - docinfo:assoc-links to doc:related-content: Added an
                                instruction to handle <sourcexml>link</sourcexml> elements. These
                                can potentially occur in any future UK data and will be present in
                                stream UK21fl when those documents become available later in
                                2014.</xref>
                        </li>
                        <li>
                            <xref
                                href="../../../Rosetta/common_newest/Rosetta_footnote-LxAdv-footnote.dita"
                                >2014-04-17 - footnotegrp and footnote to footnotegrp and footnote:
                                Added instruction for <sourcexml>footnotegrp</sourcexml> within
                                    <sourcexml>sigblock</sourcexml>. Specifies
                                    <targetxml>p/text</targetxml> wrapper for target
                                    <targetxml>sigblock/p/text/footnotegroup</targetxml>.
                                Immediately affects UK12 but will apply to any stream if the use
                                case occurs. Phase 6 UK discussion items 76 and 88.</xref>
                        </li>
                        <li>
                            <xref href="../../../Rosetta/common_newest/Rosetta_p-LxAdv-p.dita"
                                >2014-04-14 - p to p: Removed Colons from Labels.. DB item
                                #1255</xref>
                        </li>
                        <li>
                            <xref
                                href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita"
                                >2014-04-03 - docinfo:assoc-links to doc:related-content:
                                Illustrative changes. Examples modified. Mapping for
                                    <sourcexml>ci:cite</sourcexml> added to Example 3. Former
                                Examples 4 and 5 removed to avoid confusion with special AU-NZ use
                                case described in a separate module. R4.5 Content issue #1125, for
                                AU-NZ, has prompted the changes for this general module.</xref>
                        </li>
                        <li>
                            <xref
                                href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita"
                                >2014-03-25 - docinfo:assoc-links to doc:related-content: Added rule
                                and example for
                                    <sourcexml>docinfo:assoc-links/docinfo:assoc-links-grp/ci:cite</sourcexml>.
                                R4.5 Content issue #1125</xref>
                        </li>
                        <li>
                            <xref
                                href="../../../Rosetta/common_newest/Rosetta_figure-LxAdv-figure.dita"
                                >2014-03-20 - figure to figure: Illustrative change. Added example
                                to explicitly show standard conversion of child link to ref:lnlink.
                                Prompted by Phase 6 UK Discussion Item 77. Webteam 252434.</xref>
                        </li>
                        <li>
                            <xref
                                href="../../../Rosetta/common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita"
                                >2014-02-25 - remotelink to ref:crossreference: Updated instruction
                                and created new example (#16) for handling
                                    <sourcexml>remotelink[@service="QUERY"]</sourcexml>. New
                                instruction preserves pcdata but suppresses
                                    <sourcexml>remotelink</sourcexml> markup. Webstar #250335.
                                Change applies immediately to all Pacific streams, and in the long
                                run to all streams.</xref>
                        </li>
                        <li>
                            <xref
                                href="../../../Rosetta/common_newest/Rosetta_docinfo.doc-heading-LxAdv-dc.title.dita"
                                >2014-02-11 - docinfo:doc-heading to dc:title: Updated note when
                                    <sourcexml>emph</sourcexml> is child of
                                    <sourcexml>docinfo:doc-heading</sourcexml> then suppress
                                    <sourcexml>emph</sourcexml> element and retain its content in
                                    <targetxml>dc:title</targetxml>, These instructions apply
                                immediately to CA12.</xref>
                        </li>
                        <li>
                            <xref
                                href="../../../Rosetta/common_newest/Rosetta_docinfo.topiccodes-to-LxAdv-classify.classification_classscheme_docinfo-topiccodes.dita"
                                >2014-02-03 - docinfo:topiccodes to
                                classify:classification[@classscheme="docinfo:topiccodes"]: Added a
                                special rule for UK07 contents, When element
                                    <sourcexml>docinfo:topiccode</sourcexml> contains attribute
                                    <sourcexml>@scheme="source-by-date"</sourcexml>, then conversion
                                will suppress it including its contents as well. Phase 5 UK
                                discussion-defect tracking: issue #156. </xref>
                        </li>
                        <li>
                            <xref
                                href="../../../Rosetta/common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita"
                                >2014-02-03 - remotelink to ref:crossreference: Instruction updated
                                if <sourcexml>remotelink</sourcexml> occurs as multiple, immediate
                                siblings and without intermediary text within
                                    <sourcexml>title</sourcexml>. Also added a example for the same
                                scenario. Phase 5 UK discussion-defect tracking issue #161</xref>
                        </li>
                        <li>
                            <xref href="../../../Rosetta/common_newest/Rosetta_text-LxAdv-text.dita"
                                >2014-01-31 - text to text: Updated instruction,
                                    <targetxml>align</targetxml> will be moved in
                                    <targetxml>p</targetxml> in NL conversion. NZ09 commentary
                                discussion board issue for handling
                                    <sourcexml>text/@align</sourcexml>
                            </xref>
                        </li>
                    </ul>
                </p>
            </section>
            <section>
                <title>Regulation 7.4_PROD Schema (2014-01-23)</title>
                <p>
                    <ul>
                        <li>
                            <xref href="../../common_newest/Rosetta_sup-LxAdv-sup.dita">2014-01-23 -
                                sup to sup: Added instruction and example for common module
                                    "<b>sup</b>".</xref>
                        </li>
                        <li>
                            <xref
                                href="../../common_newest/Rosetta_docinfo.topiccodes-to-LxAdv-classify.classification_classscheme_docinfo-topiccodes.dita"
                                >2014-01-23 - topiccodes to
                                classify:classification[@classscheme="docinfo:topiccodes"]: Added
                                instruction and example for common module
                                "<b>topiccodes</b>".</xref>
                        </li>
                        <li>
                            <xref
                                href="../../common_newest/Rosetta_remotelink-self-inter-document-link-LxAdv-intra-document-link.dita"
                                >2014-01-23 - remotelink (self inter-document link) to ref:lnlink
                                (intra-document link): Added instruction and example for common
                                module "<b>remotelink</b>".</xref>
                        </li>
                        <li>
                            <xref
                                href="../../common_newest/Rosetta_Elements-LxAdv-Empty_Elements.dita"
                                >2014-01-16 - Suppress each empty element unless otherwise stated:
                                Added list of elements to suppress if empty.</xref>
                        </li>
                    </ul>
                </p>
            </section>
            <section>
                <title>Regulation 7.4_PROD Schema (2014-01-16)</title>
                <p>
                    <ul>
                        <li>
                            <xref
                                href="../../common_newest/Rosetta_date-Chof-docinfo.load-date-LxAdv-dc.date_lnmeta.datetype_load-date-scheme.dita"
                                >2014-01-07 - docinfo:load-date/date to
                                dc:date[@lnmeta:datetype="load-date"]: Added a note along with
                                example which contains "00" value in
                                    <sourcexml>@day="00"</sourcexml> and
                                    <sourcexml>@month="00"</sourcexml> attributes encountered in
                                CANADA contents.</xref>
                        </li>
                        <li>
                            <xref href="../../common_newest/Rosetta_footnote-LxAdv-footnote.dita"
                                >2014-01-06 - footnotegrp and footnote to footnotegrp and footnote:
                                Updated target example for applying the rule of "deleting extraneous
                                instances of @morerows, @colsep and @rowsep" in sample
                                documents.</xref>
                        </li>
                        <li>
                            <xref href="../../common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita"
                                >2013-12-30 - ci.cite to lnci.cite: Minor illustrative change. Added
                                "(AU Journals/Newsitem)" to headings for last example to clarify
                                that retention of <sourcexml>@type="cite4thisdoc"</sourcexml> is an
                                exception for that content, as already described in narrative
                                rules.</xref>
                        </li>
                        <li>
                            <xref
                                href="../../common_newest/Rosetta_docinfo.alt-renditions-LxAdv-doc.alt-renditions.dita"
                                >2013-12-17 - docinfo:alt-renditions/docinfo:alt-rendition to
                                doc:alt-renditions/doc:alt-rendition: Added instruction and example
                                for <sourcexml>docinfo:alt-rendition/lnlink</sourcexml>. (Webteam
                                #247307)</xref>
                        </li>
                        <li>
                            <xref
                                href="../../common_newest/Rosetta_CAN_docinfo.custom-metafields-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta.meta.metaitem.dita"
                                >2013-12-04 - docinfo:custom-metafields to
                                doc:legacy-metadata[@metadatasource="lbu-meta"]/meta/metaitem:
                                Updated target example for retaining "date" and "court" in target
                                example.</xref>
                        </li>
                        <li>
                            <xref href="../../common_newest/Rosetta_p-LxAdv-p.dita">2013-12-04 - p
                                to p: Updated target example when <sourcexml>p</sourcexml> or
                                    <sourcexml>p/@nl="0"</sourcexml> comes in
                                    <sourcexml>references</sourcexml>, this change directly affects
                                NZ07.</xref>
                        </li>
                        <li>
                            <xref href="../../common_newest/Rosetta_p-LxAdv-p.dita">2013-11-21 - p
                                to p: Updated instruction and example <sourcexml>p</sourcexml> or
                                    <sourcexml>p/@nl="0"</sourcexml> comes in
                                    <sourcexml>references</sourcexml>, this change directly affects
                                NZ07.</xref>
                        </li>
                        <li>
                            <xref
                                href="../../common_newest/Rosetta_docinfo.alt-renditions-LxAdv-doc.alt-renditions.dita"
                                >2013-10-29 - docinfo:alt-renditions/docinfo:alt-rendition to
                                doc:alt-renditions/doc:alt-rendition: Added instruction and example
                                for UK06 Laws/Acts/Bills/Measures and UK07 Regulation place the text
                                of <sourcexml>leg:officialname</sourcexml> in
                                    <targetxml>doc:alt-renditions/doc:alt-rendition/ref:lnlink/ref:marker</targetxml>
                                (Webteam #243521)</xref>
                        </li>
                        <li>
                            <xref href="../../common_newest/Rosetta_p-LxAdv-p.dita">2013-10-25 - p
                                to p: Added instruction and example <sourcexml>p/@nl="0"</sourcexml>
                                comes in <sourcexml>references</sourcexml>.</xref>
                        </li>
                        <li>
                            <xref href="../../common_newest/Rosetta_figure-LxAdv-figure.dita"
                                >2013-10-23 - figure to figure: Added instruction for handling
                                figure/p/text/inlineobject Webteam # 239816</xref>
                        </li>
                        <li>
                            <xref
                                href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita"
                                >2013-10-23 - remotelink to ref:crossreference: Added Example when
                                    <sourcexml>remotelink</sourcexml> having child
                                    <sourcexml>emph</sourcexml>. Webteam # 239816</xref>
                        </li>
                        <li>
                            <xref
                                href="../../common_newest/Rosetta_docinfo.doc-heading-LxAdv-dc.title.dita"
                                >2013-10-18 - docinfo:doc-heading to dc:title: Updated Instruction
                                when <sourcexml>docinfo:doc-heading</sourcexml> contains word RULE:
                                " or STATUTE: .</xref>
                        </li>
                        <li>
                            <xref
                                href="../../common_newest/Rosetta_Elements-LxAdv-Empty_Elements.dita"
                                >2013-10-14 - Suppress each empty element unless otherwise stated:
                                Changed antecedent to singular to match instructions.</xref>
                        </li>
                        <li>
                            <xref href="../../common_newest/Rosetta_p-LxAdv-p.dita">2013-10-09 - p
                                to p: Added instruction and example <sourcexml>p</sourcexml> comes
                                with <sourcexml>@nl=”0”</sourcexml>.</xref>
                        </li>
                        <li>
                            <xref
                                href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita"
                                >2013-10-03 - remotelink to ref:crossreference: Added use case where
                                remotelink contains @href which is a URL but does not contain
                                @hrefclass='http'.</xref>
                        </li>
                        <li>
                            <xref href="../../common_newest/Rosetta_footnote-LxAdv-footnote.dita"
                                >2013-10-02 - footnotegrp and footnote to footnotegrp and footnote:
                                Not a rule change. Cleaned up the note regarding the scenario when
                                footnote/@fntoken has a value of "0" in an attempt to make the
                                directions clearer.</xref>
                        </li>
                        <li>
                            <xref
                                href="../../common_newest/Rosetta_desiglabel-Chof-desig-LxAdv-desig.dita"
                                >2013-09-19 - desig/desiglabel to desig: Added rules to insert space
                                between label and number when none present in source. Rule required
                                for UK content. Immediately known to occur in UK06, UK07, and UK12.
                                R4.5 Post Iterative Testing Issue 431. WebTeam # 236033.</xref>
                        </li>
                        <li>
                            <xref href="../../common_newest/Rosetta_title-LxAdv-title.dita"
                                >2013-09-03 - title to title: Updated Instruction when
                                    <sourcexml>title</sourcexml> contains word "TITLE: " or "NAME: "
                                or "SITE: ".</xref>
                        </li>
                        <li>
                            <xref
                                href="../../common_newest/Rosetta_docinfo.doc-heading-LxAdv-dc.title.dita"
                                >2013-09-03 - docinfo:doc-heading to dc:title: Updated Instruction
                                when <sourcexml>docinfo:doc-heading</sourcexml> contains word
                                "TITLE: " or NAME: or SITE: or SUBJECT:.</xref>
                        </li>
                        <li>
                            <xref
                                href="../../common_newest/Rosetta_desiglabel-Chof-desig-LxAdv-desig.dita"
                                >2013-08-23 - desig/desiglabel to desig: Removed
                                    <targetxml>@value</targetxml> from target example element
                                    <targetxml>desig</targetxml>, as it was decided, that if source
                                element doesn't contain <sourcexml>@value</sourcexml> then target
                                element <targetxml>desig</targetxml> will not contain
                                    <targetxml>@value</targetxml>.</xref>
                        </li>
                        <li>
                            <xref href="../../common_newest/Rosetta_footnote-LxAdv-footnote.dita"
                                >2013-08-22 - footnotegrp and footnote to footnotegrp and footnote:
                                Not a rule change. Second target sample modified to remove attribute
                                    <targetxml>lnci:cite[@citeref]</targetxml> because value
                                captured in descendant
                                    <targetxml>ref:crossreference/ref:locator[@anchoridref]</targetxml>.
                                Ancillary/illustrative within this module. Change made to promote
                                uniformity across samples.</xref>
                        </li>
                        <li>
                            <xref
                                href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita"
                                >2013-08-22 - remotelink to ref:crossreference: Not a rule change.
                                Modified Sample #10 on
                                    <sourcexml>ci:cite/ci:content/remotelink</sourcexml>. Removed
                                target attribute <targetxml>lnci:cite[@citeref]</targetxml> because
                                value captured in
                                    <targetxml>ref:crossreference/ref:locator[@anchoridref]</targetxml>.</xref>
                        </li>
                        <li>
                            <xref
                                href="../../common_newest/Rosetta_docinfo-LxAdv-doc.metadata_doc.docinfo.dita"
                                >2013-08-09 - docinfo to doc:metadata/doc:docinfo: Added instruction
                                for creating
                                    <targetxml>dc:date[@lnmeta:datetype="conversion-date"]</targetxml>.
                                Previously, "conversion-date" was created only if "load-date" was
                                not present. Going forward, conversion should always create
                                "conversion-date". This is not a retroactive change. It should be
                                applied only to streams developed after Aug. 9 2013.</xref>
                        </li>
                        <li>
                            <xref
                                href="../../common_newest/Rosetta_XML_Character_Entities-LxAdv-Unicode.dita"
                                >2013-08-08 - XML Character Entities to Unicode code points: This
                                change does not represent a change to conversion but rather
                                documentation of the existing behavior.</xref>
                        </li>
                        <li>
                            <xref
                                href="../../common_newest/Rosetta_date-Chof-docinfo.load-date-LxAdv-dc.date_lnmeta.datetype_load-date-scheme.dita"
                                >2013-08-07 - docinfo:load-date/date to
                                dc:date[@lnmeta:datetype="load-date"]: Removed instructions for
                                creating
                                    <targetxml>dc:date[@lnmeta:datetype="conversion-date"]</targetxml>.</xref>
                        </li>
                    </ul>
                </p>
            </section>

            <section>
                <title>Regulation 7.1_PROD Schema (2013-08-02)</title>
                <p>
                    <ul>
                        <li>
                            <xref href="../../DITA-CAN/CA06-Regulation/leg.level-not-in-force.dita"
                                >2013-08-02 - leg:level-not-in-force: Instruction and example
                                updated for adding
                                    <targetxml>primlaw:level[@leveltype="amendment"]</targetxml> as
                                wrapper element for <sourcexml>leg:level-not-in-force</sourcexml>
                                handling.</xref>
                        </li>
                        <li>
                            <xref
                                href="../../common_newest/Rosetta_docinfo.doc-heading-LxAdv-dc.title.dita"
                                >2013-08-01 - docinfo:doc-heading to dc:title: Added a note and
                                examples, when <sourcexml>docinfo:doc-heading</sourcexml> contains
                                child element <sourcexml>nl</sourcexml>.</xref>
                        </li>
                        <li>
                            <xref
                                href="../../common_newest/Rosetta_CAN_docinfo.custom-metafields-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta.meta.metaitem.dita"
                                >2013-08-01 - docinfo:custom-metafields to
                                doc:legacy-metadata[@metadatasource="lbu-meta"]/meta/metaitem:
                                Updated target example for retaining "JURIS-SORT", "COURT-SORT" and
                                "TERM-SORT" in target example.</xref>
                        </li>
                        <li>
                            <xref href="../../common_newest/Rosetta_title-LxAdv-title.dita"
                                >2013-07-30 - title to title: Updated Instruction when
                                    <sourcexml>title</sourcexml> contains word "TITLE: " or "NAME:
                                ".</xref>
                        </li>
                        <li>
                            <xref
                                href="../../common_newest/Rosetta_docinfo.doc-heading-LxAdv-dc.title.dita"
                                >2013-07-30 - docinfo:doc-heading to dc:title: Added Instruction
                                when <sourcexml>docinfo:doc-heading</sourcexml> contains word
                                "TITLE: " or NAME: .</xref>
                        </li>
                        <li>
                            <xref
                                href="../../common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita"
                                >2013-07-19 - docinfo:assoc-links to doc:related-content: Added rule
                                mapping attribute
                                    <sourcexml>remotelink[@service="DOC-ID"]</sourcexml> to
                                    <targetxml>ref:lnlink[@service="DOCUMENT"]</targetxml>
                            </xref>
                        </li>
                        <li>
                            <xref
                                href="../../common_newest/Rosetta_docinfo-LxAdv-doc.metadata_doc.docinfo.dita"
                                >2013-07-18 - docinfo to doc:metadata/doc:docinfo: Added
                                    <sourcexml>@excludefromalerts</sourcexml> as one of the
                                    <sourcexml>docinfo</sourcexml> attributes to carry
                                through</xref>
                        </li>
                        <li>
                            <xref
                                href="../../common_newest/Rosetta_docinfo.doc-lang-and-doc-country-LxAdv-ROOT_xml.lang.dita"
                                >2013-07-16 - docinfo:doc-lang and docinfo:doc-country to @xml:lang
                                and @xml:ID: Instruction narrative edited for language; no changes
                                to mappings, no impact to stylesheets.</xref>
                        </li>
                        <li>
                            <xref href="../../common_newest/Rosetta_figure-LxAdv-figure.dita"
                                >2013-07-15 - figure to figure: Added instructions for handling
                                figure/caption and an example demonstrating the mapping.</xref>
                        </li>
                        <li>
                            <xref href="../../common_newest/Rosetta_title-LxAdv-title.dita"
                                >2013-07-05 - title to title: Added Instruction when
                                    <sourcexml>title</sourcexml> contains word "TITLE: ".</xref>
                        </li>
                        <li>
                            <xref
                                href="../../common_newest/Rosetta_CAN_docinfo.custom-metafields-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta.meta.metaitem.dita"
                                >2013-06-04 - docinfo:custom-metafields to
                                doc:legacy-metadata[@metadatasource="lbu-meta"]/meta/metaitem:
                                Consolidated narrative and examples for clarity.</xref>
                        </li>
                        <li>
                            <xref
                                href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita"
                                >2013-06-03 - remotelink to ref:crossreference: Updated the Target
                                XML 2 by removing the <targetxml>@crossreferencetype</targetxml> for
                                Canada example.</xref>
                        </li>
                        <li>
                            <xref
                                href="../../common_newest/Rosetta_CAN_docinfo.custom-metafields-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta.meta.metaitem.dita"
                                >2013-05-24 - docinfo:custom-metafields to
                                doc:legacy-metadata[@metadatasource="lbu-meta"]/meta/metaitem:
                                Instruction and example added for handling of
                                    <sourcexml>docinfo:custom-metafield/@name="pageestimate"</sourcexml>.</xref>
                        </li>
                    </ul>
                </p>
            </section>

            <section>
                <title>Regulation 6.2_PROD Schema (2013-05-24)</title>
                <p>
                    <ul>
                        <li>
                            <xref
                                href="../../common_newest/Rosetta_inlineobject-LxAdv-figure_ref.inlineobject.dita"
                                >2013-05-24 - inlineobject to figure/ref:inlineobject: Updated
                                target example, "when smi is present".</xref>
                        </li>
                        <li>
                            <xref
                                href="../../common_newest/Rosetta_CAN_title-Chof-leg.heading_to-LexisAdvance_heading_title.dita"
                                >2013-05-22 - leg:heading/title to heading/title: Suppressed the
                                "[@align="center"]" attribute in target mapping and this rule will
                                be applicable for CA05- Acts &amp; Bills, CA06-Regs and CA07-Court
                                Rules.</xref>
                        </li>
                        <li>
                            <xref
                                href="../../common_newest/Rosetta_docinfo-LxAdv-doc.metadata_doc.docinfo.dita"
                                >2013-05-16 - docinfo to doc:metadata/doc:docinfo: Fixed typo
                                updating urn:contentitem to urn:contentItem</xref>
                        </li>
                        <li>
                            <xref href="../../common_newest/Rosetta_figure-LxAdv-figure.dita"
                                >2013-05-08 - figure to figure: Extended the list of allowable
                                values for image handling.</xref>
                        </li>
                        <li>
                            <xref
                                href="../../common_newest/Rosetta_inlineobject-LxAdv-figure_ref.inlineobject.dita"
                                >2013-05-08 - inlineobject to figure/ref:inlineobject: Extended the
                                list of allowable values for image handling.</xref>
                        </li>
                        <li>
                            <xref
                                href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita"
                                >2013-05-08 - remotelink to ref:crossreference: Extended the list of
                                allowable values for image handling.</xref>
                        </li>
                        <li>
                            <xref
                                href="../../common_newest/Rosetta_inlineobject-LxAdv-figure_ref.inlineobject.dita"
                                >2013-05-02 - inlineobject to figure/ref:inlineobject: Updated
                                target example to if the SMI is present then a
                                    <targetxml>ref:inliineobject/@status</targetxml> attribute is
                                set to “valid”.</xref>
                        </li>
                        <li>
                            <xref
                                href="../../common_newest/Rosetta_docinfo.alt-renditions-LxAdv-doc.alt-renditions.dita"
                                >2013-05-01 - docinfo:alt-renditions/docinfo:alt-rendition to
                                doc:alt-renditions/doc:alt-rendition: Updated instructions and
                                target example per latest Apollo markup.</xref>
                        </li>
                        <li>
                            <xref href="../../common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita"
                                >2013-05-01 - ci.cite to lnci.cite: Removed special rule for
                                    <sourcexml>ci:cite/ci:content/remotelink</sourcexml> which
                                required suppression of <sourcexml>ci:cite/ci:content</sourcexml>
                                tags. The elements are now retained and convert according to common
                                rules.</xref>
                        </li>
                        <li>
                            <xref href="../../common_newest/Rosetta_figure-LxAdv-figure.dita"
                                >2013-05-01 - figure to figure: Removed instructions for section
                                "Pre-Release 4.0" because according to latest Apollo markup, section
                                "Release 4.0 and after" and section "Pre-Release 4.0" now have
                                similar conversion markup.</xref>
                        </li>
                        <li>
                            <xref
                                href="../../common_newest/Rosetta_inlineobject-LxAdv-figure_ref.inlineobject.dita"
                                >2013-05-01 - inlineobject to figure/ref:inlineobject: Removed
                                instructions for section "Pre-Release 4.0" because according to
                                latest Apollo markup, section "Release 4.0 and after" and section
                                "Pre-Release 4.0" now have similar conversion markup.</xref>
                        </li>
                        <li>
                            <xref
                                href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita"
                                >2013-05-01 - remotelink to ref:crossreference: Removed instructions
                                for section "Pre-Release 4.0" because according to latest Apollo
                                markup, section "Release 4.0 and after" and section "Pre-Release
                                4.0" now have similar conversion markup.</xref>
                        </li>
                        <li>
                            <xref
                                href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita"
                                >2013-05-01 - remotelink to ref:crossreference: "Instruction added
                                for <sourcexml>ci:cite/ci:content/remotelink</sourcexml> specifying
                                that the <sourcexml>remotelink</sourcexml> is to be converted to
                                    <targetxml>ref:crossreference</targetxml> but the containing
                                elements' start-tags and end-tags (<sourcexml>ci:cite</sourcexml>
                                and <sourcexml>ci:content</sourcexml>) are dropped", has been
                                removed from the instructions and now
                                    <sourcexml>remotelink</sourcexml> will be converted to the
                                resulting mapping where it is. For more details you can see example:
                                Source XML 10: <sourcexml>remotelink</sourcexml> as a child of
                                    <sourcexml>ci:cite/ci:content</sourcexml>
                            </xref>
                        </li>
                        <li>
                            <xref href="../../common_newest/Rosetta_figure-LxAdv-figure.dita"
                                >2013-04-30 - figure to figure: Updated target sample according to
                                latest Apollo markup.</xref>
                        </li>
                        <li>
                            <xref
                                href="../../common_newest/Rosetta_inlineobject-LxAdv-figure_ref.inlineobject.dita"
                                >2013-04-30 - inlineobject to figure/ref:inlineobject: Updated
                                target sample according to latest Apollo markup.</xref>
                        </li>
                        <li>
                            <xref
                                href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita"
                                >2013-04-30 - remotelink to ref:crossreference: Updated target
                                sample according to latest Apollo markup.</xref>
                        </li>
                        <li>
                            <xref href="../../common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita"
                                >2013-04-24 - ci.cite to lnci.cite: Added a mapping for
                                    <sourcexml>ci:procphrase</sourcexml> to
                                    <sourcexml>lnci:procphrase</sourcexml>
                            </xref>
                        </li>
                        <li>
                            <xref
                                href="../../common_newest/Rosetta_docinfo.doc-lang-and-doc-country-LxAdv-ROOT_xml.lang.dita"
                                >2013-04-19 - docinfo:doc-lang and docinfo:doc-country to @xml:lang
                                and @xml:ID: Added note about applicability of restrictions and
                                required modifications for <targetxml>xml:id</targetxml> to other
                                scenarios.</xref>
                        </li>
                        <li>
                            <xref
                                href="../../common_newest/Rosetta_docinfo.custom-metafields-LxAdv-SUPPRESS.dita"
                                >2013-04-16 - docinfo:custom-metafields is SUPPRESSED: Updated the
                                instruction of handling
                                    <sourcexml>docinfo:custom-metafield[@name="JURIS-SORT"]</sourcexml>,
                                    <sourcexml>docinfo:custom-metafield[@name="COURT-SORT"]</sourcexml>,
                                and
                                    <sourcexml>docinfo:custom-metafield[@name="TERM-SORT"]</sourcexml>
                                markup in CA Dictionary content stream.</xref>
                        </li>
                        <li>
                            <xref
                                href="../../common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita"
                                >2013-04-12 - docinfo:assoc-links to doc:related-content: This
                                module was changed from UK specific to applicable to all LBUs</xref>
                        </li>
                    </ul>
                </p>
            </section>

            <section>
                <title>Regulation 5.0_PROD Schema (2013-04-10)</title>
                <p>
                    <ul>
                        <li>
                            <xref href="../../DITA-CAN/CA06-Regulation/leg.currencydate.dita"
                                >2013-04-10 - leg:currencydate: Updated example and rule for
                                handling of
                                    <sourcexml>leg:dates/leg:currencydate/remotelink</sourcexml>
                            </xref>
                        </li>
                        <li>
                            <xref href="../../DITA-CAN/CA06-Regulation/leg.officialnum_ci.cite.dita"
                                >2013-04-10 - leg:officialnum_ci:cite: Added the example and rule
                                for handling of <sourcexml>leg:officialnum/ci:cite</sourcexml>
                            </xref>
                        </li>
                        <li>
                            <xref
                                href="../../common_newest/Rosetta_leg.num_ln.user-displayed-LxAdv-classify.classification.dita"
                                >2013-04-10 - leg:num[@ln.user-displayed="false"] to
                                classify:classification: Updated the note for handling of
                                leg:num/@ln.user-displayed="false"</xref>
                        </li>
                        <li>
                            <xref
                                href="../../common_newest/Rosetta_date-Chof-docinfo.load-date-LxAdv-dc.date_lnmeta.datetype_load-date-scheme.dita"
                                >2013-04-10 - leg:currencydate_ci:cite: Added the existing example
                                and rule for handling of
                                    <targetxml>dc:date@lnmeta:datetype="conversion-date"</targetxml>
                            </xref>
                        </li>
                        <li>
                            <xref
                                href="../../common_newest/Rosetta_docinfo.alt-renditions-LxAdv-doc.alt-renditions.dita"
                                >2013-03-26 - docinfo:alt-renditions/docinfo:alt-rendition to
                                doc:alt-renditions/doc:alt-rendition: Updated target example
                                    (<targetxml>proc:param/@value="pdf"</targetxml>) per project
                                requirement.</xref>
                        </li>
                        <li>
                            <xref
                                href="../../common_newest/Rosetta_docinfo.doc-id-LxAdv-dcidentifier_lnmetaidentifier-scheme.dita"
                                >2013-03-20 - docinfo:doc-id to
                                dc:identifier[@lnmeta:identifier-scheme]: Updated the information on
                                handling the situation when
                                    <sourcexml>docinfo:dpsi[@id-string]</sourcexml> is absent with
                                instructions to get the dpsi from
                                    <sourcexml>docinfo/docinfo:custom-metafields/docinfo:custom-metafield[@name="dpsi"]</sourcexml>.</xref>
                        </li>
                        <li>
                            <xref
                                href="../../common_newest/Rosetta_docinfo.custom-metafields-LxAdv-SUPPRESS.dita"
                                >2013-03-20 - docinfo:custom-metafields is SUPPRESSED: Updated the
                                instruction of handling
                                    <sourcexml>docinfo:custom-metafield[@name="dpsi"]</sourcexml>
                                markup in CA content stream.</xref>
                        </li>
                        <li>
                            <xref
                                href="../../common_newest/Rosetta_leg.num_ln.user-displayed-LxAdv-classify.classification.dita"
                                >2013-03-14 - leg:num[@ln.user-displayed="false"] to
                                classify:classification: Updated instruction and example for
                                handling of leg:num/@ln.user-displayed="false"</xref>
                        </li>
                        <li>
                            <xref href="../../common_newest/Rosetta_nl-LxAdv-proc.nl.dita"
                                >2013-03-14 - nl to proc:nl: Add instruction and example
                                    <sourcexml>nl/@n</sourcexml>.</xref>
                        </li>

                    </ul>
                </p>
            </section>
            <section>
                <title>Regulation 5.0_PROD Schema (2013-03-20)</title>
                <p>
                    <ul>
                        <li>
                            <xref
                                href="../../common_newest/Rosetta_docinfo.doc-id-LxAdv-dcidentifier_lnmetaidentifier-scheme.dita"
                                >2013-03-20 - docinfo:doc-id to
                                dc:identifier[@lnmeta:identifier-scheme]: Updated the information on
                                handling the situation when
                                    <sourcexml>docinfo:dpsi[@id-string]</sourcexml> is absent with
                                instructions to get the dpsi from
                                    <sourcexml>docinfo/docinfo:custom-metafields/docinfo:custom-metafield[@name="dpsi"]</sourcexml>.</xref>
                        </li>
                        <li>
                            <xref
                                href="../../common_newest/Rosetta_docinfo.custom-metafields-LxAdv-SUPPRESS.dita"
                                >2013-03-20 - docinfo:custom-metafields is SUPPRESSED: Updated the
                                instruction of handling
                                    <sourcexml>docinfo:custom-metafield[@name="dpsi"]</sourcexml>
                                markup in CA content stream.</xref>
                        </li>

                    </ul>
                </p>
            </section>
            <section>
                <title>Regulation 5.0_PROD Schema (2013-03-14)</title>
                <p>
                    <ul>
                        <li>
                            <xref
                                href="../../common_newest/Rosetta_leg.num_ln.user-displayed-LxAdv-classify.classification.dita"
                                >2013-03-14 - leg:num[@ln.user-displayed="false"] to
                                classify:classification: Updated instruction and example for
                                handling of leg:num/@ln.user-displayed="false"</xref>
                        </li>
                        <li>
                            <xref
                                href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita"
                                >2013-03-11 - remotelink to ref:crossreference: Instruction and
                                example added on how to handle <targetxml>ref:marker </targetxml> if
                                it is in <targetxml>ref:lnlink@service=”URL”</targetxml>and the
                                    <targetxml>ref:key-value@value</targetxml> starts-with (.,
                                'http://www.lexisnexis.com/au/legal/api') </xref>
                        </li>
                        <li>
                            <xref href="../../common_newest/Rosetta_heading-LxAdv-heading.dita"
                                >2013-03-06 - heading to heading: Removed instructions/rules for
                                exceptional desig scenario and deprecated attribute
                                    <targetxml>@followstitle</targetxml>.</xref>
                        </li>
                        <li>
                            <xref
                                href="../../common_newest/Rosetta_docinfo.alt-renditions-LxAdv-doc.alt-renditions.dita"
                                >2013-03-05 - docinfo:alt-renditions/docinfo:alt-rendition to
                                doc:alt-renditions/doc:alt-rendition: Updated target example
                                (removed ".pdf" from attribute value of
                                    <sourcexml>ref:key-value/@value</sourcexml>).</xref>
                        </li>
                        <li>
                            <xref
                                href="../../common_newest/Rosetta_docinfo.alt-renditions-LxAdv-doc.alt-renditions.dita"
                                >2013-02-26 - docinfo:alt-renditions/docinfo:alt-rendition to
                                doc:alt-renditions/doc:alt-rendition: Updated target example per
                                project requirement.</xref>
                        </li>
                        <li>
                            <xref href="../../common_newest/Rosetta_figure-LxAdv-figure.dita"
                                >2013-02-18 - figure to figure: Created two sections, one for
                                "Release 4.0 and after" and another for "Pre-Release 4.0".</xref>
                        </li>
                        <li>
                            <xref
                                href="../../common_newest/Rosetta_inlineobject-LxAdv-figure_ref.inlineobject.dita"
                                >2013-02-18 - inlineobject to figure/ref:inlineobject: Created two
                                sections, one for "Release 4.0 and after" and another for
                                "Pre-Release 4.0".</xref>
                        </li>
                        <li>
                            <xref
                                href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita"
                                >2013-02-18 - remotelink to ref:crossreference: Created two
                                sections, one for "Release 4.0 and after" and another for
                                "Pre-Release 4.0".</xref>
                        </li>
                        <li>
                            <xref href="../../common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita"
                                >2013-01-22 - ci.cite to lnci.cite: Instruction modified for the
                                scenario <sourcexml>ci:cite/ci:content/remotelink</sourcexml> to
                                indicate that the <sourcexml>ci:cite</sourcexml> and
                                    <sourcexml>ci:content</sourcexml> start-tags and end-tags (but
                                not their content) are dropped.</xref>
                        </li>
                        <li>
                            <xref href="../../common_newest/Rosetta_footnote-LxAdv-footnote.dita"
                                >2013-01-09 - footnotegrp and footnote to footnotegrp and footnote:
                                Added instruction note for handling of
                                    <sourcexml>footnote[@fntoken]</sourcexml> with value 0 for UK
                                content types.</xref>
                        </li>
                        <li>
                            <xref
                                href="../../common_newest/Rosetta_leg.num_ln.user-displayed-LxAdv-classify.classification.dita"
                                >2013-01-09 - leg:num[@ln.user-displayed="false"] to
                                classify:classification: Updated instructions to eliminate any
                                confusion</xref>
                        </li>
                        <li>
                            <xref href="../../common_newest/Rosetta_emph-LxAdv-emph.dita">2013-01-08
                                - emph to emph: Added note for handling
                                    <targetxml>emph/emph</targetxml> has the same
                                    <targetxml>@typestyle</targetxml> value.</xref>
                        </li>
                        <li>
                            <xref
                                href="../../common_newest/Rosetta_docinfo.custom-metafields-LxAdv-SUPPRESS.dita"
                                >2013-01-07 - docinfo:custom-metafields is SUPPRESSED: Updated the
                                instruction of handling
                                    <sourcexml>docinfo:custom-metafield[@searchtype="CITED-COUNT"]</sourcexml>
                                markup in CA content stream.</xref>
                        </li>
                        <li>
                            <xref
                                href="../../common_newest/Rosetta_process-ignore-Chof-title-LxAdv-SUPPRESS.dita"
                                >2013-01-07 - title/process-ignore to: Updated target
                                example.</xref>
                        </li>
                        <li>
                            <xref
                                href="../../common_newest/Rosetta_inlineobject-LxAdv-figure_ref.inlineobject.dita"
                                >2012-12-03 - inlineobject to figure/ref:inlineobject: Moved full
                                conversion instruction to new base topic
                                    <sourcexml>inlineobject</sourcexml> to
                                    <targetxml>ref:inlineobject</targetxml>. This topic now specific
                                to <targetxml>figure/ref:inlineobject</targetxml> mapping.</xref>
                        </li>
                        <li>
                            <xref href="../../common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita"
                                >2012-11-29 - ci.cite to lnci.cite: Updated instructions to drop all
                                    <sourcexml>@spanref</sourcexml>.</xref>
                        </li>
                        <li>
                            <xref href="../../common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita"
                                >2012-09-18 - ci.cite to lnci.cite: Instruction and example added
                                for handling of <sourcexml>ci:cite/@type="cite4thisdoc"</sourcexml>
                                for AU Journals/Newsitem.</xref>
                        </li>
                        <li>
                            <xref href="../../common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita"
                                >2012-09-11 - ci.cite to lnci.cite: Created.</xref>
                        </li>
                        <li>
                            <xref
                                href="../../common_newest/Rosetta_docinfo.custom-metafields-LxAdv-SUPPRESS.dita"
                                >2012-09-06 - docinfo:custom-metafields is SUPPRESSED:
                                Created.</xref>
                        </li>
                        <li>
                            <xref href="../../common_newest/Rosetta_emph-LxAdv-emph.dita">2012-02-28
                                - emph to emph: Added instructions for handling of
                                    <sourcexml>case:judges/emph/@typestyle="smcaps"</sourcexml>.</xref>
                        </li>
                        <li>
                            <xref href="../../common_newest/Rosetta_emph-LxAdv-emph.dita">2011-12-15
                                - emph to emph: Created.</xref>
                        </li>
                    </ul>
                </p>
            </section>
            <section>
                <title>Regulation 4.17_PROD Schema (2013-03-01)</title>
                <p>
                    <ol>
                        <li><b>Head</b>: Delete the note of change request number
                                <b>[DASS2013020805083300 ] </b> for handling
                                <sourcexml>leg:relatedleg</sourcexml> element.</li>
                        <li><b>Head</b>: Added the Conversion Instruction for handling when text is
                            appears between <sourcexml>leg:num</sourcexml> and
                                <sourcexml>ci:cite</sourcexml> markup in rosetta.</li>
                        <li><b>Head</b>: Added the Conversion Instruction for handling when input
                            documents is having no jurisdiction information in head part (i.e.
                                <sourcexml>leg:juris</sourcexml>).</li>
                        <li><b>Body</b>: Upadte/correct the attribute value
                                <targetxml>@statuscode="effectivenessinfo"</targetxml> in taregt
                            example for handling <targetxml>legisinfo:status</targetxml>
                            element.</li>

                    </ol>
                </p>
            </section>
            <section>
                <title>Regulation 4.16_PROD Schema (2013-02-11)</title>
                <p>
                    <ol>
                        <li><b>Head</b>: Moved the Instruction for
                                <sourcexml>leg:officialname</sourcexml>,
                                <sourcexml>leg:officialnum</sourcexml>,
                                <sourcexml>leg:dates</sourcexml>,
                                <sourcexml>leg:miscdate</sourcexml> and
                                <sourcexml>leg:relatedleg</sourcexml> markups from <b>Body</b> to
                                <b>Head</b> part because <sourcexml>leg:info</sourcexml> markups
                            containing information about the entire legislation and not just about
                            to some specific level and this is a semantic changes for CA content
                            stream.</li>
                        <li><b>Head</b>: Placed change request number <b>[DASS2013020805083300 ]
                            </b> for handling <sourcexml>leg:relatedleg</sourcexml> element in
                            Rosetta (for allow to <targetxml>primlaw:authority</targetxml> within
                                <targetxml>primlawinfo:primlawinfo</targetxml> in NL schema).</li>
                        <li><b>Head</b>: Remove the attribute <targetxml>@spanref</targetxml> within
                                <targetxml>lnci:statref</targetxml> element in
                                <b>leg:num/ci:cite</b> module.</li>
                        <li><b>Head</b>: Remove the <targetxml>ci:span</targetxml> markup within
                                <targetxml>lnci:content</targetxml> in <b>leg:num/ci:cite</b>
                            module.</li>
                        <li><b>Common</b>: Instruction modified for the scenario
                                <sourcexml>ci:cite/ci:content/remotelink</sourcexml> to indicate
                            that the <sourcexml>ci:cite</sourcexml> and
                                <sourcexml>ci:content</sourcexml> start-tags and end-tags (but not
                            their content) are dropped.</li>
                    </ol>
                </p>
            </section>
        </body>
    </dita:topic>

    <!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
    <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA06-Regulation\Change-Log.dita  -->
    <!--	<xsl:message>CA06-Regulation_Change-Log.xsl requires manual development!</xsl:message> -->

</xsl:stylesheet>
