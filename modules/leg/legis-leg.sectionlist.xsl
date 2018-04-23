<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:navaid="urn:x-lexisnexis:content:navigationaid:sharedservices:1" xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita docinfo leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="legis-leg.sectionlist">
 <title>leg:sectionlist <lnpid>id-ST03-26648</lnpid></title>
 <body>
  <section>
   <p>
    <ul>
     <li><b>Rule for <sourcexml>leg:sectionlist</sourcexml> appearing within <sourcexml>leg:info</sourcexml></b>:
      <ul>
       <li>When <sourcexml>leg:body/leg:info/leg:sectionlist</sourcexml> does not contain <sourcexml>@id</sourcexml> OR <sourcexml>@id</sourcexml> that DOES NOT contain value "xxxxx_PROVLIST" (xxxxx can be any text), then create a new <targetxml>primlaw:level[@leveltype="unclassified"]</targetxml>. This level is solely for the <sourcexml>leg:sectionlist</sourcexml> content within <sourcexml>leg:info</sourcexml>. Insert all <sourcexml>leg:sectionlist</sourcexml> element content within this single <targetxml>primlaw:level[@leveltype="unclassified"]</targetxml> element and <sourcexml>table</sourcexml> elements are retained as they are in the source. The conversion rule is <sourcexml>leg:sectionlist</sourcexml> becomes <targetxml>navaid:navigationaid</targetxml> with attribute <targetxml>@type="sectionlist"</targetxml> and required child <targetxml>bodytext</targetxml>
        <note>If <sourcexml>leg:sectionlist</sourcexml> has information about <b>LawNow Home Page</b> and <b>Government Website</b> captured in <sourcexml>table</sourcexml> then it becomes <targetxml>navaid:navigationaid</targetxml> with attribute <targetxml>@type="links"</targetxml></note>
        <note>Refer <xref href="../../common_newest/Rosetta_table-LxAdv-table.dita">table</xref> for handling of <sourcexml>table</sourcexml></note>
        <note>Refer <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">remotelink</xref> for handling of <sourcexml>remotelink</sourcexml></note>
       </li>
      </ul>
     </li>
    </ul>
   </p>
  </section>
  <example>
   <title>AUSTRALIA SOURCE XML 1: Mapping of <sourcexml>leg:info/leg:sectionlist</sourcexml></title>
   <codeblock>

&lt;leg:sectionlist&gt;
 &lt;p&gt;
  &lt;table frame="none" pgwide="1"&gt;
   &lt;tgroup cols="2" colsep="0" rowsep="0"&gt;
    &lt;colspec colwidth="12*" colname="c1" colnum="1"/&gt;
    &lt;colspec colwidth="12*" colname="c2" colnum="2"/&gt;
    &lt;tbody&gt;
     &lt;row&gt;
      &lt;entry align="left"&gt;
       &lt;remotelink service="DOC-ID" remotekey1="DOC-ID" dpsi="0EWE" remotekey2="LAWNOW_LEG_LAUNCH_TAS"&gt;LawNow Home Page&lt;/remotelink&gt;
      &lt;/entry&gt;
      &lt;entry align="right"&gt;
       &lt;remotelink hrefclass="http" href="www.thelaw.tas.gov.au/linkto.w3p;doc_id=230++2009+AT@EN+CURRENT" newwindow="YES"&gt;Government Website&lt;/remotelink&gt;
      &lt;/entry&gt;
     &lt;/row&gt;
    &lt;/tbody&gt;
   &lt;/tgroup&gt;
  &lt;/table&gt;
 &lt;/p&gt;
&lt;/leg:sectionlist&gt;

   </codeblock>
   <b>Becomes</b>
   <title>AUSTRALIA TARGET XML 1: Mapping of <sourcexml>leg:info/leg:sectionlist</sourcexml></title>
   <codeblock>

