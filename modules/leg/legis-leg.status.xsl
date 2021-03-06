<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:legisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/legislation-info/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="legis-leg.status">
  <title>leg:status <lnpid>id-ST03-26649</lnpid></title>
  <body>
    <section>
      <p><sourcexml>leg:info/leg:status</sourcexml> becomes <targetxml>legisinfo:legisinfo/legisinfo:statusgroup/legisinfo:status/legisinfo:statustext</targetxml></p>
     <p><sourcexml>leg:status/@statuscode</sourcexml> becomes <targetxml>legisinfo:status@statuscode</targetxml> the attribute value in the Source XML is directly converted into the target XML output as shown in the example below.</p>
     <note>Conversion should not create adjacent <targetxml>legisinfo:statusgroup</targetxml>. Data should be merged to single <targetxml>legisinfo:statusgroup</targetxml>.</note>
    </section>
    <example>
      <title>AUSTRALIA SOURCE XML 1: Mapping of <sourcexml>leg:info/leg:status</sourcexml></title>
      <codeblock>

&lt;leg:info&gt;
 &lt;leg:status&gt;Consolidated as in force on &lt;date&gt;21 October 2010&lt;/date&gt; and remains current to the date of the las Government Gazette.&lt;/leg:status&gt;
&lt;/leg:info&gt;
      </codeblock>
      <b>Becomes</b>
      <title>AUSTRALIA TARGET XML 1: Mapping of <sourcexml>leg:info/leg:status</sourcexml></title>
      <codeblock>

&lt;legisinfo:legisinfo&gt;
 &lt;legisinfo:statusgroup&gt;
  &lt;legisinfo:status&gt;
   &lt;legisinfo:statustext&gt;Consolidated as in force on &lt;date&gt;21 October 2010&lt;/date&gt; and remains current to the date  of the last Government Gazette.&lt;/legisinfo:statustext&gt;
  &lt;/legisinfo:status&gt;
 &lt;/legisinfo:statusgroup&gt;
&lt;/legisinfo:legisinfo&gt;

      </codeblock>
    </example>
    <example>
      <title>AUSTRALIA SOURCE XML 2 : Mapping of <sourcexml>leg:status/@statuscode</sourcexml></title>
      <codeblock>

&lt;leg:status statuscode="consolidated"&gt;
 &lt;!-- ETC. --&gt;
&lt;l/eg:status&gt;
        </codeblock>
      <b>Becomes</b>
      <title>AUSTRALIA TARGET XML 2: Mapping of <sourcexml>leg:status/@statuscode</sourcexml></title>
      <codeblock>

&lt;legisinfo:status statuscode="consolidated"&gt;
 &lt;!-- ETC. --&gt;
&lt;/legisinfo:status&gt;
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
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-Standard\Legislation\legis-leg.status.dita  -->
	<xsl:message>legis-leg.status.xsl requires manual development!</xsl:message> 

	<xsl:template match="leg:info/leg:status">

		<!--  Original Target XPath:  legisinfo:legisinfo/legisinfo:statusgroup/legisinfo:status/legisinfo:statustext   -->
		<legisinfo:legisinfo>
			<legisinfo:statusgroup>
				<legisinfo:status>
					<legisinfo:statustext>
						<xsl:apply-templates select="@* | node()"/>
					</legisinfo:statustext>
				</legisinfo:status>
			</legisinfo:statusgroup>
		</legisinfo:legisinfo>

	</xsl:template>

	<xsl:template match="leg:status/@statuscode">

		<!--  Original Target XPath:  legisinfo:status@statuscode   -->
		<legisinfo:status>
			<xsl:apply-templates select="@* | node()"/>
		</legisinfo:status>

	</xsl:template>

</xsl:stylesheet>