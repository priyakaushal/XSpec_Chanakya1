<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
    xmlns:leg="http://www.lexis-nexis.com/glp/leg"
    xmlns:glp="http://www.lexis-nexis.com/glp"
    xmlns:form="http://www.lexisnexis.com/xmlschemas/content/shared/form/1/"
    xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/" xmlns:admindoc="urn:x-lexisnexis:content:administrative-document:sharedservices:1" version="2.0"
    exclude-result-prefixes="dita leg admindoc form">

    <dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="legis-Body">
        <title>Body <lnpid>id-AU18-21416</lnpid></title>
        <shortdesc>All of the following are descendants of <targetxml>admindoc:body</targetxml>.
            Handle in document order unless specifically stated otherwise. Refer to General Markup
            Section for handling of children (including mixed content).</shortdesc>
        <body>
            <section>
                <title>legis:body</title>
                <p><sourcexml>leg:body</sourcexml> becomes <targetxml>admindoc:body</targetxml> and
                    child elements as described below: <ul id="ul_uhh_bcf_ji">
                        <li>
                            <sourcexml>leg:info/leg:officialname</sourcexml>
                            <b>becomes</b>
                            <targetxml>admindoc:body/admindoc:info/admindoc:officialtitle</targetxml>. <pre>
              <b><i>Example: Source XML 1</i></b>
                  

&lt;leg:info&gt;
&lt;leg:officialname searchtype="LEGISLATION"&gt;Building Code of Australia &amp;#x2014; Volume 1&lt;/leg:officialname&gt;
&lt;/leg:info&gt;
 
	</pre>
                            <pre>
                    
              <b><i>Example: Target XML 1</i></b>
                  

&lt;admindoc:body&gt;
  &lt;admindoc:info&gt;
    &lt;admindoc:officialtitle&gt;Building Code of Australia &amp;#x2014; Volume 1&lt;/admindoc:officialtitle&gt;
  &lt;/admindoc:info&gt;
&lt;/admindoc:body&gt;


                </pre>
                        </li>
                        <li>When <sourcexml>leg:officialname</sourcexml> has comes with attribute
                                <sourcexml>@ln.user-displayed="false"</sourcexml> then it
                                <b>becomes</b>
                            <targetxml>admindoc:info/admindoc:officialtitle[@source="editoriallyassigned"]</targetxml>.
                                <note>For handling <b>@ln.user-displayed</b> attribute, refer the
                                general markup <b>ln.user_displayed="false"</b> section in the
                                CI.</note>
                            <pre>  
                            
                            <b><i>Example: Source XML 1</i></b>
                            
              


&lt;leg:info&gt;
&lt;leg:officialname ln.user-displayed="false" searchtype="LEGISLATION"&gt;Building Code of Australia &amp;#x2014; Volume 1&lt;/leg:officialname&gt;
&lt;/leg:info&gt;

                  
	</pre>
                            <pre>

              <b><i>Example: Target XML 1</i></b>
                  

&lt;admindoc:info&gt;
      &lt;admindoc:officialtitle source="editoriallyassigned"&gt;Building Code of Australia &amp;#x2014; Volume 1&lt;/admindoc:officialtitle&gt;
&lt;/admindoc:info&gt;


	</pre>
                            <note>When <sourcexml>leg:officialname</sourcexml> element has attribute
                                    <sourcexml>@ln.user-displayed="false"</sourcexml> without any
                                text inside the source markup. It should be suppressed and not
                                converted into the output.</note>
                        </li>
                    </ul>
                    <ul>
                        <li><sourcexml>/LEGDOC/leg:body/leg:info/leg:officialnum</sourcexml>
                            <b>becomes</b>
                            <targetxml>/admindoc:admindoc/admindoc:body/admindoc:info/admindoc:officialnum</targetxml>.
                                <note>If
                                    <sourcexml>/LEGDOC/leg:body/leg:info/leg:officialnum</sourcexml>
                                has comes with attribute
                                    <sourcexml>@ln.user-displayed="false"</sourcexml> then it
                                    <b>becomes</b>
                                <targetxml>/admindoc:admindoc/admindoc:body/admindoc:info/admindoc:officialnum[@source="editoriallyassigned"]</targetxml>.</note>
                            <note>For handling <b>@ln.user-displayed</b> attribute, refer the
                                general markup <b>ln.user_displayed="false"</b> section in the
                                CI.</note>
                        </li>
                    </ul>
                    <pre>
            <b><i>Example: Source XML 1</i></b>
                  

