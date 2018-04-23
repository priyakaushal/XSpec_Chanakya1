<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:source_dict="http://www.lexis-nexis.com/glp/dict" xmlns:tei="http://www.tei-c.org/ns/1.0/" version="2.0" exclude-result-prefixes="dita dict">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="dict.subtopic">
    <title><sourcexml>dict:subtopic</sourcexml> to <targetxml>tei:entry</targetxml> <lnpid>id-UK10-29215</lnpid></title>
    <body>
        <section>
            <p>If <i>only</i> 1 <sourcexml>dict:subtopic</sourcexml> element exists,
                    <sourcexml>dict:subtopic</sourcexml> becomes
                <targetxml>tei:entry</targetxml>.</p>
            <p>If more than 1 <sourcexml>dict:subtopic</sourcexml> element exists, create
                    <targetxml>tei:superEntry</targetxml>. Then each
                    <sourcexml>dict:subtopic</sourcexml> following-sibling becomes a
                    <targetxml>tei:entry</targetxml>.<ul id="ul_tsp_qeh_ci">
                    <li><sourcexml>dict:subtopic[@id]</sourcexml> becomes
                            <targetxml>tei:entry[@type]</targetxml></li>
                    <li><sourcexml>dict:subtopic[@id='LEG']</sourcexml>, create a <targetxml>
                            tei:def</targetxml><ul id="ul_zkq_sfh_ci">
                            <li>process childres of <sourcexml>dict:subtopic[@id='LEG']</sourcexml>
                                as children of <targetxml> tei:def</targetxml></li>
                        </ul></li>
                </ul></p>
        </section>
        <example>
            <title>Source XML 1 - multiple <sourcexml>dict:subtopic</sourcexml></title>
            <codeblock>

&lt;dict:term-entry&gt;
    ...
    &lt;dict:definition&gt;
        &lt;dict:subtopic id="DEF"&gt;
            &lt;dict:topicname&gt;
                &lt;emph typestyle="bf"&gt;Definition&lt;/emph&gt;
            &lt;/dict:topicname&gt;
            ...
        &lt;/dict:subtopic&gt;
        &lt;dict:subtopic id="RELT"&gt;
            &lt;dict:topicname&gt;
                &lt;emph typestyle="bf"&gt;Related Terms&lt;/emph&gt;
            &lt;/dict:topicname&gt;
            ...
        &lt;/dict:subtopic&gt;
        &lt;dict:subtopic id="LEG"&gt;
            &lt;dict:topicname&gt;Legislation definitions&lt;/dict:topicname&gt;
            ...
        &lt;/dict:subtopic&gt;                
    &lt;/dict:definition&gt;
&lt;/dict:term-entry&gt;

	</codeblock>
        </example>
        <example>
            <title>Target XML 1 - multiple <sourcexml>dict:subtopic</sourcexml></title>
            <codeblock>

&lt;dict:defitem&gt;
    &lt;tei:superEntry&gt;
        &lt;tei:entry type="DEF"&gt;
            ...
            &lt;tei:usg type="definition"&gt;
                &lt;emph typestyle="bf"&gt;Definition&lt;/emph&gt;
            &lt;/tei:usg&gt;
            ...
        &lt;/tei:entry&gt;
        &lt;tei:entry type="RELT"&gt;
            &lt;tei:usg type="relatedterms"&gt;
                &lt;emph typestyle="bf"&gt;Related Terms&lt;/emph&gt;
            &lt;/tei:usg&gt;
            ...
        &lt;/tei:entry&gt;
        &lt;tei:entry type="LEG"&gt;
            &lt;tei:usg type="legislationdefinitions"&gt;
                Legislation definitions 
            &lt;/tei:usg&gt;
            ...
        &lt;/tei:entry&gt;                
   &lt;/tei:superEntry&gt;
 &lt;/dict:defitem&gt;

	</codeblock>
            
        </example>
        <example>
            <title>Source XML 1 - <sourcexml>dict:subtopic[@id='LEG']</sourcexml></title>
            <codeblock>

