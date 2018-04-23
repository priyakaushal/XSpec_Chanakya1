<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
	xmlns:source_cttr="http://www.lexis-nexis.com/glp/cttr" 
	xmlns:comm="http://www.lexis-nexis.com/glp/comm"
	xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo"
	xmlns:proc="http://www.lexisnexis.com/xmlschemas/content/shared/process-elements/1/"
	xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita source_cttr comm docinfo">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_lnlink_service_DOCID-LxAdv-ref.lnlink">
  <title><sourcexml>lnlink[@service="DOC-ID" or @service="DOCID"]</sourcexml> to <targetxml>ref:lnlink[@service="DOCUMENT"]</targetxml>
    <lnpid>id-CCCC-10545</lnpid></title>
  <body>
    <section>
      <p>The following instruction is intended illustrate proper mapping of 
        <sourcexml>lnlink[@service="DOC-ID" or @service="DOCID"]</sourcexml> and its child elements to 
        <targetxml>ref:lnlink[@service="DOCUMENT"]</targetxml> and its child elements. This instruction also applies 
        when <sourcexml>@service</sourcexml> does not exist, but either 
        <sourcexml>lnlink/api-params/param[@name="remotekey1"][@value="DOC-ID" or @value="DOCID"]</sourcexml> 
        or <sourcexml>lnlink/key-name[@name="DOC-ID" OR @name="DOCID"]</sourcexml> does exist.</p>  
      <note>This mapping instruction 
        assumes that the CI indicates that the target element should be <targetxml>ref:lnlink</targetxml>; for some  
        source markup structures the CI may contain instructions to instead map it to <targetxml>ref:crossreference</targetxml>, 
        and in those cases refer to the general mapping instructions for 
        <sourcexml>lnlink[@service="DOC-ID" or @service="DOCID"]</sourcexml> to <targetxml>ref:crossreference</targetxml>.</note>
      <p><sourcexml>lnlink[@service="DOC-ID" or @service="DOCID"]</sourcexml> and its child elements are mapped to  
        <targetxml>ref:lnlink[@service="DOCUMENT"]</targetxml> as follows:
        <ul>
          <li><sourcexml>lnlink</sourcexml> maps to <targetxml>ref:lnlink</targetxml></li>
          <li><sourcexml>lnlink/@service="DOC-ID"</sourcexml> or <sourcexml>lnlink/@service="DOCID"</sourcexml> maps to <targetxml>ref:lnlink/@service="DOCUMENT"</targetxml></li>
          <li><sourcexml>lnlink/marker</sourcexml> maps to <targetxml>ref:lnlink/ref:marker</targetxml></li>
          <li><sourcexml>lnlink/marker/@role</sourcexml> maps to <targetxml>ref:lnlink/ref:marker/@role</targetxml></li>
          <li><sourcexml>lnlink/marker/@status</sourcexml> is suppressed.</li>
          <li> Create <targetxml>ref:lnlink/ref:locator</targetxml> with
            attributes and children as follows: 
            <ul>
              <li>If it exists, <sourcexml>lnlink/@refpt</sourcexml> maps to <targetxml>ref:lnlink/ref:locator/@anchoridref</targetxml></li>
              <li><note><targetxml>ref:locator/@anchoridref</targetxml> that begins with a number must
                have an underscore added at start. Also apply other identifier data type format as
                used for <targetxml>xml:id</targetxml> and <targetxml>ref:anchor/@id</targetxml>
                (e.g. change colon to underscore). Refer to the section titled "Identifiers to ID Data Type - 
                Handling Pattern Restrictions", if that section exists in this CI.</note></li>              
              <li>If either <sourcexml>lnlink/api-params/param[@name="remotekey1"][@value="DOC-ID" or @value="DOCID"]</sourcexml> 
                or <sourcexml>lnlink[key-name/@name="DOC-ID" OR key-name/@name="DOCID"]</sourcexml> exists then: 
                <ul>
                  <li>Create <targetxml>ref:lnlink/ref:locator/ref:locator-key</targetxml>.</li>
                  <li>Create <targetxml>ref:locator-key/ref:key-name/@name</targetxml> with the value
                    "DOC-ID".</li>
                  <li>Create <targetxml>ref:locator-key/ref:key-value/@value</targetxml> with the value of  
                    <sourcexml>lnlink/api-params/param[@name="dpsi"]/@value</sourcexml> followed by a hyphen and concatenated with
                    either <sourcexml>lnlink/api-params[param[@name="remotekey1"][@value="DOC-ID" or @value="DOCID"]]/param[@name="remotekey2"]/@value</sourcexml> or 
                    <sourcexml>lnlink/key-value/@value</sourcexml> (if both are present, use
                    <sourcexml>lnlink/key-value/@value</sourcexml>). To clarify, the first XPATH mentioned is the <sourcexml>@value</sourcexml> 
                    attribute of a <sourcexml>param</sourcexml> element with 
                    <sourcexml>@name="remotekey2"</sourcexml>, only if its ancestor <sourcexml>api-params</sourcexml> element ALSO 
                    contains a sibling <sourcexml>param</sourcexml> child element containing 
                    <sourcexml>@name="remotekey1"</sourcexml> and <sourcexml>@value="DOC-ID" or @value="DOCID"</sourcexml>.</li>
                </ul>
              </li>
            </ul>
          </li>
        </ul>
      </p>
            
    </section>
    <example>
      <title>Example Source Markup for <sourcexml>lnlink[@service="DOC-ID" or @service="DOCID"]</sourcexml> to <targetxml>ref:lnlink[@service="DOCUMENT"]</targetxml></title>
      <codeblock>
      
