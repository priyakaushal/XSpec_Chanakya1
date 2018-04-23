<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" xmlns:in="http://www.lexis-nexis.com/glp/in" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:index="urn:x-lexisnexis:content:publicationindex:sharedservices:1" xmlns:navaid="urn:x-lexisnexis:content:navigationaid:sharedservices:1" xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita docinfo in leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="legis-index">
 <title>index <lnpid>id-ST03-26611</lnpid></title>
 <body>
    <section>
     <p>Conversion of <sourcexml>index</sourcexml> is determined by children of <sourcexml>index</sourcexml>, as follows:
      <ul>
       <li><b>Handling for <sourcexml>/LEGDOC/leg:body/leg:endmatter/index/in:lev1</sourcexml> scenario:</b>
        <ul>
         <li><sourcexml>/LEGDOC/leg:body/leg:endmatter/index</sourcexml> becomes <targetxml>/legis:legis/legis:body/primlaw:level[@leveltype="endnote"]/index:index</targetxml> along with required attributes <targetxml>index:index[@indextype="definedTerms"]</targetxml> and <targetxml>index:index[@indextype="topical"]</targetxml>
          <note>When input documents has attribute <sourcexml>index[@id="XXXX_DEFLIST"]</sourcexml> then it will map to <targetxml>index:index[@indextype="definedTerms"]</targetxml> or if it has attribute <sourcexml>index[@id="XXXX_INDEX"]</sourcexml> then it will map to <targetxml>index:index[@indextype="topical"]</targetxml></note>
          And optional attributes and elements converted as:
          <ul>
           <li><sourcexml>@id</sourcexml> becomes <targetxml>@xml:id</targetxml></li>
           <li><sourcexml>heading</sourcexml> becomes <targetxml>heading</targetxml></li>
           <li><sourcexml>heading/title</sourcexml> becomes <targetxml>heading/title</targetxml></li>
           <li><sourcexml>in:lev1</sourcexml> becomes <targetxml>index:item</targetxml></li>
           <li><sourcexml>in:lev2</sourcexml> becomes <targetxml>index:item</targetxml></li>
           <li><sourcexml>in:lev3</sourcexml> becomes <targetxml>index:item</targetxml></li>
           <li><sourcexml>in:lev4</sourcexml> becomes <targetxml>index:item</targetxml></li>
           <li><sourcexml>in:entry</sourcexml> becomes <targetxml>index:entry</targetxml></li>
           <li><sourcexml>in:entry-text</sourcexml> becomes <targetxml>index:entrytext</targetxml></li>
           <li><sourcexml>index/p</sourcexml> becomes <targetxml>index:index/heading/subtitle</targetxml></li>
           <li><sourcexml>in:entry/in:index-ref</sourcexml> becomes <targetxml>index:entry/index:locator/ref:lnlink/@service="DOCUMENT"</targetxml> (create both target element <targetxml>index:locator</targetxml> and target child element <targetxml>index:locator/ref:lnlink/@service="DOCUMENT"</targetxml>), then source child element <sourcexml>in:index-ref/remotelink</sourcexml> will be converted as :
            <ul>
             <li>Use case: <sourcexml>remotelink[@service='DOC-ID']</sourcexml> becomes <targetxml>ref:marker</targetxml>. Create a <targetxml>ref:locator</targetxml> and the following child elements within it:
              <ul>
               <li>If <sourcexml>@remotekey1="DOC-ID"</sourcexml> then
                <ul>
                 <li><targetxml>ref:key-name/@name</targetxml> will have the value "DOC-ID".</li>
                 <li><targetxml>ref:key-value/@value</targetxml> will be the value of <sourcexml>@dpsi</sourcexml> followed by hyphen and concatenated with <sourcexml>@refpt</sourcexml> or <sourcexml>@remotekey2</sourcexml>, which ever is present (if both are present, use <sourcexml>@remotekey2</sourcexml>).</li>
                </ul>
               </li>
               <li>If <sourcexml>@remotekey1="REFPTID"</sourcexml> then
                <ul>
                 <li><targetxml>ref:key-name/@name</targetxml> will have the value "DOC-ID".</li>
                 <li><targetxml>ref:key-value/@value</targetxml> will be the value of <sourcexml>@dpsi</sourcexml> followed by hyphen and concatenated with <sourcexml>@docidref</sourcexml>.</li>
                 <li>Create <targetxml>ref:locator/@anchoridref</targetxml> with value from <sourcexml>@refpt</sourcexml> or <sourcexml>@remotekey2</sourcexml>, which ever is present (if both are present, use <sourcexml>@refpt</sourcexml>).</li>
                </ul>
               </li>
              </ul>
              <note>If <sourcexml>remotelink/@dpsi</sourcexml> is not present, use value from <sourcexml>docinfo:dpsi/@id-string</sourcexml> or capture value from the LBU manifest file.</note>
              <note><targetxml>ref:locator/@anchoridref</targetxml> that begins with a number must have an underscore added at start. Also apply other identifier data type format as used for xml:id and ref:anchor/@id, e.g. change colon to underscore.</note>
             </li>
            </ul>
           </li>
          </ul>
         </li>
        </ul>
       </li>
       <li><b>Handling for <sourcexml>index/table</sourcexml> and <sourcexml>index/p</sourcexml> scenario:</b>
        <ul>
         <li><sourcexml>/LEGDOC/leg:body/leg:endmatter/index</sourcexml> becomes <targetxml>/legis:legis/legis:body/primlaw:level[@leveltype="endnote"]/navaid:navigationaid</targetxml> and optioanl attributes and child elements converted as:
          <ul>
           <li><sourcexml>@id</sourcexml> becomes <targetxml>@xml:id</targetxml></li>
           <li><sourcexml>heading</sourcexml> becomes <targetxml>heading</targetxml></li>
           <li><sourcexml>heading/title</sourcexml> becomes <targetxml>heading/title</targetxml></li>
           <li><sourcexml>index/p/table</sourcexml> becomes <targetxml>navaid:navigationaid/bodytext/p/table</targetxml>
            <note>Refer <xref href="../../common_newest/Rosetta_table-LxAdv-table.dita">table</xref> for handling of <sourcexml>table</sourcexml></note>
           </li>
           <li><sourcexml>index/table</sourcexml> becomes <targetxml>navaid:navigationaid/bodytext/table</targetxml>
            <note>Refer <xref href="../../common_newest/Rosetta_table-LxAdv-table.dita">table</xref> for handling of <sourcexml>table</sourcexml></note>
           </li>
           <li><sourcexml>index/p</sourcexml> becomes <targetxml>navaid:navigationaid/bodytext/p</targetxml>
            <note>Refer <xref href="../../common_newest/Rosetta_p-LxAdv-p.dita">p</xref> for handling of <sourcexml>p</sourcexml></note>
            <note>Refer <xref href="../../common_newest/Rosetta_text-LxAdv-text.dita">text</xref> for handling of <sourcexml>text</sourcexml></note>
           </li>
          </ul>
         </li>
        </ul>
       </li>
       <li><b>Handling for <sourcexml>leg:info/index</sourcexml> scenario:</b>
        <ul>
         <li><sourcexml>leg:info/index</sourcexml> becomes <targetxml>primlaw:level[@leveltype="unclassified"]/index:index</targetxml>
         </li>
        </ul>
       </li>
      </ul>
     </p>
    </section>
   <example>
    <title>AUSTRALIA SOURCE XML 1: Mapping of <sourcexml>leg:endmatter/index/in:lev1</sourcexml></title>
      <codeblock>

