<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:source_cttr="http://www.lexis-nexis.com/glp/cttr" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:cttr="urn:x-lexisnexis:content:citator:sharedservices:1" xmlns:primlawinfo="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-info/1/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita cttr leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="cttr.annotations">
  <title>cttr:annotations to cttr:refsection <lnpid>id-UK16-38610</lnpid></title>
  <body>
    <section>
      <p>Each occurence of <sourcexml>cttr:annotations</sourcexml> becomes a <targetxml>cttr:refsection</targetxml> within <targetxml>cttr:refs</targetxml></p>
      <p><sourcexml>cttr:annotations/@annotationtype="leg-effect"</sourcexml> or <sourcexml>cttr:annotations/@annotationtype="leg-destination"</sourcexml> becomes <targetxml>cttr:refs/cttr:refsection/@reftype="considered-legislation"</targetxml></p>
      <note><p>Value of <sourcexml>cttr:annotations/@leg-signal</sourcexml> is drop, we have
        <sourcexml>cttr:annot</sourcexml> wise handling of <sourcexml>@leg-signal</sourcexml></p></note>
    </section>
    <example>
      <lines>Source XML</lines>
      <codeblock>
        
&lt;cttr:annotations annotationtype="leg-effect" leg-signal="status-unidentifiable"&gt;
        &lt;cttr:annot leg-signal="no-longer-in-force"&gt;
              ........
        &lt;/cttr:annot&gt;
&lt;/cttr:annotations&gt;
        
      </codeblock>
      <lines>Target XML</lines>
      <codeblock>
        
&lt;cttr:refs&gt;
          &lt;cttr:refsection reftype="considered-legislation"&gt;
                &lt;cttr:refitem&gt;
                      &lt;cttr:consideredlegis&gt;
                          .........
                        &lt;cttr:legisinfo&gt;
                            &lt;legisinfo:status&gt;
                                &lt;legisinfo:statustext&gt;no-longer-in-force&lt;/legisinfo:statustext&gt; &lt;!-- it's handling of cttr:annot/@leg-singal  --&gt;
                            &lt;/legisinfo:status&gt;
                        &lt;cttr:legisinfo&gt;
                &lt;/cttr:refitem&gt;
        &lt;/cttr:refsection&gt;
&lt;/cttr:refs&gt;
        
      </codeblock>
    </example>
    <section>
      <title><sourcexml>cttr:annotations/annot</sourcexml> to <targetxml>ref:refitem</targetxml> </title>
      <ul>
        <li><p>Convert each child <sourcexml>cttr:annot</sourcexml> to
          <targetxml>ref:refitem</targetxml>.</p></li>
        <li><p>Value of <sourcexml>annot/@leg:signal</sourcexml> becomes
          <targetxml>cttr:refs/cttr:refsection/cttr:refitem/cttr:consideredlegis/cttr:legisinfo/legisinfo:status/legisinfo:statustext</targetxml></p></li>
      </ul>
    </section>
    <example>
      <lines>Source XML</lines>
      <codeblock>
        
&lt;cttr:annotations annotationtype="leg-effect" leg-signal="status-unidentifiable"&gt;
        &lt;cttr:annot leg-signal="no-longer-in-force"&gt;
              ........
        &lt;/cttr:annot&gt;
&lt;/cttr:annotations&gt;
        
      </codeblock>
      <lines>Target XML</lines>
      <codeblock>
        
&lt;cttr:refs&gt;
          &lt;cttr:refsection reftype="considered-legislation"&gt;
                &lt;cttr:refitem&gt;
                      &lt;cttr:consideredlegis&gt;
                        &lt;cttr:legisinfo&gt;
                             .......
                            &lt;legisinfo:status&gt;
                                &lt;legisinfo:statustext&gt;no-longer-in-force&lt;/legisinfo:statustext&gt; &lt;!-- it's handling of cttr:annot/@leg-singal  --&gt;
                            &lt;/legisinfo:status&gt;
                         &lt;/cttr:legisinfo&gt;
                    &lt;/cttr:consideredlegis&gt;
                &lt;/cttr:refitem&gt;
        &lt;/cttr:refsection&gt;
&lt;/cttr:refs&gt;
        
      </codeblock>
    </example>
    <section>
      <title><sourcexml>cttr:content/cttr:annotations/cttr:annot/leg:info</sourcexml> to
          <targetxml>cttr:refitem/cttr:consideredlegis</targetxml></title>
      <ul>
        <li><p><sourcexml>cttr:annot/leg:info/leg:hier</sourcexml> becomes
          <targetxml>cttr:refitem/cttr:consideredlegis/cttr:legiscomponents</targetxml></p></li>
        <li>
          <p>Content of <sourcexml>cttr:annot/leg:info/leg:hier/leg:hierlev</sourcexml> becomes
              <targetxml>cttr:refitem/cttr:consideredlegis/cttr:legiscomponents/cttr:legiscomponent/desig</targetxml></p>
        </li>
        <li>
          <p><sourcexml>leg:hier/leg:hierlev/@leveltype</sourcexml> becomes
              <targetxml>cttr:legiscomponents/cttr:legiscomponent/[@componenttype]</targetxml></p>
        </li>
        <li>
          <p>Content <sourcexml>cttr:annot/leg:info/leg:hier/leg:hierlev/@value</sourcexml> becomes
              <targetxml>cttr:refitem/cttr:consideredlegis/cttr:legiscomponents/cttr:legiscomponent/desig</targetxml></p>
        </li>
        
      </ul>
      
    </section>
    <example>
      <lines>Source XML <sourcexml>cttr:annot/leg:info/leg:hier/leg:hierlev</sourcexml></lines>
      <codeblock>
        
   &lt;cttr:annot&gt;
          &lt;leg:info&gt;
            &lt;leg:hier&gt;
              &lt;leg:hierlev leveltype="provision" value="24"/&gt;
              &lt;leg:hierlev leveltype="subProvision"&gt;(1)(a)&lt;/leg:hierlev&gt;
            &lt;/leg:hier&gt;
          &lt;/leg:info&gt;
   &lt;/cttr:annot&gt;

        
      </codeblock>
      <lines>Target XML <sourcexml>cttr:annot/leg:info/leg:hier/leg:hierlev</sourcexml></lines>
      <codeblock>
        
&lt;cttr:refitem&gt;
       &lt;cttr:consideredlegis&gt;
            &lt;cttr:legiscomponents&gt;
              &lt;cttr:legiscomponent componenttype="provision"&gt;
                  &lt;desig&gt;24&lt;/desig&gt;
              &lt;/cttr:legiscomponent&gt;
              &lt;cttr:legiscomponent componenttype="subprovision"&gt;
                  &lt;desig&gt;(1)(a)&lt;/desig&gt;
              &lt;/cttr:legiscomponent&gt;
            &lt;/cttr:legiscomponents&gt;
       &lt;cttr:consideredlegis&gt;
&lt;/cttr:refitem&gt;
        
      </codeblock>
    </example>
    <ul>
      <li><p><sourcexml>cttr:annot/leg:info/leg:hier-range</sourcexml> becomes
        <targetxml>cttr:refitem/cttr:consideredlegis/cttr:legiscomponents</targetxml></p></li>
      <li><p>Content of <sourcexml>cttr:annot/leg:info/leg:hier-range/leg:hier-range-text</sourcexml> becomes
            <targetxml>cttr:refitem/cttr:consideredlegis/cttr:legiscomponents/cttr:legiscomponent/desigrange</targetxml><ul id="ul_wnx_tw4_pr">
            <li><sourcexml>leg:hier-range-text/@leveltype</sourcexml> dropped</li>
            <li><sourcexml>leg:hier-range-text/@firstvalue</sourcexml> becomes
                <targetxml>cttr:legiscomponents/cttr:legiscomponent/desigrange/@firstvalue</targetxml></li>
            <li><sourcexml>leg:hier-range-text/@lastvalue</sourcexml> becomes
                <targetxml>cttr:legiscomponents/cttr:legiscomponent/desigrange/@lastvalue</targetxml></li>
          </ul></p></li>
      <li>
        <p><sourcexml>cttr:annot/leg:info/leg:hier-range/leg:hierlev</sourcexml> becomes
            <targetxml>cttr:legiscomponents/cttr:legiscomponent/desig</targetxml></p>
      </li>
      <li>
        <p>Attribute
            <sourcexml>cttr:annot/leg:info/leg:hier-range/leg:hierlev/@leveltype</sourcexml> becomes
            <targetxml>cttr:legiscomponents/cttr:legiscomponent/@componenttype</targetxml></p>
      </li>
    </ul>
    <example>
      <lines>Source XML <sourcexml>cttr:annot/leg:info/leg:hier-range/leg:hier-range-text</sourcexml></lines>
      <codeblock>
        
   &lt;cttr:annot leg-signal="in-force"&gt;
          &lt;leg:info&gt;
            &lt;leg:hier-range firstvalue="Pt 1" lastvalue="Pt 7" leveltype="provision"&gt;
              &lt;leg:hier-range-text&gt;Pt 1-Pt 7&lt;/leg:hier-range-text&gt;
              &lt;leg:hierlev leveltype="provision"&gt;Pt 1&lt;/leg:hierlev&gt;
              &lt;leg:hierlev leveltype="provision"&gt;Pt 2&lt;/leg:hierlev&gt;
              &lt;leg:hierlev leveltype="provision"&gt;Pt 3&lt;/leg:hierlev&gt;
              &lt;leg:hierlev leveltype="provision"&gt;Pt 4&lt;/leg:hierlev&gt;
              &lt;leg:hierlev leveltype="provision"&gt;Pt 5&lt;/leg:hierlev&gt;
              &lt;leg:hierlev leveltype="provision"&gt;Pt 6&lt;/leg:hierlev&gt;
              &lt;leg:hierlev leveltype="provision"&gt;Pt 7&lt;/leg:hierlev&gt;
            &lt;/leg:hier-range&gt;
          &lt;/leg:info&gt;
   &lt;/cttr:annot&gt;

        
      </codeblock>
      <lines>Target XML <sourcexml>cttr:annot/leg:info/leg:hier-range/leg:hier-range-text</sourcexml></lines>
      <codeblock>
        
