<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:legisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/legislation-info/1/" version="2.0" exclude-result-prefixes="dita docinfo leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="legis-leg.officialname">
  <title>leg:officialname <lnpid>id-ST03-26641</lnpid></title>
  <body>
   <section>
    <p><sourcexml>leg:officialname</sourcexml> becomes <targetxml>legisinfo:officialtitle</targetxml>
     <note>If <sourcexml>emph</sourcexml> occurs within <sourcexml>leg:officialname</sourcexml> with the attribute's value <sourcexml>emph/@typestyle="it"</sourcexml> or <sourcexml>emph/@typestyle="un"</sourcexml> will be retained and all other <sourcexml>emph</sourcexml> will be omitted from the NL conversion.</note>
     <note>For handling <b>@ln.user-displayed</b> attribute, refer the general markup <xref href="../../common_newest/Rosetta_leg.officialnum_ln.user-displayed-LxAdv-primlawinfo.identifier_source.dita">ln.user_displayed="false"</xref> section in the CI.</note>
    </p>
   </section>
   <example>
    <title>UK SOURCE XML 1: Mapping of <sourcexml>leg:officialname</sourcexml></title>
    <codeblock>

&lt;leg:body&gt;
 &lt;leg:info subseqdoc="false"&gt;
  &lt;!-- ETC. --&gt;
  &lt;leg:officialname&gt;&lt;emph typestyle="bf"&gt;Commons Act 1236&lt;/emph&gt;&lt;/leg:officialname&gt;
  &lt;!-- ETC. --&gt;
 &lt;/leg:info&gt;
 &lt;!-- ETC. --&gt;
&lt;/leg:body&gt;

    </codeblock>
    <b>Becomes</b>
    <title>UK TARGET XML 1: Mapping of <sourcexml>leg:officialname</sourcexml></title>
    <codeblock>

&lt;legis:head&gt;
 &lt;primlawinfo:primlawinfo&gt;
  &lt;legisinfo:legisinfo&gt;
   &lt;legisinfo:names&gt;
    &lt;!-- ETC. --&gt;
    &lt;legisinfo:officialtitle&gt;Commons Act 1236&lt;/legisinfo:officialtitle&gt;
    &lt;!-- ETC. --&gt;
   &lt;/legisinfo:names&gt;
  &lt;/legisinfo:legisinfo&gt;
 &lt;/primlawinfo:primlawinfo&gt;
&lt;/legis:head&gt;
&lt;legis:body&gt;
 &lt;!-- ETC. --&gt;
&lt;/legis:body&gt;
    </codeblock>
   </example>
   <example>
    <title>AUSTRALIA SOURCE XML 2: Mapping of <sourcexml>leg:officialname/refpt</sourcexml> and <sourcexml>leg:officialname/lnlink</sourcexml></title>
    <codeblock>
 
&lt;leg:info id="ACT_ACT_2001-14_LEG_INFO" subseqdoc="false"&gt;
 &lt;leg:officialname searchtype="LEGISLATION"&gt;
  &lt;refpt id="ACT_ACT_2001-14" type="ext"/&gt;
  LEGISLATION ACT 2001&amp;#160;
  &lt;lnlink status="valid" service="SEARCH" scope="All Subscribed Australian Cases and Commentary" scope-protocol="combined-source-name"&gt;
   &lt;marker&gt;
    &lt;inlineobject width="21px" type="image" filename="mb.gif" attachment="web-server" alttext="click to find cases &amp;amp; commentary"/&gt;
   &lt;/marker&gt;
   &lt;api-params&gt;
    &lt;param name="expressSearch" value="true"/&gt;
    &lt;param name="searchString" value="LEGISLATION ACT 2001"/&gt;
   &lt;/api-params&gt;
  &lt;/lnlink&gt;
 &lt;/leg:officialname&gt;
&lt;/leg:info&gt;

    </codeblock>
    <b>Becomes</b>
    <title>AUSTRALIA TARGET XML 2: Mapping of <sourcexml>leg:officialname/refpt</sourcexml> and <sourcexml>leg:officialname/lnlink</sourcexml></title>
    <codeblock>

&lt;primlawinfo:primlawinfo&gt;
 &lt;legisinfo:legisinfo&gt;
  &lt;legisinfo:names&gt;
   &lt;legisinfo:officialtitle&gt;LEGISLATION ACT 2001&amp;#x00A0;&lt;/legisinfo:officialtitle&gt;
  &lt;/legisinfo:names&gt;
 &lt;/legisinfo:legisinfo&gt;
&lt;/primlawinfo:primlawinfo&gt;

    </codeblock>
   
   </example>
   <example>
    <title>AUSTRALIA SOURCE XML 3: Mapping of <sourcexml>leg:officialname/remotelink</sourcexml></title>
    <codeblock>

