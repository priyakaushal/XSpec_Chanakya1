<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
  xmlns:leg="http://www.lexis-nexis.com/glp/leg"
  xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"	
  xmlns:cttr="urn:x-lexisnexis:content:citator:sharedservices:1"
  xmlns:proc="http://www.lexisnexis.com/xmlschemas/content/shared/process-elements/1/"
  xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/"
  xmlns:source_cttr="http://www.lexis-nexis.com/glp/cttr" 
  xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
  xmlns:legisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/legislation-info/1/"
  xmlns:primlawinfo="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-info/1/"  
  xmlns:primlawhist="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-history/1/"
  xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/"  
  xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" 
  version="2.0" exclude-result-prefixes="cttr dita primlaw primlawinfo">

  <dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/"
    id="Leg_Citator_AUNZ_Overview_cttr.annotations-EditorsNote">
    <title>cttr:body/cttr:content/cttr:annotations - Editors Note
      <lnpid>id-AU20-22241</lnpid></title>

    <body>

      <section>
        <p>If <sourcexml>cttr:annotations</sourcexml> contains <sourcexml>@id="OI18" OR
            @id="OP13"</sourcexml> or <sourcexml>cttr:annotations/heading/title</sourcexml> contains
          "Editor's Note", create
            <targetxml>note[@notetype="summary][@xml:id="refsection-OI18-editorsnote"]</targetxml>
          or
          <targetxml>note[@notetype="summary"][@xml:id="refsection-OP13-editorsnote"]</targetxml>,
          as appropriate.</p>
        <note>EXCEPTION: if the source <sourcexml>cttr:annotations[@id="OI18" OR
            @id="OP13"]/heading/note</sourcexml> or
            <sourcexml>cttr:annotations/heading[title/text()="Editor's Note"]/note</sourcexml>
          contains no descendant text nodes with non-whitespace text, do not create any output for
          this source content at all.</note>
        <p>Create <targetxml>ref:anchor[@id="ref-editors-note"]</targetxml> within
            <targetxml>note</targetxml>.</p>
        <p>
          <sourcexml>heading/title</sourcexml> uses standard mapping to
            <targetxml>heading/title</targetxml> however the <sourcexml>note</sourcexml> and its
          content become a child of <targetxml>note/bodytext</targetxml>. EXCEPTION: if the
            <sourcexml>note</sourcexml> does not contain any descendant non-whitespace-text content,
          do not create a <targetxml>bodytext</targetxml> element.</p>
      </section>

      <example>
        <title>Source Editors Notes</title>
        <codeblock>
         &lt;cttr:annotations id="OI18"&gt;
            &lt;heading&gt;
               &lt;title&gt;Editor Notes&lt;/title&gt;
               &lt;!-- OI18 Editor's Note --&gt;
               &lt;note/&gt;
            &lt;/heading&gt;        
        </codeblock>
        <codeblock>
         &lt;cttr:annotations id="OP13"&gt;
           &lt;!-- OP13 Editor's Note --&gt; 
           &lt;heading&gt;
             &lt;title&gt;Editor's Notes&lt;/title&gt; 
             &lt;note&gt;
               &lt;p&gt;
               &lt;text&gt;Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Phasellus hendrerit. Pellentesque aliquet nibh nec urna. In nisi neque, aliquet vel, 
               dapibus id, mattis vel, nisi. Sed pretium, ligula sollicitudin laoreet viverra, tortor libero sodales leo, eget blandit nunc tortor eu nibh.&lt;/text&gt; 
               &lt;/p&gt;
             &lt;/note&gt;
           &lt;/heading&gt;
           &lt;cttr:annot&gt;
             &lt;!-- Intentionally empty  --&gt; 
             &lt;comm:info&gt;
               &lt;title /&gt; 
             &lt;/comm:info&gt;
           &lt;/cttr:annot&gt;
         &lt;/cttr:annotations&gt;        
        </codeblock>

        <title>Target Editors Notes</title>
        <codeblock>
        &lt;note notetype="summary" xml:id="refsection-OI18-editorsnote"&gt;
            &lt;ref:anchor id="ref-editors-note"/&gt;
            &lt;heading&gt;
               &lt;title&gt;Editor Notes&lt;/title&gt;
            &lt;/heading&gt;
            &lt;bodytext&gt;
               &lt;p&gt;&lt;text/&gt;&lt;/p&gt;
            &lt;/bodytext&gt;
         &lt;/note&gt;        
        </codeblock>
        <codeblock>
        &lt;note notetype="summary" xml:id="refsection-OP13-editorsnote"&gt;
            &lt;ref:anchor id="ref-editors-note"/&gt;
            &lt;heading&gt;
               &lt;title&gt;Editor's Notes&lt;/title&gt;
            &lt;/heading&gt;
            &lt;bodytext&gt;
               &lt;p&gt;
                 &lt;text&gt;Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Phasellus hendrerit. Pellentesque aliquet nibh nec urna. In nisi neque, aliquet vel, 
                 dapibus id, mattis vel, nisi. Sed pretium, ligula sollicitudin laoreet viverra, tortor libero sodales leo, eget blandit nunc tortor eu nibh.&lt;/text&gt; 
               &lt;/p&gt;
            &lt;/bodytext&gt;  
         &lt;/note&gt;        
        </codeblock>
      </example>

      <section>
        <title> Changes: </title>
        <p>2016-04-21: <ph id="change_20160421a_snb">Changed mapping to completely suppress output
            when only whitespace exists within descendant text nodes.</ph></p>
        <p>2016-03-22: <ph id="change_20160322c_snb">Added clarification that no
              <targetxml>bodytext</targetxml> should be created if <sourcexml>note</sourcexml> does
            not contain any descendant non-whitespace-text content.</ph>
        </p>
        <p>2015-12-11: <ph id="change_20151211i_snb">Added clarification that test for text "Editor
            Notes" was inside <sourcexml>cttr:annotations/heading/title</sourcexml>, and changed
            "Editor Notes" to be "Editor's Note". Changed
              <targetxml>@xml:id="refsection-OI18"</targetxml> and
              <targetxml>@xml:id="refsection-OI13"</targetxml> to be
              <targetxml>@xml:id="refsection-OI18-editorsnote"</targetxml> and
              <targetxml>@xml:id="refsection-OP13-editorsnote"</targetxml>, respectively (notice the
            change of OI13 to be OP13 in addition to adding "-editorsnote"). Change was due to
            potential @id duplication with summary section. Added creation of
              <targetxml>ref:anchor[@id="ref-editors-note"]</targetxml>. Updated examples with
            changes. </ph>
        </p>
      </section>

    </body>
  </dita:topic>

  <!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
  <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU20_Legislative_Citator\Leg_Citator_AUNZ_Overview_cttr.annotations-EditorsNote.dita  -->

  <!-- Awantika: can we write "source_cttr:annotations/heading/title[.='Editor’’s Note']" instead  -->
  <xsl:variable name="apos"  select='"&apos;"'/>
  
  <xsl:template match="source_cttr:annotations[@id='OI18' or @id='OP13'] | source_cttr:annotations/heading/title[.=concat('Editor', $apos, 's', '', 'Note')]"> 
    <xsl:choose>
      <xsl:when test="*[not(@*)][count(descendant::*[@*]) = 0][normalize-space(.)='']"></xsl:when>
      <xsl:otherwise>
        <note>
          <xsl:attribute name="notetype">
            <xsl:text>summary</xsl:text>
          </xsl:attribute>
          <xsl:if test="@id='OI18'">
            <xsl:attribute name="xml:id">
              <xsl:text>refsection-OI18-editorsnote</xsl:text>
            </xsl:attribute>
          </xsl:if>
          <xsl:if test="@id='OP13'">
            <xsl:attribute name="xml:id">
              <xsl:text>refsection-OP13-editorsnote</xsl:text>
            </xsl:attribute>
          </xsl:if>
          <xsl:element name="ref:anchor">
            <xsl:attribute name="id">
              <xsl:text>ref-editors-note</xsl:text>
            </xsl:attribute>
          </xsl:element>
          <xsl:apply-templates select="node()"/>
        </note>
      </xsl:otherwise>
    </xsl:choose>
   
    

  </xsl:template>
<!--
  <xsl:template match="source_cttr:annotations[@id='OI18' or @id='OP13']/heading/title" priority="4">
    <heading>
      <title>
        <xsl:apply-templates select="@* | node()"/>
      </title>
    </heading>
  </xsl:template>-->
  
 <!-- <xsl:template match="source_cttr:annotations[@id='OI18' or @id='OP13']/heading/note">
    <bodytext>
      <xsl:apply-templates select="@* | node()"/>
    </bodytext>
      
  </xsl:template>-->

</xsl:stylesheet>
