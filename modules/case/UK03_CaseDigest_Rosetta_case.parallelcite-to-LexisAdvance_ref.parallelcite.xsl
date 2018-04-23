<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:ci="http://www.lexis-nexis.com/ci" xmlns:lnci="http://www.lexisnexis.com/xmlschemas/content/shared/citations/1/" xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita case ci">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_case.parallelcite-to-LexisAdvance_ref.parallelcite">
  <title>case:parallelcite-to-ref:parallelcite <lnpid>id-UK03-27433</lnpid></title>
  <body>
    <p>
      <ul>
        <li>
          <sourcexml>case:parallelcite</sourcexml> becomes 
          <targetxml>ref:citations/ref:parallelcite@citetype="parallel"</targetxml>.
          The source attribute <sourcexml>case:parallelcite/@display-name</sourcexml> is dropped. 
          <note>For handling of <sourcexml>ci:cite</sourcexml> and its children, please refer to <sourcexml>ci:cite</sourcexml> instructions under General Markup Section.</note>
          
          <note>Please note that in the below sample, <sourcexml>case:parallelcite</sourcexml> does not have citation markups (<sourcexml>ci:cite</sourcexml>, <sourcexml>ci:content</sourcexml>) and it is mapped using
          <targetxml>lnci:cite/lnci:content</targetxml>.</note>
<pre>
&lt;DIGESTDOC&gt;
  &lt;dig:body&gt;
    &lt;dig:info&gt;
      &lt;case:info&gt;
        &lt;case:parallelcite display-name="Alternative Citations"&gt;The Trustees of the Nell Gwynn House Maintenance Fund v Customs and Excise Commissioners [1999] 1 WLR 174; The Heart of Variety Ltd v Customs and Excise Commissioners (VTD 168); Calabar Developments Ltd v Customs and Excise Commissioners (VTD 218); Durham
              Aged Mineworkers&amp;#x2019; Homes Association v Customs and Excise Commissioners (VTD 6752); The Central Council of Physical Recreation (VTD 17803).
        &lt;/case:parallelcite&gt;
      &lt;/case:info&gt;
    &lt;/dig:info&gt;
  &lt;/dig:body&gt;
&lt;/DIGESTDOC&gt;

<b>Becomes</b>

&lt;casedigest:casedigest&gt;
  &lt;casedigest:head&gt;
      &lt;ref:citations&gt;
        &lt;ref:parallelcite citetype="parallel"&gt;
          &lt;lnci:cite&gt;
            &lt;lnci:content&gt;The Trustees of the Nell Gwynn House Maintenance Fund v Customs and Excise Commissioners [1999] 1 WLR 174; The Heart of Variety Ltd v Customs and Excise Commissioners (VTD 168); Calabar Developments Ltd v Customs and Excise Commissioners (VTD 218); Durham
              Aged Mineworkers&amp;#x2019; Homes Association v Customs and Excise Commissioners (VTD 6752); The Central Council of Physical Recreation (VTD 17803).
            &lt;/lnci:content&gt;
          &lt;/lnci:cite&gt;          
        &lt;/ref:parallelcite&gt;
      &lt;/ref:citations&gt;
  &lt;/casedigest:head&gt;  
&lt;/casedigest:casedigest&gt;
</pre>
          <note>Please note that we need to create <targetxml>ref:parallelcite/lnci:cite</targetxml> for every 
            <sourcexml>ci:cite</sourcexml> within <sourcexml>case:parallelcite</sourcexml>. 
            Please refer to the below example for more details.
          </note>
          
<pre>
&lt;DIGESTDOC&gt;
  &lt;dig:body&gt;
    &lt;dig:info&gt;
      &lt;case:info&gt;
        &lt;case:parallelcite display-name="Alternative Citations"&gt;
          &lt;ci:cite searchtype="CASE-REF"&gt;
            &lt;ci:case&gt;
              &lt;ci:caseref&gt;
                &lt;ci:reporter value="ALLER" /&gt; 
                &lt;ci:volume num="1" /&gt; 
                &lt;ci:edition&gt;
                  &lt;ci:date year="1995" /&gt; 
                &lt;/ci:edition&gt;
                &lt;ci:page num="929" /&gt; 
              &lt;/ci:caseref&gt;
            &lt;/ci:case&gt;
            &lt;ci:content&gt;[1995] 1 All ER 929&lt;/ci:content&gt;
          &lt;/ci:cite&gt; 
          &lt;ci:cite searchtype="CASE-REF"&gt;
            &lt;ci:case&gt;
              &lt;ci:caseref&gt;
                &lt;ci:reporter value="ALLER" /&gt; 
                &lt;ci:volume num="1" /&gt; 
                &lt;ci:edition&gt;
                  &lt;ci:date year="1995" /&gt; 
                &lt;/ci:edition&gt;
                &lt;ci:page num="936" /&gt; 
              &lt;/ci:caseref&gt;
            &lt;/ci:case&gt;
            &lt;ci:content&gt;[1995] 1 All ER 936&lt;/ci:content&gt; 
          &lt;/ci:cite&gt;
        &lt;/case:parallelcite&gt;
      &lt;/case:info&gt;
    &lt;/dig:info&gt;
  &lt;/dig:body&gt;
