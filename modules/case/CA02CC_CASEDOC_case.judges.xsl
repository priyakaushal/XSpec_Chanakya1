<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:courtcase="http://www.lexisnexis.com/xmlschemas/content/legal/courtcase/1/" xmlns:casedigest="http://www.lexisnexis.com/xmlschemas/content/legal/case-digest/1/" xmlns:proc="http://www.lexisnexis.com/xmlschemas/content/shared/process-elements/1/" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="case.judges">
    <title>case:judges <lnpid>id-CA02CC-12422</lnpid></title>
    <body>
        <section>
            <ul>
                <li>
                    <sourcexml>case:judges</sourcexml>
                    becomes <targetxml>/casedigest:casedigest/casedigest:head/casedigest:caseinfo/casedigest:appearances/courtcase:panel/courtcase:judges</targetxml>
                    <note>If <sourcexml>case:judges</sourcexml> has <sourcexml>nl</sourcexml> as direct child element, 
                        then <sourcexml>nl</sourcexml> will be converted to <targetxml>proc:nl</targetxml>.</note>
                    
                    <pre>
                        
&lt;case:judges&gt;per Gerwing J.A.&lt;/case:judges&gt;

<b>Becomes</b>


&lt;casedigest:head&gt;
    &lt;casedigest:caseinfo&gt;
        &lt;casedigest:appearances&gt;
            &lt;courtcase:panel&gt;
                &lt;courtcase:judges&gt;per Gerwing J.A.&lt;/courtcase:judges&gt;
            &lt;/courtcase:panel&gt;
        &lt;/casedigest:appearances&gt;
    &lt;/casedigest:caseinfo&gt; 
&lt;/casedigest:head&gt;   

                    </pre>
                </li>
            </ul>
        </section>
    </body>
	</dita:topic>

	
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA02-Case_Summaries\CA02CC_CASEDOC\case.judges.dita  -->
	
<!-- Sudhanshu Srivastava edited on 16-May-2017. -->
	<xsl:template match="case:judges">
		<!--  Original Target XPath:  /casedigest:casedigest/casedigest:head/casedigest:caseinfo/casedigest:appearances/courtcase:panel/courtcase:judges   -->
					<casedigest:appearances>
						<courtcase:panel>
							<courtcase:judges>
								<xsl:apply-templates select="@* | node()"/>
							</courtcase:judges>
						</courtcase:panel>
					</casedigest:appearances>

	</xsl:template>
</xsl:stylesheet>