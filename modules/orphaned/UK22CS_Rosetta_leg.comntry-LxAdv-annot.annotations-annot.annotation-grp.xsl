<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:annot="http://www.lexisnexis.com/xmlschemas/content/shared/annotations/1/" xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_leg.comntry-to-LexisAdvance_annot.annotations-annot.annotation-grp">
  <title><sourcexml>leg:comntry</sourcexml> to
      <targetxml>annot:annotations/annot:annotation-grp</targetxml> <lnpid>id-UK22CS-36425</lnpid></title>
  <body>
    <section>
      <p>
        <ul>
          <li><sourcexml>leg:comntry</sourcexml>
            <b>Becomes</b>
            <targetxml>annot:annotations/annot:annotation-grp</targetxml> with optional attributes
            and child elements converted as: <ul>
              <li><sourcexml>@subdoc</sourcexml>
                <b>becomes</b>
                <targetxml>@includeintoc</targetxml></li>
              <li><sourcexml>@toc-caption</sourcexml>
                <b>becomes</b>
                <targetxml>@alternatetoccaption</targetxml></li>
              <li><sourcexml>heading/@searchtype</sourcexml>
                <b>becomes</b>
                <targetxml>annot:annotation-grp/@grptype="COMMENTARY"</targetxml>
                <note>For GPL IN Content Stream
                  <sourcexml>leg:comntry/@searchtype</sourcexml> becomes
                  <targetxml>annot:annotation-grp/@grptype="COMMENTARY"</targetxml>
                </note>
              </li>
              <li><sourcexml>refpt</sourcexml>
                <b>becomes</b>
                <targetxml>ref:anchor</targetxml> and must be the first child in the sequence. Refer
                  to the <xref href="../../common_newest/Rosetta_refpt-LxAdv-ref.anchor.dita">refpt</xref> section for
                more information.</li>
              <li><sourcexml>heading/edpnum</sourcexml>
                <b>becomes</b>
                <targetxml>heading/desig</targetxml></li>
              <li><sourcexml>heading/title</sourcexml>
                <b>becomes</b>
                <targetxml>heading/title</targetxml></li>
            </ul>
            <note>In the input Xpath, <sourcexml>leg:comntry</sourcexml> is allowed within
                <sourcexml>leg:bodytext</sourcexml>, but the target New Lexis Xpath allows
                <targetxml>annot:annotations</targetxml> to be a sibling to
                <targetxml>primlaw:bodytext</targetxml> and child element of
                <targetxml>primlaw:level</targetxml> i.e.
                <sourcexml>leg:bodytext/leg:comntry</sourcexml> becomes
                <targetxml>annot:annotations/annot:annotation-grp</targetxml>.</note>
          </li>
          <li> The conversion of <sourcexml>level</sourcexml> is determined by the value of
              <sourcexml>@leveltype</sourcexml> which also reflects the nesting structure.
              <note>Maintain source nesting.</note>
          </li>
          <li>If source document is having empty elements (i.e.
              <sourcexml>bodytext/p/text</sourcexml> and <sourcexml>hrule</sourcexml>) within
              <sourcexml>leg:comntry</sourcexml> then removed the empty markups from
              <sourcexml>leg:comntry</sourcexml> and <sourcexml>leg:comntry</sourcexml> should be
            mapped with <targetxml>annot:annotations</targetxml>. Please refer the below markups for
            understanding this scenario: </li>
        </ul>
      </p>
    </section>
    <example>
      <title>Source XML</title>
      <codeblock>

    &lt;leg:level&gt;
        &lt;leg:level-vrnt leveltype="section"&gt;
            .......
            &lt;leg:levelbody&gt;
                &lt;leg:comntry&gt;
                    &lt;bodytext&gt;
                        &lt;h l="1"&gt;Notes&lt;/h&gt;
                        &lt;h l="2"&gt;Initial Commencement&lt;/h&gt;
                        &lt;h l="3"&gt;To be appointed&lt;/h&gt;
                        &lt;p&gt;
                            &lt;text&gt;To be appointed in the London, Edinburgh and Belfast Gazettes: see Explanatory Note.&lt;/text&gt;
                        &lt;/p&gt;
                    &lt;/bodytext&gt;
                &lt;/leg:comntry&gt;
            &lt;/leg:levelbody&gt;
        &lt;/leg:level-vrnt&gt;
    &lt;/leg:level&gt;

	</codeblock>
      <title>Target XML</title>
      <codeblock>

