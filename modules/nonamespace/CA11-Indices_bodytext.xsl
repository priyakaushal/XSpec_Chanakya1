<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"
    xmlns:biblio="urn:x-lexisnexis:content:bibliography:sharedservices:1" 
    xmlns:dita="http://dita.oasis-open.org/architecture/2005/" version="2.0"
    exclude-result-prefixes="dita">

    <dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="CA-Indices_bodytext.dita">
        <title>bodytext <lnpid>id-CA11-14807</lnpid></title>
        <body>
            <section>
                <p>
                    <sourcexml>bodytext</sourcexml> becomes <targetxml>bodytext</targetxml>. </p>
            </section>
            <example>
                <title>Source XML</title>
                <codeblock> &lt;level leveltype="2"&gt; &lt;heading align="center"&gt; &lt;title&gt;
                    Editor's Note&lt;/title&gt; &lt;/heading&gt; &lt;bodytext&gt; &lt;p&gt;
                    &lt;text&gt;With this edition, the Index to Canadian Literature
                    on&lt;nl/&gt;Intellectual Property turns a whole new page, so to ...
                    &lt;/text&gt; &lt;/p&gt; &lt;/bodytext&gt; &lt;/level&gt; </codeblock>
                <title>Target XML</title>
                <codeblock> &lt;section&gt; &lt;heading align="center"&gt; &lt;title&gt; Editor's
                    Note&lt;/title&gt; &lt;/heading&gt; &lt;bodytext&gt; &lt;p&gt; &lt;text&gt;With
                    this edition, the Index to Canadian Literature on&lt;proc:nl/&gt;Intellectual
                    Property turns a whole new page, so to ... &lt;/text&gt; &lt;/p&gt;
                    &lt;/bodytext&gt; &lt;/section&gt; </codeblock>
            </example>
            <section>
                <title>Changes</title>
                <p>2014-10-23: <ph id="change_20141023_CN">Removed <targetxml>verbatim</targetxml>
                        noise. Phase 6 Canada Discussion RFA # 146.</ph></p>
            </section>
        </body>
    </dita:topic>

    <!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
    <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA11-Indices\CA-Indices_bodytext.dita  -->
    <!--<xsl:message>CA-Indices_bodytext.xsl requires manual development!</xsl:message>-->

    <xsl:template match="bodytext">
        <!--  Original Target XPath:  bodytext   -->
        <xsl:choose>
            <xsl:when test="descendant::table">
                <biblio:entry>
                    <xsl:apply-templates select="node()"/>   
                </biblio:entry>
            </xsl:when>
            <xsl:when test="ancestor::level">
                <bodytext>
                    <xsl:apply-templates select="@*|node()"/>
                </bodytext>
            </xsl:when>
            <xsl:otherwise>
                <section>
                    <bodytext>
                        <xsl:apply-templates select="node() except p[descendant::verbatim[contains(.,'DATE/PLACE:')]]"/>
                    </bodytext>
                </section>
            </xsl:otherwise>
        </xsl:choose>
        

    </xsl:template>

</xsl:stylesheet>
