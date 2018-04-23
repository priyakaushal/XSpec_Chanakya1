<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
  xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
  xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:ext="http://exslt.org/common" 
  xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"
  xmlns:courtcase="http://www.lexisnexis.com/xmlschemas/content/legal/courtcase/1/"
  xmlns:courtfiling="http://www.lexisnexis.com/xmlschemas/content/legal/courtfiling/1/"
  xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/"
  version="2.0" exclude-result-prefixes="dita ref courtfiling case xsl ext">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_case.references-LxAdv_ref.relatedrefs">
  <title>case:references <lnpid>id-CCCC-12019</lnpid></title>
  <body>
    <section>
      <p><sourcexml>case:references</sourcexml> becomes
          <targetxml>courtcase:head/ref:relatedrefs</targetxml>.</p>
      <p>With the exception of <sourcexml>heading</sourcexml>, all children of
          <sourcexml>case:references</sourcexml> should be mapped to children of
          <targetxml>ref:relatedrefs/bodytext</targetxml>.</p>
    </section>
    <section>
      <title><b>Canada streams only:</b></title>
      <p>Please refer the below table for the following scenario: If initial contents of
          <sourcexml>case:references</sourcexml> equals first column of table then (either within
        heading/title, text/emph typestyle="bf", etc), add an attribute
          <targetxml>@referencetype</targetxml> and set the value
          <targetxml>@referencetype=</targetxml> second column of table. See CA Example 2 &amp;
        3.</p>
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
              <entry>STATUTE AND REGULATION CITED</entry>
              <entry>legislation</entry>
            </row>
            <row>
              <entry>STATUTES AND REGULATION CITED</entry>
              <entry>legislation</entry>
            </row>
            <row>
              <entry>STATUTES AND REGULATION CITED:</entry>
              <entry>legislation</entry>
            </row>
            <row>
              <entry>REGULATION CITED</entry>
              <entry>legislation</entry>
            </row>
            <row>
              <entry>STATUTE CITED</entry>
              <entry>legislation</entry>
            </row>
            <row>
              <entry>Rules and Regulations considered</entry>
              <entry>legislation</entry>
            </row>
            <row>
              <entry>Lois, règlements et règles cités:</entry>
              <entry>legislation</entry>
            </row>
            <row>
              <entry>STATUTES, RULES AND REGULATIONS CITED</entry>
              <entry>legislation</entry>
            </row>
            <row>
              <entry>Rules cited</entry>
              <entry>legislation</entry>
            </row>
            <row>
              <entry>Regulations Cited</entry>
              <entry>legislation</entry>
            </row>
            <row>
              <entry>Lois et règlement cités</entry>
              <entry>legislation</entry>
            </row>
            <row>
              <entry>LOI ET RÈGLEMENT CITÉS</entry>
              <entry>legislation</entry>
            </row>
            <row>
              <entry>RÈGLEMENT CITÉ</entry>
              <entry>legislation</entry>
            </row>
            <row>
              <entry>STATUTES, RULES AND REGULATIONS CITED</entry>
              <entry>legislation</entry>
            </row>
            <row>
              <entry>Autorités consultées:</entry>
              <entry>consideredcases</entry>
            </row>
            <row>
              <entry>AUTORITÉS CONSULTÉES</entry>
              <entry>consideredcases</entry>
            </row>
            <row>
              <entry>Autorités citées par la requérante:</entry>
              <entry>consideredcases</entry>
            </row>
            <row>
              <entry>Autres autorités consultées</entry>
              <entry>consideredcases</entry>
            </row>
            <row>
              <entry>Case Authorities Referred to</entry>
              <entry>consideredcases</entry>
            </row>
            <row>
              <entry>Liste des autorités citées</entry>
              <entry>consideredcases</entry>
            </row>
            <row>
              <entry>JURISPRUDENCE CITÉE</entry>
              <entry>consideredcases</entry>
            </row>
            <row>
              <entry>Doctrine et jurisprudence :</entry>
              <entry>consideredcases</entry>
            </row>
            <row>
              <entry>Cases referred to</entry>
              <entry>consideredcases</entry>
            </row>
            <row>
              <entry>LEGISLATION:</entry>
              <entry>legislation</entry>
            </row>
            <row>
              <entry>Doctrine et jurisprudence</entry>
              <entry>consideredcases</entry>
            </row>
          </tbody>
        </tgroup>
      </table>
      <note><p>Remove the colon (:) or space colon ( :) which comes under
        <targetxml>ref:relatedrefs</targetxml> under
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
      </section>
    <example>
      <title>Example: AU content</title>
      <codeblock>
