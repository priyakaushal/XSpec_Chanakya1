<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
	xmlns:proc="http://www.lexisnexis.com/xmlschemas/content/shared/process-elements/1/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0"
	exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_lnlink_service_ATTACHMENT-to-LexisAdvance_ref.lnlink">
		<title><sourcexml>lnlink[@service="QUERYLINK"]</sourcexml> to <targetxml>ref:lnlink[@service="QUERYLINK"]</targetxml>
			<lnpid>id-CCCC-10498</lnpid></title>
		<body>
			<section>
				<p><sourcexml>lnlink[@service="QUERYLINK"]</sourcexml> becomes <targetxml>ref:lnlink[@service="QUERYLINK"]</targetxml> which is populated as follows: <ul>
						<li>The attribute <sourcexml>lnlink/@status</sourcexml> is always suppressed, it is never output to the target document.</li>
						<li><sourcexml>lnlink[@service="QUERYLINK"]</sourcexml> becomes <targetxml>ref:lnlink[@service="QUERYLINK"]</targetxml></li>
						<li><sourcexml>lnlink/marker</sourcexml> becomes <targetxml>ref:lnlink/ref:marker</targetxml></li>
						<li>Create <targetxml>ref:locator</targetxml> and populate it as follows: <ul>
								<li>Create <targetxml>ref:locator-key</targetxml> and populate it as follows: <ul>
										<li><sourcexml>lnlink/key-name[@name="queryTemplatePGUID"]</sourcexml> becomes
												<targetxml>ref:locator/ref:locator-key/ref:key-name[@name="queryTemplatePGUID"].</targetxml></li>
										<li><sourcexml>lnlink/key-value/@value</sourcexml> becomes <targetxml>ref:locator/ref:locator-key/ref:key-value/@value</targetxml></li>
									</ul>
								</li>
								<li><sourcexml>lnlink/api-params</sourcexml> becomes <targetxml>ref:locator/ref:locator-params</targetxml>, and the children are mapped as follows: <ul>
										<li>For each <sourcexml>api-params/param</sourcexml> element, create a corresponding <targetxml>proc:param</targetxml> and populate the attributes: <ul>
												<li><sourcexml>param/@name</sourcexml> becomes <targetxml>proc:param/@name</targetxml></li>
												<li><sourcexml>param/@value</sourcexml> becomes <targetxml>proc:param/@value</targetxml></li>
											</ul>
										</li>
									</ul></li>
							</ul>
						</li>
					</ul>
				</p>
			</section>
			<example>
				<title>Source XML @service="QUERYLINK"</title>
				<codeblock> &lt;lnlink service="QUERYLINK"&gt; &lt;key-name name="queryTemplatePGUID"/&gt; &lt;key-value value="urn:queryTemplate:1117"/&gt; &lt;marker&gt;Find other
					documents&lt;/marker&gt; &lt;api-params&gt; &lt;param name="queryParameter1" value="162174"/&gt; &lt;param name="queryParameter2" value="100385"/&gt; &lt;param
					name="queryParameter3" value="12232"/&gt; &lt;/api-params&gt; &lt;/lnlink&gt; </codeblock>
			</example>
			<example>
				<title>Target XML @service="QUERYLINK"</title>
				<codeblock>
					<ref:lnlink service="QUERYLINK">
						<ref:marker>Find other documents</ref:marker>
						<ref:locator>
							<ref:locator-params>
								<proc:param name="queryParameter1" value="162174"/>
								<proc:param name="queryParameter2" value="100385"/>
								<proc:param name="queryParameter3" value="12232"/>
							</ref:locator-params>
						</ref:locator>
					</ref:lnlink> &lt;ref:lnlink service="QUERYLINK"&gt; &lt;ref:marker&gt;Find other documents&lt;/ref:marker&gt; &lt;ref:locator&gt; &lt;ref:locator-key&gt; &lt;ref:key-name
					name="queryTemplatePGUID"/&gt; &lt;ref:key-value value="urn:queryTemplate:1117"/&gt; &lt;/ref:locator-key&gt; &lt;ref:locator-params&gt; &lt;proc:param name="queryParameter1"
					value="162174"/&gt; &lt;proc:param name="queryParameter2" value="100385"/&gt; &lt;proc:param name="queryParameter3" value="12232"/&gt; &lt;/ref:locator-params&gt;
					&lt;/ref:locator&gt; &lt;/ref:lnlink&gt; </codeblock>
			</example>

			<section>
				<title>Changes</title>
				<p>2015-09-08: <ph id="change_20150908_SNB">Minor XPATH correction in instruction body to change <sourcexml>lnlink/@service="QUERYLINK"</sourcexml> to be
							<targetxml>lnlink[@service="QUERYLINK"]</targetxml>, and <targetxml>ref:lnlink</targetxml> to be <targetxml>ref:lnlink[@service="QUERYLINK"]</targetxml>.</ph></p>
				<p>2015-05-22: <ph id="change_20150522_JCG">Added an instruction to explicitly indicate <sourcexml>lnlink/@status</sourcexml> is always dropped (suppressed). This is a very
						low-priority change and has been added for technical correctness, particularly with respect to new CIs. Existing scripts do not have to implement this change unless needed
						since prior to the change <targetxml>lnlink/@status</targetxml> handling was not explicitly specified.</ph></p>
				<p>2014-06-18: <ph id="change_20140618_JCG">Corrected minor typos in instructions.</ph></p>
				<p>2014-06-15: <ph id="change_20140615_brt">Created.</ph></p>
			</section>
		</body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_lnlink_service_QUERYLINK-LxAdv-ref.lnlink.dita  -->

	<!--	<lnlink service="QUERYLINK">
		<key-name name="queryTemplatePGUID"/>
		<key-value value="urn:queryTemplate:1117"/>    
		<marker>Find other documents</marker>
		<api-params>
			<param name="queryParameter1" value="162174"/> 
			<param name="queryParameter2" value="100385"/> 
			<param name="queryParameter3" value="12232"/> 
		</api-params>
	</lnlink>
-->
	<xsl:template
		match="
			lnlink[@service = 'QUERYLINK']/@status
			| lnlink[@service = 'QUERYLINK']/key-name
			| lnlink[@service = 'QUERYLINK']/key-name/@name
			| lnlink[@service = 'QUERYLINK']/key-value
			| lnlink[@service = 'QUERYLINK']/key-value/@name
			"/>


	<xsl:template match="lnlink[@service = 'QUERYLINK']">
		<ref:lnlink service="QUERYLINK">
			<xsl:apply-templates select="marker"/>

			<ref:locator>
				<ref:locator-key>
					<ref:key-name>
						<xsl:attribute name="name">
							<xsl:value-of select="key-name/@name"/>
						</xsl:attribute>
					</ref:key-name>
					<ref:key-value>
						<xsl:attribute name="value">
							<xsl:value-of select="key-value/@value"/>
						</xsl:attribute>
					</ref:key-value>
				</ref:locator-key>
				<xsl:apply-templates select="api-params"/>

			</ref:locator>
		</ref:lnlink>
	</xsl:template>


</xsl:stylesheet>
