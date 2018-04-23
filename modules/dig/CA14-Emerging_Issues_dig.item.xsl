<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:dig="http://www.lexis-nexis.com/glp/dig" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:seclaw="http://www.lexisnexis.com/xmlschemas/content/legal/secondary-law/1/" version="2.0" exclude-result-prefixes="dita case seclaw dig">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="dig.item">
    <title>dig:item <lnpid>id-CA14-35624</lnpid></title>

    <body>
        <section>
            <p><sourcexml>dig:item</sourcexml> becomes <targetxml>seclaw:digest</targetxml>.</p>
        </section>
        <!-- empty section to create space. McNally Mar 27 2015 -->
        <section/>
        <section><p><u>Special Rule for dpsi 03KA "Carlson Quantums"</u></p><p>Rosetta
                    <sourcexml>dig:item</sourcexml> markup in dpsi 03KA does not follow usual
                pattern. There are inappropriate <sourcexml>dig:item</sourcexml> wrappers which must
                be suppressed. <i>Summary of special action:</i>
                <sourcexml>dig:item</sourcexml> becomes <targetxml>seclaw:digest</targetxml> only
                when descendant <sourcexml>abbrvname</sourcexml> is present. Rules as follow:<ul>
                    <li>When <sourcexml>dig:item/dig:info/case:info/abbrvname</sourcexml> is
                        encountered, open <targetxml>seclaw:digest</targetxml></li>
                    <li>Convert <sourcexml>dig:item</sourcexml> children as described elsewhere in
                        these Instructions</li>
                    <li>Suppress subsequent <sourcexml>dig:item</sourcexml> wrappers, converting the
                        children within the open <targetxml>seclaw:digest</targetxml></li>
                    <li>Close that <targetxml>seclaw:digest</targetxml> and open new
                            <targetxml>seclaw:digest</targetxml> when next
                            <sourcexml>dig:item//abbrvname</sourcexml> encountered</li>
                </ul></p></section>

        <example>
            <title>Example 1</title>
            <codeblock>
&lt;dig:item&gt;
    ...
&lt;/dig:item&gt;
       </codeblock>
            <b>becomes</b>
            <codeblock>
&lt;seclaw:digest&gt;
    ...
&lt;/seclaw:digest&gt;
       </codeblock>
        </example>

        <example>
            <title>Example 2. Special for dpsi 03KA "Carlson Quantums"</title>
            <codeblock>

&lt;!-- dig:item contains abbrvname. Open target seclaw:digest --&gt;
&lt;dig:item&gt;
   &lt;dig:info&gt;
      &lt;case:info&gt;
         &lt;abbrvname&gt;Bollman v. Soenen&lt;/abbrvname&gt;
         &lt;case:reportercite&gt;
            &lt;ci:cite&gt;
               &lt;ci:case&gt;&lt;!-- etc --&gt;&lt;/ci:case&gt;
               &lt;ci:content&gt;CARL/2013-003&lt;/ci:content&gt;
            &lt;/ci:cite&gt;
         &lt;/case:reportercite&gt;
         &lt;case:courtinfo&gt;
            &lt;case:courtname&gt;Ontario Superior Court of Justice&lt;/case:courtname&gt;
            &lt;case:judges&gt;J.A. Ramsay J.&lt;/case:judges&gt;
            &lt;case:dates&gt;
               &lt;case:decisiondate&gt;December 13, 2012.&lt;/case:decisiondate&gt;
            &lt;/case:dates&gt;
         &lt;/case:courtinfo&gt;
      &lt;/case:info&gt;
   &lt;/dig:info&gt;
   &lt;dig:cause-of-action&gt;
      &lt;dig:action-facts&gt;
         &lt;dig:cause-date&gt;June 23, 2008.&lt;/dig:cause-date&gt;
      &lt;/dig:action-facts&gt;
   &lt;/dig:cause-of-action&gt;
