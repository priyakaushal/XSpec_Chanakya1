<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" xmlns:index="urn:x-lexisnexis:content:publicationindex:sharedservices:1" xmlns:navaid="urn:x-lexisnexis:content:navigationaid:sharedservices:1" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita docinfo">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="navaid-separate-l">
  <title>Convert <sourcexml>l</sourcexml> to <targetxml>index:index</targetxml> <lnpid>id-AU16-21024</lnpid></title>
  <body>
    <p>The following rule is to be performed when the content of
        <sourcexml>docinfo:doc-id</sourcexml> starts with: <ul>
        <li>LAWNOW_LEG_TITLES_ACTS_</li>
        <li>LAWNOW_LEG_CURRENT_ACTS_</li>
        <li>LAWNOW_LEG_REPEALED_ACTS_</li>
        <li>LAWNOW_LEG_TITLES_SUBLEG_</li>
        <li>LAWNOW_LEG_CURRENT_SUBLEG_</li>
        <li>LAWNOW_LEG_REPEALED_SUBLEG_</li>
        <li>LAWNOW_LEG_SUBJECT_ACTS_</li>
        <li>LAWNOW_LEG_SUBJECT_SUBLEG_</li>
        </ul>
      </p>
      <p>In these files, the contents of <sourcexml>l</sourcexml> becomes
        <targetxml>navaid:landingpagebody/index:index/[@indextype="topical"]</targetxml>. Each child
        <sourcexml>l/li</sourcexml> is converted as follows: <ul id="ul_akt_ejz_ej">
        <li>All <sourcexml>l/li/lilabel</sourcexml> elements in these files currently contain only
          white-space and are otherwise empty. These elements and their white-space content are
          dropped. <note>If in the future there is non-white-space content within an
              <sourcexml>lilabel</sourcexml>, then <sourcexml>lilabel</sourcexml> is moved to the
            front of <targetxml>index:entry/index:entrytext</targetxml> and any child elements of
              <sourcexml>lilabel</sourcexml> are converted as described in the <xref href="NavAidLandingPages_General.dita">General Mark-Up</xref> section.</note>
        </li>
        <li>The contents of the <sourcexml>l/li/p</sourcexml> element becomes
            <targetxml>index:index/index:item/index:entry</targetxml>. (An
          <targetxml>index:index/index:item</targetxml> is created, and then a child <targetxml>index:index/index:item/index:entry</targetxml> is created.) </li>
        <li>All <sourcexml>text</sourcexml> start-tags and end-tags (but not their content) are
          dropped.</li>
        <li>If there is any content before the <sourcexml>remotelink</sourcexml>, an
            <targetxml>index:entry/index:entrytext</targetxml> element is created and the content
          appearing before <sourcexml>remotelink</sourcexml> is moved to it. If this
            <targetxml>index:entrytext</targetxml> ends with "," or ";" (comma or semicolon) the ","
          or ";" is not output but is instead dropped so that the
            <targetxml>index:entrytext</targetxml> never ends with "," or ";". </li>
          <li>For each
            <sourcexml>remotelink</sourcexml> an <targetxml>index:entry/index:locator/ref:lnlink/@service="DOCUMENT"</targetxml>
            element is created (create child <targetxml>index:entry/index:locator</targetxml> and then create grandchild element <targetxml>index:entry/index:locator/ref:lnlink</targetxml> with attribute <targetxml>ref:lnlink/@service="DOCUMENT"</targetxml>). The <targetxml>ref:lnlink</targetxml> element is populated as follows: <ul id="ul_ant_ejz_ej">
            <li>Element <targetxml>index:locator/ref:lnlink/ref:marker</targetxml> is created, and the content
              of the <sourcexml>remotelink</sourcexml> becomes the content of
              <targetxml>ref:lnlink/ref:marker</targetxml>.</li>
              <li>Element <targetxml>index:locator/ref:lnlink/ref:locator</targetxml> is created along with
              sub-element <targetxml>ref:locator/ref:locator-key</targetxml> and sub-sub-elements
                <targetxml>ref:locator/ref:locator-key/ref:key-name</targetxml> and
                <targetxml>ref:locator/ref:locator-key/ref:key-value</targetxml>. The attribute
                <targetxml>ref:key-name/@name</targetxml> is set to "DOC-ID".</li>
            <li>If <sourcexml>remotelink/@remotekey1="DOC-ID"</sourcexml>:<ul id="ul_lpt_ejz_ej">
                <li><targetxml>ref:key-value/@value</targetxml> is set to the the value of
                    <sourcexml>remotelink/@dpsi</sourcexml>, followed by a hyphen ("-"). Then it is
                  concatenated with the value of <sourcexml>remotelink/@remotekey2</sourcexml>. If
                  and only if <sourcexml>remotelink/@remotelink2</sourcexml> is <b>not</b> present,
                  use <sourcexml>remotelink/@refpt</sourcexml> instead.</li>
              </ul></li>
            <li>If <sourcexml>remotelink/@remotekey1="REFPTID"</sourcexml>:<ul id="ul_mpt_ejz_ej">
                <li><targetxml>ref:key-value/@value</targetxml> is set to the the value of
                    <sourcexml>remotelink/@dpsi</sourcexml>, followed by a hyphen ("-"). Then it is
                  concatenated with the value of <sourcexml>remotelink/@docidref</sourcexml>. If
                    <sourcexml>remotelink/@docidref</sourcexml> is not present when
                    <sourcexml>remotelink/@remotekey1="REFPTID"</sourcexml>, this is a data error
                  and the link is invalid. As a work-around, use the value "MISSINGDOCID" if the
                    <sourcexml>remotelink/@docidref</sourcexml> attribute is missing in this
                  context.</li>
              <li>The attribute <targetxml>ref:lnlink/ref:locator/@anchoridref</targetxml> is
                  set to the value of <sourcexml>remotelink/@refpt</sourcexml>. If and only if
                    <sourcexml>remotelink/@refpt</sourcexml> is <b>not</b> present, use
                    <sourcexml>remotelink/@remotelink2</sourcexml> instead. If this value begins
                  with a number, an underscore (_) is added to the front. Any colons (":") present
                  in the Rosetta source value are replaced with an underscore ("_") in the NewLexis
                  output value.</li>
              </ul>
            </li>
            <li>When creating the value for <targetxml>ref:key-value/@value</targetxml>: if
                <sourcexml>remotelink/@dpsi</sourcexml> is not present, the value from
                <sourcexml>docinfo:dpsi/@id-string</sourcexml> is used. If there is no
                <sourcexml>docinfo:dpsi/@id-string</sourcexml> value, the value from the LBU
              manifest file is captured and used.</li>
          </ul>
        </li>
        <li>If there is content between two <sourcexml>remotelink</sourcexml> elements such as: "-",
          "--" (dashes), "," (comma), ";" (semicolon), "|" (vertical bar), "and", or "to", along
          with optional white-space, this content is moved to an
            <targetxml>index:entry/connector</targetxml> element that is created between the two
            <targetxml>index:entry/index:locator</targetxml> elements. </li>
        <li>If there is content following all <sourcexml>remotelink</sourcexml> elements, this
          content is moved to an
            <targetxml>index:entry/inlinenote/[@notetype="reference-in-text"]</targetxml> element
          following the last <targetxml>index:entry/index:locator</targetxml> element, with all
          elements within this content converted as described in the <xref href="NavAidLandingPages_General.dita">General Mark-Up</xref> section.</li>
      </ul>
    </p>
    <section>
      <title>Changes</title>
      <p>2013-06-27: <ph id="change_20130627_JCG">changed instructions to specify that attribute <targetxml>ref:lnlink/@service="DOCUMENT"</targetxml> should be created in target XML</ph></p>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU16_navaid\navaid-separate-l.dita  -->
	<!--<xsl:message>navaid-separate-l.xsl requires manual development!</xsl:message> -->

	<xsl:template match="p[l]|table[tgroup/tbody/row/entry[l]]|table/tgroup[tbody/row/entry[l]]|
		table/tgroup/tbody[row/entry[l]]|table/tgroup/tbody/row/entry[l]|
		table/tgroup[tbody/row/entry/l]/colspec">
		<xsl:apply-templates select="node()"/>
	</xsl:template>
	
	<!-- |table/tgroup/tbody/row[entry[l]]|table/tgroup/tbody/row/entry[l] -->
	
	<xsl:template match="table/tgroup/tbody/row[entry[l]]">
		<xsl:for-each-group select="*" group-adjacent="if (self::entry) then 0 else 1">
			<xsl:choose>
				<xsl:when test="current-grouping-key()=0">
					<index:index indextype='topical'>
						<xsl:for-each select="current-group()/l">
							<xsl:apply-templates select="."/>
						</xsl:for-each>
					</index:index>
				</xsl:when>
			</xsl:choose>
		</xsl:for-each-group>
		
	</xsl:template>
	
	<xsl:template match="l[parent::entry][/INDEXDOC/docinfo/docinfo:doc-id[starts-with(., 'LAWNOW_LEG_TITLES_ACTS_') or starts-with(., 'LAWNOW_LEG_CURRENT_ACTS_') or 
		starts-with(., 'LAWNOW_LEG_REPEALED_ACTS_') or 
		starts-with(., 'LAWNOW_LEG_TITLES_SUBLEG_') or 
		starts-with(., 'LAWNOW_LEG_CURRENT_SUBLEG_') or 
		starts-with(., 'LAWNOW_LEG_REPEALED_SUBLEG_') or 
		starts-with(., 'LAWNOW_LEG_SUBJECT_ACTS_') or 
		starts-with(., 'LAWNOW_LEG_SUBJECT_SUBLEG_')]]" priority="25">
		<xsl:apply-templates select="node()"/>
	</xsl:template>
	
	
	<xsl:template match="l[parent::p][/INDEXDOC/docinfo/docinfo:doc-id[starts-with(., 'LAWNOW_LEG_TITLES_ACTS_') or starts-with(., 'LAWNOW_LEG_CURRENT_ACTS_') or 
		starts-with(., 'LAWNOW_LEG_REPEALED_ACTS_') or 
		starts-with(., 'LAWNOW_LEG_TITLES_SUBLEG_') or 
		starts-with(., 'LAWNOW_LEG_CURRENT_SUBLEG_') or 
		starts-with(., 'LAWNOW_LEG_REPEALED_SUBLEG_') or 
		starts-with(., 'LAWNOW_LEG_SUBJECT_ACTS_') or 
		starts-with(., 'LAWNOW_LEG_SUBJECT_SUBLEG_')]]" priority="25">

		<!--  Original Target XPath:  index:index   -->
		<index:index indextype='topical'>
			<xsl:apply-templates select="node()"/>
		</index:index>

	</xsl:template>

	<xsl:template match="l/li">

		<!--  Original Target XPath:  index:entry/index:entrytext   -->
		<index:item>
			<xsl:apply-templates select="@* | node()"/>
		</index:item>

	</xsl:template>

	<xsl:template match="l/li/lilabel[not(matches(., ' '))]">

		<!--  Original Target XPath:  index:entry/index:entrytext   -->
				<index:entrytext>
					<xsl:apply-templates select="@* | node()"/>
				</index:entrytext>

	</xsl:template>
	
	<xsl:template match="l/li/lilabel[matches(., 'Â ')]"/>

	<xsl:template match="p[parent::li]">
		<xsl:for-each select="text/remotelink|text/emph">
				<index:entry>
					<xsl:choose>
						<xsl:when test="self::remotelink">
							<index:locator>
								<ref:lnlink service='DOCUMENT'>
									<ref:marker><xsl:apply-templates select="node()"/></ref:marker>
									<ref:locator>
										<xsl:if test="@refpt">
											<xsl:attribute name="anchoridref" select="@refpt"/>
										</xsl:if>
										<ref:locator-key>
											<ref:key-name>
												<xsl:attribute name="name" select="@service"/>
											</ref:key-name>
											<ref:key-value>
												<xsl:attribute name="value">
													<xsl:choose>
														<xsl:when test="@dpsi">
															<xsl:value-of select="@dpsi"/>
														</xsl:when>
														<xsl:otherwise>
															<xsl:value-of select="$navaid-dpsi"/>
														</xsl:otherwise>
													</xsl:choose>
													<xsl:text>-</xsl:text>
													<xsl:choose>
														<xsl:when test="@remotekey2">
															<xsl:value-of select="@remotekey2"/>
														</xsl:when>
														<xsl:when test="@docidref">
															<xsl:value-of select="@docidref"/>
														</xsl:when>
														<xsl:otherwise>
															<xsl:text>XXXX</xsl:text>
														</xsl:otherwise>
													</xsl:choose>
												</xsl:attribute>
												
											</ref:key-value>
										</ref:locator-key>
									</ref:locator>
								</ref:lnlink>
							</index:locator>
						</xsl:when>
						<xsl:when test="self::emph">
							<meta xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
								<metaitem>
									<xsl:attribute name="name">
										<xsl:choose>
											<xsl:when test="@typestyle='hi'">nolink</xsl:when>
											<xsl:when test="@typestyle='ib'">active</xsl:when>
										</xsl:choose>
									</xsl:attribute>
									<xsl:attribute name="value">true</xsl:attribute>
								</metaitem>
							</meta>
							<index:entrytext><xsl:value-of select="node()"/></index:entrytext>
						</xsl:when>
					</xsl:choose>
				</index:entry>
			
		</xsl:for-each>
	</xsl:template>
	

</xsl:stylesheet>