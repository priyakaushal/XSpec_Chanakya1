<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:casesum="http://www.lexisnexis.com/xmlschemas/content/legal/case-summary/1/" xmlns:compcase="urn:x-lexisnexis:content:compositecourtcase:sharedservices:1" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="case.disposition">
  <title>case:disposition <lnpid>id-UK02-27218</lnpid></title>
  <body>
    <section>
      <p>
        <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:disposition</sourcexml> becomes
            <targetxml class="+ topic/keyword xml-d/targetxml ">compcase:caseinstance/compcase:caseinstancebody/casesum:disposition</targetxml> and
            <targetxml class="+ topic/keyword xml-d/targetxml ">p</targetxml> is the required child
          for <targetxml class="+ topic/keyword xml-d/targetxml ">casesum:disposition.</targetxml>.
      </p>
    </section>
    
    <example>
      <title>Source XML</title>
      <codeblock>

&lt;case:disposition&gt;Appeal allowed. Leave to appeal to the House of Lords refused.&lt;/case:disposition&gt;

      </codeblock>
    </example>
    
    <example>
      <title>Target XML</title>
      <codeblock>

&lt;compcase:caseinstance&gt;
  &lt;compcase:caseinstancebody&gt;
    &lt;casesum:disposition&gt;
        &lt;p&gt;
            &lt;text&gt;Appeal allowed. Leave to appeal to the House of Lords refused.&lt;/text&gt;
        &lt;/p&gt;
    &lt;/casesum:disposition&gt;
  &lt;/compcase:caseinstancebody&gt;
&lt;/compcase:caseinstance&gt;

      </codeblock>
    </example>
    
  </body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK02-Comp_Cases\case.disposition.dita  -->

	<xsl:template match="case:disposition">
		<!--  Original Target XPath:  compcase:caseinstance/compcase:caseinstancebody/casesum:disposition   -->
		<casesum:disposition>
			<p xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
				<text>
					<xsl:apply-templates select="@* | node()"/>
				</text>
			</p>
		</casesum:disposition>
		<!-- JD: match DT output by wrapping following <note>s in <courtcase:opinions> -->
		<xsl:if test="following-sibling::*[1][self::note]">
			<xsl:apply-templates select="following-sibling::*[1][self::note]"/>
		</xsl:if>
	</xsl:template>

</xsl:stylesheet>