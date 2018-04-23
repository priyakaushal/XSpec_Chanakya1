<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
    xmlns:glp="http://www.lexis-nexis.com/glp"
    xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0"
    exclude-result-prefixes="dita glp">

    <dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/"
        id="Rosetta_glp.note_inlineobject-to-LexisAdvance">
        <title><sourcexml>glp:note/inlineobject</sourcexml> to <lnpid>id-CCCC-10361</lnpid></title>
        <body>
            <section>
                <title>Instructions <i>[common element]</i></title>
                <note>This topic is used in numerous conversion instructions for several LBUs. It is
                    a shared topic rather than duplicated to ensure consistency and accuracy. The
                    xml snippets contained in this topic reflect markup needed for the Apollo image
                    handling application. The UK is the first LBU to move from Apollo to the
                    Blobstore application for image handling. Therefore, if this is a UK conversion
                    instruction document, please refer to the following topics for correct image
                    handling markup.<ul>
                        <li><sourcexml>lnlink[@service="ATTACHMENT"]</sourcexml> to
                                <targetxml>ref:lnlink[@service="ATTACHMENT"]</targetxml> for
                            BLOBSTORE images (id-CCCC-10542)</li>
                        <li><sourcexml>inlineobject</sourcexml> to
                                <targetxml>ref:inlineobject</targetxml> for BLOBSTORE images
                            (id-CCCC-10540)</li>
                        <li><sourcexml>link[@filename]</sourcexml> to
                                <targetxml>ref:lnlink[@service="ATTACHMENT"]</targetxml> for
                            BLOBSTORE images (id-CCCC-10541)</li>
                    </ul></note>
                <p><sourcexml>glp:note/inlineobject</sourcexml> becomes
                        <targetxml>glp:note</targetxml>. <sourcexml>inlineobject</sourcexml> is
                    suppressed in this scenario.</p>
            </section>

            <example>
                <title>Source XML showing <sourcexml>inlineobject</sourcexml> occurring within
                        <sourcexml>glp:note</sourcexml></title>
                <codeblock> &lt;level id="CFN_ADM.SGM_CFN.ADM.C1.120-65" leveltype="prec"
                    toc-caption="120.65 Form 11: Preliminary act &amp;mdash; (To be used where loss
                    of, or damage to or by, a single ship)" subdoc="true"&gt; &lt;glp:note&gt;
                    &lt;blockquote&gt; &lt;hrule/&gt; &lt;p&gt;&lt;text&gt;&lt;inlineobject
                    type="image" attachment="web-server" filename="leg1.gif"/&gt; Legislation cited
                    in the paragraph below. LawNow subscribers click through for daily updates and
                    historical versions.&lt;/text&gt; &lt;text&gt;&amp;#160;&lt;/text&gt;
                    &lt;text&gt;(CTH) &lt;ci:cite searchtype="LEG-REF"&gt;
                    &lt;ci:content&gt;&lt;remotelink refpt="CTH_REG_1988-269" dpsi="005X"
                    docidref="ABCD_1234" remotekey1="REFPTID" service="DOC-ID" alttext="Click to
                    link to LawNow Legislation"&gt; Admiralty Rules 1988&lt;/remotelink&gt;
                    Paragraph 25(2)(a), r 25, Form 11.&lt;/ci:content&gt; &lt;/ci:cite&gt;
                    &lt;/text&gt;&lt;/p&gt; &lt;/blockquote&gt; &lt;/glp:note&gt; &lt;heading
                    searchtype="FORM"&gt; &lt;desig searchtype="FORM-NUM"&gt; &lt;designum&gt;
                    &lt;refpt type="ext"
                    id="CFN.ADM.C1.120-65"&gt;&lt;/refpt&gt;120.65&lt;/designum&gt; &lt;/desig&gt;
                    &lt;title searchtype="FORM-TITLE"&gt;Form 11: Preliminary act &amp;mdash; (To be
                    used where loss of, or damage to or by, a single ship)&lt;/title&gt;
                    &lt;/heading&gt; &lt;bodytext searchtype="FORM"&gt; ..... .....
                    &lt;/bodytext&gt; &lt;/level&gt; </codeblock>
                <title>Target XML</title>
                <codeblock> &lt;form:form xml:id="CFN_ADM.SGM_CFN.ADM.C1.120-65"&gt; &lt;ref:anchor
                    id="CFN.ADM.C1.120-65" anchortype="global"/&gt; &lt;note notetype="xref"&gt;
                    &lt;bodytext&gt; &lt;blockquote&gt; &lt;p&gt;&lt;text&gt;Legislation cited in
                    the paragraph below. LawNow subscribers click through for daily updates and
                    historical versions.&lt;/text&gt; &lt;text&gt;&amp;#x00A0;&lt;/text&gt;
                    &lt;text&gt;(CTH) &lt;lnci:cite type="legislation"
                    citeref="CTH_REG_1988-269"&gt; &lt;lnci:content&gt; &lt;ref:crossreference
                    crossreferencetype="seeAlso"&gt; &lt;ref:content&gt;Admiralty Rules
                    1988&lt;/ref:content&gt; &lt;ref:locator anchoridref="CTH_REG_1988-269"&gt;
                    &lt;ref:locator-key&gt; &lt;ref:key-name name="DOC-ID"/&gt; &lt;ref:key-value
                    value="005X-ABCD_1234"/&gt; &lt;/ref:locator-key&gt; &lt;/ref:locator&gt;
                    &lt;/ref:crossreference&gt; Paragraph 25(2)(a), r 25, Form
                    11.&lt;/lnci:content&gt; &lt;/lnci:cite&gt;&lt;/text&gt;&lt;/p&gt;
                    &lt;/blockquote&gt; &lt;/bodytext&gt; &lt;/note&gt; &lt;form:document
                    annotated="false" official="false" typeofdoc="unnamed"&gt; &lt;heading&gt;
                    &lt;desig&gt;120.65&lt;/desig&gt; &lt;title&gt;Form 11: Preliminary act
                    &amp;#x2014; (To be used where loss of, or damage to or by, a single
                    ship)&lt;/title&gt; &lt;/heading&gt; &lt;form:bodytext&gt; ..... .....
                    &lt;/form:bodytext&gt; &lt;/form:document&gt; &lt;/form:form&gt; </codeblock>
            </example>


            <example>
                <title>Source XML showing <sourcexml>inlineobject</sourcexml> occurring after a
                        <sourcexml>glp:note</sourcexml> within <sourcexml>figure</sourcexml></title>
                <codeblock> &lt;blockquote&gt; &lt;figure&gt; &lt;glp:note&gt; &lt;h&gt;(MAB
                    PROGRAMME STRUCTURE)&lt;/h&gt; &lt;/glp:note&gt; &lt;inlineobject type="image"
                    attachment="ln-server" filename="pbep-g00121.gif"/&gt; &lt;/figure&gt;
                    &lt;/blockquote&gt; </codeblock>
                <title>Target XML showing <sourcexml>inlineobject</sourcexml> occurring after a
                        <sourcexml>glp:note</sourcexml> within <sourcexml>figure</sourcexml></title>
                <codeblock> &lt;figure&gt; &lt;note&gt; &lt;bodytext&gt; &lt;h&gt;(MAB PROGRAMME
                    STRUCTURE)&lt;/h&gt; &lt;/bodytext&gt; &lt;/note&gt; &lt;ref:inlineobject&gt;
                    &lt;ref:locator&gt; &lt;ref:locator-key&gt; &lt;ref:key-name
                    name="object-key"/&gt; &lt;ref:key-value value="X-Y-pbep-g00121"/&gt; &lt;!-- X
                    and Y are LNI and SMI values obtained from CSSM --&gt; &lt;/ref:locator-key&gt;
                    &lt;ref:locator-params&gt; &lt;proc:param name="componentseq" value="1"/&gt;
                    &lt;proc:param name="object-type" value="image"/&gt; &lt;!-- allowable values:
                    “image”; (from .jpg, .gif, .png, .bmp)--&gt; &lt;proc:param name="object-smi"
                    value=""/&gt; &lt;!-- This @value assignment is done by conversion program
                    --&gt; &lt;/ref:locator-params&gt; &lt;/ref:locator&gt;
                    &lt;/ref:inlineobject&gt; &lt;/figure&gt; </codeblock>
            </example>

            <section>
                <title>Changes</title>
                <p>2016-07-29: <ph id="change_20160729_csn">Added Note about xml snippets that
                        illustrate image handling. Note summarizes move from Apollo to Blobstore
                        application. UK is first LBU to move to Blobstore. VSTS 76146</ph></p>
                <p>2013-05-08: <ph id="change_20130508_SP">Extended the list of allowable values for
                        image handling.</ph></p>
                <p>2013-05-01: <ph id="change_20130501_SP">Removed instructions for section
                            <b>"Pre-Release 4.0"</b> because according to latest Apollo markup,
                        section <b>"Release 4.0 and after"</b> and section <b>"Pre-Release 4.0"</b>
                        now have similar conversion markup.</ph></p>
                <p>2013-04-30: <ph id="change_20130430_SP">Updated target sample according to latest
                        Apollo markup.</ph></p>
                <p>2013-02-18: <ph id="change_20130218_SP">Created two sections, one for <b>"Release
                            4.0 and after"</b> and another for <b>"Pre-Release 4.0"</b>.</ph></p>
                <p>2013-02-18: Target example updated per inlineobject instructions. </p>
            </section>
        </body>
    </dita:topic>

    <!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
    <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_inlineobject-Chof-glp.note-LxAdv-SUPPRESS.dita  -->
    <!-- <xsl:message>Rosetta_inlineobject-Chof-glp.note-LxAdv-SUPPRESS.xsl requires manual development!</xsl:message> -->


    <!-- 20170512:  MCJ:  For now, this module is being treated as a "do nothing" module as it appears that most of the work should be handled
                          by other templates. -->


</xsl:stylesheet>
