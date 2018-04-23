<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
  xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
  xmlns:proc="http://www.lexisnexis.com/xmlschemas/content/shared/process-elements/1/" 
  xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" 
  xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/"
  xmlns:leg="http://www.lexis-nexis.com/glp/leg"
  xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita docinfo doc leg proc ref">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_link-to-LexisAdvance_ref.lnlink_BLOBSTORE">
  <title><sourcexml>link[@filename]</sourcexml> to <targetxml>ref:lnlink[@service="ATTACHMENT"] for BLOBSTORE images</targetxml>
    <lnpid>id-CCCC-10541</lnpid></title>
  <body>
    <note>This instruction is <b><u>only</u></b> to be used when
        <sourcexml>link/@filename</sourcexml> is present.</note>
    <note>This instruction is never used if <sourcexml>link/@refpt</sourcexml> is present. It is
      always a data error for an instance of the <sourcexml>link</sourcexml> element to specify both
        <sourcexml>@filename</sourcexml> and <sourcexml>@refpt</sourcexml> attributes.</note>
    <p>The element <sourcexml>link[@filename]</sourcexml> becomes <targetxml>ref:lnlink[@service="ATTACHMENT"]</targetxml>, and
        <sourcexml>link</sourcexml> content becomes child element
      <targetxml>ref:link/ref:marker</targetxml> with attribute <sourcexml>ref:marker/@role="label"</sourcexml>. Then, the child element
        <targetxml>ref:link/ref:locator</targetxml> is created, and its sub-elements are created as
      follows: <ul>
        <li>Create <targetxml>ref:locator-key</targetxml>
                    <ul>
                        <li>Create <targetxml>ref:key-name</targetxml> with attribute
                                <targetxml>@name="attachment-key"</targetxml>.</li>
                        <li>Create <targetxml>ref:key-value</targetxml> with attribute
                                <targetxml>@value</targetxml> copied from
                                <sourcexml>link/@filename</sourcexml>.</li>
                        <li>If <sourcexml>link/@dpsi</sourcexml> is present, create a string
                            consisting of "[[DPSI:", followed by the value of
                                <sourcexml>link/@dpsi</sourcexml>, followed by "]]", and prepend
                            this string to <targetxml>ref:key-value/@value</targetxml>. See example
                            #2 below.</li>
                    </ul></li>
        <li>Create <targetxml>ref:locator-params</targetxml> and also create standardize attribute values:<ul>
                        <li>Create <targetxml>proc:param</targetxml> with attribute
                                <targetxml>@name="attachment-type"</targetxml> and attribute
                                <targetxml>@value="IMG"</targetxml>.</li>
                        <li>Create <targetxml>proc:param</targetxml> with attribute
                                <targetxml>@name="external-or-local"</targetxml> and attribute
                                <targetxml>@value="external"</targetxml>.</li>
                        <li>Create <targetxml>proc:param</targetxml> with attribute
                                <targetxml>@name="attachment-server"</targetxml> and attribute
                                <targetxml>@value="BlobStore"</targetxml>.</li>
                        <li>Create <targetxml>proc:param</targetxml> with attribute
                                <targetxml>@name="attachment-pguid"</targetxml> and attribute
                                <targetxml>@value="urn:contentItem:0000-0000-0000-0000-00000-00"</targetxml>.</li>
                        <li>Create <targetxml>proc:param</targetxml> with attribute
                                <targetxml>@name="componentseq"</targetxml> and attribute
                                <targetxml>@value="1"</targetxml>.</li>
                    </ul></li>
      </ul>
    </p>

    <note>All other <sourcexml>link</sourcexml> attributes not explicitly mentioned in the
      instructions above (<sourcexml>@filename and @dpsi</sourcexml>) are dropped and are not output
      to the target document.</note>
    
    <example>
      <title>Example #1: <sourcexml>link/@dpsi</sourcexml> not present</title>
      <lines><b>Source XML:</b></lines>
      <codeblock>

