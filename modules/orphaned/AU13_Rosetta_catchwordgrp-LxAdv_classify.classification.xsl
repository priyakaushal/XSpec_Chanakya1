<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:classify="http://www.lexisnexis.com/xmlschemas/content/shared/classification/1/" xmlns:compcase="urn:x-lexisnexis:content:compositecourtcase:sharedservices:1" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="AU13_Rosetta_catchwordgrp-LxAdv_classify.classification">
  <title>catchwordgrp <lnpid>id-AU13-20416</lnpid></title>
  <body>
    <section>
      <p><sourcexml>catchwordgrp</sourcexml> is a container element that should be omitted, but its
        content should be retained and converted as follows: <ul>
          <li><sourcexml>catchwords</sourcexml> becomes
              <targetxml>compcase:head/classify:classification</targetxml> with the value of
              <targetxml>classify:classification/@classscheme</targetxml> set to "catchwords".</li>
          <li><sourcexml>catchphrase</sourcexml> becomes
              <targetxml>classify:classification/classify:classitem</targetxml> with the value of
              <targetxml>classify:classitem/@classscheme</targetxml> set to "catchphrase".</li>
          <li>Inside <targetxml>classify:classitem</targetxml> create
              <targetxml>classify:classitem-identifier</targetxml>.</li>
          <li>Inside <targetxml>classify:classitem-identifier</targetxml> create
              <targetxml>classify:classname</targetxml>. The content of
              <sourcexml>catchphrase</sourcexml> becomes the content of
              <targetxml>classify:classname</targetxml>.</li>
        </ul></p>
      <p>Each instance of <sourcexml>catchwords</sourcexml> should be converted to its own
          <targetxml>classify:classification[@classscheme="catchwords"]</targetxml> element.</p>
      <note>Any text that is encountered directly inside <sourcexml>catchwords</sourcexml> is a
          <b>data error</b>. The LBU is correcting this editorially and will have updated content in
        time for the full content conversion load. In the mean time, text encountered directly
        inside <sourcexml>catchwords</sourcexml> should be moved into the preceding
          <targetxml>classify:classname</targetxml> in the target document.</note>
      <note>
      <p>To handle a <sourcexml>footnote</sourcexml> and <sourcexml>page</sourcexml> markup inside
                        <sourcexml>catchwordgrp</sourcexml> element in source documents then create
                    a separate
                        <targetxml>classify:classification[@classscheme="catchwords"]/classify:classitem/classify:classitem-identifier/class:classname</targetxml>
                    elements to wrap the target <targetxml>ref:page</targetxml> and
                        <targetxml>footnotegroup/footnote</targetxml>.</p>
      <p>I.e., <sourcexml>catchwordgrp/footnote</sourcexml> becomes
            <targetxml>classify:classification[@classscheme="catchwords"]/classify:classitem/classify:classitem-identifier/class:classname/footnotegroup/footnote</targetxml>
          <b>And</b>
          <sourcexml>catchwordgrp/page</sourcexml> becomes
            <targetxml>classify:classification[@classscheme="catchwords"]/classify:classitem/classify:classitem-identifier/class:classname/ref:page</targetxml>.</p>
      </note>
    </section>
    <example>
            <codeblock>

&lt;catchwordgrp&gt;
    &lt;catchwords&gt;
        &lt;catchphrase&gt;Vehicles and Traffic&lt;/catchphrase&gt;
    &lt;/catchwords&gt;
    &lt;footnotegrp&gt;
        &lt;footnote fntoken="1974-1-NSWLR-702.fn_a" fnrtokens="1974-1-NSWLR-702.fnr_a"&gt;
            &lt;fnlabel&gt;†&lt;/fnlabel&gt;
            &lt;fnbody&gt;
                &lt;p&gt;
                    &lt;text&gt;[Editor's Note: An application to the Court of Criminal Appeal for leave to appeal to the Privy Council has &lt;nl/&gt;been lodged by the defendant.
                        On 11th October, 1974, this application was dismissed.]&lt;/text&gt;
                &lt;/p&gt;
            &lt;/fnbody&gt;
        &lt;/footnote&gt;
    &lt;/footnotegrp&gt;
    &lt;page count="703" reporter="NSWLR" text="[1974] 1 NSWLR 702 at " subdoc="true"/&gt;
    &lt;catchwords&gt;
        &lt;catchphrase&gt;to warrant conviction, if charge otherwise proved...&lt;/catchphrase&gt;
    &lt;/catchwords&gt;
&lt;/catchwordgrp&gt;

           </codeblock>
            <b>becomes</b>
            <codeblock>

&lt;classify:classification classscheme="catchwords"&gt;
  &lt;classify:classitem classscheme="catchphrase"&gt;
    &lt;classify:classitem-identifier&gt;
      &lt;classify:classname&gt;Vehicles and Traffic&lt;/classify:classname&gt;
    &lt;/classify:classitem-identifier&gt;
  &lt;/classify:classitem&gt;
&lt;/classify:classification&gt;
&lt;classify:classification classscheme="catchwords"&gt;
  &lt;classify:classitem&gt;
        &lt;classify:classitem-identifier&gt;
            &lt;classify:classname&gt;
                &lt;footnotegroup&gt;
                    &lt;footnote&gt;
                        &lt;ref:anchor id="_1974-1-NSWLR-702.fn_a"/&gt;
                        &lt;label&gt;+&lt;/label&gt;
                        &lt;bodytext&gt;
                            &lt;p&gt;
                                &lt;text&gt;[Editor's Note: An application to the Court of Criminal Appeal for leave to appeal to the Privy Council has&lt;proc:nl/&gt;been lodged by the
                                    defendant. On 11th October, 1974, this application was dismissed.]&lt;/text&gt;
                            &lt;/p&gt;
                        &lt;/bodytext&gt;
                    &lt;/footnote&gt;
                &lt;/footnotegroup&gt;
            &lt;/classify:classname&gt;
        &lt;/classify:classitem-identifier&gt;
    &lt;/classify:classitem&gt;
