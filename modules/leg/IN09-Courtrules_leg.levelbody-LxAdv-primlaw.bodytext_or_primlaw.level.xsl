<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.levelbody-LxAdv-primlaw.bodytext_or_primlaw.level">
 <title>leg:levelbody <lnpid>id-IN09-38015</lnpid></title>
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
     <ul>
      <li>If the elements <sourcexml>leg:levelbody</sourcexml> and
            <sourcexml>leg:bodytext</sourcexml> occurs simultaneously then
            <targetxml>primlaw:bodytext</targetxml> and populated as: <pre>
                
&lt;leg:body&gt;
  &lt;leg:level id="ARYR.0126.rul.d2e3604"&gt;
   &lt;leg:level-vrnt searchtype="LEGISLATION RULE" leveltype="rule"&gt;
     &lt;leg:levelbody&gt;
        &lt;leg:bodytext&gt;
           .....
        &lt;/leg:bodytext&gt;
   &lt;/leg:levelbody&gt;
  &lt;/leg:level-vrnt&gt;
 &lt;/leg:level&gt;
 ....
&lt;/leg:body&gt;

</pre>
          <b>Becomes</b>
          <pre>
        
&lt;courtrule:body&gt;
  &lt;primlaw:level leveltype="rule" xml:id="ARYR.0126.rul.d2e3604"&gt;
    &lt;primlaw:bodytext&gt;
      .....
    &lt;/primlaw:bodytext&gt;
  &lt;/primlaw:level&gt;
&lt;/courtrule:body&gt;

      </pre>
        </li>
      <li>If the element <sourcexml>leg:levelbody</sourcexml> has child
            <sourcexml>leg:level</sourcexml> then it becomes <targetxml>primlaw:level</targetxml>
          and populated as: <pre>
&lt;leg:body&gt;
    &lt;leg:level id="ARYR.0126.rul.d2e3604"&gt;
        &lt;leg:level-vrnt searchtype="LEGISLATION ACT" leveltype="rule"&gt;
            &lt;leg:levelbody&gt;
                &lt;leg:bodytext&gt;
                    ....
                &lt;/leg:bodytext&gt;
            &lt;/leg:levelbody&gt;          
        &lt;/leg:level-vrnt&gt;
    &lt;/leg:level&gt;
&lt;/leg:body&gt;

   </pre>
          <b>Becomes</b>
          <pre>
    &lt;courtrule:body&gt;
       &lt;primlaw:level xml:id="ARYR.0126.rul.d2e3604"&gt;           
              &lt;primlaw:bodytext&gt;
                 ....
              &lt;/primlaw:bodytext&gt;
      &lt;/primlaw:level&gt;
    &lt;/courtrule:body&gt;


   </pre>
        </li>
      
     </ul>           
  </section>
     <section>
         <title>Changes</title>
         <p>2016-06-27: <ph id="change_20160627_AS">Created</ph>.</p>
     </section>
 </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-IN\IN09-Courtrules\leg.levelbody-LxAdv-primlaw.bodytext_or_primlaw.level.dita  -->
	<xsl:message>IN09-Courtrules_leg.levelbody-LxAdv-primlaw.bodytext_or_primlaw.level.xsl requires manual development!</xsl:message> 

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