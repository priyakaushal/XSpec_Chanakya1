<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
	xmlns:case="http://www.lexis-nexis.com/glp/case"
	xmlns:compcase="urn:x-lexisnexis:content:compositecourtcase:sharedservices:1"
	version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/"
		id="case.judgment">
		<title>case:judgment <lnpid>id-UK02-27224</lnpid></title>
		<body>
			<section>
				<p>
					<sourcexml class="+ topic/keyword xml-d/sourcexml "
						>case:judgment</sourcexml> becomes <targetxml
						class="+ topic/keyword xml-d/targetxml "
						>compcase:body/compcase:caseinstance/compcase:caseinstancebody/courtcase:opinions/courtcase:opinion</targetxml>
					attributes <sourcexml class="+ topic/keyword xml-d/sourcexml "
						>@subdoc</sourcexml> becomes <targetxml
						class="+ topic/keyword xml-d/targetxml ">@includeintoc</targetxml>
					and <sourcexml class="+ topic/keyword xml-d/sourcexml "
						>@toc-caption</sourcexml> becomes <targetxml
						class="+ topic/keyword xml-d/targetxml "
						>@alternatetoccaption</targetxml> . </p>
			</section>

			<example>
				<title>Source XML</title>
				<codeblock> &lt;case:judgment subdoc="true" toc-caption="SWIFT J."&gt;
					&lt;case:judgmentbody&gt; &lt;pgrp&gt; &lt;p&gt; &lt;text&gt; By the
					Housing Act 1925, s 64, power to acquire landcompulsorily is conferred
					upon local authorities. That section provides that a local authority
					may be authorised to purchase land compulsorily for the purpose of
					part III of the Act by means of an order submitted to the Minister and
					confirmed by him in accordance with sched III of the Act. That section
					has been amended, but the substance of it remains. Under that section
					the Sunderland Corporation made an order by which they proposed to
					acquire compulsorily land in Durham Road, belonging to Mr Allen Horn,
					consisting of some 102 acres. Part of that land they desired for the
					purpose of building houses and part of it they desired for the purpose
					of enlarging a public park. There was a point originally raised in the
					notice of appeal to the effect that under this procedure, there was no
					power in the corporation to acquire land for the purpose of a public
					park. That point has been abandoned, and abandoned in this case for
					all time. Some day it may have to be decided. It does not fall to be
					decided either today, or any day in regard of this particular land and
					this particular corporation and this particular park. &lt;/text&gt;
					&lt;/p&gt; &lt;/pgrp&gt; &lt;/case:judgmentbody&gt;
					&lt;/case:judgment&gt; </codeblock>
			</example>

			<example>
				<title>Target XML</title>
				<codeblock> &lt;courtcase:opinion includeintoc="true"
					alternatetoccaption="Perram  J."&gt; &lt;bodytext&gt; &lt;pgrp&gt;
					&lt;p&gt; &lt;text&gt; By the Housing Act 1925, s 64, power to acquire
					landcompulsorily is conferred upon local authorities. That section
					provides that a local authority may be authorised to purchase land
					compulsorily for the purpose of part III of the Act by means of an
					order submitted to the Minister and confirmed by him in accordance
					with sched III of the Act. That section has been amended, but the
					substance of it remains. Under that section the Sunderland Corporation
					made an order by which they proposed to acquire compulsorily land in
					Durham Road, belonging to Mr Allen Horn, consisting of some 102 acres.
					Part of that land they desired for the purpose of building houses and
					part of it they desired for the purpose of enlarging a public park.
					There was a point originally raised in the notice of appeal to the
					effect that under this procedure, there was no power in the
					corporation to acquire land for the purpose of a public park. That
					point has been abandoned, and abandoned in this case for all time.
					Some day it may have to be decided. It does not fall to be decided
					either today, or any day in regard of this particular land and this
					particular corporation and this particular park. &lt;/text&gt;
					&lt;/p&gt; &lt;/pgrp&gt; &lt;/bodytext&gt; &lt;/courtcase:opinion&gt;
				</codeblock>
			</example>

		</body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK02-Comp_Cases\case.judgment.dita  -->
  
  <xsl:template match="case:judgment">
    <xsl:apply-templates select="case:constituents[not(preceding-sibling::*)]"/>
    <courtcase:opinion xmlns:courtcase="http://www.lexisnexis.com/xmlschemas/content/legal/courtcase/1/">
      <xsl:apply-templates select="@* | node()"/>
    </courtcase:opinion>
  </xsl:template>

	<xsl:template match="@subdoc">
		<!--  Original Target XPath:  @includeintoc   -->
		<xsl:attribute name="includeintoc">
			<xsl:value-of select="."/>
		</xsl:attribute>
	</xsl:template>

	<xsl:template match="@toc-caption">
		<!--  Original Target XPath:  @alternatetoccaption   -->
		<xsl:attribute name="alternatetoccaption">
			<xsl:value-of select="."/>
		</xsl:attribute>
	</xsl:template>

</xsl:stylesheet>
