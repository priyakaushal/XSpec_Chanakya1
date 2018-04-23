<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
    xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="common-rosetta_figure">
    <title><sourcexml>figure</sourcexml> to <targetxml>figure</targetxml>
        <lnpid>id-CCCC-10320</lnpid></title>
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
            <p><sourcexml>figure</sourcexml> becomes <targetxml>figure</targetxml>. The children of
                    <sourcexml>figure</sourcexml> are handled as follows:<ul>
                    <li><sourcexml>caption</sourcexml> becomes <targetxml>caption</targetxml>. The
                        content inside <sourcexml>caption</sourcexml> should be mapped to
                            <targetxml>caption/p/text</targetxml>.</li>
                    <li><sourcexml>inlineobject</sourcexml> becomes
                            <targetxml>ref:inlineobject</targetxml>. See <xref href="../common_newest/Rosetta_inlineobject-LxAdv-figure_ref.inlineobject.dita"/> for details.</li>
                    <li><sourcexml>link</sourcexml> becomes
                            <targetxml>ref:lnlink[@service="ATTACHMENT"]</targetxml>. See General
                        Markup section for details.</li>
                    <!-- Did not use xref markup for link-to-ref:lnlink instruction because some CIs have figure module but not link module, e.g. CA06-Regulations. McNally Mar 20 2014. -->
                </ul>
            </p>
            <note><b>In NewLexis <targetxml>figure</targetxml> is not allowed within
                        <targetxml>blockquote</targetxml> element. If <sourcexml>figure</sourcexml>
                    element is a direct child of <sourcexml>blockquote</sourcexml> element and
                        <sourcexml>figure</sourcexml> element does not have any sibling element in
                        <sourcexml>blockquote</sourcexml> element, then drop the outer
                        <sourcexml>blockquote</sourcexml> element in NewLexis.</b></note>
            <note>
                <p><b><sourcexml>figure/glp:note/h</sourcexml> becomes
                            <targetxml>figure/note/bodytext/h</targetxml> in NewLexis.</b></p>
                <p>If <sourcexml>figure/p</sourcexml> becomes
                        <targetxml>figure/note/bodytext/p</targetxml> in NL conversion.</p>
            </note>
        </section>
        <example>
            <title>Example 1</title>
            <codeblock>
&lt;blockquote&gt;
    &lt;figure&gt;
        &lt;glp:note&gt;
            &lt;h&gt;(MAB PROGRAMME STRUCTURE)&lt;/h&gt;
        &lt;/glp:note&gt;
        &lt;inlineobject type="image" attachment="ln-server" filename="pbep-g00121.gif"/&gt;
    &lt;/figure&gt;
&lt;/blockquote&gt;
            </codeblock>
            <b>becomes</b>
            <codeblock>                    
&lt;figure&gt;
    &lt;note&gt;
        &lt;bodytext&gt;
            &lt;h&gt;(MAB PROGRAMME STRUCTURE)&lt;/h&gt;
        &lt;/bodytext&gt;
    &lt;/note&gt;
    &lt;ref:inlineobject&gt;
        &lt;ref:locator&gt;
            &lt;ref:locator-key&gt;
                    &lt;ref:key-name name="object-key"/&gt;
                    &lt;ref:key-value value="X-Y-pbep-g00121"/&gt;    &lt;!-- X and Y are LNI and SMI values obtained from CSSM --&gt;
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
            <title>Example 2</title>
            <codeblock>
&lt;figure&gt;
    &lt;inlineobject filename="1484985_RSOS_913_CURRENT-0001.jpg" type="image" attachment="ln-server"/&gt;
&lt;/figure&gt;

            </codeblock>
            <b>becomes</b>
            <codeblock>                    
&lt;figure&gt;                   
    &lt;ref:inlineobject&gt;
        &lt;ref:locator&gt;
            &lt;ref:locator-key&gt;
                &lt;ref:key-name name="object-key"/&gt;
                &lt;ref:key-value value="X-Y-1484985-RSOS-913-CURRENT-0001"/&gt;  &lt;!-- X and Y are LNI and SMI values obtained from CSSM --&gt;
            &lt;/ref:locator-key&gt;
            &lt;ref:locator-params&gt;
                &lt;proc:param name="componentseq" value="1"/&gt;
                &lt;proc:param name="object-type" value="image"/&gt; &lt;!-- allowable values: “image”; (from .jpg, .gif, .png)--&gt;
                &lt;proc:param name="object-smi" value=""/&gt;    &lt;!-- This @value assignment is done by conversion program --&gt;
            &lt;/ref:locator-params&gt;
        &lt;/ref:locator&gt;
    &lt;/ref:inlineobject&gt;
