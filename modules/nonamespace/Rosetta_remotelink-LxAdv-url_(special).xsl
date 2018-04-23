<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="UK21cl_Rosetta_remotelink-LxAdv-url.dita">
  <title><sourcexml>remotelink/@href</sourcexml> <lnpid>id-CCCC-10467</lnpid></title>
  <body>
    <p>The conversions specified in this topic are performed if and only if the value of the attribute
      <sourcexml>remotelink/@service</sourcexml> is <b><u>not</u></b> 'DOC-ID' (or the attribute is not present) <b><u>and</u></b>
      the attribute <sourcexml>remotelink/@href</sourcexml> is present.</p>
    <p>Regardless of which of the scenarios described below occurs, the attribute <sourcexml>remotelink/@status</sourcexml> is always suppressed, it is never output to the target document.</p>
    <p>There are two possible scenarios that need to be distiguished: <ol>
      <li>If the data content of the remotelink starts with one of these text sequences: <ul>
        <li>"http://"</li>
        <li>"https://"</li>
        <li>"nohttp://"</li>
        <li>"mailto://"</li>
        <li>"ftp://"</li>
        <li>"www."</li>
      </ul> Then <sourcexml>remotelink</sourcexml> becomes <targetxml>url</targetxml> and
        <targetxml>url/@normval</targetxml> is set as follows:<ul>
          <li>If the <sourcexml>remotelink/@hrefclass</sourcexml> attribute is present,
            <targetxml>url/@normval</targetxml> is set to the combined value of
            <sourcexml>remotelink/@hrefclass</sourcexml>, followed by "://", followed by the
            value of <sourcexml>remotelink/@href</sourcexml>.</li>
          <li>If the <sourcexml>remotelink/@hrefclass</sourcexml> attribute is <b>not</b> present,
            <targetxml>url/@normval</targetxml> is set to the value of
            <sourcexml>remotelink/@href</sourcexml>.</li>
        </ul>
      </li>
      <li>If the data content of the remotelink does not start with one of the previous listed
        text sequences, <sourcexml>remotelink</sourcexml> becomes
        <targetxml>ref:lnlink</targetxml> and is populated as follows:<ul>
          <li>The <targetxml>ref:lnlink/@service</targetxml> attribute is set to "URL".</li>
          <li>Element <targetxml>ref:lnlink/ref:marker</targetxml> is created and the content of
            <sourcexml>remotelink</sourcexml> becomes the content of child
            <targetxml>ref:lnlink/ref:marker</targetxml>. Any descendant element is converted
            according to instructions for that element in the section <i>General Mark-Up</i>.</li>
          <li>The child <targetxml>ref:lnlink/ref:locator</targetxml> is created, and within it
            the child <targetxml>ref:lnlink/ref:locator/ref:locator-key</targetxml> is created,
            and within it the children
            <targetxml>ref:lnlink/ref:locator/ref:locator-key/ref:key-name</targetxml> and
            <targetxml>ref:lnlink/ref:locator/ref:locator-key/ref:key-value</targetxml> are
            created.</li>
          <li>The <targetxml>ref:key-name/@name</targetxml> attribute is set to "URL".</li>
          <li>If the <sourcexml>remotelink/@hrefclass</sourcexml> attribute is present,
            <targetxml>ref:key-value/@value</targetxml> is set to the combined value of
            <sourcexml>remotelink/@hrefclass</sourcexml>, followed by "://", followed by the
            value of <sourcexml>remotelink/@href</sourcexml>.</li>
          <li><note>Exception: If content of <sourcexml>@hrefclass</sourcexml> is already present in
            <sourcexml>@href</sourcexml> then do not concatenate. Populate
            <targetxml>@value</targetxml> with content of <sourcexml>@href</sourcexml>.</note></li>              
          <li>If the <sourcexml>remotelink/@hrefclass</sourcexml> attribute is <b>not</b> present,
            <targetxml>ref:key-value/@value</targetxml> is set to the value of
            <sourcexml>remotelink/@href</sourcexml>.</li>
        </ul>
      </li>
    </ol>
    </p>
    <section>
      <title>Source XML showing example of scenario #1, when the content of <sourcexml>remotelink</sourcexml> begins with "http", "www", etc</title>
      <codeblock>

