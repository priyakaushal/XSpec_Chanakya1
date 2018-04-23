<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
    xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
    xmlns:ci="http://www.lexis-nexis.com/ci" 
    xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" 
    xmlns:glp="http://www.lexis-nexis.com/glp" 
    xmlns:in="http://www.lexis-nexis.com/glp/in" 
    xmlns:leg="http://www.lexis-nexis.com/glp/leg" 
    xmlns:form="http://www.lexisnexis.com/xmlschemas/content/shared/form/1/" 
    xmlns:index="urn:x-lexisnexis:content:publicationindex:sharedservices:1" 
    xmlns:legis="http://www.lexisnexis.com/xmlschemas/content/legal/legislation/1/" 
    xmlns:legisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/legislation-info/1/" 
    xmlns:shared_legisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/legisinfo/1/" 
    xmlns:navaid="urn:x-lexisnexis:content:navigationaid:sharedservices:1" 
    xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" 
    xmlns:primlawhist="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-history/1/" 
    xmlns:primlawinfo="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-info/1/" 
    xmlns:proc="http://www.lexisnexis.com/xmlschemas/content/shared/process-elements/1/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" 
    xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/" 
    version="2.0" exclude-result-prefixes="#all">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="legis-Body">
    <title>Body <lnpid>id-AU04-18607</lnpid></title>
    <shortdesc>All of the following are descendants of <targetxml>legis:body</targetxml>. Handle in
        document order unless specifically stated otherwise. Refer to General Markup Section for
        handling of children (including mixed content).</shortdesc>
    <body>
        <section>
            <title>legis:body</title>
            <p><sourcexml>leg:body</sourcexml> becomes <targetxml>legis:body</targetxml> and child
                elements as described below: <ul>
                    <li><sourcexml>leg:info</sourcexml> becomes
                            <targetxml>primlaw:level[@leveltype="unclassified"]/primlaw:levelinfo/primlawinfo:primlawinfo/legisinfo:legisinfo</targetxml>
                        and attribute <sourcexml>leg:info/@id</sourcexml> becomes
                            <targetxml>primlaw:level/@xml:id</targetxml> and suppress
                            <sourcexml>@subseqdoc</sourcexml> with children as described below:
                            <note>Conversion should not create adjacent
                                <targetxml>primlaw:levelinfo</targetxml>. Data should be merged to
                            single <targetxml>primlaw:levelinfo</targetxml>.</note><note>Conversion
                            should not create adjacent
                                <targetxml>primlawinfo:primlawinfo</targetxml>. Data should be
                            merged to single <targetxml>primlawinfo:primlawinfo</targetxml>.
                            </note><ul id="ul_nsk_mdz_aj">
                            <li><sourcexml>leg:info/leg:officialname</sourcexml> becomes
                                    <targetxml>legisinfo:legisinfo/legisinfo:names/legisinfo:officialtitle</targetxml>
                                and populated as below: <note>For handling <b>@ln.user-displayed</b>
                                    attribute, refer the general markup <xref href="../../common_newest/Rosetta_leg.officialname_ln.user-displayed-LxAdv-legisinfo.officialtitle.dita">ln.user_displayed="false"</xref> section in the CI.</note>
                                <pre>
                  
                  <!-- LawNow -->
                  
                  
        &lt;leg:info id="ACT_ACT_2001-14_LEG_INFO" subseqdoc="false"&gt;
            &lt;leg:officialname searchtype="LEGISLATION"&gt;
                &lt;refpt id="ACT_ACT_2001-14" type="ext"/&gt;
                    LEGISLATION ACT 2001&amp;#160;
                    &lt;lnlink status="valid" 
                            service="SEARCH" 
                            scope="All Subscribed Australian Cases and Commentary" 
                            scope-protocol="combined-source-name"&gt;
                                &lt;marker&gt;
                                    &lt;inlineobject 
                                        width="21px" 
                                        type="image" 
                                        filename="mb.gif" 
                                        attachment="web-server" 
                                        alttext="click to find cases &amp;amp; commentary"
                                        /&gt;
                                &lt;/marker&gt;
                                &lt;api-params&gt;
                                    &lt;param name="expressSearch" value="true"/&gt;
                                    &lt;param name="searchString" value="LEGISLATION ACT 2001"/&gt;
                                &lt;/api-params&gt;
                    &lt;/lnlink&gt;
            &lt;/leg:officialname&gt;
        &lt;/leg:info&gt;
                    
                    
                    <b>Becomes</b>
                  
                    
        &lt;legisinfo:legisinfo&gt;
            &lt;legisinfo:names&gt;
                &lt;legisinfo:officialtitle&gt;
                    LEGISLATION ACT 2001&amp;#x00A0;
                &lt;/legisinfo:officialtitle&gt;
            &lt;/legisinfo:names&gt;
        &lt;/legisinfo:legisinfo&gt;
                    
                                </pre>
                                <pre>
                  <b>Handling of leg:officialname/remotelink scenario:</b>
                  <!-- LawNow -->                  
                  
        &lt;leg:officialname searchtype="LEGISLATION"&gt;
    &lt;refpt id="VIC_ACT_1990-27" type="ext"&gt;&lt;/refpt&gt;QUARANTINE OFFICERS (TRANSFER) ACT 1990 (Repealed) 
    &lt;remotelink alttext="click to find cases &amp;amp; commentary" remotekey1="QUARANTINE OFFICERS TRANSFER ACT 1990" remotekey2="All Subscribed Australian Cases and Commentary" service="QUERY"&gt;&lt;inlineobject alttext="click to find cases &amp;amp; commentary" type="image" attachment="web-server" filename="mb.gif" /&gt;&lt;/remotelink&gt;
&lt;/leg:officialname&gt;
                    
                    <b>Becomes</b>
                  
                    
&lt;legisinfo:legisinfo&gt;
    &lt;legisinfo:names&gt;
        &lt;legisinfo:officialtitle&gt;
            QUARANTINE OFFICERS (TRANSFER) ACT 1990 (Repealed)
        &lt;/legisinfo:officialtitle&gt;
    &lt;/legisinfo:names&gt;
&lt;/legisinfo:legisinfo&gt;
                    
                </pre>
                                <note>In the above input examples <sourcexml>lnlink</sourcexml> and
                                        <sourcexml>remotelink</sourcexml> shall be suppressed from
                                    conversion and a corresponding product requirement shall be
                                    created with an instruction to build the link on retrieval based
                                    on semantic markup in the document. Use cases where the LBU
                                    feels the product requirement cannot be met if the markup is
                                    suppressed shall be handled case-by-case.</note>
                                <note>If the input document has scenario leg:officialname/refpt then
                                    suppress <sourcexml>refpt</sourcexml> from conversion since the
                                    id value matches with
                                    <sourcexml>docinfo:doc-id</sourcexml>.</note>
                                <note>Conversion should not create adjacent
                                        <targetxml>legisinfo:legisinfo</targetxml>. Data should be
                                    merged to single
                                    <targetxml>legisinfo:legisinfo</targetxml>.</note>
                            </li>
                        </ul>
                        <ul id="ul_ctk_mdz_aj">
                            <li><sourcexml>leg:info/leg:officialnum</sourcexml> becomes
                                    <targetxml>primlawinfo:identifier</targetxml> with required
                                attribute <targetxml>@idtype</targetxml>
                                <note>For handling <b>@ln.user-displayed</b> attribute, refer the
                                    general markup <xref href="../../common_newest/Rosetta_leg.officialnum_ln.user-displayed-LxAdv-primlawinfo.identifier_source.dita">ln.user_displayed="false"</xref> section in the CI.</note>
                                <pre>                  
                 <!-- LawNow-->
                  
                
                &lt;leg:info&gt;
                    &lt;leg:officialnum searchtype="LEGISLATION"&gt;
                        Act No. 25, 1998
                    &lt;/leg:officialnum&gt;
                &lt;/leg:info&gt;
                
                
                <b>Becomes</b>
                  
                                
               &lt;primlawinfo:identifier idtype="officialnum" &gt;
                    Act No. 25, 1998
               &lt;/primlawinfo:identifier&gt;
                
                                </pre>
                            </li>
                        </ul>
                        <ul id="ul_dtk_mdz_aj">
                            <li>
                                <sourcexml>leg:info/leg:year</sourcexml> becomes
                                    <targetxml>primlawinfo:dates/primlawinfo:enactdate</targetxml>
                                with attribute <targetxml>@year</targetxml>:
                                        <note><sourcexml>leg:year</sourcexml> input PCDATA
                                    transforms only to target attribute
                                        <targetxml>primlawinfo:enactdate[@year]</targetxml> and
                                    there should be no PCDATA in output.</note>
                                <note>For handling <b>@ln.user-displayed</b> attribute, refer the
                                    general markup <xref href="../../common_newest/Rosetta_leg.year_ln.user-displayed.dita">ln.user_displayed="false"</xref> section in the CI.</note>
                                <pre>
               
               &lt;leg:year searchtype="LEGISLATION" ln.user-displayed="false"&gt;1970&lt;/leg:year&gt;
               
               
               <b>Becomes</b>
                  
                  
              &lt;primlawinfo:dates&gt;
                    &lt;primlawinfo:enactdate year="1970"/&gt;
              &lt;/primlawinfo:dates&gt;
                
                                    </pre>
                            </li>
                        </ul>
                        <ul id="ul_stk_mdz_aj">
                            <li>
                                <p>
                                    <sourcexml>leg:info/leg:status</sourcexml> becomes
                                        <targetxml>legisinfo:legisinfo/legisinfo:statusgroup/
                                        legisinfo:status/legisinfo:statustext</targetxml>
                                </p>
                                <pre>
<b>Source XML 1</b>

     &lt;leg:info&gt;
      &lt;leg:status&gt;
        Consolidated as in force on 
        &lt;date&gt;21 October 2010&lt;/date&gt; 
        and remains current to the date 
        of the las Government Gazette.
       &lt;/leg:status&gt;
      &lt;/leg:info&gt;
       </pre>
                                <b>Becomes</b>
                                <pre>
<b>Target XML 1</b>

        &lt;legisinfo:legisinfo&gt;
                   &lt;legisinfo:statusgroup&gt;
                      &lt;legisinfo:status&gt;
                        &lt;legisinfo:statustext&gt;
                        Consolidated as in force on 
                        &lt;date&gt;21 October 2010&lt;/date&gt; 
                        and remains current to the date 
                        of the last Government Gazette.  
                       &lt;/legisinfo:statustext&gt;
                   &lt;/legisinfo:status&gt;
                &lt;/legisinfo:statusgroup&gt;
        &lt;/legisinfo:legisinfo&gt;

                                </pre>
                                <pre>
<b>Source XML 2</b>

&lt;leg:info&gt;
  &lt;leg:status&gt;
    &lt;nl/&gt;
    &lt;nl/&gt;
        &lt;inlineobject 
            type="image" 
            attachment="web-server" 
            filename="au_repealed.gif" 
            alttext="Repealed:"/&gt; 
        &lt;emph typestyle="bf"&gt;This Act was repealed 
            on 1/1/2005 by the 
            &lt;ci:cite searchtype="LEG-REF"&gt;
                &lt;ci:content&gt;
                    &lt;remotelink 
                        service="DOC-ID" remotekey1="REFPTID" 
                        dpsi="0HJ5" docidref="ABCD_1234" 
                        refpt="CTH_ACT_2003-140"&gt;
                            LEGISLATIVE INSTRUMENTS 
                            (TRANSITIONAL PROVISIONS AND 
                            CONSEQUENTIAL AMENDMENTS) 
                            ACT 2003
                    &lt;/remotelink&gt;
                &lt;/ci:content&gt;
            &lt;/ci:cite&gt;.
        &lt;/emph&gt;
        &lt;/leg:status&gt; 
 &lt;/leg:info&gt;
             </pre>
                                <b>Becomes</b>
                                <pre>
<b>Target XML 2</b>
                 
&lt;legisinfo:legisinfo&gt;
       &lt;legisinfo:statusgroup&gt;
         &lt;legisinfo:status&gt;
          &lt;legisinfo:statustext&gt;
             &lt;emph typestyle="bf"&gt;This Act was repealed on 1/1/2005 by the 
                &lt;lnci:cite type="legislation" citeref="CTH_ACT_2003-140"&gt;
                    &lt;lnci:content&gt;&lt;ref:crossreference crossreferencetype="seeAlso"&gt;
                     &lt;ref:content&gt;LEGISLATIVE INSTRUMENTS (TRANSITIONAL PROVISIONS AND CONSEQUENTIAL AMENDMENTS) ACT 2003&lt;/ref:content&gt;
                     &lt;ref:locator anchoridref="CTH_ACT_2003-140"&gt;
                        &lt;ref:locator-key&gt;
                        &lt;ref:key-name name="DOC-ID"/&gt;  
                        &lt;ref:key-value value="0HJ5-ABCD_1234"/&gt;
                        &lt;/ref:locator-key&gt;
                     &lt;/ref:locator&gt;
                    &lt;/ref:crossreference&gt;&lt;/lnci:content&gt;
                &lt;/lnci:cite&gt;.
             &lt;/emph&gt;  
          &lt;/legisinfo:statustext&gt;
       &lt;/legisinfo:status&gt;
      &lt;/legisinfo:statusgroup&gt;
&lt;/legisinfo:legisinfo&gt;
                                </pre>
                                <p><sourcexml>leg:status@statuscode</sourcexml> becomes
                                        <targetxml>legisinfo:status@statuscode</targetxml> the
                                    attribute value in the source XML can be directly converted into
                                    the target XML output as shown in the example below. <codeblock>

&lt;leg:status statuscode="consolidated"&gt;

<b>becomes</b>

&lt;legisinfo:status statuscode="consolidated"&gt;

</codeblock></p>
                                <note>The <targetxml>proc:nl</targetxml> will be suppressed within
                                        <targetxml>legisinfo:status</targetxml> as it is no longer
                                    required for presentation.</note>
                                <note>Conversion should not create adjacent
                                        <targetxml>legisinfo:legisinfo</targetxml>. Data should be
                                    merged to single
                                    <targetxml>legisinfo:legisinfo</targetxml>.</note>
                                <note>Conversion should not create adjacent
                                        <targetxml>legisinfo:statusgroup</targetxml>. Data should be
                                    merged to single <targetxml>legisinfo:statusgroup</targetxml>.
                                </note></li>
                        </ul>
                        <ul id="ul_xuk_mdz_aj">
                            <li>
                                <sourcexml>leg:info/index</sourcexml> becomes
                                    <targetxml>primlaw:level[@leveltype="unclassified"]/index:index</targetxml>
                                <note>Kindly refer <sourcexml>index</sourcexml> Conversion
                                    instructions for the above scenario.</note>
                                <pre>
&lt;leg:info&gt;
&lt;index&gt;
    &lt;p&gt;
        &lt;text&gt;For further information, please select from the following:&lt;/text&gt;
    &lt;/p&gt;
    &lt;in:lev1&gt;
        &lt;in:entry&gt;
            &lt;in:entry-text&gt;
                &lt;remotelink dpsi="0065" remotekey1="REFPTID" service="DOC-ID" 
refpt="VIC_ACT_6420_20030521_PROVLIST" docidref="CDEF_87614"&gt;List of Provisions&lt;/remotelink&gt;
            &lt;/in:entry-text&gt;
        &lt;/in:entry&gt;
    &lt;/in:lev1&gt;
    &lt;in:lev1&gt;
        &lt;in:entry&gt;
            &lt;in:entry-text&gt;
                &lt;remotelink dpsi="0065" remotekey1="REFPTID" service="DOC-ID" 
refpt="VIC_ACT_6420_HISTORICALVERSIONS" docidref="ABCD_12345"&gt;Historical Versions&lt;/remotelink&gt;
            &lt;/in:entry-text&gt;
        &lt;/in:entry&gt;
    &lt;/in:lev1&gt;
    &lt;in:lev1&gt;
        &lt;in:entry&gt;
            &lt;in:entry-text&gt;
                &lt;remotelink  dpsi="0065" remotekey1="REFPTID" service="DOC-ID" 
refpt="VIC_ACT_6420_20030521_DEFLIST" docidref="ABCD_45678"&gt;Defined Terms&lt;/remotelink&gt;
            &lt;/in:entry-text&gt;
        &lt;/in:entry&gt;
    &lt;/in:lev1&gt;
    &lt;in:lev1&gt;
        &lt;in:entry&gt;
            &lt;in:entry-text&gt;
                &lt;remotelink dpsi="0065" remotekey1="REFPTID" service="DOC-ID" 
refpt="VIC_ACT_6420" docidref="ABCD_32125"&gt;Current Version&lt;/remotelink&gt;
            &lt;/in:entry-text&gt;
        &lt;/in:entry&gt;
    &lt;/in:lev1&gt;
&lt;/index&gt;
&lt;/leg:info&gt;
</pre>
                                <b>Becomes</b>
                                <pre>
&lt;primlaw:level leveltype="unclassified"&gt;
    &lt;index:index&gt;
           &lt;heading&gt;&lt;title&gt;For further information, please select from the 
following:&lt;/title&gt;&lt;/heading&gt;
            &lt;index:item&gt;
                &lt;index:entry&gt;                    
                    &lt;index:locator&gt;
                      &lt;ref:lnlink service="DOCUMENT"&gt;
                        &lt;ref:marker&gt;List of Provisions&lt;/ref:marker&gt;
                        &lt;ref:locator anchoridref="VIC_ACT_6420_20030521_PROVLIST"&gt;
                            &lt;ref:locator-key&gt;
                                &lt;ref:key-name name="DOC-ID"/&gt;
                                &lt;ref:key-value
                                    value="0065-CDEF_87614"/&gt;
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
                                &lt;ref:key-value
                                    value="0065-ABCD_12345"/&gt;
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
                                &lt;ref:key-value
                                    value="0065-ABCD_45678"/&gt;
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
                                &lt;ref:key-value
                                    value="0065-ABCD_32125"/&gt;
                            &lt;/ref:locator-key&gt;
                        &lt;/ref:locator&gt;
                      &lt;/ref:lnlink&gt;
                    &lt;/index:locator&gt;
                &lt;/index:entry&gt;
            &lt;/index:item&gt;
          &lt;/index:index&gt;
&lt;/primlaw:level&gt;
                                </pre>
                            </li>
                        </ul>
                        <ul id="ul_nvk_mdz_aj">
                            <li><sourcexml>leg:info/leg:relatedleg</sourcexml> with attribute
                                    <sourcexml>leg:relatedleg[@type="subordinate"]</sourcexml>
                                becomes
                                    <targetxml>primlawinfo:primlawinfo/legisinfo:legisinfo/primlaw:subordinatelaw/
                                    primlaw:subordinatelaw-grp/primlaw:subordinatelaw-item/textitem</targetxml>
                                and optional child <targetxml>heading/title</targetxml> with
                                attribute <sourcexml>@id</sourcexml> becomes
                                    <targetxml>@xml:id</targetxml>
                                <sourcexml>leg:relatedleg/emph</sourcexml> conversion should drop the emphasis markup but keep content.
                                <pre>
&lt;leg:relatedleg id="CTH_ACT_1964-116_SUBLEG" type="subordinate"&gt;
           &lt;refpt id="CTH_ACT_1964-116_SUBLEG" type="ext"/&gt;&lt;nl/&gt;
            &lt;emph typestyle="bf"&gt;Subordinate Legislation&lt;/emph&gt;&lt;nl/&gt;&lt;nl/&gt;
            &lt;ci:cite searchtype="LEG-REF"&gt;
            &lt;ci:content&gt;
            &lt;remotelink refpt="CTH_REG_2003-291" dpsi="0HJ5" docidref="ABCD_1234" remotekey1="REFPTID" service="DOC-ID"&gt;CRIMES (OVERSEAS) (DECLARED FOREIGN COUNTRIES) REGULATIONS
            2003&lt;/remotelink&gt;
            &lt;/ci:content&gt;
            &lt;/ci:cite&gt;
            &lt;/leg:relatedleg&gt;
            
            <b>Becomes</b>
            
&lt;primlaw:subordinatelaw&gt;
           &lt;ref:anchor id="CTH_ACT_1964-116_SUBLEG" anchortype="global"/&gt;
        &lt;heading&gt;
        &lt;title&gt;Subordinate Legislation&lt;/title&gt;
        &lt;/heading&gt;
        &lt;primlaw:subordinatelaw-grp&gt;
        &lt;primlaw:subordinatelaw-item&gt;
        &lt;textitem&gt;
        &lt;lnci:cite type="legislation" citeref="CTH_REG_2003-291"&gt;
        &lt;lnci:content&gt; &lt;ref:crossreference crossreferencetype="seeAlso"&gt;
          &lt;ref:content&gt;CRIMES (OVERSEAS) (DECLARED FOREIGN COUNTRIES) REGULATIONS 2003&lt;/ref:content&gt;
          &lt;ref:locator anchoridref="CTH_REG_2003-291"&gt;
           &lt;ref:locator-key&gt;
            &lt;ref:key-name name="DOC-ID"/&gt;  
            &lt;ref:key-value value="0HJ5-ABCD_1234"/&gt;
           &lt;/ref:locator-key&gt;
          &lt;/ref:locator&gt;
        &lt;/ref:crossreference&gt;&lt;/lnci:content&gt;
        &lt;/lnci:cite&gt;
        &lt;/textitem&gt;
 &lt;/primlaw:subordinatelaw-item&gt;
 &lt;/primlaw:subordinatelaw-grp&gt;
  &lt;/primlaw:subordinatelaw&gt;
          </pre>
                                <note>For handling <sourcexml>refpt</sourcexml> refer <xref href="../../common_newest/Rosetta_refpt-Chof-leg.relatedleg-LxAdv-primlaw.subordinatelaw_ref.anchor.dita"> refpt</xref></note>
                                <note>The <targetxml>proc:nl</targetxml> will be suppressed from
                                    conversion.</note></li>
                        </ul></li>
                    <li>
                        <ul id="ul_cwk_mdz_aj">
                            <li>
                                <p>For <sourcexml>leg:relatedleg</sourcexml> with attribute
                                        <sourcexml>leg:relatedleg[@type="subordinate"]</sourcexml>
                                    move the initial text before the first <sourcexml>ci:cite
                                    </sourcexml> to
                                        <targetxml>primlaw:subordinatelaw-grp/heading/title</targetxml>
                                    as shown in the target XML output example below. </p>
                            </li>
                            <li>If <sourcexml>leg:relatedleg/emph typestyle="bf"/ Subordinate Legislation</sourcexml>
                                conversion should remove emphasis from output but keep content in <targetxml>heading/title</targetxml></li>
                            <li>
                                <p>Inculsion of a semantic markup
                                        <targetxml>legisinfo:status</targetxml> with attribute
                                        <targetxml>@statuscode="repealed"</targetxml> in order to
                                    identify the image file named as "au_repeal01.gif" within
                                        <sourcexml>leg:relatedleg</sourcexml> which will map to
                                        <targetxml>primlaw:subordinatelaw</targetxml>. Example
                                    provided below:</p>
                                <note>Use <targetxml>primlaw:subordinatelaw-grp</targetxml> in order
                                    to capture one or more subordinatelaw citations.</note>
                                <pre>
&lt;leg:relatedleg type="subordinate" id="NSW_ACT_2007-93_SUBLEG"&gt;
  &lt;refpt id="NSW_ACT_2007-93_SUBLEG" type="ext"/&gt;
  &lt;nl/&gt;
  &lt;emph typestyle="bf"&gt;Subordinate Legislation&lt;/emph&gt;
  &lt;nl/&gt;
  Amending Subordinate Law from 1996 are listed in the principal Subordinate Law history.
  &lt;nl/&gt;
  &lt;ci:cite searchtype="LEG-REF"&gt;
    &lt;ci:content&gt;&lt;remotelink service="DOC-ID" remotekey1="REFPTID" dpsi="2222" docidref="LCST_1234" refpt="NSW_REG_2009-
316"&gt;LOCAL COURT (SAVINGS AND TRANSITIONAL) REGULATION
    2009&lt;/remotelink&gt;&lt;/ci:content&gt;
  &lt;/ci:cite&gt;
  &lt;nl/&gt;
  &lt;ci:cite searchtype="LEG-REF"&gt;&lt;ci:content&gt;
      &lt;remotelink service="DOC-ID" remotekey1="REFPTID" dpsi="2222" docidref="LCRX_5678" 
        refpt="NSW_REG_2009-589"&gt;LOCAL COURT RULES 2009&lt;/remotelink&gt;&lt;/ci:content&gt;
  &lt;/ci:cite&gt;
  &lt;nl/&gt;
  &lt;ci:cite searchtype="LEG-REF"&gt;&lt;ci:content&gt;&lt;remotelink
        service="DOC-ID" remotekey1="REFPTID" dpsi="2222" docidref="LCCV_9876" refpt="NSW_REG_2005-387"&gt;LOCAL COURTS 
(CIVIL PROCEDURE) RULES 2005&lt;/remotelink&gt;&lt;/ci:content&gt;
  &lt;/ci:cite&gt;  
  &lt;inlineobject type="image" attachment="web-server" filename="au_repeal01.gif" 
alttext="[Repealed]"/&gt;
  &lt;nl/&gt;
  &lt;ci:cite searchtype="LEG-REF"&gt;&lt;ci:content&gt;
    &lt;remotelink service="DOC-ID" remotekey1="REFPTID" dpsi="2222" docidref="LCCR_5432" refpt="NSW_REG_2003-341"&gt;LOCAL 
COURTS (CRIMINAL AND APPLICATIONS PROCEDURE) RULE 2003&lt;/remotelink&gt;
  &lt;/ci:content&gt;&lt;/ci:cite&gt;  
  &lt;inlineobject type="image" attachment="web-server" filename="au_repeal01.gif" 
alttext="[Repealed]"/&gt;
&lt;/leg:relatedleg&gt;

           <b>Becomes</b>
                  
&lt;primlaw:subordinatelaw&gt;
        &lt;ref:anchor id="NSW_ACT_2007-93_SUBLEG" anchortype="global"/&gt;
  &lt;heading&gt;
    &lt;title&gt;Subordinate Legislation&lt;/title&gt;
  &lt;/heading&gt;
  &lt;primlaw:subordinatelaw-grp&gt;
          &lt;heading&gt;
                &lt;title&gt;Amending Subordinate Law from 1996 are listed in the principal Subordinate Law history.&lt;/title&gt;
          &lt;/heading&gt;
    &lt;primlaw:subordinatelaw-item&gt;
      &lt;textitem&gt;
        &lt;lnci:cite type="legislation" citeref="NSW_REG_2009-316"&gt;
          &lt;lnci:content&gt; &lt;ref:crossreference crossreferencetype="seeAlso"&gt;
          &lt;ref:content&gt;LOCAL COURT (SAVINGS AND TRANSITIONAL) REGULATION 2009&lt;/ref:content&gt;
          &lt;ref:locator anchoridref="NSW_REG_2009-316"&gt;
           &lt;ref:locator-key&gt;
            &lt;ref:key-name name="DOC-ID"/&gt;  
            &lt;ref:key-value value="2222-LCST_1234"/&gt;
           &lt;/ref:locator-key&gt;
          &lt;/ref:locator&gt;
         &lt;/ref:crossreference&gt;&lt;/lnci:content&gt;
        &lt;/lnci:cite&gt;
      &lt;/textitem&gt;
    &lt;/primlaw:subordinatelaw-item&gt;
    &lt;primlaw:subordinatelaw-item&gt;
      &lt;textitem&gt;
        &lt;lnci:cite type="legislation" citeref="NSW_REG_2009-589"&gt;
          &lt;lnci:content&gt; &lt;ref:crossreference crossreferencetype="seeAlso"&gt;
          &lt;ref:content&gt;LOCAL COURT RULES 2009&lt;/ref:content&gt;
          &lt;ref:locator anchoridref="NSW_REG_2009-589"&gt;
           &lt;ref:locator-key&gt;
            &lt;ref:key-name name="DOC-ID"/&gt;  
            &lt;ref:key-value value="2222-LCRX_5678"/&gt;
           &lt;/ref:locator-key&gt;
          &lt;/ref:locator&gt;
         &lt;/ref:crossreference&gt;&lt;/lnci:content&gt;
        &lt;/lnci:cite&gt;
      &lt;/textitem&gt;
    &lt;/primlaw:subordinatelaw-item&gt;
    &lt;primlaw:subordinatelaw-item&gt;
      &lt;textitem&gt;
        &lt;lnci:cite type="legislation" citeref="NSW_REG_2005-387"&gt;
          &lt;lnci:content&gt; &lt;ref:crossreference crossreferencetype="seeAlso"&gt;
          &lt;ref:content&gt;LOCAL COURTS (CIVIL PROCEDURE) RULES 2005&lt;/ref:content&gt;
          &lt;ref:locator anchoridref="NSW_REG_2005-387"&gt;
           &lt;ref:locator-key&gt;
            &lt;ref:key-name name="DOC-ID"/&gt;  
            &lt;ref:key-value value="2222-LCCV_9876"/&gt;
           &lt;/ref:locator-key&gt;
          &lt;/ref:locator&gt;
         &lt;/ref:crossreference&gt;&lt;/lnci:content&gt;
        &lt;/lnci:cite&gt;
      &lt;/textitem&gt;
      &lt;legisinfo:status statuscode="repealed"/&gt;
    &lt;/primlaw:subordinatelaw-item&gt;
    &lt;primlaw:subordinatelaw-item&gt;
      &lt;textitem&gt;
        &lt;lnci:cite type="legislation" citeref="NSW_REG_2003-341"&gt;
          &lt;lnci:content&gt; &lt;ref:crossreference crossreferencetype="seeAlso"&gt;
          &lt;ref:content&gt;LOCAL COURTS (CRIMINAL AND APPLICATIONS PROCEDURE) RULE 2003&lt;/ref:content&gt;
          &lt;ref:locator anchoridref="NSW_REG_2003-341"&gt;
           &lt;ref:locator-key&gt;
            &lt;ref:key-name name="DOC-ID"/&gt;  
            &lt;ref:key-value value="2222-LCCR_5432"/&gt;
           &lt;/ref:locator-key&gt;
          &lt;/ref:locator&gt;
         &lt;/ref:crossreference&gt;&lt;/lnci:content&gt;
        &lt;/lnci:cite&gt;
      &lt;/textitem&gt;
      &lt;legisinfo:status statuscode="repealed"/&gt;
    &lt;/primlaw:subordinatelaw-item&gt;            
  &lt;/primlaw:subordinatelaw-grp&gt;
