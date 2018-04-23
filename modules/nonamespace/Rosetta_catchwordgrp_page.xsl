<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" xmlns:classify="http://www.lexisnexis.com/xmlschemas/content/shared/classification/1/" version="2.0" exclude-result-prefixes="dita ref">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_catchwordgrp_page">
  <title>catchwordgrp/page <lnpid>id-CCCC-12024</lnpid></title>
  <body>
    <section>
      <p><sourcexml>catchwordgrp/page</sourcexml> becomes
          <targetxml>classify:classification/classify:classitem/classify:classitem-identifier/classify:classname/ref:page</targetxml>.</p>
    </section>
    <example>
      <title>Source XML</title>
      <codeblock>
&lt;catchwordgrp&gt;
  &lt;catchwords&gt;
    &lt;catchphrase&gt;Emergency Legislation &amp;#x2013; Trading with the enemy &amp;#x2013; Guarantee by English
      company of debt due to neutral by German company &amp;#x2013; Whether payment under guarantee for
      benefit or in discharge of obligation of enemy &lt;ci:cite searchtype="LEG-REF" status="valid"&gt;
        &lt;ci:sesslaw&gt;
          &lt;ci:sesslawinfo&gt;
            &lt;ci:sesslawnum num="1939_89a"/&gt;
            &lt;ci:hierpinpoint&gt;
              &lt;ci:hierlev label="section" num="1"/&gt;
            &lt;/ci:hierpinpoint&gt;
          &lt;/ci:sesslawinfo&gt;
          &lt;ci:sesslawref&gt;
            &lt;ci:standardname normpubcode="UK_ACTS"/&gt;
          &lt;/ci:sesslawref&gt;
        &lt;/ci:sesslaw&gt;
        &lt;ci:content&gt;Trading with the Enemy Act 1939 (c 89), s 1(2)(a) &lt;/ci:content&gt;
      &lt;/ci:cite&gt;. &lt;/catchphrase&gt;
  &lt;/catchwords&gt;
  &lt;page text="[1941] 1 All ER 257 at " count="258" reporter="ALLER"/&gt;
&lt;/catchwordgrp&gt;
      </codeblock>
      <b>becomes</b>
      <codeblock>
&lt;classify:classification classscheme="catchwords"&gt;
  &lt;classify:classitem&gt;
    &lt;classify:classitem-identifier&gt;
      &lt;classify:classname&gt; Emergency Legislation &amp;#x2013; Trading with the enemy &amp;#x2013; Guarantee
        by English company of debt due to neutral by German company &amp;#x2013; Whether payment under
        guarantee for benefit or in discharge of obligation of enemy &lt;lnci:cite status="valid"&gt;
          &lt;lnci:sesslaw&gt;
            &lt;lnci:sesslawinfo&gt;
              &lt;lnci:sesslawnum num="1939_89a"/&gt;
              &lt;lnci:hierpinpoint&gt;
                &lt;lnci:hierlev label="section" num="1"/&gt;
              &lt;/lnci:hierpinpoint&gt;
            &lt;/lnci:sesslawinfo&gt;
            &lt;lnci:sesslawref&gt;
              &lt;lnci:standardname normpubcode="UK_ACTS"/&gt;
            &lt;/lnci:sesslawref&gt;
          &lt;/lnci:sesslaw&gt;
          &lt;lnci:content&gt;Trading with the Enemy Act 1939 (c 89), s 1(2)(a) &lt;/lnci:content&gt;
        &lt;/lnci:cite&gt;. &lt;/classify:classname&gt;
    &lt;/classify:classitem-identifier&gt;
  &lt;/classify:classitem&gt;
&lt;/classify:classification&gt;
&lt;classify:classification classscheme="catchwords"&gt;
  &lt;classify:classitem&gt;
    &lt;classify:classitem-identifier&gt;
      &lt;classify:classname&gt;
        &lt;ref:page num="258" page-scheme="ALLER" page-scheme-type="reporterabbreviation"/&gt;
      &lt;/classify:classname&gt;
    &lt;/classify:classitem-identifier&gt;
  &lt;/classify:classitem&gt;
&lt;/classify:classification&gt;
      </codeblock>
    </example>
  </body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_caselaw\Rosetta_catchwordgrp_page.dita  -->
	 

  <xsl:template match="page[parent::catchwordgrp or parent::catchwords]" name="page">

		<!--  Original Target XPath:  classify:classification/classify:classitem/classify:classitem-identifier/classify:classname/ref:page   -->
	  <classify:classification>
	    <classify:classitem>
	      <classify:classitem-identifier>
	        <classify:classname>
	          <ref:page>
	            <xsl:attribute name="num">
	              <xsl:value-of select="@count"/>
	            </xsl:attribute>
	          	<!-- JD: 2017-07-12: added if test to prevent schema validation errors 
	          		      "cvc-datatype-valid.1.2.1: '' is not a valid value for 'NMTOKEN'." 
	          		   and 
	          		   	  "cvc-attribute.3: The value '' of attribute 'page-scheme' on element 'ref:page' is not valid with respect to its type, 'NMTOKEN'." -->
	          	<xsl:if test="normalize-space(@reporter)!=''">
		            <xsl:attribute name="page-scheme">
		              <xsl:value-of select="@reporter"/>
		            </xsl:attribute>
	          	</xsl:if>
	            <xsl:attribute name="page-scheme-type">
	              <xsl:text>reporter-abbreviation</xsl:text>
	            </xsl:attribute>
	          </ref:page>          
	        </classify:classname>
	      </classify:classitem-identifier>
	    </classify:classitem>
	  </classify:classification>
	</xsl:template>

</xsl:stylesheet>