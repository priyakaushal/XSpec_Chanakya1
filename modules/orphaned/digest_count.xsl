<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:classify="http://www.lexisnexis.com/xmlschemas/content/shared/classification/1/" xmlns:seclaw="http://www.lexisnexis.com/xmlschemas/content/legal/secondary-law/1/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="psl_landingpgs-pods_digest_count">
  <title>Create a <targetxml>classification:classitem</targetxml> element that contains the total number of <targetxml>seclaw:digest</targetxml> elements output <lnpid>id-UK13-30030</lnpid></title>
  <body>
    <p>When processing a POD document, a count is kept of the total number of
        <targetxml>seclaw:digest</targetxml> elements output for that particular POD document. Then,
      when the <targetxml>/seclaw:seclaw/doc:metadata/doc:docinfo</targetxml> element is output,
      this count is output as follows:<ul>
        <li>If a target <targetxml>classify:classification[@classscheme="ln.legal"]</targetxml> does
          not already exist due to conversion of source
            <sourcexml>/COMMENTARYDOC/docinfo/classification/classification[@classscheme="ln.legal"]</sourcexml>,
          then create this target element.</li>
        <li>Within <targetxml>classify:classification[@classscheme="ln.legal"]</targetxml>, create
          child element
            <targetxml>classify:classitem[@classscheme="lpa:applicationInfo"]</targetxml>.</li>
        <li>Within <targetxml>classify:classitem[@classscheme="lpa:applicationInfo"]</targetxml>:<ul>
            <li>Create child element <targetxml>meta</targetxml>. Within <targetxml>meta</targetxml>
              create child element <targetxml>metaitem</targetxml> with attribute
                <targetxml>metaitem/@name="lpa:digest-total-count"</targetxml> and attribute
                <targetxml>metaitem/@value</targetxml> set to the total number of
                <targetxml>seclaw:digest</targetxml> elements output for that particular POD
              document.</li>
            <li>Create child element <targetxml>classify:classitem-identifier</targetxml>. Within
                <targetxml>classify:classname</targetxml> create child element
                <targetxml>metaitem</targetxml> with content of "application_info" (without the
              quotes).</li>
          </ul></li>
      </ul></p>
    <section>
      <title>Source XML showing presence of <sourcexml>classification[@classscheme="ln.legal"]/classitem[@classscheme="topic:topicReference"]</sourcexml></title>
      <p>This example shows that when
        <sourcexml>classification[@classscheme="ln.legal"]/classitem[@classscheme="topic:topicReference"]</sourcexml>
        is also present in the source, it is converted as specified in the topic <xref href="../../common_newest/Rosetta_classification_classitem_topic.topicreference-Chof-docinfo-LxAdv-doc.docinfo_classify.classification.dita"/>, and then the created
          <targetxml>classitem[@classscheme="lpa:applicationInfo"]</targetxml> is output as a
        sibling of the
          <targetxml>classify:classitem[@classscheme="topic:topicReference"]</targetxml> within the
        same <sourcexml>classify:classification[@classscheme="ln.legal"]</sourcexml> parent element. </p>
      <codeblock>

&lt;COMMENTARYDOC ...&gt;
  &lt;docinfo ...&gt;
    &lt;!--...--&gt;
    &lt;classification classscheme="ln.legal"&gt;
      &lt;classitem classscheme="topic:topicReference"&gt;
        &lt;meta&gt;
          &lt;metaitem name="appliedby" value="human"/&gt;
        &lt;/meta&gt;
        &lt;classitem-identifier&gt;
          &lt;classcode normval="urn:topic:36e07fba607e4410a49f5d6c6c954be2"/&gt;
        &lt;/classitem-identifier&gt;
      &lt;/classitem&gt;
    &lt;/classification&gt;
    &lt;!--...--&gt;
  &lt;/docinfo&gt;
  &lt;comm:body&gt;
    &lt;!--...--&gt;
  &lt;/comm:body&gt;
