<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita docinfo">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="UK14_Precedents_alt.rendition-ref.marker">
	    <title><sourcexml>docinfo:alt-rendition/link or link</sourcexml>
	        <lnpid>id-UK14-30235</lnpid></title>
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

&lt;docinfo>
    &lt;docinfo:doc-heading>The function of contract law&lt;/docinfo:doc-heading>
    ... 
    &lt;docinfo:alt-renditions>
        &lt;docinfo:alt-rendition key="fulltext">
            &lt;link type="pdf" filename="000LC_binder_01_01_0001.pdf"/>
        &lt;/docinfo:alt-rendition>
    &lt;/docinfo:alt-renditions>
    ...
&lt;/docinfo>

	</codeblock>
        </example>

        <example>
            <title>Target XML</title>
            <codeblock>

&lt;doc:metadata>
  &lt;doc:docinfo doc-content-country="GB">
    &lt;dc:metadata>
       ...
       &lt;dc:title>The function of contract law&lt;/dc:title>
       ...
    &lt;/dc:metadata>
    ...
    &lt;doc:alt-renditions>
       &lt;doc:alt-rendition key="fulltext">
          &lt;ref:lnlink service="ATTACHMENT">
             &lt;ref:marker role="label">The function of contract law&lt;/ref:marker>
             &lt;ref:locator>
                &lt;ref:locator-key>
                   &lt;ref:key-name name="attachment-key"/>
                   &lt;ref:key-value value="000LC_binder_01_01_0001.pdf"/>
                &lt;/ref:locator-key>
                &lt;ref:locator-params>
                   &lt;proc:param name="attachment-type" value="IMG"/>
                   &lt;proc:param name="external-or-local" value="external"/>
                   &lt;proc:param name="attachment-server" value="BlobStore"/>
                   &lt;proc:param name="attachment-pguid" value="urn:contentItem:0000-0000-0000-0000-00000-00"/>
                   &lt;proc:param name="componentseq" value="1"/>
                &lt;/ref:locator-params>
             &lt;/ref:locator>
          &lt;/ref:lnlink>
       &lt;/doc:alt-rendition>
    &lt;/doc:alt-renditions>
    ...
  &lt;/doc:docinfo>
&lt;/doc:metadata>

	</codeblock>
        </example>
	        <example>
	            <title>Source XML</title>
	            <codeblock>

&lt;docinfo>
    &lt;docinfo:doc-heading>World Intellectual Property Organisation&lt;/docinfo:doc-heading>
    ... 
    &lt;docinfo:alt-renditions>
         &lt;docinfo:alt-rendition key="fulltext">
            &lt;lnlink service="ATTACHMENT" status="valid">
               &lt;marker role="content">PDF Format&lt;/marker>
               &lt;api-params>
                  &lt;param name="attachment-type" value="pdf" />
                  &lt;param name="attachment-key" value="4364.wipomm21-xxxx-xxxx-xxxxx-xx.1.pdf" />
                  &lt;param name="componentseq" value="1" />
               &lt;/api-params>
            &lt;/lnlink>
         &lt;/docinfo:alt-rendition>
      &lt;/docinfo:alt-renditions>
    ...
&lt;/docinfo>

</codeblock>
</example>
	        
	        <example>
	            <title>Target XML</title>
	            <codeblock>

&lt;doc:metadata>
  &lt;doc:docinfo doc-content-country="GB">
    &lt;dc:metadata>
       ...
       &lt;dc:title>World Intellectual Property Organisation&lt;/dc:title>
       ...
    &lt;/dc:metadata>
    ...
    &lt;doc:alt-renditions>
        &lt;doc:alt-rendition key="fulltext">
            &lt;ref:lnlink service="ATTACHMENT">
                &lt;ref:marker role="content">World Intellectual Property Organisation&lt;/ref:marker>
                &lt;ref:locator>
                    &lt;ref:locator-key>
                        &lt;ref:key-name name="attachment-key"/>
                        &lt;ref:key-value value="4364.wipomm21-xxxx-xxxx-xxxxx-xx.1"/>
                    &lt;/ref:locator-key>
                    &lt;ref:locator-params>
                        &lt;proc:param name="componentseq" value="1"/>
                        &lt;proc:param name="attachment-type" value="PDF"/>
                        &lt;proc:param name="attachment-smi" value=""/>
                        &lt;!-- @value populated with SMI obtained from CSSM -->
                        &lt;!-- This @value assignment is done by conversion program -->
                    &lt;/ref:locator-params>
                &lt;/ref:locator>
            &lt;/ref:lnlink>
        &lt;/doc:alt-rendition>
   &lt;/doc:alt-renditions>
    ...
  &lt;/doc:docinfo>
  &lt;/doc:metadata>
  
  </codeblock>
  </example>
	        
	        <section>
	            <title>Changes</title>
	            <p>2017-04-04: <ph id="change_20170404_SS">Updated existing rules for
	                <sourcexml>docinfo:alt-rendition/link</sourcexml> or
	                <sourcexml>lnlink</sourcexml> occurring with or without pcdata. Uses
	                <sourcexml>docinfo:doc-heading</sourcexml> to populate
	                <targetxml>ref:marker</targetxml>. VSTS Issue 246294.</ph></p>
	            <p>2017-02-06: <ph id="change_20170206_AS">New rule. Handles
	                <sourcexml>docinfo:alt-rendition/link</sourcexml> occurring without pcdata.
	                Uses <sourcexml>docinfo:doc-heading</sourcexml> to populate
	                <targetxml>ref:marker</targetxml>. VSTS Issue 226835.</ph></p>
	        </section>
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK14-Precedents\UK14_Precedents_alt.rendition-ref.marker.dita  -->
	<!--<xsl:message>UK14_Precedents_alt.rendition-ref.marker.xsl requires manual development!</xsl:message>--> 

    <xsl:template match="docinfo:alt-renditions/docinfo:alt-rendition">

		<!--  Original Target XPath:  ref:marker   -->
        <doc:alt-renditions>
            <doc:altrendition>
			<xsl:apply-templates select="@* | node()"/>
            </doc:altrendition> 
        </doc:alt-renditions>
	</xsl:template>
    
    

</xsl:stylesheet>