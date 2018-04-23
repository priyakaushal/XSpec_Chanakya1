<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:source_cttr="http://www.lexis-nexis.com/glp/cttr" xmlns:cttr="urn:x-lexisnexis:content:citator:sharedservices:1" xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" xmlns:jurisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/jurisdiction-info/1/" xmlns:location="http://www.lexisnexis.com/xmlschemas/content/shared/location/1/" xmlns:person="http://www.lexisnexis.com/xmlschemas/content/shared/person/1/" version="2.0" exclude-result-prefixes="dita case cttr">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="case.courtinfo">
   <title>courtinfo <lnpid>id-AU20-22217</lnpid></title>
   <body>
      <section>
         <ul><li class="- topic/li ">
                          <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:courtinfo</sourcexml> the content consist of and it's maintained in the following two elements :  
                          <targetxml class="+ topic/keyword xml-d/targetxml ">jurisinfo:courtinfo</targetxml>, <targetxml class="+ topic/keyword xml-d/targetxml ">person:contributor</targetxml> and the children are populated as below :
                          <ul class="- topic/ul ">
                              <li class="- topic/li ">
                                  <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:judges</sourcexml> becomes <targetxml class="+ topic/keyword xml-d/targetxml ">cttr:citedarticle/person:contributor @contributor-type="author"</targetxml>.
                                  The attribute <targetxml class="+ topic/keyword xml-d/targetxml ">person:contributor @contributor-type</targetxml> is required.
                                  and the children are populated as below :
                                  <ul class="- topic/ul ">
                                      <li class="- topic/li ">
                                          <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:judge</sourcexml> becomes 
                                          <targetxml class="+ topic/keyword xml-d/targetxml ">person:person/person:name.text</targetxml>
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
                                  <p class="- topic/p ">There are two scenarios in handling of <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:juris</sourcexml> based on the value:</p>
                                  <p class="- topic/p ">
                     <b class="+ topic/ph hi-d/b ">Scenario 1:</b> If the value of <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:juris</sourcexml> is 'CTH'</p>
                                  <ul class="- topic/ul ">
                                      <li class="- topic/li ">
                                          <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:info/case:courtinfo/case:juris</sourcexml>
                                          becomes <targetxml class="+ topic/keyword xml-d/targetxml ">cttr:citedarticle/jurisinfo:courtinfo/jurisinfo:jurisdiction/jurisinfo:system</targetxml>
                                          and create <targetxml class="+ topic/keyword xml-d/targetxml ">dc:metadata/dc:coverage/location:country</targetxml> with attributes <targetxml class="+ topic/keyword xml-d/targetxml ">@codescheme="ISO-3166-1"</targetxml> and <targetxml class="+ topic/keyword xml-d/targetxml ">@countrycode</targetxml>, this is for
                                          capturing country value and the nomenclature will be to put the country code (AU). 
                                          <note class="- topic/note ">The <targetxml class="+ topic/keyword xml-d/targetxml ">location:country</targetxml> will capture the country value which is CTH.</note>                                          
                                          
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
                                          
                                          <note class="- topic/note ">Also note that "US" is also a possible value of <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:juris</sourcexml>. For such case, please follow the scenario:1 (above) instructions. An example is shown below :</note>
                        <pre xml:space="preserve" class="- topic/pre ">
&lt;case:juris&gt;US&lt;/case:juris&gt;
              
<b class="+ topic/ph hi-d/b ">Becomes</b>    
              
&lt;jurisinfo:courtinfo&gt;
    &lt;jurisinfo:jurisdiction&gt;
        &lt;jurisinfo:system&gt;US&lt;/jurisinfo:system&gt;
    &lt;/jurisinfo:jurisdiction&gt;
&lt;/jurisinfo:courtinfo&gt;
                                    
&lt;dc:metadata&gt;...
    &lt;dc:coverage&gt;
        &lt;location:country codescheme="ISO-3166-1" countrycode="US"&gt;&lt;/location:country&gt;
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
                                          becomes <targetxml class="+ topic/keyword xml-d/targetxml ">cttr:citedarticle/jurisinfo:courtinfo/jurisinfo:jurisdiction/jurisinfo:system</targetxml>
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
                              <li>
                                  <sourcexml>case:courtinfo/case:courtname</sourcexml> becomes
                                  <targetxml>jurisinfo:courtinfo/jurisinfo:courtname</targetxml>.
                                  
