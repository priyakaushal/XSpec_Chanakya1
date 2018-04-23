<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case"
	xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0"
	exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/"
		id="UK01_Rosetta_case.consideredcases-LxAdv_ref.relatedrefs">
		<title>case:consideredcases <lnpid>id-UK01-27018</lnpid></title>
		<body>
			<section
				conref="../../common_caselaw/conref_content/Rosetta_case.consideredcases-LxAdv_ref.relatedrefs.dita#Rosetta_case.consideredcases-LxAdv_ref.relatedrefs/mapping"/>
			<example>
				<codeblock> &lt;case:consideredcases&gt; &lt;h&gt; &lt;emph typestyle="bf"&gt;Cases cited&lt;/emph&gt;
					&lt;/h&gt; &lt;p&gt; &lt;text&gt;&lt;emph typestyle="it"&gt;Algemene Transport (NV)&amp;#x2014;en Expeditie
					Onderneming van Gend&lt;/emph&gt; &amp;amp; &lt;emph typestyle="it"&gt;Loos v Nederlandse administratie der
					belastingen&lt;/emph&gt; Case 26/62 [1963] ECR 1.&lt;/text&gt; &lt;/p&gt; &lt;p&gt; &lt;text&gt;&lt;emph
					typestyle="it"&gt;Becker v Finanzamt Münster-Innenstadt&lt;/emph&gt; Case 8/81 [1982] ECR 53.&lt;/text&gt;
					&lt;/p&gt; &lt;p&gt; &lt;text&gt;&lt;emph typestyle="it"&gt;Costa v ENEL&lt;/emph&gt; Case 6/64 [1964] ECR
					585.&lt;/text&gt; &lt;/p&gt; &lt;/case:consideredcases&gt; </codeblock>
				<b>becomes</b>
				<codeblock> &lt;ref:relatedrefs referenctype="consideredcases"&gt; &lt;bodytext&gt; &lt;h&gt; &lt;emph
					typestyle="bf"&gt;Cases cited&lt;/emph&gt; &lt;/h&gt; &lt;p&gt; &lt;text&gt;&lt;emph
					typestyle="it"&gt;Algemene Transport (NV)&amp;#x2014;en Expeditie Onderneming van Gend&lt;/emph&gt;
					&amp;#x0026; &lt;emph typestyle="it"&gt;Loos v Nederlandse administratie der belastingen&lt;/emph&gt; Case
					26/62 [1963] ECR 1.&lt;/text&gt; &lt;/p&gt; &lt;p&gt; &lt;text&gt;&lt;emph typestyle="it"&gt;Becker v
					Finanzamt Münster-Innenstadt&lt;/emph&gt; Case 8/81 [1982] ECR 53.&lt;/text&gt; &lt;/p&gt; &lt;p&gt;
					&lt;text&gt;&lt;emph typestyle="it"&gt;Costa v ENEL&lt;/emph&gt; Case 6/64 [1964] ECR 585.&lt;/text&gt;
					&lt;/p&gt; &lt;/bodytext&gt; &lt;/ref:relatedrefs&gt; </codeblock>
			</example>
			<section>
				<p>If <sourcexml>case:consideredcases</sourcexml> occurs within <sourcexml>case:appendix</sourcexml> then
					corresponding element <targetxml>ref:relatedrefs</targetxml> should be handle through
						<targetxml>bodytext</targetxml> within <targetxml>appendix</targetxml> i.e,
						<sourcexml>case:appendix/case:consideredcases</sourcexml> becomes
						<targetxml>appendix/bodytext/ref:relatedrefs</targetxml>.</p>
			</section>
			<example>
				<codeblock> &lt;case:appendix&gt; &lt;h&gt; &lt;emph typestyle="bf"&gt;APPENDIX&lt;/emph&gt; &lt;/h&gt;
					&lt;case:consideredcases&gt; &lt;p&gt; &lt;text&gt; Bank of Scotland v Dunedin Property Investment Co
					&lt;ci:cite searchtype="CASE-REF"&gt; &lt;ci:case&gt; &lt;ci:caseref&gt; &lt;ci:reporter value="SC" /&gt;
					&lt;ci:edition&gt; &lt;ci:date year="1998" /&gt; &lt;/ci:edition&gt; &lt;ci:page num="657" /&gt;
					&lt;/ci:caseref&gt; &lt;/ci:case&gt; &lt;ci:content&gt;1998 SC 657&lt;/ci:content&gt; &lt;/ci:cite&gt; .
					&lt;/text&gt; &lt;/p&gt; &lt;p&gt; &lt;text&gt;Bulmer &amp; Co v Scott &amp; Sons (1874) 1 R (Ct of Sess)
					379.&lt;/text&gt; &lt;/p&gt; ... &lt;/case:consideredcases&gt; &lt;/case:appendix&gt; </codeblock>
				<b>becomes</b>
				<codeblock> &lt;appendix&gt; &lt;bodytext&gt; &lt;h&gt; &lt;emph typestyle="bf"&gt;APPENDIX&lt;/emph&gt;
					&lt;/h&gt; &lt;ref:relatedrefs referenctype="consideredcases"&gt; &lt;bodytext&gt; &lt;p&gt; &lt;text&gt; Bank
					of Scotland v Dunedin Property Investment Co &lt;ci:cite searchtype="CASE-REF"&gt; &lt;ci:case&gt;
					&lt;ci:caseref&gt; &lt;ci:reporter value="SC" /&gt; &lt;ci:edition&gt; &lt;ci:date year="1998" /&gt;
					&lt;/ci:edition&gt; &lt;ci:page num="657" /&gt; &lt;/ci:caseref&gt; &lt;/ci:case&gt; &lt;ci:content&gt;1998 SC
					657&lt;/ci:content&gt; &lt;/ci:cite&gt; . &lt;/text&gt; &lt;/p&gt; &lt;p&gt; &lt;text&gt;Bulmer &amp; Co v
					Scott &amp; Sons (1874) 1 R (Ct of Sess) 379.&lt;/text&gt; &lt;/p&gt; ... &lt;/bodytext&gt;
					&lt;/ref:relatedrefs&gt; &lt;/bodytext&gt; &lt;/appendix&gt; </codeblock>
			</example>
			<!--<section
            conref="../../common_caselaw/conref_content/Rosetta_case.consideredcases-LxAdv_ref.relatedrefs.dita#Rosetta_case.consideredcases-LxAdv_ref.relatedrefs/changes"/>-->
			<!--<section>
            <title>Changes Specific to UK01</title>
            </section>-->
		</body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK01_CaseLaw\UK01_Rosetta_case.consideredcases-LxAdv_ref.relatedrefs.dita  -->

	<xsl:template match="case:consideredcases">
		<!--  Original Target XPath:  ref:relatedrefs   -->
		<ref:relatedrefs referencetype="consideredcases">
			<!-- If multiple p occurs within ref:relatedrefs, then conversion needs to create only one bodytext acting as a wrapper for all p elements. -->
			<xsl:choose>
				<xsl:when test="count(p) >1">
					<bodytext xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
						<xsl:apply-templates select="@* | node()"/>
					</bodytext>
				</xsl:when>
				<xsl:otherwise>
					<xsl:apply-templates select="@* | node()"/>					
				</xsl:otherwise>
			</xsl:choose>
		</ref:relatedrefs>
	</xsl:template>

	<xsl:template match="case:consideredcases[parent::case:appendix]">
		<!--  Original Target XPath:  ref:relatedrefs   -->
	  <!-- JD: 2017-10-27: <bodytext> wrapper generated by /modules/case/UK01_Rosetta_case.appendix-LxAdv_attachments_appendix.xsl -->
		<!--<bodytext xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">-->
			<ref:relatedrefs>
			  <xsl:apply-templates select="heading"/>
			  <xsl:if test="* except heading">
			    <bodytext>
			      <xsl:apply-templates select="@* | node() except heading"/>
			    </bodytext>
			  </xsl:if>	
			</ref:relatedrefs>
		<!--</bodytext>-->
	</xsl:template>


</xsl:stylesheet>
