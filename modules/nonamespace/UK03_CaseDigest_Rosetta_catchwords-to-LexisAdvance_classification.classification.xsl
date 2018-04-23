<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:dig="http://www.lexis-nexis.com/glp/dig" xmlns:casedigest="http://www.lexisnexis.com/xmlschemas/content/legal/case-digest/1/" xmlns:classify="http://www.lexisnexis.com/xmlschemas/content/shared/classification/1/" xmlns:caseinfo="http://www.lexisnexis.com/xmlschemas/content/legal/case-information/1/" version="2.0" exclude-result-prefixes="dita dig">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_catchwords-to-LexisAdvance_classification.classification">
  <title>catchwords-to-classification:classification <lnpid>id-UK03-27438</lnpid></title>
  <body>
    <p>
      <ul>
        <li>
          <sourcexml>catchwordgrp</sourcexml> omit tag and retain content.
            <sourcexml>catchwords</sourcexml> becomes
            <targetxml>casedigest:head/casedigest:caseinfo/classification:classification/@classscheme="catchwords"</targetxml>.
            <note>Each instance of <sourcexml>catchwords</sourcexml> should be converted to its own
              <targetxml>classify:classification[@classscheme="catchwords"]</targetxml>
            element.</note> The child element is described below: <ul>
            <li>
              <sourcexml>catchphrase</sourcexml> becomes
                <targetxml>casedigest:head/casedigest:caseinfo/classification:classification/@classscheme="catchwords"/classify:classitem/classify:classitem-identifier/classify:classname</targetxml>
            </li>
            <li>
              <sourcexml>dig:body/dig:info/catchwordgrp/page</sourcexml> becomes
                <targetxml>casedigest:head/ref:page</targetxml>. <note>Please note that in the above
                instruction, both <sourcexml>catchwordgrp</sourcexml> and
                  <sourcexml>dig:info</sourcexml> tags are omitted.</note>
            </li>
            <li>
              <sourcexml>dig:body/dig:info/catchwordgrp/footnotegrp</sourcexml> becomes
                <targetxml>casedigest:head/casedigest:caseinfo/classify:classification/classify:classitem/classify:classitem-identifier/classify:classname/footnotegroup.</targetxml>
              <note>Please refer to general markup section - footnotegrp for more details.</note>
            </li>

          </ul>
          <pre>
&lt;DIGESTDOC&gt;
  &lt;dig:body&gt;
    &lt;dig:info&gt;
      &lt;catchwordgrp display-name="Catchwords"&gt;
        &lt;catchwords&gt;
                    &lt;catchphrase&gt;
                        &lt;emph typestyle="it"&gt;Practice - Writ - Service on company - Writ properly
                            addressed, prepaid and posted to registered address of company - Writ
                            not received by company - Judgment signed in default of appearance -
                            Validity of service of writ&lt;/emph&gt;
                    &lt;/catchphrase&gt;
                &lt;/catchwords&gt;
                &lt;page text="[1972] 2 Q.B. 325 at " count="" reporter="QB"/&gt;
      &lt;/catchwordgrp&gt;
    &lt;/dig:info&gt;
  &lt;/dig:body&gt;
&lt;/DIGESTDOC&gt;

<b>Becomes</b>
&lt;casedigest:casedigest&gt;
  &lt;casedigest:head&gt;
    &lt;casedigest:caseinfo&gt;
     &lt;classify:classification classscheme="catchwords"&gt;
                &lt;classify:classitem&gt;
                    &lt;classify:classitem-identifier&gt;
                        &lt;classify:classname&gt;
                          &lt;emph&gt;Practice - Writ - Service on company - Writ properly
                            addressed, prepaid and posted to registered address of company - Writ
                            not received by company - Judgment signed in default of appearance -
                            Validity of service of writ
                          &lt;emph&gt;
                        &lt;/classify:classname&gt;
                    &lt;/classify:classitem-identifier&gt;
                &lt;/classify:classitem&gt;
            &lt;/classify:classification&gt;
    &lt;/casedigest:caseinfo&gt;
    &lt;ref:page num="" page-scheme="QB"/&gt;
  &lt;/casedigest:head&gt;  
&lt;/casedigest:casedigest&gt;
</pre>
        </li>
        <li>
          <note>Text (PCDATA) occuring in before opening and closing tag of
              <sourcexml>catchphrase</sourcexml> elements then this text should be moved inside the
            multiple target x-path
              "<targetxml>classify:classitem/classify:classitem-identifier/classify:classname</targetxml>"
            according to input text flow conditions. Please see the below example for
            details.</note>
          <pre>

