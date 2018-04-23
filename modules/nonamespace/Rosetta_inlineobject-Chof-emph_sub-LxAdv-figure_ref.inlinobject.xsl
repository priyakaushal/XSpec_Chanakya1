<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
	xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0"
	exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/"
		id="Rosetta_inlineobject_ChildOf_emph_sub-to-LexisAdvance_figure_ref.inlineojbect">
		<title><sourcexml>emph/sub/inlineobject</sourcexml> to <targetxml>figure/ref:inlineobject</targetxml>
			<lnpid>id-CCCC-10360</lnpid></title>
		<body>
			<section>
				<note>This topic is used in numerous conversion instructions for several LBUs. It is a shared topic rather than
					duplicated to ensure consistency and accuracy. The xml snippets contained in this topic reflect markup needed
					for the Apollo image handling application. The UK is the first LBU to move from Apollo to the Blobstore
					application for image handling. Therefore, if this is a UK conversion instruction document, please refer to
					the following topics for correct image handling markup.<ul>
						<li><sourcexml>lnlink[@service="ATTACHMENT"]</sourcexml> to
								<targetxml>ref:lnlink[@service="ATTACHMENT"]</targetxml> for BLOBSTORE images (id-CCCC-10542)</li>
						<li><sourcexml>inlineobject</sourcexml> to <targetxml>ref:inlineobject</targetxml> for BLOBSTORE images
							(id-CCCC-10540)</li>
						<li><sourcexml>link[@filename]</sourcexml> to <targetxml>ref:lnlink[@service="ATTACHMENT"]</targetxml> for
							BLOBSTORE images (id-CCCC-10541)</li>
					</ul></note>
				<p><sourcexml>emph/sub/inlineobject</sourcexml> becomes <targetxml>figure/ref:inlineobject</targetxml>.</p>
			</section>
			<example>
				<title>Source XML showing <sourcexml>inlineobject</sourcexml> occurring in
					<sourcexml>emph/sub</sourcexml></title>
				<codeblock> &lt;p&gt; &lt;text&gt;1&lt;emph typestyle="it"&gt;&lt;sub&gt;&lt;inlineobject type="image"
					mimetype="image/gif" filename="img291.gif"/&gt;&lt;/sub&gt;&lt;/emph&gt;.     In many political communities,
					most citizens believe the false proposition that they have moral obligations to obey state-made
					law.&lt;/text&gt; &lt;/p&gt; </codeblock>
				<title>Target XML</title>
				<codeblock> &lt;p&gt; &lt;text&gt;1&lt;figure&gt; &lt;ref:inlineobject&gt; &lt;ref:locator&gt;
					&lt;ref:locator-key&gt; &lt;ref:key-name name="object-key"/&gt; &lt;ref:key-value value="X-Y-img291.gif"/&gt;
					&lt;!-- X and Y are LNI and SMI values obtained from CSSM --&gt; &lt;/ref:locator-key&gt;
					&lt;ref:locator-params&gt; &lt;proc:param name="componentseq" value="1"/&gt; &lt;proc:param name="object-type"
					value="image"/&gt; &lt;proc:param name="object-smi" value=""/&gt; &lt;!-- This @value assignment is done by
					conversion program --&gt; &lt;/ref:locator-params&gt; &lt;/ref:locator&gt; &lt;/ref:inlineobject&gt;
					&lt;/figure&gt;.     In many political communities, most citizens believe the false proposition that they have
					moral obligations to obey state-made law.&lt;/text&gt; &lt;/p&gt; </codeblock>
			</example>
			<section>
				<title>Exceptional Scenario for UK01 Cases</title>
				<note>
					<p>If We have <sourcexml>emph/sub/inlineobject</sourcexml> and PCDATA occuring between
							<sourcexml>emph</sourcexml> and <sourcexml>sub</sourcexml> then in target we need to map
							<targetxml>emph</targetxml> as sibling of <targetxml>figure/ref:inlineobject</targetxml> as given in the
						example</p>
				</note>
			</section>
			<example>
				<title><sourcexml>emph/sub/inlineobject</sourcexml> showing PCDATA between <sourcexml>emph</sourcexml> and
						<sourcexml>sub</sourcexml></title>
				<codeblock> &lt;entry namest="C2" nameend="C2" morerows="0" colsep="1" rowsep="1"&gt; &lt;emph
					typestyle="bf"&gt; Declared takings (F) &lt;sub&gt; &lt;inlineobject type="image" mimetype="image/gif"
					filename="img13d.gif" /&gt; &lt;/sub&gt; &lt;/emph&gt; &lt;/entry&gt; </codeblock>
				<title>Target XML</title>
				<codeblock> &lt;entry namest="C2" nameend="C2" colsep="1" rowsep="1"&gt; &lt;emph typestyle="bf"&gt; Declared
					takings (F) &lt;/emph&gt; &lt;figure&gt; &lt;ref:inlineobject&gt; &lt;ref:locator&gt; &lt;ref:locator-key&gt;
					&lt;ref:key-name name="object-key"/&gt; &lt;ref:key-value value="X-Y-img13d.gif"/&gt; &lt;!-- X and Y are LNI
					and SMI values obtained from CSSM --&gt; &lt;/ref:locator-key&gt; &lt;ref:locator-params&gt; &lt;proc:param
					name="componentseq" value="1"/&gt; &lt;proc:param name="object-type" value="image"/&gt; &lt;proc:param
					name="object-smi" value=""/&gt; &lt;!-- This @value assignment is done by conversion program --&gt;
					&lt;/ref:locator-params&gt; &lt;/ref:locator&gt; &lt;/ref:inlineobject&gt; &lt;/figure&gt; &lt;/entry&gt;
				</codeblock>
			</example>
			<section>
				<title>Changes</title>
				<p>2016-08-03: <ph id="change_20160803_jm">Added Note about xml snippets that illustrate image handling. Note
						summarizes move from Apollo to Blobstore application. UK is first LBU to move to Blobstore.</ph></p>
				<p>2014-01-13: <ph id="change_20140113_SSX">Updated Instruction to handle
							<sourcexml>emph/sub/inlineobject</sourcexml> when PCDATA occuring between <sourcexml>emph</sourcexml> and
							<sourcexml>sub</sourcexml>, this change directly affects UK01 Cases WebTeam # 249487</ph></p>
				<p>2013-04-22: <ph id="change_20130422_DSF">Created.</ph></p>
			</section>
		</body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_inlineobject-Chof-emph_sub-LxAdv-figure_ref.inlinobject.dita  -->

	<xsl:template match="inlineobject[parent::sub/parent::emph]">
		<!--  Original Target XPath:  figure/ref:inlineobject   -->
		<figure>
			<ref:inlineobject>
				<xsl:apply-templates select="@* | node()"/>
			</ref:inlineobject>
		</figure>
	</xsl:template>

</xsl:stylesheet>
