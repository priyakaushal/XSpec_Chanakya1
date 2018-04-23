<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita docinfo">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="UK15PG_COMMENTARYDOC_alt.rendition-ref.marker">
    <title><sourcexml>docinfo:alt-rendition/link</sourcexml> without text <lnpid>id-UK15-30450</lnpid></title>
	    <body>
	        <section><p><b><u>Special Rule for UK08, UK09, UK12CS, UK14, UK15DS and UK15CS</u></b>:</p>
	            <p><sourcexml> docinfo:alt-rendition</sourcexml> converts as described in preceding
	                section (id-CCCC-10283) including associated rule for child elements means
	                <sourcexml>link</sourcexml> OR <sourcexml>lnlink</sourcexml>. </p>
	            <p>(i.e. <sourcexml>docinfo:alt-renditions/docinfo:alt-rendition/lnlink</sourcexml> or
	                <sourcexml>link</sourcexml> becomes
	                <targetxml>doc:alt-renditions/doc:alt-rendition/ ref:lnlink</targetxml>.</p></section>
	        <section>
	            <p>
	                <note>Always use content of <sourcexml>docinfo/docinfo:doc-heading</sourcexml> to
	                    populate <targetxml>doc:alt-rendition/ref:lnlink/ref:marker</targetxml> in
	                    target.</note>
	            </p>
	        </section>
	        
	        <example>
	            <title>Source XML</title>
	            <codeblock>
<![CDATA[
<docinfo>
    <docinfo:doc-heading>The function of contract law</docinfo:doc-heading>
    ... 
    <docinfo:alt-renditions>
        <docinfo:alt-rendition key="fulltext">
            <link type="pdf" filename="000LC_binder_01_01_0001.pdf"/>
        </docinfo:alt-rendition>
    </docinfo:alt-renditions>
    ...
</docinfo>
]]>
	</codeblock>
	        </example>
	        
	        <example>
	            <title>Target XML</title>
	            <codeblock>
<![CDATA[
<doc:metadata>
  <doc:docinfo doc-content-country="GB">
    <dc:metadata>
       ...
       <dc:title>The function of contract law</dc:title>
       ...
    </dc:metadata>
    ...
    <doc:alt-renditions>
       <doc:alt-rendition key="fulltext">
          <ref:lnlink service="ATTACHMENT">
             <ref:marker role="label">The function of contract law</ref:marker>
             <ref:locator>
                <ref:locator-key>
                   <ref:key-name name="attachment-key"/>
                   <ref:key-value value="000LC_binder_01_01_0001.pdf"/>
                </ref:locator-key>
                <ref:locator-params>
                   <proc:param name="attachment-type" value="IMG"/>
                   <proc:param name="external-or-local" value="external"/>
                   <proc:param name="attachment-server" value="BlobStore"/>
                   <proc:param name="attachment-pguid" value="urn:contentItem:0000-0000-0000-0000-00000-00"/>
                   <proc:param name="componentseq" value="1"/>
                </ref:locator-params>
             </ref:locator>
          </ref:lnlink>
       </doc:alt-rendition>
    </doc:alt-renditions>
    ...
  </doc:docinfo>
</doc:metadata>
]]>
	</codeblock>
	        </example>
	        <example>
	            <title>Source XML</title>
	            <codeblock>
<![CDATA[
<docinfo>
    <docinfo:doc-heading>World Intellectual Property Organisation</docinfo:doc-heading>
    ... 
    <docinfo:alt-renditions>
         <docinfo:alt-rendition key="fulltext">
            <lnlink service="ATTACHMENT" status="valid">
               <marker role="content">PDF Format</marker>
               <api-params>
                  <param name="attachment-type" value="pdf" />
                  <param name="attachment-key" value="4364.wipomm21-xxxx-xxxx-xxxxx-xx.1.pdf" />
                  <param name="componentseq" value="1" />
               </api-params>
            </lnlink>
         </docinfo:alt-rendition>
      </docinfo:alt-renditions>
    ...
</docinfo>
]]>
	</codeblock>
	        </example>
	        
	        <example>
	            <title>Target XML</title>
	            <codeblock>
<![CDATA[
<doc:metadata>
  <doc:docinfo doc-content-country="GB">
    <dc:metadata>
       ...
       <dc:title>World Intellectual Property Organisation</dc:title>
       ...
    </dc:metadata>
    ...
    <doc:alt-renditions>
        <doc:alt-rendition key="fulltext">
            <ref:lnlink service="ATTACHMENT">
                <ref:marker role="content">World Intellectual Property Organisation</ref:marker>
                <ref:locator>
                    <ref:locator-key>
                        <ref:key-name name="attachment-key"/>
                        <ref:key-value value="4364.wipomm21-xxxx-xxxx-xxxxx-xx.1"/>
                    </ref:locator-key>
                    <ref:locator-params>
                        <proc:param name="componentseq" value="1"/>
                        <proc:param name="attachment-type" value="PDF"/>
                        <proc:param name="attachment-smi" value=""/>
                        <!-- @value populated with SMI obtained from CSSM -->
                        <!-- This @value assignment is done by conversion program -->
                    </ref:locator-params>
                </ref:locator>
            </ref:lnlink>
        </doc:alt-rendition>
   </doc:alt-renditions>
    ...
  </doc:docinfo>
</doc:metadata>
]]>
	</codeblock>
	        </example>
	        
	        
	        <section>
	            <title>Changes</title>
	            <p>2017-04-04: <ph id="change_20170404_RS">Updated existing rules for
	                <sourcexml>docinfo:alt-rendition/link</sourcexml> or
	                <sourcexml>lnlink</sourcexml> occurring with or without pcdata. Uses
	                <sourcexml>docinfo:doc-heading</sourcexml> to populate
	                <targetxml>ref:marker</targetxml>. VSTS Issue 260237.</ph></p>
	            <p>2017-02-06: <ph id="change_20170206_AS">New rule. Handles
	                <sourcexml>docinfo:alt-rendition/link</sourcexml> occurring without pcdata.
	                Uses <sourcexml>docinfo:doc-heading</sourcexml> to populate
	                <targetxml>ref:marker</targetxml>. VSTS Issue 226835.</ph></p>
	        </section>
	    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK15-PracticalGuidance\UK15PG_COMMENTARYDOC_alt.rendition-ref.marker.dita  -->
<!--	<xsl:message>UK15PG_COMMENTARYDOC_alt.rendition-ref.marker.xsl requires manual development!</xsl:message> -->

	<xsl:template match="docinfo:alt-rendition/link">

		<!--  Original Target XPath:  ref:marker   -->
		<ref:marker>
			<xsl:apply-templates select="@* | node()"/>
		</ref:marker>

	</xsl:template>

	<xsl:template match="docinfo:alt-rendition">

		<!--  Original Target XPath:  ref:marker   -->
		<ref:marker>
			<xsl:apply-templates select="@* | node()"/>
		</ref:marker>

	</xsl:template>

	<xsl:template match="link">

		<!--  Original Target XPath:  ref:marker   -->
		<ref:marker>
			<xsl:apply-templates select="@* | node()"/>
		</ref:marker>

	</xsl:template>

	<xsl:template match="docinfo/docinfo:doc-heading">

		<!--  Original Target XPath:  doc:alt-rendition/ref:lnlink/ref:marker   -->
		<doc:alt-rendition>
			<ref:lnlink>
				<ref:marker>
					<xsl:apply-templates select="@* | node()"/>
				</ref:marker>
			</ref:lnlink>
		</doc:alt-rendition>

	</xsl:template>

	<xsl:template match="docinfo:doc-heading">

		<!--  Original Target XPath:  ref:marker   -->
		<ref:marker>
			<xsl:apply-templates select="@* | node()"/>
		</ref:marker>

	</xsl:template>

</xsl:stylesheet>