&lt;catchwordgrp&gt;
    &lt;catchwords&gt;
        &lt;catchphrase&gt;Income tax&lt;/catchphrase&gt;
        – &lt;catchphrase&gt;Tax advantage&lt;/catchphrase&gt;
        – &lt;catchphrase&gt;Counteracting&lt;/catchphrase&gt;
        – &lt;catchphrase&gt;Notice&lt;/catchphrase&gt;
        – &lt;catchphrase&gt;Validity&lt;/catchphrase&gt;
        – &lt;catchphrase&gt;Validity of liquidation&lt;/catchphrase&gt;
        – &lt;catchphrase&gt;Finance Act 1960,&lt;/catchphrase&gt;
        s &lt;catchphrase&gt;28.&lt;/catchphrase&gt;
    &lt;/catchwords&gt;
&lt;/catchwordgrp&gt;

<b>Becomes</b>

&lt;classify:classification classscheme="catchwords"&gt;
    &lt;classify:classitem&gt;
      &lt;classify:classitem-identifier&gt;&lt;classify:classname&gt;Income tax&lt;/classify:classname&gt;&lt;/classify:classitem-identifier&gt;
    &lt;/classify:classitem&gt;
    &lt;classify:classitem&gt;
      &lt;classify:classitem-identifier&gt;&lt;classify:classname&gt;– Tax advantage&lt;/classify:classname&gt;&lt;/classify:classitem-identifier&gt;
    &lt;/classify:classitem&gt;
    &lt;classify:classitem&gt;
      &lt;classify:classitem-identifier&gt;&lt;classify:classname&gt;- Counteracting&lt;/classify:classname&gt;&lt;/classify:classitem-identifier&gt;
    &lt;/classify:classitem&gt;
    &lt;classify:classitem&gt;
      &lt;classify:classitem-identifier&gt;&lt;classify:classname&gt;- Notice&lt;/classify:classname&gt;&lt;/classify:classitem-identifier&gt;
    &lt;/classify:classitem&gt;
    &lt;classify:classitem&gt;
      &lt;classify:classitem-identifier&gt;&lt;classify:classname&gt;- Validity&lt;/classify:classname&gt;&lt;/classify:classitem-identifier&gt;
    &lt;/classify:classitem&gt;
    &lt;classify:classitem&gt;
      &lt;classify:classitem-identifier&gt;&lt;classify:classname&gt;- Validity of liquidation&lt;/classify:classname&gt;&lt;/classify:classitem-identifier&gt;
    &lt;/classify:classitem&gt;
    &lt;classify:classitem&gt;
      &lt;classify:classitem-identifier&gt;&lt;classify:classname&gt;- Finance Act 1960,&lt;/classify:classname&gt;&lt;/classify:classitem-identifier&gt;
    &lt;/classify:classitem&gt;
    &lt;classify:classitem&gt;
      &lt;classify:classitem-identifier&gt;&lt;classify:classname&gt;s 28.&lt;/classify:classname&gt;&lt;/classify:classitem-identifier&gt;
    &lt;/classify:classitem&gt;
&lt;/classify:classification&gt;

</pre>
        </li>
      </ul>
    </p>
    <section>
      <title>Changes</title>
      <p>2016-02-22: <ph id="change_20160222_SS">Added note for handling the running text found
          before of elements <sourcexml>catchphrase</sourcexml>. RFA #<b>2770</b></ph></p>
      <p>2013-07-19: <ph id="change_20130719_DSF">All target XPaths that begin with
            <b>casedigest:body</b> have been updated so that they begin with
          <b>casedigest:head</b>.</ph></p>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK03_CaseDigest\Rosetta_catchwords-to-LexisAdvance_classification.classification.dita  -->

  <xsl:template match="catchwordgrp">
    <xsl:apply-templates select="node() except (heading|p)|@*"/>
  </xsl:template>
  
  <xsl:template match="catchwords">
    <classify:classification>
      <xsl:attribute name="classscheme">
        <xsl:text>catchwords</xsl:text>
      </xsl:attribute>
      <xsl:apply-templates select="preceding-sibling::heading"/>
      <xsl:apply-templates select="@* | node() except page"/>
    </classify:classification>
  </xsl:template>
  
  <xsl:template match="catchwordgrp/heading">
    <heading>
      <xsl:apply-templates select="@* | node()"/>
    </heading>
  </xsl:template>
  
  <xsl:template match="catchwords/text()[following::catchphrase or preceding::catchphrase]">
    <xsl:value-of select="replace(.,'[^a-zA-Z0-9]',' ')"/>
  </xsl:template>
  
  <xsl:template match="catchwords/catchphrase">
    <classify:classitem>
      <classify:classitem-identifier>
        <classify:classname>
          <xsl:apply-templates select="@* | node()"/>
        </classify:classname>
      </classify:classitem-identifier>
    </classify:classitem>
  </xsl:template>
  
  <xsl:template match="catchphrase">
    <xsl:apply-templates select="@* | node()"/>
  </xsl:template>

</xsl:stylesheet>