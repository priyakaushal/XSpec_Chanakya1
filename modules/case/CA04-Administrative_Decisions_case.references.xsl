<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet  xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:admindecision="urn:x-lexisnexis:content:administrative-decision:sharedservices:1" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="case.references">
   <title>case:references <lnpid>id-CA04-13434</lnpid></title>
   <body>
      <section>
        <ul>
         <li class="- topic/li ">
         <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:references</sourcexml> becomes
            <targetxml class="+ topic/keyword xml-d/targetxml ">ref:relatedrefs</targetxml>
          <p>With the exception of <sourcexml>heading</sourcexml>, every child of
              <sourcexml>case:references</sourcexml> should be mapped to
              <targetxml>ref:relatedrefs/bodytext</targetxml>.</p>
          <p/>
          <p/>
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
                  <entry>consideredcases</entry>
                </row>
                <row>
                  <entry>Jurisprudence</entry>
                  <entry>consideredcases</entry>
                </row>
                <row>
                  <entry>Jurisprudence citée</entry>
                  <entry>consideredcases</entry>
                </row>
                <row>
                  <entry>Jurisprudence citée :</entry>
                  <entry>consideredcases</entry>
                </row>
                <row>
                  <entry>Jurisprudence consultée :</entry>
                  <entry>consideredcases</entry>
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
                  <entry>consideredcases</entry>
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
                  <entry>consideredcases</entry>
                </row>
                <row>
                  <entry>Jurisprudence :</entry>
                  <entry>consideredcases</entry>
                </row>
                <row>
                  <entry>JURISPRUDENCE DÉPOSÉE PAR L'INTIMÉE</entry>
                  <entry>consideredcases</entry>
                </row>
                <row>
                  <entry>Jurisprudence soumise</entry>
                  <entry>consideredcases</entry>
                </row>
                <row>
                  <entry>Jurisprudence:</entry>
                  <entry>consideredcases</entry>
                </row>
                <row>
                  <entry>Législation citée:</entry>
                  <entry>legislation</entry>
                </row>
                <row>
                  <entry>Liste de jurisprudence</entry>
                  <entry>consideredcases</entry>
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
           <note class="- topic/note ">Remove colons (:) with or without space from <sourcexml>case:references/title</sourcexml> in New Lexis Conversion <targetxml>ref:relatedrefs/heading/title</targetxml> if appear after the following-
             <ul>
               <li>
                 <sourcexml>Appearances:</sourcexml> to
                 <targetxml>Appearances</targetxml></li>
               <li><sourcexml>Counsel:</sourcexml> to <targetxml>Counsel</targetxml>
               </li>
               <li>
                 <sourcexml>Comparutions :</sourcexml>
                 to<targetxml>Comparutions</targetxml>
               </li>
               <li>
                 <sourcexml>Comparutions:</sourcexml>
                 to<targetxml>Comparutions</targetxml>
               </li>
               <li>
                 <sourcexml>Avocats :</sourcexml> to<targetxml>Avocats</targetxml>
               </li>
               <li>
                 <sourcexml>Avocats:</sourcexml>to <targetxml>Avocats</targetxml>
               </li>
               <li>
                 <sourcexml>Ont comparu:</sourcexml> to<targetxml>Ont
                   comparu</targetxml>
               </li>
               <li>
                 <sourcexml>Ont comparu :</sourcexml>to <targetxml>Ont
                   comparu</targetxml>
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
                citée</targetxml></li>  </ul>               
           </note>
          <pre xml:space="preserve" class="- topic/pre ">
   
&lt;case:references&gt;
  &lt;heading&gt;
    &lt;title&gt;Statutes, Regulations and Rules Cited:&lt;/title&gt;
  &lt;/heading&gt;
            &lt;p&gt;
              &lt;text&gt;Environmental Protection and Enhancement Act, S.A. 1992, c. E- 13.3, ss. 87(2), 87(5)(b).&lt;nl/&gt;
