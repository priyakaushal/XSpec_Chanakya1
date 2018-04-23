<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:ci="http://www.lexis-nexis.com/ci" xmlns:frm="http://www.lexis-nexis.com/glp/frm" xmlns:form="http://www.lexisnexis.com/xmlschemas/content/shared/form/1/" version="2.0" exclude-result-prefixes="dita ci frm">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="UK14_Precedents_frm.prompt">
    <title>frm:prompt <lnpid>id-UK14-30213</lnpid></title>
    <body>
        <section><p><sourcexml>frm:prompt</sourcexml> becomes
                <targetxml>form:prompt</targetxml>.</p>
            <p>Attributes convert as follows:<ul>
                    <li><sourcexml>@id</sourcexml> becomes <targetxml>@xml:id</targetxml></li>
                    <li><sourcexml>@optionalKey</sourcexml> becomes
                            <targetxml>@optionalKey</targetxml></li>
                    <li><sourcexml>@alternateKey</sourcexml> becomes
                            <targetxml>@alternateKey</targetxml></li>
                    <li><sourcexml>@prompttype</sourcexml> becomes
                            <targetxml>@contenttype</targetxml> (Notice: target is
                            <targetxml>@contenttype</targetxml>, not @prompttype)</li>
                    <li><sourcexml>@promptname</sourcexml> becomes
                            <targetxml>@promptname</targetxml></li>
                    <li><sourcexml>@enableautofill</sourcexml> becomes
                            <targetxml>@enableautofill</targetxml></li>
                </ul></p>
        </section>
        <section><p><u>Exception for <sourcexml>ci:content/frm:prompt</sourcexml></u>. If
                    <sourcexml>frm:prompt</sourcexml> is child of <sourcexml>ci:content</sourcexml>,
                suppress the <sourcexml>frm:prompt</sourcexml> tag and output content. LBU confirms
                as data error. Very rare. Known to occur in
            0OKO_EMPLOYMENT_PREC_17542.xml</p></section>
        <!--<note>A Schema Change Request is in-process to allow <targetxml>form:prompt</targetxml> as
            direct child of <targetxml>text</targetxml>, <targetxml>defterm</targetxml>,
                <targetxml>title</targetxml>, and <targetxml>subtitle</targetxml> (CR
            DAST2013102215175300). The CR responds to Oct 2013 data redelivery where
                <sourcexml>frm:prompt</sourcexml> occurs without <sourcexml>emph</sourcexml>
            wrapper. Schema already allows <targetxml>form:prompt</targetxml> as child of
                <targetxml>form:text</targetxml>, as illustrated in Example 2.</note>-->

        <pre>
        <b>EXAMPLE 1</b>
            
<b><i>Source XML</i></b>

&lt;frm:div divtype="front"&gt;
    &lt;p&gt;
       &lt;text&gt;Service&lt;/text&gt;
    &lt;/p&gt;
    &lt;p&gt;
       &lt;text&gt;This Order shall be served by 
         &lt;frm:prompt alternateKey="alt-801E8214" id="abcd"&gt;
             &lt;frm:prompt prompttype="name"&gt;name of serving party&lt;/frm:prompt&gt;&lt;/frm:prompt&gt;
         &lt;frm:prompt alternateKey="alt-801E8214" id="efgh"&gt;the Court&lt;/frm:prompt&gt;.&lt;/text&gt;
    &lt;/p&gt;
&lt;/frm:div&gt;
 
<b><i>Target XML</i></b>

&lt;form:div divtype="front"&gt;
  &lt;form:bodytext&gt;
    &lt;form:p&gt;
        &lt;form:text&gt;Service&lt;/form:text&gt;
    &lt;/form:p&gt;
    &lt;form:p&gt;
        &lt;form:text&gt;This Order shall be served by 
           &lt;form:prompt alternateKey="alt-801E8214" xml:id="abcd"&gt;
               &lt;form:prompt contenttype="name"&gt;name of serving party&lt;/form:prompt&gt;&lt;/form:prompt&gt;
           &lt;form:prompt alternateKey="alt-801E8214" xml:id="efgh"&gt;the Court&lt;/form:prompt&gt;.&lt;/form:text&gt;
    &lt;/form:p&gt;
  &lt;/form:bodytext&gt;
&lt;/form:div&gt;

                </pre>
        <pre>
        <b>EXAMPLE 2. <sourcexml>ci:content/frm:prompt</sourcexml></b>
            
<b><i>Source XML</i></b>

&lt;p&gt;
    &lt;text&gt;[&lt;frm:prompt&gt;Further or alternatively, the Respondent will rely upon the facts and matters
            set out above as constituting a substantial reason of a kind such as to justify the
            dismissal of the Claimant within the meaning of 
            &lt;ci:cite searchtype="LEG-REF" status="valid"&gt;
                &lt;ci:sesslaw&gt;&lt;ci:sesslawinfo&gt;&lt;ci:sesslawnum num="1996_18a"/&gt;
                &lt;ci:hierpinpoint&gt;&lt;ci:hierlev label="section" num="98"/&gt;
                &lt;/ci:hierpinpoint&gt;&lt;/ci:sesslawinfo&gt;&lt;ci:sesslawref&gt;
                &lt;ci:standardname normpubcode="UK_ACTS"/&gt;&lt;/ci:sesslawref&gt;&lt;/ci:sesslaw&gt;
                &lt;ci:content&gt;s 98(1)(&lt;frm:prompt&gt;b&lt;/frm:prompt&gt;)&lt;/ci:content&gt;
            &lt;/ci:cite&gt; of the ERA 1996.&lt;/frm:prompt&gt;]&lt;/text&gt;