&lt;leg:body&gt;
 &lt;leg:info&gt;
  &lt;leg:officialname ln.user-displayed="false" searchtype="LEGISLATION"&gt;HUMAN ASSISTED REPRODUCTIVE TECHNOLOGY (FEES) REGULATIONS 2005&lt;/leg:officialname&gt;
  &lt;leg:officialnum ln.user-displayed="false" searchtype="LEGISLATION"&gt;Act No. 210, 2005&lt;/leg:officialnum&gt;
 &lt;/leg:info&gt;
 &lt;!-- ETC. --&gt;
&lt;/leg:body&gt;

              </pre>
                    <pre>
            <b><i>Example: Target XML 1</i></b>
                  

&lt;admindoc:body&gt;
  &lt;admindoc:info&gt;
    &lt;admindoc:officialtitle source="editoriallyassigned"&gt;HUMAN ASSISTED REPRODUCTIVE TECHNOLOGY (FEES) REGULATIONS 2005&lt;/admindoc:officialtitle&gt;
    &lt;admindoc:officialnum source="editoriallyassigned"&gt;Act No. 210, 2005&lt;/admindoc:officialnum&gt;
  &lt;/admindoc:info&gt;
  &lt;!-- ETC. --&gt;
&lt;/admindoc:body&gt;

          </pre>
                    <note>When <sourcexml>leg:officialname</sourcexml> and
                            <sourcexml>leg:officialnum</sourcexml> element has attribute
                            <sourcexml>@ln.user-displayed="false"</sourcexml> without any text
                        inside the source markup. It should be suppressed and not converted into the
                        output.</note>
                    <ul>
                        <li>
                            <sourcexml>/LEGDOC/leg:body/leg:info/leg:status statuscode="historical"
                            </sourcexml> When these attributes with the following values
                                <sourcexml>[@statuscode="historical"]</sourcexml> are present the
                            mapping to admindoc <b>becomes</b>
                            <targetxml>admindoc:level/admindoc:levelinfo/admindoc:status[@statuscode="historical"]</targetxml>
                            <note>Include the <targetxml>@statuscode</targetxml> in element
                                    <targetxml>admindoc:status</targetxml> to represent final
                                disposition or for a more descriptive status explanation.</note>
                        </li>
                    </ul>
                </p>
                <ul id="ul_pjh_bcf_ji">
                    <li><sourcexml>bodytext</sourcexml>
                        <b>Becomes</b>
                        <targetxml>bodytext</targetxml>. <pre>
                 <b><i>Example: Source XML 1</i></b>

&lt;bodytext searchtype="COMMENTARY"&gt;
&lt;p&gt;
&lt;text&gt;This guidecard is presented in three Parts:&lt;/text&gt;&lt;/p&gt;
 &lt;!-- ETC. --&gt;
&lt;/bodytext&gt;

              </pre>
                        <pre>
                 <b><i>Example: Target XML 1</i></b>

&lt;bodytext&gt;
&lt;p&gt;
&lt;text&gt;This guidecard is presented in three Parts:&lt;/text&gt; &lt;/p&gt;
 &lt;!-- ETC. --&gt;
&lt;/bodytext&gt;

              </pre>
                    </li>
                </ul>
                <p>
                    <ul id="ul_vkh_bcf_ji">
                        <li><sourcexml>leg:levelbody</sourcexml> and
                                <sourcexml>leg:bodytext</sourcexml> comes in following scenarios:
                                <ul id="ul_amh_bcf_ji">
                                <li>If the elements <sourcexml>leg:bodytext</sourcexml> is the
                                    immediate child of <sourcexml>leg:levelbody</sourcexml> then
                                        <b>becomes</b>
                                    <targetxml>admindoc:bodytext</targetxml> and populated as: <pre>
         					<b><i>Example: Source XML 1</i></b>

&lt;leg:levelbody&gt;
 &lt;leg:bodytext&gt;
  &lt;p&gt;&lt;text&gt;This procedure is not mandatory and should be used only where there is doubt surrounding the timing of a vehicle&amp;#x2019;s air brake system. In the event, response times are required to be measured, this procedure should be closely followed.&lt;/text&gt;&lt;/p&gt;
 &lt;/leg:bodytext&gt;
&lt;/leg:levelbody&gt;

         				</pre>
                                    <pre>
         					<b><i>Example: Target XML 1</i></b>

&lt;admindoc:bodytext&gt;
 &lt;p&gt;&lt;text&gt;This procedure is not mandatory and should be used only where there is doubt surrounding the timing of a vehicle&amp;#x2019;s air brake system. In the event, response times are required to be measured, this procedure should be closely followed.&lt;/text&gt;&lt;/p&gt;
