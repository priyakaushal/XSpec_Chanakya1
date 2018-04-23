<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
	xmlns:leg="http://www.lexis-nexis.com/glp/leg"
	xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/"
	version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/"
		id="Rosetta_remotelink-Chof-bodytext-LxAdv-p_text_ref.crossreference">
		<title><sourcexml>leg:bodytext/remotelink</sourcexml> to
				<targetxml>primlaw:bodytext/p/text/ref:crossreference</targetxml>
			<lnpid>id-CCCC-10533</lnpid></title>
		<body>
			<section>
				<p><sourcexml>leg:bodytext/remotelink</sourcexml> becomes
						<targetxml>primlaw:bodytext/p/text/ref:crossreference</targetxml>
					and is converted as described in the topic <xref
						href="Rosetta_remotelink-LxAdv-ref.crossreference.dita"/>.</p>
			</section>
			<example>
				<title>Source XML </title>
				<codeblock> &lt;leg:bodytext&gt; &lt;remotelink service="DOC-ID"
					remotekey1="DOC-ID" dpsi="02HT" remotekey2="45954"
					status="invalid"&gt;IPT07200&lt;/remotelink&gt; ......
					&lt;/leg:bodytext&gt; </codeblock>
				<title>Target XML</title>
				<codeblock> &lt;primlaw:bodytext&gt; &lt;p&gt; &lt;text&gt;
					&lt;ref:crossreference crossreferencetype="seeAlso"&gt;
					&lt;ref:content&gt;IPT07200&lt;/ref:content&gt; &lt;ref:locator
					anchoridref="02HT-45954"&gt; &lt;ref:locator-key&gt; &lt;ref:key-name
					name="DOC-ID"/&gt; &lt;ref:key-value value="02HT"/&gt;
					&lt;/ref:locator-key&gt; &lt;/ref:locator&gt;
					&lt;/ref:crossreference&gt; &lt;/text&gt; &lt;/p&gt; ......
					&lt;/primlaw:bodytext&gt; </codeblock>
			</example>
			<section>
				<title>Changes</title>
				<p>2016-01-07: <ph id="change_20160107_AB">Created. [RAF #2682]</ph></p>
			</section>
		</body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_remotelink-Chof-bodytext-LxAdv-p_text_ref.crossreference.dita  -->
	<xsl:template match="remotelink[parent::leg:bodytext]">
		<!--  Original Target XPath:  primlaw:bodytext/p/text/ref:crossreference   -->
		<!--<primlaw:bodytext>
			<p>
				<text>-->
					<ref:crossreference
						xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/">
						<xsl:apply-templates select="@* | node()"/>
					</ref:crossreference>
				<!--</text>
			</p>
		</primlaw:bodytext>-->

	</xsl:template>

</xsl:stylesheet>
