<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:classify="http://www.lexisnexis.com/xmlschemas/content/shared/classification/1/" xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="legis-leg.categories">
  <title>leg:categories <lnpid>id-ST03-26615</lnpid></title>
  <body>
    <section>
      <p><sourcexml>leg:categories/leg:heading/subtitle</sourcexml> becomes <targetxml>classify:classification/@classscheme="leg:categories"/classify:classitem/classify:classitem-identifier/classify:classname</targetxml></p>
     <note>If <sourcexml>emph</sourcexml> occurs within <sourcexml>title</sourcexml> or <sourcexml>subtitle</sourcexml> with the attribute's value <sourcexml>emph/@typestyle="it"</sourcexml> or <sourcexml>emph/@typestyle="un"</sourcexml> will be retained and all other <sourcexml>emph</sourcexml> will be omitted from the NL conversion.</note>
     <note><b>Exception Scenario for <sourcexml>leg:categories</sourcexml>:</b> <sourcexml>leg:categories/glp:note/pgrp</sourcexml> becomes <targetxml>primlaw:level[@leveltype="preamble"]/annot:annotations/annot:annotation-grp/annot:annotation/bodytext/pgrp</targetxml> and populated as below.</note>
    </section>
    <example>
      <title>UK SOURCE XML 1: Mapping of <sourcexml>leg:categories</sourcexml></title>
      <codeblock>

&lt;leg:body&gt;
 &lt;leg:info subseqdoc="false"&gt;
  &lt;!-- ETC. --&gt;
  &lt;leg:categories&gt;
   &lt;leg:heading searchtype="LEGISLATION"&gt;
    &lt;subtitle&gt;&lt;emph typestyle="bf"&gt;REPRESENTATION OF THE PEOPLE&lt;/emph&gt;&lt;/subtitle&gt;
   &lt;/leg:heading&gt;
  &lt;/leg:categories&gt;
 &lt;/leg:info&gt;
 &lt;!-- ETC. --&gt;
&lt;/leg:body&gt; 

      </codeblock>
      <b>Becomes</b>
      <title>UK TARGET XML 1: Mapping of <sourcexml>leg:categories</sourcexml></title>
      <codeblock>

&lt;legis:head&gt;
 &lt;primlawinfo:primlawinfo&gt;
  &lt;!-- ETC. --&gt;
  &lt;classify:classification classscheme="leg:categories"&gt;
   &lt;classify:classitem&gt;
    &lt;classify:classitem-identifier&gt;
     &lt;classify:classname&gt;REPRESENTATION OF THE PEOPLE&lt;/classify:classname&gt;
    &lt;/classify:classitem-identifier&gt;
   &lt;/classify:classitem&gt;
  &lt;/classify:classification&gt;
 &lt;/primlawinfo:primlawinfo&gt;
&lt;/legis:head&gt;
&lt;legis:body&gt;
 &lt;!-- ETC. --&gt;
&lt;/legis:body&gt;

      </codeblock>
    </example>
   <example>
    <title>UK SOURCE XML 2: Exception Scenario mapping of <sourcexml>leg:categories</sourcexml></title>
    <codeblock>

&lt;leg:body&gt;
 &lt;leg:info subseqdoc="false"&gt;
  &lt;!-- ETC. --&gt;
  &lt;leg:categories&gt;
   &lt;glp:note&gt;
    &lt;pgrp&gt;
     &lt;p&gt;&lt;text searchtype="LEGISLATION"&gt;[Short title given by Pre-Revestment Written Laws (Ascertainment) Act 1978 Sch.]&lt;/text&gt;&lt;/p&gt;
     &lt;p&gt;&lt;text searchtype="LEGISLATION"&gt;[S 11 alone confirmed by Pre-Revestment Written Laws (Ascertainment) Act 1978 Sch.]&lt;/text&gt;&lt;/p&gt;
     &lt;p&gt;&lt;text searchtype="LEGISLATION"&gt;[Short title given by Pre-Revestment Written Laws (Ascertainment) Act 1978 Sch.]&lt;/text&gt;&lt;/p&gt;
     &lt;p&gt;&lt;text searchtype="LEGISLATION"&gt;[S 11 alone confirmed by Pre-Revestment Written Laws (Ascertainment) Act 1978 Sch.]&lt;/text&gt;&lt;/p&gt;
    &lt;/pgrp&gt;
    &lt;/glp:note&gt;
  &lt;/leg:categories&gt;
 &lt;/leg:info&gt;
 &lt;!-- ETC. --&gt;