Natural Resources Conservation Board Act, S.A. 1990, c. N-5.5.&lt;nl/&gt;
Special Waste Management Corporation Act, S.A. 1982, c. S-21.5.&lt;/text&gt;
            &lt;/p&gt;
&lt;/case:references&gt;

<b class="+ topic/ph hi-d/b ">Becomes:</b>
          
&lt;ref:relatedrefs&gt;
&lt;heading&gt;
    &lt;title&gt;Statutes, Regulations and Rules Cited&lt;/title&gt;
  &lt;/heading&gt;
  &lt;bodytext&gt;
    &lt;p&gt;
      &lt;text&gt;
       Environmental Protection and Enhancement Act, S.A. 1992, c. E- 13.3, ss. 87(2), 87(5)(b).&lt;proc:nl/&gt;
Natural Resources Conservation Board Act, S.A. 1990, c. N-5.5.&lt;proc:nl/&gt;
Special Waste Management Corporation Act, S.A. 1982, c. S-21.5.
      &lt;/text&gt;
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
    &lt;title&gt;&lt;emph typestyle="biu"&gt;Jurisprudence&lt;/emph&gt;&lt;/title&gt;
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
    &lt;ref:relatedrefs&gt;
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
          
          <li> If <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:references</sourcexml> is
          child of <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:appendix/case:headnote</sourcexml> then it becomes <targetxml class="+ topic/keyword xml-d/targetxml ">admindecision:appendix/ref:relatedrefs</targetxml>
          <pre xml:space="preserve" class="- topic/pre ">
&lt;case:appendix&gt;
    &lt;case:headnote&gt;
        &lt;case:references&gt;
            &lt;heading&gt;
                &lt;title&gt;List of Cases Cited:&lt;/title&gt;
            &lt;/heading&gt;
            &lt;p&gt;
                &lt;pnum count="70"&gt;70&lt;/pnum&gt;
                &lt;text/&gt;
            &lt;/p&gt;
            &lt;!-- .... --&gt;
        &lt;/case:references&gt;
    &lt;/case:headnote&gt;
&lt;/case:appendix&gt;              
            
            <b class="+ topic/ph hi-d/b ">Becomes:</b>            
            
 &lt;admindecision:appendix&gt;
    &lt;ref:relatedrefs&gt;
        &lt;heading&gt;
            &lt;title&gt;List of Cases Cited:&lt;/title&gt;
        &lt;/heading&gt; 
        &lt;p&gt;
          &lt;desig value="70"&gt;70&lt;/desig&gt;   
        &lt;/p&gt;    
        &lt;!-- .... --&gt;
    &lt;/ref:relatedrefs&gt;
&lt;/admindecision:appendix&gt;              
            </pre>
        </li>
        </ul>
      </section>
        <example>
            <title>Example 4 - <targetxml>@referencetype="consideredcases"</targetxml></title>
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

           </codeblock>
        </example>
        <example>
            <title>Example 5  - <targetxml>@referencetype="legislation"</targetxml></title>
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

           </codeblock>
        </example>
       
       <note>If <sourcexml>case:references</sourcexml> has no <sourcexml>text</sourcexml> in it, then in target blank <targetxml>bodytext</targetxml> will be created. As this will be the data error therefore, data will need to be corrected or a specific issue with how it is being presented will need to be raised. </note>
       <example>
            
            <codeblock>
&lt;case:references&gt;
    &lt;heading&gt;
     &lt;title&gt;Statutes, Regulations and Rules Cited:&lt;/title&gt;
    &lt;/heading&gt;
&lt;/case:references&gt;
            </codeblock>
           
           <b>Becomes</b>       
           
            <codeblock>
&lt;ref:relatedrefs&gt;
   &lt;heading&gt;
    &lt;title&gt;Statutes, Regulations and Rules Cited:&lt;/title&gt;
   &lt;/heading&gt;
   &lt;bodytext/&gt; &lt;!--Mandatory element according to the CI--&gt;    
