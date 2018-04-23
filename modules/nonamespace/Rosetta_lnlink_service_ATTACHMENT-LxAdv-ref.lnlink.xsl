<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
  xmlns:proc="http://www.lexisnexis.com/xmlschemas/content/shared/process-elements/1/" 
  xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo"
  xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita docinfo">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_lnlink_service_ATTACHMENT-to-LexisAdvance_ref.lnlink">
  <title><sourcexml>lnlink[@service="ATTACHMENT"]</sourcexml> to
    <targetxml>ref:lnlink[@service="ATTACHMENT"]</targetxml> <lnpid>id-CCCC-10396</lnpid></title>
  <body>
    <section>
      <p><sourcexml>lnlink[@service="ATTACHMENT"]</sourcexml> becomes <targetxml>ref:lnlink[@service="ATTACHMENT"]</targetxml>, and its child elements are transformed as follows:
                    <ul>
                      <li>The attribute <sourcexml>lnlink/@status</sourcexml> is always suppressed, it is never output to the target document.</li>
                        <li><sourcexml>lnlink/marker</sourcexml> becomes <targetxml>ref:lnlink/ref:marker</targetxml>, with attribute <sourcexml>marker/@role</sourcexml> becoming <targetxml>ref:marker/@role</targetxml> if present</li>
                      <li>create <targetxml>ref:lnlink/ref:locator</targetxml> and populate as follows:<ul>
                        <li><b><u>if and only if</u></b> there is an
                  <sourcexml>lnlink/api-params/param</sourcexml> where
                  <sourcexml>param/@name="attachment-key"</sourcexml>, then this
                  <sourcexml>param</sourcexml> becomes
                  <targetxml>ref:locator/ref:key-name/@name="attachment-key"</targetxml>, then a
                  <targetxml>ref:key-value</targetxml> element is also created, and the attribute
                  <sourcexml>param/@value</sourcexml> becomes
                  <targetxml>ref:locator/ref:key-value/@value</targetxml>.</li>
                        <li>otherwise <sourcexml>lnlink/api-params</sourcexml>&gt; becomes
                  <targetxml>ref:locator/ref:locator-params</targetxml>, and its child elements are
                transformed as follows:<ul>
                  <li>all other <sourcexml>api-params/param</sourcexml> elements (<b><u>with the
                        exception of</u></b>
                    <sourcexml>param/@name="attachment-key"</sourcexml>) become
                      <targetxml>ref:locator-params/proc:param</targetxml>, with attribute
                      <sourcexml>param/@name</sourcexml> becoming
                      <targetxml>proc:param/@name</targetxml> and attribute
                      <sourcexml>param/@value</sourcexml> becoming
                      <targetxml>proc:param/@value</targetxml>.</li>
                </ul>
              </li>
                      </ul>
                      </li>
                    </ul>
      </p>
    </section>
    <example>
      <title>Source XML</title>
      <codeblock>

&lt;lnlink service="ATTACHMENT" status="valid"&gt;
  &lt;marker role="content"&gt;PDF Format&lt;/marker&gt;
  &lt;api-params&gt;
    &lt;param name="attachment-key" value="application_for_apportionment-xxxx-xxxx-xxxxx-xx"/&gt;
    &lt;param name="attachment-type" value="pdf"/&gt;
    &lt;param name="attachment-smi" value="4364"/&gt;
    &lt;param name="componentseq" value="1"/&gt;
  &lt;/api-params&gt;
&lt;/lnlink&gt;
                
            </codeblock>
    </example>
    <example>
      <title>Target XML 3</title>
      <codeblock>

&lt;ref:lnlink service="ATTACHMENT"&gt;
  &lt;ref:marker role="content"&gt;PDF Format&lt;/ref:marker&gt;
  &lt;ref:locator&gt;
   &lt;ref:locator-key&gt;
    &lt;ref:key-name name="attachment-key"/&gt;
    &lt;ref:key-value value="application_for_apportionment-xxxx-xxxx-xxxxx-xx"/&gt;
   &lt;/ref:locator-key&gt;
   &lt;ref:locator-params&gt;
    &lt;proc:param name="componentseq" value="1"/&gt;
    &lt;proc:param name="attachment-type" value="PDF"/&gt;
    &lt;proc:param name="attachment-smi" value="4364"/&gt;
   &lt;/ref:locator-params&gt;
  &lt;/ref:locator&gt;
