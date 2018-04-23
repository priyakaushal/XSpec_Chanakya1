<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="common_rosetta_blockquote_pnum">
    
    <!-- MDS 2017-05-15 - This module is not required since the handling is already in place in the Rosetta_pnum-LxAdv-desig.xsl module -->
    
    
    <!--  This module does NOT apply to the following CIs   
            AU_NZ-Legis_Index_Landing_Pages
            AU-Citator
            AU-Journal_Citators
            AU-Bill_Tracking 
    -->
    
    <!--  This module MAY  apply to these CI's please check with LBU to determine if this module should be in your CI
            AU/NZ Legislation Citators 	
            AU/NZ Legal Topic Summaries 
    -->
    
    <title><sourcexml>blockquote/pnum</sourcexml> to <targetxml>blockquote/p/desig</targetxml> <lnpid>id-CCCC-10433</lnpid></title>  
    <body>
        <section>
            <title>Instructions <i>[common element]</i></title>
                <p>When the element <sourcexml>pnum</sourcexml> occurs within the
                structure <sourcexml>blockquote/p/pnum</sourcexml> convert by adding the attribute
                    <targetxml>@inline=”true”</targetxml> on the element
                    <targetxml>desig</targetxml> for all  occurrences  of
                    <targetxml>blockquote/p/desig</targetxml>. </p>
        </section>
        <example>
            <title>Source XML</title>
            <codeblock>

&lt;blockquote&gt;
  &lt;p&gt;
	&lt;pnum count="39"&gt;[39]&lt;/pnum&gt;
	&lt;text&gt;
	 The case law reveals that there is a preferred approach to the determination of an application 
	 brough pursuant to the provisions of s 79. That approach involves four interrelated steps. Firstly,
	 the court should make findings as to the identity and value of the property, liabilities and financial resources
	 of the parties at the date of the hearing. 
	&lt;/text&gt;
  &lt;/p&gt;
&lt;/blockquote&gt;
  
  </codeblock>
        </example>
        <example>
            <title>Target XML</title>
            <codeblock>

&lt;blockquote&gt;
  &lt;p&gt;
  &lt;desig value="39" inline="true"&gt;[39]&lt;/desig&gt;
	&lt;text&gt;
	 The case law reveals that there is a preferred approach to the determination of an application 
	 brough pursuant to the provisions of s 79. That approach involves four interrelated steps. Firstly,
	 the court should make findings as to the identity and value of the property, liabilities and financial resources
	 of the parties at the date of the hearing. 
	&lt;/text&gt;
  &lt;/p&gt;
   &lt;/blockquote&gt;      
   
</codeblock>
        </example>
        <section>
            <title>Changes</title>
            <p>2012-09-11: Created.</p>
        </section>
    </body>
    
	</dita:topic>


                <!-- BRT: this rule seems unnecessary - it is already covered by the more generic rule in Rosetta_pnum-LxAdv-desig: 
                    create @inline='true' when no attribute value is present. The fact that the context is blockquote/p/pnum seems irrelevant to the conversion.-->  
              
                
            
</xsl:stylesheet>