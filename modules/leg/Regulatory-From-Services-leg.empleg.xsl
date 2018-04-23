<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
 xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/"
 xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:admindoc="urn:x-lexisnexis:content:administrative-document:sharedservices:1" 
 version="2.0" exclude-result-prefixes="#all">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Regulatory-From-Services-leg.empleg">
   <title>leg:empleg <lnpid>id-NZ12-24811</lnpid></title>
   <body>
      <section>
      	<ul>
      		<li><sourcexml>leg:empleg</sourcexml>
     <b>Becomes</b>
     <targetxml>admindoc:authority/admindoc:authorityitem/textitem</targetxml> and populated as: <pre>
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
     <note>The <sourcexml>leg:empleg</sourcexml> comes under <sourcexml>leg:heading</sourcexml>
      element in Rosetta but as per New Lexis <targetxml>admindoc:authority</targetxml> should be
      moved between <targetxml>admindoc:level</targetxml> and <targetxml>heading</targetxml>
      elements.</note>
     <note> If we have empty <sourcexml>leg:empleg</sourcexml> in the source document then we don't
      need to generate any target markup for this,
       <targetxml>admindoc:authority/admindoc:authorityitem/textitem</targetxml> will be suppressed
      in target.</note>
    </li>
		</ul>
      </section>
    <section>
     <title>Changes</title>
     <p>2014-07-03: <ph id="change_20140703_SSX">Added a note to suppress
      <sourcexml>leg:empleg</sourcexml> complete target markup from target, if it's empty in source
     documents Webteam# 260779</ph></p>
    </section>
   </body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\NZ12_Regulatory_Material_From_Services\Regulatory-From-Services-leg.empleg.dita  -->
	
 <xsl:template match="leg:empleg">
  <xsl:if test="text() or child::*">
   <admindoc:authority>
    <admindoc:authorityitem>
     <textitem xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
      <xsl:apply-templates select="@* | node()"/>
     </textitem>
    </admindoc:authorityitem>
   </admindoc:authority>
  </xsl:if>
 </xsl:template>
 
 <xsl:template match="leg:empleg[ancestor::legfragment]">
  <xsl:if test="text() or child::*">
   <primlaw:authority>
    <primlaw:authority-item>
     <textitem xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
      <xsl:apply-templates select="@* | node()"/>
     </textitem>
    </primlaw:authority-item>
   </primlaw:authority>
  </xsl:if>
 </xsl:template>
</xsl:stylesheet>