&lt;/ref:lnlink&gt;
                
            </codeblock>
    </example>
    <section>
      <title>Changes</title>
      <p>2015-09-08: <ph id="change_20150908_SNB">Minor XPATH correction in instruction title and body to change 
        <sourcexml>lnlink/@service="ATTACHMENT"</sourcexml> to be <sourcexml>lnlink[@service="ATTACHMENT"]</sourcexml>, 
        <targetxml>ref:lnlink</targetxml> to be <targetxml>ref:lnlink[@service="ATTACHMENT"]</targetxml>, and 
        <targetxml>ref:lnlink/@service="ATTACHMENT"</targetxml> to be <targetxml>ref:lnlink[@service="ATTACHMENT"]</targetxml>.</ph></p>
      <p>2015-05-22: <ph id="change_20150522_JCG">Added an instruction to explicitly indicate <sourcexml>lnlink/@status</sourcexml> is always dropped (suppressed). This is a very low-priority change and has been added for technical correctness, particularly with respect to new CIs. Existing scripts do not have to implement this change unless needed since prior to the change <targetxml>lnlink/@status</targetxml> handling was not explicitly specified.</ph></p>
      <p>2014-10-15: <ph id="change_20141015_JCG">Rewrote instructions, including the correction of a typographic error, and added an example.</ph></p>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_lnlink_service_ATTACHMENT-LxAdv-ref.lnlink.dita  -->
	
	
  <xsl:template match="lnlink[@service='ATTACHMENT']/marker" priority="2">
		<ref:marker>
			<xsl:apply-templates select="@*|node()"/>
		</ref:marker>
	</xsl:template>
	
  <xsl:template match="lnlink[@service='ATTACHMENT']/marker/@role" priority="2">
		<xsl:copy-of select="."/>
	</xsl:template>
	
  <xsl:template match="lnlink[@service='ATTACHMENT']/@status"/>
	
   <!-- SNB: 2017-11-02 add LPA to the NZ11/AU10 fix; looks to me like the general template rule above 
   (xsl:template match="lnlink[@service='ATTACHMENT'][not(parent::docinfo:assoc-links or parent::docinfo:assoc-links-grp)])
   is WRONG for all other streams because it doesnt create api-params, and the general template rule for api-params is wrong 
   because it results in 2 smi values, and this fix really should be for all streams, but I'd be afraid to do it :) -->   
  <xsl:template match="lnlink[@service='ATTACHMENT'][not(parent::docinfo:assoc-links or parent::docinfo:assoc-links-grp)]">
				<ref:lnlink service="ATTACHMENT">
					<xsl:apply-templates select="marker"/>
					<ref:locator>
						<xsl:choose>
							<xsl:when test="api-params/param[@name='attachment-key']">
								<ref:locator-key>
									<ref:key-name>
										<xsl:attribute name="name">attachment-key</xsl:attribute>
									</ref:key-name>
									<ref:key-value>
										<xsl:attribute name="value"><xsl:value-of select="api-params/param[@name='attachment-key']/@value"/></xsl:attribute>
									</ref:key-value>
								</ref:locator-key>
							  <xsl:if test="$streamID=('NZ11','AU10','USLPA')">
							    <xsl:apply-templates select="api-params"/>
							  </xsl:if>
							</xsl:when>
							<xsl:otherwise>
								<xsl:apply-templates select="api-params"/>
							</xsl:otherwise>
						</xsl:choose>					
					</ref:locator>
				</ref:lnlink>
	</xsl:template>

   <!-- SNB: 2017-11-02 add LPA to this fix; looks to me like the general template rule above 
   (xsl:template match="lnlink[@service='ATTACHMENT'][not(parent::docinfo:assoc-links or parent::docinfo:assoc-links-grp)])
   is WRONG for all other streams because it doesnt create api-params, and the general template rule for api-params is wrong 
   because it results in 2 smi values, and this fix really should be for all streams, but I'd be afraid to do it :) -->
  <xsl:template match="lnlink[@service='ATTACHMENT'][not(parent::docinfo:assoc-links or parent::docinfo:assoc-links-grp)][$streamID=('NZ11','AU10','USLPA')]/api-params" priority="2">
    <ref:locator-params>
      <xsl:for-each select="param[not(@name='attachment-key')]">
        <proc:param name="{@name}" value="{@value}"/>
      </xsl:for-each>
    </ref:locator-params>
  </xsl:template>
  
  <xsl:template match="lnlink[@service='ATTACHMENT']/api-params">
		<ref:locator-params>
			<xsl:apply-templates/>
			<xsl:if test="parent::lnlink[@service='ATTACHMENT']">
				<proc:param>
					<xsl:attribute name="name">attachment-smi</xsl:attribute>
					<xsl:attribute name="value"></xsl:attribute>
					<xsl:message>need SMI from CSSM? Is this a parameter?</xsl:message>
				</proc:param>
			</xsl:if>
		</ref:locator-params>
	</xsl:template>
	
  <xsl:template match="lnlink[@service='ATTACHMENT']/api-paramsparam">
		<xsl:if test="@name!='attachment-key'">
			<proc:param>
				<xsl:apply-templates select="@name | @value"/>
			</proc:param>
		</xsl:if> 
	</xsl:template>
	
  <xsl:template match="lnlink[@service='ATTACHMENT']/api-paramsparam/@name | lnlink[@service='ATTACHMENT']/api-paramsparam/@value">
		<xsl:copy-of select="."/>
	</xsl:template>
	

</xsl:stylesheet>