&lt;primlaw:level leveltype="unclassified"&gt;
 &lt;navaid:navigationaid type="links"&gt;
  &lt;bodytext&gt;
   &lt;p&gt;
    &lt;table frame="none" pgwide="1"&gt;
     &lt;tgroup cols="2" colsep="0" rowsep="0"&gt;
      &lt;colspec colwidth="12*" colname="c1" colnum="1"/&gt;
      &lt;colspec colwidth="12*" colname="c2" colnum="2"/&gt;
      &lt;tbody&gt;
       &lt;row&gt;
        &lt;entry align="left"&gt;
         &lt;ref:crossreference crossreferencetype="seeAlso"&gt;
          &lt;ref:content&gt;LawNow Home Page&lt;/ref:content&gt;
          &lt;ref:locator&gt;
           &lt;ref:locator-key&gt;
            &lt;ref:key-name name="DOC-ID"/&gt;
            &lt;ref:key-value value="0EWE-LAWNOW_LEG_LAUNCH_TAS"/&gt;
           &lt;/ref:locator-key&gt;
          &lt;/ref:locator&gt;
         &lt;/ref:crossreference&gt;
        &lt;/entry&gt;
        &lt;entry align="right"&gt;
         &lt;ref:lnlink service="URL"&gt;
          &lt;ref:marker&gt;Government Website&lt;/ref:marker&gt;
          &lt;ref:locator&gt;
           &lt;ref:locator-key&gt;
            &lt;ref:key-name name="URL"/&gt;
            &lt;ref:key-value value="http://www.thelaw.tas.gov.au/linkto.w3p;doc_id=230++2009+AT@EN+CURRENT"/&gt;
           &lt;/ref:locator-key&gt;
          &lt;/ref:locator&gt;
         &lt;/ref:lnlink&gt;
        &lt;/entry&gt;
       &lt;/row&gt;
      &lt;/tbody&gt;
     &lt;/tgroup&gt;
    &lt;/table&gt;
   &lt;/p&gt;
  &lt;/bodytext&gt;
 &lt;/navaid:navigationaid&gt;
&lt;/primlaw:level&gt;

   </codeblock>
  </example>
  <example>
   <title>AUSTRALIA SOURCE XML 2: Mapping of multiple <sourcexml>leg:sectionlist</sourcexml></title>
   <codeblock>

&lt;leg:sectionlist&gt;
 &lt;p&gt;&lt;text&gt;For further information, please select from the following:&lt;/text&gt;&lt;/p&gt;
 &lt;p&gt;
  &lt;text&gt;
   &lt;remotelink remotekey1="REFPTID" refpt="TAS_ACT_2009-88_PROVLIST" dpsi="2323" docidref="BCDE_5678" service="DOC-ID"&gt;List of Provisions&lt;/remotelink&gt;&amp;#160;&amp;#160;|&amp;#160;&amp;#160;
   &lt;remotelink remotekey1="REFPTID" refpt="TAS_ACT_2009-88_LEGHIST" dpsi="2323" docidref="BCDE_5678" service="DOC-ID"&gt;Legislative History&lt;/remotelink&gt;&amp;#160;&amp;#160;|&amp;#160;&amp;#160;
   &lt;remotelink remotekey1="REFPTID" refpt="TAS_ACT_2009-88_LAWNOWHISTORICALVERSIONS" dpsi="2323" docidref="BCDE_5678" service="DOC-ID"&gt;Historical Versions&lt;/remotelink&gt;&amp;#160;&amp;#160;|&amp;#160;&amp;#160;
   &lt;remotelink remotekey1="REFPTID" refpt="TAS_ACT_2009-88_DEFLIST" dpsi="2323" docidref="BCDE_5678" service="DOC-ID"&gt;Defined Terms&lt;/remotelink&gt;
  &lt;/text&gt;
 &lt;/p&gt;
&lt;/leg:sectionlist&gt;
&lt;leg:sectionlist&gt;
 &lt;p&gt;
  &lt;text&gt;
   &lt;inlineobject type="image" filename="mb.gif" attachment="web-server" alttext="Click the Express Search icon to search all subscribed cases and commentary for the selected provision" width="21px"/&gt;&amp;#160;Click the 
   &lt;remotelink href="www.lexisnexis.com.au/expresssearch/default.htm" hrefclass="http" newwindow="YES"&gt;Express Search&lt;/remotelink&gt; icon to search all subscribed cases and commentary for the selected provision.
  &lt;/text&gt;
 &lt;/p&gt;
&lt;/leg:sectionlist&gt;

   </codeblock>
   <b>Becomes</b>
   <title>AUSTRALIA TARGET XML 2: Mapping of multiple <sourcexml>leg:sectionlist</sourcexml></title>
   <codeblock>

