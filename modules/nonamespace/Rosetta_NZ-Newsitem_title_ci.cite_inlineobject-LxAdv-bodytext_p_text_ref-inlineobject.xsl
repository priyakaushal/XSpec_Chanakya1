<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_NZ-Newsitem_title_ci.cite_inlineobject-LxAdv-bodytext_p_text_ref-inlineobject">
    <title><sourcexml>title/ci:cite/inlineobject</sourcexml> to <targetxml>bodytext/p/text/ref:inlineobject</targetxml> <lnpid>id-CCCC-10408</lnpid></title>
    <body>
        <section>
            <note>This topic is used in numerous conversion instructions for several LBUs. It is a
                shared topic rather than duplicated to ensure consistency and accuracy. The xml
                snippets contained in this topic reflect markup needed for the Apollo image handling
                application. The UK is the first LBU to move from Apollo to the Blobstore
                application for image handling. Therefore, if this is a UK conversion instruction
                document, please refer to the following topics for correct image handling markup.<ul>
                    <li><sourcexml>lnlink[@service="ATTACHMENT"]</sourcexml> to
                        <targetxml>ref:lnlink[@service="ATTACHMENT"]</targetxml> for BLOBSTORE
                        images (id-CCCC-10542)</li>
                    <li><sourcexml>inlineobject</sourcexml> to
                        <targetxml>ref:inlineobject</targetxml> for BLOBSTORE images
                        (id-CCCC-10540)</li>
                    <li><sourcexml>link[@filename]</sourcexml> to
                        <targetxml>ref:lnlink[@service="ATTACHMENT"]</targetxml> for BLOBSTORE
                        images (id-CCCC-10541)</li>
                </ul></note>
            <p>If the source document is having <sourcexml>heading/title/ci:cite/inlineobject</sourcexml> within <sourcexml>level</sourcexml>. This is a <b>Data Error</b>. LBU is correcting this Rosetta markup and will have updated content in time for the full content conversion load. In this mean time, <sourcexml>inlineobject</sourcexml> markup (i.e. 'heading/title/ci:cite/inlineobject') should be moved within <targetxml>bodytext/p/text/ref:inlineobject</targetxml>. Please refer the below markup for more understanding this scenario.</p>
        </section>
        
        <example>
            <title>Source XML</title>
            <codeblock>

&lt;level&gt;
    &lt;heading&gt;
        &lt;title&gt;
            &lt;ci:cite searchtype="CASE-REF"&gt;
                &lt;ci:content&gt;
                    &lt;citefragment searchtype="CASE-CITE-REF"&gt;Trade mark application number 736825 The mark consists of a 3-dimensial shape of a 
                        bottle as shown in the representation attached to the application in class&amp;#160;3.
                        &lt;emph typestyle="bf"&gt;&lt;/emph&gt;
                    &lt;/citefragment&gt;
                    &lt;nl/&gt;
                    &lt;inlineobject attachment="ln-server" filename="ipj-2009_5_10_f4.gif" type="image"/&gt;
                &lt;/ci:content&gt;
            &lt;/ci:cite&gt;
        &lt;/title&gt;
    &lt;/heading&gt;
        ...
&lt;/level&gt;

	</codeblock>
        </example>
        
        <example>
            <title>Target XML</title>
            <codeblock>

&lt;bodytext&gt;
    &lt;section&gt;
        &lt;heading&gt;
            &lt;title&gt;
                &lt;lnci:cite&gt;
                    &lt;lnci:content&gt;Trade mark application number 736825 The mark consists of a 3-dimensial shape of a 
                        bottle as shown in the representation attached to the application in class&amp;#x00A0;3.
                        &lt;emph typestyle="bf"&gt;&lt;/emph&gt;
                    &lt;/lnci:content&gt;
                &lt;/lnci:cite&gt;
            &lt;/title&gt;
        &lt;/heading&gt;
        &lt;bodytext&gt;
            &lt;p&gt;
                &lt;text&gt;
                    &lt;ref:inlineobject&gt;
                        &lt;ref:locator&gt;
                            &lt;ref:locator-key&gt;
                                &lt;ref:key-name name="object-key"/&gt;
                                &lt;ref:key-value value="X-Y-ipj-2009-5-10-f4"/&gt; &lt;!-- X and Y are LNI and SMI values obtained from CSSM --&gt;
                            &lt;/ref:locator-key&gt;
                            &lt;ref:locator-params&gt;
                               &lt;proc:param name="componentseq" value="1"/&gt;
                               &lt;proc:param name="object-type" value="image"/&gt; &lt;!-- allowable values: “image”; (from .jpg, .gif, .png, .bmp)--&gt;
                               &lt;proc:param name="object-smi" value=""/&gt; &lt;!-- This @value assignment is done by conversion program --&gt;                                
                            &lt;/ref:locator-params&gt;
                        &lt;/ref:locator&gt;
                    &lt;/ref:inlineobject&gt;
                &lt;/text&gt;
            &lt;/p&gt;
        &lt;/bodytext&gt;
    &lt;/section&gt;
