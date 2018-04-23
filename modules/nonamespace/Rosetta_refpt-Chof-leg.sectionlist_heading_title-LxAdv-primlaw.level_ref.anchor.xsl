<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
	version="2.0">
	<dita:topic>
		<dita:body><dita:section>refpt child of
			leg:sectionlist/heading/title to primlaw:level/ref:anchor id-CCCC-10452
	
		
			If refpt comes within
					leg:sectionlist/heading/title then
					ref:anchor will become the first child of
					primlaw:level/@leveltype="table-of-contents".
		
		
			Source XML
			

&lt;leg:sectionlist&gt;
    &lt;heading&gt;
    	&lt;title align="left"&gt;
    		&lt;refpt id="foo" type="ext"/&gt;
    		INDEX
    	&lt;/title&gt;
    &lt;/heading&gt;
    ...

		
		
		
			Target XML
			

&lt;primlaw:level leveltype="table-of-contents"&gt;
	&lt;ref:anchor id="foo" anchortype="global"/&gt;
    	&lt;heading&gt;
    		&lt;title&gt;INDEX&lt;/title&gt;
    	&lt;/heading&gt;
    	...
  
		
		
		
			Changes
			2012-08-30: Created. 
		
		</dita:section>
		</dita:body>
	</dita:topic>
	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
<!--	<xsl:message>Requires manual development!</xsl:message> 
-->	<!--
		**********************************
		Paul: this will need to be implemented in your leg:sectionlist template
		in AU08 implemented in courtrule_body.xsl
		**********************************
-->	</xsl:stylesheet>