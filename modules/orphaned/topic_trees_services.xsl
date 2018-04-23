<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:classify="http://www.lexisnexis.com/xmlschemas/content/shared/classification/1/" xmlns:topic="urn:x-lexisnexis:content:topic:global:1" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="psl_landingpgs-topic_trees_services">
  <title>Topic Tree <sourcexml>services</sourcexml> <lnpid>id-UK13-30028</lnpid></title>
  <body>
      <p>The element <sourcexml>services</sourcexml> becomes
        <targetxml>classify:classification[@classscheme="lpa:tab-info"]</targetxml>. <ul>
    <li>The start-tag and end-tag (but not the content) of the <sourcexml>services/service</sourcexml> element are dropped.
    <ul>
    <li>The element <sourcexml>service/info-obj</sourcexml> becomes
                <targetxml>classify:classification/classify:classitem</targetxml>. The attribute
                <sourcexml>info-obj/@role-as-child</sourcexml> becomes
                <targetxml>classify:classitem/classify:classitem-identifier/classify:classname</targetxml>
              (see below).<ul>
                <li>The element <sourcexml>info-obj/api-params</sourcexml> becomes
                    <targetxml>classify:classitem/meta</targetxml>. <ul>
                    <li>The element <sourcexml>api-params/param</sourcexml> becomes
                        <targetxml>meta/metaitem</targetxml>. <ul>
                        <li>The attribute <sourcexml>param/@name</sourcexml> becomes
                            <targetxml>metaitem/@name</targetxml> and the <u><b>value</b></u> of
                          this attribute is folded to lowercase and has the namespace "lpa:"
                          prepended to it.</li>
                        <li>The attribute <sourcexml>param/@value</sourcexml> becomes
                            <targetxml>metaitem/@value</targetxml>.</li>
                      </ul>
                    </li>
                  </ul></li>
                <li>After <sourcexml>info-obj/api-params</sourcexml> is converted, the element
                    <targetxml>classify:classitem/classify:classitem-identifier/classify:classname</targetxml>
                  is created. (First, the child <targetxml>classify:classitem-identifier</targetxml>
                  is created as a wrapper, then the grandchild <targetxml>classify:classname</targetxml> is created). 
                  The attribute <sourcexml>info-obj/@role-as-child</sourcexml> becomes the content of <targetxml>classify:classname</targetxml>.</li>
                <li>The element <sourcexml>info-obj/info-obj</sourcexml> becomes
                    <targetxml>classify:classitem/classify:classitem</targetxml>. The attribute
                    <sourcexml>info-obj/@role-as-child</sourcexml> of this <b><u>nested</u></b>
                  <sourcexml>info-obj</sourcexml> should be suppressed and not output, however it
                  currently must have value of "persona_info". <ul>
                    <li>The element <sourcexml>info-obj/info-obj/api-params</sourcexml> becomes
                        <targetxml>classify:classitem/classify:classitem/meta</targetxml>. <ul>
                        <li>The element <sourcexml>info-obj/info-obj/api-params/param</sourcexml>,
                          when <sourcexml>param/@value-type</sourcexml> is not specified or is not
                          equal to "pguid", becomes <targetxml>meta/metaitem</targetxml>. <ul>
                            <li>The attribute <sourcexml>param/@name</sourcexml> becomes
                                <targetxml>metaitem/@name</targetxml> and the <u><b>value</b></u> of
                              this attribute is folded to lowercase and has the namespace "lpa:"
                              prepended to it.</li>
                            <li>The attribute <sourcexml>param/@value</sourcexml> becomes
                                <targetxml>metaitem/@value</targetxml>.</li>
                          </ul>
                        </li>
                        <li>The element <sourcexml>info-obj/info-obj/api-params/param</sourcexml>,
                          only when <sourcexml>param/@value-type</sourcexml>
                          <b><u>is</u></b> equal to "pguid", becomes
                            <targetxml>classify:classitem/classify:classitem/classify:classitem-identifier/topic:topicReference</targetxml>
                          and sibling <targetxml>classify:classname</targetxml>. That is, after
                            <targetxml>classify:classitem/classify:classitem/meta</targetxml> is
                          closed, the element
                            <targetxml>classify:classitem/classify:classitem/classify:classitem-identifier/topic:topicReference</targetxml>
                          is created, and <targetxml>classify:classname</targetxml> is created as
                          its sibling. (First, the child
                            <targetxml>classify:classitem-identifier</targetxml> is created as a
                          wrapper, then the grandchildren
                            <targetxml>topic:topicReference</targetxml> and
                            <targetxml>classify:classname</targetxml> are created). <ul>
                            <li>The attribute <sourcexml>param/@value</sourcexml> becomes
                                <targetxml>classify:classitem-identifier/topic:topicReference/@guid:guid</targetxml>.</li>
                            <li>The attribute <sourcexml>param/@name</sourcexml> becomes the content
                              of
                                <targetxml>classify:classitem-identifier/classify:classname</targetxml>.</li>
                          </ul>
                        </li>
                      </ul></li>
                  </ul></li>
              </ul></li></ul></li></ul></p>
    
    
    
    <section>
      <title>Source XML</title>
      <codeblock>

