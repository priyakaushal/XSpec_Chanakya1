<?xml version="1.0" encoding="UTF-8"?>
<?xml-stylesheet type="text/xsl" href="../../QCchecks.xsl"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:ci="http://www.lexis-nexis.com/ci" xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo"
    xmlns:glp="http://www.lexis-nexis.com/glp" xmlns:in="http://www.lexis-nexis.com/glp/in" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:courtrule="http://www.lexisnexis.com/xmlschemas/content/legal/courtrule/1/" xmlns:form="http://www.lexisnexis.com/xmlschemas/content/shared/form/1/"
    xmlns:index="urn:x-lexisnexis:content:publicationindex:sharedservices:1" xmlns:legisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/legislation-info/1/"
    xmlns:navaid="urn:x-lexisnexis:content:navigationaid:sharedservices:1" xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/"
    xmlns:proc="http://www.lexisnexis.com/xmlschemas/content/shared/process-elements/1/" xmlns:ln-data="http://www.lexis-nexis.com/glp/ln-data" xmlns:case="http://www.lexis-nexis.com/glp/case"
    xmlns:primlawhist="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-history/1/" xmlns:primlawinfo="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-info/1/"
    xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="#all">

    <dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="courtrule-Body">
        <title>Body <lnpid>id-AU08-19407</lnpid></title>
        <shortdesc>All of the following are descendants of <targetxml>courtrule:body</targetxml>. Handle in document order unless specifically stated otherwise. Refer to General Markup Section for
            handling of children (including mixed content).</shortdesc>
        <body>
            <section>
                <title>courtrule:body</title>
                <p><sourcexml>leg:body</sourcexml> becomes <targetxml>courtrule:body</targetxml> and children as described below: <ul>
                        <!--DSF start -->
                        <li><sourcexml>leg:info</sourcexml> becomes <targetxml>primlaw:level[@leveltype="unclassified"]/primlaw:levelinfo/primlawinfo:primlawinfo</targetxml> and attribute
                                <sourcexml>leg:info/@id</sourcexml> becomes <targetxml>primlaw:level/@xml:id</targetxml>. Suppress <sourcexml>@subseqdoc</sourcexml> and handle the children of
                                <sourcexml>leg:info</sourcexml> as described below: <note>Conversion should not create adjacent <targetxml>primlaw:levelinfo</targetxml>. Data should be merged to
                                single <targetxml>primlaw:levelinfo</targetxml>.</note><note>Conversion should not create adjacent <targetxml>primlawinfo:primlawinfo</targetxml>. Data should be merged
                                to single <targetxml>primlawinfo:primlawinfo</targetxml>.</note><ul>
                                <li><sourcexml>leg:info/leg:officialname</sourcexml> becomes <targetxml>legisinfo:legisinfo/legisinfo:names/legisinfo:officialtitle</targetxml>
                                    <note>For handling <b>@ln.user-displayed</b> attribute, refer the general markup <xref
                                            href="../../common_newest/Rosetta_leg.officialname_ln.user-displayed-LxAdv-legisinfo.officialtitle.dita">ln.user_displayed="false"</xref> section in the
                                        CI.</note>
                                    <!-- LawNow -->
                                    <pre>                                    
        
        &lt;leg:info&gt;
          &lt;leg:officialname searchtype="LEGISLATION"&gt;
          &lt;refpt id="NSW_REG_1970-1" type="ext"/&gt;
            SUPREME COURT RULES 1970&amp;#160;
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
                        alttext="click to find cases &amp;amp; commentary"/&gt;
                            &lt;/marker&gt;&lt;api-params&gt;
                            &lt;param name="expressSearch" value="true"/&gt;
                            &lt;param name="searchString" value="SUPREME COURT RULES 1970"/&gt;
                            &lt;/api-params&gt;
           &lt;/lnlink&gt;
           &lt;/leg:officialname&gt;
        &lt;/leg:info&gt;
                 </pre>
                                    <b>Becomes</b>
                                    <pre>   
        
        &lt;legisinfo:legisinfo&gt;
          &lt;legisinfo:names&gt;
            &lt;legisinfo:officialtitle&gt;SUPREME COURT RULES 1970&amp;#x00A0;&lt;/legisinfo:officialtitle&gt;
          &lt;/legisinfo:names&gt;
        &lt;/legisinfo:legisinfo&gt;
          
                 </pre>
                                    <note>In the above input example <sourcexml>lnlink</sourcexml> shall be suppressed from conversion and a corresponding product requirement shall be created with an
                                        instruction to build the link on retrieval based on semantic markup in the document. Use cases where the LBU feels the product requirement cannot be met if the
                                        markup is suppressed shall be handled case-by-case.</note>
                                    <note>If the input document has scenario leg:officialname/refpt then suppress <sourcexml>refpt</sourcexml> from conversion since the id value matches with
                                            <sourcexml>docinfo:doc-id</sourcexml>.</note>
                                    <note>Conversion should not create adjacent <targetxml>legisinfo:legisinfo</targetxml>. Data should be merged to single
                                        <targetxml>legisinfo:legisinfo</targetxml>.</note>
                                    <!-- AU Services -->
                                    <pre>                  
          
      &lt;leg:info&gt;
        &lt;leg:officialname searchtype="LEGISLATION"&gt;
            RULES OF THE SUPREME COURT 1971 (WA)
        &lt;/leg:officialname&gt;
        ....
      &lt;/leg:info&gt;
          
                  </pre>
                                    <b>Becomes</b>
                                    <pre>
          
      &lt;legisinfo:legisinfo&gt;
        &lt;legisinfo:names&gt;
          &lt;legisinfo:officialtitle&gt;
              RULES OF THE SUPREME COURT 1971 (WA)
          &lt;/legisinfo:officialtitle&gt;
        &lt;/legisinfo:names&gt;
        ....
      &lt;legisinfo:legisinfo&gt;
              </pre></li>
                            </ul><ul>
                                <li><sourcexml>leg:info/leg:officialnum</sourcexml> becomes <targetxml>primlawinfo:identifier</targetxml> with required attribute <targetxml>@idtype</targetxml>
                                    <note>For handling <b>@ln.user-displayed</b> attribute, refer the general markup <xref
                                            href="../../common_newest/Rosetta_leg.officialnum_ln.user-displayed-LxAdv-primlawinfo.identifier_source.dita">ln.user_displayed="false"</xref> section in
                                        the CI.</note>
                                    <!-- LawNow-->
                                    <pre>                 
                
      &lt;leg:info&gt;
          &lt;leg:officialnum searchtype="LEGISLATION"&gt;
              SR No. 1, 1970
          &lt;/leg:officialnum&gt;
      &lt;/leg:info&gt;             
                </pre>
                                    <b>Becomes</b>
                                    <pre>
                
    &lt;primlawinfo:identifier idtype="officialnum"&gt;
          SR No. 1, 1970
    &lt;/primlawinfo:identifier&gt;
                
                 </pre>
                                </li>
                                <li>
                                    <sourcexml>leg:info/leg:year</sourcexml> becomes <targetxml>primlawinfo:dates/primlawinfo:enactdate</targetxml> with attribute <targetxml>@year</targetxml>
                                    <note>For handling <b>@ln.user-displayed</b> attribute, refer the general markup <xref href="../../common_newest/Rosetta_leg.year_ln.user-displayed.dita"
                                            >ln.user_displayed="false"</xref> section in the CI.</note>
                                    <pre>
               
   &lt;leg:year searchtype="LEGISLATION"&gt;1970&lt;/leg:year&gt;
               
               </pre>
                                    <b>Becomes</b>
                                    <pre>
                   
      &lt;primlawinfo:dates&gt;
          &lt;primlawinfo:enactdate year="1970"/&gt;
      &lt;/primlawinfo:dates&gt;
                
                </pre>
                                </li>
                            </ul>
                            <ul>
                                <li>
                                    <sourcexml>leg:info/leg:status</sourcexml>
                                    <b>becomes</b>
                                    <targetxml>legisinfo:legisinfo/legisinfo:statusgroup/legisinfo:status/legisinfo:statustext</targetxml> with below following markup: <pre>
            <b>Source XML 1</b>
      
  &lt;leg:status&gt;
    &lt;nl/&gt;
      &lt;emph typestyle="bf"&gt;
        Consolidated as in force on &lt;date&gt;23 November 2007&lt;/date&gt;
      &lt;/emph&gt;.
  &lt;/leg:status&gt;
      
          </pre>
                                    <b>Becomes</b>
                                    <pre> 
            <b>Target XML 1</b>
        
  &lt;legisinfo:legisinfo&gt;
      &lt;legisinfo:statusgroup&gt;
        &lt;legisinfo:status&gt;
            &lt;legisinfo:statustext&gt;
              &lt;emph typestyle="bf"&gt;
                Consolidated as in force on 
                &lt;date&gt;23 November 2007&lt;/date&gt;
              &lt;/emph&gt;.
            &lt;/legisinfo:statustext&gt;
        &lt;/legisinfo:status&gt;
      &lt;/legisinfo:statusgroup&gt;
  &lt;/legisinfo:legisinfo&gt;
    
          </pre>
                                    <pre>
            <b>Source XML 2</b>
                  
    &lt;leg:status&gt;
      &lt;nl/&gt;
      &lt;nl/&gt;
        &lt;inlineobject 
            type="image" 
            attachment="web-server" 
            filename="au_repealed.gif" 
            alttext="Repealed:"/&gt; 
        &lt;emph typestyle="bf"&gt;
            This Subordinate Law was repealed on 18/12/2009 by the 
            &lt;ci:cite searchtype="LEG-REF"&gt;
              &lt;ci:content&gt;
                &lt;remotelink 
                    service="DOC-ID" remotekey1="REFPTID" 
                    dpsi="0HJ5" docidref="ABCD_1234" 
                    refpt="NSW_REG_2009-589"&gt;
                          LOCAL COURT RULES 2009
                &lt;/remotelink&gt;
              &lt;/ci:content&gt;
            &lt;/ci:cite&gt;
         &lt;/emph&gt;
    &lt;/leg:status&gt;
     
                 </pre>
                                    <b>Becomes</b>
                                    <pre>
                   <b>Target XML 2</b>
                   
    &lt;legisinfo:legisinfo&gt;
     &lt;legisinfo:statusgroup&gt;
         &lt;legisinfo:status&gt;
             &lt;legisinfo:statustext&gt;
                 &lt;emph typestyle="bf"&gt;
                    This Subordinate Law was repealed on 18/12/2009 by the 
                    &lt;lnci:cite type="legislation" citeref="NSW_REG_2009-589"&gt;
                      &lt;lnci:content&gt; &lt;ref:crossreference crossreferencetype="seeAlso"&gt;
                      &lt;ref:content&gt;LOCAL COURT RULES 2009&lt;/ref:content&gt;
                      &lt;ref:locator anchoridref="NSW_REG_2009-589"&gt;
                       &lt;ref:locator-key&gt;
                        &lt;ref:key-name name="DOC-ID"/&gt;  
                        &lt;ref:key-value value="0HJ5-ABCD_1234"/&gt;
                       &lt;/ref:locator-key&gt;
                      &lt;/ref:locator&gt;
                     &lt;/ref:crossreference&gt;&lt;/lnci:content&gt;
                    &lt;/lnci:cite&gt;
                  &lt;/emph&gt;  
            &lt;/legisinfo:statustext&gt;
         &lt;/legisinfo:status&gt;
       &lt;/legisinfo:statusgroup&gt;
    &lt;/legisinfo:legisinfo&gt;
   
                  </pre>
                                    <p><sourcexml>leg:status@statuscode</sourcexml> becomes <targetxml>legisinfo:status@statuscode</targetxml> the attribute value in the source XML can be directly
                                        converted into the target XML output as shown in the example below. <codeblock> &lt;leg:status statuscode="consolidated"&gt; <b>becomes</b> &lt;legisinfo:status
                                            statuscode="consolidated"&gt; </codeblock></p>
                                    <note>The <sourcexml>nl</sourcexml> will be suppressed from conversion as it is no longer required for presentation.</note>
                                    <note>Conversion should not create adjacent <targetxml>legisinfo:legisinfo</targetxml>. Data should be merged to single
                                        <targetxml>legisinfo:legisinfo</targetxml>.</note>
                                    <note>Conversion should not create adjacent <targetxml>legisinfo:statusgroup</targetxml>. Data should be merged to single
                                            <targetxml>legisinfo:statusgroup</targetxml>. </note>
                                </li>
                            </ul>
                            <ul>
                                <li><sourcexml>leg:longtitle</sourcexml> becomes <targetxml>primlaw:prelim/primlaw:synopsis</targetxml> with child as <targetxml>bodytext</targetxml> and populated as
                                    below: <note>The target element <targetxml>primlaw:prelim/primlaw:synopsis</targetxml> is coming under <targetxml>courtrule:body</targetxml> and not in
                                            <targetxml>courtrule:head/primlawinfo:primlawinfo/legisinfo:legisinfo</targetxml></note>
                                    <note>Conversion should not create adjacent <targetxml>primlaw:prelim</targetxml>. Content should be merged into a single <targetxml>primlaw:prelim</targetxml>
                                        element.</note>
                                    <pre>                          <b>Source XML 1</b>

&lt;leg:body&gt;
    &lt;leg:info id="SA_REG_1996-JUR_LEG_INFO" subseqdoc="false"&gt;
        &lt;!-- ETC. --&gt;
        &lt;leg:longtitle searchtype="LEGISLATION"&gt;
            &lt;p&gt;
                &lt;text&gt;BY virtue and in pursuance of section 89 of the Juries Act, 1927, and all other
                    powers us thereunto enabling, We, The Chief Justice of the Supreme Court of South
                    Australia and the Chief Judge of the District Court of South Australia, do hereby make
                    the following Rules:&lt;/text&gt;
            &lt;/p&gt;
        &lt;/leg:longtitle&gt;
        &lt;!-- ETC. --&gt;
    &lt;/leg:info&gt;
    &lt;!-- ETC. --&gt;
&lt;/leg:body&gt;
                 </pre>
                                    <b>Becomes</b>
                                    <pre>
                   <b>Target XML 1</b>
&lt;courtrule:head&gt;
    &lt;primlawinfo:primlawinfo&gt;
        &lt;legisinfo:legisinfo&gt;
            &lt;!-- ETC. --&gt;
        &lt;/legisinfo:legisinfo&gt;
    &lt;/primlawinfo:primlawinfo&gt;
&lt;/courtrule:head&gt;
&lt;courtrule:body&gt;
    &lt;primlaw:prelim&gt;
        &lt;primlaw:synopsis&gt;
            &lt;bodytext&gt;
                &lt;p&gt;
                    &lt;text&gt;BY virtue and in pursuance of section 89 of the Juries Act, 1927, and all
                        other powers us thereunto enabling, We, The Chief Justice of the Supreme
                        Court of South Australia and the Chief Judge of the District Court of South
                        Australia, do hereby make the following Rules:&lt;/text&gt;
                &lt;/p&gt;
            &lt;/bodytext&gt;
        &lt;/primlaw:synopsis&gt;
    &lt;/primlaw:prelim&gt;
    &lt;!-- ETC. --&gt;
&lt;/courtrule:body&gt;
                  </pre></li>
                            </ul>
                        </li>
                        <!--DSF end -->
                        <li><sourcexml>leg:level</sourcexml> becomes <targetxml>primlaw:level</targetxml> comes with attributes, <sourcexml>@id</sourcexml> Becomes <targetxml>@xml:id</targetxml>
                            <sourcexml>@leveltype</sourcexml> becomes <targetxml>@leveltype</targetxml> attributes <sourcexml>@subdoc</sourcexml> becomes <targetxml>@includeintoc</targetxml> and
                                <sourcexml>toc-caption</sourcexml> becomes <targetxml>alternatetoccaption</targetxml>, the values are tokenized, <ul>
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
                            </ul> and populated as: <note>If the input files are having @leveltype values other than the tokenized list shown above the value will be set as
                                    <targetxml>@leveltype="unclassified"</targetxml>.</note>
                            <pre>
             <!-- LawNow -->
              &lt;leg:level id="ACT_REG_2008-46_BODY"&gt;
              &lt;leg:level-vrnt leveltype="body"&gt;
              &lt;leg:heading&gt;
              &lt;title&gt;Preliminary&lt;/title&gt;
              &lt;/leg:heading&gt;
              ....
              &lt;/leg:level&gt;
              
              
              <b>Becomes</b>
              
              &lt;primlaw:level xml:id="ACT_REG_2008-46_BODY" leveltype="unclassified"&gt;
              &lt;heading&gt;
              &lt;title&gt;Preliminaary&lt;/title&gt;
              &lt;/heading&gt;
              ....
              &lt;/primlaw:level&gt;
            </pre>
                            <note>In New Lexis <targetxml>primlaw:level</targetxml> element is used instead of Rosetta elements <sourcexml>leg:level</sourcexml>and
                                    <sourcexml>leg:level-vrnt</sourcexml>. Pick the <sourcexml>@leveltype</sourcexml> value from <sourcexml>leg:level-vrnt</sourcexml> and the element
                                    <sourcexml>leg:level-vrnt</sourcexml> will be suppressed from conversion.</note>
                        </li>
                        <li><sourcexml>LEGDOC/leg:body/leg:prelim/leg:history</sourcexml> becomes
                                <targetxml>courtrule:courtrule/courtrule:body/primlaw:level[@leveltype="unclassified"]/primlaw:prelim/primlawhist:primlawhist</targetxml>.
                            <pre>

&lt;leg:prelim&gt;
  &lt;leg:history&gt;
    &lt;leg:heading&gt;&lt;title&gt;TABLE OF AMENDMENTS&lt;/title&gt;
  &lt;/leg:heading&gt;
  &lt;p&gt;
    &lt;text&gt;The Family Law Rules 2004 SR 2003 No 375 were gazetted on 23 December 2003 and commenced on 29 March 2004. The Rules have been amended as follows:&lt;/text&gt;
  &lt;/p&gt;
  &lt;leg:tableofamend&gt;
    &lt;table&gt;
      &lt;tgroup cols="3" colsep="0" rowsep="0"&gt;
        &lt;colspec align="left" colname="c1" colnum="1" colwidth="50*"/&gt;
        &lt;colspec align="left" colname="c2" colnum="2" colwidth="50*"/&gt;
        &lt;colspec align="left" colname="c3" colnum="3" colwidth="50*"/&gt;
        &lt;thead&gt;
          &lt;row&gt;
            &lt;entry colname="c1"&gt;&lt;emph typestyle="bf"&gt;Amending Legislation&lt;/emph&gt;&lt;/entry&gt;
            &lt;entry colname="c2"&gt;&lt;emph typestyle="bf"&gt;Gazette/Registration&lt;/emph&gt;&lt;/entry&gt;
            &lt;entry colname="c3"&gt;&lt;emph typestyle="bf"&gt;Date of Commencement&lt;/emph&gt;&lt;/entry&gt;&lt;/row&gt;
        &lt;/thead&gt;
        &lt;tbody&gt;
          &lt;row&gt;
            &lt;entry colname="c1"&gt;Family Law Amendment Rules 2004 (No 2) SR 53&lt;/entry&gt;
            &lt;entry colname="c2"&gt;26 March 2004&lt;/entry&gt;
            &lt;entry colname="c3"&gt;29 March 2004 (Gaz S93 of 26 March 2004)&lt;/entry&gt;
          &lt;/row&gt;
          &lt;row&gt;
            &lt;entry colname="c1"&gt;Family Law Amendment Rules 2004 (No 3) SR 351&lt;/entry&gt;&lt;entry colname="c2"&gt;17 December 2004&lt;/entry&gt;
            &lt;entry colname="c3"&gt;rr 1&amp;#x2013;3 and Sch 1: 17 December 2004; remainder and Sch 2: 31 January 2005; Sch 3: 31 March 2005 (Gaz S371 of 17 December 2004)&lt;/entry&gt;
          &lt;/row&gt;
          &lt;row&gt;
            &lt;entry colname="c1"&gt;Family Law Amendment Rules 2005 (No 1) SLI 148&lt;/entry&gt;
            &lt;entry colname="c2"&gt;23 June 2005&lt;/entry&gt;
            &lt;entry colname="c3"&gt;24 June 2005&lt;/entry&gt;
          &lt;/row&gt;
          &lt;row&gt;
            &lt;entry colname="c1"&gt;Family Law Amendment Rules 2005 (No 2) SLI 212&lt;/entry&gt;
            &lt;entry colname="c2"&gt;14 September 2005&lt;/entry&gt;
            &lt;entry colname="c3"&gt;19 September 2005&lt;/entry&gt;
          &lt;/row&gt;
          &lt;row&gt;
            &lt;entry colname="c1"&gt;Family Law Amendment Rules 2005 (No 3) SLI 292&lt;/entry&gt;
            &lt;entry colname="c2"&gt;30 November 2005&lt;/entry&gt;
            &lt;entry colname="c3"&gt;rr 1&amp;#x2013;3 and Sch 1: 1 December 2005; Sch 2: 1 February 2006&lt;/entry&gt;
          &lt;/row&gt;
          &lt;row&gt;
            &lt;entry colname="c1"&gt;Family Law Amendment Rules 2006 (No 1) SLI 177&lt;/entry&gt;
            &lt;entry colname="c2"&gt;30 June 2006&lt;/entry&gt;
            &lt;entry colname="c3"&gt;1 July 2006&lt;/entry&gt;
          &lt;/row&gt;
          &lt;row&gt;
            &lt;entry colname="c1"&gt;Family Law Amendment Rules 2007 (No 1) SLI 207&lt;/entry&gt;
            &lt;entry colname="c2"&gt;6 July 2007&lt;/entry&gt;
            &lt;entry colname="c3"&gt;7 July 2007&lt;/entry&gt;
          &lt;/row&gt;
          &lt;row&gt;
            &lt;entry colname="c1"&gt;Family Law Amendment Rules 2007 (No 2) SLI 242&lt;/entry&gt;
            &lt;entry colname="c2"&gt;9 August 2007&lt;/entry&gt;
            &lt;entry colname="c3"&gt;10 August 2007&lt;/entry&gt;
          &lt;/row&gt;
          &lt;row&gt;
            &lt;entry colname="c1"&gt;Family Law Amendment Rules 2007 (No 3) SLI 366&lt;/entry&gt;
            &lt;entry colname="c2"&gt;19 December 2007&lt;/entry&gt;
            &lt;entry colname="c3"&gt;20 December 2007&lt;/entry&gt;
          &lt;/row&gt;
          &lt;row&gt;
            &lt;entry colname="c1"&gt;Family Law Amendment Rules 2008 (No 1) SLI 62&lt;/entry&gt;
            &lt;entry colname="c2"&gt;29 April 2008&lt;/entry&gt;
            &lt;entry colname="c3"&gt;rr 1, 2, 3 and Sch 1: 1 May 2008; Schs 2, 3: 1 July 2008&lt;/entry&gt;
          &lt;/row&gt;
          &lt;row&gt;
            &lt;entry colname="c1"&gt;Family Law Amendment Rules 2008 (No 2) SLI 245&lt;/entry&gt;
            &lt;entry colname="c2"&gt;8 December 2008&lt;/entry&gt;
            &lt;entry colname="c3"&gt;rr 1&amp;#x2013;3 and Sch 1: 9 December 2008 (r 2(a)); Sch 2: 1 January 2009 (r 2(b))&lt;/entry&gt;
          &lt;/row&gt;
          &lt;row&gt;
            &lt;entry colname="c1"&gt;Family Law Amendment Rules 2009 (No 1) SLI 33&lt;/entry&gt;
            &lt;entry colname="c2"&gt;26 February 2009&lt;/entry&gt;
            &lt;entry colname="c3"&gt;r 3 and Sch 1&amp;#x2013;4: 1 March 2009&lt;/entry&gt;
          &lt;/row&gt;
        &lt;/tbody&gt;
      &lt;/tgroup&gt;
    &lt;/table&gt;
  &lt;/leg:tableofamend&gt;