&lt;/leg:body&gt; 

      </codeblock>
    <b>Becomes</b>
    <title>UK TARGET XML 2: Exception Scenario mapping of <sourcexml>leg:categories</sourcexml></title>
    <codeblock>

&lt;legis:head&gt;
 &lt;primlawinfo:primlawinfo&gt;
  &lt;legisinfo:legisinfo&gt;
   &lt;!-- ETC. --&gt;
  &lt;/legisinfo:legisinfo&gt;
 &lt;/primlawinfo:primlawinfo&gt;
&lt;/legis:head&gt;
&lt;legis:body&gt;
 &lt;primlaw:level leveltype="preamble"&gt;
  &lt;annot:annotations&gt;
   &lt;annot:annotation-grp grptype="COMMENTARY"&gt;
    &lt;annot:annotation&gt;
     &lt;bodytext&gt;
      &lt;pgrp&gt;
       &lt;p&gt;&lt;text&gt;&amp;#x005B;Short title given by Pre-Revestment Written Laws &amp;#x0028;Ascertainment&amp;#x0029; Act 1978 Sch.&amp;#x005D;&lt;/text&gt;&lt;/p&gt;
       &lt;p&gt;&lt;text&gt;&amp;#x005B;S 11 alone confirmed by Pre-Revestment Written Laws &amp;#x0028;Ascertainment&amp;#x0029; Act 1978 Sch.&amp;#x005D;&lt;/text&gt;&lt;/p&gt;
       &lt;p&gt;&lt;text&gt;&amp;#x005B;Short title given by Pre-Revestment Written Laws &amp;#x0028;Ascertainment&amp;#x0029; Act 1978 Sch.&amp;#x005D;&lt;/text&gt;&lt;/p&gt;
       &lt;p&gt;&lt;text&gt;&amp;#x005B;S 11 alone confirmed by Pre-Revestment Written Laws &amp;#x0028;Ascertainment&amp;#x0029; Act 1978 Sch.&amp;#x005D;&lt;/text&gt;&lt;/p&gt;
      &lt;/pgrp&gt;
     &lt;/bodytext&gt;
    &lt;/annot:annotation&gt;
   &lt;/annot:annotation-grp&gt;
  &lt;/annot:annotations&gt;
 &lt;/primlaw:level&gt;
 &lt;!-- ETC. --&gt;
