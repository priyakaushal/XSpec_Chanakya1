<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ci="http://www.lexis-nexis.com/ci" xmlns:currencystatement="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/currencystatement"
    xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" version="2.0" exclude-result-prefixes="dita">
 

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="CA13_introduction">
    <title>Introduction <lnpid>id-CA13-33009</lnpid></title>

    <body>
        <p>These Conversion Instructions describe conversion from Rosetta LEGDOC DTD to Lexis
            Advanced currencystatement schema 1.1 Alpha.</p>

        <p>The data stream is CA13 Currency Statements. Each document provides information on the
            currentness of a particular set of data. The currentness information is stored as a
            single document rather than embedded in each document in the set. Initially, CA13
            documents provide currency statements for data sets within CA05, CA06, CA07, CA08.</p>

        <p><b>Root Element:</b><ul>
                <li><sourcexml>LEGDOC</sourcexml> becomes
                        <targetxml>currencystatement:currencystatement</targetxml>.<ul>
                        <li>Create required attribute <targetxml>@pcsi</targetxml> and populate with
                            value obtained from dx.properties file. The dx.properties file is used
                            because value not available in data or manifest file.</li>
                    </ul></li>
            </ul>
        </p>

        <note>The attribute <sourcexml>@searchtype</sourcexml> will be suppressed from the
            conversion except citation markup.</note>
        <note>Example below includes <targetxml>@xml:lang</targetxml>. See next section for
            rules.</note>

        <pre>

&lt;LEGDOC&gt;
        ...
        &lt;docinfo:doc-lang lang="en"/&gt;
        &lt;docinfo:doc-country iso-cc="CA"/&gt;
        ...
&lt;/LEGDOC&gt;
<b>Becomes</b>

&lt;currencystatement:currencystatement xml:lang="en-CA" pcsi="X"&gt; 
                                         &lt;!-- "X" is value obtained from dx.properties --&gt;

      &lt;currencystatement:body&gt;...&lt;/currencystatement:body&gt;

      &lt;doc:metadata&gt;...&lt;/doc:metadata&gt;
      
&lt;/currencystatement:currencystatement&gt;
</pre>

        <section>
            <title>Note:</title>
            <p>Source elements and attributes are highlighted like this:
                    <sourcexml>SOURCEXML</sourcexml></p>
            <p>Target elements and attributes are highlighted like this:
                    <targetxml>TARGETXML</targetxml></p>
            <p>Examples are shaded, as shown above.</p>
            <p>Copy source attributes to target attributes unless otherwise specified.</p>
        </section>

        <section>
            <title>Changes</title>
            <p>2015-04-03: <ph id="change_20150403_jm">The Apr 3 2015 release is a refresh because
                    CI last published Sept 2 2014. There are no changes unique to CA13.</ph></p>
            <p>2014-09-02: <ph id="change_20140902_jm">Revised rule for <targetxml>@pcsi</targetxml>
                    on root. Value now obtained from dx.properties file. Previously was hardcoded as
                    "0" during conversion. Affects CA13 only. R4.5 Content Issue 1479.</ph></p>
        </section>
    </body>
	</dita:topic>

	
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA13-Currency_Statements\CA13_introduction.dita  -->
    <xsl:variable name="outputSchemaLoc" select="'http://www.lexisnexis.com/xmlschemas/content/shared/base/1/currencystatement/sch_currencystatement.xsd'"></xsl:variable>
<!-- Sudhanshu Srivastava: Tempplate for matching LEGDOC. -->
	<xsl:template match="LEGDOC">
		<!--  Original Target XPath:  currencystatement:currencystatement   -->
		<currencystatement:currencystatement>
		    <xsl:for-each select="$lexisAdvNamespaces/*">
		        <xsl:sort/>
		        <xsl:namespace name="{substring-after(substring-before(., '='), ':')}" select="substring-after(translate(., '&#034;', ''), '=')"/>
		    </xsl:for-each>
		    
		    <xsl:attribute name="pcsi" select="$pcsi"/>
		    
		    <xsl:attribute name="xml:lang" select="concat(docinfo/docinfo:doc-lang/@lang,'-',docinfo/docinfo:doc-country/@iso-cc)"/>
		    <xsl:apply-templates select="leg:body"/>
		    <doc:metadata>
		        <xsl:apply-templates select="docinfo"/>
		    </doc:metadata>
		</currencystatement:currencystatement>
	</xsl:template>
	<xsl:template match="@searchtype[not(parent::ci:cite)]"/>
</xsl:stylesheet>