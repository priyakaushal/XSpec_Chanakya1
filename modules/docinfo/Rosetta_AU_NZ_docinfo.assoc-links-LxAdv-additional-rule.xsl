<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
    xmlns:ci="http://www.lexis-nexis.com/ci" xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" 
    xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" 
    xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/"
    xmlns:proc="http://www.lexisnexis.com/xmlschemas/content/shared/process-elements/1/"
    version="2.0" exclude-result-prefixes="dita ci docinfo">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_AU_NZ_docinfo.assoc-links-LxAdv-additional-rule">
    <title>(AU-NZ) <sourcexml>docinfo:assoc-links</sourcexml> with linking and text children <lnpid>id-CCCC-10243</lnpid></title>
    <body>
        <section><p>This section describes a special AU-NZ use case. For general rules see <xref href="../common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita"/>. </p></section>
        <section>
            <p>Applies to children of <sourcexml>docinfo:assoc-links</sourcexml> and
                    <sourcexml>docinfo:assoc-links-grp</sourcexml>:</p><p>If rosetta linking element
                    (<sourcexml>remotelink</sourcexml> or <sourcexml>ci:cite</sourcexml>) is
                immediately followed by <sourcexml>text</sourcexml>, then map the linking element
                    (<sourcexml>remotelink</sourcexml> or <sourcexml>ci:cite</sourcexml>) and
                    <sourcexml>text</sourcexml> within one
                    <targetxml>doc:related-content-item</targetxml>.</p>
        </section>
        <example>
            <title>Source XML </title>
            <codeblock>

&lt;docinfo:assoc-links&gt;
 &lt;docinfo:assoc-links-grp&gt; 
  &lt;heading&gt;&lt;title&gt;Related Content&lt;/title&gt;&lt;/heading&gt;
  &lt;remotelink dpsi="008D" remotekey1="DOC-ID" service="DOC-ID" refpt="PIL.OV"&gt;Overview of Insurance&lt;/remotelink&gt;
  &lt;text&gt;Kelly &amp;amp; Ball Principles of Insurance Law&lt;/text&gt;
  &lt;remotelink dpsi="0384" remotekey1="DOC-ID" service="DOC-ID" refpt="PFI.ICA.ICA"&gt;Insurance Contracts Act 1984&lt;/remotelink&gt;
  &lt;text&gt;Australian Insurance Law Annotated&lt;/text&gt;
  &lt;ci:cite searchtype="BOOK-REF"&gt;
   &lt;ci:content&gt;The central role of insurance in modern society and in the development of the law (2013) 24 ILJ 1&lt;/ci:content&gt;
  &lt;/ci:cite&gt;
  &lt;text&gt;Insurance Law Journal&lt;/text&gt;
 &lt;/docinfo:assoc-links-grp&gt;
&lt;/docinfo:assoc-links&gt;
            </codeblock>
            <title>Target XML</title>
            <codeblock>

