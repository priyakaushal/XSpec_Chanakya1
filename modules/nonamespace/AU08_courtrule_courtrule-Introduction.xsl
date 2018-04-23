<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
    xmlns:courtrule="http://www.lexisnexis.com/xmlschemas/content/legal/courtrule/1/" 
    xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" 
    xmlns:leg="http://www.lexis-nexis.com/glp/leg"
    version="2.0" exclude-result-prefixes="#all">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="courtrule-Introduction">
      
    <title>Introduction <lnpid>id-AU08-19409</lnpid></title>
    <shortdesc>This Conversion Instruction describes the conversion of courtrule 7.0 PROD schema in
        the document.</shortdesc>
    
    <body>
        
        <section>
            
       <title>Root Element</title>
                    
                    <p>
                        <sourcexml>LEGDOC[@legtype="regulations"]</sourcexml> and <sourcexml>LEGDOC[@legtype="court-rules"]</sourcexml>  become
                        <targetxml>courtrule:courtrule</targetxml> which is a root element for rules and attributes are populated as follows:
                <ul>
                    <li>
                        There are two use cases for identifying the Courtrule files: 
                        1.LawNow: The LawNow version of Courtrule file will be identified using the “FOLDER NAME” i.e. "Courtrule", since the files
                        are having root element <b>LEGDOC</b> LEGDOC with attribute <b>@legtype=”regulations”</b>.
                        
                        2.AU Services: The services files will be identified using root element LEGDOC with attribute @legtype=”court-rules”.                       
                        <note>Not all documents with <sourcexml>@legtype="regulations"</sourcexml> becomes
                            <targetxml>courtrule:courtrule</targetxml></note>
                        
                        <sourcexml>LEGDOC[@legtype="regulations"]</sourcexml>  becomes <targetxml>courtrule:courtrule</targetxml> 
                        
                        &lt;LEGDOC legtype="regulations"&gt;
                        
                        <b>becomes</b> 
                        
                        &lt;courtrule:courtrule&gt;
                    </li>
                    <li>
                        <sourcexml>LEGDOC[@legtype="court-rules"]</sourcexml>  becomes <targetxml>courtrule:courtrule</targetxml>
                        
                        &lt;LEGDOC legtype="court-rules"&gt;
                        
                        <b>becomes</b> 
                        
                        &lt;courtrule:courtrule&gt; 
                    </li>    
                    <li>
                        <sourcexml>LEGDOC[@id]</sourcexml> becomes
                        
                        <targetxml>courtrule:courtrule[@xml:id]</targetxml> provides a unique identifier for this element. 
                        
                        &lt;LEGDOC id="ACT_REG_2008-46"&gt; 
                        
                        <b>becomes</b> 
                        
                        &lt;courtrule:courtrule xml:id="ACT_REG_2008-46"&gt;   
                     
                    </li>
                </ul>
          </p>                
            <p>
                The <sourcexml>@searchtype</sourcexml> attribute will be suppressed from conversion except for the citation element.
            </p>                
                    
               <p><targetxml>courtrule:head</targetxml>, <targetxml>courtrule:body</targetxml>, and <targetxml>doc:metadata</targetxml> are                        created as required children of <targetxml>courtrule:courtrule</targetxml>
               </p>
        </section>
        
        
                <section>
                           <title>Notes</title>
                            <p>The following inormation is meant to help the user understand the conventions used in this document.</p>
                            <p>Source elements and attributes are highlighted like this: <sourcexml>XML SOURCE</sourcexml></p>
                            <p>Target elements and attributes are highlighted like this: <targetxml>XML TARGET</targetxml></p>
                            <p>Verify content of following target attributes: 
                                        <ul>
                                        <li><sourcexml>@month</sourcexml> becomes <targetxml>@month</targetxml> is between 01-12. Any numbers
                                            outside this range, do not output a <targetxml>@month</targetxml>.</li>
                                        <li><sourcexml>@day</sourcexml> becomes <targetxml>@day</targetxml> is between 01-31. Any numbers outside
                                            this range, do not output <targetxml>@day</targetxml>.</li>
                                        <li><sourcexml>@year</sourcexml> becomes <targetxml>@year</targetxml> is 4 digits in length. Any other
                                            lengths, do not output <targetxml>@year</targetxml>.</li>
                                        </ul>
                            </p>
                </section>
    </body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU08_courtrule\courtrule-Introduction.dita  -->

    <xsl:template match="LEGDOC[@legtype='regulations' or @legtype='court-rules']">
<!--
<xsl:comment> *************** need to remove this, for quick validation only 
            </xsl:comment>
<xsl:text disable-output-escaping="yes"><![CDATA[	<?xml-model href="../../../../../../../Cortez/schema_modeling/sharedservices/lexisadvance/rootschemas/courtrule/sch_courtrule.rng" type="application/xml" schematypens="http://relaxng.org/ns/structure/1.0"?>
]]></xsl:text>

-->
		<!--  Original Target XPath:  courtrule:courtrule   -->
		<courtrule:courtrule>
		    <xsl:call-template name="generateNSGlobalBindings"/>
		    
<!--		    <xsl:for-each select="$lexisAdvNamespaces/*">
		        <xsl:sort/>
		        <xsl:namespace name="{substring-after(substring-before(., '='), ':')}" select="substring-after(translate(., '&#034;', ''), '=')"/>
		    </xsl:for-each>
-->		    
		    <!--
		    <xsl:attribute name="xsi:schemaLocation" select="'http://www.lexisnexis.com/xmlschemas/content/legal/courtrule/1/ sch_courtrule.xsd'"
		        xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"/>
		        -->
		    <xsl:apply-templates select="@*"/>
		    <xsl:call-template name="xml_lang"/>
		    
		    <courtrule:head>
		        <xsl:apply-templates select="leg:body/leg:info/leg:juris" mode="AUjurisinfo"/>
		    </courtrule:head>
		    <xsl:apply-templates select="leg:body"/>
		    <doc:metadata>
		        <xsl:apply-templates select="docinfo"/>
		    </doc:metadata>
		</courtrule:courtrule>
	</xsl:template>


	<xsl:template match="LEGDOC/@id">

		<!--  Original Target XPath:  courtrule:courtrule[@xml:id]   -->
	    <xsl:attribute name="xml:id" select="."/>

	</xsl:template>

    <xsl:template match="LEGDOC/@searchtype"/>
	
    <xsl:template match="LEGDOC[not(@legtype)]|LEGDOC[not(@legtype='court-rules') and not(@legtype='regulations')]">
        <xsl:call-template name="outputErrorMessage">
            <xsl:with-param name="messageText">no @legtype or @legtype value not 'court-rules' nor 'regulations': <xsl:value-of select="name(.)"/></xsl:with-param>
        </xsl:call-template>
    </xsl:template>
    
    <xsl:template match="LEGDOC/@legtype"/>
    
    <xsl:template match="leg:levelinfo[not(*)][normalize-space(text())='']"/>
        

</xsl:stylesheet>