&lt;leg:endmatter&gt;
 &lt;index id="NSW_ACT_1901-16_DEFLIST"&gt;
  &lt;heading&gt;
   &lt;title&gt;&lt;refpt id="NSW_ACT_1901-16_DEFLIST" type="ext"/&gt;&lt;emph typestyle="bf"&gt;List of Defined Terms&lt;/emph&gt;&lt;/title&gt;
  &lt;/heading&gt;
  &lt;in:lev1&gt;
   &lt;in:entry&gt;
    &lt;in:entry-text&gt;Justice&lt;/in:entry-text&gt;
    &lt;in:index-ref&gt;
     &lt;remotelink service="DOC-ID" remotekey1="REFPTID" refpt="NSW_ACT_1901-16_JUSTICE"&gt;sec3&lt;/remotelink&gt;
    &lt;/in:index-ref&gt;
   &lt;/in:entry&gt;
  &lt;/in:lev1&gt;
 &lt;/index&gt;
&lt;/leg:endmatter&gt;
       
      </codeblock>
      <b>Becomes</b>
    <title>AUSTRALIA TARGET XML 1: Mapping of <sourcexml>leg:endmatter/index/in:lev1</sourcexml></title>
      <codeblock>

&lt;primlaw:level leveltype="endnote"&gt;
 &lt;index:index indextype="definedTerms"&gt;
  &lt;ref:anchor id="NSW_ACT_1901-16_DEFLIST" anchortype="global"/&gt;
  &lt;heading&gt;
   &lt;title&gt;&lt;emph typestyle="bf"&gt;List of Defined Terms&lt;/emph&gt;&lt;/title&gt;
  &lt;/heading&gt;
  &lt;index:item&gt;
   &lt;index:entry&gt;
    &lt;index:entrytext&gt;Justice&lt;/index:entrytext&gt;
    &lt;index:locator&gt;
     &lt;ref:lnlink service="DOCUMENT"&gt;
      &lt;ref:marker&gt;sec3&lt;/ref:marker&gt;
      &lt;ref:locator anchoridref="NSW_ACT_1901-16_JUSTICE"&gt;
       &lt;ref:locator-key&gt;
        &lt;ref:key-name name="DOC-ID"/&gt;
        &lt;ref:key-value value="2222-CDEF_87614"/&gt;
       &lt;/ref:locator-key&gt;
      &lt;/ref:locator&gt;
     &lt;/ref:lnlink&gt;
    &lt;/index:locator&gt;
   &lt;/index:entry&gt;
  &lt;/index:item&gt;
 &lt;/index:index&gt;
