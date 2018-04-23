<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_inlineobject_ChildOf_p_blockquote-to-LexisAdvance_p_figure_ref.inlineojbect">
    <title><sourcexml>p/blockquote/inlineobject</sourcexml> to <targetxml>p/figure/ref:inlineobject</targetxml> <lnpid>id-CCCC-10363</lnpid></title>
    <body>
        <section>
            <note>This topic is used in numerous conversion instructions for several LBUs. It is a shared topic
                rather than duplicated to ensure consistency and accuracy. The xml snippets contained in this
                topic reflect markup needed for the Apollo image handling application. The UK is the first LBU
                to move from Apollo to the Blobstore application for image handling. Therefore, if this is a UK
                conversion instruction document, please refer to the following topics for correct image handling markup.<ul>
                    <li><sourcexml>lnlink[@service="ATTACHMENT"]</sourcexml> to
                        <targetxml>ref:lnlink[@service="ATTACHMENT"]</targetxml> for BLOBSTORE images
                        (id-CCCC-10542)</li>
                    <li><sourcexml>inlineobject</sourcexml> to <targetxml>ref:inlineobject</targetxml> for
                        BLOBSTORE images (id-CCCC-10540)</li>
                    <li><sourcexml>link[@filename]</sourcexml> to
                        <targetxml>ref:lnlink[@service="ATTACHMENT"]</targetxml> for BLOBSTORE images
                        (id-CCCC-10541)</li>
                </ul></note>
            <p><sourcexml>p/blockquote/inlineobject</sourcexml> becomes
                    <targetxml>p/figure/ref:inlineobject</targetxml>.</p>
            <note> If <sourcexml>inlineobject</sourcexml> in this context contains sibling elements
                (other children of <sourcexml>blockquote</sourcexml>), do not complete this
                instruction. Instead, complete <xref href="Rosetta_inlineobject-w-siblings-Chof-p_blockquote-LxAdv-p_figure_ref.inlineobject.dita#Rosetta_inlineobject-w-siblings-Chof-p_blockquote-LxAdv-p_figure_ref.inlineobject"/></note>
        </section>
        
        <example>
            <title>Source XML showing <sourcexml>inlineobject</sourcexml> occurring in <sourcexml>blockquote</sourcexml></title>
            <codeblock>

&lt;leg:levelbody&gt;
    &lt;leg:bodytext&gt;
        &lt;p&gt;
            &lt;text&gt;The value of ...&lt;/text&gt;
            &lt;blockquote&gt;
                &lt;inlineobject type="image" filename="TAS_ACT_1987-13_HIGH-PENAM07.tiff" attachment="ln-server"/&gt;
            &lt;/blockquote&gt;
            &lt;text&gt;where&amp;#160;&amp;ndash;&lt;/text&gt;
        &lt;/p&gt;
    &lt;/leg:bodytext&gt;
&lt;/leg:levelbody&gt;

            </codeblock>
            
            <title>Target XML showing <sourcexml>inlineobject</sourcexml> occurring in <sourcexml>blockquote</sourcexml></title>
            <codeblock>

&lt;primlaw:bodytext&gt;
    &lt;p&gt;
        &lt;text&gt;The value of ...&lt;/text&gt;
        &lt;figure&gt;
            &lt;ref:inlineobject&gt;
                &lt;ref:locator&gt;
                    &lt;ref:locator-key&gt;
                        &lt;ref:key-name name="object-key"/&gt;
                        &lt;ref:key-value value="X-Y-TAS-ACT-1987-13-HIGH-PENAM07"/&gt; &lt;!-- X and Y are LNI and SMI values obtained from CSSM --&gt;
                    &lt;/ref:locator-key&gt;
                    &lt;ref:locator-params&gt;
                        &lt;proc:param name="componentseq" value="1"/&gt;
                        &lt;proc:param name="object-type" value="image"/&gt; &lt;!-- allowable values: “image”; (from .jpg, .gif, .png, .bmp, .tiff)--&gt;
                        &lt;proc:param name="object-smi" value=""/&gt; &lt;!-- This @value assignment is done by conversion program --&gt;
                    &lt;/ref:locator-params&gt;
                &lt;/ref:locator&gt;
            &lt;/ref:inlineobject&gt;
        &lt;/figure&gt;
    &lt;/p&gt;
&lt;/primlaw:bodytext&gt;

            </codeblock>
        </example>
        
        <section>
            <title>Changes</title>
            <p>2016-07-26: <ph id="change_20160726_BRT">Added Note about xml snippets that
                    illustrate image handling. Note summarizes move from Apollo to Blobstore
                    application. UK is first LBU to move to Blobstore. </ph></p>
            <p>2012-10-26: Updated ref:locator markup in Target sample. </p>
            <p>2013-02-18: Target example updated per inlineobject instructions. </p>
            <p>2013-02-18: <ph id="change_20130218_SP">Created two sections, one for <b>"Release 4.0 and after"</b> and another for <b>"Pre-Release 4.0"</b>.</ph></p>
            <p>2013-04-30: <ph id="change_20130430_SP">Updated target sample according to latest Apollo markup.</ph></p>
            <p>2013-05-01: <ph id="change_20130501_SP">Removed instructions for section
                <b>"Pre-Release 4.0"</b> because according to latest Apollo markup, section
                <b>"Release 4.0 and after"</b> and section <b>"Pre-Release 4.0"</b> now have
                similar conversion markup.</ph></p>
            <p>2013-05-08: <ph id="change_20130508_SP">Extended the list of allowable values for image handling.</ph></p>
            <p>2013-05-08: <ph id="change_20151117_BRT">Added note to use a different instruction if <sourcexml>inlineobject</sourcexml> contains siblings.</ph></p>
            <p>2015-12-08: <ph id="change_20151208_BRT">Added '.tiff' to the list of allowable values for <sourcexml>proc:param[@name="object-type"]/@value="image"</sourcexml>.</ph></p>
            
        </section>
        
    </body>
	</dita:topic>

	<xsl:template match="blockquote[inlineobject and not(inlinobject/following-sibling::node() or inlineobject/preceding-sibling::node())]">

		<!--  Original Target XPath:  p/figure/ref:inlineobject   -->
	    <p xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
			<figure>
				<ref:inlineobject>
					<xsl:apply-templates select="inlineobject" mode="refinline"/>
				</ref:inlineobject>
			</figure>
		</p>

	</xsl:template>
    
    <!-- Template specific to p/blockquote so a new p wrapper is not created... a better way probably exists to do this. --> 
    <xsl:template match="p/blockquote[inlineobject and not(inlinobject/following-sibling::node() or inlineobject/preceding-sibling::node())]" priority="25">
        
        <!--  Original Target XPath:  p/figure/ref:inlineobject   -->
        <figure xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
            <xsl:apply-templates select="." mode="refinline"/>
        </figure>
        
        
    </xsl:template>
    
</xsl:stylesheet>