&lt;/leg:history&gt;

              
<b>Becomes</b>  
              

&lt;primlaw:level leveltype="unclassified"&gt;
&lt;primlaw:prelim&gt;
  &lt;primlawhist:primlawhist&gt;
    &lt;heading&gt;
      &lt;title&gt;TABLE OF AMENDMENTS&lt;/title&gt;
    &lt;/heading&gt;
    &lt;primlawhist:histgrp&gt;
      &lt;primlawhist:histitem&gt;
        &lt;bodytext&gt;
          &lt;p&gt;
            &lt;text&gt;The Family Law Rules 2004 SR 2003 No 375 were gazetted on 23 December 2003 and commenced on 29 March 2004. The Rules have been amended as follows:&lt;/text&gt;
          &lt;/p&gt;
        &lt;/bodytext&gt;
      &lt;/primlawhist:histitem&gt;
    &lt;/primlawhist:histgrp&gt;
    &lt;primlawhist:histgrp grptype="tableofamend"&gt;
      &lt;primlawhist:histitem&gt;
        &lt;bodytext&gt;
          &lt;table&gt;
            &lt;tgroup cols="3" colsep="0" rowsep="0"&gt;
              &lt;colspec align="left" colname="c1" colnum="1" colwidth="50*"/&gt;
              &lt;colspec align="left" colname="c2" colnum="2" colwidth="50*"/&gt;
              &lt;colspec align="left" colname="c3" colnum="3" colwidth="50*"/&gt;
              &lt;tbody&gt;
                &lt;row&gt;
                  &lt;entry colname="c1"&gt;Family Law Amendment Rules 2004 (No 2) SR 53&lt;/entry&gt;
                  &lt;entry colname="c2"&gt;26 March 2004&lt;/entry&gt;
                  &lt;entry colname="c3"&gt;29 March 2004 (Gaz S93 of 26 March 2004)&lt;/entry&gt;
                &lt;/row&gt;
                &lt;row&gt;
                  &lt;entry colname="c1"&gt;Family Law Amendment Rules 2004 (No 3) SR 351&lt;/entry&gt;
                  &lt;entry colname="c2"&gt;17 December 2004&lt;/entry&gt;
                  &lt;entry colname="c3"&gt;rr 1&amp;#x2013;3 and Sch 1: 17 December 2004; remainder and Sch 2: 31 January 2005; Sch 3: 31 March 2005 (Gaz S371 of 17 December 2004)&lt;/entry&gt;
                &lt;/row&gt;
                &lt;row&gt;
                  &lt;entry colname="c1"&gt;Family Law Amendment Rules 2005 (No 1) SLI 148&lt;/entry&gt;
                  &lt;entry colname="c2"&gt;23 June 2005&lt;/entry&gt;
                  &lt;entry colname="c3"&gt;24 June 2005&lt;/entry&gt;
                &lt;/row&gt;
                &lt;row&gt;
                  &lt;entry colname="c1"&gt;Family Law Amendment Rules 2005 (No 2) SLI 212&lt;/entry&gt;
                  &lt;entry colname="c2"&gt;14 September 2005&lt;/entry&gt;
                  &lt;entry colname="c3"&gt;19 September 2005&lt;/entry&gt;
                &lt;/row&gt;
                &lt;row&gt;
                  &lt;entry colname="c1"&gt;Family Law Amendment Rules 2005 (No 3) SLI 292&lt;/entry&gt;
                  &lt;entry colname="c2"&gt;30 November 2005&lt;/entry&gt;
                  &lt;entry colname="c3"&gt;rr 1&amp;#x2013;3 and Sch 1: 1 December 2005; Sch 2: 1 February 2006&lt;/entry&gt;
                &lt;/row&gt;
                &lt;row&gt;
                  &lt;entry colname="c1"&gt;Family Law Amendment Rules 2006 (No 1) SLI 177&lt;/entry&gt;
                  &lt;entry colname="c2"&gt;30 June 2006&lt;/entry&gt;
                  &lt;entry colname="c3"&gt;1 July 2006&lt;/entry&gt;
                &lt;/row&gt;
                &lt;row&gt;
                  &lt;entry colname="c1"&gt;Family Law Amendment Rules 2007 (No 1) SLI 207&lt;/entry&gt;
                  &lt;entry colname="c2"&gt;6 July 2007&lt;/entry&gt;
                  &lt;entry colname="c3"&gt;7 July 2007&lt;/entry&gt;
                &lt;/row&gt;
                &lt;row&gt;
                  &lt;entry colname="c1"&gt;Family Law Amendment Rules 2007 (No 2) SLI 242&lt;/entry&gt;
                  &lt;entry colname="c2"&gt;9 August 2007&lt;/entry&gt;
                  &lt;entry colname="c3"&gt;10 August 2007&lt;/entry&gt;
                &lt;/row&gt;
                &lt;row&gt;
                  &lt;entry colname="c1"&gt;Family Law Amendment Rules 2007 (No 3) SLI 366&lt;/entry&gt;
                  &lt;entry colname="c2"&gt;19 December 2007&lt;/entry&gt;
                  &lt;entry colname="c3"&gt;20 December 2007&lt;/entry&gt;
                &lt;/row&gt;
                &lt;row&gt;
                  &lt;entry colname="c1"&gt;Family Law Amendment Rules 2008 (No 1) SLI 62&lt;/entry&gt;
                  &lt;entry colname="c2"&gt;29 April 2008&lt;/entry&gt;
                  &lt;entry colname="c3"&gt;rr 1, 2, 3 and Sch 1: 1 May 2008; Schs 2, 3: 1 July 2008&lt;/entry&gt;
                &lt;/row&gt;
                &lt;row&gt;
                  &lt;entry colname="c1"&gt;Family Law Amendment Rules 2008 (No 2) SLI 245&lt;/entry&gt;
                  &lt;entry colname="c2"&gt;8 December 2008&lt;/entry&gt;
                  &lt;entry colname="c3"&gt;rr 1&amp;#x2013;3 and Sch 1: 9 December 2008 (r 2(a)); Sch 2: 1 January 2009 (r 2(b))&lt;/entry&gt;
                &lt;/row&gt;
                &lt;row&gt;
                  &lt;entry colname="c1"&gt;Family Law Amendment Rules 2009 (No 1) SLI 33&lt;/entry&gt;
                  &lt;entry colname="c2"&gt;26 February 2009&lt;/entry&gt;
                  &lt;entry colname="c3"&gt;r 3 and Sch 1&amp;#x2013;4: 1 March 2009&lt;/entry&gt;
                &lt;/row&gt;
              &lt;/tbody&gt;
            &lt;/tgroup&gt;
          &lt;/table&gt;
        &lt;/bodytext&gt;
      &lt;/primlawhist:histitem&gt;
    &lt;/primlawhist:histgrp&gt;
  &lt;/primlawhist:primlawhist&gt;
 &lt;/primlaw:prelim&gt;
&lt;/primlaw:level&gt;
     
         </pre>
                        </li>
                        <li><sourcexml>leg:heading</sourcexml> becomes <targetxml>heading</targetxml> with attributes <sourcexml>@inline</sourcexml>becomes <targetxml>@inline</targetxml> which has
                            tokenized values and populated as: <ul>
                                <li><targetxml>heading[@inline="true"]</targetxml></li>
                                <li><targetxml>heading[@inline="false"]</targetxml></li>
                            </ul>
                            <note>For handling <b>@ln.user-displayed</b> attribute, refer the general markup <xref href="../../common_newest/Rosetta_leg.heading_ln.user-displayed.dita"
                                    >ln.user_displayed="false"</xref> section in the CI.</note>
                            <b>heading element with inline attribute:</b>
                            <pre>
             &lt;leg:level id="NSW_REG_1970-1_PT1RULE3-7"&gt;
             &lt;leg:level-vrnt leveltype="reg" searchtype="LEGISLATION" subdoc="true" toc-caption="3&amp;ndash;7"&gt;
             &lt;leg:heading inline="true"&gt;
             &lt;desig searchtype="REG-NUM"&gt;&lt;designum&gt;&lt;refpt id="NSW_REG_1970-1_PT1RULE3-7" type="ext"/&gt;3&amp;ndash;7&lt;/designum&gt;&lt;/desig&gt;
             &lt;lnlink status="valid" service="SEARCH" scope="All Subscribed Australian Cases and Commentary"
             scope-protocol="combined-source-name"&gt;&lt;marker&gt;&lt;inlineobject width="21px" type="image" filename="mb.gif" attachment="web-server"
             alttext="click to find cases &amp;amp; commentary"/&gt;&lt;/marker&gt;&lt;api-params&gt;&lt;param name="expressSearch" value="true"/&gt;
             &lt;param name="searchString" value="SUPREME COURT RULES 1970 w/s
             LEG-REF(3-7)"/&gt;&lt;/api-params&gt;
             &lt;/lnlink&gt;
             &lt;/leg:heading&gt;
             ...
             &lt;/leg:level&gt;
             
              
              <b>Becomes</b>
              
              &lt;primlaw:level leveltype="regulation" includeintoc="true"
              alternatetoccaption="3&amp;&amp;#x2013;7"&gt;
              &lt;ref:anchor id="NSW_REG_1970-1_PT1RULE3-7" anchortype="global"/&gt;
              &lt;heading inline="true"&gt;
              &lt;desig&gt;3&amp;#x2013;7&lt;/desig&gt;
              &lt;/heading&gt;
              ...
              &lt;/primlaw:level&gt;
            </pre>
                            <ul>
                                <li> If the input document has scenario leg:heading/leg:histnote then move the <targetxml>note</targetxml> after <targetxml>heading</targetxml> within
                                        <targetxml>primlaw:level</targetxml>
                                    <pre>
                  &lt;leg:level&gt;                  
                  &lt;leg:heading&gt;
              &lt;title searchtype="PART-TITLE"&gt;PROPERTY, SPOUSAL MAINTENANCE AND MAINTENANCE AGREEMENTS*&lt;/title&gt;
              &lt;leg:histnote&gt;
              &lt;p&gt;
              &lt;text&gt;[def  rep SLI 191 of 2010  r 3 and Sch 1, effective 3 July 2010]&lt;/text&gt;
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
          [def  rep SLI 191 of 2010  r 3 and Sch 1, effective 3 July 2010]
          &lt;/text&gt;
          &lt;/p&gt;
          &lt;/bodytext&gt;
          &lt;/note&gt;
          ....
          &lt;/primlaw:level&gt;
   
                </pre>
                                </li>
                            </ul>
                        </li>
                        <li><sourcexml>leg:levelbody</sourcexml>and <sourcexml>leg:bodytext</sourcexml>comes in following scenarios: <note>Please note that when <sourcexml>leg:bodytext</sourcexml>
                                contains only <sourcexml>footnotegrp</sourcexml> or <sourcexml>leg:comntry</sourcexml> or an <sourcexml>endnote</sourcexml>, the <sourcexml>leg:bodytext</sourcexml>
                                element is dropped and its children are processed.</note>
                            <ul>
                                <li>If the elements <sourcexml>leg:levelbody</sourcexml> and <sourcexml>leg:bodytext</sourcexml> occurs simultaneously then <targetxml>primlaw:bodytext</targetxml> and
                                    populated as: <pre>
                  <!-- LawNow -->
                  &lt;leg:level id="NSW_REG_2000-706_RULE1"&gt;
                  &lt;leg:level-vrnt leveltype="reg" searchtype="LEGISLATION" subdoc="true" toc-caption="1 Name of Rule"&gt;
                  &lt;leg:heading&gt;
                  &lt;desig searchtype="REG-NUM"&gt;&lt;designum&gt;&lt;refpt id="NSW_REG_2000-706_RULE1"
                  type="ext"/&gt;1&lt;/designum&gt;
                  &lt;/desig&gt;
                  &lt;title align="left" searchtype="REG-TITLE"&gt;Name of Rule&lt;lnlink status="valid" service="SEARCH"
                  scope="All Subscribed Australian Cases and Commentary" scope-protocol="combined-source-name"&gt;
                  &lt;marker&gt;
                  &lt;inlineobject width="21px" type="image" filename="mb.gif" attachment="web-server" alttext="click to find cases
                  &amp;amp;commentary"/&gt;
                  &lt;/marker&gt;
                  &lt;api-params&gt;
                  &lt;param name="expressSearch" value="true"/&gt;
                  &lt;param name="searchString" value="CHILDRENS COURT RULE 2000 w/s
                  LEG-REF(1)"/&gt;
                  &lt;/api-params&gt;
                  &lt;/lnlink&gt;&lt;/title&gt;
                  &lt;/leg:heading&gt;
                  &lt;leg:levelbody&gt;
                  &lt;leg:bodytext&gt;
                  &lt;p&gt;
                  &lt;text&gt;This Rule is the &lt;emph typestyle="it"&gt;Children&amp;rsquo;s Court Rule 2000&lt;/emph&gt;.&lt;/text&gt;
                  &lt;/p&gt;&lt;/leg:bodytext&gt;
                  &lt;/leg:levelbody&gt;
                  &lt;/leg:level-vrnt&gt;
                  &lt;/leg:level&gt;
                  
                  <b>Becomes</b>
                    
                  
                  &lt;primlaw:level leveltype="regulation" includeintoc="true" alternatetoccaption="1 Name of Rule"&gt;
                  &lt;ref:anchor id="NSW_REG_2000-706_RULE1" anchortype="global"/&gt;
                  &lt;heading&gt;
                  &lt;desig&gt;1&lt;/desig&gt;
                  &lt;title align="left"&gt;Name of Rule&lt;/title&gt;
                  &lt;/heading&gt;
                  &lt;primlaw:bodytext&gt;
                  &lt;p&gt;&lt;text&gt;This Rule is the &lt;emph typestyle="it"&gt;Children&amp;#x2019;s Court Rule 2000&lt;/emph&gt;.&lt;/text&gt;&lt;/p&gt;
                  &lt;/primlaw:bodytext&gt;
                  &lt;/primlaw:level&gt;
                 
                  </pre>
                                    <pre>
                  <!--AU services-->
                  &lt;leg:level&gt;
                  &lt;leg:level-vrnt leveltype="subsect"&gt;
                  &lt;leg:heading inline="true"&gt;&lt;desig&gt;&lt;designum&gt;(3)&lt;/designum&gt;&lt;/desig&gt;&lt;/leg:heading&gt;
                  &lt;leg:levelbody&gt;
                  &lt;leg:bodytext&gt;
                  &lt;p&gt;&lt;text&gt;If:&lt;/text&gt;&lt;/p&gt;
                  &lt;l&gt;
                  &lt;li&gt;&lt;lilabel&gt;(a)&lt;/lilabel&gt;
                  &lt;p&gt;&lt;text&gt;an obligation was incurred, or an undertaking was given, under the 1984 Rules before the repeal of those Rules;
                  and&lt;/text&gt;&lt;/p&gt;&lt;/li&gt;
                  &lt;li&gt;&lt;lilabel&gt;(b)&lt;/lilabel&gt;
                  &lt;p&gt;&lt;text&gt;the obligation is of a kind that could be incurred, or the undertaking is of a kind that could be given, under the 2004
                  Rules;&lt;/text&gt;&lt;/p&gt;&lt;/li&gt;
                  &lt;/l&gt;
                  &lt;p&gt;&lt;text&gt;the obligation is taken to have been incurred, or the undertaking is taken to have been given, under the 2004
                  Rules.&lt;/text&gt;&lt;/p&gt;
                  &lt;/leg:bodytext&gt;
                  &lt;/leg:levelbody&gt;
                  &lt;/leg:level-vrnt&gt;
                  &lt;/leg:level&gt;
                  
                  
                  <b>Becomes</b>
                  
                  &lt;primlaw:level leveltype="subsection"&gt;
                   &lt;heading inline="true"&gt;&lt;desig&gt;(3)&lt;/desig&gt;&lt;/heading&gt; 
                  &lt;primlaw:bodytext&gt;
                  &lt;p&gt;&lt;text&gt;If:&lt;/text&gt;&lt;/p&gt; 
                 &lt;list&gt;
                &lt;listitem&gt;&lt;label&gt;(a)&lt;/label&gt;
                 &lt;bodytext&gt;
                 &lt;p&gt;&lt;text&gt;an obligation was incurred, or an undertaking was given, under the 1984 Rules before the repeal of those Rules;
                  and&lt;/text&gt;&lt;/p&gt;
                &lt;/bodytext&gt;     
               &lt;/listitem&gt; 
              &lt;listitem&gt;&lt;label&gt;(b)&lt;/label&gt;
               &lt;bodytext&gt;
                &lt;p&gt;&lt;text&gt;the obligation is of a kind that could be incurred, or the undertaking is of a kind that could be given, under the 2004
                 Rules;&lt;/text&gt;&lt;/p&gt;
               &lt;/bodytext&gt;     
              &lt;/listitem&gt;  
             &lt;/list&gt;  
           &lt;p&gt;
           &lt;text&gt;the obligation is taken to have been incurred, or the undertaking is taken to have been given, under the 2004
           Rules.
           &lt;/text&gt;
           &lt;/p&gt;
           &lt;/primlaw:bodytext&gt;   
         &lt;/primlaw:level&gt; 
         </pre>
                                </li>
                                <li>If the element <sourcexml>leg:levelbody</sourcexml> has child <sourcexml>leg:level</sourcexml> then it becomes <targetxml>primlaw:level</targetxml> and populated
                                    as: <pre>  
                  
                  &lt;leg:levelbody&gt;
                  &lt;leg:level id="NSW_REG_2000-706_RULESPT1"&gt;&lt;leg:level-vrnt leveltype="part" searchtype="LEGISLATION" subdoc="true"
                  toc-caption="Part 1&amp;mdash;Preliminary"&gt;
                  &lt;leg:heading&gt;
                  &lt;title align="left" searchtype="PART-TITLE"&gt;&lt;refpt id="NSW_REG_2000-706_RULESPT1" type="ext"/&gt;Part
                  1&amp;mdash;Preliminary&lt;/title&gt;
                  &lt;/leg:heading&gt;
                  ...
                  &lt;/leg:level&gt;
                  &lt;/leg:levelbody&gt;
                  
          
                <b>Becomes</b>
                  
                &lt;primlaw:level leveltype="part" includeintoc="true" alternatetoccaption="Part 1&amp;#x2014;Preliminary"&gt;
                &lt;ref:anchor id="NSW_REG_2000-706_RULESPT1" anchortype="global"/&gt;
                &lt;heading&gt;
                &lt;title align="left"&gt;Part 1&amp;#x2014;Preliminary&lt;/title&gt;
                &lt;/heading&gt;
                ...
                &lt;/primlaw:level&gt;                
               
                </pre>
                                    <note>Refer <xref href="../../common_newest/Rosetta_refpt-Chof-leg.level_leg.level-vrnt_leg.heading_title-LxAdv-primlaw.level_OR_seclaw.level_ref.anchor.dita"
                                            >refpt</xref> for handling of the same.</note>
                                </li>
                                <li>If the input documents are having scenario <sourcexml>leg:bodytext/leg:heading/title</sourcexml> then <sourcexml>leg:bodytext</sourcexml> becomes
                                        <targetxml>primlaw:bodytext</targetxml> and create a wrapper <targetxml>primlaw:level[@leveltype="unclassified"]</targetxml> with child
                                        <sourcexml>title</sourcexml> becomes <targetxml>title</targetxml>
                                    <pre>
                     &lt;leg:bodytext&gt;
                     &lt;leg:heading&gt;
                     &lt;title&gt;&lt;refpt id="NSW_REG_2005-886_SCH6SD1" type="ext"/&gt;COMPETENCY STANDARDS FOR ENTRY LEVEL
                     LAWYERS&lt;/title&gt;
                     &lt;/leg:heading&gt;
                     ....
                     &lt;/leg:bodytext&gt;
                      
                     
                 <b>Becomes</b>
                     
                 &lt;primlaw:bodytext&gt;
                 &lt;primlaw:level leveltype="unclassified"&gt;
                 &lt;ref:anchor id="NSW_REG_2005-886_SCH6SD1" anchortype="global"/&gt;
               &lt;heading&gt;                
                &lt;title&gt;COMPETENCY STANDARDS FOR ENTRY LEVEL LAWYERS&lt;/title&gt;                
               &lt;/heading&gt;       
            &lt;/primlaw:level&gt;
            ....
            &lt;/primlaw:bodytext&gt;
            
                   </pre>
                                </li>
                                <li>If the input documents are having scenario <sourcexml>leg:bodytext/leg:heading/subtile</sourcexml> then it will become <targetxml>primlaw:bodytext/h</targetxml>
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
                                <li> The first occurence of <sourcexml>leg:bodytext</sourcexml> becomes <targetxml>primlaw:bodytext</targetxml> and after if <sourcexml>leg:bodytext</sourcexml> has
                                    other <sourcexml>leg:bodytext</sourcexml> or <sourcexml>leg:level</sourcexml> as siblings then wrap each of them <targetxml>primlaw:level</targetxml> with
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
                &lt;heading inline="true"&gt;
                &lt;desig&gt;(1)&lt;/desig&gt;
                &lt;/heading&gt;                
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
                                    &lt;lnci:content&gt;&lt;ref:crossreference crossreferencetype="seeAlso"&gt;
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
                        </li>
                        <li><sourcexml>/LEGDOC/leg:body/leg:info/leg:histcite</sourcexml> becomes
                                <targetxml>/courtrule:courtrule/courtrule:body/primlaw:level/primlawhist:primlawhist/primlawhist:histgrp[@grptype="histcite"]</targetxml> with attributes
                                <sourcexml>leg:histcite[@id]</sourcexml> becomes <targetxml>primlawhist:histgrp[@xml:id]</targetxml> and <targetxml>primlaw:level[@leveltype="unclassified"]</targetxml>
                            <note>Add the attribute value <targetxml>@grptype="histcite"</targetxml> to <targetxml>primlawhist:histgrp</targetxml></note>
                            <ul>
                                <li><sourcexml>leg:histcite/heading/title</sourcexml> becomes <targetxml>primlawhist:histgrp[@grptype="histcite"]/heading/title</targetxml>
                                </li>
                            </ul>
                            <ul>
                                <li>If the source document has scenario leg:histcite/table it will be converted using the following rule:
                                        <sourcexml>/LEGDOC/leg:body/leg:info/leg:histcite/table</sourcexml> becomes
                                        <targetxml>/courtrule:courtrule/courtrule:body/primlaw:level[@leveltype="unclassified"]/primlawhist:primlawhist/
                                        primlawhist:histgrp[@grptype="histcite"]/primlawhist:histitem/bodytext/table</targetxml>
                                    <note>Add the attribute value <targetxml>@grptype="histcite"</targetxml> to <targetxml>primlawhist:histgrp</targetxml></note>
                                    <pre>
                &lt;leg:histcite id="QLD_REG_1999-111_LAWNOWHISTORICALVERSIONS"&gt;
                &lt;leg:heading&gt;
                &lt;title&gt;&lt;refpt id="QLD_REG_1999-111_LAWNOWHISTORICALVERSIONS" type="ext"/&gt;Historical Versions&lt;/title&gt;
                &lt;/leg:heading&gt;
                &lt;table frame="none"&gt;
                &lt;tgroup cols="2" colsep="0" rowsep="0"&gt;
                &lt;colspec colwidth="12*" colname="c1" colnum="1"/&gt;
                &lt;colspec colwidth="12*" colname="c2" colnum="2"/&gt;
                &lt;tbody&gt;
                &lt;row&gt;&lt;entry namest="c1" nameend="c2"&gt;2010&lt;/entry&gt;
                &lt;/row&gt;
                &lt;row&gt;&lt;entry colname="c1"&gt;&lt;/entry&gt;&lt;entry colname="c2"&gt;
