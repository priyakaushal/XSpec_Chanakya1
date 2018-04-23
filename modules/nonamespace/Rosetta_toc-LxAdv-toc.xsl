<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"
    xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita">

    <dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_toc_to-LexisAdvance_toc">
        <title><sourcexml>toc</sourcexml> to <targetxml>toc</targetxml>
            <lnpid>id-CCCC-10480</lnpid></title>
        <body>
            <section>
                <title>Instructions <i>[common element]</i></title>
                <p><sourcexml>toc</sourcexml> becomes <targetxml>toc</targetxml> with optional child <targetxml>heading</targetxml>
                </p>
                <ul>
                    <li>
                        <sourcexml>toc-entry</sourcexml> becomes <targetxml>toc-entry</targetxml>
                        <ul>
                            <li>
                                <sourcexml>heading</sourcexml> becomes <targetxml>heading</targetxml> and is one of the required child element for <targetxml>toc-entry</targetxml>. </li>
                            <li>
                                <sourcexml>entry-pageref</sourcexml> becomes <targetxml>toc-pageref</targetxml>. This is optional.</li>
                        </ul>
                    </li>
                </ul>
            </section>
            <example>
                <title>Source XML</title>
                <codeblock> &lt;toc&gt; &lt;heading&gt; &lt;title&gt; &lt;emph typestyle="bf"&gt;Table of sections&lt;/emph&gt; &lt;/title&gt; &lt;/heading&gt; &lt;toc-entry&gt; &lt;heading&gt; &lt;desig&gt;
                    &lt;designum&gt;1-1&lt;/designum&gt; &lt;/desig&gt; &lt;title&gt;Short title&lt;/title&gt; &lt;/heading&gt; &lt;entry-pageref&gt;5&lt;/entry-pageref&gt; &lt;/toc-entry&gt; &lt;/toc&gt; </codeblock>
            </example>
            <example>
                <title>Target XML</title>
                <codeblock> &lt;toc&gt; &lt;heading&gt; &lt;title&gt; &lt;emph typestyle="bf"&gt;Table of sections&lt;/emph&gt; &lt;/title&gt; &lt;/heading&gt; &lt;toc-entry&gt; &lt;heading&gt;
                    &lt;desig&gt;1-1&lt;/desig&gt; &lt;title&gt;Short title&lt;/title&gt; &lt;/heading&gt; &lt;toc-pageref&gt;5&lt;/toc-pageref&gt; &lt;/toc-entry&gt; &lt;/toc&gt; </codeblock>
            </example>
            <section>
                <p>If <sourcexml>toc</sourcexml> has a child <sourcexml>page</sourcexml> with a following sibling <sourcexml>toc-entry</sourcexml>, <sourcexml>page</sourcexml> should map to
                        <targetxml>toc-entry/ref:page</targetxml>. The parent of <targetxml>ref:page</targetxml> should be the <targetxml>toc-entry</targetxml> that has been mapped from the following sibling of
                        <sourcexml>toc/page</sourcexml>.</p>
            </section>
            <example>
                <title>Source XML</title>
                <codeblock> &lt;toc&gt; ... &lt;toc-entry&gt; &lt;heading&gt; &lt;title&gt;Cash flow problems..............................................................&lt;/title&gt; &lt;desig&gt;
                    &lt;designum&gt;22&lt;/designum&gt; &lt;/desig&gt; &lt;/heading&gt; &lt;/toc-entry&gt; &lt;page reporter="urj" count="2" text="BC9801738 at " subdoc="true"/&gt; &lt;toc-entry&gt; &lt;heading&gt;
                    &lt;title&gt;Lack of accounting information..................................................&lt;/title&gt; &lt;desig&gt; &lt;designum&gt;23&lt;/designum&gt; &lt;/desig&gt; &lt;/heading&gt;
                    &lt;/toc-entry&gt; ... &lt;/toc&gt; </codeblock>
            </example>
            <example>
                <title>Target XML</title>
                <codeblock> &lt;toc&gt; ... &lt;toc-entry&gt; &lt;heading&gt; &lt;title&gt;Cash flow problems..............................................................&lt;/title&gt; &lt;desig
                    value="22"&gt;22&lt;/desig&gt; &lt;/heading&gt; &lt;/toc-entry&gt; &lt;toc-entry&gt; &lt;ref:page num="2" page-scheme-type="reporter-abbreviation" page-scheme="urj"/&gt; &lt;heading&gt;
                    &lt;title&gt;Lack of accounting information..................................................&lt;/title&gt; &lt;desig value="23"&gt;23&lt;/desig&gt; &lt;/heading&gt; &lt;/toc-entry&gt; ...
                    &lt;/toc&gt; </codeblock>
            </example>
            <section>
                <title>Changes</title>
                <p>2014-03-20: <ph id="change_20140320_jm">New rule. Added mapping for <sourcexml>entry-pageref</sourcexml> to <targetxml>toc-pageref</targetxml>. Initially for UK12 but will apply for any stream if the
                        use case occurs. Responds to data added in UK12 delivery Mar 2014; known to occur in dpsi 02FL and 03VY. Phase 6 UK Discussion Item 79. Webteam 252434.</ph></p>
                <p>2012-06-05: Added instructions for handling <sourcexml>toc/page</sourcexml> with a following sibling <sourcexml>toc-entry</sourcexml>.</p>
                <p>2011-12-21: Created. </p>
            </section>
        </body>
    </dita:topic>

    <!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
    <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_toc-LxAdv-toc.dita  -->


    <!-- MDS 2017-06-29 - Added ordering of heading|refpt|page in order to correctly output the elements based on schema -->
    <!-- Vikas Rohilla : Template to match the toc and create the toc-->
    <!-- Awantika: Added stream AU01 as duplicate ref:page was getting created. Webstar 7089573-->
    <xsl:template match="toc">
        <toc xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
            <xsl:apply-templates select="@*"/>
            <xsl:apply-templates select="heading | refpt | page[not($streamID = ('AU09','UK06','UK07','AU01'))]"/>
            <xsl:apply-templates select="node() except (heading | refpt | page)"/>
        </toc>
    </xsl:template>

    <!-- Template to match the toc-entry   -->
    <!-- Awantika: 2018-01-18- Added stream AU01 for preceding-sibling page. Webstar 7089573. -->
    <xsl:template match="toc-entry">
        <toc-entry xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
            <xsl:if test="preceding-sibling::*[1][self::page][$streamID = ('AU09','UK06','UK07','AU01')]">
                <xsl:apply-templates select="preceding-sibling::*[1][self::page]"/>
            </xsl:if>
            <xsl:choose>
                <xsl:when test="$streamID = ('UK12','UK06','UK07') and child::note">
                    <xsl:apply-templates select="@* | node() except note"/>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:apply-templates select="@* | node()"/>
                </xsl:otherwise>
            </xsl:choose>

        </toc-entry>
    </xsl:template>

    <!-- Template to match the entry-pageref   -->
    <xsl:template match="entry-pageref">
        <toc-pageref xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
            <xsl:apply-templates select="@* | node()"/>
        </toc-pageref>
    </xsl:template>

</xsl:stylesheet>