&lt;doc:related-content&gt;
 &lt;doc:related-content-grp&gt; 
  &lt;heading&gt;&lt;title&gt;Related Content&lt;/title&gt;&lt;/heading&gt;
  &lt;doc:related-content-item&gt;
    &lt;doc:related-content-link&gt;
     &lt;ref:lnlink service="DOCUMENT"&gt;
      &lt;ref:marker&gt;Overview of Insurance&lt;/ref:marker&gt;
      &lt;ref:locator&gt;
       &lt;ref:locator-key&gt;
        &lt;ref:key-name name="DOC-ID"/&gt;
        &lt;ref:key-value value="008D-PIL.OV"/&gt;
       &lt;/ref:locator-key&gt;
      &lt;/ref:locator&gt;
     &lt;/ref:lnlink&gt;
    &lt;/doc:related-content-link&gt;
    &lt;doc:related-content-desc&gt;
     &lt;p&gt;&lt;text&gt;Kelly &amp;amp; Ball Principles of Insurance Law&lt;/text&gt;&lt;/p&gt;
    &lt;/doc:related-content-desc&gt;
  &lt;/doc:related-content-item&gt;
  &lt;doc:related-content-item&gt;
    &lt;doc:related-content-link&gt;
     &lt;ref:lnlink service="DOCUMENT"&gt;
      &lt;ref:marker&gt;Insurance Contracts Act 1984&lt;/ref:marker&gt;
      &lt;ref:locator&gt;
       &lt;ref:locator-key&gt;
        &lt;ref:key-name name="DOC-ID"/&gt;
        &lt;ref:key-value value="0384-PFI.ICA.ICA"/&gt;
       &lt;/ref:locator-key&gt;
      &lt;/ref:locator&gt;
     &lt;/ref:lnlink&gt;
    &lt;/doc:related-content-link&gt;
    &lt;doc:related-content-desc&gt;
     &lt;p&gt;&lt;text&gt;Australian Insurance Law Annotated&lt;/text&gt;&lt;/p&gt;
    &lt;/doc:related-content-desc&gt;
  &lt;/doc:related-content-item&gt;
  &lt;doc:related-content-item&gt;
    &lt;doc:related-content-link&gt;
     &lt;ref:lnlink service="TRAVERSE"&gt;
      &lt;ref:marker role="label"&gt;The central role of insurance in modern society and in the development of the law (2013) 24 ILJ 1&lt;/ref:marker&gt;
      &lt;ref:locator&gt;
       &lt;ref:locator-key&gt;
        &lt;ref:key-name name="normcite"/&gt;
        &lt;ref:key-value value="The central role of insurance in modern society and in the development of the law (2013) 24 ILJ 1"/&gt;
       &lt;/ref:locator-key&gt;
       &lt;ref:locator-params&gt;
        &lt;proc:param name="normprotocol" value="lexsee"/&gt;
        &lt;proc:param name="countrycode" value="AU"/&gt;
       &lt;/ref:locator-params&gt;
      &lt;/ref:locator&gt;
     &lt;/ref:lnlink&gt;
    &lt;/doc:related-content-link&gt;
    &lt;doc:related-content-desc&gt;
     &lt;p&gt;&lt;text&gt;Insurance Law Journal&lt;/text&gt;&lt;/p&gt;
    &lt;/doc:related-content-desc&gt;
  &lt;/doc:related-content-item&gt;
 &lt;/doc:related-content-grp&gt;
&lt;/doc:related-content&gt;
            </codeblock>
        </example>
        <section>
            <title>Changes</title>
            <p>2014-04-03: <ph id="change_20140403_jm">New module. Describes a special AU-NZ use
                    case. Applies when a linking element is immediately followed by
                        <sourcexml>text</sourcexml>. The pair map to a single
                        <targetxml>doc:related-content-item</targetxml>. R4.5 Content issue
                    #1125</ph></p>
        </section>
    </body>
	</dita:topic>

<!--	<!-\-  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -\->
	<!-\-    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_AU_NZ_docinfo.assoc-links-LxAdv-additional-rule.dita  -\->
	<xsl:message>Rosetta_AU_NZ_docinfo.assoc-links-LxAdv-additional-rule.xsl requires manual development!</xsl:message> -->
