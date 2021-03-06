<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.levelbody">
   <title>leg:levelbody <lnpid>id-IN06-38015</lnpid></title>
   <body>
      <section>
        <ul>
          <li>
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
             <title>Source XML</title>
             <codeblock>

&lt;leg:level id="CRPC_V2.0002.act.Body.d2e31"&gt;
    &lt;leg:level-vrnt leveltype="act" searchtype="LEGISLATION ACT"&gt;
      &lt;leg:heading&gt;
          &lt;title&gt;&lt;refpt id="CRPC_V2.0002.act" type="ext"/&gt;Basu Criminal Procedure Code&lt;/title&gt;
      &lt;/leg:heading&gt;
      &lt;leg:levelbody&gt;
        &lt;leg:bodytext&gt;
            &lt;p&gt;
              &lt;text&gt;[&lt;emph typestyle="it"&gt;19th May 1986&lt;/emph&gt;]&lt;/text&gt;
            &lt;/p&gt;
          &lt;/leg:bodytext&gt;
        &lt;/leg:levelbody&gt;
    &lt;/leg:level-vrnt&gt;
&lt;/leg:level&gt;

                 </codeblock>
           </example>
           
           <example>
             <title>Target XML</title>
             <codeblock>

&lt;primlaw:level leveltype="act" xml:id="CRPC_V2.0002.act.Body.d2e31"&gt;
    &lt;ref:anchor id="CRPC_V2.0002.act" anchortype="global"/&gt;
    &lt;heading&gt;
        &lt;title&gt;Basu Criminal Procedure Code&lt;/title&gt;
    &lt;/heading&gt;
    &lt;primlaw:bodytext&gt;
      &lt;p&gt;
         &lt;text&gt;[&lt;emph typestyle="it"&gt;19th May 1986&lt;/emph&gt;]&lt;/text&gt;
      &lt;/p&gt;
    &lt;/primlaw:bodytext&gt;
&lt;/primlaw:level&gt;

             </codeblock>
           </example>
     
     <example>
       <title>Source XML: For <sourcexml>leg:levelbody/leg:bodytext</sourcexml></title>
       <codeblock>

&lt;leg:levelbody&gt;
  &lt;leg:bodytext&gt;
      &lt;p&gt;
        &lt;text&gt;Notwithstanding anything contained in the ...&lt;/text&gt;
      &lt;/p&gt;
  &lt;/leg:bodytext&gt;
    ...
&lt;/leg:levelbody&gt;

                 </codeblock>
     </example>
     
     <example>
       <title>Target XML: For <sourcexml>leg:levelbody/leg:bodytext</sourcexml></title>
       <codeblock>

&lt;primlaw:bodytext&gt;
   &lt;p&gt;
        &lt;text&gt;Notwithstanding anything contained in the ...&lt;/text&gt;
   &lt;/p&gt;  
&lt;/primlaw:bodytext&gt;

             </codeblock>
     </example>
 <section>
      <title>Changes</title>
   <p>2016-07-01: <ph id="change_20160701_SS">Created.</ph></p>
    </section> 
   </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-IN\IN06-Commentary\IN06_leg.levelbody.dita  -->
	<xsl:message>IN06_leg.levelbody.xsl requires manual development!</xsl:message> 

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