&lt;primlaw:level leveltype="section"&gt;
    .......
        &lt;annot:annotations&gt;
            &lt;annot:annotation-grp&gt;
                &lt;annot:annotation&gt;
                    &lt;bodytext&gt;
                        &lt;h&gt;Notes&lt;/h&gt;
                        &lt;h&gt;Initial Commencement&lt;/h&gt;
                        &lt;h&gt;To be appointed&lt;/h&gt;
                        &lt;p&gt;
                            &lt;text&gt;To be appointed in the London, Edinburgh and Belfast Gazettes: see Explanatory Note.&lt;/text&gt;
                        &lt;/p&gt;
                    &lt;/bodytext&gt;
                &lt;/annot:annotation&gt;
            &lt;/annot:annotation-grp&gt;
        &lt;/annot:annotations&gt;
    &lt;/primlaw:level&gt;


	</codeblock>  
    </example>
      <section>
          <note>
              <b>Exceptional scenario for UK22CS:</b>
              <p>
                  <ul>
                      <li>If source <sourcexml>legfragment</sourcexml> is  parent of <sourcexml>leg:comntry</sourcexml> having xpath like: <sourcexml>legfragment/leg:comntry</sourcexml> 
                          <b>then it becomes</b>
                          <targetxml>primlaw:level/annot:annotations/annot:annotation-grp</targetxml> See below example:                          
                      </li>
                  </ul>
              </p>
          </note>  
      </section>
      <example>
          <title>Source XML for <sourcexml>legfragment/leg:comntry</sourcexml></title>
          <codeblock>

&lt;legfragment&gt;
  &lt;leg:level&gt;
    &lt;leg:level-vrnt leveltype="section"&gt;
        &lt;leg:heading&gt;
            &lt;title&gt;General definitions&lt;/title&gt;
        &lt;/leg:heading&gt;
        &lt;leg:levelbody&gt;
            &lt;leg:bodytext&gt;
                .....
            &lt;/leg:bodytext&gt;
        &lt;/leg:levelbody&gt;
    &lt;/leg:level-vrnt&gt;
&lt;/leg:level&gt;
&lt;leg:comntry&gt;
    &lt;bodytext&gt;
        &lt;h l="5"&gt;Amendment&lt;/h&gt;
        &lt;p&gt;
            &lt;text&gt;Para (1)(&lt;emph typestyle="it"&gt;l&lt;/emph&gt;) was inserted by the Protocol of 26 June 2007.&lt;/text&gt;
        &lt;/p&gt;
    &lt;/bodytext&gt;
  &lt;/leg:comntry&gt;
&lt;/legfragment&gt;

	</codeblock>
          <title>Target XML becomes <targetxml>primlaw:level/annot:annotations/annot:annotation-grp</targetxml></title>
          <codeblock>

&lt;primlaw:level leveltype="section"&gt;
    &lt;heading&gt;
        &lt;title&gt;General definitions&lt;/title&gt;
    &lt;/heading&gt;
    &lt;primlaw:bodytext&gt;
        .....
    &lt;/primlaw:bodytext&gt;
    &lt;annot:annotations&gt;
        &lt;annot:annotation-grp&gt;
            &lt;annot:annotation&gt;
                &lt;bodytext&gt;
                    &lt;h level="5"&gt;Amendment&lt;/h&gt;
                    &lt;p&gt;
                        &lt;text&gt;Para (1)(&lt;emph typestyle="it"&gt;l&lt;/emph&gt;) was inserted by the Protocol of 26 June 2007.&lt;/text&gt;
                    &lt;/p&gt;
                &lt;/bodytext&gt;
            &lt;/annot:annotation&gt;
        &lt;/annot:annotation-grp&gt;
    &lt;/annot:annotations&gt;