&lt;/dig:item&gt;
&lt;!-- Next dig:item does not contain abbrvname. --&gt;
&lt;!-- Suppress dig:item tag. Map content within the open target seclaw:digest --&gt;
&lt;dig:item&gt;
   &lt;dig:info&gt;
      &lt;case:info&gt;
         &lt;case:constituents constituenttype="counsel"&gt;
            &lt;p&gt;
               &lt;text&gt;John Smith&lt;/text&gt;
            &lt;/p&gt;
         &lt;/case:constituents&gt;
      &lt;/case:info&gt;
   &lt;/dig:info&gt;
&lt;/dig:item&gt;
&lt;!-- Next dig:item does not contain abbrvname. --&gt;
&lt;!-- Suppress dig:item tag. Map content within the open target seclaw:digest --&gt;
&lt;dig:item&gt;
   &lt;dig:damages&gt;
      &lt;dig:damages-description&gt;
         &lt;p&gt;
            &lt;text&gt;Non-pecuniary damages: $100,000.&lt;/text&gt;
         &lt;/p&gt;
      &lt;/dig:damages-description&gt;
   &lt;/dig:damages&gt;
&lt;/dig:item&gt;
&lt;!-- Next dig:item does not contain abbrvname. --&gt;
&lt;!-- Suppress dig:item tag. Map content within the open target seclaw:digest --&gt;
&lt;dig:item&gt;
   &lt;dig:cause-of-action&gt;
      &lt;dig:action-facts&gt;
         &lt;dig:injury&gt;
            &lt;p&gt;
               &lt;text&gt;Medical Malpractice -- gynecology.&lt;/text&gt;
            &lt;/p&gt;
         &lt;/dig:injury&gt;
         &lt;dig:injury-duration&gt;Tube -- 3 months.&lt;/dig:injury-duration&gt;
      &lt;/dig:action-facts&gt;
      &lt;dig:action-party&gt;
         &lt;gender&gt;Female&lt;/gender&gt;
         &lt;dig:age&gt;
            &lt;age&gt;53 at time of trial.&lt;/age&gt;
         &lt;/dig:age&gt;
      &lt;/dig:action-party&gt;
   &lt;/dig:cause-of-action&gt;
   &lt;dig:info&gt;
      &lt;case:info&gt;
         &lt;case:constituents constituenttype="consultant"&gt;
            &lt;p&gt;
               &lt;text&gt;Dr. Kristina Dervaitis.&lt;/text&gt;
            &lt;/p&gt;
         &lt;/case:constituents&gt;
      &lt;/case:info&gt;
   &lt;/dig:info&gt;
   &lt;dig:damages&gt;
      &lt;dig:damages-valuation&gt;
         &lt;p&gt;
            &lt;text&gt;Contributory negligence&lt;/text&gt;
         &lt;/p&gt;
      &lt;/dig:damages-valuation&gt;
   &lt;/dig:damages&gt;
&lt;/dig:item&gt;
&lt;!-- Next dig:item contains abbrvname. --&gt;
&lt;!-- Close previous target seclaw:digest. Open new seclaw:digest --&gt;
&lt;dig:item&gt;
   &lt;dig:info&gt;
      &lt;case:info&gt;
         &lt;abbrvname&gt;Gulbrandsen v. Mohr&lt;/abbrvname&gt;
         &lt;!-- etc. --&gt;
      &lt;/case:info&gt;
   &lt;/dig:info&gt;
&lt;/dig:item&gt;
       </codeblock>
            <b>becomes</b>
            <codeblock>

