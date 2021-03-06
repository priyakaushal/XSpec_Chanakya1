<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_entry_h-to-NewLexis_entry_toc_toc-entry_heading">
 <!-- This topic should not be used in CIs for documents that have COMMENTARYDOC or LEGDOC as their root element -->
 <title><sourcexml>entry/h</sourcexml> to  <targetxml>entry/toc/toc-entry/heading</targetxml> <lnpid>id-CCCC-10318</lnpid></title>
 <body>
  <section>
   <p><sourcexml>entry/h</sourcexml> becomes <targetxml>entry/toc/toc-entry/heading</targetxml>. The attributes of <sourcexml>h</sourcexml> are
    handled as follows:<ul>
     
     <li><sourcexml>h/@align</sourcexml> becomes <targetxml>heading/title/@align</targetxml>. The valid values for <targetxml>heading/title/@align</targetxml> are:<ul>
       <li>"left"</li>
       <li>"right"</li>
       <li>"center</li>
      </ul></li>
    </ul></p>
  </section>
  <example>
   <title>Source XML</title>
   <codeblock>

&lt;entry colname="c1"&gt;
 &lt;h align="center"&gt;
 &lt;emph typestyle="bf"&gt;Municipalities&lt;/emph&gt;
 &lt;/h&gt;
&lt;/entry&gt;
   
   </codeblock>
   <title>Target XML</title>
   <codeblock>

&lt;entry colname="c1"&gt;
 &lt;toc&gt;
  &lt;toc-entry&gt;
   &lt;heading&gt;
    &lt;title align="center"&gt;&lt;emph typestyle="bf"&gt;Municipalities&lt;/emph&gt;&lt;/title&gt;
   &lt;/heading&gt;
  &lt;/toc-entry&gt;
 &lt;/toc&gt;
&lt;/entry&gt;
   
     </codeblock>
  </example>
  <section>
   <title>Changes</title>
   <p>02-12-2012: Corrected the instructions on how to map <sourcexml>entry/h</sourcexml>.</p>
  </section>
  
  <!--<xsltinclusion>
   <xsl:stylesheet version="2.0">
    <xsl:template match="h">
     <xsl:choose>
      <xsl:when test="parent::entry">
       <xsl:element name="toc">
        <xsl:element name="toc-entry">
         <xsl:element name="heading">
          <xsl:if test="@l">
           <xsl:attribute name="level">
            <xsl:value-of select="@l"/>
           </xsl:attribute>
          </xsl:if>
          <!-\- SEP 2015-08-06 looks like there was a missing @ here, added it -\->
          <xsl:if test="@align">
           <xsl:attribute name="align">
            <xsl:value-of select="@align"/>
           </xsl:attribute>
          </xsl:if>
          <xsl:apply-templates/>
         </xsl:element>
        </xsl:element>
       </xsl:element>
      </xsl:when>
      <xsl:when test="child::inlineobject">
       <xsl:element name="figure">
        <!-\- SEP 2015-08-06 looks like there was a missing @ here, added it -\->
        <xsl:if test="@align">
         <xsl:attribute name="align">
          <xsl:value-of select="@align"/>
         </xsl:attribute>
        </xsl:if>
        <xsl:apply-templates/>
       </xsl:element>
      </xsl:when>
      <xsl:otherwise>
       <xsl:element name="h">
        <xsl:if test="@l">
         <xsl:attribute name="level">
          <xsl:value-of select="@l"/>
         </xsl:attribute>
        </xsl:if>
        <!-\- SEP 2015-08-06 looks like there was a missing @ here, added it -\->
        <xsl:if test="@align">
         <xsl:attribute name="align">
          <xsl:value-of select="@align"/>
         </xsl:attribute>
        </xsl:if>
        <xsl:apply-templates/>
       </xsl:element>
      </xsl:otherwise>
     </xsl:choose>
     
    </xsl:template>
   </xsl:stylesheet>
  </xsltinclusion>-->
  
 </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated (although the DITA file already has embedded XSLT).  Remove this comment after manual development complete!  (also remove the embedded XSLT within the DITA above) @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_entry_h-LxAdv-entry_toc_toc-entry_heading.dita  -->


    <xsl:template match="h">
     <xsl:choose>
      <xsl:when test="parent::entry">
       <xsl:element name="toc">
        <xsl:element name="toc-entry">
         <xsl:element name="heading">
          <xsl:if test="@l">
           <xsl:attribute name="level">
            <xsl:value-of select="@l"/>
           </xsl:attribute>
          </xsl:if>
          <!-- SEP 2015-08-06 looks like there was a missing @ here, added it -->
          <xsl:if test="@align">
           <xsl:attribute name="align">
            <xsl:value-of select="@align"/>
           </xsl:attribute>
          </xsl:if>
          <xsl:apply-templates/>
         </xsl:element>
        </xsl:element>
       </xsl:element>
      </xsl:when>
      <xsl:when test="child::inlineobject">
       <xsl:element name="figure">
        <!-- SEP 2015-08-06 looks like there was a missing @ here, added it -->
        <xsl:if test="@align">
         <xsl:attribute name="align">
          <xsl:value-of select="@align"/>
         </xsl:attribute>
        </xsl:if>
        <xsl:apply-templates/>
       </xsl:element>
      </xsl:when>
      <xsl:otherwise>
       <xsl:element name="h">
        <xsl:if test="@l">
         <xsl:attribute name="level">
          <xsl:value-of select="@l"/>
         </xsl:attribute>
        </xsl:if>
        <!-- SEP 2015-08-06 looks like there was a missing @ here, added it -->
        <xsl:if test="@align">
         <xsl:attribute name="align">
          <xsl:value-of select="@align"/>
         </xsl:attribute>
        </xsl:if>
        <xsl:apply-templates/>
       </xsl:element>
      </xsl:otherwise>
     </xsl:choose>
     
    </xsl:template>
   
</xsl:stylesheet>