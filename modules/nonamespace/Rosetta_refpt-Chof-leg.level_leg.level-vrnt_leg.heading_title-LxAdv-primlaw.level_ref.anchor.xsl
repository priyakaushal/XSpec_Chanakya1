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
		leg:level/leg:level-vrnt/leg:heading/title id-IN03-15820
	
		
			If refpt comes within
				leg:level/leg:level-vrnt/leg:heading/title then leg:level/leg:level-vrnt/leg:heading/title/refpt
				becomes primlaw:level/ref:anchor will become first child of primlaw:level depending on the target schema.
&lt;leg:level&gt;
    &lt;leg:level-vrnt leveltype="prov1" searchtype="SCHEDULE"&gt;
        &lt;leg:levelbody&gt;
            &lt;leg:bodytext searchtype="SCHEDULE"&gt;
                &lt;leg:heading align="center" searchtype="SCHEDULE"&gt;
                    &lt;desig inline="true" searchtype="PROVISION-SCHEDULE"&gt;
                        &lt;desiglabel&gt;SCHEDULE&lt;/desiglabel&gt;
                        &lt;designum&gt;I&lt;/designum&gt;
                    &lt;/desig&gt;
                    &lt;title searchtype="SCHEDULE-TITLE"&gt;
                        &lt;refpt id="COOI_0000I" type="ext"&gt;THE STATES&lt;fnr
                            fnrtoken="FNR_000002" fntoken="FN_000002"&gt;2&lt;/fnr&gt;&lt;/refpt&gt;
                    &lt;/title&gt;
                &lt;/leg:heading&gt;
            &lt;/leg:bodytext&gt;
            ...
        &lt;/leg:levelbody&gt;
    &lt;/leg:level-vrnt&gt;
&lt;/leg:level&gt;

Becomes

&lt;primlaw:level leveltype="section"&gt;
    &lt;ref:anchor id="COOI_0000I" anchortype="global"/&gt;
    &lt;heading align="center"&gt;
        &lt;desig inline="true"&gt;SCHEDULE I&lt;/desig&gt;
        &lt;title&gt;THE STATES&lt;footnote-ref anchoridref="FN_000002"&gt;&lt;ref:anchor id="FNR_000002"
        /&gt;&lt;label&gt;2&lt;/label&gt;&lt;/footnote-ref&gt;&lt;/title&gt;
    &lt;/heading&gt;
    ...
&lt;/primlaw:level&gt;
			</xd:pre>
		</xd:desc>
	</xd:doc>
</xsl:stylesheet>
	
