<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
    xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/"
    xmlns:pubinfo="http://www.lexisnexis.com/xmlschemas/content/shared/publication-info/1/"
    version="2.0" exclude-result-prefixes="dita">

    <dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="CA15_Rosetta_publength">
        <title>publength <lnpid>id-CA15-35422</lnpid></title>
        <body>
            <p><sourcexml>publength</sourcexml> becomes
                    <targetxml>doc:metadata/pubinfo:pubinfo/pubinfo:publength</targetxml></p>
            <example>
                <title>Source XML</title>
                <codeblock> &lt;jrnl:body&gt; &lt;jrnl:prelim&gt; &lt;bookinfo&gt;
                    &lt;publength&gt;850 words&lt;/publength&gt; &lt;/bookinfo&gt;
                    &lt;/jrnl:prelim&gt; &lt;/jrnl:body&gt; </codeblock>
                <title>Target XML</title>
                <codeblock> &lt;doc:metadata&gt; &lt;pubinfo:pubinfo&gt;
                    &lt;pubinfo:publength&gt;850 words&lt;/pubinfo:publength&gt;
                    &lt;/pubinfo:pubinfo&gt; &lt;/doc:metadata&gt; </codeblock>
            </example>
            <section>
                <title>Changes</title>
                <p>2015-02-17: <ph id="change_20150217_AS">Created.</ph></p>
            </section>
        </body>
    </dita:topic>

    <!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
    <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA15-Journal_Articles\CA15_Rosetta_publength.dita  -->
    <!--	<xsl:message>CA15_Rosetta_publength.xsl requires manual development!</xsl:message> -->

    <xsl:template match="publength">

        <!--  Original Target XPath:  doc:metadata/pubinfo:pubinfo/pubinfo:publength   -->
                <pubinfo:publength>
                    <xsl:value-of select="replace(.,'LENGTH:','','i')"/>
                </pubinfo:publength>
    </xsl:template>

</xsl:stylesheet>
