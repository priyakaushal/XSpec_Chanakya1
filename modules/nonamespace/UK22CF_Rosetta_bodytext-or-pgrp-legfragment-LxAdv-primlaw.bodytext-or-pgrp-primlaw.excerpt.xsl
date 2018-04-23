<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
    xmlns:primlawinfo="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-info/1/"
    xmlns:funddoc="urn:x-lexisnexis:content:fundamentallegaldocument:sharedservices:1"
    xmlns:leg="http://www.lexis-nexis.com/glp/leg"
    
    xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" version="2.0"
    exclude-result-prefixes="dita">

    <dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/"
        id="Rosetta_bodytext-legfragment-to-LexisAdvance_primlaw.bodytext-primlaw.excerpt">
        <title>
            <sourcexml>bodytext</sourcexml>
            <lnpid>id-UK22CF-39025</lnpid>
        </title>
        <body>
            <section>
                <p>
                    <sourcexml>bodytext</sourcexml> becomes <targetxml>primlaw:bodytext</targetxml>
                    where atrribute searchtype has been suppressed in NL platform</p>
                <sourcexml>bodytext/legfragment</sourcexml> becomes
                    <targetxml>funddoc:body/primlaw:level/primlaw:bodytext/primlaw:excerpt</targetxml>
                when legfragment is the child of bodytext<p>
                    <codeblock>      
 &lt;bodytext&gt;
        &lt;p&gt;
            &lt;edpnum value="F1.307" inline="false"&gt;[F1.307]&lt;/edpnum&gt;
            &lt;refpt id="1_F1.307:HTCOMM-PARA" type="ext"/&gt;
        &lt;/p&gt;
        &lt;legfragment&gt;
            &lt;leg:info&gt;
                &lt;leg:officialname&gt;Double Taxation Relief (Surrender of Relievable Tax Within a
                    Group) Regulations&lt;/leg:officialname&gt;
                &lt;leg:officialnum&gt;SI
                        2001/1163&lt;leg:year&gt;2001&lt;/leg:year&gt;&lt;leg:seriesnum&gt;1163&lt;/leg:seriesnum&gt;&lt;/leg:officialnum&gt;
                &lt;leg:dates&gt;
                    &lt;leg:enactdate&gt;Made &lt;date day="26" month="03" year="2001"&gt;26 March
                        2001&lt;/date&gt;&lt;/leg:enactdate&gt;
                    &lt;leg:laidline&gt;Laid before the House of Commons &lt;date day="26" month="03"
                            year="2001"&gt;26 March 2001&lt;/date&gt;&lt;/leg:laidline&gt;
                    &lt;leg:effdate&gt;Coming into force &lt;date day="31" month="03" year="2001"&gt;31 March
                            2001&lt;/date&gt;&lt;/leg:effdate&gt;
                &lt;/leg:dates&gt;
            &lt;/leg:info&gt;
        &lt;/legfragment&gt;
    &lt;/bodytext&gt;


