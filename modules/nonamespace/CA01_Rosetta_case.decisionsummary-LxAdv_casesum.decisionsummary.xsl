<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"  xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo"     xmlns:casesum="http://www.lexisnexis.com/xmlschemas/content/legal/case-summary/1/"
    xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/" version="2.0" exclude-result-prefixes="dita docinfo casesum case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="CA01_Rosetta_case.decisionsummary-LxAdv_casesum.decisionsummary">
    <title>case:decisionsummary <lnpid>id-CA01-12216</lnpid></title>
    <body>
        <section conref="../../common_caselaw/conref_content/Rosetta_case.decisionsummary-LxAdv_casesum.decisionsummary.dita#Rosetta_case.decisionsummary-LxAdv_casesum.decisionsummary/mapping1"/>
        <section conref="../../common_caselaw/conref_content/Rosetta_case.decisionsummary-LxAdv_casesum.decisionsummary.dita#Rosetta_case.decisionsummary-LxAdv_casesum.decisionsummary/mapping2"/>
		<section>
		    <p>When <sourcexml>casesum:summaries/casesum:decisionsummary/heading/title</sourcexml> begins
		        with any of the following text: <ul>
		            <li><sourcexml>"Court Summary:" (or the French version, "Résumé de la Cour
		                :")</sourcexml></li>
		            <li><sourcexml>Commission Summary:</sourcexml></li>
		            <li><sourcexml>Board Summary:</sourcexml></li>
		            <li><sourcexml>Tribunal Summary:</sourcexml></li>
		            <li><sourcexml>Executive Summary:</sourcexml></li>
		            <li><sourcexml>Commissioner Summary: </sourcexml></li>
		            <li><sourcexml>Résumé du tribunal :</sourcexml></li>
		            <li><sourcexml>Sommaire du tribunal :</sourcexml></li>
		        </ul> then use <targetxml>casesum:courtsummary</targetxml> instead of
		        <targetxml>casesum:decisionsummary</targetxml>.</p>
		    <note><ul><li>If there is a scenario where
		        <sourcexml>casesum:summaries/casesum:decisionsummary/heading/title</sourcexml> begins
		        with any of the above given texts AND <sourcexml>p/text</sourcexml> containing a sentence
		        beginning with "HELD:" or the French language version "DISPOSITIF :", in all caps, with or
		        without a space character before the colon, or same within emph tag (e.g. "<sourcexml>emph
		            typestyle="bf"</sourcexml>"), then for mapping use
		        <targetxml>casesum:courtsummary</targetxml> instead of
		        <targetxml>casesum:decisionsummary</targetxml>.</li>
		        <li>If for above scenario <sourcexml>case:decisionsummary</sourcexml> contains
		            <sourcexml>figure</sourcexml> as its child then map it to
		            <targetxml>p/text/figure</targetxml>, For more clarification please refer the example
		            below. </li>
		    </ul> </note>
<pre>
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
&lt;/case:decisionsummary&gt;

<b>Becomes</b>

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
        &lt;text&gt;HELD: The Employer's interpretation of the collective agreement is correct. &lt;/text&gt;
    &lt;/p&gt;
&lt;/casesum:courtsummary&gt;
</pre>
		    <p>For any <sourcexml>p/text</sourcexml> beginning with "ARRÊT" or "HELD:" (or French language
		        version "DISPOSITIF :") or containing a sentence beginning with "ARRÊT" or "HELD:" (or the
		        French language version "DISPOSITIF :"), in all caps, with or without a space
		        character before the colon, or same within emph tag (e.g. "<sourcexml>emph
		            typestyle="bf"</sourcexml>"), the sentence becomes
		        <targetxml>casesum:disposition/p/text</targetxml> beginning with "ARRÊT" or "HELD:" or
		        French language equivalent. That is, isolate the holdings sentence based on
		        looking in <sourcexml>case:decisionsummary</sourcexml> for the sentence
		        beginning "ARRÊT" or "HELD:" (or French language version "DISPOSITIF :") in all capital
				letters and placing the end tags after the next period or dash character
				followed by space, followed by an upper-case letter, that completes the sentence.  
				(i.e.  the mark-up would surround only one sentence.) The preceding and following space
		        dash dash space, if any, should be converted to period space. See the two
		        examples.</p>
		    
		</section>
        <example>
            <codeblock>
&lt;case:decisionsummary&gt;
    &lt;p&gt;
        &lt;text&gt;This was an appeal from the denial of injunctive relief, and a cross-appeal from a
            declaration that the defendant was violating the municipal by-law by operating a
            commercial greenhouse in an area zoned for residential use. For the facts and the
            decision appealed, see 88 DRS P27-019. &lt;/text&gt;
    &lt;/p&gt;
    &lt;p&gt;
        &lt;text&gt;HELD: The appeal was allowed and the cross-appeal was dismissed. The defendant claimed
            that his use of the land was a valid continuing non-conforming use of the land. However,
            under the former by-law, the land was zoned for residential use. Certain farming
            operations were expressly prohibited by the by-law; greenhouse operation was not one of
            these. The defendant's claim that this legitimized his use was rejected. The whole
            scheme of the by-law was to limit this zone to residential use, and the by-law clearly
            did not contemplate use for a greenhouse. The defendant's use had been illegal under the
            former by-law, and therefore could not be protected as a continuing valid but
            non-conforming use. Under s. 49 of the Planning Act, the municipality had the same power
            to enforce a by-law as the Minister. This included, under s. 53 of the Act, the right to
            injunctive relief. An injunction restraining the defendant's continued use of the land
            as a commercial greenhouse operation was granted. &lt;/text&gt;
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
            &lt;text&gt;HELD: The appeal was allowed and the cross-appeal was dismissed.&lt;/text&gt;
        &lt;/p&gt;
    &lt;/casesum:disposition&gt;
    &lt;bodytext&gt;
        &lt;p&gt;
            &lt;text&gt;The defendant claimed that his use of the land was a valid continuing
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
        </example>
        <example>
			<title>French language example with space before colon, and preceding and follwing dash dash converted to period:</title>
            <codeblock>
&lt;bodytext&gt;
    &lt;p&gt;
        &lt;text&gt;Demande d'injonction interlocutoire -- Bérubé publie et distribue depuis 1973 un
            journal de quartier, l'Information Centre-Ville -- Il tire son revenu de la publicité
            apparaissant dans le journal -- Son fils était associé avec lui jusqu'à ce qu'il quitte
            le journal et en publie un à son tour, l'Hebdo Centre-Ville (L'Hebdo) -- L'Hebdo vise la
            même clientèle, le même secteur de la ville, sollicite les mêmes commanditaires et met
            l'accent, dans sa présentation, sur l'expression Centre-Ville, comme le fait
            l'Information Centre-Ville -- Bérubé demande qu'il soit ordonné à son fils et son
            associé de cesser la distribution de l'Hebdo -- DISPOSITIF : Demande accueillie -- Même
            si la marque de commerce Centre-ville n'est pas enregistrée, elle appartient à Bérubé
            depuis 1973 -- Le fils et son associé ont concurrencé Bérubé d'une façon non permise par
            la Loi concernant les marques de commerce -- La balance des inconvénients penche en
            faveur de Bérubé. &lt;/text&gt;
    &lt;/p&gt;
&lt;/bodytext&gt;
       </codeblock>
            <b>becomes</b>
            <codeblock>
&lt;bodytext&gt;
    &lt;p&gt;
        &lt;text&gt;Demande d'injonction interlocutoire -- Bérubé publie et distribue depuis 1973 un
            journal de quartier, l'Information Centre-Ville -- Il tire son revenu de la
            publicité apparaissant dans le journal -- Son fils était associé avec lui jusqu'à ce
            qu'il quitte le journal et en publie un à son tour, l'Hebdo Centre-Ville (L'Hebdo)
            -- L'Hebdo vise la même clientèle, le même secteur de la ville, sollicite les mêmes
            commanditaires et met l'accent, dans sa présentation, sur l'expression Centre-Ville,
            comme le fait l'Information Centre-Ville -- Bérubé demande qu'il soit ordonné à son
            fils et son associé de cesser la distribution de l'Hebdo.&lt;/text&gt;
    &lt;/p&gt;
&lt;/bodytext&gt;
&lt;casesum:disposition&gt;
    &lt;p&gt;
        &lt;text&gt;DISPOSITIF : Demande accueillie.&lt;/text&gt;
    &lt;/p&gt;
&lt;/casesum:disposition&gt;
&lt;bodytext&gt;
    &lt;p&gt;
        &lt;text&gt;Même si la marque de commerce Centre-ville n'est pas enregistrée, elle appartient
            à Bérubé depuis 1973 -- Le fils et son associé ont concurrencé Bérubé d'une façon
            non permise par la Loi concernant les marques de commerce -- La balance des
            inconvénients penche en faveur de Bérubé. &lt;/text&gt;
    &lt;/p&gt;
&lt;/bodytext&gt;
       </codeblock>
        </example>
		<section>
			<p>When <sourcexml>case:decisionsummary/heading/title</sourcexml> begins with the text: "Court Summary:" (or the French version, 
			"Résumé de la Cour :"), use <targetxml>casesum:courtsummary</targetxml> instead of <targetxml>casesum:decisionsummary</targetxml>, see Example 2.</p>
		    <p>Also, do the same when: <sourcexml>metaitem @name="SRCNAME" @value="SCJ"</sourcexml> and
                    <sourcexml>metaitem @name="SRCNAME" @value="ACS"</sourcexml> can occur with or
                without a space character after <b>SCJ</b> and <b>ACS</b> and,
		        <sourcexml>case:decisionsummary/p/text/emph</sourcexml>  or <sourcexml>case:decisionsummary/heading/title</sourcexml> contains "Subsequent
                History:" ("Historique subséquent:" in French) or "Court Catchwords:"
                ("Indexation de la Cour:" in French), can occur with or without a space character
                before the colon. For French documents the correct display is the space before the
                colon but there is the occassional French document where the space is not found
                before the colon, see Example 3.</p>
		</section>
        <example>
            <title>Example 2: Court Summary</title>
            <codeblock>
&lt;case:decisionsummary&gt;
    &lt;heading&gt;
        &lt;title&gt;Court Summary:&lt;/title&gt;
    &lt;/heading&gt;
    &lt;p&gt;
        &lt;text&gt;Civil procedure -- Costs -- Form of order -- Disbursements -- Interim disbursements --
            Grounds -- Litigant's ability to realize other financial resources -- Wife (now 80 years
            old and suffering from dementia-Alzheimer's type) was represented by son whom Vermont
            probate court had appointed as her guardian to pursue support claim against Ontario
            husband -- At time of appointment, wife had about $715,000 in assets but this money was
            now gone -- Motion judge reviewed factors in &lt;emph typestyle="it"&gt;Stuart v.
                Stuart&lt;/emph&gt;, &lt;ci:cite searchtype="SUMM-CASE-REF"&gt;&lt;ci:case&gt;&lt;ci:caseref
                        ID="cref00138210" spanref="cspan00138210"&gt;&lt;ci:reporter value="CANLI"
                                /&gt;&lt;ci:edition&gt;&lt;ci:date year="2001"/&gt;&lt;/ci:edition&gt;&lt;ci:refnum
                            num="28261"/&gt;&lt;/ci:caseref&gt;&lt;/ci:case&gt;&lt;ci:content&gt;&lt;ci:span
                        spanid="cspan00138210"&gt;2001 CanLII 28261&lt;/ci:span&gt;&lt;/ci:content&gt;&lt;/ci:cite&gt;
            (Ont. Fam. Ct.) to determine whether to order interim disbursements under subrule 24(12)
            of the &lt;emph typestyle="it"&gt;Family Law Rules&lt;/emph&gt; and concluded that, in this case,
            order for payment of interim disbursements to wife was not necessary for case to proceed
            fairly or for wife to be able to retain lawyer and fully present her case through trial
            -- Motion judge saw no reason why wife could not sell parties' jointly owned Vermont
            home to help in funding her legal costs -- Her share of sale proceeds would be about
            $100,000 to 125,000 and husband undertook to court his co-operation in any sale of that
            property -- Nevertheless, as security against any award for disbursements, including
            legal costs, judge also made non-depletion order under section 40 of &lt;emph
                typestyle="it"&gt;Family Law Act&lt;/emph&gt; (binding on husband's bank) that husband
            maintain minimum balance of $500,000 in his registered retirement income fund with bank.
        &lt;/text&gt;
    &lt;/p&gt;
&lt;/case:decisionsummary&gt;
       </codeblock>
            <b>becomes</b>
            <codeblock>
&lt;casesum:courtsummary&gt;
    &lt;heading&gt;
        &lt;title&gt;Court Summary:&lt;/title&gt;
    &lt;/heading&gt;
    &lt;p&gt;
        &lt;text&gt;Civil procedure -- Costs -- Form of order -- Disbursements -- Interim disbursements --
            Grounds -- Litigant's ability to realize other financial resources -- Wife (now 80 years
            old and suffering from dementia-Alzheimer's type) was represented by son whom Vermont
            probate court had appointed as her guardian to pursue support claim against Ontario
            husband -- At time of appointment, wife had about $715,000 in assets but this money was
            now gone -- Motion judge reviewed factors in &lt;emph typestyle="it"&gt;Stuart v.
                Stuart&lt;/emph&gt;, &lt;lnci:cite&gt;
                &lt;lnci:case&gt;
                    &lt;lnci:caseref ID="cref00138210"&gt;
                        &lt;lnci:reporter value="CANLI"/&gt;
                        &lt;lnci:edition&gt;
                            &lt;lnci:date year="2001"/&gt;
                        &lt;/lnci:edition&gt;
                        &lt;lnci:refnum num="28261"/&gt;
                    &lt;/lnci:caseref&gt;
                &lt;/lnci:case&gt;
                &lt;lnci:content&gt;2001 CanLII 28261&lt;/lnci:content&gt;
            &lt;/lnci:cite&gt; (Ont. Fam. Ct.) to determine whether to order interim disbursements under
            subrule 24(12) of the &lt;emph typestyle="it"&gt;Family Law Rules&lt;/emph&gt; and concluded that,
            in this case, order for payment of interim disbursements to wife was not necessary for
            case to proceed fairly or for wife to be able to retain lawyer and fully present her
            case through trial -- Motion judge saw no reason why wife could not sell parties'
            jointly owned Vermont home to help in funding her legal costs -- Her share of sale
            proceeds would be about $100,000 to 125,000 and husband undertook to court his
            co-operation in any sale of that property -- Nevertheless, as security against any award
            for disbursements, including legal costs, judge also made non-depletion order under
            section 40 of &lt;emph typestyle="it"&gt;Family Law Act&lt;/emph&gt; (binding on husband's bank)
            that husband maintain minimum balance of $500,000 in his registered retirement income
            fund with bank. &lt;/text&gt;
    &lt;/p&gt;
&lt;/casesum:courtsummary&gt;
       </codeblock>
        </example>
        <example>
            <title>Example 3: SRCNAME SCJ</title>
            <codeblock>
&lt;docinfo:metaitem name="SRCNAME" value="SCJ "&gt;&lt;/docinfo:metaitem&gt;
...
&lt;case:decisionsummary&gt;
    &lt;p&gt;&lt;text&gt;&lt;emph typestyle="bf"&gt;Subsequent History: &lt;/emph&gt; &lt;/text&gt;&lt;/p&gt;
    &lt;p&gt;&lt;text&gt;NOTE: This document is subject to editorial revision before its reproduction in final form in the Canada Supreme Court Reports. &lt;/text&gt;&lt;/p&gt;
    &lt;p&gt;&lt;text&gt;&lt;emph typestyle="bf"&gt;Court Catchwords: &lt;/emph&gt; &lt;/text&gt;&lt;/p&gt;
    &lt;p&gt;&lt;text&gt;&lt;emph typestyle="it"&gt;Courts -- Federal Court -- Procedure -- Plaintiff bringing action in Federal Court against federal Crown for damages for various torts arising from decisions prohibiting sale of drug -- Plaintiff not seeking judicial review of decisions -- Whether plaintiff entitled to seek damages by way of action without first proceeding by way of judicial review -- Federal Courts Act, R.S.C. 1985, c. F-7, ss. 17 and 18.&lt;/emph&gt; &lt;/text&gt;&lt;/p&gt;
    ...
&lt;/case:decisionsummary&gt;
       </codeblock>
            <b>becomes</b>
            <codeblock>
&lt;casesum:courtsummary&gt;
    &lt;p&gt;
        &lt;text&gt;&lt;emph typestyle="bf"&gt;Subsequent History: &lt;/emph&gt;
        &lt;/text&gt;
    &lt;/p&gt;
    &lt;p&gt;
        &lt;text&gt;NOTE: This document is subject to editorial revision before its reproduction in final
            form in the Canada Supreme Court Reports. &lt;/text&gt;
    &lt;/p&gt;
    &lt;p&gt;
        &lt;text&gt;&lt;emph typestyle="bf"&gt;Court Catchwords: &lt;/emph&gt;
        &lt;/text&gt;
    &lt;/p&gt;
    &lt;p&gt;
        &lt;text&gt;&lt;emph typestyle="it"&gt;Courts -- Federal Court -- Procedure -- Plaintiff bringing action
                in Federal Court against federal Crown for damages for various torts arising from
                decisions prohibiting sale of drug -- Plaintiff not seeking judicial review of
                decisions -- Whether plaintiff entitled to seek damages by way of action without
                first proceeding by way of judicial review -- Federal Courts Act, R.S.C. 1985, c.
                F-7, ss. 17 and 18.&lt;/emph&gt;
        &lt;/text&gt;
    &lt;/p&gt;
    ...
&lt;/casesum:courtsummary&gt;
       </codeblock>
        </example>
        
        <section>
            <p>When <sourcexml>l</sourcexml> is a child of <sourcexml>case:decisionsummary</sourcexml> then <sourcexml>l</sourcexml> becomes <targetxml>casesum:courtsummary/p/list</targetxml>.</p>
        </section>
        
        <example>
            <codeblock>
&lt;case:decisionsummary&gt;
    ...
    &lt;l virtual-nesting="1"&gt;
        &lt;li&gt;
            &lt;lilabel&gt;3.&lt;/lilabel&gt;
            &lt;p&gt;
                &lt;text&gt;R. v. Casey &lt;ci:cite&gt;&lt;ci:case&gt;&lt;ci:caseinfo&gt;&lt;ci:decisiondate year="1977"
                                /&gt;&lt;/ci:caseinfo&gt;&lt;ci:caseref ID="cref00096061"
                                spanref="cspan00096061"&gt;&lt;ci:reporter value="WCB"/&gt;&lt;ci:volume num="1"
                                    /&gt;&lt;ci:page num="141"
                                /&gt;&lt;/ci:caseref&gt;&lt;/ci:case&gt;&lt;ci:content&gt;&lt;ci:span spanid="cspan00096061"
                                &gt;(1977) 1 W.C.B. 141&lt;/ci:span&gt;&lt;/ci:content&gt;&lt;/ci:cite&gt; (Ont.
                    C.A.).&lt;/text&gt;
            &lt;/p&gt;
        &lt;/li&gt;
    &lt;/l&gt;
&lt;/case:decisionsummary&gt;
</codeblock>
            <b>becomes</b>
            <codeblock>
&lt;casesum:courtsummary&gt;
    ...
    &lt;p&gt;
        &lt;list&gt;
            &lt;listitem&gt;
                &lt;label&gt;3.&lt;/label&gt;
                &lt;p&gt;
                    &lt;text&gt;R. v. Casey &lt;lnci:cite&gt;&lt;lnci:case&gt;&lt;lnci:caseinfo&gt;&lt;lnci:decisiondate
                                        year="1977"/&gt;&lt;/lnci:caseinfo&gt;&lt;lnci:caseref ID="cref00096061"
                                        &gt;&lt;lnci:reporter value="WCB"/&gt;&lt;lnci:volume num="1"
                                        /&gt;&lt;lnci:page num="141"
                                /&gt;&lt;/lnci:caseref&gt;&lt;/lnci:case&gt;&lt;lnci:content&gt;(1977) 1 W.C.B.
                                141&lt;/lnci:content&gt;&lt;/lnci:cite&gt; (Ont. C.A.).&lt;/text&gt;
                &lt;/p&gt;
            &lt;/listitem&gt;
        &lt;/list&gt;
    &lt;/p&gt;
&lt;/casesum:courtsummary&gt;
</codeblock>
        </example>
        
            
        <!--<section
            conref="../../common_caselaw/conref_content/Rosetta_case.filenum-LxAdv_caseinfo.docketnum.dita#Rosetta_case.filenum-LxAdv_caseinfo.docketnum/changes"/>-->
        <section>
            <title>Changes</title>
			<p>2015-08-04: <ph id="change_20150804_SEP">Updated instruction for <sourcexml>case:decisionsummary</sourcexml> to end the HELD statement
					when the next period or dash character is followed by space, followed by an upper-case letter.<b>Webteam #305302</b></ph></p>
            <p>2014-07-28: <ph id="change_20140728_PS">Added new instruction to handel "HELD" keyword in <sourcexml>case:decisionsummary</sourcexml>. <b>R4.5 Issue #1584</b>.</ph></p>
            <p>2014-07-21: <ph id="change_20140721_PS">Added new identidier <b>"ARRÊT"</b> for
                    creation of <targetxml>casesum:disposition</targetxml> and also added
                        <sourcexml>case:decisionsummary/heading/title</sourcexml> for creation of
                        <targetxml>casesum:courtsummary</targetxml>.</ph></p>
            <p>2014-07-09: <ph id="change_20140709_PS">Added identification creteria for <sourcexml>metaitem @name="SRCNAME" @value="SCJ"</sourcexml> and
                <sourcexml>metaitem @name="SRCNAME" @value="ACS"</sourcexml>, can occur with or without a space character after <b>SCJ</b> and <b>ACS</b>.</ph></p>
            <p>2014-06-25: <ph id="change_20140625_PS">Added instruction to convert <sourcexml>metaitem @name="SRCNAME" @value="ACS"</sourcexml>.</ph></p>
			<p>2014-06-10: <ph id="change_20140610_SEP">Loosened instruction to convert <sourcexml>p/text</sourcexml> with "HELD:" into <targetxml>casesum:disposition/p/text</targetxml>. Allow dash to end sentence. Allow <sourcexml>emph</sourcexml> around HELD text. Allow space before colon. Allow French language version. Convert preceding and following space dash dash with a period. Add example.<b>R4.5 Issue #1588</b></ph>.</p>
            <p>2014-05-14: <ph id="change_20140514_PS">Updated target snippet for <targetxml>case:decisionsummary/l</targetxml>, Issue ID #: 191.</ph></p>
            <p>2014-05-07: <ph id="change_20140507_PS">Added instruction and example for
                        <targetxml>case:decisionsummary/l</targetxml>, Issue ID #:191</ph>.</p>
			<p>2014-04-30: <ph id="change_20140430_SEP">Updated instruction for <targetxml>casesum:courtsummary</targetxml> and added two examples</ph>.</p>
			<p>2014-04-09: <ph id="change_20140409_SEP">Updated instruction to convert <sourcexml>p/text</sourcexml> beginning with "HELD:" into <targetxml>casesum:disposition/p/text</targetxml><b>R4.5 Issue #1193</b></ph>.</p>
			<p>2014-04-10: <ph id="change_20140410_SEP">Provide a "Jump To Link" for Court Summary by use of target <targetxml>casesum:courtsummary</targetxml> instead of <targetxml>casesum:decisionsummary</targetxml><b>R4.5 Issue #1109</b></ph>.</p>
		</section>

    </body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA01-Cases\CA01_Rosetta_case.decisionsummary-LxAdv_casesum.decisionsummary.dita  -->
    
    <!-- Vikas Rohilla : Template to match the case:decisionsummary	-->
    <xsl:template match="case:decisionsummary">
        
        <!--  Original Target XPath:  casesum:decisionsummary/@summarysource   -->
        <casesum:summaries>
            <xsl:choose>
                <xsl:when test="starts-with(heading/title,'Court Summary:')  
                    or starts-with(heading/title,'Commission Summary:') 
                    or starts-with(heading/title,'Board Summary:') 
                    or starts-with(heading/title,'Tribunal Summary:') 
                    or starts-with(heading/title,'Executive Summary:') 
                    or starts-with(heading/title,'Commissioner Summary:') 
                    or starts-with(heading/title,'Résumé du tribunal :') 
                    or starts-with(heading/title,'Sommaire du tribunal :') 
                    or starts-with(heading/title,'Résumé de la Cour :')">
                    <xsl:element name="casesum:courtsummary">
                        <xsl:variable name="courtsummary">                        
                            <xsl:element name="court_summary">
                                <xsl:apply-templates select="@* | node()"/>
                            </xsl:element>
                        </xsl:variable>
                        <xsl:apply-templates select="$courtsummary" mode="courtsummry"/>
                    </xsl:element>
                </xsl:when>
                <xsl:when test="child::heading/title[contains(.,'Subsequent History') 
                                                  or contains(.,'Historique subséquent') 
                                                  or contains(.,'Court Catchwords') 
                                                  or contains(.,'Indexation de la Cour')] 
                                                  or child::p[1]/text[1]/emph[1][contains(.,'Subsequent History') 
                                                  or contains(.,'Historique subséquent') 
                                                  or contains(.,'Court Catchwords') 
                                                  or contains(.,'Indexation de la Cour')]">
                    <xsl:element name="casesum:courtsummary">
                        <xsl:variable name="courtsummary">
                            <xsl:element name="court_summary">
                            <xsl:apply-templates select="@* | node()"/>
                            </xsl:element>
                        </xsl:variable>
                        <xsl:apply-templates select="$courtsummary" mode="courtsummry"/>
                    </xsl:element>
                </xsl:when>
                <xsl:otherwise>
                    <casesum:decisionsummary>
                        <xsl:variable name="decision">
                        <xsl:apply-templates select="heading/title/refpt"/>
                        <xsl:apply-templates select="heading"/>
                        <xsl:for-each-group select="*" group-adjacent="
                            if(self::p[child::text[starts-with(.,'HELD:') or starts-with(.,'DISPOSITIF :') or starts-with(.,'ARRÊT') ]])
                            then 'disposition' else if (self::heading) then 'heading'
                                else 'none' ">
                            <xsl:choose>
                                <xsl:when test="current-grouping-key() eq 'disposition'">
                                    <casesum:disposition>
                                        <xsl:apply-templates select="current-group()"/>
                                    </casesum:disposition>
                                </xsl:when>
                                <xsl:when test="current-grouping-key() eq 'heading'"/>
                                <xsl:when test="current-grouping-key() eq 'none'">
                                    <bodytext>
                                        <xsl:apply-templates select="current-group()"/>
                                    </bodytext>
                                </xsl:when>
                            </xsl:choose>    
                        </xsl:for-each-group>
                        </xsl:variable>                       
                        <xsl:apply-templates select="$decision" mode="summry"/>
                    </casesum:decisionsummary>
                </xsl:otherwise>
            </xsl:choose>            
        </casesum:summaries>
    </xsl:template>
    
    
    <xsl:template match="@*|node()" mode="summry">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()" mode="summry"/>
        </xsl:copy>
    </xsl:template>
    
    <xsl:template match="@*|node()" mode="courtsummry">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()" mode="courtsummry"/>
        </xsl:copy>
    </xsl:template>
    
    <xsl:template match="*:court_summary" mode="courtsummry">        
            <xsl:apply-templates select="@*|node()" mode="courtsummry"/>
    </xsl:template>
    
    <xsl:template match="*:list[parent::*:court_summary]" mode="courtsummry">
        <p xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
            <xsl:copy-of select="."/>
        </p>
    </xsl:template>

    <xsl:template match="casesum:disposition" mode="summry">
        <!--<xsl:copy>-->
            <!-- 2018-04-04: Ravikant: Added  xsl:for-each select="child::*:p condition for handling sequence of more than one "child::*:p[child::*:text[starts-with(.,'­HELD:')]]" W* 7153302-->
            <xsl:for-each select="child::*:p">
                <casesum:disposition>
                <p>
                    <text>
                        <xsl:choose>
                            <xsl:when test="child::*:text[starts-with(.,'HELD:')]">
                                <xsl:value-of select="substring-before(child::*:text[starts-with(.,'HELD:')],'.')"/>        
                            </xsl:when>
                            <xsl:when test="child::*:text[starts-with(.,'ARRÊT')]">
                                <xsl:value-of select="substring-before(child::*:text[starts-with(.,'ARRÊT')],'.')"/>        
                            </xsl:when>
                            <xsl:otherwise>
                                <xsl:value-of select="substring-before(child::*:text[starts-with(.,'DISPOSITIF : ')],'.')"/>
                            </xsl:otherwise>
                        </xsl:choose>
                        <xsl:text>.</xsl:text>
                    </text>
                </p>
                </casesum:disposition>
                <xsl:if test="child::*:text[starts-with(.,'HELD:') or starts-with(.,'DISPOSITIF :') or starts-with(.,'ARRÊT') ][normalize-space(substring-after(.,'.'))!='']">
                    <bodytext>
                        <p>
                            <xsl:apply-templates select="@*|node()" mode="summry"/>
                        </p>
                    </bodytext>
                </xsl:if>
            </xsl:for-each>
            <!--<p>
                <text>
                    <xsl:choose>
                        <xsl:when test="child::*:p[child::*:text[starts-with(.,'HELD:')]]">
                            <xsl:value-of select="substring-before(child::*:p[child::*:text[starts-with(.,'HELD:')]],'.')"/>        
                        </xsl:when>
                        <xsl:when test="child::*:p[child::*:text[starts-with(.,'ARRÊT')]]">
                            <xsl:value-of select="substring-before(child::*:p[child::*:text[starts-with(.,'ARRÊT')]],'.')"/>        
                        </xsl:when>
                        <xsl:otherwise>
                            <xsl:value-of select="substring-before(child::*:p[child::*:text[starts-with(.,'DISPOSITIF : ')]],'.')"/>
                        </xsl:otherwise>
                    </xsl:choose>
                    <xsl:text>.</xsl:text>
                </text>
            </p>-->
        <!--</xsl:copy>-->
       <!-- <xsl:if test="not(following::*)">
            <xsl:variable name="nn" select="self::casesum:disposition/*:p/*:text"/>
            <bodytext>
            <p>
                <text>
                    <xsl:apply-templates select="$nn/node()" mode="summry"/>
                </text>
            </p>
            </bodytext>
        </xsl:if>-->
    </xsl:template>


   <!-- <xsl:template match="*:bodytext[preceding-sibling::*[1][self::casesum:disposition]]" mode="summry">
        <xsl:variable name="nn" select="preceding-sibling::*[1][self::casesum:disposition]/*:p/*:text"/>
        <xsl:copy>
            <xsl:if test="preceding-sibling::*[1][self::casesum:disposition[normalize-space(substring-after(.,'.'))!='']]">
            <p>
                <text>
                    <xsl:apply-templates select="$nn/node()" mode="summry"/>
                </text>
            </p>
            </xsl:if>
            <xsl:apply-templates mode="summry"/>
        </xsl:copy>
    </xsl:template>
-->
    <xsl:template match="*:text/text()[ancestor::casesum:disposition]" mode="summry">
        <xsl:analyze-string select="." regex="^[^.]+\.(.+)">
            <xsl:matching-substring>
                <xsl:value-of select="regex-group(1)"/>
            </xsl:matching-substring>
            <xsl:non-matching-substring>
                <xsl:value-of select="."/>
            </xsl:non-matching-substring>
        </xsl:analyze-string> 
    </xsl:template>
    
    <xsl:template match="*:emph[contains(.,'DISPOSITIF') or contains(.,'HELD') or contains(.,'ARRÊT')]" mode="summry"/>
    
  
    
    <xsl:template match="*:p[child::*:text[starts-with(.,'HELD:') or starts-with(.,'DISPOSITIF :') ]][parent::case:decisionsummary]" mode="courtsummry" priority="25">     
        <casesum:disposition>
            <p>
                <text>
                <xsl:choose>
                    <xsl:when test="child::*:text[starts-with(.,'HELD:')]">
                        <xsl:value-of select="substring-before(child::*:text[starts-with(.,'HELD:')],'.')"/>        
                    </xsl:when>
                    <xsl:when test="child::*:text[starts-with(.,'ARRÊT')]">
                        <xsl:value-of select="substring-before(child::*:text[starts-with(.,'ARRÊT')],'.')"/>        
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:value-of select="substring-before(child::*:text[starts-with(.,'DISPOSITIF : ')],'.')"/>
                    </xsl:otherwise>
                </xsl:choose>
                <xsl:text>.</xsl:text>
                </text>
            </p>
        </casesum:disposition>        
        <xsl:if test="normalize-space(substring-after(.,'.'))!='' or normalize-space(substring-after(.,'.'))!='' or normalize-space(substring-after(.,'.'))!=''">
            <p>
                <xsl:choose>
                    <xsl:when test="child::text/child::*[1][self::emph]">
                         <text>
                            <xsl:apply-templates select="text/(node() except emph)"/>
                        </text>
                    </xsl:when>
                    <xsl:otherwise>                    
                        <xsl:apply-templates select="node()" mode="courtsummry"/>
                    </xsl:otherwise>
                </xsl:choose>        
            </p>
        </xsl:if>
    </xsl:template>


    <xsl:template match="*:text/text()[contains(.,'HELD:') or contains(.,'DISPOSITIF :') ]" mode="courtsummry" priority="25">
        <xsl:variable name="replaced_text" select="if(contains(.,'HELD:') or contains(.,'DISPOSITIF :'  ) or contains(.,'ARRÊT')) then substring-after(.,'.') else self::text()"/>
        <xsl:value-of select="$replaced_text"/>
    </xsl:template>
                                      
                  
</xsl:stylesheet>