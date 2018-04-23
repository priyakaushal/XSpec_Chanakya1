<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
    xmlns:dig="http://www.lexis-nexis.com/glp/dig"
    xmlns:casedigest="http://www.lexisnexis.com/xmlschemas/content/legal/case-digest/1/"
    xmlns:person="http://www.lexisnexis.com/xmlschemas/content/shared/person/1/"
    xmlns:classify="http://www.lexisnexis.com/xmlschemas/content/shared/classification/1/"
    version="2.0" exclude-result-prefixes="dita classify person dig">

    <dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/"
        id="dig.cause-of-action_dig.action-party">
        <title>dig:cause-of-action/dig:action-party <lnpid>id-CA02DC-12630</lnpid></title>
        <body>
            <section>
                <ul>
                    <li>
                        <sourcexml>dig:cause-of-action</sourcexml> becomes
                            <targetxml>casedigest:facts/casedigest:causeofaction</targetxml>.
                            <note>Please note that in the above NL mapping,
                                <targetxml>casedigest:causeofaction</targetxml> is a direct child of
                                <targetxml>dig:body</targetxml>, so in this scenario conversion need
                            to create a wrapper(parent) element
                                <targetxml>casedigest:facts</targetxml>.</note>
                        <ul>
                            <li>
                                <sourcexml>dig:cause-of-action/dig:action-party</sourcexml> becomes
                                    <targetxml>casedigest:facts/casedigest:causeofaction/casedigest:actionparty</targetxml>.
                                    <note>Schema element
                                        <targetxml>casedigest:actionparty</targetxml> contains a
                                    required attribute <targetxml>@partyrole</targetxml>, for cases
                                    where the party role is not known, then conversion need to set
                                    the value
                                        <targetxml>casedigest:actionparty[@partyrole="unknown"]</targetxml>
                                    and rest convert accordingly.</note>
                                <p>Children of <sourcexml>dig:action-party</sourcexml> will be
                                    converted as below:</p>
                                <ul>
                                    <li>
                                        <sourcexml>dig:action-party/dig:age/age</sourcexml> becomes
                                            <targetxml>casedigest:actionparty/person:age</targetxml>. </li>
                                    <li>
                                        <sourcexml>dig:action-party/gender</sourcexml> becomes
                                            <targetxml>casedigest:actionparty/person:gender</targetxml>. </li>
                                    <li>
                                        <sourcexml>dig:action-party/occupation</sourcexml> becomes
                                            <targetxml>casedigest:actionparty/person:occupation</targetxml>.
                                            <note>Please note that Rosetta element
                                                <sourcexml>occupation</sourcexml> will be converted
                                            to schema element
                                                <targetxml>person:occupation</targetxml>, only in
                                            the scenario when <sourcexml>occupation</sourcexml>
                                            contains text matter and not any children within
                                            it.</note>
                                        <p>Please see below example:</p>
                                        <pre>

&lt;dig:cause-of-action&gt;
    .............
    .............
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
        ..............
        ..............
        &lt;casedigest:actionparty partyrole="unknown"&gt;
            &lt;person:gender&gt;Male, Male&lt;/person:gender&gt;
            &lt;person:age&gt;N/A&lt;/person:age&gt;
            &lt;person:occupation&gt;Coutts-Hairdresser; Lampreau-Chef&lt;/person:occupation&gt;
        &lt;/casedigest:actionparty&gt;
    &lt;/casedigest:causeofaction&gt;
&lt;/casedigest:facts&gt;                         
                     
                                </pre>
                                    </li>
                                    <li>
                                        <sourcexml>dig:action-party/occupation/classification</sourcexml>
                                        becomes
                                            <targetxml>casedigest:actionparty/person:person/person:bio/person:bio.detail/person:bio.employment/classify:classification</targetxml>.
                                                <p><b>Create:</b></p><p>
                                            <targetxml>person:person/person:bio/person:bio.detail/person:bio.employment</targetxml>
                                            at the place of <sourcexml>occupation</sourcexml>, but
                                            only incase of above scenario.</p>
                                        <pre>

&lt;dig:cause-of-action&gt;
    &lt;dig:action-party&gt;
        &lt;occupation&gt;
            &lt;classification classscheme="job-category"&gt;
                &lt;classitem&gt;
                    &lt;classitem-identifier&gt;
                        &lt;classname searchtype="JOB-CATEGORY"&gt;Senior Executives&lt;/classname&gt;
                    &lt;/classitem-identifier&gt;
                &lt;/classitem&gt;
            &lt;/classification&gt;
            &lt;classification classscheme="position"&gt;
                &lt;classitem&gt;
                    &lt;classitem-identifier&gt;
                        &lt;classname searchtype="POSITION"&gt;President&lt;/classname&gt;
                    &lt;/classitem-identifier&gt;
                &lt;/classitem&gt;
            &lt;/classification&gt;
        &lt;/occupation&gt;
        ............
        ............
    &lt;/dig:action-party&gt;
&lt;/dig:cause-of-action&gt;
                             
                         </pre>
                                        <b>Becomes</b>
                                        <pre>

