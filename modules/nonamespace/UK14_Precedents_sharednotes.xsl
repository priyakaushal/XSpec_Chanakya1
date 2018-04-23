<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
    xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/"
    xmlns:form="http://www.lexisnexis.com/xmlschemas/content/shared/form/1/" version="2.0"
    exclude-result-prefixes="dita">
    
    
    <topic id="UK14_Precedents_sharednotes" xmlns="http://dita.oasis-open.org/architecture/2005/">
        <title>shared notes</title>
        <body>
            <section>
                <p>Shared note documents follow the same patterns as other precedents documents.
                    Items such as lists, classifications, metadata etc will all follow Precedents
                    patterns. In addition, the following will occur and are mapped accordingly.</p>
                <p><sourcexml>frm:div[@divtype="shared-note-section"]</sourcexml> becomes
                    <targetxml>form:div[@divtype="shared-note-section"]</targetxml></p>
                <p><sourcexml>frm:div[@divtype="shared-note-subsection"]</sourcexml> becomes
                    <targetxml>form:div[@divtype="shared-note-subsection"]</targetxml></p>
                <p><sourcexml>level[@leveltype="shared-note"]/bodytext/form</sourcexml> becomes
                    <targetxml>form:form</targetxml>. As described elsewhere, form/heading and
                    form/frm:body become form:document/heading and form:document/form:bodytext
                    respectively.</p>
                <p>If no form tag exists in source, (for example
                    <sourcexml>level[@leveltype="shared-note"]/bodytext/p</sourcexml>), a
                    form:form and form:document need to be created, (example target is
                    <targetxml>form:form/form:document/form:bodytext/form:p</targetxml>). Child
                    elements target the form namespace elements. </p>
                <p>form:document attributes are populated as follows: </p>
                <ul>
                    <li>@annotated="false"</li>
                    <li>@official="false"</li>
                    <li>@typeofdoc="unnamed"</li>
                </ul>
            </section>
            
            <pre>
        <b>EXAMPLE</b>
            
