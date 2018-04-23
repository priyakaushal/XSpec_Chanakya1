<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
	xmlns:frm="http://www.lexis-nexis.com/glp/frm" 
	xmlns:leg="http://www.lexis-nexis.com/glp/leg"
	xmlns:case="http://www.lexis-nexis.com/glp/case"
	xmlns:caseinfo="http://www.lexisnexis.com/xmlschemas/content/legal/case-information/1/"
	xmlns:courtcase="http://www.lexisnexis.com/xmlschemas/content/legal/courtcase/1/"
	xmlns:jurisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/jurisdiction-info/1/"
	xmlns:person="http://www.lexisnexis.com/xmlschemas/content/shared/person/1/"
	xmlns:annot="http://www.lexisnexis.com/xmlschemas/content/shared/annotations/1/"
	xmlns:form="http://www.lexisnexis.com/xmlschemas/content/shared/form/1/"
	xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/"
	xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0"
	exclude-result-prefixes="dita frm case leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/"
		id="UK12_case.courtinfo">
		<title>case:courtinfo <lnpid>id-UK12-29833</lnpid> </title>
		<body>
			<section>
				<p>
					<sourcexml class="+ topic/keyword xml-d/sourcexml ">case:courtinfo</sourcexml>
					becomes <targetxml class="+ topic/keyword xml-d/targetxml "
						>courtcase:head/caseinfo:caseinfo/jurisinfo:courtinfo</targetxml>
				</p>
				<p>
					The following collection of elements (children of <sourcexml>case:courtinfo</sourcexml>), regardless of sequence, should be considered a set: 
					<ul>
						<li><sourcexml>case:courtname</sourcexml></li>
						<li><sourcexml>case:courtcode</sourcexml></li>
						<li><sourcexml>case:juris</sourcexml></li>
						<li><sourcexml>case:dates</sourcexml></li>
						<li><sourcexml>case:judges</sourcexml></li>
						<li><sourcexml>case:courtnum</sourcexml></li>
					</ul>
				</p>
				<p> There should be no repetition of elements in a set. For each set of elements listed
					above, the individual elements should be mapped to children of
					<targetxml>caseinfo:caseinfo</targetxml>. Refer to the instructions for each
					child element of <sourcexml>case:courtinfo</sourcexml> to determine the proper
					target element. </p>
			</section>
			
			<example>
				<title>Source XML</title>
				<codeblock>
<![CDATA[
<case:courtinfo>
    <case:courtname>KING'S BENCH DIVISION</case:courtname>
    <case:courtcode>255</case:courtcode>
    <case:juris>255</case:juris>
    <case:judges>SWIFT J</case:judges>
    <case:dates>
        <case:hearingdates>8, 9 JULY 1936</case:hearingdates>
    </case:dates>
</case:courtinfo>
]]>
            </codeblock>
			</example>
			
			<example>
				<title>Target XML</title>
				<codeblock>
<![CDATA[
<courtcase:head>
    <caseinfo:caseinfo>
        <jurisinfo:courtinfo>
            <jurisinfo:alternatecourtcode alternatecourtcode="255"/>
            <jurisinfo:courtname>KING'S BENCH DIVISION</jurisinfo:courtname>
            <jurisinfo:jurisdiction>
                <jurisinfo:system>255</jurisinfo:system>
            </jurisinfo:jurisdiction>
        </jurisinfo:courtinfo>
        <decision:dates>
            <decision:argueddate>
                <date-text>8, 9 JULY 1936</date-text>, 
            </decision:argueddate>
        </decision:dates>
        <courtcase:panel>
            <courtcase:judges>
                <person:judge>SWIFT J</person:judge>
            </courtcase:judges>
        </courtcase:panel>
    </caseinfo:caseinfo>
</courtcase:head>
]]>
            </codeblock>
			</example>
			<p>If the child element <sourcexml>case:judges/case:judge</sourcexml> occurs, the start-tag
				and end-tag (but not the content) for <sourcexml>case:judge</sourcexml> are dropped. Any
				other child elements of <sourcexml>case:info/case:courtinfo/case:judges</sourcexml> (and
				any child elements of <sourcexml>case:judges/case:judge</sourcexml> if it occurs) are
				converted as described in below section. </p>
			<example>
				<title>Source XML</title>
				<codeblock>
        <![CDATA[
<case:info>
    <case:courtinfo>
        <case:judges>
            <case:judge>Lord Justice Laws Lord Justice
                Floyd Lord Justice Vos</case:judge>
        </case:judges>
    </case:courtinfo>
</case:info>
        ]]>
            </codeblock>
			</example>
			
			<example>
				<title>Target XML</title>
				<codeblock>
        <![CDATA[
<caseinfo:caseinfo>
    <courtcase:panel>
        <courtcase:judges>
            <person:judge>
                <person:person>
                    <person:name.text>Lord Justice Laws Lord Justice
                        Floyd Lord Justice Vos</person:name.text>          
                </person:person>
            </person:judge>
        </courtcase:judges>
    </courtcase:panel>
</caseinfo:caseinfo>
        ]]>
            </codeblock>
			</example>
			<section>
				<title>Changes</title>
				<p>2017-04-24: <ph id="change_20170424_RS">Created. VSTS Issue 272255</ph></p>
			</section>
		</body>
		
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK/UK12-Treatise/UK12_case.courtinfo.dita -->
<!--	<xsl:message>UK12_case.courtinfo.xsl requires manual development!</xsl:message> -->
	

	<xsl:template match="case:info">
		<caseinfo:caseinfo>
			<xsl:apply-templates select="@*|node()"/>
			<xsl:apply-templates select="following-sibling::catchwordgrp"/>
		</caseinfo:caseinfo>
	</xsl:template>


<!--	Vikas Rohilla : created the template-->
	<xsl:template match="case:courtinfo">
		<jurisinfo:courtinfo>
			<xsl:apply-templates select="@*|case:courtcode,case:courtname ,case:juris  "/>
		</jurisinfo:courtinfo>
		<xsl:apply-templates select="node() except(case:courtcode|case:courtname|case:juris)"/>
	</xsl:template>
	
	<xsl:template match="case:courtname">
		<jurisinfo:courtname>
		<xsl:apply-templates select="node()"/>
		</jurisinfo:courtname>
	</xsl:template>
	
	<xsl:template match="case:juris">
		<jurisinfo:jurisdiction>
			<jurisinfo:system>
				<xsl:apply-templates select="@*|node()"/>
			</jurisinfo:system>
		</jurisinfo:jurisdiction>
	</xsl:template>
	
	<xsl:template match="case:courtinfo/case:judges">
		<courtcase:panel>
			<courtcase:judges>
				<person:judge>
					<person:person>
						<person:name.text>
							<xsl:apply-templates select="node()"/>
						</person:name.text>
					</person:person>
				</person:judge>
			</courtcase:judges>
		</courtcase:panel>
	</xsl:template>
	
	<xsl:template match="case:courtcite">
		<caseinfo:courtcite>
			<textitem>
				<xsl:apply-templates/>
			</textitem>
		</caseinfo:courtcite>
	</xsl:template>
	
<!--supressed	-->
	<xsl:template match="case:judge">
		<xsl:apply-templates/>
	</xsl:template>

</xsl:stylesheet>