<pre>

&lt;case:courtinfo&gt;
    &lt;case:courtname&gt;SASC&lt;/case:courtname&gt;
&lt;/case:courtinfo&gt;

<b>Becomes</b>

&lt;jurisinfo:courtinfo&gt;
    &lt;jurisinfo:courtname&gt;SASC&lt;/jurisinfo:courtname&gt;
&lt;/jurisinfo:courtinfo&gt;

</pre>   
                              </li>
                              <li>
                                  The element <sourcexml>case:courtcode</sourcexml> becomes <targetxml>jurisinfo:courtinfo/jurisinfo:alternatecourtcode/
                                      @alternatecourtcode</targetxml> and create <targetxml>doc:legacy-metadata/meta/metaitem</targetxml> and the attributes will be populated as
                                  <targetxml>@name="case:courtcode"</targetxml> and <targetxml>@value</targetxml> will be the value of <sourcexml>case:courtcode</sourcexml>.
                                  
                                  <note>PLEASE NOTE that the element <targetxml>doc:legacy-metadata</targetxml> needs to be created only for
                                      <sourcexml>case:courtcode</sourcexml> occurring within <sourcexml>case:headnote/case:info/case:courtinfo</sourcexml>. There is NO NEED to
                                      create <targetxml>doc:legacy-metadata</targetxml> for all other occurrences, eg., <sourcexml>cttr:annot/case:info/case:courtinfo</sourcexml>.
                                      The element <sourcexml>cttr:annot/case:info/case:courtinfo/case:courtcode</sourcexml> becomes 
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
                      </li></ul>
      </section>
   </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU20_Legislative_Citator\Citator_Journal.courtinfo.dita  -->
	<xsl:message>AU20_Legislative_Citator_Citator_Journal.courtinfo.xsl requires manual development!</xsl:message> 

	<xsl:template match="case:courtinfo"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  jurisinfo:courtinfo   -->
		<jurisinfo:courtinfo>
			<xsl:apply-templates select="@* | node()"/>
		</jurisinfo:courtinfo>

	</xsl:template>

	<xsl:template match="case:judges"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:citedarticle/person:contributor@contributor-type="author"   -->
		<cttr:citedarticle>
			<person:contributor>
				<xsl:apply-templates select="@* | node()"/>
			</person:contributor>
		</cttr:citedarticle>

	</xsl:template>

	<xsl:template match="case:judge"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  person:person/person:name.text   -->
		<person:person>
			<person:name.text>
				<xsl:apply-templates select="@* | node()"/>
			</person:name.text>
		</person:person>

	</xsl:template>

	<xsl:template match="case:juris"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:citedarticle/jurisinfo:courtinfo/jurisinfo:jurisdiction/jurisinfo:system   -->
		<cttr:citedarticle>
			<jurisinfo:courtinfo>
				<jurisinfo:jurisdiction>
					<jurisinfo:system>
						<xsl:apply-templates select="@* | node()"/>
					</jurisinfo:system>
				</jurisinfo:jurisdiction>
			</jurisinfo:courtinfo>
		</cttr:citedarticle>

	</xsl:template>

	<xsl:template match="case:info/case:courtinfo/case:juris"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:citedarticle/jurisinfo:courtinfo/jurisinfo:jurisdiction/jurisinfo:system   -->
		<cttr:citedarticle>
			<jurisinfo:courtinfo>
				<jurisinfo:jurisdiction>
					<jurisinfo:system>
						<xsl:apply-templates select="@* | node()"/>
					</jurisinfo:system>
				</jurisinfo:jurisdiction>
			</jurisinfo:courtinfo>
		</cttr:citedarticle>

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

	<xsl:template match="case:headnote/case:info/case:courtinfo"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  doc:legacy-metadata   -->
		<doc:legacy-metadata>
			<xsl:apply-templates select="@* | node()"/>
		</doc:legacy-metadata>

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

</xsl:stylesheet>