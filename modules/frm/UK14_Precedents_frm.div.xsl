<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
  xmlns:frm="http://www.lexis-nexis.com/glp/frm"
  xmlns:form="http://www.lexisnexis.com/xmlschemas/content/shared/form/1/" version="2.0"
  exclude-result-prefixes="dita frm">

  <dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="UK14_Precedents_frm.div">
    <title>frm:divs and frm:div <lnpid>id-UK14-30212</lnpid></title>
    <body>
      <p><sourcexml>frm:divs</sourcexml> (plural) and <sourcexml>frm:div</sourcexml> (singular) have
        same conversion. Both become <targetxml>form:div/form:bodytext</targetxml>.</p>
      <p>The <sourcexml>frm:div</sourcexml> attributes are optional and convert as follow:<ul>
          <li><sourcexml>@id</sourcexml> becomes <targetxml>@xml:id</targetxml>.</li>
          <li><sourcexml>@divtype</sourcexml> becomes <targetxml>@divtype</targetxml>.</li>
          <li><sourcexml>@preservenumbering</sourcexml> becomes
              <targetxml>@preservenumbering</targetxml>.</li>
        </ul>
      </p>
      <note><targetxml>form:bodytext</targetxml> is a required child of
          <targetxml>form:div</targetxml>. A heading is allowed as a direct child of
          <targetxml>form:div</targetxml>, i.e., <sourcexml>frm:div/heading</sourcexml> becomes
          <targetxml>form:div/heading</targetxml>. But anything else is child of
          <targetxml>form:bodytext</targetxml>.</note>

      <pre>
        <b>EXAMPLE</b>
            
<b><i>Source XML</i></b>

&lt;frm:body&gt;
  &lt;frm:divs&gt;
    &lt;frm:div id="div-1234" divtype="body" preservenumbering="false"&gt;
      &lt;p&gt;
        &lt;text&gt;Private claims...&lt;/text&gt;
      &lt;/p&gt;
      &lt;frm:div divtype="section"&gt;
        &lt;heading&gt;
          &lt;title&gt;Options available to you&lt;/title&gt;
        &lt;/heading&gt;
        &lt;p&gt;
          &lt;text&gt;There are a number of options...&lt;/text&gt;
        &lt;/p&gt;
        &lt;frm:div divtype="subsection"&gt;
          &lt;heading&gt;
            &lt;title&gt;Offer relates to part...&lt;/title&gt;
          &lt;/heading&gt;
          &lt;p&gt;
            &lt;text&gt;As the claimant...&lt;/text&gt;
          &lt;/p&gt;
        &lt;/frm:div&gt;
      &lt;/frm:div&gt;
    &lt;/frm:div&gt;
  &lt;/frm:divs&gt;
&lt;/frm:body&gt;
 
<b><i>Target XML</i></b>

&lt;form:document annotated="false" official="false" typeofdoc="unnamed"&gt;
  &lt;form:bodytext&gt;
    &lt;form:div&gt;
      &lt;form:bodytext&gt;
        &lt;form:div xml:id="div-1234" divtype="body" preservenumbering="false"&gt;
          &lt;form:bodytext&gt;
            &lt;form:p&gt;
              &lt;form:text&gt;Private claims...&lt;/form:text&gt;
            &lt;/form:p&gt;
            &lt;form:div divtype="section"&gt;
              &lt;heading&gt;
                &lt;title&gt;Options available to you&lt;/title&gt;
              &lt;/heading&gt;
              &lt;form:bodytext&gt;
                &lt;form:p&gt;
                  &lt;form:text&gt;There are a number of options...&lt;/form:text&gt;
                &lt;/form:p&gt;
                &lt;form:div divtype="subsection"&gt;
                  &lt;heading&gt;
                    &lt;title&gt;Offer relates to part...&lt;/title&gt;
                  &lt;/heading&gt;
                  &lt;form:bodytext&gt;
                    &lt;form:p&gt;
                      &lt;form:text&gt;As the claimant...&lt;/form:text&gt;
                    &lt;/form:p&gt;
                  &lt;/form:bodytext&gt;
                &lt;/form:div&gt;
              &lt;/form:bodytext&gt;
            &lt;/form:div&gt;
          &lt;/form:bodytext&gt;
        &lt;/form:div&gt;
      &lt;/form:bodytext&gt;
    &lt;/form:div&gt;
  &lt;/form:bodytext&gt;
