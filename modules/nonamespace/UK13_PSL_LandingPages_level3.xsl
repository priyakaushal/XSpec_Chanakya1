<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
  xmlns:comm="http://www.lexis-nexis.com/glp/comm"  
  xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"
  xmlns:seclaw="http://www.lexisnexis.com/xmlschemas/content/legal/secondary-law/1/" version="2.0"
  exclude-result-prefixes="dita comm">

  <dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="psl_landingpgs-pods_level3">
    <title>POD <sourcexml>comm:body/level/level/level</sourcexml>
      <lnpid>id-UK13-30018</lnpid></title>
    <body>
      <p>The element <sourcexml>comm:body/level/level/level</sourcexml> becomes
          <targetxml>seclaw:body/seclaw:level/seclaw:bodytext/seclaw:digestgrp/seclaw:digest/seclaw:digestinfo</targetxml>.
        In other words, after ancestor element conversions described in <xref
          href="pods_level1.dita"/> and <xref href="pods_level2.dita"/>, the element
          <targetxml>seclaw:digest</targetxml> is created and the child element
          <targetxml>seclaw:digestinfo</targetxml> created within it.</p>
      <p>The attribute <sourcexml>level/@leveltype</sourcexml> is dropped.</p>
      <section>
        <title>Instructions Regarding the Output Order of <targetxml>seclaw:digest</targetxml>
          Elements</title>
        <p>The <targetxml>seclaw:digest</targetxml> elements are not necessarily output in source
          document order. Instead, they are ordered by sorting the
            <targetxml>seclaw:digest</targetxml> elements based on the value of this target document
          XPath:
            <targetxml>seclaw:digest/seclaw:digestinfo/meta/metaitem[@name="lpa:content-type-digest-order"]/@value</targetxml>.
          This value comes from the source document XPath:
            <sourcexml>comm:body/level/level/level/level/levelinfo/services/service/api-params/param[@name="content-type-digest-order”]/@value</sourcexml>.
          The output <targetxml>seclaw:digest</targetxml> elements must appear sorted by the above
          value, in ascending order (lower values appear before higher values).</p>
        <p>If the <sourcexml>param[@name="content-type-digest-order”]/@value</sourcexml> isn’t
          present in the source for a particular digest (so there is no target
            <targetxml>metaitem[@name="lpa:content-type-digest-order"]/@value</targetxml> for that
          digest), then a high value should be assumed (such as 30,000) so that any and all digests
          without the sort value will appear at the very end of the file.</p>
      </section>
      <section>
        <title>Other Important Details</title>
        <note>For additoinal instructions regarding outputting the total number of
            <targetxml>seclaw:digest</targetxml> elements please see the topic <xref
            href="digest_count.dita"/>.</note>
        <note>As of May 2016, no delivered content contains the XPath
            <sourcexml>comm:body/level/level/level/heading</sourcexml>. In case such an XPath does
          occur in future deliveries, the child <sourcexml>level/heading</sourcexml> becomes
            <targetxml>seclaw:digest/heading</targetxml> and its children are converted using the
          common element instructions provided in the section <xref href="general.dita"/>.</note>
      </section>
      <section>
        <title>Source XML</title>
        <codeblock> &lt;comm:body&gt; &lt;level leveltype="landingpage"&gt; &lt;heading&gt;
          &lt;title&gt;News Analysis&lt;/title&gt; &lt;/heading&gt; &lt;level
          leveltype="documentlinks"&gt; &lt;heading&gt; &lt;title&gt;Document Links&lt;/title&gt;
          &lt;/heading&gt; &lt;level leveltype="digest"&gt; </codeblock>
      </section>
      <section>
        <title>Target XML </title>
        <codeblock> &lt;seclaw:body&gt; &lt;seclaw:level leveltype="landingpage"&gt; &lt;heading&gt;
          &lt;title&gt;News Analysis&lt;/title&gt; &lt;/heading&gt; &lt;seclaw:bodytext&gt;
          &lt;seclaw:digestgrp&gt; &lt;heading&gt; &lt;title&gt;Document Links&lt;/title&gt;
          &lt;/heading&gt; &lt;seclaw:digest&gt; &lt;seclaw:digestinfo&gt; </codeblock>
      </section>
      <section>
        <title>Changes</title>
        <p>2016-05-13: <ph id="change_20160513_JCG">Added instructions to specify the re-ordering of
              <targetxml>seclaw:digest</targetxml> elements on output. (Requested by Presentation
            team member Anne Zajacz.)</ph></p>
        <p>2016-03-31: <ph id="change_20160331_JCG">Added note with a reference to the topic <xref
              href="digest_count.dita"/>.</ph></p>
        <p>2015-03-07: <ph id="change_20150307_JCG">Instructions changed, third nested
              <sourcexml>level</sourcexml> now becomes
              <targetxml>seclaw:digest/seclaw:digestinfo</targetxml>.</ph></p>
      </section>
    </body>
  </dita:topic>

  <!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
  <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK13_PSL_LandingPages\pods_level3.dita  -->
  <!--<xsl:message>pods_level3.xsl requires manual development!</xsl:message>-->

  <xsl:template match="comm:body/level/level/level">
    <!--  Original Target XPath:  seclaw:body/seclaw:level/seclaw:bodytext/seclaw:digestgrp/seclaw:digest/seclaw:digestinfo   -->
    <seclaw:digest>
      <seclaw:digestinfo>
        <xsl:apply-templates select="levelinfo/services"/>
        <xsl:apply-templates select="bodytext"/>
        <xsl:apply-templates select="bodytext/pgrp/note"/>
       </seclaw:digestinfo>
    </seclaw:digest>
  </xsl:template>

  <xsl:template match="comm:body/level/level/level/heading">
    <!--  Original Target XPath:  seclaw:digest/heading   -->
    <heading>
      <xsl:apply-templates select="@* | node()"/>
    </heading>
  </xsl:template>

</xsl:stylesheet>
