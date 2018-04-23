<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" xmlns:seclaw="http://www.lexisnexis.com/xmlschemas/content/legal/secondary-law/1/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="CA10_remotelink_ChOf_bodytext">
  <title><sourcexml>bodytext/remotelink</sourcexml> <lnpid>id-CA10-14627</lnpid></title>
  <body>
    <section>
      <p>The general instructions for converting <sourcexml>remotelink[@service="DOC-ID"]</sourcexml> should not be followed when processing <sourcexml>bodytext/remotelink</sourcexml>.</p>
      <p>When <sourcexml>remotelink[@service="DOC-ID"]</sourcexml> is a direct child of <sourcexml>bodytext</sourcexml>, the <sourcexml>remotelink</sourcexml> should become <targetxml>ref:lnlink[@service="DOCUMENT"]</targetxml> as a child of the <targetxml>seclaw:bodytext</targetxml> that results from processing <sourcexml>bodytext</sourcexml>.</p>
      <p>The creation of the <targetxml>ref:lnlink/ref:locator</targetxml> and <targetxml>ref:lnlink/ref:locator/ref:locator-key</targetxml> should follow the instructions [specified in the General Markup area for "remotelink"] for creating the locator and locator-key for cross references that result from a <sourcexml>remotelink[@DOC-ID].</sourcexml></p>
      <p>The PCDATA of the <sourcexml>remotelink</sourcexml> becomes the PCDATA used within the <targetxml>ref:lnlink/ref:marker</targetxml>.</p>
    </section>
    <example>
      <title>Source XML</title>
      <codeblock>
        
          &lt;bodytext&gt;
            ...
            &lt;remotelink dpsi="0UOR" refpt="18-685" remotekey1="REFPTID" service="DOC-ID"
              status="valid"&gt;18-685&lt;/remotelink&gt;
            &lt;remotelink dpsi="0UOR" refpt="24-300" remotekey1="REFPTID" service="DOC-ID"
              status="valid"&gt;24-300&lt;/remotelink&gt;
          &lt;/bodytext&gt;
        
      </codeblock>
    </example>
    <example>
      <title>Target XML</title>
      <codeblock>
        
          &lt;seclaw:bodytext&gt;
            ...
            &lt;ref:lnlink service="DOCUMENT"&gt;
              &lt;ref:marker&gt;18-685&lt;/ref:marker&gt;
              &lt;ref:locator&gt;
                &lt;ref:locator-key&gt;
                  &lt;ref:key-name name="DOC-ID"/&gt;
                  &lt;ref:key-value value="0UOR-18-685"/&gt;
                &lt;/ref:locator-key&gt;
              &lt;/ref:locator&gt;
            &lt;/ref:lnlink&gt;
            &lt;ref:lnlink service="DOCUMENT"&gt;
              &lt;ref:marker&gt;24-300&lt;/ref:marker&gt;
              &lt;ref:locator&gt;
                &lt;ref:locator-key&gt;
                  &lt;ref:key-name name="DOC-ID"/&gt;
                  &lt;ref:key-value value="0UOR-24-300"/&gt;
                &lt;/ref:locator-key&gt;
              &lt;/ref:locator&gt;
            &lt;/ref:lnlink&gt;
          &lt;/seclaw:bodytext&gt;
        
      </codeblock>
    </example>
    <section>
      <title>Changes</title>
      <p>2016-04-20: <ph id="change_20160420_remotelink_chof_bodytext_mcj_1">Created new CA10-specific module to cover instructions for handling <sourcexml>bodytext/remotelink[@service="DOC-ID"].</sourcexml>.</ph></p>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA10-Treatise_Textbook_Forms\CA10_remotelink_ChOf_bodytext.dita  -->
	<xsl:message>CA10_remotelink_ChOf_bodytext.xsl requires manual development!</xsl:message> 

	<xsl:template match="bodytext/remotelink">

		<!--  Original Target XPath:  ref:lnlink[@service="DOCUMENT"]   -->
		<ref:lnlink>
			<xsl:apply-templates select="@* | node()"/>
		</ref:lnlink>

	</xsl:template>

	<xsl:template match="remotelink[@service=&#34;DOC-ID&#34;]">

		<!--  Original Target XPath:  ref:lnlink[@service="DOCUMENT"]   -->
		<ref:lnlink>
			<xsl:apply-templates select="@* | node()"/>
		</ref:lnlink>

	</xsl:template>

	<xsl:template match="bodytext">

		<!--  Original Target XPath:  ref:lnlink[@service="DOCUMENT"]   -->
		<ref:lnlink>
			<xsl:apply-templates select="@* | node()"/>
		</ref:lnlink>

	</xsl:template>

	<xsl:template match="remotelink">

		<!--  Original Target XPath:  ref:lnlink[@service="DOCUMENT"]   -->
		<ref:lnlink>
			<xsl:apply-templates select="@* | node()"/>
		</ref:lnlink>

	</xsl:template>

	<xsl:template match="remotelink[@DOC-ID].">

		<!--  Original Target XPath:  ref:lnlink/ref:marker   -->
		<ref:lnlink>
			<ref:marker>
				<xsl:apply-templates select="@* | node()"/>
			</ref:marker>
		</ref:lnlink>

	</xsl:template>

	<xsl:template match="bodytext/remotelink[@service=&#34;DOC-ID&#34;].">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

</xsl:stylesheet>