<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="legis-leg.levelbody">
 <title>leg:levelbody and leg:bodytext <lnpid>id-ST03-26636</lnpid></title>
 <body>
  <section>
    <p>If the elements <sourcexml>leg:levelbody</sourcexml> and <sourcexml>leg:bodytext</sourcexml> occurs simultaneously becomes <targetxml>primlaw:bodytext</targetxml> and populated as:</p>
  </section>
  <example>
   <title>AUSTRALIA SOURCE XML 1: Mapping for <sourcexml>leg:levelbody/leg:bodytext</sourcexml></title>
   <codeblock>
    
&lt;leg:levelbody&gt;
 &lt;leg:bodytext&gt;
  &lt;p&gt;&lt;text&gt;Part 1 comes into operation on the day on which this Act receives the Royal Assent.&lt;/text&gt;&lt;/p&gt;
  &lt;!-- ETC. --&gt;
 &lt;/leg:bodytext&gt;
&lt;/leg:levelbody&gt;

   </codeblock>
   <b>Becomes</b>
   <title>AUSTRALIA TARGET XML 1: Mapping for <sourcexml>leg:levelbody/leg:bodytext</sourcexml></title>
   <codeblock>
    
&lt;primlaw:bodytext&gt;
 &lt;p&gt;&lt;text&gt;Part 1 comes into operation on the day on which this Act receives the Royal Assent.&lt;/text&gt;&lt;/p&gt;
 &lt;!-- ETC. --&gt;
&lt;/primlaw:bodytext&gt;

   </codeblock>
  </example>
  <section>
   <p>
    <ul>
     <li>If the element <sourcexml>leg:levelbody</sourcexml> has child <sourcexml>leg:level</sourcexml> then it becomes <targetxml>primlaw:level</targetxml> and populated as:</li>
    </ul>
   </p>
  </section>
  <example>
   <title>AUSTRALIA SOURCE XML 1: Mapping for <sourcexml>leg:levelbody/leg:level</sourcexml></title>
   <codeblock>
    
&lt;leg:levelbody&gt;
 &lt;leg:level id="NSW_ACT_2009-102_SEC1"&gt;&lt;leg:level-vrnt leveltype="sect" searchtype="LEGISLATION" subdoc="true" toc-caption="1 Name of Act"&gt;
  &lt;leg:heading&gt;
   &lt;desig searchtype="SECT-NUM"&gt;
    &lt;designum&gt;&lt;refpt id="NSW_ACT_2009-102_SEC1" type="ext"/&gt;1&lt;/designum&gt;
   &lt;/desig&gt;
   &lt;title align="left" searchtype="SECT-TITLE"&gt;Name of Act&lt;/title&gt;
  &lt;/leg:heading&gt;
  &lt;!-- ETC. --&gt;
 &lt;/leg:level&gt;
&lt;/leg:levelbody&gt;

   </codeblock>
   <b>Becomes</b>
   <title>AUSTRALIA TARGET XML 1: Mapping for <sourcexml>leg:levelbody/leg:level</sourcexml></title>
   <codeblock>
    
&lt;primlaw:level leveltype="section" includeintoc="true" alternatetoccaption="1 Name of Act"&gt;
 &lt;ref:anchor id="NSW_ACT_2009-102_SEC1" anchortype="global"/&gt;
 &lt;heading&gt;
  &lt;desig&gt;1&lt;/desig&gt;
  &lt;title align="left"&gt;Name of Act&lt;/title&gt;
 &lt;/heading&gt;
 &lt;!-- ETC. --&gt;
&lt;/primlaw:level&gt;

   </codeblock>
   <note>Refer <xref href="../../common_newest/Rosetta_refpt_firstChildOf_leg.bodytext-LxAdv-primlaw.level_ref.anchor.dita">refpt</xref> for handling of the same.</note>
  </example>
  <section>
   <p>
    <ul>
     <li>If the input documents have the scenarios <sourcexml>leg:bodytext/leg:heading/desig</sourcexml> and <sourcexml>leg:bodytext/leg:heading/title</sourcexml> then <sourcexml>leg:bodytext</sourcexml> becomes <targetxml>primlaw:bodytext</targetxml> and create a wrapper <targetxml>primlaw:level[@leveltype="unclassified"]</targetxml> with child <sourcexml>desig</sourcexml> becomes <targetxml>desig</targetxml> and <sourcexml>title</sourcexml> becomes <targetxml>title</targetxml></li>
    </ul>
   </p>
  </section>
  <example>
   <title>AUSTRALIA SOURCE XML 1: Mapping for <sourcexml>leg:bodytext/leg:heading/desig</sourcexml> and <sourcexml>leg:bodytext/leg:heading/title</sourcexml></title>
   <codeblock>
    
