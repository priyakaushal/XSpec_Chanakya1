<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:in="http://www.lexis-nexis.com/glp/in" xmlns:index="urn:x-lexisnexis:content:publicationindex:sharedservices:1" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" xmlns:seclaw="http://www.lexisnexis.com/xmlschemas/content/legal/secondary-law/1/" version="2.0" exclude-result-prefixes="dita in">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="UK12_Treatise_index">
  <title>index and "in:" children <lnpid>id-UK12-29814</lnpid></title>
  <body>
    <p>These instructions are for <sourcexml>index</sourcexml> and children in
        <sourcexml>in:</sourcexml> namespace.</p>
    <section>
      <p><sourcexml>index</sourcexml> becomes <targetxml>index:itemgrp</targetxml> with descendants
        as described below.</p><note>Generate container
          <targetxml>index:index[@indextype="topical"]</targetxml> to hold all adjacent
          <targetxml>index:itemgrp</targetxml>.</note>
      <p><sourcexml>in:lev1</sourcexml>, <sourcexml>in:lev2</sourcexml>, and
          <sourcexml>in:lev3</sourcexml> each becomes <targetxml>index:item</targetxml>. Maintain
        source nesting.</p>
      <p><sourcexml>in:entry</sourcexml> becomes <targetxml>index:entry</targetxml>.</p>
      <p><sourcexml>in:entry-text</sourcexml> becomes <targetxml>index:entrytext</targetxml>.</p>
      <p><sourcexml>in:index-ref</sourcexml> becomes <targetxml>index:locator</targetxml>. Child
          <sourcexml>remotelink</sourcexml> converts as follows: <ul>
          <li><sourcexml>remotelink[@service="DOC-ID"]</sourcexml> becomes
              <targetxml>ref:lnlink[@service="DOCUMENT"]</targetxml>. Content (pcdata) becomes
              <targetxml>ref:marker</targetxml>. Create
              <targetxml>ref:locator/ref:locator-key</targetxml> with children as follows:<ul>
              <li>If <sourcexml>@remotekey1="DOC-ID"</sourcexml> or
                  <sourcexml>@remotekey1="DOCID"</sourcexml> then <ul>
                  <li><targetxml>ref:key-name/@name</targetxml> will have the value "DOC-ID".</li>
                  <li><targetxml>key-value/@value</targetxml> will be the value of
                      <sourcexml>@dpsi</sourcexml> followed by hyphen and concatenated with
                      <sourcexml>@refpt</sourcexml> or <sourcexml>@remotekey2</sourcexml>, which
                    ever is present (if both are present, use
                    <sourcexml>@remotekey2</sourcexml>).</li>
                </ul></li>
              <li>If <sourcexml>@remotekey1="REFPTID"</sourcexml> then <ul>
                  <li><targetxml>ref:key-name/@name</targetxml> will have the value "DOC-ID".</li>
                  <li><targetxml>ref:key-value/@value</targetxml> will be the value of
                      <sourcexml>@dpsi</sourcexml> followed by hyphen and concatenated with
                      <sourcexml>@docidref</sourcexml>.</li>
                  <li>Create <targetxml>ref:locator/@anchoridref</targetxml> with value from
                      <sourcexml>@refpt</sourcexml> or <sourcexml>@remotekey2</sourcexml>, which
                    ever is present (if both are present, use <sourcexml>@refpt</sourcexml>).</li>
                </ul></li>
            </ul></li>
        </ul><note>In this use case, <sourcexml>remotelink</sourcexml> is expected to always have
            <sourcexml>@service="DOC-ID"</sourcexml>. Report if attribute is missing or has any
          other value.</note></p>
    </section>
    <pre>
        <b>EXAMPLE 1.  without <sourcexml>in:index-ref</sourcexml></b>
            
<b><i>Source XML</i></b>

&lt;comm:body&gt;
  &lt;level leveltype="prelim"&gt;
    &lt;heading&gt;
      &lt;title&gt;INDEX&lt;/title&gt;
    &lt;/heading&gt;
    &lt;bodytext&gt;
      &lt;p&gt;
        &lt;text&gt;References to HMRC Notices are in the form N followed 
            by the Notice number.&lt;/text&gt;
      &lt;/p&gt;
      &lt;index&gt;
        &lt;heading&gt;
          &lt;title&gt;A&lt;/title&gt;
        &lt;/heading&gt;
        &lt;in:lev1&gt;
          &lt;in:entry&gt;
            &lt;in:entry-text&gt;
              &lt;emph typestyle="bf"&gt;ACCOMMODATION&lt;/emph&gt;
            &lt;/in:entry-text&gt;
          &lt;/in:entry&gt;
          &lt;in:lev2&gt;
            &lt;in:entry&gt;
              &lt;in:entry-text&gt;caravans, &lt;ci:cite&gt;...&lt;/ci:cite&gt;...&lt;/in:entry-text&gt;
            &lt;/in:entry&gt;
            &lt;in:lev3&gt;
              &lt;in:entry&gt;
                &lt;in:entry-text&gt;caravan parks, ...&lt;/in:entry-text&gt;
              &lt;/in:entry&gt;
            &lt;/in:lev3&gt;
          &lt;/in:lev2&gt;
          &lt;in:lev2&gt;
            &lt;in:entry&gt;
              &lt;in:entry-text&gt;directors, ...&lt;/in:entry-text&gt;
            &lt;/in:entry&gt;
          &lt;/in:lev2&gt;
        &lt;/in:lev1&gt;
      &lt;/index&gt;
      &lt;index&gt;
        &lt;heading&gt;
          &lt;title&gt;B&lt;/title&gt;
        &lt;/heading&gt;
        &lt;in:lev1&gt;
          &lt;in:entry&gt;
            &lt;in:entry-text&gt;
              &lt;emph typestyle="bf"&gt;BAD DEBTS, ...&lt;/emph&gt;
            &lt;/in:entry-text&gt;
          &lt;/in:entry&gt;
        &lt;/in:lev1&gt;
      &lt;/index&gt;
    &lt;/bodytext&gt;
  &lt;/level&gt;
