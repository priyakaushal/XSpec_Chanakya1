<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:admindoc="urn:x-lexisnexis:content:administrative-document:sharedservices:1" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="admindoc_standardCI_leg.empleg">
 <title>leg:empleg <lnpid>id-ST08-31613</lnpid></title>
 <body>
  <section>
   <ul>
    <li><sourcexml>leg:empleg</sourcexml>
     <b>becomes</b>
     <targetxml>admindoc:authority/admindoc:authorityitem/textitem</targetxml>
    </li>
   </ul>
   <note>The <sourcexml>leg:empleg</sourcexml> comes within <sourcexml>leg:heading</sourcexml>
    element in Rosetta but as per New Lexis <targetxml>admindoc:authority</targetxml> should be
    moved to become a sibling of <targetxml>heading</targetxml>.</note>
   <pre>
     
      				<b><i>Example: Source XML 1</i></b>

&lt;leg:level id="HIC1994SCHD1"&gt;
 &lt;leg:level-vrnt leveltype="schedule" searchtype="LEGISLATION SCHEDULE" subdoc="false" toc-caption="Schedule 1 Specified Health Agencies"&gt;
  &lt;leg:heading&gt;
   &lt;desig searchtype="SCH-NUM"&gt;
    &lt;designum&gt;&lt;refpt id="HIC1994SCHD1" type="ext"/&gt;Schedule 1&lt;/designum&gt;
   &lt;/desig&gt;
   &lt;title searchtype="SCH-TITLE"&gt;Specified Health Agencies&lt;/title&gt;
   &lt;leg:empleg&gt;Subclause 4(2)&lt;/leg:empleg&gt;
  &lt;/leg:heading&gt;
  &lt;!-- ETC. --&gt;
 &lt;/leg:level-vrnt&gt;
&lt;/leg:level&gt;

      			</pre>
   <pre>
      				<b><i>Example: Target XML 1</i></b>

&lt;admindoc:level alternatetoccaption="Schedule 1 Specified Health Agencies" includeintoc="false" leveltype="schedule"&gt;
 &lt;ref:anchor id="HIC1994SCHD1" anchortype="global"/&gt;
 &lt;heading&gt;
  &lt;desig value="1"&gt;SCHEDULE 1&lt;/desig&gt;
  &lt;title&gt;Specified Health Agencies&lt;/title&gt;
 &lt;/heading&gt;
 &lt;admindoc:authority&gt;
  &lt;admindoc:authorityitem&gt;
   &lt;textitem&gt;Subclause 4(2)&lt;/textitem&gt;
  &lt;/admindoc:authorityitem&gt;
 &lt;/admindoc:authority&gt;
 &lt;!-- ETC. --&gt;
&lt;/admindoc:level&gt;

      			</pre>
  </section>
 </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-Standard\Admindoc\admindoc_standardCI_leg.empleg.dita  -->
	<xsl:message>admindoc_standardCI_leg.empleg.xsl requires manual development!</xsl:message> 

	<xsl:template match="leg:empleg">

		<!--  Original Target XPath:  admindoc:authority/admindoc:authorityitem/textitem   -->
		<admindoc:authority>
			<admindoc:authorityitem>
				<textitem>
					<xsl:apply-templates select="@* | node()"/>
				</textitem>
			</admindoc:authorityitem>
		</admindoc:authority>

	</xsl:template>

	<xsl:template match="leg:heading">

		<!--  Original Target XPath:  admindoc:authority   -->
		<admindoc:authority>
			<xsl:apply-templates select="@* | node()"/>
		</admindoc:authority>

	</xsl:template>

</xsl:stylesheet>