&lt;link type="pdf" filename="example-B2.pdf" status="valid"&gt;Download in PDF&lt;/link&gt;

	</codeblock>

      <lines><b>Target XML:</b></lines>
      <codeblock>

&lt;ref:lnlink service="ATTACHMENT"&gt;
    &lt;ref:marker role="label"&gt;Download in PDF&lt;/ref:marker&gt; 
    &lt;ref:locator&gt;
        &lt;ref:locator-key&gt;
            &lt;ref:key-name name="attachment-key"/&gt;
            &lt;ref:key-value value="example-B2.pdf"/&gt;
        &lt;/ref:locator-key&gt;
        &lt;ref:locator-params&gt;
          &lt;proc:param name="attachment-type" value="IMG"/&gt;
          &lt;proc:param name="external-or-local" value="external"/&gt;
          &lt;proc:param name="attachment-server" value="BlobStore"/&gt;
          &lt;proc:param name="attachment-pguid" value="urn:contentItem:0000-0000-0000-0000-00000-00"/&gt;
          &lt;proc:param name="componentseq" value="1"/&gt; 
        &lt;/ref:locator-params&gt;
    &lt;/ref:locator&gt;
&lt;/ref:lnlink&gt;

	</codeblock>
    </example>

    <example>
      <title>Example #2: <sourcexml>link/@dpsi</sourcexml> is present</title>
      <lines><b>Source XML:</b></lines>
      <codeblock>

&lt;link type="pdf" filename="example-B2.pdf" dpsi="O8E5" status="valid"&gt;Download in PDF&lt;/link&gt;

      </codeblock>
      
      <lines><b>Target XML:</b></lines>
      <codeblock>

&lt;ref:lnlink service="ATTACHMENT"&gt;
    &lt;ref:marker role="label"&gt;Download in PDF&lt;/ref:marker&gt; 
    &lt;ref:locator&gt;
        &lt;ref:locator-key&gt;
            &lt;ref:key-name name="attachment-key"/&gt;
            &lt;ref:key-value value="[[DPSI:O8E5]]example-B2.pdf"/&gt;
        &lt;/ref:locator-key&gt;
        &lt;ref:locator-params&gt;
          &lt;proc:param name="attachment-type" value="IMG"/&gt;
          &lt;proc:param name="external-or-local" value="external"/&gt;
          &lt;proc:param name="attachment-server" value="BlobStore"/&gt;
          &lt;proc:param name="attachment-pguid" value="urn:contentItem:0000-0000-0000-0000-00000-00"/&gt;
          &lt;proc:param name="componentseq" value="1"/&gt; 
        &lt;/ref:locator-params&gt;
    &lt;/ref:locator&gt;
&lt;/ref:lnlink&gt;

      </codeblock>
    </example>
    
    <section>
      <title>Changes</title>
        <p>2016-10-21: <ph id="change_20161021_SS">Updated the Blobstore related instruction for
            use standardize specific output parameters.</ph></p>
      <p>2016-05-20: <ph id="change_20160520_JCG">Created this instruction to specify Blobstore specific output parameters.</ph></p>
    </section>

  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_link-LxAdv-ref.lnlink_BLOBSTORE.dita  -->

  <!--   Image handling background note 2017-11-30:

Please use $streamID in Rosetta_link-LxAdv-ref.lnlink.xsl due to notation below.  

It was originally intended that Apollo jurisdictions would use these (when first introduced in the DITA):

\svn\dataArch\XSLT\ContentArch\Rosetta-to-LA\modules\nonamespace\Rosetta_lnlink_service_ATTACHMENT-LxAdv-ref.lnlink.xsl
\svn\dataArch\XSLT\ContentArch\Rosetta-to-LA\modules\nonamespace\Rosetta_link-LxAdv-ref.lnlink.xsl
\svn\dataArch\XSLT\ContentArch\Rosetta-to-LA\modules\nonamespace\Rosetta_inlineobject-LxAdv-ref.inlineobject.xsl

And blobstore jurisdictions would use these (notice BLOBSTORE in the file name):