&lt;services&gt;
  &lt;service&gt;
    &lt;info-obj role-as-child="AtAGlance_tab_info"&gt;
      &lt;api-params&gt;
        &lt;param name="tab-searchtype" value="AtAGlance"/&gt;
        &lt;param name="display-name" value="At A Glance"/&gt;
        &lt;param name="in-house-lawyer-order" value="1"/&gt;
      &lt;/api-params&gt;
    &lt;/info-obj&gt;
    &lt;info-obj role-as-child="Cases_tab_info"&gt;
      &lt;api-params&gt;
        &lt;param name="tab-searchtype" value="Cases"/&gt;
        &lt;param name="display-name" value="Cases"/&gt;
        &lt;param name="default-POD-order" value="12"/&gt;
        &lt;param name="in-house-lawyer-order" value="11"/&gt;
      &lt;/api-params&gt;
      &lt;info-obj role-as-child="persona_info"&gt;
        &lt;api-params&gt;
          &lt;param name="persona-POD-order" value="2"/&gt;
          &lt;param name="persona" value-type="pguid" value="urn:pguid-for-inhouse-counsel-persona"/&gt;
        &lt;/api-params&gt;
      &lt;/info-obj&gt;                            
    &lt;/info-obj&gt;                            
    &lt;info-obj role-as-child="Checklists_tab_info"&gt;
      &lt;api-params&gt;
        &lt;param name="tab-searchtype" value="Checklists"/&gt;
        &lt;param name="default-POD-order" value="7"/&gt;
        &lt;param name="display-name" value="Checklists"/&gt;
      &lt;/api-params&gt;
    &lt;/info-obj&gt;
    &lt;!-- ... --&gt;
  &lt;/service&gt;
&lt;/services&gt;

      </codeblock>
    </section>
    <section>
      <title>Target XML </title>
      <codeblock>

&lt;classify:classification classscheme="lpa:tab-info"&gt;
  &lt;classify:classitem&gt;
    &lt;meta&gt;
      &lt;metaitem name="lpa:tab-searchtype" value="AtAGlance"/&gt;
      &lt;metaitem name="lpa:display-name" value="At A Glance"/&gt;
      &lt;metaitem name="lpa:in-house-lawyer-order" value="1"/&gt;    
    &lt;/meta&gt;
    &lt;classify:classitem-identifier&gt;
      &lt;classify:classname&gt;AtAGlance_tab_info&lt;/classify:classname&gt;
    &lt;/classify:classitem-identifier&gt;
  &lt;/classify:classitem&gt;
  &lt;classify:classitem&gt;
    &lt;meta&gt;
      &lt;metaitem name="lpa:tab-searchtype" value="Cases"/&gt;
      &lt;metaitem name="lpa:display-name" value="Cases"/&gt;
      &lt;metaitem name="lpa:default-pod-order" value="12"/&gt;
      &lt;metaitem name="lpa:in-house-lawyer-order" value="11"/&gt;    
    &lt;/meta&gt;
    &lt;classify:classitem-identifier&gt;
      &lt;classify:classname&gt;Cases_tab_info&lt;/classify:classname&gt;
    &lt;/classify:classitem-identifier&gt;
    &lt;classify:classitem&gt;
      &lt;meta&gt;
        &lt;metaitem name="lpa:persona-pod-order" value="2"/&gt;
      &lt;/meta&gt;
      &lt;classify:classitem-identifier&gt;
        &lt;topic:topicReference guid:guid="urn:pguid-for-inhouse-counsel-persona"/&gt;
        &lt;classify:classname&gt;persona&lt;/classify:classname&gt;
      &lt;/classify:classitem-identifier&gt;
    &lt;/classify:classitem&gt;
  &lt;/classify:classitem&gt;
  &lt;classify:classitem&gt;
    &lt;meta&gt;
      &lt;metaitem name="lpa:tab-searchtype" value="Checklists"/&gt;
      &lt;metaitem name="lpa:default-pod-order" value="7"/&gt;
      &lt;metaitem name="lpa:display-name" value="Checklists"/&gt;
    &lt;/meta&gt;
    &lt;classify:classitem-identifier&gt;
      &lt;classify:classname&gt;Checklists_tab_info&lt;/classify:classname&gt;
    &lt;/classify:classitem-identifier&gt;
  &lt;/classify:classitem&gt;
  &lt;!-- ... --&gt;
