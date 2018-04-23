<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:casedigest="http://www.lexisnexis.com/xmlschemas/content/legal/case-digest/1/" xmlns:courtcase="http://www.lexisnexis.com/xmlschemas/content/legal/courtcase/1/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="case.references">
   <title>case:references <lnpid>id-CA02CC-12431</lnpid></title>
   <body>
      <section>
        <ul>
         <li>
          <sourcexml>case:references</sourcexml> becomes
            <targetxml>casedigest:body/ref:relatedrefs</targetxml>
          <p>With the exception of <sourcexml>heading</sourcexml>, every child of
              <sourcexml>case:references</sourcexml> should be mapped to
              <targetxml>ref:relatedrefs/bodytext</targetxml>.</p>
           
          <note>Remove the Colons (:) which comes under <targetxml>ref:relatedrefs</targetxml> and
              <targetxml>courtcase:representation</targetxml> -  under
              <targetxml>heading/title</targetxml>.</note>
           
          <p><b>Please refer the below table for the following scenario:</b> If initial contents of
              <sourcexml>case:references</sourcexml> equals first column of table then (either
            within heading/title, text/emph typestyle="bf", etc), add an attribute
              <targetxml>@referencetype</targetxml> and set the value
              <targetxml>@referencetype=</targetxml> second column of table. See CA Example 3 and
            4.</p>
          <table>
            <tgroup cols="2">
              <thead>
                <row>
                  <entry>Unique Values for search</entry>
                  <entry>Replace attribute Value</entry>
                </row>
              </thead>
              <tbody>
                <row>
                  <entry>Articles cited:</entry>
                  <entry>consideredcases</entry>
                </row>
                <row>
                  <entry>Authorities Cited:</entry>
                  <entry>consideredcases</entry>
                </row>
                <row>
                  <entry>Authorities cited:</entry>
                  <entry>consideredcases</entry>
                </row>
                <row>
                  <entry>Authorities Considered:</entry>
                  <entry>consideredcases</entry>
                </row>
                <row>
                  <entry>Authors and Works cited:</entry>
                  <entry>consideredcases</entry>
                </row>
                <row>
                  <entry>AUTHORS AND WORKS JUDICIALLY NOTICED:</entry>
                  <entry>consideredcases</entry>
                </row>
                <row>
                  <entry>AUTHORS AND WORKS NOTICED:</entry>
                  <entry>consideredcases</entry>
                </row>
                <row>
                  <entry>Authors and Works Noticed:</entry>
                  <entry>consideredcases</entry>
                </row>
                <row>
                  <entry>Authors Cited</entry>
                  <entry>consideredcases</entry>
                </row>
                <row>
                  <entry>Authors cited</entry>
                  <entry>consideredcases</entry>
                </row>
                <row>
                  <entry>Autorité citée :</entry>
                  <entry>consideredcases</entry>
                </row>
                <row>
                  <entry>Autorités :</entry>
                  <entry>consideredcases</entry>
                </row>
                <row>
                  <entry>Autorités citées :</entry>
                  <entry>consideredcases</entry>
                </row>
                <row>
                  <entry>CASE CITED:</entry>
                  <entry>consideredcases</entry>
                </row>
                <row>
                  <entry>Cases Cited</entry>
                  <entry>consideredcases</entry>
                </row>
                <row>
                  <entry>CASES CITED:</entry>
                  <entry>consideredcases</entry>
                </row>
                <row>
                  <entry>Cases Cited:</entry>
                  <entry>consideredcases</entry>
                </row>
                <row>
                  <entry>Cases cited:</entry>
                  <entry>consideredcases</entry>
                </row>
                <row>
                  <entry>Cases Considered:</entry>
                  <entry>consideredcases</entry>
                </row>
                <row>
                  <entry>CASES JUDICIALLY CONSIDERED</entry>
                  <entry>consideredcases</entry>
                </row>
                <row>
                  <entry>Cases Judicially Considered</entry>
                  <entry>consideredcases</entry>
                </row>
                <row>
                  <entry>CASES JUDICIALLY NOTICED:</entry>
                  <entry>consideredcases</entry>
                </row>
                <row>
                  <entry>CASES NOTICED:</entry>
                  <entry>consideredcases</entry>
                </row>
                <row>
                  <entry>Cases Noticed:</entry>
                  <entry>consideredcases</entry>
                </row>
                <row>
                  <entry>Décision citée :</entry>
                  <entry>consideredcases</entry>
                </row>
                <row>
                  <entry>Décisions citées :</entry>
                  <entry>consideredcases</entry>
                </row>
                <row>
                  <entry>DOCTRINE</entry>
                  <entry>consideredcases</entry>
                </row>
                <row>
                  <entry>Doctrine</entry>
                  <entry>consideredcases</entry>
                </row>
                <row>
                  <entry>Doctrine citée</entry>
                  <entry>consideredcases</entry>
                </row>
                <row>
                  <entry>JURISPRUDENCE</entry>
                  <entry>legislation</entry>
                </row>
                <row>
                  <entry>Jurisprudence</entry>
                  <entry>legislation</entry>
                </row>
                <row>
                  <entry>Jurisprudence citée</entry>
                  <entry>legislation</entry>
                </row>
                <row>
                  <entry>Jurisprudence citée :</entry>
                  <entry>legislation</entry>
                </row>
                <row>
                  <entry>Jurisprudence consultée :</entry>
                  <entry>legislation</entry>
                </row>
                <row>
                  <entry>Législation citée :</entry>
                  <entry>legislation</entry>
                </row>
                <row>
                  <entry>Lois et règlements</entry>
                  <entry>legislation</entry>
                </row>
                <row>
                  <entry>Lois et règlements cités</entry>
                  <entry>legislation</entry>
                </row>
                <row>
                  <entry>MISCELLANEOUS WORKS CITED:</entry>
                  <entry>consideredcases</entry>
                </row>
                <row>
                  <entry>Statutes and Regulations Cited</entry>
                  <entry>legislation</entry>
                </row>
                <row>
                  <entry>STATUTES AND REGULATIONS CITED:</entry>
                  <entry>legislation</entry>
                </row>
                <row>
                  <entry>Statutes and Regulations cited:</entry>
                  <entry>legislation</entry>
                </row>
                <row>
                  <entry>Statutes and Regulations Judicially Considered</entry>
                  <entry>legislation</entry>
                </row>
                <row>
                  <entry>Statutes Cited:</entry>
                  <entry>legislation</entry>
                </row>
                <row>
                  <entry>Statutes cited:</entry>
                  <entry>legislation</entry>
                </row>
                <row>
                  <entry>STATUTES JUDICIALLY NOTICED:</entry>
                  <entry>legislation</entry>
                </row>
                <row>
                  <entry>STATUTES NOTICED:</entry>
                  <entry>legislation</entry>
                </row>
                <row>
                  <entry>Statutes Noticed:</entry>
                  <entry>legislation</entry>
                </row>
                <row>
                  <entry>Statutes, Regulations and Rule Cited:</entry>
                  <entry>legislation</entry>
                </row>
                <row>
                  <entry>Statutes, Regulations and Rules cited</entry>
                  <entry>legislation</entry>
                </row>
                <row>
                  <entry>STATUTES, REGULATIONS AND RULES CITED:</entry>
                  <entry>legislation</entry>
                </row>
                <row>
                  <entry>Statutes, Regulations and Rules Cited:</entry>
                  <entry>legislation</entry>
                </row>
                <row>
                  <entry>Authorities Cited</entry>
                  <entry>consideredcases</entry>
                </row>
                <row>
                  <entry>Authors Cited</entry>
                  <entry>consideredcases</entry>
                </row>
                <row>
                  <entry>Cases and texts cited</entry>
                  <entry>consideredcases</entry>
                </row>
                <row>
                  <entry>CASES CITED</entry>
                  <entry>consideredcases</entry>
                </row>
                <row>
                  <entry>Cases Cited</entry>
                  <entry>consideredcases</entry>
                </row>
                <row>
                  <entry>Cases cited</entry>
                  <entry>consideredcases</entry>
                </row>
                <row>
                  <entry>Doctrine citée</entry>
                  <entry>consideredcases</entry>
                </row>
                <row>
                  <entry>Jurisprudence</entry>
                  <entry>legislation</entry>
                </row>
                <row>
                  <entry>Législation citée</entry>
                  <entry>legislation</entry>
                </row>
                <row>
                  <entry>Lois et règlements cités</entry>
                  <entry>legislation</entry>
                </row>
                <row>
                  <entry>MISCELLANEOUS WORKS CITED</entry>
                  <entry>consideredcases</entry>
                </row>
                <row>
                  <entry>Statutes and Regulations Cited</entry>
                  <entry>legislation</entry>
                </row>
                <row>
                  <entry>Statutes cited</entry>
                  <entry>legislation</entry>
                </row>
                <row>
                  <entry>STATUTES, REGULATIONS AND RULES CITED</entry>
                  <entry>legislation</entry>
                </row>
                <row>
                  <entry>Statutes, Regulations and Rules Cited</entry>
                  <entry>legislation</entry>
                </row>
                <row>
                  <entry>Statutes, Regulations and Rules cited</entry>
                  <entry>legislation</entry>
                </row>
                <row>
                  <entry>Législation citée:</entry>
                  <entry>legislation</entry>
                </row>
                <row>
                  <entry>JURISPRUDENCE CITÉE :</entry>
                  <entry>consideredcases</entry>
                </row>
                <row>
                  <entry>Affaire citée:</entry>
                  <entry>consideredcases</entry>
                </row>
                <row>
                  <entry>Affaires citées:</entry>
                  <entry>consideredcases</entry>
                </row>
                <row>
                  <entry>Affaires citées:</entry>
                  <entry>consideredcases</entry>
                </row>
                <row>
                  <entry>Authorities &amp; Texts:</entry>
                  <entry>consideredcases</entry>
                </row>
                <row>
                  <entry>Authorities</entry>
                  <entry>consideredcases</entry>
                </row>
                <row>
                  <entry>Autorités citées *</entry>
                  <entry>consideredcases</entry>
                </row>
                <row>
                  <entry>Autorités citées par l'appelante :</entry>
                  <entry>consideredcases</entry>
                </row>
                <row>
                  <entry>Autorités citées par l'intimé :</entry>
                  <entry>consideredcases</entry>
                </row>
                <row>
                  <entry>Autorités citées</entry>
                  <entry>consideredcases</entry>
                </row>
                <row>
                  <entry>Case Authorities and Texts:</entry>
                  <entry>consideredcases</entry>
                </row>
                <row>
                  <entry>Cases considered:</entry>
                  <entry>consideredcases</entry>
                </row>
                <row>
                  <entry>Cases referred to:</entry>
                  <entry>consideredcases</entry>
                </row>
                <row>
                  <entry>Dictionnaire cité :</entry>
                  <entry>consideredcases</entry>
                </row>
                <row>
                  <entry>Jurisprudence :</entry>
                  <entry>legislation</entry>
                </row>
                <row>
                  <entry>Jurisprudence :</entry>
                  <entry>legislation</entry>
                </row>
                <row>
                  <entry>JURISPRUDENCE DÉPOSÉE PAR L'INTIMÉE</entry>
                  <entry>legislation</entry>
                </row>
                <row>
                  <entry>Jurisprudence soumise</entry>
                  <entry>legislation</entry>
                </row>
                <row>
                  <entry>Jurisprudence:</entry>
                  <entry>legislation</entry>
                </row>
                <row>
                  <entry>Législation citée:</entry>
                  <entry>legislation</entry>
                </row>
                <row>
                  <entry>Liste de jurisprudence</entry>
                  <entry>legislation</entry>
                </row>
                <row>
                  <entry>Liste des jugements à l'appui:</entry>
                  <entry>consideredcases</entry>
                </row>
                <row>
                  <entry>LISTE DES JUGEMENTS À L'APPUI</entry>
                  <entry>consideredcases</entry>
                </row>
                <row>
                  <entry>Loi citée:</entry>
                  <entry>legislation</entry>
                </row>
                <row>
                  <entry>Lois citées:</entry>
                  <entry>legislation</entry>
                </row>
                <row>
                  <entry>Lois et règlements cités :</entry>
                  <entry>legislation</entry>
                </row>
                <row>
                  <entry>Par l'intimé :</entry>
                  <entry>consideredcases</entry>
                </row>
                <row>
                  <entry>Statutes considered:</entry>
                  <entry>legislation</entry>
                </row>
                <row>
                  <entry>Statutes Referred to:</entry>
                  <entry>legislation</entry>
                </row>
                <row>
                  <entry>Statutes referred to:</entry>
                  <entry>legislation</entry>
                </row>
                <row>
                  <entry>Tribunal decisions considered:</entry>
                  <entry>consideredcases</entry>
                </row>
                <row>
                  <entry>LEGISLATION:</entry>
                  <entry>legislation</entry>
                </row>
              </tbody>
            </tgroup>
          </table>
          <note>
            <p>Remove the colon (:) or space colon ( :) which comes under
                <targetxml>ref:relatedrefs</targetxml> either under
                <targetxml>heading/title</targetxml> if appear after the following- <ul id="ul_o55_ngp_xp">
                <li>
                  <sourcexml>Appearances:</sourcexml> to <targetxml>Appearances</targetxml></li>
                <li><sourcexml>Counsel:</sourcexml> to <targetxml>Counsel</targetxml>
                </li>
                <li>
                  <sourcexml>Comparutions :</sourcexml> to<targetxml>Comparutions</targetxml>
                </li>
                <li>
                  <sourcexml>Comparutions:</sourcexml> to<targetxml>Comparutions</targetxml>
                </li>
                <li>
                  <sourcexml>Avocats :</sourcexml> to<targetxml>Avocats</targetxml>
                </li>
                <li>
                  <sourcexml>Avocats:</sourcexml>to <targetxml>Avocats</targetxml>
                </li>
                <li>
                  <sourcexml>Ont comparu:</sourcexml> to<targetxml>Ont comparu</targetxml>
                </li>
                <li>
                  <sourcexml>Ont comparu :</sourcexml>to <targetxml>Ont comparu</targetxml>
                </li>
                <li>
                  <sourcexml>AVOCATS:</sourcexml> to<targetxml>AVOCATS</targetxml>
                </li>
                <li>
                  <sourcexml>AVOCATS :</sourcexml>to <targetxml>AVOCATS</targetxml>
                </li>
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
                    <targetxml>Jurisprudence et doctrine citées et consultées</targetxml></li>
                <li><sourcexml>Doctrine et jurisprudence citées :</sourcexml> to <targetxml>Doctrine
                    et jurisprudence citées</targetxml></li>
                <li><sourcexml>Doctrine citée :</sourcexml> to <targetxml>Doctrine
                  citée</targetxml></li>
              </ul></p>
          </note>
          <!---  <ul><li>If initial contents of <sourcexml>case:references</sourcexml> equals
                            "Cases Judicially Considered", (either within
                                <sourcexml>heading/title</sourcexml>, <sourcexml>text/emph
                                typestyle="bf"</sourcexml>, etc), add an attribute 'referencetype'
                            set to <targetxml>@referencetype="consideredcases"</targetxml> on the
                            target <targetxml>casedigest:body/ref:relatedrefs</targetxml> element,
                            see Example 3.</li>
                        <li>If initial contents of <sourcexml>case:references</sourcexml> equals
                            "Statutes and Regulations Judicially Considered", (either within
                                <sourcexml>heading/title</sourcexml>, <sourcexml>text/emph
                                typestyle="bf"</sourcexml>, etc), add an attribute 'referencetype'
                            set to <targetxml>@referencetype="legislation"</targetxml> on the target
                                <targetxml>casedigest:body/ref:relatedrefs</targetxml> element, see
                            Example 4.</li></ul>-->
          <pre>