&lt;cttr:refitem&gt;
       &lt;cttr:consideredlegis&gt;
            &lt;cttr:legiscomponents&gt;
              &lt;cttr:legiscomponent componenttype="provision"&gt;
                  &lt;desigrange firstvalue="Pt 1" lastvalue="Pt 7"&gt;Pt 1-Pt 7&lt;/desigrange&gt;
              &lt;/cttr:legiscomponent&gt;
              &lt;cttr:legiscomponent componenttype="provision"&gt;
                  &lt;desig&gt;Pt 1&lt;/desig&gt;
              &lt;/cttr:legiscomponent&gt;
              &lt;cttr:legiscomponent componenttype="provision"&gt;
                  &lt;desig&gt;Pt 2&lt;/desig&gt;
              &lt;/cttr:legiscomponent&gt;
              &lt;cttr:legiscomponent componenttype="provision"&gt;
                  &lt;desig&gt;Pt 3&lt;/desig&gt;
              &lt;/cttr:legiscomponent&gt;
              &lt;cttr:legiscomponent componenttype="provision"&gt;
                  &lt;desig&gt;Pt 4&lt;/desig&gt;
              &lt;/cttr:legiscomponent&gt;
              &lt;cttr:legiscomponent componenttype="provision"&gt;
                  &lt;desig&gt;Pt 5&lt;/desig&gt;
              &lt;/cttr:legiscomponent&gt;
              &lt;cttr:legiscomponent componenttype="provision"&gt;
                  &lt;desig&gt;Pt 6&lt;/desig&gt;
              &lt;/cttr:legiscomponent&gt;
              &lt;cttr:legiscomponent componenttype="provision"&gt;
                  &lt;desig&gt;Pt 7&lt;/desig&gt;
              &lt;/cttr:legiscomponent&gt;
            &lt;/cttr:legiscomponents&gt;
       &lt;cttr:consideredlegis&gt;
&lt;/cttr:refitem&gt;
        
      </codeblock>
    </example>
    <section>
      <title><sourcexml>cttr:annot/leg:info/leg:officialname</sourcexml> to
          <targetxml>cttr:refitem/cttr:consideredlegis/legisinfo:names/legisinfo:officialtitle</targetxml></title>
     <ul>
       <li> <p>
            <sourcexml>cttr:annot/leg:info/leg:officialname</sourcexml> becomes
              <targetxml>cttr:refitem/cttr:consideredlegis/legisinfo:names/legisinfo:officialtitle</targetxml>
            <note>If <sourcexml>cttr:annot/leg:info/leg:officialname</sourcexml> contains
                <b>ci:cite</b> map it to
                <targetxml>cttr:refitem/cttr:consideredlegis/cttr:legisinfo/cttr:citations/lnci:cite</targetxml>
              also.</note><note>If <sourcexml>cttr:annot/leg:info/leg:officialname</sourcexml> don't
              contain <b>ci:cite</b> then it's content would also map to
                <targetxml>cttr:refitem/cttr:consideredlegis/cttr:legisinfo/cttr:citation/ref:crossreference/ref:content</targetxml></note>
          </p>
       </li>
     </ul>
            
    </section>
    <example>
      <lines>Source XML</lines>
      <codeblock>
        
&lt;cttr:annot&gt;
          &lt;leg:info&gt;
            &lt;leg:officialname&gt;
              &lt;ci:cite searchtype="LEG-REF" status="valid"&gt;
                &lt;ci:sesslaw&gt;
                  &lt;ci:sesslawinfo&gt;
                    &lt;ci:sesslawnum num="2005_3626s_Title"/&gt;
                  &lt;/ci:sesslawinfo&gt;
                  &lt;ci:sesslawref&gt;
                    &lt;ci:standardname normpubcode="UK_SI"/&gt;
                  &lt;/ci:sesslawref&gt;
                &lt;/ci:sesslaw&gt;
                &lt;ci:content&gt;SI 2005/3626&lt;/ci:content&gt;
              &lt;/ci:cite&gt;
            &lt;/leg:officialname&gt;
      &lt;/leg:info&gt;
&lt;/cttr:annot&gt;
        
      </codeblock>
      <lines>Target XML</lines>
      <codeblock>
        
&lt;cttr:refitem&gt;
         &lt;cttr:consideredlegis&gt;
                &lt;legisinfo:names&gt;
                  &lt;legisinfo:officialtitle&gt;
                  &lt;lnci:cite status="valid"&gt;
                      &lt;lnci:sesslaw&gt;
                        &lt;lnci:sesslawinfo&gt;
                          &lt;lnci:sesslawnum num="2005_3626s_Title"/&gt;
                        &lt;/lnci:sesslawinfo&gt;
                        &lt;lnci:sesslawref&gt;
                          &lt;lnci:standardname normpubcode="UK_SI"/&gt;
                        &lt;/lnci:sesslawref&gt;
                      &lt;/lnci:sesslaw&gt;
                  &lt;lnci:content&gt;SI 2005/3626&lt;/ci:content&gt;
                &lt;/lnci:cite&gt;
               &lt;/legisinfo:officialtitle&gt;
             &lt;/legisinfo:names&gt;
              &lt;cttr:legisinfo&gt;
                &lt;cttr:citations&gt;
                    &lt;lnci:cite status="valid"&gt;
                      &lt;lnci:sesslaw&gt;
                        &lt;lnci:sesslawinfo&gt;
                          &lt;lnci:sesslawnum num="2005_3626s_Title"/&gt;
                        &lt;/lnci:sesslawinfo&gt;
                        &lt;lnci:sesslawref&gt;
                          &lt;lnci:standardname normpubcode="UK_SI"/&gt;
                        &lt;/lnci:sesslawref&gt;
                      &lt;/lnci:sesslaw&gt;
                  &lt;lnci:content&gt;SI 2005/3626&lt;/ci:content&gt;
                  &lt;/lnci:cite&gt;
                &lt;/cttr:citations&gt;
            &lt;/cttr:legisinfo&gt;
         &lt;cttr:consideredlegis&gt;
