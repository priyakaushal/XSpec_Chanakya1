<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/" xmlns:pubinfo="http://www.lexisnexis.com/xmlschemas/content/shared/publication-info/1/" version="2.0" exclude-result-prefixes="dita doc pubinfo">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="aboutpub">
    <title>aboutpub <lnpid>id-CA14-35608</lnpid></title>

    <body>
        <section>
            <p><sourcexml>aboutpub</sourcexml> becomes
                    <targetxml>doc:metadata/pubinfo:pubinfo/disclaimer/bodytext/p/text</targetxml>.</p>
        </section>

        <example>
            <title>Example 1</title>
            <codeblock>
&lt;dig:info&gt;
    &lt;aboutpub&gt;A weekly current awareness service covering recent non-pecuniary damages awarded in
        personal injury cases&lt;/aboutpub&gt;
&lt;/dig:info&gt;
       </codeblock>
            <b>becomes</b>
            <codeblock>
&lt;doc:metadata&gt;
    &lt;pubinfo:pubinfo&gt;
        &lt;disclaimer&gt;
            &lt;bodytext&gt;
                &lt;p&gt;
                    &lt;text&gt;A weekly current awareness service covering recent non-pecuniary damages
                        awarded in personal injury cases&lt;/text&gt;
                &lt;/p&gt;
            &lt;/bodytext&gt;
        &lt;/disclaimer&gt;
    &lt;/pubinfo:pubinfo&gt;
&lt;/doc:metadata&gt;
       </codeblock>
        </example>
        <note><p>Conversion should not create consecutive <targetxml>pubinfo:pubinfo</targetxml>
                elements. When 2 or more consecutive sibling source elements map to
                    <targetxml>pubinfo:pubinfo</targetxml>, data should be merged to a single
                    <targetxml>pubinfo:pubinfo</targetxml> element unless this would hamper content
                ordering.</p></note>
        <section>
            <title>Changes</title>
            <p>2015-02-20: <ph id="change_20150220_PS">Created.</ph></p>
        </section>
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA14-Emerging_Issues\aboutpub.dita  -->
    
    <!-- Vikas Rohilla : Template to match the aboutpub and create the disclaimer/bodytext/p/text    -->
    <xsl:template match="aboutpub">
        <disclaimer>
            <bodytext>
                <p>
                    <text>
                        <xsl:apply-templates select="@* | node()"/>
                    </text>
                </p>
            </bodytext>
        </disclaimer>
    </xsl:template>

</xsl:stylesheet>