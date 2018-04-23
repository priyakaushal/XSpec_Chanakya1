<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.level">
   <title>leg:level <lnpid>id-CN01-15220</lnpid></title>
   <body>
      <section>
        <ul>
          <li class="- topic/li ">
          <sourcexml>leg:level</sourcexml> becomes <targetxml>primlaw:level</targetxml>. The
          attributes are handled as follows:<ul id="ul_pf2_qjz_sn">
            <li><sourcexml>@id</sourcexml> becomes <targetxml>primlaw:level/@xml:id</targetxml>. If
              <sourcexml>@id</sourcexml> begins with a number, prepend underscore '_' to the value.</li>
            <li><sourcexml>leg:level/leg:level-vrnt/@leveltype</sourcexml> becomes
                <targetxml>primlaw:level/@leveltype</targetxml>. <note>If
                  <sourcexml>leg:level-vrnt/@leveltype="sect"</sourcexml>, set the value of
                  <targetxml>primlaw:level/@leveltype</targetxml> to "section".</note><p>If there is
                no value for <sourcexml>@leveltype</sourcexml>, set
                  <targetxml>@leveltype="unclassified"</targetxml>.</p></li>
            <li><sourcexml>leg:level-vrnt/@subdoc</sourcexml> becomes
                <targetxml>primlaw:level/@includeintoc</targetxml>
            </li>
            <li><sourcexml>leg:level-vrnt/@toc-caption</sourcexml> becomes
                <targetxml>primlaw:level/@alternatetoccaption</targetxml></li>
            <li> drop <sourcexml>leg:level-vrnt/@searchtype</sourcexml></li>
          </ul></li>
          <li>
          <sourcexml>leg:level/leg:level-vrnt/leg:heading</sourcexml> becomes
            <targetxml>primlaw:level/heading</targetxml>.</li>
          <li>
          <sourcexml>leg:level/leg:level-vrnt/leg:heading/title</sourcexml> becomes
            <targetxml>primlaw:level/heading/title</targetxml>.</li>
          <li>
          <sourcexml>leg:level/leg:level-vrnt/leg:heading/title/refpt</sourcexml> becomes
            <targetxml>primlaw:level/ref:anchor</targetxml>. Follow the instructions in <xref href="../../common_newest/Rosetta_refpt-LxAdv-ref.anchor.dita"/> to create the markup
            for ref:anchor.</li>
          <li>Pass through the content in 
            <sourcexml>leg:level/leg:level-vrnt/leg:levelbody</sourcexml>.</li>
          <li>
            <sourcexml>leg:level/leg:level-vrnt/leg:levelbody/leg:bodytext</sourcexml> becomes
            <targetxml>primlaw:level/primlaw:bodytext</targetxml>. Follow the instructions in General Markup to process the descendants of <sourcexml>leg:bodytext</sourcexml>.</li>
        </ul>
      </section>

           <example>
             <title>Source XML</title>
             <codeblock>

 &lt;leg:level id="PRCI.219981.CHAP.d2e43"&gt;
                  &lt;leg:level-vrnt toc-caption="Chapter 1 General Provisions"
                     searchtype="LEGISLATION CHAPTER" subdoc="true" leveltype="chapter"&gt;
                     &lt;leg:heading&gt;
                        &lt;title&gt;
                           &lt;refpt type="ext" id="PRCI.219981.CHAP.d2e43"/&gt;Chapter 1 General
                           Provisions&lt;/title&gt;
                     &lt;/leg:heading&gt;
                     &lt;leg:levelbody&gt;
                        &lt;leg:bodytext&gt;
                           &lt;p&gt;
                              &lt;text&gt;
                                 &lt;refpt type="ext" id="PRCI.219981.i1"/&gt;
                                 &lt;emph typestyle="bf"&gt;Article 1&lt;/emph&gt; This Law is enacted in order
                                 to regulate the bankruptcy proceedings of enterprises, fairly
                                 liquidate credits and debts, protect the legitimate rights and
                                 interests of creditors and debtors and maintain the order of
                                 socialist market economy.&lt;/text&gt;
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

   &lt;primlaw:level leveltype="chapter" includeintoc="true"
            alternatetoccaption="Chapter 1 General Provisions"&gt;
            &lt;ref:anchor id="PRCI.219981.CHAP.d2e43" anchortype="global"/&gt;
            &lt;heading&gt;
               &lt;title&gt; Chapter 1 General Provisions&lt;/title&gt;
            &lt;/heading&gt;
            &lt;primlaw:bodytext&gt;
               &lt;p&gt;
                  &lt;ref:anchor id="PRCI.219981.i1" anchortype="global"/&gt;
                  &lt;text&gt;
                     &lt;emph typestyle="bf"&gt;Article 1&lt;/emph&gt; This Law is enacted in order to regulate
                     the bankruptcy proceedings of enterprises, fairly liquidate credits and debts,
                     protect the legitimate rights and interests of creditors and debtors and
                     maintain the order of socialist market economy.&lt;/text&gt;
               &lt;/p&gt;
         &lt;/primlaw:bodytext&gt;
    &lt;/primlaw:level&gt;

             </codeblock>
           </example>
     <section>
       <title>Changes</title>
       <p>2014-06-20: <ph id="change_20140620_brt">deleted xml:id from target example. Also changed underscores '_' to periods '.'</ph>.</p>
       <p>2014-04-17: <ph id="change_20140417_brt">Created</ph>.</p>
     </section>
   </body> 
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-GPL\CN01-Legislation\leg.level_primlaw.level.dita  -->
	<xsl:message>leg.level_primlaw.level.xsl requires manual development!</xsl:message> 

	<xsl:template match="leg:level">

		<!--  Original Target XPath:  primlaw:level   -->
		<primlaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="@id">

		<!--  Original Target XPath:  primlaw:level/@xml:id   -->
		<primlaw:level>
			<xsl:attribute name="xml:id">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="leg:level/leg:level-vrnt/@leveltype">

		<!--  Original Target XPath:  primlaw:level/@leveltype   -->
		<primlaw:level>
			<xsl:attribute name="leveltype">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="leg:level-vrnt/@leveltype=&#34;sect&#34;">

		<!--  Original Target XPath:  primlaw:level/@leveltype   -->
		<primlaw:level>
			<xsl:attribute name="leveltype">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="@leveltype">

		<!--  Original Target XPath:  @leveltype="unclassified"   -->
		<xsl:attribute name="leveltype">
			<xsl:text>unclassified</xsl:text>
		</xsl:attribute>

	</xsl:template>

	<xsl:template match="leg:level-vrnt/@subdoc">

		<!--  Original Target XPath:  primlaw:level/@includeintoc   -->
		<primlaw:level>
			<xsl:attribute name="includeintoc">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="leg:level-vrnt/@toc-caption">

		<!--  Original Target XPath:  primlaw:level/@alternatetoccaption   -->
		<primlaw:level>
			<xsl:attribute name="alternatetoccaption">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="leg:level-vrnt/@searchtype">

		<!--  Original Target XPath:  primlaw:level/heading   -->
		<primlaw:level>
			<heading>
				<xsl:apply-templates select="@* | node()"/>
			</heading>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="leg:level/leg:level-vrnt/leg:heading">

		<!--  Original Target XPath:  primlaw:level/heading   -->
		<primlaw:level>
			<heading>
				<xsl:apply-templates select="@* | node()"/>
			</heading>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="leg:level/leg:level-vrnt/leg:heading/title">

		<!--  Original Target XPath:  primlaw:level/heading/title   -->
		<primlaw:level>
			<heading>
				<title>
					<xsl:apply-templates select="@* | node()"/>
				</title>
			</heading>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="leg:level/leg:level-vrnt/leg:heading/title/refpt">

		<!--  Original Target XPath:  primlaw:level/ref:anchor   -->
		<primlaw:level>
			<ref:anchor xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/">
				<xsl:apply-templates select="@* | node()"/>
			</ref:anchor>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="leg:level/leg:level-vrnt/leg:levelbody">

		<!--  Original Target XPath:  primlaw:level/primlaw:bodytext   -->
		<primlaw:level>
			<primlaw:bodytext>
				<xsl:apply-templates select="@* | node()"/>
			</primlaw:bodytext>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="leg:level/leg:level-vrnt/leg:levelbody/leg:bodytext">

		<!--  Original Target XPath:  primlaw:level/primlaw:bodytext   -->
		<primlaw:level>
			<primlaw:bodytext>
				<xsl:apply-templates select="@* | node()"/>
			</primlaw:bodytext>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="leg:bodytext">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

</xsl:stylesheet>