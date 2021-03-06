<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.currencydate">
  <title>leg:currencydate <lnpid>id-CA06-13811</lnpid></title>
  <body>
      <p><sourcexml>leg:currencydate</sourcexml> with it's child <sourcexml>remotelink</sourcexml>
          and it's contnent will be suppressed in target conversion.</p>
      <example>
            <title>Mapping of <sourcexml>leg:currencydate</sourcexml></title>
            <codeblock>

&lt;leg:dates&gt;
    &lt;leg:currencydate&gt;
        &lt;remotelink dpsi="03EX" remotekey1="DOC-ID" remotekey2="currentness" service="DOC-ID" xml:lang="en"&gt;Updated&amp;#x20;on&amp;#x20;July&amp;#x20;27,&amp;#x20;2012&lt;/remotelink&gt;
    &lt;/leg:currencydate&gt;
&lt;/leg:dates&gt;

      </codeblock>
            <b>becomes</b>
            <codeblock>

    &lt;!-- Suppressed in output --&gt;

        </codeblock>
        </example>
   <!-- <section>
      <p><sourcexml>leg:dates/leg:currencydate</sourcexml> becomes <targetxml>primlaw:prelim/note/currencystatement</targetxml></p> 
    </section>
      <note><b>DPSI</b> value must be captured from manifest files and using in NL target
      conversion.</note>
      <note>For handling <sourcexml>remotelink</sourcexml> refer <xref
                href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita"
                >Remotelink</xref> section in CI but drop the attribute with value
                <targetxml>ref:crossreference@crossreferencetype="seeAlso"</targetxml> in target
            markup and this rule is applicable for scenario
            "<sourcexml>leg:dates/leg:currencydate/remotelink</sourcexml>".</note>
    <example>
            <title>Mapping of <sourcexml>leg:currencydate</sourcexml></title>
            <codeblock>
<![CDATA[
<leg:dates>
    <leg:currencydate>
        <remotelink dpsi="03EX" remotekey1="DOC-ID" remotekey2="currentness" service="DOC-ID" xml:lang="en">Updated&#x20;on&#x20;July&#x20;27,&#x20;2012</remotelink>
    </leg:currencydate>
</leg:dates>
]]>
      </codeblock>
            <b>becomes</b>
            <codeblock>
<![CDATA[
<primlaw:prelim>
    <note>
        <currencystatement>            
            <ref:crossreference>
                <ref:content xml:lang="en">Updated&#x20;on&#x20;July&#x20;27,&#x20;2012</ref:content>
                <ref:locator>
                    <ref:locator-key>
                        <ref:key-name name="DOC-ID"/>
                        <ref:key-value value="03EX-currentness"/>
                    </ref:locator-key>
                </ref:locator>
            </ref:crossreference>
        </currencystatement>
    </note>
</primlaw:prelim>
]]>
        </codeblock>
    </example>-->
      <section>
          <title>Changes</title>
          <p>2014-07-25: <ph id="change_20140725_SSX">Added instruction to suppress target markup of
              <sourcexml>leg:currencydate</sourcexml> with it's child
              <sourcexml>remotelink</sourcexml> from conversion Webteam # 271366.</ph></p>
          <p>2013-04-10: <ph id="change_20130410_ss">Updated example and rule for handling of
                        <sourcexml>leg:dates/leg:currencydate/remotelink</sourcexml></ph>.</p>
      </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA06-Regulation\leg.currencydate.dita  -->
<!--	<xsl:message>CA06-Regulation_leg.currencydate.xsl requires manual development!</xsl:message> -->

	<xsl:template match="leg:currencydate">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

	<xsl:template match="remotelink">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

	<xsl:template match="leg:dates/leg:currencydate/remotelink">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

</xsl:stylesheet>