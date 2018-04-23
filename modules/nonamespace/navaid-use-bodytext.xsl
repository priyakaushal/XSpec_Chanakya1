<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:index="urn:x-lexisnexis:content:publicationindex:sharedservices:1" xmlns:navaid="urn:x-lexisnexis:content:navigationaid:sharedservices:1" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="navaid-use-bodytext">
<title>Use <targetxml>bodytext</targetxml> To Contain Other Elements <lnpid>id-AU16-21028</lnpid></title>
<body>
  <p>If particular elements of a source document (a <sourcexml>p</sourcexml>,
	  <sourcexml>pgrp</sourcexml>, <sourcexml>table</sourcexml>, <sourcexml>l</sourcexml>, etc.)
	do not match any of the scenarios described in this section, then <b><u>a
		  <targetxml>navaid:landingpagebody/bodytext</targetxml> element should be opened if it
		is not already open</u></b>, and all such consecutive sibling elements are converted as
	described in the <xref href="NavAidLandingPages_General.dita">General Mark-Up</xref> section
	of these conversion instructions and placed within the opened
	  <targetxml>bodytext</targetxml>.</p>

  <p>According to the conversion instructions in this <b>Body</b> section, a
	  <targetxml>navaid:documentmenu</targetxml>, <targetxml>navaid:list</targetxml> or
	  <targetxml>index:index</targetxml> is created as a main structural container for the
	converted elements. Before opening these <targetxml>navaid:documentmenu</targetxml>,
	  <targetxml>navaid:list</targetxml> or <targetxml>index:index</targetxml> elements, if a
	  <targetxml>bodytext</targetxml> element has been opened to contain elements described in
	the previous paragraph and converted according to the conversion instructions in the <xref href="NavAidLandingPages_General.dita">General Mark-Up</xref> section, this
	  <targetxml>bodytext</targetxml> element should be closed. All
	  <targetxml>navaid:documentmenu</targetxml>, <targetxml>navaid:list</targetxml> and
	  <targetxml>index:index</targetxml> elements should be created only as direct children of
	  <targetxml>/navaid:landingpage/navaid:landingpagebody</targetxml>. </p>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU16_navaid\navaid-use-bodytext.dita  -->
	<!--<xsl:message>navaid-use-bodytext.xsl requires manual development!</xsl:message> -->

	<!--<xsl:template match="p">

		<!-\-  Original Target XPath:  navaid:landingpagebody/bodytext   -\->
		<navaid:landingpagebody>
			<bodytext>
				<xsl:apply-templates select="@* | node()"/>
			</bodytext>
		</navaid:landingpagebody>

	</xsl:template>

	<xsl:template match="pgrp">

		<!-\-  Original Target XPath:  navaid:landingpagebody/bodytext   -\->
		<navaid:landingpagebody>
			<bodytext>
				<xsl:apply-templates select="@* | node()"/>
			</bodytext>
		</navaid:landingpagebody>

	</xsl:template>

	<xsl:template match="table">

		<!-\-  Original Target XPath:  navaid:landingpagebody/bodytext   -\->
		<navaid:landingpagebody>
			<bodytext>
				<xsl:apply-templates select="@* | node()"/>
			</bodytext>
		</navaid:landingpagebody>

	</xsl:template>

	<xsl:template match="l">

		<!-\-  Original Target XPath:  navaid:landingpagebody/bodytext   -\->
		<navaid:landingpagebody>
			<bodytext>
				<xsl:apply-templates select="@* | node()"/>
			</bodytext>
		</navaid:landingpagebody>

	</xsl:template>
-->
</xsl:stylesheet>