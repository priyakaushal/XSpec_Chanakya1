<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
	xmlns:case="http://www.lexis-nexis.com/glp/case"
	xmlns:casesum="http://www.lexisnexis.com/xmlschemas/content/legal/case-summary/1/"
	xmlns:courtcase="http://www.lexisnexis.com/xmlschemas/content/legal/courtcase/1/" version="2.0"
	exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/"
		id="UK01_Rosetta_case.headnote.case.typeofcase-LxAdv_casesum.overview">
		<title>case:typeofcase <lnpid>id-UK01-27028</lnpid></title>
		<body>
			<section>
				<p>When <sourcexml>case:typeofcase</sourcexml> is child of <sourcexml>case:headnote</sourcexml> becomes
						<targetxml>courtcase:head/casesum:summaries/casesum:editorialsummary/casesum:overview</targetxml>.</p>
				<p>With the exception of <sourcexml>heading</sourcexml>, all children of <sourcexml>case:typeofcase</sourcexml>
					should be mapped to children of <targetxml>casesum:overview/bodytext</targetxml>.</p>
				<note>Conversion should not create consecutive <targetxml>casesum:summaries</targetxml> elements. When 2 or more
					consecutive sibling source elements map to <targetxml>casesum:summaries</targetxml>, target data should be
					merged to a single <targetxml>casesum:summaries</targetxml> element unless this would hamper content
					ordering.</note>
			</section>
			<example>
				<codeblock> &lt;courtcase:head&gt; .... &lt;case:typeofcase&gt; &lt;p&gt; &lt;text&gt;PROCEDURE: Action for
					annulment - successful&lt;/text&gt; &lt;/p&gt; &lt;/case:typeofcase&gt; .... &lt;/courtcase:head&gt; </codeblock>
				<b>becomes</b>
				<codeblock> &lt;courtcase:head&gt; .... &lt;casesum:summaries&gt; &lt;casesum:editorialsummary&gt;
					&lt;casesum:overview&gt; &lt;bodytext&gt; &lt;p&gt; &lt;text&gt;PROCEDURE: Action for annulment -
					successful&lt;/text&gt; &lt;/p&gt; &lt;/bodytext&gt; &lt;/casesum:overview&gt;
					&lt;/casesum:editorialsummary&gt; &lt;/casesum:summaries&gt; .... &lt;/courtcase:head&gt; </codeblock>
			</example>

			<section>
				<p>When <sourcexml>case:typeofcase</sourcexml> is child of <sourcexml>case:headnote</sourcexml> becomes
						<targetxml>courtcase:body/casesum:summaries/casesum:editorialsummary/casesum:overview</targetxml>.</p>
				<p>With the exception of <sourcexml>heading</sourcexml>, all children of <sourcexml>case:typeofcase</sourcexml>
					should be mapped to children of <targetxml>casesum:overview/bodytext</targetxml>.</p>
				<note>Conversion should not create consecutive <targetxml>casesum:summaries</targetxml> elements. When 2 or more
					consecutive sibling source elements map to <targetxml>casesum:summaries</targetxml>, target data should be
					merged to a single <targetxml>casesum:summaries</targetxml> element unless this would hamper content
					ordering.</note>
			</section>
			<example>
				<codeblock> &lt;case:content&gt; &lt;case:typeofcase&gt; &lt;p&gt; &lt;text&gt;23 April 2002. The following
					judgment was delivered in Procter&amp;amp; Gamble Co v Office for Harmonisation in the Internal Market (Trade
					Marks and Designs) Joined cases C-468/01 P to C-472/01 P&lt;/text&gt; &lt;/p&gt; &lt;p&gt; &lt;text&gt;The
					COURT OF JUSTICE (SIXTH CHAMBER)&lt;/text&gt; &lt;/p&gt; ... &lt;/case:typeofcase&gt; &lt;/case:content&gt; </codeblock>
				<b>becomes</b>
				<codeblock> &lt;courtcase:body&gt; &lt;casesum:summaries&gt; &lt;casesum:editorialsummary&gt;
					&lt;casesum:overview&gt; &lt;bodytext&gt; &lt;p&gt; &lt;text&gt;23 April 2002. The following judgment was
					delivered in Procter&amp;amp; Gamble Co v Office for Harmonisation in the Internal Market (Trade Marks and
					Designs) Joined cases C-468/01 P to C-472/01 P&lt;/text&gt; &lt;/p&gt; &lt;p&gt; &lt;text&gt;The COURT OF
					JUSTICE (SIXTH CHAMBER)&lt;/text&gt; &lt;/p&gt; ... &lt;/bodytext&gt; &lt;/casesum:overview&gt;
					&lt;/casesum:editorialsummary&gt; &lt;/casesum:summaries&gt; &lt;/courtcase:body&gt; </codeblock>
			</example>

			<section>
				<title>Changes</title>
				<p>2015-10-09: <ph id="change_20151009_PS">Added instruction and example when
							<sourcexml>case:typeofcase</sourcexml> is child of <sourcexml>case:headnote</sourcexml>, Applicable on
						UK01, RFA # 2483.</ph></p>
				<p>2013-10-23: <ph id="change_20131023_SSX"> Created on 2013-10-23 Webteam # 239816</ph></p>
			</section>
		</body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK01_CaseLaw\UK01_Rosetta_case.headnote.case.typeofcase-LxAdv_casesum.overview.dita  -->

	<xsl:template match="case:typeofcase[parent::case:headnote]">
		<!--  Original Target XPath:  courtcase:head/casesum:summaries/casesum:editorialsummary/casesum:overview   -->
	  <casesum:editorialsummary>
	    <casesum:overview>		  
  			<xsl:apply-templates select="heading"/>
  			<xsl:if test="* except heading">
  				<bodytext>
  					<xsl:apply-templates select="@* | node() except heading"/>
  				</bodytext>
  			</xsl:if>
  		</casesum:overview>
	  </casesum:editorialsummary>
	</xsl:template>

</xsl:stylesheet>
