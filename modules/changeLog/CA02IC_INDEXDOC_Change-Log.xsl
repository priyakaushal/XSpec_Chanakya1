<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet	version="2.0"
						xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
						xmlns:dita="http://dita.oasis-open.org/architecture/2005/"

						exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Change-Log">
		  <title>Original Change Log</title>
		  <body>
			<section>
			  <title>casedigest 7.5_PROD</title>
			  <p>2014-02-28
				<ul>
				  <li>
					<xref href="../../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2014-02-25 - remotelink to ref:crossreference: Updated instruction and created new example (#16) for handling <sourcexml>remotelink[@service="QUERY"]</sourcexml>. New instruction preserves pcdata but suppresses <sourcexml>remotelink</sourcexml> markup.</xref>
				  </li>
				  <li>
					<xref href="../../../common_newest/Rosetta_docinfo.doc-heading-LxAdv-dc.title.dita">2014-02-11 - docinfo:doc-heading to dc:title: Updated note when <sourcexml>emph</sourcexml> is
					  child of <sourcexml>docinfo:doc-heading</sourcexml> then suppress
					  <sourcexml>emph</sourcexml> element and retain its content in
					  <targetxml>dc:title</targetxml>, These instructions apply immediately to
					  CA12.</xref>
				  </li>
				  <li>
					<xref href="../../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2014-02-03 - remotelink to ref:crossreference: Instruction updated if <sourcexml>remotelink</sourcexml> occurs as multiple, immediate siblings and without intermediary text within <sourcexml>title</sourcexml>. Also added a example for the same scenario. Phase 5 UK discussion-defect tracking issue #161</xref>
				  </li>
				</ul>
			  </p>
			</section>
			<section>
			  <title>casedigest 7.5_PROD</title>
			  <p>2014-01-22
				<ul>
				  <li>
					<xref href="../../../common_newest/Rosetta_Elements-LxAdv-Empty_Elements.dita">2014-01-16 - Suppress each empty element unless otherwise stated: Added list of elements to suppress if empty.</xref>
				  </li>          
				  <li>
					<xref href="../../../common_newest/Rosetta_date-Chof-docinfo.load-date-LxAdv-dc.date_lnmeta.datetype_load-date-scheme.dita">2014-01-07: Added a note along with example which contains "00" value in <sourcexml>@day="00"</sourcexml> and <sourcexml>@month="00"</sourcexml> attributes encountered in CANADA contents.</xref></li>
				  <li>
					<xref href="../../../common_newest/Rosetta_table-LxAdv-table.dita">2013-12-19: Removed an obsolete note regarding visual styling of tables.</xref></li>
				 <li>
					<xref href="../../../common_newest/Rosetta_table-LxAdv-table.dita">2013-09-12: WebTeam #s 235116, 235130, 235126: Added instructions for deleting extraneous instances of @morerows, @colsep and @rowsep. These instructions apply immediately to all UK streams and also to AU18.</xref></li>
				  </ul>
			  </p>
			</section>
			<section>
			  <title>casedigest 7.5_PROD</title>
			  <p>2013-11-06
				<ul>
				  <li><xref href="../../../common_newest/Rosetta_date-Chof-docinfo.load-date-LxAdv-dc.date_lnmeta.datetype_load-date-scheme.dita">2013-11-06 - Added instruction to create <targetxml>dc:date[@lnmeta:datetype="load-date"]</targetxml>, when source document has <sourcexml>docinfo:load-date</sourcexml>.</xref></li>
				  <li><xref href="../../../common_newest/Rosetta_docinfo-LxAdv-doc.metadata_doc.docinfo.dita">2013-08-09 - docinfo to doc:metadata/doc:docinfo: Added instruction for creating <targetxml>dc:date[@lnmeta:datetype="conversion-date"]</targetxml>. Previously, "conversion-date" was created only if "load-date" was not present. Going forward, conversion should always create "conversion-date". This is not a retroactive change. It should be applied only to streams developed after Aug. 9 2013.</xref></li>
				</ul>
			  </p>
			</section>
			<section>
			  <title>casedigest 7.4_PROD</title>
			  <p>2013-08-02
				<ul>
				  <li>
					<xref href="../../../common_newest/Rosetta_title-LxAdv-title.dita">2013-07-30 - title to title: Updated Instruction when <sourcexml>title</sourcexml> contains word "TITLE: " or "NAME: ".</xref>
				  </li>
				  <li>
					<xref href="../../../common_newest/Rosetta_docinfo.doc-heading-LxAdv-dc.title.dita">2013-07-30 - docinfo:doc-heading to dc:title: Added Instruction when <sourcexml>docinfo:doc-heading</sourcexml> contains word "TITLE: " or NAME: .</xref>
				  </li>
				  <li>
					<xref href="../../../common_newest/Rosetta_docinfo-LxAdv-doc.metadata_doc.docinfo.dita">2013-07-18 - docinfo to doc:metadata/doc:docinfo: Added
					  <sourcexml>@excludefromalerts</sourcexml> as one of the
					  <sourcexml>docinfo</sourcexml> attributes to carry through</xref>
				  </li>
				  <li>
					<xref href="../../../common_newest/Rosetta_docinfo.doc-lang-and-doc-country-LxAdv-ROOT_xml.lang.dita">2013-07-16 - docinfo:doc-lang and docinfo:doc-country to @xml:lang and @xml:ID: Instruction narrative edited for language; no changes to mappings, no impact to stylesheets.</xref>
				  </li>
				  <li>
					<xref href="../../../common_newest/Rosetta_title-LxAdv-title.dita">2013-07-05 - title to title: Added Instruction when <sourcexml>title</sourcexml> contains word "TITLE: ".</xref>
				  </li>
				  <li>
					<xref href="../../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-06-03 - remotelink to ref:crossreference: Updated the Target XML 2 by removing the <targetxml>@crossreferencetype</targetxml> for Canada example.</xref>
				  </li>
				  <li>
					<xref href="../../../common_newest/Rosetta_docinfo-LxAdv-doc.metadata_doc.docinfo.dita">2013-05-16 - docinfo to doc:metadata/doc:docinfo: Fixed typo updating urn:contentitem to urn:contentItem</xref>
				  </li>
				  <li>
					<xref href="../../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-05-08 - remotelink to ref:crossreference: Extended the list of allowable values for image handling.</xref>
				  </li>
				  <li>
					<xref href="../../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-05-01 - remotelink to ref:crossreference: Removed instructions for section
					  "Pre-Release 4.0" because according to latest Apollo markup, section
					  "Release 4.0 and after" and section "Pre-Release 4.0" now have
					  similar conversion markup.</xref>
				  </li>
				  <li>
					<xref href="../../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-05-01 - remotelink to ref:crossreference: "Instruction added for <sourcexml>ci:cite/ci:content/remotelink</sourcexml> specifying that the <sourcexml>remotelink</sourcexml> is to be converted to <targetxml>ref:crossreference</targetxml> but the containing elements' start-tags and end-tags (<sourcexml>ci:cite</sourcexml> and <sourcexml>ci:content</sourcexml>) are dropped", has been removed from the instructions and now <sourcexml>remotelink</sourcexml> will be converted to the resulting mapping where it is. For more details you can see example: Source XML 10: <sourcexml>remotelink</sourcexml> as a child of
					  <sourcexml>ci:cite/ci:content</sourcexml>
					</xref>
				  </li>
				  <li>
					<xref href="../../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-04-30 - remotelink to ref:crossreference: Updated target sample according to latest Apollo markup.</xref>
				  </li>
				  <li>
					<xref href="../../../common_newest/Rosetta_docinfo.doc-lang-and-doc-country-LxAdv-ROOT_xml.lang.dita">2013-04-19 - docinfo:doc-lang and docinfo:doc-country to @xml:lang and @xml:ID: Added note about applicability of
					  restrictions and required modifications for <targetxml>xml:id</targetxml> to
					  other scenarios.</xref>
				  </li>
				  <li>
					<xref href="../../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-04-10 - remotelink to ref:crossreference: Added Source XML 7a: for link to URL, with non-URL text content because it was previously missing, only the target example was here.</xref>
				  </li>
				  <li>
					<xref href="../../../common_newest/Rosetta_Elements-LxAdv-Empty_Elements.dita">2013-03-28 - Suppress empty elements unless otherwise stated: Created.</xref>
				  </li>
				</ul>
			  </p>
			</section>
			<section>
			  <title>First CI release.</title>
			  <p>2012-08-21</p>
			</section>
		  </body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA02-Case_Summaries\CA02IC_INDEXDOC\Change-Log.dita  -->

</xsl:stylesheet>