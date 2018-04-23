<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:casedigest="http://www.lexisnexis.com/xmlschemas/content/legal/case-digest/1/" xmlns:caseinfo="http://www.lexisnexis.com/xmlschemas/content/legal/case-information/1/" xmlns:casesum="http://www.lexisnexis.com/xmlschemas/content/legal/case-summary/1/" xmlns:classify="http://www.lexisnexis.com/xmlschemas/content/shared/classification/1/" xmlns:courtcase="http://www.lexisnexis.com/xmlschemas/content/legal/courtcase/1/" xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns:decision="http://www.lexisnexis.com/xmlschemas/content/legal/decision/1/" xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" xmlns:jurisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/jurisdiction-info/1/" xmlns:person="http://www.lexisnexis.com/xmlschemas/content/shared/person/1/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" xmlns:lnci="http://www.lexisnexis.com/xmlschemas/content/shared/citations/1/" xmlns:location="http://www.lexisnexis.com/xmlschemas/content/shared/location/1/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/" xmlns:ci="http://www.lexis-nexis.com/ci" version="2.0" exclude-result-prefixes="dita case lnci ci location ref person jurisinfo doc case leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Headnote">
  <title>Headnote <lnpid>id-AU09-19611</lnpid></title>
  <body>
    <p>
      <sourcexml>case:headnote</sourcexml> becomes <targetxml>casedigest:head</targetxml> and
      children are described below. <note>If there is no header information found in input document,
        then conversion will create an empty tag of <targetxml>casedigest:head</targetxml> in
        output.</note>
      <pre>
&lt;case:headnote&gt;
...
&lt;/case:headnote&gt;

<b>Becomes</b>

&lt;casedigest:head&gt;
...
&lt;/casedigest:head&gt;</pre>
      <ul>
        <li>
          <sourcexml>case:length</sourcexml> becomes
            <targetxml>casedigest:casedigest/doc:metadata/doc:docinfo/doc:doclength</targetxml>, the
          conversion also covers the attributes <targetxml>@num</targetxml> will contain the numeric
          value from source PCDATA, <targetxml>@source="conversion"</targetxml> and
            <targetxml>@unit</targetxml> will contain the textual value from source PCDATA. <pre>
&lt;case:length&gt;1 page&lt;/case:length&gt;

<b>Becomes</b>


&lt;doc:docinfo&gt;
  ........
  &lt;doc:doclength num="1" source="conversion" unit="page"/&gt;
&lt;doc:docinfo&gt;
 </pre></li>
        <li>
          <sourcexml>case:info</sourcexml> becomes
            <targetxml>casedigest:head/casedigest:caseinfo</targetxml> and children are described
          below: <note>Conversion should not create adjacent
              <targetxml>casedigest:caseinfo</targetxml>, data should be merged into single element
              <targetxml>casedigest:caseinfo</targetxml> which is already been created for Rosetta
            element <sourcexml>case:info</sourcexml>.</note>
          <ul>
            <li>
              <sourcexml>case:casename</sourcexml> becomes
                <targetxml>casedigest:head/casedigest:caseinfo/caseinfo:casename</targetxml> and
              children are populated as below: Create <ul>
                <li>
                  <targetxml>caseinfo:fullcasename</targetxml>
                </li>
              </ul>
              <pre>

&lt;case:casename searchtype="PRACTICE-NOTE"&gt;Ganedan Investments Pty Ltd v Mosman MC&lt;/case:casename&gt;


<b>Becomes</b>


&lt;caseinfo:casename&gt;
  &lt;caseinfo:fullcasename&gt;Ganedan Investments Pty Ltd v Mosman MC&lt;/caseinfo:fullcasename&gt;
&lt;/caseinfo:casename&gt;
</pre>
            </li>
            <li>
              <sourcexml>case:altname</sourcexml> becomes
                <targetxml>casedigest:head/casedigest:caseinfo/caseinfo:alternatecasename</targetxml>
              Example for <sourcexml>case:altname</sourcexml>: <pre>

&lt;case:info&gt;
  &lt;case:casename&gt;Re PETERS and PUBLIC SERVICE BOARD&lt;/case:casename&gt;
  
  &lt;case:altname&gt;Re PETERS and DEPARTMENT OF PRIME MINISTER AND CABINET (No 4)&lt;/case:altname&gt;
&lt;/case:info&gt;


<b>Becomes</b>


&lt;casedigest:caseinfo&gt;
  &lt;caseinfo:casename&gt;
    &lt;caseinfo:fullcasename&gt;Re PETERS and PUBLIC SERVICE BOARD&lt;/caseinfo:fullcasename&gt;
  &lt;/caseinfo:casename&gt;
  
  &lt;caseinfo:alternatecasename&gt;Re PETERS and DEPARTMENT OF PRIME MINISTER AND CABINET (No 4)&lt;/caseinfo:alternatecasename&gt;
&lt;casedigest:caseinfo&gt;

</pre>
            </li>
            <li>
              <sourcexml>case:reportercite</sourcexml> becomes
                <targetxml>/casedigest:head/ref:citations</targetxml> with child elements as
              described below: <ul>
                <li> Create <targetxml>ref:cite4thisresource</targetxml> within
                    <targetxml>ref:citations</targetxml>. <note>For handling of citation markup,
                    kindly refer <xref href="../../common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">ci:cite</xref>
                    instructions under General Markup Section.</note>
                </li>
              </ul>
              <pre>

&lt;case:reportercite&gt;
    &lt;ci:cite type="cite4thisdoc"&gt;
        &lt;ci:case&gt;
            &lt;ci:caseinfo&gt;
                &lt;ci:decisiondate year="1978"/&gt;
            &lt;/ci:caseinfo&gt;
            &lt;ci:caseref&gt;
                &lt;ci:reporter value="ALN"/&gt;
                &lt;ci:volume num="1"/&gt;
                &lt;ci:edition&gt;
                    &lt;ci:date year="1978"/&gt;
                &lt;/ci:edition&gt;
                &lt;ci:page num="23"/&gt;
            &lt;/ci:caseref&gt;
        &lt;/ci:case&gt;
        &lt;ci:content&gt;
            &lt;citefragment searchtype="CASE-CITE-REF"&gt; (1978) 1 ALN No 23&lt;/citefragment&gt;
        &lt;/ci:content&gt;
    &lt;/ci:cite&gt;
&lt;/case:reportercite&gt;


<b>Becomes</b>


&lt;casedigest:head&gt;
 &lt;ref:citations&gt;
  &lt;ref:cite4thisresource&gt;
    &lt;lnci:cite&gt;
      &lt;lnci:case&gt;
        &lt;lnci:caseinfo&gt;
          &lt;lnci:decisiondate year="1978"/&gt;
        &lt;/lnci:caseinfo&gt;
        &lt;lnci:caseref&gt;
          &lt;lnci:reporter value="ALN"/&gt;
          &lt;lnci:volume num="1"/&gt;
          &lt;lnci:edition&gt;
            &lt;lnci:date year="1978"/&gt;
          &lt;/lnci:edition&gt;
          &lt;lnci:page num="23"/&gt;
        &lt;/lnci:caseref&gt;
      &lt;/lnci:case&gt;
      &lt;lnci:content&gt;
       (1978) 1 ALN No 23
      &lt;/lnci:content&gt;
    &lt;/lnci:cite&gt;
  &lt;/ref:cite4thisresource&gt;
 &lt;/ref:citations&gt;
&lt;/casedigest:head&gt;
</pre>
            </li>
            <li>
              <sourcexml>case:courtinfo</sourcexml> becomes
                <targetxml>casedigest:head/casedigest:caseinfo/jurisinfo:courtinfo</targetxml> and
              children are described below.<ul>
                <li>
                  <sourcexml>case:courtname</sourcexml> becomes
                    <targetxml>casedigest:head/casedigest:caseinfo/jurisinfo:courtinfo/jurisinfo:courtname</targetxml>
                  <pre>

&lt;case:courtinfo&gt;
  &lt;case:courtname&gt;SUPREME COURT OF NEW SOUTH WALES &amp;mdash; COURT OF APPEAL&lt;/case:courtname&gt;
&lt;/case:courtinfo&gt;


<b>Becomes</b>


&lt;jurisinfo:courtinfo&gt;
  &lt;jurisinfo:courtname&gt;SUPREME COURT OF NEW SOUTH WALES &amp;#x2014; COURT OF APPEAL&lt;/jurisinfo:courtname&gt;
&lt;/jurisinfo:courtinfo&gt;
</pre>
                </li>
                <li>
                  <sourcexml>case:courtcode</sourcexml> becomes
                    <targetxml>casedigest:head/casedigest:caseinfo/jurisinfo:courtinfo/jurisinfo:alternatecourtcode/@alternatecourtcode</targetxml>.
                  And create <targetxml>doc:legacy-metadata/meta/metaitem</targetxml> and the
                  attributes will be populated as <targetxml>@name="case:courtcode"</targetxml> and
                    <targetxml>@value</targetxml> will be the value of
                    <sourcexml>case:courtcode</sourcexml>. <pre>

&lt;case:courtinfo&gt;
  &lt;case:courtcode&gt;AATA&lt;/case:courtcode&gt;
&lt;/case:courtinfo&gt;


<b>Becomes</b>


&lt;jurisinfo:courtinfo&gt;
  &lt;jurisinfo:alternatecourtcode alternatecourtcode="AATA"/&gt;
&lt;/jurisinfo:courtinfo&gt;

