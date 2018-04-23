<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"  
  xmlns:comm="http://www.lexis-nexis.com/glp/comm"
  xmlns:dita="http://dita.oasis-open.org/architecture/2005/" version="2.0"
  exclude-result-prefixes="dita">

  <dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/"
    id="psl_landingpgs-pods_services-chof-levelinfo">
    <title>POD <sourcexml>levelinfo/services</sourcexml>
      <lnpid>id-UK13-30022</lnpid></title>
    <body>
      <p>The element <sourcexml>levelinfo/services</sourcexml> becomes
          <targetxml>digestinfo/meta</targetxml>. </p>
      <p>The start-tag and end-tag (but not the content) of the
          <sourcexml>services/service</sourcexml> element are dropped. </p>
      <p>The start-tag and end-tag (but not the content) of the
          <sourcexml>service/api-params</sourcexml> element are dropped. </p>
      <p>The element <sourcexml>api-params/param</sourcexml> becomes
        <targetxml>metaitem</targetxml>. <ul>
          <li>The attribute <sourcexml>param/@name</sourcexml> becomes
              <targetxml>metaitem/@name</targetxml>, and the <b><u>value</u></b> of this attribute
            is folded to lowercase and has the namespace "lpa:" prepended to it.</li>
          <li>The attribute <sourcexml>param/@value</sourcexml> becomes
              <targetxml>metaitem/@value</targetxml>.</li>
        </ul>
      </p>

      <section>
        <title>Source XML</title>
        <codeblock> &lt;level leveltype="digest"&gt; &lt;levelinfo&gt; &lt;services&gt;
          &lt;service&gt; &lt;api-params&gt; &lt;param name="overview-digest-order" value="1"/&gt;
          &lt;param name="content-type-digest-order" value="2"/&gt; &lt;/api-params&gt;
          &lt;/service&gt; &lt;/services&gt; &lt;/levelinfo&gt; </codeblock>
      </section>
      <section>
        <title>Target XML </title>
        <codeblock> &lt;seclaw:digest&gt; &lt;seclaw:digestinfo&gt; &lt;meta&gt; &lt;metaitem
          name="lpa:overview-digest-order" value="1"/&gt; &lt;metaitem
          name="lpa:content-type-digest-order" value="2"/&gt; &lt;/meta&gt; </codeblock>
      </section>
      <section>
        <title>Changes</title>
        <p>2015-05-05: <ph id="change_20150505_JCG">Correction: the prefix “lpa:” should be
            prepended to the value of the <targetxml>metaitem/@name</targetxml> attribute, not the
            value of the <targetxml>metaitem/@value</targetxml> attribute.</ph></p>
        <p>2015-03-07: <ph id="change_20150307_JCG">Added this topic.</ph></p>
      </section>
    </body>
  </dita:topic>

  <!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
  <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK13_PSL_LandingPages\pods_services-chof-levelinfo.dita  -->
  <!--<xsl:message>pods_services-chof-levelinfo.xsl requires manual development!</xsl:message> -->
  
  <xsl:template match="levelinfo">
    <!--  Original Target XPath:  digestinfo/meta   -->    
      <xsl:apply-templates select="@* | node()"/>    
  </xsl:template>

   <xsl:template match="levelinfo/services">
    <!--  Original Target XPath:  digestinfo/meta   -->
    <meta>
      <xsl:apply-templates select="@* | node()"/>
    </meta>
  </xsl:template>

  <xsl:template match="services/service">
    <!--  Original Target XPath:  metaitem   -->
    <xsl:apply-templates select="@* | node()"/>
  </xsl:template>

  <xsl:template match="service/api-params">
    <!--  Original Target XPath:  metaitem   -->
    <xsl:apply-templates select="@* | node()"/>
  </xsl:template>

  <xsl:template match="api-params/param">
    <!--  Original Target XPath:  metaitem   -->
    <metaitem>
      <xsl:apply-templates select="@*"/>
    </metaitem>
  </xsl:template>


  <xsl:template match="param/@name" priority="26">
    <!--  Original Target XPath:  metaitem/@name   -->
    <xsl:attribute name="name">
     <!-- <xsl:text>lpa:</xsl:text>-->
      <xsl:value-of select="concat('lpa:',.)"/>
    </xsl:attribute>
  </xsl:template>

  <xsl:template match="param/@value" priority="2">
    <!--  Original Target XPath:  metaitem/@value   -->    
    <xsl:attribute name="value">
      <xsl:value-of select="."/>
    </xsl:attribute>
  </xsl:template>
</xsl:stylesheet>