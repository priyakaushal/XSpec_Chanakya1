<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
    xmlns:frm="http://www.lexis-nexis.com/glp/frm"
    xmlns:form="http://www.lexisnexis.com/xmlschemas/content/shared/form/1/"
    version="2.0"
    exclude-result-prefixes="dita frm">


    <!-- 20170525:  MCJ:  Forms module for Pacific regulations (AU06 and NZ05).  The AU06 instructions do not have a specific section on form handling so this
                    is created using CA09 as a start.  The AU06 instructions do have a few examples that suggest a partial implementation. -->

    <!-- MCJ:  Rosetta form becomes form:form. -->
    <xsl:template match="form">
        <form:form>
            <xsl:apply-templates select="@* | node()" />
        </form:form>
    </xsl:template>

    <!-- Each Rosetta form/bodytext becomes a form:bodytext within a new form:document. -->
    <xsl:template match="form/bodytext">
        <form:document annotated="false" official="true" typeofdoc="unnamed">
            <form:bodytext>
                <xsl:apply-templates select="node()" />
            </form:bodytext>
        </form:document>
    </xsl:template>
    
    <!-- form/bodytext/p becomes a form:p within the form:bodytext created elsewhere by the bodytext. -->
    <xsl:template match="form/bodytext/p">
        <form:p>
            <xsl:apply-templates />
        </form:p>
    </xsl:template>
    
    <!-- form/bodytext/p/text becomes form:text within the form:p created elsewhere by the form/bodytext/p. -->
    <!-- <xsl:template match="form/bodytext/p/text">
        <form:text>
            <xsl:apply-templates />
        </form:text>
    </xsl:template> -->

    <!-- MCJ:  Rosetta frm:body becomes form:document. -->
    <xsl:template match="frm:body">
        <form:document annotated="false" official="true" typeofdoc="unnamed">
            <form:bodytext>
                <xsl:apply-templates select="@* | node()"/>
            </form:bodytext>
        </form:document>
    </xsl:template>

    <!-- MCJ:  Rosetta frm:caption becomes form:caption. -->
    <xsl:template match="frm:caption">
        <form:caption>
            <xsl:apply-templates select="@* | node()"/>
        </form:caption>
    </xsl:template>

    <!-- MCJ:  Rosetta frm:braceblock becomes form:braceblock. -->
    <xsl:template match="frm:braceblock">
        <form:braceblock>
            <xsl:apply-templates select="@* | node()"/>
        </form:braceblock>
    </xsl:template>

    <!-- MCJ:  Rosetta frm:bracein becomes form:bracein. -->
    <xsl:template match="frm:bracein">
        <form:bracein>
            <xsl:apply-templates select="@* | node()"/>
        </form:bracein>
    </xsl:template>

    <!-- MCJ:  Rosetta frm:braceout becomes form:braceout. -->
    <xsl:template match="frm:braceout">
        <form:braceout>
            <xsl:apply-templates select="@* | node()"/>
        </form:braceout>
    </xsl:template>

    <xsl:template match="frm:bracein/p">
        <!--  Original Target XPath:  form:line   -->

        <xsl:apply-templates select="@* | node()"/>

    </xsl:template>

    <xsl:template match="frm:braceout/p">
        <!--  Original Target XPath:  form:line   -->

        <xsl:apply-templates select="@* | node()"/>

    </xsl:template>

    <xsl:template match="frm:bracein/p/text">
        <!--  Original Target XPath:  form:line   -->
        <form:line>
            <xsl:apply-templates select="@* | node()"/>
        </form:line>
    </xsl:template>

    <xsl:template match="frm:braceout/p/text">
        <!--  Original Target XPath:  form:line   -->
        <form:line>
            <xsl:apply-templates select="@* | node()"/>
        </form:line>
    </xsl:template>

</xsl:stylesheet>