<b>Becomes</b>
      
 &lt;primlaw:bodytext&gt;
        &lt;p&gt;
            &lt;ref:anchor id="_1_F1.307.HTCOMM-PARA" anchortype="global"/&gt;
            &lt;desig&gt;[F1.307]&lt;/desig&gt;

        &lt;/p&gt;
        &lt;primlaw:excerpt&gt;
            &lt;primlaw:level leveltype="unclassified"&gt;
                &lt;primlaw:levelinfo&gt;
                    &lt;primlawinfo:primlawinfo&gt;
                        &lt;legisinfo:legisinfo&gt;
                            &lt;legisinfo:names&gt;
                                &lt;legisinfo:officialtitle source="editoriallyassigned"&gt;Double
                                    Taxation Relief (Surrender of Relievable Tax Within a Group)
                                    Regulations&lt;/legisinfo:officialtitle&gt;
                            &lt;/legisinfo:names&gt;
                        &lt;/legisinfo:legisinfo&gt;
                        &lt;primlawinfo:identifier idtype="officialnum"&gt;SI 2001/1163
                                &lt;primlawinfo:identifier-component type="seriesnum"
                                &gt;1163&lt;/primlawinfo:identifier-component&gt;
                            &lt;primlawinfo:identifier-component type="year"
                                &gt;2001&lt;/primlawinfo:identifier-component&gt;
                        &lt;/primlawinfo:identifier&gt;
                        &lt;primlawinfo:dates&gt;
                            &lt;primlawinfo:enactdate day="26" month="03" year="2001" normdate="2001-03-26"&gt;Made
                                    &lt;date-text&gt;26 March 2001&lt;/date-text&gt;
                            &lt;/primlawinfo:enactdate&gt;
                            &lt;primlawinfo:presenteddate day="26" month="03" year="2001" normdate="2001-03-26"&gt;Laid before
                                the House of Commons &lt;date-text&gt;26 March 2001&lt;/date-text&gt;
                            &lt;/primlawinfo:presenteddate&gt;
                            &lt;primlawinfo:effdate day="31" month="03" year="2001" normdate="2001-03-31"&gt;Coming into force
                                    &lt;date-text&gt;31 March 2001&lt;/date-text&gt;
                            &lt;/primlawinfo:effdate&gt;
                        &lt;/primlawinfo:dates&gt;
                    &lt;/primlawinfo:primlawinfo&gt;
                &lt;/primlaw:levelinfo&gt;
            &lt;/primlaw:level&gt;
        &lt;/primlaw:excerpt&gt;
    &lt;/primlaw:bodytext&gt;
     
      </codeblock>
                </p>
            </section>
            <section>
                <title>Changes</title>
                <p>2016-09-19: <ph id="change_20160919_RS">Created</ph></p>
            </section>
        </body>
    </dita:topic>

    <!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
    <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK22CF\Rosetta_bodytext-or-pgrp-legfragment-LxAdv-primlaw.bodytext-or-pgrp-primlaw.excerpt.dita  -->


    <xsl:template match="bodytext">

        <!--  Original Target XPath:  primlaw:bodytext   -->
        <primlaw:bodytext>
            <xsl:apply-templates select="@* | node()"/>
        </primlaw:bodytext>

    </xsl:template>

    <xsl:template match="legfragment">
        <xsl:choose>
            <xsl:when test="child::leg:info">
                <xsl:element name="primlaw:excerpt">
                    <xsl:apply-templates/>
                </xsl:element>
            </xsl:when>            
            <xsl:when test="parent::blockquote/parent::leg:bodytext and child::leg:level">
                <xsl:element name="primlaw:excerpt">
                    <xsl:element name="primlaw:bodytext">
                        <xsl:apply-templates/>
                    </xsl:element>
                </xsl:element>
            </xsl:when>
            <xsl:when test="not(child::leg:level)">
                <xsl:element name="primlaw:excerpt">
                    <xsl:element name="primlaw:bodytext">
                        <xsl:apply-templates/>
                    </xsl:element>
                </xsl:element>
            </xsl:when>
            
            <xsl:otherwise>
                <xsl:element name="primlaw:excerpt">
                    <xsl:apply-templates/>
                </xsl:element>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    
    <xsl:template match="legfragment/leg:info">
        <xsl:element name="primlaw:level">
            <xsl:attribute name="leveltype">
                <xsl:text>unclassified</xsl:text>
            </xsl:attribute>
            <xsl:element name="primlaw:levelinfo">
                <primlawinfo:primlawinfo>
                    <xsl:apply-templates select="leg:officialname"/>
                    <xsl:apply-templates select="leg:officialnum"/>
                    <xsl:apply-templates select="leg:dates"/>
                    <xsl:apply-templates select="leg:info"/>   
                </primlawinfo:primlawinfo>
            </xsl:element>
        </xsl:element>        
    </xsl:template>

    <xsl:template match="bodytext/legfragment">

        <!--  Original Target XPath:  funddoc:body/primlaw:level/primlaw:bodytext/primlaw:excerpt   -->
        
        <primlaw:excerpt>           
                    <xsl:apply-templates/>           
        </primlaw:excerpt>
        
    </xsl:template>


</xsl:stylesheet>
