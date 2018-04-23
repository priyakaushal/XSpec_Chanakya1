<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/"
    xmlns:ci="http://www.lexis-nexis.com/ci" version="2.0" exclude-result-prefixes="dita docinfo ci">

    <dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_docinfo.normcite">
        <title>docinfo:normcite <lnpid>id-CCCC-10302</lnpid></title>
        <body>
            <section>
                <title>Instructions <i>[common element]</i></title>
                <p>
                    <sourcexml>docinfo:normcite/ci:cite/ci:content</sourcexml> becomes <targetxml>ref:citations/ref:cite4thisresource/ref:nonciteidentifier</targetxml>. Attribute should be populated as below:
                        <targetxml>ref:nonciteidentifier/@normprotocol</targetxml> should be set to "unspecified". </p>
            </section>

            <example>
                <title>Source XML</title>
                <codeblock> &lt;docinfo:normcite&gt; &lt;ci:cite type="cite4thisdoc"&gt; &lt;ci:content&gt;2009 AC 11&lt;/ci:content&gt; &lt;/ci:cite&gt; &lt;/docinfo:normcite&gt; </codeblock>
            </example>

            <example>
                <title>Target XML</title>
                <codeblock> &lt;ref:citations&gt; &lt;ref:cite4thisresource citetype="normcite"&gt; &lt;ref:nonciteidentifier normprotocol="unspecified"&gt; 2009 AC 11 &lt;/ref:nonciteidentifier&gt; &lt;/ref:cite4thisresource&gt; &lt;/ref:citations&gt;
                </codeblock>
            </example>

            <section>
                <title>Changes</title>
                <p>2012-09-15: Created.</p>
                <p>2012-11-09: Updated the mapping and example.</p>
                <p>2012-11-29: Added instruction for handling of required attribute <targetxml>@normprotocol</targetxml>.</p>
            </section>

        </body>
    </dita:topic>

    <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_docinfo.normcite.dita  -->

    <xsl:template match="docinfo:normcite/ci:cite/ci:content" mode="normcite">
        <ref:citations>
            <ref:cite4thisresource citetype="normcite">
                <ref:nonciteidentifier normprotocol="unspecified">
                    <xsl:apply-templates/>
                </ref:nonciteidentifier>
            </ref:cite4thisresource>
        </ref:citations>
    </xsl:template>

    <!-- CSN - 2017/10/21 - Creating one that will allow for the elimination of multiple ref:citations elements for primary, parallel, court, ...  -->
    <xsl:template match="docinfo:normcite/ci:cite/ci:content[$streamID = ('UK03')]">
        <ref:cite4thisresource citetype="normcite">
            <ref:nonciteidentifier normprotocol="unspecified">
                <xsl:apply-templates/>
            </ref:nonciteidentifier>
        </ref:cite4thisresource>
    </xsl:template>
    
</xsl:stylesheet>
