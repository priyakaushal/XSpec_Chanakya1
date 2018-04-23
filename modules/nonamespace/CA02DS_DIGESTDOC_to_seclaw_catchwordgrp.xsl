<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
    xmlns:caseinfo="http://www.lexisnexis.com/xmlschemas/content/legal/case-information/1/"
    xmlns:classify="http://www.lexisnexis.com/xmlschemas/content/shared/classification/1/"
    version="2.0" exclude-result-prefixes="dita">

    <dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="catchwordgrp">
        <title>catchwordgrp <lnpid>id-CA02DS-12827</lnpid></title>
        <body>
            <section>
                <ul>
                    <li>
                        <sourcexml>catchwordgrp</sourcexml> omit tag and retain content. <ul>
                            <li>
                                <sourcexml>catchwords</sourcexml> becomes
                                    <targetxml>classify:classification</targetxml> and comes with
                                    <targetxml>@classscheme="catchwords"</targetxml>
                                <ul>
                                    <li>
                                        <sourcexml>catchphrase</sourcexml> becomes
                                            <targetxml>classify:classification/classify:classitem</targetxml>
                                        <ul>
                                            <li>Create
                                                  <targetxml>classify:classification/classify:classitem/classify:classitem-identifier</targetxml>
                                                <ul>
                                                  <li>Create
                                                  <targetxml>classify:classification/classify:classitem/classify:classitem-identifier/classify:classname</targetxml>
                                                  </li>
                                                </ul>
                                            </li>
                                        </ul>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                        <note>Each instance of <sourcexml>catchwords</sourcexml> should be converted
                            to its own
                                <targetxml>classify:classification[@classscheme="catchwords"]</targetxml>
                            element.</note>
                        <note>Conversion should not create adjacent
                                <targetxml>caseinfo:caseinfo</targetxml>, data should be merged into
                            single element <targetxml>caseinfo:caseinfo</targetxml>.</note>
                        <pre>

&lt;catchwordgrp&gt;
    &lt;catchwords&gt;
        &lt;catchphrase&gt;Commercial law&lt;/catchphrase&gt;
        &lt;catchphrase&gt;Business of borrowing money for acquisition of mortgages and interests in
            land&lt;/catchphrase&gt;
        &lt;catchphrase&gt;Trading in promissory notes&lt;/catchphrase&gt;
        &lt;catchphrase&gt;Whether subject to The Securities Act --Order of Securities Commission removing
            exemption&lt;/catchphrase&gt;
        &lt;catchphrase&gt;Whether sections of The Securities Act dealing with promissory notes ultra
            vires Provincial Legislature&lt;/catchphrase&gt;
        &lt;catchphrase&gt;The Securities Act, S.S 1954, c. 89, s. 20(2), (3)&lt;/catchphrase&gt;
        &lt;catchphrase&gt;B.N.A. Act, 1867, s. 91.&lt;/catchphrase&gt;
    &lt;/catchwords&gt;
&lt;/catchwordgrp&gt;


<b>Becomes</b>


&lt;classify:classification classscheme="catchwords"&gt;
    &lt;classify:classitem&gt;
        &lt;classify:classitem-identifier&gt;
            &lt;classify:classname&gt;Commercial law&lt;/classify:classname&gt;
        &lt;/classify:classitem-identifier&gt;
    &lt;/classify:classitem&gt;
    &lt;classify:classitem&gt;
        &lt;classify:classitem-identifier&gt;
            &lt;classify:classname&gt;Business of borrowing money for acquisition of mortgages and
                interests in land&lt;/classify:classname&gt;
        &lt;/classify:classitem-identifier&gt;
    &lt;/classify:classitem&gt;
    &lt;classify:classitem&gt;
        &lt;classify:classitem-identifier&gt;
            &lt;classify:classname&gt;Whether subject to The Securities Act --Order of Securities
                Commission removing exemption&lt;/classify:classname&gt;
        &lt;/classify:classitem-identifier&gt;
    &lt;/classify:classitem&gt;
    &lt;classify:classitem&gt;
        &lt;classify:classitem-identifier&gt;
            &lt;classify:classname&gt;Whether sections of The Securities Act dealing with promissory notes
                ultra vires Provincial Legislature&lt;/classify:classname&gt;
        &lt;/classify:classitem-identifier&gt;
    &lt;/classify:classitem&gt;
    &lt;classify:classitem&gt;
        &lt;classify:classitem-identifier&gt;
            &lt;classify:classname&gt;The Securities Act, S.S 1954, c. 89, s. 20(2),
                (3)&lt;/classify:classname&gt;
        &lt;/classify:classitem-identifier&gt;
    &lt;/classify:classitem&gt;
    &lt;classify:classitem&gt;
        &lt;classify:classitem-identifier&gt;
            &lt;classify:classname&gt;B.N.A. Act, 1867, s. 91.&lt;/classify:classname&gt;
        &lt;/classify:classitem-identifier&gt;
    &lt;/classify:classitem&gt;
