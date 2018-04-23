<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:navaid="urn:x-lexisnexis:content:navigationaid:sharedservices:1" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="usm_landingpgs-leg.heading">
  <title><sourcexml>leg:level-vrnt/leg:heading</sourcexml> <lnpid>id-MY08-17613</lnpid></title>
  <body>
    <p>The element <sourcexml>leg:heading</sourcexml> usually becomes <targetxml>heading</targetxml> and the source attributes are dropped. A child target element <targetxml>heading/title</targetxml> is then opened (<targetxml>title</targetxml> start-tag is output) and the following conversion is performed. <ol>
      <li>The <targetxml>title</targetxml> element is closed (<targetxml>title</targetxml> end-tag is output) when either the first <sourcexml>nl</sourcexml> occurs or the end of the <sourcexml>leg:heading</sourcexml> occurs, which ever comes first.</li>
      <li>When the first <sourcexml>nl</sourcexml> occurs, this not only closes the <targetxml>title</targetxml>, but also opens a <targetxml>subtitle</targetxml> element (<targetxml>subtitle</targetxml> start-tag is output). The <targetxml>subtitle</targetxml> element is closed (<targetxml>subtitle</targetxml> end-tag is output) when the end of the <sourcexml>leg:heading</sourcexml> occurs</li>
      <li>Multiple <sourcexml>nl</sourcexml> elements may be present within the various subelements of <sourcexml>leg:heading</sourcexml>, but only the <b><u>first</u></b> <sourcexml>nl</sourcexml> to occur closes the <targetxml>title</targetxml> element and opens the <targetxml>subtitle</targetxml> element.</li>
      <li>If no <sourcexml>nl</sourcexml> element occurs, then no <targetxml>subtitle</targetxml> is output. In this case the <targetxml>heading</targetxml> will have only a child <targetxml>title</targetxml>.</li>
      <li>Any <sourcexml>refpt</sourcexml> element within <sourcexml>heading</sourcexml> (as a direct child, or grandchild, etc.) becomes <targetxml>navaid:landingpagebody/ref:anchor</targetxml> and is output <b><u>before</u></b> the <targetxml>heading</targetxml>. Please see the topic <xref href="../../common_newest/Rosetta_refpt-LxAdv-ref.anchor.dita"/> for details regarding the conversion of <sourcexml>refpt</sourcexml>.</li>
      <li>The start-tag and end-tag (but not the content) of all other elements (besides <sourcexml>refpt</sourcexml>) within <sourcexml>leg:heading</sourcexml> are dropped. This includes direct child elements, as well as grandchild elements, etc. Examples of such elements include <sourcexml>title</sourcexml>, <sourcexml>desig</sourcexml>, <sourcexml>designum</sourcexml>, <sourcexml>emph</sourcexml>, and <sourcexml>nl</sourcexml>.</li>
    </ol>
    </p>
    <p>If the element <sourcexml>leg:heading</sourcexml> contains no CDATA except for white-space and/or only empty elements (be they child, grandchild, etc.),  then no <targetxml>heading</targetxml> element is output. However, any <sourcexml>refpt</sourcexml> element within such a <sourcexml>heading</sourcexml> (as a direct child, or grandchild, etc.) becomes <targetxml>navaid:landingpagebody/ref:anchor</targetxml>. Please see the topic <xref href="../../common_newest/Rosetta_refpt-LxAdv-ref.anchor.dita"/> for details regarding the conversion of <sourcexml>refpt</sourcexml>.</p>
    <section>
      <title>Source XML showing <sourcexml>heading</sourcexml> with CDATA and an <sourcexml>nl</sourcexml> element</title>
      <codeblock>

&lt;leg:level id="USM.1014E.SUB.Armed_Forces"&gt;
  &lt;leg:level-vrnt leveltype="sect" searchtype="LEGISLATION SECT" toc-caption="Armed_Forces"&gt;
    &lt;leg:heading inline="true"&gt;
      &lt;desig searchtype="SECT-NUM"&gt;
        &lt;designum&gt;
          &lt;refpt id="USM.1014E.SUB.Armed_Forces" type="ext"/&gt;
          &lt;emph typestyle="bf"&gt;Subsidiary Legislation By Subject&lt;/emph&gt;
          &lt;nl/&gt;
          &lt;emph typestyle="bf"&gt;Armed Forces&lt;/emph&gt;
        &lt;/designum&gt;
      &lt;/desig&gt;
    &lt;/leg:heading&gt;

      </codeblock>
    </section>
    <section>
      <title>Target XML</title>
      <codeblock>

&lt;navaid:landingpagebody&gt;
  &lt;ref:anchor id="USM.1014E.SUB.Armed_Forces" anchortype="global"/&gt;
  &lt;heading&gt;
    &lt;title&gt;Subsidiary Legislation By Subject&lt;/title&gt;
    &lt;subtitle&gt;Armed Forces&lt;/subtitle&gt;
  &lt;/heading&gt;

        </codeblock>
    </section>
    <section>
      <title>Source XML showing <sourcexml>heading</sourcexml> with CDATA and multiple <sourcexml>nl</sourcexml> elements</title>
      <codeblock>

