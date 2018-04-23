<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
    xmlns:classify="http://www.lexisnexis.com/xmlschemas/content/shared/classification/1/" 
    xmlns:topic="urn:x-lexisnexis:content:topic:global:1"     
    xmlns:guid="urn:x-lexisnexis:content:guid:global:1" 
    xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"
	xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl"
	version="2.0"
	exclude-result-prefixes="xd">
	
	<!-- JD: 2017-06-15: this module was nothing but text(); wrapping all in <xd:*> -->
	<xd:doc>
		<xd:desc>
			<xd:pre>
    classification/classitem[@classscheme="topic:topicReference"] to
            classify:classification/classify:classitem/topic:topicReference id-CCCC-10516
    
        
            Instructions [common element]
            These instructions are for classification markup identified as
        "topic:topicReference", i.e.
          classification/classitem[@classscheme="topic:topicReference"]. The
        markup usually occurs within docinfo and may also occur within
          levelinfo
        
                classification[@classscheme] becomes
                        classify:classification[@classscheme]. Attribute
                    value most often will be "ln.legal" but there are no dependencies. The value
                    carries through to target regardless of what it is.
                        classitem[@classscheme="topic:topicReference"]
                            becomes
                                classify:classitem[@classscheme="topic:topicReference"]
                                meta/metaitem[@name @value] becomes
                                        meta/metaitem[@name @value]
                                classitem-identifier/classcode[@normval]
                                    becomes topic:topicReference[@guid:guid]
                                
                            
                        
                    
            



        
            Source XML
            

&lt;classification classscheme="ln.legal"&gt;
    &lt;classitem classscheme="topic:topicReference"&gt;
        &lt;meta&gt;
            &lt;metaitem name="appliedby" value="human"/&gt;
        &lt;/meta&gt;
        &lt;classitem-identifier&gt;
            &lt;classcode normval="urn:topic:E5E260FEA5F04281A64F7EFA2FCAF076"/&gt;
        &lt;/classitem-identifier&gt;
    &lt;/classitem&gt;
    &lt;classitem classscheme="topic:topicReference"&gt;
        &lt;meta&gt;
            &lt;metaitem name="appliedby" value="human"/&gt;
        &lt;/meta&gt;
        &lt;classitem-identifier&gt;
            &lt;classcode normval="urn:topic:E5E260FEA5F04281A64F7EFA2FCAF086"/&gt;
        &lt;/classitem-identifier&gt;
    &lt;/classitem&gt;
&lt;/classification&gt;

	       
        
        
            Target XML
            

&lt;classify:classification classscheme="ln.legal"&gt;
    &lt;classify:classitem classscheme="topic:topicReference"&gt;
        &lt;meta&gt;
            &lt;metaitem name="appliedby" value="human"/&gt;
        &lt;/meta&gt;
        &lt;topic:topicReference guid:guid="urn:topic:E5E260FEA5F04281A64F7EFA2FCAF076"/&gt;
    &lt;/classify:classitem&gt;
    &lt;classify:classitem classscheme="topic:topicReference"&gt;
        &lt;meta&gt;
            &lt;metaitem name="appliedby" value="human"/&gt;
        &lt;/meta&gt;
        &lt;topic:topicReference guid:guid="urn:topic:E5E260FEA5F04281A64F7EFA2FCAF086"/&gt;
    &lt;/classify:classitem&gt;
&lt;/classify:classification&gt;

	      
        
        
            Changes
          2015-03-07: Added an indication that this mark-up may also occur within levelinfo (as well as within docinfo as originally stated).
            2014-12-15: New section. Responds to discussion board
                    item for UK11-DA but markup expected for all UK streams and rule will apply for
                    any jurisdiction where the markup occurs. R4.5 Content Issue 2073.
        
			</xd:pre>
		</xd:desc>
	</xd:doc>
    
    <!-- Vikas Rohilla : Template to mtch the classification   -->
    <!-- BRT 10/10/17 only create classification markuup if there is a topic pguid -->
    <xsl:template match="classification[child::classitem[@classscheme='topic:topicReference']/classitem-identifier/classcode[contains(@normval, 'urn:topic:')]]">
        <classify:classification>
            <xsl:apply-templates select="@* | node()"/>
        </classify:classification>
    </xsl:template>
    
    <xsl:template match="classitem[@classscheme='topic:topicReference']">
        <classify:classitem>
            <xsl:apply-templates select="@* | node()"/>
        </classify:classitem>
    </xsl:template>
    
    <xsl:template match="classitem[@classscheme='topic:topicReference']/classitem-identifier">
        <xsl:apply-templates select="@*|node()"/>
    </xsl:template>
    
    <!-- BRT 10/10/17 process only the topic pguid. The module pguid will throw an error since there can only be one topic:topicRefernece -->
    <xsl:template match="classitem[@classscheme='topic:topicReference']/classitem-identifier/classcode[starts-with(@normval, 'urn:topic:')]">
        <topic:topicReference>
            <xsl:apply-templates select="@normval"/>
        </topic:topicReference>
    </xsl:template>
    
    <!-- BRT 10/10/17 new template - suppress the module pguid in topic:topicReference -->
    <xsl:template match="classitem[@classscheme='topic:topicReference']/classitem-identifier/classcode[starts-with(@normval, 'urn:krm:')]"/>
     
    <!-- MDS 2017-11-01 Suppress the entire classification if the classcode should be suppressed. -->
    <xsl:template match="classification[@classscheme='ln.legal'][classitem[@classscheme='topic:topicReference']/classitem-identifier/classcode[starts-with(@normval, 'urn:krm:')]]"/>
        
        
    <xsl:template match="classitem[@classscheme='topic:topicReference']/classitem-identifier/classcode/@normval">
        <xsl:attribute name="guid:guid">
            <xsl:value-of select="."/>
        </xsl:attribute>
    </xsl:template>
    
    <xsl:template match="classitem[@classscheme='topic:topicReference']/classitem-identifier/classname">
    </xsl:template>
    
    <xsl:template match="classification/@classscheme|classitem/@classscheme">
        <xsl:attribute name="classscheme">
            <xsl:value-of select="."/>
        </xsl:attribute>
    </xsl:template>
    
    <xsl:template match="meta">
        <meta>
            <xsl:apply-templates select="@*|node()"/>
        </meta>
    </xsl:template>
    
    <xsl:template match="metaitem">
        <metaitem>
            <xsl:apply-templates select="@*|node()"/>
        </metaitem>
    </xsl:template>
    
    <xsl:template match="metaitem/@*">
        <xsl:copy>
            <xsl:value-of select="."/>
        </xsl:copy>
    </xsl:template>
    
    
    
    
</xsl:stylesheet>