&lt;seclaw:digest&gt;
   &lt;seclaw:digestinfo&gt;
      &lt;caseinfo:caseinfo&gt;
         &lt;caseinfo:casename&gt;
            &lt;caseinfo:shortcasename&gt;Bollman v. Soenen&lt;/caseinfo:shortcasename&gt;
         &lt;/caseinfo:casename&gt;
         &lt;ref:citations&gt;
            &lt;ref:cite4thisresource citetype="reporter"&gt;
               &lt;lnci:cite&gt;
                  &lt;lnci:case&gt;&lt;!-- etc --&gt;&lt;/lnci:case&gt;
                  &lt;lnci:content&gt;CARL/2013-003&lt;/lnci:content&gt;
               &lt;/lnci:cite&gt;
            &lt;/ref:cite4thisresource&gt;
         &lt;/ref:citations&gt;
         &lt;jurisinfo:courtinfo&gt;
            &lt;jurisinfo:courtname&gt;Ontario Superior Court of Justice&lt;/jurisinfo:courtname&gt;
         &lt;/jurisinfo:courtinfo&gt;
         &lt;courtcase:panel&gt;
            &lt;courtcase:judges&gt;J.A. Ramsay J.&lt;/courtcase:judges&gt;
         &lt;/courtcase:panel&gt;
         &lt;decision:dates&gt;
            &lt;decision:decisiondate&gt;December 13, 2012.&lt;/decision:decisiondate&gt;
         &lt;/decision:dates&gt;
      &lt;/caseinfo:caseinfo&gt;
   &lt;/seclaw:digestinfo&gt;
   &lt;casedigest:facts&gt;
      &lt;casedigest:causeofaction&gt;
         &lt;casedigest:causedate&gt;June 23, 2008.&lt;/casedigest:causedate&gt;
      &lt;/casedigest:causeofaction&gt;
   &lt;/casedigest:facts&gt;
   &lt;seclaw:digestinfo&gt;
      &lt;caseinfo:caseinfo&gt;
         &lt;courtcase:representation&gt;
            &lt;courtcase:counsel&gt;John Smith&lt;/courtcase:counsel&gt;
         &lt;/courtcase:representation&gt;
      &lt;/caseinfo:caseinfo&gt;
   &lt;/seclaw:digestinfo&gt;
   &lt;casedigest:damages&gt;
      &lt;casedigest:awardamount&gt;
         &lt;textitem&gt;Non-pecuniary damages: $100,000.&lt;/textitem&gt;
      &lt;/casedigest:awardamount&gt;
   &lt;/casedigest:damages&gt;
   &lt;casedigest:facts&gt;
      &lt;casedigest:causeofaction&gt;
         &lt;casedigest:injury&gt;
            &lt;textitem&gt;Medical Malpractice -- gynecology.&lt;/textitem&gt;
         &lt;/casedigest:injury&gt;
         &lt;casedigest:injuryduration&gt;
            &lt;duration&gt;Tube -- 3 months.&lt;/duration&gt;
         &lt;/casedigest:injuryduration&gt;
         &lt;casedigest:actionparty partyrole="unknown"&gt;
            &lt;person:gender&gt;Female&lt;/person:gender&gt;
            &lt;person:age&gt;53 at time of trial.&lt;/person:age&gt;
         &lt;/casedigest:actionparty&gt;
      &lt;/casedigest:causeofaction&gt;
   &lt;/casedigest:facts&gt;
   &lt;seclaw:digestinfo&gt;
      &lt;caseinfo:caseinfo&gt;
         &lt;courtcase:testimony&gt;
            &lt;courtcase:expertwitnesses&gt;
               &lt;courtcase:expertwitness&gt;Dr. Kristina Dervaitis.&lt;/courtcase:expertwitness&gt;
            &lt;/courtcase:expertwitnesses&gt;
         &lt;/courtcase:testimony&gt;
      &lt;/caseinfo:caseinfo&gt;
   &lt;/seclaw:digestinfo&gt;
   &lt;casedigest:damages&gt;
      &lt;casedigest:valuation&gt;
         &lt;bodytext&gt;
            &lt;p&gt;
               &lt;text&gt;Contributory negligence&lt;/text&gt;
            &lt;/p&gt;
         &lt;/bodytext&gt;
      &lt;/casedigest:valuation&gt;
   &lt;/casedigest:damages&gt;
