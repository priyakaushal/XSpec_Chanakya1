<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"
    xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
    xmlns:seclaw="http://www.lexisnexis.com/xmlschemas/content/legal/secondary-law/1/" version="2.0"
    exclude-result-prefixes="dita">

    <dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/"
        id="UK15PG_COMMENTARYDOC_levelprelim">
        <title>levelprelim <lnpid>id-UK15-30419</lnpid></title>

        <body>
            <p><sourcexml>levelprelim</sourcexml> becomes <targetxml>seclaw:prelim</targetxml>.</p>
            <example>
                <title>Source XML</title>
                <codeblock> &lt;level leveltype="division"&gt; &lt;heading&gt; &lt;title&gt;Search
                    of premises&lt;/title&gt; &lt;/heading&gt; &lt;levelprelim&gt; &lt;abstract&gt;
                    &lt;p&gt; &lt;text&gt;This practice note covers the powers of the police to
                    enter and search premises with or without a warrant under the Police and
                    Criminal Evidence Act 1984 (PACE 1984). It covers the powers of search under
                    PACE 1984, s 32 on arrest, under PACE 1984, s 18, after arrest and search of
                    premises with the owner&amp;#x2019;s consent.&lt;/text&gt; &lt;/p&gt;
                    &lt;/abstract&gt; &lt;/levelprelim&gt; &lt;bodytext&gt; ... &lt;/bodytext&gt;
                    &lt;/level&gt; </codeblock>
                <title>Target XML</title>
                <codeblock> &lt;seclaw:level leveltype="division"&gt; &lt;heading&gt;
                    &lt;title&gt;Search of premises&lt;/title&gt; &lt;/heading&gt;
                    &lt;seclaw:prelim&gt; &lt;abstract&gt; &lt;bodytext&gt; &lt;p&gt;
                    &lt;text&gt;This practice note covers the powers of the police to enter and
                    search premises with or without a warrant under the Police and Criminal Evidence
                    Act 1984 (PACE 1984). It covers the powers of search under PACE 1984, s 32 on
                    arrest, under PACE 1984, s 18, after arrest and search of premises with the
                    owner&amp;#x2019;s consent.&lt;/text&gt; &lt;/p&gt; &lt;/bodytext&gt;
                    &lt;/abstract&gt; &lt;/seclaw:prelim&gt; &lt;seclaw:bodytext&gt; ...
                    &lt;/seclaw:bodytext&gt; &lt;/seclaw:level&gt; </codeblock>
            </example>
        </body>
    </dita:topic>

    <!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
    <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK15-PracticalGuidance\UK15PG_COMMENTARYDOC_levelprelim.dita  -->
    <!--	<xsl:message>UK15PG_COMMENTARYDOC_levelprelim.xsl requires manual development!</xsl:message> -->

    <xsl:template match="levelprelim">
        <seclaw:prelim>
            <xsl:apply-templates select="@* | node()"/>
        </seclaw:prelim>
    </xsl:template>

</xsl:stylesheet>
