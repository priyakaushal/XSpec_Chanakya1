<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
    xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo"
    xmlns:cttr="urn:x-lexisnexis:content:citator:sharedservices:1"
    xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/"
    xmlns:source_cttr="http://www.lexis-nexis.com/glp/cttr" 
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"
    xmlns:legisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/legislation-info/1/"
    xmlns:primlawinfo="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-info/1/"
    xmlns:leg="http://www.lexis-nexis.com/glp/leg"
    xmlns:source_case="http://www.lexis-nexis.com/glp/case"
    version="2.0" exclude-result-prefixes="#all">

    <dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Citator_Introduction">
        <title>Introduction <lnpid>id-AU20-22215</lnpid></title>
        <body>
            <p>This document provides instructions for converting Rosetta legislative citator
                content to Lexis Advance legislative citator content for both Australia and New
                Zealand source documents. The conversion instructions were first written for
                Australian content for the AU20 content stream, and modifications were added for
                handling unique New Zealand content that is to be processed using the same content
                stream.</p>
            <p/>
            <p>
                <sourcexml>CITATORDOC</sourcexml> becomes <targetxml>cttr:citator</targetxml>.It's a
                root element for Citator. The source attributes are described below: <pre>
&lt;CITATORDOC&gt;...
&lt;/CITATORDOC&gt;
<b>Becomes</b>
&lt;cttr:citator&gt;...
&lt;/cttr:citator&gt;
</pre>
                <ul>
                    <li>
                        <sourcexml>@signal</sourcexml> becomes <targetxml>@treatment</targetxml>
                        <pre>
&lt;CITATORDOC signal="cautionary"&gt;...
&lt;/CITATORDOC&gt;
<b>Becomes</b>
&lt;cttr:citator treatment="cautionary"&gt;...
&lt;/cttr:citator&gt;
</pre>
                    </li> <li>
                        <sourcexml>/CITATORDOC @citatordoctype="casebase"</sourcexml> becomes
                            <targetxml>doc:legacy-metadata/meta/metaitem
                            @name="citatordoctype"</targetxml> and
                            <targetxml>doc:legacy-metadata/meta/metaitem
                            @value="casebase"</targetxml>
                        <pre>
&lt;CITATORDOC citatordoctype="casebase"&gt;...
&lt;/CITATORDOC&gt;
<b>Becomes</b>
&lt;doc:legacy-metadata&gt;
    &lt;meta&gt;
        &lt;metaitem name="citatordoctype" value="casebase"/&gt;
    &lt;/meta&gt;
&lt;/doc:legacy-metadata&gt;
 
</pre>
                    </li> <li>
                        <sourcexml>/CITATORDOC @daily_pub="false"</sourcexml> is dropped </li> <li>
                        <sourcexml>/CITATORDOC @fullcourt="false"</sourcexml> becomes
                            <targetxml>doc:legacy-metadata/meta/metaitem
                            @name="fullcourt"</targetxml> and
                            <targetxml>doc:legacy-metadata/meta/metaitem @value</targetxml> the
                        value can be 'true' or 'false' based on the source.
                        <pre>
&lt;CITATORDOC fullcourt="false"&gt;...
&lt;/CITATORDOC&gt;
<b>Becomes</b>
&lt;doc:legacy-metadata&gt;
    &lt;meta&gt;
        &lt;metaitem name="fullcourt" value="false"/&gt;
    &lt;/meta&gt;
&lt;/doc:legacy-metadata&gt;
 
</pre>
                    </li> <li>
                        <sourcexml>/CITATORDOC @id="10957"</sourcexml> is dropped because
                            <targetxml>doc:docinfo/dc:metadata/dc:identifier</targetxml> captures
                        its content. </li> <li>
                        <sourcexml>/CITATORDOC @journalarticle="false"</sourcexml> is dropped.
                            <note>Please note that the attribute <sourcexml>CITATORDOC
                                @journalarticle</sourcexml> is dropped in all the scenarios(value
                            ="true" or "false").</note>
                    </li> <li>
                        <sourcexml>/CITATORDOC @monthly_pub="false"</sourcexml> is dropped </li> <li>
                        <sourcexml>/CITATORDOC @notannotated="true"</sourcexml> becomes
                            <targetxml>doc:legacy-metadata/meta/metaitem
                            @name="notannotated"</targetxml> and
                            <targetxml>doc:legacy-metadata/meta/metaitem @value</targetxml> the
                        value can be 'true' or 'false' based on the source.
                        <pre>
&lt;CITATORDOC notannotated="true"&gt;...
&lt;/CITATORDOC&gt;
<b>Becomes</b>
&lt;doc:legacy-metadata&gt;
    &lt;meta&gt;
        &lt;metaitem name="notannotated" value="true"/&gt;
    &lt;/meta&gt;
&lt;/doc:legacy-metadata&gt;
 
</pre>
                    </li> <li>
                        <sourcexml>/CITATORDOC @shortannot="false"</sourcexml> becomes
                            <targetxml>doc:legacy-metadata/meta/metaitem
                            @name="shortannot"</targetxml> and
                            <targetxml>doc:legacy-metadata/meta/metaitem @value</targetxml> the
                        value can be 'true' or 'false' based on the source.
                        <pre>
