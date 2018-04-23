<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:casedigest="http://www.lexisnexis.com/xmlschemas/content/legal/case-digest/1/" xmlns:casesum="http://www.lexisnexis.com/xmlschemas/content/legal/case-summary/1/" xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita casedigest casesum ref case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="case.decisionsummary">
  <title>case:decisionsummary <lnpid>id-CA02CC-12418</lnpid></title>
  <body>
    <section>
      <ul>
        <li>
                    <sourcexml>case:decisionsummary</sourcexml> becomes
                        <targetxml>casedigest:decision/casedigest:decisionsummary</targetxml>, and
                    place as a child of <targetxml>casedigest:body</targetxml>. Multiple occurrences
                    of <sourcexml>p</sourcexml> will be wrapped under
                        <targetxml>casedigest:decisionsummary/bodytext</targetxml>: </li>
                <li><sourcexml>case:decisionsummary/heading/title</sourcexml> will become
                        <targetxml>casedigest:decision/casedigest:decisionsummary/heading/title.</targetxml></li>
                <li>
                    <p>When <sourcexml>case:decisionsummary/heading/title</sourcexml> begins with
                        any of the following text: <ul id="ul_rfk_bwp_2q">
                            <li><sourcexml>"Court Summary:" (or the French version,
                                    "Résumé de la Cour :")</sourcexml></li>
                            <li><sourcexml>Commission Summary:</sourcexml></li>
                            <li><sourcexml>Board Summary:</sourcexml></li>
                            <li><sourcexml>Tribunal Summary:</sourcexml></li>
                            <li><sourcexml>Executive Summary:</sourcexml></li>
                            <li><sourcexml>Commissioner Summary: </sourcexml></li>
                            <li><sourcexml>Résumé du tribunal :</sourcexml></li>
                            <li><sourcexml>Sommaire du tribunal :</sourcexml></li>
                        </ul> then use <targetxml>casesum:courtsummary</targetxml> instead of
                            <targetxml>casedigest:decisionsummary</targetxml>.</p>
                    <!--<p>Also, do the same when: <sourcexml>metaitem @name="SRCNAME" @value="SCJ "</sourcexml>
and, <sourcexml>casesum:decisionsummary/bodytext/p/text/emph</sourcexml> contains "Subsequent History:" ("Historique subs&#xe9;quent:" in French) or "Court Catchwords:" ("Indexation de la Cour:" in French).</p>-->
                    <note>
                        <ul id="ul_rlk_bwp_2q">
                            <li>If there is a scenario where
                                    <sourcexml>case:decisionsummary/heading/title</sourcexml> begins
                                with any of the above given texts AND <sourcexml>p/text</sourcexml>
                                containing a sentence beginning with "HELD:" or the French language
                                version "DISPOSITIF :", in all caps, with or without a space
                                character before the colon, or same within emph tag (e.g.
                                    "<sourcexml>emph typestyle="bf"</sourcexml>"), then for mapping
                                use <targetxml>casesum:courtsummary</targetxml> instead of
                                    <targetxml>casedigest:decisionsummary</targetxml>.</li>
                            <li>If for above scenario <sourcexml>case:decisionsummary</sourcexml>
                                contains <sourcexml>figure</sourcexml> as its child then map it to
                                    <targetxml>p/text/figure</targetxml>, For more clarification
                                please refer the example below. </li>
                            <li>If for above scenario <sourcexml>case:decisionsummary</sourcexml>
                                contains <sourcexml>l</sourcexml> as its child then map it to
                                    <targetxml>p/list</targetxml>, For more clarification please
                                refer the example below. </li>
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
        &lt;text&gt;HELD: The Employer's interpretation of the collective agreement is correct. &lt;/text&gt;
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
                    <note>If there is no text after <b>HELD:</b> and it is followed by
                            <sourcexml>l</sourcexml> then, whole list including its child elements
                        will come under <targetxml>casesum:disposition</targetxml>. For more
                        clarification please refer the below example.</note>
                    <pre><b>Source XML</b>
