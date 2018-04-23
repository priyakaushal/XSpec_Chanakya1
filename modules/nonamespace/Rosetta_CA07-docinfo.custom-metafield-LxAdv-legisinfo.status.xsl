<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/" xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
    xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo"
    xmlns:leg="http://www.lexis-nexis.com/glp/leg"
    xmlns:ci="http://www.lexis-nexis.com/ci"
    xmlns:proc="http://www.lexisnexis.com/xmlschemas/content/shared/process-elements/1/"
    xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/"
    xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/"
    xmlns:classify="http://www.lexisnexis.com/xmlschemas/content/shared/classification/1/"
    xmlns:legisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/legislation-info/1/"
    xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/"
    xmlns:regulation="urn:x-lexisnexis:content:regulation:sharedservices:1" version="2.0"
    exclude-result-prefixes="dita docinfo leg">

    <dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/"
        id="CA-docinfo.custom-metafield-to-legisinfo.status">
        <title>docinfo:custom-metafield to legisinfo:status <lnpid>id-CCCC-10520</lnpid></title>
        <body>
            <section>
                <p>This rule is applicable to CA06.</p>
                <p>When input <sourcexml>docinfo:custom-metafield/@name="dpsi"</sourcexml> is having
                    below mentioned values of table then conversion should generate the Status text
                    value in <targetxml>legisinfo:statustext</targetxml> as per mentioned in the
                        <b>Status text</b> column in below table (for Repeals) inside the first
                        <targetxml>primlaw:level[@leveltype="unclassified"]</targetxml> element.
                    Refer Input and Target exmaples for reference:</p>
                <p>
                    <b>Target X-path for Repealed: </b>
                    <targetxml>primlaw:levelinfo/primlawinfo:primlawinfo/legisinfo:legisinfo/legisinfo:statusgroup/legisinfo:status[@statuscode="repealed"]/legisinfo:statustext</targetxml>
                </p>
                <table>
                    <title>
                        <u>Table for Repealed DPSI Values</u>
                    </title>
                    <tgroup cols="3">
                        <thead>
                            <row>
                                <entry align="center">DPSI Value</entry>
                                <entry align="center">Source</entry>
                                <entry align="center">Status text</entry>
                            </row>
                        </thead>
                        <tbody>
                            <row>
                                <entry>03EX</entry>
                                <entry>Alberta Repealed Regulations</entry>
                                <entry>REPEALED</entry>
                            </row>
                            <row>
                                <entry>03GG</entry>
                                <entry>British Columbia Repealed Regulations</entry>
                                <entry>REPEALED</entry>
                            </row>
                            <row>
                                <entry>03J5</entry>
                                <entry>Canada Repealed Regulations</entry>
                                <entry>REPEALED</entry>
                            </row>
                            <row>
                                <entry>03QW</entry>
                                <entry>Ontario Repealed Regulations</entry>
                                <entry>REPEALED</entry>
                            </row>
                            <row>
                                <entry>0CV2</entry>
                                <entry>Règlements abrogés du Canada</entry>
                                <entry>ABROGÉ</entry>
                            </row>
                            <row>
                                <entry>0U9B</entry>
                                <entry>Canadian Securities Law Reporter - 08 Former
                                    Regulations</entry>
                                <entry>REPEALED</entry>
                            </row>
                            <row>
                                <entry>0U9Y</entry>
                                <entry>Canadian Commercial Law Guide - 05 Former Regulations</entry>
                                <entry>REPEALED</entry>
                            </row>
                            <row>
                                <entry>0UA7</entry>
                                <entry>Canadian Family Law Guide - 04 Former Regulations</entry>
                                <entry>REPEALED</entry>
                            </row>
                            <row>
                                <entry>0UAQ</entry>
                                <entry>Alberta Corporations Law Guide - 05 Former
                                    Regulations</entry>
                                <entry>REPEALED</entry>
                            </row>
                            <row>
                                <entry>0UCP</entry>
                                <entry>BC Real Estate Law Guide - 04 Former Regulations</entry>
                                <entry>REPEALED</entry>
                            </row>
                            <row>
                                <entry>0UCY</entry>
                                <entry>Canada Corporations Law - 05 Former Regulations</entry>
                                <entry>REPEALED</entry>
                            </row>
                            <row>
                                <entry>0UDC</entry>
                                <entry>Canadian Estate Administration Guide - 06 Former
                                    Regulations</entry>
                                <entry>REPEALED</entry>
                            </row>
                            <row>
                                <entry>0UEJ</entry>
                                <entry>Employment Standards - 04 Former Regulations</entry>
                                <entry>REPEALED</entry>
                            </row>
                            <row>
                                <entry>0UFE</entry>
                                <entry>Human Rights/Equity Issues - 03 Former Regulations</entry>
                                <entry>REPEALED</entry>
                            </row>
                            <row>
                                <entry>0UHM</entry>
                                <entry>Benefits and Pensions - 07 Former Regulations</entry>
                                <entry>REPEALED</entry>
                            </row>
                            <row>
                                <entry>0UI4</entry>
                                <entry>Labour Relations - 05 Former Regulations</entry>
                                <entry>REPEALED</entry>
                            </row>
                            <row>
                                <entry>0UJB</entry>
                                <entry>Ontario Real Estate Law Guide - 05 Former Regulations</entry>
                                <entry>REPEALED</entry>
                            </row>
                            <row>
                                <entry>0UPY</entry>
                                <entry>BC Corporations Law - 05 Former Regulations</entry>
                                <entry>REPEALED</entry>
                            </row>
                            <row>
                                <entry>0USP</entry>
                                <entry>Code criminel et lois connexes annotés - 12 Former
                                    Regulations</entry>
                                <entry>ABROGÉ</entry>
                            </row>

                        </tbody>
                    </tgroup>
                </table>
                <note>If <sourcexml>leg:body</sourcexml> is only having one child
                        <sourcexml>leg:info</sourcexml> inside the source document then conversion
                    need to create empty
                        <targetxml>primlaw:level[@leveltype="unclassified"]</targetxml> inside the
                        <targetxml>*:body</targetxml> for capturing the
                        "<targetxml>primlaw:levelinfo</targetxml>".</note>
                <pre><b><i>Example: Source Markup - For English Language</i></b>