&lt;primlaw:level leveltype="unclassified"&gt;
 &lt;navaid:navigationaid type="sectionlist"&gt;
  &lt;bodytext&gt;
   &lt;p&gt;&lt;text&gt;For further information, please select from the following:&lt;/text&gt;&lt;/p&gt;
   &lt;p&gt;
    &lt;text&gt;
     &lt;ref:crossreference crossreferencetype="seeAlso"&gt;
      &lt;ref:content&gt;List of Provisions&lt;/ref:content&gt;
      &lt;ref:locator anchoridref="TAS_ACT_2009-88_PROVLIST"&gt;
       &lt;ref:locator-key&gt;
        &lt;ref:key-name name="DOC-ID"/&gt;
        &lt;ref:key-value value="2323-BCDE_5678"/&gt;
       &lt;/ref:locator-key&gt;
      &lt;/ref:locator&gt;
     &lt;/ref:crossreference&gt;&amp;#x00A0;&amp;#x00A0;|&amp;#x00A0;&amp;#x00A0;
     &lt;ref:crossreference crossreferencetype="seeAlso"&gt;
      &lt;ref:content&gt;Legislative History&lt;/ref:content&gt;
      &lt;ref:locator anchoridref="TAS_ACT_2009-88_LEGHIST"&gt;
       &lt;ref:locator-key&gt;
        &lt;ref:key-name name="DOC-ID"/&gt;
        &lt;ref:key-value value="2323-BCDE_5678"/&gt;
       &lt;/ref:locator-key&gt;
      &lt;/ref:locator&gt;
     &lt;/ref:crossreference&gt;&amp;#x00A0;&amp;#x00A0;|&amp;#x00A0;&amp;#x00A0;
     &lt;ref:crossreference crossreferencetype="seeAlso"&gt;
      &lt;ref:content&gt;Historical Versions&lt;/ref:content&gt;
      &lt;ref:locator anchoridref="TAS_ACT_2009-88_LAWNOWHISTORICALVERSIONS"&gt;
       &lt;ref:locator-key&gt;
        &lt;ref:key-name name="DOC-ID"/&gt;
        &lt;ref:key-value value="2323-BCDE_5678"/&gt;
       &lt;/ref:locator-key&gt;
      &lt;/ref:locator&gt;
     &lt;/ref:crossreference&gt;&amp;#x00A0;&amp;#x00A0;|&amp;#x00A0;&amp;#x00A0;
     &lt;ref:crossreference crossreferencetype="seeAlso"&gt;
      &lt;ref:content&gt;Defined Terms&lt;/ref:content&gt;
      &lt;ref:locator anchoridref="TAS_ACT_2009-88_DEFLIST"&gt;
       &lt;ref:locator-key&gt;
        &lt;ref:key-name name="DOC-ID"/&gt;
        &lt;ref:key-value value="2323-BCDE_5678"/&gt;
       &lt;/ref:locator-key&gt;
      &lt;/ref:locator&gt;
     &lt;/ref:crossreference&gt;
    &lt;/text&gt;
   &lt;/p&gt;
  &lt;/bodytext&gt;
 &lt;/navaid:navigationaid&gt;
 &lt;navaid:navigationaid type="sectionlist"&gt;
  &lt;bodytext&gt;
   &lt;p&gt;
    &lt;text&gt;Click the 
     &lt;ref:lnlink service="URL"&gt;
      &lt;ref:marker&gt;Government Website&lt;/ref:marker&gt;
      &lt;ref:locator&gt;
       &lt;ref:locator-key&gt;
        &lt;ref:key-name name="URL"/&gt;
        &lt;ref:key-value value="http://www.thelaw.tas.gov.au/linkto.w3p;doc_id=230++2009+AT@EN+CURRENT"/&gt;
       &lt;/ref:locator-key&gt;
      &lt;/ref:locator&gt;
     &lt;/ref:lnlink&gt; icon to search all subscribed cases and commentary for the selected provision.
    &lt;/text&gt;
   &lt;/p&gt;
  &lt;/bodytext&gt;
 &lt;/navaid:navigationaid&gt;
