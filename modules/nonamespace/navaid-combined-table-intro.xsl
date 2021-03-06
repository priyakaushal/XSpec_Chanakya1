<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:navaid="urn:x-lexisnexis:content:navigationaid:sharedservices:1" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="navaid-combined-table1">
	<title>Convert <sourcexml>table</sourcexml> to
		<targetxml>navaid:list</targetxml> <lnpid>id-AU16-21012</lnpid></title>
	<body>
		<p>In certain files, the first, second or third <sourcexml>table</sourcexml> will become a
		<targetxml>navaid:list</targetxml>. Which table to convert depends on specific criteria specified in the subtopics below this topic. These subtopics also each provide an example.</p>
    <p>Regardless of whether it is the first, second, or third <sourcexml>table</sourcexml> that is converted (decided by the criteria given in the subtopics below), the table will contain a single <sourcexml>tgroup</sourcexml>
			where <sourcexml>tgroup/[@cols="1"]</sourcexml>. This <sourcexml>tgroup</sourcexml> contains a single <sourcexml>row</sourcexml>, that in turn contains a single <sourcexml>entry</sourcexml>.</p>
      <p>The <sourcexml>entry</sourcexml> <b>usually</b> contains a series of at least 3
				<sourcexml>remotelink</sourcexml> elements all except two of which are separated by
			spaces, punctuation (comma ",", semicolon ";", vertical bar "|") or <sourcexml>&amp;nbsp;</sourcexml> character entities. There will be two <sourcexml>remotelink</sourcexml> elements that are separated by
			up to 7 non-space characters as well as spaces. These non-space characters may be contained within an <sourcexml>emph@typstyle="ib"</sourcexml> or <sourcexml>emph@typstyle="hi"</sourcexml>. </p>
    <p>There are a few files with a table that matches the criteria for this rule except that the
        <sourcexml>entry</sourcexml> contains between 0 and 2 <sourcexml>remotelink</sourcexml>
      elements rather than the required three. If the <sourcexml>entry</sourcexml> element has less
      than 3 <sourcexml>remotelink</sourcexml> elements but otherwise matches the criteria given
      here, and both of the following are true: <ol>
        <li><sourcexml>entry/@align="center"</sourcexml>; and</li>
        <li>all of the PCDATA sequences within the <sourcexml>entry</sourcexml> or its child
          elements consist of <b>only</b>: <ul>
            <li>white-space, or</li>
            <li>a month <b><u>abbreviation</u>, not full month names</b> ("Jan", "Feb", "Mar", up to
              "Dec"), or</li>
            <li>a <b>single digit</b> ("0", "1", "2", up to "9"), or </li>
            <li>a <b>single letter</b> ("A", "B", "C", up to "Z");</li>
          </ul></li>
      </ol> then this <sourcexml>entry</sourcexml> element should also be converted as described
      here, even though the <sourcexml>entry</sourcexml> contains less than 3
        <sourcexml>remotelink</sourcexml> elements or even no <sourcexml>remotelink</sourcexml>
      elements at all. For specific examples of these scenarios, please see the subtopic <xref href="navaid-combined-table-special-examples.dita">Examples of tables with 2, 1 or 0
          <sourcexml>remotelink</sourcexml> elements that should be converted to
          <targetxml>navaid:list/@style="banner"</targetxml></xref>.</p>
		<p>Within these <sourcexml>table</sourcexml> elements, only the <sourcexml>entry</sourcexml>
			content is converted. All other start-tags and end-tags (such as for
				<sourcexml>table</sourcexml>, <sourcexml>tgroup</sourcexml>,
				<sourcexml>colspec</sourcexml>, and <sourcexml>tbody</sourcexml>) are dropped. The
			contents of the <sourcexml>entry</sourcexml> is converted to
				<targetxml>navaid:landingpagebody/navaid:list/[@style="banner"]</targetxml> as described
			in the subtopic <xref href="navaid-combined-details.dita">Convert Combined
					<sourcexml>remotelink</sourcexml> Elements To
				<targetxml>navaid:list</targetxml></xref> below. </p>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU16_navaid\navaid-combined-table-intro.dita  -->
	<!--<xsl:message>navaid-combined-table-intro.xsl requires manual development!</xsl:message> -->