&lt;case:references&gt;
    &lt;heading&gt;
        &lt;title&gt;Statutes, Regulations and Rules Cited :&lt;/title&gt;
    &lt;/heading&gt;
    &lt;p&gt;
        &lt;text&gt;Canadian Charter of Rights and Freedoms, 1982, s. 10(a), s. 10(b)&lt;/text&gt;
    &lt;/p&gt;
    &lt;p&gt;
        &lt;text&gt;City of Winnipeg Charter, S.M. 2002, c. 39,&lt;/text&gt;
    &lt;/p&gt;
    &lt;p&gt;
        &lt;text&gt;Court of Appeal Act, C.C.S.M., c. C240, s. 26(1)&lt;/text&gt;
    &lt;/p&gt;
    &lt;p&gt;
        &lt;text&gt;Court of Queen's Bench Act, s. 64(3)&lt;/text&gt;
    &lt;/p&gt;
    &lt;p&gt;
        &lt;text&gt;Criminal Code, s. 495, s. 495(1), s. 495(2)&lt;/text&gt;
    &lt;/p&gt;
    &lt;p&gt;
        &lt;text&gt;Domestic Violence and Stalking Prevention, Protection and Compensation Act, C.C.S.M.,
            c. D93,&lt;/text&gt;
    &lt;/p&gt;
    &lt;p&gt;
        &lt;text&gt;Manitoba Court of Queen's Bench Rules, Rule 31.11(1), Rule 31.11(3)&lt;/text&gt;
    &lt;/p&gt;
    &lt;p&gt;
        &lt;text&gt;Provincial Police Act, C.C.S.M., c. P150, s. 5, s. 21(1)&lt;/text&gt;
    &lt;/p&gt;
