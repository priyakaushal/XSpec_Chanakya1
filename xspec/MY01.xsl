<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                xmlns:test="http://www.jenitennison.com/xslt/unit-test"
                xmlns:x="http://www.jenitennison.com/xslt/xspec"
                xmlns:__x="http://www.w3.org/1999/XSL/TransformAliasAlias"
                xmlns:pkg="http://expath.org/ns/pkg"
                xmlns:impl="urn:x-xspec:compile:xslt:impl"
                xmlns:admindoc="urn:x-lexisnexis:content:administrative-document:sharedservices:1"
                xmlns:annot="http://www.lexisnexis.com/xmlschemas/content/shared/annotations/1/"
                xmlns:base="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"
                xmlns:case="http://www.lexis-nexis.com/glp/case"
                xmlns:case2="http://www.lexisnexis.com/xmlschemas/content/legal/case/1/"
                xmlns:casedigest="http://www.lexisnexis.com/xmlschemas/content/legal/case-digest/1/"
                xmlns:casehist="http://www.lexisnexis.com/xmlschemas/content/legal/case-history/1/"
                xmlns:caseinfo="http://www.lexisnexis.com/xmlschemas/content/legal/case-information/1/"
                xmlns:casesum="http://www.lexisnexis.com/xmlschemas/content/legal/case-summary/1/"
                xmlns:ci="http://www.lexis-nexis.com/ci"
                xmlns:classify="http://www.lexisnexis.com/xmlschemas/content/shared/classification/1/"
                xmlns:comm="http://www.lexis-nexis.com/glp/comm"
                xmlns:contact="http://www.lexisnexis.com/xmlschemas/content/shared/contact/1/"
                xmlns:courtcase="http://www.lexisnexis.com/xmlschemas/content/legal/courtcase/1/"
                xmlns:courtfiling="http://www.lexisnexis.com/xmlschemas/content/legal/courtfiling/1/"
                xmlns:dc="http://purl.org/dc/elements/1.1/"
                xmlns:decision="http://www.lexisnexis.com/xmlschemas/content/legal/decision/1/"
                xmlns:dig="http://www.lexis-nexis.com/glp/dig"
                xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
                xmlns:ditaarch="http://dita.oasis-open.org/architecture/2005/"
                xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/"
                xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo"
                xmlns:entity="http://www.lexisnexis.com/xmlschemas/content/shared/identified-entities/1/"
                xmlns:error="urn:x-lexisnexis:conversion:global:error:1"
                xmlns:ext="http://exslt.org/common"
                xmlns:form="http://www.lexisnexis.com/xmlschemas/content/shared/form/1/"
                xmlns:frm="http://www.lexis-nexis.com/glp/frm"
                xmlns:glp="http://www.lexis-nexis.com/glp"
                xmlns:guid="urn:x-lexisnexis:content:guid:global:1"
                xmlns:in="http://www.lexis-nexis.com/glp/in"
                xmlns:index="urn:x-lexisnexis:content:publicationindex:sharedservices:1"
                xmlns:jrnl="http://www.lexis-nexis.com/glp/jrnl"
                xmlns:jurisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/jurisdiction-info/1/"
                xmlns:leg="http://www.lexis-nexis.com/glp/leg"
                xmlns:legisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/legislation-info/1/"
                xmlns:lnci="http://www.lexisnexis.com/xmlschemas/content/shared/citations/1/"
                xmlns:lncr="http://www.lexis-nexis.com/lncr"
                xmlns:lnf="urn:x-lexisnexis:conversion:global:functions:1"
                xmlns:lnmeta="http://www.lexisnexis.com/xmlschemas/content/shared/lexisnexis-metadata/1/"
                xmlns:lnv="http://www.lexis-nexis.com/lnv"
                xmlns:lnvxe="http://www.lexis-nexis.com/lnvxe"
                xmlns:location="http://www.lexisnexis.com/xmlschemas/content/shared/location/1/"
                xmlns:nitf="http://iptc.org/std/NITF/2006-10-18/"
                xmlns:person="http://www.lexisnexis.com/xmlschemas/content/shared/person/1/"
                xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/"
                xmlns:primlawhist="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-history/1/"
                xmlns:primlawinfo="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-info/1/"
                xmlns:proc="http://www.lexisnexis.com/xmlschemas/content/shared/process-elements/1/"
                xmlns:pubfm="http://www.lexisnexis.com/xmlschemas/content/shared/publication-front-matter/1/"
                xmlns:pubinfo="http://www.lexisnexis.com/xmlschemas/content/shared/publication-info/1/"
                xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/"
                xmlns:seclaw="http://www.lexisnexis.com/xmlschemas/content/legal/secondary-law/1/"
                xmlns:shared_legisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/legisinfo/1/"
                xmlns:source_cttr="http://www.lexis-nexis.com/glp/cttr"
                xmlns:source_dict="http://www.lexis-nexis.com/glp/dict"
                xmlns:source_docinfo="http://www.lexis-nexis.com/glp/docinfo"
                version="2.0"
                exclude-result-prefixes="pkg impl">
   <xsl:import href="file:/C:/xspec/xspec_poc/MY01_Rosetta_CASEDOC-to-LxAdv_courtcase.xsl"/>
   <xsl:import href="file:/C:/Users/kaushapx/AppData/Roaming/com.oxygenxml.developer/extensions/v18.1/frameworks/http___raw.githubusercontent.com_AlexJitianu_oXygen_XML_editor_xspec_support_master_build_update_site.xml/xspec/src/compiler/generate-tests-utils.xsl"/>
   <xsl:namespace-alias stylesheet-prefix="__x" result-prefix="xsl"/>
   <xsl:variable name="x:stylesheet-uri"
                 as="xs:string"
                 select="'file:/C:/xspec/xspec_poc/MY01_Rosetta_CASEDOC-to-LxAdv_courtcase.xsl'"/>
   <xsl:output name="x:report" method="xml" indent="yes"/>
   <xsl:template name="x:main">
      <xsl:message>
         <xsl:text>Testing with </xsl:text>
         <xsl:value-of select="system-property('xsl:product-name')"/>
         <xsl:text> </xsl:text>
         <xsl:value-of select="system-property('xsl:product-version')"/>
      </xsl:message>
      <xsl:result-document format="x:report">
         <xsl:processing-instruction name="xml-stylesheet">type="text/xsl" href="file:/C:/Users/kaushapx/AppData/Roaming/com.oxygenxml.developer/extensions/v18.1/frameworks/http___raw.githubusercontent.com_AlexJitianu_oXygen_XML_editor_xspec_support_master_build_update_site.xml/xspec/src/compiler/format-xspec-report.xsl"</xsl:processing-instruction>
         <x:report stylesheet="{$x:stylesheet-uri}" date="{current-dateTime()}">
            <xsl:call-template name="x:d5e2"/>
            <xsl:call-template name="x:d5e5"/>
            <xsl:call-template name="x:d5e13"/>
            <xsl:call-template name="x:d5e19"/>
            <xsl:call-template name="x:d5e32"/>
         </x:report>
      </xsl:result-document>
   </xsl:template>
   <xsl:template name="x:d5e2">
      <xsl:message>Scenario for 4.1 case:headnote</xsl:message>
      <x:scenario source="file:/C:/xspec/xspec_poc/MY01.xspec">
         <x:label>Scenario for 4.1 case:headnote </x:label>
         <x:context href="file:/C:/xspec/xspec_poc/mlj1997_1_0145.xml"/>
         <xsl:variable name="x:result" as="item()*">
            <xsl:variable name="impl:context-doc"
                          as="document-node()"
                          select="doc('file:/C:/xspec/xspec_poc/mlj1997_1_0145.xml')"/>
            <xsl:variable name="impl:context" select="$impl:context-doc"/>
            <xsl:apply-templates select="$impl:context"/>
         </xsl:variable>
         <xsl:call-template name="test:report-value">
            <xsl:with-param name="value" select="$x:result"/>
            <xsl:with-param name="wrapper-name" select="'x:result'"/>
            <xsl:with-param name="wrapper-ns" select="'http://www.jenitennison.com/xslt/xspec'"/>
         </xsl:call-template>
         <xsl:call-template name="x:d5e4">
            <xsl:with-param name="x:result" select="$x:result"/>
         </xsl:call-template>
      </x:scenario>
   </xsl:template>
   <xsl:template name="x:d5e4">
      <xsl:param name="x:result" required="yes"/>
      <xsl:message>case:headnote becomes courtcase:courtcase/courtcase:head</xsl:message>
      <xsl:variable name="impl:expected" select="()"/>
      <xsl:variable name="impl:test-items" as="item()*">
         <xsl:choose>
            <xsl:when test="$x:result instance of node()+">
               <xsl:document>
                  <xsl:copy-of select="$x:result"/>
               </xsl:document>
            </xsl:when>
            <xsl:otherwise>
               <xsl:sequence select="$x:result"/>
            </xsl:otherwise>
         </xsl:choose>
      </xsl:variable>
      <xsl:variable name="impl:test-result" as="item()*">
         <xsl:choose>
            <xsl:when test="count($impl:test-items) eq 1">
               <xsl:for-each select="$impl:test-items">
                  <xsl:sequence select="/courtcase:courtcase/courtcase:head/text()" version="2"/>
               </xsl:for-each>
            </xsl:when>
            <xsl:otherwise>
               <xsl:sequence select="/courtcase:courtcase/courtcase:head/text()" version="2"/>
            </xsl:otherwise>
         </xsl:choose>
      </xsl:variable>
      <xsl:variable name="impl:boolean-test"
                    as="xs:boolean"
                    select="$impl:test-result instance of xs:boolean"/>
      <xsl:variable name="impl:successful"
                    as="xs:boolean"
                    select="if ($impl:boolean-test) then $impl:test-result cast as xs:boolean                     else test:deep-equal($impl:expected, $impl:test-result, 2)"/>
      <xsl:if test="not($impl:successful)">
         <xsl:message>      FAILED</xsl:message>
      </xsl:if>
      <x:test successful="{$impl:successful}">
         <x:label>case:headnote becomes courtcase:courtcase/courtcase:head </x:label>
         <xsl:if test="not($impl:boolean-test)">
            <xsl:call-template name="test:report-value">
               <xsl:with-param name="value" select="$impl:test-result"/>
               <xsl:with-param name="wrapper-name" select="'x:result'"/>
               <xsl:with-param name="wrapper-ns" select="'http://www.jenitennison.com/xslt/xspec'"/>
            </xsl:call-template>
         </xsl:if>
         <xsl:call-template name="test:report-value">
            <xsl:with-param name="value" select="$impl:expected"/>
            <xsl:with-param name="wrapper-name" select="'x:expect'"/>
            <xsl:with-param name="wrapper-ns" select="'http://www.jenitennison.com/xslt/xspec'"/>
         </xsl:call-template>
      </x:test>
   </xsl:template>
   <xsl:template name="x:d5e5">
      <xsl:message>Scenario for 4.4. case:casename</xsl:message>
      <x:scenario source="file:/C:/xspec/xspec_poc/MY01.xspec">
         <x:label>Scenario for 4.4. case:casename</x:label>
         <x:context>
            <case:casename>
               <xsl:text>PUBLIC PROSECUTOR v ANG BENG HOCK</xsl:text>
            </case:casename>
         </x:context>
         <xsl:variable name="x:result" as="item()*">
            <xsl:variable name="impl:context-doc" as="document-node()">
               <xsl:document>
                  <case:casename>
                     <xsl:text>PUBLIC PROSECUTOR v ANG BENG HOCK</xsl:text>
                  </case:casename>
               </xsl:document>
            </xsl:variable>
            <xsl:variable name="impl:context" select="$impl:context-doc/node()"/>
            <xsl:apply-templates select="$impl:context"/>
         </xsl:variable>
         <xsl:call-template name="test:report-value">
            <xsl:with-param name="value" select="$x:result"/>
            <xsl:with-param name="wrapper-name" select="'x:result'"/>
            <xsl:with-param name="wrapper-ns" select="'http://www.jenitennison.com/xslt/xspec'"/>
         </xsl:call-template>
         <xsl:call-template name="x:d5e9">
            <xsl:with-param name="x:result" select="$x:result"/>
         </xsl:call-template>
      </x:scenario>
   </xsl:template>
   <xsl:template name="x:d5e9">
      <xsl:param name="x:result" required="yes"/>
      <xsl:message>case:casename becomes caseinfo:casename/caseinfo:fullcasename.</xsl:message>
      <xsl:variable name="impl:expected-doc" as="document-node()">
         <xsl:document>
            <caseinfo:casename>
               <caseinfo:fullcasename>
                  <xsl:text>PUBLIC PROSECUTOR v ANG BENG HOCK</xsl:text>
               </caseinfo:fullcasename>
            </caseinfo:casename>
         </xsl:document>
      </xsl:variable>
      <xsl:variable name="impl:expected" select="$impl:expected-doc/node()"/>
      <xsl:variable name="impl:successful"
                    as="xs:boolean"
                    select="test:deep-equal($impl:expected, $x:result, 2)"/>
      <xsl:if test="not($impl:successful)">
         <xsl:message>      FAILED</xsl:message>
      </xsl:if>
      <x:test successful="{$impl:successful}">
         <x:label>case:casename becomes caseinfo:casename/caseinfo:fullcasename.</x:label>
         <xsl:call-template name="test:report-value">
            <xsl:with-param name="value" select="$impl:expected"/>
            <xsl:with-param name="wrapper-name" select="'x:expect'"/>
            <xsl:with-param name="wrapper-ns" select="'http://www.jenitennison.com/xslt/xspec'"/>
         </xsl:call-template>
      </x:test>
   </xsl:template>
   <xsl:template name="x:d5e13">
      <xsl:message>Scenario for 4.2. case:length</xsl:message>
      <x:scenario source="file:/C:/xspec/xspec_poc/MY01.xspec">
         <x:label>Scenario for 4.2. case:length</x:label>
         <x:context>
            <case:length>
               <xsl:text>2 pages</xsl:text>
            </case:length>
         </x:context>
         <xsl:variable name="x:result" as="item()*">
            <xsl:variable name="impl:context-doc" as="document-node()">
               <xsl:document>
                  <case:length>
                     <xsl:text>2 pages</xsl:text>
                  </case:length>
               </xsl:document>
            </xsl:variable>
            <xsl:variable name="impl:context" select="$impl:context-doc/node()"/>
            <xsl:apply-templates select="$impl:context"/>
         </xsl:variable>
         <xsl:call-template name="test:report-value">
            <xsl:with-param name="value" select="$x:result"/>
            <xsl:with-param name="wrapper-name" select="'x:result'"/>
            <xsl:with-param name="wrapper-ns" select="'http://www.jenitennison.com/xslt/xspec'"/>
         </xsl:call-template>
         <xsl:call-template name="x:d5e17">
            <xsl:with-param name="x:result" select="$x:result"/>
         </xsl:call-template>
      </x:scenario>
   </xsl:template>
   <xsl:template name="x:d5e17">
      <xsl:param name="x:result" required="yes"/>
      <xsl:message>case:length becomes doc:metadata/doc:docinfo/doc:doclength. The attributes of doc:doclength are populated as follows: &#x2022; doc:doclength/@num is populated with the numeric content in case:length. &#x2022; doc:doclength/@unit is populated with the textual content in case:length. &#x2022; doc:doclength/@source is populated with the value conversion.</xsl:message>
      <xsl:variable name="impl:expected-doc" as="document-node()">
         <xsl:document>
            <doc:doclength num="2" unit="pages" source="conversion"/>
         </xsl:document>
      </xsl:variable>
      <xsl:variable name="impl:expected" select="$impl:expected-doc/node()"/>
      <xsl:variable name="impl:successful"
                    as="xs:boolean"
                    select="test:deep-equal($impl:expected, $x:result, 2)"/>
      <xsl:if test="not($impl:successful)">
         <xsl:message>      FAILED</xsl:message>
      </xsl:if>
      <x:test successful="{$impl:successful}">
         <x:label>case:length becomes doc:metadata/doc:docinfo/doc:doclength. The attributes of doc:doclength are populated as follows:             &#x2022; doc:doclength/@num is populated with the numeric content in case:length.             &#x2022; doc:doclength/@unit is populated with the textual content in case:length.             &#x2022; doc:doclength/@source is populated with the value conversion.</x:label>
         <xsl:call-template name="test:report-value">
            <xsl:with-param name="value" select="$impl:expected"/>
            <xsl:with-param name="wrapper-name" select="'x:expect'"/>
            <xsl:with-param name="wrapper-ns" select="'http://www.jenitennison.com/xslt/xspec'"/>
         </xsl:call-template>
      </x:test>
   </xsl:template>
   <xsl:template name="x:d5e19">
      <xsl:message>Scenario for 4.5. case:altname</xsl:message>
      <x:scenario source="file:/C:/xspec/xspec_poc/MY01.xspec">
         <x:label>Scenario for 4.5. case:altname</x:label>
         <x:context>
            <case:info>
               <case:casename>
                  <xsl:text>ELECON AUSTRALIA PTY LTD v BREVINI AUSTRALIA PTY LTD (NSD 1423 of
                    2004)</xsl:text>
               </case:casename>
               <case:altname>
                  <xsl:text>PIV DRIVES GMBH and Another v ELECON AUSTRALIA PTY LTD and Others (NSD 1955
                    of
                    2004)</xsl:text>
               </case:altname>
            </case:info>
         </x:context>
         <xsl:variable name="x:result" as="item()*">
            <xsl:variable name="impl:context-doc" as="document-node()">
               <xsl:document>
                  <case:info>
                     <case:casename>
                        <xsl:text>ELECON AUSTRALIA PTY LTD v BREVINI AUSTRALIA PTY LTD (NSD 1423 of
                    2004)</xsl:text>
                     </case:casename>
                     <case:altname>
                        <xsl:text>PIV DRIVES GMBH and Another v ELECON AUSTRALIA PTY LTD and Others (NSD 1955
                    of
                    2004)</xsl:text>
                     </case:altname>
                  </case:info>
               </xsl:document>
            </xsl:variable>
            <xsl:variable name="impl:context" select="$impl:context-doc/node()"/>
            <xsl:apply-templates select="$impl:context"/>
         </xsl:variable>
         <xsl:call-template name="test:report-value">
            <xsl:with-param name="value" select="$x:result"/>
            <xsl:with-param name="wrapper-name" select="'x:result'"/>
            <xsl:with-param name="wrapper-ns" select="'http://www.jenitennison.com/xslt/xspec'"/>
         </xsl:call-template>
         <xsl:call-template name="x:d5e26">
            <xsl:with-param name="x:result" select="$x:result"/>
         </xsl:call-template>
      </x:scenario>
   </xsl:template>
   <xsl:template name="x:d5e26">
      <xsl:param name="x:result" required="yes"/>
      <xsl:message>case:altname becomes caseinfo:caseinfo/caseinfo:alternatecasename.</xsl:message>
      <xsl:variable name="impl:expected-doc" as="document-node()">
         <xsl:document>
            <caseinfo:casename>
               <caseinfo:fullcasename>
                  <xsl:text>ELECON AUSTRALIA PTY LTD v BREVINI AUSTRALIA PTY LTD (NSD 1423 of
                    2004)</xsl:text>
               </caseinfo:fullcasename>
            </caseinfo:casename>
            <caseinfo:alternatecasename>
               <xsl:text>PIV DRIVES GMBH and Another v ELECON AUSTRALIA PTY LTD and Others (NSD 1955
                    of
                    2004)</xsl:text>
            </caseinfo:alternatecasename>
         </xsl:document>
      </xsl:variable>
      <xsl:variable name="impl:expected" select="$impl:expected-doc/node()"/>
      <xsl:variable name="impl:successful"
                    as="xs:boolean"
                    select="test:deep-equal($impl:expected, $x:result, 2)"/>
      <xsl:if test="not($impl:successful)">
         <xsl:message>      FAILED</xsl:message>
      </xsl:if>
      <x:test successful="{$impl:successful}">
         <x:label>case:altname becomes caseinfo:caseinfo/caseinfo:alternatecasename.</x:label>
         <xsl:call-template name="test:report-value">
            <xsl:with-param name="value" select="$impl:expected"/>
            <xsl:with-param name="wrapper-name" select="'x:expect'"/>
            <xsl:with-param name="wrapper-ns" select="'http://www.jenitennison.com/xslt/xspec'"/>
         </xsl:call-template>
      </x:test>
   </xsl:template>
   <xsl:template name="x:d5e32">
      <xsl:message>Scenario for 4.6. case:reportercite</xsl:message>
      <x:scenario source="file:/C:/xspec/xspec_poc/MY01.xspec">
         <x:label>Scenario for 4.6. case:reportercite</x:label>
         <x:context href="file:/C:/xspec/xspec_poc/mlj1997_1_0145.xml"
                    select="/CASEDOC/case:body[1]/case:headnote[1]/case:info[1]/case:reportercite[1]"/>
         <xsl:variable name="x:result" as="item()*">
            <xsl:variable name="impl:context-doc"
                          as="document-node()"
                          select="doc('file:/C:/xspec/xspec_poc/mlj1997_1_0145.xml')"/>
            <xsl:variable name="impl:context"
                          select="$impl:context-doc/(/CASEDOC/case:body[1]/case:headnote[1]/case:info[1]/case:reportercite[1])"/>
            <xsl:apply-templates select="$impl:context"/>
         </xsl:variable>
         <xsl:call-template name="test:report-value">
            <xsl:with-param name="value" select="$x:result"/>
            <xsl:with-param name="wrapper-name" select="'x:result'"/>
            <xsl:with-param name="wrapper-ns" select="'http://www.jenitennison.com/xslt/xspec'"/>
         </xsl:call-template>
         <xsl:call-template name="x:d5e34">
            <xsl:with-param name="x:result" select="$x:result"/>
         </xsl:call-template>
      </x:scenario>
   </xsl:template>
   <xsl:template name="x:d5e34">
      <xsl:param name="x:result" required="yes"/>
      <xsl:message/>
      <xsl:variable name="impl:expected-doc" as="document-node()">
         <xsl:document>
            <ref:citations>
               <ref:cite4thisresource citetype="reporter">
                  <lnci:cite>
                     <lnci:case>
                        <lnci:caseinfo>
                           <lnci:decisiondate year="1997"/>
                        </lnci:caseinfo>
                        <lnci:caseref>
                           <lnci:reporter value="MLJ"/>
                           <lnci:volume num="1"/>
                           <lnci:edition>
                              <lnci:date year="1997"/>
                           </lnci:edition>
                           <lnci:page num="145"/>
                        </lnci:caseref>
                     </lnci:case>
                     <lnci:content>
                        <xsl:text>   [1997] 1 MLJ 145  </xsl:text>
                     </lnci:content>
                  </lnci:cite>
               </ref:cite4thisresource>
            </ref:citations>
         </xsl:document>
      </xsl:variable>
      <xsl:variable name="impl:expected" select="$impl:expected-doc/node()"/>
      <xsl:variable name="impl:successful"
                    as="xs:boolean"
                    select="test:deep-equal($impl:expected, $x:result, 2)"/>
      <xsl:if test="not($impl:successful)">
         <xsl:message>      FAILED</xsl:message>
      </xsl:if>
      <x:test successful="{$impl:successful}">
         <x:label/>
         <xsl:call-template name="test:report-value">
            <xsl:with-param name="value" select="$impl:expected"/>
            <xsl:with-param name="wrapper-name" select="'x:expect'"/>
            <xsl:with-param name="wrapper-ns" select="'http://www.jenitennison.com/xslt/xspec'"/>
         </xsl:call-template>
      </x:test>
   </xsl:template>
</xsl:stylesheet>
