<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
    xmlns:lnf="urn:x-lexisnexis:conversion:global:functions:1"
    xmlns:nitf="http://iptc.org/std/NITF/2006-10-18/"
    xmlns:ci="http://www.lexis-nexis.com/ci"
    xmlns:person="http://www.lexisnexis.com/xmlschemas/content/shared/person/1/" version="2.0"
    exclude-result-prefixes="dita lnf xs ci">

    <dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="CA15_Rosetta_contrib">
        <title>contrib <lnpid>id-CA15-35425</lnpid></title>
        <body>
            <p><sourcexml>contrib[@contribtype]</sourcexml> becomes
                    <targetxml>nitf:body.head/nitf:byline/person:contributor[@contributor-type]/person:person</targetxml>.
                            <ul><li><sourcexml>bio/p/text</sourcexml> becomes
                            <targetxml>person:name.text</targetxml></li>
                    <li>If <sourcexml>text</sourcexml> contains <sourcexml>nl</sourcexml>, replace
                            <sourcexml>nl</sourcexml> with space for target</li></ul>
            </p>
            <!-- <p><u>Special rules for <sourcexml>text/fnr</sourcexml>:</u></p>
        <p>Applies only to xpath <sourcexml>contrib/bio/p/text/fnr</sourcexml>. <i>Summary of action:</i>
            footnote-style markup is not carried through to target. Instead,
            <sourcexml>footnote</sourcexml> content is identified and mapped to
            <targetxml>person.bio.text</targetxml>. Rules as follow:<ul>
                <li>Use value of <sourcexml>fnr[@fntoken]</sourcexml> to find corresponding
                    <sourcexml>footnote[@fntoken]</sourcexml></li>
                <li>Content of <sourcexml>footnotegrp/footnote/fnbody</sourcexml> becomes content of
                    <targetxml>person:contributor/person:person/person:bio/person:bio.text/bodytext</targetxml></li>
                <li>Then suppress <sourcexml>fnr</sourcexml> and suppress
                    <sourcexml>footnotegroup</sourcexml> and its descendants.</li>
            </ul></p>
        -->
            <example>
                <title>Source XML</title>
                <codeblock> &lt;contrib contribtype="AUTHOR" searchtype="AUTHOR"&gt; &lt;bio&gt;
                    &lt;p&gt; &lt;text&gt;By&lt;nl/&gt;Dallas G. Mack&lt;/text&gt; &lt;/p&gt;
                    &lt;/bio&gt; &lt;/contrib&gt; </codeblock>
                <title>Target XML</title>
                <codeblock> &lt;nitf:body&gt; &lt;nitf:body.head&gt; &lt;nitf:byline&gt;
                    &lt;person:contributor contributor-type="AUTHOR"&gt; &lt;person:person&gt;
                    &lt;person:name.text&gt;By Dallas G. Mack&lt;/person:name.text&gt;
                    &lt;/person:person&gt; &lt;/person:contributor&gt; &lt;/nitf:byline&gt;
                    &lt;/nitf:body.head&gt; &lt;/nitf:body&gt; </codeblock>
            </example>

            <example>
                <title>Source XML with <sourcexml>text/fnr</sourcexml></title>
                <codeblock> &lt;jrnl:prelim&gt; ... &lt;bookinfo&gt; &lt;contrib
                    contribtype="AUTHOR" searchtype="AUTHOR"&gt; &lt;bio&gt; &lt;p&gt;
                    &lt;text&gt;Sylvette Guillemard&lt;fnr fnrtoken="fnr-338-star"
                    fntoken="fn-338-star" &gt;*&lt;/fnr&gt;&lt;/text&gt; &lt;/p&gt; &lt;/bio&gt;
                    &lt;/contrib&gt; &lt;/bookinfo&gt; ... &lt;/jrnl:prelim&gt; </codeblock>
                <title>Target XML</title>
                <codeblock> &lt;nitf:byline&gt; &lt;person:contributor contributor-type="author"&gt;
                    &lt;person:person&gt; &lt;person:name.text&gt;Sylvette Guillemard
                    &lt;footnote-ref anchoridref="fnr-338-star"&gt;&lt;ref:anchor id="fnr-338-star"
                    /&gt;&lt;label&gt;*&lt;/label&gt;&lt;/footnote-ref&gt; &lt;/person:name.text&gt;
                    &lt;/person:person&gt; &lt;/person:contributor&gt; &lt;/nitf:byline&gt;
                </codeblock>
            </example>
            <section>
                <title>Changes</title>
                <p>2015-02-17: <ph id="change_20150212_AS">Created</ph></p>
                <p>2015-05-27: <ph id="change_20150527_AS">Modified instructions for
                            <sourcexml>contrib/fnr</sourcexml>... Db #issue 48 and 54.</ph></p>
            </section>
        </body>
    </dita:topic>

    <!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
    <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA15-Journal_Articles\CA15_Rosetta__contrib.dita  -->
    <!--<xsl:message>CA15_Rosetta__contrib.xsl requires manual development!</xsl:message> -->

    <xsl:template match="contrib[@contribtype]">

        
        <!--  Original Target XPath:  nitf:body.head/nitf:byline/person:contributor[@contributor-type]/person:person   -->
        <nitf:byline>
            <person:contributor>
                <xsl:attribute name="contributor-type">
                    <xsl:value-of select="./@contribtype"/>
                </xsl:attribute>
                <person:person>
                    <person:name.text>
                        <xsl:apply-templates select="bio/p/text" mode="contrib"/>
                    </person:name.text>
                </person:person>
            </person:contributor>
        </nitf:byline>
    </xsl:template>

    <xsl:template match="bio/p/text" mode="contrib">
        
        <xsl:param name="contribStringsToRemove" as="xs:string*"
            select="('AUTHOR/AUTEUR:', 'AUTHOR/AUTEURE:', 'AUTHORS/AUTEURES:', 'AUTHORS/AUTEURS:', 'AUTEUR/AUTHOR:', 'AUTEURE/AUTHOR:', 'AUTEURES/AUTHORS:', 'AUTEURS/AUTHORS:', 'AUTEURS/AUTHOR:', 'REVIEW/CRITIQUE:', 'REVIEW/REVUE:', 'REVIEW/CHRONIQUE:', 'CHRONIQUE/REVIEW:', 'CHRONIQUE/REVIEWED:', 'CRITIQUE/REVIEW:','AUTHOR:', 'AUTEUR:','AUTHORS:','REVIEW:')"/>
        
        <xsl:variable name="OutputText" select="text()[1]"/>
        <xsl:sequence select=" lnf:removeSequenceOfStrings( string-join( $OutputText , '') , $contribStringsToRemove , false() ) "/>
        <xsl:apply-templates select="@*|node() except text()[1]"/>            
       
        
    </xsl:template>

    <xsl:template match="bio/p/text/ci:cite">
    <!-- suppressed-->
    </xsl:template>
    <xsl:template match="bio/p/text/nl">
        <xsl:text> </xsl:text>
    </xsl:template>
</xsl:stylesheet>
