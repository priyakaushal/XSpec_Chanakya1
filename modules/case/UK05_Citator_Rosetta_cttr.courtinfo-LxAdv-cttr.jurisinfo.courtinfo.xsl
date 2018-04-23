<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
	xmlns:case="http://www.lexis-nexis.com/glp/case"
	xmlns:case2="http://www.lexisnexis.com/xmlschemas/content/legal/case/1/"
	xmlns:source_cttr="http://www.lexis-nexis.com/glp/cttr"
	xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/"
	xmlns:jurisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/jurisdiction-info/1/" version="2.0"
	exclude-result-prefixes="dita case case2 source_cttr">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/"
		id="Rosetta_cttr.courtinfo-to-LexisAdvance_cttr.jurisinfo.courtinfo">
		<title>case:courtinfo-to-jurisinfo:courtinfo <lnpid>id-UK05-27821</lnpid></title>
		<body>
			<p>
				<sourcexml>case:courtinfo</sourcexml> becomes <targetxml>jurisinfo:courtinfo</targetxml>. The children are
				converted as follows: <ul>
					<li>
						<sourcexml>case:courtname</sourcexml> becomes <targetxml>jurisinfo:courtname</targetxml>.
						<pre>
&lt;case:info&gt;
  &lt;case:courtinfo&gt;
    &lt;case:courtname&gt;Court of Appeal&lt;/case:courtname&gt;
  &lt;/case:courtinfo&gt;
&lt;/case:info&gt;
<b>Becomes</b>
&lt;cttr:caseinfo&gt;
  &lt;jurisinfo:courtinfo&gt;
    &lt;jurisinfo:courtname&gt;Court of Appeal&lt;/jurisinfo:courtname&gt;
  &lt;/jurisinfo:courtinfo&gt;
&lt;/cttr:caseinfo&gt; 

</pre>
					</li>
					<li>
						<sourcexml>case:courtcode</sourcexml> becomes
							<targetxml>jurisinfo:courtinfo/jurisinfo:alternatecourtcode/@alternatecourtcode</targetxml> and create
							<targetxml>doc:legacy-metadata/meta/metaitem</targetxml> and the attributes will be populated as
							<targetxml>@name="case:courtcode"</targetxml> and <targetxml>@value</targetxml> will be the value of
							<sourcexml>case:courtcode</sourcexml>. <note>PLEASE NOTE that the element
								<sourcexml>doc:legacy-metadata</sourcexml> needs to be created only for
								<sourcexml>case:courtcode</sourcexml> occurring within
								<sourcexml>case:headnote/case:info/case:courtinfo</sourcexml>. There is NO NEED to create
								<sourcexml>doc:legacy-metadata</sourcexml> for all other occurrences, eg.,
								<sourcexml>cttr:annot/case:info/case:courtinfo</sourcexml>. The element
								<sourcexml>cttr:annot/case:info/case:courtinfo/case:courtcode</sourcexml> becomes
								<targetxml>jurisinfo:courtinfo/ jurisinfo:alternatecourtcode/@alternatecourtcode</targetxml>.</note>
						<pre>
&lt;case:info&gt;
  &lt;case:courtinfo&gt;
    &lt;case:courtcode&gt;CA&lt;/case:courtcode&gt;
  &lt;/case:courtinfo&gt;
&lt;/case:info&gt;
<b>Becomes</b>
&lt;cttr:caseinfo&gt;
  &lt;jurisinfo:courtinfo&gt;
    &lt;jurisinfo:alternatecourtcode alternatecourtcode="CA"/&gt;
  &lt;/jurisinfo:courtinfo&gt;
&lt;/cttr:caseinfo&gt;

&lt;doc:legacy-metadata metadatasource="lbu-meta"&gt;...
  &lt;meta&gt;
    &lt;metaitem name="case:courtcode" value="CA"/&gt;
  &lt;/meta&gt;
&lt;/doc:legacy-metadata&gt;

</pre>
					</li>
					<li>
						<sourcexml>case:courtinfo/abbrvname</sourcexml> becomes
							<targetxml>jurisinfo:courtinfo/meta/metaitem</targetxml>, regardless of the value of its attribute
							<sourcexml>@ln.user-displayed</sourcexml>. The source element name <sourcexml>abbrvname</sourcexml>
						becomes <targetxml>metaitem[@name]</targetxml> and its value becomes
						<targetxml>metaitem[@value]</targetxml>. <b>Scenario:1</b>
						<pre>
&lt;case:info&gt;
  &lt;case:courtinfo&gt;
    &lt;abbrvname ln.user-displayed="false"&gt;CA&lt;/abbrvname&gt;
  &lt;/case:courtinfo&gt;
&lt;/case:info&gt;
<b>Becomes</b>
&lt;cttr:caseinfo&gt;
  &lt;jurisinfo:courtinfo&gt;
    &lt;meta&gt;
      &lt;metaitem @name="abbrvname" @value="CA" /&gt;
    &lt;/meta&gt;
  &lt;/jurisinfo:courtinfo&gt;
&lt;/cttr:caseinfo&gt; 


</pre>
						<b>Scenario:2</b>
						<pre>
