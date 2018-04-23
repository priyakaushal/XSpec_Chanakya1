<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:legisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/legislation-info/1/" xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" xmlns:primlawinfo="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-info/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.level-not-in-force">
    <title>leg:level-not-in-force <lnpid>id-CA07-14019</lnpid></title>
    <body>
        <section>
            <ul>
                <li class="- topic/li ">
                    The conversion of <sourcexml>leg:level-not-in-force</sourcexml> depends upon the following scenarios:
                    <ul>
                        <li> If text of <sourcexml>leg:level-not-in-force</sourcexml> starts with the French
                            i.e. <b>Note de l'éditeur:, Note de l'èditeur, Note d’éditeur: and Note d'ed. QL:</b> OR
                            start with English i.e. <b>Editor’s note:, Ed. note: and QL Ed.
                                Note:</b> then convert it to
                            <targetxml>note[@notetype="instruction"]</targetxml>.
                            <note>These <b>French</b> or <b>English</b> may also start with square bracket <b>(i.e.[Note de l'éditeur: or [Editor’s note:</b>) then also convert it to
                                <targetxml>note[@notetype="instruction"].</targetxml></note>
                            <note><sourcexml>leg:level-not-in-force/leg:level-vrnt/leg:levelbody/leg:bodytext</sourcexml>
                                becomes <targetxml>note</targetxml>.</note>
                        </li>
                        <li> If text of <sourcexml>leg:level-not-in-force</sourcexml> starts with the normal
                            text "<b>NOTE:</b>" OR "<b>Note:</b>" but it is an official note that is
                            added by the government then convert it to
                            <targetxml>legisinfo:status[@statuscode="effectivenessinfo"]</targetxml>
                            and <targetxml>note</targetxml> with attribute
                            <targetxml>[@notesource="official", @notetype="other"]</targetxml>.
                            Complete target Xpath is:
                            <targetxml>primlaw:level[@leveltype="amendment"]/primlaw:levelinfo/primlawinfo:primlawinfo/legisinfo:legisinfo/legisinfo:statusgroup/legisinfo:status[@statuscode="effectivenessinfo"]</targetxml>.
                            Please refer Example 2. <note>Conversion needs to place
                                <targetxml>primlaw:level[@leveltype="amendment"]</targetxml> in
                                order to distinguish it from other primlaw:level. </note></li>
                        <li>If the <sourcexml>leg:level-not-in-force</sourcexml> does not match the
                                <b>French or English note </b> or <b>Note:</b> rules given above
                            then it would convert to
                                <targetxml>primlaw:level@leveltype=”amendment”</targetxml> and
                            follow default conversion for anything in it, Please refer Example
                            4.</li>
                        <li> If the input documents are having PCDATA <b>ENACTMENT NOT IN FORCE</b>
                            within <sourcexml>leg:heading/title</sourcexml> in
                                <sourcexml>leg:level-not-in-force</sourcexml> then conversion needs
                            to place them in <targetxml>heading/subtitle</targetxml>. By using this
                            approach one can distinguish between legislative title and a normal
                            title. Conversion needs to place <targetxml>heading/subtitle</targetxml>
                            as sibling of <targetxml>primlaw:levelinfo</targetxml>. Please refer
                            Example 2. </li>
                        <li>If the input documents starting with the Term like <b>TRANSITIONAL
                                PROVISION</b> or <b>RELATED PROVISION</b> or <b>INTERIM
                                PROVISION</b> or <b>DISPOSITION TRANSITOIRE</b> within
                                <sourcexml>leg:levelbody/leg:bodytext/l/li/p/text</sourcexml> or
                                <sourcexml>leg:levelbody/leg:bodytext/p/text</sourcexml> in
                                <sourcexml>leg:level-not-in-force</sourcexml> and then we have
                            French term i.e. <b>Note de l'éditeur:, Note de l'èditeur, Note
                                d’éditeur: and Note d'ed. QL:</b> OR English term i.e. <b>Editor’s
                                note:, Ed. note: and QL Ed. Note:</b> in the immediately next
                                <sourcexml>text</sourcexml> then convert <b>TRANSITIONAL
                                PROVISION</b> or <b>RELATED PROVISION</b> or <b>INTERIM
                                PROVISION</b> or <b>DISPOSITION TRANSITOIRE</b> to
                                <targetxml>note[@notetype="instruction"]/heading/title</targetxml>
                            and the <b>French or English</b> terms will be converted as per the
                            above given rule to
                            <targetxml>note[@notetype="instruction"]</targetxml>. Refer below
                            example 3 </li>
                      
                    </ul>
                </li>
            </ul>
        </section>
        
        <example>
            <title>Source XML 1 : For <sourcexml>Editor's note</sourcexml></title>
            <codeblock>

&lt;leg:level&gt;
    &lt;leg:level-vrnt searchtype="LEGISLATION" leveltype="2"&gt;
        &lt;leg:levelbody&gt;
            &lt;leg:level&gt;
                &lt;leg:level-vrnt searchtype="LEGISLATION" leveltype="2"&gt;
                    &lt;leg:levelbody&gt;
                        &lt;leg:bodytext&gt;
                            &lt;p&gt;
                                &lt;text&gt;Sur recommandation du ministre de l'Emploi
                                    et de l'Immigration et en vertu du paragraphe
                                    84(1)* de la Loi sur l'immigration, il plaît à Son
                                    Excellence le Gouverneur général en conseil
                                    d'approuver les Règles de la Cour fédérale du
                                    Canada régissant la pratique et la procédure
                                    relatives aux demandes d'autorisation, aux
                                    demandes de contrôle judiciaire et aux appels aux
                                    termes de la Loi sur l'immigration, ci-après,
                                    établies par le juge en chef de la Cour fédérale
                                    du Canada le 7 janvier 1993.&lt;/text&gt;
                            &lt;/p&gt;
                            ...
                        &lt;/leg:bodytext&gt;
                        &lt;leg:level-not-in-force&gt;
                            &lt;leg:level-vrnt searchtype="LEGISLATION" leveltype="3"&gt;
                                &lt;leg:levelbody&gt;
                                    &lt;leg:bodytext&gt;
                                        &lt;p&gt;
                                            &lt;text&gt;[Note de l'éditeur: Le titre intégral a été
                                                modifié de "RÈGLES DE LA COUR FÉDÉRALE EN MATIÈRE
                                                D'IMMIGRATION ET DE PROTECTION DES RÉFUGIÉS" à
                                                "RÈGLES DES COURS FÉDÉRALES EN MATIÈRE
                                                D'IMMIGRATION ET DE PROTECTION DES RÉFUGIÉS" par
                                                DORS/2005-339, art. 1, en vigueur le 15 novembre
                                                2005 (Gaz. Can. Pte. II, Vol. 139, no 24, p.
                                                2587).]&lt;/text&gt;
                                        &lt;/p&gt;
                                    &lt;/leg:bodytext&gt;
                                &lt;/leg:levelbody&gt;
                            &lt;/leg:level-vrnt&gt;
                        &lt;/leg:level-not-in-force&gt;
                        ...
                    &lt;/leg:levelbody&gt;
                &lt;/leg:level-vrnt&gt;
            &lt;/leg:level&gt;
        &lt;/leg:levelbody&gt;
    &lt;/leg:level-vrnt&gt;
&lt;/leg:level&gt;

                 </codeblock>
        </example>
        
        <example>
            <title>Target XML 1 : For <sourcexml>Editor's note</sourcexml></title>
            <codeblock>

&lt;primlaw:level leveltype="unclassified"&gt;
    &lt;primlaw:level leveltype="unclassified"&gt;
        &lt;primlaw:bodytext&gt;
            &lt;p&gt;
                &lt;text&gt;Sur recommandation du ministre de l'Emploi
                    et de l'Immigration et en vertu du paragraphe
                    84(1)* de la Loi sur l'immigration, il plaît à Son
                    Excellence le Gouverneur général en conseil
                    d'approuver les Règles de la Cour fédérale du
                    Canada régissant la pratique et la procédure
                    relatives aux demandes d'autorisation, aux
                    demandes de contrôle judiciaire et aux appels aux
                    termes de la Loi sur l'immigration, ci-après,
                    établies par le juge en chef de la Cour fédérale
                    du Canada le 7 janvier 1993.&lt;/text&gt;
            &lt;/p&gt;
            ...
        &lt;/primlaw:bodytext&gt;
        &lt;note notetype="instruction"&gt;
            &lt;bodytext&gt;
                &lt;p&gt;
                    &lt;text&gt;[Note de l'éditeur: Le titre intégral a été
                        modifié de "RÈGLES DE LA COUR FÉDÉRALE EN MATIÈRE
                        D'IMMIGRATION ET DE PROTECTION DES RÉFUGIÉS" à
                        "RÈGLES DES COURS FÉDÉRALES EN MATIÈRE
                        D'IMMIGRATION ET DE PROTECTION DES RÉFUGIÉS" par
                        DORS/2005-339, art. 1, en vigueur le 15 novembre
                        2005 (Gaz. Can. Pte. II, Vol. 139, no 24, p.
                        2587).]&lt;/text&gt;
                &lt;/p&gt;
            &lt;/bodytext&gt;
        &lt;/note&gt;
    &lt;/primlaw:level&gt;
&lt;/primlaw:level&gt;

             </codeblock>
        </example>
        
        <example>
            <title>Source XML 2 : For normal text.</title>
            <codeblock>

&lt;leg:level&gt;
    &lt;leg:level-vrnt searchtype="LEGISLATION" leveltype="2"&gt;
        &lt;leg:heading&gt;
            &lt;title inline="true"&gt;RULE&lt;/title&gt;
            &lt;desig&gt;
                &lt;designum searchtype="SECT-NUM"&gt;4.33&lt;/designum&gt;
            &lt;/desig&gt;
        &lt;/leg:heading&gt;
        &lt;leg:levelbody&gt;
            &lt;leg:level-not-in-force&gt;
                &lt;leg:level-vrnt searchtype="LEGISLATION" leveltype="3"&gt;
                    &lt;leg:heading&gt;
                        &lt;title&gt;ENACTMENT NOT IN FORCE&lt;/title&gt;
                    &lt;/leg:heading&gt;
                    &lt;leg:levelbody&gt;
                        &lt;leg:bodytext&gt;
                            &lt;p&gt;
                                &lt;text&gt;NOTE: On November 1, 2012 (Alta. Reg.
                                    124/2010 s15.15(2) (Alta. Gaz. August 14, 2010)
                                    the following is enacted:&lt;/text&gt;
                            &lt;/p&gt;
                        &lt;/leg:bodytext&gt;
                    &lt;/leg:levelbody&gt;
                &lt;/leg:level-vrnt&gt;
                &lt;leg:level-vrnt searchtype="LEGISLATION" leveltype="3"&gt;
                    &lt;leg:levelbody&gt;
                        &lt;leg:bodytext&gt;
                            &lt;p&gt;
                                &lt;text&gt;4.33(1) If 2 or more years has passed after
                                    the last thing done that significantly advanced an
                                    action, the Court, on application, must dismiss
                                    the action as against the applicant, unless&lt;/text&gt;
                            &lt;/p&gt;
                        &lt;/leg:bodytext&gt;
                    &lt;/leg:levelbody&gt;
                &lt;/leg:level-vrnt&gt;
                ........
            &lt;/leg:level-not-in-force&gt;
        &lt;/leg:levelbody&gt;
    &lt;/leg:level-vrnt&gt;
&lt;/leg:level&gt;

                 </codeblock>
        </example>
        
        <example>
            <title>Target XML 2: For normal text.</title>
            <codeblock>

&lt;primlaw:level leveltype="unclassified"&gt;
    &lt;heading&gt;
        &lt;title inline="true"&gt;RULE&lt;/title&gt;
        &lt;desig&gt;4.33&lt;/desig&gt;
    &lt;/heading&gt;
    &lt;primlaw:level leveltype="amendment"&gt;
        &lt;primlaw:levelinfo&gt;
            &lt;primlawinfo:primlawinfo&gt;
                &lt;legisinfo:legisinfo&gt;
                    &lt;legisinfo:statusgroup&gt;
                        &lt;legisinfo:status statuscode="effectivenessinfo"/&gt;
                    &lt;/legisinfo:statusgroup&gt;
                &lt;/legisinfo:legisinfo&gt;
            &lt;/primlawinfo:primlawinfo&gt;
        &lt;/primlaw:levelinfo&gt;
        &lt;heading&gt;
            &lt;subtitle&gt;ENACTMENT NOT IN FORCE&lt;/subtitle&gt;
        &lt;/heading&gt;
        &lt;primlaw:bodytext&gt;
            &lt;note notesource="official" notetype="other"&gt;
                &lt;bodytext&gt;
                    &lt;p&gt;&lt;text&gt;NOTE: On November 1, 2012 (Alta. Reg.
                        124/2010 s15.15(2) (Alta. Gaz. August 14, 2010)
                        the following is enacted:&lt;/text&gt;
                    &lt;/p&gt;
                &lt;/bodytext&gt;
            &lt;/note&gt;
        &lt;/primlaw:bodytext&gt;
        &lt;primlaw:bodytext&gt;
        &lt;p&gt;
                &lt;text&gt;4.33(1) If 2 or more years has passed after
                    the last thing done that significantly advanced an
                    action, the Court, on application, must dismiss
                    the action as against the applicant, unless&lt;/text&gt;
         &lt;/p&gt;
        &lt;/primlaw:bodytext&gt;
        ......
&lt;/primlaw:level&gt;

             </codeblock>
        </example>
        <example>
            <title>Source XML 3</title>
            <codeblock>

&lt;leg:level-not-in-force&gt;
    &lt;leg:level-vrnt searchtype="LEGISLATION" leveltype="3"&gt;
        &lt;leg:levelbody&gt;
            &lt;leg:bodytext&gt;
                &lt;p&gt;
                    &lt;text&gt;TRANSITIONAL PROVISION&lt;/text&gt;
                    &lt;text&gt;Editor's note: SI/2010-40, s. 6, effective July 1, 2010 (Can. Gaz. Pt. II,
                        Vol. 144, No. 11, p. 938), contained the following provision:&lt;/text&gt;
                    &lt;text&gt;6. The Manitoba Criminal Appeal Rules applicable before the day on which
                        these Rules come into force continue to apply to all proceedings for which
                        the initiating document was filed before that day.&lt;/text&gt;
                &lt;/p&gt;
            &lt;/leg:bodytext&gt;
        &lt;/leg:levelbody&gt;
    &lt;/leg:level-vrnt&gt;
&lt;/leg:level-not-in-force&gt;                

            </codeblock>
        </example>
        <example>
            <title>Target XML 3</title>
            <codeblock>
&lt;primlaw:level leveltype="unclassified"&gt;
                    &lt;note notetype="instruction"&gt;
                        &lt;heading&gt;
                            &lt;title&gt;TRANSITIONAL PROVISION&lt;/title&gt;
                        &lt;/heading&gt;
                        &lt;bodytext&gt;
                            &lt;p&gt;
                                &lt;text&gt;Editor's note: SI/2010-40, s. 6, effective July 1, 2010 (Can. Gaz. Pt.
                                    II, Vol. 144, No. 11, p. 938), contained the following provision:&lt;/text&gt;
                                &lt;text&gt;6. The Manitoba Criminal Appeal Rules applicable before the day on
                                    which these Rules come into force continue to apply to all proceedings
                                    for which the initiating document was filed before that day.&lt;/text&gt;
                            &lt;/p&gt;
                        &lt;/bodytext&gt;
                     &lt;/note&gt;
&lt;/primlaw:level&gt;         
</codeblock>
        </example>
        <example>
            <title>Source XML 4</title>
            <codeblock>

&lt;leg:level-not-in-force&gt;
           &lt;leg:level-vrnt searchtype="LEGISLATION" leveltype="3"&gt;
                    &lt;leg:levelbody&gt;
                        &lt;leg:bodytext&gt;
                            &lt;p&gt;
                              &lt;text&gt;9. to 21. (Consequential amendments)&lt;/text&gt;
                            &lt;/p&gt;
                        &lt;/leg:bodytext&gt;
                    &lt;/leg:levelbody&gt;
          &lt;/leg:level-vrnt&gt;
&lt;/leg:level-not-in-force&gt;
            
            </codeblock>
        </example>
        <example>
            <title>Target XML 4</title>
            <codeblock>

&lt;primlaw:level leveltype="amendment"&gt;
           &lt;primlaw:bodytext&gt;
                 &lt;p&gt;
                   &lt;text&gt;9. to 21. (Consequential amendments)&lt;/text&gt;
                 &lt;/p&gt;
           &lt;/primlaw:bodytext&gt;
&lt;/primlaw:level&gt;
                
            </codeblock>
        </example>
        <section>
            <title>Change</title>
            <p>2015-02-06: <ph id="change_20150206">Added instruction and snippet when
                    leg:level-not-in-force does not match the French or English note or Note:, refer
                    Example 4.</ph></p>
            <p>2015-02-05: <ph id="change_20150205_SSX">Modified the rule for handling of the terms starting with <b>TRANSITIONAL
                    PROVISION</b> or <b>RELATED PROVISION</b> or <b>INTERIM PROVISION</b> or
                    <b>DISPOSITION TRANSITOIRE</b> within <b>leg:level-not-in-force</b></ph></p>
            <p>2015-02-03: <ph id="change_20150203_SSX">Enhance the Target Snippet Example 3</ph>
                <b>leg:level-not-in-force</b></p>
            <p>2015-02-02: <ph id="change_20150202_SSX">Added instrution for handling terms starting
                    with <b>TRANSITIONAL PROVISION</b> or <b>RELATED PROVISION</b> or <b>INTERIM
                        PROVISION</b> or <b>DISPOSITION TRANSITOIRE</b> within</ph>
                <b>leg:level-not-in-force</b></p>
            <p>2014-11-18: <ph id="change_20141118_SSX">Added a French word <b>Note de l'èditeur</b> in for handling <sourcexml>leg:level-not-in-force</sourcexml></ph>  </p>
            <p>2014-08-20: <ph id="change_20140820_SSX">Instruction and example updated for handling
                of <b>Editior Notes</b> and <b>Official Notes</b> which is comes under the
                <sourcexml>leg:level-not-in-force</sourcexml> markup and its mapped with
                <targetxml>note[@notetype="instruction"]</targetxml> and <targetxml>note[@notesource="official"]</targetxml>.<b>and</b> Added a note for handling PCDATA <b>ENACTMENT NOT IN
                    FORCE</b> within <sourcexml>leg:heading/title</sourcexml> in
                <sourcexml>leg:level-not-in-force</sourcexml>. Phase 5 Canada discussion-defect tracking: Issue #89</ph></p>
            
            <p>2014-07-28: <ph id="change_20140728_SSX">Added a note: Conversion needs to place
                <targetxml>primlaw:level[@leveltype="amendment"]</targetxml> in order to
                distinguish it from other primlaw:level, when
                <sourcexml>leg:level-not-in-force</sourcexml> starts with the normal
                text.</ph></p>
        </section>
    </body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA07-CourtRules\leg.level-not-in-force.dita  -->
	
        <xsl:template match="leg:level-not-in-force">
            
            <xsl:choose>
                <xsl:when
                    test="leg:level-vrnt/leg:levelbody/leg:bodytext/p/text[starts-with(., 'Editor''s note:') or starts-with(., 'Note de l''éditeur:') or starts-with(., '[Editor’s note:') or starts-with(., '[Note de l')]">
                   <!-- <primlaw:bodytext>-->
                        <note notetype="instruction">
                            <bodytext>
                                <p>
                                    <text>
                                        <xsl:value-of
                                            select="descendant::text[starts-with(., 'Editor''s note:') or starts-with(., 'Note de l''éditeur:') or starts-with(., '[Editor’s note:') or starts-with(., '[Note de l')]"
                                        />
                                        
                                    </text>
                                </p>
                               
                            </bodytext>
                        </note>
                        <xsl:if
                            test="leg:level-vrnt/leg:levelbody/leg:bodytext/p/text[1][following-sibling::text]">
                            <primlaw:bodytext>
                            <p>
                                <xsl:apply-templates
                                    select="leg:level-vrnt/leg:levelbody/leg:bodytext/p/text[preceding-sibling::text[starts-with(., 'Editor''s note:') or starts-with(., 'Note de l''éditeur:') or starts-with(., '[Editor’s note:') or starts-with(., '[Note de l') or starts-with(., 'NOTE:') or starts-with(., 'Note:')]]"
                                />
                            </p></primlaw:bodytext>
                        </xsl:if>
                    <!--</primlaw:bodytext>-->
                </xsl:when>
                <xsl:when
                    test="child::leg:level-vrnt/leg:levelbody/leg:bodytext/p/text[starts-with(., 'Note:') or starts-with(., 'NOTE:')]">
                    <primlaw:level leveltype="amendment">
                        <primlaw:levelinfo>
                            <primlawinfo:primlawinfo>
                                <legisinfo:legisinfo>
                                    <legisinfo:statusgroup>
                                        <legisinfo:status statuscode="effectivenessinfo"
                                            > </legisinfo:status>
                                    </legisinfo:statusgroup>
                                </legisinfo:legisinfo>
                            </primlawinfo:primlawinfo>
                        </primlaw:levelinfo>
                        
                        <primlaw:bodytext>
                            <note notesource="official" notetype="other">
                                <bodytext>
                                    <p>
                                        <text>
                                            <xsl:value-of
                                                select="descendant::text[starts-with(., 'NOTE:') or starts-with(., 'Note:')]"
                                            />
                                        </text>
                                    </p>
                                </bodytext>
                            </note>
                            <xsl:if
                                test="leg:level-vrnt/leg:levelbody/leg:bodytext/p/text[1][following-sibling::text]">
                                <p>
                                    <xsl:apply-templates
                                        select="leg:level-vrnt/leg:levelbody/leg:bodytext/p/text[preceding-sibling::text[starts-with(., 'Editor''s note:') or starts-with(., 'Note de l''éditeur:') or starts-with(., '[Editor’s note:') or starts-with(., '[Note de l') or starts-with(., 'NOTE:') or starts-with(., 'Note:')]]"
                                    />
                                </p>
                            </xsl:if>
                        </primlaw:bodytext>
                    </primlaw:level>
                </xsl:when>
                <xsl:otherwise>
                    <primlaw:level leveltype="amendment">
                        <primlaw:levelinfo>
                            <primlawinfo:primlawinfo>
                                <legisinfo:legisinfo>
                                    <legisinfo:statusgroup>
                                        <legisinfo:status statuscode="effectivenessinfo"
                                            > </legisinfo:status>
                                    </legisinfo:statusgroup>
                                </legisinfo:legisinfo>
                            </primlawinfo:primlawinfo>
                        </primlaw:levelinfo>
                        <xsl:apply-templates select="descendant::leg:bodytext"/>
                    </primlaw:level>   
                </xsl:otherwise>
            </xsl:choose>
        
    
    </xsl:template>
        
        
 



</xsl:stylesheet>