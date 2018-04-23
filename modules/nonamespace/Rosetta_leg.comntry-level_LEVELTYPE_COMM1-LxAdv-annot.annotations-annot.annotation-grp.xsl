<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:annot="http://www.lexisnexis.com/xmlschemas/content/shared/annotations/1/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_leg.comntry-level_LEVELTYPE_COMM1-LxAdv-annot.annotations-annot.annotation-grp">
  <title><sourcexml>leg:comntry/level @leveltype="comm1"</sourcexml> to
      <targetxml>annot:annotations/annot:annotation-grp/annot:annotation</targetxml> <lnpid>id-CCCC-10374</lnpid></title>
  <body>
    <section>
      <p>
        <ul>
          <li><sourcexml>@leveltype="comm1"</sourcexml>
            <b>becomes</b>
            <targetxml>annot:annotation</targetxml> with optional attributes and child elements
            converted as: <ul>
              <li><sourcexml>@subdoc</sourcexml>
                <b>becomes</b>
                <targetxml>@includeintoc</targetxml></li>
              <li><sourcexml>@toc-caption</sourcexml>
                <b>becomes</b>
                <targetxml>@alternatetoccaption</targetxml></li>
              <li><sourcexml>leg:comntry/@searchtype</sourcexml>
                <b>becomes</b>
                <targetxml>annot:annotation-grp/@grptype="COMMENTARY"</targetxml>
              </li>
              <li><sourcexml>refpt</sourcexml>
                <b>becomes</b>
                <targetxml>ref:anchor</targetxml> and must be the first child in the sequence. Refer
                  to the <xref href="../common_newest/Rosetta_refpt-LxAdv-ref.anchor.dita">refpt</xref> section for
                more information.</li>
              <li><sourcexml>bodytext</sourcexml>
                <b>becomes</b>
                <targetxml>bodytext</targetxml></li>
            </ul>
            <pre>
              <b><i>Example: Source XML</i></b>                 

&lt;leg:comntry searchtype="commentary"&gt;
&lt;level leveltype="comm1"&gt;
&lt;bodytext&gt;
&lt;pgrp&gt;
&lt;heading searchtype="commentary"&gt;
    &lt;title align="center"&gt;COMMENTS&lt;/title&gt;
&lt;/heading&gt;
&lt;p&gt;
    &lt;text&gt;Even assuming that the matter relating to the ....
        &lt;ci:cite searchtype="CASE-REF"&gt;
            &lt;ci:case&gt;
                &lt;ci:caseinfo&gt;
                    &lt;ci:casename&gt;
                        &lt;ci:party1 name="Hindustan Times"/&gt;
                        &lt;ci:procphrase txt="v."/&gt;
                        &lt;ci:party2 name="State of U.P."/&gt;
                    &lt;/ci:casename&gt;
                &lt;/ci:caseinfo&gt;
                &lt;ci:caseref&gt;
                    &lt;ci:reporter value="INAIRSC"/&gt;
                    &lt;ci:edition&gt;
                        &lt;ci:date year="2003"/&gt;
                    &lt;/ci:edition&gt;
                    &lt;ci:page num="250"/&gt;
                &lt;/ci:caseref&gt;
            &lt;/ci:case&gt;
            &lt;ci:content&gt;
                &lt;emph typestyle="it"&gt;Hindustan Times&lt;/emph&gt; v. 
                &lt;emph typestyle="it"&gt;State of U.P.&lt;/emph&gt; A.I.R. 2003 S.C. 250
            &lt;/ci:content&gt;
        &lt;/ci:cite&gt;.
    &lt;/text&gt;
&lt;/p&gt;
&lt;/pgrp&gt;
&lt;/bodytext&gt;
&lt;/level&gt;
&lt;/leg:comntry&gt;
</pre>
            <pre>
              <b><i>Example: Target XML</i></b>
              

&lt;annot:annotations&gt;
&lt;annot:annotation-grp grptype="COMMENTARY"&gt;
&lt;annot:annotation&gt;
&lt;bodytext&gt;
&lt;pgrp&gt;
&lt;heading&gt;
    &lt;title align="center"&gt;COMMENTS&lt;/title&gt;
