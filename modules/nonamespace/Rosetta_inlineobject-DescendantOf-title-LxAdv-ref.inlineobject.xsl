<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
    xmlns:proc="http://www.lexisnexis.com/xmlschemas/content/shared/process-elements/1/"
    xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_inlineobject-DescendantOf-title-LxAdv-ref.inlineobject">
    <title><sourcexml>inlineobject[ancestor::title]</sourcexml> to
            <targetxml>ref:inlineobject</targetxml> <lnpid>id-CCCC-10367</lnpid></title>
    <body>
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
        <p>If <sourcexml>inlineobject</sourcexml> is a descendant of <sourcexml>title</sourcexml>,
            then it should map to <targetxml>ref:inlineobject</targetxml>. See the General Markup
            instructions <xref href="Rosetta_inlineobject-LxAdv-ref.inlineobject.dita"><sourcexml>inlineobject</sourcexml> to
                <targetxml>ref:inlineobject</targetxml></xref> for the details on this mapping.</p>
        <example>
            <codeblock>
&lt;title&gt;3.2.1 Trust relationship between &lt;inlineobject type="image" mimetype="image/gif"
        filename="imgb17.gif"/&gt; and Ni&lt;/title&gt;
            </codeblock>
            <b>becomes</b>
            <codeblock>
&lt;title&gt;3.2.1 Trust relationship between &lt;ref:inlineobject&gt;
        &lt;ref:locator&gt;
            &lt;ref:locator-key&gt;
                &lt;ref:key-name name="object-key"/&gt;
                &lt;ref:key-value value="X-Y-imgb17"/&gt;
                &lt;!-- X and Y are LNI and SMI values obtained from CSSM --&gt;
            &lt;/ref:locator-key&gt;
            &lt;ref:locator-params&gt;
                &lt;proc:param name="componentseq" value="1"/&gt;
                &lt;proc:param name="object-type" value="image"/&gt;
                &lt;proc:param name="object-smi" value=""/&gt;
                &lt;!-- This @value assignment is done by conversion program --&gt;
            &lt;/ref:locator-params&gt;
        &lt;/ref:locator&gt;
    &lt;/ref:inlineobject&gt; and Ni&lt;/title&gt;
            </codeblock>
        </example>
        <example>
            <codeblock>

&lt;title&gt;
    &lt;emph typestyle="bf"&gt;3.2.1 Trust relationship between &lt;sub&gt;&lt;inlineobject type="image"
                mimetype="image/gif" filename="img195.gif"/&gt;&lt;/sub&gt; and &lt;emph typestyle="it"
                &gt;N&lt;sub&gt;i&lt;/sub&gt;&lt;/emph&gt;&lt;/emph&gt;
&lt;/title&gt;

            </codeblock>
            <b>becomes</b>
            <codeblock>

&lt;title&gt;3.2.1 Trust relationship between &lt;sub&gt;
        &lt;ref:inlineobject&gt;
            &lt;ref:locator&gt;
                &lt;ref:locator-key&gt;
                    &lt;ref:key-name name="object-key"/&gt;
                    &lt;ref:key-value value="X-Y-img195"/&gt;
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
    &lt;/sub&gt; and N&lt;sub&gt;i&lt;/sub&gt;
&lt;/title&gt;

    </codeblock>
        </example>
        <section>
            <title>Changes</title>
            <p>2016-07-29: <ph id="change_20160803_pk">Added Note about xml snippets that illustrate image
                handling. Note summarizes move from Apollo to Blobstore application. UK is first LBU to
                move to Blobstore.</ph></p>
            <p>2013-06-18: <ph id="change_20130618_DSF">Added an example in which inlineobject is a
                    direct child of title.</ph></p>
            <p>2013-04-17: <ph id="change_20130417_DSF">Created.</ph></p>
        </section>
    </body>
	</dita:topic>


	<xsl:template match="inlineobject[ancestor::title]">

		<!--  Original Target XPath:  ref:inlineobject   -->
		<ref:inlineobject>
			<xsl:apply-templates select="@* | node()"/>
		</ref:inlineobject>

	</xsl:template>
    
    <xsl:template match="inlineobject[ancestor::title][not(*)]" priority="25">
        
        <!--  Original Target XPath:  ref:inlineobject   -->
        <ref:inlineobject>
            <ref:locator>
                <!-- <inlineobject type="image" mimetype="image/gif"
                     filename="PMR_2000_Vol15_Issue1_Nov_7_1.gif"/> -->
                <ref:locator-params>
                    <xsl:if test="@type">
                        <proc:param name='type'>
                            <xsl:attribute name="value" select="@type"/>
                        </proc:param>
                    </xsl:if>
                    <xsl:if test="@mimetype">
                        <proc:param name='mimetype'>
                            <xsl:attribute name="value" select="@mimetype"/>
                        </proc:param>
                    </xsl:if>
                    <xsl:if test="@filename">
                        <proc:param name='filename'>
                            <xsl:attribute name="value" select="@filename"/>
                        </proc:param>
                    </xsl:if>
                </ref:locator-params>
            </ref:locator>
        </ref:inlineobject>
        
    </xsl:template>

</xsl:stylesheet>