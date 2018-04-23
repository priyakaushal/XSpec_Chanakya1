<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
  xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
  xmlns:case="http://www.lexis-nexis.com/glp/case" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="courtorder-note-commentary">
    <title>note noteype="commentary" <lnpid>id-UK04-27621</lnpid></title>
    <body>
        <p>The element <sourcexml>case:judgments/note</sourcexml> with attribute
                <sourcexml>@notetype</sourcexml> equal to "commentary" becomes
                <targetxml>courtorder:body/section/bodytext/note</targetxml>. The target attribute
                <targetxml>note/@notetype</targetxml> is set to "commentary". Then a child element
                <targetxml>bodytext</targetxml> is created within note, and the
                <sourcexml>note</sourcexml> element's children are converted as described in the
                <b>"General Markup"</b> section and placed within the created
                <targetxml>bodytext</targetxml> element, with one exception. </p>
        <p>The exception is the element <sourcexml>heading</sourcexml>. This element always occurs
            before any <sourcexml>p</sourcexml> or <sourcexml>pgrp</sourcexml> elements in the
                <sourcexml>note</sourcexml>. The <sourcexml>heading</sourcexml> should be moved to
            the parent <targetxml>section</targetxml> element so that it becomes
                <targetxml>section/heading</targetxml> and all child elements of
                <sourcexml>heading</sourcexml> (such as <sourcexml>title</sourcexml>) are converted
            as described in the "General Markup" section.</p>
        <note>As stated above, <sourcexml>heading</sourcexml> always occurs before any
                <sourcexml>p</sourcexml> or <sourcexml>pgrp</sourcexml> elements in the
                <sourcexml>note</sourcexml>. If there is ever a future use case where
                <sourcexml>heading</sourcexml> occurs after a <sourcexml>p</sourcexml> or
                <sourcexml>pgrp</sourcexml> element in a <sourcexml>note</sourcexml>, then the
            start-tag and end-tag of <sourcexml>heading</sourcexml> are dropped, and
                <sourcexml>title</sourcexml> becomes <targetxml>h</targetxml>. All child elements of
                <sourcexml>heading/title</sourcexml> are converted as described in the "General
            Markup" section.</note>
        <note>As described in the instructions for converting <sourcexml>footnotegrp</sourcexml>
            found in the <b>"General Markup"</b> section, the element
                <sourcexml>note[@notetype="commentary"]/footnotegrp</sourcexml> becomes
                <targetxml>section/bodytext/note/bodytext/p/text/footnotegroup</targetxml> by
            creating <targetxml>p</targetxml> and <targetxml>text</targetxml> elements to contain
            the <targetxml>footnotegroup</targetxml> since it is not allowed directly within
                <targetxml>bodytext</targetxml>. Also, these footnotes <b>do not</b> have a
            corresponding footnote reference (<sourcexml>fnr</sourcexml>) elsewhere and the
                <sourcexml>footnote/@fntoken</sourcexml> is always "0". The actual "reference" is
            usually a <sourcexml>sup</sourcexml> somewhere in the previous paragraphs. Since the
            child <targetxml>footnote/ref:anchor</targetxml> element is required, it should be added
            as per the General Markup instructions for footnotes.</note>
        <note>A separate <targetxml>courtorder:body/section</targetxml> is created for each separate
                <sourcexml>case:judgments/note</sourcexml> with the child
                <sourcexml>bodytext/note/bodytext</sourcexml> elements created within this
                <sourcexml>section</sourcexml>. See the subtopic <xref href="case.judgments-note-instruction.dita"/> for an example regarding this scenario.</note>

        <section>
            <title>Source XML </title>
            <codeblock>

&lt;case:content&gt;
  &lt;case:judgments&gt;
    &lt;note notetype="commentary"&gt;
      &lt;pgrp&gt;
        &lt;p&gt;
          &lt;text&gt;Notice is given of the following alterations in the Directions as to Procedure
            relating to appeals to the House of Lords:&lt;/text&gt;
        &lt;/p&gt;
      &lt;/pgrp&gt;
    &lt;/note&gt;

      </codeblock>
        </section>
        <section>
            <title>Target XML </title>
            <codeblock>

