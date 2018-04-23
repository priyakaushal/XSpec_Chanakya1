<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_link_refpt-to-LexisAdvance_ref.lnlink-ref.locator_anchoridref">
  <title><sourcexml>link</sourcexml> to <targetxml>ref:lnlink</targetxml> <lnpid>id-UK10-29224</lnpid></title>
  <body>
    <section>
      <p><sourcexml>link</sourcexml> becomes <targetxml>ref:lnlink</targetxml>. <ul>
          <li>If <sourcexml>@smi</sourcexml> is <u>not</u> present and
                            <sourcexml>@status="valid"</sourcexml>, suppress
                            <sourcexml>@status</sourcexml>, otherwise <sourcexml>@status</sourcexml>
                        becomes <targetxml>@status</targetxml></li>
          <li>The content of <sourcexml>link</sourcexml> becomes
              <targetxml>ref:marker</targetxml>.</li>
          <li>Create <targetxml>ref:locator</targetxml> and populate the attribute
              <targetxml>ref:locator/@anchoridref</targetxml> with the value of
              <sourcexml>@refpt</sourcexml>.</li>
        </ul></p>
      <note><targetxml>ref:locator/@anchoridref</targetxml> that begins with a number must
        have an underscore added at start. Also apply other identifier data type format as
        used for <targetxml>xml:id</targetxml> and <targetxml>ref:anchor/@id</targetxml>
        (e.g. change colon to underscore).</note>
    </section>
    
    <example>
      <title>Source XML </title>
      <codeblock>

&lt;link refpt="tab-1" status="valid"&gt;
  ...
  Halsbury's Laws
&lt;/link&gt;

			</codeblock>
    </example>
    <example>
      <title>Target XML </title>
      <codeblock>

&lt;ref:lnlink&gt;
        &lt;ref:marker&gt;
            ...
            Halsbury's Laws 
        &lt;/ref:marker&gt;
        &lt;ref:locator anchoridref="tab-1"/&gt;
    &lt;/ref:lnlink&gt;

			</codeblock>
    </example>

	<section>
		<title>Changes</title>
		<p>2013-08-21: <ph id="change_20130821_raj">Added instruction for when to suppress <sourcexml>@status</sourcexml>.</ph></p>
	</section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK10_Dictionary\link.dita  -->
	

	<xsl:template match="link">
		<ref:lnlink>
			<xsl:if test="@smi and @status!='valid'">
				<xsl:apply-templates select="@status"/>
			</xsl:if>
			<ref:marker><xsl:apply-templates/></ref:marker>
			<ref:locator>
				<xsl:apply-templates select="@refpt"/>				
			</ref:locator>
		</ref:lnlink>

	</xsl:template>

		

	<xsl:template match="link/@status">
		<xsl:copy-of select="."/>
	</xsl:template>

	<xsl:template match="link/@refpt">
		<xsl:attribute name="anchoridref">
			<xsl:call-template name="normalizeIdString"/>
		</xsl:attribute>
	</xsl:template>
	
	<!-- I guess we suppress this? -->
	<xsl:template match="@smi"/>

</xsl:stylesheet>