&lt;leg:bodytext searchtype="LEGISLATION"&gt;
 &lt;leg:heading&gt;
  &lt;desig&gt;
   &lt;designum&gt;&lt;refpt id="SA_ACT_1994-52_SCH9SD3" type="ext"/&gt;C182&lt;/designum&gt;
  &lt;/desig&gt;
  &lt;title&gt;Worst Forms of Child Labour Convention, 1999&lt;/title&gt;
 &lt;/leg:heading&gt;
 &lt;!-- ETC. --&gt;
&lt;/leg:bodytext&gt;

   </codeblock>
   <b>Becomes</b>
   <title>AUSTRALIA TARGET XML 1: Mapping for <sourcexml>leg:bodytext/leg:heading/desig</sourcexml> and <sourcexml>leg:bodytext/leg:heading/title</sourcexml></title>
   <codeblock>
    
&lt;primlaw:bodytext&gt;
 &lt;primlaw:level leveltype="unclassfied"&gt;
  &lt;ref:anchor id="SA_ACT_1994-52_SCH9SD3" anchortype="global"/&gt;
  &lt;heading&gt;
   &lt;desig&gt;C182&lt;/desig&gt;
   &lt;title&gt;Worst Forms of Child Labour Convention, 1999&lt;/title&gt;
  &lt;/heading&gt;
 &lt;/primlaw:level&gt;
 &lt;!-- ETC. --&gt;
&lt;/primlaw:bodytext&gt;

   </codeblock>
  </example>
  <section>
   <p>
    <ul>
     <li>If the input documents have the scenario <sourcexml>leg:bodytext/leg:heading/subtitle</sourcexml> then it will become <targetxml>primlaw:bodytext/h</targetxml></li>
    </ul>
   </p>
  </section>
  <example>
   <title>AUSTRALIA SOURCE XML 1: Mapping for <sourcexml>leg:bodytext/leg:heading/subtitle</sourcexml></title>
   <codeblock>
    
&lt;leg:bodytext&gt;
 &lt;leg:heading&gt;&lt;subtitle&gt;(Extracts)&lt;/subtitle&gt;&lt;/leg:heading&gt;
&lt;/leg:bodytext&gt;

   </codeblock>
   <b>Becomes</b>
   <title>AUSTRALIA TARGET XML 1: Mapping for <sourcexml>leg:bodytext/leg:heading/subtitle</sourcexml></title>
   <codeblock>
    
&lt;primlaw:bodytext&gt;
 &lt;h&gt;(Extracts)&lt;/h&gt;
&lt;/primlaw:bodytext&gt;

   </codeblock>
  </example>
  <section>
   <p>
    <ul>
     <li>The first occurrence of <sourcexml>leg:bodytext</sourcexml> becomes <targetxml>primlaw:bodytext</targetxml> and after if <sourcexml>leg:levelbody</sourcexml> has other <sourcexml>leg:bodytext</sourcexml> or <sourcexml>leg:level</sourcexml> as siblings then wrap each of them <targetxml>primlaw:level</targetxml> with <targetxml>@leveltype="unclassified"</targetxml></li>
    </ul>
   </p>
  </section>
  <example>
   <title>AUSTRALIA SOURCE XML 1: Mapping for <sourcexml>leg:levelbody</sourcexml> has other <sourcexml>leg:bodytext</sourcexml></title>
   <codeblock>
    