&lt;doc:legacy-metadata metadatasource="lbu-meta"&gt;
  &lt;meta&gt;
    &lt;metaitem name="case:courtcode" value="AATA"&gt;
  &lt;/meta&gt;
  &lt;/doc:legacy-metadata&gt;
  </pre>
                  <note>The ordering of the <targetxml>jurisinfo:alternatecourtcode</targetxml> and
                      <targetxml>jurisinfo:jurisdiction/jurisinfo:system</targetxml> is not
                    significant in terms of display.</note>
                </li>
                <li>There are two contexts found for <sourcexml>/case:judges/case:judge</sourcexml>
                  in Standard Rosetta along with NL Xpath: <ol>
                    <li>
                      <b>Rosetta
                        XPATH:</b><sourcexml>/CASEDOC/case:body/case:headnote/case:info/case:courtinfo/case:judges/case:judge</sourcexml>
                      <b>NL XPATH:</b>
                      <targetxml>/casedigest:casedigest/casedigest:head/casedigest:caseinfo/casedigest:appearances/courtcase:panel/courtcase:judges/person:judge</targetxml>
                    </li>
                    <li>
                      <b>Rosetta XPATH:</b>
                      <sourcexml>/CASEDOC/case:body/case:headnote/case:decisionsummary/blockquote/case:embeddedcase/case:content/case:judgments/case:judgment/case:courtinfo/case:judges/case:judge</sourcexml>
                      <b>NL XPATH:</b>
                      <targetxml>/casedigest:casedigest/casedigest:body/casedigest:decision/casedigest:decisionsummary/courtcase:caseexcerpt/courtcase:body/courtcase:opinions/courtcase:opinion/courtcase:opinionby/person:judge</targetxml>
                    </li>
                  </ol>
                  <sourcexml>case:judge</sourcexml> becomes <targetxml>person:judge</targetxml>
                  <note>In first case: <sourcexml>case:judges</sourcexml> becomes
                      <targetxml>courtcase:judges</targetxml> and we are creating wrapper elements
                      <targetxml>casedigest:appearances/courtcase:panel</targetxml>, because Case
                    Digest Schema requires it under
                    <targetxml>casedigest:caseinfo</targetxml>.</note> Below is examplee for first
                  case: <pre>

&lt;case:headnote&gt;
  &lt;case:info&gt;
    &lt;case:courtinfo&gt;
      &lt;case:judges&gt;
        &lt;case:judge&gt;Mahoney, Priestley, Meagher JJA&lt;/case:judge&gt;
      &lt;/case:judges&gt;
    &lt;/case:courtinfo&gt;
  &lt;/case:info&gt;
&lt;/case:headnote&gt;


<b>Becomes</b>


&lt;casedigest:head&gt;
  &lt;casedigest:caseinfo&gt;
    &lt;casedigest:appearances&gt;
      &lt;courtcase:panel&gt;
        &lt;courtcase:judges&gt;
          &lt;person:judge&gt;Mahoney, Priestley, Meagher JJA&lt;/person:judge&gt;
        &lt;/courtcase:judges&gt;    
      &lt;/courtcase:panel&gt;
    &lt;/casedigest:appearances&gt;
  &lt;/casedigest:caseinfo&gt;
&lt;/casedigest:head&gt;
</pre>
                  <note>In second case: <sourcexml>case:judges</sourcexml> becomes
                      <targetxml>courtcase:opinionby</targetxml>.</note> Below is examplee for
                  second case: <pre>

&lt;case:judges&gt;
  &lt;case:judge&gt;Perram&lt;/case:judge&gt; J
&lt;/case:judges&gt;


<b>Becomes</b>


&lt;courtcase:opinionby&gt;
  &lt;person:judge&gt;Perram&lt;/person:judge&gt; J
&lt;/courtcase:opinionby&gt;
</pre>
                  <note>Connecting punctuation and newlines preceding judges can be accomodated in
                    the judges markup.</note>
                  <note>A colon is inserted before <sourcexml>case:judges</sourcexml> in rosetta
                    xml. In rosetta this colon is used as a separator, that will be handled in
                    presentation spec for New Lexis for all cases.</note>
                  <note>When <sourcexml>emph</sourcexml> is inside
                      <sourcexml>case:judges</sourcexml> and
                      <sourcexml>@typestyle="smcaps"</sourcexml> then conversion need to omit tag
                      (<sourcexml>emph</sourcexml>) and retain content.</note>
                  <note>Capture PCData for judges markup as is in New Lexis and always create
                      <targetxml>person:judge</targetxml> as an immediate child of
                      <targetxml>courtcase:judges</targetxml> or
                      <targetxml>courtcase:opinionby</targetxml>. For example: if there is a Rosetta
                      <sourcexml>case:judges</sourcexml> element and it just contains text then
                    conversion need to create <targetxml>person:judge</targetxml> as a child of
                      <targetxml>courtcase:judges</targetxml> or
                      <targetxml>courtcase:opinionby</targetxml>.</note>
                  <pre>


&lt;case:judges&gt;
    Glazebrook, O&amp;#x2019;Regan and Baragwanath JJ
&lt;/case:judges&gt;

<b>Becomes</b>


&lt;courtcase:opinionby&gt;
    &lt;person:judge&gt;Glazebrook, O&amp;#x2019;Regan and Baragwanath JJ&lt;/person:judge&gt;
&lt;/courtcase:opinionby&gt;


OR


&lt;courtcase:panel&gt;
    &lt;courtcase:judges&gt;
        &lt;person:judge&gt;Glazebrook, O&amp;#x2019;Regan and Baragwanath JJ&lt;/person:judge&gt;
    &lt;/courtcase:judges&gt;
&lt;courtcase:panel&gt;

</pre>
                </li>
                <li>
                  <sourcexml>case:filenum</sourcexml> becomes
                    <targetxml>casedigest:head/casedigest:caseinfo/caseinfo:docketnum</targetxml>
                  <note>Actually element <sourcexml>case:filenum</sourcexml> occurres with Rosetta
                    XPATH: <sourcexml>case:info/case:courtinfo/case:filenum</sourcexml>, so
                    corresponding NL element <targetxml>caseinfo:docketnum</targetxml> will be
                    captured directly under element
                    <targetxml>casedigest:caseinfo</targetxml></note>
                  <pre>

&lt;case:filenum&gt; No 77/18003&lt;/case:filenum&gt;


<b>Becomes</b>


&lt;caseinfo:docketnum&gt;No 77/18003&lt;/caseinfo:docketnum&gt;
</pre>
                </li>
                <li>
                  <sourcexml>case:dates</sourcexml> becomes
                    <targetxml>/casedigest:casedigest/casedigest:head/casedigest:caseinfo/decision:dates</targetxml>
                  <note>Conversion should not create consecutive
                      <targetxml>casedigest:caseinfo</targetxml> elements. When 2 or more
                    consecutive sibling source elements map to
                      <targetxml>casedigest:caseinfo</targetxml>, data should be merged to a single
                      <targetxml>casedigest:caseinfo</targetxml> element unless this would hamper
                    content ordering.</note>
                  <ul>
                    <li>
                      <sourcexml>case:hearingdates</sourcexml> becomes
                        <targetxml>/casedigest:casedigest/casedigest:head/casedigest:caseinfo/decision:dates/decision:argueddate</targetxml>
                      <note>This likely not a complete date, rather just a day. Do not attempt to
                        place a complete date if there is not sufficient content in source (year,
                        month and day). It should remain PCDATA. See example.</note>
                      <pre>

&lt;case:dates&gt;
    &lt;case:hearingdates&gt;Decision Date: December 18, 1984&lt;/case:hearingdates&gt;
&lt;/case:dates&gt;


<b>Becomes</b>


&lt;decision:dates&gt;
    &lt;decision:argueddate&gt;Decision Date: December 18, 1984&lt;/decision:argueddate&gt;
&lt;/decision:dates&gt;
</pre> Example where complete date occurs within <sourcexml>case:hearingdate</sourcexml>: <pre>

&lt;case:hearingdates&gt;
  &lt;date day="12" month="05" year="2000"&gt;12 May 2000&lt;/date&gt;
&lt;/case:hearingdates&gt;


<b>Becomes</b>


&lt;decision:argueddate day="12" month="05" year="2000"&gt;
  &lt;date-text&gt;12 May 2000&lt;/date-text&gt;
&lt;/decision:argueddate&gt;

</pre>
                    </li>
                    <li>
                      <sourcexml>case:decisiondate</sourcexml> becomes
                        <targetxml>/casedigest:casedigest/casedigest:head/casedigest:caseinfo/decision:dates/decision:decisiondate</targetxml>
                      populated with below mentioned attributes:
                        <sourcexml>case:decisiondate/date/@day</sourcexml> becomes
                        <targetxml>decision:decisiondate/@day</targetxml>,
                        <sourcexml>case:decisiondate/date/@month</sourcexml> becomes
                        <targetxml>decision:decisiondate/@month</targetxml> and
                        <sourcexml>case:decisiondate/date/@year</sourcexml> becomes
                        <targetxml>decision:decisiondate/@year</targetxml>
                      <p> The attribute <targetxml>decision:decisiondate/@normdate</targetxml>
                        should be populated with the values of
                          <sourcexml>case:decisiondate/date/@year</sourcexml>,
                          <sourcexml>case:decisiondate/date/@month</sourcexml> and
                          <sourcexml>case:decisiondate/date/@day</sourcexml> concatenated and
                        separated by a single hyphen. The values of
                          <sourcexml>case:decisiondate/date/@month</sourcexml> and
                          <sourcexml>case:decisiondate/date/@day</sourcexml> should be padded with
                        zeroes so that they are 2 digits. <note>If one or more of the three date
                          values (year, month or day) are absent, then
                            <targetxml>decision:decisiondate/@normdate</targetxml> should <b>not</b>
                          be populated.</note>
                      </p>
                      <ul>
                        <li>
                          <sourcexml>date</sourcexml> becomes
                            <targetxml>/casedigest:casedigest/casedigest:head/casedigest:caseinfo/decision:dates/decision:decisiondate/date-text</targetxml>
                        </li>
                      </ul>
                    </li>
                  </ul>
                  <pre>

