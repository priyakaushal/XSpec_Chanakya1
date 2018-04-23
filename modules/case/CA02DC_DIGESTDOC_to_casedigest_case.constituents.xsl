<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
    xmlns:case="http://www.lexis-nexis.com/glp/case"
    xmlns:casedigest="http://www.lexisnexis.com/xmlschemas/content/legal/case-digest/1/"
    xmlns:courtcase="http://www.lexisnexis.com/xmlschemas/content/legal/courtcase/1/" version="2.0"
    exclude-result-prefixes="dita case">

    <dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="case.constituents">
        <title>case:constituents <lnpid>id-CA02DC-12608</lnpid></title>
        <body>
            <section>
                <p>In Rosetta samples element <sourcexml>case:constituents</sourcexml> occurs with
                    attribute <sourcexml>case:constituents/@constituenttype</sourcexml> which
                    contains two values as given below: <ul>
                        <li>case:constituents[@constituenttype=”counsel”]</li>
                        <li>case:constituents[@constituenttype=”consultant”]</li>
                    </ul></p>
                <p>Based on the attribute's value we need to handle it on two different ways, see
                    below:</p>
                <ul>
                    <li>
                        <sourcexml>case:constituents[@constituenttype=”counsel”]</sourcexml> becomes
                            <targetxml>casedigest:head/casedigest:caseinfo/casedigest:appearances/courtcase:representation</targetxml>. <ul>
                            <li><sourcexml>case:constituent</sourcexml> becomes
                                    <targetxml>courtcase:counsel</targetxml></li>
                        </ul>
                        <pre>

&lt;case:info&gt;
    &lt;case:constituents constituenttype="counsel"&gt;
        &lt;case:constituent&gt;Robert G. DeBou, for the plaintiff Robert B. Kennedy Moira C. Wong, for the defendants.&lt;/case:constituent&gt;
    &lt;/case:constituents&gt;
&lt;/case:info&gt;

                    </pre>
                        <b>Becomes</b>
                        <pre>

&lt;casedigest:head&gt;
    &lt;casedigest:caseinfo&gt;
        &lt;casedigest:appearances&gt;
            &lt;courtcase:representation&gt;
                &lt;courtcase:counsel&gt;Robert G. DeBou, for the plaintiff Robert B. Kennedy Moira C. Wong, for the defendants.&lt;/courtcase:counsel&gt;
            &lt;/courtcase:representation&gt;
        &lt;/casedigest:appearances&gt;
    &lt;/casedigest:caseinfo&gt;
&lt;/casedigest:head&gt;

</pre>
                    </li>
                    <li>
                        <sourcexml>case:constituents[@constituenttype=”consultant”]</sourcexml>
                        becomes
                            <targetxml>casedigest:head/casedigest:caseinfo/casedigest:appearances/courtcase:testimony/courtcase:expertwitnesses</targetxml>. <ul>
                            <li><sourcexml>case:constituent</sourcexml> becomes
                                    <targetxml>courtcase:expertwitness</targetxml></li>
                        </ul>
                        <pre>

&lt;dig:info&gt;
    &lt;case:info&gt;
        &lt;case:constituents constituenttype="consultant"&gt;
            &lt;case:constituent searchtype="PHYSICIAN-EXPERT"&gt;Dr. Ronald Stanley, Dr. Jeffrey
                Freeman, Dr. Eric Watts, Dr. D.B. Clement, Dr. Michael J. Vondette, Dr.
                Peter Mortifee, Dr. D.A. Cameron, Dr. Peter K.H. Wong Dr. Maribeth Ruckman,
                Dr. Ursula Wild, Dr. James Harris, Dr. Feinstadt, Dr.
                MacNiel&lt;/case:constituent&gt;
        &lt;/case:constituents&gt;
    &lt;/case:info&gt;
&lt;/dig:info&gt;

                    </pre>
                        <b>Becomes</b>
                        <pre>

&lt;casedigest:head&gt;
    &lt;casedigest:caseinfo&gt;
        &lt;casedigest:appearances&gt;
            &lt;courtcase:testimony&gt;
                &lt;courtcase:expertwitnesses&gt;
                    &lt;courtcase:expertwitness&gt;Dr. Ronald Stanley, Dr. Jeffrey Freeman, Dr. Eric Watts, Dr. D.B. Clement, Dr. Michael J. Vondette, Dr. Peter Mortifee, Dr. D.A. Cameron, Dr. Peter K.H. Wong Dr. Maribeth Ruckman, Dr. Ursula Wild, Dr. James Harris, Dr. Feinstadt, Dr. MacNiel&lt;/courtcase:expertwitness&gt;
                &lt;/courtcase:expertwitnesses&gt;
            &lt;/courtcase:testimony&gt;
        &lt;/casedigest:appearances&gt;
    &lt;/casedigest:caseinfo&gt;
&lt;/casedigest:head&gt;

</pre>
                    </li>
                </ul>
            </section>
        </body>
    </dita:topic>


    <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA02-Case_Summaries\CA02DC_DIGESTDOC_to_casedigest\case.constituents.dita  -->

    <!--Vikas Rohilla : Initial updated and can be modify if required -->
    <xsl:template match="case:constituents[@constituenttype='counsel']">
        <casedigest:appearances>
            <courtcase:representation>
                <xsl:apply-templates select="@* | node()"/>
            </courtcase:representation>
        </casedigest:appearances>
    </xsl:template>

    <!--Vikas Rohilla : Initial updated and can be modify if required -->
    <xsl:template match="case:constituents[@constituenttype='consultant']">
        <casedigest:appearances>
            <courtcase:testimony>
                <courtcase:expertwitnesses>
                    <xsl:apply-templates select="@* | node()"/>
                </courtcase:expertwitnesses>
            </courtcase:testimony>
        </casedigest:appearances>
    </xsl:template>
    
    <!-- Tamplate to match the case:constituent   -->
    <xsl:template match="case:constituent[parent::case:constituents[@constituenttype='counsel']]">
        <xsl:element name="courtcase:counsel">
            <xsl:apply-templates select="node()|@*"/>
        </xsl:element>
    </xsl:template>

    <xsl:template match="case:constituent[parent::case:constituents[@constituenttype='consultant']]">
        <xsl:element name="courtcase:expertwitness">
            <xsl:apply-templates select="node()|@*"/>
        </xsl:element>
    </xsl:template>
    
    <xsl:template match="case:constituents/@constituenttype"/>
    
    <xsl:template match="case:constituent/@searchtype"/>
    
</xsl:stylesheet>