&lt;leg:level id="SA_ACT_1994-52_SCH9SD3"&gt;
 &lt;leg:level-vrnt subdoc="false" toc-caption="C182 Worst Forms of Child Labour Convention, 1999"&gt;
  &lt;leg:levelbody&gt;
   &lt;leg:bodytext searchtype="LEGISLATION"&gt;
    &lt;leg:heading&gt;
     &lt;desig&gt;
      &lt;designum&gt;&lt;refpt id="SA_ACT_1994-52_SCH9SD3" type="ext"/&gt;C182&lt;/designum&gt;
     &lt;/desig&gt;
     &lt;title&gt;Worst Forms of Child Labour Convention, 1999&lt;/title&gt;
    &lt;/leg:heading&gt;
   &lt;/leg:bodytext&gt;
   &lt;leg:bodytext searchtype="LEGISLATION"&gt;
    &lt;p&gt;
     &lt;text&gt;The General Conference of the International Labour Organization,&lt;/text&gt;
     &lt;l type="def"&gt;
      &lt;li&gt;
       &lt;lilabel&gt;&amp;#160;&lt;/lilabel&gt;
       &lt;p&gt;&lt;text&gt;Having been convened at Geneva by the Governing Body of the International Labour Office, and having met in its 87th Session on 1 June 1999, and&lt;/text&gt;&lt;/p&gt;
      &lt;/li&gt;
      &lt;!-- ETC. --&gt;
     &lt;/l&gt;
    &lt;/p&gt;
   &lt;/leg:bodytext&gt;
   &lt;leg:bodytext searchtype="LEGISLATION"&gt;
    &lt;p&gt;&lt;text&gt;&lt;emph typestyle="bf"&gt;TABLE OF PROVISIONS&lt;/emph&gt;&lt;/text&gt;&lt;/p&gt;
    &lt;table&gt;
     &lt;tgroup cols="3"&gt;
      &lt;colspec colwidth="10*" colname="c1"/&gt;
      &lt;colspec colwidth="9*" colname="c2"/&gt;
      &lt;colspec colwidth="11*" colname="c3"/&gt;
      &lt;tbody&gt;
       &lt;row&gt;
        &lt;entry colname="c1"&gt;Section&lt;/entry&gt;
        &lt;entry colname="c2"&gt;&lt;/entry&gt;
        &lt;entry colname="c3"&gt;Page&lt;/entry&gt;
       &lt;/row&gt;
       &lt;row&gt;
        &lt;entry colname="c1"&gt;1&lt;/entry&gt;
        &lt;entry colname="c2"&gt;Short title and construction&lt;/entry&gt;
        &lt;entry colname="c3"&gt;4&lt;/entry&gt;
       &lt;/row&gt;
       &lt;!-- ETC. --&gt;
      &lt;/tbody&gt;
     &lt;/tgroup&gt;
    &lt;/table&gt;
   &lt;/leg:bodytext&gt;
  &lt;/leg:levelbody&gt;
 &lt;/leg:level-vrnt&gt;
&lt;/leg:level&gt;

   </codeblock>
   <b>Becomes</b>
   <title>AUSTRALIA TARGET XML 1: Mapping for <sourcexml>leg:levelbody</sourcexml> has other <sourcexml>leg:bodytext</sourcexml></title>
   <codeblock>
    
