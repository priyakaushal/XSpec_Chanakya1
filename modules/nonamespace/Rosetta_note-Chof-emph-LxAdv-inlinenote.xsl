<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_note-Chof-emph-LxAdv-inlinenote">
		<title><sourcexml>emph/note</sourcexml> to <targetxml>emph/inlinenote</targetxml>
			<lnpid>id-CCCC-10551</lnpid>
		</title>
		<body>
			<section>
				<p>
					<ul>
						<li> If <sourcexml>note</sourcexml> is the child of <sourcexml>emph</sourcexml> then
								<sourcexml>note</sourcexml> becomes <targetxml>inlinenote</targetxml> with attribute
								<targetxml>@notetype="section"</targetxml>
						</li>
					</ul>
				</p>
			</section>
			<example>
				<title>Source XML </title>
				<codeblock> &lt;text&gt;The Amptec boiler processes very low volumes of water at very high speeds making it
					99.6% heat efficient and impressively cheap to run. It is the first of its type to receive BEAB &lt;emph
					typestyle="it"&gt; &lt;note notetype="section"&gt; &lt;footnotegrp&gt; &lt;footnote fntoken="d4e11732"&gt; ...
					&lt;/footnote&gt; &lt;/footnotegrp&gt; &lt;/note&gt; &lt;/emph&gt; approval and able to supply heating and hot
					water for a fully insulated 3 bedroom house from as little as £6.23 a week on a conventional 7 hour
					cycle.&lt;/text&gt; </codeblock>
			</example>
			<example>
				<title>Target XML</title>
				<codeblock> &lt;text&gt;The Amptec boiler processes very low volumes of water at very high speeds making it
					99.6% heat efficient and impressively cheap to run. It is the first of its type to receive BEAB &lt;emph
					typestyle="it"&gt; &lt;inlinenote notetype="section"&gt; &lt;footnotegroup&gt; &lt;footnote&gt; &lt;ref:anchor
					id="d4e11732"/&gt; ... &lt;/footnote&gt; &lt;/footnotegroup&gt; &lt;/inlinenote&gt; &lt;/emph&gt; approval and
					able to supply heating and hot water for a fully insulated 3 bedroom house from as little as £6.23 a week on a
					conventional 7 hour cycle.&lt;/text&gt; </codeblock>
			</example>
			<section>
				<title>Changes</title>
				<p>2016-12-06: <ph id="change_20161206_RS">Created.</ph></p>
			</section>
		</body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_note-Chof-emph-LxAdv-inlinenote.dita  -->

	<xsl:template match="note[parent::emph]">
		<!--  Original Target XPath:  emph/inlinenote   -->
			<inlinenote notetype="section">
				<xsl:apply-templates select="@* | node()"/>
			</inlinenote>
	</xsl:template>


</xsl:stylesheet>
