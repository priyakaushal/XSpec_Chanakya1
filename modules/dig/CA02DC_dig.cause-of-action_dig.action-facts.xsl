<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
    xmlns:dig="http://www.lexis-nexis.com/glp/dig"
    xmlns:glp="http://www.lexis-nexis.com/glp"
    xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:casedigest="http://www.lexisnexis.com/xmlschemas/content/legal/case-digest/1/"
    xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/" version="2.0"
    exclude-result-prefixes="dita glp dig casedigest case">

    <dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/"
        id="dig.cause-of-action_dig.action-facts">
        <title>dig:cause-of-action/dig:action-facts <lnpid>id-CA02DC-12629</lnpid></title>
        <body>
            <section>
                <ul>
                    <li>
                        <sourcexml>dig:cause-of-action/dig:action-facts</sourcexml> becomes
                            <targetxml>casedigest:facts/casedigest:causeofaction</targetxml>.
                            <note>Please note that in the above NL mapping,
                                <targetxml>casedigest:causeofaction</targetxml> is a child of
                                <targetxml>casedigest:facts</targetxml>.</note>
                        <p>The children of
                                <sourcexml>dig:cause-of-action/dig:action-facts</sourcexml> can be
                            converted as below:</p>
                        <ul>
                            <li>
                                <sourcexml>dig:cause-of-action/dig:action-facts/dig:cause-date</sourcexml>
                                becomes
                                    <targetxml>casedigest:facts/casedigest:causeofaction/casedigest:causedate</targetxml>.
                                    <note>In Rosetta scenario:
                                        <sourcexml>dig:cause-date/date</sourcexml>, element
                                        <sourcexml>date</sourcexml> will be converted to
                                        <targetxml>date-text</targetxml>.</note>
                                <pre>

&lt;dig:cause-of-action&gt;
    &lt;dig:action-facts&gt;
        &lt;dig:cause-date&gt;
            &lt;date&gt;June 26, 1997.&lt;/date&gt;
        &lt;/dig:cause-date&gt;
    &lt;/dig:action-facts&gt;
&lt;/dig:cause-of-action&gt;                         
                         
                         <b>Becomes</b>                         

&lt;casedigest:facts&gt;
    &lt;casedigest:causeofaction&gt;
        &lt;casedigest:causedate&gt;
            &lt;date-text&gt;June 26, 1997.&lt;/date-text&gt;
        &lt;/casedigest:causedate&gt;
    &lt;/casedigest:causeofaction&gt;
&lt;/casedigest:facts&gt;                         
                     </pre>
                            </li>
                            <li>
                                <sourcexml>dig:cause-of-action/dig:action-facts/dig:injury</sourcexml>
                                becomes
                                    <targetxml>casedigest:facts/casedigest:causeofaction/casedigest:injury</targetxml>.
                                    <note>If, Rosetta element <sourcexml>dig:injury</sourcexml>
                                    contains scenario:
                                        <sourcexml>dig:cause-of-action/dig:action-facts/dig:injury/p/text</sourcexml>,
                                    then it will be mapped to
                                        <targetxml>casedigest:facts/casedigest:causeofaction/casedigest:injury/textitem</targetxml>,
                                    it means children <sourcexml>p/text</sourcexml> will become
                                        <targetxml>textitem</targetxml> under
                                        <targetxml>casedigest:injury</targetxml>.</note>
                            </li>
                            <li>
                                <sourcexml>dig:cause-of-action/dig:action-facts/dig:injury-duration</sourcexml>
                                becomes
                                    <targetxml>casedigest:facts/casedigest:causeofaction/casedigest:injuryduration/duration</targetxml>.
                                It means in this scenario Rosetta element
                                    <sourcexml>dig:injury-duration</sourcexml> will become
                                    <targetxml>casedigest:injuryduration/duration</targetxml>.
                                <pre>

&lt;dig:cause-of-action&gt;
    &lt;dig:action-facts&gt;
        &lt;dig:injury searchtype="INJURY-TYPE"&gt;
            &lt;p&gt;
                &lt;text&gt;Assault/Battery (Plaintiff Lampreau) - very serious blow to the back
                    of the head, injury to the face, minor forgetfulness, headaches,
                    emotional scars. Assault/Battery (Plaintiff Coutts) - injury to the back
                    of the head, emotional scars.&lt;/text&gt;
            &lt;/p&gt;
        &lt;/dig:injury&gt;
        &lt;dig:injury-duration&gt;Plaintiff Lampreau: head &amp;amp; face injuries - healed before
            trial; forgetfulness, headaches, emotional scars - ongoing. Plaintiff Coutts:
            head injury - healed before trial; emotional scars -
            ongoing.&lt;/dig:injury-duration&gt;
    &lt;/dig:action-facts&gt;
    &lt;dig:action-party&gt;
        &lt;gender&gt;Male, Male&lt;/gender&gt;
        &lt;dig:age&gt;
            &lt;age&gt;N/A&lt;/age&gt;
        &lt;/dig:age&gt;
        &lt;occupation&gt;Coutts-Hairdresser; Lampreau-Chef&lt;/occupation&gt;
    &lt;/dig:action-party&gt;