&lt;primlaw:level leveltype="unclassified" includeintoc="false" alternatetoccaption="C182 Worst Forms of Child Labour Convention, 1999"&gt;
 &lt;primlaw:bodytext&gt;
  &lt;primlaw:level leveltype="unclassified"&gt;
   &lt;ref:anchor id="SA_ACT_1994-52_SCH9SD3" anchortype="global"/&gt;
   &lt;heading&gt;
    &lt;desig&gt;C182&lt;/desig&gt;
    &lt;title&gt;Worst Forms of Child Labour Convention, 1999&lt;/title&gt;
   &lt;/heading&gt;
  &lt;/primlaw:level&gt;
 &lt;/primlaw:bodytext&gt;
 &lt;primlaw:level leveltype="unclassified"&gt;
  &lt;primlaw:bodytext&gt;
   &lt;p&gt;
    &lt;text&gt;The General Conference of the International Labour Organization,&lt;/text&gt;
    &lt;list&gt;
     &lt;listitem&gt;
      &lt;label&gt;&amp;#x00A0;&lt;/label&gt;
      &lt;bodytext&gt;
       &lt;p&gt;&lt;text&gt;Having been convened at Geneva by the Governing Body of the International Labour Office, and having met in its 87th Session on 1 June 1999, and&lt;/text&gt;&lt;/p&gt;
      &lt;/bodytext&gt;
     &lt;/listitem&gt;
     &lt;!-- ETC. --&gt;
    &lt;/list&gt;
   &lt;/p&gt;
  &lt;/primlaw:bodytext&gt;
 &lt;/primlaw:level&gt;
 &lt;primlaw:level leveltype="unclassified"&gt;
  &lt;primlaw:bodytext&gt;
   &lt;p&gt;&lt;text&gt;&lt;emph typestyle="bf"&gt;TABLE OF PROVISIONS&lt;/emph&gt;&lt;/text&gt;&lt;/p&gt;
   &lt;table&gt;
    &lt;tgroup cols="3"&gt;
     &lt;colspec colwidth="10*" colname="c1"/&gt;
     &lt;colspec colwidth="9*" colname="c2"/&gt;
     &lt;colspec colwidth="11*" colname="c3"/&gt;
     &lt;tbody&gt;
      &lt;row&gt;
       &lt;entry colname="c1"&gt;Section&lt;/entry&gt;
       &lt;entry colname="c2"&gt;&lt;/entry&gt;
       &lt;entry colname="c3"&gt;Page&lt;/entry&gt;
      &lt;/row&gt;
      &lt;row&gt;
       &lt;entry colname="c1"&gt;1&lt;/entry&gt;
       &lt;entry colname="c2"&gt;Short title and construction&lt;/entry&gt;
       &lt;entry colname="c3"&gt;4&lt;/entry&gt;
      &lt;/row&gt;
      &lt;!-- ETC. --&gt;
     &lt;/tbody&gt;
    &lt;/tgroup&gt;
   &lt;/table&gt;
  &lt;/primlaw:bodytext&gt;
 &lt;/primlaw:level&gt;
&lt;/primlaw:level&gt;

   </codeblock>
   <note>Attribute <sourcexml>@type</sourcexml> in <sourcexml>l</sourcexml> is suppressed from conversion.</note>
  </example>
  <section>
    <title>Changes</title>
   <p>2013-07-16: <ph id="change_20130716_SK">Instruction narrative edited for language; no changes to mappings, no impact to stylesheets.</ph></p>
    <p>2013-07-08: <ph id="change_20130708_AB">Created.</ph></p>
   </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-Standard\Legislation\legis-leg.levelbody.dita  -->
	<xsl:message>legis-leg.levelbody.xsl requires manual development!</xsl:message> 

	<xsl:template match="leg:levelbody">

		<!--  Original Target XPath:  primlaw:bodytext   -->
		<primlaw:bodytext>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:bodytext>

	</xsl:template>

	<xsl:template match="leg:bodytext">

		<!--  Original Target XPath:  primlaw:bodytext   -->
		<primlaw:bodytext>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:bodytext>

	</xsl:template>

	<xsl:template match="leg:levelbody/leg:bodytext">

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

		<!--  Original Target XPath:  primlaw:bodytext   -->
		<primlaw:bodytext>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:bodytext>

	</xsl:template>

	<xsl:template match="leg:bodytext/leg:heading/desig">

		<!--  Original Target XPath:  primlaw:bodytext   -->
		<primlaw:bodytext>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:bodytext>

	</xsl:template>

	<xsl:template match="leg:bodytext/leg:heading/title">

		<!--  Original Target XPath:  primlaw:bodytext   -->
		<primlaw:bodytext>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:bodytext>

	</xsl:template>

	<xsl:template match="desig">

		<!--  Original Target XPath:  desig   -->
		<desig>
			<xsl:apply-templates select="@* | node()"/>
		</desig>

	</xsl:template>

	<xsl:template match="title">

		<!--  Original Target XPath:  title   -->
		<title>
			<xsl:apply-templates select="@* | node()"/>
		</title>

	</xsl:template>

	<xsl:template match="leg:bodytext/leg:heading/subtitle">

		<!--  Original Target XPath:  primlaw:bodytext/h   -->
		<primlaw:bodytext>
			<h>
				<xsl:apply-templates select="@* | node()"/>
			</h>
		</primlaw:bodytext>

	</xsl:template>

	<xsl:template match="@type">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

	<xsl:template match="l">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

</xsl:stylesheet>