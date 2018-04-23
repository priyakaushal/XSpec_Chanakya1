<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet	version="2.0"
						xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
						xmlns:dita="http://dita.oasis-open.org/architecture/2005/"

						xmlns:in="http://www.lexis-nexis.com/glp/in"

						xmlns:casedigest="http://www.lexisnexis.com/xmlschemas/content/legal/case-digest/1/"
						xmlns:navaid="urn:x-lexisnexis:content:navigationaid:sharedservices:1"

						exclude-result-prefixes="dita in">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Case-Summaries_Body">
	  <title>Body <lnpid>id-CA02IC-13007</lnpid></title>

	  <body>
		<p>
		  <sourcexml>in:body</sourcexml> becomes <targetxml>casedigest:body</targetxml>
		</p>
    
		<p>
		  <targetxml>casedigest:body</targetxml> element requires at least one of the following child elements:
		</p>
    
		  <p>
			  <targetxml>casedigest:actionparty</targetxml>, 
			  <targetxml>casedigest:appearances</targetxml>, 
			  <targetxml>casedigest:caseinfo</targetxml>, 
			  <targetxml>casedigest:damages</targetxml>, 
			  <targetxml>casedigest:facts</targetxml>, 
			  <targetxml>casedigest:injury</targetxml>, 
			  <targetxml>casedigest:negotiations</targetxml>, 
			  <targetxml>casedigest:outcome</targetxml>, 
			  <targetxml>casedigest:trial</targetxml>, 
			  <targetxml>casedigest:otherinfo</targetxml>, 
			  <targetxml>casesum:disposition</targetxml>, 
			  <targetxml>note</targetxml>, 
			  <targetxml>correction</targetxml>, 
			  <targetxml>casedigest:decision</targetxml>, 
			  <targetxml>ref:page</targetxml>, 
			  <targetxml>navaid:navigationaid</targetxml> 
			  and <targetxml>ref:relatedrefs</targetxml>.
		  </p>
    
		<note>Per Rosetta input, Rosetta element <sourcexml>in:body</sourcexml> contains only
			<sourcexml>table</sourcexml> element in across all samples, so
			<sourcexml>in:body/table</sourcexml> is mapped to NL XPATH:
			<targetxml>casedigest:body/navaid:navigationaid/bodytext/table</targetxml>.</note>
		<p>Please see below Rosetta to NL converted snippet:</p>
      
		  <example>
			  <title>Source XML</title>
			  <codeblock>
              
&lt;in:body&gt;
    &lt;heading&gt;
        &lt;title&gt;Injury Type Index&amp;#160;&amp;#8212;&amp;#160;D&lt;/title&gt;
    &lt;/heading&gt;
    &lt;table frame="none" pgwide="1"&gt;
        &lt;tgroup colsep="0" rowsep="0" cols="2"&gt;
            &lt;colspec colwidth="20*" align="left"/&gt;
            &lt;colspec colwidth="80*" align="left"/&gt;
            &lt;tbody&gt;
                &lt;row&gt;
                    &lt;entry&gt;
                        &lt;p-limited&gt;
                            &lt;remotelink remotekey1="INJURY-TYPE(C1D.20)" service="QUERY" xml:lang="en-CA"
                                &gt;C1D.20&lt;/remotelink&gt;
                        &lt;/p-limited&gt;
                    &lt;/entry&gt;
                    &lt;entry&gt;
                        &lt;p-limited&gt;Deconditioning&lt;/p-limited&gt;
                    &lt;/entry&gt;
                &lt;/row&gt;
                &lt;row&gt;
                    &lt;entry&gt;
                        &lt;p-limited&gt;
                            &lt;remotelink remotekey1="INJURY-TYPE(C1D.25)" service="QUERY" xml:lang="en-CA"
                                &gt;C1D.25&lt;/remotelink&gt;
                        &lt;/p-limited&gt;
                    &lt;/entry&gt;
                    &lt;entry&gt;
                        &lt;p-limited&gt;Depression&lt;/p-limited&gt;
                    &lt;/entry&gt;
                &lt;/row&gt;
                &lt;row&gt;
                    &lt;entry&gt;
                        &lt;p-limited&gt;
                            &lt;remotelink remotekey1="INJURY-TYPE(C1D.30)" service="QUERY" xml:lang="en-CA"
                                &gt;C1D.30&lt;/remotelink&gt;
                        &lt;/p-limited&gt;
                    &lt;/entry&gt;
                    &lt;entry&gt;
                        &lt;p-limited&gt;Developmental delay&lt;/p-limited&gt;
                    &lt;/entry&gt;
                &lt;/row&gt;
                &lt;row&gt;
                    &lt;entry&gt;
                        &lt;p-limited&gt;
                            &lt;remotelink remotekey1="INJURY-TYPE(C1D.35)" service="QUERY" xml:lang="en-CA"
                                &gt;C1D.35&lt;/remotelink&gt;
                        &lt;/p-limited&gt;
                    &lt;/entry&gt;
                    &lt;entry&gt;
                        &lt;p-limited&gt;Diabetes&lt;/p-limited&gt;
                    &lt;/entry&gt;
                &lt;/row&gt;
            &lt;/tbody&gt;
        &lt;/tgroup&gt;
    &lt;/table&gt;
