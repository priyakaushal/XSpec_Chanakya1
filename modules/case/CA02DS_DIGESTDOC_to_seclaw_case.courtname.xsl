<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
    xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
    xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo"
    xmlns:dig="http://www.lexis-nexis.com/glp/dig"
    xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:jurisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/jurisdiction-info/1/" xmlns:proc="http://www.lexisnexis.com/xmlschemas/content/shared/process-elements/1/" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="case.courtname">
   <title>case:courtname <lnpid>id-CA02DS-12816</lnpid></title>
   <body>
      <section>
<ul>
         <li>
                    <sourcexml>case:courtname</sourcexml> becomes
                        <targetxml>jurisinfo:courtinfo/jurisinfo:courtname</targetxml>
             <note> If <sourcexml>case:courtname</sourcexml> has <sourcexml>nl</sourcexml> as child element, then <sourcexml>nl</sourcexml> will be converted to <targetxml>proc:nl</targetxml>.</note>
             <note> If <sourcexml>case:courtname</sourcexml> is contained in parentheses, the initial open paren and final close paren should be dropped during conversion. See examples.</note>
                    <pre>


&lt;case:courtinfo&gt;
    &lt;case:courtname&gt;Ontario Superior Court of Justice&lt;/case:courtname&gt;
&lt;/case:courtinfo&gt;

<b>Becomes</b>


&lt;jurisinfo:courtinfo&gt;
    &lt;jurisinfo:courtname&gt;Ontario Superior Court of Justice&lt;/jurisinfo:courtname&gt;
&lt;/jurisinfo:courtinfo&gt;

                    </pre><note>
                    <p>Conversion need to to check couple of check points for handling twice
                        occurrences of <sourcexml>case:courtname</sourcexml> as given below</p><p>
                        Identify the impacted documents by looking for one or more of the
                        following:</p>
                    
                        <ul>
                            <li>Doc-id begins with an upper case “Q”, e.g. -
                                    <sourcexml>&lt;docinfo:doc-id&gt;QSEN 10000&lt;/docinfo:doc-id&gt;</sourcexml>.</li>
                            <li>Classitem classscheme = lnc.quantum -
                                    <sourcexml>&lt;classitem classscheme="lnc.quantum"&gt;</sourcexml>.</li>
                            <li>Case:courtname contains searchtype=”JUDGES”, e.g.
                                    <sourcexml>&lt;emph typestyle="ro" searchtype="JUDGES"&gt;</sourcexml>.</li>
                        </ul>
                        <p>If above sceanrios occure in an xml file then
                                <sourcexml>emph/@searchtype="COUNSEL"</sourcexml> and
                                <sourcexml>emph/@searchtype="JUDGES"</sourcexml> both
                            will be suppresed including all its contents from
                                <sourcexml>case:courtname</sourcexml> during NL conversion.</p>
                        <p>IF second occurrences of closing tag
                                <sourcexml>&lt;/emph&gt;</sourcexml> precedes comma(,) like
                                <sourcexml>"&lt;/emph&gt;,"</sourcexml> then emph including
                            all its contants plus comma(,) will be suppressed from conversion.</p>
                        <p> And if second occurrences of <sourcexml>case:courtname</sourcexml>
                            contains
                                <sourcexml>case:courtname/@ln.user-displayed="false"</sourcexml>
                                then it will be suppresed from NL conversion.</p>
                        
                    </note>
                    <pre>
<b>Rosetta INPUT:</b>
             
             
&lt;case:courtinfo&gt;
    &lt;case:juris ln.user-displayed="false"&gt;ON&lt;/case:juris&gt;
    &lt;case:courtcode ln.user-displayed="false"&gt;ONSC&lt;/case:courtcode&gt;
    &lt;abbrvname ln.user-displayed="false"&gt;ONCtJus&lt;/abbrvname&gt;
    &lt;case:courtname&gt;
        DROP       &lt;emph typestyle="ro" searchtype="COUNSEL"&gt;Counsel:B. Jones(C),K. Stratos(C),J. Halberstadt(O),&lt;/emph&gt;
        DROP       &lt;emph typestyle="ro" searchtype="JUDGES"&gt;H. Borenstein J.&lt;/emph&gt;, 
        Retain     (Ontario Court of Justice)
    &lt;/case:courtname&gt;
    DROP    &lt;case:courtname ln.user-displayed="false"&gt;
    DROP        &lt;emph typestyle="ro" searchtype="DATE"&gt;2011-01-28&lt;/emph&gt;
    DROP    &lt;/case:courtname&gt;
    &lt;case:judges&gt;H. Borenstein J.&lt;/case:judges&gt;
        &lt;case:dates&gt;
            &lt;case:decisiondate ln.user-displayed="false"&gt;
   	            &lt;date month="01" day="28" year="2011"&gt;2011-01-28&lt;/date&gt;
            &lt;/case:decisiondate&gt;
        &lt;/case:dates&gt;
&lt;/case:courtinfo&gt;             

   
<b>NewLexis Output(for courtname portion only)</b>
             
             
&lt;jurisinfo:courtinfo&gt;
 &lt;jurisinfo:alternatecourtcode alternatecourtcode="ONSC"/&gt;
 &lt;jurisinfo:courtname normshortname="ONCtJus"&gt;Ontario Court of Justice&lt;/jurisinfo:courtname&gt;
 &lt;jurisinfo:jurisdiction&gt;
     &lt;jurisinfo:system&gt;ON&lt;/jurisinfo:system&gt;
 &lt;/jurisinfo:jurisdiction&gt;
 ........
 ........