&lt;/primlaw:subordinatelaw&gt;
      
   </pre>
                            </li>
                            <li>
                                <sourcexml>leg:relatedleg</sourcexml> with attribute
                                    <sourcexml>leg:relatedleg[@type="parent"]</sourcexml> will
                                become
                                    <targetxml>primlaw:level[@leveltype="unclassified"]/primlaw:authority/
                                    primlaw:authority-item/textitem</targetxml>
                                <pre>
     &lt;leg:relatedleg type="parent"&gt;Made under the &lt;ci:cite searchtype="LEG-REF"&gt;
     &lt;ci:content&gt;&lt;remotelink service="DOC-ID" remotekey1="REFPTID" dpsi="3333" docidref="EFGH_9876" refpt="ACT_ACT_2006-25"&gt;LEGAL PROFESSION ACT 2006&lt;/remotelink&gt;
     &lt;/ci:content&gt;
     &lt;/ci:cite&gt;.
     &lt;/leg:relatedleg&gt;
     
     <b>Becomes</b>
     
     
      &lt;primlaw:level leveltype="unclassified"&gt;
      &lt;primlaw:authority&gt;
      &lt;primlaw:authority-item&gt;
      &lt;textitem&gt;
      Made under the &lt;lnci:cite type="legislation" citeref="ACT_ACT_2006-25"&gt;
        &lt;lnci:content&gt; &lt;ref:crossreference crossreferencetype="seeAlso"&gt;
          &lt;ref:content&gt;LEGAL PROFESSION ACT 2006&lt;/ref:content&gt;
          &lt;ref:locator anchoridref="ACT_ACT_2006-25"&gt;
           &lt;ref:locator-key&gt;
            &lt;ref:key-name name="DOC-ID"/&gt;  
            &lt;ref:key-value value="3333-EFGH_9876"/&gt;
           &lt;/ref:locator-key&gt;
          &lt;/ref:locator&gt;
         &lt;/ref:crossreference&gt;&lt;/lnci:content&gt;
      &lt;/lnci:cite&gt;
      &lt;/textitem&gt;
      &lt;/primlaw:authority-item&gt;
      &lt;/primlaw:authority&gt;
      &lt;/primlaw:level&gt;
        
          </pre>
                            </li>
                        </ul>
                    </li>
                    <li><sourcexml>leg:level</sourcexml> becomes
                            <targetxml>primlaw:level</targetxml> comes with
                            <sourcexml>@id</sourcexml> becomes <targetxml>@xml:id</targetxml> and
                            <sourcexml>@leveltype</sourcexml> becomes
                            <targetxml>@leveltype</targetxml> attributes
                            <sourcexml>@subdoc</sourcexml> becomes
                            <targetxml>@includeintoc</targetxml> and
                            <sourcexml>toc-caption</sourcexml> becomes
                            <targetxml>alternatetoccaption</targetxml>, the values are tokenized, <ul>
                            <li><targetxml>primlaw:level[@leveltype="act"]</targetxml></li>
                            <li><targetxml>primlaw:level[@leveltype="addendum"]</targetxml></li>
                            <li><targetxml>primlaw:level[@leveltype="amendment"]</targetxml></li>
                            <li><targetxml>primlaw:level[@leveltype="annex"]</targetxml></li>
                            <li><targetxml>primlaw:level[@leveltype="appendix"]</targetxml></li>
                            <li><targetxml>primlaw:level[@leveltype="article"]</targetxml></li>
                            <li><targetxml>primlaw:level[@leveltype="canon"]</targetxml></li>
                            <li><targetxml>primlaw:level[@leveltype="chapter"]</targetxml></li>
                            <li><targetxml>primlaw:level[@leveltype="clause"]</targetxml></li>
                            <li><targetxml>primlaw:level[@leveltype="constitution"]</targetxml></li>
                            <li><targetxml>primlaw:level[@leveltype="companion"]</targetxml></li>
                            <li><targetxml>primlaw:level[@leveltype="division"]</targetxml></li>
                            <li><targetxml>primlaw:level[@leveltype="dictionary"]</targetxml></li>
                            <li><targetxml>primlaw:level[@leveltype="exhibit"]</targetxml></li>
                            <li><targetxml>primlaw:level[@leveltype="endnote"]</targetxml></li>
                            <li><targetxml>primlaw:level[@leveltype="form"]</targetxml></li>
                            <li><targetxml>primlaw:level[@leveltype="hierarchy-note"]</targetxml></li>
                            <li><targetxml>primlaw:level[@leveltype="introduction"]</targetxml></li>
                            <li><targetxml>primlaw:level[@leveltype="instrument"]</targetxml></li>
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
                            <li><targetxml>primlaw:level[@leveltype="subrule"]</targetxml></li>
                            <li><targetxml>primlaw:level[@leveltype="subregulation"]</targetxml></li>
                            <li><targetxml>primlaw:level[@leveltype="subschedule"]</targetxml></li>
                            <li><targetxml>primlaw:level[@leveltype="subsection"]</targetxml></li>
                            <li><targetxml>primlaw:level[@leveltype="subtitle"]</targetxml></li>
                            <li><targetxml>primlaw:level[@leveltype="supplement"]</targetxml></li>
                            <li><targetxml>primlaw:level[@leveltype="table-of-contents"]</targetxml></li>
                            <li><targetxml>primlaw:level[@leveltype="title"]</targetxml></li>
                            <li><targetxml>primlaw:level[@leveltype="topic"]</targetxml></li>
                            <li><targetxml>primlaw:level[@leveltype="treaty"]</targetxml></li>
                            <li><targetxml>primlaw:level[@leveltype="agency"]</targetxml></li>
                            <li><targetxml>primlaw:level[@leveltype="subagency]</targetxml></li>
                            <li><targetxml>primlaw:level[@leveltype="unclassified"]</targetxml></li>
                        </ul> and populated as: <pre>
                           
              <!-- LawNow -->
              &lt;leg:level id="VIC_ACT_1998-25_PART4"&gt;
              &lt;leg:level-vrnt leveltype="part"&gt;
              
              <b>Becomes</b>
              
              &lt;primlaw:level xml:id="VIC_ACT_1998-25_PART4" leveltype="part"&gt;
            </pre>
                        <note>If the input files are having <sourcexml>@leveltype</sourcexml> values
                            other than the tokenized list shown above the value will be set as
                                <targetxml>@leveltype="unclassified"</targetxml></note>
                        <pre>
            <!-- AU services -->  
              
               &lt;leg:level&gt;
              &lt;leg:level-vrnt leveltype="schedule"&gt;
              &lt;leg:heading&gt;
              &lt;desig&gt;&lt;designum&gt;SCHEDULE 2&lt;/designum&gt;&lt;/desig&gt;
              &lt;title&gt;SAVINGS, TRANSITIONAL AND OTHER PROVISIONS&lt;/title&gt;
              &lt;/leg:heading&gt;
              ...
              &lt;/leg:level&gt;
              
              
              <b>Becomes</b>
              
              &lt;primlaw:level leveltype="schedule"&gt; 
                           &lt;heading&gt;
                            &lt;desig&gt;SCHEDULE 2&lt;/desig&gt; 
                             &lt;title&gt;SAVINGS, TRANSITIONAL AND OTHER PROVISIONS&lt;/title&gt;
                         &lt;/heading&gt;                       
                       ....
                    &lt;/primlaw:level&gt;
                   
           </pre>
                        <note>In New Lexis <targetxml>primlaw:level</targetxml> element is used
                            instead of Rosetta elements <sourcexml>leg:level</sourcexml>and
                                <sourcexml>leg:level-vrnt</sourcexml>. Pick the
                                <sourcexml>@leveltype</sourcexml> value from
                                <sourcexml>leg:level-vrnt</sourcexml> and the element
                                <sourcexml>leg:level-vrnt</sourcexml> will be suppressed from
                            conversion.</note>
                    </li>
                    <li><sourcexml>LEGDOC/leg:body/leg:prelim</sourcexml> becomes
                            <targetxml>legis:legis/legis:body/primlaw:prelim</targetxml>; an
                        optional <sourcexml>heading</sourcexml> is converted using the rule below. 
                      <pre>
             <!-- AU services --> 
              
            &lt;leg:prelim&gt;
            &lt;heading&gt;&lt;title&gt;Transitional Information&lt;/title&gt;
            &lt;/heading&gt;
            &lt;leg:comntry&gt;
            &lt;level id="ABCE_LEG.SGM_GROUP_1" leveltype="group" toc-caption="Evidence (Consequential and Other Provisions) Act 1995 (NSW)"
            subdoc="true"&gt;
            &lt;heading searchtype="COMMENTARY"&gt;
            &lt;title&gt;Evidence (Consequential and Other Provisions) Act 1995 (NSW)&lt;/title&gt;
            &lt;/heading&gt;
            ....
            &lt;/level&gt;
            &lt;/leg:comntry&gt;
            &lt;/leg:prelim&gt;
           
            <b>Becomes</b>
              
              &lt;primlaw:prelim&gt;
              &lt;heading&gt;
              &lt;title&gt;Transitional Information&lt;/title&gt;
                &lt;/heading&gt;
                &lt;annot:annotations includeintoc="true" alternatetoccaption="Evidence (Consequential and Other Provisions) Act 1995 (NSW)"&gt;
                &lt;annot:annotation-grp xml:id="ABCE_LEG.SGM_GROUP_1"grptype="COMMENTARY"&gt;
                &lt;heading&gt;
                &lt;title&gt;Evidence (Consequential and Other Provisions) Act 1995 (NSW)&lt;/title&gt;
                &lt;/heading&gt;
                ....
                &lt;/annot:annotation-grp&gt;
                &lt;/annot:annotations&gt;
              &lt;/primlaw:prelim&gt;
            </pre>
                        <pre>
             &lt;leg:prelim&gt;
             &lt;leg:history&gt;
             &lt;leg:heading&gt;
             &lt;title&gt;Table of Amendments&lt;/title&gt;
             &lt;/leg:heading&gt;
            &lt;p&gt;
            &lt;text&gt;The Evidence (Children) Act 1997 No 143 of 1997
            was assented to 17 December 1997. Prior to being repealed by the Criminal Procedure Amendment (Vulnerable Persons) Act 2007 No 6 s 5,
            with effect from 12 October 2007, the Act had been amended as follows:&lt;/text&gt;&lt;/p&gt;
            &lt;leg:tableofamend&gt;
            &lt;table&gt;
            &lt;tgroup cols="3" colsep="0" rowsep="0"&gt;
            &lt;colspec colwidth="50*" colname="c1" align="left" colnum="1"/&gt;
            &lt;colspec colwidth="50*" colname="c2" align="left" colnum="2"/&gt;
            &lt;colspec colwidth="50*" colname="c3" align="left" colnum="3"/&gt;
            &lt;thead&gt;
            &lt;row&gt;
            &lt;entry colname="c1"&gt;&lt;emph typestyle="bf"&gt;Amending Legislation&lt;/emph&gt;&lt;/entry&gt;&lt;entry colname="c2"&gt;&lt;emph typestyle="bf"&gt;Date of
            Assent&lt;/emph&gt;
            &lt;/entry&gt;
            &lt;entry colname="c3"&gt;&lt;emph typestyle="bf"&gt;Date of Commencement&lt;/emph&gt;
            &lt;/entry&gt;
            &lt;/row&gt;
            &lt;/thead&gt;
            &lt;tbody&gt;
            &lt;row&gt;&lt;entry colname="c1"&gt;Statute Law (Miscellaneous Provisions) Act (No 2) 1999 No 85&lt;/entry&gt;&lt;entry colname="c2"&gt;3 December
            1999&lt;/entry&gt;
            &lt;entry colname="c3"&gt;3 December 1999&lt;/entry&gt;
            &lt;/row&gt;
            ...
            &lt;/table&gt;
            &lt;/leg:tableofamend&gt;
            

          <b>Becomes</b>
             
             &lt;primlaw:prelim&gt;
            &lt;primlawhist:primlawhist&gt;
             &lt;heading&gt;&lt;title&gt;Table of Amendments&lt;/title&gt;&lt;/heading&gt;     
             &lt;legishist:legishist&gt;
             &lt;legishist:actionhist&gt;
             &lt;legishist:action&gt;
             &lt;legishist:actionsummary&gt;
              The Evidence (Children) Act 1997 No 143 of 1997 was assented to 17 December 1997. Prior to being repealed by the Criminal Procedure
              Amendment (Vulnerable Persons) Act 2007 No 6 s 5, with effect from 12 October 2007, the Act had been amended as follows:       
             &lt;/legishist:actionsummary&gt;    
              &lt;/legishist:action&gt;    
             &lt;/legishist:actionhist&gt;    
             &lt;/legishist:legishist&gt;   
             &lt;primlawhist:histgrp grptype="tableofamend"&gt;
              &lt;primlawhist:histitem&gt;
              &lt;bodytext&gt;
              &lt;table&gt;
              &lt;tgroup cols="3" colsep="0" rowsep="0"&gt;
              &lt;colspec colwidth="50*" colname="c1" align="left" colnum="1"/&gt;
              &lt;colspec colwidth="50*" colname="c2" align="left" colnum="2"/&gt;
              &lt;colspec colwidth="50*" colname="c3" align="left" colnum="3"/&gt;
              &lt;thead&gt;&lt;row&gt;&lt;entry colname="c1"&gt;&lt;emph typestyle="bf"&gt;Amending Legislation&lt;/emph&gt;&lt;/entry&gt;&lt;entry colname="c2"&gt;&lt;emph
              typestyle="bf"&gt;Date of Assent&lt;/emph&gt;&lt;/entry&gt;&lt;entry colname="c3"&gt;&lt;emph typestyle="bf"&gt;Date of 
              Commencement&lt;/emph&gt;&lt;/entry&gt;&lt;/row&gt;&lt;/thead&gt;
              &lt;tbody&gt;
              &lt;row&gt;&lt;entry colname="c1"&gt;Statute Law (Miscellaneous Provisions) Act (No 2) 1999 No 85&lt;/entry&gt;&lt;entry colname="c2"&gt;3 December
              1999&lt;/entry&gt;&lt;entry colname="c3"&gt;3 December 1999&lt;/entry&gt;&lt;/row&gt;
              …..&lt;/table&gt;
              &lt;/bodytext&gt;
              &lt;/primlawhist:histitem&gt;
              &lt;/primlawhist:histgrp&gt;
              &lt;/primlawhist:primlawhist&gt;
              &lt;/primlaw:prelim&gt;

           </pre>    <ul>
                            <li><sourcexml>leg:heading</sourcexml> becomes
                                    <targetxml>heading</targetxml> with attributes
                                    <sourcexml>@inline</sourcexml> becomes
                                    <targetxml>@inline</targetxml> which has tokenized values and
                                populated as: <ul>
                                    <li><targetxml>heading[@inline="true"]</targetxml></li>
                                    <li><targetxml>heading[@inline="false"]</targetxml></li>
                                </ul>
                                <note>For handling <b>@ln.user-displayed</b> attribute, refer the
                                    general markup <xref href="../../common_newest/Rosetta_leg.heading_ln.user-displayed.dita">ln.user_displayed="false"</xref> section in the CI.</note>
                                <note>Convert all instances of <sourcexml>nl</sourcexml> within <sourcexml>heading/title</sourcexml> to a space ' '. </note>
                                
                                <pre>
              &lt;leg:level leveltype="sect"&gt;
              &lt;leg:heading&gt;
              &lt;desig searchtype="SECT-NUM"&gt;
              &lt;designum&gt;
              &lt;refpt id="CTH_ACT_1970-121_SEC3" type="ext"/&gt;&lt;emph typestyle="bf"&gt;3&lt;/emph&gt;
              &lt;/designum&gt;
              &lt;/desig&gt;
              &lt;title align="left" searchtype="SECT-TITLE"&gt;&lt;emph typestyle="bf"&gt;Interpretation&lt;/emph&gt;&lt;/title&gt;
              &lt;/leg:heading&gt;
              ...
              &lt;/leg:level&gt;
              
              
              <b>Becomes</b>
              
              &lt;primlaw:level leveltype="section"&gt;
              &lt;ref:anchor id="CTH_ACT_1970-121_SEC3" anchortype="global"/&gt;
              &lt;heading&gt;             
              &lt;desig&gt;
              &lt;emph typestyle="bf"&gt;3&lt;/emph&gt;
              &lt;/desig&gt;
              &lt;title align="left"&gt;&lt;emph typestyle="bf"&gt;Interpretation&lt;/emph&gt;
              &lt;/heading&gt;
              ....
              &lt;/primlaw:level&gt;
              
            </pre>
                                <p>heading element with inline attribute:</p>
                                <pre>
              &lt;leg:levelbody&gt;
              &lt;leg:level id="VIC_ACT_10096_PROV4SUB1"&gt;
              &lt;leg:level-vrnt leveltype="subsect" searchtype="LEGISLATION"&gt;
              &lt;leg:heading inline="true"&gt;
              &lt;desig&gt;&lt;designum&gt;&lt;refpt id="VIC_ACT_10096_PROV4SUB1" type="ext"/&gt;(1)&lt;/designum&gt;&lt;/desig&gt;
              &lt;/leg:heading&gt;
              ...
              &lt;/leg:level-vrnt&gt;
              &lt;/leg:level&gt;
              &lt;/leg:levelbody&gt;              
              
              
              <b>Becomes</b>
              
              &lt;primlaw:level leveltype="subsection"&gt;
              &lt;ref:anchor id="VIC_ACT_10096_PROV4SUB1" anchortype="global"/&gt;
              &lt;heading inline="true"&gt;
               &lt;desig&gt;(1)&lt;/desig&gt;
             &lt;/heading&gt;
            &lt;/primlaw:level&gt;                       
               
                </pre>
                            </li>
                        </ul>
                        <ul>
                            <li> If the input document has scenario leg:heading/leg:histnote then
                                move the <targetxml>note</targetxml> after
                                    <targetxml>heading</targetxml> within
                                    <targetxml>primlaw:level</targetxml>
                                <pre>
                  &lt;leg:level&gt;
                      &lt;leg:heading&gt;
                         &lt;title searchtype="PART-TITLE"&gt;PROPERTY, SPOUSAL MAINTENANCE AND MAINTENANCE AGREEMENTS*&lt;/title&gt;
                         &lt;leg:histnote&gt;
                         &lt;p&gt;
                         &lt;text&gt;[Heading  subst Act 181 of 1987  s 36]&lt;/text&gt;
                         &lt;/p&gt;
                         &lt;/leg:histnote&gt;
                        &lt;/leg:heading&gt;
                    ....
                    &lt;/leg:level&gt;
            
             <b>Becomes</b>
                  
               &lt;primlaw:level&gt;
               &lt;heading&gt;
          &lt;title&gt; PROPERTY, SPOUSAL MAINTENANCE AND MAINTENANCE AGREEMENTS*&lt;/title&gt;
          &lt;/heading&gt;
          &lt;note notetype=”historical”&gt;
          &lt;bodytext&gt;
          &lt;p&gt;
          &lt;text&gt;
          [Heading  subst Act 181 of 1987  s 36]
          &lt;/text&gt;
          &lt;/p&gt;
          &lt;/bodytext&gt;
          &lt;/note&gt;
          ...
          &lt;/primlaw:level&gt;
           
                </pre>
                            </li>
                        </ul>
                
                    </li>
                  
                    <li><sourcexml>leg:levelbody</sourcexml> and <sourcexml>leg:bodytext</sourcexml>
                        comes in following scenarios: <note>Please note that when
                                <sourcexml>leg:bodytext</sourcexml> contains only
                                <sourcexml>footnotegrp</sourcexml> or
                                <sourcexml>leg:comntry</sourcexml> or an
                                <sourcexml>endnote</sourcexml>, the
                                <sourcexml>leg:bodytext</sourcexml> element is dropped and its
                            children are processed.</note>
                        <ul>
                            <li>If the elements <sourcexml>leg:levelbody</sourcexml> and
                                    <sourcexml>leg:bodytext</sourcexml> occurs simultaneously
                                becomes <targetxml>primlaw:bodytext</targetxml> and populated as: <pre>
                    
                    <!-- LawNow -->
                  &lt;leg:levelbody&gt;
                  &lt;leg:bodytext&gt;
                  &lt;p&gt;
                  &lt;text&gt;Part 1 comes into operation on the day on
                  which this Act receives the Royal Assent.&lt;/text&gt;
                  &lt;/p&gt;
                  ....
                  &lt;/leg:bodytext&gt;
                  &lt;/leg:levelbody&gt;                  
                  
                  
                  <b>Becomes</b>
                    
                  &lt;primlaw:bodytext&gt;
                  &lt;p&gt;
                  &lt;text&gt;Part 1 comes into operation on the day on
                  which this Act receives the Royal Assent.&lt;/text&gt;
                  &lt;/p&gt;
                  ....
                  &lt;/primlaw:bodytext&gt;
                 
                  </pre>
                            </li>
                            <li>If the element <sourcexml>leg:levelbody</sourcexml> has child
                                    <sourcexml>leg:level</sourcexml> then it becomes
                                    <targetxml>primlaw:level</targetxml> and populated as: <pre>  
                
                 &lt;leg:levelbody&gt;
                &lt;leg:level id="NSW_ACT_2009-102_SEC1"&gt;&lt;leg:level-vrnt leveltype="sect" searchtype="LEGISLATION" subdoc="true" toc-caption="1 Name
                of Act"&gt;
                &lt;leg:heading&gt;
                &lt;desig searchtype="SECT-NUM"&gt;&lt;designum&gt;&lt;refpt id="NSW_ACT_2009-102_SEC1" type="ext"/&gt;1&lt;/designum&gt;&lt;/desig&gt;
                &lt;title align="left" searchtype="SECT-TITLE"&gt;Name of Act&lt;/title&gt;           
                &lt;/leg:heading&gt;
                ...
                &lt;/leg:level&gt;
                &lt;/leg:levelbody&gt;
                
                <b>Becomes</b>
                  
                
                &lt;primlaw:level leveltype="section" includeintoc="true" alternatetoccaption="1 Name
                of Act"&gt;
                &lt;ref:anchor id="NSW_ACT_2009-102_SEC1" anchortype="global"/&gt;
                &lt;heading&gt;&lt;desig&gt;1&lt;/desig&gt;
                &lt;title align="left"&gt;Name of Act&lt;/title&gt;
                &lt;/heading&gt;
                ...
                &lt;/primlaw:level&gt;
               
                </pre>
                                <note>Refer <xref href="../../common_newest/Rosetta_refpt_firstChildOf_leg.bodytext-LxAdv-primlaw.level_ref.anchor.dita">refpt</xref> for handling of the same.</note>
                            </li>
                            <li>If the input documents are having scenarios
                                    <sourcexml>leg:bodytext/leg:heading/desig</sourcexml> and
                                    <sourcexml>leg:bodytext/leg:heading/title</sourcexml> then
                                    <sourcexml>leg:bodytext</sourcexml> becomes
                                    <targetxml>primlaw:bodytext</targetxml> and create a wrapper
                                    <targetxml>primlaw:level[@leveltype="unclassified"]</targetxml>
                                with child <sourcexml>desig</sourcexml> becomes
                                    <targetxml>desig</targetxml> and <sourcexml>title</sourcexml>
                                becomes <targetxml>title</targetxml>
                                <pre>
                     &lt;leg:bodytext searchtype="LEGISLATION"&gt;
                             &lt;leg:heading&gt;
                                 &lt;desig&gt;&lt;designum&gt;&lt;refpt id="SA_ACT_1994-52_SCH9SD3" type="ext"/&gt;C182&lt;/designum&gt;&lt;/desig&gt;
                                 &lt;title&gt;Worst Forms of Child Labour Convention, 1999&lt;/title&gt;
                             &lt;/leg:heading&gt;
                             .....
                         &lt;/leg:bodytext&gt;         
                      
                     
                 <b>Becomes</b>
                     
                 &lt;primlaw:bodytext&gt;
               &lt;primlaw:level leveltype="unclassfied"&gt;
                &lt;ref:anchor id="SA_ACT_1994-52_SCH9SD3" anchortype="global"/&gt;
                &lt;heading&gt;
                 &lt;desig&gt;C182&lt;/desig&gt;
                 &lt;title&gt;Worst Forms of Child Labour Convention, 1999&lt;/title&gt;                
                 &lt;/heading&gt;       
            &lt;/primlaw:level&gt;
            ....
        &lt;/primlaw:bodytext&gt;
        
            
                   </pre>
                            </li>
                            <li>If the input documents are having scenario
                                    <sourcexml>leg:bodytext/leg:heading/subtile</sourcexml> then it
                                will become <targetxml>primlaw:bodytext/h</targetxml>
                                <pre>
                     &lt;leg:bodytext&gt;
                    &lt;leg:heading&gt;&lt;subtitle&gt;(Extracts)&lt;/subtitle&gt;&lt;/leg:heading&gt;
                    &lt;/leg:bodytext&gt;      
                      
                     
                 <b>Becomes</b>
                     
                 &lt;primlaw:bodytext&gt;
                 &lt;h&gt;(Extracts)&lt;/h&gt;
                 &lt;/primlaw:bodytext&gt;
                     
                </pre>
                            </li>
                            <li> The first occurence of <sourcexml>leg:bodytext</sourcexml> becomes
                                    <targetxml>primlaw:bodytext</targetxml> and after if
                                    <sourcexml>leg:bodytext</sourcexml> has other
                                    <sourcexml>leg:bodytext</sourcexml> or
                                    <sourcexml>leg:level</sourcexml> as siblings then wrap each of
                                them <targetxml>primlaw:level</targetxml> with
                                    <targetxml>@leveltype="unclassified"</targetxml>
                                <pre>
                       <b>Source XML 1</b>
                       &lt;leg:level id="SA_ACT_1994-52_SCH9SD3"&gt;&lt;leg:level-vrnt subdoc="false" toc-caption="C182 Worst Forms of Child
                       Labour Convention, 1999"&gt;
                    &lt;leg:levelbody&gt;
                    &lt;leg:bodytext searchtype="LEGISLATION"&gt;
                     &lt;leg:heading&gt;&lt;desig&gt;&lt;designum&gt;&lt;refpt id="SA_ACT_1994-52_SCH9SD3" type="ext"/&gt;C182&lt;/designum&gt;&lt;/desig&gt;&lt;title&gt;Worst Forms of
                     Child Labour Convention, 1999&lt;/title&gt;&lt;/leg:heading&gt;
                    &lt;/leg:bodytext&gt;
                &lt;leg:bodytext searchtype="LEGISLATION"&gt;
                &lt;p&gt;&lt;text&gt;The General Conference of the International Labour Organization,&lt;/text&gt;
                &lt;l type="def"&gt;
                &lt;li&gt;&lt;lilabel&gt;&amp;#160;&lt;/lilabel&gt;
                &lt;p&gt;&lt;text&gt;Having been convened at Geneva by the Governing Body of the International Labour Office, and having met in its 87th
                Session on 1 June 1999, and&lt;/text&gt;&lt;/p&gt;
                &lt;/li&gt;
                ....
                &lt;/l&gt;
                &lt;/p&gt;
                &lt;/leg:bodytext&gt;
                &lt;leg:bodytext searchtype="LEGISLATION"&gt;
                &lt;p&gt;&lt;text&gt;&lt;emph typestyle="bf"&gt;TABLE OF PROVISIONS&lt;/emph&gt;&lt;/text&gt;
                &lt;/p&gt;
                &lt;table&gt;
                    &lt;tgroup cols="3"&gt;
                        &lt;colspec colwidth="10*" colname="c1"/&gt;
                        &lt;colspec colwidth="9*" colname="c2"/&gt;
                        &lt;colspec colwidth="11*" colname="c3"/&gt;
                        &lt;tbody&gt;
                            &lt;row&gt;&lt;entry colname="c1"&gt;Section&lt;/entry&gt;&lt;entry colname="c2"&gt;&lt;/entry&gt;&lt;entry colname="c3"&gt;Page&lt;/entry&gt;
                            &lt;/row&gt;
                            &lt;row&gt;&lt;entry colname="c1"&gt;1&lt;/entry&gt;&lt;entry colname="c2"&gt;Short title and construction&lt;/entry&gt;&lt;entry
                            colname="c3"&gt;4&lt;/entry&gt;
                            &lt;/row&gt;
                            ....
                        &lt;/tbody&gt;
                    &lt;/tgroup&gt;
                &lt;/table&gt;
                &lt;/leg:bodytext&gt;
                &lt;/leg:levelbody&gt;
                &lt;/leg:level-vrnt&gt;
                &lt;/leg:level&gt;                
                
                                </pre>
                                <note>Attribute @type in <sourcexml>l</sourcexml> will be suppressed
                                    from conversion.</note>
                                <b>Becomes</b>
                                <pre>
                   <b>Target XML 1</b>
                   
               &lt;primlaw:level leveltype="unclassified" includeintoc="false" alternatetoccaption="C182 Worst Forms of Child Labour Convention, 1999"&gt;
               &lt;primlaw:bodytext&gt;
               &lt;primlaw:level leveltype="unclassified"&gt;
               &lt;ref:anchor id="SA_ACT_1994-52_SCH9SD3" anchortype="global"/&gt;
               &lt;heading&gt;
                &lt;desig&gt;C182&lt;/desig&gt;
                &lt;title&gt;Worst Forms of Child Labour Convention, 1999&lt;/title&gt;                
                &lt;/heading&gt;
              &lt;/primlaw:level&gt;
              &lt;/primlaw:bodytext&gt;
               &lt;primlaw:level leveltype="unclassified"&gt;
               &lt;primlaw:bodytext&gt;
         &lt;p&gt;
        &lt;text&gt;The General Conference of the International Labour Organization,&lt;/text&gt;
        &lt;list&gt;
            &lt;listitem&gt;
           &lt;label&gt;&amp;#x00A0;&lt;/label&gt;
           &lt;bodytext&gt;
            &lt;p&gt;&lt;text&gt;Having been convened at Geneva by the Governing Body of the International Labour Office, and having met in its 87th Session on 1 June 1999, and&lt;/text&gt;&lt;/p&gt;
           &lt;/bodytext&gt;
          &lt;/listitem&gt;
       ....
      &lt;/list&gt;
      &lt;/p&gt;
      &lt;/primlaw:bodytext&gt;
      &lt;/primlaw:level&gt;
      &lt;primlaw:level leveltype="unclassified"&gt;
      &lt;primlaw:bodytext&gt;
      &lt;p&gt;
      &lt;text&gt;&lt;emph typestyle="bf"&gt;TABLE OF PROVISIONS&lt;/emph&gt;&lt;/text&gt;
    &lt;/p&gt;
    &lt;table&gt;
       &lt;tgroup cols="3"&gt;
       &lt;colspec colwidth="10*" colname="c1"/&gt;
       &lt;colspec colwidth="9*" colname="c2"/&gt;
       &lt;colspec colwidth="11*" colname="c3"/&gt;
       &lt;tbody&gt;
       &lt;row&gt;&lt;entry colname="c1"&gt;Section&lt;/entry&gt;&lt;entry colname="c2"&gt;&lt;/entry&gt;&lt;entry colname="c3"&gt;Page&lt;/entry&gt;
       &lt;/row&gt;
      &lt;row&gt;&lt;entry colname="c1"&gt;1&lt;/entry&gt;&lt;entry colname="c2"&gt;Short title and construction&lt;/entry&gt;&lt;entry
      colname="c3"&gt;4&lt;/entry&gt;
     &lt;/row&gt;
      ....
     &lt;/tbody&gt;
     &lt;/tgroup&gt;
     &lt;/table&gt;
 &lt;/primlaw:bodytext&gt;                
   &lt;/primlaw:level&gt;
   &lt;/primlaw:level&gt;
        
                                </pre>
                                <pre>
                        <b>Source XML 2</b>
                    
                   &lt;leg:level id="WFW.WFW.FWAC09.S48.1"&gt;&lt;leg:level-vrnt leveltype="subsect" searchtype="LEGISLATION SUBSECT"&gt;
                &lt;leg:levelinfo&gt;
                &lt;leg:levelstatus isrepealed="false" ln.user-displayed="false"/&gt;&lt;/leg:levelinfo&gt;
                     &lt;leg:heading inline="true"&gt;
                     &lt;desig&gt;&lt;designum&gt;&lt;refpt id="WFW.WFW.FWAC09.S48.1" type="ext"/&gt;(1)&lt;/designum&gt;&lt;/desig&gt;
                     &lt;/leg:heading&gt;
                     &lt;leg:levelbody&gt;
                     &lt;leg:bodytext&gt;
                    &lt;p&gt;
                    &lt;text&gt;A modern award &lt;defterm&gt;&lt;emph typestyle="bf"&gt;covers&lt;/emph&gt;&lt;/defterm&gt; an employee, employer, organisation or outworker
                    entity if the award is expressed to cover the employee, employer, organisation or outworker entity.&lt;/text&gt;
                    &lt;/p&gt;
                    &lt;p&gt;
                    &lt;glp:note&gt;
                    &lt;heading&gt;&lt;title&gt;Note:&lt;/title&gt;&lt;/heading&gt;
                        &lt;p&gt;
                         &lt;text&gt;In a modern award, coverage of an outworker entity must be expressed to relate only to outworker terms: see 
                          &lt;ci:cite searchtype="LEG-REF"&gt;
                          &lt;ci:content&gt;
                          &lt;remotelink dpsi="0HJ5" docidref="ABCD_1234" refpt="WFW.WFW.FWAC09.S143.4" remotekey1="REFPTID"
                          service="DOC-ID"&gt;subsection 143(4)&lt;/remotelink&gt;&lt;/ci:content&gt;
                          &lt;/ci:cite&gt;.&lt;/text&gt;
                          &lt;/p&gt;
                          &lt;/glp:note&gt;
                          &lt;/p&gt;
                &lt;/leg:bodytext&gt;
            &lt;/leg:levelbody&gt;
        &lt;/leg:level-vrnt&gt;
        &lt;/leg:level&gt;
        &lt;leg:bodytext&gt;
           &lt;blockquote&gt;           
           &lt;h align="left"&gt;&lt;emph typestyle="bf"&gt;Effect of other provisions of this Act, FWA orders or court orders on coverage&lt;/emph&gt;&lt;/h&gt;
           &lt;/blockquote&gt;
        &lt;/leg:bodytext&gt;
        ...
        &lt;/leg:level&gt;
        
                    </pre>
                                <b>Becomes</b>
                                <pre>
                       <b>Target XML 2</b>
                 &lt;primlaw:level leveltype="subsection"&gt;
                 &lt;ref:anchor id="WFW.WFW.FWAC09.S48.1" anchortype="global"/&gt;
                &lt;heading inline="true"&gt;&lt;desig&gt;(1)&lt;/desig&gt;&lt;/heading&gt;                
                    &lt;primlaw:bodytext&gt;
                        &lt;p&gt;
                           &lt;text&gt;A modern award &lt;defterm&gt;&lt;emph typestyle="bf"&gt;covers&lt;/emph&gt;&lt;/defterm&gt; an employee, employer, organisation or
                           outworker entity if the award is expressed to cover the employee, employer, organisation or outworker entity.&lt;/text&gt;
                        &lt;/p&gt;
                        &lt;p&gt;
                        &lt;note&gt;
                            &lt;heading&gt;&lt;title&gt;Note:&lt;/title&gt;&lt;/heading&gt;
                            &lt;bodytext&gt;
                            &lt;p&gt;
                                &lt;text&gt;In a modern award, coverage of an outworker entity must be expressed to relate only to outworker terms: see 
                                    &lt;lnci:cite type="legislation" citeref="WFW.WFW.FWAC09.S143.4"&gt;
                                    &lt;lnci:content&gt; &lt;ref:crossreference crossreferencetype="seeAlso"&gt;
                                      &lt;ref:content&gt;subsection 143(4)&lt;/ref:content&gt;
                                      &lt;ref:locator anchoridref="WFW.WFW.FWAC09.S143.4"&gt;
                                       &lt;ref:locator-key&gt;
                                        &lt;ref:key-name name="DOC-ID"/&gt;  
                                        &lt;ref:key-value value="0HJ5-ABCD_1234"/&gt;
                                       &lt;/ref:locator-key&gt;
                                      &lt;/ref:locator&gt;
                                     &lt;/ref:crossreference&gt;&lt;/lnci:content&gt;
                                    &lt;/lnci:cite&gt;.
                                    &lt;/text&gt;
                                    &lt;/p&gt;
                                    &lt;/bodytext&gt;
                                    &lt;/note&gt;
                                    &lt;/p&gt;
                    &lt;/primlaw:bodytext&gt;              
                    &lt;/primlaw:level&gt;
            &lt;primlaw:level leveltype="unclassified"&gt;
            &lt;primlaw:bodytext&gt;
                &lt;blockquote&gt;
                    &lt;h align="left"&gt;&lt;emph typestyle="bf"&gt;Effect of other provisions of this Act, FWA orders or court orders on coverage&lt;/emph&gt;&lt;/h&gt;
                &lt;/blockquote&gt;
            &lt;/primlaw:bodytext&gt;
            &lt;/primlaw:level&gt;
            ...
            &lt;/primlaw:level&gt;       
              </pre>
                            </li>
                        </ul>
                        <ul>
                            <li><sourcexml>/LEGDOC/leg:body/leg:info/leg:histcite</sourcexml>
                                becomes
                                    <targetxml>/legis:legis/legis:body/primlaw:level/primlawhist:primlawhist/primlawhist:histgrp[@grptype="histcite"]</targetxml>
                                with attributes <sourcexml>leg:histcite[@id]</sourcexml> becomes
                                    <targetxml>primlawhist:histgrp[@xml:id]</targetxml> and
                                    <targetxml>primlaw:level[@leveltype="unclassified"]</targetxml>
                                <note>Kindly note that the conversion should not create an extra
                                    wrapper
                                        <targetxml>primlaw:level[@leveltype="unclassified"]</targetxml>
                                    as <sourcexml>leg:info</sourcexml> is getting converted to
                                        <targetxml>primlaw:level</targetxml>.</note>
                                <note>Add the attribute value
                                        <targetxml>@grptype="histcite"</targetxml> to
                                        <targetxml>primlawhist:histgrp</targetxml></note>
                                <ul>
                                    <li><sourcexml>leg:histcite/heading/title</sourcexml> becomes
                                            <targetxml>primlawhist:histgrp[@grptype="histcite"]/heading/title</targetxml>
                                    </li>
                                </ul>
                                <ul>
                                    <li>If the source document has scenario leg:histcite/table it
                                        will be converted using the following rule:
                                            <sourcexml>/LEGDOC/leg:body/leg:info/leg:histcite/table</sourcexml>
                                        becomes
                                            <targetxml>/legis:legis/legis:body/primlaw:level[@leveltype="unclassified"]/primlawhist:primlawhist/primlawhist:histgrp[@grptype="histcite"]/
                                            primlawhist:histitem/bodytext/table</targetxml>
                                        <note>Add the attribute value
                                                <targetxml>@grptype="histcite"</targetxml> to
                                                <targetxml>primlawhist:histgrp</targetxml></note>
                                        <pre>
                &lt;leg:histcite id="NSW_ACT_2009-1_LAWNOWHISTORICALVERSIONS"&gt;
                &lt;leg:heading&gt;
                &lt;title&gt;&lt;refpt id="NSW_ACT_2009-1_LAWNOWHISTORICALVERSIONS" type="ext"/&gt;Historical Versions&lt;/title&gt;
                &lt;/leg:heading&gt;
              &lt;table frame="none"&gt;
              &lt;tgroup cols="2" colsep="0" rowsep="0"&gt;
              &lt;colspec colwidth="12*" colname="c1" colnum="1"/&gt;
              &lt;colspec colwidth="12*" colname="c2" colnum="2"/&gt;
              &lt;tbody&gt;
              &lt;row&gt;&lt;entry namest="c1" nameend="c2"&gt;2009&lt;/entry&gt;
              &lt;/row&gt;
              &lt;row&gt;&lt;entry colname="c1"&gt;&lt;/entry&gt;&lt;entry colname="c2"&gt;&lt;remotelink service="DOC-ID" remotekey1="REFPTID" dpsi="0060"
              docidref="ABCD_1289" refpt="NSW_ACT_2009-1_20090314"&gt;14/3/2009 to 16/7/2009&lt;/remotelink&gt;&lt;/entry&gt;
              &lt;/row&gt;
              &lt;row&gt;&lt;entry colname="c1"&gt;&lt;/entry&gt;&lt;entry colname="c2"&gt;&lt;remotelink service="DOC-ID" remotekey1="REFPTID" dpsi="0060"
              docidref="ABCD_1289" refpt="NSW_ACT_2009-1_20090313"&gt;13/3/2009 to 13/3/2009&lt;/remotelink&gt;&lt;/entry&gt;
              &lt;/row&gt;
              &lt;/tbody&gt;
              &lt;/tgroup&gt;
              &lt;/table&gt;
              &lt;/leg:histcite&gt;
                
                
             <b>Becomes</b>
                
                &lt;primlaw:level leveltype="unclassified"&gt;
             &lt;primlawhist:primlawhist&gt;
             &lt;primlawhist:histgrp grptype="histcite"&gt;
             &lt;ref:anchor id="NSW_ACT_2009-1_LAWNOWHISTORICALVERSIONS" anchortype="global"/&gt;
             &lt;heading&gt;&lt;title&gt;Historical Versions&lt;/title&gt;&lt;/heading&gt;
             &lt;primlawhist:histitem&gt;
             &lt;bodytext&gt;
             &lt;table frame="none"&gt;
              &lt;tgroup cols="2" colsep="0" rowsep="0"&gt;
              &lt;colspec colwidth="12*" colname="c1" colnum="1"/&gt;
              &lt;colspec colwidth="12*" colname="c2" colnum="2"/&gt;
              &lt;tbody&gt;
              &lt;row&gt;&lt;entry namest="c1" nameend="c2"&gt;2009&lt;/entry&gt;
              &lt;/row&gt;
              &lt;row&gt;&lt;entry colname="c1"&gt;&lt;/entry&gt;&lt;entry colname="c2"&gt;             
                                  &lt;ref:crossreference crossreferencetype="seeAlso"&gt;
                                        &lt;ref:content&gt;14/3/2009 to 16/7/2009&lt;/ref:content&gt;
                                        &lt;ref:locator anchoridref="NSW_ACT_2009-1_20090314"&gt;                                            
                                            &lt;ref:locator-key&gt;
                                                &lt;ref:key-name name="DOC-ID"/&gt;
                                                &lt;ref:key-value value="0060-ABCD_1289"/&gt;
                                           &lt;/ref:locator-key&gt;
                                        &lt;/ref:locator&gt;
                                    &lt;/ref:crossreference&gt;                                
              &lt;/entry&gt;
              &lt;/row&gt;
              &lt;row&gt;&lt;entry colname="c1"&gt;&lt;/entry&gt;&lt;entry colname="c2"&gt;             
                                    &lt;ref:crossreference crossreferencetype="seeAlso"&gt;
                                        &lt;ref:content&gt;13/3/2009 to 13/3/2009&lt;/ref:content&gt;
                                        &lt;ref:locator anchoridref="NSW_ACT_2009-1_20090313"&gt;                                            
                                            &lt;ref:locator-key&gt;
                                                &lt;ref:key-name name="DOC-ID"/&gt;
                                                &lt;ref:key-value value="0060-ABCD_1289"/&gt;
                                                &lt;/ref:locator-key&gt;                             
                                        &lt;/ref:locator&gt;
                                    &lt;/ref:crossreference&gt;             
              &lt;/entry&gt;
              &lt;/row&gt;
              &lt;/tbody&gt;
              &lt;/tgroup&gt;
              &lt;/table&gt;
             &lt;/bodytext&gt;
            &lt;/primlawhist:histitem&gt;
            &lt;/primlawhist:histgrp&gt;
           &lt;/primlawhist:primlawhist  
        &lt;/primlaw:level&gt;  
             
              </pre>
                                    </li>
                                </ul>
                                <note>Refer <xref href="../../common_newest/Rosetta_refpt-Chof-leg.histcite_heading_title-LxAdv-primlawhist.histgrp_ref.anchor.dita">refpt</xref> for handling of the same.</note>
                                <note>The value for attribute <targetxml>primlaw:level[@leveltype]
                                        will be set as @leveltype='unclassified'.</targetxml></note>
                            </li>
                            <li><sourcexml>leg:preamble</sourcexml> becomes
                                    <targetxml>primlaw:level[@leveltype="preamble"]</targetxml> and
                                populated as: <pre>
              &lt;leg:body&gt;
              &lt;leg:info&gt;
              &lt;leg:juris&gt;VIC&lt;/leg:juris&gt;
              &lt;leg:officialnum searchtype="LEGISLATION"&gt;Act No. 25, 1998&lt;/leg:officialnum&gt;
              &lt;leg:officialname searchtype="LEGISLATION"&gt;ELECTRICITY SAFETY ACT 1998&lt;/leg:officialname&gt;
              &lt;/leg:info&gt;
              &lt;leg:preamble id="VIC_ACT_1998-25_LEG_PREAMBLE"&gt;
              &lt;leg:level id="VIC_ACT_1998-25_ENACT"&gt;
              &lt;leg:level-vrnt&gt;
              &lt;leg:heading&gt;&lt;title&gt;Enactment&lt;/title&gt;
              &lt;/leg:heading&gt;
              &lt;leg:levelbody&gt;
              &lt;leg:bodytext&gt;
              &lt;refpt id="VIC_ACT_1998-25_ENACT" type="ext"/&gt;
              &lt;p&gt;
              &lt;text&gt;
              &lt;emph typestyle="bf"&gt;The Parliament of Victoria enacts as
              follows:
              &lt;/emph&gt;
              &lt;/text&gt;
              &lt;/p&gt;
              &lt;/leg:bodytext&gt;
              &lt;/leg:levelbody&gt;
              &lt;/leg:level-vrnt&gt;
              &lt;/leg:level&gt;
              &lt;/leg:preamble&gt;
              &lt;/leg:body&gt;
              
              <b>Becomes</b>
              
              
              &lt;legis:body&gt;
              &lt;legisinfo:legisinfo&gt;
              .....
              &lt;/legisinfo:legisinfo&gt;
              &lt;primlaw:level xml:id="VIC_ACT_1998-25_LEG_PREAMBLE" leveltype="preamble"&gt;
              &lt;primlaw:level leveltype="unclassified"&gt;
              &lt;ref:anchor id="VIC_ACT_1998-25_ENACT" anchortype="global"/&gt;
              &lt;heading&gt;
              &lt;title&gt;Enactment&lt;/title&gt;
              &lt;/heading&gt;
              &lt;primlaw:bodytext&gt;
              &lt;p&gt;&lt;text&gt;&lt;emph typestyle="bf"&gt;The Parliament of Victoria enacts as
              follows:&lt;/emph&gt;&lt;/text&gt;&lt;/p&gt;&lt;primlaw:bodytext&gt;&lt;/primlaw:level&gt;&lt;/primlaw:level&gt;&lt;/legis:body&gt;
              
            </pre>
                                <pre>
              <b>Handling of leg:preamble with multiple leg:level:</b>
              
              &lt;leg:preamble id="SA_ACT_1862-13_LEG_PREAMBLE"&gt;
              &lt;leg:level id="SA_ACT_1862-13_PREAMBLE_BODY"&gt;
             &lt;leg:level-vrnt&gt;     
            &lt;leg:heading&gt;                
                &lt;title align="left"&gt; &lt;refpt id="SA_ACT_1862-13_PREAMBLE" type="ext"/&gt;Preamble &lt;/title&gt;                
            &lt;/leg:heading&gt;            
            &lt;leg:levelbody&gt;                
                &lt;leg:bodytext searchtype="LEGISLATION"&gt;                    
                    &lt;p&gt; &lt;text&gt;WHEREAS it . . . in public bodies:&lt;/text&gt;&lt;/p&gt;                    
                &lt;/leg:bodytext&gt;                
            &lt;/leg:levelbody&gt;            
        &lt;/leg:level-vrnt&gt;        
    &lt;/leg:level&gt;
    
    &lt;leg:level id="SA_ACT_1862-13_ENACT"&gt;        
        &lt;leg:level-vrnt&gt;            
            &lt;leg:heading&gt;                
                &lt;title&gt;Enactment&lt;/title&gt;                
            &lt;/leg:heading&gt;            
            &lt;leg:levelbody&gt;                
                &lt;leg:bodytext searchtype="LEGISLATION"&gt;                    
                    &lt;refpt id="SA_ACT_1862-13_ENACT" type="ext"/&gt;                    
                    &lt;p&gt; &lt;text&gt; &lt;emph typestyle="bf"&gt;The Parliament . . . follows:&lt;/emph&gt;&lt;/text&gt;&lt;/p&gt;                    
                &lt;/leg:bodytext&gt;                
            &lt;/leg:levelbody&gt;            
        &lt;/leg:level-vrnt&gt;        
    &lt;/leg:level&gt;    
&lt;/leg:preamble&gt;
              
            <b>Becomes</b>
              
              &lt;primlaw:level leveltype="preamble"&gt;
              &lt;ref:anchor id="SA_ACT_1862-13_LEG_PREAMBLE" anchortype="global"/&gt;
                &lt;primlaw:level xml:id="SA_ACT_1862-13_PREAMBLE_BODY" leveltype="unclassified"&gt;
           &lt;heading&gt;                
                &lt;title align="left"&gt;Preamble&lt;/title&gt;                
            &lt;/heading&gt;                 
                &lt;primlaw:bodytext&gt;                    
                 &lt;p&gt;&lt;text&gt;WHEREAS it . . . in public bodies:&lt;/text&gt;&lt;/p&gt;                    
                &lt;/primlaw:bodytext&gt;
    &lt;/primlaw:level&gt;
    
    &lt;primlaw:level leveltype="unclassified"&gt; 
    &lt;ref:anchor id="SA_ACT_1862-13_ENACT" anchortype="global"/&gt;
               &lt;heading&gt;                
                &lt;title&gt;Enactment&lt;/title&gt;                
            &lt;/heading&gt;          
               &lt;primlaw:bodytext&gt;  
                  &lt;p&gt;&lt;text&gt; &lt;emph typestyle="bf"&gt;The Parliament . . . follows:&lt;/emph&gt;&lt;/text&gt;&lt;/p&gt;                    
                &lt;/primlaw:bodytext&gt;                
       &lt;/primlaw:level&gt;    
&lt;/primlaw:level&gt;
          </pre>
                                <note>Here value "preamble" is fixed for leveltype attribute.</note>
                            </li>
                            <li>
                                <sourcexml>leg:histnote</sourcexml> becomes
                                    <targetxml>note[@notetype="historical"]</targetxml>
                                <pre>
            &lt;leg:histnote&gt;
            &lt;p&gt;
            &lt;text&gt;[subs (2)  insrt Act 14 of 2007  s&amp;#160;8(3), effective 6 November 2006]&lt;/text&gt;
            &lt;/p&gt;
            &lt;/leg:histnote&gt;
        
          <b>Becomes</b>
            
         &lt;note notetype="historical"&gt;
         &lt;bodytext&gt;
         &lt;p&gt;
         &lt;text&gt;[subs (2)  insrt Act 14 of 2007  s&amp;#160;8(3), effective 6 November
         2006]&lt;/text&gt;
         &lt;/p&gt;
         &lt;/bodytext&gt;
         &lt;/text&gt;
         &lt;/p&gt;
         &lt;/note&gt;   
          </pre>
                            </li>
                            <li><sourcexml>/LEGDOC/leg:body/leg:endmatter</sourcexml> becomes
                                    <targetxml>legis:legis/legis:body/primlaw:level</targetxml> with
                                    <targetxml>@leveltype="endnote"</targetxml> with child elements
                                being handled as: <ul>
                                    <li>
                                        <sourcexml>leg:level/leg:level-vrnt</sourcexml> becomes
                                            <targetxml>primlaw:level</targetxml> with attribute
                                            <targetxml>@leveltype</targetxml>
                                    </li>
                                </ul>
                                <pre>
            <!-- LawNow -->
            &lt;leg:endmatter&gt;
                  &lt;leg:level id="NSW_ACT_2009-1_NOTES"&gt;
                  &lt;leg:level-vrnt leveltype="notes" subdoc="true" toc-caption="Historical notes"&gt;
                  &lt;leg:heading&gt;
                  &lt;title align="left"&gt;&lt;refpt id="NSW_ACT_2009-1_NOTES" type="ext"/&gt;Historical notes&lt;/title&gt;                 
                  &lt;/leg:heading&gt;
                  &lt;leg:levelbody&gt;
                  &lt;leg:bodytext&gt;
                  &lt;p&gt;&lt;text&gt;The following abbreviations are used in the Historical notes:&lt;/text&gt;
                  &lt;table&gt;
                  &lt;tgroup cols="6"&gt;
                  &lt;colspec colwidth="12*" colname="c1"/&gt;
                  &lt;colspec colwidth="12*" colname="c2"/&gt;
                  &lt;colspec colwidth="12*" colname="c3"/&gt;
                  &lt;colspec colwidth="12*" colname="c4"/&gt;
                  &lt;colspec colwidth="12*" colname="c5"/&gt;
                  &lt;colspec colwidth="12*" colname="c6"/&gt;
                  &lt;tbody&gt;
                  &lt;row&gt;&lt;entry colname="c1"&gt;Am&lt;/entry&gt;&lt;entry colname="c2"&gt;amended&lt;/entry&gt;&lt;entry colname="c3"&gt;LW&lt;/entry&gt;&lt;entry
                  colname="c4"&gt;legislation website&lt;/entry&gt;&lt;entry colname="c5"&gt;Sch&lt;/entry&gt;&lt;entry colname="c6"&gt;Schedule&lt;/entry&gt;
                  &lt;/row&gt;
                  &lt;row&gt;&lt;entry colname="c1"&gt;Cl&lt;/entry&gt;&lt;entry colname="c2"&gt;clause&lt;/entry&gt;&lt;entry colname="c3"&gt;No&lt;/entry&gt;&lt;entry
                  colname="c4"&gt;number&lt;/entry&gt;&lt;entry colname="c5"&gt;Schs&lt;/entry&gt;&lt;entry colname="c6"&gt;Schedules&lt;/entry&gt;
                  &lt;/row&gt;
                  &lt;row&gt;&lt;entry colname="c1"&gt;Cll&lt;/entry&gt;&lt;entry colname="c2"&gt;clauses&lt;/entry&gt;&lt;entry colname="c3"&gt;p&lt;/entry&gt;&lt;entry
                  colname="c4"&gt;page&lt;/entry&gt;&lt;entry colname="c5"&gt;Sec&lt;/entry&gt;&lt;entry colname="c6"&gt;section&lt;/entry&gt;
                  &lt;/row&gt;
                  &lt;row&gt;&lt;entry colname="c1"&gt;Div&lt;/entry&gt;&lt;entry colname="c2"&gt;Division&lt;/entry&gt;&lt;entry colname="c3"&gt;pp&lt;/entry&gt;&lt;entry
                  colname="c4"&gt;pages&lt;/entry&gt;&lt;entry colname="c5"&gt;Secs&lt;/entry&gt;&lt;entry colname="c6"&gt;sections&lt;/entry&gt;
                  &lt;/row&gt;
                  &lt;row&gt;&lt;entry colname="c1"&gt;Divs&lt;/entry&gt;&lt;entry colname="c2"&gt;Divisions&lt;/entry&gt;&lt;entry colname="c3"&gt;Reg&lt;/entry&gt;&lt;entry
                  colname="c4"&gt;Regulation&lt;/entry&gt;&lt;entry colname="c5"&gt;Subdiv&lt;/entry&gt;&lt;entry colname="c6"&gt;Subdivision&lt;/entry&gt;
                  &lt;/row&gt;
                  &lt;row&gt;&lt;entry colname="c1"&gt;GG&lt;/entry&gt;&lt;entry colname="c2"&gt;Government Gazette&lt;/entry&gt;&lt;entry colname="c3"&gt;Regs&lt;/entry&gt;&lt;entry
                  colname="c4"&gt;Regulations&lt;/entry&gt;&lt;entry colname="c5"&gt;Subdivs&lt;/entry&gt;&lt;entry colname="c6"&gt;Subdivisions&lt;/entry&gt;
                  &lt;/row&gt;
                  &lt;row&gt;&lt;entry colname="c1"&gt;Ins&lt;/entry&gt;&lt;entry colname="c2"&gt;inserted&lt;/entry&gt;&lt;entry colname="c3"&gt;Rep&lt;/entry&gt;&lt;entry
                  colname="c4"&gt;repealed&lt;/entry&gt;&lt;entry colname="c5"&gt;Subst&lt;/entry&gt;&lt;entry colname="c6"&gt;substituted&lt;/entry&gt;
                  &lt;/row&gt;
                  &lt;/tbody&gt;
                  &lt;/tgroup&gt;
                  &lt;/table&gt;
                  &lt;/p&gt;
                  &lt;/leg:bodytext&gt;
                  &lt;/leg:levelbody&gt;
                  
            <b>Becomes</b>
            
            &lt;primlaw:level leveltype="endnote"&gt;
            &lt;primlaw:level leveltype="endnote" includeintoc="true" alternatetoccaption="Historical notes"&gt;
            &lt;ref:anchor id="SW_ACT_2009-1_NOTES" anchortype="global"/&gt;
             &lt;heading&gt;
             &lt;title align="left"&gt;Historical notes&lt;/title&gt;
             &lt;/heading&gt; 
            &lt;primlaw:bodytext&gt;
             &lt;p&gt;
             &lt;text&gt;The following abbreviations are used in the Historical notes:&lt;/text&gt;
                  &lt;table&gt;
                  &lt;tgroup cols="6"&gt;
                  &lt;colspec colwidth="12*" colname="c1"/&gt;
                  &lt;colspec colwidth="12*" colname="c2"/&gt;
                  &lt;colspec colwidth="12*" colname="c3"/&gt;
                  &lt;colspec colwidth="12*" colname="c4"/&gt;
                  &lt;colspec colwidth="12*" colname="c5"/&gt;
                  &lt;colspec colwidth="12*" colname="c6"/&gt;
                  &lt;tbody&gt;
                  &lt;row&gt;&lt;entry colname="c1"&gt;Am&lt;/entry&gt;&lt;entry colname="c2"&gt;amended&lt;/entry&gt;&lt;entry colname="c3"&gt;LW&lt;/entry&gt;&lt;entry
                  colname="c4"&gt;legislation website&lt;/entry&gt;&lt;entry colname="c5"&gt;Sch&lt;/entry&gt;&lt;entry colname="c6"&gt;Schedule&lt;/entry&gt;
                  &lt;/row&gt;
                  &lt;row&gt;&lt;entry colname="c1"&gt;Cl&lt;/entry&gt;&lt;entry colname="c2"&gt;clause&lt;/entry&gt;&lt;entry colname="c3"&gt;No&lt;/entry&gt;&lt;entry
                  colname="c4"&gt;number&lt;/entry&gt;&lt;entry colname="c5"&gt;Schs&lt;/entry&gt;&lt;entry colname="c6"&gt;Schedules&lt;/entry&gt;
                  &lt;/row&gt;
                  &lt;row&gt;&lt;entry colname="c1"&gt;Cll&lt;/entry&gt;&lt;entry colname="c2"&gt;clauses&lt;/entry&gt;&lt;entry colname="c3"&gt;p&lt;/entry&gt;&lt;entry
                  colname="c4"&gt;page&lt;/entry&gt;&lt;entry colname="c5"&gt;Sec&lt;/entry&gt;&lt;entry colname="c6"&gt;section&lt;/entry&gt;
                  &lt;/row&gt;
                  &lt;row&gt;&lt;entry colname="c1"&gt;Div&lt;/entry&gt;&lt;entry colname="c2"&gt;Division&lt;/entry&gt;&lt;entry colname="c3"&gt;pp&lt;/entry&gt;&lt;entry
                  colname="c4"&gt;pages&lt;/entry&gt;&lt;entry colname="c5"&gt;Secs&lt;/entry&gt;&lt;entry colname="c6"&gt;sections&lt;/entry&gt;
                  &lt;/row&gt;
                  &lt;row&gt;&lt;entry colname="c1"&gt;Divs&lt;/entry&gt;&lt;entry colname="c2"&gt;Divisions&lt;/entry&gt;&lt;entry colname="c3"&gt;Reg&lt;/entry&gt;&lt;entry
                  colname="c4"&gt;Regulation&lt;/entry&gt;&lt;entry colname="c5"&gt;Subdiv&lt;/entry&gt;&lt;entry colname="c6"&gt;Subdivision&lt;/entry&gt;
                  &lt;/row&gt;
                  &lt;row&gt;&lt;entry colname="c1"&gt;GG&lt;/entry&gt;&lt;entry colname="c2"&gt;Government Gazette&lt;/entry&gt;&lt;entry colname="c3"&gt;Regs&lt;/entry&gt;&lt;entry
                  colname="c4"&gt;Regulations&lt;/entry&gt;&lt;entry colname="c5"&gt;Subdivs&lt;/entry&gt;&lt;entry colname="c6"&gt;Subdivisions&lt;/entry&gt;
                  &lt;/row&gt;
                  &lt;row&gt;&lt;entry colname="c1"&gt;Ins&lt;/entry&gt;&lt;entry colname="c2"&gt;inserted&lt;/entry&gt;&lt;entry colname="c3"&gt;Rep&lt;/entry&gt;&lt;entry
                  colname="c4"&gt;repealed&lt;/entry&gt;&lt;entry colname="c5"&gt;Subst&lt;/entry&gt;&lt;entry colname="c6"&gt;substituted&lt;/entry&gt;
                  &lt;/row&gt;
                  &lt;/tbody&gt;
                  &lt;/tgroup&gt;
                  &lt;/table&gt;
                  &lt;/p&gt;
                  &lt;/primlaw:bodytext&gt;
                  </pre>
                                <note>Refer <xref href="../../common_newest/Rosetta_refpt-Chof-leg.endmatter_index_heading_title-LxAdv-primlaw.level_ref.anchor.dita">refpt</xref> for handling of the same.</note>
                            </li>
                            <li><sourcexml>leg:companion</sourcexml> becomes
                                    <targetxml>primlaw:level</targetxml> with
                                    <targetxml>@leveltype="companion"</targetxml>
                                <pre>
               &lt;leg:companion searchtype="LEGISLATION"&gt;
                &lt;leg:level id="QLD_ACT_1895-15_SD1"&gt;
                &lt;leg:level-vrnt leveltype="subdoc" subdoc="true" toc-caption="Anglican Church of Australia Act 1895 Amendment Act
                1901"&gt;
                &lt;leg:heading&gt;
                &lt;title align="center"&gt;&lt;emph typestyle="bf"&gt;Anglican Church of Australia Act 1895 Amendment Act 1901&lt;/emph&gt;&lt;/title&gt;
                &lt;/leg:heading&gt;
                &lt;leg:levelbody&gt;
                &lt;leg:bodytext searchtype="LEGISLATION"&gt;&lt;refpt id="QLD_ACT_1895-15_COMP1" type="ext"/&gt;&lt;refpt id="QLD_ACT_1895-15_SD1" type="ext"/&gt;
                &lt;p&gt;&lt;text&gt;Queensland&lt;/text&gt;&lt;/p&gt;&lt;p&gt;&lt;text&gt;[shield]&lt;/text&gt;&lt;/p&gt;
                &lt;h&gt;&lt;emph typestyle="bf"&gt;Anglican Church of Australia Act 1895 Amendment Act 1901&lt;/emph&gt;&lt;/h&gt;
                &lt;/leg:bodytext&gt;
                
                
                <b>Becomes</b>
               
               &lt;primlaw:level leveltype="companion"&gt;
            &lt;primlaw:level leveltype="unclassified" includeintoc="true" alternatetoccaption="Anglican Church of
            Australia Act 1895 Amendment Act 1901"&gt;
            &lt;ref:anchor id="QLD_ACT_1895-15_COMP1" anchortype="global"/&gt;
            &lt;ref:anchor id="QLD_ACT_1895-15_SD1" anchortype="global"/&gt;
           &lt;heading&gt;
                &lt;title align="center"&gt;&lt;emph typestyle="bf"&gt;Anglican Church of Australia Act 1895 Amendment Act 1901&lt;/emph&gt;&lt;/title&gt;
            &lt;/heading&gt;
            &lt;primlaw:bodytext&gt;
                    &lt;p&gt;&lt;text&gt;Queensland&lt;/text&gt;&lt;/p&gt;&lt;p&gt;&lt;text&gt;[shield]&lt;/text&gt;&lt;/p&gt;
                    &lt;h&gt;&lt;emph typestyle="bf"&gt;Anglican Church of Australia Act 1895 Amendment Act 1901&lt;/emph&gt;&lt;/h&gt;
                &lt;/primlaw:bodytext&gt;
                &lt;/primlaw:level&gt;
                &lt;/primlaw:level&gt;
             </pre>
                            </li>
                            <li><sourcexml>leg:history</sourcexml> becomes
                                    <targetxml>primlawhist:primlawhist</targetxml> with attributes
                                    <sourcexml>leg:history[@id]</sourcexml> becomes
                                    <targetxml>primlawhist:primlawhist[@xml:id]</targetxml> and
                                child elements includes: <ul>
                                    <li><sourcexml>leg:history/leg:heading</sourcexml> becomes
                                            <targetxml>primlawhist:primlawhist/heading</targetxml>
                                        <pre>
              &lt;leg:endmatter&gt;
            &lt;leg:history id="VIC_ACT_1998-25_LEGHIST"&gt;
            &lt;leg:heading&gt;
            &lt;title&gt;&lt;refpt id="VIC_ACT_1998-25_LEGHIST" type="ext"/&gt;&lt;emph typestyle="bf"&gt;LawNow Legislative History&lt;/emph&gt;&lt;/title&gt;
            &lt;/leg:heading&gt;
            &lt;leg:tableofamend&gt;
            &lt;leg:heading&gt;
            &lt;title&gt;&lt;refpt id="VIC_ACT_1998-25_LEGHIST_AMENDTOME" type="ext"/&gt;&lt;emph typestyle="bf"&gt;Amendments to
            this Act&lt;/emph&gt;
            &lt;/title&gt;
            &lt;/leg:heading&gt;
            &lt;p&gt;
            &lt;text&gt;This Act is amended by:&lt;/text&gt;
            &lt;/p&gt;
            &lt;table frame="all"&gt;
            &lt;tgroup cols="4" colsep="1" rowsep="1"&gt;
            &lt;colspec colname="c1" colnum="1" colwidth="12*"/&gt;
            &lt;colspec colname="c2" colnum="2" colwidth="12*"/&gt;
            &lt;colspec colname="c3" colnum="3" colwidth="12*"/&gt;
            &lt;colspec colname="c4" colnum="4" colwidth="12*"/&gt;
            &lt;thead&gt;
            &lt;row&gt;&lt;entry align="center" colname="c1"&gt;&lt;emph typestyle="bf"&gt;Amending Law&lt;/emph&gt;&lt;/entry&gt;&lt;entry align="center" colname="c2"&gt;&lt;emph
            typestyle="bf"&gt;Source&lt;/emph&gt;&lt;/entry&gt;&lt;entry align="center" colname="c3"&gt;&lt;emph typestyle="bf"&gt;Commencement Dates&lt;/emph&gt;&lt;/entry&gt;&lt;entry
            align="center" colname="c4"&gt;&lt;emph typestyle="bf"&gt;Fully Proclaimed?&lt;/emph&gt;&lt;/entry&gt;
            &lt;/row&gt;
            &lt;/thead&gt;
            .....
            ....&lt;/table&gt;
            &lt;/leg:tableofamend&gt;

            <b>Becomes</b>
              
            &lt;primlaw:level leveltype="endnote"&gt;
            &lt;primlawhist:primlawhist&gt;
            &lt;ref:anchor id="VIC_ACT_1998-25_LEGHIST" anchortype="global"/&gt;
            &lt;heading&gt;&lt;title&gt;&lt;emph typestyle="bf"&gt;LawNow Legislative History&lt;/emph&gt;&lt;/title&gt;
            &lt;/heading&gt;
            &lt;primlawhist:histgrp grptype="tableofamend"&gt;
            &lt;ref:anchor id="VIC_ACT_1998-25_LEGHIST_AMENDTOME" anchortype="global"/&gt;
            &lt;heading&gt;&lt;title&gt;&lt;emph typestyle="bf"&gt;Amendments to this Act&lt;/emph&gt;&lt;/title&gt;&lt;/heading&gt;
            &lt;primlawhist:histitem&gt;
            &lt;bodytext&gt;
            &lt;p&gt;
            &lt;text&gt;This Act is amended by:&lt;/text&gt;
            &lt;/p&gt;
           &lt;table frame="all"&gt;
          &lt;tgroup cols="4" colsep="1" rowsep="1"&gt;
          &lt;colspec colname="c1" colnum="1" colwidth="12*"/&gt;
          &lt;colspec colname="c2" colnum="2" colwidth="12*"/&gt;
          &lt;colspec colname="c3" colnum="3" colwidth="12*"/&gt;
          &lt;colspec colname="c4" colnum="4" colwidth="12*"/&gt;
          &lt;thead&gt;
          &lt;row&gt;&lt;entry align="center" colname="c1"&gt;&lt;emph typestyle="bf"&gt;Amending Law&lt;/emph&gt;&lt;/entry&gt;&lt;entry align="center" colname="c2"&gt;&lt;emph
          typestyle="bf"&gt;Source&lt;/emph&gt;&lt;/entry&gt;&lt;entry align="center" colname="c3"&gt;&lt;emph typestyle="bf"&gt;Commencement Dates&lt;/emph&gt;&lt;/entry&gt;&lt;entry
          align="center" colname="c4"&gt;&lt;emph typestyle="bf"&gt;Fully Proclaimed?&lt;/emph&gt;&lt;/entry&gt;
          &lt;/row&gt;
          &lt;/thead&gt;
          .....
          ....&lt;/table&gt;
          &lt;/bodytext&gt;
          &lt;/primlawhist:histitem&gt;
          &lt;/primlawhist:histgrp&gt;
          &lt;/primlawhist:primlawhist&gt;
          &lt;/primlaw:level&gt;
        
            </pre>
                                    </li>
                                    <li>
                                        <sourcexml>leg:history/p/text</sourcexml> becomes
                                            <targetxml>primlawhist:primlawhist/primlawhist:histgrp/primlawhist:histitem/bodytext/p/text</targetxml>
                                        <pre>
               &lt;leg:history&gt;
             &lt;leg:heading&gt;
             &lt;title&gt;Table of Amendments&lt;/title&gt;
             &lt;/leg:heading&gt;
            &lt;p&gt;
            &lt;text&gt;The Evidence (Children) Act 1997 No 143 of 1997 was assented to 17 December 1997. Prior to being repealed by the Criminal
            Procedure Amendment (Vulnerable Persons) Act 2007 No 6 s 5, with effect from 12 October 2007, the Act had been amended as
            follows:
            &lt;/text&gt;
            &lt;/p&gt;
            &lt;leg:tableofamend&gt;
            &lt;table&gt;
            &lt;tgroup cols="3" colsep="0" rowsep="0"&gt;
            &lt;colspec colwidth="50*" colname="c1" align="left" colnum="1"/&gt;
            &lt;colspec colwidth="50*" colname="c2" align="left" colnum="2"/&gt;
            &lt;colspec colwidth="50*" colname="c3" align="left" colnum="3"/&gt;
            &lt;thead&gt;
            &lt;row&gt;
            &lt;entry colname="c1"&gt;&lt;emph typestyle="bf"&gt;Amending Legislation&lt;/emph&gt;&lt;/entry&gt;&lt;entry colname="c2"&gt;&lt;emph typestyle="bf"&gt;Date of
            Assent&lt;/emph&gt;
            &lt;/entry&gt;
            &lt;entry colname="c3"&gt;&lt;emph typestyle="bf"&gt;Date of Commencement&lt;/emph&gt;
            &lt;/entry&gt;
            &lt;/row&gt;
            &lt;/thead&gt;
            &lt;tbody&gt;
            &lt;row&gt;&lt;entry colname="c1"&gt;Statute Law (Miscellaneous Provisions) Act (No 2) 1999 No 85&lt;/entry&gt;&lt;entry colname="c2"&gt;3 December
            1999&lt;/entry&gt;
            &lt;entry colname="c3"&gt;3 December 1999&lt;/entry&gt;
            &lt;/row&gt;
            ...
            &lt;/table&gt;
            &lt;/leg:tableofamend&gt;
               
            <b>Becomes</b>
             
            &lt;primlawhist:primlawhist&gt;
             &lt;heading&gt;&lt;title&gt;Table of Amendments&lt;/title&gt;&lt;/heading&gt;     
              &lt;primlawhist:histgrp&gt;
           &lt;primlawhist:histitem&gt;
            &lt;bodytext&gt;
             &lt;p&gt;
             &lt;text&gt;
              The Evidence (Children) Act 1997 No 143 of 1997 was assented to 17 December 1997. Prior to being repealed by the Criminal Procedure
              Amendment (Vulnerable Persons) Act 2007 No 6 s 5, with effect from 12 October 2007, the Act had been amended as follows:       
             &lt;/text&gt;
             &lt;/p&gt;
            &lt;/bodytext&gt;
           &lt;/primlawhist:histitem&gt;
          &lt;/primlawhist:histgrp&gt;
             &lt;primlawhist:histgrp grptype="tableofamend"&gt;
              &lt;primlawhist:histitem&gt;
              &lt;bodytext&gt;
              &lt;table&gt;
              &lt;tgroup cols="3" colsep="0" rowsep="0"&gt;
              &lt;colspec colwidth="50*" colname="c1" align="left" colnum="1"/&gt;
              &lt;colspec colwidth="50*" colname="c2" align="left" colnum="2"/&gt;
              &lt;colspec colwidth="50*" colname="c3" align="left" colnum="3"/&gt;
              &lt;thead&gt;&lt;row&gt;&lt;entry colname="c1"&gt;&lt;emph typestyle="bf"&gt;Amending Legislation&lt;/emph&gt;&lt;/entry&gt;&lt;entry colname="c2"&gt;&lt;emph
              typestyle="bf"&gt;Date of Assent&lt;/emph&gt;&lt;/entry&gt;&lt;entry colname="c3"&gt;&lt;emph typestyle="bf"&gt;Date of
              Commencement&lt;/emph&gt;&lt;/entry&gt;&lt;/row&gt;&lt;/thead&gt;
              &lt;tbody&gt;
              &lt;row&gt;&lt;entry colname="c1"&gt;Statute Law (Miscellaneous Provisions) Act (No 2) 1999 No 85&lt;/entry&gt;&lt;entry colname="c2"&gt;3 December
              1999&lt;/entry&gt;&lt;entry colname="c3"&gt;3 December 1999&lt;/entry&gt;&lt;/row&gt;
              …..&lt;/table&gt;
              &lt;/bodytext&gt;
              &lt;/primlawhist:histitem&gt;
              &lt;/primlawhist:histgrp&gt;
              &lt;/primlawhist:primlawhist&gt;
             
            </pre>
                                    </li>
                                    <li>
                                        <sourcexml>leg:history/p/blockquote</sourcexml> becomes
                                            <targetxml>primlawhist:primlawhist/primlawhist:histgrp/primlawhist:histitem/bodytext/p/blockquote</targetxml>
                                        <note>Refer <xref href="../../common_newest/Rosetta_blockquote-legfragment-p-LxAdv-primlaw.excerpt-primlaw.bodytext-p.dita">legfragment</xref> for handling of
                                            blockquote/legfragment scenario.</note>
                                        <pre>
                   &lt;leg:prelim&gt;
                         &lt;leg:history&gt;
                        &lt;leg:heading&gt;
                          &lt;title&gt;Table of Amendments&lt;/title&gt; 
                          &lt;/leg:heading&gt;
                         &lt;p&gt;
                         &lt;blockquote&gt;
                         &lt;p indent="none"&gt;
                         &lt;text&gt;
                         &lt;emph typestyle="it"&gt;(The Act as amended is reprinted with the permission of the Attorney-General.)
                          &lt;/emph&gt;
                          &lt;/text&gt;
                          &lt;/p&gt;
                          &lt;/blockquote&gt;
                          ...
                          &lt;/leg:history&gt;
                          &lt;/leg:prelim&gt;

                   <b>Becomes</b>
                   
                   &lt;primlaw:prelim&gt;
    &lt;primlawhist:primlawhist&gt;
        &lt;primlawhist:histgrp&gt;
            &lt;primlawhist:histitem&gt;
                &lt;bodytext&gt;
                    &lt;p&gt;
                        &lt;blockquote&gt;
                            &lt;p indent="none"&gt;
                                &lt;text&gt;
                                    &lt;emph typestyle="it"&gt;(The Act as amended is reprinted with the permission of the Attorney-General.)&lt;/emph&gt; 
                                &lt;/text&gt;
                            &lt;/p&gt;
                        &lt;/blockquote&gt;
                        ....
                &lt;/bodytext&gt;
                &lt;/primlawhist:histitem&gt;
        &lt;/primlawhist:histgrp&gt;
    &lt;/primlawhist:primlawhist&gt;    
    &lt;/primlaw:prelim&gt;
                 </pre>
                                        <pre>
                    <b>Handling of blockquote/legfragment:</b>
                    &lt;leg:history&gt;
    &lt;leg:heading&gt;
        &lt;title&gt;TABLE OF AMENDMENTS&lt;/title&gt;
    &lt;/leg:heading&gt;
    &lt;p&gt;
        &lt;text&gt;The Local Courts Act 1904 No 51 commenced on 1 January 1905. The Act as reproduced is based on the reprint of 4 March 1994 and until 30 April 2005 was amended as set out in the table following.
....
        &lt;/text&gt;
    &lt;/p&gt;
    &lt;p&gt;
        &lt;text&gt;As of 1 May 2005 the Local Courts Act 1904 is repealed by s&amp;#160;4 of the Courts Legislation Amendment and Repeal Act 2004 No&amp;#x00A0;59&lt;/text&gt;
        &lt;blockquote&gt;
            &lt;legfragment&gt;
            &lt;leg:level&gt;
                &lt;leg:level-vrnt leveltype="sect"&gt;
                       &lt;leg:heading&gt;
                        &lt;desig&gt;&lt;designum&gt;&amp;ldquo;DIVISION 2&lt;/designum&gt;&lt;/desig&gt;&lt;title&gt;TRANSITIONAL PROVISIONS&lt;/title&gt;
                    &lt;/leg:heading&gt;
                    ....
                &lt;/leg:level-vrnt&gt;
             &lt;/leg:level&gt;
            &lt;/legfragment&gt;
        &lt;/blockquote&gt;
        &lt;text&gt;For the time being, the Local Courts Act (and commentary where applicable) remains in this publication for the benefit of subscribers.&lt;/text&gt;&lt;/p&gt;
        ....
        &lt;/leg:history&gt;
         
             <b>Becomes</b>
                    
              &lt;primlawhist:primlawhist&gt;
                 &lt;heading&gt;
        &lt;title&gt;TABLE OF AMENDMENTS&lt;/title&gt;
            &lt;/heading&gt;
        &lt;primlawhist:histgrp&gt;
            &lt;primlawhist:histitem&gt;
                &lt;bodytext&gt;
                    &lt;p&gt;
        &lt;text&gt;The Local Courts Act 1904 No 51 commenced on 1 January 1905. The Act as reproduced is based on the reprint of 4 March 1994 and until 30 April 2005 was amended as set out in the table following.
....
        &lt;/text&gt;
        &lt;/p&gt;
        &lt;p&gt;
        &lt;text&gt;As of 1 May 2005 the Local Courts Act 1904 is repealed by s&amp;#160;4 of the Courts Legislation Amendment and Repeal Act 2004 No&amp;#x00A0;59&lt;/text&gt;&lt;/p&gt;
          &lt;primlaw:excerpt&gt;
             &lt;primlaw:level leveltype="division"&gt;
                &lt;heading&gt;
                &lt;desig&gt;&amp;ldquo;DIVISION 2&lt;/desig&gt;&lt;title&gt;TRANSITIONAL PROVISIONS&lt;/title&gt;
                &lt;/heading&gt;           
             .....
             &lt;/primlaw:level&gt;
             &lt;/primlaw:excerpt&gt;
             &lt;p&gt;
             &lt;text&gt;For the time being, the Local Courts Act (and commentary where applicable) remains in this publication for the benefit of subscribers.&lt;/text&gt;
             &lt;/p&gt;
             &lt;/bodytext&gt;
           &lt;/primlawhist:histitem&gt;
        &lt;/primlawhist:histgrp&gt;
    &lt;/primlawhist:primlawhist&gt;
          
    </pre>
                                    </li>
                                    <li><sourcexml>leg:history/p/glp:note</sourcexml> becomes
                                            <targetxml>primlawhist:primlawhist/primlawhist:histgrp/primlawhist:histitem/bodytext/note</targetxml>
                                        <note>If there is only <sourcexml>glp:note</sourcexml> as a
                                            child of <sourcexml>p</sourcexml> then omit
                                                <sourcexml>p</sourcexml> from conversion and
                                            generate <targetxml>note</targetxml> but if there is any
                                            child of <sourcexml>p</sourcexml> other than
                                                <sourcexml>glp:note</sourcexml> then
                                                <targetxml>note</targetxml> will become sibling of
                                                <targetxml>p</targetxml> in output.</note>
                                        <pre>
                   &lt;leg:history&gt;
   &lt;leg:heading&gt;
        &lt;title&gt;TABLE OF AMENDMENTS&lt;/title&gt; 
    &lt;/leg:heading&gt;
     &lt;p&gt;
        &lt;glp:note&gt;
            &lt;h&gt;Editor’s Note:&lt;/h&gt; 
            &lt;p&gt;
              &lt;text&gt;The County Court Civil Procedure Rules 2008, SR 148 of 2008, revoked and replaced Ch I of the County Court Rules of Procedure in Civil Proceedings 1999, effective 22 February 2009.&lt;/text&gt; 
            &lt;/p&gt;
        &lt;/glp:note&gt;
    &lt;/p&gt;
    ...
    &lt;/leg:history&gt;
                   
                   <b>Becomes</b>
                   
                   &lt;primlawhist:primlawhist&gt;
        &lt;heading&gt;
            &lt;title&gt;TABLE OF AMENDMENTS&lt;/title&gt;
        &lt;/heading&gt;
        &lt;primlawhist:histgrp&gt;
            &lt;primlawhist:histitem&gt;
                &lt;bodytext&gt;
                      &lt;note&gt;
                          &lt;h&gt;Editor’s Note:&lt;/h&gt; 
                        &lt;p&gt;
                            &lt;text&gt;The County Court Civil Procedure Rules 2008, SR 148 of 2008, revoked and replaced Ch I of the County Court Rules of Procedure in Civil Proceedings 1999, effective 22 February 2009.&lt;/text&gt; 
                        &lt;/p&gt;
                      &lt;/note&gt;
                &lt;/bodytext&gt;
                ....
            &lt;/primlawhist:histitem&gt;
        &lt;/primlawhist:histgrp&gt;
        &lt;/primlawhist:primlawhist&gt;
              </pre>
                                    </li>
                                </ul>
                            </li>
                            <li> The conversion of <sourcexml>leg:tableofamend</sourcexml> is based
                                on the following scenarios:
                                    <sourcexml>leg:tableofamend/heading</sourcexml> becomes
                                    <targetxml>primlawhist:primlawhist/primlawhist:histgrp[@grptype="tableofamend"]/heading</targetxml>,
                                this is for capturing the heading information.
                                    <sourcexml>leg:tableofamend</sourcexml> becomes
                                    <targetxml>primlawhist:primlawhist/primlawhist:histgrp[@grptype="tableofamend"]/primlawhist:histitem/bodytext</targetxml>
                                <note>Add the attribute value
                                        <targetxml>@grptype="tableofamend"</targetxml> to
                                        <targetxml>primlawhist:histgrp</targetxml></note>
                                <pre>
            &lt;leg:tableofamend&gt;
                     &lt;leg:heading&gt;
                     &lt;title&gt;&lt;refpt id="VIC_ACT_1998-25_LEGHIST_PRE-YEAR" type="ext"/&gt;&lt;emph typestyle="bf"&gt;Pre-2000 Act&lt;/emph&gt;
                     &lt;/title&gt;
                     &lt;/leg:heading&gt;
                     &lt;p&gt;
                     &lt;text&gt;This Act history only includes events from 2000. Details of events affecting the Act before 2000 may be found in the
                     &lt;remotelink refpt="VIC_ACT_1998-25_NOTES" dpsi="1111" docidref="EFGH_2468" remotekey1="REFPTID" service="DOC-ID"&gt;Notes&lt;/remotelink&gt; at the end of the Act.
                     &lt;/text&gt;
                     &lt;/p&gt;
                   &lt;/leg:tableofamend&gt;
                   
                  <b>Becomes</b>

                      &lt;primlawhist:primlawhist&gt;
                      &lt;primlawhist:histgrp grptype="tableofamend"&gt;
                      &lt;ref:anchor id="VIC_ACT_1998-25_LEGHIST_PRE-YEAR" anchortype="global"/&gt; 
                      &lt;heading&gt;
                      &lt;title&gt;&lt;emph typestyle="bf"&gt;Pre-2000 Act&lt;/emph&gt;&lt;/title&gt;
                      &lt;/heading&gt;
                     &lt;primlawhist:histitem&gt;
                     &lt;bodytext&gt;
                    &lt;p&gt;
                    &lt;text&gt;
                    This Act history only includes events from 2000. Details of events affecting the Act 
                    before 2000 may be found in the 
                                    &lt;ref:crossreference crossreferencetype="seeAlso"&gt;
                                        &lt;ref:content&gt;Notes&lt;/ref:content&gt;
                                        &lt;ref:locator anchoridref="VIC_ACT_1998-25_NOTES"&gt;                                            
                                            &lt;ref:locator-key&gt;
                                                &lt;ref:key-name name="DOC-ID"/&gt;
                                                &lt;ref:key-value value="1111-EFGH_2468"/&gt;
                                                 &lt;/ref:locator-key&gt;                                                    
                                        &lt;/ref:locator&gt;
                                    &lt;/ref:crossreference&gt;
                                 at the end of the Act.
                    &lt;/text&gt;
                    &lt;/p&gt;
                   &lt;/primlawhist:histitem&gt;                                    
                   &lt;/primlawhist:histgrp&gt;
                   &lt;/primlawhist:primlawhist&gt;
          </pre>
                            </li>
                            <li>
                                <p>Conversion of leg:endmatter/index is determined by children of
                                        <sourcexml>index</sourcexml>, as follows:</p>
                                <b>Handling for index/in:lev1 scenario:</b>
                                <sourcexml>/LEGDOC/leg:body/leg:endmatter/index</sourcexml> becomes
                                    <targetxml>/legis:legis/legis:body/primlaw:level[@leveltype="endnote"]/index:index</targetxml>
                                and index: with optional child <sourcexml>heading</sourcexml>
                                becomes <targetxml>heading</targetxml> and attributes
                                    <sourcexml>@id</sourcexml> becomes
                                    <targetxml>@xml:id</targetxml> along with a required attribute
                                    <targetxml>index:index[@indextype="definedTerms"]</targetxml>
                                and <targetxml>index:index[@indextype="topical"]</targetxml>
                                <note>When input documents has attribute
                                        <sourcexml>index[@id="XXXX_DEFLIST"]</sourcexml> then it
                                    will map to
                                        <targetxml>index:index[@indextype="definedTerms"]</targetxml>
                                    or if it has attribute
                                        <sourcexml>index[@id="XXXX_INDEX"]</sourcexml> then it will
                                    map to
                                    <targetxml>index:index[@indextype="topical"]</targetxml></note>
                                <note>Refer <xref href="../../common_newest/Rosetta_refpt-Chof-leg.endmatter_index_heading_title-LxAdv-primlaw.level_ref.anchor.dita">refpt</xref> for handling of
                                    <sourcexml>refpt</sourcexml></note> The child elements are
                                converted using the rule below: <ul>
                                    <li><sourcexml>index/p</sourcexml> becomes
                                            <targetxml>index:index/heading/subtitle</targetxml></li>
                                    <li><sourcexml>in:lev1/in:entry/in:entry-text</sourcexml>
                                        becomes
                                            <targetxml>index:item/index:entry/index:entrytext</targetxml></li>
                                    <li><sourcexml>in:entry/in:index-ref</sourcexml> becomes
                                            <targetxml>index:entry/index:locator/ref:lnlink/@service="DOCUMENT"</targetxml>
                                        (create both target element
                                            <targetxml>index:locator</targetxml> and target child
                                        element
                                            <targetxml>index:locator/ref:lnlink/@service="DOCUMENT"</targetxml>),
                                        then source child element
                                            <sourcexml>in:index-ref/remotelink</sourcexml> will be
                                        converted as : <ul>
                                            <li>Use case:
                                                  <sourcexml>remotelink[@service='DOC-ID']</sourcexml>
                                                becomes <targetxml>ref:marker</targetxml>. Create a
                                                  <targetxml>ref:locator</targetxml> and the
                                                following child elements within it:<ul>
                                                  <li>If <sourcexml>@remotekey1="DOC-ID"</sourcexml>
                                                  then <ul>
                                                  <li><targetxml>ref:key-name/@name</targetxml> will
                                                  have the value "DOC-ID".</li>
                                                  <li><targetxml>key-value/@value</targetxml> will
                                                  be the value of <sourcexml>@dpsi</sourcexml>
                                                  followed by hyphen and concatenated with
                                                  <sourcexml>@refpt</sourcexml> or
                                                  <sourcexml>@remotekey2</sourcexml>, which ever is
                                                  present (if both are present, use
                                                  <sourcexml>@remotekey2</sourcexml>).</li>
                                                  </ul></li>
                                                  <li>If
                                                  <sourcexml>@remotekey1="REFPTID"</sourcexml> then <ul>
                                                  <li><targetxml>ref:key-name/@name</targetxml> will
                                                  have the value "DOC-ID".</li>
                                                  <li><targetxml>ref:key-value/@value</targetxml>
                                                  will be the value of <sourcexml>@dpsi</sourcexml>
                                                  followed by hyphen and concatenated with
                                                  <sourcexml>@docidref</sourcexml>.</li>
                                                  <li>Create
                                                  <targetxml>ref:locator/@anchoridref</targetxml>
                                                  with value from <sourcexml>@refpt</sourcexml> or
                                                  <sourcexml>@remotekey2</sourcexml>, which ever is
                                                  present (if both are present, use
                                                  <sourcexml>@refpt</sourcexml>).</li>
                                                  </ul></li>
                                                </ul>
                                                <note>If <sourcexml>remotelink/@dpsi</sourcexml> is
                                                  not present, use value from
                                                  <sourcexml>docinfo:dpsi/@id-string</sourcexml> or
                                                  capture value from the LBU manifest file.</note>
                                                <note><targetxml>ref:locator/@anchoridref</targetxml>
                                                  that begins with a number must have an underscore
                                                  added at start. Also apply other identifier data
                                                  type format as used for xml:id and ref:anchor/@id,
                                                  e.g. change colon to underscore.</note>
                                            </li>
                                        </ul>
                                    </li>
                                </ul>
                                <pre>
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


           <b>Becomes</b>
        
   &lt;primlaw:level leveltype="endnote"&gt;   
    &lt;index:index indextype="definedTerms"&gt;
        &lt;ref:anchor id="NSW_ACT_1901-16_DEFLIST" anchortype="global"/&gt;
        &lt;heading&gt;&lt;title&gt;&lt;emph typestyle="bf"&gt;List of Defined Terms&lt;/emph&gt;&lt;/title&gt;&lt;/heading&gt;      
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
      
</pre>
                                <pre>
              <b>Handling: When in:lev1 is the sibling of p</b>
&lt;index id="NSW_ACT_1898-11_INDEX"&gt;
    &lt;heading&gt;
        &lt;title align="left"&gt;&lt;refpt id="NSW_ACT_1898-11_IDX" type="ext"/&gt;INDEX&lt;/title&gt;        
    &lt;/heading&gt;
    &lt;!-- Warning: The "p" element is not supported in this context.  Please review the input 
        markup. --&gt;
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
                    &lt;remotelink refpt="NSW_ACT_1898-11_SEC14CD" dpsi="3333" docidref="ABCD_4321" remotekey1="REFPTID" service="DOC-
                        ID"&gt;14CD&lt;/remotelink&gt;--&lt;remotelink refpt="NSW_ACT_1898-11_SEC14CV" 
                            dpsi="3333" docidref="ABCD_4321" remotekey1="REFPTID" service="DOC-ID"&gt;14CV&lt;/remotelink&gt;
                &lt;/in:index-ref&gt;
            &lt;/in:entry&gt;
            &lt;in:lev3&gt;
                &lt;in:entry&gt;
                    &lt;in:entry-text&gt;“business” includes Crown undertakings, public administration 
                        etc.&lt;/in:entry-text&gt;
                    &lt;in:index-ref&gt;
                        &lt;remotelink refpt="NSW_ACT_1898-11_SEC14CD" dpsi="3333" docidref="ABCD_4321" remotekey1="REFPTID" 
                            service="DOC-ID"&gt;14CD&lt;/remotelink&gt; (1)
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
                    &lt;remotelink refpt="NSW_ACT_1898-11_SEC43" dpsi="3333" docidref="ABCD_4321" remotekey1="REFPTID" service="DOC-
                        ID"&gt;43&lt;/remotelink&gt;
                &lt;/in:index-ref&gt;
            &lt;/in:entry&gt;
        &lt;/in:lev2&gt;
    &lt;/in:lev1&gt;
    &lt;in:lev1&gt;
        &lt;in:entry&gt;
            &lt;in:entry-text&gt;Evidence, documentary in civil proceedings&lt;/in:entry-text&gt;
            &lt;in:index-ref&gt;
                &lt;remotelink refpt="NSW_ACT_1898-11_SEC14A" dpsi="3333" docidref="ABCD_4321" remotekey1="REFPTID" service="DOC-
                    ID"&gt;14A&lt;/remotelink&gt;--&lt;remotelink refpt="NSW_ACT_1898-11_SEC14C" 
                        dpsi="3333" docidref="ABCD_4321" remotekey1="REFPTID" service="DOC-ID"&gt;14C&lt;/remotelink&gt;
            &lt;/in:index-ref&gt;
        &lt;/in:entry&gt;
        &lt;in:lev2&gt;
            &lt;in:entry&gt;
                &lt;in:entry-text&gt;[See also Business records]&lt;/in:entry-text&gt;
            &lt;/in:entry&gt;
        &lt;/in:lev2&gt;
    &lt;/in:lev1&gt;
    &lt;in:lev1&gt;
        &lt;in:entry&gt;
            &lt;in:entry-text&gt;Evidence on commission&lt;/in:entry-text&gt;
            &lt;in:index-ref&gt;
                &lt;remotelink refpt="NSW_ACT_1898-11_SEC64" dpsi="3333" docidref="ABCD_4321" remotekey1="REFPTID" service="DOC-
                    ID"&gt;64&lt;/remotelink&gt;--&lt;remotelink refpt="NSW_ACT_1898-11_SEC82" dpsi="3333" docidref="ABCD_4321" remotekey1="REFPTID" 
                        service="DOC-ID"&gt;82&lt;/remotelink&gt;
            &lt;/in:index-ref&gt;
        &lt;/in:entry&gt;
    &lt;/in:lev1&gt;
&lt;/index&gt;
          
          <b>Becomes</b>
              
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
                      &lt;ref:lnlink service"DOCUMENT"&gt;
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
                        &lt;index:entrytext&gt;"business" includes Crown undertakings, public administration 
                            etc.&lt;/index:entrytext&gt;
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
        &lt;index:item&gt;
            &lt;index:entry&gt;
                &lt;index:entrytext&gt;Evidence, documentary in civil proceedings&lt;/index:entrytext&gt;
                &lt;index:locator&gt;                    
                      &lt;ref:lnlink service="DOCUMENT"&gt;
                        &lt;ref:marker&gt;14A&lt;/ref:marker&gt;
                        &lt;ref:locator anchoridref="NSW_ACT_1898-11_SEC14A"&gt;
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
                        &lt;ref:marker&gt;14C&lt;/ref:marker&gt;
                        &lt;ref:locator anchoridref="NSW_ACT_1898-11_SEC14C"&gt;
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
                    &lt;index:entrytext&gt;[See also Business records]&lt;/index:entrytext&gt;
                &lt;/index:entry&gt;
            &lt;/index:item&gt;            
        &lt;/index:item&gt;        
        &lt;index:item&gt;
            &lt;index:entry&gt;
                &lt;index:entrytext&gt;Evidence on commission&lt;/index:entrytext&gt;
                &lt;index:locator&gt;                    
                      &lt;ref:lnlink service="DOCUMENT"&gt;
                        &lt;ref:marker&gt;64&lt;/ref:marker&gt;
                        &lt;ref:locator anchoridref="NSW_ACT_1898-11_SEC64"&gt;
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
                        &lt;ref:marker&gt;82&lt;/ref:marker&gt;
                        &lt;ref:locator anchoridref="NSW_ACT_1898-11_SEC82"&gt;
                            &lt;ref:locator-key&gt;
                                    &lt;ref:key-name name="DOC-ID"/&gt;
                                    &lt;ref:key-value value="3333-ABCD_4321"/&gt;
                            &lt;/ref:locator-key&gt;
                        &lt;/ref:locator&gt;                   
                      &lt;/ref:lnlink&gt;
                &lt;/index:locator&gt;
            &lt;/index:entry&gt;
        &lt;/index:item&gt;            
&lt;/index:index&gt;
   </pre>
                            </li>
                            <li><b>Handling for index/table and index/p scenario:</b>
                                <sourcexml>/LEGDOC/leg:body/leg:endmatter/index</sourcexml> becomes
                                    <targetxml>/legis:legis/legis:body/primlaw:level[@leveltype="endnote"]/navaid:navigationaid</targetxml>
                                with optional child <sourcexml>heading/title</sourcexml> becomes
                                    <targetxml>title</targetxml> and attributes
                                    <sourcexml>@id</sourcexml> becomes
                                    <targetxml>@xml:id</targetxml> The child elements are converted
                                using the rule below: <ul>
                                    <li><sourcexml>index/p/table</sourcexml> becomes
                                            <targetxml>navaid:navigationaid/bodytext/p/table</targetxml>
                                        <note>Refer <xref href="../../common_newest/Rosetta_table-LxAdv-table.dita">table</xref> for handling of
                                                <sourcexml>table</sourcexml></note>
                                    </li>
                                    <li><sourcexml>index/table</sourcexml> becomes
                                            <targetxml>navaid:navigationaid/bodytext/table</targetxml>
                                        <note>Refer <xref href="../../common_newest/Rosetta_table-LxAdv-table.dita">table</xref> for handling of
                                                <sourcexml>table</sourcexml></note>
                                    </li>
                                    <li><sourcexml>index/p</sourcexml> becomes
                                            <targetxml>navaid:navigationaid/bodytext/p</targetxml>
                                        <note>Refer <xref href="../../common_newest/Rosetta_p-LxAdv-p.dita">p</xref> for handling of
                                            <sourcexml>p</sourcexml></note>
                                        <note>Refer <xref href="../../common_newest/Rosetta_text-LxAdv-text.dita">text</xref> for handling of
                                                <sourcexml>text</sourcexml></note>
                                    </li>
                                </ul>
                                <pre>
                &lt;leg:endmatter&gt;
                &lt;index id="WA_ACT_2010-57_INDEX"&gt;
    &lt;heading&gt;&lt;title align="center"&gt;&lt;refpt id="WA_ACT_2010-57_INDEX" type="ext"/&gt;Defined Terms&lt;/title&gt;
    &lt;/heading&gt;
    &lt;p&gt;&lt;text&gt;&lt;emph typestyle="it"&gt;[This is a list of terms defined and the provisions where they are defined. The list is not part of the law.]&lt;/emph&gt;&lt;/text&gt;
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
                    ....
                &lt;/tbody&gt;
            &lt;/tgroup&gt;
        &lt;/table&gt;
    &lt;/p&gt;
       &lt;table&gt;
        &lt;tgroup cols="1"&gt;
        &lt;!-- adding colspecs --&gt;
        &lt;colspec colwidth="12*" colname="c1" colsep="0" rowsep="0"/&gt;
        &lt;tbody&gt;
        &lt;row&gt;&lt;entry&gt;&amp;#160;&lt;/entry&gt;
        &lt;/row&gt;
        &lt;/tbody&gt;
        &lt;/tgroup&gt;
        &lt;/table&gt;
    &lt;/index&gt;
    &lt;/leg:endmatter&gt;
         
         <b>Becomes</b>
        
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
                        .....                       
                    &lt;/tbody&gt;
                &lt;/tgroup&gt;
            &lt;/table&gt;
        &lt;/p&gt;
        &lt;table&gt;
        &lt;tgroup cols="1"&gt;
        &lt;!-- adding colspecs --&gt;
        &lt;colspec colwidth="12*" colname="c1" colsep="0" rowsep="0"/&gt;
        &lt;tbody&gt;
        &lt;row&gt;&lt;entry&gt;&amp;#x00A0;&lt;/entry&gt;
        &lt;/row&gt;
        &lt;/tbody&gt;
        &lt;/tgroup&gt;
        &lt;/table&gt;
    &lt;/bodytext&gt;    
&lt;/navaid:navigationaid&gt;             
        </pre>
                            </li>
                            <li><sourcexml>leg:empleg</sourcexml> becomes
                                    <targetxml>primlaw:authority/primlaw:authority-item/bodytext/textitem</targetxml>
                                and populated as: <note>The <targetxml>primlaw:authority</targetxml>
                                    will be sibling of <targetxml>heading</targetxml>.</note>
                                <pre>&lt;leg:level id="VIC_ACT_2003-114_SCHEDSSCH1"&gt;
              &lt;leg:level-vrnt leveltype="schedule" searchtype="LEGISLATION" subdoc="false" toc-caption="SCHEDULE 1"&gt;
              &lt;leg:heading&gt;
              &lt;title align="center" searchtype="SCH-TITLE"&gt;&lt;refpt id="VIC_ACT_2003-114_SCHEDSSCH1" type="ext"/&gt;
              &lt;emph typestyle="bf"&gt;SCHEDULE 1&lt;/emph&gt;
              &lt;/title&gt;
              &lt;subtitle&gt;
              &lt;emph typestyle="bf"&gt;SUBJECT MATTER FOR REGULATIONS&lt;/emph&gt;
              &lt;/subtitle&gt;
              &lt;leg:empleg&gt;
              &lt;ci:cite searchtype="LEG-REF"&gt;
              &lt;ci:content&gt;Section 11.2.1&lt;/ci:content&gt;
              &lt;/ci:cite&gt;
              &lt;/leg:empleg&gt;
              &lt;/leg:heading&gt;
              
              <b>Becomes</b>
              
              &lt;primlaw:level leveltype="schedule" includeintoc="false" alternatetoccaption="SCHEDULE 1"&gt;
              &lt;ref:anchor id="VIC_ACT_2003-114_SCHEDSSCH1" anchortype="global"/&gt;
              &lt;heading&gt;
              &lt;title align="center"&gt;
              &lt;emph typestyle="bf"&gt;SCHEDULE 1&lt;/emph&gt;&lt;/title&gt;
              &lt;subtitle&gt;
              &lt;emph typestyle="bf"&gt;SUBJECT MATTER FOR REGULATIONS&lt;/emph&gt;
              &lt;/subtitle&gt;
              &lt;/heading&gt;
              &lt;primlaw:authority&gt;
              &lt;primlaw:authority-item&gt;
              &lt;bodytext&gt;
              &lt;textitem&gt;
              &lt;lnci:cite type="legislation"&gt;
              &lt;lnci:content&gt;Section 11.2.1&lt;/lnci:content&gt;&lt;/lnci:cite&gt;
              &lt;/textitem&gt;
              &lt;/bodytext&gt;
              &lt;/primlaw:authority-item&gt;
              &lt;/primlaw:authority&gt;
            </pre>
                                <note>Refer <xref href="../../common_newest/Rosetta_refpt-Chof-leg.level_leg.level-vrnt_leg.heading_title-LxAdv-primlaw.level_OR_seclaw.level_ref.anchor.dita">refpt</xref> for handling of the same.</note>&gt; </li>
                            <li><sourcexml>bodytext</sourcexml> becomes
                                    <targetxml>bodytext</targetxml>. <pre>
            &lt;bodytext searchtype="COMMENTARY"&gt;
              &lt;p&gt;
              &lt;text&gt;
              The &lt;ci:cite searchtype="LEG-REF"&gt;&lt;ci:content&gt;&lt;remotelink refpt="ABCE.LEG.EAN95" dpsi="006F" docidref="EFGH_9876" remotekey1="REFPTID"
              service="DOC-ID"&gt;Evidence Acts 1995 (NSW) and (Cth)&lt;/remotelink&gt;&lt;/ci:content&gt;&lt;/ci:cite&gt;
               are in most respects uniform. The two Acts are drafted in identical terms except so far as differences are identified in the Acts
               by appropriate annotations, and except so far as minor drafting variations are required because one Act is a Commonwealth Act and
               one Act is a New South Wales Act.
               &lt;/text&gt;
               &lt;/p&gt;
              &lt;p&gt;
              &lt;text&gt;For economy of pages, the Acts have been consolidated into one version on the pages following. The consolidation also serves
              to identify those differences that do exist between the two Acts.&lt;/text&gt;&lt;/p&gt;
              &lt;/bodytext&gt;
            
              <b>Becomes</b> 
            
              &lt;bodytext&gt;
              &lt;p&gt;
              &lt;text&gt;The 
              &lt;lnci:cite type="legislation" citeref="ABCE.LEG.EAN95"&gt;
              &lt;lnci:content&gt; &lt;ref:crossreference crossreferencetype="seeAlso"&gt;
                  &lt;ref:content&gt;Evidence Acts 1995 (NSW) and (Cth)&lt;/ref:content&gt;
                  &lt;ref:locator anchoridref="ABCE.LEG.EAN95"&gt;
                   &lt;ref:locator-key&gt;
                    &lt;ref:key-name name="DOC-ID"/&gt;  
                    &lt;ref:key-value value="006F-EFGH_9876"/&gt;
                   &lt;/ref:locator-key&gt;
                  &lt;/ref:locator&gt;
                 &lt;/ref:crossreference&gt;&lt;/lnci:content&gt;&lt;/lnci:cite&gt;
               are in most respects uniform. The two Acts are drafted in identical terms except so far as differences are identified in the Acts
               by appropriate annotations, and except so far as minor drafting variations are required because one Act is a Commonwealth Act and
               one Act is a New South Wales Act.&lt;/text&gt;&lt;/p&gt;
              &lt;p&gt;
              &lt;text&gt;For economy of pages, the Acts have been consolidated into one version on the pages following. The consolidation also serves
              to identify those differences that do exist between the two Acts.&lt;/text&gt;&lt;/p&gt;
              &lt;/bodytext&gt;
             
                       
          </pre>
                            </li>
                            <li> The conversion for <sourcexml>leg:levelstatus</sourcexml> is based
                                on the following scenarios: <ul>
                                    <li>
                                        <ol>
                                            <li>If the
                                                  <sourcexml>leg:level/leg:level-vrnt/leg:levelinfo/leg:levelstatus[@isrepealed="true"]</sourcexml>
                                                with text in that then becomes
                                                  <targetxml>primlaw:level/primlaw:levelinfo/primlawinfo:primlawinfo/legisinfo:legisinfo/legisinfo:statusgroup/
                                                  legisinfo:status[@statuscode="repealed"]/legisinfo:statustext</targetxml>
                                                <note>Include the <targetxml>@statuscode</targetxml>
                                                  in element <targetxml>legisinfo:status</targetxml>
                                                  to represent repealed legislation.</note>
                                                <pre>
            &lt;leg:level id="ABCE.LEG.ECN97.BODY"&gt;&lt;leg:level-vrnt searchtype="LEGISLATION ACT" leveltype="act"&gt;
            &lt;leg:levelinfo&gt;
            &lt;leg:levelstatus isrepealed="true"&gt;(Repealed)&lt;/leg:levelstatus&gt;&lt;/leg:levelinfo&gt;
            ....
            &lt;/leg:level&gt;
            
            
            <b>Becomes</b>
            
            
            &lt;primlaw:level xml:id="ABCE.LEG.ECN97.BODY" leveltype="act"&gt;
            &lt;primlaw:levelinfo&gt;
            &lt;primlawinfo:primlawinfo&gt;
            &lt;legisinfo:legisinfo&gt;
            &lt;legisinfo:statusgroup&gt;
            &lt;legisinfo:status statuscode="repealed"&gt;
            &lt;legisinfo:statustext&gt;
            [Repealed]
            &lt;/legisinfo:statustext&gt;
            &lt;/legisinfo:status&gt;
            &lt;/legisinfo:statusgroup&gt;
            &lt;/legisinfo:legisinfo&gt;
            &lt;/primlawinfo:primlawinfo&gt;
            &lt;/primlaw:levelinfo&gt;
            ....
            &lt;/primlaw:level&gt;            
          
          </pre>
                                            </li>
                                            <li>If the
                                                  <sourcexml>leg:level/leg:levelinfo/leg:levelstatus[@isrepealed="true"]</sourcexml>
                                                with no text in that then becomes
                                                  <targetxml>primlaw:level/primlaw:levelinfo/primlawinfo:primlawinfo/legisinfo:legisinfo/legisinfo:statusgroup/
                                                  legisinfo:status[@statuscode="repealed"]</targetxml>
                                                <pre>
                &lt;leg:level id="ACLL.SCRN.SCCR70.PT80.R5.4"&gt;&lt;leg:level-vrnt searchtype="LEGISLATION SUBRUL" leveltype="subrul"&gt;
              &lt;leg:levelinfo&gt;
              &lt;leg:levelstatus isrepealed="true"/&gt;&lt;/leg:levelinfo&gt;
              ....
              &lt;/leg:level&gt;              
              
              
              <b>Becomes</b>
              
              &lt;primlaw:level xml:id="ACLL.SCRN.SCCR70.PT80.R5.4" leveltype="subrule"&gt;
            &lt;primlaw:levelinfo&gt;
            &lt;primlawinfo:primlawinfo&gt;
            &lt;legisinfo:legisinfo&gt;
            &lt;legisinfo:statusgroup&gt;
            &lt;legisinfo:status statuscode="repealed"/&gt;
            &lt;/legisinfo:status&gt;
            &lt;/legisinfo:statusgroup&gt;
            &lt;/legisinfo:legisinfo&gt;
            &lt;/primlawinfo:primlawinfo&gt;
            &lt;/primlaw:levelinfo&gt;
            ....
            &lt;/primlaw:level&gt;
              
              </pre>
                                            </li>
                                            <li>If the
                                                  <sourcexml>leg:levelstatus[@isrepealed="false"]</sourcexml>
                                                then supress the element.</li>
                                        </ol>
                                        <note>For handling <b>@ln.user-displayed</b> attribute,
                                            refer the general markup <xref href="../../common_newest/Rosetta_leg.levelstatus_ln.user-displayed.dita">ln.user_displayed="false"</xref> section in the
                                            CI.</note>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                        <ul>
                            <li><sourcexml>/LEGDOC/leg:body/leg:info/leg:longtitle</sourcexml>
                                becomes
                                    <targetxml>/legis:legis/legis:body/primlaw:prelim/primlaw:synopsis</targetxml>
                                with child as <targetxml>bodytext</targetxml> and populated as
                                below: <pre>
    &lt;leg:longtitle searchtype="LEGISLATION"&gt;
                  &lt;p&gt;
                  &lt;text&gt;An Act to Re-enact with Amendments the Law relating to Transport including the Law with respect to Railways&lt;/text&gt;
                  &lt;/p&gt;
                  &lt;/leg:longtitle&gt;
                  
                  <b>Becomes</b>
               
                  &lt;primlaw:synopsis&gt;
                  &lt;bodytext&gt;
                  &lt;p&gt;
                  &lt;text&gt;An Act to Re-enact with Amendments the Law relating to Transport including the Law with respect to Railways&lt;/text&gt;
                  &lt;/p&gt;
                  &lt;/bodytext&gt;
                  &lt;/primlaw:synopsis&gt;
                  
</pre>
                                <pre>
                            <b>Handling of leg:longtitle/glp:note scenario:</b>
&lt;leg:longtitle searchtype="LEGISLATION"&gt;
    &lt;glp:note&gt;
        &lt;heading&gt;
            &lt;title align="left"&gt;Editorial note.&lt;/title&gt;
        &lt;/heading&gt;
        &lt;p&gt;
            &lt;text&gt;
                &lt;emph typestyle="it"&gt;The long title was repealed by the 
                    &lt;emph typestyle="it"&gt;Marine Safety Act 1998&lt;/emph&gt;.&lt;/emph&gt;
            &lt;/text&gt;
        &lt;/p&gt;
    &lt;/glp:note&gt;
&lt;/leg:longtitle&gt;

<b>Becomes</b>
                            
   

           &lt;primlaw:synopsis&gt;
                &lt;bodytext&gt;
                    &lt;note&gt;
                        &lt;heading&gt;
                            &lt;title align="left"&gt;Editorial note.&lt;/title&gt;
                        &lt;/heading&gt;
                   &lt;bodytext&gt;
                    &lt;p&gt;
                        &lt;text&gt;
                            &lt;emph typestyle="it"&gt;The long title was repealed by the
                                &lt;emph typestyle="it"&gt;Marine Safety Act 1998&lt;/emph&gt;.&lt;/emph&gt;
                        &lt;/text&gt;
                    &lt;/p&gt;
                &lt;/bodytext&gt;
                    &lt;/note&gt;
                    &lt;/bodytext&gt;
            &lt;/primlaw:synopsis&gt;
            
</pre>
                                <note>MLV: Add to primlaw:synopsis documentation - "In AU and NZ
                                    refers to this content as leg:longtitle." Is documents contain
                                    both leg:longtitle and leg:preamble, the leg:preamble must be
                                    mapped to primlaw:level @type="preamble".</note>
                                <note>The target element <targetxml>primlaw:synopsis</targetxml> is
                                    coming under legis:body and not in
                                        <targetxml>legisinfo:legisinfo</targetxml></note>
                            </li>
                        </ul>
                        <ul>
                            <li>
                                <sourcexml>leg:sectionlist</sourcexml> comes with following
                                scenarios: <ol>
                                    <li><b>Rule for sectionlist appearing within leg:info</b>: <ul>
                                            <li> When leg:body/leg:info/leg:sectionlist does not
                                                contain @id OR @id that DOES NOT contain value
                                                "xxxxx_PROVLIST" (xxxxx can be any text), then
                                                create a new primlaw:level with
                                                leveltype="unclassified". This level is solely for
                                                the sectionlist content within leg:info. Insert all
                                                sectionlist element content within this single
                                                unclassified level tags and table tags are retained
                                                as they are in the source. The conversion rule is
                                                  <sourcexml>leg:sectionlist</sourcexml> becomes
                                                  <targetxml>navaid:navigationaid</targetxml> with
                                                attribute <targetxml>@type="sectionlist"</targetxml>
                                                and required child <targetxml>bodytext</targetxml>
                                                <note>If <sourcexml>leg:sectionlist</sourcexml> has
                                                  information about <b>LawNow Home Page</b> and
                                                  <b>Government Website</b> captured in table then
                                                  it becomes
                                                  <targetxml>navaid:navigationaid</targetxml> with
                                                  attribute
                                                  <targetxml>@type="links"</targetxml></note>
                                                <note>Refer <xref href="../../common_newest/Rosetta_table-LxAdv-table.dita">table</xref> for handling of
                                                  <sourcexml>table</sourcexml></note>
                                                <note>Refer <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">remotelink</xref> for handling of
                                                  <sourcexml>remotelink</sourcexml></note>
                                                <pre>
                <b><i>Source XML </i></b>
<b>Example 1:</b>

&lt;leg:sectionlist&gt;
&lt;p&gt;
    &lt;table frame="none" pgwide="1"&gt;
    &lt;tgroup cols="2" colsep="0" rowsep="0"&gt;
    &lt;colspec colwidth="12*" colname="c1" colnum="1"/&gt;
    &lt;colspec colwidth="12*" colname="c2" colnum="2"/&gt;
    &lt;tbody&gt;
    &lt;row&gt;
    &lt;entry align="left"&gt;&lt;remotelink service="DOC-ID" remotekey1="DOC-ID" dpsi="0EWE" remotekey2="LAWNOW_LEG_LAUNCH_TAS"&gt;LawNow Home Page&lt;/remotelink&gt;&lt;/entry&gt;
    &lt;entry align="right"&gt;&lt;remotelink hrefclass="http" href="www.thelaw.tas.gov.au/linkto.w3p;doc_id=230++2009+AT@EN+CURRENT" newwindow="YES"&gt;Government Website&lt;/remotelink&gt;
    &lt;/entry&gt;
    &lt;/row&gt;
    &lt;/tbody&gt;
   &lt;/tgroup&gt;
&lt;/table&gt;
&lt;/p&gt;
&lt;/leg:sectionlist&gt;
 

<b>Examplel 2:</b>
                      
&lt;leg:sectionlist&gt;
    &lt;p&gt;
    &lt;text&gt;For further information, please select from the following:&lt;/text&gt;
    &lt;/p&gt;
    &lt;p&gt;
    &lt;text&gt;
    &lt;remotelink remotekey1="REFPTID" refpt="TAS_ACT_2009-88_PROVLIST" dpsi="2323" docidref="BCDE_5678" service="DOC-ID"&gt;List of Provisions&lt;/remotelink&gt;&amp;#160;&amp;#160;|&amp;#160;&amp;#160;&lt;remotelink remotekey1="REFPTID" refpt="TAS_ACT_2009-88_LEGHIST" dpsi="2323" docidref="BCDE_5678" service="DOC-ID"&gt;Legislative History&lt;/remotelink&gt;&amp;#160;&amp;#160;|&amp;#160;&amp;#160;&lt;remotelink remotekey1="REFPTID" refpt="TAS_ACT_2009-88_LAWNOWHISTORICALVERSIONS" dpsi="2323" docidref="BCDE_5678" service="DOC-ID"&gt;Historical Versions&lt;/remotelink&gt;&amp;#160;&amp;#160;|&amp;#160;&amp;#160;&lt;remotelink remotekey1="REFPTID" refpt="TAS_ACT_2009-88_DEFLIST" dpsi="2323" docidref="BCDE_5678" service="DOC-ID"&gt;Defined Terms&lt;/remotelink&gt;
    &lt;/text&gt;
    &lt;/p&gt;
    &lt;/leg:sectionlist&gt;

&lt;leg:sectionlist&gt;
    &lt;p&gt;
    &lt;text&gt;
        &lt;inlineobject type="image" filename="mb.gif" attachment="web-server" alttext="Click the Express Search icon to search all subscribed cases and commentary for the selected provision" width="21px"/&gt;&amp;#160;Click the &lt;remotelink href="www.lexisnexis.com.au/expresssearch/default.htm" hrefclass="http" newwindow="YES"&gt;Express Search&lt;/remotelink&gt; icon to search all subscribed cases and commentary for the selected provision.
        &lt;/text&gt;
    &lt;/p&gt;
&lt;/leg:sectionlist&gt;
</pre>
                                                <pre>
    <b><i>Target XML 1</i></b>
    
<b>Example 1:</b>
    

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


<b>Example 2:</b>
  &lt;primlaw:level leveltype="unclassified"&gt;
  &lt;navaid:navigationaid type="sectionlist"&gt;
    &lt;bodytext&gt;
        &lt;p&gt;
            &lt;text&gt;For further information, please select from the following:&lt;/text&gt;
        &lt;/p&gt;        
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
                &lt;/ref:crossreference&gt;  |             
                &lt;ref:crossreference crossreferencetype="seeAlso"&gt;
                &lt;ref:content&gt;Legislative History&lt;/ref:content&gt;
                &lt;ref:locator anchoridref="TAS_ACT_2009-88_LEGHIST"&gt;
                    &lt;ref:locator-key&gt;
                        &lt;ref:key-name name="DOC-ID"/&gt;
                        &lt;ref:key-value value="2323-BCDE_5678"/&gt;
                    &lt;/ref:locator-key&gt;
                &lt;/ref:locator&gt;
                &lt;/ref:crossreference&gt;  |
               &lt;ref:crossreference crossreferencetype="seeAlso"&gt;
                &lt;ref:content&gt;Historical Versions&lt;/ref:content&gt;
                &lt;ref:locator anchoridref="TAS_ACT_2009-88_LAWNOWHISTORICALVERSIONS"&gt;
                    &lt;ref:locator-key&gt;
                        &lt;ref:key-name name="DOC-ID"/&gt;
                        &lt;ref:key-value value="2323-BCDE_5678"/&gt;
                    &lt;/ref:locator-key&gt;
                &lt;/ref:locator&gt;
                &lt;/ref:crossreference&gt;  |
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
        &lt;p&gt;&lt;text&gt;Click the &lt;ref:lnlink service="URL"&gt;
  &lt;ref:marker&gt;Government Website&lt;/ref:marker&gt;
  &lt;ref:locator&gt;
    &lt;ref:locator-key&gt;
      &lt;ref:key-name name="URL"/&gt;
      &lt;ref:key-value value="http://www.thelaw.tas.gov.au/linkto.w3p;doc_id=230++2009+AT@EN+CURRENT"/&gt;
    &lt;/ref:locator-key&gt;
  &lt;/ref:locator&gt;
&lt;/ref:lnlink&gt; icon to search all subscribed cases and 
            commentary for the selected provision.&lt;/text&gt;&lt;/p&gt;
    &lt;/bodytext&gt;
&lt;/navaid:navigationaid&gt;
&lt;/primlaw:level&gt;
    
</pre>
                                            </li>
                                        </ul>
                                    </li>
                                    <li><b>Rule for <sourcexml>leg:sectionlist</sourcexml> having
                                                <sourcexml>@id</sourcexml></b>: <ul>
                                            <li>When <sourcexml>leg:sectionlist</sourcexml> contains
                                                @id AND @id contains value "xxxxx_PROVLIST" (xxxxx
                                                can be any text), then create a new
                                                  <targetxml>primlaw:level</targetxml> with
                                                  <targetxml>leveltype="table-of-contents"</targetxml>.
                                                The <sourcexml>leg:sectionlist/@id</sourcexml>
                                                <b>becomes</b>
                                                <targetxml>primlaw:level[@leveltype="table-of-contents"]/@xml:id</targetxml>
                                                and <sourcexml>leg:sectionlist</sourcexml> will
                                                  <b>becomes</b>
                                                <targetxml>primlaw:bodytext/toc</targetxml> with
                                                attribute
                                                  <targetxml>@toctype="sectionlist"</targetxml>.</li>
                                            <li>The child elements will be converted as: <ul>
                                                  <li><sourcexml>leg:sectionlist/leg:heading/title</sourcexml>
                                                  <b>becomes</b>
                                                  <targetxml>primlaw:level[@leveltype="table-of-contents"]/heading/title</targetxml></li>
                                                  <li>
                                                  <p>Conversion is based on the following scenarios
                                                  and retaining the two level TOC formatting: <ul>
                                                  <li><b>Scenario 1</b>: When first row contains
                                                  single entry then conversion needs to create
                                                  <targetxml>toc-entry</targetxml> as a outermost
                                                  level of next two entry rows (means one entry row,
                                                  that should be on the first level of the toc with
                                                  all following two entry rows nested within).
                                                  <p>Each <sourcexml>row</sourcexml> in table will
                                                  become <targetxml>toc-entry</targetxml> with child
                                                  <targetxml>desig</targetxml> and
                                                  <targetxml>title</targetxml>
                                                  <note>If <sourcexml>row</sourcexml> contains only
                                                  one <sourcexml>entry</sourcexml> then map it to
                                                  <targetxml>desig</targetxml>.</note>
                                                  <note>If row contains two entry then first entry
                                                  will become <targetxml>desig</targetxml> followed
                                                  by the second entry which will map to
                                                  <targetxml>title</targetxml>.</note></p>
                                                  <p>Refer the below <b>Scenario 1</b> input and
                                                  target example for your reference.</p></li>
                                                  <li><b>Scenario 2</b>: When the first row of table
                                                  contains two entries then conversion needs to
                                                  create an empty <targetxml>toc-entry</targetxml>
                                                  level so that all of the following two entry rows
                                                  are nested within. <p>Each
                                                  <sourcexml>row</sourcexml> in table will become
                                                  <targetxml>toc-entry</targetxml> with child
                                                  <targetxml>desig</targetxml> and
                                                  <targetxml>title</targetxml>
                                                  <note>The first entry in a
                                                  <sourcexml>row</sourcexml> will become
                                                  <targetxml>desig</targetxml> followed by the
                                                  second entry which will map to
                                                  <targetxml>title</targetxml>.</note></p>
                                                  <p>Refer the below <b>Scenario 2</b> input and
                                                  target example for your reference.</p>
                                                  </li>
                                                  <li><b>Scenario 3</b>: When the first row of table
                                                  contains two entries then conversion needs to
                                                  create an empty <targetxml>toc-entry</targetxml>
                                                  level so that all of the following two entry rows
                                                  are nested within. And one entry row appears later
                                                  (means 'at the end of the table for endnotes').
                                                  <p>Each <sourcexml>row</sourcexml> in table will
                                                  become <targetxml>toc-entry</targetxml> with child
                                                  <targetxml>desig</targetxml> and
                                                  <targetxml>title</targetxml>
                                                  <note>The first entry in a
                                                  <sourcexml>row</sourcexml> will become
                                                  <targetxml>desig</targetxml> followed by the
                                                  second entry which will map to
                                                  <targetxml>title</targetxml>.</note></p>
                                                  <p>Refer the below <b>Scenario 3</b> input and
                                                  target example for your reference.</p>
                                                  </li>
                                                  <li><b>Scenario 4</b>: When complete table
                                                  contains only one entry row then conversion needs
                                                  to map <targetxml>toc-entry</targetxml> with child
                                                  <targetxml>title</targetxml> or
                                                  <targetxml>desig</targetxml>. <p>Refer the below
                                                  <b>Scenario 4</b> input and target example for
                                                  your reference.</p>
                                                  </li>
                                                  </ul></p>
                                                  <ul>
                                                  <li><sourcexml>entry/remotelink[@service='DOC-ID']</sourcexml>
                                                  becomes
                                                  <targetxml>toc-entry/heading/title</targetxml> and
                                                  <sourcexml>remotelink</sourcexml> attributes
                                                  become <targetxml>toc-entry</targetxml> attributes
                                                  as follows: <ul>
                                                  <li>If <sourcexml>@remotekey1="DOC-ID"</sourcexml>
                                                  then <ul>
                                                  <li><targetxml>@ref:locatorkeyprotocol</targetxml>
                                                  will have the value "DOC-ID".</li>
                                                  <li><targetxml>@ref:locatorkey</targetxml> will be
                                                  the value of <sourcexml>@dpsi</sourcexml> followed
                                                  by hyphen and concatenated with
                                                  <sourcexml>@refpt</sourcexml> or
                                                  <sourcexml>@remotekey2</sourcexml>, which ever is
                                                  present (if both are present, use
                                                  <sourcexml>@remotekey2</sourcexml>).</li>
                                                  </ul></li>
                                                  <li>If
                                                  <sourcexml>@remotekey1="REFPTID"</sourcexml> then <ul>
                                                  <li><targetxml>@ref:locatorkeyprotocol</targetxml>
                                                  will have the value "DOC-ID".</li>
                                                  <li><targetxml>@ref:locatorkey</targetxml> will be
                                                  the value of <sourcexml>@dpsi</sourcexml> followed
                                                  by hyphen and concatenated with
                                                  <sourcexml>@docidref</sourcexml>.</li>
                                                  <li><targetxml>@anchoridref</targetxml> with value
                                                  from <sourcexml>@refpt</sourcexml> or
                                                  <sourcexml>@remotekey2</sourcexml>, which ever is
                                                  present (if both are present, use
                                                  <sourcexml>@refpt</sourcexml>). </li>
                                                  </ul>
                                                  <note>If there is only one
                                                  <sourcexml>row</sourcexml> then
                                                  <sourcexml>entry/remotelink</sourcexml> becomes
                                                  <targetxml>toc-entry/heading/desig</targetxml>
                                                  .</note>
                                                  <note>If <sourcexml>remotelink/@dpsi</sourcexml>
                                                  is not present, use value from
                                                  <sourcexml>docinfo:dpsi/@id-string</sourcexml> or
                                                  capture value from the LBU manifest file.</note>
                                                  <note><targetxml>ref:locator/@anchoridref</targetxml>
                                                  that begins with a number must have an underscore
                                                  added at start. Also apply other identifier data
                                                  type format as used for xml:id and ref:anchor/@id,
                                                  e.g. change colon to underscore.</note>
                                                  </li>
                                                  </ul>
                                                  <note>In the above example
                                                  <sourcexml>lnlink</sourcexml> will be dropped from
                                                  conversion. Also, added the attribute
                                                  <targetxml>@toctype="sectionlist"</targetxml> to
                                                  <targetxml>toc</targetxml>.</note>
                                                  </li>
                                                  </ul>
                                                  </li>
                                                </ul>
                                                <pre>
              <b><i><b>Scenario 1 - Example</b>: When first row contains single entry and second row contains two entries</i></b>

        
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
              &lt;remotelink service="DOC-ID" remotekey1="REFPTID" dpsi="1111" docidref="ABCD_9876" refpt="NSW_ACT_2007-93_SEC1"&gt;Name of Act&lt;/remotelink&gt;
              &amp;#160;
              &lt;lnlink status="valid" service="SEARCH" scope="All Subscribed Australian Cases and Commentary" scope-protocol="combined-source-name"&gt;&lt;marker&gt;&lt;inlineobject width="21px" type="image" filename="mb.gif" attachment="web-server" alttext="click to find cases &amp;amp; commentary"/&gt;&lt;/marker&gt;&lt;api-params&gt;&lt;param name="expressSearch" value="true"/&gt;&lt;param name="searchString" value="LOCAL COURT ACT 2007 w/s LEG-REF(1)"/&gt;&lt;/api-params&gt;&lt;/lnlink&gt;
            &lt;/entry&gt;
          &lt;/row&gt;
          &lt;row&gt;
            &lt;entry&gt;2&lt;/entry&gt;
            &lt;entry&gt;
              &lt;remotelink service="DOC-ID" remotekey1="REFPTID" dpsi="1111" docidref="ABCD_9876" refpt="NSW_ACT_2007-93_SEC2"&gt;Commencement&lt;/remotelink&gt;
              &amp;#160;
              &lt;lnlink status="valid" service="SEARCH" scope="All Subscribed Australian Cases and Commentary" scope-protocol="combined-source-name"&gt;&lt;marker&gt;&lt;inlineobject width="21px" type="image" filename="mb.gif" attachment="web-server" alttext="click to find cases &amp;amp; commentary"/&gt;&lt;/marker&gt;&lt;api-params&gt;&lt;param name="expressSearch" value="true"/&gt;&lt;param name="searchString" value="LOCAL COURT ACT 2007 w/s LEG-REF(2)"/&gt;&lt;/api-params&gt;&lt;/lnlink&gt;
            &lt;/entry&gt;
         &lt;/row&gt;
         &lt;!-- ... --&gt;
        &lt;/tbody&gt;
     &lt;/tgroup&gt;
  &lt;/table&gt;
 &lt;/p&gt;
&lt;/leg:sectionlist&gt;


                </pre>
                                                <pre>
              <b><i>Target Example</i></b>

&lt;primlaw:level leveltype="table-of-contents"&gt;
    &lt;ref:anchor id="NSW_ACT_2007-93_PROVLIST" anchortype="global"/&gt;
    &lt;heading&gt;
        &lt;title&gt;List of provisions&lt;/title&gt;
    &lt;/heading&gt;
    &lt;primlaw:bodytext&gt;
        &lt;toc toctype="sectionlist"&gt;    
            &lt;toc-entry anchoridref="NSW_ACT_2007-93_ACTPT1" ref:locatorkey="1111-ABCD_9876" ref:locatorkeyprotocol="DOC-ID"&gt;
                &lt;heading&gt;
                    &lt;desig&gt;Part 1-Preliminary&lt;/desig&gt;	
                &lt;/heading&gt;	
                &lt;toc-entry anchoridref="NSW_ACT_2007-93_SEC1" ref:locatorkey="1111-ABCD_9876" ref:locatorkeyprotocol="DOC-ID"&gt;
                    &lt;heading&gt;
                        &lt;desig&gt;1&lt;/desig&gt;
                        &lt;title&gt;Name of Act&lt;/title&gt;
                  &lt;/heading&gt;
                &lt;/toc-entry&gt;
                &lt;toc-entry anchoridref="NSW_ACT_2007-93_SEC2" ref:locatorkey="1111-ABCD_9876" ref:locatorkeyprotocol="DOC-ID"&gt;
                    &lt;heading&gt;
                        &lt;desig&gt;2&lt;/desig&gt;
                        &lt;title&gt;Commencement&lt;/title&gt;                       
                    &lt;/heading&gt;
                &lt;/toc-entry&gt;
            &lt;/toc-entry&gt;            
            &lt;!-- ... --&gt;
        &lt;/toc&gt;
    &lt;/primlaw:bodytext&gt;
&lt;/primlaw:level&gt;

                  </pre>
                                                <pre>

              <b><i><b>Scenario 2 - Example</b>: First row of table contains two entries</i></b>


&lt;leg:sectionlist id="WA_ACT_1830-800_PROVLIST"&gt;
    &lt;leg:heading&gt;
        &lt;title&gt;
            &lt;refpt id="WA_ACT_1830-800_PROVLIST" type="ext"&gt;&lt;/refpt&gt;List of provisions&lt;/title&gt;
    &lt;/leg:heading&gt;
    &lt;p&gt;
        &lt;table frame="none"&gt;
            &lt;tgroup cols="2" colsep="0" rowsep="0"&gt;
                &lt;colspec colnum="1" colname="c1" colwidth="3*" /&gt;
                &lt;colspec colnum="2" colname="c2" colwidth="12*" /&gt;
                &lt;tbody&gt;
                    &lt;row&gt;
                        &lt;entry&gt;[1.]&lt;/entry&gt;
                        &lt;entry&gt;
                            &lt;remotelink remotekey1="REFPTID" service="DOC-ID" refpt="WA_ACT_1830-800_PROV1" docidref="WA_ACT_1830-800_BODY"&gt;Recited Acts repealed&lt;/remotelink&gt; &lt;/entry&gt;
                    &lt;/row&gt;
                    &lt;row&gt;
                        &lt;entry&gt;2.&lt;/entry&gt;
                        &lt;entry&gt;
                            &lt;remotelink remotekey1="REFPTID" service="DOC-ID" refpt="WA_ACT_1830-800_PROV2" docidref="WA_ACT_1830-800_BODY"&gt;For remedying frauds committed on creditors by wills&lt;/remotelink&gt; &lt;/entry&gt;
                    &lt;/row&gt;
                    &lt;row&gt;
                        &lt;entry&gt;3.&lt;/entry&gt;
                        &lt;entry&gt;
                            &lt;remotelink remotekey1="REFPTID" service="DOC-ID" refpt="WA_ACT_1830-800_PROV3" docidref="WA_ACT_1830-800_BODY"&gt;Enabling creditors to recover upon bonds, etc.&lt;/remotelink&gt; &lt;/entry&gt;
                    &lt;/row&gt;
                    &lt;!--...--&gt;
                    &lt;row&gt;
                        &lt;entry namest="c1" nameend="c2"&gt;
                            &lt;remotelink remotekey1="REFPTID" service="DOC-ID" refpt="WA_ACT_1830-800_NOTES" docidref="WA_ACT_1830-800_NOTESTBLAMEND"&gt;Notes&lt;/remotelink&gt;
                        &lt;/entry&gt;
                    &lt;/row&gt;
                    &lt;row&gt;
                        &lt;entry namest="c1" nameend="c2"&gt;
                          &lt;remotelink remotekey1="REFPTID" service="DOC-ID" refpt="WA_ACT_1830-800_NOTESTBLAMEND" docidref="WA_ACT_1830-800_NOTESTBLAMEND"&gt;Compilation table&lt;/remotelink&gt;
                        &lt;/entry&gt;
                   &lt;/row&gt;
                &lt;/tbody&gt;
            &lt;/tgroup&gt;
        &lt;/table&gt;
    &lt;/p&gt;
&lt;/leg:sectionlist&gt;


                </pre>
                                                <pre>
              <b><i>Target Example</i></b>

&lt;primlaw:level leveltype="table-of-contents"&gt;
    &lt;ref:anchor id="WA_ACT_1830-800_PROVLIST" anchortype="global"/&gt;
    &lt;heading&gt;
        &lt;title&gt;List of provisions&lt;/title&gt;
    &lt;/heading&gt;
    &lt;primlaw:bodytext&gt;
        &lt;toc toctype="sectionlist"&gt; 
            &lt;toc-entry&gt;
                &lt;heading/&gt;
                &lt;toc-entry anchoridref="WA_ACT_1830-800_PROV1" ref:locatorkey="0000-WA_ACT_1830-800_BODY" ref:locatorkeyprotocol="DOC-ID"&gt;
                    &lt;heading&gt;
                        &lt;desig&gt;[1.]&lt;/desig&gt;
                        &lt;title&gt;Recited Acts repealed&lt;/title&gt;
                    &lt;/heading&gt;
                &lt;/toc-entry&gt;
                &lt;toc-entry anchoridref="WA_ACT_1830-800_PROV2" ref:locatorkey="0000-WA_ACT_1830-800_BODY" ref:locatorkeyprotocol="DOC-ID"&gt;
                    &lt;heading&gt;
                        &lt;desig&gt;2.&lt;/desig&gt;
                        &lt;title&gt;For remedying frauds committed on creditors by wills&lt;/title&gt;
                    &lt;/heading&gt;
                &lt;/toc-entry&gt;
                &lt;toc-entry anchoridref="WA_ACT_1830-800_PROV3" ref:locatorkey="0000-WA_ACT_1830-800_BODY" ref:locatorkeyprotocol="DOC-ID"&gt;
                    &lt;heading&gt;
                        &lt;desig&gt;3.&lt;/desig&gt;
                        &lt;title&gt;Enabling creditors to recover upon bonds, etc.&lt;/title&gt;
                    &lt;/heading&gt;
                &lt;/toc-entry&gt;
                &lt;!--...--&gt;
            &lt;/toc-entry&gt;
            &lt;toc-entry anchoridref="WA_ACT_1830-800_NOTES" ref:locatorkey="0000-WA_ACT_1830-800_NOTESTBLAMEND" ref:locatorkeyprotocol="DOC-ID"&gt; 
                &lt;heading&gt;
                    &lt;desig&gt;Notes&lt;/desig&gt;
                &lt;/heading&gt;
            &lt;/toc-entry&gt;
            &lt;toc-entry anchoridref="WA_ACT_1830-800_NOTESTBLAMEND" ref:locatorkey="0000-WA_ACT_1830-800_NOTESTBLAMEND" ref:locatorkeyprotocol="DOC-ID"&gt; 
                &lt;heading&gt;
                    &lt;desig&gt;Compilation table&lt;/desig&gt;
                &lt;/heading&gt;
            &lt;/toc-entry&gt;
        &lt;/toc&gt;
    &lt;/primlaw:bodytext&gt;
&lt;/primlaw:level&gt;

                  </pre>
                                                <pre>

              <b><i><b>Scenario 3 - Example</b>: If table having 'two entry' rows then 'one entry' rows appear later (often at the end of the table for endnotes)</i></b>


&lt;leg:sectionlist id="ACT_REG_1991-10_PROVLIST"&gt;
    &lt;leg:heading&gt;
        &lt;title&gt;&lt;refpt id="ACT_REG_1991-10_PROVLIST" type="ext"/&gt;List of provisions&lt;/title&gt;
    &lt;/leg:heading&gt;
    &lt;p&gt;
        &lt;table frame="none"&gt;
            &lt;tgroup cols="2" colsep="0" rowsep="0"&gt;
                &lt;colspec colwidth="3*" colname="c1" colnum="1"/&gt;
                &lt;colspec colwidth="12*" colname="c2" colnum="2"/&gt;
                &lt;tbody&gt;
                    &lt;!--......--&gt;
                    &lt;row&gt;
                        &lt;entry namest="c1" nameend="c2"&gt;
                            &lt;remotelink service="DOC-ID" remotekey1="REFPTID" refpt="ACT_REG_1991-10_PT4"&gt;Part&amp;#x00A0;4 Miscellaneous&lt;/remotelink&gt;
                        &lt;/entry&gt;
                    &lt;/row&gt;
                    &lt;row&gt;
                        &lt;entry&gt;11&lt;/entry&gt;
                        &lt;entry&gt;&lt;remotelink service="DOC-ID" remotekey1="REFPTID" refpt="ACT_REG_1991-10_PROV11"&gt;Time for decision on internal review&amp;#x2014;Act,
                            s&amp;#x00A0;186 (2)&lt;/remotelink&gt;&amp;#x00A0;&lt;lnlink status="valid" service="SEARCH" scope="All Subscribed Australian Cases and Commentary"
                                scope-protocol="combined-source-name"&gt;&lt;marker&gt;&lt;inlineobject width="21px" type="image" filename="mb.gif" attachment="web-server"
                                    alttext="click to find cases &amp;amp; commentary"/&gt;&lt;/marker&gt;&lt;api-params&gt;&lt;param name="expressSearch" value="true"/&gt;&lt;param name="searchString"
                                        value="OCCUPATIONAL HEALTH AND SAFETY REGULATION 1991 w/s LEG-REF(11)"/&gt;&lt;/api-params&gt;&lt;/lnlink&gt;&lt;/entry&gt;
                    &lt;/row&gt;
                    &lt;row&gt;
                        &lt;entry namest="c1" nameend="c2"&gt;
                            &lt;remotelink service="DOC-ID" remotekey1="REFPTID" refpt="ACT_REG_1991-10_NOTES"&gt;Endnotes&lt;/remotelink&gt;
                        &lt;/entry&gt;
                    &lt;/row&gt;
                &lt;/tbody&gt;
            &lt;/tgroup&gt;
        &lt;/table&gt;
    &lt;/p&gt;
&lt;/leg:sectionlist&gt;

</pre>
                                                <pre>
              <b><i>Target Example</i></b>

&lt;primlaw:level leveltype="table-of-contents"&gt;
    &lt;ref:anchor id="ACT_REG_1991-10_PROVLIST" anchortype="global"/&gt;
    &lt;heading&gt;
        &lt;title&gt;List of provisions&lt;/title&gt;
    &lt;/heading&gt;
    &lt;primlaw:bodytext&gt;
        &lt;toc toctype="sectionlist"&gt; 
            &lt;!--......--&gt;
            &lt;toc-entry anchoridref="ACT_REG_1991-10_PT4" ref:locatorkey="0000-@docidref" ref:locatorkeyprotocol="DOC-ID"&gt;
                &lt;heading&gt;
                    &lt;desig&gt;Part 4 Miscellaneous&lt;/desig&gt;
                &lt;/heading&gt;
                &lt;toc-entry anchoridref="ACT_REG_1991-10_PROV11" ref:locatorkey="0000-@docidref" ref:locatorkeyprotocol="DOC-ID"&gt;
                    &lt;heading&gt;
                        &lt;desig&gt;11&lt;/desig&gt;
                        &lt;title&gt;Time for decision on internal review&amp;#x2014;Act, s&amp;#x00A0;186 (2)&lt;/title&gt;
                    &lt;/heading&gt;
                &lt;/toc-entry&gt;
            &lt;/toc-entry&gt;
            &lt;toc-entry anchoridref="ACT_REG_1991-10_NOTES" ref:locatorkey="0000-@docidref" ref:locatorkeyprotocol="DOC-ID"&gt;
                &lt;heading&gt;
                    &lt;desig&gt;Endnotes&lt;/desig&gt;
                &lt;/heading&gt;
            &lt;/toc-entry&gt;
        &lt;/toc&gt;
    &lt;/primlaw:bodytext&gt;
&lt;/primlaw:level&gt;
  
                  
                  </pre>
                                                <pre>

              <b><i><b>Scenario 4 - Example</b>: Having a single entry within a row</i></b>


&lt;leg:sectionlist id="WA_ACT_1982-22_PROVLIST"&gt;
    &lt;leg:heading&gt;
        &lt;title&gt;
            &lt;refpt id="WA_ACT_1982-22_PROVLIST" type="ext"&gt;&lt;/refpt&gt;List of provisions&lt;/title&gt;
    &lt;/leg:heading&gt;
    &lt;p&gt;
        &lt;table frame="none"&gt;
            &lt;tgroup cols="2" colsep="0" rowsep="0"&gt;
                &lt;colspec colnum="1" colname="c1" colwidth="3*" /&gt;
                &lt;colspec colnum="2" colname="c2" colwidth="12*" /&gt;
                &lt;tbody&gt;
                    &lt;row&gt;
                        &lt;entry namest="c1" nameend="c2"&gt;
                            &lt;remotelink remotekey1="REFPTID" service="DOC-ID" refpt="WA_ACT_1982-22_PTI" docidref="WA_ACT_1982-22_PTI"&gt;Part I &amp;#x2014; Preliminary&lt;/remotelink&gt;
                        &lt;/entry&gt;
                    &lt;/row&gt;
                    &lt;!--......--&gt;
                    &lt;row&gt;
                        &lt;entry namest="c1" nameend="c2"&gt;
                            &lt;remotelink remotekey1="REFPTID" service="DOC-ID" refpt="WA_ACT_1982-22_SCH3DV1" docidref="WA_ACT_1982-22_SCH3DV1"&gt;Division 1 &amp;#x2014; Provisions for Petroleum and Energy Legislation Amendment Act 2010&lt;/remotelink&gt;
                        &lt;/entry&gt;
                    &lt;/row&gt;
                    &lt;row&gt;
                        &lt;entry namest="c1" nameend="c2"&gt;
                            &lt;remotelink remotekey1="REFPTID" service="DOC-ID" refpt="WA_ACT_1982-22_SCH3DV2" docidref="WA_ACT_1982-22_SCH3DV2"&gt;Division 2 &amp;#x2014; Provisions for Petroleum (Submerged Lands) Amendment Act 2011&lt;/remotelink&gt;
                        &lt;/entry&gt;
                    &lt;/row&gt;
                    &lt;row&gt;
                        &lt;entry namest="c1" nameend="c2"&gt;
                            &lt;remotelink remotekey1="REFPTID" service="DOC-ID" refpt="WA_ACT_1982-22_SCH5" docidref="WA_ACT_1982-22_SCH5DV1"&gt;Schedule 5 &amp;#x2014; Occupational safety and health&lt;/remotelink&gt;
                        &lt;/entry&gt;
                    &lt;/row&gt;
                    &lt;row&gt;
                        &lt;entry namest="c1" nameend="c2"&gt;
                            &lt;remotelink remotekey1="REFPTID" service="DOC-ID" refpt="WA_ACT_1982-22_SCH5DV1" docidref="WA_ACT_1982-22_SCH5DV1"&gt;Division 1 &amp;#x2014; Introduction&lt;/remotelink&gt;
                        &lt;/entry&gt;
                    &lt;/row&gt;
                    &lt;row&gt;
                        &lt;entry namest="c1" nameend="c2"&gt;
                            &lt;remotelink remotekey1="REFPTID" service="DOC-ID" refpt="WA_ACT_1982-22_NOTES" docidref="WA_ACT_1982-22_NOTESTBLAMEND"&gt;Notes&lt;/remotelink&gt;
                        &lt;/entry&gt;
                    &lt;/row&gt;
                    &lt;row&gt;
                        &lt;entry namest="c1" nameend="c2"&gt;
                            &lt;remotelink remotekey1="REFPTID" service="DOC-ID" refpt="WA_ACT_1982-22_NOTESTBLAMEND" docidref="WA_ACT_1982-22_NOTESTBLAMEND"&gt;Compilation table&lt;/remotelink&gt;
                        &lt;/entry&gt;
                    &lt;/row&gt;
                &lt;/tbody&gt;
            &lt;/tgroup&gt;
        &lt;/table&gt;
    &lt;/p&gt;
&lt;/leg:sectionlist&gt;

                </pre>
                                                <pre>
              <b><i>Target Example</i></b>

&lt;primlaw:level leveltype="table-of-contents"&gt;
    &lt;ref:anchor id="WA_ACT_1982-22_PROVLIST" anchortype="global"/&gt;
    &lt;heading&gt;
        &lt;title&gt;List of provisions&lt;/title&gt;
    &lt;/heading&gt;
    &lt;primlaw:bodytext&gt;
        &lt;toc toctype="sectionlist"&gt; 
            &lt;toc-entry anchoridref="WA_ACT_1982-22_PTI" ref:locatorkey="0000-WA_ACT_1982-22_PTI" ref:locatorkeyprotocol="DOC-ID"&gt;
                &lt;heading&gt;
                    &lt;desig&gt;Part I — Preliminary&lt;/desig&gt;
                &lt;/heading&gt;
            &lt;/toc-entry&gt;
            &lt;!--......--&gt;
            &lt;toc-entry anchoridref="WA_ACT_1982-22_SCH3DV1" ref:locatorkey="0000-WA_ACT_1982-22_SCH3DV1" ref:locatorkeyprotocol="DOC-ID"&gt;
                &lt;heading&gt;
                    &lt;desig&gt;Division 1 — Provisions for Petroleum and Energy Legislation Amendment Act 2010&lt;/desig&gt;
                &lt;/heading&gt;
            &lt;/toc-entry&gt;
            &lt;toc-entry anchoridref="WA_ACT_1982-22_SCH3DV2" ref:locatorkey="0000-WA_ACT_1982-22_SCH3DV2" ref:locatorkeyprotocol="DOC-ID"&gt;
                &lt;heading&gt;
                    &lt;desig&gt;Division 2 — Provisions for Petroleum (Submerged Lands) Amendment Act 2011&lt;/desig&gt;
                &lt;/heading&gt;
            &lt;/toc-entry&gt;
            &lt;toc-entry anchoridref="WA_ACT_1982-22_SCH5" ref:locatorkey="0000-WA_ACT_1982-22_SCH5DV1" ref:locatorkeyprotocol="DOC-ID"&gt;
                &lt;heading&gt;
                    &lt;desig&gt;Schedule 5 — Occupational safety and health&lt;/desig&gt;
                &lt;/heading&gt;
            &lt;/toc-entry&gt;
            &lt;toc-entry anchoridref="WA_ACT_1982-22_SCH5DV1" ref:locatorkey="0000-WA_ACT_1982-22_SCH5DV1" ref:locatorkeyprotocol="DOC-ID"&gt;
                &lt;heading&gt;
                    &lt;desig&gt;Division 1 — Introduction&lt;/desig&gt;
                &lt;/heading&gt;
            &lt;/toc-entry&gt;
            &lt;toc-entry anchoridref="WA_ACT_1982-22_NOTES" ref:locatorkey="0000-WA_ACT_1982-22_NOTESTBLAMEND" ref:locatorkeyprotocol="DOC-ID"&gt;
                &lt;heading&gt;
                    &lt;desig&gt;Notes&lt;/desig&gt;
                &lt;/heading&gt;
            &lt;/toc-entry&gt;
            &lt;toc-entry anchoridref="WA_ACT_1982-22_NOTESTBLAMEND" ref:locatorkey="0000-WA_ACT_1982-22_NOTESTBLAMEND" ref:locatorkeyprotocol="DOC-ID"&gt;
                &lt;heading&gt;
                    &lt;desig&gt;Compilation table&lt;/desig&gt;
                &lt;/heading&gt;
            &lt;/toc-entry&gt;
        &lt;/toc&gt;
    &lt;/primlaw:bodytext&gt;
&lt;/primlaw:level&gt;
 
                  </pre>
                                                <note> In the target, suppress both attributes
                                                  <targetxml>@anchoridref</targetxml> and
                                                  <targetxml>@ref:locatorkeyprotocol</targetxml>
                                                  inside <targetxml>toc-entry</targetxml> when all
                                                  of the following conditions are met: <ul id="ul_j3x_3vx_z4">
                                                  <li><sourcexml>remotelink</sourcexml> inside
                                                  <sourcexml>entry</sourcexml> does not contain the
                                                  <sourcexml>@docidref</sourcexml> attribute</li>
                                                  <li><targetxml>toc-entry</targetxml> in the target
                                                  does not contain
                                                  <targetxml>@ref:locatorkey</targetxml></li>
                                                  <li><targetxml>toc-entry/@ref:locatorkeyprotocol</targetxml>
                                                  in the target has a value of "<b>DOC-ID</b>"</li>
                                                  </ul> Suppressing these attributes avoids inactive
                                                  (dead) links on the LexisAdvance Platform.</note>
                                                <pre>

              <b><i><b>Scenario 5 - Example</b>: Suppressed the attributes '@anchoridref' and '@ref:locatorkeyprotocol'</i></b>


&lt;leg:sectionlist id="WA_ACT_1957-50_PROVLIST"&gt;
    &lt;leg:heading&gt;
        &lt;title&gt;
            &lt;refpt id="WA_ACT_1957-50_PROVLIST" type="ext"/&gt;List of provisions&lt;/title&gt;
    &lt;/leg:heading&gt;
    &lt;p&gt;
        &lt;table frame="none"&gt;
            &lt;tgroup cols="2" colsep="0" rowsep="0"&gt;
                &lt;colspec colnum="1" colname="c1" colwidth="3*" /&gt;
                &lt;colspec colnum="2" colname="c2" colwidth="12*" /&gt;
                &lt;tbody&gt;
                    &lt;!--......--&gt;
                    &lt;row&gt;
                        &lt;entry namest="c1" nameend="c2"&gt;
                            &lt;remotelink remotekey1="REFPTID" service="DOC-ID" refpt="WA_ACT_1957-50_NOTESTBLAMEND" docidref="WA_ACT_1957-50_NOTESTBLAMEND"&gt;Compilation table&lt;/remotelink&gt;
                        &lt;/entry&gt;
                    &lt;/row&gt;
                    &lt;row&gt;
                        &lt;entry namest="c1" nameend="c2"&gt;
                            &lt;remotelink remotekey1="REFPTID" service="DOC-ID" refpt="WA_ACT_1957-50_INDEX" status="unval"&gt;Defined Terms&lt;/remotelink&gt;
                        &lt;/entry&gt;
                    &lt;/row&gt;
                &lt;/tbody&gt;
            &lt;/tgroup&gt;
        &lt;/table&gt;
    &lt;/p&gt;
&lt;/leg:sectionlist&gt;

                </pre>
                                                <pre>
              <b><i>Target Example</i></b>

&lt;primlaw:level leveltype="table-of-contents"&gt;
    &lt;ref:anchor id="WA_ACT_1957-50_PROVLIST" anchortype="global"/&gt;
    &lt;heading&gt;
        &lt;title&gt;List of provisions&lt;/title&gt;
    &lt;/heading&gt;
    &lt;primlaw:bodytext&gt;
        &lt;toc toctype="sectionlist"&gt; 
            &lt;!--......--&gt;
            &lt;toc-entry anchoridref="WA_ACT_1957-50_NOTESTBLAMEND" ref:locatorkey="0000-WA_ACT_1957-50_NOTESTBLAMEND" ref:locatorkeyprotocol="DOC-ID"&gt;
                &lt;heading&gt;
                    &lt;desig&gt;Compilation table&lt;/desig&gt;
                &lt;/heading&gt;
            &lt;/toc-entry&gt;
            &lt;toc-entry&gt;
                &lt;heading&gt;
                    &lt;desig&gt;Defined Terms&lt;/desig&gt;
                &lt;/heading&gt;
            &lt;/toc-entry&gt;
        &lt;/toc&gt;
    &lt;/primlaw:bodytext&gt;
&lt;/primlaw:level&gt;
 </pre>
                                                <pre>
            <b><i>Source XML having multiple tables:</i></b> 
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
....
&lt;/tbody&gt;
&lt;/tgroup&gt;
&lt;/table&gt;
&lt;!--start new table--&gt;
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
....
&lt;/tbody&gt;
&lt;/tgroup&gt;
&lt;/table&gt;
&lt;/p&gt;
&lt;/leg:sectionlist&gt;
    
</pre>
                                                <pre>
         <b>Target XML:</b>
&lt;primlaw:level xml:id="CTH_ACT_1903-20_20110105_PROVLIST" leveltype="table-of-contents"&gt;
&lt;heading&gt;
&lt;title&gt;List of provisions&lt;/title&gt;
&lt;/heading&gt;
&lt;primlaw:bodytext&gt;
&lt;toc toctype="sectionlist"&gt;
&lt;toc-entry anchoridref="CTH_ACT_1903-20_20110105_ACTPTI" ref:locatorkey="1111-EFGH_2468" ref:locatorkeyprotocol="DOC-ID"&gt;
    &lt;heading&gt;
        &lt;desig&gt;Part I&amp;#x2014;Introductory&lt;/desig&gt;
    &lt;/heading&gt;
&lt;/toc-entry&gt;
....
&lt;toc-entry&gt;
    &lt;heading/&gt;
    &lt;toc-entry anchoridref="CTH_ACT_1903-20_20110105_SEC80A" ref:locatorkey="9876-ABCD_5671" ref:locatorkeyprotocol="DOC-ID"&gt;
        &lt;heading&gt;
            &lt;desig&gt;80A&lt;/desig&gt;
            &lt;title&gt;Falsely representing to be returned soldier, sailor or airman&lt;/title&gt;
        &lt;/heading&gt;
    &lt;/toc-entry&gt;
&lt;/toc-entry&gt;
...
&lt;/toc&gt;
&lt;/primlaw:bodytext&gt;
&lt;/primlaw:level&gt;

          </pre>
                                            </li>
                                        </ul>
                                    </li>
                                </ol>
                            </li>
                            <li><sourcexml>form</sourcexml> becomes <targetxml>form:form</targetxml>
                                with required child as
                                    <targetxml>form:form/form:document</targetxml> with attribute
                                values <targetxml>@annotated="false"</targetxml>,
                                    <targetxml>@official="true"</targetxml> and
                                    <targetxml>@typeofdoc="unnamed"</targetxml>
                                <sourcexml>form/bodytext</sourcexml> becomes
                                    <targetxml>form:form/form:document/form:bodytext</targetxml> The
                                child element of form includes: <ul>
                                    <li><sourcexml>form/bodytext/h</sourcexml> becomes
                                            <targetxml>form:form/form:document/form:bodytext/form:h</targetxml></li>
                                    <li><sourcexml>form/bodytext/p</sourcexml> becomes
                                            <targetxml>form:form/form:document/form:bodytext/form:p</targetxml></li>
                                    <li><sourcexml>form/bodytext/p/text</sourcexml> becomes
                                            <targetxml>form:form/form:document/form:bodytext/form:p/form:text</targetxml></li>
                                </ul>
                                <pre>
          &lt;form&gt;
&lt;bodytext searchtype="FORM"&gt;
&lt;p&gt;&lt;text&gt;&amp;#160;&lt;/text&gt;&lt;/p&gt;
&lt;p&gt;&lt;text&gt;&amp;#160;&amp;#160;&amp;#160;&amp;#160;&amp;#160;&amp;#160;&amp;#160;&amp;#160;&amp;#160;&amp;#160;&amp;#160;&amp;#160;&amp;#160;&amp;#160;&amp;#160;&amp;#160;&amp;#160;&amp;#160;&amp;#160;&amp;#160;&amp;#160;&amp;#160;&amp;#160; &amp;#160;&lt;/text&gt;&lt;/p&gt;
&lt;p&gt;&lt;text&gt;0.5 + &amp;#160;&amp;#160;&amp;#160;&amp;#160;&amp;#160;&amp;#160; &amp;#160;&amp;#160;&amp;#160;0.6 &amp;times; &lt;emph typestyle="un"&gt;Gross amount&lt;/emph&gt;&lt;/text&gt;&lt;/p&gt;
&lt;p&gt;&lt;text&gt;&amp;#160;&amp;#160;&amp;#160;&amp;#160;&amp;#160;&amp;#160;&amp;#160;&amp;#160;&amp;#160;&amp;#160;&amp;#160;&amp;#160;&amp;#160;&amp;#160;&amp;#160;&amp;#160;&amp;#160;&amp;#160;&amp;#160;&amp;#160;&amp;#160;&amp;#160;&amp;#160;&amp;#160;&amp;#160;&amp;#160;&amp;#160;&amp;#160;&amp;#160;&amp;#160;&amp;#160; &amp;#160; 1,000,000&lt;/text&gt;&lt;/p&gt;
&lt;p&gt;&lt;text&gt;&amp;#160;&lt;/text&gt;&lt;/p&gt;
&lt;p&gt;&lt;text&gt;&amp;#160;&lt;/text&gt;&lt;/p&gt;
&lt;/bodytext&gt;
&lt;/form&gt;
            
           
          <b>Becomes</b>
          
          &lt;form:form&gt;
          &lt;form:document annotated="false" official="true" typeofdoc="unnamed"&gt;
        &lt;form:bodytext&gt;
        &lt;form:p&gt;&lt;form:text&gt;&amp;#x00A0;&lt;/form:text&gt;&lt;/p&gt;
&lt;form:p&gt;&lt;text&gt;&amp;#x00A0;&amp;#x00A0;&amp;#x00A0;&amp;#x00A0;&amp;#x00A0;&amp;#x00A0;&amp;#x00A0;&amp;#x00A0;&amp;#x00A0;&amp;#x00A0;&amp;#x00A0;&amp;#x00A0;&amp;#x00A0;&amp;#x00A0;&amp;#x00A0;&amp;#x00A0;&amp;#x00A0;&amp;#x00A0;&amp;#x00A0;&amp;#x00A0;&amp;#x00A0;&amp;#x00A0;&amp;#x00A0; &amp;#x00A0;&lt;/form:text&gt;&lt;/form:p&gt;
&lt;form:p&gt;&lt;form:text&gt;0.5 + &amp;#x00A0;&amp;#x00A0;&amp;#x00A0;&amp;#x00A0;&amp;#x00A0;&amp;#x00A0; &amp;#x00A0;&amp;#x00A0;&amp;#x00A0;0.6 &amp;times; &lt;emph typestyle="un"&gt;Gross amount&lt;/emph&gt;&lt;/form:text&gt;&lt;/form:p&gt;
&lt;form:p&gt;&lt;form:text&gt;&amp;#x00A0;&amp;#x00A0;&amp;#x00A0;&amp;#x00A0;&amp;#x00A0;&amp;#x00A0;&amp;#x00A0;&amp;#x00A0;&amp;#x00A0;&amp;#x00A0;&amp;#x00A0;&amp;#x00A0;&amp;#x00A0;&amp;#x00A0;&amp;#x00A0;&amp;#x00A0;&amp;#x00A0;&amp;#x00A0;&amp;#x00A0;&amp;#x00A0;&amp;#x00A0;&amp;#x00A0;&amp;#x00A0;&amp;#x00A0;&amp;#x00A0;&amp;#x00A0;&amp;#x00A0;&amp;#x00A0;&amp;#x00A0;&amp;#x00A0;&amp;#x00A0; &amp;#x00A0; 1,000,000&lt;/form:text&gt;&lt;/form:p&gt;
&lt;form:p&gt;&lt;form:text&gt;&amp;#x00A0;&lt;/form:text&gt;&lt;/form:p&gt;
&lt;form:p&gt;&lt;form:text&gt;&amp;#x00A0;&lt;/form:text&gt;&lt;/form:p&gt;             
            &lt;/form:bodytext&gt;
            &lt;/form:document&gt;
            &lt;/form:form&gt;
        </pre></li>
                        </ul></li>
                    <li><b>Special Handling of Image - For AU04, AU06 and AU08</b>: If
                            <sourcexml>inlineobject</sourcexml> markup has either of the image names
                        -  '<i><b>au_inforce.png</b></i>' or '<i><b>au_noforce.png</b></i>' - create
                        target <targetxml>ref:inlineobject</targetxml> markup and remove the
                        extension. This instruction applies only for these specific images.<pre>
				<b><i>Example: Source XML 1</i></b>
     
&lt;p&gt;
       &lt;text&gt;
              &lt;inlineobject alttext="[Not in Force]" type="image" attachment="web-server" filename="au_noforce.png"/&gt;
       &lt;/text&gt;
&lt;/p&gt;

</pre>
                        <pre> 
				<b><i>Example: Target XML 1</i></b>

&lt;figure&gt;
       &lt;ref:inlineobject&gt;
              &lt;ref:locator&gt;
                     &lt;ref:locator-key&gt;
                           &lt;ref:key-name name="object-key"/&gt;
                           &lt;ref:key-value value="au_noforce"/&gt;
                     &lt;/ref:locator-key&gt;
                     &lt;ref:locator-params&gt;
                           &lt;proc:param name="componentseq" value="1"/&gt;
                           &lt;proc:param name="object-type" value="image"/&gt;
                           &lt;proc:param name="object-smi" value="12638"/&gt;
                     &lt;/ref:locator-params&gt;
              &lt;/ref:locator&gt;
       &lt;/ref:inlineobject&gt;
&lt;/figure&gt;

          </pre>
                    </li>
                    
                </ul>
            </p>
        </section>
        
        <section>
    <title>Changes</title>
            <p>2016-04-22: <ph id="change_20160422_BRT">Added new instruction with examples for handling
                specific images '<i><b>au_inforce.png</b></i>' and
                '<i><b>au_noforce.png</b></i>'. (Webstar #6036111)</ph></p>
            <p>2015-06-10 <ph id="change_20150610_BRT"> Added note to convert instances of
                        <sourcexml>nl</sourcexml> within <sourcexml>heading/title</sourcexml> to a
                    space ' '. (WebStar #6008214)</ph></p>
            <p>2015-03-02 <ph id="change_20150302_MLV">Added instruction to remove emph markup from <sourcexml>leg:relatedleg/emph</sourcexml>
                conversion to <targetxml>primlaw:subordinatelaw/heading/title</targetxml> in order to correct bold highlighting issue.</ph>.</p>
            <p>2014-08-06 <ph id="change_20140806_BRT"> Added note (and associated example) to
                    suppress both attributes @anchoridref and @ref:locatorkeyprotocol="DOC-ID"
                    inside toc-entry when it generates inactive (dead) links on the LexisAdvance
                    Platform.</ph></p>
            <p>2013-04-25 <ph id="change_20130425_WL">Updated the target example for handling of
                        <sourcexml>leg:longtitle/glp:note</sourcexml> scenario</ph></p>
            <p>2013-07-19 <ph id="change_20130719_WL">changes to all target XML examples that have the XPath index:locator/ref:lnlink. The change
                shows that the ref:lnlink element must be created with the attribute ref:lnlink/@service="DOCUMENT". This attribute was missing from the previous version of the instructions and examples.
            </ph></p>
</section>
    </body>
	</dita:topic>

    
	<xsl:template match="leg:body">

		<!--  Original Target XPath:  legis:body   -->
		<legis:body>
			<xsl:apply-templates select="@* | node()"/>
		</legis:body>

	</xsl:template>

    <xsl:template match="leg:info[not(leg:sectionlist)]">
        
        <!--  Original Target XPath:  primlaw:level/primlaw:levelinfo/primlawinfo:primlawinfo/legisinfo:legisinfo   -->
        <primlaw:level xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/">
            <xsl:attribute name="leveltype">unclassified</xsl:attribute>
            <primlaw:levelinfo>
                <primlawinfo:primlawinfo>
                    <legisinfo:legisinfo>
                        <xsl:apply-templates select="leg:officialname"/> 
                    </legisinfo:legisinfo>                   
                    <xsl:apply-templates select="node() except(leg:officialname |leg:juris)"/>                    
                </primlawinfo:primlawinfo>
            </primlaw:levelinfo>
        </primlaw:level>
        
    </xsl:template>
    
    <xsl:template match="leg:info[leg:sectionlist]">
        
        <!--  Original Target XPath:  primlaw:level/primlaw:levelinfo/primlawinfo:primlawinfo/legisinfo:legisinfo   -->
        <primlaw:level>
            <xsl:attribute name="leveltype">unclassified</xsl:attribute>
            <xsl:apply-templates select="*[1][self::leg:sectionlist]/@id"/>
            <xsl:apply-templates select="@id"/>
            <xsl:apply-templates select="*[1][self::leg:sectionlist]"/>
            <primlaw:levelinfo>
                <primlawinfo:primlawinfo>
                    <legisinfo:legisinfo>
                        <xsl:apply-templates select="leg:officialname"/>  
                    </legisinfo:legisinfo>                  
                    <xsl:apply-templates select="leg:year | leg:officialnum | leg:status"/>                    
                </primlawinfo:primlawinfo>
            </primlaw:levelinfo>
            <xsl:apply-templates select="node() except (leg:officialname|leg:officialnum|leg:year|leg:juris|leg:status|leg:sectionlist[not(preceding-sibling::*[1])])"/>
        </primlaw:level>
        
    </xsl:template>

	<xsl:template match="leg:info/@subseqdoc"/>

	<!--<xsl:template match="leg:officialname">

		<!-\-  Original Target XPath:  legisinfo:legisinfo/legisinfo:names/legisinfo:officialtitle   -\->
			<legisinfo:names>
				<legisinfo:officialtitle>
				    <!-\- MDS 2017-05-22 - removed refpt output to match DT output and schema valid -\->
					<xsl:apply-templates select="@* | node() except(refpt)"/>
				</legisinfo:officialtitle>
			</legisinfo:names>
		

	</xsl:template>-->

	

	<!--<xsl:template match="leg:officialnum">

		<!-\-  Original Target XPath:  primlawinfo:identifier   -\->
		<primlawinfo:identifier>
		    <xsl:attribute name="idtype" select="local-name()"/>
			<xsl:apply-templates select="node()"/>
		</primlawinfo:identifier>

	</xsl:template>-->

	<xsl:template match="leg:year">

		<!--  Original Target XPath:  primlawinfo:dates/primlawinfo:enactdate   -->
		<primlawinfo:dates>
			<primlawinfo:enactdate>
				<xsl:attribute name="year" select="."/>
			</primlawinfo:enactdate>
		</primlawinfo:dates>

	</xsl:template>


  	<xsl:template match="leg:status[not(preceding-sibling::leg:status)]">

		<!--  Original Target XPath:  legisinfo:legisinfo/legisinfo:statusgroup/legisinfo:status/legisinfo:statustext   -->
  	    
  	    <xsl:choose>
  	        <xsl:when test="preceding-sibling::*[1][self::leg:sectionlist]">
  	            <primlaw:levelinfo>
			    <primlawinfo:primlawinfo>
  	            <legisinfo:legisinfo>
  	                <legisinfo:statusgroup>
  	                    <xsl:for-each select="following-sibling::leg:status|.">
  	                        <legisinfo:status>
  	                            <xsl:apply-templates select="@*"/>
  	                            <legisinfo:statustext>
  	                                <xsl:apply-templates select="node()"/>
  	                            </legisinfo:statustext>
  	                        </legisinfo:status>
  	                    </xsl:for-each>
  	                </legisinfo:statusgroup>
  	            </legisinfo:legisinfo>
  	            </primlawinfo:primlawinfo>
			</primlaw:levelinfo>
  	        </xsl:when>
  	        <xsl:otherwise>
  	            <legisinfo:legisinfo>
  	                <legisinfo:statusgroup>
  	                    <xsl:for-each select="following-sibling::leg:status|.">
  	                        <legisinfo:status>
  	                            <xsl:apply-templates select="@*"/>
  	                            <legisinfo:statustext>
  	                                <xsl:apply-templates select="node()"/>
  	                            </legisinfo:statustext>
  	                        </legisinfo:status>
  	                    </xsl:for-each>
  	                </legisinfo:statusgroup>
  	            </legisinfo:legisinfo>
  	        </xsl:otherwise>
  	    </xsl:choose>
	</xsl:template>
    
    <xsl:template match="leg:status[preceding-sibling::leg:status]"/>

	<xsl:template match="leg:status/@statuscode">

		<xsl:attribute name="statuscode">
		    <xsl:value-of select="."/>
		</xsl:attribute>

	</xsl:template>
    
    <xsl:template match="proc:nl[parent::leg:status]"/>

	<xsl:template match="leg:info/index">

		<!--  Original Target XPath:  primlaw:level[@leveltype="unclassified"]/index:index   -->
	    <primlaw:level leveltype='unclassified'>
			<index:index>
				<xsl:apply-templates select="@* | node()"/>
			</index:index>
		</primlaw:level>

	</xsl:template>

	<!--<xsl:template match="index">

		<!-\-  Original Target XPath:  primlawinfo:primlawinfo/legisinfo:legisinfo/primlaw:subordinatelaw/primlaw:subordinatelaw-grp/primlaw:subordinatelaw-item/textitem   -\->
		<primlawinfo:primlawinfo>
			<legisinfo:legisinfo>
				<primlaw:subordinatelaw>
					<primlaw:subordinatelaw-grp>
						<primlaw:subordinatelaw-item>
							<textitem>
								<xsl:apply-templates select="@* | node()"/>
							</textitem>
						</primlaw:subordinatelaw-item>
					</primlaw:subordinatelaw-grp>
				</primlaw:subordinatelaw>
			</legisinfo:legisinfo>
		</primlawinfo:primlawinfo>

	</xsl:template>
-->
	<xsl:template match="leg:relatedleg[@type='subordinate']">

		<!--  Original Target XPath:  primlawinfo:primlawinfo/legisinfo:legisinfo/primlaw:subordinatelaw/primlaw:subordinatelaw-grp/primlaw:subordinatelaw-item/textitem   -->
				<primlaw:subordinatelaw>
				    <xsl:apply-templates select="refpt | emph"/>
					<primlaw:subordinatelaw-grp>
					    <xsl:choose>
					        <xsl:when test="text()[following-sibling::*[1][self::ci:cite]]">
					            <heading xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
					                <title>
					                    <xsl:value-of select="text()[following-sibling::*[self::ci:cite]]"/>
					                </title>
					            </heading>
					        </xsl:when>
					        <xsl:when test="text()[following-sibling::*[1][self::nl[following-sibling::*[1][self::ci:cite]]]]">
					            <heading xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
					                <title>
					                    <xsl:value-of select="text()[following-sibling::*[1][self::nl]]"/>
					                </title>
					            </heading>
					        </xsl:when>
					    </xsl:choose>
					    <xsl:choose>
						    <xsl:when test="count(ci:cite) > 1">
						        <xsl:for-each select="ci:cite">
						            <primlaw:subordinatelaw-item>
						                <textitem xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
						                    <xsl:apply-templates select="."/>
						                </textitem>
						                <xsl:apply-templates select="following-sibling::*[1][self::inlineobject]"/>
						            </primlaw:subordinatelaw-item>
						        </xsl:for-each>
						    </xsl:when>
						    <xsl:otherwise>
						        <primlaw:subordinatelaw-item>
						            <textitem xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
						                <xsl:apply-templates select="@* | node() except (refpt | emph | nl | text()[following-sibling::*[self::ci:cite]] | inlineobject)"/>
						            </textitem>
						            <xsl:apply-templates select="inlineobject"/>
						        </primlaw:subordinatelaw-item>
						    </xsl:otherwise>
						</xsl:choose>
					</primlaw:subordinatelaw-grp>
				</primlaw:subordinatelaw>
	</xsl:template>
    


	<xsl:template match="leg:relatedleg[@type='parent']">

		<!--  Original Target XPath:  primlaw:level[@leveltype="unclassified"]/primlaw:authority/primlaw:authority-item/textitem   -->
		<primlaw:level>
			<primlaw:authority>
			    <xsl:apply-templates select="@*"/>
				<primlaw:authority-item>
					<textitem>
						<xsl:apply-templates select="node()"/>
					</textitem>
				</primlaw:authority-item>
			</primlaw:authority>
		</primlaw:level>

	</xsl:template>
    
    <xsl:template match="leg:relatedleg/emph">
        
        <!--  Original Target XPath:  primlaw:subordinatelaw-grp/heading/title   -->
        <heading xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
            <title>
                <xsl:apply-templates select="node()"/>
            </title>
        </heading>
        
        
    </xsl:template>

<!--	<xsl:template match="leg:level">

		<!-\-  Original Target XPath:  primlaw:level   -\->
		<primlaw:level>
		    <xsl:apply-templates select="leg:level-vrnt/@*"/>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:level>

	</xsl:template>-->
    
    <xsl:template match="leg:relatedleg/@type"/>

	<xsl:template match="@leveltype">

		<!--  Original Target XPath:  @leveltype   -->
		<xsl:attribute name="leveltype">
			<xsl:value-of select="."/>
		</xsl:attribute>

	</xsl:template>

	<xsl:template match="@subdoc">

		<!--  Original Target XPath:  @includeintoc   -->
		<xsl:attribute name="includeintoc">
			<xsl:value-of select="."/>
		</xsl:attribute>

	</xsl:template>

	<xsl:template match="@toc-caption">

		<!--  Original Target XPath:  alternatetoccaption   -->
		<xsl:attribute name="alternatetoccaption">
			<xsl:value-of select="."/>
		</xsl:attribute>

	</xsl:template>

<!--	<xsl:template match="leg:level-vrnt">

		<!-\-  Original Target XPath:  legis:legis/legis:body/primlaw:prelim   -\->
			<xsl:apply-templates select="node()"/>

	</xsl:template>-->
    

	<xsl:template match="LEGDOC/leg:body/leg:prelim">

		<!--  Original Target XPath:  legis:legis/legis:body/primlaw:prelim   -->
				<primlaw:prelim>
					<xsl:apply-templates select="@* | node()"/>
				</primlaw:prelim>

	</xsl:template>

	<!--<xsl:template match="heading">

		<!-\-  Original Target XPath:  heading   -\->
		<heading>
			<xsl:apply-templates select="@* | node()"/>
		</heading>

	</xsl:template>

	<xsl:template match="leg:heading">

		<!-\-  Original Target XPath:  heading   -\->
		<heading>
			<xsl:apply-templates select="@* | node()"/>
		</heading>

	</xsl:template>

	<xsl:template match="@inline">

		<!-\-  Original Target XPath:  @inline   -\->
		<xsl:attribute name="inline">
<xsl:value-of select="."/>
		</xsl:attribute>

	</xsl:template>-->



	<!--<xsl:template match="heading/title">

		<!-\-  Original Target XPath:  @xml:id   -\->
		<xsl:attribute name="xml:id">
			<xsl:apply-templates select="node()"/>
		</xsl:attribute>

	</xsl:template>-->
    
    <xsl:template match="leg:levelbody">
        
        <!--  Original Target XPath:  primlaw:bodytext   -->
            <xsl:apply-templates select="@* | node()"/>        
        
    </xsl:template>
    
    <xsl:template match="leg:bodytext">
        
        <!--  Original Target XPath:  primlaw:bodytext   -->
        <primlaw:bodytext>
            <xsl:apply-templates select="@* | node()"/>
        </primlaw:bodytext>
        
    </xsl:template>


	<!--<xsl:template match="leg:bodytext[not(parent::leg:levelbody)]">

		<!-\-  Original Target XPath:  primlaw:bodytext   -\->
		<primlaw:bodytext>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:bodytext>

	</xsl:template>-->

<!--	<xsl:template match="footnotegrp">

		<!-\-  Original Target XPath:  primlaw:bodytext   -\->
		<primlaw:bodytext>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:bodytext>

	</xsl:template>-->



	<xsl:template match="endnote">

		<!--  Original Target XPath:  primlaw:bodytext   -->
		<primlaw:bodytext>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:bodytext>

	</xsl:template>

	<!--<xsl:template match="leg:bodytext/leg:heading/desig">

		<!-\-  Original Target XPath:  primlaw:bodytext   -\->
		<primlaw:bodytext>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:bodytext>

	</xsl:template>-->

	<!--<xsl:template match="leg:bodytext/leg:heading/title">

		<!-\-  Original Target XPath:  primlaw:bodytext   -\->
		<primlaw:bodytext>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:bodytext>

	</xsl:template>-->

	<xsl:template match="leg:heading">
	    <heading xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
	        <xsl:apply-templates select="@* | node() except (leg:empleg | leg:histnote)"/>
	    </heading>
	</xsl:template>
    
    <xsl:template match="leg:heading[parent::leg:level-vrnt]">
        <heading xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
            <xsl:apply-templates select="@* | node() except (leg:empleg | leg:histnote | refpt)"/>
        </heading>
    </xsl:template>
    
    <xsl:template match="leg:bodytext/leg:heading[subtitle]">
        
        <!--  Original Target XPath:  primlaw:bodytext/h   -->
        <h xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
            <xsl:apply-templates select="subtitle/node()"/>
            <xsl:apply-templates select="node() except subtitle"/>
        </h>		
        
    </xsl:template>
    
    <xsl:template match="leg:bodytext/leg:heading[not(subtitle)]">
        <primlaw:level leveltype="unclassified">
            <heading xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
                <xsl:apply-templates select="@* | node() except (leg:empleg | leg:histnote)"/>
            </heading>
        </primlaw:level>
    </xsl:template>
    
    <xsl:template match="leg:heading/@inline">
        <xsl:attribute name="inline" select="."/>
    </xsl:template>
    
<!--    <xsl:template match="desig">

		<!-\-  Original Target XPath:  desig   -\->
		<desig>
			<xsl:apply-templates select="@* | node()"/>
		</desig>

	</xsl:template>-->
    

	<!--<xsl:template match="title">

		<!-\-  Original Target XPath:  title   -\->
		<title>
			<xsl:apply-templates select="@* | node()"/>
		</title>

	</xsl:template>-->



	<!--<xsl:template match="l">

		<!-\-  Original Target XPath:  /legis:legis/legis:body/primlaw:level/primlawhist:primlawhist/primlawhist:histgrp[@grptype="histcite"]   -\->
		<legis:legis>
			<legis:body>
				<primlaw:level>
					<primlawhist:primlawhist>
						<primlawhist:histgrp>
							<xsl:apply-templates select="@* | node()"/>
						</primlawhist:histgrp>
					</primlawhist:primlawhist>
				</primlaw:level>
			</legis:body>
		</legis:legis>

	</xsl:template>-->

	<xsl:template match="/LEGDOC/leg:body/leg:info[not(leg:sectionlist)]/leg:histcite">

		<!--  Original Target XPath:  /legis:legis/legis:body/primlaw:level/primlawhist:primlawhist/primlawhist:histgrp[@grptype="histcite"]   -->
						<primlawhist:histgrp>
							<xsl:apply-templates select="@* | node()"/>
						</primlawhist:histgrp>
					

	</xsl:template>
    
    <xsl:template match="/LEGDOC/leg:body/leg:info[leg:sectionlist]/leg:histcite">
        
        <!--  Original Target XPath:  /legis:legis/legis:body/primlaw:level/primlawhist:primlawhist/primlawhist:histgrp[@grptype="histcite"]   -->
        <primlawhist:primlawhist>
            <primlawhist:histgrp>
                <xsl:apply-templates select="leg:heading"></xsl:apply-templates>
                <primlawhist:histitem>
                    <xsl:for-each-group select="*" group-adjacent="if (self::bodytext | self::leg:heading) then 0 else 1">
                        <xsl:choose>
                            <xsl:when test="current-grouping-key()=0">
                                <xsl:for-each select="current-group()[not(self::leg:heading)]">
                                    <xsl:apply-templates select="."/>
                                </xsl:for-each>
                            </xsl:when>
                            <xsl:otherwise>
                                <bodytext>
                                    <xsl:for-each select="current-group()">
                                        <xsl:apply-templates select="."/>
                                    </xsl:for-each>
                                </bodytext>
                            </xsl:otherwise>
                        </xsl:choose>
                    </xsl:for-each-group>
                </primlawhist:histitem>
            </primlawhist:histgrp>
        </primlawhist:primlawhist>
        
        
    </xsl:template>
    
<!--	<xsl:template match="leg:histcite[@id]">

		<!-\-  Original Target XPath:  primlawhist:histgrp[@xml:id]   -\->
		<primlawhist:histgrp>
			<xsl:apply-templates select="@* | node()"/>
		</primlawhist:histgrp>

	</xsl:template>-->

	<xsl:template match="leg:histcite/heading/title">

		<!--  Original Target XPath:  primlawhist:histgrp[@grptype="histcite"]/heading/title   -->
		
		    <heading xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
				<title>
					<xsl:apply-templates select="@* | node()"/>
				</title>
			</heading>
		

	</xsl:template>

	<xsl:template match="/LEGDOC/leg:body/leg:info/leg:histcite/table">

		<!--  Original Target XPath:  /legis:legis/legis:body/primlaw:level[@leveltype="unclassified"]/primlawhist:primlawhist/primlawhist:histgrp[@grptype="histcite"]/primlawhist:histitem/bodytext/table   -->
		
	    
									<table>
										<xsl:apply-templates select="@* | node()"/>
									</table>
								

	</xsl:template>

	<xsl:template match="leg:preamble">

		<!--  Original Target XPath:  primlaw:level[@leveltype="preamble"]   -->
		<primlaw:level leveltype='preamble'>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="leg:histnote">

		<!--  Original Target XPath:  note[@notetype="historical"]   -->
	    <note xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/" notetype="historical">
			<xsl:choose>
			    <xsl:when test="bodytext">
			        <xsl:apply-templates select="node()"/>
			    </xsl:when>
			    <xsl:otherwise>
			        <xsl:apply-templates select="leg:heading"/>
			        <bodytext>
			            <xsl:apply-templates select="node() except (leg:heading) "/>
			        </bodytext>
			    </xsl:otherwise>
			</xsl:choose>
		</note>



	</xsl:template>

	<xsl:template match="/LEGDOC/leg:body/leg:endmatter">

		<!--  Original Target XPath:  legis:legis/legis:body/primlaw:level   -->
	    <primlaw:level leveltype='endnote'>
				<xsl:apply-templates select="@* | node()"/>
		</primlaw:level>

	</xsl:template>

<!--	<xsl:template match="leg:level/leg:level-vrnt">

		<!-\-  Original Target XPath:  primlaw:level   -\->
		<primlaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:level>

	</xsl:template>-->

	<xsl:template match="leg:companion">

		<!--  Original Target XPath:  primlaw:level   -->
	    <primlaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="leg:history">

		<!--  Original Target XPath:  primlawhist:primlawhist   -->
		<primlawhist:primlawhist>
		    <xsl:apply-templates select="leg:heading"/>
		    <xsl:if test="p|pgrp">
		        <primlawhist:histgrp>
		            <primlawhist:histitem>
		                <bodytext xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
		                    <xsl:for-each-group select="p|pgrp" group-adjacent="self::p|self::pgrp">
		                        <xsl:apply-templates select="current-group() except (leg:heading)"/>
		                    </xsl:for-each-group>
		                </bodytext>
		            </primlawhist:histitem>
		        </primlawhist:histgrp>
		    </xsl:if>
			<xsl:apply-templates select="node() except (p |pgrp | leg:heading)"/>
		</primlawhist:primlawhist>

	</xsl:template>
    
    <!-- 
    <xsl:for-each-group select="p|pgrp" group-adjacent="if(self::p|self::pgrp) then 0 else 1">
		                        <xsl:apply-templates select="current-group() except (leg:heading)"/>
		                    </xsl:for-each-group>
    -->

<!--	<xsl:template match="leg:history[@id]">

		<!-\-  Original Target XPath:  primlawhist:primlawhist[@xml:id]   -\->
		<primlawhist:primlawhist>
			<xsl:apply-templates select="@* | node()"/>
		</primlawhist:primlawhist>

	</xsl:template>-->

<!--	<xsl:template match="leg:history/leg:heading">

		<!-\-  Original Target XPath:  primlawhist:primlawhist/heading   -\->
			<heading>
				<xsl:apply-templates select="@* | node()"/>
			</heading>
		

	</xsl:template>-->

<!--	<xsl:template match="leg:history/p/text">

		<!-\-  Original Target XPath:  primlawhist:primlawhist/primlawhist:histgrp/primlawhist:histitem/bodytext/p/text   -\->
		<primlawhist:primlawhist>
			<primlawhist:histgrp>
				<primlawhist:histitem>
					<bodytext>
						<p>
							<text>
								<xsl:apply-templates select="@* | node()"/>
							</text>
						</p>
					</bodytext>
				</primlawhist:histitem>
			</primlawhist:histgrp>
		</primlawhist:primlawhist>

	</xsl:template>-->

<!--	<xsl:template match="leg:history/p/blockquote">

		<!-\-  Original Target XPath:  primlawhist:primlawhist/primlawhist:histgrp/primlawhist:histitem/bodytext/p/blockquote   -\->
		<primlawhist:primlawhist>
			<primlawhist:histgrp>
				<primlawhist:histitem>
					<bodytext>
						<p>
							<blockquote>
								<xsl:apply-templates select="@* | node()"/>
							</blockquote>
						</p>
					</bodytext>
				</primlawhist:histitem>
			</primlawhist:histgrp>
		</primlawhist:primlawhist>

	</xsl:template>-->

<!--	<xsl:template match="leg:history/p/glp:note">

		<!-\-  Original Target XPath:  primlawhist:primlawhist/primlawhist:histgrp/primlawhist:histitem/bodytext/note   -\->
		<primlawhist:primlawhist>
			<primlawhist:histgrp>
				<primlawhist:histitem>
					<bodytext>
						<note>
							<xsl:apply-templates select="@* | node()"/>
						</note>
					</bodytext>
				</primlawhist:histitem>
			</primlawhist:histgrp>
		</primlawhist:primlawhist>

	</xsl:template>-->
    
    <xsl:template match="levelinfo[docinfo:currencystatement]"/>

	<!--<xsl:template match="glp:note">

		<!-\-  Original Target XPath:  note   -\->
		<note>
			<xsl:apply-templates select="@* | node()"/>
		</note>

	</xsl:template>-->

	<!--<xsl:template match="p">

		<!-\-  Original Target XPath:  note   -\->
		<note>
			<xsl:apply-templates select="@* | node()"/>
		</note>

	</xsl:template>-->

	<xsl:template match="leg:tableofamend">

		<!--  Original Target XPath:  primlawhist:primlawhist/primlawhist:histgrp[@grptype="tableofamend"]/heading   -->
			<primlawhist:histgrp grptype='tableofamend'>
			    <xsl:apply-templates select="leg:heading/title/refpt"/>
			    <xsl:apply-templates select="leg:heading"/>
			    <primlawhist:histitem>
			        <bodytext xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
			            <xsl:apply-templates select="node() except(leg:heading)"/>
			        </bodytext>
			    </primlawhist:histitem>
			</primlawhist:histgrp>
		

	</xsl:template>

<!--	<xsl:template match="leg:tableofamend/heading">

		<!-\-  Original Target XPath:  primlawhist:primlawhist/primlawhist:histgrp[@grptype="tableofamend"]/heading   -\->
		<primlawhist:primlawhist>
			<primlawhist:histgrp>
				<heading>
					<xsl:apply-templates select="@* | node()"/>
				</heading>
			</primlawhist:histgrp>
		</primlawhist:primlawhist>

	</xsl:template>-->

    <xsl:template match="/LEGDOC/leg:body/leg:endmatter/index[not(contains(@id, 'DEFLIST'))]">

		<!--  Original Target XPath:  /legis:legis/legis:body/primlaw:level[@leveltype="endnote"]/index:index   -->
					<index:index>
						<xsl:apply-templates select="@* | node()"/>
					</index:index>

	</xsl:template>

	<xsl:template match="index[contains(@id, 'DEFLIST')]">

		<!--  Original Target XPath:  index:index[@indextype="definedTerms"]   -->
		<index:index indextype='definedTerms'>
			<xsl:apply-templates select="@* | node()"/>
		</index:index>

	</xsl:template>

	<xsl:template match="index[contains(@id, 'INDEX')]">

		<!--  Original Target XPath:  index:index[@indextype="topical"]   -->
		<index:index indextype='topical'>
			<xsl:apply-templates select="@* | node()"/>
		</index:index>

	</xsl:template>

	<xsl:template match="index/p">

		<!--  Original Target XPath:  index:index/heading/subtitle   -->
		    <heading xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
				<subtitle>
					<xsl:apply-templates select="@* | node()"/>
				</subtitle>
			</heading>
		

	</xsl:template>

	<xsl:template match="in:lev1">

		<!--  Original Target XPath:  index:item/index:entry/index:entrytext   -->
		<index:item>
			<xsl:apply-templates select="@* | node()"/>
		</index:item>

	</xsl:template>
    
    <xsl:template match="in:entry">
        <index:entry>
            <xsl:apply-templates select="@* | node()"/>
        </index:entry>
    </xsl:template>
    
    <xsl:template match="in:entry-text">
        <index:entrytext>
            <xsl:apply-templates select="@* | node()"/>
        </index:entrytext>
    </xsl:template>

	<xsl:template match="in:index-ref">

		<!--  Original Target XPath:  index:entry/index:locator/ref:lnlink/@service="DOCUMENT"   -->
			<index:locator>
				<xsl:apply-templates select="node()"/>
			</index:locator>

	</xsl:template>


    <!-- <remotelink remotekey1="REFPTID" service="DOC-ID"
                refpt="NSW_ACT_2015-51_ACCEPTEDLEASEORSUBLEASE" docidref="NSW_ACT_2015-51_ACTPT1DV2"
                >sec4sub1</remotelink> -->
    <!-- <ref:lnlink service="DOCUMENT">
                                <ref:marker>sec4sub1</ref:marker>
                                <ref:locator anchoridref="NSW_ACT_2015-51_ACCEPTEDLEASEORSUBLEASE">
                                    <ref:locator-key>
                                        <ref:key-name name="DOC-ID"/>
                                        <ref:key-value value="005Y-NSW_ACT_2015-51_ACTPT1DV2"/>
                                    </ref:locator-key>
                                </ref:locator>
                            </ref:lnlink> -->
	<xsl:template match="remotelink[parent::in:index-ref][$streamID='AU04']" priority="25">

		<!--  Original Target XPath:  ref:marker   -->
		<ref:lnlink>
			<ref:marker>
			    <xsl:apply-templates select="node()"/>
			</ref:marker>
		    <ref:locator>
		        <xsl:attribute name="anchoridref" select="@refpt"/>
		        <ref:locator-key>
		            <ref:key-name>
		                <xsl:attribute name="name" select="@service"/>
		            </ref:key-name>
		            <ref:key-value>
		                <xsl:attribute name="value" select="@docidref"/>
		            </ref:key-value>
		        </ref:locator-key>
		    </ref:locator>
		</ref:lnlink>

	</xsl:template>

<!--    <xsl:template match="remotelink/@alttext"/>-->


	<!--<xsl:template match="@remotekey1='DOC-ID'">

		<!-\-  Original Target XPath:  ref:key-name/@name   -\->
		<ref:key-name>
			<xsl:attribute name="name">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</ref:key-name>

	</xsl:template>-->

	<!--<xsl:template match="@dpsi">

		<!-\-  Original Target XPath:  ref:key-name/@name   -\->
		<ref:key-name>
			<xsl:attribute name="name">
			    <xsl:value-of select="."/>
			</xsl:attribute>
		</ref:key-name>

	</xsl:template>-->

	<!--<xsl:template match="@refpt">

		<!-\-  Original Target XPath:  ref:key-name/@name   -\->
		<ref:key-name>
			<xsl:attribute name="name">
                <xsl:value-of select="."/>
			</xsl:attribute>
		</ref:key-name>

	</xsl:template>

	<xsl:template match="@remotekey2">

		<!-\-  Original Target XPath:  ref:key-name/@name   -\->
		<ref:key-name>
			<xsl:attribute name="name">
			    <xsl:value-of select="."/>
			</xsl:attribute>
		</ref:key-name>

	</xsl:template>-->

	<!--<xsl:template match="@remotekey1=&#34;REFPTID&#34;">

		<!-\-  Original Target XPath:  ref:key-name/@name   -\->
		<ref:key-name>
			<xsl:attribute name="name">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</ref:key-name>

	</xsl:template>-->

<!--    <xsl:template match="remotelink/@docidref">

		<!-\-  Original Target XPath:  ref:locator/@anchoridref   -\->
			<xsl:attribute name="anchoridref">
				<xsl:value-of select="."/>
			</xsl:attribute>

	</xsl:template>-->



	<xsl:template match="docinfo:dpsi/@id-string">

		<!--  Original Target XPath:  ref:locator/@anchoridref   -->
		<ref:locator>
			<xsl:attribute name="anchoridref">
			    <xsl:value-of select="."/>
			</xsl:attribute>
		</ref:locator>

	</xsl:template>

	<xsl:template match="index/p/table">

		<!--  Original Target XPath:  navaid:navigationaid/bodytext/p/table   -->
		<navaid:navigationaid>
		    <bodytext xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
				<p>
					<table>
						<xsl:apply-templates select="@* | node()"/>
					</table>
				</p>
			</bodytext>
		</navaid:navigationaid>

	</xsl:template>

	<!--<xsl:template match="table">

		<!-\-  Original Target XPath:  navaid:navigationaid/bodytext/table   -\->
		<navaid:navigationaid>
			<bodytext>
				<table>
					<xsl:apply-templates select="@* | node()"/>
				</table>
			</bodytext>
		</navaid:navigationaid>

	</xsl:template>

	<xsl:template match="index/table">

		<!-\-  Original Target XPath:  navaid:navigationaid/bodytext/table   -\->
		<navaid:navigationaid>
			<bodytext>
				<table>
					<xsl:apply-templates select="@* | node()"/>
				</table>
			</bodytext>
		</navaid:navigationaid>

	</xsl:template>-->

<!--	<xsl:template match="text">

		<!-\-  Original Target XPath:  primlaw:authority/primlaw:authority-item/bodytext/textitem   -\->
		<primlaw:authority>
			<primlaw:authority-item>
				<bodytext>
					<textitem>
						<xsl:apply-templates select="@* | node()"/>
					</textitem>
				</bodytext>
			</primlaw:authority-item>
		</primlaw:authority>

	</xsl:template>-->

	<xsl:template match="leg:empleg">

		<!--  Original Target XPath:  primlaw:authority/primlaw:authority-item/bodytext/textitem   -->
		<primlaw:authority>
			<primlaw:authority-item>
			    <bodytext xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
					<textitem>
						<xsl:apply-templates select="@* | node()"/>
					</textitem>
				</bodytext>
			</primlaw:authority-item>
		</primlaw:authority>

	</xsl:template>


	<xsl:template match="leg:levelstatus">

		<!--  Original Target XPath:  primlaw:level/primlaw:levelinfo/primlawinfo:primlawinfo/legisinfo:legisinfo/legisinfo:statusgroup/legisinfo:status[@statuscode="repealed"]/legisinfo:statustext   -->

							<legisinfo:status>
								<legisinfo:statustext>
									<xsl:apply-templates select="@* | node()"/>
								</legisinfo:statustext>
							</legisinfo:status>

	</xsl:template>

<!--	<xsl:template match="leg:level/leg:level-vrnt/leg:levelinfo/leg:levelstatus[@isrepealed=&#34;true&#34;]">

		<!-\-  Original Target XPath:  primlaw:level/primlaw:levelinfo/primlawinfo:primlawinfo/legisinfo:legisinfo/legisinfo:statusgroup/legisinfo:status[@statuscode="repealed"]/legisinfo:statustext   -\->
		<primlaw:level>
			<primlaw:levelinfo>
				<primlawinfo:primlawinfo>
					<legisinfo:legisinfo>
						<legisinfo:statusgroup>
							<legisinfo:status>
								<legisinfo:statustext>
									<xsl:apply-templates select="@* | node()"/>
								</legisinfo:statustext>
							</legisinfo:status>
						</legisinfo:statusgroup>
					</legisinfo:legisinfo>
				</primlawinfo:primlawinfo>
			</primlaw:levelinfo>
		</primlaw:level>

	</xsl:template>-->

	<!--<xsl:template match="leg:level/leg:levelinfo/leg:levelstatus[@isrepealed=&#34;true&#34;]">

		<!-\-  Original Target XPath:  primlaw:level/primlaw:levelinfo/primlawinfo:primlawinfo/legisinfo:legisinfo/legisinfo:statusgroup/legisinfo:status[@statuscode="repealed"]   -\->
		<primlaw:level>
			<primlaw:levelinfo>
				<primlawinfo:primlawinfo>
					<legisinfo:legisinfo>
						<legisinfo:statusgroup>
							<legisinfo:status>
								<xsl:apply-templates select="@* | node()"/>
							</legisinfo:status>
						</legisinfo:statusgroup>
					</legisinfo:legisinfo>
				</primlawinfo:primlawinfo>
			</primlaw:levelinfo>
		</primlaw:level>

	</xsl:template>-->

    
	<xsl:template match="/LEGDOC/leg:body/leg:info[not(leg:sectionlist)]/leg:longtitle">

		<!--  Original Target XPath:  /legis:legis/legis:body/primlaw:prelim/primlaw:synopsis   -->
					<primlaw:synopsis>
						<xsl:apply-templates select="@* | node()"/>
					</primlaw:synopsis>

	</xsl:template>
    
    <xsl:template match="/LEGDOC/leg:body/leg:info[leg:sectionlist]/leg:longtitle">
        
        <!--  Original Target XPath:  /legis:legis/legis:body/primlaw:prelim/primlaw:synopsis   -->
        <primlaw:prelim>
            <primlaw:synopsis>
                <bodytext xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
                    <xsl:apply-templates select="@* | node()"/>
                </bodytext>
            </primlaw:synopsis>
        </primlaw:prelim>
        
    </xsl:template>

	<xsl:template match="leg:sectionlist[not(@id) or not(contains(@id, 'PROVLIST'))]">
<!-- wpk 2018-03-20.  this template basically does the same thing for legislation as the following
	        modules do for regulations and court rules.  They should ideally be in sync.
	        The code differs slightly as a detailed note is in the following regarding a webstar.
	        However this version of the code works as needed, so simply noting 
	        the similarity here in comment.
	        
Rosetta-to-LA/modules/nonamespace/Rosetta_Pacific_Regulations_common.xsl
<xsl:template match="leg:info/leg:sectionlist">

Rosetta-to-LA/modules/leg/AU08_courtrule-Body.xsl
<xsl:template match="leg:body/leg:info/leg:sectionlist">

	-->        
		<!--  Original Target XPath:  navaid:navigationaid   -->
		<primlaw:level leveltype='unclassified'>
		    <navaid:navigationaid>
		        <xsl:attribute name="type">
		            <xsl:choose>
		                <xsl:when test="descendant::remotelink[contains(., ('LawNow Home Page')) or contains(., ('Government Website'))]">links</xsl:when>
		                <xsl:otherwise>sectionlist</xsl:otherwise>
		            </xsl:choose>
		        </xsl:attribute>
		        <xsl:choose>
		            <xsl:when test="bodytext">
		                <xsl:apply-templates select="@* | node()"/>
		            </xsl:when>
		            <xsl:otherwise>
		                <bodytext xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
		                    <xsl:apply-templates select="@* | node()"/>
		                </bodytext>
		            </xsl:otherwise>
		        </xsl:choose>
		    </navaid:navigationaid>
		</primlaw:level>

	</xsl:template>

	
	<xsl:template match="leg:sectionlist[@id and contains(@id, 'PROVLIST')]">
	    <xsl:call-template name="sectionlist-table-to-toc"/>
	</xsl:template>
    
    <!--<xsl:template match="leg:sectionlist/@id">

		<!-\-  Original Target XPath:  primlaw:level[@leveltype="table-of-contents"]/@xml:id   -\->
			<xsl:attribute name="id">
			    <xsl:value-of select="."/>
			</xsl:attribute>

	</xsl:template>
    
    <xsl:template match="p|tgroup|colspec|tbody" mode="sectionlistTable">
        <xsl:apply-templates select="node()" mode="sectionlistTable"/>
    </xsl:template>
    
    <xsl:template match="table" mode="sectionlistTable">
        <toc toctype='sectionlist'>
            <xsl:apply-templates select="node()" mode="sectionlistTable"/>
        </toc>
    </xsl:template>
    
    <xsl:template match="row" mode="sectionlistTable">
        <!-\- <row>
                  <entry namest="c1" nameend="c2">
                    <remotelink remotekey1="REFPTID" service="DOC-ID" refpt="WA_ACT_1985-120_PTI"
                      docidref="WA_ACT_1985-120_PTI">Part I??&#x2014;??Preliminary</remotelink>
                  </entry>
                </row>
                <row>
                  <entry>1.</entry>
                  <entry><remotelink remotekey1="REFPTID" service="DOC-ID"
                      refpt="WA_ACT_1985-120_PROV1" docidref="WA_ACT_1985-120_PTI">Short
                      title</remotelink>??</entry>
                </row> -\->
        <xsl:choose>
            <xsl:when test="not(preceding-sibling::row) and count(entry) = 1">
                <toc-entry>
                    <xsl:
                </toc-entry>
            </xsl:when>
        </xsl:choose>
    </xsl:template>
    

	<xsl:template match="row" mode="sectionlistTable">

		<!-\-  Original Target XPath:  toc-entry   -\->
		<toc-entry>
			<xsl:apply-templates select="@* | node()"/>
		</toc-entry>

	</xsl:template>

	<xsl:template match="entry">

		<!-\-  Original Target XPath:  desig   -\->
		<desig>
			<xsl:apply-templates select="@* | node()"/>
		</desig>

	</xsl:template>

	<xsl:template match="entry/remotelink[@service='DOC-ID']">

		<!-\-  Original Target XPath:  toc-entry/heading/title   -\->
		<toc-entry>
			<heading>
				<title>
					<xsl:apply-templates select="@* | node()"/>
				</title>
			</heading>
		</toc-entry>

	</xsl:template>

	<xsl:template match="entry/remotelink">

		<!-\-  Original Target XPath:  toc-entry/heading/desig   -\->
		<toc-entry>
			<heading>
				<desig>
					<xsl:apply-templates select="@* | node()"/>
				</desig>
			</heading>
		</toc-entry>

	</xsl:template>-->

	<xsl:template match="form">

		<!--  Original Target XPath:  form:form   -->
	    <form:form>
			<xsl:apply-templates select="@* | node()"/>
		</form:form>

	</xsl:template>

	<xsl:template match="form/bodytext">

		<!--  Original Target XPath:  form:form/form:document/form:bodytext   -->
		
	    <form:document annotated="false" official="true" typeofdoc="unnamed">
				<form:bodytext>
					<xsl:apply-templates select="@* | node()"/>
				</form:bodytext>
		</form:document>

	</xsl:template>

	<xsl:template match="form/bodytext/h">

		<!--  Original Target XPath:  form:form/form:document/form:bodytext/form:h   -->
					<form:h>
						<xsl:apply-templates select="@* | node()"/>
					</form:h>

	</xsl:template>

	<xsl:template match="form/bodytext/p" priority="25">

		<!--  Original Target XPath:  form:form/form:document/form:bodytext/form:p   -->  
					<form:p>
						<xsl:apply-templates select="@* | node()"/>
					</form:p>

	</xsl:template>

<!--	<xsl:template match="form/bodytext/p/text">

		<!-\-  Original Target XPath:  form:form/form:document/form:bodytext/form:p/form:text   -\->
		<form:form>
			<form:document>
				<form:bodytext>
					<form:p>
						<form:text>
							<xsl:apply-templates select="@* | node()"/>
						</form:text>
					</form:p>
				</form:bodytext>
			</form:document>
		</form:form>

	</xsl:template>-->

<!--	<xsl:template match="inlineobject">

		<!-\-  Original Target XPath:  ref:inlineobject   -\->
		<ref:inlineobject>
			<xsl:apply-templates select="@* | node()"/>
		</ref:inlineobject>

	</xsl:template>-->

	<xsl:template match="leg:longtitle/glp:note">
	    <!-- 2017-11-03 - MDS: Added note element output due to Webstar 7040093   -->
		<note>
		    <xsl:apply-templates select="@* | heading"/>
		    <bodytext>
		        <xsl:apply-templates select="node() except (heading)"/>
		    </bodytext>
		</note>

	</xsl:template>

</xsl:stylesheet>