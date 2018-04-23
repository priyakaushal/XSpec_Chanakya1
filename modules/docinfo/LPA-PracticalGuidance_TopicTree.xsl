<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" xmlns:classify="http://www.lexisnexis.com/xmlschemas/content/shared/classification/1/" xmlns:seclaw="http://www.lexisnexis.com/xmlschemas/content/legal/secondary-law/1/" version="2.0" exclude-result-prefixes="dita docinfo">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="LPA-PracticalGuidance_TopicTree">
  <title>Topic Tree Document <lnpid>id-CCCC-10218</lnpid></title>
  <body>
    
    <section>
      <title>Instructions</title>
      <p>The content of <sourcexml>/commentarydoc/docinfo/docinfo:doc-id</sourcexml> needs to be queried to determine a proper value for
        <targetxml>seclaw:seclaw[@seclawtype]</targetxml>. 
        
        <sl>
                <sli>If <sourcexml>docinfo:selector</sourcexml> contains the following content 
                  <sourcexml>TopicTree - LandingPage</sourcexml> the value of <targetxml>seclaw:seclaw[@seclawtype]</targetxml> 
                  should be <targetxml>practicalguidance</targetxml>

                </sli>
          </sl>
      </p>
      
    </section>
    <example>
      <title>Source XML</title>
      <codeblock>

&lt;docinfo:doc-id&gt;TOPICTREE&lt;/docinfo:doc-id&gt;

          </codeblock>
    </example>
    <example>
      <title>Target XML</title>
      <codeblock>

&lt;seclaw:seclaw seclawtype="practicalguidance" ...&gt;

          </codeblock>
    </example>
    
    
    <section>
      <title>level[@leveltype] mapping</title>
      
      <p>Topic Tree documents contain multiple levels of hierarchy to group tabs within a practice area for the purposes of providing a visual display of topics and topics within
        a specific category (tab).</p>
      
      <p>When <sourcexml>level@leveltype</sourcexml> occurs the mapping to <targetxml>seclaw:level@leveltype</targetxml>. The mapping of terms should be as follows:
        
        <sl>
          
            <sli><sourcexml>level[@leveltype='sub-topic']</sourcexml> maps to <targetxml>seclaw:level[@leveltype='subtopic']</targetxml> </sli>
            <sli><sourcexml>level[@leveltype='topic']</sourcexml> maps to <targetxml>seclaw:level[@leveltype='topic']</targetxml> </sli>
          
            <sli><sourcexml>level[@leveltype='HOME']</sourcexml>, create an attribute <targetxml>seclaw:level[@leveltype='topictree']</targetxml> and 
                <targetxml>xml:id="HOME"</targetxml></sli>
        </sl>
          <sl> 
            <sli><sourcexml>level[@leveltype='OVERVIEW']</sourcexml>, <sourcexml>level[@leveltype='GUIDANCE']</sourcexml>,
            <sourcexml>level[@leveltype='COMMENTARY']</sourcexml>, <sourcexml>level[@leveltype='CASES']</sourcexml>, <sourcexml>level[@leveltype='LEGISLATION']</sourcexml>,
            <sourcexml>level[@leveltype='FORMS']</sourcexml>, <sourcexml>level[@leveltype='PRECEDENTS']</sourcexml>, <sourcexml>level[@leveltype='LATESTLEGALUPDATES']</sourcexml>,
              <sourcexml>level[@leveltype='OTHERRESOURCES']</sourcexml> maps to <targetxml>xml:id</targetxml> and 
              create an attribute <targetxml>seclaw:level[@leveltype='landingpage']</targetxml> for each.</sli> 
          
        </sl>
        
      </p>
        <p>
            
        </p>
      
    </section>
    
      <example>
          <title>Source XML</title>
      <codeblock>
        
        
...        
           &lt;level leveltype="HOME"&gt;
                &lt;levelinfo&gt;
                    &lt;classification ln.user-displayed="false"&gt;
                        &lt;classitem ln.user-displayed="false"&gt;
                            &lt;classitem-identifier&gt;
                                &lt;classname/&gt;
                                &lt;classcode&gt;#PA#FAM#&lt;/classcode&gt;
                            &lt;/classitem-identifier&gt;
                        &lt;/classitem&gt;
                    &lt;/classification&gt;
                &lt;/levelinfo&gt;
                &lt;heading&gt;
                    &lt;title&gt;Home&lt;/title&gt;
                &lt;/heading&gt;
...

                    &lt;level leveltype="sub-topic"&gt;
                        &lt;levelinfo&gt;
                            &lt;classification ln.user-displayed="false"&gt;
                                &lt;classitem ln.user-displayed="false"&gt;
                                    &lt;classitem-identifier&gt;
                                        &lt;classname&gt;74&lt;/classname&gt;
                                        &lt;classcode&gt;#LL000A2VO#&lt;/classcode&gt;
                                    &lt;/classitem-identifier&gt;
                                &lt;/classitem&gt;
                            &lt;/classification&gt;
                        &lt;/levelinfo&gt;
                        &lt;heading&gt;
                            &lt;title&gt;Jurisdiction&lt;/title&gt;
                        &lt;/heading&gt;                        
        
...
             &lt;level leveltype="OVERVIEW"&gt;
                &lt;levelinfo&gt;
                    &lt;classification ln.user-displayed="false"&gt;
                        &lt;classitem ln.user-displayed="false"&gt;
                            &lt;classitem-identifier&gt;
                                &lt;classname/&gt;
                                &lt;classcode&gt;#PA#FAM#&lt;/classcode&gt;
                            &lt;/classitem-identifier&gt;
                        &lt;/classitem&gt;
                    &lt;/classification&gt;
                &lt;/levelinfo&gt;
                &lt;heading&gt;
                    &lt;title&gt;Overview&lt;/title&gt;
                &lt;/heading&gt;
        
      </codeblock>
      </example>
      
      <example>
          <title>Target XML</title>
      <codeblock>
        

