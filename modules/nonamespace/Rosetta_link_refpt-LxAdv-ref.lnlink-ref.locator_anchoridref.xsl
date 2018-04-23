<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
  xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_link_refpt-to-LexisAdvance_ref.lnlink-ref.locator_anchoridref">
  <title><sourcexml>link/@refpt</sourcexml> to <targetxml>ref:lnlink/ref.locator/@anchoridref</targetxml> <lnpid>id-CCCC-10395</lnpid></title>
  <body>
    <section>
      <p>If <sourcexml>link</sourcexml> only has the attribute <sourcexml>@refpt</sourcexml>, then the following instructions should be used: <ul>
        <li><sourcexml>link</sourcexml> becomes <targetxml>ref:lnlink</targetxml>.</li>
        <li>The content of <sourcexml>link</sourcexml> becomes <targetxml>ref:marker</targetxml>.</li>
        <li>Create <targetxml>ref:locator</targetxml> and populate the attribute <targetxml>ref:locator/@anchoridref</targetxml> with the
          value of <sourcexml>link/@refpt</sourcexml>.</li>
      </ul>
      </p>
      <note><targetxml>ref:locator/@anchoridref</targetxml> that begins with a number must
        have an underscore added at start. Also apply other identifier data type format as
        used for <targetxml>xml:id</targetxml> and <targetxml>ref:anchor/@id</targetxml>
        (e.g. change colon to underscore). Refer to the section titled "Identifiers to ID Data Type - 
        Handling Pattern Restrictions", if that section exists in this CI.</note>
      
      <note>
        If the link element source also includes a <sourcexml>@dpsi</sourcexml>, the attribute should be dropped. 
      </note>
    </section>
    
    <example>
      <title>Source XML: only attribute of <sourcexml>link</sourcexml> is <sourcexml>refpt</sourcexml></title>
      <codeblock>

&lt;link refpt="x98-1174a2"&gt;page 324 line 46&lt;/link&gt;

			</codeblock>
    </example>
    <example>
      <title>Target XML: only attribute of <sourcexml>link</sourcexml> is <sourcexml>refpt</sourcexml></title>
      <codeblock>

&lt;ref:lnlink&gt;
    &lt;ref:marker&gt;page 324 line 46&lt;/ref:marker&gt;
    &lt;ref:locator anchoridref="x98-1174a2"/&gt;
&lt;/ref:lnlink&gt;

			</codeblock>
    </example>
    <note><b>CA02-CC</b><b>: </b><sourcexml>emph</sourcexml> will be dropped in
        <sourcexml>link/emph</sourcexml>. </note>
    <section>
      <title>Changes</title>
      <p>2016-11-16: <ph id="change_20161116_snb">Added to note regarding applying any rules related to 
        <targetxml>@anchoridref</targetxml>, referring specifically to section for "Identifiers to ID Data Type - 
        Handling Pattern Restrictions".</ph>
      </p>
      <p>2014-11-24: <ph id="change_20141124_AS">Updated instruction for CA02-CC to drop
            <sourcexml>emph</sourcexml> in <sourcexml>link/emph</sourcexml>.</ph></p>
    </section>
  </body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_link_refpt-LxAdv-ref.lnlink-ref.locator_anchoridref.dita  -->

  <!-- Vikas Rohilla : updated the priority attribute because the ambigous math with in the file Rosetta_link-LxAdv-ref.lnlink.xsl at line 177 -->
	<xsl:template match="link[@refpt][not(@type or @smi or @filename)]" priority="2">
		<ref:lnlink>
			<ref:marker>
				<xsl:choose>
					<xsl:when test="$streamID='CA02-CC'"><xsl:value-of select="."/></xsl:when>
					<xsl:otherwise><xsl:apply-templates select="node()"/></xsl:otherwise>
				</xsl:choose>
			</ref:marker>
			<ref:locator>
				<xsl:attribute name="anchoridref">
					<xsl:apply-templates select="@refpt"/>
				</xsl:attribute>
			</ref:locator>
		</ref:lnlink>
	</xsl:template>


	<xsl:template match="link/@refpt">
		<xsl:attribute name="anchoridref">
			<xsl:call-template name="normalizeIdString"/>
		</xsl:attribute>
	</xsl:template>

	<xsl:template match="link/@dpsi"/>

		


</xsl:stylesheet>