&lt;case:decisionsummary&gt;
    &lt;p&gt;
        &lt;text&gt; HELD: &lt;/text&gt;
    &lt;/p&gt;
    &lt;l virtual-nesting="3"&gt;
        &lt;li&gt;
            &lt;lilabel&gt;1.&lt;/lilabel&gt;
            &lt;p&gt;
                &lt;text&gt;The OSC's reasons for decision are not admissible in this proceeding.&lt;/text&gt;
            &lt;/p&gt;
        &lt;/li&gt;
        &lt;li&gt;
            &lt;lilabel&gt;2.&lt;/lilabel&gt;
            &lt;p&gt;
                &lt;text&gt;The OSC's reasons for decision are irrelevant to the certification
                    motion.&lt;/text&gt;
            &lt;/p&gt;
        &lt;/li&gt;
        &lt;li&gt;
            &lt;lilabel&gt;3.&lt;/lilabel&gt;
            &lt;p&gt;
                &lt;text&gt;The settlement agreement is admissible.&lt;/text&gt;
            &lt;/p&gt;
        &lt;/li&gt;
        &lt;li&gt;
            &lt;lilabel&gt;4.&lt;/lilabel&gt;
            &lt;p&gt;
                &lt;text&gt;The language of the settlement agreement deems it inadmissible.&lt;/text&gt;
            &lt;/p&gt;
        &lt;/li&gt;
    &lt;/l&gt;
&lt;/case:decisionsummary&gt;                
            </pre>
                    <pre><b>Target XML</b>

&lt;casedigest:decision&gt;
    &lt;casedigest:decisionsummary&gt;
        &lt;casesum:disposition&gt;
            &lt;p&gt;
                &lt;text&gt;HELD:  &lt;/text&gt;
                &lt;list&gt;
                    &lt;listitem&gt;
                        &lt;label&gt;1.&lt;/label&gt;
                        &lt;bodytext&gt;
                            &lt;p&gt;
                                &lt;text&gt;The OSC's reasons for decision are not admissible in this proceeding.&lt;/text&gt;
                            &lt;/p&gt;
                        &lt;/bodytext&gt;
                    &lt;/listitem&gt;
                    &lt;listitem&gt;
                        &lt;label&gt;2.&lt;/label&gt;
                        &lt;bodytext&gt;
                            &lt;p&gt;
                                &lt;text&gt;The OSC's reasons for decision are irrelevant to the certification
                                    motion.&lt;/text&gt;
                            &lt;/p&gt;
                        &lt;/bodytext&gt;
                    &lt;/listitem&gt;
                    &lt;listitem&gt;
                        &lt;label&gt;3.&lt;/label&gt;
                        &lt;bodytext&gt;
                            &lt;p&gt;
                                &lt;text&gt;The settlement agreement is admissible.&lt;/text&gt;
                            &lt;/p&gt;
                        &lt;/bodytext&gt;
                    &lt;/listitem&gt;
                    &lt;listitem&gt;
                        &lt;label&gt;4.&lt;/label&gt;
                        &lt;bodytext&gt;
                            &lt;p&gt;
                                &lt;text&gt;The language of the settlement agreement deems it inadmissible.&lt;/text&gt;
                            &lt;/p&gt;
                        &lt;/bodytext&gt;
                    &lt;/listitem&gt;
                &lt;/list&gt;
            &lt;/p&gt;
        &lt;/casesum:disposition&gt;
    &lt;/casedigest:decisionsummary&gt;
&lt;/casedigest:decision&gt;
</pre>
                    <note>
                        <p>For any <sourcexml>p/text</sourcexml> beginning with "HELD:" (or French
                            language version "DISPOSITIF :") or containing a sentence beginning with
                            "HELD:" (or the French language version "DISPOSITIF :"), in all caps,
                            with or without a space character before the colon, or same within emph
                            tag (e.g. "<sourcexml>emph typestyle="bf"</sourcexml>"), the sentence
                            becomes <targetxml>casesum:disposition/p/text</targetxml> beginning with
                            "HELD:" or French language equivalent. That is, isolate the holdings
                            sentence based on looking in <sourcexml>case:decisionsummary</sourcexml>
                            for the sentence beginning "HELD:" (or French language version
                            "DISPOSITIF :") in all capital letters andand placing the end tags after
                            the next period or dash character followed by space, followed by an
                            upper-case letter, that completes the sentence. (i.e. the mark-up would
                            surround only one sentence.) The preceding and following space dash dash
                            space, if any, should be converted to period space. See the two
                            examples.</p>
                    </note>
                    <note> Convert all double dashes (--) to m dashes (-). </note>
                    <pre>
