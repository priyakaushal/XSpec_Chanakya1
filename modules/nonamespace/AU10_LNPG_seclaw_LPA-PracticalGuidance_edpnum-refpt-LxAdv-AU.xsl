<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="LPA-PracticalGuidance_edpnum-refpt">
  <title>edpnum/refpt/text() to ref:anchor and heading/desig <lnpid>id-AU10-19807</lnpid></title>
  <body>
    <section>
      <title>Special Case: <sourcexml>edpnum/refpt</sourcexml> to <targetxml>desig</targetxml></title>

    <p>When a <sourcexml>refpt</sourcexml> element is found within a <sourcexml>edpnum</sourcexml> and it contains text within the <sourcexml>refpt</sourcexml> move the text 
      to the <targetxml>/heading/desig</targetxml> and map the <sourcexml>refpt</sourcexml> to a <targetxml>ref:anchor</targetxml> preceding the <targetxml>heading</targetxml> element.</p>
    </section> 
    
    <example>
      <title>Source epdnum/refpt/text()</title>
      <pre>
     &lt;level id="BCA.C17.CL2.5" leveltype="para0" subdoc="true" toc-caption="[91,055] 2.5 Bar on repetitious use of the adjudication process"&gt; 
    &lt;heading&gt; 
     &lt;edpnum&gt; 
      &lt;refpt id="BCA.C17.CL2.5" type="ext"&gt;[91,055]&lt;/refpt&gt; 
     &lt;/edpnum&gt; 
     &lt;title&gt;2.5 Bar on repetitious use of the adjudication process&lt;/title&gt; 
    &lt;/heading&gt; 
    </pre>
      
    </example>
    
    <example>
      <title>Target heading/desig and ref:anchor</title>
      <pre>
&lt;seclaw:level leveltype="paragraph" includeintoc="true" alternatetoccaption="[91,055] 2.5 Bar on repetitious use of the adjudication process"&gt; 
   &lt;ref:anchor id="BCA.C17.CL2.5" anchortype="global"/&gt; 
   &lt;heading&gt;
     &lt;desig&gt;[91,055]&lt;/desig&gt;
     &lt;title&gt;2.5 Bar on repetitious use of the adjudication process&lt;/title&gt; 
   &lt;/heading&gt;
      </pre>
      
    </example>
    
  </body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU10_LNPG_seclaw\LPA-PracticalGuidance_edpnum-refpt-LxAdv-AU.dita  -->

<!-- Paul: this does not occur in GDS.  when seen, this needs implementation. -->
  
</xsl:stylesheet>