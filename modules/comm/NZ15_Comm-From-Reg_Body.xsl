<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
 xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
 xmlns:comm="http://www.lexis-nexis.com/glp/comm"
 xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/"
 xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/"
 xmlns:regulation="urn:x-lexisnexis:content:regulation:sharedservices:1" version="2.0"
 exclude-result-prefixes="dita">

 <dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Comm-From-Reg_Body">
  <title>Body <lnpid>id-NZ15-25407</lnpid></title>
  <shortdesc>All of the following are descendants of <targetxml>comm:body</targetxml>. Handle in
   document order unless specifically stated otherwise. Refer to General Markup Section for handling
   of children (including mixed content).</shortdesc>
  <body>
   <section>
    <title>comm:body</title>
    <p><sourcexml>/comm:body</sourcexml> becomes <targetxml>/regulation:body</targetxml> and
     children as described below: <note>Highlighted below are some of the major xpaths you may
      incur. However please reference the common general markup elements on the handling of other
      element not specifically outlined in this section. </note>
     <ul>
      <li><sourcexml>level</sourcexml> becomes <targetxml>primlaw:level</targetxml> comes with
       following attributes: <ul>
        <li><sourcexml>@id</sourcexml> becomes <targetxml>@xml:id</targetxml></li>
        <li><sourcexml>@subdoc</sourcexml> becomes <targetxml>@includeintoc</targetxml></li>
        <li><sourcexml>@toc-caption</sourcexml> becomes
         <targetxml>@alternatetoccaption</targetxml></li>
        <li><sourcexml>@leveltype</sourcexml> becomes <targetxml>@leveltype</targetxml> and the
         values are tokenized for <targetxml>@leveltype</targetxml>. These are listed below: <ul>
          <li><targetxml>primlaw:level[@leveltype="act"]</targetxml></li>
          <li><targetxml>primlaw:level[@leveltype="addendum"]</targetxml></li>
          <li><targetxml>primlaw:level[@leveltype="amendment"]</targetxml></li>
          <li><targetxml>primlaw:level[@leveltype="annex"]</targetxml></li>
          <li><targetxml>primlaw:level[@leveltype="appendix"]</targetxml></li>
          <li><targetxml>primlaw:level[@leveltype="article"]</targetxml></li>
          <li><targetxml>primlaw:level[@leveltype="attachment"]</targetxml></li>
          <li><targetxml>primlaw:level[@leveltype="canon"]</targetxml></li>
          <li><targetxml>primlaw:level[@leveltype="chapter"]</targetxml></li>
          <li><targetxml>primlaw:level[@leveltype="clause"]</targetxml></li>
          <li><targetxml>primlaw:level[@leveltype="companion"]</targetxml></li>
          <li><targetxml>primlaw:level[@leveltype="constitution"]</targetxml></li>
          <li><targetxml>primlaw:level[@leveltype="dictionary"]</targetxml></li>
          <li><targetxml>primlaw:level[@leveltype="division"]</targetxml></li>
          <li><targetxml>primlaw:level[@leveltype="endnote"]</targetxml></li>
          <li><targetxml>primlaw:level[@leveltype="exhibit"]</targetxml></li>
          <li><targetxml>primlaw:level[@leveltype="form"]</targetxml></li>
          <li><targetxml>primlaw:level[@leveltype="hierarchy-note"]</targetxml></li>
          <li><targetxml>primlaw:level[@leveltype="instrument"]</targetxml></li>
          <li><targetxml>primlaw:level[@leveltype="introduction"]</targetxml></li>
          <li><targetxml>primlaw:level[@leveltype="order"]</targetxml></li>
          <li><targetxml>primlaw:level[@leveltype="paragraph"]</targetxml></li>
          <li><targetxml>primlaw:level[@leveltype="part"]</targetxml></li>
          <li><targetxml>primlaw:level[@leveltype="preamble"]</targetxml></li>
          <li><targetxml>primlaw:level[@leveltype="regulation"]</targetxml></li>
          <li><targetxml>primlaw:level[@leveltype="rule"]</targetxml></li>
          <li><targetxml>primlaw:level[@leveltype="schedule"]</targetxml></li>
          <li><targetxml>primlaw:level[@leveltype="section"]</targetxml></li>
          <li><targetxml>primlaw:level[@leveltype="subarticle"]</targetxml></li>
          <li><targetxml>primlaw:level[@leveltype="subchapter"]</targetxml></li>
          <li><targetxml>primlaw:level[@leveltype="subclause"]</targetxml></li>
          <li><targetxml>primlaw:level[@leveltype="subdivision"]</targetxml></li>
          <li><targetxml>primlaw:level[@leveltype="subparagraph"]</targetxml></li>
          <li><targetxml>primlaw:level[@leveltype="subpart"]</targetxml></li>
          <li><targetxml>primlaw:level[@leveltype="subregulation"]</targetxml></li>
          <li><targetxml>primlaw:level[@leveltype="subschedule"]</targetxml></li>
          <li><targetxml>primlaw:level[@leveltype="subrule"]</targetxml></li>
          <li><targetxml>primlaw:level[@leveltype="subsection"]</targetxml></li>
          <li><targetxml>primlaw:level[@leveltype="subtitle"]</targetxml></li>
          <li><targetxml>primlaw:level[@leveltype="supplement"]</targetxml></li>
          <li><targetxml>primlaw:level[@leveltype="table-of-contents"]</targetxml></li>
          <li><targetxml>primlaw:level[@leveltype="title"]</targetxml></li>
          <li><targetxml>primlaw:level[@leveltype="topic"]</targetxml></li>
          <li><targetxml>primlaw:level[@leveltype="treaty"]</targetxml></li>
          <li><targetxml>primlaw:level[@leveltype="agency"]</targetxml></li>
          <li><targetxml>primlaw:level[@leveltype="subagency"]</targetxml></li>
          <li><targetxml>primlaw:level[@leveltype="unclassified"]</targetxml></li>
         </ul>
        </li>
       </ul>
       <p><b>Below are the unique values for <targetxml>@leveltype</targetxml> found in the source
         documents and the corresponding mapping in NewLexis.</b></p>
       <ul>
        <li><sourcexml>level[@leveltype="para0"]</sourcexml> becomes
          <targetxml>primlaw:level[@leveltype="paragraph"]</targetxml></li>
        <li><!-- <b>Praposed <sourcexml>level[@leveltype="comm.chap"]</sourcexml> value in  NewLexis.</b>-->
         <sourcexml>level[@leveltype="comm.chap"]</sourcexml> becomes
          <targetxml>primlaw:level[@leveltype="chapter"]</targetxml></li>
       </ul>
       <targetxml>primlaw:level</targetxml> populated as: <pre>