&lt;remotelink service="DOC-ID" remotekey1="REFPTID" dpsi="038Y" docidref="ABCD_9876" refpt="QLD_REG_1999-111_20101101"&gt;1/11/2010 to 9/12/2010&lt;/remotelink&gt;&lt;/entry&gt;
                &lt;/row&gt;
                &lt;row&gt;&lt;entry colname="c1"&gt;&lt;/entry&gt;&lt;entry colname="c2"&gt;
&lt;remotelink service="DOC-ID" remotekey1="REFPTID" dpsi="038Y" docidref="ABCD_9876" refpt="QLD_REG_1999-111_20100901"&gt;1/9/2010 to 31/10/2010&lt;/remotelink&gt;&lt;/entry&gt;
                &lt;/row&gt;
                ....
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
                    &lt;row&gt;&lt;entry namest="c1" nameend="c2"&gt;2010&lt;/entry&gt;
                    &lt;/row&gt;
                    &lt;row&gt;&lt;entry colname="c1"&gt;&lt;/entry&gt;&lt;entry colname="c2"&gt;            
                               &lt;ref:crossreference crossreferencetype="seeAlso"&gt;
                                        &lt;ref:content&gt;1/11/2010 to 9/12/2010&lt;/ref:content&gt;
                                        &lt;ref:locator anchoridref="_038Y-QLD_REG_1999-111_20100901"&gt;                                            
                                            &lt;ref:locator-key&gt;
                                                &lt;ref:key-name name ="DOC-ID"/&gt;
                                                &lt;ref:key-value value = "038Y-ABCD_9876"/&gt;
                                             &lt;/ref:locator-key&gt;
                                        &lt;/ref:locator&gt;
                                    &lt;/ref:crossreference&gt;                              
                    &lt;/entry&gt;
                    &lt;/row&gt;
                    &lt;row&gt;&lt;entry colname="c1"&gt;&lt;/entry&gt;&lt;entry colname="c2"&gt;                    
                                    &lt;ref:crossreference crossreferencetype="seeAlso"&gt;
                                        &lt;ref:content&gt;1/11/2010 to 9/12/2010&lt;/ref:content&gt;
                                        &lt;ref:locator anchoridref="QLD_REG_1999-111_20100901"&gt;                                            
                                            &lt;ref:locator-key&gt;
                                                &lt;ref:key-name name ="DOC-ID"/&gt;
                                                &lt;ref:key-value value = "038Y-ABCD_9876"/&gt;
                                            &lt;/ref:locator-key&gt;
                                        &lt;/ref:locator&gt;
                                    &lt;/ref:crossreference&gt;                               
                    &lt;/entry&gt;
                    &lt;/row&gt;
                    ....
                    
                    &lt;/tbody&gt;
                    &lt;/tgroup&gt;
                    &lt;/table&gt;
                   &lt;/bodytext&gt;
              &lt;/primlaw:level&gt;
              </pre>
                                </li>
                            </ul>
                            <note>The value for attribute <targetxml>primlaw:level[@leveltype] will be set as @leveltype='unclassified'.</targetxml></note>
                            <note>Refer <xref href="../../common_newest/Rosetta_refpt-Chof-leg.histcite_heading_title-LxAdv-primlawhist.histgrp_ref.anchor.dita">refpt</xref> for handling of the
                                same.</note>
                        </li>
                        <li><sourcexml>leg:preamble</sourcexml> becomes <targetxml>primlaw:level[@leveltype="preamble"]</targetxml> and populated as: <pre>
              &lt;leg:body&gt;
              &lt;leg:info&gt;
              ....
              &lt;/leg:info&gt;
               &lt;leg:preamble id="CTH_REG_2003-284_LEG_PREAMBLE"&gt;
              &lt;leg:level id="CTH_REG_2003-284_ENACT"&gt;&lt;leg:level-vrnt&gt;
              &lt;leg:heading&gt;&lt;title&gt;Enactment&lt;/title&gt;
              &lt;/leg:heading&gt;
              
              <b>Becomes</b>
              
              &lt;courtrule:body&gt;
              .....
              &lt;primlaw:level id="CTH_REG_2003-284_LEG_PREAMBLE" leveltype="preamble"&gt;
              &lt;primlaw:level xml:id="CTH_REG_2003-284_ENACT" leveltype="unclassified"&gt;
              &lt;heading&gt;
              &lt;title&gt;Enactment&lt;/title&gt;
              &lt;/heading&gt;
              &lt;/primlaw:level&gt;
              &lt;/primlaw:level&gt;
              
            </pre>
                            <note>Here value "preamble" is fixed for leveltype attribute.</note>
                        </li>
                        <li>
                            <sourcexml>leg:histnote</sourcexml> becomes <targetxml>note[notetype="historical"]</targetxml>
                            <pre>
            &lt;leg:histnote&gt;
            &lt;leg:heading&gt;
            &lt;title align="left"&gt;Rule 26&lt;/title&gt;
            &lt;/leg:heading&gt;
            &lt;p&gt;&lt;text&gt;&lt;emph typestyle="it"&gt;[Subrule (5A) inserted by No. 32 of 2010, s. 15, Applied: 04 November 2010]&lt;/emph&gt;
            &lt;/text&gt;&lt;/p&gt;
            &lt;/leg:histnote&gt;
            
            <b>Becomes</b>
            
            &lt;note notetype="historical"&gt;
            &lt;heading&gt;&lt;title align="left"&gt;Rule 26&lt;/title&gt;
            &lt;/heading&gt;
            &lt;bodytext&gt;
            &lt;p&gt;
            &lt;text&gt;&lt;emph typestyle="it"&gt;[Subrule (5A) inserted by No. 32 of 2010, s. 15, Applied: 04 November 2010]&lt;/emph&gt;
            &lt;/text&gt;
            &lt;/p&gt;
            &lt;/bodytext&gt;
            &lt;/note&gt;
            
          </pre>
                        </li>
                        <li><sourcexml>/LEGDOC/leg:body/leg:endmatter</sourcexml>Becomes <targetxml>/courtrule:courtrule/courtrule:body/primlaw:level</targetxml> with attribute
                                <targetxml>@leveltype["endnote"]</targetxml>. with child elements being handled as: <ul>
                                <li>
                                    <sourcexml>leg:level/leg:level-vrnt</sourcexml> becomes <targetxml>primlaw:level</targetxml> with attribute <targetxml>@leveltype</targetxml>
                                </li>
                            </ul>
                            <pre>
            <!-- LawNow -->
            &lt;leg:endmatter&gt;
            &lt;leg:level id="QLD_REG_1999-111_NOTES"&gt;&lt;leg:level-vrnt leveltype="notes" subdoc="true" toc-caption="Endnotes"&gt;
            &lt;leg:heading&gt;
            &lt;title align="center"&gt;&lt;refpt id="QLD_REG_1999-111_NOTES" type="ext"/&gt;&lt;emph typestyle="bf"&gt;Endnotes&lt;/emph&gt;
            &lt;/title&gt;
            &lt;/leg:heading&gt;
            &lt;leg:levelbody&gt;
            &lt;leg:level id="QLD_REG_1999-111_NOTESPROV1"&gt;
            &lt;leg:level-vrnt leveltype="clause" searchtype="LEGISLATION" subdoc="true" toc-caption="1 Index to endnotes"&gt;
            &lt;leg:heading&gt;
            &lt;desig searchtype="CLAUSE-NUM"&gt;&lt;designum&gt;&lt;refpt id="QLD_REG_1999-111_NOTESPROV1" type="ext"/&gt;&lt;emph typestyle="bf"&gt;1&lt;/emph&gt;
            &lt;/designum&gt;
            &lt;/desig&gt;
            &lt;title align="left" searchtype="CLAUSE-TITLE"&gt;
            &lt;emph typestyle="bf"&gt;Index to endnotes&lt;/emph&gt;
            &lt;lnlink status="valid" service="SEARCH" scope="All Subscribed Australian Cases and Commentary"
            scope-protocol="combined-source-name"&gt;
            &lt;marker&gt;&lt;inlineobject width="21px" type="image" filename="mb.gif" attachment="web-server" alttext="click to find cases &amp;amp;
            commentary"/&gt;&lt;/marker&gt;
            &lt;api-params&gt;
            &lt;param name="expressSearch" value="true"/&gt;&lt;param name="searchString" value="UNIFORM CIVIL PROCEDURE RULES 1999 w/s
            LEG-REF(1)"/&gt;
            &lt;/api-params&gt;
            &lt;/lnlink&gt;
            &lt;/title&gt;
            &lt;/leg:heading&gt;
            &lt;leg:levelbody&gt;
            &lt;leg:bodytext&gt;
            &lt;table&gt;
            &lt;tgroup cols="3"&gt;
            &lt;colspec colwidth="2*" colname="c1"/&gt;
            &lt;colspec colwidth="24*" colname="c2"/&gt;
            &lt;colspec colwidth="5*" colname="c3"/&gt;
            &lt;tbody&gt;
            &lt;row&gt;&lt;entry colname="c1" align="left"&gt;&lt;/entry&gt;&lt;entry colname="c2" align="left"&gt;&lt;/entry&gt;&lt;entry colname="c3" align="left"&gt;Page&lt;/entry&gt;
            &lt;/row&gt;
            &lt;row&gt;&lt;entry colname="c1" align="left"&gt;2&lt;/entry&gt;&lt;entry colname="c2" align="left"&gt;Date to which amendments incorporated&lt;/entry&gt;&lt;entry
            colname="c3" align="left"&gt;640&lt;/entry&gt;
            &lt;/row&gt;
            &lt;row&gt;&lt;entry colname="c1" align="left"&gt;3&lt;/entry&gt;&lt;entry colname="c2" align="left"&gt;Key&lt;/entry&gt;&lt;entry colname="c3"
            align="left"&gt;641&lt;/entry&gt;
            &lt;/row&gt;
            ...
            &lt;/tbody&gt;
            &lt;/tgroup&gt;
            &lt;/table&gt;
            &lt;/leg:bodytext&gt;
            &lt;/leg:levelbody&gt;    
            &lt;/leg:level-vrnt&gt;            
            &lt;/leg:level&gt;
            &lt;/leg:levelbody&gt;
            &lt;/leg:level&gt;
           &lt;/leg:endmatter&gt;
                        
            
            <b>Becomes</b>
               
            &lt;primlaw:level leveltype="endnote"&gt;
            &lt;primlaw:level leveltype="endnote" includeintoc="true" alternatetoccaption="Endnotes"&gt;
            &lt;ref:anchor id="QLD_REG_1999-111_NOTES" anchortype="global"/&gt;
            &lt;heading&gt;
            &lt;title align="center"&gt;&lt;emph typestyle="bf"&gt;Endnotes&lt;/emph&gt;
            &lt;/title&gt;
            &lt;/heading&gt;
             &lt;primlaw:level leveltype="clause" includeintoc="true" alternatetoccaption="1 Index to endnotes"&gt;
             &lt;ref:anchor id="QLD_REG_1999-111_NOTESPROV1" anchortype="global"/&gt;
             &lt;heading&gt;
              &lt;desig&gt;&lt;emph typestyle="bf"&gt;1&lt;/emph&gt;&lt;/desig&gt;
               &lt;title align="left"&gt;
               &lt;emph typestyle="bf"&gt;Index to endnotes&lt;/emph&gt;&lt;/title&gt;
             &lt;/heading&gt;
           &lt;primlaw:bodytext&gt;
             &lt;table&gt;
                 &lt;tgroup cols="3"&gt;
                     &lt;colspec colwidth="2*" colname="c1"/&gt;
                     &lt;colspec colwidth="24*" colname="c2"/&gt;
                     &lt;colspec colwidth="5*" colname="c3"/&gt;
                     &lt;tbody&gt;
                     &lt;row&gt;
                     &lt;entry colname="c1" align="left"&gt;&lt;/entry&gt;&lt;entry colname="c2" align="left"&gt;&lt;/entry&gt;&lt;entry colname="c3" 
                         align="left"&gt;Page&lt;/entry&gt;
                     &lt;/row&gt;
                      &lt;row&gt;&lt;entry colname="c1" align="left"&gt;2&lt;/entry&gt;&lt;entry colname="c2" align="left"&gt;Date to which amendments
                      incorporated&lt;/entry&gt;
                     &lt;entry colname="c3" align="left"&gt;640&lt;/entry&gt;
                     &lt;/row&gt;
                     &lt;row&gt;&lt;entry colname="c1" align="left"&gt;3&lt;/entry&gt;&lt;entry colname="c2" align="left"&gt;Key&lt;/entry&gt;&lt;entry colname="c3"
                      align="left"&gt;641&lt;/entry&gt;
                      &lt;/row&gt;
                         .....
                         &lt;/tgroup&gt;
                     &lt;/table&gt;    
                   &lt;/primlaw:bodytext&gt;
                  &lt;/primlaw:level&gt;
                  &lt;/primlaw:level&gt;
                  &lt;/primlaw:level&gt;  
            
             </pre>
                            <note>Refer <xref href="../../common_newest/Rosetta_refpt-Chof-leg.level_leg.level-vrnt_leg.heading_title-LxAdv-primlaw.level_OR_seclaw.level_ref.anchor.dita">refpt</xref>
                                for handling of the same.</note>
                        </li>
                        <li><sourcexml>leg:history</sourcexml> becomes <targetxml>primlawhist:primlawhist</targetxml> with attributes <sourcexml>leg:history[@id]</sourcexml> becomes
                                <targetxml>primlawhist:primlawhist[@xml:id]</targetxml> and child elements includes: <ul>
                                <li><sourcexml>leg:history/leg:heading</sourcexml> becomes <targetxml>primlawhist:primlawhist/heading</targetxml>
                                    <pre>
              &lt;leg:endmatter&gt;
              &lt;leg:history id="QLD_REG_1999-111_LEGHIST"&gt;
              &lt;leg:heading&gt;&lt;title&gt;&lt;refpt id="QLD_REG_1999-111_LEGHIST" type="ext"/&gt;
              &lt;emph typestyle="bf"&gt;LawNow Legislative History&lt;/emph&gt;
              &lt;/title&gt;
              &lt;/leg:heading&gt;
            &lt;leg:tableofamend&gt;
            &lt;leg:heading&gt;
            &lt;title&gt;&lt;refpt id="QLD_REG_1999-111_LEGHIST_AMENDTOME" type="ext"/&gt;&lt;emph typestyle="bf"&gt;Amendments to
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
            &lt;ref:anchor id="QLD_REG_1999-111_LEGHIST" anchortype="global"/&gt;
            &lt;heading&gt;&lt;title&gt;LawNow Legislative History&lt;/title&gt;&lt;/heading&gt;
            &lt;primlawhist:histgrp grptype="tableofamend"&gt;
            &lt;ref:anchor id="QLD_REG_1999-111_LEGHIST_AMENDTOME" anchortype="global"/&gt;
            &lt;heading&gt;
            &lt;title&gt;
            &lt;emph typestyle="bf"&gt;Amendments to this Act&lt;/emph&gt;&lt;/title&gt;
            &lt;/heading&gt;
            &lt;primlawhist:histitem&gt;
            &lt;bodytext&gt;
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
             &lt;.primlawhist:histgrp&gt;
              &lt;/primlawhist:primlawhist&gt;
             &lt;/primlaw:level&gt;
            
            </pre>
                                </li>
                                <li><sourcexml>leg:history/p/text</sourcexml> becomes <targetxml>primlawhist:primlawhist/primlawhist:histgrp/primlawhist:histitem/bodytext/p/text</targetxml>
                                    <pre>
                &lt;leg:history&gt;
             &lt;leg:heading&gt;&lt;title&gt;TABLE OF AMENDMENTS&lt;/title&gt;
             &lt;/leg:heading&gt;
             &lt;p&gt;
             &lt;text&gt;The Family Law Rules 2004 SR 2003 No 375 were gazetted on 23 December 2003 and commenced on 29 March 2004. The Rules have been
              amended as follows:
              &lt;/text&gt;
              &lt;/p&gt;
              &lt;leg:tableofamend&gt;
                &lt;table&gt;
                &lt;tgroup cols="3" colsep="0" rowsep="0"&gt;
                &lt;colspec align="left" colname="c1" colnum="1" colwidth="50*"/&gt;
                &lt;colspec align="left" colname="c2" colnum="2" colwidth="50*"/&gt;
                &lt;colspec align="left" colname="c3" colnum="3" colwidth="50*"/&gt;
                &lt;thead&gt;&lt;row&gt;&lt;entry colname="c1"&gt;&lt;emph typestyle="bf"&gt;Amending Legislation&lt;/emph&gt;&lt;/entry&gt;
                &lt;entry colname="c2"&gt;&lt;emph typestyle="bf"&gt;Gazette/Registration&lt;/emph&gt;&lt;/entry&gt;
                &lt;entry colname="c3"&gt;&lt;emph typestyle="bf"&gt;Date of Commencement&lt;/emph&gt;&lt;/entry&gt;&lt;/row&gt;&lt;/thead&gt;
                &lt;tbody&gt;
                &lt;row&gt;&lt;entry colname="c1"&gt;Family Law Amendment Rules 2004 (No 2) SR 53&lt;/entry&gt;&lt;entry colname="c2"&gt;26 March 2004&lt;/entry&gt;&lt;entry
                colname="c3"&gt;29 March 2004 (Gaz S93 of 26 March 2004)&lt;/entry&gt;&lt;/row&gt;
                &lt;row&gt;&lt;entry colname="c1"&gt;Family Law Amendment Rules 2004 (No 3) SR 351&lt;/entry&gt;&lt;entry colname="c2"&gt;17 December 2004&lt;/entry&gt;&lt;entry
                colname="c3"&gt;rr 1&amp;#x2013;3 and Sch 1: 17 December 2004; remainder and Sch 2: 31 January 2005; Sch 3: 31 March 2005 (Gaz S371 of
                17 December 2004)&lt;/entry&gt;&lt;/row&gt;
                &lt;row&gt;&lt;entry colname="c1"&gt;Family Law Amendment Rules 2005 (No 1) SLI 148&lt;/entry&gt;&lt;entry colname="c2"&gt;23 June 2005&lt;/entry&gt;&lt;entry
                colname="c3"&gt;24 June 2005&lt;/entry&gt;&lt;/row&gt;
                &lt;row&gt;&lt;entry colname="c1"&gt;Family Law Amendment Rules 2005 (No 2) SLI 212&lt;/entry&gt;&lt;entry colname="c2"&gt;14 September 2005&lt;/entry&gt;&lt;entry
                colname="c3"&gt;19 September 2005&lt;/entry&gt;&lt;/row&gt;
                &lt;row&gt;&lt;entry colname="c1"&gt;Family Law Amendment Rules 2005 (No 3) SLI 292&lt;/entry&gt;&lt;entry colname="c2"&gt;30 November 2005&lt;/entry&gt;&lt;entry
                colname="c3"&gt;rr 1&amp;#x2013;3 and Sch 1: 1 December 2005; Sch 2: 1 February 2006&lt;/entry&gt;&lt;/row&gt;
                &lt;row&gt;&lt;entry colname="c1"&gt;Family Law Amendment Rules 2006 (No 1) SLI 177&lt;/entry&gt;&lt;entry colname="c2"&gt;30 June 2006&lt;/entry&gt;&lt;entry
                colname="c3"&gt;1 July 2006&lt;/entry&gt;&lt;/row&gt;
                &lt;row&gt;&lt;entry colname="c1"&gt;Family Law Amendment Rules 2007 (No 1) SLI 207&lt;/entry&gt;&lt;entry colname="c2"&gt;6 July 2007&lt;/entry&gt;&lt;entry
                colname="c3"&gt;7 July 2007&lt;/entry&gt;&lt;/row&gt;
                &lt;row&gt;&lt;entry colname="c1"&gt;Family Law Amendment Rules 2007 (No 2) SLI 242&lt;/entry&gt;&lt;entry colname="c2"&gt;9 August 2007&lt;/entry&gt;&lt;entry
                colname="c3"&gt;10 August 2007&lt;/entry&gt;&lt;/row&gt;
                &lt;row&gt;&lt;entry colname="c1"&gt;Family Law Amendment Rules 2007 (No 3) SLI 366&lt;/entry&gt;&lt;entry colname="c2"&gt;19 December 2007&lt;/entry&gt;&lt;entry
                colname="c3"&gt;20 December 2007&lt;/entry&gt;&lt;/row&gt;
                &lt;row&gt;&lt;entry colname="c1"&gt;Family Law Amendment Rules 2008 (No 1) SLI 62&lt;/entry&gt;&lt;entry colname="c2"&gt;29 April 2008&lt;/entry&gt;&lt;entry
                colname="c3"&gt;rr 1, 2, 3 and Sch 1: 1 May 2008; Schs 2, 3: 1 July 2008&lt;/entry&gt;&lt;/row&gt;
                &lt;row&gt;&lt;entry colname="c1"&gt;Family Law Amendment Rules 2008 (No 2) SLI 245&lt;/entry&gt;&lt;entry colname="c2"&gt;8 December 2008&lt;/entry&gt;&lt;entry
                colname="c3"&gt;rr 1&amp;#x2013;3 and Sch 1: 9 December 2008 (r 2(a)); Sch 2: 1 January 2009 (r 2(b))&lt;/entry&gt;&lt;/row&gt;
                &lt;row&gt;&lt;entry colname="c1"&gt;Family Law Amendment Rules 2009 (No 1) SLI 33&lt;/entry&gt;&lt;entry colname="c2"&gt;26 February 2009&lt;/entry&gt;&lt;entry
                colname="c3"&gt;r 3 and Sch 1&amp;#x2013;4: 1 March 2009&lt;/entry&gt;&lt;/row&gt;&lt;/tbody&gt;&lt;/tgroup&gt;&lt;/table&gt;
                &lt;/leg:tableofamend&gt;
                &lt;/leg:history&gt;
            
                
                <b>Becomes</b>
                
                              
                  &lt;primlawhist:primlawhist&gt;
             &lt;heading&gt;&lt;title&gt;TABLE OF AMENDMENTS&lt;/title&gt;&lt;/heading&gt;     
             &lt;primlawhist:histgrp&gt;
           &lt;primlawhist:histitem&gt;
            &lt;bodytext&gt;
             &lt;p&gt;
             &lt;text&gt; The Family Law Rules 2004 SR 2003 No 375 were gazetted on 23 December 2003 and commenced on 29 March 2004. The Rules have been amended as follows:&lt;/text&gt;
             &lt;/p&gt;
            &lt;/bodytext&gt;
           &lt;/primlawhist:histitem&gt;
          &lt;/primlawhist:histgrp&gt;   
             &lt;primlawhist:histgrp grptype="tableofamend"&gt;
              &lt;primlawhist:histitem&gt;
                &lt;bodytext&gt;
                &lt;table&gt;
                &lt;tgroup&gt;
                &lt;tbody&gt;
                    &lt;row&gt;&lt;entry colname="c1"&gt;Family Law Amendment Rules 2004 (No 2) SR 53&lt;/entry&gt;&lt;entry colname="c2"&gt;26 March 2004&lt;/entry&gt;
                    &lt;entry colname="c3"&gt;29 March 2004 (Gaz S93 of 26 March 2004)&lt;/entry&gt;&lt;/row&gt;
                    &lt;row&gt;&lt;entry colname="c1"&gt;Family Law Amendment Rules 2004 (No 3) SR 351&lt;/entry&gt;&lt;entry colname="c2"&gt;17 December
                    2004&lt;/entry&gt;&lt;entry colname="c3"&gt;rr 1&amp;#x2013;3 and Sch 1: 17 December 2004; remainder and Sch 2: 31 January 2005; Sch 3:
                    31 March 2005 (Gaz S371 of 17 December 2004)&lt;/entry&gt;&lt;/row&gt;
                    &lt;row&gt;&lt;entry colname="c1"&gt;Family Law Amendment Rules 2005 (No 1) SLI 148&lt;/entry&gt;&lt;entry colname="c2"&gt;23 June 2005&lt;/entry&gt;&lt;entry
                    colname="c3"&gt;24 June 2005&lt;/entry&gt;&lt;/row&gt;
                    &lt;row&gt;&lt;entry colname="c1"&gt;Family Law Amendment Rules 2005 (No 2) SLI 212&lt;/entry&gt;&lt;entry colname="c2"&gt;14 September
                    2005&lt;/entry&gt;&lt;entry colname="c3"&gt;19 September 2005&lt;/entry&gt;&lt;/row&gt;
                    &lt;row&gt;&lt;entry colname="c1"&gt;Family Law Amendment Rules 2005 (No 3) SLI 292&lt;/entry&gt;&lt;entry colname="c2"&gt;30 November
                    2005&lt;/entry&gt;&lt;entry colname="c3"&gt;rr 1&amp;#x2013;3 and Sch 1: 1 December 2005; Sch 2: 1 February 2006&lt;/entry&gt;&lt;/row&gt;
                    &lt;row&gt;&lt;entry colname="c1"&gt;Family Law Amendment Rules 2006 (No 1) SLI 177&lt;/entry&gt;&lt;entry colname="c2"&gt;30 June 2006&lt;/entry&gt;&lt;entry
                    colname="c3"&gt;1 July 2006&lt;/entry&gt;&lt;/row&gt;
                    &lt;row&gt;&lt;entry colname="c1"&gt;Family Law Amendment Rules 2007 (No 1) SLI 207&lt;/entry&gt;&lt;entry colname="c2"&gt;6 July 2007&lt;/entry&gt;&lt;entry
                    colname="c3"&gt;7 July 2007&lt;/entry&gt;&lt;/row&gt;
                    &lt;row&gt;&lt;entry colname="c1"&gt;Family Law Amendment Rules 2007 (No 2) SLI 242&lt;/entry&gt;&lt;entry colname="c2"&gt;9 August 2007&lt;/entry&gt;&lt;entry
                    colname="c3"&gt;10 August 2007&lt;/entry&gt;&lt;/row&gt;
                    &lt;row&gt;&lt;entry colname="c1"&gt;Family Law Amendment Rules 2007 (No 3) SLI 366&lt;/entry&gt;&lt;entry colname="c2"&gt;19 December
                    2007&lt;/entry&gt;&lt;entry colname="c3"&gt;20 December 2007&lt;/entry&gt;&lt;/row&gt;
                    &lt;row&gt;&lt;entry colname="c1"&gt;Family Law Amendment Rules 2008 (No 1) SLI 62&lt;/entry&gt;&lt;entry colname="c2"&gt;29 April 2008&lt;/entry&gt;&lt;entry
                    colname="c3"&gt;rr 1, 2, 3 and Sch 1: 1 May 2008; Schs 2, 3: 1 July 2008&lt;/entry&gt;&lt;/row&gt;
                    &lt;row&gt;&lt;entry colname="c1"&gt;Family Law Amendment Rules 2008 (No 2) SLI 245&lt;/entry&gt;&lt;entry colname="c2"&gt;8 December
                    2008&lt;/entry&gt;&lt;entry colname="c3"&gt;rr 1&amp;#x2013;3 and Sch 1: 9 December 2008 (r 2(a)); Sch 2: 1 January 2009 (r
                    2(b))&lt;/entry&gt;&lt;/row&gt;&lt;row&gt;&lt;entry colname="c1"&gt;Family Law Amendment Rules 2009 (No 1) SLI 33&lt;/entry&gt;&lt;entry colname="c2"&gt;26
                    February 2009&lt;/entry&gt;
                    &lt;entry colname="c3"&gt;r 3 and Sch 1&amp;#x2013;4: 1 March 2009&lt;/entry&gt;&lt;/row&gt;
                    &lt;/tbody&gt;
                    &lt;/tgroup&gt;
                    &lt;/table&gt;      
                &lt;/bodytext&gt;
               &lt;/primlawhist:histitem&gt;
              &lt;/primlawhist:histgrp&gt;    
              &lt;/primlawhist:primlawhist&gt;
                    
              </pre>
                                </li>
                                <li>
                                    <sourcexml>leg:history/p/blockquote</sourcexml> becomes
                                        <targetxml>primlawhist:primlawhist/primlawhist:histgrp/primlawhist:histitem/bodytext/p/blockquote</targetxml>
                                    <note>Refer <xref href="../../common_newest/Rosetta_blockquote-legfragment-leg.level-LxAdv-primlaw.excerpt-primlaw.level.dita">legfragment</xref> for handling of
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
                         &lt;emph typestyle="bf"&gt;
                          &lt;emph typestyle="it"&gt;Note: These Rules are applicable to proceedings in the Court under the Corporations Act or the ASC Act, commenced on or after 1 April 2003. The Corporations Law Rules 2000 (South Australia), which were repealed as from 31 March 2003, continue to apply to proceedings in the court under the Corporations Law or the ASIC Law prior to 1 April 2003 and are reproduced behind these Rules.&lt;/emph&gt; 
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
                                    &lt;emph typestyle="bf"&gt;
                                        &lt;emph typestyle="it"&gt;Note: These Rules are applicable to proceedings in the Court under the Corporations Act or the ASC Act, commenced on or after 1 April 2003. The Corporations Law Rules 2000 (South Australia), which were repealed as from 31 March 2003, continue to apply to proceedings in the court under the Corporations Law or the ASIC Law prior to 1 April 2003 and are reproduced behind these Rules.&lt;/emph&gt; 
                                    &lt;/emph&gt;
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
        &lt;text&gt;The Local Court Rules 1961 as reproduced are based on the reprint of 26 February 1996 and until 1&amp;#x00A0;May 2005 were amended as set out in the table following.
