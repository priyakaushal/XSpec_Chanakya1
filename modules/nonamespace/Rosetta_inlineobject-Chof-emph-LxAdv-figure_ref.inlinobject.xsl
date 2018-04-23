<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:annot="http://www.lexisnexis.com/xmlschemas/content/shared/annotations/1/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita leg">

<!-- ********************** -->
    <!-- Use '/nonamespace/Rosetta_emph-LxAdv-emph.xsl' instead -->
<!-- ********************** -->
	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_inlineobject_ChildOf_emph-to-LexisAdvance_figure_ref.inlineojbect">
    <title><sourcexml>emph/inlineobject</sourcexml> to
            <targetxml>figure/ref:inlineobject</targetxml>
        <lnpid>id-CCCC-10359</lnpid></title>
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
            <p><sourcexml>emph/inlineobject</sourcexml> becomes
                    <targetxml>figure/ref:inlineobject</targetxml>.</p>
        </section>

        <example>
            <title>Source XML showing <sourcexml>inlineobject</sourcexml> occurring in
                    <sourcexml>emph</sourcexml></title>
            <codeblock>
&lt;p&gt;
    &lt;text&gt;
        &lt;emph typestyle="it"&gt;
            &lt;inlineobject type="image" filename="SA_ACT_1984-3_PIC2.gif" attachment="ln-server"/&gt;
        &lt;/emph&gt;
    &lt;/text&gt;
&lt;/p&gt;
            </codeblock>
            <title>Target XML</title>
            <codeblock>
&lt;p&gt;
    &lt;text&gt;
        &lt;figure&gt;
            &lt;ref:inlineobject&gt;
                &lt;ref:locator&gt;
                    &lt;ref:locator-key&gt;
                        &lt;ref:key-name name="object-key"/&gt;
                        &lt;ref:key-value value="X-Y-SA-ACT-1984-3-PIC2"/&gt; &lt;!-- X and Y are LNI and SMI values obtained from CSSM --&gt;
                    &lt;/ref:locator-key&gt;
                    &lt;ref:locator-params&gt;
                        &lt;proc:param name="componentseq" value="1"/&gt;
                        &lt;proc:param name="object-type" value="image"/&gt; &lt;!-- allowable values: “image”; (from .jpg, .gif, .png, .bmp)--&gt;
                        &lt;proc:param name="object-smi" value=""/&gt; &lt;!-- This @value assignment is done by conversion program --&gt;
                    &lt;/ref:locator-params&gt;
                &lt;/ref:locator&gt;
            &lt;/ref:inlineobject&gt;
    &lt;/figure&gt;
  &lt;/text&gt;  
&lt;/p&gt;
            </codeblock>
        </example>

        <section>
            <p>When source is having emph followed by inlineobject inside base:h element
                    <sourcexml>h/emph/inlineobject</sourcexml>than in Target it should Map with and becomes
                    <targetxml>emph/ref:inlineobject</targetxml>.</p>
        </section>

 <example>
            <codeblock>
&lt;h&gt;
    &lt;emph typestyle="bf"&gt;Table 2 Estimation of regression coefficients using the SUR model 
        &lt;inlineobject type="image" mimetype="image/gif" filename="JFRC_2005_Vol13_Issue2_May_167_1.gif" /&gt;
    &lt;/emph&gt;
&lt;/h&gt;

<b>Becomes</b>
    
 &lt;emph typestyle="bf"&gt;Table 2 Estimation of regression coefficients using the SUR model
     &lt;ref:inlineobject&gt;
                &lt;ref:locator&gt;
                    &lt;ref:locator-key&gt;
                        &lt;ref:key-name name="object-key"/&gt;
                        &lt;ref:key-value value="X-Y-JFRC_2005_Vol13_Issue2_May_167_1"/&gt; &lt;!-- X and Y are LNI and SMI values obtained from CSSM --&gt;
                    &lt;/ref:locator-key&gt;
                    &lt;ref:locator-params&gt;
                        &lt;proc:param name="componentseq" value="1"/&gt;
                        &lt;proc:param name="object-type" value="image"/&gt; &lt;!-- allowable values: “image”; (from .jpg, .gif, .png, .bmp)--&gt;
                        &lt;proc:param name="object-smi" value=""/&gt; &lt;!-- This @value assignment is done by conversion program --&gt;
                    &lt;/ref:locator-params&gt;
                &lt;/ref:locator&gt;
            &lt;/ref:inlineobject&gt;
&lt;/emph&gt;
            </codeblock>
        </example>

<!-- This doesn't have anything to do with inlineobject.  It is regarding emph markup. -->
        <section>
            <p>When source is having emph followed by another emph of same typestyle and then
                followed by inlineobject <sourcexml>sup/emph/emph/inlineobject</sourcexml>than in
                Target it should drop one emph and the followed
                    <sourcexml>emph/inlineobject</sourcexml> should directly Map it with and becomes
                    <targetxml>sup/emph/ref:inlineobject</targetxml>.</p>
        </section>

        <example>
            <codeblock>
&lt;row&gt;
    &lt;entry&gt;
        &lt;sup&gt;
            &lt;emph typestyle="it"&gt;
                &lt;emph typestyle="it"&gt;
                    &lt;inlineobject type="image" mimetype="image/gif" filename="ALE_2014_Vol16_Issue2_Sep_433_1.gif" /&gt;
                &lt;/emph&gt;
            &lt;/emph&gt;
        &lt;/sup&gt;
    &lt;/entry&gt;
    &lt;entry&gt;(1)&lt;/entry&gt;
&lt;/row&gt;

<b>Becomes</b>