&lt;/case:references&gt;


<b>Becomes:</b>
 
 
&lt;ref:relatedrefs referencetype="legislation"&gt;
    &lt;heading&gt;
        &lt;title&gt;Statutes, Regulations and Rules Cited&lt;/title&gt;
    &lt;/heading&gt;
    &lt;bodytext&gt;
        &lt;p&gt;
            &lt;text&gt;Canadian Charter of Rights and Freedoms, 1982, s. 10(a), s. 10(b)&lt;/text&gt;
        &lt;/p&gt;
        &lt;p&gt;
            &lt;text&gt;City of Winnipeg Charter, S.M. 2002, c. 39,&lt;/text&gt;
        &lt;/p&gt;
        &lt;p&gt;
            &lt;text&gt;Court of Appeal Act, C.C.S.M., c. C240, s. 26(1)&lt;/text&gt;
        &lt;/p&gt;
        &lt;p&gt;
            &lt;text&gt;Court of Queen's Bench Act, s. 64(3)&lt;/text&gt;
        &lt;/p&gt;
        &lt;p&gt;
            &lt;text&gt;Criminal Code, s. 495, s. 495(1), s. 495(2)&lt;/text&gt;
        &lt;/p&gt;
        &lt;p&gt;
            &lt;text&gt;Domestic Violence and Stalking Prevention, Protection and Compensation Act,
                C.C.S.M., c. D93,&lt;/text&gt;
        &lt;/p&gt;
        &lt;p&gt;
            &lt;text&gt;Manitoba Court of Queen's Bench Rules, Rule 31.11(1), Rule 31.11(3)&lt;/text&gt;
        &lt;/p&gt;
        &lt;p&gt;
            &lt;text&gt;Provincial Police Act, C.C.S.M., c. P150, s. 5, s. 21(1)&lt;/text&gt;
        &lt;/p&gt;
    &lt;/bodytext&gt;