• External Pinpoint Link (to a specific anchor location in an external document)
&lt;lnlink service="DOC-ID" status="valid" refpt="CTH_ACT_2008-135_SCH1PT1"&gt;
    &lt;marker role="content"&gt;(CTH) EVIDENCE AMENDMENT ACT 2008&lt;/marker&gt;
    &lt;api-params&gt;
        &lt;param name="dpsi" value="005X"/&gt;
        &lt;param name="remotekey1" value="DOC-ID"/&gt;
        &lt;param name="remotekey2" value="CTH_ACT_2008-135"/&gt;
    &lt;/api-params&gt;
&lt;/lnlink&gt;

• External Doc Link (to an external doc, no particular location in that doc)
&lt;lnlink service="DOC-ID" status="valid"&gt;
    &lt;marker role="content"&gt;(CTH) EVIDENCE AMENDMENT ACT 2008&lt;/marker&gt;
    &lt;api-params&gt;
        &lt;param name="dpsi" value="005X"/&gt;
        &lt;param name="remotekey1" value="DOC-ID"/&gt;
        &lt;param name="remotekey2" value="CTH_ACT_2008-135"/&gt;
    &lt;/api-params&gt;
&lt;/lnlink&gt;
      
    </codeblock>

      <title>Example Target Markup for <targetxml>ref:lnlink[@service="DOCUMENT"]</targetxml></title>
      <codeblock>
      
• External Pinpoint Link (to a specific anchor location in an external document)
&lt;ref:lnlink service="DOCUMENT"&gt;
    &lt;ref:marker role="content"&gt;(CTH) EVIDENCE AMENDMENT ACT 2008&lt;/ref:marker&gt;
    &lt;ref:locator anchoridref="CTH_ACT_2008-135_SCH1PT1"&gt;
        &lt;ref:locator-key&gt;
            &lt;ref:key-name name="DOC-ID"/&gt;
            &lt;ref:key-value value="005X-CTH_ACT_2008-135"/&gt;
        &lt;/ref:locator-key&gt;
    &lt;/ref:locator&gt;
&lt;/ref:lnlink&gt;