\svn\dataArch\XSLT\ContentArch\Rosetta-to-LA\modules\nonamespace\Rosetta_lnlink_service_ATTACHMENT-LxAdv-ref.lnlink_BLOBSTORE.xsl
\svn\dataArch\XSLT\ContentArch\Rosetta-to-LA\modules\nonamespace\Rosetta_link-LxAdv-ref.lnlink_BLOBSTORE.xsl
\svn\dataArch\XSLT\ContentArch\Rosetta-to-LA\modules\nonamespace\Rosetta_inlineobject-LxAdv-ref.inlineobject_BLOBSTORE.xsl

They were originally meant to be mutually exclusive.

Ditamap includes (and subsequently xsl drivers) may have included both blobstore and Apollo handling during the transition from one to the other even though only one image handling 
is done in an LBU.  Image handling is LBU wide and not individual stream specific.

Very importantly, there is a named template (@name="generic-link") in Rosetta_link-LxAdv-ref.lnlink.xsl which is called by both “Rosetta_p-LxAdv-p.xsl” and “Rosetta_bodytext-link-LxAdv-seclaw.bodytext-p-text-ref.lnlink.xsl”.   Both of these common modules are not LBU specific.  . 
This effectively, although unintentionally, crossed the original exclusivity described above.

Current fix is to use $streamID indicating HK and UK which are currently the only blobstore jurisdictions.  Ultimately, goal is to re-establish these image handling files are mutually exclusive.
-->
  
  <!-- MDS - 2017-05-05 - ref:locator-key/ref:locator-params is invalid.  Should be siblings. -->
	<xsl:template match="link[@filename][not(@refpt)]" priority="31">
		<xsl:choose>
		  <xsl:when test="parent::bodytext">
		    <p xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
		      <text>
		        <xsl:call-template name="createLnlinkElement">
		          <xsl:with-param name="linkElement">
		           <xsl:copy-of select="self::*"/>
		          </xsl:with-param>
		        </xsl:call-template>
		      </text>
		    </p>
		  </xsl:when>
		  <xsl:otherwise>
		    <xsl:call-template name="createLnlinkElement">
		      <xsl:with-param name="linkElement">
		        <xsl:copy-of select="self::*"/>
		      </xsl:with-param>
		    </xsl:call-template>
		  </xsl:otherwise>
		</xsl:choose>
	</xsl:template>

	<xsl:template name="createLnlinkElement">
	  <xsl:param name="linkElement"/>
	  <ref:lnlink>
	    <xsl:attribute name="service" select="'ATTACHMENT'"/>
	    <ref:marker role="label">
	      <xsl:choose>
	        <!-- WPK: for these streams 'UK08OR','UK09','UK12','UK14','UK15','UK15_DS'
              use doc-heading for the ref:marker for alternate renditions. VSTS bug 372544.
              Documented in /modules/nonamespace/Rosetta_docinfo.doc-heading-LxAdv-alt.rendition-ref.marker.xsl
              Initial testing for UK15DS to get conversion out by priority.
    	        <xsl:when test="parent::docinfo:alt-rendition[$streamID = ('UK08OR','UK09','UK12','UK14','UK15','UK15_DS')]">
          -->
	        <xsl:when test="parent::docinfo:alt-rendition[$streamID = ('UK15_DS')]">
	          <xsl:value-of select="/*[1]/docinfo[1]/docinfo:doc-heading[1]" />
	        </xsl:when>
	        <xsl:when test="parent::docinfo:alt-rendition[$streamID=('UK06','UK07')]"><xsl:value-of select="normalize-space(/LEGDOC/leg:body/leg:info/leg:officialname)"/></xsl:when>
	        <xsl:otherwise>
	          <xsl:apply-templates select="$linkElement/link/node()"/>
	        </xsl:otherwise>
	      </xsl:choose>
	    </ref:marker>
	    <ref:locator>
	      <ref:locator-key>
	        <ref:key-name name="attachment-key"/>
	        <ref:key-value>
	          <xsl:attribute name="value" select="if($linkElement/link/@dpsi) then concat('[[DPSI:' , $linkElement/link/@dpsi, ']]' , $linkElement/link/@filename) else $linkElement/link/@filename"/>
	        </ref:key-value>
	      </ref:locator-key>
	      <!-- Awantika: 2018-04-06- Updated for attachment value if attachmet is PDF for HK and MY -->
	      <xsl:choose>
	        <xsl:when test="./@type='pdf' and (starts-with($streamID, 'MY')or starts-with($streamID, 'HK'))">
	          <proc:param name="attachment-type" value="PDF"/>
	          <proc:param name="external-or-local" value="external"/>		        
	          <proc:param name="attachment-server" value="BlobStore"/>
	          <proc:param name="attachment-pguid" value="urn:contentItem:0000-0000-0000-0000-00000-00"/>
	          <proc:param name="componentseq" value="1"/>	
	        </xsl:when>
	        <xsl:otherwise>
	          <ref:locator-params>     
	            <proc:param name="attachment-type" value="IMG"/>
	            <proc:param name="external-or-local" value="external"/>		        
	            <proc:param name="attachment-server" value="BlobStore"/>
	            <proc:param name="attachment-pguid" value="urn:contentItem:0000-0000-0000-0000-00000-00"/>
	            <proc:param name="componentseq" value="1"/>		              
	          </ref:locator-params>	 
	        </xsl:otherwise>
	      </xsl:choose>
	           
	    </ref:locator>
	  </ref:lnlink>
	</xsl:template>

  <!-- Awantika: Added link and remotelink templates in order to avoid ambiguity with Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.xsl module -->
  <xsl:template match="link[parent::docinfo:assoc-links or parent::docinfo:assoc-links-grp or parent::text[parent::docinfo:assoc-links or parent::docinfo:assoc-links-grp]and $streamID='UK11DN']" priority="35">
    <doc:related-content-item>
      <xsl:if test="preceding-sibling::emph">
        <doc:related-content-desc>
          <p xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
            <text xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
              <xsl:apply-templates select="preceding-sibling::emph"/>
            </text>
          </p>
        </doc:related-content-desc>
      </xsl:if>
      <doc:related-content-link>
        <ref:lnlink service="ATTACHMENT">
          <ref:marker><xsl:apply-templates/></ref:marker>
          <ref:locator>
            <ref:locator-key>
              <ref:key-name name="attachment-key"/>
              <ref:key-value>
                <xsl:attribute name="value">
                  <xsl:choose>
                    <xsl:when test="@smi"><xsl:value-of select="substring-before(@filename, '.')"/></xsl:when>
                    <!-- BRT 2018-01-11 modified otherwise  to keep file extension. For UK15 determined the file extension is required for blobstore images; Rocel says it is required for other type images as well-->
                    <xsl:otherwise>
                      <xsl:value-of select="@filename"/>
                    </xsl:otherwise>
                  </xsl:choose>
                </xsl:attribute>
              </ref:key-value>
            </ref:locator-key>
            <ref:locator-params>
              <xsl:choose>
                <xsl:when test="$streamID=('UK11DN', 'HK01', 'HK02', 'HK03', 'HK04', 'HK05', 'HK06', 'HK07', 'HK08', 'HK09')">
                  <proc:param name="attachment-type" value="IMG"/>
                  <proc:param name="external-or-local" value="external"/>		        
                  <proc:param name="attachment-server" value="BlobStore"/>
                  <proc:param name="attachment-pguid" value="urn:contentItem:0000-0000-0000-0000-00000-00"/>
                  <proc:param name="componentseq" value="1"/>	
                </xsl:when>
                <xsl:otherwise>
                  <proc:param name="componentseq" value="1"/>
                  <proc:param>
                    <xsl:attribute name="name">attachment-type</xsl:attribute>
                    <xsl:attribute name="value">
                      <xsl:apply-templates select="@type"/>
                    </xsl:attribute>
                  </proc:param>
                  <proc:param>
                    <xsl:attribute name="name">attachment-smi</xsl:attribute>
                    <xsl:attribute name="value"><xsl:value-of select="@smi"/></xsl:attribute>
                  </proc:param>     
                </xsl:otherwise>
              </xsl:choose>                      
            </ref:locator-params>
          </ref:locator>
        </ref:lnlink>
      </doc:related-content-link>
    </doc:related-content-item>
  </xsl:template>
  
  <xsl:template match="remotelink[@service='DOC-ID'][ancestor::docinfo:assoc-links or ancestor::docinfo:assoc-links-grp]" priority="35">
    <doc:related-content-item>
      <xsl:if test="parent::docinfo:assoc-links[@assoc-content='external-content-location']">
        <xsl:attribute name="content-type">external-content-location</xsl:attribute>
      </xsl:if>
      <doc:related-content-link>
        <ref:lnlink>
          <xsl:attribute name="service">DOCUMENT</xsl:attribute>
          <ref:marker><xsl:apply-templates/></ref:marker>
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
              <xsl:choose>
                <xsl:when test="@remotekey1='DOC-ID'">
                  <ref:key-name name="DOC-ID"/>
                  <ref:key-value>
                    <xsl:attribute name="value">
                      <xsl:value-of select="@dpsi"/>
                      <xsl:text>-</xsl:text>
                      <xsl:value-of select="if (@remotekey2) then @remotekey2 else @refpt"/>
                    </xsl:attribute>
                  </ref:key-value>
                </xsl:when>
                <xsl:when test="@remotekey1='REFPTID'">
                  <ref:key-name name="DOC-ID"/>
                  <ref:key-value>
                    <xsl:attribute name="value">
                      <xsl:value-of select="if (@dpsi) then @dpsi else //docinfo/docinfo:dpsi/@id-string"/>
                      <xsl:text>-</xsl:text>
                      <xsl:value-of select="@docidref"/>
                    </xsl:attribute>
                  </ref:key-value>
                </xsl:when>
              </xsl:choose>
            </ref:locator-key>
          </ref:locator>
        </ref:lnlink>
      </doc:related-content-link>
    </doc:related-content-item>
  </xsl:template>
  
  <xsl:template match="remotelink[@href][ancestor::docinfo:assoc-links or ancestor::docinfo:assoc-links-grp]" priority="35">
    <doc:related-content-item>
      <xsl:if test="parent::docinfo:assoc-links[@assoc-content='external-content-location']">
        <xsl:attribute name="content-type">external-content-location</xsl:attribute>
      </xsl:if>
      <doc:related-content-link>
        <ref:lnlink service="URL">
          <ref:marker><xsl:value-of select="."/></ref:marker>
          <ref:locator>
            <ref:locator-key>
              <ref:key-name name="URL"/>
              <ref:key-value>
                <xsl:attribute name="value">
                  <xsl:value-of select="if (@hrefclass) then concat(@hrefclass, '://' , @href) else @href"/>
                </xsl:attribute>
              </ref:key-value>
            </ref:locator-key>
          </ref:locator>
        </ref:lnlink>
      </doc:related-content-link>
      <xsl:apply-templates select="following-sibling::text[1]"/>
    </doc:related-content-item>
  </xsl:template>
  
  
  <xsl:template match="remotelink[@href][ancestor::docinfo:assoc-links or ancestor::docinfo:assoc-links-grp][$streamID='UK12']" priority="40">
        <ref:lnlink service="URL">
          <ref:marker><xsl:value-of select="."/></ref:marker>
          <ref:locator>
            <ref:locator-key>
              <ref:key-name name="URL"/>
              <ref:key-value>
                <xsl:attribute name="value">
                  <xsl:value-of select="if (@hrefclass) then concat(@hrefclass, '://' , @href) else @href"/>
                </xsl:attribute>
              </ref:key-value>
            </ref:locator-key>
          </ref:locator>
        </ref:lnlink>
  </xsl:template>
  
</xsl:stylesheet>