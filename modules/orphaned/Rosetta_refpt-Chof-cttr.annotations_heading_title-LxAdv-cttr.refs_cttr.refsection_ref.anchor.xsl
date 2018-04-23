<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl"
	version="2.0"
	exclude-result-prefixes="xd">
	
	<!-- JD: 2017-06-15: this module was nothing but text(); wrapping all in <xd:*> -->
	<xd:doc>
		<xd:desc>
			<xd:pre>
	refpt child of cttr:annotations/heading/title to
		cttr:refs/cttr:refsection/ref:anchor id-UK16-38614
	
		
			If refpt occurs under cttr:annotations/heading/title then
					ref:anchor will become the first child of
				cttr:refs/cttr:refsection/ref:anchor.
			All occurrences of refpt[@type="ext"] should map to ref:anchor[@anchortype="global"]. If value of refpt[@type="local", or is omitted or any other value the mapping should be ref:anchor[@anchortype="local"].
		
		
			Source XML
			

      &lt;cttr:annotations annotationtype="leg-derivation"&gt;
        &lt;heading&gt;
          &lt;title&gt;
            &lt;refpt id="OV_2005_5a_Pt6.Ch7.724_der" type="ext"&gt;Derivation Table&lt;/refpt&gt;
          &lt;/title&gt;
        &lt;/heading&gt;
        &lt;cttr:annot&gt;
          &lt;leg:info&gt;
            	.....
          &lt;/leg:info&gt;
       &lt;cttr:annot&gt;
&lt;/cttr:annotations&gt;

		
		
		
			Target XML
			

 &lt;cttr:refsection&gt;
 	      &lt;ref:anchor id="OV_2005_5a_Pt6.Ch7.724_der" anchortype="global"/&gt;
 		&lt;heading&gt;
          		&lt;title&gt;Derivation Table&lt;/title&gt;
        	&lt;/heading&gt;
            &lt;cttr:refitem&gt;
                    &lt;cttr:consideredlegis&gt;
                        	......
                    &lt;/cttr:consideredlegis&gt;
             &lt;/cttr:refitem&gt;
&lt;/cttr:refsection&gt;
  
			</xd:pre>
		</xd:desc>
	</xd:doc>
</xsl:stylesheet>