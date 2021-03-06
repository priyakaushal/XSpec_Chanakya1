<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:ci="http://www.lexis-nexis.com/ci" xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" xmlns:legis="http://www.lexisnexis.com/xmlschemas/content/legal/legislation/1/" xmlns:lnci="http://www.lexisnexis.com/xmlschemas/content/shared/citations/1/" version="2.0" exclude-result-prefixes="dita ci">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="PH01_Legis-Introduction">
       <title>Introduction <lnpid>id-PH01-33419</lnpid></title>
    
    <shortdesc>This Conversion Instruction describes the conversion of legis 8.8 PROD schema in the
        document.</shortdesc>
    <body>
        <section><title>Root Element</title>
                    
            <p><b>PH01-Legislation</b> are identified using the root element <sourcexml>LEGDOC</sourcexml> with attribute <sourcexml>@legtype="act"</sourcexml>.</p>
            <p>
                <sourcexml>LEGDOC/@legtype="act"</sourcexml> becomes
                <targetxml>legis:legis/@legistype="act"</targetxml> and is the root element for legislation
                attributes are populated as follows: <sourcexml>LEGDOC[@id]</sourcexml> becomes
                    <targetxml>legis:legis[@xml:id]</targetxml> and provides a unique identifier for
                this element. The presence or absence of attribute value will not affect delivery
                product behavior and default value is 'none'. </p>
            
            <p>
                <sourcexml>LEGDOC/@legtype="act"</sourcexml> becomes
                    <targetxml>legis:legis/@legistype="act"</targetxml>
                <pre>
&lt;LEGDOC legtype="act"&gt;
        .....
        &lt;docinfo:doc-lang lang="en"/&gt;
        &lt;docinfo:doc-country iso-cc="MY"/&gt;
        .....
&lt;/LEGDOC&gt; 
</pre>
                <b>becomes</b>
                <pre>
&lt;legis:legis legistype="act" xml:lang="en-PH"&gt;
      
      &lt;legis:head&gt;...&lt;/legis:head&gt;
      &lt;legis:body&gt;...&lt;/legis:body&gt;
      &lt;doc:metadata&gt;...&lt;/doc:metadata&gt;
      
&lt;/legis:legis&gt;    
                 </pre>
            </p>                
                                 
                    
                <p>
                <targetxml>legis:head</targetxml>, <targetxml>legis:body</targetxml>, and <targetxml>doc:metadata</targetxml> are created as
                required children of <targetxml>legis:legis</targetxml>
                </p>
            
            <p>
                The <sourcexml>@searchtype</sourcexml> attribute will be suppressed from conversion except for the citation element.
            </p>
            
        </section>
                <section>
            <note>
                <p>Conversion should retain <sourcexml>ci:my</sourcexml> empty element in the target
                    as <targetxml>lnci:my</targetxml>.</p>
            </note>
                           <title>Notes</title>
                            <p>The following information is meant to help the user understand the conventions used in this document.</p>
                            <p>Source elements and attributes are highlighted like this: <sourcexml>XML SOURCE</sourcexml></p>
                            <p>Target elements and attributes are highlighted like this: <targetxml>XML TARGET</targetxml></p>
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
                </ul></p>
                </section>
        <section>
            <title>Changes</title>
            <p>2014-08-20: <ph id="change_20140820_PS">Updated attribute value from <targetxml>xml:lang="en-MY"</targetxml> to <targetxml>xml:lang="en-PH"</targetxml>.</ph></p>
            <p>2014-08-07: Created.</p>
        </section>
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-GPL\PH01-Legislation\PH01_Legis-Introduction.dita  -->
	<xsl:message>PH01_Legis-Introduction.xsl requires manual development!</xsl:message> 

	<xsl:template match="LEGDOC">

		<!--  Original Target XPath:  legis:legis/@legistype="act"   -->
		<legis:legis>
			<xsl:attribute name="legistype">
				<xsl:text>act</xsl:text>
			</xsl:attribute>
		</legis:legis>

	</xsl:template>

	<xsl:template match="@legtype=&#34;act&#34;">

		<!--  Original Target XPath:  legis:legis/@legistype="act"   -->
		<legis:legis>
			<xsl:attribute name="legistype">
				<xsl:text>act</xsl:text>
			</xsl:attribute>
		</legis:legis>

	</xsl:template>

	<xsl:template match="LEGDOC/@legtype=&#34;act&#34;">

		<!--  Original Target XPath:  legis:legis/@legistype="act"   -->
		<legis:legis>
			<xsl:attribute name="legistype">
				<xsl:text>act</xsl:text>
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

		<!--  Original Target XPath:  lnci:my   -->
		<lnci:my>
			<xsl:apply-templates select="@* | node()"/>
		</lnci:my>

	</xsl:template>

	<xsl:template match="ci:my">

		<!--  Original Target XPath:  lnci:my   -->
		<lnci:my>
			<xsl:apply-templates select="@* | node()"/>
		</lnci:my>

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