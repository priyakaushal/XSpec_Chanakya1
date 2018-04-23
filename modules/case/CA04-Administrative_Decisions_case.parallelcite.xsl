<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:proc="http://www.lexisnexis.com/xmlschemas/content/shared/process-elements/1/" xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" xmlns:lnci="http://www.lexisnexis.com/xmlschemas/content/shared/citations/1/" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:ci="http://www.lexis-nexis.com/ci" xmlns:admindecision="urn:x-lexisnexis:content:administrative-decision:sharedservices:1" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita case ci docinfo">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="case.parallelcite">
   <title>case:parallelcite <lnpid>id-CA04-13431</lnpid></title>
   <body>
      <section>
<ul>
         <li class="- topic/li ">
          <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:parallelcite</sourcexml> becomes
            <targetxml class="+ topic/keyword xml-d/targetxml ">admindecision:caseinfo/ref:citations/ref:parallelcite/@citetype="parallel"</targetxml>. <pre xml:space="preserve" class="- topic/pre ">
&lt;case:info&gt;
  &lt;case:parallelcite&gt; 
    &lt;ci:cite type="cite4thisdoc"&gt;
      &lt;ci:case&gt;
        &lt;ci:caseref ID="cref00000332" spanref="cspan00000332"&gt;
          &lt;ci:reporter value="MPLR3"/&gt;
          &lt;ci:volume num="6"/&gt;         
          &lt;ci:page num="147"/&gt;
        &lt;/ci:caseref&gt;
      &lt;/ci:case&gt;
      &lt;ci:content&gt;        
          &lt;ci:span spanid="cspan00000332"&gt;6 M.P.L.R. (3d) 147&lt;/ci:span&gt;       
      &lt;/ci:content&gt;
    &lt;/ci:cite&gt;
  &lt;/case:parallelcite&gt;
&lt;/case:info&gt;

<b class="+ topic/ph hi-d/b ">Becomes</b>

&lt;admindecision:caseinfo&gt;
  &lt;ref:citations&gt;
    &lt;ref:parallelcite citetype="parallel"&gt; 
      &lt;lnci:cite&gt;
        &lt;lnci:case&gt;
          &lt;lnci:caseref ID="cref00000332"&gt;
            &lt;lnci:reporter value="MPLR3"/&gt;
            &lt;lnci:volume num="6"/&gt;           
            &lt;lnci:page num="147"/&gt;
          &lt;/lnci:caseref&gt;
        &lt;/lnci:case&gt;
        &lt;lnci:content&gt;6 M.P.L.R. (3d) 147&lt;/lnci:content&gt;
      &lt;/lnci:cite&gt;
    &lt;/ref:parallelcite&gt;
  &lt;/ref:citations&gt;