&lt;casedigest:causeofaction&gt;
    &lt;casedigest:actionparty partyrole="unknown"&gt;
        &lt;person:person&gt;
            &lt;person:bio&gt;
                &lt;person:bio.detail&gt;
                    &lt;person:bio.employment&gt;
                        &lt;classify:classification classscheme="job-category"&gt;
                            &lt;classify:classitem&gt;
                                &lt;classify:classitem-identifier&gt;
                                    &lt;classify:classname&gt;Senior Executives&lt;/classify:classname&gt;
                                &lt;/classify:classitem-identifier&gt;
                            &lt;/classify:classitem&gt;
                        &lt;/classify:classification&gt;
                        &lt;classify:classification classscheme="position"&gt;
                            &lt;classify:classitem&gt;
                                &lt;classify:classitem-identifier&gt;
                                    &lt;classify:classname&gt;President&lt;/classify:classname&gt;
                                &lt;/classify:classitem-identifier&gt;
                            &lt;/classify:classitem&gt;
                        &lt;/classify:classification&gt;
                    &lt;/person:bio.employment&gt;
                &lt;/person:bio.detail&gt;
            &lt;/person:bio&gt;
        &lt;/person:person&gt;
        ............
        ............
    &lt;/casedigest:actionparty&gt;
&lt;/casedigest:causeofaction&gt;
                             
                         </pre>
                                    </li>
                                    <li>
                                        <sourcexml>dig:action-party/occupation/employment-duration/duration</sourcexml>
                                        becomes
                                            <targetxml>casedigest:actionparty/person:person/person:bio/person:bio.detail/person:bio.employment/bodytext/textitem/duration</targetxml>. <pre>

&lt;dig:cause-of-action&gt;
    &lt;dig:action-party&gt;
        .........
        .........
        &lt;occupation&gt;
            &lt;employment-duration&gt;
                &lt;duration searchtype="YEARS-EMPLOYED"&gt;15 years service&lt;/duration&gt;
            &lt;/employment-duration&gt;
        &lt;/occupation&gt;
    &lt;/dig:action-party&gt;
&lt;/dig:cause-of-action&gt;
                             
                         </pre>
                                        <b>Becomes</b>
                                        <pre>

&lt;casedigest:causeofaction&gt;
    &lt;casedigest:actionparty partyrole="unknown"&gt;
        ...........
        ...........
        &lt;person:person&gt;
            &lt;person:bio&gt;
                &lt;person:bio.detail&gt;
                    &lt;person:bio.employment&gt;
                        &lt;bodytext&gt;
                            &lt;textitem&gt;
                                &lt;duration&gt;15 years service&lt;/duration&gt;
                            &lt;/textitem&gt;
                        &lt;/bodytext&gt;
                    &lt;/person:bio.employment&gt;
                &lt;/person:bio.detail&gt;
            &lt;/person:bio&gt;
        &lt;/person:person&gt; 
    &lt;/casedigest:actionparty&gt;
&lt;/casedigest:causeofaction&gt;
                             
                         </pre>
                                    </li>
                                    <li>
                                        <sourcexml>dig:action-party/unemployment-duration/duration</sourcexml>
                                        becomes
                                            <targetxml>casedigest:actionparty/person:person/person:bio/person:bio.detail/person:bio.unemployment/bodytext/textitem/duration</targetxml>. <pre>

&lt;dig:action-party&gt;
    .........
    .........
    &lt;unemployment-duration&gt;
        &lt;duration&gt;18 months unemployment&lt;/duration&gt;
    &lt;/unemployment-duration&gt;
&lt;/dig:action-party&gt;
                             
                         </pre>
                                        <b>Becomes</b>
                                        <pre>

&lt;casedigest:actionparty partyrole="unknown"&gt;
    ...........
    ...........
    &lt;person:person&gt;
        &lt;person:bio&gt;
            &lt;person:bio.detail&gt;
                &lt;person:bio.unemployment&gt;
                    &lt;bodytext&gt;
                        &lt;textitem&gt;
                            &lt;duration&gt;18 months unemployment&lt;/duration&gt;
                        &lt;/textitem&gt;
                    &lt;/bodytext&gt;
                &lt;/person:bio.unemployment&gt;
            &lt;/person:bio.detail&gt;
        &lt;/person:bio&gt;
    &lt;/person:person&gt; 
&lt;/casedigest:actionparty&gt;

                         </pre>
                                    </li>
                                    <li>
                                        <note>For multiple occurances of
                                                <sourcexml>dig:cause-of-action/dig:action-facts</sourcexml>
                                            and
                                                <sourcexml>dig:cause-of-action/dig:action-party</sourcexml>
                                            create seperate
                                                <targetxml>casedigest:facts/casedigest:causeofaction</targetxml>
                                            and <targetxml>casedigest:actionparty</targetxml> for
                                            each pair of
                                                <sourcexml>dig:cause-of-action/dig:action-facts</sourcexml>
                                            and
                                                <sourcexml>dig:cause-of-action/dig:action-party</sourcexml>
                                        </note>
                                        <pre>
                             
