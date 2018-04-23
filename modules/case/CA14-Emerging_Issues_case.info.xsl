<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
  xmlns:case="http://www.lexis-nexis.com/glp/case"
  xmlns:caseinfo="http://www.lexisnexis.com/xmlschemas/content/legal/case-information/1/"
  xmlns:seclaw="http://www.lexisnexis.com/xmlschemas/content/legal/secondary-law/1/"
  xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/"
  xmlns:dig="http://www.lexis-nexis.com/glp/dig" version="2.0"
  exclude-result-prefixes="dig ref seclaw caseinfo case dita">

  <dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="case.info">
    <title>case:info <lnpid>id-CA14-35616</lnpid></title>
    <body>
      <section>
        <ul>
          <li>
            <sourcexml>case:info</sourcexml> becomes
              <targetxml>seclaw:body/seclaw:digestgrp/seclaw:digest/seclaw:digestinfo/caseinfo:caseinfo</targetxml>.
              <p>The mappings for the children of <sourcexml>case:info</sourcexml> are discussed as
              separate topics.</p>
            <note>
              <p>Conversion should not create consecutive <targetxml>caseinfo:caseinfo</targetxml>
                elements. When 2 or more consecutive sibling source elements map to
                  <targetxml>caseinfo:caseinfo</targetxml>, data should be merged to a single
                  <targetxml>caseinfo:caseinfo</targetxml> element unless this would hamper content
                ordering.</p>
            </note>
            <pre>
&lt;case:info&gt;
    ......
    ......
&lt;/case:info&gt;
</pre>
            <b>Becomes</b>
            <pre>
&lt;seclaw:body&gt;
    &lt;seclaw:digestgrp&gt;
        &lt;seclaw:digest&gt;
            &lt;seclaw:digestinfo&gt;
                &lt;caseinfo:caseinfo&gt;
                    .................
                    .................
                &lt;/caseinfo:caseinfo&gt;
            &lt;/seclaw:digestinfo&gt;
        &lt;/seclaw:digest&gt;
    &lt;/seclaw:digestgrp&gt;
&lt;/seclaw:body&gt;
</pre>
          </li>
        </ul>
      </section>

      <section>
        <title>Changes</title>
        <p>2015-02-20: <ph id="change_20150220_PS">Created.</ph></p>
      </section>
    </body>
  </dita:topic>

  <!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
  <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA14-Emerging_Issues\case.info.dita  -->
  <!--<xsl:message>CA14-Emerging_Issues_case.info.xsl requires manual development!</xsl:message> -->

  <!--Vikas Rohilla : Template to match the case:info and the parent dig:info and the child abbrvname or case:casename-->
  <xsl:template match="case:info[parent::dig:info][child::abbrvname or child::case:casename]">
        <caseinfo:caseinfo>
          <xsl:apply-templates select="abbrvname,case:casename"/>
        
              <xsl:if test="case:reportercite">
                  <xsl:apply-templates select="case:reportercite"/>
              </xsl:if>
          <xsl:apply-templates select="node()[name()!='abbrvname'][name()!='case:casename'][name()!='case:reportercite']"/>
          <xsl:apply-templates select="./parent::dig:info/following-sibling::abstract/child::catchwordgrp"/>
        </caseinfo:caseinfo>
  </xsl:template>
  
  <!-- Vikas Rohilla : Template to match the case:info  -->
  <xsl:template match="case:info">
    <seclaw:digestinfo>
      <caseinfo:caseinfo>
        <xsl:apply-templates select="abbrvname,case:casename"/>
        <xsl:if test="case:reportercite">                
          <xsl:apply-templates select="case:reportercite"/>                
        </xsl:if>
        <xsl:apply-templates select="node()[name()!='abbrvname'][name()!='case:casename'][name()!='case:reportercite']"/>
        <xsl:apply-templates select="./parent::dig:info/following-sibling::abstract/child::catchwordgrp"/>
      </caseinfo:caseinfo>
    </seclaw:digestinfo>
  </xsl:template>
  
</xsl:stylesheet>
