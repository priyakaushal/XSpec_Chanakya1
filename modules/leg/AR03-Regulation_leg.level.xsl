<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.level">
   <title>leg:level <lnpid>id-AR03-34816</lnpid></title>
   <body>
      <section>
        <p><sourcexml>leg:level/leg:level-vrnt</sourcexml> becomes
                    <targetxml>primlaw:level</targetxml> which has a required attribute
                    <targetxml>@leveltype</targetxml> and its values are tokenized as below:</p>
          <ul>
              <li><targetxml>primlaw:level[@leveltype="part"]</targetxml></li>
            <li><targetxml>primlaw:level[@leveltype="chapter"]</targetxml></li>
            <li><targetxml>primlaw:level[@leveltype="section"]</targetxml></li>
                <li><targetxml>primlaw:level[@leveltype="article"]</targetxml></li>
            <li><targetxml>primlaw:level[@leveltype="unclassified"]</targetxml></li>
          </ul>
          <note>In New Lexis <targetxml>primlaw:level</targetxml> element is used instead of Rosetta elements <sourcexml>leg:level</sourcexml> and <sourcexml>leg:level-vrnt</sourcexml>. Pick the <sourcexml>@leveltype</sourcexml> value from <sourcexml>leg:level-vrnt</sourcexml> and the element <sourcexml>leg:level-vrnt</sourcexml> will be suppressed from conversion.</note>
          
          <p>Below are the unique values for <sourcexml>@leveltype</sourcexml> found in the source documents and the corresponding mapping in NewLexis.</p>
          <ul>
            <li><sourcexml>leg:level/leg:level-vrnt[@leveltype="chapter"]</sourcexml> becomes
            <targetxml>primlaw:level[@leveltype="chapter"]</targetxml></li>
              <li><sourcexml>leg:level/leg:level-vrnt[@leveltype="part"]</sourcexml> becomes
                        <targetxml>primlaw:level[@leveltype="part"]</targetxml></li>
            <li><sourcexml>leg:level/leg:level-vrnt[@leveltype="section"]</sourcexml> becomes
            <targetxml>primlaw:level[@leveltype="section"]</targetxml></li>
                <li><sourcexml>leg:level/leg:level-vrnt[@leveltype="article"]</sourcexml> becomes
                        <targetxml>primlaw:level[@leveltype="article"]</targetxml></li>
            <li><sourcexml>leg:level/leg:level-vrnt[@leveltype="unclassified"]</sourcexml> becomes
            <targetxml>primlaw:level[@leveltype="unclassified"]</targetxml></li>
          </ul>
          <p><sourcexml>leg:level/@id</sourcexml> becomes
              <targetxml>primlaw:level/@xml:id</targetxml></p>
          <p><sourcexml>leg:level/leg:level-vrnt/@subdoc</sourcexml> becomes
              <targetxml>primlaw:level/@includeintoc</targetxml></p>
          <p><sourcexml>leg:level/leg:level-vrnt/@toc-caption</sourcexml> becomes
              <targetxml>primlaw:level/@alternatetoccaption</targetxml></p>
          <note>If the input files are having <sourcexml>@leveltype</sourcexml> values other than
        the tokenized list as shown above, the value will be set as
          <targetxml>@leveltype="unclassified"</targetxml>.</note>
        <pre>
&lt;leg:body&gt;
    &lt;leg:level&gt;
        &lt;leg:level-vrnt&gt;
            &lt;leg:levelbody&gt;
                &lt;leg:level id="211999_article_2"&gt;
                    &lt;leg:level-vrnt subdoc="true" leveltype="Article" toc-caption="Art. 2:"&gt;
                        &lt;leg:heading&gt;
                            &lt;title&gt;Art. 2:&lt;/title&gt;
                        &lt;/leg:heading&gt;
                        &lt;leg:levelbody&gt;
                            &lt;leg:bodytext&gt;
                                &lt;p&gt;
                                    &lt;text&gt;Dentro de los requisitos mencionados en la citada
                                        planilla, autorízase a laRECURSOS NATURALES Y DESARROLLO
                                        SUSTENTABLE de la PRESIDENCIA DE LA NACION, a realizar
                                        todos los actos necesarios para su cumplimiento.&lt;/text&gt;
                                &lt;/p&gt;
                            &lt;/leg:bodytext&gt;
                        &lt;/leg:levelbody&gt;
                    &lt;/leg:level-vrnt&gt;
                &lt;/leg:level&gt;
            &lt;/leg:levelbody&gt;
        &lt;/leg:level-vrnt&gt;
    &lt;/leg:level&gt;