&lt;/classify:classification&gt;

          </pre><note>Handling
                            of a special scenario occurred within
                                <sourcexml>catchwordgrp</sourcexml> which contains
                                <sourcexml>heading/title</sourcexml> along with value
                                <sourcexml>"Catchwords:" ONLY</sourcexml>. In this scenario, if
                            element <sourcexml>heading/title</sourcexml> contains only
                                <sourcexml>"Catchwords:"</sourcexml>, then conversion will suppress
                            it and rest conversion will be same for
                                <sourcexml>catchwordgrp</sourcexml> as given above.</note> For more
                        details please see below input and output examples. <pre>

&lt;catchwordgrp&gt;
    &lt;heading&gt;
        &lt;title&gt;Catchwords:&lt;/title&gt;
    &lt;/heading&gt;
    &lt;catchwords&gt;
        &lt;catchphrase&gt;Labour relations&lt;/catchphrase&gt;
        &lt;catchphrase&gt;Collective agreements&lt;/catchphrase&gt;
        &lt;catchphrase&gt;Pension plan&lt;/catchphrase&gt;
        &lt;catchphrase&gt;Jurisdiction of grievance arbitrator&lt;/catchphrase&gt;
        &lt;catchphrase&gt;Collective agreements referring expressly to pension plan
            established by university&lt;/catchphrase&gt;
        &lt;catchphrase&gt;Motion for authorization to institute class action filed in
            Superior Court by unionized employee disagreeing with decisions made by
            university respecting administration and use of pension fund&lt;/catchphrase&gt;
        &lt;catchphrase&gt;Majority of members of class action group covered by one of
            collective agreements between university and unions&lt;/catchphrase&gt;
        &lt;catchphrase&gt;Whether this dispute relating to pension plan within jurisdiction
            of Superior Court or of grievance arbitrator.&lt;/catchphrase&gt;
    &lt;/catchwords&gt;
&lt;/catchwordgrp&gt;
                
            </pre>
                        <b>Becomes</b>
                        <pre>