...
          &lt;seclaw:level leveltype="topictree" xml:id="HOME"&gt;
            &lt;seclaw:levelinfo&gt;
                &lt;classify:classification&gt;
                    &lt;classify:classitem&gt;
                        &lt;classify:classitem-identifier&gt;
                            &lt;classify:classname&gt;Family (AU) Home&lt;/classify:classname&gt;
                            &lt;classify:classcode&gt;#PA#FAM#&lt;/classify:classcode&gt;
                        &lt;/classify:classitem-identifier&gt;
                    &lt;/classify:classitem&gt;
                &lt;/classify:classification&gt;
            &lt;/seclaw:levelinfo&gt;
...                    

                &lt;seclaw:level leveltype="subtopic"&gt;
                    &lt;heading&gt;
                        &lt;title&gt;Jurisdiction&lt;/title&gt;
                    &lt;/heading&gt;
                    &lt;seclaw:levelinfo&gt;
                          &lt;classify:classification&gt;
                              &lt;classify:classitem&gt;
                                  &lt;classify:classitem-identifier&gt;
                                      &lt;classify:classname&gt;74&lt;/classify:classname&gt;
                                      &lt;classify:classcode&gt;#LL000A2VO#&lt;/classify:classcode&gt;
                                  &lt;/classify:classitem-identifier&gt;
                              &lt;/classify:classitem&gt;
                          &lt;/classify:classification&gt;
                    &lt;/seclaw:levelinfo&gt;
        
        
...
                &lt;seclaw:level leveltype="landingpage" xml:id="OVERVIEW"&gt;
                    &lt;heading&gt;
                        &lt;title&gt;Overview&lt;/title&gt;
                    &lt;/heading&gt;
                    &lt;seclaw:levelinfo&gt;
                        &lt;classify:classification&gt;
                            &lt;classify:classitem&gt;
                                &lt;classify:classitem-identifier&gt;
                                    &lt;classify:classname/&gt;
                                    &lt;classify:classcode&gt;#PA#FAM#&lt;/classify:classcode&gt;
                                &lt;/classify:classitem-identifier&gt;
                            &lt;/classify:classitem&gt;
                        &lt;/classify:classification&gt;
                    &lt;/seclaw:levelinfo&gt;  

        
      </codeblock>
    </example>    
    
    <section>
      <title>levelinfo/classification</title>
      <p>
        <sourcexml>levelinfo/classification</sourcexml> becomes <targetxml>seclaw:levelinfo/classify:classification</targetxml>. 
        The content of <sourcexml>classification</sourcexml> becomes the value for <targetxml>classify:classcode/@normval</targetxml>. A single 
        <targetxml>classify:classitem</targetxml> is created for each unique value of <targetxml>classification@classscheme</targetxml>. If there is no 
        classscheme value in the source, only 1 instance of classify:classification should be created. Within a single classify:classification element, multiple 
        <targetxml>classify:classitem</targetxml> are allowed. If multiple <sourcexml>classitem</sourcexml> elements are present, create 
        multiple <targetxml>classify:classitem</targetxml> elements.</p>
      
      <p>Drop attribute <sourcexml>ln.user-displayed</sourcexml> from converted content within classification (and child) elements.</p>
      
      <sl>
          <sli><sourcexml>classitem</sourcexml> becomes <targetxml>classify:classitem</targetxml></sli>
          
          <sli><sourcexml>classitem-identifier</sourcexml> becomes <targetxml>classify:classitem-identifier</targetxml></sli>
          
          <sli><sourcexml>classname</sourcexml> becomes <targetxml>classify:classname</targetxml></sli>
          
        <sli><sourcexml>classcode</sourcexml> becomes <targetxml>classify:classcode</targetxml>: Include classcode only when included in source content.</sli>
       
      </sl>
      
    </section>
    
    <example>
      <title>Source XML</title>
      <codeblock>
 &lt;level leveltype="topic"&gt;
            &lt;levelinfo&gt;
               &lt;classification ln.user-displayed="false"&gt;
                  &lt;classitem ln.user-displayed="false"&gt;
                     &lt;classitem-identifier&gt;
                        &lt;classname&gt;117&lt;/classname&gt;
                        &lt;classcode/&gt;
                     &lt;/classitem-identifier&gt;
                  &lt;/classitem&gt;
               &lt;/classification&gt;
            &lt;/levelinfo&gt;
            &lt;heading&gt;
               &lt;title&gt;Appeals&lt;/title&gt;
            &lt;/heading&gt; ... 
          </codeblock>
    </example>
    <example>
      <title>Target XML</title>
      <codeblock>
 &lt;seclaw:level leveltype="topic"&gt;
            &lt;heading&gt;
               &lt;title&gt;Appeals&lt;/title&gt;
            &lt;/heading&gt; ... 
            
             &lt;seclaw:levelinfo&gt;
                &lt;classify:classification&gt;
                    &lt;classify:classitem&gt;
                       &lt;classify:classitem-identifier&gt;
                          &lt;classify:classname&gt;117&lt;/classname&gt;
                             &lt;classify:classcode/&gt;
                       &lt;/classify:classitem-identifier&gt;
                    &lt;/classify:classitem&gt;
                &lt;/classify:classification&gt;
             &lt;/seclaw:levelinfo&gt;

          </codeblock>
    </example>
    
    
  </body>
	</dita:topic>


</xsl:stylesheet>