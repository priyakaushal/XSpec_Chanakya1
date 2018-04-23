<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" xmlns:regulation="urn:x-lexisnexis:content:regulation:sharedservices:1" version="2.0" exclude-result-prefixes="dita docinfo">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Introduction">
       <title>Introduction <lnpid>id-ST04-26811</lnpid></title>
    <body>
        <p><u>This Conversion Instruction describes the conversion of the <sourcexml>Rosetta LEGDOC
                    DTD</sourcexml> to <targetxml>Regulation Schema (Version 7.2
                PROD)</targetxml>.</u></p>
        <section>
            <title>Root Element</title>
            <p>Identification Criteria for <b>Regulation</b> content stream is root element
                    <sourcexml>LEGDOC</sourcexml> comes with any following scenario: <ul>
                        <li>If documents having <sourcexml>LEGDOC@legtype["regulations" | "REGULATIONS"]</sourcexml>
                            (case-senstive).</li>
                    <li>If <sourcexml>docinfo:selector</sourcexml> having values as
                            <sourcexml>"REGULATIONS"</sourcexml> or
                            <sourcexml>"StatutoryInstrument"</sourcexml> (case-sensitive).</li>
                </ul></p>
            <p>
                <sourcexml>LEGDOC</sourcexml>
                <b>becomes</b>
                <targetxml>regulation:regulation</targetxml>. This is the root element for the
                regulation schema, attributes are populated as follows:</p>
            <p> If document contains <sourcexml>LEGDOC[@id]</sourcexml>
                <b>becomes</b>
                <targetxml>regulation:regulation[@xml:id]</targetxml> and provides a unique
                identifier for this document.</p>
            <p>Create <targetxml>regulation:regulation[@xml:lang]</targetxml> which is used to
                specify the language that is being used in the content/document. The presence or
                absence of attribute value will not affect delivery product behavior and default
                value is 'none'.</p>
            <p>
                <note>The country code value should be vary on the basis of Local Business
                    Unit.</note>
                <pre>
              <b><i>Source example based on CA content</i></b>


&lt;LEGDOC&gt;
	&lt;docinfo:doc-lang lang="en"/&gt;
	&lt;docinfo:doc-country iso-cc="CA"/&gt;
	...
&lt;/LEGDOC&gt;



	</pre>
                <pre>

              <b><i>Target Example</i></b>


&lt;regulation:regulation xml:lang="en-CA"&gt;
    ...
&lt;/regulation:regulation&gt;

                </pre>
                <pre>
              <b><i>Source example based on UK content</i></b>


&lt;LEGDOC&gt;
  ...
  &lt;docinfo:doc-lang lang="en"/&gt;
  &lt;docinfo:doc-country iso-cc="GB"/&gt;
  ...          
&lt;/LEGDOC&gt;



	</pre>
                <pre>

              <b><i>Target Example</i></b>


&lt;regulation:regulation xml:lang="en-GB"&gt;
  ...
&lt;/regulation:regulation&gt;


            </pre>
            </p>
            <p>
                <targetxml>regulation:head</targetxml>, <targetxml>regulation:body</targetxml>, and
                    <targetxml>doc:metadata</targetxml> are created as required children of
                    <targetxml>regulation:regulation</targetxml>. </p>
            <p>The <sourcexml>@searchtype</sourcexml> attribute will be dropped from conversion
                except for the citation element.</p>
        </section>
                
        <section>
                           <title>Notes</title>
                            <p>The following information is meant to help the user understand the conventions used in this document.</p>
                            <p>Source elements and attributes are highlighted like this: <sourcexml>XML SOURCE</sourcexml></p>
                            <p>Target elements and attributes are highlighted like this: <targetxml>XML TARGET</targetxml></p>
                            <p>Verify content of following target attributes: 
                                        <ul>
                                        <li><sourcexml>@year</sourcexml> becomes <targetxml>@year</targetxml> is 4 digits in length. Any other lengths, do not output <targetxml>@year</targetxml>.</li>
                                        <li><sourcexml>@month</sourcexml> becomes <targetxml>@month</targetxml> is between 01-12. Any numbers outside this range, do not output a <targetxml>@month</targetxml>.</li>
                                        <li><sourcexml>@day</sourcexml> becomes <targetxml>@day</targetxml> is between 01-31. Any numbers outside this range, do not output <targetxml>@day</targetxml>.</li>

                                        </ul>
                            </p>
        </section>
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-Standard\Regulation\Introduction.dita  -->
	<xsl:message>Regulation_Introduction.xsl requires manual development!</xsl:message> 

	<xsl:template match="Rosetta LEGDOC&#xA;                    DTD">

		<!--  Original Target XPath:  RegulationSchema(Version7.2PROD)   -->
		<!--  Could not determine target element or attribute name:  <RegulationSchema(Version7.2PROD)>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </RegulationSchema(Version7.2PROD)>  -->

	</xsl:template>

	<xsl:template match="LEGDOC">

		<!--  Original Target XPath:  regulation:regulation   -->
		<regulation:regulation>
			<xsl:apply-templates select="@* | node()"/>
		</regulation:regulation>

	</xsl:template>

	<xsl:template match="LEGDOC@legtype[&#34;regulations&#34; | &#34;REGULATIONS&#34;]">

		<!--  Original Target XPath:  regulation:regulation   -->
		<regulation:regulation>
			<xsl:apply-templates select="@* | node()"/>
		</regulation:regulation>

	</xsl:template>

	<xsl:template match="docinfo:selector">

		<!--  Original Target XPath:  regulation:regulation   -->
		<regulation:regulation>
			<xsl:apply-templates select="@* | node()"/>
		</regulation:regulation>

	</xsl:template>

	<xsl:template match="&#34;REGULATIONS&#34;">

		<!--  Original Target XPath:  regulation:regulation   -->
		<regulation:regulation>
			<xsl:apply-templates select="@* | node()"/>
		</regulation:regulation>

	</xsl:template>

	<xsl:template match="&#34;StatutoryInstrument&#34;">

		<!--  Original Target XPath:  regulation:regulation   -->
		<regulation:regulation>
			<xsl:apply-templates select="@* | node()"/>
		</regulation:regulation>

	</xsl:template>

	<xsl:template match="LEGDOC[@id]">

		<!--  Original Target XPath:  regulation:regulation[@xml:id]   -->
		<regulation:regulation>
			<xsl:apply-templates select="@* | node()"/>
		</regulation:regulation>

	</xsl:template>

	<xsl:template match="@searchtype">

		<!--  Original Target XPath:  XMLTARGET   -->
		<XMLTARGET>
			<xsl:apply-templates select="@* | node()"/>
		</XMLTARGET>

	</xsl:template>

	<xsl:template match="XML SOURCE">

		<!--  Original Target XPath:  XMLTARGET   -->
		<XMLTARGET>
			<xsl:apply-templates select="@* | node()"/>
		</XMLTARGET>

	</xsl:template>

	<xsl:template match="@year">

		<!--  Original Target XPath:  @year   -->
		<xsl:attribute name="year">
			<xsl:apply-templates select="node()"/>
		</xsl:attribute>

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

</xsl:stylesheet>