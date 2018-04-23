<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:casedigest="http://www.lexisnexis.com/xmlschemas/content/legal/case-digest/1/"
  xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0"
  exclude-result-prefixes="dita casedigest ref case">

  <dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_references-to-LexisAdvance_ref.relatedrefs">
    <title>references-to-ref:relatedrefs <lnpid>id-UK03-27455</lnpid></title>
    <body>
      <p>
        <ul>
          <li>
            <sourcexml>references</sourcexml> becomes <targetxml>casedigest:body/ref:relatedrefs</targetxml>. The source attribute <sourcexml>references/@referencetype</sourcexml> becomes <targetxml>ref:relatedrefs/@referencetype</targetxml> and the
            attribute <sourcexml>references/@searchtype</sourcexml> is dropped. The children are described below : <ul>
              <li>
                <sourcexml>references/p</sourcexml> becomes <targetxml>casedigest:body/ref:relatedrefs/bodytext/p</targetxml>. The child element is converted as follows: <ul>
                  <li>
                    <sourcexml>references/p/text</sourcexml> becomes <targetxml>casedigest:body/ref:relatedrefs/bodytext/p/text</targetxml>. </li>
                </ul>
              </li>
              <li>
                <sourcexml>references/h</sourcexml> becomes <targetxml>casedigest:body/ref:relatedrefs/bodytext/h</targetxml>. </li>
              <li>
                <sourcexml>references/pgrp</sourcexml> becomes <targetxml>casedigest:body/ref:relatedrefs/bodytext/pgrp</targetxml>. </li>
            </ul>
          </li>
        </ul>
        <note>If <sourcexml>references/@referencetype="legislation"</sourcexml> and there is no heading (<sourcexml>h</sourcexml> element before the initial <sourcexml>pgrp</sourcexml>), then a "Related Legislation" heading must be created by
          encapsulating an <targetxml>h</targetxml> within a <targetxml>bodytext</targetxml>. See second example.</note>
        <pre>
&lt;DIGESTDOC&gt;
  &lt;dig:body&gt;
    &lt;dig:info&gt;
     &lt;references referencetype="cases"&gt;
      &lt;p&gt;
        &lt;text&gt;The following case is referred to in the judgment of Lord Denning M.R.:&lt;/text&gt;
      &lt;/p&gt;
      &lt;p&gt;
        &lt;text&gt;
          &lt;emph typestyle="it"&gt;Charles (L. H.) &amp;amp; Co. Ltd., In re&lt;/emph&gt;
          [1935] W.N. 15.
        &lt;/text&gt;
      &lt;/p&gt;
     &lt;/references&gt;
    &lt;/dig:info&gt;
  &lt;/dig:body&gt;
&lt;/DIGESTDOC&gt;

<b>Becomes</b>
&lt;casedigest:casedigest&gt;
  &lt;casedigest:body&gt;
   &lt;ref:relatedrefs referencetype="cases"&gt;
    &lt;bodytext&gt;
      &lt;p&gt;
       &lt;text&gt;The following case is referred to in the judgment of Lord Denning M.R.:&lt;/text&gt;
      &lt;/p&gt;   
      &lt;p&gt;
        &lt;text&gt;
          &lt;emph typestyle="it"&gt;Charles (L. H.) &amp;amp; Co. Ltd., In re&lt;/emph&gt;
          [1935] W.N. 15.
        &lt;/text&gt;
      &lt;/p&gt;
    &lt;/bodytext&gt;
   &lt;/ref:relatedrefs&gt;
  &lt;/casedigest:body&gt;  
&lt;/casedigest:casedigest&gt;
</pre>
      </p>
      <example>
        <title>Example on when to create a heading for "Related Legislation"</title>
        <codeblock> &lt;references referencetype="legislation"&gt; &lt;pgrp&gt; &lt;p&gt; &lt;text&gt; Tribunal Procedure (First-tier Tribunal) (Tax Chamber) Rules 2009, ... </codeblock> Becomes <codeblock> &lt;ref:relatedrefs
          referencetype="legislation"&gt; &lt;bodytext&gt; &lt;h&gt;Related Legislation&lt;/h&gt; &lt;/bodytext&gt; &lt;bodytext&gt; &lt;pgrp&gt; &lt;p&gt; &lt;text&gt;Tribunal Procedure (First-tier Tribunal) (Tax Chamber) Rules 2009, ... </codeblock>
      </example>
      <section>
        <title>Changes</title>
        <p>2013-09-05: <ph id="change_20130905_Rosetta_references-to-LexisAdvance_ref.relatedrefs_sp">Added note on when to automatically create a heading for "Related Legislation" and added example of such. Webteam 234131</ph>.</p>
      </section>
    </body>
  </dita:topic>

  <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK03_CaseDigest\Rosetta_references-to-LexisAdvance_ref.relatedrefs.dita  -->

  <!-- CSN - 2017-11-29 - Webstar 7058157 - synchronize references and case:references -->

  <xsl:template match="references | case:references">
    <ref:relatedrefs>
      <xsl:apply-templates select="@*"/>
      <bodytext>
        <xsl:apply-templates select="node()"/>
      </bodytext>
    </ref:relatedrefs>
  </xsl:template>

  <xsl:template match="references/@referencetype | case:references/@referencetype">
    <xsl:copy-of select="."/>
  </xsl:template>

  <xsl:template match="case:references/heading/title/text()">
    <xsl:value-of select="replace(., '[^a-zA-Z0-9]', ' ')"/>
  </xsl:template>

</xsl:stylesheet>