&lt;case:decisionsummary&gt;
    &lt;p&gt;
        &lt;text&gt;Criminal law — Sentencing — Sentence, particular offences — Impaired driving causing bodily harm — Punishments (sentence) — When available or appropriate — Prohibition orders — Respecting driving of motor vehicle.
        &lt;/text&gt;
    &lt;/p&gt;
    &lt;p&gt;
        &lt;text&gt;Sentencing hearing. Moore drove a vehicle that rear-ended a taxicab. The
            taxi driver and his passenger were injured. Moore exhibited signs of
            impairment. He refused a breathalyzer demand. He pleaded guilty to impaired
            driving and causing bodily harm. The passenger suffered emotional stress
            from the accident and became more nervous. Moore had been convicted of
            assault with a weapon in 1998. He was 27 years old and was employed. He was
            remorseful about the accident and the injuries that were sustained. Moore no
            longer used alcohol. He also did not own or drive a motor vehicle. Moore
            sought a conditional discharge. &lt;/text&gt;
    &lt;/p&gt;
    &lt;p&gt;
        &lt;text&gt;HELD: Moore was sentenced to a conditional sentence of nine months. He was
            to remain at his home except for employment, one hour of exercise daily
            between noon and 1:00 p.m., medical appointments or courses related to his
            problems and for shopping and personal errands one day a week for two hours.
            He was also not to operate a motor vehicle. This sentence would be followed
            by three years probation. Moore was subject to a three-year driving
            prohibition and was to provide a DNA sample. The conditional sentence was
            appropriate because Moore's risk of re-offending was very low. The primary
            sentencing considerations were protection of the public and general
            deterrence. This would be accomplished by a lengthy driving prohibition and
            a condition that Moore consume no alcohol during his house arrest and
            probation. &lt;/text&gt;
    &lt;/p&gt;
&lt;/case:decisionsummary&gt;

<b>Becomes</b>   

&lt;casedigest:decision&gt;
    &lt;casedigest:decisionsummary&gt;
        &lt;bodytext&gt;
            &lt;p&gt;
                &lt;text&gt;Criminal law — Sentencing — Sentence, particular offences — Impaired driving causing bodily harm — Punishments (sentence) — When available or appropriate — Prohibition orders — Respecting driving of motor vehicle.
                &lt;/text&gt;
            &lt;/p&gt;
            &lt;p&gt;
                &lt;text&gt;Sentencing hearing. Moore drove a vehicle that rear-ended a taxicab. The taxi
                    driver and his passenger were injured. Moore exhibited signs of impairment. He
                    refused a breathalyzer demand. He pleaded guilty to impaired driving and causing
                    bodily harm. The passenger suffered emotional stress from the accident and
                    became more nervous. Moore had been convicted of assault with a weapon in 1998.
                    He was 27 years old and was employed. He was remorseful about the accident and
                    the injuries that were sustained. Moore no longer used alcohol. He also did not
                    own or drive a motor vehicle. Moore sought a conditional discharge. &lt;/text&gt;
            &lt;/p&gt;
            &lt;/bodytext&gt;
            &lt;casesum:disposition&gt;
            &lt;p&gt;
                &lt;text&gt;HELD: Moore was sentenced to a conditional sentence of nine months. &lt;/text&gt;
            &lt;/p&gt;
            &lt;/casesum:disposition&gt;
       &lt;bodytext&gt;
            &lt;p&gt;
                &lt;text&gt;He was to remain at his home except for employment, one hour of exercise daily between
                    noon and 1:00 p.m., medical appointments or courses related to his problems and
                    for shopping and personal errands one day a week for two hours. He was also not
                    to operate a motor vehicle. This sentence would be followed by three years
                    probation. Moore was subject to a three-year driving prohibition and was to
                    provide a DNA sample. The conditional sentence was appropriate because Moore's
                    risk of re-offending was very low. The primary sentencing considerations were
                    protection of the public and general deterrence. This would be accomplished by a
                    lengthy driving prohibition and a condition that Moore consume no alcohol during
                    his house arrest and probation.
                &lt;/text&gt;
            &lt;/p&gt;
            &lt;/bodytext&gt;
    &lt;/casedigest:decisionsummary&gt;
