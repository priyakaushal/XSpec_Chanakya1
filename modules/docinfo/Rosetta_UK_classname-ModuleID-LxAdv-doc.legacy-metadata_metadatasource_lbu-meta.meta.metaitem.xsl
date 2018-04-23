<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
    xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo"
    xmlns:classify="http://www.lexisnexis.com/xmlschemas/content/shared/classification/1/"
    exclude-result-prefixes="dita docinfo"
    version="2.0">
    <dita:topic xmlns:ditaarch="http://dita.oasis-open.org/architecture/2005/" 
        id="Rosetta_UK_classname-ModuleID-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta.meta.metaitem">
            
            <title><sourcexml>classitem[@classscheme="topic:topicReference"][classitem-identifier/classname='ModuleID']</sourcexml>
                to <targetxml>doc:legacy-metadata[@metadatasource="lbu-meta"]/meta/metaitem</targetxml>
                <lnpid>id-CCCC-10562</lnpid></title>
            <body>
                <section><title>Instructions <i>[common element]</i></title>
                    <note>If <sourcexml>classitem/@searchtype="alert"</sourcexml>, do not use this
                        instruction. Instead, refer to <xref
                            href="Rosetta_UK_classitem-alert-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta.meta.metaitem.dita#Rosetta_UK_classitem-alert-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta.meta.metaitem"
                        /></note>
                    <p><sourcexml>classification/classitem[@classscheme="topic:topicReference"][classitem-identifier/classname='ModuleID']</sourcexml>
                        becomes
                        <targetxml>doc:legacy-metadata[@metadatasource="lbu-meta"]/meta/metaitem[@name="MODULE-PGUID"]</targetxml>.</p>
                    <p><sourcexml>classitem/classitem-identifier[classname='ModuleID']/classcode/@normval</sourcexml> becomes <targetxml>metaitem/@value</targetxml>.</p>
                    <p>Each instance of <sourcexml>classitem[classitem-identifier/classname='ModuleID']</sourcexml>
                        becomes a new instance of
                        <targetxml>doc:legacy-metadata[@metadatasource="lbu-meta"]</targetxml></p>
                </section>
                <example>
                    <title>Source XML</title>
                    <codeblock>
<![CDATA[
        <classification classscheme="ln.legal">
            <classitem classscheme="topic:topicReference">
                <meta>
                    <metaitem name="appliedby" value="human"/>
                </meta>
                <classitem-identifier>
                    <classname>ModuleID</classname>
                    <classcode normval="urn:krm:AAA3433FC2C44A6BBAD6EBE714590B0C"/>
                </classitem-identifier>
                <classitem-identifier>
                    <classcode normval="urn:topic:911AE85C4E764FA9951A6A57E97057EA"/>
                </classitem-identifier>
            </classitem>
           
            <classitem classscheme="topic:topicReference">
                <meta>
                    <metaitem name="appliedby" value="human"/>
                </meta>
                <classitem-identifier>
                    <classname>ModuleID</classname>
                    <classcode normval="urn:krm:1FC1967C83CF467184546753158AED7F"/>
                </classitem-identifier>
                <classitem-identifier>
                    <classcode normval="urn:topic:D339CB126C5544A9B22B54F22E95995A"/>
                </classitem-identifier>
            </classitem>
        </classification>
]]>
            </codeblock>
                </example>
                
                <example>
                    <title>Target XML</title>
                    <codeblock>
<![CDATA[
<doc:docinfo doc-content-country="GB">
            <doc:legacy-metadata metadatasource="lbu-meta">
                <meta>
                    <metaitem name="MODULE-PGUID" value="urn:krm:AAA3433FC2C44A6BBAD6EBE714590B0C"/>
                </meta>
            </doc:legacy-metadata>
            <doc:legacy-metadata metadatasource="lbu-meta">
                <meta>
                    <metaitem name="MODULE-PGUID" value="urn:krm:1FC1967C83CF467184546753158AED7F"/>
                </meta>
            </doc:legacy-metadata>    
       </doc:docinfo>
   
]]>
            </codeblock>
                </example>
                <section>
                    <title>Changes</title>
                    <p>2017-08-17: <ph id="change_20170817_brt">Created.</ph>
                    </p>
                </section>
            </body>
    </dita:topic>
    
  <!--  <xsl:template match="classification[child::classitem[@classscheme='topic:topicReference']/classitem-identifier/classname['ModuleID']]">
     
            <xsl:apply-templates select="@* | node()" mode="metadata"/>
        
    </xsl:template>-->
    
</xsl:stylesheet>