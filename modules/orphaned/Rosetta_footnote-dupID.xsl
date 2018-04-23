<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_footnote-dupID">
  <title>footnote duplicate IDs <lnpid>id-IN08-38211</lnpid></title>
  <body>
    <section><p>This section presents special interim rules for handling duplicate IDs in
          <sourcexml>fnr</sourcexml> and <sourcexml>footnote</sourcexml>.</p><p>For full conversion
        instructions on footnotes, see General Markup section.</p></section>
    <section><title>Duplicate IDs</title><p>Some source documents contain duplicate IDs for
          <sourcexml>fnr</sourcexml> and <sourcexml>footnote</sourcexml>. Duplicates will make the
        converted LxAdv files invalid. The data will be corrected and redelivered. <b><i>In the
            interim</i></b>, please handle as follows:</p><ul>
        <li>applies to <sourcexml>fnr[@fnrtoken]</sourcexml> and
            <sourcexml>footnote[@fntoken]</sourcexml>; both become
            <targetxml>ref:anchor[@id]</targetxml>.</li>
        <li>append underscore and sequential number (starting at "_2") to each duplicate ID.</li>
        <li>append only to the second and subsequent duplicates, e.g. if there are 2 duplicate ID,
          the first ID passes through and the second is made unique.</li>
        <li>no special action required for <sourcexml>fnr[@fntoken]</sourcexml> (becomes
            <targetxml>@anchoridref</targetxml> and dups allowed); nor for
            <sourcexml>footnote[@fnrtokens]</sourcexml> (because always suppressed).</li>
      </ul></section>


    <pre>
        <b>EXAMPLE</b>
            
<b><i>Source XML</i></b>

&lt;p&gt;
  &lt;text&gt;As described in more detail below&lt;fnr
          fnrtoken="37355F62636C735F62696E6465725F30335F63745F303030375F31_REF_1"
          fntoken="37355F62636C735F62696E6465725F30335F63745F303030375F31_1"&gt;1&lt;/fnr&gt;...&lt;/text&gt;
&lt;/p&gt;
&lt;p&gt;
  &lt;text&gt;Pursuant to the Takeovers Directive&lt;fnr
      fnrtoken="37355F62636C735F62696E6465725F30335F63745F303030375F31_REF_1"
      fntoken="37355F62636C735F62696E6465725F30335F63745F303030375F31_1"&gt;1&lt;/fnr&gt;...&lt;/text&gt;
&lt;/p&gt;
&lt;p&gt;
  &lt;text&gt;The Code provides&lt;fnr
      fnrtoken="37355F62636C735F62696E6465725F30335F63745F303030375F31_REF_1"
      fntoken="37355F62636C735F62696E6465725F30335F63745F303030375F31_1"&gt;1&lt;/fnr&gt;...&lt;/text&gt;
&lt;/p&gt;
  ...
&lt;footnotegrp&gt;
  &lt;footnote type="editorial"
      fntoken="37355F62636C735F62696E6465725F30335F63745F303030375F31_1"
      fnrtokens="37355F62636C735F62696E6465725F30335F63745F303030375F31_REF_1"&gt;
      &lt;fnlabel&gt;1&lt;/fnlabel&gt;
      &lt;fnbody&gt;
        &lt;p&gt;
          &lt;text&gt;See Code Committee Response...&lt;/text&gt;
        &lt;/p&gt;
      &lt;/fnbody&gt;
  &lt;/footnote&gt;
  &lt;footnote type="editorial"
      fntoken="37355F62636C735F62696E6465725F30335F63745F303030375F31_1"
      fnrtokens="37355F62636C735F62696E6465725F30335F63745F303030375F31_REF_1"&gt;
      &lt;fnlabel&gt;1&lt;/fnlabel&gt;
      &lt;fnbody&gt;
        &lt;p&gt;
          &lt;text&gt;EC Directive on Takeover Bids&lt;/text&gt;
        &lt;/p&gt;
      &lt;/fnbody&gt;
  &lt;/footnote&gt;
&lt;/footnotegrp&gt;
 
<b><i>Target XML</i></b>