&lt;case:dates&gt;
    &lt;case:decisiondate&gt;
        &lt;date year="1984" month="12" day="18"&gt;1984/12/18&lt;/date&gt;
    &lt;/case:decisiondate&gt;
&lt;/case:dates&gt;


<b>Becomes</b>


&lt;decision:dates&gt;
    &lt;decision:decisiondate day="18" month="12" year="1984" normdate="1984-12-18"&gt;
        &lt;date-text&gt;1984/12/18&lt;/date-text&gt;
    &lt;/decision:decisiondate&gt;
&lt;/decision:dates&gt;

          </pre>
                  <note>when <sourcexml>@ln.user-displayed="false“</sourcexml> appears on a date
                    element (i.e,
                      <sourcexml>case:decisiondate/@ln.user-displayed="false"</sourcexml>), that
                    element is translated into the target but with the element content omitted. Only
                    the attributes are populated. So there is no display content.</note>
                  <pre>

&lt;case:dates&gt;
  &lt;case:decisiondate ln.user-displayed="false"&gt;
    &lt;date year="1995" month="04" day="28"&gt;28 April 1995&lt;/date&gt; 
  &lt;/case:decisiondate&gt;
&lt;/case:dates&gt;


<b>Becomes</b>


&lt;decision:dates&gt;  
  &lt;decision:decisiondate day="28" month="04" year="1995" normdate="1995-04-28"/&gt;
&lt;/decision:dates&gt;

</pre>
                  <note>The formatting of the date-text should not be normalized to YYYY-MM-DD. The
                    attributes are used for normalization, but the element content should remain the
                    same.</note>
                </li>
                <li>
                  <sourcexml>case:courtcite</sourcexml> becomes
                    <targetxml>casedigest:head/casedigest:caseinfo/ref:citations/ref:parallelcite/@citetype="court"</targetxml>
                  <pre>
&lt;case:courtcite&gt;
    &lt;ci:cite&gt;
        &lt;ci:content&gt;[1999] AATA 171&lt;/ci:content&gt;
    &lt;/ci:cite&gt;
&lt;/case:courtcite&gt;

<b>Becomes</b>

&lt;casedigest:head&gt;
    &lt;casedigest:caseinfo&gt;
        &lt;ref:citations&gt;
            &lt;ref:parallelcite citetype="court"&gt;
                &lt;lnci:cite&gt;
                    &lt;lnci:content&gt;[1999] AATA 171&lt;/lnci:content&gt;
                &lt;/lnci:cite&gt;
            &lt;/ref:parallelcite&gt;
        &lt;/ref:citations&gt;
    &lt;/casedigest:caseinfo&gt;
&lt;/casedigest:head&gt;
</pre>
                </li>
                <li>
                  <sourcexml>case:courtloc</sourcexml> becomes
                    <targetxml>/casedigest:head/casedigest:caseinfo/jurisinfo:courtinfo/jurisinfo:jurisdiction/jurisinfo:location/location:city</targetxml>. <pre>

&lt;case:courtinfo&gt;
  &lt;case:courtname&gt;Administrative Appeals Tribunal&lt;/case:courtname&gt;
  &lt;case:courtcode&gt;AATA&lt;/case:courtcode&gt;
  &lt;case:courtloc&gt;Sydney&lt;/case:courtloc&gt;
  &lt;case:juris&gt;cth&lt;/case:juris&gt;
&lt;/case:courtinfo&gt;


<b>Becomes</b>


&lt;jurisinfo:courtinfo&gt;
  &lt;jurisinfo:courtname&gt;Administrative Appeals Tribunal&lt;/jurisinfo:courtname&gt;
  &lt;jurisinfo:alternatecourtcode alternatecourtcode="AATA"/&gt;
  &lt;jurisinfo:jurisdiction&gt;
    &lt;jurisinfo:location&gt;
      &lt;location:city&gt;Sydney&lt;/location:city&gt;
    &lt;/jurisinfo:location&gt;
    &lt;jurisinfo:system&gt;cth&lt;/jurisinfo:system&gt;
  &lt;/jurisinfo:jurisdiction&gt;
&lt;/jurisinfo:courtinfo&gt;
&lt;doc:legacy-metadata metadatasource="lbu-meta"&gt;
  &lt;meta&gt;
    &lt;metaitem name="case:courtcode" value="AATA"&gt;
  &lt;/meta&gt;
&lt;/doc:legacy-metadata&gt;
&lt;dc:metadata&gt;
  &lt;dc:coverage&gt;
    &lt;location:country codescheme="ISO-3166-1" countrycode="AU"/&gt;
  &lt;/dc:coverage&gt;
&lt;/dc:metadata&gt;
</pre>
                  <note>Connecting punctuations and text must be captured by using element
                      <targetxml>connector</targetxml> within
                      <targetxml>jurisinfo:location</targetxml>.</note>
                  <pre>

&lt;case:courtinfo&gt;
    &lt;case:courtname&gt;Administrative Appeals Tribunal&lt;/case:courtname&gt;
    &lt;case:courtcode&gt;AATA&lt;/case:courtcode&gt;
    &lt;case:judges&gt; Mr &lt;case:judge&gt;B J McMahon&lt;/case:judge&gt; (Senior Member), Mr&amp;#xA0;&lt;case:judge&gt;T R
        Russell&lt;/case:judge&gt; and Mrs&amp;#xA0;&lt;case:judge&gt;M T Lewis&lt;/case:judge&gt; (Members) &lt;/case:judges&gt;
    &lt;case:filenum&gt;No N85/468&lt;/case:filenum&gt;
    &lt;case:dates&gt;
        &lt;case:hearingdates&gt;14&amp;#xA0;May&amp;#xA0;and&amp;#xA0;&lt;/case:hearingdates&gt;
        &lt;case:decisiondate&gt;
            &lt;date day="02" month="07" year="1986"&gt;2 July 1986&lt;/date&gt;
        &lt;/case:decisiondate&gt;
    &lt;/case:dates&gt; &amp;mdash; &lt;case:courtloc&gt;Sydney&lt;/case:courtloc&gt;
    &lt;case:juris&gt;cth&lt;/case:juris&gt;
&lt;/case:courtinfo&gt;


<b>Becomes</b>
    

&lt;jurisinfo:courtinfo&gt;
  &lt;jurisinfo:courtname&gt;Administrative Appeals Tribunal&lt;/jurisinfo:courtname&gt;
  &lt;jurisinfo:alternatecourtcode alternatecourtcode="AATA"/&gt;
    &lt;jurisinfo:jurisdiction&gt;
      &lt;jurisinfo:location&gt;
        &lt;connector&gt;
          &amp;#x2014;
        &lt;/connector&gt;
      &lt;location:city&gt;Sydney&lt;/location:city&gt;
    &lt;/jurisinfo:location&gt;
  &lt;/jurisinfo:jurisdiction&gt;
&lt;/jurisinfo:courtinfo&gt;
&lt;doc:legacy-metadata metadatasource="lbu-meta"&gt;
  &lt;meta&gt;
    &lt;metaitem name="case:courtcode" value="AATA"&gt;
  &lt;/meta&gt;
&lt;/doc:legacy-metadata&gt;

</pre>
                </li>
                <li>
                  <sourcexml>case:juris</sourcexml> can have State/Territory code or Country code. <ol>
                    <li> When <sourcexml>case:juris</sourcexml> has State/Territory code: state and
                      territory value which are NSW, VIC, TAS, SA, QLD, WA, ACT and NT then
                        <sourcexml>case:juris</sourcexml> becomes
                        <targetxml>casedigest:head/casedigest:caseinfo/jurisinfo:courtinfo/jurisinfo:jurisdiction/jurisinfo:system</targetxml>
                      and create <targetxml>dc:metadata/dc:coverage/location:state</targetxml> with
                      attributes <targetxml>@codescheme="ISO-3166-2"</targetxml> and
                        <targetxml>@statecode</targetxml>, value for this attribute will be picked
                      from the below mentioned pick list: <ol>
                        <li> AU-NS : New South Wales (NSW) </li>
                        <li> AU-QL : Queensland (QLD) </li>
                        <li> AU-SA : South Australia (SA) </li>
                        <li> AU-TS : Tasmania (TAS) </li>
                        <li> AU-VI : Victoria (VIC) </li>
                        <li> AU-WA : Western Australia (WA) </li>
                        <li> AU-CT : Australian Capital Territory (ACT) </li>
                        <li> AU-NT : Northern Territory (NT) </li>
                      </ol> Also the value for <targetxml>jurisinfo:courtinfo/@courtcode</targetxml>
                      will be picked up from <sourcexml>case:courtcode</sourcexml>. <pre>

&lt;case:courtinfo&gt;
    ...
    &lt;case:courtcode&gt;NSWSC&lt;/case:courtcode&gt;
    ...
    &lt;case:juris&gt;nsw&lt;/case:juris&gt;
&lt;/case:courtinfo&gt;


  <b>Becomes</b>


&lt;jurisinfo:courtinfo&gt;
    &lt;jurisinfo:alternatecourtcode alternatecourtcode="NSWSC"/&gt;
    &lt;jurisinfo:jurisdiction&gt;
        &lt;jurisinfo:system&gt;nsw&lt;/jurisinfo:system&gt;
    &lt;/jurisinfo:jurisdiction&gt;
