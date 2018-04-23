<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="UK12_Treatise_note">
  <title>note <lnpid>id-UK12-29821</lnpid></title>
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
            <targetxml>note[@notetype]/bodytext</targetxml>.<ul>
            <li>Move note if necessary: If source is <sourcexml>p/text/note</sourcexml> then move
              target <targetxml>note</targetxml> to be following sibling of
              <targetxml>p</targetxml>. If the move causes <sourcexml>p/text</sourcexml> to be empty
              (i.e. source <sourcexml>p/text</sourcexml> contained only <sourcexml>note</sourcexml>)
              then suppress empty <sourcexml>p/text</sourcexml>; i.e., output
                <targetxml>note</targetxml> but do not output empty <targetxml>p/text</targetxml> in
              target.</li>
          </ul></li>
        <li><sourcexml>note</sourcexml> without <sourcexml>@notetype</sourcexml>. Suppress
            <sourcexml>note</sourcexml> tag, convert content. <i>Use case:</i>
          <sourcexml>note</sourcexml> is a container for <sourcexml>table</sourcexml> and is not
          needed.</li>
      </ul>
      <note>Exception: For note occurring within legfragment, see rules for <xref href="UK12_Treatise_legfragment.dita">"legfragment (and descendants)
          (id-UK12-29827)".</xref></note>
    </section>

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
      &lt;p&gt;
        &lt;text&gt;
          &lt;note notetype="example"&gt; &lt;!-- note moved for target, making p/text empty and suppressed --&gt;
            &lt;h l="1"&gt;Example&lt;/h&gt;
            &lt;p&gt;
               &lt;text&gt;A company is already registered ...&lt;/text&gt;
            &lt;/p&gt;
          &lt;/note&gt;
        &lt;/text&gt;
      &lt;/p&gt;
    &lt;/bodytext&gt;
&lt;/level&gt;
&lt;level leveltype="section"&gt;
  &lt;heading&gt;
     &lt;title&gt;Lisburn Service Area&lt;/title&gt;
  &lt;/heading&gt;
  &lt;bodytext&gt;
    &lt;p&gt;
      &lt;text&gt;
        &lt;address&gt;
          &lt;address.line&gt;121 Hill Road&lt;/address.line&gt;
          &lt;address.line&gt;Lisburn&lt;/address.line&gt;
          &lt;postalcode&gt;BT28 1LA&lt;/postalcode&gt;
        &lt;/address&gt;
        &lt;note notetype="advice"&gt;  &lt;!-- note moved for target, becomes following sibling of p --&gt;
          &lt;p&gt;
            &lt;text&gt;Formerly named Central Area&lt;/text&gt;
          &lt;/p&gt;
        &lt;/note&gt;
      &lt;/text&gt;
    &lt;/p&gt;
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
        &lt;note notetype="example"&gt;
            &lt;bodytext&gt;
                &lt;h level="1"&gt;Example&lt;/h&gt;
                &lt;p&gt;
                    &lt;text&gt;A company is already registered ...&lt;/text&gt;
                &lt;/p&gt; 
            &lt;/bodytext&gt;
        &lt;/note&gt;
    &lt;/seclaw:bodytext&gt;
