<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
	xmlns:source_cttr="http://www.lexis-nexis.com/glp/cttr"
	xmlns:case="http://www.lexis-nexis.com/glp/case"
	xmlns:comm="http://www.lexis-nexis.com/glp/comm"
	xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo"
	xmlns:xs="http://www.w3.org/2001/XMLSchema"
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_lnlink_service_DOCID-LxAdv-ref.crossreference">
  <title><sourcexml>lnlink[@service="DOC-ID" or @service="DOCID"]</sourcexml> to <targetxml>ref:crossreference</targetxml>
    <lnpid>id-CCCC-10544</lnpid></title>
  <body>
    <section>
      <p>The following instruction is intended illustrate proper mapping of 
        <sourcexml>lnlink[@service="DOC-ID" or @service="DOCID"]</sourcexml> and its child elements to 
        <targetxml>ref:crossreference</targetxml> and its child elements. Note that this mapping instruction 
        assumes that the CI indicates that the target element should be <targetxml>ref:crossreference</targetxml>; for some  
        source markup structures the CI may contain instructions to instead map it to <targetxml>ref:lnlink</targetxml>, 
        and in those cases refer to the general mapping instructions for 
        <sourcexml>lnlink[@service="DOC-ID" or @service="DOCID"]</sourcexml> to 
        <targetxml>ref:lnlink[@service="DOC-ID" or @service="DOCID"]</targetxml>.</p>
      <p><sourcexml>lnlink[@service="DOC-ID" or @service="DOCID"]</sourcexml> and its child elements are mapped to  
        <targetxml>ref:crossreference</targetxml> as follows:
        <ul>
          <li><sourcexml>lnlink</sourcexml> maps to <targetxml>ref:crossreference</targetxml></li>
          <li>Create attribute <sourcexml>ref:crossreference/@crossreferencetype="seeAlso"</sourcexml></li>
          <li><sourcexml>lnlink/@service="DOC-ID"</sourcexml> or <sourcexml>lnlink/@service="DOCID"</sourcexml> is suppressed</li>
          <li><sourcexml>lnlink/marker</sourcexml> maps to <targetxml>ref:crossreference/ref:content</targetxml></li>
          <li><sourcexml>lnlink/marker/@role</sourcexml> is suppressed</li>
          <li><sourcexml>lnlink/marker/@status</sourcexml> is suppressed.</li>
          <li>Create <targetxml>ref:crossreference/ref:locator</targetxml> with
            attributes and children as follows: 
            <ul>
              <li>Create attribute <sourcexml>ref:locator/@anchortype="global"</sourcexml></li>
              <li>If it exists, <sourcexml>lnlink/@refpt</sourcexml> maps to <targetxml>ref:locator/@anchoridref</targetxml></li>
              <li><note><targetxml>ref:locator/@anchoridref</targetxml> that begins with a number must
                have an underscore added at start. Also apply other identifier data type format as
                used for <targetxml>xml:id</targetxml> and <targetxml>ref:anchor/@id</targetxml>
                (e.g. change colon to underscore). Refer to the section titled "Identifiers to ID Data Type - 
                Handling Pattern Restrictions", if that section exists in this CI.</note></li>              
              <li>Create <sourcexml>ref:locator/ref:locator-key</sourcexml></li>              
              <li>If either <sourcexml>lnlink/api-params/param[@name="remotekey1"][@value="DOC-ID" or @value="DOCID"]</sourcexml> 
                or <sourcexml>lnlink[key-name/@name="DOC-ID" OR key-name/@name="DOCID"]</sourcexml> exists then: 
                <ul>
                  <li>Create <targetxml>ref:locator/ref:locator-key/ref:key-name/@name</targetxml> with the value
                    "DOC-ID".</li>
                  <li>Create <targetxml>ref:locator/ref:locator-key/ref:key-value/@value</targetxml> with the value of  
                    <sourcexml>lnlink/api-params/param[@name="dpsi"]/@value</sourcexml> followed by a hyphen and concatenated with
                    either <sourcexml>lnlink/api-params[param[@name="remotekey1"][@value="DOC-ID" or @value="DOCID"]]/param[@name="remotekey2"]/@value</sourcexml> or 
                    <sourcexml>lnlink/key-value/@value</sourcexml> (if both are present, use
                    <sourcexml>lnlink/key-value/@value</sourcexml>). To clarify, the first XPATH mentioned is the <sourcexml>@value</sourcexml> 
                    attribute of a <sourcexml>param</sourcexml> element with 
                    <sourcexml>@name="remotekey2"</sourcexml>, only if its ancestor <sourcexml>api-params</sourcexml> element ALSO 
                    contains a sibling <sourcexml>param</sourcexml> child element containing 
                    <sourcexml>@name="remotekey1"</sourcexml> and <sourcexml>@value="DOC-ID" or @value="DOCID"</sourcexml>.</li>
                  <li>Other than its use in the previous mapping instruction, <sourcexml>lnlink/api-params/param[@name="dpsi"]/@value</sourcexml> 
                    is suppressed (i.e. it does NOT generate any type of <targetxml>ref:locator-params</targetxml> content in the target document).</li>
                </ul>
              </li>
            </ul>
          </li>
        </ul>
      </p>
            
    </section>

    <example>
      <title>Example Source Markup for <sourcexml>lnlink[@service="DOC-ID" or @service="DOCID"]</sourcexml> to <targetxml>ref:crossreference</targetxml></title>
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

      <title>Example Target Markup for <targetxml>ref:crossreference</targetxml></title>
      <codeblock>
      
