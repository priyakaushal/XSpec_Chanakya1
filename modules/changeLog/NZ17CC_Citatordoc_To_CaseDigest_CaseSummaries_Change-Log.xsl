<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
   version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="CaseSummaries_Change-Log">
  <title>Change Log for Case Summaries</title>
  <body>
    
    <section>
      <title>casedigest 8.7 PROD</title>
      <p>2016-08-23
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
          <xref href="../../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2016-07-29 - docinfo:assoc-links to doc:related-content id-CCCC-10284: Added Note about xml snippets that illustrate image
            handling. Note summarizes move from Apollo to Blobstore application. UK is first LBU to
            move to Blobstore.</xref>
        </li>
        <li>
          <xref href="../../../../Rosetta/common_newest/Rosetta_emph-LxAdv-emph.dita">2016-04-01 - emph to emph id-CCCC-10316: Added statement to clarify that children of emph should be processed.</xref>
        </li>
        <li>
          <xref href="../../../../Rosetta/common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2016-03-23 - ci.cite to lnci.cite id-CCCC-10268: Updated main instructions to clarify that descendants of ci:cite, and not just children, are to be processed.</xref>
        </li>
        <li>
          <xref href="../../../../Rosetta/common_newest/Rosetta_edpnum-LxAdv-desig.dita">2016-03-15 - edpnum to desig id-CCCC-10308: Added rule for handling scenario when
            <sourcexml>pnum</sourcexml> and <sourcexml>edpnum </sourcexml> occur as
            siblings (applicable only for UK22CS). [RFA #2755]</xref>
        </li>
      </ul>
   </p>
    </section>
    <section>
      <title>casedigest 8.6 PROD</title>
      <p>2016-02-05
      <ul>
        <li>
          <xref href="../../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2016-02-05 - remotelink to ref:crossreference id-CCCC-10465: Added note and example when
            <sourcexml>remotelink</sourcexml> is a child of <sourcexml>emph</sourcexml>. Applicable
            on NZ17CC, Webstar: 319232 and 318735.</xref>
        </li>
        <li>
          <xref href="../../../DITA-PAC/NZ17_Case_Summaries/NZ17CC_Citatordoc_To_CaseDigest/case.headnote.dita">2016-02-01 - case:headnote id-NZ17CC-25815: changed instruction for 
            <sourcexml>case:headnote/heading/edpnum</sourcexml> and its content, moving target markup to 
            <targetxml>/casedigest:casedigest/casedigest:body/section</targetxml>.</xref>
        </li>
        <li>
          <xref href="../../../DITA-PAC/NZ17_Case_Summaries/NZ17CC_Citatordoc_To_CaseDigest/case_wordphrasegroup.dita">2016-01-11 - cttr:wordphrasegrp id-NZ17CC-25825A: corrected typo to change instruction for 
            instances when <sourcexml>catchwords</sourcexml> contains text, to change 
            <targetxml>classify:classitem-identifier/classify:classitem-identifier</targetxml> to instead be 
            <targetxml>classify:classitem-identifier/classify:classname</targetxml>
          </xref>
        </li>
      </ul></p>
    </section>

    <section>
      <title>casedigest 8.5 PROD</title>
      
      <p>2015-11-13
        <ul>
          <li>
            <xref href="../../../DITA-PAC/NZ17_Case_Summaries/NZ17CC_Citatordoc_To_CaseDigest/case.parallelcite.dita">2015-11-13: - case:parallelcite id-NZ17CC-25820: Instruction and example modified to map <sourcexml>case:parallelcite</sourcexml> based 
              upon the type of document. For ACL (CITATORDOC@citatordoctype="aclrep") the existing mapping to 
              <targetxml>ref:parallelcite citetype="parallel"</targetxml> is unchanged. For BCL (CITATORDOC@citatordoctype="bcl"), 
              <targetxml>ref:parallelcite citetype="parallel"</targetxml> maps to 
              <targetxml>ref:cite4thisresource citetype="parallel"</targetxml> instead of <targetxml>ref:parallelcite citetype="parallel"</targetxml>
            </xref>
          </li>
        </ul>
      </p>

      <p>2015-09-15
        <ul>
          <li>
            <xref href="../../../common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2015-09-15 - ci.cite to lnci.cite id-CCCC-10268: Updated instruction to suppressed the attribute
              <sourcexml>@type</sourcexml> with value "legref" in target.
              Applicable on NZ Regulation and NZ Act from services [Webstar
              #6245139].</xref>
          </li>
        </ul>
      </p>
      
      <p>2015-09-11
        <ul>
          <li>
            <xref href="../../../common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2015-09-11 - docinfo:assoc-links to doc:related-content id-CCCC-10284: Correction to target XPATHs for 
              <sourcexml>lnlink[@service="QUERYLINK"]</sourcexml>, <sourcexml>lnlink[@service="ATTACHMENT"]</sourcexml>, 
              and <sourcexml>lnlink[@service="TRAVERSE"]</sourcexml>
              to add <targetxml>doc:related-content-item/doc:related-content-link</targetxml> before the existing 
              <targetxml>ref:lnlink</targetxml> element in the XPATH.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2015-09-11 - docinfo:assoc-links to doc:related-content id-CCCC-10284: Added instruction for handling of
              <sourcexml>lnlink[@service="URL"]</sourcexml> inside <sourcexml>docinfo:assoc-links</sourcexml> or
              <sourcexml>docinfo:assoc-links-grp</sourcexml>.</xref>
          </li>
        </ul>
      </p>
      
    </section>
    
    <section>
      <title>casedigest 8.4 PROD</title>
      
      <p>2015-09-10
        <ul>
        <li>
          <xref href="../../../DITA-PAC/NZ17_Case_Summaries/NZ17CC_Citatordoc_To_CaseDigest/case.parallelcite.dita">2015-09-10 - case:parallelcite id-NZ17CC-25820: Instruction and example updated for mapping <sourcexml>case:parallelcite</sourcexml> to
            <targetxml>ref:parallelcite citetype="parallel"</targetxml>
          </xref>
        </li>
          <li>
            <xref href="../../../common_newest/Rosetta_docinfo.overview-LxAdv-docinfo.overview.dita">2015-09-08 - docinfo:overview to doc:overview id-CCCC-10303: Added the handling of new attribute value
              "abstract" inside the <targetxml>docinfo:overview@type</targetxml> markup for UK
              streams and it should be mapped with <targetxml>doc:overview@type="abstract"</targetxml>.
              R4.5 Content Issue List #2391.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_docinfo.doc-heading-LxAdv-dc.title.dita">2015-09-06 - docinfo:doc-heading to dc:title id-CCCC-10292: Modified only the special rule for CA14
              trademarks. No longer mapping (MC) to entity, the unicode code point is not
              currently supported. The pcdata (MC) is retained instead. RFA 145. CA14
              only.</xref>
          </li>
          <li>
          <xref href="../../../common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2015-07-16 - docinfo:assoc-links to doc:related-content id-CCCC-10284: Updated conversion for handling of
            <sourcexml>ci:cite/@normprotocol</sourcexml>, <targetxml>proc:param[@name="countrycode"]</targetxml>; added
            instructions for <sourcexml>docinfo:assoc-resource</sourcexml>.</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2015-06-24 - remotelink to ref:crossreference id-CCCC-10465: Added clarification note about url, @normval, and @hrefclass. Webstar 302055.</xref>
        </li>
        </ul>
      </p>
      
      <p>2015-06-19
        <ul>
          <li>
            <xref href="../../../DITA-PAC/NZ17_Case_Summaries/NZ17CC_Citatordoc_To_CaseDigest/case_wordphrasegroup.dita">2015-06-19 - cttr:wordphrasegrp id-NZ17CC-25825A: corrected cut and paste error, cttr:wordphrasegrp maps parent location within <targetxml>casedigest:caseinfo</targetxml>
            </xref>
          </li>
        </ul>
      </p>
      
      <p>2015-06-12   
      <ul>
        
        <li>
          <xref href="case_wordphrasegroup.dita">2015-06-12 - cttr:wordphrasegrp id-NZ17CC-25825A: Added mapping for <sourcexml>catchwords/text()</sourcexml> to <targetxml>cttr:descriptorssection/classification</targetxml> in this CI.</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2015-05-22 - remotelink to ref:crossreference id-CCCC-10465: Added an instruction to explicitly indicate <sourcexml>remotelink/@status</sourcexml> is always dropped (suppressed). This is a very low-priority change and has been added for technical correctness, particularly with respect to new CIs. Existing scripts do not have to implement this change unless needed since prior to the change <targetxml>remotelink/@status</targetxml> handling was not explicitly specified.</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_remotelink-self-inter-document-link-LxAdv-intra-document-link.dita">2015-05-22 - remotelink (self inter-document link) to ref:lnlink (intra-document link) id-CCCC-10468: Added an instruction to explicitly indicate <sourcexml>remotelink/@status</sourcexml> is always dropped (suppressed). This is a very low-priority change and has been added for technical correctness, particularly with respect to new CIs. Existing scripts do not have to implement this change unless needed since prior to the change <targetxml>remotelink/@status</targetxml> handling was not explicitly specified.</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2015-05-22 - docinfo:assoc-links to doc:related-content id-CCCC-10284: Clarification. Not a new rule or target. Within
            rules handling <sourcexml>remotelink[@service="DOC-ID"]</sourcexml>, added statement to
            create containing elements <targetxml>ref:locator/ref:locator-key</targetxml> which hold
            <targetxml>ref:key-name</targetxml> and <targetxml>ref:key-value</targetxml>. The xpath
            is controlled by schema and so conversions have been correct. CI examples were correct.
            The narrative rule is now explicit. R4.5 Content Issue 2326.</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_docinfo.doc-heading-LxAdv-dc.title.dita">2015-05-05 - docinfo:doc-heading to dc:title id-CCCC-10292: Added note to convert (TM), (R), 
            and (MC) to unicode code points. DB # 45. Applicable to CA14.</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_docinfo-LxAdv-doc.metadata_doc.docinfo.dita">2015-04-14 - docinfo to doc:metadata/doc:docinfo id-CCCC-10282: Remove bullet icon in sub nested list for
            handling Indentation isssue.</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_docinfo.hier-LxAdv-doc.hier.dita">2015-03-25 - docinfo:hier to doc:hier id-CCCC-10297: Added note with rule for
            <sourcexml>title/num</sourcexml>. Suppress <sourcexml>num</sourcexml> tag but
            output content. Applicable for CA09 only. RFA 2249.</xref>
        </li>
        <li>
          <xref href="../../../common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2015-03-17 - ci.cite to lnci.cite id-CCCC-10268: An attribute <targetxml>@inline</targetxml> get added with <targetxml>desig</targetxml> element even when the source<sourcexml>pnum</sourcexml> is not having that attribute<sourcexml>@inline</sourcexml> Applicable on CA12 only.</xref>
        </li>
      </ul>    
    </p>
    </section>
    
    <section>
      <title>casedigest 8.3 PROD</title>
      
      <p>2015-02-27
        <ul>
          <li>
            <xref href="case_wordphrasegroup.dita">2015-02-27 - MLV: corrected cut and paste error, cttr:wordphrasegrp maps to classify:classification.</xref>
          </li>  
        </ul>
      </p>

      <p>2015-02-25
        <ul>
          <li>
            <xref href="case_wordphrasegroup.dita">2015-02-25 - added rules for <sourcexml>cttr:wordphrasegroup</sourcexml> content.</xref>
          </li>
        
        <li>
          <xref href="../../../common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2015-02-24 - ci.cite to lnci.cite id-CCCC-10268: Example updated as per new rule an attribute <targetxml>@inline</targetxml>get added with <targetxml>desig</targetxml>element when the source<sourcexml>pnum</sourcexml>is not having that attribute<sourcexml>@inline</sourcexml>
          </xref>
        </li>
      </ul>
      </p>
      
      <p>2015-02-10
      <ul>
        <li>
          <xref href="case.dates.dita">2015-02-10 - case:dates id-NZ17CC-25813: Added instruction for including <targetxml>date-text</targetxml> to content of <targetxml>decision:fileddate</targetxml>.</xref>
        </li>
        <li>
          <xref href="case.headnote.dita">2015-02-10 - case:headnote id-NZ17CC-25815: MLV:  Added instruction and example for <sourcexml>case:headnote/heading/edpnum</sourcexml>
            with text and <sourcexml>refpt</sourcexml>.</xref>
        </li>
      </ul>
      </p>
      
      <p>2015-02-03
        <ul>
            <li>
              <xref href="case.citations_case.citetext.dita">2015-02-03 - case:citations_case:citetext id-NZ17CC-25808: Removed instructions for cttr:usage and in place added markup to mapping
                <sourcexml>cttr:annotations searchtype="CONSIDERED-CASES"/cttr:annot/cttr:use</sourcexml> to
                <targetxml>ref:citations/ref:cite4thisresource citetype</targetxml> and <targetxml>ref:citations/connector</targetxml>
              </xref>
            </li>
        </ul>
      </p>
      
    </section>
    <section>
      <title>casedigest 8.1 PROD</title>
      
      <p>2015-01-21
        <ul>
          <li>
            REMOVED(2015-02-03:MLV) : 2015-01-20 - cttr:use id-NZ17CC-cttr.use: Added instruction and example for <sourcexml>cttr:use</sourcexml>.
          </li>
          <li>
            <xref href="case.headnote.dita">2015-01-20 - case:headnote id-NZ17CC-25815: Added instruction and example for <sourcexml>case:headnote/heading/title</sourcexml> with "See" reference.
            </xref>
          </li>
          <li>
            <xref href="case.dates.dita">2015-01-20 - case:dates id-NZ17CC-25813: Instruction and example added for <sourcexml>case:decisiondate/case:fileddate</sourcexml>
            </xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2015-01-19 - docinfo:assoc-links to doc:related-content id-CCCC-10284: For CA05 - CA08- Updated Instruction and
              included "<targetxml>related-content-grp</targetxml>" markup inside the target Example
              8 for conversion of QUERY link to doc:related-content.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2015-01-15 - docinfo:assoc-links to doc:related-content id-CCCC-10284: For CA03- Convert the QUERY link to doc:related-content. Refer Example 10. R4.5 RFA #2099.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2015-01-13 - docinfo:assoc-links to doc:related-content id-CCCC-10284: For CA05 - CA08 Conversion Needs to split
              multiple ORs into a separate <targetxml>doc:related-content-item</targetxml>. Refer
              Example 9</xref>
          </li>
          <li>  
            <xref href="../../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2015-01-09 - remotelink to ref:crossreference id-CCCC-10465: For the two use cases associated with url (target
              <targetxml>url</targetxml> or <targetxml>ref:lnlink</targetxml>): Added exceptional rule
              to not concatenate values when <sourcexml>@hrefclass</sourcexml> content is already
              present in <sourcexml>@href</sourcexml>. Expanded examples 5 and 7 to illustrate the
              scenario. Responds to data for UK10 Dictionaries but applies in general. R4.5 Content
              Issue 2120.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2015-01-02 - docinfo:assoc-links to doc:related-content id-CCCC-10284: Added
              <sourcexml>docinfo:assoc-links/remotelink[@service="QUERY"]</sourcexml> and
              <sourcexml>docinfo:assoc-links-grp/remotelink[@service="QUERY"]</sourcexml> to generate
              <targetxml>doc:related-content</targetxml> markup. Applicable on CA05.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2014-12-19 - docinfo:assoc-links to doc:related-content id-CCCC-10284: Updated target mapping for CA05 for handling
              <sourcexml>docinfo:assoc-links/remotelink[@service="QUERY"]</sourcexml>. Applicable on CA05.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2014-12-17 - docinfo:assoc-links to doc:related-content id-CCCC-10284: Added a Note for CA05, CA06, CA07 and CA08 for handling
              <sourcexml>docinfo:assoc-links-grp/remotelink[@service="QUERY"]
              </sourcexml>
            </xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2014-12-08 - ci.cite to lnci.cite id-CCCC-10268: Addition of mapping for <sourcexml>ci:pinpoint</sourcexml> to 
              <targetxml>lnci:pinpoint</targetxml> and example from US LPA content.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_docinfo.overview-LxAdv-docinfo.overview.dita">2014-11-04 - docinfo:overview to doc:overview id-CCCC-10303: Clarification only: added text to explicitly indicate that the child <targetxml>doc:overview/bodytext</targetxml> should be created. Not a change to instructions.</xref>
          </li>
        </ul>
      </p>
    </section>
    
    <section>
      <title>casedigest 8.0 PROD</title>
      
      <p>2014-10-30
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
          <li>
            <xref href="../../../common_newest/Rosetta_docinfo.doc-id-LxAdv-dcidentifier_lnmetaidentifier-scheme.dita">2014-05-21 - docinfo:doc-id to dc:identifier[@lnmeta:identifier-scheme] id-CCCC-10293: For CA05 Acts and Bills- Mapping in dc:identifier for act-no and chunk-no.. Db issue #1464 </xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_p-LxAdv-p.dita">2014-04-14 - p to p id-CCCC-10424: Removed Colons from Labels.. DB item #1255</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2014-02-25 - remotelink to ref:crossreference id-CCCC-10465: Updated instruction and created new example (#16)
              for handling <sourcexml>remotelink[@service="QUERY"]</sourcexml>. New instruction
              preserves pcdata but suppresses <sourcexml>remotelink</sourcexml> markup. Webstar #250335.
              Change applies immediately to all Pacific streams, and in the long run to all
              streams.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_docinfo.doc-heading-LxAdv-dc.title.dita">2014-02-11 - docinfo:doc-heading to dc:title id-CCCC-10292: Updated note when <sourcexml>emph</sourcexml> is
              child of <sourcexml>docinfo:doc-heading</sourcexml> then suppress
              <sourcexml>emph</sourcexml> element and retain its content in
              <targetxml>dc:title</targetxml>, These instructions apply immediately to
              CA12.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2014-02-03 - remotelink to ref:crossreference id-CCCC-10465: Instruction updated if
              <sourcexml>remotelink</sourcexml> occurs as multiple, immediate siblings and without
              intermediary text within <sourcexml>title</sourcexml>. Also added a example for the same
              scenario. Phase 5 UK discussion-defect tracking issue #161</xref>
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
            <xref href="../../../common_newest/Rosetta_endnote-LxAdv-endnote.dita">2013-12-18 - endnote to endnote id-CCCC-10317: Instruction added to convert <sourcexml>remotelink/@refpt</sourcexml> to <targetxml>footnote-ref/@anchoridref</targetxml>.  WebTeam #5158742 - AU04. Applies generally to all LBUs and streams.</xref>
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
            <xref href="../../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-10-23 - remotelink to ref:crossreference id-CCCC-10465: Added Example when
              <sourcexml>remotelink</sourcexml> having child <sourcexml>emph</sourcexml>. Webteam #
              239816</xref>
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
            <xref href="../../../common_newest/Rosetta_endnote-LxAdv-endnote.dita">2013-10-07 - endnote to endnote id-CCCC-10317: Instruction and example for added for the Xpath <sourcexml>leg:bodytext/glp:note/l/li</sourcexml> related to <targetxml>endnote</targetxml> handling. WebTeam # is 238790.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_process-ignore-to-LxAdv_SUPPRESS.dita">2013-10-03 - process-ignore id-CCCC-10436: Not a rule change. Clarified directions by stating
              that children should be processed as normal. This was already correctly demonstrated by
              the example.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-10-03 - remotelink to ref:crossreference id-CCCC-10465: Added use case where remotelink contains @href
              which is a URL but does not contain @hrefclass='http'.</xref>
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
        </ul>
      </p>
    </section>
    
    <section>
      <title>casedigest 7.5:PROD</title>
        <p>2013-08-14
          <ul>
            <li>
              <xref href="../../../DITA-PAC/NZ17_Case_Summaries/NZ17CC_Citatordoc_To_CaseDigest/catchwordgrp.dita">2013-08-14 - catchwordgrp: Instruction and example updated for <sourcexml>catchwordgrp</sourcexml> 
              </xref>
            </li>
            <li>
              <xref href="../../../common_newest/Rosetta_docinfo.authorattribution-LxAdv-dc.contributor.dita">2013-08-13 - docinfo:authorattribution to dc:contributor: Added instruction and example when
                <sourcexml>person</sourcexml> is an child of
                <sourcexml>docinfo:authorattribution/contrib</sourcexml> and CR# DAAM2013080706295200 has been created to add <targetxml>person:person</targetxml> to the content model of <targetxml>dc:contributor</targetxml>.WebTeam # is 229509</xref>
            </li>
            <li>
              <xref href="../../../common_newest/Rosetta_docinfo.lbu-meta-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta-scheme.dita">2013-08-12 - docinfo:lbu-meta to doc:legacy-metadata[@metadatasource="lbu-meta"]: We removed the docinfo:lbu-meta "include" list so now there is only a "drop" list. Anything not on the "drop" list should be passed through. Webteam 230557.</xref>
            </li>
            <li>
              <xref href="../../../common_newest/Rosetta_remotelink-self-inter-document-link-LxAdv-intra-document-link.dita">2013-08-12 - remotelink (self inter-document link) to ref:lnlink (intra-document link): Changed module heading from ref:crossreference to ref:lnlink.  NO
                instructions are changed.  WebTeam # 230229. Affects all streams.</xref>
            </li>
            <li>
              <xref href="../../../common_newest/Rosetta_docinfo-LxAdv-doc.metadata_doc.docinfo.dita">2013-08-09 - docinfo to doc:metadata/doc:docinfo: Added instruction for creating
                <targetxml>dc:date[@lnmeta:datetype="conversion-date"]</targetxml>.
                Previously, "conversion-date" was created only if "load-date" was not present.
                Going forward, conversion should always create "conversion-date". This is not a
                retroactive change. It should be applied only to streams developed after Aug. 9
                2013.</xref>
            </li>
            <li>
              <xref href="../../../common_newest/Rosetta_XML_Character_Entities-LxAdv-Unicode.dita">2013-08-08 - XML Character Entities to Unicode code points: This change does not represent a change to
                conversion but rather documentation of the existing behavior.</xref>
            </li>
            <li>
              <xref href="../../../common_newest/Rosetta_date-Chof-docinfo.load-date-LxAdv-dc.date_lnmeta.datetype_load-date-scheme.dita">2013-08-07 - docinfo:load-date/date to dc:date[@lnmeta:datetype="load-date"]: Removed instructions for creating
                <targetxml>dc:date[@lnmeta:datetype="conversion-date"]</targetxml>.</xref>
            </li>          
          </ul>
        </p>    
    </section>
    <section>
      <title>casedigest 7.4:PROD</title>
      <p>2013-07-18
        <ul>
          <li>
            <xref href="../../../DITA-PAC/NZ17_Case_Summaries/NZ17CC_Citatordoc_To_CaseDigest/case.dates.dita">2013-07-18 - case:dates: Instruction and example added for <sourcexml>case:hearingdates</sourcexml> 
            </xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_docinfo.custom-metafields-LxAdv-SUPPRESS.dita">2013-07-18 - docinfo:custom-metafields: DITA reference included for <sourcexml>docinfo:custom-metafields</sourcexml> 
            </xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_docinfo.lbu-meta-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta-scheme.dita">2013-07-18 - docinfo:lbu-meta: DITA reference included for <sourcexml>docinfo:lbu-meta</sourcexml> 
            </xref>
          </li>          
          <li>
            <xref href="../../../common_newest/Rosetta_docinfo.doc-lang-and-doc-country-LxAdv-ROOT_xml.lang.dita">2013-07-16 - docinfo:doc-lang and docinfo:doc-country to @xml:lang and @xml:ID: Instruction narrative edited for language; no changes to mappings, no impact to stylesheets.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_identifier-LxAdv-ID_data_type-HandlingPatternRestrictions.dita">2013-07-10 - Identifiers to ID Data Type - Handling Pattern Restrictions: Added instruction to replace space with underscore.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_docinfo.authorattribution-LxAdv-dc.contributor.dita">2013-06-25 - docinfo:authorattribution to dc:contributor: added to AU and NZ ditamap for content enrichment</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_docinfo.currencystatement-LxAdv-currencystatement.dita">2013-06-25 - docinfo:currencystatement to doc:docinfo/currencystatement: added to AU and NZ ditamap for content enrichment</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_docinfo.overview-LxAdv-docinfo.overview.dita">2013-06-25 - docinfo:overview to doc:overview: added to AU and NZ ditamap for content enrichment</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-06-03 - remotelink to ref:crossreference: Updated the Target XML 2 by removing the <targetxml>@crossreferencetype</targetxml> for Canada example.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_docinfo.lbu-meta-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta-scheme.dita">2013-05-31 - docinfo:lbu-meta to doc:legacy-metadata[@metadatasource="lbu-meta"]: Added "document-type" to the list of values
              in docinfo:metaitem/@name that should be retained.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_docinfo-LxAdv-doc.metadata_doc.docinfo.dita">2013-05-16 - docinfo to doc:metadata/doc:docinfo: Fixed typo updating urn:contentitem to urn:contentItem</xref>
          </li>
         </ul>
      </p>      
    </section>
    <section>
      <title>casedigest 7.3:PROD</title>
      <p>2013-05-14
        <ul>
          <li>
            <xref href="../../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2013-05-08 - remotelink to ref:crossreference: Extended the list of allowable values for image handling.</xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2013-05-01 - ci.cite to lnci.cite: Removed special rule for
              <sourcexml>ci:cite/ci:content/remotelink</sourcexml> which required
              suppression of <sourcexml>ci:cite/ci:content</sourcexml> tags. The elements are
              now retained and convert according to common rules.</xref>
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
            <xref href="../../../common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2013-04-24 - ci.cite to lnci.cite: Added a mapping for
              <sourcexml>ci:procphrase</sourcexml> to
              <sourcexml>lnci:procphrase</sourcexml>
            </xref>
          </li>
          <li>
            <xref href="../../../common_newest/Rosetta_docinfo.doc-lang-and-doc-country-LxAdv-ROOT_xml.lang.dita">2013-04-19 - docinfo:doc-lang and docinfo:doc-country to @xml:lang and @xml:ID: Added note about applicability of
              restrictions and required modifications for <targetxml>xml:id</targetxml> to
              other scenarios.</xref>
          </li>
        </ul>      
      </p>
    </section>
     <section>
      <title>Created</title>
      <p>2013-04-16</p>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\NZ17_Case_Summaries\NZ17CC_Citatordoc_To_CaseDigest\CaseSummaries_Change-Log.dita  -->
	 

</xsl:stylesheet>