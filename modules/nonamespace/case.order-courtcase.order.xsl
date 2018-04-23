<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="case.order-courtcase.order">
  <title>case:order <lnpid>id-ST01-26240</lnpid></title>
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
     <!--<section>
      <title>Changes</title>
      </section>-->
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-Standard\courtcase\case.order-courtcase.order.dita  -->
	<xsl:message>case.order-courtcase.order.xsl requires manual development!</xsl:message> 

</xsl:stylesheet>