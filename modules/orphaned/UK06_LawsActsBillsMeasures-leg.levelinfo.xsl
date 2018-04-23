<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:classify="http://www.lexisnexis.com/xmlschemas/content/shared/classification/1/" xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="UK06_LawsActsBillsMeasures-leg.levelinfo">
    <title>leg:levelinfo <lnpid>id-UK06-28046</lnpid></title>
    <body>
        <section>
            <p><sourcexml>leg:levelinfo</sourcexml> becomes <targetxml>primlaw:levelinfo</targetxml> and for child element conversion please refer below instruction:
                <ul>
                    <li><sourcexml>classification</sourcexml> becomes <targetxml>ref:relatedcontent/ref:relatedcontentitem[@contenttype="legaboutreference"]/classify:classification</targetxml>, attribute <sourcexml>@classscheme</sourcexml> becomes <targetxml>@classscheme</targetxml>, <sourcexml>classitem</sourcexml> becomes <targetxml>classify:classitem</targetxml>, <sourcexml>classitem-identifier</sourcexml> becomes <targetxml>classify:classitem-identifier</targetxml>, <sourcexml>classname</sourcexml> becomes <targetxml>classify:classname</targetxml>.</li>
                    <li><sourcexml>leg:aboutreference</sourcexml> becomes <targetxml>ref:relatedcontent/ref:relatedcontentitem[@contenttype="legaboutreference"]</targetxml>.</li>
                </ul>
            </p>
            <note>Conversion should not create adjacent <targetxml>ref:relatedcontent/ref:relatedcontentitem[@contenttype="legaboutreference"]</targetxml>. Data should be merged to single <targetxml>ref:relatedcontent/ref:relatedcontentitem[@contenttype="legaboutreference"]</targetxml>.</note>
            <note>If <sourcexml>leg:levelinfo</sourcexml> and <sourcexml>heading</sourcexml> elements are siblings in source data then conversion should generate <targetxml>primlaw:levelinfo</targetxml> markup after <targetxml>heading</targetxml> element.</note>
            <p>For more confirmation please see below example:</p>
        </section>
        <section>
            <title>Change Log</title>
            <p>2016-02-24: <ph id="change_20160224_AB">Created. RFA #2749</ph></p>
        </section>
    </body>
	</dita:topic>

	
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK06-LawsActsBillsMeasures\UK06_LawsActsBillsMeasures-leg.levelinfo.dita  -->
	
	<!-- Sudhanshu Srivastava 
	     Edited :- 19 june 2017.
	     Comments :- This is content specific module handling leg:levelinfo.
	-->
	<xsl:template match="leg:levelinfo">
		<!--  Original Target XPath:  primlaw:levelinfo   -->
		<primlaw:levelinfo>
			<xsl:apply-templates select="@* | node() except leg:levelstatus"/>
		</primlaw:levelinfo>
	</xsl:template>

	<xsl:template match="classification">
		<!--  Original Target XPath:  ref:relatedcontent/ref:relatedcontentitem[@contenttype="legaboutreference"]/classify:classification   -->
		<xsl:choose>
			<xsl:when test="parent::levelinfo/parent::level">
				<classify:classification>
					<xsl:apply-templates select="@* | node()"/>
				</classify:classification>
			</xsl:when>
			<xsl:otherwise>
				<ref:relatedcontent>
					<ref:relatedcontentitem contenttype="legaboutreference">
						<classify:classification>
							<xsl:apply-templates select="@* | node()"/>
						</classify:classification>
						<xsl:apply-templates select="following-sibling::leg:aboutreference"/>
					</ref:relatedcontentitem>
				</ref:relatedcontent>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>

	<xsl:template match="classification/@classscheme">
		<!--  Original Target XPath:  @classscheme   -->
		<xsl:attribute name="classscheme" select="."/>
	</xsl:template>

	<xsl:template match="classitem">
		<!--  Original Target XPath:  classify:classitem   -->
		<classify:classitem>
			<xsl:apply-templates select="@* | node()"/>
		</classify:classitem>
	</xsl:template>

	<xsl:template match="classitem-identifier">
		<!--  Original Target XPath:  classify:classitem-identifier   -->
		<classify:classitem-identifier>
			<xsl:apply-templates select="@* | node()"/>
		</classify:classitem-identifier>
	</xsl:template>

	<xsl:template match="classname">
		<!--  Original Target XPath:  classify:classname   -->
		<classify:classname>
			<xsl:apply-templates select="@* | node()"/>
		</classify:classname>
	</xsl:template>

	<xsl:template match="leg:aboutreference">
		<!--  Original Target XPath:  ref:relatedcontent/ref:relatedcontentitem[@contenttype="legaboutreference"]   -->
	<!--	<ref:relatedcontent>
			<ref:relatedcontentitem>-->
				<xsl:apply-templates select="@* | node()"/>
			<!--</ref:relatedcontentitem>
		</ref:relatedcontent>-->
	</xsl:template>

	<!--<xsl:template match="heading">
		<!-\-  Original Target XPath:  primlaw:levelinfo   -\->
		<primlaw:levelinfo>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:levelinfo>
	</xsl:template>-->
</xsl:stylesheet>