&lt;case:references&gt;
  &lt;p&gt;
    &lt;text&gt;
      &lt;ci:cite searchtype="LEG-REF"&gt;
        &lt;ci:content&gt;(CTH) 
          &lt;citefragment searchtype="LEG-NAME-REF"&gt;Criminal Code (Q)&lt;/citefragment&gt;
          &lt;citefragment searchtype="CI-LEG-LAWNUM"&gt;minal Code (Q), s 31(1)(d)&lt;/citefragment&gt;
        &lt;/ci:content&gt;
      &lt;/ci:cite&gt;
    &lt;/text&gt;
  &lt;/p&gt;
&lt;/case:references&gt;
           </codeblock>
      <b>becomes</b>
      <codeblock>
&lt;ref:relatedrefs&gt;
  &lt;bodytext&gt;
    &lt;p&gt;
      &lt;text&gt;
        &lt;lnci:cite type="legislation"&gt;
          &lt;lnci:content&gt;(CTH) Criminal Code (Q) minal Code (Q), s 31(1)(d)&lt;/lnci:content&gt;
        &lt;/lnci:cite&gt;
      &lt;/text&gt;
    &lt;/p&gt;
  &lt;/bodytext&gt;   
&lt;/ref:relatedrefs&gt;
           </codeblock>
    </example>
    <example>
      <title>Example: NZ content</title>
      <codeblock>
&lt;case:references&gt;
  &lt;heading&gt;&lt;title&gt;Cases mentioned in judgment&lt;/title&gt;&lt;/heading&gt;
  &lt;p&gt;
    &lt;text&gt;
      &lt;ci:cite searchtype="CASE-REF"&gt;
        &lt;ci:case&gt;
          &lt;ci:caseref ID="x20110NZCCLR_1-1" spanref="x20110NZCCLR_1-1-1"&gt;
            &lt;ci:reporter value="nzclc" country="nz"/&gt;
            &lt;ci:volume num="3"&gt;&lt;/ci:volume&gt;
            &lt;ci:edition&gt;
              &lt;ci:date year="1986"/&gt;
            &lt;/ci:edition&gt;
            &lt;ci:page num="100,054"/&gt;
          &lt;/ci:caseref&gt;
        &lt;/ci:case&gt;
        &lt;ci:content&gt;
          &lt;citefragment searchtype="CASE-NAME-REF"&gt;
            &lt;emph typestyle="it"&gt;Cotterall v Fidelity Life Assurance Co Ltd&lt;/emph&gt;
          &lt;/citefragment&gt; 
          &lt;citefragment searchtype="CASE-CITE-REF"&gt;
            &lt;ci:span spanid="x20110NZCCLR_1-1-1"&gt;(1986) 3 NZCLC 100,054 (HC)&lt;/ci:span&gt;
          &lt;/citefragment&gt;.
        &lt;/ci:content&gt;
      &lt;/ci:cite&gt;
    &lt;/text&gt;
  &lt;/p&gt;
&lt;/case:references&gt;
           </codeblock>
      <b>becomes</b>
      <codeblock>