<b><i>Source XML</i></b>
<![CDATA[
  <frm:div divtype="shared-note-section">
      <heading>
          <title>General points about pecuniary legacies</title>
      </heading>
      <p>
          <text>As to the different types of pecuniary legacy see Paragraph 66 [411]
              onwards and for the burden of inheritance tax see Paragraph 246 [2501] above. For
              the rules on abatement and lapse applicable to such legacies see Paragraph 71 [420]
              above.</text>
      </p>
      <p>
          <text>Commonly pecuniary legacies are given to friends, acquaintances,
              employees and charities. A provision that inheritance tax arising on death in
              respect of lifetime gifts made by the deceased (for instance on failed potentially
              exempt transfers) is to be paid out of the estate creates a pecuniary legacy in
              favour of the donee of the gift who would otherwise be liable for the
              tax.</text>
      </p>
  </frm:div>
]]> 
<b><i>Target XML</i></b>
<![CDATA[
  <form:div divtype="shared-note-section">
      <heading>
          <title>General points about pecuniary legacies</title>
      </heading>
      <form:bodytext>
          <form:p>
              <form:text>As to the different types of pecuniary legacy see Paragraph 66 [411]
                  onwards and for the burden of inheritance tax see Paragraph 246 [2501] above. For
                  the rules on abatement and lapse applicable to such legacies see Paragraph 71 [420]
                  above.</form:text>
          </form:p>
          <form:p>
              <form:text>Commonly pecuniary legacies are given to friends, acquaintances,
                  employees and charities. A provision that inheritance tax arising on death in
                  respect of lifetime gifts made by the deceased (for instance on failed potentially
                  exempt transfers) is to be paid out of the estate creates a pecuniary legacy in
                  favour of the donee of the gift who would otherwise be liable for the
                  tax.</form:text>
          </form:p>                                    
      </form:bodytext>
  </form:div>
]]>
                </pre>
            <pre>
  <b>EXAMPLE</b>
  <b><i>Source XML</i></b>

  <![CDATA[
  <level leveltype="shared-note">
    <bodytext>
        <form>
            <heading>
                <title>Shared Note Title</title>
            </heading>
            <frm:body>
                ...                    
            </frm:body>
        </form>
    </bodytext>
</level>
]]>
<b><i>Target XML</i></b>
  <![CDATA[
  <form:form>
    <heading>
        <title>Shared Note Title</title>
    </heading>
  ...
  </form:form>
]]>
</pre>
            <pre>
  <b>EXAMPLE</b>
  <b><i>Source XML</i></b>

  <![CDATA[
<level leveltype="shared-note">
  <bodytext>
    <heading>
      <title>Community designs — note</title>
    </heading>
    <p>
        ....
    </p>
    ....
  </bodytext>
</level>
]]>
<b><i>Target XML</i></b>
  <![CDATA[
<form:form>
    <form:document annotated="false" official="false" typeofdoc="acceptance">
        <heading>
            <title>Community designs — note</title>
        </heading>
        <form:bodytext>
                <form:p>
                    ....
                </form:p>
            ....
        </form:bodytext>
        
    </form:document>
</form:form>
]]>
</pre>
            
            <section>
                <title>Changes</title>
                <p>2017-07-01: <ph id="change_2017-07-01_PK">Added support for creating target form
                    tag when none exists in source but is needed.</ph></p>
                <p>2017-06-13: <ph id="change_2017-06-13_PK">Created</ph></p>
            </section>
        </body>
    </topic>
    
    <!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
    <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK14-Precedents\UK14_Precedents_level-bodytext-form.dita  -->
    <!--<xsl:message>UK14_Precedents_sharednotes.xsl requires manual development!</xsl:message> -->
    
    <xsl:template match="level[@leveltype = 'shared-note']" priority="25">
        <xsl:apply-templates select="node()"/>
    </xsl:template>
    
    <xsl:template match="level[@leveltype = 'shared-note']/bodytext" priority="30">
        <xsl:choose>
            <xsl:when test="not(child::form)">
                <form:form>
                    <form:document annotated="false" official="false" typeofdoc="unnamed">
                        <xsl:apply-templates select="heading" mode="shared_note_text" />
                        <form:bodytext>
                            <xsl:apply-templates select="node() except heading"/>
                        </form:bodytext>
                    </form:document>
                </form:form>
            </xsl:when>
            <xsl:otherwise>
                <xsl:apply-templates select="node()"/>
            </xsl:otherwise>
        </xsl:choose>
        
    </xsl:template>

    <xsl:template match="heading" mode="shared_note_text">
        <heading xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
            <xsl:apply-templates select="@* | node()"/>
        </heading>
    </xsl:template>
    
    <xsl:template match="p[child::edpnum]"/>

    <xsl:template match="p[not(child::edpnum)][parent::bodytext[parent::level/@leveltype='shared-note']]">
            <form:p>
                <xsl:apply-templates select="@* | node() except note" mode="shared_note_text"/>
            </form:p>
        <xsl:apply-templates select="note"/>
    </xsl:template>
    
    <xsl:template match="p/@id" mode="shared_note_text">
        <xsl:attribute name="xml:id">
            <xsl:value-of select="."/>
        </xsl:attribute>
    </xsl:template>
    
    <xsl:template match="text[parent::p[not(child::edpnum)][parent::bodytext[parent::level/@leveltype='shared-note']]]" mode="shared_note_text">
        <form:text>
            <xsl:apply-templates select="@* | node()"/>
        </form:text>
    </xsl:template>
    
 <!--   <xsl:template match="l" mode="shared_note_text">
        <form:list>
            <xsl:apply-templates select="@* | node()" mode="shared_note_text"/>
        </form:list>
    </xsl:template>
    
    <xsl:template match="li" mode="shared_note_text">
        <form:listitem>
            <xsl:apply-templates select="@* | node()"/>
        </form:listitem>
    </xsl:template>
    
    <xsl:template match="lilabel" mode="shared_note_text">
        <label>
            <xsl:apply-templates select="@* | node()"/>
        </label>
    </xsl:template>
    
    <xsl:template match="p" mode="shared_note_text">
        <form:p>
            <xsl:apply-templates select="@* | node()"/>
        </form:p>
    </xsl:template>
    
    <xsl:template match="edpnum" mode="shared_note_text">
        <altdesig>
            <xsl:apply-templates select="@* | node()"/>
        </altdesig>
    </xsl:template>-->
    
<!--    <xsl:template match="p[parent::bodytext[parent::level[@leveltype = 'shared-note']]]"/>
    
    <xsl:template
        match="p[parent::form[parent::bodytext[parent::level[@leveltype = 'shared-note']]]]"/>-->
    
    
</xsl:stylesheet>
