<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
    xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/"
    xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/" 
    version="2.0" exclude-result-prefixes="dita">

    <dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/"
        id="CA12_CA-Dictionaries_emph-searchtype.dita">
        <title>emph/@searchtype <lnpid>id-CA12-15012</lnpid></title>

        <body>
            <section>
                <p>When input documents is having <sourcexml
                        class="+ topic/keyword xml-d/sourcexml ">emph/@searchtype</sourcexml> then
                    it will be converted as mentioned below:</p>

                <ul>
                    <li>Conversion needs to remove <sourcexml>@searchtype</sourcexml> from their
                        original location and convert them as is and create duplicate entry of
                            <sourcexml>emph@searchtype="JUDGES"</sourcexml> which will map to
                            <targetxml>doc:metadata/doc:docinfo/doc:legacy-metadata[@metadatasource="lbu-meta"]/
                            meta/metaitem</targetxml> with attributes <targetxml>@name</targetxml>
                        value come from <sourcexml>text/@searchtype</sourcexml> attribute and
                            <targetxml>@value</targetxml> value come from
                            <targetxml>emph</targetxml> element.</li>
                </ul>

                <title>emph/@searchtype="JUDGES"</title>
                <pre xml:space="preserve" class="- topic/pre ">
&lt;text&gt;
    &lt;emph typestyle="bf" searchtype="JUDGES"&gt;S. Cork, W. Warburton, Members&lt;/emph&gt;
&lt;/text&gt;
        
<b class="+ topic/ph hi-d/b ">Becomes</b>
        
&lt;text&gt;
    &lt;emph typestyle="bf"&gt;S. Cork, W. Warburton, Members&lt;/emph&gt;
&lt;/text&gt;

<b class="+ topic/ph hi-d/b ">and</b>

&lt;doc:legacy-metadata metadatasource="lbu-meta"&gt;
    &lt;meta&gt;
        &lt;metaitem name="JUDGES" value="S. Cork, W. Warburton, Members"/&gt;
    &lt;/meta&gt;
&lt;/doc:legacy-metadata&gt;
    </pre>
            </section>
            <section>
                <p>When <sourcexml>emph</sourcexml> is having attribute value
                        <sourcexml>@searchtype="JUDGES"</sourcexml> then conversion should move the
                        <targetxml>text/emph</targetxml> into the previous <targetxml>p</targetxml>
                    element. for more clarification see below example.</p>
                <pre>
&lt;p&gt;
    &lt;text searchtype="CASE-NAME"&gt;
        &lt;emph typestyle="bf"&gt;Indexed as: Blackfalds (Town) v. Stryker&lt;/emph&gt;
    &lt;/text&gt;
    &lt;text searchtype="REPORTER-CITE"&gt;
        &lt;ci:cite searchtype="SUMM-CASE-REF"&gt;
            &lt;ci:case&gt;
                &lt;ci:caseref ID="cref00002734" spanref="cspan00002734"&gt;
                    &lt;ci:reporter value="AJ"/&gt;
                    &lt;ci:edition&gt;
                        &lt;ci:date year="2000"/&gt;
                    &lt;/ci:edition&gt;
                    &lt;ci:refnum num="364"/&gt;
                &lt;/ci:caseref&gt;
            &lt;/ci:case&gt;
            &lt;ci:content&gt;
                &lt;ci:span spanid="cspan00002734"&gt;[2000] A.J. No.
                    364&lt;/ci:span&gt;
            &lt;/ci:content&gt;
        &lt;/ci:cite&gt;
    &lt;/text&gt;
    &lt;text searchtype="COURT-NAME"&gt;Alberta Court of Queen's Bench&lt;/text&gt;
&lt;/p&gt;
&lt;p&gt;
    &lt;text&gt;
        &lt;emph typestyle="bf" searchtype="JUDGES"&gt;Johnstone J.&lt;/emph&gt;
    &lt;/text&gt;
&lt;/p&gt;

<b>Becomes</b>

