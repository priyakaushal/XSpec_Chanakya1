<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
	xmlns:glp="http://www.lexis-nexis.com/glp" version="2.0"
	exclude-result-prefixes="dita glp">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/"
		id="Rosetta_li-glp.note-to-LexisAdvance_listitem-note">
		<title><sourcexml>l/li/glp:note</sourcexml> to <targetxml>
				list/listitem/bodytext/note/bodytext </targetxml>
			<lnpid>id-AU11-20011</lnpid></title>
		<body>
			<section>
				<p>When <sourcexml>li</sourcexml> has <sourcexml>glp:note</sourcexml> as
					its children element, then mapping should be
						<targetxml>list/listitem/bodytext/note/bodytext</targetxml> . The
					content of <sourcexml>glp:note</sourcexml> should be placed inside
						<targetxml>note/bodytext</targetxml>.</p>

			</section>

			<example>
				<title>Source XML - <sourcexml>glp:note</sourcexml> Children of
						<sourcexml>li</sourcexml></title>
				<codeblock> &lt;li&gt; &lt;lilabel&gt;(b)&lt;/lilabel&gt; &lt;p&gt;
					&lt;text&gt;a library with the principal purpose of providing library
					services for members of a Parliament;&lt;/text&gt; &lt;/p&gt;
					&lt;glp:note&gt; &lt;heading&gt; &lt;title&gt;Note:&lt;/title&gt;
					&lt;/heading&gt; &lt;p&gt; &lt;text&gt;For references to a Parliament,
					see section 12.&lt;/text&gt; &lt;/p&gt; &lt;/glp:note&gt; &lt;/li&gt;
				</codeblock>
			</example>

			<example>
				<title>Target XML </title>
				<codeblock> &lt;listitem&gt; &lt;label&gt;(b)&lt;/label&gt;
					&lt;bodytext&gt; &lt;p&gt; &lt;text&gt;a library with the principal
					purpose of providing library services for members of a
					Parliament;&lt;/text&gt; &lt;/p&gt; &lt;note&gt; &lt;bodytext&gt;
					&lt;heading&gt; &lt;title&gt;Note:&lt;/title&gt; &lt;/heading&gt;
					&lt;p&gt; &lt;text&gt;For references to a Parliament, see section
					12.&lt;/text&gt; &lt;/p&gt; &lt;/bodytext&gt; &lt;/note&gt;
					&lt;/bodytext&gt; &lt;/listitem&gt; </codeblock>
			</example>

			<section>
				<title>Changes</title>
				<p>2016-04-18: <ph id="change_20160418_AS">Created. Webstar
						#6485433</ph></p>
			</section>
		</body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU11_International_Instruments\Rosetta_glp.note-Chof-li-LxAdv-listitem-note.dita  -->

	<!--<xsl:template match="l/li/glp:note">
		<!-\-  Original Target XPath:  list/listitem/bodytext/note/bodytext   -\->
		<list>
			<listitem>
				<bodytext>
					<note>
						<bodytext>
							<xsl:apply-templates select="@* | node()"/>
						</bodytext>
					</note>
				</bodytext>
			</listitem>
		</list>
	</xsl:template>

	<xsl:template match="li">
		<!-\-  Original Target XPath:  list/listitem/bodytext/note/bodytext   -\->
		<list>
			<listitem>
				<bodytext>
					<note>
						<bodytext>
							<xsl:apply-templates select="@* | node()"/>
						</bodytext>
					</note>
				</bodytext>
			</listitem>
		</list>

	</xsl:template>-->

	<!--<xsl:template match="glp:note">

		<!-\-  Original Target XPath:  list/listitem/bodytext/note/bodytext   -\->
		<list>
			<listitem>
				<bodytext>
					<note>
						<bodytext>
							<xsl:apply-templates select="@* | node()"/>
						</bodytext>
					</note>
				</bodytext>
			</listitem>
		</list>
	</xsl:template>
-->
</xsl:stylesheet>
