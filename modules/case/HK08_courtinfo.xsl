<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
    xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
    xmlns:case="http://www.lexis-nexis.com/glp/case" 
    xmlns:source_cttr="http://www.lexis-nexis.com/glp/cttr" 
    xmlns:courtcase="http://www.lexisnexis.com/xmlschemas/content/legal/courtcase/1/" 
    xmlns:cttr="urn:x-lexisnexis:content:citator:sharedservices:1" 
    xmlns:dc="http://purl.org/dc/elements/1.1/" 
    xmlns:decision="http://www.lexisnexis.com/xmlschemas/content/legal/decision/1/" 
    xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" 
    xmlns:jurisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/jurisdiction-info/1/" 
    xmlns:location="http://www.lexisnexis.com/xmlschemas/content/shared/location/1/" 
    xmlns:person="http://www.lexisnexis.com/xmlschemas/content/shared/person/1/" 
    xmlns:ln-data="http://www.lexis-nexis.com/glp/ln-data"
    version="2.0" exclude-result-prefixes="dita case source_cttr courtcase dc decision ln-data">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="courtinfo">
    <title>case:courtinfo <lnpid>id-HK08-37618</lnpid></title>
    <body>
        <section>
            <ul>
                <li class="- topic/li ">
                    <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:courtinfo</sourcexml>
                    the content consist of and it's maintained in the following three elements :
                        <targetxml class="+ topic/keyword xml-d/targetxml ">jurisinfo:courtinfo</targetxml>, <targetxml class="+ topic/keyword xml-d/targetxml ">courtcase:judges</targetxml> and
                        <targetxml class="+ topic/keyword xml-d/targetxml ">decision:dates</targetxml> and the children are populated as below : <ul class="- topic/ul ">
                        <li class="- topic/li ">
                            <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:courtinfo/case:courtname</sourcexml> becomes <targetxml class="+ topic/keyword xml-d/targetxml ">jurisinfo:courtinfo/jurisinfo:courtname</targetxml>
                            <pre xml:space="preserve" class="- topic/pre ">

&lt;case:courtinfo&gt;...             
    &lt;case:courtname&gt;HCA&lt;/case:courtname&gt;
&lt;/case:courtinfo&gt;
<b class="+ topic/ph hi-d/b ">Becomes</b>

&lt;jurisinfo:courtinfo&gt;...            
    &lt;jurisinfo:courtname&gt;HCA&lt;/jurisinfo:courtname&gt;
&lt;/jurisinfo:courtinfo&gt;                
                  </pre>
                            <lines/>
                        </li>
                        <li class="- topic/li "> The element <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:courtcode</sourcexml>
                            becomes <targetxml class="+ topic/keyword xml-d/targetxml ">jurisinfo:courtinfo/jurisinfo:alternatecourtcode/@alternatecourtcode</targetxml>
                            and create <targetxml class="+ topic/keyword xml-d/targetxml ">doc:legacy-metadata/meta/metaitem</targetxml> and the attributes
                            will be populated as <targetxml class="+ topic/keyword xml-d/targetxml ">@name="case:courtcode"</targetxml> and <targetxml class="+ topic/keyword xml-d/targetxml ">@value</targetxml> will be
                            the value of <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:courtcode</sourcexml>. <note class="- topic/note ">PLEASE NOTE
                                that the element <sourcexml class="+ topic/keyword xml-d/sourcexml ">doc:legacy-metadata</sourcexml> needs to be created only for
                                    <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:courtcode</sourcexml> occurring within <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:headnote/case:info/case:courtinfo</sourcexml>. There is NO
                                NEED to create <sourcexml class="+ topic/keyword xml-d/sourcexml ">doc:legacy-metadata</sourcexml> for all other occurrences, eg.,
                                    <sourcexml class="+ topic/keyword xml-d/sourcexml ">cttr:annot/case:info/case:courtinfo</sourcexml>. The element
                                    <sourcexml class="+ topic/keyword xml-d/sourcexml ">cttr:annot/case:info/case:courtinfo/case:courtcode</sourcexml>
                                becomes <targetxml class="+ topic/keyword xml-d/targetxml ">jurisinfo:courtinfo/jurisinfo:alternatecourtcode/@alternatecourtcode</targetxml>.</note>
                            <pre xml:space="preserve" class="- topic/pre ">

