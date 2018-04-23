<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:courtcase="http://www.lexisnexis.com/xmlschemas/content/legal/courtcase/1/" xmlns:person="http://www.lexisnexis.com/xmlschemas/content/shared/person/1/" 
xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="CA01_Rosetta_case.judges-LxAdv_courtcase.opinionby">
  <title>case:judgmentbody text can become courtcase:opinionby <lnpid>id-CA01-12223</lnpid></title>
  <body>
    <section id="mapping">
        <p><sourcexml>case:judgmentbody</sourcexml> text, depending on the context, can become
            <targetxml>courtcase:opinion/courtcase:opinionby/person:judge</targetxml>. When
            either <sourcexml>p/pnum</sourcexml> or <sourcexml>p[@indent="1st-line"]</sourcexml>
            or <sourcexml>p[being the first child of case:judgmentbody]</sourcexml> occurs
            within <sourcexml>case:judgmentbody</sourcexml>, search 75 text PDCATA characters
            (e.g. not xml tag markup) to see if colon double dash ":--" or colon emdash
            ":&#8212;" occurs within the first 75 text PDCATA characters and with or without a
            space character before double dash "--" or emdash "&#8212;". If so, this indicates a
            judges opinion which becomes
            <targetxml>courtcase:opinionby/person:judge</targetxml>. The text before the colon
            double dash ":--" or colon emdash ":&#8212;" becomes the contents of
            <targetxml>courtcase:opinionby/person:judge</targetxml>. An exception to this
            rule is if the text starts with square brackets around a number. In this case, leave
            the square brackets and number in the text. The colon and the double dash (or
            &#8212;) are stripped. The text following the colon double dash ":--" or colon
            emdash ":&#8212;" becomes <targetxml>bodytext/p/text</targetxml>. Close the current
            <targetxml>bodytext</targetxml> element in order to create the
            <targetxml>courtcase:opinionby</targetxml> and then reopen it. <note>If judge's
                name appears within emphasis tag, the same rules would apply as if the
                <sourcexml>emph</sourcexml> tag were not present in source. The emph tag is
                effectively pass through while placing its contents into
                <targetxml>courtcase:opinionby/person:judge</targetxml>.</note>
            <note>If more than one of these constructs occurs within
                <sourcexml>case:judgmentbody</sourcexml>, it is important to note that these
                become two separate <targetxml>courtcase:opinion</targetxml> elements, not two
                <targetxml>courtcase:opinion/courtcase:opinionby</targetxml> within the same
                <targetxml>courtcase:opinion</targetxml>. See example.</note>
            <note>If <sourcexml>l</sourcexml> is the child of
                <sourcexml>case:judgmentbody</sourcexml> then conversion should suppress
                <sourcexml>l</sourcexml>, <sourcexml>li</sourcexml> and
                <sourcexml>lilabel</sourcexml> and follow the above instruction for
                generation of <targetxml>courtcase:opinionby/person:judge</targetxml> from
                <sourcexml>p/pnum</sourcexml> or
                <sourcexml>p[@indent="1st-line"]</sourcexml> or <sourcexml>p[being the first
                    child of case:judgmentbody]</sourcexml>. See Example 4.</note>
        </p>
    </section>
    <example>
			<title>Example: 1</title>
			<codeblock>
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
&lt;courtcase:opinion&gt;
    &lt;bodytext&gt;
        ...
        &lt;p indent="1st-line"&gt;
            &lt;text&gt;The reasons of L Heureux-Dub, Bastarache and Binnie JJ. were delivered by&lt;/text&gt;
        &lt;/p&gt;
    &lt;/bodytext&gt;
    &lt;courtcase:opinionby&gt;
        &lt;person:judge&gt;BASTARACHE J. (dissenting)&lt;/person:judge&gt;
    &lt;/courtcase:opinionby&gt;
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
&lt;/courtcase:opinion&gt;
       </codeblock>
    </example>
      
      <example>
          <title>Example: 2</title>
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
&lt;courtcase:opinion&gt;
    &lt;courtcase:opinionby&gt;
        &lt;person:judge&gt;MCCREIGHT J.&lt;/person:judge&gt;
    &lt;/courtcase:opinionby&gt;
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
&lt;/courtcase:opinion&gt;
       </codeblock>
      </example>
      
      <example>
          <title>Example: 3</title>
          <codeblock>
&lt;case:judgmentbody&gt;
    &lt;p&gt;&lt;text align="center"&gt;Reasons for Judgment&lt;/text&gt;&lt;/p&gt;
    &lt;p i="5" indent="1st-line"&gt;&lt;text&gt;N.C. WITTMANN A.C.J.Q.B.:--&lt;/text&gt;&lt;/p&gt;
&lt;/case:judgmentbody&gt;                
       </codeblock>
          <b>Becomes</b>
          <codeblock>
&lt;courtcase:opinion&gt;
    &lt;bodytext&gt;
        &lt;p align="center"&gt;
            &lt;text&gt;Reasons for Judgment&lt;/text&gt;
        &lt;/p&gt;
    &lt;/bodytext&gt;
    &lt;courtcase:opinionby&gt;
        &lt;person:judge&gt;N.C. WITTMANN A.C.J.Q.B.&lt;/person:judge&gt;
    &lt;/courtcase:opinionby&gt;
&lt;/courtcase:opinion&gt;
       </codeblock>
      </example>
		<example>
			<title>Multiple <targetxml>courtcase:opinion</targetxml></title>
			<codeblock>
&lt;case:judgmentbody&gt;
    &lt;p i="5" indent="1st-line"&gt;&lt;text&gt;LAMBERT J.A.:--&lt;/text&gt;&lt;/p&gt;
    &lt;p&gt;&lt;text&gt;Mr. Justice Craig has summarized the facts. Mrs. Martin made a will in 1981 which revoked her 1971 will. The 1971 will
                                    left the residue of her estate, an amount in excess of $1,000,000, to her sister, nephews and nieces in Saskatchewan. The
                                    1981 will made specific bequests totaling $50,000 to seven of the Saskatchewan relatives and to a godson, and left the
                                    residue in equal shares to Donald Clark and Deane Finlayson, who had become her colleagues and advisors in a number of
                                    business ventures.&lt;/text&gt;&lt;/p&gt;
    &lt;p i="5" indent="1st-line"&gt;&lt;text&gt;ESSON J.A.:--&lt;/text&gt;&lt;/p&gt;
    &lt;p&gt;&lt;text&gt;I have read in draft the reasons prepared by Mr. Justice Craig. I agree with his conclusions, and generally with his
                                    reasons, but wish to add reasons of my own for concluding that the appeal ought to be allowed, and the will as executed be
                                    admitted to probate.&lt;/text&gt;&lt;/p&gt;
&lt;/case:judgmentbody&gt;				
			</codeblock>
            <b>Becomes</b>
			<codeblock>
&lt;courtcase:opinion&gt;
    &lt;courtcase:opinionby&gt;
        &lt;person:judge&gt;LAMBERT J.A.&lt;/person:judge&gt;
    &lt;/courtcase:opinionby&gt;
    &lt;bodytext&gt;
        &lt;p&gt;
            &lt;text&gt;Mr. Justice Craig has summarized the facts. Mrs. Martin made a will in 1981 which revoked her 1971 will. The 1971 will
                                    left the residue of her estate, an amount in excess of $1,000,000, to her sister, nephews and nieces in Saskatchewan. The
                                    1981 will made specific bequests totaling $50,000 to seven of the Saskatchewan relatives and to a godson, and left the
                                    residue in equal shares to Donald Clark and Deane Finlayson, who had become her colleagues and advisors in a number of
                                    business ventures.&lt;/text&gt;
        &lt;/p&gt;
    &lt;/bodytext&gt;
&lt;/courtcase:opinion&gt;
&lt;courtcase:opinion&gt;
    &lt;courtcase:opinionby&gt;
        &lt;person:judge&gt;ESSON J.A.&lt;/person:judge&gt;
    &lt;/courtcase:opinionby&gt;
    &lt;bodytext&gt;
        &lt;p&gt;
            &lt;text&gt;I have read in draft the reasons prepared by Mr. Justice Craig. I agree with his conclusions, and generally with his
                                    reasons, but wish to add reasons of my own for concluding that the appeal ought to be allowed, and the will as executed be
                                    admitted to probate.&lt;/text&gt;
        &lt;/p&gt;
    &lt;/bodytext&gt;
&lt;/courtcase:opinion&gt;				
			</codeblock>
		</example>
      
      <example>
          <title>Example:4</title>
          <codeblock>
&lt;case:judgmentbody&gt;
    &lt;l virtual-nesting="2"&gt;
        &lt;li&gt;
            &lt;lilabel/&gt;
            &lt;p&gt;
                &lt;text&gt;&lt;emph typestyle="bf"&gt;L.A. PATTILLO J.&lt;/emph&gt;:&amp;#x2014;&lt;/text&gt;
            &lt;/p&gt;
        &lt;/li&gt;
    &lt;/l&gt;
    &lt;p&gt;
        &lt;text&gt;
            &lt;emph typestyle="bu"&gt;Introduction&lt;/emph&gt;
        &lt;/text&gt;
    &lt;/p&gt;
    ...
&lt;/case:judgmentbody&gt;                
       </codeblock>
          <b>Becomes</b>
          <codeblock>
&lt;courtcase:opinion&gt;
    &lt;courtcase:opinionby&gt;
        &lt;person:judge&gt;L.A. PATTILLO J.&lt;/person:judge&gt;
    &lt;/courtcase:opinionby&gt;
    &lt;bodytext&gt;
        &lt;p&gt;
            &lt;text&gt;
                &lt;emph typestyle="bu"&gt;Introduction&lt;/emph&gt;
            &lt;/text&gt;
        &lt;/p&gt;
        ...
    &lt;/bodytext&gt;
&lt;/courtcase:opinion&gt;
       </codeblock>
      </example>
      
      <example>
          <title>Example: 5</title>
          <codeblock>
&lt;p&gt;
    &lt;pnum count="1"&gt;1&lt;/pnum&gt;
    &lt;text&gt;[1] &lt;emph typestyle="bf"&gt;SOUTHIN J.A.&lt;/emph&gt; (dissenting):&amp;mdash; There are before us two
        appeals from orders in judicial review proceedings dismissing the petitions.&lt;/text&gt;
&lt;/p&gt;                
       </codeblock>
          <b>Becomes</b>
          <codeblock>
&lt;courtcase:opinions&gt;
    &lt;courtcase:opinion&gt;
        &lt;courtcase:opinionby&gt;
            &lt;person:judge&gt;SOUTHIN J.A. (dissenting)&lt;/person:judge&gt;
        &lt;/courtcase:opinionby&gt;
        &lt;bodytext&gt;
            &lt;p&gt;
                &lt;desig value="1"&gt;
                    &lt;ref:para num="1" para-scheme="BCJ" para-scheme-type="reporter-abbrev"
                        &gt;1&lt;/ref:para&gt;
                &lt;/desig&gt;
                &lt;text&gt;[1] There are before us two appeals from orders in judicial review proceedings
                    dismissing the petitions.&lt;/text&gt;
            &lt;/p&gt;
        &lt;/bodytext&gt;
    &lt;/courtcase:opinion&gt;
&lt;/courtcase:opinions&gt;
       </codeblock>
      </example>
      <example>
          <title>Example:6</title>
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
        <person:judge>McLACHLIN C.J. and KARAKATSANIS, WAGNER and GASCON JJ. </person:judge>
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
      
    <section id="changes">
      <title>Changes</title>
        <p>2017-03-14 <ph id="change_20170314_RS">Update case:judgmentbody text can become courtcase:opinionby text to increase the PC character data limit from 50 to 75 and added example 6, Webstar # 6822593.</ph></p>
        <p>2016-05-25 <ph id="change_20160525_PS">Updated instruction and added example 5 when square brackets and number occures in the text. Applicable on CA01, Webstar # 6540035.</ph></p>
        <p>2016-02-17 
                <ph id="change_20160217_PS">Added note and example when
                        <sourcexml>case:judgmentbody</sourcexml> contains judge name in
                    <sourcexml>l</sourcexml> element, Applicable on CA01, Webstar #: 6439550.</ph></p>
        <p>2014-07-28 <ph id="change_20140728_PS">Updated instruction for identification to create
                        <targetxml>person:judge</targetxml>, with or without a space character
                    before double dash "--" or emdash "—". This immediately applies to
                    CA01.</ph></p>
        <p>2014-07-15 <ph id="change_20140715_PS">Updated instruction for identification to create <targetxml>person:judge</targetxml> markup, This immediately applies to CA01.</ph></p>
	  <p>2014-06-18 <ph id="change_20140618_SEP">Add note and example about creating multiple <targetxml>courtcase:opinion</targetxml>. <b>Phase 4B item# 232</b></ph></p>
		  <p>2014-05-19 <ph id="change_20140519_SEP">Clarification added for when Judge's name appears in emphasis tag.<b>R4.5 Item #1283.</b></ph></p>
		  <p>2014-04-30 <ph id="change_20140430_SEP">Initial revison.<b>R4.5 Item #1283.</b></ph></p>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA01-Cases\CA01_Rosetta_case.judgmentbody_text-LxAdv_courtcase.opinionby.dita  -->
	 

    <!--Vikas Rohilla : Updated as per the streamID CA01 for the courtcase:opinionby -->
   <!-- <xsl:template match="l[descendant::text[contains(substring(.,1,75),':-\-') or contains(substring(.,1,75),':—') or contains(substring(.,1,75),':&#x2014;')]][preceding-sibling::l[descendant::text[contains(substring(.,1,75),':-\-') or contains(substring(.,1,75),':—') or contains(substring(.,1,75),':&#x2014;')]] or preceding-sibling::p[descendant::text[contains(substring(.,1,75),':-\-') or contains(substring(.,1,75),':—') or contains(substring(.,1,75),':&#x2014;')]]][parent::case:judgmentbody]" priority="10">
        <xsl:variable name="opinionbytext" select="if(contains(.,':-\-')) then substring-before(.,':-\-') else if (contains(.,':&#x2014;')) then substring-before(.,':&#x2014;') else substring-before(.,':—')"/>
       <!-\- <xsl:text disable-output-escaping="yes">&lt;/bodytext&gt;</xsl:text>
        <xsl:text disable-output-escaping="yes">&lt;/courtcase:opinion&gt;</xsl:text>
        <xsl:text disable-output-escaping="yes">&lt;courtcase:opinion&gt;</xsl:text>
        <courtcase:opinionby>
            <person:judge>
                <xsl:variable name="judgetext">
                    <xsl:analyze-string select="$opinionbytext" regex="(^[0-9]+)([^>]+)">
                        <xsl:matching-substring>
                            <xsl:value-of select="regex-group(2)"/>
                        </xsl:matching-substring>
                        <xsl:non-matching-substring>
                            <xsl:value-of select="."/>
                        </xsl:non-matching-substring>
                    </xsl:analyze-string>
                </xsl:variable>
                <xsl:value-of select="normalize-space($judgetext)"/>
            </person:judge>
        </courtcase:opinionby>
        <xsl:text disable-output-escaping="yes">&lt;bodytext&gt;</xsl:text>-\->
        <xsl:if test="normalize-space(substring-after(.,':-\-'))!='' or normalize-space(substring-after(.,':—'))!='' or normalize-space(substring-after(.,':&#x2014;'))!=''">
        <list>
            <xsl:choose>
                <xsl:when test="child::p/child::text/child::*[1][self::emph]">
                    <xsl:apply-templates select="pnum"/>
                    <text>
                        <xsl:apply-templates select="text/node() except emph"/>
                    </text>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:apply-templates select="node()"/>        
                </xsl:otherwise>
            </xsl:choose>
        </list>
        </xsl:if>
    </xsl:template>
    
    <xsl:template match="l[descendant::text[contains(substring(.,1,75),':-\-') or contains(substring(.,1,75),':—') or contains(substring(.,1,75),':&#x2014;')]][parent::case:judgmentbody]" priority="6">
        <xsl:variable name="opinionbytext" select="if(contains(.,':-\-')) then substring-before(.,':-\-') else if (contains(.,':&#x2014;')) then substring-before(.,':&#x2014;') else substring-before(.,':—')"/>
<!-\-        <xsl:choose>
            <xsl:when test="not(descendant::p/pnum or descendant::p[@indent='1st-line'])">
                <p>
                    <text>
                        <xsl:value-of select="."/>
                    </text>
                </p>
            </xsl:when>-\->
            <!-\-<xsl:otherwise>-\->
                <!-\-<xsl:text disable-output-escaping="yes">&lt;/bodytext&gt;</xsl:text>
                <courtcase:opinionby>
                    <person:judge>
                        <xsl:variable name="judgetext">
                            <xsl:analyze-string select="$opinionbytext" regex="(^[0-9]+)([^>]+)">
                                <xsl:matching-substring>
                                    <xsl:value-of select="regex-group(2)"/>
                                </xsl:matching-substring>
                                <xsl:non-matching-substring>
                                    <xsl:value-of select="."/>
                                </xsl:non-matching-substring>
                            </xsl:analyze-string>
                        </xsl:variable>
                        <xsl:value-of select="normalize-space($judgetext)"/>
                    </person:judge>
                </courtcase:opinionby>-\->
            <!-\-</xsl:otherwise>-\->
        <!-\-</xsl:choose>-\->
        <!-\-<xsl:text disable-output-escaping="yes">&lt;bodytext&gt;</xsl:text>-\->
        <xsl:if test="normalize-space(substring-after(.,':-\-'))!='' or normalize-space(substring-after(.,':—'))!='' or normalize-space(substring-after(.,':&#x2014;'))!=''">
        <list>
            <xsl:choose>
                <xsl:when test="child::p/child::text/child::*[1][self::emph]">
                    <xsl:apply-templates select="pnum"/>
                    <text>
                        <xsl:apply-templates select="text/node() except emph"/>
                    </text>
                </xsl:when>
                
                <xsl:otherwise>
                    <xsl:apply-templates select="node()"/>
                </xsl:otherwise>
            </xsl:choose>            
        </list>       
        </xsl:if>
    </xsl:template>-->
    
    <xsl:template match="p[not(preceding-sibling::*[1][self::*])][descendant::text[contains(substring(.,1,75),':--') or contains(substring(.,1,75),':—') or contains(substring(.,1,75),':&#x2014;')]][parent::case:judgmentbody]" priority="8">
        <xsl:variable name="opinionbytext" select="if(contains(.,':--')) then substring-before(.,':--') else if (contains(.,':&#x2014;')) then substring-before(.,':&#x2014;') else substring-before(.,':—')"/>
        <!--<xsl:text disable-output-escaping="yes">&lt;/bodytext&gt;</xsl:text>
        <xsl:text disable-output-escaping="yes">&lt;/courtcase:opinion&gt;</xsl:text>
        <xsl:text disable-output-escaping="yes">&lt;courtcase:opinion&gt;</xsl:text>
        --><!--<courtcase:opinionby>
            <person:judge>
                <xsl:variable name="judgetext">
                    <xsl:analyze-string select="normalize-space($opinionbytext)" regex="(^[0-9]+)([^>]+)">
                        <xsl:matching-substring>
                            <xsl:value-of select="regex-group(2)"/>
                        </xsl:matching-substring>
                        <xsl:non-matching-substring>
                            <xsl:value-of select="."/>
                        </xsl:non-matching-substring>
                    </xsl:analyze-string>
                </xsl:variable>
                <xsl:value-of select="normalize-space($judgetext)"/>
            </person:judge>
        </courtcase:opinionby>-->
        <!--<xsl:text disable-output-escaping="yes">&lt;bodytext&gt;</xsl:text>-->
        <xsl:if test="normalize-space(substring-after(.,':--'))!='' or normalize-space(substring-after(.,':—'))!='' or normalize-space(substring-after(.,':&#x2014;'))!=''">
        <p>
            <xsl:choose>
                <xsl:when test="child::text/child::*[1][self::emph]">
                    <xsl:apply-templates select="pnum"/>
                    <text>
                        <!-- Awantika: 2017-11-27- Updated except condition for emph by addeing text as a parent
                        Webstar# 7024568-->
                        <xsl:apply-templates select="text/node() except text/emph"/>
                    </text>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:apply-templates select="node()"/>
                </xsl:otherwise>
            </xsl:choose>    
        </p>
        </xsl:if>
    </xsl:template>
    <!--SS 2017-11-21: Added pnum condition for create judgename in output-->
    <xsl:template match="p[not(preceding-sibling::*[1][self::*]) or child::pnum][descendant::text[contains(substring(.,1,75),':--') or contains(substring(.,1,75),':—') or contains(substring(.,1,75),':&#x2014;')]][parent::case:judgmentbody]" priority="4">
        <xsl:variable name="opinionbytext" select="if(contains(.,':--')) then substring-before(.,':--') else if (contains(.,':&#x2014;')) then substring-before(.,':&#x2014;') else substring-before(.,':—')"/>
        <!--<xsl:text disable-output-escaping="yes">&lt;/bodytext&gt;</xsl:text>-->
        <!--<courtcase:opinionby>
            <person:judge>
                <xsl:variable name="judgetext">
                    <xsl:analyze-string select="$opinionbytext" regex="([0-9]+)([^>]+)">
                        <xsl:matching-substring>
                            <xsl:value-of select="regex-group(2)"/>
                        </xsl:matching-substring>
                        <xsl:non-matching-substring>
                            <xsl:value-of select="."/>
                        </xsl:non-matching-substring>
                    </xsl:analyze-string>
                </xsl:variable>
                <xsl:value-of select="normalize-space($judgetext)"/>
            </person:judge>
        </courtcase:opinionby>-->
        <!--<xsl:text disable-output-escaping="yes">&lt;bodytext&gt;</xsl:text>-->
        <xsl:if test="normalize-space(substring-after(.,':--'))!='' or normalize-space(substring-after(.,':—'))!='' or normalize-space(substring-after(.,':&#x2014;'))!=''">
        <p>
            <xsl:choose>
                <xsl:when test="child::text/child::*[1][self::emph]">
                    <xsl:apply-templates select="pnum"/>
                    <text>
                        <!-- Awantika: 2018-01-24- updated except emph from text/(node() except emph) condition as emph texts were getting dropped. Webstar# 7100685)  -->
                        <xsl:apply-templates select="text/(node() except emph[following-sibling::text()[contains(.,':--') or contains(.,':&#x2014;')]])"/>
                    </text>
                </xsl:when>
                <xsl:otherwise>                    
                    <xsl:apply-templates select="node()"/>
                </xsl:otherwise>
            </xsl:choose>        
        </p>
        </xsl:if>
    </xsl:template>
    <!--SS 2017-11-21: Added pnum condition for create judgename in output-->
    <!--<xsl:template match="text/text()[contains(substring(.,1,75),':-\-') or contains(substring(.,1,75),':—') or contains(substring(.,1,75),':&#x2014;')][ancestor::p[not(preceding-sibling::*[1][self::*]) or child::pnum]][ancestor::case:judgmentbody]" priority="5">
        <xsl:variable name="replaced_string" select="if(contains(.,':-\-')) then substring-after(.,':-\-') else if (contains(.,':&#x2014;')) then substring-after(.,':&#x2014;') else substring-after(.,':—')"/>
        <xsl:value-of select="$replaced_string"/>
    </xsl:template>-->
    
    <xsl:template match="text/text()[contains(substring(.,1,75),':--') or contains(substring(.,1,75),':—') or contains(substring(.,1,75),':&#x2014;')][ancestor::p[not(preceding-sibling::*[1][self::*]) or child::pnum]][ancestor::case:judgmentbody]" priority="5">
        <!--<xsl:variable name="replaced_string" select="if(contains(.,':-\-') and matches(.,'^[\[]\d+[\]]')) then concat(substring-before(.,' '),substring-after(.,':-\-')) else if (contains(.,':&#x2014;') and  matches(.,'^[\[]\d+[\]]')) then concat(substring-before(.,' '),substring-after(.,':&#x2014;')) else if (contains(.,':—') and  matches(.,'^[\[]\d+[\]]')) then concat(substring-before(.,' '),substring-after(.,':—')) else substring-after(.,':—')"/>-->
        <xsl:variable name="replaced_string" select="if(matches(.,'^[\[]\d+[\]]') and matches(.,':--')) then concat(substring-before(.,' '),substring-after(.,':--')) else if (contains(.,':&#x2014;') and  matches(.,'^[\[]\d+[\]]')) then concat(substring-before(.,' '),substring-after(.,':&#x2014;')) else if (contains(.,':—') and  matches(.,'^[\[]\d+[\]]')) then concat(substring-before(.,' '), substring-after(.,':—')) else if(contains(.,':--')) then substring-after(.,':--') else if (contains(.,':&#x2014;')) then substring-after(.,':&#x2014;') else if (contains(.,':—')) then substring-after(.,':—') else ."/>
        <xsl:value-of select="$replaced_string"/>
    </xsl:template>
    

</xsl:stylesheet>