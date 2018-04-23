<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
	xmlns:case="http://www.lexis-nexis.com/glp/case"
	xmlns:case2="http://www.lexisnexis.com/xmlschemas/content/legal/case/1/"
	
	xmlns:ci="http://www.lexis-nexis.com/ci" xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo"
	xmlns:cttr="urn:x-lexisnexis:content:citator:sharedservices:1"
	xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0"
	exclude-result-prefixes="dita case case2 ci docinfo">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="lexiscitation">
		<title>LexisCitation <lnpid>id-UK05-27825</lnpid></title>
		<body>
			<section>
				<p>Within the same <targetxml>cttr:caseinfo/cttr:citations</targetxml> element that contains the parallel
					citations, create the LexisCitation from <sourcexml>case:parallelcite</sourcexml> that contains
						<sourcexml>ci:cite/ci:content/remotelink</sourcexml> as follows:</p>
				<ul>
					<li><sourcexml>case:parallelcite/ci:cite/ci:content/remotelink</sourcexml> becomes
							<targetxml>cttr:citations/ref:crossreference[@referencedresourcetype="judgments"]</targetxml></li>
					<li><sourcexml>remotelink/text()</sourcexml> becomes <targetxml>ref:content</targetxml>
					</li>
					<li> Create <targetxml>ref:crossreference/ref:locator/ref:locator-key</targetxml> with the following
						attributes: <ul>
							<li><targetxml>ref:key-name/@name</targetxml> is "DOC-ID".</li>
							<li>Concatenate <sourcexml>remotelink/&gt;@dpsi</sourcexml> + '-' +
									<sourcexml>remotelink/&gt;@remotekey2</sourcexml> to create
								<targetxml>key-value/@value</targetxml>.</li>
						</ul></li>
				</ul>
				<note>For LexisCitations, DO NOT create duplicate the markup to
						<targetxml>cttr:caseinfo/ref:citations/ref:cite4thisresource/lnci:cite</targetxml> for the Cite Definition.
					That instruction only applies to the generic parallel citations.</note>
				<pre>

&lt;case:parallelcite&gt;
      &lt;ci:cite&gt;
          &lt;ci:content&gt;
               &lt;remotelink dpsi="03W6" service="DOC-ID" remotekey1="DOC-ID" remotekey2="f7b81df9-b4e5-48e3-a9ec-6a75aba7e25b" status="valid"&gt;Judgment&lt;/remotelink&gt;
          &lt;/ci:content&gt;
      &lt;/ci:cite&gt;
&lt;/case:parallelcite&gt;


<b>Becomes</b>

&lt;cttr:caseinfo&gt;
 &lt;cttr:citations&gt;
   &lt;ref:crossreference referencedresourcetype="judgments"&gt;
    &lt;ref:content&gt;Judgment&lt;/ref:content&gt;
    &lt;ref:locator&gt;
       &lt;ref:locator-key&gt;
           &lt;ref:key-name name="DOC-ID"/&gt;
            &lt;ref:key-value value="03W6-f7b81df9-b4e5-48e3-a9ec-6a75aba7e25b"/&gt;
        &lt;/ref:locator-key&gt;
     &lt;/ref:locator&gt;
  &lt;/ref:crossreference&gt;
 &lt;/cttr:citations&gt;
&lt;/cttr:caseinfo&gt;

          </pre>
			</section>
			<section>
				<title>Changes</title>
				<p>2016-07-29: <ph id="change_20160729_brt">Added a note that LexisCitation should NOT be converted to
							<targetxml>cttr:caseinfo/ref:citations/ref:cite4thisresource</targetxml>. </ph></p>
				<p>2016-07-19: <ph id="change_20160719_brt">Changed source markup from <sourcexml>docinfo:doc-id</sourcexml> to
							<sourcexml>case:parallelcite</sourcexml>. </ph></p>
				<p>2016-06-24: <ph id="change_20160624_brt">Created. </ph></p>
			</section>
		</body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK05_Citator\lexiscitation.dita  -->

	<xsl:template
		match="case:parallelcite/ci:cite/ci:content/remotelink | case2:parallelcite/ci:cite/ci:content/remotelink"
		mode="remotelink">
		<!--  Original Target XPath:  cttr:citations/ref:crossreference[@referencedresourcetype="judgments"]   -->
		<!--
						Within the same cttr:caseinfo/cttr:citations element that contains the parallel citations, create the LexisCitation from case:parallelcite that
						contains ci:cite/ci:content/remotelink as follows:
						-->
		<!--<cttr:citations>-->
			<ref:crossreference referencedresourcetype="judgements">
				<ref:content>
					<xsl:value-of select="text()"/>
				</ref:content>
				<ref:locator>
					<ref:locator-key>
						<ref:key-name name="DOC-ID"/>
						<ref:key-value value="{concat(@dpsi,'-',@remotekey2)}"/>
					</ref:locator-key>
				</ref:locator>
			</ref:crossreference>
		<!--</cttr:citations>-->
	</xsl:template>
	
	<xsl:template match="text()" mode="remotelink"/>

	<!--<xsl:template match="remotelink/text()">
		<!-\-  Original Target XPath:  ref:content   -\->
		<ref:content>
			<xsl:value-of select="."/>
		</ref:content>
	</xsl:template>

	<xsl:template match="remotelink/@dpsi">
		<!-\-  Original Target XPath:  key-value/@value   -\->
		<key-value>
			<xsl:attribute name="value">
				<xsl:value-of select="."/>
			</xsl:attribute>
		</key-value>

	</xsl:template>-->

	<!--<xsl:template match="remotelink/@remotekey2">
		<!-\-  Original Target XPath:  key-value/@value   -\->
		<key-value>
			<xsl:attribute name="value">
				<xsl:value-of select="."/>
			</xsl:attribute>
		</key-value>
	</xsl:template>-->

	<!--<xsl:template match="docinfo:doc-id">

		<!-\-  Original Target XPath:     -\->
		<!-\-  Could not determine target element or attribute name:  <>  -\->			<xsl:apply-templates select="@* | node()"/>
		<!-\-  Could not determine target element or attribute name:  </>  -\->

	</xsl:template>-->

</xsl:stylesheet>