&lt;level id="NZREGS_REVOKED-REGS-WORKING-AREA.SGM_PARA-2010R49-HISTORY" leveltype="para0" subdoc="true" toc-caption="History"&gt;
<b>Becomes</b>
&lt;primlaw:level xml:id="NZREGS_REVOKED-REGS-WORKING-AREA.SGM_PARA-2010R49-HISTORY" leveltype="paragraph" alternatetoccaption="History" includeintoc="true"&gt;
</pre>
       <ul>
        <li><sourcexml>/level/heading</sourcexml> becomes
          <targetxml>/primlaw:level/heading</targetxml></li>
        <li><sourcexml>/level/heading/title</sourcexml> becomes
          <targetxml>/primlaw:level/heading/title</targetxml> and populated as below: <pre>

&lt;level id="NZREGS_REVOKED-REGS-WORKING-AREA.SGM_PARA-2010R49-HISTORY" leveltype="para0" subdoc="true" toc-caption="History"&gt;
 &lt;heading searchtype="COMMENTARY"&gt;
  &lt;title&gt;&lt;refpt id="PARA-2010R49-HISTORY" type="ext"/&gt;History&lt;/title&gt;
 &lt;/heading&gt;
 ....
&lt;/level&gt;
<b>Becomes</b>

&lt;primlaw:level xml:id="NZREGS_REVOKED-REGS-WORKING-AREA.SGM_PARA-2010R49-HISTORY" leveltype="paragraph" alternatetoccaption="History" includeintoc="true"&gt;
 &lt;ref:anchor id="PARA-2010R49-HISTORY" anchortype="global"/&gt;
 &lt;heading&gt;
  &lt;title&gt;History&lt;/title&gt;
 &lt;/heading&gt;
 ....
