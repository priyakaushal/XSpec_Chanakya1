<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:ci="http://www.lexis-nexis.com/ci" xmlns:lnci="http://www.lexisnexis.com/xmlschemas/content/shared/citations/1/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita case ci">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="MY01_Rosetta_case.parallelcite-LxAdv_ref.cite4thisresource">
  <title>case:parallelcite <lnpid>id-MY01-16030</lnpid></title>
  <body>
    <section conref="../../common_caselaw/conref_content/Rosetta_case.parallelcite-LxAdv_ref.cite4thisresource.dita#Rosetta_case.parallelcite-LxAdv_ref.cite4thisresource/mapping"/>
    <section><note>Text occurring between <sourcexml>case:parallelcite</sourcexml> and
          <sourcexml>ci:cite</sourcexml> should be dropped since it will be handled on a
        presentation spec level.</note></section>
    <example>
      <codeblock>
&lt;case:info&gt;
    &lt;case:parallelcite&gt;
        &lt;ci:cite searchtype="CASE-REF"&gt;
            &lt;ci:case&gt;
                &lt;ci:caseref&gt;
                    &lt;ci:reporter value="MLJU"/&gt;
                    &lt;ci:edition&gt;
                        &lt;ci:date year="2010"/&gt;
                    &lt;/ci:edition&gt;
                    &lt;ci:page num="725"/&gt;
                &lt;/ci:caseref&gt;
            &lt;/ci:case&gt;
            &lt;ci:content&gt;Also Reported in:&lt;citefragment searchtype="CASE-CITE-REF"&gt; [2010] MLJU
                    725&lt;/citefragment&gt;
            &lt;/ci:content&gt;
        &lt;/ci:cite&gt;
    &lt;/case:parallelcite&gt;
&lt;/case:info&gt;
           </codeblock>
      <b>becomes</b>
      <codeblock>
&lt;caseinfo:caseinfo&gt;
    &lt;ref:cite4thisresource citetype="parallel"&gt;
        &lt;lnci:cite type="case"&gt;
            &lt;lnci:case&gt;
                &lt;lnci:caseref&gt;
                    &lt;lnci:reporter value="MLJU"/&gt;
                    &lt;lnci:page num="725"/&gt;
                &lt;/lnci:caseref&gt;
            &lt;/lnci:case&gt;
            &lt;lnci:content&gt;Also Reported in: &amp;#x005B;2010&amp;#x005D; MLJU 725&lt;/lnci:content&gt;
        &lt;/lnci:cite&gt;
    &lt;/ref:cite4thisresource&gt;
&lt;/caseinfo:caseinfo&gt;
           </codeblock>
    </example>
    <section conref="../../common_caselaw/conref_content/Rosetta_case.parallelcite-LxAdv_ref.cite4thisresource.dita#Rosetta_case.parallelcite-LxAdv_ref.cite4thisresource/changes"/>
    <!--<section>
            <title>Changes Specific to CA01</title>
            </section>-->

  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-MY\MY01_Cases\MY01_Rosetta_case.parallelcite-LxAdv_ref.cite4thisresource.dita  -->
<!--	<xsl:message>MY01_Rosetta_case.parallelcite-LxAdv_ref.cite4thisresource.xsl requires manual development!</xsl:message> -->

    <xsl:template match="case:parallelcite">
        <xsl:apply-templates/>
    </xsl:template>
    
    <xsl:template match="ci:cite[parent::case:parallelcite]">      
        <ref:citations>  
            <xsl:if test="preceding-sibling::*[position()=1][parent::case:parallelcite/text()] and $streamID='MY01'">
                <connector><xsl:value-of select="parent::case:parallelcite/text()"/></connector>
            </xsl:if>
            <ref:cite4thisresource>
                <xsl:attribute name="citetype">
                    <xsl:text>parallel</xsl:text>
                </xsl:attribute>
                <lnci:cite>
                    <xsl:apply-templates/>
                </lnci:cite>
            </ref:cite4thisresource>
        </ref:citations>
    </xsl:template>
    
    <xsl:template match="case:parallelcite[@ln.user-displayed]"/>
    <!-- Note: Text occurring between case:parallelcite and ci:cite should be dropped since it will be handled on a presentation spec level. -->
    <xsl:template match="text()[parent::case:parallelcite]"/>
</xsl:stylesheet>