&lt;case:courtinfo&gt;...               
    &lt;case:courtcode&gt;HCA&lt;/case:courtcode&gt;
&lt;/case:courtinfo&gt;
<b class="+ topic/ph hi-d/b ">Becomes</b>

&lt;jurisinfo:courtinfo&gt;
   &lt;jurisinfo:alternatecourtcode alternatecourtcode="HCA"/&gt;
&lt;/jurisinfo:courtinfo&gt;

&lt;doc:legacy-metadata metadatasource="lbu-meta"&gt;...               
    &lt;meta&gt;
        &lt;metaitem name="case:courtcode" value="HCA"/&gt;
    &lt;/meta&gt;
&lt;/doc:legacy-metadata&gt;                                         
</pre>
                            <lines/>
                        </li>
                        <li class="- topic/li ">
                            <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:judges</sourcexml> becomes <targetxml class="+ topic/keyword xml-d/targetxml ">cttr:caseinfo/courtcase:judges</targetxml> and the children are
                            populated as below : <ul class="- topic/ul ">
                                <li class="- topic/li ">
                                    <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:judge</sourcexml> becomes <targetxml class="+ topic/keyword xml-d/targetxml ">person:judge/person:person/person:name.text</targetxml>
                                </li>
                            </ul>
                            <pre xml:space="preserve" class="- topic/pre ">

&lt;case:judges&gt;
    &lt;case:judge&gt;Mason CJ&lt;/case:judge&gt;
    &lt;case:judge&gt;, Wilson&lt;/case:judge&gt;
    &lt;case:judge&gt;, Deane&lt;/case:judge&gt;
    &lt;case:judge&gt;, Dawson and Toohey JJ&lt;/case:judge&gt;
&lt;/case:judges&gt;

<b class="+ topic/ph hi-d/b ">Becomes</b>

&lt;courtcase:judges&gt;
    &lt;person:judge&gt;
        &lt;person:person&gt;
            &lt;person:name.text&gt;Mason CJ&lt;/person:name.text&gt;
        &lt;/person:person&gt;
    &lt;/person:judge&gt;
    &lt;person:judge&gt;
        &lt;person:person&gt;
            &lt;person:name.text&gt;, Wilson&lt;/person:name.text&gt;
        &lt;/person:person&gt;
    &lt;/person:judge&gt;
    &lt;person:judge&gt;
        &lt;person:person&gt;
            &lt;person:name.text&gt;, Deane&lt;/person:name.text&gt;
        &lt;/person:person&gt;
    &lt;/person:judge&gt;
    &lt;person:judge&gt;
        &lt;person:person&gt;
            &lt;person:name.text&gt;, Dawson and Toohey JJ&lt;/person:name.text&gt;
        &lt;/person:person&gt;
    &lt;/person:judge&gt;
&lt;/courtcase:judges&gt;
                
</pre>
                            <lines/>
                        </li>
                        <li class="- topic/li ">
                            <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:dates</sourcexml> becomes <targetxml class="+ topic/keyword xml-d/targetxml ">decision:dates</targetxml>
                            and the children are populated as below : <ul class="- topic/ul ">
                                <li class="- topic/li ">
                                    <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:dates/case:decisiondate</sourcexml> becomes <targetxml class="+ topic/keyword xml-d/targetxml ">decision:dates/decision:decisiondate</targetxml> and the
                                    children are populated as below: <ul class="- topic/ul ">
                                        <li class="- topic/li ">
                                            <sourcexml class="+ topic/keyword xml-d/sourcexml ">date</sourcexml> becomes <targetxml class="+ topic/keyword xml-d/targetxml ">date-text</targetxml>; the conversion also covers
                                            the attributes <sourcexml class="+ topic/keyword xml-d/sourcexml ">@day</sourcexml> becomes <targetxml class="+ topic/keyword xml-d/targetxml ">decision:decisiondate/@day</targetxml>
                                            <sourcexml class="+ topic/keyword xml-d/sourcexml ">@month</sourcexml> becomes <targetxml class="+ topic/keyword xml-d/targetxml ">decision:decisiondate/@month</targetxml>
                                            <sourcexml class="+ topic/keyword xml-d/sourcexml ">@year</sourcexml> becomes <targetxml class="+ topic/keyword xml-d/targetxml ">decision:decisiondate/@year</targetxml>
                                        </li>
                                    </ul>
                                    <note class="- topic/note ">Please note that the schema allows
                                        @day to be a single digit and hence the leading zero is not
                                        required in the <targetxml class="+ topic/keyword xml-d/targetxml ">decision:decisiondate @day</targetxml>.</note>
                                    <note>Please note that the attribute
                                            <targetxml>decision:decisiondate/@normdate</targetxml>
                                        needs to be populated for all the
                                            <targetxml>decision:decisiondate</targetxml> for sorting
                                        purposes. Please see the example below for more details : </note>
                                    <pre xml:space="preserve" class="- topic/pre ">