&lt;ref:relatedrefs&gt;
  &lt;heading&gt;&lt;title&gt;Cases mentioned in judgment&lt;/title&gt;&lt;/heading&gt;
  &lt;bodytext&gt;
    &lt;p&gt;
      &lt;text&gt;
        &lt;lnci:cite&gt;
          &lt;lnci:case&gt;
            &lt;lnci:caseref ID="x20110NZCCLR_1-1"&gt;
              &lt;lnci:reporter value="nzclc" country="nz"/&gt;
              &lt;lnci:volume num="3"&gt;&lt;/ci:volume&gt;
              &lt;lnci:edition&gt;
                &lt;lnci:date year="1986"/&gt;
              &lt;/lnci:edition&gt;
              &lt;lnci:page num="100,054"/&gt;
            &lt;/lnci:caseref&gt;
          &lt;/lnci:case&gt;
          &lt;lnci:content&gt;
            &lt;emph typestyle="it"&gt;Cotterall v Fidelity Life Assurance Co Ltd&lt;/emph&gt; (1986) 3 NZCLC 100,054 (HC)
          &lt;/lnci:content&gt;
        &lt;/lnci:cite&gt;
      &lt;/text&gt;
    &lt;/p&gt;
  &lt;/bodytext&gt;   
&lt;/ref:relatedrefs&gt;
           </codeblock>
    </example>
    <example>
      <title>Example: CA content</title>
      <codeblock>
&lt;case:references&gt;
    &lt;heading&gt;
        &lt;title&gt;Cases Cited:&lt;/title&gt;
    &lt;/heading&gt;
    &lt;p&gt;
        &lt;text&gt;Soo Mill and Lumber Co. Ltd. v. City of Sault Ste-Marie &lt;ci:cite searchtype="SUMM-CASE-REF"&gt;
                &lt;ci:case&gt;
                    &lt;ci:caseref ID="cref00003130" spanref="cspan00003130"&gt;
                        &lt;ci:reporter value="NR"/&gt;
                        &lt;ci:volume num="2"/&gt;
                        &lt;ci:page num="492"/&gt;
                    &lt;/ci:caseref&gt;
                &lt;/ci:case&gt;
                &lt;ci:content&gt;&lt;ci:span spanid="cspan00003130"&gt;2 N.R. 492&lt;/ci:span&gt;&lt;/ci:content&gt;
            &lt;/ci:cite&gt;; City of Montreal v. Morgan &lt;ci:cite searchtype="SUMM-CASE-REF"&gt;
                &lt;ci:case&gt;
                    &lt;ci:caseinfo&gt;
                        &lt;ci:decisiondate year="1920"/&gt;
                    &lt;/ci:caseinfo&gt;
                    &lt;ci:caseref ID="cref00003131" spanref="cspan00003131"&gt;
                        &lt;ci:reporter value="DLR"/&gt;
                        &lt;ci:volume num="54"/&gt;
                        &lt;ci:page num="165"/&gt;
                    &lt;/ci:caseref&gt;
                &lt;/ci:case&gt;
                &lt;ci:content&gt;&lt;ci:span spanid="cspan00003131"&gt;(1920), 54 D.L.R. 165&lt;/ci:span&gt;&lt;/ci:content&gt;
            &lt;/ci:cite&gt;.&lt;/text&gt;
    &lt;/p&gt;
&lt;/case:references&gt;
           </codeblock>
      <b>becomes</b>
      <codeblock>
&lt;courtcase:head&gt;
    ...
    &lt;ref:relatedrefs referencetype="consideredcases"&gt;
        &lt;heading&gt;
            &lt;title&gt;Cases Cited&lt;/title&gt;
        &lt;/heading&gt;
        &lt;bodytext&gt;
            &lt;p&gt;
                &lt;text&gt;Soo Mill and Lumber Co. Ltd. v. City of Sault Ste-Marie &lt;lnci:cite&gt;
                        &lt;lnci:case&gt;
                            &lt;lnci:caseref ID="cref00003130"&gt;
                                &lt;lnci:reporter value="NR"/&gt;
                                &lt;lnci:volume num="2"/&gt;
                                &lt;lnci:page num="492"/&gt;
                            &lt;/lnci:caseref&gt;
                        &lt;/lnci:case&gt;
                        &lt;lnci:content&gt;2 N.R. 492&lt;/lnci:content&gt;
                    &lt;/lnci:cite&gt;; City of Montreal v. Morgan &lt;lnci:cite&gt;
                        &lt;lnci:case&gt;
                            &lt;lnci:caseinfo&gt;
                                &lt;lnci:decisiondate year="1920"/&gt;
                            &lt;/lnci:caseinfo&gt;
                            &lt;lnci:caseref ID="cref00003131"&gt;
                                &lt;lnci:reporter value="DLR"/&gt;
                                &lt;lnci:volume num="54"/&gt;
                                &lt;lnci:page num="165"/&gt;
                            &lt;/lnci:caseref&gt;
                        &lt;/lnci:case&gt;
                        &lt;lnci:content&gt;(1920), 54 D.L.R. 165&lt;/lnci:content&gt;
                    &lt;/lnci:cite&gt;.&lt;/text&gt;
            &lt;/p&gt;
        &lt;/bodytext&gt;
    &lt;/ref:relatedrefs&gt;
    ...