&lt;/admindecision:caseinfo&gt;
</pre>
          <note>In case of multiple occurance of <sourcexml>ci:cite</sourcexml> under
              <targetxml>case:parallelcite</targetxml> conversion need to generate separate
              <targetxml>ref:parallelcite</targetxml> for every <sourcexml>ci:cite</sourcexml>
            element with attribute @type="parallel". Please refer the example below.</note>
          <pre>
 &lt;case:parallelcite&gt;
     &lt;ci:cite type="cite4thisdoc"&gt;
      &lt;ci:case&gt;
       &lt;ci:caseref ID="cref00001074" spanref="cspan00001074"&gt;
        &lt;ci:reporter value="JE"/&gt;
        &lt;ci:edition&gt;
         &lt;ci:date year="1993"/&gt;
        &lt;/ci:edition&gt;
        &lt;ci:page num="877"/&gt;
       &lt;/ci:caseref&gt;
      &lt;/ci:case&gt;
      &lt;ci:content&gt;&lt;ci:span spanid="cspan00001074"&gt;J.E. 93-877&lt;/ci:span&gt;, &lt;/ci:content&gt;
     &lt;/ci:cite&gt;
     &lt;ci:cite type="cite4thisdoc"&gt;
      &lt;ci:case&gt;
       &lt;ci:caseref ID="cref00001075" spanref="cspan00001075"&gt;
        &lt;ci:reporter value="DTE"/&gt;
        &lt;ci:edition&gt;
         &lt;ci:date year="1993"/&gt;
        &lt;/ci:edition&gt;
        &lt;ci:page num="598"/&gt;
       &lt;/ci:caseref&gt;
      &lt;/ci:case&gt;
      &lt;ci:content&gt;&lt;ci:span spanid="cspan00001075"&gt;D.T.E. 93T-598&lt;/ci:span&gt;, &lt;/ci:content&gt;
     &lt;/ci:cite&gt;
     &lt;ci:cite type="cite4thisdoc"&gt;
      &lt;ci:case&gt;
       &lt;ci:caseref ID="cref00001076" spanref="cspan00001076"&gt;
        &lt;ci:reporter value="RJQ"/&gt;
        &lt;ci:edition&gt;
         &lt;ci:date year="1993"/&gt;
        &lt;/ci:edition&gt;
        &lt;ci:page num="1297"/&gt;
       &lt;/ci:caseref&gt;
      &lt;/ci:case&gt;
      &lt;ci:content&gt;&lt;ci:span spanid="cspan00001076"&gt;[1993] R.J.Q. 1297&lt;/ci:span&gt;,&lt;/ci:content&gt;
     &lt;/ci:cite&gt;
   &lt;/case:parallelcite&gt;   
   
   <b class="+ topic/ph hi-d/b ">Becomes</b>

  &lt;ref:parallelcite citetype="parallel"&gt;
      &lt;lnci:cite&gt;
       &lt;lnci:case&gt;
        &lt;lnci:caseref ID="cref00001074"&gt;
         &lt;lnci:reporter value="JE"/&gt;
         &lt;lnci:edition&gt;
          &lt;lnci:date year="1993"/&gt;
         &lt;/lnci:edition&gt;
         &lt;lnci:page num="877"/&gt;
        &lt;/lnci:caseref&gt;
       &lt;/lnci:case&gt;
       &lt;lnci:content&gt;J.E. 93-877&lt;/lnci:content&gt;
      &lt;/lnci:cite&gt;
     &lt;/ref:parallelcite&gt;
     &lt;ref:parallelcite citetype="parallel"&gt;
      &lt;lnci:cite&gt;
       &lt;lnci:case&gt;
        &lt;lnci:caseref ID="cref00001075"&gt;
         &lt;lnci:reporter value="DTE"/&gt;
         &lt;lnci:edition&gt;
          &lt;lnci:date year="1993"/&gt;
         &lt;/lnci:edition&gt;
         &lt;lnci:page num="598"/&gt;
        &lt;/lnci:caseref&gt;
       &lt;/lnci:case&gt;  
       &lt;lnci:content&gt;D.T.E. 93T-598&lt;/lnci:content&gt;
      &lt;/lnci:cite&gt;
     &lt;/ref:parallelcite&gt;
     &lt;ref:parallelcite citetype="parallel"&gt;
      &lt;lnci:cite&gt;
       &lt;lnci:case&gt; 
        &lt;lnci:caseref ID="cref00001076"&gt;
         &lt;lnci:reporter value="RJQ"/&gt;
         &lt;lnci:edition&gt;
          &lt;lnci:date year="1993"/&gt;
         &lt;/lnci:edition&gt;
         &lt;lnci:page num="1297"/&gt;
        &lt;/lnci:caseref&gt;
       &lt;/lnci:case&gt;
       &lt;lnci:content&gt;[1993] R.J.Q. 1297&lt;/lnci:content&gt;
      &lt;/lnci:cite&gt;
     &lt;/ref:parallelcite&gt;            
            
           </pre>
        </li>
      </ul>
      </section>
     
     <section>
       <title>Changes Specific to CA04</title>
       <p>2014-06-23: <ph id="change_20140623_AS">Instructions for multiple occurance of <sourcexml>ci:cite</sourcexml> under
         <targetxml>case:parallelcite</targetxml>... Db issue #234</ph></p>
       <p>2014-06-11: <ph id="change_20140611_SSX">Updated instruction and example to add attribute
            <targetxml>ref:parallelcite/@citetype="parallel"</targetxml> in target.</ph></p>
       <p>2014-04-16: <ph id="change_20140416_VA">Update target mapping and target example for <sourcexml>case:parallelcite</sourcexml>.</ph></p>
     </section>
   </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA04-Administrative_Decisions\case.parallelcite.dita  -->
	<!--<xsl:message>CA04-Administrative_Decisions_case.parallelcite.xsl requires manual development!</xsl:message> -->

	<xsl:template match="case:parallelcite">  
	        <xsl:for-each select="child::ci:cite">
	          <ref:parallelcite>
	            <xsl:attribute name="citetype">
	              <xsl:text>parallel</xsl:text>
	            </xsl:attribute>
	            <lnci:cite>
	            <xsl:apply-templates select="@*|node()"/>
	            </lnci:cite>
	          </ref:parallelcite>
	        </xsl:for-each>
	 	</xsl:template>

  <xsl:template  match="case:reportercite[$streamID='CA04']" mode="docrelated-content">
    <xsl:variable name="reportercite">
      <xsl:value-of select="ci:cite/ci:content"/>
    </xsl:variable>
    <xsl:variable name="alternate-cite">
      <xsl:for-each select="$docRelatedContent-TableCA04/references/reference">
        <xsl:variable name="primary-cite" select="@primary-citation"/>
        <xsl:if test="contains($reportercite,$primary-cite)">
          <xsl:value-of select="@alternate-citation"/>
        </xsl:if>
      </xsl:for-each>    
    </xsl:variable>
    <xsl:if test="count(../case:parallelcite[descendant::ci:content[contains(.,$alternate-cite)]]) > 0">
      <doc:related-content>
        <doc:related-content-grp content-type="alternate-language-version">
          <doc:related-content-item>
            <doc:related-content-link>
              <ref:lnlink service="TRAVERSE">                                
                <ref:marker>
                  <xsl:choose>
                    <xsl:when test="/CASEDOC/docinfo/docinfo:doc-lang/@lang='fr'">
                      <xsl:text>English Version</xsl:text>
                    </xsl:when>
                    <xsl:when test="/CASEDOC/docinfo/docinfo:doc-lang/@lang='en'">
                      <xsl:text>French Version</xsl:text>
                    </xsl:when>
                  </xsl:choose>
                </ref:marker>
                <ref:locator>
                  <ref:locator-key>
                    <ref:key-name name="normcite"/>
                    <ref:key-value>
                      <xsl:choose>
                        <xsl:when test="../case:parallelcite[cicite/ci:content[contains(.,$alternate-cite)]]">
                          <xsl:attribute name="value">
                            <xsl:value-of select="../case:parallelcite[cicite/ci:content[contains(.,$alternate-cite)]][1]"/>
                          </xsl:attribute>   
                        </xsl:when>
                        <xsl:otherwise>
                          <xsl:attribute name="value">
                            <xsl:value-of select="//case:parallelcite[parent::case:info][1]/ci:cite/ci:content"/>
                          </xsl:attribute>
                        </xsl:otherwise>
                      </xsl:choose>
                      </ref:key-value>
                  </ref:locator-key>
                  <ref:locator-params>
                    <proc:param name="normprotocol" value="CAEditorial"/>
                    <proc:param name="countrycode">
                      <xsl:attribute name="value">
                        <xsl:value-of select="/CASEDOC/docinfo/docinfo:doc-country/@iso-cc"/>
                      </xsl:attribute>
                    </proc:param>
                    <proc:param>
                      <xsl:attribute name="name">targetdoclang</xsl:attribute>
                      <xsl:attribute name="value">
                        <xsl:choose>
                          <xsl:when test="/CASEDOC/docinfo/docinfo:doc-lang/@lang='fr'">
                            <xsl:value-of select="concat('en','-',/CASEDOC/docinfo/docinfo:doc-country/@iso-cc)"/>
                          </xsl:when>
                          <xsl:when test="/CASEDOC/docinfo/docinfo:doc-lang/@lang='en'">
                            <xsl:value-of select="concat('fr','-',/CASEDOC/docinfo/docinfo:doc-country/@iso-cc)"/>
                          </xsl:when>
                        </xsl:choose>
                        <!--<xsl:value-of select="concat(/CASEDOC/docinfo/docinfo:doc-lang/@lang,'-',/CASEDOC/docinfo/docinfo:doc-country/@iso-cc)"/>-->
                      </xsl:attribute>
                    </proc:param>
                  </ref:locator-params>
                </ref:locator>
              </ref:lnlink>
            </doc:related-content-link>
          </doc:related-content-item>
        </doc:related-content-grp>
      </doc:related-content>
    </xsl:if>                
  </xsl:template>
  

</xsl:stylesheet>