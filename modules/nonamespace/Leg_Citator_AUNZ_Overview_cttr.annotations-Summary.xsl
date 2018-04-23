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
    id="Leg_Citator_AUNZ_Overview_cttr.annotations-Summary">
    <title>cttr:body/cttr:content/cttr:annotations - Summary <lnpid>id-AU20-22252</lnpid></title>

    <body>

      <section>
        <p>If <sourcexml>cttr:annotations/heading/note[id="OI13"]</sourcexml> and
            <sourcexml>cttr:annotations/heading/title</sourcexml> contains "Summary", create
            <targetxml>cttr.legisinfo/primlaw:synopsis[@xml:id="refsection-OI13"]</targetxml>.</p>
        <note>EXCEPTION: if the source
            <sourcexml>cttr:annotations/heading/note[id="OI13"]</sourcexml> contains no descendant
          text nodes with non-whitespace text, do not create any output for this source content at
          all.</note>

        <p>
          <sourcexml>heading/title</sourcexml> uses standard mapping to
            <targetxml>heading/title</targetxml>.</p>
        <p>
          <sourcexml>note[id="OI13"]</sourcexml> becomes
            <targetxml>primlaw:synopsis/bodytext</targetxml>, and its content is mapped to the
          content of <targetxml>primlaw:synopsis/bodytext</targetxml>.</p>
      </section>

      <example>
        <title>Source Summary</title>
        <codeblock>
         &lt;cttr:annotations&gt;
            &lt;heading&gt;
               &lt;title&gt;Summary&lt;/title&gt;
               &lt;!-- OI13 Long Title (Summary) --&gt;
               &lt;note id="OI13"&gt;
                  &lt;p&gt;
                     &lt;text&gt;An Act about privileges and immunities of certain overseas missions, and
                        for related purposes&lt;/text&gt;
                  &lt;/p&gt;
               &lt;/note&gt;
        </codeblock>

        <title>Target Summary</title>
        <codeblock>
      &lt;cttr.legisinfo&gt;
         &lt;primlaw:synopsis xml:id="refsection-OI13"&gt;
            &lt;heading&gt;
               &lt;title&gt;Summary&lt;/title&gt;
               &lt;!-- OI13 Long Title (Summary) --&gt;
            &lt;/heading&gt;
            
            	&lt;bodytext&gt;
                  &lt;p&gt;
                     &lt;text&gt;An Act about privileges and immunities of certain overseas missions, and
                        for related purposes&lt;/text&gt;
                  &lt;/p&gt;
              &lt;/bodytext&gt;
          &lt;/primlaw:synopsis&gt;
       </codeblock>
      </example>
      <example>
        <title>Example 1: Source Summary - OI13</title>
        <codeblock>
      &lt;cttr:annotations&gt;
        &lt;heading&gt;
          &lt;title&gt;Summary&lt;/title&gt;
          &lt;note id="OI13"&gt;
            &lt;p&gt;
              &lt;text&gt;An Act to contholidate and amend the Crimeth Act of 1908 and certain other
                enactmentth of the Parliament of New Zealand relating to crimes and other offenthes
                by aforesaid Wabbits&lt;/text&gt;
            &lt;/p&gt;
          &lt;/note&gt;
          ...                        
        </codeblock>

        <title>Example 1: Target Summary - OI13</title>
        <codeblock>    
 &lt;primlaw:synopsis xml:id="refsection-OI13"&gt;
    &lt;heading&gt;
       &lt;title&gt;Summary&lt;/title&gt;
    &lt;/heading&gt;
    
    &lt;bodytext&gt;
        &lt;p&gt;
           &lt;text&gt;An Act to contholidate and amend the Crimeth Act of 1908 and certain other
            enactmentth of the Parliament of New Zealand relating to crimes and other offenthes
            by aforesaid Wabbits&lt;/text&gt;
        &lt;/p&gt;
     &lt;/bodytext&gt;
 &lt;/primlaw:synopsis&gt;  
    </codeblock>
      </example>

      <section>
        <title> Changes: </title>
        <p>2016-07-06: <ph id="change_20160706_snb">Changes for NZ Legislation Citator: added note
            to indicate that entire section output is suppressed if no non-whitespace content exists
            in data other than section and titles.</ph></p>
        <p>2015-12-04: <ph id="change_20151204g_snb">Clarified first paragraph with condition
              <sourcexml>title</sourcexml> to instead be
              <sourcexml>cttr:annotations/heading/title</sourcexml>. Clarified mapping to indicate
            that <sourcexml>note[id="OI13"]</sourcexml> becomes
              <targetxml>primlaw:synopsis/bodytext</targetxml>. Moved mapping of
              <sourcexml>note</sourcexml> with @id containing OI14/OI15/OI16 to new CI section
            titled cttr:body/cttr:content/cttr:annotations - More Links, and corrected instructions
            in that new section to map to
              <targetxml>ref:relatedcontent[@xml:id="refsection-links"][@contenttype="more-links"]</targetxml>.
            Changed the examples accordingly.</ph>
        </p>
      </section>
    </body>
  </dita:topic>

  <!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
  <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU20_Legislative_Citator\Leg_Citator_AUNZ_Overview_cttr.annotations-Summary.dita  -->
 
<!--  <xsl:template match="source_cttr:annotations/heading/title" mode="sumry">
    <heading>
      <title>
        <xsl:apply-templates/>
      </title>
    </heading>   
  </xsl:template>-->
  
  <!--<xsl:template match="source_cttr:annotations/heading/note[@id='OI13' or @id='OI14']">
    <bodytext>
      <xsl:apply-templates select="@* | node()"/>
    </bodytext> 
  </xsl:template>-->

 <!-- <xsl:template match="source_cttr:annotations/heading/note[@id='OI13']">
    <xsl:if test="child::heading/title[.='Summary']">        
            <primlaw:synopsis>
              <xsl:attribute name="xml:id">
                <xsl:text>refsection-OI13</xsl:text>
              </xsl:attribute>  
              <bodytext>
              <xsl:apply-templates select="@* | node()"/>
              </bodytext>
            </primlaw:synopsis>
          
        </xsl:if>
   
  </xsl:template>


  

  <xsl:template match="source_cttr:annotations/heading/note[@id='OI13']">
    <primlaw:synopsis>
      <bodytext>
        <xsl:apply-templates select="@* | node()"/>		        
      </bodytext>
    </primlaw:synopsis>
   
  </xsl:template>-->

 
</xsl:stylesheet>
