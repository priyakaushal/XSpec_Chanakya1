<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_inlineobject_ChildOf_bodytext_blockquote-to-LexisAdvance_bodytext_blockquote_p_figure_ref.inlineojbect">
  <title><sourcexml>bodytext/blockquote/inlineobject</sourcexml> to <targetxml>bodytext/blockquote/p/figure/ref:inlineobject</targetxml> <lnpid>id-CCCC-10355</lnpid></title>
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
        <p><sourcexml>bodytext/blockquote/inlineobject</sourcexml> becomes <targetxml>bodytext/blockquote/p/figure/ref:inlineobject</targetxml>.</p>
    </section>
    
    <example>
      <title>Source XML showing <sourcexml>inlineobject</sourcexml> occurring in <sourcexml>bodytext/blockquote</sourcexml></title>
      <codeblock>

&lt;bodytext&gt;
    &lt;blockquote&gt;
        &lt;inlineobject type="image" attachment="ln-server" filename="25ajfl3-alto1.gif"/&gt;
        &lt;p&gt;
            &lt;text&gt; Figure 1. A continuum of children’s relationships with parents after separation
                and divorce ...&lt;/text&gt;
        &lt;/p&gt;
    &lt;/blockquote&gt;
&lt;/bodytext&gt;

            </codeblock>
      
      <title>Target XML showing <sourcexml>inlineobject</sourcexml> occurring in <sourcexml>bodytext/blockquote</sourcexml></title>
      <codeblock>

&lt;blockquote&gt;
    &lt;p&gt;
        &lt;figure&gt;
            &lt;ref:inlineobject&gt;
                &lt;ref:locator&gt;
                    &lt;ref:locator-key&gt;
                        &lt;ref:key-name name="object-key"/&gt;
                        &lt;ref:key-value value="X-Y-25ajfl3-alto1"/&gt;
                        &lt;!-- X and Y are LNI and SMI values obtained from CSSM --&gt;
                    &lt;/ref:locator-key&gt;
                    &lt;ref:locator-params&gt;
                        &lt;proc:param name="componentseq" value="1"/&gt;
                        &lt;proc:param name="object-type" value="image"/&gt;
                        &lt;!-- allowable values: “image”; (from .jpg, .gif, .png, .bmp)--&gt;
                        &lt;proc:param name="object-smi" value=""/&gt;
                        &lt;!-- This @value assignment is done by conversion program --&gt;
                    &lt;/ref:locator-params&gt;
                &lt;/ref:locator&gt;
            &lt;/ref:inlineobject&gt;
        &lt;/figure&gt;
    &lt;/p&gt;
    &lt;p&gt;
        &lt;text&gt; Figure 1. A continuum of children’s relationships with parents after separation and
            divorce ...&lt;/text&gt;
    &lt;/p&gt;
&lt;/blockquote&gt;

            </codeblock>
    </example>
    
    <section>
      <title>Changes</title>
        <p>2016-07-29: <ph id="change_20160803_pk">Added Note about xml snippets that illustrate image
            handling. Note summarizes move from Apollo to Blobstore application. UK is first LBU to
            move to Blobstore.</ph></p>
        <p>2013-05-21: <ph id="change_20130521_PS">Created new module for handling of <sourcexml>bodytext/blockquote/inlineobject</sourcexml>.</ph></p>
    </section>
    
  </body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_inlineobject-Chof-bodytext_blockquote-LxAdv-bodytext_blockquote_p_figure_ref.inlineobject.dita  -->
<!-- this functionality is in the common module 
    
    -->
</xsl:stylesheet>