&lt;/ref:relatedrefs&gt;
           </codeblock>
        </example>
      
        <section>
            <title>Changes</title>
          <p>2017-04-26: <ph id="change_20170426_SS">Replace the following terms from "legislation"
            to "consideredcases" in CA04 CI. <b>[Webstar #6862905]</b></ph></p>
          <p>2014-10-27: <ph id="change_20141027_AS">update the List of terms in CA04 CI with the terms listed in the CA01 CI where the CI mentions admindecision:representation and ref:relatedrefs <b>Db issue #355</b></ph></p>
          <p>2014-09-04: <ph id="change_20140904_AS">Remove colon from case:references. Applicable
          to CA01 and CA04... <b>Db issue #335</b></ph></p>
          <p>2014-07-28: <ph id="change_20140728_AS">Added LEGISLATION: to the table with @referencetype value legislation. R4.5 DB Item #1278.</ph></p>
            <p>2014-06-25: <ph id="change_20140625_AS">Removed note to suppress pnum.Db Item #233.</ph></p>
            <p>2014-06-23: <ph id="change_20140623_SEP">Attribute @referencetype all lower case for "legislation" and "consideredcases". R4.5 DB Item #1278.</ph></p>
            <p>2014-06-04: <ph id="change_20140605_AS">Removed nested ref:relatedrefs.Db Item #214.</ph></p>
            <p>2014-06-04: <ph id="change_20140604_AS">Updates Canada-only instruction and examples for where <targetxml>@referencetype</targetxml> value generated based on table value. R4.5 Item #1587.</ph></p>
            <p>2014-05-30: <ph id="change_20140530_AS">Instructions provided on how to handle the mandatory sequence order<b>Db Item #203.</b></ph></p>
            <p>2014-04-29: <ph id="change_20140429_SEP">Modify instruction to better preserve document order.<b>R4.5 Item #1368.</b></ph></p>
            <p>2014-04-24: <ph id="change_20140424_SEP">Add instruction and two examples for where <targetxml>@referencetype</targetxml> becomes "consideredcases" or "legislation".<b>R4.5 Item #1355.</b></ph></p>
		</section>
   </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA04-Administrative_Decisions\case.references.dita  -->
	<!--<xsl:message>CA04-Administrative_Decisions_case.references.xsl requires manual development!</xsl:message>--> 


<!-- requires keying to generate attribute value -->
	<xsl:template match="case:references">
<xsl:choose>
  <xsl:when test="child::heading">
    <!--RS [2017-12-01]: Added title inside the heading as per current xpaths in below template for generate the @referencetype-->
    <ref:relatedrefs>
            <xsl:if test="key('kCodeByName',child::heading/title,$relatedrefs)/@value!=''">      <xsl:attribute name="referencetype">
              <xsl:value-of select="key('kCodeByName',child::heading/title,$relatedrefs)/@value"/>
      </xsl:attribute>
      </xsl:if>
      <xsl:apply-templates select="child::heading"/>
      <bodytext>
        <xsl:apply-templates select="@*|node() except heading"/>
      </bodytext>
    </ref:relatedrefs>
  </xsl:when>
  <xsl:when test="parent::case:headnote and ancestor::case:appendix">
    <ref:relatedrefs>
      <xsl:if test="key('kCodeByName',child::heading,$relatedrefs)/@value!=''">      <xsl:attribute name="referencetype">
        <xsl:value-of select="key('kCodeByName',child::heading,$relatedrefs)/@value"/>
      </xsl:attribute>
      </xsl:if>
      <bodytext>
      <xsl:apply-templates select="@*|node()"/>
      </bodytext>
    </ref:relatedrefs>
  </xsl:when>
  <xsl:otherwise>
    <ref:relatedrefs>
      <xsl:if test="key('kCodeByName',child::heading,$relatedrefs)/@value!=''">      <xsl:attribute name="referencetype">
        <xsl:value-of select="key('kCodeByName',child::heading,$relatedrefs)/@value"/>
      </xsl:attribute>
      </xsl:if>
      <xsl:apply-templates select="child::heading"/>
      <bodytext>
        <xsl:apply-templates select="@*|node() except heading"/>
      </bodytext>
    </ref:relatedrefs>
  </xsl:otherwise>
</xsl:choose>
	</xsl:template>

  <xsl:variable name="relatedrefs">
    <dita:codes>
      <dita:code key="Articles cited:" value="consideredcases"/>
      <dita:code key="Authorities Cited:" value="consideredcases"/>
      <dita:code key="Authorities cited:" value="consideredcases"/>
      <dita:code key="Authorities Considered:" value="consideredcases"/>
      <dita:code key="Authors and Works cited:" value="consideredcases"/>
      <dita:code key="AUTHORS AND WORKS JUDICIALLY NOTICED:" value="consideredcases"/>
      <dita:code key="AUTHORS AND WORKS NOTICED:" value="consideredcases"/>
      <dita:code key="Authors and Works Noticed:" value="consideredcases"/>
      <dita:code key="Authors Cited" value="consideredcases"/>
      <dita:code key="Authors cited" value="consideredcases"/>
      <dita:code key="Autorité citée :" value="consideredcases"/>
      <dita:code key="Autorités :" value="consideredcases"/>
      <dita:code key="Autorités citées :" value="consideredcases"/>
      <dita:code key="CASE CITED:" value="consideredcases"/>
      <dita:code key="Cases Cited" value="consideredcases"/>
      <dita:code key="CASES CITED:" value="consideredcases"/>
      <dita:code key="Cases Cited:" value="consideredcases"/>
      <dita:code key="Cases cited:" value="consideredcases"/>
      <dita:code key="Cases Considered:" value="consideredcases"/>
      <dita:code key="CASES JUDICIALLY CONSIDERED" value="consideredcases"/>
      <dita:code key="Cases Judicially Considered" value="consideredcases"/>
      <dita:code key="CASES JUDICIALLY NOTICED:" value="consideredcases"/>
      <dita:code key="CASES NOTICED:" value="consideredcases"/>
      <dita:code key="Cases Noticed:" value="consideredcases"/>
      <dita:code key="Décision citée :" value="consideredcases"/>
      <dita:code key="Décisions citées :" value="consideredcases"/>
      <dita:code key="DOCTRINE" value="consideredcases"/>
      <dita:code key="Doctrine" value="consideredcases"/>
      <dita:code key="Doctrine citée" value="consideredcases"/>
      <dita:code key="JURISPRUDENCE" value="consideredcases"/>
      <dita:code key="Jurisprudence" value="consideredcases"/>
      <dita:code key="Jurisprudence citée" value="consideredcases"/>
      <dita:code key="Jurisprudence citée :" value="consideredcases"/>
      <dita:code key="Jurisprudence consultée :" value="consideredcases"/>
      <dita:code key="Législation citée :" value="legislation"/>
      <dita:code key="Lois et règlements" value="legislation"/>
      <dita:code key="Lois et règlements cités" value="legislation"/>
      <dita:code key="MISCELLANEOUS WORKS CITED:" value="consideredcases"/>
      <dita:code key="Statutes and Regulations Cited" value="legislation"/>
      <dita:code key="STATUTES AND REGULATIONS CITED:" value="legislation"/>
      <dita:code key="Statutes and Regulations cited:" value="legislation"/>
      <dita:code key="Statutes and Regulations Judicially Considered" value="legislation"/>
      <dita:code key="Statutes Cited:" value="legislation"/>
      <dita:code key="Statutes cited:" value="legislation"/>
      <dita:code key="STATUTES JUDICIALLY NOTICED:" value="legislation"/>
      <dita:code key="STATUTES NOTICED:" value="legislation"/>
      <dita:code key="Statutes Noticed:" value="legislation"/>
      <dita:code key="Statutes, Regulations and Rule Cited:" value="legislation"/>
      <dita:code key="Statutes, Regulations and Rules cited" value="legislation"/>
      <dita:code key="STATUTES, REGULATIONS AND RULES CITED:" value="legislation"/>
      <dita:code key="Statutes, Regulations and Rules Cited:" value="legislation"/>
      <dita:code key="Authorities Cited" value="consideredcases"/>
      <dita:code key="Authors Cited" value="consideredcases"/>
      <dita:code key="Cases and texts cited" value="consideredcases"/>
      <dita:code key="CASES CITED" value="consideredcases"/>
      <dita:code key="Cases Cited" value="consideredcases"/>
      <dita:code key="Cases cited" value="consideredcases"/>
      <dita:code key="Doctrine citée" value="consideredcases"/>
      <!--<dita:code key="Jurisprudence" value="consideredcases"/>-->
      <dita:code key="Législation citée" value="legislation"/>
      <dita:code key="Lois et règlements cités" value="legislation"/>
      <dita:code key="MISCELLANEOUS WORKS CITED" value="consideredcases"/>
      <dita:code key="Statutes and Regulations Cited" value="legislation"/>
      <dita:code key="Statutes cited" value="legislation"/>
      <dita:code key="STATUTES, REGULATIONS AND RULES CITED" value="legislation"/>
      <dita:code key="Statutes, Regulations and Rules Cited" value="legislation"/>
      <dita:code key="Statutes, Regulations and Rules cited" value="legislation"/>
      <dita:code key="Législation citée:" value="legislation"/>
      <dita:code key="JURISPRUDENCE CITÉE :" value="consideredcases"/>
      <dita:code key="Affaire citée:" value="consideredcases"/>
      <dita:code key="Affaires citées:" value="consideredcases"/>
      <dita:code key="Affaires citées:" value="consideredcases"/>
      <dita:code key="Authorities &amp; Texts:" value="consideredcases"/>
      <dita:code key="Authorities" value="consideredcases"/>
      <dita:code key="Autorités citées *" value="consideredcases"/>
      <dita:code key="Autorités citées par l'appelante :" value="consideredcases"/>
      <dita:code key="Autorités citées par l'intimé :" value="consideredcases"/>
      <dita:code key="Autorités citées" value="consideredcases"/>
      <dita:code key="Case Authorities and Texts:" value="consideredcases"/>
      <dita:code key="Cases considered:" value="consideredcases"/>
      <dita:code key="Cases referred to:" value="consideredcases"/>
      <dita:code key="Dictionnaire cité :" value="consideredcases"/>
     <!-- <dita:code key="Jurisprudence :" value="consideredcases"/>-->
      <dita:code key="Jurisprudence :" value="consideredcases"/>
      <dita:code key="JURISPRUDENCE DÉPOSÉE PAR L'INTIMÉE" value="consideredcases"/>
      <dita:code key="Jurisprudence soumise" value="consideredcases"/>
      <dita:code key="Jurisprudence:" value="consideredcases"/>
      <dita:code key="Législation citée:" value="legislation"/>
      <dita:code key="Liste de jurisprudence" value="consideredcases"/>
      <dita:code key="Liste des jugements à l'appui:" value="consideredcases"/>
      <dita:code key="LISTE DES JUGEMENTS À L'APPUI" value="consideredcases"/>
      <dita:code key="Loi citée:" value="legislation"/>
      <dita:code key="Lois citées:" value="legislation"/>
      <dita:code key="Lois et règlements cités :" value="legislation"/>
      <dita:code key="Par l'intimé :" value="consideredcases"/>
      <dita:code key="Statutes considered:" value="legislation"/>
      <dita:code key="Statutes Referred to:" value="legislation"/>
      <dita:code key="Statutes referred to:" value="legislation"/>
      <dita:code key="Tribunal decisions considered:" value="consideredcases"/>
      <dita:code key="LEGISLATION:" value="legislation"/>
    </dita:codes>
  </xsl:variable>	
  
  <xsl:key name="kCodeByName" match="dita:code" use="string(@key)"/> 
  
 

</xsl:stylesheet>