&lt;/figure&gt;
            </codeblock>
        </example>
        <example>
            <title>Example 3</title>
            <codeblock>
&lt;figure&gt;
    &lt;caption&gt;Head of PSL IP&amp;amp;IT&lt;/caption&gt;
    &lt;inlineobject filename="Lawrence Milner.jpg"/&gt;
&lt;/figure&gt;
            </codeblock>
            <b>becomes</b>
            <codeblock>                    
&lt;figure&gt;
    &lt;caption&gt;
        &lt;p&gt;
            &lt;text&gt;Head of PSL IP&amp;amp;IT&lt;/text&gt;
        &lt;/p&gt;
    &lt;/caption&gt;
    &lt;ref:inlineobject&gt;
        &lt;ref:locator&gt;
            &lt;ref:locator-key&gt;
                &lt;ref:key-name name="object-key"/&gt;
                &lt;ref:key-value value="X-Y-Lawrence Milner"/&gt;
                &lt;!-- X and Y are LNI and SMI values obtained from CSSM --&gt;
            &lt;/ref:locator-key&gt;
            &lt;ref:locator-params&gt;
                &lt;proc:param name="componentseq" value="1"/&gt;
                &lt;proc:param name="object-type" value="image"/&gt;
                &lt;proc:param name="object-smi" value=""/&gt;
                &lt;!-- This @value assignment is done by conversion program --&gt;
            &lt;/ref:locator-params&gt;
        &lt;/ref:locator&gt;
    &lt;/ref:inlineobject&gt;
&lt;/figure&gt;
            </codeblock>
        </example>
        <note>
            <sourcexml>figure/p/text/inlineobject</sourcexml> becomes
                <targetxml>figure/ref:inlineobject</targetxml>, omit p/text from output if
                <sourcexml>figure/p/text/</sourcexml> having only
                <sourcexml>inlineobject</sourcexml> as single child and no PCDATA within
                <sourcexml>text</sourcexml>. </note>
        <example>
            <title>Example 4</title>
            <codeblock>

&lt;figure&gt;
   &lt;p&gt;
       &lt;text&gt;
               &lt;inlineobject type="image" filename="eu-tracker_band_of_flags.jpg"/&gt;
       &lt;/text&gt;
   &lt;/p&gt;
&lt;/figure&gt;

            </codeblock>
            <b>becomes</b>
            <codeblock>                    

&lt;figure&gt;
    &lt;ref:inlineobject&gt;
        &lt;ref:locator&gt;
            &lt;ref:locator-key&gt;
                &lt;ref:key-name name="object-key"/&gt;
                &lt;ref:key-value value="X-Y-eu-tracker_band_of_flags"/&gt;
                &lt;!-- X and Y are LNI and SMI values obtained from CSSM --&gt;
            &lt;/ref:locator-key&gt;
            &lt;ref:locator-params&gt;
                &lt;proc:param name="componentseq" value="1"/&gt;
                &lt;proc:param name="object-type" value="image"/&gt;
                &lt;proc:param name="object-smi" value=""/&gt;
                &lt;!-- This @value assignment is done by conversion program --&gt;
            &lt;/ref:locator-params&gt;
        &lt;/ref:locator&gt;
    &lt;/ref:inlineobject&gt;
&lt;/figure&gt;

            </codeblock>
        </example>
        <example>
            <title>Example 5. child <sourcexml>link</sourcexml></title>
            <codeblock>

&lt;figure&gt;
    &lt;link type="image" filename="HSWT-THS-W11037A.tif"&gt;Click here to view image&lt;/link&gt;
&lt;/figure&gt;


            </codeblock>
            <b>becomes</b>
            <codeblock>                    