&lt;courtorder:body&gt;
  &lt;section&gt;
    &lt;bodytext&gt;
      &lt;note notetype="commentary"&gt;
        &lt;bodytext&gt;
          &lt;pgrp&gt;
            &lt;p&gt;
              &lt;text&gt;Notice is given of the following alterations in the Directions as to Procedure
                relating to appeals to the House of Lords:&lt;/text&gt;
            &lt;/p&gt;
          &lt;/pgrp&gt;
        &lt;/bodytext&gt;
      &lt;/note&gt;
    &lt;/bodytext&gt;
  &lt;/section&gt;

        </codeblock>
        </section>

        <section>
            <title>Source XML showing a footnote conversion</title>
            <p>Note that these footnotes do not have a corresponding footnote reference
                    (<sourcexml>fnr</sourcexml>) elsewhere.</p>
            <codeblock>

&lt;note notetype="commentary"&gt;
  &lt;!--...--&gt;
  &lt;footnotegrp&gt;
    &lt;footnote fntoken="0"&gt;
      &lt;fnbody&gt;
        &lt;p&gt;
          &lt;text&gt;&lt;sup&gt;a&lt;/sup&gt;     Includes time in which cases have been 'stood out', eg to
            await determination of a test case or a allow for dialogue between parties with
            a view to settlement.&lt;/text&gt;
        &lt;/p&gt;
      &lt;/fnbody&gt;
    &lt;/footnote&gt;
  &lt;/footnotegrp&gt;

      </codeblock>
        </section>
        <section>
            <title>Target XML </title>
            <codeblock>

&lt;note notetype="commentary"&gt;
  &lt;bodytext&gt;
    &lt;!--...--&gt;
    &lt;footnotegroup&gt;
      &lt;footnote&gt;
        &lt;ref:anchor id="_0"/&gt;
        &lt;bodytext&gt;
          &lt;p&gt;
            &lt;text&gt;&lt;sup&gt;a&lt;/sup&gt;     Includes time in which cases have been 'stood out', eg to
              await determination of a test case or a allow for dialogue between parties with
              a view to settlement.&lt;/text&gt;
          &lt;/p&gt;
        &lt;/bodytext&gt;
      &lt;/footnote&gt;
    &lt;/footnotegroup&gt;

        </codeblock>
        </section>
        <!--
        <section>
            <title>Changes</title>
            <p>2015-02-04: <ph id="change_20150204_JCG">Description of change...</ph></p>
        </section>
        -->
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK04_CourtOrder\case.judgments-note-commentary.dita  -->
	<!--<xsl:message>case.judgments-note-commentary.xsl requires manual development!</xsl:message>--> 

<!-- Handling for footrnote group -->
	<!--<xsl:template match="case:judgments/note[@notetype='commentary']">
	  <xsl:choose>
	    <xsl:when test="child::footnotegrp">
	      <section>
	        <xsl:apply-templates select="heading"/>
	        <bodytext>
	          <note notetype='commentary'>
	            <bodytext>
	              <p>
	                <text>
	              <xsl:apply-templates select="@* | node() except heading"/>
	                </text>
	              </p>
	            </bodytext>
	          </note>
	        </bodytext>
	      </section>
	    </xsl:when>
	    <xsl:otherwise>
	      <section>
	        <xsl:apply-templates select="heading"/>
	        <bodytext>
	          <note notetype='commentary'>
	            <bodytext>
	              <xsl:apply-templates select="@* | node() except heading"/>
	            </bodytext>
	          </note>
	        </bodytext>
	      </section>
	    </xsl:otherwise>
	  </xsl:choose>
	</xsl:template>
-->
  
  <xsl:template match="note">    
        <note>
          <xsl:apply-templates select="@* | heading|refpt"/>
          <xsl:if test="node() except (heading, refpt)">
            <bodytext>
              <xsl:apply-templates select="node() except (heading, refpt)"/>
            </bodytext>
          </xsl:if>
        </note>
  </xsl:template>
  
  <xsl:template match="note[note]" priority="25">
    <section>
      <bodytext>
        <note>
          <xsl:apply-templates select="@*"/>
          <bodytext>
            <xsl:apply-templates select="node()"/>
          </bodytext>
        </note>
      </bodytext>
    </section>
  </xsl:template>
  
	
</xsl:stylesheet>