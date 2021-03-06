<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/"
  xmlns:primlawinfo="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-info/1/" 
  xmlns:legisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/legislation-info/1/"
  xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
  xmlns:leg="http://www.lexis-nexis.com/glp/leg" version="2.0" exclude-result-prefixes="dita leg">

  <dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.histnote">
    <title>leg:histnote <lnpid>id-CA05-13617</lnpid></title>
    <body>
      <section>
        <p><sourcexml>leg:histnote</sourcexml> becomes <targetxml>note</targetxml> with attribute
            <targetxml>@notetype="historical"</targetxml> and create child element
            <targetxml>bodytext</targetxml></p>
      </section>
      <example>
        <title>Mapping of <sourcexml>leg:histnote</sourcexml></title>
        <codeblock> &lt;leg:histnote&gt; &lt;p&gt; &lt;text&gt;S.C. 2005, c. 25, s. 11 as amended by
          S.C. 2007, c. 22, s. 21.&lt;/text&gt; &lt;/p&gt; &lt;/leg:histnote&gt; </codeblock>
        <b>becomes</b>
        <codeblock> &lt;note notetype="historical"&gt; &lt;bodytext&gt; &lt;p&gt; &lt;text&gt;S.C.
          2005, c. 25, s. 11 as amended by S.C. 2007, c. 22, s. 21.&lt;/text&gt; &lt;/p&gt;
          &lt;/bodytext&gt; &lt;/note&gt; </codeblock>
      </example>
      <p>When source documents is having <sourcexml>leg:histnote/h/@l</sourcexml> then
          <sourcexml>leg:histnote</sourcexml> becomes
          <targetxml>note/@notetype="histirical"</targetxml> and <sourcexml>h</sourcexml> becomes
          <targetxml>h</targetxml> then drop attribute <sourcexml>@l</sourcexml> from the target
        conversion. See below snippet.</p>
      <pre>
&lt;leg:histnote&gt;
    &lt;h l="3" align="left"&gt;Acts Affected:&lt;/h&gt;
&lt;/leg:histnote&gt;

<b>Becomes</b>

&lt;note notetype="historical"&gt;
    &lt;bodytext&gt;
        &lt;h align="left"&gt;Acts Affected:&lt;/h&gt;
        ...
    &lt;/bodytext&gt;
&lt;/note&gt;
</pre>
      <section>
        <title>Changes</title>
        <p>2014-09-12: <ph id="change_20140912_PS">Added instruction and example to drop attribute
              <sourcexml>@l</sourcexml> from target conversion, Applicable on CA05.</ph></p>
      </section>
    </body>
  </dita:topic>

  <!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
  <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA05-ActsNew\leg.histnote.dita  -->
  <!--<xsl:message>leg.histnote.xsl requires manual development!</xsl:message> -->

  <xsl:template match="leg:histnote" priority="2" mode="historical">

    <!--  Original Target XPath:  note   -->
    <note notetype="historical" xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
      <bodytext>
        <xsl:choose>
          <xsl:when test="child::h[@l]">
              <xsl:apply-templates select="@align | node()"/>
          </xsl:when>
          <xsl:otherwise>

   <xsl:apply-templates select="@* | node()"/>
          </xsl:otherwise>
        </xsl:choose>
      </bodytext>
    </note>

  </xsl:template>
  
  <xsl:template match="leg:history/leg:histnote[descendant::text[starts-with(.,'REPEALED by') or starts-with(.,'ABROGÉ par') or starts-with(.,'ABROGÉE par')]]" mode="repealed">
    <primlaw:level leveltype="unclassified">
      <primlaw:levelinfo>
        <primlawinfo:primlawinfo>
          <legisinfo:legisinfo>
            <legisinfo:statusgroup>
              <legisinfo:status statuscode="repealedshell">
                <legisinfo:statustext>
                  <xsl:value-of select="."/>
                </legisinfo:statustext>
              </legisinfo:status>
            </legisinfo:statusgroup>
          </legisinfo:legisinfo>
        </primlawinfo:primlawinfo>
      </primlaw:levelinfo>
    </primlaw:level>
  </xsl:template>

</xsl:stylesheet>
