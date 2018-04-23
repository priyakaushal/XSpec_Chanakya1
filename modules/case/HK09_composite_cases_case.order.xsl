<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" 
    xmlns:courtcase="http://www.lexisnexis.com/xmlschemas/content/legal/courtcase/1/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" 
    xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"
    version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="case.order">
	    <title>case:order <lnpid>id-HK09-39428</lnpid></title>
   <body>
      <section>
          <ul>
         <li class="- topic/li ">
                    <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:order</sourcexml>
                    becomes <targetxml class="+ topic/keyword xml-d/targetxml ">courtcase:opinions/courtcase:orders/courtcase:order</targetxml>
                    <note class="- topic/note ">Always use <targetxml class="+ topic/keyword xml-d/targetxml ">bodytext</targetxml> as a child
                        of <targetxml class="+ topic/keyword xml-d/targetxml ">courtcase:order</targetxml> in order to handle the child elements for
                            <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:order</sourcexml> except <targetxml class="+ topic/keyword xml-d/targetxml ">heading</targetxml>.</note>
                    <note class="- topic/note ">If <sourcexml>page</sourcexml> occurs as first child
                        of <sourcexml>case:order</sourcexml> then conversion need to create
                            <targetxml>ref:page</targetxml> under
                            <targetxml>courtcase:orders</targetxml> i.e,
                            <sourcexml>case:order/page</sourcexml> becomes
                            <targetxml>courtcase:orders/ref:page</targetxml>.</note>
                    
<pre xml:space="preserve" class="- topic/pre ">

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
<b class="+ topic/ph hi-d/b ">Becomes</b>

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
</pre>
                </li>
          </ul>
      </section>
   </body>
	</dita:topic>


	<xsl:template match="case:order">

		<!--  Original Target XPath:  courtcase:opinions/courtcase:orders/courtcase:order   -->
			<courtcase:orders>
			    <xsl:apply-templates select="case:order/*[1][self::page]"/>
				<courtcase:order>
					<xsl:apply-templates select="@*"/>
				    <xsl:apply-templates select="heading|refpt"/>
				    <bodytext>
				        <xsl:apply-templates select="node() except(heading|refpt|page)"/>
				    </bodytext>
				</courtcase:order>
			</courtcase:orders>
		

	</xsl:template>

	<xsl:template match="page">

		<!--  Original Target XPath:  ref:page   -->
		<ref:page>
			<xsl:apply-templates select="@* | node()"/>
		</ref:page>

	</xsl:template>


</xsl:stylesheet>