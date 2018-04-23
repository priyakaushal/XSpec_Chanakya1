<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:glp="http://www.lexis-nexis.com/glp" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita glp">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="common_rosetta_glp.note_blockquote_p_text_inlineobject-to-LexisAdvance_note_bodytext_p_text">
    <title><sourcexml>glp:note</sourcexml> <lnpid>id-CCCC-10341</lnpid></title>
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
            <p><sourcexml>glp:note/blockquote/p/text/inlineobject[@filename='leg1.gif' or @filename=’leg1.png’]</sourcexml> indicates a LawNow legislation citation. 
                It should be handled as follows: <ul>
                    <li><sourcexml>glp:note</sourcexml> becomes <targetxml>note</targetxml> with <targetxml>note/@notetype</targetxml> set to
                        "xref".</li>
                    <li>Omit <sourcexml>blockquote</sourcexml>, but carry its content forward into <targetxml>note/bodytext</targetxml> (i.e.
                        <sourcexml>glp:note/blockquote/p/text</sourcexml> becoems <targetxml>note/bodytext/p/text</targetxml>).</li>
                    <li>Suppress <sourcexml>inlineobject</sourcexml> along with the
                            <sourcexml>text</sourcexml> element that wraps it. If  following the
                            <sourcexml>text/inlineobject</sourcexml> is a
                            <sourcexml>text</sourcexml> element containing the content
                            <sourcexml>nbsp</sourcexml> then supress this element as well.</li>
                </ul></p>
            <note> For additional information on the handling of <sourcexml>inlineobject</sourcexml>
                and <sourcexml>inlineobject</sourcexml> suppression , refer to <xref href="../common_newest/Rosetta_inlineobject-LxAdv-ref.inlineobject.dita">inlineobject</xref>
                suppression list. </note>
        </section>
        <example>
            <title>Source XML</title>
            <codeblock>

&lt;glp:note&gt;
    &lt;blockquote&gt;
        &lt;p&gt;
            &lt;text&gt;
                &lt;inlineobject type="image" 
                              attachment="web-server" 
                              filename="leg1.gif"/&gt;
                    Legislation cited in [1.050] below. LawNow subscribers 
                    click through for daily updates and historical versions.
            &lt;/text&gt;
            &lt;text&gt;&amp;#160;&lt;/text&gt;
            &lt;text&gt;
                (CTH) 
                  &lt;ci:cite searchtype="LEG-REF"&gt;
                    &lt;ci:content&gt;
                        &lt;remotelink refpt="CTH_ACT_2001-50" 
                                    dpsi="005X" 
                                    remotekey1="REFPTID" 
                                    service="DOC-ID"
                                    docidref="ABCD_9876"
                                    alttext="Click to link to LawNow Legislation"&gt;
                            Corporations Act 2001
                         &lt;/remotelink&gt; Pt 2A.2, s 114.
                     &lt;/ci:content&gt;
                  &lt;/ci:cite&gt;
            &lt;/text&gt;
        &lt;/p&gt;
    &lt;/blockquote&gt;
&lt;/glp:note&gt;

            </codeblock>
            <title>Target XML</title>
            <codeblock>

&lt;note notetype="xref"&gt;
   &lt;bodytext&gt;
    &lt;p&gt;
       &lt;text&gt;(CTH)
         &lt;lnci:cite type="legislation" citeref="CTH_REG_1988-269"&gt;
            &lt;lnci:content&gt; 
              &lt;ref:crossreference crossreferencetype="seeAlso"&gt;
               &lt;ref:locator anchoridref="CTH_ACT_2001-50"&gt;
                &lt;ref:locator-key&gt;
                    &lt;ref:key-name name="DOC-ID"/&gt;
                    &lt;ref:key-value value="005X-ABCD_9876"/&gt;
                &lt;/ref:locator-key&gt;
               &lt;/ref:locator&gt;
             &lt;ref:content&gt;Corporations Act 2001&lt;/ref:content&gt;
        &lt;/ref:crossreference&gt; Pt 2A.2, s 114.
       &lt;/lnci:content&gt;
      &lt;/lnci:cite&gt;
     &lt;/text&gt;
    &lt;/p&gt;
   &lt;/bodytext&gt;
 &lt;/note&gt;

            </codeblock>
        </example>
        <section>
            <title>Changes</title>
            <p>2016-08-05: <ph id="change_20160805_AS">Added Note about xml snippets that
                illustrate image handling. Note summarizes move from Apollo to Blobstore
                application. UK is first LBU to move to Blobstore. </ph></p>
            <p>2013-03-01 <ph id="change_20130301_WLL">Additional information was added for the handling of leg1.gif and leg1.png within an <sourcexml>inlineobject</sourcexml>.</ph></p>
            <p>2013-03-05 <ph id="change_20130305_WLL">Example was added for <sourcexml>inlineobject</sourcexml> within target xml example.</ph></p>
            <p>2013-03-12 <ph id="change_20130312_WLL"> Updated the instructions to remove the contradictory addition of inlineobject within the output</ph></p>
            <p>2013-05-29 <ph id="change_20130529_SS"> Corrected the file name for <sourcexml>inlineobject</sourcexml> in order to make it linkable.</ph></p>
            <p>2013-12-20 <ph id="change_20131220_brt"> Corrected the target example (added ref:corssreference). WebTeam #5158742 - AU04. Applies generally to all LBUs and streams.</ph></p>
            
        </section>
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_glp.note_blockquote_p_text_inlineobject-LxAdv-note_bodytext_p_text.dita  -->

    <xsl:template match="glp:note[blockquote[p[text[inlineobject[@filename='leg1.gif' or @filename='leg1.png']]]]]" priority="30">
        <note xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
            <xsl:attribute name="notetype" select="'xref'"/>
            <xsl:apply-templates/>
        </note>
	</xsl:template>

        <xsl:template match="glp:note/blockquote[p[text[inlineobject[@filename='leg1.gif' or @filename='leg1.png']]]]" priority="30">
            <bodytext xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
		      <xsl:apply-templates/>
            </bodytext>
	   </xsl:template>
    
    <xsl:template match="glp:note/blockquote[p[text[inlineobject]]]/hrule" priority="30"/>
    
    <xsl:template match="glp:note/blockquote/p/text[inlineobject[@filename='leg1.gif' or @filename='leg1.png']]" priority="30"/>
        
    <xsl:template match="glp:note/blockquote/p/text[preceding-sibling::text[inlineobject[@filename='leg1.gif' or @filename='leg1.png']]][normalize-space(string-join(. ,''))='&#160;' and not(child::*)]" priority="30"/>

	
</xsl:stylesheet>