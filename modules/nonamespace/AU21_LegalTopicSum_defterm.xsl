<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
   xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
   xmlns:source_dict="http://www.lexis-nexis.com/glp/dict" 
   xmlns:tei="http://www.tei-c.org/ns/1.0/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="AU21_defterm">
    <title><sourcexml>defterm</sourcexml> to <targetxml>tei:form/tei:orth</targetxml> <lnpid>id-AU21-22416</lnpid></title>
    <body>
        <section>
            <p><sourcexml>defterm</sourcexml> becomes <targetxml>tei:form/tei:orth</targetxml>.</p>
          <ul>
                <li> If zero or 1 <sourcexml>dict:definition/dict:subtopic</sourcexml> descendants,
                    create <targetxml>tei:form/tei:orth</targetxml> as a child of
                        <targetxml>tei:entry</targetxml> .</li>
                <li> If more than 1 <sourcexml>dict:definition/dict:subtopic</sourcexml>
                    descendants, create<targetxml> tei:form/tei:orth</targetxml> as a child of
                        :<targetxml>tei:superEntry</targetxml> . </li>
          </ul>
            <note>Refer to <xref href="AU21_LegalTopicSum-subtopic.dita"/> for additional instruction on handling subtopics</note>
            <note> The value of <targetxml>@norm</targetxml> should be the value of
                    <sourcexml>defterm</sourcexml> with space normalized, punctutation removed, and
                converted to lower-case. </note>
        </section>
        <example>
            <title>Source XML 1 - <sourcexml>defterm</sourcexml> to
                    <targetxml>tei:entry/tei:form/tei:orth</targetxml></title>
            <codeblock>

   &lt;dict:term-entry&gt;
         &lt;defterm&gt;
            &lt;emph typestyle="bf"&gt;Bail&lt;/emph&gt;
         &lt;/defterm&gt;
    &lt;dict:definition&gt;
    &lt;dict:subtopic id="CONTEXT:BAIL"&gt;
               &lt;l type="def"&gt;
                  &lt;li&gt;
                     &lt;p&gt;&lt;text&gt;Criminal Procedure&lt;/text&gt;&lt;/p&gt;
                  &lt;/li&gt;
               &lt;/l&gt;
            &lt;/dict:subtopic&gt;  
    &lt;/dict:definition&gt;
&lt;/dict:term-entry&gt;
</codeblock>
        </example>
        <example>
            <title>Target XML 1 - <sourcexml>defterm</sourcexml> to
                    <targetxml>tei:entry/tei:form/tei:orth</targetxml></title>
            <codeblock>
      &lt;dict:defitem&gt;
               &lt;tei:entry&gt;
                  &lt;tei:form&gt;
                     &lt;tei:orth&gt;
                        &lt;emph typestyle="bf"&gt;Bail&lt;/emph&gt;
                     &lt;/tei:orth&gt;
                  &lt;/tei:form&gt;
                  &lt;tei:usg type="CONTEXT:BAIL"/&gt;
                        &lt;tei:def&gt;
                           &lt;list&gt;
                              &lt;listitem&gt;
                                 &lt;bodytext&gt;
                                    &lt;p&gt;
                                       &lt;text&gt;Criminal Procedure &lt;/text&gt;
                                    &lt;/p&gt;
                                 &lt;/bodytext&gt;
                              &lt;/listitem&gt;
                           &lt;/list&gt;
                           &lt;/tei:def&gt;
                     &lt;/tei:entry&gt;       
            &lt;/dict:defitem&gt;