&lt;/primlaw:level&gt;

   </codeblock>
  </example>
  <section>
   <p>
    <ul>
     <li>Rule for <sourcexml>leg:sectionlist</sourcexml> having <sourcexml>@id</sourcexml>:
      <ul>
       <li><b>Rule for <sourcexml>leg:sectionlist</sourcexml> appearing within <sourcexml>leg:info</sourcexml></b>:
        <ul>
         <li>When <sourcexml>leg:sectionlist</sourcexml> contains <sourcexml>@id</sourcexml> AND <sourcexml>@id</sourcexml> contains value "xxxxx_PROVLIST" (xxxxx can be any text), then create a new <targetxml>primlaw:level[@leveltype="table-of-contents"]</targetxml>. The <sourcexml>leg:sectionlist/@id</sourcexml> become <targetxml>primlaw:level[@leveltype="table-of-contents"]/@xml:id</targetxml> and <sourcexml>leg:sectionlist</sourcexml> will become <targetxml>primlaw:bodytext/toc</targetxml> with attribute <targetxml>@toctype="sectionlist"</targetxml></li>
         <li>The child elements will be converted as:
          <ul>
           <li><sourcexml>leg:sectionlist/leg:heading/title</sourcexml> becomes <targetxml>primlaw:level/heading/title</targetxml></li>
           <li>Rows with only one <sourcexml>entry</sourcexml> (alternatively, <sourcexml>entry</sourcexml> that feature <sourcexml>@namest</sourcexml>) and <sourcexml>@nameend</sourcexml> will map to:
            <ul>
             <li>Each <sourcexml>row</sourcexml> in table will become <targetxml>toc-entry</targetxml> with child <targetxml>desig</targetxml>
              <note>If <sourcexml>row</sourcexml> contains only one <sourcexml>entry</sourcexml> then map it to <targetxml>desig</targetxml>.</note>
             </li>
            </ul>
           </li>
           <li>Rows with two or more <sourcexml>entry</sourcexml> will map to:
            <ul>
             <li>Each <sourcexml>row</sourcexml> in table will become <targetxml>toc-entry</targetxml> with child <targetxml>desig</targetxml> and <targetxml>title</targetxml>
              <note>The first entry in a <sourcexml>row</sourcexml> will become <targetxml>desig</targetxml> followed by the second entry which will map to <targetxml>title</targetxml>.</note>
             </li>
            </ul>
            <note>Conversion needs to create nested <targetxml>toc-entry</targetxml>.</note>
           </li>
           <li><sourcexml>entry/remotelink[@service='DOC-ID']</sourcexml> becomes <targetxml>toc-entry/heading/title</targetxml> and <sourcexml>remotelink</sourcexml> attributes become <targetxml>toc-entry</targetxml> attributes as follows:
            <ul>
             <li>If <sourcexml>@remotekey1="DOC-ID"</sourcexml> then
              <ul>
               <li><targetxml>@ref:locatorkeyprotocol</targetxml> will have the value "DOC-ID".</li>
               <li><targetxml>@ref:locatorkey</targetxml> will be the value of <sourcexml>@dpsi</sourcexml> followed by hyphen and concatenated with <sourcexml>@refpt</sourcexml> or <sourcexml>@remotekey2</sourcexml>, which ever is present (if both are present, use <sourcexml>@remotekey2</sourcexml>).</li>
              </ul>
             </li>
             <li>If <sourcexml>@remotekey1="REFPTID"</sourcexml> then
              <ul>
               <li><targetxml>@ref:locatorkeyprotocol</targetxml> will have the value "DOC-ID".</li>
               <li><targetxml>@ref:locatorkey</targetxml> will be the value of <sourcexml>@dpsi</sourcexml> followed by hyphen and concatenated with <sourcexml>@docidref</sourcexml>.</li>
               <li><targetxml>@anchoridref</targetxml> with value from <sourcexml>@refpt</sourcexml> or <sourcexml>@remotekey2</sourcexml>, which ever is present (if both are present, use <sourcexml>@refpt</sourcexml>).</li>
              </ul>
              <note>If there is only one <sourcexml>row</sourcexml> then <sourcexml>entry/remotelink</sourcexml> becomes <targetxml>toc-entry/heading/desig</targetxml>.</note>
              <note>If <sourcexml>remotelink/@dpsi</sourcexml> is not present, use value from <sourcexml>docinfo:dpsi/@id-string</sourcexml> or capture value from the LBU manifest file.</note>
              <note><targetxml>ref:locator/@anchoridref</targetxml> that begins with a number must have an underscore added at start. Also apply other identifier data type format as used for <targetxml>xml:id</targetxml> and <targetxml>ref:anchor/@id</targetxml>, e.g. change colon to underscore.</note>
              <note>If the target <sourcexml>toc-entry</sourcexml> is in the same source document then omit <sourcexml>@ref:locatorkey </sourcexml> and <sourcexml>@ref:locatorkeyprotocol</sourcexml> from the <sourcexml>toc-entry</sourcexml>.</note>
             </li>
            </ul>
           </li>
           <li><sourcexml>entry/remotelink[@service is not ='DOC-ID']</sourcexml> then refer <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">remotelink</xref> for handling of <sourcexml>remotelink</sourcexml>.</li>
          </ul>
         </li>
        </ul>
       </li>
      </ul>
     </li>
    </ul>
   </p>
  </section>
  <example>
   <title>AUSTRALIA SOURCE XML 1: Mapping of <sourcexml>leg:sectionlist</sourcexml> having <sourcexml>@id</sourcexml></title>
   <codeblock>