&lt;/primlaw:level&gt;
</pre>
         <note>If <sourcexml>refpt</sourcexml> occurs under
           <sourcexml>level/heading/title/refpt</sourcexml> then <targetxml>ref:anchor</targetxml>
          will become direct child of <targetxml>primlaw:level</targetxml>.</note>
         <note>For more information <targetxml>ref:anchor</targetxml>, please see the instructions
          for <xref href="../../common_newest/Rosetta_refpt-LxAdv-ref.anchor.dita"
          >refpt</xref>.</note>
         <note>Note: <sourcexml>@searchtype</sourcexml> attribute should be suppressed from
          conversion in NewLexis expect for JCITE markup.</note>
        </li>
        <li><sourcexml>/level/bodytext</sourcexml> becomes
          <targetxml>/primlaw:level/primlaw:bodytext</targetxml> and populated as: <note>Refer to
          Genral Markup for specifics on how to handle <xref
           href="../../common_newest/Rosetta_p-LxAdv-p.dita">p</xref>, <xref
           href="../../common_newest/Rosetta_text-LxAdv-text.dita">text</xref> and <xref
           href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita"
           >remotelink</xref> for handling of <sourcexml>p</sourcexml>, <sourcexml>text</sourcexml>
          and <sourcexml>remotelink</sourcexml> elements.</note>
         <pre>

&lt;level id="NZREGS_REVOKED-REGS-WORKING-AREA.SGM_PARA-2010R49-HISTORY" leveltype="para0" subdoc="true" toc-caption="History"&gt;
 &lt;heading searchtype="COMMENTARY"&gt;
  &lt;title&gt;&lt;refpt id="PARA-2010R49-HISTORY" type="ext"/&gt;History&lt;/title&gt;
 &lt;/heading&gt;
 &lt;bodytext searchtype="COMMENTARY"&gt;
  &lt;p&gt;&lt;text&gt;SR 2010/49: Expired on close of 30 April 2010 by &lt;remotelink dpsi="02IO" docidref="ABCD_9876" remotekey1="REFPTID" service="DOC-ID" refpt="2010R49S3"&gt;cl 3&lt;/remotelink&gt; .&lt;/text&gt;&lt;/p&gt;
 &lt;/bodytext&gt;
&lt;/level&gt;
<b>Becomes</b>

&lt;primlaw:level xml:id="NZREGS_REVOKED-REGS-WORKING-AREA.SGM_PARA-2010R49-HISTORY" leveltype="paragraph" alternatetoccaption="History" includeintoc="true"&gt;
 &lt;ref:anchor id="PARA-2010R49-HISTORY" anchortype="global"/&gt;
 &lt;heading&gt;
  &lt;title&gt;History&lt;/title&gt;
 &lt;/heading&gt;
 &lt;primlaw:bodytext&gt;
  &lt;p&gt;&lt;text&gt;SR 2010/49: Expired on close of 30 April 2010 by &lt;ref:crossreferencegroup&gt;
   &lt;ref:crossreference crossreferencetype="seeAlso"&gt;
    &lt;ref:content&gt;cl 3&lt;/ref:content&gt;
    &lt;ref:locator anchoridref="_02IO-2010R49S3"&gt;
     &lt;ref:locator-key&gt;
      &lt;ref:key-name name="DOC-ID"/&gt;
      &lt;ref:key-value value="02IO-ABCD_9876"/&gt;
     &lt;/ref:locator-key&gt;
    &lt;/ref:locator&gt;
   &lt;/ref:crossreference&gt;
 &lt;/ref:crossreferencegroup&gt; .&lt;/text&gt;&lt;/p&gt;
 &lt;/primlaw:bodytext&gt;
&lt;/primlaw:level&gt;
</pre>
        </li>
        <li><sourcexml>/level/level</sourcexml> becoems
          <targetxml>/primlaw:level/primlaw:level</targetxml> and populated as: <pre>

&lt;level id="NZREGS_REVOKED-REGS-WORKING-AREA.SGM_2010R49-AMENDING-LEGISLATION" leveltype="comm.chap"&gt;
 &lt;heading searchtype="COMMENTARY"&gt;
  &lt;title&gt;&lt;refpt id="2010R49-AMENDING-LEGISLATION" type="ext"/&gt;Amending Legislation&lt;/title&gt;
 &lt;/heading&gt;
 &lt;level id="NZREGS_REVOKED-REGS-WORKING-AREA.SGM_PARA-2010R49-HISTORY" leveltype="para0" subdoc="true" toc-caption="History"&gt;
  &lt;heading searchtype="COMMENTARY"&gt;
   &lt;title&gt;&lt;refpt id="PARA-2010R49-HISTORY" type="ext"/&gt;History&lt;/title&gt;
  &lt;/heading&gt;
  &lt;bodytext searchtype="COMMENTARY"&gt;
   &lt;p&gt;&lt;text&gt;SR 2010/49: Expired on close of 30 April 2010 by &lt;remotelink dpsi="02IO" docidref="ABCD_9876" remotekey1="REFPTID" service="DOC-ID" refpt="2010R49S3"&gt;cl 3&lt;/remotelink&gt; .&lt;/text&gt;&lt;/p&gt;
  &lt;/bodytext&gt;
 &lt;/level&gt;
   ....
