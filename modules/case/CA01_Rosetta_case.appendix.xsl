<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:courtcase="http://www.lexisnexis.com/xmlschemas/content/legal/courtcase/1/" xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="CA01_Rosetta_case.appendix">
    <title>case:appendix <lnpid>id-CA01-12210</lnpid></title>
    <body>
        <section>
            <p><sourcexml>case:appendix</sourcexml> should be omitted and its children should be
                handled as follows: <ul>
                    <li><p><sourcexml>p</sourcexml> maps to <targetxml>p</targetxml> at the end of
                            the last <targetxml>courtcase:opinion/bodytext</targetxml> in
                                <targetxml>courtcase:courtcase/courtcase:body/courtcase:opinions</targetxml>.</p></li>
                    <li><sourcexml>case:headnote</sourcexml> should be omitted and its children
                        should be handled as follows: <ul>
                            <li><sourcexml>case:references</sourcexml> becomes
                                    <targetxml>courtcase:opinions/courtcase:opinion/bodytext/ref:relatedrefs</targetxml>.
                                See the instructions for <xref href="../../common_caselaw/Rosetta_case.references-LxAdv_ref.relatedrefs.dita">case:references</xref> for details.</li>
                            <li><sourcexml>case:info/case:constituents</sourcexml> becomes
                                    <targetxml>courtcase:body/courtcase:representation/bodytext</targetxml>.
                                See the instructions for <xref href="CA01_Rosetta_case.constituents-LxAdv_courtcase.body_courtcase.representation.dita">case:constituents</xref> for details.</li>
                            <li><sourcexml>case:decisionsummary</sourcexml> becomes
                                    <targetxml>courtcase:head/casesum:summaries/casesum:decisionsummary</targetxml>.
                                See the instructions for <xref href="CA01_Rosetta_case.decisionsummary-LxAdv_casesum.decisionsummary.dita">case:decisionsummary</xref> for details.</li>
                        </ul></li>
                    <li><sourcexml>case:priorhist</sourcexml> should be omitted, but its content
                        should be treated as if it were part of the
                            <sourcexml>case:judgment/case:judgmentbody</sourcexml> that preceded
                            <sourcexml>case:appendix</sourcexml>.</li>
                </ul></p>
            <note>If <sourcexml>case:appendix/case:headnote</sourcexml> contains
                    <sourcexml>case:priorhist</sourcexml>
                <b>and</b><sourcexml>case:info</sourcexml>, this likely indicates the presence of a
                nested case that should be separated from the case that is the subject of the
                document. These documents should be brought to the attention of the LBU.</note>
            
            <note><p>Remove the colon (:) or space colon ( :) which comes under
                <targetxml>courtcase:representation</targetxml> under
                <targetxml>heading/title</targetxml>.
                <ul>
                    <li><sourcexml>Avocats:</sourcexml> to <targetxml>Avocats</targetxml></li>
                    <li><sourcexml>Avocats :</sourcexml> to <targetxml>Avocats</targetxml></li>
                    <li><sourcexml>Cases cited:</sourcexml> to <targetxml>Cases cited</targetxml></li>
                    <li><sourcexml>Cases Cited:</sourcexml> to <targetxml>Cases Cited</targetxml></li>
                    <li><sourcexml>Jurisprudence cite :</sourcexml> to <targetxml>Jurisprudence
                        cite</targetxml></li>
                    <li><sourcexml>Statutes, Regulations and Rules Cited:</sourcexml> to
                        <targetxml>Statutes, Regulations and Rules Cited</targetxml></li>
                    <li><sourcexml>Législation citée :</sourcexml> to <targetxml>Législation
                        citée</targetxml></li>
                    <li><sourcexml>Authors and Texts Cited:</sourcexml> to <targetxml>Authors and Texts
                        Cited</targetxml></li>
                    <li><sourcexml>Texts Cited:</sourcexml> to <targetxml>Texts Cited</targetxml></li>
                    <li><sourcexml>Causes citées et consultées :</sourcexml> to <targetxml>Causes citées
                        et consultées</targetxml></li>
                    <li><sourcexml>Jurisprudence et doctrine citées et consultées :</sourcexml> to
                        <targetxml>Jurisprudence et doctrine citées et
                            consultées</targetxml></li>
                    <li><sourcexml>Doctrine et jurisprudence citées :</sourcexml> to <targetxml>Doctrine
                        et jurisprudence citées</targetxml></li>
                    <li><sourcexml>Doctrine citée :</sourcexml> to <targetxml>Doctrine
                        citée</targetxml></li>
                    <li><sourcexml>Counsel:</sourcexml> to <targetxml>Counsel</targetxml></li>
                </ul></p></note>
                       
            <note>
                <p><sourcexml>case:references</sourcexml> found within <sourcexml>case:appendix</sourcexml> should not get the <targetxml>@referencetype</targetxml> attribute in <targetxml>ref:relatedrefs</targetxml>.</p>
            </note>
            
            <note>Conversion should not create consecutive <targetxml>courtcase:opinion</targetxml>
                elements. When 2 or more consecutive sibling source elements map to
                    <targetxml>courtcase:opinion</targetxml>, data should be merged to a single
                    <targetxml>courtcase:opinion</targetxml> element unless this would hamper
                content ordering.</note>
        </section>
        <example>
            <title>Mapping of
                    <sourcexml>case:appendix/case:headnote/case:info/case:constituents</sourcexml></title>
            <codeblock>

