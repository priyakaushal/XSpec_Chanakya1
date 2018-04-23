<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
    xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"    xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
    xmlns:source_dict="http://www.lexis-nexis.com/glp/dict" 
    xmlns:classify="http://www.lexisnexis.com/xmlschemas/content/shared/classification/1/" 
    xmlns:dict="urn:x-lexisnexis:content:dict:sharedservices:1" 
    xmlns:lnci="http://www.lexisnexis.com/xmlschemas/content/shared/citations/1/" 
    xmlns:person="http://www.lexisnexis.com/xmlschemas/content/shared/person/1/" 
    xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" 
    xmlns:tei="http://www.tei-c.org/ns/1.0/" 
    version="2.0" exclude-result-prefixes="dita dict">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="AU21_dict.subtopic">
    <title><sourcexml>dict:subtopic</sourcexml> to <targetxml>tei:entry</targetxml> <lnpid>id-AU21-22414</lnpid></title>
    <body>
        <section>
            <p>If <i>only</i> 1 <sourcexml>dict:subtopic</sourcexml> element exists,
                    <sourcexml>dict:subtopic</sourcexml> becomes
                <targetxml>tei:entry</targetxml>.</p>
            <p>If more than 1 <sourcexml>dict:subtopic</sourcexml> element exists, create
                    <targetxml>tei:superEntry</targetxml>. Then each
                    <sourcexml>dict:subtopic</sourcexml> following-sibling becomes a
                    <targetxml>tei:entry</targetxml>.<ul>
                    <li><sourcexml>dict:subtopic[@id]</sourcexml> becomes
                            <targetxml>tei:entry[@type]</targetxml></li>
                    <li><sourcexml>dict:subtopic[@id='LEG:AGEDISCRIMINATION']</sourcexml>, create a
                            <targetxml> tei:def</targetxml>
                        <ul>
                            <li>process
                                    <sourcexml>dict:subtopic[@id='LEG:AGEDISCRIMINATION'']</sourcexml>
                                as children of <targetxml> tei:def</targetxml></li>
                        </ul>
                    </li>
                </ul></p>
            
            <p>
                <ul>
                    <li><sourcexml>dict:subtopic[@id="CASE:{value such as BANKRUPTCY}"]</sourcexml> maps to <targetxml>tei:entry[@type="CASE:{value such as BANKRUPTCY}"]</targetxml> 
                        <sourcexml>dict:topicname</sourcexml> maps to <targetxml>tei:usg</targetxml>
                    </li>
                    
                    <li><sourcexml>p/text/ci:cite</sourcexml> maps to <targetxml>p/text/lnci:cite</targetxml>
                    </li>
                    <li>Within each <targetxml>dict:subtopic[@id="CASE:BANKRUPTCY"]/p/text</targetxml> but prior to <targetxml>lnci:cite</targetxml>
                        map <sourcexml>remotelink</sourcexml> to <targetxml>ref:crossreference</targetxml> element to provide linking of the cite signal. 
                    </li>
                    
                    <li>If <sourcexml>dict:subtopic</sourcexml> contains <sourcexml>p/text/remotelink/inlineobject@alttext="cautionary", "positive", "neutral", 
                        "negative" or "citator".</sourcexml> The value of the alttext determines the attribute value for <targetxml>ref:inlineobject@filename</targetxml>.
                        
                        <ul>
                            <li>Map <sourcexml>dict:subtopic/p/text/remotelink</sourcexml> to <targetxml>tei:def/pgrp/p/text/ref:crossreference</targetxml>,</li>
                            <li>Map <sourcexml>remotelink/inlineobject</sourcexml> to <targetxml>ref:crossreference/ref:content/ref:inlineobject</targetxml>.</li>
                            
                        </ul>
                    </li>
                    

                </ul>
            </p>
            
            <p>If special characters are present in the <sourcexml>dict:subtopic[@id] </sourcexml>
                attribute value then the special characters will be supressed and the text is
                merged.
                    <b>Example:</b><sourcexml>dict:subtopic[@id="CONTEXT:WORKERS&amp;#x2019;COMPENSATION"]&gt;</sourcexml>
                <b>becomes</b>
                <targetxml>tei:entry[@type="CONTEXT:WORKERSCOMPENSATION"]</targetxml>.</p>
            
            <p>The first occurrence of <sourcexml>dict:body/dict:term-entry/dict:definition/dict:subtopic</sourcexml> maps to
                                               
                <targetxml>tei:entry type="CONTEXT:SUBPOENAS"/tei:usg[@type="context"]</targetxml>
                
                <sourcexml>dict:subtopic/l/li/p/text</sourcexml> maps to <targetxml>classify:keywords[@classscheme="topicPath"]</targetxml> element.
                
                <sourcexml>dict:subtopic/l/li/l/li/p/text</sourcexml> maps to <targetxml>classify:keywords[@classscheme="topicPath"]</targetxml> element.
                
                <sourcexml>dict:subtopic/l/li/l/li/l/li/p/text</sourcexml> maps to <targetxml>classify:keywords[@classscheme="topicPathTarget"]</targetxml> element.
            </p>
            
            
        </section>
        
        
        <example>
            <title>Source XML 1 - multiple <sourcexml>dict:subtopic</sourcexml></title>
            <codeblock>

&lt;dict:term-entry&gt;
    ...
    &lt;dict:definition&gt;
        &lt;dict:subtopic id="DEF:AGEDISCRIMINATION"&gt;
            &lt;dict:topicname&gt;
                &lt;emph typestyle="bf"&gt;Narrative definition&lt;/emph&gt;
            &lt;/dict:topicname&gt;
            ...
        &lt;/dict:subtopic&gt;
        &lt;dict:subtopic id="LEG:AGEDISCRIMINATION"&gt;
            &lt;dict:topicname&gt;
                &lt;emph typestyle="bf"&gt;Legislative definition&lt;/emph&gt;
            &lt;/dict:topicname&gt;
            ...
        &lt;/dict:subtopic&gt;
        &lt;dict:subtopic id="KEYLEG:AGEDISCRIMINATION"&gt;
            &lt;dict:topicname&gt;Key Legislation&lt;/dict:topicname&gt;
            ...
        &lt;/dict:subtopic&gt;                
    &lt;/dict:definition&gt;
&lt;/dict:term-entry&gt;

	</codeblock>
        </example>



        <example>
            <title>Target XML 1 - multiple <sourcexml>dict:subtopic</sourcexml></title>
            <codeblock>

&lt;dict:defitem&gt;
    &lt;tei:superEntry&gt;
        &lt;tei:entry type="DEF:AGEDISCRIMINATION"&gt;
            ...
            &lt;tei:usg type="Narrativedefinition"&gt;
                &lt;emph typestyle="bf"&gt;Narrative definition&lt;/emph&gt;
            &lt;/tei:usg&gt;
            ...
        &lt;/tei:entry&gt;
        &lt;tei:entry type="LEG:AGEDISCRIMINATION"&gt;
            &lt;tei:usg type="Legislativedefinition"&gt;
                &lt;emph typestyle="bf"&gt;Legislative definition&lt;/emph&gt;
            &lt;/tei:usg&gt;
            ...
        &lt;/tei:entry&gt;
        &lt;tei:entry type="KEYLEG:AGEDISCRIMINATION"&gt;
            &lt;tei:usg type="KeyLegislation"&gt;
                Key Legislation
            &lt;/tei:usg&gt;
            ...
        &lt;/tei:entry&gt;                
   &lt;/tei:superEntry&gt;
 &lt;/dict:defitem&gt;
	</codeblock>
        </example>

        
        <example>
            <title>Source XML - Legal Topic Path</title>
         <codeblock>
           
      &lt;dict:body&gt;
         &lt;dict:term-entry&gt;
             &lt;defterm&gt;
                &lt;emph typestyle="bf"&gt;Subpoenas&lt;/emph&gt;
             &lt;/defterm&gt;
             &lt;dict:definition&gt;
                &lt;dict:subtopic id="CONTEXT:SUBPOENAS"&gt;
                   &lt;l type="def"&gt;
                      &lt;li&gt;
                         &lt;p&gt;
                           &lt;text&gt;Dispute Resolution &amp;amp; Civil Procedure
                              &lt;/text&gt;
                         &lt;/p&gt;
                         &lt;l type="def"&gt;
                           &lt;li&gt;
                              &lt;p&gt;
                                &lt;text&gt;Civil Evidence&lt;/text&gt;
                              &lt;/p&gt;
                              &lt;l type="def"&gt;
                                &lt;li&gt;
                                  &lt;p&gt;
                                    &lt;text&gt;Subpoenas&lt;/text&gt;
                                  &lt;/p&gt;
                                 &lt;/li&gt;
                               &lt;/l&gt;
                             &lt;/li&gt;
                           &lt;/l&gt;
                        &lt;/li&gt;
                      &lt;/l&gt;
                   &lt;/dict:subtopic&gt;

             
             </codeblock>   
            
        </example>
        
        <example>
            <title>Target XML - Legal Topic Path</title>
            <codeblock>
                
            &lt;tei:entry type="CONTEXT:SUBPOENAS"&gt;
               &lt;tei:usg type="context"&gt;
                   &lt;classify:keywords classscheme="topicPath"&gt;
                       Dispute Resolution &amp;amp; Civil Procedure
                   &lt;/classify:keywords&gt;
                   &lt;classify:keywords classscheme="topicPath"&gt;
                       Civil Evidence
                   &lt;/classify:keywords&gt;
                   &lt;classify:keywords classscheme="topicPathTarget"&gt;
                       Subpoenas
                   &lt;/classify:keywords&gt;
               &lt;/tei:usg&gt;
               
            &lt;/tei:entry&gt;
                
                
            </codeblock>
        </example>
        
        <example>
            <title>SOURCE dict:subtopic[@id="CASE:{value such as BANKRUPTCY}"] AND cross reference link</title>
            
            <codeblock>
                
        &lt;dict:subtopic id="CASE:BANKRUPTCY"&gt;
          &lt;dict:topicname&gt;
            &lt;emph typestyle="bf"&gt;Key cases:&lt;/emph&gt;
          &lt;/dict:topicname&gt;
          &lt;p&gt;
            &lt;text&gt;
              &lt;remotelink dpsi="CASEDPSI" docidref="ABCD_1234" refpt="13677" remotekey1="REFPTID" service="DOC-ID"&gt;
                &lt;inlineobject alttext="cautionary"
                  attachment="web-server" filename="cautionary.gif" type="image"/&gt;
              &lt;/remotelink&gt;
              
              &lt;ci:cite&gt;
                &lt;ci:case&gt;
                  &lt;ci:caseinfo&gt;
                    &lt;ci:casename&gt;
                      &lt;ci:party1 name="Trustees of the Property of Cummins (a bankrupt)"/&gt;
                      &lt;ci:procphrase txt="v"/&gt;
                      &lt;ci:party2 name="Cummins"/&gt;
                    &lt;/ci:casename&gt;
                    &lt;ci:decisiondate year="2006"/&gt;
                  &lt;/ci:caseinfo&gt;
                  &lt;ci:caseref&gt;
                    &lt;ci:reporter value="CLR"/&gt;
                    &lt;ci:volume num="227"/&gt;
                    &lt;ci:page num="278"/&gt;
                  &lt;/ci:caseref&gt;
                  &lt;ci:caseref&gt;
                    &lt;ci:reporter value="ALR"/&gt;
                    &lt;ci:volume num="224"/&gt;
                    &lt;ci:page num="280"/&gt;
                  &lt;/ci:caseref&gt;
                  &lt;ci:caseref&gt;
                    &lt;ci:reporter value="ALJR"/&gt;
                    &lt;ci:volume num="80"/&gt;
                    &lt;ci:page num="589"/&gt;
                  &lt;/ci:caseref&gt;
                  &lt;ci:caseref&gt;
                    &lt;ci:reporter value="Fam LR"/&gt;
                    &lt;ci:volume num="35"/&gt;
                    &lt;ci:page num="343"/&gt;
                  &lt;/ci:caseref&gt;
                  &lt;ci:caseref&gt;
                    &lt;ci:reporter value="ATR"/&gt;
                    &lt;ci:volume num="61"/&gt;
                    &lt;ci:page num="642"/&gt;
                  &lt;/ci:caseref&gt;
                  &lt;ci:caseref&gt;
                    &lt;ci:reporter value="HCA"/&gt;
                    &lt;ci:edition&gt;
                      &lt;ci:date year="2006"/&gt;
                    &lt;/ci:edition&gt;
                    &lt;ci:page num="6"/&gt;
                  &lt;/ci:caseref&gt;
                  &lt;ci:caseref&gt;
                    &lt;ci:reporter value="urj"/&gt;
                    &lt;ci:refnum num="BC200600981"/&gt;
                  &lt;/ci:caseref&gt;
                &lt;/ci:case&gt;
                &lt;ci:content&gt;Trustees of the Property of Cummins (a bankrupt) v Cummins (2006) 227
                  CLR 278; (2006) 224 ALR 280; (2006) 80 ALJR 589; (2006) 35 Fam LR 343; (2006) 61
                  ATR 642; [2006] HCA 6; BC200600981&lt;/ci:content&gt;
              &lt;/ci:cite&gt;
            &lt;/text&gt;
          &lt;/p&gt;
                
                
            </codeblock>
            
        </example>
        
        <example>
            <title>TARGET dict:subtopic[@id="CASE:{value such as BANKRUPTCY}"] AND cross reference link</title>
            
            <codeblock>
                
        &lt;tei:entry type="CASE:BANKRUPTCY"&gt;
          &lt;tei:usg&gt;
            &lt;emph typestyle="bf"&gt;Key cases:&lt;/emph&gt;
          &lt;/tei:usg&gt;
          &lt;tei:def&gt;
            &lt;pgrp&gt;
              &lt;p&gt;
                &lt;text&gt;
                  &lt;ref:crossreference crossreferencetype="citatorAlert" referencedresourcesentiment="none" referencedresourcetype="cautionary"&gt;
                     &lt;ref:locator anchoridref="ABCD_1234"&gt;
                        &lt;ref:locator-key&gt;
                           &lt;ref:key-name name="DOC-ID"/&gt;
                           &lt;ref:key-value value="CASEDPSI-13677"/&gt;
                        &lt;/ref:locator-key&gt;
                     &lt;/ref:locator&gt;
                      &lt;ref:content&gt;
                        &lt;ref:inlineobject alttext="cautionary" attachment="web-server" filename="cautionary.gif" type="image"/&gt;
                      &lt;/ref:content&gt;  
        &lt;/ref:crossreference&gt;

                  &lt;lnci:cite&gt;
                    &lt;lnci:case&gt;
                      &lt;lnci:caseinfo&gt;
                        &lt;lnci:casename&gt;
                          &lt;lnci:party1 name="Trustees of the Property of Cummins (a bankrupt)"/&gt;
                          &lt;lnci:procphrase txt="v"/&gt;
                          &lt;lnci:party2 name="Cummins"/&gt;
                        &lt;/lnci:casename&gt;
                        &lt;lnci:decisiondate year="2006"/&gt;
                      &lt;/lnci:caseinfo&gt;
                      &lt;lnci:caseref&gt;
                        &lt;lnci:reporter value="CLR"/&gt;
                        &lt;lnci:volume num="227"&gt; &lt;/lnci:volume&gt;
                        &lt;lnci:page num="278"/&gt;
                      &lt;/lnci:caseref&gt;
                      &lt;lnci:caseref&gt;
                        &lt;lnci:reporter value="ALR"/&gt;
                        &lt;lnci:volume num="224"&gt; &lt;/lnci:volume&gt;
                        &lt;lnci:page num="280"/&gt;
                      &lt;/lnci:caseref&gt;
                      &lt;lnci:caseref&gt;
                        &lt;lnci:reporter value="ALJR"/&gt;
                        &lt;lnci:volume num="80"&gt; &lt;/lnci:volume&gt;
                        &lt;lnci:page num="589"/&gt;
                      &lt;/lnci:caseref&gt;
                      &lt;lnci:caseref&gt;
                        &lt;lnci:reporter value="Fam LR"/&gt;
                        &lt;lnci:volume num="35"&gt; &lt;/lnci:volume&gt;
                        &lt;lnci:page num="343"/&gt;
                      &lt;/lnci:caseref&gt;
                      &lt;lnci:caseref&gt;
                        &lt;lnci:reporter value="ATR"/&gt;
                        &lt;lnci:volume num="61"&gt; &lt;/lnci:volume&gt;
                        &lt;lnci:page num="642"/&gt;
                      &lt;/lnci:caseref&gt;
                      &lt;lnci:caseref&gt;
                        &lt;lnci:reporter value="HCA"/&gt;
                        &lt;lnci:edition&gt;
                          &lt;lnci:date year="2006"/&gt;
                        &lt;/lnci:edition&gt;
                        &lt;lnci:page num="6"/&gt;
                      &lt;/lnci:caseref&gt;
                      &lt;lnci:caseref&gt;
                        &lt;lnci:reporter value="urj"/&gt;
                        &lt;lnci:refnum num="BC200600981"/&gt;
                      &lt;/lnci:caseref&gt;
                    &lt;/lnci:case&gt;
                    &lt;lnci:content&gt;Trustees of the Property of Cummins (a bankrupt) v Cummins (2006)
                      227 CLR 278; (2006) 224 ALR 280; (2006) 80 ALJR 589; (2006) 35 Fam LR 343;
                      (2006) 61 ATR 642; [2006] HCA 6; BC200600981&lt;/lnci:content&gt;
                  &lt;/lnci:cite&gt;
                &lt;/text&gt;
              &lt;/p&gt;

                
            </codeblock>
        </example>    
        
        
        
        <!--  -->
        
        <section>
           <p>For <sourcexml>dict:subtopic[@id="BOOK:..."]</sourcexml> follow regular conversion to <targetxml>tei:entry[@type="BOOK:..."]</targetxml>,
               map the <sourcexml>h</sourcexml> element to <targetxml>caption/h/ref:lnlink service="URL"/ref:marker</targetxml>. Each 'Book' will have a 'h' tag 
               that is the caption of the block.</p>
            <p>For each "book" create a <targetxml>figure</targetxml> containing the following:
                <ul>
                    <li>Use the <sourcexml>text/url/remotelink</sourcexml> to create <targetxml>ref:lnlink</targetxml> as defined in General Markup section</li>
                    <li> Create a <targetxml>ref:inlineobject</targetxml> within the <targetxml>ref:lnlink/ref:marker</targetxml> to display the thumbnail image of the
                  book.</li>
                </ul>
               
           </p> 
            <p>Before the end tag for <targetxml>figure</targetxml> create a <targetxml>note/byline/person:contributor[@contributor-type="author"]</targetxml>
                <ul>
                    <li>The first <sourcexml>p/text</sourcexml> contains one or more author names. It maps to 
                        <targetxml>person:person/person:name.text</targetxml>
                    </li>
                    <li>Following the completion of <targetxml>person:contributor</targetxml> place the contents of the second <sourcexml>p/text</sourcexml> in 
                        a <targetxml>date</targetxml> element.</li>
                </ul>
                
            </p>
            
            
        </section>
        
        <example>
            <title>Source dict:subtopic id="BOOK:XYZ"</title>
           <codeblock>
               
        &lt;dict:subtopic id="BOOK:BANKRUPTCY"&gt; 
          &lt;dict:topicname&gt;
            &lt;emph typestyle="bf"&gt;Books&lt;/emph&gt;
          &lt;/dict:topicname&gt;
          &lt;h&gt;Torts: Cases and Commentary, 7th Edition&lt;/h&gt;
          &lt;p&gt;
            &lt;text&gt;Symes C; Duns J &lt;nl/&gt;&lt;/text&gt;
            &lt;text&gt;2012 &lt;nl/&gt;&lt;/text&gt;
            &lt;text&gt;
              &lt;url&gt;
                &lt;remotelink 
                href="store.lexisnexis.com.au/store/au/catalog/productDetail.jsp?pageName=relatedProducts&amp;amp;catId=cat20015&amp;amp;prodId=prod10200000" 
                hrefclass="http"
                &gt;store.lexisnexis.com.au/store/au/catalog/productDetail.jsp?pageName=relatedProducts&amp;amp;catId=cat20015&amp;amp;prodId=prod10200000&lt;/remotelink&gt;
              &lt;/url&gt;
              &lt;nl/&gt;
            &lt;/text&gt;
          &lt;/p&gt;
         ...
         &lt;/dict:subtopic&gt;
                       
           </codeblock> 
        </example>
        
        <example>
            <title>Target dict:subtopic id="BOOK:XYZ"</title>
            <codeblock>
               
  &lt;tei:entry type="BOOK:BANKRUPTCY"&gt;
          &lt;tei:usg type="books"&gt;
            &lt;emph typestyle="bf"&gt;Books&lt;/emph&gt;
          &lt;/tei:usg&gt;            
                &lt;tei:gramGrp&gt;
                 &lt;figure&gt;
                   &lt;ref:lnlink service="URL"&gt;
                      &lt;ref:marker&gt;
                      &lt;ref:inlineobject&gt;
                    &lt;ref:locator&gt;
                        &lt;ref:locator-key&gt;
                            &lt;ref:key-name name="object-key"/&gt;
                            &lt;ref:key-value value="5DT1-HR81-66TK-240F-00000-00-12633-4354-CM-TortsCasesAndCommentary-2"/&gt;
                        &lt;/ref:locator-key&gt;
                        &lt;ref:locator-params&gt;
                            &lt;proc:param name="componentseq" value="1"/&gt;
                            &lt;proc:param name="object-type" value="image"/&gt;
                            &lt;proc:param name="object-smi" value="12633"/&gt;
                        &lt;/ref:locator-params&gt;
                    &lt;/ref:locator&gt;
                &lt;/ref:inlineobject&gt; 
            &lt;/ref:marker&gt;
            &lt;ref:locator&gt;
                &lt;ref:locator-key&gt;
                    &lt;ref:key-name name="URL"/&gt;
                    &lt;ref:key-value value="http://store.lexisnexis.com.au/store/au/catalog/productDetail.jsp?pageName=relatedProducts&amp;amp;catId=cat20015&amp;amp;prodId=prod10200000"/&gt;
                &lt;/ref:locator-key&gt;
            &lt;/ref:locator&gt;
        &lt;/ref:lnlink&gt;
        &lt;caption&gt;
            &lt;h&gt;
                &lt;ref:lnlink service="URL"&gt;
                    &lt;ref:marker&gt;Torts: Cases and Commentary, 7th Edition&lt;/ref:marker&gt;
                    &lt;ref:locator&gt;
                        &lt;ref:locator-key&gt;
                            &lt;ref:key-name name="URL"/&gt;
                            &lt;ref:key-value value="http://store.lexisnexis.com.au/store/au/catalog/productDetail.jsp?pageName=relatedProducts&amp;amp;catId=cat20015&amp;amp;prodId=prod10200000"/&gt;
                        &lt;/ref:locator-key&gt;
                    &lt;/ref:locator&gt;
                &lt;/ref:lnlink&gt;
            &lt;/h&gt; 
        &lt;/caption&gt;
    &lt;note&gt;
      &lt;byline&gt;
        &lt;person:contributor contributor-type="author"&gt;
            &lt;person:person&gt;
                &lt;person:name.text&gt;Symes C; Duns J &lt;/person:name.text&gt;
            &lt;/person:person&gt;
        &lt;/person:contributor&gt;
        &lt;date&gt;2012&lt;/date&gt;
      &lt;/byline&gt;
    &lt;/note&gt;        
    &lt;/figure&gt;
&lt;/tei:gramGrp&gt;
            
               
           </codeblock> 
        </example>
        
        

        <section>
            <title>Changes</title>
            <p>2015-03-12: <ph id="change_20150312_mlv_3">Modified instructions for conversion of author names to be a part of the <targetxml>figure</targetxml> content.</ph></p>
            
            <p>2015-03-12: <ph id="change_20150312_mlv_1">Added instructions for conversion of <sourcexml>dict:subtopic/p/text/remotelink</sourcexml> to 
                <targetxml>tei:def/pgrp/p/text/ref:crossreference</targetxml> and mapping <sourcexml>remotelink/inlineobject</sourcexml> to <targetxml>ref:crossreference/ref:content/ref:inlineobject</targetxml></ph>.</p>
            <p>2015-02-24: <ph id="change_20150224_mlv_1">Added further instructions for mapping <sourcexml>dict:subtopic[@id="CASE:{value such as BANKRUPTCY}"]/p/text/remotelink/inlineobject</sourcexml>
                to <targetxml>tei:entry/tei:def/pgrp/p/text/ref:crossreference/ref:content/ref:inlineobject</targetxml></ph>.</p>
            <p>2015-02-24: <ph id="change_20150224_mlv_2">Adjusted documentation to show an example of a id value {value such as BANKRUPTCY}, but the example uses a real value.</ph></p>
            <p>2015-02-03: <ph id="change_20150203_mlv-3">Modified example for TARGET dict:subtopic[@id="CASE:XYZ"] and <targetxml>ref:content</targetxml> element because
            the citator alert information does not require text, just the icon image.</ph></p>
            <p>2015-02-03: <ph id="change_20150203_mlv-2">Modified instruction for target byline as a sibling of figure.</ph></p>
            <p>2015-01-12: <ph id="change_20150112_mlv-1">Added instructions for mapping books section icons and links into the correct ordering based on UX review.</ph></p>
            <p>2015-01-12: <ph id="change_20150112_mlv-2">Added instructions for adding citator signals to Key Cases.</ph></p>
            
            <p>2014-11-10: <ph id="change_20141110_mlv">Added instruction for mapping for Legal Topic Path source content <sourcexml>dict:body/dict:term-entry/dict:definition/dict:subtopic</sourcexml> to
                <targetxml>tei:entry/tei:usg[@type="context"]/classify:keywords[@classscheme="topicPath"]</targetxml>.</ph></p>
            <p>2013-04-03: <ph id="change_20130403_wl">Created.</ph></p>
            <p>2013-07-12 <ph id="change_20130712_WL">Added an instruction for the handling of
                    special characters in attribute value
                        of<sourcexml>dict:subtopic[@id="xxxx"]</sourcexml>.</ph></p>
        </section>
    </body>
	</dita:topic>

	
    <xsl:template match="source_dict:subtopic[not(preceding-sibling::*[1][self::source_dict:subtopic])]" priority="2">
        <tei:entry>
            <xsl:choose>
                <xsl:when test="@id = 'LEG:AGEDISCRMINATION'">
                    <xsl:apply-templates select="@*"/>
                    <tei:def>
                        <xsl:apply-templates select="node()"/>
                    </tei:def>
                </xsl:when>
                <xsl:when test="starts-with(@id,'BOOK:')">
                    <xsl:apply-templates select="@*"/>
                    <xsl:apply-templates select="source_dict:topicname"/>
                    <tei:def>
                        <pgrp>
                            <xsl:apply-templates select="node() except (p|source_dict:topicname)"/>
                        </pgrp>
                    </tei:def>
                </xsl:when>
                <xsl:when test="starts-with(@id,'INT:')">
                    <xsl:apply-templates select="@*"/>
                    <xsl:apply-templates select="source_dict:topicname"/>
                    <xsl:apply-templates select="node() except source_dict:topicname"/>
                </xsl:when>
                <xsl:when test="starts-with(@id,'INDEX:')">
                    <xsl:apply-templates select="@*"/>
                    <xsl:apply-templates select="source_dict:topicname"/>
                    <xsl:apply-templates select="node() except source_dict:topicname"/>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:choose>
                        <xsl:when test="source_dict:short-definition">
                            <xsl:apply-templates select="@*|node()"/>        
                        </xsl:when>
                        <xsl:otherwise>
                            <xsl:apply-templates select="@*"/>
                            <xsl:apply-templates select="source_dict:topicname"/>
                            <tei:def>
                                <pgrp>
                                    <xsl:apply-templates select="node() except source_dict:topicname"/>
                                </pgrp>
                            </tei:def>
                        </xsl:otherwise>
                    </xsl:choose>
                    
                </xsl:otherwise>
            </xsl:choose>
        </tei:entry>
        <xsl:apply-templates select="following-sibling::source_dict:subtopic" mode="followsibsubtopic"/>
	</xsl:template>
    
    <xsl:template match="source_dict:subtopic" mode="followsibsubtopic">
        <tei:entry>
            <xsl:choose>
                <xsl:when test="@id = 'LEG:AGEDISCRMINATION'">
                    <xsl:apply-templates select="@*"/>
                    <tei:def>
                        <xsl:apply-templates select="node()"/>
                    </tei:def>
                </xsl:when>
                <xsl:when test="starts-with(@id,'BOOK:')">
                    <xsl:apply-templates select="@*"/>
                    <xsl:apply-templates select="source_dict:topicname"/>
                    <xsl:apply-templates select="node() except (p|source_dict:topicname)"/>
                </xsl:when>
                <xsl:when test="starts-with(@id,'INT:')">
                    <xsl:apply-templates select="@*"/>
                    <xsl:apply-templates select="source_dict:topicname"/>
                    <xsl:apply-templates select="node() except source_dict:topicname"/>
                </xsl:when>
                <xsl:when test="starts-with(@id,'INDEX:')">
                    <xsl:apply-templates select="@*"/>
                    <xsl:apply-templates select="source_dict:topicname"/>
                    <xsl:apply-templates select="node() except source_dict:topicname"/>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:choose>
                        <xsl:when test="source_dict:short-definition">
                            <xsl:apply-templates select="@*|node()"/>        
                        </xsl:when>
                        <xsl:otherwise>
                            <xsl:apply-templates select="@*"/>
                            <xsl:apply-templates select="source_dict:topicname"/>
                            <tei:def>
                                <pgrp>
                                    <xsl:apply-templates select="node() except source_dict:topicname"/>
                                </pgrp>
                            </tei:def>
                        </xsl:otherwise>
                    </xsl:choose>
                </xsl:otherwise>
            </xsl:choose>
        </tei:entry>
    </xsl:template>
    
    <xsl:template match="source_dict:subtopic" priority="1"/>
    
    <xsl:template match="source_dict:subtopic/@id">
        <xsl:attribute name="type" select="."/>
    </xsl:template>
    
    <xsl:template match="h[parent::source_dict:subtopic]">
        <!--<tei:usg>
            <xsl:for-each select="following-sibling::p">-->
                <tei:gramGrp>
                    <figure>
                   <!-- <xsl:apply-templates select="following-sibling::p[1]/text/url/remotelink"/>
                    <caption>
                        <h>
                            <ref:lnlink service="URL">
                                <ref:marker><xsl:value-of select="."/></ref:marker>
                                <ref:locator>
                                    <ref:locator-key>
                                        <ref:key-name name="URL"/>
                                        <ref:key-value value="{following-sibling::p[1]/text/url/remotelink}"/>
                                    </ref:locator-key>
                                </ref:locator>
                            </ref:lnlink>
                        </h>
                    </caption>-->
                    <note>
                        <byline>
                            <person:contributor contributor-type='author'>
                                <person:person>
                                    <person:name.text>
                                        <xsl:apply-templates select="following-sibling::p[1]/text[1]/node()"/>
                                    </person:name.text>
                                </person:person>
                            </person:contributor>
                            <date>
                                <xsl:apply-templates select="following-sibling::p[1]/text[2]/node()"/>
                            </date>
                        </byline>
                    </note>
                    </figure>
                </tei:gramGrp>
            <!--</xsl:for-each>
        </tei:usg>-->
    </xsl:template>
</xsl:stylesheet>