&lt;/level&gt;
<b>Becomes</b>

&lt;primlaw:level xml:id="NZREGS_REVOKED-REGS-WORKING-AREA.SGM_2010R49-AMENDING-LEGISLATION" leveltype="chapter"&gt;
 &lt;ref:anchor id="_2010R49-AMENDING-LEGISLATION" anchortype="global"/&gt;
 &lt;heading&gt;&lt;title&gt;Amending Legislation&lt;/title&gt;&lt;/heading&gt;
 &lt;primlaw:level xml:id="NZREGS_REVOKED-REGS-WORKING-AREA.SGM_PARA-2010R49-HISTORY" leveltype="paragraph" alternatetoccaption="History" includeintoc="true"&gt;
  &lt;ref:anchor id="PARA-2010R49-HISTORY" anchortype="global"/&gt;
  &lt;heading&gt;&lt;title&gt;History&lt;/title&gt;&lt;/heading&gt;
  &lt;primlaw:bodytext&gt;
  &lt;p&gt;&lt;text&gt;SR 2010/49: Expired on close of 30 April 2010 by 
   &lt;ref:crossreferencegroup&gt;
    &lt;ref:crossreference crossreferencetype="seeAlso"&gt;
     &lt;ref:content&gt;cl 3&lt;/ref:content&gt;
     &lt;ref:locator anchoridref="_02IO-2010R49S3"&gt;
     &lt;ref:locator-key&gt;
     &lt;ref:key-name name="DOC-ID"/&gt;
     &lt;ref:key-value value="02IO-ABCD_9876"/&gt;&lt;/ref:locator-key&gt;
    &lt;ref:locator-params&gt;&lt;proc:param name="dpsi" value="02IO"/&gt;&lt;/ref:locator-params&gt;
    &lt;/ref:locator&gt;
   &lt;/ref:crossreference&gt;
  &lt;/ref:crossreferencegroup&gt;.&lt;/text&gt;&lt;/p&gt;
  &lt;/primlaw:bodytext&gt;
 &lt;/primlaw:level&gt;
 ....
&lt;/primlaw:level&gt;
</pre>
         <note>In the source attribute value
           <sourcexml>refpt[@id="2001R373-FRONT-CONTENTS"]</sourcexml> start with integer character
          but in NewLexis Schema <targetxml>ref:anchor[@id]</targetxml> has a valid value in
          "NCName" but should start with alpha character, thats why used prefix <b>'_'</b> in
           <targetxml>ref:anchor[@id="_2001R373-FRONT-CONTENTS"]</targetxml>..</note>
         <note>For more information please see the instructions for <xref
           href="../../common_newest/Rosetta_refpt-LxAdv-ref.anchor.dita">refpt</xref>.</note>
        </li>
        <li><sourcexml>/level/bodytext/p/table</sourcexml> becomes
          <targetxml>/primlaw:level/primlaw:bodytext/p/table</targetxml> and populated as: <note>For
          more information please see the instructions for <xref
           href="../../common_newest/Rosetta_table-LxAdv-table.dita">table</xref>.</note>
         <pre>

