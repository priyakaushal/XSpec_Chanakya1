<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/" version="2.0">
	<dita:topic>
		<dita:body>
			<dita:section> refpt first child of leg:bodytext to primlaw:level/ref:anchor
				id-CCCC-10459 If refpt is the immediate child of leg:bodytext then ref:anchor will
				become the first child of primlaw:level. Source XML &lt;leg:level
				xml:id="QLD_ACT_1895-15_SD1"&gt; &lt;leg:level-vrnt leveltype="subdoc" subdoc="true"
				toc-caption="Anglican Church of Australia Act 1895 Amendment Act 1901"&gt;
				&lt;leg:heading ln.user-displayed="false"&gt; &lt;title align="center"&gt; &lt;emph
				typestyle="bf"&gt; Anglican Church of Australia Act 1895 Amendment Act 1901
				&lt;/emph&gt; &lt;/title&gt; &lt;/leg:heading&gt; &lt;leg:levelbody&gt;
				&lt;leg:bodytext searchtype="LEGISLATION"&gt; &lt;refpt id="QLD_ACT_1895-15_COMP1"
				type="ext"/&gt; &lt;refpt id="QLD_ACT_1895-15_SD1" type="ext"/&gt; &lt;p&gt;
				&lt;text&gt;Queensland&lt;/text&gt; &lt;/p&gt; &lt;/leg:bodytext&gt; ... Target XML
				&lt;primlaw:level leveltype="unclassified" includeintoc="true"
				altternatetoccaption="Anglican Church of Australia Act 1895 Amendment Act 1901"&gt;
				&lt;ref:anchor id="QLD_ACT_1895-15_COMP1" anchortype="global"/&gt; &lt;ref:anchor
				id="QLD_ACT_1895-15_SD1" anchortype="global"/&gt; &lt;primlaw:bodytext&gt; &lt;p&gt;
				&lt;text&gt;Queensland&lt;/text&gt; &lt;/p&gt; &lt;/primlaw:bodytext&gt;
				&lt;/primlaw:level&gt; Changes 2012-08-30: Created. </dita:section>
		</dita:body>
	</dita:topic>
	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!-- <xsl:message>Requires manual development!</xsl:message> -->
	
	<!-- 20170512:  MCJ:  This is a do nothing module. -->
</xsl:stylesheet>
