<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"
    xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
    xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/"
    xmlns:seclaw="http://www.lexisnexis.com/xmlschemas/content/legal/secondary-law/1/" version="2.0"
    exclude-result-prefixes="dita">

    <dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/"
        id="UK15PG_COMMENTARYDOC_refpt">
        <title>refpt <lnpid>id-UK15-30428</lnpid></title>

        <body>
            <p>When <sourcexml>refpt</sourcexml> is a child of
                    <sourcexml>level/heading/title</sourcexml> it should be mapped to
                    <targetxml>ref:anchor</targetxml> as usual, but it should become a child of the
                    <targetxml>seclaw:level</targetxml> to which it belongs.</p>
            <example>
                <title>Source XML</title>
                <codeblock> &lt;level leveltype="division"&gt; &lt;heading&gt;
                    &lt;title&gt;&lt;refpt id="0OM9_100209" type="ext"/&gt;Property and registration
                    fraud&lt;/title&gt; &lt;/heading&gt; &lt;levelprelim&gt; &lt;abstract&gt; ...
                    &lt;/abstract&gt; &lt;/levelprelim&gt; &lt;bodytext&gt; ... &lt;/bodytext&gt;
                    &lt;/level&gt; </codeblock>
                <title>Target XML</title>
                <codeblock> &lt;seclaw:level leveltype="division"&gt; &lt;ref:anchor
                    id="_0OM9_100209" anchortype="global"/&gt; &lt;heading&gt; &lt;title&gt;Property
                    and registration fraud&lt;/title&gt; &lt;/heading&gt; &lt;seclaw:prelim&gt;
                    &lt;abstract&gt; &lt;bodytext&gt; ... &lt;/bodytext&gt; &lt;/abstract&gt;
                    &lt;/seclaw:prelim&gt; &lt;seclaw:bodytext&gt; ... &lt;/seclaw:bodytext&gt;
                    &lt;/seclaw:level&gt; </codeblock>
            </example>
        </body>
    </dita:topic>

    <!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
    <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK15-PracticalGuidance\UK15PG_COMMENTARYDOC_refpt.dita  -->
    <!--	<xsl:message>UK15PG_COMMENTARYDOC_refpt.xsl requires manual development!</xsl:message> -->

  <!--  <xsl:template match="refpt">
        <ref:anchor>
            <xsl:apply-templates select="@* | node()"/>
        </ref:anchor>
    </xsl:template>-->

    <!--<xsl:template match="level/heading/title">
        <ref:anchor>
            <xsl:apply-templates select="@* | node()"/>
        </ref:anchor>
    </xsl:template>-->
</xsl:stylesheet>
