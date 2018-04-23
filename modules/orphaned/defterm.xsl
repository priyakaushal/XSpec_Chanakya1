<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:tei="http://www.tei-c.org/ns/1.0/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="defterm">
    <title><sourcexml>defterm</sourcexml> to <targetxml>tei:form/tei:orth</targetxml> <lnpid>id-UK10-29207</lnpid></title>
    <body>
        <section>
            <p><sourcexml>defterm</sourcexml> becomes <targetxml>tei:form/tei:orth</targetxml>. The
                value of <targetxml>@norm</targetxml> should be the value of
                    <sourcexml>defterm</sourcexml> with space normalized, punctutation removed, and
                converted to lower-case.  If a <targetxml>tei:superEntry</targetxml> is used,
                    <targetxml>tei:form/tei:orth</targetxml> becomes its child, otherwise it becomes
                the child of <targetxml>tei:entry</targetxml>.</p>
        </section>
        <example>
            <title>Source XML 1 - <sourcexml>defterm</sourcexml> to
                    <targetxml>tei:superEntry/tei:form/tei:orth</targetxml></title>
            <codeblock>

&lt;dict:term-entry&gt;
    &lt;defterm&gt;
        &lt;refpt id="0KBL_1_ABATEMENT_NOTICE:HTDICT-TERM" type="ext"/&gt;
        &lt;emph typestyle="bf"&gt;Abatement notice&lt;/emph&gt;
    &lt;/defterm&gt;
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
            <title>Target XML 1 - <sourcexml>defterm</sourcexml> to
                    <targetxml>tei:superEntry/tei:form/tei:orth</targetxml></title>
            <codeblock>


&lt;dict:defitem&gt;
    &lt;tei:superEntry&gt;
        &lt;tei:form&gt;
            &lt;tei:orth&gt;
                &lt;ref:anchor id="_0KBL_1_ABATEMENT_NOTICE_HTDICT-TERM" anchortype="global"/&gt;
                &lt;emphtypestyle="bf"&gt;Abatement notice&lt;/emph&gt;
            &lt;/tei:orth&gt;
        &lt;/tei:form&gt;
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
        <!--<section>
            <title>Changes</title>
            <p>2012-11-01: Created.</p>
        </section>-->
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK10_Dictionary\defterm.dita  -->
	<xsl:message>defterm.xsl requires manual development!</xsl:message> 

	<xsl:template match="defterm">

		<!--  Original Target XPath:  tei:form/tei:orth   -->
		<tei:form>
			<tei:orth>
				<xsl:apply-templates select="@* | node()"/>
			</tei:orth>
		</tei:form>

	</xsl:template>

</xsl:stylesheet>