&lt;CITATORDOC shortannot="false"&gt;...
&lt;/CITATORDOC&gt;
<b>Becomes</b>
&lt;doc:legacy-metadata&gt;
    &lt;meta&gt;
        &lt;metaitem name="shortannot" value="false"/&gt;
    &lt;/meta&gt;
&lt;/doc:legacy-metadata&gt;
 
</pre>
                    </li> <li>
                        <sourcexml>/CITATORDOC @unreported="false"</sourcexml> becomes
                            <targetxml>doc:legacy-metadata/meta/metaitem
                            @name="unreported"</targetxml> and
                            <targetxml>doc:legacy-metadata/meta/metaitem @value</targetxml>the value
                        can be 'true' or 'false' based on the source.
                        <pre>
&lt;CITATORDOC unreported="false"&gt;...
&lt;/CITATORDOC&gt;
<b>Becomes</b>
&lt;doc:legacy-metadata&gt;
    &lt;meta&gt;
        &lt;metaitem name="unreported" value="false"/&gt;
    &lt;/meta&gt;
&lt;/doc:legacy-metadata&gt;
 
</pre>
                    </li> <li>
                        <sourcexml>/CITATORDOC @weekly_pub="false"</sourcexml> is dropped </li>
                    <li>
                        <sourcexml>CITATORDOC/docinfo/docinfo:lbu-meta/docinfo:metaitem
                            @name="under-appeal" @value="true"</sourcexml> becomes
                            <targetxml>doc:docinfo/doc:legacy-metadata/meta/docinfo:metaitem
                            @name="under-appeal" @value="true"]</targetxml>.
                        <pre>

&lt;CITATORDOC&gt;...
    &lt;docinfo&gt;
        &lt;docinfo:lbu-meta&gt;...
            &lt;docinfo:metaitem name="under-appeal" value="true"/&gt;
        &lt;/docinfo:lbu-meta&gt;
    &lt;docinfo&gt;            
&lt;/CITATORDOC&gt;
<b>Becomes</b>

&lt;doc:docinfo&gt;
    &lt;doc:legacy-metadata&gt;
        &lt;meta&gt;
            &lt;metaitem name="under-appeal" value="true"/&gt;
        &lt;/meta&gt;
    &lt;/doc:legacy-metadata&gt;
&lt;doc:docinfo&gt;
 
</pre>
                    </li> </ul>
            </p>

            <pre>
&lt;CITATORDOC&gt;
<b>Becomes</b>
&lt;cttr:citator&gt;
    &lt;cttr:head&gt;...&lt;/cttr:head&gt;
    &lt;cttr:body&gt;...&lt;/cttr:body&gt;
    &lt;doc:metadata&gt;...&lt;/doc:metadata&gt;
&lt;/cttr:citator&gt;
</pre>

            <p>For all documents, the conversion should add a date-timestamp in the format
                YYYYMMDDHHMMSS using
                    <targetxml>doc:legacy-metadata@metadatasource="tracking-timestamp"/meta</targetxml>
                containing
                    <targetxml>meta/metaitem@name="conversion-timestamp"@value="YYYYMMDDHHMMSS"</targetxml>
            </p>
            <p>If optional
                    <sourcexml>docinfo:custom-metafields/docinfo:custom-metafield[@name="lbu-publish-timestamp"]</sourcexml>
                exists, create
                    <targetxml>doc:legacy-metadata[@metadatasource="tracking-timestamp"]</targetxml>
                and add child
                    <targetxml>meta/metaitem[@name="lbu-publish-timestamp"][@value="YYYYMMDDHHMMSS"]</targetxml></p>

            <pre>
 
 &lt;docinfo:custom-metafields&gt;
    &lt;docinfo:custom-metafield name="lbu-publish-timestamp"&gt;YYYYMMDDHHMMSS&lt;/docinfo:custom-metafield&gt;
&lt;/docinfo:custom-metafields&gt;
    
        
<b>Becomes</b>

&lt;doc:legacy-metadata metadatasource="tracking-timestamp"&gt;
    &lt;meta&gt;
        &lt;metaitem name="lbu-publish-timestamp" value="YYYYMMDDHHMMSS"/&gt;
        &lt;metaitem name="conversion-timestamp" value="YYYYMMDDHHMMSS"/&gt;
    &lt;/meta&gt;
&lt;/doc:legacy-metadata&gt;
        
</pre>

            <p>
                <targetxml>cttr:head</targetxml>, <targetxml>cttr:body</targetxml>, and
                    <targetxml>doc:metadata</targetxml> are created as required children of
                    <targetxml>cttr:citator</targetxml>
            </p>

            <section>
                <title>Note:</title>
                <p>Source elements and attributes are italicized and highlighted in BLUE like this:
                        <sourcexml>XML SOURCE</sourcexml></p>
                <p>Target elements and attributes are bold and highlighted in GREEN like this:
                        <targetxml>XML TARGET</targetxml></p>
                <p>COPY SOURCE ATTRIBUTES TO TARGET ATTRIBUTES UNLESS OTHERWISE SPECIFIED.</p>
                <p>Every example is represented like "EXAMPLE" in all the dita's and is coming under
                    <pre> </pre> tag.</p>
            </section>

            <section>
                <title>Attributes ln.type, ln.segname, ln.nsprefix</title>
                <p>These attributes and their values have no meaning in new Lexis and should be
                    dropped from data conversion.</p>
            </section>


            <pre>   
         
            &lt;cttr:annot signal="citation" ln.nsprefix="lnvxe:"&gt;

            
 
