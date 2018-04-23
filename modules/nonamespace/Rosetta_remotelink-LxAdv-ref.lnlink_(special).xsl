<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
  xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
  xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" 
  xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" 
  xmlns:in="http://www.lexis-nexis.com/glp/in"
  xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="#all">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="UK21cl_Rosetta_remotelink-LxAdv-lnlink">
  <title><sourcexml>remotelink[@service='DOC-ID']</sourcexml> <lnpid>id-CCCC-10466</lnpid></title>
  <body>
    <p>The element <sourcexml>remotelink</sourcexml> with attribute
        <sourcexml>remotelink/@service</sourcexml> equal to 'DOC-ID' becomes
        <targetxml>ref:lnlink</targetxml>. The <targetxml>ref:lnlink</targetxml> element is
      populated as follows: <ul>
        <li>The attribute <sourcexml>remotelink/@status</sourcexml> is always suppressed, it is never output to the target document.</li>
        <li>Attribute <targetxml>ref:lnlink/@service</targetxml> is set to "DOCUMENT".</li>
        <li>Element <targetxml>ref:lnlink/ref:marker</targetxml> is created and the content of
            <sourcexml>remotelink</sourcexml> becomes the content of child
            <targetxml>ref:lnlink/ref:marker</targetxml>. Any descendant element is converted
          according to instructions for that element in the section <i>General Mark-Up</i>.</li>
        <li>Element <targetxml>ref:lnlink/ref:locator</targetxml> and child element
            <targetxml>ref:locator/ref:locator-key</targetxml> are created. <ul><li>Element
              <targetxml>ref:locator/ref:locator-key/ref:key-name</targetxml> is created and the attribute <targetxml>ref:key-name/@name</targetxml> is set to "DOC-ID".</li>
              <li>Element <targetxml>ref:locator/ref:locator-key/ref:key-value</targetxml> is created.<ul> 
                <li>If <sourcexml>remotelink/@remotekey1="DOC-ID"</sourcexml> or
                    <sourcexml>remotelink/@remotekey1="DOCID"</sourcexml>:<ul>
                    <li><targetxml>ref:key-value/@value</targetxml> is set to the the value of
                        <sourcexml>remotelink/@dpsi</sourcexml>, followed by a hyphen ("-"). Then it
                      is concatenated with the value of
                        <sourcexml>remotelink/@remotekey2</sourcexml>. If and only if
                        <sourcexml>remotelink/@remotelink2</sourcexml> is <b>not</b> present, use
                        <sourcexml>remotelink/@refpt</sourcexml> instead.</li>
                  </ul></li>
        <li>If <sourcexml>remotelink/@remotekey1="REFPTID"</sourcexml>:<ul>
            <li><targetxml>ref:key-value/@value</targetxml> is set to the the value of
                <sourcexml>remotelink/@dpsi</sourcexml>, followed by a hyphen ("-"). Then it is
              concatenated with the value of <sourcexml>remotelink/@docidref</sourcexml>. If
                <sourcexml>remotelink/@docidref</sourcexml> is not present when
                <sourcexml>remotelink/@remotekey1="REFPTID"</sourcexml>, this is a data error and
              the link is invalid. As a work-around, use the value "MISSINGDOCID" if the
                <sourcexml>remotelink/@docidref</sourcexml> attribute is missing in this
              context.</li>
            <li>The attribute <targetxml>ref:lnlink/ref:locator/@anchoridref</targetxml> is set to
              the value of <sourcexml>remotelink/@refpt</sourcexml>. If and only if
                <sourcexml>remotelink/@refpt</sourcexml> is <b>not</b> present, use
                <sourcexml>remotelink/@remotelink2</sourcexml> instead. If this value begins with a
              number, an underscore (_) is added to the front. Any colons (":") present in the
              Rosetta source value are replaced with an underscore ("_") in the NewLexis output
              value.</li>
          </ul>
        </li>
        <li>When creating the value for <targetxml>ref:key-value/@value</targetxml>: if
            <sourcexml>remotelink/@dpsi</sourcexml> is not present, the value from
            <sourcexml>docinfo:dpsi/@id-string</sourcexml> is used. If there is no
            <sourcexml>docinfo:dpsi/@id-string</sourcexml> value, the value from the LBU manifest
          file is used.</li>
              </ul>
              </li>
            </ul>
        </li>
      </ul>
    </p>
    <section>
      <title>Source XML</title>
      <codeblock>