&lt;/jurisinfo:courtinfo&gt;
&lt;doc:legacy-metadata metadatasource="lbu-meta"&gt;
  &lt;meta&gt;
    &lt;metaitem name="case:courtcode" value="FCA"&gt;
  &lt;/meta&gt;
&lt;/doc:legacy-metadata&gt;
&lt;dc:metadata&gt;
    &lt;dc:coverage&gt;
        &lt;location:state codescheme="ISO-3166-2" statecode="AU-NS"/&gt;
    &lt;/dc:coverage&gt;
&lt;/dc:metadata&gt;
</pre>
                    </li>
                    <li> When <sourcexml>case:juris</sourcexml> has Country code: <note>If value for
                          <sourcexml>case:juris</sourcexml> is "CTH" then
                          <sourcexml>case:juris</sourcexml> will become
                          <targetxml>casedigest:head/casedigest:caseinfo/jurisinfo:courtinfo/jurisinfo:jurisdiction/jurisinfo:system</targetxml>
                        and create <targetxml>dc:metadata/dc:coverage/location:country</targetxml>
                        with attributes <targetxml>@codescheme="ISO-3166-1"</targetxml> and
                          <targetxml>@countrycode="AU"</targetxml>. </note>
                      <pre>

&lt;case:courtinfo&gt;
  &lt;case:courtname&gt;Administrative Appeals Tribunal&lt;/case:courtname&gt;
  &lt;case:courtcode&gt;AATA&lt;/case:courtcode&gt;
  &lt;case:courtloc&gt;Sydney&lt;/case:courtloc&gt;
  &lt;case:juris&gt;cth&lt;/case:juris&gt;
&lt;/case:courtinfo&gt;


<b>Becomes</b>


&lt;jurisinfo:courtinfo&gt;
  &lt;jurisinfo:courtname&gt;Administrative Appeals Tribunal&lt;/jurisinfo:courtname&gt;
  &lt;jurisinfo:alternatecourtcode alternatecourtcode="AATA"/&gt;
  &lt;jurisinfo:jurisdiction&gt;
    &lt;jurisinfo:location&gt;
      &lt;location:city&gt;Sydney&lt;/location:city&gt;
    &lt;/jurisinfo:location&gt;
    &lt;jurisinfo:system&gt;cth&lt;/jurisinfo:system&gt;
  &lt;/jurisinfo:jurisdiction&gt;
&lt;/jurisinfo:courtinfo&gt;
&lt;doc:legacy-metadata metadatasource="lbu-meta"&gt;
  &lt;meta&gt;
    &lt;metaitem name="case:courtcode" value="AATA"&gt;
  &lt;/meta&gt;
&lt;/doc:legacy-metadata&gt;
&lt;dc:metadata&gt;
  &lt;dc:coverage&gt;
    &lt;location:country codescheme="ISO-3166-1" countrycode="AU"/&gt;
  &lt;/dc:coverage&gt;
&lt;/dc:metadata&gt;
</pre>
                    </li>
                  </ol>
                </li>
              </ul>
            </li>
          </ul>
        </li>
        <li>
          <sourcexml>catchwordgrp</sourcexml> omit tag and retain content. <ul>
            <li>
              <sourcexml>catchwords</sourcexml> becomes
                <targetxml>casedigest:casedigest/casedigest:head/casedigest:caseinfo/classify:classification</targetxml>
              and comes with <targetxml>@classscheme="catchwords"</targetxml>.<ul>
                <li>
                  <sourcexml>catchphrase</sourcexml> becomes
                    <targetxml>casedigest:head/casedigest:caseinfo/classify:classification/classify:classitem</targetxml>
                  <ul>
                    <li>Create
                        <targetxml>casedigest:head/casedigest:caseinfo/classify:classification/classify:classitem/classify:classitem-identifier</targetxml>
                      <ul>
                        <li>Create
                            <targetxml>casedigest:head/casedigest:caseinfo/classify:classification/classify:classitem/classify:classitem-identifier/classify:classname</targetxml>
                        </li>
                      </ul>
                    </li>
                  </ul>
                </li>
              </ul>
            </li>
          </ul>
          <note>Conversion should not create adjacent <targetxml>casedigest:caseinfo</targetxml>,
            data should be merged into single element
            <targetxml>casedigest:caseinfo</targetxml>.</note>
          <note>Each instance of <sourcexml>catchwords</sourcexml> should be converted to its own
              <targetxml>classify:classification[@classscheme="catchwords"]</targetxml>
            element.</note>
          <note>If conversion encounter text in between <sourcexml>catchphrase</sourcexml>. Its a
            Data Error, LBU is correcting this editorially and will have updated content in time for
            the full content conversion load. In the mean time, text encountered between the
              <sourcexml>catchphrase</sourcexml> is to be moved into the preceding
              <targetxml>classify:classname</targetxml> in New Lexis documents.</note>
          <note>Create <targetxml>classify:classification</targetxml> to handle
              <sourcexml>page</sourcexml> element when it occurs inside
              <sourcexml>catchwordgrp</sourcexml> i.e, catchwordgrp/page becomes
              <targetxml>classify:classification/classify:classitem/classify:classitem-identifier/classify:classname/ref:page</targetxml>.</note>
          <pre>

&lt;catchwordgrp&gt;
  &lt;catchwords&gt;
    &lt;catchphrase&gt;Appeal&lt;/catchphrase&gt;
    &lt;catchphrase&gt;Refusal of development application&lt;/catchphrase&gt;
    &lt;catchphrase&gt;Waterway safety&lt;/catchphrase&gt;
    &lt;catchphrase&gt;Agreement reached between parties&lt;/catchphrase&gt;
    &lt;catchphrase&gt;SREP&amp;#160;23&lt;/catchphrase&gt;
   &lt;/catchwords&gt;
  &lt;/catchwordgrp&gt;
  

<b>Becomes</b>


&lt;classify:classification classscheme="catchwords"&gt;
  &lt;classify:classitem&gt;
    &lt;classify:classitem-identifier&gt;
      &lt;classify:classname&gt;Appeal&lt;/classify:classname&gt;
    &lt;/classify:classitem-identifier&gt; 
  &lt;/classify:classitem&gt;
  &lt;classify:classitem&gt;
    &lt;classify:classitem-identifier&gt;
      &lt;classify:classname&gt;Refusal of development application&lt;/classify:classname&gt;
    &lt;/classify:classitem-identifier&gt; 
  &lt;/classify:classitem
  &lt;classify:classitem&gt;
    &lt;classify:classitem-identifier&gt;
      &lt;classify:classname&gt;Waterway safety&lt;/classify:classname&gt;
    &lt;/classify:classitem-identifier&gt; 
  &lt;/classify:classitem
  &lt;classify:classitem&gt;
    &lt;classify:classitem-identifier&gt;
      &lt;classify:classname&gt;Agreement reached between parties&lt;/classify:classname&gt;
    &lt;/classify:classitem-identifier&gt; 
  &lt;/classify:classitem
  &lt;classify:classitem&gt;
    &lt;classify:classitem-identifier&gt;
      &lt;classify:classname&gt;SREP&amp;#x00A0;23&lt;/classify:classname&gt;
    &lt;/classify:classitem-identifier&gt; 
  &lt;/classify:classitem&gt;
&lt;/classify:classification&gt;
</pre>
          <note>The content sitting between the <sourcexml>catchphrase</sourcexml> Rosetta elements
            was to be moved into the preceding <sourcexml>catchphrase</sourcexml>, not dropped. As
            AU is correcting this editorially and will have updated content in time for the full
            content conversion load in early April 2012.</note> Example for the same: <pre>

&lt;catchwordgrp&gt;
  &lt;catchwords&gt;
    &lt;catchphrase&gt;Words and phrases&lt;/catchphrase&gt;
    &lt;catchphrase&gt;Specialist&lt;/catchphrase&gt;
    &lt;catchphrase&gt; Deemed to be&lt;/catchphrase&gt;
    .
  &lt;/catchwords&gt;
&lt;/catchwordgrp&gt;


<b>Becomes</b>

 
 &lt;classify:classification classscheme="catchwords"&gt;
    &lt;classify:classitem&gt;
        &lt;classify:classitem-identifier&gt;
            &lt;classify:classname&gt;Words and phrases&lt;/classify:classname&gt;
        &lt;/classify:classitem-identifier&gt; 
    &lt;/classify:classitem&gt;
    &lt;classify:classitem&gt;
        &lt;classify:classitem-identifier&gt;
            &lt;classify:classname&gt;Specialist&lt;/classify:classname&gt;
        &lt;/classify:classitem-identifier&gt; 
    &lt;/classify:classitem
    &lt;classify:classitem&gt;
        &lt;classify:classitem-identifier&gt;
            &lt;classify:classname&gt; Deemed to be.&lt;/classify:classname&gt;
        &lt;/classify:classitem-identifier&gt; 
    &lt;/classify:classitem    
&lt;/classify:classification&gt;
</pre>
        </li>
        <li>
          <sourcexml>case:factsummary</sourcexml> becomes
            <targetxml>casedigest:body/casedigest:facts/casedigest:factsummary</targetxml> and comes
          with required child element<targetxml> bodytext</targetxml>. Element
            <targetxml>casedigest:facts</targetxml> will become as wrapper(parent) element for
            <targetxml>casedigest:factsummary</targetxml> in converted NL output. <note>If
              <sourcexml>page</sourcexml> is the direct child of
              <sourcexml>case:factsummary</sourcexml>, then it will be moved under
              <targetxml>bodytext</targetxml> during conversion. Like Rosetta scenario
              <sourcexml>case:factsummary/page</sourcexml> will become
              <targetxml>casedigest:facts/casedigest:factsummary/bodytext/ref:page</targetxml></note>
          <pre>