&lt;/primlaw:level&gt;

      </codeblock>
   </example>
   <note>Refer <xref href="../../common_newest/Rosetta_refpt-Chof-leg.endmatter_index_heading_title-LxAdv-primlaw.level_ref.anchor.dita">refpt</xref> for handling of <sourcexml>refpt</sourcexml></note>
   <example>
    <title>AUSTRALIA SOURCE XML 2: When <sourcexml>in:lev1</sourcexml> is the sibling of <sourcexml>p</sourcexml></title>
    <codeblock>

&lt;index id="NSW_ACT_1898-11_INDEX"&gt;
 &lt;heading&gt;
  &lt;title align="left"&gt;&lt;refpt id="NSW_ACT_1898-11_IDX" type="ext"/&gt;INDEX&lt;/title&gt;        
 &lt;/heading&gt;
 &lt;!-- Warning: The "p" element is not supported in this context.  Please review the input markup. --&gt;
 &lt;p&gt;
  &lt;text&gt;Provision&lt;/text&gt;
 &lt;/p&gt;
 &lt;in:lev1&gt;
  &lt;in:entry&gt;
   &lt;in:entry-text&gt;Documents---&lt;/in:entry-text&gt;
  &lt;/in:entry&gt;
  &lt;in:lev2&gt;
   &lt;in:entry&gt;
    &lt;in:entry-text&gt;admissibility where forming part of business records&lt;/in:entry-text&gt;
    &lt;in:index-ref&gt;
     &lt;remotelink refpt="NSW_ACT_1898-11_SEC14CD" dpsi="3333" docidref="ABCD_4321" remotekey1="REFPTID" service="DOC-ID"&gt;14CD&lt;/remotelink&gt;
     --
     &lt;remotelink refpt="NSW_ACT_1898-11_SEC14CV" dpsi="3333" docidref="ABCD_4321" remotekey1="REFPTID" service="DOC-ID"&gt;14CV&lt;/remotelink&gt;
    &lt;/in:index-ref&gt;
   &lt;/in:entry&gt;
   &lt;in:lev3&gt;
    &lt;in:entry&gt;
     &lt;in:entry-text&gt;“business” includes Crown undertakings, public administration etc.&lt;/in:entry-text&gt;
     &lt;in:index-ref&gt;
      &lt;remotelink refpt="NSW_ACT_1898-11_SEC14CD" dpsi="3333" docidref="ABCD_4321" remotekey1="REFPTID" service="DOC-ID"&gt;14CD&lt;/remotelink&gt; (1)
     &lt;/in:index-ref&gt;
    &lt;/in:entry&gt;
    &lt;in:lev4&gt;
     &lt;in:entry&gt;
      &lt;in:entry-text&gt;[See also Business records]&lt;/in:entry-text&gt;
     &lt;/in:entry&gt;
    &lt;/in:lev4&gt;
   &lt;/in:lev3&gt;
  &lt;/in:lev2&gt;
  &lt;in:lev2&gt;
   &lt;in:entry&gt;
    &lt;in:entry-text&gt;impounding&lt;/in:entry-text&gt;
    &lt;in:index-ref&gt;
     &lt;remotelink refpt="NSW_ACT_1898-11_SEC43" dpsi="3333" docidref="ABCD_4321" remotekey1="REFPTID" service="DOC-ID"&gt;43&lt;/remotelink&gt;
    &lt;/in:index-ref&gt;
   &lt;/in:entry&gt;
  &lt;/in:lev2&gt;
 &lt;/in:lev1&gt;
 &lt;!-- ETC. --&gt;
&lt;/index&gt;
       
      </codeblock>
    <b>Becomes</b>
    <title>AUSTRALIA TARGET XML 2: When <sourcexml>in:lev1</sourcexml> is the sibling of <sourcexml>p</sourcexml></title>
    <codeblock>

