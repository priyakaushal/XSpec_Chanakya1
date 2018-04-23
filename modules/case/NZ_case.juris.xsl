<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
    xmlns:case="http://www.lexis-nexis.com/glp/case"
    xmlns:jurisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/jurisdiction-info/1/"
    xmlns:location="http://www.lexisnexis.com/xmlschemas/content/shared/location/1/"
    xmlns:dc="http://purl.org/dc/elements/1.1/" version="2.0" exclude-result-prefixes="dita case">

    <dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="casep3">
        <title>AU-case:juris <lnpid>id-AU07-19207</lnpid></title>
        <body>
            <section>
                <lines/>
                <ul>
                    <li class="- topic/li ">
                        <p class="- topic/p ">
                            <b class="+ topic/ph hi-d/b ">The following conversion instruction is
                                specific to AU CourtOrders:</b>
                        </p>

                        <p class="- topic/p ">
                            <b class="+ topic/ph hi-d/b ">Scenario 1:</b> If the value of <sourcexml
                                class="+ topic/keyword xml-d/sourcexml ">case:juris</sourcexml> is
                            'CTH'</p>
                        <ul class="- topic/ul ">
                            <li class="- topic/li ">
                                <sourcexml class="+ topic/keyword xml-d/sourcexml "
                                    >case:info/case:courtinfo/case:juris</sourcexml> becomes
                                    <targetxml class="+ topic/keyword xml-d/targetxml "
                                    >courtorder:head/jurisinfo:courtinfo/jurisinfo:jurisdiction/jurisinfo:system</targetxml>
                                and create <targetxml class="+ topic/keyword xml-d/targetxml "
                                    >dc:metadata/dc:coverage/location:country</targetxml> with
                                attributes <targetxml class="+ topic/keyword xml-d/targetxml "
                                    >@codescheme="ISO-3166-1"</targetxml> and <targetxml
                                    class="+ topic/keyword xml-d/targetxml "
                                    >@countrycode</targetxml>, this is for capturing country value
                                and the nomenclature will be to put the country code (AU). <p
                                    class="- topic/p ">Example : AU CourtOrders</p>
                                <pre xml:space="preserve" class="- topic/pre ">
&lt;case:juris&gt;CTH&lt;/case:juris&gt;
              
<b class="+ topic/ph hi-d/b ">Becomes</b>    
              
&lt;jurisinfo:courtinfo&gt;
    &lt;jurisinfo:jurisdiction&gt;
        &lt;jurisinfo:system&gt;CTH&lt;/jurisinfo:system&gt;
    &lt;/jurisinfo:jurisdiction&gt;
&lt;/jurisinfo:courtinfo&gt;
                                    
&lt;dc:metadata&gt;...
    &lt;dc:coverage&gt;
        &lt;location:country codescheme="ISO-3166-1" countrycode="AU"&gt;&lt;/location:country&gt;
    &lt;/dc:coverage&gt;
&lt;/dc:metadata&gt;             
</pre>
                            </li>
                        </ul>
                        <p class="- topic/p ">
                            <b class="+ topic/ph hi-d/b ">Scenario 2:</b> For all other values of
                                <sourcexml class="+ topic/keyword xml-d/sourcexml "
                                >case:juris</sourcexml>
                        </p>
                        <ul class="- topic/ul ">
                            <li class="- topic/li ">
                                <sourcexml class="+ topic/keyword xml-d/sourcexml "
                                    >case:info/case:courtinfo/case:juris</sourcexml> becomes
                                    <targetxml class="+ topic/keyword xml-d/targetxml "
                                    >courtorder:head/jurisinfo:courtinfo/jurisinfo:jurisdiction/jurisinfo:system</targetxml>
                                and create <targetxml class="+ topic/keyword xml-d/targetxml "
                                    >dc:metadata/dc:coverage/location:state</targetxml> with
                                attributes <targetxml class="+ topic/keyword xml-d/targetxml "
                                    >@codescheme="ISO-3166-2"</targetxml> and <targetxml
                                    class="+ topic/keyword xml-d/targetxml ">@statecode</targetxml>,
                                this is for capturing state value. <note class="- topic/note ">The
                                    following are the state values : ACT(AU-CT), NT(AU-NT),
                                    NSW(AU-NS), VIC(AU-VI), TAS(AU-TS), SA(AU-SA), QLD(AU-QL) and
                                    WA(AU-WA).</note>
                                <pre xml:space="preserve" class="- topic/pre ">
&lt;case:juris&gt;NSW&lt;/case:juris&gt;
              
<b class="+ topic/ph hi-d/b ">Becomes</b>
              
&lt;jurisinfo:courtinfo&gt;
    &lt;jurisinfo:jurisdiction&gt;
        &lt;jurisinfo:system&gt;NSW&lt;/jurisinfo:system&gt;
    &lt;/jurisinfo:jurisdiction&gt;
&lt;/jurisinfo:courtinfo&gt;
                                  
&lt;dc:coverage&gt;
    &lt;location:state codescheme="ISO-3166-2" statecode="AU-NS"&gt;&lt;/location:state&gt;
&lt;/dc:coverage&gt;             
</pre>
                            </li>
                        </ul>

                        <p class="- topic/p "/>
                    </li>
                </ul>
            </section>
        </body>
    </dita:topic>

    <!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
    <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU07_courtorder\AU-case.juris.dita  -->

    <xsl:template match="case:juris">
        <jurisinfo:jurisdiction>           
                <xsl:apply-templates select="preceding-sibling::case:courtloc | following-sibling::case:courtloc"/>
            <jurisinfo:system>
                <xsl:apply-templates/>
            </jurisinfo:system>
        </jurisinfo:jurisdiction>
    </xsl:template>

    <xsl:template match="case:juris" mode="metadata">
        <dc:coverage>
            <location:country codescheme="ISO-3166-1" countrycode="NZ"/>
        </dc:coverage>
    </xsl:template>


</xsl:stylesheet>
