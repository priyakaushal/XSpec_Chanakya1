<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
    xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"
    xmlns:dig="http://www.lexis-nexis.com/glp/dig" version="2.0" exclude-result-prefixes="dita dig">

    <dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/"
        id="UK15PG_DIGESTDOC_dig.title_With-Forms">
        <title>dig:title <lnpid>id-UK15-30438</lnpid></title>

        <body>
            <p><sourcexml>dig:title</sourcexml> becomes <targetxml>heading/title</targetxml>.</p>
            <example>
                <title>Source XML</title>
                <codeblock> &lt;dig:body&gt; &lt;dig:info&gt; &lt;dig:title&gt;Medical
                    diagrams&lt;/dig:title&gt; &lt;/dig:info&gt; &lt;/dig:body&gt; </codeblock>
                <title>Target XML</title>
                <codeblock> &lt;seclaw:level leveltype="unclassified"&gt; &lt;heading&gt;
                    &lt;title&gt;Medical diagrams&lt;/title&gt; &lt;/heading&gt;
                    &lt;seclaw:bodytext/&gt; &lt;/seclaw:level&gt; </codeblock>
            </example>
            <section>
                <title>Changes</title>
                <p>2013-10-14: <ph id="change_20131014_jm">Minor change. Clarifies usual practice
                        that <sourcexml>title</sourcexml> becomes
                            <targetxml>heading/title</targetxml>. Rewording reflects move of
                        smart-form content from UK11-DA to UK15-DS. Webteam # 240975 and
                        #247307.</ph></p>
            </section>
        </body>
    </dita:topic>

    <!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
    <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK15-PracticalGuidance\UK15PG_DIGESTDOC_dig.title.dita  -->
    <!--<xsl:message>UK15PG_DIGESTDOC_dig.title.xsl requires manual development!</xsl:message> -->

    <xsl:template match="dig:title">

        <!--  Original Target XPath:  heading/title   -->
        <heading>
            <title>
                <xsl:apply-templates select="@* | node()"/>
            </title>
        </heading>

    </xsl:template>

    <!--	<xsl:template match="title">

		<!-\-  Original Target XPath:  heading/title   -\->
		<heading>
			<title>
				<xsl:apply-templates select="@* | node()"/>
			</title>
		</heading>-->

    <!--</xsl:template>-->

</xsl:stylesheet>
