<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
    xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_inlineobject_ChildOf_dispformula-to-LexisAdvance_formula_ref.inlineojbect">
    <title><sourcexml>dispformula/inlineobject</sourcexml> to <targetxml>formula/ref:inlineobject</targetxml> <lnpid>id-CCCC-10358</lnpid></title>
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
            <p><sourcexml>dispformula/inlineobject</sourcexml> becomes <targetxml>formula/ref:inlineobject</targetxml>.</p>
        </section>
        
        <example>
            <title>Source XML showing <sourcexml>inlineobject</sourcexml> occurring in <sourcexml>dispformula</sourcexml></title>
            <codeblock>

&lt;p&gt;
    &lt;text&gt;
        &lt;dispformula&gt;
            &lt;inlineobject type="image" attachment="ln-server" filename="g0146031.gif"/&gt;
        &lt;/dispformula&gt;
    &lt;/text&gt;
&lt;/p&gt;

            </codeblock>
            
            <title>Target XML</title>
            <codeblock>

&lt;p&gt;
    &lt;text&gt;
        &lt;formula&gt;
            &lt;ref:inlineobject&gt;
                &lt;ref:locator&gt;
                    &lt;ref:locator-key&gt;
                        &lt;ref:key-name name="object-key"/&gt;
                        &lt;ref:key-value value="X-Y-g0146031"/&gt;   &lt;!-- X and Y are LNI and SMI values obtained from CSSM --&gt;
                    &lt;/ref:locator-key&gt;
                    &lt;ref:locator-params&gt;
                        &lt;proc:param name="componentseq" value="1"/&gt;
                        &lt;proc:param name="object-type" value="image"/&gt; &lt;!-- allowable values: “image”; (from .jpg, .gif, .png, .bmp)--&gt;
                        &lt;proc:param name="object-smi" value=""/&gt;    &lt;!-- This @value assignment is done by conversion program --&gt;
                    &lt;/ref:locator-params&gt;
                &lt;/ref:locator&gt;
            &lt;/ref:inlineobject&gt;
        &lt;/formula&gt;
    &lt;/text&gt;
&lt;/p&gt;

            </codeblock>
        </example>
        
        <section>
            <title>Changes</title>
            <p>2012-10-26: Updated ref:locator markup in Target sample. </p>
            <p>2013-02-18: Target example updated per inlineobject instructions. </p>
            <p>2013-02-18: <ph id="change_20130218_SP">Created two sections, one for <b>"Release 4.0 and after"</b> and another for <b>"Pre-Release 4.0"</b>.</ph></p>
            <p>2013-04-30: <ph id="change_20130430_SP">Updated target sample according to latest Apollo markup.</ph></p>
            <p>2013-05-01: <ph id="change_20130501_SP">Removed instructions for section
                <b>"Pre-Release 4.0"</b> because according to latest Apollo markup, section
                <b>"Release 4.0 and after"</b> and section <b>"Pre-Release 4.0"</b> now have
                similar conversion markup.</ph></p>
            <p>2013-05-08: <ph id="change_20130508_SP">Extended the list of allowable values for image handling.</ph></p>
            <p>2016-08-01: <ph id="change_20160801_jm">Added Note about xml snippets that illustrate
                image handling. Note summarizes move from Apollo to Blobstore application. UK is
                first LBU to move to Blobstore.</ph></p>
        </section>
    </body>
	</dita:topic>


    <xsl:template match="inlineobject[parent::dispformula]">

		<!--  Original Target XPath:  formula/ref:inlineobject   -->
        <xsl:apply-templates select="." mode="refinline"/>

	</xsl:template>
</xsl:stylesheet>