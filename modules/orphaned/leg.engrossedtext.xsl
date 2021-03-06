<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="UK06_LawsActsBillsMeasures-leg.engrossedtext">
  <title>leg:engrossedtext <lnpid>id-UK07-28233</lnpid></title>
  <body>
    <section>
      <p><sourcexml>leg:engrossedtext</sourcexml> becomes <targetxml>primlaw:changedtext</targetxml>
        comes with following attributes: <ul id="ul_dmb_bgs_jw">
          <li><sourcexml>@action</sourcexml> becomes <targetxml>@action</targetxml></li>
          <li><sourcexml>@leg:status</sourcexml> becomes <targetxml>@status</targetxml></li>
          <li><sourcexml>@leg:amendmentid</sourcexml> becomes
            <targetxml>@amendmentid</targetxml></li>
          <li>Conversion needs to create <targetxml>@issubstitution</targetxml>, and the value set
            to "true" if <sourcexml>@searchtype</sourcexml> is "substitution" otherwise
            "false".</li>
        </ul>
        <note>The <sourcexml>@searchtype</sourcexml> attribute will be suppressed from NL
          conversion.</note> And populated as below:</p>
      <p>
        <b>Source XML</b><codeblock>

&lt;p&gt;
 &lt;text&gt;
  &lt;emph typestyle="it"&gt;
   &lt;leg:engrossedtext action="deleted" searchtype="substitution" leg:status="partly-in-force" leg:amendmentid="2690069"&gt;This section applies where—&lt;/leg:engrossedtext&gt;
  &lt;/emph&gt;
 &lt;/text&gt;
&lt;/p&gt;

    </codeblock>
        <b>Target XML</b><codeblock>

&lt;p&gt;
 &lt;text&gt;
  &lt;emph typestyle="it"&gt;
   &lt;primlaw:changedtext action="deleted" issubstitution="true" status="partly-in-force" amendmentid="2690069"&gt;This section applies where—&lt;/primlaw:changedtext&gt;
  &lt;/emph&gt;
 &lt;/text&gt;
&lt;/p&gt;

</codeblock>
      </p>
    </section>
    <section>
      <title>Changes</title>     
      <p>2016-06-22 <ph id="change_20160622_AS">Created, element <sourcexml>leg:engrossedtext</sourcexml> encountered in new content source delivery. Created instruction and examples for handling <sourcexml>leg:engrossedtext</sourcexml>.</ph></p>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK07-Regulations\leg.engrossedtext.dita  -->
	<xsl:message>leg.engrossedtext.xsl requires manual development!</xsl:message> 

	<xsl:template match="leg:engrossedtext">

		<!--  Original Target XPath:  primlaw:changedtext   -->
		<primlaw:changedtext>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:changedtext>

	</xsl:template>

	<xsl:template match="@action">

		<!--  Original Target XPath:  @action   -->
		<xsl:attribute name="action">
			<xsl:apply-templates select="node()"/>
		</xsl:attribute>

	</xsl:template>

	<xsl:template match="@leg:status">

		<!--  Original Target XPath:  @status   -->
		<xsl:attribute name="status">
			<xsl:apply-templates select="node()"/>
		</xsl:attribute>

	</xsl:template>

	<xsl:template match="@leg:amendmentid">

		<!--  Original Target XPath:  @amendmentid   -->
		<xsl:attribute name="amendmentid">
			<xsl:apply-templates select="node()"/>
		</xsl:attribute>

	</xsl:template>

	<xsl:template match="@searchtype">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

</xsl:stylesheet>