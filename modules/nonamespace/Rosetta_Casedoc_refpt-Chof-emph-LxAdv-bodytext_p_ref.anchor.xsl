<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
	xmlns:case="http://www.lexis-nexis.com/glp/case"
	version="2.0" exclude-result-prefixes="dita xsl">
	<dita:topic>
		<dita:body>
			<dita:section>
				refpt child of emph to bodytext/p/ref:anchor id-CCCC-10265
				
				
				case:judgmentbody/h/emph/emph/refpt becomes
				bodytext/p/ref:anchor. 
				
				
				Source XML
				
				
				&lt;case:judgmentbody&gt;
				...
				&lt;h l="3"&gt;
				&lt;emph typestyle="ro"&gt;
				&lt;emph typestyle="it"&gt;
				&lt;refpt id="po.98-984a1" /&gt; 
				1. The question in issue 
				&lt;/emph&gt;
				&lt;/emph&gt;
				&lt;/h&gt;
				...
				&lt;/case:judgmentbody&gt;
				
				
				
				
				Target XML
				
				
				&lt;bodytext&gt;
				...
				&lt;p&gt;
				&lt;ref:anchor id="po.98-984a1”&gt;
				&lt;/p&gt;
				&lt;h&gt;
				&lt;emph typestyle="ro"&gt;
				&lt;emph typestyle="it"&gt;
				1. The question in issue
				&lt;/emph&gt;
				&lt;/emph&gt;
				&lt;/h&gt;
				...
				&lt;/bodytext&gt;
				
				
				
				
				Changes
				2012-08-30: Created. 
			</dita:section>
		</dita:body>
	</dita:topic>
	
	<xsl:template match="case:judgementbody/h/emph/emph[refpt]">
		<xsl:apply-templates select="node()"/>
	</xsl:template>
	
	<xsl:template match="case:judgementbody/h/emph[emph/refpt]">
		<xsl:apply-templates select="node()"/>
	</xsl:template>
	
</xsl:stylesheet>