&lt;cttr:refitem&gt;         
        
      </codeblock>
    </example>
    <note>If we don't have <sourcexml>cttr:annot/leg:info/leg:officialname</sourcexml> in the source
      document then
      <ul>
        <li><p>Content of <sourcexml>cttr:annot/leg:info/leg:hier/leg:hierlev</sourcexml> or
          <sourcexml>cttr:annot/leg:info/leg:hier-range/leg:hier-range-text</sourcexml> becomes
          <targetxml>cttr:refitem/cttr:consideredlegis/legisinfo:names/legisinfo:officialtitle</targetxml></p>
          <ul>
            <li>Conversion should pick the value of all the <sourcexml>leg:hier/leg:hierlev</sourcexml>
              into <targetxml>cttr:consideredlegis/legisinfo:names/legisinfo:officialtitle</targetxml>
              see the example 1 given below.</li>
            <li>Conversion should pick the value of only
              <sourcexml>cttr:annot/leg:info/leg:hier-range/leg:hier-range-text</sourcexml> into
              <targetxml>cttr:consideredlegis/legisinfo:names/legisinfo:officialtitle</targetxml> see
              the example 2</li>
          </ul>
        </li>
        <li><p>Content
        of <sourcexml>cttr:annot/leg:info/leg:hier/leg:hierlev</sourcexml> or
          <sourcexml>cttr:annot/leg:info/leg:hier-range/leg:hier-range-text</sourcexml> would also
        map to
          <targetxml>cttr:refitem/cttr:consideredlegis/cttr:legisinfo/cttr:citation/ref:crossreference/ref:content</targetxml>
        </p>
        
        </li>
      </ul>
    
    </note>
  
    <note>If we don't have neither <sourcexml>cttr:annot/leg:info/leg:officialname</sourcexml> nor
        <sourcexml>cttr:annot/leg:info/leg:hier/leg:hierlev[1]</sourcexml>, then
        <sourcexml>cttr:body/leg:info/leg:officialname</sourcexml> will be mapped to
        <targetxml>cttr:refitem/cttr:consideredlegis/legisinfo:names/legisinfo:officialtitle</targetxml>
      Example 3</note>
    <example>
      <lines>Source XML 1</lines>
      <codeblock>
        
&lt;cttr:annot leg-signal="no-longer-in-force"&gt;
      &lt;leg:info&gt;
                   &lt;!--  don't have cttr:annot/leg:info/leg:officialname here --&gt;
            &lt;leg:hier&gt;
              &lt;leg:hierlev leveltype="provision" value="17"/&gt;
              &lt;leg:hierlev leveltype="subProvision"&gt;(1)&lt;/leg:hierlev&gt;
            &lt;/leg:hier&gt;
            .......
      &lt;/leg:info&gt;
&lt;/cttr:annot&gt;
      
        
      </codeblock>
      <lines>Target XML 1</lines>
      <codeblock>
        
&lt;cttr:refitem&gt;
          &lt;cttr:consideredlegis&gt;
                 &lt;legisinfo:names&gt;
                        &lt;legisinfo:officialtitle&gt;17 (1)&lt;/legisinfo:officialtitle&gt;
                 &lt;/legisinfo:names&gt;
                 &lt;cttr:legiscomponents&gt;
                        &lt;cttr:legiscomponent&gt;&lt;desig&gt;17&lt;/desig&gt;&lt;/cttr:legiscomponent&gt;
                        &lt;cttr:legiscomponent&gt;&lt;desig&gt;(1)&lt;/desig&gt;&lt;/cttr:legiscomponent&gt;
                 &lt;/cttr:legiscomponents&gt;
                 &lt;cttr:legisinfo&gt;
                    &lt;cttr:citations&gt;
                      &lt;ref:crossreference&gt;
                        &lt;ref:content&gt;17 (1)&lt;/ref:content&gt;
                      &lt;/ref:crossreference&gt;
                    &lt;/cttr:citations&gt;
                     &lt;legisinfo:status&gt;
                           &lt;legisinfo:statustext&gt;no-longer-in-force&lt;/legisinfo:statustext&gt;
                     &lt;/legisinfo:status&gt;
                 &lt;/cttr:legisinfo&gt;
         &lt;cttr:consideredlegis&gt;
&lt;cttr:refitem&gt;
        
      </codeblock>
    </example>
    
    <example>
      <lines>Source XML 2</lines>
      <codeblock>
        
&lt;cttr:annot leg-signal="not-yet-in-force"&gt;
          &lt;leg:info&gt;
            &lt;leg:hier-range firstvalue="18" lastvalue="23" leveltype="provision"&gt;
                &lt;leg:hier-range-text&gt;ss 18-23&lt;/leg:hier-range-text&gt;
                  &lt;leg:hierlev leveltype="provision"&gt;
                      &lt;remotelink dpsi="0HYR" remotekey1="DOC-ID" remotekey2="s2013_11a_Pt2.Ch3.18" newwindow="NO" service="DOC-ID"&gt;s 18&lt;/remotelink&gt;
                  &lt;/leg:hierlev&gt;
                  &lt;leg:hierlev leveltype="provision"&gt;
                    &lt;remotelink dpsi="0HYR" remotekey1="DOC-ID" remotekey2="s2013_11a_Pt2.Ch3.19" newwindow="NO" service="DOC-ID"&gt;s 19&lt;/remotelink&gt;
                  &lt;/leg:hierlev&gt;
                  .........
            &lt;/leg:hier-range&gt;
         &lt;/leg:info&gt;
&lt;/cttr:annot&gt;      
        
      </codeblock>
      <lines>Target XML 2</lines>
      <codeblock>
        
&lt;cttr:refitem&gt;
          &lt;cttr:consideredlegis&gt;
            &lt;legisinfo:names&gt;
              &lt;legisinfo:officialtitle&gt;ss 18-23&lt;/legisinfo:officialtitle&gt; 
            &lt;/legisinfo:names&gt;
            &lt;cttr:legiscomponents&gt;
              &lt;cttr:legiscomponent componenttype="provision"&gt;
                &lt;desigrange firstvalue="18" lastvalue="22"&gt;ss 18-23&lt;/desigrange&gt;
              &lt;/cttr:legiscomponent&gt;
              &lt;cttr:legiscomponent componenttype="provision"&gt;
                &lt;desig&gt;&lt;ref:crossreference crossreferencetype="citatorAlert"
                  referencedresourcetype="citator"&gt;
                  &lt;ref:content&gt;s 18&lt;/ref:content&gt;
                  &lt;ref:locator&gt;
                    &lt;ref:locator-key&gt;
                      &lt;ref:key-name name="DOC-ID"/&gt;
                      &lt;ref:key-value value="s2013_11a_Pt2.Ch3.18"/&gt;
                    &lt;/ref:locator-key&gt;
                  &lt;/ref:locator&gt;
                &lt;/ref:crossreference&gt;
                &lt;/desig&gt;
              &lt;/cttr:legiscomponent&gt;
              &lt;cttr:legiscomponent componenttype="provision"&gt;
                &lt;desig&gt;&lt;ref:crossreference crossreferencetype="citatorAlert"
                  referencedresourcetype="citator"&gt;
                  &lt;ref:content&gt;s 19&lt;/ref:content&gt;
                  &lt;ref:locator&gt;
                    &lt;ref:locator-key&gt;
                      &lt;ref:key-name name="DOC-ID"/&gt;
                      &lt;ref:key-value value="s2013_11a_Pt2.Ch3.19"/&gt;
                    &lt;/ref:locator-key&gt;
                  &lt;/ref:locator&gt;
                &lt;/ref:crossreference&gt;&lt;/desig&gt;
              &lt;/cttr:legiscomponent&gt;
              &lt;cttr:legisinfo&gt;
                    &lt;cttr:citations&gt;
                      &lt;ref:crossreference&gt;
                        &lt;ref:content&gt;ss 18-23&lt;/ref:content&gt;
                      &lt;/ref:crossreference&gt;
                    &lt;/cttr:citations&gt;
                     &lt;legisinfo:status&gt;
                           &lt;legisinfo:statustext&gt;not-yet-in-force&lt;/legisinfo:statustext&gt;
                     &lt;/legisinfo:status&gt;
                 &lt;/cttr:legisinfo&gt;
         &lt;/cttr:legiscomponents&gt;
&lt;/cttr:refitem&gt;
        
      </codeblock>
    </example>
    
    <example>
      <lines>Source XML 3</lines>
      <codeblock>
        
&lt;cttr:body&gt;
    &lt;leg:info&gt;
        &lt;leg:officialname&gt;Pa–Pn&lt;/leg:officialname&gt;
    &lt;/leg:info&gt;
    &lt;cttr:content&gt;
        &lt;cttr:annotations&gt;
            &lt;cttr:annot leg-signal="status-unidentifiable"&gt;
                &lt;leg:info&gt;
                    &lt;!--  don't have cttr:annot/leg:info/leg:officialname and cttr:annot/leg:info/leg:hier/leg:hierlev or cttr:annot/leg:info/leg:hier-range/leg:hier-range-text --&gt;
                &lt;/leg:info&gt;
            &lt;/cttr:annot&gt;
        &lt;/cttr:annotations&gt;
    &lt;/cttr:content&gt;
&lt;/cttr:body&gt;
        
      </codeblock>
      <lines>Target XML 3</lines>
      <codeblock>
        
