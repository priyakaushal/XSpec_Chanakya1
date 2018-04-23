<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:source_cttr="http://www.lexis-nexis.com/glp/cttr" xmlns:courtcase="http://www.lexisnexis.com/xmlschemas/content/legal/courtcase/1/" xmlns:cttr="urn:x-lexisnexis:content:citator:sharedservices:1" xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns:decision="http://www.lexisnexis.com/xmlschemas/content/legal/decision/1/" xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" xmlns:jurisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/jurisdiction-info/1/" xmlns:location="http://www.lexisnexis.com/xmlschemas/content/shared/location/1/" xmlns:person="http://www.lexisnexis.com/xmlschemas/content/shared/person/1/" version="2.0" exclude-result-prefixes="dita case cttr">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="courtinfo">
   <title>case:courtinfo <lnpid>id-AU20-22224</lnpid></title>
   <body>
      <section>
         <ul><li class="- topic/li ">
                            <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:courtinfo</sourcexml> the content consist of and it's maintained in the following three elements :
                            <targetxml class="+ topic/keyword xml-d/targetxml ">jurisinfo:courtinfo</targetxml>, <targetxml class="+ topic/keyword xml-d/targetxml ">courtcase:judges</targetxml> and <targetxml class="+ topic/keyword xml-d/targetxml ">decision:dates</targetxml> and the children are populated as below : <ul class="- topic/ul ">
                                <li class="- topic/li ">
                                    <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:courtinfo/case:courtname</sourcexml> becomes
                                        <targetxml class="+ topic/keyword xml-d/targetxml ">jurisinfo:courtinfo/jurisinfo:courtname</targetxml>
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
                                <li class="- topic/li "> 
                                    The element <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:courtcode</sourcexml> becomes <targetxml class="+ topic/keyword xml-d/targetxml ">jurisinfo:courtinfo/jurisinfo:alternatecourtcode/@alternatecourtcode</targetxml> and
                                    create <targetxml class="+ topic/keyword xml-d/targetxml ">doc:legacy-metadata/meta/metaitem</targetxml> and the attributes will be populated as <targetxml class="+ topic/keyword xml-d/targetxml ">@name="case:courtcode"</targetxml> and 
                                    <targetxml class="+ topic/keyword xml-d/targetxml ">@value</targetxml> will be the value of <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:courtcode</sourcexml>.
                                    
                                    <note class="- topic/note ">PLEASE NOTE that the element <sourcexml class="+ topic/keyword xml-d/sourcexml ">doc:legacy-metadata</sourcexml> needs to be created only for <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:courtcode</sourcexml>
                                        occurring within <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:headnote/case:info/case:courtinfo</sourcexml>. There is NO NEED to create <sourcexml class="+ topic/keyword xml-d/sourcexml ">doc:legacy-metadata</sourcexml> for all other occurrences, eg., <sourcexml class="+ topic/keyword xml-d/sourcexml ">cttr:annot/case:info/case:courtinfo</sourcexml>.
                                        The element <sourcexml class="+ topic/keyword xml-d/sourcexml ">cttr:annot/case:info/case:courtinfo/case:courtcode</sourcexml> becomes <targetxml class="+ topic/keyword xml-d/targetxml ">jurisinfo:courtinfo/jurisinfo:alternatecourtcode/@alternatecourtcode</targetxml>.</note>
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
                                    <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:judges</sourcexml> becomes
                                        <targetxml class="+ topic/keyword xml-d/targetxml ">cttr:caseinfo/courtcase:judges</targetxml> and
                                    the children are populated as below : <ul class="- topic/ul ">
                                        <li class="- topic/li ">
                                            <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:judge</sourcexml> becomes
                                                <targetxml class="+ topic/keyword xml-d/targetxml ">person:judge/person:person/person:name.text</targetxml>
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
                                    <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:dates</sourcexml> becomes
                                        <targetxml class="+ topic/keyword xml-d/targetxml ">decision:dates</targetxml> and the children are
                                    populated as below : <ul class="- topic/ul ">
                                        <li class="- topic/li ">
                                            <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:dates/case:decisiondate</sourcexml>
                                            becomes
                                                <targetxml class="+ topic/keyword xml-d/targetxml ">decision:dates/decision:decisiondate</targetxml>
                                            and the children are populated as below: <ul class="- topic/ul ">
                                                <li class="- topic/li ">
                                                  <sourcexml class="+ topic/keyword xml-d/sourcexml ">date</sourcexml> becomes
                                                  <targetxml class="+ topic/keyword xml-d/targetxml ">date-text</targetxml>; the conversion
                                                  also covers the attributes
                                                  <sourcexml class="+ topic/keyword xml-d/sourcexml ">@day</sourcexml> becomes
                                                  <targetxml class="+ topic/keyword xml-d/targetxml ">decision:decisiondate/@day</targetxml>
                                                  <sourcexml class="+ topic/keyword xml-d/sourcexml ">@month</sourcexml> becomes
                                                  <targetxml class="+ topic/keyword xml-d/targetxml ">decision:decisiondate/@month</targetxml>
                                                  <sourcexml class="+ topic/keyword xml-d/sourcexml ">@year</sourcexml> becomes
                                                  <targetxml class="+ topic/keyword xml-d/targetxml ">decision:decisiondate/@year</targetxml>
                                                </li>
                                            </ul>
                                            <note class="- topic/note ">Please note that the schema allows @day to be a
                                                single digit and hence the leading zero is not
                                                required in the <targetxml class="+ topic/keyword xml-d/targetxml ">decision:decisiondate
                                                @day</targetxml>.</note>
                                            <note>Please note that the attribute <targetxml>decision:decisiondate/@normdate</targetxml> needs to be populated for all the <targetxml>decision:decisiondate</targetxml> 
                                                for sorting purposes. Please see the example below for more details : </note>
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
                                    <p class="- topic/p ">There are two scenarios in handling of <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:juris</sourcexml> based on the value:</p>
                                    <p class="- topic/p ">
                     <b class="+ topic/ph hi-d/b ">Scenario 1:</b> If the value of <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:juris</sourcexml> is 'CTH'</p>
                                    <ul class="- topic/ul ">
                                        <li class="- topic/li ">
                                            <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:info/case:courtinfo/case:juris</sourcexml>
                                            becomes <targetxml class="+ topic/keyword xml-d/targetxml ">cttr:citeddecision/cttr:caseinfo/jurisinfo:courtinfo/jurisinfo:jurisdiction/jurisinfo:system</targetxml>
                                            and create <targetxml class="+ topic/keyword xml-d/targetxml ">dc:metadata/dc:coverage/location:country</targetxml> with attributes <targetxml class="+ topic/keyword xml-d/targetxml ">@codescheme="ISO-3166-1"</targetxml> and <targetxml class="+ topic/keyword xml-d/targetxml ">@countrycode</targetxml>, this is for
                                            capturing country value and the nomenclature will be to put the country code (AU). <note class="- topic/note ">The <targetxml class="+ topic/keyword xml-d/targetxml ">location:country</targetxml> will capture the country value which is CTH.</note>
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
                                        <lines/>
                                        </li>
                                    </ul>
                                    <p class="- topic/p ">
                     <b class="+ topic/ph hi-d/b ">Scenario 2:</b> For all other values of <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:juris</sourcexml>
                  </p>
                                    <ul class="- topic/ul ">
                                        <li class="- topic/li ">
                                            <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:info/case:courtinfo/case:juris</sourcexml>
                                            becomes <targetxml class="+ topic/keyword xml-d/targetxml ">cttr:citeddecision/cttr:caseinfo/jurisinfo:courtinfo/jurisinfo:jurisdiction/jurisinfo:system</targetxml>
                                            and create <targetxml class="+ topic/keyword xml-d/targetxml ">dc:metadata/dc:coverage/location:state</targetxml>
                                            with attributes <targetxml class="+ topic/keyword xml-d/targetxml ">@codescheme="ISO-3166-2"</targetxml> and <targetxml class="+ topic/keyword xml-d/targetxml ">@statecode</targetxml>, this is for
                                            capturing state value. <note class="- topic/note ">The <targetxml class="+ topic/keyword xml-d/targetxml ">location:state</targetxml> will capture the state value which are ACT(AU-CT), NT(AU-NT), NSW(AU-NS), VIC(AU-VI), TAS(AU-TS), SA(AU-SA), QLD(AU-QL) and WA(AU-WA).</note>
                        <pre xml:space="preserve" class="- topic/pre ">
