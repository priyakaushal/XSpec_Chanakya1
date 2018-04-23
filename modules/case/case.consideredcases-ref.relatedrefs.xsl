<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="case.consideredcases-ref.relatedrefs">
    <title>case:consideredcases <lnpid>id-ST01-26231</lnpid></title>
    <body>
        <section conref="../../common_caselaw/conref_content/Rosetta_case.consideredcases-LxAdv_ref.relatedrefs.dita#Rosetta_case.consideredcases-LxAdv_ref.relatedrefs/mapping"/>
        <example>
            <codeblock>
&lt;case:consideredcases&gt;
    &lt;h&gt;
      &lt;emph typestyle="bf"&gt;Cases cited&lt;/emph&gt;
    &lt;/h&gt;
    &lt;p&gt;
        &lt;text&gt;&lt;emph typestyle="it"&gt;Algemene Transport (NV)&amp;#x2014;en Expeditie
            Onderneming van Gend&lt;/emph&gt; &amp;amp; &lt;emph typestyle="it"&gt;Loos v
                Nederlandse administratie der belastingen&lt;/emph&gt; Case 26/62 [1963]
            ECR 1.&lt;/text&gt;
    &lt;/p&gt;
    &lt;p&gt;
        &lt;text&gt;&lt;emph typestyle="it"&gt;Becker v Finanzamt Münster-Innenstadt&lt;/emph&gt; Case
            8/81 [1982] ECR 53.&lt;/text&gt;
    &lt;/p&gt;
    &lt;p&gt;
        &lt;text&gt;&lt;emph typestyle="it"&gt;Costa v ENEL&lt;/emph&gt; Case 6/64 [1964] ECR
            585.&lt;/text&gt;
    &lt;/p&gt;
&lt;/case:consideredcases&gt;
           </codeblock>
            <b>becomes</b>
            <codeblock>
&lt;ref:relatedrefs referenctype="consideredcases"&gt;
  &lt;bodytext&gt;
      &lt;h&gt;
        &lt;emph typestyle="bf"&gt;Cases cited&lt;/emph&gt;
      &lt;/h&gt;
      &lt;p&gt;
          &lt;text&gt;&lt;emph typestyle="it"&gt;Algemene Transport (NV)&amp;#x2014;en Expeditie
              Onderneming van Gend&lt;/emph&gt; &amp;#x0026; &lt;emph typestyle="it"&gt;Loos v
                  Nederlandse administratie der belastingen&lt;/emph&gt; Case 26/62 [1963]
              ECR 1.&lt;/text&gt;
      &lt;/p&gt;
      &lt;p&gt;
          &lt;text&gt;&lt;emph typestyle="it"&gt;Becker v Finanzamt Münster-Innenstadt&lt;/emph&gt; Case
              8/81 [1982] ECR 53.&lt;/text&gt;
      &lt;/p&gt;
      &lt;p&gt;
          &lt;text&gt;&lt;emph typestyle="it"&gt;Costa v ENEL&lt;/emph&gt; Case 6/64 [1964] ECR
              585.&lt;/text&gt;
      &lt;/p&gt;
  &lt;/bodytext&gt;
&lt;/ref:relatedrefs&gt;
           </codeblock>
        </example>
        <section><p>If <sourcexml>case:consideredcases</sourcexml> occurs within
                    <sourcexml>case:appendix</sourcexml> then corresponding element
                    <targetxml>ref:relatedrefs</targetxml> should be handle through
                    <targetxml>bodytext</targetxml> within <targetxml>appendix</targetxml> i.e,
                    <sourcexml>case:appendix/case:consideredcases</sourcexml> becomes
                    <targetxml>appendix/bodytext/ref:relatedrefs</targetxml>.</p></section>
        <example>
            <codeblock>