....
        &lt;/text&gt;
    &lt;/p&gt;
    &lt;p&gt;
        &lt;text&gt;Section 11 of the Courts Legislation Amendment and Repeal Act 2004 provides as&amp;#x00A0;follows:&lt;/text&gt;
        &lt;blockquote&gt;
            &lt;legfragment&gt;
            &lt;leg:level&gt;
                &lt;leg:level-vrnt leveltype="sect"&gt;
                    &lt;leg:heading inline="true"&gt;
                        &lt;title&gt;&amp;#x201C;Local Court Rules 1961 repealed and transitional provision&lt;/title&gt;
                        &lt;desig&gt;&lt;designum&gt;11&lt;/designum&gt;&lt;/desig&gt;
                    &lt;/leg:heading&gt;
                    ....
                &lt;/leg:level-vrnt&gt;
             &lt;/leg:level&gt;
            &lt;/legfragment&gt;
        &lt;/blockquote&gt;
        &lt;text&gt;For the time being, the Local Court Rules and commentary remain in this publication for the benefit of subscribers.&lt;/text&gt;&lt;/p&gt;
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
        &lt;text&gt;The Local Court Rules 1961 as reproduced are based on the reprint of 26 February 1996 and until 1&amp;#x00A0;May 2005 were amended as set out in the table following.
....
        &lt;/text&gt;
        &lt;/p&gt;
        &lt;p&gt;
        &lt;text&gt;Section 11 of the Courts Legislation Amendment and Repeal Act 2004 provides as&amp;#x00A0;follows:&lt;/text&gt;&lt;/p&gt;
          &lt;primlaw:excerpt&gt;
             &lt;primlaw:level leveltype="section"&gt;
                &lt;heading inline="true"&gt;
                &lt;title&gt;&amp;#x201C;Local Court Rules 1961 repealed and transitional provision&lt;/title&gt;
                 &lt;desig&gt;11&lt;/desig&gt;
                &lt;/heading&gt;           
             .....
             &lt;/primlaw:level&gt;
             &lt;/primlaw:excerpt&gt;
             &lt;p&gt;
             &lt;text&gt;For the time being, the Local Court Rules and commentary remain in this publication for the benefit of subscribers.&lt;/text&gt;
             &lt;/p&gt;
             &lt;/bodytext&gt;
           &lt;/primlawhist:histitem&gt;
        &lt;/primlawhist:histgrp&gt;
    &lt;/primlawhist:primlawhist&gt;
          
    </pre>
                                </li>
                                <li><sourcexml>leg:history/p/glp:note</sourcexml> becomes <targetxml>primlawhist:primlawhist/primlawhist:histgrp/primlawhist:histitem/bodytext/note</targetxml>
                                    <note>If there is only <sourcexml>glp:note</sourcexml> as a child of <sourcexml>p</sourcexml> then omit <sourcexml>p</sourcexml> from conversion and generate
                                            <targetxml>note</targetxml> but if there is any child of <sourcexml>p</sourcexml> other than <sourcexml>glp:note</sourcexml> then
                                            <targetxml>note</targetxml> will become sibling of <targetxml>p</targetxml> in output.</note>
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
                        <li> The conversion of <sourcexml>leg:tableofamend</sourcexml> is based on the following scenarios: <sourcexml>leg:tableofamend/heading</sourcexml> becomes
                                <targetxml>primlawhist:primlawhist/primlawhist:histgrp[@grptype="tableofamend"]/heading</targetxml>, this is for capturing the heading information.
                                <sourcexml>leg:tableofamend</sourcexml> becomes
                                <targetxml>primlawhist:primlawhist/primlawhist:histgrp[@grptype="tableofamend"]/primlawhist:histitem/bodytext</targetxml>
                            <note>Add the attribute value <targetxml>@grptype="tableofamend"</targetxml> to <targetxml>primlawhist:histgrp</targetxml></note>
                            <pre>
                     &lt;leg:tableofamend&gt;
                     &lt;leg:heading&gt;
                     &lt;title&gt;&lt;refpt id="ACT_REG_2008-46_LEGHIST_MADE" type="ext"/&gt;&lt;emph typestyle="bf"&gt;Notification&lt;/emph&gt;&lt;/title&gt;
                     &lt;/leg:heading&gt;
                    &lt;p&gt;
                    &lt;text&gt;Notification Date 3/11/2008&lt;/text&gt;&lt;/p&gt;
                    &lt;/leg:tableofamend&gt;
                    &lt;leg:tableofamend&gt;
                    &lt;leg:heading&gt;&lt;title&gt;&lt;refpt id="ACT_REG_2008-46_LEGHIST_COMMENCEMENTS" type="ext"/&gt;&lt;emph typestyle="bf"&gt;Commencement
                    Information&lt;/emph&gt;&lt;/title&gt;
                    &lt;/leg:heading&gt;
                    &lt;table frame="all"&gt;
                    &lt;tgroup cols="4" colsep="1" rowsep="1"&gt;
                    &lt;colspec colwidth="12*" colname="c1" colnum="1"/&gt;
                    &lt;colspec colwidth="12*" colname="c2" colnum="2"/&gt;
                    &lt;colspec colwidth="12*" colname="c3" colnum="3"/&gt;
                    &lt;colspec colwidth="12*" colname="c4" colnum="4"/&gt;
                    &lt;thead&gt;
                    &lt;row&gt;&lt;entry namest="c1" nameend="c4" align="center"&gt;Commencements&lt;/entry&gt;
                    &lt;/row&gt;
                    &lt;row&gt;&lt;entry colname="c1" align="center"&gt;Start Date&lt;/entry&gt;&lt;entry colname="c2" align="center"&gt;Authority&lt;/entry&gt;&lt;entry                                colname="c3" align="center"&gt;Provisions&lt;/entry&gt;&lt;entry colname="c4" align="center"&gt;Exclusions&lt;/entry&gt;
                    &lt;/row&gt;
                    &lt;/thead&gt;
                    &lt;tbody&gt;
                    &lt;row&gt;
                    &lt;entry colname="c1" align="left"&gt;On the day after this Regulation's notification day.&lt;nl/&gt;(4/11/2008)&lt;/entry&gt;
                    &lt;entry colname="c2" align="center"&gt;
                    &lt;ci:cite searchtype="LEG-REF"&gt;
                    &lt;ci:content&gt;
                    &lt;remotelink dpsi="3333" docidref="EFGH_9876" refpt="ACT_REG_2008-46_PROV2" service="DOC-ID" remotekey1="REFPTID"&gt;Sec 2&lt;/remotelink&gt;
                    &lt;/ci:content&gt;
                    &lt;/ci:cite&gt;
                    &lt;/entry&gt;
                    &lt;entry colname="c3" align="center"&gt;The Regulation&lt;/entry&gt;&lt;entry colname="c4" align="center"&gt;---&lt;/entry&gt;
                    &lt;/row&gt;
                    &lt;/tbody&gt;
                    &lt;/tgroup&gt;
                    &lt;/table&gt;&lt;/leg:tableofamend&gt;
                    
                    <b>Becomes</b>
            
                  &lt;primlawhist:primlawhist&gt;
                      &lt;primlawhist:histgrp grptype="tableofamend"&gt;
                      &lt;ref:anchor id="ACT_REG_2008-46_LEGHIST_MADE" type="global"/&gt;
                      &lt;heading&gt;
                     &lt;title&gt;&lt;emph typestyle="bf"&gt;Notification&lt;/emph&gt;&lt;/title&gt;
                      &lt;/heading&gt;
                      &lt;primlawhist:histitem&gt;
                      &lt;bodytext&gt;
                      &lt;p&gt;
                     &lt;text&gt;Notification Date 3/11/2008&lt;/text&gt;
                     &lt;/p&gt;   
                     &lt;/bodytext&gt;
                     &lt;/primlawhist:histitem&gt;
                     &lt;/primlawhist:histgrp&gt;
                     &lt;primlawhist:histgrp grptype="tableofamend"&gt;
                     &lt;ref:anchor id="ACT_REG_2008-46_LEGHIST_COMMENCEMENTS" anchortype="global"/&gt;
                     &lt;heading&gt;
                     &lt;title&gt;&lt;emph typestyle="bf"&gt;Commencement Information&lt;/emph&gt;&lt;/title&gt;
                      &lt;/heading&gt;
                     &lt;primlawhist:histitem&gt;
                      &lt;bodytext&gt;
                     &lt;table frame="all"&gt;
                     &lt;tgroup cols="4" colsep="1" rowsep="1"&gt;
                     &lt;colspec colwidth="12*" colname="c1" colnum="1"/&gt;
                     &lt;colspec colwidth="12*" colname="c2" colnum="2"/&gt;
                     &lt;colspec colwidth="12*" colname="c3" colnum="3"/&gt;
                     &lt;colspec colwidth="12*" colname="c4" colnum="4"/&gt;
                     &lt;thead&gt;
                     &lt;row&gt;&lt;entry namest="c1" nameend="c4" align="center"&gt;Commencements&lt;/entry&gt;
                     &lt;/row&gt;
                     &lt;row&gt;&lt;entry colname="c1" align="center"&gt;Start Date&lt;/entry&gt;&lt;entry colname="c2" align="center"&gt;Authority&lt;/entry&gt;
                     &lt;entry colname="c3" align="center"&gt;Provisions&lt;/entry&gt;&lt;entry colname="c4" align="center"&gt;Exclusions&lt;/entry&gt;
                     &lt;/row&gt;
                     &lt;/thead&gt;
                     &lt;tbody&gt;
                     &lt;row&gt;
                     &lt;entry colname="c1" align="left"&gt;On the day after this Regulation's notification day.&lt;proc:nl/&gt;(4/11/2008)&lt;/entry&gt;
                     &lt;entry colname="c2" align="center"&gt;
                     &lt;lnci:cite type="legislation" citeref="ACT_REG_2008-46_PROV2"&gt;
                     &lt;lnci:content&gt; &lt;ref:crossreference crossreferencetype="seeAlso"&gt;
                      &lt;ref:content&gt;Sec 2&lt;/ref:content&gt;
                      &lt;ref:locator anchoridref="ACT_REG_2008-46_PROV2"&gt;
                       &lt;ref:locator-key&gt;
                        &lt;ref:key-name name="DOC-ID"/&gt;  
                        &lt;ref:key-value value="3333-EFGH_9876"/&gt;
                       &lt;/ref:locator-key&gt;
                      &lt;/ref:locator&gt;
                     &lt;/ref:crossreference&gt;&lt;/lnci:content&gt;
                     &lt;/lnci:cite&gt;&lt;/entry&gt;
                     &lt;entry colname="c3" align="center"&gt;The Regulation&lt;/entry&gt;
                     &lt;entry colname="c4" align="center"&gt;---&lt;/entry&gt;
                     &lt;/row&gt;
                     &lt;/tbody&gt;
                     &lt;/tgroup&gt;
                     &lt;/table&gt;
                    &lt;/bodytext&gt;
                    &lt;/primlawhist:histitem&gt;
                    &lt;/primlawhist:histgrp&gt;
                    &lt;primlawhist:primlawhist&gt;
          </pre>
                        </li>
                        <li>
                            <p>Conversion of leg:endmatter/index is determined by children of <sourcexml>index</sourcexml>, as follows:</p>
                            <b>Handling for index/in:lev1 scenario:</b>
                            <sourcexml>/LEGDOC/leg:body/leg:endmatter/index</sourcexml> becomes
                                <targetxml>/courtrule:courtrule/courtrule:body/primlaw:level[@leveltype="endnote"]/index:index</targetxml> with optional child <sourcexml>heading</sourcexml> becomes
                                <targetxml>heading</targetxml> and attributes <sourcexml>@id</sourcexml> becomes <targetxml>@xml:id</targetxml> along with a required attribute
                                <targetxml>index:index[@indextype="definedTerms"]</targetxml> The child elements are converted using the rule below: <ul>
                                <li><sourcexml>index/in:lev1</sourcexml> becomes <targetxml>index:index/index:item</targetxml></li>
                                <li><sourcexml>in:lev1/in:entry/in:entry-text</sourcexml> becomes <targetxml>index:item/index:entry/index:entrytext</targetxml>
                                </li>
                                <li><sourcexml>in:entry/in:index-ref</sourcexml> becomes <targetxml>index:entry/index:locator/ref:lnlink</targetxml> (create both target element
                                        <targetxml>index:locator</targetxml> and target child element <targetxml>index:locator/ref:lnlink</targetxml>), Create <targetxml>index:locator</targetxml> and
                                    then create child element <targetxml>index:locator/ ref:lnlink</targetxml> with attribute <targetxml>ref:lnlink/@service="DOCUMENT"</targetxml>. The source child
                                    element element <sourcexml>in:index-ref/remotelink</sourcexml> is converted as: <ul>
                                        <li>Use case: <sourcexml>remotelink[@service='DOC-ID']</sourcexml> becomes <targetxml>ref:marker</targetxml>. Create a <targetxml>ref:locator</targetxml> and
                                            the following child elements within it:<ul>
                                                <li>If <sourcexml>@remotekey1="DOC-ID"</sourcexml> then <ul>
                                                        <li><targetxml>ref:key-name/@name</targetxml> will have the value "DOC-ID".</li>
                                                        <li><targetxml>key-value/@value</targetxml> will be the value of <sourcexml>@dpsi</sourcexml> followed by hyphen and concatenated with
                                                                <sourcexml>@refpt</sourcexml> or <sourcexml>@remotekey2</sourcexml>, which ever is present (if both are present, use
                                                                <sourcexml>@remotekey2</sourcexml>).</li>
                                                    </ul></li>
                                                <li>If <sourcexml>@remotekey1="REFPTID"</sourcexml> then <ul>
                                                        <li><targetxml>ref:key-name/@name</targetxml> will have the value "DOC-ID".</li>
                                                        <li><targetxml>ref:key-value/@value</targetxml> will be the value of <sourcexml>@dpsi</sourcexml> followed by hyphen and concatenated with
                                                                <sourcexml>@docidref</sourcexml>.</li>
                                                        <li>Create <targetxml>ref:locator/@anchoridref</targetxml> with value from <sourcexml>@refpt</sourcexml> or <sourcexml>@remotekey2</sourcexml>,
                                                            which ever is present (if both are present, use <sourcexml>@refpt</sourcexml>).</li>
                                                    </ul></li>
                                            </ul>
                                            <note>If <sourcexml>remotelink/@dpsi</sourcexml> is not present, use value from <sourcexml>docinfo:dpsi/@id-string</sourcexml> or capture value from the LBU
                                                manifest file.</note>
                                            <note><targetxml>ref:locator/@anchoridref</targetxml> that begins with a number must have an underscore added at start. Also apply other identifier data
                                                type format as used for xml:id and ref:anchor/@id, e.g. change colon to underscore.</note>
                                            <note>If there is text in between <sourcexml>remotelink</sourcexml> elements then use <targetxml>connector</targetxml> for handling the same.</note>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                            <pre>
              &lt;leg:endmatter&gt;
              &lt;index id="ACT_REG_2003-40_DEFLIST"&gt;
              &lt;heading&gt;
              &lt;title&gt;&lt;refpt id="ACT_REG_2003-40_DEFLIST" type="ext"/&gt;&lt;emph typestyle="bf"&gt;List of Defined Terms&lt;/emph&gt;&lt;/title&gt;
              &lt;/heading&gt;
              &lt;in:lev1&gt;
              &lt;in:entry&gt;
              &lt;in:entry-text&gt;applicant&lt;/in:entry-text&gt;
              &lt;in:index-ref&gt;&lt;remotelink service="DOC-ID" remotekey1="REFPTID" dpsi="1111" docidref="ABCD_9876" refpt="ACT_REG_2003-40_APPLICANT"&gt;prov1.5&lt;/remotelink&gt;
              &lt;/in:index-ref&gt;
              &lt;/in:entry&gt;
              &lt;/in:lev1&gt;
              ....
              &lt;/index&gt;
              &lt;/leg:endmatter&gt;
              
              
              <b>Becomes</b>
              
              &lt;primlaw:level leveltype="endnote"&gt;              
              &lt;index:index indextype="definedTerms"&gt;
              &lt;ref:anchor id="ACT_REG_2003-40_DEFLIST" anchortype="global"/&gt;
                &lt;heading&gt;
                &lt;title&gt;&lt;emph typestyle="bf"&gt;List of Defined Terms&lt;/emph&gt;&lt;/title&gt;
                &lt;/heading&gt;
                &lt;index:item&gt;
                &lt;index:entry&gt;
                &lt;index:entrytext&gt;applicant&lt;/index:entrytext&gt;
                &lt;index:locator&gt;
                  &lt;ref:lnlink service="DOCUMENT"&gt;
                   &lt;ref:marker&gt;prov1.5&lt;/ref:marker&gt;
                        &lt;ref:locator anchoridref="ACT_REG_2003-40_APPLICANT"&gt;
                            &lt;ref:locator-key&gt;
                                &lt;ref:key-name name="DOC-ID"/&gt;
                                &lt;ref:key-value value="1111-ABCD_9876"/&gt;
                            &lt;/ref:locator-key&gt;
                        &lt;/ref:locator&gt;                  
                  &lt;/ref:lnlink&gt;
                &lt;/index:locator&gt;
            &lt;/index:entry&gt;
            &lt;/index:item&gt;
            ....
            &lt;/index:index&gt;
            &lt;/primlaw:level&gt;
            
            </pre>
                            <pre>
              <b>Input document having text in between remotelink elements:</b>
              &lt;index id="ACT_REG_1932-MAG_DEFLIST"&gt;    
    &lt;in:lev1&gt;        
        &lt;in:entry&gt;            
            &lt;in:entry-text&gt;fine defaulter&lt;/in:entry-text&gt;            
            &lt;in:index-ref&gt;                
                &lt;remotelink service="DOC-ID" remotekey1="REFPTID" dpsi="1111" docidref="ABCD_9877" refpt="ACT_REG_1932-MAG_FINEDEFAULTER"&gt;prov19sub3&lt;/remotelink&gt;                
                ,&amp;#x00A0;                
                &lt;remotelink service="DOC-ID" remotekey1="REFPTID" dpsi="1111" docidref="ABCD_9878" refpt="ACT_REG_1932-MAG_2.FINEDEFAULTER"&gt;prov20sub10&lt;/remotelink&gt;                
            &lt;/in:index-ref&gt;            
        &lt;/in:entry&gt;        
    &lt;/in:lev1&gt;    
