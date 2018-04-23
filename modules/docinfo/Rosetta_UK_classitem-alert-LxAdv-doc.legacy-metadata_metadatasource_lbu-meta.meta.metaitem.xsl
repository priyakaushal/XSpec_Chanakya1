<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
    xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo"
    xmlns:classify="http://www.lexisnexis.com/xmlschemas/content/shared/classification/1/"
    exclude-result-prefixes="xs"
    version="2.0">
    <dita:topic id="Rosetta_UK_classitem-alert-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta.meta.metaitem" xmlns:ditaarch="http://dita.oasis-open.org/architecture/2005/">
        <title><sourcexml>classitem[@classscheme="alert:alertReference"]</sourcexml> to
            <targetxml>doc:legacy-metadata[@metadatasource="lbu-meta"]/meta/metaitem</targetxml>
            <lnpid>id-CCCC-10563</lnpid></title>
        <body>
            <section><title>Instructions <i>[common element]</i></title>
                <p><sourcexml>classification/classitem[@classscheme="alert:alertReference"]</sourcexml>
                    becomes
                    <targetxml>doc:legacy-metadata[@metadatasource="lbu-meta"]/meta/metaitem[@name="MODULE-CURRENTNESS-ALERT"</targetxml>].</p>
                <p><sourcexml>classitem/classitem-identifier[classname='ModuleID']/classcode/@normval</sourcexml>
                    attribute becomes <targetxml>metaitem/@value</targetxml>.</p><p>Each instance of <sourcexml>classitem[classitem-identifier/classname='ModuleID']</sourcexml>
                        becomes a new instance of
                        <targetxml>doc:legacy-metadata[@metadatasource="lbu-meta"]</targetxml></p>
            </section>
            <example>
                <title>Source XML</title>
                <codeblock>
<![CDATA[
   <classification classscheme="ln.legal">
    <classitem classscheme="alert:alertReference">
        <meta>
            <metaitem value="human" name="appliedby"/>
        </meta> 
        <classitem-identifier>
            <classname>ModuleID</classname>
            <classcode normval="urn:krm:3492F9DDF95246AEA46EAF84003B949D"/>
        </classitem-identifier>
        <classitem-identifier>
            <classcode normval="urn:topic:C8E210D3DB4244C7A7F0F2A46A05C6DC"/>
        </classitem-identifier>
    </classitem>
</classification>]]>
            </codeblock>
            </example>
            
            <example>
                <title>Target XML</title>
                <codeblock>
<![CDATA[
<doc:docinfo doc-content-country="GB">
           <doc:legacy-metadata metadatasource="lbu-meta">
                        <meta>
                            <metaitem name="MODULE-CURRENTNESS-ALERT" 
                                   value="urn:krm:3492F9DDF95246AEA46EAF84003B949D"/>
                        </meta>
                </doc:legacy-metadata>
       </doc:docinfo>
   
]]>
            </codeblock>
            </example>
            <section>
                <title>Changes</title>
                <p>2017-08-29: <ph id="change_20170829_brt">Source markup changed to
                    classitem[@classscheme="alert:alertReference"].</ph>
                </p>
                <p>2017-08-18: <ph id="change_20170817_brt">Created.</ph>
                </p>
            </section>
        </body>
    </dita:topic>
</xsl:stylesheet>