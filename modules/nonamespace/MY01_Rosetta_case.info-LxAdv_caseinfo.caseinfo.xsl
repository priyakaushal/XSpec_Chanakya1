<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:caseinfo="http://www.lexisnexis.com/xmlschemas/content/legal/case-information/1/" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="MY01_Rosetta_case.info-LxAdv_caseinfo.caseinfo">
  <title>case:info <lnpid>id-MY01-16022</lnpid></title>
  <body>
    <section conref="../../common_caselaw/conref_content/Rosetta_case.info-LxAdv_caseinfo.caseinfo.dita#Rosetta_case.info-LxAdv_caseinfo.caseinfo/mapping"/>
    <example>
      <codeblock>
&lt;case:info&gt;
  ...
&lt;/case:info&gt;
      </codeblock>
      <b>becomes</b>
      <codeblock>
&lt;caseinfo:caseinfo&gt;
  ...
&lt;/caseinfo:caseinfo&gt;
            </codeblock>
    </example>
    <section>
      <p>When <sourcexml>heading</sourcexml> occurs as direct child of
          <sourcexml>case:body</sourcexml> conversion should create <targetxml>heading</targetxml>
        as direct child of <targetxml>caseinfo:caseinfo</targetxml>, i.e.
          <sourcexml>case:body/heading</sourcexml> becomes
          <targetxml>caseinfo:caseinfo/heading</targetxml>.</p>
    </section>
    <example>
      <codeblock>
&lt;case:body&gt;
    &lt;heading&gt;
        &lt;desig&gt;
            &lt;designum&gt;ilju&lt;/designum&gt;
        &lt;/desig&gt;
    &lt;/heading&gt;
&lt;/case:body&gt;
      </codeblock>
      <b>becomes</b>
      <codeblock>
&lt;caseinfo:caseinfo&gt;
    &lt;heading&gt;
        &lt;desig&gt;ilju&lt;/desig&gt;
    &lt;/heading&gt;
&lt;/caseinfo:caseinfo&gt;
            </codeblock>
    </example>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-MY\MY01_Cases\MY01_Rosetta_case.info-LxAdv_caseinfo.caseinfo.dita  -->
<!--	<xsl:message>MY01_Rosetta_case.info-LxAdv_caseinfo.caseinfo.xsl requires manual development!</xsl:message> -->

  <xsl:template match="case:info">      
      <xsl:apply-templates select="@* | node() except (page, case:litigants)"/>         
  </xsl:template>
	

</xsl:stylesheet>