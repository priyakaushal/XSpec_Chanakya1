<?xml version="1.0" encoding="UTF-8"?>
<!-- Awantika : Applicable for Canada streams only: 
    Created this sheet in order to match the unique values of case:references with the corresponding values which will act as the attribute value for ref:relatedref/@referencetype -->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:ext="http://exslt.org/common" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
    exclude-result-prefixes="xs"
    version="2.0">
    <xsl:variable name="references">
        <ext:references>
        <ext:reference key="Articles cited:" value="consideredcases"/>
        <ext:reference key="Authorities Cited:" value="consideredcases"/>
        <ext:reference key="Authorities cited:" value="consideredcases"/>
        <ext:reference key="Authorities Considered:" value="consideredcases"/>
        <ext:reference key="Authors and Works cited:" value="consideredcases"/>
        <ext:reference key="AUTHORS AND WORKS JUDICIALLY NOTICED:" value="consideredcases"/>
        <ext:reference key="AUTHORS AND WORKS NOTICED:" value="consideredcases"/>
        <ext:reference key="Authors and Works Noticed:" value="consideredcases"/>
        <ext:reference key="Authors Cited" value="consideredcases"/>
        <ext:reference key="Authors cited" value="consideredcases"/>
        <ext:reference key="Autorité citée :" value="consideredcases"/>
        <ext:reference key="Autorités :" value="consideredcases"/>
        <ext:reference key="Autorités citées :" value="consideredcases"/>
        <ext:reference key="CASE CITED:" value="consideredcases"/>
        <ext:reference key="Cases Cited" value="consideredcases"/>
        <ext:reference key="CASES CITED:" value="consideredcases"/>
        <ext:reference key="Cases Cited:" value="consideredcases"/>
        <ext:reference key="Cases cited:" value="consideredcases"/>
        <ext:reference key="Cases Considered:" value="consideredcases"/>
        <ext:reference key="CASES JUDICIALLY CONSIDERED" value="consideredcases"/>
        <ext:reference key="Cases Judicially Considered" value="consideredcases"/>
        <ext:reference key="CASES JUDICIALLY NOTICED:" value="consideredcases"/>
        <ext:reference key="CASES NOTICED:" value="consideredcases"/>
        <ext:reference key="Cases Noticed:" value="consideredcases"/>
        <ext:reference key="Décision citée :" value="consideredcases"/>
        <ext:reference key="Décisions citées :" value="consideredcases"/>
        <ext:reference key="DOCTRINE" value="consideredcases"/>
        <ext:reference key="Doctrine" value="consideredcases"/>
        <ext:reference key="Doctrine citée" value="consideredcases"/>
        <ext:reference key="JURISPRUDENCE" value="consideredcases"/>
        <ext:reference key="Jurisprudence" value="consideredcases"/>
        <ext:reference key="Jurisprudence citée" value="consideredcases"/>
        <ext:reference key="Jurisprudence citée :" value="consideredcases"/>
        <ext:reference key="Jurisprudence consultée :" value="consideredcases"/>
        <ext:reference key="Législation citée :" value="legislation"/>
        <ext:reference key="Lois et règlements" value="legislation"/>
        <ext:reference key="Lois et règlements cités" value="legislation"/>
        <ext:reference key="MISCELLANEOUS WORKS CITED:" value="consideredcases"/>
        <ext:reference key="Statutes and Regulations Cited" value="legislation"/>
        <ext:reference key="STATUTES AND REGULATIONS CITED:" value="legislation"/>
        <ext:reference key="Statutes and Regulations cited:" value="legislation"/>
        <ext:reference key="Statutes and Regulations Judicially Considered" value="legislation"/>
        <ext:reference key="Statutes Cited:" value="legislation"/>
        <ext:reference key="Statutes cited:" value="legislation"/>
        <ext:reference key="STATUTES JUDICIALLY NOTICED:" value="legislation"/>
        <ext:reference key="STATUTES NOTICED:" value="legislation"/>
        <ext:reference key="Statutes Noticed:" value="legislation"/>
        <ext:reference key="Statutes, Regulations and Rule Cited:" value="legislation"/>
        <ext:reference key="Statutes, Regulations and Rules cited" value="legislation"/>
        <ext:reference key="STATUTES, REGULATIONS AND RULES CITED:" value="legislation"/>
        <ext:reference key="Statutes, Regulations and Rules Cited:" value="legislation"/>
        <ext:reference key="Authorities Cited" value="consideredcases"/>
        <ext:reference key="Authors Cited" value="consideredcases"/>
        <ext:reference key="Cases and texts cited" value="consideredcases"/>
        <ext:reference key="CASES CITED" value="consideredcases"/>
        <ext:reference key="Cases Cited" value="consideredcases"/>
        <ext:reference key="Cases cited" value="consideredcases"/>
        <ext:reference key="Doctrine citée" value="consideredcases"/>
        <ext:reference key="Jurisprudence" value="consideredcases"/>
        <ext:reference key="Législation citée" value="legislation"/>
        <ext:reference key="Lois et règlements cités" value="legislation"/>
        <ext:reference key="MISCELLANEOUS WORKS CITED" value="consideredcases"/>
        <ext:reference key="Statutes and Regulations Cited" value="legislation"/>
        <ext:reference key="Statutes cited" value="legislation"/>
        <ext:reference key="STATUTES, REGULATIONS AND RULES CITED" value="legislation"/>
        <ext:reference key="Statutes, Regulations and Rules Cited" value="legislation"/>
        <ext:reference key="Statutes, Regulations and Rules cited" value="legislation"/>
        <ext:reference key="Législation citée:" value="legislation"/>
        <ext:reference key="JURISPRUDENCE CITÉE :" value="consideredcases"/>
        <ext:reference key="Affaire citée:" value="consideredcases"/>
        <ext:reference key="Affaires citées:" value="consideredcases"/>
        <ext:reference key="Affaires citées:" value="consideredcases"/>
        <ext:reference key="Authorities &amp; Texts:" value="consideredcases"/>
        <ext:reference key="Authorities" value="consideredcases"/>
        <ext:reference key="Autorités citées *" value="consideredcases"/>
        <ext:reference key="Autorités citées par l'appelante :" value="consideredcases"/>
        <ext:reference key="Autorités citées par l'intimé :" value="consideredcases"/>
        <ext:reference key="Autorités citées" value="consideredcases"/>
        <ext:reference key="Case Authorities and Texts:" value="consideredcases"/>
        <ext:reference key="Cases considered:" value="consideredcases"/>
        <ext:reference key="Cases referred to:" value="consideredcases"/>
        <ext:reference key="Dictionnaire cité :" value="consideredcases"/>
        <ext:reference key="Jurisprudence :" value="consideredcases"/>
        <ext:reference key="Jurisprudence :" value="consideredcases"/>
        <ext:reference key="JURISPRUDENCE DÉPOSÉE PAR L'INTIMÉE" value="consideredcases"/>
        <ext:reference key="Jurisprudence soumise" value="consideredcases"/>
        <ext:reference key="Jurisprudence:" value="consideredcases"/>
        <ext:reference key="Législation citée:" value="legislation"/>
        <ext:reference key="Liste de jurisprudence" value="legislation"/>
        <ext:reference key="Liste des jugements à l'appui:" value="consideredcases"/>
        <ext:reference key="LISTE DES JUGEMENTS À L'APPUI" value="consideredcases"/>
        <ext:reference key="Loi citée:" value="legislation"/>
        <ext:reference key="Lois citées:" value="legislation"/>
        <ext:reference key="Lois et règlements cités :" value="legislation"/>
        <ext:reference key="Par l'intimé :" value="consideredcases"/>
        <ext:reference key="Statutes considered:" value="legislation"/>
        <ext:reference key="Statutes Referred to:" value="legislation"/>
        <ext:reference key="Statutes referred to:" value="legislation"/>
        <ext:reference key="Tribunal decisions considered:" value="consideredcases"/>
        <ext:reference key="STATUTE AND REGULATION CITED" value="legislation"/>
        <ext:reference key="STATUTES AND REGULATION CITED" value="legislation"/>
        <ext:reference key="STATUTES AND REGULATION CITED:" value="legislation"/>
        <ext:reference key="REGULATION CITED" value="legislation"/>
        <ext:reference key="STATUTE CITED" value="legislation"/>
        <ext:reference key="Rules and Regulations considered" value="legislation"/>
        <ext:reference key="Lois, règlements et règles cités:" value="legislation"/>
        <ext:reference key="STATUTES, RULES AND REGULATIONS CITED" value="legislation"/>
        <ext:reference key="Rules cited" value="legislation"/>
        <ext:reference key="Regulations Cited" value="legislation"/>
        <ext:reference key="Lois et règlement cités" value="legislation"/>
        <ext:reference key="LOI ET RÈGLEMENT CITÉS" value="legislation"/>
        <ext:reference key="RÈGLEMENT CITÉ" value="legislation"/>
        <ext:reference key="STATUTES, RULES AND REGULATIONS CITED" value="legislation"/>
        <ext:reference key="Autorités consultées:" value="consideredcases"/>
        <ext:reference key="AUTORITÉS CONSULTÉES" value="consideredcases"/>
        <ext:reference key="Autorités citées par la requérante:" value="consideredcases"/>
        <ext:reference key="Autres autorités consultées" value="consideredcases"/>
        <ext:reference key="Case Authorities Referred to" value="consideredcases"/>
        <ext:reference key="Liste des autorités citées" value="consideredcases"/>
        <ext:reference key="JURISPRUDENCE CITÉE" value="consideredcases"/>
        <ext:reference key="Doctrine et jurisprudence :" value="consideredcases"/>
        <ext:reference key="Cases referred to" value="consideredcases"/>
        <ext:reference key="LEGISLATION:" value="legislation"/> 
        </ext:references>
    </xsl:variable>
</xsl:stylesheet>