&lt;case:info&gt;
  &lt;case:courtinfo&gt;
    &lt;abbrvname ln.user-displayed="true"&gt;CA&lt;/abbrvname&gt;
  &lt;/case:courtinfo&gt;
&lt;/case:info&gt;
<b>Becomes</b>
&lt;cttr:caseinfo&gt;
  &lt;jurisinfo:courtinfo&gt;
    &lt;meta&gt;
      &lt;metaitem @name="abbrvname" @value="CA" /&gt;
    &lt;/meta&gt;
  &lt;/jurisinfo:courtinfo&gt;
&lt;/cttr:caseinfo&gt; 


</pre>
					</li>
				</ul>
			</p>
		</body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK05_Citator\Rosetta_cttr.courtinfo-to-LexisAdvance_cttr.jurisinfo.courtinfo.dita  -->
	<xsl:template match="case:courtinfo | case2:courtinfo">
		<!--  Original Target XPath:  jurisinfo:courtinfo   -->
		<jurisinfo:courtinfo>
			<xsl:apply-templates select="@* | node()"/>
		</jurisinfo:courtinfo>
	</xsl:template>

	<xsl:template match="case:courtname | case2:courtname">
		<!--  Original Target XPath:  jurisinfo:courtname   -->
		<jurisinfo:courtname>
			<xsl:apply-templates select="@* | node()"/>
		</jurisinfo:courtname>
	</xsl:template>

	<xsl:template match="case:courtcode | case2:courtcode">
		<!--  Original Target XPath:  jurisinfo:courtinfo/jurisinfo:alternatecourtcode/@alternatecourtcode   -->
		<jurisinfo:alternatecourtcode>
			<xsl:attribute name="alternatecourtcode">
				<xsl:apply-templates />
			</xsl:attribute>
		</jurisinfo:alternatecourtcode>
	</xsl:template>

	<xsl:template match="case:courtcode | case2:courtcode"
		mode="doc:legacy-metadata">
		<!--  Original Target XPath:  jurisinfo:courtinfo/jurisinfo:alternatecourtcode/@alternatecourtcode   -->
		<jurisinfo:courtinfo>
			<jurisinfo:alternatecourtcode>
				<xsl:attribute name="alternatecourtcode">
					<xsl:apply-templates select="node()"/>
				</xsl:attribute>
			</jurisinfo:alternatecourtcode>
		</jurisinfo:courtinfo>
	</xsl:template>

	<xsl:template match="case:headnote/case:info/case:courtinfo | case2:headnote/case2:info/case2:courtinfo ">
		<!--  Original Target XPath:  jurisinfo:courtinfo/jurisinfo:alternatecourtcode/@alternatecourtcode   -->
		<jurisinfo:courtinfo>
			<!--<jurisinfo:alternatecourtcode>
				<xsl:attribute name="alternatecourtcode">
					<xsl:value-of select="case:courtcode/text() | case2:courtcode/text()"/>
				</xsl:attribute>
			</jurisinfo:alternatecourtcode>-->
			<!-- JD: attempting to match DT order; will require adding in other elements as they are discovered -->
			<!--<xsl:apply-templates select="node()"/>-->
			<xsl:apply-templates select="case:courtcode | case2:courtcode"/>
			<xsl:apply-templates select="case:courtname | case2:courtname"/>
			<xsl:apply-templates select="abbrvname"/>			
			<!-- handle other content -->
			<xsl:apply-templates select="node() except (case:courtcode, case2:courtcode, case:courtname, case2:courtname, abbrvname)"/>
		</jurisinfo:courtinfo>
	</xsl:template>

	<xsl:template match="source_cttr:annot/case:info/case:courtinfo | source_cttr:annot/case2:info/case2:courtinfo">
		<!--  Original Target XPath:  jurisinfo:courtinfo/jurisinfo:alternatecourtcode/@alternatecourtcode   -->
		<jurisinfo:courtinfo>
				<!-- JD: attempting to match DT order; will require adding in other elements as they are discovered -->
				<xsl:apply-templates select="node()"/>						
		</jurisinfo:courtinfo>
	</xsl:template>

	<xsl:template match="source_cttr:annot/case:info/case:courtinfo/case:courtcode | source_cttr:annot/case2:info/case2:courtinfo/case2:courtcode">
		<!--  Original Target XPath:  jurisinfo:courtinfo/jurisinfo:alternatecourtcode/@alternatecourtcode   -->
		<jurisinfo:courtinfo>
			<jurisinfo:alternatecourtcode>
				<xsl:attribute name="alternatecourtcode">
					<xsl:apply-templates select="node()"/>
				</xsl:attribute>
			</jurisinfo:alternatecourtcode>
		</jurisinfo:courtinfo>
	</xsl:template>
	
	<xsl:template match="abbrvname">
		<!--  Original Target XPath:  metaitem[@name]   -->
		<meta xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
			<metaitem name="abbrvname">
				<xsl:attribute name="value">
					<xsl:apply-templates/>
				</xsl:attribute>
			</metaitem>
		</meta>
	</xsl:template>

</xsl:stylesheet>