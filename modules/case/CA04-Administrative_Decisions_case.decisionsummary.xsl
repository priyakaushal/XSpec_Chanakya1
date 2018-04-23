<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:casesum="http://www.lexisnexis.com/xmlschemas/content/legal/case-summary/1/" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="case.decisionsummary">
    <title>case:decisionsummary <lnpid>id-CA04-13421</lnpid></title>
    <body>
        <section>
            <ul>
                <li class="- topic/li ">
                    <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:decisionsummary</sourcexml> becomes <targetxml class="+ topic/keyword xml-d/targetxml ">casesum:summaries/casesum:decisionsummary</targetxml>
                    <note class="- topic/note ">Every element occuring within <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:decisionsummary</sourcexml> should be handled via <targetxml class="+ topic/keyword xml-d/targetxml ">bodytext</targetxml> within
                            <targetxml class="+ topic/keyword xml-d/targetxml ">casesum:decisionsummary</targetxml> except <sourcexml class="+ topic/keyword xml-d/sourcexml ">heading</sourcexml>
                        element.</note>
                    <pre xml:space="preserve" class="- topic/pre ">

&lt;case:decisionsummary&gt;
    &lt;p&gt;
      &lt;text&gt;SUMMARY &lt;/text&gt;
    &lt;/p&gt;
    &lt;p&gt;
      &lt;text&gt;The Department of Environmental Protection assessed a preliminary penalty of $9,000.00 against the Appellant for contraventions of the pesticides regulation. Following a meeting with the Appellant, the Director assessed a final penalty of $6,000.00. The Appellant eventually admitted contravening the regulations but urged the Board to reduce the penalty based on his innocence and/or lack of knowledge, or notice or deficiencies in vendor education received from Department officials.&lt;/text&gt;      
    &lt;/p&gt;
    &lt;p&gt;
      &lt;text&gt;The Board confirms the decision of the Director of Pollution Control. &lt;/text&gt;
    &lt;/p&gt;
&lt;/case:decisionsummary&gt;

<b class="+ topic/ph hi-d/b ">Becomes</b>   

&lt;casesum:summaries&gt;
    &lt;casesum:decisionsummary&gt;
        &lt;p&gt;
          &lt;text&gt;SUMMARY &lt;/text&gt;
        &lt;/p&gt;
        &lt;p&gt;
          &lt;text&gt;The Department of Environmental Protection assessed a preliminary penalty of $9,000.00 against the Appellant for contraventions of the pesticides regulation. Following a meeting with the Appellant, the Director assessed a final penalty of $6,000.00. The Appellant eventually admitted contravening the regulations but urged the Board to reduce the penalty based on his innocence and/or lack of knowledge, or notice or deficiencies in vendor education received from Department officials. &lt;/text&gt;
        &lt;/p&gt;
        &lt;p&gt;
          &lt;text&gt;The Board confirms the decision of the Director of Pollution Control. &lt;/text&gt;
        &lt;/p&gt;
    &lt;/casesum:decisionsummary&gt;