• External Doc Link (to an external doc, no particular location in that doc)
&lt;ref:lnlink service="DOCUMENT"&gt;
    &lt;ref:marker role="content"&gt;(CTH) EVIDENCE AMENDMENT ACT 2008&lt;/ref:marker&gt;
    &lt;ref:locator&gt;
        &lt;ref:locator-key&gt;
            &lt;ref:key-name name="DOC-ID"/&gt;
            &lt;ref:key-value value="005X-CTH_ACT_2008-135"/&gt;
        &lt;/ref:locator-key&gt;
    &lt;/ref:locator&gt;
&lt;/ref:lnlink&gt;
      
    </codeblock>
    </example>
    
    <section>
      <title>Changes</title>
      <p>2016-11-16: <ph id="change_20161116_snb">Added to note regarding applying any rules related to 
        <targetxml>@anchoridref</targetxml>, referring specifically to section for "Identifiers to ID Data Type - 
        Handling Pattern Restrictions".</ph>
      </p>
      <p>2016-06-07: <ph id="change_20160607_snb">Moved standard lnlink mapping from "Standardization of 
        Output for lnlink Conversion" section to new General Markup sections, and rewrote the mapping instructions 
        to be consistent with the new AU20 Rosetta XML markup structure.</ph></p>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_lnlink_service_DOCID-LxAdv-ref.lnlink.dita  -->
   
	 <!-- Awantika: Created this module for lnlink/@DOCID or DOC-ID in common module currently coming in AU20. Please let me know in case of any changes -->

