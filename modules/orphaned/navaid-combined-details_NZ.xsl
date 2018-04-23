<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" xmlns:index="urn:x-lexisnexis:content:publicationindex:sharedservices:1" xmlns:navaid="urn:x-lexisnexis:content:navigationaid:sharedservices:1" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita docinfo">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="navaid-combined-details">
      <title>Convert Combined <sourcexml>remotelink</sourcexml> Elements To
          <targetxml>navaid:list</targetxml> <lnpid>id-NZ14-25207</lnpid></title>
      <body>
        <p>The subtopic above describes the scenario where there are a series of
            <sourcexml>remotelink</sourcexml> elements within a <sourcexml>p</sourcexml> that contains a single <sourcexml>text</sourcexml> (Xpath
                <sourcexml>p/text</sourcexml>).
        </p>
        <p>The series of <sourcexml>remotelink</sourcexml> elements are converted to a
            <targetxml>navaid:landingpagebody/navaid:list</targetxml> as described in this subtopic.
          The <targetxml>navaid:list/@style</targetxml> attribute is required and for conversions in
          this context it is usually set to "banner". However, when the element docinfo:hierlev has attribute @role equal to "ancestor-me", 
          and subelement docinfo:hierlev/heading/title is equal to "Year and Number" then the
            <targetxml>navaid:list/@style</targetxml> attribute is set to "grid".</p>
        <p>The <b>entire</b> series of <sourcexml>remotelink</sourcexml> elements may be contained within a
          parent <sourcexml>emph@typstyle="bf"</sourcexml> element. If present, this <sourcexml>emph@typstyle="bf"</sourcexml> element's
          start and end tags (but not the content) are dropped. Note that this <sourcexml>emph@typstyle="bf"</sourcexml> element is one that wraps the 
          <b>entire</b> series of <sourcexml>remotelink</sourcexml> elements; there may also be <sourcexml>emph@typstyle="ib"</sourcexml> or <sourcexml>emph@typstyle="hi"</sourcexml> elements around text that is not within a <sourcexml>remotelink</sourcexml>, and these indicate <targetxml>meta</targetxml> and <targetxml>metaitem</targetxml> elements are to be created as described below.</p>
        <p>A <targetxml>navaid:list/[@style="banner"]</targetxml> or <targetxml>navaid:list/[@style="grid"]</targetxml> element is created and is
          populated with <targetxml>navaid:list/index:entry</targetxml> elements. For each
          <sourcexml>remotelink</sourcexml> in the series, an <targetxml>index:entry/index:locator/ref:lnlink/@service="DOCUMENT"</targetxml> element is created (create target element <targetxml>index:entry</targetxml> with child <targetxml>index:entry/index:locator</targetxml>, and then create grandchild element <targetxml>index:entry/index:locator/ref:lnlink</targetxml> with attribute <targetxml>ref:lnlink/@service="DOCUMENT"</targetxml>). The <targetxml>ref:lnlink</targetxml> element is populated as follows: <ul>
            <li><targetxml>index:locator/ref:lnlink</targetxml></li>
        <li>Element <targetxml>index:locator/ref:lnlink/ref:marker</targetxml> is created, and the content of
          the <sourcexml>remotelink</sourcexml> becomes the content of
          <targetxml>ref:lnlink/ref:marker</targetxml>.</li>
            <li>Element <targetxml>index:locator/ref:lnlink/ref:locator</targetxml> is created along with
          sub-element <targetxml>ref:locator/ref:locator-key</targetxml> and sub-sub-elements
            <targetxml>ref:locator/ref:locator-key/ref:key-name</targetxml> and
            <targetxml>ref:locator/ref:locator-key/ref:key-value</targetxml>. The attribute
            <targetxml>ref:key-name/@name</targetxml> is set to "DOC-ID".</li>
        <li>If <sourcexml>remotelink/@remotekey1="DOC-ID"</sourcexml>:<ul>
            <li><targetxml>ref:key-value/@value</targetxml> is set to the the value of
                <sourcexml>remotelink/@dpsi</sourcexml>, followed by a hyphen ("-"). Then it is
              concatenated with the value of <sourcexml>remotelink/@remotekey2</sourcexml>. If and
              only if <sourcexml>remotelink/@remotelink2</sourcexml> is <b>not</b> present, use
                <sourcexml>remotelink/@refpt</sourcexml> instead.</li>
          </ul></li>
        <li>If <sourcexml>remotelink/@remotekey1="REFPTID"</sourcexml>:<ul>
            <li><targetxml>ref:key-value/@value</targetxml> is set to the the value of
                <sourcexml>remotelink/@dpsi</sourcexml>, followed by a hyphen ("-"). Then it is
              concatenated with the value of <sourcexml>remotelink/@docidref</sourcexml>. If
                <sourcexml>remotelink/@docidref</sourcexml> is not present when <sourcexml>remotelink/@remotekey1="REFPTID"</sourcexml>, this is a
              data error and the link is invalid. As a work-around, use the value "MISSINGDOCID" if the <sourcexml>remotelink/@docidref</sourcexml> attribute is missing in this context.</li>
            <li>The attribute
              <targetxml>ref:lnlink/ref:locator/@anchoridref</targetxml> is set to
              the value of <sourcexml>remotelink/@refpt</sourcexml>. If and only if
                <sourcexml>remotelink/@refpt</sourcexml> is <b>not</b> present, use
                <sourcexml>remotelink/@remotelink2</sourcexml> instead. If this value begins with a
              number, an underscore (_) is added to the front. Any colons (":") present in the Rosetta source value are replaced with an underscore ("_") in the NewLexis output value.</li>
          </ul>
        </li>
        <li>When creating the value for <targetxml>ref:key-value/@value</targetxml>: if
            <sourcexml>remotelink/@dpsi</sourcexml> is not present, the value from
            <sourcexml>docinfo:dpsi/@id-string</sourcexml> is used. If there is no
            <sourcexml>docinfo:dpsi/@id-string</sourcexml> value, the value from the LBU manifest
          file is captured and used.</li>
      </ul>
    </p>
        <p>There will also be content within the parent <sourcexml>entry</sourcexml>,
            <sourcexml>text</sourcexml>, or <sourcexml>emph</sourcexml> element (the element that
          contains the series of <sourcexml>remotelink</sourcexml> elements) that is <b>outside</b>
          any <sourcexml>remotelink</sourcexml>, and occurs either before the first
            <sourcexml>remotelink</sourcexml> element, between two <sourcexml>remotelink</sourcexml>
          elements, or after the last <sourcexml>remotelink</sourcexml> element. That is, there will
          be content that is <b>not</b> within a <sourcexml>remotelink</sourcexml>, and still within
          the parent element (<sourcexml>entry</sourcexml>, <sourcexml>text</sourcexml>, or
            <sourcexml>emph</sourcexml>) of the series of <sourcexml>remotelink</sourcexml>
          elements. For each such portion of content: <ul>
            <li>If the portion of content consists entirely of "," or ";" or "|" along with optional
          white-space, this content is dropped.</li>
            <li>Otherwise, <ul>
            <li>an <targetxml>index:entry</targetxml> is created. <ul>
              <li>If the content is contained within a <sourcexml>emph@typstyle="ib"</sourcexml> element, then a  
                <targetxml>meta</targetxml> element and child <targetxml>metaitem</targetxml> element are created, where <targetxml>metaitem/@name="active"</targetxml> and <targetxml>metaitem/@value="true"</targetxml>.</li>
                <li>If the content is contained within a <sourcexml>emph@typstyle="hi"</sourcexml> element, then a  
                  <targetxml>meta</targetxml> element and child <targetxml>metaitem</targetxml> element are created, where <targetxml>metaitem/@name="nolink"</targetxml> and <targetxml>metaitem/@value="true"</targetxml>.</li>
            </ul>
              </li>
            <li>Then a child
                <targetxml>index:entry/index:entrytext</targetxml> is created. <ul>
                <li>Any content before the first <sourcexml>remotelink</sourcexml> element becomes
                  the content of a separate <targetxml>index:entry/index:entrytext</targetxml>
                  element.</li>
                <li>Any content between two <sourcexml>remotelink</sourcexml> elements becomes the
                  content of a separate <targetxml>index:entry/index:entrytext</targetxml>
                  element.</li>
                <li>Any content after the last <sourcexml>remotelink</sourcexml> element becomes the
                  content of a separate <targetxml>index:entry/index:entrytext</targetxml>
                  element.</li>
              </ul>
            </li>
            </ul>
            </li>
            </ul>
          <note>This content causes a separate <targetxml>index:entry</targetxml> to be created for
            each portion, and this <targetxml>index:entry</targetxml>
            <b>does not contain an <targetxml>index:entry/index:locator</targetxml>
            child.</b></note>
        </p>
        <p>If any <targetxml>index:entrytext</targetxml> within a <targetxml>navaid:list</targetxml> ends with "," or ";" (comma or semicolon) the "," or ";" is not output but is instead dropped so that no <targetxml>index:entrytext</targetxml> ends with "," or ";".
        </p>
        <section>
          <title>Changes</title>
          <p>2013-06-27: <ph id="change_20130627_JCG">changed instructions to specify that attribute <targetxml>ref:lnlink/@service="DOCUMENT"</targetxml> should be created in target XML</ph></p>
        </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\NZ14_navaid\navaid-combined-details_NZ.dita  -->
	<xsl:message>navaid-combined-details_NZ.xsl requires manual development!</xsl:message> 

	<xsl:template match="remotelink">

		<!--  Original Target XPath:  navaid:list   -->
		<navaid:list>
			<xsl:apply-templates select="@* | node()"/>
		</navaid:list>

	</xsl:template>

	<xsl:template match="p">

		<!--  Original Target XPath:  navaid:landingpagebody/navaid:list   -->
		<navaid:landingpagebody>
			<navaid:list>
				<xsl:apply-templates select="@* | node()"/>
			</navaid:list>
		</navaid:landingpagebody>

	</xsl:template>

	<xsl:template match="text">

		<!--  Original Target XPath:  navaid:landingpagebody/navaid:list   -->
		<navaid:landingpagebody>
			<navaid:list>
				<xsl:apply-templates select="@* | node()"/>
			</navaid:list>
		</navaid:landingpagebody>

	</xsl:template>

	<xsl:template match="p/text">

		<!--  Original Target XPath:  navaid:landingpagebody/navaid:list   -->
		<navaid:landingpagebody>
			<navaid:list>
				<xsl:apply-templates select="@* | node()"/>
			</navaid:list>
		</navaid:landingpagebody>

	</xsl:template>

	<xsl:template match="emph@typstyle=&#34;bf&#34;">

		<!--  Original Target XPath:  meta   -->
		<meta>
			<xsl:apply-templates select="@* | node()"/>
		</meta>

	</xsl:template>

	<xsl:template match="emph@typstyle=&#34;ib&#34;">

		<!--  Original Target XPath:  meta   -->
		<meta>
			<xsl:apply-templates select="@* | node()"/>
		</meta>

	</xsl:template>

	<xsl:template match="emph@typstyle=&#34;hi&#34;">

		<!--  Original Target XPath:  meta   -->
		<meta>
			<xsl:apply-templates select="@* | node()"/>
		</meta>

	</xsl:template>

	<xsl:template match="remotelink/@remotekey1=&#34;DOC-ID&#34;">

		<!--  Original Target XPath:  ref:key-value/@value   -->
		<ref:key-value>
			<xsl:attribute name="value">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</ref:key-value>

	</xsl:template>

	<xsl:template match="remotelink/@dpsi">

		<!--  Original Target XPath:  ref:key-value/@value   -->
		<ref:key-value>
			<xsl:attribute name="value">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</ref:key-value>

	</xsl:template>

	<xsl:template match="remotelink/@remotekey2">

		<!--  Original Target XPath:  ref:key-value/@value   -->
		<ref:key-value>
			<xsl:attribute name="value">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</ref:key-value>

	</xsl:template>

	<xsl:template match="remotelink/@remotelink2">

		<!--  Original Target XPath:  ref:key-value/@value   -->
		<ref:key-value>
			<xsl:attribute name="value">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</ref:key-value>

	</xsl:template>

	<xsl:template match="remotelink/@refpt">

		<!--  Original Target XPath:  ref:key-value/@value   -->
		<ref:key-value>
			<xsl:attribute name="value">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</ref:key-value>

	</xsl:template>

	<xsl:template match="remotelink/@remotekey1=&#34;REFPTID&#34;">

		<!--  Original Target XPath:  ref:key-value/@value   -->
		<ref:key-value>
			<xsl:attribute name="value">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</ref:key-value>

	</xsl:template>

	<xsl:template match="remotelink/@docidref">

		<!--  Original Target XPath:  ref:lnlink/ref:locator/@anchoridref   -->
		<ref:lnlink>
			<ref:locator>
				<xsl:attribute name="anchoridref">
					<xsl:apply-templates select="node()"/>
				</xsl:attribute>
			</ref:locator>
		</ref:lnlink>

	</xsl:template>

	<xsl:template match="docinfo:dpsi/@id-string">

		<!--  Original Target XPath:  index:entry   -->
		<index:entry>
			<xsl:apply-templates select="@* | node()"/>
		</index:entry>

	</xsl:template>

	<xsl:template match="entry">

		<!--  Original Target XPath:  index:entry   -->
		<index:entry>
			<xsl:apply-templates select="@* | node()"/>
		</index:entry>

	</xsl:template>

	<xsl:template match="emph">

		<!--  Original Target XPath:  index:entry   -->
		<index:entry>
			<xsl:apply-templates select="@* | node()"/>
		</index:entry>

	</xsl:template>

</xsl:stylesheet>