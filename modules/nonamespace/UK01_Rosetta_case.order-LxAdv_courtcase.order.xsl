<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:case="http://www.lexis-nexis.com/glp/case"
	xmlns:courtcase="http://www.lexisnexis.com/xmlschemas/content/legal/courtcase/1/"
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
	xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/"
	xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl" version="2.0" exclude-result-prefixes="dita case xd">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="UK01_Rosetta_case.order-LxAdv_courtcase.order">
		<title>case:order <lnpid>id-UK01-27037</lnpid></title>
		<body>
			<section
				conref="../../common_caselaw/conref_content/Rosetta_case.order-LxAdv_courtcase.order.dita#Rosetta_case.order-LxAdv_courtcase.order/mapping"/>
			<example>
				<codeblock> &lt;case:order subdoc="true"&gt; &lt;p&gt; &lt;text&gt;On those grounds,&lt;/text&gt; &lt;/p&gt;
					&lt;p&gt; &lt;text&gt;THE COURT OF FIRST INSTANCE (Fourth Chamber),&lt;/text&gt; &lt;/p&gt; &lt;p&gt;
					&lt;text&gt;hereby:&lt;/text&gt; &lt;/p&gt; &lt;p&gt; &lt;text&gt;1. Annuls the decision of the Second Board
					of Appeal of the Office for Harmonisation in the Internal Market (Trade Marks and Designs) of 21 March 2001
					(Case R 309/1999-2);&lt;/text&gt; &lt;/p&gt; &lt;p&gt; &lt;text&gt;2. Orders the defendant to pay the
					costs.&lt;/text&gt; &lt;/p&gt; &lt;/case:order&gt; </codeblock>
				<b>becomes</b>
				<codeblock> &lt;courtcase:orders&gt; &lt;courtcase:order includeintoc="true"&gt; &lt;bodytext&gt; &lt;p&gt;
					&lt;text&gt;On those grounds,&lt;/text&gt; &lt;/p&gt; &lt;p&gt; &lt;text&gt;THE COURT OF FIRST INSTANCE
					(Fourth Chamber),&lt;/text&gt; &lt;/p&gt; &lt;p&gt; &lt;text&gt;hereby:&lt;/text&gt; &lt;/p&gt; &lt;p&gt;
					&lt;text&gt;1. Annuls the decision of the Second Board of Appeal of the Office for Harmonisation in the
					Internal Market (Trade Marks and Designs) of 21 March 2001 (Case R 309/1999-2);&lt;/text&gt; &lt;/p&gt;
					&lt;p&gt; &lt;text&gt;2. Orders the defendant to pay the costs.&lt;/text&gt; &lt;/p&gt; &lt;/bodytext&gt;
					&lt;/courtcase:order&gt; &lt;/courtcase:orders&gt; </codeblock>
			</example>
			<!--<section
      conref="../../common_caselaw/conref_content/Rosetta_case.order-LxAdv_courtcase.order.dita#Rosetta_case.order-LxAdv_courtcase.order/changes"/>-->
			<section>
				<title>Changes</title>
				<p>2013-10-23: <ph id="change_20131023_SSX">Created on 2013-10-23 Webteam # 239816</ph>
				</p>
			</section>
		</body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK01_CaseLaw\UK01_Rosetta_case.order-LxAdv_courtcase.order.dita  -->
	<xd:doc>
		<xd:desc>
			<xd:p>case:order becomes courtcase:opinions/courtcase:orders/courtcase:order. </xd:p>
			<xd:p>With the exception of heading, the children of case:order should be mapped to children of courtcase:order/bodytext</xd:p>			
		</xd:desc>
	</xd:doc>
	<xsl:template match="case:order">
		<courtcase:orders>
			<xsl:apply-templates select="ref:page"/>
			<courtcase:order>
				<xsl:apply-templates select="heading"/>
				<bodytext xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
					<xsl:apply-templates select="@* | node() except (heading,ref:page)"/>
				</bodytext>
			</courtcase:order>
		</courtcase:orders>
	</xsl:template>	

	<xd:doc>
		<xd:desc>
			<xd:p>@subdoc becomes @includeintoc.</xd:p>
		</xd:desc>
	</xd:doc>
	<xsl:template match="case:order/@subdoc">
		<!--  Original Target XPath:  courtcase:opinion/@includeintoc   -->
		<xsl:attribute name="includeintoc">
			<xsl:value-of select="."/>
		</xsl:attribute>
	</xsl:template>
	
	<xd:doc>
		<xd:desc>
			<xd:p>@toc-caption becomes @alternatetoccaption</xd:p>
		</xd:desc>
	</xd:doc>
	<xsl:template match="case:order/@toc-caption">
		<!--  Original Target XPath:  courtcase:opinion/@alternatetoccaption   -->
		<xsl:attribute name="alternatetoccaption">
			<xsl:value-of select="."/>
		</xsl:attribute>
	</xsl:template>
	
	<xd:doc>
		<xd:desc>
			<xd:p>Note: If page occurs as the first child of case:order then conversion needs to create ref:page under courtcase:orders, i.e, case:order/
				page becomes courtcase:orders/ref:page.</xd:p>
		</xd:desc>
	</xd:doc>
	<xsl:template match="page[parent::case:order and not(preceding-sibling::*)]">
		<ref:page xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/">
			<xsl:apply-templates select="@* | node()"/>
		</ref:page>		
	</xsl:template>
	
</xsl:stylesheet>
