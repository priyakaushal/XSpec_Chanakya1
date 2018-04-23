<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" xmlns:index="urn:x-lexisnexis:content:publicationindex:sharedservices:1" xmlns:navaid="urn:x-lexisnexis:content:navigationaid:sharedservices:1" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita docinfo">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="navaid-separate-details">
	<title>Convert One <sourcexml>p</sourcexml> Or <sourcexml>entry</sourcexml> To
			<targetxml>navaid:list/index:entry</targetxml> <lnpid>id-AU16-21021</lnpid></title>
	<body>
		<p>The subtopics above describe scenarios where <sourcexml>remotelink</sourcexml> elements
			occur separated from each other, but within a grouping structure such as a
				<sourcexml>l</sourcexml>, <sourcexml>table</sourcexml>, or set of associated
				<sourcexml>p</sourcexml> elements. However they occur, the contents of each
				<sourcexml>p</sourcexml> or <sourcexml>entry</sourcexml> element within the particular
			grouping structure becomes a <targetxml>navaid:list/index:entry</targetxml> and is
			converted as follows: <ul>
				<li>A <targetxml>navaid:list/index:entry</targetxml> is created.</li>
				<li>All <sourcexml>text</sourcexml> start-tags and end-tags (but not the content) are
					dropped.</li>
				<li>If there is any content before the <sourcexml>remotelink</sourcexml>, a
						<targetxml>index:entry/index:entrytext</targetxml> element is created and the
					content appearing before <sourcexml>remotelink</sourcexml> is moved to it.
          If this <targetxml>index:entrytext</targetxml> ends with "," or ";" (comma or semicolon) the "," or ";" is not output but is instead dropped so that the <targetxml>index:entrytext</targetxml> never ends with "," or ";".
          </li>
			  <li>For each
			    <sourcexml>remotelink</sourcexml> an <targetxml>index:entry/index:locator/ref:lnlink/@service="DOCUMENT"</targetxml>
			    element is created (create child <targetxml>index:entry/index:locator</targetxml> and then create grandchild element <targetxml>index:entry/index:locator/ref:lnlink</targetxml> with attribute <targetxml>ref:lnlink/@service="DOCUMENT"</targetxml>). The <targetxml>ref:lnlink</targetxml> element is populated as follows: <ul>
            <li>Element <targetxml>index:locator/ref:lnlink/ref:marker</targetxml> is created, and the content
              of the <sourcexml>remotelink</sourcexml> becomes the content of
              <targetxml>ref:lnlink/ref:marker</targetxml>.</li>
			      <li>Element <targetxml>index:locator/ref:lnlink/ref:locator</targetxml> is created along with
              sub-element <targetxml>ref:locator/ref:locator-key</targetxml> and sub-sub-elements
                <targetxml>ref:locator/ref:locator-key/ref:key-name</targetxml> and
                <targetxml>ref:locator/ref:locator-key/ref:key-value</targetxml>. The attribute
                <targetxml>ref:key-name/@name</targetxml> is set to "DOC-ID".</li>
            <li>If <sourcexml>remotelink/@remotekey1="DOC-ID"</sourcexml>:<ul>
                <li><targetxml>ref:key-value/@value</targetxml> is set to the the value of
                    <sourcexml>remotelink/@dpsi</sourcexml>, followed by a hyphen ("-"). Then it is
                  concatenated with the value of <sourcexml>remotelink/@remotekey2</sourcexml>. If
                  and only if <sourcexml>remotelink/@remotelink2</sourcexml> is <b>not</b> present,
                  use <sourcexml>remotelink/@refpt</sourcexml> instead.</li>
              </ul></li>
            <li>If <sourcexml>remotelink/@remotekey1="REFPTID"</sourcexml>:<ul>
                <li><targetxml>ref:key-value/@value</targetxml> is set to the the value of
                    <sourcexml>remotelink/@dpsi</sourcexml>, followed by a hyphen ("-"). Then it is
                  concatenated with the value of <sourcexml>remotelink/@docidref</sourcexml>. If
                <sourcexml>remotelink/@docidref</sourcexml> is not present when <sourcexml>remotelink/@remotekey1="REFPTID"</sourcexml>, this is a
              data error and the link is invalid. As a work-around, use the value "MISSINGDOCID" if the <sourcexml>remotelink/@docidref</sourcexml> attribute is missing in this context.</li>
              <li>The attribute <targetxml>ref:lnlink/ref:locator/@anchoridref</targetxml> is
                  set to the value of <sourcexml>remotelink/@refpt</sourcexml>. If and only if
                    <sourcexml>remotelink/@refpt</sourcexml> is <b>not</b> present, use
                    <sourcexml>remotelink/@remotelink2</sourcexml> instead. If this value begins
                  with a number, an underscore (_) is added to the front. Any colons (":") present in the Rosetta source value are replaced with an underscore ("_") in the NewLexis output value.</li>
              </ul>
            </li>
            <li>When creating the value for <targetxml>ref:key-value/@value</targetxml>: if
                <sourcexml>remotelink/@dpsi</sourcexml> is not present, the value from
                <sourcexml>docinfo:dpsi/@id-string</sourcexml> is used. If there is no
                <sourcexml>docinfo:dpsi/@id-string</sourcexml> value, the value from the LBU
              manifest file is captured and used.</li>
          </ul>
        </li>
				<li>If there is content between two <sourcexml>remotelink</sourcexml> elements such as:
					"-", "--" (dashes), "," (comma), ";" (semicolon), "|" (vertical bar), "and", or "to",
					along with optional white-space, this content is moved to an
						<targetxml>index:entry/connector</targetxml> element that is created between the two
						<targetxml>index:entry/index:locator</targetxml> elements. </li>
				<li>If there is content following all <sourcexml>remotelink</sourcexml> elements, this
					content is moved to an
						<targetxml>index:entry/inlinenote/[@notetype="reference-in-text"]</targetxml>
					element following the last <targetxml>index:entry/index:locator</targetxml> element,
					with all elements within this content converted as described in the <xref href="NavAidLandingPages_General.dita">General Mark-Up</xref> section.</li>
			</ul>
		</p>
	  <section>
	    <title>Changes</title>
	    <p>2013-06-27: <ph id="change_20130627_JCG">changed instructions to specify that attribute <targetxml>ref:lnlink/@service="DOCUMENT"</targetxml> should be created in target XML</ph></p>
	  </section>
	</body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU16_navaid\navaid-separate-details.dita  -->
	<!-- 

	<xsl:template match="p">

		<!-\-  Original Target XPath:  navaid:list/index:entry   -\->
		<navaid:list>
			<index:entry>
				<xsl:apply-templates select="@* | node()"/>
			</index:entry>
		</navaid:list>

	</xsl:template>

	<xsl:template match="entry">

		<!-\-  Original Target XPath:  navaid:list/index:entry   -\->
		<navaid:list>
			<index:entry>
				<xsl:apply-templates select="@* | node()"/>
			</index:entry>
		</navaid:list>

	</xsl:template>

	<xsl:template match="remotelink">

		<!-\-  Original Target XPath:  navaid:list/index:entry   -\->
		<navaid:list>
			<index:entry>
				<xsl:apply-templates select="@* | node()"/>
			</index:entry>
		</navaid:list>

	</xsl:template>

	<xsl:template match="l">

		<!-\-  Original Target XPath:  navaid:list/index:entry   -\->
		<navaid:list>
			<index:entry>
				<xsl:apply-templates select="@* | node()"/>
			</index:entry>
		</navaid:list>

	</xsl:template>

	<xsl:template match="table">

		<!-\-  Original Target XPath:  navaid:list/index:entry   -\->
		<navaid:list>
			<index:entry>
				<xsl:apply-templates select="@* | node()"/>
			</index:entry>
		</navaid:list>

	</xsl:template>

	<xsl:template match="text">

		<!-\-  Original Target XPath:  index:entry/index:entrytext   -\->
		<index:entry>
			<index:entrytext>
				<xsl:apply-templates select="@* | node()"/>
			</index:entrytext>
		</index:entry>

	</xsl:template>

	<xsl:template match="remotelink/@remotekey1=&#34;DOC-ID&#34;">

		<!-\-  Original Target XPath:  ref:key-value/@value   -\->
		<ref:key-value>
			<xsl:attribute name="value">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</ref:key-value>

	</xsl:template>

	<xsl:template match="remotelink/@dpsi">

		<!-\-  Original Target XPath:  ref:key-value/@value   -\->
		<ref:key-value>
			<xsl:attribute name="value">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</ref:key-value>

	</xsl:template>

	<xsl:template match="remotelink/@remotekey2">

		<!-\-  Original Target XPath:  ref:key-value/@value   -\->
		<ref:key-value>
			<xsl:attribute name="value">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</ref:key-value>

	</xsl:template>

	<xsl:template match="remotelink/@remotelink2">

		<!-\-  Original Target XPath:  ref:key-value/@value   -\->
		<ref:key-value>
			<xsl:attribute name="value">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</ref:key-value>

	</xsl:template>

	<xsl:template match="remotelink/@refpt">

		<!-\-  Original Target XPath:  ref:key-value/@value   -\->
		<ref:key-value>
			<xsl:attribute name="value">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</ref:key-value>

	</xsl:template>

	<xsl:template match="remotelink/@remotekey1=&#34;REFPTID&#34;">

		<!-\-  Original Target XPath:  ref:key-value/@value   -\->
		<ref:key-value>
			<xsl:attribute name="value">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</ref:key-value>

	</xsl:template>

	<xsl:template match="remotelink/@docidref">

		<!-\-  Original Target XPath:  ref:lnlink/ref:locator/@anchoridref   -\->
		<ref:lnlink>
			<ref:locator>
				<xsl:attribute name="anchoridref">
					<xsl:apply-templates select="node()"/>
				</xsl:attribute>
			</ref:locator>
		</ref:lnlink>

	</xsl:template>

	<xsl:template match="docinfo:dpsi/@id-string">

		<!-\-  Original Target XPath:  index:entry/connector   -\->
		<index:entry>
			<connector>
				<xsl:apply-templates select="@* | node()"/>
			</connector>
		</index:entry>

	</xsl:template>-->

</xsl:stylesheet>