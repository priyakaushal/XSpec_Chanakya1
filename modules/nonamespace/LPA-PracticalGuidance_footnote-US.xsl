<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:ci="http://www.lexis-nexis.com/ci" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:lnci="http://www.lexisnexis.com/xmlschemas/content/shared/citations/1/" xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita ci leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="common_rosetta_footnote">
  <title>footnotegrp &amp; footnote <lnpid>id-USPA-31019</lnpid></title>
  <body>
    <section>
      <title>Instructions <i>[common element]</i></title>
      <p>The source document has footnote references and footnotes. The footnote reference is tagged at the same location where it appears and all
        footnotes appear at the end of the source document. But in NL schema, the footnote element appears where the footnote reference appears in
        content, and so each footnote must be matched with the corresponding footnote reference and relocated in the target document to the location
        of the first tagged reference to that footnote.</p>
      <p>The footnote markup for NL schema as described below: <ul>
          <li>The <sourcexml>footnotegrp/footnote</sourcexml> content must be relocated to the point of the first instance of the matching reference
            number. Use the <sourcexml>@fnrtoken</sourcexml> attribute to match the source footnote reference indicated by <sourcexml>fnr</sourcexml>
            with the actual source footnote content contained in the <sourcexml>footnote</sourcexml>.</li>

          <li>After the proper position is located and the <sourcexml>footnotegrp/footnote</sourcexml> content has been relocated,
              <sourcexml>fnr</sourcexml> is dropped. This includes its content and the attribute values <sourcexml>@fnrtoken</sourcexml> and
              <sourcexml>@fntoken</sourcexml>. Note that this content and these attribute values are also duplicated in the corresponding source
              <sourcexml>footnote</sourcexml> that is moved to the position of the footnote reference as indicated by <sourcexml>fnr</sourcexml>.</li>

          <li> Create <targetxml>footnote/ref:anchor</targetxml> with <targetxml>@id</targetxml> and set
              <targetxml>footnote/ref:anchor[@id]</targetxml> to the value of <sourcexml>footnote[@fntoken]</sourcexml>. <note>All ref anchors will
              have as a prefix the lower case country code followed by an underscore (eg: “au_”, “nz_”</note></li>

          <li>Drop attribute <sourcexml>@fnrtokens</sourcexml> and <sourcexml>@fntoken</sourcexml> from the <sourcexml>footnote</sourcexml> element,
            but note as described above that the source <sourcexml>footnote[@fntoken]</sourcexml> value is moved to the target
              <targetxml>footnote/ref:anchor[@id]</targetxml></li>

          <li><sourcexml>footnote/fnlabel</sourcexml> becomes <targetxml>footnote/label</targetxml>.</li>

          <li><sourcexml>footnote/fnbody</sourcexml> becomes <targetxml>footnote/bodytext</targetxml>.</li>

          <li>Drop <sourcexml>footnotegrp</sourcexml> wrapper tags after moving and converting of all of its child <sourcexml>footnote</sourcexml>
            elements to the appropriate place as described above.</li>

          <li><sourcexml>footnote/@type</sourcexml> becomes <targetxml>footnote/@role</targetxml> unless the value of
              <sourcexml>footnote/@type</sourcexml> is "default" or "annotation", in which case <sourcexml>footnote/@type</sourcexml> is suppressed
            and <targetxml>footnote/@role</targetxml> is not generated.</li>

          <li><sourcexml>fnr/@alt-label</sourcexml> should be suppressed from conversion because this attribute is already deprecated in the DTD
            itself.</li>

          <li><sourcexml>fnr/@id</sourcexml> becomes <targetxml>footnote/@xml:id</targetxml>. <note>All <targetxml>xml:id</targetxml> attributes will
              have as a prefix the lower case country code followed by an underscore (eg: “au_”, “nz_”</note></li>
        </ul>
      </p>
      <p>If more than one footnote reference points at the same footnote, then create <targetxml>footnote-ref</targetxml> with
          <targetxml>@anchoridref</targetxml>. <targetxml>footnote-ref</targetxml> create only for the additional references. And describe as below: <ul>
          <li><targetxml>@anchoridref</targetxml> value supply from first footnote reference <targetxml>footnote/ref:anchor[@id]</targetxml>.</li>
          <li><targetxml>footnote-ref/ref:anchor[@id]</targetxml> value should be unique.</li>
        </ul>
      </p>
      <p>If <sourcexml>heading</sourcexml> occurs as direct child of <sourcexml>footnotegrp</sourcexml> then conversion need to supress tag and
        content of <sourcexml>heading</sourcexml>.</p>
      <p>If <sourcexml>fnr</sourcexml> appears without <sourcexml>footnote</sourcexml> then conversion need to put the reference <b>(fnr)</b> in an
        xml comment along with this note: <b><i> footnote reference without footnote is a data error.</i></b>.</p>
      <p>If <sourcexml>footnote</sourcexml> appears without <sourcexml>fnr</sourcexml> then conversion need to put the reference <b>(footnote)</b> in
        an xml comment.</p>
      <p>If <sourcexml>fnr</sourcexml> is empty, then it should be suppressed.</p>
      <p>If input documents is having scenario <sourcexml>leg:bodytext/fnr</sourcexml> then it becomes
          <targetxml>primlaw:bodytext/textitem/footnote</targetxml>.</p>
      <p>If <sourcexml>footnote/fnbody</sourcexml> contains <sourcexml>p/refpt</sourcexml> and the value of <sourcexml>refpt/@id</sourcexml> is the
        same as the value of <sourcexml>footnote/@fntoken</sourcexml>, then the <sourcexml>refpt</sourcexml> should be suppressed because a
          <targetxml>ref:anchor</targetxml> with the same value in <targetxml>@id</targetxml> is created as child of the target
          <targetxml>footnote</targetxml>.</p>
    </section>

    <example>
      <title>Source XML</title>
      <codeblock>

&lt;p&gt;
 &lt;pnum count="2"&gt;[2]&lt;/pnum&gt;
 &lt;refpt id="20101NZLR_297_p2" type="ext"/&gt;
 &lt;text&gt;Part 2 of the Commerce Act prohibits various restrictive practices, namely practices substantially lessening competition,
	 &lt;fnr fnrtoken="fnr-20101NZLR_297-1" fntoken="fn-20101NZLR_297-1"&gt;1&lt;/fnr&gt; price fixing
 &lt;/text&gt;
&lt;/p&gt;
....
&lt;footnotegrp&gt;
  &lt;footnote fnrtokens="fnr-20101NZLR_297-1" fntoken="fn-20101NZLR_297-1"&gt;
	 &lt;fnlabel&gt;1&lt;/fnlabel&gt;
		 &lt;fnbody&gt;
			 &lt;p&gt;
				 &lt;text&gt;Sections 27 &amp;#x2013; 29.&lt;/text&gt;
			 &lt;/p&gt;
		 &lt;/fnbody&gt;
  &lt;/footnote&gt;
&lt;/footnotegrp&gt;

	</codeblock>
    </example>

    <example>
      <title>Target XML</title>
      <codeblock>

&lt;p&gt;
 &lt;ref:anchor id="au_20101NZLR_297_p2" anchortype="global"/&gt;
 &lt;desig value="2"&gt;[2]&lt;/desig&gt;        
 &lt;text&gt;Part 2 of the Commerce Act prohibits various restrictive practices, namely practices substantially lessening competition,
	&lt;footnote&gt;
	   &lt;ref:anchor id="au_fn-20101NZLR_297-1"/&gt;
	   &lt;label&gt;1&lt;/label&gt;
	   &lt;bodytext&gt;
		  &lt;p&gt;
			 &lt;text&gt;Sections 27 &amp;#x2013; 29.&lt;/text&gt;
		  &lt;/p&gt;
	   &lt;/bodytext&gt;
	&lt;/footnote&gt;
 price fixing
 &lt;/text&gt;
&lt;/p&gt;

	</codeblock>
    </example>

    <example>
      <title>Source xml: more than one footnote reference points at the same footnote</title>
      <codeblock>
      &lt;p&gt;&lt;table frame="all" pgwide="1"&gt;&lt;tgroup cols="1" colsep="0" rowsep="0" align="left"&gt;
      &lt;colspec colwidth="50*" colname="col1" colsep="0" rowsep="0"/&gt;
      &lt;tbody valign="top"&gt;&lt;row rowsep="0"&gt;&lt;entry morerows="0" colsep="0" rowsep="0"&gt;Except for land and copyright,
      &lt;fnr fntoken="PBEP.C5.FN51" fnrtoken="PBEP.C5.FN51-R"&gt;51&lt;/fnr&gt; 
      equitable interests can be created verbally. In undertaking an estate review, care must be taken to establish the scope of equitable rights that may be embedded in a person&amp;rsquo;s property at the time of review. The practitioner must ensure that the existence and administration of those rights are dealt with in accordance with the instruction of or legal obligations of the client.&lt;/entry&gt;&lt;/row&gt;&lt;/tbody&gt;&lt;/tgroup&gt;&lt;/table&gt;
      &lt;text&gt;
      &lt;fnr fntoken="PBEP.C5.FN51" fnrtoken="PBEP.C5.FN51-R"&gt;51&lt;/fnr&gt;&lt;/text&gt;&lt;/p&gt;
      &lt;footnotegrp&gt;
      &lt;!-- Etc. --&gt;
      &lt;footnote fntoken="PBEP.C5.FN51" fnrtokens="PBEP.C5.FN51-R" type="default"&gt;&lt;fnlabel&gt;51&lt;/fnlabel&gt;&lt;fnbody&gt;
      &lt;p&gt;&lt;refpt type="ext" id="PBEP.C5.FN51"/&gt;&lt;text&gt;See Copyright Act 1968 (Cth) &lt;ci:cite searchtype="LEG-REF"&gt;&lt;ci:content&gt;&lt;remotelink refpt="IPCPY.CPA.CPA.S8" dpsi="0JVS" remotekey1="REFPTID" service="DOC-ID" docidref="EXAMPLE_DOCID1&gt;ss 8&lt;/remotelink&gt;&lt;/ci:content&gt;&lt;/ci:cite&gt; and &lt;ci:cite searchtype="LEG-REF"&gt;&lt;ci:content&gt;&lt;remotelink refpt="IPCPY.CPA.CPA.S196" dpsi="0JVS" remotekey1="REFPTID" service="DOC-ID" docidref="EXAMPLE_DOCID2&gt;196&lt;/remotelink&gt;&lt;/ci:content&gt;&lt;/ci:cite&gt;.&lt;/text&gt;&lt;/p&gt;&lt;/fnbody&gt;&lt;/footnote&gt;&lt;/footnotegrp&gt;
    </codeblock>
    </example>

    <example>
      <title>Target xml: more than one footnote reference points at the same footnote</title>
      <codeblock>
      &lt;p&gt;
      &lt;table frame="all" pgwide="1"&gt;&lt;tgroup cols="1" colsep="0" rowsep="0" align="left"&gt;&lt;colspec colsep="0" rowsep="0" colname="col1" colwidth="50&amp;#x002A;"&gt;&lt;/colspec&gt;&lt;tbody valign="top"&gt;&lt;row rowsep="0"&gt;&lt;entry morerows="0" colsep="0" rowsep="0"&gt;Except for land and copyright,
      &lt;footnote&gt;
      &lt;ref:anchor id="PBEP.C5.FN51"&gt;&lt;/ref:anchor&gt;
      &lt;label&gt;51&lt;/label&gt;&lt;bodytext&gt;&lt;p&gt;&lt;text&gt;See Copyright Act 1968 &amp;#x0028;Cth&amp;#x0029; &lt;lnci:cite type="legislation" citeref="IPCPY.CPA.CPA.S8"&gt;
      &lt;lnci:content&gt;
        &lt;ref:crossreference&gt;
          &lt;ref:content&gt;196&lt;/ref:content&gt;
          &lt;ref:locator anchoridref="IPCPY.CPA.CPA.S8"&gt;
            &lt;ref:locator-key&gt;
              &lt;ref:key-name name="DOC-ID"/&gt;
              &lt;ref:key-value value="0JVS-EXAMPLE_DOCID1"/&gt;
            &lt;/ref:locator-key&gt;
        &lt;/ref:crossreference&gt;
    &lt;/lnci:content&gt;&lt;/lnci:cite&gt; and &lt;lnci:cite type="legislation" citeref="IPCPY.CPA.CPA.S196"&gt;
      &lt;lnci:content&gt;
        &lt;ref:crossreference&gt;
          &lt;ref:content&gt;196&lt;/ref:content&gt;
          &lt;ref:locator anchoridref="IPCPY.CPA.CPA.S196"&gt;
            &lt;ref:locator-key&gt;
              &lt;ref:key-name name="DOC-ID"/&gt;
              &lt;ref:key-value value="0JVS-EXAMPLE_DOCID2"/&gt;
            &lt;/ref:locator-key&gt;
        &lt;/ref:crossreference&gt;
      &lt;/lnci:content&gt;&lt;/lnci:cite&gt;.&lt;/text&gt;&lt;/p&gt;&lt;/bodytext&gt;&lt;/footnote&gt; equitable interests can be created verbally. In undertaking an estate review, care must be taken to establish the scope of equitable rights that may be embedded in a person&amp;#x2019;s property at the time of review. The practitioner must ensure that the existence and administration of those rights are dealt with in accordance with the instruction of or legal obligations of the client.&lt;/entry&gt;&lt;/row&gt;&lt;/tbody&gt;&lt;/tgroup&gt;&lt;/table&gt;
      &lt;text&gt;
      &lt;footnote-ref anchoridref="PBEP.C5.FN51"&gt;
      &lt;ref:anchor id="PBEP.C5.FN51_1"&gt;&lt;/ref:anchor&gt;
      &lt;label&gt;51&lt;/label&gt;
      &lt;/footnote-ref&gt;&lt;/text&gt;&lt;/p&gt;
    </codeblock>
    </example>

    <example>
      <title>Source xml: <sourcexml>fnr</sourcexml> appear without <sourcexml>footnote</sourcexml></title>
      <codeblock>

&lt;case:factsummary&gt;
  &lt;p&gt;
    &lt;text&gt;
      &lt;fnr fntoken="1ald095fn2" fnrtoken="1ald095fn2-r"&gt;1&lt;/fnr&gt;
      Crystal wine glasses sent on behalf of the applicant by post from Sydney to Melbourne were broken in transit. The glasses were packed in individual compartments in a box made of fairly flimsy cardboard and were individually wrapped in tissue paper. There was no external packaging to cushion the box and its contents against damage by impact. The box was marked Fragile. The applicant claimed compensation from the Australian Postal Commission for the breakage of the glasses. His claim was refused on the basis that Postal by-law 292 precluded compensation where the goods damaged were not adequately wrapped to protect them in the ordinary course of transmission. The applicant appealed to the Tribunal asserting that the marking Fragile on the goods should have indicated to the Commission that the goods had to be handled with care.
    &lt;/text&gt;
  &lt;/p&gt;
…
&lt;/case:factsummary&gt;

    </codeblock>
    </example>

    <example>
      <title>Target xml: <sourcexml>fnr</sourcexml> appear without <sourcexml>footnote</sourcexml></title>
      <codeblock>

&lt;casesum:summaries&gt;
  &lt;casesum:editorialsummar&gt;
    &lt;p&gt;
      &lt;text&gt; &lt;!-- a footnote reference without footnote is a data error. &lt;fnr fntoken="1ald095fn2" fnrtoken="1ald095fn2-r"&gt;1&lt;/fnr&gt; --&gt;
        Crystal wine glasses sent on behalf of the applicant by post from Sydney to Melbourne were broken in transit. The glasses were packed in individual compartments in a box made of fairly flimsy cardboard and were individually wrapped in tissue paper. There was no external packaging to cushion the box and its contents against damage by impact. The box was marked Fragile. The applicant claimed compensation from the Australian Postal Commission for the breakage of the glasses. His claim was refused on the basis that Postal by-law 292 precluded compensation where the goods damaged were not adequately wrapped to protect them in the ordinary course of transmission. The applicant appealed to the Tribunal asserting that the marking Fragile on the goods should have indicated to the Commission that the goods had to be handled with care.
      &lt;/text&gt;
    &lt;/p&gt;
  …
  &lt;/casesum:editorialsummar&gt;
&lt;/casesum:summaries&gt;

    </codeblock>
    </example>

    <example>
      <title>Source xml: <sourcexml>leg:bodytext/fnr</sourcexml> scenario</title>
      <codeblock>
      &lt;leg:bodytext&gt;
&lt;fnr fntoken="CPQ.QCAT.QCATPD" fnrtoken="CPQ.QCAT.QCATPD-R"&gt;*&lt;/fnr&gt;
&lt;/leg:bodytext&gt;
....
&lt;footnotegrp&gt;
&lt;footnote fntoken="CPQ.QCAT.QCATPD" fnrtokens="CPQ.QCAT.QCATPD-R" type="default"&gt;&lt;fnlabel&gt;*&lt;/fnlabel&gt;
&lt;fnbody&gt;
&lt;p&gt;&lt;refpt type="ext" id="CPQ.QCAT.QCATPD"/&gt;
&lt;text&gt; &amp;copy; The State of Queensland (Queensland Civil and Administrative Tribunal) 2010. QCAT applications fees reproduced with the kind permission of the Queensland Civil and Administrative Tribunal. See 
&lt;remotelink href="www.qcat.qld.gov.au" hrefclass="http" newwindow="YES"&gt;www.qcat.qld.gov.au&lt;/remotelink&gt;
&lt;/text&gt;
&lt;/p&gt;
&lt;/fnbody&gt;
&lt;/footnote&gt;
&lt;/footnotegrp&gt;

</codeblock>
    </example>

    <example>
      <title>Target xml: <sourcexml>leg:bodytext/fnr</sourcexml> scenario</title>
      <codeblock>
&lt;primlaw:bodytext&gt;
&lt;textitem&gt;
&lt;footnote&gt;
&lt;ref:anchor id="CPQ.QCAT.QCATPD"&gt;&lt;/ref:anchor&gt;
&lt;label&gt;*&lt;/label&gt;
&lt;bodytext&gt;
&lt;p&gt;
&lt;text&gt;
&amp;#x00A9; The State of Queensland (Queensland Civil and Administrative Tribunal) 2010. QCAT applications fees reproduced with the kind permission of the Queensland Civil and Administrative Tribunal. See &lt;url normval="http://www.qcat.qld.gov.au"&gt;www.qcat.qld.gov.au&lt;/url&gt; 
&lt;/text&gt;
&lt;/p&gt;
&lt;/bodytext&gt;
&lt;/footnote&gt;
&lt;/textitem&gt;
&lt;/primlaw:bodytext&gt;

</codeblock>
    </example>

    <example>
      <title>Source xml: <sourcexml>footnote/fnbody/p/refpt/@id</sourcexml> holds the same value as <sourcexml>footnote/@fntoken</sourcexml></title>
      <codeblock>

&lt;p&gt;
    &lt;text&gt;The purchaser's solicitor should be careful where a right to rescind arises in the purchaser's favour. In conveyancing matters, the
        solicitor's knowledge of the right to rescind or the facts giving rise to that right is imputed to the client. The solicitor's conduct may, if
        care is not taken, amount to an affirmation of the contract as still on foot or a termination of it, notwithstanding the client's ignorance.
        &lt;fnr fnrtoken="CONN.DAR.11102.ANT2-R" fntoken="CONN.DAR.11102.ANT2"&gt;2&lt;/fnr&gt;&lt;/text&gt;
&lt;/p&gt;
&lt;!-- Etc. --&gt;
&lt;footnote fnrtokens="CONN.DAR.11102.ANT2-R" fntoken="CONN.DAR.11102.ANT2" type="default"&gt;
    &lt;fnlabel&gt;2&lt;/fnlabel&gt;
    &lt;fnbody&gt;
        &lt;p&gt;
            &lt;refpt id="CONN.DAR.11102.ANT2" type="ext"/&gt;
            &lt;text&gt;&lt;ci:cite searchtype="CASE-REF"&gt;...&lt;/ci:cite&gt;&lt;/text&gt;
        &lt;/p&gt;
    &lt;/fnbody&gt;
&lt;/footnote&gt;

      </codeblock>
    </example>
    <example>
      <title>Target xml: <sourcexml>footnote/fnbody/p/refpt</sourcexml> has been suppressed</title>
      <codeblock>

&lt;p&gt;
    &lt;text&gt;The purchaser's solicitor should be careful where a right to rescind arises in the purchaser's favour. In conveyancing matters, the
        solicitor's knowledge of the right to rescind or the facts giving rise to that right is imputed to the client. The solicitor's conduct may, if
        care is not taken, amount to an affirmation of the contract as still on foot or a termination of it, notwithstanding the client's ignorance.
        &lt;footnote&gt;
            &lt;ref:anchor id="CONN.DAR.11102.ANT2"/&gt;
            &lt;label&gt;2&lt;/label&gt;
            &lt;bodytext&gt;
                &lt;p&gt;
                    &lt;text&gt;
                        &lt;lnci:cite&gt;...&lt;/lnci:cite&gt;
                    &lt;/text&gt;
                &lt;/p&gt;
            &lt;/bodytext&gt;
        &lt;/footnote&gt;&lt;/text&gt;
&lt;/p&gt;

      </codeblock>
    </example>
    
    <section><b>Exception for Newsitem:</b>
      <p>When <sourcexml>fnr</sourcexml> is a child of <sourcexml>ci:cite/ci:content</sourcexml> then move the <targetxml>footnote</targetxml>
        as the sibbling of <targetxml>lnci:cite</targetxml></p>
    </section>
    
    <example>
      <title>Source xml: <sourcexml>ci:cite/ci:content/fnr</sourcexml> scenario</title>
      <codeblock>

&lt;text&gt;
    &lt;ci:cite searchtype="CASE-REF"&gt;
        &lt;ci:content&gt;
            &lt;citefragment searchtype="CASE-NAME-REF"&gt;
                &lt;emph typestyle="it"&gt;Sutherland Shire Council v Baltica
                    General Insurance Co Ltd&lt;/emph&gt;
            &lt;/citefragment&gt;
            &lt;fnr fntoken="06-00036FN002" fnrtoken="06-00036FN002-R"&gt;1&lt;/fnr&gt;
        &lt;/ci:content&gt;
    &lt;/ci:cite&gt;
&lt;/text&gt;

      </codeblock>
    </example>

    <example>
      <title>Target xml:</title>
      <codeblock>

&lt;text&gt;
    &lt;lnci:cite type="case"&gt;
        &lt;lnci:content&gt;
            &lt;emph typestyle="it"&gt;Sutherland Shire Council v Baltica General Insurance Co Ltd&lt;/emph&gt;
        &lt;/lnci:content&gt;
    &lt;/lnci:cite&gt;
    &lt;footnote&gt;
        &lt;ref:anchor id="06-00036FN002-R"/&gt;
        &lt;label&gt;1&lt;/label&gt;
        &lt;bodytext&gt;
            &lt;p&gt;
                &lt;text&gt;...&lt;/text&gt;
            &lt;/p&gt;
        &lt;/bodytext&gt;
    &lt;/footnote&gt;
&lt;/text&gt;

      </codeblock>
    </example>

    <section>
      <title>Changes</title>
      <p>2011-12-15: Created.</p>
      <p>2011-12-21: Several changes to clarify instructions.</p>
      <p>2011-12-21: <b>Fixed</b> instructions to indicate that the @fntoken value (not @fnrtokens) should be used to populate ref:anchor[@id].</p>
      <p>2012-01-05: Add the instruction when more than one footnote reference points at the same footnote.</p>
      <p>2012-04-16: Added the instruction for handling of <sourcexml>footnotegrp/heading</sourcexml>.</p>
      <p>2012-04-16: Added the instruction and example for handling, <sourcexml>footnote</sourcexml> appears without <sourcexml>fnr</sourcexml>.</p>
      <p>2012-04-26: Added the instruction and example for handling - <sourcexml>fnr</sourcexml> appears without <sourcexml>footnote</sourcexml>.</p>
      <p>2012-04-27: Added instruction for handling of <sourcexml>footnote/@type</sourcexml>, <sourcexml>fnr/@alt-label</sourcexml> and
          <sourcexml>fnr/id</sourcexml>.</p>
      <p>2012-05-04: Updated the instruction and example for handling - <sourcexml>fnr</sourcexml> appears without
        <sourcexml>footnote</sourcexml>.</p>
      <p>2012-05-07: Instruction and example added for <sourcexml>leg:bodytext/fnr</sourcexml> scenario.</p>
      <p>2012-05-07: Added instructions for handling the scenario when <sourcexml>footnote/fnbody/p/refpt/@id</sourcexml> holds the same value as
          <sourcexml>footnote/@fntoken</sourcexml></p>
      <p>2012-05-10: Added instructions to suppress <sourcexml>fnr</sourcexml> when it is empty.</p>
      <p>2012-05-10: Updated the instructions for handling <sourcexml>footnote</sourcexml> without a corresponding <sourcexml>fnr</sourcexml>.</p>
      <p>2012-05-11: Added note that the value of <targetxml>footnote/@xml:id</targetxml> should be prefixed with the lower case country code followed
        by an underscore.</p>
      <p>2012-05-24: Removed the instructions for handling <sourcexml>footnote</sourcexml> without a corresponding <sourcexml>fnr</sourcexml>.</p>
      <p>2012-06-15: Removed the sample mapping for the scenario of <sourcexml>footnote</sourcexml> without a corresponding
        <sourcexml>fnr</sourcexml>.</p>
      <p>2012-07-06: Updated the instructions for handling <sourcexml>footnote/@type</sourcexml> with directions to supress
          <sourcexml>@type</sourcexml> when it has a value of "annotation".</p>
      <p>2012-07-31: Updated the instruction for handling <sourcexml>ci:cite/ci:content/fnr</sourcexml>.</p>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-US\US_LPA\LPA-PracticalGuidance_footnote-US.dita  -->
	<!--<xsl:message>LPA-PracticalGuidance_footnote-US.xsl requires manual development!</xsl:message> -->

	<xsl:template match="footnotegrp/footnote">

		<!--  Original Target XPath:  footnote/ref:anchor   -->
		<footnote>
			<ref:anchor>
				<xsl:apply-templates select="@* | node()"/>
			</ref:anchor>
		</footnote>

	</xsl:template>

	<xsl:template match="@fnrtoken">

		<!--  Original Target XPath:  footnote/ref:anchor   -->
		<footnote>
			<ref:anchor>
				<!--<xsl:apply-templates select="@* | node()"/>-->
			  <xsl:apply-templates select="."/>
			</ref:anchor>
		</footnote>

	</xsl:template>

	<xsl:template match="fnr">

		<!--  Original Target XPath:  footnote/ref:anchor   -->
		<footnote>
			<ref:anchor>
				<xsl:apply-templates select="@* | node()"/>
			</ref:anchor>
		</footnote>

	</xsl:template>

	<xsl:template match="footnote">

		<!--  Original Target XPath:  footnote/ref:anchor   -->
		<footnote>
			<ref:anchor>
				<xsl:apply-templates select="@* | node()"/>
			</ref:anchor>
		</footnote>

	</xsl:template>

	<xsl:template match="@fntoken">

		<!--  Original Target XPath:  footnote/ref:anchor   -->
		<footnote>
			<ref:anchor>
				<!--<xsl:apply-templates select="@* | node()"/>-->
			  <xsl:apply-templates select="."/>
			</ref:anchor>
		</footnote>

	</xsl:template>

	<xsl:template match="footnote[@fntoken]">

		<!--  Original Target XPath:  footnote/ref:anchor[@id]   -->
		<footnote>
			<ref:anchor>
				<xsl:apply-templates select="@* | node()"/>
			</ref:anchor>
		</footnote>

	</xsl:template>

	<xsl:template match="@fnrtokens">

		<!--  Original Target XPath:  footnote/ref:anchor[@id]   -->
		<footnote>
			<ref:anchor>
<!--				<xsl:apply-templates select="@* | node()"/>-->
			  <xsl:apply-templates select="."/>
			</ref:anchor>
		</footnote>

	</xsl:template>

	<xsl:template match="footnote/fnlabel">

		<!--  Original Target XPath:  footnote/label   -->
		<footnote>
			<label>
				<xsl:apply-templates select="@* | node()"/>
			</label>
		</footnote>

	</xsl:template>

	<xsl:template match="footnote/fnbody">

		<!--  Original Target XPath:  footnote/bodytext   -->
		<footnote>
			<bodytext>
				<xsl:apply-templates select="@* | node()"/>
			</bodytext>
		</footnote>

	</xsl:template>

	<xsl:template match="footnotegrp">

		<!--  Original Target XPath:  footnote/@role   -->
		<footnote>
			<xsl:attribute name="role">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</footnote>

	</xsl:template>

	<xsl:template match="footnote/@type">

		<!--  Original Target XPath:  footnote/@role   -->
		<footnote>
			<xsl:attribute name="role">
				<!--<xsl:apply-templates select="node()"/>-->
			  <xsl:apply-templates select="."/>
			</xsl:attribute>
		</footnote>

	</xsl:template>

	<xsl:template match="fnr/@alt-label">

		<!--  Original Target XPath:  footnote/@xml:id   -->
		<footnote>
			<xsl:attribute name="xml:id">
<!--				<xsl:apply-templates select="node()"/>-->
			  <xsl:apply-templates select="."/>
			</xsl:attribute>
		</footnote>

	</xsl:template>

	<xsl:template match="fnr/@id">

		<!--  Original Target XPath:  footnote/@xml:id   -->
		<footnote>
			<xsl:attribute name="xml:id">
			<!--	<xsl:apply-templates select="node()"/>-->
			  <xsl:apply-templates select="."/>
			</xsl:attribute>
		</footnote>

	</xsl:template>

<!--	<xsl:template match="heading">
	  <heading>
	    <xsl:apply-templates select="@* |node()"/>
	  </heading>
	</xsl:template>-->

	<xsl:template match="leg:bodytext/fnr">

		<!--  Original Target XPath:  primlaw:bodytext/textitem/footnote   -->
		<primlaw:bodytext>
			<textitem>
				<footnote>
					<xsl:apply-templates select="@* | node()"/>
				</footnote>
			</textitem>
		</primlaw:bodytext>

	</xsl:template>

	<xsl:template match="p/refpt">

		<!--  Original Target XPath:  ref:anchor   -->
		<ref:anchor>
			<xsl:apply-templates select="@* | node()"/>
		</ref:anchor>

	</xsl:template>

<!--	<xsl:template match="refpt/@id">

		<!-\-  Original Target XPath:  ref:anchor   -\->
		<ref:anchor>
			<!-\-<xsl:apply-templates select="@* | node()"/>-\->
		  <xsl:apply-templates select="."/>
		</ref:anchor>

	</xsl:template>-->

	<xsl:template match="footnote/@fntoken">

		<!--  Original Target XPath:  ref:anchor   -->
		<ref:anchor>
<!--			<xsl:apply-templates select="@* | node()"/>-->
		  <xsl:apply-templates select="."/>
		</ref:anchor>

	</xsl:template>

	<xsl:template match="refpt">

		<!--  Original Target XPath:  ref:anchor   -->
		<ref:anchor>
			<xsl:apply-templates select="@* | node()"/>
		</ref:anchor>

	</xsl:template>

	<xsl:template match="footnote/fnbody/p/refpt/@id">

		<!--  Original Target XPath:  footnote   -->
		<footnote>
<!--			<xsl:apply-templates select="@* | node()"/>-->
		  <xsl:apply-templates select="."/>
		</footnote>

	</xsl:template>

	<xsl:template match="footnote/fnbody/p/refpt">

		<!--  Original Target XPath:  footnote   -->
		<footnote>
			<xsl:apply-templates select="@* | node()"/>
		</footnote>

	</xsl:template>

<!--	<xsl:template match="ci:cite/ci:content">

		<!-\-  Original Target XPath:  footnote   -\->
		<footnote>
			<xsl:apply-templates select="@* | node()"/>
		</footnote>

	</xsl:template>-->

	<xsl:template match="ci:cite/ci:content/fnr">

		<!--  Original Target XPath:  footnote/@xml:id   -->
		<footnote>
			<xsl:attribute name="xml:id">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</footnote>

	</xsl:template>

	<xsl:template match="footnotegrp/heading">

		<!--  Original Target XPath:  footnote/@xml:id   -->
		<footnote>
			<xsl:attribute name="xml:id">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</footnote>

	</xsl:template>

	<xsl:template match="fnr/id">

		<!--  Original Target XPath:  footnote/@xml:id   -->
		<footnote>
			<xsl:attribute name="xml:id">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</footnote>

	</xsl:template>

	<xsl:template match="@type"/>

<!--		<!-\-  Original Target XPath:     -\->
		<!-\-  Could not determine target element or attribute name:  <>  -\->			<!-\-<xsl:apply-templates select="@* | node()"/>-\->
	  <xsl:apply-templates select="."/>
		<!-\-  Could not determine target element or attribute name:  </>  -\->

	</xsl:template>-->

</xsl:stylesheet>