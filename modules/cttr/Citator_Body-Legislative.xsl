<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
  xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"
  xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
  xmlns:source_cttr="http://www.lexis-nexis.com/glp/cttr" 
  xmlns:leg="http://www.lexis-nexis.com/glp/leg" 
  xmlns:ext="http://exslt.org/common"
  xmlns:comm="http://www.lexis-nexis.com/glp/comm"
  xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo"
  xmlns:classify="http://www.lexisnexis.com/xmlschemas/content/shared/classification/1/" 
  xmlns:cttr="urn:x-lexisnexis:content:citator:sharedservices:1" 
  xmlns:dc="http://purl.org/dc/elements/1.1/" 
  xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" 
  xmlns:legisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/legislation-info/1/" 
  xmlns:lnci="http://www.lexisnexis.com/xmlschemas/content/shared/citations/1/" 
  xmlns:location="http://www.lexisnexis.com/xmlschemas/content/shared/location/1/" 
  xmlns:primlawinfo="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-info/1/" 
  xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" 
  version="2.0" exclude-result-prefixes="#all">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Citator_Body">
  <title>Body for Legislative Citator Docs <lnpid>id-AU20-22212</lnpid></title>
  <body>

    <p><sourcexml>cttr:body</sourcexml> becomes <targetxml>cttr:body</targetxml></p>
    
    <section>
      <title>cttr:body/leg:info</title>
      
      <p>If <sourcexml>cttr:body</sourcexml> contains <sourcexml>leg:info</sourcexml> then output <targetxml>cttr:head/cttr:citedstatlaw</targetxml>.</p>

      <p>
        <ul>
          <li>If <sourcexml>leg:info</sourcexml> contains <sourcexml>leg:info/note[@id="SAI4"]</sourcexml>
            place <sourcexml>leg:info/note[@id="SAI4"]/p/remotelink</sourcexml> as child of 
            <targetxml>cttr:head/cttr:citedstatlaw/lnci:cite/lnci:content/ref:crossreference</targetxml></li> 
          <li><sourcexml>p/remotelink</sourcexml> becomes <targetxml>ref:crossreference/ref:content</targetxml></li>
          <li><note>All of the mappings in the following list are mapped to be within a single target 
            <targetxml>cttr:legisinfo/primlawinfo:primlawinfo/legisinfo:legisinfo</targetxml> element.</note>
            <ul>
              <li>If <sourcexml>leg:officialname</sourcexml> occurs insert 
                <targetxml>cttr:legisinfo/primlawinfo:primlawinfo/legisinfo:legisinfo</targetxml></li>
              <li>Move content of <sourcexml>leg:officialname</sourcexml> to 
                <targetxml>legisinfo:legisinfo/legisinfo:names/legisinfo:officialtitle</targetxml>.</li>
              <li>Move content of <sourcexml>leg:shorttitle</sourcexml> to 
                <targetxml>legisinfo:legisinfo/legisinfo:names/legisinfo:shorttitle</targetxml>.</li>
              <li>Move content of <sourcexml>leg:status</sourcexml> to 
                <targetxml>legisinfo:legisinfo/legisinfo:statusgroup[@statusgroupcode="legislationinfo"]/legisinfo:status</targetxml>, and 
                create attribute <targetxml>legisinfo:status/@statuscode</targetxml> containing 
                the text content of <sourcexml>leg:status</sourcexml> with all whitespace removed and 
                all characters converted to lower-case. Any occurrence of <sourcexml>leg:status/inlineobject</sourcexml>
                is suppressed.</li>
              <li>If <sourcexml>note[@notetype="other"]</sourcexml> exists, add  
                <targetxml>cttr:legiscomponent[@componenttype="provision"]</targetxml> to 
                <targetxml>legisinfo:legisinfo</targetxml> and populate as follows:<ul>
                  <li><sourcexml>note[@notetype="other"]/heading/desig/designum</sourcexml> becomes
                    <targetxml>desig/@value</targetxml>.</li>
                  <li><sourcexml>note[@notetype="other"]/heading/desig/desiglabel</sourcexml> becomes
                    <targetxml>desig/text()</targetxml>.</li>
                  <li><sourcexml>note[@notetype="other"]/heading/title</sourcexml> becomes
                    <targetxml>title</targetxml>.</li> 
                </ul>
              </li>
              <li>If <sourcexml>leg:juris</sourcexml> occurs map to  
                <targetxml>cttr:legisinfo/jurisinfo:legisbodyinfo/jurisinfo:jurisdiction/jurisinfo:system</targetxml></li>
              <li>If <sourcexml>/CITATORDOC/docinfo/docinfo:custom-metafields/docinfo:custom-metafield/@name</sourcexml> 
                exists with any of the values starting with the text "lbu-" (case-insensitive), then:
                <ul>
                  <li>Create <targetxml>cttr:citedstatlaw/cttr:legisinfo/primlawinfo:primlawinfo/classify:classification</targetxml>.</li>
                  <li>The following mappings all map to the same <targetxml>classify:classification</targetxml> element.</li>
                  <li><sourcexml>/CITATORDOC/docinfo/docinfo:custom-metafields/docinfo:custom-metafield[@name="lbu-subject-type"]/text()</sourcexml> maps to 
                    <targetxml>classify:classification//classify:classitem[@classscheme="lbu-subject-type"]/classify:classitem-identifier/classify:classname/text()</targetxml>.</li>
                  <li><sourcexml>/CITATORDOC/docinfo/docinfo:custom-metafields/docinfo:custom-metafield[@name="lbu-report-type"]/text()</sourcexml> maps to 
                    <targetxml>classify:classification//classify:classitem[@classscheme="lbu-report-type"]/classify:classitem-identifier/classify:classname/text()</targetxml>.</li>
                  <li><sourcexml>/CITATORDOC/docinfo/docinfo:custom-metafields/docinfo:custom-metafield[@name="lbu-report-subtype"]/text()</sourcexml> maps to 
                    <targetxml>classify:classification//classify:classitem[@classscheme="lbu-report-subtype"]/classify:classitem-identifier/classify:classname/text()</targetxml>.</li>
                  <li><sourcexml>/CITATORDOC/docinfo/docinfo:custom-metafields/docinfo:custom-metafield[@name="lbu-leg-type"]/text()</sourcexml> maps to 
                    <targetxml>classify:classification//classify:classitem[@classscheme="lbu-leg-type"]/classify:classitem-identifier/classify:classname/text()</targetxml>.</li>
                  <li>For any other <sourcexml>/CITATORDOC/docinfo/docinfo:custom-metafields/docinfo:custom-metafield</sourcexml> with attribute @name starting with "lbu-" 
                    (case insensitive): 
                    <ul>
                      <li><sourcexml>/CITATORDOC/docinfo/docinfo:custom-metafields/docinfo:custom-metafield/text()</sourcexml> maps to 
                        <targetxml>classify:classification//classify:classitem/classify:classitem-identifier/classify:classname/text()</targetxml>, 
                        with <targetxml>classify:classitem/@classscheme</targetxml> set to the value of the source attribute 
                        <sourcexml>/CITATORDOC/docinfo/docinfo:custom-metafields/docinfo:custom-metafield/@name</sourcexml>.</li>
                    </ul>
                  </li>
                </ul>
              </li>
              <li>If <sourcexml>/CITATORDOC/docinfo/docinfo:custom-metafields/docinfo:custom-metafield[@name="lbu-leg-type"]/text()</sourcexml> exists, in 
                addition to the mappings to <targetxml>classify:classification</targetxml> above, also map it to 
                <targetxml>legisinfo:legisinfo/legisinfo:billinfo/legisinfo:legistype</targetxml>.</li>
              <li>Map <sourcexml>leg:officialnum</sourcexml> content to <targetxml>primlawinfo:primlawinfo/primlawinfo:identifier</targetxml>.
                <ul>
                  <li>Add value <sourcexml>officialnum</sourcexml> to attribute <targetxml>idtype</targetxml></li>
                </ul></li>
              <li>Map <sourcexml>leg:year</sourcexml> content to <targetxml>primlawinfo:primlawinfo/primlawinfo:dates/primlawinfo:enactdate/[@year] </targetxml>.</li>
            </ul>
          </li>
        </ul>
      </p> 
      
      <p>
        <ul>
          <li>Process <sourcexml>note[@notetype="summary"][@id="SCAP5" or @id="SCAP6" or @id="SCAI5" or @id="SCAI6"]</sourcexml> 
        using mapping instructions in that section below.</li>
        </ul>
      </p>

      <p>
        <ul>
          <li>Process <sourcexml>note[@notetype="xref"][@id="SCAP4" or @id="SCAI4"]</sourcexml> using mapping instructions in that
        section below.</li>
        </ul>
      </p>

      <p>If <sourcexml>leg:juris</sourcexml> occurs, in addition to the mappings above, its content is used to create the 
        following markup. <sourcexml>leg:juris</sourcexml> can contain either a State/Territory code or Country
        code. Both scenarios are addressed as follows:
        <ol>
          <li>When <sourcexml>leg:juris</sourcexml> contains a State/Territory code:
            <note>The <targetxml>location:state</targetxml> will capture the
              state and territory values which are NSW, VIC, TAS, SA, QLD, WA,
              ACT and NT.</note>
            Create <targetxml>dc:metadata/dc:coverage/location:state[@codescheme="ISO-3166-2"]</targetxml>, with the 
            text content of <sourcexml>leg:juris</sourcexml> mapped to the text content of 
            <targetxml>location:state</targetxml>, 
            and add attribute location:state/@statecode, with the value specified in the list below: <ol>
              <li> AU-NS : New South Wales (NSW) </li>
              <li> AU-QL : Queensland (QLD) </li>
              <li> AU-SA : South Australia (SA) </li>
              <li> AU-TS : Tasmania (TAS) </li>
              <li> AU-VI : Victoria (VIC) </li>
              <li> AU-WA : Western Australia (WA) </li>
              <li> AU-CT : Australian Capital Territory (ACT) </li>
              <li> AU-NT : Northern Territory (NT) </li>
            </ol>
            <pre>&lt;leg:juris&gt;NSW&lt;/leg:juris&gt;<b>Becomes</b>
    &lt;dc:metadata&gt;
      ...
      &lt;dc:coverage&gt;
          &lt;location:state codescheme="ISO-3166-2" statecode="AU-NS"&gt;NSW&lt;/location:state&gt;
      &lt;/dc:coverage&gt;
    &lt;/dc:metadata&gt;
    </pre>
            <pre>&lt;leg:juris&gt;ACT&lt;/leg:juris&gt;<b>Becomes</b>
    &lt;dc:metadata&gt;
      ...
      &lt;dc:coverage&gt;
          &lt;location:state codescheme="ISO-3166-2" statecode="AU-CT"&gt;ACT&lt;/location:state&gt;
      &lt;/dc:coverage&gt;
    &lt;/dc:metadata&gt;
    </pre>
          </li>
          <li>When <sourcexml>leg:juris</sourcexml> contains a Country code: 
            <note>If the text content of <sourcexml>leg:juris</sourcexml> is "CTH" then create
            <targetxml>dc:metadata/dc:coverage/location:country[@codescheme="ISO-3166-1"][@countrycode="AU"]</targetxml>.</note>
            <pre>&lt;leg:juris&gt;CTH&lt;/leg:juris&gt;<b>Becomes</b>
    &lt;dc:metadata&gt;
      ...
      &lt;dc:coverage&gt;
          &lt;location:country codescheme="ISO-3166-1" countrycode="AU"/&gt;
      &lt;/dc:coverage&gt;
    &lt;/dc:metadata&gt;
    </pre>
          </li>
          <li>
            <note>If <sourcexml>leg:juris/@ln.user-displayed="false"</sourcexml> exists, refer to the
              general markup <xref href="../../common_newest/Rosetta_leg.juris_ln.user-displayed.dita">leg:juris/@ln.user-displayed="false"</xref> 
              section of this CI.</note>
          </li>
        </ol>
      </p>
      
    </section>
   
    <example>
      <title>Example 1: Source citator link to pdf document</title>
      
      <codeblock>
        
     &lt;cttr:body&gt;
      &lt;leg:info&gt;
      	 &lt;leg:officialname&gt;OVERSEAS MISSIONS (PRIVILEGES AND IMMUNITIES) ACT 1995&lt;/leg:officialname&gt;

         &lt;leg:officialnum&gt;57&lt;/leg:officialnum&gt;
         &lt;leg:year&gt;1995&lt;/leg:year&gt;
         &lt;leg:status&gt;In Force&lt;/leg:status&gt; 
         
         &lt;note notetype="xref" id="SAI4"&gt;
            &lt;p&gt;
             &lt;remotelink href="http://www.legislation.act.gov.au/b/db_988/20011212-1097/pdf/db_988.pdf"&gt;view text&lt;/remotelink&gt; 
            &lt;/p&gt;
         &lt;/note&gt;
        
      </codeblock>

      <title>Example 1: Target citator link to pdf document</title>
      
      <codeblock>
        
        &lt;cttr:citator&gt;
           &lt;cttr:head&gt;
               &lt;cttr:citedstatlaw&gt;
                 &lt;lnci:cite&gt;
                   &lt;lnci:content&gt;
                      &lt;ref:crossreference&gt;
                          &lt;ref:content&gt;view text&lt;/ref:content&gt;
                          &lt;ref:locator&gt; 
                             &lt;ref:locator-key&gt; 
                                 &lt;ref:key-name name="URL"/&gt; 
                                 &lt;ref:key-value value="http://www.legislation.act.gov.au/b/db_988/20011212-1097/pdf/db_988.pdf"/&gt; 
                             &lt;/ref:locator-key&gt;
                          &lt;/ref:locator&gt;  
                      &lt;/ref:crossreference&gt;
                   &lt;/lnci:content&gt;                      
                 &lt;/lnci:cite&gt;
               &lt;/cttr:citedstatlaw&gt;
           &lt;/cttr:head&gt;
          ...
        
      </codeblock>
      
    </example>
    
    <example>
      <title>Example 2: Source citator heading information for Instrument/Act</title>
      
      <codeblock>
        
