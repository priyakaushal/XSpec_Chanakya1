<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="ST11_Commentary_note">
  <title>note <lnpid>id-ST11-37830</lnpid></title>
  <body>
    <p>Mapping for <sourcexml>note</sourcexml> depends on <sourcexml>@notetype</sourcexml>, as
      follows:</p>
    <section>
      <ul>
        <li><sourcexml>note[@notetype="xref"]</sourcexml> becomes
            <targetxml>marginnote/bodytext</targetxml>. In addition: <ul>
            <li><u>Merge notes:</u> If source contains multiple adjacent
                <sourcexml>note[@notetype="xref"]</sourcexml> then place contents of all into one
                <targetxml>marginnote/bodytext</targetxml>.</li>
            <li><u>Generate</u>
              <targetxml>ref:anchor[@id="" @anchortype="local"]</targetxml> as first child of
                <targetxml>marginnote</targetxml>. Value of <targetxml>@id</targetxml> must be
              unique within the document.</li>
            <li><u>Move notes:</u> Source sequence is note before associated text. Target must be
              marginnote moved to end of associated text. That is: source has
                <sourcexml>p</sourcexml> containing <sourcexml>note</sourcexml> then
                <sourcexml>text</sourcexml>. Target must have <targetxml>p</targetxml> containing
                <targetxml>text</targetxml> with <targetxml>marginnote</targetxml> placed at end of
                <targetxml>text</targetxml> content.</li>
          </ul></li>
        <li><sourcexml>note</sourcexml> with <sourcexml>@notetype</sourcexml> when value is
            <u>NOT</u>
          <sourcexml>"xref"</sourcexml>: <sourcexml>note[@notetype]</sourcexml> becomes
            <targetxml>note[@notetype]/bodytext</targetxml>.</li>
        <li><sourcexml>note</sourcexml> without <sourcexml>@notetype</sourcexml>. Suppress
            <sourcexml>note</sourcexml> tag, convert content. <i>Use case:</i>
          <sourcexml>note</sourcexml> is a container for <sourcexml>table</sourcexml> and is not
          needed.</li>
      </ul></section>

    <pre>
        <b>EXAMPLE 1: <sourcexml>note[@notetype="xref"]</sourcexml> to <targetxml>marginnote</targetxml></b>
            
<b><i>Source XML</i></b>

&lt;level leveltype="subsection"&gt;
  &lt;bodytext&gt;
    &lt;p&gt;
      &lt;note notetype="xref"&gt;
        &lt;p&gt;
          &lt;text&gt;
            &lt;url&gt;
              &lt;remotelink hrefclass="http"
                 href="www.federalreserve.gov/releases/cp/default.htm"
                 newwindow="YES"&gt;Federal Reserve website&lt;/remotelink&gt;
            &lt;/url&gt;
          &lt;/text&gt;
        &lt;/p&gt;
      &lt;/note&gt;
      &lt;note notetype="xref"&gt;
        &lt;p&gt;
          &lt;text&gt;Moody&amp;#x2019;s Investor Service: Structured Finance Short-Term 
            Rating Transitions and Defaults: 1983-2009, August 3, 2010&lt;/text&gt;
        &lt;/p&gt;
      &lt;/note&gt;
      &lt;text&gt;Commercial paper is unsecured.&lt;/text&gt;
    &lt;/p&gt;
  &lt;/bodytext&gt;
&lt;/level&gt;
 
<b><i>Target XML</i></b>

&lt;seclaw:level leveltype="subsection"&gt;
  &lt;seclaw:bodytext&gt;
    &lt;p&gt;
       &lt;text&gt;Commercial paper is unsecured.&lt;marginnote&gt;
             &lt;ref:anchor id="abc" anchortype="local"/&gt;
             &lt;bodytext&gt;
                &lt;p&gt;
                   &lt;text&gt;
                      &lt;ref:lnlink service="URL"&gt;
                         &lt;ref:marker&gt;Federal Reserve website&lt;/ref:marker&gt;
                         &lt;ref:locator&gt;
                            &lt;ref:locator-key&gt;
                               &lt;ref:key-name name="URL"/&gt;
                               &lt;ref:key-value 
                                 value="http://www.federalreserve.gov/releases/cp/default.htm"/&gt;
                            &lt;/ref:locator-key&gt;
                         &lt;/ref:locator&gt;
                      &lt;/ref:lnlink&gt;
                   &lt;/text&gt;
                &lt;/p&gt;
                &lt;p&gt;
                   &lt;text&gt;Moody&amp;#x2019;s Investor Service: Structured Finance Short-Term
                       Rating Transitions and Defaults: 1983-2009, August 3, 2010&lt;/text&gt;
                &lt;/p&gt;
             &lt;/bodytext&gt;
          &lt;/marginnote&gt;
       &lt;/text&gt;
    &lt;/p&gt;
  &lt;/seclaw:bodytext&gt;
&lt;/seclaw:level&gt;

        </pre>
    <pre>
        <b>EXAMPLE 2: <sourcexml>note</sourcexml> with <sourcexml>@notetype</sourcexml> other than <sourcexml>"xref"</sourcexml> to <targetxml>note[@notetype]</targetxml></b>
            
<b><i>Source XML</i></b>

