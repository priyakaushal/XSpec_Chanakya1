<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:admindecision="urn:x-lexisnexis:content:administrative-decision:sharedservices:1" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_refnum_refnumtype_UCN-LxAdv_ref_groupid">
   <title>refnum[@refnumtype="UCN"] - ref:groupid <lnpid>id-CCCC-12047</lnpid></title>
   <body>
      <section>
         <p><sourcexml>refnum[@refnumtype="UCN"]</sourcexml> becomes
               <targetxml>admindecision:caseinfo/ref:groupid</targetxml>.</p>
		 <p>The content of <sourcexml>refnum</sourcexml>, prepended with the string "urn:ucn-1:", becomes the content of the <targetxml>ref:resourcekey</targetxml>
			 attribute of <targetxml>ref:resourceid</targetxml>.</p>
         <p>Other attributes of <sourcexml>refnum</sourcexml> are dropped.</p>
      </section>
      <example>
         <title>Mapping of <sourcexml>refnum[@refnumtype="UCN"]</sourcexml></title>
         <codeblock>
&lt;refnum refnumtype="UCN" ln.user-displayed="false"&gt;00180609&lt;/refnum&gt;
           </codeblock>
         <b>becomes</b>
         <codeblock>

&lt;admindecision:caseinfo&gt;
	...
	&lt;ref:groupid&gt;&lt;ref:resourceid ref:resourcekey="urn:ucn-1:00180609"/&gt;
	...
&lt;admindecision:caseinfo&gt;

           </codeblock>
      </example>
      <section>
         <title>Changes</title>
			<p>2014-08-01: <ph id="change_20140801_AS">Updated target mapping specific to CA04.... P4 Db issue 312</ph></p>			
      </section>
   </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA04-Administrative_Decisions\Rosetta_refnum.refnumtype.UCN-LxAdv_ref.groupid.dita  -->
	<xsl:message>CA04-Administrative_Decisions_Rosetta_refnum.refnumtype.UCN-LxAdv_ref.groupid.xsl requires manual development!</xsl:message> 

	<xsl:template match="refnum[@refnumtype=&#34;UCN&#34;]">

		<!--  Original Target XPath:  admindecision:caseinfo/ref:groupid   -->
		<admindecision:caseinfo>
			<ref:groupid>
				<xsl:apply-templates select="@* | node()"/>
			</ref:groupid>
		</admindecision:caseinfo>

	</xsl:template>

	<xsl:template match="refnum">

		<!--  Original Target XPath:  ref:resourcekey   -->
		<ref:resourcekey>
			<xsl:apply-templates select="@* | node()"/>
		</ref:resourcekey>

	</xsl:template>

</xsl:stylesheet>