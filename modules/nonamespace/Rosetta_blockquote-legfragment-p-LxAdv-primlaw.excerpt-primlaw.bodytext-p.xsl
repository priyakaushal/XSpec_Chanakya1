<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
  xmlns:leg="http://www.lexis-nexis.com/glp/leg"
  xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"
  xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" version="2.0"
  exclude-result-prefixes="#all">

  <dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/"
    id="Rosetta_blockquote-legfragment-p-to-LexisAdvance_primlaw.excerpt-primlaw.bodytext-p">
    <title><sourcexml>blockquote/legfragment/p</sourcexml> to
        <targetxml>primlaw:excerpt/primlaw:bodytext/p</targetxml>
      <lnpid>id-CCCC-10245</lnpid></title>
    <body>
      <section>
        <p>
          <b>blockquote/legfragment/p</b>: If the first child of <sourcexml>legfragment</sourcexml>
          is a paragraph, list, or table, then omit <sourcexml>blockquote</sourcexml> and convert
            <sourcexml>legfragment</sourcexml> to
            <targetxml>primlaw:excerpt/primlaw:bodytext</targetxml>. <note>In all cases,
              <targetxml>primlaw:excerpt</targetxml> comes as a sibling of <targetxml>p</targetxml>
            under bodytext because <targetxml>p</targetxml> doesn't allow
              <targetxml>primlaw:excerpt</targetxml>.</note>
        </p>
        <p>
          <note>For more information regarding <sourcexml>legfragment</sourcexml> within
              <sourcexml>blockquote</sourcexml>, please see the instructions for <xref
              href="Rosetta_blockquote-LxAdv-blockquote.dita">blockquote</xref>.</note>
          <codeblock> &lt;footnote fntoken="ABCE.LEG.EAN95.S47.FTN1"
            fnrtokens="ABCE.LEG.EAN95.S47.FTN1-R" type="default"&gt;
            &lt;fnlabel&gt;*&lt;/fnlabel&gt; &lt;fnbody&gt; &lt;h&gt;Commonwealth
            variations&lt;/h&gt; &lt;p&gt;&lt;refpt type="ext" id="ABCE.LEG.EAN95.S47.FTN1"/&gt;
            &lt;text&gt;Section 47 of the Commonwealth Act concludes:&lt;/text&gt;
            &lt;blockquote&gt; &lt;legfragment&gt; &lt;p&gt; &lt;text&gt;&amp;ldquo;Note: Section
            182 gives this section a wider application in relation to Commonwealth records and
            certain Commonwealth documents.&amp;rdquo;&lt;/text&gt;&lt;/p&gt; &lt;/legfragment&gt;
            &lt;/blockquote&gt; &lt;/p&gt; &lt;/fnbody&gt; &lt;/footnote&gt; </codeblock>
          <b>Becomes</b>
          <codeblock> &lt;footnote&gt; &lt;ref:anchor id="ABCE.LEG.EAN95.S47.FTN1"
            anchortype="global"/&gt; &lt;label&gt;*&lt;/label&gt; &lt;bodytext&gt;
            &lt;h&gt;Commonwealth variations&lt;/h&gt; &lt;p&gt; &lt;ref:anchor
            id="ABCE.LEG.EAN95.S47.FTN1" anchortype="global"/&gt; &lt;text&gt;Section 47 of the
            Commonwealth Act concludes:&lt;/text&gt; &lt;/p&gt; &lt;primlaw:excerpt&gt;
            &lt;primlaw:bodytext&gt; &lt;p&gt; &lt;text&gt;&amp;#x201C;Note: Section 182 gives this
            section a wider application in relation to Commonwealth records and certain Commonwealth
            documents.&amp;#x201D;&lt;/text&gt; &lt;/p&gt; &lt;/primlaw:bodytext&gt;
            &lt;/primlaw:excerpt&gt; &lt;/bodytext&gt; ... &lt;/footnote&gt; </codeblock>
        </p>
      </section>
    </body>
  </dita:topic>

  <!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
  <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_blockquote-legfragment-p-LxAdv-primlaw.excerpt-primlaw.bodytext-p.dita  -->

  <xsl:template
    match="legfragment[child::*[1][self::p or self::l or self::table or self::leg:level or self::deflist]]"
    priority="30">
    <xsl:choose>
      <xsl:when test="$streamID = 'NZ03'">
        <blockquote>
          <xsl:apply-templates select="@* | node()"/>
        </blockquote>
      </xsl:when>
      <xsl:otherwise>
        <!-- JD: 2017-07-25: Original contents here: 	
	    	 	<primlaw:bodytext>
	          <xsl:apply-templates/>
	        </primlaw:bodytext>
	        but this had the side effect of wrapping all content in primlaw:bodytext; adding logic to output sibling <primlaw:level> when required.
	    	
        JL 20171027: changed for-each-group select="node()" to select="*" because it was picking up on whitespace nodes 
        to output empty bodytext elements and legfragment has no PCDATA children in the dtd.
        -->

        <primlaw:excerpt>
          <xsl:for-each-group select="*" group-adjacent="boolean(self::*:level)">
            <xsl:choose>
              <!-- when current element is *:level (e.g., leg:level) A-T to produce primlaw:level -->
              <xsl:when test="current-grouping-key()">
                <xsl:apply-templates select="current-group()"/>
              </xsl:when>
              <!-- otherwise create a <primlaw:bodytext> wrapper and process children -->
              <xsl:otherwise>
                <primlaw:bodytext>
                  <xsl:apply-templates select="current-group()"/>
                </primlaw:bodytext>
              </xsl:otherwise>
            </xsl:choose>
          </xsl:for-each-group>
        </primlaw:excerpt>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>


</xsl:stylesheet>