&lt;/ref:relatedrefs&gt;

          </pre>
          <pre>

                 <b>Handling of Multiple <sourcexml>case:references</sourcexml></b>
&lt;case:references&gt;
    &lt;p&gt;&lt;text&gt;&lt;emph typestyle="bu"&gt;AUTORITÉS DE LA DEMANDERESSE&lt;/emph&gt;&lt;/text&gt;&lt;/p&gt;&lt;p&gt;&lt;text&gt;&lt;emph typestyle="it"&gt;Ontario (Human Rights Commission) v. Naraine&lt;/emph&gt;, (2001) 41 C.H.H.R. D/349 (ON C.A.).&lt;/text&gt;&lt;/p&gt;&lt;p&gt;&lt;text&gt;&lt;emph typestyle="it"&gt;Naraine&lt;/emph&gt; v. &lt;emph typestyle="it"&gt;Ford Motor Co. of Canada&lt;/emph&gt;, 27 C.H.R.R. D/230 (Ont. Bd. Inq.).&lt;/text&gt;&lt;/p&gt;&lt;p&gt;&lt;text&gt;&lt;emph typestyle="it"&gt;Ford Motor Co. Of Canada&lt;/emph&gt; v. &lt;emph typestyle="it"&gt;Ontario (Human Rights Comm.)&lt;/emph&gt; (1996), 28 C.H.H.R. D/267 (Ont. Bd. Inq.).&lt;/text&gt;&lt;/p&gt;
