<?xml version="1.0" encoding="UTF-8"?>
	<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
		xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
		version="2.0">
		<dita:topic>
			<dita:body><dita:section>
				refpt child of
				leg:histcite/heading/title to primlawhist:histgrp/ref:anchor id-CCCC-10443
				
				
				If refpt comes within leg:histcite/heading/title
				then ref:anchor will become the first child of
				primlawhist:histgrp.
				
				
				Source XML
				
				
				&lt;leg:histcite&gt;
				&lt;heading&gt;
				&lt;title align="left"&gt;
				&lt;refpt id="foo" type="ext"/&gt;
				BAR
				&lt;/title&gt;
				&lt;/heading&gt;
				...
				
				
				
				
				Target XML
				
				
				&lt;primlawhist:histgrp&gt;
				&lt;ref:anchor id="foo" anchortype="global"/&gt;
				&lt;heading&gt;
				&lt;title&gt;BAR&lt;/title&gt;
				&lt;/heading&gt;
				...
				
				
				
				
				Changes
				2012-08-30: Created. 
			</dita:section></dita:body>
		</dita:topic>
		<!--
			*****************************
			paul: this is handled in courtrule_body.xsl along with histcite rules for au08 (and uses regular refpt rules)
		************************************
		-->
		
	</xsl:stylesheet>
		
	
