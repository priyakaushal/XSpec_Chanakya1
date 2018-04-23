<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:ci="http://www.lexis-nexis.com/ci" xmlns:comm="http://www.lexis-nexis.com/glp/comm" xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" xmlns:glp="http://www.lexis-nexis.com/glp" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:source_lnci="http://www.lexis-nexis.com/lnci" xmlns:classify="http://www.lexisnexis.com/xmlschemas/content/shared/classification/1/" xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" xmlns:form="http://www.lexisnexis.com/xmlschemas/content/shared/form/1/" xmlns:lnci="http://www.lexisnexis.com/xmlschemas/content/shared/citations/1/" xmlns:person="http://www.lexisnexis.com/xmlschemas/content/shared/person/1/" xmlns:proc="http://www.lexisnexis.com/xmlschemas/content/shared/process-elements/1/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" xmlns:seclaw="http://www.lexisnexis.com/xmlschemas/content/legal/secondary-law/1/" version="2.0" exclude-result-prefixes="dita ci comm docinfo glp leg lnci">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="LPA-PracticalGuidance_ChangeManagement">
  <title>US Practical Guidance - Change Log</title>
  <body>
    
    <section>
      <title>seclaw 8.10_PROD</title>
      <p>2017-02-08 - SNB: 
        <ul>
          <li>
            <xref href="../../../Rosetta/DITA-US/US_LPA/LPA-PracticalGuidance_Guidance-US.dita">2017-02-07 - heading id-USPA-31025: LPA 2016 enhancements: Added note about possibility that 
              <sourcexml>heading/title</sourcexml> contains <sourcexml>nl</sourcexml> and reference to the 
              General Mapping section for instructions.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/DITA-US/US_LPA/LPA-PracticalGuidance_Guidance-US.dita">2017-02-07 - bodytext id-USPA-31026: LPA 2016 enhancements: Added specific instruction regarding
              mapping <sourcexml>bodytext/note</sourcexml> to <targetxml>seclaw:bodytext/note</targetxml>, with a reference to 
              the General Markup section for this mapping. Also added this mapping to the General Markup section 
              (the mapping instructions already existed but were not previously included in this LPA 
              conversion instruction document.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/LPA-PracticalGuidance_FormsPrecedents.dita">2017-02-07 - level id-CCCC-10161: LPA 2016 enhancements: Added note about possibility that 
              <sourcexml>heading/title</sourcexml> contains <sourcexml>nl</sourcexml> and reference to the 
              General Mapping section for instructions.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/LPA-PracticalGuidance_FormsPrecedents.dita">2017-02-07 - clause id-CCCC-10173: LPA 2016 enhancements: Clarified that 
              <sourcexml>clause[@clause-type="group"]</sourcexml> maps to 
              <targetxml>form:clausegrp</targetxml> as described in the 
              clause[@clause-type="group"] (id-USPA-31011) section of this 
              document.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/LPA-PracticalGuidance_FormsPrecedents.dita">2017-02-07 - clause id-CCCC-10173: LPA 2016 enhancements: Added mapping of 
              <sourcexml>clause/heading</sourcexml> to <targetxml>form:clause/heading</targetxml>.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/LPA-PracticalGuidance_FormsPrecedents.dita">2017-02-07 - clause id-CCCC-10173: LPA 2016 enhancements: Added mapping of 
              <sourcexml>@include-in-toc</sourcexml> to <targetxml>@includeintoc</targetxml>.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/LPA-PracticalGuidance_FormsPrecedents.dita">2017-02-07 - clause id-CCCC-10173: LPA 2016 enhancements: Added note regarding mapping of 
              <sourcexml>clause/refpt</sourcexml> to <targetxml>form:clause/ref:anchor</targetxml>, and 
              <sourcexml>clause/frm:clausecaption</sourcexml> to 
              <targetxml>form:clause/form:info/form:clausecaption</targetxml>. Also reworded to indicate that these 
              elements are NOT encapsulated within a <targetxml>form:bodytext</targetxml> in the target document.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/LPA-PracticalGuidance_FormsPrecedents.dita">2017-02-07 - clause id-CCCC-10173: LPA 2016 enhancements: Added markup example for a clause 
              with autonumbering parameters, <sourcexml>@include-in-toc</sourcexml>, <sourcexml>heading</sourcexml>, 
              <sourcexml>clause/refpt</sourcexml>, and 
              <sourcexml>clause/frm:clausecaption</sourcexml>.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/LPA-PracticalGuidance_FormsPrecedents.dita">2017-02-07 - clause id-CCCC-10173: LPA 2016 enhancements: Added new mapping for  
              <sourcexml>clause/frm:clausecaption</sourcexml> to 
              <targetxml>form:clause/form:info/form:clausecaption</targetxml>.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/DITA-US/US_LPA/LPA-PracticalGuidance_FillableForms.dita">2017-02-07 - clause[@clause-type="group"] id-USPA-31011: LPA 2016 enhancements: Added mappings for 
              auto-numbering attributes: <sourcexml>@label-type</sourcexml>, <sourcexml>@label-prefix</sourcexml>, 
              <sourcexml>@clause-number-profile</sourcexml>, <sourcexml>@glyph-code</sourcexml>.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/DITA-US/US_LPA/LPA-PracticalGuidance_FillableForms.dita">2017-02-07 - clause[@clause-type="group"] id-USPA-31011: LPA 2016 enhancements: Added markup example for a clause 
              group with autonumbering parameters, nested auto-numbered clause group, <sourcexml>@include-in-toc</sourcexml>, 
              <sourcexml>heading</sourcexml>, <sourcexml>clause/refpt</sourcexml>, and 
              <sourcexml>clause/frm:clausecaption</sourcexml>.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/DITA-US/US_LPA/LPA-PracticalGuidance_FillableForms.dita">2017-02-07 - clause[@clause-type="alternate"] id-USPA-31014: LPA 2016 enhancements: Added note regarding mapping of 
              <sourcexml>clause/refpt</sourcexml> to <targetxml>form:clause/ref:anchor</targetxml>, and 
              <sourcexml>clause/frm:clausecaption</sourcexml> to 
              <targetxml>form:clause/form:info/form:clausecaption</targetxml>. 
              Also modified the example to show these mappings.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/DITA-US/US_LPA/LPA-PracticalGuidance_FillableForms.dita">2017-02-07 - clause[@clause-type="optional"] id-USPA-31015: LPA 2016 enhancements: Added note regarding mapping of 
              <sourcexml>clause/refpt</sourcexml> to <targetxml>form:clause/ref:anchor</targetxml>, and 
              <sourcexml>clause/frm:clausecaption</sourcexml> to 
              <targetxml>form:clause/form:info/form:clausecaption</targetxml>. 
              Also modified the example to show these mappings.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/DITA-US/US_LPA/LPA-PracticalGuidance_FillableForms.dita">2017-02-07 - comm:info/contrib/note/p/text id-USPA-31018: LPA 2016 enhancements: Removed all mapping of 
              <sourcexml>comm:info/contrib/note/p/text</sourcexml> to 
              <targetxml>form:document/form:dochead/form:line</targetxml>. The content that had previously 
              been in this source element is now handled as part of the mapping of author information in the 
              metadata section of this conversion instruction (id-CCCC-10526).</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_contrib-person.dita">2017-02-07 - COMMENTARYDOC/comm:info/contrib[person] id-CCCC-10526: LPA 2016 enhancements: Change the title of this section 
              to reflect that this is a mapping for when <sourcexml>comm:info/contrib</sourcexml> contains 
              a <sourcexml>person</sourcexml>, but doesnt just map that element. Changed mapping to map text content of
              <sourcexml>comm:info/contrib</sourcexml> as 
              well as <sourcexml>comm:info/contrib/person</sourcexml> to be content of 
              <targetxml>dc:contributor</targetxml>. This change allows editorially-created text content with author 
              embedded to be mapped to LexisAdvance content for display in the author section of the target 
              document. Updated the example accordingly.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_break-LxAdv-break.dita">2017-02-07 - break to break id-CCCC-10557: LPA 2016 enhancements: Created new mapping for new 
              elements <sourcexml>break</sourcexml> to <targetxml>break</targetxml>.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_sigblock-LxAdv-form.sigblock.dita">2017-02-07 - sigblock within a Form to form:sigblock id-CCCC-10555: LPA 2016 enhancements: New section. 
              Reflects new markup in precedents for signature blocks.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_note-LxAdv-note.dita">2017-02-07 - note to note id-CCCC-10405: LPA 2016 enhancements: Added this mapping instruction to 
              LPA conversion instruction document, and added an example of a practice tip note 
              (<sourcexml>note[@notetype="practice-tip"]</sourcexml>).</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_deflist-Chof-p_text-LxAdv-p_deflist.dita">2016-12-08 - p/text/deflist to p/deflist id-CCCC-10276: Added instruction to handle running text
              which is comes before <sourcexml>deflist</sourcexml> and it comes under
              <sourcexml>p/text</sourcexml>.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2016-11-16 - docinfo:assoc-links to doc:related-content id-CCCC-10284: Added to note regarding applying any rules related to 
              <targetxml>@anchoridref</targetxml>, referring specifically to section for "Identifiers to ID Data Type - 
              Handling Pattern Restrictions".</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_link_refpt-LxAdv-ref.lnlink-ref.locator_anchoridref.dita">2016-11-16 - link/@refpt to ref:lnlink/ref.locator/@anchoridref id-CCCC-10395: Added to note regarding applying any rules related to 
              <targetxml>@anchoridref</targetxml>, referring specifically to section for "Identifiers to ID Data Type - 
              Handling Pattern Restrictions".</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2016-11-16 - remotelink to ref:crossreference id-CCCC-10465: Added to note regarding applying any rules related to 
              <targetxml>@anchoridref</targetxml>, referring specifically to section for "Identifiers to ID Data Type - 
              Handling Pattern Restrictions".</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_endnote-LxAdv-endnote.dita">2016-11-16 - endnote to endnote id-CCCC-10317: Added to note regarding applying any rules related to 
              <targetxml>@anchoridref</targetxml>, referring specifically to section for "Identifiers to ID Data Type - 
              Handling Pattern Restrictions".</xref>
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
        </ul>
      </p>
    </section>

    <section>
      <title>seclaw 8.9_PROD</title>
      <p>2016-09-22 - SNB: 
        <ul>
          <li>
            <xref href="../../../Rosetta/DITA-US/US_LPA/LPA-PracticalGuidance_Head-US.dita">2016-09-22 - Head id-USPA-31027: Changes for webstar 6588711. Removed creation of 
              <targetxml>/seclaw:head/ref:citations</targetxml> because no usable citation 
              or identifier exists with which to populate its content. 
              Unless instructions exist elsewhere in this CI to create descendant content of 
              <targetxml>/seclaw:head</targetxml>, the target document will contain an empty 
              <targetxml>/seclaw:head</targetxml> element.</xref>
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
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_glp.note_blockquote_p_text_inlineobject-LxAdv-note_bodytext_p_text.dita">2016-08-05 - glp:note id-CCCC-10341: Added Note about xml snippets that
              illustrate image handling. Note summarizes move from Apollo to Blobstore
              application. UK is first LBU to move to Blobstore. </xref>
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
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_inlineobject-Chof-emph-LxAdv-figure_ref.inlinobject.dita">2016-08-01 - emph/inlineobject to figure/ref:inlineobject id-CCCC-10359: Added Note about xml snippets that illustrate
              image handling. Note summarizes move from Apollo to Blobstore application. UK is
              first LBU to move to Blobstore.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_inlineobject-Chof-dispformula-LxAdv-formula_ref.inlineobject.dita">2016-08-01 - dispformula/inlineobject to formula/ref:inlineobject id-CCCC-10358: Added Note about xml snippets that illustrate
              image handling. Note summarizes move from Apollo to Blobstore application. UK is
              first LBU to move to Blobstore.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2016-07-29 - docinfo:assoc-links to doc:related-content id-CCCC-10284: Added Note about xml snippets that illustrate image
              handling. Note summarizes move from Apollo to Blobstore application. UK is first LBU to
              move to Blobstore.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.alt-renditions-LxAdv-doc.alt-renditions.dita">2016-07-29 - docinfo:alt-renditions/docinfo:alt-rendition to doc:alt-renditions/doc:alt-rendition id-CCCC-10283: Added Note about xml snippets that illustrate
              image handling. Note summarizes move from Apollo to Blobstore application. UK is
              first LBU to move to Blobstore.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_blockquote-LxAdv-blockquote.dita">2016-07-29 - blockquote to blockquote id-CCCC-10247: Added Note about xml snippets that illustrate
              image handling. Note summarizes move from Apollo to Blobstore application. UK is
              first LBU to move to Blobstore. VSTS 76146</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_inlineobject-LxAdv-figure_ref.inlineobject.dita">2016-07-29 - inlineobject to figure/ref:inlineobject id-CCCC-10368: Added Note about xml snippets that illustrate
              image handling. Note summarizes move from Apollo to Blobstore application. UK is
              first LBU to move to Blobstore.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_inlineobject-Chof-h-LxAdv-figure_ref.inlineobject.dita">2016-07-29 - h/inlineobject to figure/ref:inlineobject id-CCCC-10362: Added Note about xml snippets that illustrate
              image handling. Note summarizes move from Apollo to Blobstore application. UK is
              first LBU to move to Blobstore.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_inlineobject-Chof-glp.note-LxAdv-SUPPRESS.dita">2016-07-29 - glp:note/inlineobject to id-CCCC-10361: Added Note about xml snippets that illustrate
              image handling. Note summarizes move from Apollo to Blobstore application. UK is
              first LBU to move to Blobstore. VSTS 76146</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_figure-LxAdv-figure.dita">2016-07-29 - figure to figure id-CCCC-10320: Added Note about xml snippets that illustrate
              image handling. Note summarizes move from Apollo to Blobstore application. UK is
              first LBU to move to Blobstore.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_inlineobject-Chof-p_blockquote-LxAdv-p_figure_ref.inlineobject.dita">2016-07-26 - p/blockquote/inlineobject to p/figure/ref:inlineobject id-CCCC-10363: Added Note about xml snippets that
              illustrate image handling. Note summarizes move from Apollo to Blobstore
              application. UK is first LBU to move to Blobstore. </xref>
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
            <xref href="../../../Rosetta/common_newest/Rosetta_edpnum-LxAdv-desig.dita">2016-03-15 - edpnum to desig id-CCCC-10308: Added rule for handling scenario when
              <sourcexml>pnum</sourcexml> and <sourcexml>edpnum </sourcexml> occur as
              siblings (applicable only for UK22CS). [RFA #2755]</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_glp.note-Chof-leg.heading-LxAdv-primlaw.level_note.dita">2016-03-08 - leg:heading/glp:note to primlaw:level/note id-CCCC-10333: (AU04 only) Added new section for converting heading markup following
              <sourcexml>glp:note</sourcexml>. Addresses WS6034981.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2016-02-05 - remotelink to ref:crossreference id-CCCC-10465: Added note and example when
              <sourcexml>remotelink</sourcexml> is a child of <sourcexml>emph</sourcexml>. Applicable
              on NZ17CC, Webstar: 319232 and 318735.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_inlineobject-Chof-p_blockquote-LxAdv-p_figure_ref.inlineobject.dita">2015-12-08 - p/blockquote/inlineobject to p/figure/ref:inlineobject id-CCCC-10363: Added '.tiff' to the list of allowable values for <sourcexml>proc:param[@name="object-type"]/@value="image"</sourcexml>.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.doc-heading-LxAdv-dc.title.dita">2015-12-04 - docinfo:doc-heading to dc:title id-CCCC-10292: Added exception for AU Legislative Citator to 
              drop text Overview Tab for  from conversion.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_inlineobject-Chof-p_blockquote-LxAdv-p_figure_ref.inlineobject.dita">2015-11-17 - p/blockquote/inlineobject to p/figure/ref:inlineobject id-CCCC-10363: Added note to use a different instruction if <sourcexml>inlineobject</sourcexml> contains siblings.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_inlineobject-LxAdv-ref.inlineobject.dita">2015-11-16 - inlineobject to ref:inlineobject id-CCCC-10369: Added instruction for <sourcexml>inlineobject/@key</sourcexml> 
              to be suppressed.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2015-09-15 - ci.cite to lnci.cite id-CCCC-10268: Updated instruction to suppressed the attribute
              <sourcexml>@type</sourcexml> with value "legref" in target.
              Applicable on NZ Regulation and NZ Act from services [Webstar
              #6245139].</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2015-09-11 - docinfo:assoc-links to doc:related-content id-CCCC-10284: Correction to target XPATHs for
              <sourcexml>lnlink[@service="QUERYLINK"]</sourcexml>,
              <sourcexml>lnlink[@service="ATTACHMENT"]</sourcexml>, and
              <sourcexml>lnlink[@service="TRAVERSE"]</sourcexml> to add
              <targetxml>doc:related-content-item/doc:related-content-link</targetxml> before the
              existing <targetxml>ref:lnlink</targetxml> element in the XPATH.</xref>
          </li>
        </ul>
      </p>
    </section>
    
    <section>
      <title>seclaw 8.8_PROD</title>
      <p>2015-09-11 - SNB: <ol>
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
          <xref href="../../../Rosetta/common_newest/Rosetta_link-LxAdv-ref.lnlink.dita">2015-09-08 - link to ref:lnlink[@service="ATTACHMENT"] id-CCCC-10394: Minor XPATH correction in title to change 
            <targetxml>ref:lnlink/@service="ATTACHMENT"</targetxml> to be 
            <targetxml>ref:lnlink[@service="ATTACHMENT"]</targetxml>.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_lnlink_service_SEARCH-LxAdv-SUPPRESS.dita">2015-09-08 - lnlink[@service='SEARCH'] is SUPPRESSED id-CCCC-10397: Minor XPATH correction in instruction title and body to change 
            <sourcexml>lnlink/@service='SEARCH'</sourcexml> to be <sourcexml>lnlink[@service='SEARCH']</sourcexml>.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_lnlink_service_ATTACHMENT-LxAdv-ref.lnlink.dita">2015-09-08 - lnlink[@service="ATTACHMENT"] to ref:lnlink[@service="ATTACHMENT"] id-CCCC-10396: Minor XPATH correction in instruction title and body to change 
            <sourcexml>lnlink/@service="ATTACHMENT"</sourcexml> to be <sourcexml>lnlink[@service="ATTACHMENT"]</sourcexml>, 
            <targetxml>ref:lnlink</targetxml> to be <targetxml>ref:lnlink[@service="ATTACHMENT"]</targetxml>, and 
            <targetxml>ref:lnlink/@service="ATTACHMENT"</targetxml> to be <targetxml>ref:lnlink[@service="ATTACHMENT"]</targetxml>.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_lnlink_service_URL-LxAdv-ref.lnlink.dita">2015-09-08 - lnlink[@service="URL"] to ref:lnlink[@service="URL"] id-CCCC-10526: Minor XPATH correction in instruction title and body to change 
            <sourcexml>lnlink/@service="URL"</sourcexml> to be <sourcexml>lnlink[@service="URL"]</sourcexml>, 
            <targetxml>ref:lnlink</targetxml> to be <targetxml>ref:lnlink[@service="URL"]</targetxml>, and 
            <targetxml>ref:lnlink/@service="URL"</targetxml> to be <targetxml>ref:lnlink[@service="URL"]</targetxml>.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.doc-heading-LxAdv-dc.title.dita">2015-09-06 - docinfo:doc-heading to dc:title id-CCCC-10292: Modified only the special rule for CA14
            trademarks. No longer mapping (MC) to entity, the unicode code point is not
            currently supported. The pcdata (MC) is retained instead. RFA 145. CA14
            only.</xref>
        </li>
      </ol>
      </p>
    </section>
    
    <section>
      <title>seclaw 8.7_PROD</title>
      
      <p>2015-09-03 - SNB: <ol>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2015-09-03 - 
            docinfo:assoc-links to doc:related-content id-CCCC-10284: Minor correction to bullet heading text for children of 
            <sourcexml>docinfo:assoc-links</sourcexml> or <sourcexml>docinfo:assoc-links-grp</sourcexml> to change from 
            <sourcexml>lnlink/@service="QUERYLINK"</sourcexml> to be <sourcexml>lnlink[@service="QUERYLINK"]</sourcexml> and 
            <sourcexml>lnlink/@service="ATTACHMENT"</sourcexml> to be <sourcexml>lnlink[@service="ATTACHMENT"]</sourcexml>.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2015-09-03 - 
            docinfo:assoc-links to doc:related-content id-CCCC-10284: Added <targetxml>doc:related-content-item/@content-type="external-content-location"</targetxml> 
            when the parent <sourcexml>docinfo:assoc-links[@assoc-content="external-content-location"]</sourcexml> exists, for children: 
            <sourcexml>remotelink[@service="DOC-ID"]</sourcexml>, <sourcexml>remotelink[@href]</sourcexml>, 
            <sourcexml>lnlink[@service="TRAVERSE"]</sourcexml> and <sourcexml>ci:cite</sourcexml>.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2015-09-03 - 
            docinfo:assoc-links to doc:related-content id-CCCC-10284: Added instruction for handling of
            <sourcexml>lnlink[@service="TRAVERSE"]</sourcexml> inside <sourcexml>docinfo:assoc-links</sourcexml> or
            <sourcexml>docinfo:assoc-links-grp</sourcexml>.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_lnlink_service_URL-LxAdv-ref.lnlink.dita">2015-09-03 - 
            lnlink/@service="URL" to ref:lnlink id-CCCC-10526: Correction to change <targetxml>ref:locator/ref:key-name/@name="URL"</targetxml> 
            to instead be <targetxml>ref:locator/ref:locator-key/ref:key-name/@name="URL"</targetxml>.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_lnlink_service_TRAVERSE-LxAdv-ref.lnlink.dita">2015-09-03 - 
            lnlink[@service="TRAVERSE"] to ref:lnlink[@service="TRAVERSE"] id-CCCC-10528: Added topic for 
            <sourcexml>lnlink[@service="TRAVERSE"]</sourcexml>.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_inlineobject-Chof-emph-LxAdv-figure_ref.inlinobject.dita">2015-08-12 - 
            emph/inlineobject to figure/ref:inlineobject id-CCCC-10359: Added instruction and example for 
            <sourcexml>leg:comntry/level/bodytext/heading/title/emph/inlineobject</sourcexml>, Applicable on UK07, R4.5 issue # 2364.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_p-limited_remotelink-LxAdv-p_text_ref.lnlink.dita">2015-07-24 - 
            p-limited/remotelink to p/text/lnlink id-CCCC-10423: Corrected typo in title (was 
            "<sourcexml>p-limited/emph</sourcexml> to <targetxml>p/text/emph</targetxml>", corrected to be 
            "<sourcexml>p-limited/remotelink</sourcexml> to <targetxml>p/text/lnlink</targetxml>".</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_inlineobject-Chof-emph-LxAdv-figure_ref.inlinobject.dita">2015-07-24 - 
            emph/inlineobject to figure/ref:inlineobject id-CCCC-10359: When Inlineobject is followed by two emph
            elements of same typestyle <sourcexml>sup/emph/emph/inlineobject</sourcexml>then from Target we should drop the one emph element
            and the followed <sourcexml>emph/inlineobject</sourcexml> should mapped with
            <targetxml>emph/ref:inlineobject</targetxml> in Target.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_inlineobject-Chof-emph-LxAdv-figure_ref.inlinobject.dita">2015-07-21 - 
            emph/inlineobject to figure/ref:inlineobject id-CCCC-10359: When Inlineobject is followed by two emph
            elements of same typestyle then from Target we should drop the one emph element
            and the followed <sourcexml>emph/inlineobject</sourcexml> should mapped with
            <targetxml>figure/ref:inlineobject</targetxml> in Target.</xref>
        </li>
      </ol>
      </p>
      
    </section>
    
    <section>
      <title>seclaw 8.6_PROD</title>
      
      <p>2015-07-16 - BMH: <ol>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_lnlink_service_URL-LxAdv-ref.lnlink.dita">2015-07-16 - 
            lnlink/@service="URL" to ref:lnlink id-CCCC-10526: Added topic for <sourcexml>lnlink[@service="URL"]</sourcexml>.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_contrib-person.dita">2015-07-16 - COMMENTARYDOC/comm:info/contrib/person id-CCCC-10526: 
            Created new instruction for conversion of
            <sourcexml>contrib/person</sourcexml> to <targetxml>doc:metadata/dc:contributor</targetxml>.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2015-07-16 - 
            docinfo:assoc-links to doc:related-content id-CCCC-10284: Updated conversion for handling of
            <sourcexml>ci:cite/@normprotocol</sourcexml>, <targetxml>proc:param[@name="countrycode"]</targetxml>; added
            instructions for <sourcexml>docinfo:assoc-resource</sourcexml>.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_person-LxAdv-person.person.dita">2015-07-16 - person to person:person 
            id-CCCC-10428: Added instruction for
            <sourcexml>person/remotelink</sourcexml> mapping to <targetxml>ref:lnlink</targetxml>.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/DITA-US/US_LPA/LPA-PracticalGuidance_LandingPage-US.dita">2015-07-16 - bodytext/pgrp/pgrp/h 
            id-USPA-31043: Added instructions for <sourcexml>classification</sourcexml>
            within <sourcexml>bodytext/pgrp/pgrp/h</sourcexml>.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/DITA-US/US_LPA/LPA-PracticalGuidance_LandingPage-US.dita">2015-07-16 - bodytext/pgrp/pgrp/p 
            id-USPA-31044: Added instructions for <sourcexml>classification</sourcexml>
            within <sourcexml>bodytext/pgrp/pgrp/h</sourcexml>.</xref>
        </li>
        
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2015-06-24 - remotelink 
            to ref:crossreference id-CCCC-10465: Added clarification note about url, @normval, and @hrefclass. Webstar 302055.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_inlineobject-Chof-emph-LxAdv-figure_ref.inlinobject.dita">2015-06-18 - 
            emph/inlineobject to figure/ref:inlineobject id-CCCC-10359: When source is having emph followed by inlineobject inside 
            base:h element <sourcexml>h/emph/inlineobject</sourcexml> than in Target it should Map it like 
            <targetxml>emph/ref:inlineobject</targetxml> as emph containing text under it.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2015-05-22 - 
            docinfo:assoc-links to doc:related-content id-CCCC-10284: Clarification. Not a new rule or target. Within rules handling
            <sourcexml>remotelink[@service="DOC-ID"]</sourcexml>, added statement to create containing elements
            <targetxml>ref:locator/ref:locator-key</targetxml> which hold <targetxml>ref:key-name</targetxml> and
            <targetxml>ref:key-value</targetxml>. The xpath is controlled by schema and so conversions have been
            correct. CI examples were correct. The narrative rule is now explicit. R4.5 Content Issue 2326.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_link-LxAdv-ref.lnlink.dita">2015-05-22 - link to ref:lnlink/@service="ATTACHMENT" 
            id-CCCC-10394: Changed the instructions to indicate <sourcexml>link/@status</sourcexml> is always dropped and removed 
            <targetxml>ref:lnlink/@status</targetxml> from target example. This is a very low-priority change and has been 
            added for technical correctness, particularly with respect to new CIs. Existing scripts do not have to implement 
            this change since <targetxml>ref:lnlink/@status</targetxml> is ignored by LexisAdvance if it is present.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_lnlink_service_ATTACHMENT-LxAdv-ref.lnlink.dita">2015-05-22 - 
            lnlink/@service="ATTACHMENT" to ref:lnlink id-CCCC-10396: Added an instruction to explicitly indicate 
            <sourcexml>lnlink/@status</sourcexml> is always dropped (suppressed). This is a very low-priority change 
            and has been added for technical correctness, particularly with respect to new CIs. Existing scripts do not 
            have to implement this change unless needed since prior to the change <targetxml>lnlink/@status</targetxml> 
            handling was not explicitly specified.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_remotelink-Chof-url-LxAdv-url.dita">2015-05-22 - url/remotelink to 
            url id-CCCC-10464: Added an instruction to explicitly indicate <sourcexml>remotelink/@status</sourcexml> is always 
            dropped (suppressed). This is a very low-priority change and has been added for technical correctness, particularly 
            with respect to new CIs. Existing scripts do not have to implement this change unless needed since prior to the change 
            <targetxml>remotelink/@status</targetxml> handling was not explicitly specified.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2015-05-22 - remotelink to 
            ref:crossreference id-CCCC-10465: Added an instruction to explicitly indicate <sourcexml>remotelink/@status</sourcexml> 
            is always dropped (suppressed). This is a very low-priority change and has been added for technical correctness, 
            particularly with respect to new CIs. Existing scripts do not have to implement this change unless needed since 
            prior to the change <targetxml>remotelink/@status</targetxml> handling was not explicitly specified.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.doc-heading-LxAdv-dc.title.dita">2015-05-05 - docinfo:doc-heading 
            to dc:title id-CCCC-10292: Added note to convert (TM), (R), and (MC) to unicode code points. DB # 45. Applicable to CA14.</xref>
        </li>
      </ol>
      </p>
      
    </section>

    <section>
      <title>seclaw 8.5_PROD</title>
      
      <p>2015-04-27 - SNB: <ol>
        <li>
          <xref href="../../../Rosetta/DITA-US/US_LPA/LPA-PracticalGuidance_LandingPage-US.dita">2015-04-27 - landing page types id-USPA-31032: Clarified description to indicate that the 
            list of <sourcexml>bodytext/@searchtype</sourcexml> attribute values was an example, 
            and not necessarily a complete list.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/DITA-US/US_LPA/LPA-PracticalGuidance_LandingPage-US.dita">2015-04-27 - bodytext/pgrp/h id-USPA-31036: Corrected typo in 2nd paragraph; changed 
            <sourcexml>bodytext/h</sourcexml> to <sourcexml>bodytext/pgrp/h</sourcexml>. Added  
            instruction to process all immediately following nested pgrp elements 
            (<sourcexml>bodytext/pgrp/pgrp</sourcexml>), and an instruction 
            describing when to close the created <targetxml>seclaw:subjectmatterreference</targetxml> or
            <targetxml>ref:subjectmattercite</targetxml> element.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/DITA-US/US_LPA/LPA-PracticalGuidance_LandingPage-US.dita">2015-04-27 - bodytext/pgrp/p id-USPA-31037: Added 
            instruction to process all immediately following nested pgrp elements 
            (<sourcexml>bodytext/pgrp/pgrp</sourcexml>), and an instruction 
            describing when to close the created <targetxml>seclaw:subjectmatterreference</targetxml> or
            <targetxml>ref:subjectmattercite</targetxml> element.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/DITA-US/US_LPA/LPA-PracticalGuidance_LandingPage-US.dita">2015-04-27 - bodytext/pgrp/pgrp id-USPA-31039: Added a note to indicate that <targetxml>toc</targetxml> 
            created from <sourcexml>bodytext/pgrp/pgrp</sourcexml> will be inside a a target document <targetxml>seclaw:subjectmatterreference</targetxml> or
            <targetxml>ref:subjectmattercite</targetxml> element created by another instruction in this document.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/DITA-US/US_LPA/LPA-PracticalGuidance_LandingPage-US.dita">2015-04-27 - bodytext/pgrp/h/@l="2" id-USPA-31042: Corrected a typo in the note starting with 
            "Due to the way the source document.." Changed "already be a <targetxml>seclaw:digest</targetxml> open..." 
            to "already be a <targetxml>seclaw:digestgrp</targetxml> open..."</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/DITA-US/US_LPA/LPA-PracticalGuidance_LandingPage-US.dita">2015-04-27 - bodytext/pgrp/pgrp/h id-USPA-31043: Corrected typo. Changed 
            "Each <sourcexml>bodytext/pgrp/h</sourcexml> that does not have..." to 
            "Each <sourcexml>bodytext/pgrp/pgrp/h</sourcexml> that does not have..."</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/DITA-US/US_LPA/LPA-PracticalGuidance_LandingPage-US.dita">2015-04-27 - bodytext/pgrp/pgrp/p id-USPA-31044: Corrected typo. Changed 
            "Each <sourcexml>bodytext/pgrp/p</sourcexml> causes a new..." to 
            "Each <sourcexml>bodytext/pgrp/pgrp/p</sourcexml> causes a new..."</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/DITA-US/US_LPA/LPA-PracticalGuidance_TopicTree-US.dita">2015-04-27 - Topic Tree Document id-USPA-31046: Added rule for mapping topic tree leveltypes 
            <sourcexml>level[@leveltype='ADMINISTRATIVECODESANDREGULATIONS']</sourcexml> and  
            <sourcexml>level[@leveltype='BRIEFSPLEADINGSANDMOTIONS']</sourcexml>.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_comm.info-classification.dita">2015-04-27 - comm:info/classification id-CCCC-10524: Created new instruction for conversion of 
            <sourcexml>comm:info/classification[@classscheme="echo:*"]</sourcexml> to 
            <targetxml>doc:metadata/doc:docinfo/classify:classification-grp[@classscheme="echo:terms"]/classify:classification</targetxml>. 
            If comm:info/classification elements with other classschemes are added to this instruction, mappings will need to be added 
            accordingly.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_classification-LxAdv-classify.classification.dita">2015-04-27 - classification to classify:classification id-CCCC-10523: Created new general markup instruction for conversion of 
            <sourcexml>classification</sourcexml> to <targetxml>classify:classification</targetxml> 
            when no more specific instruction exists.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_docinfo-LxAdv-doc.metadata_doc.docinfo.dita">2015-04-14 - docinfo to doc:metadata/doc:docinfo id-CCCC-10282: Remove bullet icon in sub nested list for
            handling Indentation isssue.</xref>
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
          <xref href="../../../Rosetta/common_newest/Rosetta_remotelink-Chof-url-LxAdv-url.dita">2015-01-09 - url/remotelink to url id-CCCC-10464: Within use case that maps to
            <targetxml>ref:lnlink</targetxml>, added exceptional rule to not concatenate values when
            <sourcexml>@hrefclass</sourcexml> content is already present in
            <sourcexml>@href</sourcexml>. Expanded example to illustrate the scenario. Responds to
            data for UK10 Dictionaries but applies in general. R4.5 Content Issue 2120.</xref>
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
      </ol></p>
    </section>
    
    <section>
      <title>seclaw 8.1_PROD</title>
      
      <p>2014-12-08 - MLV: <ol>
        
        <li>
          <xref href="../../../Rosetta/common_newest/LPA-PracticalGuidance_FormsPrecedents.dita">2014-12-08 - clause/table id-CCCC-10173x: Addition of mapping for
            <sourcexml>clause/table</sourcexml> to
            <targetxml>form:clause/form:bodytext/table</targetxml> and example from US LPA
            form content.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/LPA-PracticalGuidance_FormsPrecedents.dita">2014-12-08 - clause id-CCCC-10173: Addition of mapping for
            <sourcexml>form/frm:body/note</sourcexml> to
            <targetxml>form:form/form:document/form:bodytext/note</targetxml> and example
            from US LPA form content.</xref>
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
      </ol>
      </p>
      
    </section>        

    <section>
      <title>seclaw 8.0_PROD</title>
      
      <p>2014-09-15 - MLV: <ol>
        <li> 
          <xref href="../../common_newest/LPA-PracticalGuidance_FormsPrecedents.dita">Added new instructions for mapping <sourcexml>clause[@clause-type="group"][@runin="exhibit"]</sourcexml> 
            to <targetxml>form:clausegrp[@grptype="exhibit"]</targetxml></xref></li>  
      </ol>
      </p>
      
    </section>
    
    <section>
      <title>seclaw 7.12_PROD</title>
      
      <p>2014-07-15 - MLV: <ol>
        <li> 
          <xref href="LPA-PracticalGuidance_LandingPage-US.dita">Added new instructions for mapping <sourcexml>level@leveltype="practicearea"</sourcexml> 
            to <targetxml>seclaw:level@leveltype="practicearea"</targetxml></xref></li>  
      </ol>
      </p>
      
    </section>
    
    <section>
      <title>seclaw 7.10_PROD</title>
      
      <p>2014-04-23 - MLV: <ol>
      <li> 
        <xref href="LPA-PracticalGuidance_Body-US.dita">Added new instructions for mapping <sourcexml>text@align and p@indent</sourcexml> to <targetxml>p</targetxml></xref></li>  
      <li>
        <xref href="../../common_newest/LPA-PracticalGuidance_FormsPrecedents.dita">Added instruction for mapping <sourcexml>clause/p/text[@align="center"]</sourcexml> to <targetxml>form:clause/form:bodytext/form:p[@align="center"]</targetxml></xref>
      </li>  
      </ol>
      </p>
      
    </section>
    
    <section>
      <title>seclaw 6.2_PROD</title>
      <p>2013-04-30 - MLV: <ol>
          <li>2013-04-25 <xref href="LPA-PracticalGuidance_TopicTree-US.dita"/>: Added instruction
            for classitem-identifier@id handling within TopicTree documents. When a target node
            value is placed in the source data and must be converted into the
            classify:classitem-identifier@xml:id attribute.</li>
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
            <xref href="../../common_newest/Rosetta_docinfo.alt-renditions-LxAdv-doc.alt-renditions.dita">2013-04-17 - docinfo:alt-renditions/docinfo:alt-rendition to
              doc:alt-renditions/doc:alt-rendition: Updated target example (removed ".pdf" from
                <targetxml>ref:key-value/@value</targetxml>).</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_docinfo.custom-metafields-LxAdv-SUPPRESS.dita">2013-04-16 - docinfo:custom-metafields is SUPPRESSED: Updated the instruction of
              handling <sourcexml>docinfo:custom-metafield[@name="JURIS-SORT"]</sourcexml>,
                <sourcexml>docinfo:custom-metafield[@name="COURT-SORT"]</sourcexml>, and
                <sourcexml>docinfo:custom-metafield[@name="TERM-SORT"]</sourcexml> markup in CA
              Dictionary content stream.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2013-04-12 - docinfo:assoc-links to doc:related-content: This module was changed from
              UK specific to applicable to all LBUs</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2013-04-10 - docinfo:assoc-links to doc:related-content: An example for related
              content Source and Target XML 4</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-04-10 - remotelink to ref:crossreference: Added Source XML 7a: for link to URL,
              with non-URL text content because it was previously missing, only the target example
              was here.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_docinfo.lbu-meta-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta-scheme.dita">2013-04-09 - docinfo:lbu-meta to doc:legacy-metadata[@metadatasource="lbu-meta"]:
              Added the instruction for handling
                <sourcexml>docinfo:metaitem[@name="QLDB"]</sourcexml>.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2013-03-28 - docinfo:assoc-links to doc:related-content: Added rules for
                <sourcexml>docinfo:assoc-links-grp</sourcexml> and for child
                <sourcexml>text</sourcexml>.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_docinfo.alt-renditions-LxAdv-doc.alt-renditions.dita">2013-03-26 - docinfo:alt-renditions/docinfo:alt-rendition to
              doc:alt-renditions/doc:alt-rendition: Updated target example
                (<targetxml>proc:param/@value="pdf"</targetxml>) per project requirement.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_link-LxAdv-ref.lnlink.dita">2013-03-26 - link to
              ref:lnlink/@service="ATTACHMENT": Updated instruction and target example
                (<targetxml>proc:param/@value="pdf"</targetxml>) per project requirement.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_docinfo.doc-id-LxAdv-dcidentifier_lnmetaidentifier-scheme.dita">2013-03-20 - docinfo:doc-id to dc:identifier[@lnmeta:identifier-scheme]: Updated the
              information on handling the situation when
                <sourcexml>docinfo:dpsi[@id-string]</sourcexml> is absent with instructions to get
              the dpsi from
                <sourcexml>docinfo/docinfo:custom-metafields/docinfo:custom-metafield[@name="dpsi"]</sourcexml>.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_docinfo.custom-metafields-LxAdv-SUPPRESS.dita">2013-03-20 - docinfo:custom-metafields is SUPPRESSED: Updated the instruction of
              handling <sourcexml>docinfo:custom-metafield[@name="dpsi"]</sourcexml> markup in CA
              content stream.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_pgrp-LxAdv-pgrp.dita">2013-03-14 - pgrp to pgrp:
              Add instruction and example <sourcexml>pgrp/@id</sourcexml>.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_p-LxAdv-p.dita">2013-03-14 - p to p: Add
              instruction and example <sourcexml>p/@style</sourcexml>.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_nl-LxAdv-proc.nl.dita">2013-03-14 - nl to
              proc:nl: Add instruction and example <sourcexml>nl/@n</sourcexml>.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_inlineobject-LxAdv-ref.inlineobject.dita">2013-03-13 - inlineobject to ref:inlineobject: Removed the value leg1.png and added
              the statement "These files should be suppressed for both *.gif and *.png file types"
              was added.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_inlineobject-LxAdv-ref.inlineobject.dita">2013-03-12 - inlineobject to ref:inlineobject: Added an additional value of
              leg1.pngto the <sourcexml>inlineobject</sourcexml>suppression list</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_glp.note_blockquote_p_text_inlineobject-LxAdv-note_bodytext_p_text.dita">2013-03-12 - glp:note: Updated the instructions to remove the contradictory addition
              of inlineobject within the output</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-03-11 - remotelink to ref:crossreference: Instruction and example added on how
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
            <xref href="../../common_newest/Rosetta_edpnum-LxAdv-desig.dita">2013-03-06 - edpnum to
              desig: Removed instructions/rules for exceptional desig scenario and deprecated
              attribute <targetxml>@followstitle</targetxml>. Added instructions for maintaining
              source document ordering.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_glp.note_blockquote_p_text_inlineobject-LxAdv-note_bodytext_p_text.dita">2013-03-05 - glp:note: Example was added for <sourcexml>inlineobject</sourcexml>
              within target xml example.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_glp.note_blockquote_p_text_inlineobject-LxAdv-note_bodytext_p_text.dita">2013-03-01 - glp:note: Additional information was added for the handling of leg1.gif
              and leg1.png within an <sourcexml>inlineobject</sourcexml>.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_docinfo.alt-renditions-LxAdv-doc.alt-renditions.dita">2013-02-26 - docinfo:alt-renditions/docinfo:alt-rendition to
              doc:alt-renditions/doc:alt-rendition: Updated target example per project
              requirement.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_link-LxAdv-ref.lnlink.dita">2013-02-26 - link to
              ref:lnlink/@service="ATTACHMENT": Updated target example per project
              requirement.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_p-limited_remotelink-LxAdv-p_text_ref.lnlink.dita">2013-02-18 - p-limited/emph to p/text/emph: Created two sections, one for "Release
              4.0 and after" and another for "Pre-Release 4.0".</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_blockquote-LxAdv-blockquote.dita">2013-02-18 -
              blockquote to blockquote: Created two sections, one for "Release 4.0 and after" and
              another for "Pre-Release 4.0".</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-02-18 - remotelink to ref:crossreference: Created two sections, one for "Release
              4.0 and after" and another for "Pre-Release 4.0".</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_inlineobject-LxAdv-ref.inlineobject.dita">2013-02-18 - inlineobject to ref:inlineobject: Created two sections, one for "Release
              4.0 and after" and another for "Pre-Release 4.0".</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_inlineobject-LxAdv-figure_ref.inlineobject.dita">2013-02-18 - inlineobject to figure/ref:inlineobject: Created two sections, one for
              "Release 4.0 and after" and another for "Pre-Release 4.0".</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_inlineobject-Chof-h-LxAdv-figure_ref.inlineobject.dita">2013-02-18 - h/inlineobject to figure/ref:inlineobject: Created two sections, one for
              "Release 4.0 and after" and another for "Pre-Release 4.0".</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_inlineobject-Chof-emph-LxAdv-figure_ref.inlinobject.dita">2013-02-18 - emph/inlineobject to figure/ref:inlineobject: Created two sections, one
              for "Release 4.0 and after" and another for "Pre-Release 4.0".</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_inlineobject-Chof-glp.note-LxAdv-SUPPRESS.dita">2013-02-18 - glp:note/inlineobject to: Created two sections, one for "Release 4.0 and
              after" and another for "Pre-Release 4.0".</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_inlineobject-Chof-dispformula-LxAdv-formula_ref.inlineobject.dita">2013-02-18 - dispformula/inlineobject to formula/ref:inlineobject: Created two
              sections, one for "Release 4.0 and after" and another for "Pre-Release 4.0".</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_inlineobject-Chof-p_blockquote-LxAdv-p_figure_ref.inlineobject.dita">2013-02-18 - p/blockquote/inlineobject to p/figure/ref:inlineobject: Created two
              sections, one for "Release 4.0 and after" and another for "Pre-Release 4.0".</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_figure-LxAdv-figure.dita">2013-02-18 - figure to
              figure: Created two sections, one for "Release 4.0 and after" and another for
              "Pre-Release 4.0".</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_glp.note-Chof-figure-LxAdv-figure.dita">2013-02-18 - (Legislation &amp; Regulation) figure/glp:note to figure: Created two
              sections, one for "Release 4.0 and after" and another for "Pre-Release 4.0".</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_form-chars-LxAdv-formchars.dita">2013-02-08 -
              form-chars to proc:formchars: Corrected the last mapping of
                <sourcexml>form-chars[@character=" "]</sourcexml> to
                <targetxml>proc:formchars[@formchar="invisible"]</targetxml> so that the source
              element properly displays as
                <sourcexml>form-chars[@character="&amp;nbsp;"]</sourcexml>.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_char-line-LxAdv-proc.formchars.dita">2013-02-08
              - char-line to proc:formchars: Corrected the last mapping of
                <sourcexml>char-line[@character=" "]</sourcexml> to
                <targetxml>proc:formchars[@formchar="invisible"]</targetxml> so that the source
              element properly displays as
              <sourcexml>char-line[@character="&amp;nbsp;"]</sourcexml>.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2013-01-22 - docinfo:assoc-links to doc:related-content: Added mapping instruction
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
            <xref href="../../common_newest/Rosetta_docinfo.custom-metafields-LxAdv-SUPPRESS.dita">2013-01-07 - docinfo:custom-metafields is SUPPRESSED: Updated the instruction of
              handling <sourcexml>docinfo:custom-metafield[@searchtype="CITED-COUNT"]</sourcexml>
              markup in CA content stream.</xref>
          </li>
        </ol>
      </p>
    </section>
    
    <section>
      <title>Prior Changes</title>
      <p>For changes prior to 2013, please see the <xref href="LPA-PracticalGuidance_Changes2012-US.dita">previous topic</xref>.</p>
    </section>
    
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-US\US_LPA\LPA-PracticalGuidance_ChangeManagement-US.dita  -->
	<xsl:message>LPA-PracticalGuidance_ChangeManagement-US.xsl requires manual development!</xsl:message> 

</xsl:stylesheet>