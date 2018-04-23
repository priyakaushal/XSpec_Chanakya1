<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" 
  xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:proc="http://www.lexisnexis.com/xmlschemas/content/shared/process-elements/1/" 
  xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="#all">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_lnlink_service_ATTACHMENT-to-LexisAdvance_ref_BLOBSTORE.lnlink">
  <title><sourcexml>lnlink[@service="ATTACHMENT"]</sourcexml> to
      <targetxml>ref:lnlink[@service="ATTACHMENT"]</targetxml> for BLOBSTORE images <lnpid>id-CCCC-10542</lnpid></title>
  <body>
    <p>The element <sourcexml>lnlink[@service="ATTACHMENT"]</sourcexml> becomes
      <targetxml>ref:lnlink[@service="ATTACHMENT"]</targetxml>, all <sourcexml>lnlink</sourcexml> attributes are dropped and not copied to the target, and its child elements are
      transformed as follows: <ul>
        <li>The element <sourcexml>lnlink/marker</sourcexml> becomes
            <targetxml>ref:lnlink/ref:marker</targetxml>, with attribute
            <sourcexml>marker/@role</sourcexml> becoming <targetxml>ref:marker/@role</targetxml> if
          present.</li>
        <li>Create child <targetxml>ref:lnlink/ref:locator</targetxml> and create its child elements
          as follows:<ul>
            <li>Create <targetxml>ref:locator-key</targetxml> and its child elements as follows:<ul>
                <li>Create <targetxml>ref:key-name</targetxml> with attribute
                    <targetxml>@name="attachment-key"</targetxml>.</li>
                <li>Create <targetxml>ref:key-value</targetxml> with attribute
                    <targetxml>@value</targetxml> set to
                    <sourcexml>lnlink/api-params/param[@name="attachment-key"]/@value</sourcexml>.</li>
                <li>If <sourcexml>lnlink/api-params/param[@name="dpsi"]/@value</sourcexml> is
                  present, create a string consisting of "[[DPSI:", followed by the value of
                    <sourcexml>lnlink/api-params/param[@name="dpsi"]/@value</sourcexml>, followed by
                  "]]", and prepend this string to <targetxml>ref:key-value/@value</targetxml>. See
                  example #2 below.</li>
              </ul></li>
            <li>Create <targetxml>ref:locator-params</targetxml> and its child elements as follows:<ol>
                <li>Most <sourcexml>api-params/param</sourcexml> elements become
                    <targetxml>ref:locator-params/proc:param</targetxml>, with attribute
                    <sourcexml>param/@name</sourcexml> becoming
                    <targetxml>proc:param/@name</targetxml> and attribute
                    <sourcexml>param/@value</sourcexml> becoming
                    <targetxml>proc:param/@value</targetxml>. </li>
                <li>Two exceptions to the previous rule are: <ul>
                    <li>The element <sourcexml>api-params/param[@name="attachment-key"]</sourcexml>
                      is used to create <targetxml>ref:key-value</targetxml>, described
                      earlier.</li>
                    <li>The element <sourcexml>api-params/param[@name="attachment-smi"]</sourcexml>
                      is dropped and is not used to create a corresponding target
                        <targetxml>ref:locator-params/proc:param</targetxml> element.</li>
                  </ul></li>
                <li>Several target <targetxml>ref:locator/proc:param</targetxml> elements are
                  required (also create standardize attribute values), even if their corresponding
                  source <sourcexml>api-params/param</sourcexml> element is not present: <ul>
                    <li>Create
                        <targetxml>proc:param[@name="attachment-type"][@value="IMG"]</targetxml>
                      with if <sourcexml>param[@name="attachment-type"]/@value</sourcexml> is not
                      present or empty.</li>
                    <li>Create
                        <targetxml>proc:param[@name="external-or-local"][@value="external]</targetxml>
                      if <sourcexml>param[@name="external-or-local"]/@value</sourcexml> is not
                      present or empty.</li>
                    <li>Create
                        <targetxml>proc:param[@name="attachment-server"][@value="BlobStore"]</targetxml>
                      if <sourcexml>param[@name="attachment-server"]/@value</sourcexml> is not
                      present or empty.</li>
                    <li>Create
                        <targetxml>proc:param[@name="attachment-pguid"][@value=""urn:contentItem:0000-0000-0000-0000-00000-00"]</targetxml>
                      if <sourcexml>param[@name="attachment-pguid"]/@value</sourcexml> is not
                      present or empty.</li>
                    <li>Create <targetxml>proc:param[@name="componentseq"][@value="1"]</targetxml>
                      if <sourcexml>param[@name="componentseq"]/@value</sourcexml> is not present or
                      empty.</li>
                  </ul></li>
              </ol></li>
          </ul></li>
      </ul></p>

    <example>
      <title>Example #1</title>
      <p>Note how the <sourcexml>&lt;param name="attachment-smi" value="4364"/&gt;</sourcexml> is
        dropped, <sourcexml>&lt;param name="componentseq" value="3"/&gt;</sourcexml> and
          <sourcexml>&lt;proc:param name="attachment-type" value="PDF"/&gt;</sourcexml> are copied as
        is, and several other <sourcexml>proc:param</sourcexml> elements are added as described in
        item #3 of the instructions regarding creation of <targetxml>ref:locator-params</targetxml>
        child elements.</p>
      <lines><b>Source XML</b></lines>
      <codeblock>

&lt;lnlink service="ATTACHMENT" status="valid"&gt;
  &lt;marker role="content"&gt;PDF Format&lt;/marker&gt;
  &lt;api-params&gt;
    &lt;param name="attachment-key" value="application_for_apportionment.pdf"/&gt;
    &lt;param name="attachment-type" value="PDF"/&gt;
    &lt;param name="attachment-smi" value="4364"/&gt;
    &lt;param name="componentseq" value="3"/&gt;
  &lt;/api-params&gt;
&lt;/lnlink&gt;
                
            </codeblock>
      <lines><b>Target XML</b></lines>
      <codeblock>

&lt;ref:lnlink service="ATTACHMENT"&gt;
    &lt;ref:marker role="label"&gt;Download in PDF&lt;/ref:marker&gt; 
    &lt;ref:locator&gt;
        &lt;ref:locator-key&gt;
            &lt;ref:key-name name="attachment-key"/&gt;
            &lt;ref:key-value value="application_for_apportionment.pdf"/&gt;
        &lt;/ref:locator-key&gt;
        &lt;ref:locator-params&gt;
          &lt;proc:param name="attachment-type" value="PDF"/&gt;
          &lt;proc:param name="external-or-local" value="external"/&gt;
          &lt;proc:param name="attachment-server" value="BlobStore"/&gt;
          &lt;proc:param name="attachment-pguid" value="urn:contentItem:0000-0000-0000-0000-00000-00"/&gt;
          &lt;proc:param name="componentseq" value="3"/&gt; 
        &lt;/ref:locator-params&gt;
    &lt;/ref:locator&gt;
&lt;/ref:lnlink&gt;
                
            </codeblock>
    </example>
    
    <example>
      <title>Example #2: <sourcexml>lnlink/api-params/param[@name="dpsi"]/@value</sourcexml> is present</title>
      <lines><b>Source XML</b></lines>
      <codeblock>
        
&lt;lnlink service="ATTACHMENT" status="valid"&gt;
  &lt;marker role="content"&gt;Alternate form&lt;/marker&gt;
  &lt;api-params&gt;
    &lt;param name="attachment-key" value="example.gif"/&gt;
    &lt;param name="dpsi" value="O4W2"/&gt;
  &lt;/api-params&gt;
&lt;/lnlink&gt;
                
      </codeblock>
      <lines><b>Target XML</b></lines>
      <codeblock>
        
&lt;ref:lnlink service="ATTACHMENT"&gt;
    &lt;ref:marker role="label"&gt;Alternate form&lt;/ref:marker&gt; 
    &lt;ref:locator&gt;
        &lt;ref:locator-key&gt;
            &lt;ref:key-name name="attachment-key"/&gt;
            &lt;ref:key-value value="[[DPSI:O4W2]]example.gif"/&gt;
        &lt;/ref:locator-key&gt;
        &lt;ref:locator-params&gt;
          &lt;proc:param name="dpsi" value="O4W2"/&gt;
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
      <title>Example #3: minimal source mark-up</title>
      <lines><b>Source XML</b></lines>
      <codeblock>
        
&lt;lnlink service="ATTACHMENT" status="valid"&gt;
  &lt;marker role="content"&gt;PDF Format&lt;/marker&gt;
  &lt;api-params&gt;
    &lt;param name="attachment-key" value="file_name.pdf"/&gt;
  &lt;/api-params&gt;
&lt;/lnlink&gt;
                
      </codeblock>
      <lines><b>Target XML</b></lines>
      <codeblock>
        
&lt;ref:lnlink service="ATTACHMENT"&gt;
    &lt;ref:marker role="label"&gt;Alternate form&lt;/ref:marker&gt; 
    &lt;ref:locator&gt;
        &lt;ref:locator-key&gt;
            &lt;ref:key-name name="attachment-key"/&gt;
            &lt;ref:key-value value="file_name.pdf"/&gt;
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
      <p>2016-05-21: <ph id="change_20161021_SS">Updated the Blobstore related instruction for use standardize specific output parameters.</ph></p>
      <p>2016-05-20: <ph id="change_20160520_JCG">Created this instruction to specify Blobstore
          specific output parameters.</ph></p>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_lnlink_service_ATTACHMENT-LxAdv-ref.lnlink_BLOBSTORE.dita  -->
  
  
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
  
  <!-- Awantika: Adding priorities to template lnlink/marker, lnlink/marker/@role, param/@name, param/@value 
  as they are also present in ../modules/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.xsl therefore creating ambiguities.-->

	<xsl:template match="lnlink[@service='ATTACHMENT']">

		<!--  Original Target XPath:  ref:lnlink[@service="ATTACHMENT"]   -->
		<ref:lnlink>
		  <!-- Awantika: Added attributes to ref:lnlink. -->
		    <xsl:attribute name="service">
		      <xsl:value-of select="@service"/>
		    </xsl:attribute>
		  	<xsl:if test="@status and not($streamID='UK12')">
		  	  <xsl:attribute name="status">
		  	    <xsl:value-of select="@status"/>
		  	  </xsl:attribute>
		  	</xsl:if>	  
		  <!-- Awantika: Applying marker template instead of applying all templates -->
			<xsl:apply-templates select="marker"/>
		  <!--<xsl:apply-templates/>-->
		  <ref:locator>
		    <ref:locator-key>
		      <ref:key-name name="attachment-key"/>
		      <ref:key-value>
		        <xsl:attribute name="value">
		          <xsl:value-of select="if(api-params/param[@name='dpsi']/@value) then concat('[[DPSI:' , api-params/param[@name='dpsi']/@value, ']]') else()"/> 
		          <xsl:value-of select="api-params/param[@name='attachment-key']/@value"/></xsl:attribute>
		      </ref:key-value>
		    </ref:locator-key>
		    <ref:locator-params>
		      <!-- Awantika: applying template api-params instead of api-params/param -->
		      <xsl:apply-templates select="api-params"/>
		      <!--<xsl:apply-templates select="api-params/param" mode="blobstore"/>-->
		    </ref:locator-params>
		  </ref:locator>
		</ref:lnlink>

	</xsl:template>

<!-- Awantika: changed template match from lnlink/marker to marker -->
	<xsl:template match="marker" priority="25">
			<ref:marker>
				<xsl:apply-templates select="@* | node()"/>
			</ref:marker>
	</xsl:template>
  <!-- Awantika: changed template match from lnlink/marker/@role to marker/@role -->
  <xsl:template match="marker/@role" priority="25">
    <xsl:copy-of select="."/>
	</xsl:template>
  
  <!--<xsl:template match="lnlink/marker" priority="25">
    <ref:marker>
      <xsl:apply-templates select="@* | node()"/>
    </ref:marker>
  </xsl:template>
  
  <xsl:template match="lnlink/marker/@role" priority="25">
    <xsl:copy-of select="."/>
  </xsl:template>-->
  
  
  <!-- WPK: for these streams 'UK08OR','UK09','UK12','UK14','UK15','UK15_DS'
    use doc-heading for the ref:marker for alternate renditions.  VSTS bug 372544.
    Documented in /modules/nonamespace/Rosetta_docinfo.doc-heading-LxAdv-alt.rendition-ref.marker.xsl
    Initial testing for UK15DS to get conversion out by priority.
    <xsl:template match="/*[1]/docinfo[1]/docinfo:alt-renditions[1]/docinfo:alt-rendition/lnlink[@service = 'ATTACHMENT']/marker
    [$streamID = ('UK08OR','UK09','UK12','UK14','UK15','UK15_DS')]"
  -->
  <xsl:template match="/*[1]/docinfo[1]/docinfo:alt-renditions[1]/docinfo:alt-rendition/lnlink[@service = 'ATTACHMENT']/marker
    [$streamID = ('UK15_DS')]"
    priority="26">
    <ref:marker>
      <xsl:apply-templates select="@*" />
      <xsl:value-of select="/*[1]/docinfo[1]/docinfo:doc-heading[1]" />
    </ref:marker>
  </xsl:template>    

  <xsl:template match="api-params[parent::lnlink[@service='ATTACHMENT']]">
    <!-- Awantika: Removed ref:locator-params as it is already created in ref:locator -->
   <!-- <ref:locator-params> -->
      <xsl:apply-templates select="param" mode="blobstore"/>
      <xsl:if test="not(param[@name='attachment-type'][@value!=''])">
        <proc:param name="attachment-type" value="IMG"/>
      </xsl:if>
      <xsl:if test="not(param[@name='external-or-local'][@value!=''])">
        <proc:param name="external-or-local" value="external"/>
      </xsl:if>
      <xsl:if test="not(param[@name='attachment-server'][@value!=''])">
        <proc:param name="attachment-server" value="BlobStore"/>
      </xsl:if>
      <xsl:if test="not(param[@name='attachment-pguid'][@value!=''])">
        <proc:param name="attachment-pguid" value="urn:contentItem:0000-0000-0000-0000-00000-00"/>
      </xsl:if>
      <xsl:if test="not(param[@name='componentseq'][@value!=''])">
        <proc:param name="componentseq" value="1"/>
      </xsl:if>      
    <!--</ref:locator-params>-->
  </xsl:template>
	
  <xsl:template match="api-params/param[not(@name=('attachment-key' , 'attachment-smi'))]" mode="blobstore">
		<proc:param>
			<xsl:apply-templates select="@* | node()"/>
		</proc:param>    
	</xsl:template>

  <xsl:template match="param/@name" priority="25">
			<xsl:copy-of select="."/>
	</xsl:template>

  <xsl:template match="param/@value" priority="25">
	  <xsl:copy-of select="."/>
	</xsl:template>

	
</xsl:stylesheet>