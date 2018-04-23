<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
	xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" xmlns:classify="http://www.lexisnexis.com/xmlschemas/content/shared/classification/1/" 
	version="2.0" exclude-result-prefixes="dita docinfo">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_docinfo.selector-to-LexisAdvance_classify.classification_classscheme_selector-scheme">
    <title><sourcexml>docinfo:selector</sourcexml> to  <targetxml>classify:classification[@classscheme="selector"]</targetxml> <lnpid>id-CCCC-10304</lnpid></title>
    
<body>
	<section>
		<title>Instructions <i>[common element]</i></title>
	    <p><sourcexml>docinfo:selector</sourcexml> becomes <targetxml>classify:classification[@classscheme="selector"]/classify:classitem/classify:classitem-identifier/classify:classname</targetxml>. Each subsequent occurrence of the element docinfo:selector adds a sibling /classify:classitem/classify:classitem-identifier/classify:classname element.
		</p>
    </section>
	
    <example>
		<title>Source XML</title>
		<codeblock>

&lt;docinfo:selector&gt;act&lt;/docinfo:selector&gt;

	</codeblock>
    </example>
	
    <example>
		<title>Target XML</title>
		<codeblock>

&lt;classify:classification classscheme="selector"&gt;
&lt;classify:classitem&gt;
&lt;classify:classitem-identifier&gt;
&lt;classify:classname&gt;act&lt;/classify:classname&gt;
&lt;/classify:classitem-identifier&gt;
&lt;/classify:classitem&gt;
&lt;/classify:classification&gt;

	</codeblock>
    </example>

    <section>
		<title>Changes</title>
		<p>2012-08-30: Created.</p>
    </section>
	

</body>
	</dita:topic>

		<xsl:template match="docinfo:selector[preceding-sibling::docinfo:selector]"/>
		
		<xsl:template match="docinfo:selector">
			<classify:classitem>
				<classify:classitem-identifier>
					<classify:classname>
						<xsl:apply-templates/>
					</classify:classname>
				</classify:classitem-identifier>
			</classify:classitem>
			<xsl:for-each select="following-sibling::docinfo:selector">
				<classify:classitem>
					<classify:classitem-identifier>
						<classify:classname>
							<xsl:apply-templates/>
						</classify:classname>
					</classify:classitem-identifier>
				</classify:classitem>
			</xsl:for-each>
		</xsl:template>

			<!-- CSN: Added docinfo:selector from base.xsl. -->
			<!--<xsl:template xmlns="http://dita.oasis-open.org/architecture/2005/" xmlns:ditaarch="http://dita.oasis-open.org/architecture/2005/" match="docinfo:selector">
				<xsl:element name="classify:classitem">
					<xsl:element name="classify:classitem-identifier">
						<xsl:element name="classify:classname">
							<xsl:apply-templates/>
						</xsl:element>
					</xsl:element>
				</xsl:element>
			</xsl:template>-->
		
</xsl:stylesheet>