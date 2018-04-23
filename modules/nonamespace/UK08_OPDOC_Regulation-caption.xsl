<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:admindoc="urn:x-lexisnexis:content:administrative-document:sharedservices:1" version="2.0" exclude-result-prefixes="dita">
	
<dita:topic xmlns:ditaarch="http://dita.oasis-open.org/architecture/2005/"
       id="UK08_OPDOC_Regulation-caption.dita">
  
    <body>
        <section>
          <p>
            <sourcexml>caption</sourcexml> becomes <targetxml>caption</targetxml>.</p>
          <p> The content inside caption should be mapped to
                <targetxml>caption/p/text</targetxml>.in target. Refer below input and output.</p>
        </section>
          <example>
            
            <codeblock>

&lt;figure&gt;
    &lt;caption&gt;Head of PSL IP&amp;amp;IT&lt;/caption&gt;
 .........   
&lt;/figure&gt;


       </codeblock>
            
            <codeblock>   

&lt;figure&gt;
    &lt;caption&gt;
        &lt;p&gt;
            &lt;text&gt;Head of PSL IP&amp;amp;IT&lt;/text&gt;
        &lt;/p&gt;
    &lt;/caption&gt;
  .........  
&lt;/figure&gt;

	</codeblock>
        </example>
      <note> if Source document having multiple <sourcexml>caption</sourcexml>as siblings within
      parent <sourcexml>figure</sourcexml> then in target create only single
        <targetxml>caption</targetxml> within <targetxml>figure</targetxml> and multiple child
        <targetxml>p</targetxml> elements with the single <targetxml>caption</targetxml>. <p>Create
        one <targetxml>p/text</targetxml> element for each <sourcexml>caption</sourcexml>
        element.</p>
      </note>
      <example>
        
        <codeblock>

&lt;figure&gt;
    &lt;caption&gt;Figure 1&lt;/caption&gt;
    &lt;caption&gt;Typical sequence …&lt;/caption&gt;
    ............
&lt;/figure&gt;


       </codeblock>
        
        <codeblock>   

&lt;figure&gt;
    &lt;caption&gt;
        &lt;p&gt;
            &lt;text&gt;Figure 1&lt;/text&gt;
        &lt;/p&gt;
        &lt;p&gt;
            &lt;text&gt; Typical sequence …&lt;/text&gt;
        &lt;/p&gt;
    &lt;/caption&gt;  
   ............
&lt;/figure&gt;   

	</codeblock>
      </example>
      
        <section>
            
          <p>2017-04-27: <ph id="change_20170427_RS">Added instrucions and example for handling
            <sourcexml>caption</sourcexml> and added a note for handling multiple
            <sourcexml>caption</sourcexml> within <sourcexml>figure</sourcexml>.</ph>
         </p>
        </section>
    </body>
</dita:topic>
</xsl:stylesheet>