&lt;/index&gt;

          <b>Becomes</b>
              
          &lt;index:index indextype="definedTerms" xml:id="ACT_REG_1932-MAG_DEFLIST"&gt;
    &lt;index:item&gt;
        &lt;index:entry&gt;
            &lt;index:entrytext&gt;fine defaulter&lt;/index:entrytext&gt;
             &lt;index:locator&gt;
                  &lt;ref:lnlink service="DOCUMENT"&gt;
                   &lt;ref:marker&gt;prov19sub3&lt;/ref:marker&gt;
                        &lt;ref:locator anchoridref="ACT_REG_1932-MAG_FINEDEFAULTER"&gt;
                            &lt;ref:locator-key&gt;
                                &lt;ref:key-name name="DOC-ID"/&gt;
                                &lt;ref:key-value value="1111-ABCD_9877"/&gt;
                            &lt;/ref:locator-key&gt;
                        &lt;/ref:locator&gt;                  
                  &lt;/ref:lnlink&gt;
                &lt;/index:locator&gt;
            &lt;connector&gt;,&amp;#x00A0;&lt;/connector&gt;
             &lt;index:locator&gt;
                  &lt;ref:lnlink service="DOCUMENT"&gt;
                   &lt;ref:marker&gt;prov20sub10&lt;/ref:marker&gt;
                        &lt;ref:locator anchoridref="ACT_REG_1932-MAG_2.FINEDEFAULTER"&gt;
                            &lt;ref:locator-key&gt;
                                &lt;ref:key-name name="DOC-ID"/&gt;
                                &lt;ref:key-value value="1111-ABCD_9878"/&gt;
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
                                <targetxml>/courtrule:courtrule/courtrule:body/primlaw:level[@leveltype="endnote"]/navaid:navigationaid</targetxml> with optional child
                                <sourcexml>heading/title</sourcexml> becomes <targetxml>title</targetxml> and attributes <sourcexml>@id</sourcexml> becomes <targetxml>@xml:id</targetxml> The child
                            elements are converted using the rule below: <ul>
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
                            <pre>
                &lt;leg:endmatter&gt;
                &lt;index id="WA_REG_2010-360_INDEX"&gt;
          &lt;heading&gt;&lt;title align="center"&gt;&lt;refpt id="WA_REG_2010-360_INDEX" type="ext"/&gt;Defined Terms&lt;/title&gt;&lt;/heading&gt;
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
        &lt;entry colname="c1" align="left"&gt;affiliate&lt;/entry&gt;
        &lt;entry colname="c2" align="right"&gt;3&lt;/entry&gt;
        &lt;/row&gt;
        &lt;row&gt;
        &lt;entry colname="c1" align="left"&gt;associated entity, in relation to a law practice,&lt;/entry&gt;
        &lt;entry colname="c2" align="right"&gt;9(1)&lt;/entry&gt;
        &lt;/row&gt;
        ...
        &lt;/tbody&gt;
        &lt;/tgroup&gt;
        &lt;/table&gt;
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
    &lt;ref:anchor id="WA_REG_2010-360_INDEX" anchortype="global"/&gt;
    &lt;title align="center"&gt;Defined Terms&lt;/title&gt;   
    &lt;bodytext&gt;        
        &lt;p&gt;
            &lt;text&gt;&lt;emph typestyle="it"&gt;[This is a list of terms defined and the provisions where they are defined. The list is not part of the
            law.]&lt;/emph&gt;&lt;/text&gt;            
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
                            &lt;entry colname="c2" align="right"&gt;3&lt;/entry&gt;
                        &lt;/row&gt;
                        &lt;row&gt;
                            &lt;entry colname="c1" align="left"&gt;acquire&lt;/entry&gt;
                            &lt;entry colname="c2" align="right"&gt;9(1)&lt;/entry&gt;
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
        &lt;row&gt;&lt;entry&gt;&amp;#160;&lt;/entry&gt;
        &lt;/row&gt;
        &lt;/tbody&gt;
        &lt;/tgroup&gt;
        &lt;/table&gt;
    &lt;/bodytext&gt;    
&lt;/navaid:navigationaid&gt;
&lt;/primlaw:level&gt;             
        </pre>
                        </li>
                        <li><sourcexml>leg:empleg</sourcexml> becomes <targetxml>primlaw:authority/primlaw:authority-item/textitem</targetxml> and populated as: <note>The
                                    <targetxml>primlaw:authority</targetxml> will be sibling of <targetxml>heading</targetxml>.</note>
                            <pre>
              &lt;leg:level id="ACT_REG_2003-40_SCH1"&gt;
              &lt;leg:level-vrnt leveltype="schedule" searchtype="LEGISLATION" subdoc="true" toc-caption="Schedule&amp;#160;1 Forms"&gt;
              &lt;leg:heading&gt;
              &lt;title align="left" searchtype="SCH-TITLE"&gt;&lt;refpt id="ACT_REG_2003-40_SCH1" type="ext"/&gt;&lt;emph
              typestyle="bf"&gt;Schedule&amp;#160;1 Forms&lt;/emph&gt;
              &lt;/title&gt;
              &lt;leg:empleg&gt;
              &lt;ci:cite searchtype="LEG-REF"&gt;
              &lt;ci:content&gt;(see r 1.6)&lt;/ci:content&gt;
              &lt;/ci:cite&gt;
              &lt;/leg:empleg&gt;
              &lt;/leg:heading&gt;
              
              <b>Becomes</b>
              
              &lt;primlaw:level leveltype="schedule" includeintoc="true"
              alternatetoccaption="Schedule&amp;#x00A0;1 Forms"&gt;
              &lt;ref:anchor id="ACT_REG_2003-40_SCH1" anchortype="global"/&gt;
              &lt;heading&gt;
              &lt;title align="left"&gt;
              &lt;emph typestyle="bf"&gt;Schedule&amp;#x00A0;1 Forms&lt;/emph&gt;&lt;/title&gt;
              &lt;/heading&gt;
              &lt;primlaw:authority&gt;
              &lt;primlaw:authority-item&gt;
              &lt;textitem&gt;
              &lt;lnci:cite type="legislation"&gt;
              &lt;lnci:content&gt;(see r 1.6)&lt;/lnci:content&gt;
              &lt;/lnci:cite&gt;
              &lt;/textitem&gt;
              &lt;/primlaw:authority-item&gt;
              &lt;/primlaw:authority&gt;
            </pre>
                        </li>
                        <li><sourcexml>bodytext</sourcexml> becomes <targetxml>bodytext</targetxml>.
                            <pre>
            &lt;bodytext searchtype="COMMENTARY"&gt;
            &lt;blockquote&gt;
            &lt;h align="left"&gt;&lt;emph typestyle="bf"&gt;Family Law Amendment Rules 2004 (No 2) SR 53 of 2004&lt;/emph&gt;&lt;/h&gt;
            &lt;/blockquote&gt;
            &lt;/bodytext&gt;
            
            <b>Becomes</b>
            
           &lt;bodytext&gt;
           &lt;blockquote&gt;
           &lt;h align="left"&gt;&lt;emph typestyle="bf"&gt;Family Law Amendment Rules 2004 (No 2) SR 53 of 2004&lt;/emph&gt;&lt;/h&gt;
           &lt;/blockquote&gt;
           &lt;/bodytext&gt;
           
            
          </pre>
                        </li>
                        <li> The conversion for <sourcexml>leg:levelstatus</sourcexml> is based on the following scenarios: <ul>
                                <li>
                                    <ol>
                                        <li>If the <sourcexml>leg:level/leg:level-vrnt/leg:levelinfo/leg:levelstatus[@isrepealed="true"]</sourcexml> with text in that then becomes
                                                <targetxml>primlaw:level/primlaw:levelinfo/primlawinfo:primlawinfo/legisinfo:legisinfo/legisinfo:statusgroup/
                                                legisinfo:status[@statuscode="repealed"]/legisinfo:statustext</targetxml>
                                            <note>Include the <targetxml>@statuscode</targetxml> in element <targetxml>legisinfo:status</targetxml> to represent repealed legislation.</note>
                                            <pre>
            &lt;leg:level id="ACLL.SCRN.SCCR70.PT77"&gt;&lt;leg:level-vrnt toc-caption="Part 77 Procedure under various statutes" subdoc="true"
            searchtype="LEGISLATION PART" leveltype="part"&gt;
          &lt;leg:levelinfo&gt;
          &lt;leg:levelstatus isrepealed="true"&gt;(Repealed)&lt;/leg:levelstatus&gt;&lt;/leg:levelinfo&gt;
            
            
            <b>Becomes</b>
            
            
            &lt;primlaw:level xml:id="ACLL.SCRN.SCCR70.PT77" leveltype="part" alternatetoccaption="Part 77 Procedure under various statutes"
            includeintoc="true"&gt;
            &lt;primlaw:levelinfo&gt;
            &lt;primlawinfo:primlawinfo&gt;
            &lt;legisinfo:legisinfo&gt;
            &lt;legisinfo:statusgroup&gt;
            &lt;legisinfo:status statuscode="repealed"&gt;
            &lt;legisinfo:statustext&gt;
            (Repealed)
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
                                        <li>If the <sourcexml>leg:level/leg:levelinfo/leg:levelstatus[@isrepealed="true"]</sourcexml> with no text in that then becomes
                                                <targetxml>primlaw:level/primlaw:levelinfo/primlawinfo:primlawinfo/legisinfo:legisinfo/legisinfo:statusgroup/
                                                legisinfo:status[@statuscode="repealed"]</targetxml>
                                            <pre>
                &lt;leg:level id="ACLL.SCRN.SCCR70.PT80.R5.4"&gt;&lt;leg:level-vrnt searchtype="LEGISLATION SUBRUL" leveltype="subrul"&gt;
              &lt;leg:levelinfo&gt;
              &lt;leg:levelstatus isrepealed="true"/&gt;&lt;/leg:levelinfo&gt;
              
              <b>Becomes</b>
              
              &lt;primlaw:level xml:id="ACLL.SCRN.SCCR70.PT80.R5.4" leveltype="subrule"&gt;
            &lt;primlaw:levelinfo&gt;
            &lt;primlawinfo:primlawinfo&gt;
            &lt;legisinfo:legisinfo&gt;
            &lt;legisinfo:statusgroup&gt;
            &lt;legisinfo:status statuscode="repealed"/&gt;            
            &lt;/legisinfo:statusgroup&gt;
            &lt;/legisinfo:legisinfo&gt;
            &lt;/primlawinfo:primlawinfo&gt;
            &lt;/primlaw:levelinfo&gt;
              
              </pre>
                                        </li>
                                        <li>If the <sourcexml>leg:levelstatus[@isrepealed="false"]</sourcexml> then supress the element.</li>
                                    </ol>
                                    <note>For handling <b>@ln.user-displayed</b> attribute, refer the general markup <xref href="../../common_newest/Rosetta_leg.levelstatus_ln.user-displayed.dita"
                                            >ln.user_displayed="false"</xref> section in the CI.</note>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </p>
                <p>
                    <ul>
                        <li>
                            <sourcexml>leg:sectionlist</sourcexml> comes with following scenarios: <ol>
                                <li><b>Rule for sectionlist appearing within leg:info</b>: <ul>
                                        <li> When leg:body/leg:info/leg:sectionlist does not contain @id OR @id that DOES NOT contain value "xxxxx_PROVLIST" (xxxxx can be any text), then create a new
                                            primlaw:level with leveltype="unclassified". This level is solely for the sectionlist content within leg:info. Insert all sectionlist element content within
                                            this single unclassified level tags and table tags are retained as they are in the source. The conversion rule is <sourcexml>leg:sectionlist</sourcexml>
                                            becomes <targetxml>navaid:navigationaid</targetxml> with attribute <targetxml>@type="sectionlist"</targetxml> and required child
                                                <targetxml>bodytext</targetxml>
                                            <note>If <sourcexml>leg:sectionlist</sourcexml> has information about <b>LawNow Home Page</b> and <b>Government Website</b> captured in table then it
                                                becomes <targetxml>navaid:navigationaid</targetxml> with attribute <targetxml>@type="links"</targetxml></note>
                                            <note>Refer <xref href="../../common_newest/Rosetta_table-LxAdv-table.dita">table</xref> for handling of <sourcexml>table</sourcexml></note>
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
 

<b>Example 2:</b>
&lt;leg:sectionlist&gt;
    &lt;p&gt;
    &lt;text&gt;For further information, please select from the following:&lt;/text&gt;
    &lt;/p&gt;
    &lt;p&gt;
    &lt;text&gt;
    &lt;remotelink remotekey1="REFPTID" refpt="TAS_ACT_2009-88_PROVLIST" dpsi="1111" docidref="ABCD_9876" service="DOC-ID"&gt;List of Provisions&lt;/remotelink&gt;
&lt;remotelink remotekey1="REFPTID" refpt="TAS_ACT_2009-88_LEGHIST" dpsi="1111" docidref="ABCD_9876" service="DOC-ID"&gt;Legislative History&lt;/remotelink&gt;
&lt;remotelink remotekey1="REFPTID" refpt="TAS_ACT_2009-88_LAWNOWHISTORICALVERSIONS" dpsi="1111" docidref="ABCD_9876" service="DOC-ID"&gt;Historical Versions&lt;/remotelink&gt;
&lt;remotelink remotekey1="REFPTID" refpt="TAS_ACT_2009-88_DEFLIST" dpsi="1111" docidref="ABCD_9876" service="DOC-ID"&gt;Defined Terms&lt;/remotelink&gt;
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
                            &lt;ref:key-value value="www.thelaw.tas.gov.au/linkto.w3p;doc_id=230++2009+AT@EN+CURRENT"/&gt;
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
                        &lt;ref:key-value value="1111-ABCD_9876"/&gt;
                    &lt;/ref:locator-key&gt;
                &lt;/ref:locator anchoridref="TAS_ACT_2009-88_LEGHIST"&gt;
                &lt;/ref:crossreference&gt;  |                 
                &lt;ref:crossreference crossreferencetype="seeAlso"&gt;
                &lt;ref:content&gt;Legislative History&lt;/ref:content&gt;
                &lt;ref:locator anchoridref="TAS_ACT_2009-88_LEGHIST"&gt;
                    &lt;ref:locator-key&gt;
                        &lt;ref:key-name name="DOC-ID"/&gt;
                        &lt;ref:key-value value="1111-ABCD_9876"/&gt;
                    &lt;/ref:locator-key&gt;
                &lt;/ref:locator&gt;
                &lt;/ref:crossreference&gt;  |                   
                &lt;ref:crossreference crossreferencetype="seeAlso"&gt;
                &lt;ref:content&gt;Historical Versions&lt;/ref:content&gt;
                &lt;ref:locator anchoridref="TAS_ACT_2009-88_LAWNOWHISTORICALVERSIONS"&gt;
                    &lt;ref:locator-key&gt;
                        &lt;ref:key-name name="DOC-ID"/&gt;
                        &lt;ref:key-value value="1111-ABCD_9876"/&gt;
                    &lt;/ref:locator-key&gt;
                &lt;/ref:locator&gt;
                &lt;/ref:crossreference&gt;  |
               &lt;ref:crossreference crossreferencetype="seeAlso"&gt;
                &lt;ref:content&gt;Defined Terms&lt;/ref:content&gt;
                &lt;ref:locator anchoridref="TAS_ACT_2009-88_DEFLIST"&gt;
                    &lt;ref:locator-key&gt;
                        &lt;ref:key-name name="DOC-ID"/&gt;
                        &lt;ref:key-value value="1111-ABCD_9876"/&gt;
                    &lt;/ref:locator-key&gt;
                &lt;/ref:locator&gt;
              &lt;/ref:crossreference&gt;             
            &lt;/text&gt;
        &lt;/p&gt;
    &lt;/bodytext&gt;    