&lt;leg:sectionlist id="NSW_ACT_2007-93_PROVLIST"&gt;
 &lt;leg:heading&gt;
  &lt;title&gt;&lt;refpt id="NSW_ACT_2007-93_PROVLIST" type="ext"/&gt;List of provisions&lt;/title&gt;
 &lt;/leg:heading&gt;
 &lt;p&gt;
  &lt;table frame="none"&gt;
   &lt;tgroup cols="2" colsep="0" rowsep="0"&gt;
    &lt;colspec colwidth="3*" colname="c1" colnum="1"/&gt;
    &lt;colspec colwidth="12*" colname="c2" colnum="2"/&gt;
    &lt;tbody&gt;
     &lt;row&gt;
      &lt;entry namest="c1" nameend="c2"&gt;
       &lt;remotelink service="DOC-ID" remotekey1="REFPTID" dpsi="1111" docidref="ABCD_9876" refpt="NSW_ACT_2007-93_ACTPT1"&gt;Part 1&amp;mdash;Preliminary&lt;/remotelink&gt;
      &lt;/entry&gt;
     &lt;/row&gt;
     &lt;row&gt;
      &lt;entry&gt;1&lt;/entry&gt;
      &lt;entry&gt;
       &lt;remotelink service="DOC-ID" remotekey1="REFPTID" dpsi="1111" docidref="ABCD_9876" refpt="NSW_ACT_2007-93_SEC1"&gt;Name of Act&lt;/remotelink&gt;&amp;#160;
       &lt;lnlink status="valid" service="SEARCH" scope="All Subscribed Australian Cases and Commentary" scope-protocol="combined-source-name"&gt;
        &lt;marker&gt;
         &lt;inlineobject width="21px" type="image" filename="mb.gif" attachment="web-server" alttext="click to find cases &amp;amp; commentary"/&gt;
        &lt;/marker&gt;
        &lt;api-params&gt;
         &lt;param name="expressSearch" value="true"/&gt;
         &lt;param name="searchString" value="LOCAL COURT ACT 2007 w/s LEG-REF(1)"/&gt;
        &lt;/api-params&gt;
       &lt;/lnlink&gt;
      &lt;/entry&gt;
     &lt;/row&gt;
     &lt;row&gt;
      &lt;entry&gt;2&lt;/entry&gt;
      &lt;entry&gt;
       &lt;remotelink service="DOC-ID" remotekey1="REFPTID" dpsi="1111" docidref="ABCD_9876" refpt="NSW_ACT_2007-93_SEC2"&gt;Commencement&lt;/remotelink&gt;&amp;#160;
       &lt;lnlink status="valid" service="SEARCH" scope="All Subscribed Australian Cases and Commentary" scope-protocol="combined-source-name"&gt;
        &lt;marker&gt;
         &lt;inlineobject width="21px" type="image" filename="mb.gif" attachment="web-server" alttext="click to find cases &amp;amp; commentary"/&gt;
        &lt;/marker&gt;
        &lt;api-params&gt;
         &lt;param name="expressSearch" value="true"/&gt;
         &lt;param name="searchString" value="LOCAL COURT ACT 2007 w/s LEG-REF(2)"/&gt;
        &lt;/api-params&gt;
       &lt;/lnlink&gt;
      &lt;/entry&gt;
     &lt;/row&gt;
     &lt;!-- ETC. --&gt;
    &lt;/tbody&gt;
   &lt;/tgroup&gt;
  &lt;/table&gt;
 &lt;/p&gt;
&lt;/leg:sectionlist&gt;

   </codeblock>
   <b>Becomes</b>
   <title>AUSTRALIA TARGET XML 1: Mapping of <sourcexml>leg:sectionlist</sourcexml> having <sourcexml>@id</sourcexml></title>
   <codeblock>

&lt;primlaw:level leveltype="table-of-contents"&gt;
 &lt;ref:anchor id="NSW_REG_1994-173_PROVLIST" anchortype="global"/&gt;
 &lt;heading&gt;
  &lt;title&gt;List of provisions&lt;/title&gt;
 &lt;/heading&gt;
 &lt;primlaw:bodytext&gt;
  &lt;toc toctype="sectionlist"&gt;
   &lt;toc-entry ref:locatorkey="1111-ABCD_9876" ref:locatorkeyprotocol="DOC-ID" anchoridref="NSW_ACT_2007-93_ACTPT1"&gt;
    &lt;heading&gt;
     &lt;desig&gt;Part 1—Preliminary&lt;/desig&gt;
    &lt;/heading&gt;
   &lt;toc-entry ref:locatorkey="1111-ABCD_9876" ref:locatorkeyprotocol="DOC-ID" anchoridref="NSW_ACT_2007-93_SEC1"&gt;
    &lt;heading&gt;
     &lt;desig&gt;1&lt;/desig&gt;
     &lt;title&gt;Name of Act&lt;/title&gt;
    &lt;/heading&gt;
   &lt;/toc-entry&gt;
   &lt;toc-entry ref:locatorkey="1111-ABCD_9876" ref:locatorkeyprotocol="DOC-ID" anchoridref="NSW_ACT_2007-93_SEC2"&gt;
    &lt;heading&gt;
     &lt;desig&gt;2&lt;/desig&gt;
     &lt;title&gt;Commencement&lt;/title&gt;
    &lt;/heading&gt;
   &lt;/toc-entry&gt;
  &lt;/toc-entry&gt; 
  &lt;!-- ETC. --&gt;
  &lt;/toc&gt;
 &lt;/primlaw:bodytext&gt;
