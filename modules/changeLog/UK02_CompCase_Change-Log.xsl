<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:ci="http://www.lexis-nexis.com/ci" xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" xmlns:frm="http://www.lexis-nexis.com/glp/frm" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:source_lnci="http://www.lexis-nexis.com/lnci" xmlns:casehist="http://www.lexisnexis.com/xmlschemas/content/legal/case-history/1/" xmlns:compcase="urn:x-lexisnexis:content:compositecourtcase:sharedservices:1" xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns:decision="http://www.lexisnexis.com/xmlschemas/content/legal/decision/1/" xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" xmlns:form="http://www.lexisnexis.com/xmlschemas/content/shared/form/1/" xmlns:lnci="http://www.lexisnexis.com/xmlschemas/content/shared/citations/1/" xmlns:proc="http://www.lexisnexis.com/xmlschemas/content/shared/process-elements/1/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita case ci docinfo frm leg lnci">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Compcase-change-log">
    <title>Change Log for UK Composite Judgment Cases</title>
    <body>
        <section>
            <title>Composite Case Schema Version 2.5 PROD</title>
            <p>2016-12-14</p>
            <ul>
                <li>
                    <xref href="../../../Rosetta/DITA-UK/UK02-Comp_Cases/case.pubinfo.dita">2016-12-05 - case:pubinfo id-UK02-27240: Added instructions for handling case:pubinfo
                        elements.</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/common_newest/Rosetta_UK_docinfo.custom-metafields-LxAdv-dc.date_or_doc.docinfo_classify.classification.dita">2016-11-30 - (UK) docinfo:custom-metafield to dc:date or doc:metadata/doc:docinfo/classify:classification[@classscheme="uk-functional-information"] id-CCCC-10547: Added rule for "isDocBuilderAvailable"; and
                        updated the example.</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2016-11-16 - docinfo:assoc-links to doc:related-content id-CCCC-10284: Added to note regarding applying any rules related to 
                        <targetxml>@anchoridref</targetxml>, referring specifically to section for "Identifiers to ID Data Type - 
                        Handling Pattern Restrictions".</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2016-11-16 - remotelink to ref:crossreference id-CCCC-10465: Added to note regarding applying any rules related to 
                        <targetxml>@anchoridref</targetxml>, referring specifically to section for "Identifiers to ID Data Type - 
                        Handling Pattern Restrictions".</xref>
                </li></ul>
        </section>
        <section>
            <title>Composite Case Schema Version 2.5 PROD</title>
            <p>2016-10-27
            <ul>
                <li>
                    <xref href="../../../Rosetta/common_newest/Rosetta_link-LxAdv-ref.lnlink_BLOBSTORE.dita">2016-10-21 - link[@filename] to ref:lnlink[@service="ATTACHMENT"] for BLOBSTORE images id-CCCC-10541: Updated the Blobstore related instruction for
                        use standardize specific output parameters.</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.versioninfo-LxAdv-doc.versioninfo-scheme.dita">2016-10-17 - docinfo:versioninfo to doc:versioninfo id-CCCC-10307: Updated the instruction for handling the
                        target attribute <targetxml>@normdate</targetxml>.
                        [Webstar#6676189]</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/common_newest/Rosetta_UK_docinfo.custom-metafields-LxAdv-dc.date_or_doc.docinfo_classify.classification.dita">2016-10-04 - (UK) docinfo:custom-metafield to dc:date or doc:metadata/doc:docinfo/classify:classification[@classscheme="uk-functional-information"] id-CCCC-10547: Added rule for "word-toc"; and updated the example.</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.versioninfo-LxAdv-doc.versioninfo-scheme.dita">2016-09-14 - docinfo:versioninfo to doc:versioninfo id-CCCC-10307: Note added for handling the input markup '<targetxml>docinfo:versioninfo@startdate-tbd</targetxml>'.</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/common_newest/Rosetta_UK_docinfo.custom-metafields-LxAdv-dc.date_or_doc.docinfo_classify.classification.dita">2016-09-08 - (UK) docinfo:custom-metafield to dc:date or doc:metadata/doc:docinfo/classify:classification[@classscheme="uk-functional-information"] id-CCCC-10547: Added rule for attribute
                        <sourcexml>@name</sourcexml> with value "containsAppealTracker"; and
                        updated the example.</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.versioninfo-LxAdv-doc.versioninfo-scheme.dita">2016-09-02 - docinfo:versioninfo to doc:versioninfo id-CCCC-10307: Special Rule for added
                        <targetxml>@normdate</targetxml> attribute inside the
                        <targetxml>doc:startdate</targetxml> and
                        <targetxml>doc:enddate</targetxml>.</xref>
                </li>
            </ul>
            </p>
        </section>
        <section>
            <title>Composite Case Schema Version 2.5 PROD</title>
            <p>2016-08-10
                <ul>
                    <li>
                        <xref href="../../../Rosetta/common_newest/Rosetta_footnote-LxAdv-footnote.dita">2016-08-08 - footnotegrp and footnote to footnotegrp and footnote id-CCCC-10322: Removing duplicate entry of
                            <sourcexml>lilabel/fnr</sourcexml>
                        </xref>
                    </li>
                    <li>
                        <xref href="../../../Rosetta/common_newest/Rosetta_footnote-LxAdv-footnote.dita">2016-08-04 - footnotegrp and footnote to footnotegrp and footnote id-CCCC-10322: Added note for handling
                            <sourcexml>lilabel/fnr</sourcexml> Applicable for AU05,
                            Incident #6597893</xref>
                    </li>
                    <li>
                        <xref href="../../../Rosetta/common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2016-08-03 - remotelink to ref:crossreference id-CCCC-10465: Added Note about xml snippets that illustrate
                            image handling. Note summarizes move from Apollo to Blobstore application. UK is
                            first LBU to move to Blobstore.</xref>
                    </li>
                    <li>
                        <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.alt-renditions-LxAdv-doc.alt-renditions.dita">2016-07-29 - docinfo:alt-renditions/docinfo:alt-rendition to doc:alt-renditions/doc:alt-rendition id-CCCC-10283: Added Note about xml snippets that illustrate
                            image handling. Note summarizes move from Apollo to Blobstore application. UK is
                            first LBU to move to Blobstore.</xref>
                    </li>
                    <li>
                        <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2016-07-29 - docinfo:assoc-links to doc:related-content id-CCCC-10284: Added Note about xml snippets that illustrate image
                            handling. Note summarizes move from Apollo to Blobstore application. UK is first LBU to
                            move to Blobstore.</xref>
                    </li>
                    <li>
                        <xref href="../../../Rosetta/common_newest/Rosetta_blockquote-LxAdv-blockquote.dita">2016-07-29 - blockquote to blockquote id-CCCC-10247: Added Note about xml snippets that illustrate
                            image handling. Note summarizes move from Apollo to Blobstore application. UK is
                            first LBU to move to Blobstore. VSTS 76146</xref>
                    </li>
                    <li>
                        <xref href="../../../Rosetta/common_newest/Rosetta_UK_docinfo.custom-metafields-LxAdv-dc.date_or_doc.docinfo_classify.classification.dita">2016-07-26 - (UK) docinfo:custom-metafield to dc:date or doc:metadata/doc:docinfo/classify:classification[@classscheme="uk-functional-information"] id-CCCC-10547: Added rule for "resultType"; and updated the
                            example.</xref>
                    </li>
                    <li>
                        <xref href="../../../Rosetta/common_newest/Rosetta_UK_docinfo.custom-metafields-LxAdv-dc.date_or_doc.docinfo_classify.classification.dita">2016-07-13 - (UK) docinfo:custom-metafield to dc:date or doc:metadata/doc:docinfo/classify:classification[@classscheme="uk-functional-information"] id-CCCC-10547: Added rules for "createdDate", "updatedDate", and "inEditorialReview"; and updated the example.</xref>
                    </li>
                    <li>
                        <xref href="../../../Rosetta/common_newest/Rosetta_UK_docinfo-LxAdv-doc.docinfo_classify.classification.dita">2016-06-17 - (UK) docinfo to doc:metadata/doc:docinfo/classify:classification[@classscheme="uk-functional-information"] id-CCCC-10546: Created. New rules.</xref>
                    </li>
                    <li>
                        <xref href="../../../Rosetta/common_newest/Rosetta_UK_docinfo.custom-metafields-LxAdv-dc.date_or_doc.docinfo_classify.classification.dita">2016-06-17 - (UK) docinfo:custom-metafield to dc:date or doc:metadata/doc:docinfo/classify:classification[@classscheme="uk-functional-information"] id-CCCC-10547: Created. New rules.</xref>
                    </li>
                    <li>
                        <xref href="../../../Rosetta/common_newest/Rosetta_link-LxAdv-ref.lnlink_BLOBSTORE.dita">2016-05-20 - link[@filename] to ref:lnlink[@service="ATTACHMENT"] for BLOBSTORE images id-CCCC-10541: Created this instruction to specify Blobstore specific output parameters.</xref>
                    </li>
                    <li>
                        <xref href="../../../Rosetta/common_newest/Rosetta_emph-LxAdv-emph.dita">2016-04-01 - emph to emph id-CCCC-10316: Added statement to clarify that children of emph should be processed.</xref>
                    </li>
                    <li>
                        <xref href="../../../Rosetta/common_newest/Rosetta_l-LxAdv-list.dita">2016-04-01 - l to list id-CCCC-10372: Added mapping instruction for handling h within listitem.</xref>
                    </li>
                    <li>
                        <xref href="../../../Rosetta/common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2016-03-23 - ci.cite to lnci.cite id-CCCC-10268: Updated main instructions to clarify that descendants of ci:cite, and not just children, are to be processed.</xref>
                    </li>
                    <li>
                        <xref href="../../../Rosetta/common_newest/Rosetta_footnote-LxAdv-footnote.dita">2016-02-29 - footnotegrp and footnote to footnotegrp and footnote id-CCCC-10322: Added note for handling
                            <sourcexml>@type="editorial"</sourcexml> attribute. Applicable for UK22CS,
                            RFA# 2762</xref>
                    </li>
                    <li>
                        <xref href="../../../Rosetta/common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2016-02-05 - remotelink to ref:crossreference id-CCCC-10465: Added note and example when
                            <sourcexml>remotelink</sourcexml> is a child of <sourcexml>emph</sourcexml>. Applicable
                            on NZ17CC, Webstar: 319232 and 318735.</xref>
                    </li>
                    <li>
                        <xref href="../../../Rosetta/common_newest/Rosetta_footnote-LxAdv-footnote.dita">2016-01-05 - footnotegrp and footnote to footnotegrp and footnote id-CCCC-10322: Added instructions for
                            <sourcexml>footnotegrp</sourcexml> within <sourcexml>frm:div</sourcexml>. To generate
                            <targetxml>form:p/form:text</targetxml> wrapper for target
                            <targetxml>footnotegroup</targetxml>. Immediately affects UK12 but will
                            apply to any stream if the use case occurs. RFA 2653.</xref>
                    </li>
                </ul>
            </p>
        </section>
        <section>
            <title>Composite Case Schema Version 2.4 PROD</title>
            <p>2015-12-22
                <ul>
                    <li>
                        <xref href="../../../Rosetta/common_newest/Rosetta_UK_case.casename-Plus-case.reportercite-LxAdv-dc.title.dita">2015-11-20 - (UK01-UK04) case:casename and case:reportercite to dc:title id-CCCC-10531: Added this topic. Requested in UXRs for these streams during November 2015.</xref>
                    </li>
                    <li>
                        <xref href="../../../Rosetta/common_newest/Rosetta_UK_docinfo.doc-heading-LxAdv-SUPPRESS.dita">2015-11-20 - (UK01-UK04) docinfo:doc-heading is SUPPRESSED id-CCCC-10532: Added this topic. Requested in UXRs for these streams during November 2015.</xref>
                    </li>
                </ul>
            </p>
        </section>
        
        <section>
            <title>Composite Case Schema Version 2.4 PROD</title>
            <p>2015-09-24
                <ul>
                    <li>
                        <xref href="../../../Rosetta/DITA-UK/UK02-Comp_Cases/case.parallelcite.dita">2015-09-24 - case:parallelcite id-UK02-27228: Updated target mapping and example of
                            <sourcexml>case:parallelcite</sourcexml>, Applicable on UK02.</xref>
                    </li>
                </ul>
            </p>
        </section>
        
        <section>
            <title>Composite Case Schema Version 2.4 PROD</title>
            <p>2015-09-22
                <ul>
                    <li>
                        <xref href="../../../Rosetta/DITA-UK/UK02-Comp_Cases/case.decisionsummary.dita">2015-09-21 - case:decisionsummary id-UK02-27217: Added instruction and example when <sourcexml>case:decisionsummary</sourcexml> is a child of <sourcexml>case:content/case:judgments</sourcexml>, Applicable on UK02, RFA 4.5 # 2398.</xref>
                    </li>
                </ul>
            </p>
        </section>
        
        <section>
            <title>Composite Case Schema Version 2.1 PROD</title>
            <p>2015-02-05
            <ul>
                <li>
                    <xref href="../../../Rosetta/DITA-UK/UK02-Comp_Cases/case.courtnum.dita">2015-02-11 - case:courtnum id-UK02-27239: Changed the mapping to <targetxml>compcase:caseinstanceinfo</targetxml>
                    </xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/DITA-UK/UK02-Comp_Cases/case.courtinfo.dita">2015-02-11 - case:courtinfo id-UK02-27213: Added <sourcexml>case:courtnum</sourcexml> in the list of child of <sourcexml>case:courtinfo</sourcexml>
                    </xref>
                </li>
            </ul>
            </p>
        </section>
        <section>
            <title>Composite Case Schema Version 2.1 PROD</title>
            <p>2015-02-05
            <ul>
                <li>
                    <xref href="../../../Rosetta/common_newest/Rosetta_person_searchtype-LxAdv_person.person_and_doc.legacy-metadata.dita">2015-02-05 - person[@searchtype="JUDGES"] to person:person id-CCCC-10430: Added this dita topic to UK02 (R4.5 #2170)</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/DITA-UK/UK02-Comp_Cases/case.courtnum.dita">2015-02-05 - case:courtnum id-UK02-27239: Added this dita topic to UK02 (R4.5 #2169)</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.hier-LxAdv-doc.hier.dita">2015-01-23 - docinfo:hier to doc:hier id-CCCC-10297: Added note to convert <sourcexml>docinfo:hierlev/@exclude-from-displayunits="true"</sourcexml> into
                        <targetxml>doc:hier/@includeintoc="false"</targetxml>.</xref>
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
                    <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.hier-LxAdv-doc.hier.dita">2015-01-13 - docinfo:hier to doc:hier id-CCCC-10297: Added a note to repalce
                        <sourcexml>nl</sourcexml> to a white space when <sourcexml>nl</sourcexml> is
                        coming as child of <sourcexml>docinfo:hierlev/heading/title</sourcexml>
                    </xref>
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
                    <xref href="../../../Rosetta/common_newest/Rosetta_page-LxAdv-ref.page.dita">2015-01-05 - page to ref:page id-CCCC-10426: Defined handling for page/@count if period (.) occurs in the value.</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2015-01-02 - docinfo:assoc-links to doc:related-content id-CCCC-10284: Added
                        <sourcexml>docinfo:assoc-links/remotelink[@service="QUERY"]</sourcexml> and
                        <sourcexml>docinfo:assoc-links-grp/remotelink[@service="QUERY"]</sourcexml> to generate
                        <targetxml>doc:related-content</targetxml> markup. Applicable on CA05.</xref>
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
                    <xref href="../../../Rosetta/common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2014-12-08 - ci.cite to lnci.cite id-CCCC-10268: Addition of mapping for <sourcexml>ci:pinpoint</sourcexml> to 
                        <targetxml>lnci:pinpoint</targetxml> and example from US LPA content.</xref>
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
                    <xref href="../../../Rosetta/common_newest/Rosetta_title-LxAdv-title.dita">2014-10-07 - title to title id-CCCC-10479: Removed instruction and example to convert attribute <sourcexml>@searchtype="DIGEST-SUBJECT"</sourcexml>. Applicable to CA12.</xref>
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
                    <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2014-08-21 - docinfo:assoc-links to doc:related-content id-CCCC-10284: Added instructions and an example for converting
                        <sourcexml>lnlink[@service="ATTACHMENT"]</sourcexml> to
                        <targetxml>ref:lnlink</targetxml>. Applicable on CA05-CA08.</xref>
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
                    <xref href="../../../Rosetta/common_newest/Rosetta_table-LxAdv-table.dita">2014-07-08 - table to table id-CCCC-10475: Updated instruction for added the
                        following rarely occurring attributes <sourcexml>@char</sourcexml> inside the <sourcexml>entry</sourcexml>.</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.doc-id-LxAdv-dcidentifier_lnmetaidentifier-scheme.dita">2014-06-23 - docinfo:doc-id to dc:identifier[@lnmeta:identifier-scheme] id-CCCC-10293: Note and Example removed - For CA05 Acts and
                        Bills- Mapping in dc:identifier for act-no and chunk-no. Db issue #1464</xref>
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
                    <xref href="../../../Rosetta/common_newest/Rosetta_page-LxAdv-ref.page.dita">2014-06-03 - page to ref:page id-CCCC-10426: Added instruction and example to generate
                        <targetxml>doc:pagination/doc:pagination-scheme</targetxml> in target and
                        this immediately applies to all LNI streams.</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/common_newest/Rosetta_footnote-LxAdv-footnote.dita">2014-06-02 - footnotegrp and footnote to footnotegrp and footnote id-CCCC-10322: Canada only. Added special rule to suppress
                        indent from <sourcexml>footnote/fnbody/p[@indent]</sourcexml>. Applies
                        immediately to all Canada streams. R4.5 Content Issue 1609.</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.doc-id-LxAdv-dcidentifier_lnmetaidentifier-scheme.dita">2014-05-21 - docinfo:doc-id to dc:identifier[@lnmeta:identifier-scheme] id-CCCC-10293: For CA05 Acts and Bills- Mapping in dc:identifier for act-no and chunk-no.. Db issue #1464 </xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2014-04-28 - docinfo:assoc-links to doc:related-content id-CCCC-10284: Clarified instructions regarding
                        <sourcexml>link</sourcexml> elements and added an example (#4) illustrating the special
                        <sourcexml>text/link</sourcexml> conversion. No mapping rules where changed or
                        added.</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2014-04-21 - docinfo:assoc-links to doc:related-content id-CCCC-10284: Added an instruction to handle
                        <sourcexml>link</sourcexml> elements. These can potentially occur in any future UK data
                        and will be present in stream UK21fl when those documents become available later in
                        2014.</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/common_newest/Rosetta_footnote-LxAdv-footnote.dita">2014-04-17 - footnotegrp and footnote to footnotegrp and footnote id-CCCC-10322: Added instruction for
                        <sourcexml>footnotegrp</sourcexml> within <sourcexml>sigblock</sourcexml>.
                        Specifies <targetxml>p/text</targetxml> wrapper for target
                        <targetxml>sigblock/p/text/footnotegroup</targetxml>. Immediately affects
                        UK12 but will apply to any stream if the use case occurs. Phase 6 UK discussion
                        items 76 and 88.</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/common_newest/Rosetta_p-LxAdv-p.dita">2014-04-14 - p to p id-CCCC-10424: Removed Colons from Labels.. DB item #1255</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2014-04-03 - docinfo:assoc-links to doc:related-content id-CCCC-10284: Illustrative changes. Examples modified. Mapping
                        for <sourcexml>ci:cite</sourcexml> added to Example 3. Former Examples 4 and 5 removed to
                        avoid confusion with special AU-NZ use case described in a separate module. R4.5 Content
                        issue #1125, for AU-NZ, has prompted the changes for this general module.</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2014-03-25 - docinfo:assoc-links to doc:related-content id-CCCC-10284: Added rule and example for
                        <sourcexml>docinfo:assoc-links/docinfo:assoc-links-grp/ci:cite</sourcexml>. R4.5 Content
                        issue #1125</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2014-02-25 - remotelink to ref:crossreference id-CCCC-10465: Updated instruction and created new example (#16)
                        for handling <sourcexml>remotelink[@service="QUERY"]</sourcexml>. New instruction
                        preserves pcdata but suppresses <sourcexml>remotelink</sourcexml> markup. Webstar #250335.
                        Change applies immediately to all Pacific streams, and in the long run to all
                        streams.</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.doc-heading-LxAdv-dc.title.dita">2014-02-11 - docinfo:doc-heading to dc:title id-CCCC-10292: Updated note when <sourcexml>emph</sourcexml> is
                        child of <sourcexml>docinfo:doc-heading</sourcexml> then suppress
                        <sourcexml>emph</sourcexml> element and retain its content in
                        <targetxml>dc:title</targetxml>, These instructions apply immediately to
                        CA12.</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/common_newest/Rosetta_pgrp-LxAdv-pgrp.dita">2014-02-11 - pgrp to pgrp id-CCCC-10431: Add instruction and example <sourcexml>pgrp/@subdoc</sourcexml> and <sourcexml>pgrp/@toc-caption</sourcexml>. Support Discussion Board: NZ09 Commentary, Form and Precedents</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/DITA-UK/UK02-Comp_Cases/case.courtnum.dita">2014-02-05 - case:courtnum id-UK02-27239: Added instruction to handle PCDATA occuring
                        between <sourcexml>case:courtnum/emph</sourcexml> and
                        <sourcexml>ci:cite</sourcexml>
                    </xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.topiccodes-to-LxAdv-classify.classification_classscheme_docinfo-topiccodes.dita">2014-02-03 - docinfo:topiccodes to classify:classification[@classscheme="docinfo:topiccodes"] id-CCCC-10306: Added a special rule for UK07 contents, When element <sourcexml>docinfo:topiccode</sourcexml> contains attribute <sourcexml>@scheme="source-by-date"</sourcexml>, then conversion will suppress it including its contents as well. Phase 5 UK discussion-defect tracking: issue #156. </xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2014-02-03 - remotelink to ref:crossreference id-CCCC-10465: Instruction updated if
                        <sourcexml>remotelink</sourcexml> occurs as multiple, immediate siblings and without
                        intermediary text within <sourcexml>title</sourcexml>. Also added a example for the same
                        scenario. Phase 5 UK discussion-defect tracking issue #161</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/common_newest/Rosetta_text-LxAdv-text.dita">2014-01-31 - text to text id-CCCC-10477: Updated instruction, <targetxml>align</targetxml> will be moved in <targetxml>p</targetxml> in NL conversion. NZ09 commentary discussion board issue for handling <sourcexml>text/@align</sourcexml>
                    </xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/common_newest/Rosetta_Elements-LxAdv-Empty_Elements.dita">2014-01-16 - Suppress each empty element unless otherwise stated id-CCCC-10310: Added list of elements to suppress if empty.</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/common_newest/Rosetta_date-Chof-docinfo.load-date-LxAdv-dc.date_lnmeta.datetype_load-date-scheme.dita">2014-01-07 - docinfo:load-date/date to dc:date[@lnmeta:datetype="load-date"] id-CCCC-10274:  Added a note along with example which contains "00" value in <sourcexml>@day="00"</sourcexml> and <sourcexml>@month="00"</sourcexml> attributes encountered in CANADA contents.</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/common_newest/Rosetta_footnote-LxAdv-footnote.dita">2014-01-06 - footnotegrp and footnote to footnotegrp and footnote id-CCCC-10322: Updated target example for applying the rule
                        of "deleting extraneous instances of @morerows, @colsep and @rowsep" in sample
                        documents.</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/common_newest/Rosetta_l-LxAdv-list.dita">2014-01-06 - l to list id-CCCC-10372: Added mapping instruction for nested lists.</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/common_newest/Rosetta_Topic_Identifiers.dita">2014--0-5- - Topic Identifiers id-CCCC-10481: Created.</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2013-12-30 - ci.cite to lnci.cite id-CCCC-10268: Minor illustrative change. Added "(AU
                        Journals/Newsitem)" to headings for last example to clarify that retention of
                        <sourcexml>@type="cite4thisdoc"</sourcexml> is an exception for that
                        content, as already described in narrative rules.</xref>
                </li>
            </ul>
            </p>
        </section>
        <section>
            <title>Composite Case Schema Version 3.2 ALPHA</title>
            <p>2013-12-27
                <ul>
                    <li>
                        <xref href="../../DITA-UK/UK02-Comp_Cases/case.judgments.dita">2013-12-27 - case:judgments: Added instruction to handle case:dates/page
                            WebTeam #248449</xref>
                    </li>
                    <li>
                        <xref href="../../common_newest/Rosetta_docinfo.alt-renditions-LxAdv-doc.alt-renditions.dita">2013-12-17 - docinfo:alt-renditions/docinfo:alt-rendition to doc:alt-renditions/doc:alt-rendition: Added instruction and example for <sourcexml>docinfo:alt-rendition/lnlink</sourcexml>. (Webteam #247307)</xref>
                    </li>
                    <li>
                        <xref href="../../common_newest/Rosetta_p-LxAdv-p.dita">2013-12-04 - p to p: Updated target example when <sourcexml>p</sourcexml> or <sourcexml>p/@nl="0"</sourcexml> comes in <sourcexml>references</sourcexml>, this change directly affects NZ07.</xref>
                    </li>
                    <li>
                        <xref href="../../common_newest/Rosetta_p-LxAdv-p.dita">2013-11-21 - p to p: Updated instruction and example <sourcexml>p</sourcexml> or <sourcexml>p/@nl="0"</sourcexml> comes in <sourcexml>references</sourcexml>, this change directly affects NZ07.</xref>
                    </li>
                    <li>
                        <xref href="../../common_newest/Rosetta_UK_docinfo.custom-metafields-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta.meta.metaitem.dita">2013-11-20 - docinfo:custom-metafields to doc:legacy-metadata[@metadatasource="lbu-meta"]/meta/metaitem: Added instruction to handle
                            <sourcexml>docinfo:custom-metafields/docinfo:custom-metafield/@name="jurisdiction"</sourcexml>
                            is "European"  Webteam # 239816 </xref>
                    </li>
                    <li>
                        <xref href="../../common_newest/Rosetta_docinfo.alt-renditions-LxAdv-doc.alt-renditions.dita">2013-10-29 - docinfo:alt-renditions/docinfo:alt-rendition to doc:alt-renditions/doc:alt-rendition: Added instruction and example for UK06 Laws/Acts/Bills/Measures and UK07 Regulation place the text of <sourcexml>leg:officialname</sourcexml> in <targetxml>doc:alt-renditions/doc:alt-rendition/ref:lnlink/ref:marker</targetxml> (Webteam #243521)</xref>
                    </li>
                    <li>
                        <xref href="../../common_newest/Rosetta_p-LxAdv-p.dita">2013-10-25 - p to p: Added instruction and example <sourcexml>p/@nl="0"</sourcexml> comes in <sourcexml>references</sourcexml>.</xref>
                    </li>
                    <li>
                        <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-10-23 - remotelink to ref:crossreference: Added Example when <sourcexml>remotelink</sourcexml> having child <sourcexml>emph</sourcexml>. Webteam # 239816</xref>
                    </li>
                    <li>
                        <xref href="../../common_newest/Rosetta_docinfo.doc-heading-LxAdv-dc.title.dita">2013-10-18 - docinfo:doc-heading to dc:title: Updated Instruction when <sourcexml>docinfo:doc-heading</sourcexml> contains word RULE: " or STATUTE: .</xref>
                    </li>
                    <li>
                        <xref href="../../common_newest/Rosetta_Elements-LxAdv-Empty_Elements.dita">2013-10-14 - Suppress each empty element unless otherwise stated: Changed antecedent to singular to match instructions.</xref>
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
                    
                </ul>
            </p>
            </section>
        <section>
            <title>Composite Case Schema Version 3.1 ALPHA</title>
            <p>2013-09-20
            <ul>
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
                    <xref href="../../common_newest/Rosetta_footnote-LxAdv-footnote.dita">2013-08-22 - footnotegrp and footnote to footnotegrp and footnote: Not a rule change. Second target sample
                        modified to remove attribute <targetxml>lnci:cite[@citeref]</targetxml> because
                        value captured in descendant
                        <targetxml>ref:crossreference/ref:locator[@anchoridref]</targetxml>.
                        Ancillary/illustrative within this module. Change made to promote uniformity
                        across samples.</xref>
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
                    <xref href="../../common_newest/Rosetta_docinfo.lbu-meta-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta-scheme.dita">2013-08-12 - docinfo:lbu-meta to doc:legacy-metadata[@metadatasource="lbu-meta"]: We removed the docinfo:lbu-meta "include" list so now there is only a "drop" list. Anything not on the "drop" list should be passed through. Webteam 230557.</xref>
                </li>
                <li>
                    <xref href="../../common_newest/Rosetta_remotelink-self-inter-document-link-LxAdv-intra-document-link.dita">2013-08-12 - remotelink (self inter-document link) to ref:lnlink (intra-document link): Changed module heading from ref:crossreference to ref:lnlink.  NO
                        instructions are changed.  WebTeam # 230229. Affects all streams.</xref>
                </li>
            </ul>
                </p>
            </section>
        <section>
            <title>Composite Case Schema Version 3.1 ALPHA</title>
            <p>2013-08-12
            <ul>
                <li>
                    <xref href="../../DITA-UK/UK02-Comp_Cases/case.parallelcite.dita">2013-08-12 - case:parallelcite: Added instructions for handling the scenario
                        when there are case:reportercite and case:parallelcite elements comes as sibling.</xref>
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
                    <xref href="../../common_newest/Rosetta_remotelink-self-inter-document-link-LxAdv-intra-document-link.dita">2013-08-07 - remotelink (self inter-document link) to ref:crossreference (intra-document link): Changed target to
                        <targetxml>ref:lnlink</targetxml>; formerly
                        <targetxml>ref:crossreference</targetxml>. Changed because the only
                        supported markup for intradoc linking is <targetxml>ref:lnlink</targetxml>, as
                        per Bency Thomas. WebTeam # 230229. Affects all streams.</xref>
                </li>
                <li>
                    <xref href="../../common_newest/Rosetta_docinfo.lbu-meta-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta-scheme.dita">2013-08-02 - docinfo:lbu-meta to doc:legacy-metadata[@metadatasource="lbu-meta"]: Added <sourcexml>@name="selection_criteria_variant"</sourcexml> to the list of values in docinfo:metaitem/@name that should be retained. And added a example.</xref>
                </li>
            </ul>
                </p>
            </section>
            <section>
            <title>Composite Case Schema Version 3.0 ALPHA</title>
            <p>2013-08-01
            <ul>
                <li>
                    <xref href="../../common_newest/Rosetta_UK_docinfo.custom-metafields-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta.meta.metaitem.dita">2013-08-01 - Updated instructions for converting <sourcexml>docinfo.custom-metafields</sourcexml> in order to be consistent with all UK streams.</xref>
                </li>
                <li>
                    <xref href="../../common_newest/Rosetta_docinfo.doc-heading-LxAdv-dc.title.dita">2013-08-01 - docinfo:doc-heading to dc:title: Added a note and examples, when <sourcexml>docinfo:doc-heading</sourcexml> contains child element <sourcexml>nl</sourcexml>.</xref>
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
            <title>Composite Case Schema Version 2.1 ALPHA</title>
            <p>2013-07-22
                <ul>
                    <li>
                        <xref href="../../DITA-UK/UK02-Comp_Cases/case.juris.dita">2013-07-19 - case:juris: Instruction have been added to handle <sourcexml>case:juris</sourcexml>
                            according to the jurisdiction value it holds.</xref>
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
                  </ul>  
            </p>
        </section>
        <section>
            <title>Composite Case Schema Version 2.1 ALPHA</title>
            <p>2013-07-15<ul>
                    <li>
                        <xref href="../../DITA-UK/UK02-Comp_Cases/case.reportercite.dita">2013-07-15
                            - case:reportercite: Added instructions for handling the scenario when
                            there are multiple case:reportercite elements that contain the same
                            citation.</xref>
                    </li>
                    <li>
                        <xref href="../../common_newest/Rosetta_title-LxAdv-title.dita">2013-07-05 -
                            title to title: Added Instruction when <sourcexml>title</sourcexml>
                            contains word "TITLE: ".</xref>
                    </li>
                    <li>
                        <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-06-03 - remotelink to ref:crossreference: Updated the Target XML 2
                            by removing the <targetxml>@crossreferencetype</targetxml> for Canada
                            example.</xref>
                    </li>
                    <li>
                        <xref href="../../common_newest/Rosetta_docinfo.lbu-meta-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta-scheme.dita">2013-05-31 - docinfo:lbu-meta to
                            doc:legacy-metadata[@metadatasource="lbu-meta"]: Added "document-type"
                            to the list of values in docinfo:metaitem/@name that should be
                            retained.</xref>
                    </li>
                    <li>
                        <xref href="../../common_newest/Rosetta_link-LxAdv-ref.lnlink.dita">2013-05-24 - link to ref:lnlink/@service="ATTACHMENT": Updated
                            instruction for handling of link when smi is present and some of the
                            verbiage is changed.</xref>
                    </li>
                    <li>
                        <xref href="../../common_newest/Rosetta_docinfo-LxAdv-doc.metadata_doc.docinfo.dita">2013-05-16 - docinfo to doc:metadata/doc:docinfo: Fixed typo updating
                            urn:contentitem to urn:contentItem</xref>
                    </li>
                </ul></p>
        </section>
        <section>
            <title>Composite Case Schema Version 2.0 ALPHA</title>
            <p>2013-05-13 <ul>
                    <li>
                        <xref href="../../common_newest/Rosetta_blockquote-LxAdv-blockquote.dita">2013-05-08 - blockquote to blockquote: Extended the list of allowable
                            values for image handling.</xref>
                    </li>
                    <li>
                        <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-05-08 - remotelink to ref:crossreference: Extended the list of
                            allowable values for image handling.</xref>
                    </li>
                    <li>
                        <xref href="../../common_newest/Rosetta_link-LxAdv-ref.lnlink.dita">2013-05-02 - link to ref:lnlink/@service="ATTACHMENT": Some of the
                            verbiage is changed and updated target example to if the SMI is present
                            then a <targetxml>ref:lnlink/@status</targetxml> attribute is set to
                            “valid”.</xref>
                    </li>
                    <li>
                        <xref href="../../common_newest/Rosetta_docinfo.alt-renditions-LxAdv-doc.alt-renditions.dita">2013-05-01 - docinfo:alt-renditions/docinfo:alt-rendition to
                            doc:alt-renditions/doc:alt-rendition: Updated instructions and target
                            example per latest Apollo markup.</xref>
                    </li>
                    <li>
                        <xref href="../../common_newest/Rosetta_blockquote-LxAdv-blockquote.dita">2013-05-01 - blockquote to blockquote: Removed instructions for section
                            "Pre-Release 4.0" because according to latest Apollo markup, section
                            "Release 4.0 and after" and section "Pre-Release 4.0" now have similar
                            conversion markup.</xref>
                    </li>
                    <li>
                        <xref href="../../common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2013-05-01 - ci.cite to lnci.cite: Removed special rule for
                                <sourcexml>ci:cite/ci:content/remotelink</sourcexml> which required
                            suppression of <sourcexml>ci:cite/ci:content</sourcexml> tags. The
                            elements are now retained and convert according to common rules.</xref>
                    </li>
                    <li>
                        <xref href="../../common_newest/Rosetta_link-LxAdv-ref.lnlink.dita">2013-05-01 - link to ref:lnlink/@service="ATTACHMENT": Updated
                            instructions and target example per latest Apollo markup.</xref>
                    </li>
                    <li>
                        <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-05-01 - remotelink to ref:crossreference: Removed instructions for
                            section "Pre-Release 4.0" because according to latest Apollo markup,
                            section "Release 4.0 and after" and section "Pre-Release 4.0" now have
                            similar conversion markup.</xref>
                    </li>
                    <li>
                        <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-05-01 - remotelink to ref:crossreference: "Instruction added for
                                <sourcexml>ci:cite/ci:content/remotelink</sourcexml> specifying that
                            the <sourcexml>remotelink</sourcexml> is to be converted to
                                <targetxml>ref:crossreference</targetxml> but the containing
                            elements' start-tags and end-tags (<sourcexml>ci:cite</sourcexml> and
                                <sourcexml>ci:content</sourcexml>) are dropped", has been removed
                            from the instructions and now <sourcexml>remotelink</sourcexml> will be
                            converted to the resulting mapping where it is. For more details you can
                            see example: Source XML 10: <sourcexml>remotelink</sourcexml> as a child
                            of <sourcexml>ci:cite/ci:content</sourcexml>
                        </xref>
                    </li>
                    <li>
                        <xref href="../../common_newest/Rosetta_blockquote-LxAdv-blockquote.dita">2013-04-30 - blockquote to blockquote: Updated target sample according
                            to latest Apollo markup.</xref>
                    </li>
                    <li>
                        <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-04-30 - remotelink to ref:crossreference: Updated target sample
                            according to latest Apollo markup.</xref>
                    </li>
                    <li>
                        <xref href="../../common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2013-04-24 - ci.cite to lnci.cite: Added a mapping for
                                <sourcexml>ci:procphrase</sourcexml> to
                                <sourcexml>lnci:procphrase</sourcexml>
                        </xref>
                    </li>
                    <li>
                        <xref href="../../common_newest/Rosetta_docinfo.doc-lang-and-doc-country-LxAdv-ROOT_xml.lang.dita">2013-04-19 - docinfo:doc-lang and docinfo:doc-country to @xml:lang and
                            @xml:ID: Added note about applicability of restrictions and required
                            modifications for <targetxml>xml:id</targetxml> to other
                            scenarios.</xref>
                    </li>
                    <li>
                        <xref href="../../common_newest/Rosetta_docinfo.custom-metafields-LxAdv-SUPPRESS.dita">2013-04-16 - docinfo:custom-metafields is SUPPRESSED: Updated the
                            instruction of handling
                                <sourcexml>docinfo:custom-metafield[@name="JURIS-SORT"]</sourcexml>,
                                <sourcexml>docinfo:custom-metafield[@name="COURT-SORT"]</sourcexml>,
                            and <sourcexml>docinfo:custom-metafield[@name="TERM-SORT"]</sourcexml>
                            markup in CA Dictionary content stream.</xref>
                    </li>
                    <li>
                        <xref href="../../common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2013-04-12 - docinfo:assoc-links to doc:related-content: This module
                            was changed from UK specific to applicable to all LBUs</xref>
                    </li>
                    <li>
                        <xref href="../../common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2013-04-10 - docinfo:assoc-links to doc:related-content: An example for
                            related content Source and Target XML 4</xref>
                    </li>
                    <li>
                        <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-04-10 - remotelink to ref:crossreference: Added Source XML 7a: for
                            link to URL, with non-URL text content because it was previously
                            missing, only the target example was here.</xref>
                    </li>
                    <li>
                        <xref href="../../common_newest/Rosetta_docinfo.lbu-meta-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta-scheme.dita">2013-04-09 - docinfo:lbu-meta to
                            doc:legacy-metadata[@metadatasource="lbu-meta"]: Added the instruction
                            for handling
                            <sourcexml>docinfo:metaitem[@name="QLDB"]</sourcexml>.</xref>
                    </li>
                    <li>
                        <xref href="../../common_newest/Rosetta_Elements-LxAdv-Empty_Elements.dita">2013-03-28 - Suppress empty elements unless otherwise stated:
                            Created.</xref>
                    </li>
                    <li>
                        <xref href="../../common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2013-03-28 - docinfo:assoc-links to doc:related-content: Added rules
                            for <sourcexml>docinfo:assoc-links-grp</sourcexml> and for child
                                <sourcexml>text</sourcexml>.</xref>
                    </li>
                    <li>
                        <xref href="../../common_newest/Rosetta_docinfo.custom-metafields-LxAdv-SUPPRESS.dita">2013-03-20 - docinfo:custom-metafields is SUPPRESSED: Updated the
                            instruction of handling
                                <sourcexml>docinfo:custom-metafield[@name="dpsi"]</sourcexml> markup
                            in CA content stream.</xref>
                    </li>
                    <li>
                        <xref href="../../common_newest/Rosetta_docinfo.doc-id-LxAdv-dcidentifier_lnmetaidentifier-scheme.dita">2013-03-20 - docinfo:doc-id to
                            dc:identifier[@lnmeta:identifier-scheme]: Updated the information on
                            handling the situation when
                                <sourcexml>docinfo:dpsi[@id-string]</sourcexml> is absent with
                            instructions to get the dpsi from
                                <sourcexml>docinfo/docinfo:custom-metafields/docinfo:custom-metafield[@name="dpsi"]</sourcexml>.</xref>
                    </li>
                    <li>
                        <xref href="../../common_newest/Rosetta_nl-LxAdv-proc.nl.dita">2013-03-14 -
                            nl to proc:nl: Add instruction and example
                            <sourcexml>nl/@n</sourcexml>.</xref>
                    </li>
                    <li>
                        <xref href="../../common_newest/Rosetta_p-LxAdv-p.dita">2013-03-14 - p to p:
                            Add instruction and example <sourcexml>p/@style</sourcexml>.</xref>
                    </li>
                    <li>
                        <xref href="../../common_newest/Rosetta_pgrp-LxAdv-pgrp.dita">2013-03-14 -
                            pgrp to pgrp: Add instruction and example
                                <sourcexml>pgrp/@id</sourcexml>.</xref>
                    </li>
                    <li>
                        <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-03-11 - remotelink to ref:crossreference: Instruction and example
                            added on how to handle <targetxml>ref:marker </targetxml> if it is in
                                <targetxml>ref:lnlink@service=”URL”</targetxml>and the
                                <targetxml>ref:key-value@value</targetxml> starts-with (.,
                            'http://www.lexisnexis.com/au/legal/api')</xref>
                    </li>
                    <li>
                        <xref href="../../common_newest/Rosetta_date-LxAdv-date.dita">2013-03-08 -
                            date to date: Added instruction for @normdate attribute that falls on
                            various NL date elements</xref>
                    </li>
                    <li>
                        <xref href="../../common_newest/Rosetta_heading-LxAdv-heading.dita">2013-03-06 - heading to heading: Removed instructions/rules for
                            exceptional desig scenario and deprecated attribute
                                <targetxml>@followstitle</targetxml>.</xref>
                    </li>
                    <li>
                        <xref href="../../common_newest/Rosetta_docinfo.alt-renditions-LxAdv-doc.alt-renditions.dita">2013-02-26 - docinfo:alt-renditions/docinfo:alt-rendition to
                            doc:alt-renditions/doc:alt-rendition: Updated target example per project
                            requirement.</xref>
                    </li>
                    <li>
                        <xref href="../../common_newest/Rosetta_link-LxAdv-ref.lnlink.dita">2013-02-26 - link to ref:lnlink/@service="ATTACHMENT": Updated target
                            example per project requirement.</xref>
                    </li>
                    <li>
                        <xref href="../../common_newest/Rosetta_blockquote-LxAdv-blockquote.dita">2013-02-18 - blockquote to blockquote: Created two sections, one for
                            "Release 4.0 and after" and another for "Pre-Release 4.0".</xref>
                    </li>
                    <li>
                        <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-02-18 - remotelink to ref:crossreference: Created two sections,
                            one for "Release 4.0 and after" and another for "Pre-Release
                            4.0".</xref>
                    </li>
                    <li>
                        <xref href="../../common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2013-01-22 - docinfo:assoc-links to doc:related-content: Added mapping
                            instruction for <sourcexml>docinfo:assoc-links/remotelink
                                @href</sourcexml>.</xref>
                    </li>
                    <li>
                        <xref href="../../common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2013-01-22 - ci.cite to lnci.cite: Instruction modified for the
                            scenario <sourcexml>ci:cite/ci:content/remotelink</sourcexml> to
                            indicate that the <sourcexml>ci:cite</sourcexml> and
                                <sourcexml>ci:content</sourcexml> start-tags and end-tags (but not
                            their content) are dropped.</xref>
                    </li>
                </ul>
            </p>
        </section>
        <section>
            <title>Composite Case Schema version 1.14 ALPHA</title>
            <p>2013-03-11 <ul>
                    <li>
                        <xref href="../../common_newest/Rosetta_date-LxAdv-date.dita">2013-03-08 -
                            date to date: Added instruction for @normdate attribute that falls on
                            various NL date elements</xref>
                    </li>
                    <li>
                        <xref href="../../common_newest/Rosetta_heading-LxAdv-heading.dita">2013-03-06 - heading to heading: Removed instructions/rules for
                            exceptional desig scenario and deprecated attribute
                                <targetxml>@followstitle</targetxml>.</xref>
                    </li>
                    <li>
                        <xref href="../../common_newest/Rosetta_docinfo.alt-renditions-LxAdv-doc.alt-renditions.dita">2013-03-05 - docinfo:alt-renditions/docinfo:alt-rendition to
                            doc:alt-renditions/doc:alt-rendition: Updated target example (removed
                            ".pdf" from attribute value of
                                <sourcexml>ref:key-value/@value</sourcexml>).</xref>
                    </li>
                    <li>
                        <xref href="../../common_newest/Rosetta_docinfo.alt-renditions-LxAdv-doc.alt-renditions.dita">2013-02-26 - docinfo:alt-renditions/docinfo:alt-rendition to
                            doc:alt-renditions/doc:alt-rendition: Updated target example per project
                            requirement.</xref>
                    </li>
                    <li>
                        <xref href="../../common_newest/Rosetta_link-LxAdv-ref.lnlink.dita">2013-02-26 - link to ref:lnlink/@service="ATTACHMENT": Updated target
                            example per project requirement.</xref>
                    </li>
                    <li>
                        <xref href="../../common_newest/Rosetta_blockquote-LxAdv-blockquote.dita">2013-02-18 - blockquote to blockquote: Created two sections, one for
                            "Release 4.0 and after" and another for "Pre-Release 4.0".</xref>
                    </li>
                    <li>
                        <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-02-18 - remotelink to ref:crossreference: Created two sections,
                            one for "Release 4.0 and after" and another for "Pre-Release
                            4.0".</xref>
                    </li>
                    <li>
                        <xref href="../../common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2013-01-22 - ci.cite to lnci.cite: Instruction modified for the
                            scenario <sourcexml>ci:cite/ci:content/remotelink</sourcexml> to
                            indicate that the <sourcexml>ci:cite</sourcexml> and
                                <sourcexml>ci:content</sourcexml> start-tags and end-tags (but not
                            their content) are dropped.</xref>
                    </li>
                    <li>
                        <xref href="../../common_newest/Rosetta_footnote-LxAdv-footnote.dita">2013-01-09 - footnotegrp and footnote to footnotegrp and footnote:
                            Added instruction note for handling of
                                <sourcexml>footnote[@fntoken]</sourcexml> with value 0 for UK
                            content types.</xref>
                    </li>
                    <li>
                        <xref href="../../common_newest/Rosetta_emph-LxAdv-emph.dita">2013-01-08 -
                            emph to emph: Added note for handling <targetxml>emph/emph</targetxml>
                            has the same <targetxml>@typestyle</targetxml> value.</xref>
                    </li>
                    <li>
                        <xref href="../../common_newest/Rosetta_docinfo.custom-metafields-LxAdv-SUPPRESS.dita">2013-01-07 - docinfo:custom-metafields is SUPPRESSED: Updated the
                            instruction of handling
                                <sourcexml>docinfo:custom-metafield[@searchtype="CITED-COUNT"]</sourcexml>
                            markup in CA content stream.</xref>
                    </li>
                </ul>
            </p>
        </section>
        <section>
            <title/>
            <p>2013-01-14<ul>
                    <li>case:judgments section: Instructions have been updated with directions for
                        populating the attribute
                            <targetxml>decision:decisiondate/@normdate</targetxml>.</li>
                </ul></p>
        </section>
        <section>
            <title/>
            <p>2013-01-04<ul>
                    <li>Handling of PCDATA within <sourcexml>case:parallelcite</sourcexml> when
                        there is no citation markup wihin it.</li>
                </ul></p>
        </section>
        <section>
            <title/>
            <p>2012-12-26<ul>
                    <li>Instructions have been updated with directions for populating the attribute
                            <targetxml>decision:decisiondate/@normdate</targetxml>.</li>
                    <li>Added instruction and example for handling of text(PCDATA) occuring in
                        between <sourcexml>case:parallelcite</sourcexml> and
                            <sourcexml>ci:cite</sourcexml>.</li>
                </ul></p>
        </section>
        <section>
            <title/>
            <p>2012-12-11<ul>
                    <li>Added instruction and example for handling of multiple
                            <sourcexml>ci:cite</sourcexml> within
                            <sourcexml>case:parallelcite</sourcexml>.</li>
                </ul></p>
        </section>
        <section>
            <title/>
            <p>2012-11-22<ul>
                    <li>Updated the target example in Introduction section.</li>
                    <li>Target mapping has been updated for
                        <sourcexml>docinfo:normcite</sourcexml>.</li>
                    <li>Example update for <sourcexml>case:priorhist</sourcexml>.</li>
                    <li>Included <targetxml>bodytext</targetxml> elements under
                            <targetxml>casehist:summary</targetxml>.</li>
                </ul></p>
        </section>
        <section>
            <title>Created</title>
        </section>
    </body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK02-Comp_Cases\UK02_CompCase_Change-Log.dita  -->

</xsl:stylesheet>