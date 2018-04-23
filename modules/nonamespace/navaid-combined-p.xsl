<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
	xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" 
	xmlns:index="urn:x-lexisnexis:content:publicationindex:sharedservices:1"
	xmlns:navaid="urn:x-lexisnexis:content:navigationaid:sharedservices:1" 
	xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/"
	version="2.0" exclude-result-prefixes="dita docinfo">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="navaid-combined-p">
      <title>Convert <sourcexml>p</sourcexml> to <targetxml>navaid:list</targetxml> <lnpid>id-AU16-21011</lnpid></title>
      <body>
        <p>The following rule is to be performed when the content of
            <sourcexml>docinfo:doc-id</sourcexml> starts with: <ul>
            <li>LAWNOW_LEG_TITLES_ACTS_</li>
            <li>LAWNOW_LEG_CURRENT_ACTS_</li>
            <li>LAWNOW_LEG_REPEALED_ACTS_</li>
            <li>LAWNOW_LEG_MADEASSENT_ACTS_</li>
            <li>LAWNOW_LEG_COMMENCEMENT_ACTS_</li>
            <li>LAWNOW_LEG_KEYWORDS_ACTS_</li>
            <li>LAWNOW_LEG_HISTORICALVERSIONS_ACTS_</li>
            <li>LAWNOW_LEG_TITLES_SUBLEG_</li>
            <li>LAWNOW_LEG_CURRENT_SUBLEG_</li>
            <li>LAWNOW_LEG_REPEALED_SUBLEG_</li>
            <li>LAWNOW_LEG_MADEASSENT_SUBLEG_</li>
            <li>LAWNOW_LEG_COMMENCEMENT_SUBLEG_</li>
            <li>LAWNOW_LEG_KEYWORDS_SUBLEG_</li>
            <li>LAWNOW_LEG_HISTORICALVERSIONS_SUBLEG_</li>
          </ul> Or when the element <sourcexml>docinfo:hierlev</sourcexml> has attribute
            <sourcexml>@role</sourcexml> equal to "ancestor-me", and subelement
            <sourcexml>docinfo:hierlev/heading/title</sourcexml> is equal to "Year and Number", and
          the content of <sourcexml>docinfo:doc-id</sourcexml> starts with: <ul>
            <li>LAWNOW_LEG_YEARNUMBER_ACTS_</li>
            <li>LAWNOW_LEG_YEARNUMBER_SUBLEG_</li>
          </ul>
        </p>

        <p>Within the first five non-blank <sourcexml>p</sourcexml> elements (not counting
            <sourcexml>p</sourcexml> elements containing only spaces) in these files, there will be
          one or two <sourcexml>p</sourcexml> elements (only one or two, no more) that contain a
          series of three (3) or more <sourcexml>remotelink</sourcexml> elements, most of which are
          separated by spaces and/or punctuation characters such as "," (common), ";" (semicolon),
          or "|" (vertical bar). There will also be a portion of text outside all
            <sourcexml>remotelink</sourcexml> elements but within in this <sourcexml>p</sourcexml>
          element that are separated by up to 7 non-space characters as well as spaces. These non-space characters may be contained within an <sourcexml>emph@typstyle="ib"</sourcexml> or <sourcexml>emph@typstyle="hi"</sourcexml> element. 
          The contents of this <sourcexml>p</sourcexml> becomes
            <targetxml>navaid:landingpagebody/navaid:list/[@style="banner"]</targetxml> as described
          in the subtopic <i>Convert Combined
              <sourcexml>remotelink</sourcexml> Elements To
            <targetxml>navaid:list</targetxml></i> below. </p>
    <p>There are a few files with a <sourcexml>p</sourcexml> element that match the criteria for
      this rule except that the <sourcexml>p</sourcexml> element contains between 0 and 2
        <sourcexml>remotelink</sourcexml> elements rather than the required three. If a
        <sourcexml>p</sourcexml> element has less than 3 <sourcexml>remotelink</sourcexml> elements
      but otherwise matches the criteria given here, and both of the following are also true: <ol>
        <li>the<sourcexml>p</sourcexml> element has an attribute of
            <sourcexml>p/@align="center"</sourcexml> and/or the child <sourcexml>p/text</sourcexml>
          element has such an attribute (<sourcexml>p/text/@align="center"</sourcexml>); and</li>
        <li>all of the PCDATA sequences within the <sourcexml>p</sourcexml> or its child elements
          consist of <b>only</b>: <ul>
            <li>white-space, or</li>
            <li>a month <b><u>abbreviation</u>, not full month names</b> ("Jan", "Feb", "Mar", up to
              "Dec"), or</li>
            <li>a <b>single digit</b> ("0", "1", "2", up to "9"), or </li>
            <li>a <b>single letter</b> ("A", "B", "C", up to "Z");</li>
          </ul></li>
      </ol> then this <sourcexml>p</sourcexml> element should also be converted as described here,
      even though it contains less than 3 <sourcexml>remotelink</sourcexml> elements or even no
        <sourcexml>remotelink</sourcexml> elements at all. For specific examples of these scenarios,
      please see the subtopic <xref href="navaid-combined-p-special-examples.dita">Examples of
          <sourcexml>p</sourcexml> with 2, 1 or 0 <sourcexml>remotelink</sourcexml> elements that
        should be converted to <targetxml>navaid:list/@style="banner"</targetxml></xref>.</p>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU16_navaid\navaid-combined-p.dita  -->
	<!-- p[../../docinfo[docinfo:doc-id=(tokenize($navaidCombinedP, ','))]] -->
	

	<xsl:template match="p[../../docinfo[(starts-with(docinfo:doc-id,'LAWNOW_LEG_HISTORICALVERSIONS_SUBLEG_') or 
		starts-with(docinfo:doc-id, 'LAWNOW_LEG_HISTORICALVERSIONS_ACTS') or
		starts-with(docinfo:doc-id,'LAWNOW_LEG_TITLES_ACTS_') or
		starts-with(docinfo:doc-id,'LAWNOW_LEG_CURRENT_ACTS_') or
		starts-with(docinfo:doc-id,'LAWNOW_LEG_REPEALED_ACTS_') or
		starts-with(docinfo:doc-id,'LAWNOW_LEG_MADEASSENT_ACTS_') or
		starts-with(docinfo:doc-id,'LAWNOW_LEG_COMMENCEMENT_ACTS_') or
		starts-with(docinfo:doc-id,'LAWNOW_LEG_KEYWORDS_ACTS_') or
		starts-with(docinfo:doc-id,'LAWNOW_LEG_TITLES_SUBLEG_') or
		starts-with(docinfo:doc-id,'LAWNOW_LEG_CURRENT_SUBLEG_') or
		starts-with(docinfo:doc-id,'LAWNOW_LEG_REPEALED_SUBLEG_') or
		starts-with(docinfo:doc-id,'LAWNOW_LEG_MADEASSENT_SUBLEG_') or
		starts-with(docinfo:doc-id,'LAWNOW_LEG_COMMENCEMENT_SUBLEG_') or
		starts-with(docinfo:doc-id,'LAWNOW_LEG_KEYWORDS_SUBLEG_')
		) 
		or 
		(../../docinfo/docinfo:hier/docinfo:hierlev[@role='ancestor-me']/heading[title='Year and Number'] and 
		../../docinfo/docinfo:doc-id[contains(., 'LAWNOW_LEG_YEARNUMBER_ACTS_') or contains(., 'LAWNOW_LEG_YEARNUMBER_SUBLEG_')]
		 )] and 
		 not(table) and
		 not(l) and 
		descendant::remotelink[(not(contains(., 'LawNow Home Page') or contains(., 'Back to Year List') or contains(., 'Back to Alphabet Listing') or 
		contains(., 'Back to Subject List')))]]" priority='1'>

		<!--  Original Target XPath:  navaid:list   -->
		<navaid:list style='banner'>
			<xsl:for-each select="text/remotelink|text/emph">
				<index:entry>
					<xsl:choose>
						<xsl:when test="self::remotelink">
							<index:locator>
								<ref:lnlink service='DOCUMENT'>
									<ref:marker><xsl:apply-templates select="node()"/></ref:marker>
									<ref:locator>
										<ref:locator-key>
											<ref:key-name>
												<xsl:attribute name="name" select="@service"/>
											</ref:key-name>
											<ref:key-value>
												<xsl:attribute name="value" select="concat($navaid-dpsi, '-', @remotekey2)"/>
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
		</navaid:list>

	</xsl:template>

	

</xsl:stylesheet>