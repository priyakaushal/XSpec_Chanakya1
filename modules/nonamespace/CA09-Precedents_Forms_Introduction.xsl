<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
    xmlns:ci="http://www.lexis-nexis.com/ci" xmlns:comm="http://www.lexis-nexis.com/glp/comm"
    xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/"
    xmlns:seclaw="http://www.lexisnexis.com/xmlschemas/content/legal/secondary-law/1/" version="2.0"
    exclude-result-prefixes="dita ci comm">

    <dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Introduction">
        <title>Introduction <lnpid>id-CA09-14409</lnpid></title>
        <shortdesc>This Conversion Instructions describes the conversion of the Rosetta
            COMMENTARYDOC DTD to <b>Seclaw 8.21_PROD </b> schema.</shortdesc>
        <body>

            <p>CA Precedents/Forms samples are identified using the root element
                    <sourcexml>COMMENTARYDOC</sourcexml> with element and value
                    <sourcexml>&lt;docinfo:selector&gt;commentary&lt;/docinfo:selector&gt;</sourcexml>.</p>

            <section>
                <sourcexml>COMMENTARYDOC</sourcexml> becomes <targetxml>seclaw:seclaw</targetxml>
                which has a required attribute <targetxml>@seclawtype</targetxml>, the value of
                attribute <targetxml>@seclawtype</targetxml> depends on the value of
                    <sourcexml>/level/bodytext/@searchtype</sourcexml> attribute in input sample.
                Below are the rules to assign the value of attribute
                    <targetxml>@seclawtype</targetxml>. <ul>
                    <li>if <sourcexml>/level/bodytext</sourcexml> contains
                            <sourcexml>@searchtype="COMMENTARY"</sourcexml>, then the value of
                            <targetxml>/seclaw:seclaw/@seclawtype</targetxml> will become
                            <targetxml>/seclaw:seclaw[@seclawtype="commentary"]</targetxml>.</li>
                    <li>if <sourcexml>/level/bodytext</sourcexml> contains
                            <sourcexml>@searchtype="FORM"</sourcexml>, then the value of
                            <targetxml>/seclaw:seclaw/@seclawtype</targetxml> will become
                            <targetxml>/seclaw:seclaw[@seclawtype="form"]</targetxml>.</li>
                </ul> The source attribute <sourcexml>@xml:lang</sourcexml>, if present, can be
                dropped, as a separate rule has been defined to populate
                    <targetxml>/seclaw:seclaw/@xml:lang</targetxml>.</section>
            <note>In Rosetta samples element <sourcexml>comm:info</sourcexml> occurs within root
                element <sourcexml>COMMENTARYDOC</sourcexml> and contains child elements
                    <sourcexml>publication</sourcexml> and <sourcexml>contrib</sourcexml>, where as
                    <sourcexml>publication</sourcexml> is mapped under
                    <targetxml>doc:metadata</targetxml> and <sourcexml>contrib</sourcexml> is mapped
                in <targetxml>seclaw:body</targetxml> in target conversion, So the conversion of
                source element <sourcexml>comm:info</sourcexml> will cause an empty creation in
                output, which is not mendatory in output, so conversion will omit this tag during NL
                conversion.</note>

            <section>
                <note>The attribute <sourcexml>@searchtype</sourcexml> will be suppressed from the
                    conversion except citation markup.</note>
                <pre>

&lt;COMMENTARYDOC&gt;
    ............
    ............
    &lt;docinfo:doc-lang lang="en"/&gt;
    &lt;docinfo:doc-country iso-cc="CA"/&gt;
    ............
    ............          
&lt;/COMMENTARYDOC&gt;


<b>Becomes</b>


&lt;seclaw:seclaw seclawtype="commentary" xml:lang="en-CA"&gt;
    ............
    ............
&lt;/seclaw:seclaw&gt;

      </pre>
                <p>Example for: when <sourcexml>/level/bodytext</sourcexml> contains
                        <sourcexml>@searchtype="COMMENTARY"</sourcexml>.</p>
                <pre>

&lt;COMMENTARYDOC&gt;
    &lt;comm:body&gt;
        ........
        &lt;level leveltype="1"&gt;            
            &lt;bodytext searchtype="COMMENTARY"&gt;
                &lt;p&gt;
                    &lt;text align="center"&gt;[&lt;emph typestyle="it"&gt;Style of Proceeding&lt;/emph&gt;]&lt;/text&gt;
                &lt;/p&gt;
                .......
            &lt;/bodytext&gt;
        &lt;/level&gt;
        ........
    &lt;/comm:body&gt;
&lt;/COMMENTARYDOC&gt;

</pre>
                <b>Becomes</b>
                <pre>
        

