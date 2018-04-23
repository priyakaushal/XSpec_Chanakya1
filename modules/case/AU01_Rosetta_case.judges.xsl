<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:caseinfo="http://www.lexisnexis.com/xmlschemas/content/legal/case-information/1/" xmlns:courtcase="http://www.lexisnexis.com/xmlschemas/content/legal/courtcase/1/" xmlns:person="http://www.lexisnexis.com/xmlschemas/content/shared/person/1/" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="AU01_Rosetta_case.judges">
    <title>case:judges <lnpid>id-AU01-18225</lnpid></title>
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
    &lt;case:judge&gt;Perram&lt;/case:judge&gt; J
&lt;/case:judges&gt;
<b class="+ topic/ph hi-d/b ">Becomes</b>

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
    Glazebrook, O’Regan and Baragwanath JJ
&lt;/case:judges&gt;
<b class="+ topic/ph hi-d/b ">Becomes</b>

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
                    <note class="- topic/note ">Connecting punctuation and newlines or label text
                            ending with a colon preceding judges can be accomodated in the
                        judges markup. The colon should not be copied into the target xml however.</note>
                    <note class="- topic/note ">A colon is inserted before case:judges in rosetta
                        xml. In rosetta this colon is used as a separator, that will be handled in
                        presentation spec for New Lexis for all cases.</note>
                    <pre xml:space="preserve" class="- topic/pre ">

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

<b class="+ topic/ph hi-d/b ">Becomes</b>

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
        &lt;case:courtname&gt;Equity Division&lt;/case:courtname&gt; 
        &lt;case:courtcode&gt;NSWSC&lt;/case:courtcode&gt;:
        &lt;case:judges&gt;
            &lt;case:judge&gt;Young J&lt;/case:judge&gt; 
        &lt;/case:judges&gt;
        &lt;case:dates&gt;
            &lt;case:hearingdates&gt;10 June; 1 July 1986&lt;/case:hearingdates&gt; 
        &lt;/case:dates&gt;
    &lt;/case:courtinfo&gt;
&lt;/case:info&gt;

<b class="+ topic/ph hi-d/b ">Becomes</b>

&lt;caseinfo:caseinfo&gt;
    ...
    &lt;courtcase:panel&gt;
        &lt;courtcase:judges&gt;
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
        <section>
            <title>Changes</title>
            <p>2015-03-24: <ph id="change_20150324_mlv_1">Modified handling of any occurence of a colon in the source within the judges label text.</ph></p>
            <p>2015-02-26: <ph id="change_20150226_mlv_1">Added clarification information to note for handling mixed content labels which precede judge lists.</ph></p>
        </section>
    </body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU01_CaseLaw\AU01_Rosetta_case.judges.dita  -->
    <!--SS: Done "AU01_Rosetta_case.judges"-->
    
	<xsl:template match="case:judges[ancestor::case:headnote]">
	    <xsl:choose>
	        <xsl:when test="@ln.user-displayed='false'"/>
	        <xsl:otherwise>
	            <courtcase:panel>
	                <courtcase:judges>
	                    <!--SS: Added below condition for moving text() of case:courtinfo under target element courtcase:judges-->
	                    <xsl:if test="preceding-sibling::text()[preceding-sibling::case:courtcode and following-sibling::case:judges and parent::case:courtinfo]">
	                        <xsl:value-of select="ancestor::case:courtinfo/text()[preceding-sibling::case:courtcode and following-sibling::case:judges]"/>
	                    </xsl:if>
	                    <!--RS: 2018-01-04: Added below condition for moving text() of case:courtinfo under target element courtcase:judges Webstar number #7078814 -->
	                    <xsl:if test="normalize-space(preceding-sibling::text()[1]) = ':' and $streamID='AU01'">
	                        <xsl:value-of select="preceding-sibling::text()[1]"></xsl:value-of>
	                    </xsl:if>
	                    <xsl:apply-templates select="@* | node()"/>
	                </courtcase:judges>
	            </courtcase:panel>
	        </xsl:otherwise>
	    </xsl:choose>
	   
	</xsl:template>

    <xsl:template match="case:judges[ancestor::case:content]">
        <xsl:choose>
            <xsl:when test="@ln.user-displayed='false'"/>
            <xsl:otherwise>
                <courtcase:opinionby>
                    
                    <xsl:apply-templates select="@* | node()"/>
                    
                </courtcase:opinionby>
            </xsl:otherwise>
        </xsl:choose>
		
	</xsl:template>
	
	<xsl:template match="nl[parent::case:judges]"/>
	
	<xsl:template match="case:judge">
	    
		<person:judge>
			<xsl:apply-templates select="@* | node()"/>
		</person:judge>
	</xsl:template>

    <xsl:template match="case:judges/emph[@typestyle='smcaps'][parent::case:judges]">
		<xsl:apply-templates/>
	</xsl:template>

</xsl:stylesheet>