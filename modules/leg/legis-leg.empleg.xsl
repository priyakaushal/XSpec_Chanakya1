<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:glp="http://www.lexis-nexis.com/glp" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" version="2.0" exclude-result-prefixes="dita glp leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="legis-leg.empleg">
  <title>leg:empleg <lnpid>id-ST03-26623</lnpid></title>
  <body>
    <section>
     <p><sourcexml>leg:empleg</sourcexml> becomes <targetxml>primlaw:authority/primlaw:authority-item/bodytext/textitem</targetxml>.
      <note><targetxml>primlaw:authority</targetxml> is a sibling of <targetxml>heading</targetxml>.</note>
     </p>
    </section>
    <example>
      <title>AUSTRALIA Source XML 1: Mapping of <sourcexml>leg:empleg</sourcexml></title>
      <codeblock>

&lt;leg:level id="VIC_ACT_2003-114_SCHEDSSCH1"&gt;
 &lt;leg:level-vrnt leveltype="schedule" searchtype="LEGISLATION" subdoc="false" toc-caption="SCHEDULE 1"&gt;
  &lt;leg:heading&gt;
   &lt;title align="center" searchtype="SCH-TITLE"&gt;
    &lt;refpt id="VIC_ACT_2003-114_SCHEDSSCH1" type="ext"/&gt;
    &lt;emph typestyle="bf"&gt;SCHEDULE 1&lt;/emph&gt;
   &lt;/title&gt;
   &lt;subtitle&gt;
    &lt;emph typestyle="bf"&gt;SUBJECT MATTER FOR REGULATIONS&lt;/emph&gt;
   &lt;/subtitle&gt;
   &lt;leg:empleg&gt;
    &lt;ci:cite searchtype="LEG-REF"&gt;
     &lt;ci:content&gt;Section 11.2.1&lt;/ci:content&gt;
    &lt;/ci:cite&gt;
   &lt;/leg:empleg&gt;
  &lt;/leg:heading&gt;
  &lt;!-- ETC. --&gt;
 &lt;/leg:level-vrnt&gt;
&lt;/leg:level&gt;

      </codeblock>
      <b>Becomes</b>
     <title>AUSTRALIA Target XML 1: Mapping of <sourcexml>leg:empleg</sourcexml></title>
      <codeblock>

&lt;primlaw:level leveltype="schedule" includeintoc="false" alternatetoccaption="SCHEDULE 1"&gt;
 &lt;ref:anchor id="VIC_ACT_2003-114_SCHEDSSCH1" anchortype="global"/&gt;
 &lt;heading&gt;
  &lt;title align="center"&gt;SCHEDULE 1&lt;/title&gt;
  &lt;subtitle&gt;SUBJECT MATTER FOR REGULATIONS&lt;/subtitle&gt;
 &lt;/heading&gt;
 &lt;primlaw:authority&gt;
  &lt;primlaw:authority-item&gt;
   &lt;bodytext&gt;
    &lt;textitem&gt;
     &lt;lnci:cite type="legislation"&gt;
      &lt;lnci:content&gt;Section 11.2.1&lt;/lnci:content&gt;
     &lt;/lnci:cite&gt;
    &lt;/textitem&gt;
   &lt;/bodytext&gt;
  &lt;/primlaw:authority-item&gt;
 &lt;/primlaw:authority&gt;
&lt;/primlaw:level&gt;

    </codeblock>
    </example>
   <example>
    <title>New Zealand SOURCE XML 2: Mapping of <sourcexml>leg:empleg</sourcexml></title>
    <codeblock>

&lt;leg:level id="2006L1_SCHEDULE"&gt;
 &lt;leg:level-vrnt searchtype="LEGISLATION SCHEDULE" subdoc="true" leveltype="schedule" toc-caption="Schedule &amp;#x2014; Alfred Cox Park"&gt;
  &lt;leg:heading&gt;
   &lt;desig searchtype="SCH-NUM"&gt;
    &lt;designum&gt;&lt;refpt id="2006L1_SCHEDULE" type="ext"/&gt;Schedule&lt;/designum&gt;
   &lt;/desig&gt;
   &lt;title searchtype="SCH-TITLE"&gt; &amp;#x2014; Alfred Cox Park&lt;/title&gt;
   &lt;leg:empleg&gt;
    &lt;remotelink dpsi="0069" remotekey1="REFPTID" docidref="ABCD_9876" service="DOC-ID" refpt="2006L1S3"&gt;s&amp;#xA0;3&lt;/remotelink&gt;
   &lt;/leg:empleg&gt;
  &lt;/leg:heading&gt;
  &lt;!-- ETC. --&gt;
 &lt;/leg:level-vrnt&gt;
&lt;/leg:level&gt;
     
    </codeblock>
    <b>Becomes</b>
    <title>New Zealand Target XML 2: Mapping of <sourcexml>leg:empleg</sourcexml></title>
    <codeblock>