&lt;/DIGESTDOC&gt;

<b>Becomes</b>

&lt;casedigest:casedigest&gt;
  &lt;casedigest:head&gt;
      &lt;ref:citations&gt;
        &lt;ref:parallelcite citetype="parallel"&gt;
          &lt;lnci:cite&gt;
          &lt;lnci:case&gt;
            &lt;lnci:caseref&gt;
              &lt;lnci:reporter value="ALLER" /&gt; 
              &lt;lnci:volume num="1" /&gt; 
              &lt;lnci:edition&gt;
                &lt;lnci:date year="1995" /&gt; 
              &lt;/lnci:edition&gt;
              &lt;lnci:page num="929" /&gt; 
            &lt;/lnci:caseref&gt;
          &lt;/lnci:case&gt;
          &lt;lnci:content&gt;[1995] 1 All ER 929&lt;/lnci:content&gt;
          &lt;/lnci:cite&gt;          
        &lt;/ref:parallelcite&gt;
        &lt;ref:parallelcite citetype="parallel"&gt;
          &lt;lnci:cite&gt;
            &lt;lnci:case&gt;
              &lt;lnci:caseref&gt;
                &lt;lnci:reporter value="ALLER" /&gt; 
                &lt;lnci:volume num="1" /&gt; 
                &lt;lnci:edition&gt;
                  &lt;lnci:date year="1995" /&gt; 
                &lt;/lnci:edition&gt;
                &lt;lnci:page num="936" /&gt; 
              &lt;/lnci:caseref&gt;
            &lt;/lnci:case&gt;
            &lt;lnci:content&gt;[1995] 1 All ER 936&lt;/lnci:content&gt;
          &lt;/lnci:cite&gt;          
        &lt;/ref:parallelcite&gt;
      &lt;/ref:citations&gt;        
    &lt;/casedigest:head&gt;  
&lt;/casedigest:casedigest&gt;
</pre>    
          
        </li>
        <li>
          <note>Text (PCDATA) occuring in between <sourcexml>case:parallelcite</sourcexml> and <sourcexml>ci:cite</sourcexml> should be moved inside a connector element and put in 
            between multiple <targetxml>ref:parallelcite</targetxml> elements if needed. Please see the below example for details.
          </note>
          <pre>

&lt;DIGESTDOC&gt;
    &lt;dig:body&gt;
        &lt;dig:info&gt;
            &lt;case:info&gt;
                &lt;case:parallelcite&gt;Reported: 
                    &lt;ci:cite&gt;
                        &lt;ci:case&gt;
                            &lt;ci:caseref&gt;
                                &lt;ci:reporter value="ALLER"/&gt;
                                &lt;ci:volume num="3"/&gt;
                                &lt;ci:edition&gt;
                                    &lt;ci:date year="1982"/&gt;
                                &lt;/ci:edition&gt;
                                &lt;ci:page num="36"/&gt;
                            &lt;/ci:caseref&gt;
                        &lt;/ci:case&gt;
                        &lt;ci:content&gt;[1982] 3 All ER 36&lt;/ci:content&gt;
                    &lt;/ci:cite&gt; ;
                    &lt;ci:cite&gt;
                        &lt;ci:case&gt;
                            &lt;ci:caseref&gt;
                                &lt;ci:reporter value="WLR"/&gt;
                                &lt;ci:volume num="3"/&gt;
                                &lt;ci:edition&gt;
                                    &lt;ci:date year="1982"/&gt;
                                &lt;/ci:edition&gt;
                                &lt;ci:page num="462"/&gt;
                            &lt;/ci:caseref&gt;
                        &lt;/ci:case&gt;
                        &lt;ci:content&gt;[1982] 3 WLR 462&lt;/ci:content&gt;
                    &lt;/ci:cite&gt; ;
                    &lt;ci:cite&gt;
                        &lt;ci:case&gt;
                            &lt;ci:caseref&gt;
                                &lt;ci:reporter value="QB"/&gt;
                                &lt;ci:edition&gt;
                                    &lt;ci:date year="1983"/&gt;
                                &lt;/ci:edition&gt;
                                &lt;ci:page num="34"/&gt;
                            &lt;/ci:caseref&gt;
                        &lt;/ci:case&gt;
                        &lt;ci:content&gt;[1983] QB 34&lt;/ci:content&gt;
                    &lt;/ci:cite&gt;.&lt;/case:parallelcite&gt;
            &lt;/case:info&gt;
        &lt;/dig:info&gt;
    &lt;/dig:body&gt;
&lt;/DIGESTDOC&gt;

