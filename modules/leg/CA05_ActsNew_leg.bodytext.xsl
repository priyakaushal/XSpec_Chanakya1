<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
  xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:glp="http://www.lexis-nexis.com/glp"
  xmlns:primlawinfo="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-info/1/"
  xmlns:legisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/legislation-info/1/"
  xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" version="2.0"
  exclude-result-prefixes="#all">

  <dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.bodytext">
    <title>leg:bodytext <lnpid>id-CA05-13611</lnpid></title>
    <body>
      <section>
        <ul>
          <li class="- topic/li ">
            <sourcexml>leg:bodytext</sourcexml> becomes <targetxml>primlaw:bodytext</targetxml>.
          </li>
        </ul>
      </section>

      <example>
        <title>Source XML</title>
        <codeblock> &lt;leg:bodytext&gt; &lt;p&gt; &lt;text&gt;38 (1) On the basis of a complaint or
          otherwise, the minister may investigate, or appoint a person to investigate, any matter
          related to this Act.&lt;/text&gt; &lt;/p&gt; &lt;/leg:bodytext&gt; </codeblock>
      </example>

      <example>
        <title>Target XML</title>
        <codeblock> &lt;primlaw:bodytext&gt; &lt;p&gt; &lt;text&gt;38 (1) On the basis of a
          complaint or otherwise, the minister may investigate, or appoint a person to investigate,
          any matter related to this Act.&lt;/text&gt; &lt;/p&gt; &lt;/primlaw:bodytext&gt;
        </codeblock>
      </example>

    </body>
  </dita:topic>


  <xsl:template match="leg:bodytext[not(descendant::text[starts-with(.,'Note:') or starts-with(.,'NOTE:') or starts-with(., 'Editor''s Note:') or starts-with(., 'Editor''s note:') or starts-with(.,'[Note de l''')]) or not(ancestor::leg:level-not-in-force)]">
    
    <!--  Original Target XPath:  primlaw:bodytext   -->
    <primlaw:bodytext>
      <xsl:apply-templates select="@* | node() except leg:history"/>
    </primlaw:bodytext>
    <xsl:apply-templates select="child::leg:history"/>
  </xsl:template>
  
  <xsl:template match="figure" priority="2">
    <xsl:apply-templates select="p/text"/>
  </xsl:template>
  
  <xsl:template match="figure/p/text" priority="2">
    <xsl:apply-templates select="@*"/>
    <xsl:apply-templates select="node() except refpt"/>
  </xsl:template>
  
  <xsl:template match="leg:bodytext[ancestor::leg:level-not-in-force][child::l[child::li[child::p[child::text[starts-with(., 'Editor''s note:') or starts-with(., 'Note de l''éditeur:') or starts-with(., '[Editor’s note:') or starts-with(., '[Note de l')]]]]]" priority="2">
    <primlaw:bodytext>
      <note notetype="instruction">
        <bodytext>
          <xsl:apply-templates select="l[@virtual-nesting]"/>
        </bodytext>
      </note>
      <xsl:if test="child::p[preceding-sibling::*[1][self::l[child::li[child::p[child::text[starts-with(., 'Editor''s note:') or starts-with(., 'Note de l''éditeur:') or starts-with(., '[Editor’s note:') or starts-with(., '[Note de l')]]]]]]">
        <p>
          <xsl:apply-templates
            select="descendant::text[not(starts-with(., 'Editor''s note:') or starts-with(., 'Note de l''éditeur:') or starts-with(., '[Editor’s note:') or starts-with(., '[Note de l'))]"/>
        </p>
      </xsl:if>
    </primlaw:bodytext>
  </xsl:template>
  
  <xsl:template match="leg:bodytext[ancestor::leg:level-not-in-force][child::l[child::li[child::p[child::text[starts-with(., 'Note:') or starts-with(., 'NOTE:')]]]]]" priority="2">
    <primlaw:bodytext>
      <note notesource="official" notetype="other">
        <bodytext>
          <xsl:apply-templates select="l[@virtual-nesting]"/>
        </bodytext>
      </note>
      <xsl:if test="child::p[preceding-sibling::*[1][self::l[child::li[child::p[child::text[starts-with(., 'Note:') or starts-with(.,'NOTE:')]]]]]]">
        <p>
          <xsl:apply-templates
            select="descendant::text[not(starts-with(., 'Editor''s note:') or starts-with(., 'Note de l''éditeur:') or starts-with(., '[Editor’s note:') or starts-with(., '[Note de l'))]"/>
        </p>
      </xsl:if>
    </primlaw:bodytext>
  </xsl:template>
  
  <xsl:template match="leg:bodytext[descendant::text[starts-with(.,'Note:') or starts-with(.,'NOTE:') or starts-with(., 'Editor''s Note:') or starts-with(., 'Editor''s note:') or starts-with(.,'[Note de l''')]][ancestor::leg:level-not-in-force][not(child::l[child::li[child::p[child::text[starts-with(., 'Editor''s note:') or starts-with(., 'Note de l''éditeur:') or starts-with(., '[Editor’s note:') or starts-with(., '[Note de l')]]]])]"  priority="1">
    
  </xsl:template>
  
  <xsl:template match="leg:bodytext/@searchtype">
    
  </xsl:template>
</xsl:stylesheet>
