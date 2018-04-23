<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/" version="2.0"
	exclude-result-prefixes="dita xsl">
	<!-- ********************** -->
	<!-- DO NOT USE - Already handled in '/leg/leg.level-LxAdv-primlaw.level.xsl' -->
	<!-- ********************** -->
	<dita:topic>
		<dita:body>
			<dita:section> refpt child of leg:level/leg:level-vrnt/leg:heading/title to
				seclaw:level/ref:anchor or primlaw:level/ref:anchor id-CCCC-10449 If refpt comes
				within leg:level/leg:level-vrnt/leg:heading/title then ref:anchor will become first
				child of primlaw:level or admindoc:level depending on the target schema. Source XML
				&lt;leg:level id="WA_ACT_2011-16_PT1"&gt; &lt;leg:level-vrnt leveltype="part"
				searchtype="LEGISLATION" subdoc="true"
				toc-caption="Part&amp;#160;1&amp;#160;&amp;mdash;&amp;#160;Preliminary"&gt;
				&lt;leg:heading&gt; &lt;title align="center" searchtype="PART-TITLE"&gt;&lt;refpt
				id="WA_ACT_2011-16_PT1" type="ext"/&gt;&lt;emph
				typestyle="bf"&gt;Part&amp;#160;1&amp;#160;&amp;mdash;&amp;#160;Preliminary&lt;/emph&gt;&lt;/title&gt;
				&lt;/leg:heading&gt; &lt;/leg:level-vrnt&gt; &lt;/leg:level&gt; Target XML
				&lt;primlaw:level leveltype="part" includeintoc="true"
				alternatetoccaption="Part&amp;#x00A0;1&amp;#x00A0;&amp;#x2014;;&amp;#x00A0;Preliminary"&gt;
				&lt;ref:anchor id="WA_ACT_2011-16_PT1" anchortype="global"/&gt; &lt;heading&gt;
				&lt;title align="center"&gt;&lt;emph
				typestyle="bf"&gt;Part&amp;#160;1&amp;#160;&amp;mdash;&amp;#160;Preliminary&lt;/emph&gt;&lt;/title&gt;
				&lt;/heading&gt; &lt;/primlaw:level&gt; Changes 2012-08-30: Created. </dita:section>
		</dita:body>
	</dita:topic>

</xsl:stylesheet>
