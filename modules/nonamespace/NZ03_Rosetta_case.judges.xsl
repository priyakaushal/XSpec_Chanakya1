<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:caseinfo="http://www.lexisnexis.com/xmlschemas/content/legal/case-information/1/" xmlns:courtcase="http://www.lexisnexis.com/xmlschemas/content/legal/courtcase/1/" xmlns:person="http://www.lexisnexis.com/xmlschemas/content/shared/person/1/" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="NZ03_Rosetta_case.judges">
    <title>case:judges <lnpid>id-NZ03-23025</lnpid></title>
    <body>
        <section>
            <ul>
                <li> There are two contexts for /case:judges/case:judge in Standard Rosetta along
                    with NL Xpath: <ol>
                        <li>
                            /CASEDOC/case:body/case:headnote/case:info/case:courtinfo/case:judges/case:judge,
                                <b>NL Xpath:</b>
                            /courtcase:courtcase/courtcase:head/caseinfo:caseinfo/courtcase:panel/courtcase:judges/person:judge </li>
                        <li>
                            /CASEDOC/case:body/case:content/case:judgments/case:judgment/case:courtinfo/case:judges/case:judge,
                                <b>NL Xpath:</b>
                            /courtcase:courtcase/courtcase:body/courtcase:opinions/courtcase:opinion/courtcase:opinionby/person:judge
                        </li>
                    </ol>
                    <note>Conversion should not create consecutive
                            <targetxml>caseinfo:caseinfo</targetxml> elements. When 2 or more
                        sibling source elements map to <targetxml>caseinfo:caseinfo</targetxml>,
                        data should be merged to a single <targetxml>caseinfo:caseinfo</targetxml>
                        element.</note>
                    <note>Any <sourcexml>nl</sourcexml> elements inside
                            <sourcexml>case:judges</sourcexml> should be suppressed.</note>
                    <sourcexml>case:judge</sourcexml> becomes <targetxml>/person:judge</targetxml>
                    <pre xml:space="preserve">

&lt;case:judges&gt;
  &lt;case:judge&gt;RICHMOND J.&lt;/case:judge&gt;
&lt;/case:judges&gt;

<b>Becomes</b>

&lt;courtcase:panel&gt;
  &lt;courtcase:judges&gt;
    &lt;person:judge&gt;RICHMOND J.&lt;/person:judge&gt;
  &lt;/courtcase:judges&gt;
&lt;courtcase:panel&gt;

OR

&lt;courtcase:opinionby&gt;
  &lt;person:judge&gt;RICHMOND J.&lt;/person:judge&gt;
&lt;/courtcase:opinionby&gt;

</pre>
                    <note> Capture PCData for judges markup as is in New Lexis and always create
                            <targetxml>person:judge</targetxml> as an immediate child of
                            <targetxml>courtcase:judges</targetxml> or
                            <targetxml>courtcase:opinionby</targetxml>. For example: if there is a
                        Rosetta <sourcexml>case:judges</sourcexml> element and it just contains text
                        then conversion need to create <targetxml>person:judge</targetxml> as a
                        child of <targetxml>courtcase:judges</targetxml> or
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
                    <note>When <sourcexml>emph</sourcexml> is inside
                            <sourcexml>case:judges</sourcexml> and
                            <sourcexml>@typestyle="smcaps"</sourcexml> then conversion need to omit
                        tag (<sourcexml>emph</sourcexml>) and retain content.</note>
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
                    <note>Connecting punctuation and newlines preceding judges can be accomodated in
                        the judges markup.</note>
                    <pre xml:space="preserve">

&lt;case:info&gt;
    ...
    &lt;case:courtinfo&gt;
        &lt;case:juris&gt;NZ&lt;/case:juris&gt; 
        &lt;case:courtname&gt;Court of Appeal&lt;/case:courtname&gt; 
        &lt;case:courtcode&gt;NZCA&lt;/case:courtcode&gt; 
        : 
        &lt;nl/&gt;
        -
        &lt;case:judges&gt;
            &lt;case:judge&gt;WILLIAMS J&lt;/case:judge&gt; 
        &lt;/case:judges&gt;
        ...
    &lt;/case:courtinfo&gt;
&lt;/case:info&gt;

<b>Becomes</b>

&lt;caseinfo:caseinfo&gt;
    ...
    &lt;courtcase:panel&gt;
        &lt;courtcase:judges&gt;
            :
            &lt;proc:nl/&gt;
            -
            &lt;person:judge&gt;WILLIAMS J&lt;/person:judge&gt;
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
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\NZ03_CaseLaw\NZ03_Rosetta_case.judges.dita  -->
	<!--<xsl:message>NZ03_Rosetta_case.judges.xsl requires manual development!</xsl:message>--> 
    <xsl:template match="case:judges[ancestor::case:headnote]">
       <xsl:choose>
           <xsl:when test="not(child::case:judge)">
               <courtcase:panel>
                   <courtcase:judges>
                       <person:judge>
                       <xsl:apply-templates select="@* | node()"/>
                       </person:judge>
                   </courtcase:judges>
               </courtcase:panel>
           </xsl:when>
           <xsl:otherwise>
               <courtcase:panel>
                   <courtcase:judges>
                       <xsl:apply-templates select="@* | node()"/>
                   </courtcase:judges>
               </courtcase:panel>
           </xsl:otherwise>
       </xsl:choose> 
    </xsl:template>
    
    <xsl:template match="case:judges[ancestor::case:content]">
        <courtcase:opinionby>
            
            <xsl:apply-templates select="@* | node()"/>
            
        </courtcase:opinionby>
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