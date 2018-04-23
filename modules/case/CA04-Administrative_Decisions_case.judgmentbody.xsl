<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/" xmlns:person="http://www.lexisnexis.com/xmlschemas/content/shared/person/1/" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:admindecision="urn:x-lexisnexis:content:administrative-decision:sharedservices:1" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="case.judgmentbody">
   <title>case:judgmentbody <lnpid>id-CA04-13427</lnpid></title>
   <body>
      <section>
          <ul>
         <li class="- topic/li ">
             <p><sourcexml>case:judgmentbody</sourcexml> becomes
                 <targetxml>admindecision:opinion/bodytext</targetxml>.</p>
             <p><sourcexml>case:judgmentbody</sourcexml> text, depending on the context, can
                 become
                 <targetxml>admindecision:opinion/admindecision:opinionby/person:adjudicator</targetxml>.
                 When either <sourcexml>p/pnum</sourcexml> or
                 <sourcexml>p[@indent="1st-line"]</sourcexml> or <sourcexml>p[being the
                     first child of case:judgmentbody]</sourcexml> occurs within
                 <sourcexml>case:judgmentbody</sourcexml>, search 75 characters to see if
                 colon double dash ":--" or colon emdash ":&#8212;" occurs within the first
                 75 characters. If so, this indicates a judges opinion which becomes
                 <targetxml>admindecision:opinionby/person:adjudicator</targetxml>. The
                 text before the colon double dash ":--" or colon emdash ":&#8212;" becomes
                 the contents of
                 <targetxml>admindecision:opinionby/person:adjudicator</targetxml>. An
                 exception to this rule is if the text starts with square brackets around a
                 number. In this case, leave the square brackets and number in the text. The
                 colon and the double dash (or &#8212;) are stripped. The text following the
                 colon double dash ":--" or colon emdash ":&#8212;" becomes
                 <targetxml>bodytext/p/text</targetxml>. Close the current
                 <targetxml>bodytext</targetxml> element in order to create the
                 <targetxml>admindecision:opinionby</targetxml> and then reopen it.
                 <note> Remove the leading spaces from the first
                     <targetxml>text</targetxml> after
                     <targetxml>admindecision:opinionby</targetxml>. </note><note>If
                         judge's name appears within emphasis tag, the same rules would apply as
                         if the <sourcexml>emph</sourcexml> tag were not present in source. The
                         emph tag is effectively pass through while placing its contents into
                         <targetxml>admindecision:opinionby/person:adjudicator</targetxml>.
                     </note><note>If <sourcexml>l</sourcexml> is the child of
                         <sourcexml>case:judgmentbody</sourcexml> then conversion should
                         suppress <sourcexml>l, li</sourcexml> and <sourcexml>lilabel</sourcexml>
                         and follow the above instruction for generation of
                         <targetxml>admindecision:opinionby/person:adjudicator</targetxml>
                         from <sourcexml>p/pnum</sourcexml> or
                         <sourcexml>p[@indent="1st-line"]</sourcexml> or <sourcexml>p[being
                             the first child of case:judgmentbody]</sourcexml>. See Example
                         6.</note><note>If more than one of these constructs occurs within
                             <sourcexml>case:judgmentbody</sourcexml>, it is important to note
                             that these become two separate
                             <targetxml>admindecision:opinion</targetxml> elements, not two
                             <targetxml>admindecision:opinion/admindecision:opinionby</targetxml>
                             within the same <targetxml>admindecision:opinion</targetxml>. See
                             example.</note>
             </p>
         </li>
                <li class="- topic/li ">
                    <pre xml:space="preserve" class="- topic/pre ">

&lt;case:judgment&gt;
    &lt;case:judgmentbody&gt;
       &lt;p&gt;
        &lt;text align="center"&gt;DECISION&lt;/text&gt;
       &lt;/p&gt;
    &lt;p&gt;
    &lt;text&gt;OVERVIEW&lt;/text&gt;
    &lt;/p&gt;
&lt;p&gt;
    &lt;pnum count="1"&gt;1&lt;/pnum&gt;
    &lt;text&gt;This is an application for reconsideration by the employee, Gary Gurnsey, under Section 116 of the Employment Standards Act (the "Act") of a decision of the Employment Standards Tribunal on February 12, 1999.&lt;/text&gt;
&lt;/p&gt;
    &lt;/case:judgmentbody&gt;
&lt;/case:judgment&gt;

<b class="+ topic/ph hi-d/b ">Becomes</b>

&lt;admindecision:opinion&gt;    
    &lt;bodytext&gt;
       &lt;p align="center"&gt;
        &lt;text&gt;DECISION&lt;/text&gt;
       &lt;/p&gt;
    &lt;p&gt;
    &lt;text&gt;OVERVIEW&lt;/text&gt;
    &lt;/p&gt;
&lt;p&gt;
    &lt;desig value="1"&gt;1&lt;/desig&gt;
    &lt;text&gt;This is an application for reconsideration by the employee, Gary Gurnsey, under Section 116 of the Employment Standards Act (the "Act") of a decision of the Employment Standards Tribunal on February 12, 1999.&lt;/text&gt;
&lt;/p&gt;
    &lt;/bodytext&gt;
&lt;/admindecision:opinion&gt;
</pre>
                </li>
          </ul>          
      </section>
       <example>Example 2<codeblock>
&lt;case:judgmentbody&gt;
    ...
    &lt;p i="5" indent="1st-line"&gt;
        &lt;text&gt;The reasons of L Heureux-Dub, Bastarache and Binnie JJ. were delivered by&lt;/text&gt;
    &lt;/p&gt;
    &lt;p&gt;
        &lt;pnum count="3"&gt;3&lt;/pnum&gt;
        &lt;text&gt;BASTARACHE J. (dissenting):-- This appeal concerns the application of the sale of business provision, s. 64, of the Ontario
            Labour Relations Act, R.S.O. 1990, c. L.2. The issue raised is whether the interpretation of this successorship provision by the
            Ontario Labour Relations Board ([1994] O.L.R.B. Rep. 1296) was patently unreasonable in the circumstances of this case. A
            ...
        &lt;/text&gt;
    &lt;/p&gt;
&lt;/case:judgmentbody&gt;                
       </codeblock>
            <b>Becomes</b>
            <codeblock>
&lt;admindecision:opinion&gt;
    &lt;bodytext&gt;
        ...
        &lt;p indent="1st-line"&gt;
            &lt;text&gt;The reasons of L Heureux-Dub, Bastarache and Binnie JJ. were delivered by&lt;/text&gt;
        &lt;/p&gt;
    &lt;/bodytext&gt;
    &lt;admindecision:opinionby&gt;
        &lt;person:adjudicator&gt;BASTARACHE J. (dissenting)&lt;/person:adjudicator&gt;
    &lt;/admindecision:opinionby&gt;
    &lt;bodytext&gt;
        &lt;p&gt;
            &lt;desig value="3"&gt;3&lt;/desig&gt;
            &lt;text&gt;This appeal concerns the application of the sale of business provision, s. 64, of the Ontario
                Labour Relations Act, R.S.O. 1990, c. L.2. The issue raised is whether the interpretation of this successorship provision by the
                Ontario Labour Relations Board ([1994] O.L.R.B. Rep. 1296) was patently unreasonable in the circumstances of this case. A
                ...
            &lt;/text&gt;
        &lt;/p&gt;
    &lt;/bodytext&gt;
&lt;/admindecision:opinion&gt;
       </codeblock>
        </example>
       
       <example> Example 3
            <codeblock>
&lt;case:judgmentbody&gt;
    &lt;p&gt;
        &lt;pnum count="1"&gt;1&lt;/pnum&gt;
        &lt;text&gt;July 20, 1892. &lt;emph typestyle="bf"&gt;MCCREIGHT J.&lt;/emph&gt;:&amp;#x2014; In this case a
            summons was served on the Vancouver City Council to show cause why George Bowack should
            not be discharged from the quarantine hospital in Vancouver, where he had, by direction
            of the authorities in Vancouver, been detained against his will, was argued before me at
            length yesterday and to-day, and speedy decision, in view of his being in custody, is
            obviously desirable.&lt;/text&gt;
    &lt;/p&gt;
&lt;/case:judgmentbody&gt;                
       </codeblock>
            <b>Becomes</b>
            <codeblock>
&lt;admindecision:opinion&gt;
    &lt;admindecision:opinionby&gt;
        &lt;person:adjudicator&gt;MCCREIGHT J.&lt;/person:adjudicator&gt;
    &lt;/admindecision:opinionby&gt;
    &lt;bodytext&gt;
        &lt;p&gt;
            &lt;desig value="1"&gt;1&lt;/desig&gt;
            &lt;text&gt;July 20, 1892. In this case a summons was served on the Vancouver City Council to
                show cause why George Bowack should not be discharged from the quarantine hospital
                in Vancouver, where he had, by direction of the authorities in Vancouver, been
                detained against his will, was argued before me at length yesterday and to-day, and
                speedy decision, in view of his being in custody, is obviously desirable.&lt;/text&gt;
        &lt;/p&gt;
    &lt;/bodytext&gt;
&lt;/admindecision:opinion&gt;
       </codeblock>
        </example>
		<example>
			<title>Example 4 - Multiple <targetxml>admindecision:opinion</targetxml></title>
			<codeblock>
&lt;case:judgmentbody&gt;
    &lt;p&gt;
       &lt;pnum count="1"&gt;1&lt;/pnum&gt;
       &lt;text&gt;&lt;emph typestyle="bf"&gt;McLACHLIN C.J.&lt;/emph&gt;:&amp;#x2014; I would dismiss the appeal with
        costs to the respondent National Automobile, Aerospace and Agricultural Implement Workers
        Union of Canada (CAW-Canada), substantially for the reasons of Goudge J.A. in the Ontario
        Court of Appeal.&lt;/text&gt;
      &lt;/p&gt;
     &lt;p&gt;
       &lt;pnum count="3"&gt;3&lt;/pnum&gt;
       &lt;text&gt;BASTARACHE J. (dissenting):-- This appeal concerns the application of the sale of
        business provision, s. 64, of the Ontario Labour Relations Act, R.S.O. 1990, c. L.2. The
        issue raised is whether the interpretation of this successorship provision by the Ontario
        Labour Relations Board ([1994] O.L.R.B. Rep. 1296) was patently unreasonable in the
        circumstances of this case. A unanimous bench of the Divisional Court found that it was not. For the reasons hereafter, I
        find that the Board's decision was patently unreasonable.&lt;/text&gt;
      &lt;/p&gt;	  
&lt;/case:judgmentbody&gt;				
			</codeblock>
            <b>Becomes</b>
			<codeblock>
&lt;admindecision:opinion&gt;
    &lt;admindecision:opinionby&gt;
        &lt;person:adjudicator&gt;McLACHLIN C.J.&lt;/person:adjudicator&gt;
    &lt;/admindecision:opinionby&gt;
    &lt;bodytext&gt;
        &lt;p&gt;
            &lt;desig value="1"&gt;1&lt;/desig&gt;
            &lt;text&gt;I would dismiss the appeal with
        costs to the respondent National Automobile, Aerospace and Agricultural Implement Workers
        Union of Canada (CAW-Canada), substantially for the reasons of Goudge J.A. in the Ontario
        Court of Appeal.&lt;/text&gt;
        &lt;/p&gt;
    &lt;/bodytext&gt;
&lt;/admindecision:opinion&gt;
&lt;admindecision:opinion&gt;
    &lt;admindecision:opinionby&gt;
        &lt;person:adjudicator&gt;BASTARACHE J. (dissenting)&lt;/person:adjudicator&gt;
    &lt;/admindecision:opinionby&gt;
    &lt;bodytext&gt;
        &lt;p&gt;
            &lt;desig value="1"&gt;1&lt;/desig&gt;
            &lt;text&gt;This appeal concerns the application of the sale of
        business provision, s. 64, of the Ontario Labour Relations Act, R.S.O. 1990, c. L.2. The
        issue raised is whether the interpretation of this successorship provision by the Ontario
        Labour Relations Board ([1994] O.L.R.B. Rep. 1296) was patently unreasonable in the
        circumstances of this case. A unanimous bench of the Divisional Court found that it was not. For the reasons hereafter, I
        find that the Board's decision was patently unreasonable.&lt;/text&gt;
        &lt;/p&gt;
    &lt;/bodytext&gt;
&lt;/admindecision:opinion&gt;
			</codeblock>
		</example>
       <example>
           <title>Example 5</title>
           <codeblock>
<![CDATA[
<case:judgmentbody>
    <p>
        <pnum count="70">70</pnum>
        <text>McLACHLIN C.J. and KARAKATSANIS, WAGNER and GASCON JJ. :-- We
            agree with Justice Abella that, under the current framework, the
            standard of review is reasonableness. We also agree with her
            disposition of the appeal on the merits and with her analysis of the
            two conflicting interpretations of the Unjust Dismissal provisions
            of the <emph typestyle="it">Canada Labour Code</emph>, R.S.C. 1985,
            c. L-2, proposed to the Court. Adjudicator Schiff's decision was
            reasonable, and it should be restored. We appreciate Justice
            Abella's efforts to stimulate a discussion on how to clarify or
            simplify our standard of review jurisprudence to better promote
            certainty and predictability. However, as it is unnecessary to do so
            in order to resolve this case, we are not prepared to endorse any
            particular proposal to redraw our current standard of review
            framework at this time.</text>
    </p>
</case:judgmentbody> 
              ]]>               
           </codeblock>
                <b>Becomes</b>
            <codeblock>
            <![CDATA[
<courtcase:opinion>
    <courtcase:opinionby>
        <person:judge>McLACHLIN C.J. and KARAKATSANIS, WAGNER and GASCON JJ.</person:judge>
    </courtcase:opinionby>
    <bodytext>
        <p>
            <desig value="70">70</desig>
            <text>We
                agree with Justice Abella that, under the current framework, the
                standard of review is reasonableness. We also agree with her
                disposition of the appeal on the merits and with her analysis of the
                two conflicting interpretations of the Unjust Dismissal provisions
                of the <emph typestyle="it">Canada Labour Code</emph>, R.S.C. 1985,
                c. L-2, proposed to the Court. Adjudicator Schiff's decision was
                reasonable, and it should be restored. We appreciate Justice
                Abella's efforts to stimulate a discussion on how to clarify or
                simplify our standard of review jurisprudence to better promote
                certainty and predictability. However, as it is unnecessary to do so
                in order to resolve this case, we are not prepared to endorse any
                particular proposal to redraw our current standard of review
                framework at this time.</text>
        </p>
    </bodytext>
</courtcase:opinion>
              ]]>    
               </codeblock>
		</example>
       
       <example>
           <title>Example 6</title>
           <codeblock>
                <![CDATA[
<case:judgmentbody>
    <p indent="1st-line"><text>The decision of the Board was rendered by Kenneth G. Love, Q.C. (Chair), concurred in by Greg Trew (Member). Donna Ottenson, (Member) rendered separate dissenting reasons.</text></p>
    <p align="center"><text><emph typestyle="bf">REASONS FOR DECISION</emph></text></p>
    <p><l><li><lilabel/><p><text>KENNETH G. LOVE, Q.C. (CHAIR):--</text></p></lilabel></li></l></p>
</case:judgmentbody>
              ]]> 
           </codeblock>
                <b>Becomes</b>
            <codeblock>
          <![CDATA[
<admindecision:opinions>
    <admindecision:opinion>
        <bodytext>
            <p indent="1st-line"><text>The decision of the Board was rendered by Kenneth G. Love, Q.C. (Chair), concurred in by Greg Trew (Member). Donna Ottenson, (Member) rendered separate dissenting reasons.</text></p>
            <p align="center"><text><emph typestyle="bf">REASONS FOR DECISION</emph></text></p>
        </bodytext>
        <admindecision:opinionby>
            <person:adjudicator>KENNETH G. LOVE, Q.C. (CHAIR)</person:adjudicator>
        </admindecision:opinionby>
    </admindecision:opinion>
</admindecision:opinions>
              ]]>     
               </codeblock>
       </example>
		<section>
			<title>Changes</title>
		    <p>2017-04-28 <ph id="change_20170428_SS">Updated the target <u>Example-6</u> for text
		        reatined in general position according to the source. [Webstar
		        #<b>6862735</b>]</ph></p>
		    <p>2017-04-26 <ph id="change_20170426_SS">AAdded note and example when
		        <sourcexml>case:judgmentbody</sourcexml> contains judge name in
		        <sourcexml>l</sourcexml> element, Applicable on CA04. [Webstar
		        #<b>6862735</b>]</ph></p>
		    <p>2017-03-14 <ph id="change_20170314_SS">Update case:judgmentbody text can become
		        courtcase:opinionby text to increase the PC character data limit from 50 to 75
		        and refer example 5. [<b>Webstar # 6822593</b>]</ph></p>
		    <p>2014-08-11 <ph id="change_20140811_AS">Remove leading spaces from admindecision:opinionby. <b>P4 item# 300</b></ph></p>
           <p>2014-06-18 <ph id="change_20140618_SEP">Add note and example about creating multiple <targetxml>admindecision:opinion</targetxml>. <b>Phase 4B item# 232</b></ph></p>
		   <p>2014-06-05 <ph id="change_20140605_AS">Discerning Opinion By from Text. <b>R4.5 item# 1592</b></ph></p>
	   </section>
   </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA04-Administrative_Decisions\case.judgmentbody.dita  -->
	<!--<xsl:message>CA04-Administrative_Decisions_case.judgmentbody.xsl requires manual development!</xsl:message>--> 
<!--
	<xsl:template match="case:judgmentbody">
	    <xsl:variable name="textval" select="p[1]/text[1]"/>
	    <xsl:message><xsl:value-of select="$textval"/></xsl:message>
	    <xsl:choose>
	        <xsl:when test="$textval[contains(.,':-\-') or contains(.,':—')]">
	            
	                <admindecision:opinionby>
	                    <person:adjudicator>
	                        <xsl:value-of select="substring-before($textval,':-\-')"/>
	                        <xsl:value-of select="substring-before($textval,':—')"/>
	                    </person:adjudicator>
	                </admindecision:opinionby>
	                <bodytext>
	                    <xsl:apply-templates select="@*|node()"/>
	                </bodytext>
	       
	        </xsl:when>
	        <xsl:otherwise>
	            
	                <bodytext>
	                    <xsl:apply-templates select="@* | node()"/>
	                </bodytext>
	            
	        </xsl:otherwise>
	   </xsl:choose>
	    
	    
	</xsl:template>-->
   
    <xsl:template match="case:judgmentbody">
        <bodytext>
            <xsl:apply-templates select="@*|node()"/>
        </bodytext>
    </xsl:template>
    
    <xsl:template match="p[descendant::text[contains(substring(.,1,75),':--') or contains(substring(.,1,75),':—')]][not(ancestor::l)][parent::case:judgmentbody]" priority="25">
       <xsl:text disable-output-escaping="yes">&lt;/bodytext&gt;</xsl:text>
        <admindecision:opinionby>
            <person:adjudicator>
                <xsl:value-of select="substring-before(text,':--') "/>
            </person:adjudicator>
        </admindecision:opinionby>
        <xsl:text disable-output-escaping="yes">&lt;bodytext&gt;</xsl:text>
        <xsl:element name="p">
                <xsl:apply-templates select="node()"/>
        </xsl:element>
    </xsl:template>
     
    <xsl:template match="text/text()[contains(substring(.,1,75),':--') or contains(substring(.,1,75),':—')][not(ancestor::l)][ancestor::case:judgmentbody]" priority="25">
        
          <xsl:value-of select="substring-after(.,':--')"/>         
        
        
    </xsl:template>
    
	   
</xsl:stylesheet>