&lt;case:factsummary&gt;
    &lt;p&gt;
     &lt;text&gt;Each of these applications raised the same issue, and was determined in the same way, as
       &lt;emph typestyle="it"&gt;Re Cairns District Cane Growers&amp;#x2019; Executive and Australian postal
       Commission &lt;/emph&gt; (1978) 1 ALD 272 &lt;/text&gt;
    &lt;/p&gt;
    &lt;p&gt;
     &lt;text&gt;&lt;emph typestyle="bf"&gt;Note:&lt;/emph&gt; an appeal has been lodged against each of these
      decisions to the Federal Court of Australia.&lt;/text&gt;
    &lt;/p&gt;
&lt;/case:factsummary&gt;


<b>Becomes</b>


&lt;casedigest:facts&gt;
 &lt;casedigest:factsummary&gt;
  &lt;bodytext&gt;
    &lt;p&gt;
     &lt;text&gt;Each of these applications raised the same issue, and was determined in the same way, as
       &lt;emph typestyle="it"&gt;Re Cairns District Cane Growers&amp;#x2019; Executive and Australian postal
       Commission &lt;/emph&gt; (1978) 1 ALD 272 &lt;/text&gt;
    &lt;/p&gt;
    &lt;p&gt;
     &lt;text&gt;&lt;emph typestyle="bf"&gt;Note:&lt;/emph&gt; an appeal has been lodged against each of these
      decisions to the Federal Court of Australia.&lt;/text&gt;
    &lt;/p&gt;
  &lt;/bodytext&gt;
 &lt;/casedigest:factsummary&gt;
&lt;/casedigest:facts&gt;
</pre>
        </li>
        <li>
          <sourcexml>case:decisionsummary</sourcexml> becomes
            <targetxml>casedigest:decision/casedigest:decisionsummary</targetxml>, and place as a
          child of <targetxml>casedigest:body</targetxml>. <note>There may be two scenarios found
            for <sourcexml>case:decisionsummary</sourcexml> in Rosetta samples as below: <ul>
              <li>Scenario 1: If
                  <sourcexml>case:decisionsummary/blockquote/case:embeddedcase</sourcexml>, then
                  <targetxml>blockquote</targetxml> will be omitted and rest part will be covered
                under NL XPATH:
                  <targetxml>casedigest:decisionsummary/courtcase:caseexcerpt</targetxml>. </li>
              <li>Scenario 2: If <sourcexml>case:decisionsummary/p</sourcexml> or
                  <sourcexml>case:decisionsummary/pgrp</sourcexml>, then it will be covered under NL
                XPATH: <targetxml>casedigest:decisionsummary/bodytext</targetxml>.</li>
            </ul>
          </note>
          <pre>

&lt;case:decisionsummary summarytype="held"&gt;
    &lt;p&gt;
        &lt;text&gt;&lt;emph typestyle="bf"&gt; Held&lt;/emph&gt;: (i) During T&amp;apos;s period of absence in Greece,
            her &amp;#x201C;usual place of residence&amp;#x201D; was no longer in Australia: from the time
            of the family&amp;apos;s arrival in Greece, the length of their stay was indefinite. During
            the period of their absence in Greece, T&amp;apos;s &amp;#x201C;usual place of residence&amp;#x201D;
            was in Greece: the factors which established this included the period of her residence
            (10 years), her &lt;page reporter="aln" count="n111" text="6 ALN 109 at " subdoc="true"/&gt;
            husband&amp;apos;s and children&amp;apos;s activities there, the family&amp;apos;s settled
            accommodation throughout their 10 years in Greece and the sale of their Australian
            assets. &lt;/text&gt;
    &lt;/p&gt;
&lt;/case:decisionsummary&gt;

<b>Becomes</b>   

&lt;casedigest:decision&gt;
  &lt;casedigest:decisionsummary&gt;
    &lt;bodytext&gt;
      &lt;p&gt;
        &lt;text&gt;&lt;emph typestyle="bf"&gt; Held&lt;/emph&gt;: (i) During T&amp;apos;s period of absence in Greece,
            her &amp;#x201C;usual place of residence&amp;#x201D; was no longer in Australia: from the time
            of the family&amp;apos;s arrival in Greece, the length of their stay was indefinite. During
            the period of their absence in Greece, T&amp;apos;s &amp;#x201C;usual place of residence&amp;#x201D;
            was in Greece: the factors which established this included the period of her residence
            (10 years), her &lt;ref:page page-scheme="aln" num="n111" page-scheme-type="reporter-abbreviation" includeintoc="true"/&gt;
            husband&amp;apos;s and children&amp;apos;s activities there, the family&amp;apos;s settled
            accommodation throughout their 10 years in Greece and the sale of their Australian
            assets. &lt;/text&gt;
    &lt;/p&gt;
    &lt;/bodytext&gt;
  &lt;/casedigest:decisionsummary&gt;
&lt;/casedigest:decision&gt;
</pre> Example for multiple occurrences of <sourcexml>p</sourcexml> under
            <sourcexml>case:decisionsummary</sourcexml>: <pre>

&lt;case:decisionsummary summarytype="held"&gt;
    &lt;p&gt;
        &lt;text&gt;&lt;emph typestyle="bf"&gt;Held&lt;/emph&gt;: (i) The provisions of Air Navigation Order 47.1 allow
            for no discretion and accordingly the fact of the applicant having had a psychotic condition
            prevented him being granted a licence. &lt;/text&gt;
    &lt;/p&gt;
    &lt;p&gt;
        &lt;text&gt;(ii) In the light of this finding it was unnecessary to determine whether the
            applicant&amp;apos;s false statement debarred him from being granted a licence. The Secretary is,
            however, entitled to regard the making of a false statement in an application seriously as it
            is something on which he must ordinarily rely.&lt;/text&gt;
    &lt;/p&gt;
&lt;/case:decisionsummary&gt;


<b>Becomes</b>   


&lt;casedigest:decision&gt;
    &lt;casedigest:decisionsummary&gt;    
        &lt;bodytext&gt;        
            &lt;p&gt;            
                &lt;text&gt;&lt;emph typestyle="bf"&gt;Held&lt;/emph&gt;: (i) The provisions of Air Navigation Order 47.1 allow
            for no discretion and accordingly the fact of the applicant having had a psychotic condition
            prevented him being granted a licence. &lt;/text&gt;
            &lt;/p&gt;        
            &lt;p&gt;            
                &lt;text&gt;(ii) In the light of this finding it was unnecessary to determine whether the
            applicant&amp;apos;s false statement debarred him from being granted a licence. The Secretary is,
            however, entitled to regard the making of a false statement in an application seriously as it
            is something on which he must ordinarily rely.&lt;/text&gt;
            &lt;/p&gt;
        &lt;/bodytext&gt;
    &lt;/casedigest:decisionsummary&gt;
&lt;/casedigest:decision&gt;
</pre>
          <ul>
            <li>
              <sourcexml>case:consideredcases</sourcexml> becomes
                <targetxml>/casedigest:decision/casedigest:decisionsummary/bodytext/ref:relatedrefs</targetxml>
              with an attribute 'referencetype' set to
                <targetxml>@referencetype="consideredcases"</targetxml>. <note>Per Schema, element
                  <targetxml>ref:relatedrefs</targetxml> requires at least one of the child elements
                from <targetxml>bodytext</targetxml>, <targetxml>ref:referenceitem</targetxml> and
                  <targetxml>ref:relatedrefs</targetxml>. If
                  <sourcexml>case:consideredcases</sourcexml> occurres with element
                  <sourcexml>p</sourcexml> then contents of element
                  <sourcexml>case:consideredcases</sourcexml> will be captured under
                  <targetxml>ref:relatedrefs/bodytext</targetxml>. In case multiple
                  <sourcexml>p</sourcexml> occurs within <sourcexml>case:consideredcases</sourcexml>
                conversion need to create only one <targetxml>bodytext</targetxml> acting as a
                wrapper for all p elements.</note>
              <pre>

&lt;case:consideredcases&gt;
    &lt;p&gt;
        &lt;text&gt;&lt;ci:cite searchtype="CASE-REF"&gt;
            &lt;ci:case&gt;
                &lt;ci:caseinfo&gt;
                    &lt;ci:decisiondate year="1983"/&gt;
                &lt;/ci:caseinfo&gt;
                &lt;ci:caseref ID="cr000001" spanref="cr000001-001"&gt;
                    &lt;ci:reporter value="alnno"/&gt;
                    &lt;ci:volume num="5"/&gt;
                    &lt;ci:page num="286"/&gt;
                &lt;/ci:caseref&gt;
            &lt;/ci:case&gt;
            &lt;ci:content&gt;&lt;citefragment searchtype="CASE-NAME-REF"&gt;&lt;emph typestyle="it"&gt;Powell v
                Manufacturers Mutual Insurance Co Ltd and Another&lt;/emph&gt;&lt;/citefragment&gt;&lt;citefragment
                    searchtype="CASE-CITE-REF"&gt;
                    &lt;ci:span spanid="cr000001-001"&gt;(1983) 5 ALN No 286&lt;/ci:span&gt;&lt;/citefragment&gt;&lt;/ci:content&gt;
        &lt;/ci:cite&gt; , distinguished&lt;/text&gt;
    &lt;/p&gt;
&lt;/case:consideredcases&gt;


<b>Becomes</b>