&lt;/navaid:navigationaid&gt;    
&lt;navaid:navigationaid type="sectionlist"&gt;
    &lt;bodytext&gt;
        &lt;p&gt;&lt;text&gt;Click the &lt;ref:crossreference crossreferencetype="seeAlso"&gt;&lt;ref:content&gt;Express 
            Search&lt;/ref:content&gt;&lt;/ref:crossreference&gt; icon to search all subscribed cases and 
            commentary for the selected provision.&lt;/text&gt;&lt;/p&gt;
    &lt;/bodytext&gt;
&lt;/navaid:navigationaid&gt;
&lt;/primlaw:level&gt;
    
</pre>
                                        </li>
                                    </ul>
                                </li>
                                <li><b>Rule for <sourcexml>leg:sectionlist</sourcexml> having <sourcexml>@id</sourcexml></b>: <ul>
                                        <li>When <sourcexml>leg:sectionlist</sourcexml> contains @id AND @id contains value "xxxxx_PROVLIST" (xxxxx can be any text), then create a new
                                                <targetxml>primlaw:level</targetxml> with <targetxml>leveltype="table-of-contents"</targetxml>. The <sourcexml>leg:sectionlist/@id</sourcexml>
                                            <b>becomes</b>
                                            <targetxml>primlaw:level[@leveltype="table-of-contents"]/@xml:id</targetxml> and <sourcexml>leg:sectionlist</sourcexml> will <b>becomes</b>
                                            <targetxml>primlaw:bodytext/toc</targetxml> with attribute <targetxml>@toctype="sectionlist"</targetxml>.</li>
                                        <li>The child elements will be converted as: <ul>
                                                <li><sourcexml>leg:sectionlist/leg:heading/title</sourcexml>
                                                    <b>becomes</b>
                                                    <targetxml>primlaw:level[@leveltype="table-of-contents"]/heading/title</targetxml></li>
                                                <li>
                                                    <p>Conversion is based on the following scenarios and retaining the two level TOC formatting: <ul>
                                                            <li><b>Scenario 1</b>: When first row contains single entry then conversion needs to create <targetxml>toc-entry</targetxml> as a outermost
                                                                level of next two entry rows (means one entry row, that should be on the first level of the toc with all following two entry rows nested
                                                                within). <p>Each <sourcexml>row</sourcexml> in table will become <targetxml>toc-entry</targetxml> with child
                                                                        <targetxml>desig</targetxml> and <targetxml>title</targetxml>
                                                                    <note>If <sourcexml>row</sourcexml> contains only one <sourcexml>entry</sourcexml> then map it to
                                                                        <targetxml>desig</targetxml>.</note>
                                                                    <note>If row contains two entry then first entry will become <targetxml>desig</targetxml> followed by the second entry which will
                                                                        map to <targetxml>title</targetxml>.</note></p>
                                                                <p>Refer the below <b>Scenario 1</b> input and target example for your reference.</p></li>
                                                            <li><b>Scenario 2</b>: When the first row of table contains two entries then conversion needs to create an empty
                                                                    <targetxml>toc-entry</targetxml> level so that all of the following two entry rows are nested within. <p>Each
                                                                        <sourcexml>row</sourcexml> in table will become <targetxml>toc-entry</targetxml> with child <targetxml>desig</targetxml> and
                                                                        <targetxml>title</targetxml>
                                                                    <note>The first entry in a <sourcexml>row</sourcexml> will become <targetxml>desig</targetxml> followed by the second entry which
                                                                        will map to <targetxml>title</targetxml>.</note></p>
                                                                <p>Refer the below <b>Scenario 2</b> input and target example for your reference.</p>
                                                            </li>
                                                            <li><b>Scenario 3</b>: When the first row of table contains two entries then conversion needs to create an empty
                                                                    <targetxml>toc-entry</targetxml> level so that all of the following two entry rows are nested within. And one entry row appears
                                                                later (means 'at the end of the table for endnotes'). <p>Each <sourcexml>row</sourcexml> in table will become
                                                                        <targetxml>toc-entry</targetxml> with child <targetxml>desig</targetxml> and <targetxml>title</targetxml>
                                                                    <note>The first entry in a <sourcexml>row</sourcexml> will become <targetxml>desig</targetxml> followed by the second entry which
                                                                        will map to <targetxml>title</targetxml>.</note></p>
                                                                <p>Refer the below <b>Scenario 3</b> input and target example for your reference.</p>
                                                            </li>
                                                            <li><b>Scenario 4</b>: When complete table contains only one entry row then conversion needs to map <targetxml>toc-entry</targetxml> with
                                                                child <targetxml>title</targetxml> or <targetxml>desig</targetxml>. <p>Refer the below <b>Scenario 4</b> input and target example for
                                                                    your reference.</p>
                                                            </li>
                                                        </ul></p>
                                                    <ul>
                                                        <li><sourcexml>entry/remotelink[@service='DOC-ID']</sourcexml> becomes <targetxml>toc-entry/heading/title</targetxml> and
                                                                <sourcexml>remotelink</sourcexml> attributes become <targetxml>toc-entry</targetxml> attributes as follows: <ul>
                                                                <li>If <sourcexml>@remotekey1="DOC-ID"</sourcexml> then <ul>
                                                                        <li><targetxml>@ref:locatorkeyprotocol</targetxml> will have the value "DOC-ID".</li>
                                                                        <li><targetxml>@ref:locatorkey</targetxml> will be the value of <sourcexml>@dpsi</sourcexml> followed by hyphen and concatenated
                                                                            with <sourcexml>@refpt</sourcexml> or <sourcexml>@remotekey2</sourcexml>, which ever is present (if both are present, use
                                                                                <sourcexml>@remotekey2</sourcexml>).</li>
                                                                    </ul></li>
                                                                <li>If <sourcexml>@remotekey1="REFPTID"</sourcexml> then <ul>
                                                                        <li><targetxml>@ref:locatorkeyprotocol</targetxml> will have the value "DOC-ID".</li>
                                                                        <li><targetxml>@ref:locatorkey</targetxml> will be the value of <sourcexml>@dpsi</sourcexml> followed by hyphen and concatenated
                                                                            with <sourcexml>@docidref</sourcexml>.</li>
                                                                        <li><targetxml>@anchoridref</targetxml> with value from <sourcexml>@refpt</sourcexml> or <sourcexml>@remotekey2</sourcexml>,
                                                                            which ever is present (if both are present, use <sourcexml>@refpt</sourcexml>). </li>
                                                                    </ul>
                                                                    <note>If there is only one <sourcexml>row</sourcexml> then <sourcexml>entry/remotelink</sourcexml> becomes
                                                                            <targetxml>toc-entry/heading/desig</targetxml> .</note>
                                                                    <note>If <sourcexml>remotelink/@dpsi</sourcexml> is not present, use value from <sourcexml>docinfo:dpsi/@id-string</sourcexml> or
                                                                        capture value from the LBU manifest file.</note>
                                                                    <note><targetxml>ref:locator/@anchoridref</targetxml> that begins with a number must have an underscore added at start. Also apply
                                                                        other identifier data type format as used for xml:id and ref:anchor/@id, e.g. change colon to underscore.</note>
                                                                </li>
                                                            </ul>
                                                            <note>In the above example <sourcexml>lnlink</sourcexml> will be dropped from conversion. Also, added the attribute
                                                                    <targetxml>@toctype="sectionlist"</targetxml> to <targetxml>toc</targetxml>.</note>
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
                                            <note>If <sourcexml>remotelink</sourcexml> comes without <sourcexml>@docidref</sourcexml> attribute inside <sourcexml>entry</sourcexml> markup in source
                                                document and target <targetxml>toc-entry</targetxml> markup does not have <targetxml>@ref:locatorkey</targetxml> and
                                                    <targetxml>@ref:locatorkeyprotocal</targetxml> has a value of "<b>DOC-ID</b>" then suppress both attributes <targetxml>@anchoridref</targetxml> and
                                                    <targetxml>@ref:locatorkeyprotocol</targetxml> inside <targetxml>toc-entry</targetxml> in target conversion because its generating Inactive (dead)
                                                links on LexisAdvance Platform.</note>
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
                                        </li>
                                    </ul>
                                </li>
                            </ol>
                        </li>
                    </ul>
                </p>
                <p>
                    <ul>
                        <li><sourcexml>leg:level/leg:level-vrnt/leg:levelprelim</sourcexml> becomes <targetxml>primlaw:level/primlaw:prelim</targetxml>
                            <pre>
            &lt;leg:level id="CPV.RC4.SCARV05.FORMGRP"&gt;
            &lt;leg:level-vrnt toc-caption="FORMS" subdoc="true" searchtype="LEGISLATION FORMS" leveltype="forms"&gt;
            &lt;leg:heading&gt;
            &lt;title&gt;
            &lt;refpt type="ext" id="CPV.RC4.SCARV05.FORMGRP"&gt;&lt;/refpt&gt;FORMS&lt;/title&gt;
            &lt;/leg:heading&gt;
            &lt;leg:levelprelim&gt;
            &lt;heading&gt;
            &lt;title&gt;CONTENTS&lt;/title&gt;
            &lt;/heading&gt;
            &lt;p&gt;
            &lt;table frame="none" pgwide="1"&gt;
            &lt;tgroup cols="3" colsep="0" rowsep="0" align="left"&gt;
            &lt;colspec colwidth="40*" colname="col1" colsep="0" rowsep="0"/&gt;
            &lt;colspec colwidth="200*" colname="col2" colsep="0" rowsep="0"/&gt;
            &lt;colspec colwidth="55*" colname="col3" colsep="0" rowsep="0"/&gt;
            &lt;thead valign="bottom"&gt;
            &lt;row rowsep="0"&gt;
            &lt;entry colname="col1" morerows="0" colsep="0" rowsep="0" valign="top"&gt;&lt;emph typestyle="it"&gt;Form&lt;/emph&gt;&lt;/entry&gt;
            &lt;entry colname="col2" morerows="0" colsep="0" rowsep="0" align="center" valign="top"&gt;&lt;emph typestyle="it"&gt;Title&lt;/emph&gt;&lt;/entry&gt;
            &lt;entry colname="col3" morerows="0" colsep="0" rowsep="0" align="right"&gt;&lt;emph typestyle="it"&gt;Paragraph&lt;/emph&gt;&lt;/entry&gt;
            &lt;/row&gt;
            &lt;/thead&gt;
            &lt;tbody valign="bottom"&gt;
            &lt;row rowsep="0"&gt;
            &lt;entry colname="col1" morerows="0" colsep="0" rowsep="0" valign="top"&gt;1&lt;/entry&gt;
            &lt;entry colname="col2" morerows="0" colsep="0" rowsep="0" align="justify" valign="top"&gt;Summons for Adoption Order&amp;nldr;&lt;/entry&gt;
            &lt;entry colname="col3" morerows="0" colsep="0" rowsep="0" align="right"&gt;[IV 1.F1]&lt;/entry&gt;
            &lt;/row&gt;
            </pre>
                            <b>Becomes</b>
                            <pre>

&lt;primlaw:level alternatetoccaption="FORMS" includeintoc="true" leveltype="unclassified"&gt;
&lt;ref:anchor id="CPV.RC4.SCARV05.FORMGRP" anchortype="global"/&gt;
  &lt;heading&gt;
    &lt;title&gt;FORMS&lt;/title&gt;
  &lt;/heading&gt;
  &lt;primlaw:prelim&gt;
          &lt;heading&gt;
            &lt;title&gt;CONTENTS&lt;/title&gt;
            &lt;/heading&gt;
    &lt;p&gt;
      &lt;table frame="none" pgwide="1"&gt;
        &lt;tgroup cols="3" colsep="0" rowsep="0" align="left"&gt;
          &lt;colspec colwidth="40*" colname="col1" colsep="0" rowsep="0"/&gt;
          &lt;colspec colwidth="200*" colname="col2" colsep="0" rowsep="0"/&gt;
          &lt;colspec colwidth="55*" colname="col3" colsep="0" rowsep="0"/&gt;
          &lt;thead valign="bottom"&gt;
            &lt;row rowsep="0"&gt;
              &lt;entry colname="col1" morerows="0" colsep="0" rowsep="0"valign="top"&gt;
                &lt;emph typestyle="it"&gt;Form&lt;/emph&gt;
              &lt;/entry&gt;
              &lt;entry colname="col2" morerows="0" colsep="0" rowsep="0" align="center" valign="top"&gt;
                &lt;emph typestyle="it"&gt;Title&lt;/emph&gt;
              &lt;/entry&gt;
              &lt;entry colname="col3" morerows="0" colsep="0" rowsep="0" align="right"&gt;
                &lt;emph typestyle="it"&gt;Paragraph&lt;/emph&gt;
              &lt;/entry&gt;
            &lt;/row&gt;
          &lt;/thead&gt;
          &lt;tbody valign="bottom"&gt;
            &lt;row rowsep="0"&gt;
              &lt;entry colname="col1" morerows="0" colsep="0" rowsep="0" valign="top"&gt;1&lt;/entry&gt;
              &lt;entry colname="col2" morerows="0" colsep="0" rowsep="0" align="justify" valign="top"&gt;Summons for Adoption Order&lt;/entry&gt;
              &lt;entry colname="col3" morerows="0" colsep="0" rowsep="0" align="right"&gt;[IV 1.F1]&lt;/entry&gt;
            &lt;/row&gt;    
            ....
          &lt;/tbody&gt;
        &lt;/tgroup&gt;
      &lt;/table&gt;
    &lt;/p&gt;
  &lt;/primlaw:prelim&gt;    
&lt;/primlaw:level&gt;
</pre>
                            <note>Refer <xref href="../../common_newest/Rosetta_refpt-Chof-leg.level_leg.level-vrnt_leg.heading_title-LxAdv-primlaw.level_OR_seclaw.level_ref.anchor.dita">refpt</xref>
                                for handling of the same.</note>
                        </li>
                        <li><sourcexml>form</sourcexml> becomes <targetxml>form:form</targetxml> with required child as <targetxml>form:form/form:document</targetxml> with attribute values
                                <targetxml>@annotated="false"</targetxml>, <targetxml>@official="true"</targetxml> and <targetxml>@typeofdoc="unnamed"</targetxml>
                            <sourcexml>form/bodytext</sourcexml> becomes <targetxml>form:form/form:document/form:bodytext</targetxml>
                            <sourcexml>form/heading/leg:empleg</sourcexml> becomes <targetxml>form:form/form:info/primlaw:authority/primlaw:authority-item/textitem</targetxml>
                            <note>In this case, <targetxml>primlaw:authority</targetxml> will be sibling of <targetxml>heading</targetxml></note> The child element of form includes: <ul>
                                <li><sourcexml>form/bodytext/h</sourcexml> becomes <targetxml>form:form/form:document/form:bodytext/form:h</targetxml></li>
                                <li><sourcexml>form/bodytext/p</sourcexml> becomes <targetxml>form:form/form:document/form:bodytext/form:p</targetxml></li>
                                <li><sourcexml>form/bodytext/p/text</sourcexml> becomes <targetxml>form:form/form:document/form:bodytext/form:p/form:text</targetxml></li>
                            </ul>
                            <pre>
          &lt;form&gt;
          &lt;bodytext searchtype="FORM"&gt;
          &lt;table colsep="0" rowsep="0"&gt;
          &lt;tgroup cols="5" colsep="0" rowsep="0"&gt;
          &lt;colspec colname="col1" colnum="1" colwidth="480*"/&gt;
          &lt;colspec colname="col2" colnum="2" colwidth="144*"/&gt;
          &lt;colspec colname="col3" colnum="3" colwidth="104*"/&gt;
          &lt;colspec colname="col4" colnum="4" colwidth="96*"/&gt;
          &lt;colspec colname="col5" colnum="5" colwidth="104*"/&gt;
          &lt;tbody&gt;
          &lt;row&gt;
          &lt;entry nameend="col5" namest="col1" valign="top"&gt;  &lt;emph typestyle="bf"&gt;Details of applicant(s)&lt;/emph&gt;
           &lt;/entry&gt;
           &lt;/row&gt;
           ....
           &lt;/tbody&gt;
           &lt;/tgroup&gt;
           &lt;/table&gt;
           &lt;p&gt;&lt;text&gt; &lt;/text&gt;&lt;/p&gt;
            &lt;p&gt;&lt;text&gt; &lt;/text&gt;&lt;/p&gt;
            &lt;p&gt;&lt;text&gt; &lt;/text&gt;&lt;/p&gt;
            &lt;/bodytext&gt;
            &lt;/form&gt;
            
           
          <b>Becomes</b>
          
          &lt;form:form&gt;
          &lt;form:document annotated="false" official="true" typeofdoc="unnamed"&gt;
        &lt;form:bodytext&gt;
        &lt;table colsep="0" rowsep="0"&gt;
        &lt;tgroup cols="5" colsep="0" rowsep="0"&gt;
        &lt;colspec colname="col1" colnum="1" colwidth="480*"/&gt;
        &lt;colspec colname="col2" colnum="2" colwidth="144*"/&gt;
        &lt;colspec colname="col3" colnum="3" colwidth="104*"/&gt;
        &lt;colspec colname="col4" colnum="4" colwidth="96*"/&gt;
        &lt;colspec colname="col5" colnum="5" colwidth="104*"/&gt;
        &lt;tbody&gt;
        &lt;row&gt;&lt;entry nameend="col5" namest="col1" valign="top"&gt;  &lt;emph typestyle="bf"&gt;Details of applicant(s)&lt;/emph&gt;
         &lt;/entry&gt;
         &lt;/row&gt;
          ....
           &lt;/tbody&gt;
           &lt;/tgroup&gt;
           &lt;/table&gt;
           &lt;form:p&gt;&lt;form:text&gt; &lt;/form:text&gt;&lt;/form:p&gt;
            &lt;form:p&gt;&lt;form:text&gt; &lt;/form:text&gt;&lt;/form:p&gt;
            &lt;form:p&gt;&lt;form:text&gt; &lt;/form:text&gt;&lt;/form:p&gt;
            &lt;/form:bodytext&gt;
            &lt;/form:document&gt;
            &lt;/form:form&gt;
        </pre>
                            <pre>
            &lt;entry colname="col3" valign="top"&gt;  
            &lt;h align="center"&gt; &lt;/h&gt;
            &lt;/entry&gt;
            
            <b>Becomes</b>
            
            &lt;entry colname="col3" valign="top"&gt;  
            &lt;form:h align="center"&gt; &lt;/form:h&gt;
            &lt;/entry&gt;
            </pre>
                            <pre>
              <b>handling of form/heading/leg:empleg scenario:</b>
              &lt;form&gt;
      &lt;heading searchtype="FORM"&gt;
            &lt;edpnum&gt;
                  &lt;refpt type="ext" id="CPQ.SCOL.SCFJRQ93.SCH1.F1"&gt;&lt;/refpt&gt;[195,375]
            &lt;/edpnum&gt;
            &lt;desig searchtype="FORM-NUM"&gt;
                  &lt;designum&gt;Form 1&lt;/designum&gt;
            &lt;/desig&gt;
            &lt;title searchtype="FORM-TITLE"&gt;Order for registration of judgment&lt;/title&gt;
            &lt;leg:empleg&gt;
                  &lt;remotelink refpt="CPQ.SCOL.SCFJRQ93.R7" dpsi="0075" docidref="ABCD_9876" remotekey1="REFPTID" service="DOC-ID"&gt;rule 7&lt;/remotelink&gt;
            &lt;/leg:empleg&gt;
      &lt;/heading&gt;

 ....
&lt;/form&gt;

         <b>Becomes</b>
              &lt;form:form&gt;
          &lt;ref:anchor id="CPQ.SCOL.SCFJRQ93.SCH1.F1" anchortype="global"/&gt;
           &lt;heading&gt;
            &lt;altdesig&gt;[195,375]&lt;/altdesig&gt;
            &lt;desig&gt;Form 1&lt;/desig&gt;
            &lt;title&gt;Order for registration of judgment&lt;/title&gt;    
        &lt;/heading&gt;
     &lt;form:info&gt;
         &lt;primlaw:authority&gt;
             &lt;primlaw:authority-item&gt;
                 &lt;textitem&gt;&lt;ref:crossreference crossreferencetype="seeAlso"&gt;                                        
		&lt;ref:content&gt;rule 7&lt;/ref:content&gt;                                        
			&lt;ref:locator anchoridref="ACT_ACT_1898-17_PT1"&gt;                                            
				&lt;ref:locator-key&gt;
					&lt;ref:key-name name ="DOC-ID"/&gt;
					&lt;ref:key-value value ="0075-ABCD_9876"/&gt;
				&lt;/ref:locator-key&gt;
			&lt;/ref:locator&gt;                                 
	&lt;/ref:crossreference&gt;
	&lt;/textitem&gt;
             &lt;/primlaw:authority-item&gt;
         &lt;/primlaw:authority&gt;
     &lt;/form:info&gt;
    &lt;form:document&gt; 
     ...
    &lt;/form:document&gt; 
  ...  
