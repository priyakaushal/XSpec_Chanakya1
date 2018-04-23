<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="IN03_Rosetta_leg.heading">
    <title>leg:heading <lnpid>id-IN03-15811</lnpid></title>
    <body>
        <section>
            <p><sourcexml>leg:heading</sourcexml> becomes <targetxml>heading</targetxml>.</p>
            <p>Attribute <sourcexml>@align</sourcexml> becomes <targetxml>@align</targetxml>.</p>
            <p>Drop <sourcexml>@searchtype</sourcexml> attribute.</p>
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
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-GPL\IN03-Constitutions\IN03_Rosetta_leg.heading.dita  -->
	<xsl:message>IN03_Rosetta_leg.heading.xsl requires manual development!</xsl:message> 

	<xsl:template match="leg:heading">

		<!--  Original Target XPath:  heading   -->
		<heading>
			<xsl:apply-templates select="@* | node()"/>
		</heading>

	</xsl:template>

	<xsl:template match="@align">

		<!--  Original Target XPath:  @align   -->
		<xsl:attribute name="align">
			<xsl:apply-templates select="node()"/>
		</xsl:attribute>

	</xsl:template>

	<xsl:template match="@searchtype">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

</xsl:stylesheet>