&lt;/leg:body&gt;

          <b>Becomes</b>

&lt;regulation:body&gt;
    .......
    &lt;primlaw:level xml:id="211999_article_2" includeintoc="true"
    alternatetoccaption="Art. 2:"
    leveltype="Article"&gt;
    &lt;heading&gt;
        &lt;title&gt;Art. 2:&lt;/title&gt;
    &lt;/heading&gt;   
        &lt;primlaw:bodytext&gt;
            &lt;p&gt;
                &lt;text&gt;Dentro de los requisitos mencionados en la citada
                                        planilla, autorízase a laRECURSOS NATURALES Y DESARROLLO
                                        SUSTENTABLE de la PRESIDENCIA DE LA NACION, a realizar
                                        todos los actos necesarios para su cumplimiento.&lt;/text&gt;
            &lt;/p&gt;
        &lt;/primlaw:bodytext&gt;
    &lt;/primlaw:level&gt;
.....
&lt;/regulation:body&gt;
        </pre>      
      </section>
     <section>
       <title>Changes</title>
         <p>2014-12-05:<ph id="change_20141205_AS">Created.</ph></p>
     </section>
   </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-GPL\AR03-Regulation\leg.level.dita  -->
	<xsl:message>AR03-Regulation_leg.level.xsl requires manual development!</xsl:message> 

	<xsl:template match="leg:level/leg:level-vrnt">

		<!--  Original Target XPath:  primlaw:level   -->
		<primlaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="leg:level">

		<!--  Original Target XPath:  primlaw:level[@leveltype="chapter"]   -->
		<primlaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="leg:level-vrnt">

		<!--  Original Target XPath:  primlaw:level[@leveltype="chapter"]   -->
		<primlaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="@leveltype">

		<!--  Original Target XPath:  primlaw:level[@leveltype="part"]   -->
		<primlaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="leg:level/leg:level-vrnt[@leveltype=&#34;chapter&#34;]">

		<!--  Original Target XPath:  primlaw:level[@leveltype="chapter"]   -->
		<primlaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="leg:level/leg:level-vrnt[@leveltype=&#34;part&#34;]">

		<!--  Original Target XPath:  primlaw:level[@leveltype="part"]   -->
		<primlaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="leg:level/leg:level-vrnt[@leveltype=&#34;section&#34;]">

		<!--  Original Target XPath:  primlaw:level[@leveltype="section"]   -->
		<primlaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="leg:level/leg:level-vrnt[@leveltype=&#34;article&#34;]">

		<!--  Original Target XPath:  primlaw:level[@leveltype="article"]   -->
		<primlaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="leg:level/leg:level-vrnt[@leveltype=&#34;unclassified&#34;]">

		<!--  Original Target XPath:  primlaw:level[@leveltype="unclassified"]   -->
		<primlaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="leg:level/@id">

		<!--  Original Target XPath:  primlaw:level/@xml:id   -->
		<primlaw:level>
			<xsl:attribute name="xml:id">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="leg:level/leg:level-vrnt/@subdoc">

		<!--  Original Target XPath:  primlaw:level/@includeintoc   -->
		<primlaw:level>
			<xsl:attribute name="includeintoc">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="leg:level/leg:level-vrnt/@toc-caption">

		<!--  Original Target XPath:  primlaw:level/@alternatetoccaption   -->
		<primlaw:level>
			<xsl:attribute name="alternatetoccaption">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</primlaw:level>

	</xsl:template>

</xsl:stylesheet>