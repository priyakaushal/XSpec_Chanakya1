<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/"  xmlns:dig="http://www.lexis-nexis.com/glp/dig" xmlns:pubinfo="http://www.lexisnexis.com/xmlschemas/content/shared/publication-info/1/" xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/" version="2.0" exclude-result-prefixes="dita dig docinfo">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="pubdate_date">
    <title>pubdate <lnpid>id-CA14-35630</lnpid></title>

    <body>
        <section>
            <p><sourcexml>pubdate</sourcexml> becomes
                    <targetxml>doc:metadata/pubinfo:pubinfo/pubinfo:dates/pubinfo:pubdate[@xml:lang]</targetxml>.</p>
            <p><sourcexml>date</sourcexml> becomes <targetxml>date</targetxml>,
                    <sourcexml>date/@day</sourcexml> becomes <targetxml>date/@day</targetxml>,
                    <sourcexml>date/@month</sourcexml> becomes <targetxml>date/@month</targetxml>,
                    <sourcexml>date/@year</sourcexml> becomes <targetxml>date/@year</targetxml>.</p>
            <p>Generate attribute value for <targetxml>pubinfo:pubdate[@xml:lang]</targetxml>, as follows:<ul>
                    <li>There are only two possible values: <targetxml>"en-CA"</targetxml> or
                            <targetxml>"fr-CA"</targetxml></li>
                    <li>Use the value from <sourcexml>docinfo:doc-lang[@lang]</sourcexml> and append
                        -CA. For example, <sourcexml>docinfo:doc-lang[@lang="fr"]</sourcexml>, then
                            <sourcexml>pubdate</sourcexml> becomes
                            <targetxml>pubinfo:pubdate[@xml:lang="fr-CA"]</targetxml>.</li>
                    <li>If there are two <sourcexml>pubdate</sourcexml>, the first is same language
                        as <sourcexml>docinfo:doc-lang[@lang]</sourcexml> and the second is the
                        other language. For example,
                            <sourcexml>docinfo:doc-lang[@lang="en"]</sourcexml>, then first
                            <sourcexml>pubdate</sourcexml> becomes
                            <targetxml>pubinfo:pubdate[@xml:lang="en-CA"]</targetxml> and second
                            <sourcexml>pubdate</sourcexml> becomes
                            <targetxml>pubinfo:pubdate[@xml:lang="fr-CA"]</targetxml></li>
                </ul><note>The same language rules are present in instructions for
                        <sourcexml>issue</sourcexml>. Maintain input sequence when there are
                    multiple <sourcexml>pubdate</sourcexml> and
                <sourcexml>issue</sourcexml>.</note></p>
        </section>

        <example>
            <title>Example 1</title>
            <codeblock>

&lt;pubdate&gt;
    &lt;date month="02" day="15" year="2012"&gt;February 15, 2012&lt;/date&gt;
&lt;/pubdate&gt;
...
&lt;pubdate&gt;
    &lt;date month="02" day="15" year="2012"&gt;15 février 2012&lt;/date&gt;
&lt;/pubdate&gt;

&lt;!-- language value is derived fron metadata --&gt;
&lt;docinfo&gt;
    &lt;docinfo:doc-lang lang="en"/&gt;
&lt;/docinfo&gt;
       </codeblock>
            <b>becomes</b>
            <codeblock>

&lt;doc:metadata&gt;
    &lt;pubinfo:pubinfo&gt;
        ...
        &lt;pubinfo:dates&gt;
            &lt;pubinfo:pubdate xml:lang="en-CA"&gt;
                &lt;date month="02" day="15" year="2012"&gt;February 15, 2012&lt;/date&gt;
            &lt;/pubinfo:pubdate&gt;
        &lt;/pubinfo:dates&gt;
        ...
        &lt;pubinfo:dates&gt;
            &lt;pubinfo:pubdate xml:lang="fr-CA"&gt;
                &lt;date month="02" day="15" year="2012"&gt;15 février 2012&lt;/date&gt;
            &lt;/pubinfo:pubdate&gt;
        &lt;/pubinfo:dates&gt;
        ...
    &lt;/pubinfo:pubinfo&gt;
&lt;/doc:metadata&gt;
       </codeblock>
        </example>
        <note>Conversion should not create consecutive <targetxml>pubinfo:pubinfo</targetxml>
            elements. When 2 or more consecutive sibling source elements map to
                <targetxml>pubinfo:pubinfo</targetxml>, data should be merged to a single
                <targetxml>pubinfo:pubinfo</targetxml> element unless this would hamper content
            ordering.</note>
        <section>
            <title>Changes</title>
            <p>2015-09-15: <ph id="change_20150915_jm">Added rules to generate language attribute
                        <targetxml>@xml:lang</targetxml>. RFA 135.</ph></p>
            <p>2015-02-20: <ph id="change_20150220_PS">Created.</ph></p>
        </section>
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA14-Emerging_Issues\pubdate_date.dita  -->
    
    
    <!-- Vikas Rohilla : Template to match the pubdate nad creates the pubinfo:dates/pubinfo:pubdate -->
    <xsl:template match="pubdate">		
        <pubinfo:dates>
            <pubinfo:pubdate>
                <xsl:attribute name="xml:lang">
                    <xsl:value-of
                        select="concat(parent::dig:info/parent::dig:collection/parent::dig:body/preceding-sibling::docinfo/docinfo:doc-lang/@lang, '-', parent::dig:info/parent::dig:collection/parent::dig:body/preceding-sibling::docinfo/docinfo:doc-country/@iso-cc)"/>
                </xsl:attribute>
                <xsl:apply-templates select="@* | node()"/>
            </pubinfo:pubdate>
        </pubinfo:dates>
    </xsl:template>
    
    <!-- Vikas Rohilla : Template to match the pubdate/date nad creates the date -->
    <xsl:template match="pubdate/date">
        <xsl:element name="date">
            <xsl:apply-templates select="node()|@*"/>
        </xsl:element>
    </xsl:template>
    
    <!-- Vikas Rohilla : Template to match the pubdate/date/@* and copy the attributes -->
    <xsl:template match="pubdate/date/@*">
        <xsl:copy-of select="."/>
    </xsl:template>

</xsl:stylesheet>