&lt;/dig:cause-of-action&gt;                         
                      
                         <b>Becomes</b>

&lt;casedigest:facts&gt;
    &lt;casedigest:causeofaction&gt;
        &lt;casedigest:injury&gt;
            &lt;textitem&gt;Assault/Battery (Plaintiff Lampreau) - very serious blow to the back
                    of the head, injury to the face, minor forgetfulness, headaches,
                    emotional scars. Assault/Battery (Plaintiff Coutts) - injury to the back
                    of the head, emotional scars.&lt;/textitem&gt;
        &lt;/casedigest:injury&gt;
            &lt;casedigest:injuryduration&gt;
                &lt;duration&gt;Plaintiff Lampreau: head &amp;amp; face injuries - healed before
            trial; forgetfulness, headaches, emotional scars - ongoing. Plaintiff Coutts:
            head injury - healed before trial; emotional scars -
            ongoing.&lt;/duration&gt;
            &lt;/casedigest:injuryduration&gt;
        &lt;casedigest:actionparty partyrole="unknown"&gt;
            &lt;person:gender&gt;Male, Male&lt;/person:gender&gt;
            &lt;person:age&gt;N/A&lt;/person:age&gt;
            &lt;person:occupation&gt;Coutts-Hairdresser; Lampreau-Chef&lt;/person:occupation&gt;
        &lt;/casedigest:actionparty&gt;
    &lt;/casedigest:causeofaction&gt;
&lt;/casedigest:facts&gt;                         
                     
                     </pre>
                            </li>
                        </ul>
                    </li>
                </ul>
            </section>
            <section>
                <title>Changes</title>
                <p>2014-04-09: <ph id="change_20140409_SEP">Differentiate
                            <targetxml>casedigest:injuryduration</targetxml> and
                            <targetxml>casedigest:injury</targetxml>
                        <b>R4.5 Issue #1193</b></ph>.</p>
                <p>2013-02-21: <ph id="change_20130221_DSF">Added a note about mapping sibling
                            <sourcexml>dig:injury</sourcexml> and
                            <sourcexml>dig:injury-duration</sourcexml> elements to a single
                            <targetxml>casedigest:injury</targetxml>. Updated the example to reflect
                        this change to the mapping.</ph></p>
            </section>
        </body>
    </dita:topic>

    <!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
    <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA02-Case_Summaries\CA02DC_DIGESTDOC_to_casedigest\dig.cause-of-action_dig.action-facts.dita  -->


    <xsl:template match="dig:cause-of-action/dig:action-facts">
        <xsl:apply-templates select="@* | node()"/>
    </xsl:template>

    <xsl:template match="dig:cause-of-action/dig:action-facts/dig:injury">
        <casedigest:injury>
            <xsl:apply-templates select="@* | node()"/>
        </casedigest:injury>
    </xsl:template>

    <xsl:template match="dig:injury">
        <casedigest:injury>
            <textitem>
                <xsl:apply-templates select="@* | node()"/>
            </textitem>
        </casedigest:injury>
    </xsl:template>

    <xsl:template match="text[parent::p/parent::dig:damages-description|parent::p/parent::dig:injury]">
        <textitem>
            <xsl:apply-templates select="@* | node()"/>
        </textitem>
    </xsl:template>
    
    <xsl:template match="p/text[ancestor::glp:note or ancestor::case:subhist]" priority="2">
        <text>
            <xsl:apply-templates select="@* | node()"/>
        </text>
    </xsl:template>

    <xsl:template match="dig:damages-description/p[child::text]|dig:injury/p[child::text]" priority="3">
        <xsl:apply-templates select="@* | node()"/>    
    </xsl:template>


    <xsl:template match="dig:injury-duration">
        <casedigest:injuryduration>
            <duration>
                <xsl:apply-templates select="@* | node()"/>
            </duration>
        </casedigest:injuryduration>
    </xsl:template>

    <xsl:template match="dig:injury/@searchtype"/>

</xsl:stylesheet>