&lt;ref:relatedrefs referencetype="consideredcases"&gt;
    &lt;bodytext&gt;
      &lt;p&gt;
        &lt;text&gt;&lt;lnci:cite&gt;
            &lt;lnci:case&gt;
                &lt;lnci:caseinfo&gt;
                    &lt;lnci:decisiondate year="1983"/&gt;
                &lt;/lnci:caseinfo&gt;
                &lt;lnci:caseref ID="cr000001" spanref="cr000001-001"&gt;
                    &lt;lnci:reporter value="alnno"/&gt;
                    &lt;lnci:volume num="5"/&gt;
                    &lt;lnci:page num="286"/&gt;
                &lt;/lnci:caseref&gt;
            &lt;/lnci:case&gt;
            &lt;lnci:content&gt;&lt;emph typestyle="it"&gt;Powell v Manufacturers Mutual Insurance Co Ltd and Another&lt;/emph&gt;(1983) 5 ALN No 286&lt;/lnci:content&gt;
        &lt;/lnci:cite&gt; , distinguished&lt;/text&gt;
       &lt;/p&gt;
    &lt;/bodytext&gt;
&lt;/ref:relatedrefs&gt;
</pre>
            </li>
          </ul>
          <ul>
            <li>
              <sourcexml>case:embeddedcase</sourcexml> becomes
                <targetxml>courtcase:caseexcerpt</targetxml>
              <note>If scenario
                  <sourcexml>case:decisionsummary/blockquote/case:embeddedcase</sourcexml> occurs in
                Rosetta xml, means <sourcexml>blockquote</sourcexml> is the parent of
                  <sourcexml>case:embeddedcase</sourcexml> and child of
                  <sourcexml>case:decisionsummary</sourcexml>, then
                  <targetxml>blockquote</targetxml> will be suppressed. So final NL XPATH will
                become like:
                  <targetxml>casedigest:decision/casedigest:decisionsummary/courtcase:caseexcerpt</targetxml>.</note>
              <note>Rosetta scenario
                  <sourcexml>case:embeddedcase/case:content/case:judgments/case:judgment/case:judgmentbody</sourcexml>
                becomes
                  <targetxml>courtcase:caseexcerpt/courtcase:body/courtcase:opinions/courtcase:opinion/bodytext</targetxml>,
                in this case <targetxml>courtcase:body</targetxml> will be created as a child of
                  <targetxml>courtcase:caseexcerpt</targetxml> and
                  <sourcexml>case:content</sourcexml> will be omitted during NL conversion.</note>
              Example for same: <pre>

&lt;case:decisionsummary&gt;
    &lt;blockquote&gt;
        &lt;case:embeddedcase&gt;
            &lt;case:content&gt;
                &lt;case:judgments&gt;
                    &lt;case:judgment searchtype="extract"&gt;
                        &lt;case:judgmentbody&gt;                            
                            &lt;p&gt;
                                &lt;text&gt;The substantial issues before the Tribunal were summarized by the Tribunal as
                                    follows: &lt;/text&gt;
                            &lt;/p&gt;
                            &lt;blockquote&gt;
                                &lt;p&gt;
                                    &lt;text&gt;(11) It was accepted during the hearing that Mrs&amp;#xA0;Johnstone&amp;apos;s claim
                                        should be considered under the &amp;#x201C;disease&amp;#x201D; provisions of the Compensation
                                        Act. Thus to establish an entitlement to compensation Mrs&amp;#xA0;Johnstone must show that
                                        her incapacity for work since 8&amp;#xA0;June 1979 was due to a disease and that the
                                        contraction of the disease or its aggravation, acceleration or recurrence was caused or
                                        contributed to by her employment with the Commonwealth. There was no evidence that
                                        Mrs&amp;#xA0;Johnstone suffered from any relevant disease prior to June 1979, so the words
                                        &amp;#x201C;acceleration&amp;#x201D; or &amp;#x201C;recurrence&amp;#x201D; seem unlikely to be
                                        relevant. It is necessary to consider both the nature of any disease suffered by
                                        Mrs&amp;#xA0;Johnstone and the contribution of her employment, if any, to the contraction
                                        or aggravation of that disease. &lt;/text&gt;
                                &lt;/p&gt;
                            &lt;/blockquote&gt;
                            &lt;p&gt;
                                &lt;text&gt;After considering certain medical evidence, the Tribunal found: &lt;/text&gt;
                            &lt;/p&gt;                            
                            &lt;p&gt;
                                &lt;text&gt;After considering the evidence, including medical evidence, the Tribunal concluded:
                                &lt;/text&gt;
                            &lt;/p&gt;
                            &lt;blockquote&gt;                                
                                &lt;p&gt;
                                    &lt;text&gt;(53) In finding that Mrs&amp;#xA0;Johnstone&amp;apos;s employment did not cause or
                                        aggravate her condition we also place reliance on the view of Dr Conron that
                                        Mrs&amp;#xA0;Johnstone did not look particularly upset when talking about her work and
                                        attributed her problems to her employment &amp;#x201C;because it was to her obvious
                                        advantage to do so&amp;#x201D;. It is significant too that Mrs&amp;#xA0;Johnstone said in
                                        evidence that she did not have any hassles coping with her work in May 1979 six months
                                        after being transferred to the family allowance section and one month prior to the date
                                        when she last worked with the Department. &lt;/text&gt;
                                &lt;/p&gt;
                            &lt;/blockquote&gt;
                        &lt;/case:judgmentbody&gt;
                    &lt;/case:judgment&gt;
                &lt;/case:judgments&gt;
            &lt;/case:content&gt;
        &lt;/case:embeddedcase&gt;
    &lt;/blockquote&gt;
&lt;/case:decisionsummary&gt;


<b>becomes</b>


&lt;casedigest:decision&gt;
  &lt;casedigest:decisionsummary&gt;    
   &lt;courtcase:caseexcerpt&gt;
    &lt;courtcase:body&gt;
     &lt;courtcase:opinions&gt;
      &lt;courtcase:opinion&gt;
       &lt;bodytext&gt;
        &lt;p&gt;
         &lt;text&gt;The substantial issues before the Tribunal were summarized by the Tribunal as
          follows: &lt;/text&gt;
        &lt;/p&gt;
        &lt;blockquote&gt;
         &lt;p&gt;
          &lt;text&gt;(11) It was accepted during the hearing that Mrs&amp;#xA0;Johnstone&amp;apos;s claim
           should be considered under the &amp;#x201C;disease&amp;#x201D; provisions of the Compensation
           Act. Thus to establish an entitlement to compensation Mrs&amp;#xA0;Johnstone must show that
           her incapacity for work since 8&amp;#xA0;June 1979 was due to a disease and that the
           contraction of the disease or its aggravation, acceleration or recurrence was caused or
           contributed to by her employment with the Commonwealth. There was no evidence that
           Mrs&amp;#xA0;Johnstone suffered from any relevant disease prior to June 1979, so the words
           &amp;#x201C;acceleration&amp;#x201D; or &amp;#x201C;recurrence&amp;#x201D; seem unlikely to be
           relevant. It is necessary to consider both the nature of any disease suffered by
           Mrs&amp;#xA0;Johnstone and the contribution of her employment, if any, to the contraction
           or aggravation of that disease. &lt;/text&gt;
         &lt;/p&gt;
        &lt;/blockquote&gt;
        &lt;p&gt;
         &lt;text&gt;After considering certain medical evidence, the Tribunal found: &lt;/text&gt;
        &lt;/p&gt;        
        &lt;p&gt;
         &lt;text&gt;After considering the evidence, including medical evidence, the Tribunal concluded:
         &lt;/text&gt;
        &lt;/p&gt;
        &lt;blockquote&gt;                                
         &lt;p&gt;
          &lt;text&gt;(53) In finding that Mrs&amp;#xA0;Johnstone&amp;apos;s employment did not cause or
           aggravate her condition we also place reliance on the view of Dr Conron that
           Mrs&amp;#xA0;Johnstone did not look particularly upset when talking about her work and
           attributed her problems to her employment &amp;#x201C;because it was to her obvious
           advantage to do so&amp;#x201D;. It is significant too that Mrs&amp;#xA0;Johnstone said in
           evidence that she did not have any hassles coping with her work in May 1979 six months
           after being transferred to the family allowance section and one month prior to the date
           when she last worked with the Department. &lt;/text&gt;
         &lt;/p&gt;
        &lt;/blockquote&gt;
       &lt;/bodytext&gt;
      &lt;/courtcase:opinion&gt;
     &lt;/courtcase:opinions&gt;
    &lt;/courtcase:body&gt;
   &lt;/courtcase:caseexcerpt&gt;    
  &lt;/casedigest:decisionsummary&gt;   
  &lt;/casedigest:decision&gt;
  </pre></li>
          </ul>
        </li>
        <li>
          <sourcexml>case:disposition</sourcexml> becomes
          <targetxml>casesum:disposition</targetxml>, and <targetxml>p</targetxml> is the required
          child for <targetxml>casesum:disposition</targetxml>. <pre>

&lt;case:disposition&gt;Appeal dismissed.&lt;/case:disposition&gt;


<b>Becomes</b>


&lt;casesum:disposition&gt;
    &lt;p&gt;
        &lt;text&gt;Appeal dismissed.&lt;/text&gt;
    &lt;/p&gt;
&lt;/casesum:disposition&gt;

</pre>
        </li>
        <li>
          <note>When <sourcexml>footnotegrp</sourcexml> occurs within
              <sourcexml>case:body/case:headnote</sourcexml>, then conversion will move it within
              <targetxml>casedigest:body/note/bodytext/p/text</targetxml>. For more details please
            see below source and target snippets.</note>
          <pre><b>Source XML:</b>

