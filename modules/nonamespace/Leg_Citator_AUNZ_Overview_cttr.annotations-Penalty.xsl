<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
  xmlns:source_cttr="http://www.lexis-nexis.com/glp/cttr"
  xmlns:cttr="urn:x-lexisnexis:content:citator:sharedservices:1"
  xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0"
  exclude-result-prefixes="dita cttr">

  <dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/"
    id="Leg_Citator_AUNZ_Overview_cttr.annotations-Penalty">
    <title>cttr:body/cttr:content/cttr:annotations - Penalty <lnpid>id-AU20-22248</lnpid></title>

    <body>
      <section>
        <p>If <sourcexml>cttr:annotations/@id</sourcexml> contains <sourcexml>"@id="OP5"</sourcexml>
          or <sourcexml>"@id="OP5NZ"</sourcexml> perform the mapping instructions in this
          section.</p>
        <note>EXCEPTION: if the source <sourcexml>cttr:annotations[@id="OP5" or
            @id="OP5NZ"]/heading/note</sourcexml> contains no descendant text nodes with
          non-whitespace text, do not create any output for this source content at all.</note>


        <p>If <sourcexml>cttr:annotations/@id</sourcexml> contains
          <sourcexml>"@id="OP5"</sourcexml>, <ul>
            <li>Create
                <targetxml>ref:relatedcontent[@contenttype="penalty"][@xml:id="refsection-OP5"]</targetxml>,
              and create child <targetxml>ref:anchor[@id="ref-penalty"]</targetxml>.</li>
            <li><sourcexml>heading/title</sourcexml> uses standard mapping to
                <targetxml>ref:relatedcontent/heading/title</targetxml>.</li>
            <li>The content of <sourcexml>heading/note/p/text</sourcexml> becomes children of
                <targetxml>ref:relatedcontent/ref:relatedcontentitem/ref:related-content-link</targetxml>
              using standard mapping rules. Note that any <sourcexml>lnlink</sourcexml> or
                <sourcexml>remotelink</sourcexml> elements are mapped to
                <targetxml>ref:lnlink</targetxml> using standard rules in the General Markup section
              of this document.</li>
          </ul>
        </p>


        <p>If <sourcexml>cttr:annotations/@id</sourcexml> contains
            <sourcexml>"@id="OP5NZ"</sourcexml>
          <ul>
            <li>Create <targetxml>cttr:violationpenalty[@xml:id="refsection-OP5NZ"]</targetxml>, and
              create child <targetxml>ref:anchor[@id="ref-penalty"]</targetxml>.</li>
            <li><sourcexml>heading/title</sourcexml> uses standard mapping to
                <targetxml>cttr:violationpenalty/heading/title</targetxml>.</li>
            <li>Each <sourcexml>heading/note</sourcexml> becomes a separate
                <targetxml>cttr:violationpenaltyitem</targetxml> element child of
                <targetxml>cttr:violationpenalty</targetxml>, with the following mappings performed
              for each <sourcexml>heading/note</sourcexml>: <ul>
                <li>Add child <targetxml>bodytext</targetxml>.</li>
                <li>If any <sourcexml>note</sourcexml> children of <sourcexml>note</sourcexml> exist
                  (i.e. "nested" <sourcexml>note</sourcexml> children exist as
                    <sourcexml>note/note</sourcexml>), then each nested <sourcexml>note</sourcexml>
                  becomes a separate <targetxml>pgrp</targetxml> within the
                    <targetxml>bodytext</targetxml> element created above.</li>
                <li>If no "nested" <sourcexml>note</sourcexml> children exist (i.e. no
                    <sourcexml>note/note</sourcexml> exists), then no <targetxml>pgrp</targetxml>
                  elements are created.</li>
                <li><sourcexml>h</sourcexml> becomes <targetxml>h</targetxml> using standard mapping
                  rules. *Note that if "nested" <sourcexml>note/note</sourcexml> existed above, then
                  these <targetxml>h</targetxml> elements will be children of
                    <targetxml>bodytext/pgrp</targetxml>, but if no "nested"
                    <sourcexml>note/note</sourcexml> existed above, they will instead be children of
                    <targetxml>bodytext</targetxml>.</li>
                <li><sourcexml>p</sourcexml> becomes <targetxml>p</targetxml> using standard mapping
                  rules. *Note that if "nested" <sourcexml>note/note</sourcexml> existed above, then
                  these <targetxml>p</targetxml> elements will be children of
                    <targetxml>bodytext/pgrp</targetxml>, but if no "nested"
                    <sourcexml>note/note</sourcexml> existed above, they will instead be children of
                    <targetxml>bodytext</targetxml>.</li>
              </ul>
            </li>
            <li>Note that any <sourcexml>lnlink</sourcexml> or <sourcexml>remotelink</sourcexml>
              elements are mapped to <targetxml>ref:lnlink</targetxml> using standard rules in the
              General Markup section of this document.</li>
          </ul>
        </p>
      </section>

      <example>
        <title>Example 1: Source cttr:annotations[@id="OP5"]</title>
        <note>The markup in this example does not appear to contain correct source
            <sourcexml>lnlink</sourcexml> markup, nor does the target markup appear to show correct
            <targetxml>ref:lnlink</targetxml> markup. Because no correct source markup is available,
          and because the rest of the examples outside the link markup appears correct, this example
          is being retained in the CI but the link markup inside it should not be used as a
          reference. Use standard mapping rules for mapping lnlink elements.</note>

        <codeblock>      
        &lt;cttr:annotations id="OP5"&gt;
        &lt;heading&gt;
          &lt;title&gt;Penalty&lt;/title&gt;
          &lt;note&gt;
            &lt;p&gt;
              &lt;text&gt;10 Penalty Units &amp;#x2014; 
                &lt;lnlink refpt="somethingsomewhere.pdf"&gt;
                  &lt;marker&gt;Learn more&lt;/marker&gt;
                  &lt;api-params&gt;
                    &lt;param name="type" value="pdf"/&gt;
                    &lt;/api-params&gt;
                    &lt;/lnlink&gt;
                 &lt;/text&gt;
            &lt;/p&gt;
          &lt;/note&gt;
        &lt;/heading&gt;
        &lt;cttr:annot&gt;
          &lt;comm:info&gt;
            &lt;title/&gt;
          &lt;/comm:info&gt;
        &lt;/cttr:annot&gt;
      &lt;/cttr:annotations&gt;</codeblock>

        <title>Example 1: Target ref:relatedcontent[@contenttype="penalty"]</title>
        <codeblock> 
            &lt;ref:relatedcontent xml:id="refsection-OP5" contenttype="penalty"&gt;  
                &lt;ref:anchor id="ref-penalty"/&gt;
                    &lt;heading&gt;
                        &lt;title&gt;Penalty&lt;/title&gt;
                    &lt;/heading&gt;
                    
            &lt;ref:relatedcontentitem&gt;
                &lt;ref:related-content-link&gt;10 Penalty Units &#x97; &lt;ref:lnlink&gt;
                                        &lt;ref:marker&gt;Learn more&lt;/ref:marker&gt;
                                        &lt;ref:locator anchoridref="somethingsomewhere.pdf"/&gt;
                                    &lt;/ref:lnlink&gt;
                &lt;/ref:related-content-link&gt;
            &lt;/ref:relatedcontentitem&gt;
            &lt;/ref:relatedcontent&gt;
         </codeblock>
      </example>
      <example>
        <title>Example 2: Source cttr:annotations[@id="OP5NZ"]</title>
        <codeblock>