&lt;/casesum:summaries&gt;
</pre>
                </li>
            </ul>
        </section>
        <section>
            <p>When <sourcexml>case:decisionsummary/heading/title</sourcexml> begins with any of the
                following text: <ul>
                    <li><sourcexml>"Court Summary:" (or the French version, "Résumé de la
                            Cour :")</sourcexml></li>
                    <li><sourcexml>Commission Summary:</sourcexml></li>
                    <li><sourcexml>Board Summary:</sourcexml></li>
                    <li><sourcexml>Tribunal Summary:</sourcexml></li>
                    <li><sourcexml>Executive Summary:</sourcexml></li>
                    <li><sourcexml>Commissioner Summary: </sourcexml></li>
                    <li><sourcexml>Résumé du tribunal :</sourcexml></li>
                    <li><sourcexml>Sommaire du tribunal :</sourcexml></li>
                </ul> then use <targetxml>casesum:courtsummary</targetxml> instead of
                    <targetxml>casesum:decisionsummary</targetxml>.  </p>
            <!--<p>Also, do the same when: <sourcexml>metaitem @name="SRCNAME" @value="SCJ "</sourcexml>
and, <sourcexml>casesum:decisionsummary/bodytext/p/text/emph</sourcexml> contains "Subsequent History:" ("Historique subs&#xe9;quent:" in French) or "Court Catchwords:" ("Indexation de la Cour:" in French).</p>-->
        </section>
        <note>
            <ul>
                <li>If there is a scenario where
                        <sourcexml>case:decisionsummary/heading/title</sourcexml> begins with any of
                    the above given texts AND <sourcexml>p/text</sourcexml> containing a sentence
                    beginning with "HELD:" or the French language version "DISPOSITIF :", in all
                    caps, with or without a space character before the colon, or same within emph
                    tag (e.g. "<sourcexml>emph typestyle="bf"</sourcexml>"), then for mapping use
                        <targetxml>casesum:courtsummary</targetxml> instead of
                        <targetxml>casesum:decisionsummary</targetxml>.</li>
                <li>If for above scenario <sourcexml>case:decisionsummary</sourcexml> contains
                        <sourcexml>figure</sourcexml> as its child then map it to
                        <targetxml>p/text/figure</targetxml>, For more clarification please refer
                    the example below. </li>
                <li>If for above scenario <sourcexml>case:decisionsummary</sourcexml> contains
                        <sourcexml>l</sourcexml> as its child then map it to
                        <targetxml>p/list</targetxml>, For more clarification please refer the
                    example below. </li>
            </ul>
        </note>
        <pre>
<b>Source XML</b>
      
&lt;case:decisionsummary&gt;
    &lt;heading&gt;
        &lt;title&gt;Tribunal Summary:&lt;/title&gt;
    &lt;/heading&gt;
    &lt;p&gt;
        &lt;text&gt;This arbitration involves the rate of pay for working overtime on a Named Holiday, or for
            working on a Named Holiday which is a designated Day of Rest. The collective agreement
            provides that work on a Named Holiday will be paid at 1.5 times the Basic Rate of Pay (or 2.0
            times the Basic Rate of Pay for two "Super Stats") plus other time off. Overtime is paid at
            2.0 times the employee's Basic Rate of Pay. Work on a designated Day of Rest is also paid at
            2.0 times the Basic Rate of Pay. The Union's position was that an employee working overtime on
            a Named Holiday should be paid 2.5 times their Basic Rate of Pay (or 3.0 times if the Named
            Holiday is a Super Stat), calculated as follows: &lt;/text&gt;
    &lt;/p&gt;
    &lt;figure&gt;
        &lt;p&gt;
            &lt;text align="left"&gt;
                &lt;inlineobject filename="CA00000005824190_00034502-0001.jpg" type="image"
                    attachment="ln-server"/&gt;
            &lt;/text&gt;
        &lt;/p&gt;
    &lt;/figure&gt;
    &lt;p&gt;
        &lt;text&gt;
            &lt;glp:note&gt;
                &lt;p nl="0"&gt;
                    &lt;text&gt;[Editor's Note: Notes&lt;fnr fnrtoken="fnr-1" fntoken="fn-1"&gt;1&lt;/fnr&gt;;&lt;fnr
                        fnrtoken="fnr-2" fntoken="fn-2"&gt;2&lt;/fnr&gt; are included in the image above]&lt;/text&gt;
                &lt;/p&gt;
            &lt;/glp:note&gt;
        &lt;/text&gt;
    &lt;/p&gt;
    &lt;p&gt;
        &lt;text&gt;The Employer's position was that the rate of pay should be the highest rate of pay
            applicable to the circumstances--mainly, 2.0 times the Basic Rate of Pay. &lt;/text&gt;
    &lt;/p&gt;
    &lt;p&gt;
        &lt;text&gt;HELD: The Employer's interpretation of the collective agreement is correct. &lt;/text&gt;
    &lt;/p&gt;
&lt;/case:decisionsummary&gt;</pre>
        <pre><b>Target XML</b>
 
&lt;casesum:courtsummary&gt;
    &lt;heading&gt;
        &lt;title&gt;Tribunal Summary:&lt;/title&gt;
    &lt;/heading&gt;
    &lt;p&gt;
        &lt;text&gt;This arbitration involves the rate of pay for working overtime on a Named Holiday, or for
            working on a Named Holiday which is a designated Day of Rest. The collective agreement
            provides that work on a Named Holiday will be paid at 1.5 times the Basic Rate of Pay (or 2.0
            times the Basic Rate of Pay for two "Super Stats") plus other time off. Overtime is paid at
            2.0 times the employee's Basic Rate of Pay. Work on a designated Day of Rest is also paid at
            2.0 times the Basic Rate of Pay. The Union's position was that an employee working overtime on
            a Named Holiday should be paid 2.5 times their Basic Rate of Pay (or 3.0 times if the Named
            Holiday is a Super Stat), calculated as follows: &lt;/text&gt;
    &lt;/p&gt;
    &lt;p&gt;
        &lt;text&gt;
            &lt;figure&gt;
                &lt;ref:inlineobject&gt;
                    &lt;ref:locator&gt;
                        &lt;ref:locator-key&gt;
                            &lt;ref:key-name name="object-key"/&gt;
                            &lt;ref:key-value value="X-Y-CA00000005824190_00034502-0001"/&gt;   &lt;!-- X and Y are LNI and SMI values obtained from CSSM --&gt;
                        &lt;/ref:locator-key&gt;
                        &lt;ref:locator-params&gt;
                            &lt;proc:param name="componentseq" value="1"/&gt;
                            &lt;proc:param name="object-type" value="image"/&gt; &lt;!-- allowable values: “image”; (from .jpg, .gif, .png, .bmp)--&gt;
                            &lt;proc:param name="object-smi" value=""/&gt;    &lt;!-- This @value assignment is done by conversion program --&gt;
                        &lt;/ref:locator-params&gt;
                    &lt;/ref:locator&gt;
                &lt;/ref:inlineobject&gt;
            &lt;/figure&gt;
        &lt;/text&gt;
    &lt;/p&gt;
    &lt;p&gt;
        &lt;text&gt;
            &lt;inlinenote notetype="editor-note"&gt;
                [Editor's Note: Notes
                &lt;footnote-ref anchoridref="fnr-1"&gt;
                    &lt;ref:anchor id="fnr-1"/&gt;  
                    &lt;label&gt;1&lt;/label&gt;
                &lt;/footnote-ref&gt;
                &lt;footnote-ref anchoridref="fn-2"&gt;
                    &lt;ref:anchor id="fn-2"/&gt;   
                    &lt;label&gt;2&lt;/label&gt;
                &lt;/footnote-ref&gt;
                are included in the image above]
            &lt;/inlinenote&gt;
        &lt;/text&gt;
    &lt;/p&gt;
    &lt;p&gt;
        &lt;text&gt;The Employer's position was that the rate of pay should be the highest rate of pay
            applicable to the circumstances--mainly, 2.0 times the Basic Rate of Pay. &lt;/text&gt;
    &lt;/p&gt;
    &lt;p&gt;
        &lt;text&gt;HELD: The Employer's interpretation of the collective agreement is correct.&lt;/text&gt;
    &lt;/p&gt;
&lt;/casesum:courtsummary&gt;
</pre>
       
        <pre> <b>Example when <sourcexml>case:decisionsummary</sourcexml> has <sourcexml>l</sourcexml> as its child element.

</b><b>Source XML</b>
&lt;case:decisionsummary&gt;
    &lt;heading&gt;
        &lt;title&gt;Tribunal Summary:&lt;/title&gt;
    &lt;/heading&gt;
    &lt;p&gt;
        &lt;text&gt;
            &lt;emph typestyle="bf"&gt;Noteworthy Decision Summary&lt;/emph&gt;
        &lt;/text&gt;
    &lt;/p&gt;
    &lt;l virtual-nesting="3"&gt;
        &lt;li&gt;
            &lt;lilabel&gt;*&lt;/lilabel&gt;
            &lt;p&gt;
                &lt;text&gt;The panel in &lt;emph typestyle="it"&gt;WCAT Decision #2005-01984&lt;/emph&gt; determined
                    that the standard of review for jurisdictional issues at common law is
                    correctness and that paragraph 58(2)(c) of the &lt;emph typestyle="it"
                        &gt;Administrative Tribunals Act&lt;/emph&gt; (ATA), which calls for a correctness
                    standard, may reasonably be interpreted as applying to jurisdictional
                    issues.&lt;/text&gt;
            &lt;/p&gt;
        &lt;/li&gt;
    &lt;/l&gt;
&lt;/case:decisionsummary&gt;</pre>
        <pre><b>Target XML</b>
&lt;casesum:courtsummary&gt;
    &lt;heading&gt;
        &lt;title&gt;Tribunal Summary:&lt;/title&gt;
    &lt;/heading&gt;
    &lt;p&gt;
        &lt;text&gt;&lt;emph typestyle="bf"&gt;Noteworthy Decision Summary&lt;/emph&gt;&lt;/text&gt;
    &lt;/p&gt;
    &lt;p&gt;
      &lt;list&gt;
        &lt;listitem&gt;
            &lt;label&gt;*&lt;/label&gt;
            &lt;bodytext&gt;
                &lt;p&gt;
                    &lt;text&gt;The panel in &lt;emph typestyle="it"&gt;WCAT Decision #2005-01984&lt;/emph&gt; determined
                        that the standard of review for jurisdictional issues at common law is
                        correctness and that paragraph 58(2)(c) of the &lt;emph typestyle="it"
                            &gt;Administrative Tribunals Act&lt;/emph&gt; (ATA), which calls for a correctness
                        standard, may reasonably be interpreted as applying to jurisdictional
                        issues.&lt;/text&gt;
                &lt;/p&gt;
            &lt;/bodytext&gt;
        &lt;/listitem&gt;
      &lt;/list&gt;
    &lt;/p&gt;
&lt;/casesum:courtsummary&gt;</pre>
        <section>
            <p>For any <sourcexml>p/text</sourcexml> containing a sentence beginning with "HELD:" or
                the French language version "DISPOSITIF :", in all caps, with or without a space
                character before the colon, or same within emph tag (e.g. "<sourcexml>emph
                    typestyle="bf"</sourcexml>"), the sentence becomes
                    <targetxml>casesum:disposition/p/text</targetxml> beginning with "HELD:" or
                French language equivalent. That is, isolate the holdings sentence based on looking
                in <sourcexml>case:decisionsummary</sourcexml> for the sentence beginning "HELD:"
                (or French language version "DISPOSITIF :") in all capital letters and and placing
                the end tags after the next period or dash character followed by space, followed by
                an upper-case letter, that completes the sentence.  (i.e. the mark-up would surround
                only one sentence.) The preceding and following space dash dash space, if any,
                should be converted to period space. See the two examples. </p><title>Example
                2</title>
            <codeblock>
&lt;case:decisionsummary&gt;
    &lt;p&gt;
        &lt;text&gt;This was an appeal from the denial of injunctive relief, and a cross-appeal from a declaration that the defendant was violating the
            municipal by-law by operating a commercial greenhouse in an area zoned for residential use. For the facts and the decision appealed, see
            88 DRS P27-019. &lt;/text&gt;
    &lt;/p&gt;
    &lt;p&gt;
        &lt;text&gt;HELD: The appeal was allowed and the cross-appeal was dismissed. The defendant claimed that his use of the land was a valid continuing
            non-conforming use of the land. However, under the former by-law, the land was zoned for residential use. Certain farming operations were
            expressly prohibited by the by-law; greenhouse operation was not one of these. The defendant's claim that this legitimized his use was
            rejected. The whole scheme of the by-law was to limit this zone to residential use, and the by-law clearly did not contemplate use for a
            greenhouse. The defendant's use had been illegal under the former by-law, and therefore could not be protected as a continuing valid but
            non-conforming use. Under s. 49 of the Planning Act, the municipality had the same power to enforce a by-law as the Minister. This
            included, under s. 53 of the Act, the right to injunctive relief. An injunction restraining the defendant's continued use of the land as a
            commercial greenhouse operation was granted. &lt;/text&gt;
    &lt;/p&gt;
&lt;/case:decisionsummary&gt;
       </codeblock>
            <b>becomes</b>
            <codeblock>
&lt;casesum:decisionsummary&gt;
    &lt;bodytext&gt;
        &lt;p&gt;
            &lt;text&gt;This was an appeal from the denial of injunctive relief, and a cross-appeal from a
                declaration that the defendant was violating the municipal by-law by operating a
                commercial greenhouse in an area zoned for residential use. For the facts and the
                decision appealed, see 88 DRS P27-019. &lt;/text&gt;
        &lt;/p&gt;
    &lt;/bodytext&gt;
    &lt;casesum:disposition&gt;
        &lt;p&gt;
            &lt;text&gt;HELD: The appeal was allowed and the cross-appeal was dismissed. &lt;/text&gt;
        &lt;/p&gt;
    &lt;/casesum:disposition&gt;
    &lt;bodytext&gt;
        &lt;p&gt;
            &lt;text&gt; The defendant claimed that his use of the land was a valid continuing
                non-conforming use of the land. However, under the former by-law, the land was zoned
                for residential use. Certain farming operations were expressly prohibited by the
                by-law; greenhouse operation was not one of these. The defendant's claim that this
                legitimized his use was rejected. The whole scheme of the by-law was to limit this
                zone to residential use, and the by-law clearly did not contemplate use for a
                greenhouse. The defendant's use had been illegal under the former by-law, and
                therefore could not be protected as a continuing valid but non-conforming use. Under
                s. 49 of the Planning Act, the municipality had the same power to enforce a by-law
                as the Minister. This included, under s. 53 of the Act, the right to injunctive
                relief. An injunction restraining the defendant's continued use of the land as a
                commercial greenhouse operation was granted. &lt;/text&gt;
        &lt;/p&gt;
    &lt;/bodytext&gt;
&lt;/casesum:decisionsummary&gt;

       </codeblock>
        </section>
        <example>
            <title>French language example with space before colon, and preceding and follwing dash
                dash converted to period space:</title>
            <codeblock>

&lt;bodytext&gt;
&lt;p&gt;
&lt;text&gt;Demande d'injonction interlocutoire -- Bérubé publie et distribue depuis 1973 un journal de quartier, l'Information Centre-Ville -- Il tire son revenu de la publicité apparaissant dans le journal -- Son fils était associé avec lui jusqu'à ce qu'il quitte le journal et en publie un à son tour, l'Hebdo Centre-Ville (L'Hebdo) -- L'Hebdo vise la même clientèle, le même secteur de la ville, sollicite les mêmes commanditaires et met l'accent, dans sa présentation, sur l'expression Centre-Ville, comme le fait l'Information Centre-Ville -- Bérubé demande qu'il soit ordonné à son fils et son associé de cesser la distribution de l'Hebdo -- DISPOSITIF : Demande accueillie -- Même si la marque de commerce Centre-ville n'est pas enregistrée, elle appartient à Bérubé depuis 1973 -- Le fils et son associé ont concurrencé Bérubé d'une façon non permise par la Loi concernant les marques de commerce -- La balance des inconvénients penche en faveur de Bérubé. &lt;/text&gt;
&lt;/p&gt;
&lt;/bodytext&gt;

       </codeblock>
            <b>becomes</b>
            <codeblock>

&lt;bodytext&gt;
	&lt;p&gt;
		&lt;text&gt;Demande d'injonction interlocutoire -- Bérubé publie et distribue depuis 1973 un journal de quartier, l'Information Centre-Ville -- Il tire son revenu de la publicité apparaissant dans le journal -- Son fils était associé avec lui jusqu'à ce qu'il quitte le journal et en publie un à son tour, l'Hebdo Centre-Ville (L'Hebdo) -- L'Hebdo vise la même clientèle, le même secteur de la ville, sollicite les mêmes commanditaires et met l'accent, dans sa présentation, sur l'expression Centre-Ville, comme le fait l'Information Centre-Ville -- Bérubé demande qu'il soit ordonné à son fils et son associé de cesser la distribution de l'Hebdo.&lt;/text&gt;
	&lt;/p&gt;