&lt;case:appendix&gt;
    &lt;h&gt;
        &lt;emph typestyle="bf"&gt;APPENDIX&lt;/emph&gt; 
    &lt;/h&gt;
    &lt;case:consideredcases&gt;
        &lt;p&gt;
            &lt;text&gt;
                Bank of Scotland v Dunedin Property Investment Co 
                &lt;ci:cite searchtype="CASE-REF"&gt;
                    &lt;ci:case&gt;
                        &lt;ci:caseref&gt;
                            &lt;ci:reporter value="SC" /&gt; 
                            &lt;ci:edition&gt;
                                &lt;ci:date year="1998" /&gt; 
                            &lt;/ci:edition&gt;
                            &lt;ci:page num="657" /&gt; 
                        &lt;/ci:caseref&gt;
                    &lt;/ci:case&gt;
                    &lt;ci:content&gt;1998 SC 657&lt;/ci:content&gt; 
                &lt;/ci:cite&gt;
                . 
            &lt;/text&gt;
        &lt;/p&gt;
        &lt;p&gt;
            &lt;text&gt;Bulmer &amp; Co v Scott &amp; Sons (1874) 1 R (Ct of Sess) 379.&lt;/text&gt; 
        &lt;/p&gt;
        ...
    &lt;/case:consideredcases&gt;
&lt;/case:appendix&gt;
           </codeblock>
            <b>becomes</b>
            <codeblock>
&lt;appendix&gt;
    &lt;bodytext&gt;
        &lt;h&gt;
            &lt;emph typestyle="bf"&gt;APPENDIX&lt;/emph&gt; 
        &lt;/h&gt;
        &lt;ref:relatedrefs referenctype="consideredcases"&gt;
            &lt;bodytext&gt;
                &lt;p&gt;
                    &lt;text&gt;
                        Bank of Scotland v Dunedin Property Investment Co 
                        &lt;lnci:cite&gt;
                            &lt;lnci:case&gt;
                                &lt;lnci:caseref&gt;
                                    &lt;lnci:reporter value="SC" /&gt; 
                                    &lt;lnci:edition&gt;
                                        &lt;lnci:date year="1998" /&gt; 
                                    &lt;/lnci:edition&gt;
                                    &lt;lnci:page num="657" /&gt; 
                                &lt;/lnci:caseref&gt;
                            &lt;/lnci:case&gt;
                            &lt;lnci:content&gt;1998 SC 657&lt;/ci:content&gt; 
                        &lt;/lnci:cite&gt;
                        . 
                    &lt;/text&gt;
                &lt;/p&gt;
                &lt;p&gt;
                    &lt;text&gt;Bulmer &amp; Co v Scott &amp; Sons (1874) 1 R (Ct of Sess) 379.&lt;/text&gt; 
                &lt;/p&gt;
                ...
            &lt;/bodytext&gt;
        &lt;/ref:relatedrefs&gt;
    &lt;/bodytext&gt;
&lt;/appendix&gt;
           </codeblock>
        </example>
        <!--<section
            conref="../../common_caselaw/conref_content/Rosetta_case.consideredcases-LxAdv_ref.relatedrefs.dita#Rosetta_case.consideredcases-LxAdv_ref.relatedrefs/changes"/>-->
        <!--<section>
            <title>Changes Specific to UK01</title>
            </section>-->
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-Standard\courtcase\case.consideredcases-ref.relatedrefs.dita  -->
	<xsl:message>case.consideredcases-ref.relatedrefs.xsl requires manual development!</xsl:message> 

	<xsl:template match="case:consideredcases">

		<!--  Original Target XPath:  ref:relatedrefs   -->
		<ref:relatedrefs>
			<xsl:apply-templates select="@* | node()"/>
		</ref:relatedrefs>

	</xsl:template>

	<xsl:template match="case:appendix">

		<!--  Original Target XPath:  ref:relatedrefs   -->
		<ref:relatedrefs>
			<xsl:apply-templates select="@* | node()"/>
		</ref:relatedrefs>

	</xsl:template>

	<xsl:template match="case:appendix/case:consideredcases">

		<!--  Original Target XPath:  appendix/bodytext/ref:relatedrefs   -->
		<appendix>
			<bodytext>
				<ref:relatedrefs>
					<xsl:apply-templates select="@* | node()"/>
				</ref:relatedrefs>
			</bodytext>
		</appendix>

	</xsl:template>

</xsl:stylesheet>