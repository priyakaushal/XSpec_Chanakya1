<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.levelbody">
   <title>leg:levelbody <lnpid>id-IN01-15419</lnpid></title>
   <body>
      <section>
        <ul>
          <li class="- topic/li ">
            The conversion of <sourcexml>leg:levelbody</sourcexml> depends upon its child elements:
            <ul>
              <li>
                If <sourcexml>leg:level</sourcexml> is the immediate child of <sourcexml>leg:levelbody</sourcexml> then it will become <targetxml>primlaw:level</targetxml> i.e, 
                <sourcexml>leg:levelbody/leg:level</sourcexml> becomes <targetxml>primlaw:level</targetxml>.
              </li>
              <li>
                If <sourcexml>leg:bodytext</sourcexml> is the immediate child of <sourcexml>leg:levelbody</sourcexml> then it will become <targetxml>primlaw:bodytext</targetxml> i.e,
                <sourcexml>leg:levelbody/leg:bodytext</sourcexml> becomes <targetxml>primlaw:bodytext</targetxml>.
              </li>
            </ul>
          </li>
        </ul>
      </section>

           <example>
             <title>Source XML 1 : For <sourcexml>leg:levelbody/leg:level</sourcexml></title>
             <codeblock>

 &lt;leg:levelbody&gt;
 &lt;leg:level&gt;
    &lt;leg:level-vrnt leveltype="prov2" searchtype="LEGISLATION"&gt;
       &lt;leg:levelbody&gt;
        &lt;leg:bodytext searchtype="LEGISLATION"&gt;
          &lt;l&gt;
           &lt;li&gt;
            &lt;lilabel&gt;&amp;#x0028;1&amp;#x0029;&lt;/lilabel&gt;
             &lt;p&gt;
             &lt;text&gt;Whoever wilfully or intentionally evades or
               attempts to evade the payment of duty of excise
               payable by him to the Central Government under
               this Act, shall, on conviction, be punishable with
               imprisonment which may extend to six months, or
               with fine which may extend to one thousand rupees,
               or with both.
               &lt;/text&gt;
              &lt;/p&gt;
           &lt;/li&gt;&lt;/l&gt;
           ..........
           &lt;/leg:bodytext&gt;
       &lt;/leg:levelbody&gt;
&lt;/leg:level&gt;
&lt;/leg:levelbody&gt;

                 </codeblock>
           </example>
           
           <example>
             <title>Target XML 1 : For <sourcexml>leg:levelbody/leg:level</sourcexml></title>
             <codeblock>

&lt;primlaw:level leveltype="subsection"&gt;
    &lt;primlaw:bodytext&gt;
      &lt;list&gt;
        &lt;listitem&gt;
        &lt;label&gt;(1)&lt;/label&gt;
        &lt;bodytext&gt;
          &lt;p&gt;
             &lt;text&gt;Whoever wilfully or intentionally evades or
               attempts to evade the payment of duty of excise
               payable by him to the Central Government under
               this Act, shall, on conviction, be punishable with
               imprisonment which may extend to six months, or
               with fine which may extend to one thousand rupees,
               or with both.
               &lt;/text&gt;
          &lt;/p&gt;
        &lt;/bodytext&gt;
        &lt;/listitem&gt;
     &lt;/list&gt;
     ..........
    &lt;/primlaw:bodytext&gt;
&lt;/primlaw:level&gt;

             </codeblock>
           </example>
     
     <example>
       <title>Source XML 2 : For <sourcexml>leg:levelbody/leg:bodytext</sourcexml></title>
       <codeblock>

&lt;leg:levelbody&gt;
    &lt;leg:bodytext searchtype="LEGISLATION"&gt;
       &lt;p&gt;
         &lt;text&gt;The Commission shall prepare, in such form and at such time, for each financial year, as may be prescribed, its annual report,
            giving a full account of its activities during the previous financial year and forward a copy thereof to the Central Government.
         &lt;/text&gt;
       &lt;/p&gt;
    &lt;/leg:bodytext&gt;
&lt;/leg:levelbody&gt;    

                 </codeblock>
     </example>
     
     <example>
       <title>Target XML 2: For <sourcexml>leg:levelbody/leg:bodytext</sourcexml></title>
       <codeblock>

&lt;primlaw:bodytext&gt;
   &lt;p&gt;
      &lt;text&gt;The Commission shall prepare, in such form and at such time, for each financial year, as may be prescribed, its annual report,
            giving a full account of its activities during the previous financial year and forward a copy thereof to the Central Government.
      &lt;/text&gt;
   &lt;/p&gt;  
&lt;/primlaw:bodytext&gt;

             </codeblock>
     </example>
 <section>
       <title>Changes</title>
       <p>2014-03-21: <ph id="change_20140321_SSX">Created</ph>.</p>
</section>
   </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-GPL\IN01_Legislation\leg.levelbody.dita  -->
	<xsl:message>IN01_Legislation_leg.levelbody.xsl requires manual development!</xsl:message> 

	<xsl:template match="leg:levelbody">

		<!--  Original Target XPath:  primlaw:level   -->
		<primlaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="leg:level">

		<!--  Original Target XPath:  primlaw:level   -->
		<primlaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="leg:levelbody/leg:level">

		<!--  Original Target XPath:  primlaw:level   -->
		<primlaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="leg:bodytext">

		<!--  Original Target XPath:  primlaw:bodytext   -->
		<primlaw:bodytext>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:bodytext>

	</xsl:template>

	<xsl:template match="leg:levelbody/leg:bodytext">

		<!--  Original Target XPath:  primlaw:bodytext   -->
		<primlaw:bodytext>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:bodytext>

	</xsl:template>

</xsl:stylesheet>