<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" version="2.0" exclude-result-prefixes="dita case doc">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="HK03_Rosetta_case.length-LxAdv_doc.doclength">
    <title>case:length <lnpid>id-HK03-37223</lnpid></title>
    <body>
        <section conref="../../common_caselaw/conref_content/Rosetta_case.length-LxAdv_doc.doclength.dita#Rosetta_case.length-LxAdv_doc.doclength/mapping"/>
        <example>
            <codeblock>
&lt;case:length&gt;25 Paragraphs&lt;/case:length&gt;
       </codeblock>
            <b>becomes</b>
            <codeblock>
&lt;doc:metadata&gt;
    &lt;doc:docinfo&gt;
        ...
        &lt;doc:doclength num="25" unit="Paragraphs" source="conversion"/&gt;
        ...
    &lt;/doc:docinfo&gt;
&lt;/doc:metadata&gt;
       </codeblock>
        </example>
        <note>If <sourcexml>case:length</sourcexml> occurs within
                <sourcexml>case:embeddedcase</sourcexml>, then conversion should suppress
                <sourcexml>case:length</sourcexml> and its content.</note>
        <!--<section
            conref="../../common_caselaw/conref_content/Rosetta_case.length-LxAdv_doc.doclength.dita#Rosetta_case.length-LxAdv_doc.doclength/changes"/>-->
        <!--<section>
            <title>Changes Specific to AU01</title>
            </section>-->

    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-HK\HK03\HK03_Rosetta_case.length-LxAdv_doc.doclength.dita  -->
	

	<xsl:template match="case:length">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			
		<!--  Could not determine target element or attribute name:  </>  -->
	    <xsl:element name="doc:doclength">
	   <xsl:attribute name="num">
	       <xsl:value-of select=
	           "translate(.,translate(., '0123456789', ''), '')"/>
	   </xsl:attribute>
	        <xsl:attribute name="unit">
	            <xsl:value-of select=
	                "translate(.,translate(substring-after('0123456789',''),'', ''), '')"/>
	        </xsl:attribute>
	        <xsl:attribute name="source">
	            <xsl:text>conversion</xsl:text>
	        </xsl:attribute>
	    </xsl:element>
	</xsl:template>


    

<!-- Awantika: Not comin gin GDS -->
	<xsl:template match="case:embeddedcase/case:length"/>

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->		

</xsl:stylesheet>