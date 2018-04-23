<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
    xmlns:leg="http://www.lexis-nexis.com/glp/leg" 
    xmlns:funddoc="urn:x-lexisnexis:content:fundamentallegaldocument:sharedservices:1"
    xmlns:primlawinfo="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-info/1/"
    xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/"
    xmlns:legisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/legislation-info/1/"
    version="2.0" exclude-result-prefixes="#all">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="UK22LF_leg.body">
    <title>leg:body <lnpid>id-UK22LF-36009</lnpid></title>
    <body>
        <section>
            <p><sourcexml>leg:body</sourcexml> becomes <targetxml>funddoc:body</targetxml>.</p>
            <p>NB: This conversion taken from Pacific modules: <sourcexml>/LEGDOC/leg:body/leg:info</sourcexml> becomes
                <targetxml>/funddoc:fundamentallegaldocument/funddoc:body/primlaw:level[@leveltype="unclassified"]/primlaw:levelinfo/primlawinfo:primlawinfo/legisinfo:legisinfo</targetxml> 
                with child as described below: 
                <ul>
                    <li><sourcexml>/LEGDOC/leg:body/leg:info/leg:officialname</sourcexml>
                        becomes
                        <targetxml>/funddoc:fundamentallegaldocument/funddoc:body/primlaw:level[@leveltype="unclassified"]/primlaw:levelinfo/primlawinfo:primlawinfo/legisinfo:legisinfo/legisinfo:names/legisinfo:officialtitle</targetxml></li>
                    <li><sourcexml>/LEGDOC/leg:body/leg:info/leg:officialnum</sourcexml>
                        becomes
                        <targetxml>/funddoc:fundamentallegaldocument/funddoc:body/primlaw:level[@leveltype="unclassified"]/primlaw:levelinfo/primlawinfo:primlawinfo/primlawinfo:identifier</targetxml>  with required
                        attribute <targetxml>@idtype="officialnum"</targetxml>.<ul>
                    
                            <li><sourcexml>leg:year</sourcexml> becomes
                                <targetxml>primlawinfo:identifier-component/@type="year"</targetxml>.</li>
                            <li><sourcexml>leg:seriesnum</sourcexml> becomes
                                <targetxml>primlawinfo:identifier-component/@type="seriesnum"</targetxml>.</li>
                        </ul></li></ul></p>                      

        
        </section>
        <example>
            <title>Source XML 1</title>
            <codeblock>
&lt;leg:body id="1000848"&gt;
    ...
&lt;/leg:body&gt;
</codeblock>
        </example>
        <example>
            <title>Target XML 1</title>
            <codeblock>
&lt;funddoc:body id="1000848"&gt;
    ...
&lt;/funddoc:body&gt;
                </codeblock>
        </example>
        <section>
            <title>Changes</title>
            <p>2015-06-30: <ph id="change_20150630_PS">Created.</ph></p>
        </section>
    </body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK22LF\leg.body.dita  -->
	 

	<xsl:template match="leg:body">
		<!--  Original Target XPath:  funddoc:body   -->
		<funddoc:body>
			<xsl:apply-templates select="@* | node()"/>
		</funddoc:body>
	</xsl:template>
    
    <xsl:template match="leg:body/leg:info">
        <primlaw:level leveltype="unclassified">
            <primlaw:levelinfo>
                <primlawinfo:primlawinfo>
                    <xsl:apply-templates select="@* | node() except note[footnotegrp and not(child::*[2])][preceding-sibling::*[1][self::leg:officialname]]"/>
                </primlawinfo:primlawinfo>
            </primlaw:levelinfo>
        </primlaw:level>
    </xsl:template>
    
    <xsl:template match="leg:info/leg:officialname">
        <legisinfo:legisinfo>
            <legisinfo:names>
                <legisinfo:officialtitle>
                    <xsl:apply-templates select="@* | node()"/>
                    <xsl:if test="fnr and following-sibling::*[1][self::note[footnotegrp and not(child::*[2])]]">
                        <xsl:apply-templates select="following-sibling::*[1][self::note]/footnotegrp"/>
                    </xsl:if>
                </legisinfo:officialtitle>
            </legisinfo:names>
        </legisinfo:legisinfo>
    </xsl:template>
    
    <xsl:template match="leg:info/leg:officialnum">
        <primlawinfo:identifier idtype="officialnum">
            <xsl:apply-templates select="@* | node()"/>
        </primlawinfo:identifier>
    </xsl:template>
    
    <xsl:template match="leg:info/leg:officialnum/leg:year">
        <primlawinfo:identifier-component type="year">
            <xsl:apply-templates select="@* | node()"/>
        </primlawinfo:identifier-component>
    </xsl:template>
    
    <xsl:template match="leg:info/leg:officialnum/leg:seriesnum">
        <primlawinfo:identifier-component type="seriesnum">
            <xsl:apply-templates select="@* | node()"/>
        </primlawinfo:identifier-component>
    </xsl:template>
    
    <xsl:template match="leg:info/note/footnotegrp" priority="25">
        <footnotegroup
            xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
            <xsl:apply-templates select="@* | node()"/>
        </footnotegroup>
    </xsl:template>

</xsl:stylesheet>