&lt;/casedigest:decision&gt;</pre>
                </li>
      </ul>
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
		&lt;text&gt;Demande d'injonction interlocutoire - Bérubé publie et distribue depuis 1973 un journal de quartier, l'Information Centre-Ville - Il tire son revenu de la publicité apparaissant dans le journal - Son fils était associé avec lui jusqu'à ce qu'il quitte le journal et en publie un à son tour, l'Hebdo Centre-Ville (L'Hebdo) - L'Hebdo vise la même clientèle, le même secteur de la ville, sollicite les mêmes commanditaires et met l'accent, dans sa présentation, sur l'expression Centre-Ville, comme le fait l'Information Centre-Ville - Bérubé demande qu'il soit ordonné à son fils et son associé de cesser la distribution de l'Hebdo.&lt;/text&gt;
	&lt;/p&gt;
&lt;/bodytext&gt;
&lt;casesum:disposition&gt;
	&lt;p&gt;
		&lt;text&gt;DISPOSITIF : Demande accueillie. &lt;/text&gt; 
	&lt;/p&gt;
&lt;/casesum:disposition&gt;
&lt;bodytext&gt;
	&lt;p&gt;
		&lt;text&gt;Même si la marque de commerce Centre-ville n'est pas enregistrée, elle appartient à Bérubé depuis 1973 - Le fils et son associé ont concurrencé Bérubé d'une façon non permise par la Loi concernant les marques de commerce - La balance des inconvénients penche en faveur de Bérubé. &lt;/text&gt;
	&lt;/p&gt;
&lt;/bodytext&gt;

       </codeblock>
        </example>
      
      <example> Example: <codeblock>
&lt;case:decisionsummary&gt;
    &lt;p&gt;
        &lt;text&gt;Sentencing of Fawaz following his conviction on a charge of possession of a forged
            passport -- Fawaz was apprehended at the Vancouver International Airport after he
            attempted to enter Canada under a false name -- Fawaz made a refugee claim from Syria in
            1991 and was in the process of seeking permanent residency -- He had previously been
            convicted of GST fraud -- Fawaz admitted leaving and re-entering Canada several times
            with the false passport -- &lt;emph typestyle="bf"&gt;HELD:&lt;/emph&gt; Fawaz was sentenced to 10
            months' imprisonment, less one month's credit for time served -- The offence itself was
            serious -- Immigration fraud undermined a system meant to protect the citizens of Canada
            -- Fawaz clearly regarded the law as no particular impediment to doing what he otherwise
            wanted -- It was not possible to convey the proper measure of denunciation outside of a
            custodial sentence -- Sentence: Nine months' imprisonment.&lt;/text&gt;
    &lt;/p&gt;
&lt;/case:decisionsummary&gt;
          </codeblock>
            <b>becomes</b>
            <codeblock>
  
