<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
    xmlns:ln-data="http://www.lexis-nexis.com/glp/ln-data"
    xmlns:source_case="http://www.lexis-nexis.com/glp/case" xmlns:source_cttr="http://www.lexis-nexis.com/glp/cttr" 
    xmlns:cttr="urn:x-lexisnexis:content:citator:sharedservices:1" xmlns:dc="http://purl.org/dc/elements/1.1/" 
    xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" 
    xmlns:jurisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/jurisdiction-info/1/" 
    xmlns:location="http://www.lexisnexis.com/xmlschemas/content/shared/location/1/" 
    xmlns:person="http://www.lexisnexis.com/xmlschemas/content/shared/person/1/" version="2.0" exclude-result-prefixes="dita source_case source_cttr ln-data">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="case.courtinfo">
    <title>courtinfo <lnpid>id-AU02-18416</lnpid></title>
    <body>
        <section>
            <ul>
                <li class="- topic/li ">
                    <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:courtinfo</sourcexml>
                    the content consist of and it's maintained in the following two elements :
                        <targetxml class="+ topic/keyword xml-d/targetxml ">jurisinfo:courtinfo</targetxml>, <targetxml class="+ topic/keyword xml-d/targetxml ">person:contributor</targetxml> and
                    the children are populated as below : <ul class="- topic/ul ">
                        <li class="- topic/li ">
                            <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:judges</sourcexml> becomes <targetxml class="+ topic/keyword xml-d/targetxml ">cttr:citedarticle/person:contributor
                                @contributor-type="author"</targetxml>. The attribute <targetxml class="+ topic/keyword xml-d/targetxml ">person:contributor
                                @contributor-type</targetxml> is required. and the children are
                            populated as below : <ul class="- topic/ul ">
                                <li class="- topic/li ">
                                    <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:judge</sourcexml> becomes <targetxml class="+ topic/keyword xml-d/targetxml ">person:person/person:name.text</targetxml>
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

&lt;cttr:citedarticle&gt;...
    &lt;person:contributor @contributor-type="author"&gt;
        &lt;person:person&gt;
            &lt;person:name.text&gt;Mason CJ&lt;/person:name.text&gt;
        &lt;/person:person&gt;
        &lt;person:person&gt;
            &lt;person:name.text&gt;, Wilson&lt;/person:name.text&gt;
        &lt;/person:person&gt;
        &lt;person:person&gt;
            &lt;person:name.text&gt;, Deane&lt;/person:name.text&gt;
        &lt;/person:person&gt;
        &lt;person:person&gt;
            &lt;person:name.text&gt;, Dawson and Toohey JJ&lt;/person:name.text&gt;
        &lt;/person:person&gt;
    &lt;/person:contributor&gt;
&lt;/cttr:citedarticle&gt;
                
</pre>
                            <lines/>
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
                                FRA(FR), HK(HK), IND(IN), IRE(IE), JAM(JM), JAP(JP), MA(MY), NI(NF),
                                NIF(NF), NIS(NF), NZ(NZ), PAK(PK), PNG(PG), SAF(ZA), SNG(SG),
                                T&amp;T(TT), UK(GB), UN(UN), US(US)</p>
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
                        <li>
                            <sourcexml>case:courtinfo/case:courtname</sourcexml> becomes
                                <targetxml>jurisinfo:courtinfo/jurisinfo:courtname</targetxml>. <pre>

&lt;case:courtinfo&gt;
    &lt;case:courtname&gt;SASC&lt;/case:courtname&gt;
&lt;/case:courtinfo&gt;

<b>Becomes</b>

&lt;jurisinfo:courtinfo&gt;
    &lt;jurisinfo:courtname&gt;SASC&lt;/jurisinfo:courtname&gt;
&lt;/jurisinfo:courtinfo&gt;