&lt;cttr:refitem&gt;
          &lt;cttr:consideredlegis&gt;
                 &lt;legisinfo:names&gt;
                        &lt;legisinfo:officialtitle&gt;Pa–Pn&lt;/legisinfo:officialtitle&gt;
                 &lt;/legisinfo:names&gt;
                 
                 &lt;cttr:legisinfo&gt;
                    &lt;cttr:citations&gt;
                      &lt;ref:crossreference&gt;
                        &lt;ref:content&gt;Pa–Pn&lt;/ref:content&gt;
                      &lt;/ref:crossreference&gt;
                    &lt;/cttr:citations&gt;
                      &lt;legisinfo:status&gt;
                           &lt;legisinfo:statustext&gt;status-unidentifiable&lt;/legisinfo:statustext&gt;
                      &lt;/legisinfo:status&gt;
                 &lt;/cttr:legisinfo&gt;
         &lt;cttr:consideredlegis&gt;
&lt;cttr:refitem&gt;
        
      </codeblock>
    </example>
    
    <section>
      <title><sourcexml>cttr:annot/leg:info/leg:officialnum</sourcexml> to <targetxml>cttr:consideredlegis/cttr:legisinfo/primlawinfo:primlawinfo/primlawinfo:identifier/@idtype="officialnum"</targetxml> </title>
      <ul>
        <li>
      <p><sourcexml>cttr:annot/leg:info/leg:officialnum</sourcexml> becomes <targetxml>cttr:consideredlegis/cttr:legisinfo/primlawinfo:primlawinfo/primlawinfo:identifier/@idtype="officialnum"</targetxml></p></li>
      <li><p><sourcexml>cttr:annot/leg:info/leg:officialnum/leg:seriesnum</sourcexml> becomes <targetxml>cttr:consideredlegis/cttr:legisinfo/primlawinfo:primlawinfo/primlawinfo:identifier/primlawinfo:identifier-component/@type="seriesnum"</targetxml></p></li>
      </ul>
    </section>
    <example>
      <lines>Source XML</lines>
      <codeblock>
        
&lt;cttr:annot&gt;
    &lt;leg:info&gt;
        &lt;leg:officialnum&gt;
            &lt;leg:seriesnum&gt;4150&lt;/leg:seriesnum&gt;
        &lt;/leg:officialnum&gt;
    &lt;/leg:info&gt;
&lt;/cttr:annot&gt;
        
      </codeblock>
      <lines>Target XML</lines>
      <codeblock>

&lt;cttr:refitem&gt;
          &lt;cttr:consideredlegis&gt;
              
                 &lt;cttr:legisinfo&gt;
                     &lt;primlawinfo:primlawinfo&gt;
                         &lt;primlawinfo:identifier idtype="officialnum"&gt;
                                &lt;primlawinfo:identifier-component type="seriesnum"&gt;4150&lt;/primlawinfo:identifier-component&gt;
                         &lt;primlawinfo:identifier&gt;
                     &lt;/primlawinfo:primlawinfo&gt;
                 &lt;/cttr:legisinfo&gt;
         &lt;cttr:consideredlegis&gt;
&lt;cttr:refitem&gt;

      </codeblock>
    </example>
    
    <section><title><sourcexml>cttr:annot/leg:info/leg:officialnum/leg:year</sourcexml> to <targetxml>cttr:consideredlegis/cttr:legisinfo/primlawinfo:primlawinfo/primlawinfo:dates/primlawinfo:enactdate</targetxml></title>
      <ul>
        <li><p>Content of <sourcexml>cttr:annot/leg:info/leg:officialnum/leg:year</sourcexml> becomes
          <targetxml>cttr:consideredlegis/cttr:legisinfo/primlawinfo:primlawinfo/primlawinfo:dates/primlawinfo:enactdate/@year</targetxml></p>
        </li>
      </ul>
    </section>
    <example>
      <lines>Source XML</lines>
      <codeblock>
        
&lt;cttr:annot&gt;
    &lt;leg:info&gt;
        &lt;leg:officialnum&gt;
            ......
            &lt;leg:year&gt;2001&lt;/leg:year&gt;
        &lt;/leg:officialnum&gt;
    &lt;/leg:info&gt;
&lt;/cttr:annot&gt;
        
      </codeblock>
      <lines>Target XML</lines>
      <codeblock>
        
  &lt;cttr:refitem&gt;
          &lt;cttr:consideredlegis&gt;
              
                 &lt;cttr:legisinfo&gt;
                     &lt;primlawinfo:primlawinfo&gt;
                         &lt;primlawinfo:dates&gt;
                             &lt;primlawinfo:enactdate year="2001"&gt;&lt;/primlawinfo:enactdate&gt;
                         &lt;/primlawinfo:dates&gt;
                     &lt;/primlawinfo:primlawinfo&gt;
                 &lt;/cttr:legisinfo&gt;
         &lt;cttr:consideredlegis&gt;
&lt;cttr:refitem&gt;      
        
      </codeblock>
    </example>
    
    <section>
      <title><sourcexml>cttr:annot/leg:info/leg:history</sourcexml> to
          <targetxml>cttr:consideredlegis/cttr:legisinfo/primlawhist:primlawhist</targetxml>
      </title>
      <p><sourcexml>cttr:annot/leg:info/leg:history</sourcexml> becomes
          <targetxml>cttr:consideredlegis/cttr:legisinfo/primlawhist:primlawhist</targetxml> and
        it's children</p>
      <ul>
        <li><p>Content of <sourcexml>leg:history/leg:change/leg:changereason</sourcexml> becomes
          <targetxml>cttr:consideredlegis/cttr:legisinfo/primlawhist:primlawhist/primlawhist:histgrp/primlawhist:histitem/bodytext/p/text</targetxml></p></li>
        <li><p><sourcexml>leg:history/leg:change/leg:whatchanged/p/text</sourcexml> becomes
          <targetxml>cttr:consideredlegis/cttr:legisinfo/primlawhist:primlawhist/primlawhist:histgrp/primlawhist:histitem/bodytext</targetxml></p></li>
      </ul>
      
      
    </section>
    <example>
      <lines>Source XML</lines>
      <codeblock>
        
          
        
