<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.heading">
  <title>leg:heading <lnpid>id-MX02-33813</lnpid></title>
  <body>
    <section>
      
        <p><sourcexml>leg:heading</sourcexml> becomes <targetxml>heading</targetxml> with attributes <sourcexml>@inline</sourcexml> becomes <targetxml>@inline</targetxml> and <sourcexml>@align</sourcexml> becomes <targetxml>@align</targetxml> which has tokenized values and populated as:
            <ul>
                <li><targetxml>heading[@align="left"]</targetxml></li>
                <li><targetxml>heading[@align="right"]</targetxml></li>
                <li><targetxml>heading[@align="center"]</targetxml></li>
            </ul>
            </p>
        
       
    </section>
      <example>
          <title>Source XML 1</title>
          <codeblock>

&lt;leg:level id="dof01104.SEC.1323"&gt;
    &lt;leg:level-vrnt subdoc="true" leveltype="section" toc-caption="ArtÃƒÂ­culo 11."&gt;
        &lt;leg:heading&gt;
            &lt;title&gt;ArtÃƒÂ­culo 11.&lt;/title&gt;
        &lt;/leg:heading&gt;
        ....
&lt;/leg:level-vrnt&gt;
&lt;/leg:level&gt;
              
          </codeblock>
      </example>
              <example>
          <title>Target XML 1</title>
          <codeblock>

&lt;primlaw:level xml:id="dof01104.SEC.1323" includeintoc="true" leveltype="section" alternatetoccaption="ArtÃƒÂ­culo 11."&gt;
    &lt;heading&gt;
        &lt;title&gt;ArtÃƒÂ­culo 11.&lt;/title&gt;
    &lt;/heading&gt;
    ....
&lt;/primlaw:level&gt;
              
          </codeblock>
      </example>
      
      <section>
          <title>Changes</title>
          <p>2014-10-16: Created.</p>
      </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-GPL\MX02-Gazette\leg.heading.dita  -->
	<xsl:message>MX02-Gazette_leg.heading.xsl requires manual development!</xsl:message> 

	<xsl:template match="leg:heading">

		<!--  Original Target XPath:  heading   -->
		<heading>
			<xsl:apply-templates select="@* | node()"/>
		</heading>

	</xsl:template>

	<xsl:template match="@inline">

		<!--  Original Target XPath:  @inline   -->
		<xsl:attribute name="inline">
			<xsl:apply-templates select="node()"/>
		</xsl:attribute>

	</xsl:template>

	<xsl:template match="@align">

		<!--  Original Target XPath:  @align   -->
		<xsl:attribute name="align">
			<xsl:apply-templates select="node()"/>
		</xsl:attribute>

	</xsl:template>

</xsl:stylesheet>