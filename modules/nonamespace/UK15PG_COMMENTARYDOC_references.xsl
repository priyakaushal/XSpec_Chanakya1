<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"
    xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
    xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0"
    exclude-result-prefixes="dita">

    <dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/"
        id="UK15PG_COMMENTARYDOC_references">
        <title>references <lnpid>id-UK15-30427</lnpid></title>

        <body>
            <section>
                <p><sourcexml>references[not(parent::level[@leveltype="related-content-pod" or
                        @leveltype="related-documents-POD"])]</sourcexml> becomes
                        <targetxml>ref:relatedrefs</targetxml>.</p>
                <p>With the exception of <sourcexml>heading</sourcexml>, the target element for
                    every child of <sourcexml>references</sourcexml> should be mapped inside
                        <targetxml>ref:relatedrefs/bodytext</targetxml>.</p>
                <note>This mapping does not apply if <sourcexml>references</sourcexml> is a
                    descendant of <sourcexml>level[@leveltype="related-content-pod"]</sourcexml> or
                        <sourcexml>level[@leveltype="related-documents-POD"]</sourcexml>. Those
                    scenarios are addressed in their own topics.</note>
            </section>
            <example>
                <codeblock> &lt;level leveltype="section"&gt; ... &lt;bodytext&gt; ...
                    &lt;references&gt; &lt;heading&gt; &lt;title&gt; &lt;emph typestyle="it"&gt;Read
                    more about this from Butterworths&lt;/emph&gt; &lt;/title&gt; &lt;/heading&gt;
                    &lt;p&gt; &lt;text&gt; &lt;remotelink service="DOC-ID" remotekey1="DOCID"
                    remotekey2="0OJA_60369" dpsi="0OJA"&gt;Halsbury's Laws of England &amp;gt;
                    Financial services and institutions (vol 48 (2008) 5th edition, paras
                    1&amp;#x2013;589; volume 49 (2008) 5th edition, paras 590&amp;#x2013;1619;
                    volume 50 (2008) 5th edition, paras 1620&amp;#x2013;2586) &amp;gt; 7. Bills of
                    sale &amp;gt; (1) Introduction &amp;gt; (i) Common Law &amp;gt; 1622. Transfer
                    of existing goods at common law.&lt;/remotelink&gt; &lt;/text&gt; &lt;/p&gt;
                    &lt;/references&gt; &lt;/bodytext&gt; &lt;/level&gt; </codeblock>
                <b>becomes</b>
                <codeblock> &lt;seclaw:level leveltype="section"&gt; ... &lt;seclaw:bodytext&gt; ...
                    &lt;ref:relatedrefs&gt; &lt;heading&gt; &lt;title&gt; &lt;emph
                    typestyle="it"&gt;Read more about this from Butterworths&lt;/emph&gt;
                    &lt;/title&gt; &lt;/heading&gt; &lt;bodytext&gt; &lt;p&gt; &lt;text&gt;
                    &lt;ref:crossreference crossreferencetype="seeAlso"&gt;
                    &lt;ref:content&gt;Halsbury's Laws of England &amp;gt; Financial services and
                    institutions (vol 48 (2008) 5th edition, paras 1&amp;#x2013;589; volume 49
                    (2008) 5th edition, paras 590&amp;#x2013;1619; volume 50 (2008) 5th edition,
                    paras 1620&amp;#x2013;2586) &amp;gt; 7. Bills of sale &amp;gt; (1) Introduction
                    &amp;gt; (i) Common Law &amp;gt; 1622. Transfer of existing goods at common
                    law.&lt;/ref:content&gt; &lt;ref:locator&gt; &lt;ref:locator-key&gt;
                    &lt;ref:key-name name="DOC-ID"/&gt; &lt;ref:key-value
                    value="0OJA-0OJA_60369"/&gt; &lt;/ref:locator-key&gt; &lt;/ref:locator&gt;
                    &lt;/ref:crossreference&gt; &lt;/text&gt; &lt;/p&gt; &lt;/bodytext&gt;
                    &lt;/ref:relatedrefs&gt; &lt;/seclaw:bodytext&gt; &lt;/seclaw:level&gt;
                </codeblock>
            </example>
            <section>
                <title>Changes</title>
                <p>2013-06-05: <ph id="change_20130605_DSF">Created.</ph></p>
            </section>
        </body>
    </dita:topic>

    <xsl:template
        match="references[not(parent::level[@leveltype = 'related-content-pod' or @leveltype = 'related-documents-POD'])]">
        <ref:relatedrefs>
            <xsl:apply-templates select="@* | node()"/>
        </ref:relatedrefs>

    </xsl:template>

    <!--<xsl:template match="heading">
		<ref:relatedrefs>
			<bodytext>
				<xsl:apply-templates select="@* | node()"/>
			</bodytext>
		</ref:relatedrefs>

	</xsl:template>

	<xsl:template match="heading">
		<ref:relatedrefs>
			<bodytext>
				<xsl:apply-templates select="@* | node()"/>
			</bodytext>
		</ref:relatedrefs>

	</xsl:template>

	<xsl:template match="references">
		<ref:relatedrefs>
			<bodytext>
				<xsl:apply-templates select="@* | node()"/>
			</bodytext>
		</ref:relatedrefs>

	</xsl:template>
-->
    <xsl:template match="level[@leveltype = 'related-content-pod']">
        <xsl:apply-templates select="@* | node()"/>
    </xsl:template>

    <xsl:template match="level[@leveltype = 'related-documents-POD']">
        <xsl:apply-templates select="@* | node()"/>
    </xsl:template>

</xsl:stylesheet>
