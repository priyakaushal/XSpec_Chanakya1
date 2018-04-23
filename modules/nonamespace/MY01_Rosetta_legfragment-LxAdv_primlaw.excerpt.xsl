<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:glp="http://www.lexis-nexis.com/glp" xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="MY01_Rosetta_legfragment-LxAdv_primlaw.excerpt">
    <title>legfragment <lnpid>id-MY01-16031</lnpid></title>
    <body>
        <p><sourcexml>legfragment</sourcexml> becomes <targetxml>primlaw:excerpt</targetxml> and its child elements converted as follows:</p>
        <p><sourcexml>leg:level/leg:level-vrnt/@searchtype="PART"</sourcexml> becomes
                <targetxml>primlaw:level/@leveltype="part"</targetxml>.</p>
        <p><sourcexml>leg:level/leg:level-vrnt/@searchtype="SECT"</sourcexml> becomes
                <targetxml>primlaw:level/@leveltype="section"</targetxml>.</p>
        <p><sourcexml>leg:level/leg:level-vrnt/@searchtype="SUBSECT"</sourcexml> becomes
                <targetxml>primlaw:level/@leveltype="subsection"</targetxml>.</p>
        <p><sourcexml>leg:heading</sourcexml> becomes <targetxml>heading</targetxml></p>
        <p><sourcexml>leg:levelbody</sourcexml> and <sourcexml>leg:bodytext</sourcexml> becomes <targetxml>primlaw:bodytext</targetxml></p>
        <p>See below example for more clarification:</p>
<pre>
&lt;legfragment&gt;
    &lt;leg:level&gt;
        &lt;leg:level-vrnt searchtype="PART"&gt;
            &lt;leg:heading&gt;
                &lt;title&gt;General meeting of the Malaysian Bar&lt;/title&gt;
            &lt;/leg:heading&gt;
            &lt;leg:levelbody&gt;
                &lt;leg:level&gt;
                    &lt;leg:level-vrnt searchtype="SECT"&gt;
                        &lt;leg:heading&gt;
                            &lt;title&gt;Annual general meetings&lt;/title&gt;
                            &lt;desig&gt;
                                &lt;designum&gt;64.&lt;/designum&gt;
                            &lt;/desig&gt;
                        &lt;/leg:heading&gt;
                        &lt;leg:levelbody&gt;
                            &lt;leg:level&gt;
                                &lt;leg:level-vrnt searchtype="SUBSECT"&gt;
                                    &lt;leg:heading&gt;
                                        &lt;desig&gt;
                                            &lt;designum&gt;(1)&lt;/designum&gt;
                                        &lt;/desig&gt;
                                    &lt;/leg:heading&gt;
                                    &lt;leg:levelbody&gt;
                                        &lt;leg:bodytext&gt;
                                            &lt;p&gt;
                                                &lt;text&gt;The Bar Council shall each year convene an
                                                  annual general meeting of the Malaysian Bar to be
                                                  held before the first day of April.&lt;/text&gt;
                                            &lt;/p&gt;
                                        &lt;/leg:bodytext&gt;
                                    &lt;/leg:levelbody&gt;
                                &lt;/leg:level-vrnt&gt;
                            &lt;/leg:level&gt;
                        &lt;/leg:levelbody&gt;
                    &lt;/leg:level-vrnt&gt;
                &lt;/leg:level&gt;
            &lt;/leg:levelbody&gt;
        &lt;/leg:level-vrnt&gt;
    &lt;/leg:level&gt;
&lt;/legfragment&gt;

<b>becomes</b>

&lt;primlaw:excerpt&gt;
    &lt;primlaw:level leveltype="part"&gt;
        &lt;heading&gt;
            &lt;title&gt;General meeting of the Malaysian Bar&lt;/title&gt;
        &lt;/heading&gt;
        &lt;primlaw:level leveltype="section"&gt;
            &lt;heading&gt;
                &lt;title&gt;Annual general meetings&lt;/title&gt;
                &lt;desig&gt;64.&lt;/desig&gt;
            &lt;/heading&gt;
            &lt;primlaw:level leveltype="subsection"&gt;
                &lt;heading&gt;
                    &lt;desig&gt;(1)&lt;/desig&gt;
                &lt;/heading&gt;
                &lt;primlaw:bodytext&gt;
                    &lt;p&gt;
                        &lt;text&gt;The Bar Council shall each year convene an annual general meeting of
                            the Malaysian Bar to be held before the first day of April.&lt;/text&gt;
                    &lt;/p&gt;
                &lt;/primlaw:bodytext&gt;
            &lt;/primlaw:level&gt;
        &lt;/primlaw:level&gt;
    &lt;/primlaw:level&gt;
&lt;/primlaw:excerpt&gt;
</pre>
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-MY\MY01_Cases\MY01_Rosetta_legfragment-LxAdv_primlaw.excerpt.dita  -->
<!--	<xsl:message>MY01_Rosetta_legfragment-LxAdv_primlaw.excerpt.xsl requires manual development!</xsl:message> -->

    <xsl:template match="legfragment">
    <primlaw:excerpt>
        <xsl:apply-templates select="@* | node()"/>
    </primlaw:excerpt>
    </xsl:template>
    <xsl:template match="leg:level">
        <xsl:apply-templates/>
    </xsl:template>
    <xsl:template match="leg:level-vrnt[@searchtype = 'PART']">
        <primlaw:level>
            <xsl:attribute name="leveltype">
                <xsl:text>part</xsl:text>
            </xsl:attribute>
            <xsl:apply-templates select="node()"/>
        </primlaw:level>
    </xsl:template>
    <xsl:template match="leg:level-vrnt[@searchtype = 'SECT']">
        <primlaw:level>
            <xsl:attribute name="leveltype">
                <xsl:text>section</xsl:text>
            </xsl:attribute>
            <xsl:apply-templates select="node()"/>
        </primlaw:level>
    </xsl:template>
    <xsl:template match="leg:level-vrnt[@searchtype = 'SUBSECT']">
        <primlaw:level>
            <xsl:attribute name="leveltype">
                <xsl:text>subsection</xsl:text>
            </xsl:attribute>
            <xsl:apply-templates select="node()"/>
        </primlaw:level>
    </xsl:template>

    <xsl:template match="leg:heading">
        <xsl:choose>
            <xsl:when test="parent::leg:bodytext">
                <primlaw:level leveltype="unclassified">
                    <heading>
                        <xsl:apply-templates select="@*"/>
                        <xsl:apply-templates select="node() except refpt"/>
                    </heading>
                </primlaw:level>
            </xsl:when>
            <xsl:otherwise>
                <heading>
                    <xsl:apply-templates select="@*"/>
                    <xsl:apply-templates select="node() except (refpt | leg:empleg | glp:note)"/>
                </heading>
                <xsl:apply-templates select="glp:note"/>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    
	<xsl:template match="leg:levelbody">

		<!--  Original Target XPath:  primlaw:bodytext   -->
<!--		<primlaw:bodytext>-->
			<xsl:apply-templates select="@* | node()"/>
		<!--</primlaw:bodytext>-->

	</xsl:template>

	<xsl:template match="leg:bodytext">

		<!--  Original Target XPath:  primlaw:bodytext   -->
		<primlaw:bodytext>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:bodytext>

	</xsl:template>

</xsl:stylesheet>