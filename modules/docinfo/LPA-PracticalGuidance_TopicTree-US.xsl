<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
    xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/"
    xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo"
    xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/"
    xmlns:classify="http://www.lexisnexis.com/xmlschemas/content/shared/classification/1/"
    xmlns:seclaw="http://www.lexisnexis.com/xmlschemas/content/legal/secondary-law/1/" version="2.0"
    exclude-result-prefixes="dita docinfo">

    <dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/"
        id="LPA-PracticalGuidance_TopicTree">
        <title>Topic Tree Document <lnpid>id-USPA-31046</lnpid></title>
        <body>

            <section>
                <title>Instructions</title>
                <p>The content of <sourcexml>docinfo:selector</sourcexml> needs to be queried to
                    determine a proper value for <targetxml>seclaw:seclaw[@seclawtype]</targetxml>. <sl>
                        <sli>If <sourcexml>docinfo:selector</sourcexml> contains the following
                            content <sourcexml>TopicTree - LandingPage</sourcexml> the value of
                                <targetxml>seclaw:seclaw[@seclawtype]</targetxml> should be
                                <targetxml>practicalguidance</targetxml>
                        </sli>
                    </sl>
                </p>



            </section>
            <example>
                <title>Source XML</title>
                <codeblock> &lt;docinfo:selector&gt;TopicTree - LandingPage&lt;/docinfo:selector&gt;
                </codeblock>
            </example>
            <example>
                <title>Target XML</title>
                <codeblock> &lt;seclaw:seclaw seclawtype="practicalguidance" ...&gt; </codeblock>
            </example>

            <section>
                <title>level[@leveltype] mapping</title>

                <p>Topic Tree documents contain multiple levels of hierarchy to group tabs within a
                    practice area for the purposes of providing a visual display of topics and
                    topics within a specific category (tab).</p>

                <p>When <sourcexml>level@leveltype</sourcexml> occurs the mapping to
                        <targetxml>seclaw:level@leveltype</targetxml>. The mapping of terms should
                    be as follows: <sl>
                        <sli><sourcexml>level[@leveltype='practicearea']</sourcexml> maps to
                                <targetxml>seclaw:level[@leveltype='practicearea']</targetxml></sli>
                                <sli><sourcexml>level[@leveltype='sub-topic']</sourcexml> maps to
                                <targetxml>seclaw:level[@leveltype='subtopic']</targetxml>
                        </sli>
                        <sli><sourcexml>level[@leveltype='topic']</sourcexml> maps to
                                <targetxml>seclaw:level[@leveltype='topic']</targetxml>
                        </sli> <sli><sourcexml>level[@leveltype='HOME']</sourcexml>, create an
                            attribute <targetxml>seclaw:level[@leveltype='topictree']</targetxml>
                            and <targetxml>xml:id="HOME"</targetxml></sli>
                    </sl>
                    <sl>
                        <sli><sourcexml>level[@leveltype='AT-A-GLANCE']</sourcexml>,
                                <sourcexml>level[@leveltype='PRACTICALGUIDANCE']</sourcexml>,
                                <sourcexml>level[@leveltype='FORMSANDPRECEDENTS']</sourcexml>,
                                <sourcexml>level[@leveltype='CASES']</sourcexml>,
                                <sourcexml>level[@leveltype='CODES']</sourcexml>,
                                <sourcexml>level[@leveltype='LEGALANALYSIS']</sourcexml>,
                                <sourcexml>level[@leveltype='EMERGINGISSUES']</sourcexml>,
                                <sourcexml>level[@leveltype='NEWS']</sourcexml>,
                                <sourcexml>level[@leveltype='ADMINISTRATIVE']</sourcexml>,
                                <sourcexml>level[@leveltype='ADMINISTRATIVECODESANDREGULATIONS']</sourcexml>
                            and <sourcexml>level[@leveltype='BRIEFSPLEADINGSANDMOTIONS']</sourcexml>
                            maps to <targetxml>xml:id</targetxml> and create an attribute
                                <targetxml>seclaw:level[@leveltype='landingpage']</targetxml> for
                            each.</sli>
                    </sl>
                </p>

            </section>

            <example>
                <title>Source XML</title>
                <codeblock> &lt;level leveltype="HOME"&gt; &lt;levelinfo&gt; &lt;classification
                    ln.user-displayed="false"&gt; &lt;classitem ln.user-displayed="false"&gt;
                    &lt;classitem-identifier&gt; &lt;classname/&gt;
                    &lt;classcode&gt;#BUS#&lt;/classcode&gt; &lt;/classitem-identifier&gt;
                    &lt;/classitem&gt; &lt;/classification&gt; &lt;/levelinfo&gt; &lt;heading&gt;
                    &lt;title&gt;Business Law&lt;/title&gt; &lt;/heading&gt; &lt;bodytext&gt;
                    &lt;p&gt; &lt;text&gt; &lt;remotelink dpsi="0LTR" remotekey1="DOC-ID"
                    remotekey2="0LTR_6877" service="DOC-ID"&gt;BUSINESSLAWHOME&lt;/remotelink&gt;
                    &lt;/text&gt; &lt;/p&gt; &lt;/bodytext&gt; ... &lt;level
                    leveltype="sub-topic"&gt; &lt;levelinfo&gt; &lt;classification
                    ln.user-displayed="false"&gt; &lt;classitem ln.user-displayed="false"&gt;
                    &lt;classitem-identifier&gt; &lt;classname&gt;158&lt;/classname&gt;
                    &lt;classcode/&gt; &lt;/classitem-identifier&gt; &lt;/classitem&gt;
                    &lt;/classification&gt; &lt;/levelinfo&gt; &lt;heading&gt;
                    &lt;title&gt;Acquisition by Asset Purchase, Stock Purchase or
                    Merger&lt;/title&gt; &lt;/heading&gt; ... &lt;level
                    leveltype="LEGALANALYSIS"&gt; &lt;levelinfo&gt; &lt;classification
                    ln.user-displayed="false"&gt; &lt;classitem ln.user-displayed="false"&gt;
                    &lt;classitem-identifier&gt; &lt;classname/&gt;
                    &lt;classcode&gt;#BUS#&lt;/classcode&gt; &lt;/classitem-identifier&gt;
                    &lt;/classitem&gt; &lt;/classification&gt; &lt;/levelinfo&gt; &lt;heading&gt;
                    &lt;title&gt;Business Law&lt;/title&gt; &lt;/heading&gt; ... </codeblock>
            </example>

            <example>
                <title>Target XML</title>
                <codeblock> &lt;seclaw:level leveltype="topictree" xml:id="HOME"&gt; &lt;heading&gt;
                    &lt;title&gt;Business Law&lt;/title&gt; &lt;/heading&gt;
                    &lt;seclaw:levelinfo&gt; &lt;classify:classification&gt;
                    &lt;classify:classitem&gt; &lt;classify:classitem-identifier&gt;
                    &lt;classify:classname/&gt;
                    &lt;classify:classcode&gt;#BUS#&lt;/classify:classcode&gt;
                    &lt;/classify:classitem-identifier&gt; &lt;/classify:classitem&gt;
                    &lt;/classify:classification&gt; &lt;/seclaw:levelinfo&gt;
                    &lt;seclaw:bodytext&gt; &lt;p&gt; &lt;text&gt; &lt;ref:crossreference
                    crossreferencetype="seeAlso"&gt;
                    &lt;ref:content&gt;BUSINESSLAWHOME&lt;/ref:content&gt; &lt;ref:locator&gt;
                    &lt;ref:locator-key&gt; &lt;ref:key-name name="DOC-ID"/&gt; &lt;ref:key-value
                    value="0LTR-0LTR_6877"/&gt; &lt;/ref:locator-key&gt; &lt;/ref:locator&gt;
                    &lt;/ref:crossreference&gt; &lt;/text&gt; &lt;/p&gt; ... &lt;seclaw:level
                    leveltype="subtopic"&gt; &lt;heading&gt; &lt;title&gt;Acquisition by Asset
                    Purchase, Stock Purchase or Merger&lt;/title&gt; &lt;/heading&gt;
                    &lt;seclaw:levelinfo&gt; &lt;classify:classification&gt;
                    &lt;classify:classitem&gt; &lt;classify:classitem-identifier&gt;
                    &lt;classify:classname&gt;158&lt;/classify:classname&gt;
                    &lt;classify:classcode/&gt; &lt;/classify:classitem-identifier&gt;
                    &lt;/classify:classitem&gt; &lt;/classify:classification&gt;
                    &lt;/seclaw:levelinfo&gt; ... &lt;seclaw:level leveltype="landingpage"
                    xml:id="LEGALANALYSIS"&gt; &lt;heading&gt; &lt;title&gt;Business
                    Law&lt;/title&gt; &lt;/heading&gt; &lt;seclaw:levelinfo&gt;
                    &lt;classify:classification&gt; &lt;classify:classitem&gt;
                    &lt;classify:classitem-identifier&gt; &lt;classify:classname/&gt;
                    &lt;classify:classcode&gt;#BUS#&lt;/classify:classcode&gt;
                    &lt;/classify:classitem-identifier&gt; &lt;/classify:classitem&gt;
                    &lt;/classify:classification&gt; &lt;/seclaw:levelinfo&gt; </codeblock>
            </example>

            <section>
                <title>levelinfo/classification</title>
                <p><sourcexml>levelinfo/classification</sourcexml> becomes
                        <targetxml>seclaw:levelinfo/classify:classification</targetxml>. The content
                    of
                        <sourcexml>classification/classitem/classitem-identifier/classname</sourcexml>
                    becomes the value for
                        <targetxml>classify:classification/classify:classitem/classify:classitem-identifier/classify:classname</targetxml>.
                    A single <targetxml>classify:classitem</targetxml> is created for each unique
                    value of <targetxml>classification@classscheme</targetxml>.</p> A single
                    <targetxml>classify:classitem</targetxml> is created for each unique value of
                    <targetxml>classification@classscheme</targetxml>. <p>If there is no classscheme
                    value in the source, only 1 instance of classify:classification should be
                    created. Within a single classify:classification element, multiple
                        <targetxml>classify:classitem</targetxml> are allowed. If multiple
                        <sourcexml>classitem</sourcexml> elements are present, create multiple
                        <targetxml>classify:classitem</targetxml> elements.</p>
                <p>Drop attribute <sourcexml>ln.user-displayed</sourcexml> from converted content
                    within classification (and child) elements.</p>
                <ul>
                    <li><sourcexml>classitem</sourcexml> becomes
                            <targetxml>classify:classitem</targetxml></li>
                            <li><sourcexml>classitem-identifier</sourcexml> becomes
                            <targetxml>classify:classitem-identifier</targetxml>
                        <ul>
                            <li>If there is a value specified within the id attribute,
                                    <sourcexml>classitem-identifier@id</sourcexml> becomes
                                    <targetxml>classify:classitem-identifier@xml:id</targetxml></li>
                            <li>See example below.</li>
                        </ul>
                    </li> <li><sourcexml>classname</sourcexml> becomes
                            <targetxml>classify:classname</targetxml></li>
                            <li><sourcexml>classcode</sourcexml> becomes
                            <targetxml>classify:classcode</targetxml>: Include classcode only when
                        included in source content.</li> </ul>
            </section>

            <example>
                <title>Source XML</title>
                <codeblock> &lt;level leveltype="sub-topic"&gt; &lt;levelinfo&gt; &lt;classification
                    ln.user-displayed="false"&gt; &lt;classitem ln.user-displayed="false"&gt;
                    &lt;classitem-identifier&gt; &lt;classname&gt;17&lt;/classname&gt;
                    &lt;classcode/&gt; &lt;/classitem-identifier&gt; &lt;/classitem&gt;
                    &lt;/classification&gt; &lt;/levelinfo&gt; &lt;/level&gt; </codeblock>
            </example>

            <example>
                <title>Target XML</title>
                <codeblock> &lt;seclaw:levelinfo&gt; &lt;classify:classification&gt;
                    &lt;classify:classitem&gt; &lt;classify:classitem-identifier&gt;
                    &lt;classify:classname&gt;17&lt;/classname&gt; &lt;classify:classcode/&gt;
                    &lt;/classify:classitem-identifier&gt; &lt;/classify:classitem&gt;
                    &lt;/classify:classification&gt; &lt;/seclaw:levelinfo&gt; </codeblock>
            </example>

            <example>
                <title>Source XML with classitem-identifier id</title>
                <codeblock> &lt;level leveltype="topic"&gt; &lt;levelinfo&gt; &lt;classification&gt;
                    &lt;classitem&gt; &lt;classitem-identifier id="77787877887"&gt;
                    &lt;classname&gt;153&lt;/classname&gt;
                    &lt;classcode&gt;urn:topic:AA1145BCDDCC4C06B336A9DB2AAF7554&lt;/classcode&gt;
                    &lt;/classitem-identifier&gt; &lt;/classitem&gt; &lt;/classification&gt;
                    &lt;/levelinfo&gt; </codeblock>
            </example>

            <example>
                <title>Target XML with classify:classitem-identifier xml:id</title>
                <codeblock> &lt;seclaw:levelinfo&gt; &lt;classify:classification&gt;
                    &lt;classify:classitem&gt; &lt;classify:classitem-identifier
                    xml:id="77787877887"&gt;
                    &lt;classify:classname&gt;153&lt;/classify:classname&gt;
                    &lt;classify:classcode&gt;urn:topic:AA1145BCDDCC4C06B336A9DB2AAF7554&lt;/classify:classcode&gt;
                    &lt;/classify:classitem-identifier&gt; &lt;/classify:classitem&gt;
                    &lt;/classify:classification&gt; &lt;/levelinfo&gt; </codeblock>
            </example>
            <section>
                <title>Changes</title>
                <p>2015-04-27: <ph id="change_20150427_snb">Added rule for mapping topic tree
                        leveltypes
                            <sourcexml>level[@leveltype='ADMINISTRATIVECODESANDREGULATIONS']</sourcexml>
                        and
                        <sourcexml>level[@leveltype='BRIEFSPLEADINGSANDMOTIONS']</sourcexml>.</ph></p>
            </section>
        </body>

    </dita:topic>

    <!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
    <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-US\US_LPA\LPA-PracticalGuidance_TopicTree-US.dita  -->
    <!--<xsl:message>LPA-PracticalGuidance_TopicTree-US.xsl requires manual development!</xsl:message> 