&lt;/form:document&gt;

                </pre>
      <section>
        <title>Changes</title>
        <p>2016-03-27: <ph id="change_20160327_jm">Revised for attributes. Added rules for
              <sourcexml>@id</sourcexml> and <sourcexml>@preservenumbering</sourcexml>. No change to
            rule for <sourcexml>@divtype</sourcexml>.</ph></p>
        <p>2013-10-30: <ph id="change_20131030_jm">Illustrative change. Fixed typos in target
            example, correcting p/text to <targetxml>form:p/form:text</targetxml>.</ph></p>
        <p>2013-06-11: <ph id="change_20130611_jm">Seclaw schema now allows attribute
              <targetxml>form:div[@divtype]</targetxml>. Removed reference to pending CR.</ph>.</p>
      </section>
    </body>
  </dita:topic>

  <!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
  <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK14-Precedents\UK14_Precedents_frm.div.dita  -->
  <!--<xsl:message>UK14_Precedents_frm.div.xsl requires manual development!</xsl:message>-->

  <xsl:template match="frm:divs">

    <!--  Original Target XPath:  form:div/form:bodytext   -->
    <form:div>
      <form:bodytext>
        <xsl:apply-templates select="@* | node()"/>
      </form:bodytext>
    </form:div>

  </xsl:template>