&lt;!-- ... --&gt;
&lt;/case:references&gt;
&lt;case:references&gt;
&lt;heading&gt;
    &lt;title&gt;&lt;emph typestyle="biu"&gt;Jurisprudence :&lt;/emph&gt;&lt;/title&gt;
&lt;/heading&gt;
    &lt;p&gt;&lt;text&gt;&lt;/text&gt;&lt;/p&gt;&lt;p&gt;&lt;text&gt;&lt;emph typestyle="bu"&gt;Compétence &lt;/emph&gt;&lt;emph typestyle="biu"&gt;rationae materie&lt;/emph&gt;&lt;/text&gt;&lt;/p&gt;&lt;p&gt;&lt;text&gt;&lt;emph typestyle="it"&gt;Douglas/Kwantlen Faculty Assn.&lt;/emph&gt; c. &lt;emph typestyle="it"&gt;Douglas College&lt;/emph&gt;, &lt;ci:cite searchtype="SUMM-CASE-REF"&gt;&lt;ci:case&gt;&lt;ci:caseref ID="cref00013038" spanref="cspan00013038"&gt;&lt;ci:reporter value="SCR"/&gt;&lt;ci:volume num="3"/&gt;&lt;ci:edition&gt;&lt;ci:date year="1990"/&gt;&lt;/ci:edition&gt;&lt;ci:page num="570"/&gt;&lt;/ci:caseref&gt;&lt;/ci:case&gt;&lt;ci:content&gt;&lt;ci:span spanid="cspan00013038"&gt;[1990] 3 R.C.S. 570&lt;/ci:span&gt;&lt;/ci:content&gt;&lt;/ci:cite&gt;.&lt;/text&gt;&lt;/p&gt;
&lt;!-- ... --&gt;
&lt;/case:references&gt;

