<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
  xmlns:comm="http://www.lexis-nexis.com/glp/comm"
  xmlns:seclaw="http://www.lexisnexis.com/xmlschemas/content/legal/secondary-law/1/" version="2.0"
  exclude-result-prefixes="dita comm">

  <dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="psl_landingpgs-pods_level1">
    <title>POD <sourcexml>comm:body/level</sourcexml>
      <lnpid>id-UK13-30016</lnpid></title>
    <body>
      <p>The element <sourcexml>comm:body/level</sourcexml> becomes
          <targetxml>seclaw:body/seclaw:level[@leveltype="landingpage"]</targetxml>. </p>
      <p>The child <sourcexml>level/heading</sourcexml> becomes
          <targetxml>seclaw:level/heading</targetxml> and its children are converted using the
        common element instructions provided in the section <xref href="general.dita"/>. </p>
      <p>Then, a <targetxml>seclaw:body/seclaw:level/seclaw:bodytext</targetxml> element is created.
        The <targetxml>seclaw:bodytext</targetxml> element must occur <b><u>after</u></b> any target
          <targetxml>heading</targetxml> element. </p>
      <section>
        <title>Source XML </title>
        <codeblock> &lt;comm:body&gt; &lt;level leveltype="landingpage"&gt; &lt;heading&gt;
          &lt;title&gt;Commentary&lt;/title&gt; &lt;/heading&gt; </codeblock>
      </section>
      <section>
        <title>Target XML </title>
        <codeblock> &lt;seclaw:body&gt; &lt;seclaw:level leveltype="landingpage"&gt; &lt;heading&gt;
          &lt;title&gt;Commentary&lt;/title&gt; &lt;/heading&gt; &lt;seclaw:bodytext&gt;
        </codeblock>
      </section>
    </body>
  </dita:topic>

  <!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
  <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK13_PSL_LandingPages\pods_level1.dita  -->
  <!--<xsl:message>pods_level1.xsl requires manual development!</xsl:message> -->

  <xsl:template match="comm:body/level">
    <!--  Original Target XPath:  seclaw:body/seclaw:level[@leveltype="landingpage"]   -->
    <seclaw:level>
      <xsl:apply-templates select="@* | node()"/>
    </seclaw:level>
  </xsl:template>

  <xsl:template match="level/@leveltype">
    <xsl:attribute name="leveltype">landingpage</xsl:attribute>
  </xsl:template>

</xsl:stylesheet>