&lt;/p&gt;
 
<b><i>Target XML</i></b>

&lt;p&gt;
    &lt;text&gt;[&lt;form:prompt&gt;Further or alternatively, the Respondent will rely upon the facts and matters
            set out above as constituting a substantial reason of a kind such as to justify the
            dismissal of the Claimant within the meaning of 
            &lt;lnci:cite status="valid"&gt;
                &lt;lnci:sesslaw&gt;&lt;lnci:sesslawinfo&gt;&lt;lnci:sesslawnum num="1996_18a"/&gt;
                &lt;lnci:hierpinpoint&gt;&lt;lnci:hierlev label="section" num="98"/&gt;
                &lt;/lnci:hierpinpoint&gt;&lt;/lnci:sesslawinfo&gt;&lt;lnci:sesslawref&gt;
                &lt;lnci:standardname normpubcode="UK_ACTS"/&gt;&lt;/lnci:sesslawref&gt;&lt;/lnci:sesslaw&gt;
                &lt;lnci:content&gt;s 98(1)(b)&lt;/lnci:content&gt;
            &lt;/lnci:cite&gt; of the ERA 1996.&lt;/form:prompt&gt;]&lt;/text&gt;
&lt;/p&gt;

                </pre>

        <section>
            <title>Changes</title>
            <p>2016-03-27: <ph id="change_20160327_jm">Revised. Added rules for attributes.</ph></p>
            <p>2013-11-19: <ph id="change_20131119_jm">Added exceptional rule to suppress
                        <sourcexml>frm:prompt</sourcexml> tag within
                        <sourcexml>ci:content</sourcexml>. Very rare. LBU confirmed as data error.
                    Affects UK14 only. Responds to Phase 6 UK Discussion Board Item 64.</ph></p>
            <p>2013-11-12: <ph id="change_20131112_jm">Not a rule change. Removed Note about pending
                    Schema Change to handle <sourcexml>frm:prompt</sourcexml> without
                        <sourcexml>emph</sourcexml> wrapper; first occurring in Oct 2013 redelivery
                    (Webteam 239323). Schema now allows <targetxml>form:prompt</targetxml> as direct
                    child of <targetxml>text</targetxml>, <targetxml>defterm</targetxml>,
                        <targetxml>title</targetxml>, and <targetxml>subtitle</targetxml>. Only UK14
                    immediately affected.</ph></p>
            <p>2013-10-30: <ph id="change_20131030_jm">Not a rule change. Added Note that Schema
                    Change is in-process to handle <sourcexml>frm:prompt</sourcexml> without
                        <sourcexml>emph</sourcexml> wrapper; first occurring in Oct 2013 redelivery
                    (Webteam 239323). Also added an example to illustrate
                        <targetxml>form:prompt</targetxml> within
                    <targetxml>form:text</targetxml>.</ph></p>
        </section>
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK14-Precedents\UK14_Precedents_frm.prompt.dita  -->
	<!--<xsl:message>UK14_Precedents_frm.prompt.xsl requires manual development!</xsl:message>--> 

	<xsl:template match="frm:prompt">

		<!--  Original Target XPath:  form:prompt   -->
		<form:prompt>
			<xsl:apply-templates select="@* | node()"/>
		</form:prompt>

	</xsl:template>

	<xsl:template match="frm:prompt/@optionalKey">

		<!--  Original Target XPath:  @optionalKey   -->
		<xsl:attribute name="optionalKey">
			<xsl:value-of select="."/>
		</xsl:attribute>

	</xsl:template>
    
    <xsl:template match="frm:prompt/@alternateKey">

		<!--  Original Target XPath:  @alternateKey   -->
		<xsl:attribute name="alternateKey">
			<xsl:value-of select="translate(., ' ', '')"/>
		</xsl:attribute>

	</xsl:template>

    <!-- allowed on rosetta but not on LA:
        <frm:prompt alternateGroupKey="">
-->
    <xsl:template match="frm:prompt/@alternateGroupKey">
        
        <!--  Original Target XPath:  @alternateKey   -->
        <xsl:attribute name="alternateGroupKey">
            <xsl:value-of select="."/>
        </xsl:attribute>
        
    </xsl:template>
    
    <xsl:template match="frm:prompt/@prompttype">

		<!--  Original Target XPath:  @contenttype   -->
		<xsl:attribute name="contenttype">
			<xsl:value-of select="."/>
		</xsl:attribute>

	</xsl:template>

	<xsl:template match="frm:prompt/@promptname">

		<!--  Original Target XPath:  @promptname   -->
		<xsl:attribute name="promptname">
			<xsl:value-of select="."/>
		</xsl:attribute>

	</xsl:template>

    <xsl:template match="frm:prompt/@enableautofill">

		<!--  Original Target XPath:  @enableautofill   -->
		<xsl:attribute name="enableautofill">
			<xsl:value-of select="."/>
		</xsl:attribute>

	</xsl:template>

	<xsl:template match="ci:content/frm:prompt" priority="22">
		<!--  Original Target XPath:  form:prompt   -->
			<xsl:apply-templates select="@* | node()"/>
	</xsl:template>


</xsl:stylesheet>