<b>Becomes:</b>
                 

  &lt;ref:relatedrefs&gt;
    &lt;bodytext&gt;
        &lt;p&gt;&lt;text&gt;&lt;emph typestyle="bu"&gt;AUTORITÉS DE LA DEMANDERESSE&lt;/emph&gt;&lt;/text&gt;&lt;/p&gt;&lt;p&gt;&lt;text&gt;&lt;emph typestyle="it"&gt;Ontario (Human Rights Commission) v. Naraine&lt;/emph&gt;, (2001) 41 C.H.H.R. D/349 (ON C.A.).&lt;/text&gt;&lt;/p&gt;&lt;p&gt;&lt;text&gt;&lt;emph typestyle="it"&gt;Naraine&lt;/emph&gt; v. &lt;emph typestyle="it"&gt;Ford Motor Co. of Canada&lt;/emph&gt;, 27 C.H.R.R. D/230 (Ont. Bd. Inq.).&lt;/text&gt;&lt;/p&gt;&lt;p&gt;&lt;text&gt;&lt;emph typestyle="it"&gt;Ford Motor Co. Of Canada&lt;/emph&gt; v. &lt;emph typestyle="it"&gt;Ontario (Human Rights Comm.)&lt;/emph&gt; (1996), 28 C.H.H.R. D/267 (Ont. Bd. Inq.).&lt;/text&gt;&lt;/p&gt;
        &lt;!-- ... --&gt;
    &lt;/bodytext&gt;
   &lt;/ref:relatedrefs&gt;
   &lt;ref:relatedrefs referencetype="legislation"&gt;
        &lt;heading&gt;
            &lt;title&gt;&lt;emph typestyle="biu"&gt;Jurisprudence&lt;/emph&gt;&lt;/title&gt;
        &lt;/heading&gt;
        &lt;bodytext&gt;
            &lt;p&gt;&lt;text&gt;&lt;/text&gt;&lt;/p&gt;&lt;p&gt;&lt;text&gt;&lt;emph typestyle="bu"&gt;Compétence &lt;/emph&gt;&lt;emph typestyle="biu"&gt;rationae materie&lt;/emph&gt;&lt;/text&gt;&lt;/p&gt;&lt;p&gt;&lt;text&gt;&lt;emph typestyle="it"&gt;Douglas/Kwantlen Faculty Assn.&lt;/emph&gt; c. &lt;emph typestyle="it"&gt;Douglas College&lt;/emph&gt;, &lt;lnci:cite&gt;&lt;lnci:case&gt;&lt;lnci:caseref ID="cref00013038"&gt;&lt;lnci:reporter value="SCR"/&gt;&lt;lnci:volume num="3"/&gt;&lt;lnci:edition&gt;&lt;lnci:date year="1990"/&gt;&lt;/lnci:edition&gt;&lt;lnci:page num="570"/&gt;&lt;/lnci:caseref&gt;&lt;/lnci:case&gt;&lt;lnci:content&gt;[1990] 3 R.C.S. 570&lt;/lnci:content&gt;&lt;/lnci:cite&gt;.&lt;/text&gt;&lt;/p&gt;
            &lt;!-- ... --&gt;
        &lt;/bodytext&gt;
   &lt;/ref:relatedrefs&gt;


             </pre>
        </li>
        </ul>
      </section>
        <example>
            <title>Example 3 - <targetxml>@referencetype="consideredcases"</targetxml></title>
            <codeblock>
&lt;case:references&gt;
    &lt;heading&gt;
        &lt;title&gt;Cases Judicially Considered&lt;/title&gt;
    &lt;/heading&gt;
    &lt;p&gt;
		...
    &lt;/p&gt;
&lt;/case:references&gt;
           </codeblock>
            <b>becomes</b>
            <codeblock>
&lt;casedigest:body&gt;
    ...
    &lt;ref:relatedrefs referencetype="consideredcases"&gt;
        &lt;heading&gt;
            &lt;title&gt;Cases Judicially Considered&lt;/title&gt;
        &lt;/heading&gt;
        &lt;bodytext&gt;
            &lt;p&gt;
				...
            &lt;/p&gt;
        &lt;/bodytext&gt;
    &lt;/ref:relatedrefs&gt;
    ...
&lt;/casedigest:body&gt;
           </codeblock>
        </example>
        <example>
            <title>Example 4  - <targetxml>@referencetype="legislation"</targetxml></title>
            <codeblock>
&lt;case:references&gt;
	&lt;p&gt;
		&lt;text&gt;
			&lt;emph typestyle="bf"&gt;Statutes and Regulations Judicially Considered&lt;/emph&gt;
		&lt;/text&gt;
	&lt;/p&gt;
    &lt;p&gt;
		...
    &lt;/p&gt;
&lt;/case:references&gt;
           </codeblock>
            <b>becomes</b>
            <codeblock>
&lt;casedigest:body&gt;
    ...
    &lt;ref:relatedrefs referencetype="legislation"&gt;
        &lt;bodytext&gt;
            &lt;p&gt;
				&lt;text&gt;
					&lt;emph typestyle="bf"&gt;Statutes and Regulations Judicially Considered&lt;/emph&gt;
				&lt;/text&gt;
            &lt;/p&gt;
				...
        &lt;/bodytext&gt;
    &lt;/ref:relatedrefs&gt;
    ...
&lt;/casedigest:body&gt;
           </codeblock>
        </example>
      <section><title>Changes</title>
        <p>2015-01-30: <ph id="change_20150130_AS">Updated instructions to only remove colons from heading/title not from bodytext/p. P4 DB Item
          #406.</ph></p>
        2014-10-30: <ph id="change_20141027_AS">update the List of
        terms <b>Db issue #358</b></ph><p>2014-07-28: <ph id="change_20140728_AS">Added LEGISLATION:
          to the table with @referencetype value legislation. R4.5 DB Item
        #1278.</ph></p><p>2014-06-23: <ph id="change_20140623_SEP">Attribute @referencetype all
          lower case for "legislation" and "consideredcases". R4.5 DB Item
        #1278.</ph></p><p>2014-06-04: <ph id="change_20140604_AS1">Removed nested ref:relatedrefs.Db
          Item #214.</ph></p><p>2014-06-04: <ph id="change_20140604_AS2">Updates Canada-only
          instruction and examples for where <targetxml>@referencetype</targetxml> value generated
          based on table value. R4.5 Item #1587.</ph></p><p>2014-05-22 <ph id="change_20140522_SEP">Add instruction and two examples for <targetxml>@referencetype</targetxml>
          "consideredcases" or "legislation".<b>R4.5 Item #1278.</b></ph></p><p>2014-04-21 <ph id="change_20140421_AS">Note regarding the clarification of removal of colons....<b>"DB
            item # 179</b></ph></p><p>2014-03-25 <ph id="change_20140325_SEP">Change
            <targetxml>casedigest:head/ref:relatedrefs</targetxml> to
            <targetxml>casedigest:body/ref:relatedrefs</targetxml> per discussion in UX workshop.
            <b>DB item # 1278</b></ph></p><p>2014-04-09 <ph id="change_20140409_AS">Removed Colons
          (:) from lables...<b>"DB item # 1255</b></ph></p></section>
   </body>
	</dita:topic>
  

	
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA02-Case_Summaries\CA02CC_CASEDOC\case.references.dita  -->
	
