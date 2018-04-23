<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
    xmlns:glp="http://www.lexis-nexis.com/glp" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" 
    version="2.0" exclude-result-prefixes="dita glp">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_figure_glp.note-to-LexisAdvance_figure">
    <title>(Legislation &amp; Regulation) <sourcexml>figure/glp:note</sourcexml> to
        <targetxml>figure</targetxml> <lnpid>id-CCCC-10330</lnpid></title>    
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
            <title>Handling for figure/glp:note scenario specifically for Legislation and Regulation:</title>
            <p>
                <ul>
                    <li>
                        If <sourcexml>inlineobject</sourcexml> is the sole child content of the input Xpath <sourcexml>figure/glp:note/p/text</sourcexml> then
                        each image will be embedded in a single <targetxml>figure</targetxml> suppressing the input elements
                        <sourcexml>glp:note</sourcexml>, <sourcexml>p</sourcexml> and <sourcexml>text</sourcexml>
                        <note>If there is any other text or mark-up within <sourcexml>text</sourcexml> then it needs to be handled differently.</note>
                    </li> </ul>
            </p>
        </section>
        
        <example>
            <title>Source XML 1: When <sourcexml>inlineobject</sourcexml> is the sole child content
                of <sourcexml>figure/glp:note/p/text</sourcexml>.</title>
            <codeblock>

&lt;figure&gt;
    &lt;glp:note&gt;
        &lt;p&gt;&lt;text&gt;&lt;inlineobject type="image" filename="TAS_ACT_2009-88_LOW-IRCP09P1.gif" attachment="ln-server"/&gt;&lt;/text&gt;&lt;/p&gt;
    &lt;/glp:note&gt;
    &lt;glp:note&gt;
        &lt;p&gt;&lt;text&gt;&lt;inlineobject type="image" filename="TAS_ACT_2009-88_LOW-IRCP09P2.gif" attachment="ln-server"/&gt;&lt;/text&gt;&lt;/p&gt;
    &lt;/glp:note&gt;
&lt;/figure&gt;

            </codeblock>
            
            <title>Target XML 1: When <sourcexml>inlineobject</sourcexml> is the sole child content
                of <sourcexml>figure/glp:note/p/text</sourcexml>.</title>
            <codeblock>

&lt;figure&gt;
    &lt;ref:inlineobject&gt;
        &lt;ref:locator&gt;
            &lt;ref:locator-key&gt;
                &lt;ref:key-name name="object-key"/&gt;
                &lt;ref:key-value value="X-Y-TAS-ACT-2009-88-LOW-IRCP09P1"/&gt;   &lt;!-- X and Y are LNI and SMI values obtained from CSSM --&gt;
            &lt;/ref:locator-key&gt;
            &lt;ref:locator-params&gt;
                &lt;proc:param name="componentseq" value="1"/&gt;
                &lt;proc:param name="object-type" value="image"/&gt; &lt;!-- allowable values: “image”; (from .jpg, .gif, .png, .bmp)--&gt;
                &lt;proc:param name="object-smi" value=""/&gt;    &lt;!-- This @value assignment is done by conversion program --&gt;
            &lt;/ref:locator-params&gt;
    &lt;/ref:inlineobject&gt;
&lt;/figure&gt;
&lt;figure&gt;
    &lt;ref:inlineobject&gt;
        &lt;ref:locator&gt;
            &lt;ref:locator-key&gt;
                &lt;ref:key-name name="object-key"/&gt;
                &lt;ref:key-value value="X-Y-TAS-ACT-2009-88-LOW-IRCP09P2"/&gt;   &lt;!-- X and Y are LNI and SMI values obtained from CSSM --&gt;
            &lt;/ref:locator-key&gt;
            &lt;ref:locator-params&gt;
                &lt;proc:param name="componentseq" value="1"/&gt;
                &lt;proc:param name="object-type" value="image"/&gt; &lt;!-- allowable values: “image”; (from .jpg, .gif, .png, .bmp)--&gt;
                &lt;proc:param name="object-smi" value=""/&gt;    &lt;!-- This @value assignment is done by conversion program --&gt;
            &lt;/ref:locator-params&gt;
        &lt;/ref:locator&gt;
    &lt;/ref:inlineobject&gt;
&lt;/figure&gt;

             </codeblock>
        </example>
        
        <example>
            <title>Source XML 2: When there is any other text or mark-up within
                <sourcexml>text</sourcexml> then it needs to be handled differently.</title>
            <codeblock>

&lt;figure&gt;
    &lt;glp:note&gt;&lt;h&gt;Figure 5A&lt;/h&gt;&lt;/glp:note&gt;
    &lt;inlineobject type="image" attachment="ln-server" filename="cc-figure5-1.gif"/&gt;
        ....
    &lt;p&gt;&lt;text&gt;&lt;nl/&gt;&lt;nl/&gt;&lt;/text&gt;&lt;/p&gt;
&lt;/figure&gt;

            </codeblock>
            
            <title>Target XML 2: When there is any other text or mark-up within
                <sourcexml>text</sourcexml> then it needs to be handled differently.</title>
            <codeblock>

&lt;figure&gt;
    &lt;note&gt;
        &lt;bodytext&gt;
            &lt;h&gt;Figure 5A&lt;/h&gt;
        &lt;/bodytext&gt;
    &lt;/note&gt;
    &lt;ref:inlineobject&gt;
        &lt;ref:locator&gt;
            &lt;ref:locator-key&gt;
                &lt;ref:key-name name="object-key"/&gt;
                &lt;ref:key-value value="X-Y-cc-figure5-1"/&gt;   &lt;!-- X and Y are LNI and SMI values obtained from CSSM --&gt;
            &lt;/ref:locator-key&gt;
            &lt;ref:locator-params&gt;
                &lt;proc:param name="componentseq" value="1"/&gt;
                &lt;proc:param name="object-type" value="image"/&gt; &lt;!-- allowable values: “image”; (from .jpg, .gif, .png, .bmp)--&gt;
                &lt;proc:param name="object-smi" value=""/&gt;    &lt;!-- This @value assignment is done by conversion program --&gt;
            &lt;/ref:locator-params&gt;
        &lt;/ref:locator&gt;
    &lt;/ref:inlineobject&gt;
        ....
    &lt;note&gt;&lt;bodytext&gt;&lt;p&gt;&lt;text&gt;&lt;proc:nl/&gt;&lt;proc:nl/&gt;&lt;/text&gt;&lt;/p&gt;&lt;/bodytext&gt;&lt;/note&gt;
&lt;/figure&gt;

             </codeblock>
        </example>       
        
        <section>
            <title>Changes</title>
            <p>First Draft</p>
            <p>2013-02-18: Target examples updated per inlineobject instructions. </p>
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

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_glp.note-Chof-figure-LxAdv-figure.dita  -->

	<xsl:template match="figure/glp:note[p[child::text[child::inlineobject][not(child::*[name(.)!='inlineobject'])]][not(child::*[2])]]" priority="30">
	    <figure xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
			<xsl:apply-templates select="glp:note/p/text/inlineobject"/>
		</figure>
	</xsl:template>


</xsl:stylesheet>