&lt;remotelink service="DOC-ID" remotekey1="REFPTID" dpsi="0OM9" refpt="CITEID_177509" docidref="bb9b-55a207cd7z58"&gt;What will the trigger events be?&lt;/remotelink&gt;

      </codeblock>
    </section>
    <section>
      <title>Target XML</title>
      <codeblock>

&lt;ref:lnlink service="DOCUMENT"&gt;
  &lt;ref:marker&gt;What will the trigger events be?&lt;/ref:marker&gt;
  &lt;ref:locator anchoridref="CITEID_177509"&gt;
    &lt;ref:locator-key&gt;
      &lt;ref:key-name name="DOC-ID"/&gt;
      &lt;ref:key-value value="0OM9-bb9b-55a207cd7z58"/&gt;
    &lt;/ref:locator-key&gt;
  &lt;/ref:locator&gt;
&lt;/ref:lnlink&gt;

      </codeblock>
    </section>
    <section>
      <title>Changes</title>
      <p>2015-11-03: <ph id="change_20151103_JCG">Updated the instructions for  <sourcexml>remotelink/@remotekey1="DOC-ID"</sourcexml> to also include the scenario when there is no hyphen (<sourcexml>remotelink/@remotekey1="DOCID"</sourcexml>).</ph></p> 
      <p>2015-05-22: <ph id="change_20150522_JCG">Added an instruction to explicitly indicate <sourcexml>remotelink/@status</sourcexml> is always dropped (suppressed). This is a very low-priority change and has been added for technical correctness, particularly with respect to new CIs. Existing scripts do not have to implement this change unless needed since prior to the change <targetxml>remotelink/@status</targetxml> handling was not explicitly specified.</ph></p>      
    </section>
  </body>
	</dita:topic>


	
  <xsl:template match="remotelink[(@service='DOC-ID' or @service='FINDQUANTUM') and ($streamID = 'UK18') and not(parent::emph)]" priority="25">

		<!--  Original Target XPath:  ref:lnlink   -->
		<ref:lnlink>
			<xsl:apply-templates select="@*"/>
		  <xsl:attribute name="service">
		    <xsl:choose>
		      <xsl:when test="@service = 'DOC-ID'">DOCUMENT</xsl:when>
		      <xsl:otherwise><xsl:value-of select="@service"/></xsl:otherwise>
		    </xsl:choose>
		  </xsl:attribute>
			<ref:marker>
				<xsl:apply-templates select="node()"/>
			</ref:marker>
			<ref:locator>
			  <!--<xsl:attribute name="anchoridref">
				<xsl:choose>
						<xsl:when test="@refpt">
						    <xsl:choose>
								<xsl:when test="contains('0123456789', substring(@refpt, 1, 1))">
									<xsl:text>_</xsl:text>
									<xsl:value-of select="replace(@refpt, ':', '_')"/>
								</xsl:when>
								<xsl:otherwise>
									<xsl:value-of select="replace(@refpt, ':', '_')"/>
								</xsl:otherwise>
							</xsl:choose>						  
						</xsl:when>
						<xsl:when test="@remotelink2">
							   <xsl:value-of select="@remotelink2"/>						  
						</xsl:when>
					</xsl:choose>
			  </xsl:attribute>-->
				
				<xsl:if test="@remotekey1">
				  <ref:locator-key>
				    <ref:key-name>
				      <xsl:attribute name="name">
				        <xsl:value-of select="@service"/>
				      </xsl:attribute>
				    </ref:key-name>
				    <ref:key-value>
				      <xsl:attribute name="value">
				        <xsl:choose>
				          <xsl:when test="@remotekey1 = ('DOC-ID', 'DOCID')">
				            <xsl:choose>
				              <xsl:when test="@dpsi">
				                <xsl:value-of select="@dpsi"/>
				              </xsl:when>
				              <xsl:when test="//docinfo:dpsi/@id-string">
				                <xsl:value-of select="//docinfo:dpsi/@id-string"/>
				              </xsl:when>
				              <xsl:otherwise>
				                <xsl:value-of select="$dpsi"/>
				              </xsl:otherwise>
				            </xsl:choose>
				            <xsl:text>-</xsl:text>
				            <xsl:choose>
				              <xsl:when test="@remotekey2">
				                <xsl:value-of select="@remotekey2"/>
				              </xsl:when>
				              <xsl:otherwise>
				                <xsl:value-of select="@refpt"/>
				              </xsl:otherwise>
				            </xsl:choose>
				          </xsl:when>
				          <xsl:when test="@remotekey1 = 'REFPTID'">
				            <xsl:value-of select="@dpsi"/>
				            <xsl:text>-</xsl:text>
				            <xsl:choose>
				              <xsl:when test="@docidref">
				                <xsl:value-of select="@docidref"/>
				              </xsl:when>
				              <xsl:otherwise>
				                <xsl:text>MISSINGDOCID</xsl:text>
				              </xsl:otherwise>
				            </xsl:choose>
				          </xsl:when>
				        </xsl:choose>
				      </xsl:attribute>
				    </ref:key-value>
				  </ref:locator-key>
				</xsl:if>
			</ref:locator>
		</ref:lnlink>

	</xsl:template>
  
  <xsl:template match="remotelink[(@service='DOC-ID' or @service='FINDQUANTUM') and ($streamID = 'UK18') and parent::docinfo:assoc-links-grp]" priority="30">
    
    <doc:related-content-item>
      <doc:related-content-link>
        <!--  Original Target XPath:  ref:lnlink   -->
        <ref:lnlink>
          <xsl:apply-templates select="@*"/>
          <xsl:attribute name="service">
            <xsl:choose>
              <xsl:when test="@service = 'DOC-ID'">DOCUMENT</xsl:when>
              <xsl:otherwise><xsl:value-of select="@service"/></xsl:otherwise>
            </xsl:choose>
          </xsl:attribute>
          <ref:marker>
            <xsl:apply-templates select="node()"/>
          </ref:marker>
          <ref:locator>
            <!--<xsl:attribute name="anchoridref">
				<xsl:choose>
						<xsl:when test="@refpt">
						    <xsl:choose>
								<xsl:when test="contains('0123456789', substring(@refpt, 1, 1))">
									<xsl:text>_</xsl:text>
									<xsl:value-of select="replace(@refpt, ':', '_')"/>
								</xsl:when>
								<xsl:otherwise>
									<xsl:value-of select="replace(@refpt, ':', '_')"/>
								</xsl:otherwise>
							</xsl:choose>						  
						</xsl:when>
						<xsl:when test="@remotelink2">
							   <xsl:value-of select="@remotelink2"/>						  
						</xsl:when>
					</xsl:choose>
			  </xsl:attribute>-->
            
            <xsl:if test="@remotekey1">
              <ref:locator-key>
                <ref:key-name>
                  <xsl:attribute name="name">
                    <xsl:value-of select="@service"/>
                  </xsl:attribute>
                </ref:key-name>
                <ref:key-value>
                  <xsl:attribute name="value">
                    <xsl:choose>
                      <xsl:when test="@remotekey1 = ('DOC-ID', 'DOCID')">
                        <xsl:choose>
                          <xsl:when test="@dpsi">
                            <xsl:value-of select="@dpsi"/>
                          </xsl:when>
                          <xsl:when test="//docinfo:dpsi/@id-string">
                            <xsl:value-of select="//docinfo:dpsi/@id-string"/>
                          </xsl:when>
                          <xsl:otherwise>
                            <xsl:value-of select="$dpsi"/>
                          </xsl:otherwise>
                        </xsl:choose>
                        <xsl:text>-</xsl:text>
                        <xsl:choose>
                          <xsl:when test="@remotekey2">
                            <xsl:value-of select="@remotekey2"/>
                          </xsl:when>
                          <xsl:otherwise>
                            <xsl:value-of select="@refpt"/>
                          </xsl:otherwise>
                        </xsl:choose>
                      </xsl:when>
                      <xsl:when test="@remotekey1 = 'REFPTID'">
                        <xsl:value-of select="@dpsi"/>
                        <xsl:text>-</xsl:text>
                        <xsl:choose>
                          <xsl:when test="@docidref">
                            <xsl:value-of select="@docidref"/>
                          </xsl:when>
                          <xsl:otherwise>
                            <xsl:text>MISSINGDOCID</xsl:text>
                          </xsl:otherwise>
                        </xsl:choose>
                      </xsl:when>
                    </xsl:choose>
                  </xsl:attribute>
                </ref:key-value>
              </ref:locator-key>
            </xsl:if>
          </ref:locator>
        </ref:lnlink>
      </doc:related-content-link>
    </doc:related-content-item>
    
  </xsl:template>
  

</xsl:stylesheet>