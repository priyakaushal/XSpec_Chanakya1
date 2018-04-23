<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:courtcase="http://www.lexisnexis.com/xmlschemas/content/legal/courtcase/1/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="case.order">
   <title>case:order <lnpid>id-ST05-28436</lnpid></title>
   <body>
      <section>
          <ul>
         <li>
                    <sourcexml>case:order</sourcexml>
                    becomes <targetxml>courtcase:opinions/courtcase:orders/courtcase:order</targetxml>
                    <note>Always use <targetxml>bodytext</targetxml> as a child
                        of <targetxml>courtcase:order</targetxml> in order to handle the child elements for
                            <sourcexml>case:order</sourcexml> except <targetxml>heading</targetxml>.</note>
                    <note>If <sourcexml>page</sourcexml> occurs as first child
                        of <sourcexml>case:order</sourcexml> then conversion need to create
                            <targetxml>ref:page</targetxml> under
                            <targetxml>courtcase:orders</targetxml> i.e,
                            <sourcexml>case:order/page</sourcexml> becomes
                            <targetxml>courtcase:orders/ref:page</targetxml>.</note></li>
          </ul>
          </section>
                    
             <example>
                 <title>Source XML based on AU content</title>
                 <codeblock>


&lt;case:order subdoc="true" toc-caption="Orders"&gt;
    &lt;heading&gt;
        &lt;title&gt;Orders&lt;/title&gt;
    &lt;/heading&gt;
    &lt;l&gt;
        &lt;li&gt;
            &lt;lilabel&gt;&lt;emph typestyle="ro"&gt;(1)&lt;/emph&gt;&lt;/lilabel&gt;
            &lt;p&gt;
                &lt;text&gt;The plaintiffs&amp;amp;#x2019; application is dismissed.&lt;/text&gt;
            &lt;/p&gt;
        &lt;/li&gt;
        &lt;li&gt;
            &lt;lilabel&gt;&lt;emph typestyle="ro"&gt;(2)&lt;/emph&gt;&lt;/lilabel&gt;
            &lt;p&gt;
                &lt;text&gt;The plaintiffs pay the defendant&amp;amp;#x2019;s costs, including each appearance in the court, as taxed, if not agreed.&lt;/text&gt;
            &lt;/p&gt;
        &lt;/li&gt;
    &lt;/l&gt;
&lt;/case:order&gt;

           </codeblock>
       </example>
       <example>
           <title>Target XML</title>
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
                            &lt;text&gt;The plaintiffs&amp;amp;#x2019; application is dismissed.&lt;/text&gt;
                        &lt;/p&gt;
                    &lt;/bodytext&gt;
                &lt;/listitem&gt;
                &lt;listitem&gt;
                    &lt;label&gt;&lt;emph typestyle="ro"&gt;(2)&lt;/emph&gt;&lt;/label&gt;
                    &lt;bodytext&gt;
                        &lt;p&gt;
                            &lt;text&gt;The plaintiffs pay the defendant&amp;amp;#x2019;s costs, including each appearance in the court, as taxed, if not agreed.&lt;/text&gt;
                        &lt;/p&gt;
                    &lt;/bodytext&gt;
                &lt;/listitem&gt;
            &lt;/list&gt;
        &lt;/bodytext&gt;    
    &lt;/courtcase:order&gt;
&lt;/courtcase:orders&gt;

           </codeblock>
       </example>
       <section>
           <title>Changes</title>
           <p>2014-05-15: <ph id="change_20140515_SS">Created.</ph></p>
       </section>
   </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-Standard\Compcase\case.order.dita  -->
	<xsl:message>Compcase_case.order.xsl requires manual development!</xsl:message> 

	<xsl:template match="case:order">

		<!--  Original Target XPath:  courtcase:opinions/courtcase:orders/courtcase:order   -->
		<courtcase:opinions>
			<courtcase:orders>
				<courtcase:order>
					<xsl:apply-templates select="@* | node()"/>
				</courtcase:order>
			</courtcase:orders>
		</courtcase:opinions>

	</xsl:template>

	<xsl:template match="page">

		<!--  Original Target XPath:  ref:page   -->
		<ref:page>
			<xsl:apply-templates select="@* | node()"/>
		</ref:page>

	</xsl:template>

	<xsl:template match="case:order/page">

		<!--  Original Target XPath:  courtcase:orders/ref:page   -->
		<courtcase:orders>
			<ref:page>
				<xsl:apply-templates select="@* | node()"/>
			</ref:page>
		</courtcase:orders>

	</xsl:template>

</xsl:stylesheet>