&lt;cttr:body&gt;
    &lt;leg:info&gt;
    	...
    	&lt;leg:officialname&gt;(CTH) EVIDENCE ACT 1995&lt;/leg:officialname&gt;
    	&lt;leg:officialnum&gt;2&lt;/leg:officialnum&gt;
    	&lt;leg:year&gt;1995&lt;/leg:year&gt;
    	&lt;leg:shorttitle&gt;Act No 2 of 1995&lt;/leg:shorttitle&gt;
      &lt;leg:status&gt;
      	&lt;inlineobject smi="XXX" componentseq="1" key="green-icon" type="image"/&gt; In Force
      &lt;/leg:status&gt;
    	...
    &lt;/leg:info&gt;
    ...
&lt;cttr:body&gt;
        
      </codeblock>

      <title>Example 2: Target citator heading information for Instrument/Act</title>
 
  <codeblock>
        
  &lt;cttr:head&gt;
        &lt;cttr:citedstatlaw iscodified="false"&gt;
          &lt;cttr:legisinfo&gt;
            &lt;primlawinfo:primlawinfo&gt;
              &lt;legisinfo:legisinfo&gt;
                &lt;legisinfo:names&gt;
                  &lt;legisinfo:officialtitle&gt;(CTH) EVIDENCE ACT 1995&lt;/legisinfo:officialtitle&gt;
                  &lt;legisinfo:shorttitle&gt;Act No 2 of 1995&lt;/legisinfo:shorttitle&gt;
                &lt;/legisinfo:names&gt;
              &lt;/legisinfo:legisinfo&gt;
              &lt;primlawinfo:identifier idtype="officialnum"&gt;2&lt;/primlawinfo:identifier&gt;
              &lt;primlawinfo:dates&gt;
                &lt;primlawinfo:enactdate year="1995"/&gt;
              &lt;/primlawinfo:dates&gt;
              &lt;legisinfo:legisinfo&gt;
                &lt;legisinfo:statusgroup statusgroupcode="legislationinfo"&gt;
                  &lt;legisinfo:status statuscode="inforce"&gt;
                    &lt;legisinfo:statustext&gt;In Force&lt;/legisinfo:statustext&gt;
                  &lt;/legisinfo:status&gt;
                &lt;/legisinfo:statusgroup&gt;
              &lt;/legisinfo:legisinfo&gt;
            &lt;/primlawinfo:primlawinfo&gt;
          &lt;/cttr:legisinfo&gt;
          ...
        &lt;/cttr:citedstatlaw&gt;          
&lt;/cttr:head&gt;     
        
      </codeblock>      
      </example>

    <example>
      <title>Example 3: Source citator heading information for Provision</title>
      
      <codeblock>
        
&lt;cttr:body&gt;
    &lt;leg:info&gt;
    	&lt;leg:officialname&gt;(CTH) EVIDENCE ACT 1995&lt;/leg:officialname&gt;
    	&lt;note notetype="other"&gt;
    		&lt;heading&gt;
    			&lt;desig&gt;
    				&lt;desiglabel&gt;s 59&lt;/desiglabel&gt;
    				&lt;designum&gt;59&lt;/designum&gt;
    			&lt;/desig&gt;
    			&lt;title&gt;
    				&lt;!--prefix provision title for sections or clauses--&gt;The hearsay
    						rule—exclusion of hearsay evidence&lt;/title&gt;
    		&lt;/heading&gt;
    	&lt;/note&gt;
    &lt;/leg:info&gt;
    ...
&lt;cttr:body&gt;

      </codeblock>

      <title>Example 3: Target citator heading information for Provision</title>
      
      <codeblock>
        
  &lt;cttr:head&gt;
    &lt;cttr:citedstatlaw iscodified="false"&gt;
        &lt;cttr:legisinfo&gt;
          &lt;primlawinfo:primlawinfo&gt;
            &lt;legisinfo:legisinfo&gt;
            	&lt;legisinfo:names&gt;
            		&lt;legisinfo:officialtitle&gt;(CTH) EVIDENCE ACT 1995&lt;/legisinfo:officialtitle&gt;
            	&lt;/legisinfo:names&gt;
            	&lt;cttr:legiscomponent componenttype="provision"&gt;
            		&lt;desig value="59"&gt;s 59&lt;/desig&gt;
            		&lt;title&gt;The hearsay rule — exclusion of hearsay evidence&lt;/title&gt;
            	&lt;/cttr:legiscomponent&gt;
            &lt;/legisinfo:legisinfo&gt;
          &lt;/primlawinfo:primlawinfo&gt;
        &lt;/cttr:legisinfo&gt;
      ...
    &lt;/cttr:citedstatlaw&gt;          
