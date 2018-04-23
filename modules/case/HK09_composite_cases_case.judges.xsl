<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
    xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
    xmlns:case="http://www.lexis-nexis.com/glp/case" 
    xmlns:courtcase="http://www.lexisnexis.com/xmlschemas/content/legal/courtcase/1/"
    xmlns:person="http://www.lexisnexis.com/xmlschemas/content/shared/person/1/" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="case.judges">
	    <title>case:judges <lnpid>id-HK09-39423</lnpid></title>
    <body>
        <section>
            <ul>
                <li> There are two contexts for /case:judges/case:judge in Standard Rosetta along with NL Xpath: <ol>
                        <li> /CASEDOC/case:body/case:headnote/case:info/case:courtinfo/case:judges/case:judge, <b>NL Xpath:</b>
                            /compcase:compositecourtcase/compcase:head/compcase:caseinstanceinfo/courtcase:panel/courtcase:judges/person:judge </li>
                        <li> /CASEDOC/case:body/case:content/case:judgments/case:judgment/case:courtinfo/case:judges/case:judge, <b>NL Xpath:</b>
                            /compcase:compositecourtcase/compcase:body/compcase:caseinstance/compcase:caseinstancebody/courtcase:opinions/courtcase:opinion/
                            courtcase:opinionby/person:judge
                        </li>
                    </ol>
                    <sourcexml>case:judge</sourcexml> becomes <targetxml>person:judge</targetxml>
                    <pre xml:space="preserve">

&lt;case:judges&gt;
    &lt;case:judge&gt;Perram&lt;/case:judge&gt; J
&lt;/case:judges&gt;
<b>Becomes</b>

&lt;courtcase:opinionby&gt;
    &lt;person:judge&gt;Perram&lt;/person:judge&gt; J
&lt;/courtcase:opinionby&gt;

OR

&lt;courtcase:panel&gt;
    &lt;courtcase:judges&gt;
        &lt;person:judge&gt;Perram&lt;/person:judge&gt; J
    &lt;/courtcase:judges&gt;
&lt;courtcase:panel&gt;
</pre>
                    <note> Capture PCData for judges markup as is in New Lexis and always create <targetxml>person:judge</targetxml> as an immediate
                        child of <targetxml>courtcase:judges</targetxml> or <targetxml>courtcase:opinionby</targetxml>. For example: if there is a
                        Rosetta <sourcexml>case:judges</sourcexml> element and it just contains text then conversion need to create
                            <targetxml>person:judge</targetxml> as a child of <targetxml>courtcase:judges</targetxml> or
                            <targetxml>courtcase:opinionby</targetxml>.</note>
                    <pre xml:space="preserve">

&lt;case:judges&gt;
    Glazebrook, O’Regan and Baragwanath JJ
&lt;/case:judges&gt;
<b>Becomes</b>

&lt;courtcase:opinionby&gt;
    &lt;person:judge&gt;Glazebrook, O’Regan and Baragwanath JJ&lt;/person:judge&gt;
&lt;/courtcase:opinionby&gt;

OR

&lt;courtcase:panel&gt;
    &lt;courtcase:judges&gt;
        &lt;person:judge&gt;Glazebrook, O’Regan and Baragwanath JJ&lt;/person:judge&gt;
    &lt;/courtcase:judges&gt;
&lt;courtcase:panel&gt;
</pre>
                    <note>When <sourcexml>emph</sourcexml> is inside <sourcexml>case:judges</sourcexml> and <sourcexml>@typestyle="smcaps"</sourcexml>
                        then conversion need to omit tag (<sourcexml>emph</sourcexml>) and retain content.</note>
                    <pre xml:space="preserve">

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

<b>Becomes</b>

&lt;courtcase:opinion&gt;
  &lt;courtcase:opinionby&gt;
    JUDGE M 
    c
    ELREA. 
  &lt;/courtcase:opinion&gt;
&lt;/courtcase:opinion&gt;

</pre>
                    <note>Connecting punctuation and newlines preceding judges can be accomodated in the judges markup. The 
                        colon should not be copied into the target xml however.</note>
                    <note>A colon is inserted before case:judges in rosetta xml. In rosetta this colon is used as a separator, 
                        that will be handled in presentation spec for New Lexis for all cases.</note>
                    <pre xml:space="preserve">

