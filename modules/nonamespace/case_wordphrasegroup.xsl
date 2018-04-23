<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:source_cttr="http://www.lexis-nexis.com/glp/cttr" xmlns:casedigest="http://www.lexisnexis.com/xmlschemas/content/legal/case-digest/1/" xmlns:classify="http://www.lexisnexis.com/xmlschemas/content/shared/classification/1/" xmlns:cttr="urn:x-lexisnexis:content:citator:sharedservices:1" version="2.0" exclude-result-prefixes="dita source_cttr">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="cttr.wordphrasegrp">
  <title>cttr:wordphrasegrp id-NZ17CC-25825A</title>
  <body>
    <p>cttr:wordphrasegrp maps to classify:classification</p>
 
    <section>
      <ul>
          <li class="- topic/li ">
            <sourcexml class="+ topic/keyword xml-d/sourcexml ">cttr:wordphrasegrp/catchwords</sourcexml> becomes <targetxml class="+ topic/keyword xml-d/targetxml ">classify:classification @classscheme="words-and-phrases"</targetxml> and 
            the child element is described below:
            <ul class="- topic/ul ">
              <li class="- topic/li ">
                <sourcexml class="+ topic/keyword xml-d/sourcexml ">catchphrase</sourcexml> becomes <targetxml class="+ topic/keyword xml-d/targetxml ">classify:classitem/classify:classitem-identifier/classify:classname</targetxml></li>
                
              <li class="- topic/li ">
                For instances when <sourcexml>catchwords</sourcexml> contains text, create a new 
                <targetxml>classify:classification[@classscheme="catchwords"]/classify:classitem/classify:classitem-identifier/classify:classname</targetxml>                
                
                <pre xml:space="preserve" class="- topic/pre ">

&lt;cttr:wordphrasegrp&gt;...
  &lt;catchwords&gt;
    &lt;catchphrase&gt;market&lt;/catchphrase&gt;
    &lt;catchphrase&gt;take advantage&lt;/catchphrase&gt;
  &lt;/catchwords&gt;
&lt;/cttr:wordphrasegrp&gt;

<b class="+ topic/ph hi-d/b ">Becomes</b>

    &lt;classify:classification classscheme="words-and-phrases"&gt;
      &lt;classify:classitem&gt;
        &lt;classify:classitem-identifier&gt;
          &lt;classify:classname&gt;market&lt;/classify:classname&gt;
        &lt;/classify:classitem-identifier&gt;
      &lt;/classify:classitem&gt;
      &lt;classify:classitem&gt;
        &lt;classify:classitem-identifier&gt;
          &lt;classify:classname&gt;take advantage&lt;/classify:classname&gt;
        &lt;/classify:classitem-identifier&gt;
      &lt;/classify:classitem&gt;
    &lt;/classify:classification&gt;
                </pre>
              </li>
              
              
<li>
  
<pre>
&lt;cttr:wordphrasegrp&gt;
   &lt;catchwords&gt;Words and phrases&lt;/catchwords&gt;
   &lt;catchwords&gt;
      &lt;catchphrase&gt;'market for the substitutable goods', 'substitutable goods' (in context of local market)&lt;/catchphrase&gt;
   &lt;/catchwords&gt;
&lt;/cttr:wordphrasegrp&gt;
    
</pre>   
                
       <b class="+ topic/ph hi-d/b ">Becomes</b>
                
<pre>

 &lt;casedigest:caseinfo&gt;
 ...
        &lt;classify:classification classscheme="catchwords"&gt;
             &lt;classify:classitem&gt;
                 &lt;classify:classitem-identifier&gt;
                     &lt;classify:classname&gt;Words and phrases&lt;/classify:classname&gt;
                 &lt;/classify:classitem-identifier&gt;
             &lt;/classify:classitem&gt;
         &lt;/classify:classification&gt;
     
         &lt;classify:classification classscheme="catchwords"&gt;
            &lt;classify:classitem&gt;
                &lt;classify:classitem-identifier&gt;
                   &lt;classify:classname&gt; 'market for the substitutable goods', 'substitutable goods' (in context of local market)&lt;/classify:classname&gt;
                &lt;/classify:classitem-identifier&gt;
            &lt;/classify:classitem&gt;
         &lt;/classify:classification&gt;
         ...
&lt;/casedigest:caseinfo&gt;   
</pre>   
              
              
              
              </li>


            </ul>
          </li>
        </ul>
    </section>
    
    <section>
      <title>Changes</title>
      <p>2016-01-11 - SNB: <ph id="change_20160111_snb">corrected typo to change instruction for 
        instances when <sourcexml>catchwords</sourcexml> contains text, to change 
        <targetxml>classify:classitem-identifier/classify:classitem-identifier</targetxml> to instead be 
        <targetxml>classify:classitem-identifier/classify:classname</targetxml></ph>.</p>
      <p>2015-06-19 - MLV: <ph id="change_20150619MLV-1">corrected cut and paste error, cttr:wordphrasegrp maps parent location within <targetxml>casedigest:caseinfo</targetxml></ph>.</p>
      <p>2015-06-12 - MLV <ph id="change_20150612MLV-1">Added mapping for <sourcexml>catchwords/text()</sourcexml> to <targetxml>classify:classification/classify:classitem/classify:classitem-identifier/classify:classitem-identifier</targetxml> in this CI.</ph></p>
      <p>2015-02-27 - MLV: corrected cut and past error, cttr:wordphrasegrp maps to classify:classification.</p>
      <p>2015-02-10 - MLV <ph id="change_20150210MLV-1">Added mapping for <sourcexml>wordphrasegrp</sourcexml> to <targetxml>cttr:descriptors</targetxml> in this CI.</ph></p>
    </section>
    
  </body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\NZ17_Case_Summaries\NZ17CC_Citatordoc_To_CaseDigest\case_wordphrasegroup.dita  -->
	 

	<xsl:template match="source_cttr:wordphrasegrp">
	  <xsl:apply-templates select="*"/>
	</xsl:template>
	  
	  <!-- the CI says words-and-phrases but DT has "catchwords" -->
  <xsl:template match="source_cttr:wordphrasegrp/catchwords">
      <xsl:if test="text()">
        <classify:classification classscheme="catchwords">
          <classify:classitem>
            <classify:classitem-identifier>
              <classify:classname>
                <xsl:for-each select="node()">
                  <xsl:choose>
                    <xsl:when test="self::catchphrase">
                      <xsl:apply-templates/>
                    </xsl:when>                  
                  <xsl:otherwise>
                    <xsl:apply-templates select="."/>
                  </xsl:otherwise>
                  </xsl:choose>
                </xsl:for-each>
              </classify:classname>
            </classify:classitem-identifier>
          </classify:classitem>
        </classify:classification>
        </xsl:if> 
        <xsl:if test="catchphrase">
          <classify:classification classscheme="words-and-phrases">
            <xsl:apply-templates select="catchphrase"/>
          </classify:classification>
        </xsl:if>
	</xsl:template>

	<xsl:template match="catchwords/catchphrase">
		<classify:classitem>
			<classify:classitem-identifier>
				<classify:classname>
					<xsl:apply-templates select="@* | node()"/>
				</classify:classname>
			</classify:classitem-identifier>
		</classify:classitem>
	</xsl:template>

	
</xsl:stylesheet>