&lt;/bodytext&gt;
&lt;casesum:disposition&gt;
	&lt;p&gt;
		&lt;text&gt;DISPOSITIF : Demande accueillie. &lt;/text&gt; 
	&lt;/p&gt;
&lt;/casesum:disposition&gt;
&lt;bodytext&gt;
	&lt;p&gt;
		&lt;text&gt;Même si la marque de commerce Centre-ville n'est pas enregistrée, elle appartient à Bérubé depuis 1973 -- Le fils et son associé ont concurrencé Bérubé d'une façon non permise par la Loi concernant les marques de commerce -- La balance des inconvénients penche en faveur de Bérubé. &lt;/text&gt;
	&lt;/p&gt;
&lt;/bodytext&gt;

       </codeblock>
        </example>
        <section>
            <title>Changes</title>
            <p>2014-08-27: <ph id="change_20140827_AS">Updated instruction for case:decisionsummary to place the period sign after completion of sentence ... <b>P4 Issue #323</b></ph></p>
            <p>2014-08-08: <ph id="change_20140808_AS">Updated instruction for case:decisionsummary having l as its child element... <b>P4 Issue #314</b></ph></p>
            <p>2014-08-07: <ph id="change_20140807_AS">Updated instruction for casesum:disposition -
                    Space appearing before the "." .. <b>P4 Issue #302</b></ph></p>
            <p>2014-07-28: <ph id="change_20140728_AS">Added instruction to handle "HELD:" keyword
                    in case:decisionsummary.. <b>R4.5 Issue #1584</b></ph></p>
            <p>2014-07-08: <ph id="change_20140708_AS">Added the additional phrases from the
                    attached Word document in addition to "Court Summary:"<b>R4.5 Issue
                    #1584</b></ph>.</p>
            <p>2014-06-10: <ph id="change_20140610_SEP">Loosened instruction to convert
                        <sourcexml>p/text</sourcexml> beginning with "HELD:" into
                        <targetxml>casesum:disposition/p/text</targetxml>. Allow dash to end first
                    sentence. Allow <sourcexml>emph</sourcexml> around HELD text. Allow space before
                    colon. Allow French language version. Convert preceding and following space dash
                    dash with a period. Add example.<b>R4.5 Issue #1588</b></ph>.</p>
            <p>2014-04-24: <ph id="change_20140424_SEP">Updated instruction to convert
                        <sourcexml>p/text</sourcexml> beginning with "HELD:" into
                        <targetxml>casesum:disposition/p/text</targetxml><b>R4.5 Issue
                    #1355</b></ph>.</p>
            <p>2014-04-24: <ph id="change_20140424b_SEP">Provide a "Jump To Link" for Court Summary
                    by use of target <targetxml>casesum:courtsummary</targetxml> instead of
                        <targetxml>casesum:decisionsummary</targetxml><b>R4.5 Issue
                #1355</b></ph>.</p>
        </section>
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA04-Administrative_Decisions\case.decisionsummary.dita  -->
	<!--<xsl:message>CA04-Administrative_Decisions_case.decisionsummary.xsl requires manual development!</xsl:message>--> 
    
    <xsl:template match="case:decisionsummary">
        <casesum:summaries>
            <xsl:choose>
                <xsl:when
                    test="starts-with(heading/title, 'Court Summary:') or starts-with(heading/title, 'Résumé de la Cour :') or starts-with(heading/title, 'Commission Summary:') or starts-with(heading/title, 'Board Summary:') or starts-with(heading/title, 'Tribunal Summary:') or starts-with(heading/title, 'Executive Summary:') or starts-with(heading/title, 'Commissioner Summary:') or starts-with(heading/title, 'Résumé du tribunal :') or starts-with(heading/title, 'Sommaire du tribunal :')">
                    <xsl:element name="casesum:courtsummary">                       
                        <xsl:apply-templates select="@* | node()"/>
                    </xsl:element>
                </xsl:when>
                <!--<xsl:when
                    test="heading/title[contains(., 'Subsequent History') or contains(., 'Historique subséquent') or contains(., 'Court Catchwords') or contains(., 'Indexation de la Cour')] or child::p[1]/text[1]/emph[1][contains(., 'Subsequent History') or contains(., 'Historique subséquent') or contains(., 'Court Catchwords') or contains(., 'Indexation de la Cour')]">
                    <xsl:element name="casesum:courtsummary">
                        <xsl:apply-templates select="@* | node()"/>
                    </xsl:element>
                </xsl:when>-->
                
                <xsl:otherwise>
                    <casesum:decisionsummary>
                        <xsl:apply-templates select="@*"/>
                        <xsl:apply-templates select="heading"/>
                        <!--<xsl:if test="p[text[not(starts-with(., 'HELD:') or starts-with(., 'DISPOSITIF :'))]] | p[text/emph[not(starts-with(., 'HELD:') or starts-with(., 'DISPOSITIF:'))]]">
                            <bodytext>                                   
                                <xsl:apply-templates select="p[text[not(starts-with(., 'HELD:') or starts-with(., 'DISPOSITIF :'))]] | p[text/emph[not(starts-with(., 'HELD:') or starts-with(., 'DISPOSITIF:'))]]"/> 
                            </bodytext>
                        </xsl:if>-->
                        <xsl:for-each select="p">
                            <xsl:choose>
                                <xsl:when test=".[child::*:text[starts-with(.,'HELD:') or starts-with(.,'DISPOSITIF :') ]][parent::case:decisionsummary]">
                                    <casesum:disposition>
                                        <p>
                                            <text>
                                                <xsl:choose>
                                                    <xsl:when test=".[child::text[starts-with(., 'Held:') or starts-with(., 'HELD:')]]">
                                                        <xsl:value-of select="replace(substring-before(child::text[starts-with(., 'Held:') or starts-with(., 'HELD:')], '.'),'--','-')"/>
                                                    </xsl:when>
                                                    <xsl:otherwise>
                                                        <xsl:value-of select="replace(substring-before(.[child::text[starts-with(., 'DISPOSITIF : ') or starts-with(., 'Dispositif : ')]], '.'),'--','-')"/>
                                                    </xsl:otherwise>
                                                </xsl:choose>
                                                <xsl:text>.</xsl:text>
                                            </text>
                                        </p>
                                    </casesum:disposition>
                                    <bodytext>
                                        <p>
                                            <text>
                                                <xsl:value-of select="substring-after(.[text[starts-with(., 'HELD:') or starts-with(., 'Held:') or starts-with(., 'DISPOSITIF :') or starts-with(., 'Dispositif :')]], '.')"/>
                                            </text>
                                        </p>
                                    </bodytext>
                                </xsl:when>
                                <xsl:when test=".[child::*:text/emph[starts-with(., 'HELD:') or starts-with(., 'Held:') or starts-with(., 'DISPOSITIF:') or starts-with(., 'Dispositif:')]]">
                                    <xsl:if test=".[child::*:text/emph[starts-with(., 'HELD:') or starts-with(., 'Held:') or starts-with(., 'DISPOSITIF:') or starts-with(., 'Dispositif:')][preceding-sibling::text()]]">
                                    <bodytext>
                                        <p>
                                            <text>
                                                <xsl:if test=".[child::*:text/emph[starts-with(., 'Held:')]]">
                                                    <xsl:value-of select="replace(substring-before(.[child::*:text/emph[starts-with(., 'Held:')]],'Held:'),'--','-')"></xsl:value-of>
                                                </xsl:if>
                                                <xsl:if test=".[child::*:text/emph[starts-with(., 'HELD:')]]">
                                                    <xsl:value-of select="replace(substring-before(.[child::*:text/emph[starts-with(., 'HELD:')]],'HELD:'),'--','-')"></xsl:value-of>
                                                </xsl:if>
                                                <xsl:if test=".[child::*:text/emph[starts-with(., 'Dispositif:')]]">
                                                    <xsl:value-of select="replace(substring-before(.[child::*:text/emph[starts-with(., 'Dispositif:')]],'Dispositif:'),'--','-')"></xsl:value-of>
                                                </xsl:if>
                                                <xsl:if test=".[child::*:text/emph[starts-with(., 'DISPOSITIF:')]]">
                                                    <xsl:value-of select="replace(substring-before(.[child::*:text/emph[starts-with(., 'DISPOSITIF:')]],'DISPOSITIF:'),'--','-')"></xsl:value-of>
                                                </xsl:if>
                                            </text>
                                        </p>
                                    </bodytext>
                                    </xsl:if>
                                    <casesum:disposition>
                                        <p>
                                            <text>
                                                <xsl:apply-templates select="./text/emph[starts-with(., 'HELD:') or starts-with(., 'Held:') or starts-with(., 'DISPOSITIF :') or starts-with(., 'Dispositif :')]"/>
                                                <xsl:if test=".[text/emph[starts-with(., 'Held:')]]">
                                                    <!--<xsl:value-of select="substring-before(p/text/text()[preceding-sibling::*[1][self::emph[starts-with(.,'HELD:')]]],'.')"/>-->
                                                    <xsl:value-of select="replace(substring-before(./text/text()[preceding-sibling::*[1][self::emph[starts-with(.,'Held:')]]],'.'),'--','-')"></xsl:value-of><xsl:text>.</xsl:text>
                                                </xsl:if>
                                                <xsl:if test=".[text/emph[starts-with(., 'HELD:')]]">
                                                    <!--<xsl:value-of select="substring-before(p/text/text()[preceding-sibling::*[1][self::emph[starts-with(.,'HELD:')]]],'.')"/>-->
                                                    <xsl:value-of select="replace(substring-before(./text/text()[preceding-sibling::*[1][self::emph[starts-with(.,'HELD:')]]],'.'),'--','-')"></xsl:value-of>
                                                </xsl:if>
                                                <xsl:if test=".[text/emph[starts-with(., 'Dispositif:')]]">
                                                    <!--<xsl:value-of select="substring-before(p/text/text()[preceding-sibling::*[1][self::emph[starts-with(.,'DISPOSITIF:')]]],'.')"/>-->
                                                    <xsl:value-of select="replace(substring-before(./text/text()[preceding-sibling::*[1][self::emph[starts-with(.,'Dispositif:')]]],'.'),'--','-')"></xsl:value-of>
                                                </xsl:if>
                                                <xsl:if test=".[text/emph[starts-with(., 'DISPOSITIF:')]]">
                                                    <!--<xsl:value-of select="substring-before(p/text/text()[preceding-sibling::*[1][self::emph[starts-with(.,'DISPOSITIF:')]]],'.')"/>-->
                                                    <xsl:value-of select="replace(substring-before(./text/text()[preceding-sibling::*[1][self::emph[starts-with(.,'DISPOSITIF:')]]],'.'),'--','-')"></xsl:value-of>
                                                </xsl:if>
                                            </text>
                                        </p>
                                    </casesum:disposition>
                                    <bodytext>
                                        <p>
                                            <text>
                                                <xsl:if test=".[text/emph[starts-with(., 'HELD:') or starts-with(., 'Held:')]]">
