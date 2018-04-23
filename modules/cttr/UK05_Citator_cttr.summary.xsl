<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:ci="http://www.lexis-nexis.com/ci"
	xmlns:source_cttr="http://www.lexis-nexis.com/glp/cttr" 
	xmlns:cttr="urn:x-lexisnexis:content:citator:sharedservices:1"
	xmlns:lnci="http://www.lexisnexis.com/xmlschemas/content/shared/citations/1/"
	xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl"
	version="2.0"
	exclude-result-prefixes="dita ci source_cttr xd">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="cttr.summary">
		<title>cttr:summary <lnpid>id-UK05-27815</lnpid></title>
		<body>
			<section>
				<ul>
					<li>
						<sourcexml>cttr:summary</sourcexml> becomes <targetxml>cttr:descriptors/cttr:descriptorsection
							@descriptortype="catchwords-and-digest"/casesum:editorialsummary
							@summarysource="lexis-casesearch-editorial"</targetxml> and the child element is described below : <ul>
							<li>
								<sourcexml>p</sourcexml> becomes <targetxml>p</targetxml> and the child element is described below : <ul>
									<li>
										<sourcexml>text</sourcexml> becomes <targetxml>text</targetxml>, and the children processed as
										described under General Markup, except as described below. <ul>
											<li><sourcexml>ci:pinpoint</sourcexml> becomes <targetxml>lnci:pinpoint</targetxml>. </li>
											<li>Any instances of <sourcexml>nl</sourcexml> before the first text are dropped.</li>
											<li>For multiple instances (two or more) of <sourcexml>nl</sourcexml> between text, end the
												previous <targetxml>p/text</targetxml> markup, and replace the multiple instances of
													<sourcexml>nl</sourcexml> with a new instance of <targetxml>p/text</targetxml>.</li>
										</ul>
									</li>
								</ul>
							</li>
						</ul>
						<pre>
&lt;cttr:summary&gt;
  &lt;p&gt;
    &lt;text&gt;&lt;nl/&gt;&lt;nl/&gt;A tenant was in possession of plots of land under an agreement for leases
                        to be granted when he should have fulfilled certain conditions as to
                        building. The intention of the parties was, in the view of the court, that
                        the agreements should be regarded as a lease. The conditions were, to the
                        landlords knowledge, not fulfilled within the appointed time, but after that
                        date the landlord demanded rent as under the leases, and the tenant paid it:
                        Held the landlord could not, on receiving the rent, stipulate that it was
                        received without prejudice to any breaches of covenant made up to that time
                        in the agreement for leases. &lt;nl/&gt;&lt;nl/&gt;
                        Conveyancing Act, 1881 (c 1) s 14, applies to
                        an agreement for a lease of which the tenant is entitled, independently of
                        the Act, to demand specific performance.
    &lt;/text&gt;
  &lt;/p&gt;
&lt;/cttr:summary&gt;
<b>Becomes</b>
&lt;casesum:editorialsummary summarysource="lexis-casesearch-editorial"&gt;
  &lt;p&gt;
    &lt;text&gt;A tenant was in possession of plots of land under an agreement for 
          leases to be granted when he should have fulfilled certain conditions 
          as to building. The intention of the parties was, in the view of the court, 
          that the agreements should be regarded as a lease. The conditions were,
          to the landlords knowledge, not fulfilled within the appointed time, but
          after that date the landlord demanded rent as under the leases, and the
          tenant paid it: Held the landlord could not, on receiving the rent,
          stipulate that it was received without prejudice to any breaches of
          covenant made up to that time in the agreement for leases.  &lt;/text&gt;
&lt;/p&gt;
&lt;p&gt;
    &lt;text&gt;
           Conveyancing Act, 1881 (c 1) s 14, applies to an agreement for a lease of which the
           tenant is entitled, independently of the Act, to demand specific
            performance.
    &lt;/text&gt;
  &lt;/p&gt;
&lt;/casesum:editorialsummary&gt;

</pre>
					</li>
				</ul>
			</section>
			<section>
				<title>Changes</title>
				<p>2016-02-26: <ph id="change_20160226_cttr.summary_brt">Added rule to use instructions under General Markup to
						convert the children of <sourcexml>text</sourcexml>. </ph></p>
				<p>2016-01-21: <ph id="change_20160121_cttr.summary_brt">Added instructions for handling multiple instances of
							<sourcexml>nl</sourcexml>. </ph></p>
			</section>
		</body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK05_Citator\cttr.summary.dita  -->
	<xsl:template match="source_cttr:summary[string-length(normalize-space(.))>0]">
		<!--  Original Target XPath:  cttr:descriptors/cttr:descriptorsection@descriptortype="catchwords-and-digest"/casesum:editorialsummary@summarysource="lexis-casesearch-editorial"   -->
		<casesum:editorialsummary summarysource="lexis-casesearch-editorial" xmlns:casesum="http://www.lexisnexis.com/xmlschemas/content/legal/case-summary/1/">
			<xsl:apply-templates select="@* | node()"/>
		</casesum:editorialsummary>
	</xsl:template>

  <!-- if there is no content (e.g., if "No summary is available." has been removed from source) do not output element. -->
  <xsl:template match="source_cttr:summary[string-length(normalize-space(.))=0]"/>

	<xsl:template match="ci:pinpoint">
		<!--  Original Target XPath:  lnci:pinpoint   -->
		<lnci:pinpoint>
			<xsl:apply-templates select="@* | node()"/>
		</lnci:pinpoint>
	</xsl:template>
	
	<xd:doc>
		<xd:desc>
			<xd:p>Since cttr:summary/p requires special handling override the default 'p' template.</xd:p>
		</xd:desc>
	</xd:doc>
	<xsl:template match="p[string-length(normalize-space())>0][parent::source_cttr:summary]">
		<xsl:apply-templates/>
	</xsl:template>
	
	<xd:doc>
		<xd:desc>
			<xd:p>Within cttr:summary, for multiple instances (two or more) of nl between text, end the previous p/text markup, and replace the multiple instances of nl with a new
				instance of p/text.</xd:p>
		</xd:desc>
	</xd:doc>
	<xsl:template match="p[parent::source_cttr:summary]/text">
		<!-- JD: NOTE: the intent is to create new <p><text> when <nl/> <nl/>
			is found, but the DT implementation seems to be breaking on a single <nl/> -->
		<!--xsl:for-each-group select="node()" 
			group-adjacent="not(self::nl[following-sibling::*[1][name()='nl']])"-->
		<xsl:for-each-group select="node()" 
			group-adjacent="not(self::nl)">
				<xsl:if test="current-grouping-key()">
					<p xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
						<text>
							<xsl:apply-templates select="current-group()"/>
						</text>
					</p>
				</xsl:if>		
		</xsl:for-each-group>
	</xsl:template>

	<xd:doc>
		<xd:desc>
			<xd:p>Note that from for-each-group parent context is gone; this prevents the second instance of 'nl' from being output </xd:p>
		</xd:desc>
	</xd:doc>
	<!--  -->
	<xsl:template match="nl[parent::text/parent::p and not(preceding-sibling::text())]" />

</xsl:stylesheet>