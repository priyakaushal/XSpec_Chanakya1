<?xml version="1.0" encoding="UTF-8"?>
<!-- 
NOTE: THIS IS A MODIFIED VERSION OF XSLT-to-XSL.xsl.
-->

<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:xs="http://www.w3.org/2001/XMLSchema"
  xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
  xmlns:cm="urn:x-lexisnexis:configuration-management:1"
  xmlns:xsltdoc="http://www.lexisnexis.com/xmlstylesheets/documentation/xslt-documentation/1/"
  xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl" exclude-result-prefixes="dita cm xs xd">

  <xsl:output exclude-result-prefixes="#all" method="xml" encoding="UTF-8" indent="yes"/>
  <xsl:strip-space elements="*"/>


  <xsl:template match="xsl:stylesheet">

    <xsl:variable name="allNamespaces" as="element()">

      <xsl:element name="cm:namespaces" namespace="urn:x-lexisnexis:configuration-management:1">

        <!--  namespace elements will be created for every in-scope namespace  -->

        <xsl:apply-templates select="*" mode="getNS"/>
        <!--  only need to deal with element children  -->

      </xsl:element>

    </xsl:variable>

    <xsl:variable name="allPrefixesToExclude" as="xs:string+">
      <!--xsl:value-of select="tokenize( @exclude-result-prefixes , ' ' )" separator=" "/-->
      <xsl:sequence select="tokenize( @exclude-result-prefixes , ' ' )"/>

      <xsl:for-each select="xsl:include | xsl:import">
        <xsl:for-each select="document(@href)">
          <xsl:apply-templates select="xsl:stylesheet" mode="getPrefixes"/>
          <!--  only need to deal with xsl:stylesheet  -->
        </xsl:for-each>
      </xsl:for-each>
    </xsl:variable>

    <xsl:copy>
      <xsl:copy-of select="@* except @exclude-result-prefixes"/>
      <xsl:attribute name="exclude-result-prefixes"
        select="if (contains( string-join( $allPrefixesToExclude , '' ) , '#all' )) then '#all' else distinct-values( $allPrefixesToExclude[.] )"/>
      <xsl:for-each select="xsl:output">
        <xsl:copy>
          <xsl:apply-templates select="@* | text()"/>
        </xsl:copy>
      </xsl:for-each>
      <xsl:apply-templates select="xsltdoc:*"/>
      <xsl:apply-templates
        select="*[not(local-name()='output')]
										[not(namespace-uri()='http://www.lexisnexis.com/xmlstylesheets/documentation/xslt-documentation/1/')]
										[not(local-name()='import')][not(local-name()='include')]">
        <xsl:with-param name="priority" select="'10'"/>
      </xsl:apply-templates>
      <xsl:apply-templates select="xsl:import | xsl:include"/>
    </xsl:copy>
  </xsl:template>

  <xsl:template match="xsl:output"><!-- don't copy xsl:output elements except as explicitly done on root --></xsl:template>

  <xsl:template match="processing-instruction()"/>

  <xsl:template match="xsl:stylesheet" mode="getPrefixes">

    <xsl:sequence select="tokenize( @exclude-result-prefixes , ' ' )"/>

    <xsl:for-each select="xsl:include | xsl:import">
      <xsl:for-each select="document(@href)">
        <xsl:apply-templates select="xsl:stylesheet" mode="getPrefixes"/>
        <!--  only need to deal with xsl:stylesheet  -->
      </xsl:for-each>
    </xsl:for-each>

  </xsl:template>

  <xsl:template match="cm:* | comment()" priority="1"/>

  <xsl:template match="*" mode="getNS">

    <xsl:variable name="currentElement" as="element()" select="."/>
    <!--  save current element node for later use  -->

    <xsl:for-each select="in-scope-prefixes(.)">
      <!--  loop through all ns prefixes in scope for this element  -->

      <xsl:variable name="currentPrefix" as="xs:string" select="."/>
      <!--  output a namespace node for every in-scope prefix  -->
      <!--xsl:namespace name="{$currentPrefix}" select="namespace-uri-for-prefix( $currentPrefix , $currentElement )"/-->

      <cm:namespace>
        <cm:uri>
          <xsl:sequence select="namespace-uri-for-prefix( $currentPrefix , $currentElement )"/>
        </cm:uri>
        <cm:prefixused>
          <xsl:sequence select="$currentPrefix"/>
        </cm:prefixused>
      </cm:namespace>

    </xsl:for-each>

    <xsl:apply-templates select="*" mode="getNS"/>
    <!--  only need to deal with element children  -->

  </xsl:template>

  <xsl:template match="xsl:include | xsl:import" mode="getNS">
    <xsl:for-each select="document(@href)">
      <xsl:apply-templates select="*" mode="getNS"/>
      <!--  only need to deal with element children  -->
    </xsl:for-each>
  </xsl:template>

  <xsl:template match="xsl:include | xsl:import">
    <xsl:for-each select="document(@href)">
      <xsl:apply-templates select="xsl:stylesheet/*"/>
    </xsl:for-each>
  </xsl:template>

  <!-- IdentityTransform -->
  <xsl:template match="@* | *">
    <xsl:param name="priority"/>
    <xsl:if test="self::xsl:template">
      <xsl:value-of select="'&#xA;'"/>
      <xsl:text>  </xsl:text>
    </xsl:if>
    <xsl:copy>
      <xsl:apply-templates select="@*"/>
      <xsl:if test="local-name()='template' and @match and $priority!=''">
        <xsl:attribute name="priority" select="$priority"/>
      </xsl:if>
      <xsl:apply-templates select="* | text()"/>
    </xsl:copy>
    <xsl:if test="self::xsl:template">
      <xsl:value-of select="'&#xA;'"/>
    </xsl:if>
  </xsl:template>

</xsl:stylesheet>
