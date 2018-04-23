<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
    xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" 
    xmlns:seclaw="http://www.lexisnexis.com/xmlschemas/content/legal/secondary-law/1/"
    xmlns:dig="http://www.lexis-nexis.com/glp/dig"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    version="2.0" exclude-result-prefixes="dita dig xsi">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="UK17-Webinar_DIGESTDOC">
    <title>DIGESTDOC <lnpid>id-UK17-36207</lnpid></title>

    <body>
        <p><sourcexml>DIGESTDOC</sourcexml> becomes <targetxml>seclaw:seclaw</targetxml> with the
            value of <targetxml>@seclawtype</targetxml> set to "digest".</p>
        <p><targetxml>seclaw:head</targetxml>, <targetxml>seclaw:body</targetxml>, and
                <targetxml>doc:metadata</targetxml> are created as required children of
                <targetxml>seclaw:seclaw</targetxml>. Create as empty element if necessary.</p>
        <example>
            <title>Source XML</title>
            <codeblock>

&lt;DIGESTDOC&gt;
    ...
&lt;/DIGESTDOC&gt;

           </codeblock>
            <title>Target XML</title>
            <codeblock>

&lt;seclaw:seclaw seclawtype="digest" xml:lang="en-GB"&gt;
    &lt;seclaw:head&gt;
        ...
    &lt;/seclaw:head&gt;
    &lt;seclaw:body&gt;
        ...
    &lt;/seclaw:body&gt;
    &lt;doc:metadata&gt;
        ...
    &lt;/doc:metadata&gt;
&lt;/seclaw:seclaw&gt;

           </codeblock>
        </example>
        <section>
            <title>Changes</title>
            <p>2015-08-20: Created.</p>
        </section>
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK17-Webinar\UK17-Webinar_DIGESTDOC.dita  -->
    <xsl:param name="outputSchemaLoc"
        select="'http://www.lexisnexis.com/xmlschemas/content/legal/secondary-law/1/ sch_seclaw.xsd'"/>
    
    <xsl:template match="DIGESTDOC">
        <seclaw:seclaw>
            <xsl:for-each select="$lexisAdvNamespaces/*">
                <xsl:sort/>
                <xsl:namespace name="{substring-after(substring-before(., '='), ':')}" select="substring-after(translate(., '&#034;', ''), '=')"/>
            </xsl:for-each>
            <xsl:attribute name="xsi:schemaLocation" select="$outputSchemaLoc"/>
            <xsl:call-template name="xml_lang"/>
            <xsl:attribute name="seclawtype" select="'digest'"/>
            <xsl:apply-templates select="@*"/>
            <seclaw:head>
                <!--  required -->
            </seclaw:head>
            <xsl:apply-templates select="dig:body"/>
            <doc:metadata>
                <xsl:apply-templates select="docinfo"/>
            </doc:metadata>
        </seclaw:seclaw>
    </xsl:template>

</xsl:stylesheet>