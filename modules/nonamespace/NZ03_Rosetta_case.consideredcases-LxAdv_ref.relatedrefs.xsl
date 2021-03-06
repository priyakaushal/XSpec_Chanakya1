<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
  xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/"
  xmlns:case="http://www.lexis-nexis.com/glp/case"
  xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"
  xmlns:dita="http://dita.oasis-open.org/architecture/2005/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="NZ03_Rosetta_case.consideredcases-LxAdv_ref.relatedrefs">
  <title>case:consideredcases <lnpid>id-NZ03-23012</lnpid></title>
  <body>
    <section conref="../../common_caselaw/conref_content/Rosetta_case.consideredcases-LxAdv_ref.relatedrefs.dita#Rosetta_case.consideredcases-LxAdv_ref.relatedrefs/mapping"/>
    <example>
      <codeblock>
&lt;case:consideredcases&gt;
  &lt;p&gt;
    &lt;text&gt;
      &lt;ci:cite searchtype="CASE-REF"&gt;
        &lt;ci:case&gt;
          &lt;ci:caseref ID="x20103NZLR_271-373" spanref="x20103NZLR_271-373-1"&gt;
            &lt;ci:reporter value="nz convc" country="nz"/&gt;
            &lt;ci:volume num="4"&gt;&lt;/ci:volume&gt;
            &lt;ci:edition&gt;
              &lt;ci:date year="2002"/&gt;
            &lt;/ci:edition&gt;
            &lt;ci:page num="193,547"/&gt;
          &lt;/ci:caseref&gt;
        &lt;/ci:case&gt;
        &lt;ci:content&gt;
          &lt;citefragment searchtype="CASE-NAME-REF"&gt;
            &lt;emph typestyle="it"&gt;Klinac v Lehmann&lt;/emph&gt;
          &lt;/citefragment&gt; 
          &lt;citefragment searchtype="CASE-CITE-REF"&gt;
            &lt;ci:span spanid="x20103NZLR_271-373-1"&gt;(2002) 4 NZ ConvC 193,547 (HC)&lt;/ci:span&gt;
          &lt;/citefragment&gt;
        &lt;/ci:content&gt;
      &lt;/ci:cite&gt; 
      approved.&lt;/text&gt;
  &lt;/p&gt;
&lt;/case:consideredcases&gt;
           </codeblock>
      <b>becomes</b>
      <codeblock>
&lt;ref:relatedrefs referencetype="consideredcases"&gt;
  &lt;bodytext&gt;
    &lt;p&gt;
      &lt;text&gt;
        &lt;lnci:cite type="case"&gt;
          &lt;lnci:case&gt;
            &lt;lnci:caseref ID="x20103NZLR_271-373"&gt;
              &lt;lnci:reporter value="nz convc" country="nz"/&gt;
              &lt;lnci:volume num="4"&gt;&lt;/ci:volume&gt;
              &lt;lnci:edition&gt;
                &lt;lnci:date year="2002"/&gt;
              &lt;/lnci:edition&gt;
              &lt;lnci:page num="193,547"/&gt;
            &lt;/lnci:caseref&gt;
          &lt;/lnci:case&gt;
          &lt;lnci:content&gt;
            &lt;emph typestyle="it"&gt;Klinac v Lehmann&lt;/emph&gt; (2002) 4 NZ ConvC 193,547 (HC)
          &lt;/lnci:content&gt;
        &lt;/lnci:cite&gt;
        approved.&lt;/text&gt;
    &lt;/p&gt;
  &lt;/bodytext&gt;
&lt;/ref:relatedrefs&gt;
           </codeblock>
    </example>
    <!--<section
      conref="../../common_caselaw/conref_content/Rosetta_case.consideredcases-LxAdv_ref.relatedrefs.dita#Rosetta_case.consideredcases-LxAdv_ref.relatedrefs/changes"/>-->
    <!--<section>
      <title>Changes Specific to NZ03</title>
      </section>-->
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\NZ03_CaseLaw\NZ03_Rosetta_case.consideredcases-LxAdv_ref.relatedrefs.dita  -->
	<!--<xsl:message>NZ03_Rosetta_case.consideredcases-LxAdv_ref.relatedrefs.xsl requires manual development!</xsl:message>--> 
  <xsl:template match="case:consideredcases">
    <ref:relatedrefs>
      <xsl:attribute name="referencetype">
        <xsl:text>consideredcases</xsl:text>
      </xsl:attribute>
      <xsl:if test="child::heading">
        <xsl:apply-templates select="heading"/>                   
      </xsl:if>
      <xsl:if test="node() except heading">
        <bodytext>
          <xsl:apply-templates select="@* | node() except heading"/>
        </bodytext>
      </xsl:if>
      <!--<xsl:apply-templates select="@* | node()"/>-->
    </ref:relatedrefs>
  </xsl:template> 
</xsl:stylesheet>