&lt;/primlaw:level&gt;

   </codeblock>
   <note>In the above example <sourcexml>lnlink</sourcexml> will be suppressed from conversion. Also, added the attribute <targetxml>@toctype="sectionlist"</targetxml> to <targetxml>toc</targetxml>.</note>
  </example>
  <example>
   <title>AUSTRALIA SOURCE XML 2: Mapping of single <sourcexml>entry</sourcexml> within a <sourcexml>row</sourcexml></title>
   <codeblock>

&lt;leg:sectionlist id="ACT_ACT_1898-17_PROVLIST"&gt;
 &lt;leg:heading&gt;
  &lt;title&gt;&lt;refpt id="ACT_ACT_1898-17_PROVLIST" type="ext"/&gt;List of provisions&lt;/title&gt;
 &lt;/leg:heading&gt;
 &lt;p&gt;
  &lt;table frame="none"&gt;
   &lt;tgroup cols="2" colsep="0" rowsep="0"&gt;
    &lt;colspec colwidth="3*" colname="c1" colnum="1"/&gt;
    &lt;colspec colwidth="12*" colname="c2" colnum="2"/&gt;
    &lt;tbody&gt;
     &lt;row&gt;
      &lt;entry namest="c1" nameend="c2"&gt;
       &lt;remotelink service="DOC-ID" remotekey1="REFPTID" dpsi="1111" docidref="EFGH_2468" refpt="ACT_ACT_1898-17_PT1"&gt;Part&amp;#160;1 Preliminary&lt;/remotelink&gt;
      &lt;/entry&gt;
      &lt;!-- ETC. --&gt;
     &lt;/row&gt;
    &lt;/tbody&gt;
   &lt;/tgroup&gt;
  &lt;/table&gt;
 &lt;/p&gt;
&lt;/leg:sectionlist&gt;

   </codeblock>
   <b>Becomes</b>
   <title>AUSTRALIA TARGET XML 2: Mapping of <sourcexml>entry</sourcexml> within a <sourcexml>row</sourcexml></title>
   <codeblock>

&lt;primlaw:level leveltype="table-of-contents"&gt;
 &lt;ref:anchor id="ACT_ACT_1898-17_PROVLIST" anchortype="global"/&gt;
 &lt;heading&gt;
  &lt;title&gt;List of provisions&lt;/title&gt;
 &lt;/heading&gt;
 &lt;primlaw:bodytext&gt;
  &lt;toc toctype="sectionlist"&gt;
   &lt;toc-entry ref:locatorkey="1111-EFGH_2468" ref:locatorkeyprotocol="DOC-ID" anchoridref="ACT_ACT_1898-17_PT1"&gt;
    &lt;heading&gt;
     &lt;title&gt;Part&amp;#x00A0;1 Preliminary&lt;/title&gt;
    &lt;/heading&gt;
   &lt;/toc-entry&gt;
   &lt;!-- ETC. --&gt;
  &lt;/toc&gt;
 &lt;/primlaw:bodytext&gt;
&lt;/primlaw:level&gt;

   </codeblock>
  </example>
  <example>
   <title>AUSTRALIA SOURCE XML 3: Mapping of multiple <sourcexml>table</sourcexml></title>
   <codeblock>

&lt;leg:sectionlist id="CTH_ACT_1903-20_20110105_PROVLIST"&gt;
 &lt;leg:heading&gt;
  &lt;title&gt;&lt;refpt id="CTH_ACT_1903-20_20110105_PROVLIST" type="ext"/&gt;List of provisions&lt;/title&gt;
 &lt;/leg:heading&gt;
 &lt;p&gt;
  &lt;table frame="none"&gt;
   &lt;tgroup cols="2" colsep="0" rowsep="0"&gt;
    &lt;colspec colname="c1" colnum="1" colwidth="3*"/&gt;
    &lt;colspec colname="c2" colnum="2" colwidth="12*"/&gt;
    &lt;tbody&gt;
     &lt;row&gt;
      &lt;entry nameend="c2" namest="c1"&gt;
       &lt;remotelink refpt="CTH_ACT_1903-20_20110105_ACTPTI" dpsi="1111" docidref="EFGH_2468" remotekey1="REFPTID" service="DOC-ID"&gt;Part I&amp;#x2014;Introductory&lt;/remotelink&gt;
      &lt;/entry&gt;
     &lt;/row&gt;
     &lt;!-- ETC. --&gt;
    &lt;/tbody&gt;
   &lt;/tgroup&gt;
  &lt;/table&gt;
  &lt;!-- Start new table --&gt;
 &lt;/p&gt;
 &lt;p&gt;&lt;text&gt; &lt;/text&gt;&lt;/p&gt;
 &lt;p&gt;
  &lt;table frame="none"&gt;
   &lt;tgroup cols="2" colsep="0" rowsep="0"&gt;
    &lt;colspec colname="c1" colnum="1" colwidth="3*"/&gt;
    &lt;colspec colname="c2" colnum="2" colwidth="12*"/&gt;
    &lt;tbody&gt;
     &lt;row&gt;
      &lt;entry&gt;80A&lt;/entry&gt;
      &lt;entry&gt;
       &lt;remotelink refpt="CTH_ACT_1903-20_20110105_SEC80A" dpsi="9876" docidref="ABCD_5671" remotekey1="REFPTID" service="DOC-ID"&gt;Falsely representing to be returned soldier, sailor or airman&lt;/remotelink&gt;
      &lt;/entry&gt;
     &lt;/row&gt;
     &lt;!-- ETC. --&gt;
    &lt;/tbody&gt;
   &lt;/tgroup&gt;
  &lt;/table&gt;
 &lt;/p&gt;