&lt;docinfo:custom-metafields&gt;
    &lt;docinfo:custom-metafield name="dpsi"&gt;03TR&lt;/docinfo:custom-metafield&gt;
&lt;/docinfo:custom-metafields&gt;

</pre>
                <pre>
    <b><i>Example: Target Markup</i></b>

&lt;primlaw:level leveltype="unclassified"&gt;
    &lt;primlaw:levelinfo&gt;
        &lt;primlawinfo:primlawinfo&gt;
            &lt;legisinfo:legisinfo&gt;
                &lt;legisinfo:statusgroup&gt;
                    &lt;legisinfo:status statuscode="repealed"&gt;
                      &lt;legisinfo:statustext&gt;REPEALED&lt;/legisinfo:statustext&gt;
                    &lt;/legisinfo:status&gt;
                &lt;/legisinfo:statusgroup&gt;
            &lt;/legisinfo:legisinfo&gt;
        &lt;/primlawinfo:primlawinfo&gt;
    &lt;/primlaw:levelinfo&gt;
&lt;/primlaw:level&gt;

</pre>
            </section>

            <section>
                <title>Changes</title>
                <p>2016-03-23: <ph id="change_20160323_SS">Included the additional DPSI values (i.e.
                        0U9B &amp; 0USP) inside the Repealed DPSI values table.</ph></p>
                <p>2015-02-13: <ph id="change_20150213_SEP">Separate into distinct rules for
                        CA05/06. Remove ANNUALS/STATUTES DPSI from 06 R4.5 Item #2048.</ph></p>
                <p>2015-02-10: <ph id="change_20150210_SEP">Separate out Table for Annual DPSI
                        Values. Applicable on CA05/06. R4.5 Item #2048.</ph></p>
                <p>2015-01-22: <ph id="change_20150122_PS">Changed attaribute value
                            <targetxml>@statuscode="repealedshell"</targetxml> to
                            <targetxml>@statuscode="repealed"</targetxml>. Applicable on
                    CA05.</ph></p>
                <p>2014-11-24: <ph id="change_20141124_PS">Added note to generate Historical Note
                        convertes into <targetxml>legisinfo:statustext</targetxml> then conversion
                        should not convert <sourcexml>leg:histnote/p/text</sourcexml> at his
                        original location, Applicable on CA05 &amp; CA06.</ph></p>
                <p>2014-10-28: <ph id="change_20141028_PS">Added new DPSI of <b>ANNUALS</b> for
                        creation of <targetxml>legisinfo:status</targetxml> and also change the
                        attribute value of
                            <targetxml>legisinfo:status/@statuscode="repealed"</targetxml> to
                            <targetxml>legisinfo:status/@statuscode="repealedshell"</targetxml>.
                        Applicable on CA05 &amp; CA06.</ph></p>
                <p>2014-09-23: <ph id="change_20140923_PS">Updated rule and example to capture
                        entire text of <sourcexml>leg:histnote/p/text</sourcexml> in
                            <targetxml>legisinfo:statustext</targetxml>. Applicable only on CA05
                        &amp; CA06.</ph></p>
                <p>2014-09-17: <ph id="change_20140917_PS">Added Status text column in the
                            <b>DPSI</b> table and also added an instruction to generate
                            <targetxml>legisinfo:statustext</targetxml> value based on historical
                        note. Added example also. Applicable only on CA05 &amp; CA06.</ph></p>
                <p>2014-08-19: <ph id="change_20140819_PS">Updated rule to read only <b>DPSI</b>
                        value and remove the reference to historical notes. Applicable only on CA05
                        &amp; CA06.</ph></p>
                <p>2014-08-13: <ph id="change_20140813_SS">Updated Instruction and example for
                        creating
                            <targetxml>legisinfo:status[@statuscode="repealed"]/legisinfo:statustext</targetxml>
                        markup in target converstion when input is having desired <b>DPSI
                        </b>value.</ph></p>
                <p>2014-07-28: <ph id="change_20140728_SS">Added a note for creating empty
                            <targetxml>primlaw:level[@leveltype="unclassified"]</targetxml> inside
                            <targetxml>regulation:body</targetxml> in target conversion when input
                            <sourcexml>leg:body</sourcexml> markup is only having one child
                            <sourcexml>leg:info</sourcexml>.</ph></p>
                <p>2014-06-12: <ph id="change_20140612_PS">Created. This is applicable to CA05 and
                        CA06.</ph></p>
            </section>
        </body>
    </dita:topic>

    <!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
    <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_CA06-docinfo.custom-metafield-LxAdv-legisinfo.status.dita  -->
    <!--	<xsl:message>Rosetta_CA06-docinfo.custom-metafield-LxAdv-legisinfo.status.xsl requires manual development!</xsl:message> -->