&lt;/heading&gt;
&lt;p&gt;
    &lt;text&gt;Even assuming that the matter relating to the ....
         &lt;lnci:cite&gt;
             &lt;lnci:case&gt;
                 &lt;lnci:caseinfo&gt;
                     &lt;lnci:casename&gt;
                         &lt;lnci:party1 name="Hindustan Times"/&gt;
                         &lt;lnci:procphrase txt="v."/&gt;
                         &lt;lnci:party2 name="State of U.P."/&gt;
                     &lt;/lnci:casename&gt;
                 &lt;/lnci:caseinfo&gt;
                 &lt;lnci:caseref&gt;
                     &lt;lnci:reporter value="INAIRSC"/&gt;
                     &lt;lnci:edition&gt;
                         &lt;lnci:date year="2003"/&gt;
                     &lt;/lnci:edition&gt;
                     &lt;lnci:page num="250"/&gt;
                 &lt;/lnci:caseref&gt;
             &lt;/lnci:case&gt;
             &lt;lnci:content&gt;
                 &lt;emph typestyle="it"&gt;Hindustan Times&lt;/emph&gt; v. 
                 &lt;emph typestyle="it"&gt;State of U.P.&lt;/emph&gt; A.I.R. 2003 S.C. 250
             &lt;/lnci:content&gt;
         &lt;/lnci:cite&gt;.
    &lt;/text&gt;
&lt;/p&gt;
&lt;/pgrp&gt;
&lt;/bodytext&gt;
&lt;/annot:annotation&gt;
&lt;/annot:annotation-grp&gt;
&lt;/annot:annotations&gt;

 </pre></li>
        </ul>
      </p>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_leg.comntry-level_LEVELTYPE_COMM1-LxAdv-annot.annotations-annot.annotation-grp.dita  -->
	<xsl:message>Rosetta_leg.comntry-level_LEVELTYPE_COMM1-LxAdv-annot.annotations-annot.annotation-grp.xsl requires manual development!</xsl:message> 

	<xsl:template match="leg:comntry/level @leveltype=&#34;comm1&#34;">

		<!--  Original Target XPath:  annot:annotations/annot:annotation-grp/annot:annotation   -->
		<annot:annotations>
			<annot:annotation-grp>
				<annot:annotation>
					<xsl:apply-templates select="@* | node()"/>
				</annot:annotation>
			</annot:annotation-grp>
		</annot:annotations>

	</xsl:template>

	<xsl:template match="@leveltype=&#34;comm1&#34;">

		<!--  Original Target XPath:  annot:annotation   -->
		<annot:annotation>
			<xsl:apply-templates select="@* | node()"/>
		</annot:annotation>

	</xsl:template>

	<xsl:template match="@subdoc">

		<!--  Original Target XPath:  @includeintoc   -->
		<xsl:attribute name="includeintoc">
			<xsl:apply-templates select="node()"/>
		</xsl:attribute>

	</xsl:template>

	<xsl:template match="@toc-caption">

		<!--  Original Target XPath:  @alternatetoccaption   -->
		<xsl:attribute name="alternatetoccaption">
			<xsl:apply-templates select="node()"/>
		</xsl:attribute>

	</xsl:template>

	<xsl:template match="leg:comntry/@searchtype">

		<!--  Original Target XPath:  annot:annotation-grp/@grptype="COMMENTARY"   -->
		<annot:annotation-grp>
			<xsl:attribute name="grptype">
				<xsl:text>COMMENTARY</xsl:text>
			</xsl:attribute>
		</annot:annotation-grp>

	</xsl:template>

	<xsl:template match="refpt">

		<!--  Original Target XPath:  ref:anchor   -->
		<ref:anchor>
			<xsl:apply-templates select="@* | node()"/>
		</ref:anchor>

	</xsl:template>

	<xsl:template match="bodytext">

		<!--  Original Target XPath:  bodytext   -->
		<bodytext>
			<xsl:apply-templates select="@* | node()"/>
		</bodytext>

	</xsl:template>

</xsl:stylesheet>