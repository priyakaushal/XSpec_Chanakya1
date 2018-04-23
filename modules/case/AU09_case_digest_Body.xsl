<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:ci="http://www.lexis-nexis.com/ci" xmlns:casedigest="http://www.lexisnexis.com/xmlschemas/content/legal/case-digest/1/" xmlns:lnci="http://www.lexisnexis.com/xmlschemas/content/shared/citations/1/" xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/" xmlns:proc="http://www.lexisnexis.com/xmlschemas/content/shared/process-elements/1/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita case ci">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Body">
  <title>Body <lnpid>id-AU09-19607</lnpid></title>

  <body>
    <p>
      <sourcexml>case:body</sourcexml> becomes <targetxml>casedigest:body</targetxml>
    </p>
    
    <note>If Rosetta element <sourcexml>case:body</sourcexml> has only element <sourcexml>heading</sourcexml> within it, then during NL conversion coressponding schema element <targetxml>casedigest:body</targetxml> will contain <targetxml>heading</targetxml> with sibling <targetxml>proc:nocontent</targetxml> in it.</note>
    <p>For more details please see below source and target example:</p>
    
    <pre>

&lt;case:body&gt;
    &lt;heading searchtype="PRACTICE-NOTE"&gt;
        &lt;edpnum ln.user-displayed="false"&gt;[CW 225]&lt;/edpnum&gt;
    &lt;/heading&gt;
&lt;/case:body&gt;
      
    
    
    <b>Becomes</b>
   

&lt;casedigest:body&gt;
    &lt;heading&gt;
        &lt;desig value="[CW 225]"/&gt;
    &lt;/heading&gt;
    &lt;proc:nocontent/&gt;
&lt;/casedigest:body&gt;
      
    </pre>
    <note>If there is no corresponding element found in Rosetta xml to be mapped within <targetxml>casedigest:body</targetxml> as it is being as an empty, then conversion will create <targetxml>proc:nocontent</targetxml> as an empty element within <targetxml>casedigest:body</targetxml>.</note>
    <p>For more details please see below target example:</p>
    <pre>

&lt;casedigest:body&gt;
    &lt;proc:nocontent/&gt;
&lt;/casedigest:body&gt;
      
    </pre>
    
    
      <note><p><sourcexml>ci:content/remotelink/inlineobject</sourcexml> becomes <targetxml>lnci:content/ref:crossreference</targetxml>.The
          attributes and children of <targetxml>ref:crossreference</targetxml> are populated as follows: <ul>
              <li>The value of <targetxml>ref:crossreference/@crossreferencetype</targetxml> is set to "citatorAlert".</li>
              <li>The value of <targetxml>ref:crossreference/@referencedresourcetype</targetxml> is set to "citator".</li>
              <li>If the value of <sourcexml>inlineobject/@alttext</sourcexml> is "Citation information only - Click for CaseBase entry", then <ul>
                  <li>The value of <targetxml>ref:crossreference/@referencedresourcesentiment</targetxml> should be set to "none".</li>
                  <li><targetxml>ref:crossreference/ref:content</targetxml> should be populated with "Citation information only".</li>
              </ul></li>
              <li>If the value of <sourcexml>inlineobject/@alttext</sourcexml> is "Citation information available - Click for CaseBase entry", then <ul>
                  <li>The value of <targetxml>ref:crossreference/@referencedresourcesentiment</targetxml> should be set to "none".</li>
                  <li><targetxml>ref:crossreference/ref:content</targetxml> should be populated with "Citation information available".</li>
              </ul></li>
              
              <li>If the value of <sourcexml>inlineobject/@alttext</sourcexml> is "Positive treatment indicated - Click for CaseBase entry",
                  then <ul>
                      <li>The value of <targetxml>ref:crossreference/@referencedresourcesentiment</targetxml> should be set to "positive".</li>
                      <li><targetxml>ref:crossreference/ref:content</targetxml> should be populated with "Positive treatment indicated".</li>
                  </ul></li>
              <li>If the value of <sourcexml>inlineobject/@alttext</sourcexml> is "Neutral treatment indicated - Click for CaseBase entry", then <ul>
                  <li>The value of <targetxml>ref:crossreference/@referencedresourcesentiment</targetxml> should be set to "neutral".</li>
                  <li><targetxml>ref:crossreference/ref:content</targetxml> should be populated with "Neutral treatment indicated".</li>
              </ul></li>
              <li>If the value of <sourcexml>inlineobject/@alttext</sourcexml> is "Negative treatment indicated - Click for CaseBase entry",
                  then <ul>
                      <li>The value of <targetxml>ref:crossreference/@referencedresourcesentiment</targetxml> should be set to "negative".</li>
                      <li><targetxml>ref:crossreference/ref:content</targetxml> should be populated with "Negative treatment indicated".</li>
                  </ul></li>
              <li>If the value of <sourcexml>inlineobject/@alttext</sourcexml> is "Cautionary treatment indicated - Click for CaseBase entry",
                  then <ul>
                      <li>The value of <targetxml>ref:crossreference/@referencedresourcesentiment</targetxml> should be set to
                          "cautionary".</li>
                      <li><targetxml>ref:crossreference/ref:content</targetxml> should be populated with "Cautionary treatment indicated".</li>
                  </ul></li>
              <li>If the value of <sourcexml>inlineobject/@alttext</sourcexml> is "Click for CaseBase entry", then <ul>
                  <li><targetxml>ref:crossreference/ref:content</targetxml> should be populated with "Click for CaseBase entry".</li>
              </ul></li>
          </ul></p>          
      </note>
      <note>Refer to the general markup instructions for <b>remotelink</b> for detailed information on the mapping of
          <sourcexml>remotelink</sourcexml>.</note>
      <pre>

