<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:ci="http://www.lexis-nexis.com/ci" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita case ci">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="CA01_Rosetta_case.reportercite-LxAdv_ref.cite4thisresource">
  <title>case:reportercite <lnpid>id-CA01-12229</lnpid></title>
  <body>
    <section>
      <p><sourcexml>case:reportercite</sourcexml> becomes
          <targetxml>ref:citations/ref:cite4thisresource</targetxml>. The value of
          <targetxml>ref:cite4thisresource/@citetype</targetxml> should be set to "reporter".</p>
      <note>For the handling of citation markup, please refer to the instructions for
          <sourcexml>ci:cite</sourcexml> in the General Markup Section.</note>
    </section>
    <example>
      <title>Mapping of <sourcexml>case:reportercite</sourcexml></title>
      <codeblock>

&lt;case:reportercite&gt;
    &lt;ci:cite type="cite4thisdoc"&gt;
        &lt;ci:case&gt;
            &lt;ci:caseref ID="cref00022199" spanref="cspan00022199"&gt;
                &lt;ci:reporter value="FCJ"/&gt;
                &lt;ci:edition&gt;
                    &lt;ci:date year="1983"/&gt;
                &lt;/ci:edition&gt;
                &lt;ci:refnum num="1"/&gt;
            &lt;/ci:caseref&gt;
        &lt;/ci:case&gt;
        &lt;ci:content&gt;
            &lt;ci:span spanid="cspan00022199"&gt;[1983] A.C.F. no 1&lt;/ci:span&gt;
        &lt;/ci:content&gt;
    &lt;/ci:cite&gt;
&lt;/case:reportercite&gt;

           </codeblock>
      <b>becomes</b>
      <codeblock>

&lt;ref:citations&gt;
    &lt;ref:cite4thisresource citetype="reporter"&gt;
        &lt;lnci:cite&gt;
            &lt;lnci:case&gt;
                &lt;lnci:caseref ID="cref00022199"&gt;
                    &lt;lnci:reporter value="FCJ"/&gt;
                    &lt;lnci:edition&gt;
                        &lt;lnci:date year="1983"/&gt;
                    &lt;/lnci:edition&gt;
                    &lt;lnci:refnum num="1"/&gt;
                &lt;/lnci:caseref&gt;
            &lt;/lnci:case&gt;
            &lt;lnci:content&gt;[1983] A.C.F. no 1&lt;/lnci:content&gt;
        &lt;/lnci:cite&gt;
    &lt;/ref:cite4thisresource&gt;
&lt;/ref:citations&gt;

           </codeblock>
    </example>
  </body>
	</dita:topic>

	
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA01-Cases\CA01_Rosetta_case.reportercite-LxAdv_ref.cite4thisresource.dita  --> 

    <!-- Vikas Rohilla : Template to match the case:reportercite and creates the ref:citations/ref:cite4thisresource -->
	<xsl:template match="case:reportercite">
		
			<ref:cite4thisresource>
			    <xsl:attribute name="citetype">
			        <xsl:text>reporter</xsl:text>
			    </xsl:attribute>
				<xsl:apply-templates/>
			</ref:cite4thisresource>
		   <!-- <xsl:apply-templates select="following-sibling::case:parallelcite|following-sibling::case:courtinfo/case:courtcite"/>
		-->
	</xsl:template>

</xsl:stylesheet>