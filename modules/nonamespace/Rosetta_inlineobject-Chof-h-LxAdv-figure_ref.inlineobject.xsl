<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
    xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_inlineobject_ChildOf_h-to-LexisAdvance_figure_ref.inlineojbect">
    <title><sourcexml>h/inlineobject</sourcexml> to <targetxml>figure/ref:inlineobject</targetxml>
        <lnpid>id-CCCC-10362</lnpid></title>
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
            <p><sourcexml>h/inlineobject</sourcexml> becomes
                    <targetxml>figure/ref:inlineobject</targetxml>. The attributes of
                    <sourcexml>h</sourcexml> are handled as follows: <ul>
                    <li><sourcexml>h/@align</sourcexml> becomes
                        <targetxml>figure/@align</targetxml>.</li>
                </ul></p>
        </section>

        <example>
            <title>Source XML showing <sourcexml>inlineobject</sourcexml> occurring in
                    <sourcexml>h</sourcexml></title>
            <codeblock>

&lt;leg:levelbody&gt;
    &lt;leg:bodytext&gt;
        &lt;h align="center"&gt;
            &lt;inlineobject type="image" filename="CTH_ACT_2001-65_PIC030.gif" attachment="ln-server"/&gt;
        &lt;/h&gt;
    &lt;/leg:bodytext&gt;
&lt;/leg:levelbody&gt;

            </codeblock>
            <title>Target XML</title>
            <codeblock>

&lt;primlaw:bodytext&gt;
    &lt;figure align="center"&gt;
        &lt;ref:inlineobject&gt;
            &lt;ref:locator&gt;
                &lt;ref:locator-key&gt;
                    &lt;ref:key-name name="object-key"/&gt;
                    &lt;ref:key-value value="X-Y-CTH-ACT-2001-65-PIC030"/&gt; &lt;!-- X and Y are LNI and SMI values obtained from CSSM --&gt;
                &lt;/ref:locator-key&gt;
                &lt;ref:locator-params&gt;
                    &lt;proc:param name="componentseq" value="1"/&gt;
                    &lt;proc:param name="object-type" value="image"/&gt; &lt;!-- allowable values: “image”; (from .jpg, .gif, .png, .bmp)--&gt;
                    &lt;proc:param name="object-smi" value=""/&gt; &lt;!-- This @value assignment is done by conversion program --&gt;
                &lt;/ref:locator-params&gt;
            &lt;/ref:locator&gt;
        &lt;/ref:inlineobject&gt;
    &lt;/figure&gt;
&lt;/primlaw:bodytext&gt;

            </codeblock>
        </example>

        <section>
            <title>Changes</title>
            <p>2016-07-29: <ph id="change_20160729_jm">Added Note about xml snippets that illustrate
                    image handling. Note summarizes move from Apollo to Blobstore application. UK is
                    first LBU to move to Blobstore.</ph></p>
            <p>2012-10-26: Updated ref:locator markup in Target sample. </p>
            <p>2013-02-18: Target example updated per inlineobject instructions. </p>
            <p>2013-02-18: <ph id="change_20130218_SP">Created two sections, one for <b>"Release 4.0
                        and after"</b> and another for <b>"Pre-Release 4.0"</b>.</ph></p>
            <p>2013-04-30: <ph id="change_20130430_SP">Updated target sample according to latest
                    Apollo markup.</ph></p>
            <p>2013-05-01: <ph id="change_20130501_SP">Removed instructions for section
                        <b>"Pre-Release 4.0"</b> because according to latest Apollo markup, section
                        <b>"Release 4.0 and after"</b> and section <b>"Pre-Release 4.0"</b> now have
                    similar conversion markup.</ph></p>
            <p>2013-05-08: <ph id="change_20130508_SP">Extended the list of allowable values for
                    image handling.</ph></p>
        </section>

    </body>
	</dita:topic>


	<xsl:template match="h[inlineobject]">

		<!--  Original Target XPath:  figure/ref:inlineobject   -->
		<figure>
			<xsl:apply-templates select="@* | node()"/>
		</figure>

	</xsl:template>
    
    <xsl:template match="h[inlineobject][$streamID='UK09']" priority="25">
        
        <!--  Original Target XPath:  figure/ref:inlineobject   -->
        <h>
            <xsl:apply-templates select="@* | node()"/>
        </h>
        
    </xsl:template>

	
	<xsl:template match="h/@align" priority="2">
	    <!-- wpk 2017-12-13.  webstar 7067569.
	        Changed priority to 2.
	        The base "nonamespace/Rosetta_h-LxAdv-h.xsl" has this identical template.  Ideally it should be removed here so 
	        as to avoid amiguous match when both are included.
	        There are streams in which the base module is not used but this module is used.  So we cannot rely on the common exclusively.
	        In order to ensure no side effects and to avoid ambiguity, the priority is changed to 2.-->

	       <xsl:attribute name="align">
				<xsl:value-of select="."/>
			</xsl:attribute>

	</xsl:template>

</xsl:stylesheet>