&lt;p&gt;
  &lt;text&gt;As described in more detail below&lt;footnote-ref 
      anchoridref="37355F62636C735F62696E6465725F30335F63745F303030375F31_1"&gt;
      &lt;ref:anchor id="37355F62636C735F62696E6465725F30335F63745F303030375F31_REF_1"/&gt;
      &lt;label&gt;1&lt;/label&gt;&lt;/footnote-ref&gt;...&lt;/text&gt;
&lt;/p&gt;
&lt;p&gt;
  &lt;text&gt;Pursuant to the Takeovers Directive&lt;footnote-ref 
      anchoridref="37355F62636C735F62696E6465725F30335F63745F303030375F31_1"&gt;
      &lt;ref:anchor id="37355F62636C735F62696E6465725F30335F63745F303030375F31_REF_1_2"/&gt;
      &lt;label&gt;1&lt;/label&gt;&lt;/footnote-ref&gt;...&lt;/text&gt;
&lt;/p&gt;
&lt;p&gt;
  &lt;text&gt;The Code provides&lt;footnote-ref 
      anchoridref="37355F62636C735F62696E6465725F30335F63745F303030375F31_1"&gt;
      &lt;ref:anchor id="37355F62636C735F62696E6465725F30335F63745F303030375F31_REF_1_3"/&gt;
      &lt;label&gt;1&lt;/label&gt;&lt;/footnote-ref&gt;...&lt;/text&gt;
&lt;/p&gt;
...
&lt;footnotegroup&gt;
  &lt;footnote&gt;
    &lt;ref:anchor id="37355F62636C735F62696E6465725F30335F63745F303030375F31_1"/&gt;
    &lt;ref:returnreference&gt;
      &lt;ref:locator 
          anchoridref="37355F62636C735F62696E6465725F30335F63745F303030375F31_REF_1" 
          anchortype="local"/&gt;
    &lt;/ref:returnreference&gt;
    &lt;label&gt;1&lt;/label&gt;
    &lt;bodytext&gt;
      &lt;p&gt;
        &lt;text&gt;See Code Committee Response...&lt;/text&gt;
      &lt;/p&gt;
    &lt;/bodytext&gt;
  &lt;/footnote&gt;
  &lt;footnote&gt;
    &lt;ref:anchor id="37355F62636C735F62696E6465725F30335F63745F303030375F31_1_2"/&gt;
    &lt;label&gt;1&lt;/label&gt;
    &lt;bodytext&gt;
      &lt;p&gt;
        &lt;text&gt;EC Directive on Takeover Bids&lt;/text&gt;
      &lt;/p&gt;
    &lt;/bodytext&gt;
  &lt;/footnote&gt;
&lt;/footnotegroup&gt;


                </pre>
    <section>
      <title>Changes</title>
      <p>2015-12-23: <ph id="change_20151223_jm">Added special interim rules for handling duplicate IDs in
        <sourcexml>fnr</sourcexml> and <sourcexml>footnote</sourcexml>.</ph>.</p>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-IN\IN08-Digest\Rosetta_footnote-dupID.dita  -->
	<xsl:message>Rosetta_footnote-dupID.xsl requires manual development!</xsl:message> 

	<xsl:template match="fnr">

		<!--  Original Target XPath:  ref:anchor[@id]   -->
		<ref:anchor>
			<xsl:apply-templates select="@* | node()"/>
		</ref:anchor>

	</xsl:template>

	<xsl:template match="footnote">

		<!--  Original Target XPath:  ref:anchor[@id]   -->
		<ref:anchor>
			<xsl:apply-templates select="@* | node()"/>
		</ref:anchor>

	</xsl:template>

	<xsl:template match="fnr[@fnrtoken]">

		<!--  Original Target XPath:  ref:anchor[@id]   -->
		<ref:anchor>
			<xsl:apply-templates select="@* | node()"/>
		</ref:anchor>

	</xsl:template>

	<xsl:template match="footnote[@fntoken]">

		<!--  Original Target XPath:  ref:anchor[@id]   -->
		<ref:anchor>
			<xsl:apply-templates select="@* | node()"/>
		</ref:anchor>

	</xsl:template>

	<xsl:template match="fnr[@fntoken]">

		<!--  Original Target XPath:  @anchoridref   -->
		<xsl:attribute name="anchoridref">
			<xsl:apply-templates select="node()"/>
		</xsl:attribute>

	</xsl:template>

	<xsl:template match="footnote[@fnrtokens]">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

</xsl:stylesheet>