&lt;cttr:annotations id="OP5NZ"&gt;
   &lt;heading&gt;
      &lt;title&gt;Offences and Penalties&lt;/title&gt;
      &lt;note notetype="other"&gt;
         &lt;note&gt;
            &lt;h&gt;Enactment&lt;/h&gt;
            &lt;p&gt;
               &lt;text&gt;CRIMES ACT 1961, &lt;lnlink service="DOC-ID" status="valid"&gt;
                     &lt;marker&gt;s 115(a)&lt;/marker&gt;
                     &lt;api-params&gt;
                        &lt;param name="dpsi" value="0069"/&gt;
                        &lt;param name="remotekey1" value="DOC-ID"/&gt;
                        &lt;param name="remotekey2" value="1961A43_D1_MISLEADING_JUSTICE"/&gt;
                     &lt;/api-params&gt;
                  &lt;/lnlink&gt;
               &lt;/text&gt;
            &lt;/p&gt;
         &lt;/note&gt;
         &lt;note&gt;
            &lt;h&gt;Description&lt;/h&gt;
            &lt;p&gt;
               &lt;text&gt;Conspire to bring false accusations for ofference punishable
         by death or more than 7 years inprisonment.&lt;/text&gt;
            &lt;/p&gt;
         &lt;/note&gt;
         &lt;note&gt;
            &lt;h&gt;Penalty&lt;/h&gt;
            &lt;p&gt;
               &lt;text&gt;Type: indictable conviction&lt;/text&gt;
            &lt;/p&gt;
            &lt;p&gt;
               &lt;text&gt;Max Fine: nil&lt;/text&gt;
            &lt;/p&gt;
            &lt;p&gt;
               &lt;text&gt;Max Custody: 14 years&lt;/text&gt;
            &lt;/p&gt;
         &lt;/note&gt;
      &lt;/note&gt;
      &lt;note notetype="other"&gt;
         &lt;note&gt;
            &lt;h&gt;Enactment&lt;/h&gt;
            &lt;p&gt;
               &lt;text&gt;CRIMES ACT 1961, &lt;lnlink service="DOC-ID" status="valid"&gt;
                     &lt;marker&gt;s 115(b)&lt;/marker&gt;
                     &lt;api-params&gt;
                        &lt;param name="dpsi" value="0069"/&gt;
                        &lt;param name="remotekey1" value="DOC-ID"/&gt;
                        &lt;param name="remotekey2" value="1961A43_D1_MISLEADING_JUSTICE"/&gt;
                     &lt;/api-params&gt;
                  &lt;/lnlink&gt;
               &lt;/text&gt;
            &lt;/p&gt;
         &lt;/note&gt;
         &lt;note&gt;
            &lt;h&gt;Description&lt;/h&gt;
            &lt;p&gt;
               &lt;text&gt;Conspire to bring false accusations for ofference punishable
         by less than 7 years inprisonment.&lt;/text&gt;
            &lt;/p&gt;
         &lt;/note&gt;
         &lt;note&gt;
            &lt;h&gt;Penalty&lt;/h&gt;
            &lt;p&gt;
               &lt;text&gt;Type: indictable conviction&lt;/text&gt;
            &lt;/p&gt;
            &lt;p&gt;
               &lt;text&gt;Max Fine: nil&lt;/text&gt;
            &lt;/p&gt;
            &lt;p&gt;
               &lt;text&gt;Max Custody: 3 years&lt;/text&gt;
            &lt;/p&gt;
         &lt;/note&gt;
      &lt;/note&gt;
   &lt;/heading&gt;
   &lt;cttr:annot&gt;
      &lt;!--Intentionally empty--&gt;
      &lt;comm:info&gt;
         &lt;title/&gt;
      &lt;/comm:info&gt;
   &lt;/cttr:annot&gt;