&lt;figure&gt;
   &lt;ref:lnlink service="ATTACHMENT"&gt;
      &lt;ref:marker role="label"&gt;Click here to view image&lt;/ref:marker&gt;
      &lt;ref:locator&gt;
         &lt;ref:locator-key&gt;
            &lt;ref:key-name name="attachment-key"/&gt;
            &lt;ref:key-value value="X-Y-HSWT-THS-W11037A"/&gt;
            &lt;!-- X and Y are LNI and SMI values obtained from CSSM --&gt;
         &lt;/ref:locator-key&gt;
         &lt;ref:locator-params&gt;
            &lt;proc:param name="componentseq" value="1"/&gt;
            &lt;proc:param name="attachment-type" value="image"/&gt;
            &lt;proc:param name="attachment-smi" value=""/&gt;
            &lt;!-- @value populated with SMI obtained from CSSM --&gt;
         &lt;/ref:locator-params&gt;
      &lt;/ref:locator&gt;
   &lt;/ref:lnlink&gt;
&lt;/figure&gt;

            </codeblock>
        </example>
        <section>
            <title>Changes</title>
            <p>2016-07-29: <ph id="change_20160729_jm">Added Note about xml snippets that illustrate
                    image handling. Note summarizes move from Apollo to Blobstore application. UK is
                    first LBU to move to Blobstore.</ph></p>
            <p>2014-10-28: <ph id="change_20141028_JCG">Moved instruction regarding the XPath XPath
                        <sourcexml>caption/note</sourcexml> into a separate topic. Not a rule
                    change, just a minor reorganization of the instructions.</ph></p>
            <p>2014-10-24: <ph id="change_20141024_JCG">Added instructions and example to handle the
                    new XPath <sourcexml>caption/note</sourcexml>. (R4.5 Content Issue List
                    #1993)</ph></p>
            <p>2014-03-20: <ph id="change_20140320_jm">Illustrative change. Added example to
                    explicitly show standard conversion of child link to ref:lnlink. Prompted by
                    Phase 6 UK Discussion Item 77. Webteam 252434.</ph></p>
            <p>2013-10-23: <ph id="change_20131023_SSX">Added instruction for handling
                    figure/p/text/inlineobject Webteam # 239816</ph></p>
            <p>2013-07-15: <ph id="change_20130715_DSF">Added instructions for handling
                    figure/caption and an example demonstrating the mapping.</ph></p>
            <p>2013-05-08: <ph id="change_20130508_SP">Extended the list of allowable values for
                    image handling.</ph></p>
            <p>2013-05-01: <ph id="change_20130501_SP">Removed instructions for section
                        <b>"Pre-Release 4.0"</b> because according to latest Apollo markup, section
                        <b>"Release 4.0 and after"</b> and section <b>"Pre-Release 4.0"</b> now have
                    similar conversion markup.</ph></p>
            <p>2013-04-30: <ph id="change_20130430_SP">Updated target sample according to latest
                    Apollo markup.</ph></p>
            <p>2013-02-18: <ph id="change_20130218_SP">Created two sections, one for <b>"Release 4.0
                        and after"</b> and another for <b>"Pre-Release 4.0"</b>.</ph></p>
            <p>2013-02-18: Target example updated per inlineobject instructions.</p>
            <p>2013-01-11: Example added for figure/inlineobject scenario.</p>
        </section>

        

    </body>
	</dita:topic>

<!-- SP: if CA19 needs Blobstore, we will need to update Joy's variable, currently it is UK specific...   -->

<!-- SP: copied from Vikas Rohilla : Updated for the streamID CA01   -->
    <xsl:template match="figure[child::p[child::text[child::inlineobject]]]">
		<xsl:element name="p" xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
			<xsl:apply-templates select="descendant::inlineobject"/>
		</xsl:element>        
    </xsl:template>

                <xsl:template  match="figure">
					<!--SP TODO: commenting this out makes the output schema valid. <xsl:element name="figure">-->
                        <xsl:apply-templates select="@* | node()"/>
						<!--</xsl:element>
							 the preferred way as recommended by Joy:
							 you probably want to go to the one I mentioned and test to see if the parent is already figure and if it is, just pass through, as the parent figure output wrapper has already been handled. That template is deciding whether to apply a parent figure or not, so that test would work well with it.-->
                </xsl:template>
    
    <xsl:template match="caption">
        <xsl:element name="caption">
            <xsl:element name="p">
                <xsl:element name="text">
                    <xsl:apply-templates/>
                </xsl:element>
            </xsl:element>
        </xsl:element>
    </xsl:template>
            
</xsl:stylesheet>