&lt;/COMMENTARYDOC&gt;

      </codeblock>
    </section>
    <section>
      <title>Target XML showing creation of <targetxml>classitem[@classscheme="lpa:applicationInfo"]</targetxml></title>
      <p>In this example, the target document contains twenty-nine (29) <targetxml>seclaw:digest</targetxml> elements.</p>
      <codeblock>

&lt;seclaw:seclaw ...&gt;
  &lt;seclaw:head/&gt;
  &lt;seclaw:body&gt;
    &lt;seclaw:level leveltype="landingpage"&gt;
      &lt;heading&gt;
        &lt;title&gt;...&lt;/title&gt;
      &lt;/heading&gt;
      &lt;seclaw:bodytext&gt;
        &lt;seclaw:digestgrp&gt;
          &lt;heading&gt;
            &lt;title&gt;Document Links&lt;/title&gt;
          &lt;/heading&gt;
          &lt;!-- first digest element --&gt;
          &lt;seclaw:digest&gt;
            &lt;!-- ... --&gt;
          &lt;/seclaw:digest&gt;
          &lt;!-- second digest element --&gt;
          &lt;seclaw:digest&gt;
            &lt;!-- ... --&gt;
          &lt;/seclaw:digest&gt;
          &lt;!-- ... --&gt;
          &lt;!-- twenty-ninth digest element --&gt;
          &lt;seclaw:digest&gt;
            &lt;!-- ... --&gt;
          &lt;/seclaw:digest&gt;
        &lt;/seclaw:digestgrp&gt;
      &lt;/seclaw:bodytext&gt;
    &lt;/seclaw:level&gt;
  &lt;/seclaw:body&gt;
  &lt;doc:metadata&gt;
    &lt;!--...--&gt;
    &lt;classify:classification classscheme="ln.legal"&gt;
      &lt;classify:classitem classscheme="topic:topicReference"&gt;
        &lt;meta&gt;
          &lt;metaitem name="appliedby" value="human"/&gt;
        &lt;/meta&gt;
        &lt;topic:topicReference guid:guid="urn:topic:36e07fba607e4410a49f5d6c6c954be2"/&gt;
      &lt;/classify:classitem&gt;

      &lt;classify:classitem classscheme="lpa:applicationInfo"&gt;
        &lt;meta&gt;
          &lt;metaitem name="lpa:digest-total-count" value="29"/&gt;
        &lt;/meta&gt;
        &lt;classify:classitem-identifier&gt;
          &lt;classify:classname&gt;application_info&lt;/classify:classname&gt;
        &lt;/classify:classitem-identifier&gt;
      &lt;/classify:classitem&gt;
    &lt;/classify:classification&gt;
    &lt;!--...--&gt;
  &lt;/doc:metadata&gt;
&lt;/seclaw:seclaw&gt;

      </codeblock>
    </section>
  <section>
    <title>Changes</title>
    <p>2016-03-31: <ph id="change_20160331_JCG">Created this topic due to new requirement.</ph></p>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK13_PSL_LandingPages\digest_count.dita  -->
	<!--<xsl:message>digest_count.xsl requires manual development!</xsl:message> -->

	<xsl:template match="/COMMENTARYDOC/docinfo/classification/classification[@classscheme=&#34;ln.legal&#34;]">

		<!--  Original Target XPath:  classify:classification[@classscheme="ln.legal"]   -->
		<classify:classification>
			<xsl:apply-templates select="@* | node()"/>
		</classify:classification>

	</xsl:template>

	<xsl:template match="classification[@classscheme=&#34;ln.legal&#34;]/classitem[@classscheme=&#34;topic:topicReference&#34;]">

		<!--  Original Target XPath:  classitem[@classscheme="lpa:applicationInfo"]   -->
		<classitem>
			<xsl:apply-templates select="@* | node()"/>
		</classitem>

	</xsl:template>

	<xsl:template match="classify:classification[@classscheme=&#34;ln.legal&#34;]">

		<!--  Original Target XPath:  classify:classification[@classscheme="ln.legal"]   -->
		<classify:classification>
			<xsl:apply-templates select="@* | node()"/>
		</classify:classification>

	</xsl:template>

</xsl:stylesheet>