&lt;/courtcase:head&gt;
           </codeblock>
    </example>
    <example>
      <title>CA Example 2 - <targetxml>@referencetype="consideredcases"</targetxml></title>
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
&lt;courtcase:head&gt;
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
&lt;/courtcase:head&gt;
           </codeblock>
    </example>
    <example>
      <title>CA Example 3 - <targetxml>@referencetype="legislation"</targetxml></title>
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
&lt;courtcase:head&gt;
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
&lt;/courtcase:head&gt;
           </codeblock>
    </example>
    <example>
      <title>Example: UK content</title>
      <codeblock>
&lt;case:references referencetype="cases"&gt;
    &lt;h&gt;
        &lt;emph typestyle="bf"&gt;Cases referred to&lt;/emph&gt;
    &lt;/h&gt;
    &lt;pgrp&gt;
        &lt;p&gt;
            &lt;text&gt;&lt;emph typestyle="it"&gt;Guaranty Trust Co of New York v Hannay &amp;amp; Co&lt;/emph&gt;
                &lt;ci:cite searchtype="CASE-REF"&gt;
                    &lt;ci:case&gt;
                        &lt;ci:caseref&gt;
                            &lt;ci:reporter value="KB"/&gt;
                            &lt;ci:volume num="2"/&gt;
                            &lt;ci:edition&gt;
                                &lt;ci:date year="1915"/&gt;
                            &lt;/ci:edition&gt;
                            &lt;ci:page num="536"/&gt;
                        &lt;/ci:caseref&gt;
                    &lt;/ci:case&gt;
                    &lt;ci:content&gt;[1915] 2 KB 536&lt;/ci:content&gt;
                &lt;/ci:cite&gt;; 30 Digest 147, &lt;emph typestyle="it"&gt;219&lt;/emph&gt;.
            &lt;/text&gt;
        &lt;/p&gt;
    &lt;/pgrp&gt;
&lt;/case:references&gt;
           </codeblock>
      <b>becomes</b>
      <codeblock>

&lt;ref:relatedrefs referencetype="cases"&gt;
    &lt;bodytext&gt;
        &lt;h&gt;
            &lt;emph typestyle="bf"&gt;Cases referred to&lt;/emph&gt;
        &lt;/h&gt;
        &lt;pgrp&gt;
            &lt;p&gt;
                &lt;text&gt;&lt;emph typestyle="it"&gt;Guaranty Trust Co of New York v Hannay &amp;#x0026; Co&lt;/emph&gt;
                    &lt;lnci:cite&gt;
                        &lt;lnci:case&gt;
                            &lt;lnci:caseref&gt;
                                &lt;lnci:reporter value="KB"/&gt;
                                &lt;lnci:volume num="2"/&gt;
                                &lt;lnci:edition&gt;
                                    &lt;lnci:date year="1915"/&gt;
                                &lt;/lnci:edition&gt;
                                &lt;lnci:page num="536"/&gt;
                            &lt;/lnci:caseref&gt;
                        &lt;/lnci:case&gt;
                        &lt;lnci:content&gt;[1915] 2 KB 536&lt;/lnci:content&gt;
                    &lt;/lnci:cite&gt;; 30 Digest 147, &lt;emph typestyle="it"&gt;219&lt;/emph&gt;.
                &lt;/text&gt;
            &lt;/p&gt;
        &lt;/pgrp&gt;
    &lt;/bodytext&gt;