&lt;/seclaw:digest&gt;
&lt;seclaw:digest&gt;
   &lt;seclaw:digestinfo&gt;
      &lt;caseinfo:caseinfo&gt;
         &lt;caseinfo:casename&gt;
            &lt;caseinfo:shortcasename&gt;Gulbrandsen v. Mohr&lt;/caseinfo:shortcasename&gt;
         &lt;/caseinfo:casename&gt;
         &lt;!-- etc. --&gt;
      &lt;/caseinfo:caseinfo&gt;
   &lt;/seclaw:digestinfo&gt;
&lt;/seclaw:digest&gt;
       </codeblock>
        </example>
        <section>
            <title>Changes</title>
            <p>2015-03-26: <ph id="change_20150326_jm">Not a rule change. Added example to
                    illustrate special action for dpsi 03KA Carlson Quantums. For completeness, not
                    an RFA.</ph></p>
            <p>2015-02-20: <ph id="change_20150220_PS">Created.</ph></p>
        </section>
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA14-Emerging_Issues\dig.item.dita  -->
	<!--<xsl:message>CA14-Emerging_Issues_dig.item.xsl requires manual development!</xsl:message> -->

   <!--Vikas Rohilla :  Template to match the dig:item and the descendant abbrvname or the case:casename-->
   <xsl:template match="dig:item[child::dig:info/case:info/abbrvname or child::dig:info/case:info/case:casename]">
		<!--  Original Target XPath:  seclaw:digest   -->
		<seclaw:digest>
			<xsl:apply-templates select="@* | node()"/>
		   <xsl:if test="following-sibling::*[1][self::dig:item[not(child::dig:info/case:info/abbrvname or child::dig:info/case:info/case:casename)]]">
		      <xsl:call-template name="wrap-digitem">
		         <xsl:with-param name="node" select="following-sibling::*[1][self::dig:item[not(child::dig:info/case:info/abbrvname or child::dig:info/case:info/case:casename)]]"/>
		      </xsl:call-template>
		   </xsl:if>
		</seclaw:digest>
   </xsl:template>
   
   <!-- Vikas Rohilla : Template name wrap-digitem for wrap the following sibling  -->
   <xsl:template name="wrap-digitem">
      <xsl:param name="node"/>
      <xsl:apply-templates select="$node" mode="wrap-digitem"/>
      <xsl:if test="$node/following-sibling::*[1][self::dig:item[not(child::dig:info/case:info/abbrvname or child::dig:info/case:info/case:casename)]]">
         <xsl:call-template name="wrap-digitem">
            <xsl:with-param name="node" select="$node/following-sibling::*[1][self::dig:item[not(child::dig:info/case:info/abbrvname or child::dig:info/case:info/case:casename)]]"/>
         </xsl:call-template>
      </xsl:if>
   </xsl:template>

   <!--Vikas Rohilla : template to match the dig:item with the @att mode  wrap-digitem-->
   <xsl:template match="dig:item" mode="wrap-digitem">
      <xsl:apply-templates select="node()|@*"/>
   </xsl:template>

   <!-- Vikas Rohilla : Template match dig:item   -->
   <xsl:template match="dig:item[not(child::dig:info/case:info/abbrvname or child::dig:info/case:info/case:casename)][not(preceding-sibling::dig:item[child::dig:info/case:info/abbrvname or child::dig:info/case:info/case:casename])]">
         <xsl:apply-templates select="@* | node()"/>
   </xsl:template>
   
   <xsl:template match="dig:item[not(child::dig:info/case:info/abbrvname or child::dig:info/case:info/case:casename)][preceding-sibling::dig:item[child::dig:info/case:info/abbrvname or child::dig:info/case:info/case:casename]]"/>


</xsl:stylesheet>