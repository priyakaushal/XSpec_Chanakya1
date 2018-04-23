<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:ci="http://www.lexis-nexis.com/ci" xmlns:comm="http://www.lexis-nexis.com/glp/comm" xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" xmlns:source_lnci="http://www.lexis-nexis.com/lnci" xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns:person="http://www.lexisnexis.com/xmlschemas/content/shared/person/1/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita ci comm docinfo lnci">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="CA12_CA-Dictionaries_Change-Log">
  <title>Change Log</title>
  <body>
    
    <section>
      <title>Dictionary 2.5 PROD</title>
      <p>2015-03-17
        <ul>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_pnum-LxAdv-desig.dita">2015-03-17 - pnum to desig id-CCCC-10434: An attribute <targetxml>@inline</targetxml> get added with <targetxml>desig</targetxml> element even when the source<sourcexml>pnum</sourcexml> is not having that attribute<sourcexml>@inline</sourcexml> #RFA 2188 ,Applicable on CA12 only.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_pgrp-LxAdv-pgrp.dita">2015-03-17 - pgrp to pgrp id-CCCC-10431: An attribute <targetxml>@inline</targetxml> get added with <targetxml>desig</targetxml> element even when the source<sourcexml>pnum</sourcexml> is not having that attribute<sourcexml>@inline</sourcexml> #RFA 2188 ,Applicable on CA12 only.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_pgrp_searchtype-LxAdv-pgrp.dita">2015-03-17 - pgrp/@searchtype="QUOTED-TEXT" id-CCCC-10432: An attribute <targetxml>@inline</targetxml> get added with <targetxml>desig</targetxml> element even when the source<sourcexml>pnum</sourcexml> is not having that attribute<sourcexml>@inline</sourcexml> #RFA 2188 ,Applicable on CA12 only.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2015-03-17 - ci.cite to lnci.cite id-CCCC-10268: An attribute <targetxml>@inline</targetxml> get added with <targetxml>desig</targetxml> element even when the source<sourcexml>pnum</sourcexml> is not having that attribute<sourcexml>@inline</sourcexml> #RFA 2188 ,Applicable on CA12 only.</xref>
          </li>
        </ul>
      </p>
    </section>
    
    <section>
      <title>Dictionary 2.5 PROD</title>
      <p>2015-02-24
        <ul>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_pnum-LxAdv-desig.dita">2015-02-24 - pnum to desig id-CCCC-10434: An attribute <targetxml>@inline</targetxml>get added with <targetxml>desig</targetxml>element even when the source<sourcexml>pnum</sourcexml>is not having that attribute<sourcexml>@inline.</sourcexml> #RFA 2188 , Applicable on CA12.
            </xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_pgrp-LxAdv-pgrp.dita">2015-02-24 - pgrp to pgrp id-CCCC-10431: Example updated as per new rule an attribute <targetxml>@inline</targetxml>get added with <targetxml>desig</targetxml>element when the source<sourcexml>pnum</sourcexml>is not having that attribute<sourcexml>@inline. </sourcexml>#RFA 2188 , Applicable on CA12. 
            </xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_pgrp_searchtype-LxAdv-pgrp.dita">2015-02-24 - pgrp/@searchtype="QUOTED-TEXT" id-CCCC-10432: Example updated as per new rule an attribute <targetxml>@inline</targetxml>get added with <targetxml>desig</targetxml>element when the source<sourcexml>pnum</sourcexml>is not having that attribute<sourcexml>@inline. </sourcexml>RFA #2188 , Applicable on CA12. 
            </xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2015-02-24 - ci.cite to lnci.cite id-CCCC-10268: Example updated as per new rule an attribute <targetxml>@inline</targetxml>get added with <targetxml>desig</targetxml>element when the source<sourcexml>pnum</sourcexml>is not having that attribute<sourcexml>@inline. </sourcexml>RFA #2188 , Applicable on CA12.
            </xref>
          </li>
        </ul>
      </p>
    </section>
    
    <section>
      <title>Dictionary 2.5 PROD</title>
      <p>2015-01-30
        <ul>
          <li>
            <xref href="../../../Rosetta/DITA-CAN/CA12-Dictionaries/CA12_CA-Dictionaries_bodytext.dita">2015-01-30 - bodytext id-CA12-15008: Added an <targetxml>ref:anchor anchortype="local"
              id="dict-CASENAME-CITE"</targetxml> in between <targetxml>p</targetxml> and
              <targetxml>text</targetxml> when <sourcexml>p/text/emph</sourcexml> contains
              first <sourcexml>ci:cite</sourcexml> in <sourcexml>bodytext
                searchtype="COMMENTARY"</sourcexml> the earlier update is conflicting CCLD
              document.</xref>
          </li>
        </ul>
      </p>
    </section>
    
    <section>
      <title>Dictionary 2.5 PROD</title>
      <p>2015-01-13
      <ul>
        <li>
          <xref href="../../../Rosetta/DITA-CAN/CA12-Dictionaries/CA12_CA-Dictionaries_level.dita">2015-01-13 - level id-CA12-15015: We have remove the Verbage along with its
            example when we have Xpath in our
            target<targetxml>/dict:dictionary/dict:body[1]/dict:defitem[1]/tei:entry[1]/tei:def[1]/pgrp[1]/p[1]/[ref:anchor/@id="dict-CASENAME-CITE"]/text[1]</targetxml>
            as it is conflicting our scenario
            <sourcexml>text@searchtype="CASE-NAME"</sourcexml>.</xref>
        </li>
      </ul>
      </p>
    </section>
    
    <section>
      <title>Dictionary 2.5 PROD</title>
      <p>2015-01-09
        <ul>
          <li>
            <xref href="../../../Rosetta/DITA-CAN/CA12-Dictionaries/CA12_CA-Dictionaries_level.dita">2015-01-09 - level id-CA12-15015: We use one jump-to <targetxml>ref:anchor/@id="dict-CASENAME-CITE"</targetxml> in the target for both <sourcexml>CASE-NAME</sourcexml> and  <sourcexml>CITE</sourcexml> in the source </xref>
          </li>
          <li>
            <xref href="../../../Rosetta/DITA-CAN/CA12-Dictionaries/CA12_CA-Dictionaries_bodytext.dita">2015-01-09 - bodytext id-CA12-15008: Added an <targetxml>ref:anchor anchortype="local"
              id="dict-CASENAME-CITE"</targetxml> in between <targetxml>p</targetxml> and
              <targetxml>text</targetxml> when <sourcexml>text</sourcexml> contains first
              <sourcexml>ci:cite</sourcexml> in <sourcexml>bodytext
                searchtype="COMMENTARY"</sourcexml> the earlier update is conflicting so we use one jump-to <targetxml>dict-CASENAME-CITE</targetxml> for <sourcexml>CASE-NAME</sourcexml>and <sourcexml>CITE</sourcexml>applicable to CA12.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/DITA-CAN/CA12-Dictionaries/CA12_CA-Dictionaries_text-searchtype.dita">2015-01-09 - text/@searchtype id-CA12-15019: We use one jump-to
              <targetxml>ref:anchor/@id="dict-CASENAME-CITE"</targetxml> in the target for
              both <sourcexml>text/@searchtype="CASE-NAME"</sourcexml> and
              <sourcexml>CITE</sourcexml> in the source </xref>
          </li>
        </ul></p>
    </section>
    
    <section>
      <title>Dictionary 2.5 PROD</title>
      <p>2015-01-07
        <ul>
          <li>
            <xref href="../../../Rosetta/DITA-CAN/CA12-Dictionaries/CA12_CA-Dictionaries_bodytext.dita">2015-01-07 - bodytext id-CA12-15008: Added an <targetxml>ref:anchor anchortype="local"
              id="dict-CITATION"</targetxml> in between <targetxml>p</targetxml> and
              <targetxml>text</targetxml> when <sourcexml>text</sourcexml> contains first
              <sourcexml>ci:cite</sourcexml> in <sourcexml>bodytext
                searchtype="COMMENTARY"</sourcexml> applicable to CA12.</xref>
          </li>
        </ul></p>
    </section>
    <section>
      <title>Dictionary 2.5 PROD</title>
      <p>2014-12-15
        <ul>
          <li>
            <xref href="../../../Rosetta/DITA-CAN/CA12-Dictionaries/CA12_CA-Dictionaries_level.dita">2014-12-15 - level id-CA12-15015: Added ref:anchor element whenever there is an xpath in the target went like this 
              <targetxml>/dict:dictionary/dict:body[1]/dict:defitem[1]/tei:entry[1]/tei:def[1]/pgrp[1]/p[1]</targetxml> changes into 
              <targetxml>/dict:dictionary/dict:body[1]/dict:defitem[1]/tei:entry[1]/tei:def[1]/pgrp[1]/p[1]/[ref:anchor/@id="dict-CASE-NAME"]/text[1]</targetxml>
              Applicable to CA12.</xref>
          </li>
        </ul></p>
    </section>
    
    <section>
      <title>Dictionary 2.5 PROD</title>
      <p>2014-10-20
        <ul>
          <li>
            <xref href="../../../Rosetta/DITA-CAN/CA12-Dictionaries/CA12_CA-Dictionaries_text-searchtype.dita">2014-10-20 - text/@searchtype id-CA12-15019: Added instruction and example to suppress keywords from <sourcexml>text/@searchtype="CASE-NAME"/emph/@typestyle="bf"</sourcexml>. Applicable on CA12.</xref>
          </li>
        </ul></p>
    </section>
    
    <section>
      <title>Dictionary 2.5 PROD</title>
      <p>2014-10-07
      <ul>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_title-LxAdv-title.dita">2014-10-07 - title to title id-CCCC-10479: Removed instruction and example to convert attribute <sourcexml>@searchtype="DIGEST-SUBJECT"</sourcexml>. Applicable to CA12.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/DITA-CAN/CA12-Dictionaries/CA12_CA-Dictionaries_level.dita">2014-10-07 - level id-CA12-15015: Added note to suppress
            <targetxml>h</targetxml> when
            <sourcexml>comm:body/level/heading/title</sourcexml> is [A-Z] and
            <sourcexml>publication</sourcexml> is <b>"Canadian Construction Law
              Dictionary"</b>. Applicable to CA12.</xref>
        </li>
      </ul></p>
    </section>

    <section>
      <p>2014-08-20
      <ul>
        <li>
          <xref href="../../../Rosetta/DITA-CAN/CA12-Dictionaries/CA12_CA-Dictionaries_emph-searchtype.dita">2014-08-19 - emph/@searchtype id-CA12-15012: Added rule and example, when
            <sourcexml>emph</sourcexml> is having attribute value
            <sourcexml>@searchtype="JUDGES"</sourcexml> then conversion should move the
            <targetxml>text/emph</targetxml> into the previous <targetxml>p</targetxml>
            element. Applicable on CA12.</xref>
        </li>
      </ul></p>
    </section>
    
    <section>
      <p>
        2014-07-31
        <ul>
          <li>
            <xref href="../../../Rosetta/DITA-CAN/CA12-Dictionaries/CA12_CA-Dictionaries_text-searchtype.dita">2014-07-31 - text/@searchtype id-CA12-15019: Added instruction to create <targetxml>ref:anchor</targetxml> when source documents are having <sourcexml>text/@searchtype="CASE-NAME"</sourcexml>.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/DITA-CAN/CA12-Dictionaries/CA12_CA-Dictionaries_contrib.dita">2014-07-31 - contrib id-CA12-15011: Added note that <targetxml>person:contributor</targetxml> is not an mandatory element and conversion should create <targetxml>person:contributor</targetxml> if <sourcexml>comm:info/contrib</sourcexml> is in the source document. R4.5 Issue #1754, this immediately applies to CA12.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_pgrp_searchtype-LxAdv-pgrp.dita">2014-07-31 - pgrp/@searchtype="QUOTED-TEXT" id-CCCC-10432: Updated target mapping and snippet, R4.5 Issue #1764, this immediately applies to CA12.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_table-LxAdv-table.dita">2014-07-08 - table to table id-CCCC-10475: Updated instruction for added the
              following rarely occurring attributes <sourcexml>@char</sourcexml> inside the <sourcexml>entry</sourcexml>.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_inlineobject-LxAdv-ref.inlineobject.dita">2014-07-08 - inlineobject to ref:inlineobject id-CCCC-10369: Not a rule change. Clarification added to note regarding suppression of <sourcexml>inlineobject</sourcexml> when <sourcexml>inlineobject/@filename</sourcexml> contains certain values.</xref>
          </li>
        </ul>
      </p>
    </section>

    <section>
      <p>
        2014-06-05
        <ul>
            <li>
              <xref href="../../../Rosetta/common_newest/Rosetta_CA_emp-Chof-heading_title-LxAdv-heading_title.dita">2014-06-04 - heading/title/emph/@typestyle="bf" to heading/title id-CCCC-10495: Created this instruction specifically for all Canadian streams. (Response to discussion board issue #91 particularly concerning streams CA09, CA10, CA11, and CA12.)</xref>
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
        </ul>
      </p>
    </section>
    <section>
      <p>2014-04-23 <ul>
          <li>
            <xref href="../../../Rosetta/DITA-CAN/CA12-Dictionaries/CA12_CA-Dictionaries_level.dita">2014-04-23 - level: Corrected target mapping for scenario 1, These instructions apply
              immediately to CA12.</xref>
          </li>
        </ul></p>
    </section>
    
    <section>
      <p>2014-03-13
        <ul>
          <li>
            <xref href="../../common_newest/Rosetta_inlineobject-LxAdv-ref.inlineobject.dita">2014-03-13 - Added new DITA of <sourcexml>inlineobject</sourcexml>.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_sup-LxAdv-sup.dita">2014-03-13 - Added new DITA of <sourcexml>sup</sourcexml>.</xref>
          </li>
          <li>
            <xref href="../../DITA-CAN/CA12-Dictionaries/CA12_CA-Dictionaries_p_inlineobject.dita">2014-03-13 - p/inlineobject: Added Instruction for <sourcexml>p/inlineobject</sourcexml>, These instructions apply immediately to CA12.</xref>
          </li>
        </ul>
      </p>
    </section>
    
    <section>
      <p>2014-02-11
        <ul>
          <li>
            <xref href="../../DITA-CAN/CA12-Dictionaries/CA12_CA-Dictionaries_level.dita">2014-02-11 - level: Added new scenario 4 and updated target snippet in scenario 1, These instructions apply immediately to CA01.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_docinfo.doc-heading-LxAdv-dc.title.dita">2014-02-11 - docinfo:doc-heading to dc:title: Updated note when <sourcexml>emph</sourcexml> is
              child of <sourcexml>docinfo:doc-heading</sourcexml> then suppress
              <sourcexml>emph</sourcexml> element and retain its content in
              <targetxml>dc:title</targetxml>, These instructions apply immediately to
              CA01.</xref>
          </li>
        </ul>
      </p>
    </section>
    <section>
      <p>2014-01-19
        <ul>
          <li>
            <xref href="../../common_newest/Rosetta_Elements-LxAdv-Empty_Elements.dita">2014-01-16 - Suppress each empty element unless otherwise stated: Added list of elements to suppress if empty.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_l-LxAdv-list.dita">2014-01-06 - l to list: Added mapping instruction for nested lists.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_CAN_docinfo.custom-metafields-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta.meta.metaitem.dita">2013-12-04 - docinfo:custom-metafields to doc:legacy-metadata[@metadatasource="lbu-meta"]/meta/metaitem: Updated target example for retaining "date" and "court" in target example.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_docinfo.doc-heading-LxAdv-dc.title.dita">2013-10-18 - docinfo:doc-heading to dc:title: Updated Instruction when <sourcexml>docinfo:doc-heading</sourcexml> contains word RULE: " or STATUTE: .</xref>
          </li>
        </ul>
      </p>
    </section>
    <section>
      <title/>
      <p>2013-10-07
      <ul>
        <li>
          <xref href="../../common_newest/Rosetta_Elements-LxAdv-Empty_Elements.dita">2013-10-07 - Added new instruction for Empty Elements.</xref>
        </li>
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
          <xref href="../../common_newest/Rosetta_docinfo.lbu-meta-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta-scheme.dita">2013-08-12 - docinfo:lbu-meta to doc:legacy-metadata[@metadatasource="lbu-meta"]: We removed the docinfo:lbu-meta "include" list so now there is only a "drop" list. Anything not on the "drop" list should be passed through. Webteam 230557.</xref>
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
          <xref href="../../common_newest/Rosetta_docinfo.lbu-meta-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta-scheme.dita">2013-08-02 - docinfo:lbu-meta to doc:legacy-metadata[@metadatasource="lbu-meta"]: Added <sourcexml>@name="selection_criteria_variant"</sourcexml> to the list of values in docinfo:metaitem/@name that should be retained. And added a example.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_CAN_docinfo.custom-metafields-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta.meta.metaitem.dita">2013-08-01 - docinfo:custom-metafields to doc:legacy-metadata[@metadatasource="lbu-meta"]/meta/metaitem: Updated target example for retaining "JURIS-SORT", "COURT-SORT" and "TERM-SORT" in target example.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_docinfo.doc-heading-LxAdv-dc.title.dita">2013-08-01 - docinfo:doc-heading to dc:title: For Canada Content streams: Added a note and examples, when <sourcexml>docinfo:doc-heading</sourcexml> contains <sourcexml>nl</sourcexml> as a child element.</xref>
        </li>
      </ul>
      </p>
   </section>
    
    
    <section>
      <title/>
      <p>2013-07-31
        <ul>
          <li>
            <xref href="../../common_newest/Rosetta_title-LxAdv-title.dita">2013-07-30 - title to title: Updated Instruction when <sourcexml>title</sourcexml> contains word "TITLE: " or "NAME: ".</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_docinfo.doc-heading-LxAdv-dc.title.dita">2013-07-30 - docinfo:doc-heading to dc:title: Added Instruction when <sourcexml>docinfo:doc-heading</sourcexml> contains word "TITLE: " or NAME: .</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_docinfo-LxAdv-doc.metadata_doc.docinfo.dita">2013-07-18 - docinfo to doc:metadata/doc:docinfo: Added
              <sourcexml>@excludefromalerts</sourcexml> as one of the
              <sourcexml>docinfo</sourcexml> attributes to carry through</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_docinfo.doc-lang-and-doc-country-LxAdv-ROOT_xml.lang.dita">2013-07-16 - docinfo:doc-lang and docinfo:doc-country to @xml:lang and @xml:ID: Instruction narrative edited for language; no changes to mappings, no impact to stylesheets.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_title-LxAdv-title.dita">2013-07-05 - title to title: Added Instruction when <sourcexml>title</sourcexml> contains word "TITLE: ".</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_CAN_docinfo.custom-metafields-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta.meta.metaitem.dita">2013-06-04 - docinfo:custom-metafields to doc:legacy-metadata[@metadatasource="lbu-meta"]/meta/metaitem: Consolidated narrative and examples for clarity.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_docinfo.lbu-meta-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta-scheme.dita">2013-05-31 - docinfo:lbu-meta to doc:legacy-metadata[@metadatasource="lbu-meta"]: Added "document-type" to the list of values
              in docinfo:metaitem/@name that should be retained.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_CAN_docinfo.custom-metafields-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta.meta.metaitem.dita">2013-05-24 - docinfo:custom-metafields to doc:legacy-metadata[@metadatasource="lbu-meta"]/meta/metaitem: Instruction and example added for handling of
              <sourcexml>docinfo:custom-metafield/@name="pageestimate"</sourcexml>.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_CAN_docinfo.custom-metafields-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta.meta.metaitem.dita">2013-05-20 - docinfo:custom-metafields to doc:legacy-metadata[@metadatasource="lbu-meta"]/meta/metaitem: Removed Canada content stream codes from
              instruction since its a Canada specific rule and will be applicable to all the
              content streams.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_docinfo-LxAdv-doc.metadata_doc.docinfo.dita">2013-05-16 - docinfo to doc:metadata/doc:docinfo: Fixed typo updating urn:contentitem to
              urn:contentItem</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_CAN_docinfo.custom-metafields-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta.meta.metaitem.dita">2013-05-13 - docinfo:custom-metafields to doc:legacy-metadata[@metadatasource="lbu-meta"]/meta/metaitem: Example added for handling of
              <sourcexml>docinfo:custom-metafields/@name="reg-no"</sourcexml>.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_blockquote-LxAdv-blockquote.dita">2013-05-08 - blockquote to blockquote: Extended the list of allowable values for image handling.</xref>
          </li>
          <li>
            <xref href="../../DITA-CAN/CA12-Dictionaries/CA12_CA-Dictionaries_level.dita">2013-05-03 - level: Updated snippet for Scenario 2.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_blockquote-LxAdv-blockquote.dita">2013-05-01 - blockquote to blockquote: Removed instructions for section
              "Pre-Release 4.0" because according to latest Apollo markup, section
              "Release 4.0 and after" and section "Pre-Release 4.0" now have
              similar conversion markup.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2013-05-01 - ci.cite to lnci.cite: Removed special rule for
              <sourcexml>ci:cite/ci:content/remotelink</sourcexml> which required
              suppression of <sourcexml>ci:cite/ci:content</sourcexml> tags. The elements are
              now retained and convert according to common rules.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_blockquote-LxAdv-blockquote.dita">2013-04-30 - blockquote to blockquote: Updated target sample according to latest Apollo markup.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_CAN_docinfo.custom-metafields-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta.meta.metaitem.dita">2013-04-29 - docinfo:custom-metafields to doc:legacy-metadata[@metadatasource="lbu-meta"]/meta/metaitem: Instructions and example added for handling
              various scenarios of <sourcexml>docinfo:custom-metafields</sourcexml> for
              CA06-Regs and CA08-Const.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2013-04-24 - ci.cite to lnci.cite: Added a mapping for
              <sourcexml>ci:procphrase</sourcexml> to
              <sourcexml>lnci:procphrase</sourcexml>
            </xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_docinfo.doc-lang-and-doc-country-LxAdv-ROOT_xml.lang.dita">2013-04-19 - docinfo:doc-lang and docinfo:doc-country to @xml:lang and @xml:ID: Added note about applicability of
              restrictions and required modifications for <targetxml>xml:id</targetxml> to
              other scenarios.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_CAN_docinfo.custom-metafields-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta.meta.metaitem.dita">2013-04-18 - docinfo:custom-metafields to doc:legacy-metadata[@metadatasource="lbu-meta"]/meta/metaitem: Instructions and example added for handling
              various scenarios of <sourcexml>docinfo:custom-metafields</sourcexml> for CA
              Acts and Bills.</xref>
          </li>
        </ul>
      </p>
    </section>
    <section>
      <title/>
      <p>2013-05-03
        <ul>
          <li>
            <xref href="../../DITA-CAN/CA12-Dictionaries/CA12_CA-Dictionaries_level.dita">2013-05-03 - level: Updated snippet for Scenario 2.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_blockquote-LxAdv-blockquote.dita">2013-05-01 - blockquote to blockquote: Removed instructions for section
              "Pre-Release 4.0" because according to latest Apollo markup, section
              "Release 4.0 and after" and section "Pre-Release 4.0" now have
              similar conversion markup.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2013-05-01 - ci.cite to lnci.cite: Removed special rule for
              <sourcexml>ci:cite/ci:content/remotelink</sourcexml> which required
              suppression of <sourcexml>ci:cite/ci:content</sourcexml> tags. The elements are
              now retained and convert according to common rules.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_blockquote-LxAdv-blockquote.dita">2013-04-30 - blockquote to blockquote: Updated target sample according to latest Apollo markup.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2013-04-24 - ci.cite to lnci.cite: Added a mapping for
              <sourcexml>ci:procphrase</sourcexml> to
              <sourcexml>lnci:procphrase</sourcexml>
            </xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_docinfo.doc-lang-and-doc-country-LxAdv-ROOT_xml.lang.dita">2013-04-19 - docinfo:doc-lang and docinfo:doc-country to @xml:lang and @xml:ID: Added note about applicability of
              restrictions and required modifications for <targetxml>xml:id</targetxml> to
              other scenarios.</xref>
          </li>
          <li>
            <xref href="../../DITA-CAN/CA12-Dictionaries/CA12_CA-Dictionaries_level.dita">2013-04-16 - level: Added Instruction for <sourcexml>level/heading/title/@searchtype="DOC-HEADING CHAPTER-TITLE"</sourcexml>.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_docinfo.custom-metafields-LxAdv-SUPPRESS.dita">2013-04-16 - docinfo:custom-metafields is SUPPRESSED: Updated the instruction of handling
              <sourcexml>docinfo:custom-metafield[@name="JURIS-SORT"]</sourcexml>, <sourcexml>docinfo:custom-metafield[@name="COURT-SORT"]</sourcexml>, and <sourcexml>docinfo:custom-metafield[@name="TERM-SORT"]</sourcexml> markup in CA Dictionary content stream.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_docinfo.lbu-meta-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta-scheme.dita">2013-04-09 - docinfo:lbu-meta to doc:legacy-metadata[@metadatasource="lbu-meta"]: Added the instruction for handling <sourcexml>docinfo:metaitem[@name="QLDB"]</sourcexml>.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_docinfo.custom-metafields-LxAdv-SUPPRESS.dita">2013-03-20 - docinfo:custom-metafields is SUPPRESSED: Updated the instruction of handling
              <sourcexml>docinfo:custom-metafield[@name="dpsi"]</sourcexml>
              markup in CA content stream.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_docinfo.doc-id-LxAdv-dcidentifier_lnmetaidentifier-scheme.dita">2013-03-20 - docinfo:doc-id to dc:identifier[@lnmeta:identifier-scheme]: Updated the information on handling the
              situation when <sourcexml>docinfo:dpsi[@id-string]</sourcexml> is absent with
              instructions to get the dpsi from
              <sourcexml>docinfo/docinfo:custom-metafields/docinfo:custom-metafield[@name="dpsi"]</sourcexml>.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_p-LxAdv-p.dita">2013-03-14 - p to p: Add instruction and example <sourcexml>p/@style</sourcexml>.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_pgrp-LxAdv-pgrp.dita">2013-03-14 - pgrp to pgrp: Add instruction and example <sourcexml>pgrp/@id</sourcexml>.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_nl-LxAdv-proc.nl.dita">2013-03-14 - nl to proc:nl: Add instruction and example <sourcexml>nl/@n</sourcexml>.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_heading-LxAdv-heading.dita">2013-03-06 - heading to heading: Removed instructions/rules for exceptional desig scenario and deprecated
              attribute <targetxml>@followstitle</targetxml>.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_blockquote-LxAdv-blockquote.dita">2013-02-18 - blockquote to blockquote: Created two sections, one for "Release 4.0 and after" and another for "Pre-Release 4.0".</xref>
          </li>
        </ul></p>
    </section>
    <section>
      <title/>
      <p>2013-04-16 
        <ul>
          <li>
            <xref href="../../DITA-CAN/CA12-Dictionaries/CA12_CA-Dictionaries_level.dita">2013-04-16 - level: Added Instruction for <sourcexml>level/heading/title/@searchtype="DOC-HEADING CHAPTER-TITLE"</sourcexml>.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_docinfo.custom-metafields-LxAdv-SUPPRESS.dita">2013-04-16: - docinfo:custom-metafield: Updated the instruction of handling
              <sourcexml>docinfo:custom-metafield[@name="JURIS-SORT"]</sourcexml>, <sourcexml>docinfo:custom-metafield[@name="COURT-SORT"]</sourcexml>, and <sourcexml>docinfo:custom-metafield[@name="TERM-SORT"]</sourcexml> markup in CA Dictionary content stream.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_docinfo.lbu-meta-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta-scheme.dita">2013-04-09 - docinfo:lbu-meta to doc:legacy-metadata[@metadatasource="lbu-meta"]: Added the instruction for handling <sourcexml>docinfo:metaitem[@name="QLDB"]</sourcexml>.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_docinfo.doc-id-LxAdv-dcidentifier_lnmetaidentifier-scheme.dita">2013-03-20 - docinfo:doc-id to dc:identifier[@lnmeta:identifier-scheme]: Updated the information on handling the
              situation when <sourcexml>docinfo:dpsi[@id-string]</sourcexml> is absent with
              instructions to get the dpsi from
              <sourcexml>docinfo/docinfo:custom-metafields/docinfo:custom-metafield[@name="dpsi"]</sourcexml>.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_p-LxAdv-p.dita">2013-03-14 - p to p: Add instruction and example <sourcexml>p/@style</sourcexml>.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_pgrp-LxAdv-pgrp.dita">2013-03-14 - pgrp to pgrp: Add instruction and example <sourcexml>pgrp/@id</sourcexml>.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_nl-LxAdv-proc.nl.dita">2013-03-14 - nl to proc:nl: Add instruction and example <sourcexml>nl/@n</sourcexml>.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_heading-LxAdv-heading.dita">2013-03-06 - heading to heading: Removed instructions/rules for exceptional desig scenario and deprecated
              attribute <targetxml>@followstitle</targetxml>.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_blockquote-LxAdv-blockquote.dita">2013-02-18 - blockquote to blockquote: Created two sections, one for "Release 4.0 and after" and another for "Pre-Release 4.0".</xref>
          </li>
        </ul>
      </p>
    </section>
    <section>
      <title/>
      <p>2013-02-13 <ul>
          <li>Updated instruction for <sourcexml>heading/title/emph/defterm</sourcexml>.</li>
          <li>Element name corrected <targetxml>defitem</targetxml> to
              <targetxml>defterm</targetxml> in <sourcexml>level</sourcexml> dita.</li>
        </ul></p>
    </section>
    <section>
      <title/>
      <p>2013-01-28 <ul>
          <li>Removed CR number to allow <targetxml>hrule</targetxml> to the content model of
              <targetxml>blockquote</targetxml>.</li>
        </ul></p>
    </section>
    <section>
      <title>Change log created</title>
      <p>2013-01-17</p>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA12-Dictionaries\CA12_CA-Dictionaries_Change-Log.dita  -->
	<xsl:message>CA12_CA-Dictionaries_Change-Log.xsl requires manual development!</xsl:message> 

</xsl:stylesheet>