&lt;/admindoc:bodytext&gt;

         				</pre>
                                </li>
                                <li>If the element <sourcexml>leg:levelbody</sourcexml> has child
                                        <sourcexml>leg:level</sourcexml> then it <b>becomes</b>
                                    <targetxml>admindoc:level</targetxml> and populated as: <pre>
              		<b><i>Example: Source XML 1</i></b>
                                    
&lt;leg:levelbody&gt;
&lt;leg:level id="BRA_BC1_INTRO.SGM_BC.INTRO_4"&gt;
&lt;leg:level-vrnt leveltype="intro" searchtype="LEGISLATION INTRO" subdoc="true" toc-caption="INTRODUCTION"&gt;
&lt;leg:heading&gt;&lt;title&gt;INTRODUCTION&amp;lt;/title&gt;&lt;/leg:heading&gt;
&lt;leg:levelbody&gt;
&lt;leg:bodytext&gt;
&lt;pgrp&gt;
&lt;heading&gt;&lt;title&gt;THE NATIONAL CONSTRUCTION CODE SERIES&lt;/title&gt;&lt;/heading&gt;
&lt;p&gt;
&lt;text&gt;The National Construction Code Series (NCC) is an initiative of the Council of Australian Governments developed to incorporate all on-site construction requirements into a single code.&lt;/text&gt;&lt;/p&gt;&lt;/pgrp&gt;
...
&lt;/leg:bodytext&gt;
&lt;/leg:levelbody&gt;

                                </pre>
                                    <pre>
                                    
       <b><i>Example: Target XML 1</i></b>              		

&lt;admindoc:bodytext&gt;
 &lt;admindoc:level leveltype="introduction" alternatetoccaption="INTRODUCTION;" includeintoc="true"&gt;
  &lt;ref:anchor id="BRA_BC1_INTRO.SGM_BC.INTRO_4" anchortype="global"/&gt;
  &lt;heading&gt;
    &lt;title&gt;INTRODUCTION&lt;/title&gt;
  &lt;/heading&gt;
&lt;admindoc:bodytext&gt;
&lt;pgrp&gt;
&lt;heading&gt;&lt;title&gt;THE NATIONAL CONSTRUCTION CODE SERIES&lt;/title&gt;&lt;/heading&gt;
&lt;p&gt;
&lt;text&gt;The National Construction Code Series (NCC) is an initiative 
of the Council of Australian Governments developed to incorporate all on-site 
construction requirements into a single code. &lt;/text&gt;&lt;/p&gt;
&lt;/pgrp&gt;
  &lt;!-- ETC. --&gt;
   &lt;/admindoc:bodytext&gt;
 &lt;/admindoc:level&gt;
&lt;/admindoc:bodytext&gt;

              	</pre>
                                    <note>Refer "common_rosetta_refpt" for handling of
                                            <sourcexml>refpt</sourcexml>. </note></li>
                            </ul>
                        </li>
                    </ul>
                </p>
            </section>
            <section>
                <title>Changes</title>
                <p>2013-12-03: <ph id="change_20131203_SSX">Added instruction to handle
                        leg:officialnum WebTeam # 247093</ph></p>
            </section>
        </body>
    </dita:topic>

    <!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
    <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU18_BRA_Regulatory\AU_BRA_Regulatory-Body.dita  -->
    <!--<xsl:message>AU18_BRA_Regulatory-Body.xsl requires manual development!</xsl:message>-->

    <xsl:template match="leg:body">

        <!--  Original Target XPath:  admindoc:body   -->
        <admindoc:body>
            <xsl:apply-templates select="@* | node()"/>
        </admindoc:body>

    </xsl:template>

    <xsl:template match="leg:officialname">
        <xsl:choose>
            <xsl:when test="./text() and @ln.user-displayed='false'">
                <admindoc:officialtitle>
                    <xsl:attribute name="source">
                        <xsl:text>editoriallyassigned</xsl:text>
                    </xsl:attribute>
                    <xsl:apply-templates select="@* except @searchtype | node()"/>
                </admindoc:officialtitle>
            </xsl:when>
            <xsl:when test="normalize-space(.)='' and @ln.user-displayed='false'"/>
            <xsl:otherwise>
                <admindoc:officialtitle>
                    <xsl:apply-templates select="@* except @searchtype | node()"/>
                </admindoc:officialtitle>
            </xsl:otherwise>
        </xsl:choose>
        <!--  Original Target XPath:  admindoc:info/admindoc:officialtitle[@source="editoriallyassigned"]   -->
    </xsl:template>

    <xsl:template match="leg:officialnum">

        <!--  Original Target XPath:  /admindoc:admindoc/admindoc:body/admindoc:info/admindoc:officialnum   -->
        <xsl:choose>
            <xsl:when test="./text() and @ln.user-displayed='false'">
                <admindoc:officialnum>
                    <xsl:attribute name="source">
                        <xsl:text>editoriallyassigned</xsl:text>
                    </xsl:attribute>
                    <xsl:apply-templates select="@* except @searchtype | node()"/>
                </admindoc:officialnum>
            </xsl:when>
            <xsl:when test="normalize-space(.)='' and @ln.user-displayed='false'"/>
            <xsl:otherwise>
                <admindoc:officialnum>
                    <xsl:apply-templates select="@* except @searchtype | node()"/>
                </admindoc:officialnum>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

    <xsl:template match="leg:info/leg:status">
        <xsl:choose>
            <xsl:when test="@statuscode='historical' and not(@ln.user-displayed='false')">
                <xsl:element name="admindoc:levelinfo">
                    <xsl:element name="admindoc:status">
                        <xsl:attribute name="statuscode">
                            <xsl:text>historical</xsl:text>
                        </xsl:attribute>
                        <xsl:apply-templates select="@* except @statuscode | node()"/>
                    </xsl:element>
                </xsl:element>
            </xsl:when>
            <xsl:otherwise/>
        </xsl:choose>
    </xsl:template>
    
    <xsl:template match="leg:info/leg:status/@ln.user-displayed"/>
    
    
    