&lt;/form:form&gt;


            </pre>
                        </li>
                    </ul>
                </p>
                <p>
                    <sourcexml>/LEGDOC/leg:body/leg:info/leg:relatedleg</sourcexml> with attribute <sourcexml>leg:relatedleg[@type="parent"]</sourcexml> will become
                        <targetxml>/courtrule:courtrule/courtrule:body/primlaw:level[@leveltype="unclassified"]/primlaw:authority/ primlaw:authority-item/textitem</targetxml>
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
      &lt;lnci:content&gt;&lt;ref:crossreference crossreferencetype="seeAlso"&gt;
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
                    <note>The element <sourcexml>leg:relatedleg</sourcexml> comes under leg:info in Rosetta, In New Lexis it will be part of Court Rule body.</note>
                </p>
                <b>Special Handling of Image - For AU04, AU06 and AU08</b>: If <sourcexml>inlineobject</sourcexml> markup having some specific image name (either '<i><b>au_inforce.png</b></i>' and
                        '<i><b>au_noforce.png</b></i>') then conversion needs to create target <targetxml>ref:inlineobject</targetxml> and should be handle these images differently means remove the
                extension only when these specific images have occured, not convert according to general markup. Refer below input and output markup for better understanding.<pre>
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
            </section>
            <section>
                <title>Changes:</title>
                <p>2016-05-01: <ph id="change_20160501_PS">Added instruction and example for handling of <sourcexml>leg:info/leg:longtitle</sourcexml>, Applicable on AU08, Webstar # 6509336.</ph></p>
                <p>2016-04-22: <ph id="change_20160422_AS">Added the new instruction with examples for handling some specific images (either '<i><b>au_inforce.png</b></i>' and
                                '<i><b>au_noforce.png</b></i>'). (Webstar #6036111)</ph></p>
                <p>2014-09-24: <ph id="change_20140924_AS">Updated "DOCID" to ref:key-name name="DOC-ID"</ph></p>
                <p>2014-08-05: <ph id="change_20140805_AS">Updated the examples (input and target) with rule for suppressed the both attributes <targetxml>@anchoridref</targetxml> and
                            <targetxml>@ref:locatorkeyprotocol="DOC-ID"</targetxml> inside <targetxml>toc-entry</targetxml> because its generating Inactive (dead) links on LexisAdvance
                    Platform.</ph></p>
                <p>2014-07-28: <ph id="change_20140728_AS">Added a rule for suppressed the both attributes <targetxml>@anchoridref</targetxml> and
                            <targetxml>@ref:locatorkeyprotocol="DOC-ID"</targetxml> inside <targetxml>toc-entry</targetxml> because its generating Inactive (dead) links on LexisAdvance Platform.</ph>
                </p>
            </section>
        </body>
    </dita:topic>

    <!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
    <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU08_courtrule\courtrule-Body.dita  -->
    <!--    <xsl:message>courtrule-Body.xsl requires manual development!</xsl:message>
    -->

    <!--    <xsl:template match="defitem[defdesc|p]/text()[parent::defitem]">
        <xsl:choose>
            <xsl:when test="normalize-space(.)!=''">
                <!-\- putting in normalize-space(text())!='' into the match predicate gives error for multiple nodes in normalize-space() -\->
                <connector xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
                    <xsl:copy-of select="."/>            
                </connector>
                
            </xsl:when>
        </xsl:choose>
    </xsl:template>
-->

    <xsl:variable name="leginfo.namenumyear">
        <xsl:for-each select="/LEGDOC/leg:info/*[self::leg:officialnum or self::leg:year or self::leg:officialname][1]">
            <xsl:apply-templates select="@* | node()"/>
            <!-- processed as siblings then as children.  only want the first one.
                year
                    name
                    num
                 name
                 num
                -->
        </xsl:for-each>
    </xsl:variable>


<!--    <xsl:template match="form-chars[@character = '??']/@character" priority="25">
        <!-\-  fix for:  <form-chars character="??" num-char="4"/> day-\->
        <xsl:attribute name="formchar">invisible</xsl:attribute>
    </xsl:template>
-->
    
    <!-- MDS 2017-06-16 - found in /nonamespace/Rosetta_remotelink-LxAdv-ref.crossreference.xsl -->
    <!--<xsl:template match="remotelink/@alttext"/>-->

    <xsl:template match="@searchtype"/>

    <!-- this is supposed to be levelinfo instead of leg:levelinfo -->
    <xsl:template match="levelinfo[docinfo:currencystatement]"/>

    <xsl:template match="leg:levelinfo[docinfo:authorattribution][not(leg:levelstatus)]">
        <!--        <!-\-  Original Target XPath:  primlaw:levelinfo   -\->
        <primlaw:levelinfo>
            <xsl:apply-templates select="@* | node()"/>
        </primlaw:levelinfo>
-->
    </xsl:template>

    <xsl:template match="ci:cite/ci:content/ci:cite | ci:cite/ci:content/ci:cite/ci:content" priority="50">
        <!-- citation within a citation is a data error.  This passes text through -->
        <xsl:apply-templates/>
    </xsl:template>
    

    <xsl:template match="form">

        <!--  Original Target XPath:  form:form   -->
        <form:form>
            <xsl:apply-templates select="@* | node()"/>
        </form:form>

    </xsl:template>


    <xsl:template match="form/bodytext">

        <!--  Original Target XPath:  form:form/form:document/form:bodytext   -->
        <form:document typeofdoc="unnamed" annotated="false" official="true">
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

    <xsl:template match="form/bodytext/p | form/bodytext/l/li/p" priority="25">

        <!--  Original Target XPath:  form:form/form:document/form:bodytext/form:p   -->
        <form:p>
            <xsl:apply-templates select="@* | node()"/>
        </form:p>

    </xsl:template>

    <xsl:template match="form/bodytext/p/text | form/bodytext/l/li/p/text" priority="25">

        <!--  Original Target XPath:  form:form/form:document/form:bodytext/form:p   -->
        <form:text>
            <xsl:apply-templates select="@* | node()"/>
        </form:text>

    </xsl:template>


    <xsl:template match="form/bodytext/l" priority="2">

        <!--  Original Target XPath:  form:form/form:document/form:bodytext/form:p   -->
        <form:list>
            <xsl:apply-templates select="@* | node()"/>
        </form:list>

    </xsl:template>

    <xsl:template match="form/bodytext/l/li">

        <!--  Original Target XPath:  form:form/form:document/form:bodytext/form:p   -->
        <form:listitem>
            <form:bodytext>
                <xsl:apply-templates select="@* | node()"/>
            </form:bodytext>
        </form:listitem>

    </xsl:template>


    <xsl:template match="leg:levelprelim">

        <!--  Original Target XPath:  primlaw:prelim   -->
        <primlaw:prelim>
            <xsl:apply-templates select="@* | node()"/>
        </primlaw:prelim>

    </xsl:template>

    <xsl:template match="leg:levelstatus[@isrepealed = 'false'][@ln.user-displayed = 'false']"/>

    <xsl:template match="leg:levelstatus[@isrepealed = 'true']/@isrepealed">
        <xsl:attribute name="statuscode" select="'repealed'"/>
    </xsl:template>

    <xsl:template match="leg:levelstatus">

        <!--  Original Target XPath:  primlaw:level/primlaw:levelinfo/primlawinfo:primlawinfo/legisinfo:legisinfo/legisinfo:statusgroup/legisinfo:status[@statuscode="repealed"]/legisinfo:statustext   -->

        <legisinfo:status>
            <xsl:apply-templates select="@isrepealed"/>
            <xsl:if test="not(@ln.user-displayed = 'false')">
                <legisinfo:statustext>
                    <xsl:apply-templates select="@* except @isrepealed | node()"/>
                </legisinfo:statustext>
            </xsl:if>
        </legisinfo:status>
    </xsl:template>

    <xsl:template match="leg:level-vrnt/leg:levelinfo/leg:levelstatus">

        <!--  Original Target XPath:  primlaw:level/primlaw:levelinfo/primlawinfo:primlawinfo/legisinfo:legisinfo/legisinfo:statusgroup/legisinfo:status[@statuscode="repealed"]/legisinfo:statustext   -->

        <legisinfo:statusgroup>
            <legisinfo:status>
                <xsl:apply-templates select="@isrepealed"/>
                <xsl:if test="not(@ln.user-displayed = 'false')">
                    <legisinfo:statustext>
                        <!-- WPK 2017-12-29.  Added exception to not process refpt.  Statustext does
                            not allow ref:anchors in the schema.  webstar 7075034 
                            -->
                        <xsl:apply-templates select="@* except @isrepealed | node()[not(self::refpt)]"/>
                    </legisinfo:statustext>
                </xsl:if>
            </legisinfo:status>
        </legisinfo:statusgroup>
    </xsl:template>

    <xsl:template match="leg:body">

        <!--  Original Target XPath:  courtrule:body   -->
        <courtrule:body>
            <xsl:apply-templates select="@* | node()"/>
        </courtrule:body>

    </xsl:template>

    <xsl:template match="leg:info">

        <!--  Original Target XPath:  primlaw:level[@leveltype="unclassified"]/primlaw:levelinfo/primlawinfo:primlawinfo   -->
        <primlaw:level>
            <xsl:attribute name="leveltype">unclassified</xsl:attribute>
            <xsl:apply-templates select="@id"/>

            <!-- Logic:
            1. maintain document order !  (don't combine siblings mentioned below unless they are immediate siblings and don't move items out of order)
            2. sectionlist, relatedleg, histcite occur outside primlaw:levelinfo 
            3. the combination of 1. and 2. makes this complext.  Here is the structure for year, officialname, officialnum, status:
            <primlaw:levelinfo>
                <primlawinfo:primlawinfo>
                
                        .... combine all immediate sibling year, officialnum in this primlawinfo

                        <primlawinfo:dates>
                            <primlawinfo:enactdate year="{.}"/>
                        </primlawinfo:dates>
                        <primlawinfo:identifier source="editoriallyassigned" idtype="officialnum"/>
                        <legisinfo:legisinfo>
                        
                                .... combine all immediate sibling officialtitle,status into this legisinfo
                                <legisinfo:names>
                                    <legisinfo:officialtitle/>
                                </legisinfo:names>
                                <legisinfo:status>
                                    <legisinfo:statustext/>
                                </legisinfo:status>
                                
                        </legisinfo:legisinfo>
                        
                
                        .... combine all immediate sibling year, officialnum in this primlawinfo

                </primlawinfo:primlawinfo>
            </primlaw:levelinfo>
            
            ...the key items are status, officialname, year, officialnum.
            ...since status and officialname are lowest level siblings in target, apply templates only if no prior sibling (meaning first one in a pair)
            ...since year and officialnum are second lowest level siblings in target, apply templates only if neither they nor status/officialname are preceding siblings.
            ...each of these elements will have an "apply templates to following sibling [1]" logic for these 4 elements.
            
-->
            <xsl:apply-templates
                select="
                    node()[not(
                    (self::leg:status or self::leg:officialname)
                    and preceding-sibling::*[1][self::leg:status or self::leg:officialname]
                    )]
                    [not(
                    (self::leg:year or self::leg:officialnum)
                    and preceding-sibling::*[1][self::leg:officialname or self::leg:status or self::leg:year or self::leg:officialnum]
                    )]"
            />
        </primlaw:level>


    </xsl:template>


    <xsl:template match="leg:info/@subseqdoc"/>

    <xsl:template match="leg:info/leg:officialnum" priority="2">

        <xsl:choose>
            <xsl:when test="preceding-sibling::*[1][self::leg:year or self::leg:officialnum or self::leg:status or self::leg:officialname]">
                <!-- primlaw:levelinfo/primlaw:primlawinfo already established -->
                <primlawinfo:identifier source="editoriallyassigned" idtype="officialnum">
                    <xsl:apply-templates select="@* | node()"/>
                </primlawinfo:identifier>
                <xsl:apply-templates select="following-sibling::*[1][self::leg:year or self::leg:officialnum]"/>
            </xsl:when>
            <xsl:otherwise>
                <primlaw:levelinfo>
                    <primlawinfo:primlawinfo>
                        <primlawinfo:identifier source="editoriallyassigned" idtype="officialnum">
                            <xsl:apply-templates select="@* | node()"/>
                        </primlawinfo:identifier>
                        <xsl:apply-templates select="following-sibling::*[1][self::leg:year or self::leg:officialnum or self::leg:status or self::leg:officialname]"/>
                    </primlawinfo:primlawinfo>
                </primlaw:levelinfo>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

    <xsl:template match="leg:info/leg:year" priority="2">


        <xsl:choose>
            <xsl:when test="preceding-sibling::*[1][self::leg:year or self::leg:officialnum or self::leg:status or self::leg:officialname]">
                <!-- primlaw:levelinfo/primlaw:primlawinfo already established -->
                <primlawinfo:dates>
                    <primlawinfo:enactdate year="{.}"/>
                </primlawinfo:dates>
                <xsl:apply-templates select="following-sibling::*[1][self::leg:year or self::leg:officialnum]"/>
            </xsl:when>
            <xsl:otherwise>
                <primlaw:levelinfo>
                    <primlawinfo:primlawinfo>
                        <primlawinfo:dates>
                            <primlawinfo:enactdate year="{.}"/>
                        </primlawinfo:dates>
                        <xsl:apply-templates select="following-sibling::*[1][self::leg:year or self::leg:officialnum or self::leg:status or self::leg:officialname]"/>
                    </primlawinfo:primlawinfo>
                </primlaw:levelinfo>
            </xsl:otherwise>
        </xsl:choose>


    </xsl:template>


    <xsl:template match="leg:info/leg:status">
        <xsl:choose>
            <xsl:when test="preceding-sibling::*[1][self::leg:officialname or self::leg:status]">
                <!-- primlaw:levelinfo/primlaw:primlawinfo/legisinfo:legisinfo already established -->
                <legisinfo:status>
                    <xsl:apply-templates select="@statuscode"/>
                    <legisinfo:statustext>
                        <xsl:apply-templates select="@* except @statuscode | node()"/>
                    </legisinfo:statustext>
                </legisinfo:status>
                <xsl:apply-templates select="following-sibling::*[1][self::leg:status or self::leg:officialname]"/>
            </xsl:when>
            <xsl:when test="preceding-sibling::*[1][self::leg:year or self::leg:officialnum]">
                <!-- primlaw:levelinfo/primlaw:primlawinfo  already established -->
                <legisinfo:legisinfo>
                    <legisinfo:status>
                        <xsl:apply-templates select="@statuscode"/>
                        <legisinfo:statustext>
                            <xsl:apply-templates select="@* except @statuscode | node()"/>
                        </legisinfo:statustext>
                    </legisinfo:status>
                    <xsl:apply-templates select="following-sibling::*[1][self::leg:status or self::leg:officialname]"/>
                </legisinfo:legisinfo>
                <xsl:apply-templates select="following-sibling::*[1][self::leg:year or self::leg:officialnum]"/>

            </xsl:when>
            <xsl:otherwise>
                <primlaw:levelinfo>
                    <primlawinfo:primlawinfo>
                        <legisinfo:legisinfo>
                            <legisinfo:statusgroup>
                                <legisinfo:status>
                                    <xsl:apply-templates select="@statuscode"/>
                                    <legisinfo:statustext>
                                        <xsl:apply-templates select="@* except @statuscode | node()"/>
                                    </legisinfo:statustext>
                                </legisinfo:status>
                                <xsl:apply-templates select="following-sibling::*[1][self::leg:status or self::leg:officialname]"/>
                            </legisinfo:statusgroup>
                        </legisinfo:legisinfo>
                        <xsl:apply-templates select="following-sibling::*[1][self::leg:year or self::leg:officialnum]"/>
                    </primlawinfo:primlawinfo>
                </primlaw:levelinfo>
            </xsl:otherwise>
        </xsl:choose>

    </xsl:template>



    <xsl:template match="leg:status/nl | leg:officialname/refpt | refpt/@xml:id"/>

    <xsl:template match="leg:status/@statuscode">

        <!--  Original Target XPath:  legisinfo:status@statuscode   -->
        <xsl:attribute name="statuscode" select="."/>
    </xsl:template>


    <xsl:template match="leg:info/leg:officialname" priority="2">

        <xsl:choose>
            <xsl:when test="preceding-sibling::*[1][self::leg:status or self::leg:officialname]">
                <!-- primlaw:levelinfo/primlaw:primlawinfo/legisinfo:legisinfo already established -->
                <legisinfo:names>
                    <legisinfo:officialtitle>
                        <xsl:apply-templates select="@* | node()"/>
                    </legisinfo:officialtitle>
                </legisinfo:names>
                <xsl:apply-templates select="following-sibling::*[1][self::leg:status or self::leg:officialname]"/>

            </xsl:when>
            <xsl:when test="preceding-sibling::*[1][self::leg:year or self::leg:officialnum]">
                <!-- primlaw:levelinfo/primlaw:primlawinfo already established -->
                <legisinfo:legisinfo>
                    <legisinfo:names>
                        <legisinfo:officialtitle>
                            <xsl:apply-templates select="@* | node()"/>
                        </legisinfo:officialtitle>
                    </legisinfo:names>
                    <xsl:apply-templates select="following-sibling::*[1][self::leg:status or self::leg:officialname]"/>
                </legisinfo:legisinfo>
                <xsl:apply-templates select="following-sibling::*[1][self::leg:year or self::leg:officialnum]"/>

            </xsl:when>

            <xsl:otherwise>
                <primlaw:levelinfo>
                    <primlawinfo:primlawinfo>
                        <legisinfo:legisinfo>
                            <legisinfo:names>
                                <legisinfo:officialtitle>
                                    <xsl:apply-templates select="@* | node()"/>
                                </legisinfo:officialtitle>
                            </legisinfo:names>
                            <xsl:apply-templates select="following-sibling::*[1][self::leg:status or self::leg:officialname]"/>
                        </legisinfo:legisinfo>
                        <xsl:apply-templates select="following-sibling::*[1][self::leg:year or self::leg:officialnum]"/>
                    </primlawinfo:primlawinfo>
                </primlaw:levelinfo>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

    <xsl:template match="leg:info/leg:officialname[@ln.user-displayed = 'false']/@ln.user-displayed" priority="2">
        <xsl:attribute name="source">editoriallyassigned</xsl:attribute>
    </xsl:template>


    <!--    <xsl:template match="leg:longtitle">
        <!-\- paul: this does not appear in GDS files
            so it is left untested.  2017-05-16.
            note in dita it says to appear as child of courtrule:body
            so not as simple as default apply templates order            
        -\->

        <!-\-  Original Target XPath:  primlaw:prelim/primlaw:synopsis   -\->
        <primlaw:prelim>
            <primlaw:synopsis>
                <xsl:apply-templates select="@* | node()"/>
            </primlaw:synopsis>
        </primlaw:prelim>

    </xsl:template>

-->
    <xsl:template match="leg:info/@id | leg:sectionlist/@id">

        <!--  Original Target XPath:  @xml:id   -->
        <xsl:attribute name="xml:id" select="."/>

    </xsl:template>


    <xsl:template match="@subdoc">

        <!--  Original Target XPath:  @includeintoc   -->
        <xsl:attribute name="includeintoc" select="."/>

    </xsl:template>

    <xsl:template match="@toc-caption">

        <!--  Original Target XPath:  alternatetoccaption   -->
        <xsl:attribute name="alternatetoccaption" select="."/>

    </xsl:template>




    <xsl:template match="leg:heading/@inline" priority="2">
        <xsl:copy-of select="."/>
    </xsl:template>

    <xsl:template match="leg:bodytext/leg:heading[title]">
        <primlaw:level leveltype="unclassified">
            <xsl:apply-templates select="title/refpt"/>
            <heading xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
                <xsl:apply-templates select="title"/>
            </heading>
        </primlaw:level>
        <xsl:apply-templates select="subtitle"/>
    </xsl:template>



    <!--    <xsl:template match="leg:bodytext/leg:heading[title]">
        <h xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
            <xsl:value-of select="title"/>
        </h>
        <xsl:apply-templates select="." mode="subtitle"/>
    </xsl:template>
-->
    <xsl:template match="leg:bodytext/leg:heading/subtitle">

        <h xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
            <xsl:apply-templates select="@* | node()"/>
        </h>

    </xsl:template>

    <xsl:template match="leg:heading[not(@ln.user-displayed = 'false')][not(parent::leg:bodytext)]">

        <xsl:choose>
            <xsl:when test="leg:histnote | glp:note">
                <heading xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
                    <xsl:apply-templates select="@* | node() except (leg:histnote, leg:empleg, glp:note)"/>
                </heading>
                <xsl:apply-templates select="glp:note"/>

                <!--                <xsl:apply-templates select="leg:empleg"/>
-->
            </xsl:when>
            <xsl:otherwise>
                <heading xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
                    <xsl:apply-templates select="@* | node() except (leg:histnote, leg:empleg)"/>
                </heading>
                <!--                <xsl:apply-templates select="leg:empleg"/>
-->
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>



    <xsl:template match="leg:bodytext" priority="300">
        <!-- this is following the common bodytext module but since AU08 is so peculiar i've moved it out to here -->
        <!-- this will handle annotations interspersed with primlaw:bodytext elements in document order -->

        <xsl:for-each-group select="*"
            group-adjacent="
                if (self::leg:comntry or self::l[li[lilabel[refpt][remotelink][not(child::*[3])]]][not(child::*[not(self::li[lilabel[refpt][remotelink][not(child::*[3])]])])][not(@virtual-nesting)]
                or self::glp:note[l[li[lilabel[refpt][remotelink][not(child::*[3])]]][not(child::*[not(self::li[lilabel[refpt][remotelink][not(child::*[3])]])])][not(@virtual-nesting)]]
                ) then
                    0
                else
                    1">
            <xsl:choose>
                <xsl:when test="current-grouping-key() = 0">
                    <xsl:for-each select="current-group()">
                        <xsl:choose>
                            <xsl:when test="self::glp:note">
                                <xsl:apply-templates select="*"/>
                            </xsl:when>
                            <xsl:otherwise>
                                <xsl:apply-templates select="."/>
                            </xsl:otherwise>
                        </xsl:choose>
                    </xsl:for-each>
                </xsl:when>
                <xsl:otherwise>

                    <xsl:choose>
                        <xsl:when test="parent::leg:bodytext/preceding-sibling::leg:bodytext">
                            <!-- From the CI:
                                – The first occurence of leg:bodytext becomes primlaw:bodytext and after if leg:bodytext has other leg:bodytext or leg:level as
                                siblings then wrap each of them primlaw:level with @leveltype="unclassified"
                                use case AU08 PS2017050402162840900LNIAUCOURTRULES_input_fcr10081168.xml
                            -->
                            <primlaw:level leveltype="unclassified">

                                <primlaw:bodytext>

                                    <!-- 
                                                AU08 use case PS2017042901023652190LNIAUCOURTRULES_input_rules10041021.xml
        6.27.1. blockquote/legfragment/leg:level to primlaw:excerpt/primlaw:level (id-CCCC-10244)
legfragment becomes primlaw:excerpt. blockquote/legfragment/leg:level: 
When legfragment is the first child of blockquote, drop the blockquote
and convert the legfragment to primlaw:excerpt. If the Xpath is blockquote/legfragment/leg:level, then drop the blockquote and convert to primlaw:excerpt/
primlaw:level.

/LEGDOC/leg:body[1]/leg:level[1]/leg:level-vrnt[1]/leg:levelbody[1]/leg:level[1]/leg:level-vrnt[1]/leg:levelbody[1]/leg:level[1]/leg:level-vrnt[1]/leg:levelbody[1]
/leg:bodytext[1]/blockquote[2]/legfragment[1]/leg:level[1]
-->
                                    <xsl:for-each select="current-group()">
                                        <xsl:choose>
                                            <!-- 
                                            6.27.1. blockquote/legfragment/leg:level to primlaw:excerpt/primlaw:level (id-CCCC-10244)
                                            legfragment becomes primlaw:excerpt. blockquote/legfragment/leg:level: When legfragment is the first child of blockquote, drop the blockquote
                                            and convert the legfragment to primlaw:excerpt. If the Xpath is blockquote/legfragment/leg:level, then drop the blockquote and convert to primlaw:excerpt/
                                            primlaw:level.-->
                                            <xsl:when test="self::blockquote[*[1][self::legfragment[leg:level]]]">
                                                <xsl:apply-templates select="legfragment"/>
                                            </xsl:when>
                                            <!-- PS2017042601452263609LNIAUCOURTRULES_input_ucpr10004300.xml
                                            6.27.2. blockquote/legfragment/p to primlaw:excerpt/primlaw:bodytext/p (id-CCCC-10245)
                                            blockquote/legfragment/p: If the first child of legfragment is a paragraph, list, or table, then omit blockquote and convert legfragment to
                                            primlaw:excerpt/primlaw:bodytext.-->
                                            <xsl:when test="self::blockquote[*[1][self::legfragment[*[1][self::p or self::table or self::l]]]]">
                                                <xsl:apply-templates select="legfragment"/>
                                            </xsl:when>
                                            <xsl:when test="self::blockquote[*[1][not(self::legfragment[leg:level])]]">
                                                <xsl:apply-templates select="."/>
                                            </xsl:when>
                                            <xsl:when test="self::leg:heading"/>
                                            <xsl:otherwise>
                                                    <xsl:apply-templates select="."/>
                                            </xsl:otherwise>
                                        </xsl:choose>
                                    </xsl:for-each>
                                </primlaw:bodytext>
                            </primlaw:level>
                        </xsl:when>
                        <xsl:when test="not(parent::leg:bodytext/preceding-sibling::leg:bodytext)">
                            <!-- From the CI:
                                – The first occurence of leg:bodytext becomes primlaw:bodytext and after if leg:bodytext has other leg:bodytext or leg:level as
                                siblings then wrap each of them primlaw:level with @leveltype="unclassified"
                                use case AU08 PS2017050402162840900LNIAUCOURTRULES_input_fcr10081168.xml
                            -->
                            <primlaw:bodytext>
                                <xsl:for-each select="current-group()">
                                    <xsl:choose>
                                        <!-- 
                                            6.27.1. blockquote/legfragment/leg:level to primlaw:excerpt/primlaw:level (id-CCCC-10244)
                                            legfragment becomes primlaw:excerpt. blockquote/legfragment/leg:level: When legfragment is the first child of blockquote, drop the blockquote
                                            and convert the legfragment to primlaw:excerpt. If the Xpath is blockquote/legfragment/leg:level, then drop the blockquote and convert to primlaw:excerpt/
                                            primlaw:level.-->
                                        
                                        <xsl:when test="self::blockquote[*[1][self::legfragment[leg:level]]]">
                                            <xsl:apply-templates select="legfragment"/>
                                        </xsl:when>
                                        <!-- PS2017042601452263609LNIAUCOURTRULES_input_ucpr10004300.xml
                                            6.27.2. blockquote/legfragment/p to primlaw:excerpt/primlaw:bodytext/p (id-CCCC-10245)
                                            blockquote/legfragment/p: If the first child of legfragment is a paragraph, list, or table, then omit blockquote and convert legfragment to
                                            primlaw:excerpt/primlaw:bodytext.-->
                                        <xsl:when test="self::blockquote[*[1][self::legfragment[*[1][self::p or self::table or self::l]]]]">
                                            <xsl:apply-templates select="legfragment"/>
                                        </xsl:when>
                                        
                                        <xsl:when test="self::blockquote[*[1][not(self::legfragment[leg:level])]]">
                                            <xsl:apply-templates select="."/>
                                        </xsl:when>
                                        <xsl:when test="self::leg:heading"/>
                                        <xsl:otherwise>
                                                <xsl:apply-templates select="."/>
                                        </xsl:otherwise>
                                    </xsl:choose>
                                </xsl:for-each>
                            </primlaw:bodytext>
                        </xsl:when>

                        <xsl:otherwise>
                            <primlaw:bodytext>
                                <xsl:apply-templates select="parent::leg:bodytext/@*"/>
                                <xsl:for-each select="current-group()">
                                    <xsl:apply-templates select="."/>
                                </xsl:for-each>
                            </primlaw:bodytext>
                        </xsl:otherwise>
                    </xsl:choose>

                </xsl:otherwise>
            </xsl:choose>

        </xsl:for-each-group>



    </xsl:template>
    
    
<!--    <xsl:template match="leg:level/leg:level-vrnt/leg:levelbody/leg:bodytext/blockquote" priority="25">
        <blockquote xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
            <xsl:apply-templates/>
            <!-\- Match the next sibling if it has the same name -\->
            <xsl:apply-templates select="following-sibling::*[1][self::blockquote][not(legfragment/leg:level)]" mode="next"/>
        </blockquote>
    </xsl:template>
-->    

    <xsl:template match="blockquote[not(legfragment)]" priority="25">
        <!-- this template originated in common blockquote to blockquote module.
            because of legfragment suppression of blockquotes it was moved here.  too complex for common module
            -->
        <xsl:variable name="name" select="local-name()"/>
        <xsl:variable name="AU08PrecedingException">
            <xsl:if test="$streamID='AU08' and preceding-sibling::*[1][self::blockquote[legfragment[leg:level or *[1][self::p or self::l or self::table]]]]">
                <!-- previous blockquote has been suppressed -->
                <xsl:value-of select="true()"/>
            </xsl:if>
        </xsl:variable>
        <xsl:variable name="AU08FollowingException">
            <xsl:if test="$streamID='AU08' and following-sibling::*[1][self::blockquote[legfragment[leg:level or *[1][self::p or self::l or self::table]]]]">
                <!-- followin blockquote will be suppressed -->
                <xsl:value-of select="true()"/>
            </xsl:if>
        </xsl:variable>
        <xsl:if test="local-name(preceding-sibling::*[position()=1]) != $name or $AU08PrecedingException">
            <blockquote xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
                <xsl:apply-templates />
                <!-- Match the next sibling if it has the same name. next mode template is in common module  -->
                <xsl:apply-templates select="following-sibling::*[1][local-name()=$name][not($AU08FollowingException)]" mode="next"/>
            </blockquote>
        </xsl:if>
    </xsl:template>
    
    



    <!-- from the endnotes xsl
        <xsl:template match="leg:bodytext" priority="30">
        <!-\- this will handle annotations interspersed with primlaw:bodytext elements in document order -\->
        <xsl:for-each-group select="*" group-adjacent="if (self::leg:comntry or self::l[li[lilabel[refpt][remotelink][not(child::*[3])]]][not(child::*[not(self::li[lilabel[refpt][remotelink][not(child::*[3])]])])][not(@virtual-nesting)] 
            or self::glp:note[l[li[lilabel[refpt][remotelink][not(child::*[3])]]][not(child::*[not(self::li[lilabel[refpt][remotelink][not(child::*[3])]])])][not(@virtual-nesting)]]
            ) then 0 else 1">
            <xsl:choose>
                <xsl:when test="current-grouping-key()=0">
                    <xsl:for-each select="current-group()">
                        <xsl:choose>
                            <xsl:when test="self::glp:note">
                                <xsl:apply-templates select="*"/>
                            </xsl:when>
                            <xsl:otherwise>
                                <xsl:apply-templates select="."/>
                            </xsl:otherwise>
                        </xsl:choose>                        
                    </xsl:for-each>
                </xsl:when>                
                <xsl:otherwise>
                    <xsl:choose>
                        <xsl:when test="$streamID='AU19LA'">
                            <admindoc:bodytext xmlns:admindoc="urn:x-lexisnexis:content:administrative-document:sharedservices:1">
                                <xsl:apply-templates select="parent::leg:bodytext/@*"/> 
                                <xsl:for-each select="current-group()">
                                    <xsl:apply-templates select="."/>
                                </xsl:for-each>
                            </admindoc:bodytext>
                        </xsl:when>
                        <xsl:otherwise>
                            <primlaw:bodytext>
                                <xsl:apply-templates select="parent::leg:bodytext/@*"/> 
                                <xsl:for-each select="current-group()">
                                    <xsl:apply-templates select="."/>
                                </xsl:for-each>
                            </primlaw:bodytext>
                        </xsl:otherwise>
                    </xsl:choose>                    
                </xsl:otherwise>
            </xsl:choose>
        </xsl:for-each-group>
    </xsl:template>
    
    
    -->
    <xsl:template match="leg:histnote">

        <!--    <!-\\-  Original Target XPath:  note[notetype="historical"]   -\\->