<b>Becomes</b>

&lt;casedigest:casedigest&gt;
    &lt;casedigest:head&gt;
            &lt;ref:citations&gt;&lt;connector&gt;Reported:&lt;/connector&gt;
                &lt;ref:parallelcite citetype="parallel"&gt;
                    &lt;lnci:cite&gt;
                        &lt;lnci:case&gt;
                            &lt;lnci:caseref&gt;
                                &lt;lnci:reporter value="ALLER" /&gt; 
                                &lt;lnci:volume num="3" /&gt; 
                                &lt;lnci:edition&gt;
                                    &lt;lnci:date year="1982" /&gt; 
                                &lt;/lnci:edition&gt;
                                &lt;lnci:page num="36" /&gt; 
                            &lt;/lnci:caseref&gt;
                        &lt;/lnci:case&gt;
                        &lt;lnci:content&gt;[1982] 3 All ER 36&lt;/lnci:content&gt;
                    &lt;/lnci:cite&gt;          
                &lt;/ref:parallelcite&gt; &lt;connector&gt;;&lt;/connector&gt;
                &lt;ref:parallelcite citetype="parallel"&gt;
                    &lt;lnci:cite&gt;
                        &lt;lnci:case&gt;
                            &lt;lnci:caseref&gt;
                                &lt;lnci:reporter value="WLR" /&gt; 
                                &lt;lnci:volume num="3" /&gt; 
                                &lt;lnci:edition&gt;
                                    &lt;lnci:date year="1982" /&gt; 
                                &lt;/lnci:edition&gt;
                                &lt;lnci:page num="462" /&gt; 
                            &lt;/lnci:caseref&gt;
                        &lt;/lnci:case&gt;
                        &lt;lnci:content&gt;[1982] 3 WLR 462&lt;/lnci:content&gt;
                    &lt;/lnci:cite&gt;
                &lt;/ref:parallelcite&gt; &lt;connector&gt;;&lt;/connector&gt;
                &lt;ref:parallelcite citetype="parallel"&gt;
                    &lt;lnci:cite&gt;
                        &lt;lnci:case&gt;
                            &lt;lnci:caseref&gt;
                                &lt;lnci:reporter value="QB" /&gt; 
                                &lt;lnci:edition&gt;
                                    &lt;lnci:date year="1983" /&gt; 
                                &lt;/lnci:edition&gt;
                                &lt;lnci:page num="34" /&gt; 
                            &lt;/lnci:caseref&gt;
                        &lt;/lnci:case&gt;
                        &lt;lnci:content&gt;[1983] QB 34&lt;/lnci:content&gt;
                    &lt;/lnci:cite&gt;
                &lt;/ref:parallelcite&gt;
                &lt;connector&gt;.&lt;/connector&gt;
            &lt;/ref:citations&gt;        
    &lt;/casedigest:head&gt;  
&lt;/casedigest:casedigest&gt;

</pre> 
        </li>
      </ul>
    </p>
    <section>
      <title>Changes</title>
      <p>2016-01-19<ph id="change_20160119_SS">Added the attribute
            "<targetxml>@citetype='parallel'</targetxml>" inside the target element
            "<targetxml>ref:parallelcite</targetxml>" and udated the examples for handling input
          scenario: <sourcexml>case:parallelcite/ci:cite</sourcexml>. RFA List #2724.</ph></p>
      <p>2015-12-07<ph id="change20151207_SS">Added the Input and target example for handling the running text (PCDATA) occuring in between <sourcexml>case:parallelcite</sourcexml> and <sourcexml>ci:cite</sourcexml>. RFA List #2610.</ph></p>
      <p>2014-05-20<ph id="change20140520_AS">Changed Mapping of case:parallelcite to ref:citations/ref:parallelcite</ph></p>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK03_CaseDigest\Rosetta_case.parallelcite-to-LexisAdvance_ref.parallelcite.dita  --> 
  
  <!-- Vikas Rohilla : Template to match the case:parallelcite  -->
  <xsl:template match="case:parallelcite">
        <ref:citations>
        <ref:parallelcite>
          <xsl:attribute name="citetype">
            <xsl:text>parallel</xsl:text>
          </xsl:attribute>
          <!-- BRT 10/10/17 added choice for instance where there is no ci:cite markup -->
          <xsl:choose>
            <xsl:when test="not(ci:cite)">
              <xsl:element name="lnci:cite">
                <xsl:element name="lnci:content">
                  <xsl:apply-templates/>
                </xsl:element>
              </xsl:element>
            </xsl:when>
            <xsl:otherwise>
              <xsl:apply-templates select="ci:cite"/>
            </xsl:otherwise>
          </xsl:choose>
        </ref:parallelcite>
          <xsl:if test="child::text()">
            <connector>
              <xsl:apply-templates select="child::text()"/>
            </connector>
          </xsl:if>
        </ref:citations>
  </xsl:template>

</xsl:stylesheet>