&lt;/primlaw:level&gt;

	</codeblock>  
      </example>
    <section>
      <title>Changes</title>
        <p>2016-03-15: <ph id="change_20160315_HP">Added note for handling exceptional scenario when
            <sourcexml>legfragment</sourcexml> is  parent of <sourcexml>leg:comntry</sourcexml>. [<b>RFA
                #2751</b>]</ph></p>
      <p>2015-10-13: <ph id="change_20151013_HP">Created</ph></p>
    </section> 
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK22CS\Rosetta_leg.comntry-LxAdv-annot.annotations-annot.annotation-grp.dita  -->
	<xsl:message>UK22CS_Rosetta_leg.comntry-LxAdv-annot.annotations-annot.annotation-grp.xsl requires manual development!</xsl:message> 

	<xsl:template match="leg:comntry">

		<!--  Original Target XPath:  annot:annotations/annot:annotation-grp   -->
		<annot:annotations>
			<annot:annotation-grp>
				<xsl:apply-templates select="@* | node()"/>
			</annot:annotation-grp>
		</annot:annotations>

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

	<xsl:template match="heading/@searchtype">

		<!--  Original Target XPath:  annot:annotation-grp/@grptype="COMMENTARY"   -->
		<annot:annotation-grp>
			<xsl:attribute name="grptype">
				<xsl:text>COMMENTARY</xsl:text>
			</xsl:attribute>
		</annot:annotation-grp>

	</xsl:template>

	<xsl:template match="leg:comntry/@searchtype">

		<!--  Original Target XPath:  annot:annotation-grp/@grptype="COMMENTARY"   -->
		<annot:annotation-grp>
			<xsl:attribute name="grptype">
				<xsl:text>COMMENTARY</xsl:text>
			</xsl:attribute>
		</annot:annotation-grp>

	</xsl:template>

	<xsl:template match="refpt">

		<!--  Original Target XPath:  ref:anchor   -->
		<ref:anchor>
			<xsl:apply-templates select="@* | node()"/>
		</ref:anchor>

	</xsl:template>

	<xsl:template match="heading/edpnum">

		<!--  Original Target XPath:  heading/desig   -->
		<heading>
			<desig>
				<xsl:apply-templates select="@* | node()"/>
			</desig>
		</heading>

	</xsl:template>

	<xsl:template match="heading/title">

		<!--  Original Target XPath:  heading/title   -->
		<heading>
			<title>
				<xsl:apply-templates select="@* | node()"/>
			</title>
		</heading>

	</xsl:template>

	<xsl:template match="leg:bodytext">

		<!--  Original Target XPath:  annot:annotations   -->
		<annot:annotations>
			<xsl:apply-templates select="@* | node()"/>
		</annot:annotations>

	</xsl:template>

	<xsl:template match="leg:bodytext/leg:comntry">

		<!--  Original Target XPath:  annot:annotations/annot:annotation-grp   -->
		<annot:annotations>
			<annot:annotation-grp>
				<xsl:apply-templates select="@* | node()"/>
			</annot:annotation-grp>
		</annot:annotations>

	</xsl:template>

	<xsl:template match="level">

		<!--  Original Target XPath:  annot:annotations   -->
		<annot:annotations>
			<xsl:apply-templates select="@* | node()"/>
		</annot:annotations>

	</xsl:template>

	<xsl:template match="@leveltype">

		<!--  Original Target XPath:  annot:annotations   -->
		<annot:annotations>
			<xsl:apply-templates select="@* | node()"/>
		</annot:annotations>

	</xsl:template>

	<xsl:template match="bodytext/p/text">

		<!--  Original Target XPath:  annot:annotations   -->
		<annot:annotations>
			<xsl:apply-templates select="@* | node()"/>
		</annot:annotations>

	</xsl:template>

	<xsl:template match="hrule">

		<!--  Original Target XPath:  annot:annotations   -->
		<annot:annotations>
			<xsl:apply-templates select="@* | node()"/>
		</annot:annotations>

	</xsl:template>

	<xsl:template match="legfragment">

		<!--  Original Target XPath:  primlaw:level/annot:annotations/annot:annotation-grp   -->
		<primlaw:level>
			<annot:annotations>
				<annot:annotation-grp>
					<xsl:apply-templates select="@* | node()"/>
				</annot:annotation-grp>
			</annot:annotations>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="legfragment/leg:comntry">

		<!--  Original Target XPath:  primlaw:level/annot:annotations/annot:annotation-grp   -->
		<primlaw:level>
			<annot:annotations>
				<annot:annotation-grp>
					<xsl:apply-templates select="@* | node()"/>
				</annot:annotation-grp>
			</annot:annotations>
		</primlaw:level>

	</xsl:template>

</xsl:stylesheet>