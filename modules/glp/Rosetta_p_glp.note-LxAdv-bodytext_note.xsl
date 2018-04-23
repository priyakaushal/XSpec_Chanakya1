<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
    xmlns:glp="http://www.lexis-nexis.com/glp" version="2.0" exclude-result-prefixes="dita glp">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_p_glp.note-to-LexisAdvance_bodytext_note">
 <title><sourcexml>p/glp:note</sourcexml> to <targetxml>bodytext/note</targetxml> <lnpid>id-CCCC-10439</lnpid></title>
 <body>
  <section>
            <p>
                If <sourcexml>glp:note</sourcexml> comes within <sourcexml>p</sourcexml> then <targetxml>note</targetxml> 
                would become part of <targetxml>bodytext</targetxml> as a sibling to <targetxml>p</targetxml>
                
                <codeblock>
                    &lt;li&gt;&lt;lilabel&gt;(b)&lt;/lilabel&gt;
                    &lt;p&gt;&lt;text&gt;a copy of the certificate.&lt;/text&gt;&lt;/p&gt;&lt;!-- branch 2 --&gt;
                    &lt;p&gt;
                    &lt;glp:note&gt;
                    &lt;p&gt;&lt;text&gt;&lt;emph typestyle="it"&gt;&lt;emph typestyle="it"&gt;Note 1&lt;/emph&gt; If a form is approved under s&amp;#160;15 for this provision, the form must be used.&lt;/emph&gt;&lt;/text&gt;&lt;/p&gt;
                    &lt;/glp:note&gt;&lt;/p&gt;
                </codeblock>
                <b>Becomes</b>
                <codeblock>
                   &lt;listitem&gt;
                   &lt;label&gt;(b)&lt;/label&gt;
                   &lt;bodytext&gt;
                   &lt;p&gt;&lt;text&gt;a copy of the certificate.&lt;/text&gt;&lt;/p&gt;
                   &lt;note&gt;
                   &lt;bodytext&gt;
                   &lt;p&gt;&lt;text&gt;&lt;emph typestyle="it"&gt;&lt;emph typestyle="it"&gt;Note 1&lt;/emph&gt; If a form is approved under s&amp;#160;15 for this provision, the form must be used.&lt;/emph&gt;&lt;/text&gt;&lt;/p&gt;
                   &lt;/bodytext&gt;
                   &lt;/note&gt;
                   &lt;/bodytext&gt;
                    
                 </codeblock>
            </p>
    </section>
     
     <section>
         <title>Added from Rosetta_defitem-LxAdv-deflist_defitem_desfdesc_bodytext.xsl</title>
         <p>
             If the source XML has <sourcexml>deflist/defitem/glp:note</sourcexml> it will be handled as <targetxml>deflist/defitem/defdesc/bodytext/note</targetxml>.
         </p>
     </section>
     
     <example>
         <title>Source XML</title>
         <codeblock>
             
             &lt;deflist&gt;
             &lt;defitem&gt;
             ...
             &lt;glp:note&gt;
             &lt;p&gt;
             &lt;text&gt;
             &lt;emph typestyle="it"&gt;Note: The definition of
             &amp;ldquo;community corrections officer&amp;rdquo; is
             affected by section&amp;#160;10.&lt;/emph&gt;
             &lt;/text&gt;
             &lt;/p&gt;
             &lt;/glp:note&gt;
             &lt;/defitem&gt;
             &lt;/deflist&gt;
             
         </codeblock>
     </example>
     
     <example>
         <title>Target XML</title>
         <codeblock>
             
             &lt;deflist&gt;
             &lt;defitem&gt;
             ...
             &lt;defdesc&gt;
             &lt;bodytext&gt;
             &lt;note&gt;
             &lt;bodytext&gt;
             &lt;p&gt;
             &lt;text&gt;
             &lt;emph typestyle="it"&gt;Note: The definition of
             &amp;ldquo;community corrections officer&amp;rdquo; is
             affected by section&amp;#160;10.&lt;/emph&gt;
             &lt;/text&gt;
             &lt;/p&gt;
             &lt;/bodytext&gt;
             &lt;/note&gt;
             &lt;/bodytext&gt;
             &lt;/defdesc&gt;
             &lt;/defitem&gt;
             &lt;/deflist&gt;
             
         </codeblock>
     </example>
  <section>
   <title>Changes</title>
  </section>
 </body>
	</dita:topic>



             <!-- BRT: the following template is in base.xsl, match="p" in xsl:when test="child::glp:note" choice. I did not split this out in base.xsl - left 'as is' in when -->
             
             <xsl:template match="p[child::glp:note]">
                 <!-- don't create p in LA if the child of p is glp:note. This won't work if there is more than glp:note that is a child of p -->
                         <xsl:apply-templates/>
             </xsl:template>
             <!-- BRT: the following template is taken from base.xsl, match="glp:note" in otherwise choice. I did not split this out in base.xsl - left 'as is' in otherwise choice-->
             <xsl:template match="p/glp:note">
                 <xsl:element name="note" xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
                     <xsl:apply-templates select="@*"/>
                    <xsl:apply-templates select="heading"/>
                    <xsl:element name="bodytext">
                        <!-- BRT: added choice group -->
                        <xsl:choose>
                            <!-- may be other elements that need to be added to this choice -->
                            <xsl:when test="remotelink">
                                <xsl:element name="p" xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
                                    <xsl:element name="text">
                                        <xsl:apply-templates select="*[not(self::heading or self::refpt)]"/>
                                    </xsl:element>
                                </xsl:element>
                            </xsl:when>
                            <xsl:otherwise>
                                <xsl:apply-templates select="*[not(self::heading or self::refpt)]"/> 
                            </xsl:otherwise>
                        </xsl:choose>
                    </xsl:element>
                </xsl:element>
             </xsl:template>
         
</xsl:stylesheet>