<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="IN03_Rosetta_leg.levelbody_leg.bodytext">
    <title>leg:levelbody/leg:bodytext <lnpid>id-IN03-15815</lnpid></title>
    <body>
        <section>
            <p><sourcexml>leg:levelbody/leg:bodytext</sourcexml> becomes
                    <targetxml>primlaw:bodytext</targetxml>.</p>
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
            &lt;leg:level&gt;
                &lt;leg:level-vrnt leveltype="prov2" searchtype="LEGISLATION"&gt;
                    &lt;leg:levelbody&gt;
                        &lt;leg:bodytext searchtype="LEGISLATION"&gt;
                            &lt;p&gt;
                                &lt;text&gt;(&lt;ci:cite searchtype="LEG-REF"
                                                  &gt;&lt;ci:sesslaw&gt;&lt;ci:sesslawinfo&gt;&lt;ci:jurisinfo&gt;&lt;ci:in/&gt;&lt;/ci:jurisinfo&gt;&lt;ci:hier&gt;&lt;ci:hierlev
                                                  label="article" num="1"
                                                /&gt;&lt;/ci:hier&gt;&lt;/ci:sesslawinfo&gt;&lt;ci:sesslawref&gt;&lt;ci:standardname
                                                  normpubcode="IN1950COOI01"
                                            /&gt;&lt;/ci:sesslawref&gt;&lt;/ci:sesslaw&gt;&lt;ci:content&gt;Articles
                                            1&lt;/ci:content&gt;&lt;/ci:cite&gt; and &lt;ci:cite
                                        searchtype="LEG-REF"
                                                  &gt;&lt;ci:sesslaw&gt;&lt;ci:sesslawinfo&gt;&lt;ci:jurisinfo&gt;&lt;ci:in/&gt;&lt;/ci:jurisinfo&gt;&lt;ci:hier&gt;&lt;ci:hierlev
                                                  label="article" num="4"
                                                /&gt;&lt;/ci:hier&gt;&lt;/ci:sesslawinfo&gt;&lt;ci:sesslawref&gt;&lt;ci:standardname
                                                  normpubcode="IN1950COOI01"
                                            /&gt;&lt;/ci:sesslawref&gt;&lt;/ci:sesslaw&gt;&lt;ci:content&gt;4&lt;/ci:content&gt;&lt;/ci:cite&gt;)&lt;/text&gt;
                            &lt;/p&gt;
                        &lt;/leg:bodytext&gt;
                    &lt;/leg:levelbody&gt;
                &lt;/leg:level-vrnt&gt;
            &lt;/leg:level&gt;
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
    &lt;primlaw:level leveltype="subsection"&gt;
        &lt;primlaw:bodytext&gt;
            &lt;p&gt;
                &lt;text&gt;(&lt;lnci:cite&gt;&lt;lnci:sesslaw&gt;&lt;lnci:sesslawinfo&gt;&lt;lnci:jurisinfo&gt;&lt;lnci:in/&gt;&lt;/lnci:jurisinfo&gt;&lt;lnci:hier&gt;&lt;lnci:hierlev
                                        label="article" num="1"
                                    /&gt;&lt;/lnci:hier&gt;&lt;/lnci:sesslawinfo&gt;&lt;lnci:sesslawref&gt;&lt;lnci:standardname
                                    normpubcode="IN1950COOI01"
                            /&gt;&lt;/lnci:sesslawref&gt;&lt;/lnci:sesslaw&gt;&lt;lnci:content&gt;Articles
                            1&lt;/lnci:content&gt;&lt;/lnci:cite&gt; and
                                    &lt;lnci:cite&gt;&lt;lnci:sesslaw&gt;&lt;lnci:sesslawinfo&gt;&lt;lnci:jurisinfo&gt;&lt;lnci:in/&gt;&lt;/lnci:jurisinfo&gt;&lt;lnci:hier&gt;&lt;lnci:hierlev
                                        label="article" num="4"
                                    /&gt;&lt;/lnci:hier&gt;&lt;/lnci:sesslawinfo&gt;&lt;lnci:sesslawref&gt;&lt;lnci:standardname
                                    normpubcode="IN1950COOI01"
                            /&gt;&lt;/lnci:sesslawref&gt;&lt;/lnci:sesslaw&gt;&lt;lnci:content&gt;4&lt;/lnci:content&gt;&lt;/lnci:cite&gt;)&lt;/text&gt;
            &lt;/p&gt;
        &lt;/primlaw:bodytext&gt;
    &lt;/primlaw:level&gt;
    &lt;/primlaw:level&gt;</pre>
            
            <p>When <sourcexml>leg:heading</sourcexml> is the only child of
                    <sourcexml>leg:levelbody/leg:bodytext</sourcexml> then
                    <sourcexml>leg:heading</sourcexml> becomes
                    <targetxml>primlaw:level/heading</targetxml> and suppressed
                    <targetxml>primlaw:bodytext</targetxml> element from target.</p>
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
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-GPL\IN03-Constitutions\IN03_Rosetta_leg.levelbody_leg.bodytext.dita  -->
	<xsl:message>IN03_Rosetta_leg.levelbody_leg.bodytext.xsl requires manual development!</xsl:message> 

	<xsl:template match="leg:levelbody/leg:bodytext">

		<!--  Original Target XPath:  primlaw:bodytext   -->
		<primlaw:bodytext>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:bodytext>

	</xsl:template>

	<xsl:template match="leg:heading">

		<!--  Original Target XPath:  primlaw:level/heading   -->
		<primlaw:level>
			<heading>
				<xsl:apply-templates select="@* | node()"/>
			</heading>
		</primlaw:level>

	</xsl:template>

</xsl:stylesheet>