&lt;seclaw:seclaw seclawtype="commentary" xml:lang="en-CA"&gt;
    &lt;seclaw:body&gt;
        .........
        &lt;seclaw:level leveltype="unclassified"&gt;
            &lt;seclaw:bodytext&gt;
                &lt;p align="center"&gt;
                    &lt;text&gt;[&lt;emph typestyle="it"&gt;Style of Proceeding&lt;/emph&gt;]&lt;/text&gt;
                &lt;/p&gt;
                ........
            &lt;/seclaw:bodytext&gt;
        &lt;/seclaw:level&gt;
    &lt;/seclaw:body&gt;
    ..........
&lt;/seclaw:seclaw&gt;

      </pre>
                <p>Example for: when <sourcexml>/level/bodytext</sourcexml> contains
                        <sourcexml>@searchtype="FORM"</sourcexml>.</p>
                <pre>

&lt;COMMENTARYDOC&gt;
    &lt;comm:body&gt;
        ........
        &lt;level leveltype="3" searchtype="FORM"&gt;            
            &lt;bodytext searchtype="FORM"&gt;
                &lt;p&gt;
                    &lt;text align="center"&gt;[&lt;emph typestyle="it"&gt;Style of Proceeding&lt;/emph&gt;]&lt;/text&gt;
                &lt;/p&gt;
                .......
            &lt;/bodytext&gt;
        &lt;/level&gt;
        ........
    &lt;/comm:body&gt;
&lt;/COMMENTARYDOC&gt;

</pre>
                <b>Becomes</b>
                <pre>
        

&lt;seclaw:seclaw seclawtype="form" xml:lang="en-CA"&gt;
    &lt;seclaw:body&gt;
        .........
        &lt;seclaw:level leveltype="unclassified"&gt;
            &lt;seclaw:bodytext&gt;
                &lt;p align="center"&gt;
                    &lt;text&gt;[&lt;emph typestyle="it"&gt;Style of Proceeding&lt;/emph&gt;]&lt;/text&gt;
                &lt;/p&gt;
                ........
            &lt;/seclaw:bodytext&gt;
        &lt;/seclaw:level&gt;
    &lt;/seclaw:body&gt;
    ..........
&lt;/seclaw:seclaw&gt;

      </pre>
                <note>If any element has an attribute of <b>xmlns:*</b> like
                        <sourcexml>xmlns:ci</sourcexml> then move it to be an attribute of the root
                    element inside the Rosetta document. (i.e.
                        <sourcexml>ci:cite@xmlns:ci="http://www.lexis-nexis.com/ci"</sourcexml>).
                    Refer below snippet:<pre>

&lt;COMMENTARYDOC&gt;
    &lt;comm:body&gt;
        &lt;p&gt;
            &lt;text&gt;
                &lt;emph typestyle="it"&gt;...Rasmussen, 
                    &lt;ci:cite xmlns:ci="http://www.lexis-nexis.com/ci"&gt;
                        &lt;ci:case&gt;
                            &lt;ci:caseref ID="cref00000001" spanref="cspan00000001"&gt;
                                &lt;ci:reporter value="JE"/&gt;
                                &lt;ci:edition&gt;
                                    &lt;ci:date year="2005"/&gt;
                                &lt;/ci:edition&gt;
                                &lt;ci:page num="1551"/&gt;
                            &lt;/ci:caseref&gt;
                        &lt;/ci:case&gt;
                        &lt;ci:content&gt;&lt;ci:span spanid="cspan00000001"&gt;J.E. 2005-1551&lt;/ci:span&gt;&lt;/ci:content&gt;
                    &lt;/ci:cite&gt; (C.A.).&lt;/emph&gt;
            &lt;/text&gt;
        &lt;/p&gt;
    &lt;/comm:body&gt;
&lt;/COMMENTARYDOC&gt;

</pre>
                    <b>Becomes</b>
                    <pre>
        

&lt;COMMENTARYDOC xmlns:ci="http://www.lexis-nexis.com/ci"&gt;
    &lt;comm:body&gt;
        &lt;p&gt;
            &lt;text&gt;
                &lt;emph typestyle="it"&gt;...Rasmussen, 
                    &lt;ci:cite&gt;
                        &lt;ci:case&gt;
                            &lt;ci:caseref ID="cref00000001" spanref="cspan00000001"&gt;
                                &lt;ci:reporter value="JE"/&gt;
                                &lt;ci:edition&gt;
                                    &lt;ci:date year="2005"/&gt;
                                &lt;/ci:edition&gt;
                                &lt;ci:page num="1551"/&gt;
                            &lt;/ci:caseref&gt;
                        &lt;/ci:case&gt;
                        &lt;ci:content&gt;&lt;ci:span spanid="cspan00000001"&gt;J.E. 2005-1551&lt;/ci:span&gt;&lt;/ci:content&gt;
                    &lt;/ci:cite&gt; (C.A.).&lt;/emph&gt;
            &lt;/text&gt;
        &lt;/p&gt;
    &lt;/comm:body&gt;
