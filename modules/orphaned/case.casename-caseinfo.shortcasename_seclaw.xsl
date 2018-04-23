<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:caseinfo="http://www.lexisnexis.com/xmlschemas/content/legal/case-information/1/" version="2.0" exclude-result-prefixes="dita case">
	
	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="case.casename">
		<title>case:casename <lnpid>id-CA02DS-12811</lnpid></title>
		<body>
			<section>
				<ul>
					<li>
						<sourcexml>case:casename</sourcexml> becomes
						<targetxml>caseinfo:casename</targetxml> and
						populate the child as below: <ul>
							<li>Create <targetxml>caseinfo:shortcasename</targetxml>
							</li>
						</ul>
						
						
						<pre>

&lt;case:casename&gt;Canada (Attorney General) v. Buckley&lt;/case:casename&gt;

            </pre>
						<b>Becomes</b>
						<pre>

&lt;caseinfo:caseinfo&gt;
  &lt;caseinfo:casename&gt;
    &lt;caseinfo:shortcasename&gt;Canada (Attorney General) v. Buckley&lt;/caseinfo:shortcasename&gt;
  &lt;/caseinfo:casename&gt;
&lt;/caseinfo:caseinfo&gt;

          </pre>    
						
						<note>Any <sourcexml>nl</sourcexml> elements that occur inside
							<sourcexml>case:casename</sourcexml> should be suppressed if they are preceded or
							followed by a space. Any <sourcexml>nl</sourcexml> elements that are not preceded or
							followed by a space should be converted into a single space character.</note>
						
						<pre>

&lt;case:casename&gt;Between&lt;nl/&gt; Her Majesty the Queen, and&lt;nl/&gt; Joseph Moore&lt;/case:casename&gt;

            </pre>
						<b>Becomes</b>
						<pre>

&lt;casedigest:head&gt;
    &lt;casedigest:caseinfo&gt;
        &lt;caseinfo:casename&gt;
            &lt;caseinfo:fullcasename&gt;Between Her Majesty the Queen, and Joseph Moore&lt;/caseinfo:fullcasename&gt;
        &lt;/caseinfo:casename&gt;
    &lt;/casedigest:caseinfo&gt;
&lt;/casedigest:head&gt;

           </pre>
					</li>
				</ul>
			</section>
			<section>
				<title>Changes</title>
				<p>2013-04-24: <ph id="change_20130424_AS">Fullcasename displayed in multiple lines under casename... "DB issue #1151</ph></p>
				<p>2013-02-26: <ph id="change_20130226_WL_1">Created a new dita file case.casename.DS.dita to change the mapping of 
					<targetxml>caseinfo:fullcasename</targetxml> to <targetxml>caseinfo:shortcasename</targetxml> for seclaw only. </ph></p>   
			</section>
		</body>
	</dita:topic>
	
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA02-Case_Summaries\CA02DS_DIGESTDOC_to_seclaw\case.casename.DS.dita  -->
	
	<xsl:template match="case:casename">
		<!--  Original Target XPath:  caseinfo:casename   -->
		<caseinfo:casename>
			<caseinfo:shortcasename>
				<xsl:apply-templates select="@* | node()"/>
			</caseinfo:shortcasename>
		</caseinfo:casename>
	</xsl:template>
	
	<xsl:template match="nl[parent::case:casename]">
		<xsl:text> </xsl:text>
	</xsl:template>
	
</xsl:stylesheet>