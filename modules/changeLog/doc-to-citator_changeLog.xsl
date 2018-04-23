<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:ci="http://www.lexis-nexis.com/ci" xmlns:source_cttr="http://www.lexis-nexis.com/glp/cttr" xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:source_lnci="http://www.lexis-nexis.com/lnci" xmlns:caseinfo="http://www.lexisnexis.com/xmlschemas/content/legal/case-information/1/" xmlns:cttr="urn:x-lexisnexis:content:citator:sharedservices:1" xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns:decision="http://www.lexisnexis.com/xmlschemas/content/legal/decision/1/" xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" xmlns:globalentity="urn:x-lexisnexis:content:identified-entities:global:1" xmlns:jurisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/jurisdiction-info/1/" xmlns:lnci="http://www.lexisnexis.com/xmlschemas/content/shared/citations/1/" xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" xmlns:primlawhist="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-history/1/" xmlns:proc="http://www.lexisnexis.com/xmlschemas/content/shared/process-elements/1/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita case ci cttr docinfo leg lnci">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="CA03_Citator_ChangeLog">
	<title>CA03 Citator Change Log</title>
	<body>
		<section>
			<title>1.11 PROD</title>
			<p>2015-08-20 - SEP</p>
			<ul>
            <li>
               <xref href="../../../Rosetta/DITA-CAN/CA03-Citator/CA03_create_pubinfo.publicationname.dita">2015-08-20 - Create doc:metadata/pubinfo:pubinfo/pubinfo:publicationname id-CA03-13250: Surround the Registered Trademark symbol within a superscript. Canada CR 508/WT 305155.</xref>
            </li>
			</ul>
		</section>
		<section>
			<title>1.11 PROD</title>
			<p>2015-08-19 - SEP</p>
			<ul>
            <li>
               <xref href="../../../Rosetta/DITA-CAN/CA03-Citator/CA03_create_pubinfo.publicationname.dita">2015-08-19 - Create doc:metadata/pubinfo:pubinfo/pubinfo:publicationname id-CA03-13250: Created this section. Canada CR 508/WT 305155.</xref>
            </li>
            <li>
               <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2015-07-16 - docinfo:assoc-links to doc:related-content id-CCCC-10284: Updated conversion for handling of
            <sourcexml>ci:cite/@normprotocol</sourcexml>, <targetxml>proc:param[@name="countrycode"]</targetxml>; added
          instructions for <sourcexml>docinfo:assoc-resource</sourcexml>.</xref>
            </li>
			</ul>
	
		</section>
		<section>
			<title>1.11 PROD</title>
			<p>2015-07-10 - BRT</p>
			<ul>
				<li>
					<xref href="../../../Rosetta/DITA-CAN/CA03-Citator/Rosetta_citations-to-LxAdv_cttr.citations.dita">2015-07-10 - *:citations to cttr:citations id-CA03-13223: Modified the instructions for merging
						multiple <sourcexml>*:citations/ci:cite</sourcexml> elements to a single
						<targetxml>cttr:citations/lnci:cite</targetxml> element in the target. The new
						instructions add a semicolon only between adjacent
						<sourcexml>ci:cite/ci:content</sourcexml> elements, not between each
						<sourcexml>ci:content/ci:span</sourcexml> element. Addresses WT#
						304818.</xref>
				</li>
				<li>
					<xref href="../../../Rosetta/common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2015-06-24 - remotelink to ref:crossreference id-CCCC-10465: Added clarification note about url, @normval, and @hrefclass. Webstar 302055.</xref>
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
					<xref href="../../../Rosetta/common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2015-05-22 - remotelink to ref:crossreference id-CCCC-10465: Added an instruction to explicitly indicate <sourcexml>remotelink/@status</sourcexml> is always dropped (suppressed). This is a very low-priority change and has been added for technical correctness, particularly with respect to new CIs. Existing scripts do not have to implement this change unless needed since prior to the change <targetxml>remotelink/@status</targetxml> handling was not explicitly specified.</xref>
				</li>
				<li>
					<xref href="../../../Rosetta/common_newest/Rosetta_remotelink-self-inter-document-link-LxAdv-intra-document-link.dita">2015-05-22 - remotelink (self inter-document link) to ref:lnlink (intra-document link) id-CCCC-10468: Added an instruction to explicitly indicate <sourcexml>remotelink/@status</sourcexml> is always dropped (suppressed). This is a very low-priority change and has been added for technical correctness, particularly with respect to new CIs. Existing scripts do not have to implement this change unless needed since prior to the change <targetxml>remotelink/@status</targetxml> handling was not explicitly specified.</xref>
				</li>
			</ul>
	
		</section>
		
		<section>
			<title>1.9 PROD</title>
			<p>2015-05-18 - BRT</p>
			<ul>
				<li>
					<xref href="../../../Rosetta/DITA-CAN/CA03-Citator/Rosetta_leg.info-to-LxAdv_cttr.citedseclaw.dita">2015-05-18 - leg:info to cttr:head/cttr:citedstatlaw id-CA03-13234: Added a rule to the note regarding the
						conversion of <sourcexml>leg:history</sourcexml> instructions: add a space
						between adjacent <targetxml>lnci:cite</targetxml> elements in
						<targetxml>primlawhist:histitem/textitem</targetxml> to ensure the proper
						display. WebTeam #300060</xref>
				</li>
			</ul>
			<p>2015-05-11 - BRT</p>
			<ul>
				<li>
					<xref href="../../../Rosetta/DITA-CAN/CA03-Citator/cttr.refsummary.dita">2015-05-11 - cttr:refssummary id-CA03-13236: Modified instructions to get
						the value of the jurisdiction for
							<targetxml>cttr:refssummaryitem/@value</targetxml> from
							<targetxml>jurisinfo:system/globalentity:entity/globalentity:content
						</targetxml>instead of <targetxml>jurisinfo:system</targetxml>. R4.5 RFA
						#2311.</xref>
				</li>
			</ul>
			<p>2015-05-07 - BRT</p>
			<ul>
				<li>
					<xref href="../../../Rosetta/DITA-CAN/CA03-Citator/citator_suppressed-elements.dita">2015-05-07 - Suppressed Elements id-CA03-13208: Added <sourcexml>stat_citation</sourcexml> to
						list of suppressed elements. (R4.0 RFA #411)</xref>
				</li>
				<li>
					<xref href="../../../Rosetta/DITA-CAN/CA03-Citator/citator_suppressed-elements.dita">2015-05-05 - Suppressed Elements id-CA03-13208: Added
						<sourcexml>docinfo:doc-heading</sourcexml> to list of suppressed
						elements (R4.0 RFA #412).</xref>
				</li>
			</ul>		
</section>
		<section>
			<title>1.8 PROD</title>
			<p>2015-04-15 - SEP</p>
         <ul>
            <li>
               <xref href="../../../Rosetta/DITA-CAN/CA03-Citator/CA03_Rosetta_case.juris.dita">2015-04-15 - case:juris id-CA03-13248: Synchronizing CI with conversion. R45 RFA #2281.</xref>
            </li>
            <li>
               <xref href="../../../Rosetta/DITA-CAN/CA03-Citator/Rosetta_leg.juris-to-globalentity.entityReference.dita">2015-04-15 - leg:juris id-CA03-13249: Synchronizing CI with conversion. New mapping to <targetxml>jurisinfo:legisbodyinfo</targetxml>. R45 RFA #2281.</xref>
            </li>
            <li>
               <xref href="../../../Rosetta/common_newest/Rosetta_docinfo-LxAdv-doc.metadata_doc.docinfo.dita">2015-04-14 - docinfo to doc:metadata/doc:docinfo id-CCCC-10282: Remove bullet icon in sub nested list for
                    handling Indentation isssue.</xref>
            </li>
            <li>
               <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.hier-LxAdv-doc.hier.dita">2015-03-25 - docinfo:hier to doc:hier id-CCCC-10297: Added note with rule for
                    <sourcexml>title/num</sourcexml>. Suppress <sourcexml>num</sourcexml> tag but
                output content. Applicable for CA09 only. RFA 2249.</xref>
            </li>
            <li>
               <xref href="../../../Rosetta/common_newest/Rosetta_CAN_docinfo.custom-metafields-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta.meta.metaitem.dita">2015-03-19 - docinfo:custom-metafields to doc:legacy-metadata[@metadatasource="lbu-meta"]/meta/metaitem id-CCCC-10251: Within rules for First Act Doc, made the word
                    act lower-case in source value to reflect recent data change. Formerly
                        <sourcexml>"ActFirstDoc"</sourcexml>, now
                        <sourcexml>"actFirstDoc"</sourcexml>. Affects CA05, 06, 07, 08. R4.5 RFA #2240.</xref>
            </li>
            <li>
               <xref href="../../../Rosetta/common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2015-03-17 - ci.cite to lnci.cite id-CCCC-10268: An attribute <targetxml>@inline</targetxml> get added with <targetxml>desig</targetxml> element even when the source<sourcexml>pnum</sourcexml> is not having that attribute<sourcexml>@inline</sourcexml> Applicable on CA12 only.</xref>
            </li>
		 </ul>
		</section>
		<section>
			<title>1.6 PROD</title>
			<p>2015-02-26 - SEP</p>
         <ul>
            <li>
               <xref href="../../../Rosetta/DITA-CAN/CA03-Citator/Rosetta_leg.officialname_leg.num-to-dc.title_wrapper.dita">2015-02-26 - case:casename or leg:officialname, leg:num to dc:title id-CA03-13239: The <targetxml>dc:title</targetxml> should only ever be created from case:casename for Case Citator. Addresses 4B item 410.</xref>
            </li>
            <li>
               <xref href="../../../Rosetta/DITA-CAN/CA03-Citator/Rosetta_case.casename-dc.title.dita">2015-02-26 - case:casename to dc:title id-CA03-13244: The <targetxml>dc:title</targetxml> created from <sourcexml>case:casename</sourcexml>. Addresses 4B item 410.</xref>
            </li>
		 </ul>
		</section>
		<section>
			<title>1.6 PROD</title>
			<p>2015-02-24 - SEP</p>
         <ul>
            <li>
               <xref href="../../../Rosetta/DITA-CAN/CA03-Citator/Rosetta_case.courtname-to-LxAdv_jurisinfo.courtname.dita">2015-02-23 - case:courtname to jurisinfo:courtname id-CA03-13216: As <sourcexml>case:courtname</sourcexml> is what is shown to the user, use it to compare to <sourcexml>case:juris</sourcexml> when deciding whether to create <targetxml>jurisinfo:system@normshortname</targetxml>. Add note and Example 4. R4.5 RFAs #2133 and 2184.</xref>
            </li>
            <li>
               <xref href="../../../Rosetta/DITA-CAN/CA03-Citator/Rosetta_docinfo.doc-lang-CAN-auto-elements_xml.lang.dita">2015-02-24 - Always Provide @xml:lang For Specified Elements id-CA03-13247: There will only ever be one <targetxml>caseinfo:shortcasename</targetxml> in the appeals proceeding / citing cases table therefore we do not require the <targetxml>@xml:lang</targetxml> to be auto-provided.  Addresses R4.5 RFA #2185.</xref>
            </li>
		 </ul>
		</section>
		<section>
			<title>1.6 PROD</title>
			<p>2015-02-13 - SEP</p>
         <ul>
            <li>
               <xref href="../../../Rosetta/DITA-CAN/CA03-Citator/Rosetta_cttr.annot.appealproc-to-LxAdv_cttr.appealproceeding.dita">2015-02-12 - [@annotationtype="appealproc"]/cttr:annot to cttr:appealproceeding id-CA03-13227: If <sourcexml>@normval</sourcexml> is missing, output <targetxml>@pinpointsortweight=""</targetxml>. Addresses RFA R4.5 #2183.</xref>
            </li>
            <li>
               <xref href="../../../Rosetta/DITA-CAN/CA03-Citator/Rosetta_cttr.annot.subseqcases-to-LxAdv_cttr.citingcase.dita">2015-02-12 - [@annotationtype="subseqcases"]/cttr:annot to cttr:citingcase id-CA03-13229: If <sourcexml>@normval</sourcexml> is missing, output <targetxml>@pinpointsortweight=""</targetxml>. Addresses RFA R4.5 #2183.</xref>
            </li>
            <li>
               <xref href="../../../Rosetta/DITA-CAN/CA03-Citator/Rosetta_CITATORDOC-to-LxAdv_cttr.citator.dita">2015-02-11 - CITATORDOC to cttr:citator id-CA03-13224: Change note for converting <sourcexml>CITATORDOC/@signal="statute-cited"</sourcexml> to become  <targetxml>cttr:citator/@treatment="leg-citator-available"</targetxml>. R4.5 RFA #2179</xref>
            </li>
		 </ul>
		</section>
		<section>
			<title>1.5 PROD</title>
			<p>2015-02-05 - SEP</p>
         <ul>
            <li>
               <xref href="../../../Rosetta/DITA-CAN/CA03-Citator/CA03_Rosetta_case.juris.dita">2015-02-05 - case:juris id-CA03-13248: Remove UK PGUID value from table (CA01, CA02 (all streams), CA03 and CA04). R45 RFA #2133.</xref>
            </li>
            <li>
               <xref href="../../../Rosetta/DITA-CAN/CA03-Citator/Rosetta_leg.officialname_leg.num-to-dc.title.dita">2015-02-05 - leg:officialname, leg:num to dc:title id-CA03-13238: Add note and example for 'PQ' jurisdiction where French appears before English. Addresses R4.5 RFA 2168.</xref>
            </li>
		 </ul>
			<p>2015-01-30 - SEP</p>
         <ul>
            <li>
               <xref href="../../../Rosetta/DITA-CAN/CA03-Citator/Rosetta_docinfo.changemanagementcode-to-LxAdv_doc.changemanagementcode.dita">2015-01-29 - docinfo:changemanagementcode to doc:changemanagementcode id-CA03-13243: Added note and instruction to create <targetxml>doc:changemanagementcode</targetxml> when no <sourcexml>docinfo:changemanagementcode</sourcexml> exists in source. R4.5 RFA #2163.</xref>
            </li>
            <li>
               <xref href="../../../Rosetta/common_newest/Rosetta_CAN_docinfo.custom-metafields-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta.meta.metaitem.dita">2015-01-27 - docinfo:custom-metafields to doc:legacy-metadata[@metadatasource="lbu-meta"]/meta/metaitem id-CCCC-10251: For CA05,CA06,CA07 and CA08 Existing topic
                        CA first document in "current" material (id-CCCC-10517) removed and
                    added a note here to handle firstActDocument</xref>
            </li>
            <li>
               <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.hier-LxAdv-doc.hier.dita">2015-01-23 - docinfo:hier to doc:hier id-CCCC-10297: Added note to convert <sourcexml>docinfo:hierlev/@exclude-from-displayunits="true"</sourcexml> into
		<targetxml>doc:hier/@includeintoc="false"</targetxml>.</xref>
            </li>
         </ul>
			<p>2015-01-23 - BRT</p>
			<ul>	
			<li>
				<xref href="../../../Rosetta/DITA-CAN/CA03-Citator/CA03_Rosetta_case.juris.dita">2015-01-22 - case:juris id-CA03-13248: Updated the table - "The province codes with PGUID codes for Country"  for case:juris with country code "UK". Db R4.0 RFA #404, Applicable to CA03.</xref>
			</li></ul>
			<p>2015-01-22 - SEP</p>
			 <ul>
            <li>
               <xref href="../../../Rosetta/DITA-CAN/CA03-Citator/Rosetta_docinfo.changemanagementcode-to-LxAdv_doc.changemanagementcode.dita">2015-01-20 - docinfo:changemanagementcode to doc:changemanagementcode id-CA03-13243: Updated target attributes based on results of meeting with Jessica and LBU comments. R4.5 RFA #2140.</xref>
            </li>
            <li>
               <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2015-01-19 - docinfo:assoc-links to doc:related-content id-CCCC-10284: For CA05 - CA08- Updated Instruction and
          included "<targetxml>related-content-grp</targetxml>" markup inside the target Example
            8 for conversion of QUERY link to doc:related-content.</xref>
            </li>
			 </ul>
			<p>2015-01-15 - SEP</p>
			 <ul>
				<li>
				   <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2015-01-15 - docinfo:assoc-links to doc:related-content id-CCCC-10284: For CA03- Convert the QUERY link to doc:related-content. Refer Example 10. R4.5 RFA #2099.</xref>
				</li>
			 </ul>
			<p>2015-01-05 - BRT</p>
			<ul>
				<li>
					<xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2015-01-13 - docinfo:assoc-links to doc:related-content id-CCCC-10284: For CA05 - CA08 Conversion Needs to split
						multiple ORs into a separate <targetxml>doc:related-content-item</targetxml>. Refer
						Example 9</xref>
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
					<xref href="../../../Rosetta/DITA-CAN/CA03-Citator/Rosetta_leg.info-to-LxAdv_cttr.citedseclaw.dita">2015-01-05 - leg:info to cttr:head/cttr:citedstatlaw id-CA03-13234: Added note to create a single
						<targetxml>lnci:popname</targetxml> for instances that include two
						<sourcexml>leg:officialnum/ci:cite</sourcexml> elements but only one value
						in <sourcexml>leg:officialname</sourcexml>. R4.0 RFA #392</xref>
				</li>
				<li>
					<xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2015-01-02 - docinfo:assoc-links to doc:related-content id-CCCC-10284: Added
						<sourcexml>docinfo:assoc-links/remotelink[@service="QUERY"]</sourcexml> and
						<sourcexml>docinfo:assoc-links-grp/remotelink[@service="QUERY"]</sourcexml> to generate
						<targetxml>doc:related-content</targetxml> markup. Applicable on CA05.</xref>
				</li>
			</ul>
			<p>2014-12-31 - BRT</p>
			<ul>
				<li>
					<xref href="../../../Rosetta/DITA-CAN/CA03-Citator/LxAdv-cttr.usagegroup_AddingSortWeightInformation_subseqcases_statutes.dita">2014-12-31 - Adding Sort Weight Information to cttr:usagegroup (CA03 subseqcases STATUTES) id-CA03-13242: Clarify 'Statutes' / 'Regulations' search to be singular or plural.</xref>
				</li>
				<li>
					<xref href="../../../Rosetta/DITA-CAN/CA03-Citator/Rosetta_leg.officialname_leg.num-to-dc.title_wrapper.dita">2014-12-31 - docinfo:doc-heading or leg:officialname, leg:num to dc:title id-CA03-13239: Clarify 'Statutes' / 'Regulations' search to be singular or plural.</xref>
				</li>
				<li>
					<xref href="../../../Rosetta/DITA-CAN/CA03-Citator/Rosetta_leg.officialname_leg.num-to-dc.title.dita">2014-12-31 - leg:officialname, leg:num to dc:title id-CA03-13238: Clarify 'Statutes' / 'Regulations' search to be singular or plural.</xref>
				</li>
				<li>
					<xref href="../../../Rosetta/common_newest/Rosetta_.docinfo.doc-id-UCN-LxAdv_ref.groupid.dita">2014-12-31 - docinfo:doc-id - ref:groupid id-CCCC-10506: Clarify 'Statutes' / 'Regulations' search to
						be singular or plural.</xref>
				</li>
			</ul>
			<p>2014-12-19 - SEP</p>
         <ul>
            <li>
               <xref href="../../../Rosetta/DITA-CAN/CA03-Citator/Rosetta_cttr.annot.appealproc-to-LxAdv_cttr.appealproceeding.dita">2014-12-19 - [@annotationtype="appealproc"]/cttr:annot to cttr:appealproceeding id-CA03-13227: If <sourcexml>@normval</sourcexml> is missing, output <targetxml>@pinpointsortweight="null"</targetxml>. Addresses RFA R4.5 #2100.</xref>
            </li>
            <li>
               <xref href="../../../Rosetta/DITA-CAN/CA03-Citator/Rosetta_cttr.annot.subseqcases-to-LxAdv_cttr.citingcase.dita">2014-12-19 - [@annotationtype="subseqcases"]/cttr:annot to cttr:citingcase id-CA03-13229: If <sourcexml>@normval</sourcexml> is missing, output <targetxml>@pinpointsortweight="null"</targetxml>. Addresses RFA R4.5 #2100.</xref>
            </li>
            <li>
               <xref href="../../../Rosetta/DITA-CAN/CA03-Citator/Rosetta_leg.info-to-LxAdv_cttr.citedseclaw.dita">2014-12-18 - leg:info to cttr:head/cttr:citedstatlaw id-CA03-13234: Remove note about creation of <targetxml>dc:coverage</targetxml>. R4.5 RFA #2047</xref>
            </li>
            <li>
               <xref href="../../../Rosetta/DITA-CAN/CA03-Citator/Rosetta_cttr.annot.appealproc-to-LxAdv_cttr.appealproceeding.dita">2014-12-18 - [@annotationtype="appealproc"]/cttr:annot to cttr:appealproceeding id-CA03-13227: Update Example 3/4 to a better example. Addresses RFA R4.5 #2100.</xref>
            </li>
            <li>
               <xref href="../../../Rosetta/DITA-CAN/CA03-Citator/Rosetta_cttr.annot.subseqcases-to-LxAdv_cttr.citingcase.dita">2014-12-18 - [@annotationtype="subseqcases"]/cttr:annot to cttr:citingcase id-CA03-13229: Update Example 3/4 to a better example. Addresses RFA R4.5 #2100.</xref>
            </li>
            <li>
               <xref href="../../../Rosetta/DITA-CAN/CA03-Citator/LxAdv-cttr.usagegroup_AddingSortWeightInformation_subseqcases_statutes.dita">2014-12-18 - Adding Sort Weight Information to cttr:usagegroup (CA03 subseqcases STATUTES) id-CA03-13242: Clarify Statutes / Regulation search to be case insensitive.</xref>
            </li>
            <li>
               <xref href="../../../Rosetta/DITA-CAN/CA03-Citator/CA03_Rosetta_case.juris.dita">2014-12-18 - case:juris id-CA03-13248: Updated mapping. Db R4.5 RFA #2047, Applicable on CA03.</xref>
            </li>
            <li>
               <xref href="../../../Rosetta/DITA-CAN/CA03-Citator/Rosetta_leg.juris-to-globalentity.entityReference.dita">2014-12-18 - leg:juris id-CA03-13249: Updated the instruction and example for
              handling <sourcexml>leg:juris</sourcexml> and added the new elements
              <targetxml>globalentity:entityReference</targetxml> and
              <targetxml>globalentity:content</targetxml> under
              the<targetxml>globalentity:entity/</targetxml> target markup. Applicable on CA03. Db R4.5 RFA #2047</xref>
            </li>
            <li>
               <xref href="../../../Rosetta/DITA-CAN/CA03-Citator/Rosetta_leg.officialname_leg.num-to-dc.title.dita">2014-12-18 - leg:officialname, leg:num to dc:title id-CA03-13238: Clarify Statutes / Regulation search to be case insensitive.</xref>
            </li>
            <li>
               <xref href="../../../Rosetta/common_newest/Rosetta_.docinfo.doc-id-UCN-LxAdv_ref.groupid.dita">2014-12-18 - docinfo:doc-id - ref:groupid id-CCCC-10506: Clarify Statutes / Regulation search to be case insensitive.</xref>
            </li>
            <li>
               <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2014-12-17 - docinfo:assoc-links to doc:related-content id-CCCC-10284: Added a Note for CA05, CA06, CA07 and CA08 for handling
            <sourcexml>docinfo:assoc-links-grp/remotelink[@service="QUERY"]
          </sourcexml>
               </xref>
            </li>
            <li>
               <xref href="../../../Rosetta/common_newest/Rosetta_.docinfo.doc-id-UCN-LxAdv_ref.groupid.dita">2014-12-16 - docinfo:doc-id - ref:groupid id-CCCC-10506: Change to create "UCN" groupid for cases only. Addresses R4.5 RFA #2090</xref>
            </li>
         </ul>
			<p>2014-12-15 - BRT</p>
			<ul>
				<li>Deleted cttr:annot/leg:info to lnci:stat (id-CA03-13235) from document - replaced by instructions in <xref href="Rosetta_cttr.annot.subseqcases-to-LxAdv_cttr.citingcase.dita"/> </li>
			</ul>
			<p>2014-12-11 - BRT</p>
			<ul> 
				<li>
					<xref href="../../../Rosetta/DITA-CAN/CA03-Citator/Rosetta_case.headnote-to-LxAdv_cttr.head.dita">2014-12-11 - cttr:body/case:headnote to cttr:head/cttr:citeddecision id-CA03-13219: Added @citetype="reporter" to <targetxml>ref:cite4thisresource</targetxml>.</xref>
				</li>
				<li>
					<xref href="../../../Rosetta/DITA-CAN/CA03-Citator/Rosetta_leg.info-to-LxAdv_cttr.citedseclaw.dita">2014-12-11 - leg:info to cttr:head/cttr:citedstatlaw id-CA03-13234: Added @citetype="reporter" to <targetxml>ref:cite4thisresource</targetxml>.</xref>
				</li>
				<li>
					<xref href="../../../Rosetta/DITA-CAN/CA03-Citator/Rosetta_case.info-to-LxAdv_cttr.caseinfo.dita">2014-12-11 - case:info id-CA03-13220: Added @citetype="reporter" to <targetxml>ref:cite4thisresource</targetxml>.</xref>
				</li>
				<li>
					<xref href="../../../Rosetta/DITA-CAN/CA03-Citator/Rosetta_case.parallelcite-to-LxAdv_cttr.citations.dita">2014-12-11 - case:parallelcite to cttr:citations id-CA03-13222: Added @citetype="reporter" to <targetxml>ref:cite4thisresource</targetxml>.</xref>
				</li>
				<li>
					<xref href="../../../Rosetta/DITA-CAN/CA03-Citator/Rosetta_cttr.annot.appealproc-to-LxAdv_cttr.appealproceeding.dita">2014-12-10 - [@annotationtype="appealproc"]/cttr:annot to cttr:appealproceeding id-CA03-13227: Changed instruction for converting
						<sourcexml>cttr:annot/leg:info/leg:num</sourcexml> to
						<targetxml>cttr:citedstatlaw/ref:crossreference</targetxml>. Addresses RFA
						R4.5 #1940.</xref>
				</li>
				<li>
					<xref href="../../../Rosetta/DITA-CAN/CA03-Citator/Rosetta_cttr.annot.subseqcases-to-LxAdv_cttr.citingcase.dita">2014-12-10 - [@annotationtype="subseqcases"]/cttr:annot to cttr:citingcase id-CA03-13229: Changed instruction for converting
						<sourcexml>cttr:annot/leg:info/leg:num</sourcexml> to
						<targetxml>cttr:citedstatlaw/ref:crossreference</targetxml>. Addresses RFA
						R4.5 #1940.</xref>
				</li>
				<li>
					<xref href="../../../Rosetta/DITA-CAN/CA03-Citator/Citator_Introduction.dita">2014-12-09 - Introduction id-CA03-13207: Updated schema version to 1.5 PROD.</xref>
				</li>
				<li>
					<xref href="../../../Rosetta/DITA-CAN/CA03-Citator/Rosetta_cttr.annot.appealproc-to-LxAdv_cttr.appealproceeding.dita">2014-12-09 - [@annotationtype="appealproc"]/cttr:annot to cttr:appealproceeding id-CA03-13227: Changed instruction for converting
						<sourcexml>cttr:use[@signal="citation"]</sourcexml>. Addresses RFA R4.0
						#2029.</xref>
				</li>
				<li>
					<xref href="../../../Rosetta/DITA-CAN/CA03-Citator/Rosetta_cttr.annot.subseqcases-to-LxAdv_cttr.citingcase.dita">2014-12-09 - [@annotationtype="subseqcases"]/cttr:annot to cttr:citingcase id-CA03-13229: Changed instruction for converting
						<sourcexml>cttr:use[@signal="citation"]</sourcexml>. Addresses RFA R4.0
						#2029.</xref>
				</li>
				<li>
					<xref href="../../../Rosetta/DITA-CAN/CA03-Citator/Rosetta_leg.officialname_leg.num-to-dc.title.dita">2014-12-05 - leg:officialname, leg:num to dc:title id-CA03-13238: Modified the instructions to accomodate instances where <sourcexml>leg:num</sourcexml> is not present or has only one value, and instances where <sourcexml>leg:officialname</sourcexml> has only one value. Addresses R4.5 RFA #1832.</xref>
				</li>
				<li>
					<xref href="../../../Rosetta/DITA-CAN/CA03-Citator/Rosetta_cttr.annot.subseqcases-to-LxAdv_cttr.citingcase.dita">2014-12-04 - [@annotationtype="subseqcases"]/cttr:annot to cttr:citingcase id-CA03-13229: Deleted extraneous instructions for converting
						<sourcexml>leg:num</sourcexml> to
						<targetxml>lnci:cite</targetxml>. Addresses RFA R4.0 #343.</xref>
				</li>
			</ul>
		</section>
		<section>
			<title>1.4 PROD</title>
			<p>2014-12-03 - BRT</p>
			<ul>          <li>
				<xref href="../../../Rosetta/DITA-CAN/CA03-Citator/Rosetta_docinfo.doc-lang-CAN-auto-elements_xml.lang.dita">2014-11-13 - Always Provide @xml:lang For Specified Elements id-CA03-13247: Changed list to include <targetxml>caseinfo:shortcasename</targetxml>.  Addresses R4.5 RFA #2032.</xref>
			</li>
				<li>
					<xref href="../../../Rosetta/DITA-CAN/CA03-Citator/Rosetta_case.casename-to-LxAdv_caseinfo.shortcasename.dita">2014-11-13 - case:casename to caseinfo:shortcasename id-CA03-13213: Changed instruction and example to include @xml:lang.  Addresses R4.5 RFA #2032.</xref>
				</li>
				<li>
					<xref href="../../../Rosetta/DITA-CAN/CA03-Citator/Rosetta_cttr.annot.appealproc-to-LxAdv_cttr.appealproceeding.dita">2014-11-12 - [@annotationtype="appealproc"]/cttr:annot to cttr:appealproceeding id-CA03-13227: Added instructions for converting <sourcexml>leg:num/@normval</sourcexml> to <targetxml>cttr:usagegroup/@pinpointsortweight</targetxml>. Addresses RFA #2030.</xref>
				</li>
				<li>
					<xref href="../../../Rosetta/DITA-CAN/CA03-Citator/Rosetta_cttr.annot.subseqcases-to-LxAdv_cttr.citingcase.dita">2014-11-12 - [@annotationtype="subseqcases"]/cttr:annot to cttr:citingcase id-CA03-13229: Added instructions for converting <sourcexml>leg:num/@normval</sourcexml> to <targetxml>cttr:usagegroup/@pinpointsortweight</targetxml>. Addresses RFA #2030.</xref>
				</li>
				<li>
					<xref href="../../../Rosetta/DITA-CAN/CA03-Citator/Rosetta_leg.info-to-LxAdv_cttr.citedseclaw.dita">2014-11-11 - leg:info to cttr:head/cttr:citedstatlaw id-CA03-13234: Added instruction to append a space 
						at the end of <targetxml>primlawhist:histgrp/primlawhist:histitem/textitem</targetxml>.
						Addresses R4.5 RFA #2028.</xref>
				</li>
				<li>
					<xref href="../../../Rosetta/DITA-CAN/CA03-Citator/Rosetta_case.casename-dc.title.dita">2014-11-11 - case:casename to dc:title id-CA03-13244: Added rule to not convert docinfo:doc-heading. Addresses R4.5 RFA #2031.</xref>
				</li>
				<li>
					<xref href="../../../Rosetta/DITA-CAN/CA03-Citator/Rosetta_leg.relatedleg-LxAdv-doc.related-content.dita">2014-11-11 - leg:relatedleg to doc:related-content id-CA03-13246: Added "targetdoclang" parameter. Addresses R4.5 RFA #1981.</xref>
				</li></ul>
			<p>2014-11-06 - BRT</p>
			<ul> 
				<li>
					<xref href="../../../Rosetta/DITA-CAN/CA03-Citator/Rosetta_docinfo.doc-lang-CAN-auto-elements_xml.lang.dita">2014-11-06 - Always Provide @xml:lang For Specified Elements id-CA03-13247: Created instruction to automatically provide <targetxml>@xml:lang</targetxml> for certain elements, RFA # 2011.</xref>
				</li>
				
				<li>
				<xref href="../../../Rosetta/DITA-CAN/CA03-Citator/Rosetta_leg.info-to-LxAdv_cttr.citedseclaw.dita">2014-11-05 - leg:info to cttr:head/cttr:citedstatlaw id-CA03-13234: Deleted instructions and examples for
					converting <sourcexml>leg:info/leg:relatedleg</sourcexml> to
					<targetxml>primlaw:histgrp</targetxml>. Created a new topic to convert
					<sourcexml>leg:info/leg:relatedleg</sourcexml> to
					<targetxml>doc:related-content</targetxml>. Addresses R4.5 RFA #1981.</xref>
			</li>
				<li>
					<xref href="../../../Rosetta/DITA-CAN/CA03-Citator/Rosetta_leg.relatedleg-LxAdv-doc.related-content.dita">2014-11-05 - leg:relatedleg to doc:related-content id-CA03-13246: Created new topic. Addresses R4.5 RFA
						#1981.</xref>
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
				</li></ul>
			<p>2014-10-17 - BRT</p>
			
			<ul>
				<li>
					<xref href="../../../Rosetta/DITA-CAN/CA03-Citator/Rosetta_case.courtname-to-LxAdv_jurisinfo.courtname.dita">2014-10-17 - case:courtname to jurisinfo:courtname id-CA03-13216: Added instruction to convert <sourcexml>abbrvname</sourcexml> to <targetxml>jurisinfo:alternatecourtcode/@alternatecourtcode</targetxml> for markup in the document head, and <sourcexml>case:courtname</sourcexml> to <targetxml>jurisinfo:alternatecourtcode/@alternatecourtcode</targetxml> for markup in the document body. </xref>
				</li>
				
				<li>
					<xref href="../../../Rosetta/DITA-CAN/CA03-Citator/Rosetta_case.courtcode-to-LxAdv_jurisinfo.courtinfo.dita">2014-10-16 - case:courtcode to doc:legacy-metadata id-CA03-13214: Removed instruction to convert <sourcexml>case:courtcode</sourcexml> to <targetxml>jurisinfo:alternatecourtcode/@alternatecourtcode</targetxml>; this target element is now populated by <sourcexml>case:courtname</sourcexml>.</xref>
				</li>
				<li>
					<xref href="../../../Rosetta/DITA-CAN/CA03-Citator/cttr.refsummary.dita">2014-10-16 - cttr:refssummary id-CA03-13236: Modified instructions to use <sourcexml>case:courtname</sourcexml> instead of <sourcexml>case:courtcode</sourcexml> when creating <targetxml>cttr:refssummary[@summarytype="court_signal_tally"]</targetxml>.</xref>
				</li>
				<li>
					<xref href="../../../Rosetta/DITA-CAN/CA03-Citator/Rosetta_cttr.annot.appealproc-to-LxAdv_cttr.appealproceeding.dita">2014-10-15 - [@annotationtype="appealproc"]/cttr:annot to cttr:appealproceeding id-CA03-13227: Added instructions for converting <sourcexml>leg:num</sourcexml> with English and French text. QuickCite RFA #1940.</xref>
				</li>
				<li>
					<xref href="../../../Rosetta/DITA-CAN/CA03-Citator/Rosetta_cttr.annot.subseqcases-to-LxAdv_cttr.citingcase.dita">2014-10-15 - [@annotationtype="subseqcases"]/cttr:annot to cttr:citingcase id-CA03-13229: Added instructions for converting <sourcexml>leg:num</sourcexml> with English and French text. QuickCite RFA #1940.</xref>
				</li>
				<li>
					<xref href="../../../Rosetta/DITA-CAN/CA03-Citator/Rosetta_leg.info-to-LxAdv_cttr.citedseclaw.dita">2014-10-14 - leg:info to cttr:head/cttr:citedstatlaw id-CA03-13234: Added instruction to convert <sourcexml>leg:juris</sourcexml> to <targetxml>dc:coverage</targetxml>. Addresses
						R4.5 RFA #1982.</xref>
				</li>
				<li>
					<xref href="../../../Rosetta/DITA-CAN/CA03-Citator/Rosetta_leg.info-to-LxAdv_cttr.citedseclaw.dita">2014-10-14 - leg:info to cttr:head/cttr:citedstatlaw id-CA03-13234: Modified instructions to create a language
						attribute for <targetxml>primlawhist:histgrp/@xml:lang</targetxml> from
						language-dependent text converted from
						<sourcexml>leg:relatedleg/@display-name</sourcexml>. In previous conversion,
						the language attribute was converted to
						<targetxml>primlawhist:histitem/textitem/@xml:lang</targetxml>. Addresses
						R4.5 RFA #1961.</xref>
				</li>
				<li>2014-10-14 - leg:juris: Created topic.  Addresses R4.5 RFA #1982.
				</li>
				<li>
					<xref href="../../../Rosetta/common_newest/Rosetta_inlineobject-LxAdv-figure_ref.inlineobject.dita">2014-10-13 - inlineobject to figure/ref:inlineobject id-CCCC-10368: Added note and example to suppress
						<targetxml>proc:nl</targetxml> from before and after of
						<targetxml>figure/inlineobject</targetxml> when it comes inside
						<targetxml>verbatim</targetxml> element.</xref>
				</li>
				<li>
					<xref href="../../../Rosetta/DITA-CAN/CA03-Citator/Rosetta_case.dates-to-LxAdv_decision.dates.dita">2014-10-10 - case:dates to decision:dates id-CA03-13217: Added French/English table and instruction for 
						creating bi-lingual <targetxml>decision:decisiondate</targetxml> elements. R4.5 RFA# 1902.</xref>
				</li>
				<li>
					<xref href="../../../Rosetta/DITA-CAN/CA03-Citator/Rosetta_leg.info-to-LxAdv_cttr.citedseclaw.dita">2014-10-09 - leg:info to cttr:head/cttr:citedstatlaw id-CA03-13234: Created a note to drop the second instance of
						<sourcexml>leg:juris</sourcexml> when it contains the value 'NU'.</xref>
				</li>
				<li>
					<xref href="../../../Rosetta/DITA-CAN/CA03-Citator/Rosetta_leg.info-to-LxAdv_cttr.citedseclaw.dita">2014-10-08 - leg:info to cttr:head/cttr:citedstatlaw id-CA03-13234: Modified instructions to create a language
						attribute for <targetxml>primlawhist:histitem/@xml:lang</targetxml> from
						language-dependent text converted from
						<sourcexml>leg:relatedleg/@display-name</sourcexml>. In previous conversion,
						the language attribute was converted to
						<targetxml>primlawhist:histitem/textitem/@xml:lang</targetxml>. Addresses
						R4.5 RFA #1961.</xref>
				</li>
				<li>
					<xref href="../../../Rosetta/DITA-CAN/CA03-Citator/Rosetta_case.casename-dc.title.dita">2014-10-06 - case:casename to dc:title id-CA03-13244: Created the CA03 Case Citator specific part of this instruction. Addresses R4.5 RFA #1832.</xref>
				</li>
			</ul>
		</section>
			<section>
				<title>1.2 PROD</title>
				<p>2014-10-03 - BRT</p>
		
				<ul>
					<li>
						<xref href="../../../Rosetta/DITA-CAN/CA03-Citator/Rosetta_docinfo.changemanagementcode-to-LxAdv_doc.changemanagementcode.dita">2014-10-30 - docinfo:changemanagementcode to doc:changemanagementcode id-CA03-13243: Created this instruction. QuickCite RFA #58.</xref>
					</li>
					<li>
						<xref href="../../../Rosetta/DITA-CAN/CA03-Citator/Rosetta_case.courtname-to-LxAdv_jurisinfo.courtname.dita">2014-10-02 - case:courtname to jurisinfo:courtname id-CA03-13216: Only substitute for known bad values and place them into <targetxml>jurisinfo:system/@normshortname</targetxml>. QuickCite RFA #78.</xref>
					</li>
					<li>
						<xref href="../../../Rosetta/DITA-CAN/CA03-Citator/Rosetta_case.courtname-to-LxAdv_jurisinfo.courtname.dita">2014-10-01 - case:courtname to jurisinfo:courtname id-CA03-13216: Remove long courtname table for <targetxml>jurisinfo:system/@normshortname</targetxml> and instead use short Jurisdiction Abbreviation table. QuickCite RFA #78.</xref>
					</li>
				<li>
					<xref href="../../../Rosetta/DITA-CAN/CA03-Citator/Rosetta_leg.info-to-LxAdv_cttr.citedseclaw.dita">2014-09-29 - leg:info to cttr:head/cttr:citedstatlaw id-CA03-13234: Modified instructions to convert <sourcexml>leg:info/
						leg:officialnum/ci:cite</sourcexml> to <targetxml>cttr:citedstatlaw/cttr:legisinfo/cttr:citations/lnci:cite</targetxml> and 
						<targetxml>cttr:citedstatlaw/cttr:legisinfo/ref:citations/ref:cite4thisresource/lnci:cite</targetxml>. Addresses R4.5 RFA #1816.</xref>
				</li>
				<li>
					<xref href="../../../Rosetta/DITA-CAN/CA03-Citator/Rosetta_citations-to-LxAdv_cttr.citations.dita">2014-09-29 - *:citations to cttr:citations id-CA03-13223: Added instructions and new example for merging multiple <sourcexml>*:citations/ci:cite</sourcexml> elements to a single <targetxml>cttr:citations/lnci:cite</targetxml> element in the target. Addresses R4.5 RFA #1836.</xref>
				</li>
				<li>
					<xref href="../../../Rosetta/DITA-CAN/CA03-Citator/cttr.refsummary.dita">2014-09-29 - cttr:refssummary id-CA03-13236: Added instructions for
						creating
							<targetxml>cttr:refssummary[@summarytype="jurisdiction_signal_tally]</targetxml>.
						QuickCite RFA #1931.</xref>
				</li>
				<li>
					<xref href="../../../Rosetta/DITA-CAN/CA03-Citator/Rosetta_cttr.annot.appealproc-to-LxAdv_cttr.appealproceeding.dita">2014-09-25 - [@annotationtype="appealproc"]/cttr:annot to cttr:appealproceeding id-CA03-13227: Updated instruction to reference new sort weight calculations for CA03. QuickCite RFA #45.</xref>
				</li>
				<li>
					<xref href="../../../Rosetta/DITA-CAN/CA03-Citator/Rosetta_cttr.annot.subseqcases-to-LxAdv_cttr.citingcase.dita">2014-09-25 - [@annotationtype="subseqcases"]/cttr:annot to cttr:citingcase id-CA03-13229: Updated instruction to reference new sort weight calculations for CA03. QuickCite RFA #45.</xref>
				</li>
				<li>
					<xref href="../../../Rosetta/common_newest/Rosetta_.docinfo.doc-id-UCN-LxAdv_ref.groupid.dita">2014-09-25 - docinfo:doc-id - ref:groupid id-CCCC-10506: Created. Addresses R4.5 RFA #1914</xref>
				</li>
				<li>
					<xref href="../../../Rosetta/DITA-CAN/CA03-Citator/Rosetta_case.courtname-to-LxAdv_jurisinfo.courtname.dita">2014-09-24 - case:courtname to jurisinfo:courtname id-CA03-13216: Add instruction and example for using table to create <targetxml>jurisinfo:system/@normshortname</targetxml>. QuickCite RFA #78.</xref>
				</li>
				<li>
					<xref href="../../../Rosetta/DITA-CAN/CA03-Citator/Rosetta_cttr.annotations-to-LxAdv_cttr.refsection.dita">2014-09-18 - cttr:annotations to cttr:refsection id-CA03-13230: Added 3 <targetxml>ref:anchor/@id</targetxml> to support RHS linking for History of Case, Citing Cases, and Commentary Referring to this Case. CA QuickCite Issue #79</xref>
				</li>
				<li>
					<xref href="../../../Rosetta/DITA-CAN/CA03-Citator/Rosetta_leg.info-to-LxAdv_cttr.citedseclaw.dita">2014-09-17 - leg:info to cttr:head/cttr:citedstatlaw id-CA03-13234: Added note and example (#3) for dividing the text of
						<sourcexml>leg:officialname</sourcexml> into separate strings for French and
						English.  Addresses R4.5 RFA #1919.</xref>
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
					<xref href="../../../Rosetta/common_newest/Rosetta_CAN_docinfo.custom-metafields-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta.meta.metaitem.dita">2014-09-15 - docinfo:custom-metafields to doc:legacy-metadata[@metadatasource="lbu-meta"]/meta/metaitem id-CCCC-10251: update target mapping of
						<sourcexml>docinfo:custom-metafields/docinfo:custom-metafield[@name="act-id"]</sourcexml>
						from Head to
						<targetxml>doc:docinfo/doc:membership/ref:groupid[@group-type="leg-id-1"]/ref:resourceid</targetxml>
					</xref>
				</li>
				<li>
					<xref href="../../../Rosetta/DITA-CAN/CA03-Citator/Rosetta_cttr.annot.appealproc-to-LxAdv_cttr.appealproceeding.dita">2014-09-12 - [@annotationtype="appealproc"]/cttr:annot to cttr:appealproceeding id-CA03-13227: Added instruction for converting <sourcexml>leg:info</sourcexml> becomes <targetxml>cttr:citedstatlaw</targetxml>.</xref>
				</li>
				<li>
					<xref href="../../../Rosetta/DITA-CAN/CA03-Citator/Rosetta_cttr.annot.subseqcases-to-LxAdv_cttr.citingcase.dita">2014-09-12 - [@annotationtype="subseqcases"]/cttr:annot to cttr:citingcase id-CA03-13229: Added instructions for converting <sourcexml>leg:info</sourcexml> becomes <targetxml>cttr:citedstatlaw</targetxml>.</xref>
				</li>
			</ul>
		</section>
		
		<section>
			<title>1.0 PROD</title>
			<p>2014-08-29 - BRT</p>
			<ul>
				<li>
					<xref href="../../../Rosetta/DITA-CAN/CA03-Citator/Citator_Introduction.dita">2014-08-29 - Introduction id-CA03-13207: Updated schema version to 1.0 PROD.</xref>
				</li>
				<li>
					<xref href="../../../Rosetta/DITA-CAN/CA03-Citator/Rosetta_leg.info-to-LxAdv_cttr.citedseclaw.dita">2014-08-28 - leg:info to cttr:head/cttr:citedstatlaw id-CA03-13234: Added note and cross reference for certain situations, where
						<sourcexml>leg:officialname</sourcexml> and <sourcexml>leg:num</sourcexml>
						are used also to populate <targetxml>dc:title</targetxml>. Addresses R4.5 RFA #1832.</xref>
				</li>
				<li>
					<xref href="../../../Rosetta/DITA-CAN/CA03-Citator/Rosetta_leg.officialname_leg.num-to-dc.title.dita">2014-08-26 - leg:officialname, leg:num to dc:title id-CA03-13238: Created the CA03 specific part of this instruction, which can also take <targetxml>dc:title</targetxml>
						from <sourcexml>leg:officialname</sourcexml>, <sourcexml>leg:num</sourcexml> when <sourcexml>docinfo:selector</sourcexml> contains ("STATUTE" or "REGULATION"). Addresses R4.5 RFA #1832.</xref>
				</li>
				<li>
					<xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2014-08-21 - docinfo:assoc-links to doc:related-content id-CCCC-10284: Added instructions and an example for converting
						<sourcexml>lnlink[@service="ATTACHMENT"]</sourcexml> to
						<targetxml>ref:lnlink</targetxml>. Applicable on CA05-CA08.</xref>
				</li>
				<li>
					<xref href="../../../Rosetta/common_newest/Rosetta_CAN_docinfo.custom-metafields-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta.meta.metaitem.dita">2014-08-11 - docinfo:custom-metafields to doc:legacy-metadata[@metadatasource="lbu-meta"]/meta/metaitem id-CCCC-10251: Added identifier <sourcexml>docinfo:custom-metafields/docinfo:custom-metafield[@searchtype="act-id"]</sourcexml> to generate <targetxml>*:head/ref:groupid/ref:resourceid/@ref:resourcekey=urn:leg-id-1:X</targetxml>.</xref>
				</li>
				
			</ul>
		</section>
		
		<section>
			<title>3.11 ALPHA</title>
			<p>2014-07-17 - BRT</p>
			<ul>
				<li>
					<xref href="../../../Rosetta/DITA-CAN/CA03-Citator/Rosetta_cttr.annot.subseqcases-to-LxAdv_cttr.citingcase.dita">2014-07-16 - [@annotationtype="subseqcases"]/cttr:annot to cttr:citingcase id-CA03-13229: Added reference to new module for
						<targetxml>cttr:refssummary</targetxml>.</xref>
				</li>
				<li>
					<xref href="../../../Rosetta/DITA-CAN/CA03-Citator/cttr.refsummary.dita">2014-07-16 - cttr:refssummary: Created.</xref>
				</li>
			</ul>
			
		</section>
		<section>
			<title>3.11 ALPHA</title>
			<p>2014-07-10 - BRT</p>
			<ul>
				<li>
					<xref href="../../../Rosetta/DITA-CAN/CA03-Citator/Citator_Introduction.dita">2014-07-10 - Introduction id-CA03-13207: Updated schema version to 3.11 ALPHA.</xref>
				</li>
				<li>
					<xref href="../../../Rosetta/common_newest/Rosetta_inlineobject-LxAdv-ref.inlineobject.dita">2014-07-08 - inlineobject to ref:inlineobject id-CCCC-10369: Not a rule change. Clarification added to note regarding suppression of <sourcexml>inlineobject</sourcexml> when <sourcexml>inlineobject/@filename</sourcexml> contains certain values.</xref>
				</li>
				<li>
					<xref href="../../../Rosetta/common_newest/Rosetta_Citator_inlineobject-Chof-remotelink-LxAdv-ref.crossreference_ref.content_ref.inlineobject.dita">2014-07-07 - inlineobject child of remotelink to ref:inlineobject id-CCCC-10500: Created this topic to handle Citator-specific conversion of <sourcexml>remotelink/inlineobject</sourcexml>.</xref>
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
					<xref href="../../../Rosetta/common_newest/Rosetta_CAN_docinfo.custom-metafields-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta.meta.metaitem.dita">2014-06-23 - docinfo:custom-metafields to doc:legacy-metadata[@metadatasource="lbu-meta"]/meta/metaitem id-CCCC-10251: Added Rule for mapping
						<sourcexml>docinfo:custom-metafields/docinfo:custom-metafield/@act-id</sourcexml>
						in HEAD Section in target, this is applicable for CA05-CA08 only. Db
						issue #1464</xref>
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
		
			</ul>
		</section>
		
		<section>
			<title>3.9 ALPHA</title>
			<p>2014-05-30 - BRT</p>
			<ul>
				<li>
					<xref href="../../../Rosetta/DITA-CAN/CA03-Citator/Rosetta_cttr.annotsummary-to-LxAdv_primlawhist.histitem.dita">2014-05-30 - cttr:annotsummary to primlawhist:histitem: Created this topic to describe the conversion of
						<sourcexml>cttr:annotsummary</sourcexml>. Addresses P4 issue #189</xref>
				</li>
				<li>
					<xref href="../../../Rosetta/DITA-CAN/CA03-Citator/Rosetta_leg.info-to-LxAdv_cttr.citedseclaw.dita">2014-05-29 - leg:info to cttr:head/cttr:citedstatlaw id-CA03-13234: Added instructions and an example for converting a
						document that has four citations in <sourcexml>leg:officialnum</sourcexml> to
						<targetxml>lnci:cite</targetxml>. Addresses P4 issue #211.</xref>
				</li>
				<li>
					<xref href="../../../Rosetta/common_newest/Rosetta_docinfo.doc-id-LxAdv-dcidentifier_lnmetaidentifier-scheme.dita">2014-05-21 - docinfo:doc-id to dc:identifier[@lnmeta:identifier-scheme] id-CCCC-10293: For CA05 Acts and Bills- Mapping in dc:identifier for act-no and chunk-no.. Db issue #1464 </xref>
				</li>
				<li>
					<xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2014-04-28 - docinfo:assoc-links to doc:related-content id-CCCC-10284: Clarified instructions regarding <sourcexml>link</sourcexml> elements and added an example (#4) illustrating the special <sourcexml>text/link</sourcexml> conversion. No mapping rules where changed or added.</xref>
				</li>
				<li>
					<xref href="../../../Rosetta/DITA-CAN/CA03-Citator/Rosetta_leg.info-to-LxAdv_cttr.citedseclaw.dita">2014-04-25 - leg:info to cttr:head/cttr:citedstatlaw id-CA03-13234: Changed target element from <targetxml>cttr:citedseclaw</targetxml> to <targetxml>cttr:citedstatlaw</targetxml>. cttr:citedseclaw has been deprecated in favor of the new element.</xref>
				</li>
				<li>
					<xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2014-04-21 - docinfo:assoc-links to doc:related-content id-CCCC-10284: Added an instruction to handle
						<sourcexml>link</sourcexml> elements. These can potentially occur in any future UK data
						and will be present in stream UK21fl when those documents become available later in
						2014.</xref>
				</li>
			</ul>
			
		</section>
		<section>
			<title>3.9 ALPHA</title>
			<p>2014-04-17 - BRT</p>
			<ul>
				<li>
					<xref href="../../../Rosetta/DITA-CAN/CA03-Citator/Citator_Introduction.dita">2014-04-17 - Introduction: Updated schema version to 3.9 ALPHA.</xref>
				</li>
				<li>
					<xref href="../../../Rosetta/DITA-CAN/CA03-Citator/Rosetta_leg.info-to-LxAdv_cttr.citedseclaw.dita">2014-04-17 - leg:info to cttr:head/cttr:citedlaw: Changed target element
						from <targetxml>cttr:citedseclaw</targetxml> to
							<targetxml>cttr:citedstatlaw</targetxml>. cttr:citedseclaw has been
						deprecated in favor of the new element.</xref>
				</li>
				<li>
					<xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2014-04-03 - docinfo:assoc-links to doc:related-content: Illustrative changes. Examples modified. Mapping for
						<sourcexml>ci:cite</sourcexml> added to Example 3. Former Examples 4 and 5 removed to avoid
						confusion with special AU-NZ use case described in a separate module. R4.5 Content issue #1125,
						for AU-NZ, has prompted the changes for this general module.</xref>
				</li>
				<li>
					<xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2014-03-25 - docinfo:assoc-links to doc:related-content: Added rule and example for
						<sourcexml>docinfo:assoc-links/docinfo:assoc-links-grp/ci:cite</sourcexml>. R4.5 Content issue
						#1125</xref>
				</li>
			</ul>
			
			</section>
		<section>
			<title>3.7 ALPHA</title>
			<p>2014-02-26 - BRT</p>
			<ul>
				<li>
					<xref href="../../DITA-CAN/CA03-Citator/Rosetta_leg.info-to-LxAdv_cttr.citedseclaw.dita">2014-02-25 - leg:info to cttr:head/cttr:citedseclaw: Added new rule for converting
						<sourcexml>leg:num</sourcexml> when there is only one citation in the source. Also modified examples to fit the rules.</xref>
				</li>
				<li>
					<xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2014-02-25 - remotelink to ref:crossreference: Updated instruction and created new example (#16) for handling <sourcexml>remotelink[@service="QUERY"]</sourcexml>. New instruction preserves pcdata but suppresses <sourcexml>remotelink</sourcexml> markup.</xref>
				</li>
				<li>
					<xref href="../../DITA-CAN/CA03-Citator/Rosetta_CITATORDOC-to-LxAdv_cttr.citator.dita">2014-02-12 - CITATORDOC to cttr:citator: Added note for converting
						<sourcexml>CITATORDOC/@signal="statute-cited"</sourcexml>
					</xref>
				</li>
				<li>
					<xref href="../../DITA-CAN/CA03-Citator/Rosetta_case.headnote-to-LxAdv_cttr.head.dita">2014-02-12 - cttr:body/case:headnote to cttr:head/cttr:citeddecision: Added note to modify the citation IDs to avoid duplicate IDs.</xref>
				</li>
				<li>
					<xref href="../../DITA-CAN/CA03-Citator/Rosetta_leg.info-to-LxAdv_cttr.citedseclaw.dita">2014-02-12 - leg:info to cttr:head/cttr:citedseclaw: Added note and example (#6) for handling
						<sourcexml>leg:officialname</sourcexml> when <sourcexml>ci:stat</sourcexml> is not present in the source.</xref>
				</li>
				<li>
					<xref href="../../DITA-CAN/CA03-Citator/Rosetta_case.info-to-LxAdv_cttr.caseinfo.dita">2014-02-12 - case:info: Added note to modify the citation IDs to avoid duplicate IDs. Updated example.</xref>
				</li>
				<li>
					<xref href="../../DITA-CAN/CA03-Citator/Rosetta_case.courtinfo-to-LxAdv_jurisinfo.courtinfo.dita">2014-02-12 - case:courtinfo to jurisinfo:courtinfo: Added rule to suppress <sourcexml>case:courtinfo/@juris-rank</sourcexml> and <sourcexml>case:courtinfo/@court-rank</sourcexml>.</xref>
				</li>
				<li>
					<xref href="../../common_newest/Rosetta_docinfo.doc-heading-LxAdv-dc.title.dita">2014-02-11 - docinfo:doc-heading to dc:title: Updated note when <sourcexml>emph</sourcexml> is
						child of <sourcexml>docinfo:doc-heading</sourcexml> then suppress <sourcexml>emph</sourcexml> element and retain its content in <targetxml>dc:title</targetxml>, These instructions apply immediately to
						CA12.</xref>
				</li>
				<li>
					<xref href="../../common_newest/Rosetta_docinfo.topiccodes-to-LxAdv-classify.classification_classscheme_docinfo-topiccodes.dita">2014-02-03 - docinfo:topiccodes to classify:classification[@classscheme="docinfo:topiccodes"]: Added a special rule for UK07 contents, When element <sourcexml>docinfo:topiccode</sourcexml> contains attribute <sourcexml>@scheme="source-by-date"</sourcexml>, then conversion will suppress it including its contents as well. Phase 5 UK discussion-defect tracking: issue #156. </xref>
				</li>
				<li>
					<xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2014-02-03 - remotelink to ref:crossreference: Instruction updated if <sourcexml>remotelink</sourcexml> occurs as multiple, immediate siblings and without intermediary text within <sourcexml>title</sourcexml>. Also added a example for the same scenario. Phase 5 UK discussion-defect tracking issue #161</xref>
				</li>
			</ul>
			
		</section>
		
		<section>
			<title>3.6 ALPHA</title>
			<p>2014-01-23 - SP</p>
			<ul>
            <li>
               <xref href="../../common_newest/Rosetta_Elements-LxAdv-Empty_Elements.dita">2014-01-16 - Suppress each empty element unless otherwise stated: Added list of elements to suppress if empty.</xref>
            </li>
            <li>
               <xref href="../../DITA-CAN/CA03-Citator/Rosetta_case.headnote-to-LxAdv_cttr.head.dita">2014-01-16 - cttr:body/case:headnote to cttr:head/cttr:citeddecision: Added <targetxml>ref:citations/ref:cite4thisresource</targetxml> as additional target. Updated example.</xref>
            </li>
            <li>
               <xref href="../../DITA-CAN/CA03-Citator/Rosetta_case.info-to-LxAdv_cttr.caseinfo.dita">2014-01-16 - case:info: Added <targetxml>ref:citations/ref:cite4thisresource</targetxml> as additional target. Updated example.</xref>
            </li>
            <li>
               <xref href="../../common_newest/Rosetta_date-Chof-docinfo.load-date-LxAdv-dc.date_lnmeta.datetype_load-date-scheme.dita">2014-01-07 - docinfo:load-date/date to dc:date[@lnmeta:datetype="load-date"]:  Added a note along with example which contains "00" value in <sourcexml>@day="00"</sourcexml> and <sourcexml>@month="00"</sourcexml> attributes encountered in CANADA contents.</xref>
            </li>
            <li>
               <xref href="../../common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2013-12-30 - ci.cite to lnci.cite: Minor illustrative change. Added "(AU
					Journals/Newsitem)" to headings for last example to clarify that retention of
						<sourcexml>@type="cite4thisdoc"</sourcexml> is an exception for that
					content, as already described in narrative rules.</xref>
            </li>
            <li>
               <xref href="../../common_newest/Rosetta_endnote-LxAdv-endnote.dita">2013-12-18 - endnote to endnote: Instruction added to convert <sourcexml>remotelink/@refpt</sourcexml> to <targetxml>footnote-ref/@anchoridref</targetxml>.  WebTeam #5158742 - AU04. Applies generally to all LBUs and streams.</xref>
            </li>
            <li>
               <xref href="../../common_newest/Rosetta_docinfo.alt-renditions-LxAdv-doc.alt-renditions.dita">2013-12-17 - docinfo:alt-renditions/docinfo:alt-rendition to doc:alt-renditions/doc:alt-rendition: Added instruction and example for <sourcexml>docinfo:alt-rendition/lnlink</sourcexml>. (Webteam #247307)</xref>
            </li>
            <li>
               <xref href="../../common_newest/Rosetta_CAN_docinfo.custom-metafields-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta.meta.metaitem.dita">2013-12-04 - docinfo:custom-metafields to doc:legacy-metadata[@metadatasource="lbu-meta"]/meta/metaitem: Updated target example for retaining "date" and "court" in target example.</xref>
            </li>
            <li>
               <xref href="../../common_newest/LxAdv-cttr.usagegroup_AddingSortWeightInformation.dita">2013-10-30 - Adding Sort Weight Information to cttr:usagegroup: Added second XPath for <sourcexml>case:descisiondate</sourcexml>. Paths are different for UK citator documents than originally listed.</xref>
            </li>
            <li>
               <xref href="../../common_newest/Rosetta_docinfo.alt-renditions-LxAdv-doc.alt-renditions.dita">2013-10-29 - docinfo:alt-renditions/docinfo:alt-rendition to doc:alt-renditions/doc:alt-rendition: Added instruction and example for UK06 Laws/Acts/Bills/Measures and UK07 Regulation place the text of <sourcexml>leg:officialname</sourcexml> in <targetxml>doc:alt-renditions/doc:alt-rendition/ref:lnlink/ref:marker</targetxml> (Webteam #243521)</xref>
            </li>
            <li>
               <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-10-23 - remotelink to ref:crossreference: Added Example when <sourcexml>remotelink</sourcexml> having child <sourcexml>emph</sourcexml>. Webteam # 239816</xref>
            </li>
            <li>
               <xref href="../../common_newest/Rosetta_docinfo.doc-heading-LxAdv-dc.title.dita">2013-10-18 - docinfo:doc-heading to dc:title: Updated Instruction when <sourcexml>docinfo:doc-heading</sourcexml> contains word RULE: " or STATUTE: .</xref>
            </li>
            <li>
               <xref href="../../common_newest/LxAdv-cttr.usagegroup_AddingSortWeightInformation.dita">2013-10-16 - Adding Sort Weight Information to cttr:usagegroup: Further updates per Shan's "CaseBase Case Citator - Table Sorting &amp; Filtering"
          document: WebTeams 233689, 233908, and 233912.</xref>
            </li>
            <li>
               <xref href="../../common_newest/Rosetta_Elements-LxAdv-Empty_Elements.dita">2013-10-14 - Suppress each empty element unless otherwise stated: Changed antecedent to singular to match
					instructions.</xref>
            </li>
            <li>
               <xref href="../../common_newest/Rosetta_endnote-LxAdv-endnote.dita">2013-10-07 - endnote to endnote: Instruction and example for added for the Xpath <sourcexml>leg:bodytext/glp:note/l/li</sourcexml> related to <targetxml>endnote</targetxml> handling. WebTeam # is 238790.</xref>
            </li>
            <li>
               <xref href="../../DITA-CAN/CA03-Citator/Citator_Introduction.dita">2013-10-03 - Introduction: Added updated schema version to 3.5 ALPHA.</xref>
            </li>
            <li>
               <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-10-03 - remotelink to ref:crossreference: Added use case where remotelink contains @href which is a URL but does not contain @hrefclass='http'.</xref>
            </li>
			</ul>
		</section>
		<section>
			<title>3.5 ALPHA</title>
			<p>2013-10-03 - BRT</p>
			<ul>
				<li><xref href="../../common_newest/Rosetta_Elements-LxAdv-Empty_Elements.dita#common_target_empty_elements" format="dita"/> 2013-10-03 - Added topic to CI document.  This topic was
					originally created for all content streams but was accidentally omitted from
					this one.</li>
					<li>
						<xref href="../../common_newest/Rosetta_link-LxAdv-ref.lnlink.dita">2013-09-24 - link to ref:lnlink/@service="ATTACHMENT": Not a rule change. Modified examples to illustrate when <sourcexml>@status</sourcexml> suppressed and when retained.</xref>
					</li>			
			</ul>
		</section>
		<section>
			<title>3.3 ALPHA</title>
			<p>2013-09-05 - RAJ</p>
			<ul>
				<li>
					<xref href="../../DITA-CAN/CA03-Citator/Citator_Introduction.dita">2013-09-05 - Introduction: Added updated schema version to 3.3 ALPHA.</xref>
				</li>
				<li>
					<xref href="../../DITA-CAN/CA03-Citator/Rosetta_cttr.annot.appealproc-to-LxAdv_cttr.appealproceeding.dita">2013-09-05 - [@annotationtype="appealproc"]/cttr:annot to cttr:appealproceeding: Added reference to
						instructions for attributes <targetxml>@negativesortweight</targetxml> and
						<targetxml>@positivesortweight</targetxml> of
						<targetxml>cttr:usagegroup</targetxml>. WebStar: WebTeam #233689</xref>
				</li>
				<li>
					<xref href="../../DITA-CAN/CA03-Citator/Rosetta_cttr.annot.subseqcases-to-LxAdv_cttr.citingcase.dita">2013-09-05 - [@annotationtype="subseqcases"]/cttr:annot to cttr:citingcase: Added reference to
						instructions for attributes <targetxml>@negativesortweight</targetxml> and
						<targetxml>@positivesortweight</targetxml> of
						<targetxml>cttr:usagegroup</targetxml>. WebStar: WebTeam #233689</xref>
				</li>
				<li>
					<xref href="../../common_newest/LxAdv-cttr.usagegroup_AddingSortWeightInformation.dita">2013-09-03 - Adding Sort Weight Information to cttr:usagegroup: Created per WebStar: WebTeam #233689</xref>
				</li>
				<li>
					<xref href="../../common_newest/Rosetta_docinfo.doc-heading-LxAdv-dc.title.dita">2013-09-03 - docinfo:doc-heading to dc:title: Updated Instruction when <sourcexml>docinfo:doc-heading</sourcexml> contains word "TITLE: " or NAME:  or SITE:  or SUBJECT:.</xref>
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
					<xref href="../../common_newest/Rosetta_CAN_docinfo.custom-metafields-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta.meta.metaitem.dita">2013-08-01 - docinfo:custom-metafields to doc:legacy-metadata[@metadatasource="lbu-meta"]/meta/metaitem: Updated target example for retaining "JURIS-SORT", "COURT-SORT" and "TERM-SORT" in target example.</xref>
				</li>
			</ul>
		</section>
		<section>
			<title>3.2 ALPHA</title>
			<p>2013-07-31 - RAJ</p>
			<ul>
				<li>
					<xref href="../../common_newest/Rosetta_CAN_docinfo.custom-metafields-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta.meta.metaitem.dita">2013-07-31 - Added proper module for Canada Content (Handling
							<sourcexml>docinfo:custom-metafields</sourcexml>).</xref>
				</li>
				<li>
					<xref href="../../common_newest/Rosetta_docinfo.doc-heading-LxAdv-dc.title.dita">2013-07-30 - docinfo:doc-heading to dc:title: Added Instruction when
							<sourcexml>docinfo:doc-heading</sourcexml> contains word "TITLE: " or
						NAME: .</xref>
				</li>
			</ul>
		</section>
		<section>
			<title>3.2 ALPHA</title>
			<p>2013-07-19 - RAJ</p>
			<ul>
				<li>
					<xref href="../../DITA-CAN/CA03-Citator/Citator_Introduction.dita">2013-07-19 -
						Introduction: Added updated schema version to 3.2 ALPHA.</xref>
				</li>
				<li>
					<xref href="../../common_newest/Rosetta_docinfo-LxAdv-doc.metadata_doc.docinfo.dita">2013-07-18 - docinfo to doc:metadata/doc:docinfo: Added
							<sourcexml>@excludefromalerts</sourcexml> as one of the
							<sourcexml>docinfo</sourcexml> attributes to carry through</xref>
				</li>
				<li>
					<xref href="../../common_newest/Rosetta_identifier-LxAdv-ID_data_type-HandlingPatternRestrictions.dita">2013-07-17 - Identifiers to ID Data Type - Handling Pattern Restrictions:
						Added instructions for handling leading/trailing space(s) and XML
						entities.</xref>
				</li>
				<li>
					<xref href="../../common_newest/Rosetta_docinfo.doc-lang-and-doc-country-LxAdv-ROOT_xml.lang.dita">2013-07-16 - docinfo:doc-lang and docinfo:doc-country to @xml:lang and
						@xml:ID: Instruction narrative edited for language; no changes to mappings,
						no impact to stylesheets.</xref>
				</li>
				<li>
					<xref href="../../common_newest/Rosetta_identifier-LxAdv-ID_data_type-HandlingPatternRestrictions.dita">2013-07-10 - Identifiers to ID Data Type - Handling Pattern Restrictions:
						Added instruction to replace space with underscore.</xref>
				</li>
				<li>
					<xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-06-03 - remotelink to ref:crossreference: Updated the Target XML 2 by
						removing the <targetxml>@crossreferencetype</targetxml> for Canada
						example.</xref>
				</li>
				<li>
					<xref href="../../common_newest/Rosetta_docinfo.lbu-meta-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta-scheme.dita">2013-05-31 - docinfo:lbu-meta to
						doc:legacy-metadata[@metadatasource="lbu-meta"]: Added "document-type" to
						the list of values in docinfo:metaitem/@name that should be retained.</xref>
				</li>
				<li>
					<xref href="../../common_newest/Rosetta_inlineobject-LxAdv-ref.inlineobject.dita">2013-05-24 - inlineobject to ref:inlineobject: Updated instruction for
						handling of inlineobject when smi is present and some of the verbiage is
						changed.</xref>
				</li>
				<li>
					<xref href="../../common_newest/Rosetta_inlineobject-LxAdv-figure_ref.inlineobject.dita">2013-05-24 - inlineobject to figure/ref:inlineobject: Updated target
						example, "when smi is present".</xref>
				</li>
				<li>
					<xref href="../../common_newest/Rosetta_docinfo.versioninfo-LxAdv-doc.versioninfo-scheme.dita">2013-05-24 - docinfo:versioninfo to doc:versioninfo: Instructions added for
						handling empty use cases of <sourcexml>docinfo:versioninfo</sourcexml> for
						Canada content stream.</xref>
				</li>
				<li>
					<xref href="../../common_newest/Rosetta_link-LxAdv-ref.lnlink.dita">2013-05-24 -
						link to ref:lnlink/@service="ATTACHMENT": Updated instruction for handling
						of link when smi is present and some of the verbiage is changed.</xref>
				</li>
				<li>
					<xref href="../../common_newest/Rosetta_docinfo-LxAdv-doc.metadata_doc.docinfo.dita">2013-05-16 - docinfo to doc:metadata/doc:docinfo: Fixed typo updating
						urn:contentitem to urn:contentItem</xref>
				</li>
			</ul>
		</section>
		<section>
			<title>3.0 ALPHA</title>
			<p>2013-05-13 - RAJ <ul>
					<li>
						<xref href="../../DITA-CAN/CA03-Citator/Citator_Introduction.dita">2013-05-13 - Introduction: Added updated schema version to 3.0
							ALPHA.</xref>
					</li>
					<li>
						<xref href="../../common_newest/Rosetta_inlineobject-LxAdv-ref.inlineobject.dita">2013-05-08 - inlineobject to ref:inlineobject: Extended the list of
							allowable values for image handling.</xref>
					</li>
					<li>
						<xref href="../../common_newest/Rosetta_inlineobject-LxAdv-figure_ref.inlineobject.dita">2013-05-08 - inlineobject to figure/ref:inlineobject: Extended the list
							of allowable values for image handling.</xref>
					</li>
					<li>
						<xref href="../../common_newest/Rosetta_inlineobject-Chof-remotelink-LxAdv-ref.crossreference_ref.content_ref.inlineobject.dita">2013-05-08 - inlineobject Child of remotelink to ref:inlineobject:
							Extended the list of allowable values for image handling.</xref>
					</li>
					<li>
						<xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-05-08 - remotelink to ref:crossreference: Extended the list of
							allowable values for image handling.</xref>
					</li>
					<li>
						<xref href="../../DITA-CAN/CA03-Citator/Rosetta_cttr.annot.subseqcases-to-LxAdv_cttr.citingcase.dita">2013-05-02 - [@annotationtype="subseqcases"]/cttr:annot to
							cttr:citingcase: Updated target example to reflect changes per latest
							Apollo markup.</xref>
					</li>
					<li>
						<xref href="../../common_newest/Rosetta_inlineobject-LxAdv-ref.inlineobject.dita">2013-05-02 - inlineobject to ref:inlineobject: Some of the verbiage is
							changed and updated target example to if the SMI is present then a
								<targetxml>ref:inliineobject/@status</targetxml> attribute is set to
							“valid”.</xref>
					</li>
					<li>
						<xref href="../../common_newest/Rosetta_inlineobject-LxAdv-figure_ref.inlineobject.dita">2013-05-02 - inlineobject to figure/ref:inlineobject: Updated target
							example to if the SMI is present then a
								<targetxml>ref:inliineobject/@status</targetxml> attribute is set to
							“valid”.</xref>
					</li>
					<li>
						<xref href="../../common_newest/Rosetta_link-LxAdv-ref.lnlink.dita">2013-05-02 - link to ref:lnlink/@service="ATTACHMENT": Some of the
							verbiage is changed and updated target example to if the SMI is present
							then a <targetxml>ref:lnlink/@status</targetxml> attribute is set to
							“valid”.</xref>
					</li>
					<li>
						<xref href="../../common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2013-05-01 - ci.cite to lnci.cite: Removed special rule for
								<sourcexml>ci:cite/ci:content/remotelink</sourcexml> which required
							suppression of <sourcexml>ci:cite/ci:content</sourcexml> tags. The
							elements are now retained and convert according to common rules.</xref>
					</li>
					<li>
						<xref href="../../common_newest/Rosetta_inlineobject-LxAdv-ref.inlineobject.dita">2013-05-01 - inlineobject to ref:inlineobject: Removed instructions for
							section "Pre-Release 4.0" because according to latest Apollo markup,
							section "Release 4.0 and after" and section "Pre-Release 4.0" now have
							similar conversion markup.</xref>
					</li>
					<li>
						<xref href="../../common_newest/Rosetta_inlineobject-LxAdv-figure_ref.inlineobject.dita">2013-05-01 - inlineobject to figure/ref:inlineobject: Removed
							instructions for section "Pre-Release 4.0" because according to latest
							Apollo markup, section "Release 4.0 and after" and section "Pre-Release
							4.0" now have similar conversion markup.</xref>
					</li>
					<li>
						<xref href="../../common_newest/Rosetta_inlineobject-Chof-remotelink-LxAdv-ref.crossreference_ref.content_ref.inlineobject.dita">2013-05-01 - inlineobject Child of remotelink to ref:inlineobject:
							Removed instructions for section "Pre-Release 4.0" because according to
							latest Apollo markup, section "Release 4.0 and after" and section
							"Pre-Release 4.0" now have similar conversion markup.</xref>
					</li>
					<li>
						<xref href="../../common_newest/Rosetta_docinfo.alt-renditions-LxAdv-doc.alt-renditions.dita">2013-05-01 - docinfo:alt-renditions/docinfo:alt-rendition to
							doc:alt-renditions/doc:alt-rendition: Updated instructions and target
							example per latest Apollo markup.</xref>
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
						<xref href="../../common_newest/Rosetta_inlineobject-LxAdv-ref.inlineobject.dita">2013-04-30 - inlineobject to ref:inlineobject: Updated target sample
							according to latest Apollo markup.</xref>
					</li>
					<li>
						<xref href="../../common_newest/Rosetta_inlineobject-LxAdv-figure_ref.inlineobject.dita">2013-04-30 - inlineobject to figure/ref:inlineobject: Updated target
							sample according to latest Apollo markup.</xref>
					</li>
					<li>
						<xref href="../../common_newest/Rosetta_inlineobject-Chof-remotelink-LxAdv-ref.crossreference_ref.content_ref.inlineobject.dita">2013-04-30 - inlineobject Child of remotelink to ref:inlineobject:
							Updated target sample according to latest Apollo markup.</xref>
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
						<xref href="../../common_newest/Rosetta_docinfo.doc-id-LxAdv-dcidentifier_lnmetaidentifier-scheme.dita">2013-03-20 - docinfo:doc-id to
							dc:identifier[@lnmeta:identifier-scheme]: Updated the information on
							handling the situation when
								<sourcexml>docinfo:dpsi[@id-string]</sourcexml> is absent with
							instructions to get the dpsi from
								<sourcexml>docinfo/docinfo:custom-metafields/docinfo:custom-metafield[@name="dpsi"]</sourcexml>.</xref>
					</li>
					<li>
						<xref href="../../common_newest/Rosetta_docinfo.custom-metafields-LxAdv-SUPPRESS.dita">2013-03-20 - docinfo:custom-metafields is SUPPRESSED: Updated the
							instruction of handling
								<sourcexml>docinfo:custom-metafield[@name="dpsi"]</sourcexml> markup
							in CA content stream.</xref>
					</li>
					<li>
						<xref href="../../common_newest/Rosetta_inlineobject-LxAdv-ref.inlineobject.dita">2013-03-13 - inlineobject to ref:inlineobject: Removed the value
							leg1.png and added the statement "These files should be suppressed for
							both *.gif and *.png file types" was added.</xref>
					</li>
					<li>
						<xref href="../../common_newest/Rosetta_inlineobject-LxAdv-ref.inlineobject.dita">2013-03-12 - inlineobject to ref:inlineobject: Added an additional
							value of leg1.pngto the <sourcexml>inlineobject</sourcexml>suppression
							list</xref>
					</li>
					<li>
						<xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-03-11 - remotelink to ref:crossreference: Instruction and example
							added on how to handle <targetxml>ref:marker </targetxml> if it is in
								<targetxml>ref:lnlink@service=”URL”</targetxml>and the
								<targetxml>ref:key-value@value</targetxml> starts-with (.,
							'http://www.lexisnexis.com/au/legal/api')</xref>
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
						<xref href="../../common_newest/Rosetta_inlineobject-LxAdv-ref.inlineobject.dita">2013-02-18 - inlineobject to ref:inlineobject: Created two sections,
							one for "Release 4.0 and after" and another for "Pre-Release
							4.0".</xref>
					</li>
					<li>
						<xref href="../../common_newest/Rosetta_inlineobject-LxAdv-figure_ref.inlineobject.dita">2013-02-18 - inlineobject to figure/ref:inlineobject: Created two
							sections, one for "Release 4.0 and after" and another for "Pre-Release
							4.0".</xref>
					</li>
					<li>
						<xref href="../../common_newest/Rosetta_inlineobject-Chof-remotelink-LxAdv-ref.crossreference_ref.content_ref.inlineobject.dita">2013-02-18 - inlineobject Child of remotelink to ref:inlineobject:
							Created two sections, one for "Release 4.0 and after" and another for
							"Pre-Release 4.0".</xref>
					</li>
					<li>
						<xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-02-18 - remotelink to ref:crossreference: Created two sections,
							one for "Release 4.0 and after" and another for "Pre-Release
							4.0".</xref>
					</li>
					<li>
						<xref href="../../DITA-CAN/CA03-Citator/Rosetta_leg.info-to-LxAdv_cttr.citedseclaw.dita">2013-01-29 - leg:info to cttr:head/cttr:citedseclaw: Added note for
							handling <sourcexml>leg:juris</sourcexml> value CD. Changed target
							markup to reflect that country code "CD" will be converted to "CA" in
							all instances.</xref>
					</li>
					<li>
						<xref href="../../DITA-CAN/CA03-Citator/Rosetta_cttr.annot.subseqcases-to-LxAdv_cttr.citingcase.dita">2013-01-29 - [@annotationtype="subseqcases"]/cttr:annot to
							cttr:citingcase: Changed target markup to reflect that country code "CD"
							will be converted to "CA" in all instances. Changed target, example for
								<sourcexml>case:casename</sourcexml> to
								<targetxml>caseinfo:shortcasename</targetxml>.</xref>
					</li>
					<li>2013-01-29 - cttr:annot/leg:info to lnci:stat: Changed target markup to
							reflect that country code "CD" will be converted to "CA" in all
							instances. Changed target, example for
								<sourcexml>case:casename</sourcexml> to
								<targetxml>caseinfo:shortcasename</targetxml>.
					</li>
					<li>
						<xref href="../../DITA-CAN/CA03-Citator/Rosetta_case.info-to-LxAdv_cttr.caseinfo.dita">2013-01-29 - case:info: Changed target markup to reflect that country
							code "CD" will be converted to "CA" in all instances. Changed target,
							example for <sourcexml>case:casename</sourcexml> to
								<targetxml>caseinfo:shortcasename</targetxml>.</xref>
					</li>
					<li>
						<xref href="../../DITA-CAN/CA03-Citator/Rosetta_case.altname-to-LxAdv_caseinfo.alternatecasename.dita">2013-01-29 - case:altname to caseinfo:alternatecasename: Changed
							target, example for <sourcexml>case:casename</sourcexml> to
								<targetxml>caseinfo:shortcasename</targetxml>.</xref>
					</li>
					<li>
						<xref href="../../DITA-CAN/CA03-Citator/Rosetta_case.courtinfo-to-LxAdv_jurisinfo.courtinfo.dita">2013-01-29 - case:courtinfo to jurisinfo:courtinfo: Changed target
							markup to reflect that country code "CD" will be converted to "CA" in
							all instances.</xref>
					</li>
					<li>2013-01-29 - case:juris: Changed country code from CD to CA. Added note
							for handling <sourcexml>case:juris</sourcexml> value CD.
					</li>
					<li>
						<xref href="../../DITA-CAN/CA03-Citator/Rosetta_cttr.annot.appealproc-to-LxAdv_cttr.appealproceeding.dita">2013-01-24 - [@annotationtype="appealproc"]/cttr:annot to
							cttr:appealproceeding: Added instruction for handling
								<sourcexml>cttr:use/@signal="citation"</sourcexml>
						</xref>
					</li>
					<li>
						<xref href="../../DITA-CAN/CA03-Citator/Rosetta_cttr.annot.subseqcases-to-LxAdv_cttr.citingcase.dita">2013-01-24 - [@annotationtype="subseqcases"]/cttr:annot to
							cttr:citingcase: Added instruction for handling
								<sourcexml>cttr:use/@signal="citation"</sourcexml>
						</xref>
					</li>
					<li>
						<xref href="../../DITA-CAN/CA03-Citator/Rosetta_leg.info-to-LxAdv_cttr.citedseclaw.dita">2013-01-23 - leg:info to cttr:head/cttr:citedseclaw: Added, "The
							separating "/" will be dropped from output." where appropriate. Added
							"Normalize whitespace." and to the instruction for
								<targetxml>lnci:popname/@value</targetxml>.</xref>
					</li>
					<li>
						<xref href="../../DITA-CAN/CA03-Citator/Rosetta_cttr.annot.appealproc-to-LxAdv_cttr.appealproceeding.dita">2013-01-23 - [@annotationtype="appealproc"]/cttr:annot to
							cttr:appealproceeding: Added, "The separating "/" will be dropped from
							output." where appropriate. Removed note regarding schema CR required to
							support <sourcexml>cttr:use/@signal="citation"</sourcexml>
						</xref>
					</li>
					<li>
						<xref href="../../DITA-CAN/CA03-Citator/Rosetta_cttr.annot.subseqcases-to-LxAdv_cttr.citingcase.dita">2013-01-23 - [@annotationtype="subseqcases"]/cttr:annot to
							cttr:citingcase: Added, "The separating "/" will be dropped from
							output." where appropriate. Removed note regarding schema CR required to
							support <sourcexml>cttr:use/@signal="citation"</sourcexml>
						</xref>
					</li>
					<li>2013-01-23 - cttr:annot/leg:info to lnci:stat: Removed the value
							"citation" from source and markup examples in attributes
								<sourcexml>cttr:use/@signal</sourcexml> and
								<targetxml>cttr:usage/@usagetype</targetxml>.
					</li>
					<li>
						<xref href="../../DITA-CAN/CA03-Citator/Rosetta_case.casename-to-LxAdv_caseinfo.shortcasename.dita">2013-01-23 - case:casename to caseinfo:shortcasename: Changed target
							mapping to <targetxml>caseinfo:shortcasename</targetxml>.</xref>
					</li>
					<li>
						<xref href="../../DITA-CAN/CA03-Citator/Rosetta_case.altname-to-LxAdv_caseinfo.alternatecasename.dita">2013-01-23 - case:altname to caseinfo:alternatecasename: Changed target
							mapping to <targetxml>caseinfo:alternatecasename</targetxml>.</xref>
					</li>
				<li>2013-01-23 - case:juris: Added notes for handling
								<sourcexml>case:juris</sourcexml> values PQ and NF.
					</li>
					<li>
						<xref href="../../common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2013-01-22 - ci.cite to lnci.cite: Instruction modified for the
							scenario <sourcexml>ci:cite/ci:content/remotelink</sourcexml> to
							indicate that the <sourcexml>ci:cite</sourcexml> and
								<sourcexml>ci:content</sourcexml> start-tags and end-tags (but not
							their content) are dropped.</xref>
					</li>
					<li>
						<xref href="../../DITA-CAN/CA03-Citator/Rosetta_cttr.annot.appealproc-to-LxAdv_cttr.appealproceeding.dita">2013-01-17 - [@annotationtype="appealproc"]/cttr:annot to
							cttr:appealproceeding: Revised <sourcexml>cttr:use/@signal</sourcexml>
							instructions for clarity and when it does not exist. Added note
							regarding schema CR required to support
								<sourcexml>cttr:use/@signal="citation"</sourcexml>.</xref>
					</li>
					<li>
						<xref href="../../DITA-CAN/CA03-Citator/Rosetta_cttr.annot.subseqcases-to-LxAdv_cttr.citingcase.dita">2013-01-17 - [@annotationtype="subseqcases"]/cttr:annot to
							cttr:citingcase: Revised <sourcexml>cttr:use/@signal</sourcexml>
							instructions for clarity and when it does not exist. Added note
							regarding schema CR required to support
								<sourcexml>cttr:use/@signal="citation"</sourcexml>
						</xref>
					</li>
					<li>
						<xref href="../../DITA-CAN/CA03-Citator/Rosetta_cttr.annot.subseqcases-to-LxAdv_cttr.citingcase.dita">2013-01-17 - [@annotationtype="subseqcases"]/cttr:annot to
							cttr:citingcase: Updated target example to include
								<targetxml>@normdate</targetxml> in
								<targetxml>decision:decisiondate</targetxml>.</xref>
					</li>
					<li>2013-01-17 - cttr:annot/leg:info to lnci:stat: Corrected example 1
							target mark-up for <targetxml>cttr:usage/@usagetype</targetxml>.
					</li>
					<li>2013-01-17 - cttr:annot/leg:info to lnci:stat: Updated 1st target
							example to include <targetxml>@normdate</targetxml> in
								<targetxml>decision:decisiondate</targetxml>.
					</li>
					<li>
						<xref href="../../DITA-CAN/CA03-Citator/Rosetta_case.info-to-LxAdv_cttr.caseinfo.dita">2013-01-17 - case:info: Updated target example to include
								<targetxml>@normdate</targetxml> in
								<targetxml>decision:decisiondate</targetxml>.</xref>
					</li>
					<li>
						<xref href="../../DITA-CAN/CA03-Citator/Rosetta_case.courtinfo-to-LxAdv_jurisinfo.courtinfo.dita">2013-01-17 - case:courtinfo to jurisinfo:courtinfo: Updated target
							example to include <targetxml>@normdate</targetxml> in
								<targetxml>decision:decisiondate</targetxml>.</xref>
					</li>
					<li>
						<xref href="../../DITA-CAN/CA03-Citator/Rosetta_case.dates-to-LxAdv_decision.dates.dita">2013-01-17 - case:dates to decision:dates: Updated target example to
							include <targetxml>@normdate</targetxml> in
								<targetxml>decision:decisiondate</targetxml>.</xref>
					</li>
					<li>
						<xref href="../../DITA-CAN/CA03-Citator/Rosetta_case.decisiondate-to-LxAdv_decision.decisiondate.dita">2013-01-17 - case:decisiondate to decision:decisiondate: Instructions
							on how to populate
								<targetxml>decision:decisiondate/@normdate</targetxml> were added.
							The target example was updated to include
								<targetxml>@normdate</targetxml> in
								<targetxml>decision:decisiondate</targetxml>.</xref>
					</li>
					<li>
						<xref href="../../DITA-CAN/CA03-Citator/Rosetta_date-to-LxAdv_date-text.dita">2013-01-17 - date to date-text: Instructions on how to populate
								<targetxml>decision:decisiondate/@normdate</targetxml> were added.
							The target example was updated to include
								<targetxml>@normdate</targetxml> in
								<targetxml>decision:decisiondate</targetxml>.</xref>
					</li>
					<li>
						<xref href="../../common_newest/Rosetta_docinfo.custom-metafields-LxAdv-SUPPRESS.dita">2013-01-07 - docinfo:custom-metafields is SUPPRESSED: Updated the
							instruction of handling
								<sourcexml>docinfo:custom-metafield[@searchtype="CITED-COUNT"]</sourcexml>
							markup in CA content stream.</xref>
					</li>
					<li>
						<xref href="../../DITA-CAN/CA03-Citator/Citator_Introduction.dita">2013-01-05 - Introduction: Added updated schema version to 2.18
							ALPHA.</xref>
					</li>
					<li>
						<xref href="../../DITA-CAN/CA03-Citator/Rosetta_leg.info-to-LxAdv_cttr.citedseclaw.dita">2013-01-05 - leg:info to cttr:head/cttr:citedseclaw: Added
								<sourcexml>leg:history/leg:histinfo/leg:relatedleg</sourcexml>
							instructions. Revised English/French parsing output instructions for
							clarity. Added instructions for converting
								<sourcexml>leg:num</sourcexml> containing "&amp;quot;" as part of
							the value. </xref>
					</li>
					<li>
						<xref href="../../DITA-CAN/CA03-Citator/Rosetta_cttr.annot.subseqcases-to-LxAdv_cttr.citingcase.dita">2013-01-05 - [@annotationtype="subseqcases"]/cttr:annot to
							cttr:citingcase: Corrected example target mark-up for
								<targetxml>cttr:usage/@usagetype</targetxml>.</xref>
					</li>
					<li>
						<xref href="../../DITA-CAN/CA03-Citator/Rosetta_cttr.annot.subseqcases-to-LxAdv_cttr.citingcase.dita">2012-12-03 - [@annotationtype="subseqcases"]/cttr:annot to
							cttr:citingcase: Corrected example source mark-up for
								<sourcexml>remotelink/inlineobject</sourcexml>.</xref>
					</li>
					<li>
						<xref href="../../common_newest/Rosetta_inlineobject-LxAdv-figure_ref.inlineobject.dita">2012-12-03 - inlineobject to figure/ref:inlineobject: Moved full
							conversion instruction to new base topic
								<sourcexml>inlineobject</sourcexml> to
								<targetxml>ref:inlineobject</targetxml>. This topic now specific to
								<targetxml>figure/ref:inlineobject</targetxml> mapping.</xref>
					</li>
					<li>
						<xref href="../../common_newest/Rosetta_inlineobject-Chof-remotelink-LxAdv-ref.crossreference_ref.content_ref.inlineobject.dita">2012-12-03 - inlineobject Child of remotelink to ref:inlineobject:
							Created. New topic to address <sourcexml>inlineobject</sourcexml> as
							child of <sourcexml>remotelink</sourcexml>
						</xref>
					</li>
				</ul>
			</p>
		</section>
		<section>
			<title>2.19_ALPHA</title>
			<p>2013-02-13 - WLL <ul>
					<li> Updated to pull in changes </li>
				</ul>
			</p>
		</section>
		<section>
			<title>ALPHA 2.0</title>
			<p>2012-12-01 <ul>
					<li>Changed target markup to reflect that country code CD will be converted to
						CA in all instances. Changed target, example for
							<sourcexml>case:casename</sourcexml> to
							<targetxml>caseinfo:shortcasename</targetxml>. </li>
					<li><sourcexml>leg:info</sourcexml> to
							<targetxml>cttr:head/cttr:citedseclaw</targetxml>: Added note for
						handling <sourcexml>leg:juris</sourcexml> value CD.</li>
					<li><sourcexml>case:juris</sourcexml>: Changed country code from CD to CA. Added
						note for handling <sourcexml>case:juris</sourcexml> value CD.</li>
					<li><sourcexml>leg:info</sourcexml> to
							<targetxml>cttr:head/cttr:citedseclaw</targetxml>: Added instructions
						and example for separating English and French
							<sourcexml>leg:relatedleg</sourcexml> information.</li>
				</ul>
			</p>
		</section>
		<section>
			<title>2013-01-24</title>
			<p>ALPHA 1.9 <ul>
					<li>Topics <sourcexml>[@annotationtype="subseqcases"]/cttr:annot</sourcexml> to
							<targetxml>cttr:citingcase</targetxml> and
							<sourcexml>[@annotationtype="appealproc"]/cttr:annot</sourcexml> to
							<targetxml>cttr:appealproceeding</targetxml> - Added instruction for
						handling <sourcexml>cttr:use/@signal="citation"</sourcexml>.</li>
				</ul></p>
		</section>
		<section>
			<title>2013-01-23</title>
			<p>ALPHA 1.8 <ul>
					<li><sourcexml>[@annotationtype="subseqcases"]/cttr:annot</sourcexml> to
							<targetxml>cttr:citingcase</targetxml> and
							<sourcexml>[@annotationtype="appealproc"]/cttr:annot</sourcexml> to
							<targetxml>cttr:appealproceeding</targetxml>- Removed note regarding
						schema CR required to support
							<sourcexml>cttr:use/@signal="citation"</sourcexml>.</li>
					<li><sourcexml>cttr:annot/leg:info</sourcexml> to
							<targetxml>lnci:stat</targetxml> - Removed the value "citation" from
						source and markup examples in attributes
							<sourcexml>cttr:use/@signal</sourcexml> and
							<targetxml>cttr:usage/@usagetype</targetxml>.</li>
					<li><sourcexml>case:casename</sourcexml> to
							<targetxml>caseinfo:fullcasename</targetxml> - Changed target mapping
						for <sourcexml>case:casename</sourcexml> to
							<targetxml>caseinfo:shortcasename</targetxml>. Topic name changed for
						new mapping.</li>
					<li>Topic <sourcexml>case:altname</sourcexml> to
							<targetxml>caseinfo:fullcasename</targetxml> - Changed target mapping
						for <sourcexml>case:altname</sourcexml> to
							<targetxml>caseinfo:alternatecasename</targetxml>. Topic name changed
						for new mapping.</li>
					<li><sourcexml>case:juris</sourcexml> - Added notes for handling
							<sourcexml>case:juris</sourcexml> values PQ and NF.</li>
					<li>Topic <sourcexml>leg:info</sourcexml> to
							<targetxml>cttr:head/cttr:citedseclaw</targetxml> - Added "Normalize
						whitespace." to the instruction for
							<targetxml>lnci:popname/@value</targetxml>.</li>
					<li>Topic - various - Added "The separating "/" will be dropped from output."
						where appropriate, for clarity.</li>
				</ul>
			</p>
		</section>
		<section>
			<title>2013-01-17</title>
			<p>ALPHA 1.7 <ul>
					<li><sourcexml>[@annotationtype="subseqcases"]/cttr:annot</sourcexml> to
							<targetxml>cttr:citingcase</targetxml> and
							<sourcexml>[@annotationtype="appealproc"]/cttr:annot</sourcexml> to
							<targetxml>cttr:appealproceeding</targetxml>- Revised
							<sourcexml>cttr:use/@signal</sourcexml> instructions for clarity and
						when it does not exist. Added note regarding schema CR required to support
							<sourcexml>cttr:use/@signal="citation"</sourcexml>.</li>
					<li>
						<sourcexml>cttr:annot/leg:info</sourcexml> to
							<targetxml>lnci:stat</targetxml> - Corrected example 1 target mark-up
						for <targetxml>cttr:usage/@usagetype</targetxml>.</li>
				</ul>
			</p>
		</section>
		<section>
			<title>2013-01-05</title>
			<p>ALPHA 1.6 <ul>
					<li>Updated to latest schema version 2.18  ALPHA .</li>
					<li><sourcexml>[@annotationtype="subseqcases"]/cttr:annot</sourcexml> to
							<targetxml>cttr:citingcase</targetxml> - Corrected example target
						mark-up for <targetxml>cttr:usage/@usagetype</targetxml>.</li>
					<li><sourcexml>leg:info</sourcexml> to
							<targetxml>cttr:head/cttr:citedseclaw</targetxml></li>
					<li>Added <sourcexml>leg:history/leg:histinfo/leg:relatedleg</sourcexml>
						instructions.</li>
					<li>Added instructions for converting <sourcexml>leg:num</sourcexml> containing
						"&amp;quot;" as part of the value. </li>
					<li>Revised English/French parsing output instructions for clarity.</li>
				</ul>
			</p>
		</section>
		<section>
			<title>2012-12-03</title>
			<p>ALPHA 1.5 <ul>
					<li>&gt;Added instructions for addressing <sourcexml>inlineobject</sourcexml> as
						child of <sourcexml>remotelink</sourcexml></li>
					<li>Added clarification for when to map <targetxml>ref:inlineobject</targetxml>
						as child of <targetxml>figure</targetxml>.</li>
					<li>Added rule to <sourcexml>remotelink</sourcexml> instruction to convert
							<sourcexml>@remotekey1="DOCID"</sourcexml>.</li>
					<li>Added instruction to <sourcexml>ci:cite</sourcexml> to drop all ocurrences
						of <sourcexml>ci:{local-name}/@spanref</sourcexml>.</li>
					<li><sourcexml>cttr:annotations[@annotationtype="subseqcases"]/cttr:annot</sourcexml>
						- fixed source mark-up for remotelink/inlineobject in example.</li>
					<li>Added new modules: Handling self inter-document links, Handling ID data
						types (Introduction)</li>
				</ul>
			</p>
		</section>
		<section>
			<title>2012-11-28</title>
			<p>ALPHA 1.4 <ul>
					<li>Added CA Citator specific @xml:lang instructions.</li>
					<li>Added instructions for leg:relatedleg.</li>
					<li>Clarified that <targetxml>dc:coverage</targetxml> only needs to be created
						for <sourcexml>case:headnote/../case:juris</sourcexml>.</li>
					<li>Rewrote instructions for cttr:annot/leg:info to make them clearer, and added
						second XML example.</li>
				</ul>
			</p>
		</section>
		<section>
			<title>2012-10-26</title>
			<p>ALPHA 1.3 <ul>
					<li>Updated suppressed elements lists (cttr:annotsummary).</li>
					<li>Updated examples for converting leg:history to primlawhist:primlawhist.</li>
					<li>Corrected "casefullname" to "fullcasename" in 7.1.1, 7.1.2.</li>
				</ul>
			</p>
		</section>
		<section>
			<title>2012-08-27</title>
			<p>ALPHA 1.2 <ul>
					<li>Updated leg:info instructions to include lnci:span/@xml:lang.</li>
				</ul>
			</p>
		</section>
		<section>
			<title>2012-08-27</title>
			<p>ALPHA 1.1 <ul>
					<li>Updated case:juris instructions to re-use case:juris instructions from CA
						Caselaw CI (to be made a common file).</li>
				</ul>
			</p>
		</section>
		<section>
			<title>2012-08-24</title>
			<p>ALPHA 1.0 <ul>
					<li>Release CA03 Citator CI</li>
				</ul>
			</p>
		</section>
	</body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA03-Citator\doc-to-citator_changeLog.dita  -->
	<xsl:message>doc-to-citator_changeLog.xsl requires manual development!</xsl:message> 

</xsl:stylesheet>