&lt;/seclaw:level&gt;
&lt;seclaw:level leveltype="section"&gt;
  &lt;heading&gt;
     &lt;title&gt;Lisburn Service Area&lt;/title&gt;
  &lt;/heading&gt;
  &lt;seclaw:bodytext&gt;
     &lt;p&gt;
        &lt;text&gt;
           &lt;location:address&gt;
              &lt;location:address.line&gt;121 Hill Road&lt;/location:address.line&gt;
              &lt;location:address.line&gt;Lisburn&lt;/location:address.line&gt;
              &lt;location:postalcode&gt;BT28 1LA&lt;/location:postalcode&gt;
           &lt;/location:address&gt;
        &lt;/text&gt;
     &lt;/p&gt;
     &lt;note notetype="advice"&gt;
        &lt;bodytext&gt;
           &lt;p&gt;
              &lt;text&gt;Formerly named Central Area&lt;/text&gt;
           &lt;/p&gt;
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
    <section><title>Changes</title>
      <p>2017-01-25: <ph id="change_20170125_jm">At the rule for mapping <sourcexml>note</sourcexml>
          to <targetxml>note</targetxml>, added instruction for moving <targetxml>note</targetxml>
          when source is <sourcexml>p/text/note</sourcexml>. And updated Example 2.</ph></p>
      <p>2016-07-07: <ph id="change_20160707_jm">Not a rule change for this section. Added a
          cross-reference to section covering <sourcexml>note</sourcexml> occurring within
            <sourcexml>legfragment</sourcexml>.</ph></p>
      <p>2014-12-23: <ph id="change_20141223_jm">Modified rule when <sourcexml>@notetype</sourcexml>
          value is not <sourcexml>"xref"</sourcexml>. Previously, rule specified the values
          "commentary" and "example". Other values will occur. Rule now generalized to cover any
          value other than "xref". Target remains <targetxml>note[@notetype]/bodytext</targetxml>.
          Also removed request to report any value other than xref, commentary, or example; no
          longer necessary. R4.5 Content Issue 2104.</ph></p>
      <p>2014-09-15: <ph id="change_20140915_jm">Revised rule for
            <sourcexml>note[@notetype="xref"]</sourcexml> to <targetxml>marginnote</targetxml>.
          Removed requirement to generate <targetxml>text</targetxml> wrapper for
            <targetxml>marginnote</targetxml>. Instead, <targetxml>marginnote</targetxml> is placed
          at end of <targetxml>text</targetxml> element which contains the associated narrative.
          R4.5 Content Issue 1804.</ph></p>
      <p>2014-03-27: <ph id="change_20140327_jm">New rule. Handles
            <sourcexml>note[@notetype="example"]</sourcexml>. Similar to
            <sourcexml>note[@notetype="commentary"]</sourcexml>. Known to occur in dpsi 040Y which
          was added in Mar 2014 redelivery. Phase 6 UK Discussion Item 85. Webteam 252434.</ph></p>
      <p>2014-03-20: <ph id="change_20140320_jm">New rule. Handles
            <sourcexml>note[@notetype="commentary"]</sourcexml>. Means new target xpath. Known to
          occur in dpsi 02GS which was added in Mar 2014 redelivery. Phase 6 UK Discussion Item 73.
          Webteam 252434.</ph></p>
      <p>2014-01-02: <ph id="change_20140102_jm">New rule. Source docs have note before associated
          text. Presentation requires note after associated text to get marginnote icon in correct
          position. New rule describes moving note for target. Affects UK11 Newsitem and UK12
          Treatise. Tracking: R4.5 Content Issues 958 (UK11) and 972 (UK12), Webteam 103703
          (UK12).</ph></p>
      <p>2013-11-13: <ph id="change_20131113_jm">Rule change. Now requires
            <targetxml>text</targetxml> wrapper for <targetxml>marginnote</targetxml>. Also requires
          merging multiple adjacent <sourcexml>note[@notetype="xref"]</sourcexml> to single
            <targetxml>marginnote</targetxml>. Applies to UK12. Webteam 245550.</ph></p></section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK12-Treatise\UK12_Treatise_note.dita  -->
<!--	<xsl:message>UK12_Treatise_note.xsl requires manual development!</xsl:message> -->

	<xsl:template match="note">
		<note>
		  <xsl:apply-templates select="@*"/>
			<bodytext>
				<xsl:apply-templates select="node()"/>
			</bodytext>
		</note>
	</xsl:template>
  
  <!-- BRT 3/16/18 WS7142635 added following-sibling::text()  -->
  <xsl:template match="note[p[not(following-sibling::*) and not(preceding-sibling::*)]/text/fnr[not(following-sibling::*) and not(preceding-sibling::*) and not(following-sibling::text()) and not(preceding-sibling::text())]]">
    <xsl:apply-templates select="p/text/fnr"/>
  </xsl:template>
  
  
  
  <xsl:template match="note[@notetype='xref']"/>
  
  <xsl:template match="note[@notetype='xref']" mode="note-xref">
    <marginnote>
      <ref:anchor>
        <xsl:attribute name="id">
          <xsl:text>abc_</xsl:text>
          <xsl:number count="note" level="any" format="1"/>
        </xsl:attribute>
        <xsl:attribute name="anchortype" select="'local'"/>
      </ref:anchor>
      <bodytext>
        <xsl:apply-templates select="node()"/>
      </bodytext>
    </marginnote>
  </xsl:template>

  <xsl:template match="note/@notetype">
<xsl:attribute name="notetype">
  <xsl:value-of select="."/>
</xsl:attribute>
		

	</xsl:template>

</xsl:stylesheet>