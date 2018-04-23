<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" xmlns:casedigest="http://www.lexisnexis.com/xmlschemas/content/legal/case-digest/1/" xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" version="2.0" exclude-result-prefixes="dita docinfo">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="CaseSummaries_Introduction">
  <title>Introduction <lnpid>id-IN08-38208</lnpid></title>
  <body>
    <p>This Conversion Instruction describes the conversion of  Digest (casedigest 8.7 PROD) schema
      in the document.</p>
    
    <p>IN Digest are identified using the root element <sourcexml>DIGESTDOC</sourcexml>, the value
      of <sourcexml>docinfo:doc-country/@iso-cc="IN"</sourcexml> and the value of
        <sourcexml>docinfo:selector</sourcexml> should be "DIGEST".</p>
    
    <p>The root element <sourcexml>DIGESTDOC</sourcexml> becomes <targetxml>casedigest:casedigest</targetxml>. </p>
    
    <p>
      <targetxml>casedigest:head</targetxml>, <targetxml>casedigest:body</targetxml>, and
      <targetxml>doc:metadata</targetxml> are created as required children of
      <targetxml>casedigest:casedigest</targetxml>
    </p>
    
    <note>Please note that the conversion needs to create an empty <targetxml>casedigest:head</targetxml> though we are not populating it.</note>
    
<pre>
&lt;DIGESTDOC&gt;
<b>Becomes</b>
&lt;casedigest:casedigest&gt;
  &lt;casedigest:head&gt;...&lt;/casedigest:head&gt;
  &lt;casedigest:body&gt;...&lt;/casedigest:body&gt;
  &lt;doc:metadata&gt;...&lt;/doc:metadata&gt;
&lt;/casedigest:casedigest&gt;
</pre>
    
    <section>
      <title>Notes</title>
      <p>Source elements and attributes are highlighted like this:
        <sourcexml>sourcexml</sourcexml></p>
      <p>Target elements and attributes are highlighted like this:
        <targetxml>targetxml</targetxml></p>
      <p>Verify content of following target attributes: <ul>
        <li><sourcexml>@month</sourcexml> becomes <targetxml>@month</targetxml> is
          between 01-12. Any numbers outside this range, do not output a
          <targetxml>@month</targetxml>.</li>
        
        <li><sourcexml>@day</sourcexml> becomes <targetxml>@day</targetxml> is between
          01-31. Any numbers outside this range, do not output
          <targetxml>@day</targetxml>.</li>
        
        <li><sourcexml>@year</sourcexml> becomes <targetxml>@year</targetxml> is 4
          digits in length. Any other lengths, do not output
          <targetxml>@year</targetxml>.</li>
      </ul>
      </p>
    </section>
    <section>
      <title>Created</title>
      <p>2016-06-14</p>
    </section>    
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-IN\IN08-Digest\Introduction.dita  -->
	<xsl:message>IN08-Digest_Introduction.xsl requires manual development!</xsl:message> 

	<xsl:template match="DIGESTDOC">

		<!--  Original Target XPath:  casedigest:casedigest   -->
		<casedigest:casedigest>
			<xsl:apply-templates select="@* | node()"/>
		</casedigest:casedigest>

	</xsl:template>

	<xsl:template match="docinfo:doc-country/@iso-cc=&#34;IN&#34;">

		<!--  Original Target XPath:  casedigest:casedigest   -->
		<casedigest:casedigest>
			<xsl:apply-templates select="@* | node()"/>
		</casedigest:casedigest>

	</xsl:template>

	<xsl:template match="docinfo:selector">

		<!--  Original Target XPath:  casedigest:casedigest   -->
		<casedigest:casedigest>
			<xsl:apply-templates select="@* | node()"/>
		</casedigest:casedigest>

	</xsl:template>

	<xsl:template match="sourcexml">

		<!--  Original Target XPath:  targetxml   -->
		<targetxml>
			<xsl:apply-templates select="@* | node()"/>
		</targetxml>

	</xsl:template>

	<xsl:template match="@month">

		<!--  Original Target XPath:  @month   -->
		<xsl:attribute name="month">
			<xsl:apply-templates select="node()"/>
		</xsl:attribute>

	</xsl:template>

	<xsl:template match="@day">

		<!--  Original Target XPath:  @day   -->
		<xsl:attribute name="day">
			<xsl:apply-templates select="node()"/>
		</xsl:attribute>

	</xsl:template>

	<xsl:template match="@year">

		<!--  Original Target XPath:  @year   -->
		<xsl:attribute name="year">
			<xsl:apply-templates select="node()"/>
		</xsl:attribute>

	</xsl:template>

</xsl:stylesheet>