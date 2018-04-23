<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
	xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/"
	xmlns:leg="http://www.lexis-nexis.com/glp/leg"
	xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
	xmlns:legis="http://www.lexisnexis.com/xmlschemas/content/legal/legislation/1/" version="2.0" exclude-result-prefixes="dita leg xsi">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="legis-Introduction">
       <title>Introduction <lnpid>id-NZ01-22609</lnpid></title>
    <prolog><metadata><prodinfo>
        <prodname>NZ01 Rosetta LEGDOC to LexAdv Legislation (NZ)</prodname>
        <vrmlist>
            <vrm version=""/>
        </vrmlist>
    </prodinfo></metadata></prolog>
    <body>
        <section><title>Root Element</title>
             <p><sourcexml>LEGDOC</sourcexml> becomes
                    <targetxml>legis:legis</targetxml> is a root element for legislation. And
                attributes are populated as follows: 
                 
                 <ul>
                    <li><sourcexml>LEGDOC[@id]</sourcexml> becomes
                    <targetxml>legis:legis[@xml:id]</targetxml> provide a unique identifier for this
                element. The presence or absence of the xml:id will not affect delivery product
                behavior; the default value is IMPLIED.</li>  
                     
                 <li>
            <sourcexml>LEGDOC[@id='GCG-ACTS-Z']</sourcexml> 
            becomes <targetxml>legis:legis[@xml:id='GCG-ACTS-Z']</targetxml>
                <sourcexml>LEGDOC[@legtype]</sourcexml> becomes
                    <targetxml>legis:legis[@legistype]</targetxml> and value is "act". The attribute
                populated with value as follows: <ul>
                    <li>legis:legis[@legistype="act"]  </li>    
                 </ul>
            </li>
            </ul>     
             </p>
        </section>
        
        <section><title>Top Level Elements</title>
            <p><targetxml>legis:head</targetxml>,
                    <targetxml>legis:body</targetxml>, and <targetxml>doc:metadata</targetxml> are
                created as required children of <targetxml>legis:legis</targetxml>
            </p></section>
                <section>
                           <title>Notes</title>
                            <p>The following inormation is meant to help the user understand the conventions used in this document.</p>
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
    </body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\NZ01_Legis\NZ_Legis-Introduction.dita  -->

	<xsl:template match="LEGDOC">		
		<xsl:param name="outputSchemaLoc"
			select="'http://www.lexisnexis.com/xmlschemas/content/legal/legislation/1/ sch_legis.xsd'"/>
		<legis:legis>			
		    <xsl:call-template name="generateNSGlobalBindings"/>
			<xsl:attribute name="xsi:schemaLocation" select="$outputSchemaLoc"/>
			<xsl:apply-templates select="@id"/>
		    <xsl:call-template name="xml_lang"/>
			<xsl:attribute name="legistype" select="'act'"/>
			<legis:head>
				<xsl:apply-templates select="leg:body/leg:info/leg:juris"/>
			</legis:head>
			<xsl:apply-templates select="leg:body"/>
			<doc:metadata>
				<xsl:apply-templates select="docinfo"/>
			</doc:metadata>
		</legis:legis>
	</xsl:template>
</xsl:stylesheet>