<!-- Awantika: Updated this module for AU20 not to create lnlink for comm:citations/h/lnlink instead create ref:crossreference -->
  <!-- Awantika: Updated if parent::comm:citetext and parent::p-limited-->
	<xsl:template match="lnlink[@service='DOC-ID' or @service='DOCID'][not(parent::h[parent::comm:citations])]">
	  <xsl:variable name="docinfoidtext" select="/*/docinfo/docinfo:doc-id/text()"/>
		<!--  Original Target XPath:  ref:lnlink[@service="DOCUMENT"]   -->
		<xsl:if test="parent::text[parent::p]| parent::comm:citetext | parent::entry | parent::p-limited | parent::note">
			<ref:lnlink>	
				<xsl:attribute name="service">
					<xsl:text>DOCUMENT</xsl:text>
				</xsl:attribute>
				<xsl:apply-templates select="marker"/>		
				<ref:locator>
				  <!-- Awantika: 2017-11-30- Added attribute anchoridref. Webstar #7059806 -->				  
				  <xsl:choose>
				    <xsl:when test="@refpt">
				      <xsl:attribute name="anchoridref">
				        <xsl:choose>
				          <!--<xsl:when test="string(number(substring(@remotekey2, 1, 1))) = 'NaN'">
									<xsl:value-of select="@remotekey2"/>
								</xsl:when>-->
				          <xsl:when test="string(number(substring(@refpt, 1, 1))) = 'NaN'">
				            <xsl:value-of select="@refpt"/>
				          </xsl:when>
				          <xsl:otherwise>
				            <xsl:value-of select="concat('_', @refpt)"/>
				          </xsl:otherwise>
				        </xsl:choose>
				      </xsl:attribute>
				    </xsl:when>
				    <xsl:otherwise>
				      
				    </xsl:otherwise>
				  </xsl:choose>
					<ref:locator-key>
						<ref:key-name name="DOC-ID"/>
						<ref:key-value>
							<xsl:attribute name="value">
								<!--<xsl:value-of select="if(api-params/param[@name='dpsi']/@value)then concat(api-params/param[@name='dpsi']/@value,'-',api-params/param[@name='remotekey2']/@value)else()"/>-->
								<xsl:value-of select="if(api-params/param[@name='remotekey1'][@value='DOC-ID' or @value='DOCID'] or lnlink/key-value/@value and api-params/param[@name='remotekey2'][@value])then api-params/param[@name='dpsi']/@value else(),api-params/param[@name='remotekey2']/@value" separator="-"></xsl:value-of>
							</xsl:attribute>
						</ref:key-value>
					</ref:locator-key>
					<!-- Awantika: Need to create only proc:param for topiccode in AU20 for the specific condition -->
				  <xsl:if test="$streamID='AU20' and contains(lower-case($docinfoidtext),'analytics') and ancestor::source_cttr:annotations[@annotgroup='LPG']">
						<xsl:apply-templates select="api-params"/>         
					</xsl:if>
				</ref:locator>
				
			</ref:lnlink>
		</xsl:if>
		<!-- Awantika: ref:locator to be created in AU20 -->
		<xsl:if test="parent::source_cttr:annot and $streamID='AU20'">
			<ref:lnlink>	
				<xsl:attribute name="service">
					<xsl:text>DOCUMENT</xsl:text>
				</xsl:attribute>
				<xsl:apply-templates select="marker"/>		
				<ref:locator>
					<ref:locator-key>
						<ref:key-name name="DOC-ID"/>
						<ref:key-value>
							<xsl:attribute name="value">
								<!--<xsl:value-of select="if(api-params/param[@name='dpsi']/@value)then concat(api-params/param[@name='dpsi']/@value,'-',api-params/param[@name='remotekey2']/@value)else()"/>-->
								<xsl:value-of select="if(api-params/param[@name='remotekey1'][@value='DOC-ID' or @value='DOCID'] or lnlink/key-value/@value and api-params/param[@name='remotekey2'][@value])then api-params/param[@name='dpsi']/@value else(),api-params/param[@name='remotekey2']/@value" separator="-"></xsl:value-of>
							</xsl:attribute>
						</ref:key-value>
					</ref:locator-key>
					<!--<ref:locator-params>-->					
					<xsl:apply-templates select="api-params"/>					
				<!--</ref:locator-params>-->					
				</ref:locator>				
			</ref:lnlink>
		</xsl:if>
		
		
	</xsl:template>

	<xsl:template match="@service"/>

	<xsl:template match="@role"/>
		

	<xsl:template match="lnlink[not(@service='DOC-ID' or @service='DOCID')and api-params/param[@name='remotekey1'][@value='DOC-ID' or @value='DOCID'] or key-name[@name='DOC-ID' or @name='DOCID']]">
		
			<xsl:apply-templates select="@* | node()"/>
		
	</xsl:template>
	
	<xsl:template match="lnlink/marker" priority="30">
		<xsl:choose>
			<xsl:when test="../parent::h[parent::comm:citations]and $streamID='AU20'">
				<ref:content>
					<xsl:apply-templates select="node()"/>
				</ref:content>
			</xsl:when>
			<xsl:otherwise>
				<ref:marker>
					<xsl:apply-templates select="@*|node()"/>
				</ref:marker>
			</xsl:otherwise>
		</xsl:choose>		
		
	</xsl:template>
	
	<xsl:template match="lnlink/marker/@role" priority="10">
		<xsl:copy-of select="."/>
	</xsl:template>
	
	<xsl:template match="lnlink[@service='DOC-ID' or @service='DOCID']/marker/@status"/>
	
	<xsl:template match="lnlink/@refpt">
		<xsl:attribute name="anchoridref">
			<xsl:call-template name="normalizeIdString"/>
		</xsl:attribute>
	</xsl:template>
  
  
  <xsl:template match="lnlink[@refpt][$streamID='AU21']">
    <ref:lnlink>
      <xsl:choose>
        <xsl:when test="name(.)='lnlink'">
          <xsl:apply-templates select="marker"/>
          <ref:locator>
            <xsl:apply-templates select="node() except marker"/>
          </ref:locator>
        </xsl:when>
        <xsl:otherwise>
          <ref:marker>
            <xsl:apply-templates/>
          </ref:marker>
          <ref:locator>
            <ref:locator-key>
              <ref:key-name name="DOC-ID"/>
              <ref:key-value>
                <xsl:attribute name="value">
                  <xsl:value-of select="concat(@dpsi,'-',@refpt)"/>
                </xsl:attribute>
              </ref:key-value>
              
            </ref:locator-key>
          </ref:locator>
        </xsl:otherwise>
      </xsl:choose>
    </ref:lnlink>
  </xsl:template>
</xsl:stylesheet>