&lt;row&gt;
    &lt;entry&gt;
        &lt;sup&gt;
            &lt;emph&gt;
                &lt;ref:inlineobject&gt;
                    &lt;ref:locator&gt;
                        &lt;ref:locator-key&gt;
                            &lt;ref:key-name name="object-key"/&gt;
                            &lt;ref:key-value value="X-Y-ALE_2014_Vol16_Issue2_Sep_433_1"/&gt; &lt;!-- X and Y are LNI and SMI values obtained from CSSM --&gt;
                        &lt;/ref:locator-key&gt;
                        &lt;ref:locator-params&gt;
                            &lt;proc:param name="componentseq" value="1"/&gt;
                            &lt;proc:param name="object-type" value="image"/&gt; &lt;!-- allowable values: “image”; (from .jpg, .gif, .png, .bmp)--&gt;
                            &lt;proc:param name="object-smi" value=""/&gt; &lt;!-- This @value assignment is done by conversion program --&gt;
                        &lt;/ref:locator-params&gt;
                    &lt;/ref:locator&gt;
                &lt;/ref:inlineobject&gt;
            &lt;/emph&gt;
        &lt;/sup&gt;
    &lt;/entry&gt;    
&lt;/row&gt;
            </codeblock>
        </example>

<!-- This doesn't have anything to do with the inlinobject. It is about the conversion of heading as a descendant of leg:comntry -->
        <p>When source is having
                <sourcexml>leg:comntry/level/bodytext/heading/title/emph/inlineobject</sourcexml>
            then it becomes
                <targetxml>annot:annotations/annot:annotation-grp/annot:annotation/bodytext/h/emph/ref:inlineobject</targetxml>.</p>

        <example>
            <codeblock>
&lt;leg:comntry searchtype="ANNOTATIONS"&gt;
    &lt;level leveltype="comm30"&gt;
        &lt;bodytext&gt;
            &lt;heading searchtype="ANNOTATIONS"&gt;
                &lt;title&gt;
                    &lt;emph typestyle="bf"&gt;
                        &lt;inlineobject type="image" mimetype="image/gif" filename="img8d4.gif" /&gt;NOTES
                    &lt;/emph&gt;
                &lt;/title&gt;
            &lt;/heading&gt;
        &lt;/bodytext&gt;
    &lt;/level&gt;
&lt;/leg:comntry&gt;

<b>Becomes</b>

&lt;annot:annotations&gt;
    &lt;annot:annotation-grp grptype="COMMENTARY"&gt;
        &lt;annot:annotation&gt;
            &lt;bodytext&gt;
                &lt;h&gt;
                    &lt;emph typestyle="bf"&gt;&lt;ref:inlineobject&gt;
                        &lt;ref:locator&gt;
                            &lt;ref:locator-key&gt;
                                &lt;ref:key-name name="object-key"/&gt;
                                &lt;ref:key-value value="X-Y-img8d4"/&gt; &lt;!-- X and Y are LNI and SMI values obtained from CSSM --&gt;
                            &lt;/ref:locator-key&gt;
                            &lt;ref:locator-params&gt;
                                &lt;proc:param name="componentseq" value="1"/&gt;
                                &lt;proc:param name="object-type" value="image"/&gt; &lt;!-- allowable values: “image”; (from .jpg, .gif, .png, .bmp)--&gt;
                                &lt;proc:param name="object-smi" value=""/&gt; &lt;!-- This @value assignment is done by conversion program --&gt;
                            &lt;/ref:locator-params&gt;
                        &lt;/ref:locator&gt;
                    &lt;/ref:inlineobject&gt;NOTES&lt;/emph&gt;
                &lt;/h&gt;
            &lt;/bodytext&gt;
        &lt;/annot:annotation&gt;
    &lt;/annot:annotation-grp&gt;
&lt;/annot:annotations&gt;
            </codeblock>
        </example>
        
        <section>
            <title>Changes</title>
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
            <p>2015-06-18: <ph id="change_20150618_AK">When source is having emph followed by inlineobject inside base:h element <sourcexml>h/emph/inlineobject</sourcexml> than in Target it should Map it like <targetxml>emph/ref:inlineobject</targetxml> as emph containing text under it.</ph></p>
            <p>2015-07-21: <ph id="change_20150721_AK">When Inlineobject is followed by two emph
                    elements of same typestyle then from Target we should drop the one emph element
                    and the followed <sourcexml>emph/inlineobject</sourcexml> should mapped with
                        <targetxml>figure/ref:inlineobject</targetxml> in Target.</ph> applicable to
                UK09 only RFA #2354. </p>
            <p>2015-07-24: <ph id="change_20150724_AK">When Inlineobject is followed by two emph
                elements of same typestyle <sourcexml>sup/emph/emph/inlineobject</sourcexml>then from Target we should drop the one emph element
                and the followed <sourcexml>emph/inlineobject</sourcexml> should mapped with
                <targetxml>emph/ref:inlineobject</targetxml> in Target.</ph> applicable to
                UK09 only RFA #2354. </p>
            <p>2015-08-12: <ph id="change_20150812_PS">Added instruction and example for 
                <sourcexml>leg:comntry/level/bodytext/heading/title/emph/inlineobject</sourcexml>, Applicable on UK07, R4.5 issue # 2364.</ph></p>
            <p>2016-08-01: <ph id="change_20160801_jm">Added Note about xml snippets that illustrate
                image handling. Note summarizes move from Apollo to Blobstore application. UK is
                first LBU to move to Blobstore.</ph></p>
            
        </section>
    </body>
	</dita:topic>

	<!--<xsl:template match="emph/inlineobject">

		<!-\-  Original Target XPath:  figure/ref:inlineobject   -\->
	    <figure xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
			<ref:inlineobject>
				<xsl:apply-templates select="@* | node()"/>
			</ref:inlineobject>
		</figure>

	</xsl:template>-->



</xsl:stylesheet>