<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" xmlns:navaid="urn:x-lexisnexis:content:navigationaid:sharedservices:1" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita docinfo">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="navaid-separate-levels">
        <title>Convert Multiple <sourcexml>level</sourcexml> Elements To Multiple
            <targetxml>navaid:list</targetxml> Elements <lnpid>id-NZ14-25209</lnpid></title>
        <body>
          <p>The following rule is to be performed when the content of
              <sourcexml>docinfo:doc-id</sourcexml> is equal to: <ul>
              <li>DEEMED-REGS-ARCHIVE-ALPHA</li>
            </ul>
          </p>

          <p>Each <b><u>nested</u></b>
            <sourcexml>level</sourcexml> element (XPath
              <sourcexml>/COMMMENTARYDOC/comm:body/level/level</sourcexml>) becomes
              <targetxml>navaid:landingpagebody/navaid:list/[@style="default"]</targetxml> as
            follows: <ul>
              <li>Create a
                  <targetxml>navaid:landingpagebody/navaid:list/[@style="default"]</targetxml>
              </li>
              <li>The <sourcexml>level/heading</sourcexml> element's start-tag and end-tag (but not
                its content) are dropped.</li>
              <li><sourcexml>level/heading/title</sourcexml> becomes
                  <targetxml>navaid:landingpagebody/navaid:list/title</targetxml>. The attributes of
                  <sourcexml>title</sourcexml> in this xpath are converted as described for the
                <xref href="../../common_newest/Rosetta_title-LxAdv-title.dita">common title element</xref>. All
                subelements are converted using the common element instructions for these elements
                provided in the <xref href="../AU16_navaid/NavAidLandingPages_General.dita">General Mark-Up</xref>
                section of these conversion instructions. However, if a
                  <sourcexml>level/heading/title/refpt</sourcexml> element occurs, the
                  <sourcexml>refpt</sourcexml> is not only converted to
                  <targetxml>ref:anchor</targetxml> as described for the <xref href="../../common_newest/Rosetta_refpt-LxAdv-ref.anchor.dita">common refpt element</xref>, but is
                also moved to just before
                  <targetxml>navaid:landingpagebody/navaid:list/title</targetxml> so that its XPath
                is <targetxml>navaid:landingpagebody/navaid:list/ref:anchor</targetxml>.</li>
              <li>If the <b>first</b>
                <sourcexml>bodytext/p</sourcexml> does <b>not</b> contain a
                  <sourcexml>remotelink</sourcexml> element, it should be converted to
                  <targetxml>navaid:landingpagebody/navaid:list/note</targetxml> as follows: <ul>
                  <li>Create <targetxml>navaid:landingpagebody/navaid:list/note</targetxml> and
                    child
                    <targetxml>navaid:landingpagebody/navaid:list/note/bodytext</targetxml>.</li>
                  <li><sourcexml>bodytext/p</sourcexml> becomes
                      <targetxml>navaid:landingpagebody/navaid:list/note/bodytext/p</targetxml>. The
                    attributes of <sourcexml>p</sourcexml> in this xpath are converted as described
                    for the <xref href="../../common_newest/Rosetta_p-LxAdv-p.dita">common p element</xref>.
                    All subelements are converted using the common element instructions for these
                    elements provided in the <xref href="../AU16_navaid/NavAidLandingPages_General.dita">General
                      Mark-Up</xref> section of these conversion instructions. </li>
                </ul>
              </li>
              <li>Convert the remaining series of <sourcexml>p</sourcexml> elements as specified by
                the instructions above in the <xref href="../AU16_navaid/navaid-separate-p.dita">Convert a series of
                    <sourcexml>p</sourcexml> elements to <targetxml>navaid:list</targetxml></xref>
                subtopic.</li>
            </ul>
          </p>
          <note>Only the <b><u>nested</u></b>
            <sourcexml>level</sourcexml> elements (XPath
              <sourcexml>/COMMMENTARYDOC/comm:body/level/level</sourcexml>) are converted in the way
            described by this rule. The <b><u>top</u></b>
            <sourcexml>level</sourcexml> element (XPath
              <sourcexml>/COMMMENTARYDOC/comm:body/level</sourcexml>) always has its start-tag and
            end-tag (but not its content) dropped as described in the <xref href="NavAidLandingPages_Introduction_NZ.dita">Introduction</xref> section.</note>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\NZ14_navaid\navaid-separate-levels_NZ.dita  -->
	<xsl:message>navaid-separate-levels_NZ.xsl requires manual development!</xsl:message> 

	<xsl:template match="level">

		<!--  Original Target XPath:  navaid:list   -->
		<navaid:list>
			<xsl:apply-templates select="@* | node()"/>
		</navaid:list>

	</xsl:template>

	<xsl:template match="docinfo:doc-id">

		<!--  Original Target XPath:  navaid:landingpagebody/navaid:list/[@style="default"]   -->
		<navaid:landingpagebody>
			<navaid:list>
				<!--  Could not determine target element or attribute name:  <[@style="default"]>  -->					<xsl:apply-templates select="@* | node()"/>
				<!--  Could not determine target element or attribute name:  </[@style="default"]>  -->
			</navaid:list>
		</navaid:landingpagebody>

	</xsl:template>

	<xsl:template match="/COMMMENTARYDOC/comm:body/level/level">

		<!--  Original Target XPath:  navaid:landingpagebody/navaid:list/[@style="default"]   -->
		<navaid:landingpagebody>
			<navaid:list>
				<!--  Could not determine target element or attribute name:  <[@style="default"]>  -->					<xsl:apply-templates select="@* | node()"/>
				<!--  Could not determine target element or attribute name:  </[@style="default"]>  -->
			</navaid:list>
		</navaid:landingpagebody>

	</xsl:template>

	<xsl:template match="level/heading">

		<!--  Original Target XPath:  navaid:landingpagebody/navaid:list/title   -->
		<navaid:landingpagebody>
			<navaid:list>
				<title>
					<xsl:apply-templates select="@* | node()"/>
				</title>
			</navaid:list>
		</navaid:landingpagebody>

	</xsl:template>

	<xsl:template match="level/heading/title">

		<!--  Original Target XPath:  navaid:landingpagebody/navaid:list/title   -->
		<navaid:landingpagebody>
			<navaid:list>
				<title>
					<xsl:apply-templates select="@* | node()"/>
				</title>
			</navaid:list>
		</navaid:landingpagebody>

	</xsl:template>

	<xsl:template match="title">

		<!--  Original Target XPath:  ref:anchor   -->
		<ref:anchor>
			<xsl:apply-templates select="@* | node()"/>
		</ref:anchor>

	</xsl:template>

	<xsl:template match="level/heading/title/refpt">

		<!--  Original Target XPath:  ref:anchor   -->
		<ref:anchor>
			<xsl:apply-templates select="@* | node()"/>
		</ref:anchor>

	</xsl:template>

	<xsl:template match="refpt">

		<!--  Original Target XPath:  ref:anchor   -->
		<ref:anchor>
			<xsl:apply-templates select="@* | node()"/>
		</ref:anchor>

	</xsl:template>

	<xsl:template match="bodytext/p">

		<!--  Original Target XPath:  navaid:landingpagebody/navaid:list/note   -->
		<navaid:landingpagebody>
			<navaid:list>
				<note>
					<xsl:apply-templates select="@* | node()"/>
				</note>
			</navaid:list>
		</navaid:landingpagebody>

	</xsl:template>

	<xsl:template match="remotelink">

		<!--  Original Target XPath:  navaid:landingpagebody/navaid:list/note   -->
		<navaid:landingpagebody>
			<navaid:list>
				<note>
					<xsl:apply-templates select="@* | node()"/>
				</note>
			</navaid:list>
		</navaid:landingpagebody>

	</xsl:template>

	<xsl:template match="p">

		<!--  Original Target XPath:  navaid:list   -->
		<navaid:list>
			<xsl:apply-templates select="@* | node()"/>
		</navaid:list>

	</xsl:template>

	<xsl:template match="/COMMMENTARYDOC/comm:body/level">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

</xsl:stylesheet>