<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
    xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:lnf="urn:x-lexisnexis:conversion:global:functions:1"
    xmlns:pubinfo="http://www.lexisnexis.com/xmlschemas/content/shared/publication-info/1/"
    version="2.0" exclude-result-prefixes="dita lnf xs">

    <dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="CA15_Rosetta_publication">
        <title>publication <lnpid>id-CA15-35423</lnpid></title>

        <body>
            <p><sourcexml>publication</sourcexml> becomes
                    <targetxml>doc:metadata/pubinfo:pubinfo/pubinfo:publicationname</targetxml>.</p>
            <example>
                <title>Source XML</title>
                <codeblock> &lt;jrnl:info&gt; &lt;publication&gt;Les Cahiers de
                    droit&lt;/publication&gt; &lt;/jrnl:info&gt; </codeblock>
                <title>Target XML</title>
                <codeblock> &lt;doc:metadata&gt; &lt;pubinfo:pubinfo&gt;
                    &lt;pubinfo:publicationname&gt;Les Cahiers de
                    droit&lt;/pubinfo:publicationname&gt; &lt;/pubinfo:pubinfo&gt;
                    &lt;/doc:metadata&gt; </codeblock>
            </example>
            <note>If <sourcexml>publication</sourcexml> contains <sourcexml>nl</sourcexml> in text,
                replace <sourcexml>nl</sourcexml> with space in target</note>
            <example>
                <title>SOURCE XML</title>
                <codeblock> &lt;publication&gt;McGill Health Law Publication / Publication en droit
                    de la&lt;nl/&gt;santé de McGill&lt;/publication&gt; </codeblock>
                <title>TARGET XML</title>
                <codeblock> &lt;pubinfo:publicationname&gt;McGill Health Law Publication /
                    Publication en droit de la santé de McGill&lt;/pubinfo:publicationname&gt;
                </codeblock>
            </example>
            <section>
                <title>Changes</title>
                <p>2015-06-08: <ph id="change_20150608_AS">Replace <sourcexml>nl</sourcexml> with
                        space. Db issue #70.</ph></p>
                <p>2015-02-17: <ph id="change_20150217_AS">Created.</ph></p>
            </section>
        </body>
    </dita:topic>

    <!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
    <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA15-Journal_Articles\CA15_Rosetta_publication.dita  -->
    <!--<xsl:message>CA15_Rosetta_publication.xsl requires manual development!</xsl:message> -->

    <xsl:template match="publication">

      
        <xsl:param name="publicationStringsToRemove" as="xs:string*" select="('SOURCE/SOURCE:','SOURCE:')"/>
               <pubinfo:publicationname>
                   
                  <xsl:variable name="publicationTxt" select="text()[1]"/>
                   <xsl:sequence select=" lnf:removeSequenceOfStrings( string-join($publicationTxt , '' ) , $publicationStringsToRemove , false() ) "/>
                   
                 <xsl:apply-templates select="node() except text()[1]"/>
               </pubinfo:publicationname>
                    
    </xsl:template>
    <xsl:template match="publication/nl">
        <xsl:text> </xsl:text>
    </xsl:template>

</xsl:stylesheet>