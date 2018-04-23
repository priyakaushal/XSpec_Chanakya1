<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:glp="http://www.lexis-nexis.com/glp" xmlns:ci="http://www.lexis-nexis.com/ci"
xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"
xmlns:source_docinfo="http://www.lexis-nexis.com/glp/docinfo"
xmlns:dita="http://dita.oasis-open.org/architecture/2005/" version="2.0" exclude-result-prefixes="dita ci glp source_docinfo">
    
    <dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_entry_p-limited-to-LexisAdvance_p">
        <title><sourcexml>entry/p-limited</sourcexml> to <targetxml>entry/p</targetxml> <lnpid>id-CCCC-10319</lnpid></title>
        <body>
            <section>
                <p><sourcexml>entry/p-limited</sourcexml> becomes <targetxml>entry/p</targetxml>. Also create a child element <targetxml>text</targetxml> within <targetxml>entry/p</targetxml> for capturing the PCDATA of <sourcexml>entry/p-limited</sourcexml>.
                </p>
                
                <p> If multiple consecutive <sourcexml>p-limited</sourcexml> elements occur within
                    <sourcexml>entry</sourcexml> then create only one <targetxml>p</targetxml>
                    within <targetxml>entry</targetxml> and multiple child <targetxml>text</targetxml>
                    elements with the single <targetxml>p</targetxml>. Create one
                    <targetxml>p/text</targetxml> element for each <sourcexml>p-limited</sourcexml>
                    element. </p>
            </section>
            <example>
                <title>Source XML</title>
                <codeblock>
                    
                    &lt;entry&gt;
                    &lt;p-limited&gt;Pleaded guilty to one charge of cultivating cannabis, one charge of possession for supply and one charge of supply.&lt;/p-limited&gt; 
                    &lt;p-limited&gt;The appellant was the owner of a horticultural property. No criminal history. Four rows of cannabis plants growing in an extension to a hothouse. Maturing plants, stalks from harvested plants, and traces of drying cannabis leaf found. A total of 303 cannabis plants grown in a hydroponic solution.&lt;/p-limited&gt; 
                    &lt;/entry&gt;
                    
                </codeblock>
            </example>
            
            <example>
                <title>Target XML</title>
                <codeblock>
                    
                    &lt;entry&gt;
                    &lt;p&gt;
                    &lt;text&gt;Pleaded guilty to one charge of cultivating cannabis, one charge of possession for supply and one charge of supply.&lt;/text&gt;
                    &lt;text&gt;The appellant was the owner of a horticultural property. No criminal history. Four rows of cannabis plants growing in an extension to a hothouse. Maturing plants, stalks from harvested plants, and traces of drying cannabis leaf found. A total of 303 cannabis plants grown in a hydroponic solution.&lt;/text&gt; 
                    &lt;/p&gt;
                    &lt;/entry&gt;
                    
                </codeblock>
            </example>
            <note>If <sourcexml>l</sourcexml> is a child of <sourcexml>entry/p-limited</sourcexml> then
                <sourcexml>entry/p-limited/l</sourcexml> becomes
                <targetxml>entry/p/list</targetxml>. For further clarification please see the following example.</note>
            
            <example>
                <title>Source XML</title>
                <codeblock>
                    &lt;entry colname="col2"&gt;
                    &lt;p-limited&gt;Act is partly in force:
                    &lt;l&gt;
                    &lt;li&gt;
                    &lt;p&gt;
                    &lt;text&gt;ss. 61 (a) as it repeals the definition of ...&lt;/text&gt;
                    &lt;/p&gt;
                    &lt;/li&gt;
                    &lt;/l&gt;
                    &lt;/p-limited&gt;
                    &lt;/entry&gt;
                </codeblock>
            </example>
            
            <example>
                <title>Target XML</title>
                <codeblock>
                    &lt;entry colname="col2"&gt;
                    &lt;p&gt;
                    &lt;text&gt;Act is partly in force:&lt;/text&gt;
                    &lt;list&gt;
                    &lt;listitem&gt;
                    &lt;bodytext&gt;
                    &lt;p&gt;
                    &lt;text&gt;ss. 61 (a) as it repeals the definition of ...&lt;/text&gt;
                    &lt;/p&gt;
                    &lt;/bodytext&gt;
                    &lt;/listitem&gt;
                    &lt;/list&gt;
                    &lt;/p&gt;
                    &lt;/entry&gt;
                </codeblock>
            </example>
            
            <section>
                <title>Changes</title>
                <p>2014-11-11: <ph id="change_20141111_PS">Updated instruction when multiple consecutive <sourcexml>p-limited</sourcexml> elements occur within <sourcexml>entry</sourcexml>.</ph></p>
                <p>2014-10-28: <ph id="change_20141028_PS">Added note to handle scenario when <sourcexml>l</sourcexml> is a child of <sourcexml>entry/p-limited</sourcexml>.</ph></p>
            </section>
            
            <!--<xsltinclusion>
                <xsl:stylesheet version="2.0">
                    <xsl:template match="p-limited">
                        <xsl:choose>
                            <xsl:when test="child::emph">
                                <xsl:element name="p">
                                    <xsl:element name="text">
                                        <xsl:apply-templates/>
                                    </xsl:element>
                                </xsl:element>
                            </xsl:when>
                            <!-\- BRT: added the following case, result is entry/note -\->
                            <xsl:when test="parent::entry and child::glp:note">
                                <xsl:apply-templates/>    
                            </xsl:when>
                            <!-\- generalizing this condition -\->
                            <!-\- AS: As per the instructions for p-limited "p-limited becomes p. Also create a child element text within p for capturing the PCDATA of p-limited." -\->
                            <xsl:when test="parent::entry">
                                <xsl:element name="p">
                                    <xsl:element name="text">
                                        <xsl:apply-templates/>
                                    </xsl:element>
                                </xsl:element>
                            </xsl:when>
                            <!-\- BRT: added the following -\->
                            <xsl:when test="child::remotelink">
                                <xsl:element name="p">
                                    <xsl:element name="text">
                                        <xsl:apply-templates/>
                                    </xsl:element>
                                </xsl:element>
                            </xsl:when>
                            <xsl:when test="child::ci:cite">
                                <xsl:element name="p">
                                    <xsl:element name="text">
                                        <xsl:apply-templates/>
                                    </xsl:element>
                                </xsl:element>
                            </xsl:when>
                            <xsl:otherwise>
                                <xsl:element name="p">
                                    <xsl:apply-templates/>
                                </xsl:element>
                            </xsl:otherwise>
                        </xsl:choose>
                    </xsl:template>
                </xsl:stylesheet>
            </xsltinclusion>
           --> 
        </body>
    </dita:topic>
    
    <!--  @@@ This file has been autogenerated (although the DITA file already has embedded XSLT).  Remove this comment after manual development complete!  (also remove the embedded XSLT within the DITA above) @@@  -->
    <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_entry_p-limited-LxAdv-entry_p.dita  -->
    <!--<xsl:message>Rosetta_entry_p-limited-LxAdv-entry_p.xsl requires manual development!</xsl:message> -->
    <!--Satbir: Define the high priority in below template for p-limited because same template created in another xsl (Rosetta_p-limited-LxAdv-p.xsl)-->
    <xsl:template match="p-limited" priority="15">
    	<xsl:variable name="docinfoidtext" select="/CITATORDOC/docinfo/source_docinfo:doc-id/text()"/>
        <xsl:choose>
            <xsl:when test="parent::table and preceding-sibling::tgroup">
                <xsl:element name="note">
                    <xsl:element name="bodytext">
                        <xsl:element name="p">
                            <xsl:element name="text">
                                <xsl:apply-templates/>
                            </xsl:element>
                        </xsl:element>
                    </xsl:element>
                </xsl:element>
            </xsl:when>
            <xsl:when test="child::emph">
                <xsl:element name="p">
                    <xsl:element name="text">
                        <!-- Awantika:2017-11-24- Webstar # 7048152. If glp:note is coming in p-limited with emph then in target we need to take out glp:note target markup note
                            from p/text as schema does not allow note inside p/text.
                            entry/p-limited/glp:note to entry/note -->                        
                        <xsl:apply-templates select="node() except glp:note"/>
                    </xsl:element>
                </xsl:element>
                <xsl:apply-templates select="glp:note"></xsl:apply-templates>
            </xsl:when>
            <!-- BRT: added the following case, result is entry/note -->
            <xsl:when test="parent::entry and child::glp:note">
                <xsl:apply-templates/>    
            </xsl:when>
            <!-- generalizing this condition -->
            <!-- AS: As per the instructions for p-limited "p-limited becomes p. Also create a child element text within p for capturing the PCDATA of p-limited." -->
            <xsl:when test="parent::entry">
                <!-- Awantika: For AU20 entry/p-limited becomes textitem  -->
                <xsl:choose>
                    <xsl:when test="contains(lower-case($docinfoidtext),'history') and parent::entry and $streamID='AU20'">
                        <textitem>
                            <xsl:apply-templates/>
                        </textitem>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:element name="p">
                            <xsl:element name="text">
                                <xsl:apply-templates/>
                            </xsl:element>
                        </xsl:element>
                    </xsl:otherwise>
                </xsl:choose>
                
            </xsl:when>
            <!-- BRT: added the following -->
            <xsl:when test="child::remotelink">
                <xsl:element name="p">
                    <xsl:element name="text">
                        <xsl:apply-templates/>
                    </xsl:element>
                </xsl:element>
            </xsl:when>
            <xsl:when test="child::ci:cite">
                <xsl:element name="p">
                    <xsl:element name="text">
                        <xsl:apply-templates/>
                    </xsl:element>
                </xsl:element>
            </xsl:when>
            <xsl:otherwise>
                <xsl:element name="p">
                    <xsl:apply-templates/>
                </xsl:element>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    
</xsl:stylesheet>