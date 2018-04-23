<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:courtcase="http://www.lexisnexis.com/xmlschemas/content/legal/courtcase/1/" xmlns:lnci="http://www.lexisnexis.com/xmlschemas/content/shared/citations/1/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="CA01_Rosetta_case.parallelcite-LxAdv_ref.parallelcite">
  <title>case:parallelcite <lnpid>id-CA01-12227</lnpid></title>
  <body>
    <section>
      <p><sourcexml>case:parallelcite</sourcexml> becomes
          <targetxml>courtcase:head/caseinfo:caseinfo/ref:citations/ref:parallelcite/@citetype="parallel"</targetxml></p>
      <pre>
&lt;case:parallelcite&gt;
    &lt;ci:cite type="cite4thisdoc"&gt;
        &lt;ci:case&gt;
            &lt;ci:caseref ID="cref00003127" spanref="cspan00003127"&gt;
                &lt;ci:reporter value="NFPR"/&gt;
                &lt;ci:volume num="69"/&gt;
                &lt;ci:page num="341"/&gt;
            &lt;/ci:caseref&gt;
        &lt;/ci:case&gt;
        &lt;ci:content&gt;
            &lt;ci:span spanid="cspan00003127"&gt;69 Nfld. &amp;amp; P.E.I.R. 341&lt;/ci:span&gt;
        &lt;/ci:content&gt;
    &lt;/ci:cite&gt;
&lt;/case:parallelcite&gt;

<b>Becomes</b>

&lt;courtcase:head&gt;
    &lt;caseinfo:caseinfo&gt;
        &lt;ref:citations&gt;
            &lt;ref:parallelcite citetype="parallel"&gt;
                &lt;lnci:cite&gt;
                    &lt;lnci:case&gt;
                        &lt;lnci:caseref ID="cref00003127"&gt;
                            &lt;lnci:reporter value="NFPR"/&gt;
                            &lt;lnci:volume num="69"/&gt;
                            &lt;lnci:page num="341"/&gt;
                        &lt;/lnci:caseref&gt;
                    &lt;/lnci:case&gt;
                    &lt;lnci:content&gt;69 Nfld. &amp;amp; P.E.I.R. 341&lt;/lnci:content&gt;
                &lt;/lnci:cite&gt;
            &lt;/ref:parallelcite&gt;
        &lt;/ref:citations&gt;
    &lt;/caseinfo:caseinfo&gt;
&lt;/courtcase:head&gt;
</pre>
    </section>

    <section>
      <title>Changes Specific to CA01</title>
      <p>2013-09-30: <ph id="change_20130930_DSF">Corrected the target value of
          ref:cite4thisresource/@citetype in the directions. The value was already correct in the
          example.</ph></p>
      <p>2014-04-15: <ph id="change_20140415_PS">Update target mapping and target example for <sourcexml>case:parallelcite</sourcexml>.</ph></p>
        <p>2014-06-11: <ph id="change_20140611_SSX">Updated instruction and example to add attribute
                        <targetxml>ref:parallelcite/@citetype="parallel"</targetxml> in
                target.</ph></p>
    </section>
  </body>
	</dita:topic>
    
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA01-Cases\CA01_Rosetta_case.parallelcite-LxAdv_ref.parallelcite.dita  -->
	 
<!-- Vikas Rohilla : Template to match the case:parallelcite  -->
    <!-- Awantika:2017-11-14- Updated to add a wrapper <ref:citations> before <ref:aprallelcite> -->
    <!-- Awantika: 2017-12-18- Updated  not to add a wrapper <ref:citations> if sibling to parallelcite Webstar # 7071128 -->
    <!--<xsl:template match="case:parallelcite">
        <xsl:choose>
            <xsl:when test="count(child::*) gt 1">
                <xsl:for-each select="child::node()">
                    <xsl:choose>
                        <xsl:when test="preceding-sibling::case:reportercite">
                            <ref:citations>
                                <ref:parallelcite>
                                    <xsl:attribute name="citetype">
                                        <xsl:text>parallel</xsl:text>
                                    </xsl:attribute>
                                    <lnci:cite>
                                        <xsl:apply-templates select="@* | node()"/>
                                    </lnci:cite>
                                </ref:parallelcite>
                            </ref:citations>
                        </xsl:when>
                        <xsl:otherwise>                            
                                <ref:parallelcite>
                                    <xsl:attribute name="citetype">
                                        <xsl:text>parallel</xsl:text>
                                    </xsl:attribute>
                                    <lnci:cite>
                                        <xsl:apply-templates select="@* | node()"/>
                                    </lnci:cite>
                                </ref:parallelcite>                            
                        </xsl:otherwise>
                    </xsl:choose>
                    
                </xsl:for-each>
            </xsl:when>
            <xsl:otherwise>
                <!-\- Awantika: 2017-11-24:webstar# 7048152 removed ref:citations as it was getting nested if case:parallelcite and case:reportercite and case:courtcite are siblings -\->
                <!-\-<ref:citations>-\->
                <ref:parallelcite>
                    <xsl:attribute name="citetype">
                        <xsl:text>parallel</xsl:text>
                    </xsl:attribute>
                    <xsl:apply-templates select="@* | node()"/>
                </ref:parallelcite>
                <!-\-</ref:citations>-\->
            </xsl:otherwise>
        </xsl:choose>
	</xsl:template>-->

    <xsl:template match="case:parallelcite">
        <xsl:choose>
            <xsl:when test="count(child::*) gt 1">
                <xsl:for-each select="child::*">
                    
                        <ref:parallelcite>
                            <xsl:attribute name="citetype">
                                <xsl:text>parallel</xsl:text>
                            </xsl:attribute>
                            <lnci:cite>
                                <xsl:apply-templates select="@* | node()"/>
                            </lnci:cite>
                        </ref:parallelcite>
                    
                </xsl:for-each>
            </xsl:when>
            <xsl:otherwise>
                <!-- Awantika: 2017-11-24:webstar# 7048152 removed ref:citations as it was getting nested if case:parallelcite and case:reportercite and case:courtcite are siblings -->
              
                <ref:parallelcite>
                    <xsl:attribute name="citetype">
                        <xsl:text>parallel</xsl:text>
                    </xsl:attribute>
                    <xsl:apply-templates select="@* | node()"/>
                </ref:parallelcite>
                
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    
  
    

</xsl:stylesheet>