<!-- Sudhanshu Srivastava edited on 16-May-2017-->
	<xsl:template match="case:references">
		<!--  Original Target XPath:  casedigest:body/ref:relatedrefs   -->
	  <ref:relatedrefs>		
	      <xsl:apply-templates select="heading"/>                   
	    <xsl:if test="node() except heading">
	      <bodytext>
	        <xsl:apply-templates select="@* | node() except heading"/>
	      </bodytext>
	    </xsl:if>
	  </ref:relatedrefs>
	</xsl:template>
  
  
  <xsl:template match="case:references">
    
    <xsl:variable name="case-data" select="normalize-space(.)"/>	
    <xsl:choose> 
      <!-- Awantika: Please add stream ID as per the requirement -->
      <xsl:when test="$streamID=('CA01','CA02','CA04','CA05')">
        <xsl:choose>
          <xsl:when test="count($references//reference[starts-with($case-data,./@key)[1]])>0">
            <ref:relatedrefs>		
              <xsl:attribute name="referencetype">
                <xsl:value-of select="($references//reference[starts-with($case-data,./@key)[1]]/@value)[1]"/>
              </xsl:attribute>
              <!-- Awantika: Updated if heading is coming -->
              <xsl:if test="child::heading">
                <xsl:apply-templates select="heading"/>                   
              </xsl:if>
              <xsl:if test="node() except heading">
                <bodytext>
                  <xsl:apply-templates select="@* | node() except heading"/>
                </bodytext>
              </xsl:if>       
            </ref:relatedrefs>
          </xsl:when>
          <xsl:otherwise>
            <ref:relatedrefs>		
              <xsl:if test="child::heading">
                <xsl:apply-templates select="heading"/>                   
              </xsl:if>
              <xsl:if test="node() except heading">
                <bodytext>
                  <xsl:apply-templates select="@* | node() except heading"/>
                </bodytext>
              </xsl:if>
            </ref:relatedrefs>
          </xsl:otherwise>
        </xsl:choose>
      </xsl:when>
      <xsl:otherwise>
        <ref:relatedrefs>		
          <xsl:attribute name="referencetype">
            
          </xsl:attribute>
            <xsl:apply-templates select="heading"/>                   
            <bodytext>
              <xsl:apply-templates select="@* | node() except heading"/>
            </bodytext>
        </ref:relatedrefs>
      </xsl:otherwise>
    </xsl:choose>
    
  </xsl:template>
  
  
  <xsl:template match="case:references/heading/title/text()">
    <xsl:value-of select="replace(.,'[^a-zA-Z0-9]',' ')"/>
  </xsl:template>

	<!--<xsl:template match="Appearances:">

		<!-\-  Original Target XPath:  Appearances   -\->
		<Appearances>
			<xsl:apply-templates select="@* | node()"/>
		</Appearances>

	</xsl:template>-->

<!--	<xsl:template match="Counsel:">

		<!-\-  Original Target XPath:  Counsel   -\->
		<Counsel>
			<xsl:apply-templates select="@* | node()"/>
		</Counsel>

	</xsl:template>-->

	<!--<xsl:template match="Comparutions :">

		<!-\-  Original Target XPath:  Comparutions   -\->
		<Comparutions>
			<xsl:apply-templates select="@* | node()"/>
		</Comparutions>

	</xsl:template>-->
<!--
	<xsl:template match="Comparutions:">

		<!-\-  Original Target XPath:  Comparutions   -\->
		<Comparutions>
			<xsl:apply-templates select="@* | node()"/>
		</Comparutions>

	</xsl:template>-->

	<!--<xsl:template match="Avocats :">

		<!-\-  Original Target XPath:  Avocats   -\->
		<Avocats>
			<xsl:apply-templates select="@* | node()"/>
		</Avocats>

	</xsl:template>-->

	<!--<xsl:template match="Avocats:">

		<!-\-  Original Target XPath:  Avocats   -\->
		<Avocats>
			<xsl:apply-templates select="@* | node()"/>
		</Avocats>

	</xsl:template>-->

	<!--<xsl:template match="Ont comparu:">

		<!-\-  Original Target XPath:  Ontcomparu   -\->
		<Ontcomparu>
			<xsl:apply-templates select="@* | node()"/>
		</Ontcomparu>

	</xsl:template>
