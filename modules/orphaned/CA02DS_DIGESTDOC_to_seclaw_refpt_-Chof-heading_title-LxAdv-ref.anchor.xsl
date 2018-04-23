<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl"
	version="2.0"
	exclude-result-prefixes="xd">
	
	<!-- JD: 2017-06-15: this module was nothing but text(); wrapping all in <xd:*> -->
	<xd:doc>
		<xd:desc>
			<xd:pre>
	
		refpt child of heading/title to ref:anchor id-CA02DS-12840
	
	
		
			If refpt occurs under heading/title then
				ref:anchor will move up two levels to become the first child of the target version
				of the source element containing the heading.
			All occurrences of refpt[@type="ext"] should map to ref:anchor[@anchortype="global"]. If value of refpt[@type="local", or is omitted or any other value the mapping should be ref:anchor[@anchortype="local"].
		
		
			Source XML
			
&lt;case:decisionsummary&gt;
    &lt;heading&gt;
        &lt;title&gt;&lt;refpt id="HISTDISP001" type="local"/&gt;History and Disposition:&lt;/title&gt;
    &lt;/heading&gt;
    &lt;p&gt;
        &lt;text&gt;APPEAL from a judgment of the Alberta...&lt;/text&gt;
    &lt;/p&gt;
&lt;/case:decisionsummary&gt;
		
		
		
			Target XML
			
&lt;casedigest:decisionsummary&gt;
    &lt;ref:anchor id="HISTDISP001" anchortype="local"/&gt;
    &lt;heading&gt;
        &lt;title&gt;History and Disposition:&lt;/title&gt;
    &lt;/heading&gt;
    &lt;bodytext&gt;
        &lt;p&gt;
            &lt;text&gt;APPEAL from a judgment of the Alberta... &lt;/text&gt;
        &lt;/p&gt;
    &lt;/bodytext&gt;
&lt;/casedigest:decisionsummary&gt;
		
		
		
			Changes
			2014-12-23: Created. Db issue #393
			</xd:pre>
		</xd:desc>
	</xd:doc>
</xsl:stylesheet>
	