&lt;/cttr:head&gt;     
        
      </codeblock>      
    </example>
    
    <section>
      <title>Changes</title>
      <p>2016-04-21: <ph id="change_20160421a_snb">Added a clarification that all of the mappings for legislation info are mapped 
        to the same <targetxml>cttr:legisinfo/primlawinfo:primlawinfo/legisinfo:legisinfo</targetxml> element. 
        Changed mapping of <sourcexml>/CITATORDOC/docinfo/docinfo:custom-metafields/docinfo:custom-metafield</sourcexml> 
        to map any source metafields that start with "lbu-". Previously was mapping only three specific items. This change supports new metafields that
        LBU is adding to the source documents, as well as metafields that LBU will add in the future. Also mapped the source document legislation type 
        custom-metafields to <targetxml>legisinfo:legisinfo/legisinfo:billinfo/legisinfo:legistype</targetxml>. Adding instruction for 
        <sourcexml>leg:juris</sourcexml> element being added by LBU to map it to <targetxml>cttr:legisinfo</targetxml>, as well as a whole section 
        for mapping it to <targetxml>dc:metadata/dc:coverage</targetxml> (logic extracted from the AU04 legis CI).</ph></p>
      <p>2016-01-13: <ph id="change_20160113a_snb">Removed suppression of 
        <sourcexml>note[@notetype="summary"][@id="SCAP5" or @id="SCAP6" or @id="SCAI5" or @id="SCAI6"]</sourcexml>, 
        and recreated this mapping in it's own section below. Corrected formatting to add bullets to the last few mapping 
        items.</ph></p>
      <p>2015-12-11: <ph id="change_20151211a_snb"> Moved <sourcexml>note[@notetype="summary"][@id="SCAP5" or @id="SCAP6"]</sourcexml>  
        from analytical tab section to this cttr:body/leg:info section, and changed to suppress the elements.  
        Moved "note@notetype="summary" id="SAI5" and id="SAI6" to cttr:refsummary" 
        section from below to this cttr:body/leg:info section, changed "SAI5" and "SAI6" to be "SCAI5" and "SCAI6", 
        respectively to match source documents, and changed to suppress any of these elements. The output previusly created in 
        tartget is now to be created by the presentation stylesheets. Added instruction to process 
        <sourcexml>note[@notetype="xref"][@id="SCAP4" or @id="SCAI4"]</sourcexml> using later instruction section since it occurs 
        within <sourcexml>leg:info</sourcexml>. Added mapping of new LBU metadata from 
        <sourcexml>/CITATORDOC/docinfo/docinfo:custom-metafields/docinfo:custom-metafield</sourcexml> to 
        <targetxml>cttr:citedstatlaw/cttr:legisinfo/primlawinfo:primlawinfo/classify:classification</targetxml>. 
        Added <targetxml>@statusgroupcode="legislationinfo"</targetxml> to <targetxml>legisinfo:legisinfo/legisinfo:statusgroup</targetxml> 
          and updated target markup example.</ph></p>
      <p>2015-12-04: <ph id="change_20151204a_snb">removed erroneous text in <sourcexml>leg:officialname</sourcexml> " following 
        <targetxml>lnci:cite</targetxml>:". Corrected target XPATH of <sourcexml>leg:officialname</sourcexml> from 
        <targetxml>primlawinfo:primlawinfo/legisinfo:legisinfo</targetxml> to be <targetxml>cttr:legisinfo/primlawinfo:primlawinfo/legisinfo:legisinfo</targetxml> 
        in text instruction and in example. Modified mapping of <sourcexml>note[@notetype="other"]</sourcexml> 
        to create newly required separation of desig value and title. Added Example of provision markup to show
        provision conversion. Added additional logic to clarify mapping of <sourcexml>leg:status</sourcexml></ph></p>
      <p>2015-11-16: <ph id="change_20151116_snb">Changed instruction and examples for <sourcexml>cttr:body</sourcexml> 
        containing <sourcexml>leg:info</sourcexml> to create <targetxml>cttr:citedstatlaw</targetxml> instead 
        of <targetxml>cttr:citedseclaw</targetxml>.</ph></p>
      <p>2015-05-27: MLV - <ph id="change_20150527-1_mlv">Added mapping for <sourcexml>leg:shorttitle</sourcexml> to <targetxml>legisinfo:names/legisinfo:shorttitle</targetxml>
      per RFA #41.</ph></p>
      <p>2014-02-06: MLV - <ph id="change_20140206-1_mlv">Corrected change below to meet schema, note containing the provision number maps to <targetxml>cttr:legiscomponent/desig</targetxml> 
        and status maps to <targetxml>legisinfo:statusgroup/legisinfo:status</targetxml></ph></p>
      <p>2014-01-11: added mapping of <targetxml>/leg:info/note[@notetype="other"]</targetxml> to 
        <targetxml>legisinfo:legisinfo/legisinfo:provisionnum</targetxml>.
        </p>
    </section>      

    <section>
      <title>note[@notetype="summary"][@id="SCAP5" or @id="SCAP6" or @id="SCAI5" or @id="SCAI6"] to cttr:refsummary</title>

      <p>If <sourcexml>note[@notetype="summary"][@id="SCAP5" or @id="SCAP6" or @id="SCAI5" or @id="SCAI6"]</sourcexml> 
        exists, and additionally <sourcexml>/CITATORDOC/docinfo/docinfo:doc-id</sourcexml> contains the text “CASES” (case-insensitive), 
        create element <targetxml>/cttr:citator/cttr:body/cttr:refs/cttr:refssummary[@xml:id="refssummary-document-totals"][@summarytype="document-totals-summary"]</targetxml>. 
        If the text "Cases" is not present in <sourcexml>/CITATORDOC/docinfo/docinfo:doc-id</sourcexml>, then this source content will 
        be suppressed. This new <targetxml>cttr:refssummary[@xml:id="refssummary-document-totals"][@summarytype="document-totals-summary"]</targetxml> 
        element should be placed in a new <targetxml>cttr:refs</targetxml> element, and not inserted as a sibling into one of the 
        <targetxml>cttr:refs</targetxml> elements created for analytical (<targetxml>cttr:refs[@reftype="analytical"]</targetxml>), etc, content.</p>
            
      <p>For each <sourcexml>note/l</sourcexml> element:
        <ul>
          <li>Create child element <targetxml>cttr:refsummaryitem</targetxml>, with attribute <targetxml>@documenttype</targetxml>
            containing the text specified below based upon the source markup text content of <sourcexml>p/text</sourcexml> within the 
            second <sourcexml>li</sourcexml> child (i.e. <sourcexml>note/l/li[2]/p/text/text()</sourcexml>):
            <ul>
              <li>If the source markup text content contains "Case" (case-insensitive comparison), then <targetxml>@documenttype</targetxml> = "Cases"</li>
              <li>If the source markup text content contains "Analytical Material" (case-insensitive comparison), then 
                <targetxml>@documenttype</targetxml> = "Analytical_Materials"</li>
              <li>Otherwise <targetxml>@documenttype</targetxml> is populated with the source markup text, with spaces replaced with  
                 underscore characters.</li>
            </ul>
          </li>
          <li>Map the text content of <sourcexml>p/text</sourcexml> within the first <sourcexml>li</sourcexml> child 
            (i.e. <sourcexml>note/l/li[1]/p/text/text()</sourcexml>) to be 
            the text content of the target <targetxml>cttr:refsummaryitem</targetxml> element.</li>
        </ul>
      </p>
    </section>
    
    <example>
      <title>Example 1: Source Case Summary (SCAP5/SCAP6)</title>
      <codeblock>
     
&lt;cttr:body&gt;
	&lt;leg:info&gt;
	   ...
		&lt;!--SCAP5 Number of Cases--&gt;
		&lt;note notetype="summary" id="SCAP5"&gt;
			&lt;l&gt;
				&lt;li&gt;
					&lt;p&gt;
						&lt;text&gt;46&lt;/text&gt;
					&lt;/p&gt;
				&lt;/li&gt;
				&lt;li&gt;
					&lt;p&gt;
						&lt;text&gt;Cases&lt;/text&gt;
					&lt;/p&gt;
				&lt;/li&gt;
			&lt;/l&gt;
		&lt;/note&gt;
		&lt;!--SCAP6 Number of Analytical Materials--&gt;
		&lt;note notetype="summary" id="SCAP6"&gt;
			&lt;l&gt;
				&lt;li&gt;
					&lt;p&gt;
						&lt;text&gt;11&lt;/text&gt;
					&lt;/p&gt;
				&lt;/li&gt;
				&lt;li&gt;
					&lt;p&gt;
						&lt;text&gt;Analytical Materials&lt;/text&gt;
					&lt;/p&gt;
				&lt;/li&gt;
			&lt;/l&gt;
		&lt;/note&gt;
	&lt;/leg:info&gt;
&lt;/cttr:body&gt;

      </codeblock>
    </example>
    
    <example>
      <title>Example 1: Target cttr:refssummary</title>
      
      <codeblock>
        
&lt;cttr:body&gt;
	&lt;cttr:refs&gt;
		&lt;cttr:refssummary xml:id="refssummary-document-totals" summarytype="document-totals-summary"&gt;
			&lt;cttr:refssummaryitem documenttype="Cases"&gt;46&lt;/cttr:refssummaryitem&gt;
			&lt;cttr:refssummaryitem documenttype="Analytical_Materials"&gt;11&lt;/cttr:refssummaryitem&gt;
		&lt;/cttr:refssummary&gt;
		...
	&lt;/cttr:refs&gt;
	...
&lt;/cttr:body&gt;
        
      </codeblock>
    </example>

    <example>
      <title>Example 2: Source Case Summary (SCAI5/SCAI6)</title>
      <codeblock>
     
&lt;cttr:body&gt;
	&lt;leg:info&gt;
	   ...
		&lt;!-- SCAI5 Number of Cases --&gt;
		&lt;note notetype="summary" id="SCAI5"&gt;
			&lt;l&gt;
				&lt;li&gt;
					&lt;p&gt;
						&lt;text&gt;68&lt;/text&gt;
					&lt;/p&gt;
				&lt;/li&gt;
				&lt;li&gt;
					&lt;p&gt;
						&lt;text&gt;Cases&lt;/text&gt;
					&lt;/p&gt;
				&lt;/li&gt;
			&lt;/l&gt;
		&lt;/note&gt;
		&lt;!-- SCAI6 Number of Analytical Materials --&gt;
		&lt;note notetype="summary" id="SCAI6"&gt;
			&lt;l&gt;
				&lt;li&gt;
					&lt;p&gt;
						&lt;text&gt;642&lt;/text&gt;
					&lt;/p&gt;
				&lt;/li&gt;
				&lt;li&gt;
					&lt;p&gt;
						&lt;text&gt;Analytical Materials&lt;/text&gt;
					&lt;/p&gt;
				&lt;/li&gt;
			&lt;/l&gt;
		&lt;/note&gt;
	&lt;/leg:info&gt;
&lt;/cttr:body&gt;

      </codeblock>
    </example>
    
    <example>
      <title>Example 2: Target cttr:refssummary</title>
      
      <codeblock>
        
&lt;cttr:body&gt;
	&lt;cttr:refs&gt;
		&lt;cttr:refssummary xml:id="document-totals-summary" summarytype="document-totals-summary"&gt;
			&lt;cttr:refssummaryitem documenttype="Cases"&gt;68&lt;/cttr:refssummaryitem&gt;
			&lt;cttr:refssummaryitem documenttype="Analytical_Materials"&gt;642&lt;/cttr:refssummaryitem&gt;
		&lt;/cttr:refssummary&gt;
		...
	&lt;/cttr:refs&gt;
	...
