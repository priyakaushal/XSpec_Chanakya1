<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
  xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"
  xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo"
  xmlns:cttr="urn:x-lexisnexis:content:citator:sharedservices:1"
  xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/"
  xmlns:source_cttr="http://www.lexis-nexis.com/glp/cttr" 
  xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
  xmlns:legisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/legislation-info/1/"
  xmlns:primlawinfo="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-info/1/"
  xmlns:leg="http://www.lexis-nexis.com/glp/leg"
  xmlns:primlawhist="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-history/1/"
  xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/"
  xmlns:source_case="http://www.lexis-nexis.com/glp/case"
  xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" 
  version="2.0" exclude-result-prefixes="#all">

  <dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/"
    id="Leg_Citator_AUNZ_Overview_cttr.annotations-SubordinateLegislation">
    <title>cttr:body/cttr:content/cttr:annotations - Subordinate Legislation
        <lnpid>id-AU20-22251</lnpid></title>

    <body>
      <section>
        <p>If <sourcexml>cttr:annotations/@id</sourcexml> contains <sourcexml>"@id="OP3"</sourcexml>
          create <targetxml>primlaw:subordinatelaw[@xml:id="refsection-OP3"]</targetxml>, and create
          child <targetxml>ref:anchor[@id="ref-OP3"]</targetxml>.</p>
        <p>If <sourcexml>cttr:annotations/@id</sourcexml> contains <sourcexml>"@id="OI7"</sourcexml>
          create <targetxml>primlaw:subordinatelaw[@xml:id="refsection-OI7"]</targetxml>, and create
          child <targetxml>ref:anchor[@id="ref-OI7"]</targetxml>.</p>
        <note>EXCEPTION: if the source <sourcexml>cttr:annotations[@id="OP3" OR
            @id="OI7"]/heading/note</sourcexml> contains no descendant text nodes with
          non-whitespace text, do not create any output for this source content at all.</note>
        <p>
          <sourcexml>heading/title</sourcexml> uses standard mapping to
            <targetxml>heading/title</targetxml>.</p>
        <p>Each <sourcexml>heading/note/l/li</sourcexml> becomes a separate
            <targetxml>primlaw:subordinatelaw-item</targetxml> child of
            <targetxml>primlaw:subordinatelaw</targetxml>. <sourcexml>li/p/text</sourcexml> becomes
            <targetxml>primlaw:subordinatelaw-item/textitem</targetxml>.</p>
      </section>

      <example>
        <title>Source Subordinate Legislation</title>
        <codeblock>
         &lt;cttr:annotations id="OI7"&gt;
            &lt;heading&gt;
               &lt;title&gt;Subordinate Legislation&lt;/title&gt;
               &lt;!-- OI7 Subordinate Legislation --&gt;
               &lt;note&gt;
                  &lt;l&gt;
                     &lt;li&gt;
                        &lt;p&gt;
                           &lt;text&gt;TAIPEI ECONOMIC AND CULTURAL OFFICE (PRIVILEGES AND IMMUNITIES)
                              AMENDMENT REGULATIONS 2002 (NO. 1) 2002 NO. 197&lt;/text&gt;
                        &lt;/p&gt;
                     &lt;/li&gt; 
                          ...        
        </codeblock>

        <title>Target Subordinate Legislation</title>
        <codeblock>
         &lt;primlaw:subordinatelaw xml:id="refsection-OI7"&gt;
            &lt;ref:anchor id="ref-OI7"/&gt;
            &lt;heading&gt;
               &lt;title&gt;Subordinate Legislation&lt;/title&gt;
            &lt;/heading&gt;
               
               &lt;primlaw:subordinatelaw-item&gt;
                  &lt;textitem&gt;TAIPEI ECONOMIC AND CULTURAL OFFICE (PRIVILEGES AND IMMUNITIES) AMENDMENT REGULATIONS 2002 (NO. 1) 2002 NO. 197&lt;/textitem&gt;   
               &lt;/primlaw:subordinatelaw-item&gt;
        </codeblock>
      </example>
      <example>
        <title>Source cttr:annotations[@id="OP3"]</title>
        <codeblock>
      &lt;cttr:annotations id="OP3"&gt;
        &lt;heading&gt;
          &lt;title&gt;Subordinate Legislation&lt;/title&gt;
          &lt;note&gt;
            &lt;l&gt;
              &lt;li&gt;
                &lt;p&gt;
                  &lt;text&gt;
                      &lt;lnlink refpt="CTH_REG_2010-17" service="DOC-ID" status="valid"&gt;
                      	&lt;marker&gt;(CTH) EVIDENCE AMENDMENT REGULATIONS 2008 (NO. 1)&lt;/marker&gt;
                      	&lt;api-params&gt;
                      		&lt;param name="dpsi" value="005X"/&gt;
                      		&lt;param name="remotekey2" value="CTH_REG_2010-17_LEG_INFO"/&gt;
                      		&lt;param name="remotekey1" value="DOC-ID"/&gt;
                      		&lt;param name="href-stem" value="cthreg\html\2010-17\toc.htm"/&gt;
                      	&lt;/api-params&gt;
                      &lt;/lnlink&gt;
                  &lt;/text&gt;
                &lt;/p&gt;
              &lt;/li&gt;
  ...       
        </codeblock>

        <title>Target primlaw:subordinatelaw[@xml:id="refsection-OP3"]</title>
        <codeblock>
          &lt;primlaw:subordinatelaw xml:id="refsection-OP3"&gt;
            &lt;ref:anchor id="ref-OP3"/&gt;
            &lt;heading&gt;
               &lt;title&gt;Subordinate Legislation&lt;/title&gt;
            &lt;/heading&gt;
               
               &lt;primlaw:subordinatelaw-item&gt;
                 &lt;textitem&gt;
                  &lt;ref:lnlink&gt;
                     &lt;ref:marker&gt;(CTH) EVIDENCE AMENDMENT REGULATIONS 2008 (NO. 1)&lt;/ref:marker&gt;
                     &lt;ref:locator anchoridref="CTH_REG_2010-17"&gt; 
                       &lt;ref:locator-key&gt;
                          &lt;ref:key-name name="DOC-ID"/&gt;
                          &lt;ref:key-value value="005X-CTH_REG_2010-17_LEG_INFO"/&gt;
                       &lt;/ref:locator-key&gt;
                     &lt;/ref:locator&gt;
                  &lt;/ref:lnlink&gt;
                 &lt;/textitem&gt;
               &lt;/primlaw:subordinatelaw-item&gt;
                  ...
                  </codeblock>
      </example>


      <section>
        <title> Changes: </title>
        <p>2016-06-03: <ph id="change_20160603a_snb">Corrected target markup example to match new
            lnlink structures and instructions.</ph></p>
        <p>2016-04-21: <ph id="change_20160421a_snb">Changed mapping to completely suppress output
            when only whitespace exists within descendant text nodes.</ph></p>
        <p>2015-12-11: <ph id="change_20151211c_snb">Change target XPATHs of from
              <targetxml>primlaw:subordinatelaw/primlaw:subordinatelaw-item</targetxml> to be
              <targetxml>primlaw:subordinatelaw</targetxml>, and added clarification that each
              <sourcexml>heading/note/l/li</sourcexml> becomes a separate
              <targetxml>primlaw:subordinatelaw-item</targetxml>, and child content is mapped within
            each. Added instruction to create <targetxml>ref:anchor</targetxml> and added to the
            examples.</ph>
        </p>
      </section>
    </body>
  </dita:topic>

  <!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
  <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU20_Legislative_Citator\Leg_Citator_AUNZ_Overview_cttr.annotations-SubordinateLegislation.dita  -->
 

  <xsl:template match="source_cttr:annotations[@id='OP3']">
    <xsl:if test="normalize-space(.)!=''">
    <primlaw:subordinatelaw>
      <xsl:attribute name="xml:id">
        <xsl:text>refsection-OP3</xsl:text>
      </xsl:attribute>
      <xsl:element name="ref:anchor">
        <xsl:attribute name="id">ref-OP3</xsl:attribute>
      </xsl:element>  
      <xsl:apply-templates select="heading"/>
      <xsl:apply-templates select="heading/note/l/li/p/text except heading"/>
    </primlaw:subordinatelaw>
    </xsl:if>
  </xsl:template>
  
  <xsl:template match="source_cttr:annotations[@id='OI7']">
    <xsl:if test="normalize-space(.)!=''">
      <primlaw:subordinatelaw>
        <xsl:attribute name="xml:id">
          <xsl:text>refsection-OI7</xsl:text>
        </xsl:attribute>
        <xsl:element name="ref:anchor">
          <xsl:attribute name="id">ref-OI7</xsl:attribute>
        </xsl:element>  
        <xsl:apply-templates select="heading"/>
        <xsl:apply-templates select="heading/note/l/li/p/text except heading"/>
      </primlaw:subordinatelaw>
    </xsl:if>
  </xsl:template>

  <xsl:template match="source_cttr:annotations[@id='OP3' or @id='OI7']/heading/note/l/li/p/text">
    <primlaw:subordinatelaw-item>
      <textitem>
        <xsl:apply-templates/>
      </textitem>
    </primlaw:subordinatelaw-item>
  </xsl:template>

 

 

</xsl:stylesheet>