&lt;dict:subtopic id="LEG"&gt;
    &lt;dict:topicname&gt;Legislation definitions&lt;/dict:topicname&gt;
    &lt;dict:note&gt;Selected by Halsbury&amp;#x2019;s Statutes editorial teams&lt;/dict:note&gt;
    &lt;l&gt;
        &lt;li&gt;
            &lt;p&gt;
                &lt;text&gt;&lt;ci:cite searchtype="LEG-REF" status="valid"&gt;
                        &lt;ci:sesslaw&gt;
                            &lt;ci:sesslawinfo&gt;
                                &lt;ci:sesslawnum num="1990_43a"/&gt;
                                &lt;ci:hierpinpoint&gt;
                                  &lt;ci:hierlev label="section" num="80"/&gt;
                                &lt;/ci:hierpinpoint&gt;
                            &lt;/ci:sesslawinfo&gt;
                            &lt;ci:sesslawref&gt;
                                &lt;ci:standardname normpubcode="UK_ACTS"/&gt;
                            &lt;/ci:sesslawref&gt;
                        &lt;/ci:sesslaw&gt;
                        &lt;ci:content&gt;Environmental Protection Act 1990, s
                            80&lt;/ci:content&gt;
                    &lt;/ci:cite&gt;&lt;/text&gt;
            &lt;/p&gt;
        &lt;/li&gt;
    &lt;/l&gt;
&lt;/dict:subtopic&gt;

	</codeblock>
        </example>
        <example>
            <title>Target XML 1 - <sourcexml>dict:subtopic[@id='LEG']</sourcexml></title>
            <codeblock>

&lt;tei:entry type="LEG"&gt;
    &lt;tei:usg type="legislationdefinitions"&gt;Legislation definitions &lt;/tei:usg&gt;
    &lt;note&gt;
        &lt;bodytext&gt;
            &lt;p&gt;
                &lt;text&gt;Selected by Halsbury&amp;#x2019;s Statutes editorial teams&lt;/text&gt;
            &lt;/p&gt;
        &lt;/bodytext&gt;
    &lt;/note&gt;
    &lt;tei:def&gt;
        &lt;list&gt;
            &lt;listitem&gt;
                &lt;bodytext&gt;
                    &lt;p&gt;
                        &lt;text&gt;
                            &lt;lnci:cite type="LEG-REF" status="valid"&gt;
                                &lt;lnci:sesslaw&gt;
                                  &lt;lnci:sesslawinfo&gt;
                                  &lt;lnci:sesslawnum num="1990_43a"/&gt;
                                  &lt;lnci:hierpinpoint&gt;
                                  &lt;lnci:hierlev label="section" num="80"/&gt;
                                  &lt;/lnci:hierpinpoint&gt;
                                  &lt;/lnci:sesslawinfo&gt;
                                  &lt;lnci:sesslawref&gt;
                                  &lt;lnci:standardname normpubcode="UK_ACTS"/&gt;
                                  &lt;/lnci:sesslawref&gt;
                                &lt;/lnci:sesslaw&gt;
                                &lt;lnci:content&gt;Environmental Protection Act 1990, s
                                  80&lt;/lnci:content&gt;
                            &lt;/lnci:cite&gt;
                        &lt;/text&gt;
                    &lt;/p&gt;
                &lt;/bodytext&gt;
            &lt;/listitem&gt;
        &lt;/list&gt;
    &lt;/tei:def&gt;
&lt;/tei:entry&gt;

	</codeblock>
            
        </example>
        <!--<section>
            <title>Changes</title>
            <p>2012-11-01: Created.</p>
        </section>-->
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK10_Dictionary\dict.subtopic.dita  -->
	<xsl:message>dict.subtopic.xsl requires manual development!</xsl:message> 

	<xsl:template match="dict:subtopic"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  tei:entry   -->
		<tei:entry>
			<xsl:apply-templates select="@* | node()"/>
		</tei:entry>

	</xsl:template>

	<xsl:template match="dict:subtopic[@id]"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  tei:entry[@type]   -->
		<tei:entry>
			<xsl:apply-templates select="@* | node()"/>
		</tei:entry>

	</xsl:template>

	<xsl:template match="dict:subtopic[@id='LEG']"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  tei:def   -->
		<tei:def>
			<xsl:apply-templates select="@* | node()"/>
		</tei:def>

	</xsl:template>

</xsl:stylesheet>