&lt;/comm:body&gt;
 
<b><i>Target XML</i></b>

&lt;seclaw:body&gt;
  &lt;seclaw:level leveltype="unclassified"&gt;
    &lt;heading&gt;
      &lt;title&gt;INDEX&lt;/title&gt;
    &lt;/heading&gt;
    &lt;seclaw:bodytext&gt;
      &lt;p&gt;
        &lt;text&gt;References to HMRC Notices are in the form N followed 
            by the Notice number.&lt;/text&gt;
      &lt;/p&gt;
      &lt;index:index indextype="topical"&gt;
        &lt;index:itemgrp&gt;
          &lt;heading&gt;
            &lt;title&gt;A&lt;/title&gt;
          &lt;/heading&gt;
          &lt;index:item&gt;
            &lt;index:entry&gt;
              &lt;index:entrytext&gt;
                &lt;emph typestyle="bf"&gt;ACCOMMODATION&lt;/emph&gt;
              &lt;/index:entrytext&gt;
            &lt;/index:entry&gt;
            &lt;index:item&gt;
              &lt;index:entry&gt;
                &lt;index:entrytext&gt;caravans, &lt;lnci:cite&gt;...&lt;/lnci:cite&gt;...&lt;/index:entrytext&gt;
              &lt;/index:entry&gt;
              &lt;index:item&gt;
                &lt;index:entry&gt;
                  &lt;index:entrytext&gt;caravan parks, ...&lt;/index:entrytext&gt;
                &lt;/index:entry&gt;
              &lt;/index:item&gt;
            &lt;/index:item&gt;
            &lt;index:item&gt;
              &lt;index:entry&gt;
                &lt;index:entrytext&gt;directors, ...&lt;/index:entrytext&gt;
              &lt;/index:entry&gt;
            &lt;/index:item&gt;
          &lt;/index:item&gt;
        &lt;/index:itemgrp&gt;
        &lt;index:itemgrp&gt;
          &lt;heading&gt;
            &lt;title&gt;B&lt;/title&gt;
          &lt;/heading&gt;
          &lt;index:item&gt;
            &lt;index:entry&gt;
              &lt;index:entrytext&gt;
                &lt;emph typestyle="bf"&gt;BAD DEBTS, ...&lt;/emph&gt;
              &lt;/index:entrytext&gt;
            &lt;/index:entry&gt;
          &lt;/index:item&gt;
        &lt;/index:itemgrp&gt;      
      &lt;/index:index&gt;
    &lt;/seclaw:bodytext&gt;
  &lt;/seclaw:level&gt;
&lt;/seclaw:body&gt;

                </pre>
    <pre>
        <b>EXAMPLE 2.  showing <sourcexml>in:index-ref</sourcexml></b>
            
<b><i>Source XML</i></b>

&lt;comm:body&gt;
  &lt;level leveltype="chapter"&gt;
     &lt;heading&gt;
        &lt;title&gt;Index&lt;/title&gt;
     &lt;/heading&gt;
     &lt;bodytext&gt;
        &lt;index&gt;
           ...
           &lt;in:lev1&gt;
              &lt;in:entry&gt;
                 &lt;in:entry-text&gt;rates,&lt;/in:entry-text&gt;
                 &lt;in:index-ref&gt;&lt;remotelink service="DOC-ID" remotekey1="REFPTID"
                         refpt="0MQW_1_2007_1037" dpsi="0MQW"
                         docidref="0MQW_1_2007"
                         &gt;1037&lt;/remotelink&gt;, &lt;remotelink service="DOC-ID"
                         remotekey1="REFPTID"
                         refpt="0MQW_1_2007_2535" dpsi="0MQW"
                         docidref="0MQW_1_2007"
                         &gt;2535&lt;/remotelink&gt;&lt;/in:index-ref&gt;
              &lt;/in:entry&gt;
           &lt;/in:lev1&gt;
           ...
        &lt;/index&gt;
     &lt;/bodytext&gt;
  &lt;/level&gt;
