<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:ci="http://www.lexis-nexis.com/ci" xmlns:source_dict="http://www.lexis-nexis.com/glp/dict" xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:source_lnci="http://www.lexis-nexis.com/lnci" xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" xmlns:lnci="http://www.lexisnexis.com/xmlschemas/content/shared/citations/1/" xmlns:person="http://www.lexisnexis.com/xmlschemas/content/shared/person/1/" xmlns:proc="http://www.lexisnexis.com/xmlschemas/content/shared/process-elements/1/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" xmlns:tei="http://www.tei-c.org/ns/1.0/" version="2.0" exclude-result-prefixes="dita ci dict docinfo leg lnci">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="AU21_LegalTopicSum-change-log">
  <title>Change Log</title>
  <body>  
    
    <section>
      <title>Dictionary 2.5_PROD</title>
      
      <p>2016-08-16</p>
      <ul>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_PAC_docinfo.doc-id-LxAdv-dcidentifier_lnmetaidentifier-scheme.dita">2016-08-03 - docinfo:doc-id to dc:identifier[@lnmeta:identifier-scheme] id-CCCC-10550: Created the rule to, Check manifest file for
            DPSI value and create new element
            <targetxml>dc:metadata/dc:source[@lnmeta:sourcescheme]</targetxml>
          </xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2016-08-03 - remotelink to ref:crossreference id-CCCC-10465: Added Note about xml snippets that illustrate
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
          <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2016-07-29 - docinfo:assoc-links to doc:related-content id-CCCC-10284: Added Note about xml snippets that illustrate image
            handling. Note summarizes move from Apollo to Blobstore application. UK is first LBU to
            move to Blobstore.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_refpt-Chof-p_text_emph-LxAdv-p_ref.anchor.dita">2016-07-27 - refpt child of p/text/emph to p/ref:anchor id-CCCC-10457: Added a note for handling of text which is
            comes under the <sourcexml>refpt</sourcexml> in source.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_refpt-Chof-p_text-LxAdv-p_ref.anchor.dita">2016-04-28 - refpt child of p/text to p/ref:anchor id-CCCC-10456: Added one more source and target example.</xref>
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
          <xref href="../../../Rosetta/common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2016-02-05 - remotelink to ref:crossreference id-CCCC-10465: Added note and example when
            <sourcexml>remotelink</sourcexml> is a child of <sourcexml>emph</sourcexml>. Applicable
            on NZ17CC, Webstar: 319232 and 318735.</xref>
        </li>
      </ul>
    </section>
    <section>
      <title>Dictionary 2.5_PROD</title>
      
      <p>2015-03-12 MLV:
        <ul>
          <li>
            <xref href="../../../Rosetta/DITA-PAC/AU21_Legal_Topic_Summaries/AU21_LegalTopicSum-subtopic.dita">2015-03-12 - Modified instructions for conversion of author names to be a part of the <targetxml>figure</targetxml> content.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/DITA-PAC/AU21_Legal_Topic_Summaries/AU21_LegalTopicSum-subtopic.dita">2015-03-12 - dict:subtopic to tei:entry id-AU21-22414: Added instructions for conversion of <sourcexml>dict:subtopic/p/text/remotelink</sourcexml> to 
              <targetxml>tei:def/pgrp/p/text/ref:crossreference</targetxml> and mapping <sourcexml>remotelink/inlineobject</sourcexml> to <targetxml>ref:crossreference/ref:content/ref:inlineobject</targetxml>
            </xref>
          </li>
          <li>
            <xref href="../../../Rosetta/DITA-PAC/AU21_Legal_Topic_Summaries/AU21_LegalTopicSum-Index.dita">2015-03-12 - index to tei:sense/pgrp/section/index:index id-AU21-22411: Removed references to link and anchor from <targetxml>index/heading/title</targetxml>
            </xref>
          </li>
          <li>
            <xref href="../../../Rosetta/DITA-PAC/AU21_Legal_Topic_Summaries/AU21_LegalTopicSum-subtopic.dita">2015-02-24 - dict:subtopic to tei:entry id-AU21-22414: Adjusted documentation to show an example of a id value {value such as BANKRUPTCY}, but the example uses a real value.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/DITA-PAC/AU21_Legal_Topic_Summaries/AU21_LegalTopicSum-subtopic.dita">2015-02-24 - dict:subtopic to tei:entry id-AU21-22414: Added further instructions for mapping <sourcexml>dict:subtopic[@id="CASE:{value such as BANKRUPTCY}"]/p/text/remotelink/inlineobject</sourcexml>
              to <targetxml>tei:entry/tei:def/pgrp/p/text/ref:crossreference/ref:content/ref:inlineobject</targetxml>
            </xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2015-02-24 - ci.cite to lnci.cite id-CCCC-10268: Example updated as per new rule an attribute <targetxml>@inline</targetxml>get added with <targetxml>desig</targetxml>element when the source<sourcexml>pnum</sourcexml>is not having that attribute<sourcexml>@inline</sourcexml>
            </xref>
          </li>
        </ul>
      </p>
      
      <p>2015-02-09 MLV:
        <ul>
          <li>
            <xref href="../../../Rosetta/DITA-PAC/AU21_Legal_Topic_Summaries/AU21_LegalTopicSum_equivalent-term.dita">2015-02-09 - dict:equivalent-term to tei:usg id-AU21-22417: Added new example that includes a <sourcexml>dict:equivalent-term/remotelink</sourcexml> that maps to <targetxml>tei:usg//ref:crossreference</targetxml>.</xref>
          </li>
        </ul>
      </p>
      
      <p>2015-02-03 MLV:
        <ul>
          <li>
            <xref href="../../../Rosetta/DITA-PAC/AU21_Legal_Topic_Summaries/AU21_LegalTopicSum-subtopic.dita">2015-02-03 - dict:subtopic to tei:entry id-AU21-22414: Modified example for TARGET dict:subtopic[@id="CASE:XYZ"] and <targetxml>ref:content</targetxml> element because
              the citator alert information does not require text, just the icon image.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/DITA-PAC/AU21_Legal_Topic_Summaries/AU21_LegalTopicSum-subtopic.dita">2015-02-03 - dict:subtopic to tei:entry id-AU21-22414: Modified instruction for target byline as a sibling of figure.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/DITA-PAC/AU21_Legal_Topic_Summaries/AU21_LegalTopicSum-Index.dita">2015-02-03 - index to tei:sense/pgrp/section/index:index id-AU21-22411: Modified mapping of <sourcexml>index/heading/title</sourcexml>.</xref>
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
        </ul>
      </p>
      <p>2015-01-12 MLV:
        <ul>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2015-01-15 - docinfo:assoc-links to doc:related-content id-CCCC-10284: For CA03- Convert the QUERY link to doc:related-content. Refer Example 10. R4.5 RFA #2099.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2015-01-13 - docinfo:assoc-links to doc:related-content id-CCCC-10284: For CA05 - CA08 Conversion Needs to split
              multiple ORs into a separate <targetxml>doc:related-content-item</targetxml>. Refer
              Example 9</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/DITA-PAC/AU21_Legal_Topic_Summaries/AU21_LegalTopicSum-subtopic.dita">2015-01-12 - dict:subtopic to tei:entry id-AU21-22414: Added instructions for adding citator signals to Key Cases.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/DITA-PAC/AU21_Legal_Topic_Summaries/AU21_LegalTopicSum-subtopic.dita">2015-01-12 - dict:subtopic to tei:entry id-AU21-22414: Added instructions for mapping books section icons and links into the correct ordering based on UX review.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/DITA-PAC/AU21_Legal_Topic_Summaries/AU21_LegalTopicSum-Index.dita">2015-01-12 - index to tei:sense/pgrp/section/index:index id-AU21-22411: Added instructions/sample to include pinpoint reference for pop-up within the topic index.</xref>
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
            <xref href="../../../Rosetta/common_newest/Rosetta_remotelink-Chof-url-LxAdv-url.dita">2015-01-09 - url/remotelink to url id-CCCC-10464: Within use case that maps to
              <targetxml>ref:lnlink</targetxml>, added exceptional rule to not concatenate values when
              <sourcexml>@hrefclass</sourcexml> content is already present in
              <sourcexml>@href</sourcexml>. Expanded example to illustrate the scenario. Responds to
              data for UK10 Dictionaries but applies in general. R4.5 Content Issue 2120.</xref>
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
        </ul>
        
      </p>
      
      <p>2014-11-10 MLV: 
        <ul>
          <li>
            <xref href="../../../Rosetta/DITA-PAC/AU21_Legal_Topic_Summaries/AU21_LegalTopicSum-subtopic.dita">2014-11-10 - dict:subtopic to tei:entry id-AU21-22414: Added instruction for mapping for Legal Topic Path source content <sourcexml>dict:body/dict:term-entry/dict:definition/dict:subtopic</sourcexml> to
              <targetxml>tei:entry/tei:usg[@type="context"]/classify:keywords[@classscheme="topicPath"]</targetxml>.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.overview-LxAdv-docinfo.overview.dita">2014-11-04 - docinfo:overview to doc:overview id-CCCC-10303: Clarification only: added text to explicitly indicate that the child <targetxml>doc:overview/bodytext</targetxml> should be created. Not a change to instructions.</xref>
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
            <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.overview-LxAdv-docinfo.overview.dita">2014-10-21 - docinfo:overview to doc:overview id-CCCC-10303: added to UK09 ditamap.</xref>
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
            <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.doc-id-LxAdv-dcidentifier_lnmetaidentifier-scheme.dita">2014-06-23 - docinfo:doc-id to dc:identifier[@lnmeta:identifier-scheme] id-CCCC-10293: Note and Example removed - For CA05 Acts and
              Bills- Mapping in dc:identifier for act-no and chunk-no. Db issue #1464</xref>
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
            <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.doc-id-LxAdv-dcidentifier_lnmetaidentifier-scheme.dita">2014-05-21 - docinfo:doc-id to dc:identifier[@lnmeta:identifier-scheme] id-CCCC-10293: For CA05 Acts and Bills- Mapping in dc:identifier for act-no and chunk-no.. Db issue #1464 </xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_p-LxAdv-p.dita">2014-04-14 - p to p id-CCCC-10424: Removed Colons from Labels.. DB item #1255</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2014-02-25 - remotelink to ref:crossreference id-CCCC-10465: Updated instruction and created new example (#16)
              for handling <sourcexml>remotelink[@service="QUERY"]</sourcexml>. New instruction
              preserves pcdata but suppresses <sourcexml>remotelink</sourcexml> markup. Webstar #250335.
              Change applies immediately to all Pacific streams, and in the long run to all
              streams.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.doc-heading-LxAdv-dc.title.dita">2014-02-11 - docinfo:doc-heading to dc:title id-CCCC-10292: Updated note when <sourcexml>emph</sourcexml> is
              child of <sourcexml>docinfo:doc-heading</sourcexml> then suppress
              <sourcexml>emph</sourcexml> element and retain its content in
              <targetxml>dc:title</targetxml>, These instructions apply immediately to
              CA12.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2014-02-03 - remotelink to ref:crossreference id-CCCC-10465: Instruction updated if
              <sourcexml>remotelink</sourcexml> occurs as multiple, immediate siblings and without
              intermediary text within <sourcexml>title</sourcexml>. Also added a example for the same
              scenario. Phase 5 UK discussion-defect tracking issue #161</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_text-LxAdv-text.dita">2014-01-31 - text to text id-CCCC-10477: Updated instruction, <targetxml>align</targetxml> will be moved in <targetxml>p</targetxml> in NL conversion. NZ09 commentary discussion board issue for handling <sourcexml>text/@align</sourcexml>
            </xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_Elements-LxAdv-Empty_Elements.dita">2014-01-16 - Suppress each empty element unless otherwise stated id-CCCC-10310: Added list of elements to suppress if empty.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_l-LxAdv-list.dita">2014-01-06 - l to list id-CCCC-10372: Added mapping instruction for nested lists.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_Topic_Identifiers.dita">2014--0-5- - Topic Identifiers id-CCCC-10481: Created.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2013-12-30 - ci.cite to lnci.cite id-CCCC-10268: Minor illustrative change. Added "(AU
              Journals/Newsitem)" to headings for last example to clarify that retention of
              <sourcexml>@type="cite4thisdoc"</sourcexml> is an exception for that
              content, as already described in narrative rules.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_endnote-LxAdv-endnote.dita">2013-12-18 - endnote to endnote id-CCCC-10317: Instruction added to convert <sourcexml>remotelink/@refpt</sourcexml> to <targetxml>footnote-ref/@anchoridref</targetxml>.  WebTeam #5158742 - AU04. Applies generally to all LBUs and streams.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_p-LxAdv-p.dita">2013-12-04 - p to p id-CCCC-10424: Updated target example when <sourcexml>p</sourcexml> or <sourcexml>p/@nl="0"</sourcexml> comes in <sourcexml>references</sourcexml>, this change directly affects NZ07.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_p-LxAdv-p.dita">2013-11-21 - p to p id-CCCC-10424: Updated instruction and example <sourcexml>p</sourcexml> or <sourcexml>p/@nl="0"</sourcexml> comes in <sourcexml>references</sourcexml>, this change directly affects NZ07.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_UK_docinfo.custom-metafields-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta.meta.metaitem.dita">2013-11-20 - docinfo:custom-metafields to doc:legacy-metadata[@metadatasource="lbu-meta"]/meta/metaitem id-CCCC-10485: Added instruction to handle
              <sourcexml>docinfo:custom-metafields/docinfo:custom-metafield/@name="jurisdiction"</sourcexml>
              is "European"  Webteam # 239816 </xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.currencystatement-LxAdv-currencystatement.dita">2013-10-29 - docinfo:currencystatement to doc:docinfo/currencystatement id-CCCC-10289: WebTeam #233318 created for pacific content stream inorder to suppress <sourcexml>docinfo:currencystatement</sourcexml> with in <sourcexml>leg:levelinfo</sourcexml> and <sourcexml>levelinfo</sourcexml>.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.overview-LxAdv-docinfo.overview.dita">2013-10-29 - docinfo:overview to doc:overview id-CCCC-10303: WebTeam #233318 created for pacific content stream inorder to suppress <sourcexml>docinfo:overview</sourcexml> with in <sourcexml>leg:levelinfo</sourcexml> and <sourcexml>levelinfo</sourcexml>.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_p-LxAdv-p.dita">2013-10-25 - p to p id-CCCC-10424: Added instruction and example <sourcexml>p/@nl="0"</sourcexml> comes in <sourcexml>references</sourcexml>.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-10-23 - remotelink to ref:crossreference id-CCCC-10465: Added Example when
              <sourcexml>remotelink</sourcexml> having child <sourcexml>emph</sourcexml>. Webteam #
              239816</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_edpnum-LxAdv-desig.dita">2013-10-22 - edpnum to desig id-CCCC-10308: Not a rule change. Modified 2nd example for
              clarity. Removed <sourcexml>refpt</sourcexml> from source markup. Not pertinent
              to <sourcexml>edpnum</sourcexml> rules. Separate rules for
              <sourcexml>refpt</sourcexml> provide details. Responds to UK LBU
              query.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.doc-heading-LxAdv-dc.title.dita">2013-10-18 - docinfo:doc-heading to dc:title id-CCCC-10292: Updated Instruction when <sourcexml>docinfo:doc-heading</sourcexml> contains word RULE: " or STATUTE: .</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_Elements-LxAdv-Empty_Elements.dita">2013-10-14 - Suppress each empty element unless otherwise stated id-CCCC-10310: Changed antecedent to singular to match
              instructions.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.authorattribution-LxAdv-dc.contributor.dita">2013-10-11 - docinfo:authorattribution to dc:contributor id-CCCC-10287: Instruction added when <sourcexml>remotelink</sourcexml> as a child of <sourcexml>docinfo:authorattribution/contrib</sourcexml>. WebTeam # is 240252.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_refpt-Chof-p_text-LxAdv-p_ref.anchor.dita">2013-10-11 - refpt child of p/text to p/ref:anchor id-CCCC-10456: Added a note and update the target examples when refpt
              comes without attribute <sourcexml>[@type="ext"]</sourcexml> and
              <sourcexml>[@type="local"]</sourcexml> in source documents.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_refpt-Chof-p_text_emph-LxAdv-p_ref.anchor.dita">2013-10-11 - refpt child of p/text/emph to p/ref:anchor id-CCCC-10457: Added a note and update the target examples when refpt
              comes without attribute <sourcexml>[@type="ext"]</sourcexml> and
              <sourcexml>[@type="local"]</sourcexml> in source documents.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_p-LxAdv-p.dita">2013-10-09 - p to p id-CCCC-10424: Added instruction and example <sourcexml>p</sourcexml> comes with <sourcexml>@nl=”0”</sourcexml>.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.authorattribution-LxAdv-dc.contributor.dita">2013-10-08 - docinfo:authorattribution to dc:contributor id-CCCC-10287: Instruction added for handling
              <sourcexml>docinfo:authorattribution</sourcexml> when it is having a running
              text. Affects all Pacific content streams. WebTeam # is 238798.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_endnote-LxAdv-endnote.dita">2013-10-07 - endnote to endnote id-CCCC-10317: Instruction and example for added for the Xpath <sourcexml>leg:bodytext/glp:note/l/li</sourcexml> related to <targetxml>endnote</targetxml> handling. WebTeam # is 238790.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-10-03 - remotelink to ref:crossreference id-CCCC-10465: Added use case where remotelink contains @href
              which is a URL but does not contain @hrefclass='http'.</xref>
          </li>
        </ul>  
      </p>
    </section>
    
    <section>
      <title>Dictionary 2.2_PROD</title>
      <p>2013-10-01 BRT: <ul>
          <li>2013-10-01 - Deleted instructions for converting Rosetta &lt;link&gt; and &lt;lnlink&gt;
            from this CI document. All instances of &lt;link&gt; and &lt;lnlink&gt; have been converted to
            &lt;remotelink&gt; in the Rosetta source documents to simplify the conversion.</li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_link-LxAdv-ref.lnlink.dita">2013-09-24 - link to
              ref:lnlink/@service="ATTACHMENT": Not a rule change. Modified examples to illustrate
              when <sourcexml>@status</sourcexml> suppressed and when retained.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.authorattribution-LxAdv-dc.contributor.dita">2013-09-16 - docinfo:authorattribution to dc:contributor: Instruction added for
              suppressing <sourcexml>docinfo:authorattribution/contrib</sourcexml> when it is child
              of <sourcexml>leg:levelinfo</sourcexml> and <sourcexml>levelinfo</sourcexml>.Affects
              all Pacific content streams. WebTeam # is 234193.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.currencystatement-LxAdv-currencystatement.dita">2013-09-16 - docinfo:currencystatement to doc:docinfo/currencystatement: Instruction
              added for suppressing <sourcexml>docinfo:currencystatement</sourcexml> when it is
              child of <sourcexml>leg:levelinfo</sourcexml> and
              <sourcexml>levelinfo</sourcexml>.Affects all Pacific content streams. WebTeam # is
              234193.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.overview-LxAdv-docinfo.overview.dita">2013-09-16 - docinfo:overview to doc:overview: Instruction added for suppressing
                <sourcexml>docinfo:overview</sourcexml> when it is child of
                <sourcexml>leg:levelinfo</sourcexml> and <sourcexml>levelinfo</sourcexml>.Affects
              all Pacific content streams. WebTeam # is 234193.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_table-LxAdv-table.dita">2013-09-16 - table to
              table: Removed an obsolete note regarding visual styling of tables.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_table-LxAdv-table.dita">2013-09-12 - table to
              table: WebTeam #s 235116, 235130, 235126: Added instructions for deleting extraneous
              instances of @morerows, @colsep and @rowsep. These instructions apply immediately to
              all UK streams and also to AU18.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_title-LxAdv-title.dita">2013-09-03 - title to
              title: Updated Instruction when <sourcexml>title</sourcexml> contains word "TITLE: "
              or "NAME: " or "SITE: ".</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.doc-heading-LxAdv-dc.title.dita">2013-09-03 - docinfo:doc-heading to dc:title: Updated Instruction when
                <sourcexml>docinfo:doc-heading</sourcexml> contains word "TITLE: " or NAME: or SITE:
              or SUBJECT:.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_text-When_Contains_Only_Wihitespace_Or_NBSP_Entity.dita">2013-08-29 - Converting text When it Contains Only Whitespace or NBSP Entity: Created
              per WebStar: WebTeam #223114</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.authorattribution-LxAdv-dc.contributor.dita">2013-08-22 - docinfo:authorattribution to dc:contributor: Updated instruction and
              example when <sourcexml>person</sourcexml> is an child of
                <sourcexml>docinfo:authorattribution/contrib</sourcexml> and removed CR#
              DAAM2013080706295200. WebTeam # is 229509.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-08-22 - remotelink to ref:crossreference: Not a rule change. Modified Sample #10
              on <sourcexml>ci:cite/ci:content/remotelink</sourcexml>. Removed target attribute
                <targetxml>lnci:cite[@citeref]</targetxml> because value captured in
                <targetxml>ref:crossreference/ref:locator[@anchoridref]</targetxml>.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_link-LxAdv-ref.lnlink.dita">2013-08-21 - link to
              ref:lnlink/@service="ATTACHMENT": Added instruction for when to suppress
                <sourcexml>@status</sourcexml>.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.authorattribution-LxAdv-dc.contributor.dita">2013-08-13 - docinfo:authorattribution to dc:contributor: Added instruction and
              example when <sourcexml>person</sourcexml> is an child of
                <sourcexml>docinfo:authorattribution/contrib</sourcexml> and CR#
              DAAM2013080706295200 has been created to add <targetxml>person:person</targetxml> to
              the content model of <targetxml>dc:contributor</targetxml>.WebTeam # is 229509</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.lbu-meta-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta-scheme.dita">2013-08-12 - docinfo:lbu-meta to doc:legacy-metadata[@metadatasource="lbu-meta"]: We
              removed the docinfo:lbu-meta "include" list so now there is only a "drop" list.
              Anything not on the "drop" list should be passed through. Webteam 230557.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_remotelink-self-inter-document-link-LxAdv-intra-document-link.dita">2013-08-12 - remotelink (self inter-document link) to ref:lnlink (intra-document
              link): Changed module heading from ref:crossreference to ref:lnlink. NO instructions
              are changed. WebTeam # 230229. Affects all streams.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_docinfo-LxAdv-doc.metadata_doc.docinfo.dita">2013-08-09 - docinfo to doc:metadata/doc:docinfo: Added instruction for creating
                <targetxml>dc:date[@lnmeta:datetype="conversion-date"]</targetxml>. Previously,
              "conversion-date" was created only if "load-date" was not present. Going forward,
              conversion should always create "conversion-date". This is not a retroactive change.
              It should be applied only to streams developed after Aug. 9 2013.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_XML_Character_Entities-LxAdv-Unicode.dita">2013-08-08 - XML Character Entities to Unicode code points: This change does not
              represent a change to conversion but rather documentation of the existing
              behavior.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_remotelink-self-inter-document-link-LxAdv-intra-document-link.dita">2013-08-07 - remotelink (self inter-document link) to ref:lnlink (intra-document
              link): Changed target to <targetxml>ref:lnlink</targetxml>; formerly
                <targetxml>ref:crossreference</targetxml>. Changed because the only supported markup
              for intradoc linking is <targetxml>ref:lnlink</targetxml>, as per Bency Thomas.
              WebTeam # 230229. Affects all streams.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.lbu-meta-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta-scheme.dita">2013-08-02 - docinfo:lbu-meta to doc:legacy-metadata[@metadatasource="lbu-meta"]:
              Added <sourcexml>@name="selection_criteria_variant"</sourcexml> to the list of values
              in docinfo:metaitem/@name that should be retained. And added a example.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.doc-heading-LxAdv-dc.title.dita">2013-08-01 - docinfo:doc-heading to dc:title: For Canada Content streams: Added a
              note and examples, when <sourcexml>docinfo:doc-heading</sourcexml> contains
                <sourcexml>nl</sourcexml> as a child element.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_title-LxAdv-title.dita">2013-07-30 - title to
              title: Updated Instruction when <sourcexml>title</sourcexml> contains word "TITLE: "
              or "NAME: ".</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.doc-heading-LxAdv-dc.title.dita">2013-07-30 - docinfo:doc-heading to dc:title: Added Instruction when
                <sourcexml>docinfo:doc-heading</sourcexml> contains word "TITLE: " or NAME: .</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_docinfo-LxAdv-doc.metadata_doc.docinfo.dita">2013-07-18 - docinfo to doc:metadata/doc:docinfo: Added
                <sourcexml>@excludefromalerts</sourcexml> as one of the
                <sourcexml>docinfo</sourcexml> attributes to carry through</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_identifier-LxAdv-ID_data_type-HandlingPatternRestrictions.dita">2013-07-17 - Identifiers to ID Data Type - Handling Pattern Restrictions: Added
              instructions for handling leading/trailing space(s) and XML entities.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_docinfo.doc-lang-and-doc-country-LxAdv-ROOT_xml.lang.dita">2013-07-16 - docinfo:doc-lang and docinfo:doc-country to @xml:lang and @xml:ID:
              Instruction narrative edited for language; no changes to mappings, no impact to
              stylesheets.</xref>
          </li>
        </ul>
      </p>
    </section>
    <section>
      <title>Dictionary 1.0 PROD</title>
      <p>2013-07-12
        <ul>
          <li>
            <xref href="../../DITA-PAC/AU21_Legal_Topic_Summaries/AU21_LegalTopicSum-subtopic.dita">2013-07-12 - dict:subtopic to tei:entry: Added an instruction for the handling of
              special characters in attribute value
              of<sourcexml>dict:subtopic[@id="xxxx"]</sourcexml>.</xref>
          </li>
          <li>
            <xref href="../../DITA-PAC/AU21_Legal_Topic_Summaries/AU21_LegalTopicSum-Index.dita">2013-07-12 - index to tei:sense/pgrp/section/index:index: Added the conversion of
              <sourcexml>remotelink</sourcexml> to<targetxml>
                ref:crossreference</targetxml> in the Target XML example</xref>
          </li>
          <li> 2013-07-08 - lnlink to ref:lnlink: Removed the instructions for the <sourcexml>api-params/param name="attachment-smi"</sourcexml> because there is not occurence in the source data
          </li>
        </ul>
      </p>
    </section>
    <section>
      <title>Dictionary 1.0 PROD</title>
      <p>2013-07-01
      <ul>
        <li>
          <xref href="../../common_newest/Rosetta_link-LxAdv-ref.lnlink.dita">2013-07-01 added the common module for link to ref.lnlink</xref>
        </li>
        <li><xref href="../../common_newest/Rosetta_h-LxAdv-h.dita">2013-07-01 added the common module for Rosetta h to LxAdv h</xref></li>
        <li>
          <xref href="../../common_newest/Rosetta_docinfo.authorattribution-LxAdv-dc.contributor.dita">2013-06-25 - docinfo:authorattribution to dc:contributor: added to AU and NZ ditamap for content enrichment</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_docinfo.currencystatement-LxAdv-currencystatement.dita">2013-06-25 - docinfo:currencystatement to doc:docinfo/currencystatement: added to AU and NZ ditamap for content enrichment</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_docinfo.overview-LxAdv-docinfo.overview.dita">2013-06-25 - docinfo:overview to doc:overview: added to AU and NZ ditamap for content enrichment</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-06-03 - remotelink to ref:crossreference: Updated the Target XML 2 by removing the <targetxml>@crossreferencetype</targetxml> for Canada example.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_docinfo.lbu-meta-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta-scheme.dita">2013-05-31 - docinfo:lbu-meta to doc:legacy-metadata[@metadatasource="lbu-meta"]: Added "document-type" to the list of values
            in docinfo:metaitem/@name that should be retained.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_inlineobject-LxAdv-ref.inlineobject.dita">2013-05-24 - inlineobject to ref:inlineobject: Updated instruction for handling of inlineobject when smi is present and some of the verbiage is changed.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_inlineobject-LxAdv-figure_ref.inlineobject.dita">2013-05-24 - inlineobject to figure/ref:inlineobject: Updated target example, "when smi is present".</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_link-LxAdv-ref.lnlink.dita">2013-05-24 - link to ref:lnlink/@service="ATTACHMENT": Updated instruction for handling of link when smi is present and some of the verbiage is changed.</xref>
        </li>
        <li>
          <xref href="../../common_newest/Rosetta_docinfo-LxAdv-doc.metadata_doc.docinfo.dita">2013-05-16 - docinfo to doc:metadata/doc:docinfo: Fixed typo updating urn:contentitem to urn:contentItem</xref>
        </li>
      </ul>
      </p>
    </section>
    <section>
      <title>Dictionary 1.0 PROD</title>
      <p>2013-05-15
        <ul>
          <li>
            <xref href="../../common_newest/Rosetta_blockquote-LxAdv-blockquote.dita">2013-05-08 - blockquote to blockquote: Extended the list of allowable values for image handling.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_inlineobject-LxAdv-ref.inlineobject.dita">2013-05-08 - inlineobject to ref:inlineobject: Extended the list of allowable values for image handling.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_inlineobject-LxAdv-figure_ref.inlineobject.dita">2013-05-08 - inlineobject to figure/ref:inlineobject: Extended the list of allowable values for image handling.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-05-08 - remotelink to ref:crossreference: Extended the list of allowable values for image handling.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_inlineobject-LxAdv-ref.inlineobject.dita">2013-05-02 - inlineobject to ref:inlineobject: Some of the verbiage is changed and updated target example to if the SMI is present then a <targetxml>ref:inliineobject/@status</targetxml> attribute is set to “valid”.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_inlineobject-LxAdv-figure_ref.inlineobject.dita">2013-05-02 - inlineobject to figure/ref:inlineobject: Updated target example to if the SMI is present then a <targetxml>ref:inliineobject/@status</targetxml> attribute is set to “valid”.</xref>
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
            <xref href="../../common_newest/Rosetta_inlineobject-LxAdv-ref.inlineobject.dita">2013-05-01 - inlineobject to ref:inlineobject: Removed instructions for section
              "Pre-Release 4.0" because according to latest Apollo markup, section
              "Release 4.0 and after" and section "Pre-Release 4.0" now have
              similar conversion markup.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_inlineobject-LxAdv-figure_ref.inlineobject.dita">2013-05-01 - inlineobject to figure/ref:inlineobject: Removed instructions for section
              "Pre-Release 4.0" because according to latest Apollo markup, section
              "Release 4.0 and after" and section "Pre-Release 4.0" now have
              similar conversion markup.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-05-01 - remotelink to ref:crossreference: Removed instructions for section
              "Pre-Release 4.0" because according to latest Apollo markup, section
              "Release 4.0 and after" and section "Pre-Release 4.0" now have
              similar conversion markup.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-05-01 - remotelink to ref:crossreference: "Instruction added for <sourcexml>ci:cite/ci:content/remotelink</sourcexml> specifying that the <sourcexml>remotelink</sourcexml> is to be converted to <targetxml>ref:crossreference</targetxml> but the containing elements' start-tags and end-tags (<sourcexml>ci:cite</sourcexml> and <sourcexml>ci:content</sourcexml>) are dropped", has been removed from the instructions and now <sourcexml>remotelink</sourcexml> will be converted to the resulting mapping where it is. For more details you can see example: Source XML 10: <sourcexml>remotelink</sourcexml> as a child of
              <sourcexml>ci:cite/ci:content</sourcexml>
            </xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_blockquote-LxAdv-blockquote.dita">2013-04-30 - blockquote to blockquote: Updated target sample according to latest Apollo markup.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_inlineobject-LxAdv-ref.inlineobject.dita">2013-04-30 - inlineobject to ref:inlineobject: Updated target sample according to latest Apollo markup.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_inlineobject-LxAdv-figure_ref.inlineobject.dita">2013-04-30 - inlineobject to figure/ref:inlineobject: Updated target sample according to latest Apollo markup.</xref>
          </li>
          <li>
            <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-04-30 - remotelink to ref:crossreference: Updated target sample according to latest Apollo markup.</xref>
          </li>
        </ul>
      </p>
    </section>
    <section>
     <title>Dictionary 1.0_PROD</title>
      <p>2013-04-24:
        <ol>
              <li> 2013-04-24 - lnlink to ref:lnlink: Created </li>
              <li>
                <xref href="../../common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2013-04-24 - ci.cite to lnci.cite: Added a mapping for <sourcexml>ci:procphrase</sourcexml> to <sourcexml>lnci:procphrase</sourcexml>
                </xref>
              </li>
              <li>
                <xref href="../../DITA-PAC/AU21_Legal_Topic_Summaries/AU21_LegalTopicSum_defterm.dita">2013-04-23 - defterm to tei:form/tei:orth: Created.</xref>
              </li>
              <li>
                <xref href="../../DITA-PAC/AU21_Legal_Topic_Summaries/AU21_LegalTopicSum_short-definition.dita">2013-04-18 - dict:short-definition to tei:def: Created</xref>
              </li>
              <li>
                <xref href="../../DITA-PAC/AU21_Legal_Topic_Summaries/AU21_LegalTopicSum_equivalent-term.dita">2013-04-18 - dict:equivalent-term to tei:usg: Created</xref>
              </li>
              <li>
                <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-04-10 - remotelink to ref:crossreference: Added Source XML 7a: for link to URL, with non-URL text content because it was previously missing, only the target example was here.</xref>
              </li>
              <li>
                <xref href="../../common_newest/Rosetta_docinfo.lbu-meta-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta-scheme.dita">2013-04-09 - docinfo:lbu-meta to doc:legacy-metadata[@metadatasource="lbu-meta"]: Added the instruction for handling <sourcexml>docinfo:metaitem[@name="QLDB"]</sourcexml>.</xref>
              </li>
              <li>
                <xref href="../../DITA-PAC/AU21_Legal_Topic_Summaries/AU21_LegalTopicSum-Introduction.dita">2013-04-03 - Introduction: Created.</xref>
              </li>
              <li>
                <xref href="../../DITA-PAC/AU21_Legal_Topic_Summaries/AU21_LegalTopicSum-Head.dita">2013-04-03 - Head: Created.</xref>
              </li>
              <li>
                <xref href="../../DITA-PAC/AU21_Legal_Topic_Summaries/AU21_LegalTopicSum-Body.dita">2013-04-03 - Body: Created.</xref>
              </li>
              <li>
                <xref href="../../DITA-PAC/AU21_Legal_Topic_Summaries/AU21_LegalTopicSum-dict.term-entry.dita">2013-04-03 - dict:term-entry to dict:defitem/tei:entry: Created.</xref>
              </li>
              <li>
                <xref href="../../DITA-PAC/AU21_Legal_Topic_Summaries/AU21_LegalTopicSum-dict.definition.dita">2013-04-03 - dict:definition to tei:def: Created.</xref>
              </li>
              <li>
                <xref href="../../DITA-PAC/AU21_Legal_Topic_Summaries/AU21_LegalTopicSum-subtopic.dita">2013-04-03 - dict:subtopic to tei:entry: Created.</xref>
              </li>
              <li>
                <xref href="../../DITA-PAC/AU21_Legal_Topic_Summaries/AU21_LegalTopicSum-topicname.dita">2013-04-03 - dict:topicname to tei:usg: Created.</xref>
              </li>
              <li>
                <xref href="../../DITA-PAC/AU21_Legal_Topic_Summaries/AU21_LegalTopicSum-Index.dita">2013-04-03 - index to tei:sense/pgrp/section/index:index: Created.</xref>
              </li>
        </ol>
      </p>
    </section>
    <section>
      <title>Dictionary 1.0:PROD</title>
      <p>2013-02-14: 
    <ol>
      <li>Created Legal Topic Summaries</li>
    </ol>
        </p>
    </section>
  </body>
	</dita:topic>


</xsl:stylesheet>