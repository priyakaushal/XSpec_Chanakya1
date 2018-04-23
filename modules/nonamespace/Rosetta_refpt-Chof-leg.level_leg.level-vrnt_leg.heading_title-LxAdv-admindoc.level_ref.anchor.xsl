<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl"
	version="2.0"
	exclude-result-prefixes="xd">
	
	<!-- JD: 2017-06-15: this module was nothing but text(); wrapping all in <xd:*> -->
	<xd:doc>
		<xd:desc>
			<xd:pre>
	refpt child of
			leg:level/leg:level-vrnt/leg:heading/title to admindoc:level/ref:anchor id-CCCC-10448
	
		
			If refpt comes within
					leg:level/leg:level-vrnt/leg:heading/title then
					ref:anchor will become first child of admindoc:level
				depending on the target schema.
		
		
			Source XML
			

&lt;leg:level id="AL.AATL.CPNRDRR.BODY"&gt;
	&lt;leg:level-vrnt searchtype="LEGISLATION LEG-INST" leveltype="leg-inst"&gt;
		&lt;leg:heading&gt;
			&lt;title&gt;&lt;refpt type="ext" id="AL.AATL.CPNRDRR"&gt;&lt;/refpt&gt;Code of Practice for Notification  of Reviewable Decisions and  Rights of Review...&lt;/title&gt;
		&lt;/leg:heading&gt;
    &lt;/leg:level-vrnt&gt;
&lt;/leg:level&gt;

		
		
		
			Target XML
			

&lt;admindoc:level xml:id="AL.AATL.CPNRDRR.BODY" leveltype="instrument"&gt;
    &lt;ref:anchor id="AL.AATL.CPNRDRR" anchortype="global"/&gt;    
        &lt;heading&gt;
            &lt;title&gt;Code of Practice for Notification  of Reviewable Decisions and  Rights of Review...&lt;/title&gt;
        &lt;/heading&gt;    
&lt;/admindoc:level&gt;
  
		
		
		
			Changes
			2012-08-30: Created. 
			</xd:pre>
		</xd:desc>
	</xd:doc>
</xsl:stylesheet>
	
