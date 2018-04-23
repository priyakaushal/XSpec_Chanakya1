<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xsltdoc="http://www.lexisnexis.com/xmlstylesheets/documentation/xslt-documentation/1/" 	xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
	xmlns:xs="http://www.w3.org/2001/XMLSchema" version="2.0" exclude-result-prefixes="#all">
<xsl:output indent="yes"></xsl:output>
	<xsltdoc:header>
		<!--  this will become the title of the PDF created from the DITA modules (documentation)  -->
		<xsltdoc:title>CA02 Rosetta DIGESTDOC to LexAdv seclaw</xsltdoc:title>
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

	<!--param schema output location  -->
	<xsl:param name="outputSchemaLoc"
		select="'http://www.lexisnexis.com/xmlschemas/content/legal/secondary-law/1/ sch_seclaw.xsd'"/>
	
	
	<!-- Vikas Rohilla: Added	-->
	<!-- map  CA01 Rosetta CASEDOC to LxAdv courtcase  -->
	<xsl:key name="idTypeValue" match="*[@id]" use="@id"/>
	<xsl:key name="idTypeValue" match="*[@ID]" use="@ID"/>
	<xsl:key name="idTypeValue" match="footnote" use="@fntoken"/>
	<xsl:key name="idTypeValue" match="fnr" use="@fnrtoken"/>
	<xsl:key name="fnr-footnote-tokens" match="fnr" use="@fntoken"/>
	
	<xsl:variable name="streamID" as="xs:string" select="'CA02DS'"/>
	<xsl:param name="dpsi" as="xs:string" select=" 'From LBU Manifest File' "/>
	<xsl:param name="smi" as="xs:string" select=" 'From LBU Manifest File' "/>
	
	<xsl:param name="inlineobjBoilerplateFiles"/>
	<xsl:param name="inlineobjFilesToSuppress" select="('1.gif', '2.gif', '3.gif', '4.gif', '5.gif', 'IconSignalPositive.gif', 'IconSignalNegative.gif', 'IconSignalNeutral.gif', 'IconSignalPossibleNegative.gif', 'IconSignalCiteInfoOnly.gif', 'cbcc.gif', 'leg1.gif', 'mb.gif', 'au_repealed.gif', 'au_exclaim.gif', '1.png', '2.png', '3.png', '4.png', '5.png', 'IconSignalPositive.png', 'IconSignalNegative.png', 'IconSignalNeutral.png', 'IconSignalPossibleNegative.png', 'IconSignalCiteInfoOnly.png', 'cbcc.png', 'leg1.png', 'mb.png', 'au_repealed.png', 'au_exclaim.png')"/>
	
	<xsl:include href="../../modules/global/defaultRules.xsl"/>
	<xsl:include href="../../modules/global/functions/globalFunctions.xsl"/>
	
	<!-- start topichead  Converting to ID Data Type  -->
	<!-- <topicref href="../../common_newest/Rosetta_identifier-LxAdv-ID_data_type-HandlingPatternRestrictions.dita"/> -->
	<xsl:include href="../../modules/nonamespace/Rosetta_identifier-LxAdv-ID_data_type-HandlingPatternRestrictions.xsl"/>
	<!-- <topicref href="../../common_newest/Rosetta_identifier-LxAdv-ID_data_type-HandlingDuplicates.dita"/> -->
	<xsl:include href="../../modules/nonamespace/Rosetta_identifier-LxAdv-ID_data_type-HandlingDuplicates.xsl"/>
	<!-- end topichead  Converting to ID Data Type  -->


	<!-- map  CA02 Rosetta DIGESTDOC to LexAdv seclaw  -->

	<!-- <topicref href="Namespaces.dita"/> -->
	<xsl:include href="../../modules/nonamespace/Rosetta_LxAdv_Namespaces.xsl"/>
	<xsl:include href="../../modules/nonamespace/doc.relatedcontent_CA01.xsl"/>
	<!-- start topicref  Introduction.dita  -->
	<!-- <topicref href="Introduction.dita"/> -->
		<xsl:include href="../../modules/nonamespace/CA02DS_DIGESTDOC_to_seclaw_Introduction.xsl"/>
		<!-- <topicref href="../../../common_newest/Rosetta_docinfo.doc-lang-and-doc-country-LxAdv-ROOT_xml.lang.dita"/> -->
	<xsl:include href="../../modules/docinfo/Rosetta_docinfo.doc-lang-and-doc-country-LxAdv-ROOT_xml.lang.xsl"/>
		<!-- <topicref href="../../../common_newest/Rosetta_XML_Character_Entities-LxAdv-Unicode.dita"/> -->
		<xsl:include href="../../modules/nonamespace/Rosetta_XML_Character_Entities-LxAdv-Unicode.xsl"/>
		<!-- <topicref href="../../../common_newest/Rosetta_Elements-LxAdv-Maintain_Sequential_Order.dita"/> -->
		<xsl:include href="../../modules/nonamespace/Rosetta_Elements-LxAdv-Maintain_Sequential_Order.xsl"/>
		<!-- <topicref href="../../../common_newest/Rosetta_whitespace-LxAdv-preserve_whitespace.dita"/> -->
		<xsl:include href="../../modules/nonamespace/Rosetta_whitespace-LxAdv-preserve_whitespace.xsl"/>
		<!-- <topicref href="../../../common_newest/Rosetta_Elements-LxAdv-Empty_Elements.dita"/> -->
		<xsl:include href="../../modules/nonamespace/Rosetta_Elements-LxAdv-Empty_Elements.xsl"/>
		<!-- topic: Topic Identifiers -->
		<!-- <topicref href="../../../common_newest/Rosetta_Topic_Identifiers.dita"/> -->
		<xsl:include href="../../modules/nonamespace/Rosetta_Topic_Identifiers.xsl"/>
	<!-- end topicref  Introduction.dita  -->
	<!--<topichead navtitle="Head">
		<topicref href="case.headnote.dita"/>
	</topichead>-->

	<!-- start topichead  Body  -->
		<!-- <topicref href="Body.dita"/> -->
		<xsl:include href="../../modules/dig/CA02DS_DIGESTDOC_to_seclaw_Body.xsl"/>
		<!-- <topicref href="abbrvname.dita"/> -->
		<xsl:include href="../../modules/nonamespace/CA02DS_DIGESTDOC_to_seclaw_abbrvname.xsl"/>
		<!-- <topicref href="abstract.dita"/> -->
		<xsl:include href="../../modules/nonamespace/CA02DS_abstract_to_abstract.xsl"/>
		<!-- <topicref href="case.headnote.dita"/> -->
		<xsl:include href="../../modules/case/CA02DS_DIGESTDOC_to_seclaw_case.headnote.xsl"/>
		<!-- <topicref href="case.casename.DS.dita"/> -->
		<!--<xsl:include href="../../modules/case/case.casename.DS.xsl"/>-->
		<!-- <topicref href="case.casename.dita"/> -->
		<xsl:include href="../../modules/case/CA02DS_DIGESTDOC_to_seclaw_case.casename.xsl"/>
		<!-- <topicref href="case.constituents.dita"/> -->
		<xsl:include href="../../modules/case/CA02DS_DIGESTDOC_to_seclaw_case.constituents.xsl"/>
		<!-- <topicref href="case.courtcode.dita"/> -->
		<xsl:include href="../../modules/case/CA02DS_DIGESTDOC_to_seclaw_case.courtcode.xsl"/>
		<!-- <topicref href="case.courtinfo.dita"/> -->
		<xsl:include href="../../modules/case/CA02DS_DIGESTDOC_to_seclaw_case.courtinfo.xsl"/>
		<!-- <topicref href="case.courtloc.dita"/> -->
		<xsl:include href="../../modules/case/CA02DS_DIGESTDOC_to_seclaw_case.courtloc.xsl"/>
		<!-- <topicref href="case.courtname.dita"/> -->
		<xsl:include href="../../modules/case/CA02DS_DIGESTDOC_to_seclaw_case.courtname.xsl"/>
		<!-- <topicref href="case.dates.dita"/> -->
		<xsl:include href="../../modules/case/CA02DS_DIGESTDOC_to_seclaw_case.dates.xsl"/>
		<!-- <topicref href="case.decisionsummary.dita"/> -->
		<xsl:include href="../../modules/case/CA02DS_DIGESTDOC_to_seclaw_case.decisionsummary.xsl"/>
		<!-- <topicref href="case.embeddedcase.dita"/> -->
		<xsl:include href="../../modules/case/CA02DS_case.embeddedcase_to_courtcase.caseexcerpt.xsl"/>
		<!-- <topicref href="case.filenum.dita"/> -->
		<xsl:include href="../../modules/case/CA02DS_DIGESTDOC_to_seclaw_case.filenum.xsl"/>
		<!-- <topicref href="case.info.dita"/> -->
		<xsl:include href="../../modules/case/CA02DS_DIGESTDOC_to_seclaw_case.info.xsl"/>
		<!-- <topicref href="case.judges.dita"/> -->
		<xsl:include href="../../modules/case/CA02DS_DIGESTDOC_to_seclaw_case.judges.xsl"/>
		<!-- <topicref href="case.juris.dita"/> -->
		<xsl:include href="../../modules/case/CA02DS_DIGESTDOC_to_seclaw_case.juris.xsl"/>
		<!-- <topicref href="note.dita"/> -->
		<xsl:include href="../../modules/nonamespace/CA02DS_note_to_note_bodytext_p_text.xsl"/>
		<!-- <topicref href="case.parallelcite.dita"/> -->
		<xsl:include href="../../modules/case/CA02DS_DIGESTDOC_to_seclaw_case.parallelcite.xsl"/>
		<!-- <topicref href="case.reportercite.dita"/> -->
		<xsl:include href="../../modules/case/CA02DS_DIGESTDOC_to_seclaw_case.reportercite.xsl"/>
		<!-- <topicref href="catchwordgrp.dita"/> -->
		<xsl:include href="../../modules/nonamespace/CA02DS_DIGESTDOC_to_seclaw_catchwordgrp.xsl"/>
		<!-- <topicref href="classification.dita"/> -->
		<xsl:include href="../../modules/nonamespace/CA02DS_DIGESTDOC_to_seclaw_classification.xsl"/>
		<!-- <topicref href="dig.collection.dita"/> -->
		<xsl:include href="../../modules/dig/CA02DS_dig.collection_to_seclaw.level.xsl"/>
		<!-- <topicref href="dig.item.dita"/> -->
		<xsl:include href="../../modules/dig/CA02DS_dig.item_to_seclaw.digest.xsl"/>
		<!-- <topicref href="dig.level.dita"/> -->
		<xsl:include href="../../modules/dig/CA02DS_dig.level_to_seclaw.digestgrp.xsl"/>
		<!-- <topicref href="dig.cite.dita"/> -->
		<xsl:include href="../../modules/dig/CA02DS_dig.cite_to_ref.cite4thisresource.xsl"/>
		<!-- <topicref href="dig.info.dita"/> -->
		<xsl:include href="../../modules/dig/CA02DS_DIGESTDOC_to_seclaw_dig.info.xsl"/>
		<!-- <topicref href="docinfo.subtype.dita"/> -->
		<xsl:include href="../../modules/docinfo/CA02DS_DIGESTDOC_to_seclaw_docinfo.subtype.xsl"/>
		<!-- <topicref href="publication.dita"/> -->
	<xsl:include href="../../modules/nonamespace/CA02DS_publication_to_pubinfo.publicationname.xsl"/>
		<!--<topicref href="refnum.dita"/>-->
		<!-- <topicref href="../../../common_newest/LxAdv_CA-ref.cite4thisresource-LxAdv-ref.parallelcite-doc.related-content.dita"/> -->