&lt;case:body&gt;
    &lt;case:headnote&gt;
        ..........
        &lt;case:factsummary&gt;
            ............
        &lt;/case:factsummary&gt;
        &lt;case:decisionsummary summarytype="held"&gt;
            ..............
        &lt;/case:decisionsummary&gt;
        &lt;footnotegrp&gt;
            &lt;footnote fntoken="19ald087fn2" fnrtokens="19ald087fn2-r" type="default"&gt;
                &lt;fnlabel&gt;1&lt;/fnlabel&gt;
                &lt;fnbody&gt;
                    &lt;p&gt;
                        &lt;text&gt;An appeal has been lodged with the Federal Court against this decision.&lt;/text&gt;
                    &lt;/p&gt;
                &lt;/fnbody&gt;
            &lt;/footnote&gt;
        &lt;/footnotegrp&gt;
    &lt;/case:headnote&gt;
    ...........
&lt;/case:body&gt;
        
      </pre>
          <pre>
           <b>Target XML:</b>

&lt;casedigest:body&gt;
    &lt;casedigest:facts&gt;
        &lt;casedigest:factsummary&gt;
            &lt;bodytext/&gt;
        &lt;/casedigest:factsummary&gt;
    &lt;/casedigest:facts&gt;
    &lt;casedigest:decision&gt;
        &lt;casedigest:decisionsummary/&gt;
    &lt;/casedigest:decision&gt;
    &lt;note&gt;
        &lt;bodytext&gt;
            &lt;p&gt;
                &lt;text&gt;
                    &lt;footnotegroup&gt;
                        &lt;footnote&gt;
                            &lt;ref:anchor id="19ald087fn2"/&gt;
                            &lt;ref:returnreference&gt;
                                &lt;ref:locator anchoridref="19ald087fn2-r" anchortype="local"/&gt;
                            &lt;/ref:returnreference&gt;
                            &lt;label&gt;1&lt;/label&gt;
                            &lt;bodytext&gt;
                                &lt;p&gt;
                                    &lt;text&gt;An appeal has been lodged with the Federal Court against this decision.&lt;/text&gt;
                                &lt;/p&gt;
                            &lt;/bodytext&gt;
                        &lt;/footnote&gt;
                    &lt;/footnotegroup&gt;
                &lt;/text&gt;
            &lt;/p&gt;
        &lt;/bodytext&gt;
    &lt;/note&gt;
&lt;/casedigest:body&gt;
          </pre>
        </li>
      </ul>
      <note>If <sourcexml>footnotegrp</sourcexml>occurs inside
          <sourcexml>case:judgements</sourcexml> then mapping will be
          <targetxml>casedigest:body/casedigest:decision/courtcase:caseexcerpt/courtcase:body/courtcase:opinions/footnotegroup</targetxml>.
        For more details please refer the example below:</note>
      <b>Source XML</b>
      <pre>
&lt;case:body&gt;
&lt;case:content&gt;
    &lt;case:judgments&gt;
        &lt;footnotegrp&gt;
            &lt;footnote fntoken="LGPENSW.TB.LEN677.FTN1" fnrtokens="LGPENSW.TB.LEN677.FTN1-R" type="default"&gt;
                &lt;fnlabel&gt;*&lt;/fnlabel&gt;
                &lt;fnbody&gt;
                    &lt;h&gt;Editor's note:&lt;/h&gt;
                    &lt;p&gt;
                        &lt;refpt id="LGPENSW.TB.LEN677.FTN1" type="ext"&gt;&lt;/refpt&gt;
                        &lt;text&gt;Powell J found that the requirements of cl 43(1)(a) were not fulfilled but that the council was entitled to conclude that the shortfall was &amp;#x201C;minor&amp;#x201D;.  The Court of Appeal found that Powell J was right to refuse to grant relief for breach of cl 43(1)(a) but on the ground that the appellant was disentitled to relief on equitable grounds.  The case was remitted to the equity division on an alleged failure to conform to building plans; that is, a breach not based on cl 43(1)(a).  The appeal to the  High Court sought to have the alleged breach of cl 43(1)(a) remitted to equity.  The High Court did not determine the interpretation placed upon cl 43(1)(a) and decided only whether there was an entitlement to damages based on a breach of cl 43(1)(a).&lt;/text&gt;
                    &lt;/p&gt;
                &lt;/fnbody&gt;
            &lt;/footnote&gt;
        &lt;/footnotegrp&gt;
    &lt;/case:judgments&gt;
&lt;/case:content&gt;
&lt;/case:body&gt;        
      </pre>
      <b>Target XML</b>
      <pre>
&lt;casedigest:body&gt;
    &lt;casedigest:decision&gt;
        &lt;courtcase:caseexcerpt&gt;
            &lt;courtcase:body&gt;
                &lt;courtcase:opinions&gt;
                    &lt;footnotegroup&gt;
                        &lt;footnote&gt;
                            &lt;ref:anchor id="LGPENSW.TB.LEN677.FTN1"/&gt;
                            &lt;ref:returnreference&gt;
                                &lt;ref:locator anchoridref="LGPENSW.TB.LEN677.FTN1" anchortype="local"/&gt;
                            &lt;/ref:returnreference&gt;
                            &lt;label&gt;1&lt;/label&gt;
                            &lt;bodytext&gt;
                                &lt;p&gt;
                                    &lt;text&gt;Powell J found that the requirements of cl 43(1)(a) were not fulfilled but that the council was entitled to conclude that the shortfall was &amp;#x201C;minor&amp;#x201D;.  The Court of Appeal found that Powell J was right to refuse to grant relief for breach of cl 43(1)(a) but on the ground that the appellant was disentitled to relief on equitable grounds.  The case was remitted to the equity division on an alleged failure to conform to building plans; that is, a breach not based on cl 43(1)(a).  The appeal to the  High Court sought to have the alleged breach of cl 43(1)(a) remitted to equity.  The High Court did not determine the interpretation placed upon cl 43(1)(a) and decided only whether there was an entitlement to damages based on a breach of cl 43(1)(a).&lt;/text&gt;
                                &lt;/p&gt;
                            &lt;/bodytext&gt;
                        &lt;/footnote&gt;
                    &lt;/footnotegroup&gt;
                &lt;/courtcase:opinions&gt;
            &lt;/courtcase:body&gt;
        &lt;/courtcase:caseexcerpt&gt;
    &lt;/casedigest:decision&gt;
&lt;/casedigest:body&gt;      
    </pre>
    </p>
    
    <section>
      <title>Changes</title>
      <p>2014-07-24: <ph id="change_20140724_AS">Instructions to handle <sourcexml>case:judgments/footnotegrp</sourcexml>, Webteam #: 5494303.</ph></p>
      <p>2014-06-18: <ph id="change_20140618_PS">Updated target mapping and snippet for <sourcexml>case:courtcite</sourcexml>, Webteam #: 236888.</ph></p>
      <p>2013-09-26: <ph id="change_20130926_PY"> Added instructions for handling scenario <sourcexml>case:body/case:headnote/footnotegrp</sourcexml>.</ph></p>
      <p>2013-01-17: <ph id="change_20130117_dsf">Added instructions for populating
            <targetxml>decision:decisiondate/@normdate</targetxml>. Updated target examples so that
            <targetxml>@normdate</targetxml> is populated in
            <targetxml>decision:decisiondate</targetxml>.</ph></p>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU09_case_digest\Headnote.dita  -->
	<!--<xsl:message>Headnote.xsl requires manual development!</xsl:message>--> 
  
  <xsl:template match="case:info">
    <!--  Original Target XPath:  casedigest:head/casedigest:caseinfo   -->
    <casedigest:caseinfo>
      <xsl:apply-templates select="case:casename"/>
      <xsl:apply-templates select="case:altname"/>
      <xsl:apply-templates select="case:reportercite"/>
      <xsl:apply-templates select="@* | node() except (case:casename | case:altname | case:reportercite)"/>
      <xsl:apply-templates select="following::catchwordgrp"/>
    </casedigest:caseinfo>
  </xsl:template>
	
  <xsl:template match="case:length">
<!--  Original Target XPath:  casedigest:casedigest/doc:metadata/doc:docinfo/doc:doclength   -->
					<doc:doclength>
					  <xsl:attribute name="num">
					    <xsl:value-of select="normalize-space(replace(.,'\D+',''))"/>
					  </xsl:attribute>
					  <xsl:attribute name="source">
					    <xsl:text>conversion</xsl:text>
					  </xsl:attribute>
					  <xsl:attribute name="unit">
					    <xsl:value-of select="normalize-space(replace(.,'\d+',''))"/>
					  </xsl:attribute>
					</doc:doclength>