<!--    <xsl:variable name="Citation_Language">
        <codes>
            <code key="SOR" value="French Version"/>
            <code key="B.C. Reg" value="B.C. Reg"/>
            <code key="C.R.C." value="French Version"/>
            <code key="DORS" value="English Version"/>
            <code key="RSQ,CCQ," value="French Version"/>
            <code key="RSQ,CCR" value="French Version"/>
            <code key="CQLR" value="French Version"/>
            <code key="LRQ" value="English Version"/>
            <code key="LRQ,CCQ" value="English Version"/>
            <code key="LRQ,CCR" value="English Version"/>
            <code key="RLRQ" value="English Version"/>
            <code key="RSQ" value="French Version"/>
            <code key="C.N.L.R." value="English Version"/>
            <code key="N.L.R." value="English Version"/>
            <code key="R.R.N.W.T." value="English Version"/>
            <code key="N.W.T. Reg." value="English Version"/>
            <code key="N.S. Reg." value="English Version"/>
            <code key="R.R.N.W.T. 1990" value="English Version"/>
            <code key="Nu. Reg." value="English Version"/>
            <code key="R.R.O. 1990, Reg." value="English Version"/>
            <code key="R.R.O. 1990, Reg." value="English Version"/>
            <code key="O. Reg." value="English Version"/>
            <code key="SI" value="English Version"/>
            <code key="TI" value="English Version"/>
            <code key="TR" value="English Version"/>
            <code key="RSQ" value="French"/>
            
        </codes>
    </xsl:variable>-->
    
    <xsl:variable name="language" select="/LEGDOC/docinfo/docinfo:doc-lang/@lang"/>
   
    
    
    <xsl:template match="docinfo:custom-metafields/docinfo:custom-metafield[@name = 'actFirstDoc'][contains(., 'true')]" mode="classify">
        
        <!--  Original Target XPath:  legisinfo:statustext   -->
        <classify:classification classscheme="actDocumentOrder">
            <classify:classitem>
                <classify:classitem-identifier>
                    <classify:classcode normval="true"/>
                    <classify:classname>firstActDocument</classify:classname>
                </classify:classitem-identifier>
            </classify:classitem>
        </classify:classification>
        
    </xsl:template>
    <xsl:template match="docinfo:custom-metafields/docinfo:custom-metafield[@name='act-id' or @searchtype='act-id']" mode="doc_membership">
        <doc:membership>
            <ref:groupid group-type="leg-id-1">
                <ref:resourceid>
                <xsl:attribute name="ref:resourcekey">
