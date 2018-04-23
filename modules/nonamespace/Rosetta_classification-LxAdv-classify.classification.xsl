<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:glp="http://www.lexis-nexis.com/glp" xmlns:classify="http://www.lexisnexis.com/xmlschemas/content/shared/classification/1/"
	xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita glp">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="common_rosetta_classification-to-LexisAdvance-classify.classification.dita">
		<title><sourcexml>classification</sourcexml> to <targetxml>classify:classification</targetxml>
			<lnpid>id-CCCC-10523</lnpid></title>
		<body>
			<section>
				<title>Instructions <i>[common element]</i></title>
				<note>Whenever <sourcexml>classification</sourcexml> occurs in a location/XPATH that has a more specific conversion instruction associated with it (e.g. a more specific XPATH for the source <sourcexml>classification</sourcexml> element or
					for the target <targetxml>classify:classification</targetxml> element), that instruction should be followed instead of this general markup instruction.</note>
				<p><sourcexml>classification</sourcexml> becomes <targetxml>classify:classification</targetxml>. <sourcexml>classification/@classscheme</sourcexml> becomes <targetxml>classify:classification/@classscheme</targetxml>. Process all
						<sourcexml>classitem</sourcexml> children; if multiple <sourcexml>classitem</sourcexml> elements are present, create <targetxml>classify:classitem</targetxml> for each.</p>
				<p>Drop attribute <sourcexml>ln.user-displayed</sourcexml> from converted content within classification (and child) elements.</p>
				<p>For each <sourcexml>classitem</sourcexml> child element:</p>
				<ul>
					<li>create <targetxml>classify:classitem</targetxml>.</li>
					<li>copy any <sourcexml>@classscheme</sourcexml> and <sourcexml>@normval</sourcexml> attribute to the target <targetxml>classify:classitem</targetxml> element.</li>
					<li><sourcexml>meta</sourcexml> becomes <targetxml>meta</targetxml>, following instructions elsewhere in this document.</li>
					<li><sourcexml>glp:note</sourcexml> becomes <targetxml>note</targetxml>, following instructions elsewhere in this document.</li>
					<li><sourcexml>refpt</sourcexml> becomes <targetxml>ref:anchor</targetxml>, following instructions elsewhere in this document.</li>
					<li>Each <sourcexml>classitem-identifier</sourcexml> becomes a unique <targetxml>classify:classitem-identifier</targetxml>, following the instructions immediately below.</li>
				</ul>
				<p>For each <sourcexml>classitem-identifier</sourcexml> element:</p>
				<ul>
					<li>create <targetxml>classify:classitem-identifier</targetxml>.</li>
					<li><sourcexml>classname</sourcexml> becomes <targetxml>classify:classname</targetxml>, copying any <sourcexml>@normval</sourcexml> attribute to the target.</li>
					<li><sourcexml>classcode</sourcexml> becomes <targetxml>classify:classcode</targetxml>, copying any <sourcexml>@normval</sourcexml> and <sourcexml>@codescheme</sourcexml> attributes to the target.</li>
				</ul>
			</section>

			<example>
				<title>Source XML</title>
				<codeblock> &lt;classification classscheme="echo:formtypes"&gt; &lt;classitem&gt; &lt;classitem-identifier&gt; &lt;classname&gt;Official Forms&lt;/classname&gt; &lt;classcode codescheme="PGUID"
					normval="urn:fcc:23653971-8030-44eb-9b33-a46b00e0b6c2"/&gt; &lt;/classitem-identifier&gt; &lt;/classitem&gt; &lt;/classification&gt; </codeblock>
			</example>
			<example>
				<title>Target XML</title>
				<codeblock> &lt;classify:classification classscheme="echo:formtypes"&gt; &lt;classify:classitem&gt; &lt;classify:classitem-identifier&gt; &lt;classify:classname&gt;Official Forms&lt;/classify:classname&gt; &lt;classify:classcode
					codescheme="PGUID" normval="urn:fcc:23653971-8030-44eb-9b33-a46b00e0b6c2"/&gt; &lt;/classify:classitem-identifier&gt; &lt;/classify:classitem&gt; &lt;/classify:classification&gt; </codeblock>
			</example>
			<section>
				<title>Changes</title>
				<p>2015-04-27: <ph id="change_20150427_snb">Created new general markup instruction for conversion of <sourcexml>classification</sourcexml> to <targetxml>classify:classification</targetxml> when no more specific instruction exists.</ph></p>
			</section>
		</body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_classification-LxAdv-classify.classification.dita  -->

	<xsl:template match="classification">
		<classify:classification>
			<xsl:apply-templates select="@* | node()"/>
		</classify:classification>
	</xsl:template>

	<xsl:template match="classification/@classscheme | classitem/@classscheme">
		<xsl:attribute name="classscheme">
			<xsl:value-of select="."/>
		</xsl:attribute>
	</xsl:template>

	<xsl:template match="classitem">
		<classify:classitem>
			<xsl:apply-templates select="@* | node()"/>
		</classify:classitem>
	</xsl:template>

	<xsl:template
		match="
			classification/@ln.user-displayed | classitem/@ln.user-displayed
			| classification/@rendition
			| classification/@display-name
			| classification/@searchtype | classitem-identifier/@searchtype | classname/@searchtype | classcode/@searchtype"/>
	
	<xsl:template match="@ln.nsprefix"/>

	<xsl:template match="classitem/@normval | classname/@normval | classcode/@normval">
		<xsl:attribute name="normval">
			<xsl:value-of select="."/>
		</xsl:attribute>
	</xsl:template>

	<xsl:template match="classitem-identifier">
		<classify:classitem-identifier>
			<xsl:apply-templates select="@* | node()"/>
		</classify:classitem-identifier>
	</xsl:template>

	<xsl:template match="classname">
		<classify:classname>
			<xsl:apply-templates select="@* | node()"/>
		</classify:classname>
	</xsl:template>

	<xsl:template match="classcode">
		<classify:classcode>
			<xsl:apply-templates select="@* | node()"/>
		</classify:classcode>
	</xsl:template>

	<xsl:template match="classcode/@codescheme">
		<xsl:attribute name="codescheme">
			<xsl:value-of select="."/>
		</xsl:attribute>
	</xsl:template>

	<!-- CSN - 2017/10/19 - Added meta per this dita.  Needed for UK03.  -->
	<xsl:template match="meta">
		<meta xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
			<xsl:apply-templates select="@* | node()"/>
		</meta>
	</xsl:template>

	<xsl:template match="metaitem">
		<metaitem xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
			<xsl:apply-templates select="@* | node()"/>
		</metaitem>
	</xsl:template>
	
	<xsl:template match="metaitem/@name">
		<xsl:copy-of select="."/>
	</xsl:template>
	
	<xsl:template match="metaitem/@value">
		<xsl:copy-of select="."/>
	</xsl:template>
	
</xsl:stylesheet>
