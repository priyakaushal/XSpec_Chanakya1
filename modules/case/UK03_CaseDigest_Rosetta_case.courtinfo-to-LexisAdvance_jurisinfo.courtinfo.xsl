<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:dig="http://www.lexis-nexis.com/glp/dig"
	xmlns:jurisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/jurisdiction-info/1/" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_case.courtinfo-to-LexisAdvance_jurisinfo.courtinfo">
		<title>case:courtinfo-to-jurisinfo:courtinfo <lnpid>id-UK03-27416</lnpid></title>
		<body>
			<p>
				<ul>
					<li>
						<sourcexml>dig:body/dig:info/case:info/case:courtinfo</sourcexml> becomes <targetxml>casedigest:head/casedigest:caseinfo/jurisinfo:courtinfo</targetxml>.
						<pre>
&lt;DIGESTDOC&gt;
  &lt;dig:body&gt;
    &lt;dig:info&gt;
      &lt;case:info&gt;
        &lt;case:courtinfo&gt;...
        &lt;/case:courtinfo&gt;
      &lt;/case:info&gt;
    &lt;/dig:info&gt;
  &lt;/dig:body&gt;
&lt;/DIGESTDOC&gt;

<b>Becomes</b>

&lt;casedigest:casedigest&gt;
  &lt;casedigest:head&gt;
    &lt;casedigest:caseinfo&gt;
      &lt;jurisinfo:courtinfo&gt;...
      &lt;/jurisinfo:courtinfo&gt;
    &lt;/casedigest:caseinfo&gt;
  &lt;/casedigest:head&gt;  
&lt;/casedigest:casedigest&gt;
</pre>
					</li>
					<li>
						<note>If input document is having xpath "<sourcexml>case:info/case:courtinfo/case:courtloc</sourcexml>" then it becomes "<targetxml>casedigest:caseinfo/jurisinfo:courtinfo/jurisinfo:courttype</targetxml>".</note>
						<note>If input document is having scenario "<sourcexml>case:info/case:courtinfo/case:courtloc</sourcexml>" then it becomes
								"<targetxml>casedigest:caseinfo/jurisinfo:courtinfo/jurisinfo:jurisdiction/jurisinfo:location/location:city</targetxml>".</note>
						<pre>

&lt;DIGESTDOC&gt;
  &lt;dig:body&gt;
    &lt;dig:info&gt;
      &lt;case:info&gt;
        &lt;case:courtinfo&gt;
          &lt;case:courttype&gt;County Court&lt;/case:courttype&gt;
          &lt;case:courtloc&gt;Tunbridge Wells&lt;/case:courtloc&gt;
        &lt;/case:courtinfo&gt;
      &lt;/case:info&gt;
    &lt;/dig:info&gt;
  &lt;/dig:body&gt;
&lt;/DIGESTDOC&gt;

<b>Becomes</b>

&lt;casedigest:casedigest&gt;
  &lt;casedigest:head&gt;
    &lt;casedigest:caseinfo&gt;
      &lt;jurisinfo:courtinfo&gt;
        &lt;jurisinfo:courttype&gt;County Court&lt;/jurisinfo:courttype&gt;
        &lt;jurisinfo:jurisdiction&gt;
            &lt;jurisinfo:location&gt;
              &lt;location:city&gt;Tunbridge Wells&lt;/location:city&gt;
            &lt;/jurisinfo:location&gt;
        &lt;/jurisinfo:jurisdiction&gt;
     &lt;/jurisinfo:courtinfo&gt;
    &lt;/casedigest:caseinfo&gt;
  &lt;/casedigest:head&gt;  
&lt;/casedigest:casedigest&gt;
</pre>
					</li>
				</ul>
			</p>
			<section>
				<title>Changes</title>
				<p>2016-03-08: <ph id="change_20160308_SS">Added the instruction for handling input scenarios - "<sourcexml>case:info/case:courtinfo/case:courtloc</sourcexml>" and "<sourcexml>case:info/case:courtinfo/case:courttype</sourcexml>". RFA
						#2791</ph></p>
				<p>2013-07-19: <ph id="change_20130719_DSF">Changed the target XPath to <b>casedigest:head</b>/casedigest:caseinfo/jurisinfo:courtinfo.</ph></p>
			</section>
		</body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK03_CaseDigest\Rosetta_case.courtinfo-to-LexisAdvance_jurisinfo.courtinfo.dita  -->

	<!--Vikas Rohilla : Updated the Template Initial-->

	<xsl:template match="case:courtinfo">
		<xsl:if test="case:courtcode | case:courtname | case:courttype | case:juris | case:courtloc">
			<jurisinfo:courtinfo>
				<xsl:apply-templates select="case:courtcode, case:courtname, case:courttype"/>
				<xsl:if test="case:juris | case:courtloc">
					<jurisinfo:jurisdiction>
						<xsl:apply-templates select="case:juris | case:courtloc"/>
					</jurisinfo:jurisdiction>
				</xsl:if>
			</jurisinfo:courtinfo>
		</xsl:if>
		<!-- for case:courtnum | case:dates | case:judges -->
		<xsl:apply-templates select="node() except (case:courtcode | case:courtname | case:courttype | case:juris | case:courtloc)"/>
	</xsl:template>

	<xsl:template match="case:courtinfo[parent::case:judgment]">
		<xsl:apply-templates select="case:judges"/>
	</xsl:template>

	<xsl:template match="case:courttype">
		<jurisinfo:courttype>
			<xsl:apply-templates/>
		</jurisinfo:courttype>
	</xsl:template>

	<!-- CSN - 2017/10/18 Added this template to match DT -->
	<xsl:template match="case:courtcite"/>

</xsl:stylesheet>