<!--    <xsl:template match="bodytext">
        <bodytext>
            <xsl:apply-templates select="@* | node()"/>
        </bodytext>
    </xsl:template>
-->
    <xsl:template match="leg:level-vrnt/leg:levelbody">
    <!--  Original Target XPath:  admindoc:bodytext   -->
            <xsl:apply-templates select="@* | node()"/>
    </xsl:template>

    <xsl:template match="leg:bodytext">

        <!--  Original Target XPath:  admindoc:bodytext   -->
        <admindoc:bodytext>
            <xsl:apply-templates select="@* | node()"/>
        </admindoc:bodytext>

    </xsl:template>
    
    <xsl:template match="leg:heading">
        <xsl:choose>
            <xsl:when test="child::glp:note[child::h]">
                <xsl:element name="admindoc:prelim">
                    <xsl:apply-templates select="@* | node() except (title | desig | edpnum)"/>
                </xsl:element>   
            </xsl:when>
            <xsl:otherwise>
                <xsl:element name="heading">
                    <xsl:apply-templates select="@* | node() except (glp:note | descendant::refpt)"/>
                </xsl:element>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

    <xsl:template match="form">
        
        <!--  Original Target XPath:  form:form   -->
        <form:form>
            <xsl:apply-templates select="@* | node()"/>
        </form:form>
        
    </xsl:template>
    
    
    <xsl:template match="form/bodytext">
        
        <!--  Original Target XPath:  form:form/form:document/form:bodytext   -->
        <form:document typeofdoc="unnamed" annotated="false" official="true">
            <form:bodytext>
                <xsl:apply-templates select="@* | node()"/>
            </form:bodytext>
        </form:document>
        
    </xsl:template>
    
    <xsl:template match="form/bodytext/h">
        
        <!--  Original Target XPath:  form:form/form:document/form:bodytext/form:h   -->
        <form:h>
            <xsl:apply-templates select="@* | node()"/>
        </form:h>
        
    </xsl:template>
    
    <xsl:template match="p[parent::bodytext/parent::form] | l/li/p[ancestor::from/child::bodytext]">
        
        <!--  Original Target XPath:  form:form/form:document/form:bodytext/form:p   -->
        <form:p>
            <xsl:apply-templates select="@* | node()"/>
        </form:p>
        
    </xsl:template>
    
    <xsl:template match="p/text[parent::bodytext/parent::form] | l/li/p/text[ancestor::from/child::bodytext]">
        
        <!--  Original Target XPath:  form:form/form:document/form:bodytext/form:p   -->
        <form:text>
            <xsl:apply-templates select="@* | node()"/>
        </form:text>
        
    </xsl:template>
    
    
    <xsl:template match="form/bodytext/l">
        
        <!--  Original Target XPath:  form:form/form:document/form:bodytext/form:p   -->
        <form:list>
            <xsl:apply-templates select="@* | node()"/>
        </form:list>
        
    </xsl:template>
    
    <xsl:template match="form/bodytext/l/li">
        
        <!--  Original Target XPath:  form:form/form:document/form:bodytext/form:p   -->
        <form:listitem>
            <form:bodytext>
                <xsl:apply-templates select="@* | node()"/>
            </form:bodytext>
        </form:listitem>
        
    </xsl:template>
</xsl:stylesheet>