• External Pinpoint Link (to a specific anchor location in an external document)
&lt;ref:crossreference crossreferencetype="seeAlso"&gt;
    &lt;ref:content&gt;(CTH) EVIDENCE AMENDMENT ACT 2008&lt;/ref:content&gt;
    &lt;ref:locator anchortype="global" anchoridref="CTH_ACT_2008-135_SCH1PT1"&gt;
        &lt;ref:locator-key&gt;
            &lt;ref:key-name name="DOC-ID"/&gt;
            &lt;ref:key-value value="005X-CTH_ACT_2008-135"/&gt;
        &lt;/ref:locator-key&gt;
    &lt;/ref:locator&gt;
&lt;/ref:crossreference&gt;

• External Doc Link (to an external doc, no particular location in that doc)
&lt;ref:crossreference crossreferencetype="seeAlso"&gt;
    &lt;ref:content&gt;(CTH) EVIDENCE AMENDMENT ACT 2008&lt;/ref:content&gt;
    &lt;ref:locator anchortype="global"&gt;
        &lt;ref:locator-key&gt;
            &lt;ref:key-name name="DOC-ID"/&gt;
            &lt;ref:key-value value="005X-CTH_ACT_2008-135"/&gt;
        &lt;/ref:locator-key&gt;
    &lt;/ref:locator&gt;
&lt;/ref:crossreference&gt;


    </codeblock>
    </example>


    <section>
      <title>Changes</title>
      <p>2016-11-16: <ph id="change_20161116_snb">Added to note regarding applying any rules related to 
        <targetxml>@anchoridref</targetxml>, referring specifically to section for "Identifiers to ID Data Type - 
        Handling Pattern Restrictions".</ph>
      </p>
      <p>2016-06-07: <ph id="change_20160607_snb">Moved standard lnlink mapping from "Standardization of 
        Output for lnlink Conversion" to new General Markup sections, and rewrote the mapping instructions 
        to be consistent with the new AU20 Rosetta XML markup structure.</ph></p>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_lnlink_service_DOCID-LxAdv-ref.crossreference.dita  -->
	 

  <!-- Awantika: 2017-11-21: Updated for webstar#7052327 -->
	<xsl:template match="lnlink[@service='DOC-ID' or @service='DOCID'][parent::h[parent::comm:citations]]" name="lnlinkrefcrossreference">
		
		<ref:crossreference>
			<!--<xsl:if test="@refpt">-->
				<xsl:attribute name="crossreferencetype" select="'seeAlso'"/>
				
			<!--</xsl:if>-->			
			<xsl:if test="child::marker">								
					<xsl:apply-templates select="marker"/>				
			</xsl:if>			
			<ref:locator>
			  <xsl:attribute name="anchortype" select="'global'"/>
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
				<xsl:apply-templates select="node() except marker"/>
				<ref:locator-key>
					<ref:key-name name="DOC-ID"/>
					<ref:key-value>
						<xsl:attribute name="value">
							<!--<xsl:variable name="keyvalue" select="api-params[param[@name='remotekey1'][@value='DOC-ID' or @value='DOCID']| param[@name='remotekey2']/@value]| key-value/@value"/>-->					
							
							<xsl:value-of select="concat(api-params/param[@name='dpsi']/@value,'-',api-params/param[@name='remotekey2']/@value)"/>
						</xsl:attribute>
					</ref:key-value>
				</ref:locator-key>
			</ref:locator>
		</ref:crossreference>
	</xsl:template>

<xsl:template match="api-params[parent::lnlink[parent::h[parent::comm:citations]]]"/>

</xsl:stylesheet>