<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:dig="http://www.lexis-nexis.com/glp/dig" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:casedigest="http://www.lexisnexis.com/xmlschemas/content/legal/case-digest/1/" xmlns:caseinfo="http://www.lexisnexis.com/xmlschemas/content/legal/case-information/1/" xmlns:jurisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/jurisdiction-info/1/" xmlns:lnci="http://www.lexisnexis.com/xmlschemas/content/shared/citations/1/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" xmlns:seclaw="http://www.lexisnexis.com/xmlschemas/content/legal/secondary-law/1/" version="2.0" exclude-result-prefixes="dita case dig leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="CA14_CA-Emerging_Issues_Change-Log">
  <title>Change Log</title>
  <body>
    <section>
      <title>Seclaw 8.14 PROD</title>
      <p>2016-08-11
        <ul>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_frac-LxAdv-num_frac.dita">2016-08-11 - frac to frac id-CCCC-10327: Added this module in main Ditamap for handling <sourcexml>frac</sourcexml> and it's child elements. [Webstar #6636291]</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_strike-LxAdv-strike.dita">2016-08-11 - strike to strike id-CCCC-10471: Added this module in main Ditamap for handling <sourcexml>strike</sourcexml> element. [Webstar #6636291]</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_footnote-LxAdv-footnote.dita">2016-08-08 - footnotegrp and footnote to footnotegrp and footnote id-CCCC-10322: Removing duplicate entry of
              <sourcexml>lilabel/fnr</sourcexml>
            </xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_footnote-LxAdv-footnote.dita">2016-08-04 - footnotegrp and footnote to footnotegrp and footnote id-CCCC-10322: Added note for handling
              <sourcexml>lilabel/fnr</sourcexml> Applicable for AU05,
              Incident #6597893</xref>
          </li>
        </ul>
      </p>
    </section>
    <section>
      <title>Seclaw 8.14 PROD</title>
      <p>2016-07-27
        <ul>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_remotelink-Chof-url-LxAdv-url.dita">2016-07-27 - url/remotelink to url id-CCCC-10464: Added this DITA module (conversion
              instruction) under the CA14 stream for handling
              "<sourcexml>url/remotelink</sourcexml>".</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/DITA-CAN/CA14-Emerging_Issues/CA14_dpsi-stream-doc.hierlev-heading-title.dita">2016-07-27 - docinfo:custom-metafield/@name="dpsi" id-CA14-35636: Only change the language of existing rule for
              handling the DPSI values inside the column of 'TOC top line'.</xref>
          </li>
        </ul>
      </p>
    </section>
    <section>
      <title>Seclaw 8.13 PROD</title>
      <p>2016-07-20
        <ul>
          <li>
            <xref href="../../../Rosetta/DITA-CAN/CA14-Emerging_Issues/CA14_dpsi-stream-doc.hierlev-heading-title.dita">2016-07-20 - docinfo:custom-metafield/@name="dpsi" id-CA14-35636: Deleted and updated some DPSI values inside
              the column TOC top line.</xref>
          </li>
        </ul>
      </p>
    </section>
    <section>
      <title>Seclaw 8.13 PROD</title>
      <p>2016-06-17
      <ul>
        <li>
          <xref href="../../../Rosetta/DITA-CAN/CA14-Emerging_Issues/dig.level.dita">2016-06-17 - dig:level id-CA14-35625: Updated target element mapping when source is
            not having <sourcexml>refpt</sourcexml> as a child of
            <sourcexml>level</sourcexml> or other elements having
            <sourcexml>@subdoc="true"</sourcexml>and note for generation of
            <targetxml>ref:anchor</targetxml> based on
            <sourcexml>@subdoc="true"</sourcexml> value.</xref>
        </li>
      </ul></p>
      <p>2016-06-16
        <ul>
          <li>
            <xref href="../../../Rosetta/DITA-CAN/CA14-Emerging_Issues/Introduction.dita">2016-06-16 - Introduction id-CA14-35627: Updated schema version to 8.13 PROD.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/DITA-CAN/CA14-Emerging_Issues/dig.level.dita">2016-06-16 - dig:level id-CA14-35625: Added note for
              <sourcexml>@leveltype</sourcexml> under
              <sourcexml>dig:item/level[@leveltype]</sourcexml>, Applicable on
              CA14.</xref>
          </li>
        </ul>
        
      </p>
    </section>
    
    <section>
      <title>Seclaw 8.12 PROD</title>
      <p>2016-05-25
        <ul>
          <li>
            <xref href="../../../Rosetta/common_newest/AU_Comm-Rosetta_link-LxAdv-ref.lnlink.dita">2016-05-25 - link to ref:lnlink id-CCCC-10151: Added link module in the CI. Applicable on CA14 only.</xref>
          </li>
        </ul>
        
      </p>
    </section>
    <section>
      <title>Seclaw 8.11 PROD</title>
      <p>2016-05-05
      <ul>
        <li>
          <xref href="../../../Rosetta/DITA-CAN/CA14-Emerging_Issues/dig.level.dita">2016-05-05 - dig:level id-CA14-35625: Added note when <sourcexml>footnotegrp</sourcexml> is a child of 
            <sourcexml>level/bodytext</sourcexml>, Applicable on CA14.</xref>
        </li>
      </ul></p>
    </section>
    
    <section>
      <title>Seclaw 8.11 PROD</title>
      <p>2016-04-29
      <ul>
        <li>
          <xref href="../../../Rosetta/DITA-CAN/CA14-Emerging_Issues/dig.level.dita">2016-04-28 - dig:level id-CA14-35625: Added instruction and example when
            <sourcexml>dig:level</sourcexml> having child
            <sourcexml>dig:item/level</sourcexml>. Applicable on CA14.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/DITA-CAN/CA14-Emerging_Issues/dig.info.dita">2016-04-27 - dig:info id-CA14-35623: Added instruction and example when
            <sourcexml>contrib</sourcexml> and <sourcexml>note</sourcexml> are the child
            of <sourcexml>dig:info</sourcexml>, Applicable on CA14.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/DITA-CAN/CA14-Emerging_Issues/CA14_dpsi-stream-doc.hierlev-heading-title.dita">2016-04-26 - docinfo:custom-metafield/@name="dpsi" id-CA14-35636: Created.</xref>
        </li>
      </ul></p>
    </section>
    
    <section>
      <title>Seclaw 8.6 PROD</title>
      <p>2015-09-17<ul>
        <li>
          <xref href="../../../Rosetta/DITA-CAN/CA14-Emerging_Issues/issue.dita">2015-09-15 - issue id-CA14-35628: Added rules to generate language attribute
            <targetxml>@xml:lang</targetxml>. RFA 135.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/DITA-CAN/CA14-Emerging_Issues/pubdate_date.dita">2015-09-15 - pubdate id-CA14-35630: Added rules to generate language attribute
            <targetxml>@xml:lang</targetxml>. RFA 135.</xref>
        </li>
      </ul></p>
    </section>
    
    <section>
      <title>Seclaw 8.6 PROD</title>
      <p>2015-09-10<ul>
        <li>
          <xref href="../../../Rosetta/DITA-CAN/CA14-Emerging_Issues/case.reportercite.dita">2015-09-09 - case:reportercite id-CA14-35618: Changed special rules for dpsi 0FTO. Removed
            mapping to <targetxml>ref:cite4thisresource[@citetype="netletter"]</targetxml>.
            RFA 123.</xref>
        </li>
      </ul></p>
    </section>
    
    <section>
      <title>Seclaw 8.6 PROD</title>
      <p>2015-09-07<ul>
        <li>
          <xref href="../../../Rosetta/DITA-CAN/CA14-Emerging_Issues/publication.dita">2015-09-06 - publication id-CA14-35631: Modified rule for trademarks. No longer
            converting (MC) to entity, the unicode code point is not currently supported.
            The pcdata (MC) is retained instead. RFA 145.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.doc-heading-LxAdv-dc.title.dita">2015-09-06 - docinfo:doc-heading to dc:title id-CCCC-10292: Modified only the special rule for CA14
            trademarks. No longer mapping (MC) to entity, the unicode code point is not
            currently supported. The pcdata (MC) is retained instead. RFA 145. CA14
            only.</xref>
        </li>
      </ul></p>
    </section>
    
    <section>
      <title>Seclaw 8.6 PROD</title>
      <p>2015-08-27<ul>
        <li>
          <xref href="../../../Rosetta/DITA-CAN/CA14-Emerging_Issues/case.reportercite.dita">2015-08-25 - case:reportercite id-CA14-35618: Added special rule for dpsi 0FTO. Creates
            mapping to <targetxml>caseinfo:docketnum</targetxml>. The target xpath is new.
            RFA 136.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_CAN_docinfo.custom-metafields-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta.meta.metaitem.dita">2015-08-13 - docinfo:custom-metafields to doc:legacy-metadata[@metadatasource="lbu-meta"]/meta/metaitem id-CCCC-10251: For Single Document Retrieval (SDR), <sourcexml>"actFirstDoc"</sourcexml> triggers output of an additional <targetxml>ref:cite4thisresource/lnci:cite/@type="act"</targetxml> where target <targetxml>lnci:content</targetxml> is copied from  <sourcexml>leg:officialnum</sourcexml>. Affects CA05,CA06,CA07,CA08. Canada CR506 as related to WT 305581.</xref>
        </li>
      </ul></p>
    </section>
    
    <section>
      <title>Seclaw 8.5 PROD</title>
      <p>2015-05-28<ul>
          <li>
            <xref href="../../../Rosetta/DITA-CAN/CA14-Emerging_Issues/case.reportercite.dita">2015-05-28 - case:reportercite id-CA14-35618: Modified rule. Changed
                <targetxml>@citetype</targetxml> value that is applied to the first citation.
              Formerly <targetxml>@citetype="journal"</targetxml>. Now
                <targetxml>@citetype="netletter"</targetxml>. RFA 23.</xref>
          </li>
        </ul></p>
    </section>
    
    <section>
      <title>Seclaw 8.5 PROD</title>
      <p>2015-05-06<ul>
          <li>
            <xref href="../../../Rosetta/DITA-CAN/CA14-Emerging_Issues/publication.dita">2015-05-05
              - publication id-CA14-35631: Added note to covert (TM), (R), and (MC) to unicode code
              points. DB # 45. Applicable to CA14.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.doc-heading-LxAdv-dc.title.dita">2015-05-05 - docinfo:doc-heading to dc:title id-CCCC-10292: Added note to convert
              (TM), (R), and (MC) to unicode code points. DB # 45. Applicable to CA14.</xref>
          </li>
        </ul></p>
    </section>

    <section>
      <title>Seclaw 8.5 PROD</title>
      <p>2015-04-27<ul>
          <li>
            <xref href="../../../Rosetta/DITA-CAN/CA14-Emerging_Issues/Introduction.dita">2015-04-27
              - Introduction id-CA14-35627: Updated schema version to 8.5 PROD.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/DITA-CAN/CA14-Emerging_Issues/Introduction.dita">2015-04-27
              - Introduction id-CA14-35627: New rule to create
                <targetxml>@seclawtype="digest"</targetxml> on the root element. RFA 21.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/DITA-CAN/CA14-Emerging_Issues/case.reportercite.dita">2015-04-27 - case:reportercite id-CA14-35618: New rule. Adds value
                <targetxml>@citetype="journal"</targetxml>. To be applied to the first citation.
              Canada is remediating source data so that the journal cite always comes first. RFA 3
              an 23.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/DITA-CAN/CA14-Emerging_Issues/document.highlights-to-doc.overview.dita">2015-04-27 - Document Highlights become doc:overview id-CA14-35635: New section. New
              target. Rules to create extracted overview. R4.5 RFA #2287.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_docinfo-LxAdv-doc.metadata_doc.docinfo.dita">2015-04-14 - docinfo to doc:metadata/doc:docinfo id-CCCC-10282: Remove bullet icon in
              sub nested list for handling Indentation isssue.</xref>
          </li>
        </ul></p></section>
    <section>
      <title>Seclaw 8.3 PROD</title>
      <p>2015-04-07 <note>An example XSLT stylesheet to transform the source Rosetta mark-up into
          the target New Lexis mark-up is included with this update and can be found on Sharepoint
          at the same location as this PDF file. Please be aware that the example XSLT stylesheet
          was created as part of the quality control process of conversion instruction creation and
          is offered as an informational asset. This CI document remains the authoritative source of
          conversion instructions.</note>
      </p>
    </section>
    <section>
      <title>Seclaw 8.3 PROD</title>
      <p>2015-03-27 <ul>
          <li>
            <xref href="../../../Rosetta/DITA-CAN/CA14-Emerging_Issues/Introduction.dita">2015-03-27
              - Introduction id-CA14-35627: Updated schema version to 8.3 PROD.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/DITA-CAN/CA14-Emerging_Issues/dig.item.dita">2015-03-26 -
              dig:item id-CA14-35624: Not a rule change. Added example to illustrate special action
              for dpsi 03KA Carlson Quantums. For completeness, not an RFA.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/DITA-CAN/CA14-Emerging_Issues/dig.damage.dita">2015-03-26 -
              dig:damage id-CA14-35633: For target <targetxml>casedigest:valuation</targetxml>,
              added child <targetxml>bodytext</targetxml> to rule and example. The child is
              required. RFA 12.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/DITA-CAN/CA14-Emerging_Issues/highlight.dita">2015-03-26 -
              highlight id-CA14-35626: Added instruction to suppress <sourcexml>hrule</sourcexml>.
              RFA 12.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/DITA-CAN/CA14-Emerging_Issues/case.courtname.dita">2015-03-26 - case:courtname id-CA14-35614: Added rule for sibling
                <sourcexml>case:courtname</sourcexml>, to create wrapper
                <targetxml>jurisinfo:courtinfo</targetxml> for each. RFA 13.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/DITA-CAN/CA14-Emerging_Issues/case.reportercite.dita">2015-03-26 - case:reportercite id-CA14-35618: Added note on sibling
                <sourcexml>case:reportercite</sourcexml>, to map within single
                <targetxml>ref:citations</targetxml> wrapper. No change to target xpaths. RFA
              12.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/DITA-CAN/CA14-Emerging_Issues/case.subhist.dita">2015-03-26
              - case:subhist id-CA14-35619: Removed <targetxml>seclaw:digestinfo</targetxml> from
              target xpath. Corrects a typo, was not valid. RFA 12.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/DITA-CAN/CA14-Emerging_Issues/bodytext.dita">2015-03-26 -
              bodytext id-CA14-35610: Added rule for <sourcexml>bodytext/heading</sourcexml> to make
                <targetxml>heading</targetxml> sibling not child. RFA 12.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/DITA-CAN/CA14-Emerging_Issues/dig.info.dita">2015-03-25 -
              dig:info id-CA14-35623: Not a rule change. Minor change to CI format only. Moved an
              existing note from below example to above.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/DITA-CAN/CA14-Emerging_Issues/highlight.dita">2015-03-25 -
              highlight id-CA14-35626: Not a rule change. Minor change to CI format only. Moved an
              existing note from below examples to above.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/DITA-CAN/CA14-Emerging_Issues/case.constituents.dita">2015-03-25 - case:constituents id-CA14-35612: Not a rule change. Removed note about a
              pending schema change. Schema now allows
                <targetxml>caseinfo:caseinfo/courtcase:testimony</targetxml>
            </xref>
          </li>
        </ul>
      </p>
    </section>
    <section>
      <title>Seclaw 8.1 PROD</title>
      <p>2015-03-04 <ul>
          <li>Created.</li>
        </ul>
      </p>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA14-Emerging_Issues\Change-Log.dita  -->
	<xsl:message>CA14-Emerging_Issues_Change-Log.xsl requires manual development!</xsl:message> 

</xsl:stylesheet>