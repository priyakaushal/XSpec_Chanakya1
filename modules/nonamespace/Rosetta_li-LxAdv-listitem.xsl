<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:glp="http://www.lexis-nexis.com/glp" xmlns:frm="http://www.lexis-nexis.com/glp/frm" xmlns:form="http://www.lexisnexis.com/xmlschemas/content/shared/form/1/" 
    version="2.0" exclude-result-prefixes="#all">

    
	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_li_level-to-LexisAdvance_listitem">
  <title><sourcexml>li @level</sourcexml> to <targetxml>listitem</targetxml> <lnpid>id-CCCC-10393</lnpid></title>
  <body>
  <section>
    <p>When <sourcexml>li</sourcexml> has attribute <sourcexml>@level</sourcexml> then conversion need to suppress
      <sourcexml>@level</sourcexml>.</p>
      
      <p>When <sourcexml>li</sourcexml> is immediately followed by a <sourcexml>l</sourcexml> that list should be brought into the end of the <targetxml>listitem/bodytext</targetxml>.</p>
  </section>
    <example>
      <title>Source XML having li/@level</title>
      <codeblock>

&lt;l&gt;
    &lt;li level="1"&gt;
        &lt;lilabel&gt;(a)&lt;/lilabel&gt;
            &lt;p&gt;
                &lt;text&gt;the day on which the person with the claim first knew,&lt;/text&gt;
            &lt;/p&gt;
    &lt;/li&gt;
&lt;/l&gt;

	</codeblock>
    </example>
    
    <example>
      <title>Target XML</title>
      <codeblock>

&lt;list&gt;
    &lt;listitem&gt;
        &lt;label&gt;(a)&lt;/label&gt;
        &lt;bodytext&gt;
            &lt;p&gt;
                &lt;text&gt;the day on which the person with the claim first
                    knew,&lt;/text&gt;
            &lt;/p&gt;
        &lt;/bodytext&gt;
    &lt;/listitem&gt;
&lt;/list&gt;

        </codeblock>
    </example> 
  </body>
	</dita:topic>

    <xsl:template match="li">
        <!--  Original Target XPath:  listitem   -->
        <listitem xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
            <xsl:choose>
                <xsl:when test="@id = ''"/>
                <xsl:when test="$streamID='AU18' and ./@id = descendant::refpt/@id"/>
                <xsl:otherwise>
                    <xsl:apply-templates select="@id"/>
                </xsl:otherwise>
            </xsl:choose>
            <xsl:apply-templates select="@* except @id"/>
            <xsl:apply-templates select="lilabel/refpt"/>
            <xsl:apply-templates select="lilabel"/>
            <bodytext xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
                <!-- 
                <xsl:apply-templates select="* except lilabel"/>
-->
                 <xsl:choose>
                    <xsl:when test="$streamID=('AU10','NZ11')">
                        <!-- WPK 2017-12-08.  In pacific PG, "some" glp:notes can become margin notes.
                            However they are not done by creating new <p><text><marginnote> for each note.
                            The margin notes are all placed inside the preceding <p><text> (already created text node).
                            This is achieved by applying following-sibling glp:note from within the first p/text.
                            Since the following sibling is done there, applying templates here will create duplicates.
                            So this "when" clause prevents duplication of margin notes.
                            4.2.2.3. heading (id-CCCC-10182)
                            1. bodytext/glp:note[notetype="xref"] becomes seclaw:bodytext/p/text/marginnote. New p and text elements are not created;
                            instead, the newly created marginnote is placed in the p that was mapped from the preceding sibling p of glp:note[notetype="xref"]. Within
                            this p the marginnote is placed within the text element that was mapped from the preceding sibling p element's last existing child text element.
                            2. li/glp:note[notetype="xref"] becomes listitem/bodytext/p/text/marginnote. Within the listitem/bodytext, new p
                            and text elements are usually not created; instead, the newly created marginnote is placed in the p that was mapped from the preceding sibling p of
                            glp:note[notetype="xref"]. Within this p the marginnote is placed within the text element that was mapped from the preceding sibling p
                            element's last child text source element. A new text element will need to be created if and only if the glp:note[notetype="xref"] occurs in
                            an li before any sibling p in the li (because in this case there would be no li/p that precedes the li/glp:note).

2018-01-31 update WPK:
original template call:
                        <xsl:apply-templates select="* except (lilabel | glp:note[@notetype='xref'][preceding-sibling::*[1][self::p[text[not(*) and normalize-space(.)!='']] or self::glp:note[@notetype='xref']]])"/>                        
This resulted in extraneous marginnotes (sibling margin notes are merged into p within one marginnote tag) to occur in a second, duplicate marginnote.
example: EMP_GUID_210381000.xml

new template call rectifies this and omits duplicate.

Regarding p/text predicate phrases:
(not(*) and normalize-space(.)!='') :::::: prevents creation of a marginnote from a glp:note following an empty p/text (yes this needs to be handled)
(emph and normalize-space(.)!='')   :::::: allows for emph to be in the preceding text.  Tried to merge with phrase above but this was easier to read and debug.

ideally this should be in a stream specific template since its has become a monster.

                        -->
                        <xsl:apply-templates select="* except (lilabel | glp:note[@notetype='xref']
                            [
                                preceding-sibling::*[1]
                                [
                                    self::p[text[not(*) and normalize-space(.)!='']] or self::glp:note[@notetype='xref']
                                    or self::p[text[emph and normalize-space(.)!='']]

                                ]
                            ])"/>                        
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:apply-templates select="* except lilabel"/>
                    </xsl:otherwise>
                </xsl:choose>
                <xsl:if test="following-sibling::*[1][self::l]">
                   <xsl:apply-templates select="following-sibling::*[1][self::l]" mode="nested-list"/>                 
                </xsl:if>
            </bodytext>
        </listitem>
    </xsl:template>
    
    <!-- JL: change to handle potential multiple nested consecutive lists between lis -->
    
    <xsl:template match="l" mode="nested-list">
        <xsl:choose>
            <xsl:when test="ancestor::frm:body and not(ancestor::footnote or ancestor::note)">
                <form:list>
                    <xsl:apply-templates/>
                </form:list>                
            </xsl:when>
            <xsl:otherwise>
                <list xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
                    <xsl:apply-templates/>
                </list>                
            </xsl:otherwise>            
        </xsl:choose>
        <xsl:if test="following-sibling::*[1][self::l]">
            <xsl:apply-templates select="following-sibling::*[1][self::l]" mode="nested-list"/>  
        </xsl:if>
    </xsl:template>
    
    <xsl:template match="li[ancestor::frm:body][not(ancestor::footnote or ancestor::note)]" priority="25">
        <!--  Original Target XPath:  listitem   -->
        <form:listitem>
            <xsl:apply-templates select="@*"/>
            <xsl:apply-templates select="lilabel/refpt"/>
            <xsl:apply-templates select="lilabel"/>
            <form:bodytext>
                <xsl:apply-templates select="* except lilabel"/>
                <xsl:if test="following-sibling::*[1][self::l]">
                    <xsl:apply-templates select="following-sibling::*[1][self::l]" mode="nested-list"/>  
                </xsl:if>
            </form:bodytext>
        </form:listitem>
    </xsl:template>
    
    <xsl:template match="li/@level"/>

</xsl:stylesheet>