&lt;case:content&gt;
    &lt;case:judgments&gt;
        &lt;case:judgment&gt;
            &lt;case:judgmentbody&gt;
                &lt;p i="5" indent="1st-line"&gt;
                    &lt;text&gt;Appeal from a judgment of Hart, J. dated October 6, 1970 which held a driver of a motor vehicle liable in damages for damage
                        to a bridge owned by the Province of Nova Scotia. The judgment of Hart, J. is set out below immediately following the appeal
                        court judgment.&lt;/text&gt;
                &lt;/p&gt;
            &lt;/case:judgmentbody&gt;
        &lt;/case:judgment&gt;
        &lt;case:appendix&gt;
            &lt;case:headnote&gt;
                &lt;case:info&gt;
                    &lt;case:constituents&gt;
                        &lt;pgrp&gt;
                            &lt;heading&gt;
                                &lt;title&gt;COUNSEL:&lt;/title&gt;
                            &lt;/heading&gt;
                            &lt;p&gt;
                                &lt;text&gt;R. L. MacDOUGALL, Q.C., for the appellant&lt;nl/&gt; D. R. CHIPMAN, Q.C., for the respondent&lt;nl/&gt; R. A. CLUNEY, Q.C.,
                                    for the third party&lt;/text&gt;
                            &lt;/p&gt;
                        &lt;/pgrp&gt;
                    &lt;/case:constituents&gt;
                &lt;/case:info&gt;
            &lt;/case:headnote&gt;
        &lt;/case:appendix&gt;
        &lt;case:judgment&gt;
            &lt;case:judgmentbody&gt;
                &lt;p&gt;
                    &lt;text&gt;The judgment of the court was delivered by Cooper, J.A.&lt;/text&gt;
                &lt;/p&gt;
                &lt;p&gt;
                    &lt;text&gt;&lt;emph typestyle="bf"&gt;COOPER, J.A.&lt;/emph&gt;:&lt;/text&gt;
                &lt;/p&gt;
                ...
            &lt;/case:judgmentbody&gt;
        &lt;/case:judgment&gt;
    &lt;/case:judgments&gt;
&lt;/case:content&gt;

           </codeblock>
            <b>becomes</b>
            <codeblock>

&lt;courtcase:body&gt;
    &lt;courtcase:representation&gt;
        &lt;bodytext&gt;
            &lt;pgrp&gt;
                &lt;heading&gt;
                    &lt;title&gt;COUNSEL&lt;/title&gt;
                &lt;/heading&gt;
                &lt;p&gt;
                    &lt;text&gt;R. L. MacDOUGALL, Q.C., for the appellant&lt;proc:nl/&gt; D. R. CHIPMAN, Q.C., for the respondent&lt;proc:nl/&gt; R. A. CLUNEY,
                        Q.C., for the third party&lt;/text&gt;
                &lt;/p&gt;
            &lt;/pgrp&gt;
        &lt;/bodytext&gt;
    &lt;/courtcase:representation&gt;
    &lt;courtcase:opinions&gt;
        &lt;courtcase:opinion&gt;
            &lt;bodytext&gt;
                &lt;p indent="1st-line"&gt;
                    &lt;text&gt;Appeal from a judgment of Hart, J. dated October 6, 1970 which held a driver of a motor vehicle liable in damages for
                        damage to a bridge owned by the Province of Nova Scotia. The judgment of Hart, J. is set out below immediately following
                        the appeal court judgment.&lt;/text&gt;
                &lt;/p&gt;
            &lt;/bodytext&gt;
        &lt;/courtcase:opinion&gt;
        &lt;courtcase:opinion&gt;
            &lt;bodytext&gt;
                &lt;p&gt;
                    &lt;text&gt;The judgment of the court was delivered by Cooper, J.A.&lt;/text&gt;
                &lt;/p&gt;
                &lt;p&gt;
                    &lt;text&gt;&lt;emph typestyle="bf"&gt;COOPER, J.A.&lt;/emph&gt;:&lt;/text&gt;
                &lt;/p&gt;
                ...
            &lt;/bodytext&gt;
        &lt;/courtcase:opinion&gt;
    &lt;/courtcase:opinions&gt;