<!-- WPK 2017-11-17
2017-11-07T123706-KekesiSG Add attribute @restartnumbering to the attribute list for element <form:div>.

  -->
  <xsl:template match="frm:div/@restartnumbering">
    <xsl:copy-of select="."/>
  </xsl:template>
  
  <xsl:template match="frm:div">

    <!--  Original Target XPath:  form:div/form:bodytext   -->
    <form:div>
      <xsl:apply-templates select="@*, heading/refpt, heading"/>
      <form:bodytext>
        <!--<xsl:apply-templates select="node() except heading"/>-->
          <xsl:for-each-group select="child::*" group-adjacent="local-name()">
            <xsl:choose>
              <xsl:when test="current-grouping-key() = 'note'">
                <xsl:choose>
                  <xsl:when test="count(current-group())>1">
                    <xsl:element name="notes">
                      <xsl:for-each select="current-group()">
                        <!--<xsl:apply-templates select="self::*"/>-->
                        <xsl:call-template name="note-temmplate"/>
                      </xsl:for-each>
                    </xsl:element>
                  </xsl:when>
                  <xsl:otherwise>
                    <xsl:for-each select="current-group()">
                      <!--<xsl:apply-templates select="self::*"/>-->
                      <xsl:call-template name="note-temmplate"/>
                    </xsl:for-each>
                  </xsl:otherwise>
                </xsl:choose>
                
              </xsl:when>
              <xsl:otherwise>
                <!--<xsl:message select="local-name(current-group()[1])!=heading"/>-->
                <xsl:if test="local-name(current-group()[1]) != 'heading'">
                <xsl:for-each select="current-group()">
                  <xsl:apply-templates select="self::*"/>
                </xsl:for-each>
                </xsl:if>
              </xsl:otherwise>
            </xsl:choose>
          </xsl:for-each-group>
      </form:bodytext>
    </form:div>
  </xsl:template>
  
  <xsl:template match="form[parent::frm:div or parent::bodytext[parent::level[@leveltype='shared-note']]]">
    <form:form>
      <xsl:apply-templates select="@* | node()"/>
    </form:form>
  </xsl:template>
  
  <xsl:template match="note[parent::frm:div[@divtype='body']]" name="note-temmplate">
    <note>
      <xsl:apply-templates select="@*, heading/refpt, heading"/>
      <bodytext>
        <xsl:apply-templates select="node() except heading"/>
      </bodytext>
    </note>
  </xsl:template>

  <xsl:template match="frm:div/blockquote"/>

  <xsl:template
    match="p[(parent::clause) or (parent::frm:div) or (parent::frm:optional) or (parent::frm:alternate)][not(@class = 'cover-date')]"
    priority="2">
    <form:p>
      <!-- webstar 7129403.  made sure refpt is processed first, so it appears first in output -->
      <xsl:apply-templates select="@* | refpt"/>
      <xsl:apply-templates select="* except (note | refpt)"/>
    </form:p>
    <xsl:apply-templates select="note"/>
  </xsl:template>

  <xsl:template
    match="text[(parent::p[(parent::clause) or (parent::frm:div) or (parent::frm:optional) or (parent::frm:alternate)]) or (parent::p[parent::li[(parent::l[((ancestor::clause or ancestor::frm:div or ancestor::frm:optional or ancestor::frm:alternate) and (not((ancestor::note) or (ancestor::defdesc) or (ancestor::defterm) or (ancestor::entry) or (ancestor::footnotegrp) or (ancestor::blockquote))))])]])]"
    priority="25">
    <form:text>
      <xsl:apply-templates select="@* | node()"/>
    </form:text>
  </xsl:template>

  <xsl:template match="frm:div/@divtype">
    <xsl:attribute name="divtype">
      <xsl:value-of select="."/>
    </xsl:attribute>
  </xsl:template>

  <xsl:template match="frm:div/@preservenumbering">
    <!--  Original Target XPath:  @preservenumbering   -->
    <xsl:attribute name="preservenumbering">
      <xsl:value-of select="."/>
    </xsl:attribute>
  </xsl:template>

  <xsl:template match="p[@class = 'cover-date']">
    <form:clause clausetype="cover-date">
      <form:bodytext>
        <form:p>
          <xsl:apply-templates select="@* | node()"/>
        </form:p>
      </form:bodytext>
    </form:clause>
  </xsl:template>

  <xsl:template match="p[child::note[@notetype = 'instruction']][not(preceding-sibling::*[1][self::*])]" priority="3">
    <xsl:choose>
      <xsl:when test="parent::li[not(parent::l[parent::defdesc])]">
        <form:bodytext>
          <form:div divtype="para-and-note">
            <form:bodytext>
              <form:p>
                <xsl:apply-templates select="@* | node() except note[@notetype = 'instruction']"/>
              </form:p>
              <xsl:apply-templates select="note[@notetype = 'instruction']"/>
            </form:bodytext>
          </form:div>
        </form:bodytext>
      </xsl:when>
      <xsl:when test="(parent::defdesc or parent::defterm)">
        <p>
          <xsl:apply-templates select="@* | node() except note[@notetype = 'instruction']"/>
        </p>
        <xsl:apply-templates select="note[@notetype = 'instruction']"/>
      </xsl:when>
      <xsl:otherwise>
        <form:div divtype="para-and-note">
          <form:bodytext>
            <form:p>
              <xsl:apply-templates select="@* | node() except note[@notetype = 'instruction']"/>
            </form:p>
            <xsl:apply-templates select="note[@notetype = 'instruction']"/>
          </form:bodytext>
        </form:div>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>
  
  <xsl:template match="text[not(preceding-sibling::lilabel)][parent::p[child::note[@notetype = 'instruction']]]" priority="30">
    <form:text>
      <xsl:apply-templates select="@* | node()"/>
    </form:text>
  </xsl:template>

  <xsl:template match="level[@leveltype='shared-note']/bodytext//l/li/refpt" priority="100"/>
  
  <xsl:template match="p[parent::frm:body]" priority="100"/>

</xsl:stylesheet>