<!--                    <xsl:value-of select="concat('urn:leg-id-1:', substring-before(substring-after(. , 'DOCINFO(') , ')'))"/>-->
                    <xsl:value-of select="concat('urn:leg-id-1:',translate(.,',',''))"/>
                </xsl:attribute> 
                </ref:resourceid>
            
            </ref:groupid>
        </doc:membership>
        
    </xsl:template>
   <!-- <xsl:template match="leg:num[not(starts-with(.,'solsak'))]" mode="doc_related_content">
        
        <xsl:variable name="contentValue" select="."/>
  
        <xsl:for-each select="$Citation_Num/codes/code">
            <xsl:if test="starts-with($contentValue, $code/@key)">
                <!-\-<xsl:variable name="code" select="."/>-\->
                <doc:related-content>
                    <doc:rela<xsl:variable name="code" select="."/>
            ted-content-grp content-type="alternate-language-version">
                        <doc:related-content-item>
                            <doc:related-content-link>
                                <ref:lnlink service="TRAVERSE">
                                    <ref:marker>
                                        <xsl:for-each select="$Citation_Language/*:codes/*:code">
                                            <xsl:variable name="code_language" select="."/>
                                            <xsl:if test="starts-with($contentValue, $code_language/@key)">
                                                <xsl:value-of select="concat(substring-before(replace($contentValue, $code_language/@key, $code_language/@value),' Version'),' Version')"/>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </ref:marker>
                                    <ref:locator>
                                        <ref:locator-key>
                                            <ref:key-name name="normcite"/>
                                            <ref:key-value>
                                                <xsl:attribute name="value">
                                                    <xsl:value-of
                                                        select="replace($contentValue, $code/@key, $code/@value)"/>
                                                </xsl:attribute>
                                            </ref:key-value>
                                        </ref:locator-key>
                                        <ref:locator-params>
                                            <proc:param name="normprotocol" value="CAEditorial"/>
                                            <proc:param name="countrycode" value="CA"/>
                                            <proc:param name="targetdoclang">
                                                <xsl:attribute name="value">
                                                    <xsl:choose>
                                                        <xsl:when test="$language='en'">
                                                            <xsl:text>fr-CA</xsl:text>
                                                        </xsl:when>
                                                        <xsl:otherwise>
                                                            <xsl:text>en-CA</xsl:text>
                                                        </xsl:otherwise>
                                                    </xsl:choose>
                                                </xsl:attribute>
                                            </proc:param>
                                        </ref:locator-params>
                                    </ref:locator>
                                </ref:lnlink>
                            </doc:related-content-link>
                        </doc:related-content-item>
                    </doc:related-content-grp>
                </doc:related-content>
            </xsl:if>
        </xsl:for-each>
    </xsl:template>-->
    
    
    
  <!--  <xsl:template match="leg:officialnum[1][not(child::ci:cite)]" mode="doc_related_content_officialnum">
        
        <xsl:variable name="contentValue" select="/LEGDOC/leg:body/leg:info/leg:officialnum[1]"/>
        
        <xsl:for-each select="$Citation_Num/*:codes/*:code">
            <xsl:variable name="code" select="."/>
            <xsl:if test="starts-with($contentValue,$code/@key)">
                <!-\-<!-\\\\-<xsl:variable name="code" select="."/>-\\\\->-\->
                <doc:related-content>
                    <doc:related-content-grp content-type="alternate-language-version">
                        <doc:related-content-item>
                            <doc:related-content-link>
                                <ref:lnlink service="TRAVERSE">
                                    <ref:marker>
                                        <xsl:for-each select="$Citation_Language/*:codes/*:code">
                                            <xsl:variable name="code_language" select="."/>
                                            <xsl:if test="starts-with($contentValue, $code_language/@key)">
                                                <xsl:value-of select="concat(substring-before(replace($contentValue, $code_language/@key, $code_language/@value),' Version'),' Version')"/>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </ref:marker>
                                    <ref:locator>
                                        <ref:locator-key>
                                            <ref:key-name name="normcite"/>
                                            <ref:key-value>
                                                <xsl:attribute name="value">
                                                    <xsl:value-of
                                                        select="replace($contentValue, $code/@key, $code/@value)"/>
                                                </xsl:attribute>
                                            </ref:key-value>
                                        </ref:locator-key>
                                        <ref:locator-params>
                                            <proc:param name="normprotocol" value="CAEditorial"/>
                                            <proc:param name="countrycode" value="CA"/>
                                            <proc:param name="targetdoclang">
                                                <xsl:attribute name="value">
                                                    <xsl:choose>
                                                        <xsl:when test="$language='en'">
                                                            <xsl:text>fr-CA</xsl:text>
                                                        </xsl:when>
                                                        <xsl:otherwise>
                                                            <xsl:text>en-CA</xsl:text>
                                                        </xsl:otherwise>
                                                    </xsl:choose>
                                                </xsl:attribute>
                                            </proc:param>
                                        </ref:locator-params>
                                    </ref:locator>
                                </ref:lnlink>
                            </doc:related-content-link>
                        </doc:related-content-item>
                    </doc:related-content-grp>
                </doc:related-content>
            </xsl:if>
        </xsl:for-each>
    </xsl:template>-\->-->
    
    <xsl:template match="docinfo:assoc-links/docinfo:assoc-links-grp/heading" priority="2">
        <heading>
            <title>
                <xsl:value-of select="following-sibling::remotelink/text()"/>
            </title>
        </heading>
    </xsl:template>
    
    <!--	<xsl:template match="leg:body">

		<!-\-  Original Target XPath:  primlaw:level[@leveltype="unclassified"]   -\->
		<primlaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:level>

	</xsl:template>-->
    <!--
	<xsl:template match="leg:info">

		<!-\-  Original Target XPath:  primlaw:level[@leveltype="unclassified"]   -\->
		<primlaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="leg:histnote/p/text">

		<!-\-  Original Target XPath:  legisinfo:status   -\->
		<legisinfo:status>
			<xsl:apply-templates select="@* | node()"/>
		</legisinfo:status>

	</xsl:template>-->




  <!--  <xsl:template match="docinfo:custom-metafields/docinfo:custom-metafield[@name = 'actFirstDoc'][contains(., 'true')]" mode="classify">

        <!-\-  Original Target XPath:  legisinfo:statustext   -\->
        <classify:classification classscheme="actDocumentOrder">
            <classify:classitem>
                <classify:classitem-identifier>
                    <classify:classcode normval="true"/>
                    <classify:classname>firstActDocument</classify:classname>
                </classify:classitem-identifier>
            </classify:classitem>
        </classify:classification>

    </xsl:template>
    
    
    
    
    <xsl:template match="ci:content" mode="doc-related">
        
        <xsl:variable name="contentValue" select="."/>
        <xsl:for-each select="$Citation_Num/codes/code">
            <xsl:variable name="code" select="."/>
            <xsl:if test="starts-with($contentValue, $code/@key)">
            <xsl:variable name="code" select="."/>
                <doc:related-content>
                    <doc:related-content-grp content-type="alternate-language-version">
                        <doc:related-content-item>
                            <doc:related-content-link>
                                <ref:lnlink service="TRAVERSE">
                                    <ref:marker>English Version</ref:marker>
                                    <ref:locator>
                                        <ref:locator-key>
                                            <ref:key-name name="normcite"/>
                                            <ref:key-value>
                                                <xsl:attribute name="value">
                                                    <xsl:value-of
                                                        select="replace($contentValue, $code/@key, $code/@value)"/>
                                                </xsl:attribute>
                                            </ref:key-value>
                                        </ref:locator-key>
                                        <ref:locator-params>
                                            <proc:param name="normprotocol" value="CAEditorial"/>
                                            <proc:param name="countrycode" value="CA"/>
                                            <proc:param name="targetdoclang" value="en-CA"/>
                                        </ref:locator-params>
                                    </ref:locator>
                                </ref:lnlink>
                            </doc:related-content-link>
                        </doc:related-content-item>
                    </doc:related-content-grp>
                </doc:related-content>
            </xsl:if>
        </xsl:for-each>
    </xsl:template>
    <xsl:template match="docinfo:assoc-links/docinfo:assoc-links-grp/heading" priority="2">
        <heading xmlns:ci="http://www.lexis-nexis.com/ci" xmlns:regulation="urn:x-lexisnexis:content:regulation:sharedservices:1">
            <title>
                <xsl:value-of select="following-sibling::remotelink/text()"/>
            </title>
        </heading>
    </xsl:template> -->
    <!--	<xsl:template match="leg:body">

		<!-\-  Original Target XPath:  primlaw:level[@leveltype="unclassified"]   -\->
		<primlaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:level>

	</xsl:template>-->
    <!--
	<xsl:template match="leg:info">

		<!-\-  Original Target XPath:  primlaw:level[@leveltype="unclassified"]   -\->
		<primlaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="leg:histnote/p/text">

		<!-\-  Original Target XPath:  legisinfo:status   -\->
		<legisinfo:status>
			<xsl:apply-templates select="@* | node()"/>
		</legisinfo:status>

	</xsl:template>-->

</xsl:stylesheet>
