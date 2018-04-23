<?xml version="1.0" encoding="UTF-8"?>
<!-- Awantika : Applicable for Canada streams only: 
    Created this sheet in order to match the unique values of case:references with the corresponding values which will act as the attribute value for ref:relatedref/@referencetype -->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
    xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"
    xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/"
    xmlns:case="http://www.lexis-nexis.com/glp/case"
    exclude-result-prefixes="xs dita case"
    version="2.0">
    
    <xsl:variable name="references">
        <dita:references>
        <dita:reference key="Articles cited:" value="consideredcases"/>
        <dita:reference key="Authorities Cited:" value="consideredcases"/>
        <dita:reference key="Authorities cited:" value="consideredcases"/>
        <dita:reference key="Authorities Considered:" value="consideredcases"/>
        <dita:reference key="Authors and Works cited:" value="consideredcases"/>
        <dita:reference key="AUTHORS AND WORKS JUDICIALLY NOTICED:" value="consideredcases"/>
        <dita:reference key="AUTHORS AND WORKS NOTICED:" value="consideredcases"/>
        <dita:reference key="Authors and Works Noticed:" value="consideredcases"/>
        <dita:reference key="Authors Cited" value="consideredcases"/>
        <dita:reference key="Authors cited" value="consideredcases"/>
        <dita:reference key="Autorité citée :" value="consideredcases"/>
        <dita:reference key="Autorités :" value="consideredcases"/>
        <dita:reference key="Autorités citées :" value="consideredcases"/>
        <dita:reference key="CASE CITED:" value="consideredcases"/>
        <dita:reference key="Cases Cited" value="consideredcases"/>
        <dita:reference key="CASES CITED:" value="consideredcases"/>
        <dita:reference key="Cases Cited:" value="consideredcases"/>
        <dita:reference key="Cases cited:" value="consideredcases"/>
        <dita:reference key="Cases Considered:" value="consideredcases"/>
        <dita:reference key="CASES JUDICIALLY CONSIDERED" value="consideredcases"/>
        <dita:reference key="Cases Judicially Considered" value="consideredcases"/>
        <dita:reference key="CASES JUDICIALLY NOTICED:" value="consideredcases"/>
        <dita:reference key="CASES NOTICED:" value="consideredcases"/>
        <dita:reference key="Cases Noticed:" value="consideredcases"/>
        <dita:reference key="Décision citée :" value="consideredcases"/>
        <dita:reference key="Décisions citées :" value="consideredcases"/>
        <dita:reference key="DOCTRINE" value="consideredcases"/>
        <dita:reference key="Doctrine" value="consideredcases"/>
        <dita:reference key="Doctrine citée" value="consideredcases"/>
        <dita:reference key="JURISPRUDENCE" value="consideredcases"/>
        <dita:reference key="Jurisprudence" value="consideredcases"/>
        <dita:reference key="Jurisprudence citée" value="consideredcases"/>
        <dita:reference key="Jurisprudence citée :" value="consideredcases"/>
        <dita:reference key="Jurisprudence consultée :" value="consideredcases"/>
        <dita:reference key="Législation citée :" value="legislation"/>
        <dita:reference key="Lois et règlements" value="legislation"/>
        <dita:reference key="Lois et règlements cités" value="legislation"/>
        <dita:reference key="MISCELLANEOUS WORKS CITED:" value="consideredcases"/>
        <dita:reference key="Statutes and Regulations Cited" value="legislation"/>
        <dita:reference key="STATUTES AND REGULATIONS CITED:" value="legislation"/>
        <dita:reference key="Statutes and Regulations cited:" value="legislation"/>
        <dita:reference key="Statutes and Regulations Judicially Considered" value="legislation"/>
        <dita:reference key="Statutes Cited:" value="legislation"/>
        <dita:reference key="Statutes cited:" value="legislation"/>
        <dita:reference key="STATUTES JUDICIALLY NOTICED:" value="legislation"/>
        <dita:reference key="STATUTES NOTICED:" value="legislation"/>
        <dita:reference key="Statutes Noticed:" value="legislation"/>
        <dita:reference key="Statutes, Regulations and Rule Cited:" value="legislation"/>
        <dita:reference key="Statutes, Regulations and Rules cited" value="legislation"/>
        <dita:reference key="STATUTES, REGULATIONS AND RULES CITED:" value="legislation"/>
        <dita:reference key="Statutes, Regulations and Rules Cited:" value="legislation"/>
        <dita:reference key="Authorities Cited" value="consideredcases"/>
        <dita:reference key="Authors Cited" value="consideredcases"/>
        <dita:reference key="Cases and texts cited" value="consideredcases"/>
        <dita:reference key="CASES CITED" value="consideredcases"/>
        <dita:reference key="Cases Cited" value="consideredcases"/>
        <dita:reference key="Cases cited" value="consideredcases"/>
        <dita:reference key="Doctrine citée" value="consideredcases"/>
        <dita:reference key="Jurisprudence" value="consideredcases"/>
        <dita:reference key="Législation citée" value="legislation"/>
        <dita:reference key="Lois et règlements cités" value="legislation"/>
        <dita:reference key="MISCELLANEOUS WORKS CITED" value="consideredcases"/>
        <dita:reference key="Statutes and Regulations Cited" value="legislation"/>
        <dita:reference key="Statutes cited" value="legislation"/>
        <dita:reference key="STATUTES, REGULATIONS AND RULES CITED" value="legislation"/>
        <dita:reference key="Statutes, Regulations and Rules Cited" value="legislation"/>
        <dita:reference key="Statutes, Regulations and Rules cited" value="legislation"/>
        <dita:reference key="Législation citée:" value="legislation"/>
        <dita:reference key="JURISPRUDENCE CITÉE :" value="consideredcases"/>
        <dita:reference key="Affaire citée:" value="consideredcases"/>
        <dita:reference key="Affaires citées:" value="consideredcases"/>
        <dita:reference key="Affaires citées:" value="consideredcases"/>
        <dita:reference key="Authorities &amp; Texts:" value="consideredcases"/>
        <dita:reference key="Authorities" value="consideredcases"/>
        <dita:reference key="Autorités citées *" value="consideredcases"/>
        <dita:reference key="Autorités citées par l'appelante :" value="consideredcases"/>
        <dita:reference key="Autorités citées par l'intimé :" value="consideredcases"/>
        <dita:reference key="Autorités citées" value="consideredcases"/>
        <dita:reference key="Case Authorities and Texts:" value="consideredcases"/>
        <dita:reference key="Cases considered:" value="consideredcases"/>
        <dita:reference key="Cases referred to:" value="consideredcases"/>
        <dita:reference key="Dictionnaire cité :" value="consideredcases"/>
        <dita:reference key="Jurisprudence :" value="consideredcases"/>
        <dita:reference key="Jurisprudence :" value="consideredcases"/>
        <dita:reference key="JURISPRUDENCE DÉPOSÉE PAR L'INTIMÉE" value="consideredcases"/>
        <dita:reference key="Jurisprudence soumise" value="consideredcases"/>
        <dita:reference key="Jurisprudence:" value="consideredcases"/>
        <dita:reference key="Législation citée:" value="legislation"/>
        <dita:reference key="Liste de jurisprudence" value="legislation"/>
        <dita:reference key="Liste des jugements à l'appui:" value="consideredcases"/>
        <dita:reference key="LISTE DES JUGEMENTS À L'APPUI" value="consideredcases"/>
        <dita:reference key="Loi citée:" value="legislation"/>
        <dita:reference key="Lois citées:" value="legislation"/>
        <dita:reference key="Lois et règlements cités :" value="legislation"/>
        <dita:reference key="Par l'intimé :" value="consideredcases"/>
        <dita:reference key="Statutes considered:" value="legislation"/>
        <dita:reference key="Statutes Referred to:" value="legislation"/>
        <dita:reference key="Statutes referred to:" value="legislation"/>
        <dita:reference key="Tribunal decisions considered:" value="consideredcases"/>
        <dita:reference key="STATUTE AND REGULATION CITED" value="legislation"/>
        <dita:reference key="STATUTES AND REGULATION CITED" value="legislation"/>
        <dita:reference key="STATUTES AND REGULATION CITED:" value="legislation"/>
        <dita:reference key="REGULATION CITED" value="legislation"/>
        <dita:reference key="STATUTE CITED" value="legislation"/>
        <dita:reference key="Rules and Regulations considered" value="legislation"/>
        <dita:reference key="Lois, règlements et règles cités:" value="legislation"/>
        <dita:reference key="STATUTES, RULES AND REGULATIONS CITED" value="legislation"/>
        <dita:reference key="Rules cited" value="legislation"/>
        <dita:reference key="Regulations Cited" value="legislation"/>
        <dita:reference key="Lois et règlement cités" value="legislation"/>
        <dita:reference key="LOI ET RÈGLEMENT CITÉS" value="legislation"/>
        <dita:reference key="RÈGLEMENT CITÉ" value="legislation"/>
        <dita:reference key="STATUTES, RULES AND REGULATIONS CITED" value="legislation"/>
        <dita:reference key="Autorités consultées:" value="consideredcases"/>
        <dita:reference key="AUTORITÉS CONSULTÉES" value="consideredcases"/>
        <dita:reference key="Autorités citées par la requérante:" value="consideredcases"/>
        <dita:reference key="Autres autorités consultées" value="consideredcases"/>
        <dita:reference key="Case Authorities Referred to" value="consideredcases"/>
        <dita:reference key="Liste des autorités citées" value="consideredcases"/>
        <dita:reference key="JURISPRUDENCE CITÉE" value="consideredcases"/>
        <dita:reference key="Doctrine et jurisprudence :" value="consideredcases"/>
        <dita:reference key="Cases referred to" value="consideredcases"/>
        <dita:reference key="LEGISLATION:" value="legislation"/> 
        </dita:references>
    </xsl:variable>
    
   
    
    
    <xsl:template match="case:references">
        <xsl:variable name="title" select="heading/title"/>
                <ref:relatedrefs>
                    <xsl:attribute name="referencetype">
                        <xsl:value-of select="$references/dita:references/dita:reference[@key=$title]/@value"/>
                    </xsl:attribute>
                    <xsl:apply-templates select="@*"/>
                    <xsl:apply-templates select="heading"/>                   
                    <bodytext>          
                        <xsl:apply-templates select="node() except heading"/>
                    </bodytext>
                </ref:relatedrefs>
    </xsl:template>
    
    <xsl:template match="case:references/heading/title/text()">
        <xsl:choose>
            <xsl:when test="contains(.,' :')">
                <xsl:value-of select="replace(.,' :','')"/>
            </xsl:when>
            <xsl:otherwise>
                <xsl:value-of select="replace(.,':','')"/>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
</xsl:stylesheet>