&lt;/cttr:annotations&gt;
</codeblock>

        <title>Example 2: Target cttr:annotations[@id="OP5NZ"]</title>
        <codeblock>
&lt;cttr:violationpenalty xml:id="refsection-OP5NZ"&gt;
   &lt;ref:anchor id="ref-penalty"/&gt;
   &lt;heading&gt;
      &lt;title&gt;Offences and Penalties&lt;/title&gt;
   &lt;/heading&gt;
   &lt;cttr:violationpenaltyitem&gt;
      &lt;bodytext&gt;
         &lt;pgrp&gt;
            &lt;h&gt;Enactment&lt;/h&gt;
            &lt;p&gt;
               &lt;text&gt;CRIMES ACT 1961, &lt;ref:lnlink service="DOCUMENT"&gt;
                     &lt;ref:marker role="content"&gt;s 115(a)&lt;/ref:marker&gt;
                     &lt;ref:locator&gt;
                        &lt;ref:locator-key&gt;
                           &lt;ref:key-name name="DOC-ID"/&gt;
                           &lt;ref:key-value value="0069-1961A43_D1_MISLEADING_JUSTICE"/&gt;
                        &lt;/ref:locator-key&gt;
                     &lt;/ref:locator&gt;
                  &lt;/ref:lnlink&gt;
               &lt;/text&gt;
            &lt;/p&gt;
         &lt;/pgrp&gt;
         &lt;pgrp&gt;
            &lt;h&gt;Description&lt;/h&gt;
            &lt;p&gt;
               &lt;text&gt;Conspire to bring false accusations for ofference punishable
         by death or more than 7 years inprisonment.&lt;/text&gt;
            &lt;/p&gt;
         &lt;/pgrp&gt;
         &lt;pgrp&gt;
            &lt;h&gt;Penalty&lt;/h&gt;
            &lt;p&gt;
               &lt;text&gt;Type: indictable conviction&lt;/text&gt;
            &lt;/p&gt;
            &lt;p&gt;
               &lt;text&gt;Max Fine: nil&lt;/text&gt;
            &lt;/p&gt;
            &lt;p&gt;
               &lt;text&gt;Max Custody: 14 years&lt;/text&gt;
            &lt;/p&gt;
         &lt;/pgrp&gt;
      &lt;/bodytext&gt;
   &lt;/cttr:violationpenaltyitem&gt;
   &lt;cttr:violationpenaltyitem&gt;
      &lt;bodytext&gt;
         &lt;pgrp&gt;
            &lt;h&gt;Enactment&lt;/h&gt;
            &lt;p&gt;
               &lt;text&gt;CRIMES ACT 1961, &lt;ref:lnlink service="DOCUMENT"&gt;
                     &lt;ref:marker role="content"&gt;s 115(b)&lt;/ref:marker&gt;
                     &lt;ref:locator&gt;
                        &lt;ref:locator-key&gt;
                           &lt;ref:key-name name="DOC-ID"/&gt;
                           &lt;ref:key-value value="0069-1961A43_D1_MISLEADING_JUSTICE"/&gt;
                        &lt;/ref:locator-key&gt;
                     &lt;/ref:locator&gt;
                  &lt;/ref:lnlink&gt;
               &lt;/text&gt;
            &lt;/p&gt;
         &lt;/pgrp&gt;
         &lt;pgrp&gt;
            &lt;h&gt;Description&lt;/h&gt;
            &lt;p&gt;
               &lt;text&gt;Conspire to bring false accusations for ofference punishable
         by less than 7 years inprisonment.&lt;/text&gt;
            &lt;/p&gt;
         &lt;/pgrp&gt;
         &lt;pgrp&gt;
            &lt;h&gt;Penalty&lt;/h&gt;
            &lt;p&gt;
               &lt;text&gt;Type: indictable conviction&lt;/text&gt;
            &lt;/p&gt;
            &lt;p&gt;
               &lt;text&gt;Max Fine: nil&lt;/text&gt;
            &lt;/p&gt;
            &lt;p&gt;
               &lt;text&gt;Max Custody: 3 years&lt;/text&gt;
            &lt;/p&gt;
         &lt;/pgrp&gt;
      &lt;/bodytext&gt;
   &lt;/cttr:violationpenaltyitem&gt;
