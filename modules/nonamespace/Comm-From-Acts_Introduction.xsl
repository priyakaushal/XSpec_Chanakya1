<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
    xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo"
    xmlns:legis="http://www.lexisnexis.com/xmlschemas/content/legal/legislation/1/" 
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="legis-Introduction">
       <title>Introduction <lnpid>id-NZ02-22809</lnpid></title>
    <body>
        <section>
            <title>Root Element</title>
             <p><sourcexml>COMMENTARYDOC</sourcexml> becomes <targetxml>legis:legis</targetxml> is a
                root element for legislation. And attributes are populated as follows: <ul>
                    <li><sourcexml>COMMENTARYDOC[@id]</sourcexml> becomes
                            <targetxml>legis:legis[@xml:id]</targetxml> provide a unique identifier
                        for this element. The presence or absence of the xml:id will not affect
                        delivery product behavior; the default value is IMPLIED.</li>
                    
                    <li>
                        The combination of the two elements and attributes docinfo/docinfo:doc-lang[@lang] and docinfo/docinfo:doccountry[@
                        iso-cc] becomes {target.root.element}[@xml:lang] as described below
                    </li>
                    
                    <li>
                        
                        <pre>
          &lt;COMMENTARYDOC&gt;
                      ...
                      &lt;docinfo:doc-lang lang="en"/&gt;
                      &lt;docinfo:doc-country iso-cc="NZ"/&gt;
                      ...          
                   &lt;/COMMENTARYDOC&gt;
          <b>Becomes</b>
              
                       &lt;legis:legis xml:lang="en-NZ"&gt;
                        ...
                       &lt;/legis:legis&gt;
      </pre>
                    </li>
                </ul></p>
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

	<xsl:template match="COMMENTARYDOC">

	    <xsl:param name="outputSchemaLoc"
	        select="'urn:x-lexisnexis:content:legislation:mastering:1 ../xsd/sch_legis.xsd'"/>
	    
		<!--  Original Target XPath:  legis:legis   -->
		<legis:legis>
		    <xsl:call-template name="generateNSGlobalBindings"/>
		    
		    <xsl:attribute name="xsi:schemaLocation" select="$outputSchemaLoc"/>
		    
		    <xsl:apply-templates select="@*"/>
		    <xsl:call-template name="xml_lang"/>
		    <legis:head/>
			<xsl:apply-templates select="node() except (docinfo)"/>
		    <doc:metadata>
		        <xsl:apply-templates select="docinfo"/>
		    </doc:metadata>
		</legis:legis>

	</xsl:template>
    
    <xsl:template match="COMMENTARYDOC/@type"/>

    <!-- Handled in docinfo module - this is simply to remove an exception -->
   <!-- <xsl:template match="docinfo:doc-id"/>-->
	

</xsl:stylesheet>