-->
    <xsl:template match="docinfo:selector">

        <!--  Original Target XPath:  seclaw:seclaw[@seclawtype]   -->
        <seclaw:seclaw>
            <xsl:apply-templates select="@* | node()"/>
        </seclaw:seclaw>

    </xsl:template>

    <xsl:template match="level[@leveltype = 'practicearea']">

        <!--  Original Target XPath:  seclaw:level[@leveltype='practicearea']   -->
        <seclaw:level>
            <xsl:apply-templates select="@* | node()"/>
        </seclaw:level>

    </xsl:template>

    <xsl:template match="level[@leveltype = 'sub-topic']">

        <!--  Original Target XPath:  seclaw:level[@leveltype='subtopic']   -->
        <seclaw:level>
            <xsl:apply-templates select="@* | node()"/>
        </seclaw:level>

    </xsl:template>

    <xsl:template match="level[@leveltype = 'topic']">

        <!--  Original Target XPath:  seclaw:level[@leveltype='topic']   -->
        <seclaw:level>
            <xsl:apply-templates select="@* | node()"/>
        </seclaw:level>

    </xsl:template>

    <xsl:template match="level[@leveltype = 'HOME']">

        <!--  Original Target XPath:  seclaw:level[@leveltype='topictree']   -->
        <seclaw:level>
            <xsl:apply-templates select="@* | node()"/>
        </seclaw:level>

    </xsl:template>

    <xsl:template match="level[@leveltype = 'AT-A-GLANCE']">

        <!--  Original Target XPath:  xml:id   -->
        <xml:id>
            <xsl:apply-templates select="@* | node()"/>
        </xml:id>

    </xsl:template>

    <xsl:template match="level[@leveltype = 'PRACTICALGUIDANCE']">

        <!--  Original Target XPath:  xml:id   -->
        <xml:id>
            <xsl:apply-templates select="@* | node()"/>
        </xml:id>

    </xsl:template>

    <xsl:template match="level[@leveltype = 'FORMSANDPRECEDENTS']">

        <!--  Original Target XPath:  xml:id   -->
        <xml:id>
            <xsl:apply-templates select="@* | node()"/>
        </xml:id>

    </xsl:template>

    <xsl:template match="level[@leveltype = 'CASES']">

        <!--  Original Target XPath:  xml:id   -->
        <xml:id>
            <xsl:apply-templates select="@* | node()"/>
        </xml:id>

    </xsl:template>

    <xsl:template match="level[@leveltype = 'CODES']">

        <!--  Original Target XPath:  xml:id   -->
        <xml:id>
            <xsl:apply-templates select="@* | node()"/>
        </xml:id>

    </xsl:template>

    <xsl:template match="level[@leveltype = 'LEGALANALYSIS']">

        <!--  Original Target XPath:  xml:id   -->
        <xml:id>
            <xsl:apply-templates select="@* | node()"/>
        </xml:id>

    </xsl:template>

    <xsl:template match="level[@leveltype = 'EMERGINGISSUES']">

        <!--  Original Target XPath:  xml:id   -->
        <xml:id>
            <xsl:apply-templates select="@* | node()"/>
        </xml:id>

    </xsl:template>

    <xsl:template match="level[@leveltype = 'NEWS']">

        <!--  Original Target XPath:  xml:id   -->
        <xml:id>
            <xsl:apply-templates select="@* | node()"/>
        </xml:id>

    </xsl:template>

    <xsl:template match="level[@leveltype = 'ADMINISTRATIVE']">

        <!--  Original Target XPath:  xml:id   -->
        <xml:id>
            <xsl:apply-templates select="@* | node()"/>
        </xml:id>

    </xsl:template>

    <xsl:template match="level[@leveltype = 'ADMINISTRATIVECODESANDREGULATIONS']">

        <!--  Original Target XPath:  xml:id   -->
        <xml:id>
            <xsl:apply-templates select="@* | node()"/>
        </xml:id>

    </xsl:template>

    <xsl:template match="level[@leveltype = 'BRIEFSPLEADINGSANDMOTIONS']">

        <!--  Original Target XPath:  xml:id   -->
        <xml:id>
            <xsl:apply-templates select="@* | node()"/>
        </xml:id>

    </xsl:template>

    <xsl:template match="levelinfo/classification">
            <classify:classification>
                <xsl:apply-templates select="@* | node()"/>
            </classify:classification>
    </xsl:template>

    <xsl:template match="classification/classitem/classitem-identifier/classname">

        <!--  Original Target XPath:  classify:classification/classify:classitem/classify:classitem-identifier/classify:classname   -->
                    <classify:classname>
                        <xsl:apply-templates select="@* | node()"/>
                    </classify:classname>
                

    </xsl:template>
    
    <xsl:template match="classification/classitem/classitem-identifier/classcode">
        <classify:classcode>
            <xsl:if test="@codescheme">
                <xsl:attribute name="codescheme">
                    <xsl:value-of select="@codescheme"/>
                </xsl:attribute>
            </xsl:if>
            <xsl:if test="@normval">
                <xsl:attribute name="normval">
                    <xsl:value-of select="@normval"/>
                </xsl:attribute>
            </xsl:if>
            <xsl:value-of select="."/>
        </classify:classcode>
    </xsl:template>

    <xsl:template match="classitem">

        <!--  Original Target XPath:  classify:classitem   -->
        <classify:classitem>
            <xsl:apply-templates select="@* | node()"/>
        </classify:classitem>

    </xsl:template>

    <xsl:template match="classitem-identifier">

        <!--  Original Target XPath:  classify:classitem-identifier   -->
        <classify:classitem-identifier>
            <!--<xsl:apply-templates select="classcode"/>-->
            <xsl:apply-templates select="@* | node()"/>
        </classify:classitem-identifier>

    </xsl:template>
    
    <xsl:template match="link[@refpt][not(@type or @smi or @filename)]" priority="2">
        <ref:lnlink>
            <ref:marker>
                <xsl:choose>
                    <xsl:when test="$streamID='CA02-CC'"><xsl:value-of select="."/></xsl:when>
                    <xsl:otherwise><xsl:apply-templates select="node()"/></xsl:otherwise>
                </xsl:choose>
            </ref:marker>
            <ref:locator>
                <xsl:attribute name="anchoridref">
                    <xsl:value-of select="@refpt"/>
                </xsl:attribute>
            </ref:locator>
        </ref:lnlink>
    </xsl:template>
    
    <xsl:template match="docinfo:custom-metafields" mode="metadata_custom">
        <doc:legacy-metadata>
            <xsl:attribute name="metadatasource">
                <xsl:text>custom-metafields</xsl:text>
            </xsl:attribute>
            <meta>
                <xsl:apply-templates select="docinfo:custom-metafield" mode="metadata_metafield"/>
            </meta>
        </doc:legacy-metadata>
    </xsl:template>
    
    <xsl:template match="docinfo:custom-metafield" mode="metadata_metafield">
        <metaitem>
            <xsl:attribute name="name">
                <xsl:value-of select="@name"/>
            </xsl:attribute>
            <xsl:attribute name="value">
                <xsl:value-of select="."/>
            </xsl:attribute>
        </metaitem>
    </xsl:template>

</xsl:stylesheet>