&lt;/in:body&gt;
			  </codeblock>
		  </example>
      
		  <example>
			  <title>Target XML</title>
			  <codeblock>
              

&lt;casedigest:body&gt;
    &lt;heading&gt;
        &lt;title&gt;Injury Type Index&amp;#160;&amp;#8212;&amp;#160;D&lt;/title&gt;
    &lt;/heading&gt;
    &lt;navaid:navigationaid&gt;
        &lt;bodytext&gt;
            &lt;table frame="none" pgwide="1"&gt;
                &lt;tgroup colsep="0" rowsep="0" cols="2"&gt;
                    &lt;colspec colwidth="20*" align="left"/&gt;
                    &lt;colspec colwidth="80*" align="left"/&gt;
                    &lt;tbody&gt;
                        &lt;row&gt;
                            &lt;entry&gt;
                                &lt;p&gt;
                                    &lt;text&gt; C1D.20 &lt;/text&gt;
                                &lt;/p&gt;
                            &lt;/entry&gt;
                            &lt;entry&gt;
                                &lt;p&gt;
                                    &lt;text&gt;Deconditioning&lt;/text&gt;
                                &lt;/p&gt;
                            &lt;/entry&gt;
                        &lt;/row&gt;
                        &lt;row&gt;
                            &lt;entry&gt;
                                &lt;p&gt;
                                    &lt;text&gt; C1D.25 &lt;/text&gt;
                                &lt;/p&gt;
                            &lt;/entry&gt;
                            &lt;entry&gt;
                                &lt;p&gt;
                                    &lt;text&gt;Depression&lt;/text&gt;
                                &lt;/p&gt;
                            &lt;/entry&gt;
                        &lt;/row&gt;
                        &lt;row&gt;
                            &lt;entry&gt;
                                &lt;p&gt;
                                    &lt;text&gt; C1D.30 &lt;/text&gt;
                                &lt;/p&gt;
                            &lt;/entry&gt;
                            &lt;entry&gt;
                                &lt;p&gt;
                                    &lt;text&gt;Developmental delay&lt;/text&gt;
                                &lt;/p&gt;
                            &lt;/entry&gt;
                        &lt;/row&gt;
                        &lt;row&gt;
                            &lt;entry&gt;
                                &lt;p&gt;
                                    &lt;text&gt; C1D.35 &lt;/text&gt;
                                &lt;/p&gt;
                            &lt;/entry&gt;
                            &lt;entry&gt;
                                &lt;p&gt;
                                    &lt;text&gt;Diabetes&lt;/text&gt;
                                &lt;/p&gt;
                            &lt;/entry&gt;
                        &lt;/row&gt;
                    &lt;/tbody&gt;
                &lt;/tgroup&gt;
            &lt;/table&gt;
        &lt;/bodytext&gt;
    &lt;/navaid:navigationaid&gt;
&lt;/casedigest:body&gt;
			  </codeblock>
		  </example>
    
	  </body>

	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA02-Case_Summaries\CA02IC_INDEXDOC\Body.dita  -->

    <!-- WPK this template is correct and tested -->
	<xsl:template match="in:body">
		<!--  Original Target XPath:  casedigest:body   -->
		<casedigest:body>
			<xsl:apply-templates select="@* | node()"/>
		</casedigest:body>

	</xsl:template>

    <!-- WPK this template is correct and tested -->
    <xsl:template match="INDEXDOC/in:body/table">
		<!--  Original Target XPath:  casedigest:body/navaid:navigationaid/bodytext/table   -->
		    <navaid:navigationaid>
				<bodytext xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
				    <!-- don't want to create table element here, so this call template should hit no-context simple table template
				    match="table" and name="table".  -->
						<xsl:call-template name="table"/>
				</bodytext>
			</navaid:navigationaid>
	</xsl:template>

</xsl:stylesheet>