&lt;/bodytext&gt;

	</codeblock>
        </example>
        
        <section>
            <title>Changes</title>
            <p>2013-02-18: Target example updated per inlineobject instructions. </p>
            <p>2013-02-18: <ph id="change_20130218_SP">Created two sections, one for <b>"Release 4.0 and after"</b> and another for <b>"Pre-Release 4.0"</b>.</ph></p>
            <p>2013-04-30: <ph id="change_20130430_SP">Updated target sample according to latest Apollo markup.</ph></p>
            <p>2013-05-01: <ph id="change_20130501_SP">Removed instructions for section
                <b>"Pre-Release 4.0"</b> because according to latest Apollo markup, section
                <b>"Release 4.0 and after"</b> and section <b>"Pre-Release 4.0"</b> now have
                similar conversion markup.</ph></p>
            <p>2013-05-08: <ph id="change_20130508_SP">Extended the list of allowable values for image handling.</ph></p>
            <p>2016-08-03: <ph id="change_20160803_jm">Added Note about xml snippets that illustrate
                image handling. Note summarizes move from Apollo to Blobstore application. UK is
                first LBU to move to Blobstore.</ph></p>
        </section>
        
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_NZ-Newsitem_title_ci.cite_inlineobject-LxAdv-bodytext_p_text_ref-inlineobject.dita  -->
	<xsl:message>Rosetta_NZ-Newsitem_title_ci.cite_inlineobject-LxAdv-bodytext_p_text_ref-inlineobject.xsl requires manual development!</xsl:message> 

	<xsl:template match="title/ci:cite/inlineobject">

		<!--  Original Target XPath:  bodytext/p/text/ref:inlineobject   -->
		<bodytext>
			<p>
				<text>
					<ref:inlineobject>
						<xsl:apply-templates select="@* | node()"/>
					</ref:inlineobject>
				</text>
			</p>
		</bodytext>

	</xsl:template>

	<xsl:template match="lnlink[@service=&#34;ATTACHMENT&#34;]">

		<!--  Original Target XPath:  ref:lnlink[@service="ATTACHMENT"]   -->
		<ref:lnlink>
			<xsl:apply-templates select="@* | node()"/>
		</ref:lnlink>

	</xsl:template>

	<xsl:template match="inlineobject">

		<!--  Original Target XPath:  ref:inlineobject   -->
		<ref:inlineobject>
			<xsl:apply-templates select="@* | node()"/>
		</ref:inlineobject>

	</xsl:template>

	<xsl:template match="link[@filename]">

		<!--  Original Target XPath:  ref:lnlink[@service="ATTACHMENT"]   -->
		<ref:lnlink>
			<xsl:apply-templates select="@* | node()"/>
		</ref:lnlink>

	</xsl:template>

	<xsl:template match="heading/title/ci:cite/inlineobject">

		<!--  Original Target XPath:  bodytext/p/text/ref:inlineobject   -->
		<bodytext>
			<p>
				<text>
					<ref:inlineobject>
						<xsl:apply-templates select="@* | node()"/>
					</ref:inlineobject>
				</text>
			</p>
		</bodytext>

	</xsl:template>

	<xsl:template match="level">

		<!--  Original Target XPath:  bodytext/p/text/ref:inlineobject   -->
		<bodytext>
			<p>
				<text>
					<ref:inlineobject>
						<xsl:apply-templates select="@* | node()"/>
					</ref:inlineobject>
				</text>
			</p>
		</bodytext>

	</xsl:template>

</xsl:stylesheet>