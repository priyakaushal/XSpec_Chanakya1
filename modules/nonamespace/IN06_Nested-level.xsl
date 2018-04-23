<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" xmlns:seclaw="http://www.lexisnexis.com/xmlschemas/content/legal/secondary-law/1/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="IN06_Nested-level">
  <title>Nested <sourcexml>level</sourcexml> <lnpid>id-IN06-38019</lnpid></title>
  <body>
    <section>
      <p><b>In NewLexis Schema, <targetxml>seclaw:level</targetxml> can not nest. If a nested <sourcexml>level</sourcexml> occurs in the input Rosetta XML then create a <targetxml>seclaw:bodytext</targetxml> before the nested <targetxml>seclaw:level</targetxml>.</b></p>
        <note>As <sourcexml>refpt</sourcexml> has to be converted to
                    <targetxml>ref:anchor</targetxml> and <targetxml>xml:id</targetxml> can stay as
                long as it does not duplicate. If it duplicates with
                    <targetxml>ref:anchor/@id</targetxml>, remove the <targetxml>@xml:id</targetxml>
                and retain <targetxml>ref:anchor</targetxml> with all its conversion in
                output.</note>
    </section>
    <section>
      <p><b>Source Markup:</b>
                    <pre>

&lt;level id="UNMI_VOL2_PT1_ART.0001.para0.d2e35190d2e35190d2e35190d2e35190" leveltype="para0"
    toc-caption="THIRD DIVISION&amp;#x2014;APPLICATIONS" subdoc="false"&gt;
    &lt;heading searchtype="COMMENTARY"&gt;
        &lt;title&gt;&lt;refpt type="ext"
            id="UNMI_VOL2_PT1_ART.0001.para0.d2e35190d2e35190d2e35190d2e35190"/&gt;THIRD
            DIVISION&amp;#x2014;APPLICATIONS&lt;/title&gt;
    &lt;/heading&gt;
    &lt;level id="UNMI_VOL2_PT1_ART.0002.subpara0.d2e35190d2e35190d2e35190"
        leveltype="subpara0" toc-caption="PART I APPLICATIONS IN SPECIFIED CASES"
        subdoc="false"&gt;
        &lt;heading searchtype="COMMENTARY"&gt;
            &lt;title&gt;&lt;refpt type="ext"
                id="UNMI_VOL2_PT1_ART.0002.subpara0.d2e35190d2e35190d2e35190"/&gt;PART I
                APPLICATIONS IN SPECIFIED CASES&lt;/title&gt;
        &lt;/heading&gt;
        ...
    &lt;/level&gt;
&lt;/level&gt;

</pre>
      </p>
      <p><b>Target Markup:</b>
                          <pre>

&lt;seclaw:level leveltype="paragraph" alternatetoccaption="THIRD DIVISION&amp;#x2014;APPLICATIONS" includeintoc="false"&gt;
    &lt;ref:anchor id="UNMI_VOL2_PT1_ART.0001.para0.d2e35190d2e35190d2e35190d2e35190" anchortype="global"/&gt;
    &lt;heading&gt;
        &lt;title&gt;THIRD DIVISION&amp;#x2014;APPLICATIONS&lt;/title&gt;
    &lt;/heading&gt;
    &lt;seclaw:bodytext&gt;
        &lt;seclaw:level leveltype="subparagraph" alternatetoccaption="PART I APPLICATIONS IN SPECIFIED CASES" includeintoc="false"&gt;
            &lt;ref:anchor id="UNMI_VOL2_PT1_ART.0002.subpara0.d2e35190d2e35190d2e35190" anchortype="global"/&gt;
            &lt;heading&gt;
                &lt;title&gt;PART I APPLICATIONS IN SPECIFIED CASES&lt;/title&gt;
            &lt;/heading&gt;
            ...
        &lt;/seclaw:level&gt;
    &lt;/seclaw:bodytext&gt;
&lt;/seclaw:level&gt;

</pre>
      </p>
    </section>
      <section>
          <title>Change Log</title>
          <p>2016-07-01: <ph id="change_20160701_SS">Created.</ph></p>
      </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-IN\IN06-Commentary\IN06_Nested-level.dita  -->
	<xsl:message>IN06_Nested-level.xsl requires manual development!</xsl:message> 

	<xsl:template match="level">

		<!--  Original Target XPath:  seclaw:level   -->
		<seclaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</seclaw:level>

	</xsl:template>

	<xsl:template match="refpt">

		<!--  Original Target XPath:  ref:anchor   -->
		<ref:anchor>
			<xsl:apply-templates select="@* | node()"/>
		</ref:anchor>

	</xsl:template>

</xsl:stylesheet>