<!--		<xsl:include href="../../modules/case/LxAdv_CA-ref.cite4thisresource-LxAdv-ref.parallelcite-doc.related-content.xsl"/>-->
	<!-- end topichead  Body  -->

	<!-- start topichead  Metadata  -->
		<!--<topicref href="../common/common_rosetta_docinfo.dita"/>-->
		<!-- <topicref href="../../../common_newest/Rosetta_docinfo-LxAdv-doc.metadata_doc.docinfo.dita"/> -->
		<xsl:include href="../../modules/nonamespace/Rosetta_docinfo-LxAdv-doc.metadata_doc.docinfo.xsl"/>
		<!--<topicref href="../common/common_rosetta_docinfo.bookseqnum.dita"/>-->
		<!-- <topicref href="../../../common_newest/Rosetta_docinfo.bookseqnum-LxAdv-doc.bookseqnum.dita"/> -->
		<xsl:include href="../../modules/docinfo/Rosetta_docinfo.bookseqnum-LxAdv-doc.bookseqnum.xsl"/>
		<!-- <topicref href="../../../common_caselaw/Rosetta_refnum.refnumtype.UCN-LxAdv_ref.groupid.dita"/> -->
		<xsl:include href="../../modules/nonamespace/Rosetta_refnum.refnumtype.UCN-LxAdv_ref.groupid.xsl"/>
		<!--<topicref href="../common/common_rosetta_docinfo.custom-metafields.dita"/>-->
		<!-- <topicref href="../../../common_newest/Rosetta_CAN_docinfo.custom-metafields-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta.meta.metaitem.dita"/> -->
		<xsl:include href="../../modules/docinfo/Rosetta_CAN_docinfo.custom-metafields-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta.meta.metaitem.xsl"/>
		<!--<topicref href="../common/common_rosetta_docinfo.doc-country.dita"/>-->
		<!-- <topicref href="../../../common_newest/Rosetta_docinfo.doc-country_iso-cc-LxAdv-doc.docinfo_doc-content-country.dita"/> -->
		<xsl:include href="../../modules/docinfo/Rosetta_docinfo.doc-country_iso-cc-LxAdv-doc.docinfo_doc-content-country.xsl"/>
		<!--<topicref href="../common/common_rosetta_docinfo.doc-heading.dita"/>-->
		<!-- <topicref href="../../../common_newest/Rosetta_docinfo.doc-heading-LxAdv-dc.title.dita"/> -->
		<xsl:include href="../../modules/docinfo/Rosetta_docinfo.doc-heading-LxAdv-dc.title.xsl"/>
		<!--<topicref href="../common/common_rosetta_docinfo.doc-id.dita"/>-->
		<!-- <topicref href="../../../common_newest/Rosetta_docinfo.doc-id-LxAdv-dcidentifier_lnmetaidentifier-scheme.dita"/> -->
		<xsl:include href="../../modules/docinfo/Rosetta_docinfo.doc-id-LxAdv-dcidentifier_lnmetaidentifier-scheme.xsl"/>
		<!--<topicref href="../common/common_rosetta_docinfo.doc-lang.dita"/>-->
		<!-- <topicref href="../../../common_newest/Rosetta_docinfo.doc-lang-LxAdv-ROOT_xmllang.dita"/> -->
		<xsl:include href="../../modules/docinfo/Rosetta_docinfo.doc-lang-LxAdv-ROOT_xmllang.xsl"/>
		<!--<topicref href="../common/common_rosetta_docinfo.topiccodes.dita"/>-->
		<!-- <topicref href="../../../common_newest/Rosetta_docinfo.topiccodes-to-LxAdv-classify.classification_classscheme_docinfo-topiccodes.dita"/> -->
		<xsl:include href="../../modules/docinfo/Rosetta_docinfo.topiccodes-to-LxAdv-classify.classification_classscheme_docinfo-topiccodes.xsl"/>
		<!--<topicref href="../common/common_rosetta_docinfo.assoc-links.dita"/>-->
		<!-- <topicref href="../../../common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita"/> -->
		<xsl:include href="../../modules/docinfo/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.xsl"/>
		<!--<topicref href="../common/common_rosetta_docinfo.hier.dita"/>-->
		<!-- <topicref href="../../../common_newest/Rosetta_docinfo.hier-LxAdv-doc.hier.dita"/> -->
		<xsl:include href="../../modules/docinfo/Rosetta_docinfo.hier-LxAdv-doc.hier.xsl"/>
		<!--<topicref href="../common/common_rosetta_docinfo.lbu-meta.dita"/>-->
		<!-- <topicref href="../../../common_newest/Rosetta_docinfo.lbu-meta-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta-scheme.dita"/> -->
		<xsl:include href="../../modules/docinfo/Rosetta_docinfo.lbu-meta-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta-scheme.xsl"/>
		<!--<topicref href="../common/common_rosetta_docinfo.lbu-indexing-terms.dita"/>-->
		<!-- <topicref href="../../../common_newest/Rosetta_docinfo.lbu-indexing-terms-LxAdv-classify.classification_classscheme_lbu-subj-scheme.dita"/> -->
		<xsl:include href="../../modules/docinfo/Rosetta_docinfo.lbu-indexing-terms-LxAdv-classify.classification_classscheme_lbu-subj-scheme.xsl"/>
		<!--<topicref href="../common/common_rosetta_docinfo.load-date.dita"/>-->
		<!-- <topicref href="../../../common_newest/Rosetta_date-Chof-docinfo.load-date-LxAdv-dc.date_lnmeta.datetype_load-date-scheme.dita"/> -->
		<xsl:include href="../../modules/nonamespace/Rosetta_date-Chof-docinfo.load-date-LxAdv-dc.date_lnmeta.datetype_load-date-scheme.xsl"/>
	<!-- end topichead  Metadata  -->

	<!-- start topichead  General Markup  -->
		<!--<topicref href="../common/common_rosetta_bodytext.dita"/>-->
		<!-- <topicref href="../../../common_newest/Rosetta_bodytext-LxAdv-bodytext.dita"/> -->
		<xsl:include href="../../modules/nonamespace/Rosetta_bodytext-LxAdv-bodytext.xsl"/>
		<!--<topicref href="../common/common_rosetta_pgrp.dita"/>-->
		<!-- <topicref href="../../../common_newest/Rosetta_pgrp-LxAdv-pgrp.dita"/> -->
		<xsl:include href="../../modules/nonamespace/Rosetta_pgrp-LxAdv-pgrp.xsl"/>
		<!--<topicref href="../common/common_rosetta_p.dita"/>-->
		<!-- <topicref href="../../../common_newest/Rosetta_p-LxAdv-p.dita"/> -->
		<xsl:include href="../../modules/nonamespace/Rosetta_p-LxAdv-p.xsl"/>
		<!--<topicref href="../common/common_rosetta_text.dita"/>-->
		<!-- <topicref href="../../../common_newest/Rosetta_text-LxAdv-text.dita"/> -->
		<xsl:include href="../../modules/nonamespace/Rosetta_text-LxAdv-text.xsl"/>
		<!--<topicref href="../common/common_rosetta_emph.dita"/>-->
		<!-- <topicref href="../../../common_newest/Rosetta_emph-LxAdv-emph.dita"/> -->
		<xsl:include href="../../modules/nonamespace/Rosetta_emph-LxAdv-emph.xsl"/>
		<!--<topicref href="../common/common_rosetta_remotelink.dita"/>-->
		<!-- <topicref href="../../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita"/> -->
		<xsl:include href="../../modules/nonamespace/Rosetta_remotelink-LxAdv-ref.crossreference.xsl"/>
		<!--<topicref href="../common/common_rosetta_nl.dita"/>	-->
		<!-- <topicref href="../../../common_newest/Rosetta_nl-LxAdv-proc.nl.dita"/> -->
		<xsl:include href="../../modules/nonamespace/Rosetta_nl-LxAdv-proc.nl.xsl"/>
		<!--<topicref href="../common/common_rosetta_heading.dita"/>-->
		<!-- <topicref href="../../../common_newest/Rosetta_heading-LxAdv-heading.dita"/> -->
		<xsl:include href="../../modules/nonamespace/Rosetta_heading-LxAdv-heading.xsl"/>
		<!--<topicref href="../common/common_rosetta_title.dita"/>-->
		<!-- <topicref href="../../../common_newest/Rosetta_title-LxAdv-title.dita"/> -->
		<xsl:include href="../../modules/nonamespace/Rosetta_title-LxAdv-title.xsl"/>
		<!--<topicref href="../common/common_rosetta_ci.cite.dita"/>-->
		<!-- <topicref href="../../../common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita"/> -->
		<xsl:include href="../../modules/nonamespace/Rosetta_ci.cite-LxAdv-lnci.cite.xsl"/>
		<!--<topicref href="../common/common_rosetta_table.dita"/>-->
		<!-- <topicref href="../../../common_newest/Rosetta_table-LxAdv-table.dita"/> -->
		<xsl:include href="../../modules/nonamespace/Rosetta_table-LxAdv-table.xsl"/>
		<!--<topicref href="../common/common_rosetta_glp.note.dita"/>-->
		<!-- <topicref href="../../../common_newest/Rosetta_glp.note-LxAdv-note.dita"/> -->
		<xsl:include href="../../modules/glp/Rosetta_glp.note-LxAdv-note.xsl"/>
	
		<xsl:include href="../../modules/nonamespace/Rosetta_link-LxAdv-ref.lnlink.xsl"/>
	
		<!-- <topicref href="refpt_-Chof-heading_title-LxAdv-ref.anchor.dita"/> -->
		<!--<xsl:include href="../../modules/nonamespace/CA02DS_DIGESTDOC_to_seclaw_refpt_-Chof-heading_title-LxAdv-ref.anchor.xsl"/>-->
		<!--<topicref href="../common/common_rosetta_ln.user_displayed.dita"/>-->
		<!--<topicref href="../../../common_newest/Rosetta_case.juris_ln.user-displayed.dita"/>-->
		<!-- <topicref href="../../../common_newest/Rosetta_case.courtcode_ln.user-displayed.dita"/>
    	<topicref href="../../../common_newest/Rosetta_abbrvname_ln.user-displayed.dita"/>
    	 <topicref href="../../../common_newest/Rosetta_refnum_ln.user-displayed.dita"/>-->
		<!--<topicref href="../../../common_newest/Rosetta_case.decisiondate_ln.user-displayed-LxAdv-decision.dates.dita"/>-->
		<!-- <topicref href="../../../common_newest/Rosetta_case.courtname_ln.user-displayed.dita"/> -->
		<xsl:include href="../../modules/nonamespace/Rosetta_case.courtname_ln.user-displayed.xsl"/>
	<!-- end topichead  General Markup  -->

	<!-- <topicref href="Change-Log.dita"/> -->
	<!--<xsl:include href="../../modules/changeLog/CA02DS_DIGESTDOC_to_seclaw_Change-Log.xsl"/>-->
</xsl:stylesheet>