&lt;/COMMENTARYDOC&gt;

      </pre>
                </note>
                <note>Elements <targetxml>seclaw:head</targetxml>,
                        <targetxml>seclaw:body</targetxml> and <targetxml>doc:metadata</targetxml>
                    are created as required children of root element
                        <targetxml>seclaw:seclaw</targetxml> during conversion.</note>
                <note>If there is no header information found in the Rosetta samles then conversion
                    need to create empty <sourcexml>&lt;seclaw:head/&gt;</sourcexml> in NL
                    output.</note>
                <p>
                    <b>Note:</b>
                </p>
                <p>Source elements and attributes are highlighted like this:
                        <sourcexml>SOURCEXML</sourcexml></p>
                <p>Target elements and attributes are highlighted like this:
                        <targetxml>TARGETXML</targetxml></p>
                <p>Copy source attributes to target attributes unless otherwise specified.</p>
                <p>Every example is represented like EXAMPLE in all the Conversion Instructions and
                    is captured under <pre>pre</pre> tag.</p>
            </section>
            <section>
                <title>Changes</title>
                <p>2017-03-08: <ph id="change_20170411_SS">Updated Schema version to <b>Seclaw 8.21_PROD </b></ph>.</p>
                <p>2017-03-08: <ph id="change_20170307_SS">Updated Schema version to <b>Seclaw 8.20_PROD </b></ph>.</p>
                <p>2016-06-09: <ph id="change_20160609_HP">Updated Schema version to <b>Seclaw
                            8.13_PROD </b></ph>.</p>

                <p>2016-03-10: <ph id="change_20160310_SS">Added a note for handling any
                            <b>"xmlns=*"</b> attribute (i.e. @xmlns:ci ) which is comes under any
                        Rosetta element and it should be moved inside the root element of current
                        document</ph>.</p>
                <p>2014-03-27: <ph id="change_20140327_AS">Updated a note for
                            <sourcexml>comm:info</sourcexml> to handle the element
                            <sourcexml>contrib</sourcexml></ph>.</p>
                <p>2014-04-14: <ph id="change_20140414_AS">Updated a note for
                            <sourcexml>emph</sourcexml> to handle <sourcexml>emph typestyle="it" or
                            emph typestyle="un"</sourcexml> and multiple emph.... DB
                        item#91,93,94,95</ph>.</p>
                <p>2014-05-01: <ph id="change_20140501_AS">Moved this note to General markup: Note
                        for <sourcexml>emph</sourcexml> to handle <sourcexml>emph typestyle="it" or
                            emph typestyle="un"</sourcexml> and multiple emph.... DB
                        item#91,93,94,95</ph>.</p>
            </section>
        </body>
    </dita:topic>

    <!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
    <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA09-Precedents_Forms\Introduction.dita  -->
    <!--<xsl:message>CA09-Precedents_Forms_Introduction.xsl requires manual development!</xsl:message> -->

    <xsl:template match="COMMENTARYDOC">
        <!--  Original Target XPath:  seclaw:seclaw   -->
        <seclaw:seclaw>
            <xsl:variable name="searchtype">
                <xsl:value-of select=".//bodytext[1]/@searchtype"/>
            </xsl:variable>

           <!-- <xsl:for-each select="$lexisAdvNamespaces/*">
                <xsl:sort/>
                <xsl:namespace name="{substring-after(substring-before(., '='), ':')}"
                    select="substring-after(translate(., '&#034;', ''), '=')"/>
            </xsl:for-each>-->

            <xsl:call-template name="generateNSGlobalBindings"/>
            <xsl:call-template name="xml_lang"/>

            <xsl:choose>
                <xsl:when test="$searchtype = ''">
                    <xsl:attribute name="seclawtype">
                        <xsl:text>commentary</xsl:text>
                    </xsl:attribute>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:attribute name="seclawtype">
                        <xsl:value-of select="lower-case($searchtype)"/>
                    </xsl:attribute>
                </xsl:otherwise>
            </xsl:choose>

            <!--<xsl:apply-templates select="@* | node()"/>-->
            <seclaw:head>
                <xsl:comment>Mandatory element according to the CI</xsl:comment>

            </seclaw:head>
            <seclaw:body>
                <!-- <xsl:apply-templates select="comm:info/contrib"/>-->
                <xsl:apply-templates select="comm:body"/>
            </seclaw:body>
            <!---->

            <doc:metadata>
                <xsl:apply-templates select="/COMMENTARYDOC/comm:info/publication"/>
                <xsl:apply-templates select="docinfo"/>
            </doc:metadata>
        </seclaw:seclaw>
    </xsl:template>


    <xsl:template match="COMMENTARYDOC/@xml:lang"/>
</xsl:stylesheet>