<!--	<xsl:template match="table">
		<table>
			<xsl:apply-templates select="@* | node()"/>
		</table>
	</xsl:template>-->
	
	

	<!--<xsl:template match="table">

		<!-\-  Original Target XPath:  navaid:list   -\->
		<navaid:list>
			<xsl:apply-templates select="@* | node()"/>
		</navaid:list>

	</xsl:template>

	<xsl:template match="tgroup">

		<!-\-  Original Target XPath:  navaid:list/@style="banner"   -\->
		<navaid:list>
			<xsl:attribute name="style">
				<xsl:text>banner</xsl:text>
			</xsl:attribute>
		</navaid:list>

	</xsl:template>

	<xsl:template match="tgroup/[@cols=&#34;1&#34;]">

		<!-\-  Original Target XPath:  navaid:list/@style="banner"   -\->
		<navaid:list>
			<xsl:attribute name="style">
				<xsl:text>banner</xsl:text>
			</xsl:attribute>
		</navaid:list>

	</xsl:template>

	<xsl:template match="row">

		<!-\-  Original Target XPath:  navaid:list/@style="banner"   -\->
		<navaid:list>
			<xsl:attribute name="style">
				<xsl:text>banner</xsl:text>
			</xsl:attribute>
		</navaid:list>

	</xsl:template>

	<xsl:template match="entry">

		<!-\-  Original Target XPath:  navaid:list/@style="banner"   -\->
		<navaid:list>
			<xsl:attribute name="style">
				<xsl:text>banner</xsl:text>
			</xsl:attribute>
		</navaid:list>

	</xsl:template>

	<xsl:template match="remotelink">

		<!-\-  Original Target XPath:  navaid:list/@style="banner"   -\->
		<navaid:list>
			<xsl:attribute name="style">
				<xsl:text>banner</xsl:text>
			</xsl:attribute>
		</navaid:list>

	</xsl:template>

	<xsl:template match="&amp;nbsp;">

		<!-\-  Original Target XPath:  navaid:list/@style="banner"   -\->
		<navaid:list>
			<xsl:attribute name="style">
				<xsl:text>banner</xsl:text>
			</xsl:attribute>
		</navaid:list>

	</xsl:template>

	<xsl:template match="emph@typstyle=&#34;ib&#34;">

		<!-\-  Original Target XPath:  navaid:list/@style="banner"   -\->
		<navaid:list>
			<xsl:attribute name="style">
				<xsl:text>banner</xsl:text>
			</xsl:attribute>
		</navaid:list>

	</xsl:template>

	<xsl:template match="emph@typstyle=&#34;hi&#34;">

		<!-\-  Original Target XPath:  navaid:list/@style="banner"   -\->
		<navaid:list>
			<xsl:attribute name="style">
				<xsl:text>banner</xsl:text>
			</xsl:attribute>
		</navaid:list>

	</xsl:template>

	<xsl:template match="entry/@align=&#34;center&#34;">

		<!-\-  Original Target XPath:  navaid:list/@style="banner"   -\->
		<navaid:list>
			<xsl:attribute name="style">
				<xsl:text>banner</xsl:text>
			</xsl:attribute>
		</navaid:list>

	</xsl:template>

	<xsl:template match="colspec">

		<!-\-  Original Target XPath:  navaid:landingpagebody/navaid:list/[@style="banner"]   -\->
		<navaid:landingpagebody>
			<navaid:list>
				<!-\-  Could not determine target element or attribute name:  <[@style="banner"]>  -\->					<xsl:apply-templates select="@* | node()"/>
				<!-\-  Could not determine target element or attribute name:  </[@style="banner"]>  -\->
			</navaid:list>
		</navaid:landingpagebody>

	</xsl:template>

	<xsl:template match="tbody">

		<!-\-  Original Target XPath:  navaid:landingpagebody/navaid:list/[@style="banner"]   -\->
		<navaid:landingpagebody>
			<navaid:list>
				<!-\-  Could not determine target element or attribute name:  <[@style="banner"]>  -\->					<xsl:apply-templates select="@* | node()"/>
				<!-\-  Could not determine target element or attribute name:  </[@style="banner"]>  -\->
			</navaid:list>
		</navaid:landingpagebody>

	</xsl:template>-->

</xsl:stylesheet>