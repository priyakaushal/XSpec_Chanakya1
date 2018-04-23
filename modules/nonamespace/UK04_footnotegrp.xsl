<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="courtorder-footnotegrp">
  <title><sourcexml>footnotegrp</sourcexml>, <sourcexml>footnote</sourcexml>, &amp; <sourcexml>fnr</sourcexml> <lnpid>id-UK04-27629</lnpid></title>
  <body>
    <p>The element <sourcexml>fnr</sourcexml> becomes <targetxml>footnote-ref</targetxml>.</p>
    <p>The element <sourcexml>footnotegrp</sourcexml> becomes <targetxml>footnotegroup</targetxml>
      and the child element <sourcexml>footnotegrp/footnote</sourcexml> becomes
      <targetxml>footnotegroup/footnote</targetxml>. Important points regarding this conversion:<ol> 
      <li>For <sourcexml>note</sourcexml> and <sourcexml>case:appendix</sourcexml> elements, the
        <sourcexml>footnotegrp</sourcexml> element must occur within the <targetxml>text</targetxml>
      element in the target document. Please see further below for an example. In regard to specific
      XPaths, this means:<ul>
        <li>The element
            <sourcexml>/CASEDOC/case:body/case:content/case:judgments/note[@notetype="commentary"]/footnotegrp</sourcexml>
          becomes
            <targetxml>/courtorder:courtorder/courtorder:body/section/bodytext/note/bodytext/p/text/footnotegroup</targetxml>.</li>
        <li>The element
            <sourcexml>/CASEDOC/case:body/case:content/case:judgments/note[@notetype="instruction"]/footnotegrp</sourcexml>
          becomes
            <targetxml>/courtorder:courtorder/courtorder:body/section/bodytext/p/text/footnotegroup</targetxml>.</li>
        <li>The element
            <sourcexml>/CASEDOC/case:body/case:content/case:appendix/footnotegrp</sourcexml> becomes
            <targetxml>/courtorder:courtorder/courtorder:body/appendix/bodytext/p/text/footnotegroup</targetxml>.</li>
      </ul>
      </li>
        <li>Since the element <sourcexml>/CASEDOC/case:body/case:headnote</sourcexml> becomes
            <targetxml>/courtorder:courtorder/courtorder:head</targetxml> (see topic <xref href="case.headnote.dita"/>), this means that
            <sourcexml>case:headnote/footnotegrp</sourcexml> becomes
            <targetxml>courtorder:head/footnotegroup</targetxml>. However, in the target schema, all
            <targetxml>footnotegroup</targetxml> elements must appear as the last children of
            <targetxml>courtorder:head</targetxml>. Therefore, when converting
            <sourcexml>case:headnote/footnotegrp</sourcexml>, any <sourcexml>footnotegrp</sourcexml>
          elements that have following sibling elements that are not also
            <sourcexml>footnotegrp</sourcexml> must be moved on output.</li>
      </ol></p>
    <p>Please see the topic <xref href="../../common_newest/Rosetta_footnote-LxAdv-footnote.dita"/>
      for further details regarding the general conversion of the
      <sourcexml>footnotegrp</sourcexml>, <sourcexml>footnote</sourcexml>, &amp;
        <sourcexml>fnr</sourcexml> elements, as well as several examples dealing with special
      scenarios.</p>
    <note>Within <targetxml>footnote</targetxml>, a child <targetxml>ref:anchor</targetxml> is created.
      In most LNI CIs, the <sourcexml>footnote/@fntoken</sourcexml> attribute becomes
        <targetxml>footnote/ref:anchor/@id</targetxml>. However, in the UK Case Practice Directions
      documents, some of the <sourcexml>footnote/@fntoken</sourcexml> values are "0". Since
        <targetxml>ref:anchor</targetxml> is a required child element of
        <targetxml>footnote</targetxml> and each <targetxml>ref:anchor@id</targetxml> attribute
      value must be unique, the footnotes where <sourcexml>footnote/@fntoken="0"</sourcexml> require
      the creation of a unique numeric <targetxml>ref:anchor/@id</targetxml> prepended with an
      underscore. Details regarding this are specified the topic <xref href="../../common_newest/Rosetta_footnote-LxAdv-footnote.dita"/>.</note>
    <section>
      <title>Source XML showing an example of how <sourcexml>footnotegrp</sourcexml> elements within
          <sourcexml>note</sourcexml> and <sourcexml>case:appendix</sourcexml> elements must occur
        within the <targetxml>text</targetxml> element in the target document.</title>
      <codeblock>

&lt;case:judgments&gt;
  &lt;note notetype="instruction"&gt;
    &lt;!-- ... --&gt;
    &lt;footnotegrp&gt;
      &lt;footnote fntoken="0"&gt;
        &lt;fnbody&gt;
          &lt;p&gt;
            &lt;text&gt;&lt;sup&gt;a&lt;/sup&gt;     &lt;emph typestyle="it"&gt;Halsbury's Statutes&lt;/emph&gt; (2nd Edn) 532.&lt;/text&gt;
          &lt;/p&gt;
        &lt;/fnbody&gt;
      &lt;/footnote&gt;
    &lt;/footnotegrp&gt;

      </codeblock>
    </section>
    <section>
      <title>Target XML </title>
      <codeblock>

&lt;courtorder:body&gt;
  &lt;section&gt;
    &lt;bodytext&gt;
      &lt;!-- ... --&gt;
      &lt;p&gt;&lt;text&gt;
        &lt;footnotegroup&gt;
          &lt;footnote&gt;
            &lt;ref:anchor id="_123456789"/&gt;
            &lt;bodytext&gt;
              &lt;p&gt;&lt;text&gt;&lt;sup&gt;a&lt;/sup&gt;     &lt;emph typestyle="it"&gt;Halsbury's Statutes&lt;/emph&gt; (2nd Edn) 532.&lt;/text&gt;&lt;/p&gt;
            &lt;/bodytext&gt;
          &lt;/footnote&gt;
        &lt;/footnotegroup&gt;
      &lt;/text&gt;&lt;/p&gt;

        </codeblock>
    </section>
    <section>
      <title>Changes</title>
      <p>2016-03-24: <ph id="change_20160324_JCG">Added instructions regarding <sourcexml>fnr</sourcexml> and <sourcexml>/CASEDOC/case:body/case:headnote/footnotegroup</sourcexml>. These instructions also now reference the newly added common topic for <sourcexml>footnotegrp</sourcexml>, <sourcexml>footnote</sourcexml>, and <sourcexml>fnr</sourcexml>.</ph></p>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK04_CourtOrder\footnotegrp.dita  -->
	<!--<xsl:message>footnotegrp.xsl requires manual development!</xsl:message>--> 

	<!--<xsl:template match="footnotegrp" priority="50">
		<footnotegroup>
			<xsl:apply-templates select="@*|node()"/>
		</footnotegroup>
	</xsl:template>

	<xsl:template match="fnr" priority="50">
		<footnote-ref>
			<xsl:apply-templates select="@*|node()"/>
		</footnote-ref>
	</xsl:template>
	
	<xsl:template match="footnote" priority="50">
		<footnote>
			<xsl:apply-templates select="@*|node()"/>
		</footnote>
	</xsl:template>-->
</xsl:stylesheet>