&lt;/cttr:violationpenalty&gt;
</codeblock>
      </example>

      <section>
        <title> Changes: </title>
        <p>2016-07-14: <ph id="change_20160714_snb">Changes for NZ Legislation Citator: Separated
            mapping instructions to separate AU instructions from NZ instructions (based upon value
            of <sourcexml>cttr:annotations/@id</sourcexml>). Corrected/clarified the existing AU
            instructions that map to
              <targetxml>ref:relatedcontent[@contenttype="penalty"][@xml:id="refsection-OP5"]</targetxml>,
            but note that the conversion code was working correctly and probably does not need
            modified for this case. Completely restructured mapping instructions for NZ (where
              <sourcexml>cttr:annotations/[@id="OP5NZ"]</sourcexml>) to use new target markup within
              <targetxml>cttr:violationpenalty</targetxml>. Modified markup example #2 to reflect
            the new mappings.</ph></p>
        <p>2016-06-03: <ph id="change_20160603a_snb">Example content does not look correct and
            lnlink source is incorrect, so added Notes in examples to indicate this, but otherwise
            left them as-is.</ph></p>
        <p>2016-04-21: <ph id="change_20160421a_snb">Changed mapping to completely suppress output
            when only whitespace exists within descendant text nodes.</ph></p>
        <p>2015-12-11: <ph id="change_20151211d_snb">Added instruction to create
              <targetxml>ref:anchor</targetxml> (was already in example).</ph>
        </p>
      </section>
    </body>
  </dita:topic>

  <!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
  <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU20_Legislative_Citator\Leg_Citator_AUNZ_Overview_cttr.annotations-Penalty.dita  -->
 

  <!--<xsl:template match="source_cttr:annotations[@id='OP5']">
    <!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

    <!-\-  Original Target XPath:  ref:relatedcontent[@contenttype="penalty"][@xml:id="refsection-OP5"]   -\->
    <ref:relatedcontent>
      <xsl:attribute name="xml:id">
        <xsl:text>refsection-OP5</xsl:text>				
      </xsl:attribute>
      <xsl:attribute name="contenttype">
        <xsl:text>penalty</xsl:text>	
      </xsl:attribute>
      <xsl:element name="ref:anchor">
        <xsl:attribute name="id"><xsl:text>ref-penalty</xsl:text></xsl:attribute>
      </xsl:element>
     
      <xsl:apply-templates select="child::heading/note/p/text"/>
    </ref:relatedcontent>

  </xsl:template>-->

  <!-- Awantika: used mode to create heading/title from here not from the common module, and terminate the heading after title as heading was
