<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
	xmlns:case="http://www.lexis-nexis.com/glp/case"
	xmlns:casesum="http://www.lexisnexis.com/xmlschemas/content/legal/case-summary/1/"
	version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/"
		id="UK01_Rosetta_case.factsummary-LxAdv_casesum.editorialsummary">
		<title>case:factsummary <lnpid>id-UK01-27026</lnpid></title>
		<body>
			<section
				conref="../../common_caselaw/conref_content/Rosetta_case.factsummary-LxAdv_casesum.editorialsummary.dita#Rosetta_case.factsummary-LxAdv_casesum.editorialsummary/mapping1"/>
			<example>
				<codeblock> &lt;case:factsummary&gt; &lt;p&gt; &lt;text&gt;Inherent in the notion of a fair hearing in criminal
					proceedings was the opportunity for a defendant to comment on evidence with regard to disputed facts, even if
					the facts related to a point of procedure rather than the alleged offence itself.&lt;/text&gt; &lt;/p&gt;
					&lt;/case:factsummary&gt; </codeblock>
				<b>becomes</b>
				<codeblock> &lt;casesum:summaries&gt; &lt;casesum:editorialsummary&gt; &lt;p&gt; &lt;text&gt;Inherent in the
					notion of a fair hearing in criminal proceedings was the opportunity for a defendant to comment on evidence
					with regard to disputed facts, even if the facts related to a point of procedure rather than the alleged
					offence itself.&lt;/text&gt; &lt;/p&gt; &lt;/casesum:editorialsummary&gt; &lt;/casesum:summaries&gt;
				</codeblock>
			</example>
			<section
				conref="../../common_caselaw/conref_content/Rosetta_case.factsummary-LxAdv_casesum.editorialsummary.dita#Rosetta_case.factsummary-LxAdv_casesum.editorialsummary/mapping2"/>
			<example>
				<codeblock> &lt;case:factsummary&gt; &lt;l&gt; &lt;li&gt; &lt;lilabel&gt; &lt;/lilabel&gt; &lt;p&gt;
					&lt;text&gt;&amp;#x2013; the scope of the schemes and the conditions of access thereto,&lt;/text&gt;
					&lt;/p&gt; &lt;/li&gt; &lt;/l&gt; &lt;l&gt; &lt;li&gt; &lt;lilabel&gt; &lt;/lilabel&gt; &lt;p&gt;
					&lt;text&gt;&amp;#x2013; the obligation to contribute and the calculation of contributions,&lt;/text&gt;
					&lt;/p&gt; &lt;/li&gt; &lt;/l&gt; &lt;/case:factsummary&gt; </codeblock>
				<b>becomes</b>
				<codeblock> &lt;casesum:summaries&gt; &lt;casesum:editorialsummary&gt; &lt;p&gt; &lt;list&gt; &lt;listitem&gt;
					&lt;label&gt; &lt;/label&gt; &lt;bodytext&gt; &lt;p&gt; &lt;text&gt;&amp;#x2013; the scope of the schemes and
					the conditions of access thereto,&lt;/text&gt; &lt;/p&gt; &lt;/bodytext&gt; &lt;/listitem&gt; &lt;/list&gt;
					&lt;list&gt; &lt;listitem&gt; &lt;label&gt; &lt;/label&gt; &lt;bodytext&gt; &lt;p&gt; &lt;text&gt;&amp;#x2013;
					the obligation to contribute and the calculation of contributions,&lt;/text&gt; &lt;/p&gt; &lt;/bodytext&gt;
					&lt;/listitem&gt; &lt;/list&gt; &lt;/p&gt; &lt;/casesum:editorialsummary&gt; &lt;/casesum:summaries&gt;
				</codeblock>
			</example>
			<!--<section
      conref="../../common_caselaw/conref_content/Rosetta_case.factsummary-LxAdv_casesum.editorialsummary.dita.dita#Rosetta_case.factsummary-LxAdv_casesum.editorialsummary.dita/changes"/>-->
			<!--<section>
      <title>Changes Specific to UK01</title>
    </section>-->
		</body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK01_CaseLaw\UK01_Rosetta_case.factsummary-LxAdv_casesum.editorialsummary.dita  -->
	<xsl:template match="case:factsummary">
		<casesum:editorialsummary>
			<xsl:apply-templates select="@* | node()"/>
		</casesum:editorialsummary>
	</xsl:template>
  
  <!-- JD: 2017-11-15 Web* 7049146: suppress empty case:factsummary (creates empty casesum:editorialsummary, schema valiation error  -->
  <xsl:template match="case:factsummary[not(node())]"/>
	
</xsl:stylesheet>