<!-- these templates are in common module
	<xsl:template match="docinfo:assoc-links">

		<!-\-  Original Target XPath:  doc:related-content-item   -\->
		<doc:related-content>
			<xsl:apply-templates select="@* | node()"/>
		</doc:related-content>

	</xsl:template>-->

	<xsl:template match="docinfo:assoc-links-grp" priority="2">

		<!--  Original Target XPath:  doc:related-content-item   -->
		<doc:related-content-grp>
		    <xsl:apply-templates select="@* | node() except(text[preceding-sibling::*[1][name()='remotelink']] |text[preceding-sibling::*[1][self::ci:cite]] )"/>
		</doc:related-content-grp>

	</xsl:template>

    <xsl:template match="docinfo:assoc-resource[parent::docinfo:assoc-links-grp | docinfo:assoc-links]" priority="2">
        <ref:relatedresourceref>
            <ref:relatedresourceid ref:resourcekey="{@assocresourceid}"/>
        </ref:relatedresourceref>
    </xsl:template>
    <xsl:template match="docinfo:assoc-resource[parent::docinfo:assoc-links-grp | docinfo:assoc-links]/assoc-resourcename" priority="2"/>
        
        
        
    <!-- -->
    
    
	<xsl:template match="remotelink[parent::docinfo:assoc-links-grp | docinfo:assoc-links]" priority="30">

		<!--  Original Target XPath:  doc:related-content-item   -->
		<doc:related-content-item>
			<doc:related-content-link>
			    <xsl:choose>
			        <xsl:when test="( @service = 'URL' or @href )  ">
			            <xsl:call-template name="remotelink-url"/>
			        </xsl:when>			       
			        <xsl:otherwise>
			            <ref:lnlink>
			                <xsl:attribute name="service">DOCUMENT</xsl:attribute>
			                <ref:marker>
			                    <xsl:apply-templates select="node()"/>
			                </ref:marker>
			                <ref:locator>
			                    <xsl:if test="@remotekey1='REFPTID' and (@refpt or @remotekey2)">
			                        <xsl:attribute name="anchoridref">
			                            <xsl:choose>
			                                <xsl:when test="@refpt">
			                                    <xsl:for-each select="@refpt">
			                                        <xsl:call-template name="normalizeIdString"/>
			                                    </xsl:for-each>
			                                </xsl:when>
			                                <xsl:otherwise>
			                                    <xsl:for-each select="@remotekey2">
			                                        <xsl:call-template name="normalizeIdString"/>
			                                    </xsl:for-each>
			                                </xsl:otherwise>
			                            </xsl:choose>
			                        </xsl:attribute>
			                    </xsl:if>
			                    <ref:locator-key>
			                        <ref:key-name>
			                            <xsl:attribute name="name"><xsl:value-of select="@service"/></xsl:attribute>
			                        </ref:key-name>
			                        <ref:key-value>
			                            <xsl:attribute name="value">
			                                <xsl:value-of select="if (@dpsi) then @dpsi else //docinfo/docinfo:dpsi/@id-string"/>
			                                <xsl:text>-</xsl:text>
			                                <xsl:value-of select="@docidref"/>
			                            </xsl:attribute>
			                        </ref:key-value>
			                    </ref:locator-key>
			                </ref:locator>
			            </ref:lnlink>
			        </xsl:otherwise>
			    </xsl:choose>		
			</doc:related-content-link>
		    <xsl:apply-templates select="following-sibling::text[1]"/>
		</doc:related-content-item>

	</xsl:template>
    
    <!-- JL changed node() to ci:content in ref:marker, else it comes out lnci:content which is invalid -->
    <xsl:template match="ci:cite[parent::docinfo:assoc-links-grp | docinfo:assoc-links]" priority="2">
        <doc:related-content-item>
            <doc:related-content-link>
                <ref:lnlink>
                    <xsl:attribute name="service">TRAVERSE</xsl:attribute>
                    <ref:marker>
                        <xsl:apply-templates select="ci:content/node()"/>
                    </ref:marker>
                    <ref:locator>
                        <ref:locator-key>
                            <ref:key-name>
                                <xsl:attribute name="name">normcite</xsl:attribute>
                            </ref:key-name>
                            <ref:key-value>
                                <xsl:attribute name="value"><xsl:value-of select="node()"/></xsl:attribute>
                            </ref:key-value>
                        </ref:locator-key>
                        <ref:locator-params>
                            <proc:param name='normprotocol' value='lexsee'/>
                            <proc:param name='countrycode' value='AU'/>
                        </ref:locator-params>
                    </ref:locator>
                </ref:lnlink>
            </doc:related-content-link>
            <xsl:apply-templates select="following-sibling::text[1]"/>
        </doc:related-content-item>
    </xsl:template>

	
    <xsl:template match="text[parent::docinfo:assoc-links-grp | docinfo:assoc-links]" priority="2">

		<!--  Original Target XPath:  doc:related-content-item   -->
	    <doc:related-content-desc>
	        <p xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
	            <text><xsl:apply-templates select="@* | node()"/></text>
			</p>
	    </doc:related-content-desc>

	</xsl:template>

</xsl:stylesheet>