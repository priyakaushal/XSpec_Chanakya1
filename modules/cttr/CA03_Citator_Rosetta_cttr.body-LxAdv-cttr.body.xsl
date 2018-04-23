<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
	xmlns:leg="http://www.lexis-nexis.com/glp/leg"
	xmlns:case="http://www.lexis-nexis.com/glp/case"
	xmlns:source_cttr="http://www.lexis-nexis.com/glp/cttr"
	xmlns:cttr="urn:x-lexisnexis:content:citator:sharedservices:1" version="2.0" exclude-result-prefixes="dita cttr source_cttr leg case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="cttr-body">
  <title>cttr:body to cttr:body <lnpid>id-CA03-13231</lnpid></title>
  <body>
    <section><title>Instructions</title><p><sourcexml>cttr:body</sourcexml> maps to the <targetxml>cttr:body</targetxml> element created as a child of
					<targetxml>cttr:citator</targetxml>. This element should be created for every converted document. </p><p>Create
					<targetxml>cttr:body/cttr:refs</targetxml> to contain the contents <sourcexml>cttr:body/cttr:content</sourcexml>, which itself is discarded.
			</p>The <sourcexml>cttr:annotations</sourcexml> elements are converted as described below, with each corresponding to a
				<targetxml>cttr:refsection</targetxml> element. </section>
  	<example>
  		<title>Source XML</title>
  		<codeblock>&lt;CITATORDOC citatordoctype="quickcite" signal="cautionary"&gt;
	&lt;cttr:body&gt;
		...
	&lt;/cttr:body&gt;
&lt;/CITATORDOC&gt;      </codeblock>
  	</example>
  	<example>
  		<title>Target XML</title>
  		<codeblock>&lt;cttr:citator treatment="cautionary"&gt;
	&lt;cttr:head&gt;
		...
	&lt;/cttr:head&gt;
	&lt;cttr:body&gt;
		&lt;cttr:refs&gt;
			...
		&lt;/cttr:refs&gt;
	&lt;/cttr:body&gt;
	&lt;doc:metadata&gt;
		...
	&lt;/doc:metadata&gt;
&lt;/cttr:citator&gt;</codeblock>
  	</example>
  </body>
	</dita:topic>


	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA03-Citator\Rosetta_cttr.body-to-LxAdv_cttr.body.dita  -->

<!-- Sudhanshu Srivastava:- 
	Edited on 23-May-2017.
	
	Template to match 'cttr:body' and converting to 'cttr:body'.
	-->
	<xsl:template match="source_cttr:body">
		<!--  Original Target XPath:  cttr:body   -->
			<cttr:body>
				<xsl:apply-templates select="@* | node() except (case:headnote|leg:info)"/>
			</cttr:body>
	</xsl:template>

	<xsl:template match="source_cttr:content">
		<!--  Original Target XPath:  cttr:refsection   -->
		<cttr:refs>
			<xsl:apply-templates select="@* | node()"/>
		</cttr:refs>
	</xsl:template>
</xsl:stylesheet>