&lt;index:index xml:id="NSW_ACT_1898-11_INDEX" indextype="topical"&gt;
 &lt;ref:anchor id="NSW_ACT_1898-11_IDX" anchortype="global"/&gt;
 &lt;heading&gt;
  &lt;title align="left"&gt;INDEX&lt;/title&gt;
  &lt;subtitle&gt;Provision&lt;/subtitle&gt;
 &lt;/heading&gt;
 &lt;index:item&gt;
  &lt;index:entry&gt;
   &lt;index:entrytext&gt;Documents---&lt;/index:entrytext&gt;
  &lt;/index:entry&gt;
  &lt;index:item&gt;
   &lt;index:entry&gt;
    &lt;index:entrytext&gt;admissibility where forming part of business records&lt;/index:entrytext&gt;
    &lt;index:locator&gt;
     &lt;ref:lnlink service="DOCUMENT"&gt;
      &lt;ref:marker&gt;14CD&lt;/ref:marker&gt;
      &lt;ref:locator anchoridref="NSW_ACT_1898-11_SEC14CD"&gt;
       &lt;ref:locator-key&gt;
        &lt;ref:key-name name="DOC-ID"/&gt;
        &lt;ref:key-value value="3333-ABCD_4321"/&gt;
       &lt;/ref:locator-key&gt;
      &lt;/ref:locator&gt;
     &lt;/ref:lnlink&gt;
    &lt;/index:locator&gt;
    &lt;connector&gt;--&lt;/connector&gt;
    &lt;index:locator&gt;
     &lt;ref:lnlink service="DOCUMENT"&gt;
      &lt;ref:marker&gt;14CV&lt;/ref:marker&gt;
      &lt;ref:locator anchoridref="NSW_ACT_1898-11_SEC14CV"&gt;
       &lt;ref:locator-key&gt;
        &lt;ref:key-name name="DOC-ID"/&gt;
        &lt;ref:key-value value="3333-ABCD_4321"/&gt;
       &lt;/ref:locator-key&gt;
      &lt;/ref:locator&gt;
     &lt;/ref:lnlink&gt;
    &lt;/index:locator&gt;
   &lt;/index:entry&gt;
   &lt;index:item&gt;
    &lt;index:entry&gt;
     &lt;index:entrytext&gt;"business" includes Crown undertakings, public administration  etc.&lt;/index:entrytext&gt;
     &lt;index:locator&gt;
      &lt;ref:lnlink service="DOCUMENT"&gt;
       &lt;ref:marker&gt;14CD&lt;/ref:marker&gt;
       &lt;ref:locator anchoridref="NSW_ACT_1898-11_SEC14CD"&gt;
       &lt;ref:locator-key&gt;
        &lt;ref:key-name name="DOC-ID"/&gt;
        &lt;ref:key-value value="3333-ABCD_4321"/&gt;
       &lt;/ref:locator-key&gt;
      &lt;/ref:locator&gt;
     &lt;/ref:lnlink&gt;
    &lt;/index:locator&gt;
    &lt;connector&gt; (1)&lt;/connector&gt;
   &lt;/index:entry&gt;
   &lt;index:item&gt;
    &lt;index:entry&gt;
     &lt;index:entrytext&gt;[See also Business records]&lt;/index:entrytext&gt;
    &lt;/index:entry&gt;
   &lt;/index:item&gt;
  &lt;/index:item&gt;
  &lt;index:item&gt;
   &lt;index:entry&gt;
    &lt;index:entrytext&gt;impounding&lt;/index:entrytext&gt;
    &lt;index:locator&gt;
     &lt;ref:lnlink service="DOCUMENT"&gt;
      &lt;ref:marker&gt;43&lt;/ref:marker&gt;
      &lt;ref:locator anchoridref="NSW_ACT_1898-11_SEC43"&gt;
      &lt;ref:locator-key&gt;
       &lt;ref:key-name name="DOC-ID"/&gt;
       &lt;ref:key-value value="3333-ABCD_4321"/&gt;
      &lt;/ref:locator-key&gt;
     &lt;/ref:locator&gt;
    &lt;/ref:lnlink&gt;
   &lt;/index:locator&gt;
   &lt;/index:entry&gt;
 &lt;/index:item&gt;
 &lt;/index:item&gt;
&lt;/index:item&gt;
&lt;!-- ETC. --&gt;
&lt;/index:index&gt;

      </codeblock>
   </example>
   <example>
    <title>AUSTRALIA SOURCE XML 3: Mapping of <sourcexml>leg:endmatter/index/p</sourcexml> and <sourcexml>leg:endmatter/index/p/table</sourcexml></title>
    <codeblock>

&lt;leg:endmatter&gt;
 &lt;index id="WA_ACT_2010-57_INDEX"&gt;
  &lt;heading&gt;
   &lt;title align="center"&gt;&lt;refpt id="WA_ACT_2010-57_INDEX" type="ext"/&gt;Defined Terms&lt;/title&gt;
  &lt;/heading&gt;
  &lt;p&gt;
   &lt;text&gt;&lt;emph typestyle="it"&gt;[This is a list of terms defined and the provisions where they are defined. The list is not part of the law.]&lt;/emph&gt;&lt;/text&gt;
   &lt;table&gt;
    &lt;tgroup cols="2"&gt;
     &lt;colspec colwidth="3*" colname="c1"/&gt;
     &lt;colspec colwidth="12*" colname="c2"/&gt;
     &lt;thead&gt;
      &lt;row&gt;
       &lt;entry colname="c1" align="left"&gt;&lt;emph typestyle="bf"&gt;Defined Term&lt;/emph&gt;&lt;/entry&gt;
       &lt;entry colname="c2" align="left"&gt;&lt;emph typestyle="bf"&gt;Provision(s)&lt;/emph&gt;&lt;/entry&gt;
      &lt;/row&gt;
     &lt;/thead&gt;
     &lt;tbody&gt;
      &lt;row&gt;
       &lt;entry colname="c1" align="left"&gt;access information&lt;/entry&gt;
       &lt;entry colname="c2" align="right"&gt;75(1)&lt;/entry&gt;
      &lt;/row&gt;
      &lt;row&gt;
       &lt;entry colname="c1" align="left"&gt;acquire&lt;/entry&gt;
       &lt;entry colname="c2" align="right"&gt;6&lt;/entry&gt;
      &lt;/row&gt;
      &lt;row&gt;
       &lt;entry colname="c1" align="left"&gt;application law&lt;/entry&gt;
       &lt;entry colname="c2" align="right"&gt;17(1)&lt;/entry&gt;
      &lt;/row&gt;
      &lt;row&gt;
       &lt;entry colname="c1" align="left"&gt;assistant&lt;/entry&gt;
       &lt;entry colname="c2" align="right"&gt;67(1)&lt;/entry&gt;
      &lt;/row&gt;
      &lt;!-- ETC. --&gt;
     &lt;/tbody&gt;
    &lt;/tgroup&gt;
   &lt;/table&gt;
  &lt;/p&gt;
  &lt;table&gt;
   &lt;tgroup cols="1"&gt;
    &lt;!-- adding colspecs --&gt;
    &lt;colspec colwidth="12*" colname="c1" colsep="0" rowsep="0"/&gt;
    &lt;tbody&gt;
     &lt;row&gt;
      &lt;entry&gt;&amp;#160;&lt;/entry&gt;
     &lt;/row&gt;
    &lt;/tbody&gt;
   &lt;/tgroup&gt;
  &lt;/table&gt;
 &lt;/index&gt;
