<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:caseinfo="http://www.lexisnexis.com/xmlschemas/content/legal/case-information/1/" xmlns:courtcase="http://www.lexisnexis.com/xmlschemas/content/legal/courtcase/1/" xmlns:person="http://www.lexisnexis.com/xmlschemas/content/shared/person/1/" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="AU01_Rosetta_case.judges">
    <title>case:judges <lnpid>id-HK03-37219</lnpid></title>
    <body>
        <section>
            <ul>
                <li class="- topic/li "> There are two contexts for
                        <sourcexml>/case:judges/case:judge</sourcexml> in Standard Rosetta along
                    with NL Xpath: <ol class="- topic/ol ">
                        <li class="- topic/li ">
                            /CASEDOC/case:body/case:headnote/case:info/case:courtinfo/case:judges/case:judge,
                                <b class="+ topic/ph hi-d/b ">NL Xpath:</b>
                            /courtcase:courtcase/courtcase:head/caseinfo:caseinfo/courtcase:panel/courtcase:judges/person:judge </li>
                        <li class="- topic/li ">
                            /CASEDOC/case:body/case:content/case:judgments/case:judgment/case:courtinfo/case:judges/case:judge,
                                <b class="+ topic/ph hi-d/b ">NL Xpath:</b>
                            /courtcase:courtcase/courtcase:body/courtcase:opinions/courtcase:opinion/courtcase:opinionby/person:judge
                        </li>
                    </ol>
                    <note>Conversion should not create consecutive
                            <targetxml>caseinfo:caseinfo</targetxml> elements. When 2 or more
                        consecutive sibling source elements map to
                            <targetxml>caseinfo:caseinfo</targetxml>, data should be merged to a
                        single <targetxml>caseinfo:caseinfo</targetxml> element unless this would
                        hamper content ordering.</note>
                    <note>Any <sourcexml>nl</sourcexml> elements inside
                            <sourcexml>case:judges</sourcexml> should be suppressed.</note>
                    <sourcexml>case:judge</sourcexml> becomes <targetxml>person:judge</targetxml>
                    <pre xml:space="preserve" class="- topic/pre ">

&lt;case:judges&gt;
    &lt;case:judge&gt;Hon Reyes J in Chambers (open to public)&lt;/case:judge&gt; J
&lt;/case:judges&gt;
<b class="+ topic/ph hi-d/b ">Becomes</b>

&lt;courtcase:opinionby&gt;
    &lt;person:judge&gt;Hon Reyes J in Chambers (open to public)&lt;/person:judge&gt; J
&lt;/courtcase:opinionby&gt;

</pre>
                    <note class="- topic/note "> Capture PCData for judges markup as is in New Lexis
                        and always create <targetxml>person:judge</targetxml> as an immediate child
                        of <targetxml>courtcase:judges</targetxml> or
                            <targetxml>courtcase:opinionby</targetxml>. For example: if there is a
                        Rosetta <sourcexml>case:judges</sourcexml> element and it just contains text
                        then conversion need to create <targetxml>person:judge</targetxml> as a
                        child of <targetxml>courtcase:judges</targetxml> or
                            <targetxml>courtcase:opinionby</targetxml>.</note>
                    <pre xml:space="preserve" class="- topic/pre ">

&lt;case:judges&gt;
    Reyes J 
&lt;/case:judges&gt;
<b class="+ topic/ph hi-d/b ">Becomes</b>

&lt;courtcase:opinionby&gt;
    &lt;person:judge&gt;Reyes J &lt;/person:judge&gt;
&lt;/courtcase:opinionby&gt;
</pre>
                    <note>When <sourcexml>emph</sourcexml> is inside
                            <sourcexml>case:judges</sourcexml> and
                            <sourcexml>@typestyle="smcaps"</sourcexml> then conversion need to omit
                        tag (<sourcexml>emph</sourcexml>) and retain content.</note>
                    <pre xml:space="preserve" class="- topic/pre ">

&lt;case:judgment&gt;
  &lt;case:courtinfo&gt;
      &lt;case:judges&gt;
          JUDGE M 
          &lt;emph typestyle="smcaps"&gt;c&lt;/emph&gt; 
          ELREA. 
      &lt;/case:judges&gt;
  &lt;/case:courtinfo&gt;
  ...
&lt;/case:judgment&gt;

<b class="+ topic/ph hi-d/b ">Becomes</b>

&lt;courtcase:opinion&gt;
  &lt;courtcase:opinionby&gt;
    JUDGE M 
    c
    ELREA. 
  &lt;/courtcase:opinion&gt;
&lt;/courtcase:opinion&gt;

</pre>
                   
                </li>
            </ul>
        </section>
        <section>
            <title>Changes</title>
            <p>2016-03-04: <ph id="change_20150324_mlv_1">Created.</ph></p>
           
        </section>
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-HK\HK03\HK03_Rosetta_case.judges.dita  -->
	 

    <xsl:template match="case:judges[ancestor::case:headnote]">

		<!--  Original Target XPath:  caseinfo:caseinfo   -->
        <courtcase:panel>
            <courtcase:judges>
                <person:judge>
                <xsl:apply-templates select="@* | node()"/>
                </person:judge>
            </courtcase:judges>
            <!-- Awantika:2017-10-27- page is the child of case:courtinfo which becomes caseinfo:caseinfo/refpage which
            is not valid therfore placing it inside courtcase:panel-->
			<xsl:if test="preceding-sibling::page">
			    <xsl:apply-templates select="preceding-sibling::page"/>
			</xsl:if>
		</courtcase:panel>

	</xsl:template>
    <xsl:template match="case:judges[ancestor::case:content]">
        
        <!--  Original Target XPath:  caseinfo:caseinfo   -->
       <!-- Awantika: 2017-10-26- checking for blank case:judge -->
       <xsl:choose>
           <xsl:when test="normalize-space(.)='' and child::case:judge =''"/>
           <xsl:otherwise>
               <courtcase:opinionby>
                   <person:judge>
                       <xsl:apply-templates select="@* | node()"/>
                   </person:judge>
               </courtcase:opinionby>
           </xsl:otherwise>
       </xsl:choose>        
       
    </xsl:template>

    <xsl:template match="case:judges/nl"/>

	

	<!--<xsl:template match="case:judge">

		<!-\-  Original Target XPath:  person:judge   -\->
		<person:judge>
			<xsl:apply-templates select="@* | node()"/>
		</person:judge>

	</xsl:template>-->

    <xsl:template match="case:judges/emph[@typestyle='smcaps']">
        <xsl:apply-templates select="node()"/>		
	</xsl:template>
    
    <xsl:template match="case:judge[.!='']">
        <xsl:apply-templates/>
    </xsl:template>	

</xsl:stylesheet>