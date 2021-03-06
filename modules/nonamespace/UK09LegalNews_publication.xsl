<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
    xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/"
    xmlns:proc="http://www.lexisnexis.com/xmlschemas/content/shared/process-elements/1/"
    xmlns:pubinfo="http://www.lexisnexis.com/xmlschemas/content/shared/publication-info/1/"
    xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/"
    xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"
    version="2.0" exclude-result-prefixes="dita">

    <dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="UK09LegalNews_publication">
        <title>publication <lnpid>id-UK09-29024</lnpid></title>

        <body>
            <p><sourcexml>publication</sourcexml> becomes
                    <targetxml>doc:metadata/pubinfo:pubinfo/pubinfo:publicationname</targetxml>.</p>
            <example>
                <title>Source XML</title>
                <codeblock> &lt;jrnl:info&gt; &lt;publication&gt;Privacy and Data
                    Protection&lt;/publication&gt; ... &lt;/jrnl:info&gt; </codeblock>
                <title>Target XML</title>
                <codeblock> &lt;doc:metadata&gt; &lt;pubinfo:pubinfo&gt;
                    &lt;pubinfo:publicationname&gt;Privacy and Data
                    Protection&lt;/pubinfo:publicationname&gt; ... &lt;/pubinfo:pubinfo&gt; ...
                    &lt;/doc:metadata&gt; </codeblock>
            </example>
        </body>
    </dita:topic>

    <!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
    <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK09-LegalNews\UK09LegalNews_publication.dita  -->
    <!--<xsl:message>UK09LegalNews_publication.xsl requires manual development!</xsl:message>-->

    <xsl:template match="publication" priority="20">
        <xsl:choose>
            <xsl:when test="descendant::inlineobject">
                <pubinfo:publicationname>
                    <xsl:value-of select="."/>
                </pubinfo:publicationname>
                <xsl:apply-templates select="following-sibling::publicationsubtitle"/>
                <pubinfo:publicationlogo>
                    <logo>
                        <!--<ref:inlineobject>-->
                            <xsl:apply-templates select="inlineobject"/>
                        <!--</ref:inlineobject>-->
                    </logo>
                </pubinfo:publicationlogo>
            </xsl:when>
            <xsl:otherwise>
                <pubinfo:publicationname>
                    <xsl:value-of select="."/>
                </pubinfo:publicationname>
            </xsl:otherwise>
        </xsl:choose>       
    </xsl:template>
    
    <xsl:template match="publicationsubtitle">
        <publicationsubtitle>
            <xsl:value-of select="."/>
        </publicationsubtitle>
    </xsl:template>
  </xsl:stylesheet>
