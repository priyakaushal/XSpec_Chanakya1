<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" xmlns:legis="http://www.lexisnexis.com/xmlschemas/content/legal/legislation/1/" version="2.0" exclude-result-prefixes="dita docinfo">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="legis-Introduction">
    <title>Introduction <lnpid>id-ST03-26612</lnpid></title>
    <shortdesc>This Conversion Instruction describes the conversion of legis 8.3 PROD schema in the document.</shortdesc>
    <prolog>
        <metadata>
            <prodinfo>
                <prodname><keyword>Legislation</keyword></prodname>
                <vrmlist>
                    <vrm version="8.3 PROD"/>
                </vrmlist>
            </prodinfo>
        </metadata>
    </prolog>
    <body>
        <section><title>Root Element</title>
            <p><sourcexml>LEGDOC</sourcexml> becomes <targetxml>legis:legis</targetxml> and is the root element for legislation.
                <ul>
                    <li>If input source document has <sourcexml>LEGDOC[@legtype]</sourcexml> it becomes <targetxml>legis:legis[@legistype]</targetxml></li>
                    <li>If input source document does not have attribute <sourcexml>@legtype</sourcexml> then conversion needs to create the attribute <targetxml>@legistype</targetxml> in <targetxml>legis:legis</targetxml> root element. <targetxml>legis:legis/@legistype</targetxml> will have the value of <sourcexml>docinfo:selector</sourcexml>.
                        These are <targetxml>legis:legis/@legistype</targetxml> possible values:
                        <ul>
                            <li>If <sourcexml>docinfo:selector</sourcexml> value is <b>Act</b> then <targetxml>legis:legis[@legistype="act"]</targetxml></li>
                            <li>If <sourcexml>docinfo:selector</sourcexml> value is <b>Bill</b> then <targetxml>legis:legis[@legistype="bill"]</targetxml></li>
                            <li>If <sourcexml>docinfo:selector</sourcexml> value is <b>Measure</b> then <targetxml>legis:legis[@legistype="measure"]</targetxml></li>
                        </ul>
                    </li>
                    <li>If input source document has <sourcexml>LEGDOC[@id]</sourcexml> it becomes <targetxml>legis:legis[@xml:id]</targetxml></li>
                </ul>
<pre>
<b>Example 1:</b>

&lt;LEGDOC ...&gt;
 &lt;!-- ETC. --&gt;
  &lt;docinfo:selector&gt;Act&lt;/docinfo:selector&gt;
 &lt;!-- ETC. --&gt;
&lt;/LEGDOC&gt;
<b>Becomes</b>

&lt;legis:legis legistype="act"&gt;
 &lt;!-- ETC. --&gt;
&lt;/legis:legis&gt;
</pre>
<pre>
<b>Example 2:</b>

&lt;LEGDOC id="VIC_ACT_1998-25" legtype="act"&gt;
 &lt;!-- ETC. --&gt;
&lt;/LEGDOC&gt;
<b>Becomes</b>

&lt;legis:legis xml:id="VIC_ACT_1998-25" legistype="act"&gt;
 &lt;!-- ETC. --&gt;