&lt;/comm:body&gt;
 
<b><i>Target XML</i></b>

&lt;seclaw:body&gt;
  &lt;seclaw:level leveltype="chapter"&gt;
    &lt;heading&gt;
        &lt;title&gt;Index&lt;/title&gt;
    &lt;/heading&gt;
    &lt;seclaw:bodytext&gt;
      &lt;index:index indextype="topical"&gt;
        &lt;index:itemgrp&gt;
          ...
          &lt;index:item&gt;
            &lt;index:entry&gt;
              &lt;index:entrytext&gt;rates,&lt;/index:entrytext&gt;
              &lt;index:locator&gt;
                 &lt;ref:lnlink service="DOCUMENT"&gt;
                     &lt;ref:marker&gt;1037&lt;/ref:marker&gt;
                     &lt;ref:locator anchoridref="_0MQW_1_2007_1037"&gt;
                         &lt;ref:locator-key&gt;
                             &lt;ref:key-name name="DOC-ID"/&gt;
                             &lt;ref:key-value value="0MQW-0MQW_1_2007"/&gt;
                         &lt;/ref:locator-key&gt;
                     &lt;/ref:locator&gt;
                 &lt;/ref:lnlink&gt;, &lt;ref:lnlink service="DOCUMENT"&gt;
                     &lt;ref:marker&gt;2535&lt;/ref:marker&gt;
                     &lt;ref:locator anchoridref="_0MQW_1_2007_2535"&gt;
                         &lt;ref:locator-key&gt;
                             &lt;ref:key-name name="DOC-ID"/&gt;
                             &lt;ref:key-value value="0MQW-0MQW_1_2007"/&gt;
                         &lt;/ref:locator-key&gt;
                     &lt;/ref:locator&gt;
                 &lt;/ref:lnlink&gt;
              &lt;/index:locator&gt;
            &lt;/index:entry&gt;
          &lt;/index:item&gt;
          ...
        &lt;/index:itemgrp&gt;
      &lt;/index:index&gt;
    &lt;/seclaw:bodytext&gt;
  &lt;/seclaw:level&gt;
&lt;/seclaw:body&gt;

                </pre>
    <section>
      <title>Changes</title>
      <p>2014-03-20: <ph id="change_20140320_jm">New rule. Means new target xpath. Added
        mapping for <sourcexml>in:index-ref</sourcexml> to <targetxml>index:locator</targetxml>,
        and children. Reflects new data in Mar 2014 redelivery. Known to occur in dpsi 0MQW.
        Affects UK12 only. Phase 6 UK Discussion Item 82. Webteam 252434.</ph></p>
      <p>2013-12-04: <ph id="change_20131204_jm">Not a rule change. Modified target example. Added
            <targetxml>@indextype="topical"</targetxml> to reflect existing rule for generating
            <targetxml>index:index</targetxml>.</ph></p>
      <p>2013-06-11: <ph id="change_20130611_jm">Removed references to pending CRs. Seclaw schema
          now allows <targetxml>seclaw:bodytext/index:index</targetxml> and
            <targetxml>index:entrytext/lnci:cite</targetxml>.</ph></p>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK12-Treatise\UK12_Treatise_index.dita  -->
<!--	<xsl:message>UK12_Treatise_index.xsl requires manual development!</xsl:message> -->

	<xsl:template match="index">
	  <index:index>
	    <xsl:attribute name="indextype" select="'topical'"/>
		<index:itemgrp>
			<xsl:apply-templates select="@* | node()"/>
		</index:itemgrp>
	  </index:index>
	</xsl:template>

	

	<xsl:template match="in:lev1">

		<!--  Original Target XPath:  index:item   -->
		<index:item>
			<xsl:apply-templates select="@* | node()"/>
		</index:item>

	</xsl:template>

  <!-- 2017-10-19 - MDS: Added in:lev# (through 7) to future proof.  Webstar 7020046 -->
	<xsl:template match="in:lev2|in:lev3|in:lev4|in:lev5|in:lev6|in:lev7">

		<!--  Original Target XPath:  index:item   -->
		<index:item>
			<xsl:apply-templates select="@* | node()"/>
		</index:item>

	</xsl:template>

	<xsl:template match="in:entry">

		<!--  Original Target XPath:  index:entry   -->
		<index:entry>
			<xsl:apply-templates select="@* | node()"/>
		</index:entry>

	</xsl:template>

	<xsl:template match="in:entry-text">

		<!--  Original Target XPath:  index:entrytext   -->
		<index:entrytext>
			<xsl:apply-templates select="@* | node()"/>
		</index:entrytext>

	</xsl:template>

	<xsl:template match="in:index-ref">

		<!--  Original Target XPath:  index:locator   -->
		<index:locator>
			<xsl:apply-templates select="@* | node()"/>
		</index:locator>

	</xsl:template>

	
</xsl:stylesheet>