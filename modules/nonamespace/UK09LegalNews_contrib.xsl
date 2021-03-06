<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
    xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"
    xmlns:person="http://www.lexisnexis.com/xmlschemas/content/shared/person/1/"
    xmlns:jrnl="http://www.lexis-nexis.com/glp/jrnl"
    xmlns:entity="http://www.lexisnexis.com/xmlschemas/content/shared/identified-entities/1/"
    
    xmlns:nitf="http://iptc.org/std/NITF/2006-10-18/" version="2.0" exclude-result-prefixes="dita">

    <dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="UK09LegalNews_contrib">
        <title>contrib <lnpid>id-UK09-29008</lnpid></title>
        <body>
            <p><sourcexml>contrib</sourcexml> becomes
                    <targetxml>nitf:body.head/nitf:byline/person:contributor</targetxml>.</p>
            <p>Any <sourcexml>emph</sourcexml> descendants of <sourcexml>contrib/person</sourcexml>
                should be omitted.</p>
            <example>
                <title>Source XML</title>
                <codeblock> &lt;jrnl:prelim searchtype="ARTICLE"&gt; ... &lt;contrib
                    searchtype="AUTHOR"&gt; &lt;person&gt; &lt;name.text&gt; &lt;emph
                    typestyle="ro"&gt;Bridget Treacy&lt;/emph&gt; &lt;/name.text&gt; &lt;/person&gt;
                    &lt;bio&gt; &lt;addl-info&gt; &lt;p&gt; &lt;text&gt;Barlow Lyde &amp;amp;
                    Gilbert&lt;email&gt;&lt;remotelink href="btreacy@blg.co.uk"
                    hrefclass="mailto"&gt;btreacy@blg.co.uk&lt;/remotelink&gt;&lt;/email&gt;&lt;/text&gt;
                    &lt;/p&gt; &lt;/addl-info&gt; &lt;/bio&gt; &lt;/contrib&gt; ...
                    &lt;/jrnl:prelim&gt; </codeblock>
                <title>Target XML</title>
                <codeblock> &lt;nitf:body.head&gt; ... &lt;nitf:byline&gt; &lt;person:contributor
                    contributor-type="author"&gt; &lt;person:person&gt;
                    &lt;person:name.text&gt;Bridget Treacy&lt;/person:name.text&gt;
                    &lt;person:bio&gt; &lt;person:bio.text&gt; &lt;bodytext&gt; &lt;p&gt;
                    &lt;text&gt;Barlow Lyde &amp;amp; Gilbert&lt;contact:email
                    normval="btreacy@blg.co.uk"
                    &gt;btreacy@blg.co.uk&lt;/contact:email&gt;&lt;/text&gt; &lt;/p&gt;
                    &lt;/bodytext&gt; &lt;/person:bio.text&gt; &lt;/person:bio&gt;
                    &lt;/person:person&gt; &lt;/person:contributor&gt; &lt;/nitf:byline&gt; ...
                    &lt;/nitf:body.head&gt; </codeblock>
            </example>
            <section>
                <title>Changes</title>
                <p>2013-09-03: <ph id="change_20130903_DSF">Added instruction to suppress any emph
                        descendants of contrib/person and updated the example.</ph></p>
            </section>
        </body>
    </dita:topic>

    <!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
    <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK09-LegalNews\UK09LegalNews_contrib.dita  -->
    <!--<xsl:message>UK09LegalNews_contrib.xsl requires manual development!</xsl:message> -->

    <xsl:template match="contrib">
<!--        <nitf:body.head>-->
        <nitf:byline>
            <person:contributor contributor-type="author">
                <person:person>
             <xsl:apply-templates select="@* | node()"/>
                </person:person>
           <!-- <xsl:apply-templates select="bio[addl-info]"/>
            <xsl:apply-templates select="bio[not(addl-info)]"/>
            <xsl:apply-templates select="addl-info"/>
            <xsl:apply-templates select="govt-entity"/>
            <xsl:apply-templates select="role"/>
            <xsl:apply-templates select="person/role"/>
            <xsl:apply-templates select="text/role"/>-->
            </person:contributor>
        </nitf:byline>
        <!--</nitf:body.head>-->

    </xsl:template>
    <!-- suppress @serachtype -->
    <xsl:template match="contrib/@searchtype"/>
    
    
    <xsl:template match="remotelink[parent::person]" priority="25">
        <url>
            <xsl:if test="@href">
                <xsl:attribute name="normval">
                    <xsl:value-of select="@hrefclass"/>
                    <xsl:text>://</xsl:text>
                    <xsl:value-of select="@href"/>
                </xsl:attribute>
            </xsl:if>
            <xsl:value-of select="."/>
        </url>
    </xsl:template>
   <!-- <xsl:template match="bio[not(addl-info)]">
        <!-\-  Original Target XPath:  person:person/person:bio   -\->
      <!-\-  <person:person>-\->
            <person:bio>
                <person:bio.text>
                    <bodytext>
                        <xsl:apply-templates select="@* | node()"/>
                    </bodytext>
                </person:bio.text>
            </person:bio>
        <!-\-</person:person>-\->
    </xsl:template>

    <xsl:template match="bio[addl-info]">
        <!-\-  Original Target XPath:  person:person/person:bio   -\->
        <!-\-<person:person>-\->
            <person:bio>
                <xsl:apply-templates select="@* | node()"/>
            </person:bio>
        <!-\-</person:person>-\->
    </xsl:template>

    <xsl:template match="addl-info">
        <!-\-  Original Target XPath:  person:bio/person:bio.text   -\->
        <person:bio.text>
            <bodytext>
                <xsl:apply-templates select="@* | node()"/>
            </bodytext>
        </person:bio.text>
    </xsl:template>

    <xsl:template match="govt-entity">
        <!-\-  Original Target XPath:  person:person/person:bio/person:bio.text/bodytext/p/text/entity:govt-entity   -\->
        <entity:govt-entity>
            <xsl:apply-templates select="@* | node()"/>
        </entity:govt-entity>
    </xsl:template>

    <xsl:template match="role">
        <!-\-  Original Target XPath:  person:person/person:bio/person:bio.text/bodytext/p/text/person:person/role   -\->
        <role>
            <xsl:apply-templates select="@* | node()"/>
        </role>
    </xsl:template>-->
</xsl:stylesheet>
