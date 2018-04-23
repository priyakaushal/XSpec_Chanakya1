<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_blockquote-link-to-LexisAdvance_blockquote-p-text-ref.lnlink">
    <title><sourcexml>blockquote/link</sourcexml> to
        <targetxml>blockquote/p/text/ref:lnlink</targetxml> <lnpid>id-CCCC-10246</lnpid></title>
    <body>
        <section>
            <note>This topic is used in numerous conversion instructions for several LBUs. It is a shared
                topic rather than duplicated to ensure consistency and accuracy. The xml snippets contained
                in this topic reflect markup needed for the Apollo image handling application. The UK is the
                first LBU to move from Apollo to the Blobstore application for image handling. Therefore, if
                this is a UK conversion instruction document, please refer to the following topics for
                correct image handling markup.<ul>
                    <li><sourcexml>lnlink[@service="ATTACHMENT"]</sourcexml> to
                        <targetxml>ref:lnlink[@service="ATTACHMENT"]</targetxml> for BLOBSTORE images
                        (id-CCCC-10542)</li>
                    <li><sourcexml>inlineobject</sourcexml> to <targetxml>ref:inlineobject</targetxml> for
                        BLOBSTORE images (id-CCCC-10540)</li>
                    <li><sourcexml>link[@filename]</sourcexml> to
                        <targetxml>ref:lnlink[@service="ATTACHMENT"]</targetxml> for BLOBSTORE images
                        (id-CCCC-10541)</li>
                </ul></note>
            <p> If <sourcexml>link</sourcexml> element occurs as a child of
                <sourcexml>blockquote</sourcexml> then conversion need to move
                <targetxml>ref:lnlink</targetxml> as child of <targetxml>p/text</targetxml>,
                i.e, <sourcexml>blockquote/link</sourcexml> becomes
                <targetxml>blockquote/p/text/ref:lnlink</targetxml>. </p>
        </section>
        
        <example>
            <title>Source XML : if element link is a child of blockquote</title>
            <codeblock>

&lt;blockquote&gt;
    &lt;h&gt;Notice to mortgagor of mortgaged land of exercise of powers by reason of default&lt;/h&gt;
    &lt;link filename="ada-09-lta52-plr-form.pdf" type="pdf"&gt;Download in PDF&lt;/link&gt;
&lt;/blockquote&gt;

			</codeblock>
        </example>
        
        <example>
            <title>Target XML : if element link is a child of blockquote</title>
            <codeblock>

&lt;blockquote&gt;
    &lt;h&gt;Notice to mortgagor of mortgaged land of exercise of powers by reason of default&lt;/h&gt;
    &lt;p&gt;
        &lt;text&gt;
            &lt;ref:lnlink service="ATTACHMENT"&gt;
                &lt;ref:marker role="label"&gt;Download in PDF&lt;/ref:marker&gt;
                &lt;ref:locator&gt;
                    &lt;ref:locator-key&gt;
                        &lt;ref:key-name name="attachment-key"/&gt;
                        &lt;ref:key-value value="X-Y-ada-09-lta52-plr-form"/&gt;
                        &lt;!-- X and Y are LNI and SMI values obtained from CSSM --&gt;
                    &lt;/ref:locator-key&gt;
                    &lt;ref:locator-params&gt;
                        &lt;proc:param name="componentseq" value="1"/&gt;
                        &lt;proc:param name="attachment-type" value="PDF"/&gt;
                        &lt;proc:param name="attachment-smi" value=""/&gt;
                        &lt;!-- @value populated with SMI obtained from CSSM --&gt;
                        &lt;!-- This @value assignment is done by conversion program --&gt;
                    &lt;/ref:locator-params&gt;
                &lt;/ref:locator&gt;
            &lt;/ref:lnlink&gt;
        &lt;/text&gt;
    &lt;/p&gt; 
&lt;/blockquote&gt;

			</codeblock>
        </example>
        <note>For handling of link to ref:lnlink, refer the general markup 
            <xref href="../common_newest/Rosetta_link-LxAdv-ref.lnlink.dita">ref:lnlink</xref> section in the CI.</note>
        <section>
            <title>Changes</title>
            <p>2016-07-29: <ph id="change_20160803_pk">Added Note about xml snippets that illustrate image
                handling. Note summarizes move from Apollo to Blobstore application. UK is first LBU to
                move to Blobstore.</ph></p>
            <p>2013-05-01: <ph id="change_20130501_SP">Updated instructions and target example per latest Apollo markup.</ph></p>
            <p>2013-02-26: <ph id="change_20130226_SP">Updated target example per project requirement.</ph></p>
            <p>2012-10-26: Updated ref:locator markup in Target sample. </p>
        </section>
    </body>
	</dita:topic>
    
    <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_blockquote-link-LxAdv-blockquote-p-text-ref.lnlink.dita  -->
	 
    <!-- Vikas Rohilla : Template to match the blockquote/link-->
    	<xsl:template match="blockquote/link">
    	    <p>
    	        <text>
    	            <xsl:apply-templates select="@* | node()"/>
    	        </text>
    	    </p>
    	</xsl:template>
</xsl:stylesheet>