&lt;/cttr:body&gt;

      </codeblock>
    </example>
    
    <section>
      <title>Changes</title>
      <p>2016-08-01: <ph id="change_20160801_sep">Modified such that 
        <sourcexml>note[@notetype="summary"][@id="SCAP5" or @id="SCAP6" or @id="SCAI5" or @id="SCAI6"]</sourcexml> only results in output for 
        Cases source documents (<sourcexml>/CITATORDOC/docinfo/docinfo:doc-id</sourcexml> contains the text “CASES” (case-insensitive)).</ph></p>      
      <p>2016-04-15: <ph id="change_20160415a_snb">Modified such that 
        <sourcexml>note[@notetype="summary"][@id="SCAP5" or @id="SCAP6" or @id="SCAI5" or @id="SCAI6"]</sourcexml> only results in output for 
        overview source documents (<sourcexml>/CITATORDOC/docinfo/docinfo:doc-id</sourcexml> contains the text “OVERVIEW” (case-insensitive)).</ph></p>
      <p>2016-02-22: <ph id="change_20160222a_snb">Added clarification that the target 
        <targetxml>/cttr:citator/cttr:body/cttr:refs/cttr:refssummary[@xml:id="refssummary-document-totals"][@summarytype="document-totals-summary"]</targetxml> 
        should be in its own <targetxml>cttr:refs</targetxml> element. Also modified logic for determining the text value of 
         <targetxml>cttr:refsummaryitem/@documenttype</targetxml> to ensure that value was always either "Cases" or "Analytical_Materials" if 
         the source markup was any variation of the expected values to support fixed values for presentation stylesheet parsing. Testing 
         revealed that the source markup values were varying some, which was a problem for presenation parsing.</ph></p>
      <p>2016-01-13: <ph id="change_20160113b_snb">Removed suppression of 
        <sourcexml>note[@notetype="summary"][@id="SCAP5" or @id="SCAP6" or @id="SCAI5" or @id="SCAI6"]</sourcexml>, 
        and recreated this mapping in its own section.</ph></p>
    </section>



    <section>
      <title>note[@notetype="xref"][@id="SCAP4" or @id="SCAI4"]</title>
      
      <p>This note is used to convey the link to the primary source document, mapping is as follows:</p>
      
      <p>
        <sourcexml>note[@notetype="xref"][@id="SCAP4" or @id="SCAI4"]</sourcexml> maps to 
        <targetxml>/cttr:citator/doc:metadata/doc:docinfo/doc:related-content/doc:related-content-item[@relationship="primary-source"[@content-type="legislation"]</targetxml>.</p>
      
      <p>
        <sl>
          <sli><sourcexml>note/p/text/lnlink</sourcexml> maps to <targetxml>doc:related-content-item/doc:related-content-link/ref:lnlink</targetxml>, 
            using the instructions in the General Markup section for 
            <xref href="../../../Rosetta/common_newest/Rosetta_lnlink_service_DOCID-LxAdv-ref.lnlink.dita"><sourcexml>lnlink[@service="DOC-ID" or @service="DOCID"]</sourcexml> 
              to <targetxml>ref:lnlink[@service="DOCUMENT"]</targetxml></xref>.</sli>
          
        </sl>
        
      </p>
      
    </section>
    
    
    <example>
      <title>Source note@notetype="xref" @id="SCAP4"</title>
      
      <codeblock>
        
&lt;note notetype="xref" id="SCAP4"&gt;
	&lt;p&gt;
		&lt;text&gt;
			&lt;lnlink service="DOC-ID" status="valid"&gt;
				&lt;marker&gt;View Legislation&lt;/marker&gt;
				&lt;api-params&gt;
					&lt;param name="remotekey1" value="DOC-ID"/&gt;
					&lt;param name="remotekey2" value="CTH_ACT_1995-2_CHP3PT3.2DV1"/&gt;
					&lt;param name="dpsi" value="005X"/&gt;
				&lt;/api-params&gt;
			&lt;/lnlink&gt;
		&lt;/text&gt;
	&lt;/p&gt;
&lt;/note&gt;

</codeblock>

      <title>Target doc:docinfo/doc:related-content/doc:related-content-link/ref:lnlink</title>
      
      <codeblock>
        
        &lt;doc:metadata&gt;
          &lt;doc:docinfo&gt;  
          ...
          
             &lt;doc:related-content&gt;
                &lt;doc:related-content-item relationship="primary-source" content-type="legislation"&gt;
                    &lt;doc:related-content-link&gt;
                        &lt;ref:lnlink service="DOCUMENT"&gt;
                            &lt;ref:marker&gt;View Legislation&lt;/ref:marker&gt;
                            &lt;ref:locator&gt;
                                &lt;ref:locator-key&gt;
                                    &lt;ref:key-name name="DOC-ID"/&gt;
                                    &lt;ref:key-value value="005X-CTH_ACT_1995-2_CHP3PT3.2DV1"/&gt;
                                &lt;/ref:locator-key&gt;
                            &lt;/ref:locator&gt;
                        &lt;/ref:lnlink&gt;
                    &lt;/doc:related-content-link&gt;
                &lt;/doc:related-content-item&gt;
            &lt;/doc:related-content&gt;
          &lt;/doc:docinfo&gt;
        &lt;/doc:metadata&gt;   
        
      </codeblock>
    </example>   
    
    <example>
      <title>Source note@notetype="xref" @id="SCAI4"</title>
      
      <codeblock>
       
&lt;note notetype="xref" id="SCAI4"&gt;
	&lt;p&gt;
		&lt;text&gt;
			&lt;lnlink service="DOC-ID" status="valid"&gt;
				&lt;marker&gt;View Legislation&lt;/marker&gt;
				&lt;api-params&gt;
					&lt;param name="dpsi" value="005X"/&gt;
					&lt;param name="remotekey1" value="DOC-ID"/&gt;
					&lt;param name="remotekey2" value="CTH_ACT_1995-2"/&gt;
				&lt;/api-params&gt;
			&lt;/lnlink&gt;
		&lt;/text&gt;
	&lt;/p&gt;
&lt;/note&gt;      
       
       
     </codeblock>

      <title>Target doc:docinfo/doc:related-content/doc:related-content-link/ref:lnlink - @id="SCAI4"</title>
      
      <codeblock>
        
        &lt;doc:metadata&gt;
          &lt;doc:docinfo&gt;  
          ...
          
             &lt;doc:related-content&gt;
                &lt;doc:related-content-item relationship="primary-source" content-type="legislation"&gt;
                    &lt;doc:related-content-link&gt;
                        &lt;ref:lnlink service="DOCUMENT"&gt;
                            &lt;ref:marker&gt;View Legislation&lt;/ref:marker&gt;
                            &lt;ref:locator&gt;
                                &lt;ref:locator-key&gt;
                                    &lt;ref:key-name name="DOC-ID"/&gt;
                                    &lt;ref:key-value value="005X-CTH_ACT_1995-2"/&gt;
                                &lt;/ref:locator-key&gt;
                            &lt;/ref:locator&gt;
                        &lt;/ref:lnlink&gt;
                    &lt;/doc:related-content-link&gt;
                &lt;/doc:related-content-item&gt;
            &lt;/doc:related-content&gt;
          &lt;/doc:docinfo&gt;
        &lt;/doc:metadata&gt; 
        
      </codeblock>
    </example> 
    
    <section>
      <title>
        Changes:
      </title>
      <p>2016-06-03: <ph id="change_20160603a_snb">Changed all mapping instructions for 
        <sourcexml>lnlink[@service="DOC-ID" or @service="DOCID"]</sourcexml> throughout document to reference 
        the new General Markup section for this conversion. This change was made in conjunction with LBU Rosetta 
        source XML markup changes to make all source lnlink[@service="DOC-ID"] structure consistent in 
        all documents. Modified examples to match new lnlink structures.</ph></p>
      <p>2016-05-25: <ph id="change_20160525a_snb">Removed erroneous XPATH text that was the paragraph immediately 
        before "<sourcexml>note/p/text/lnlink</sourcexml> maps to..."</ph>
      </p>
      <p>2015-12-11: <ph id="change_20151211b_snb"> Moved <sourcexml>note@notetype="xref" @id="SCAP4" OR @id="SCAI4"</sourcexml> 
        from analytical tab section to cttr:body/leg:info section. Clarified target of 
        <sourcexml>note[@notetype="xref"][@id="SCAP4" or @id="SCAI4"]</sourcexml> to be 
        <targetxml>/cttr:citator/doc:metadata/doc:docinfo/doc:related-content/doc:related-content-item[@relationship="primary-source"[@content-type="legislation"]</targetxml> 
        so that it is consistent with the target mappings of child elements, and to add the desired target attributes. 
        Changed target of <sourcexml>note/p/text/lnlink</sourcexml> to be <targetxml>doc:related-content-item/doc:related-content-link/ref:lnlink</targetxml> 
        instead of <sourcexml>doc:docinfo/doc:related-content/doc:related-content-link/ref:lnlink</sourcexml>. 
        Changed <sourcexml>lnlink/@refpt</sourcexml> to map to <targetxml>ref:locator/@anchoridref</targetxml> instead of 
        <targetxml>ref:locator/ref:locator-key/@anchoridref</targetxml>. Clarified XPATHs for mapping <sourcexml>lnlink</sourcexml> 
        and its content. Moved note about including <targetxml>@reftype="citing-publications"</targetxml> to the "Analytics Tab 
        Content" section of this CI, in the "cttr:body/cttr:content" section.</ph></p>
    </section>
    
    
    <section>
      <title>Additional heading information</title>
      
      <p>For <sourcexml>leg:info/classification</sourcexml> maps to <targetxml>primlawinfo:primlawinfo/classify:classification</targetxml></p>
      
      <p>For <sourcexml>leg:info/leg:dates/leg:assentdate</sourcexml> maps to <targetxml>primlawinfo:primlawinfo/primlawinfo:dates/primlawinfo:assentdate</targetxml></p>
    </section>
    
    <example>
      <title>Source classification and assentdate (NZ only)</title>
      
      <codeblock>
        
        ...
         &lt;classification classscheme="NZ"&gt;
            &lt;classitem&gt;
               &lt;classitem-identifier&gt;
                  &lt;classcode&gt;Public&lt;/classcode&gt;
               &lt;/classitem-identifiers&gt;
             &lt;/classitem&gt;  
          &lt;/classification&gt;
          
         &lt;!-- SAI2.2 Date of Assent -  NOT IN MOCKUP  - NZ ONLY --&gt;
         &lt;leg:dates&gt;
            &lt;leg:assentdate&gt;1999-07-1&lt;/leg:assentdate&gt;
            ...
        
      </codeblock>
    
    </example>
    
    <example>
      <title>Target classification and assentdate (NZ only)</title>

     <codeblock>
       
       &lt;primlawinfo:primlawinfo&gt;
        ...
         &lt;classify:classification classscheme="NZ"&gt;
            &lt;classify:classitem&gt;
               &lt;classify:classitem-identifier&gt;
                  &lt;classify:classcode&gt;Public&lt;/classify:classcode&gt;
               &lt;/classify:classitem-identifiers&gt;
             &lt;/classify:classitem&gt;  
          &lt;/classify:classification&gt;
         
         &lt;!-- SAI2.2 Date of Assent -  NOT IN MOCKUP  - NZ ONLY --&gt;
         &lt;primlawinfo:dates&gt;
            &lt;primlawinfo:assentdate&gt;1999-07-1&lt;/primlawinfo:assentdate&gt;
            ...
        
       
     </codeblock>


    </example>
    
    

    <section>
      <title>note[@notetype="summary"][@id="SCAI5" or @id="SCAI6"]</title>
        
      <p>This section was moved to the "cttr:body/leg:info" section of this CI.</p>
      
    </section>
    
    <section>
      <title>
        Changes:
      </title>
      <p>2015-12-11: <ph id="change_20151211c_snb"> Moved <sourcexml>note[@notetype="summary"][@id="SCAI5" or @id="SCAI6"]</sourcexml> 
        from analytical tab section to cttr:body/leg:info section, and changed to suppress the elements.</ph></p>
    </section>
    
    

<section>
  <title>Tables that include p-limited content as child of table, not children of entry</title>
  
  <p><sourcexml>table/p-limited</sourcexml> maps to <targetxml>note notetype="other"</targetxml> and contents of p-limited map to <targetxml>note/bodytext/p</targetxml></p>  
  
  <p>In cases where a table has the <sourcexml>table/p-limited</sourcexml> but no other content, the table markup should be dropped and the <sourcexml>note</sourcexml> should
  become a child of the <sourcexml>bodytext</sourcexml>.</p>
</section>
    
<example>
  <title>Source table/p-limited</title>
  <codeblock>
    

&lt;table&gt;
 &lt;tgroup cols="17"&gt;
 &lt;thead&gt;
 &lt;row&gt;
  &lt;entry&gt;1997&lt;/entry&gt; 
  &lt;entry&gt;1998&lt;/entry&gt; 
  &lt;entry&gt;1999&lt;/entry&gt; 
  &lt;entry&gt;2000&lt;/entry&gt; 
  &lt;entry&gt;2001&lt;/entry&gt; 
  &lt;entry&gt;2002&lt;/entry&gt; 
  &lt;entry&gt;2003&lt;/entry&gt; 
  &lt;entry&gt;2004&lt;/entry&gt; 
  &lt;entry&gt;2005&lt;/entry&gt; 
  &lt;entry&gt;2006&lt;/entry&gt; 
  &lt;entry&gt;2007&lt;/entry&gt; 
  &lt;entry&gt;2008&lt;/entry&gt; 
  &lt;entry&gt;2009&lt;/entry&gt; 
  &lt;entry&gt;2010&lt;/entry&gt; 
  &lt;entry&gt;2011&lt;/entry&gt; 
  &lt;entry&gt;2012&lt;/entry&gt; 
  &lt;entry&gt;2013&lt;/entry&gt; 
  &lt;/row&gt;
  &lt;/thead&gt;
 &lt;tbody&gt;
 &lt;row&gt;
  &lt;entry/&gt; 
  &lt;/row&gt;
  &lt;/tbody&gt;
  &lt;/tgroup&gt;
  
  &lt;p-limited id="CI4"&gt;The cases included are editorially selected, based on whether there is consideration of the relevant legislative item within the judgment.&lt;/p-limited&gt; 
  &lt;/table&gt;
    
    
  </codeblock>
</example>

    <example>
      <title>Target table/note</title>
      <codeblock>
    
&lt;table&gt;
 &lt;tgroup cols="17"&gt;
 &lt;thead&gt;
 &lt;row&gt;
  &lt;entry&gt;1997&lt;/entry&gt; 
  &lt;entry&gt;1998&lt;/entry&gt; 
  &lt;entry&gt;1999&lt;/entry&gt; 
  &lt;entry&gt;2000&lt;/entry&gt; 
  &lt;entry&gt;2001&lt;/entry&gt; 
  &lt;entry&gt;2002&lt;/entry&gt; 
  &lt;entry&gt;2003&lt;/entry&gt; 
  &lt;entry&gt;2004&lt;/entry&gt; 
  &lt;entry&gt;2005&lt;/entry&gt; 
  &lt;entry&gt;2006&lt;/entry&gt; 
  &lt;entry&gt;2007&lt;/entry&gt; 
  &lt;entry&gt;2008&lt;/entry&gt; 
  &lt;entry&gt;2009&lt;/entry&gt; 
  &lt;entry&gt;2010&lt;/entry&gt; 
  &lt;entry&gt;2011&lt;/entry&gt; 
  &lt;entry&gt;2012&lt;/entry&gt; 
  &lt;entry&gt;2013&lt;/entry&gt; 
  &lt;/row&gt;
  &lt;/thead&gt;
 &lt;tbody&gt;
 &lt;row&gt;
  &lt;entry/&gt; 
  &lt;/row&gt;
  &lt;/tbody&gt;
  &lt;/tgroup&gt;
  
    &lt;note notetype="commentary" xml:id="CI4"&gt;
      &lt;bodytext&gt;
        &lt;p&gt;&lt;text&gt;The cases included are editorially selected, based on whether there is consideration of the relevant legislative item within the judgment.&lt;/text&gt;&lt;/p&gt;
      &lt;/bodytext&gt;  
  &lt;/note&gt;
 &lt;/table&gt;
  
    
  </codeblock>
    </example>
    
    
  <section>
    <title>Notes with ID values not included in this CI</title>
    
    <p>Notes with ID values not specifically outlined in these instructions should remain as notes in the context that they are found.</p>
  </section>  

   <section>
     <title>Standardization of Output for lnlink[@service="DOC-ID"] Conversion</title>
     <p>Depending on the surrounding context, the source xml <sourcexml>lnlink[@service="DOC-ID"]</sourcexml> may be mapped to 
       <targetxml>ref:lnlink</targetxml>
     or <targetxml>ref:crossreference</targetxml>. These instructions are meant only to specify how to perform the conversion from the 
       Rosetta source <sourcexml>lnlink[@service="DOC-ID"]</sourcexml> element to each of the target LexisAdvance elements, but does not indicate 
       when the target should be <targetxml>ref:lnlink</targetxml> vs. <targetxml>ref:crossreference</targetxml>. The 
       specification of which target element to create is provided in the specific rules in the various sections of this document.</p>
     
     <p>The specific instructions for mapping <sourcexml>lnlink[@service="DOC-ID"]</sourcexml> have been rewritten to be consistent 
        with new source Rosetta XML markup structures, and have been moved to the General Markup 
        section of this document:
        <ul>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_lnlink_service_DOCID-LxAdv-ref.lnlink.dita">
              lnlink[@service="DOC-ID" or @service="DOCID"] to ref:lnlink[@service="DOCUMENT"] (id-CCCC-10545).</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_lnlink_refpt-LxAdv-ref.lnlink.dita">
              lnlink[@refpt][not(@service)] to ref:lnlink (id-CCCC-10543).</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_lnlink_service_DOCID-LxAdv-ref.crossreference.dita">
              lnlink[@service="DOC-ID" or @service="DOCID"] to ref:crossreference (id-CCCC-10544).</xref>
          </li>          
        </ul>
     </p>
     
   </section>  

    <section>
      <title>Empty cttr:annot Elements</title>
      <p>Any <sourcexml>cttr:annot</sourcexml> elements that contain only descendants without any text content(other than 
      white space), and that have no attributes with values, should be supressed.</p>
    </section>

    <section>
      <title>Changes</title>
      <p>2016-06-15: <ph id="change_20160615_snb">Added links to the new sections for <sourcexml>lnlink</sourcexml> 
        mapping for convenience (no mapping change here).</ph></p>
      <p>2016-06-03: <ph id="change_20160603_snb">Modified section for Standardization of 
        Output for lnlink Conversion to clarify wording some, and moved the entire set of 
        mapping instructions to the General Markup section of the document.</ph></p>
      <p>2016-02-16: <ph id="change_20160216_snb">Modified section for Standardization of 
        Output for lnlink Conversion to correctly prepend a source document dpsi value before the 
        doc-id. Note that more variations of <sourcexml>lnlink</sourcexml> descendants may be found in 
        the future, but until more variations are known, only instuctions for currently known variations is 
        included.</ph></p>
      <p>2015-12-04: <ph id="change_20151204b_snb">Added instruction to suppress empty <sourcexml>cttr:annot</sourcexml> 
        elements.</ph></p>
    </section>

    <section>
      <title>p/text/inlineobject Not Following an Instrument Name</title>
      <p>When a <sourcexml>p/text/inlineobject</sourcexml> or <sourcexml>p/inlineobject</sourcexml> 
        does not follow a <sourcexml>p/text</sourcexml> with an instrument name such as "Act No 2 of 1995", suppress 
        the <sourcexml>inlineobject</sourcexml> element. If the parent <targetxml>p</targetxml> element's 
        space-normalized text content equals (not contains) one of the 
        text strings listed below inside <targetxml>p/text</targetxml>, or the parent <targetxml>text</targetxml> element's 
        space-normalized text content equals (not contains) one of the text strings listed below, suppress the entire 
        <targetxml>p</targetxml> element.
        <ul>
          <li>Repealed</li>
          <li>Disallowed</li>
          <li>Expired</li>
          <li>In force</li>
          <li>Part in force</li>
          <li>Uncommenced</li>
        </ul>
      </p>
    </section>
    
    <section>
      <title>Changes</title>
      <p>2016-01-25: <ph id="change_20160125a_snb">Created this new section for "p/text/inlineobject Not Following an Instrument Name", 
        and added instruction for suppression of <sourcexml>p/text/inlineobject</sourcexml> 
        or <sourcexml>p/inlineobject</sourcexml> that does not follow a <sourcexml>p/text</sourcexml> with an 
        instrument name such as "Act No 2 of 1995". Note that this instruction is also provided in the section for 
        "cttr:body/cttr:content/cttr:annotations - Act Name" for clarity because that section also contains mapping instructions when the 
        source markup *does* follow an instrument name.</ph></p>
    </section>
     
  </body>
  

	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU20_Legislative_Citator\Citator_Body-Legislative.dita  -->

  <xsl:strip-space elements="leg:status"/>
 
  <xsl:template match="source_cttr:body">
    <xsl:if test="contains(lower-case($docinfoidtext),'overview')">
    </xsl:if>
      
		<cttr:body>		 	
		  <xsl:if test="contains(lower-case($docinfoidtext),'analytics')">
		    <xsl:apply-templates select="source_cttr:content" mode="analytics"/>
		  </xsl:if>
		  <xsl:if test="contains(lower-case($docinfoidtext),'cases')">
		    <xsl:apply-templates select="source_cttr:content" mode="cases"/>
		  </xsl:if>
		  <xsl:if test="contains(lower-case($docinfoidtext),'history')">
		    <xsl:apply-templates select="source_cttr:content" mode="history"/>
		  </xsl:if>
		 
		 <!-- <xsl:apply-templates select="@* | node() except leg:info/classification except leg:info/leg:officialname except note[@notetype='xref' and (@id='SCAP4'or 'SCAI4')]"/>-->
		  <xsl:apply-templates select="@* | node() except leg:info/note except source_cttr:content except note[@notetype='other']  except (leg:info/classification , leg:info/leg:officialname , note[@notetype='xref' and (@id='SCAP4'or 'SCAI4')])"/>
		  <xsl:apply-templates select="leg:info/note[not(contains(lower-case($docinfoidtext),'history') or contains(lower-case($docinfoidtext),'cases') or contains(lower-case($docinfoidtext),'analytics'))]" mode="summarysc"/>
		</cttr:body>

	</xsl:template>

  <xsl:template match="leg:info">
    <xsl:apply-templates select="@* | node() except leg:officialname except classification except leg:year except leg:dates except leg:shorttitle except leg:officialnum except leg:status except leg:juris except note[@notetype='summary' and (@id='SCAP6'or 'SCAP5' or 'SCAI5' or 'SCAI6')and /CITATORDOC/docinfo/docinfo:doc-id[lower-case(.)='cases']] except note[@notetype='xref' and (@id='SCAP4'or 'SCAI4')] except note[@notetype='other']"/>
  </xsl:template>
  
  <xsl:template match="leg:dates" name="legdate">
    <xsl:apply-templates select="@* | node()"/>
  </xsl:template>
  
  <xsl:template match="leg:assentdate"/>
  
  <xsl:template match="leg:assentdate" mode="legdate">
    <primlawinfo:assentdate>     
      <xsl:if test="./date">
        <xsl:apply-templates select="@* | node()"/>
      </xsl:if>      
    </primlawinfo:assentdate>
  </xsl:template>
  
  <xsl:template match="leg:info/classification">
    <classify:classification>
      <xsl:attribute name="classscheme">
        <xsl:text>NZ</xsl:text>
      </xsl:attribute>
      <classify:classitem>        
        <classify:classitem-identifier>
          <classify:classcode>
            <!-- Awantika: Need to check this as apply template is not working here -->
            <xsl:value-of select="."/>
          </classify:classcode>
        </classify:classitem-identifier>
      </classify:classitem>
    </classify:classification>
  </xsl:template>
  
  <xsl:template match="note[parent::leg:info][@id='SAI4' and not(@id=('SCAP6'or 'SCAP5' or 'SCAI5' or 'SCAI6'))][child::p/remotelink]">
    <lnci:cite>
      <lnci:content>
        <xsl:apply-templates select="@* | node()"/>
      </lnci:content>
    </lnci:cite>
  </xsl:template>
  
  <xsl:template match="note[@notetype='other']">
    <cttr:legiscomponent>
      <xsl:attribute name="componenttype">
        <xsl:text>provision</xsl:text>
      </xsl:attribute>     
      <xsl:apply-templates select="@*|node()"/>     
    </cttr:legiscomponent>
  </xsl:template>
  
  <xsl:template match="leg:info" mode="summarysc">
    <xsl:if test="note[@notetype='summary' and (@id='SCAP6' or @id='SCAI5' or @id='SCAI6' or @id='SCAP5')and contains(lower-case(/CITATORDOC/docinfo/docinfo:doc-id),'cases')]">
      <cttr:refs>
        <cttr:refssummary>
          <xsl:attribute name="xml:id">
            <xsl:text>refssummary-document-totals</xsl:text>
          </xsl:attribute>
          <xsl:attribute name="summarytype">
            <xsl:text>document-totals-summary</xsl:text>
          </xsl:attribute>
          <xsl:for-each select="note[@notetype='summary' and (@id='SCAP6' or @id='SCAI5' or @id='SCAI6' or @id='SCAP5')]">
            
            <cttr:refssummaryitem>
              <xsl:attribute name="documenttype">
                <xsl:value-of select="if (l/li[2]/p/text[lower-case(.)='cases']) then 'Cases' else 'Analytical_Materials'"></xsl:value-of>
              </xsl:attribute>
              <xsl:apply-templates select="child::l/li[1]/p/text/text()"/>
            </cttr:refssummaryitem>
            
            
          </xsl:for-each>
          <xsl:if test="not(note[@notetype='summary'][@id='SCAP6' or @id='SCAI5' or @id='SCAI6' or @id='SCAP5']/l/li[2]/p/text[lower-case(.)='cases'])">
            <cttr:refssummaryitem documenttype='Cases'>0</cttr:refssummaryitem>
          </xsl:if>
          <xsl:if test="not(note[@notetype='summary'][@id='SCAP6' or @id='SCAI5' or @id='SCAI6' or @id='SCAP5']/l/li[2]/p/text[lower-case(.)!='cases'])">
            <cttr:refssummaryitem documenttype='Anayltical_Materials'>0</cttr:refssummaryitem>
          </xsl:if>
        </cttr:refssummary>
      </cttr:refs>
    </xsl:if>
   
  </xsl:template>
  
  <!--<xsl:template match="note" mode="summarysc">
    <xsl:if test="@notetype='summary' and (@id='SCAP6' or 'SCAI5' or 'SCAI6')">
      <xsl:if test="contains(lower-case($docinfoidtext),'cases')">        
        <cttr:refs>
          <cttr:refssummary>
            <xsl:attribute name="xml:id">
              <xsl:text>refssummary-document-totals</xsl:text>
            </xsl:attribute>
            <xsl:attribute name="summarytype">
              <xsl:text>document-totals-summary</xsl:text>
            </xsl:attribute>
            <xsl:for-each select="child::l">
              <xsl:for-each-group select="*" group-adjacent="if (parent::l/parent::note) then 0 else 1">
                <xsl:choose>
                  <xsl:when test="current-grouping-key()=0">
                    <cttr:refsummaryitem>
                      <xsl:attribute name="documenttype">
                        <xsl:value-of select="if (li[2]/p/text[lower-case(.)='cases']) then 'Cases' else 'Analytical_Materials'"></xsl:value-of>
                      </xsl:attribute>
                      <xsl:apply-templates select="child::li[1]/p/text/text()"/>
                    </cttr:refsummaryitem>
                  </xsl:when>
                  <xsl:otherwise>
                    <xsl:apply-templates/>
                  </xsl:otherwise>
                </xsl:choose>
              </xsl:for-each-group>
              
            </xsl:for-each>
        <!-\-<xsl:for-each-group select="parent::leg:info[note]" group-adjacent="if (self::note) then 0 else 1">
          <xsl:choose>
            <xsl:when test="child::l">              
                  <cttr:refsummaryitem>
                    <xsl:attribute name="documenttype">
                      <xsl:choose>
                        <xsl:when test="./child::l[child::li[2][child::p/text[lower-case(.)='cases']]]">
                          <xsl:text>Cases</xsl:text>
                        </xsl:when>
                        <xsl:when test="./child::l[child::li[2][child::p/text[lower-case(.)='analytical materials']]]">
                          <xsl:text>Analytical_Material</xsl:text>
                        </xsl:when>
                        <xsl:otherwise>
                          <xsl:value-of select="translate(child::l/child::li[1]/p/text/text(),' ','_')"/>
                        </xsl:otherwise>
                      </xsl:choose>        
                    </xsl:attribute>     
                    <xsl:apply-templates select="child::l/child::li[1]/p/text/text()"/>
                  </cttr:refsummaryitem>              
            </xsl:when>     
          </xsl:choose>        
        </xsl:for-each-group>-\->
          </cttr:refssummary>
        </cttr:refs>
      </xsl:if>      
    </xsl:if>   
  </xsl:template>-->
  
  <!--<xsl:template match="note" mode="summarysc">
    <xsl:if test="@notetype='summary' and (@id='SCAP6'or 'SCAP6' or 'SCAI5' or 'SCAI6')">
      <xsl:if test="//CITATORDOC/docinfo/docinfo:doc-id[lower-case(.)='cases']">
     <xsl:choose>
       <xsl:when test="child::l">        
         <cttr:refsummaryitem>
           <xsl:attribute name="documenttype">
             <xsl:choose>
               <xsl:when test="./child::l[child::li[2][child::p/text[lower-case(.)='cases']]]">
                 <xsl:text>Cases</xsl:text>
               </xsl:when>
               <xsl:when test="./child::l[child::li[2][child::p/text[lower-case(.)='analytical materials']]]">
                 <xsl:text>Analytical_Material</xsl:text>
               </xsl:when>
               <xsl:otherwise>
                 <xsl:value-of select="translate(child::l/child::li[1]/p/text/text(),' ','_')"/>
               </xsl:otherwise>
             </xsl:choose>        
           </xsl:attribute>     
           <xsl:apply-templates select="child::l/child::li[1]/p/text/text()"/>
         </cttr:refsummaryitem>
       </xsl:when>
       <xsl:otherwise>
         <cttr:refs>
           <cttr:refssummary>
             <xsl:attribute name="xml:id">
               <xsl:text>refssummary-document-totals</xsl:text>
             </xsl:attribute>
             <xsl:attribute name="summarytype">
               <xsl:text>document-totalssummary</xsl:text>
             </xsl:attribute>
             <xsl:apply-templates select="@* | node()"/>
           </cttr:refssummary>
         </cttr:refs>
       </xsl:otherwise>
     </xsl:choose>       
      </xsl:if>      
    </xsl:if>   
  </xsl:template>-->
  
  <xsl:template match="note[@notetype='xref' and (@id='SCAP4'or 'SCAI4')]">
    <doc:related-content>
      <doc:related-content-item>
        <xsl:attribute name="relationship">
          <xsl:text>primary-source</xsl:text>
        </xsl:attribute>
        <xsl:attribute name="content-type">
          <xsl:text>legislation</xsl:text>
        </xsl:attribute>
        <xsl:if test="child::p/text/lnlink">
          <doc:related-content-link>          
            <xsl:apply-templates/>
          </doc:related-content-link>
        </xsl:if>
      </doc:related-content-item>
    </doc:related-content>
  </xsl:template>
  
  <xsl:template match="note[@notetype='xref' and (@id='SCAP4'or 'SCAI4')]/p">
    <xsl:apply-templates/>
  </xsl:template>
  <xsl:template match="note[@notetype='xref' and (@id='SCAP4'or 'SCAI4')]/p/text">
    <xsl:apply-templates/>
  </xsl:template>
 
 <!-- <xsl:template match="docinfo:custom-metafield" mode="au20metaitem">
    <xsl:if test="@name='lbu-sourcename'">
    <metaitem xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
     
        <xsl:attribute name="name">
          <xsl:text>lbu-sourcename</xsl:text>
        </xsl:attribute>
        <xsl:attribute name="value">       
          <xsl:value-of select="@value='lbu-sourcename'"/>
        </xsl:attribute> 
    </metaitem>
    </xsl:if>
  </xsl:template>-->

  <!-- Awantika: suppressing heading  -->
  <xsl:template match="note[@notetype='other']/heading">
    <xsl:apply-templates/>
  </xsl:template> 
  
  <xsl:template match="p/remotelink[@href][$streamID='AU20']" priority="30">
    <xsl:call-template name="remotelinkDOCID"/>
  </xsl:template>
  

 
  <xsl:template match="leg:officialname" priority="20">   
     
          <legisinfo:names>
            <legisinfo:officialtitle>
              <xsl:apply-templates select="@*"/>
             
              <xsl:if test="@ln.user-displayed='false'">
                <xsl:attribute name="source">editoriallyassigned</xsl:attribute>
              </xsl:if>
              <xsl:apply-templates select="node() except refpt"/>
            </legisinfo:officialtitle>
            <xsl:apply-templates select="parent::leg:info/child::leg:shorttitle"/>
          </legisinfo:names>
  </xsl:template>
  
  <xsl:template match="leg:officialname/@ln-user-displayed" />
  <xsl:template match="leg:officialname/@searchtype" />
  
  <xsl:template match="leg:shorttitle">   
    <legisinfo:shorttitle>
      <xsl:apply-templates select="@* | node()"/>
    </legisinfo:shorttitle>    
  </xsl:template>
	
  <xsl:template match="leg:status">   
      <legisinfo:statusgroup>
        <xsl:attribute name="statusgroupcode">
          <xsl:text>legislationinfo</xsl:text>
        </xsl:attribute>
        <legisinfo:status>          
          <xsl:attribute name="statuscode"> 
            <!-- Awantika: Stripping all the whitespaces and all characters converted to lower-case. -->
            <xsl:value-of select="translate(lower-case(text()), ' ','')"/>
          </xsl:attribute>
          <legisinfo:statustext>
            <xsl:apply-templates select="@* | node()"/>
          </legisinfo:statustext>
         
        </legisinfo:status>
      </legisinfo:statusgroup>  
  </xsl:template>
  
  <xsl:template match="leg:status/inlineobject"/>
  
  <xsl:template match="leg:juris">
    
      <jurisinfo:legisbodyinfo xmlns:jurisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/jurisdiction-info/1/">
        <jurisinfo:jurisdiction>
          <jurisinfo:system>
            <xsl:apply-templates select="@* | node()"/>
          </jurisinfo:system>
        </jurisinfo:jurisdiction>
      </jurisinfo:legisbodyinfo>    
    
  </xsl:template>
  
  <xsl:template match="docinfo:custom-metafield"> 
    <xsl:if test="starts-with(lower-case(@name),'lbu-') and @name!='lbu-publish-timestamp'">
      <classify:classification>
        <classify:classitem>
          <xsl:attribute name="classscheme">
           <xsl:value-of select="@name"/>
          </xsl:attribute>
          <classify:classitem-identifier>
            <classify:classname>
              <xsl:value-of select="."/>
            </classify:classname>
          </classify:classitem-identifier>
        </classify:classitem>
      </classify:classification>
    </xsl:if>   
    </xsl:template>
  
  <xsl:template match="docinfo:custom-metafield[@name='lbu-leg-type']" mode="legtype">
    <legisinfo:billinfo>
      <legisinfo:legistype>
        <xsl:apply-templates/>
      </legisinfo:legistype>
    </legisinfo:billinfo>
  </xsl:template>
  
  <xsl:variable name="LegJuris">
    <ext:codes>
      <ext:code key="NSW" value="AU-NS"/>
      <ext:code key="QLD" value="AU-QL"/>
      <ext:code key="SA" value="AU-SA"/>
      <ext:code key="TAS" value="AU-TS"/>
      <ext:code key="VIC" value="AU-VI"/>
      <ext:code key="WA" value="AU-WA"/>
      <ext:code key="ACT" value="AU-CT"/>      
    </ext:codes>
  </xsl:variable>
  
  <xsl:key name="LegJurisCodeName" match="ext:code" use="@key"/>
  
  <xsl:template match="leg:juris[starts-with(upper-case(.),'NSW') or starts-with(upper-case(.),'QLD') or starts-with(upper-case(.),'SA') or starts-with(upper-case(.),'TAS') or starts-with(upper-case(.),'VIC') or starts-with(upper-case(.),'WA') or starts-with(upper-case(.),'ACT') or starts-with(upper-case(.),'NT')]" mode="metadata">
  
    <xsl:variable name="leg-juris-val" select="."/>
    <dc:coverage>
      <location:state codescheme="ISO-3166-2">
        <xsl:attribute name="statecode">
          <xsl:value-of select="key('LegJurisCodeName', ., $LegJuris)/@value"/>         
         <!-- <xsl:value-of select="$LegJuris//code[@key=$leg-juris-val]/@value"/>-->
        </xsl:attribute>
        <xsl:apply-templates/>
      </location:state>
    </dc:coverage> 
 
  </xsl:template>
  
  <xsl:template match="leg:juris[not(starts-with(upper-case(.),'NSW') or starts-with(upper-case(.),'QLD') or starts-with(upper-case(.),'SA') or starts-with(upper-case(.),'TAS') or starts-with(upper-case(.),'VIC') or starts-with(upper-case(.),'WA') or starts-with(upper-case(.),'ACT') or starts-with(upper-case(.),'NT'))]" mode="metadata">
    <dc:coverage>
      <location:country codescheme="ISO-3166-1">
        <xsl:attribute name="countrycode">
          <xsl:choose>
            <xsl:when test="upper-case(.)='CTH'"><xsl:value-of select="'AU'"/></xsl:when>
            <xsl:otherwise><xsl:value-of select="."/></xsl:otherwise>
          </xsl:choose>
        </xsl:attribute>
      </location:country>
    </dc:coverage>    
  </xsl:template>
  
  <!-- Awantika: Any cttr:annot elements that contain only descendants without any text content(other than white space), and that have no attributes with values, should be
supressed. -->
  <!--<xsl:template match="source_cttr:annotations/source_cttr:annot[not(@*)][descendant::*[not(@*)][normalize-space(.)='']]"/>-->
  
  <xsl:template match="source_cttr:annotations/source_cttr:annot[not(@*)][count(descendant::*[@*]) = 0][normalize-space(.)='']"/>
  <xsl:template match="source_cttr:annotations[not(@*)][count(descendant::*[@*]) = 0][normalize-space(.)='']"/>
  
  <!-- Awantika: Need to add this -->
  <!-- Awantika: Need to add this -->
 <!-- <xsl:template match="source_cttr:annotations/heading/note[not(@*)][count(descendant::*[@*]) = 0][normalize-space(.)='']"/>-->
  <!-- Awantika -->
  <!--<xsl:template match="source_cttr:annotations[@id='OI7' or @id='OP3' or @id='OI6' or @id='OP5' or @id='OP5NZ' or @id='OI8' or @id='OP7']/heading/note[not(@*)][count(descendant::*[@*]) = 0][normalize-space(.)='']"/>-->
 
  <!--[@id=&#34;SCAP5&#34; or @id=&#34;SCAP6&#34; or @id=&#34;SCAI5&#34; or @id=&#34;SCAI6&#34;]-->
  
  
 <!-- <xsl:template match="note[@notetype=&#34;xref&#34;][@id=&#34;SCAP4&#34; or @id=&#34;SCAI4&#34;]">
    <location:state>
      <xsl:apply-templates select="@* | node()"/>
    </location:state>
  </xsl:template>-->
  
 <!-- <xsl:template match="docinfo:custom-metafield/@name[starts-with(lower-case(.),'lbu-')]">
    <classify:classification>
      <classify:classitem>
        <classify:classitem-identifier>
          <classify:classname>
            <xsl:apply-templates select="docinfo:custom-metafield[text()]"/>
          </classify:classname>
        </classify:classitem-identifier>
      </classify:classitem>
    </classify:classification>
  </xsl:template>-->

  <!--
	<xsl:template match="leg:inkfo/note[@id=&#34;SAI4&#34;]"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  cttr:head/cttr:citedstatlaw/lnci:cite/lnci:content/ref:crossreference   -\->
		<cttr:head>
			<cttr:citedstatlaw>
				<lnci:cite>
					<lnci:content>
						<ref:crossreference>
							<xsl:apply-templates select="@* | node()"/>
						</ref:crossreference>
					</lnci:content>
				</lnci:cite>
			</cttr:citedstatlaw>
		</cttr:head>
	</xsl:template>

	<xsl:template match="leg:info/note[@id=&#34;SAI4&#34;]/p/remotelink"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  cttr:head/cttr:citedstatlaw/lnci:cite/lnci:content/ref:crossreference   -\->
		<cttr:head>
			<cttr:citedstatlaw>
				<lnci:cite>
					<lnci:content>
						<ref:crossreference>
							<xsl:apply-templates select="@* | node()"/>
						</ref:crossreference>
					</lnci:content>
				</lnci:cite>
			</cttr:citedstatlaw>
		</cttr:head>

	</xsl:template>

	<xsl:template match="p/remotelink"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  ref:crossreference/ref:content   -\->
		<ref:crossreference>
			<ref:content>
				<xsl:apply-templates select="@* | node()"/>
			</ref:content>
		</ref:crossreference>

	</xsl:template>

	<xsl:template match="leg:officialname"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  cttr:legisinfo/primlawinfo:primlawinfo/legisinfo:legisinfo   -\->
		<cttr:legisinfo>
			<primlawinfo:primlawinfo>
				<legisinfo:legisinfo>
					<xsl:apply-templates select="@* | node()"/>
				</legisinfo:legisinfo>
			</primlawinfo:primlawinfo>
		</cttr:legisinfo>

	</xsl:template>

	<xsl:template match="leg:shorttitle"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  legisinfo:legisinfo/legisinfo:names/legisinfo:shorttitle   -\->
		<legisinfo:legisinfo>
			<legisinfo:names>
				<legisinfo:shorttitle>
					<xsl:apply-templates select="@* | node()"/>
				</legisinfo:shorttitle>
			</legisinfo:names>
		</legisinfo:legisinfo>

	</xsl:template>

	<xsl:template match="leg:status"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  legisinfo:legisinfo/legisinfo:statusgroup[@statusgroupcode="legislationinfo"]/legisinfo:status   -\->
		<legisinfo:legisinfo>
			<legisinfo:statusgroup>
				<legisinfo:status>
					<xsl:apply-templates select="@* | node()"/>
				</legisinfo:status>
			</legisinfo:statusgroup>
		</legisinfo:legisinfo>

	</xsl:template>

	<xsl:template match="leg:status/inlineobject"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  cttr:legiscomponent[@componenttype="provision"]   -\->
		<cttr:legiscomponent>
			<xsl:apply-templates select="@* | node()"/>
		</cttr:legiscomponent>

	</xsl:template>

	<xsl:template match="note[@notetype=&#34;other&#34;]"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  cttr:legiscomponent[@componenttype="provision"]   -\->
		<cttr:legiscomponent>
			<xsl:apply-templates select="@* | node()"/>
		</cttr:legiscomponent>

	</xsl:template>

	<xsl:template match="note[@notetype=&#34;other&#34;]/heading/desig/designum"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  desig/@value   -\->
		<desig>
			<xsl:attribute name="value">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</desig>

	</xsl:template>

	<xsl:template match="note[@notetype=&#34;other&#34;]/heading/desig/desiglabel"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  desig/text()   -\->
		<desig>
			<!-\-  Could not determine target element or attribute name:  <text()>  -\->				<xsl:apply-templates select="@* | node()"/>
			<!-\-  Could not determine target element or attribute name:  </text()>  -\->
		</desig>

	</xsl:template>

	<xsl:template match="note[@notetype=&#34;other&#34;]/heading/title"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  title   -\->
		<title>
			<xsl:apply-templates select="@* | node()"/>
		</title>

	</xsl:template>

	<xsl:template match="leg:juris"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  cttr:legisinfo/jurisinfo:legisbodyinfo/jurisinfo:jurisdiction/jurisinfo:system   -\->
		<cttr:legisinfo>
			<jurisinfo:legisbodyinfo xmlns:jurisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/jurisdiction-info/1/">
				<jurisinfo:jurisdiction>
					<jurisinfo:system>
						<xsl:apply-templates select="@* | node()"/>
					</jurisinfo:system>
				</jurisinfo:jurisdiction>
			</jurisinfo:legisbodyinfo>
		</cttr:legisinfo>

	</xsl:template>

	<xsl:template match="/CITATORDOC/docinfo/docinfo:custom-metafields/docinfo:custom-metafield/@name"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  cttr:citedstatlaw/cttr:legisinfo/primlawinfo:primlawinfo/classify:classification   -\->
		<cttr:citedstatlaw>
			<cttr:legisinfo>
				<primlawinfo:primlawinfo>
					<classify:classification>
						<xsl:apply-templates select="@* | node()"/>
					</classify:classification>
				</primlawinfo:primlawinfo>
			</cttr:legisinfo>
		</cttr:citedstatlaw>

	</xsl:template>

	<xsl:template match="/CITATORDOC/docinfo/docinfo:custom-metafields/docinfo:custom-metafield[@name=&#34;lbu-subject-type&#34;]/text()"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  classify:classification//classify:classitem[@classscheme="lbu-subject-type"]/classify:classitem-identifier/classify:classname/text()   -\->
		<classify:classification>
			<classify:classitem>
				<classify:classitem-identifier>
					<classify:classname>
						<!-\-  Could not determine target element or attribute name:  <text()>  -\->							<xsl:apply-templates select="@* | node()"/>
						<!-\-  Could not determine target element or attribute name:  </text()>  -\->
					</classify:classname>
				</classify:classitem-identifier>
			</classify:classitem>
		</classify:classification>

	</xsl:template>

	<xsl:template match="/CITATORDOC/docinfo/docinfo:custom-metafields/docinfo:custom-metafield[@name=&#34;lbu-report-type&#34;]/text()"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  classify:classification//classify:classitem[@classscheme="lbu-report-type"]/classify:classitem-identifier/classify:classname/text()   -\->
		<classify:classification>
			<classify:classitem>
				<classify:classitem-identifier>
					<classify:classname>
						<!-\-  Could not determine target element or attribute name:  <text()>  -\->							<xsl:apply-templates select="@* | node()"/>
						<!-\-  Could not determine target element or attribute name:  </text()>  -\->
					</classify:classname>
				</classify:classitem-identifier>
			</classify:classitem>
		</classify:classification>

	</xsl:template>

	<xsl:template match="/CITATORDOC/docinfo/docinfo:custom-metafields/docinfo:custom-metafield[@name=&#34;lbu-report-subtype&#34;]/text()"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  classify:classification//classify:classitem[@classscheme="lbu-report-subtype"]/classify:classitem-identifier/classify:classname/text()   -\->
		<classify:classification>
			<classify:classitem>
				<classify:classitem-identifier>
					<classify:classname>
						<!-\-  Could not determine target element or attribute name:  <text()>  -\->							<xsl:apply-templates select="@* | node()"/>
						<!-\-  Could not determine target element or attribute name:  </text()>  -\->
					</classify:classname>
				</classify:classitem-identifier>
			</classify:classitem>
		</classify:classification>

	</xsl:template>

	<xsl:template match="/CITATORDOC/docinfo/docinfo:custom-metafields/docinfo:custom-metafield[@name=&#34;lbu-leg-type&#34;]/text()"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  classify:classification//classify:classitem[@classscheme="lbu-leg-type"]/classify:classitem-identifier/classify:classname/text()   -\->
		<classify:classification>
			<classify:classitem>
				<classify:classitem-identifier>
					<classify:classname>
						<!-\-  Could not determine target element or attribute name:  <text()>  -\->							<xsl:apply-templates select="@* | node()"/>
						<!-\-  Could not determine target element or attribute name:  </text()>  -\->
					</classify:classname>
				</classify:classitem-identifier>
			</classify:classitem>
		</classify:classification>

	</xsl:template>

	<xsl:template match="/CITATORDOC/docinfo/docinfo:custom-metafields/docinfo:custom-metafield"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  classify:classification//classify:classitem/classify:classitem-identifier/classify:classname/text()   -\->
		<classify:classification>
			<classify:classitem>
				<classify:classitem-identifier>
					<classify:classname>
						<!-\-  Could not determine target element or attribute name:  <text()>  -\->							<xsl:apply-templates select="@* | node()"/>
						<!-\-  Could not determine target element or attribute name:  </text()>  -\->
					</classify:classname>
				</classify:classitem-identifier>
			</classify:classitem>
		</classify:classification>

	</xsl:template>

	<xsl:template match="/CITATORDOC/docinfo/docinfo:custom-metafields/docinfo:custom-metafield/text()"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  classify:classification//classify:classitem/classify:classitem-identifier/classify:classname/text()   -\->
		<classify:classification>
			<classify:classitem>
				<classify:classitem-identifier>
					<classify:classname>
						<!-\-  Could not determine target element or attribute name:  <text()>  -\->							<xsl:apply-templates select="@* | node()"/>
						<!-\-  Could not determine target element or attribute name:  </text()>  -\->
					</classify:classname>
				</classify:classitem-identifier>
			</classify:classitem>
		</classify:classification>

	</xsl:template>

	<xsl:template match="leg:officialnum"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  primlawinfo:primlawinfo/primlawinfo:identifier   -\->
		<primlawinfo:primlawinfo>
			<primlawinfo:identifier>
				<xsl:apply-templates select="@* | node()"/>
			</primlawinfo:identifier>
		</primlawinfo:primlawinfo>

	</xsl:template>

	<xsl:template match="officialnum"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  idtype   -\->
		<idtype>
			<xsl:apply-templates select="@* | node()"/>
		</idtype>

	</xsl:template>

	<xsl:template match="leg:year"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  primlawinfo:primlawinfo/primlawinfo:dates/primlawinfo:enactdate/[@year]   -\->
		<primlawinfo:primlawinfo>
			<primlawinfo:dates>
				<primlawinfo:enactdate>
					<!-\-  Could not determine target element or attribute name:  <[@year]>  -\->						<xsl:apply-templates select="@* | node()"/>
					<!-\-  Could not determine target element or attribute name:  </[@year]>  -\->
				</primlawinfo:enactdate>
			</primlawinfo:dates>
		</primlawinfo:primlawinfo>

	</xsl:template>

	<xsl:template match="note[@notetype=&#34;summary&#34;][@id=&#34;SCAP5&#34; or @id=&#34;SCAP6&#34; or @id=&#34;SCAI5&#34; or @id=&#34;SCAI6&#34;]"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  location:state   -\->
		<location:state>
			<xsl:apply-templates select="@* | node()"/>
		</location:state>

	</xsl:template>

	<xsl:template match="note[@notetype=&#34;xref&#34;][@id=&#34;SCAP4&#34; or @id=&#34;SCAI4&#34;]"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  location:state   -\->
		<location:state>
			<xsl:apply-templates select="@* | node()"/>
		</location:state>

	</xsl:template>

	<xsl:template match="leg:juris/@ln.user-displayed=&#34;false&#34;"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  cttr:legisinfo/primlawinfo:primlawinfo/legisinfo:legisinfo   -\->
		<cttr:legisinfo>
			<primlawinfo:primlawinfo>
				<legisinfo:legisinfo>
					<xsl:apply-templates select="@* | node()"/>
				</legisinfo:legisinfo>
			</primlawinfo:primlawinfo>
		</cttr:legisinfo>

	</xsl:template>

	<xsl:template match="note[@notetype=&#34;summary&#34;][@id=&#34;SCAP5&#34; or @id=&#34;SCAP6&#34;]"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  cttr:citedstatlaw/cttr:legisinfo/primlawinfo:primlawinfo/classify:classification   -\->
		<cttr:citedstatlaw>
			<cttr:legisinfo>
				<primlawinfo:primlawinfo>
					<classify:classification>
						<xsl:apply-templates select="@* | node()"/>
					</classify:classification>
				</primlawinfo:primlawinfo>
			</cttr:legisinfo>
		</cttr:citedstatlaw>

	</xsl:template>

	<xsl:template match="/CITATORDOC/docinfo/docinfo:doc-id"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  /cttr:citator/cttr:body/cttr:refs/cttr:refssummary[@xml:id="refssummary-document-totals"][@summarytype="document-totals-summary"]   -\->
		<cttr:citator>
			<cttr:body>
				<cttr:refs>
					<cttr:refssummary>
						<xsl:apply-templates select="@* | node()"/>
					</cttr:refssummary>
				</cttr:refs>
			</cttr:body>
		</cttr:citator>

	</xsl:template>

	<xsl:template match="note/l"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  cttr:refsummaryitem   -\->
		<cttr:refsummaryitem>
			<xsl:apply-templates select="@* | node()"/>
		</cttr:refsummaryitem>

	</xsl:template>

	<xsl:template match="p/text"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  @documenttype   -\->
		<xsl:attribute name="documenttype">
			<xsl:apply-templates select="node()"/>
		</xsl:attribute>

	</xsl:template>

	<xsl:template match="li"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  @documenttype   -\->
		<xsl:attribute name="documenttype">
			<xsl:apply-templates select="node()"/>
		</xsl:attribute>

	</xsl:template>

	<xsl:template match="note/l/li[2]/p/text/text()"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  @documenttype   -\->
		<xsl:attribute name="documenttype">
			<xsl:apply-templates select="node()"/>
		</xsl:attribute>

	</xsl:template>

	<xsl:template match="note/l/li[1]/p/text/text()"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  cttr:refsummaryitem   -\->
		<cttr:refsummaryitem>
			<xsl:apply-templates select="@* | node()"/>
		</cttr:refsummaryitem>

	</xsl:template>

	<xsl:template match="note/p/text/lnlink"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  doc:related-content-item/doc:related-content-link/ref:lnlink   -\->
		<doc:related-content-item>
			<doc:related-content-link>
				<ref:lnlink>
					<xsl:apply-templates select="@* | node()"/>
				</ref:lnlink>
			</doc:related-content-link>
		</doc:related-content-item>

	</xsl:template>

	<xsl:template match="lnlink[@service=&#34;DOC-ID&#34; or @service=&#34;DOCID&#34;]"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  ref:lnlink[@service="DOCUMENT"]   -\->
		<ref:lnlink>
			<xsl:apply-templates select="@* | node()"/>
		</ref:lnlink>

	</xsl:template>

	<xsl:template match="note@notetype=&#34;xref&#34; @id=&#34;SCAP4&#34; OR @id=&#34;SCAI4&#34;"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  /cttr:citator/doc:metadata/doc:docinfo/doc:related-content/doc:related-content-item[@relationship="primary-source"[@content-type="legislation"]   -\->
		<cttr:citator>
			<doc:metadata>
				<doc:docinfo>
					<doc:related-content>
						<doc:related-content-item>
							<xsl:apply-templates select="@* | node()"/>
						</doc:related-content-item>
					</doc:related-content>
				</doc:docinfo>
			</doc:metadata>
		</cttr:citator>

	</xsl:template>

	<xsl:template match="doc:docinfo/doc:related-content/doc:related-content-link/ref:lnlink"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  ref:locator/@anchoridref   -\->
		<ref:locator>
			<xsl:attribute name="anchoridref">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</ref:locator>

	</xsl:template>

	<xsl:template match="lnlink/@refpt"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  ref:locator/@anchoridref   -\->
		<ref:locator>
			<xsl:attribute name="anchoridref">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</ref:locator>

	</xsl:template>

	<xsl:template match="lnlink"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  @reftype="citing-publications"   -\->
		<xsl:attribute name="reftype">
			<xsl:text>citing-publications</xsl:text>
		</xsl:attribute>

	</xsl:template>

	<xsl:template match="leg:info/classification"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  primlawinfo:primlawinfo/classify:classification   -\->
		<primlawinfo:primlawinfo>
			<classify:classification>
				<xsl:apply-templates select="@* | node()"/>
			</classify:classification>
		</primlawinfo:primlawinfo>

	</xsl:template>

	<xsl:template match="leg:info/leg:dates/leg:assentdate"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  primlawinfo:primlawinfo/primlawinfo:dates/primlawinfo:assentdate   -\->
		<primlawinfo:primlawinfo>
			<primlawinfo:dates>
				<primlawinfo:assentdate>
					<xsl:apply-templates select="@* | node()"/>
				</primlawinfo:assentdate>
			</primlawinfo:dates>
		</primlawinfo:primlawinfo>

	</xsl:template>

	<xsl:template match="note[@notetype=&#34;summary&#34;][@id=&#34;SCAI5&#34; or @id=&#34;SCAI6&#34;]"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  notenotetype="other"   -\->
		<!-\-  Could not determine target element or attribute name:  <notenotetype="other">  -\->			<xsl:apply-templates select="@* | node()"/>
		<!-\-  Could not determine target element or attribute name:  </notenotetype="other">  -\->

	</xsl:template>

	<xsl:template match="table/p-limited"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  notenotetype="other"   -\->
		<!-\-  Could not determine target element or attribute name:  <notenotetype="other">  -\->			<xsl:apply-templates select="@* | node()"/>
		<!-\-  Could not determine target element or attribute name:  </notenotetype="other">  -\->

	</xsl:template>

	<xsl:template match="note"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  ref:lnlink   -\->
		<ref:lnlink>
			<xsl:apply-templates select="@* | node()"/>
		</ref:lnlink>

	</xsl:template>

	<xsl:template match="bodytext"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  ref:lnlink   -\->
		<ref:lnlink>
			<xsl:apply-templates select="@* | node()"/>
		</ref:lnlink>

	</xsl:template>

	<xsl:template match="lnlink[@service=&#34;DOC-ID&#34;]"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  ref:lnlink   -\->
		<ref:lnlink>
			<xsl:apply-templates select="@* | node()"/>
		</ref:lnlink>

	</xsl:template>

	<xsl:template match="cttr:annot"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  p   -\->
		<p>
			<xsl:apply-templates select="@* | node()"/>
		</p>

	</xsl:template>

	<xsl:template match="p/text/inlineobject"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  p   -\->
		<p>
			<xsl:apply-templates select="@* | node()"/>
		</p>

	</xsl:template>

	<xsl:template match="p/inlineobject"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  p   -\->
		<p>
			<xsl:apply-templates select="@* | node()"/>
		</p>

	</xsl:template>

	<xsl:template match="inlineobject"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  p   -\->
		<p>
			<xsl:apply-templates select="@* | node()"/>
		</p>

	</xsl:template>-->

</xsl:stylesheet>