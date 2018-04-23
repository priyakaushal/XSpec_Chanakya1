<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xsltdoc="http://www.lexisnexis.com/xmlstylesheets/documentation/xslt-documentation/1/" version="2.0" exclude-result-prefixes="#all">

	<xsltdoc:header>
		<!--  this will become the title of the PDF created from the DITA modules (documentation)  -->
		<xsltdoc:title>CA04 Rosetta CASEDOC to LexAdv Admindoc</xsltdoc:title>
		<xsltdoc:desc>
			<xsltdoc:p>This is the driver stylesheet used in transforming ... instance files (... root element) into Lexis Advance ... instance files (... root element).</xsltdoc:p>
		</xsltdoc:desc>
		<xsltdoc:author>First Last</xsltdoc:author>
		<xsltdoc:created>{date}</xsltdoc:created>
		<xsltdoc:maint-by>
			<xsltdoc:email>first.last@lexisnexis.com</xsltdoc:email>
		</xsltdoc:maint-by>
		<xsltdoc:filename>
			<!--  this should be the output (single XSLT file) filename of the file that is delivered  -->
			<xsltdoc:source>....xsl</xsltdoc:source>
		</xsltdoc:filename>
		<xsltdoc:version-hist>
			<xsltdoc:version version-id="1.0 ALPHA" version-date="" svnRevision="XXXX">
				<xsltdoc:author>First Last</xsltdoc:author>
				<xsltdoc:desc>
					<xsltdoc:p>1.0 ALPHA version; first formal release of the stylesheet.</xsltdoc:p>
				</xsltdoc:desc>
				<xsltdoc:source>source description or name of dtd</xsltdoc:source>
				<xsltdoc:target>\schema_modeling\sharedservices\lexisadvance\rootschemas\xxx\xxxxx.rng version x.y_PROD</xsltdoc:target>
			</xsltdoc:version>
		</xsltdoc:version-hist>
	</xsltdoc:header>

	<xsl:param name="outputSchemaLoc"
		select="'urn:x-lexisnexis:content:administrative-document:sharedservices:1 sch_admindoc.xsd'"/>
	
	<!-- map  CA04 Rosetta CASEDOC to LexAdv Admindoc  -->
	<xsl:output indent="yes" method="xml"/>
	<xsl:key name="idTypeValue" match="*[@id]" use="@id"/>
	<xsl:key name="idTypeValue" match="*[@ID]" use="@ID"/>
	<xsl:key name="idTypeValue" match="footnote" use="@fntoken"/>
	<xsl:key name="idTypeValue" match="fnr" use="@fnrtoken"/>
	<xsl:key name="fnr-footnote-tokens" match="fnr" use="@fntoken"/>
	
	<xsl:variable name="streamID" as="xs:string" select="'CA04'"/>
	<xsl:param name="dpsi" as="xs:string" select="'From LBU Manifest File'"/>
	<xsl:param name="smi" as="xs:string" select="'From LBU Manifest File'"/>
	
	<xsl:param name="inlineobjBoilerplateFiles"/>
	<xsl:param name="inlineobjFilesToSuppress" select="('1.gif', '2.gif', '3.gif', '4.gif', '5.gif', 'IconSignalPositive.gif', 'IconSignalNegative.gif', 'IconSignalNeutral.gif', 'IconSignalPossibleNegative.gif', 'IconSignalCiteInfoOnly.gif', 'cbcc.gif', 'leg1.gif', 'mb.gif', 'au_repealed.gif', 'au_exclaim.gif', '1.png', '2.png', '3.png', '4.png', '5.png', 'IconSignalPositive.png', 'IconSignalNegative.png', 'IconSignalNeutral.png', 'IconSignalPossibleNegative.png', 'IconSignalCiteInfoOnly.png', 'cbcc.png', 'leg1.png', 'mb.png', 'au_repealed.png', 'au_exclaim.png')"/>
	<xsl:include href="../../modules/nonamespace/Rosetta_refpt-LxAdv-ref.anchor.xsl"/>
	
	<xsl:include href="../../modules/global/defaultRules.xsl"/>
	<xsl:include href="../../modules/global/functions/globalFunctions.xsl"/>
	
	<!-- end topichead  Converting to ID Data Type  -->
	<!-- <topicref href="Admindecisions_Namespaces.dita"/> -->
	<!--<xsl:include href="../../modules/nonamespace/Admindecisions_Namespaces.xsl"/>-->
	<xsl:include href="../../modules/nonamespace/doc.relatedcontent_CA01.xsl"/>
	<xsl:include href="../../modules/nonamespace/Rosetta_LxAdv_Namespaces.xsl"/>

	<!-- start topicref  Admindecisions_Introduction.dita  -->
	<!-- <topicref href="Admindecisions_Introduction.dita"/> -->
	<xsl:include href="../../modules/nonamespace/Admindecisions_Introduction.xsl"/>
		<!-- Old file: target_xml.lang -->
		<!-- <topicref href="../../common_newest/Rosetta_docinfo.doc-lang-and-doc-country-LxAdv-ROOT_xml.lang.dita"/> -->
		<xsl:include href="../../modules/docinfo/Rosetta_docinfo.doc-lang-and-doc-country-LxAdv-ROOT_xml.lang.xsl"/>
		<!-- Old file: target_xml_char_ent -->
		<!-- <topicref href="../../common_newest/Rosetta_XML_Character_Entities-LxAdv-Unicode.dita"/> -->
		<xsl:include href="../../modules/nonamespace/Rosetta_XML_Character_Entities-LxAdv-Unicode.xsl"/>
		<!-- Old file: target_maintain_element_order -->
		<!-- <topicref href="../../common_newest/Rosetta_Elements-LxAdv-Maintain_Sequential_Order.dita"/> -->
		<xsl:include href="../../modules/nonamespace/Rosetta_Elements-LxAdv-Maintain_Sequential_Order.xsl"/>
		<!-- Old file: target_whitespace -->
		<!-- <topicref href="../../common_newest/Rosetta_whitespace-LxAdv-preserve_whitespace.dita"/> -->
		<xsl:include href="../../modules/nonamespace/Rosetta_whitespace-LxAdv-preserve_whitespace.xsl"/>
		<!-- <topicref href="../../common_newest/Rosetta_Elements-LxAdv-Empty_Elements.dita"/> -->
		<xsl:include href="../../modules/nonamespace/Rosetta_Elements-LxAdv-Empty_Elements.xsl"/>
		<!-- topic: Topic Identifiers -->
		<!-- <topicref href="../../common_newest/Rosetta_Topic_Identifiers.dita"/> -->
		<xsl:include href="../../modules/nonamespace/Rosetta_Topic_Identifiers.xsl"/>
	<!-- end topicref  Admindecisions_Introduction.dita  -->

	<!-- start topichead  Mapping to ID Data Type  -->
		<!-- <topicref href="../../common_newest/Rosetta_identifier-LxAdv-ID_data_type-HandlingPatternRestrictions.dita"/> -->
		<xsl:include href="../../modules/nonamespace/Rosetta_identifier-LxAdv-ID_data_type-HandlingPatternRestrictions.xsl"/>
		<!-- <topicref href="../../common_newest/Rosetta_identifier-LxAdv-ID_data_type-HandlingDuplicates.dita"/> -->
		<xsl:include href="../../modules/nonamespace/Rosetta_identifier-LxAdv-ID_data_type-HandlingDuplicates.xsl"/>
	<!-- end topichead  Mapping to ID Data Type  -->
	<!--<topicref href="CA04admin_decisions_CoderCodesRemoval.dita"/>-->

	<!-- start topichead  Headnote  -->
		<!-- <topicref href="case.headnote.dita"/> -->
		<xsl:include href="../../modules/case/CA04-Administrative_Decisions_case.headnote.xsl"/>
		<!-- <topicref href="case.info.dita"/> -->
		<xsl:include href="../../modules/case/CA04-Administrative_Decisions_case.info.xsl"/>
		<!-- <topicref href="case.dates.dita"/> -->
		<xsl:include href="../../modules/case/CA04-Administrative_Decisions_case.dates.xsl"/>
		<!-- <topicref href="case.pubinfo.dita"/> -->
		<xsl:include href="../../modules/case/CA04-Administrative_Decisions_case.pubinfo.xsl"/>
		<!-- <topicref href="abbrvname.dita"/> -->
		<xsl:include href="../../modules/nonamespace/CA04-Administrative_Decisions_abbrvname.xsl"/>
		<!-- <topicref href="case.casename.dita"/> -->
		<xsl:include href="../../modules/case/CA04-Administrative_Decisions_case.casename.xsl"/>
		<!-- <topicref href="case.reportercite.dita"/> -->
		<xsl:include href="../../modules/case/CA04-Administrative_Decisions_case.reportercite.xsl"/>
		<!-- <topicref href="case.parallelcite.dita"/> -->
		<xsl:include href="../../modules/case/CA04-Administrative_Decisions_case.parallelcite.xsl"/>
		<!-- <topicref href="case.courtcite.dita"/> -->
		<xsl:include href="../../modules/case/CA04-Administrative_Decisions_case.courtcite.xsl"/>
		<!-- <topicref href="case.filenum.dita"/> -->
		<xsl:include href="../../modules/case/CA04-Administrative_Decisions_case.filenum.xsl"/>
		<!--<topicref href="refnum.dita"/>-->
		<!-- <topicref href="case.courtinfo.dita"/> -->
		<xsl:include href="../../modules/case/CA04-Administrative_Decisions_case.courtinfo.xsl"/>
		<!-- <topicref href="case.juris.dita"/> -->
		<xsl:include href="../../modules/case/CA04-Administrative_Decisions_case.juris.xsl"/>
		<!-- <topicref href="case.courtcode.dita"/> -->
		<xsl:include href="../../modules/case/CA04-Administrative_Decisions_case.courtcode.xsl"/>
		<!-- <topicref href="case.courtname.dita"/> -->
		<xsl:include href="../../modules/case/CA04-Administrative_Decisions_case.courtname.xsl"/>
		<!-- <topicref href="case.judges.dita"/> -->
		<xsl:include href="../../modules/case/CA04-Administrative_Decisions_case.judges.xsl"/>
		<!-- <topicref href="case.length.dita"/> -->
		<xsl:include href="../../modules/case/CA04-Administrative_Decisions_case.length.xsl"/>
		<!-- <topicref href="catchwordgrp.dita"/> -->
		<xsl:include href="../../modules/nonamespace/CA04-Administrative_Decisions_catchwordgrp.xsl"/>
		<!--  <topicref href="catchwordgrp.dita"/>-->
		<!-- <topicref href="case.decisionsummary.dita"/> -->
		<xsl:include href="../../modules/case/CA04-Administrative_Decisions_case.decisionsummary.xsl"/>
		<!-- <topicref href="case.priorhist.dita"/> -->
		<xsl:include href="../../modules/case/CA04-Administrative_Decisions_case.priorhist.xsl"/>
		<!-- <topicref href="case.references.dita"/> -->
		<xsl:include href="../../modules/case/CA04-Administrative_Decisions_case.references.xsl"/>
		<!-- <topicref href="../../common_newest/LxAdv_CA-ref.cite4thisresource-LxAdv-ref.parallelcite-doc.related-content.dita"/> -->
		<!--<xsl:include href="../../modules/case/LxAdv_CA-ref.cite4thisresource-LxAdv-ref.parallelcite-doc.related-content.xsl"/>-->
	<!-- end topichead  Headnote  -->

	<!-- <topicref href="Admindoc_Body.dita"/> -->
	<xsl:include href="../../modules/case/Admindoc_Body.xsl"/>

	<!-- start topichead  CaseContent  -->
		<!-- <topicref href="case.content.dita"/> -->
		<xsl:include href="../../modules/case/CA04-Administrative_Decisions_case.content.xsl"/>
		<!-- <topicref href="case.constituents.dita"/> -->
		<xsl:include href="../../modules/case/CA04-Administrative_Decisions_case.constituents.xsl"/>
		<!-- <topicref href="case.judgments.dita"/> -->
		<xsl:include href="../../modules/case/CA04-Administrative_Decisions_case.judgments.xsl"/>
		<!-- <topicref href="case.judgment.dita"/> -->
		<xsl:include href="../../modules/case/CA04-Administrative_Decisions_case.judgment.xsl"/>
		<!-- <topicref href="case.judgmentbody.dita"/> -->
		<xsl:include href="../../modules/case/CA04-Administrative_Decisions_case.judgmentbody.xsl"/>
		<!-- <topicref href="case.appendix.dita"/> -->
		<xsl:include href="../../modules/case/CA04-Administrative_Decisions_case.appendix.xsl"/>
		<!-- <topicref href="../../common_newest/Rosetta_desig-LxAdv-desig_ref.para.dita"/> -->
		<xsl:include href="../../modules/nonamespace/Rosetta_desig-LxAdv-desig_ref.para.xsl"/>
	
	<xsl:include href="../../modules/nonamespace/doc.relatedcontent_CA04.xsl"/>
	<!-- end topichead  CaseContent  -->

	<!-- start topichead  Metadata  -->
		<!--topicref href="../common/common_rosetta_docinfo.dita"/-->
		<!-- <topicref href="../../common_newest/Rosetta_docinfo-LxAdv-doc.metadata_doc.docinfo.dita"/> -->
		<xsl:include href="../../modules/nonamespace/Rosetta_docinfo-LxAdv-doc.metadata_doc.docinfo.xsl"/>
		<!--topicref href="../common/common_rosetta_docinfo.doc-country.dita"/-->
		<!-- <topicref href="../../common_newest/Rosetta_docinfo.doc-country_iso-cc-LxAdv-doc.docinfo_doc-content-country.dita"/> -->
		<xsl:include href="../../modules/docinfo/Rosetta_docinfo.doc-country_iso-cc-LxAdv-doc.docinfo_doc-content-country.xsl"/>
		<!--topicref href="../common/common_rosetta_docinfo.doc-heading.dita"/-->
		<!-- <topicref href="../../common_newest/Rosetta_docinfo.doc-heading-LxAdv-dc.title.dita"/> -->
		<xsl:include href="../../modules/docinfo/Rosetta_docinfo.doc-heading-LxAdv-dc.title.xsl"/>
		<!--topicref href="../common/common_rosetta_docinfo.doc-id.dita"/-->
		<!-- <topicref href="../../common_caselaw/Rosetta_refnum.refnumtype.UCN-LxAdv_ref.groupid.dita"/> -->
		<xsl:include href="../../modules/nonamespace/Rosetta_refnum.refnumtype.UCN-LxAdv_ref.groupid.xsl"/>
		<!-- <topicref href="../../common_newest/Rosetta_docinfo.doc-id-LxAdv-dcidentifier_lnmetaidentifier-scheme.dita"/> -->
		<xsl:include href="../../modules/docinfo/Rosetta_docinfo.doc-id-LxAdv-dcidentifier_lnmetaidentifier-scheme.xsl"/>
		<!--topicref href="../common/common_rosetta_docinfo.assoc-links.dita"/-->
		<!-- <topicref href="../../common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita"/> -->
		<xsl:include href="../../modules/docinfo/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.xsl"/>
		<!--topicref href="../common/common_rosetta_docinfo.doc-lang.dita"/-->
		<!-- <topicref href="../../common_newest/Rosetta_docinfo.doc-lang-LxAdv-ROOT_xmllang.dita"/> -->
		<xsl:include href="../../modules/docinfo/Rosetta_docinfo.doc-lang-LxAdv-ROOT_xmllang.xsl"/>
		<!--topicref href="../common/common_rosetta_docinfo.lbu-meta.dita"/-->
		<!-- <topicref href="../../common_newest/Rosetta_docinfo.lbu-meta-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta-scheme.dita"/> -->
		<xsl:include href="../../modules/docinfo/Rosetta_docinfo.lbu-meta-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta-scheme.xsl"/>
		<!--topicref href="../common/common_rosetta_docinfo.topiccodes.dita"/-->
		<!-- <topicref href="../../common_newest/Rosetta_docinfo.topiccodes-to-LxAdv-classify.classification_classscheme_docinfo-topiccodes.dita"/> -->
		<xsl:include href="../../modules/docinfo/Rosetta_docinfo.topiccodes-to-LxAdv-classify.classification_classscheme_docinfo-topiccodes.xsl"/>
		<!--topicref href="../common/common_rosetta_docinfo.lbu-indexing-terms.dita"/-->
		<!-- <topicref href="../../common_newest/Rosetta_docinfo.lbu-indexing-terms-LxAdv-classify.classification_classscheme_lbu-subj-scheme.dita"/> -->
		<xsl:include href="../../modules/docinfo/Rosetta_docinfo.lbu-indexing-terms-LxAdv-classify.classification_classscheme_lbu-subj-scheme.xsl"/>
		<!-- rosetta element: docinfo:lbu-juris -->
		<!-- <topicref href="../../common_newest/Rosetta_docinfo.lbu.juris-LxAdv-classify.classification_classscheme_docinfolbu-juris.dita"/> -->
		<xsl:include href="../../modules/docinfo/Rosetta_docinfo.lbu.juris-LxAdv-classify.classification_classscheme_docinfolbu-juris.xsl"/>
		<!--topicref href="../common/common_rosetta_docinfo.custom-metafields.dita"/-->
		<!-- <topicref href="../../common_newest/Rosetta_CAN_docinfo.custom-metafields-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta.meta.metaitem.dita"/> -->
		<xsl:include href="../../modules/docinfo/Rosetta_CAN_docinfo.custom-metafields-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta.meta.metaitem.xsl"/>
		<!--topicref href="../common/common_rosetta_docinfo.load-date.dita"/-->
		<!-- <topicref href="../../common_newest/Rosetta_date-Chof-docinfo.load-date-LxAdv-dc.date_lnmeta.datetype_load-date-scheme.dita"/> -->
		<xsl:include href="../../modules/nonamespace/Rosetta_date-Chof-docinfo.load-date-LxAdv-dc.date_lnmeta.datetype_load-date-scheme.xsl"/>
	<!-- end topichead  Metadata  -->

	<!-- start topichead  General Markup  -->
		<!-- Old file: rosetta_ci.cite -->

		<!-- start topichead  ci:cite  -->
			<!-- <topicref href="../../common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita"/> -->
			<xsl:include href="../../modules/nonamespace/Rosetta_ci.cite-LxAdv-lnci.cite.xsl"/>
		<!-- end topichead  ci:cite  -->
		<!-- Old file: rosetta_emph -->

		<!-- start topichead  emph  -->
			<!-- <topicref href="../../common_newest/Rosetta_emph-LxAdv-emph.dita"/> -->
			<xsl:include href="../../modules/nonamespace/Rosetta_emph-LxAdv-emph.xsl"/>
		<!-- end topichead  emph  -->

		<!-- start topichead  endnote  -->
			<!-- <topicref href="../../common_newest/Rosetta_endnote-LxAdv-endnote.dita"/> -->
			<xsl:include href="../../modules/nonamespace/Rosetta_endnote-LxAdv-endnote.xsl"/>
		<!-- end topichead  endnote  -->
		<!-- Old file: rosetta_figure -->

		<!-- start topichead  figure  -->
			<!-- <topicref href="../../common_newest/Rosetta_figure-LxAdv-figure.dita"/> -->
			<xsl:include href="../../modules/nonamespace/Rosetta_figure-LxAdv-figure.xsl"/>
			<!-- <topicref href="../../common_newest/Rosetta_glp.note-Chof-figure-LxAdv-figure.dita"/> -->
			<xsl:include href="../../modules/glp/Rosetta_glp.note-Chof-figure-LxAdv-figure.xsl"/>
		<!-- end topichead  figure  -->
		<!-- Old file: rosetta_footnote -->

		<!-- start topichead  footnote  -->
			<!-- <topicref href="../../common_newest/Rosetta_footnote-LxAdv-footnote.dita"/> -->
			<xsl:include href="../../modules/nonamespace/Rosetta_footnote-LxAdv-footnote.xsl"/>
		<!-- end topichead  footnote  -->
		<!-- Old file: rosetta_glp.note -->

		<!-- start topichead  glp:note  -->
			<!-- <topicref href="../../common_newest/Rosetta_glp.note-LxAdv-note.dita"/> -->
			<xsl:include href="../../modules/glp/Rosetta_glp.note-LxAdv-note.xsl"/>
			<!-- <topicref href="../../common_newest/Rosetta_glp.note-Chof-text-LxAdv-inlinenote.dita"/> -->
			<xsl:include href="../../modules/glp/Rosetta_glp.note-Chof-text-LxAdv-inlinenote.xsl"/>
			<!-- <topicref href="../../common_newest/Rosetta_glp.note-Chof-emph-LxAdv-inlinenote.dita"/> -->
			<xsl:include href="../../modules/glp/Rosetta_glp.note-Chof-emph-LxAdv-inlinenote.xsl"/>
		<!-- end topichead  glp:note  -->
		<!-- Old file: rosetta_heading -->

		<!-- start topichead  heading  -->
			<!-- <topicref href="../../common_newest/Rosetta_heading-LxAdv-heading.dita"/> -->
			<xsl:include href="../../modules/nonamespace/Rosetta_heading-LxAdv-heading.xsl"/>
		<!-- end topichead  heading  -->
		<!-- Old file: rosetta_inlineobject -->

		<!-- start topichead  inlineobject  -->
			<!-- <topicref href="../../common_newest/Rosetta_inlineobject-LxAdv-figure_ref.inlineobject.dita"/> -->
			<xsl:include href="../../modules/nonamespace/Rosetta_inlineobject-LxAdv-figure_ref.inlineobject.xsl"/>
			<!-- <topicref href="../../common_newest/Rosetta_inlineobject-LxAdv-ref.inlineobject.dita"/> -->
			<xsl:include href="../../modules/nonamespace/Rosetta_inlineobject-LxAdv-ref.inlineobject.xsl"/>
		<!-- end topichead  inlineobject  -->
		<!-- Old file: rosetta_l -->

		<!-- start topichead  l  -->
			<!-- <topicref href="../../common_newest/Rosetta_l-LxAdv-list.dita"/> -->
			<xsl:include href="../../modules/nonamespace/Rosetta_l-LxAdv-list.xsl"/>
			<xsl:include href="../../modules/nonamespace/Rosetta_li-LxAdv-listitem.xsl"/>
			<!-- <topicref href="../../common_newest/Rosetta_l_virtual-nesting-LxAdv-list.dita"/> -->
			<xsl:include href="../../modules/nonamespace/Rosetta_l_virtual-nesting-LxAdv-list.xsl"/>
		<!-- end topichead  l  -->
		<!-- Old file: rosetta_ln.user_displayed -->

		<!-- start topichead  ln.user-displayed  -->
			<!-- <topicref href="../../common_newest/Rosetta_abbrvname_ln.user-displayed.dita"/>
			<topicref href="../../common_newest/Rosetta_case.courtcode_ln.user-displayed.dita"/> -->
			<!-- <topicref href="../../common_newest/Rosetta_case.courtname_ln.user-displayed.dita"/> -->
			<xsl:include href="../../modules/nonamespace/Rosetta_case.courtname_ln.user-displayed.xsl"/>
			<!--<topicref href="../../common_newest/Rosetta_refnum_ln.user-displayed.dita"/> -->
			<!--<topicref href="../../common_newest/Rosetta_case.juris_ln.user-displayed.dita"/>-->
		<!-- end topichead  ln.user-displayed  -->
		<!-- Old file: rosetta_nl -->

		<!-- start topichead  nl  -->
			<!-- <topicref href="../../common_newest/Rosetta_nl-LxAdv-proc.nl.dita"/> -->
			<xsl:include href="../../modules/nonamespace/Rosetta_nl-LxAdv-proc.nl.xsl"/>
		<!-- end topichead  nl  -->
		<!-- Old file: rosetta_p -->

		<!-- start topichead  p  -->
			<!-- <topicref href="../../common_newest/Rosetta_p-LxAdv-p.dita"/> -->
			<xsl:include href="../../modules/nonamespace/Rosetta_p-LxAdv-p.xsl"/>
		<!-- end topichead  p  -->
		<!-- Old file: rosetta_p-limited -->

		<!-- start topichead  p-limited  -->
			<!-- <topicref href="../../common_newest/Rosetta_p-limited-LxAdv-p.dita"/> -->
			<xsl:include href="../../modules/nonamespace/Rosetta_p-limited-LxAdv-p.xsl"/>
			<!-- <topicref href="../../common_newest/Rosetta_p-limited_emph-LxAdv-p_text_emph.dita"/> -->
			<xsl:include href="../../modules/nonamespace/Rosetta_p-limited_emph-LxAdv-p_text_emph.xsl"/>
			<!-- <topicref href="../../common_newest/Rosetta_p-limited_glp.note-LxAdv-entry_note.dita"/> -->
			<xsl:include href="../../modules/glp/Rosetta_p-limited_glp.note-LxAdv-entry_note.xsl"/>
			<!-- <topicref href="../../common_newest/Rosetta_entry_p-limited-LxAdv-entry_p.dita"/> -->
			<xsl:include href="../../modules/nonamespace/Rosetta_entry_p-limited-LxAdv-entry_p.xsl"/>
			<!-- <topicref href="../../common_newest/Rosetta_p-limited_ci.cite-LxAdv-p_text_lnci.cite.dita"/> -->
			<xsl:include href="../../modules/ci/Rosetta_p-limited_ci.cite-LxAdv-p_text_lnci.cite.xsl"/>
		<!-- end topichead  p-limited  -->
		<!-- Old file: rosetta_pgrp -->

		<!-- start topichead  pgrp  -->
			<!-- <topicref href="../../common_newest/Rosetta_pgrp-LxAdv-pgrp.dita"/> -->
			<xsl:include href="../../modules/nonamespace/Rosetta_pgrp-LxAdv-pgrp.xsl"/>
		<!-- end topichead  pgrp  -->
		<!-- Old file: rosetta_pnum -->

		<!-- start topichead  pnum  -->
			<!-- <topicref href="../../common_newest/Rosetta_pnum-to-LexisAdvance_desig_ref.para.dita"/> -->
			<xsl:include href="../../modules/nonamespace/Rosetta_pnum-to-LexisAdvance_desig_ref.para.xsl"/>
		<!-- end topichead  pnum  -->
		<!-- Old file: rosetta_remotelink -->

		<!-- start topichead  remotelink  -->
			<!-- <topicref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita"/> -->
			<xsl:include href="../../modules/nonamespace/Rosetta_remotelink-LxAdv-ref.crossreference.xsl"/>
			<!-- <topicref href="../../common_newest/Rosetta_remotelink-self-inter-document-link-LxAdv-intra-document-link.dita"/> -->
			<xsl:include href="../../modules/nonamespace/Rosetta_remotelink-self-inter-document-link-LxAdv-intra-document-link.xsl"/>
		<!-- end topichead  remotelink  -->
		<!-- Old file: rosetta_sup -->

		<!-- start topichead  sup  -->
			<!-- <topicref href="../../common_newest/Rosetta_sup-LxAdv-sup.dita"/> -->
			<xsl:include href="../../modules/nonamespace/Rosetta_sup-LxAdv-sup.xsl"/>
		<!-- end topichead  sup  -->
		<!-- Old file: rosetta_table -->

		<!-- start topichead  table  -->
			<!-- <topicref href="../../common_newest/Rosetta_table-LxAdv-table.dita"/> -->
			<xsl:include href="../../modules/nonamespace/Rosetta_table-LxAdv-table.xsl"/>
		<!-- end topichead  table  -->
		<!-- Old file: rosetta_text -->

		<!-- start topichead  text  -->
			<!-- <topicref href="../../common_newest/Rosetta_text-LxAdv-text.dita"/> -->
			<xsl:include href="../../modules/nonamespace/Rosetta_text-LxAdv-text.xsl"/>
			<!-- <topicref href="../../common_newest/Rosetta_form_bodytext_p_text-LxAdv-form.text.dita"/> -->
			<xsl:include href="../../modules/nonamespace/Rosetta_form_bodytext_p_text-LxAdv-form.text.xsl"/>
		<!-- end topichead  text  -->
		<!-- Old file: rosetta_title -->

		<!-- start topichead  title  -->
			<!-- <topicref href="../../common_newest/Rosetta_title-LxAdv-title.dita"/> -->
			<xsl:include href="../../modules/nonamespace/Rosetta_title-LxAdv-title.xsl"/>
	<xsl:include href="../../modules/nonamespace/Rosetta_link-LxAdv-ref.lnlink.xsl"/>
	<xsl:include href="../../modules/nonamespace/Rosetta_lnlink_service_ATTACHMENT-LxAdv-ref.lnlink.xsl"/>
		<!-- end topichead  title  -->
	<!-- end topichead  General Markup  -->

	<!--topichead navtitle="General Markup">
		<topicref href="../common/common_rosetta_pgrp.dita"/>
		<topicref href="../common/common_rosetta_p.dita"/>
		<topicref href="../common/common_rosetta_p-limited.dita"/>
		<topicref href="../common/common_rosetta_text.dita"/>		
		<topicref href="../common/common_rosetta_emph.dita"/>		
		<topicref href="../common/common_rosetta_l.dita"/>		
		<topicref href="../common/common_rosetta_remotelink.dita"/>		
		<topicref href="../common/common_rosetta_nl.dita"/>			
		<topicref href="../common/common_rosetta_heading.dita"/>
		<topicref href="../common/common_rosetta_title.dita"/>	
		<topicref href="../common/common_rosetta_inlineobject.dita"/>
		<topicref href="../common/common_rosetta_figure.dita"/>		
		<topicref href="../common/common_rosetta_pnum.dita"/>
		<topicref href="../common/common_rosetta_footnote.dita"/>
		<topicref href="../common/common_rosetta_ci.cite.dita"/>
		<topicref href="../common/common_rosetta_table.dita"/>		
		<topicref href="../common/common_rosetta_sup.dita"/>		
		<topicref href="../common/common_rosetta_glp.note.dita"/>		
    	<topicref href="../common/common_rosetta_ln.user_displayed.dita"/-->
	<!-- <topicref href="Admindecisions_Change-Log.dita"/> -->
	<xsl:include href="../../modules/changeLog/Admindecisions_Change-Log.xsl"/>
</xsl:stylesheet>