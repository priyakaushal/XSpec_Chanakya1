<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_emp-Chof-heading_title-LxAdv-heading_title">
  <title><sourcexml>heading/title/emph[@typestyle="bf"]</sourcexml> to
      <targetxml>heading/title</targetxml>
    <lnpid>id-CCCC-10495</lnpid></title>
  <body>
    <section>
      <title>Instructions <i>[common element]</i></title>
      <p>
        <sourcexml>heading/title/emph[@typestyle="bf"]</sourcexml> becomes
          <targetxml>heading/title</targetxml>. That is, if and only if
          <sourcexml>heading/title/emph</sourcexml> has attribute
          <sourcexml>emph/@typestyle</sourcexml> equal to "bf", then the <sourcexml>emph</sourcexml>
        start-tag and end-tag (but not the content) are dropped, and the content becomes part of the
        target parent <targetxml>title</targetxml> element. All other
          <sourcexml>heading/title/emph</sourcexml> elements are retained and converted to
          <targetxml>heading/title/emph</targetxml>, and the attribute
          <sourcexml>emph/@typestyle</sourcexml> is converted to
          <targetxml>emph/@typestyle</targetxml>.</p>
      <p>Children of <sourcexml>emph</sourcexml> should be processed.</p>
    </section>
    <example>
      <title>Source XML</title>
      <codeblock>

&lt;heading&gt;
    &lt;title&gt;
        &lt;emph typestyle="bf"&gt;Judgment&lt;/emph&gt;
    &lt;/title&gt;
&lt;/heading&gt;

	</codeblock>
    </example>
    <example>
      <title>Target XML</title>
      <codeblock>

&lt;heading&gt;
    &lt;title&gt;
        Judgment
    &lt;/title&gt;
&lt;/heading&gt;

            </codeblock>
    </example>
    <example>
      <title>Source XML: showing <sourcexml>emph/@typestyle</sourcexml> not equal to "bf"</title>
      <codeblock>

&lt;heading&gt;
  &lt;title&gt;Section 10(&lt;emph typestyle="it"&gt;b&lt;/emph&gt;)&lt;/title&gt;
&lt;/heading&gt;
           
       </codeblock>
    </example>
    <example>
      <title>Target XML</title>
      <codeblock>

&lt;heading&gt;
  &lt;title&gt;Section 10(&lt;emph typestyle="it"&gt;b&lt;/emph&gt;)&lt;/title&gt;
&lt;/heading&gt;
           
       </codeblock>
    </example>
    <example>
      <title>Source XML: showing multiple nested <sourcexml>emph</sourcexml> elements</title>
      <codeblock>

&lt;heading&gt;
  &lt;title&gt;
    &lt;emph typestyle="bf"&gt;
      &lt;emph typestyle="bf"&gt;
        Doc. 5.27 - Section 10(&lt;emph typestyle="it"&gt;&lt;emph typestyle="it"&gt;b&lt;/emph&gt;&lt;/emph&gt;) &amp;#x2014; Affidavit
      &lt;/emph&gt;
    &lt;/emph&gt;
  &lt;/title&gt;
&lt;/heading&gt;
                  
       </codeblock>
    </example>
    <example>
      <title>Target XML</title>
      <codeblock>

&lt;heading&gt;
  &lt;title&gt;Doc. 5.27 - Section 10(&lt;emph typestyle="it"&gt;b&lt;/emph&gt;) &amp;#x2014; Affidavit&lt;/title&gt;
&lt;/heading&gt;
               
       </codeblock>
    </example>
    <section>
      <title>Changes</title>
      <p>2016-04-01: <ph id="change_20160401_titleemph_MCJ_2">Added statement to clarify that children of emph should be processed.</ph></p>
      <p>2016-04-01: <ph id="change_20160401_titleemph_MCJ_1">Corrected xpath to use predicate condition for attribute.</ph></p>
      <p>2014-06-04: <ph id="change_20140604_JCG">Created this instruction specifically for all Canadian streams. (Response to discussion board issue #91 particularly concerning streams CA09, CA10, CA11, and CA12.)</ph></p>
    </section>
  </body>
	</dita:topic>

  <!-- This is a generic module, this is coded as per CA11 CI. It can be modified if there is differnt scenario in other streams -->
 
<!--
	<xsl:template match="heading/title/emph[@typestyle=&#34;bf&#34;]">

		<!-\-  Original Target XPath:  heading/title   -\->
		<heading>
			<title>
				<xsl:apply-templates select="@* | node()"/>
			</title>
		</heading>

	</xsl:template>

	<xsl:template match="heading/title/emph">

		<!-\-  Original Target XPath:  title   -\->
		<title>
			<xsl:apply-templates select="@* | node()"/>
		</title>

	</xsl:template>

	<xsl:template match="emph/@typestyle">

		<!-\-  Original Target XPath:  title   -\->
		<title>
			<xsl:apply-templates select="@* | node()"/>
		</title>

	</xsl:template>

	<xsl:template match="emph">

		<!-\-  Original Target XPath:  title   -\->
		<title>
			<xsl:apply-templates select="@* | node()"/>
		</title>

	</xsl:template>-->

  
  <xsl:template match="emph[@typestyle='bf'][$streamID='CA11']">
    <xsl:apply-templates select="node()"/>
  </xsl:template>
  
  
  
  <xsl:template match="emph[@typestyle='it'][$streamID='CA11']">
    <emph>
      <xsl:attribute name="typestyle">
        <xsl:value-of select="@typestyle"/>
      </xsl:attribute>
      <xsl:value-of select="normalize-space(.)"/>
    </emph>
  </xsl:template>
</xsl:stylesheet>