&lt;/leg:endmatter&gt;

    </codeblock>
    <b>Becomes</b>
    <title>AUSTRALIA TARGET XML 3: Mapping of <sourcexml>leg:endmatter/index/p</sourcexml> and <sourcexml>leg:endmatter/index/p/table</sourcexml></title>
    <codeblock>

&lt;primlaw:level leveltype="endnote"&gt;
 &lt;navaid:navigationaid&gt;
  &lt;ref:anchor id="WA_ACT_2010-57_INDEX" anchortype="global"/&gt;
  &lt;title align="center"&gt;Defined Terms&lt;/title&gt;
  &lt;bodytext&gt;
   &lt;p&gt;
    &lt;text&gt;&lt;emph typestyle="it"&gt;[This is a list of terms defined and the provisions where they are defined. The list is not part of the law.]&lt;/emph&gt;&lt;/text&gt;
    &lt;table&gt;
     &lt;tgroup cols="2"&gt;
      &lt;colspec colwidth="3*" colname="c1"/&gt;
      &lt;colspec colwidth="12*" colname="c2"/&gt;
      &lt;thead&gt;
       &lt;row&gt;
        &lt;entry colname="c1" align="left"&gt;&lt;emph typestyle="bf"&gt;Defined Term&lt;/emph&gt;&lt;/entry&gt;
        &lt;entry colname="c2" align="left"&gt;&lt;emph typestyle="bf"&gt;Provision(s)&lt;/emph&gt;&lt;/entry&gt;
       &lt;/row&gt;
      &lt;/thead&gt;
      &lt;tbody&gt;
       &lt;row&gt;
        &lt;entry colname="c1" align="left"&gt;access information&lt;/entry&gt;
        &lt;entry colname="c2" align="right"&gt;75(1)&lt;/entry&gt;
       &lt;/row&gt;
       &lt;row&gt;
        &lt;entry colname="c1" align="left"&gt;acquire&lt;/entry&gt;
        &lt;entry colname="c2" align="right"&gt;6&lt;/entry&gt;
       &lt;/row&gt;
       &lt;row&gt;
        &lt;entry colname="c1" align="left"&gt;application law&lt;/entry&gt;
        &lt;entry colname="c2" align="right"&gt;17(1)&lt;/entry&gt;
       &lt;/row&gt;
       &lt;row&gt;
        &lt;entry colname="c1" align="left"&gt;assistant&lt;/entry&gt;
        &lt;entry colname="c2" align="right"&gt;67(1)&lt;/entry&gt;
       &lt;/row&gt;
       &lt;!-- ETC. --&gt;
      &lt;/tbody&gt;
     &lt;/tgroup&gt;
    &lt;/table&gt;
   &lt;/p&gt;
   &lt;table&gt;
    &lt;tgroup cols="1"&gt;
     &lt;!-- adding colspecs --&gt;
     &lt;colspec colwidth="12*" colname="c1" colsep="0" rowsep="0"/&gt;
     &lt;tbody&gt;
      &lt;row&gt;
       &lt;entry&gt;&amp;#x00A0;&lt;/entry&gt;
      &lt;/row&gt;
     &lt;/tbody&gt;
    &lt;/tgroup&gt;
   &lt;/table&gt;
  &lt;/bodytext&gt;    
&lt;/navaid:navigationaid&gt;

      </codeblock>
   </example>
   <example>
    <title>AUSTRALIA SOURCE XML 4: Mapping of <sourcexml>leg:info/index</sourcexml></title>
    <codeblock>