-->
	<!--<xsl:template match="Ont comparu :">

		<!-\-  Original Target XPath:  Ontcomparu   -\->
		<Ontcomparu>
			<xsl:apply-templates select="@* | node()"/>
		</Ontcomparu>

	</xsl:template>-->

	<!--<xsl:template match="AVOCATS:">

		<!-\-  Original Target XPath:  AVOCATS   -\->
		<AVOCATS>
			<xsl:apply-templates select="@* | node()"/>
		</AVOCATS>

	</xsl:template>-->

	<!--<xsl:template match="AVOCATS :">

		<!-\-  Original Target XPath:  AVOCATS   -\->
		<AVOCATS>
			<xsl:apply-templates select="@* | node()"/>
		</AVOCATS>

	</xsl:template>-->

	<!--<xsl:template match="Cases cited:">

		<!-\-  Original Target XPath:  Casescited   -\->
		<Casescited>
			<xsl:apply-templates select="@* | node()"/>
		</Casescited>

	</xsl:template>-->

	<!--<xsl:template match="Cases Cited:">

		<!-\-  Original Target XPath:  CasesCited   -\->
		<CasesCited>
			<xsl:apply-templates select="@* | node()"/>
		</CasesCited>

	</xsl:template>
-->
	<!--<xsl:template match="Jurisprudence cite :">

		<!-\-  Original Target XPath:  Jurisprudencecite   -\->
		<Jurisprudencecite>
			<xsl:apply-templates select="@* | node()"/>
		</Jurisprudencecite>

	</xsl:template>-->

	<!--<xsl:template match="Statutes, Regulations and Rules Cited:">

		<!-\-  Original Target XPath:  Statutes,RegulationsandRulesCited   -\->
		<!-\-  Could not determine target element or attribute name:  <Statutes,RegulationsandRulesCited>  -\->			<xsl:apply-templates select="@* | node()"/>
		<!-\-  Could not determine target element or attribute name:  </Statutes,RegulationsandRulesCited>  -\->

	</xsl:template>-->

	<!--<xsl:template match="Législation citée :">

		<!-\-  Original Target XPath:  Législationcitée   -\->
		<!-\-  Could not determine target element or attribute name:  <Législationcitée>  -\->			<xsl:apply-templates select="@* | node()"/>
		<!-\-  Could not determine target element or attribute name:  </Législationcitée>  -\->

	</xsl:template>-->

	<!--<xsl:template match="Authors and Texts Cited:">

		<!-\-  Original Target XPath:  AuthorsandTextsCited   -\->
		<AuthorsandTextsCited>
			<xsl:apply-templates select="@* | node()"/>
		</AuthorsandTextsCited>

	</xsl:template>-->

	<!--<xsl:template match="Texts Cited:">

		<!-\-  Original Target XPath:  TextsCited   -\->
		<TextsCited>
			<xsl:apply-templates select="@* | node()"/>
		</TextsCited>

	</xsl:template>-->

	<!--<xsl:template match="Causes citées et consultées :">

		<!-\-  Original Target XPath:  Causescitéesetconsultées   -\->
		<!-\-  Could not determine target element or attribute name:  <Causescitéesetconsultées>  -\->			<xsl:apply-templates select="@* | node()"/>
		<!-\-  Could not determine target element or attribute name:  </Causescitéesetconsultées>  -\->

	</xsl:template>-->

	<!--<xsl:template match="Jurisprudence et doctrine citées et consultées :">

		<!-\-  Original Target XPath:  Jurisprudenceetdoctrinecitéesetconsultées   -\->
		<!-\-  Could not determine target element or attribute name:  <Jurisprudenceetdoctrinecitéesetconsultées>  -\->			<xsl:apply-templates select="@* | node()"/>
		<!-\-  Could not determine target element or attribute name:  </Jurisprudenceetdoctrinecitéesetconsultées>  -\->

	</xsl:template>-->

	<!--<xsl:template match="Doctrine et jurisprudence citées :">

		<!-\-  Original Target XPath:  Doctrineetjurisprudencecitées   -\->
		<!-\-  Could not determine target element or attribute name:  <Doctrineetjurisprudencecitées>  -\->			<xsl:apply-templates select="@* | node()"/>
		<!-\-  Could not determine target element or attribute name:  </Doctrineetjurisprudencecitées>  -\->

	</xsl:template>
-->
	<!--<xsl:template match="Doctrine citée :">

		<!-\-  Original Target XPath:  Doctrinecitée   -\->
		<!-\-  Could not determine target element or attribute name:  <Doctrinecitée>  -\->			<xsl:apply-templates select="@* | node()"/>
		<!-\-  Could not determine target element or attribute name:  </Doctrinecitée>  -\->

	</xsl:template>-->

</xsl:stylesheet>