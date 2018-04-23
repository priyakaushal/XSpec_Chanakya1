<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:compcase="urn:x-lexisnexis:content:compositecourtcase:sharedservices:1" xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="case.courtcode">
   <title>case:courtcode <lnpid>id-UK02-27212</lnpid></title>
   <body>
     <section>
       <p>
         <sourcexml>case:courtcode</sourcexml> is mapped to 2 different locations in the target: 
         <ul>
           <li><targetxml>compcase:caseinstanceinfo/jurisinfo:courtinfo/jurisinfo:alternatecourtcode/@alternatecourtcode</targetxml></li>
           <li><targetxml>doc:metadata/doc:docinfo/doc:legacy-metadata[metadatasource="lbu-meta"]/meta/metaitem</targetxml>. The attributes of
             <targetxml>metaitem</targetxml> are populated as follows:
             <ul>
               <li><targetxml>metaitem/@name</targetxml> should be set to "case:courtcode".</li>
               <li><targetxml>metaitem/@value</targetxml> should be set to the value of <sourcexml>case:courtcode</sourcexml>.</li>
             </ul>
           </li>
         </ul>
       </p>
     </section>
     
     <example>
       <title>Source XML</title>
       <codeblock>

&lt;case:courtinfo&gt;
    &lt;case:courtcode&gt;255&lt;/case:courtcode&gt;
    ...
&lt;/case:courtinfo&gt;

       </codeblock>
     </example>
     
     <example>
       <title>Target XML</title>
       <codeblock>

&lt;jurisinfo:courtinfo&gt;
    &lt;jurisinfo:alternatecourtcode alternatecourtcode="255" /&gt;
&lt;/jurisinfo:courtinfo&gt;


&lt;doc:metadata&gt;
    &lt;doc:docinfo doc-content-country="GB"&gt;
        ...
        &lt;doc:legacy-metadata metadatasource="lbu-meta"&gt;
            &lt;meta&gt;
                ...
                &lt;metaitem name="case:courtcode" value="255"/&gt;
            &lt;/meta&gt;
        &lt;/doc:legacy-metadata&gt;
    &lt;/doc:docinfo&gt;
&lt;/doc:metadata&gt;

       </codeblock>
     </example>
     
   </body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK02-Comp_Cases\case.courtcode.dita  -->
	
	<!-- JD: note that this modele is not being used in favor of /modules/case/Rosetta_case.courtcode.xsl -->
	
	<xsl:template match="case:courtcode">
		<!--  Original Target XPath:  compcase:caseinstanceinfo/jurisinfo:courtinfo/jurisinfo:alternatecourtcode/@alternatecourtcode   -->
		<jurisinfo:alternatecourtcode xmlns:jurisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/jurisdiction-info/1/">
				<xsl:attribute name="alternatecourtcode">
					<xsl:value-of select="."/>
				</xsl:attribute>
		</jurisinfo:alternatecourtcode>
	</xsl:template>

</xsl:stylesheet>