<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:seclaw="http://www.lexisnexis.com/xmlschemas/content/legal/secondary-law/1/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Comm-Form-Pre_level4-target">
  <title>Target XML</title>
  <body>
    <codeblock>

&lt;seclaw:level leveltype="guidecard" includeintoc="false"&gt;
 &lt;ref:anchor id="nz_475_B005_V2" anchortype="global"/&gt;
 &lt;heading&gt;
  &lt;title&gt;Administration of Estates Vol II&lt;/title&gt;
 &lt;/heading&gt;
 &lt;seclaw:prelim xml:id="PRELIM_005_v2" alternatetoccaption="About this Title" includeintoc="false"&gt;
  &lt;pubfm:narrative narrativetype="prelim"&gt;
   &lt;p&gt;
    &lt;text&gt;The law is stated as at &lt;date year="2011" month="09" day="30"&gt;30 September 2011&lt;/date&gt;&lt;/text&gt;
   &lt;/p&gt;
   &lt;!-- ETC. --&gt;
   &lt;/pubfm:narrative&gt;
 &lt;/seclaw:prelim&gt;
 &lt;seclaw:bodytext/&gt;&lt;!-- &lt;targetxml&gt;seclaw:bodytext&lt;/targetxml&gt; is required element in &lt;targetxml&gt;seclaw:level&lt;/targetxml&gt;. --&gt;
&lt;/seclaw:level&gt;
    </codeblock>
   <note>In the source document, if <sourcexml>@leveltype</sourcexml> does not occur with <sourcexml>level</sourcexml> element then conversion should create <targetxml>seclaw:level/@leveltype="guidecard"</targetxml>.</note>
   <note><targetxml>seclaw:bodytext</targetxml> is required element in <targetxml>seclaw:level</targetxml>.</note>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\NZ09_Comm_Form_Prec_Text\Comm-Form-Pre_level4-target.dita  -->
	

</xsl:stylesheet>