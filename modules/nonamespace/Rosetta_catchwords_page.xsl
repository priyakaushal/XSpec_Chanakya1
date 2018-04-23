<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:classify="http://www.lexisnexis.com/xmlschemas/content/shared/classification/1/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_catchwords_page">
  <title>catchwords/page <lnpid>id-CCCC-12025</lnpid></title>
  <body>
    <section><p><sourcexml>catchwords/page</sourcexml> becomes <targetxml>
          classify:classitem/classify:classitem-identifier/classify:classname/ref:page</targetxml>.</p></section>
    <example>
      <codeblock>
&lt;catchwordgrp&gt;
  &lt;catchwords&gt;
    &lt;catchphrase&gt;Bias — Inspector drinking in public house with representatives of parties after
      site inspection — Planning officer and objector staying for further drink with &lt;/catchphrase&gt;
    &lt;page text="[1991] 2 PLR 37 at" count="38" reporter="PLR"/&gt;
    &lt;catchphrase&gt; inspector after appellants' representatives left — Whether decision to be set
      aside — Whether reasonable impression of bias&lt;/catchphrase&gt;
  &lt;/catchwords&gt;
&lt;/catchwordgrp&gt;
      </codeblock>
      <b>becomes</b>
      <codeblock>
&lt;classify:classification classscheme="catchwords"&gt;
  &lt;classify:classitem&gt;
    &lt;classify:classitem-identifier&gt;
      &lt;classify:classname&gt; Bias — Inspector drinking in public house with representatives of parties
        after site inspection — Planning officer and objector staying for further drink with
      &lt;/classify:classname&gt;
    &lt;/classify:classitem-identifier&gt;
  &lt;/classify:classitem&gt;
  &lt;classify:classitem&gt;
    &lt;classify:classitem-identifier&gt;
      &lt;classify:classname&gt;
        &lt;ref:page num="38" page-scheme="PLR" page-scheme-type="reporter-abbreviation"/&gt;
      &lt;/classify:classname&gt;
    &lt;/classify:classitem-identifier&gt;
  &lt;/classify:classitem&gt;
  &lt;classify:classitem&gt;
    &lt;classify:classitem-identifier&gt;
      &lt;classify:classname&gt; inspector after appellants' representatives left — Whether decision to be
        set aside — Whether reasonable impression of bias &lt;/classify:classname&gt;
    &lt;/classify:classitem-identifier&gt;
  &lt;/classify:classitem&gt;
&lt;/classify:classification&gt;
      </codeblock>
    </example>
    <section>
      <title>Changes</title>
      <p>2013-02-25: <ph id="change_20130225_DSF">Created.</ph></p>
    </section>
  </body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_caselaw\Rosetta_catchwords_page.dita  -->
	<!--<xsl:message>Rosetta_catchwords_page.xsl requires manual development!</xsl:message>--> 
	<!-- JD: 2017-06-13: ****Note: ***** this logic has been combined with 'Rosetta_catchwordgrp_page.xsl' to fix error 'XTSE0660: Duplicate named template '  -->
  <xsl:template match="page[parent::catchwordgrp]" name="page">
    <!--  Original Target XPath:  classify:classification/classify:classitem/classify:classitem-identifier/classify:classname/ref:page   -->
    <classify:classification>
      <classify:classitem>
        <classify:classitem-identifier>
          <classify:classname>
            <xsl:apply-templates select="page"/>	          
          </classify:classname>
        </classify:classitem-identifier>
      </classify:classitem>
    </classify:classification>
  </xsl:template>
</xsl:stylesheet>