<!--<xsl:value-of select="replace(substring-after(./text/text()[preceding-sibling::*[1][self::emph[starts-with(. , 'Held:') or starts-with(. , 'HELD:')]]], '.'),'-\-','-')"/>-->
                                                    <!--<xsl:value-of select="substring-after(p/text/text()[preceding-sibling::*[1][self::emph[starts-with(. , 'HELD:')]]] , '.')"/>-->
                                                    <xsl:apply-templates select="./text/child::node() except descendant::emph[starts-with(., 'Held:') or starts-with(., 'HELD:')]"/>
                                                </xsl:if>
                                                <xsl:if test=".[text/emph[starts-with(., 'DISPOSITIF:')]]">
                                                    <xsl:value-of select="replace(substring-after(./text/text()[preceding-sibling::*[1][self::emph[starts-with(. , 'Dispositif:') or starts-with(. , 'DISPOSITIF:')]]] , '.'),'--','-')"></xsl:value-of>
                                                    <!--<xsl:value-of select="substring-after(p/text/text()[preceding-sibling::*[1][self::emph[starts-with(. , 'DISPOSITIF:')]]] , '.')"/>-->
                                                </xsl:if>
                                            </text>
                                        </p>
                                    </bodytext>
                                </xsl:when>                           
                                <xsl:otherwise>
                                    <bodytext>       
                                        <p>
                                            <xsl:apply-templates select="child::text"/>
                                            
                                        </p>
                                    </bodytext>
                                </xsl:otherwise>
                            </xsl:choose>
                        </xsl:for-each>
                        
                    </casesum:decisionsummary>
                </xsl:otherwise>
            </xsl:choose>
        </casesum:summaries>
    </xsl:template>
    
    
   
   <!-- <xsl:template match="figure[descendant::p and text and ancestor::case:decisionsummary]|text[parent::p and ancestor::figure and ancestor::case:decisionsummary]">
        <xsl:apply-templates select="node()"/>
    </xsl:template>-->
    
    <xsl:template match="case:decisionsummary/figure">
        <p>
            <text>
                <xsl:apply-templates/>
            </text>
        </p>
    </xsl:template>
    
    
    
    <xsl:template match="case:decisionsummary/l" priority="25">
        <p>
            <xsl:apply-templates select="node()"/>
        </p>   
    </xsl:template>
    
    <xsl:template match="li[parent::l and ancestor::case:decisionsummary]">
        <list>
            <listitem>
                <xsl:apply-templates select="child::lilabel"/>
                <bodytext>
                    <xsl:apply-templates select="child::p"/>
                </bodytext>
            </listitem>
        </list>
    </xsl:template>
    
    <!--<xsl:template match="case:decisionsummary/p/text[matches(.,'^HELD:') or matches(.,'^DISPOSITIF :') or matches(.,'^DISPOSITIF:')][not(child::emph[matches(.,'^HELD:') or matches(.,'^DISPOSITIF :') or matches(.,'^DISPOSITIF:')])]" priority="25">
       
        <xsl:choose>
            <xsl:when test="normalize-space((substring-after(.,'.')))=''">
                <p>
                    <text>
                    <xsl:apply-templates select="@*|node()"/>  
                    </text>
                </p>
            </xsl:when>
            <xsl:otherwise>
                <casesum:disposition>
                    <p>
                        <text><xsl:value-of select="substring-before(.,'.')"/>
                            <xsl:text>.</xsl:text></text>
                    </p>
                </casesum:disposition>
                <bodytext>
                    <p>
                        <text>
                            <xsl:value-of select="substring-after(.,'.')"/>
                        </text>
                    </p>
                </bodytext>
            </xsl:otherwise>
        </xsl:choose>
        
    </xsl:template>-->
    
    <!--<xsl:template match="case:decisionsummary/p" priority="25">
        <xsl:variable name="text" select="text"/>      
        <xsl:choose><!-\-Praneet-\->
            <xsl:when test="text/emph[matches(text(),'^HELD:') or matches(text(),'^DISPOSITIF :') or matches(text(),'^DISPOSITIF:')]">
                <p>
                    <xsl:apply-templates select="node()"/>
                </p>
            </xsl:when>
            <xsl:when test="text[matches($text,'^HELD:') or matches($text,'^DISPOSITIF :') or matches($text,'^DISPOSITIF:')]">
                <xsl:apply-templates select="node()"/>
            </xsl:when>
            <xsl:otherwise>
                <p>
                    <xsl:apply-templates select="@*|node()"/>
                </p>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>-->
    <!--<xsl:template match="case:decisionsummary/p" priority="25">
        <xsl:variable name="text" select="text"/>      
        <xsl:choose><!-\-Praneet-\->
            <xsl:when test="text/emph[matches(upper-case(.),'^HELD:') or matches(upper-case(.),'^DISPOSITIF :') or matches(upper-case(.),'^DISPOSITIF:')]">
                <casesum:disposition>
                    <p>
                        <xsl:apply-templates select="node()"/>
                    </p>
                </casesum:disposition>
            </xsl:when>
            <xsl:when test="text[matches($text,'^HELD:') or matches($text,'^DISPOSITIF :') or matches($text,'^DISPOSITIF:')]">
                <xsl:apply-templates select="node()"/>
            </xsl:when>
            <xsl:otherwise>
                <p>
                    <xsl:apply-templates select="@*|node()"/>
                </p>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>-->
    
    
    <xsl:template match="*:emph/*:note">
        <xsl:element name="inlinenote">
            <xsl:attribute name="notetype" select="'editor-note'"/>
            <xsl:value-of select="."/>
        </xsl:element>
    </xsl:template>
</xsl:stylesheet>