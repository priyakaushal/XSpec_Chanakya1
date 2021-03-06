<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:legisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/legislation-info/1/" version="2.0" exclude-result-prefixes="dita docinfo leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.officialname">
  <title>leg:officialname <lnpid>id-ST02-26423</lnpid></title>
  <body>
    <section>
      <p>
        <sourcexml>leg:info/leg:officialname</sourcexml> becomes <targetxml>legisinfo:legisinfo/legisinfo:names/legisinfo:officialtitle</targetxml>.</p>      
    </section>
    
    <example>
      <title>Source XML 1</title>
      <codeblock>

&lt;leg:officialname searchtype="LEGISLATION"&gt;
    &lt;refpt id="NSW_REG_1990-91" type="ext"/&gt;DUST DISEASES
    TRIBUNAL RULES&amp;#160;
    &lt;lnlink status="valid" service="SEARCH"
        scope="All Subscribed Australian Cases and Commentary" scope-protocol="combined-source-name"
                &gt;&lt;marker&gt;&lt;inlineobject width="21px" type="image" filename="mb.gif"
                attachment="web-server" alttext="click to find cases &amp;amp; commentary"
                /&gt;&lt;/marker&gt;&lt;api-params&gt;&lt;param name="expressSearch" value="true"/&gt;&lt;param
                name="searchString" value="DUST DISEASES TRIBUNAL RULES"
    /&gt;&lt;/api-params&gt;
    &lt;/lnlink&gt;
&lt;/leg:officialname&gt;

    </codeblock>
    </example>
    
    <example>
      <title>Target XML 1</title>
      <codeblock>

&lt;legisinfo:legisinfo&gt;
  &lt;legisinfo:names&gt;
      &lt;legisinfo:officialtitle&gt;DUST DISEASES TRIBUNAL RULES&lt;/legisinfo:officialtitle&gt;
  &lt;/legisinfo:names&gt;
&lt;/legisinfo:legisinfo&gt;

    </codeblock>
    </example>
    <note>For handling <b>@ln.user-displayed</b> attribute, refer the general markup
      <xref href="../../common_newest/Rosetta_leg.officialname_ln.user-displayed-LxAdv-legisinfo.officialtitle.dita">ln.user_displayed="false"</xref> section in the CI.</note>
    <note>In the above input example <sourcexml>lnlink</sourcexml> shall be suppressed from conversion and a corresponding
      product requirement shall be created with an instruction to build the link on retrieval based on
      semantic markup in the document. Use cases where the LBU feels the product requirement cannot
      be met if the markup is suppressed shall be handled case-by-case.</note>
    <note>If the input document has scenario leg:officialname/refpt then suppress <sourcexml>refpt</sourcexml> from
      conversion since the id value matches with <sourcexml>docinfo:doc-id</sourcexml>.</note>
    
    <example>
      <title>Source XML 2</title>
      <codeblock>

&lt;leg:officialname ln.user-displayed="false"&gt;Code criminel&lt;/leg:officialname&gt;

    </codeblock>
    </example>
    
    <example>
      <title>Target XML 2</title>
      <codeblock>

&lt;legisinfo:legisinfo&gt;
  &lt;legisinfo:names&gt;
      &lt;legisinfo:officialtitle&gt;Code criminel&lt;/legisinfo:officialtitle&gt;
  &lt;/legisinfo:names&gt;
&lt;/legisinfo:legisinfo&gt;

    </codeblock>
    </example>   
   </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-Standard\Courtrule\leg.officialname.dita  -->
	<xsl:message>Courtrule_leg.officialname.xsl requires manual development!</xsl:message> 

	<xsl:template match="leg:info/leg:officialname">

		<!--  Original Target XPath:  legisinfo:legisinfo/legisinfo:names/legisinfo:officialtitle   -->
		<legisinfo:legisinfo>
			<legisinfo:names>
				<legisinfo:officialtitle>
					<xsl:apply-templates select="@* | node()"/>
				</legisinfo:officialtitle>
			</legisinfo:names>
		</legisinfo:legisinfo>

	</xsl:template>

	<xsl:template match="lnlink">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

	<xsl:template match="refpt">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

	<xsl:template match="docinfo:doc-id">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

</xsl:stylesheet>