&lt;primlaw:level subdoc="true" leveltype="schedule" toc-caption="Schedule &amp;#x2014; Alfred Cox Park"&gt;
 &lt;ref:anchor id="nz_2006L1_SCHEDULE" anchortype="global"/&gt;
 &lt;heading&gt;
  &lt;desig&gt;Schedule&lt;/desig&gt;
  &lt;title&gt;&lt;emph typestyle="bf"&gt;Alfred Cox Park&lt;/emph&gt;&lt;/title&gt;
 &lt;/heading&gt;
 &lt;primlaw:authority&gt;
  &lt;primlaw:authority-item&gt;
   &lt;bodytext&gt;
    &lt;textitem&gt;
     &lt;ref:lnlink&gt;
      &lt;ref:marker role="label"&gt;s&amp;#xA0;3&lt;/ref:marker&gt;
      &lt;ref:locator anchoridref="_2006L1S3"&gt; 
       &lt;ref:locator-key&gt;
        &lt;ref:key-name name="DOC-ID"/&gt;
        &lt;ref:key-value value="0069-ABCD_9876"/&gt;
       &lt;/ref:locator-key&gt;
      &lt;/ref:locator&gt;
     &lt;/ref:lnlink&gt;
    &lt;/textitem&gt;
   &lt;/bodytext&gt;
  &lt;/primlaw:authority-item&gt;
 &lt;/primlaw:authority&gt;
 &lt;!-- ETC. --&gt;
&lt;/primlaw:level&gt;

    </codeblock>
   </example>
   <section><p>
    <sourcexml>leg:empleg/glp:note</sourcexml> becomes <targetxml>primlaw:authority/primlaw:authority-item/bodytext/note</targetxml> and populated as:</p>
    <note>If text is found between <sourcexml>leg:empleg</sourcexml> and <sourcexml>glp:note</sourcexml> then enclose the text in <targetxml>p</targetxml> before creating <targetxml>note</targetxml>. If text is found after <sourcexml>glp:note</sourcexml> but before the close of <sourcexml>leg:empleg</sourcexml> then enclose the text in <targetxml>p</targetxml>.</note>
   </section>
   <example>
    <title>New Zealand SOURCE XML 1: Mapping of <sourcexml>leg:empleg/glp:note</sourcexml></title>
    <codeblock>

&lt;leg:empleg&gt;
 &lt;ci:cite searchtype="LEG-REF"&gt;
  &lt;ci:content&gt;
   &lt;remotelink refpt="1966A19:1980A5S3" dpsi="005X" docidref="ABCD_9876" remotekey1="REFPTID" service="DOC-ID"&gt;Section 3&lt;/remotelink&gt; 
  &lt;/ci:content&gt;
 &lt;/ci:cite&gt;
 &lt;glp:note&gt;
  &lt;p&gt;&lt;text&gt;{ Editorial Note: These amendments have been incorporated in principal Act. }&lt;/text&gt;&lt;/p&gt;
 &lt;/glp:note&gt;
&lt;/leg:empleg&gt;
     
    </codeblock>
    <b>Becomes</b>
    <title>New Zealand Target XML 1: Mapping of <sourcexml>leg:empleg/glp:note</sourcexml></title>
    <codeblock>

&lt;primlaw:authority&gt;
 &lt;primlaw:authority-item&gt;
  &lt;bodytext&gt;
   &lt;textitem&gt;
    &lt;lnci:cite&gt;
     &lt;lnci:content&gt;
      &lt;ref:crossreference crossreferencetype="seeAlso"&gt;
       &lt;ref:content&gt;Section 3&lt;/ref:content&gt;
       &lt;ref:locator anchoridref="1966A19:1980A5S3"&gt;
        &lt;ref:locator-key&gt;
         &lt;ref:key-name name="DOC-ID"/&gt;
         &lt;ref:key-value value="005X-ABCD_9876"/&gt;
        &lt;/ref:locator-key&gt;
       &lt;/ref:locator&gt;
      &lt;/ref:crossreference&gt;
     &lt;/lnci:content&gt;
    &lt;/lnci:cite&gt;
   &lt;/textitem&gt;
   &lt;note&gt;
    &lt;bodytext&gt;
     &lt;p&gt;&lt;text&gt;{ Editorial Note: These amendments have been incorporated in principal Act. }&lt;/text&gt; &lt;/p&gt;
    &lt;/bodytext&gt;
   &lt;/note&gt;
  &lt;/bodytext&gt;
 &lt;/primlaw:authority-item&gt;
&lt;/primlaw:authority

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
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-Standard\Legislation\legis-leg.empleg.dita  -->
	<xsl:message>legis-leg.empleg.xsl requires manual development!</xsl:message> 

	<xsl:template match="leg:empleg">

		<!--  Original Target XPath:  primlaw:authority/primlaw:authority-item/bodytext/textitem   -->
		<primlaw:authority>
			<primlaw:authority-item>
				<bodytext>
					<textitem>
						<xsl:apply-templates select="@* | node()"/>
					</textitem>
				</bodytext>
			</primlaw:authority-item>
		</primlaw:authority>

	</xsl:template>

	<xsl:template match="leg:empleg/glp:note">

		<!--  Original Target XPath:  primlaw:authority/primlaw:authority-item/bodytext/note   -->
		<primlaw:authority>
			<primlaw:authority-item>
				<bodytext>
					<note>
						<xsl:apply-templates select="@* | node()"/>
					</note>
				</bodytext>
			</primlaw:authority-item>
		</primlaw:authority>

	</xsl:template>

	<xsl:template match="glp:note">

		<!--  Original Target XPath:  p   -->
		<p>
			<xsl:apply-templates select="@* | node()"/>
		</p>

	</xsl:template>

</xsl:stylesheet>