&lt;jurisinfo:courtinfo&gt;               

                    </pre>  
             
             <note><p>If <sourcexml>@ln.user-displayed="false"</sourcexml> attribute does not appear before the date information under <sourcexml>emph typestyle="ro" and searchtype="DATE"</sourcexml>then suppress <sourcexml>case:courtname</sourcexml> in NL conversion</p></note>

<pre>
    
    ...    
    &lt;case:courtname&gt;
    &lt;emph typestyle="ro" searchtype="DATE"&gt;January 25, 2005&lt;/emph&gt;
    &lt;/case:courtname&gt;
    &lt;case:courtname&gt;(British Columbia Collective Agreement Arbitration)
    &lt;/case:courtname&gt;
     ...
    
    
    <b>Becomes</b>
    
    ...
    &lt;jurisinfo:courtinfo&gt;
    ....
    &lt;jurisinfo:courtname normshortname="BCCollAgrArb"&gt;, British Columbia Collective Agreement Arbitration
    &lt;/jurisinfo:courtname&gt;
    ....
    &lt;/jurisinfo:courtinfo&gt;
    
</pre>
                </li>
  
  
      </ul>
	  </section>
	  <example>
		  <title>Parentheses Removed Example</title>
		  <codeblock>

&lt;case:courtinfo&gt;
	&lt;case:juris ln.user-displayed="false"&gt;BC&lt;/case:juris&gt;
	&lt;case:courtcode ln.user-displayed="false"&gt;BCSC&lt;/case:courtcode&gt;
	&lt;abbrvname ln.user-displayed="false"&gt;BCSC&lt;/abbrvname&gt;
	&lt;case:courtname&gt;(British Columbia Supreme Court)&lt;/case:courtname&gt;
&lt;/case:courtinfo&gt;			  

		  </codeblock>
            <b>becomes</b>
			<codeblock>

&lt;jurisinfo:courtinfo&gt;
  &lt;jurisinfo:alternatecourtcode alternatecourtcode="BCSC"/&gt;
  &lt;jurisinfo:courtname normshortname="BCSC"&gt;British Columbia Supreme Court&lt;/jurisinfo:courtname&gt;
  &lt;jurisinfo:jurisdiction&gt;
	&lt;jurisinfo:system&gt;BC&lt;/jurisinfo:system&gt;
  &lt;/jurisinfo:jurisdiction&gt;
&lt;/jurisinfo:courtinfo&gt;				

		  </codeblock>
	  </example>
	  <section>
          <title>Changes</title>
          <p>2014-06-10 <ph id="change_20140610_SEP">Drop initial open paren and trailing close paren. Add example.<b>Comment from First UX Review.</b></ph></p>
          <p>2014-04-30 <ph id="change_20140430_AS">case:courtname new scenario<b>DB item # 152</b></ph></p>
      </section>
   </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA02-Case_Summaries\CA02DS_DIGESTDOC_to_seclaw\case.courtname.dita  -->
 
    <!-- Vikas Rohilla : Template to match the case:courtname and create jurisinfo:courtname-->
    <!-- Awantika:2017-11-13- Updated as per CI to check for multiple case:courtname. Webstar 7042916  -->
    <!-- Awantika:2018-01-31- As pr CI emph typestyle="ro" and searchtype="DATE" has been suppressed. Webstar # 7103030 -->
    <xsl:template match="case:courtname">
        <xsl:if test="/DIGESTDOC/docinfo/docinfo:doc-id[starts-with('Q',.)] | /DIGESTDOC/dig:body/dig:collection/dig:level/dig:item/abstract/catchwordgrp/catchwords/catchphrase/classitem[@classscheme='lnc.quantum'] | case:courtname/emph[@searchtype='JUDGES']">
            <xsl:if test="emph[@searchtype='COUNSEL'] | emph[@searchtype='JUDGES']"/>
               
        </xsl:if>
        <xsl:if test="not(emph[@searchtype='COUNSEL'] | emph[@searchtype='JUDGES'] | emph[@searchtype='DATE' and @typestyle='ro']) and not(@ln.user-displayed)">
            <jurisinfo:courtname>
                <xsl:apply-templates select="parent::case:courtinfo/abbrvname"/>                
                <!-- Awantika:2017-11-13- Removed parenthesis -->
                <xsl:value-of select="translate(.,'([)','')"/>
            </jurisinfo:courtname>
        </xsl:if>        
    </xsl:template>
    
     
    
    <!-- Vikas Rohilla : Template to match the case:courtinfo/abbrvname and create the attribute normshortname    -->
    <xsl:template match="case:courtinfo/abbrvname">
        <xsl:attribute name="normshortname">
            <xsl:apply-templates select="node()"/>
        </xsl:attribute>
    </xsl:template>
    
    <!-- Vikas Rohilla : Supressed the abbrvname/@ln.user-displayed     -->
    <xsl:template match="abbrvname/@ln.user-displayed"/>
    
    <!--<xsl:template match="case:courtnameemph/@searchtype="COUNSEL""></xsl:template>-->
    
</xsl:stylesheet>