&lt;level id="NZREGS_REVOKED-REGS-WORKING-AREA.SGM_2010R49-AMENDING-LEGISLATION" leveltype="comm.chap"&gt;
 &lt;heading searchtype="COMMENTARY"&gt;
  &lt;title&gt;&lt;refpt id="2010R49-AMENDING-LEGISLATION" type="ext"/&gt;Amending Legislation&lt;/title&gt;
 &lt;/heading&gt;
 &lt;bodytext searchtype="COMMENTARY"&gt;
  &lt;p&gt;
   &lt;table frame="none" pgwide="1"&gt;
    &lt;tgroup cols="3" colsep="0" rowsep="0"&gt;
     &lt;colspec colname="col1" colwidth="1*" colsep="0" rowsep="0"/&gt;
     &lt;colspec colname="col2" colwidth="3*" colsep="0" rowsep="0"/&gt;
     &lt;colspec colname="col3" colwidth="1*" colsep="0" rowsep="0"/&gt;
     &lt;tbody valign="top"&gt;
      &lt;row rowsep="0"&gt;
       &lt;entry colsep="0" rowsep="0"&gt;SR 2010/49&amp;#x2014;&lt;/entry&gt;
       &lt;entry colsep="0" rowsep="0"&gt;Takeovers Code (The Warehouse Group Limited) Exemption Notice 2010&lt;/entry&gt;
       &lt;entry colsep="0" rowsep="0"&gt;
        &lt;remotelink dpsi="02IO" remotekey1="REFPTID" docidref="ABCD_9876" service="DOC-ID" refpt="2010R49S3"&gt;cl 3&lt;/remotelink&gt;
       &lt;/entry&gt;
      &lt;/row&gt;
     &lt;/tbody&gt;
    &lt;/tgroup&gt;
   &lt;/table&gt;
  &lt;/p&gt;
 &lt;/bodytext&gt;
&lt;/level&gt;
<b>Becomes</b>

&lt;primlaw:level xml:id="NZREGS_REVOKED-REGS-WORKING-AREA.SGM_2010R49-AMENDING-LEGISLATION" leveltype="chapter"&gt;
 &lt;ref:anchor id="_2010R49-AMENDING-LEGISLATION" anchortype="global"/&gt;
 &lt;heading&gt;&lt;title&gt;Amending Legislation&lt;/title&gt;&lt;/heading&gt;
 &lt;primlaw:bodytext&gt;
  &lt;p&gt;
   &lt;table frame="none" pgwide="1"&gt;
    &lt;tgroup cols="3" colsep="0" rowsep="0"&gt;
     &lt;colspec colsep="0" rowsep="0" colname="col1" colwidth="1*"/&gt;
     &lt;colspec colsep="0" rowsep="0" colname="col2" colwidth="3*"/&gt;
     &lt;colspec colsep="0" rowsep="0" colname="col3" colwidth="1*"/&gt;
     &lt;tbody valign="top"&gt;
      &lt;row rowsep="0"&gt;
       &lt;entry colsep="0" rowsep="0"&gt;SR 2010/49&amp;#x2014;&lt;/entry&gt;
       &lt;entry colsep="0" rowsep="0"&gt;Takeovers Code &amp;#x0028;The Warehouse Group Limited&amp;#x0029; Exemption Notice 2010&lt;/entry&gt;
       &lt;entry colsep="0" rowsep="0"&gt;&lt;ref:crossreferencegroup&gt;&lt;ref:crossreference crossreferencetype="seeAlso"&gt;
        &lt;ref:content&gt;cl 3&lt;/ref:content&gt;
        &lt;ref:locator anchoridref="_02IO-2010R49S3"&gt;
         &lt;ref:locator-key&gt;
          &lt;ref:key-name name="DOC-ID"/&gt;
          &lt;ref:key-value value="_2010R49S3"/&gt;
         &lt;/ref:locator-key&gt;
         &lt;ref:locator-params&gt;
          &lt;proc:param name="dpsi" value="02IO-ABCD_9876"/&gt;
         &lt;/ref:locator-params&gt;
        &lt;/ref:locator&gt;
       &lt;/ref:crossreference&gt;&lt;/ref:crossreferencegroup&gt;&lt;/entry&gt;
      &lt;/row&gt;
     &lt;/tbody&gt;
    &lt;/tgroup&gt;
   &lt;/table&gt;&lt;/p&gt;
 &lt;/primlaw:bodytext&gt;
&lt;/primlaw:level&gt;
</pre>
        </li>
        <li><sourcexml>/level/bodytext/p/l/li</sourcexml> becomes
          <targetxml>/primlaw:level/primlaw:bodytext/p/list/listitem</targetxml>
         <note>For more information please see the instructions for <xref
           href="../../common_newest/Rosetta_l-LxAdv-list.dita">l</xref>.</note>
         <pre>