&lt;/leg:sectionlist&gt;

   </codeblock>
   <b>Becomes</b>
   <title>AUSTRALIA TARGET XML 3: Mapping of multiple <sourcexml>table</sourcexml></title>
   <codeblock>

&lt;primlaw:level xml:id="CTH_ACT_1903-20_20110105_PROVLIST" leveltype="table-of-contents"&gt;
 &lt;heading&gt;
  &lt;title&gt;List of provisions&lt;/title&gt;
 &lt;/heading&gt;
 &lt;primlaw:bodytext&gt;
  &lt;toc toctype="sectionlist"&gt;
   &lt;toc-entry ref:locatorkey="1111-EFGH_2468" ref:locatorkeyprotocol="DOC-ID" anchoridref="CTH_ACT_1903-20_20110105_ACTPTI"&gt;
    &lt;heading&gt;
     &lt;title&gt;Part I—Introductory&lt;/title&gt;
    &lt;/heading&gt;
   &lt;/toc-entry&gt;
   &lt;!-- ETC. --&gt;
   &lt;toc-entry ref:locatorkey="9876-ABCD_5671" ref:locatorkeyprotocol="DOC-ID" anchoridref="CTH_ACT_1903-20_20110105_SEC80A"&gt;
    &lt;heading&gt;
     &lt;desig&gt;80A&lt;/desig&gt;
     &lt;title&gt;Falsely representing to be returned soldier, sailor or airman&lt;/title&gt;
    &lt;/heading&gt;
   &lt;/toc-entry&gt;
   &lt;!-- ETC. --&gt;
  &lt;/toc&gt;
 &lt;/primlaw:bodytext&gt;
