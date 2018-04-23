<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:frm="http://www.lexis-nexis.com/glp/frm" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" xmlns:form="http://www.lexisnexis.com/xmlschemas/content/shared/form/1/" xmlns:legisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/legislation-info/1/" xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" xmlns:seclaw="http://www.lexisnexis.com/xmlschemas/content/legal/secondary-law/1/" version="2.0" exclude-result-prefixes="dita frm leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="UK22_seclaw_changeLog">
    <title>UK22CS Seclaw - Change Log</title>
    <body> 
        <section>
            <title>seclaw 8.17_PROD </title>
            <p>2016-11-18</p>
            <ul>
                <li>
                    <xref href="../../../Rosetta/common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2016-11-16 - remotelink to ref:crossreference id-CCCC-10465: Added to note regarding applying any rules related to 
                        <targetxml>@anchoridref</targetxml>, referring specifically to section for "Identifiers to ID Data Type - 
                        Handling Pattern Restrictions".</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/common_newest/Rosetta_inlineobject-LxAdv-ref.inlineobject_BLOBSTORE.dita">2016-11-07 - inlineobject to ref:inlineobject for BLOBSTORE images id-CCCC-10540: Updated the instruction for ref:key-name and
                        proc:param attribute values.</xref>
                </li>
            </ul>
        </section>
        <section>
            <title>2016-11-02</title>
            <ul>
                <li>
                    <xref href="../../../Rosetta/common_newest/Rosetta_link-LxAdv-ref.lnlink_BLOBSTORE.dita">2016-10-21 - link[@filename] to ref:lnlink[@service="ATTACHMENT"] for BLOBSTORE images id-CCCC-10541: Updated the Blobstore related instruction for
                        use standardize specific output parameters.</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/common_newest/Rosetta_lnlink_service_ATTACHMENT-LxAdv-ref.lnlink_BLOBSTORE.dita">2016-10-21 - lnlink[@service="ATTACHMENT"] to ref:lnlink[@service="ATTACHMENT"] for BLOBSTORE images id-CCCC-10542: Updated the Blobstore related instruction for use standardize specific output parameters.</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/common_newest/Rosetta_inlineobject-LxAdv-ref.inlineobject_BLOBSTORE.dita">2016-10-21 - inlineobject to ref:inlineobject for BLOBSTORE images id-CCCC-10540: Changed one proc:param name for target. Formerly
                        <targetxml>@name="attachment-server"</targetxml>; changed to
                        <targetxml>@name="object-server"</targetxml>.</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.versioninfo-LxAdv-doc.versioninfo-scheme.dita">2016-10-17 - docinfo:versioninfo to doc:versioninfo id-CCCC-10307: Updated the instruction for handling the
                        target attribute <targetxml>@normdate</targetxml>.
                        [Webstar#6676189]</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/common_newest/Rosetta_edpnum-LxAdv-desig.dita">2016-10-12 - edpnum to desig id-CCCC-10308: Added rule for handling scenario when
                        <sourcexml>pnum</sourcexml> and <sourcexml>edpnum </sourcexml> occur as
                        siblings (applicable for UK22CS and UK06).</xref>
                </li>
                <li>
                    <xref href="../../../Rosetta/common_newest/Rosetta_note-LxAdv-note.dita">2016-10-12 - note to note id-CCCC-10405: Added instruction for handling input scenario <sourcexml>note/legfragment</sourcexml>.
                    </xref>
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
                <li>
                    <xref href="../../../Rosetta/common_newest/Rosetta_footnote-LxAdv-footnote.dita">2016-08-08 - footnotegrp and footnote to footnotegroup and footnote id-CCCC-10322: Removing duplicate entry of
                        <sourcexml>lilabel/fnr</sourcexml>
                    </xref>
                </li>
            </ul>
        </section>
        <section>
            <title>2016-08-10</title>
            <p>
                <ul>         
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
                        <xref href="../../../Rosetta/common_newest/Rosetta_bodytext-link-LxAdv-seclaw.bodytext-p-text-ref.lnlink.dita">2016-08-01 - bodytext/link to seclaw:bodytext/p/text/ref:lnlink id-CCCC-10248: Added Note about xml snippets that illustrate image handling. Note summarizes move from Apollo to Blobstore application. UK is first LBU to move to Blobstore.</xref>
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
                        <xref href="../../../Rosetta/common_newest/Rosetta_lnlink_service_ATTACHMENT-LxAdv-ref.lnlink_BLOBSTORE.dita">2016-05-20 - lnlink[@service="ATTACHMENT"] to ref:lnlink[@service="ATTACHMENT"] for BLOBSTORE images id-CCCC-10542: Created this instruction to specify Blobstore
                            specific output parameters.</xref>
                    </li>
                    <li>
                        <xref href="../../../Rosetta/common_newest/Rosetta_inlineobject-LxAdv-ref.inlineobject_BLOBSTORE.dita">2016-05-20 - inlineobject to ref:inlineobject for BLOBSTORE images id-CCCC-10540: Created this instruction to specify Blobstore specific output parameters.</xref>
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
                </ul>
            </p>
        </section>
                    <section>
                        <title>2016-03-15</title>
                        <p>
                            <ul>
                    <li>
                        <xref href="../../../Rosetta/DITA-UK/UK22CS/Introduction.dita">2016-03-15 - Introduction id-UK22CS-36408: Updated schema version to Seclaw 8.10 PROD.</xref>
                    </li>
                    <li>
                        <xref href="../../../Rosetta/DITA-UK/UK22CS/Rosetta_leg.comntry-LxAdv-annot.annotations-annot.annotation-grp.dita">2016-03-15 - leg:comntry to annot:annotations/annot:annotation-grp id-UK22CS-36425: Added note for handling exceptional scenario when
                            <sourcexml>legfragment</sourcexml> is  parent of <sourcexml>leg:comntry</sourcexml>. [RFA
                            #2751]</xref>
                    </li>
                    <li>
                        <xref href="../../../Rosetta/common_newest/Rosetta_edpnum-LxAdv-desig.dita">2016-03-15 - edpnum to desig id-CCCC-10308: Added rule for handling scenario when
                            <sourcexml>pnum</sourcexml> and <sourcexml>edpnum </sourcexml> occur as
                            siblings (applicable only for UK22CS). [RFA #2755]</xref>
                    </li>
                </ul>
            </p>
        </section>
        <section>
            <title>2016-02-23</title>
            <p> 
                <ul>
                    <li>
                        <xref href="../../../Rosetta/common_newest/Rosetta_footnote-LxAdv-footnote.dita">2016-02-29 - footnotegrp and footnote to footnotegrp and footnote id-CCCC-10322: Added note for handling
                            <sourcexml>@type="editorial"</sourcexml> attribute. Applicable for UK22CS,
                            RFA# 2762</xref>
                    </li>                    
                    <li>
                        <xref href="../../../Rosetta/DITA-UK/UK22CS/legis-leg.level.dita">2016-02-22 - leg:level id-UK22CS-36415: Added instructions for handling different
                            <sourcexml>leg:level-vrnt[@leveltype]</sourcexml> attribute values to
                            <targetxml>primlaw:level[@leveltype]</targetxml>. [RFA
                            #2760]</xref>
                    </li>
                    <li>
                        <xref href="../../../Rosetta/DITA-UK/UK22CS/legis-leg.officialname.dita">2016-02-22 - leg:officialname id-UK22CS-36416: Added a instruction for handling input scenario
                            <sourcexml>leg:officialname</sourcexml> to
                            <targetxml>legisinfo:officialtitle[@source="editoriallyassigned"]</targetxml>. [RFA
                            #2760]</xref>
                    </li>
                    <li>
                        <xref href="../../../Rosetta/DITA-UK/UK22CS/level.dita">2016-02-22 - level id-UK22CS-36423: Added a note for handling input scenario
                            <sourcexml>level/@leveltype="annotation"</sourcexml> to
                            <targetxml>seclaw:level/@leveltype="unclassified"</targetxml>. [RFA
                            #2760]</xref>
                    </li>
                </ul>
            </p>
        </section>
        <section>
            <title>2016-02-10</title>
            <p> 
                <ul>
                    <li>
                        <xref href="../../../Rosetta/DITA-UK/UK22CS/legis-leg.info.dita">2016-02-10 - leg:info id-UK22CS-36414: Added note for handling the input  scenario
                            <sourcexml>leg:info/note</sourcexml>. RFA [#2754] </xref>
                    </li>
                    <li>
                        <xref href="../../../Rosetta/DITA-UK/UK22CS/legis-leg.sectionlist.dita">2016-02-04 - leg:sectionlist id-UK22CS-36420: Added a note for handling input scenario
                            <sourcexml>leg:sectionlist/toc</sourcexml> to
                            <targetxml>primlaw:level/primlaw:bodytext/toc</targetxml>. [RFA
                            #2751]</xref>
                    </li>
                </ul>
            </p>
        </section>
        <section>
            <title>2016-02-04</title>
            <p> 
                <ul>
                    <li>
                        <xref href="../../../Rosetta/common_newest/Rosetta_footnote-LxAdv-footnote.dita">2016-01-05 - footnotegrp and footnote to footnotegrp and footnote id-CCCC-10322: Added instructions for
                            <sourcexml>footnotegrp</sourcexml> within <sourcexml>frm:div</sourcexml>. To generate
                            <targetxml>form:p/form:text</targetxml> wrapper for target
                            <targetxml>footnotegroup</targetxml>. Immediately affects UK12 but will
                            apply to any stream if the use case occurs. RFA 2653.</xref>
                    </li>
                    <li>
                        <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.doc-heading-LxAdv-dc.title.dita">2015-12-04 - docinfo:doc-heading to dc:title id-CCCC-10292: Added exception for AU Legislative Citator to 
                            drop text Overview Tab for  from conversion.</xref>
                    </li>
                </ul></p>
        </section>
        <section>
            <title>2015-11-26</title>
            <p>Released the CI after the CI Review .</p>
        </section>
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK22CS\Change-Log.dita  -->
	<xsl:message>UK22CS_Change-Log.xsl requires manual development!</xsl:message> 

</xsl:stylesheet>