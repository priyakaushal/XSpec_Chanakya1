<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl"
	version="2.0"
	exclude-result-prefixes="xd">
	
	<!-- JD: 2017-06-15: this module was nothing but text(); wrapping all in <xd:*> -->
	<xd:doc>
		<xd:desc>
			<xd:pre>
  refpt child of level/heading/edpnum to
    seclaw:level/ref:anchor id-CCCC-10461
  
    
      If refpt occurs under level/heading/edpnum then
        ref:anchor will become the first child of
        seclaw:level.
    
    
      Source XML
      

&lt;level id="HALLS_HAL-GCG-C-APPI-SNT-PRO.SGM_DRUG-2-2-001" leveltype="para0" subdoc="true" toc-caption="[DRUG-2.2.001] R v Arthur "&gt;
 &lt;heading searchtype="COMMENTARY"&gt;
  &lt;edpnum&gt;&lt;refpt id="DRUG-2-2-001" type="ext"/&gt;[DRUG-2.2.001] &lt;/edpnum&gt;
  &lt;title&gt;
   &lt;ci:cite searchtype="CASE-REF"&gt;
    &lt;ci:content&gt;
     &lt;citefragment searchtype="CASE-NAME-REF"&gt;
      &lt;emph typestyle="it"&gt;R v Arthur&lt;/emph&gt;
     &lt;/citefragment&gt;
    &lt;/ci:content&gt;
   &lt;/ci:cite&gt;
  &lt;/title&gt;
 &lt;/heading&gt;
 &lt;!-- ETC. --&gt;
&lt;/level&gt;
		
    
    
      Target XML
      

&lt;seclaw:level xml:id="HALLS_HAL-GCG-C-APPI-SNT-PRO.SGM_DRUG-2-2-001" leveltype="paragraph" alternatetoccaption="&amp;#x005B;DRUG-2.2.001&amp;#x005D; R v Arthur " includeintoc="true"&gt;
 &lt;ref:anchor id="DRUG-2-2-001" anchortype="global"/&gt;
 &lt;heading inline="false"&gt;
  &lt;desig&gt;&amp;#x005B;DRUG-2.2.001&amp;#x005D; &lt;/desig&gt;
  &lt;title&gt;
   &lt;lnci:cite type="case"&gt;
    &lt;lnci:content&gt;
     &lt;emph typestyle="it"&gt;R v Arthur&lt;/emph&gt;
    &lt;/lnci:content&gt;
   &lt;/lnci:cite&gt;
  &lt;/title&gt;
 &lt;/heading&gt;
 &lt;!-- ETC. --&gt;
&lt;/seclaw:level&gt;
		
    
    
      Changes
      2012-09-27: Created. 
			</xd:pre>
		</xd:desc>
	</xd:doc>
</xsl:stylesheet>
  