&lt;/legis:legis&gt;
</pre>

            </p>
            
            <p><targetxml>legis:head</targetxml>, <targetxml>legis:body</targetxml>, and <targetxml>doc:metadata</targetxml> are created as required children of <targetxml>legis:legis</targetxml></p>
            
            <p>The <sourcexml>@searchtype</sourcexml> attribute will be suppressed from conversion except for the citation element.</p>
            
            <note>Retain instances of <sourcexml>emph</sourcexml> which occur within <sourcexml>title</sourcexml> or <sourcexml>subtitle</sourcexml> with the values <sourcexml>emph/@typestyle="it"</sourcexml> or <sourcexml>emph/@typestyle="un"</sourcexml>; otherwise and all other instances of <sourcexml>emph</sourcexml> shall be omitted from the NL conversion.</note>
        </section>
        <section>
            <title>Notes</title>
            <p>The following information is meant to help the user understand the conventions used in this document.</p>
            <p>Source elements and attributes are highlighted like this: <sourcexml>XML SOURCE</sourcexml></p>
            <p>Target elements and attributes are highlighted like this: <targetxml>XML TARGET</targetxml></p>
            <p>Verify content of following target attributes:
                <ul>
                    <li><sourcexml>@month</sourcexml> becomes <targetxml>@month</targetxml> is between 01-12. Any numbers outside this range, do not output a <targetxml>@month</targetxml>.</li>
                    <li><sourcexml>@day</sourcexml> becomes <targetxml>@day</targetxml> is between 01-31. Any numbers outside this range, do not output <targetxml>@day</targetxml>.</li>
                    <li><sourcexml>@year</sourcexml> becomes <targetxml>@year</targetxml> is 4 digits in length. Any other lengths, do not output <targetxml>@year</targetxml>.</li>
                </ul>
            </p>
        </section>
        <section>
            <title>Changes</title>
            <p>2013-07-16: <ph id="change_20130716_SK">Instruction narrative edited for language; no changes to mappings, no impact to stylesheets.</ph></p>
            
        </section>
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-Standard\Legislation\legis-Introduction.dita  -->
	<xsl:message>legis-Introduction.xsl requires manual development!</xsl:message> 

	<xsl:template match="LEGDOC">

		<!--  Original Target XPath:  legis:legis   -->
		<legis:legis>
			<xsl:apply-templates select="@* | node()"/>
		</legis:legis>

	</xsl:template>

	<xsl:template match="LEGDOC[@legtype]">

		<!--  Original Target XPath:  legis:legis[@legistype]   -->
		<legis:legis>
			<xsl:apply-templates select="@* | node()"/>
		</legis:legis>

	</xsl:template>

	<xsl:template match="@legtype">

		<!--  Original Target XPath:  @legistype   -->
		<xsl:attribute name="legistype">
			<xsl:apply-templates select="node()"/>
		</xsl:attribute>

	</xsl:template>

	<xsl:template match="docinfo:selector">

		<!--  Original Target XPath:  legis:legis/@legistype   -->
		<legis:legis>
			<xsl:attribute name="legistype">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</legis:legis>

	</xsl:template>

	<xsl:template match="LEGDOC[@id]">

		<!--  Original Target XPath:  legis:legis[@xml:id]   -->
		<legis:legis>
			<xsl:apply-templates select="@* | node()"/>
		</legis:legis>

	</xsl:template>

	<xsl:template match="@searchtype">

		<!--  Original Target XPath:  XMLTARGET   -->
		<XMLTARGET>
			<xsl:apply-templates select="@* | node()"/>
		</XMLTARGET>

	</xsl:template>

	<xsl:template match="emph">

		<!--  Original Target XPath:  XMLTARGET   -->
		<XMLTARGET>
			<xsl:apply-templates select="@* | node()"/>
		</XMLTARGET>

	</xsl:template>

	<xsl:template match="title">

		<!--  Original Target XPath:  XMLTARGET   -->
		<XMLTARGET>
			<xsl:apply-templates select="@* | node()"/>
		</XMLTARGET>

	</xsl:template>

	<xsl:template match="subtitle">

		<!--  Original Target XPath:  XMLTARGET   -->
		<XMLTARGET>
			<xsl:apply-templates select="@* | node()"/>
		</XMLTARGET>

	</xsl:template>

	<xsl:template match="emph/@typestyle=&#34;it&#34;">

		<!--  Original Target XPath:  XMLTARGET   -->
		<XMLTARGET>
			<xsl:apply-templates select="@* | node()"/>
		</XMLTARGET>

	</xsl:template>

	<xsl:template match="emph/@typestyle=&#34;un&#34;">

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