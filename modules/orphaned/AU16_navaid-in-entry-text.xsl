<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
	xmlns:frm="http://www.lexis-nexis.com/glp/frm" 
	xmlns:leg="http://www.lexis-nexis.com/glp/leg"
	xmlns:person="http://www.lexisnexis.com/xmlschemas/content/shared/person/1/"
	xmlns:annot="http://www.lexisnexis.com/xmlschemas/content/shared/annotations/1/"
	xmlns:form="http://www.lexisnexis.com/xmlschemas/content/shared/form/1/"
	xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/"
	xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0"
	exclude-result-prefixes="dita frm leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/"
		id="AU16_navaid-in-entry-text">
		<title>in:entry-text <lnpid>id-AU16-21035</lnpid> </title>
		<body>
			<section>
				<sourcexml>in:entry-text</sourcexml> become <targetxml>index:entrytext</targetxml>
				<p>:If input xpath is <sourcexml>/INDEXDOC/in:body/in:lev1/in:entry/in:entry-text</sourcexml>
					then it should be mapped to
					<targetxml>/navaid:landingpage/navaid:landingpagebody/index:index[@indextype="topical"]/index:item/index:entry/index:entrytext</targetxml>. </p>
				<p>:If input xpath is
					<sourcexml>/INDEXDOC/in:body/in:lev1/in:lev2/in:lev3/in:entry/in:entry-text</sourcexml>
					then it should be mapped to
					<targetxml>/navaid:landingpage/navaid:landingpagebody/index:index[@indextype="topical"]/index:item/index:item/index:entry/index:entryte</targetxml>. </p>
				<p>All other nested child levels "<sourcexml>in:lev3</sourcexml>,
					<sourcexml>in:lev4</sourcexml>, <sourcexml>in:lev5</sourcexml> and
					<sourcexml>in:lev6</sourcexml>" should be handled in same pattern and create nested target
					levels.</p>
				<p> </p>
				<note>Any <sourcexml>remotelink</sourcexml> element comes with a <b>@service</b> attribute
					with a value '<b>DOC-ID</b>' and <b>@docidref</b> attribute is not present then it should be
					mapped in target <targetxml>ref:lnlink</targetxml>.</note>
				<note>All other child elements (i.e. <sourcexml>ci:cite</sourcexml>,
					<sourcexml>emph</sourcexml>, <sourcexml>sup</sourcexml>, <sourcexml>sub</sourcexml> and
					others) of <sourcexml>in:entry-text</sourcexml> markup in source documents then it should be
					mapped to target according to the <b>General Markup</b> section.</note>
				<p>Refer to the source and target examples in the following pages.</p>
			</section>
			<example>
				<lines><b>Source XML 1</b></lines>
				<codeblock>
        <![CDATA[
<in:lev1>
    <in:entry>
      <in:entry-text>administrator—</in:entry-text>
    </in:entry>
    <in:lev2>
      <in:entry>
        <in:entry-text>appointment by directors,</in:entry-text>
      </in:entry>
      ...
    </in:lev2>
</in:lev1>
        ]]>
      </codeblock>
				<lines><b>Target XML 1</b> showing conversion from <sourcexml>in:body/in:lev1/in:entry/in:entry-text</sourcexml> to <targetxml>index:entrytext</targetxml></lines>
				<codeblock>
<![CDATA[
<index:index indextype="topical">
  <index:item>
    <index:entry>
      <index:entrytext>administrator—</index:entrytext>
    </index:entry>
    <index:item>
      <index:entry>
        <index:entrytext>appointment by directors,</index:entrytext>
      </index:entry>
      ...
    </index:item>
  </index:item>
</index:index>
]]>
      </codeblock>
			</example>
			<note>If <sourcexml>refpt</sourcexml> occurs within <sourcexml>in:entry-text</sourcexml> then
				conversion need to move <targetxml>ref:anchor</targetxml> as child of
				<targetxml>index:item</targetxml>.  if Refer the below source and target instances;</note>
			<example>
				<lines><b>Source XML</b></lines>
				<codeblock>
        <![CDATA[
<in:lev3>
    <in:entry>
        <in:entry-text>ADR<refpt id="0IV4_1_PRECEDENTS_ADR:HTCOMM-ACF" type="ext"/></in:entry-text>
    </in:entry>
</in:lev3>
      ]]>
      </codeblock>
				<lines><b>Target XML</b> </lines>
				<codeblock>
<![CDATA[
<index:item>
    <ref:anchor id="0IV4_1_PRECEDENTS_ADR:HTCOMM-ACF" anchortype="global"/>
    <index:entry>
        <index:entrytext>ADR</index:entrytext>
    </index:entry>
</index:item>
]]>
      </codeblock>
			</example>
			
			<note>If <sourcexml>refpt/emph</sourcexml> occurs within <sourcexml>in:entry-text</sourcexml>
				then conversion need to move <targetxml>ref:anchor</targetxml> as direct child of
				<targetxml>index:item</targetxml> and <sourcexml>refpt</sourcexml> text will be retain
				inside <targetxml>index:entrytext</targetxml> '' (i.e.
				<targetxml>index:item/index:entry/index:entrytext/emph</targetxml>). if Refer the below
				source and target instances;</note>
			<example>
				<lines><b>Source XML</b> </lines>
				<codeblock>
        <![CDATA[
<in:lev1>
    <in:entry>
        <in:entry-text>
            <refpt id="CREDIBILITY_OF_WITNESS" type="ext">
                <emph typestyle="bf">Credibility of witness</emph>
            </refpt>
        </in:entry-text>
    </in:entry>
</in:lev1>
      ]]>
      </codeblock>
				<lines><b>Target XML</b> </lines>
				<codeblock>
<![CDATA[
<index:item>
    <ref:anchor id="CREDIBILITY_OF_WITNESS" anchortype="global"/>
    <index:entry>
        <index:entrytext>
            <emph typestyle="bf">Credibility of witness</emph>
        </index:entrytext>
    </index:entry>
</index:item>
]]>
      </codeblock>
			</example>
			
			<section>
				<title>Changes</title>
				<p>2017-05-01: <ph id="change_20170501_RS">Added a note for handling
					<sourcexml>refpt/emph</sourcexml> occurs within
					<sourcexml>in:entry-text</sourcexml>.</ph></p>
				<p>2017-04-28: <ph id="change_20170428_RS">Created.</ph></p>
			</section>
		</body>
		
	
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC/AU16_navaid/navaid-in-entry-text.dita  -->
	<xsl:message>AU16_navaid-in-entry-text.xsl requires manual development!</xsl:message> 
	

	
	


	

</xsl:stylesheet>
