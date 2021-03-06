<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="legis-leg.preamble">
 <title>leg:preamble <lnpid>id-ST03-26644</lnpid></title>
 <body>
  <section>
   <p><sourcexml>leg:preamble</sourcexml> becomes <targetxml>primlaw:level</targetxml> with attribute <targetxml>@leveltype="preamble"</targetxml>.</p>
  </section>
  <example>
   <title>UK SOURCE XML 1: Mapping of <sourcexml>leg:preable</sourcexml></title>
   <codeblock>

&lt;leg:body&gt;
 &lt;leg:preamble&gt;
  &lt;leg:bodytext searchtype="LEGISLATION"&gt;
   &lt;leg:comntry searchtype="ANNOTATIONS"&gt;
    &lt;level leveltype="comm30"&gt;
     &lt;bodytext&gt;
      &lt;heading searchtype="ANNOTATIONS"&gt;
       &lt;title&gt;&lt;emph typestyle="bf"&gt;NOTES&lt;/emph&gt;&lt;/title&gt;
      &lt;/heading&gt;
     &lt;/bodytext&gt;
     &lt;level leveltype="comm32"&gt;
      &lt;heading searchtype="ANNOTATIONS"&gt;
       &lt;title&gt;&lt;emph typestyle="bf"&gt;Amendment&lt;/emph&gt;&lt;/title&gt;
      &lt;/heading&gt;
     &lt;bodytext&gt;
      &lt;!-- ETC. --&gt;
     &lt;/bodytext&gt;
     &lt;level leveltype="comm48"&gt;
      &lt;bodytext&gt;
       &lt;!-- ETC. --&gt;
      &lt;/bodytext&gt;
     &lt;/level&gt;
    &lt;/level&gt;
   &lt;/level&gt;
  &lt;/leg:comntry&gt;
 &lt;/leg:bodytext&gt;
&lt;/leg:preamble&gt;
&lt;/leg:body&gt; 

   </codeblock>
   <b>Becomes</b>
   <title>UK TARGET XML 1: Mapping of <sourcexml>leg:preable</sourcexml></title>
   <codeblock>

&lt;legis:body&gt;
 &lt;primlaw:level leveltype="preamble"&gt;
  &lt;annot:annotations&gt;
   &lt;annot:annotation-grp grptype="COMMENTARY"&gt;
    &lt;annot:annotation&gt;
     &lt;bodytext&gt;
      &lt;h&gt;
       &lt;emph typestyle="bf"&gt;NOTES&lt;/emph&gt;
      &lt;/h&gt;
     &lt;/bodytext&gt;
     &lt;annot:annotationlevel&gt;
      &lt;heading&gt;
       &lt;title&gt;Amendment&lt;/title&gt;
      &lt;/heading&gt;
      &lt;annot:bodytext&gt;
       &lt;!-- ETC. --&gt;
       &lt;annot:annotationlevel&gt;
        &lt;annot:bodytext&gt;
         &lt;!-- ETC. --&gt;
        &lt;/annot:bodytext&gt;
       &lt;/annot:annotationlevel&gt;
      &lt;/annot:bodytext&gt;
     &lt;/annot:annotationlevel&gt;
    &lt;/annot:annotation&gt;
   &lt;/annot:annotation-grp&gt;
  &lt;/annot:annotations&gt;
 &lt;/primlaw:level&gt;
&lt;/legis:body&gt;

   </codeblock>
  </example>
  <example>
   <title>CANADA SOURCE XML 2: Mapping of <sourcexml>leg:preamble</sourcexml></title>
   <codeblock>

&lt;leg:preamble&gt;
 &lt;leg:heading&gt;
  &lt;title&gt;
   &lt;process-ignore process="kwd"&gt;Current to B.C. Regulations Bulletin No. 31, dated August 14, 2012.&lt;/process-ignore&gt;
  &lt;/title&gt;
 &lt;/leg:heading&gt;
 &lt;leg:bodytext&gt;
  &lt;p&gt;&lt;text&gt;The Revised Statutes of British Columbia, 1996, which came into force on April 21, 1997, are a consolidation of the public general Acts of British Columbia and other selected Acts. The consolidation represents the law contained in those consolidated Acts as of December 31, 1996.&lt;/text&gt;&lt;/p&gt;
  &lt;p&gt;&lt;text&gt;LexisNexis Canada updates this consolidation as appropriate.&lt;/text&gt;&lt;/p&gt;
 &lt;/leg:bodytext&gt; 
&lt;/leg:preamble&gt;

   </codeblock>
   <b>Becomes</b>
   <title>CANADA TARGET XML 2: Mapping of <sourcexml>leg:preamble</sourcexml></title>
   <codeblock>

&lt;primlaw:level leveltype="preamble"&gt;
 &lt;heading&gt;
  &lt;title&gt;Current to B.C. Regulations Bulletin No. 31, dated August 14, 2012.&lt;/title&gt;
 &lt;/heading&gt;
 &lt;primlaw:bodytext&gt;
  &lt;p&gt;&lt;text&gt;The Revised Statutes of British Columbia, 1996, which came into force on April 21, 1997, are a consolidation of the public general Acts of British Columbia and other selected Acts. The consolidation represents the law contained in those consolidated Acts as of December 31, 1996.&lt;/text&gt;&lt;/p&gt;
  &lt;p&gt;&lt;text&gt;LexisNexis Canada updates this consolidation as appropriate.&lt;/text&gt;&lt;/p&gt;
 &lt;/primlaw:bodytext&gt;
&lt;/primlaw:level&gt;

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
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-Standard\Legislation\legis-leg.preamble.dita  -->
	<xsl:message>legis-leg.preamble.xsl requires manual development!</xsl:message> 

	<xsl:template match="leg:preamble">

		<!--  Original Target XPath:  primlaw:level   -->
		<primlaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="leg:preable">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

</xsl:stylesheet>