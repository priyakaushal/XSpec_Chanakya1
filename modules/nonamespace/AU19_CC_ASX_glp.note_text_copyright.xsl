<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
    xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"
    xmlns:glp="http://www.lexis-nexis.com/glp"
    xmlns:pubinfo="http://www.lexisnexis.com/xmlschemas/content/shared/publication-info/1/"
    xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/"
    version="2.0" exclude-result-prefixes="dita glp">

    <dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="glp.note_text_copyright">
        <title>text/copyright <lnpid>id-AU19CC-21810</lnpid></title>
        <body>
            <section>
                <ul>
                    <li> The <sourcexml>glp:note/blockquote/p/text/copyright</sourcexml> becomes
                            <targetxml>doc:metadata/pubinfo:pubinfo/copyright</targetxml>. The
                        contents of <sourcexml>copyright</sourcexml> are moved from the body section
                        of the document into the <targetxml>doc:metadata</targetxml> like the
                        example below: </li>
                </ul>

                <pre>
                        
                   
                   &lt;case:body&gt;
                   &lt;case:content&gt;
                            ...
                        &lt;case:judgements&gt;
                                ...
                        &lt;/case:judgments&gt;
                        &lt;glp:note&gt; &lt;/glp:note&gt;
                        &lt;glp:note&gt;
                            &lt;blockquote&gt;
                                &lt;p&gt;
                                    &lt;text&gt;
                                        &lt;copyright&gt;Published and distributed by Reed International Books
                                            Australia Pty Limited trading as LexisNexis under licence from ASX
                                            Operations Pty Limited ABN 42 004 523 782&lt;/copyright&gt;
                                    &lt;/text&gt;
                                &lt;/p&gt;
                            &lt;/blockquote&gt;
                        &lt;/glp:note&gt;
                    &lt;/case:content&gt;
                  &lt;/case:body&gt;
                   
                   
                   
                                        <b>Becomes</b>
                    
                    
                      &lt;doc:metadata&gt;
                           &lt;pubinfo:pubinfo&gt;
                               &lt;copyright&gt;Published and distributed by Reed International Books Australia Pty Limited
                                   trading as LexisNexis under licence from ASX Operations Pty Limited ABN 42 004 523
                                   782&lt;/copyright&gt;
                           &lt;/pubinfo:pubinfo&gt;
                              
                    </pre>
                <note> An empty <sourcexml>glp:note</sourcexml> should be SUPRESSED and not carried
                    over into the NL output</note>
            </section>
        </body>
    </dita:topic>

    <!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
    <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU19CC_ASX\AU19_CC_ASX_glp.note_text_copyright.dita  -->
    <!--<xsl:message>AU19_CC_ASX_glp.note_text_copyright.xsl requires manual development!</xsl:message>-->

    <xsl:template match="glp:note" mode="metadata_copyright">
        <xsl:apply-templates select="@* | node()"/>
    </xsl:template>

    <xsl:template match="glp:note/blockquote" priority="2">
        <xsl:apply-templates select="@* | node()"/>
    </xsl:template>

    <xsl:template match="glp:note/blockquote/p" priority="2">
        <xsl:apply-templates select="@* | node()"/>
    </xsl:template>

    <xsl:template match="glp:note/blockquote/p/text" priority="2">
        <xsl:apply-templates select="@* | node()"/>
    </xsl:template>

    <xsl:template match="glp:note/blockquote/p/text/copyright">

        <!--  Original Target XPath:  doc:metadata/pubinfo:pubinfo/copyright   -->
            <copyright>
                <xsl:apply-templates select="@* | node()"/>
            </copyright>
        
    </xsl:template>


</xsl:stylesheet>
