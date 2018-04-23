<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
	xmlns:case="http://www.lexis-nexis.com/glp/case"
	xmlns:ci="http://www.lexis-nexis.com/ci"
	xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo"
	xmlns:frm="http://www.lexis-nexis.com/glp/frm"
	xmlns:glp="http://www.lexis-nexis.com/glp"
	xmlns:leg="http://www.lexis-nexis.com/glp/leg"
	xmlns:source_lnci="http://www.lexis-nexis.com/lnci"
	xmlns:admindoc="urn:x-lexisnexis:content:administrative-document:sharedservices:1"
	xmlns:casedigest="http://www.lexisnexis.com/xmlschemas/content/legal/case-digest/1/"
	xmlns:dc="http://purl.org/dc/elements/1.1/"
	xmlns:decision="http://www.lexisnexis.com/xmlschemas/content/legal/decision/1/"
	xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/"
	xmlns:form="http://www.lexisnexis.com/xmlschemas/content/shared/form/1/"
	xmlns:index="urn:x-lexisnexis:content:publicationindex:sharedservices:1"
	xmlns:lnci="http://www.lexisnexis.com/xmlschemas/content/shared/citations/1/"
	xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/"
	xmlns:proc="http://www.lexisnexis.com/xmlschemas/content/shared/process-elements/1/"
	xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/"
	version="2.0" exclude-result-prefixes="dita case ci docinfo frm glp leg lnci">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/"
		id="CourtOrder_change-log">
		<title>NZ Practice Notes to courtorder - Change Log</title>
		<body>

			<section>
				<title>CourtOrder 1.3_PROD</title>
				<p>2016-08-23 <ul>
						<li>
							<xref
								href="../../../Rosetta/common_newest/Rosetta_footnote-LxAdv-footnote.dita"
								>2016-08-08 - footnotegrp and footnote to footnotegrp and
								footnote id-CCCC-10322: Removing duplicate entry of
									<sourcexml>lilabel/fnr</sourcexml>
							</xref>
						</li>
						<li>
							<xref
								href="../../../Rosetta/common_newest/Rosetta_glp.note_blockquote_p_text_inlineobject-LxAdv-note_bodytext_p_text.dita"
								>2016-08-05 - glp:note id-CCCC-10341: Added Note about xml
								snippets that illustrate image handling. Note summarizes move
								from Apollo to Blobstore application. UK is first LBU to move to
								Blobstore. </xref>
						</li>
						<li>
							<xref
								href="../../../Rosetta/common_newest/Rosetta_footnote-LxAdv-footnote.dita"
								>2016-08-04 - footnotegrp and footnote to footnotegrp and
								footnote id-CCCC-10322: Added note for handling
									<sourcexml>lilabel/fnr</sourcexml> Applicable for AU05,
								Incident #6597893</xref>
						</li>
						<li>
							<xref
								href="../../../Rosetta/common_newest/Rosetta_PAC_docinfo.doc-id-LxAdv-dcidentifier_lnmetaidentifier-scheme.dita"
								>2016-08-03 - docinfo:doc-id to
								dc:identifier[@lnmeta:identifier-scheme] id-CCCC-10550: Created
								the rule to, Check manifest file for DPSI value and create new
								element
									<targetxml>dc:metadata/dc:source[@lnmeta:sourcescheme]</targetxml>
							</xref>
						</li>
						<li>
							<xref
								href="../../../Rosetta/common_newest/Rosetta_p-limited_remotelink-LxAdv-p_text_ref.lnlink.dita"
								>2016-08-03 - p-limited/remotelink to p/text/lnlink
								id-CCCC-10423: Added Note about xml snippets that illustrate
								image handling. Note summarizes move from Apollo to Blobstore
								application. UK is first LBU to move to Blobstore.</xref>
						</li>
						<li>
							<xref
								href="../../../Rosetta/common_newest/Rosetta_blockquote-link-LxAdv-blockquote-p-text-ref.lnlink.dita"
								>2016-08-03 - blockquote/link to blockquote/p/text/ref:lnlink
								id-CCCC-10246: Added Note about xml snippets that illustrate
								image handling. Note summarizes move from Apollo to Blobstore
								application. UK is first LBU to move to Blobstore.</xref>
						</li>
						<li>
							<xref
								href="../../../Rosetta/common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita"
								>2016-08-03 - remotelink to ref:crossreference id-CCCC-10465:
								Added Note about xml snippets that illustrate image handling.
								Note summarizes move from Apollo to Blobstore application. UK is
								first LBU to move to Blobstore.</xref>
						</li>
						<li>
							<xref
								href="../../../Rosetta/common_newest/Rosetta_glp.note-Chof-figure-LxAdv-figure.dita"
								>2016-08-03 - (Legislation &amp; Regulation) figure/glp:note to
								figure id-CCCC-10330: Added Note about xml snippets that
								illustrate image handling. Note summarizes move from Apollo to
								Blobstore application. UK is first LBU to move to
								Blobstore.</xref>
						</li>
						<li>
							<xref
								href="../../../Rosetta/common_newest/Rosetta_inlineobject-Chof-emph-LxAdv-figure_ref.inlinobject.dita"
								>2016-08-01 - emph/inlineobject to figure/ref:inlineobject
								id-CCCC-10359: Added Note about xml snippets that illustrate
								image handling. Note summarizes move from Apollo to Blobstore
								application. UK is first LBU to move to Blobstore.</xref>
						</li>
						<li>
							<xref
								href="../../../Rosetta/common_newest/Rosetta_inlineobject-Chof-dispformula-LxAdv-formula_ref.inlineobject.dita"
								>2016-08-01 - dispformula/inlineobject to
								formula/ref:inlineobject id-CCCC-10358: Added Note about xml
								snippets that illustrate image handling. Note summarizes move
								from Apollo to Blobstore application. UK is first LBU to move to
								Blobstore.</xref>
						</li>
						<li>
							<xref
								href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita"
								>2016-07-29 - docinfo:assoc-links to doc:related-content
								id-CCCC-10284: Added Note about xml snippets that illustrate
								image handling. Note summarizes move from Apollo to Blobstore
								application. UK is first LBU to move to Blobstore.</xref>
						</li>
						<li>
							<xref
								href="../../../Rosetta/common_newest/Rosetta_docinfo.alt-renditions-LxAdv-doc.alt-renditions.dita"
								>2016-07-29 - docinfo:alt-renditions/docinfo:alt-rendition to
								doc:alt-renditions/doc:alt-rendition id-CCCC-10283: Added Note
								about xml snippets that illustrate image handling. Note
								summarizes move from Apollo to Blobstore application. UK is
								first LBU to move to Blobstore.</xref>
						</li>
						<li>
							<xref
								href="../../../Rosetta/common_newest/Rosetta_blockquote-LxAdv-blockquote.dita"
								>2016-07-29 - blockquote to blockquote id-CCCC-10247: Added Note
								about xml snippets that illustrate image handling. Note
								summarizes move from Apollo to Blobstore application. UK is
								first LBU to move to Blobstore. VSTS 76146</xref>
						</li>
						<li>
							<xref
								href="../../../Rosetta/common_newest/Rosetta_inlineobject-LxAdv-figure_ref.inlineobject.dita"
								>2016-07-29 - inlineobject to figure/ref:inlineobject
								id-CCCC-10368: Added Note about xml snippets that illustrate
								image handling. Note summarizes move from Apollo to Blobstore
								application. UK is first LBU to move to Blobstore.</xref>
						</li>
						<li>
							<xref
								href="../../../Rosetta/common_newest/Rosetta_inlineobject-Chof-h-LxAdv-figure_ref.inlineobject.dita"
								>2016-07-29 - h/inlineobject to figure/ref:inlineobject
								id-CCCC-10362: Added Note about xml snippets that illustrate
								image handling. Note summarizes move from Apollo to Blobstore
								application. UK is first LBU to move to Blobstore.</xref>
						</li>
						<li>
							<xref
								href="../../../Rosetta/common_newest/Rosetta_inlineobject-Chof-glp.note-LxAdv-SUPPRESS.dita"
								>2016-07-29 - glp:note/inlineobject to id-CCCC-10361: Added Note
								about xml snippets that illustrate image handling. Note
								summarizes move from Apollo to Blobstore application. UK is
								first LBU to move to Blobstore. VSTS 76146</xref>
						</li>
						<li>
							<xref
								href="../../../Rosetta/common_newest/Rosetta_figure-LxAdv-figure.dita"
								>2016-07-29 - figure to figure id-CCCC-10320: Added Note about
								xml snippets that illustrate image handling. Note summarizes
								move from Apollo to Blobstore application. UK is first LBU to
								move to Blobstore.</xref>
						</li>
						<li>
							<xref
								href="../../../Rosetta/common_newest/Rosetta_refpt-Chof-p_text_emph-LxAdv-p_ref.anchor.dita"
								>2016-07-27 - refpt child of p/text/emph to p/ref:anchor
								id-CCCC-10457: Added a note for handling of text which is comes
								under the <sourcexml>refpt</sourcexml> in source.</xref>
						</li>
						<li>
							<xref
								href="../../../Rosetta/common_newest/Rosetta_inlineobject-Chof-p_blockquote-LxAdv-p_figure_ref.inlineobject.dita"
								>2016-07-26 - p/blockquote/inlineobject to
								p/figure/ref:inlineobject id-CCCC-10363: Added Note about xml
								snippets that illustrate image handling. Note summarizes move
								from Apollo to Blobstore application. UK is first LBU to move to
								Blobstore. </xref>
						</li>
						<li>
							<xref
								href="../../../Rosetta/common_newest/Rosetta_refpt-Chof-p_text-LxAdv-p_ref.anchor.dita"
								>2016-04-28 - refpt child of p/text to p/ref:anchor
								id-CCCC-10456: Added one more source and target example.</xref>
						</li>
						<li>
							<xref
								href="../../../Rosetta/common_newest/Rosetta_emph-LxAdv-emph.dita"
								>2016-04-01 - emph to emph id-CCCC-10316: Added statement to
								clarify that children of emph should be processed.</xref>
						</li>
						<li>
							<xref
								href="../../../Rosetta/common_newest/Rosetta_l-LxAdv-list.dita"
								>2016-04-01 - l to list id-CCCC-10372: Added mapping instruction
								for handling h within listitem.</xref>
						</li>
						<li>
							<xref
								href="../../../Rosetta/common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita"
								>2016-03-23 - ci.cite to lnci.cite id-CCCC-10268: Updated main
								instructions to clarify that descendants of ci:cite, and not
								just children, are to be processed.</xref>
						</li>
						<li>
							<xref
								href="../../../Rosetta/common_newest/Rosetta_edpnum-LxAdv-desig.dita"
								>2016-03-15 - edpnum to desig id-CCCC-10308: Added rule for
								handling scenario when <sourcexml>pnum</sourcexml> and
									<sourcexml>edpnum </sourcexml> occur as siblings (applicable
								only for UK22CS). [RFA #2755]</xref>
						</li>
						<li>
							<xref
								href="../../../Rosetta/common_newest/Rosetta_glp.note-Chof-leg.heading-LxAdv-primlaw.level_note.dita"
								>2016-03-08 - leg:heading/glp:note to primlaw:level/note
								id-CCCC-10333: (AU04 only) Added new section for converting
								heading markup following <sourcexml>glp:note</sourcexml>.
								Addresses WS6034981.</xref>
						</li>
						<li>
							<xref
								href="../../../Rosetta/common_newest/Rosetta_footnote-LxAdv-footnote.dita"
								>2016-02-29 - footnotegrp and footnote to footnotegrp and
								footnote id-CCCC-10322: Added note for handling
									<sourcexml>@type="editorial"</sourcexml> attribute. Applicable
								for UK22CS, RFA# 2762</xref>
						</li>
						<li>
							<xref
								href="../../../Rosetta/common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita"
								>2016-02-05 - remotelink to ref:crossreference id-CCCC-10465:
								Added note and example when <sourcexml>remotelink</sourcexml> is
								a child of <sourcexml>emph</sourcexml>. Applicable on NZ17CC,
								Webstar: 319232 and 318735.</xref>
						</li>
						<li>
							<xref
								href="../../../Rosetta/common_newest/Rosetta_footnote-LxAdv-footnote.dita"
								>2016-01-05 - footnotegrp and footnote to footnotegrp and
								footnote id-CCCC-10322: Added instructions for
									<sourcexml>footnotegrp</sourcexml> within
									<sourcexml>frm:div</sourcexml>. To generate
									<targetxml>form:p/form:text</targetxml> wrapper for target
									<targetxml>footnotegroup</targetxml>. Immediately affects UK12
								but will apply to any stream if the use case occurs. RFA
								2653.</xref>
						</li>
					</ul>
				</p>
			</section>
			<section>
				<title>??????</title>
				<p>2015-??-?? - JCG: <ol>
						<li>2015-02-25 - leg:levelstatus @ln.user-displayed="false"
							@isrepealed="true" id-CCCC-10382: removed this topic because its
							conversion instructions do not apply to this content stream. The
							removal of this topic should have absolutely no impact on existing
							conversion programs since actual delivered content never contained
							leg:levelstatus elements and thus the mapping described by this
							topic has never applied to this content stream.</li>
					</ol>
				</p>
			</section>
			<section>
				<title>CourtOrder 3.9_BETA</title>
				<p>2014-04-04 - JCG: <ol>
						<li>2014-04-04 - case:content/case:judgments: Clarified the
							instructions regarding: <xref
								href="case.content_case.judgments.dita#case.content_case.judgments/p_blockquote_legfragment_leg.level"
								>pgrp/p/blockquote/legfragment/leg:level</xref> (particularly
							the handling of the <sourcexml>leg:level-vnrt</sourcexml>
							attributes), <xref
								href="case.content_case.judgments.dita#case.content_case.judgments/p_l_li_p_blockquote_legfragment_leg.level"
								>pgrp/p/l/li/p/blockquote/legfragment/leg:level</xref>, and
								<xref
								href="case.content_case.judgments.dita#case.content_case.judgments/p_l_li_p_blockquote_legfragment_leg.level_nested"
								>pgrp/p/l/li/p/blockquote/legfragment/leg:level/leg:level-vrnt/leg:levelbody/leg:level</xref>.
							Note that no new instructions were specified, the changes were
							only clarifications. </li>
						<li>
							<xref
								href="../../../Rosetta/DITA-PAC/AU07_courtorder/case.body_heading.dita"
								>2014-04-04 - case:body/heading: Clarified the instructions for
									<sourcexml>heading/edpnum</sourcexml> and
									<sourcexml>heading/desig</sourcexml>, particularly with
								respect to descendant elmenent <sourcexml>refpt</sourcexml>. No
								new instructions specified.</xref>
						</li>
						<li>
							<xref
								href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita"
								>2014-04-03 - docinfo:assoc-links to doc:related-content:
								Illustrative changes. Examples modified. Mapping for
									<sourcexml>ci:cite</sourcexml> added to Example 3. Former
								Examples 4 and 5 removed to avoid confusion with special AU-NZ
								use case described in a separate module. R4.5 Content issue
								#1125, for AU-NZ, has prompted the changes for this general
								module.</xref>
						</li>
						<li>
							<xref
								href="../../../Rosetta/common_newest/Rosetta_AU_NZ_docinfo.assoc-links-LxAdv-additional-rule.dita"
								>2014-04-03 - (AU-NZ) docinfo:assoc-links with linking and text
								children: New module. Describes a special AU-NZ use case.
								Applies when a linking element is immediately followed by
									<sourcexml>text</sourcexml>. The pair map to a single
									<targetxml>doc:related-content-item</targetxml>. R4.5 Content
								issue #1125</xref>
						</li>
					</ol>
				</p>
			</section>
			<section>
				<title>CourtOrder 3.9_BETA</title>
				<p>2014-03-31 - JCG: <ol>
						<li>
							<xref
								href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita"
								>2014-03-25 - docinfo:assoc-links to doc:related-content: Added
								rule and example for
									<sourcexml>docinfo:assoc-links/docinfo:assoc-links-grp/ci:cite</sourcexml>.
								R4.5 Content issue #1125</xref>
						</li>
						<li>
							<xref
								href="../../../Rosetta/common_newest/Rosetta_toc-LxAdv-toc.dita"
								>2014-03-20 - toc to toc: New rule. Added mapping for
									<sourcexml>entry-pageref</sourcexml> to
									<targetxml>toc-pageref</targetxml>. Initially for UK12 but
								will apply for any stream if the use case occurs. Responds to
								data added in UK12 delivery Mar 2014; known to occur in dpsi
								02FL and 03VY. Phase 6 UK Discussion Item 79. Webteam
								252434.</xref>
						</li>
						<li>
							<xref
								href="../../../Rosetta/common_newest/Rosetta_figure-LxAdv-figure.dita"
								>2014-03-20 - figure to figure: Illustrative change. Added
								example to explicitly show standard conversion of child link to
								ref:lnlink. Prompted by Phase 6 UK Discussion Item 77. Webteam
								252434.</xref>
						</li>
					</ol>
				</p>
			</section>
			<section>
				<title>CourtOrder 3.8_BETA</title>
				<p>2014-03-04 - JCG: <ol>
						<li>
							<xref
								href="../../DITA-PAC/NZ18_courtorder/case.content_case.judgments.dita#case.content_case.judgments/pgrp_title"
								>2014-03-04 - case:content/case:judgments: Clarified the note
								regarding the suppression of
									<sourcexml>case:judgment/case:judgmentbody/pgrp/heading/title/remotelink/@service="QUERY"</sourcexml>
								and child <sourcexml>inlineobject</sourcexml>. (Webteam
								#250335)</xref>
						</li>
						<li>
							<xref
								href="../../common_newest/Rosetta_NZ-consecutive-note-LxAdv-notes.dita"
								>2014-03-04 - Consecutive note elements to notes: Added NZ11 to
								the list of streams affected by this instruction. Also added
								some clarifying comments, including that this instruction only
								applies to target note elements and not marginnote or inlinenote
								elements.</xref>
						</li>
						<li>
							<xref
								href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita"
								>2014-02-25 - remotelink to ref:crossreference: Updated
								instruction and created new example (#16) for handling
									<sourcexml>remotelink[@service="QUERY"]</sourcexml>. New
								instruction preserves pcdata but suppresses
									<sourcexml>remotelink</sourcexml> markup. Webstar #250335.
								Change applies immediately to all Pacific streams, and in the
								long run to all streams.</xref>
						</li>
						<li>
							<xref
								href="../../common_newest/Rosetta_docinfo.doc-heading-LxAdv-dc.title.dita"
								>2014-02-11 - docinfo:doc-heading to dc:title: Updated note when
									<sourcexml>emph</sourcexml> is child of
									<sourcexml>docinfo:doc-heading</sourcexml> then suppress
									<sourcexml>emph</sourcexml> element and retain its content in
									<targetxml>dc:title</targetxml>, These instructions apply
								immediately to CA12.</xref>
						</li>
						<li>
							<xref href="../../common_newest/Rosetta_pgrp-LxAdv-pgrp.dita"
								>2014-02-11 - pgrp to pgrp: Add instruction and example
									<sourcexml>pgrp/@subdoc</sourcexml> and
									<sourcexml>pgrp/@toc-caption</sourcexml>. Support Discussion
								Board: NZ09 Commentary, Form and Precedents</xref>
						</li>
						<li>
							<xref
								href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita"
								>2014-02-03 - remotelink to ref:crossreference: Instruction
								updated if <sourcexml>remotelink</sourcexml> occurs as multiple,
								immediate siblings and without intermediary text within
									<sourcexml>title</sourcexml>. Also added a example for the
								same scenario. Phase 5 UK discussion-defect tracking issue
								#161</xref>
						</li>
						<li>
							<xref href="../../common_newest/Rosetta_text-LxAdv-text.dita"
								>2014-01-31 - text to text: Updated instruction,
									<targetxml>align</targetxml> will be moved in
									<targetxml>p</targetxml> in NL conversion. NZ09 commentary
								discussion board issue for handling
									<sourcexml>text/@align</sourcexml>
							</xref>
						</li>
						<li>
							<xref
								href="../../common_newest/Rosetta_Elements-LxAdv-Empty_Elements.dita"
								>2014-01-16 - Suppress each empty element unless otherwise
								stated: Added list of elements to suppress if empty.</xref>
						</li>
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
							<xref href="../../common_newest/Rosetta_l-LxAdv-list.dita"
								>2014-01-06 - l to list: Added mapping instruction for nested
								lists.</xref>
						</li>
						<li>
							<xref
								href="../../common_newest/Rosetta_footnote-LxAdv-footnote.dita"
								>2014-01-06 - footnotegrp and footnote to footnotegrp and
								footnote: Updated target example for applying the rule of
								"deleting extraneous instances of @morerows, @colsep and
								@rowsep" in sample documents.</xref>
						</li>
						<li>
							<xref
								href="../../common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita"
								>2013-12-30 - ci.cite to lnci.cite: Minor illustrative change.
								Added "(AU Journals/Newsitem)" to headings for last example to
								clarify that retention of
									<sourcexml>@type="cite4thisdoc"</sourcexml> is an exception
								for that content, as already described in narrative
								rules.</xref>
						</li>
						<li>
							<xref
								href="../../common_newest/Rosetta_deflist-LxAdv-deflist.dita"
								>2013-12-20 - deflist to deflist: Added note to place a
									<sourcexml>footnote</sourcexml> or <sourcexml>fnr</sourcexml>
								that is a child of <sourcexml>defitem</sourcexml> into one of
								its children. WebTeam #5158742 - AU04.</xref>
						</li>
						<li>
							<xref
								href="../../common_newest/Rosetta_glp.note_blockquote_p_text_inlineobject-LxAdv-note_bodytext_p_text.dita"
								>2013-12-20 - glp:note: Corrected the target example (added
								ref:corssreference). WebTeam #5158742 - AU04. Applies generally
								to all LBUs and streams.</xref>
						</li>
						<li>
							<xref
								href="../../common_newest/Rosetta_endnote-LxAdv-endnote.dita"
								>2013-12-18 - endnote to endnote: Instruction added to convert
									<sourcexml>remotelink/@refpt</sourcexml> to
									<targetxml>footnote-ref/@anchoridref</targetxml>. WebTeam
								#5158742 - AU04. Applies generally to all LBUs and
								streams.</xref>
						</li>
						<li>
							<xref
								href="../../common_newest/Rosetta_docinfo.alt-renditions-LxAdv-doc.alt-renditions.dita"
								>2013-12-17 - docinfo:alt-renditions/docinfo:alt-rendition to
								doc:alt-renditions/doc:alt-rendition: Added instruction and
								example for <sourcexml>docinfo:alt-rendition/lnlink</sourcexml>.
								(Webteam #247307)</xref>
						</li>
						<li>
							<xref href="../../common_newest/Rosetta_p-LxAdv-p.dita">2013-12-04
								- p to p: Updated target example when <sourcexml>p</sourcexml>
								or <sourcexml>p/@nl="0"</sourcexml> comes in
									<sourcexml>references</sourcexml>, this change directly
								affects NZ07.</xref>
						</li>
					</ol>
				</p>
			</section>
			<section>
				<title>CourtOrder 3.7_BETA</title>
				<p>2013-11-22 - JCG: <ol>
						<li>
							<xref
								href="../../common_newest/Rosetta_NZ-consecutive-note-LxAdv-notes.dita"
								>2013-11-21 - Consecutive note elements to notes: New. R4.5 PIT
								Issue #632. Streams this change immediately applies to (data
								exists for) -- NZ06, NZ10, NZ12, NZ13, NZ18. No additional
								streams will be affected in the future. </xref>
						</li>
						<li>
							<xref href="../../common_newest/Rosetta_p-LxAdv-p.dita">2013-11-21
								- p to p: Updated instruction and example
									<sourcexml>p</sourcexml> or <sourcexml>p/@nl="0"</sourcexml>
								comes in <sourcexml>references</sourcexml>, this change directly
								affects NZ07.</xref>
						</li>
						<li>
							<xref
								href="../../common_newest/Rosetta_glp.note-Chof-li-LxAdv-listitem-note.dita"
								>2013-11-07 - l/glp:note to list/note: Fixed title to correctly
								indicate mapping described. Not a rule change.</xref>
						</li>
						<li>
							<xref
								href="../../common_newest/Rosetta_docinfo.currencystatement-LxAdv-currencystatement.dita"
								>2013-10-29 - docinfo:currencystatement to
								doc:docinfo/currencystatement: WebTeam #233318 created for
								pacific content stream inorder to suppress
									<sourcexml>docinfo:currencystatement</sourcexml> with in
									<sourcexml>leg:levelinfo</sourcexml> and
									<sourcexml>levelinfo</sourcexml>.</xref>
						</li>
						<li>
							<xref
								href="../../common_newest/Rosetta_docinfo.overview-LxAdv-docinfo.overview.dita"
								>2013-10-29 - docinfo:overview to doc:overview: WebTeam #233318
								created for pacific content stream inorder to suppress
									<sourcexml>docinfo:overview</sourcexml> with in
									<sourcexml>leg:levelinfo</sourcexml> and
									<sourcexml>levelinfo</sourcexml>.</xref>
						</li>
						<li>
							<xref
								href="../../common_newest/Rosetta_docinfo.alt-renditions-LxAdv-doc.alt-renditions.dita"
								>2013-10-29 - docinfo:alt-renditions/docinfo:alt-rendition to
								doc:alt-renditions/doc:alt-rendition: Added instruction and
								example for UK06 Laws/Acts/Bills/Measures and UK07 Regulation
								place the text of <sourcexml>leg:officialname</sourcexml> in
									<targetxml>doc:alt-renditions/doc:alt-rendition/ref:lnlink/ref:marker</targetxml>
								(Webteam #243521)</xref>
						</li>
						<li>
							<xref href="../../common_newest/Rosetta_p-LxAdv-p.dita">2013-10-25
								- p to p: Added instruction and example
									<sourcexml>p/@nl="0"</sourcexml> comes in
									<sourcexml>references</sourcexml>.</xref>
						</li>
						<li>
							<xref
								href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita"
								>2013-10-23 - remotelink to ref:crossreference: Added Example
								when <sourcexml>remotelink</sourcexml> having child
									<sourcexml>emph</sourcexml>. Webteam # 239816</xref>
						</li>
						<li>
							<xref href="../../common_newest/Rosetta_figure-LxAdv-figure.dita"
								>2013-10-23 - figure to figure: Added instruction for handling
								figure/p/text/inlineobject Webteam # 239816</xref>
						</li>
						<li>
							<xref href="../../common_newest/Rosetta_edpnum-LxAdv-desig.dita"
								>2013-10-22 - edpnum to desig: Not a rule change. Modified 2nd
								example for clarity. Removed <sourcexml>refpt</sourcexml> from
								source markup. Not pertinent to <sourcexml>edpnum</sourcexml>
								rules. Separate rules for <sourcexml>refpt</sourcexml> provide
								details. Responds to UK LBU query.</xref>
						</li>
						<li>
							<xref
								href="../../common_newest/Rosetta_docinfo.doc-heading-LxAdv-dc.title.dita"
								>2013-10-18 - docinfo:doc-heading to dc:title: Updated
								Instruction when <sourcexml>docinfo:doc-heading</sourcexml>
								contains word RULE: " or STATUTE: .</xref>
						</li>
						<li>
							<xref
								href="../../common_newest/Rosetta_Elements-LxAdv-Empty_Elements.dita"
								>2013-10-14 - Suppress each empty element unless otherwise
								stated: Changed antecedent to singular to match
								instructions.</xref>
						</li>
						<li>
							<xref
								href="../../common_newest/Rosetta_deflist-LxAdv-deflist.dita"
								>2013-10-14 - deflist to deflist: Added new rule to create a
								blank defitem/defdesc element after the defterm element. WebTeam
								# 237242.</xref>
						</li>
						<li>
							<xref
								href="../../common_newest/Rosetta_docinfo.authorattribution-LxAdv-dc.contributor.dita"
								>2013-10-11 - docinfo:authorattribution to dc:contributor:
								Instruction added when <sourcexml>remotelink</sourcexml> as a
								child of
									<sourcexml>docinfo:authorattribution/contrib</sourcexml>.
								WebTeam # is 240252.</xref>
						</li>
						<li>
							<xref
								href="../../common_newest/Rosetta_refpt-Chof-p_text-LxAdv-p_ref.anchor.dita"
								>2013-10-11 - refpt child of p/text to p/ref:anchor: Added a
								note and update the target examples when refpt comes without
								attribute <sourcexml>[@type="ext"]</sourcexml> and
									<sourcexml>[@type="local"]</sourcexml> in source
								documents.</xref>
						</li>
						<li>
							<xref
								href="../../common_newest/Rosetta_refpt-Chof-p_text_emph-LxAdv-p_ref.anchor.dita"
								>2013-10-11 - refpt child of p/text/emph to p/ref:anchor: Added
								a note and update the target examples when refpt comes without
								attribute <sourcexml>[@type="ext"]</sourcexml> and
									<sourcexml>[@type="local"]</sourcexml> in source
								documents.</xref>
						</li>
						<li>
							<xref href="../../common_newest/Rosetta_p-LxAdv-p.dita">2013-10-09
								- p to p: Added instruction and example <sourcexml>p</sourcexml>
								comes with <sourcexml>@nl=”0”</sourcexml>.</xref>
						</li>
						<li>
							<xref
								href="../../common_newest/Rosetta_docinfo.authorattribution-LxAdv-dc.contributor.dita"
								>2013-10-08 - docinfo:authorattribution to dc:contributor:
								Instruction added for handling
									<sourcexml>docinfo:authorattribution</sourcexml> when it is
								having a running text. Affects all Pacific content streams.
								WebTeam # is 238798.</xref>
						</li>
						<li>
							<xref
								href="../../common_newest/Rosetta_endnote-LxAdv-endnote.dita"
								>2013-10-07 - endnote to endnote: Instruction and example for
								added for the Xpath
									<sourcexml>leg:bodytext/glp:note/l/li</sourcexml> related to
									<targetxml>endnote</targetxml> handling. WebTeam # is
								238790.</xref>
						</li>
						<li>
							<xref
								href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita"
								>2013-10-03 - remotelink to ref:crossreference: Added use case
								where remotelink contains @href which is a URL but does not
								contain @hrefclass='http'.</xref>
						</li>
						<li>
							<xref
								href="../../common_newest/Rosetta_footnote-LxAdv-footnote.dita"
								>2013-10-02 - footnotegrp and footnote to footnotegrp and
								footnote: Not a rule change. Cleaned up the note regarding the
								scenario when footnote/@fntoken has a value of "0" in an attempt
								to make the directions clearer.</xref>
						</li>
						<li>
							<xref
								href="../../common_newest/Rosetta_link-LxAdv-ref.lnlink.dita"
								>2013-09-24 - link to ref:lnlink/@service="ATTACHMENT": Not a
								rule change. Modified examples to illustrate when
									<sourcexml>@status</sourcexml> suppressed and when
								retained.</xref>
						</li>
						<li>
							<xref
								href="../../common_newest/Rosetta_desiglabel-Chof-desig-LxAdv-desig.dita"
								>2013-09-19 - desig/desiglabel to desig: Added rules to insert
								space between label and number when none present in source. Rule
								required for UK content. Immediately known to occur in UK06,
								UK07, and UK12. R4.5 Post Iterative Testing Issue 431. WebTeam #
								236033.</xref>
						</li>
						<li>
							<xref
								href="../../common_newest/Rosetta_docinfo.authorattribution-LxAdv-dc.contributor.dita"
								>2013-09-16 - docinfo:authorattribution to dc:contributor:
								Instruction added for suppressing
									<sourcexml>docinfo:authorattribution/contrib</sourcexml> when
								it is child of <sourcexml>leg:levelinfo</sourcexml> and
									<sourcexml>levelinfo</sourcexml>.Affects all Pacific content
								streams. WebTeam # is 234193.</xref>
						</li>
						<li>
							<xref
								href="../../common_newest/Rosetta_docinfo.currencystatement-LxAdv-currencystatement.dita"
								>2013-09-16 - docinfo:currencystatement to
								doc:docinfo/currencystatement: Instruction added for suppressing
									<sourcexml>docinfo:currencystatement</sourcexml> when it is
								child of <sourcexml>leg:levelinfo</sourcexml> and
									<sourcexml>levelinfo</sourcexml>.Affects all Pacific content
								streams. WebTeam # is 234193.</xref>
						</li>
						<li>
							<xref
								href="../../common_newest/Rosetta_docinfo.overview-LxAdv-docinfo.overview.dita"
								>2013-09-16 - docinfo:overview to doc:overview: Instruction
								added for suppressing <sourcexml>docinfo:overview</sourcexml>
								when it is child of <sourcexml>leg:levelinfo</sourcexml> and
									<sourcexml>levelinfo</sourcexml>.Affects all Pacific content
								streams. WebTeam # is 234193.</xref>
						</li>
						<li>
							<xref href="../../common_newest/Rosetta_table-LxAdv-table.dita"
								>2013-09-16 - table to table: Removed an obsolete note regarding
								visual styling of tables.</xref>
						</li>
						<li>
							<xref href="../../DITA-PAC/AU07_courtorder/heading.dita"
								>2013-09-15 - heading: Added instructions regarding
									<sourcexml>refpt</sourcexml>. (Webteam #234565)</xref>
						</li>
						<li>
							<xref href="../../common_newest/Rosetta_table-LxAdv-table.dita"
								>2013-09-12 - table to table: WebTeam #s 235116, 235130, 235126:
								Added instructions for deleting extraneous instances of
								@morerows, @colsep and @rowsep. These instructions apply
								immediately to all UK streams and also to AU18.</xref>
						</li>
						<li>
							<xref href="../../common_newest/Rosetta_title-LxAdv-title.dita"
								>2013-09-03 - title to title: Updated Instruction when
									<sourcexml>title</sourcexml> contains word "TITLE: " or "NAME:
								" or "SITE: ".</xref>
						</li>
						<li>
							<xref
								href="../../common_newest/Rosetta_docinfo.doc-heading-LxAdv-dc.title.dita"
								>2013-09-03 - docinfo:doc-heading to dc:title: Updated
								Instruction when <sourcexml>docinfo:doc-heading</sourcexml>
								contains word "TITLE: " or NAME: or SITE: or SUBJECT:.</xref>
						</li>
						<li>
							<xref
								href="../../common_newest/Rosetta_text-When_Contains_Only_Wihitespace_Or_NBSP_Entity.dita"
								>2013-08-29 - Converting text When it Contains Only Whitespace
								or NBSP Entity: Created per WebStar: WebTeam #223114</xref>
						</li>
						<li>
							<xref
								href="../../common_newest/Rosetta_desiglabel-Chof-desig-LxAdv-desig.dita"
								>2013-08-23 - desig/desiglabel to desig: Removed
									<targetxml>@value</targetxml> from target example element
									<targetxml>desig</targetxml>, as it was decided, that if
								source element doesn't contain <sourcexml>@value</sourcexml>
								then target element <targetxml>desig</targetxml> will not
								contain <targetxml>@value</targetxml>.</xref>
						</li>
						<li>
							<xref
								href="../../common_newest/Rosetta_docinfo.authorattribution-LxAdv-dc.contributor.dita"
								>2013-08-22 - docinfo:authorattribution to dc:contributor:
								Updated instruction and example when
									<sourcexml>person</sourcexml> is an child of
									<sourcexml>docinfo:authorattribution/contrib</sourcexml> and
								removed CR# DAAM2013080706295200. WebTeam # is 229509.</xref>
						</li>
						<li>
							<xref
								href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita"
								>2013-08-22 - remotelink to ref:crossreference: Not a rule
								change. Modified Sample #10 on
									<sourcexml>ci:cite/ci:content/remotelink</sourcexml>. Removed
								target attribute <targetxml>lnci:cite[@citeref]</targetxml>
								because value captured in
									<targetxml>ref:crossreference/ref:locator[@anchoridref]</targetxml>.</xref>
						</li>
						<li>
							<xref
								href="../../common_newest/Rosetta_footnote-LxAdv-footnote.dita"
								>2013-08-22 - footnotegrp and footnote to footnotegrp and
								footnote: Not a rule change. Second target sample modified to
								remove attribute <targetxml>lnci:cite[@citeref]</targetxml>
								because value captured in descendant
									<targetxml>ref:crossreference/ref:locator[@anchoridref]</targetxml>.
								Ancillary/illustrative within this module. Change made to
								promote uniformity across samples.</xref>
						</li>
						<li>
							<xref
								href="../../common_newest/Rosetta_link-LxAdv-ref.lnlink.dita"
								>2013-08-21 - link to ref:lnlink/@service="ATTACHMENT": Added
								instruction for when to suppress
								<sourcexml>@status</sourcexml>.</xref>
						</li>
					</ol>
				</p>
			</section>
			<section>
				<title>CourtOrder 3.5_BETA</title>
				<p>2013-08-20 - JCG: <ol>
						<li>2013-08-20 - removed the following erroneous topics since they
							do not apply to this content stream and should not have been
							included in these instructions. The removal of these topics should
							have absolutely no impact on existing conversion programs since
							these mappings never applied to this content stream.<ul>
								<li><sourcexml>page</sourcexml> with
										<sourcexml>case:decisionsummary</sourcexml> as
									preceding/following siblings</li>
								<li><sourcexml>refpt</sourcexml> first child of
										<sourcexml>leg:bodytext</sourcexml> to
										<targetxml>primlaw:level/ref:anchor</targetxml></li>
								<li><sourcexml>refpt</sourcexml> child of
										<sourcexml>case:body/heading/edpnum</sourcexml> to
										<targetxml>casedigest:body/ref:anchor</targetxml></li>
								<li><sourcexml>refpt</sourcexml> child of
										<sourcexml>leg:endmatter/index/heading/title</sourcexml> to
										<targetxml>index:index/ref:anchor</targetxml></li>
								<li><sourcexml>refpt</sourcexml> child of
										<sourcexml>leg:level/leg:level-vrnt/leg:heading/desig/designum</sourcexml>
									to <targetxml>admindoc:level/ref:anchor</targetxml> or
										<targetxml>primlaw:level/ref:anchor</targetxml></li>
								<li><sourcexml>refpt</sourcexml> child of
										<sourcexml>leg:level/leg:level-vrnt/leg:heading/edpnum</sourcexml>
									to <targetxml>admindoc:level/ref:anchor</targetxml></li>
								<li><sourcexml>refpt</sourcexml> child of
										<sourcexml>leg:level/leg:level-vrnt/leg:levelinfo/leg:levelstatus</sourcexml>
									to <targetxml>primlaw:level/ref:anchor</targetxml></li>
								<li><sourcexml>refpt</sourcexml> child of
										<sourcexml>level/heading/edpnum</sourcexml> to
										<targetxml>admindoc:level/ref:anchor</targetxml></li>
							</ul></li>
						<li>2013-08-20 - added a preamble to the <xref
								href="../AU07_courtorder/general.dita">General Mark-Up</xref>
							part of the CI to clarify that if there is any conflict between
							instructions in the <xref href="../AU07_courtorder/general.dita"
								>General Mark-Up</xref> part of the CI and any previous part,
							the instructions in the previous part should always take
							precedence.</li>
					</ol>
				</p>
			</section>
			<section>
				<title>CourtOrder 3.5_BETA</title>
				<p>2013-08-13 - JCG: <ol>
						<li>
							<xref
								href="../../common_newest/Rosetta_blockquote-link-LxAdv-blockquote-p-text-ref.lnlink.dita"
								>2013-08-12 - blockquote/link to blockquote/p/text/ref:lnlink:
								Added this common instruction to the CI.</xref>
						</li>
						<li>
							<xref
								href="../../DITA-PAC/NZ18_courtorder/case.body_case.content_case.appendix.dita"
								>2013-08-12 - case:body/case:content/case:appendix: Changed
								instruction for <sourcexml>case:appendix/link</sourcexml>, it
								now becomes
									<targetxml>appendix/bodytext/p/text/ref:lnlink</targetxml>.</xref>
						</li>
					</ol>
				</p>
			</section>
			<section>
				<title>CourtOrder 3.4_BETA</title>
				<p>2013-08-09 - JCG: <ol>
						<li>
							<xref
								href="../../common_newest/Rosetta_remotelink-self-inter-document-link-LxAdv-intra-document-link.dita"
								>2013-08-07 - remotelink (self inter-document link) to
								ref:crossreference (intra-document link): Added this common
								instruction to the CI.</xref>
						</li>
						<li>
							<xref
								href="../../common_newest/Rosetta_docinfo.lbu-meta-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta-scheme.dita"
								>2013-08-02 - docinfo:lbu-meta to
								doc:legacy-metadata[@metadatasource="lbu-meta"]: Added
									<sourcexml>@name="selection_criteria_variant"</sourcexml> to
								the list of values in docinfo:metaitem/@name that should be
								retained. And added a example.</xref>
						</li>
					</ol>
				</p>
			</section>
			<section>
				<title>CourtOrder 3.4_BETA</title>
				<p>2013-07-31 - JCG: <ol>
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
							<xref href="../../DITA-PAC/AU07_courtorder/case.length.dita"
								>2013-07-24 - case:length: Added instructions to drop
								punctuation within <sourcexml>case:length</sourcexml> and
								provided an example showing this scenario.</xref>
						</li>
						<li>
							<xref
								href="../../common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita"
								>2013-07-19 - docinfo:assoc-links to doc:related-content: Added
								rule mapping attribute
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
								>2013-07-16 - docinfo:doc-lang and docinfo:doc-country to
								@xml:lang and @xml:ID: Instruction narrative edited for
								language; no changes to mappings, no impact to
								stylesheets.</xref>
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
					</ol>
				</p>
			</section>
			<section>
				<title>CourtOrder 3.4_BETA</title>
				<p>2013-06-28: <ol>
						<li>
							<xref href="case.body_case.content_case.appendix.dita">2013-06-28
								- case:body/case:content/case:appendix/link - Added instruction
								to refer general markup section for link element.</xref>
						</li>
						<li>
							<xref href="case.content_case.judgments.dita">2013-06-28 -
								case:content/case:judgments: Added instruction for source xpath
								legfragment/leg:level/leg:level-vrnt/leg:levelbody/leg:level/leg:level-vrnt
								and also instruction to handle attribute @subdoc</xref>
						</li>
						<li>
							<xref href="case.content_case.judgments.dita">2013-06-28 -
								case:content/case:judgments: Added instruction to handle
								attribute, /leg:level/leg:level-vrnt/leg:heading @inline</xref>
						</li>
						<li>
							<xref href="../../common_newest/Rosetta_l-LxAdv-list.dita"
								>2013-06-28 - Added l to list instruction module to general
								markup section.</xref>
						</li>
					</ol>
				</p>
				<p>Changes in the common modules are listed below: <ol>
						<li>
							<xref
								href="../../common_newest/Rosetta_docinfo.authorattribution-LxAdv-dc.contributor.dita"
								>2013-06-25 - docinfo:authorattribution to dc:contributor: added
								to AU and NZ ditamap for content enrichment</xref>
						</li>
						<li>
							<xref
								href="../../common_newest/Rosetta_docinfo.currencystatement-LxAdv-currencystatement.dita"
								>2013-06-25 - docinfo:currencystatement to
								doc:docinfo/currencystatement: added to AU and NZ ditamap for
								content enrichment</xref>
						</li>
						<li>
							<xref
								href="../../common_newest/Rosetta_docinfo.overview-LxAdv-docinfo.overview.dita"
								>2013-06-25 - docinfo:overview to doc:overview: added to AU and
								NZ ditamap for content enrichment</xref>
						</li>
						<li>
							<xref
								href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita"
								>2013-06-03 - remotelink to ref:crossreference: Updated the
								Target XML 2 by removing the
									<targetxml>@crossreferencetype</targetxml> for Canada
								example.</xref>
						</li>
						<li>
							<xref
								href="../../common_newest/Rosetta_docinfo.lbu-meta-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta-scheme.dita"
								>2013-05-31 - docinfo:lbu-meta to
								doc:legacy-metadata[@metadatasource="lbu-meta"]: Added
								"document-type" to the list of values in docinfo:metaitem/@name
								that should be retained.</xref>
						</li>
					</ol>
				</p>
			</section>
			<section>
				<title>CourtOrder 3.4_BETA</title>
				<p>2013-05-29: <ol>
						<li>Introduction topic: Added a new section - Suppress empty
							elements unless otherwise stated.</li>
						<li>
							<xref
								href="../../common_newest/Rosetta_glp.note_blockquote_p_text_inlineobject-LxAdv-note_bodytext_p_text.dita"
								>2013-05-29 - glp:note: Corrected the file name for
									<sourcexml>inlineobject</sourcexml> in order to make it
								linkable.</xref>
						</li>
						<li>
							<xref
								href="../../common_newest/Rosetta_docinfo.versioninfo-LxAdv-doc.versioninfo-scheme.dita"
								>2013-05-24 - docinfo:versioninfo to doc:versioninfo:
								Instructions added for handling empty use cases of
									<sourcexml>docinfo:versioninfo</sourcexml> for Canada content
								stream.</xref>
						</li>
						<li>
							<xref
								href="../../common_newest/Rosetta_link-LxAdv-ref.lnlink.dita"
								>2013-05-24 - link to ref:lnlink/@service="ATTACHMENT": Updated
								instruction for handling of link when smi is present and some of
								the verbiage is changed.</xref>
						</li>
						<li>
							<xref
								href="../../common_newest/Rosetta_inlineobject-LxAdv-ref.inlineobject.dita"
								>2013-05-24 - inlineobject to ref:inlineobject: Updated
								instruction for handling of inlineobject when smi is present and
								some of the verbiage is changed.</xref>
						</li>
						<li>
							<xref
								href="../../common_newest/Rosetta_inlineobject-LxAdv-figure_ref.inlineobject.dita"
								>2013-05-24 - inlineobject to figure/ref:inlineobject: Updated
								target example, "when smi is present".</xref>
						</li>
						<li>
							<xref
								href="../../common_newest/Rosetta_docinfo-LxAdv-doc.metadata_doc.docinfo.dita"
								>2013-05-16 - docinfo to doc:metadata/doc:docinfo: Fixed typo
								updating urn:contentitem to urn:contentItem</xref>
						</li>
					</ol>
				</p>
			</section>

			<section>
				<title>CourtOrder 3.4_BETA</title>
				<p>2013-05-14: <ol>
						<li>
							<xref href="../AU07_courtorder/case.parallelcite.dita">2013-05-14
								- case:parallelcite: Updated instructions on how to handle the
								attribute
									<sourcexml>case:parallelcite/ci:cite/ci:case/ci:caseref
									@spanref</sourcexml>.</xref>
						</li>
						<li>
							<xref href="case.content_case.judgments.dita">2013-05-14 -
								case:content/case:judgments: Updated instructions on how to
								handle <sourcexml>case:judgments/prelim</sourcexml>.</xref>
						</li>
						<li>
							<xref href="case.body_case.content_case.appendix.dita">2013-05-08
								- case:body/case:content/case:appendix: Updated target example
								to reflect changes per latest Apollo markup.</xref>
						</li>
						<li>
							<xref
								href="../../common_newest/Rosetta_p-limited_remotelink-LxAdv-p_text_ref.lnlink.dita"
								>2013-05-08 - p-limited/emph to p/text/emph: Extended the list
								of allowable values for image handling.</xref>
						</li>
						<li>
							<xref
								href="../../common_newest/Rosetta_blockquote-LxAdv-blockquote.dita"
								>2013-05-08 - blockquote to blockquote: Extended the list of
								allowable values for image handling.</xref>
						</li>
						<li>
							<xref
								href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita"
								>2013-05-08 - remotelink to ref:crossreference: Extended the
								list of allowable values for image handling.</xref>
						</li>
						<li>
							<xref
								href="../../common_newest/Rosetta_inlineobject-LxAdv-ref.inlineobject.dita"
								>2013-05-08 - inlineobject to ref:inlineobject: Extended the
								list of allowable values for image handling.</xref>
						</li>
						<li>
							<xref
								href="../../common_newest/Rosetta_inlineobject-LxAdv-figure_ref.inlineobject.dita"
								>2013-05-08 - inlineobject to figure/ref:inlineobject: Extended
								the list of allowable values for image handling.</xref>
						</li>
						<li>
							<xref
								href="../../common_newest/Rosetta_inlineobject-Chof-h-LxAdv-figure_ref.inlineobject.dita"
								>2013-05-08 - h/inlineobject to figure/ref:inlineobject:
								Extended the list of allowable values for image handling.</xref>
						</li>
						<li>
							<xref
								href="../../common_newest/Rosetta_inlineobject-Chof-emph-LxAdv-figure_ref.inlinobject.dita"
								>2013-05-08 - emph/inlineobject to figure/ref:inlineobject:
								Extended the list of allowable values for image handling.</xref>
						</li>
						<li>
							<xref
								href="../../common_newest/Rosetta_inlineobject-Chof-glp.note-LxAdv-SUPPRESS.dita"
								>2013-05-08 - glp:note/inlineobject to: Extended the list of
								allowable values for image handling.</xref>
						</li>
						<li>
							<xref
								href="../../common_newest/Rosetta_inlineobject-Chof-dispformula-LxAdv-formula_ref.inlineobject.dita"
								>2013-05-08 - dispformula/inlineobject to
								formula/ref:inlineobject: Extended the list of allowable values
								for image handling.</xref>
						</li>
						<li>
							<xref
								href="../../common_newest/Rosetta_inlineobject-Chof-p_blockquote-LxAdv-p_figure_ref.inlineobject.dita"
								>2013-05-08 - p/blockquote/inlineobject to
								p/figure/ref:inlineobject: Extended the list of allowable values
								for image handling.</xref>
						</li>
						<li>
							<xref href="../../common_newest/Rosetta_figure-LxAdv-figure.dita"
								>2013-05-08 - figure to figure: Extended the list of allowable
								values for image handling.</xref>
						</li>
						<li>
							<xref
								href="../../common_newest/Rosetta_glp.note-Chof-figure-LxAdv-figure.dita"
								>2013-05-08 - (Legislation &amp; Regulation) figure/glp:note to
								figure: Extended the list of allowable values for image
								handling.</xref>
						</li>
					</ol>
				</p>
			</section>
			<section>
				<title>CourtOrder 3.4_BETA</title>
				<p>2013-05-06: <ol>
						<li>Introduction topic: Modified the schema version to
							3.14_BETA.</li>
						<li>Namespaces topic: Added a new section -
							Rosetta_Elements-LxAdv-Empty_Elements</li>
						<li>
							<xref
								href="../../common_newest/Rosetta_link-LxAdv-ref.lnlink.dita"
								>2013-05-02 - link to ref:lnlink/@service="ATTACHMENT": Some of
								the verbiage is changed and updated target example to if the SMI
								is present then a <targetxml>ref:lnlink/@status</targetxml>
								attribute is set to “valid”.</xref>
						</li>
						<li>
							<xref
								href="../../common_newest/Rosetta_inlineobject-LxAdv-ref.inlineobject.dita"
								>2013-05-02 - inlineobject to ref:inlineobject: Some of the
								verbiage is changed and updated target example to if the SMI is
								present then a <targetxml>ref:inliineobject/@status</targetxml>
								attribute is set to “valid”.</xref>
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
							<xref
								href="../../common_newest/Rosetta_p-limited_remotelink-LxAdv-p_text_ref.lnlink.dita"
								>2013-05-01 - p-limited/emph to p/text/emph: Removed
								instructions for section "Pre-Release 4.0" because according to
								latest Apollo markup, section "Release 4.0 and after" and
								section "Pre-Release 4.0" now have similar conversion
								markup.</xref>
						</li>
						<li>
							<xref
								href="../../common_newest/Rosetta_blockquote-LxAdv-blockquote.dita"
								>2013-05-01 - blockquote to blockquote: Removed instructions for
								section "Pre-Release 4.0" because according to latest Apollo
								markup, section "Release 4.0 and after" and section "Pre-Release
								4.0" now have similar conversion markup.</xref>
						</li>
						<li>
							<xref
								href="../../common_newest/Rosetta_link-LxAdv-ref.lnlink.dita"
								>2013-05-01 - link to ref:lnlink/@service="ATTACHMENT": Updated
								instructions and target example per latest Apollo markup.</xref>
						</li>
						<li>
							<xref
								href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita"
								>2013-05-01 - remotelink to ref:crossreference: Removed
								instructions for section "Pre-Release 4.0" because according to
								latest Apollo markup, section "Release 4.0 and after" and
								section "Pre-Release 4.0" now have similar conversion
								markup.</xref>
						</li>
						<li>
							<xref
								href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita"
								>2013-05-01 - remotelink to ref:crossreference: "Instruction
								added for <sourcexml>ci:cite/ci:content/remotelink</sourcexml>
								specifying that the <sourcexml>remotelink</sourcexml> is to be
								converted to <targetxml>ref:crossreference</targetxml> but the
								containing elements' start-tags and end-tags
									(<sourcexml>ci:cite</sourcexml> and
									<sourcexml>ci:content</sourcexml>) are dropped", has been
								removed from the instructions and now
									<sourcexml>remotelink</sourcexml> will be converted to the
								resulting mapping where it is. For more details you can see
								example: Source XML 10: <sourcexml>remotelink</sourcexml> as a
								child of <sourcexml>ci:cite/ci:content</sourcexml>
							</xref>
						</li>
						<li>
							<xref
								href="../../common_newest/Rosetta_inlineobject-LxAdv-ref.inlineobject.dita"
								>2013-05-01 - inlineobject to ref:inlineobject: Removed
								instructions for section "Pre-Release 4.0" because according to
								latest Apollo markup, section "Release 4.0 and after" and
								section "Pre-Release 4.0" now have similar conversion
								markup.</xref>
						</li>
						<li>
							<xref
								href="../../common_newest/Rosetta_inlineobject-LxAdv-figure_ref.inlineobject.dita"
								>2013-05-01 - inlineobject to figure/ref:inlineobject: Removed
								instructions for section "Pre-Release 4.0" because according to
								latest Apollo markup, section "Release 4.0 and after" and
								section "Pre-Release 4.0" now have similar conversion
								markup.</xref>
						</li>
						<li>
							<xref
								href="../../common_newest/Rosetta_inlineobject-Chof-h-LxAdv-figure_ref.inlineobject.dita"
								>2013-05-01 - h/inlineobject to figure/ref:inlineobject: Removed
								instructions for section "Pre-Release 4.0" because according to
								latest Apollo markup, section "Release 4.0 and after" and
								section "Pre-Release 4.0" now have similar conversion
								markup.</xref>
						</li>
						<li>
							<xref
								href="../../common_newest/Rosetta_inlineobject-Chof-emph-LxAdv-figure_ref.inlinobject.dita"
								>2013-05-01 - emph/inlineobject to figure/ref:inlineobject:
								Removed instructions for section "Pre-Release 4.0" because
								according to latest Apollo markup, section "Release 4.0 and
								after" and section "Pre-Release 4.0" now have similar conversion
								markup.</xref>
						</li>
						<li>
							<xref
								href="../../common_newest/Rosetta_inlineobject-Chof-glp.note-LxAdv-SUPPRESS.dita"
								>2013-05-01 - glp:note/inlineobject to: Removed instructions for
								section "Pre-Release 4.0" because according to latest Apollo
								markup, section "Release 4.0 and after" and section "Pre-Release
								4.0" now have similar conversion markup.</xref>
						</li>
						<li>
							<xref
								href="../../common_newest/Rosetta_inlineobject-Chof-dispformula-LxAdv-formula_ref.inlineobject.dita"
								>2013-05-01 - dispformula/inlineobject to
								formula/ref:inlineobject: Removed instructions for section
								"Pre-Release 4.0" because according to latest Apollo markup,
								section "Release 4.0 and after" and section "Pre-Release 4.0"
								now have similar conversion markup.</xref>
						</li>
						<li>
							<xref
								href="../../common_newest/Rosetta_inlineobject-Chof-p_blockquote-LxAdv-p_figure_ref.inlineobject.dita"
								>2013-05-01 - p/blockquote/inlineobject to
								p/figure/ref:inlineobject: Removed instructions for section
								"Pre-Release 4.0" because according to latest Apollo markup,
								section "Release 4.0 and after" and section "Pre-Release 4.0"
								now have similar conversion markup.</xref>
						</li>
						<li>
							<xref href="../../common_newest/Rosetta_figure-LxAdv-figure.dita"
								>2013-05-01 - figure to figure: Removed instructions for section
								"Pre-Release 4.0" because according to latest Apollo markup,
								section "Release 4.0 and after" and section "Pre-Release 4.0"
								now have similar conversion markup.</xref>
						</li>
						<li>
							<xref
								href="../../common_newest/Rosetta_glp.note-Chof-figure-LxAdv-figure.dita"
								>2013-05-01 - (Legislation &amp; Regulation) figure/glp:note to
								figure: Removed instructions for section "Pre-Release 4.0"
								because according to latest Apollo markup, section "Release 4.0
								and after" and section "Pre-Release 4.0" now have similar
								conversion markup.</xref>
						</li>
						<li>
							<xref
								href="../../common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita"
								>2013-05-01 - ci.cite to lnci.cite: Removed special rule for
									<sourcexml>ci:cite/ci:content/remotelink</sourcexml> which
								required suppression of
									<sourcexml>ci:cite/ci:content</sourcexml> tags. The elements
								are now retained and convert according to common rules.</xref>
						</li>
						<li>
							<xref
								href="../../common_newest/Rosetta_p-limited_remotelink-LxAdv-p_text_ref.lnlink.dita"
								>2013-04-30 - p-limited/emph to p/text/emph: Updated target
								sample according to latest Apollo markup.</xref>
						</li>
						<li>
							<xref
								href="../../common_newest/Rosetta_blockquote-LxAdv-blockquote.dita"
								>2013-04-30 - blockquote to blockquote: Updated target sample
								according to latest Apollo markup.</xref>
						</li>
						<li>
							<xref
								href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita"
								>2013-04-30 - remotelink to ref:crossreference: Updated target
								sample according to latest Apollo markup.</xref>
						</li>
						<li>
							<xref
								href="../../common_newest/Rosetta_inlineobject-LxAdv-ref.inlineobject.dita"
								>2013-04-30 - inlineobject to ref:inlineobject: Updated target
								sample according to latest Apollo markup.</xref>
						</li>
						<li>
							<xref
								href="../../common_newest/Rosetta_inlineobject-LxAdv-figure_ref.inlineobject.dita"
								>2013-04-30 - inlineobject to figure/ref:inlineobject: Updated
								target sample according to latest Apollo markup.</xref>
						</li>
						<li>
							<xref
								href="../../common_newest/Rosetta_inlineobject-Chof-h-LxAdv-figure_ref.inlineobject.dita"
								>2013-04-30 - h/inlineobject to figure/ref:inlineobject: Updated
								target sample according to latest Apollo markup.</xref>
						</li>
						<li>
							<xref
								href="../../common_newest/Rosetta_inlineobject-Chof-emph-LxAdv-figure_ref.inlinobject.dita"
								>2013-04-30 - emph/inlineobject to figure/ref:inlineobject:
								Updated target sample according to latest Apollo markup.</xref>
						</li>
						<li>
							<xref
								href="../../common_newest/Rosetta_inlineobject-Chof-glp.note-LxAdv-SUPPRESS.dita"
								>2013-04-30 - glp:note/inlineobject to: Updated target sample
								according to latest Apollo markup.</xref>
						</li>
						<li>
							<xref
								href="../../common_newest/Rosetta_inlineobject-Chof-dispformula-LxAdv-formula_ref.inlineobject.dita"
								>2013-04-30 - dispformula/inlineobject to
								formula/ref:inlineobject: Updated target sample according to
								latest Apollo markup.</xref>
						</li>
						<li>
							<xref
								href="../../common_newest/Rosetta_inlineobject-Chof-p_blockquote-LxAdv-p_figure_ref.inlineobject.dita"
								>2013-04-30 - p/blockquote/inlineobject to
								p/figure/ref:inlineobject: Updated target sample according to
								latest Apollo markup.</xref>
						</li>
						<li>
							<xref href="../../common_newest/Rosetta_figure-LxAdv-figure.dita"
								>2013-04-30 - figure to figure: Updated target sample according
								to latest Apollo markup.</xref>
						</li>
						<li>
							<xref
								href="../../common_newest/Rosetta_glp.note-Chof-figure-LxAdv-figure.dita"
								>2013-04-30 - (Legislation &amp; Regulation) figure/glp:note to
								figure: Updated target sample according to latest Apollo
								markup.</xref>
						</li>
						<li>
							<xref
								href="../../common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita"
								>2013-04-24 - ci.cite to lnci.cite: Added a mapping for
									<sourcexml>ci:procphrase</sourcexml> to
									<sourcexml>lnci:procphrase</sourcexml>
							</xref>
						</li>
						<li>
							<xref
								href="../../common_newest/Rosetta_docinfo.doc-lang-and-doc-country-LxAdv-ROOT_xml.lang.dita"
								>2013-04-19 - docinfo:doc-lang and docinfo:doc-country to
								@xml:lang and @xml:ID: Added note about applicability of
								restrictions and required modifications for
									<targetxml>xml:id</targetxml> to other scenarios.</xref>
						</li>
						<li>
							<xref
								href="../../common_newest/Rosetta_docinfo.custom-metafields-LxAdv-SUPPRESS.dita"
								>2013-04-16 - docinfo:custom-metafields is SUPPRESSED: Updated
								the instruction of handling
									<sourcexml>docinfo:custom-metafield[@name="JURIS-SORT"]</sourcexml>,
									<sourcexml>docinfo:custom-metafield[@name="COURT-SORT"]</sourcexml>,
								and
									<sourcexml>docinfo:custom-metafield[@name="TERM-SORT"]</sourcexml>
								markup in CA Dictionary content stream.</xref>
						</li>
						<li>
							<xref
								href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita"
								>2013-04-10 - remotelink to ref:crossreference: Added Source XML
								7a: for link to URL, with non-URL text content because it was
								previously missing, only the target example was here.</xref>
						</li>
						<li>
							<xref
								href="../../common_newest/Rosetta_docinfo.lbu-meta-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta-scheme.dita"
								>2013-04-09 - docinfo:lbu-meta to
								doc:legacy-metadata[@metadatasource="lbu-meta"]: Added the
								instruction for handling
									<sourcexml>docinfo:metaitem[@name="QLDB"]</sourcexml>.</xref>
						</li>
						<li>
							<xref
								href="../../common_newest/Rosetta_docinfo.doc-id-LxAdv-dcidentifier_lnmetaidentifier-scheme.dita"
								>2013-03-20 - docinfo:doc-id to
								dc:identifier[@lnmeta:identifier-scheme]: Updated the
								information on handling the situation when
									<sourcexml>docinfo:dpsi[@id-string]</sourcexml> is absent with
								instructions to get the dpsi from
									<sourcexml>docinfo/docinfo:custom-metafields/docinfo:custom-metafield[@name="dpsi"]</sourcexml>.</xref>
						</li>
						<li>
							<xref
								href="../../common_newest/Rosetta_docinfo.custom-metafields-LxAdv-SUPPRESS.dita"
								>2013-03-20 - docinfo:custom-metafields is SUPPRESSED: Updated
								the instruction of handling
									<sourcexml>docinfo:custom-metafield[@name="dpsi"]</sourcexml>
								markup in CA content stream.</xref>
						</li>
						<li>
							<xref href="../../common_newest/Rosetta_pgrp-LxAdv-pgrp.dita"
								>2013-03-14 - pgrp to pgrp: Add instruction and example
									<sourcexml>pgrp/@id</sourcexml>.</xref>
						</li>
						<li>
							<xref href="../../common_newest/Rosetta_p-LxAdv-p.dita">2013-03-14
								- p to p: Add instruction and example
									<sourcexml>p/@style</sourcexml>.</xref>
						</li>
						<li>
							<xref href="../../common_newest/Rosetta_nl-LxAdv-proc.nl.dita"
								>2013-03-14 - nl to proc:nl: Add instruction and example
									<sourcexml>nl/@n</sourcexml>.</xref>
						</li>
						<li>
							<xref
								href="../../common_newest/Rosetta_inlineobject-LxAdv-ref.inlineobject.dita"
								>2013-03-13 - inlineobject to ref:inlineobject: Removed the
								value leg1.png and added the statement "These files should be
								suppressed for both *.gif and *.png file types" was
								added.</xref>
						</li>
						<li>
							<xref
								href="../../common_newest/Rosetta_inlineobject-LxAdv-ref.inlineobject.dita"
								>2013-03-12 - inlineobject to ref:inlineobject: Added an
								additional value of leg1.pngto the
									<sourcexml>inlineobject</sourcexml>suppression list</xref>
						</li>
						<li>
							<xref
								href="../../common_newest/Rosetta_glp.note_blockquote_p_text_inlineobject-LxAdv-note_bodytext_p_text.dita"
								>2013-03-12 - glp:note: Updated the instructions to remove the
								contradictory addition of inlineobject within the output</xref>
						</li>
						<li>
							<xref
								href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita"
								>2013-03-11 - remotelink to ref:crossreference: Instruction and
								example added on how to handle <targetxml>ref:marker
								</targetxml> if it is in
									<targetxml>ref:lnlink@service=”URL”</targetxml>and the
									<targetxml>ref:key-value@value</targetxml> starts-with (.,
								'http://www.lexisnexis.com/au/legal/api')</xref>
						</li>
						<li>
							<xref
								href="../../common_newest/Rosetta_heading-LxAdv-heading.dita"
								>2013-03-06 - heading to heading: Removed instructions/rules for
								exceptional desig scenario and deprecated attribute
									<targetxml>@followstitle</targetxml>.</xref>
						</li>
						<li>
							<xref href="../../common_newest/Rosetta_edpnum-LxAdv-desig.dita"
								>2013-03-06 - edpnum to desig: Removed instructions/rules for
								exceptional desig scenario and deprecated attribute
									<targetxml>@followstitle</targetxml>. Added instructions for
								maintaining source document ordering.</xref>
						</li>
						<li>
							<xref
								href="../../common_newest/Rosetta_glp.note_blockquote_p_text_inlineobject-LxAdv-note_bodytext_p_text.dita"
								>2013-03-05 - glp:note: Example was added for
									<sourcexml>inlineobject</sourcexml> within target xml
								example.</xref>
						</li>
						<li>
							<xref
								href="../../common_newest/Rosetta_glp.note_blockquote_p_text_inlineobject-LxAdv-note_bodytext_p_text.dita"
								>2013-03-01 - glp:note: Additional information was added for the
								handling of leg1.gif and leg1.png within an
									<sourcexml>inlineobject</sourcexml>.</xref>
						</li>
						<li>
							<xref
								href="../../common_newest/Rosetta_docinfo.alt-renditions-LxAdv-doc.alt-renditions.dita"
								>2013-02-26 - docinfo:alt-renditions/docinfo:alt-rendition to
								doc:alt-renditions/doc:alt-rendition: Updated target example per
								project requirement.</xref>
						</li>
						<li>
							<xref
								href="../../common_newest/Rosetta_emp-Chof-heading_title-LxAdv-heading_title.dita"
								>2013-02-26 - heading/title/emph to heading/title:
								Created.</xref>
						</li>
						<li>
							<xref
								href="../../common_newest/Rosetta_link-LxAdv-ref.lnlink.dita"
								>2013-02-26 - link to ref:lnlink/@service="ATTACHMENT": Updated
								target example per project requirement.</xref>
						</li>
						<li>
							<xref
								href="../../common_newest/Rosetta_p-limited_remotelink-LxAdv-p_text_ref.lnlink.dita"
								>2013-02-18 - p-limited/emph to p/text/emph: Created two
								sections, one for "Release 4.0 and after" and another for
								"Pre-Release 4.0".</xref>
						</li>
						<li>
							<xref
								href="../../common_newest/Rosetta_blockquote-LxAdv-blockquote.dita"
								>2013-02-18 - blockquote to blockquote: Created two sections,
								one for "Release 4.0 and after" and another for "Pre-Release
								4.0".</xref>
						</li>
						<li>
							<xref
								href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita"
								>2013-02-18 - remotelink to ref:crossreference: Created two
								sections, one for "Release 4.0 and after" and another for
								"Pre-Release 4.0".</xref>
						</li>
						<li>
							<xref
								href="../../common_newest/Rosetta_inlineobject-LxAdv-ref.inlineobject.dita"
								>2013-02-18 - inlineobject to ref:inlineobject: Created two
								sections, one for "Release 4.0 and after" and another for
								"Pre-Release 4.0".</xref>
						</li>
						<li>
							<xref
								href="../../common_newest/Rosetta_inlineobject-LxAdv-figure_ref.inlineobject.dita"
								>2013-02-18 - inlineobject to figure/ref:inlineobject: Created
								two sections, one for "Release 4.0 and after" and another for
								"Pre-Release 4.0".</xref>
						</li>
						<li>
							<xref
								href="../../common_newest/Rosetta_inlineobject-Chof-h-LxAdv-figure_ref.inlineobject.dita"
								>2013-02-18 - h/inlineobject to figure/ref:inlineobject: Created
								two sections, one for "Release 4.0 and after" and another for
								"Pre-Release 4.0".</xref>
						</li>
						<li>
							<xref
								href="../../common_newest/Rosetta_inlineobject-Chof-emph-LxAdv-figure_ref.inlinobject.dita"
								>2013-02-18 - emph/inlineobject to figure/ref:inlineobject:
								Created two sections, one for "Release 4.0 and after" and
								another for "Pre-Release 4.0".</xref>
						</li>
						<li>
							<xref
								href="../../common_newest/Rosetta_inlineobject-Chof-glp.note-LxAdv-SUPPRESS.dita"
								>2013-02-18 - glp:note/inlineobject to: Created two sections,
								one for "Release 4.0 and after" and another for "Pre-Release
								4.0".</xref>
						</li>
						<li>
							<xref
								href="../../common_newest/Rosetta_inlineobject-Chof-dispformula-LxAdv-formula_ref.inlineobject.dita"
								>2013-02-18 - dispformula/inlineobject to
								formula/ref:inlineobject: Created two sections, one for "Release
								4.0 and after" and another for "Pre-Release 4.0".</xref>
						</li>
						<li>
							<xref
								href="../../common_newest/Rosetta_inlineobject-Chof-p_blockquote-LxAdv-p_figure_ref.inlineobject.dita"
								>2013-02-18 - p/blockquote/inlineobject to
								p/figure/ref:inlineobject: Created two sections, one for
								"Release 4.0 and after" and another for "Pre-Release
								4.0".</xref>
						</li>
						<li>
							<xref href="../../common_newest/Rosetta_figure-LxAdv-figure.dita"
								>2013-02-18 - figure to figure: Created two sections, one for
								"Release 4.0 and after" and another for "Pre-Release
								4.0".</xref>
						</li>
						<li>
							<xref
								href="../../common_newest/Rosetta_glp.note-Chof-figure-LxAdv-figure.dita"
								>2013-02-18 - (Legislation &amp; Regulation) figure/glp:note to
								figure: Created two sections, one for "Release 4.0 and after"
								and another for "Pre-Release 4.0".</xref>
						</li>
						<li>
							<xref
								href="../../common_newest/Rosetta_form-chars-LxAdv-formchars.dita"
								>2013-02-08 - form-chars to proc:formchars: Corrected the last
								mapping of <sourcexml>form-chars[@character=" "]</sourcexml> to
									<targetxml>proc:formchars[@formchar="invisible"]</targetxml>
								so that the source element properly displays as
									<sourcexml>form-chars[@character="&amp;nbsp;"]</sourcexml>.</xref>
						</li>
						<li>
							<xref
								href="../../common_newest/Rosetta_char-line-LxAdv-proc.formchars.dita"
								>2013-02-08 - char-line to proc:formchars: Corrected the last
								mapping of <sourcexml>char-line[@character=" "]</sourcexml> to
									<targetxml>proc:formchars[@formchar="invisible"]</targetxml>
								so that the source element properly displays as
									<sourcexml>char-line[@character="&amp;nbsp;"]</sourcexml>.</xref>
						</li>
						<li>
							<xref
								href="../../common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita"
								>2013-01-22 - ci.cite to lnci.cite: Instruction modified for the
								scenario <sourcexml>ci:cite/ci:content/remotelink</sourcexml> to
								indicate that the <sourcexml>ci:cite</sourcexml> and
									<sourcexml>ci:content</sourcexml> start-tags and end-tags (but
								not their content) are dropped.</xref>
						</li>
						<li>
							<xref
								href="../AU07_courtorder/Hybrid%20Practice%20Notes%20_%20Case%20Summaries.dita"
								>2013-01-17 - Hybrid Practice Notes-Case Summaries: Instructions
								on how to populate
									<targetxml>decision:decisiondate/@normdate</targetxml> were
								added. The target example was updated to include
									<targetxml>@normdate</targetxml> in
									<targetxml>decision:decisiondate</targetxml>.</xref>
						</li>
						<li>
							<xref
								href="../../common_newest/Rosetta_footnote-LxAdv-footnote.dita"
								>2013-01-09 - footnotegrp and footnote to footnotegrp and
								footnote: Added instruction note for handling of
									<sourcexml>footnote[@fntoken]</sourcexml> with value 0 for UK
								content types.</xref>
						</li>
						<li>
							<xref href="../../common_newest/Rosetta_emph-LxAdv-emph.dita"
								>2013-01-08 - emph to emph: Added note for handling
									<targetxml>emph/emph</targetxml> has the same
									<targetxml>@typestyle</targetxml> value.</xref>
						</li>
						<li>
							<xref
								href="../../common_newest/Rosetta_docinfo.custom-metafields-LxAdv-SUPPRESS.dita"
								>2013-01-07 - docinfo:custom-metafields is SUPPRESSED: Updated
								the instruction of handling
									<sourcexml>docinfo:custom-metafield[@searchtype="CITED-COUNT"]</sourcexml>
								markup in CA content stream.</xref>
						</li>
						<li>
							<xref
								href="../../common_newest/Rosetta_inlineobject-LxAdv-figure_ref.inlineobject.dita"
								>2012-12-03 - inlineobject to figure/ref:inlineobject: Moved
								full conversion instruction to new base topic
									<sourcexml>inlineobject</sourcexml> to
									<targetxml>ref:inlineobject</targetxml>. This topic now
								specific to <targetxml>figure/ref:inlineobject</targetxml>
								mapping.</xref>
						</li>
						<li>
							<xref
								href="../../common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita"
								>2012-11-29 - ci.cite to lnci.cite: Updated instructions to drop
								all <sourcexml>@spanref</sourcexml>.</xref>
						</li>
						<li>
							<xref
								href="../../common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita"
								>2012-09-18 - ci.cite to lnci.cite: Instruction and example
								added for handling of
									<sourcexml>ci:cite/@type="cite4thisdoc"</sourcexml> for AU
								Journals/Newsitem.</xref>
						</li>
						<li>
							<xref
								href="../../common_newest/Rosetta_char-line-LxAdv-proc.formchars.dita"
								>2012-09-11 - char-line to proc:formchars: Removed CR number
								(LBAM2011121605552800).</xref>
						</li>
						<li>
							<xref
								href="../../common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita"
								>2012-09-11 - ci.cite to lnci.cite: Created.</xref>
						</li>
						<li>
							<xref
								href="../../common_newest/Rosetta_docinfo.custom-metafields-LxAdv-SUPPRESS.dita"
								>2012-09-06 - docinfo:custom-metafields is SUPPRESSED:
								Created.</xref>
						</li>
						<li>
							<xref
								href="../../common_newest/Rosetta_form-chars-LxAdv-formchars.dita"
								>2012-08-30 - form-chars to proc:formchars: Created.</xref>
						</li>
						<li>
							<xref href="../../common_newest/Rosetta_emph-LxAdv-emph.dita"
								>2012-02-28 - emph to emph: Added instructions for handling of
									<sourcexml>case:judges/emph/@typestyle="smcaps"</sourcexml>.</xref>
						</li>
						<li>
							<xref href="../../common_newest/Rosetta_emph-LxAdv-emph.dita"
								>2011-12-15 - emph to emph: Created.</xref>
						</li>
						<li>
							<xref
								href="../../common_newest/Rosetta_char-line-LxAdv-proc.formchars.dita"
								>2011-09-11 - char-line to proc:formchars: Created.</xref>
						</li>
					</ol>
				</p>
			</section>
			<section>
				<title>CourtOrder 3.1_BETA</title>
				<p>2013-01-30: <ol>
						<li>Added instruction for NZ court order source path
								<sourcexml>case:headnote/case:factsummary/l</sourcexml>.</li>
						<li>Added instruction for NZ court order source path
								<sourcexml>case:headnote/case:factsummary/h</sourcexml>.</li>
						<li>Added instruction for NZ court order source path
								<sourcexml>case:headnote/case:factsummary/blockquote</sourcexml>.</li>
					</ol>
				</p>
			</section>
			<section>
				<title>CourtOrder 3.1_BETA</title>
				<p> 2013-01-22: <ol>
						<li> General Markup section: remotelink to ref:crossreference -
							Added instruction for <sourcexml>remotelink</sourcexml> occuring
							within <sourcexml>ci:cite/ci:content/</sourcexml>. </li>
					</ol>
				</p>
			</section>
			<section>
				<title>CourtOrder 3.1_BETA</title>
				<p>2012-12-10: <ol>
						<li>case:body/heading - Removed the attribute - type
								<targetxml>desig/@type="editorassigned"</targetxml> from the
							instruction and NL sample.</li>
						<li>General Markup section - Added a new common module -
							Rosetta_inlineobject-LxAdv-ref.inlineobject.</li>
					</ol></p>
			</section>
			<section>
				<title>CourtOrder 3.1_BETA</title>
				<p>2012-11-12: <ol>
						<li>General Markup section : footnotegrp and footnote :Added
							instructions for creating
								<targetxml>footnote/ref:returnreference</targetxml> and
							instructions for handling of footnotegrp within case:appendix,
							case:consideredcases, case:priorhist, note and prelim.</li>
					</ol>
				</p>
			</section>
			<section>
				<title>CourtOrder 3.1_BETA</title>
				<p>2012-10-12: <ol>
						<li>NZ_case.factsumary: Added a note with details on how to format
								<targetxml>@anchoridref</targetxml>.</li>
					</ol>
				</p>
			</section>
			<section>
				<title>CourtOrder 2.12_BETA</title>
				<p>2012-08-27: <ol>
						<li>Introduction topic: Modified the schema version to
							2.12_BETA.</li>
						<li>case.content_case.judgments topic: Updated
								<sourcexml>remotelink</sourcexml> rules at
								<sourcexml>pgrp/heading/title/remotelink</sourcexml> and
								<sourcexml>p/text/ci:cite/ci:content/remotelink</sourcexml>.
							Also updated sample at
								<sourcexml>ci:content/remotelink</sourcexml>.</li>
						<li>h topic: No rule change. Updated sample to new markup for
								<sourcexml>ci:content/remotelink</sourcexml>.</li>
					</ol>
				</p>
			</section>
			<section>
				<title>CourtOrder 2.11_BETA</title>
				<p>2012-08-14: <ol>
						<li>Introduction topic: Modified the schema version to
							2.11_BETA.</li>
						<li>case:body/heading: Updated instructions for the scenario when
								<sourcexml>case:body/heading/title</sourcexml> should map to
								<targetxml>h</targetxml>.</li>
						<li>NZ_case.factsumary : Updated the instructions on how to handle
								<sourcexml>case:headnote/case:factsummary/p/text/link</sourcexml>.</li>
						<li>General Markup section : footnotegrp and footnote : Instructions
							and example updated for handling of footnotes.</li>
					</ol>
				</p>
			</section>
			<section>
				<title/>
				<p>2012-08-03: <ol>
						<li>case:body/heading: Added directions for the scenario when
								<sourcexml>case:body/heading/title</sourcexml> should map to
								<targetxml>h</targetxml>.</li>
					</ol>
				</p>
			</section>
			<section>
				<title>CourtOrder 2.10_BETA</title>
				<p>2012-08-02: <ol>
						<li>case:content/case:judgments: Corrected an XPath in the note
							about suppressing duplicate content in
								<sourcexml>case:judges</sourcexml>.</li>
					</ol>
				</p>
			</section>
			<section>
				<title>CourtOrder 2.9_BETA</title>
				<p>2012-07-23: <ol>
						<li>case:length : Added a note on how to handle the target attribute
								<targetxml>@unit</targetxml>.</li>
						<li>NZ-case:factsummary : Corrected the NL example <sourcexml>link
								@refpt</sourcexml>.</li>
					</ol>
				</p>
			</section>
			<section>
				<title>CourtOrder 2.9_BETA</title>
				<p>2012-07-13: <ol>
						<li>case:body/heading : Modified the instructions (and example) for
							handling <sourcexml>case:body/heading/edpnum/refpt</sourcexml>
							when there is no immediate sibling
							<sourcexml>desig</sourcexml>.</li>
						<li>Hybrid Practice Notes-Case Summaries : Added a note section that
							hybrid documents apply only to NZ Practice Notes.</li>
						<li>case:content/case:judgments: Added directions to suppress
								<sourcexml>case:content/case:judgments/case:judgment/case:courtinfo/case:judges</sourcexml>
							if its content (case insensitive) is the same as the content in
								<sourcexml>case:headnote/case:courtinfo/case:judges</sourcexml>.</li>
					</ol>
				</p>
			</section>
			<section>
				<title>CourtOrder 2.9_BETA</title>
				<p>2012-07-10: <ol>
						<li>General Markup section - heading : Added instructions to merge
							data into a single <sourcexml>heading</sourcexml> element when 2
							or more consecutive sibling source elements map to
								<sourcexml>heading</sourcexml>.</li>
					</ol>
				</p>
			</section>
			<section>
				<title>CourtOrder 2.9_BETA</title>
				<p>2012-07-06: <ol>
						<li>Introduction topic: Modified the schema version to
							2.9_BETA.</li>
						<li>Introduction topic: Added a note section on how to handle the
							value of attribute <sourcexml>CASEDOC @type</sourcexml>.</li>
						<li>General Markup section - footnote : Updated the instructions for
							handling <sourcexml>footnote/@type</sourcexml> with directions to
							suppress @type when it has a value of "annotation". </li>
						<li>General Markup section - inlineobject : Updated the instructions
							for handling
								<sourcexml>ci:content/remotelink/inlineobject/@alttext</sourcexml>
							in a citator document with directions to strip the text " - Click
							for CaseBase entry" before mapping it to
								<targetxml>ref:crossreference/ref:content</targetxml>.</li>
					</ol>
				</p>
			</section>
			<section>
				<title>CourtOrder 2.8_BETA</title>
				<p>2012-06-18: <ol>
						<li>Introduction topic: Modified the schema version to
							2.8_BETA.</li>
						<li>CR # DAAM2012042415014700 has been implemented to allow
								<targetxml>note</targetxml> within
								<targetxml>heading</targetxml>.</li>
						<li>case:courtcode topic : Added a note section at the end of the
							topic.</li>
						<li>General Markup section - footnote : The following comment was
							added to the change log of the DITA file: Removed the sample
							mapping for the scenario of <sourcexml>footnote</sourcexml>
							without a corresponding <sourcexml>fnr</sourcexml>.</li>
					</ol>
				</p>
			</section>
			<section>
				<title>CourtOrder 2.7_BETA</title>
				<p>2012-06-06: <ol>
						<li>Introduction topic: Modified the schema version to
							2.7_BETA.</li>
						<li>CR # DAAM2012042415014700 has been implemented to allow
								<targetxml>primlaw:excerpt</targetxml> within
								<targetxml>blockquote</targetxml>.</li>
						<li>General Markup section - remotelink : The instruction -
								<targetxml>ref:marker/@service</targetxml> attribute is set to
							"URL" was updated to <targetxml>ref:lnlink/@service</targetxml>
							attribute is set to "URL".</li>
					</ol>
				</p>
			</section>
			<section>
				<title>CourtOrder 2.6_BETA</title>
				<p>2012-05-24: <ol>
						<li>case:content/case:judgments topic: Added a note section on
							handling of <sourcexml>remotelink</sourcexml> and its child
							element <sourcexml>inlineobject</sourcexml> whenever the value of
							attribute <sourcexml>remotelink @service="QUERY"</sourcexml>.</li>
						<li>General Markup section - footnotegrp and footnote : Removed
							instructions for handling of <sourcexml>footnotegrp</sourcexml>
							without <sourcexml>fnr</sourcexml>.</li>
					</ol>
				</p>
			</section>
			<section>
				<title>CourtOrder 2.6_BETA</title>
				<p>2012-05-22: <ol>
						<li>Introduction topic: Modified the CourtOrder schema version to
							2.6_BETA.</li>
						<li>case:courtcode topic: Modified the NL sample output to add the
							mandatory attribute @metadatasource.</li>
						<li>case.body_case.content_case.appendix topic: Modified the note to
							add instructions on how to handle child elements if
								<sourcexml>case:appendix</sourcexml> other than
								<sourcexml>sigblock</sourcexml>.</li>
						<li>General Markup section - form-chars : Added instructions on
							handling of
								<sourcexml>form-chars[@character="underline"]</sourcexml>.</li>
					</ol>
				</p>
			</section>
			<section>
				<title>CourtOrder 2.4_BETA</title>
				<p>2012-04-23: <ol>
						<li>Format (Increased nesting of topics to show child/parent
							relationships) of the CI document has been changed.</li>
						<li>CR # DAAM2012040510553600 has been implemented to allow
								<targetxml>note</targetxml> within
								<targetxml>blockquote</targetxml>.</li>
						<li>Introduction topic: Modified the CourtOrder schema version to
							2.4_BETA.</li>
						<li>Head topic: Added a note section on handling of text occuring
							between two <sourcexml>catchphrase</sourcexml> elements.</li>
						<li>Head topic: Added a note section on how to handle the element -
								<sourcexml>case:info</sourcexml> of Hybrid Practice Notes/Case
							Summaries.</li>
						<li>Head topic: Added a new section-'Hybrid Practice Notes-Case
							Summaries' at the end of 'Head' topic.</li>
						<li>Head topic: Modified the instructions on handling of
								<sourcexml>case:courtcode</sourcexml>.</li>
					</ol>
				</p>
			</section>
			<section>
				<title>CourtOrder 2.3_BETA</title>
				<p>2012-04-09: <ol>
						<li>Introduction topic: Modified the CourtOrder schema version to
							2.3_BETA.</li>
						<li>Head topic: Added a note section on handling of text occuring
							between <sourcexml>case:parallelcite</sourcexml> and
								<sourcexml>ci:cite</sourcexml>.</li>
						<li>Head topic: Added a note section below the instructions for
							/case:reportercite @ln.user-displayed.</li>
						<li>Head topic: Added a note section on handling of text occuring
							within <sourcexml>case:decisiondate</sourcexml> and without the
							child element <sourcexml>date</sourcexml>.</li>
						<li>Body topic: Added the conversion instruction for
							case:judgmentbody/p/blockquote/p/blockquote/legfragment/leg:level
							(nested <sourcexml>blockquote</sourcexml> scenario).</li>
						<li>Body topic: Added the conversion instruction for
							case:judgmentbody/pgrp/p/l/li/blockquote/legfragment/deflist.</li>
						<li>Body topic: Added a note section (and example) on handling of
							scenario when <sourcexml>page</sourcexml> is the first child
							element of <sourcexml>pgrp</sourcexml>.</li>
						<li>Please note that the conversion instructions and NL examples
							have been modified in the following (Metadata) sections -
								<sourcexml>docinfo</sourcexml> and
								<sourcexml>docinfo:lbu-meta</sourcexml>.</li>
					</ol>
				</p>
			</section>
			<section>
				<title>CourtOrder 2.2_BETA</title>
				<p>2012-03-23: <ol>
						<li>Namespaces topic: Added namespaces for xmlns:caseinfo and
							xmlns:decision.</li>
						<li>Head topic: Added conversion instructions for
							case:courtloc.</li>
						<li>Head topic: Added conversion instructions for case:filenum.</li>
						<li>Head topic: Added conversion instructions for
							case:courtinfo/case:dates/case:hearingdates.</li>
						<li>Head topic: Modified conversion instructions by adding two
							different scenarios(AU/NZ) for case:factsummary and its
							children.</li>
						<li>Head topic: Modified conversion instructions by adding two
							different scenarios(AU/NZ) for case:juris and its children.</li>
						<li>Body topic: Added conversion instructions for name.degree</li>
					</ol>
				</p>
			</section>
			<section>
				<title>CourtOrder 2.2_BETA</title>
				<p>2012-03-19: <ol>
						<li>Introduction topic: Modified the CourtOrder schema version to
							2.2_BETA.</li>
						<li>Head topic: Modified the conversion instructions for
							case:juris.</li>
						<li>Head topic: Modified the conversion instructions for
							case:courtcode.</li>
						<li>Head topic: Added conversion instructions for the attribute
							case:reportercite @ln.user-displayed.</li>
						<li>Body topic: Added conversion instructions for the following
							scenarios: /pgrp/blockquote/blockquote/insert-line,
							/glp:note/blockquote/blockquote/insert-line,
							/glp:note/blockquote/insert-line, /p/blockquote/insert-line/</li>
					</ol>
				</p>
			</section>
			<section>
				<title>CourtOrder 2.0_ALPHA</title>
				<p>2012-03-09: <ol>
						<li>Head topic: Added conversion instructions for
							/ci:cite/ci:content/refpt.</li>
						<li>Head topic: Modified conversion instructions for handling of
							/case:juris/.</li>
						<li>Namespaces topic: Modified the target xml declaration for
							courtorder as :
							xmlns:courtorder=urn:x-lexisnexis:content:courtorder:sharedservices:1</li>
						<li>Body topic: Modified the NL conversion instructions and NL
							example for /case:content/case:appendix.</li>
						<li>Body topic: Added conversion instructions for
							/pgrp/p/blockquote/legfragment/leg:level and its children.</li>
						<li>Body topic: Added conversion instructions for
							/pgrp/p/blockquote/legfragment/l.</li>
						<li>Body topic: Added conversion instructions for
							/pgrp/p/blockquote/legfragment/deflist.</li>
						<li>Body topic: Modified the NL conversion instructions and NL
							example for /ci:content/remotelink.</li>
						<li>Body topic: Modified the NL conversion instructions for
							/case:body/heading/edpnum/refpt.</li>
						<li>Body topic: Added conversion instructions for
							/case:judgmentbody/pgrp/pgrp/heading/title/remotelink.</li>
						<li>Body topic: Added conversion instructions for
							/leg:level/leg:level-vrnt/leg:heading/leg:empleg.</li>
						<li>CR #DAAM2012022111440100 has been implemented to allow
							ref:crossreference within title in the CourtOrder NL schema.</li>
						<li>CR #DAAM2012022814545200 has been implemented to allow the
							elements proc:formchars, proc:nl and ref:crossreference to
							intermingle.</li>
					</ol>
				</p>
			</section>
			<section>
				<title>CourtOrder 1.1_ALPHA</title>
				<p>2012-02-07: <ol>
						<li>Introduction topic: Modified the CourtOrder schema version to
							1.1_ALPHA</li>
						<li>Head topic: Removed "CR# DADF2012011815045500 has been created
							to create lnci:courtorder" from the note sections.</li>
						<li>Head topic: Modified the conversion instructions and example for
							/case:info/case:reportercite/ci:cite/ci:case.</li>
						<li>Head topic: Modified the conversion instructions and example for
							/case:info/case:parallelcite/ci:cite/ci:case.</li>
						<li>Body topic: Added conversion instructions for
							case:appendix/p/text.</li>
						<li>Body topic: Added conversion instructions for
							case:appendix/p/inlineobject.</li>
					</ol></p>
			</section>
			<section>
				<title/>
				<p>2012-01-20: <ol>
						<li>Head topic: Added a note section in the conversion instructions
							for handling of /catwordgrp/catchwords.</li>
					</ol>
				</p>
			</section>
		</body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\NZ18_courtorder\CourtOrder_Change-log.dita  -->

</xsl:stylesheet>
