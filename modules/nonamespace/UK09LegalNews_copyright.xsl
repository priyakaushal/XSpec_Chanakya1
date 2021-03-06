<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
    xmlns:pubinfo="http://www.lexisnexis.com/xmlschemas/content/shared/publication-info/1/"
    xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/"
    xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"
    version="2.0" exclude-result-prefixes="dita">

    <dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="UK09LegalNews_copyright">
        <title>copyright <lnpid>id-UK09-29009</lnpid></title>
        <body>
            <p><sourcexml>copyright</sourcexml> becomes
                    <targetxml>doc:metadata/pubinfo:pubinfo/copyright</targetxml>.</p>
            <example>
                <title>Source XML</title>
                <codeblock> &lt;jrnl:prelim searchtype="ARTICLE"&gt; ... &lt;copyright&gt;© 2005 PDP
                    Companies Limited&lt;/copyright&gt; ... &lt;/jrnl:prelim&gt; </codeblock>
                <title>Target XML</title>
                <codeblock> &lt;doc:metadata&gt; &lt;pubinfo:pubinfo&gt; ... &lt;copyright&gt;© 2005
                    PDP Companies Limited&lt;/copyright&gt; &lt;/pubinfo:pubinfo&gt; ...
                    &lt;/doc:metadata&gt; </codeblock>
            </example>
        </body>
    </dita:topic>

    <!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
    <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK09-LegalNews\UK09LegalNews_copyright.dita  -->
    <!--<xsl:message>UK09LegalNews_copyright.xsl requires manual development!</xsl:message> -->

    <xsl:template match="copyright" mode="prelim">
       <!-- <doc:metadata>
            <pubinfo:pubinfo>-->
                <copyright>
                    <xsl:apply-templates select="@* | node()"/>
                </copyright>
            <!--</pubinfo:pubinfo>
        </doc:metadata>-->
    </xsl:template>
</xsl:stylesheet>
