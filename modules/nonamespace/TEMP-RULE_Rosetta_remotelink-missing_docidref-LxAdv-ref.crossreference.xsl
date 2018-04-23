<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="TEMP-RULE_Rosetta_remotelink-missing_docidref-LxAdv-ref.crossreference">
  <title>remotelink[@service="DOC-ID"][not(@docidref)] <b>(TEMPORARY RULE)</b></title>
  <body>
    <section>
      <p>When a <sourcexml>remotelink[@service="DOC-ID"]</sourcexml> is encountered without
          <sourcexml>@docidref</sourcexml>, the value "XXXX" (without quotes) should be used to hold
        the place of the absent <sourcexml>@docidref</sourcexml>.</p>
      <note>This is a <b>temporary</b> rule that will be removed once the content fabrication
        process has been updated so that this scenario does not occur.</note>
    </section>
    <example>
      <codeblock>
&lt;remotelink service="DOC-ID" remotekey1="REFPTID" dpsi="0OLI" refpt="CITEID_100935"&gt;Definition of
  dismissal in unfair dismissal — Constructive dismissal&lt;/remotelink&gt;
            </codeblock>
      <b>becomes</b>
      <codeblock>
&lt;ref:crossreference crossreferencetype="seeAlso"&gt;
  &lt;ref:content&gt;Definition of dismissal in unfair dismissal — Constructive dismissal&lt;/ref:content&gt;
  &lt;ref:locator anchoridref="CITEID_100935"&gt;
    &lt;ref:locator-key&gt;
      &lt;ref:key-name name="DOC-ID"/&gt;
      &lt;ref:key-value value="0OLI-XXXX"/&gt;
    &lt;/ref:locator-key&gt;
  &lt;/ref:locator&gt;
&lt;/ref:crossreference&gt;
           </codeblock>
    </example>
    <section>
      <title>Changes</title>
      <p>2013-08-12: <ph id="change_20130812_DSF">Created.</ph></p>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK15-PracticalGuidance\TEMP-RULE_Rosetta_remotelink-missing_docidref-LxAdv-ref.crossreference.dita  -->
<!--	<xsl:message>TEMP-RULE_Rosetta_remotelink-missing_docidref-LxAdv-ref.crossreference.xsl requires manual development!</xsl:message> -->

	<xsl:template match="remotelink[@service=&#34;DOC-ID&#34;]">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

	<xsl:template match="@docidref">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

</xsl:stylesheet>