&lt;case:info&gt;
    ...
    &lt;case:courtinfo&gt;
        &lt;case:juris&gt;NSW&lt;/case:juris&gt; 
        &lt;case:courtname&gt;Equity Division&lt;/case:courtname&gt; 
        &lt;case:courtcode&gt;NSWSC&lt;/case:courtcode&gt; 
        &lt;nl/&gt;
        -
        &lt;case:judges&gt;
            &lt;case:judge&gt;Young J&lt;/case:judge&gt; 
        &lt;/case:judges&gt;
        &lt;case:dates&gt;
            &lt;case:hearingdates&gt;10 June; 1 July 1986&lt;/case:hearingdates&gt; 
        &lt;/case:dates&gt;
    &lt;/case:courtinfo&gt;
&lt;/case:info&gt;

<b>Becomes</b>

&lt;caseinfo:caseinfo&gt;
    ...
    &lt;courtcase:panel&gt;
        &lt;courtcase:judges&gt;
            &lt;proc:nl/&gt;
            -
            &lt;person:judge&gt;Young J&lt;/person:judge&gt; 
        &lt;/courtcase:judges&gt;
    &lt;/courtcase:panel&gt;
    ...
&lt;/caseinfo:caseinfo&gt;
</pre>
                    
                    <pre xml:space="preserve" class="- topic/pre ">
 &lt;case:info&gt;
 ...
   &lt;case:courtinfo&gt;
     &lt;case:juris&gt;NSW&lt;/case:juris&gt;
     &lt;case:courtname&gt;Common Law Division&lt;/case:courtname&gt;
     &lt;case:courtcode&gt;NSWSC&lt;/case:courtcode&gt;—Commercial List:
       &lt;case:judges&gt;
         &lt;case:judge&gt;Young J&lt;/case:judge&gt;
       &lt;/case:judges&gt;

       &lt;case:dates&gt;
          &lt;case:hearingdates&gt;June 19; July 14, 1981&lt;/case:hearingdates&gt;
       &lt;/case:dates&gt;
    &lt;/case:courtinfo&gt;
&lt;/case:info&gt;

Becomes
 &lt;caseinfo:caseinfo&gt;
  ...
   &lt;courtcase:panel&gt;
      &lt;courtcase:judges&gt;—Commercial List
         &lt;person:judge&gt;Young J&lt;/person:judge&gt;
      &lt;/courtcase:judges&gt;
   &lt;/courtcase:panel&gt;
  ...
 &lt;/caseinfo:caseinfo&gt;

</pre>                    
                </li>
            </ul>
        </section>
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-HK\HK09_composite_cases\case.judges.dita  -->
	

    <xsl:template match="case:judges[parent::case:courtinfo/parent::case:info]">

		<!--  Original Target XPath:  person:judge   -->
		<courtcase:panel>
		    <courtcase:judges>
		        <xsl:apply-templates select="@*"/>
		            <xsl:choose>
		                <xsl:when test="*">
		                    <xsl:apply-templates select="node()"/>
		                </xsl:when>
		                <xsl:otherwise>
		                    <person:judge>
		                        <xsl:apply-templates/>
		                    </person:judge>
		                </xsl:otherwise>
		            </xsl:choose>	        
		    </courtcase:judges>
		</courtcase:panel>

	</xsl:template>
    
    <xsl:template match="case:judges[parent::case:courtinfo/parent::case:judgment]">
        
        <!--  Original Target XPath:  person:judge   -->
        <courtcase:opinionby>
            <xsl:apply-templates select="@*"/>
            <xsl:choose>
                <xsl:when test="*">
                    <xsl:apply-templates select="node()"/>    
                </xsl:when>
                <xsl:otherwise>
                    <person:judge>
                        <xsl:value-of select="."/>
                    </person:judge>
                </xsl:otherwise>
            </xsl:choose>        
        </courtcase:opinionby>
        
    </xsl:template>
    
    <xsl:template match="case:judge">
        
        <!--  Original Target XPath:  person:judge   -->
            <person:judge>
                <xsl:apply-templates select="@* | node()"/>  
            </person:judge>      
        
    </xsl:template>
        
    <xsl:template match="emph[@typestyle='smcaps' and parent::case:judges]">
        <xsl:apply-templates select="node()"/>
    </xsl:template>

	

</xsl:stylesheet>