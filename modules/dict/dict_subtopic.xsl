<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:source_dict="http://www.lexis-nexis.com/glp/dict" xmlns:tei="http://www.tei-c.org/ns/1.0/" version="2.0" exclude-result-prefixes="dita dict">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="dict_subtopic">
    <title><sourcexml>dict:subtopic</sourcexml> to <targetxml>tei:entry</targetxml> <lnpid>id-ST06-31217</lnpid></title>
    <body>
        <section>
            <p>If <i>only</i> 1 <sourcexml>dict:subtopic</sourcexml> element exists,
                    <sourcexml>dict:subtopic</sourcexml> becomes
                <targetxml>tei:entry</targetxml>.</p>
            <p>If more than 1 <sourcexml>dict:subtopic</sourcexml> element exists, create
                    <targetxml>tei:superEntry</targetxml>. Then each
                    <sourcexml>dict:subtopic</sourcexml> following-sibling becomes a
                    <targetxml>tei:entry</targetxml>.<ul>
                    <li><sourcexml>dict:subtopic[@id]</sourcexml> becomes
                            <targetxml>tei:entry[@type]</targetxml></li>
                    <li><sourcexml>dict:subtopic[@id='LEG:AGEDISCRIMINTATION']</sourcexml>, create a
                            <targetxml> tei:def</targetxml>
                        <ul>
                            <li>process
                                    <sourcexml>dict:subtopic[@id='LEG:AGEDISCRIMINTATION'']</sourcexml>
                                as children of <targetxml> tei:def</targetxml></li>
                        </ul></li>
                </ul></p>
            <p>If special characters are present in the <sourcexml>dict:subtopic[@id] </sourcexml>
                attribute value then the special characters will be supressed and the text is
                merged.
                    <b>Example:</b><sourcexml>dict:subtopic[@id="CONTEXT:WORKERS&amp;#x2019;COMPENSATION"]&gt;</sourcexml>
                <b>becomes</b>
                <targetxml>tei:entry[@type="CONTEXT:WORKERSCOMPENSATION"]</targetxml>.</p>
        </section>
        
        
        <example>
            <title>Source XML 1 - multiple <sourcexml>dict:subtopic</sourcexml></title>
            <codeblock>

&lt;dict:term-entry&gt;
    ...
    &lt;dict:definition&gt;
        &lt;dict:subtopic id="DEF:AGEDISCRIMINATION"&gt;
            &lt;dict:topicname&gt;
                &lt;emph typestyle="bf"&gt;Narrative definition&lt;/emph&gt;
            &lt;/dict:topicname&gt;
            ...
        &lt;/dict:subtopic&gt;
        &lt;dict:subtopic id="LEG:AGEDISCRIMINATION"&gt;
            &lt;dict:topicname&gt;
                &lt;emph typestyle="bf"&gt;Legislative definition&lt;/emph&gt;
            &lt;/dict:topicname&gt;
            ...
        &lt;/dict:subtopic&gt;
        &lt;dict:subtopic id="KEYLEG:AGEDISCRIMINATION"&gt;
            &lt;dict:topicname&gt;Key Legislation&lt;/dict:topicname&gt;
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
        &lt;tei:entry type="DEF:AGEDISCRIMINATION"&gt;
            ...
            &lt;tei:usg type="Narrativedefinition"&gt;
                &lt;emph typestyle="bf"&gt;Narrative definition&lt;/emph&gt;
            &lt;/tei:usg&gt;
            ...
        &lt;/tei:entry&gt;
        &lt;tei:entry type="LEG:AGEDISCRIMINATION"&gt;
            &lt;tei:usg type="Legislativedefinition"&gt;
                &lt;emph typestyle="bf"&gt;Legislative definition&lt;/emph&gt;
            &lt;/tei:usg&gt;
            ...
        &lt;/tei:entry&gt;
        &lt;tei:entry type="KEYLEG:AGEDISCRIMINATION"&gt;
            &lt;tei:usg type="KeyLegislation"&gt;
                Key Legislation
            &lt;/tei:usg&gt;
            ...
        &lt;/tei:entry&gt;                
   &lt;/tei:superEntry&gt;
 &lt;/dict:defitem&gt;
	</codeblock>
        </example>

        <section>
            <title>Changes</title>
            <p>2014-05-14: <ph id="change_20140514_AS">Created.</ph></p>
        </section>
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-Standard\Dictionary\dict_subtopic.dita  -->
	<xsl:message>dict_subtopic.xsl requires manual development!</xsl:message> 

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

	<xsl:template match="dict:subtopic[@id='LEG:AGEDISCRIMINTATION']"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  tei:def   -->
		<tei:def>
			<xsl:apply-templates select="@* | node()"/>
		</tei:def>

	</xsl:template>

	<xsl:template match="dict:subtopic[@id='LEG:AGEDISCRIMINTATION'']"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  tei:def   -->
		<tei:def>
			<xsl:apply-templates select="@* | node()"/>
		</tei:def>

	</xsl:template>

	<xsl:template match="dict:subtopic[@id] "><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  tei:entry[@type="CONTEXT:WORKERSCOMPENSATION"]   -->
		<tei:entry>
			<xsl:apply-templates select="@* | node()"/>
		</tei:entry>

	</xsl:template>

	<xsl:template match="dict:subtopic[@id=&#34;CONTEXT:WORKERS&amp;#x2019;COMPENSATION&#34;]&gt;"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  tei:entry[@type="CONTEXT:WORKERSCOMPENSATION"]   -->
		<tei:entry>
			<xsl:apply-templates select="@* | node()"/>
		</tei:entry>

	</xsl:template>

</xsl:stylesheet>