&lt;/ref:relatedrefs&gt;
           </codeblock>
    </example>
    <section>
      <title>Changes</title>
      <p>2016-04-22: <ph id="change_20160422_PS">Added new term <b>"Doctrine et jurisprudence"</b>
          to the table to generate <b>"consideredcases"</b>. Applicable on CA01.</ph></p>
      <p>2015-03-13: <ph id="change_20150313_CSN">Added STATUTES AND REGULATION CITED: to the @referencetype substitution table. Webteam #292787</ph></p>
      <p>2014-09-04: <ph id="change_20140904_PS">Updated instruction for removal of colon from <targetxml>ref:relatedrefs</targetxml> based on list included. Applicable on CA01.</ph></p>
      <p>2014-07-24: <ph id="change_20140724_AS">Added  "LEGISLATION:" to table with @referencetype legislation. R4.5 DB Item #1278.</ph></p>
      <p>2014-07-18: <ph id="change_20140718_PS">Updated CA target snippet to capture
            <targetxml>@referencetype="consideredcases"</targetxml> attribute in
            <targetxml>ref:relatedrefs</targetxml> element and change all references of
            <b>"Jurisprudence"</b> from <b>"legislation"</b> to <b>"consideredcases"</b>, and also
          added new terms.</ph>
      </p>
      <p>2014-06-23: <ph id="change_20140623_SEP">Attribute @referencetype all lower case for
          "legislation" and "consideredcases". R4.5 DB Item #1278.</ph></p>
      <p>2014-06-04: <ph id="change_20140604">Updates Canada-only instruction and examples for where
            <targetxml>@referencetype</targetxml> value generated based on table value. R4.5 Item
          #1587.</ph></p>
      <p>2014-05-26: <ph id="change_20140526">Updated note and added one more instruction to remove
          space colon ( :) from target, this immediately applies to Canada only.</ph></p>
      <p>2014-04-22 <ph id="change_20140422_PS">Added Note and Updated source example to remove
          colon (:) for Canada-only.</ph></p>
      <p>2014-04-15 <ph id="change_20140415_PS">Updated source and target example for
          Canada-only.</ph></p>
      <p>2014-03-31 <ph id="change_20140331_SEP">Add Canada-only instruction and two Canada examples
          for where <targetxml>@referencetype</targetxml> becomes "consideredcases" or
            "legislation".<b>R4.5 Item #1109.</b></ph></p>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_caselaw\Rosetta_case.references-LxAdv_ref.relatedrefs.dita  -->
  <!--<xsl:param name="references" select="document('../../modules/nonamespace/references.xml')"/>-->
  