&lt;remotelink href="www.ipo.gov.uk" hrefclass="http" newwindow="YES"&gt;http://www.ipo.gov.uk&lt;/remotelink&gt;

      </codeblock>
    </section>
    <section>
      <title>Target XML showing example of scenario #1</title>
      <codeblock>

&lt;url normval="http://www.ipo.gov.uk"&gt;http://www.ipo.gov.uk&lt;/url&gt;

      </codeblock>
    </section>
    <section>
      <title>Source XML showing example of scenario #2, when the content of <sourcexml>remotelink</sourcexml> does <b>not</b> begin with "http", "www", etc.</title>
      <codeblock>

&lt;remotelink href="www.hmrc.gov.uk" hrefclass="http" newwindow="YES"
    service="SEARCH" status="valid"&gt;UK Tax Department (HMRC)&lt;/remotelink&gt;

      </codeblock>
    </section>
    <section>
      <title>Target XML showing example of scenario #2</title>
      <codeblock>

&lt;ref:lnlink service="URL"&gt;
  &lt;ref:marker&gt;UK Tax Department (HMRC)&lt;/ref:marker&gt;
  &lt;ref:locator&gt;
    &lt;ref:locator-key&gt;
      &lt;ref:key-name name="URL"/&gt;
      &lt;ref:key-value value="http://www.hmrc.gov.uk"/&gt;
    &lt;/ref:locator-key&gt;
  &lt;/ref:locator&gt;
&lt;/ref:lnlink&gt;

      </codeblock>
    </section>
      <section>
      <title>Changes</title>
        <p>2017-04-24: <ph id="change_20170424_snb">LPA 2017 enhancements: Clarified that this mapping instruction applies 
          when <sourcexml>remotelink/@service</sourcexml> is not present, in addition to when its value is <b><u>not</u></b> 'DOC-ID'. 
          Also added the exception that when the content of <sourcexml>@hrefclass</sourcexml> is already present in
          <sourcexml>@href</sourcexml> they should not be concatenated. Changed formatting of examples to use example DITA markup.</ph></p>
         <p>2015-05-22: <ph id="change_20150522_JCG">Added an instruction to explicitly indicate <sourcexml>remotelink/@status</sourcexml> is always dropped (suppressed). This is a very low-priority change and has been added for technical correctness, particularly with respect to new CIs. Existing scripts do not have to implement this change unless needed since prior to the change <targetxml>remotelink/@status</targetxml> handling was not explicitly specified.</ph></p>      
      </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_remotelink-LxAdv-url_(special).dita  -->
	<xsl:message>Rosetta_remotelink-LxAdv-url_(special).xsl requires manual development!</xsl:message> 

	<xsl:template match="remotelink/@href">

		<!--  Original Target XPath:  url   -->
		<url>
			<xsl:apply-templates select="@* | node()"/>
		</url>

	</xsl:template>

	<xsl:template match="remotelink/@service">

		<!--  Original Target XPath:  url   -->
		<url>
			<xsl:apply-templates select="@* | node()"/>
		</url>

	</xsl:template>

	<xsl:template match="remotelink/@status">

		<!--  Original Target XPath:  url   -->
		<url>
			<xsl:apply-templates select="@* | node()"/>
		</url>

	</xsl:template>

	<xsl:template match="remotelink">

		<!--  Original Target XPath:  url   -->
		<url>
			<xsl:apply-templates select="@* | node()"/>
		</url>

	</xsl:template>

	<xsl:template match="remotelink/@hrefclass">

		<!--  Original Target XPath:  url/@normval   -->
		<url>
			<xsl:attribute name="normval">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</url>

	</xsl:template>

</xsl:stylesheet>