&lt;casesum:decisionsummary&gt;
    &lt;bodytext&gt;
        &lt;p&gt;
            &lt;text&gt;Sentencing of Fawaz following his conviction on a charge of possession of a forged
                passport - Fawaz was apprehended at the Vancouver International Airport after he
                attempted to enter Canada under a false name - Fawaz made a refugee claim from Syria in
                1991 and was in the process of seeking permanent residency - He had previously been
                convicted of GST fraud - Fawaz admitted leaving and re-entering Canada several times
                with the false passport &lt;/text&gt;
        &lt;/p&gt;
    &lt;/bodytext&gt;
    &lt;casesum:disposition&gt;
        &lt;p&gt;
            &lt;text&gt;&lt;emph typestyle="bf"&gt;HELD:&lt;/emph&gt; Fawaz was sentenced to 10 months' imprisonment, less one month's credit for time served. &lt;/text&gt; 
        &lt;/p&gt;
    &lt;/casesum:disposition&gt;
    &lt;bodytext&gt;
        &lt;p&gt;
            &lt;text&gt;
                The offence itself was
                serious - Immigration fraud undermined a system meant to protect the citizens of Canada
                - Fawaz clearly regarded the law as no particular impediment to doing what he otherwise
                wanted - It was not possible to convey the proper measure of denunciation outside of a
                custodial sentence - Sentence: Nine months' imprisonment.
            &lt;/text&gt;
        &lt;/p&gt;
    &lt;/bodytext&gt;
&lt;/casesum:decisionsummary&gt;            
          </codeblock>
        </example>

      <p>
            <note>If <sourcexml>refpt</sourcexml> is the child of
                    <sourcexml>case:decisionsummary/heading/title</sourcexml> then in target
                    <targetxml>ref:anchor</targetxml> will be moved to the following
                    <sourcexml>p</sourcexml> element occuring. Please see the example for more
                clarification.</note>
        </p>
      <note>All occurrences of <sourcexml>refpt[@type="ext"]</sourcexml> should map to
                <targetxml>ref:anchor[@anchortype="global"]</targetxml>. If value of
                <sourcexml>refpt[@type="local"]</sourcexml>, or is omitted or any other value the
            mapping should be <targetxml>ref:anchor[@anchortype="local"]</targetxml>.</note>
     <codeblock><b>Source XML</b>

&lt;case:decisionsummary&gt;
    &lt;heading&gt;
       &lt;title&gt;&lt;refpt id="HISTDISP001" type="local"/&gt;History and Disposition:&lt;/title&gt;
    &lt;/heading&gt;
    &lt;p&gt;
      &lt;text&gt;APPEAL from a judgment of the Alberta...&lt;/text&gt;
    &lt;/p&gt;
&lt;/case:decisionsummary&gt;

     </codeblock>
      <codeblock><b>Target XML</b>

&lt;casedigest:decisionsummary&gt;
    &lt;heading&gt;
        &lt;title&gt;History and Disposition:&lt;/title&gt;
    &lt;/heading&gt;
    &lt;bodytext&gt;
        &lt;p&gt;
          &lt;ref:anchor id="HISTDISP001" anchortype="local"/&gt;
          &lt;text&gt;APPEAL from a judgment of the Alberta... &lt;/text&gt;
        &lt;/p&gt;
    &lt;/bodytext&gt;