&lt;case:dates&gt;
    &lt;case:decisiondate&gt;&lt;date day="08" month="02" year="1989"&gt;8/2/1989&lt;/date&gt;&lt;/case:decisiondate&gt;
&lt;/case:dates&gt;

<b class="+ topic/ph hi-d/b ">Becomes</b>

&lt;decision:dates&gt;
    &lt;decision:decisiondate day="8" month="02" year="1989" normdate="1989-02-08"&gt;
        &lt;date-text&gt;8/2/1989&lt;/date-text&gt;
    &lt;/decision:decisiondate&gt;
&lt;/decision:dates&gt;
                
</pre>
                                    <lines/>
                                </li>
                            </ul>
                        </li>
                        <li class="- topic/li ">
                            <p class="- topic/p ">There are two scenarios in handling of <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:juris</sourcexml>
                                based on the value:</p>
                            <p class="- topic/p ">
                                <b class="+ topic/ph hi-d/b ">Scenario 1: The value of <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:juris</sourcexml> represents a country</b></p>
                            <p class="- topic/p ">The following values are countries, described here
                                in format X(Y) where X is the source value and Y is the target
                                code:</p>
                            <p class="- topic/p ">BEL(BZ), CAN(CA), CTH(AU), EUR(EU), FJ(FJ),
                                FRA(FR), FRG(DE), HK(HK), IND(IN), IRE(IE), ISR(IL), JAM(JM),
                                JAP(JP), MA(MY), NI(NF), NIF(NF), NIS(NF), NZ(NZ), PAK(PK), PNG(PG),
                                PRC(CN), SAF(ZA), SNG(SG), T&amp;T(TT), UK(GB), UN(UN), US(US)</p>
                            <lines/>
                            <p class="- topic/p "><sourcexml class="+ topic/keyword xml-d/sourcexml ">case:info/case:courtinfo/case:juris</sourcexml> maps to three
                                places:</p>
                            <ul class="- topic/ul ">
                                <li class="- topic/li ">
                                    <targetxml class="+ topic/keyword xml-d/targetxml ">cttr:citeddecision/cttr:caseinfo/jurisinfo:courtinfo/jurisinfo:jurisdiction</targetxml>
                                    with children: <ul>
                                        <li><targetxml class="+ topic/keyword xml-d/targetxml ">jurisinfo:location/location:country[@codescheme="ISO-3166-1"
                                                @countrycode="Y"]</targetxml> where "Y" is the
                                            target code provided above. The <targetxml class="+ topic/keyword xml-d/targetxml ">@codescheme</targetxml> value is hard-coded.</li>
                                        <li><targetxml class="+ topic/keyword xml-d/targetxml ">jurisinfo:system</targetxml> populated with the
                                            source value.</li>
                                    </ul></li>
                                <li class="- topic/li "><targetxml class="+ topic/keyword xml-d/targetxml ">dc:metadata/dc:coverage/location:country[@codescheme="ISO-3166-1"
                                        @countrycode="Y"]</targetxml> where "Y" is the target code
                                    provided above. The <targetxml class="+ topic/keyword xml-d/targetxml ">@codescheme</targetxml> value is hard-coded.</li>
                            </ul>
                            <note class="- topic/note ">The source values are <b>not</b> case
                                sensitive, e.g. may be CTH or Cth. The most common data are for
                                Australia and New Zealand, CTH(AU) and NZ(NZ). The others are less
                                frequent.</note>
                            <note class="- topic/note ">The country listing above shows three source
                                values with same target code (NF). That is correct.</note>
                            <pre xml:space="preserve" class="- topic/pre ">
&lt;case:juris&gt;CTH&lt;/case:juris&gt;
              
<b class="+ topic/ph hi-d/b ">Becomes</b>    
              
