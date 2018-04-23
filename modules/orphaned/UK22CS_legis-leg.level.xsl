<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="legis-leg.level">
  <title>leg:level <lnpid>id-UK22CS-36415</lnpid></title>
  <body>
    <section>
      <p>
        <sourcexml>leg:level</sourcexml> becomes <targetxml>primlaw:level</targetxml> comes with following attributes:
        
        <ul>
          <li><sourcexml>@id</sourcexml> becomes <targetxml>@xml:id</targetxml></li>
          <li><sourcexml>@subdoc</sourcexml> becomes <targetxml>@includeintoc</targetxml></li>
          <li><sourcexml>@toc-caption</sourcexml> becomes <targetxml>@alternatetoccaption</targetxml></li>
          <li><sourcexml>leg:level-vrnt/@leveltype</sourcexml> becomes
              <targetxml>@leveltype</targetxml> and the values are tokenized for
              <targetxml>@leveltype</targetxml>. These are listed below: <ul>
              <li><targetxml>primlaw:level[@leveltype="section"]</targetxml></li>
              <li><targetxml>primlaw:level[@leveltype="unclassified"]</targetxml></li>
                  <li><targetxml>primlaw:level[@leveltype="chapter"]</targetxml></li>
                  <li><targetxml>primlaw:level[@leveltype="subsection"]</targetxml></li>
                  <li><targetxml>primlaw:level[@leveltype="schedule"]</targetxml></li>
                  <li><targetxml>primlaw:level[@leveltype="part"]</targetxml></li>
                  <li><targetxml>primlaw:level[@leveltype="supplement"]</targetxml></li>
                  <li><targetxml>primlaw:level[@leveltype="title"]</targetxml></li>
            </ul>
            <note>In NewLexis the <targetxml>primlaw:level</targetxml> element is used instead of
              Rosetta elements <sourcexml>leg:level</sourcexml> and
                <sourcexml>leg:level-vrnt</sourcexml>. Pick the <sourcexml>@leveltype</sourcexml>
              value from <sourcexml>leg:level-vrnt</sourcexml> and the element
                <sourcexml>leg:level-vrnt</sourcexml> will be suppressed from conversion.</note>
          </li>
        </ul>
      </p>
    </section>
    <example>
      <title>UK SOURCE XML 1: Mapping of <sourcexml>leg:level</sourcexml></title>
      <codeblock>

    &lt;leg:level&gt;
        &lt;leg:level-vrnt leveltype="section"&gt;
            &lt;leg:heading&gt;
                &lt;desig value="1"&gt;
                    &lt;designum&gt;1&lt;/designum&gt;
                &lt;/desig&gt;
                &lt;title&gt;Citation, commencement and effect&lt;/title&gt;
            &lt;/leg:heading&gt;
            &lt;leg:levelbody&gt;
                &lt;leg:bodytext&gt;
                    &lt;pgrp&gt;
                        &lt;p&gt;
                            &lt;pnum&gt;(1)&lt;/pnum&gt;
                            &lt;text&gt;These Regulations may be cited as the Double Taxation Relief
                                (Surrender of Relievable Tax Within a Group) Regulations 2001 and
                                shall come into force on 31st March 2001.&lt;/text&gt;
                        &lt;/p&gt;
                        &lt;p&gt;
                            &lt;pnum&gt;(2)&lt;/pnum&gt;
                            &lt;text&gt;These Regulations shall have effect in relation to any claim made
                                on or after 31st March 2001 for the surrender of an amount of EUFT
                                arising in respect of a dividend falling within section 806A(2) that
                                is paid by a company resident outside the United Kingdom to a
                                company resident in the United Kingdom, unless the dividend was paid
                                before that date.&lt;/text&gt;
                        &lt;/p&gt;
                    &lt;/pgrp&gt;
                &lt;/leg:bodytext&gt;
            &lt;/leg:levelbody&gt;
        &lt;/leg:level-vrnt&gt;
    &lt;/leg:level&gt;

      </codeblock>
      <b>Becomes</b>
      <codeblock>

&lt;primlaw:level leveltype="section"&gt;
        &lt;heading&gt;
            &lt;desig value="1"&gt;1&lt;/desig&gt;
            &lt;title&gt;Citation, commencement and effect&lt;/title&gt;
        &lt;/heading&gt;
        &lt;primlaw:bodytext&gt;
            &lt;pgrp&gt;
                &lt;p&gt;
                    &lt;desig&gt;(1)&lt;/desig&gt;
                    &lt;text&gt;These Regulations may be cited as the Double Taxation Relief (Surrender of
                        Relievable Tax Within a Group) Regulations 2001 and shall come into force on
                        31st March 2001.&lt;/text&gt;
                &lt;/p&gt;
                &lt;p&gt;
                    &lt;desig&gt;(2)&lt;/desig&gt;
                    &lt;text&gt;These Regulations shall have effect in relation to any claim made on or
                        after 31st March 2001 for the surrender of an amount of EUFT arising in
                        respect of a dividend falling within section 806A(2) that is paid by a
                        company resident outside the United Kingdom to a company resident in the
                        United Kingdom, unless the dividend was paid before that date.&lt;/text&gt;
                &lt;/p&gt;
            &lt;/pgrp&gt;
        &lt;/primlaw:bodytext&gt;
    &lt;/primlaw:level&gt;

    </codeblock>
    </example>
    <section>
      <title>Changes</title>
        <p>2016-02-22: <ph id="change_20160222_HP">Added instructions for handling different
                        <sourcexml>leg:level-vrnt[@leveltype]</sourcexml> attribute values to
                        <targetxml>primlaw:level[@leveltype]</targetxml>. [<b>RFA
                #2760</b>]</ph></p>
      <p>2015-10-12: <ph id="change_20151012_HP">Created</ph></p>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK22CS\legis-leg.level.dita  -->
	<xsl:message>UK22CS_legis-leg.level.xsl requires manual development!</xsl:message> 

	<xsl:template match="leg:level">

		<!--  Original Target XPath:  primlaw:level   -->
		<primlaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="@id">

		<!--  Original Target XPath:  @xml:id   -->
		<xsl:attribute name="xml:id">
			<xsl:apply-templates select="node()"/>
		</xsl:attribute>

	</xsl:template>

	<xsl:template match="@subdoc">

		<!--  Original Target XPath:  @includeintoc   -->
		<xsl:attribute name="includeintoc">
			<xsl:apply-templates select="node()"/>
		</xsl:attribute>

	</xsl:template>

	<xsl:template match="@toc-caption">

		<!--  Original Target XPath:  @alternatetoccaption   -->
		<xsl:attribute name="alternatetoccaption">
			<xsl:apply-templates select="node()"/>
		</xsl:attribute>

	</xsl:template>

	<xsl:template match="leg:level-vrnt/@leveltype">

		<!--  Original Target XPath:  @leveltype   -->
		<xsl:attribute name="leveltype">
			<xsl:apply-templates select="node()"/>
		</xsl:attribute>

	</xsl:template>

	<xsl:template match="leg:level-vrnt">

		<!--  Original Target XPath:  primlaw:level[@leveltype]   -->
		<primlaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="@leveltype">

		<!--  Original Target XPath:  @leveltype   -->
		<xsl:attribute name="leveltype">
			<xsl:apply-templates select="node()"/>
		</xsl:attribute>

	</xsl:template>

	<xsl:template match="leg:level-vrnt[@leveltype]">

		<!--  Original Target XPath:  primlaw:level[@leveltype]   -->
		<primlaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:level>

	</xsl:template>

</xsl:stylesheet>