&lt;/casedigest:decisionsummary&gt;
          

      </codeblock>
      
      <section>
          <title>Changes</title>
          <p>2015-01-09: <ph id="change_20150109_AS">Added instruction to map refpt to the following p if occuring under case:decisionsummary/heading/title  ... <b>P4 Issue #393</b></ph></p>
          <p>2014-11-24: <ph id="change_20141124_AS">Added instruction for case:decisionsummary/heading/title  ... <b>P4 Issue #363</b></ph></p>
          <p>2014-08-27: <ph id="change_20140827_AS">Updated instruction for case:decisionsummary to place the period sign after completion of sentence ... <b>P4 Issue #323</b></ph></p>
          <p>2014-08-21: <ph id="change_20140821_AS">Schema updated to allow casesum:courtsummary instead of casedigest:decisionsummary... <b>P4 Issue #316</b></ph></p>
          <p>2014-08-11: <ph id="change_20140811_AS">Updated instruction for case:decisionsummary
                    having HELD without any following text... <b>P4 Issue #317</b></ph></p>
          <p>2014-08-08: <ph id="change_20140808_AS">Updated instruction for case:decisionsummary having l as its child element... <b>P4 Issue #314</b></ph></p>
          <p>2014-08-07: <ph id="change_20140807_AS">Updated instruction for casesum:disposition -
                    Space appearing before the "." .. <b>P4 Issue #302 and 320</b></ph></p>
          <p>2014-07-28: <ph id="change_20140728_AS">Added instruction to handle "HELD:" keyword in case:decisionsummary.. <b>R4.5 Issue #1584</b></ph></p>
          <p>2014-07-15: <ph id="change_20140715_AS">Clarification on HELD data scenario...."DB item # 268 </ph></p>
          <p>2014-06-19: <ph id="change_20140619_AS">Example to handle HELD and DESPOTIF containing emph...."DB item # 222 </ph></p>
			<p>2014-06-10: <ph id="change_20140610_SEP">Loosened instruction to convert <sourcexml>p/text</sourcexml> beginning with "HELD:" into <targetxml>casesum:disposition/p/text</targetxml>. Allow dash to end first sentence. Allow <sourcexml>emph</sourcexml> around HELD text. Allow space before colon. Allow French language version. Convert preceding and following space dash dash with a period. Add example.<b>R4.5 Issue #1588</b></ph>.</p>
          <p>2014-05-27: <ph id="change_20140527_AS"> holding's of court / despotif..."DB item # 1602 </ph></p>
          <p>2014-04-09: <ph id="change_20140409_AS">Removed double dashes at decisionsummary section..."DB item # 1343 </ph></p>
      </section>
  </body>
	</dita:topic>
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA02-Case_Summaries\CA02CC_CASEDOC\case.decisionsummary.dita  -->
    <!-- Sudhanshu Srivastava : Template to match the case:decisionsummary	-->
    <xsl:template match="case:decisionsummary">
        
        <!--  Original Target XPath:  casesum:decisionsummary/@summarysource   -->
        <casedigest:decision>
            <xsl:choose>
                <xsl:when test="starts-with(heading/title,'Court Summary:')  or starts-with(heading/title,'Commission Summary:') or starts-with(heading/title,'Board Summary:') or starts-with(heading/title,'Tribunal Summary:') or starts-with(heading/title,'Executive Summary:') or starts-with(heading/title,'Commissioner Summary:') or starts-with(heading/title,'Résumé du tribunal :') or starts-with(heading/title,'Sommaire du tribunal :') or starts-with(heading/title,'Résumé de la Cour :')">
                    <!-- Awantika: 2018-02-14- changed to casesum:courtsummary for webstar # 7116564 -->
                    <xsl:element name="casesum:courtsummary">
                        <xsl:if test="@summarytype">
                            <xsl:attribute name="summarysource">
                                <xsl:value-of select="@summarytype"/>
                            </xsl:attribute>
                        </xsl:if>
                        <xsl:if test="@subdoc">
                            <xsl:attribute name="includeintoc">
                                <xsl:value-of select="@subdoc"/>
                            </xsl:attribute>
                        </xsl:if>
                        <xsl:if test="@toc-caption">
                            <xsl:attribute name="alternatetoccaption">
                                <xsl:value-of select="@toc-caption"/>
                            </xsl:attribute>
                        </xsl:if>
                        <xsl:apply-templates select="@* | node()"/>
                    </xsl:element>
                </xsl:when>
                <xsl:when test="child::heading/title[contains(.,'Subsequent History') or contains(.,'Historique subséquent') or contains(.,'Court Catchwords') or contains(.,'Indexation de la Cour')] or child::p[1]/text[1]/emph[1][contains(.,'Subsequent History') or contains(.,'Historique subséquent') or contains(.,'Court Catchwords') or contains(.,'Indexation de la Cour')]">
                    <xsl:element name="casesum:courtsummary">
                        <xsl:if test="@summarytype">
                            <xsl:attribute name="summarysource">
                                <xsl:value-of select="@summarytype"/>
                            </xsl:attribute>
                        </xsl:if>
                        <xsl:if test="@subdoc">
                            <xsl:attribute name="includeintoc">
                                <xsl:value-of select="@subdoc"/>
                            </xsl:attribute>
                        </xsl:if>
                        <xsl:if test="@toc-caption">
                            <xsl:attribute name="alternatetoccaption">
                                <xsl:value-of select="@toc-caption"/>
                            </xsl:attribute>
                        </xsl:if>
                        <xsl:apply-templates select="@* | node()"/>
                    </xsl:element>
                </xsl:when>
                <xsl:otherwise>
                    
                    <casedigest:decisionsummary>
                        <xsl:variable name="decision">
                            <!--<xsl:apply-templates select="heading/title/refpt"/>-->
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
                    </casedigest:decisionsummary>
                    
                    
                    
                <!--    <casedigest:decisionsummary>
                        <xsl:if test="@summarytype">
                            <xsl:attribute name="summarysource">
                                <xsl:value-of select="@summarytype"/>
                            </xsl:attribute>
                        </xsl:if>
                        <xsl:if test="@subdoc">
                            <xsl:attribute name="includeintoc">
                                <xsl:value-of select="@subdoc"/>
                            </xsl:attribute>
                        </xsl:if>
                        <xsl:if test="@toc-caption">
                            <xsl:attribute name="alternatetoccaption">
                                <xsl:value-of select="@toc-caption"/>
                            </xsl:attribute>
                        </xsl:if>		   
                        <xsl:apply-templates select="heading"/>
                        <bodytext>
                            <xsl:apply-templates select="@* | node() except( heading|p[text[starts-with(.,'HELD:')]]|p[text[starts-with(.,'DISPOSITIF : ')]])"/>
                        </bodytext>
                        <xsl:if test="p[text[starts-with(.,'HELD:') or starts-with(.,'DISPOSITIF :') ]]">
                            <casesum:disposition>
                                <p>
                                    <text>
                                        <xsl:choose>
                                            <xsl:when test="p[text[starts-with(.,'HELD:')]]">
                                                <xsl:value-of select="substring-before(p[text[starts-with(.,'HELD:')]],'.')"/>        
                                            </xsl:when>
                                            <xsl:otherwise>
                                                <xsl:value-of select="substring-before(p[text[starts-with(.,'DISPOSITIF : ')]],'.')"/>
                                            </xsl:otherwise>
                                        </xsl:choose>
                                        <xsl:text>.</xsl:text>
                                    </text>
                                </p>
                            </casesum:disposition>
                            <bodytext>
                                <xsl:apply-templates select="p[text[starts-with(.,'HELD:')]]|p[text[starts-with(.,'DISPOSITIF : ')]]"/>
                            </bodytext>
                        </xsl:if>                        
                    </casedigest:decisionsummary>
                
                -->
                
                </xsl:otherwise>
            </xsl:choose>
            
        </casedigest:decision>
    </xsl:template>
    
    <xsl:template match="case:decisionsummary/p/text/text()[contains(.,'--')]" priority="2">
        <xsl:copy-of select="replace(.,'--','—')"></xsl:copy-of>        
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
        <xsl:copy>
            <p>
                <text>
                    <xsl:choose>
                        <xsl:when test="child::*:p[child::*:text[starts-with(.,'HELD:')]]">
                            <xsl:value-of select="substring-before(child::*:p[child::*:text[starts-with(.,'HELD:')]][1],'.')"/>        
                        </xsl:when>
                        <xsl:when test="child::*:p[child::*:text[starts-with(.,'ARRÊT')]]">
                            <xsl:value-of select="substring-before(child::*:p[child::*:text[starts-with(.,'ARRÊT')]][1],'.')"/>        
                        </xsl:when>
                        <xsl:otherwise>
                            <xsl:value-of select="substring-before(child::*:p[child::*:text[starts-with(.,'DISPOSITIF : ')]][1],'.')"/>
                        </xsl:otherwise>
                    </xsl:choose>
                    <xsl:text>.</xsl:text>
                </text>
            </p>
        </xsl:copy>
        <xsl:if test="not(following::*)">
            <xsl:variable name="nn" select="self::casesum:disposition/*:p/*:text"/>
            <bodytext>
                <p>
                    <text>
                        <xsl:apply-templates select="$nn/node()" mode="summry"/>
                    </text>
                </p>
            </bodytext>
        </xsl:if>
    </xsl:template>
    
    
    <xsl:template match="*:bodytext[preceding-sibling::*[1][self::casesum:disposition]]" mode="summry">
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