&lt;/legis:body&gt;

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
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-Standard\Legislation\legis-leg.categories.dita  -->
	<xsl:message>legis-leg.categories.xsl requires manual development!</xsl:message> 

	<xsl:template match="leg:categories/leg:heading/subtitle">

		<!--  Original Target XPath:  classify:classification/@classscheme="leg:categories"/classify:classitem/classify:classitem-identifier/classify:classname   -->
		<classify:classification>
			<!--  Could not determine target element or attribute name:  <@classscheme="leg:categories"/classify:classitem/classify:classitem-identifier/classify:classname>  -->
				<classify:classitem>
					<classify:classitem-identifier>
						<classify:classname>
							<xsl:apply-templates select="@* | node()"/>
						</classify:classname>
					</classify:classitem-identifier>
				</classify:classitem>
			<!--  Could not determine target element or attribute name:  </@classscheme="leg:categories"/classify:classitem/classify:classitem-identifier/classify:classname>  -->
		</classify:classification>

	</xsl:template>

	<xsl:template match="emph">

		<!--  Original Target XPath:  primlaw:level[@leveltype="preamble"]/annot:annotations/annot:annotation-grp/annot:annotation/bodytext/pgrp   -->
		<primlaw:level>
			<annot:annotations xmlns:annot="http://www.lexisnexis.com/xmlschemas/content/shared/annotations/1/">
				<annot:annotation-grp>
					<annot:annotation>
						<bodytext>
							<pgrp>
								<xsl:apply-templates select="@* | node()"/>
							</pgrp>
						</bodytext>
					</annot:annotation>
				</annot:annotation-grp>
			</annot:annotations>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="title">

		<!--  Original Target XPath:  primlaw:level[@leveltype="preamble"]/annot:annotations/annot:annotation-grp/annot:annotation/bodytext/pgrp   -->
		<primlaw:level>
			<annot:annotations xmlns:annot="http://www.lexisnexis.com/xmlschemas/content/shared/annotations/1/">
				<annot:annotation-grp>
					<annot:annotation>
						<bodytext>
							<pgrp>
								<xsl:apply-templates select="@* | node()"/>
							</pgrp>
						</bodytext>
					</annot:annotation>
				</annot:annotation-grp>
			</annot:annotations>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="subtitle">

		<!--  Original Target XPath:  primlaw:level[@leveltype="preamble"]/annot:annotations/annot:annotation-grp/annot:annotation/bodytext/pgrp   -->
		<primlaw:level>
			<annot:annotations xmlns:annot="http://www.lexisnexis.com/xmlschemas/content/shared/annotations/1/">
				<annot:annotation-grp>
					<annot:annotation>
						<bodytext>
							<pgrp>
								<xsl:apply-templates select="@* | node()"/>
							</pgrp>
						</bodytext>
					</annot:annotation>
				</annot:annotation-grp>
			</annot:annotations>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="emph/@typestyle=&#34;it&#34;">

		<!--  Original Target XPath:  primlaw:level[@leveltype="preamble"]/annot:annotations/annot:annotation-grp/annot:annotation/bodytext/pgrp   -->
		<primlaw:level>
			<annot:annotations xmlns:annot="http://www.lexisnexis.com/xmlschemas/content/shared/annotations/1/">
				<annot:annotation-grp>
					<annot:annotation>
						<bodytext>
							<pgrp>
								<xsl:apply-templates select="@* | node()"/>
							</pgrp>
						</bodytext>
					</annot:annotation>
				</annot:annotation-grp>
			</annot:annotations>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="emph/@typestyle=&#34;un&#34;">

		<!--  Original Target XPath:  primlaw:level[@leveltype="preamble"]/annot:annotations/annot:annotation-grp/annot:annotation/bodytext/pgrp   -->
		<primlaw:level>
			<annot:annotations xmlns:annot="http://www.lexisnexis.com/xmlschemas/content/shared/annotations/1/">
				<annot:annotation-grp>
					<annot:annotation>
						<bodytext>
							<pgrp>
								<xsl:apply-templates select="@* | node()"/>
							</pgrp>
						</bodytext>
					</annot:annotation>
				</annot:annotation-grp>
			</annot:annotations>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="leg:categories">

		<!--  Original Target XPath:  primlaw:level[@leveltype="preamble"]/annot:annotations/annot:annotation-grp/annot:annotation/bodytext/pgrp   -->
		<primlaw:level>
			<annot:annotations xmlns:annot="http://www.lexisnexis.com/xmlschemas/content/shared/annotations/1/">
				<annot:annotation-grp>
					<annot:annotation>
						<bodytext>
							<pgrp>
								<xsl:apply-templates select="@* | node()"/>
							</pgrp>
						</bodytext>
					</annot:annotation>
				</annot:annotation-grp>
			</annot:annotations>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="leg:categories/glp:note/pgrp">

		<!--  Original Target XPath:  primlaw:level[@leveltype="preamble"]/annot:annotations/annot:annotation-grp/annot:annotation/bodytext/pgrp   -->
		<primlaw:level>
			<annot:annotations xmlns:annot="http://www.lexisnexis.com/xmlschemas/content/shared/annotations/1/">
				<annot:annotation-grp>
					<annot:annotation>
						<bodytext>
							<pgrp>
								<xsl:apply-templates select="@* | node()"/>
							</pgrp>
						</bodytext>
					</annot:annotation>
				</annot:annotation-grp>
			</annot:annotations>
		</primlaw:level>

	</xsl:template>

</xsl:stylesheet>