&lt;jurisinfo:courtinfo&gt;
    &lt;jurisinfo:jurisdiction&gt;
        &lt;jurisinfo:location&gt;
            &lt;location:country codescheme="ISO-3166-1" countrycode="AU"/&gt;
        &lt;/jurisinfo:location&gt;
        &lt;jurisinfo:system&gt;CTH&lt;/jurisinfo:system&gt;
    &lt;/jurisinfo:jurisdiction&gt;
&lt;/jurisinfo:courtinfo&gt;
                                    
&lt;dc:metadata&gt;...
    &lt;dc:coverage&gt;
        &lt;location:country codescheme="ISO-3166-1" countrycode="AU"/&gt;
    &lt;/dc:coverage&gt;
&lt;/dc:metadata&gt;             
</pre>
                            <lines/>
                            <p class="- topic/p ">
                                <b class="+ topic/ph hi-d/b ">Scenario 2: The value of <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:juris</sourcexml> represents an Australian
                                State</b></p>
                            <p class="- topic/p ">The following values are Australian States,
                                described here in format X(Y) where X is the source value and Y is
                                the target code:</p>
                            <p class="- topic/p ">ACT(AU-CT), NSW(AU-NS), NT(AU-NT), QLD(AU-QL),
                                SA(AU-SA), TAS(AU-TS), VIC(AU-VI), WA(AU-WA)</p>
                            <lines/>
                            <p class="- topic/p "><sourcexml class="+ topic/keyword xml-d/sourcexml ">case:info/case:courtinfo/case:juris</sourcexml> maps to three
                                places:</p>
                            <ul class="- topic/ul ">
                                <li class="- topic/li ">
                                    <targetxml class="+ topic/keyword xml-d/targetxml ">cttr:citeddecision/cttr:caseinfo/jurisinfo:courtinfo/jurisinfo:jurisdiction</targetxml>
                                    with children: <ul>
                                        <li><targetxml class="+ topic/keyword xml-d/targetxml ">jurisinfo:location/location:country[@codescheme="ISO-3166-1"
                                                @countrycode="AU"]</targetxml>. The attribute values
                                            are hard-coded.</li>
                                        <li><targetxml class="+ topic/keyword xml-d/targetxml ">jurisinfo:system</targetxml> populated with the
                                            source value.</li>
                                    </ul></li>
                                <li class="- topic/li "><targetxml class="+ topic/keyword xml-d/targetxml ">dc:metadata/dc:coverage/location:state[@codescheme="ISO-3166-2"
                                        @statecode="Y"]</targetxml> where "Y" is the target code
                                    provided above. The <targetxml class="+ topic/keyword xml-d/targetxml ">@codescheme</targetxml> value is hard-coded.</li>
                            </ul>
                            <note>This difference is correct: <targetxml class="+ topic/keyword xml-d/targetxml ">jurisinfo:location</targetxml> has child <targetxml class="+ topic/keyword xml-d/targetxml ">location:country</targetxml>. And <targetxml class="+ topic/keyword xml-d/targetxml ">dc:coverage</targetxml>
                                has child <targetxml class="+ topic/keyword xml-d/targetxml ">location:state</targetxml>.</note>
                            <pre xml:space="preserve" class="- topic/pre ">
&lt;case:juris&gt;NSW&lt;/case:juris&gt;
              
<b class="+ topic/ph hi-d/b ">Becomes</b>
              
&lt;jurisinfo:courtinfo&gt;
    &lt;jurisinfo:jurisdiction&gt;
        &lt;jurisinfo:location&gt;
            &lt;location:country codescheme="ISO-3166-1" countrycode="AU"/&gt;
        &lt;/jurisinfo:location&gt;
        &lt;jurisinfo:system&gt;NSW&lt;/jurisinfo:system&gt;
    &lt;/jurisinfo:jurisdiction&gt;
&lt;/jurisinfo:courtinfo&gt;
                                  
&lt;dc:metadata&gt;...
    &lt;dc:coverage&gt;
        &lt;location:state codescheme="ISO-3166-2" statecode="AU-NS"/&gt;
    &lt;/dc:coverage&gt;
