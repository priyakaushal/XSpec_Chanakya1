<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl"
	version="2.0"
	exclude-result-prefixes="xd">
	
	<!-- JD: 2017-06-15: this module was nothing but text(); wrapping all in <xd:*> -->
	<xd:doc>
		<xd:desc>
			<xd:pre>
	refpt child of cttr:summary/heading/title to
		cttr:descriptorsection/casesum:editorialsummary/ref:anchor id-UK16-38615
	
		
			If refpt occurs under cttr:summary/heading/title then
					ref:anchor will become the first child of
				cttr:descriptorsection/casesum:editorialsummary.
			All occurrences of refpt[@type="ext"] should map to ref:anchor[@anchortype="global"]. If value of refpt[@type="local", or is omitted or any other value the mapping should be ref:anchor[@anchortype="local"].
		
		
			Source XML
			

&lt;cttr:summary&gt;
        &lt;heading&gt;
          &lt;title&gt;
            &lt;refpt id="commencementNote_2000_17a_PtIII.ChII.85" type="ext"&gt;Commencement
              notePartlyInForceWithCommencement &lt;/refpt&gt;
          &lt;/title&gt;
        &lt;/heading&gt;
&lt;/cttr:summary&gt;        

		
		
		
			Target XML
			

&lt;cttr:descriptors&gt;
            &lt;cttr:descriptorsection descriptortype="catchwords-and-digest"&gt;
                &lt;casesum:editorialsummary&gt;
                    &lt;ref:anchor id="commencementNote_2000_17a_PtIII.ChII.85" anchortype="global"/&gt;
                    &lt;heading&gt;
                        &lt;title&gt;Commencement notePartlyInForceWithCommencement &lt;/title&gt;
                    &lt;/heading&gt;
               &lt;/casesum:editorialsummary&gt;
           &lt;/cttr:descriptorsection&gt;
&lt;/cttr:descriptors&gt;
  
			</xd:pre>
		</xd:desc>
	</xd:doc>
</xsl:stylesheet>
		
		
			
		
	
