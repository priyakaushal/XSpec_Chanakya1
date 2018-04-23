<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="courtorder-note-chof-case.content">
  <title>note <lnpid>id-UK04-27636</lnpid></title>
  <body>
    <p>The element <sourcexml>case:content/note</sourcexml> is treated as if it occured as a child
      of <sourcexml>case:content/case:judgments</sourcexml>.<ul>
        <li>The element <sourcexml>case:content/note</sourcexml> with attribute
            <sourcexml>@notetype</sourcexml> equal to "commentary" becomes
            <targetxml>courtorder:body/section/bodytext/note</targetxml>; please see the subtopic
            <xref href="case.judgments-note-commentary.dita"/> for details about this
          conversion.</li>
        <li>The element <sourcexml>case:content/note</sourcexml> with attribute
            <sourcexml>@notetype</sourcexml> equal to "instruction" becomes
            <targetxml>courtorder:body/section/bodytext</targetxml>; please see the subtopic <xref href="case.judgments-note-instruction.dita"/> for details about this conversion.</li>
      </ul>
    </p>
    <note>A <sourcexml>case:content/note</sourcexml> element often occurs in a document that also
      contains <sourcexml>case:judgments/note</sourcexml> elements. A separate
        <targetxml>courtorder:body/section</targetxml> is created for each separate
        <sourcexml>note</sourcexml>, and the child <targetxml>bodytext/note/bodytext</targetxml>
      elements are created within this <targetxml>section</targetxml>. Also, if there are
        <sourcexml>case:content/case:author</sourcexml> elements after the
        <sourcexml>case:content/case:judgments</sourcexml> end-tag but before a
        <sourcexml>case:content/note</sourcexml>, then any <targetxml>sigblock</targetxml> elements
      output as the transformation of <sourcexml>case:author</sourcexml> elements will occur between
      the two separate <targetxml>section</targetxml> elements. Please see the example below.</note>

    <example>
      <title>Source XML </title>
      <codeblock>

&lt;case:content&gt;
  &lt;case:judgments&gt;
    &lt;note notetype="instruction"&gt;
      &lt;p&gt;
          &lt;text&gt;
              &lt;person searchtype="judge"&gt;
                  &lt;name.text&gt;DONALDSON MR&lt;/name.text&gt;
              &lt;/person&gt;
          &lt;/text&gt;
      &lt;/p&gt;
      &lt;p&gt;
          &lt;text&gt;made the following statement at the sitting of the court: Before we
              begin the day's work, for my part I should like to take this opportunity
              of welcoming Mr Registrar Adams, who has joined the Civil Division of
              the Court of Appeal as its first registrar. I should also like to
              explain, albeit briefly, how and why that office has been
              created.&lt;/text&gt;
      &lt;/p&gt;
      ...
    &lt;/note&gt;
  &lt;/case:judgments&gt;
  &lt;case:author&gt;
    &lt;person&gt;
      &lt;name.text&gt;Diana Procter Barrister.&lt;/name.text&gt;
    &lt;/person&gt;
  &lt;/case:author&gt;
  &lt;note notetype="commentary"&gt;
    &lt;p&gt;
      &lt;text&gt;&lt;emph typestyle="it"&gt;THE NEW PRACTICE AND PROCEDURE OF THE COURT OF APPEAL&lt;/emph&gt;&lt;/text&gt;
    &lt;/p&gt;
    &lt;p&gt;
      &lt;text&gt;&lt;emph typestyle="it"&gt;An informal commentary on the more important changes&lt;/emph&gt;&lt;/text&gt;
    &lt;/p&gt;
    ...
  &lt;/note&gt;
&lt;/case:content&gt;

      </codeblock>
      <title>Target XML </title>
      <codeblock>

  &lt;courtorder:body&gt;
    &lt;section&gt;
      &lt;bodytext&gt;
        &lt;p&gt;
          &lt;text&gt;
            &lt;person:person&gt;
              &lt;person:name.text&gt;DONALDSON MR&lt;/person:name.text&gt;
            &lt;/person:person&gt;
          &lt;/text&gt;
        &lt;/p&gt;
        &lt;p&gt;
            &lt;text&gt;made the following statement at the sitting of the court: Before we
                begin the day's work, for my part I should like to take this opportunity
                of welcoming Mr Registrar Adams, who has joined the Civil Division of
                the Court of Appeal as its first registrar. I should also like to
                explain, albeit briefly, how and why that office has been
                created.&lt;/text&gt;
        &lt;/p&gt;
        ...
      &lt;/bodytext&gt;
    &lt;/section&gt;
    &lt;sigblock&gt;
        &lt;note&gt;
          &lt;byline&gt;
            &lt;person:contributor contributor-type="author"&gt;
              &lt;person:person&gt;
                &lt;person:name.text&gt;Diana Procter Barrister.&lt;/person:name.text&gt;
              &lt;/person:person&gt;
            &lt;/person:contributor&gt;
          &lt;/byline&gt;
        &lt;/note&gt;
    &lt;/sigblock&gt;
    &lt;section&gt;
      &lt;bodytext&gt;
        &lt;note notetype="commentary"&gt;
          &lt;bodytext&gt;
            &lt;p&gt;
              &lt;text&gt;&lt;emph typestyle="it"&gt;THE NEW PRACTICE AND PROCEDURE OF THE COURT OF APPEAL&lt;/emph&gt;&lt;/text&gt;
            &lt;/p&gt;
            &lt;p&gt;
              &lt;text&gt;&lt;emph typestyle="it"&gt;An informal commentary on the more important changes&lt;/emph&gt;&lt;/text&gt;
            &lt;/p&gt;
          &lt;/bodytext&gt;
        &lt;/note&gt;
      &lt;/bodytext&gt;
    &lt;/section&gt;

        </codeblock>
    </example>
    <section>
      <title>Changes</title>
      <p>2015-02-04: <ph id="change_20150204_JCG">Added this topic. (R4.5 Content Issue List item
          #2150)</ph></p>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK04_CourtOrder\note-chof-case.content.dita  -->
	<!--<xsl:message>note-chof-case.content.xsl requires manual development!</xsl:message> -->

	
  <xsl:template match="case:content/case:judgments/note">
    <xsl:choose>
      <xsl:when test="note">
        <xsl:apply-templates select="node()"/>
      </xsl:when>
      <xsl:when test="@notetype='instruction'">
        <section>
          <bodytext>
            <xsl:apply-templates select="node() except heading"/>
          </bodytext>
        </section>
      </xsl:when>
      <xsl:when test="@notetype='commentary'">
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
      </xsl:when>
    </xsl:choose>
    
</xsl:template>

  <xsl:template match="case:content/case:judgments/note/note">
    <xsl:choose>
      <xsl:when test="@notetype='instruction'">
        <section>
          <bodytext>
            <xsl:apply-templates select="node() except heading"/>
          </bodytext>
        </section>
      </xsl:when>
      <xsl:when test="@notetype='commentary'">
            <note>
              <xsl:apply-templates select="@*"/>
              <bodytext>
                <xsl:apply-templates select="node()"/>
              </bodytext>
            </note>
      </xsl:when>
    </xsl:choose>
  </xsl:template>

  <xsl:template match="note/@notetype">
    <xsl:attribute name="notetype">
      <xsl:value-of select="."/>
    </xsl:attribute>
  </xsl:template>
  
  <xsl:template match="case:pubinfo"/>
  
</xsl:stylesheet>