&lt;/classify:classification&gt;

      </codeblock>
    </section>
    <section>
      <title>Changes</title>
      <p>2016-01-22: <ph id="change_20160122_JCG">Added instructions to handle nested
            <sourcexml>info-obj</sourcexml> elements that contain persona information.</ph></p>
      <p>2015-11-02: <ph id="change_20151102_JCG">Extensive changes have been made to the mappings
          for the <sourcexml>services</sourcexml> element and its child elements; please review the
          new instructions and the example carefully.</ph></p>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK13_PSL_LandingPages\topic_trees_services.dita  -->
	<!--<xsl:message>topic_trees_services.xsl requires manual development!</xsl:message> -->

	<xsl:template match="services">

		<!--  Original Target XPath:  classify:classification[@classscheme="lpa:tab-info"]   -->
		<classify:classification>
			<xsl:apply-templates select="@* | node()"/>
		</classify:classification>

	</xsl:template>

	<xsl:template match="services/service">

		<!--  Original Target XPath:  classify:classification/classify:classitem   -->
		<classify:classification>
			<classify:classitem>
				<xsl:apply-templates select="@* | node()"/>
			</classify:classitem>
		</classify:classification>

	</xsl:template>

	<xsl:template match="service/info-obj">

		<!--  Original Target XPath:  classify:classification/classify:classitem   -->
		<classify:classification>
			<classify:classitem>
				<xsl:apply-templates select="@* | node()"/>
			</classify:classitem>
		</classify:classification>

	</xsl:template>

	<xsl:template match="info-obj/@role-as-child">

		<!--  Original Target XPath:  classify:classitem/classify:classitem-identifier/classify:classname   -->
		<classify:classitem>
			<classify:classitem-identifier>
				<classify:classname>
					<xsl:apply-templates select="@* | node()"/>
				</classify:classname>
			</classify:classitem-identifier>
		</classify:classitem>

	</xsl:template>

	<xsl:template match="info-obj/api-params">

		<!--  Original Target XPath:  classify:classitem/meta   -->
		<classify:classitem>
			<meta>
				<xsl:apply-templates select="@* | node()"/>
			</meta>
		</classify:classitem>

	</xsl:template>

	<xsl:template match="api-params/param">

		<!--  Original Target XPath:  meta/metaitem   -->
		<meta>
			<metaitem>
				<xsl:apply-templates select="@* | node()"/>
			</metaitem>
		</meta>

	</xsl:template>

	<xsl:template match="param/@name">

		<!--  Original Target XPath:  metaitem/@name   -->
		<metaitem>
			<xsl:attribute name="name">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</metaitem>

	</xsl:template>

	<xsl:template match="param/@value">

		<!--  Original Target XPath:  metaitem/@value   -->
		<metaitem>
			<xsl:attribute name="value">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</metaitem>

	</xsl:template>

	<xsl:template match="info-obj/info-obj">

		<!--  Original Target XPath:  classify:classitem/classify:classitem   -->
		<classify:classitem>
			<classify:classitem>
				<xsl:apply-templates select="@* | node()"/>
			</classify:classitem>
		</classify:classitem>

	</xsl:template>

	<xsl:template match="info-obj">

		<!--  Original Target XPath:  classify:classitem/classify:classitem/meta   -->
		<classify:classitem>
			<classify:classitem>
				<meta>
					<xsl:apply-templates select="@* | node()"/>
				</meta>
			</classify:classitem>
		</classify:classitem>

	</xsl:template>

	<xsl:template match="info-obj/info-obj/api-params">

		<!--  Original Target XPath:  classify:classitem/classify:classitem/meta   -->
		<classify:classitem>
			<classify:classitem>
				<meta>
					<xsl:apply-templates select="@* | node()"/>
				</meta>
			</classify:classitem>
		</classify:classitem>

	</xsl:template>

	<xsl:template match="info-obj/info-obj/api-params/param">

		<!--  Original Target XPath:  meta/metaitem   -->
		<meta>
			<metaitem>
				<xsl:apply-templates select="@* | node()"/>
			</metaitem>
		</meta>

	</xsl:template>

	<xsl:template match="param/@value-type">

		<!--  Original Target XPath:  meta/metaitem   -->
		<meta>
			<metaitem>
				<xsl:apply-templates select="@* | node()"/>
			</metaitem>
		</meta>

	</xsl:template>

</xsl:stylesheet>