<!--	<xsl:template match="case:references">
	 
	  <xsl:variable name="case-data" select="normalize-space(.)"/>	
	  <xsl:choose> 
	    <!-\- Awantika: Please add stream ID as per the requirement -\->
	    <xsl:when test="$streamID=('CA01','CA02','CA04','CA05')">
	      <xsl:choose>
	        <xsl:when test="count($references//reference[starts-with($case-data,./@key)[1]])>0">
	          <ref:relatedrefs>		
	            <xsl:attribute name="referencetype">
	              <xsl:value-of select="($references//reference[starts-with($case-data,./@key)[1]]/@value)[1]"/>
	            </xsl:attribute>
	            <xsl:choose>
	              <xsl:when test="descendant::heading">
	                <xsl:apply-templates select="heading"/>
	                <bodytext>
	                  <xsl:apply-templates select="@* | node() except heading"/>
	                </bodytext>
	              </xsl:when>
	              <xsl:otherwise>
	                <xsl:apply-templates select="node()"/>
	              </xsl:otherwise>
	            </xsl:choose>	          
	          </ref:relatedrefs>
	        </xsl:when>
	        <xsl:otherwise>
	          <ref:relatedrefs>		
	            <xsl:choose>
	              <xsl:when test="descendant::heading">
	                <xsl:apply-templates select="heading"/>
	                <bodytext>
	                  <xsl:apply-templates select="@* | node() except heading"/>
	                </bodytext>
	              </xsl:when>
	              <xsl:otherwise>
	                <xsl:apply-templates select="@* | node()"/>
	              </xsl:otherwise>
	            </xsl:choose>
	          </ref:relatedrefs>
	        </xsl:otherwise>
	      </xsl:choose>
	    </xsl:when>
	    <xsl:otherwise>
	      <ref:relatedrefs>		
	        <xsl:choose>
	          <xsl:when test="descendant::heading">
	            <xsl:apply-templates select="heading"/>
	            <bodytext>
	              <xsl:apply-templates select="@* | node() except heading"/>
	            </bodytext>
	          </xsl:when>
	          <xsl:otherwise>
	            <xsl:apply-templates select="@* | node()"/>
	          </xsl:otherwise>
	        </xsl:choose>
	      </ref:relatedrefs>
	    </xsl:otherwise>
	  </xsl:choose>
	
	</xsl:template>-->
  
  <!-- Vikas Rohilla : bodytext is the Mandatory Element so it is moved out to the if condition -->
  
  <xsl:template match="case:references">
    
    <xsl:variable name="case-data" select="normalize-space(.)"/>	
    <xsl:choose> 
		<!--SP LBU needs this via conversation with product lawyers-->
      <xsl:when test="$streamID=('CA19')">
        <xsl:choose>
          <xsl:when test="count($references//reference[starts-with($case-data,./@key)[1]])>0">
            <courtfiling:citedauthorities>		
              <!-- Awantika: Updated if heading is coming -->
             <xsl:apply-templates select="heading"/>                    
              <bodytext>              
			  <!--SP: For CA19, there is currently no need to process the referencetype attribute on case:references-->
                <xsl:apply-templates select=" node() except (heading | @referencetype)"/>              
              </bodytext>
            </courtfiling:citedauthorities>
          </xsl:when>
          <xsl:otherwise>
            <courtfiling:citedauthorities>		
                <xsl:apply-templates select="heading"/>                   
              <bodytext>
			  <!--SP: For CA19, there is currently no need to process the referencetype attribute on case:references-->
                <xsl:apply-templates select=" node() except (heading | @referencetype)"/>
              </bodytext>
            </courtfiling:citedauthorities>
          </xsl:otherwise>
        </xsl:choose>
      </xsl:when>
      <!-- Awantika: Please add stream ID as per the requirement -->
      <xsl:when test="$streamID=('CA01','CA02CC','CA04','CA05')">
        <xsl:choose>
          <xsl:when test="count($references//ext:reference[starts-with($case-data,./@key)[1]])&gt;0">
            <ref:relatedrefs>		
              <xsl:attribute name="referencetype">
                <xsl:value-of select="($references//ext:reference[starts-with($case-data,./@key)[1]]/@value)[1]"/>
              </xsl:attribute>
              <!-- Awantika: Updated if heading is coming -->
                <xsl:apply-templates select="heading"/>                   
              <bodytext>
                <xsl:apply-templates select="@* | node() except heading"/>
              </bodytext>
            </ref:relatedrefs>
          </xsl:when>
          <xsl:otherwise>
            <ref:relatedrefs>		
                <xsl:apply-templates select="heading"/>                   
              <bodytext>
                <xsl:apply-templates select="@* | node() except heading"/>
              </bodytext>
            </ref:relatedrefs>
          </xsl:otherwise>
        </xsl:choose>
      </xsl:when>
      <xsl:otherwise>
        <ref:relatedrefs>
        	<xsl:apply-templates select="@*"/>
            <xsl:apply-templates select="heading"/>                   
          <bodytext>          
              <xsl:apply-templates select="node() except heading"/>
          </bodytext>
        </ref:relatedrefs>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>


  <xsl:template match="case:references/heading/title/text()">
    <xsl:value-of select="replace(.,': ','')"/>
  </xsl:template>

	<!-- JD: 2017-06-15: adding for UK01; although it's not mentioned in the CI it is shown in examples.
	Hard to see any downside to mapping case:references/@referencytype to ref:relatedrefs/@referencetype
	-->
	<xsl:template match="case:references/@referencetype">
		<xsl:attribute name="referencetype" select="."/>
	</xsl:template>

  
	<!--<xsl:template match="">

		<!-\-  Original Target XPath:  Avocats   -\->
		

	</xsl:template>

	<xsl:template match="Avocats :">

		<!-\-  Original Target XPath:  Avocats   -\->
		<Avocats>
			<xsl:apply-templates select="@* | node()"/>
		</Avocats>

	</xsl:template>

	<xsl:template match="Cases cited:">

		<!-\-  Original Target XPath:  Casescited   -\->
		<Casescited>
			<xsl:apply-templates select="@* | node()"/>
		</Casescited>

	</xsl:template>

	<xsl:template match="Cases Cited:">

		<!-\-  Original Target XPath:  CasesCited   -\->
		<CasesCited>
			<xsl:apply-templates select="@* | node()"/>
		</CasesCited>

	</xsl:template>

	<xsl:template match="Jurisprudence cite :">

		<!-\-  Original Target XPath:  Jurisprudencecite   -\->
		<Jurisprudencecite>
			<xsl:apply-templates select="@* | node()"/>
		</Jurisprudencecite>

	</xsl:template>

	<xsl:template match="Statutes, Regulations and Rules Cited:">

		<!-\-  Original Target XPath:  Statutes,RegulationsandRulesCited   -\->
		<!-\-  Could not determine target element or attribute name:  <Statutes,RegulationsandRulesCited>  -\->			<xsl:apply-templates select="@* | node()"/>
		<!-\-  Could not determine target element or attribute name:  </Statutes,RegulationsandRulesCited>  -\->

	</xsl:template>

	<xsl:template match="Législation citée :">

		<!-\-  Original Target XPath:  Législationcitée   -\->
		<!-\-  Could not determine target element or attribute name:  <Législationcitée>  -\->			<xsl:apply-templates select="@* | node()"/>
		<!-\-  Could not determine target element or attribute name:  </Législationcitée>  -\->

	</xsl:template>

	<xsl:template match="Authors and Texts Cited:">

		<!-\-  Original Target XPath:  AuthorsandTextsCited   -\->
		<AuthorsandTextsCited>
			<xsl:apply-templates select="@* | node()"/>
		</AuthorsandTextsCited>

	</xsl:template>

	<xsl:template match="Texts Cited:">

		<!-\-  Original Target XPath:  TextsCited   -\->
		<TextsCited>
			<xsl:apply-templates select="@* | node()"/>
		</TextsCited>

	</xsl:template>

	<xsl:template match="Causes citées et consultées :">

		<!-\-  Original Target XPath:  Causescitéesetconsultées   -\->
		<!-\-  Could not determine target element or attribute name:  <Causescitéesetconsultées>  -\->			<xsl:apply-templates select="@* | node()"/>
		<!-\-  Could not determine target element or attribute name:  </Causescitéesetconsultées>  -\->

	</xsl:template>

	<xsl:template match="Jurisprudence et doctrine citées et consultées :">

		<!-\-  Original Target XPath:  Jurisprudenceetdoctrinecitéesetconsultées   -\->
		<!-\-  Could not determine target element or attribute name:  <Jurisprudenceetdoctrinecitéesetconsultées>  -\->			<xsl:apply-templates select="@* | node()"/>
		<!-\-  Could not determine target element or attribute name:  </Jurisprudenceetdoctrinecitéesetconsultées>  -\->

	</xsl:template>

	<xsl:template match="Doctrine et jurisprudence citées :">

		<!-\-  Original Target XPath:  Doctrineetjurisprudencecitées   -\->
		<!-\-  Could not determine target element or attribute name:  <Doctrineetjurisprudencecitées>  -\->			<xsl:apply-templates select="@* | node()"/>
		<!-\-  Could not determine target element or attribute name:  </Doctrineetjurisprudencecitées>  -\->

	</xsl:template>

	<xsl:template match="Doctrine citée :">

		<!-\-  Original Target XPath:  Doctrinecitée   -\->
		<!-\-  Could not determine target element or attribute name:  <Doctrinecitée>  -\->			<xsl:apply-templates select="@* | node()"/>
		<!-\-  Could not determine target element or attribute name:  </Doctrinecitée>  -\->

	</xsl:template>

	<xsl:template match="Counsel:">

		<!-\-  Original Target XPath:  Counsel   -\->
		<Counsel>
			<xsl:apply-templates select="@* | node()"/>
		</Counsel>

	</xsl:template>-->

</xsl:stylesheet>