&lt;ci:content&gt;&lt;citefragment searchtype="CASE-NAME-REF"&gt;&lt;emph typestyle="it"&gt;High Court in Burge v
            Swarbrick&lt;/emph&gt;&lt;/citefragment&gt;&lt;citefragment searchtype="CASE-CITE-REF"&gt; [2007] HCA
        17&lt;/citefragment&gt;Â &lt;remotelink dpsi="0018" service="DOC-ID" remotekey1="REFPTID"
        refpt="435859" docidref="435859"&gt;&lt;inlineobject alttext="Click for CaseBase entry"
            type="image" attachment="web-server" filename="cbcc.png"/&gt;&lt;/remotelink&gt;&lt;/ci:content&gt;

      
    
       <b>Becomes</b>
   

&lt;lnci:content&gt;&lt;emph typestyle="it"&gt;High Court in Burge v Swarbrick&lt;/emph&gt; [2007] HCA
        17 &lt;ref:crossreference crossreferencetype="citatorAlert" referencedresourcetype="citator"&gt;
        &lt;ref:content&gt;Click for CaseBase entry&lt;/ref:content&gt;
        &lt;ref:locator anchoridref="_435859"&gt;
            &lt;ref:locator-key&gt;
                &lt;ref:key-name name="DOC-ID"/&gt;
                &lt;ref:key-value value="0018-435859"/&gt;
            &lt;/ref:locator-key&gt;
        &lt;/ref:locator&gt;
    &lt;/ref:crossreference&gt;&lt;/lnci:content&gt;
      
    </pre>
      
    <section>
      <title>Changes</title>
        <p>2015-11-19: <ph id="change_20151119_AS">Mapping For the new XPath <sourcexml>ci:content/remotelink/inlineobject</sourcexml></ph></p>
      <p>2013-04-29: <ph id="change_20130429_PKY">Added note to handle, if only <sourcexml>heading</sourcexml> element is found within <sourcexml>case:body</sourcexml> in Rosetta input documents.</ph></p>
    </section>
    
  </body>

	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU09_case_digest\Body.dita  -->
	<!--<xsl:message>AU09_case_digest_Body.xsl requires manual development!</xsl:message>--> 

    <xsl:template match="case:body">
        <!--  Original Target XPath:  casedigest:body   -->
        
        <casedigest:body>
            <xsl:apply-templates select="heading"/>
            <xsl:apply-templates select="case:headnote/* except case:headnote/(case:info | case:length | catchwordgrp)"/>    
            <xsl:apply-templates select="case:content"/>
            <!-- changed from "not(child::* except (case:headnote|heading) )" to "not(child::* except (heading) )" for W* 7141460 [Uday] -->
            <xsl:if test="not(child::* except (heading) )">
                <proc:nocontent/>
            </xsl:if>
            <!--<xsl:choose>
                <xsl:when test="case:headnote/child::*">
                    <xsl:apply-templates select="case:headnote/* except case:headnote/(case:info | case:length | catchwordgrp)"/>    
                    <xsl:apply-templates select="case:content"/>
                </xsl:when>
               
                <xsl:otherwise>
                    <proc:nocontent></proc:nocontent>
                </xsl:otherwise>
            </xsl:choose>-->
        </casedigest:body>
    </xsl:template>
</xsl:stylesheet>