&lt;classify:classification classscheme="catchwords"&gt;
    &lt;classify:classitem&gt;
        &lt;classify:classitem-identifier&gt;
            &lt;classify:classname&gt;Labour relations&lt;/classify:classname&gt;
        &lt;/classify:classitem-identifier&gt;
    &lt;/classify:classitem&gt;
    &lt;classify:classitem&gt;
        &lt;classify:classitem-identifier&gt;
            &lt;classify:classname&gt;Collective agreements&lt;/classify:classname&gt;
        &lt;/classify:classitem-identifier&gt;
    &lt;/classify:classitem&gt;
    &lt;classify:classitem&gt;
        &lt;classify:classitem-identifier&gt;
            &lt;classify:classname&gt;Pension plan&lt;/classify:classname&gt;
        &lt;/classify:classitem-identifier&gt;
    &lt;/classify:classitem&gt;
    &lt;classify:classitem&gt;
        &lt;classify:classitem-identifier&gt;
            &lt;classify:classname&gt;Jurisdiction of grievance arbitrator&lt;/classify:classname&gt;
        &lt;/classify:classitem-identifier&gt;
    &lt;/classify:classitem&gt;
    &lt;classify:classitem&gt;
        &lt;classify:classitem-identifier&gt;
            &lt;classify:classname&gt;Collective agreements referring expressly to pension plan
                established by university&lt;/classify:classname&gt;
        &lt;/classify:classitem-identifier&gt;
    &lt;/classify:classitem&gt;
    &lt;classify:classitem&gt;
        &lt;classify:classitem-identifier&gt;
            &lt;classify:classname&gt;Motion for authorization to institute class action filed in
                Superior Court by unionized employee disagreeing with decisions made by
                university respecting administration and use of pension fund&lt;/classify:classname&gt;
        &lt;/classify:classitem-identifier&gt;
    &lt;/classify:classitem&gt;
    &lt;classify:classitem&gt;
        &lt;classify:classitem-identifier&gt;
            &lt;classify:classname&gt;Majority of members of class action group covered by one of
                collective agreements between university and unions&lt;/classify:classname&gt;
        &lt;/classify:classitem-identifier&gt;
    &lt;/classify:classitem&gt;
    &lt;classify:classitem&gt;
        &lt;classify:classitem-identifier&gt;
            &lt;classify:classname&gt;Whether this dispute relating to pension plan within jurisdiction
                of Superior Court or of grievance arbitrator.&lt;/classify:classname&gt;
        &lt;/classify:classitem-identifier&gt;
    &lt;/classify:classitem&gt;
&lt;/classify:classification&gt;
                
            </pre>
                    </li>
                </ul>
            </section>
        </body>
    </dita:topic>

    <!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
    <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA02-Case_Summaries\CA02DS_DIGESTDOC_to_seclaw\catchwordgrp.dita  -->

    <!-- Vikas Rohilla : Template match the  catchwordgrp and process the childs except heading 	-->
    <xsl:template match="catchwordgrp">
        <xsl:apply-templates select="node() except heading | @*"/>
    </xsl:template>
    
    <!-- Vikas Rohilla : Template match the catchwords nad creates the classify:classification    -->
    <xsl:template match="catchwords">
        <classify:classification>
            <xsl:attribute name="classscheme">
                <xsl:text>catchwords</xsl:text>
            </xsl:attribute>
            <xsl:apply-templates select="@*,preceding-sibling::heading"/>
            <xsl:apply-templates select="node() except page"/>
        </classify:classification>
        <xsl:if test="child::page">
            <classify:classification>
                <classify:classitem>
                    <classify:classitem-identifier>
                        <classify:classname>
                            <xsl:apply-templates select="page"/>
                        </classify:classname>
                    </classify:classitem-identifier>
                </classify:classitem>
            </classify:classification>
        </xsl:if>
    </xsl:template>
    
    <!-- Vikas Rohilla : Template match the catchphrase nad process the child nodes    -->
    <xsl:template match="catchphrase">
        <xsl:apply-templates select="@* | node()"/>
    </xsl:template>
  
    <!-- Vikas Rohilla : Template to match the catchwords/catchphrase[not(child::classitem)] with the higher priority -->
    <xsl:template match="catchwords/catchphrase[not(child::classitem)]" priority="25">
        <classify:classitem>
            <classify:classitem-identifier>
                <classify:classname>
                    <xsl:apply-templates select="@* | node()"/>
                </classify:classname>
            </classify:classitem-identifier>
        </classify:classitem>
    </xsl:template>
    
    <!--Vikas Rohilla : Template to match the catchwords/text()[following::catchphrase or preceding::catchphrase]-->
    <xsl:template match="catchwords/text()[following::catchphrase or preceding::catchphrase]">
        <xsl:value-of select="replace(., '[^a-zA-Z0-9]', ' ')"/>
    </xsl:template>

    <!-- Vikas Rohilla : Template to match the catchwords/catchphrase and process the child nodes-->
    <xsl:template match="catchwords/catchphrase">
        <xsl:apply-templates select="@* | node()"/>
    </xsl:template>
    
    <!-- Vikas Rohilla : Tempalte to match the catchwordgrp/heading nad cteate the heading   -->
    <xsl:template match="catchwordgrp/heading">
        <heading>
            <xsl:apply-templates select="@* | node()"/>
        </heading>
    </xsl:template>


</xsl:stylesheet>