</pre>
                        </li>
                        <li> The element <sourcexml>case:courtcode</sourcexml> becomes
                                <targetxml>jurisinfo:courtinfo/jurisinfo:alternatecourtcode/
                                @alternatecourtcode</targetxml> and create
                                <targetxml>doc:legacy-metadata/meta/metaitem</targetxml> and the
                            attributes will be populated as
                                <targetxml>@name="case:courtcode"</targetxml> and
                                <targetxml>@value</targetxml> will be the value of
                                <sourcexml>case:courtcode</sourcexml>. <note>PLEASE NOTE that the
                                element <targetxml>doc:legacy-metadata</targetxml> needs to be
                                created only for <sourcexml>case:courtcode</sourcexml> occurring
                                within
                                <sourcexml>case:headnote/case:info/case:courtinfo</sourcexml>. There
                                is NO NEED to create <targetxml>doc:legacy-metadata</targetxml> for
                                all other occurrences, eg.,
                                    <sourcexml>cttr:annot/case:info/case:courtinfo</sourcexml>. The
                                element
                                    <sourcexml>cttr:annot/case:info/case:courtinfo/case:courtcode</sourcexml>
                                becomes
                                    <targetxml>jurisinfo:courtinfo/jurisinfo:alternatecourtcode/@alternatecourtcode</targetxml>.</note>
                            <pre>

&lt;case:courtinfo&gt;...
    &lt;case:courtcode&gt;SASC&lt;/case:courtcode&gt;
&lt;/case:courtinfo&gt;

<b>Becomes</b>

&lt;jurisinfo:courtinfo&gt;
    &lt;jurisinfo:alternatecourtcode alternatecourtcode="SASC"/&gt;
&lt;/jurisinfo:courtinfo&gt;

&lt;doc:legacy-metadata metadatasource="lbu-meta"&gt;...
    &lt;meta&gt;
        &lt;metaitem name="case:courtcode" value="SASC"/&gt;
    &lt;/meta&gt;
&lt;/doc:legacy-metadata&gt;

