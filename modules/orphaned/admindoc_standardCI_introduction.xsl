<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:admindoc="urn:x-lexisnexis:content:administrative-document:sharedservices:1" xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="admindoc_standardCI_introduction">
    <title>Introduction <lnpid>id-ST08-31611</lnpid></title>
    <body>
        <p><u>This Conversion Instruction describes the conversion of the <b>LEGDOC DTD</b> to
                    <b>Admindoc 3.9 Prod Schema</b>.</u></p>
        <note>Individual Conversion Instructions will have rules for mapping specific
                <sourcexml>@legtype</sourcexml> values and, if applicable, for using the values to
            identify documents for the data set. The instructions below are adapted from a New
            Zealand data stream.</note>
        <section><title>Root Element</title>
            <p>Identification Criteria for NZ12 Regulatory Materials from Services:
                    <sourcexml>LEGDOC[@legtype="leg-inst | misc-inst"]</sourcexml>.</p>
            <p><sourcexml>LEGDOC</sourcexml> becomes <targetxml>admindoc:admindoc</targetxml>.
                Create <targetxml>admindoc:head</targetxml>, <targetxml>admindoc:body</targetxml>
                and <targetxml>doc:metadata</targetxml> as required children of
                    <targetxml>admindoc:admindoc</targetxml>.</p>
            <p>Attributes are as follows: <ul>
                    <li><sourcexml>LEGDOC[@id]</sourcexml> becomes
                            <targetxml>admindoc:admindoc[@xml:id]</targetxml>. The attribute is
                        optional.</li>
                    <li>Create
                            <targetxml>admindoc:admindoc@admindoctype="agency-material"</targetxml>.
                        This is hard-coded.</li>
                    <li><sourcexml>LEGDOC[@legtype]</sourcexml> value is translated and mapped as
                        follows: <ul>
                            <li><sourcexml>leg-inst</sourcexml> translates to
                                    <targetxml>legislative-instrument</targetxml></li>
                            <li><sourcexml>misc-inst</sourcexml> translates to
                                    <targetxml>miscellaneous-instrument</targetxml></li>
                        </ul>
                        <b> and becomes</b>
                        <targetxml>admindoc:admindoc/doc:metadata/doc:docinfo/classify:classification@classscheme/classify:classitem/classify:classitem-identifier/classify:classname</targetxml>.</li>
                </ul></p>
            <pre>
                    <b><i>Source XML</i></b>

&lt;LEGDOC legtype="leg-inst"&gt;
 ...
&lt;/LEGDOC&gt;

                </pre>
            <pre>
                    <b><i>Target XML</i></b>


&lt;admindoc:admindoc admindoctype="agency-material"&gt;
 &lt;admindoc:head&gt;...&lt;/admindoc:head&gt;
 &lt;admindoc:body&gt;...&lt;/admindoc:body&gt;
 &lt;doc:metadata&gt;
  &lt;doc:docinfo&gt;
   &lt;classify:classification classscheme="nz.admindoctype"&gt;
	&lt;classify:classitem&gt;
	 &lt;classify:classitem-identifier&gt;
	  &lt;classify:classname&gt;legislative-instrument&lt;/classify:classname&gt;
	 &lt;/classify:classitem-identifier&gt;
	&lt;/classify:classitem&gt;
   &lt;/classify:classification&gt;
  &lt;/doc:docinfo&gt;
 &lt;/doc:metadata&gt;
&lt;/admindoc:admindoc&gt;

            </pre>
            <p>The <sourcexml>@searchtype</sourcexml> attribute will be dropped from conversion
                except for the citation element.</p>
        </section>
        <section>
            <title>Notes</title>
            <p>The following information is meant to help the user understand the conventions used
                in this document.</p>
            <p>Source elements and attributes are highlighted like this: <sourcexml>XML
                    SOURCE</sourcexml></p>
            <p>Target elements and attributes are highlighted like this: <targetxml>XML
                    TARGET</targetxml></p>
            <p>Verify content of following target attributes: <ul>
                    <li><sourcexml>@year</sourcexml> becomes <targetxml>@year</targetxml> is 4
                        digits in length. Any other lengths, do not output
                            <targetxml>@year</targetxml>.</li>
                    <li><sourcexml>@month</sourcexml> becomes <targetxml>@month</targetxml> is
                        between 01-12. Any numbers outside this range, do not output a
                            <targetxml>@month</targetxml>.</li>
                    <li><sourcexml>@day</sourcexml> becomes <targetxml>@day</targetxml> is between
                        01-31. Any numbers outside this range, do not output
                            <targetxml>@day</targetxml>.</li>
                </ul>
            </p>
        </section>
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-Standard\Admindoc\admindoc_standardCI_introduction.dita  -->
	<xsl:message>admindoc_standardCI_introduction.xsl requires manual development!</xsl:message> 

	<xsl:template match="@legtype">

		<!--  Original Target XPath:  admindoc:admindoc   -->
		<admindoc:admindoc>
			<xsl:apply-templates select="@* | node()"/>
		</admindoc:admindoc>

	</xsl:template>

	<xsl:template match="LEGDOC[@legtype=&#34;leg-inst | misc-inst&#34;]">

		<!--  Original Target XPath:  admindoc:admindoc   -->
		<admindoc:admindoc>
			<xsl:apply-templates select="@* | node()"/>
		</admindoc:admindoc>

	</xsl:template>

	<xsl:template match="LEGDOC">

		<!--  Original Target XPath:  admindoc:admindoc   -->
		<admindoc:admindoc>
			<xsl:apply-templates select="@* | node()"/>
		</admindoc:admindoc>

	</xsl:template>

	<xsl:template match="LEGDOC[@id]">

		<!--  Original Target XPath:  admindoc:admindoc[@xml:id]   -->
		<admindoc:admindoc>
			<xsl:apply-templates select="@* | node()"/>
		</admindoc:admindoc>

	</xsl:template>

	<xsl:template match="LEGDOC[@legtype]">

		<!--  Original Target XPath:  legislative-instrument   -->
		<legislative-instrument>
			<xsl:apply-templates select="@* | node()"/>
		</legislative-instrument>

	</xsl:template>

	<xsl:template match="leg-inst">

		<!--  Original Target XPath:  legislative-instrument   -->
		<legislative-instrument>
			<xsl:apply-templates select="@* | node()"/>
		</legislative-instrument>

	</xsl:template>

	<xsl:template match="misc-inst">

		<!--  Original Target XPath:  miscellaneous-instrument   -->
		<miscellaneous-instrument>
			<xsl:apply-templates select="@* | node()"/>
		</miscellaneous-instrument>

	</xsl:template>

	<xsl:template match="@searchtype">

		<!--  Original Target XPath:  XMLTARGET   -->
		<XMLTARGET>
			<xsl:apply-templates select="@* | node()"/>
		</XMLTARGET>

	</xsl:template>

	<xsl:template match="XML&#xA;                    SOURCE">

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