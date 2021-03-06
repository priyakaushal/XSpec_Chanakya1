<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="IN03_Rosetta_leg.level_leg.level-vrnt">
    <title>leg:level/leg:level-vrnt <lnpid>id-IN03-15816</lnpid></title>
    <body>
        <section><p><sourcexml>leg:level/leg:level-vrnt</sourcexml> becomes <targetxml>primlaw:level</targetxml> and
                generate <targetxml>@leveltype</targetxml> in
                <targetxml>primlaw:level</targetxml>.</p>
            
            <p>Value of <targetxml>primlaw:level/@leveltype</targetxml> based on below mapping:</p>
<ul>
    <li><sourcexml>leg:level-vrnt/@leveltype="prov1"</sourcexml> becomes <targetxml>primlaw:level/@leveltype="section"</targetxml></li>
    <li><sourcexml>leg:level-vrnt/@leveltype="prov2"</sourcexml> becomes <targetxml>primlaw:level/@leveltype="subsection"</targetxml></li>
    <li><sourcexml>leg:level-vrnt/@leveltype="chapter"</sourcexml> becomes <targetxml>primlaw:level/@leveltype="chapter"</targetxml></li>
    <li><sourcexml>leg:level-vrnt/@leveltype="part"</sourcexml> becomes <targetxml>primlaw:level/@leveltype="part"</targetxml></li>
    <li><sourcexml>leg:level-vrnt/@leveltype="subtitle"</sourcexml> becomes <targetxml>primlaw:level/@leveltype="subtitle"</targetxml></li>
    <li><sourcexml>leg:level-vrnt/@leveltype="intro"</sourcexml> becomes <targetxml>primlaw:level/@leveltype="introduction"</targetxml></li>
</ul>
            <p>Drop <sourcexml>@searchtype</sourcexml> attribute from conversion.</p>
        </section>
        <section>
            <pre>&lt;leg:level&gt;
    &lt;leg:level-vrnt leveltype="prov1" searchtype="SCHEDULE"&gt;
        &lt;leg:levelbody&gt;
            &lt;leg:bodytext searchtype="SCHEDULE"&gt;
                &lt;leg:heading align="center" searchtype="SCHEDULE"&gt;
                    &lt;desig inline="true" searchtype="PROVISION-SCHEDULE"&gt;
                        &lt;desiglabel&gt;SCHEDULE&lt;/desiglabel&gt;
                        &lt;designum&gt;I&lt;/designum&gt;
                    &lt;/desig&gt;
                    &lt;title searchtype="SCHEDULE-TITLE"&gt;
                        &lt;refpt id="COOI_0000I" type="ext"&gt;THE STATES&lt;fnr fnrtoken="FNR_000002"
                                fntoken="FN_000002"&gt;2&lt;/fnr&gt;&lt;/refpt&gt;
                    &lt;/title&gt;
                &lt;/leg:heading&gt;
            &lt;/leg:bodytext&gt;
            ...
        &lt;/leg:levelbody&gt;
    &lt;/leg:level-vrnt&gt;
&lt;/leg:level&gt;

<b>becomes</b>

&lt;primlaw:level leveltype="section"&gt;
    &lt;ref:anchor id="COOI_0000I" anchortype="global"/&gt;
    &lt;heading align="center"&gt;
        &lt;desig inline="true"&gt;SCHEDULE I&lt;/desig&gt;
        &lt;title&gt;THE STATES&lt;footnote-ref anchoridref="FN_000002"&gt;&lt;ref:anchor id="FNR_000002"
                    /&gt;&lt;label&gt;2&lt;/label&gt;&lt;/footnote-ref&gt;&lt;/title&gt;
    &lt;/heading&gt;
    ...
&lt;/primlaw:level&gt;</pre>
        </section>
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-GPL\IN03-Constitutions\IN03_Rosetta_leg.level_leg.level-vrnt.dita  -->
	<xsl:message>IN03_Rosetta_leg.level_leg.level-vrnt.xsl requires manual development!</xsl:message> 

	<xsl:template match="leg:level/leg:level-vrnt">

		<!--  Original Target XPath:  primlaw:level   -->
		<primlaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="leg:level-vrnt/@leveltype=&#34;prov1&#34;">

		<!--  Original Target XPath:  primlaw:level/@leveltype="section"   -->
		<primlaw:level>
			<xsl:attribute name="leveltype">
				<xsl:text>section</xsl:text>
			</xsl:attribute>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="leg:level-vrnt/@leveltype=&#34;prov2&#34;">

		<!--  Original Target XPath:  primlaw:level/@leveltype="subsection"   -->
		<primlaw:level>
			<xsl:attribute name="leveltype">
				<xsl:text>subsection</xsl:text>
			</xsl:attribute>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="leg:level-vrnt/@leveltype=&#34;chapter&#34;">

		<!--  Original Target XPath:  primlaw:level/@leveltype="chapter"   -->
		<primlaw:level>
			<xsl:attribute name="leveltype">
				<xsl:text>chapter</xsl:text>
			</xsl:attribute>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="leg:level-vrnt/@leveltype=&#34;part&#34;">

		<!--  Original Target XPath:  primlaw:level/@leveltype="part"   -->
		<primlaw:level>
			<xsl:attribute name="leveltype">
				<xsl:text>part</xsl:text>
			</xsl:attribute>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="leg:level-vrnt/@leveltype=&#34;subtitle&#34;">

		<!--  Original Target XPath:  primlaw:level/@leveltype="subtitle"   -->
		<primlaw:level>
			<xsl:attribute name="leveltype">
				<xsl:text>subtitle</xsl:text>
			</xsl:attribute>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="leg:level-vrnt/@leveltype=&#34;intro&#34;">

		<!--  Original Target XPath:  primlaw:level/@leveltype="introduction"   -->
		<primlaw:level>
			<xsl:attribute name="leveltype">
				<xsl:text>introduction</xsl:text>
			</xsl:attribute>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="@searchtype">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

</xsl:stylesheet>