</pre>
                        </li>


                    </ul>
                </li>
            </ul>
        </section>
        <section>
            <title>Changes</title>
            <p>2014-06-27: <ph id="change_20140627_jm">New rules for conversion of
                <sourcexml>case:juris</sourcexml> which is described in two scenarios.
                Scenario 1, for country content, was previously set only for Australia and US, now
                expanded to recognize other countries. Both scenarios have additional mappings
                for new target <targetxml>jurisinfo:location/location:country</targetxml>.
                Webteam 258060.</ph></p>
        </section>
    </body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU02_citator\Citator_Journal.courtinfo.dita  -->
   
   
    
    <xsl:variable name="countryCodePairs">
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
            <!--        <ln-data:pair>
            <ln-data:orgCountryValue>FRG</ln-data:orgCountryValue>
            <ln-data:targetCountryValue>DE</ln-data:targetCountryValue>
        </ln-data:pair>-->
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
            <!--<ln-data:pair>
            <ln-data:orgCountryValue>ISR</ln-data:orgCountryValue>
            <ln-data:targetCountryValue>IL</ln-data:targetCountryValue>
        </ln-data:pair>-->
            <ln-data:pair>
                <ln-data:orgCountryValue>JAM</ln-data:orgCountryValue>
                <ln-data:targetCountryValue>JM</ln-data:targetCountryValue>
            </ln-data:pair>
            <ln-data:pair>
                <ln-data:orgCountryValue>JAP</ln-data:orgCountryValue>
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
            <!-- <ln-data:pair>
            <ln-data:orgCountryValue>PRC</ln-data:orgCountryValue>
            <ln-data:targetCountryValue>CN</ln-data:targetCountryValue>
        </ln-data:pair>-->
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
    </xsl:variable>

	<xsl:template match="source_case:courtinfo" mode="citator-journal">
	    <xsl:apply-templates select="source_case:judges" mode="citator-journal"/>
	    <jurisinfo:courtinfo>
	        <xsl:apply-templates select="source_case:courtcode"/>
	        <xsl:apply-templates select="source_case:courtname"/>
	        <xsl:apply-templates select="source_case:juris"/>
	    </jurisinfo:courtinfo>
	</xsl:template>

	<xsl:template match="source_case:judges" mode="citator-journal">
		<person:contributor contributor-type="author">
			<xsl:apply-templates select="@* | node()" mode="citator-journal"/>
		</person:contributor>
	</xsl:template>

	<xsl:template match="source_case:judge" mode="citator-journal">
		<person:person>
			<person:name.text>
				<xsl:apply-templates select="@* | node()"/>
			</person:name.text>
		</person:person>
	</xsl:template>

	<xsl:template match="source_case:juris">
			<jurisinfo:jurisdiction>
			    <jurisinfo:location>
			    <location:country>
			        <xsl:variable name="country-code" select="upper-case(.)"/>			        
			        <xsl:attribute name="countrycode">
			            <xsl:for-each select="$countryCodePairs//ln-data:pair[ln-data:orgCountryValue[.=$country-code]]">			                
			                <xsl:value-of select=" if (contains(ln-data:targetCountryValue , '-')) then substring-before(ln-data:targetCountryValue , '-') else ln-data:targetCountryValue"/>
			            </xsl:for-each>
			        </xsl:attribute>
			        <xsl:attribute name="codescheme">ISO-3166-1</xsl:attribute>
			    </location:country>
			    </jurisinfo:location>
			    <jurisinfo:system>
			        <xsl:value-of select="."/>
			    </jurisinfo:system>
			</jurisinfo:jurisdiction>
	</xsl:template>

	<xsl:template match="source_case:headnote/source_case:info/source_case:courtinfo/source_case:juris" mode="metadata">
		<dc:coverage>
		    <xsl:variable name="source-code" select="upper-case(.)"/>
		    <xsl:for-each select="$countryCodePairs//ln-data:pair[ln-data:orgCountryValue[.=$source-code]]">
		        <xsl:choose>
		            <xsl:when test="contains(ln-data:targetCountryValue , '-')">
		                <location:state>
		                    <xsl:attribute name="statecode">
		                        <xsl:value-of select="ln-data:targetCountryValue"/>		                        
		                    </xsl:attribute>
		                    <xsl:attribute name="codescheme">ISO-3166-2</xsl:attribute>
		                </location:state>
		            </xsl:when>
		            <xsl:otherwise>
		                <location:country>
		                    <xsl:attribute name="countrycode">
		                       <xsl:value-of select="ln-data:targetCountryValue"/>		                        
		                    </xsl:attribute>
		                    <xsl:attribute name="codescheme">ISO-3166-1</xsl:attribute>
		                </location:country>
		            </xsl:otherwise>
		        </xsl:choose>
		    </xsl:for-each>		   
		</dc:coverage>
	</xsl:template>

	<xsl:template match="source_case:courtinfo/source_case:courtname">
		<jurisinfo:courtname>
			<xsl:apply-templates select="@* | node()"/>
		</jurisinfo:courtname>
	</xsl:template>

	<xsl:template match="source_case:courtcode">	
			<jurisinfo:alternatecourtcode>
				<xsl:attribute name="alternatecourtcode">
					<xsl:apply-templates/>
				</xsl:attribute>
			</jurisinfo:alternatecourtcode>
	</xsl:template>

	<xsl:template match="source_case:headnote/source_case:info/source_case:courtinfo/source_case:courtcode" mode="metadata">
	    <metaitem xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
		    <xsl:attribute name="name">case:courtcode</xsl:attribute>
		    <xsl:attribute name="value" select="."/>
		</metaitem>
	</xsl:template>

	<!--<xsl:template match="cttr:annot/case:info/case:courtinfo"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  jurisinfo:courtinfo/jurisinfo:alternatecourtcode/@alternatecourtcode   -\->
		<jurisinfo:courtinfo>
			<jurisinfo:alternatecourtcode>
				<xsl:attribute name="alternatecourtcode">
					<xsl:apply-templates select="node()"/>
				</xsl:attribute>
			</jurisinfo:alternatecourtcode>
		</jurisinfo:courtinfo>

	</xsl:template>

	<xsl:template match="cttr:annot/case:info/case:courtinfo/case:courtcode"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  jurisinfo:courtinfo/jurisinfo:alternatecourtcode/@alternatecourtcode   -\->
		<jurisinfo:courtinfo>
			<jurisinfo:alternatecourtcode>
				<xsl:attribute name="alternatecourtcode">
					<xsl:apply-templates select="node()"/>
				</xsl:attribute>
			</jurisinfo:alternatecourtcode>
		</jurisinfo:courtinfo>

	</xsl:template>
-->
</xsl:stylesheet>