&lt;level leveltype="section"&gt;
    &lt;bodytext&gt;
        &lt;note notetype="commentary"&gt;
            &lt;h l="1"&gt;General notes on Contempt of Court&lt;/h&gt;
            &lt;p&gt;
                &lt;text&gt;Contempts have traditionally been ...&lt;/text&gt;
            &lt;/p&gt;
            ...
        &lt;/note&gt;
    &lt;/bodytext&gt;
&lt;/level&gt;
&lt;level leveltype="section"&gt;
    &lt;bodytext&gt;
        ...
        &lt;note notetype="example"&gt;
            &lt;h l="1"&gt;Example&lt;/h&gt;
            &lt;p&gt;
                &lt;text&gt;A company is already registered ...&lt;/text&gt;
            &lt;/p&gt;
            ...
        &lt;/note&gt;
    &lt;/bodytext&gt;
&lt;/level&gt;
 
<b><i>Target XML</i></b>

&lt;seclaw:level leveltype="section"&gt;
    &lt;seclaw:bodytext&gt;
        &lt;note notetype="commentary"&gt;
            &lt;bodytext&gt;
                &lt;h level="1"&gt;General notes on Contempt of Court&lt;/h&gt;
                &lt;p&gt;
                    &lt;text&gt;Contempts have traditionally been ...&lt;/text&gt;
                &lt;/p&gt; 
                ... 
            &lt;/bodytext&gt;
        &lt;/note&gt;
    &lt;/seclaw:bodytext&gt;
&lt;/seclaw:level&gt;
&lt;seclaw:level leveltype="section"&gt;
    &lt;seclaw:bodytext&gt;
        ...
        &lt;note notetype="example"&gt;
            &lt;bodytext&gt;
                &lt;h level="1"&gt;Example&lt;/h&gt;
                &lt;p&gt;
                    &lt;text&gt;A company is already registered ...&lt;/text&gt;
                &lt;/p&gt; 
                ... 
            &lt;/bodytext&gt;
        &lt;/note&gt;
    &lt;/seclaw:bodytext&gt;
&lt;/seclaw:level&gt;

        </pre>
    <pre>
        <b>EXAMPLE 3: <sourcexml>note</sourcexml> without <sourcexml>@notetype</sourcexml>. Tag suppressed</b>
            
<b><i>Source XML</i></b>

&lt;l&gt;
  &lt;li&gt;
    &lt;p&gt;
      &lt;text&gt;the sets of lines joining the co-ordinates&lt;/text&gt;
    &lt;/p&gt;
    &lt;note&gt;
      &lt;table&gt;
        &lt;tgroup cols="4" colsep="0" rowsep="0"&gt;
          &lt;!-- ETC. --&gt;
        &lt;/tgroup&gt;
      &lt;/table&gt;
    &lt;/note&gt;
  &lt;/li&gt;
&lt;/l&gt;
 
<b><i>Target XML</i></b>

&lt;list&gt;
  &lt;listitem&gt;
    &lt;bodytext&gt;
      &lt;p&gt;
        &lt;text&gt;the sets of lines joining the co-ordinates&lt;/text&gt;
      &lt;/p&gt;
      &lt;table&gt;
        &lt;tgroup cols="4" colsep="0" rowsep="0"&gt;
          &lt;!-- ETC. --&gt;
        &lt;/tgroup&gt;
      &lt;/table&gt;
    &lt;/bodytext&gt;
  &lt;/listitem&gt;
&lt;/list&gt;

    </pre>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-Standard\Seclaw\ST11_Commentary_note.dita  -->
	<xsl:message>ST11_Commentary_note.xsl requires manual development!</xsl:message> 

	<xsl:template match="note">

		<!--  Original Target XPath:  marginnote/bodytext   -->
		<marginnote>
			<bodytext>
				<xsl:apply-templates select="@* | node()"/>
			</bodytext>
		</marginnote>

	</xsl:template>

	<xsl:template match="@notetype">

		<!--  Original Target XPath:  marginnote/bodytext   -->
		<marginnote>
			<bodytext>
				<xsl:apply-templates select="@* | node()"/>
			</bodytext>
		</marginnote>

	</xsl:template>

	<xsl:template match="note[@notetype=&#34;xref&#34;]">

		<!--  Original Target XPath:  marginnote/bodytext   -->
		<marginnote>
			<bodytext>
				<xsl:apply-templates select="@* | node()"/>
			</bodytext>
		</marginnote>

	</xsl:template>

	<xsl:template match="p">

		<!--  Original Target XPath:  p   -->
		<p>
			<xsl:apply-templates select="@* | node()"/>
		</p>

	</xsl:template>

	<xsl:template match="text">

		<!--  Original Target XPath:  p   -->
		<p>
			<xsl:apply-templates select="@* | node()"/>
		</p>

	</xsl:template>

	<xsl:template match="&#34;xref&#34;">

		<!--  Original Target XPath:  note[@notetype]/bodytext   -->
		<note>
			<bodytext>
				<xsl:apply-templates select="@* | node()"/>
			</bodytext>
		</note>

	</xsl:template>

	<xsl:template match="note[@notetype]">

		<!--  Original Target XPath:  note[@notetype]/bodytext   -->
		<note>
			<bodytext>
				<xsl:apply-templates select="@* | node()"/>
			</bodytext>
		</note>

	</xsl:template>

	<xsl:template match="table">

		<!--  Original Target XPath:  marginnote   -->
		<marginnote>
			<xsl:apply-templates select="@* | node()"/>
		</marginnote>

	</xsl:template>

</xsl:stylesheet>