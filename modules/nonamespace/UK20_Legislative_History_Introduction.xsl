<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
                xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
                xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" 
                xmlns:seclaw="http://www.lexisnexis.com/xmlschemas/content/legal/secondary-law/1/"
                xmlns:comm="http://www.lexis-nexis.com/glp/comm"
                xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo"
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                version="2.0" 
                exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Introduction">
        <title>Introduction <lnpid>id-UK20-35808</lnpid></title>
	    <shortdesc>This Conversion Instructions describes the conversion of the Rosetta COMMENTARYDOC DTD to <b>Seclaw 8.23_PROD</b> schema.</shortdesc>
        <body>
            <p>UK Precedents/Forms samples are identified using the root element
                <sourcexml>COMMENTARYDOC</sourcexml> with element and value
                <sourcexml>&lt;docinfo:selector&gt;commentary&lt;/docinfo:selector&gt;</sourcexml>.</p>
            <section>
                <sourcexml>COMMENTARYDOC</sourcexml> becomes <targetxml>seclaw:seclaw</targetxml> which
                has a required attribute <targetxml>@seclawtype</targetxml>, the value of attribute
                    <targetxml>@seclawtype</targetxml> depends on the value of
                    <sourcexml>docinfo/docinfo:selector</sourcexml> . Below are the rules to assign the
                value of attribute <targetxml>@seclawtype</targetxml>. <ul>
                    <li>if <sourcexml>docinfo/docinfo:selector</sourcexml> contains
                            <sourcexml>COMMENTARY"</sourcexml>, then the value of
                            <targetxml>/seclaw:seclaw/@seclawtype</targetxml> will become
                            <targetxml>/seclaw:seclaw[@seclawtype="commentary"]</targetxml>.</li>
                    <li>if <sourcexml>docinfo/docinfo:selector</sourcexml> contains
                            <sourcexml>"FORM"</sourcexml>, then the value of
                            <targetxml>/seclaw:seclaw/@seclawtype</targetxml> will become
                            <targetxml>/seclaw:seclaw[@seclawtype="form"]</targetxml>.</li>
                    <li>if <sourcexml>docinfo/docinfo:selector</sourcexml> contains
                        <sourcexml>anything else</sourcexml>, then the value of
                        <targetxml>/seclaw:seclaw/@seclawtype</targetxml> will become
                        <targetxml>/seclaw:seclaw[@seclawtype="commentary"]</targetxml>.</li>
                </ul> The source attribute <sourcexml>@xml:lang</sourcexml>, if present, can be dropped,
                as a separate rule has been defined to populate
                    <targetxml>/seclaw:seclaw/@xml:lang</targetxml>.
            </section>
            <section>
                <note>The attribute <sourcexml>@searchtype</sourcexml> will be suppressed from the
                    conversion except citation markup.</note>
                <pre>

                    &lt;COMMENTARYDOC&gt;
                        ............
                        ............
                        &lt;docinfo:doc-lang lang="en"/&gt;
                        &lt;docinfo:doc-country iso-cc="CA"/&gt;
                        ............
                        ............          
                    &lt;/COMMENTARYDOC&gt;


                    <b>Becomes</b>


                    &lt;seclaw:seclaw seclawtype="commentary" xml:lang="en-CA"&gt;
                        ............
                        ............
                    &lt;/seclaw:seclaw&gt;

                </pre>
                <p>Example for: when <sourcexml>docinfo/docinfo:selector</sourcexml> contains
                        <sourcexml>"COMMENTARY"</sourcexml>.</p>
                <pre>

                    &lt;COMMENTARYDOC&gt;
                        
                            ........
                                &lt;docinfo&gt;
                                    .........
                                    .........
                                            &lt;docinfo:selector&gt;Commentary
                                            &lt;/docinfo:selector&gt;
                                &lt;/docinfo&gt;
                            ........
                        
                    &lt;/COMMENTARYDOC&gt;


                    <b>Becomes</b>
        
        

                    &lt;seclaw:seclaw seclawtype="commentary" xml:lang="en-CA"&gt;
                        &lt;doc:metadata&gt;
                            &lt;doc:docinfo&gt;
                                ..........
                                ..........
                            &lt;doc:docinfo&gt;
                        &lt;doc:metadata&gt;
                        ..........
                    &lt;/seclaw:seclaw&gt;

                </pre>
                <p>Example for: when <sourcexml>docinfo/docinfo:selector</sourcexml> contains
                        <sourcexml>"FORM"</sourcexml>.</p>
                <pre>

                    &lt;COMMENTARYDOC&gt;
                        
                            ........
                                  &lt;docinfo&gt;
                                    .........
                                    .........
                                            &lt;docinfo:selector&gt;Form
                                            &lt;/docinfo:selector&gt;
                                &lt;/docinfo&gt;
                            ........
                        
                    &lt;/COMMENTARYDOC&gt;


                    <b>Becomes</b>
           
        

                    &lt;seclaw:seclaw seclawtype="FORM" xml:lang="en-CA"&gt;
                        &lt;doc:metadata&gt;
                            &lt;doc:docinfo&gt;
                                ..........
                                ..........
                            &lt;doc:docinfo&gt;
                        &lt;doc:metadata&gt;
                        ..........
                    &lt;/seclaw:seclaw&gt;

                </pre>     
                <note>Elements <targetxml>seclaw:head</targetxml>, <targetxml>seclaw:body</targetxml>
                    and <targetxml>doc:metadata</targetxml> are created as required children of root
                    element <targetxml>seclaw:seclaw</targetxml> during conversion.</note>
                <note>If there is no header information found in the Rosetta samles then conversion need
                to create empty <sourcexml>&lt;seclaw:head/&gt;</sourcexml> in NL
                output.</note>
                <p><b>Note:</b></p>
                <p>Source elements and attributes are highlighted like this:
                        <sourcexml>SOURCEXML</sourcexml></p>
                <p>Target elements and attributes are highlighted like this:
                        <targetxml>TARGETXML</targetxml></p>
                <p>Copy source attributes to target attributes unless otherwise specified.</p>
                <p>Every example is represented like EXAMPLE in all the Conversion Instructions and is captured under <pre>pre</pre> tag.</p>
            </section>
            <section>
                <title>Changes</title>
                <p>2017-05-04: <ph id="change_20170504_jm">Updated schema version to 8.23_PROD.</ph></p>
                <p>2017-01-31: <ph id="change_20170131_jm">Updated schema version to 8.19_PROD.</ph></p>
                <p>2016-12-13: <ph id="change_20161213_jm">Updated schema version to 8.18_PROD.</ph></p>
                <p>2015-05-13: <ph id="change_20150513_AK">Change the Instruction for picking the value
                    for seclawtype from source element . #RFA 2318 Applicable to UK20.
                </ph></p>
            </section>
        </body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK20_Legislative_History\Introduction.dita  -->

	<xsl:template match="COMMENTARYDOC">

		<!--  Original Target XPath:  seclaw:seclaw   -->
		<seclaw:seclaw>
		    
		    <!--  MCJ:  output the LA namespace nodes onto the root element.  -->
			<xsl:for-each select="$lexisAdvNamespaces/*">
				<xsl:sort/>
				<xsl:namespace name="{substring-after(substring-before(., '='), ':')}" select="substring-after(translate(., '&#034;', ''), '=')"/>
			</xsl:for-each>
		    
		    <!-- MCJ:  Create @xsi:schemaLocation based on the global parameter. -->
		    <xsl:attribute name="xsi:schemaLocation" select=" $outputSchemaLoc "/>

		    <!-- MCJ:  Create seclaw:seclaw/@xml:lang using the global named template that uses doc-lang and doc-country. -->
		    <xsl:call-template name="xml_lang"/>
		    
		    <!-- MCJ:  Process attributes of root COMMENTARYDOC element. -->
		    <xsl:apply-templates select="@*"/>
		    
            <!-- MCJ:  Create the required seclaw:seclaw/@seclawtype attribute. -->    
		    <xsl:variable name="tmpSelector"><xsl:value-of select="normalize-space(lower-case(docinfo/docinfo:selector))" /></xsl:variable>
		    <xsl:attribute name="seclawtype">
		        <xsl:choose>
		            <xsl:when test="contains($tmpSelector, 'commentary')">commentary</xsl:when>
		            <xsl:when test="contains($tmpSelector, 'form')">form</xsl:when>
		            <xsl:otherwise>commentary</xsl:otherwise>
		        </xsl:choose>
		    </xsl:attribute>
		    
		    <seclaw:head />
	
            <!-- 20170508:  MCJ:  Rely on the template for comm:body to create the desired seclaw:body. --> 
		    <xsl:apply-templates select="comm:body" />
		    
		    <doc:metadata>
		        <xsl:apply-templates select="docinfo" />
		    </doc:metadata>
		</seclaw:seclaw>

	</xsl:template>

    <!-- MCJ:  Template to explictly suppress COMMENTARYDOC/@xml:lang per the conversion instructions.  Note that this template might not actually get called but is here in case. -->
	<xsl:template match="COMMENTARYDOC/@xml:lang" />

    <!-- MCJ:  Template to explictly suppress COMMENTARYDOC/@searchtype per the conversion instructions.  Note that this template might not actually get called but is here in case. -->
  <!-- JD: modified to suppress all @searchtype (instructions above say suppress from all but cites)-->
	<xsl:template match="@searchtype" />

</xsl:stylesheet>