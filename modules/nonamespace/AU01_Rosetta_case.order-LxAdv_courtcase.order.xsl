<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"
    xmlns:courtcase="http://www.lexisnexis.com/xmlschemas/content/legal/courtcase/1/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="AU01_Rosetta_case.order-LxAdv_courtcase.order">
  <title>case:order <lnpid>id-AU01-18231</lnpid></title>
  <body>
    <section conref="../../common_caselaw/conref_content/Rosetta_case.order-LxAdv_courtcase.order.dita#Rosetta_case.order-LxAdv_courtcase.order/mapping"/>
    <example>
      <codeblock>
&lt;case:order subdoc="true" toc-caption="Orders"&gt;
    &lt;heading&gt;
        &lt;title&gt;Orders&lt;/title&gt;
    &lt;/heading&gt;
    &lt;l&gt;
        &lt;li&gt;
            &lt;lilabel&gt;&lt;emph typestyle="ro"&gt;(1)&lt;/emph&gt;&lt;/lilabel&gt;
            &lt;p&gt;
                &lt;text&gt;The plaintiffs&amp;#x2019; application is dismissed.&lt;/text&gt;
            &lt;/p&gt;
        &lt;/li&gt;
        &lt;li&gt;
            &lt;lilabel&gt;&lt;emph typestyle="ro"&gt;(2)&lt;/emph&gt;&lt;/lilabel&gt;
            &lt;p&gt;
                &lt;text&gt;The plaintiffs pay the defendant&amp;#x2019;s costs, including each appearance in the court, as taxed, if not agreed.&lt;/text&gt;
            &lt;/p&gt;
        &lt;/li&gt;
    &lt;/l&gt;
&lt;/case:order&gt;
       </codeblock>
      <b>becomes</b>
      <codeblock>
&lt;courtcase:orders&gt;
    &lt;courtcase:order includeintoc="true" alternatetoccaption="Orders"&gt;
        &lt;heading&gt;
            &lt;title&gt;Orders&lt;/title&gt;
        &lt;/heading&gt;
        &lt;bodytext&gt;
            &lt;list&gt;
                &lt;listitem&gt;
                    &lt;label&gt;&lt;emph typestyle="ro"&gt;(1)&lt;/emph&gt;&lt;/label&gt;
                    &lt;bodytext&gt;
                        &lt;p&gt;
                            &lt;text&gt;The plaintiffs&amp;#x2019; application is dismissed.&lt;/text&gt;
                        &lt;/p&gt;
                    &lt;/bodytext&gt;
                &lt;/listitem&gt;
                &lt;listitem&gt;
                    &lt;label&gt;&lt;emph typestyle="ro"&gt;(2)&lt;/emph&gt;&lt;/label&gt;
                    &lt;bodytext&gt;
                        &lt;p&gt;
                            &lt;text&gt;The plaintiffs pay the defendant&amp;#x2019;s costs, including each appearance in the court, as taxed, if not agreed.&lt;/text&gt;
                        &lt;/p&gt;
                    &lt;/bodytext&gt;
                &lt;/listitem&gt;
            &lt;/list&gt;
        &lt;/bodytext&gt;    
    &lt;/courtcase:order&gt;
&lt;/courtcase:orders&gt;
       </codeblock>
    </example>
    <!--<section
      conref="../../common_caselaw/conref_content/Rosetta_case.order-LxAdv_courtcase.order.dita#Rosetta_case.order-LxAdv_courtcase.order/changes"/>-->
    <!--<section>
      <title>Changes Specific to AU01</title>
      </section>-->
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU01_CaseLaw\AU01_Rosetta_case.order-LxAdv_courtcase.order.dita  -->
	<!--<xsl:message>AU01_Rosetta_case.order-LxAdv_courtcase.order.xsl requires manual development!</xsl:message>--> 
    <!-- SS: Done - Added instruction for case:order -->
    <xsl:template match="case:order">
        <courtcase:orders>
            <courtcase:order>
                <xsl:choose>
                    <xsl:when test="./@subdoc">
                        <xsl:attribute name="includeintoc">
                            <xsl:value-of select="@subdoc"/>
                        </xsl:attribute>
                    </xsl:when>
                    <xsl:when test="./@toc-caption">
                        <xsl:attribute name="alternatetoccaption">
                            <xsl:value-of select="@toc-caption"/>
                        </xsl:attribute>
                    </xsl:when>    
                </xsl:choose>
                <xsl:apply-templates select="heading"/>
                <bodytext>
                    <xsl:apply-templates select="@* | node() except heading"/>
                </bodytext>
            </courtcase:order>
        </courtcase:orders>
    </xsl:template>
</xsl:stylesheet>