</codeblock>
        </example>

        <example>
            <title>Source XML 2 - <sourcexml>defterm</sourcexml> to
                    <targetxml>tei:superEntry/tei:form/tei:orth</targetxml></title>
            <codeblock>

  &lt;dict:term-entry&gt;
         &lt;defterm&gt;
            &lt;emph typestyle="bf"&gt;Bail&lt;/emph&gt;
         &lt;/defterm&gt;
    &lt;dict:definition&gt;
    &lt;dict:subtopic id="CONTEXT:BAIL"&gt;
               &lt;l type="def"&gt;
                  &lt;li&gt;
                     &lt;p&gt;
                        &lt;text&gt;Criminal Procedure &lt;/text&gt;
                     &lt;/p&gt;
                     &lt;/li&gt;
               &lt;/l&gt;
            &lt;/dict:subtopic&gt;  
             &lt;dict:subtopic id="DEF:BAIL"&gt;
               &lt;dict:topicname&gt;
                  &lt;emph typestyle="bf"&gt;Narrative definition&lt;/emph&gt;
               &lt;/dict:topicname&gt;
               &lt;dict:short-definition&gt;
                  &lt;p&gt;
                     &lt;text&gt;The release from custody granted to a person charged with an offence, on the condition that he or she undertakes to return to the court at a specified time, and subject to any other conditions that the court may impose. Under the statutory schemes that regulate bail applications in every jurisdiction, there may, depending on the alleged offence, be a right to release on bail, a presumption in favour of bail, no presumption or a presumption against bail.&lt;/text&gt;
                  &lt;/p&gt;
               &lt;/dict:short-definition&gt;
            &lt;/dict:subtopic&gt;
    &lt;/dict:definition&gt;
&lt;/dict:term-entry&gt;

	</codeblock>
        </example>
        
        <example>
            <title>Target XML 2 - <sourcexml>defterm</sourcexml> to
                    <targetxml>tei:superEntry/tei:form/tei:orth</targetxml></title>
            <codeblock>
         
         &lt;dict:defitem&gt;
               &lt;tei:superEntry&gt;
                  &lt;tei:form&gt;
                     &lt;tei:orth&gt;
                        &lt;emph typestyle="bf"&gt;Bail&lt;/emph&gt;
                     &lt;/tei:orth&gt;
                  &lt;/tei:form&gt;
                  &lt;tei:entry type="DEF"&gt;
                        &lt;tei:usg type="CONTEXT:BAIL"/&gt;
                        &lt;tei:def&gt;
                           &lt;list&gt;
                              &lt;listitem&gt;
                                 &lt;bodytext&gt;
                                    &lt;p&gt;
                                       &lt;text&gt;Criminal Procedure &lt;/text&gt;
                                    &lt;/p&gt;
                                 &lt;/bodytext&gt;
                              &lt;/listitem&gt;
                           &lt;/list&gt;
                           &lt;/tei:def&gt;
                     &lt;/tei:entry&gt;       
                     &lt;tei:entry type="DEF"&gt;
                           &lt;tei:usg type="DEF:BAIL"/&gt;
                              &lt;tei:usg type="narrativedefinition"&gt;&lt;emph typestyle="bf"&gt;Narrative defintion&lt;/emph&gt;&lt;/tei:usg&gt;
                              &lt;tei:def label="short-definition"&gt;
                                 &lt;pgrp&gt;
                                    &lt;h&gt;Breach of duty of care&lt;/h&gt;
                                    &lt;p&gt;&lt;text&gt;The release from custody granted to a person charged with an offence, on the condition that he or she undertakes to return to the court at a specified time, and subject to any other conditions that the court may impose. Under the statutory schemes that regulate bail applications in every jurisdiction, there may, depending on the alleged offence, be a right to release on bail, a presumption in favour of bail, no presumption or a presumption against bail.&lt;/text&gt;&lt;/p&gt;
                                 &lt;/pgrp&gt;
                              &lt;/tei:def&gt;
                        &lt;/tei:entry&gt;  
               &lt;/tei:superEntry&gt;
            &lt;/dict:defitem&gt;
</codeblock>
        </example>
        <section>
            <title>Changes</title>
            <p>2013-04-23: <ph id="change_20130423_WL">Created.</ph></p>
        </section>
    </body>
	</dita:topic>


	<xsl:template match="defterm">
		<!--  Original Target XPath:  tei:form/tei:orth   -->
		<tei:form>
			<tei:orth>
				<xsl:apply-templates select="@* | node()"/>
			</tei:orth>
		</tei:form>
	</xsl:template>


</xsl:stylesheet>