</pre>
            <p>
                <b>Dropped attribute and value from conversion output.</b>
            </p>

            <section>
                <title>Changes:</title>

                <p>2016-07-06: <ph id="change_20160706_snb">Added introduction paragraph and updated
                        document title to indicate that New Zealand legislative citator content is
                        also converted using this instruction.</ph></p>
                <p>2016-01-21: <ph id="change_20160121_snb">Clarified text describing mapping for
                            <sourcexml>docinfo:custom-metafields/docinfo:custom-metafield[@name="lbu-publish-timestamp"]</sourcexml>
                        (was previously missing the source element in the description).</ph></p>
                <p>2015-10-16 - MLV: <ph id="change_20151016-1_mlv">Added instructions and example
                        for date-timestamp of conversion and for output from the business unit
                        delivery (optional).</ph> Per request from Business unit.</p>

            </section>

        </body>
    </dita:topic>

    <!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
    <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU20_Legislative_Citator\Citator_Introduction.dita  -->
  <!--  <xsl:variable name="match" select="/CITATORDOC/docinfo/docinfo:doc-id/text()"/>-->
    
    
    <xsl:template match="CITATORDOC">       
        
        <xsl:param name="outputSchemaLoc"
            select="'urn:x-lexisnexis:content:citator:sharedservices:1 sch_cttr.xsd'"/>
        <xsl:param name="match"/>
        <cttr:citator>          
            <xsl:call-template name="generateNSGlobalBindings"/>
            <xsl:attribute name="xsi:schemaLocation" select="$outputSchemaLoc"/>
            <xsl:call-template name="xml_lang"/>
            
           
            <xsl:apply-templates
                select="@* except (@citatordoctype | @id | @fullcourt | @notannotated | @shortannot | @unreported )"/>

            <cttr:head>
                <xsl:variable name="match"/>
                <cttr:citedstatlaw>
                    <xsl:attribute name="iscodified">
                        <xsl:text>false</xsl:text>
                    </xsl:attribute>
                <cttr:legisinfo>
                    
                    <primlawinfo:primlawinfo>
                        <xsl:apply-templates select="docinfo/docinfo:custom-metafields/docinfo:custom-metafield"/>                       
                        
                        <legisinfo:legisinfo>
                            <xsl:apply-templates select="source_cttr:body/leg:info/leg:officialname"/>
                            <xsl:apply-templates select="source_cttr:body/leg:info/note[@notetype='other']"/>
                        </legisinfo:legisinfo>
                        <xsl:apply-templates select="source_cttr:body/leg:info/leg:officialnum"/>
                        <xsl:apply-templates select="source_cttr:body/leg:info/leg:year"/>
                        <xsl:apply-templates select="source_cttr:body/leg:info/leg:dates"/>
                        <xsl:apply-templates select="source_cttr:body/leg:info/classification"/>
                        
                        
                            <legisinfo:legisinfo>
                            <xsl:apply-templates select="source_cttr:body/leg:info"/>
                            <xsl:apply-templates select="source_cttr:body/leg:info/leg:status"/>
 
                            <xsl:apply-templates select="docinfo/docinfo:custom-metafields/docinfo:custom-metafield[@name='lbu-leg-type']" mode="legtype"/>
                        </legisinfo:legisinfo>
                    </primlawinfo:primlawinfo>
                    <xsl:apply-templates select="source_cttr:body/leg:info/leg:juris"/>
                    
                </cttr:legisinfo>      
                  
                    <xsl:if test="contains(lower-case($docinfoidtext),'overview')">                       
                    <xsl:apply-templates select="source_cttr:body/source_cttr:content" mode="overview"/>
                    </xsl:if>
                   
                </cttr:citedstatlaw>
            </cttr:head>
            <xsl:if test="contains(lower-case($docinfoidtext),'overview')">
                <cttr:body>
                    <xsl:apply-templates select="source_cttr:body/leg:info" mode="summarysc"/> 
                </cttr:body>
            </xsl:if>
            <xsl:apply-templates select="source_cttr:body[not(contains(lower-case($docinfoidtext),'overview'))]"/>
            <doc:metadata>
                <xsl:apply-templates select="docinfo"/>
            </doc:metadata>
        </cttr:citator>
    </xsl:template>

    <xsl:template match="CITATORDOC/@signal">
        <xsl:attribute name="treatment">
            <xsl:value-of select="."/>
        </xsl:attribute>
    </xsl:template>


    <xsl:template
        match="CITATORDOC/@daily_pub | CITATORDOC/@journalarticle | CITATORDOC/@monthly_pub | CITATORDOC/@weekly_pub"/>

</xsl:stylesheet>