&lt;level id="NZREGS_REGS-E.SGM_PARA-1952R149-EDITORIAL-NOTES" leveltype="comm.chap"&gt;
 &lt;heading searchtype="COMMENTARY"&gt;&lt;title&gt;&lt;refpt id="PARA-1952R149-EDITORIAL-NOTES" type="ext"/&gt;Editorial Notes&lt;/title&gt;&lt;/heading&gt;
 &lt;bodytext searchtype="COMMENTARY"&gt;
  &lt;p&gt;
   &lt;l&gt;
    &lt;li&gt;
     &lt;lilabel&gt;1.&lt;/lilabel&gt;
     &lt;p&gt;&lt;text&gt;These regulations were reprinted (under section 7 of the Regulations Act&amp;#xA0;1936) as SR 1968/170 and certified on 11&amp;#xA0;September 1968.&lt;/text&gt;&lt;/p&gt;
   &lt;/li&gt;
   ....
   &lt;/l&gt;
  &lt;/p&gt;
 &lt;/bodytext&gt;
&lt;/level&gt;
<b>Becomes</b>

&lt;primlaw:level xml:id="NZREGS_REGS-E.SGM_PARA-1952R149-EDITORIAL-NOTES" leveltype="chapter"&gt;
 &lt;ref:anchor id="PARA-1952R149-EDITORIAL-NOTES" anchortype="global"/&gt;
 &lt;heading&gt;&lt;title&gt;Editorial Notes&lt;/title&gt;&lt;/heading&gt;
 &lt;primlaw:bodytext&gt;
  &lt;p&gt;
   &lt;list&gt;
    &lt;listitem&gt;
     &lt;label&gt;1.&lt;/label&gt;
     &lt;bodytext&gt;
      &lt;p&gt;&lt;text&gt;These regulations were reprinted &amp;#x0028;under section 7 of the Regulations Act&amp;#x00A0;1936&amp;#x0029; as SR 1968/170 and certified on 11&amp;#x00A0;September 1968.&lt;/text&gt;&lt;/p&gt;
     &lt;/bodytext&gt;
    &lt;/listitem&gt;
    ....
   &lt;/list&gt;
  &lt;/p&gt;
 &lt;/primlaw:bodytext&gt;
&lt;/primlaw:level&gt;
</pre>
        </li>
        <li><sourcexml>/level/bodytext/p/table/tgroup/tbody/row/entry/ci:cite</sourcexml> becomes
          <targetxml>/primlaw:level/primlaw:bodytext/p/table/tgroup/tbody/row/entry/lnci:cite</targetxml>
         populated as: <note>For more information please see the instructions for <xref
           href="../../common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">ci:cite</xref>.</note>
         <pre>

&lt;level id="NZREGS_REGS-D.SGM_2001R373-FRONT-CONTENTS" leveltype="comm.chap"&gt;
 &lt;heading searchtype="COMMENTARY"&gt;
  &lt;title&gt;&lt;refpt id="2001R373-FRONT-CONTENTS" type="ext"/&gt;Dairy Industry (Herd Testing and New Zealand Dairy Core Database) Regulations 2001&lt;/title&gt;
 &lt;/heading&gt;
 &lt;bodytext searchtype="COMMENTARY"&gt;
  ....
  &lt;p&gt;
   &lt;table frame="none" pgwide="1"&gt;
    &lt;tgroup cols="4" colsep="0" rowsep="0"&gt;
     &lt;colspec colname="col1" colsep="0" colwidth="1*" rowsep="0"/&gt;
     &lt;colspec colname="col2" colsep="0" colwidth="2*" rowsep="0"/&gt;
     &lt;colspec colname="col3" colsep="0" colwidth="6*" rowsep="0"/&gt;
     &lt;colspec colname="col4" colsep="0" colwidth="1*" rowsep="0"/&gt;
     &lt;tbody valign="top"&gt;
      &lt;row rowsep="0"&gt;
       &lt;entry colsep="0" rowsep="0"&gt;&lt;ci:cite searchtype="LEG-REF"&gt;
        &lt;ci:content&gt;
         &lt;remotelink dpsi="006A" refpt="2001R373S1" remotekey1="REFPTID" service="DOC-ID"&gt;1&lt;/remotelink&gt;
        &lt;/ci:content&gt;&lt;/ci:cite&gt;&lt;/entry&gt;
        ....
      &lt;/row&gt;
     &lt;/tbody&gt;
    &lt;/tgroup&gt;
   &lt;/table&gt;
  &lt;/p&gt;
 &lt;/bodytext&gt;
&lt;/level&gt;
<b>Becomes</b>

&lt;primlaw:level xml:id="NZREGS_REGS-D.SGM_2001R373-FRONT-CONTENTS" leveltype="chapter"&gt;
 &lt;ref:anchor id="_2001R373-FRONT-CONTENTS" anchortype="global"/&gt;
 &lt;heading&gt;&lt;title&gt;Dairy Industry &amp;#x0028;Herd Testing and New Zealand Dairy Core Database&amp;#x0029; Regulations&amp;#x00A0;2001&lt;/title&gt;&lt;/heading&gt;
 &lt;primlaw:bodytext&gt;
 ....
  &lt;p&gt;
   &lt;table frame="none" pgwide="1"&gt;
    &lt;tgroup cols="4" colsep="0" rowsep="0"&gt;
     &lt;colspec colsep="0" rowsep="0" colname="col1" colwidth="1*"/&gt;
     &lt;colspec colsep="0" rowsep="0" colname="col2" colwidth="2*"/&gt;
     &lt;colspec colsep="0" rowsep="0" colname="col3" colwidth="6*"/&gt;
     &lt;colspec colsep="0" rowsep="0" colname="col4" colwidth="1*"/&gt;
     &lt;tbody valign="top"&gt;
      &lt;row rowsep="0"&gt;
       &lt;entry colsep="0" rowsep="0"&gt;
        &lt;lnci:cite type="legislation" citeref="_2001R373S1"&gt;
         &lt;lnci:content&gt;1&lt;/lnci:content&gt;
        &lt;/lnci:cite&gt;
       &lt;/entry&gt;
       ....
      &lt;/row&gt;
     &lt;/tbody&gt;
    &lt;/tgroup&gt;
   &lt;/table&gt;
  &lt;/p&gt;
 &lt;/primlaw:bodytext&gt;
&lt;/primlaw:level&gt;
</pre>
        </li>
        <li><sourcexml>/level/bodytext/h</sourcexml> becomes
          <targetxml>/primlaw:level/primlaw:bodytext/h</targetxml> and populated as: <note>For more
          information please see the instructions for <xref
           href="../../common_newest/Rosetta_h-LxAdv-h.dita">h</xref>.</note>
         <pre>
 
&lt;level id="NZREGS_REGS-D.SGM_2001R373-FRONT-CONTENTS" leveltype="comm.chap"&gt;
 &lt;heading searchtype="COMMENTARY"&gt;
  &lt;title&gt;&lt;refpt id="2001R373-FRONT-CONTENTS" type="ext"/&gt;Dairy Industry (Herd Testing and New Zealand Dairy Core Database) Regulations 2001&lt;/title&gt;
 &lt;/heading&gt;
 &lt;bodytext searchtype="COMMENTARY"&gt;
  &lt;p&gt;
   &lt;table frame="none" pgwide="1"&gt;
        ....
   &lt;/table&gt;
  &lt;/p&gt;
  &lt;h&gt;Contents&lt;/h&gt;
  &lt;p&gt;
   &lt;table frame="none" pgwide="1"&gt;
     ....
   &lt;/table&gt;
  &lt;/p&gt;
 &lt;/bodytext&gt;
&lt;/level&gt;
<b>Becomes</b>

&lt;primlaw:level xml:id="NZREGS_REGS-D.SGM_2001R373-FRONT-CONTENTS" leveltype="chapter"&gt;
 &lt;ref:anchor id="_2001R373-FRONT-CONTENTS" anchortype="global"/&gt;
 &lt;heading&gt;
  &lt;title&gt;Dairy Industry &amp;#x0028;Herd Testing and New Zealand Dairy Core Database&amp;#x0029; Regulations 2001&lt;/title&gt;
 &lt;/heading&gt;
 &lt;primlaw:bodytext&gt;
  &lt;p&gt;
   &lt;table frame="none" pgwide="1"&gt;
         ....
   &lt;/table&gt;
  &lt;/p&gt;
  &lt;h&gt;Contents&lt;/h&gt;
  &lt;p&gt;
   &lt;table frame="none" pgwide="1"&gt;
         ....
   &lt;/table&gt;
  &lt;/p&gt;
 &lt;/primlaw:bodytext&gt;
&lt;/primlaw:level&gt;
</pre>
        </li>
        <li><sourcexml>/level/bodytext/pgrp</sourcexml> becomes
          <targetxml>/primlaw:level/primlaw:bodytext/pgrp</targetxml> and populated as: <note>For
          more information please see the instructions for <xref
           href="../../common_newest/Rosetta_pgrp-LxAdv-pgrp.dita">pgrp</xref>.</note>
         <pre>

&lt;level id="NZREGS_LEGISLATION-HOME-PAGE.SGM_HP-LEG" leveltype="comm.chap"&gt;
 &lt;heading searchtype="COMMENTARY"&gt;
  &lt;title&gt;&lt;refpt id="HP-LEG" type="ext"/&gt;Legislation Home Page&lt;/title&gt;
 &lt;/heading&gt;
 &lt;bodytext searchtype="COMMENTARY"&gt;
  &lt;pgrp&gt;
   &lt;heading&gt;
    &lt;title&gt;New Zealand Acts in force&lt;/title&gt;
   &lt;/heading&gt;
   &lt;p&gt;
    &lt;table frame="none" pgwide="1"&gt;
         ....
    &lt;/table&gt;
   &lt;/p&gt;
  &lt;/pgrp&gt;
 &lt;/bodytext&gt;
&lt;/level&gt;
<b>Becomes</b>

&lt;primlaw:level xml:id="NZREGS_LEGISLATION-HOME-PAGE.SGM_HP-LEG" leveltype="chapter"&gt;
 &lt;ref:anchor id="HP-LEG" anchortype="global"/&gt;
 &lt;heading&gt;
  &lt;title&gt;Legislation Home Page&lt;/title&gt;
 &lt;/heading&gt;
 &lt;primlaw:bodytext&gt;
  &lt;pgrp&gt;
   &lt;heading&gt;
    &lt;title&gt;New Zealand Acts in force&lt;/title&gt;
   &lt;/heading&gt;
   &lt;p&gt;
    &lt;table frame="none" pgwide="1"&gt;
          ....
    &lt;/table&gt;
   &lt;/p&gt;
  &lt;/pgrp&gt;
 &lt;/primlaw:bodytext&gt;
&lt;/primlaw:level&gt;
</pre>
        </li>
       </ul>
      </li>
     </ul>
    </p>
   </section>
  </body>
 </dita:topic>

    <!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
    <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\NZ15_Commentary_From_Regs\Comm-From-Reg_Body.dita  -->
    <!-- <xsl:message>NZ15_Comm-From-Reg_Body.xsl requires manual development!</xsl:message> -->

    <xsl:template match="comm:body">
        <!--  Original Target XPath:  /regulation:body   -->
        <regulation:body>
            <xsl:apply-templates select="@* | node()"/>
        </regulation:body>
    </xsl:template>
   
    <xsl:template match="level">
        <!--  Original Target XPath:  primlaw:level   -->
        <primlaw:level>
            <xsl:apply-templates select="@*" />
            <xsl:apply-templates select="heading//refpt" />
            <xsl:apply-templates select="node()"/>
        </primlaw:level>
    </xsl:template>

    <xsl:template match="level/@leveltype">
        <xsl:variable name="baseValue">
            <xsl:value-of select="." />
        </xsl:variable>
        <xsl:variable name="mappedValue">
            <xsl:choose>
                <xsl:when test="$baseValue= ('act', 'addendum', 'amendment', 'annex', 'appendix', 'article', 'attachment', 'canon', 'chapter', 'clause',
                                             'companion', 'constitution', 'dictionary', 'division', 'endnote', 'exhibit', 'form', 'hierarchy-note', 'instrument',
                                             'introduction', 'order', 'paragraph', 'part', 'preamble', 'regulation', 'rule', 'schedule', 'section', 'subarticle',
                                             'subchapter', 'subclause', 'subdivision', 'subparagraph', 'subpart', 'subregulation', 'subschedule', 'subrule',
                                             'subsection', 'subtitle', 'supplement', 'table-of-contents', 'title', 'topic', 'treaty', 'agency', 'subagency',
                                             'unclassified')">
                    <xsl:value-of select="$baseValue" />
                </xsl:when>   
                <xsl:when test="$baseValue='comm.chap'">chapter</xsl:when>
                <xsl:when test="$baseValue='para0'">paragraph</xsl:when>
                <xsl:otherwise>
                    <!-- MCJ:  Unrecognized value, not sure whether this should generate an error... -->
                    <xsl:text>unclassified</xsl:text>
                </xsl:otherwise>
            </xsl:choose>
        </xsl:variable>
     
        <xsl:attribute name="leveltype">
            <xsl:value-of select="$mappedValue" />
        </xsl:attribute>
    </xsl:template>

    <xsl:template match="bodytext">
        <primlaw:bodytext>
            <xsl:apply-templates select="@* | node()" />
        </primlaw:bodytext>
    </xsl:template>
 
    <!-- Suppress bodytext/@searchtype. -->
    <xsl:template match="bodytext/@searchtype" />
</xsl:stylesheet>