&lt;leg:info&gt;
 &lt;index&gt;
  &lt;p&gt;
   &lt;text&gt;For further information, please select from the following:&lt;/text&gt;
  &lt;/p&gt;
  &lt;in:lev1&gt;
   &lt;in:entry&gt;
    &lt;in:entry-text&gt;
     &lt;remotelink dpsi="0065" remotekey1="REFPTID" service="DOC-ID" refpt="VIC_ACT_6420_20030521_PROVLIST" docidref="CDEF_87614"&gt;List of Provisions&lt;/remotelink&gt;
    &lt;/in:entry-text&gt;
   &lt;/in:entry&gt;
  &lt;/in:lev1&gt;
  &lt;in:lev1&gt;
   &lt;in:entry&gt;
    &lt;in:entry-text&gt;
     &lt;remotelink dpsi="0065" remotekey1="REFPTID" service="DOC-ID" refpt="VIC_ACT_6420_HISTORICALVERSIONS" docidref="ABCD_12345"&gt;Historical Versions&lt;/remotelink&gt;
    &lt;/in:entry-text&gt;
   &lt;/in:entry&gt;
  &lt;/in:lev1&gt;
  &lt;in:lev1&gt;
   &lt;in:entry&gt;
    &lt;in:entry-text&gt;
     &lt;remotelink  dpsi="0065" remotekey1="REFPTID" service="DOC-ID" refpt="VIC_ACT_6420_20030521_DEFLIST" docidref="ABCD_45678"&gt;Defined Terms&lt;/remotelink&gt;
    &lt;/in:entry-text&gt;
   &lt;/in:entry&gt;
  &lt;/in:lev1&gt;
  &lt;in:lev1&gt;
   &lt;in:entry&gt;
    &lt;in:entry-text&gt;
     &lt;remotelink dpsi="0065" remotekey1="REFPTID" service="DOC-ID" refpt="VIC_ACT_6420" docidref="ABCD_32125"&gt;Current Version&lt;/remotelink&gt;
    &lt;/in:entry-text&gt;
   &lt;/in:entry&gt;
  &lt;/in:lev1&gt;
 &lt;/index&gt;
&lt;/leg:info&gt;
       
    </codeblock>
    <note>In above <sourcexml>leg:info/index</sourcexml> input sample snippet : Element <b>heading/title</b> does not occur  within <sourcexml>leg:info/index</sourcexml> that's why element <sourcexml>leg:info/index/p/text</sourcexml> becomes <targetxml>primlaw:level/index:index/heading/title</targetxml> in target mapping.</note>
    <b>Becomes</b>
    <title>AUSTRALIA TARGET XML 4: Mapping of <sourcexml>leg:info/index</sourcexml></title>
    <codeblock>

&lt;primlaw:level leveltype="unclassified"&gt;
 &lt;index:index&gt;
  &lt;heading&gt;
   &lt;title&gt;For further information, please select from the following:&lt;/title&gt;
  &lt;/heading&gt;
  &lt;index:item&gt;
   &lt;index:entry&gt;
    &lt;index:locator&gt;
     &lt;ref:lnlink service="DOCUMENT"&gt;
      &lt;ref:marker&gt;List of Provisions&lt;/ref:marker&gt;
      &lt;ref:locator anchoridref="VIC_ACT_6420_20030521_PROVLIST"&gt;
       &lt;ref:locator-key&gt;
        &lt;ref:key-name name="DOC-ID"/&gt;
        &lt;ref:key-value value="0065-CDEF_87614"/&gt;
       &lt;/ref:locator-key&gt;
      &lt;/ref:locator&gt;
     &lt;/ref:lnlink&gt;
    &lt;/index:locator&gt;
   &lt;/index:entry&gt;
  &lt;/index:item&gt;
  &lt;index:item&gt;
   &lt;index:entry&gt;
    &lt;index:locator&gt;
     &lt;ref:lnlink service="DOCUMENT"&gt;
      &lt;ref:marker&gt;Historical Versions&lt;/ref:marker&gt;
      &lt;ref:locator anchoridref="VIC_ACT_6420_HISTORICALVERSIONS"&gt;
       &lt;ref:locator-key&gt;
        &lt;ref:key-name name="DOC-ID"/&gt;
        &lt;ref:key-value value="0065-ABCD_12345"/&gt;
       &lt;/ref:locator-key&gt;
      &lt;/ref:locator&gt;
     &lt;/ref:lnlink&gt;
    &lt;/index:locator&gt;
   &lt;/index:entry&gt;
  &lt;/index:item&gt;
  &lt;index:item&gt;
   &lt;index:entry&gt;
    &lt;index:locator&gt;
     &lt;ref:lnlink service="DOCUMENT"&gt;
      &lt;ref:marker&gt;Defined Terms&lt;/ref:marker&gt;
      &lt;ref:locator anchoridref="VIC_ACT_6420_20030521_DEFLIST"&gt;
       &lt;ref:locator-key&gt;
        &lt;ref:key-name name="DOC-ID"/&gt;
        &lt;ref:key-value value="0065-ABCD_45678"/&gt;
       &lt;/ref:locator-key&gt;
      &lt;/ref:locator&gt;
     &lt;/ref:lnlink&gt;
    &lt;/index:locator&gt;
   &lt;/index:entry&gt;
  &lt;/index:item&gt;
  &lt;index:item&gt;
   &lt;index:entry&gt;
    &lt;index:locator&gt;
     &lt;ref:lnlink service="DOCUMENT"&gt;
      &lt;ref:marker&gt;Current Version&lt;/ref:marker&gt;
      &lt;ref:locator&gt;
       &lt;ref:locator-key anchoridref="VIC_ACT_6420"&gt;
        &lt;ref:key-name name="DOC-ID"/&gt;
        &lt;ref:key-value value="0065-ABCD_32125"/&gt;
       &lt;/ref:locator-key&gt;
      &lt;/ref:locator&gt;
     &lt;/ref:lnlink&gt;
    &lt;/index:locator&gt;
   &lt;/index:entry&gt;
  &lt;/index:item&gt;
 &lt;/index:index&gt;
