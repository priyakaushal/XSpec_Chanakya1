<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case"
	xmlns:casedigest="http://www.lexisnexis.com/xmlschemas/content/legal/case-digest/1/" xmlns:caseinfo="http://www.lexisnexis.com/xmlschemas/content/legal/case-information/1/" xmlns:ci="http://www.lexis-nexis.com/ci"
	xmlns:jurisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/jurisdiction-info/1/" xmlns:dig="http://www.lexis-nexis.com/glp/dig" version="2.0" exclude-result-prefixes="dita dig case ci">
	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_case.info-to-LexisAdvance_casedigest.caseinfo">
		<title>case:info-to-casedigest:caseinfo <lnpid>id-UK03-27429</lnpid></title>
		<body>
			<p>
				<ul>
					<li>
						<sourcexml>dig:body/dig:info/case:info</sourcexml> becomes <targetxml>casedigest:head/casedigest:caseinfo</targetxml>. <note> Please note that the tag <sourcexml>dig:info</sourcexml> is a container element and is omitted. </note>
						<note>Conversion should not create consecutive <targetxml>casedigest:caseinfo</targetxml> elements. When 2 or more consecutive sibling source elements map to <targetxml>casedigest:caseinfo</targetxml>, data should be merged to a
							single <targetxml>casedigest:caseinfo</targetxml> element unless this would hamper content ordering.</note>
						<pre>
&lt;DIGESTDOC&gt;
  &lt;dig:body&gt;
    &lt;dig:info&gt;
      &lt;case:info&gt;..&lt;/case:info&gt;
    &lt;/dig:info&gt;
  &lt;/dig:body&gt;
&lt;/DIGESTDOC&gt;

<b>Becomes</b>
&lt;casedigest:casedigest&gt;
  &lt;casedigest:head&gt;
    &lt;casedigest:caseinfo&gt;...&lt;/casedigest:caseinfo&gt;
  &lt;/casedigest:head&gt;  
&lt;/casedigest:casedigest&gt;
</pre>
					</li>
				</ul>
			</p>
			<section>
				<title>Changes</title>
				<p>2013-07-19: <ph id="change_20130719_DSF">Changed the target XPath to <b>casedigest:head</b>/casedigest:caseinfo.</ph></p>
			</section>
		</body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK03_CaseDigest\Rosetta_case.info-to-LexisAdvance_casedigest.caseinfo.dita  -->

	<!-- Webstar 7037646 - 2017/11/01 - CSN - suppress output of case:parallelcite from ALL case:courtcite.   It is output into head/ref:citations explicitly. -->
	<xsl:template match="case:info[parent::dig:info][not(preceding-sibling::case:info)]">
		<casedigest:caseinfo>
			<xsl:apply-templates select="node() except case:parallelcite"/>
			<!-- Get the other case:infos within THIS dig:info -->
			<xsl:apply-templates select="parent::dig:info/case:info[preceding-sibling::case:info]/node() except parent::dig:info/case:info[preceding-sibling::case:info]/case:parallelcite"/>
			<!-- Get the other caseinfos within subsequent dig:infos -->
			<xsl:apply-templates select="parent::dig:info/following-sibling::dig:info/case:info/node() except parent::dig:info/following-sibling::dig:info/case:info/case:parallelcite"/>
			<!-- collect all the catchwordgrp elements here so they are all in the casedigest:caseinfo -->
			<xsl:apply-templates select="/DIGESTDOC/dig:body/dig:info/catchwordgrp | /DIGESTDOC/dig:body/level/bodytext/case:embeddedcase/case:headnote/catchwordgrp | /DIGESTDOC/dig:body/level/bodytext/case:embeddedcase/case:headnote/catchwordgrp"/>
		</casedigest:caseinfo>
	</xsl:template>

	<!-- Only process the first sibling case:info.  These are hadled in the template above. -->
	<xsl:template match="case:info[parent::dig:info][preceding-sibling::case:info]"/>
	
	<!-- Only process the first sibling dig:info.  These are hadled in the template above. -->
	<xsl:template match="dig:info[preceding-sibling::dig:info]"/>

	<xsl:template match="case:info[parent::case:headnote][not(preceding-sibling::case:info)]" priority="2">
		<caseinfo:caseinfo>
			<xsl:apply-templates select="node() except case:parallelcite"/>
			<xsl:apply-templates select="case:courtinfo/case:courtnum | case:courtinfo/case:dates | case:courtinfo/case:judges"/>
		</caseinfo:caseinfo>
	</xsl:template>

</xsl:stylesheet>
