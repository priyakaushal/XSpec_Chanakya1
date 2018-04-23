<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet	version="2.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:dita="http://dita.oasis-open.org/architecture/2005/"   
    xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo"
    xmlns:leg="http://www.lexis-nexis.com/glp/leg"
    xmlns:classify="http://www.lexisnexis.com/xmlschemas/content/shared/classification/1/"
    xmlns:dc="http://purl.org/dc/elements/1.1/"
    xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/"
    xmlns:lnmeta="http://www.lexisnexis.com/xmlschemas/content/shared/lexisnexis-metadata/1/"
    xmlns:location="http://www.lexisnexis.com/xmlschemas/content/shared/location/1/"
    xmlns:jurisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/jurisdiction-info/1/"
    exclude-result-prefixes="dita docinfo leg">
    <dita:topic
        id="Rosetta_UK_docinfo.custom-metafields-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta.meta.metaitem"
        xmlns:ditaarch="http://dita.oasis-open.org/architecture/2005/">
        <title><sourcexml>docinfo:custom-metafields</sourcexml> to
            <targetxml>doc:legacy-metadata[@metadatasource="lbu-meta"]/meta/metaitem</targetxml>
            <lnpid>id-CCCC-10485</lnpid></title>
        <body>
            <section><title>Instructions <i>[common element]</i></title>
                <p><sourcexml>docinfo:custom-metafields/docinfo:custom-metafield</sourcexml> becomes
                    <targetxml>doc:legacy-metadata[@metadatasource="lbu-meta"]/meta/metaitem/@value</targetxml>.
                    The <sourcexml>docinfo:custom-metafield/@name</sourcexml> or
                    <sourcexml>docinfo:custom-metafield/@searchtype</sourcexml> attribute becomes
                    <targetxml>metaitem/@name</targetxml>, which ever is present. If
                    <sourcexml>docinfo:custom-metafield/@name</sourcexml> and
                    <sourcexml>docinfo:custom-metafield/@searchtype</sourcexml> are both present,
                    <sourcexml>docinfo:custom-metafield/@searchtype</sourcexml> is dropped and
                    <sourcexml>docinfo:custom-metafield/@name</sourcexml> becomes
                    <targetxml>metaitem/@name</targetxml>.</p>
                <p>If <sourcexml>docinfo:custom-metafield</sourcexml> has no content, then the
                    <targetxml>metaitem/@value</targetxml> attribute is set to an empty string.</p>
                <note>The <targetxml>doc:legacy-metadata[@metadatasource="lbu-meta"]/meta</targetxml>
                    container will only be created once for all its child mappings to
                    <targetxml>metaitem</targetxml>. This includes values mapped from elsewhere in
                    the same source file.</note>
            </section>
            <example>
                <title>Source XML</title>
                <codeblock>
                    <![CDATA[
<docinfo:custom-metafields>
    <docinfo:custom-metafield name="importance-rating">0</docinfo:custom-metafield>
    <docinfo:custom-metafield name="date"/>
    <docinfo:custom-metafield searchtype="JURIS-CLASSIFY">England and Wales</docinfo:custom-metafield>
</docinfo:custom-metafields>
]]>
                </codeblock>
            </example>
            
            <example>
                <title>Target XML</title>
                <codeblock>
                    <![CDATA[
<doc:legacy-metadata metadatasource="lbu-meta">
    <meta>
        <metaitem name="lbu-sourcename" value="Journal"/>
        <metaitem name="partitionnum" value="CITE1"/>
        ...
        <metaitem name="importance-rating" value="0"/>
        <metaitem name="date" value=""/>
        <metaitem name="JURIS-CLASSIFY" value="England and Wales"/>        
        ...
    </meta>
</doc:legacy-metadata>
]]>
                </codeblock>
            </example>
            <note><p><b>For UK Cases:</b></p>
                <p>If the value of
                    <sourcexml>docinfo:custom-metafields/docinfo:custom-metafield/@name="jurisdiction"</sourcexml>
                    is "European" then conversion needs also map it with
                    <targetxml>jurisinfo:courtinfo/jurisinfo:jurisdiction/jurisinfo:system.</targetxml>
                    and <targetxml>dc:metadata/dc:coverage/location:region</targetxml> with
                    <targetxml>location:region</targetxml>
                    <targetxml>@regioncode='EU'</targetxml> and value 'Europe'</p>
            </note>
            <example>
                <title>Source XML</title>
                <codeblock>
                    <![CDATA[
<docinfo:custom-metafields>
....
        <docinfo:custom-metafield name="jurisdiction">European</docinfo:custom-metafield>
....
</docinfo:custom-metafields>                
]]>
                </codeblock>
            </example>
            <example>
                <title>Target XML</title>
                <codeblock>
                    <![CDATA[
<jurisinfo:jurisdiction>
    <jurisinfo:system>European</jurisinfo:system>
</jurisinfo:jurisdiction>

<dc:metadata>
    <dc:coverage>
        <location:region regioncode="EU">Europe</location:region>
    </dc:coverage>
</dc:metadata>

<doc:legacy-metadata metadatasource="lbu-meta">
    <meta>
....
        <metaitem name="jurisdiction" value="European"/>      
....
    </meta>
</doc:legacy-metadata>
]]>
                </codeblock>
            </example>
            <section>
                <note>These are special rules for UK06 and UK07 streams. The conversions described here
                    are <u>in addition to</u> the conversions described in <xref
                        href="Rosetta_docinfo.lbu-meta-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta-scheme.dita"
                        >"<sourcexml>docinfo:lbu-meta</sourcexml> to
                        <targetxml>doc:legacy-metadata[@metadatasource="lbu-meta"]</targetxml>
                        (id-CCCC-10300)"</xref>. Following rules are to identify the first and last
                    document of an Act. The instances are identified through the
                    <sourcexml>@name</sourcexml> attribute in
                    <sourcexml>docinfo:custom-metafield</sourcexml>. The items may not be present in
                    every stream. If present, the rules below apply.<p>Source: <ul>
                        <li>If
                            <sourcexml>docinfo:custom-metafields/docinfo:custom-metafield[@name="is-first-document-in-enactment"]</sourcexml>
                            and #PCDATA as <sourcexml>"true | false"</sourcexml> then within
                            <targetxml>doc:metadata/doc:docinfo</targetxml> create
                            <targetxml>classify:classification[@classscheme="actDocumentOrder"]/classify:classitem</targetxml>.
                            The <targetxml>@classscheme</targetxml> value is hard coded. <ul>
                                <li> Create
                                    <targetxml>classify:classitem-identifier/classify:classcode[@normval]</targetxml>.
                                    The <targetxml>@normval</targetxml> value is taken from #PCDATA
                                    source. i.e. <sourcexml>true | false</sourcexml>
                                </li>
                                <li> Create
                                    <targetxml>classify:classitem-identifier/classify:classname</targetxml>.
                                    The value will be <targetxml>firstLegisItem</targetxml> which is
                                    hard coded. Also,</li>
                                <li> Create
                                    <targetxml>doc:hier/proc:processinginfo[@process="LAToCBuilder"]/proc:param[@name="firstLegisItem"
                                        @value="true | false"]</targetxml></li>
                            </ul></li>
                    </ul><ul>
                        <li>If
                            <sourcexml>docinfo:custom-metafields/docinfo:custom-metafield[@name="is-last-document-in-enactment"]</sourcexml>
                            and #PCDATA as <sourcexml>"true | false"</sourcexml> then within
                            <targetxml>doc:metadata/doc:docinfo</targetxml> and create
                            <targetxml>classify:classification[@classscheme="actDocumentOrder"]/classify:classitem</targetxml>.
                            The <targetxml>@classscheme</targetxml> value is hard coded. <ul>
                                <li> Create
                                    <targetxml>classify:classitem-identifier/classify:classcode[@normval]</targetxml>.
                                    The <targetxml>@normval</targetxml> value is taken from source
                                    <sourcexml>true | false</sourcexml>
                                </li>
                                <li> Create
                                    <targetxml>classify:classitem-identifier/classify:classname</targetxml>.
                                    The value will be <targetxml>lastLegisItem</targetxml> which is
                                    hard coded.</li>
                                <li> Create
                                    <targetxml>doc:hier/proc:processinginfo[@process="LAToCBuilder"]/proc:param[@name="lastLegisItem"
                                        @value="true | false"]</targetxml></li>
                            </ul></li>
                    </ul></p></note>
            </section>
            <example>
                <title>Source XML</title>
                <codeblock>
                    <![CDATA[
<docinfo>
    <docinfo:custom-metafields>
        <docinfo:custom-metafield name="is-first-document-in-enactment">true</docinfo:custom-metafield>
        
        <docinfo:custom-metafield name="is-last-document-in-enactment">true</docinfo:custom-metafield>
    </docinfo:custom-metafields>
</docinfo>
]]>
                </codeblock>
            </example>
            
            <example>
                <title>Target XML</title>
                <codeblock>
                    <![CDATA[<doc:metadata>
    <doc:docinfo>
        <classify:classification classscheme="actDocumentOrder">
            <classify:classitem>
                <classify:classitem-identifier>
                    <classify:classcode normval="true"/>
                    <classify:classname>firstLegisItem</classify:classname>
                </classify:classitem-identifier>
            </classify:classitem>
            ...
        </classify:classification>
        ...
    </doc:docinfo>
</doc:metadata>

<!---- OR----->

<doc:metadata>
    <doc:docinfo>
        <classify:classification classscheme="actDocumentOrder">
            
            <classify:classitem>
                <classify:classitem-identifier>
                    <classify:classcode normval="true"/>
                    <classify:classname>lastLegisItem</classify:classname>
                </classify:classitem-identifier>
            </classify:classitem>
        </classify:classification>
    </doc:docinfo>
</doc:metadata>
]]>
                    <b>And Create</b>
                    
                    &lt;doc:hier>
                    
                    &lt;proc:processinginfo process="LAToCBuilder">
                    
                    &lt;proc:param name="firstLegisItem" value="true"/>
                    
                    &lt;/proc:processinginfo>
                    
                    &lt;!-- ... -->
                    
                    &lt;/doc:hier>
                    
                    &lt;!----- OR ----->
                    
                    &lt;doc:hier>
                    
                    &lt;proc:processinginfo process="LAToCBuilder">
                    
                    &lt;proc:param name="lastLegisItem" value="true"/>
                    
                    &lt;/proc:processinginfo>
                    
                    &lt;!-- ... -->
                    
                    &lt;/doc:hier>	</codeblock>
            </example>
            <section>
                <title>Changes</title>
                <p>2013-01-09: <ph id="change_20130109_rj">Created.</ph>
                </p>
                <p>2013-01-25: <ph id="change_20130125_1_jg">Added instruction to handle
                    <sourcexml>docinfo:custom-metafield/@searchtype</sourcexml> attribute, and
                    provided an example.</ph>
                </p>
                <p>2013-01-25: <ph id="change_20130125_2_jg">Added instruction to handle the scenario
                    when <sourcexml>docinfo:custom-metafield</sourcexml> content is empty, and
                    provided an example.</ph>
                </p>
                <p>2013-11-20: <ph id="change_20131120_SSX">Added instruction to handle
                    <sourcexml>docinfo:custom-metafields/docinfo:custom-metafield/@name="jurisdiction"</sourcexml>
                    is "European" Webteam # 239816 </ph>
                </p>
                <p>2017-01-04-: <ph id="change_20170104_AS">Updated
                    <sourcexml>docinfo:custom-metafield"</sourcexml> for
                    "is-first-document-in-enactment" or "is-last-document-in-enactment". VSTS
                    #162173</ph></p>
                <p>2017-01-12-: <ph id="change_20170112_AS">Updated
                    <sourcexml>docinfo:custom-metafield"</sourcexml> for
                    "is-first-document-in-enactment" or "is-last-document-in-enactment". VSTS
                    #162173</ph></p>
            </section>
        </body>
    </dita:topic>
    
    <xsl:template match="docinfo:custom-metafields">
        <xsl:apply-templates select="docinfo:custom-metafield" mode="legacyMetadata"/>
    </xsl:template>
    
    <!-- Awantika: For AU20 we need not to process the metafields as they are being mapped in head section -->
    <xsl:template match="docinfo:custom-metafield" mode="legacyMetadata">
       <xsl:choose>
           <xsl:when test="$streamID='AU20'"/>
           <xsl:otherwise>
               <metaitem xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
                   <xsl:attribute name="name">
                       <xsl:choose>
                           <xsl:when test="@name"><xsl:value-of select="@name"/></xsl:when>
                           <xsl:otherwise><xsl:value-of select="@searchtype"/></xsl:otherwise>   
                       </xsl:choose>
                   </xsl:attribute>
                   <xsl:attribute name="value">
                       <!-- JD: changed from "." to "normalize-space(.)", to change output like
            		<metaitem name="COURT-CLASSIFY" value="Queens Bench&#xA;&#x9;&#x9;&#x9;&#x9;Division"/>
            		to
            		<metaitem name="COURT-CLASSIFY" value="Queens Bench Division"/>
            		-->
                       <xsl:value-of select="normalize-space(.)"/>
                   </xsl:attribute>
               </metaitem>
           </xsl:otherwise>
       </xsl:choose>
      
        
    </xsl:template>
    
    <xsl:template match="docinfo:custom-metafields/docinfo:custom-metafield[@name='jurisdiction']" mode="metadata">
        <xsl:if test=".='European'">
            <dc:coverage>
                <location:region regioncode="EU">Europe</location:region>
            </dc:coverage>
        </xsl:if>
    </xsl:template>
    
    <xsl:template match="docinfo:custom-metafields/docinfo:custom-metafield[@name='jurisdiction'][$streamID=('UK01' , 'UK02' , 'UK03', 'UK04')]" mode="jurisdiction">
        <xsl:if test=".='European'">
            <jurisinfo:jurisdiction>
                <jurisinfo:system>European</jurisinfo:system>
            </jurisinfo:jurisdiction>
        </xsl:if>
    </xsl:template>

</xsl:stylesheet>   
