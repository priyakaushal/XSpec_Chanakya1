<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" 
    xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/"
    xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/"
    exclude-result-prefixes="xs docinfo"
    version="2.0">
    
    <topic id="Rosetta_remotelink-to-LexisAdvance_ref.lnlink"
        xmlns="http://dita.oasis-open.org/architecture/2005/">
        <title><sourcexml>remotelink</sourcexml> to <targetxml>ref:lnlink (Active documents)</targetxml>
            <lnpid>id-CCCC-10561</lnpid></title>
        <body>
            <section>
                <title>Instructions <i>[common element]</i></title>
                <note>This topic applies to <sourcexml>remotelink for UK active documents, where
                    @service='CHECKLIST' | 'PROCESSFLOW' | 'DOCBUILDER' | 'CALCULATOR'</sourcexml>. For links
                    to other document types, refer to <xref
                        href="Rosetta_remotelink-LxAdv-ref.crossreference.dita#Rosetta_remotelink-to-LexisAdvance_ref.crossreference"
                    />. Also note that the attribute <sourcexml>remotelink/@status</sourcexml> is always
                    suppressed, it is never output to the target document.</note>
                <p>
                    remotelink[@service='CHECKLIST' | 'PROCESSFLOW' | 'DOCBUILDER' | 'CALCULATOR'] becomes
                    <targetxml>ref:lnlink[@service='CHECKLIST' | 'PROCESSFLOW' | 'DOCBUILDER' |
                        'CALCULATOR']</targetxml> respectively. The attribute value is retained in @service in
                    the target.<ul>
                        <li>
                            <p> Create <targetxml>ref:lnlink/ref:locator/ref:locator-key</targetxml> with
                                the following children: <ul>
                                    <li><targetxml>ref:key-name/@name</targetxml> has the value
                                        "DOC-ID".</li>
                                    <li><targetxml>key-value/@value</targetxml> will be the value of <sourcexml>remotelink/@refpt</sourcexml>.</li>
                                </ul>
                            </p>
                        </li>
                        <li>The text of <sourcexml>remotelink</sourcexml> becomes <targetxml>ref:lnlink/ref:marker</targetxml></li>
                    </ul>
                </p>
                
            </section>
            <example>
                <title>Source XML</title>
                <codeblock>
                    <![CDATA[
<remotelink refpt="urn:editdocauto:6DCF281E-514F-4F58-83EE-84B442B511" 
    service="DOCBUILDER">Link to docbuilder doc</remotelink>

]]>
                </codeblock>
            </example>
            <example>
                <title>Target XML</title>
                <codeblock>
                    <![CDATA[                              
<ref:lnlink service="DOCBUILDER">
    <ref:marker>Link to docbuilder doc</ref:marker>
    <ref:locator>
        <ref:locator-key>
            <ref:key-name name=""DOC-ID"/> 
            <ref:key-value value="urn:editdocauto:6DCF281E-514F-4F58-83EE-84B442B511"/> 
        </ref:locator-key>
    </ref:locator>
</ref:lnlink>
]]>
                </codeblock>
            </example>
            
            <section>
                <title>Changes</title>
                <p>2017-08-11: <ph id="change_20170811_brt">Created.</ph>
                </p>
                
            </section>
        </body>
    </topic>
    
    <xsl:template
        match="remotelink[@service] [@service = ('CHECKLIST','PROCESSFLOW','DOCBUILDER','CALCULATOR')]" name="activeDocsRemotelink" priority="2">
        <ref:lnlink>
            <xsl:attribute name="service">
                <xsl:value-of select="@service"/>
            </xsl:attribute>
            <ref:marker>
                <xsl:value-of select="."/>
            </ref:marker>
            <ref:locator>
                <ref:locator-key>
                    <ref:key-name>
                        <xsl:attribute name="name">
                            <xsl:text>DOC-ID</xsl:text>
                        </xsl:attribute>
                    </ref:key-name>
                    <ref:key-value>
                        <xsl:attribute name="value">
                            <!-- BRT 12/13/17 added choice the fetch the dpsi if present -->
                            <xsl:choose>
                                <xsl:when test="@dpsi !=''">
                                    <xsl:value-of select="concat(@dpsi, '-', @refpt)"/>
                                </xsl:when>
                                <xsl:otherwise><xsl:value-of select="@refpt"/></xsl:otherwise>
                            </xsl:choose>
                        </xsl:attribute>
                    </ref:key-value>
                </ref:locator-key>
            </ref:locator>
        </ref:lnlink>
    </xsl:template>
    
    <!-- WPK be aware of this related file in terms of priorities and matching.
    /svn/dataArch/XSLT/ContentArch/Rosetta-to-LA/modules/docinfo/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.xsl
    -->
        
    <xsl:template match="remotelink[@service='DOCBUILDER'][parent::docinfo:assoc-links or parent::docinfo:assoc-links-grp][$streamID='UK14']" priority="10">
        <doc:related-content-item>
            <xsl:if test="parent::docinfo:assoc-links[@assoc-content='external-content-location']">
                <xsl:attribute name="content-type">external-content-location</xsl:attribute>
            </xsl:if>
            <doc:related-content-link>
                <xsl:call-template name="activeDocsRemotelink"/>
            </doc:related-content-link>
        </doc:related-content-item>
    </xsl:template>
    
</xsl:stylesheet>