&lt;/courtcase:body&gt;

           </codeblock>
        </example>
        <example>
            <title>Mapping of <sourcexml>case:appendix/p</sourcexml></title>
            <codeblock>

&lt;case:judgments&gt;
    &lt;case:judgment&gt;
        &lt;case:judgmentbody&gt;
            ...
            &lt;p&gt;
                &lt;text&gt;Pour tous ces motifs, nous sommes d'avis, comme nous l'avons mentionné au départ, de rejeter le pourvoi.&lt;/text&gt;
            &lt;/p&gt;
        &lt;/case:judgmentbody&gt;
    &lt;/case:judgment&gt;
    &lt;case:appendix&gt;
        &lt;case:headnote&gt;
            &lt;case:info&gt;
                &lt;case:constituents&gt;
                    &lt;pgrp&gt;
                        &lt;heading&gt;
                            &lt;title&gt;Procureurs :&lt;/title&gt;
                        &lt;/heading&gt;
                        &lt;p&gt;
                            &lt;text&gt;Procureur de l'appelante : Procureur général de l'Ontario, Toronto.&lt;/text&gt;
                        &lt;/p&gt;
                        &lt;p&gt;
                            &lt;text&gt;Procureur de l'intimé : J. Douglas Crane, Toronto.&lt;/text&gt;
                        &lt;/p&gt;
                    &lt;/pgrp&gt;
                &lt;/case:constituents&gt;
            &lt;/case:info&gt;
        &lt;/case:headnote&gt;
        &lt;p&gt;
            &lt;text&gt;cp/e/qlhbb/qlgpr&lt;/text&gt;
        &lt;/p&gt;
    &lt;/case:appendix&gt;
&lt;/case:judgments&gt;

           </codeblock>
            <b>becomes</b>
            <codeblock>

&lt;courtcase:body&gt;
    &lt;courtcase:representation&gt;
        &lt;bodytext&gt;
            &lt;pgrp&gt;
                &lt;heading&gt;
                    &lt;title&gt;Procureurs&lt;/title&gt;
                &lt;/heading&gt;
                &lt;p&gt;
                    &lt;text&gt;Procureur de l'appelante : Procureur général de l'Ontario, Toronto.&lt;/text&gt;
                &lt;/p&gt;
                &lt;p&gt;
                    &lt;text&gt;Procureur de l'intimé : J. Douglas Crane, Toronto.&lt;/text&gt;
                &lt;/p&gt;
            &lt;/pgrp&gt;
        &lt;/bodytext&gt;
    &lt;/courtcase:representation&gt;
    &lt;courtcase:opinions&gt;
        &lt;courtcase:opinion&gt;
            &lt;bodytext&gt;
                ...
                &lt;p&gt;
                    &lt;text&gt;Pour tous ces motifs, nous sommes d'avis, comme nous l'avons mentionné au départ, de rejeter le pourvoi.&lt;/text&gt;
                &lt;/p&gt;
                &lt;p&gt;
                    &lt;text&gt;cp/e/qlhbb/qlgpr&lt;/text&gt;
                &lt;/p&gt;
            &lt;/bodytext&gt;
        &lt;/courtcase:opinion&gt;
    &lt;/courtcase:opinions&gt;
&lt;/courtcase:body&gt;

           </codeblock>
        </example>
        <example>
            <title>Mapping of <sourcexml>case:appendix/case:priorhist</sourcexml> (without a sibling
                    <sourcexml>case:info</sourcexml>)</title>
            <codeblock>

&lt;case:judgment&gt;
    &lt;case:judgmentbody&gt;
        ...
        &lt;p&gt;
            &lt;text&gt;Finalement, même si la Cour avait compétence en la matière et le défendeur avait un droit d'action, le délai de prescription en vigueur
                au Québec est de deux ans en vertu de l'effet combiné de l'article 38 de la Loi sur la Cour fédérale, et du paragraphe 2261(2) du Code civil
                du Bas Canada. Selon la preuve, le demandeur s'attendait à être promu au poste convoité dans les jours suivant son entrée en fonction en
                décembre 1981. Le demandeur a lui-même expliqué au tribunal qu'il n'avait pas voulu trop insister au début pour revendiquer son poste, par
                crainte d'indisposer son ami et supérieur, monsieur Lapierre. Il croyait qu'éventuellement il serait promu rétroactivement. À tout événement,
                il a appris de façon définitive le 5 avril 1984, par la lettre précitée de monsieur Lapierre, qu'il n'obtiendrait pas le poste en question.
                Quant au rejet final de son grief par le Sous-ministre, il a été prononcé en août 1985. Son action n'a été intentée que le 25 avril
                1988.&lt;/text&gt;
        &lt;/p&gt;
    &lt;/case:judgmentbody&gt;
