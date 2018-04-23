<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
  version="2.0" exclude-result-prefixes="dita xsl">
  <dita:topic>
    <dita:body>
      <dita:section>refpt child of level/heading/title to
		seclaw:level/ref:anchor, primlaw:level/ref:anchor and section/ref:anchor id-CCCC-10454
	
		
			If refpt is a child of level/heading/title then ref:anchor will become the first child of seclaw:level, primlaw:level and section depending on the target schema.
			AU Commentary-Form-Precedents: If refpt is a child of level/heading/edpnum and refpt element has text then ref:anchor will become the first child of seclaw:level and refpt text will retain seclaw:level/heading/altdesig
		
		
			Source XML
			

&lt;level id="ABCA_ASICA_ACT.SGM_ABCA.ASICA.PT1" leveltype="comm.chap"&gt;
  &lt;heading searchtype="COMMENTARY"&gt;
	  &lt;title&gt;
	  	&lt;refpt type="ext" id="ABCA.ASICA.PT1"/&gt;
	  	Part 1 &amp;mdash; Preliminary [ss 1&amp;ndash;6]
	  &lt;/title&gt;
  &lt;/heading&gt;
  ...

		
		
		
			Target XML
			

&lt;seclaw:level xml:id="ABCA_ASICA_ACT.SGM_ABCA.ASICA.PT1" leveltype="unclassified"&gt;
  &lt;ref:anchor id="ABCA.ASICA.PT1" anchortype="global"/&gt;
  &lt;heading&gt;
  	&lt;title&gt;Part 1 &amp;#x2014; Preliminary [ss 1&amp;#x2013;6]&lt;/title&gt;
  &lt;/heading&gt;
  ...
  
		
		
		
		
		
			Source XML
			

&lt;level id="BCA.C2.AGRP1.ATTJ" leveltype="attachment" subdoc="false" toc-caption="[14,090] Attachment J Deed of Subcontractor's Warranty"&gt;
 &lt;heading&gt;
  &lt;edpnum&gt;
   &lt;refpt id="BCA.C2.AGRP1.ATTJ" type="ext"&gt;[14,090]&lt;/refpt&gt;
  &lt;/edpnum&gt;
  &lt;desig&gt;&lt;designum&gt;Attachment J&lt;/designum&gt;&lt;/desig&gt;
  &lt;title&gt;Deed of Subcontractor's Warranty&lt;/title&gt;
 &lt;/heading&gt;
 ...

		
		
		
			Target XML
			

&lt;seclaw:level leveltype="attachment" toc-caption="&amp;#x005B;14,090&amp;#x005D; Attachment J Deed of Subcontractor&amp;#x0027;s Warranty"&gt;
 &lt;ref:anchor id="BCA.C2.AGRP1.ATTJ" anchortype="global"/&gt;
 &lt;heading&gt;
  &lt;altdesig&gt;&amp;#x005B;14,090&amp;#x005D;&lt;/altdesig&gt;
  &lt;desig&gt;Attachment J&lt;/desig&gt;
  &lt;title&gt;Deed of Subcontractor&amp;#x0027;s Warranty&lt;/title&gt;
&lt;/heading&gt;
...
  
		
		
		
		
			Changes
			2012-08-30: Created
			2012-12-07: Instruction and Example added: refpt has text.
		
      </dita:section>
    </dita:body>
  </dita:topic>
 
 
</xsl:stylesheet>
