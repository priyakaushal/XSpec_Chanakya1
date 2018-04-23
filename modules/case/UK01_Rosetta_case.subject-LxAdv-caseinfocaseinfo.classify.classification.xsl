<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:caseinfo="http://www.lexisnexis.com/xmlschemas/content/legal/case-information/1/" xmlns:classify="http://www.lexisnexis.com/xmlschemas/content/shared/classification/1/" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="UK01_Rosetta_case.subject-LxAdv-caseinfocaseinfo.classify.classification">
  <title>case:subject <lnpid>id-UK01-27040</lnpid></title>
  <body>
    <section>
      <p><sourcexml>case:subject</sourcexml> becomes
          <targetxml>caseinfo:caseinfo/classify:classification</targetxml> with the value of
          <targetxml>classify:classification/@classscheme</targetxml> set to "subject".
          <sourcexml>case:subject</sourcexml> child <sourcexml>p/text</sourcexml> should be mapped
        with
          <targetxml>classify:classitem/classify:classitem-identifier/classify:classname</targetxml>. </p>
         </section>
    <example>
       <codeblock>


&lt;case:subject&gt;
       &lt;p&gt;
          &lt;text&gt;SUBJECT: Community trade mark; Industrial and commercial property&lt;/text&gt;
       &lt;/p&gt;
&lt;/case:subject&gt;
            

      </codeblock>
      <b>becomes</b>
      <codeblock>

&lt;classify:classification classscheme="subject"&gt;
  &lt;classify:classitem&gt;
    &lt;classify:classitem-identifier&gt;
      &lt;classify:classname&gt;SUBJECT: Community trade mark; Industrial and commercial property&lt;/classify:classname&gt;
    &lt;/classify:classitem-identifier&gt;
  &lt;/classify:classitem&gt;
&lt;/classify:classification&gt;
      </codeblock>
    </example>
    <section>
      <title>Changes:</title>
      <p>2013-10-23
        <ph id="change_20131023_SSX">Created on 2013-10-23 Webteam # 239816</ph>
      </p>
    </section>
  </body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK01_CaseLaw\UK01_Rosetta_case.subject-LxAdv-caseinfocaseinfo.classify.classification.dita  -->

	<xsl:template match="case:subject">
		<!--  Original Target XPath:  caseinfo:caseinfo/classify:classification   -->
			<classify:classification classscheme="subject">
				<xsl:apply-templates select="@* | node()"/>
			</classify:classification>
	</xsl:template>

	<xsl:template match="p[parent::case:subject]">
		<!--  Original Target XPath:  classify:classitem/classify:classitem-identifier/classify:classname   -->
		<classify:classitem>
			<classify:classitem-identifier>
				<classify:classname>
					<xsl:apply-templates select="@* | node()"/>
				</classify:classname>
			</classify:classitem-identifier>
		</classify:classitem>
	</xsl:template>
  
  <xsl:template match="text[parent::p/parent::case:subject]">
    <xsl:apply-templates/>
  </xsl:template>

</xsl:stylesheet>