&lt;/classify:classification&gt;
&lt;classify:classification classscheme="catchwords"&gt;
    &lt;classify:classitem&gt;
        &lt;classify:classitem-identifier&gt;
            &lt;classify:classname&gt;
                &lt;ref:page includeintoc="true" num="703" page-scheme="NSWLR" page-scheme-type="reporterabbreviation"/&gt;
            &lt;/classify:classname&gt;
        &lt;/classify:classitem-identifier&gt;
    &lt;/classify:classitem&gt;
 &lt;/classify:classification&gt;
&lt;classify:classification classscheme="catchwords"&gt;
  &lt;classify:classitem classscheme="catchphrase"&gt;
    &lt;classify:classitem-identifier&gt;
      &lt;classify:classname&gt;to warrant conviction, if charge otherwise proved...&lt;/classify:classname&gt;
    &lt;/classify:classitem-identifier&gt;
  &lt;/classify:classitem&gt;
&lt;/classify:classification&gt;


           </codeblock>
        </example>
    <section>
      <title>Changes</title>
        <p>2015-06-18: <ph id="change_20150618_SS">Updated the target NewLexis example according to the current instructions for handling scenario when <sourcexml>page</sourcexml> and <sourcexml>footnote</sourcexml> markup inside the <sourcexml>catchwordgrp</sourcexml> in source document.</ph></p>
        <p>2014-03-27: <ph id="change_20140327_SS">Added instructions and an example for the scenario when <sourcexml>page</sourcexml> and <sourcexml>footnote</sourcexml> markup inside the <sourcexml>catchwordgrp</sourcexml> in source document. Webteam 231856.</ph></p>
      <p>2013-10-09: <ph id="change_20131009_DSF">Not a rule change. Cleaned up instructions to make
          the handling clearer for the scenario when text is encountered directly inside
          catchwords.</ph></p>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU13_composite_cases\AU13_Rosetta_catchwordgrp-LxAdv_classify.classification.dita  -->
	<xsl:message>AU13_Rosetta_catchwordgrp-LxAdv_classify.classification.xsl requires manual development!</xsl:message> 

	<xsl:template match="catchwordgrp">

		<!--  Original Target XPath:  compcase:head/classify:classification   -->
		<compcase:head>
			<classify:classification>
				<xsl:apply-templates select="@* | node()"/>
			</classify:classification>
		</compcase:head>

	</xsl:template>

	<xsl:template match="catchwords">

		<!--  Original Target XPath:  compcase:head/classify:classification   -->
		<compcase:head>
			<classify:classification>
				<xsl:apply-templates select="@* | node()"/>
			</classify:classification>
		</compcase:head>

	</xsl:template>

	<xsl:template match="catchphrase">

		<!--  Original Target XPath:  classify:classification/classify:classitem   -->
		<classify:classification>
			<classify:classitem>
				<xsl:apply-templates select="@* | node()"/>
			</classify:classitem>
		</classify:classification>

	</xsl:template>

	<xsl:template match="footnote">

		<!--  Original Target XPath:  classify:classification[@classscheme="catchwords"]/classify:classitem/classify:classitem-identifier/class:classname   -->
		<classify:classification>
			<classify:classitem>
				<classify:classitem-identifier>
					<error_class:classname xmlns:error_class="class_ERROR">
						<xsl:apply-templates select="@* | node()"/>
					</error_class:classname>
				</classify:classitem-identifier>
			</classify:classitem>
		</classify:classification>

	</xsl:template>

	<xsl:template match="page">

		<!--  Original Target XPath:  classify:classification[@classscheme="catchwords"]/classify:classitem/classify:classitem-identifier/class:classname   -->
		<classify:classification>
			<classify:classitem>
				<classify:classitem-identifier>
					<error_class:classname xmlns:error_class="class_ERROR">
						<xsl:apply-templates select="@* | node()"/>
					</error_class:classname>
				</classify:classitem-identifier>
			</classify:classitem>
		</classify:classification>

	</xsl:template>

	<xsl:template match="catchwordgrp/footnote">

		<!--  Original Target XPath:  classify:classification[@classscheme="catchwords"]/classify:classitem/classify:classitem-identifier/class:classname/footnotegroup/footnote   -->
		<classify:classification>
			<classify:classitem>
				<classify:classitem-identifier>
					<error_class:classname xmlns:error_class="class_ERROR">
						<footnotegroup>
							<footnote>
								<xsl:apply-templates select="@* | node()"/>
							</footnote>
						</footnotegroup>
					</error_class:classname>
				</classify:classitem-identifier>
			</classify:classitem>
		</classify:classification>

	</xsl:template>

	<xsl:template match="catchwordgrp/page">

		<!--  Original Target XPath:  classify:classification[@classscheme="catchwords"]/classify:classitem/classify:classitem-identifier/class:classname/ref:page   -->
		<classify:classification>
			<classify:classitem>
				<classify:classitem-identifier>
					<error_class:classname xmlns:error_class="class_ERROR">
						<ref:page>
							<xsl:apply-templates select="@* | node()"/>
						</ref:page>
					</error_class:classname>
				</classify:classitem-identifier>
			</classify:classitem>
		</classify:classification>

	</xsl:template>

</xsl:stylesheet>