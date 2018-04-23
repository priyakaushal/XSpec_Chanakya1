<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:ci="http://www.lexis-nexis.com/ci" xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:classify="http://www.lexisnexis.com/xmlschemas/content/shared/classification/1/" xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns:lnci="http://www.lexisnexis.com/xmlschemas/content/shared/citations/1/" xmlns:person="http://www.lexisnexis.com/xmlschemas/content/shared/person/1/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita case ci docinfo leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="CaseSummaries_Change-Log">
  <title>Change Log for Case Summaries</title>
  <body>
    <section>
      <title>Abstract:4.1 BETA</title>
      <p>2016-08-23:
      <ul>
        <li>
          <xref href="../../../../Rosetta/common_newest/Rosetta_PAC_docinfo.doc-id-LxAdv-dcidentifier_lnmetaidentifier-scheme.dita">2016-08-03 - docinfo:doc-id to dc:identifier[@lnmeta:identifier-scheme] id-CCCC-10550: Created the rule to, Check manifest file for
            DPSI value and create new element
            <targetxml>dc:metadata/dc:source[@lnmeta:sourcescheme]</targetxml>
          </xref>
        </li>
        <li>
          <xref href="../../../../Rosetta/common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2016-08-03 - remotelink to ref:crossreference id-CCCC-10465: Added Note about xml snippets that illustrate
            image handling. Note summarizes move from Apollo to Blobstore application. UK is
            first LBU to move to Blobstore.</xref>
        </li>
        <li>
          <xref href="../../../../Rosetta/common_newest/Rosetta_emph-LxAdv-emph.dita">2016-04-01 - emph to emph id-CCCC-10316: Added statement to clarify that children of emph should be processed.</xref>
        </li>
        <li>
          <xref href="../../../../Rosetta/common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2016-03-23 - ci.cite to lnci.cite id-CCCC-10268: Updated main instructions to clarify that descendants of ci:cite, and not just children, are to be processed.</xref>
        </li>
        <li>
          <xref href="../../../../Rosetta/common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2016-02-05 - remotelink to ref:crossreference id-CCCC-10465: Added note and example when
            <sourcexml>remotelink</sourcexml> is a child of <sourcexml>emph</sourcexml>. Applicable
            on NZ17CC, Webstar: 319232 and 318735.</xref>
        </li>
      </ul>
      </p>
    </section>
    <section>
      <title>Abstract:4.1 BETA</title>
      <p>2014-10-30:
        <ul>
          <li>
            <xref href="../../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2014-10-27 - remotelink to ref:crossreference id-CCCC-10465: Minor. Within use case for
              <sourcexml>@service="DOC-ID"</sourcexml>, rule for
              <sourcexml>@remotekey1="REFPTID"</sourcexml> now also applies when
              <sourcexml>@remotekey1="REFPT"</sourcexml>. That is, the condition is expanded to
              include value <sourcexml>"REFPT"</sourcexml>; the mapping is unchanged. The value
              <sourcexml>"REFPT"</sourcexml> is new in Oct 2014 redelivery of UK11-DN but the rule
              applies to any stream where <sourcexml>@remotekey1="REFPT"</sourcexml> may occur. R4.5
              Content Issue 2003.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_docinfo.overview-LxAdv-docinfo.overview.dita">2014-10-21 - docinfo:overview to doc:overview id-CCCC-10303: added to UK09 ditamap.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_title-LxAdv-title.dita">2014-10-07 - title to title id-CCCC-10479: Removed instruction and example to convert attribute <sourcexml>@searchtype="DIGEST-SUBJECT"</sourcexml>. Applicable to CA12.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_docinfo.lbu.juris-LxAdv-classify.classification_classscheme_docinfolbu-juris.dita">2014-08-11 - docinfo:lbu-juris to classify:classification[@classscheme="docinfo:lbu-juris"] id-CCCC-10301: Added a special scenario for all Canada streams to handle <sourcexml>docinfo:lbu-juris</sourcexml> to <targetxml>classify:classification@classscheme="docinfo:lbu-juris"/classify:classitem/classify:classitem-identifier/classify:classname</targetxml>. Db P4 issue #305</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_text-LxAdv-text.dita">2014-08-11 - text to text id-CCCC-10477: For CANADA Content Stream: Only move the
              <sourcexml> text@align</sourcexml> to the parent <targetxml>p</targetxml> if
              it is the only text in <sourcexml>p</sourcexml>, Otherwise, wrap the
              <sourcexml>text</sourcexml> with <targetxml>p</targetxml> and move the
              <sourcexml>@align</sourcexml> attribute to the newly created <targetxml>
                p</targetxml>.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_docinfo.overview-LxAdv-docinfo.overview.dita">2014-08-04 - docinfo:overview to doc:overview id-CCCC-10303: added to UK05 ditamap.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_docinfo.doc-id-LxAdv-dcidentifier_lnmetaidentifier-scheme.dita">2014-06-23 - docinfo:doc-id to dc:identifier[@lnmeta:identifier-scheme] id-CCCC-10293: Note and Example removed - For CA05 Acts and
              Bills- Mapping in dc:identifier for act-no and chunk-no. Db issue #1464</xref>
          </li>
        </ul>
      </p>     
    </section>
    
    <section>
      <title>Abstract:4.0 BETA</title>
      <p>2014-06-04
        <ul>
          <li>
            <xref href="../../../common_newest/Rosetta_docinfo.doc-id-LxAdv-dcidentifier_lnmetaidentifier-scheme.dita">2014-05-21 - docinfo:doc-id to dc:identifier[@lnmeta:identifier-scheme] id-CCCC-10293: For CA05 Acts and Bills- Mapping in dc:identifier for act-no and chunk-no.. Db issue #1464 </xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_p-LxAdv-p.dita">2014-04-14 - p to p id-CCCC-10424: Removed Colons from Labels.. DB item #1255</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2014-02-25 - remotelink to ref:crossreference id-CCCC-10465: Updated instruction and created new example (#16) for handling <sourcexml>remotelink[@service="QUERY"]</sourcexml>. New instruction preserves pcdata but suppresses <sourcexml>remotelink</sourcexml> markup. Webstar #250335. Change applies immediately to all Pacific streams, and in the long run to all streams.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_docinfo.doc-heading-LxAdv-dc.title.dita">2014-02-11 - docinfo:doc-heading to dc:title id-CCCC-10292: Updated note when <sourcexml>emph</sourcexml> is
              child of <sourcexml>docinfo:doc-heading</sourcexml> then suppress
              <sourcexml>emph</sourcexml> element and retain its content in
              <targetxml>dc:title</targetxml>, These instructions apply immediately to
              CA12.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2014-02-03 - remotelink to ref:crossreference id-CCCC-10465: Instruction updated if <sourcexml>remotelink</sourcexml> occurs as multiple, immediate siblings and without intermediary text within <sourcexml>title</sourcexml>. Also added a example for the same scenario. Phase 5 UK discussion-defect tracking issue #161</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_text-LxAdv-text.dita">2014-01-31 - text to text id-CCCC-10477: Updated instruction, <targetxml>align</targetxml> will be moved in <targetxml>p</targetxml> in NL conversion. NZ09 commentary discussion board issue for handling <sourcexml>text/@align</sourcexml>
            </xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_docinfo.lbu.juris-LxAdv-classify.classification_classscheme_docinfolbu-juris.dita">2014-01-19 - docinfo:lbu-juris to classify:classification[@classscheme="docinfo:lbu-juris"] id-CCCC-10301: Added a special scenario for handling <sourcexml>docinfo:lbu-juris</sourcexml> along with input and output examples for CANADA CA02 contents ONLY.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_Elements-LxAdv-Empty_Elements.dita">2014-01-16 - Suppress each empty element unless otherwise stated id-CCCC-10310: Added list of elements to suppress if empty.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_date-Chof-docinfo.load-date-LxAdv-dc.date_lnmeta.datetype_load-date-scheme.dita">2014-01-07 - docinfo:load-date/date to dc:date[@lnmeta:datetype="load-date"] id-CCCC-10274:  Added a note along with example which contains "00" value in <sourcexml>@day="00"</sourcexml> and <sourcexml>@month="00"</sourcexml> attributes encountered in CANADA contents.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_Topic_Identifiers.dita">2014--0-5- - Topic Identifiers id-CCCC-10481: Created.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2013-12-30 - ci.cite to lnci.cite id-CCCC-10268: Minor illustrative change. Added "(AU
              Journals/Newsitem)" to headings for last example to clarify that retention of
              <sourcexml>@type="cite4thisdoc"</sourcexml> is an exception for that
              content, as already described in narrative rules.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_p-LxAdv-p.dita">2013-12-04 - p to p id-CCCC-10424: Updated target example when <sourcexml>p</sourcexml> or <sourcexml>p/@nl="0"</sourcexml> comes in <sourcexml>references</sourcexml>, this change directly affects NZ07.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_p-LxAdv-p.dita">2013-11-21 - p to p id-CCCC-10424: Updated instruction and example <sourcexml>p</sourcexml> or <sourcexml>p/@nl="0"</sourcexml> comes in <sourcexml>references</sourcexml>, this change directly affects NZ07.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_docinfo.currencystatement-LxAdv-currencystatement.dita">2013-10-29 - docinfo:currencystatement to doc:docinfo/currencystatement id-CCCC-10289: WebTeam #233318 created for pacific content stream inorder to suppress <sourcexml>docinfo:currencystatement</sourcexml> with in <sourcexml>leg:levelinfo</sourcexml> and <sourcexml>levelinfo</sourcexml>.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_docinfo.overview-LxAdv-docinfo.overview.dita">2013-10-29 - docinfo:overview to doc:overview id-CCCC-10303: WebTeam #233318 created for pacific content stream inorder to suppress <sourcexml>docinfo:overview</sourcexml> with in <sourcexml>leg:levelinfo</sourcexml> and <sourcexml>levelinfo</sourcexml>.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_p-LxAdv-p.dita">2013-10-25 - p to p id-CCCC-10424: Added instruction and example <sourcexml>p/@nl="0"</sourcexml> comes in <sourcexml>references</sourcexml>.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-10-23 - remotelink to ref:crossreference id-CCCC-10465: Added Example when <sourcexml>remotelink</sourcexml> having child <sourcexml>emph</sourcexml>. Webteam # 239816</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_docinfo.doc-heading-LxAdv-dc.title.dita">2013-10-18 - docinfo:doc-heading to dc:title id-CCCC-10292: Updated Instruction when <sourcexml>docinfo:doc-heading</sourcexml> contains word RULE: " or STATUTE: .</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_Elements-LxAdv-Empty_Elements.dita">2013-10-14 - Suppress each empty element unless otherwise stated id-CCCC-10310: Changed antecedent to singular to match
              instructions.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_docinfo.authorattribution-LxAdv-dc.contributor.dita">2013-10-11 - docinfo:authorattribution to dc:contributor id-CCCC-10287: Instruction added when <sourcexml>remotelink</sourcexml> as a child of <sourcexml>docinfo:authorattribution/contrib</sourcexml>. WebTeam # is 240252.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_p-LxAdv-p.dita">2013-10-09 - p to p id-CCCC-10424: Added instruction and example <sourcexml>p</sourcexml> comes with <sourcexml>@nl=”0”</sourcexml>.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_docinfo.authorattribution-LxAdv-dc.contributor.dita">2013-10-08 - docinfo:authorattribution to dc:contributor id-CCCC-10287: Instruction added for handling
              <sourcexml>docinfo:authorattribution</sourcexml> when it is having a running
              text. Affects all Pacific content streams. WebTeam # is 238798.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_process-ignore-to-LxAdv_SUPPRESS.dita">2013-10-03 - process-ignore id-CCCC-10436: Not a rule change. Clarified directions by stating
              that children should be processed as normal. This was already correctly demonstrated by
              the example.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-10-03 - remotelink to ref:crossreference id-CCCC-10465: Added use case where remotelink contains @href which is a URL but does not contain @hrefclass='http'.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_docinfo.authorattribution-LxAdv-dc.contributor.dita">2013-09-16 - docinfo:authorattribution to dc:contributor id-CCCC-10287: Instruction added for suppressing
              <sourcexml>docinfo:authorattribution/contrib</sourcexml> when it is child of
              <sourcexml>leg:levelinfo</sourcexml> and
              <sourcexml>levelinfo</sourcexml>.Affects all Pacific content streams. WebTeam #
              is 234193.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_docinfo.currencystatement-LxAdv-currencystatement.dita">2013-09-16 - docinfo:currencystatement to doc:docinfo/currencystatement id-CCCC-10289: Instruction added for suppressing <sourcexml>docinfo:currencystatement</sourcexml> when it is child of <sourcexml>leg:levelinfo</sourcexml> and  <sourcexml>levelinfo</sourcexml>.Affects all Pacific content streams. WebTeam # is 234193.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_docinfo.overview-LxAdv-docinfo.overview.dita">2013-09-16 - docinfo:overview to doc:overview id-CCCC-10303: Instruction added for suppressing <sourcexml>docinfo:overview</sourcexml> when it is child of <sourcexml>leg:levelinfo</sourcexml> and <sourcexml>levelinfo</sourcexml>.Affects all Pacific content streams. WebTeam # is 234193.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_title-LxAdv-title.dita">2013-09-03 - title to title id-CCCC-10479: Updated Instruction when <sourcexml>title</sourcexml> contains word "TITLE: " or "NAME: " or "SITE: ".</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_docinfo.doc-heading-LxAdv-dc.title.dita">2013-09-03 - docinfo:doc-heading to dc:title id-CCCC-10292: Updated Instruction when <sourcexml>docinfo:doc-heading</sourcexml> contains word "TITLE: " or NAME:  or SITE:  or SUBJECT:.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_text-When_Contains_Only_Wihitespace_Or_NBSP_Entity.dita">2013-08-29 - Converting text When it Contains Only Whitespace or NBSP Entity id-CCCC-10478: Created per WebStar: WebTeam #223114</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_docinfo.authorattribution-LxAdv-dc.contributor.dita">2013-08-22 - docinfo:authorattribution to dc:contributor id-CCCC-10287: Updated instruction and example when
              <sourcexml>person</sourcexml> is an child of
              <sourcexml>docinfo:authorattribution/contrib</sourcexml> and removed CR# DAAM2013080706295200. WebTeam # is 229509.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-08-22 - remotelink to ref:crossreference id-CCCC-10465: Not a rule change. Modified Sample #10 on
              <sourcexml>ci:cite/ci:content/remotelink</sourcexml>. Removed target attribute
              <targetxml>lnci:cite[@citeref]</targetxml> because value captured in
              <targetxml>ref:crossreference/ref:locator[@anchoridref]</targetxml>.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_docinfo.authorattribution-LxAdv-dc.contributor.dita">2013-08-13 - docinfo:authorattribution to dc:contributor id-CCCC-10287: Added instruction and example when
              <sourcexml>person</sourcexml> is an child of
              <sourcexml>docinfo:authorattribution/contrib</sourcexml> and CR# DAAM2013080706295200 has been created to add <targetxml>person:person</targetxml> to the content model of <targetxml>dc:contributor</targetxml>.WebTeam # is 229509</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_remotelink-self-inter-document-link-LxAdv-intra-document-link.dita">2013-08-12 - remotelink (self inter-document link) to ref:lnlink (intra-document link) id-CCCC-10468: Changed module heading from ref:crossreference to ref:lnlink.  NO
              instructions are changed.  WebTeam # 230229. Affects all streams.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_docinfo-LxAdv-doc.metadata_doc.docinfo.dita">2013-08-09 - docinfo to doc:metadata/doc:docinfo id-CCCC-10282: Added instruction for creating
              <targetxml>dc:date[@lnmeta:datetype="conversion-date"]</targetxml>.
              Previously, "conversion-date" was created only if "load-date" was not present.
              Going forward, conversion should always create "conversion-date". This is not a
              retroactive change. It should be applied only to streams developed after Aug. 9
              2013.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_XML_Character_Entities-LxAdv-Unicode.dita">2013-08-08 - XML Character Entities to Unicode code points id-CCCC-10489: This change does not represent a change to
              conversion but rather documentation of the existing behavior.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_date-Chof-docinfo.load-date-LxAdv-dc.date_lnmeta.datetype_load-date-scheme.dita">2013-08-07 - docinfo:load-date/date to dc:date[@lnmeta:datetype="load-date"] id-CCCC-10274: Removed instructions for creating
              <targetxml>dc:date[@lnmeta:datetype="conversion-date"]</targetxml>.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_remotelink-self-inter-document-link-LxAdv-intra-document-link.dita">2013-08-07 - remotelink (self inter-document link) to ref:lnlink (intra-document link) id-CCCC-10468: Changed target to
              <targetxml>ref:lnlink</targetxml>; formerly
              <targetxml>ref:crossreference</targetxml>. Changed because the only
              supported markup for intradoc linking is <targetxml>ref:lnlink</targetxml>, as
              per Bency Thomas. WebTeam # 230229. Affects all streams.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_docinfo.doc-heading-LxAdv-dc.title.dita">2013-08-01 - docinfo:doc-heading to dc:title id-CCCC-10292: For Canada Content streams: Added a note and examples, when <sourcexml>docinfo:doc-heading</sourcexml> contains <sourcexml>nl</sourcexml> as a child element.</xref>
          </li>
        </ul>
      </p>
    </section>
    <section>
      <title>Abstract:3.7 BETA</title>
      <p>2013-07-31
        <ul>
          <li>
            <xref href="../../../DITA-PAC/NZ17_Case_Summaries/NZ17CA_Citatordoc_To_Abstract/case.references.dita">2013-07-31 - case:references: Instruction and example updated for <sourcexml>case:references</sourcexml> 
            </xref>
          </li>
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
        </ul>
      </p>
    </section>
     <section>
      <title>Created</title>
      <p>2013-07-15</p>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\NZ17_Case_Summaries\NZ17CA_Citatordoc_To_Abstract\CaseSummaries_Change-Log.dita  -->
	<xsl:message>CaseSummaries_Change-Log.xsl requires manual development!</xsl:message> 

</xsl:stylesheet>