&lt;case:juris&gt;NSW&lt;/case:juris&gt;
              
<b class="+ topic/ph hi-d/b ">Becomes</b>
              
&lt;jurisinfo:courtinfo&gt;
    &lt;jurisinfo:jurisdiction&gt;
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
                        </li></ul>
      </section>
   </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU20_Legislative_Citator\courtinfo.dita  -->
	<xsl:message>AU20_Legislative_Citator_courtinfo.xsl requires manual development!</xsl:message> 

	<xsl:template match="case:courtinfo"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  jurisinfo:courtinfo   -->
		<jurisinfo:courtinfo>
			<xsl:apply-templates select="@* | node()"/>
		</jurisinfo:courtinfo>

	</xsl:template>

	<xsl:template match="case:courtinfo/case:courtname"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  jurisinfo:courtinfo/jurisinfo:courtname   -->
		<jurisinfo:courtinfo>
			<jurisinfo:courtname>
				<xsl:apply-templates select="@* | node()"/>
			</jurisinfo:courtname>
		</jurisinfo:courtinfo>

	</xsl:template>

	<xsl:template match="case:courtcode"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  jurisinfo:courtinfo/jurisinfo:alternatecourtcode/@alternatecourtcode   -->
		<jurisinfo:courtinfo>
			<jurisinfo:alternatecourtcode>
				<xsl:attribute name="alternatecourtcode">
					<xsl:apply-templates select="node()"/>
				</xsl:attribute>
			</jurisinfo:alternatecourtcode>
		</jurisinfo:courtinfo>

	</xsl:template>

	<xsl:template match="doc:legacy-metadata"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  jurisinfo:courtinfo/jurisinfo:alternatecourtcode/@alternatecourtcode   -->
		<jurisinfo:courtinfo>
			<jurisinfo:alternatecourtcode>
				<xsl:attribute name="alternatecourtcode">
					<xsl:apply-templates select="node()"/>
				</xsl:attribute>
			</jurisinfo:alternatecourtcode>
		</jurisinfo:courtinfo>

	</xsl:template>

	<xsl:template match="case:headnote/case:info/case:courtinfo"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  jurisinfo:courtinfo/jurisinfo:alternatecourtcode/@alternatecourtcode   -->
		<jurisinfo:courtinfo>
			<jurisinfo:alternatecourtcode>
				<xsl:attribute name="alternatecourtcode">
					<xsl:apply-templates select="node()"/>
				</xsl:attribute>
			</jurisinfo:alternatecourtcode>
		</jurisinfo:courtinfo>

	</xsl:template>

	<xsl:template match="cttr:annot/case:info/case:courtinfo"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  jurisinfo:courtinfo/jurisinfo:alternatecourtcode/@alternatecourtcode   -->
		<jurisinfo:courtinfo>
			<jurisinfo:alternatecourtcode>
				<xsl:attribute name="alternatecourtcode">
					<xsl:apply-templates select="node()"/>
				</xsl:attribute>
			</jurisinfo:alternatecourtcode>
		</jurisinfo:courtinfo>

	</xsl:template>

	<xsl:template match="cttr:annot/case:info/case:courtinfo/case:courtcode"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  jurisinfo:courtinfo/jurisinfo:alternatecourtcode/@alternatecourtcode   -->
		<jurisinfo:courtinfo>
			<jurisinfo:alternatecourtcode>
				<xsl:attribute name="alternatecourtcode">
					<xsl:apply-templates select="node()"/>
				</xsl:attribute>
			</jurisinfo:alternatecourtcode>
		</jurisinfo:courtinfo>

	</xsl:template>

	<xsl:template match="case:judges"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:caseinfo/courtcase:judges   -->
		<cttr:caseinfo>
			<courtcase:judges>
				<xsl:apply-templates select="@* | node()"/>
			</courtcase:judges>
		</cttr:caseinfo>

	</xsl:template>

	<xsl:template match="case:judge"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  person:judge/person:person/person:name.text   -->
		<person:judge>
			<person:person>
				<person:name.text>
					<xsl:apply-templates select="@* | node()"/>
				</person:name.text>
			</person:person>
		</person:judge>

	</xsl:template>

	<xsl:template match="case:dates"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  decision:dates   -->
		<decision:dates>
			<xsl:apply-templates select="@* | node()"/>
		</decision:dates>

	</xsl:template>

	<xsl:template match="case:dates/case:decisiondate"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  decision:dates/decision:decisiondate   -->
		<decision:dates>
			<decision:decisiondate>
				<xsl:apply-templates select="@* | node()"/>
			</decision:decisiondate>
		</decision:dates>

	</xsl:template>

	<xsl:template match="date"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  date-text   -->
		<date-text>
			<xsl:apply-templates select="@* | node()"/>
		</date-text>

	</xsl:template>

	<xsl:template match="@day"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  decision:decisiondate/@day   -->
		<decision:decisiondate>
			<xsl:attribute name="day">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</decision:decisiondate>

	</xsl:template>

	<xsl:template match="@month"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  decision:decisiondate/@month   -->
		<decision:decisiondate>
			<xsl:attribute name="month">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</decision:decisiondate>

	</xsl:template>

	<xsl:template match="@year"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  decision:decisiondate/@year   -->
		<decision:decisiondate>
			<xsl:attribute name="year">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</decision:decisiondate>

	</xsl:template>

	<xsl:template match="case:juris"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:citeddecision/cttr:caseinfo/jurisinfo:courtinfo/jurisinfo:jurisdiction/jurisinfo:system   -->
		<cttr:citeddecision>
			<cttr:caseinfo>
				<jurisinfo:courtinfo>
					<jurisinfo:jurisdiction>
						<jurisinfo:system>
							<xsl:apply-templates select="@* | node()"/>
						</jurisinfo:system>
					</jurisinfo:jurisdiction>
				</jurisinfo:courtinfo>
			</cttr:caseinfo>
		</cttr:citeddecision>

	</xsl:template>

	<xsl:template match="case:info/case:courtinfo/case:juris"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:citeddecision/cttr:caseinfo/jurisinfo:courtinfo/jurisinfo:jurisdiction/jurisinfo:system   -->
		<cttr:citeddecision>
			<cttr:caseinfo>
				<jurisinfo:courtinfo>
					<jurisinfo:jurisdiction>
						<jurisinfo:system>
							<xsl:apply-templates select="@* | node()"/>
						</jurisinfo:system>
					</jurisinfo:jurisdiction>
				</jurisinfo:courtinfo>
			</cttr:caseinfo>
		</cttr:citeddecision>

	</xsl:template>

</xsl:stylesheet>