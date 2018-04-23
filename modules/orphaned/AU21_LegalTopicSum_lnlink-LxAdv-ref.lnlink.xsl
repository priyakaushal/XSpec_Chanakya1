<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="AU21_Rosetta_lnlink-to-LexisAdvance_ref.lnlink">
  <title><sourcexml>lnlink</sourcexml> to <targetxml>ref:lnlink</targetxml> <lnpid>id-AU21-22418</lnpid></title>
  <body>
    <section>
      <p><sourcexml>lnlink</sourcexml> becomes <targetxml>ref:lnlink</targetxml> which is populated
        as follows: <sl>
          <sli><sourcexml>lnlink</sourcexml> maps to <targetxml>ref:lnlink</targetxml></sli>
          <sli><sourcexml>lnlink/marker</sourcexml> maps to
              <targetxml>ref:lnlink/ref:marker</targetxml></sli>
          <sli><sourcexml>lnlink/marker/@role</sourcexml> maps to
              <targetxml>ref:lnlink/ref:marker/@role</targetxml></sli>
          <sli><sourcexml>lnlink/api-params</sourcexml>maps to
              <targetxml>ref:lnlink/ref:locator-params</targetxml></sli>
          <sli><sourcexml>api-params/param name="dpsi" value="XXX"</sourcexml> maps to
              <targetxml>ref:locator-params/proc:param name="dpsi" value="XXX"</targetxml></sli>
        </sl>
      </p>
    </section>

    <example>
      <title>Source XML 1</title>
      <codeblock>
       
            &lt;dict:subtopic id="KEYLEG:AGEDISCRIMINATION"&gt;
               &lt;dict:topicname&gt;
                  &lt;emph typestyle="bf"&gt;Key Legislation:&lt;/emph&gt;
               &lt;/dict:topicname&gt;
               &lt;p&gt;
                  &lt;text&gt;
                     &lt;lnlink refpt="DUMMYLINK"&gt;
                        &lt;marker&gt;(CTH) Age Discrimination Act 2004&lt;/marker&gt;
                        &lt;api-params&gt;
                           &lt;param name="dpsi" value="005X"/&gt;
                        &lt;/api-params&gt;
                     &lt;/lnlink&gt;
                  &lt;/text&gt;
               &lt;/p&gt;
              ...
              
        &lt;/dict:subtopic&gt;        
        
    	</codeblock>
    </example>

    <example>
      <title>Target XML 1</title>
      <codeblock>
     
           &lt;tei:entry type="KEYLEG:AGEDISCRIMINATION"&gt;
                    &lt;tei:usg type="KeyLegislation"&gt;Key Legislation&lt;/tei:usg&gt;
                    &lt;tei:def&gt;
                        &lt;pgrp&gt;
                            &lt;p&gt;
                                &lt;text&gt;
                                    &lt;ref:lnlink xml:id="DUMMYLINK"&gt;
                                        &lt;ref:marker&gt;(CTH) Age Discrimination Act 2004&lt;/ref:marker&gt;
                                        &lt;ref:locator&gt;
                                            &lt;ref:locator-params&gt;
                                                &lt;proc:param name="dpsi" value="005X"/&gt;
                                            &lt;/ref:locator-params&gt;
                                        &lt;/ref:locator&gt;
                                    &lt;/ref:lnlink&gt;
                                &lt;/text&gt;
                            &lt;/p&gt;
              &lt;/tei:entry&gt;
                
      
	</codeblock>
    </example>
    <section>
      <title>Changes</title>
      <p>2013-04-24 <ph id="change_20130424_WL">Created</ph>.</p>
        <p>2013-07-08 <ph id="change_20130708_WL">Removed the instructions for the <sourcexml>api-params/param name="attachment-smi"</sourcexml> because there is not occurence in the source data</ph></p>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU21_Legal_Topic_Summaries\AU21_LegalTopicSum_lnlink-LxAdv-ref.lnlink.dita  -->
	<xsl:message>AU21_LegalTopicSum_lnlink-LxAdv-ref.lnlink.xsl requires manual development!</xsl:message> 

	<xsl:template match="lnlink">

		<!--  Original Target XPath:  ref:lnlink   -->
		<ref:lnlink>
			<xsl:apply-templates select="@* | node()"/>
		</ref:lnlink>

	</xsl:template>

	<xsl:template match="lnlink/marker">

		<!--  Original Target XPath:  ref:lnlink/ref:marker   -->
		<ref:lnlink>
			<ref:marker>
				<xsl:apply-templates select="@* | node()"/>
			</ref:marker>
		</ref:lnlink>

	</xsl:template>

	<xsl:template match="lnlink/marker/@role">

		<!--  Original Target XPath:  ref:lnlink/ref:marker/@role   -->
		<ref:lnlink>
			<ref:marker>
				<xsl:attribute name="role">
					<xsl:apply-templates select="node()"/>
				</xsl:attribute>
			</ref:marker>
		</ref:lnlink>

	</xsl:template>

	<xsl:template match="lnlink/api-params">

		<!--  Original Target XPath:  ref:lnlink/ref:locator-params   -->
		<ref:lnlink>
			<ref:locator-params>
				<xsl:apply-templates select="@* | node()"/>
			</ref:locator-params>
		</ref:lnlink>

	</xsl:template>

	<xsl:template match="api-params/param name=&#34;dpsi&#34; value=&#34;XXX&#34;">

		<!--  Original Target XPath:  ref:locator-params/proc:paramname="dpsi"value="XXX"   -->
		<ref:locator-params>
			<!--  Could not determine target element or attribute name:  <proc:paramname="dpsi"value="XXX">  -->				<xsl:apply-templates select="@* | node()"/>
			<!--  Could not determine target element or attribute name:  </proc:paramname="dpsi"value="XXX">  -->
		</ref:locator-params>

	</xsl:template>

	<xsl:template match="api-params/param name=&#34;attachment-smi&#34;">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

</xsl:stylesheet>