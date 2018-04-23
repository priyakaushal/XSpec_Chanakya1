<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:ci="http://www.lexis-nexis.com/ci" xmlns:comm="http://www.lexis-nexis.com/glp/comm" xmlns:source_cttr="http://www.lexis-nexis.com/glp/cttr" xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" xmlns:frm="http://www.lexis-nexis.com/glp/frm" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:caseinfo="http://www.lexisnexis.com/xmlschemas/content/legal/case-information/1/" xmlns:cttr="urn:x-lexisnexis:content:citator:sharedservices:1" xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns:decision="http://www.lexisnexis.com/xmlschemas/content/legal/decision/1/" xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" xmlns:form="http://www.lexisnexis.com/xmlschemas/content/shared/form/1/" xmlns:index="urn:x-lexisnexis:content:publicationindex:sharedservices:1" xmlns:legisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/legislation-info/1/" xmlns:lnci="http://www.lexisnexis.com/xmlschemas/content/shared/citations/1/" xmlns:navaid="urn:x-lexisnexis:content:navigationaid:sharedservices:1" xmlns:person="http://www.lexisnexis.com/xmlschemas/content/shared/person/1/" xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" xmlns:primlawhist="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-history/1/" xmlns:primlawinfo="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-info/1/" xmlns:proc="http://www.lexisnexis.com/xmlschemas/content/shared/process-elements/1/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita case ci comm cttr docinfo frm leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="citator-change-log">
  <title>Change Log for Citator</title>
  <body>

    <section>
      <title>cttr 1.29 PROD</title>
      <p>2016-11-16 - SNB:
        <ul>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2016-11-16 - docinfo:assoc-links to doc:related-content id-CCCC-10284: Added to note regarding applying any rules related to 
            <targetxml>@anchoridref</targetxml>, referring specifically to section for "Identifiers to ID Data Type - 
            Handling Pattern Restrictions".</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_endnote-LxAdv-endnote.dita">2016-11-16 - endnote to endnote id-CCCC-10317: Added to note regarding applying any rules related to 
            <targetxml>@anchoridref</targetxml>, referring specifically to section for "Identifiers to ID Data Type - 
            Handling Pattern Restrictions".</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_link_refpt-LxAdv-ref.lnlink-ref.locator_anchoridref.dita">2016-11-16 - link/@refpt to ref:lnlink/ref.locator/@anchoridref id-CCCC-10395: Added to note regarding applying any rules related to 
            <targetxml>@anchoridref</targetxml>, referring specifically to section for "Identifiers to ID Data Type - 
            Handling Pattern Restrictions".</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_lnlink_service_DOCID-LxAdv-ref.lnlink.dita">2016-11-16 - lnlink[@service="DOC-ID" or @service="DOCID"] to ref:lnlink[@service="DOCUMENT"] id-CCCC-10545: Added to note regarding applying any rules related to 
            <targetxml>@anchoridref</targetxml>, referring specifically to section for "Identifiers to ID Data Type - 
            Handling Pattern Restrictions".</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_lnlink_refpt-LxAdv-ref.lnlink.dita">2016-11-16 - lnlink[@refpt][not(@service)] to ref:lnlink id-CCCC-10543: Added to note regarding applying any rules related to 
            <targetxml>@anchoridref</targetxml>, referring specifically to section for "Identifiers to ID Data Type - 
            Handling Pattern Restrictions".</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_lnlink_service_DOCID-LxAdv-ref.crossreference.dita">2016-11-16 - lnlink[@service="DOC-ID" or @service="DOCID"] to ref:crossreference id-CCCC-10544: Added to note regarding applying any rules related to 
            <targetxml>@anchoridref</targetxml>, referring specifically to section for "Identifiers to ID Data Type - 
            Handling Pattern Restrictions".</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2016-11-16 - remotelink to ref:crossreference id-CCCC-10465: Added to note regarding applying any rules related to 
            <targetxml>@anchoridref</targetxml>, referring specifically to section for "Identifiers to ID Data Type - 
            Handling Pattern Restrictions".</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_History_cttr.content.dita">2016-11-07 - cttr:body/cttr:content id-AU20-22282: Modified wording to always create 
            <targetxml>primlawhist:primlawhist/heading/title</targetxml> containing "History" when the source 
            does not contain <sourcexml>cttr:annotations/heading/title</sourcexml>.</xref>
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
      </ul>
      </p>
    </section>
        
        
    <section>
      <title>cttr 1.28 PROD</title>
      <p>2016-10-10 - SNB:
        <ul>
          <li>
            <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_Cases_cttr.annotations-ConsiderationofWholeActorProvision.dita">2016-10-10 - cttr:annotations[@annotationtype="subseqcases"] - Consideration of Whole Act or Provision id-AU20-22270: Changed value of <targetxml>cttr:citingcase/@treatment</targetxml> 
              from a fixed value of "citation" to instead be based upon the value of 
              <targetxml>ref:crossreference/@referencedresourcesentiment</targetxml> determined when 
              <sourcexml>case:citations/case:citetext/ci:cite/ci:content/remotelink/inlineobject</sourcexml> or  
              <sourcexml>cttr:annot/remotelink/inlineobject</sourcexml> exists. If neither exists, a value of 
              "citation" is used. Updated example markup accordingly.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_AU_citator_CasebaseSignal_inlineobject-ChOf-remotelink-LxAdv-ref.crossreference.dita">2016-10-10 - remotelink/inlineobject for Casebase Signal to ref:crossreference id-CCCC-10536: Updated determination of value of 
              <targetxml>ref:crossreference/@referencedresourcesentiment</targetxml> to use 
              the image filename in <sourcexml>remotelink/inlineobject/@filename</sourcexml> when 
              specific treatment text does not exist in <sourcexml>inlineobject/@alttext</sourcexml>. 
              Also added an additional case for scenario where none of the listed values of 
              <sourcexml>inlineobject/@alttext</sourcexml> exist.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.versioninfo-LxAdv-doc.versioninfo-scheme.dita">2016-09-14 - docinfo:versioninfo to doc:versioninfo id-CCCC-10307: Note added for handling the input markup '<targetxml>docinfo:versioninfo@startdate-tbd</targetxml>'.</xref>
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
      <title>cttr 1.27 PROD</title>
      <p>2016-08-16 - RS:
      <ul>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_footnote-LxAdv-footnote.dita">2016-08-08 - footnotegrp and footnote to footnotegrp and footnote id-CCCC-10322: Removing duplicate entry of
            <sourcexml>lilabel/fnr</sourcexml>
          </xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_glp.note_blockquote_p_text_inlineobject-LxAdv-note_bodytext_p_text.dita">2016-08-05 - glp:note id-CCCC-10341: Added Note about xml snippets that
            illustrate image handling. Note summarizes move from Apollo to Blobstore
            application. UK is first LBU to move to Blobstore. </xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_footnote-LxAdv-footnote.dita">2016-08-04 - footnotegrp and footnote to footnotegrp and footnote id-CCCC-10322: Added note for handling
            <sourcexml>lilabel/fnr</sourcexml> Applicable for AU05,
            Incident #6597893</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_PAC_docinfo.doc-id-LxAdv-dcidentifier_lnmetaidentifier-scheme.dita">2016-08-03 - docinfo:doc-id to dc:identifier[@lnmeta:identifier-scheme] id-CCCC-10550: Created the rule to, Check manifest file for
            DPSI value and create new element
            <targetxml>dc:metadata/dc:source[@lnmeta:sourcescheme]</targetxml>
          </xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_p-limited_remotelink-LxAdv-p_text_ref.lnlink.dita">2016-08-03 - p-limited/remotelink to p/text/lnlink id-CCCC-10423: Added Note about xml snippets that illustrate
            image handling. Note summarizes move from Apollo to Blobstore application. UK is
            first LBU to move to Blobstore.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2016-08-03 - remotelink to ref:crossreference id-CCCC-10465: Added Note about xml snippets that illustrate
            image handling. Note summarizes move from Apollo to Blobstore application. UK is
            first LBU to move to Blobstore.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_glp.note-Chof-figure-LxAdv-figure.dita">2016-08-03 - (Legislation &amp; Regulation) figure/glp:note to figure id-CCCC-10330: Added Note about xml snippets that illustrate
            image handling. Note summarizes move from Apollo to Blobstore application. UK is
            first LBU to move to Blobstore.</xref>
        </li>
      </ul>
      </p>
    </section>
    <section>
      <title>cttr 1.26 PROD</title>
      <p>2016-08-01 - SEP: 
		  <ul>
          <li>
            <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Citator_Body-Legislative.dita">2016-08-01 - Body for Legislative Citator Docs id-AU20-22212: Modified such that 
              <sourcexml>note[@notetype="summary"][@id="SCAP5" or @id="SCAP6" or @id="SCAI5" or @id="SCAI6"]</sourcexml> only results in output for 
              CASES source documents (<sourcexml>/CITATORDOC/docinfo/docinfo:doc-id</sourcexml> contains the text “CASES” (case-insensitive)).</xref>
          </li>
		  </ul>
      </p>
    </section>

    <section>
      <title>cttr 1.25 PROD</title>
      <p>2016-07-14 - SNB: 
        <ul>
          <li>
            <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_Overview_cttr.annotations-Penalty.dita">2016-07-14 - cttr:body/cttr:content/cttr:annotations - Penalty id-AU20-22248: Changes for NZ Legislation Citator: Separated mapping instructions to separate AU
              instructions from NZ instructions (based upon value of <sourcexml>cttr:annotations/@id</sourcexml>). Corrected/clarified 
              the existing AU instructions that map to <targetxml>ref:relatedcontent[@contenttype="penalty"][@xml:id="refsection-OP5"]</targetxml>, 
              but note that the conversion code was working correctly and probably does not need modified for this case. Completely restructured 
              mapping instructions for NZ (where <sourcexml>cttr:annotations/[@id="OP5NZ"]</sourcexml>) to use new target markup within 
              <targetxml>cttr:violationpenalty</targetxml>. Modified markup example #2 to reflect the new mappings.</xref>
          </li>
        </ul>
      </p>
    </section>

    <section>
      <title>cttr 1.24 PROD</title>
      <p>2016-07-06 - SNB: 
        <ul>
          <li>
            <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Citator_Introduction.dita">2016-07-06 - Introduction id-AU20-22215: Added introduction paragraph and updated document title to indicate 
              that New Zealand legislative citator content is also converted using this instruction.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_Overview_cttr.annotations-EnablingLegislation.dita">2016-07-06 - cttr:body/cttr:content/cttr:annotations - Enabling Legislation: Changes for NZ legislation citator content: 
              added this new section for Enabling Legislation.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_Overview_cttr.annotations-UniformEquivalents.dita">2016-07-06 - cttr:body/cttr:content/cttr:annotations - Uniform Equivalents and International Equivalentsid-AU20-22253: Changed section title to indicate 
              that New Zealand legislative citator content is also converted using this instruction. 
              Added support for <targetxml>ref:anchor</targetxml> for international equivalents. Added 
              an NZ international equivalents example.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_Overview_cttr.annotations-Summary.dita">2016-07-06 - cttr:body/cttr:content/cttr:annotations - Summary id-AU20-22252: Changes for NZ Legislation Citator: added note 
              to indicate that entire section output is suppressed if no non-whitespace content exists in data 
              other than section and titles.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_Overview_cttr.annotations-MoreLinks.dita">2016-07-06 - cttr:body/cttr:content/cttr:annotations - More Links id-AU20-22247: Changes for NZ Legislation Citator: added note 
              to indicate that entire section output is suppressed if no non-whitespace content exists in data 
              other than section and titles.</xref>
          </li>
        </ul>
      </p>
    </section>
    
    
    <section>
      <title>cttr 1.23 PROD</title>
      <p>2016-06-15 - SNB: 
        <ul>
            <li>
              <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Citator_Body-Legislative.dita">2016-06-15 - Body for Legislative Citator Docs id-AU20-22212: Added links to the new sections for <sourcexml>lnlink</sourcexml> 
                mapping for convenience (no mapping change here).</xref>
            </li>
            <li>
              <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_Analytics_cttr.annotations-annotgroupLPG.dita">2016-06-13 - For cttr:annotations[@annotgroup="LPG"] id-AU20-22264: Added instruction to add attribute  
                <targetxml>@sectiontype="practicalguidance"</targetxml> to 
                <targetxml>cttr:refsection/@sectiontype="practicalguidance"</targetxml> and added to 
                the target markup example.</xref>
            </li>
        </ul>
      </p>
    </section>
    
    <section>
      <title>cttr 1.22 PROD</title>
      <p>2016-06-10 - SNB: 
        <ul>
          <li>
            <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_Overview_cttr.annotations-WarningBillLinks.dita">2016-06-09 - cttr:body/cttr:content/cttr:annotations - Warning/Bill Links id-AU20-22255: Modified logic for identifiying provision bills/warnings to solve 
              webteam 326604 issue. Detailed logic on contruction of Rosetta source markup received from LBU and this section 
              was modified accordingly to look for <sourcexml>cttr:annotations/heading/note/h</sourcexml> contains <sourcexml>"@id="OP15A"</sourcexml> 
              instead of previous <sourcexml>cttr:annotations/heading/note</sourcexml> contains <sourcexml>@id="OP15"</sourcexml>. 
              Corresponding changes to the logic for suppression of entire section, and for determination of 
              <targetxml>primlawinfo:primlawinfo/@xml:id</targetxml> value. 
              Updated Example 2 target markup to have correct structure based upon new LBU info.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_History_cttr.annot-heading-with-sectionNumber.dita">2016-06-09 - /cttr:annot/heading/title contains section number AND /cttr:annot/heading/subtitle contains words like 'Amended' or a text like '4' or another number id-AU20-22281: Removed entire section. The mapping instructions contained 
              in this section have been modified, 
              but are now part of other history tab sections like cttr:annotations[@annotgrp="prov-al"] (id-AU20-22285) and 
              cttr:annotations[@annotgrp="prov-am"] (id-AU20-22286).</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_Overview_cttr.annotations-ReferencesRibbon.dita">2016-06-07 - cttr:body/cttr:content/cttr:annotations - References Ribbon id-AU20-22249: Added attribute <targetxml>index:entry/@entrytype="practicalguidance"</targetxml> 
              for the Practical Guidance entry.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_History_prov-am.dita">2016-06-07 - cttr:annotations[@annotgrp="prov-am"] id-AU20-22286: Significant restructuring of conversion mappings for changes 
              to support new lines and groupings information through use of new 
              <targetxml>primlawhist:histitemdiv/@divtype="additionalinfo"</targetxml>. 
              Modified markup example to show the new mapping (only difference is the 
              <targetxml>primlawhist:histitemdiv/@divtype="additionalinfo"</targetxml> inside the 2nd 
              <targetxml>primlawhist:histitem</targetxml>).</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_History_prov-al.dita">2016-06-07 - cttr:annotations[@annotgrp="prov-al"] id-AU20-22285: Significant restructuring of conversion mappings to support new LBU 
              source Rosetta XML markup structure. Changes to support new lines and groupings of act information with new 
              structures. Added a new markup example to show the mappings, and made minor change to the existing example and 
              renamed it.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_lnlink_service_DOCID-LxAdv-ref.lnlink.dita">2016-06-07 - lnlink[@service="DOC-ID" or @service="DOCID"] to ref:lnlink[@service="DOCUMENT"] id-CCCC-10545: Moved standard lnlink mapping from "Standardization of 
              Output for lnlink Conversion" section to new General Markup sections, and rewrote the mapping instructions 
              to be consistent with the new AU20 Rosetta XML markup structure.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_lnlink_refpt-LxAdv-ref.lnlink.dita">2016-06-07 - lnlink[@refpt][not(@service)] to ref:lnlink id-CCCC-10543: Moved standard lnlink mapping from "Standardization of 
              Output for lnlink Conversion" to new General Markup sections, and rewrote the mapping instructions 
              to be consistent with the new AU20 Rosetta XML markup structure.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_lnlink_service_DOCID-LxAdv-ref.crossreference.dita">2016-06-07 - lnlink[@service="DOC-ID" or @service="DOCID"] to ref:crossreference id-CCCC-10544: Moved standard lnlink mapping from "Standardization of 
              Output for lnlink Conversion" to new General Markup sections, and rewrote the mapping instructions 
              to be consistent with the new AU20 Rosetta XML markup structure.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Citator_Body-Legislative.dita">2016-06-03 - Body for Legislative Citator Docs id-AU20-22212: Changed all mapping instructions for 
              <sourcexml>lnlink[@service="DOC-ID" or @service="DOCID"]</sourcexml> throughout document to reference 
              the new General Markup section for this conversion. This change was made in conjunction with LBU Rosetta 
              source XML markup changes to make all source lnlink[@service="DOC-ID"] structure consistent in 
              all documents. Modified examples to match new lnlink structures.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Citator_Body-Legislative.dita">2016-06-03 - Body for Legislative Citator Docs id-AU20-22212: Modified section for Standardization of 
              Output for lnlink Conversion to clarify wording some, and moved the entire set of 
              mapping instructions to the General Markup section of the document.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_Overview_cttr.annotations-CorrespondingForm.dita">2016-06-03 - cttr:annotations[@id="OP4"] - Corresponding Form id-AU20-22240: Modified target markup example to match new lnlink structures 
              and instructions.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_Overview_cttr.annotations-Replacing.dita">2016-06-03 - cttr:body/cttr:content/cttr:annotations - Replacing id-AU20-22250: Fixed typo in target markup example to contain 
              @service="DOCUMENT" (was "URL").</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_Overview_cttr.annotations-SubordinateLegislation.dita">2016-06-03 - cttr:body/cttr:content/cttr:annotations - Subordinate Legislation id-AU20-22251: Corrected target markup example to match new lnlink structures 
              and instructions.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_Overview_cttr.annotations-Penalty.dita">2016-06-03 - cttr:body/cttr:content/cttr:annotations - Penalty id-AU20-22248: Example content does not look correct and lnlink source is incorrect, so 
              added Notes in examples to indicate this, but otherwise left them as-is.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_Overview_cttr.annotations-LNPracticalGuidance.dita">2016-06-03 - cttr:body/cttr:content/cttr:annotations - LexisNexis Practical Guidance id-AU20-22246: Changed all mapping instructions for 
              <sourcexml>lnlink[@service="DOC-ID" or @service="DOCID"]</sourcexml> throughout document to reference 
              the new General Markup section for this conversion. This change was made in conjunction with LBU Rosetta 
              source XML markup changes to make all source lnlink[@service="DOC-ID"] structure consistent in 
              all documents. Modified both source and target markup examples to match new lnlink structures.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_Overview_cttr.annotations-WarningBillLinks.dita">2016-06-03 - cttr:body/cttr:content/cttr:annotations - Warning/Bill Links id-AU20-22255: Modified Example 1 source markup example to match new lnlink structures 
              and instructions.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_Overview_cttr.annotations-ActName.dita">2016-06-03 - cttr:body/cttr:content/cttr:annotations - Act Name id-AU20-22237: Removed <targetxml>[@service="DOCUMENT"]</targetxml> from 
              <sourcexml>note/p/text/lnlink</sourcexml> mapping, and changed to indicate that standard mapping rules should 
              be used.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_Overview_cttr.annotations-MoreLinks.dita">2016-06-03 - cttr:body/cttr:content/cttr:annotations - More Links id-AU20-22247: Removed <targetxml>[@service="DOCUMENT"]</targetxml> from 
              <sourcexml>lnlink</sourcexml> mapping, and changed to indicate that standard mapping rules should 
              be used.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_Analytics_cttr.annotations-AnnotatedLegislation.dita">2016-06-03 - cttr:content/cttr:annotations with Title "Annotated Legislation" id-AU20-22257: Corrected target markup example to have 
              <targetxml>ref:crossreference/@crossreferencetype="seeAlso"</targetxml> and 
              <targetxml>ref:locator/@anchortype="global"</targetxml>.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_Analytics_cttr.annotations-annotgroupHLA.dita">2016-06-03 - cttr:content/cttr:annotations[@annotgroup="HLA"] id-AU20-22261: Corrected target markup example to have 
              <targetxml>ref:crossreference/@crossreferencetype="seeAlso"</targetxml> and 
              <targetxml>ref:locator/@anchortype="global"</targetxml>.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_Analytics_cttr.annotations-annotgroupCOM.dita">2016-06-03 - cttr:annotations[@annotgroup="COM"] id-AU20-22259: Corrected markup example 2 to have valid 
              <sourcexml>lnlink</sourcexml> source markup and correct <targetxml>ref:crossreference</targetxml> markup.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_Analytics_cttr.annotations-annotgroupLTS.dita">2016-06-03 - For cttr:annotations[@annotgroup="LTS"] id-AU20-22265: Corrected target markup example to have 
              <targetxml>ref:crossreference/@crossreferencetype="seeAlso"</targetxml> and 
              <targetxml>ref:locator/@anchortype="global"</targetxml>.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_Analytics_cttr.annotations-annotgroupsubseqarticles.dita">2016-06-03 - For cttr:annotations[@annotationtype="subseqarticles"] and @annotgroup not specified id-AU20-22266: Corrected target markup example to have 
              <targetxml>ref:crossreference/@crossreferencetype="seeAlso"</targetxml> and 
              <targetxml>ref:locator/@anchortype="global"</targetxml>.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_Analytics_cttr.annotations-annotgroupBOO.dita">2016-06-03 - For cttr:annotations[@annotgroup="BOO"] id-AU20-22258: Corrected target markup examples to have 
              <targetxml>ref:crossreference/@crossreferencetype="seeAlso"</targetxml> and 
              <targetxml>ref:locator/@anchortype="global"</targetxml>.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_Analytics_cttr.annotations-annotgroupDICT.dita">2016-06-03 - For cttr:annotations[@annotgroup="DICT"] id-AU20-22260: Corrected target markup example to have 
              <targetxml>ref:crossreference/@crossreferencetype="seeAlso"</targetxml> and 
              <targetxml>ref:locator/@anchortype="global"</targetxml>.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_Analytics_cttr.annotations-annotgroupjumps.dita">2016-06-03 - cttr:annotations/[@annotgroup="jumps"] id-AU20-22262: Removed instruction mentioning Mapping of <sourcexml>lnlink</sourcexml>; 
              this mapping should use the general mappings for all analytical content in cttr:body/cttr:content section.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_History_amendinglegislation.dita">2016-06-03 - Source cttr:annotations[@id="HI15"] OR cttr:annotations[@id="HP4"] id-AU20-22278: Corrected Example 3 source markup example 
              <sourcexml>lnlink</sourcexml> element to have 
              <sourcexml>param</sourcexml> elements to define the DOC-ID.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Citator_Body-Legislative.dita">2016-05-25 - Body for Legislative Citator Docs id-AU20-22212: Removed erroneous XPATH text that was the paragraph immediately 
              before "<sourcexml>note/p/text/lnlink</sourcexml> maps to..."</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_History_prov-am.dita">2016-05-25 - cttr:annotations[@annotgrp="prov-am"] id-AU20-22286: Clarified test for the text "commence" and "amend" in  
              <sourcexml>cttr:annot/heading/title</sourcexml> or <sourcexml>cttr:annot/heading/subtitle</sourcexml> 
              to make it clear that the text can be any part of the source text. Added a space at the end of 
              the text in the created <targetxml>primlawhist:histitemdiv[@divtype="heading"]/textitem</targetxml> when 
              the source <sourcexml>cttr:annot/heading/title</sourcexml> is followed by a sibling 
              <sourcexml>note/p/text</sourcexml>.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_refpt-Chof-p_text-LxAdv-p_ref.anchor.dita">2016-04-28 - refpt child of p/text to p/ref:anchor id-CCCC-10456: Added one more source and target example.</xref>
          </li>
          <li>
            <p>2016-04-25 - Metadata: Removed suppression of <sourcexml>docinfo:custom-metafields</sourcexml>, which is used for 
              AU20 legislation citator content.</p>
          </li>
        </ul>
      </p>
    </section>
                   
    <section>
      <title>cttr 1.21 PROD</title>
      <p>2016-04-21 - SNB:
        <ul>
          <li>
            <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Citator_Body-Legislative.dita">2016-04-21 - Body for Legislative Citator Docs id-AU20-22212: Added a clarification that all of the mappings for legislation info are mapped 
              to the same <targetxml>cttr:legisinfo/primlawinfo:primlawinfo/legisinfo:legisinfo</targetxml> element. 
              Changed mapping of <sourcexml>/CITATORDOC/docinfo/docinfo:custom-metafields/docinfo:custom-metafield</sourcexml> 
              to map any source metafields that start with "lbu-". Previously was mapping only three specific items. This change supports new metafields that
              LBU is adding to the source documents, as well as metafields that LBU will add in the future. Also mapped the source document legislation type 
              custom-metafields to <targetxml>legisinfo:legisinfo/legisinfo:billinfo/legisinfo:legistype</targetxml>. Adding instruction for 
              <sourcexml>leg:juris</sourcexml> element being added by LBU to map it to <targetxml>cttr:legisinfo</targetxml>, as well as a whole section 
              for mapping it to <targetxml>dc:metadata/dc:coverage</targetxml> (logic extracted from the AU04 legis CI).</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_Overview_cttr.annotations-FormerTitle.dita">2016-04-21 - cttr:body/cttr:content/cttr:annotations - Former Title id-AU20-22243: Changed mapping to completely suppress output when only whitespace  
              exists within descendant text nodes of descendant <sourcexml>p</sourcexml> elements.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_Overview_cttr.annotations-Replacing.dita">2016-04-21 - cttr:body/cttr:content/cttr:annotations - Replacing id-AU20-22250: Changed mapping to completely suppress output when only whitespace  
              exists within descendant text nodes.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_Overview_cttr.annotations-SubordinateLegislation.dita">2016-04-21 - cttr:body/cttr:content/cttr:annotations - Subordinate Legislation id-AU20-22251: Changed mapping to completely suppress output when only whitespace  
              exists within descendant text nodes.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_Overview_cttr.annotations-Penalty.dita">2016-04-21 - cttr:body/cttr:content/cttr:annotations - Penalty id-AU20-22248: Changed mapping to completely suppress output when only whitespace  
              exists within descendant text nodes.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_Overview_cttr.annotations-UniformEquivalents.dita">2016-04-21 - cttr:body/cttr:content/cttr:annotations - Uniform Equivalents id-AU20-22253: Changed mapping to completely suppress output when only whitespace  
              exists within descendant text nodes.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_Overview_cttr.annotations-WarningBillLinks.dita">2016-04-21 - cttr:body/cttr:content/cttr:annotations - Warning/Bill Links id-AU20-22255: Changed mapping to completely suppress output when only whitespace or the text 
              "A Bill impacts this Act" exist within descendant <sourcexml>p/text</sourcexml> elements.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_Overview_cttr.annotations-EditorsNote.dita">2016-04-21 - cttr:body/cttr:content/cttr:annotations - Editors Note id-AU20-22241: Changed mapping to completely suppress output when only whitespace  
              exists within descendant text nodes.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_Overview_cttr.annotations-ActName.dita">2016-04-21 - cttr:body/cttr:content/cttr:annotations - Act Name id-AU20-22237: Added exception for when <sourcexml>heading/note/h</sourcexml> 
              contains the text "ActName" (case insensitive), insert a space between "Act" and "Name" in the mapped
              <targetxml>heading/title</targetxml> text.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_Overview_cttr.annotations-LatestCases.dita">2016-04-21 - cttr:body/cttr:content/cttr:annotations - Latest Cases id-AU20-22245: Changed mapping to completely suppress output when only whitespace  
              exists within descendant text nodes within  <sourcexml>cttr:annotations/cttr:annotsummary/table</sourcexml> and 
              <sourcexml>cttr:annotations/cttr:annot</sourcexml>.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Citator_Body-Legislative.dita">2016-04-15 - Body for Legislative Citator Docs id-AU20-22212: Modified such that 
              <sourcexml>note[@notetype="summary"][@id="SCAP5" or @id="SCAP6" or @id="SCAI5" or @id="SCAI6"]</sourcexml> only results in output for 
              overview source documents (<sourcexml>/CITATORDOC/docinfo/docinfo:doc-id</sourcexml> contains the text “OVERVIEW” (case-insensitive)).</xref>
          </li>
        </ul>
      </p>
    </section>

    <section>
      <title>cttr 1.20 PROD</title>
      <p>2016-03-22 - SNB:
        <ul>
        <li>
               <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_Overview_cttr.annotations-WarningBillLinks.dita">2016-03-22 - cttr:body/cttr:content/cttr:annotations - Warning/Bill Links id-AU20-22255: Added <sourcexml>cttr:annotations</sourcexml> contains 
            <sourcexml>"@id="OP15"</sourcexml> as an entry condition for this section.</xref>
        </li>
        <li>
               <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_Overview_cttr.annotations-ExpiryInformation.dita">2016-03-22 - cttr:body/cttr:content/cttr:annotations[@id="OI17"] - Expiry Information id-AU20-22242: Added clarification that no target markup should be created if 
            <sourcexml>cttr:annotations[id="OI17"]</sourcexml> has no descendant non-whitespace-text content.</xref>
        </li>
        <li>
               <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_Overview_cttr.annotations-EditorsNote.dita">2016-03-22 - cttr:body/cttr:content/cttr:annotations - Editors Note id-AU20-22241: Added clarification that no <targetxml>bodytext</targetxml> should be created if 
            <sourcexml>note</sourcexml> does not contain any descendant non-whitespace-text content.</xref>
        </li>
        <li>
               <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_Analytics_cttr.content.dita">2016-03-22 - cttr:body/cttr:content: Added <sourcexml>/cttr:annot/comm:citations/h/lnlink</sourcexml> mapping 
            (was previously just <sourcexml>/cttr:annot/comm:citations/h/link</sourcexml>, and added note that the mappings 
            to <targetxml>ref:crossreference</targetxml> may have some non-standard mappings specified in the source/target 
            examples for each specific type of analytical materials. Also added clarification that <targetxml>cttr:refitem</targetxml> 
            should not be created when <sourcexml>cttr:annot</sourcexml> does not contain <sourcexml>@signal="citation"</sourcexml>, or 
            if <sourcexml>cttr:annot[@signal="citation"]/comm:citations</sourcexml> does not contain any descendant 
            non-whitespace-text content.</xref>
        </li>
        <li>
               <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_History_HI1-History.dita">2016-03-22 - cttr:content/cttr:annotations/heading/title containing History - with cttr:annotsummary/table: Added clarification that <targetxml>primlawhist:histitem</targetxml> 
            should not be created when <sourcexml>table/tgroup/tbody</sourcexml> does not contain any descendant 
            non-whitespace-text content.</xref>
        </li>
        <li>
               <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_History_assent.dita">2016-03-22 - Primlaw History - Assent: Changed mapping such that this section applies 
            when <sourcexml>cttr:annotations/heading/title/text()</sourcexml> = "Assent". Previously 
            the entry condition for this section required <sourcexml>cttr:annotations/heading/note[id="HI4"]</sourcexml>, 
            but at least some LBU source documents do not contain this <sourcexml>note[id="HI4"]</sourcexml> 
            for this assent content.</xref>
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
      <title>cttr 1.19 PROD</title>
      <ul>
        <li>
               <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_Overview_cttr.annotations-WarningBillLinks.dita">2016-03-01 - cttr:body/cttr:content/cttr:annotations - Warning/Bill Links id-AU20-22255: Changed logic for determining value of 
            <sourcexml>primlawinfo:primlawinfo/@xml:id</sourcexml> to use explicit values instead of inherting the value 
            of <sourcexml>cttr:annotations/@id</sourcexml>. This change solves an issue found during conversion testing 
            where a different source markup structure was resulting in creation of two <sourcexml>@xml:id</sourcexml> attributes 
            within different elements.</xref>
        </li>
        <li>
               <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_Overview_cttr.annotations-LatestCases.dita">2016-03-01 - cttr:body/cttr:content/cttr:annotations - Latest Cases id-AU20-22245: Modifications for WebTeam #321704. Changed logic to create title 
            to use additional source XPATHs for the source title. Note that it was intentional to structure logic rather than 
            use an fixed title to support changes in the source title markup (e.g. use of emphasis, links, etc). Added mappings 
            for <sourcexml>cttr:annotations/cttr:annotsummary/table</sourcexml> (found in some current LBU source documents), 
            and enclosed mappings for <sourcexml>cttr:annotations/cttr:annot</sourcexml> 
            (already in this CI) inside of a separate bulleted list to separate it from the table mappings. Added example for 
            <sourcexml>cttr:annotations/cttr:annotsummary/table</sourcexml> scenario.</xref>
        </li>
        <li>
               <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_History_commencement.dita">2016-03-01 - Primlaw History - Commencement Information: Added support for <sourcexml>table/p-limited</sourcexml> in 
            source document to solve an issue with source document variations encountered during conversion testing.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_footnote-LxAdv-footnote.dita">2016-02-29 - footnotegrp and footnote to footnotegrp and footnote id-CCCC-10322: Added note for handling
            <sourcexml>@type="editorial"</sourcexml> attribute. Applicable for UK22CS,
            RFA# 2762</xref>
        </li>
      </ul>
    </section>

    <section>
      <title>cttr 1.18 PROD</title>
      <ul>
        <li>
          <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Citator_Body-Legislative.dita">2016-02-22 - Body for Legislative Citator Docs id-AU20-22212: Added clarification that the target 
            <targetxml>/cttr:citator/cttr:body/cttr:refs/cttr:refssummary[@xml:id="refssummary-document-totals"][@summarytype="document-totals-summary"]</targetxml> 
            should be in its own <targetxml>cttr:refs</targetxml> element. Also modified logic for determining the text value of 
            <targetxml>cttr:refsummaryitem/@documenttype</targetxml> to ensure that value was always either "Cases" or "Analytical_Materials" if 
            the source markup was any variation of the expected values to support fixed values for presentation stylesheet parsing. Testing 
            revealed that the source markup values were varying some, which was a problem for presenation parsing.</xref>
        </li>
        <li>
               <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_Overview_cttr.annotations-CaseActivityByProvision.dita">2016-02-20 - cttr:body/cttr:content/cttr:annotations - Case Activity By Provision id-AU20-22239: Changed target markup for source document 
            <sourcexml>entry[@colname="prov-count"]</sourcexml> to be <targetxml>ref:relatedcontentdescription/p/text</targetxml> 
            instead of being inserted into the <targetxml>ref:related-content-link</targetxml> element, and removed all 
            non-breaking spaces from the target markup. Updated target markup exampls accordingly. Note that in addition to 
            the change in target markup XPATH/structure, the target example 
            <targetxml>ref:lnlink/ref:locator/ref:locator-key/ref:key-value/@value</targetxml> values were incorrect, 
            and are now corrected.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Citator_Body-Legislative.dita">2016-02-16 - Body for Legislative Citator Docs id-AU20-22212: Modified section for Standardization of 
            Output for lnlink Conversion to correctly prepend a source document dpsi value before the 
            doc-id. Note that more variations of <sourcexml>lnlink</sourcexml> descendants may be found in 
            the future, but until more variations are known, only instuctions for currently known variations is 
            included.</xref>
        </li>
        <li>
               <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_Overview_cttr.annotations-MoreLinks.dita">2016-02-16 - cttr:body/cttr:content/cttr:annotations - More Links id-AU20-22247: Modified More Links conversion to support broader variations 
            in source document markup to solve webteam issue. Changed from specific XPATHs for location 
            of text containing "List of Provisions", "Defined Terms", or "Government Website" to instead 
            convert any descendent of <sourcexml>cttr:annotations/heading</sourcexml> containing a descendant
            <sourcexml>lnlink/marker</sourcexml> or <sourcexml>remotelink</sourcexml> with one of those text 
            strings.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2016-02-05 - remotelink to ref:crossreference id-CCCC-10465: Added note and example when
            <sourcexml>remotelink</sourcexml> is a child of <sourcexml>emph</sourcexml>. Applicable
            on NZ17CC, Webstar: 319232 and 318735.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Citator_Body-Legislative.dita">2016-01-25 - Body for Legislative Citator Docs id-AU20-22212: Created this new section for "p/text/inlineobject Not Following an Instrument Name", 
            and added instruction for suppression of <sourcexml>p/text/inlineobject</sourcexml> 
            or <sourcexml>p/inlineobject</sourcexml> that does not follow a <sourcexml>p/text</sourcexml> with an 
            instrument name such as "Act No 2 of 1995". Note that this instruction is also provided in the section for 
            "cttr:body/cttr:content/cttr:annotations - Act Name" for clarity because that section also contains mapping instructions when the 
            source markup *does* follow an instrument name.</xref>
        </li>
        <li>
               <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_Overview_cttr.annotations-ActName.dita">2016-01-25 - cttr:body/cttr:content/cttr:annotations - Act Name id-AU20-22237: Add instruction for suppression of <sourcexml>p/text/inlineobject</sourcexml> 
            or <sourcexml>p/inlineobject</sourcexml> that does not follow a <sourcexml>p/text</sourcexml> with an 
            instrument name such as "Act No 2 of 1995".</xref>
        </li>
        <li>
               <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_Overview_cttr.annotations-ExpiryInformation.dita">2016-01-22 - cttr:body/cttr:content/cttr:annotations[@id="OI17"] - Expiry Information id-AU20-22242: Removed erroneous text at top of this section 
            (primlawinfo:primlawinfo/legisinfo:legisinfo/legisinfo:statusgroup/@statusgroupcode).</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Citator_Introduction.dita">2016-01-21 - Introduction id-AU20-22215: Clarified text describing mapping for 
            <sourcexml>docinfo:custom-metafields/docinfo:custom-metafield[@name="lbu-publish-timestamp"]</sourcexml> 
            (was previously missing the source element in the description).</xref>
        </li>
      </ul>
    </section>

    <section>
      <title>cttr 1.17 PROD</title>
      <ul>
        <li>
          <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Citator_Body-Legislative.dita">2016-01-13 - Body for Legislative Citator Docs id-AU20-22212: Removed suppression of 
            <sourcexml>note[@notetype="summary"][@id="SCAP5" or @id="SCAP6" or @id="SCAI5" or @id="SCAI6"]</sourcexml>, 
            and recreated this mapping in it's own section below. Corrected formatting to add bullets to the last few mapping 
            items.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Citator_Body-Legislative.dita">2016-01-13 - Body for Legislative Citator Docs id-AU20-22212: Removed suppression of 
            <sourcexml>note[@notetype="summary"][@id="SCAP5" or @id="SCAP6" or @id="SCAI5" or @id="SCAI6"]</sourcexml>, 
            and recreated this mapping in its own section.</xref>
        </li>
        <li>
               <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_Overview_cttr.annotations-ActName.dita">2016-01-13 - cttr:body/cttr:content/cttr:annotations - Act Name id-AU20-22237: Changed titles of source markup examples to 
            remove "@id="OP14" since that is no longer part of the test condition for this section. Changed target of 
            <sourcexml>heading/note/h</sourcexml> to be <targetxml>heading/title</targetxml> instead of 
            <targetxml>primlawhist:histitemm/textitem</targetxml>, to be consistent with other primlaw history, per 
            presentation team request.</xref>
        </li>
        <li>
               <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_Overview_cttr.annotations-ReferencesRibbon.dita">2016-01-13 - cttr:body/cttr:content/cttr:annotations - References Ribbon id-AU20-22249: Changed target markup for <sourcexml>heading/title</sourcexml>  
            and <sourcexml>cttr:annotations/cttr:annotsummary/@display-name</sourcexml> to be 
            <targetxml>title</targetxml> instead of <targetxml>heading/title</targetxml>. Corrected typo: changed 
            <targetxml>@anchoridref="ref-journals-newsletters-bulletins"</targetxml> to 
            <targetxml>@anchoridref="ref-journals-newsletters-bulletins"</targetxml>
          </xref>
        </li>
        <li>
               <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_Overview_cttr.annotations-CaseActivityByProvision.dita">2016-01-13 - cttr:body/cttr:content/cttr:annotations - Case Activity By Provision id-AU20-22239: Changed separating spaces between the provision label and 
            number of cases to be non-breaking space XML character entities so that they would be preserved by 
            stylesheets. Updated target example markup accordingly.</xref>
        </li>
        <li>
               <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_Overview_cttr.annotations-LatestCases.dita">2016-01-13 - cttr:body/cttr:content/cttr:annotations - Latest Cases id-AU20-22245: Added mapping of casebase signals; mapped  
            <sourcexml>remotelink/inlineobject</sourcexml> 
            within <sourcexml>ci:content</sourcexml> to "pull it up" in the target document to be 
            <targetxml>ref:relatedcontentitem/ref:crossreference</targetxml>. Added mapping of 
            casebase signals in <sourcexml>cttr:annot/remotelink/inlineobject</sourcexml>. 
            Updated target markup example accordingly.</xref>
        </li>
        <li>
               <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_Overview_cttr.annotations-ViewAllcases.dita">2016-01-13 - cttr:annotations/heading/lnlink/marker/text()="View all cases" id-AU20-22254: Changed to suppress <sourcexml>cttr:annotations/heading/lnlink</sourcexml> 
            and instead manually create the link to the cases section (the anchorid for cases is hard-coded in this 
            CI.</xref>
        </li>
        <li>
               <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_Analytics_cttr.content.dita">2016-01-13 - cttr:body/cttr:content: Added creation of 
            <targetxml>ref:anchor[@id="ref-analytical"]</targetxml>; previously it was expected that the HPCC 
            stitching process was creating an anchor, but it is now know that HPCC will not. 
            Updated target markup example accordingly, and clarified markup example titles.</xref>
        </li>
        <li>
               <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_Cases_cttr.annotations-ConsiderationofWholeActorProvision.dita">2016-01-13 - cttr:annotations[@annotationtype="subseqcases"] - Consideration of Whole Act or Provision: Changed mapping of <sourcexml>remotelink/inlineobject</sourcexml> 
            within <sourcexml>ci:content</sourcexml> to "pull it up" in the target document to be the last child of 
            the citation's ancestor <targetxml>cttr:citingcase</targetxml> element. Added mapping for 
            <sourcexml>cttr:annot/remotelink/inlineobject</sourcexml>. Updated target markup example 
            accordingly.</xref>
        </li>
        <li>
               <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_History_assent.dita">2016-01-13 - Primlaw History - Assent: Changed mapping to create 
            <targetxml>primlawhist:histgrp[@xml:id="assent-HI4"][@grptype="assent"]</targetxml> 
            within the already existing <targetxml>cttr:history/primlawhist:primlawhist</targetxml> 
            element instead of creating a new <targetxml>primlawhist:primlawhist</targetxml> element. 
            Moved the target of <sourcexml>cttr:annotations/heading/title</sourcexml> to be inside 
            <targetxml>primlawhist:histgrp</targetxml> instead of inside the 
            <targetxml>primlawhist:primlawhist</targetxml> parent. Added creation of 
            <targetxml>ref:anchor[@id="ref-assent"]</targetxml>. Updated target markup example 
            accordingly.</xref>
        </li>
        <li>
               <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_History_commencement.dita">2016-01-13 - Primlaw History - Commencement Information: Changed mapping to create 
            <targetxml>primlawhist:histgrp[@xml:id="commencement"][@grptype="commencement"]</targetxml> 
            within the already existing <targetxml>cttr:history/primlawhist:primlawhist</targetxml> 
            element instead of creating a new <targetxml>primlawhist:primlawhist</targetxml> element. 
            Changed error in the title mapping; changed to be mapped from 
            <sourcexml>cttr:annotsummary[@id="commencement"]/table/title</sourcexml> instead of 
            <sourcexml>cttr:annotations/heading/title</sourcexml> because sampe source documents show 
            it there, and <sourcexml>cttr:annotations/heading/title</sourcexml> contains other data. 
            If title is not in this new XPATH, a title is created rather than converted. Also               
            moved the target title to be inside <targetxml>primlawhist:histgrp</targetxml> instead of inside the 
            <targetxml>primlawhist:primlawhist</targetxml> parent. Added creation of 
            <targetxml>ref:anchor[@id="ref-commencement"]</targetxml>. Updated target markup example 
            accordingly.</xref>
        </li>
        <li>
               <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_History_amendinglegislation.dita">2016-01-13 - Source cttr:annotations[@id="HI15"] OR cttr:annotations[@id="HP4"]: Changed mapping to create 
            <targetxml>primlawhist:histgrp[@grptype="amending"]</targetxml> 
            within the already existing <targetxml>cttr:history/primlawhist:primlawhist</targetxml> 
            element instead of creating a new <targetxml>primlawhist:primlawhist</targetxml> element. 
            Moved the target of <sourcexml>cttr:annotations/heading/title</sourcexml> to be inside 
            <targetxml>primlawhist:histgrp</targetxml> instead of inside the 
            <targetxml>primlawhist:primlawhist</targetxml> parent. Updated target markup example 
            accordingly.</xref>
        </li>
        <li>
               <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_History_prov-am.dita">2016-01-13 - cttr:annotations[@annotgrp="prov-am"]: Added creation of 
            <targetxml>ref:anchor[@id="ref-provision-amendments"]</targetxml>. Changed determination of 
            <targetxml>primlawhist:histitemdiv/@status</targetxml> to be dependent upon the text inside 
            <sourcexml>cttr:annot/heading/title</sourcexml> and <sourcexml>cttr:annot/heading/subtitle</sourcexml>. 
            Updated target markup example accordingly.</xref>
        </li>
        <li>
               <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_History_prov-al.dita">2016-01-13 - cttr:annotations[@annotgrp="prov-al"]: Added creation of 
            <targetxml>ref:anchor[@id="ref-amendinglegislation"]</targetxml>. Updated target markup example 
            accordingly. Corrected type in target markup example: changed <targetxml>@status="commencement"</targetxml> 
            to <targetxml>@status="amending"</targetxml>.</xref>
        </li>
        <li>
               <xref href="../../../Rosetta/common_newest/Rosetta_AU_citator_CasebaseSignal_inlineobject-ChOf-remotelink-LxAdv-ref.crossreference.dita">2016-01-13 - remotelink/inlineobject for Casebase Signal to ref:crossreference id-CCCC-10536: Added new mapping instruction section based upon 
            previous casebase signal conversion, but removed any requirement for the signal 
            <sourcexml>remotelink/inlineobject</sourcexml> to occur within <sourcexml>ci:content</sourcexml>. 
            Added a requirement for specific text "casebase" to occur within <sourcexml>@alttext</sourcexml> 
            to preclude use of this instruction for any other types of non-casebase-signal 
            <sourcexml>remotelink/inlineobject</sourcexml> elements. Updated target markup example 
            title accordingly, and added an example of a casebase signal that does not occur within 
            <sourcexml>ci:content</sourcexml>.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_footnote-LxAdv-footnote.dita">2016-01-05 - footnotegrp and footnote to footnotegrp and footnote id-CCCC-10322: Added instructions for
            <sourcexml>footnotegrp</sourcexml> within <sourcexml>frm:div</sourcexml>. To generate
            <targetxml>form:p/form:text</targetxml> wrapper for target
            <targetxml>footnotegroup</targetxml>. Immediately affects UK12 but will
            apply to any stream if the use case occurs. RFA 2653.</xref>
        </li>
      </ul>
    </section>
        
        
    <section>
      <title>cttr 1.16 PROD</title>
      <ul>
            <li>
               <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Citator_Body-Legislative.dita">2015-12-11 - Body for Legislative Citator Docs id-AU20-22212:  Moved <sourcexml>note[@notetype="summary"][@id="SCAP5" or @id="SCAP6"]</sourcexml>  
        from analytical tab section to this cttr:body/leg:info section, and changed to suppress the elements.  
        Moved "note@notetype="summary" id="SAI5" and id="SAI6" to cttr:refsummary" 
        section from below to this cttr:body/leg:info section, changed "SAI5" and "SAI6" to be "SCAI5" and "SCAI6", 
        respectively to match source documents, and changed to suppress any of these elements. The output previusly created in 
        tartget is now to be created by the presentation stylesheets. Added instruction to process 
        <sourcexml>note[@notetype="xref"][@id="SCAP4" or @id="SCAI4"]</sourcexml> using later instruction section since it occurs 
        within <sourcexml>leg:info</sourcexml>. Added mapping of new LBU metadata from 
        <sourcexml>/CITATORDOC/docinfo/docinfo:custom-metafields/docinfo:custom-metafield</sourcexml> to 
        <targetxml>cttr:citedstatlaw/cttr:legisinfo/primlawinfo:primlawinfo/classify:classification</targetxml>. 
        Added <targetxml>@statusgroupcode="legislationinfo"</targetxml> to <targetxml>legisinfo:legisinfo/legisinfo:statusgroup</targetxml> 
          and updated target markup example.</xref>
            </li>
            <li>
               <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Citator_Body-Legislative.dita">2015-12-11 - Body for Legislative Citator Docs id-AU20-22212:  Moved <sourcexml>note@notetype="xref" @id="SCAP4" OR @id="SCAI4"</sourcexml> 
        from analytical tab section to cttr:body/leg:info section. Clarified target of 
        <sourcexml>note[@notetype="xref"][@id="SCAP4" or @id="SCAI4"]</sourcexml> to be 
        <targetxml>/cttr:citator/doc:metadata/doc:docinfo/doc:related-content/doc:related-content-item[@relationship="primary-source"[@content-type="legislation"]</targetxml> 
        so that it is consistent with the target mappings of child elements, and to add the desired target attributes. 
        Changed target of <sourcexml>note/p/text/lnlink</sourcexml> to be <targetxml>doc:related-content-item/doc:related-content-link/ref:lnlink</targetxml> 
        instead of <sourcexml>doc:docinfo/doc:related-content/doc:related-content-link/ref:lnlink</sourcexml>. 
        Changed <sourcexml>lnlink/@refpt</sourcexml> to map to <targetxml>ref:locator/@anchoridref</targetxml> instead of 
        <targetxml>ref:locator/ref:locator-key/@anchoridref</targetxml>. Clarified XPATHs for mapping <sourcexml>lnlink</sourcexml> 
        and its content. Moved note about including <targetxml>@reftype="citing-publications"</targetxml> to the "Analytics Tab 
        Content" section of this CI, in the "cttr:body/cttr:content" section.</xref>
            </li>
            <li>
               <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Citator_Body-Legislative.dita">2015-12-11 - Body for Legislative Citator Docs id-AU20-22212:  Moved <sourcexml>note[@notetype="summary"][@id="SCAI5" or @id="SCAI6"]</sourcexml> 
        from analytical tab section to cttr:body/leg:info section, and changed to suppress the elements.</xref>
            </li>
            <li>
               <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_Overview_cttr.annotations-CorrespondingForm.dita">2015-12-11 - cttr:annotations[@id="OP4"] - Corresponding Form id-AU20-22240: Change source XPATH from 
        <sourcexml>/cttr:annotations/cttr:annot[@id="OP4"]</sourcexml> to 
        cttr:annotations[@id="OP4"], redefined most of the mapping based upon current provision 
        source documents, and updated the example.</xref>
            </li>
            <li>
               <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_Overview_cttr.annotations-Replacing.dita">2015-12-11 - cttr:body/cttr:content/cttr:annotations - Replacing id-AU20-22250: Added markup structure for provisions. Removed instrument 
        XPATH <sourcexml>cttr:annotations/heading/note/h/[@id="OI4"]</sourcexml> since provisions do not 
        have this @id, and changed to test for existence of the title text "Replacing". Added note to indicate 
        <targetxml>primlawhist:histgrp[@grptype="replacing"]</targetxml> should be inserted as the last child 
        inside any already-existing, immediately preceding <targetxml>primlawhist:primlawhist</targetxml>. 
        Clarified mapping of <sourcexml>heading/note/p</sourcexml> to specify the grouping of target elements. 
        Added <targetxml>grptype="replacing"</targetxml> to Example 1. Changed <targetxml>ref:anchor/@id="ref-OI4"</targetxml> 
        to <targetxml>ref:anchor/@id="ref-replacing"</targetxml> in Example 1. Added element end tags 
        in Example 1 target markup. Added Example 3 for Provision markup.</xref>
            </li>
            <li>
               <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_Overview_cttr.annotations-SubordinateLegislation.dita">2015-12-11 - cttr:body/cttr:content/cttr:annotations - Subordinate Legislation id-AU20-22251: Change target XPATHs of from 
        <targetxml>primlaw:subordinatelaw/primlaw:subordinatelaw-item</targetxml> to be 
        <targetxml>primlaw:subordinatelaw</targetxml>, and added clarification that each 
        <sourcexml>heading/note/l/li</sourcexml> becomes a separate 
        <targetxml>primlaw:subordinatelaw-item</targetxml>, and child content is mapped within 
        each. Added instruction to create <targetxml>ref:anchor</targetxml> and added to the 
        examples.</xref>
            </li>
            <li>
               <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_Overview_cttr.annotations-Penalty.dita">2015-12-11 - cttr:body/cttr:content/cttr:annotations - Penalty id-AU20-22248: Added instruction to create <targetxml>ref:anchor</targetxml> 
        (was already in example).</xref>
            </li>
            <li>
               <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_Overview_cttr.annotations-UniformEquivalents.dita">2015-12-11 - cttr:body/cttr:content/cttr:annotations - Uniform Equivalents id-AU20-22253: Minor corrections to typos in XPATHs in first paragraph, 
        but elements and attributes are effectively unchanged. Added creation of 
        <targetxml>ref:anchor[@id="ref-uniform-equivalents"]</targetxml>. 
        Added clarification that each <sourcexml>heading/note/l/li</sourcexml> becomes a separate 
        <targetxml>primlaw:equivalentlawitem</targetxml>, and child content is mapped within 
        each. Replaced Examples</xref>
            </li>
            <li>
               <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_Overview_cttr.annotations-LNPracticalGuidance.dita">2015-12-11 - cttr:body/cttr:content/cttr:annotations - LexisNexis Practical Guidance id-AU20-22246: Added instruction to add 
        <targetxml>proc:param[@name="targetContentType"][@value="practicalguidance"]</targetxml> to 
        <targetxml>ref:lnlink/ref:locator/ref:locator-params</targetxml>, and added to target examples.</xref>
            </li>
            <li>
               <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_Overview_cttr.annotations-LNPracticalGuidance.dita">2015-12-11 - cttr:body/cttr:content/cttr:annotations - LexisNexis Practical Guidance id-AU20-22246: Changed <sourcexml>"@id="OI9"</sourcexml> to be 
        <sourcexml>"@id="OI10"</sourcexml>. Added <sourcexml>"@id="OP11"</sourcexml> for provision 
        documents. Added creation of 
        <targetxml>ref:anchor[@id="ref-lexisnexis-practical-guidance"]</targetxml> within 
        <targetxml>ref:relatedcontent</targetxml>. Replaced <sourcexml>note</sourcexml> mapping to 
        instead map <sourcexml>cttr:annot</sourcexml> to 
        <targetxml>ref:relatedcontentitem/ref:related-content-link</targetxml>, and changed 
        <sourcexml>cttr:annot/lnlink</sourcexml> to map to <targetxml>ref:lnlink</targetxml> instead 
        of <targetxml>ref:related-content-link</targetxml>.</xref>
            </li>
            <li>
               <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_Overview_cttr.annotations-WarningBillLinks.dita">2015-12-11 - cttr:body/cttr:content/cttr:annotations - Warning/Bill Links id-AU20-22255: Added mapping for provisions (<sourcexml>"@id="OP15"</sourcexml>).  
        Moved <sourcexml>[@xml:id="refsection-OI12"]</sourcexml> to be an attribute of 
        <sourcexml>primlawinfo:primlawinfo</sourcexml>, and added values to support provisions.         
        Add instruction to map the title (<sourcexml>heading/title</sourcexml> and <sourcexml>heading/note/h</sourcexml>). 
        Replaced the structure for mapping content of <sourcexml>cttr:annotations/heading/note/p</sourcexml> and 
        <sourcexml>cttr:annotations/heading/note/l/li/p</sourcexml> with a more general mapping that supports additional 
        elements existing in provision documents. 
        Added <sourcexml>@xml:id="refsection-OI12"</sourcexml> to example target markup. Adding example of 
        Provision markup.</xref>
            </li>
            <li>
               <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_Overview_cttr.annotations-ExpiryInformation.dita">2015-12-11 - cttr:body/cttr:content/cttr:annotations[@id="OI17"] - Expiry Information id-AU20-22242: Changed <sourcexml>cttr:annotations/heading/note/[id="OI17"]</sourcexml> 
        to be <sourcexml>cttr:annotations[id="OI17"]</sourcexml>. Changed target element from 
        <targetxml>legisinfo:statusgroup[@statusgroupcode="expiryinformation"][@xml:id="refsection-OI17"]</targetxml> to be 
        <targetxml>primlawinfo:primlawinfo[@xml:id="refsection-OI17"]/legisinfo:legisinfo/legisinfo:statusgroup[@statusgroupcode="expiryinformation"]</targetxml>. 
        Clarified the mapping of <sourcexml>heading/note</sourcexml> and it's children. Added mapping of 
        dates within text content. Replaced examples.</xref>
            </li>
            <li>
               <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_Overview_cttr.annotations-EditorsNote.dita">2015-12-11 - cttr:body/cttr:content/cttr:annotations - Editors Note id-AU20-22241: Added clarification that test for text "Editor Notes" was 
        inside <sourcexml>cttr:annotations/heading/title</sourcexml>, and changed "Editor Notes" to be "Editor's Note". 
        Changed <targetxml>@xml:id="refsection-OI18"</targetxml> 
        and <targetxml>@xml:id="refsection-OI13"</targetxml> to be <targetxml>@xml:id="refsection-OI18-editorsnote"</targetxml> 
        and <targetxml>@xml:id="refsection-OP13-editorsnote"</targetxml>, respectively (notice the change of OI13 to be OP13 in 
        addition to adding "-editorsnote"). Change was due to potential @id duplication with summary section. 
        Added creation of <targetxml>ref:anchor[@id="ref-editors-note"]</targetxml>. Updated examples with changes. 
        </xref>
            </li>
            <li>
               <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_Overview_cttr.annotations-MoreLinks.dita">2015-12-11 - cttr:body/cttr:content/cttr:annotations - More Links id-AU20-22247: Added source XPATHs and logic to support Instrument/Act 
        documents. Added intro paragraph with test condition for entire section.</xref>
            </li>
            <li>
               <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_Overview_cttr.annotations-ReferencesRibbon.dita">2015-12-11 - cttr:body/cttr:content/cttr:annotations - References Ribbon id-AU20-22249: Clarified wording of mapping instruction to create  
        <targetxml>navaid:navigationaid[@type="links"]</targetxml>. Added creation of 
        <targetxml>ref:anchor[@id="ref-overview-links"]</targetxml>. Added mapping of 
        <sourcexml>cttr:annotations/cttr:annotsummary/@display-name</sourcexml> to 
        <targetxml>heading/title</targetxml> when <sourcexml>heading/title</sourcexml> is non-existent or 
        empty. Added <targetxml>@style="default"</targetxml> to <targetxml>navaid:list</targetxml>.
        Added clarification that <sourcexml>cttr:annotsummary/table/tgroup/colspec</sourcexml> is 
        suppressed. </xref>
            </li>
            <li>
               <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_Overview_cttr.annotations-CaseActivityByCourt.dita">2015-12-11 - cttr:body/cttr:content/cttr:annotations - Case Activity By Court id-AU20-22238: Changed <sourcexml>[@id="OI24"]</sourcexml> to be  
        <sourcexml>[@id="OP24"]</sourcexml> and moved mapping of cases "By Provision"  
        (<sourcexml>cttr:annotations/cttr:annotsummary/[@id="OI21"]</sourcexml>) to a new section titled 
        "cttr:body/cttr:content/cttr:annotations - Case Activity By Provision" because 
        mapping is different, and changed this section title accordingly. Moved partial instructions that were 
        specific to this source content to the new section. Modified creation of 
        <targetxml>primlawhist:primlawhist/@xml:id</targetxml> to be specific to the source document 
        <sourcexml>@id</sourcexml> value. Removed source markup example for Provisions (OP24), 
        since mapping is essentially identical excempt for the id attributes. Added instruction to suppress 
        <sourcexml>cttr:annotations/heading</sourcexml> and changed target title markup 
        to be mapped from <sourcexml>cttr:annotations/cttr:annotsummary/table/title</sourcexml> if it contains non-whitespace 
        text, and <sourcexml>cttr:annotations/cttr:annotsummary/@display-name</sourcexml> otherwise. 
        Added exception to suppress all output if 
        the <sourcexml>cttr:annotations/cttr:annotsummary</sourcexml> if it contains only an "empty" table.
        Added clarification to suppress <sourcexml>tgroup/colspec</sourcexml>. Changed target markup from 
        <targetxml>ref:relatedcontentitem</targetxml> to be <targetxml>primlawhist:histgrp</targetxml> to match 
        markup example (which was correct). Changed <targetxml>primlawhist:histgrp/@grptype="cases"</targetxml> to 
        be <targetxml>primlawhist:histgrp[@grptype="case-activity-by-court"]</targetxml>. Clarifications to XPATHs in 
        mapping of <sourcexml>cttr:annotsummary/table</sourcexml> to <targetxml>primlawhist:histgrp</targetxml> 
        elements. Removed instruction that <sourcexml>@display-name</sourcexml> value is dropped; it is potentially 
        used for target title. Modified example target markup <targetxml>@xml:id</targetxml> and 
        <targetxml>@grptype</targetxml> to be consistent with changes. Added creation of 
        <targetxml>ref:anchor[@id="ref-case-activity-by-court"]</targetxml> within 
        <targetxml>primlawhist:primlawhist</targetxml>.</xref>
            </li>
            <li>
               <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_Overview_cttr.annotations-CaseActivityByProvision.dita">2015-12-11 - cttr:body/cttr:content/cttr:annotations - Case Activity By Provision id-AU20-22239: Created new section for Case Activity "By Provision" and moved 
        mapping instructions here from Case Activity By Court to here (with some modifications). Changed from a single space 
        between the first and second components of each <targetxml>ref:related-content-link</targetxml> element to instead 
        be 20-number of chars in the first component to result in output lining up in columns (assuming fixed width 
        font in output). This change was made to support a request from presentation team.</xref>
            </li>
            <li>
               <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_Overview_cttr.annotations-LatestCases.dita">2015-12-11 - cttr:body/cttr:content/cttr:annotations - Latest Cases id-AU20-22245: Created new section for "Latest Cases".</xref>
            </li>
            <li>
               <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_Overview_cttr.annotations-ViewAllcases.dita">2015-12-11 - cttr:annotations/heading/lnlink/marker/text()="View all cases" id-AU20-22254: Changed XPATH in section title from 
        "cttr:annotations/heading/title/lnlink/marker/text()" to be 
        "cttr:annotations/heading/lnlink/marker/text()". Added additional detail to 
        describe mapping that was missing. Added <targetxml>@xml:id="refsection-OP26"</targetxml> and 
        <targetxml>@contenttype="case-activity-view-all-cases"</targetxml> to 
        <targetxml>ref:relatedcontent</targetxml>. Added creation of 
        <targetxml>ref:anchor[@id="ref-case-activity-view-all-cases"]</targetxml>. Add mapping of 
        <sourcexml>cttr:annotations/heading/title</sourcexml>. Modified and added attributes and 
        <targetxml>ref:anchor</targetxml> to Example target markup.</xref>
            </li>
            <li>
               <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_Analytics_cttr.content.dita">2015-12-11 - cttr:body/cttr:content:  Added instruction to create 
        <targetxml>cttr:citator/cttr:body/cttr:refs[@reftype="analytical"]</targetxml>. Added instruction to create 
        <targetxml>cttr:refsection[@reftype="citing-publications"]</targetxml>, and a paragraph indicating that the 
        general mappins that follow inside this "cttr:body/cttr:content" are to be performed, followed by more 
        specific mappings associated with the value of <sourcexml>cttr:annotations/@annotgroup</sourcexml> and/or 
        <sourcexml>cttr:annotations/heading/title</sourcexml>. Removed mapping <sourcexml>@id</sourcexml> and creation of 
        <targetxml>@id</targetxml>; these attributes are created in the unique sections for each type of annot group, to 
        match the prototype stitched document structure. Modified mapping of <sourcexml>cttr:annotations/heading/title</sourcexml> 
        to include appending <sourcexml>heading/subtitle</sourcexml> content. Corrected <targetxml>@id</targetxml> in the 
        example target markup to be <targetxml>@xml:id</targetxml> and changed its value. Added subtitle mapping to 
        example. Moved mapping 
        instructions for <sourcexml>lnlink</sourcexml> and <sourcexml>link</sourcexml> inside 
        <sourcexml>cttr:annotations/heading/title</sourcexml> or <sourcexml>cttr:annot/heading/title</sourcexml> 
        from the "cttr:annotations@annotgroup="COM"" section to this general mappings section (because they apply 
        to all analytical tab content), and added <sourcexml>cttr:annot/comm:info/title</sourcexml> as a source for 
        this mapping. Added <targetxml>xml:id="refsection-annotated-legislation"</targetxml> to example target markup.</xref>
            </li>
            <li>
               <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_Analytics_cttr.content.dita">2015-12-11 - cttr:body/cttr:content: Moved mapping instructions for <sourcexml>cttr:annotations</sourcexml> 
        from to general mappings in "cttr:content/cttr:annotations[@annotgroup="HLA"]" section to this general mapping 
        section because they apply to all types of <sourcexml>cttr:annotations/@annotgroup</sourcexml>
        for the analytics tab, regardless of value of <sourcexml>cttr:annotations</sourcexml>. Changes made to those 
        mapping instructions were as follows:Restructured creation of each <targetxml>cttr:refitem</targetxml> to create a separate 
        <targetxml>cttr:refitem</targetxml> for each source <sourcexml>cttr:annot[@signal="citation"]/comm:citations</sourcexml> 
        element to make it possible to match the output mockups. Modified creation of 
        <targetxml>cttr:refitem/cttr:citingpub/title</targetxml> to use content of the title in either the sibling 
        <sourcexml>cttr:annot/comm:info/title</sourcexml> or <sourcexml>cttr:annot/heading/title</sourcexml> of 
        the <sourcexml>cttr:annot/comm:citations</sourcexml> being processed (whichever 
        exists).</xref>
            </li>
            <li>
               <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_Analytics_note-idSCAP4idSCAI4.dita">2015-12-11 - note@notetype="xref" @id="SCAP4" OR @id="SCAI4":  Moved <sourcexml>note@notetype="xref" @id="SCAP4" OR @id="SCAI4"</sourcexml> 
        from analytical tab section to cttr:body/leg:info section.</xref>
            </li>
            <li>
               <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_Analytics_note-idSCAP5idSCAP6.dita">2015-12-11 - note[@notetype="summary"][@id="SCAP5" or @id="SCAP6"]:  Moved <sourcexml>note[@notetype="summary"][@id="SCAP5" or @id="SCAP6"]</sourcexml> 
        from analytical tab section to cttr:body/leg:info section, and changed to suppress the elements.</xref>
            </li>
            <li>
               <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_Analytics_cttr.annotations-AnnotatedLegislation.dita">2015-12-11 - cttr:content/cttr:annotations with Title "Annotated Legislation": Created new section for <sourcexml>cttr:annotations</sourcexml> 
        containing <sourcexml>heading/title</sourcexml> that contains the text "Annotated Legislation"</xref>
            </li>
            <li>
               <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_Analytics_cttr.annotations-annotgroupHLA.dita">2015-12-11 - cttr:content/cttr:annotations[@annotgroup="HLA"]: Added instruction to perform the general mappings in 
        the "cttr:body/cttr:content" section, and then continue with mappings in this section. Changed 
        <targetxml>@id="ref-HLA"</targetxml> to be <targetxml>@xml:id="refsection-HLA"</targetxml> and specified explicitly 
        that it was inside <targetxml>cttr:refsection</targetxml>. Removed <targetxml>pubtype="journal-article"</targetxml> 
        from example. Moved the rest of mapping instructions to general mappings in 
        the "cttr:body/cttr:content" section because they apply to all types of <sourcexml>cttr:annotations</sourcexml> 
        for the analytics tab. Changes were made to those mappings; see the change history in the 
        the "cttr:body/cttr:content" section for details of those changes. Replaced examples.</xref>
            </li>
            <li>
               <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_Analytics_cttr.annotations-annotgroupLNZ.dita">2015-12-11 - For cttr:annotations[@annotgroup="LNZ"]: Changed example titles from "Commentary" to be "LNZ". 
        Changed <targetxml>ref:anchor id="ref-commentary"</targetxml>to be 
        <targetxml>ref:anchor[@id="ref-LNZ]"</targetxml>. Added instruction to perform 
        the general mappings in 
        the "cttr:body/cttr:content" section, and then continue with mappings in this section. Removed mapping 
        instructions that were redundant with those general mappings.</xref>
            </li>
            <li>
               <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_Analytics_cttr.annotations-annotgroupCOM.dita">2015-12-11 - cttr:annotations[@annotgroup="COM"]: Added instruction to perform the general mappings in 
        the "cttr:body/cttr:content" section, and then continue with mappings in this section. Removed 
        instruction for <sourcexml>heading/subtitle</sourcexml> because it is redundant with mappings now 
        in the general mappings in the "cttr:body/cttr:content" section. Moved mapping 
        instructions for <sourcexml>lnlink</sourcexml> and <sourcexml>link</sourcexml> inside 
        <sourcexml>cttr:annotations/heading/title</sourcexml> or <sourcexml>cttr:annot/heading/title</sourcexml> 
        to the general mappings in the "cttr:body/cttr:content" section (because they apply to all analytical tab 
        content). Changed <targetxml>ref:anchor</targetxml> to <targetxml>ref:anchor[@id="ref-commentary"]</targetxml> 
        in 2nd example target markup.</xref>
            </li>
            <li>
               <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_Analytics_cttr.annotations-annotgroupLPG.dita">2015-12-11 - For cttr:annotations[@annotgroup="LPG"]: Added instruction to perform the general mappings in 
        the "cttr:body/cttr:content" section, and then continue with mappings in this section. Removed mapping 
        instructions that were redundant with those general mappings. Changed 
        <targetxml>@xml:id="ref-practicalguidance"</targetxml> to <targetxml>@xml:id="refsection-LPG-analytical"</targetxml> 
        to avoid id conflicts. Changed <targetxml>xml:id="LPG"</targetxml> to  
        <targetxml>xml:id="refsection-LPG-analytical"</targetxml> in example target markup. Replaced 
      	example markup. Added <targetxml>proc:param[@name="targetContentType"][@value="practicalguidance"]</targetxml> to 
      	all <targetxml>cttr:refsection[@xml:id="refsection-LPG-analytical"]/cttr:refitem/cttr:citingpub/bodytext/p/text/ref:lnlink/ref:locator/ref:locator-params</targetxml> 
      	elements created in this section, and added to target examples.</xref>
            </li>
            <li>
               <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_Analytics_cttr.annotations-annotgroupLTS.dita">2015-12-11 - For cttr:annotations[@annotgroup="LTS"]: Added instruction to perform the general mappings in 
        the "cttr:body/cttr:content" section, and then continue with mappings in this section. Removed mapping 
        instructions that were redundant with those general mappings. Replaced example.</xref>
            </li>
            <li>
               <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_Analytics_cttr.annotations-annotgroupsubseqarticles.dita">2015-12-11 - For cttr:annotations[@annotationtype="subseqarticles"] and @annotgroup not specified: Changed <targetxml>xml:id="refsection-LTS"</targetxml> 
    to be <targetxml>@xml:id="refsection-JNB"</targetxml>. Added instruction to perform the general mappings in 
    the "cttr:body/cttr:content" section, and then continue with mappings in this section. Removed mapping 
    instructions that were redundant with those general mappings. Changed <targetxml>@xml:id</targetxml> 
    to be <targetxml>@xml:id="refsection-JNB"</targetxml> in all target markup examples. Replaced markup 
    example 3.</xref>
            </li>
            <li>
               <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_Analytics_cttr.annotations-annotgroupBOO.dita">2015-12-11 - For cttr:annotations[@annotgroup="BOO"]: Added instruction to perform the general mappings in 
        the "cttr:body/cttr:content" section, and then continue with mappings in this section. Removed mapping 
        instructions that were redundant with those general mappings. Replaced markup example 2.</xref>
            </li>
            <li>
               <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_Analytics_cttr.annotations-annotgroupDICT.dita">2015-12-11 - For cttr:annotations[@annotgroup="DICT"]: Added instruction to perform the general mappings in 
        the "cttr:body/cttr:content" section, and then continue with mappings in this section. Removed mapping 
        instructions that were redundant with those general mappings. Replaced example markup.</xref>
            </li>
            <li>
               <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_Cases_cttr.content.dita">2015-12-11 - cttr:body/cttr:content: Added <targetxml>[@reftype="cases"]</targetxml> to 
        <targetxml>cttr:refs</targetxml>. Added creation of <targetxml>ref:anchor[@id="ref-cases"]</targetxml>.</xref>
            </li>
            <li>
               <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_Cases_cttr.content_cttr.annotations.dita">2015-12-11 - cttr:body/cttr:content/cttr:annotations: Removed this entire section; the target markup does not apply to some 
        source markup content that meets the conditions that were listed. Replaced it with an instruction to refer to 
        unique sections that follow.</xref>
            </li>
            <li>
               <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_Cases_note-idSCAI5idSCAI6.dita">2015-12-11 - note[@notetype="summary"][@id="SCAI5" or @id="SCAI6"]:  Moved <sourcexml>note[@notetype="summary"][@id="SCAI5" or @id="SCAI6"]</sourcexml> 
        from cases tab section to cttr:body/leg:info section, and changed to suppress the elements.</xref>
            </li>
            <li>
               <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_Cases_cttr.annotsummary-CasesbyCourtandYear.dita">2015-12-11 - cttr:annotations/cttr:annotsummary[@display-name="Cases by Court and Year"][@id="CI2"]/table: Removed "Case Totals" from the markup example. No mapping instruction 
      existed for "Case Totals", and the conditions are different, so created a new section for it. Added 
        <targetxml>@summarytype="subseqcases"</targetxml> to <targetxml>cttr:refssummary</targetxml>. Specified that 
        <targetxml>cttr:refssummarygroup[@grouptype="Court"]</targetxml> should be a sibling of 
        <targetxml>cttr:refssummarygroup[@grouptype="Year"]</targetxml>, and corrected the logic for creating 
        <targetxml>cttr:refssummaryitem</targetxml> and its content.</xref>
            </li>
            <li>
               <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_Cases_cttr.annotsummary-CaseTotals.dita">2015-12-11 - cttr:annotations/cttr:annotsummary[@display-name="Totals"] - Case Totals: Created a new section for "Case Totals".</xref>
            </li>
            <li>
               <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_Cases_cttr.annotsummary-CasesbyProvisionandSource.dita">2015-12-11 - cttr:annotsummary[@display-name="Cases by Provision and Source"][@id="CI1"]/table: Clarified creation of <targetxml>cttr:refssummaryitem</targetxml>.</xref>
            </li>
            <li>
               <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_Cases_cttr.annotations-ConsiderationofWholeActorProvision.dita">2015-12-11 - cttr:annotations[@annotationtype="subseqcases"] - Consideration of Whole Act or Provision: Changed title. Changed <sourcexml>@="CI11.1"</sourcexml> to 
        <sourcexml>@id="CI11.1"</sourcexml>. Added logic and structure for provision documents. Changed 
        <targetxml>ref:anchor[@id="ref-CI11.1"]</targetxml> to be <targetxml>ref:anchor[@id="refsection-001"]</targetxml> 
        to match the the prototype document. Specified value for <targetxml>cttr:refsection/@reftypeM</targetxml> 
        (was unspecified) and moved to be with creation of <targetxml>cttr:refsection</targetxml>. Changed 
        <targetxml>case:casename</targetxml> to be <targetxml>caseinfo:casename</targetxml>. Corrected the wording 
        creating <targetxml>cttr:caseinfo/caseinfo:casename/caseinfo:fullcasename</targetxml>. Changed 
        <sourcexml>cttr:caseinfo/case:citations/case:citetext/ci:cite</sourcexml> to be 
        <sourcexml>cttr:annot/case:citations/case:citetext/ci:cite</sourcexml>. Reworded creation of 
        <targetxml>cttr:caseinfo/decision:dates/decision:decisiondate</targetxml> to be less ambiguous. Added 
        text()="Cited" to <targetxml>cttr:citingcase/cttr:usagegroup/cttr:usage[@usagetype="neutral"]</targetxml>.</xref>
            </li>
            <li>
               <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_History_cttr.content.dita">2015-12-11 - cttr:body/cttr:content: Changed <targetxml>cttr:body/cttr:refs</targetxml> to be 
              <targetxml>cttr:body/cttr:history</targetxml>. Added specification of the title that should be created 
              for provision documents to be "History". Added creation of <targetxml>ref:anchor[@id="ref-history"]</targetxml> 
              (was in example but not text instruction). Changed <sourcexml>cttr:annotations/heading/title</sourcexml> 
              contains "history" to be contains "History". Changed to create <targetxml>cttr:history/primlawhist:primlawhist</targetxml> 
              and <targetxml>ref:anchor[@id="ref-history"]</targetxml> always (was based upon a test). Moved 
              <targetxml>@xml:id="HI1-History"</targetxml> to the "cttr:content/cttr:annotations/heading/title containing History - 
              with cttr:annotsummary/table" section as <targetxml>primlawhist:histgrp/@grptype</targetxml> since it only 
              applies to that section.</xref>
            </li>
            <li>
               <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_History_HI1-History.dita">2015-12-11 - cttr:content/cttr:annotations/heading/title containing History - with cttr:annotsummary/table: Added a condition for performing the mappings of 
              this section. Added creation of <sourcexml>primlawhist:histgrp[@grptype="HI1-History"]</sourcexml>. 
              Added instructions for mapping source content that were missing. Changed 
              <targetxml>ref:anchor@id="historical-data-graph"</targetxml> to be 
              <targetxml>ref:anchor[@id=" grptype="HI1-History"]</targetxml>, removed old instruction to map to 
              <targetxml>primlawhist:histitem/bodytext/table</targetxml> (now mapped to 
              <targetxml>primlawhist:histitem/primlawhist:histitemdiv</targetxml>). Replaced examples.</xref>
            </li>
            <li>
               <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_History_assent.dita">2015-12-11 - Primlaw History - Assent: Changed 
              <sourcexml>cttr:annotations/heading/title/note/[id="HI4"]</sourcexml>. to be 
              <sourcexml>cttr:annotations/heading/note[id="HI4"]</sourcexml>. Added clarification that 
              target was a new <targetxml>primlawhist:primlawhist</targetxml> element within the existing 
              <targetxml>cttr:history</targetxml>. Added mapping of 
              <sourcexml>cttr:annotations/heading/title</sourcexml>. Changed mapping of 
              <sourcexml>cttr:annotsummary/table/tgroup/tbody/row/entry[@id="HI6"]</sourcexml> to 
              instead be <sourcexml>cttr:annotsummary/table/tgroup/tbody/row/entry[@id="HI6"]/lnlink</sourcexml> 
              to adjust for changes the LBU has stated will be coming in source data. Changed Date of assent date
              content target from <targetxml>textitem/date@normdate="YYYY-MM-DD"</targetxml> to 
              explicitly describe target mapping. Modified target markup example to include 
              <targetxml>@normdate</targetxml>.</xref>
            </li>
            <li>
               <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_History_commencement.dita">2015-12-11 - Primlaw History - Commencement Information: Created new section for Commencement Information.</xref>
            </li>
            <li>
               <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_History_amendinglegislation.dita">2015-12-11 - Source cttr:annotations[@id="HI15"] OR cttr:annotations[@id="HP4"]: Added instructions to create 
          <targetxml>cttr:history/primlawhist:primlawhist[@xml:id="HI14"]</targetxml>, 
          <targetxml>ref:anchor[@id="ref-amendinglegislation"]</targetxml>, and 
          <targetxml>primlawhist:primlawhist/heading/title</targetxml>. Changed 
          <targetxml>primlawhist:histgrp@grptype="amending"</targetxml> to be created unconditionally 
          instead of being mapped from <sourcexml>cttr:annotations[@id="HI15"]</sourcexml> 
          OR <sourcexml>cttr:annotations/[@id="HP4"]</sourcexml>. Added 
          <targetxml>primlawhist:histgrp/@xml:id</targetxml>. Added specification that each 
          <sourcexml>cttr:annot</sourcexml> becomes a separate <targetxml>primlawhist:histitem</targetxml>, 
          and that the following mappings are performed for each one. Replaced markup example 1. 
          Moved <targetxml>ref:anchor[@id="ref-amendinglegislation"]</targetxml> to be inside 
          <targetxml>primlawhist:histgrp</targetxml> instead of <targetxml>primlawhist:primlawhist</targetxml> 
          per presentation team request, and updated Example 1.</xref>
            </li>
            <li>
               <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_History_prov-am.dita">2015-12-11 - cttr:annotations[@annotgrp="prov-am"]: Added <targetxml>@grptype="provision-amendments"</targetxml> 
              to <targetxml>primlawhist:primlawhist/primlawhist:histgrp</targetxml>. Added 
              mapping for <sourcexml>cttr:annotations/heading/title</sourcexml>. Added instructions for mapping 
              the content of <sourcexml>cttr:annotations[@annotgrp="prov-am"]</sourcexml>. Replaced 
              example markup.</xref>
            </li>
            <li>
               <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_History_prov-al.dita">2015-12-11 - cttr:annotations[@annotgrp="prov-al"]: Added <targetxml>@grptype="amending-legislation"</targetxml> 
              to <targetxml>primlawhist:primlawhist/primlawhist:histgrp</targetxml>. Added 
              mapping for <sourcexml>cttr:annotations/heading/title</sourcexml>. Added instructions for mapping 
              the content of <sourcexml>cttr:annotations[@annotgrp="prov-al"]</sourcexml>. Replaced 
              example markup.</xref>
            </li>
            <li>
               <xref href="../../../Rosetta/common_newest/Rosetta_inlineobject-Chof-p_blockquote-LxAdv-p_figure_ref.inlineobject.dita">2015-12-08 - p/blockquote/inlineobject to p/figure/ref:inlineobject id-CCCC-10363: Added '.tiff' to the list of allowable values for <sourcexml>proc:param[@name="object-type"]/@value="image"</sourcexml>.</xref>
            </li>
      </ul>
    </section>

    <section>
      <title>cttr 1.15 PROD</title>
      <ul>
        <li>
          <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Citator_Body-Legislative.dita">2015-12-04 - Body for Legislative Citator Docs id-AU20-22212: removed erroneous text in <sourcexml>leg:officialname</sourcexml> " following 
            <targetxml>lnci:cite</targetxml>:". Corrected target XPATH of <sourcexml>leg:officialname</sourcexml> from 
            <targetxml>primlawinfo:primlawinfo/legisinfo:legisinfo</targetxml> to be <targetxml>cttr:legisinfo/primlawinfo:primlawinfo/legisinfo:legisinfo</targetxml> 
            in text instruction and in example. Modified mapping of <sourcexml>note[@notetype="other"]</sourcexml> 
            to create newly required separation of desig value and title. Added Example of provision markup to show
            provision conversion. Added additional logic to clarify mapping of <sourcexml>leg:status</sourcexml>
          </xref>
        </li>
        <li>
          <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Citator_Body-Legislative.dita">2015-12-04 - Body for Legislative Citator Docs id-AU20-22212: Added instruction to suppress empty <sourcexml>cttr:annot</sourcexml> 
            elements.</xref>
        </li>
        <li>
               <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_Overview_cttr.content.dita">2015-12-04 - cttr:body/cttr:content id-AU20-22256: Clarified <sourcexml>cttr:body/cttr:content</sourcexml> to 
            specify that overview target markup is placed within a new single 
            <targetxml>cttr:legisinfo</targetxml> element.</xref>
        </li>
        <li>
               <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_Overview_cttr.annotations-FormerTitle.dita">2015-12-04 - cttr:body/cttr:content/cttr:annotations - Former Title id-AU20-22243: Modified mapping of cttr:body/cttr:content/cttr:annotations, 
            containing "Former Title"to support provision markup structure, 
            and completely changed determination and placement of attributes. Added instruction to add 
            <targetxml>ref:anchor[@id="ref-former-title"]</targetxml>. Removed the "replacing" example 
            (already in appropriate section of this CI). Added instruction to place the 
            <targetxml>primlawhist:histgrp</targetxml> at the end of any already existing 
            <targetxml>primlawhist:primlawhist</targetxml> element if it is immediately before the target markup 
            for this element. Corrected Example to match new instructions, and added example of provision markup 
            structure. Added clarification to indicate when <targetxml>primlawhist:histgrp</targetxml> is inserted into a 
            previously created <targetxml>primlawhist:primlawhist</targetxml> element, and when a new 
            <targetxml>primlawhist:primlawhist</targetxml> element is created.</xref>
        </li>
        <li>
               <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_Overview_cttr.annotations-CorrespondingForm.dita">2015-12-04 - cttr:annotations[@id="OP4"] - Corresponding Form id-AU20-22240: Added creation of 
            <targetxml>ref:anchor[@id="ref-corresponding-form"]</targetxml>, and changed 
            <targetxml>@contenttype="form"</targetxml> to be <targetxml>@corresponding-form"</targetxml>.</xref>
        </li>
        <li>
               <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_Overview_cttr.annotations-Replacing.dita">2015-12-04 - cttr:body/cttr:content/cttr:annotations - Replacing id-AU20-22250: Added creation of 
            <targetxml>ref:anchor[@id="ref-replacing"]</targetxml>, and added 
            <targetxml>primlawhist:histgrp/@grptype="replacing"</targetxml>.</xref>
        </li>
        <li>
               <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_Overview_cttr.annotations-Summary.dita">2015-12-04 - cttr:body/cttr:content/cttr:annotations - Summary id-AU20-22252: Clarified first paragraph with condition 
            <sourcexml>title</sourcexml> to instead be <sourcexml>cttr:annotations/heading/title</sourcexml>. 
            Clarified mapping to indicate that <sourcexml>note[id="OI13"]</sourcexml> becomes 
            <targetxml>primlaw:synopsis/bodytext</targetxml>. Moved mapping of <sourcexml>note</sourcexml> 
            with @id containing OI14/OI15/OI16 to new CI section titled 
            cttr:body/cttr:content/cttr:annotations - More Links, and corrected instructions in that new
            section to map to <targetxml>ref:relatedcontent[@xml:id="refsection-links"][@contenttype="more-links"]</targetxml>. 
            Changed the examples accordingly.</xref>
        </li>
        <li>
               <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_Overview_cttr.annotations-ActName.dita">2015-12-04 - cttr:body/cttr:content/cttr:annotations - Act Name id-AU20-22237: Created new section for "cttr:body/cttr:content/cttr:annotations - 
            Act Name". This section contains modified/clarified instructions for the mapping instructions that were inside 
            the Non-standard cttr:annotations: Instrument Info section of the CI. Modifications included (but were 
            not limited to) changes to some of the source/target XPATHs, correcting <sourcexml>note/p/text/note/lnlink</sourcexml> 
            within <sourcexml>cttr:annotations/heading</sourcexml> to instead be <sourcexml>note/p/text/lnlink</sourcexml>, 
            changing mapping of Act Name content to target <targetxml>primlawhist:primlawhist/primlawhist:histgrp/primlawhist:histitem</targetxml> 
            instead of <targetxml>ref:relatedcontentitem</targetxml>, and mapping of <sourcexml>inlineobject</sourcexml>. 
            Added clarification to indicate when <targetxml>primlawhist:histgrp</targetxml> is inserted into a 
            previously created <targetxml>primlawhist:primlawhist</targetxml> element, and when a new 
            <targetxml>primlawhist:primlawhist</targetxml> element is created.</xref>
        </li>
        <li>
               <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_Overview_cttr.annotations-MoreLinks.dita">2015-12-04 - cttr:body/cttr:content/cttr:annotations - More Links id-AU20-22247: Created new section for 
            "cttr:body/cttr:content/cttr:annotations - More Links". This section contains 
            modified/clarified instructions for the mapping instructions that were inside 
            the Non-standard cttr:annotations: Instrument Info section of the CI, including 
            mapping for "List of Provisions", "Defined Terms", and "Government Website".</xref>
        </li>
        <li>
               <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_Overview_cttr.annotations-InstrumentInfo.dita">2015-12-04 - Non-standard cttr:annotations: Instrument Info id-AU20-22244: Replaced this section titled 
            "Non-standard cttr:annotations: Instrument Info" with new sections 
            "cttr:body/cttr:content/cttr:annotations - More Links" and 
            "cttr:body/cttr:content/cttr:annotations - Act Name</xref>
        </li>
        <li>
               <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_Overview_cttr.annotations-ReferencesRibbon.dita">2015-12-04 - cttr:body/cttr:content/cttr:annotations - References Ribbon id-AU20-22249: Changed <sourcexml>refsection-OI23</sourcexml> 
            to be <sourcexml>refsection-OP23</sourcexml>. Changed <targetxml>navaid:list[@xml:id="OP19-links"]</targetxml> 
            to be <targetxml>navaid:list[@xml:id="OI19-links"]</targetxml>. Minor mods to some XPATH expressions. 
            Changed target values for <targetxml>index:entry/indexlocator/ref:lnlink/ref:locator[@anchoridref]</targetxml>, 
            and clarified those values based upon mapping instructions to create based upon the value of 
            <sourcexml>entry[colname="source"]/text()</sourcexml>.</xref>
        </li>
        <li>
               <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_Overview_cttr.annotations-CaseActivityByCourt.dita">2015-12-04 - cttr:body/cttr:content/cttr:annotations - Case Activity By Court id-AU20-22238: Added clarification to indicate when <targetxml>primlawhist:histgrp</targetxml> 
            is inserted into a previously created <targetxml>primlawhist:primlawhist</targetxml> element, 
            and when a new <targetxml>primlawhist:primlawhist</targetxml> element is created.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.doc-heading-LxAdv-dc.title.dita">2015-12-04 - docinfo:doc-heading to dc:title id-CCCC-10292: Added exception for AU Legislative Citator to 
            drop text Overview Tab for  from conversion.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_inlineobject-Chof-p_blockquote-LxAdv-p_figure_ref.inlineobject.dita">2015-11-17 - p/blockquote/inlineobject to p/figure/ref:inlineobject id-CCCC-10363: Added note to use a different instruction if <sourcexml>inlineobject</sourcexml> contains siblings.</xref>
        </li>
      </ul>
    </section>    
    
    <section>
      <title>cttr 1.14 PROD</title>
      <ul>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_AU_citator_inlineobject-Chof-ci.conent_remotelink-LxAdv-lnci.content_ref.crossreference.dita">2015-11-16 - Added General Markup instruction for mapping casebase signals 
            (<sourcexml>ci:content/remotelink/inlineobject</sourcexml> to <targetxml>lnci:content/ref:crossreference</targetxml>).</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_Overview_cttr.annotations-InstrumentInfo.dita">2015-11-16 - Non-standard cttr:annotations: Instrument Info id-AU20-22244: Modified text of instruction for 
            <sourcexml>cttr:annotations/heading</sourcexml> containing <sourcexml>note/p/text/note/lnlink</sourcexml>
            to match the target markup in the example.</xref>
        </li>
        <li>
               <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_Analytics_cttr.annotations-annotgroupsubseqarticles.dita">2015-11-16 - For cttr:annotations[@annotationtype="subseqarticles"] and @annotgroup not specified: Modified text of instruction for <sourcexml>comm:citations/h/link</sourcexml>
            to match the target markup in the example. Also corrected the title for the example target markup to be 
            Target cttr:citingpub/cttr:citations/ref:crossreference (was Target cttr:annot/comm:citations/h/lnlink).</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Citator_Body-Legislative.dita">2015-11-16 - Body for Legislative Citator Docs id-AU20-22212: Changed instruction and examples for <sourcexml>cttr:body</sourcexml> 
            containing <sourcexml>leg:info</sourcexml> to create <targetxml>cttr:citedstatlaw</targetxml> instead 
            of <targetxml>cttr:citedseclaw</targetxml>.</xref>
        </li>
        <li>
               <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_Overview_cttr.content.dita">2015-11-16 - cttr:body/cttr:content id-AU20-22256: Changed instruction for <sourcexml>cttr:body/cttr:content</sourcexml> 
            to create <targetxml>cttr:head/cttr:citedstatlaw</targetxml> instead 
            of <targetxml>cttr:head/cttr:citedseclaw</targetxml>, and added specification that overview content should be added 
            at the end of any content within an already existing <targetxml>cttr:head/cttr:citedstatlaw</targetxml>.</xref>
        </li>
        <li>
               <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_Analytics_cttr.annotations-annotgroupCOM.dita">2015-11-16 - cttr:annotations[@annotgroup="COM"]: Added instructions for 
            <sourcexml>cttr:annotations[@annotgroup="COM"]/cttr:annot/heading/title/lnlink</sourcexml>, 
            <sourcexml>cttr:annotations[@annotgroup="COM"]/heading/title/link</sourcexml>, and 
            <sourcexml>cttr:annotations[@annotgroup="COM"]/cttr:annot/heading/title/link</sourcexml>.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_Cases_Tab.dita">2015-11-16 - Cases Tab Content id-AU20-22229: Added support for mapping casebase signals to instruction for 
            <sourcexml>cttr:caseinfo/case:citations/case:citetext/ci:cite</sourcexml>, and added associated markup to 
            source and target XML in examples.</xref>
        </li>
        <li>
               <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_History_amendinglegislation.dita">2015-11-16 - Source cttr:annotations[@id="HI15"] OR cttr:annotations[@id="HP4"]: Modified example for conversion of 
            <sourcexml>cttr:annotations/cttr:annot/leg:citations</sourcexml> to have correct target
            markup matching the instruction. Target markup example was previously missing a 
            <targetxml>ref:crossreference/ref:content</targetxml> element wrapped around the inline object, 
            link and text within <targetxml>textitem</targetxml>.</xref>
        </li>
      </ul>
    </section>    
 
     
 <section>
   <title>cttr 1.13 PROD</title>
   <ul>
     <li>
       <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_History_Tab.dita">2015-10-28 - History Tab Content id-AU20-22230: Instructions for all history tab have been re-written, per presentation team needs.</xref>
     </li>
     <li>
       <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_Overview_Tab.dita">2015-10-28 - Overview Tab Content id-AU20-22231: Modified instructions View All Cases link.</xref>
     </li>
     <li>
       <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_Overview_Tab.dita">2015-10-28 - Overview Tab Content id-AU20-22231: Modified instructions and example for mapping <sourcexml>cttr:annotsummary display-name="By Court" id="OI20"</sourcexml> and
         <sourcexml>cttr:annotsummary display-name="By Court" id="OI21"</sourcexml> to <targetxml>primlawhist:primlawhist xml:id="ref-OI20"</targetxml> and
         <targetxml>primlawhist:primlawhist xml:id="ref-OI21"</targetxml> respectively.</xref>
     </li>     
     <li>
       <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_History_Tab.dita">2015-10-16 - History Tab Content id-AU20-22230: Modified instruction and example for <targetxml>primlawhist:primlawhist</targetxml>.</xref>
     </li>
     <li>
       <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_Cases_Tab.dita">2015-10-16 - Cases Tab Content id-AU20-22229: Modified instruction and example for <targetxml>cttr:citingcase @treatment="citation"</targetxml>.</xref>
     </li>
     <li>
       <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_Overview_Tab.dita">2015-10-16 - Overview Tab Content id-AU20-22231: Modified instructions for Penalty.</xref>
     </li>
     <li>
       <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_Overview_Tab.dita">2015-10-16 - Overview Tab Content id-AU20-22231: Removed instructions for at a glance. No longer applicable</xref>
     </li>
     <li>
       <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_Analytics_Tab.dita">2015-10-16 - Analytics Tab Content id-AU20-22228: Modified mapping for all refsections - <targetxml>ref:anchor for newsletters textbooks dictionaries</targetxml>.</xref>
     </li>
     <li>
       <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_Analytics_Tab.dita">2015-10-16 - Analytics Tab Content id-AU20-22228: Modified mapping for <targetxml>citingpub</targetxml> for practical guidance, common format - same as Halsburys, Commentary, etc.</xref>
     </li>
     <li>
       <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_Analytics_Tab.dita">2015-10-16 - Analytics Tab Content id-AU20-22228: Modified mapping for <targetxml>citingpub</targetxml> with Halsbury's Laws</xref>
     </li>
     <li>
       <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_Analytics_Tab.dita">2015-10-16 - Analytics Tab Content id-AU20-22228: Modified mapping for "view legislation" link in head to <targetxml>doc:docinfo/doc:related-content/doc:related-content-link/ref:lnlink</targetxml>
       </xref>
     </li>
     <li>
       <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Citator_Introduction.dita">2015-10-16 - Introduction id-AU20-22215: Added instructions and example for date-timestamp of conversion and for 
         output from the business unit delivery (optional).</xref>
     </li>
   </ul>
 </section>    
 <section>
   <title>cttr 1.12 PROD</title>
     <ul>
       <li>
         <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_Overview_Tab.dita">2015-10-09 - Overview Tab Content id-AU20-22231: All items related to refsection within overview tab have been moved to location within cttr:head/cttr:citedstatlaw[@iscodified="false"].</xref>
       </li>      
       <li>
         <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_History_Tab.dita">2015-09-28 - History Tab Content id-AU20-22230: Added instructions for handling <sourcexml>entry/p-limited</sourcexml> mapping to <targetxml>primlawhist:histitemdiv/textitem</targetxml>
         </xref>
       </li>
       <li>
         <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_Analytics_Tab.dita">2015-09-28 - Analytics Tab Content id-AU20-22228: Added instructions for handling <sourcexml>heading/subtitle</sourcexml> by adding parentheses</xref>
       </li>
       <li>
         <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_Cases_Tab.dita">2015-09-22 - Cases Tab Content id-AU20-22229: Added instruction and example for <targetxml>decision:dates/decision:decisiondate</targetxml>
         </xref>
       </li>
       <li>
               <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_Overview_Tab.dita">2015-09-22 - Overview Tab Content id-AU20-22231: Added instructions and example for <sourcexml>cttr:annotations/heading/note/lnlink</sourcexml> to <targetxml>p/text/ref:crossreference</targetxml>
         </xref>
       </li>
       <li>
         <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_Overview_Tab.dita">2015-09-22 - Overview Tab Content id-AU20-22231: Added instructions and example for <sourcexml>cttr:annotations/heading/note/remotelink@href</sourcexml> to <targetxml>p/text/ref:lnlink@service="URL"</targetxml>
         </xref>
       </li>
       <li>
         <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_Analytics_Tab.dita">2015-09-22 - Analytics Tab Content id-AU20-22228: &gt;Added instructions and example for mapping <sourcexml>cttr:annotations/cttr:annot/heading/title/lnlink</sourcexml>
         </xref>
       </li>
       <li>
         <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_History_Tab.dita">2015-09-22 - History Tab Content id-AU20-22230: Added clarification of bodytext usage <sourcexml>cttr:annotations/annotsummary</sourcexml> and
           reference to p-limited mapping (id-CCCC-10419)</xref>
       </li>
       <li>
         <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_Analytics_Tab.dita">2015-09-22 - Analytics Tab Content id-AU20-22228: Added instructions and example for mapping <sourcexml>comm:citations/h/lnlink</sourcexml>
         </xref>
       </li>
       <li>
         <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_Analytics_Tab.dita">2015-09-22 - Analytics Tab Content id-AU20-22228: Modified instruction for LPG content, <sourcexml>subtitle</sourcexml> becomes 
           appended following <targetxml>title</targetxml> content after adding space before.</xref>
       </li>
       <li>
         <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_Analytics_Tab.dita">2015-09-22 - Analytics Tab Content id-AU20-22228: Modified instruction to place unique anchor id for LPG content <targetxml>ref:anchor@id="ref-LPG-analytical"</targetxml>
         </xref>
       </li>
       <li>
         <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Citator_Body-Legislative.dita">2015-09-22 - Body for Legislative Citator Docs id-AU20-22212: Added instructions and examples for standardized conversion
           of <sourcexml>lnlink</sourcexml> to <targetxml>ref:lnlink</targetxml> and <targetxml>ref:crossreference</targetxml>
         </xref>
       </li>
       <li>
         <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_Analytics_Tab.dita">2015-09-22 - Analytics Tab Content id-AU20-22228: Added instructions and examples for handling <targetxml>cttr:refsection</targetxml> when source
           does not include a source id value</xref>
       </li>
       <li>
         <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_History_Tab.dita">2015-09-22 - History Tab Content id-AU20-22230: Added instructions and example for handling <sourcexml>cttr:annot/heading/subtitle</sourcexml>, 
           separated by a single space and wrapped with parentheses</xref>
       </li>
       <li>
         <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_History_Tab.dita">2015-09-22 - History Tab Content id-AU20-22230: Corrected example for <targetxml>ref:anchor@id="historical-data-graph"</targetxml> so that the instructions
           match the example text</xref>
       </li>
       <li>
         <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_History_Tab.dita">2015-09-22 - History Tab Content id-AU20-22230: Corrected instruction for <targetxml>ref:anchor@id="HI1-historical-data-graph"</targetxml>
         </xref>
       </li>
       <li>
         <xref href="../../../Rosetta/common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2015-09-15 - ci.cite to lnci.cite id-CCCC-10268: Updated instruction to suppressed the attribute
           <sourcexml>@type</sourcexml> with value "legref" in target.
           Applicable on NZ Regulation and NZ Act from services [Webstar
           #6245139].</xref>
       </li>
       <li>
         <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2015-09-11 - docinfo:assoc-links to doc:related-content id-CCCC-10284: Correction to target XPATHs for 
           <sourcexml>lnlink[@service="QUERYLINK"]</sourcexml>, <sourcexml>lnlink[@service="ATTACHMENT"]</sourcexml>, 
           and <sourcexml>lnlink[@service="TRAVERSE"]</sourcexml>
           to add <targetxml>doc:related-content-item/doc:related-content-link</targetxml> before the existing 
           <targetxml>ref:lnlink</targetxml> element in the XPATH.</xref>
       </li>
       <li>
         <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2015-09-11 - docinfo:assoc-links to doc:related-content id-CCCC-10284: Added instruction for handling of
           <sourcexml>lnlink[@service="URL"]</sourcexml> inside <sourcexml>docinfo:assoc-links</sourcexml> or
           <sourcexml>docinfo:assoc-links-grp</sourcexml>.</xref>
       </li>       
       <li>
         <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_Cases_Tab.dita">2015-09-10 - Cases Tab Content id-AU20-22229: Removed instruction for mapping to <targetxml>@courtcode="{case:courtcode value}"</targetxml> Replaced instruction with
           Create <targetxml>cttr:citingcase/cttr:caseinfo/jurisinfo:courtinfo/jurisinfo:alternatecourtcode[@alternatecourtcode]</targetxml> using 
           <sourcexml>case:info/case:courtinfo/case:courtcode</sourcexml>
         </xref>
       </li>       
       <li>
         <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_History_Tab.dita">2015-09-01 - History Tab Content id-AU20-22230: Modified instructions for mapping <sourcexml>entry@id="HI6"/lnlink</sourcexml> map to 
           <targetxml>primlawhist:histitemdiv/ref:lnlink@xml:id="HI6"</targetxml>; also removed line of instruction regarding <sourcexml>cttr:annot</sourcexml> mapping to a new 
           <targetxml>primlawhist:histitem</targetxml>
         </xref>
       </li>
       <li>
         <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_History_Tab.dita">2015-09-01 - History Tab Content id-AU20-22230: Modified instructions for adding <targetxml>ref:anchor@id="HI1-historical-data-graph"</targetxml> for 
           <sourcexml>History annotations</sourcexml> to avoid multiple anchors.</xref>
       </li>
       <li>
         <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_Cases_Tab.dita">2015-08-28 - Cases Tab Content id-AU20-22229: Added new section and instructions for <sourcexml>cttr:annotations@annotationtype="subseqcases/heading/title@="CI11.1" - Consideration of Whole Act</sourcexml> 
           mapping</xref>
       </li>
       <li>
         <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_Analytics_Tab.dita">2015-08-28 - Analytics Tab Content id-AU20-22228: Added instructions for handling isbn and author information within a textbooks <sourcexml>cttr:annotations@annotgroup="BOO</sourcexml> 
           and minor modification to <sourcexml>cttr:annotations@annotgroup="HLA</sourcexml> in <targetxml>ref:link</targetxml> to include <targetxml>ref:locator-params/proc:param name="dpsi"</targetxml>
         </xref>
       </li>
       <li>
         <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_History_Tab.dita">2015-08-28 - History Tab Content id-AU20-22230: Added instructions for new <targetxml>ref:anchor@id="historical-data-graph"</targetxml> for 
           <sourcexml>History annotations</sourcexml>. Check also change for <targetxml>@xml:id</targetxml> value.</xref>
       </li>
       <li>
         <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_Overview_Tab.dita">2015-08-28 - Overview Tab Content id-AU20-22231: Modified mapping of <sourcexml>cttr:annotsummary[@id="OI20"]</sourcexml> to remove ambiguous id attribute value.</xref>
       </li>
       <li>
         <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_History_Tab.dita">2015-08-28 - History Tab Content id-AU20-22230: Added and modified instructions for handling History - Assent section</xref>
       </li>
     </ul> 
 </section>    
     
     
 <section>
   <title>cttr: 1.11 PROD</title>
   
   <ul>
     <li>
       <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_Overview_Tab.dita">2015-08-18 - Overview Tab Content id-AU20-22231: Modified examples of mapping to <targetxml>ref:lnlink</targetxml> for consistency in output.</xref>
     </li>
     <li>
       <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_Analytics_Tab.dita">2015-08-18 - Analytics Tab Content id-AU20-22228: Modified mapping of target for <sourcexml>param@name="topiccode"@value="#PA#{value}"</sourcexml>
       </xref>
     </li>
     <li>
       <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_Overview_Tab.dita">2015-08-13 - Overview Tab Content id-AU20-22231: Modified instructions for handling @id output for OI20 and OI21 with examples.</xref>
     </li>
     <li>
       <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_Overview_Tab.dita">2015-08-13 - Overview Tab Content id-AU20-22231: Removed typo from instructions in section relateded to OI19 Cases Activity by Provision.</xref>
     </li>
     <li>
       <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_History_Tab.dita">2015-08-13 - History Tab Content id-AU20-22230: Added instruction for adding <targetxml>ref:anchor</targetxml> following the start of the <targetxml>primlawhist:primlawhist</targetxml>.</xref>
     </li>
     <li>
       <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_Cases_Tab.dita">2015-08-13 - Cases Tab Content id-AU20-22229: Modified instruction and example for handling specific use case of p-limited when @id="CI4" mapping.</xref>
     </li>
     <li>
       <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_Analytics_Tab.dita">2015-08-13 - Analytics Tab Content id-AU20-22228: Modified mapping of target for <sourcexml>cttr:annotations@annotgroup="HLA"</sourcexml> to valid output per Cttr schema.</xref>
     </li>
     <li>
       <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_Overview_Tab.dita">2015-08-13 - Overview Tab Content id-AU20-22231: Added instruction and example for mapping <sourcexml>cttr:annotations id="OI12" with l@id="OI12B"/li/p/text/lnlink</sourcexml> maps to <targetxml>cttr:consideredlegis/cttr:legisinfo/cttr:citations/ref:crossreference</targetxml>.</xref>
     </li>
     <li>
       <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_Overview_Tab.dita">2015-07-29 - Overview Tab Content id-AU20-22231: Added global instruction for all <targetxml>cttr:refsection</targetxml> include
         a child element <targetxml>ref:anchor</targetxml> using a 'ref-' prefix with the source id attribute value.</xref>
     </li>
     <li>
       <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_History_Tab.dita">2015-07-29 - History Tab Content id-AU20-22230: Added instruction for <targetxml>cttr:refs/cttr:refsection xml:id="refssummary-HI1-History"</targetxml> 
         to add <targetxml>ref:anchor</targetxml> with <targetxml>@id="refssummary-HI1-History"</targetxml>
       </xref>
     </li>
     <li>
       <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_Cases_Tab.dita">2015-07-29 - Cases Tab Content id-AU20-22229: Added instruction for cttr:annotsummary[@display-name="Cases by Provision and Source"][@id="CI1"] to 
         add <targetxml>cttr:refssummary xml:id="CI1" summarytype="CIsummarychart"</targetxml>.</xref>
     </li>
     <li>
       <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_Analytics_Tab.dita">2015-07-29 - Analytics Tab Content id-AU20-22228: Added instructions for ensuring cttr:refsection has @reftype set and cttr:refsection/ref:anchor.</xref>
     </li>
     <li>
       <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_Overview_Tab.dita">2015-07-29 - Overview Tab Content id-AU20-22231: Modified mapping for OI19 Cases Activity by Provision.</xref>
     </li>
     <li>
       <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_Overview_Tab.dita">2015-07-29 - Overview Tab Content id-AU20-22231: Modified mapping for OI21 Cases Activity by Provision.</xref>
     </li>
     <li>
       <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_Overview_Tab.dita">2015-07-29 - Overview Tab Content id-AU20-22231: Modified mapping for <sourcexml>note@xml:id="OI12A"</sourcexml> to a billwarning.</xref>
     </li>
     <li>
       <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_Cases_Tab.dita">2015-07-29 - Cases Tab Content id-AU20-22229: table/p-limited[@id="CI4"] should be moved outside of the table and map to note.</xref>
     </li>
     <li>
       <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_Analytics_Tab.dita">2015-07-28 - Analytics Tab Content id-AU20-22228: Added instruction for handling <targetxml>ref:link</targetxml> and text for <sourcexml>link@refpt</sourcexml> and PCDATA 
         mixed within the <targetxml>text</targetxml> element.</xref>
     </li>
     <li>
       <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_Overview_Tab.dita">2015-07-28 - Overview Tab Content id-AU20-22231: Modified examples for <sourcexml>lnlink@refpt</sourcexml> mapping to <targetxml>ref:crossreference</targetxml>
         markup to be consistent.</xref>
     </li>
     <li>
       <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_Analytics_Tab.dita">2015-07-28 - Analytics Tab Content id-AU20-22228: Added instruction for handling signal to treatment mapping for <sourcexml>cttr:annot</sourcexml>.</xref>
     </li>
     <li>
       <xref href="../../../Rosetta/common_newest/Rosetta_inlineobject-Chof-emph-LxAdv-figure_ref.inlinobject.dita">2015-07-24 - emph/inlineobject to figure/ref:inlineobject id-CCCC-10359: When Inlineobject is followed by two emph
         elements of same typestyle <sourcexml>sup/emph/emph/inlineobject</sourcexml>then from Target we should drop the one emph element
         and the followed <sourcexml>emph/inlineobject</sourcexml> should mapped with
         <targetxml>emph/ref:inlineobject</targetxml> in Target.</xref>
     </li>
     <li>
       <xref href="../../../Rosetta/common_newest/Rosetta_inlineobject-Chof-emph-LxAdv-figure_ref.inlinobject.dita">2015-07-21 - emph/inlineobject to figure/ref:inlineobject id-CCCC-10359: When Inlineobject is followed by two emph
         elements of same typestyle then from Target we should drop the one emph element
         and the followed <sourcexml>emph/inlineobject</sourcexml> should mapped with
         <targetxml>figure/ref:inlineobject</targetxml> in Target.</xref>
     </li>
     <li>
       <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2015-07-16 - docinfo:assoc-links to doc:related-content id-CCCC-10284: Updated conversion for handling of
         <sourcexml>ci:cite/@normprotocol</sourcexml>, <targetxml>proc:param[@name="countrycode"]</targetxml>; added
         instructions for <sourcexml>docinfo:assoc-resource</sourcexml>.</xref>
     </li>
     <li>
       <xref href="../../../Rosetta/common_newest/Rosetta_person-LxAdv-person.person.dita">2015-07-16 - person to person:person id-CCCC-10428: Added instruction for
         <sourcexml>person/remotelink</sourcexml> mapping to <targetxml>ref:lnlink</targetxml>.</xref>
     </li>
     <li>
       <xref href="../../../Rosetta/common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2015-06-24 - remotelink to ref:crossreference id-CCCC-10465: Added clarification note about url, @normval, and @hrefclass. Webstar 302055.</xref>
     </li>
     <li>
       <xref href="../../../Rosetta/common_newest/Rosetta_inlineobject-Chof-emph-LxAdv-figure_ref.inlinobject.dita">2015-06-18 - emph/inlineobject to figure/ref:inlineobject id-CCCC-10359: When source is having emph followed by inlineobject inside base:h element <sourcexml>h/emph/inlineobject</sourcexml> than in Target it should Map it like <targetxml>emph/ref:inlineobject</targetxml> as emph containing text under it.</xref>
     </li>
   </ul>
   
 </section>    
     
 <section>
   <title>cttr: 1.9 PROD</title>
   
   <ul>
     <li>
       <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_Overview_Tab.dita">2015-06-16 - Overview Tab Content id-AU20-22231: Added mapping for <sourcexml>cttr:annotations@id="OP5NZ"</sourcexml> and containing nested 
         <sourcexml>note/note</sourcexml>. Per RFA #50 and #51.</xref>
     </li>
     <li>
       <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_History_Tab.dita">2015-06-16 - History Tab Content id-AU20-22230: Added mapping for <sourcexml>cttr:annotations</sourcexml> when @annotgroup="HP4". Per RFA #49.</xref>
     </li>     
     
     <li>
       <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_History_Tab.dita">2015-06-10 - History Tab Content id-AU20-22230: Modified mapping when a note precedes a <sourcexml>cttr:annotsummary</sourcexml> so as only one 
         <targetxml>bodytext</targetxml> is created in conversion per schema. RFA #46.</xref>
     </li>
     <li>
       <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_Analytics_Tab.dita">2015-06-10 - Analytics Tab Content id-AU20-22228: Added instruction to include mapping for optional <sourcexml>note@notetype="xref" @id="SCAI4"</sourcexml> to 
       <targetxml>cttr:head/cttr:citedseclaw/ref:crossreference - @id="SCAI4"</targetxml> because source data has changed - RFA #47.</xref>
     </li>
     <li>
       <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_Overview_Tab.dita">2015-06-10 - Overview Tab Content id-AU20-22231: Added mapping for a <sourcexml>p/text/inlineobject</sourcexml> which follows a <sourcexml>p/text</sourcexml> 
         with an instrument name such as "Act No 2 of 1995", add a single space to the text and then place the <targetxml>ref:inlineobject</targetxml> immediately 
         following the instrument name. The resulting output would appear as <sourcexml>primlawhist:histitem/bodytext/p/text - "instrument name" - ref:inlineobject</sourcexml>. 
         Per RFA #48.</xref>
     </li>     
     <li>
       <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_Analytics_Tab.dita">2015-06-10 - Analytics Tab Content id-AU20-22228: Completed instruction to include mapping for <sourcexml>case:info/note</sourcexml> with example. Per RFA #37.</xref>
     </li>
     <li>
       <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_History_Tab.dita">2015-05-27 - History Tab Content id-AU20-22230: Added mapping for /cttr:annot/heading/title contains section number AND /cttr:annot/heading/subtitle contains character
         like '4'. per RFA #43</xref>
     </li>
     <li>
       <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_Overview_Tab.dita">2015-05-27 - Overview Tab Content id-AU20-22231: Added mapping for <sourcexml>note/[@id="OI14"]/note/[id="OI16"]</sourcexml> per RFA #42.</xref>
     </li>
     <li>
       <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Citator_Body-Legislative.dita">2015-05-27 - Body for Legislative Citator Docs id-AU20-22212: Added mapping for <sourcexml>leg:shorttitle</sourcexml> to <targetxml>legisinfo:names/legisinfo:shorttitle</targetxml>
         per RFA #41.</xref>
     </li>
     <li>
       <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2015-05-22 - docinfo:assoc-links to doc:related-content id-CCCC-10284: Clarification. Not a new rule or target. Within
         rules handling <sourcexml>remotelink[@service="DOC-ID"]</sourcexml>, added statement to
         create containing elements <targetxml>ref:locator/ref:locator-key</targetxml> which hold
         <targetxml>ref:key-name</targetxml> and <targetxml>ref:key-value</targetxml>. The xpath
         is controlled by schema and so conversions have been correct. CI examples were correct.
         The narrative rule is now explicit. R4.5 Content Issue 2326.</xref>
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
       <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_History_Tab.dita">2015-04-29 - History Tab Content id-AU20-22230: Added mapping for /cttr:annot/heading/title contains section number AND /cttr:annot/heading/subtitle contains words 
         like 'Amended'.</xref>
     </li>
     
     <li>
       <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_History_Tab.dita">2015-04-22 - History Tab Content id-AU20-22230: Modified examples from using "Amending Law" to "Amending Legislation" to match new 
         content examples.</xref>
     </li>
     <li>
       <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_Overview_Tab.dita">2015-04-21 - Overview Tab Content id-AU20-22231: Added instructions for mapping <sourcexml>OP15</sourcexml> - Remove text: "In Force' from content of note/p/text in target.</xref>
     </li>
     <li>
       <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_Overview_Tab.dita">2015-04-21 - Overview Tab Content id-AU20-22231: Added instructions for mapping <sourcexml>cttr:annotations[@id="OI17"] and OI17.1</sourcexml> to <targetxml>cttr:refsection[@xml:id="refsection-OI17"]</targetxml>
       </xref>
     </li>
     <li>
       <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_Overview_Tab.dita">2015-04-21 - Overview Tab Content id-AU20-22231: Added instructions for mapping <sourcexml>cttr:annotations[@id="OP5"]  </sourcexml>  to <targetxml>cttr:refsection[@xml:id="refsection-OP5"]</targetxml> 
       </xref>
     </li>
     <li>
       <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_Overview_Tab.dita">2015-04-21 - Overview Tab Content id-AU20-22231: Added instructions for mapping <sourcexml>cttr:annotations[@id="OP3"]</sourcexml> to <targetxml>cttr:refsection[@xml:id="refsection-OP3"]</targetxml> 
       </xref>
     </li>
     <li>
       <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_Analytics_Tab.dita">2015-04-21 - Analytics Tab Content id-AU20-22228: Added instruction to include mapping for optional <sourcexml>case:info/note</sourcexml>
       </xref>
     </li>
     <li>
       <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_Overview_Tab.dita">2015-04-21 - Overview Tab Content id-AU20-22231: Added instructions for mapping <sourcexml>cttr:annotations[@id="OP26"]</sourcexml> to 'Cases tab'.</xref>
     </li>
     <li>
       <xref href="../../../Rosetta/DITA-PAC/AU20_Legislative_Citator/Leg_Citator_AUNZ_Analytics_Tab.dita">2015-04-21 - Analytics Tab Content id-AU20-22228: Added instruction to include mapping for optional <sourcexml>cttr:annot[@signal="citation"]/comm:info/contrib</sourcexml> and 
         <sourcexml>cttr:annot[@signal="citation"]/comm:info/isbn</sourcexml>
       </xref>
     </li>
     <li>
       <xref href="../../../Rosetta/common_newest/Rosetta_AU_legistlation_courtrule_inlineobject-Chof-remotelink-LxAdv-SUPPRESS.dita">2015-03-31 - remotelink/inlineobject SUPPRESS id-CCCC-10235: Clarification added to specify that this rule
         does not apply when the grandparent of
         <sourcexml>inlineobject</sourcexml>  is <sourcexml>ci:content</sourcexml>. (WebStar
         #5895292)</xref>
     </li>
     <li>
       <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.hier-LxAdv-doc.hier.dita">2015-03-25 - docinfo:hier to doc:hier id-CCCC-10297: Added note with rule for
         <sourcexml>title/num</sourcexml>. Suppress <sourcexml>num</sourcexml> tag but
         output content. Applicable for CA09 only. RFA 2249.</xref>
     </li>
     <li>
       <xref href="../../../Rosetta/common_newest/Rosetta_emp-Chof-heading_title-LxAdv-heading_title.dita">2015-03-18 - heading/title/emph to heading/title id-CCCC-10313: When <sourcexml>heading\title</sourcexml> contains <sourcexml>emph</sourcexml> and <sourcexml>PCDATA</sourcexml> under it then from target the emph tags will dropped and it's content along with PCDATA content will be put directly under <targetxml>title</targetxml> element . Applicable to UK09 only.</xref>
     </li>
     <li>
       <xref href="../../../Rosetta/common_newest/Rosetta_pgrp-LxAdv-pgrp.dita">2015-03-17 - pgrp to pgrp id-CCCC-10431: An attribute <targetxml>@inline</targetxml> get added with <targetxml>desig</targetxml> element even when the source<sourcexml>pnum</sourcexml> is not having that attribute<sourcexml>@inline</sourcexml> Applicable on CA12 only.</xref>
     </li>
     <li>
       <xref href="../../../Rosetta/common_newest/Rosetta_pnum-LxAdv-desig.dita">2015-03-17 - pnum to desig id-CCCC-10434: An attribute <targetxml>@inline</targetxml> get added with <targetxml>desig</targetxml> element even when the source<sourcexml>pnum</sourcexml> is not having that attribute<sourcexml>@inline</sourcexml> Applicable on CA12 only.</xref>
     </li>
     <li>
       <xref href="../../../Rosetta/common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2015-03-17 - ci.cite to lnci.cite id-CCCC-10268: An attribute <targetxml>@inline</targetxml> get added with <targetxml>desig</targetxml> element even when the source<sourcexml>pnum</sourcexml> is not having that attribute<sourcexml>@inline</sourcexml> Applicable on CA12 only.</xref>
     </li>
     <li>
       <xref href="../../../Rosetta/common_newest/Rosetta_pgrp-LxAdv-pgrp.dita">2015-02-24 - pgrp to pgrp id-CCCC-10431: Example updated as per new rule an attribute <targetxml>@inline</targetxml>get added with <targetxml>desig</targetxml>element when the source<sourcexml>pnum</sourcexml>is not having that attribute<sourcexml>@inline</sourcexml> 
       </xref>
     </li>
     <li>
       <xref href="../../../Rosetta/common_newest/Rosetta_pnum-LxAdv-desig.dita">2015-02-24 - pnum to desig id-CCCC-10434: An attribute <targetxml>@inline</targetxml>get added with <targetxml>desig</targetxml>element even when the source<sourcexml>pnum</sourcexml>is not having that attribute<sourcexml>@inline</sourcexml>
       </xref>
     </li>
     <li>
       <xref href="../../../Rosetta/common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2015-02-24 - ci.cite to lnci.cite id-CCCC-10268: Example updated as per new rule an attribute <targetxml>@inline</targetxml>get added with <targetxml>desig</targetxml>element when the source<sourcexml>pnum</sourcexml>is not having that attribute<sourcexml>@inline</sourcexml>
       </xref>
     </li>
     <li>
       <xref href="../../../Rosetta/common_newest/Rosetta_person-LxAdv-person.person.dita">2015-02-03 - person to person:person id-CCCC-10428: Added instruction for <sourcexml>name.detail/name.honorific</sourcexml>
         mapping to <targetxml>person:name.detail/person:name.honorific</targetxml>.</xref>
     </li>
     <li>
       <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.hier-LxAdv-doc.hier.dita">2015-01-23 - docinfo:hier to doc:hier id-CCCC-10297: Added note to convert
         <sourcexml>docinfo:hierlev/@exclude-from-displayunits="true"</sourcexml>
         into <targetxml>doc:hier/@includeintoc="false"</targetxml>.</xref>
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
       <xref href="../../../Rosetta/common_newest/Rosetta_link_refpt-LxAdv-ref.lnlink-ref.locator_anchoridref.dita">2014-11-24 - link/@refpt to ref:lnlink/ref.locator/@anchoridref id-CCCC-10395: Updated instruction for CA02-CC to drop
         <sourcexml>emph</sourcexml> in <sourcexml>link/emph</sourcexml>.</xref>
     </li>
     <li>
       <xref href="../../../Rosetta/common_newest/Rosetta_entry_p-limited-LxAdv-entry_p.dita">2014-11-11 - entry/p-limited to entry/p id-CCCC-10319: Updated instruction when multiple consecutive <sourcexml>p-limited</sourcexml> elements occur within <sourcexml>entry</sourcexml>.</xref>
     </li>
     <li>
       <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.overview-LxAdv-docinfo.overview.dita">2014-11-04 - docinfo:overview to doc:overview id-CCCC-10303: Clarification only: added text to explicitly indicate that the child <targetxml>doc:overview/bodytext</targetxml> should be created. Not a change to instructions.</xref>
     </li>
     <li>
       <xref href="../../../Rosetta/common_newest/Rosetta_entry_p-limited-LxAdv-entry_p.dita">2014-10-28 - entry/p-limited to entry/p id-CCCC-10319: Added note to handle scenario when <sourcexml>l</sourcexml> is a child of <sourcexml>entry/p-limited</sourcexml>.</xref>
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
       <xref href="../../../Rosetta/common_newest/Rosetta_emp-Chof-heading_title-LxAdv-heading_title.dita">2014-10-22 - heading/title/emph to heading/title id-CCCC-10313: Added an example to explicitly show child elements of <sourcexml>emph</sourcexml> being retained. (R4.5 Content Issue List #1998)</xref>
     </li>
     <li>
       <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.overview-LxAdv-docinfo.overview.dita">2014-10-21 - docinfo:overview to doc:overview id-CCCC-10303: added to UK09 ditamap.</xref>
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
       <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.overview-LxAdv-docinfo.overview.dita">2014-08-04 - docinfo:overview to doc:overview id-CCCC-10303: added to UK05 ditamap.</xref>
     </li>
     <li>
       <xref href="../../../Rosetta/common_newest/Rosetta_inlineobject-LxAdv-ref.inlineobject.dita">2014-07-08 - inlineobject to ref:inlineobject id-CCCC-10369: Not a rule change. Clarification added to note regarding suppression of <sourcexml>inlineobject</sourcexml> when <sourcexml>inlineobject/@filename</sourcexml> contains certain values.</xref>
     </li>
     <li>
       <xref href="../../../Rosetta/common_newest/Rosetta_table-LxAdv-table.dita">2014-07-08 - table to table id-CCCC-10475: Updated instruction for added the
         following rarely occurring attributes <sourcexml>@char</sourcexml> inside the <sourcexml>entry</sourcexml>.</xref>
     </li>
     <li>
       <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.versioninfo-LxAdv-doc.versioninfo-scheme.dita">2014-07-02 - docinfo:versioninfo to doc:versioninfo id-CCCC-10307: Edit a note for Canada only to generate
         <targetxml>@day</targetxml> attribute value must be in sequential digit
         number. No need to add leading zero (0) to make the value in two digits. This
         immediate applies to ALL Canada streams.</xref>
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
       <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.versioninfo-LxAdv-doc.versioninfo-scheme.dita">2014-06-09 - docinfo:versioninfo to doc:versioninfo id-CCCC-10307: Added note for Canada only to generate
         <targetxml>@day</targetxml> attribute value as per the source. No need to
         add zero (0) to make the value in two digits. This immediate applies to ALL
         Canada streams.</xref>
     </li>
     <li>
       <xref href="../../../Rosetta/common_newest/Rosetta_emp-Chof-heading_title-LxAdv-heading_title.dita">2014-06-04 - heading/title/emph to heading/title id-CCCC-10313: Clarified instructions and added an example to show multiple <sourcexml>emph</sourcexml> elements being handled.</xref>
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
   </ul>
   
 </section>
 
 
 <section>
   <title>cttr: 3.9 ALPHA</title>
   
   <p>
     <ol>
       <li>2014-05-14 - correction of mapping:
         <sl>        
           <sli><xref href="Leg_Citator_AUNZ_Overview_Tab.dita">
             Corrected mapping and example xpath for cttr:annotations/heading/title()="At a glance" </xref>
           </sli>
         </sl>
       </li>
     </ol>
     
   </p>
   
   <p>    
     <ol>
       <li>2014-05-12 - added new instructions for mapping:
         <sl>
           <sli><xref href="Leg_Citator_AUNZ_Overview_Tab.dita">
             Added instructions for handling <sourcexml>cttr:annotations[@id="OP7"]</sourcexml></xref>
           </sli>
           

           <sli><xref href="Leg_Citator_AUNZ_History_Tab.dita">
             Corrected example p.90, the target example for Target Primlaw History - Assent, <targetxml>primlawhist:histitem</targetxml> content is modeled incorrectly 
             per schema.</xref>
           </sli>
           <sli>Added instructions and example for mapping: <xref href="Leg_Citator_AUNZ_Overview_Tab.dita"><sourcexml>cttr:annotations with 2 or more cttr:annot within 
             "At a Glance"</sourcexml></xref> to 2 or more <targetxml>primlawhist:histgrp</targetxml> elements.
           </sli>
           <sli><xref href="Leg_Citator_AUNZ_Analytics_Tab.dita">
             Modified instructions for handling cttr:citingpub mapping of analytical materials - cttr:content/cttr:annotations[@annotgroup="HLA"]</xref></sli>
           
           <sli><xref href="Leg_Citator_AUNZ_History_Tab.dita">
             Updated mapping instructions for cttr:annotations/heading/title()="History" and cttr:annotsummary contents include text or table.</xref>
           </sli>
           <sli>
             <xref href="Leg_Citator_AUNZ_Overview_Tab.dita">
               Confirmed including of mapping for <sourcexml>cttr:annotations/heading/title/lnlink/marker/text()="View all cases"</sourcexml> as noted below.</xref>
           </sli> 
         </sl>
         
       </li>
     </ol>
   </p>
   
   <p>
     <ol>
       <li>2014-05-09 -  added new instructions for mapping:
         
         <sl>
           <sli><xref href="Leg_Citator_AUNZ_Overview_Tab.dita">
             Added instructions for handling <sourcexml>cttr:annotations/heading/lnlink/marker contains the text "View all Cases"</sourcexml></xref>
           </sli>
           <sli>
             Multiple occurences of the same id in <sourcexml>heading/note/h</sourcexml> should be handled by adding an alpha character such as
             <targetxml>xml:id="OI4"...xml:id="OI4a"...xml:id="0I4b"...</targetxml>
           </sli>
         </sl>
       </li>
     </ol>
   </p>
    
    <p>
     <ol>
       <li>2014-05-08 -  added new instructions for mapping:
         
         <sl>
           <sli><xref href="Leg_Citator_AUNZ_Overview_Tab.dita">
             Added instructions for handling <sourcexml>cttr:annotations/cttr:annot[@id="OP24"]</sourcexml></xref>
           </sli>
         </sl>
       </li>
       
     </ol> 
    </p> 
      
     <p> 
     <ol>
       <li>2014-05-01 -  added new instructions for mapping:
         
         <sl>
           <sli><xref href="Leg_Citator_AUNZ_Overview_Tab.dita">
             Added instructions for handling <sourcexml>cttr:annotations/cttr:annot[@id="OP4"]</sourcexml></xref></sli>
           
           <sli><xref href="Leg_Citator_AUNZ_Analytics_Tab.dita">
             Added instructions for handling <sourcexml>cttr:annotations@annotgroup="LNZ"</sourcexml></xref>
           </sli>
           
           <sli><xref href="Leg_Citator_AUNZ_History_Tab.dita">
             Added instructions for handling <sourcexml>cttr:annotations@annotgrp="prov-am"</sourcexml> and
             <sourcexml>cttr:annotations@annotgrp="prov-al"</sourcexml></xref>
           </sli>              
         </sl>
         
         
       </li>
     </ol>
       
     </p>
   
 </section>
 
    <section>
      <title>cttr 3.8 ALPHA</title>
      
      
      <p>
        <ol>
          <li>2014-04-10 - added new instructions for mapping:
          
          <sl>
            <sli><xref href="Leg_Citator_AUNZ_Cases_Tab.dita">
              Added instruction to suppress <sourcexml>/table/p-limited[@id="CI4"]</sourcexml></xref></sli>
            
            <sli><xref href="Leg_Citator_AUNZ_Overview_Tab.dita">
              Added instructions for handling <sourcexml>cttr:annotsummary/[@id="OP23"]</sourcexml> mapping to 
              <targetxml>cttr:refsection/[@xml:id="refsection-OP23"]</targetxml> 
            </xref>
            </sli>
            
          </sl></li>
        </ol>
        
        
        
      </p>
      
      <p>2014-03-13 - MLV: 
        <ol>
          <li>
            <sl>
              <sli>2014-03-13 - added new instructions for mapping:</sli>
              <sli><xref href="Leg_Citator_AUNZ_Cases_Tab.dita">
                <sourcexml>cttr:annotsummary</sourcexml> mapping to <targetxml>cttr:refssummarygroup</targetxml> for use by presentation team as specialized graphs and charts.</xref></sli>
              <sli><xref href="Leg_Citator_AUNZ_Overview_Tab.dita">
                added new instructions for mapping mapping non-standard <sourcexml>cttr:annotation/heading/note</sourcexml> to <targetxml>cttr:refsection/primlawhist:histitem</targetxml>
                </xref></sli>
            </sl></li>
        </ol>
        
      </p>
      
    </section>               
                
            
    
    <section>
      <title>cttr 3.7 ALPHA</title>
      
      <p>2014-02-07 - MLV: 
      <ol>
        <li>2014-01-13 - added instructions for mapping: 
          <sl>
            <sli><xref href="Citator_Body-Legislative.dita">
              Change to mapping of <sourcexml>leg:officialname, leg:status and the note containing the provision number</sourcexml>
            </xref>
            </sli>

            <sli><xref href="Leg_Citator_AUNZ_History_Tab.dita">
              Added mapping specific to legfragment markup found within a p element in cttr:annotations.
            </xref>
            </sli>

            <sli><xref href="Leg_Citator_AUNZ_Analytics_Tab.dita">
              Updated instructions for refsummary creation.
            </xref>
            </sli>            

            <sli><xref href="Leg_Citator_AUNZ_Analytics_Tab.dita">
              Updated <sourcexml>cttr:citingpub</sourcexml> mapping for Halsbury's Law of Australia (HLA) with
              multiple reference links.</xref>
            </sli>
            
            <sli><xref href="Leg_Citator_AUNZ_Cases_Tab.dita">
              Updated <sourcexml>cttr:annotsummary</sourcexml> mapping for references summary for 
            </xref>
            </sli>            
            
          </sl>
          
        </li>
      </ol>
      
      </p>
      
    </section>
    
    <section>
      <title>cttr 3.6 ALPHA</title>
      
      <p>2014-01-13 - MLV: <ol>
        <li>2014-01-13 - added instructions for mapping: <sl>
          <sli><xref href="Leg_Citator_AUNZ_Analytics_Tab.dita">
            Change to mapping of text nodes in /cttr:annot/comm:citations</xref></sli>
          <sli><xref href="Leg_Citator_AUNZ_Cases_Tab.dita">Added new instructions for
            mapping cttr:refssummarygroup for each CI1 table input.</xref></sli>
          <sli><xref href="Leg_Citator_AUNZ_Overview_Tab.dita">Change to mapping of h tag and text content when
            cttr:annot/heading/title/text()="Replacing" AND leg:info/leg:officialname and leg:info/note exist</xref></sli>
          <sli><xref href="Leg_Citator_AUNZ_History_Tab.dita">Change to mapping for heading/note/[@id="HI4"]</xref>
          </sli>  
 
          <sli><xref href="Leg_Citator_AUNZ_History_Tab.dita">Clarified mapping by adding more robust xpath for          
          cttr:annotations/cttr:annot/leg:citations/leg:citetext</xref>
          </sli>
          <sli><xref href="Citator_Body-Legislative.dita">Added instructions and example for provisionnumber within
          leg:info source content.</xref></sli>
        </sl>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_link_refpt-LxAdv-ref.lnlink-ref.locator_anchoridref.dita">
            Update instructions to include handling @dpsi attribute
          </xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_footnote-LxAdv-footnote.dita">2014-01-06 - footnotegrp and footnote to footnotegrp and footnote: Updated target example for applying the rule of "deleting extraneous
            instances of @morerows, @colsep and @rowsep" in sample documents.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2013-12-30 - ci.cite to lnci.cite: Minor illustrative change. Added "(AU
            Journals/Newsitem)" to headings for last example to clarify that retention of
            <sourcexml>@type="cite4thisdoc"</sourcexml> is an exception for that
            content, as already described in narrative rules.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_deflist-LxAdv-deflist.dita">2013-12-20 - deflist to deflist: Added note to place a <sourcexml>footnote</sourcexml> or <sourcexml>fnr</sourcexml> that is a child of <sourcexml>defitem</sourcexml> into one of its children. WebTeam #5158742 - AU04.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_glp.note_blockquote_p_text_inlineobject-LxAdv-note_bodytext_p_text.dita">2013-12-20 - glp:note:  Corrected the target example (added ref:corssreference). WebTeam #5158742 - AU04. Applies generally to all LBUs and streams.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_endnote-LxAdv-endnote.dita">2013-12-18 - endnote to endnote: Instruction added to convert <sourcexml>remotelink/@refpt</sourcexml> to <targetxml>footnote-ref/@anchoridref</targetxml>.  WebTeam #5158742 - AU04. Applies generally to all LBUs and streams.</xref>
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
          <xref href="../../common_newest/Rosetta_glp.note-Chof-li-LxAdv-listitem-note.dita">2013-11-07 - l/glp:note to list/note: Fixed title to correctly indicate mapping described. Not a rule change.</xref>
        </li>
      </ol>
      </p>
    </section>
    <section>
      <title>cttr 3.5 ALPHA</title>
      <p>2013-11-01 - MLV: <ol>
          <li>2013-10-31 - added instructions for mapping: <sl>
              <sli><xref href="Leg_Citator_AUNZ_Analytics_Tab.dita">Change to include
                  note@notetype="xref"@id="SCAP4" for annotations.</xref></sli>
              <sli><xref href="Leg_Citator_AUNZ_Cases_Tab.dita">cttr:annotations/cttr:annotsummary -
                  subsequentcases change (Need Schema change)</xref></sli>
              <sli><xref href="Leg_Citator_AUNZ_Overview_Tab.dita">cttr:annot/heading/title/text()="Replacing" AND leg:info/leg:officialname and
                  leg:info/note exist.</xref></sli>
              <sli><xref href="Leg_Citator_AUNZ_History_Tab.dita">cttr:annotations/cttr:annot/leg:citations</xref></sli>
            </sl>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_docinfo.currencystatement-LxAdv-currencystatement.dita">2013-10-29 - docinfo:currencystatement to doc:docinfo/currencystatement: WebTeam
              #233318 created for pacific content stream inorder to suppress
                <sourcexml>docinfo:currencystatement</sourcexml> with in
                <sourcexml>leg:levelinfo</sourcexml> and <sourcexml>levelinfo</sourcexml>.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_docinfo.overview-LxAdv-docinfo.overview.dita">2013-10-29 - docinfo:overview to doc:overview: WebTeam #233318 created for pacific
              content stream inorder to suppress <sourcexml>docinfo:overview</sourcexml> with in
                <sourcexml>leg:levelinfo</sourcexml> and <sourcexml>levelinfo</sourcexml>.</xref>
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
          <li>
            <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-10-23 - remotelink to ref:crossreference: Added Example when
                <sourcexml>remotelink</sourcexml> having child <sourcexml>emph</sourcexml>. Webteam
              # 239816</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_figure-LxAdv-figure.dita">2013-10-23 - figure to
              figure: Added instruction for handling figure/p/text/inlineobject Webteam #
              239816</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_edpnum-LxAdv-desig.dita">2013-10-22 - edpnum to
              desig: Not a rule change. Modified 2nd example for clarity. Removed
                <sourcexml>refpt</sourcexml> from source markup. Not pertinent to
                <sourcexml>edpnum</sourcexml> rules. Separate rules for <sourcexml>refpt</sourcexml>
              provide details. Responds to UK LBU query.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_docinfo.doc-heading-LxAdv-dc.title.dita">2013-10-18 - docinfo:doc-heading to dc:title: Updated Instruction when
                <sourcexml>docinfo:doc-heading</sourcexml> contains word RULE: " or STATUTE:
              .</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_Elements-LxAdv-Empty_Elements.dita">2013-10-14 -
              Suppress each empty element unless otherwise stated: Changed antecedent to singular to
              match instructions.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_deflist-LxAdv-deflist.dita">2013-10-14 - deflist
              to deflist: Added new rule to create a blank defitem/defdesc element after the defterm
              element. WebTeam # 237242.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_docinfo.authorattribution-LxAdv-dc.contributor.dita">2013-10-11 - docinfo:authorattribution to dc:contributor: Instruction added when
                <sourcexml>remotelink</sourcexml> as a child of
                <sourcexml>docinfo:authorattribution/contrib</sourcexml>. WebTeam # is
              240252.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_refpt-Chof-p_text-LxAdv-p_ref.anchor.dita">2013-10-11 - refpt child of p/text to p/ref:anchor: Added a note and update the
              target examples when refpt comes without attribute
                <sourcexml>[@type="ext"]</sourcexml> and <sourcexml>[@type="local"]</sourcexml> in
              source documents.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_refpt-Chof-p_text_emph-LxAdv-p_ref.anchor.dita">2013-10-11 - refpt child of p/text/emph to p/ref:anchor: Added a note and update the
              target examples when refpt comes without attribute
                <sourcexml>[@type="ext"]</sourcexml> and <sourcexml>[@type="local"]</sourcexml> in
              source documents.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_p-LxAdv-p.dita">2013-10-09 - p to p: Added
              instruction and example <sourcexml>p</sourcexml> comes with
                <sourcexml>@nl=”0”</sourcexml>.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_docinfo.authorattribution-LxAdv-dc.contributor.dita">2013-10-08 - docinfo:authorattribution to dc:contributor: Instruction added for
              handling <sourcexml>docinfo:authorattribution</sourcexml> when it is having a running
              text. Affects all Pacific content streams. WebTeam # is 238798.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_endnote-LxAdv-endnote.dita">2013-10-07 - endnote
              to endnote: Instruction and example for added for the Xpath
                <sourcexml>leg:bodytext/glp:note/l/li</sourcexml> related to
                <targetxml>endnote</targetxml> handling. WebTeam # is 238790.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-10-03 - remotelink to ref:crossreference: Added use case where remotelink
              contains @href which is a URL but does not contain @hrefclass='http'.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_footnote-LxAdv-footnote.dita">2013-10-02 -
              footnotegrp and footnote to footnotegrp and footnote: Not a rule change. Cleaned up
              the note regarding the scenario when footnote/@fntoken has a value of "0" in an
              attempt to make the directions clearer.</xref>
          </li>
        </ol>
      </p>
    </section>

    <section>
      <title>ALPHA Release 1.2</title>
      <p>2013-09-25: Added instructions for mapping: <sl>
          <sli><xref href="Leg_Citator_AUNZ_Analytics_Tab.dita">note@notetype="summary" id="SAI5"
              and id="SAI6" to cttr:refsummary</xref></sli>
          <sli><xref href="Leg_Citator_AUNZ_Analytics_Tab.dita">cttr:annotations/[@annotgroup="jumps"]</xref></sli>
          <sli><xref href="Leg_Citator_AUNZ_Analytics_Tab.dita">note@notetype="summary" id="SCAP5"
              and id="SCAP6" to cttr:refsummary</xref></sli>
          <sli><xref href="Citator_Body-Legislative.dita">table/p-limited to table/note</xref></sli>
          <sli><xref href="Citator_Body-Legislative.dita">Added generic instruction regarding notes
              with ID values not specifically covered in this CI.</xref></sli>
        </sl>
      </p>
      <p><xref href="Leg_Citator_AUNZ_Analytics_Tab.dita">Modifications to instructions for: [HLA]
          /cttr:citingpub/cttr:citations/lnci:cite</xref>
      </p>
    </section>



    <section>
      <title>Alpha Release 1.1</title>
      <p>2013-08-14: Added instructions for mapping source elements: <sl>
          <sli><sourcexml>case:info</sourcexml></sli>
          <sli><sourcexml>case:casename</sourcexml></sli>
          <sli><sourcexml>case:courtinfo</sourcexml></sli>
          <sli><sourcexml>case:courtname</sourcexml></sli>
          <sli><sourcexml>case:courtcode</sourcexml></sli>
          <sli><sourcexml>case:judges</sourcexml></sli>
          <sli><sourcexml>case:judge</sourcexml></sli>
          <sli><sourcexml>case:dates</sourcexml></sli>
          <sli><sourcexml>case:decisiondat</sourcexml>e</sli>
          <sli><sourcexml>case:constituents</sourcexml></sli>
          <sli><sourcexml>case:citations</sourcexml></sli>
          <sli><sourcexml>case:citetext</sourcexml></sli>
        </sl>
      </p>
      <p>Added instruction for <sourcexml>note display-name="Catchwords"</sourcexml>.</p>
      <p>Updated Example for instruction : If leg:info contains leg:info/note[@id="SAI4"] place
        leg:info/note[@id="SAI4"]/p/remotelink as child of
        cttr:head/cttr:citedseclaw/lnci:cite/lnci:content . </p>
    </section>

    <section>
      <title>Alpha Release 1.0</title>
      <p>[2013-05-08] MLV: Initial review version with AU business unit.</p>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU20_Legislative_Citator\change-log.dita  -->
	<xsl:message>AU20_Legislative_Citator_change-log.xsl requires manual development!</xsl:message> 

</xsl:stylesheet>