-->
        <note xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/" notetype="historical">
            <xsl:apply-templates select="leg:heading"/>
            <bodytext>
                <xsl:apply-templates select="@* | node() except leg:heading"/>
            </bodytext>
        </note>

    </xsl:template>

    <xsl:template match="leg:tableofamend">


        <primlawhist:histgrp grptype="tableofamend">
            <xsl:apply-templates select="leg:heading/title/refpt"/>
            <xsl:apply-templates select="leg:heading"/>
            <primlawhist:histitem>
                <bodytext xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
                    <xsl:apply-templates select="@* | node() except leg:heading"/>

                </bodytext>
            </primlawhist:histitem>
        </primlawhist:histgrp>


    </xsl:template>
    <xsl:template match="leg:relatedleg[@type = 'parent']">
        <primlaw:authority>
            <primlaw:authority-item>
                <textitem xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
                    <xsl:apply-templates select="@* | node()"/>
                </textitem>
            </primlaw:authority-item>
        </primlaw:authority>
    </xsl:template>

    <xsl:template match="leg:relatedleg/@type"/>
        


    <!--    <xsl:template match="leg:info/leg:sectionlist[not(@id) or not(contains(@id,'_PROVLIST'))]">
        
        <!-\-  Original Target XPath:  navaid:navigationaid   -\->
        <navaid:navigationaid>
            <xsl:choose>
                <xsl:when test="p[1]/table[1]/tgroup[1]/tbody[1]/row[1]/entry[1]/remotelink[1]='LawNow Home Page'">
                    <xsl:attribute name="type">links</xsl:attribute>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:attribute name="type">sectionlist</xsl:attribute>                    
                </xsl:otherwise>
            </xsl:choose>
            <xsl:apply-templates select="@* | node()"/>
        </navaid:navigationaid>
        
    </xsl:template>
-->
    <xsl:template match="leg:body/leg:info/leg:sectionlist">
        <!-- Paul: CI says these 2 scenarios with former adding unclassified level wrapper,
            however since we are in leg:body/leg:info, we are already in an unclassified level, so they
            result in the same.
            <xsl:template match="leg:info/leg:sectionlist[not(@id) or not(contains(@id,'_PROVLIST'))]">
            <xsl:template match="leg:info/leg:sectionlist[@id or contains(@id,'_PROVLIST')]">
            -->
        
        <!--
 wpk 2018-03-20.  this template basically does the same thing for court rules as the following
	        modules do for legislation and regulations.  They should ideally be in sync.
	        The code differs slightly as a detailed note is in the following regarding a webstar.
	        This code works as needed and so no changes done here.
Rosetta-to-LA/modules/leg/AU_Legis-Body.xsl
<xsl:template match="leg:sectionlist[not(@id) or not(contains(@id, 'PROVLIST'))]">

Rosetta-to-LA/modules/nonamespace/Rosetta_Pacific_Regulations_common.xsl
<xsl:template match="leg:info/leg:sectionlist">

       
        -->        
        

        <!--  Original Target XPath:  navaid:navigationaid   -->
        <xsl:choose>
            <xsl:when test="@id or contains(@id, '_PROVLIST')">

                <xsl:call-template name="sectionlist-table-to-toc"/>

            </xsl:when>
            <xsl:when test="p[1]/table[1]/tgroup[1]/tbody[1]/row[1]/entry[1]/remotelink[1] = 'LawNow Home Page'">
                <primlaw:level>
                    <xsl:attribute name="leveltype">unclassified</xsl:attribute>
                    <xsl:apply-templates select="leg:heading/title/refpt"/>
                    <navaid:navigationaid>
                        <xsl:attribute name="type">links</xsl:attribute>
                        <bodytext xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
                            <xsl:apply-templates select="@* | node()"/>

                        </bodytext>
                    </navaid:navigationaid>
                </primlaw:level>
            </xsl:when>
            <xsl:otherwise>
                <primlaw:level>
                    <xsl:attribute name="leveltype">unclassified</xsl:attribute>
                    <xsl:apply-templates select="leg:heading/title/refpt"/>
                    <navaid:navigationaid>
                        <xsl:attribute name="type">sectionlist</xsl:attribute>
                        <bodytext xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
                            <xsl:apply-templates select="@* | node()"/>

                        </bodytext>
                    </navaid:navigationaid>
                </primlaw:level>
            </xsl:otherwise>
        </xsl:choose>

    </xsl:template>

    <!--    <xsl:template match="leg:info/leg:histcite/leg:heading/title/refpt" priority="2"/>
-->
    <xsl:template match="leg:info/leg:histcite">

        <!--  Original Target XPath:  /courtrule:courtrule/courtrule:body/primlaw:level/primlawhist:primlawhist/primlawhist:histgrp[@grptype="histcite"]   -->
        <primlawhist:primlawhist>
            <primlawhist:histgrp grptype="histcite">
                <xsl:apply-templates select="leg:heading/title/refpt"/>
                <xsl:apply-templates select="@* | node()"/>
            </primlawhist:histgrp>
        </primlawhist:primlawhist>

    </xsl:template>

    <xsl:template match="leg:info/leg:histcite/table">
        <primlawhist:histitem>
            <bodytext xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
                <table>
                    <xsl:apply-templates select="@* | node()"/>
                </table>
            </bodytext>
        </primlawhist:histitem>
    </xsl:template>

    <xsl:template match="leg:preamble">
        <primlaw:level leveltype="preamble">
            <xsl:apply-templates select="@* | node()"/>
        </primlaw:level>
    </xsl:template>

    <xsl:template match="leg:endmatter">
        <primlaw:level leveltype="endnote">
            <xsl:apply-templates select="@* | node()"/>
        </primlaw:level>
    </xsl:template>

    <xsl:template match="leg:history">

        <!--  Original Target XPath:  courtrule:courtrule/courtrule:body/primlaw:level[@leveltype="unclassified"]/primlaw:prelim/primlawhist:primlawhist   -->
        <primlawhist:primlawhist>
            <xsl:apply-templates select="leg:heading/title/refpt"/>
            <xsl:apply-templates select="leg:heading"/>
            <xsl:if test="*[not(self::leg:heading) and not(self::leg:tableofamend)]">
                <primlawhist:histgrp>
                    <primlawhist:histitem>
                        <bodytext xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
                            <xsl:apply-templates select="@* | node() except (leg:heading, leg:tableofamend)"/>
                        </bodytext>
                    </primlawhist:histitem>
                </primlawhist:histgrp>
            </xsl:if>
            <xsl:apply-templates select="leg:tableofamend"/>
        </primlawhist:primlawhist>

    </xsl:template>

    <!--    <xsl:template match="glp:note">

        <!-\-  Original Target XPath:  note   -\->
        <note xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
            <xsl:apply-templates select="@* | node()"/>
        </note>

    </xsl:template>
-->

    <xsl:template match="in:lev1/@subdoc">

        <!--  Original Target XPath:  index:index@includeintoc/index:item   -->
        <xsl:attribute name="includeintoc" select="."/>

    </xsl:template>

    <xsl:template match="in:lev1/@toc-caption">

        <!--  Original Target XPath:  index:index@alternatetoccaption/index:item   -->
        <xsl:attribute name="alternatetoccaption" select="."/>

    </xsl:template>


    <xsl:template match="/LEGDOC/leg:body/leg:endmatter/index">

        <index:index indextype="definedTerms">
            <xsl:apply-templates select="@*"/>
            <xsl:apply-templates select="heading/title/refpt"/>
            <xsl:apply-templates select="heading"/>
            <xsl:apply-templates select="in:lev1"/>
        </index:index>

    </xsl:template>

    <xsl:template match="index/in:lev1">

        <index:item>
            <xsl:apply-templates select="in:entry/in:index-ref/refpt"/>
            <xsl:apply-templates select="node() except (heading, see[preceding-sibling::in:entry])"/>
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

    <xsl:template match="in:entry/in:index-ref">

        <xsl:apply-templates select="@* | node()"/>

    </xsl:template>

    <xsl:template match="in:index-ref/text()">
        <connector xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
            <xsl:copy-of select="."/>
        </connector>
    </xsl:template>


    <xsl:template match="index/p/table">

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


    <xsl:template match="leg:empleg">

        <primlaw:authority>
            <primlaw:authority-item>
                <textitem xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
                    <xsl:apply-templates select="@* | node()"/>
                </textitem>
            </primlaw:authority-item>
        </primlaw:authority>

    </xsl:template>

    <!--

    <xsl:template match="form">

        <form:form>
            <xsl:apply-templates select="@* | node()"/>
        </form:form>

    </xsl:template>

    <xsl:template match="form/bodytext">

        <form:document>
            <form:bodytext>
                <xsl:apply-templates select="@* | node()"/>
            </form:bodytext>
        </form:document>

    </xsl:template>


    <xsl:template match="form/bodytext/h">

        <form:h>
            <xsl:apply-templates select="@* | node()"/>
        </form:h>

    </xsl:template>

    <xsl:template match="form/bodytext/p">

        <form:p>
            <xsl:apply-templates select="@* | node()"/>
        </form:p>

    </xsl:template>

    <xsl:template match="form/bodytext/p/text">

        <form:text>
            <xsl:apply-templates select="@* | node()"/>
        </form:text>

    </xsl:template>


-->
    <xsl:template match="inlineobject[@filename = 'au_noforce.png' or @filename = 'au_inforce.png']" priority="2">
        <!-- 
        <inlineobject alttext="[Not in Force]" type="image" attachment="web-server" filename="au_noforce.png"/>
        -->
        <figure xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
            <ref:inlineobject>
                <ref:locator>
                    <ref:locator-key>
                        <ref:key-name name="object-key"/>
                        <ref:key-value value="{substring-before(@filename,'.png')}"/>
                    </ref:locator-key>
                    <ref:locator-params>
                        <proc:param name="componentseq" value="1"/>
                        <proc:param name="object-type" value="image"/>
                        <proc:param name="object-smi" value="?????"/>
                    </ref:locator-params>
                </ref:locator>
            </ref:inlineobject>
        </figure>

    </xsl:template>



    <!--

    <xsl:template match="footnotegrp">

        <!-\-  Original Target XPath:  primlaw:bodytext   -\->
        <primlaw:bodytext>
            <xsl:apply-templates select="@* | node()"/>
        </primlaw:bodytext>

    </xsl:template>

    <xsl:template match="leg:comntry">

        <!-\-  Original Target XPath:  primlaw:bodytext   -\->
        <primlaw:bodytext>
            <xsl:apply-templates select="@* | node()"/>
        </primlaw:bodytext>

    </xsl:template>

    <xsl:template match="endnote">

        <!-\-  Original Target XPath:  primlaw:bodytext   -\->
        <primlaw:bodytext>
            <xsl:apply-templates select="@* | node()"/>
        </primlaw:bodytext>

    </xsl:template>

    <xsl:template match="leg:bodytext/leg:heading/subtile">

        <!-\-  Original Target XPath:  primlaw:bodytext/h   -\->
        <primlaw:bodytext>
            <h>
                <xsl:apply-templates select="@* | node()"/>
            </h>
        </primlaw:bodytext>

    </xsl:template>





    <xsl:template match="p">

        <!-\-  Original Target XPath:  note   -\->
        <note>
            <xsl:apply-templates select="@* | node()"/>
        </note>

    </xsl:template>


 

    <xsl:template match="row">

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

    <xsl:template match="entry/remotelink[@service = 'DOC-ID']">

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

    </xsl:template>


    <xsl:template match="leg:relatedleg">

        <!-\-  Original Target XPath:  ref:inlineobject   -\->
        <ref:inlineobject>
            <xsl:apply-templates select="@* | node()"/>
        </ref:inlineobject>

    </xsl:template>

    <xsl:template match="inlineobject">

        <!-\-  Original Target XPath:  ref:inlineobject   -\->
        <ref:inlineobject>
            <xsl:apply-templates select="@* | node()"/>
        </ref:inlineobject>

    </xsl:template>

    <xsl:template match="leg:info/leg:longtitle">

        <!-\-  Original Target XPath:  @anchoridref   -\->
        <xsl:attribute name="anchoridref">
            <xsl:apply-templates select="node()"/>
        </xsl:attribute>

    </xsl:template>
-->
</xsl:stylesheet>
