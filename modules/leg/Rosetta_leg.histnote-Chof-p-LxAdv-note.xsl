<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
	xmlns:glp="http://www.lexis-nexis.com/glp"
	xmlns:leg="http://www.lexis-nexis.com/glp/leg"
	xmlns:primlawhist="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-history/1/"
	xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/"
	xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"
	version="2.0" exclude-result-prefixes="dita glp leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/"
		id="Rosetta_leg.histnote-Chof-p-LxAdv-note">
		<!-- ********************** -->
		<!-- Use '/nonamespace/Rosetta_p-LxAdv-p.xsl' instead of '/leg/Rosetta_leg.histnote-Chof-p-LxAdv-note.xsl' -->
		<!-- ********************** -->
		<title><sourcexml>p/leg:histnote</sourcexml> to
				<targetxml>note[@notetype="historical"]</targetxml>
			<lnpid>id-CCCC-10380</lnpid></title>
		<body>
			<section>
				<note>This topic is used in numerous conversion instructions for several
					LBUs. It is a shared topic rather than duplicated to ensure
					consistency and accuracy. The xml snippets contained in this topic
					reflect markup needed for the Apollo image handling application. The
					UK is the first LBU to move from Apollo to the Blobstore application
					for image handling. Therefore, if this is a UK conversion instruction
					document, please refer to the following topics for correct image
					handling markup.<ul>
						<li><sourcexml>lnlink[@service="ATTACHMENT"]</sourcexml> to
								<targetxml>ref:lnlink[@service="ATTACHMENT"]</targetxml> for
							BLOBSTORE images (id-CCCC-10542)</li>
						<li><sourcexml>inlineobject</sourcexml> to
								<targetxml>ref:inlineobject</targetxml> for BLOBSTORE images
							(id-CCCC-10540)</li>
						<li><sourcexml>link[@filename]</sourcexml> to
								<targetxml>ref:lnlink[@service="ATTACHMENT"]</targetxml> for
							BLOBSTORE images (id-CCCC-10541)</li>
					</ul></note>
				<p>The conversion of <sourcexml>p/leg:histnote</sourcexml> varies
					depending on whether <sourcexml>leg:histnote</sourcexml> has any
					siblings: <ul>
						<li>If <sourcexml>leg:histnote</sourcexml> doesn't have any siblings
							(i.e. <sourcexml>leg:histnote</sourcexml> is the only child of
								<sourcexml>p</sourcexml>), then
								<sourcexml>p/leg:histnote</sourcexml> becomes
								<targetxml>note[@notetype="historical"]</targetxml>
								(<sourcexml>p</sourcexml> is suppressed).</li>
						<li>If <sourcexml>leg:histnote</sourcexml> has siblings (i.e.
								<sourcexml>leg:histnote</sourcexml> is not the only child of
								<sourcexml>p</sourcexml>), then <sourcexml>p</sourcexml> becomes
								<targetxml>p</targetxml>, <sourcexml>leg:histnote</sourcexml>
							becomes <targetxml>note[@notetype="historical"]</targetxml>, and
								<targetxml>note</targetxml> is a sibling of
								<targetxml>p</targetxml> (or depending on context).</li>
					</ul></p>
			</section>
			<example>
				<title>Source XML: </title>
				<codeblock> &lt;li id="1992R109S448-2-B"&gt;&lt;lilabel&gt;&lt;refpt
					id="1992R109S448-2-B" type="ext"/&gt;(b)&lt;/lilabel&gt;
					&lt;p&gt;&lt;text&gt;A proceeding in which relief by way of specific
					performance is sought.&lt;/text&gt;&lt;/p&gt; &lt;p&gt;
					&lt;leg:histnote&gt; &lt;p&gt;&lt;text&gt;[Subclause (2)(a) was
					revoked by the District Courts Amendment Rules (No 3) 2002
					(SR 2002/394) R 11, effective 3 February 2003.]&lt;/text&gt;&lt;/p&gt;
					&lt;/leg:histnote&gt; &lt;/p&gt; &lt;/li&gt; </codeblock>
				<title>Target XML</title>
				<codeblock> &lt;listitem&gt; &lt;ref:anchor id="1992R109S448-2-B"
					anchortype="global"/&gt; &lt;label&gt;(b)&lt;/label&gt;
					&lt;bodytext&gt; &lt;p&gt;&lt;text&gt;A proceeding in which relief by
					way of specific performance is sought.&lt;/text&gt;&lt;/p&gt; &lt;note
					notetype="historical"&gt; &lt;bodytext&gt;
					&lt;p&gt;&lt;text&gt;[Subclause (2)(a) was revoked by the District
					Courts Amendment Rules (No 3) 2002 (SR 2002/394) R 11, effective 3
					February 2003.]&lt;/text&gt;&lt;/p&gt; &lt;/bodytext&gt; &lt;/note&gt;
					&lt;/bodytext&gt; &lt;/listitem&gt; </codeblock>
			</example>
			<example>
				<title>Source XML </title>
				<codeblock> &lt;leg:bodytext&gt; &lt;p&gt; &lt;text&gt; &lt;link
					filename="fl-l-fcr02-sch1-f7.pdf" type="pdf"&gt;Download in
					PDF&lt;/link&gt; &lt;/text&gt; &lt;leg:histnote&gt; &lt;p&gt;
					&lt;text&gt;[Form G 7 was repealed and substituted on 7 August 2008 by
					R 23 of the Family Courts Amendment Rules 2008,
					SR 2008/207.]&lt;/text&gt; &lt;/p&gt; &lt;/leg:histnote&gt; &lt;/p&gt;
					&lt;/leg:bodytext&gt; </codeblock>
				<title>Target XML</title>
				<codeblock> &lt;primlaw:bodytext&gt; &lt;p&gt; &lt;text&gt;
					&lt;ref:lnlink service="ATTACHMENT"&gt; &lt;ref:marker
					role="label"&gt;Download in PDF&lt;/ref:marker&gt; &lt;ref:locator&gt;
					&lt;ref:locator-key&gt; &lt;ref:key-name name="attachment-key"/&gt;
					&lt;ref:key-value value="X-Y-fl-l-fcr02-sch1-f7"/&gt; &lt;!-- X and Y
					are LNI and SMI values obtained from CSSM --&gt;
					&lt;/ref:locator-key&gt; &lt;ref:locator-params&gt; &lt;proc:param
					name="componentseq" value="1"/&gt; &lt;proc:param
					name="attachment-type" value="PDF"/&gt; &lt;proc:param
					name="attachment-smi" value=""/&gt; &lt;!-- @value populated with SMI
					obtained from CSSM --&gt; &lt;!-- This @value assignment is done by
					conversion program --&gt; &lt;/ref:locator-params&gt;
					&lt;/ref:locator&gt; &lt;/ref:lnlink&gt; &lt;/text&gt; &lt;/p&gt;
					&lt;note notetype="historical"&gt; &lt;bodytext&gt;
					&lt;p&gt;&lt;text&gt;[Form G 7 was repealed and substituted on
					7 August 2008 by R 23 of the Family Courts Amendment Rules 2008,
					SR 2008/207.]&lt;/text&gt;&lt;/p&gt; &lt;/bodytext&gt; &lt;/note&gt;
					&lt;/primlaw:bodytext&gt; </codeblock>
			</example>
			<section>
				<title>Changes</title>
				<p>2016-08-03: <ph id="change_20160803_jm">Added Note about xml snippets
						that illustrate image handling. Note summarizes move from Apollo to
						Blobstore application. UK is first LBU to move to
					Blobstore.</ph></p>
				<p>2013-05-01: <ph id="change_20130501_SP">Updated instructions and
						target example per latest Apollo markup.</ph></p>
				<p>2013-02-26: <ph id="change_20130226_SP">Updated target example per
						project requirement.</ph></p>
				<p>2013-01-31: <ph id="change_20130131_wl">Created</ph></p>
			</section>
		</body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_leg.histnote-Chof-p-LxAdv-note.dita  -->
	<!--	<xsl:message>Rosetta_leg.histnote-Chof-p-LxAdv-note.xsl requires manual development!</xsl:message> -->



	<xsl:template
		match="p[child::leg:histnote[not(preceding-sibling::node() | following-sibling::node())]]">
		<xsl:apply-templates select="@* | node()"/>
	</xsl:template>

	<!-- JD: 2017-07-27: added 'if' tests and '[not(self::leg:histnote)]' below to prevent extraneous <p> wrappers-->
	<xsl:template
		match="p[child::leg:histnote[preceding-sibling::node() | following-sibling::node()]]">
		<xsl:if
			test="child::leg:histnote[preceding-sibling::node()][not(self::leg:histnote)]">
			<p>
				<xsl:apply-templates
					select="leg:histnote/preceding-sibling::node()[not(self::leg:histnote)]"
				/>
			</p>
		</xsl:if>
		<xsl:apply-templates select="leg:histnote"/>
		<xsl:if
			test="child::leg:histnote[preceding-sibling::node()][not(self::leg:histnote)]">
			<p>
				<xsl:apply-templates
					select="leg:histnote/following-sibling::node()[not(self::leg:histnote)]"
				/>
			</p>
		</xsl:if>
	</xsl:template>

	<xsl:template match="leg:histnote">
		<note>
			<xsl:attribute name="notetype" select="'historical'"/>
			<bodytext>
			<xsl:apply-templates select="@* | node()"/>
			</bodytext>
		</note>
	</xsl:template>

	<!-- JD: adding this for NZ06, but may be more broadly applicable. (Need <bodytext> wrapper) -->
	<!-- JD: 2017-08-08: added test to exclude if immediate siblings are other notes; these 
			are grouped under <notes> in /modules/glp/Rosetta_glp.note-LxAdv-note.xsl
	-->
	<xsl:template
		match="leg:histnote[$streamID=('NZ06')]
		[not(preceding-sibling::*[1][self::glp:note or self::leg:histnote])
		and not(following-sibling::*[1][self::glp:note or self::leg:histnote])]">
		<note>
			<xsl:attribute name="notetype" select="'historical'"/>
			<xsl:apply-templates select="@*"/>
			<xsl:apply-templates select="leg:heading"/>
			<bodytext>
				<xsl:apply-templates select="* except leg:heading"/>
			</bodytext>
		</note>
	</xsl:template>

	<!-- JD: trap note if it will be grouped under <notes> in /modules/glp/Rosetta_glp.note-LxAdv-note.xsl  -->
	<xsl:template
		match="leg:histnote[$streamID=('NZ06')]
		[preceding-sibling::*[1][self::glp:note or self::leg:histnote]
		or following-sibling::*[1][self::glp:note or self::leg:histnote]]"/>
	

	<xsl:template match="leg:histnote[parent::p-limited]"/>

	<xsl:template match="leg:history">
		<!--  <primlawhist:primlawhist>
            <xsl:apply-templates select="@*|node()"/>
        </primlawhist:primlawhist>-->
		<!--   Need to check with the C.I    -->
	</xsl:template>

</xsl:stylesheet>