&lt;/dc:metadata&gt;             
</pre>
                            <lines/>
                        </li>
                    </ul>
                </li>
            </ul>
        </section>
        <section>
            <title>Changes</title>
            <p>2016-04-19: <ph id="change_20160419_AS">Created.</ph></p>
        </section>
    </body>
	</dita:topic>

    <ln-data:countryValuePairs>
        <ln-data:pair>
            <ln-data:orgCountryValue>BEL</ln-data:orgCountryValue>
            <ln-data:targetCountryValue>BZ</ln-data:targetCountryValue>
        </ln-data:pair> 
        <ln-data:pair>
            <ln-data:orgCountryValue>CAN</ln-data:orgCountryValue>
            <ln-data:targetCountryValue>CA</ln-data:targetCountryValue>
        </ln-data:pair>
        <ln-data:pair>
            <ln-data:orgCountryValue>CTH</ln-data:orgCountryValue>
            <ln-data:targetCountryValue>AU</ln-data:targetCountryValue>
        </ln-data:pair>
        <ln-data:pair>
            <ln-data:orgCountryValue>EUR</ln-data:orgCountryValue>
            <ln-data:targetCountryValue>EU</ln-data:targetCountryValue>
        </ln-data:pair>
        <ln-data:pair>
            <ln-data:orgCountryValue>FJ</ln-data:orgCountryValue>
            <ln-data:targetCountryValue>FJ</ln-data:targetCountryValue>
        </ln-data:pair>
        <ln-data:pair>
            <ln-data:orgCountryValue>FRA</ln-data:orgCountryValue>
            <ln-data:targetCountryValue>FR</ln-data:targetCountryValue>
        </ln-data:pair>
        <ln-data:pair>
            <ln-data:orgCountryValue>FRG</ln-data:orgCountryValue>
            <ln-data:targetCountryValue>DE</ln-data:targetCountryValue>
        </ln-data:pair>
        <ln-data:pair>
            <ln-data:orgCountryValue>HK</ln-data:orgCountryValue>
            <ln-data:targetCountryValue>HK</ln-data:targetCountryValue>
        </ln-data:pair>
        <ln-data:pair>
            <ln-data:orgCountryValue>IND</ln-data:orgCountryValue>
            <ln-data:targetCountryValue>IN</ln-data:targetCountryValue>
        </ln-data:pair>
        <ln-data:pair>
            <ln-data:orgCountryValue>IRE</ln-data:orgCountryValue>
            <ln-data:targetCountryValue>IE</ln-data:targetCountryValue>
        </ln-data:pair>
        <ln-data:pair>
            <ln-data:orgCountryValue>ISR</ln-data:orgCountryValue>
            <ln-data:targetCountryValue>IL</ln-data:targetCountryValue>
        </ln-data:pair>
        <ln-data:pair>
            <ln-data:orgCountryValue>JAM</ln-data:orgCountryValue>
            <ln-data:targetCountryValue>JM</ln-data:targetCountryValue>
        </ln-data:pair>
        <ln-data:pair>
            <ln-data:orgCountryValue> JAP</ln-data:orgCountryValue>
            <ln-data:targetCountryValue>JP</ln-data:targetCountryValue>
        </ln-data:pair>
        <ln-data:pair>
            <ln-data:orgCountryValue>MA</ln-data:orgCountryValue>
            <ln-data:targetCountryValue>MY</ln-data:targetCountryValue>
        </ln-data:pair>
        <ln-data:pair>
            <ln-data:orgCountryValue>NI</ln-data:orgCountryValue>
            <ln-data:targetCountryValue>NF</ln-data:targetCountryValue>
        </ln-data:pair>
        <ln-data:pair>
            <ln-data:orgCountryValue>NIF</ln-data:orgCountryValue>
            <ln-data:targetCountryValue>NF</ln-data:targetCountryValue>
        </ln-data:pair>
        <ln-data:pair>
            <ln-data:orgCountryValue>NIS</ln-data:orgCountryValue>
            <ln-data:targetCountryValue>NF</ln-data:targetCountryValue>
        </ln-data:pair>
        <ln-data:pair>
            <ln-data:orgCountryValue>NZ</ln-data:orgCountryValue>
            <ln-data:targetCountryValue>NZ</ln-data:targetCountryValue>
        </ln-data:pair>
        <ln-data:pair>
            <ln-data:orgCountryValue>PAK</ln-data:orgCountryValue>
            <ln-data:targetCountryValue>PK</ln-data:targetCountryValue>
        </ln-data:pair>
        <ln-data:pair>
            <ln-data:orgCountryValue>PNG</ln-data:orgCountryValue>
            <ln-data:targetCountryValue>PG</ln-data:targetCountryValue>
        </ln-data:pair>
        <ln-data:pair>
            <ln-data:orgCountryValue>PRC</ln-data:orgCountryValue>
            <ln-data:targetCountryValue>CN</ln-data:targetCountryValue>
        </ln-data:pair>
        <ln-data:pair>
            <ln-data:orgCountryValue>SAF</ln-data:orgCountryValue>
            <ln-data:targetCountryValue>ZA</ln-data:targetCountryValue>
        </ln-data:pair>
        <ln-data:pair>
            <ln-data:orgCountryValue>SNG</ln-data:orgCountryValue>
            <ln-data:targetCountryValue>SG</ln-data:targetCountryValue>
        </ln-data:pair>
        <ln-data:pair>
            <ln-data:orgCountryValue>T&amp;T</ln-data:orgCountryValue>
            <ln-data:targetCountryValue>TT</ln-data:targetCountryValue>
        </ln-data:pair>
        <ln-data:pair>
            <ln-data:orgCountryValue>UK</ln-data:orgCountryValue>
            <ln-data:targetCountryValue>GB</ln-data:targetCountryValue>
        </ln-data:pair>
        <ln-data:pair>
            <ln-data:orgCountryValue>UN</ln-data:orgCountryValue>
            <ln-data:targetCountryValue>UN</ln-data:targetCountryValue>
        </ln-data:pair>
        <ln-data:pair>
            <ln-data:orgCountryValue>US</ln-data:orgCountryValue>
            <ln-data:targetCountryValue>US</ln-data:targetCountryValue>
        </ln-data:pair>
        <ln-data:pair>
            <ln-data:orgCountryValue>ACT</ln-data:orgCountryValue>
            <ln-data:targetCountryValue>AU-CT</ln-data:targetCountryValue>
        </ln-data:pair>
        <ln-data:pair>
            <ln-data:orgCountryValue>NSW</ln-data:orgCountryValue>
            <ln-data:targetCountryValue>AU-NS</ln-data:targetCountryValue>
        </ln-data:pair>
        <ln-data:pair>
            <ln-data:orgCountryValue>NT</ln-data:orgCountryValue>
            <ln-data:targetCountryValue>AU-NT</ln-data:targetCountryValue>
        </ln-data:pair>
        <ln-data:pair>
            <ln-data:orgCountryValue>QLD</ln-data:orgCountryValue>
            <ln-data:targetCountryValue>AU-QL</ln-data:targetCountryValue>
        </ln-data:pair>
        <ln-data:pair>
            <ln-data:orgCountryValue>SA</ln-data:orgCountryValue>
            <ln-data:targetCountryValue>AU-SA</ln-data:targetCountryValue>
        </ln-data:pair>
        <ln-data:pair>
            <ln-data:orgCountryValue>TAS</ln-data:orgCountryValue>
            <ln-data:targetCountryValue>AU-TS</ln-data:targetCountryValue>
        </ln-data:pair>
        <ln-data:pair>
            <ln-data:orgCountryValue>VIC</ln-data:orgCountryValue>
            <ln-data:targetCountryValue>AU-VI</ln-data:targetCountryValue>
        </ln-data:pair>
        <ln-data:pair>
            <ln-data:orgCountryValue>WA</ln-data:orgCountryValue>
            <ln-data:targetCountryValue>AU-WA</ln-data:targetCountryValue>
        </ln-data:pair>
        </ln-data:countryValuePairs>
    <xsl:key name="keyCountryCodePairs" match="ln-data:pair" use="ln-data:orgCountryValue"/>
    
    <xsl:variable name="countryCodePair" select="document('')/*/ln-data:countryValuePairs"/>
    
    <xsl:template match="case:info/case:courtinfo/case:juris"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->
        
        <!--  Original Target XPath:  cttr:citeddecision/cttr:caseinfo/jurisinfo:courtinfo/jurisinfo:jurisdiction   -->
                    <jurisinfo:jurisdiction>
                        <jurisinfo:location>
                            <location:country>
                                <xsl:attribute name="countrycode">
                                    <xsl:apply-templates select="$countryCodePair">
                                        <xsl:with-param name="currentCountryCode" select="upper-case(.)"/>
                                    </xsl:apply-templates>
                                </xsl:attribute>
                                <xsl:attribute name="codescheme">ISO-3166-1</xsl:attribute>
                            </location:country>
                        </jurisinfo:location>
                        <jurisinfo:system>
                            <xsl:value-of select="."/>
                        </jurisinfo:system>
                    </jurisinfo:jurisdiction>
        
    </xsl:template>
    
    <xsl:template match="ln-data:countryValuePairs">
        <xsl:param name="currentCountryCode"/>
        <xsl:value-of select="key('keyCountryCodePairs', $currentCountryCode)/ln-data:targetCountryValue"/>
    </xsl:template>
    
	<xsl:template match="case:courtinfo">
		<!--  Original Target XPath:  jurisinfo:courtinfo 
		JL: output schema is ordered-->
		<jurisinfo:courtinfo>		    
			<xsl:apply-templates select="@*"/>		    
		    <xsl:apply-templates select="case:courtcode"/>
		    <xsl:apply-templates select="case:courtname"/>
		    <xsl:apply-templates select="case:juris"/>
		</jurisinfo:courtinfo>
	    <xsl:apply-templates select="case:judges|case:dates"/>

	</xsl:template>

	<xsl:template match="case:courtname">

		<!--  Original Target XPath:  jurisinfo:courtinfo/jurisinfo:courtname   -->
			<jurisinfo:courtname>
				<xsl:apply-templates select="@* | node()"/>
			</jurisinfo:courtname>
		

	</xsl:template>

	<xsl:template match="case:courtcode">
		<!--  Original Target XPath:  jurisinfo:courtinfo/jurisinfo:alternatecourtcode/@alternatecourtcode   -->
			<jurisinfo:alternatecourtcode>
				<xsl:attribute name="alternatecourtcode">
					<xsl:value-of select="."/>
				</xsl:attribute>
			</jurisinfo:alternatecourtcode>
	</xsl:template>

    <xsl:template match="case:headnote/case:info/case:courtinfo/case:courtcode" mode="metadata">
        <metaitem xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
            <xsl:attribute name="name" select="'case:courtcode'"/>
            <xsl:attribute name="value" select="."/>
        </metaitem>
    </xsl:template>

	<xsl:template match="case:judges">

		<!--  Original Target XPath:  cttr:caseinfo/courtcase:judges   -->
			<courtcase:judges>
				<xsl:apply-templates select="@* | node()"/>
			</courtcase:judges>
		

	</xsl:template>

	<xsl:template match="case:judge">

		<!--  Original Target XPath:  person:judge/person:person/person:name.text   -->
		<person:judge>
			<person:person>
				<person:name.text>
					<xsl:apply-templates select="@* | node()"/>
				</person:name.text>
			</person:person>
		</person:judge>

	</xsl:template>

	<xsl:template match="case:dates">

		<!--  Original Target XPath:  decision:dates   -->
		<decision:dates>
			<xsl:apply-templates select="@* | node()"/>
		</decision:dates>

	</xsl:template>

	<xsl:template match="case:dates/case:decisiondate">

		<!--  Original Target XPath:  decision:dates/decision:decisiondate   -->
			<decision:decisiondate>
				<xsl:apply-templates select="@*"/>
			    <xsl:if test="date[@year]">
			    <xsl:call-template name="DATE_attributes">
			        <xsl:with-param name="date" select="."/>
			    </xsl:call-template>
			    </xsl:if>
			    <xsl:apply-templates select="node()"/>
			</decision:decisiondate>		

	</xsl:template>

	<xsl:template match="case:decisiondate/date">
		<!--  Original Target XPath:  date-text   -->
	    <date-text  xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
		    <xsl:apply-templates select="node()"/>
		</date-text>

	</xsl:template>
    
    <xsl:template match="case:juris" mode="metadata">
        <dc:coverage>
            <location:country>
                <xsl:attribute name="countrycode">
                    <xsl:apply-templates select="$countryCodePair">
                        <xsl:with-param name="currentCountryCode" select="upper-case(.)"/>
                    </xsl:apply-templates>
                </xsl:attribute>
                <xsl:attribute name="codescheme">ISO-3166-1</xsl:attribute>
            </location:country>
        </dc:coverage>
    </xsl:template>

</xsl:stylesheet>