&lt;/primlaw:level&gt;

    </codeblock>
   </example>
   <section>
    <title>Changes</title>
    <p>2013-07-08: <ph id="change_20130708_AB">Created.</ph></p>
   </section>
 </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-Standard\Legislation\legis-index.dita  -->
	<xsl:message>legis-index.xsl requires manual development!</xsl:message> 

	<xsl:template match="index">

		<!--  Original Target XPath:  /legis:legis/legis:body/primlaw:level[@leveltype="endnote"]/index:index   -->
		<legis:legis xmlns:legis="http://www.lexisnexis.com/xmlschemas/content/legal/legislation/1/">
			<legis:body>
				<primlaw:level>
					<index:index>
						<xsl:apply-templates select="@* | node()"/>
					</index:index>
				</primlaw:level>
			</legis:body>
		</legis:legis>

	</xsl:template>

	<xsl:template match="/LEGDOC/leg:body/leg:endmatter/index/in:lev1">

		<!--  Original Target XPath:  /legis:legis/legis:body/primlaw:level[@leveltype="endnote"]/index:index   -->
		<legis:legis xmlns:legis="http://www.lexisnexis.com/xmlschemas/content/legal/legislation/1/">
			<legis:body>
				<primlaw:level>
					<index:index>
						<xsl:apply-templates select="@* | node()"/>
					</index:index>
				</primlaw:level>
			</legis:body>
		</legis:legis>

	</xsl:template>

	<xsl:template match="/LEGDOC/leg:body/leg:endmatter/index">

		<!--  Original Target XPath:  /legis:legis/legis:body/primlaw:level[@leveltype="endnote"]/index:index   -->
		<legis:legis xmlns:legis="http://www.lexisnexis.com/xmlschemas/content/legal/legislation/1/">
			<legis:body>
				<primlaw:level>
					<index:index>
						<xsl:apply-templates select="@* | node()"/>
					</index:index>
				</primlaw:level>
			</legis:body>
		</legis:legis>

	</xsl:template>

	<xsl:template match="index[@id=&#34;XXXX_DEFLIST&#34;]">

		<!--  Original Target XPath:  index:index[@indextype="definedTerms"]   -->
		<index:index>
			<xsl:apply-templates select="@* | node()"/>
		</index:index>

	</xsl:template>

	<xsl:template match="index[@id=&#34;XXXX_INDEX&#34;]">

		<!--  Original Target XPath:  index:index[@indextype="topical"]   -->
		<index:index>
			<xsl:apply-templates select="@* | node()"/>
		</index:index>

	</xsl:template>

	<xsl:template match="@id">

		<!--  Original Target XPath:  @xml:id   -->
		<xsl:attribute name="xml:id">
			<xsl:apply-templates select="node()"/>
		</xsl:attribute>

	</xsl:template>

	<xsl:template match="heading">

		<!--  Original Target XPath:  heading   -->
		<heading>
			<xsl:apply-templates select="@* | node()"/>
		</heading>

	</xsl:template>

	<xsl:template match="heading/title">

		<!--  Original Target XPath:  heading/title   -->
		<heading>
			<title>
				<xsl:apply-templates select="@* | node()"/>
			</title>
		</heading>

	</xsl:template>

	<xsl:template match="in:lev1">

		<!--  Original Target XPath:  index:item   -->
		<index:item>
			<xsl:apply-templates select="@* | node()"/>
		</index:item>

	</xsl:template>

	<xsl:template match="in:lev2">

		<!--  Original Target XPath:  index:item   -->
		<index:item>
			<xsl:apply-templates select="@* | node()"/>
		</index:item>

	</xsl:template>

	<xsl:template match="in:lev3">

		<!--  Original Target XPath:  index:item   -->
		<index:item>
			<xsl:apply-templates select="@* | node()"/>
		</index:item>

	</xsl:template>

	<xsl:template match="in:lev4">

		<!--  Original Target XPath:  index:item   -->
		<index:item>
			<xsl:apply-templates select="@* | node()"/>
		</index:item>

	</xsl:template>

	<xsl:template match="in:entry">

		<!--  Original Target XPath:  index:entry   -->
		<index:entry>
			<xsl:apply-templates select="@* | node()"/>
		</index:entry>

	</xsl:template>

	<xsl:template match="in:entry-text">

		<!--  Original Target XPath:  index:entrytext   -->
		<index:entrytext>
			<xsl:apply-templates select="@* | node()"/>
		</index:entrytext>

	</xsl:template>

	<xsl:template match="index/p">

		<!--  Original Target XPath:  index:index/heading/subtitle   -->
		<index:index>
			<heading>
				<subtitle>
					<xsl:apply-templates select="@* | node()"/>
				</subtitle>
			</heading>
		</index:index>

	</xsl:template>

	<xsl:template match="in:entry/in:index-ref">

		<!--  Original Target XPath:  index:entry/index:locator/ref:lnlink/@service="DOCUMENT"   -->
		<index:entry>
			<index:locator>
				<ref:lnlink>
					<xsl:attribute name="service">
						<xsl:text>DOCUMENT</xsl:text>
					</xsl:attribute>
				</ref:lnlink>
			</index:locator>
		</index:entry>

	</xsl:template>

	<xsl:template match="in:index-ref/remotelink">

		<!--  Original Target XPath:  ref:marker   -->
		<ref:marker>
			<xsl:apply-templates select="@* | node()"/>
		</ref:marker>

	</xsl:template>

	<xsl:template match="remotelink[@service='DOC-ID']">

		<!--  Original Target XPath:  ref:marker   -->
		<ref:marker>
			<xsl:apply-templates select="@* | node()"/>
		</ref:marker>

	</xsl:template>

	<xsl:template match="@remotekey1=&#34;DOC-ID&#34;">

		<!--  Original Target XPath:  ref:key-name/@name   -->
		<ref:key-name>
			<xsl:attribute name="name">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</ref:key-name>

	</xsl:template>

	<xsl:template match="@dpsi">

		<!--  Original Target XPath:  ref:key-name/@name   -->
		<ref:key-name>
			<xsl:attribute name="name">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</ref:key-name>

	</xsl:template>

	<xsl:template match="@refpt">

		<!--  Original Target XPath:  ref:key-name/@name   -->
		<ref:key-name>
			<xsl:attribute name="name">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</ref:key-name>

	</xsl:template>

	<xsl:template match="@remotekey2">

		<!--  Original Target XPath:  ref:key-name/@name   -->
		<ref:key-name>
			<xsl:attribute name="name">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</ref:key-name>

	</xsl:template>

	<xsl:template match="@remotekey1=&#34;REFPTID&#34;">

		<!--  Original Target XPath:  ref:key-name/@name   -->
		<ref:key-name>
			<xsl:attribute name="name">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</ref:key-name>

	</xsl:template>

	<xsl:template match="@docidref">

		<!--  Original Target XPath:  ref:locator/@anchoridref   -->
		<ref:locator>
			<xsl:attribute name="anchoridref">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</ref:locator>

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

	<xsl:template match="index/table">

		<!--  Original Target XPath:  /legis:legis/legis:body/primlaw:level[@leveltype="endnote"]/navaid:navigationaid   -->
		<legis:legis xmlns:legis="http://www.lexisnexis.com/xmlschemas/content/legal/legislation/1/">
			<legis:body>
				<primlaw:level>
					<navaid:navigationaid>
						<xsl:apply-templates select="@* | node()"/>
					</navaid:navigationaid>
				</primlaw:level>
			</legis:body>
		</legis:legis>

	</xsl:template>

	<xsl:template match="index/p/table">

		<!--  Original Target XPath:  navaid:navigationaid/bodytext/p/table   -->
		<navaid:navigationaid>
			<bodytext>
				<p>
					<table>
						<xsl:apply-templates select="@* | node()"/>
					</table>
				</p>
			</bodytext>
		</navaid:navigationaid>

	</xsl:template>

	<xsl:template match="table">

		<!--  Original Target XPath:  navaid:navigationaid/bodytext/table   -->
		<navaid:navigationaid>
			<bodytext>
				<table>
					<xsl:apply-templates select="@* | node()"/>
				</table>
			</bodytext>
		</navaid:navigationaid>

	</xsl:template>

	<xsl:template match="p">

		<!--  Original Target XPath:  primlaw:level[@leveltype="unclassified"]/index:index   -->
		<primlaw:level>
			<index:index>
				<xsl:apply-templates select="@* | node()"/>
			</index:index>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="text">

		<!--  Original Target XPath:  primlaw:level[@leveltype="unclassified"]/index:index   -->
		<primlaw:level>
			<index:index>
				<xsl:apply-templates select="@* | node()"/>
			</index:index>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="leg:info/index">

		<!--  Original Target XPath:  primlaw:level[@leveltype="unclassified"]/index:index   -->
		<primlaw:level>
			<index:index>
				<xsl:apply-templates select="@* | node()"/>
			</index:index>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="leg:endmatter/index/in:lev1">

		<!--  Original Target XPath:  primlaw:level/index:index/heading/title   -->
		<primlaw:level>
			<index:index>
				<heading>
					<title>
						<xsl:apply-templates select="@* | node()"/>
					</title>
				</heading>
			</index:index>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="refpt">

		<!--  Original Target XPath:  primlaw:level/index:index/heading/title   -->
		<primlaw:level>
			<index:index>
				<heading>
					<title>
						<xsl:apply-templates select="@* | node()"/>
					</title>
				</heading>
			</index:index>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="leg:endmatter/index/p">

		<!--  Original Target XPath:  primlaw:level/index:index/heading/title   -->
		<primlaw:level>
			<index:index>
				<heading>
					<title>
						<xsl:apply-templates select="@* | node()"/>
					</title>
				</heading>
			</index:index>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="leg:endmatter/index/p/table">

		<!--  Original Target XPath:  primlaw:level/index:index/heading/title   -->
		<primlaw:level>
			<index:index>
				<heading>
					<title>
						<xsl:apply-templates select="@* | node()"/>
					</title>
				</heading>
			</index:index>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="leg:info/index/p/text">

		<!--  Original Target XPath:  primlaw:level/index:index/heading/title   -->
		<primlaw:level>
			<index:index>
				<heading>
					<title>
						<xsl:apply-templates select="@* | node()"/>
					</title>
				</heading>
			</index:index>
		</primlaw:level>

	</xsl:template>

</xsl:stylesheet>