&lt;dig:cause-of-action&gt;
    &lt;dig:action-facts&gt;
      &lt;dig:injury searchtype="INJURY-TYPE"&gt;
        &lt;p&gt;
          &lt;text&gt;Unsafe premises - Disengaged chairlift - soft tissue injuries, fractured ribs, fractured forearms, bruising, low back strain, chipped teeth,
            pulmonary contusion, fractured vertebra, foot drop, mild traumatic brain injury, post traumatic amnesia, bruising of the lung, nerve injury to arm &amp;amp;
            hand, headaches, pain in tailbone, buttock, hip, arm, neck &amp;mp; back.&lt;/text&gt;
        &lt;/p&gt;
      &lt;/dig:injury&gt;
    &lt;/dig:action-facts&gt;
    &lt;dig:action-party&gt;
      &lt;gender&gt;Male&lt;/gender&gt;
    &lt;/dig:action-party&gt;
    &lt;dig:action-facts&gt;
      &lt;dig:injury-duration&gt;Tailbone pain, arm &amp;amp; hand nerve injury - 1 year. Pain in buttock, hip, neck &amp;amp; back, headaches - ongoing.&lt;/dig:injury-duration&gt;
    &lt;/dig:action-facts&gt;
    &lt;dig:action-party&gt;
      &lt;dig:age&gt;
        &lt;age&gt;53&lt;/age&gt;
      &lt;/dig:age&gt;
      &lt;occupation&gt;Supervisor&lt;/occupation&gt;
    &lt;/dig:action-party&gt;
  &lt;/dig:cause-of-action&gt;
  
                         </pre>
                                        <b>Becomes</b>
                                        <pre>
                             
                            &lt;casedigest:facts&gt;
    &lt;casedigest:causeofaction&gt;
        &lt;casedigest:injury&gt;
            &lt;textitem&gt; Unsafe premises - Disengaged chairlift - soft tissue injuries, fractured ribs, fractured forearms, bruising, low back strain, chipped teeth,
                pulmonary contusion, fractured vertebra, foot drop, mild traumatic brain injury, post traumatic amnesia, bruising of the lung, nerve injury to arm &amp;amp;
                hand, headaches, pain in tailbone, buttock, hip, arm, neck &amp;amp; back.&lt;/textitem&gt;
        &lt;/casedigest:injury&gt;
    &lt;/casedigest:causeofaction&gt;
    &lt;casedigest:causeofaction&gt;
        &lt;casedigest:actionparty partyrole="unknown"&gt;
            &lt;person:gender&gt; Male&lt;/person:gender&gt;
        &lt;/casedigest:actionparty&gt;
    &lt;/casedigest:causeofaction&gt;
    &lt;casedigest:causeofaction&gt;
        &lt;casedigest:injuryduration&gt;&lt;duration&gt; Tailbone pain, arm &amp;amp; hand nerve injury - 1 year. Pain in buttock, hip, neck &amp;amp; back, headaches - ongoing.&lt;/duration&gt;&lt;/casedigest:injuryduration&gt;
    &lt;/casedigest:causeofaction&gt;
    &lt;casedigest:causeofaction&gt;
        &lt;casedigest:actionparty partyrole="unknown"&gt;
            &lt;person:age&gt;53&lt;/person:age&gt;
            &lt;person:occupation&gt; Supervisor &lt;/person:occupation&gt;
        &lt;/casedigest:actionparty&gt;
    &lt;/casedigest:causeofaction&gt;
&lt;/casedigest:facts&gt;
 
                         </pre>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </li>

                </ul>
            </section>
            <section>
                <title>Changes</title>
                <p>
                    <ph id="change_20140516_AS">casedigest:injuryduration mapping in example...<b>DB
                            item #210</b></ph>
                </p>
                <p>
                    <ph id="change_20140415_AS">Issue related to dig:cause-of-action...<b>DB item
                            #175</b></ph>
                </p>
            </section>
        </body>
    </dita:topic>

    <!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
    <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA02-Case_Summaries\CA02DC_DIGESTDOC_to_casedigest\dig.cause-of-action_dig.action-party.dita  -->

    <!--Vikas Rohilla : Updated the template Initial -->
    <xsl:template match="dig:cause-of-action">
        <casedigest:facts>
            <xsl:for-each-group select="*" group-adjacent="if(name(.)='dig:action-facts') then 'facts' else 'party'">
                <xsl:choose>
                    <xsl:when test="current-grouping-key()='facts'">
                        <casedigest:causeofaction>
                            <xsl:apply-templates select="current-group()"/>
                        </casedigest:causeofaction>
                    </xsl:when>
                    <xsl:when test="current-grouping-key()='party'">
                        <casedigest:causeofaction>
                            <xsl:apply-templates select="current-group()"/>
                        </casedigest:causeofaction>
                    </xsl:when>
                </xsl:choose>
            </xsl:for-each-group>
        </casedigest:facts>
    </xsl:template>
    
    <xsl:template match="dig:action-party/gender">
        <person:gender>
            <xsl:apply-templates select="@* | node()"/>
        </person:gender>
    </xsl:template>

  



</xsl:stylesheet>