&lt;/primlaw:level&gt;

   </codeblock>
  </example>
  <section>
   <title>Changes</title>
   <p>2013-07-16: <ph id="change_20130716_SK">Instruction narrative edited for language; no changes to mappings, no impact to stylesheets.</ph></p>
   <p>2013-07-08: <ph id="change_20130708_AB">Created.</ph></p>
  </section>
 </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-Standard\Legislation\legis-leg.sectionlist.dita  -->
	<xsl:message>legis-leg.sectionlist.xsl requires manual development!</xsl:message> 

	<xsl:template match="leg:sectionlist">

		<!--  Original Target XPath:  primlaw:level[@leveltype="unclassified"]   -->
		<primlaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="leg:info">

		<!--  Original Target XPath:  primlaw:level[@leveltype="unclassified"]   -->
		<primlaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="leg:body/leg:info/leg:sectionlist">

		<!--  Original Target XPath:  primlaw:level[@leveltype="unclassified"]   -->
		<primlaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="@id">

		<!--  Original Target XPath:  primlaw:level[@leveltype="unclassified"]   -->
		<primlaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="table">

		<!--  Original Target XPath:  navaid:navigationaid   -->
		<navaid:navigationaid>
			<xsl:apply-templates select="@* | node()"/>
		</navaid:navigationaid>

	</xsl:template>

	<xsl:template match="remotelink">

		<!--  Original Target XPath:  primlaw:level[@leveltype="table-of-contents"]   -->
		<primlaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="leg:info/leg:sectionlist">

		<!--  Original Target XPath:  primlaw:level[@leveltype="table-of-contents"]   -->
		<primlaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="leg:sectionlist/@id">

		<!--  Original Target XPath:  primlaw:level[@leveltype="table-of-contents"]/@xml:id   -->
		<primlaw:level>
			<xsl:attribute name="xml:id">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="leg:sectionlist/leg:heading/title">

		<!--  Original Target XPath:  primlaw:level/heading/title   -->
		<primlaw:level>
			<heading>
				<title>
					<xsl:apply-templates select="@* | node()"/>
				</title>
			</heading>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="entry">

		<!--  Original Target XPath:  toc-entry   -->
		<toc-entry>
			<xsl:apply-templates select="@* | node()"/>
		</toc-entry>

	</xsl:template>

	<xsl:template match="@namest">

		<!--  Original Target XPath:  toc-entry   -->
		<toc-entry>
			<xsl:apply-templates select="@* | node()"/>
		</toc-entry>

	</xsl:template>

	<xsl:template match="@nameend">

		<!--  Original Target XPath:  toc-entry   -->
		<toc-entry>
			<xsl:apply-templates select="@* | node()"/>
		</toc-entry>

	</xsl:template>

	<xsl:template match="row">

		<!--  Original Target XPath:  toc-entry   -->
		<toc-entry>
			<xsl:apply-templates select="@* | node()"/>
		</toc-entry>

	</xsl:template>

	<xsl:template match="entry/remotelink[@service='DOC-ID']">

		<!--  Original Target XPath:  toc-entry/heading/title   -->
		<toc-entry>
			<heading>
				<title>
					<xsl:apply-templates select="@* | node()"/>
				</title>
			</heading>
		</toc-entry>

	</xsl:template>

	<xsl:template match="@remotekey1=&#34;DOC-ID&#34;">

		<!--  Original Target XPath:  @ref:locatorkeyprotocol   -->
		<xsl:attribute name="ref:locatorkeyprotocol">
			<xsl:apply-templates select="node()"/>
		</xsl:attribute>

	</xsl:template>

	<xsl:template match="@dpsi">

		<!--  Original Target XPath:  @ref:locatorkeyprotocol   -->
		<xsl:attribute name="ref:locatorkeyprotocol">
			<xsl:apply-templates select="node()"/>
		</xsl:attribute>

	</xsl:template>

	<xsl:template match="@refpt">

		<!--  Original Target XPath:  @ref:locatorkeyprotocol   -->
		<xsl:attribute name="ref:locatorkeyprotocol">
			<xsl:apply-templates select="node()"/>
		</xsl:attribute>

	</xsl:template>

	<xsl:template match="@remotekey2">

		<!--  Original Target XPath:  @ref:locatorkeyprotocol   -->
		<xsl:attribute name="ref:locatorkeyprotocol">
			<xsl:apply-templates select="node()"/>
		</xsl:attribute>

	</xsl:template>

	<xsl:template match="@remotekey1=&#34;REFPTID&#34;">

		<!--  Original Target XPath:  @ref:locatorkeyprotocol   -->
		<xsl:attribute name="ref:locatorkeyprotocol">
			<xsl:apply-templates select="node()"/>
		</xsl:attribute>

	</xsl:template>

	<xsl:template match="@docidref">

		<!--  Original Target XPath:  @anchoridref   -->
		<xsl:attribute name="anchoridref">
			<xsl:apply-templates select="node()"/>
		</xsl:attribute>

	</xsl:template>

	<xsl:template match="entry/remotelink">

		<!--  Original Target XPath:  toc-entry/heading/desig   -->
		<toc-entry>
			<heading>
				<desig>
					<xsl:apply-templates select="@* | node()"/>
				</desig>
			</heading>
		</toc-entry>

	</xsl:template>

	<xsl:template match="remotelink/@dpsi">

		<!--  Original Target XPath:  ref:locator/@anchoridref   -->
		<ref:locator>
			<xsl:attribute name="anchoridref">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</ref:locator>

	</xsl:template>

	<xsl:template match="docinfo:dpsi/@id-string">

		<!--  Original Target XPath:  ref:locator/@anchoridref   -->
		<ref:locator>
			<xsl:attribute name="anchoridref">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</ref:locator>

	</xsl:template>

	<xsl:template match="toc-entry">

		<!--  Original Target XPath:  desig   -->
		<desig>
			<xsl:apply-templates select="@* | node()"/>
		</desig>

	</xsl:template>

	<xsl:template match="@ref:locatorkey ">

		<!--  Original Target XPath:  @toctype="sectionlist"   -->
		<xsl:attribute name="toctype">
			<xsl:text>sectionlist</xsl:text>
		</xsl:attribute>

	</xsl:template>

	<xsl:template match="@ref:locatorkeyprotocol">

		<!--  Original Target XPath:  @ref:locatorkey   -->
		<xsl:attribute name="ref:locatorkey">
			<xsl:apply-templates select="node()"/>
		</xsl:attribute>

	</xsl:template>

	<xsl:template match="entry/remotelink[@service is not ='DOC-ID']">

		<!--  Original Target XPath:  @toctype="sectionlist"   -->
		<xsl:attribute name="toctype">
			<xsl:text>sectionlist</xsl:text>
		</xsl:attribute>

	</xsl:template>

	<xsl:template match="lnlink">

		<!--  Original Target XPath:  @toctype="sectionlist"   -->
		<xsl:attribute name="toctype">
			<xsl:text>sectionlist</xsl:text>
		</xsl:attribute>

	</xsl:template>

</xsl:stylesheet>