&lt;leg:officialname searchtype="LEGISLATION"&gt;
 &lt;refpt id="VIC_ACT_1990-27" type="ext"&gt;&lt;/refpt&gt;QUARANTINE OFFICERS (TRANSFER) ACT 1990 (Repealed) 
 &lt;remotelink alttext="click to find cases &amp;amp; commentary" remotekey1="QUARANTINE OFFICERS TRANSFER ACT 1990" remotekey2="All Subscribed Australian Cases and Commentary" service="QUERY"&gt;
  &lt;inlineobject alttext="click to find cases &amp;amp; commentary" type="image" attachment="web-server" filename="mb.gif" /&gt;
 &lt;/remotelink&gt;
&lt;/leg:officialname&gt;
     
    </codeblock>
    <b>Becomes</b>
    <title>AUSTRALIA TARGET XML 3: Mapping of <sourcexml>leg:officialname/remotelink</sourcexml></title>
    <codeblock>

&lt;legisinfo:names&gt;
 &lt;legisinfo:officialtitle&gt;QUARANTINE OFFICERS (TRANSFER) ACT 1990 (Repealed)&lt;/legisinfo:officialtitle&gt;
&lt;/legisinfo:names&gt;
     
    </codeblock>
    
   </example>
   <note>In the above source examples <sourcexml>lnlink</sourcexml> and <sourcexml>remotelink</sourcexml> shall be suppressed from conversion and a corresponding product requirement shall be created with an instruction to build the link on retrieval based on semantic markup in the document. Use cases where the LBU feels the product requirement cannot be met if the markup is suppressed shall be handled case-by-case.</note>
   <note>If the input document has scenario <sourcexml>leg:officialname/refpt</sourcexml> then suppress <sourcexml>refpt</sourcexml> from conversion since the id value matches with <sourcexml>docinfo:doc-id</sourcexml>.</note>
   <example>
    <title>New Zealand SOURCE XML 4: Mapping of <sourcexml>leg:officialname</sourcexml></title>
    <codeblock>

&lt;leg:info&gt;
 &lt;leg:officialname searchtype="LEGISLATION"&gt;YEAR 2000 INFORMATION DISCLOSURE ACT&amp;#xA0;1999&lt;/leg:officialname&gt;
&lt;/leg:info&gt;
     
    </codeblock>
    <b>Becomes</b>
    <title>New Zealand TARGET XML 4: Mapping of <sourcexml>leg:officialname</sourcexml></title>
    <codeblock>
     
&lt;primlawinfo:primlawinfo&gt;
 &lt;legisinfo:legisinfo&gt;
  &lt;legisinfo:names&gt;
   &lt;legisinfo:officialtitle&gt;YEAR 2000 INFORMATION DISCLOSURE ACT&amp;#xA0;1999&lt;/legisinfo:officialtitle&gt;
  &lt;/legisinfo:names&gt;
 &lt;/legisinfo:legisinfo&gt;
 &lt;!-- ETC. --&gt;
&lt;/primlawinfo:primlawinfo&gt;

    </codeblock>
   </example>
   <example>
    <title>CANADA SOURCE XML 5: Mapping of <sourcexml>leg:officialname</sourcexml></title>
    <codeblock>

&lt;leg:officialname&gt;Assessment Act&lt;/leg:officialname&gt;

    </codeblock>
    <b>Becomes</b>
    <title>CANADA TARGET XML 5: Mapping of <sourcexml>leg:officialname</sourcexml></title>
    <codeblock>

&lt;legisinfo:names&gt;
 &lt;legisinfo:officialtitle&gt;Assessment Act&lt;/legisinfo:officialtitle&gt;
&lt;/legisinfo:names&gt;

    </codeblock>
   </example>
   <section>
    <title>Changes</title>
    <p>2013-07-16: <ph id="change_20130716_SK">Instruction narrative edited for language; no changes to mappings, no impact to stylesheets.</ph></p>
    
    <p>2013-07-08: <ph id="change_20130708_AB">Created.</ph></p>
   </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-Standard\Legislation\legis-leg.officialname.dita  -->
	<xsl:message>legis-leg.officialname.xsl requires manual development!</xsl:message> 

	<xsl:template match="leg:officialname">

		<!--  Original Target XPath:  legisinfo:officialtitle   -->
		<legisinfo:officialtitle>
			<xsl:apply-templates select="@* | node()"/>
		</legisinfo:officialtitle>

	</xsl:template>

	<xsl:template match="emph">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

	<xsl:template match="emph/@typestyle=&#34;it&#34;">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

	<xsl:template match="emph/@typestyle=&#34;un&#34;">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

	<xsl:template match="leg:officialname/refpt">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

	<xsl:template match="leg:officialname/lnlink">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

	<xsl:template match="leg:officialname/remotelink">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

	<xsl:template match="lnlink">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

	<xsl:template match="remotelink">

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