</xsl:template>

	

	<xsl:template match="case:reportercite">
		<!--  Original Target XPath:  /casedigest:head/ref:citations   -->
	  <ref:citations>
	    <ref:cite4thisresource>
	      <xsl:attribute name="citetype">
	        <xsl:text>reporter</xsl:text>
	      </xsl:attribute>
	      <xsl:apply-templates select="@* | node()"/>
	    </ref:cite4thisresource>
	  </ref:citations>
	</xsl:template>

  
  <xsl:template match="case:judges">
    <xsl:if test="ancestor::case:headnote and not(ancestor::case:content)">
      <casedigest:appearances>
        <courtcase:panel>
          <courtcase:judges>
                  <xsl:apply-templates select="node()"/>
          </courtcase:judges>
        </courtcase:panel>
      </casedigest:appearances>
    </xsl:if>
    
    <xsl:if test="ancestor::case:content">
      <courtcase:opinionby>
        <xsl:choose>
          <xsl:when test="not(case:judge)">
            <xsl:element name="person:judge">
              <xsl:apply-templates/>
            </xsl:element>
          </xsl:when>
          <xsl:otherwise>
            <xsl:apply-templates/>
          </xsl:otherwise>
        </xsl:choose>
        <!--  <person:judge>
                <xsl:apply-templates select="node()"/>
            </person:judge>-->
      </courtcase:opinionby>
    </xsl:if>
  </xsl:template>
  
  <xsl:template match="case:judges/text()">
    <xsl:value-of select="."/>
  </xsl:template>
  
  <xsl:template match="emph[@typestyle='smcaps'][parent::case:judges or parent::case:judge]">
    <xsl:apply-templates/>
  </xsl:template>
  
  <xsl:template match="nl[parent::case:judges]"/>
	
  <xsl:template match="case:judge">
		<person:judge>
			<xsl:apply-templates select="@* | node()"/>
		</person:judge>
	</xsl:template>

  <xsl:template match="case:filenum">
    <caseinfo:docketnum>
      <xsl:apply-templates select="@* | node()"/>
    </caseinfo:docketnum>
  </xsl:template>

  <xsl:template match="case:dates">
    
    <!--  Original Target XPath:  /courtcase:courtcase/courtcase:head/caseinfo:caseinfo/decision:dates   -->
    
    <decision:dates>
      <xsl:apply-templates select="@* | node() except child::page"/>
    </decision:dates>
    
    
  </xsl:template>
  
  <xsl:template match="case:hearingdates">
    <!-- If date is the child of hearingdates then attributes for argueddate will be populated -->
    <!--  Original Target XPath:  /courtcase:courtcase/courtcase:head/caseinfo:caseinfo/decision:dates/decision:argueddate   -->
    <xsl:choose>
      <xsl:when test="child::date">
        <decision:argueddate>
          <xsl:attribute name="day">
            <xsl:value-of select="date/@day"/>
          </xsl:attribute>
          <xsl:attribute name="month">
            <xsl:value-of select="date/@month"/>
          </xsl:attribute>
          <xsl:attribute name="year">
            <xsl:value-of select="date/@year"/>
          </xsl:attribute>
          <xsl:apply-templates select="@* |node()"/>
        </decision:argueddate>
      </xsl:when>
      <xsl:otherwise>
        <decision:argueddate>
          <xsl:apply-templates select="@* | node()"/>
        </decision:argueddate>
      </xsl:otherwise>
    </xsl:choose>
    
    
  </xsl:template>
  
  <xsl:template match="case:decisiondate">
    
    <!--  Original Target XPath:  /courtcase:courtcase/courtcase:head/caseinfo:caseinfo/decision:dates/decision:decisiondate   -->
    
    <decision:decisiondate>							
      <xsl:call-template name="process_date_attributes"/>
      <xsl:apply-templates select="@* | node()"/>
      <xsl:apply-templates select="./parent::case:dates/child::page"/>
    </decision:decisiondate>
    
  </xsl:template>	
  
  
  
  <xsl:template name="process_date_attributes">
    <!-- this template converts attributes in date/@* to attributes in the target. 
            If no date element exists as a child of the current node, the processing is skipped -->
    <xsl:choose>
      <xsl:when test="date">
        <xsl:variable name="year">
          <xsl:choose>
            <xsl:when test="date/@year='0000'">
              <xsl:value-of select="'2000'"/>
            </xsl:when>
            <xsl:otherwise>
              <xsl:value-of select="date/@year"/>
            </xsl:otherwise>
          </xsl:choose>
        </xsl:variable>
        <xsl:if test="date/@day">
          <xsl:attribute name="day">
            <xsl:value-of select="date/@day"/>
          </xsl:attribute>
        </xsl:if>
        <xsl:if test="date/@year">
          <xsl:attribute name="year">
            <xsl:value-of select="$year"/>
          </xsl:attribute>
        </xsl:if>
        <xsl:if test="date/@month">
          <xsl:attribute name="month">
            <xsl:value-of select="date/@month"/>
          </xsl:attribute>
        </xsl:if>				
        <xsl:if test="date/@month and date/@year and date/@day">					
          <xsl:attribute name="normdate">
            <xsl:value-of select="concat($year, '-', date/@month, '-', date/@day)"/>
          </xsl:attribute>
        </xsl:if>
      </xsl:when>
      <xsl:otherwise>
        <!-- don't create attributes if no date element in source -->
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template> 
  
  
  <xsl:template match="case:decisiondate[@ln.user-displayed]">
    
    <!--  Original Target XPath:  decision:releaseddate   -->
    <decision:decisiondate>							
      <xsl:call-template name="process_date_attributes"/>	
    </decision:decisiondate>
    
  </xsl:template>
		

  <xsl:template match="case:courtcite">
    <xsl:if test="child::ci:cite[@type='parallel']">
      <ref:citations>
        <ref:parallelcite citetype="court">
          <xsl:apply-templates select="node() | @*"/>
        </ref:parallelcite>
      </ref:citations>    
    </xsl:if>
  </xsl:template>
  
  
  <xsl:template match="case:courtcite[ci:cite[@type='cite4thisdoc' or not(@type)]]">
    <ref:citations>
      <ref:parallelcite citetype="court">
        <xsl:apply-templates select="node() | @*"/>
      </ref:parallelcite>
    </ref:citations>
  </xsl:template>

  <xsl:template match="case:courtloc">
    <jurisinfo:location>
      <xsl:if test="preceding-sibling::text()">
        <connector>
          <xsl:apply-templates select="preceding-sibling::text()"/>
        </connector>  
      </xsl:if>
      <location:city>
        <xsl:apply-templates select="@* | node()"/>
      </location:city>
      <xsl:if test="following-sibling::text()">
        <connector>
          <xsl:apply-templates select="following-sibling::text()"/>
        </connector>  
      </xsl:if>
    </jurisinfo:location>
  </xsl:template>

  <xsl:template match="case:factsummary">
		  <!--  Original Target XPath:  casedigest:body/casedigest:facts/casedigest:factsummary   -->
	   <casedigest:facts>
		    <casedigest:factsummary>
		      <bodytext>
			     <xsl:apply-templates select="@* | node()"/>
		      </bodytext>
			   </casedigest:factsummary>
		  </casedigest:facts>
		</xsl:template>
  
  <xsl:template match="case:decisionsummary">
    <xsl:variable name="name" select="local-name()"/>
    <xsl:if test="local-name(preceding-sibling::*[position()=1]) != $name">
      <casedigest:decision>
          <xsl:if test="child::*[1][self::p] | child::*[1][self::pgrp]">
            <casedigest:decisionsummary>
              <xsl:apply-templates select="heading"/>
              <bodytext>
                <xsl:apply-templates select="@* except @summarytype | node() except heading"/>
              </bodytext>
            </casedigest:decisionsummary>
          </xsl:if>
          <xsl:if test="child::*[1][self::blockquote/case:embeddedcase]">
            <casedigest:decisionsummary>
              <xsl:apply-templates select="heading"/>
              <xsl:if test="@summarytype"/>
              <xsl:apply-templates select="@*  except @summarytype | node() except heading"/>
            </casedigest:decisionsummary>
          </xsl:if>
        <!-- Match the next sibling if it has the same name -->
        <xsl:apply-templates select="following-sibling::*[1][local-name()=$name]" mode="next"/>
        </casedigest:decision>
    </xsl:if>
  </xsl:template>
  
  
  <xsl:template match="*" mode="next">
    <xsl:variable name="name" select="local-name()"/>
        <xsl:if test="child::*[1][self::p] | child::*[1][self::pgrp]">
        <casedigest:decisionsummary>
          <xsl:apply-templates select="heading"/>
          <bodytext>
            <xsl:apply-templates select="@*  except @summarytype | node() except heading"/>
          </bodytext>
        </casedigest:decisionsummary>
      </xsl:if>
      <xsl:if test="child::*[1][self::blockquote/case:embeddedcase]">
        <casedigest:decisionsummary>
          <xsl:apply-templates select="heading"/>
          <xsl:apply-templates select="@*  except @summarytype | node() except heading"/>
        </casedigest:decisionsummary>
      </xsl:if>
    
    <xsl:apply-templates select="following-sibling::*[1][local-name()=$name]" mode="next"/>
  </xsl:template>
  
  
  
  
  <xsl:template match="@summarytype"/>

	
	<xsl:template match="case:consideredcases">
		<!--  Original Target XPath:  /casedigest:decision/casedigest:decisionsummary/bodytext/ref:relatedrefs   -->
					<ref:relatedrefs>
					  <xsl:attribute name="referencetype">
					    <xsl:text>consideredcases</xsl:text>
					  </xsl:attribute>
					  <bodytext>
						<xsl:apply-templates select="@* | node()"/>
					  </bodytext>
					</ref:relatedrefs>
	</xsl:template>

    <xsl:template match="case:embeddedcase">
      <!--  Original Target XPath:  courtcase:caseexcerpt   -->
      <xsl:choose>
        <xsl:when test="child::case:content/case:judgments/case:judgment/case:judgmentbody and parent::blockquote/parent::case:decisionsummary">
          <courtcase:caseexcerpt>
            <courtcase:body>
                  <xsl:apply-templates select="@* | node()"/>
            </courtcase:body>
          </courtcase:caseexcerpt>
        </xsl:when>
        <xsl:otherwise>
          <courtcase:caseexcerpt>
            <xsl:apply-templates select="@* | node()"/>
          </courtcase:caseexcerpt>
        </xsl:otherwise>
      </xsl:choose>
	</xsl:template>

	
	<!--<xsl:template match="case:content">

		<!-\-  Original Target XPath:  casesum:disposition   -\->
		<casesum:disposition>
			<xsl:apply-templates select="@* | node()"/>
		</casesum:disposition>

	</xsl:template>-->

	<xsl:template match="case:disposition">

		<!--  Original Target XPath:  casesum:disposition   -->
		<casesum:disposition>
			<xsl:apply-templates select="@* | node()"/>
		</casesum:disposition>

	</xsl:template>
  </xsl:stylesheet>