&lt;pgrp&gt;
    &lt;p&gt;
        &lt;text&gt;
            &lt;emph typestyle="bf"&gt;Indexed as: Blackfalds (Town) v. Stryker&lt;/emph&gt;
        &lt;/text&gt;
        &lt;text&gt;
            &lt;lnci:cite&gt;
                &lt;lnci:case&gt;
                    &lt;lnci:caseref ID="cref00002734"&gt;
                        &lt;lnci:reporter value="AJ"/&gt;
                        &lt;lnci:edition&gt;
                            &lt;lnci:date year="2000"/&gt;
                        &lt;/lnci:edition&gt;
                        &lt;lnci:refnum num="364"/&gt;
                    &lt;/lnci:caseref&gt;
                &lt;/lnci:case&gt;
                &lt;lnci:content&gt;[2000] A.J. No. 364&lt;/lnci:content&gt;
            &lt;/lnci:cite&gt;
        &lt;/text&gt;
        &lt;text&gt;Alberta Court of Queen's Bench&lt;/text&gt;
        &lt;text&gt;
            &lt;emph typestyle="bf"&gt;Johnstone J.&lt;/emph&gt;
        &lt;/text&gt;
    &lt;/p&gt;
    ...
&lt;/pgrp&gt;
</pre>
                <note>
                    <p>Conversion should not create consecutive
                            <targetxml>doc:legacy-metadata/meta</targetxml> elements. When 2 or more
                        consecutive sibling source elements map to
                            <targetxml>doc:legacy-metadata/meta</targetxml>, data should be merged
                        to a single <targetxml>doc:legacy-metadata/meta</targetxml> element unless
                        this would hamper content ordering.</p>
                </note>
            </section>
            <section>
                <title>Changes</title>
                <p>2014-08-19: <ph id="change_20140819_PS">Added rule and example, when
                            <sourcexml>emph</sourcexml> is having attribute value
                            <sourcexml>@searchtype="JUDGES"</sourcexml> then conversion should move
                        the <targetxml>text/emph</targetxml> into the previous
                            <targetxml>p</targetxml> element. Applicable on CA12.</ph></p>
            </section>
        </body>
    </dita:topic>

    <!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
    <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA12-Dictionaries\CA12_CA-Dictionaries_emph-searchtype.dita  -->
    <!--<xsl:message>CA12_CA-Dictionaries_emph-searchtype.xsl requires manual development!</xsl:message>-->

    <xsl:template match="emph[@searchtype[matches(., 'JUDGES')]]" mode = 'meta_judge' priority="10" >
      <!--  Original Target XPath:  doc:metadata/doc:docinfo/doc:legacy-metadata[@metadatasource="lbu-meta"]/meta/metaitem   -->

        <metaitem>
            <xsl:attribute name="name">JUDGES</xsl:attribute>
            <xsl:attribute name="value">
                <xsl:value-of select="."/>
            </xsl:attribute>
        </metaitem>

    </xsl:template>

    <!--<xsl:template match="@searchtype">

        <!-\-  Original Target XPath:  doc:metadata/doc:docinfo/doc:legacy-metadata[@metadatasource="lbu-meta"]/meta/metaitem   -\->
        <doc:metadata>
            <doc:docinfo>
                <doc:legacy-metadata>
                    <meta>
                        <metaitem>
                            <xsl:apply-templates select="@* | node()"/>
                        </metaitem>
                    </meta>
                </doc:legacy-metadata>
            </doc:docinfo>
        </doc:metadata>

    </xsl:template>-->

    <!-- <xsl:template match="emph@searchtype=&#34;JUDGES&#34;">

        <!-\-  Original Target XPath:  doc:metadata/doc:docinfo/doc:legacy-metadata[@metadatasource="lbu-meta"]/meta/metaitem   -\->
        <doc:metadata>
            <doc:docinfo>
                <doc:legacy-metadata>
                    <meta>
                        <metaitem>
                            <xsl:apply-templates select="@* | node()"/>
                        </metaitem>
                    </meta>
                </doc:legacy-metadata>
            </doc:docinfo>
        </doc:metadata>

    </xsl:template>-->

    <!-- <xsl:template match="text/@searchtype">

        <!-\-  Original Target XPath:  @value   -\->
        <xsl:attribute name="value">
            <xsl:apply-templates select="node()"/>
        </xsl:attribute>

    </xsl:template>-->

    <!-- <xsl:template match="emph">

        <!-\-  Original Target XPath:  text/emph   -\->
        <text>
            <emph>
                <xsl:apply-templates select="@* | node()"/>
            </emph>
        </text>

    </xsl:template>-->

    <!--<xsl:template match="@searchtype=&#34;JUDGES&#34;">

        <!-\-  Original Target XPath:  text/emph   -\->
        <text>
            <emph>
                <xsl:apply-templates select="@* | node()"/>
            </emph>
        </text>

    </xsl:template>-->

</xsl:stylesheet>
