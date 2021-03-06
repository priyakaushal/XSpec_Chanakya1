<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
	xmlns:comm="http://www.lexis-nexis.com/glp/comm"
	xmlns:seclaw="http://www.lexisnexis.com/xmlschemas/content/legal/secondary-law/1/"
	xmlns:person="http://www.lexisnexis.com/xmlschemas/content/shared/person/1/"
	xmlns:pubinfo="http://www.lexisnexis.com/xmlschemas/content/shared/publication-info/1/"
	xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"
	version="2.0" exclude-result-prefixes="dita comm">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="contrib">
		<title>comm:info <lnpid>id-CA09-14408</lnpid></title>
		<body>
			<p><sourcexml>comm:info/contrib</sourcexml> becomes
					<targetxml>/seclaw:seclaw/seclaw:body/seclaw:level/seclaw:prelim/byline/person:contributor[@contributor-type='contributor']</targetxml>.</p>
			<note>Attribute <sourcexml>@ln.user-displayed</sourcexml> will be suppressed in target
				conversion.</note>
			<p><sourcexml>comm:info/publication</sourcexml> becomes
					<targetxml>/seclaw:seclaw/doc:metadata/pubinfo:pubinfo/pubinfo:publicationname</targetxml></p>
			<pre>
        <b>EXAMPLE</b>
            
<b><i>Source XML</i></b>

&lt;COMMENTARYDOC&gt;
 &lt;comm:info&gt;
  &lt;contrib ln.user-displayed="true"&gt;Nigel Bankes, Anne Calverley and Michael A. Thackray&lt;/contrib&gt;
  &lt;publication&gt;Canadian Oil &amp;#38; Gas, 2nd Ed.&lt;/publication&gt;
 &lt;/comm:info&gt;
 &lt;comm:body&gt;
  &lt;level leveltype="1"&gt;
   &lt;heading align="center"&gt;
    &lt;title searchtype="CHAPTER-TITLE"&gt;&lt;emph typestyle="bf"&gt;CHAPTER 5 CHARTER&lt;/emph&gt;&lt;/title&gt;
   &lt;/heading&gt;
   &lt;!-- ETC. --&gt;
  &lt;/level&gt;
 &lt;/comm:body&gt;
&lt;/COMMENTARYDOC&gt;
 
<b><i>Target XML</i></b>

&lt;seclaw:seclaw&gt;
 &lt;seclaw:body&gt;
  &lt;seclaw:level leveltype="unclassified"&gt;
   &lt;heading align="center"&gt;
    &lt;title&gt;CHAPTER 5 CHARTER&lt;/title&gt;
   &lt;/heading&gt;
   &lt;seclaw:prelim&gt;
    &lt;byline&gt;
     &lt;person:contributor contributor-type="contributor"&gt;Nigel Bankes, Anne Calverley and Michael A. Thackray&lt;/person:contributor&gt;
    &lt;/byline&gt;
   &lt;/seclaw:prelim&gt;
   &lt;!-- ETC. --&gt;
  &lt;/seclaw:level&gt;
  &lt;/seclaw:body&gt;
  &lt;doc:metadata&gt;
   &lt;pubinfo:pubinfo&gt;
    &lt;pubinfo:publicationname&gt;Canadian Oil &amp;#38; Gas, 2nd Ed.&lt;/pubinfo:publicationname&gt;
   &lt;/pubinfo:pubinfo&gt;
   &lt;!-- ETC. --&gt;
  &lt;/doc:metadata&gt;
&lt;/seclaw:seclaw&gt;

    </pre>
			<section>
				<title>Changes</title>
				<p>2014-04-01: <ph id="change_20140401_AS">Created.</ph>.</p>
			</section>
		</body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA09-Precedents_Forms\contrib.dita  -->
	<!--<xsl:message>contrib.xsl requires manual development!</xsl:message> -->

	<xsl:template match="COMMENTARYDOC/comm:info/contrib">
		<!--  Original Target XPath:  /seclaw:seclaw/seclaw:body/seclaw:level/seclaw:prelim/byline/person:contributor[@contributor-type='contributor']   -->	
		<seclaw:prelim>
			<byline>
				<person:contributor>
					<xsl:attribute name="contributor-type">contributor</xsl:attribute>
					<xsl:apply-templates select="@* | node()"/>
				</person:contributor>
			</byline>
		</seclaw:prelim>
	</xsl:template>

	<xsl:template match="@ln.user-displayed"/>



	<xsl:template match="COMMENTARYDOC/comm:info/publication">
		<!--  Original Target XPath:  /seclaw:seclaw/doc:metadata/pubinfo:pubinfo/pubinfo:publicationname   -->
		<pubinfo:pubinfo>
			<pubinfo:publicationname>
				<xsl:apply-templates select="@* | node()"/>
			</pubinfo:publicationname>
		</pubinfo:pubinfo>
	</xsl:template>
	
	<xsl:template match="COMMENTARYDOC/comm:info/publication/@searchtype"/>
	<xsl:template match="COMMENTARYDOC/comm:info/contrib/@searchtype"/>

</xsl:stylesheet>
