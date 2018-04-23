<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
    xmlns:classify="http://www.lexisnexis.com/xmlschemas/content/shared/classification/1/"
    xmlns:seclaw="http://www.lexisnexis.com/xmlschemas/content/legal/secondary-law/1/" version="2.0"
    exclude-result-prefixes="dita">

    <dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="catchwordgrp">
        <title>catchwordgrp <lnpid>id-CA14-35632</lnpid></title>
        <body>
            <section>
                <ul>
                    <li>
                        <sourcexml>catchwordgrp</sourcexml> omit tag and retain content. <ul>
                            <li>
                                <sourcexml>catchwords</sourcexml> becomes
                                    <targetxml>seclaw:body/seclaw:digestgrp/seclaw:digest/seclaw:digestinfo/classify:classification</targetxml>
                                and comes with <targetxml>@classscheme="catchwords"</targetxml>
                                <ul>
                                    <li>
                                        <sourcexml>catchphrase</sourcexml> becomes
                                            <targetxml>classify:classification/classify:classitem</targetxml>
                                        <ul>
                                            <li>Create
                                                  <targetxml>classify:classification/classify:classitem/classify:classitem-identifier</targetxml>
                                                <ul>
                                                  <li>Create
                                                  <targetxml>classify:classification/classify:classitem/classify:classitem-identifier/classify:classname</targetxml>
                                                  </li>
                                                </ul>
                                            </li>
                                        </ul>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </li>
                </ul>
                <note>
                    <p>Each instance of <sourcexml>catchwords</sourcexml> should be converted to its
                        own
                            <targetxml>classify:classification[@classscheme="catchwords"]</targetxml>
                        element.</p>
                </note>
            </section>
            <example>
                <title>Example 1</title>
                <codeblock> &lt;catchwordgrp&gt; &lt;catchwords&gt; &lt;catchphrase&gt; Aboriginal
                    law&lt;/catchphrase&gt; &lt;catchphrase&gt;Aboriginal lands&lt;/catchphrase&gt;
                    &lt;catchphrase&gt;Practice and procedure&lt;/catchphrase&gt;
                    &lt;catchphrase&gt;Appeals and judicial review&lt;/catchphrase&gt;
                    &lt;catchphrase&gt;Appeal by Christensens from judgment ordering them to vacate
                    lands allowed&lt;/catchphrase&gt; &lt;/catchwords&gt;
                    &lt;/catchwordgrp&gt;</codeblock>
                <b>Becomes</b>
                <codeblock> &lt;seclaw:body&gt; &lt;seclaw:digestgrp&gt; &lt;seclaw:digest&gt;
                    &lt;seclaw:digestinfo&gt; &lt;classify:classification
                    classscheme="catchwords"&gt; &lt;classify:classitem&gt;
                    &lt;classify:classitem-identifier&gt; &lt;classify:classname&gt; Aboriginal
                    law&lt;/classify:classname&gt; &lt;/classify:classitem-identifier&gt;
                    &lt;/classify:classitem&gt; &lt;classify:classitem&gt;
                    &lt;classify:classitem-identifier&gt; &lt;classify:classname&gt;Aboriginal
                    lands&lt;/classify:classname&gt; &lt;/classify:classitem-identifier&gt;
                    &lt;/classify:classitem&gt; &lt;classify:classitem&gt;
                    &lt;classify:classitem-identifier&gt; &lt;classify:classname&gt;Practice and
                    procedure&lt;/classify:classname&gt; &lt;/classify:classitem-identifier&gt;
                    &lt;/classify:classitem&gt; &lt;classify:classitem&gt;
                    &lt;classify:classitem-identifier&gt; &lt;classify:classname&gt;Appeals and
                    judicial review&lt;/classify:classname&gt;
                    &lt;/classify:classitem-identifier&gt; &lt;/classify:classitem&gt;
                    &lt;classify:classitem&gt; &lt;classify:classitem-identifier&gt;
                    &lt;classify:classname&gt;Appeal by Christensens from judgment ordering them to
                    vacate lands allowed&lt;/classify:classname&gt;
                    &lt;/classify:classitem-identifier&gt; &lt;/classify:classitem&gt;
                    &lt;/classify:classification&gt; &lt;/seclaw:digestinfo&gt;
                    &lt;/seclaw:digest&gt; &lt;/seclaw:digestgrp&gt; &lt;/seclaw:body&gt;
                </codeblock>
            </example>
            <section>
                <title>Changes</title>
                <p>2015-02-20: <ph id="change_20150220_PS">Created.</ph></p>
            </section>
        </body>
    </dita:topic>

    <!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
    <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA14-Emerging_Issues\catchwordgrp.dita  -->
    <!--<xsl:message>CA14-Emerging_Issues_catchwordgrp.xsl requires manual development!</xsl:message>-->

    <!--Vikas Rohilla : Template to match the abstract/catchwordgrp and process the childs nodes -->
    <xsl:template match="abstract/catchwordgrp">
        <xsl:apply-templates select="@* | node()"/>
    </xsl:template>

    <!--Vikas Rohilla : Template to match the catchwords and creates the classify:classification-->
    <xsl:template match="catchwords">
        <classify:classification>
            <xsl:attribute name="classscheme" select="'catchwords'"/>
            <xsl:apply-templates select="@* | node()"/>
        </classify:classification>
    </xsl:template>

    <!--Vikas Rohilla : Template to match the catchphrase and creates the classify:classitem/classify:classitem-identifier/classify:classname -->
    <xsl:template match="catchphrase">
        <classify:classitem>
            <classify:classitem-identifier>
                <classify:classname>
                    <xsl:apply-templates select="@* | node()"/>
                </classify:classname>
            </classify:classitem-identifier>
        </classify:classitem>
    </xsl:template>

</xsl:stylesheet>
