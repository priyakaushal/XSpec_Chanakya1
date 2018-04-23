<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_inlineobject-Chof-bodytext-LxAdv-bodytext_p_text_figure_ref.inlineobject">
    <title><sourcexml>bodytext/inlineobject</sourcexml> to
        <targetxml>bodytext/p/text/figure/ref:inlineobject</targetxml> <lnpid>id-CCCC-10354</lnpid></title>
    <body>
        <section>
            <title>Instructions</title>
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
            <p><sourcexml>bodytext/inlineobject</sourcexml> becomes
                <targetxml>bodytext/p/text/figure/ref:inlineobject</targetxml>.</p>
        </section>
        
        <example>
            <title>Source XML</title>
            <codeblock>

&lt;bodytext&gt;
    &lt;inlineobject type="image" attachment="ln-server" filename="elb31.gif"/&gt;
    &lt;p&gt;
        &lt;text&gt;The European Court of Justice also found that contracting out arrangements could fall under the Directive...&lt;/text&gt;
    &lt;/p&gt;
    ...
&lt;/bodytext&gt;

    </codeblock>
        </example>
        
        <example>
            <title>Target XML</title>
            <codeblock>

&lt;bodytext&gt;
        &lt;p&gt;
            &lt;text&gt;
                &lt;figure&gt;
                    &lt;ref:inlineobject&gt;
                        &lt;ref:locator&gt;
                            &lt;ref:locator-key&gt;
                                &lt;ref:key-name name="object-key"/&gt;
                                &lt;ref:key-value value="X-Y-elb31"/&gt;  &lt;!-- X and Y are LNI and SMI values obtained from CSSM --&gt;
                            &lt;/ref:locator-key&gt;
                            &lt;ref:locator-params&gt;
                                &lt;proc:param name="componentseq" value="1"/&gt;
                                &lt;proc:param name="object-type" value="image"/&gt; &lt;!-- allowable values: “image”; (from .jpg, .gif, .png, .bmp)--&gt;
                                &lt;proc:param name="object-smi" value=""/&gt;        &lt;!-- This @value assignment is done by conversion program --&gt;                                
                            &lt;/ref:locator-params&gt;
                        &lt;/ref:locator&gt;
                    &lt;/ref:inlineobject&gt;
                &lt;/figure&gt;
            &lt;/text&gt;
        &lt;/p&gt;
        &lt;p&gt;
            &lt;text&gt;The European Court of Justice also found that contracting out arrangements could fall under the Directive...&lt;/text&gt;
        &lt;/p&gt;
        ...
&lt;/bodytext&gt;

    </codeblock>
        </example>
        
        <section>
            <title>Changes</title>
            <p>2016-07-29: <ph id="change_20160729_csn">Added Note about xml snippets that illustrate
                image handling. Note summarizes move from Apollo to Blobstore application. UK is
                first LBU to move to Blobstore. VSTS 76146</ph></p>
            <p>2013-05-08: <ph id="change_20130508_SP">Extended the list of allowable values for image handling.</ph></p>
            <p>2013-05-01: <ph id="change_20130501_SP">Removed instructions for section
                <b>"Pre-Release 4.0"</b> because according to latest Apollo markup, section
                <b>"Release 4.0 and after"</b> and section <b>"Pre-Release 4.0"</b> now have
                similar conversion markup.</ph></p>
            <p>2013-04-30: <ph id="change_20130430_SP">Updated target sample according to latest Apollo markup.</ph></p>
            <p>2013-02-18: <ph id="change_20130218_SP">Created two sections, one for <b>"Release 4.0 and after"</b> and another for <b>"Pre-Release 4.0"</b>.</ph></p>
            <p>2013-02-18: Target example updated per inlineobject instructions. </p>
        </section>
	<!-- SEP 2015-9-23 added; method A versus method B? (depends on how bodytext is implemented externally)   -->
   
    </body>
	</dita:topic>

		  <xsl:template xmlns="http://dita.oasis-open.org/architecture/2005/" xmlns:ditaarch="http://dita.oasis-open.org/architecture/2005/" match="inlineobject[parent::bodytext]">
			<xsl:element name="p">
				<xsl:element name="text">
					<xsl:element name="figure">
						<xsl:apply-templates select="." mode="refinline"/>
					</xsl:element>
				</xsl:element>
			</xsl:element>
		  </xsl:template>
      
</xsl:stylesheet>