&lt;cttr:annotations annotationtype="leg-effect" leg-signal="status-unidentifiable"&gt;
        &lt;cttr:annot leg-signal="no-longer-in-force"&gt;
          &lt;leg:info&gt;
               &lt;leg:history&gt;
              &lt;leg:change&gt;
                &lt;leg:changereason&gt;rep by&lt;/leg:changereason&gt;
                &lt;leg:whatchanged&gt;
                  &lt;p&gt;
                    &lt;text&gt;
                      &lt;ci:cite searchtype="LEG-REF" status="valid"&gt;
                        &lt;ci:sesslaw&gt;
                          &lt;ci:sesslawinfo&gt;
                            &lt;ci:sesslawnum num="2005_5a"/&gt;
                            &lt;ci:hierpinpoint&gt;
                              &lt;ci:hierlev label="section" num="882"/&gt;
                            &lt;/ci:hierpinpoint&gt;
                          &lt;/ci:sesslawinfo&gt;
                          &lt;ci:sesslawref&gt;
                            &lt;ci:standardname normpubcode="UK_ACTS"/&gt;
                          &lt;/ci:sesslawref&gt;
                        &lt;/ci:sesslaw&gt;
                        &lt;ci:content&gt;Income Tax (Trading and Other Income) Act 2005, ss
                          882(1)&lt;/ci:content&gt;
                      &lt;/ci:cite&gt;, &lt;ci:cite searchtype="LEG-REF" status="valid"&gt;
                        &lt;ci:sesslaw&gt;
                          &lt;ci:sesslawinfo&gt;
                            &lt;ci:sesslawnum num="2005_5a"/&gt;
                            &lt;ci:hierpinpoint&gt;
                              &lt;ci:hierlev label="section" num="884"/&gt;
                            &lt;/ci:hierpinpoint&gt;
                          &lt;/ci:sesslawinfo&gt;
                          &lt;ci:sesslawref&gt;
                            &lt;ci:standardname normpubcode="UK_ACTS"/&gt;
                          &lt;/ci:sesslawref&gt;
                        &lt;/ci:sesslaw&gt;
                        &lt;ci:content&gt;884&lt;/ci:content&gt;
                      &lt;/ci:cite&gt;, &lt;ci:cite searchtype="LEG-REF" status="valid"&gt;
                        &lt;ci:sesslaw&gt;
                          &lt;ci:sesslawinfo&gt;
                            &lt;ci:sesslawnum num="2005_5a"/&gt;
                            &lt;ci:hierpinpoint&gt;
                              &lt;ci:hierlev label="schedule" num="1"/&gt;
                            &lt;/ci:hierpinpoint&gt;
                            &lt;ci:hierpinpoint&gt;
                              &lt;ci:hierlev label="part" num="2"/&gt;
                            &lt;/ci:hierpinpoint&gt;
                          &lt;/ci:sesslawinfo&gt;
                          &lt;ci:sesslawref&gt;
                            &lt;ci:standardname normpubcode="UK_ACTS"/&gt;
                          &lt;/ci:sesslawref&gt;
                        &lt;/ci:sesslaw&gt;
                        &lt;ci:content&gt;Sch 1, Pt 2, paras 511, 515&lt;/ci:content&gt;
                      &lt;/ci:cite&gt;–517, Sch 3&lt;/text&gt;
                  &lt;/p&gt;
                &lt;/leg:whatchanged&gt;
                &lt;leg:whatchanged&gt;
                  &lt;p&gt;
                    &lt;text&gt;[see &lt;lnlink refpt="enactmentNote_2000_17a_PtIII.ChII.85"&gt;
                        &lt;marker&gt;Amendment note&lt;/marker&gt;
                      &lt;/lnlink&gt;]&lt;/text&gt;
                  &lt;/p&gt;
                &lt;/leg:whatchanged&gt;
              &lt;/leg:change&gt;
            &lt;/leg:history&gt;
          &lt;/leg:info&gt;
        &lt;/cttr:annot&gt;
      &lt;/cttr:annotations&gt;
        
      </codeblock>
      <lines>Target XML</lines>
      <codeblock>
        
        &lt;cttr:consideredlegis&gt;
                        &lt;cttr:legisinfo&gt;
                            &lt;legisinfo:status&gt;
                                &lt;legisinfo:statustext&gt;no-longer-in-force&lt;/legisinfo:statustext&gt;
                            &lt;/legisinfo:status&gt;
                            &lt;primlawhist:primlawhist&gt;
                                &lt;primlawhist:histgrp&gt;
                                    &lt;primlawhist:histitem&gt;
                                        &lt;bodytext&gt;
                                            &lt;p&gt;
                                                &lt;text&gt;rep by&lt;/text&gt;
                                            &lt;/p&gt;
                                            &lt;p&gt;
                                                &lt;text&gt;
                                                  &lt;lnci:cite status="valid"&gt;
                                                  &lt;lnci:sesslaw&gt;
                                                  &lt;lnci:sesslawinfo&gt;
                                                  &lt;lnci:sesslawnum num="2005_5a"/&gt;
                                                  &lt;lnci:hierpinpoint&gt;
                                                  &lt;lnci:hierlev label="section" num="882"/&gt;
                                                  &lt;/lnci:hierpinpoint&gt;
                                                  &lt;/lnci:sesslawinfo&gt;
                                                  &lt;lnci:sesslawref&gt;
                                                  &lt;lnci:standardname normpubcode="UK_ACTS"/&gt;
                                                  &lt;/lnci:sesslawref&gt;
                                                  &lt;/lnci:sesslaw&gt;
                                                  &lt;lnci:content&gt;Income Tax (Trading and Other
                                                  Income) Act 2005, ss 882(1)&lt;/lnci:content&gt;
                                                  &lt;/lnci:cite&gt;, &lt;lnci:cite status="valid"&gt;
                                                  &lt;lnci:sesslaw&gt;
                                                  &lt;lnci:sesslawinfo&gt;
                                                  &lt;lnci:sesslawnum num="2005_5a"/&gt;
                                                  &lt;lnci:hierpinpoint&gt;
                                                  &lt;lnci:hierlev label="section" num="884"/&gt;
                                                  &lt;/lnci:hierpinpoint&gt;
                                                  &lt;/lnci:sesslawinfo&gt;
                                                  &lt;lnci:sesslawref&gt;
                                                  &lt;lnci:standardname normpubcode="UK_ACTS"/&gt;
                                                  &lt;/lnci:sesslawref&gt;
                                                  &lt;/lnci:sesslaw&gt;
                                                  &lt;lnci:content&gt;884&lt;/lnci:content&gt;
                                                  &lt;/lnci:cite&gt;, &lt;lnci:cite status="valid"&gt;
                                                  &lt;lnci:sesslaw&gt;
                                                  &lt;lnci:sesslawinfo&gt;
                                                  &lt;lnci:sesslawnum num="2005_5a"/&gt;
                                                  &lt;lnci:hierpinpoint&gt;
                                                  &lt;lnci:hierlev label="schedule" num="1"/&gt;
                                                  &lt;/lnci:hierpinpoint&gt;
                                                  &lt;lnci:hierpinpoint&gt;
                                                  &lt;lnci:hierlev label="part" num="2"/&gt;
                                                  &lt;/lnci:hierpinpoint&gt;
                                                  &lt;/lnci:sesslawinfo&gt;
                                                  &lt;lnci:sesslawref&gt;
                                                  &lt;lnci:standardname normpubcode="UK_ACTS"/&gt;
                                                  &lt;/lnci:sesslawref&gt;
                                                  &lt;/lnci:sesslaw&gt;
                                                  &lt;lnci:content&gt;Sch 1, Pt 2, paras 511,
                                                  515&lt;/lnci:content&gt;
                                                  &lt;/lnci:cite&gt;–517, Sch 3
                                               &lt;/text&gt;
                                            &lt;/p&gt;
                                            &lt;p&gt;
                                                &lt;text&gt;[see &lt;ref:lnlink service="DOCUMENT"&gt;
                                                  &lt;ref:marker&gt;Amendment note&lt;/ref:marker&gt;
                                                  &lt;ref:locator&gt;
                                                  &lt;ref:locator-key&gt;
                                                  &lt;ref:key-name name="DOC-ID"/&gt;
                                                  &lt;ref:key-value
                                                  value="enactmentNote_2000_17a_PtIII.ChII.85"/&gt;
                                                  &lt;/ref:locator-key&gt;
                                                  &lt;/ref:locator&gt; &lt;/ref:lnlink&gt;&lt;/text&gt;
                                            &lt;/p&gt;
                                        &lt;/bodytext&gt;
                                    &lt;/primlawhist:histitem&gt;
                                &lt;/primlawhist:histgrp&gt;
                            &lt;/primlawhist:primlawhist&gt;
                        &lt;/cttr:legisinfo&gt;
                    &lt;/cttr:consideredlegis&gt;
        
        
      </codeblock>
    </example>
    <section>
      <ul>
        <li><sourcexml>leg:history/leg:histinfo</sourcexml> becomes  <targetxml>cttr:consideredlegis/cttr:legisinfo/primlawhist:primlawhist/primlawhist:histgrp</targetxml></li>
        <li>Content of <sourcexml>leg:history/leg:histinfo/leg:relatedleg</sourcexml> becomes
            <targetxml>cttr:consideredlegis/cttr:legisinfo/primlawhist:primlawhist/primlawhist:histgrp/primlawhist:histitem/textitem</targetxml></li>
        <li><sourcexml>leg:history/leg:histinfo/leg:relatedleg/@type</sourcexml> is dropped</li>
      </ul>
    </section>
    <example>
      <lines>Source XML</lines>
      <codeblock>
        
&lt;leg:history&gt;
           &lt;leg:histinfo&gt;
                &lt;leg:relatedleg type="parent"&gt;Enabling powers:
                  &lt;ci:cite searchtype="LEG-REF" status="valid"&gt;
                    &lt;ci:sesslaw&gt;
                      &lt;ci:sesslawinfo&gt;
                        &lt;ci:sesslawnum num="1972_68a"/&gt;
                        &lt;ci:hierpinpoint&gt;
                        &lt;ci:hierlev label="section" num="1"/&gt;
                        &lt;/ci:hierpinpoint&gt;
                      &lt;/ci:sesslawinfo&gt;
                      &lt;ci:sesslawref&gt;
                        &lt;ci:standardname normpubcode="UK_ACTS"/&gt;
                      &lt;/ci:sesslawref&gt;
                  &lt;/ci:sesslaw&gt;
                  &lt;ci:content&gt;European Communities Act 1972, s 1&lt;/ci:content&gt;
               &lt;/ci:cite&gt;.
            &lt;/leg:relatedleg&gt;
         &lt;/leg:histinfo&gt;
&lt;/leg:history&gt;
        
      </codeblock>
    </example>
    <lines>Target XML</lines>
    <codeblock>
      
&lt;primlawhist:primlawhist&gt;
         &lt;primlawhist:histgrp&gt;
            &lt;primlawhist:histitem&gt;
               &lt;textitem&gt;
                    Enabling powers:
                         &lt;lnci:cite status="valid"&gt;
                           &lt;lnci:sesslaw&gt;
                              &lt;lnci:sesslawinfo&gt;
                                &lt;lnci:sesslawnum num="1972_68a"/&gt;
                                &lt;lnci:hierpinpoint&gt;
                                    &lt;lnci:hierlev label="section" num="1"/&gt;
                                &lt;/lnci:hierpinpoint&gt;
                             &lt;/lnci:sesslawinfo&gt;
                             &lt;lnci:sesslawref&gt;
                                 &lt;lnci:standardname normpubcode="UK_ACTS"/&gt;
                             &lt;/lnci:sesslawref&gt;
                        &lt;/lnci:sesslaw&gt;
                       &lt;lnci:content&gt;European Communities Act 1972, s 1&lt;/lnci:content&gt;
                  &lt;/lnci:cite&gt;.
             &lt;/textitem&gt;
          &lt;/primlawhist:histitem&gt;
        &lt;/primlawhist:histgrp&gt;
&lt;/primlawhist:primlawhist&gt;

    </codeblock>
    <section>
      <title><sourcexml>leg:history/leg:histinfo/leg:dates</sourcexml> to <targetxml>cttr:legisinfo/primlawinfo:primlawinfo/primlawinfo:dates</targetxml></title>
      <ul>
        <li>
      <p><sourcexml>leg:history/leg:histinfo/leg:dates</sourcexml> becomes <targetxml>cttr:legisinfo/primlawinfo:primlawinfo/primlawinfo:dates</targetxml></p></li>
      <li><p><sourcexml>leg:history/leg:histinfo/leg:dates/leg:effdate</sourcexml> becomes <targetxml>cttr:legisinfo/primlawinfo:primlawinfo/primlawinfo:dates/primlawinfo:effdate</targetxml></p></li>
      <li><p><sourcexml>leg:history/leg:histinfo/leg:dates/leg:effdate/date</sourcexml> becomes
          <targetxml>cttr:legisinfo/primlawinfo:primlawinfo/primlawinfo:dates/primlawinfo:effdate/date-text</targetxml></p><ul>
            
        <li><p><sourcexml>leg:effdate/date/@day</sourcexml> becomes
                  <targetxml>primlawinfo:effdate/@day</targetxml></p></li>
      <li><p><sourcexml>leg:effdate/date/@month</sourcexml> becomes
                  <targetxml>primlawinfo:effdate/@month</targetxml></p></li>
      <li><p><sourcexml>leg:effdate/date/@year</sourcexml> becomes
                  <targetxml>primlawinfo:effdate/@year</targetxml></p></li></ul>
      </li></ul>
    </section>
    <example>
      <lines>Source XML</lines>
     <codeblock>
      
&lt;leg:history&gt;
          &lt;leg:histinfo&gt;
             &lt;leg:dates&gt;
               &lt;leg:effdate&gt;
                    &lt;date day="05" month="04" year="2011"&gt;5 Apr 2011&lt;/date&gt;
               &lt;/leg:effdate&gt;
             &lt;/leg:dates&gt;
          &lt;/leg:histinfo&gt;
&lt;/leg:history&gt;
      
      </codeblock>
      <lines>Target XML</lines>
      <codeblock>
        
        &lt;cttr:consideredlegis&gt;
                 &lt;cttr:legisinfo&gt;
                     &lt;primlawinfo:primlawinfo&gt;
                         &lt;primlawinfo:dates&gt;
                             &lt;primlawinfo:effdate day="05" month="04" year="2011"&gt;
                               &lt;date-text&gt;5 Apr 2011&lt;/date-text&gt;
                              &lt;/primlawinfo:effdate/&gt;
                         &lt;/primlawinfo:dates&gt;
                     &lt;/primlawinfo:primlawinfo&gt;
                 &lt;/cttr:legisinfo&gt;
         &lt;cttr:consideredlegis&gt;
         
      </codeblock>
    </example>
    
    <section><sourcexml>cttr:annot/leg:info/note</sourcexml> to <targetxml>cttr:consideredlegis/cttr:legisinfo/primlawhist:primlawhist/primlawhist:histgrp/primlawhist:histitem/bodytext/note</targetxml>
    <p><sourcexml>cttr:annot/leg:info/note</sourcexml> becomes <targetxml>cttr:consideredlegis/cttr:legisinfo/primlawhist:primlawhist/primlawhist:histgrp/primlawhist:histitem/bodytext/note</targetxml></p>
    <p><sourcexml>note/@notetype</sourcexml> becomes <targetxml>note/@notetype</targetxml></p>
      <p>Content of <sourcexml>note</sourcexml> becomes <targetxml>note/bodytext/p/text</targetxml></p></section>
    <example>
      <lines>Source XML</lines>
      <codeblock>
        
        
&lt;cttr:annot&gt;
       &lt;leg:info&gt;
            &lt;note notetype="commentary"&gt;
              &lt;p&gt;
                &lt;text&gt;Not replaced by &lt;ci:cite searchtype="LEG-REF" status="valid"&gt;
                    &lt;ci:sesslaw&gt;
                      &lt;ci:sesslawinfo&gt;
                        &lt;ci:sesslawnum num="2005_5a_Title"/&gt;
                      &lt;/ci:sesslawinfo&gt;
                      &lt;ci:sesslawref&gt;
                        &lt;ci:standardname normpubcode="UK_ACTS"/&gt;
                      &lt;/ci:sesslawref&gt;
                    &lt;/ci:sesslaw&gt;
                    &lt;ci:content&gt;ITTOIA 2005&lt;/ci:content&gt;
                  &lt;/ci:cite&gt;. Commencement.&lt;/text&gt;
              &lt;/p&gt;
            &lt;/note&gt;
       &lt;/leg:info&gt;
&lt;/cttr:annot&gt;
        
      </codeblock>
      <lines>Target XML</lines>
      <codeblock>
        
&lt;primlawhist:primlawhist&gt;
        &lt;primlawhist:histgrp&gt;
             &lt;primlawhist:histitem&gt;
               &lt;bodytext&gt;
                  &lt;note notetype="commentary"&gt;
                  &lt;bodytext&gt;
                    &lt;p&gt;
                      &lt;text&gt;Not replaced by &lt;ci:cite searchtype="LEG-REF" status="valid"&gt;
                        &lt;ci:sesslaw&gt;
                          &lt;ci:sesslawinfo&gt;
                          &lt;ci:sesslawnum num="2005_5a_Title"/&gt;
                        &lt;/ci:sesslawinfo&gt;
                        &lt;ci:sesslawref&gt;
                          &lt;ci:standardname normpubcode="UK_ACTS"/&gt;
                        &lt;/ci:sesslawref&gt;
                      &lt;/ci:sesslaw&gt;
                    &lt;ci:content&gt;ITTOIA 2005&lt;/ci:content&gt;
                     &lt;/ci:cite&gt;. Commencement.&lt;/text&gt;
                    &lt;/p&gt;
                  &lt;/bodytext&gt;
              &lt;/note&gt;
            &lt;/bodytext&gt;
        &lt;/primlawhist:histitem&gt;
      &lt;/primlawhist:histgrp&gt;
&lt;/primlawhist:primlawhist&gt;
        
      </codeblock>
    </example>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK16_LegislativeCitator\cttr.annotation.dita  -->
	<xsl:message>cttr.annotation.xsl requires manual development!</xsl:message> 

	<xsl:template match="cttr:annotations"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:refsection   -->
		<cttr:refsection>
			<xsl:apply-templates select="@* | node()"/>
		</cttr:refsection>

	</xsl:template>

	<xsl:template match="cttr:annotations/@annotationtype=&#34;leg-effect&#34;"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:refs/cttr:refsection/@reftype="considered-legislation"   -->
		<cttr:refs>
			<cttr:refsection>
				<xsl:attribute name="reftype">
					<xsl:text>considered-legislation</xsl:text>
				</xsl:attribute>
			</cttr:refsection>
		</cttr:refs>

	</xsl:template>

	<xsl:template match="cttr:annotations/@annotationtype=&#34;leg-destination&#34;"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:refs/cttr:refsection/@reftype="considered-legislation"   -->
		<cttr:refs>
			<cttr:refsection>
				<xsl:attribute name="reftype">
					<xsl:text>considered-legislation</xsl:text>
				</xsl:attribute>
			</cttr:refsection>
		</cttr:refs>

	</xsl:template>

	<xsl:template match="cttr:annotations/@leg-signal"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  ref:refitem   -->
		<ref:refitem>
			<xsl:apply-templates select="@* | node()"/>
		</ref:refitem>

	</xsl:template>

	<xsl:template match="cttr:annot"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  ref:refitem   -->
		<ref:refitem>
			<xsl:apply-templates select="@* | node()"/>
		</ref:refitem>

	</xsl:template>

	<xsl:template match="@leg-signal"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  ref:refitem   -->
		<ref:refitem>
			<xsl:apply-templates select="@* | node()"/>
		</ref:refitem>

	</xsl:template>

	<xsl:template match="cttr:annotations/annot"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  ref:refitem   -->
		<ref:refitem>
			<xsl:apply-templates select="@* | node()"/>
		</ref:refitem>

	</xsl:template>

	<xsl:template match="annot/@leg:signal"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:refs/cttr:refsection/cttr:refitem/cttr:consideredlegis/cttr:legisinfo/legisinfo:status/legisinfo:statustext   -->
		<cttr:refs>
			<cttr:refsection>
				<cttr:refitem>
					<cttr:consideredlegis>
						<cttr:legisinfo>
							<legisinfo:status xmlns:legisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/legislation-info/1/">
								<legisinfo:statustext>
									<xsl:apply-templates select="@* | node()"/>
								</legisinfo:statustext>
							</legisinfo:status>
						</cttr:legisinfo>
					</cttr:consideredlegis>
				</cttr:refitem>
			</cttr:refsection>
		</cttr:refs>

	</xsl:template>

	<xsl:template match="cttr:content/cttr:annotations/cttr:annot/leg:info"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:refitem/cttr:consideredlegis   -->
		<cttr:refitem>
			<cttr:consideredlegis>
				<xsl:apply-templates select="@* | node()"/>
			</cttr:consideredlegis>
		</cttr:refitem>

	</xsl:template>

	<xsl:template match="cttr:annot/leg:info/leg:hier"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:refitem/cttr:consideredlegis/cttr:legiscomponents   -->
		<cttr:refitem>
			<cttr:consideredlegis>
				<cttr:legiscomponents>
					<xsl:apply-templates select="@* | node()"/>
				</cttr:legiscomponents>
			</cttr:consideredlegis>
		</cttr:refitem>

	</xsl:template>

	<xsl:template match="cttr:annot/leg:info/leg:hier/leg:hierlev"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:refitem/cttr:consideredlegis/cttr:legiscomponents/cttr:legiscomponent/desig   -->
		<cttr:refitem>
			<cttr:consideredlegis>
				<cttr:legiscomponents>
					<cttr:legiscomponent>
						<desig>
							<xsl:apply-templates select="@* | node()"/>
						</desig>
					</cttr:legiscomponent>
				</cttr:legiscomponents>
			</cttr:consideredlegis>
		</cttr:refitem>

	</xsl:template>

	<xsl:template match="leg:hier/leg:hierlev/@leveltype"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:legiscomponents/cttr:legiscomponent/[@componenttype]   -->
		<cttr:legiscomponents>
			<cttr:legiscomponent>
				<!--  Could not determine target element or attribute name:  <[@componenttype]>  -->					<xsl:apply-templates select="@* | node()"/>
				<!--  Could not determine target element or attribute name:  </[@componenttype]>  -->
			</cttr:legiscomponent>
		</cttr:legiscomponents>

	</xsl:template>

	<xsl:template match="cttr:annot/leg:info/leg:hier/leg:hierlev/@value"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:refitem/cttr:consideredlegis/cttr:legiscomponents/cttr:legiscomponent/desig   -->
		<cttr:refitem>
			<cttr:consideredlegis>
				<cttr:legiscomponents>
					<cttr:legiscomponent>
						<desig>
							<xsl:apply-templates select="@* | node()"/>
						</desig>
					</cttr:legiscomponent>
				</cttr:legiscomponents>
			</cttr:consideredlegis>
		</cttr:refitem>

	</xsl:template>

	<xsl:template match="cttr:annot/leg:info/leg:hier-range"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:refitem/cttr:consideredlegis/cttr:legiscomponents   -->
		<cttr:refitem>
			<cttr:consideredlegis>
				<cttr:legiscomponents>
					<xsl:apply-templates select="@* | node()"/>
				</cttr:legiscomponents>
			</cttr:consideredlegis>
		</cttr:refitem>

	</xsl:template>

	<xsl:template match="cttr:annot/leg:info/leg:hier-range/leg:hier-range-text"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:refitem/cttr:consideredlegis/cttr:legiscomponents/cttr:legiscomponent/desigrange   -->
		<cttr:refitem>
			<cttr:consideredlegis>
				<cttr:legiscomponents>
					<cttr:legiscomponent>
						<desigrange>
							<xsl:apply-templates select="@* | node()"/>
						</desigrange>
					</cttr:legiscomponent>
				</cttr:legiscomponents>
			</cttr:consideredlegis>
		</cttr:refitem>

	</xsl:template>

	<xsl:template match="leg:hier-range-text/@leveltype"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:legiscomponents/cttr:legiscomponent/desigrange/@firstvalue   -->
		<cttr:legiscomponents>
			<cttr:legiscomponent>
				<desigrange>
					<xsl:attribute name="firstvalue">
						<xsl:apply-templates select="node()"/>
					</xsl:attribute>
				</desigrange>
			</cttr:legiscomponent>
		</cttr:legiscomponents>

	</xsl:template>

	<xsl:template match="leg:hier-range-text/@firstvalue"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:legiscomponents/cttr:legiscomponent/desigrange/@firstvalue   -->
		<cttr:legiscomponents>
			<cttr:legiscomponent>
				<desigrange>
					<xsl:attribute name="firstvalue">
						<xsl:apply-templates select="node()"/>
					</xsl:attribute>
				</desigrange>
			</cttr:legiscomponent>
		</cttr:legiscomponents>

	</xsl:template>

	<xsl:template match="leg:hier-range-text/@lastvalue"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:legiscomponents/cttr:legiscomponent/desigrange/@lastvalue   -->
		<cttr:legiscomponents>
			<cttr:legiscomponent>
				<desigrange>
					<xsl:attribute name="lastvalue">
						<xsl:apply-templates select="node()"/>
					</xsl:attribute>
				</desigrange>
			</cttr:legiscomponent>
		</cttr:legiscomponents>

	</xsl:template>

	<xsl:template match="cttr:annot/leg:info/leg:hier-range/leg:hierlev"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:legiscomponents/cttr:legiscomponent/desig   -->
		<cttr:legiscomponents>
			<cttr:legiscomponent>
				<desig>
					<xsl:apply-templates select="@* | node()"/>
				</desig>
			</cttr:legiscomponent>
		</cttr:legiscomponents>

	</xsl:template>

	<xsl:template match="cttr:annot/leg:info/leg:hier-range/leg:hierlev/@leveltype"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:legiscomponents/cttr:legiscomponent/@componenttype   -->
		<cttr:legiscomponents>
			<cttr:legiscomponent>
				<xsl:attribute name="componenttype">
					<xsl:apply-templates select="node()"/>
				</xsl:attribute>
			</cttr:legiscomponent>
		</cttr:legiscomponents>

	</xsl:template>

	<xsl:template match="cttr:annot/leg:info/leg:officialname"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:refitem/cttr:consideredlegis/legisinfo:names/legisinfo:officialtitle   -->
		<cttr:refitem>
			<cttr:consideredlegis>
				<legisinfo:names xmlns:legisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/legislation-info/1/">
					<legisinfo:officialtitle>
						<xsl:apply-templates select="@* | node()"/>
					</legisinfo:officialtitle>
				</legisinfo:names>
			</cttr:consideredlegis>
		</cttr:refitem>

	</xsl:template>

	<xsl:template match="leg:hier/leg:hierlev"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:consideredlegis/legisinfo:names/legisinfo:officialtitle   -->
		<cttr:consideredlegis>
			<legisinfo:names xmlns:legisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/legislation-info/1/">
				<legisinfo:officialtitle>
					<xsl:apply-templates select="@* | node()"/>
				</legisinfo:officialtitle>
			</legisinfo:names>
		</cttr:consideredlegis>

	</xsl:template>

	<xsl:template match="cttr:annot/leg:info/leg:hier/leg:hierlev[1]"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:refitem/cttr:consideredlegis/legisinfo:names/legisinfo:officialtitle   -->
		<cttr:refitem>
			<cttr:consideredlegis>
				<legisinfo:names xmlns:legisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/legislation-info/1/">
					<legisinfo:officialtitle>
						<xsl:apply-templates select="@* | node()"/>
					</legisinfo:officialtitle>
				</legisinfo:names>
			</cttr:consideredlegis>
		</cttr:refitem>

	</xsl:template>

	<xsl:template match="cttr:body/leg:info/leg:officialname"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:refitem/cttr:consideredlegis/legisinfo:names/legisinfo:officialtitle   -->
		<cttr:refitem>
			<cttr:consideredlegis>
				<legisinfo:names xmlns:legisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/legislation-info/1/">
					<legisinfo:officialtitle>
						<xsl:apply-templates select="@* | node()"/>
					</legisinfo:officialtitle>
				</legisinfo:names>
			</cttr:consideredlegis>
		</cttr:refitem>

	</xsl:template>

	<xsl:template match="cttr:annot/leg:info/leg:officialnum"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:consideredlegis/cttr:legisinfo/primlawinfo:primlawinfo/primlawinfo:identifier/@idtype="officialnum"   -->
		<cttr:consideredlegis>
			<cttr:legisinfo>
				<primlawinfo:primlawinfo>
					<primlawinfo:identifier>
						<xsl:attribute name="idtype">
							<xsl:text>officialnum</xsl:text>
						</xsl:attribute>
					</primlawinfo:identifier>
				</primlawinfo:primlawinfo>
			</cttr:legisinfo>
		</cttr:consideredlegis>

	</xsl:template>

	<xsl:template match="cttr:annot/leg:info/leg:officialnum/leg:seriesnum"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:consideredlegis/cttr:legisinfo/primlawinfo:primlawinfo/primlawinfo:identifier/primlawinfo:identifier-component/@type="seriesnum"   -->
		<cttr:consideredlegis>
			<cttr:legisinfo>
				<primlawinfo:primlawinfo>
					<primlawinfo:identifier>
						<primlawinfo:identifier-component>
							<xsl:attribute name="type">
								<xsl:text>seriesnum</xsl:text>
							</xsl:attribute>
						</primlawinfo:identifier-component>
					</primlawinfo:identifier>
				</primlawinfo:primlawinfo>
			</cttr:legisinfo>
		</cttr:consideredlegis>

	</xsl:template>

	<xsl:template match="cttr:annot/leg:info/leg:officialnum/leg:year"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:consideredlegis/cttr:legisinfo/primlawinfo:primlawinfo/primlawinfo:dates/primlawinfo:enactdate   -->
		<cttr:consideredlegis>
			<cttr:legisinfo>
				<primlawinfo:primlawinfo>
					<primlawinfo:dates>
						<primlawinfo:enactdate>
							<xsl:apply-templates select="@* | node()"/>
						</primlawinfo:enactdate>
					</primlawinfo:dates>
				</primlawinfo:primlawinfo>
			</cttr:legisinfo>
		</cttr:consideredlegis>

	</xsl:template>

	<xsl:template match="cttr:annot/leg:info/leg:history"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:consideredlegis/cttr:legisinfo/primlawhist:primlawhist   -->
		<cttr:consideredlegis>
			<cttr:legisinfo>
				<primlawhist:primlawhist xmlns:primlawhist="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-history/1/">
					<xsl:apply-templates select="@* | node()"/>
				</primlawhist:primlawhist>
			</cttr:legisinfo>
		</cttr:consideredlegis>

	</xsl:template>

	<xsl:template match="leg:history/leg:change/leg:changereason"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:consideredlegis/cttr:legisinfo/primlawhist:primlawhist/primlawhist:histgrp/primlawhist:histitem/bodytext/p/text   -->
		<cttr:consideredlegis>
			<cttr:legisinfo>
				<primlawhist:primlawhist xmlns:primlawhist="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-history/1/">
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
			</cttr:legisinfo>
		</cttr:consideredlegis>

	</xsl:template>

	<xsl:template match="leg:history/leg:change/leg:whatchanged/p/text"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:consideredlegis/cttr:legisinfo/primlawhist:primlawhist/primlawhist:histgrp/primlawhist:histitem/bodytext   -->
		<cttr:consideredlegis>
			<cttr:legisinfo>
				<primlawhist:primlawhist xmlns:primlawhist="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-history/1/">
					<primlawhist:histgrp>
						<primlawhist:histitem>
							<bodytext>
								<xsl:apply-templates select="@* | node()"/>
							</bodytext>
						</primlawhist:histitem>
					</primlawhist:histgrp>
				</primlawhist:primlawhist>
			</cttr:legisinfo>
		</cttr:consideredlegis>

	</xsl:template>

	<xsl:template match="leg:history/leg:histinfo"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:consideredlegis/cttr:legisinfo/primlawhist:primlawhist/primlawhist:histgrp   -->
		<cttr:consideredlegis>
			<cttr:legisinfo>
				<primlawhist:primlawhist xmlns:primlawhist="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-history/1/">
					<primlawhist:histgrp>
						<xsl:apply-templates select="@* | node()"/>
					</primlawhist:histgrp>
				</primlawhist:primlawhist>
			</cttr:legisinfo>
		</cttr:consideredlegis>

	</xsl:template>

	<xsl:template match="leg:history/leg:histinfo/leg:relatedleg"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:consideredlegis/cttr:legisinfo/primlawhist:primlawhist/primlawhist:histgrp/primlawhist:histitem/textitem   -->
		<cttr:consideredlegis>
			<cttr:legisinfo>
				<primlawhist:primlawhist xmlns:primlawhist="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-history/1/">
					<primlawhist:histgrp>
						<primlawhist:histitem>
							<textitem>
								<xsl:apply-templates select="@* | node()"/>
							</textitem>
						</primlawhist:histitem>
					</primlawhist:histgrp>
				</primlawhist:primlawhist>
			</cttr:legisinfo>
		</cttr:consideredlegis>

	</xsl:template>

	<xsl:template match="leg:history/leg:histinfo/leg:relatedleg/@type"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:legisinfo/primlawinfo:primlawinfo/primlawinfo:dates   -->
		<cttr:legisinfo>
			<primlawinfo:primlawinfo>
				<primlawinfo:dates>
					<xsl:apply-templates select="@* | node()"/>
				</primlawinfo:dates>
			</primlawinfo:primlawinfo>
		</cttr:legisinfo>

	</xsl:template>

	<xsl:template match="leg:history/leg:histinfo/leg:dates"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:legisinfo/primlawinfo:primlawinfo/primlawinfo:dates   -->
		<cttr:legisinfo>
			<primlawinfo:primlawinfo>
				<primlawinfo:dates>
					<xsl:apply-templates select="@* | node()"/>
				</primlawinfo:dates>
			</primlawinfo:primlawinfo>
		</cttr:legisinfo>

	</xsl:template>

	<xsl:template match="leg:history/leg:histinfo/leg:dates/leg:effdate"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:legisinfo/primlawinfo:primlawinfo/primlawinfo:dates/primlawinfo:effdate   -->
		<cttr:legisinfo>
			<primlawinfo:primlawinfo>
				<primlawinfo:dates>
					<primlawinfo:effdate>
						<xsl:apply-templates select="@* | node()"/>
					</primlawinfo:effdate>
				</primlawinfo:dates>
			</primlawinfo:primlawinfo>
		</cttr:legisinfo>

	</xsl:template>

	<xsl:template match="leg:history/leg:histinfo/leg:dates/leg:effdate/date"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:legisinfo/primlawinfo:primlawinfo/primlawinfo:dates/primlawinfo:effdate/date-text   -->
		<cttr:legisinfo>
			<primlawinfo:primlawinfo>
				<primlawinfo:dates>
					<primlawinfo:effdate>
						<date-text>
							<xsl:apply-templates select="@* | node()"/>
						</date-text>
					</primlawinfo:effdate>
				</primlawinfo:dates>
			</primlawinfo:primlawinfo>
		</cttr:legisinfo>

	</xsl:template>

	<xsl:template match="leg:effdate/date/@day"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  primlawinfo:effdate/@day   -->
		<primlawinfo:effdate>
			<xsl:attribute name="day">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</primlawinfo:effdate>

	</xsl:template>

	<xsl:template match="leg:effdate/date/@month"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  primlawinfo:effdate/@month   -->
		<primlawinfo:effdate>
			<xsl:attribute name="month">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</primlawinfo:effdate>

	</xsl:template>

	<xsl:template match="leg:effdate/date/@year"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  primlawinfo:effdate/@year   -->
		<primlawinfo:effdate>
			<xsl:attribute name="year">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</primlawinfo:effdate>

	</xsl:template>

	<xsl:template match="cttr:annot/leg:info/note"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:consideredlegis/cttr:legisinfo/primlawhist:primlawhist/primlawhist:histgrp/primlawhist:histitem/bodytext/note   -->
		<cttr:consideredlegis>
			<cttr:legisinfo>
				<primlawhist:primlawhist xmlns:primlawhist="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-history/1/">
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
			</cttr:legisinfo>
		</cttr:consideredlegis>

	</xsl:template>

	<xsl:template match="note/@notetype"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  note/@notetype   -->
		<note>
			<xsl:attribute name="notetype">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</note>

	</xsl:template>

	<xsl:template match="note"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  note/bodytext/p/text   -->
		<note>
			<bodytext>
				<p>
					<text>
						<xsl:apply-templates select="@* | node()"/>
					</text>
				</p>
			</bodytext>
		</note>

	</xsl:template>

</xsl:stylesheet>