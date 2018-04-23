<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
  xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"
  xmlns:case="http://www.lexis-nexis.com/glp/case" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_case.appendix-to-LexisAdvance_attachments-appendix">
  <title>case:appendix-to-attachments/appendix <lnpid>id-UK03-27411</lnpid></title>
  <body>
    <section>
      <p>
        <sourcexml>case:appendix</sourcexml> becomes <targetxml>attachments/appendix</targetxml>. 
        The children can be converted as follows:
        <ul>
          <li>
            <sourcexml>case:appendix/p</sourcexml> becomes <targetxml>attachments/appendix/bodytext/p</targetxml>. 
          </li>
        </ul>
<pre>
&lt;DIGESTDOC&gt;
  &lt;dig:body&gt;
    &lt;level&gt;
      &lt;bodytext&gt;
        &lt;case:embeddedcase&gt;
          &lt;case:content&gt;
            &lt;case:appendix&gt;
              &lt;p&gt;
                &lt;text&gt;Copyright © Times Newspapers Ltd and Reed Elsevier (UK) Ltd
                      2006
                &lt;/text&gt;
              &lt;/p&gt;
            &lt;/case:appendix&gt;
          &lt;/case:content&gt;
        &lt;/case:embeddedcase&gt;
      &lt;/bodytext&gt;
    &lt;/level&gt;
  &lt;/dig:body&gt;
&lt;/DIGESTDOC&gt;

<b>Becomes</b>
&lt;casedigest:casedigest&gt;
  &lt;casedigest:body&gt;
    &lt;section&gt;
      &lt;bodytext&gt;
        &lt;courtcase:caseexcerpt&gt;
          &lt;courtcase:body&gt;
           &lt;attachments&gt;
            &lt;appendix&gt;
              &lt;bodytext&gt;
                &lt;p&gt;
                  &lt;text&gt;Copyright © Times Newspapers Ltd and Reed Elsevier (UK) Ltd
                      2006
                  &lt;/text&gt;
                &lt;/p&gt;
              &lt;/bodytext&gt;
            &lt;/appendix&gt;
           &lt;/attachments&gt;
          &lt;/courtcase:body&gt;
        &lt;/courtcase:caseexcerpt&gt;
      &lt;/bodytext&gt;
    &lt;/section&gt;
  &lt;/casedigest:body&gt;  
&lt;/casedigest:casedigest&gt;
</pre>    
      </p>
      <p><sourcexml>case:appendix/page</sourcexml> becomes <targetxml>attachments/appendix/ref:page</targetxml>.</p>
    </section>    
    <section>
      <title>Created</title>
      <p>2012-10-08</p>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK03_CaseDigest\Rosetta_case.appendix-to-LexisAdvance_attachments-appendix.dita  -->
 
  <!-- Vikas Rohilla : Template to match the case:appendix  -->
  <xsl:template match="case:appendix">
    <attachments>
      <appendix>
        <xsl:apply-templates select="@*"/>
        <xsl:apply-templates select="heading"/>
        <xsl:choose>
          <xsl:when test="child::bodytext">
            <xsl:apply-templates select="node()"/>
          </xsl:when>
          <xsl:otherwise>
            <bodytext>
              <xsl:apply-templates select="node() except(heading)"/>
            </bodytext>
          </xsl:otherwise>
        </xsl:choose>
      </appendix>
    </attachments>    
  </xsl:template>
  
  <!-- MDS 2017-06-22 - MUltiple bodytext siblings not allowed by schema.  Tried to accomplish wrapping with chose statement above. -->
<!--  <xsl:template match="case:appendix/p">
    <bodytext>
      <p>
        <xsl:apply-templates select="@* | node()"/>
      </p>
    </bodytext>
  </xsl:template>-->


</xsl:stylesheet>