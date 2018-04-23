<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_role-LxAdv_role">
  <title>role <lnpid>id-CCCC-12028</lnpid></title>
  <body>
    <section>
      <p><sourcexml>role</sourcexml> becomes <targetxml>role</targetxml>.</p>
    </section>
    <example>
      <title>Example: NZ content</title>
      <codeblock>
&lt;role&gt;Respondent's Counsel:&lt;/role&gt;
            </codeblock>
      <b>becomes</b>
      <codeblock>
&lt;role&gt;Respondent's Counsel:&lt;/role&gt;
    </codeblock>
    </example>
    <!--<section>
      <title>Changes</title>
      </section>-->
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_caselaw\Rosetta_role-LxAdv_role.dita  -->
	 

	<xsl:template match="role">

		<!--  Original Target XPath:  role   -->
		<role>
			<xsl:apply-templates select="@* | node()"/>
		</role>

	</xsl:template>

</xsl:stylesheet>