&lt;/case:judgment&gt;
&lt;case:appendix&gt;
    &lt;case:headnote&gt;
        &lt;case:priorhist&gt;
            &lt;p&gt;
                &lt;text&gt;Le demandeur allègue également qu'après le départ de monsieur Lapierre il a été harcelé par ses supérieurs successifs et ses collègues
                    au travail. Ce harcèlement aurait pris la forme d'échanges de notes de service, de rapports défavorables d'évaluation du rendement, de
                    boycottage de réunions, et d'un manque de respect et de sollicitude professionnelle. La preuve démontre effectivement que les rapports
                    annuels d'évaluation du demandeur se détérioraient graduellement. Le demandeur lui-même a fait valoir les profondes difficultés qu'il
                    éprouvait dans ses rapports interpersonnels avec ses collègues, avec une exception, à savoir l'ingénieur André Petel, le seul avec qui il
                    entretenait des relations amicales.&lt;/text&gt;
            &lt;/p&gt;
            ...
        &lt;/case:priorhist&gt;
    &lt;/case:headnote&gt;
&lt;/case:appendix&gt;

           </codeblock>
            <b>becomes</b>
            <codeblock>

&lt;courtcase:body&gt;
    &lt;courtcase:opinions&gt;
        &lt;courtcase:opinion&gt;
            &lt;bodytext&gt;
                ...
                &lt;p&gt;
                    &lt;text&gt;Finalement, même si la Cour avait compétence en la matière et le défendeur avait un droit d'action, le délai de prescription
                        en vigueur au Québec est de deux ans en vertu de l'effet combiné de l'article 38 de la Loi sur la Cour fédérale, et du
                        paragraphe 2261(2) du Code civil du Bas Canada. Selon la preuve, le demandeur s'attendait à être promu au poste convoité dans
                        les jours suivant son entrée en fonction en décembre 1981. Le demandeur a lui-même expliqué au tribunal qu'il n'avait pas
                        voulu trop insister au début pour revendiquer son poste, par crainte d'indisposer son ami et supérieur, monsieur Lapierre. Il
                        croyait qu'éventuellement il serait promu rétroactivement. À tout événement, il a appris de façon définitive le 5 avril 1984,
                        par la lettre précitée de monsieur Lapierre, qu'il n'obtiendrait pas le poste en question. Quant au rejet final de son grief
                        par le Sous-ministre, il a été prononcé en août 1985. Son action n'a été intentée que le 25 avril 1988.&lt;/text&gt;
                &lt;/p&gt;
                &lt;p&gt;
                    &lt;text&gt;Le demandeur allègue également qu'après le départ de monsieur Lapierre il a été harcelé par ses supérieurs successifs et ses
                        collègues au travail. Ce harcèlement aurait pris la forme d'échanges de notes de service, de rapports défavorables
                        d'évaluation du rendement, de boycottage de réunions, et d'un manque de respect et de sollicitude professionnelle. La preuve
                        démontre effectivement que les rapports annuels d'évaluation du demandeur se détérioraient graduellement. Le demandeur
                        lui-même a fait valoir les profondes difficultés qu'il éprouvait dans ses rapports interpersonnels avec ses collègues, avec
                        une exception, à savoir l'ingénieur André Petel, le seul avec qui il entretenait des relations amicales.&lt;/text&gt;
                &lt;/p&gt;
                ...
            &lt;/bodytext&gt;
        &lt;/courtcase:opinion&gt;
    &lt;/courtcase:opinions&gt;
&lt;/courtcase:body&gt;

           </codeblock>
        </example>
        <section>
            <title>Changes</title>
            <p>2014-09-04: <ph id="change_20140904_PS">Updated instruction for removal of colon from <targetxml>courtcase:representation</targetxml> based on list included. Applicable on CA01.</ph></p>
            <p>2014-07-24: <ph id="change_20140724_PS">Updated target mapping for <targetxml>ref:relatedrefs</targetxml>.</ph></p>
            <p>2014-05-26: <ph id="change_20140526">Updated note and added one more instruction to remove space colon ( :) from target, this immediately applies to CA01.</ph></p>
            <p>2014-04-22: <ph id="change_20140422">Added note and updated source example to remove colon (:) from target, this immediately applies to CA01.</ph></p>
        </section>
    </body>
	</dita:topic>

	
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA01-Cases\CA01_Rosetta_case.appendix.dita  -->
	 
    <!-- Vikas Rohilla : Template to match the case:appendix -->
   <xsl:template match="case:appendix">
        
            <xsl:apply-templates/>
        
    </xsl:template>
    
    <xsl:template match="case:appendix[child::case:headnote[child::case:references]]" priority="2">
        <courtcase:opinion>
            <bodytext>
                <xsl:apply-templates/>
            </bodytext>
        </courtcase:opinion>
    </xsl:template>

</xsl:stylesheet>