&lt;leg:level id="USM.1011E.SUB.Arbitration"&gt;
  &lt;leg:level-vrnt leveltype="sect" searchtype="LEGISLATION SECT" toc-caption="Arbitration"&gt;
    &lt;leg:heading inline="true"&gt;
      &lt;desig searchtype="SECT-NUM"&gt;
        &lt;designum&gt;
          &lt;refpt id="USM.1011E.SUB.Arbitration" type="ext"/&gt;
          &lt;emph typestyle="bf"&gt;Principal Acts By Subject&lt;/emph&gt;
          &lt;nl/&gt;
          &lt;nl/&gt;
          &lt;emph typestyle="bf"&gt;&lt;nl/&gt;Arbitration&lt;/emph&gt;
        &lt;/designum&gt;
      &lt;/desig&gt;
    &lt;/leg:heading&gt;

      </codeblock>
    </section>
    <section>
      <title>Target XML</title>
      <codeblock>

&lt;navaid:landingpagebody&gt;
  &lt;ref:anchor id="USM.1011E.SUB.Arbitration" anchortype="global"/&gt;
  &lt;heading&gt;
    &lt;title&gt;Principal Acts By Subject&lt;/title&gt;
    &lt;subtitle&gt;Arbitration&lt;/subtitle&gt;
  &lt;/heading&gt;

        </codeblock>
    </section>
    <section>
      <title>Source XML showing <sourcexml>heading</sourcexml> with CDATA but no <sourcexml>nl</sourcexml> elements</title>
      <codeblock>

&lt;leg:level id="USM.1011E.BODY"&gt;
  &lt;leg:level-vrnt leveltype="act" searchtype="LEGISLATION ACT"&gt;
    &lt;leg:heading inline="true"&gt;
      &lt;desig searchtype="SECT-NUM"&gt;
        &lt;designum&gt;
          &lt;refpt id="USM.1011E.subject" type="ext"/&gt;
          &lt;emph typestyle="bf"&gt;Principal Acts By Subject&lt;/emph&gt;
        &lt;/designum&gt;
      &lt;/desig&gt;
    &lt;/leg:heading&gt;

      </codeblock>
    </section>
    <section>
      <title>Target XML</title>
      <codeblock>

&lt;navaid:landingpagebody&gt;
  &lt;ref:anchor id="USM.1011E.subject" anchortype="global"/&gt;
  &lt;heading&gt;
    &lt;title&gt;Principal Acts By Subject&lt;/title&gt;
  &lt;/heading&gt;

        </codeblock>
    </section>
    <section>
      <title>Source XML showing <sourcexml>heading</sourcexml> with no CDATA except for white-space</title>
      <codeblock>

&lt;leg:body&gt;
  &lt;leg:level id="USM.1011E.BODY"&gt;
    &lt;leg:level-vrnt leveltype="act" searchtype="LEGISLATION ACT"&gt;
      &lt;leg:heading align="center"&gt;
        &lt;title&gt;
          &lt;refpt id="USM.1011E" type="ext"/&gt;
        &lt;/title&gt;
      &lt;/leg:heading&gt;

      </codeblock>
    </section>
    <section>
      <title>Target XML</title>
      <codeblock>

&lt;navaid:landingpagebody&gt;
  &lt;ref:anchor id="USM.1011E" anchortype="global"/&gt;

        </codeblock>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-MY\MY08_navaid\leg.heading.dita  -->
	<xsl:message>MY08_navaid_leg.heading.xsl requires manual development!</xsl:message> 

	<xsl:template match="leg:level-vrnt/leg:heading">

		<!--  Original Target XPath:  heading   -->
		<heading>
			<xsl:apply-templates select="@* | node()"/>
		</heading>

	</xsl:template>

	<xsl:template match="leg:heading">

		<!--  Original Target XPath:  heading   -->
		<heading>
			<xsl:apply-templates select="@* | node()"/>
		</heading>

	</xsl:template>

	<xsl:template match="nl">

		<!--  Original Target XPath:  title   -->
		<title>
			<xsl:apply-templates select="@* | node()"/>
		</title>

	</xsl:template>

	<xsl:template match="refpt">

		<!--  Original Target XPath:  navaid:landingpagebody/ref:anchor   -->
		<navaid:landingpagebody>
			<ref:anchor xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/">
				<xsl:apply-templates select="@* | node()"/>
			</ref:anchor>
		</navaid:landingpagebody>

	</xsl:template>

	<xsl:template match="heading">

		<!--  Original Target XPath:  heading/title   -->
		<heading>
			<title>
				<xsl:apply-templates select="@* | node()"/>
			</title>
		</heading>

	</xsl:template>

	<xsl:template match="title">

		<!--  Original Target XPath:  title   -->
		<title>
			<xsl:apply-templates select="@* | node()"/>
		</title>

	</xsl:template>

	<xsl:template match="desig">

		<!--  Original Target XPath:  heading   -->
		<heading>
			<xsl:apply-templates select="@* | node()"/>
		</heading>

	</xsl:template>

	<xsl:template match="designum">

		<!--  Original Target XPath:  heading   -->
		<heading>
			<xsl:apply-templates select="@* | node()"/>
		</heading>

	</xsl:template>

	<xsl:template match="emph">

		<!--  Original Target XPath:  heading   -->
		<heading>
			<xsl:apply-templates select="@* | node()"/>
		</heading>

	</xsl:template>

</xsl:stylesheet>