capturing the whole data  -->
 <!-- <xsl:template match="source_cttr:annotations[@id='OP5']/heading/title" mode="penalty">
    <heading>
      <title>
        <xsl:apply-templates/>
      </title>
    </heading>
  </xsl:template>-->

  <xsl:template match="source_cttr:annotations[@id='OP5']/heading/note/p/text">
    <ref:relatedcontentitem>
      <ref:related-contentlink>
        <xsl:apply-templates select="@* | node()"/>
      </ref:related-contentlink>
    </ref:relatedcontentitem>
  </xsl:template>

 
  <xsl:template match="source_cttr:annotations[@id='OP5NZ']">
    <xsl:variable name="annotation-data" select="normalize-space(.)"/>
    <xsl:variable name="title-data" select="normalize-space(./heading/title)"/>
    <xsl:choose>
      <xsl:when test="$annotation-data = $title-data"/>
      <xsl:otherwise>
        <cttr:violationpenalty>
        <xsl:attribute name="xml:id">
          <xsl:text>refsection-OP5NZ</xsl:text>				
        </xsl:attribute>     
        <xsl:element name="ref:anchor">
          <xsl:attribute name="id"><xsl:text>ref-penalty</xsl:text></xsl:attribute>
        </xsl:element>
        <xsl:apply-templates select="@* | node()"/>
      </cttr:violationpenalty>
      </xsl:otherwise>
    </xsl:choose>
    
  </xsl:template>

  <!-- Awantika: used mode to create heading/title from here not from the common module, and terminate the heading after title as heading was
capturing the whole data  -->
  <xsl:template match="source_cttr:annotations[@id='OP5NZ']/heading/title">
    <cttr:violationpenaltyitem>
    <heading>
      <title>
        <xsl:apply-templates/>
      </title>
    </heading>
    </cttr:violationpenaltyitem>
  </xsl:template>

  <xsl:template match="source_cttr:annotations[@id='OP5NZ']/heading/note">
    <cttr:violationpenaltyitem>
      <bodytext>
        <xsl:choose>
          <xsl:when test="child::note">
            <pgrp>
              <xsl:apply-templates select="@* | node()"/>
            </pgrp>
          </xsl:when>
          <xsl:otherwise>
            <xsl:apply-templates select="@* | node()"/>
          </xsl:otherwise>
        </xsl:choose>        
      </bodytext>
    </cttr:violationpenaltyitem>
  </xsl:template>
  
  
  <!--<xsl:template match="heading/note/p/text">
    <!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

    <!-\-  Original Target XPath:  ref:relatedcontent/ref:relatedcontentitem/ref:related-content-link   -\->
    <ref:relatedcontent>
      <ref:relatedcontentitem>
        <ref:related-content-link>
          <xsl:apply-templates select="@* | node()"/>
        </ref:related-content-link>
      </ref:relatedcontentitem>
    </ref:relatedcontent>

  </xsl:template>

  

  <xsl:template match="heading/note">
    <!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

    <!-\-  Original Target XPath:  cttr:violationpenaltyitem   -\->
    <cttr:violationpenaltyitem>
      <xsl:apply-templates select="@* | node()"/>
    </cttr:violationpenaltyitem>

  </xsl:template>

  <xsl:template match="note">
    <!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

    <!-\-  Original Target XPath:  pgrp   -\->
    <pgrp>
      <xsl:apply-templates select="@* | node()"/>
    </pgrp>

  </xsl:template>

  <xsl:template match="note/note">
    <!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

    <!-\-  Original Target XPath:  pgrp   -\->
    <pgrp>
      <xsl:apply-templates select="@* | node()"/>
    </pgrp>

  </xsl:template>

  <xsl:template match="h">
    <!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

    <!-\-  Original Target XPath:  h   -\->
    <h>
      <xsl:apply-templates select="@* | node()"/>
    </h>

  </xsl:template>

  <xsl:template match="p">
    <!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

    <!-\-  Original Target XPath:  p   -\->
    <p>
      <xsl:apply-templates select="@* | node()"/>
    </p>

  </xsl:template>

  <xsl:template match="cttr:annotations/[@id=&#34;OP5NZ&#34;]">
    <!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

    <!-\-  Original Target XPath:  cttr:violationpenalty   -\->
    <cttr:violationpenalty>
      <xsl:apply-templates select="@* | node()"/>
    </cttr:violationpenalty>

  </xsl:template>-->

</xsl:stylesheet>
