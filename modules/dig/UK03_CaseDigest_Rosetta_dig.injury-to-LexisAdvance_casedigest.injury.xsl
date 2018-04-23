<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:dig="http://www.lexis-nexis.com/glp/dig" xmlns:casedigest="http://www.lexisnexis.com/xmlschemas/content/legal/case-digest/1/"
    xmlns:classify="http://www.lexisnexis.com/xmlschemas/content/shared/classification/1/" xmlns:topic="urn:x-lexisnexis:content:topic:global:1" xmlns:guid="urn:x-lexisnexis:content:guid:global:1" version="2.0" exclude-result-prefixes="dita dig">

    <dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_dig.injury-to-LexisAdvance_casedigest.injury">
        <title>dig:injury-to-casedigest:injury <lnpid>id-UK03-27448</lnpid></title>
        <body>
            <section>
                <ul>
                    <li>
                        <sourcexml>dig:cause-of-action/dig:action-facts/dig:injury</sourcexml> becomes <targetxml>casedigest:facts/casedigest:causeofaction/casedigest:injury</targetxml>. The child element can be converted as follows: <ul>
                            <li> Create <targetxml>classify:classification</targetxml> within <targetxml>casedigest:facts/casedigest:causeofaction/casedigest:injury</targetxml>. </li>
                            <li>
                                <sourcexml>dig:injury/dig:injury-class/dig:injury-class-name</sourcexml> becomes <targetxml>casedigest:injury/classify:classification/classify:classitem/classify:classitem-identifier/classify:classname</targetxml>.
                                    <note>Create the two optional attributes <targetxml>@namescheme='injury-type'</targetxml> and <targetxml>@normval</targetxml> attribute inside the <targetxml>classify:classname</targetxml> in target document and capture
                                    the <targetxml>@normval</targetxml> attribute value from <sourcexml>dig:action-facts/@service</sourcexml>.</note></li>
                        </ul>
                        <pre>
&lt;dig:body>
    &lt;dig:cause-of-action>
      &lt;dig:action-facts searchtype="MAJOR-INJURY">
            &lt;dig:injury>
                &lt;dig:injury-class>
                    &lt;dig:injury-class-name>Head Injuries&lt;/dig:injury-class-name>
                    &lt;dig:injury-class>
                        &lt;dig:injury-class-name>Brain Damage&lt;/dig:injury-class-name>
                    &lt;/dig:injury-class>
                &lt;/dig:injury-class>
            &lt;/dig:injury>
            &lt;dig:injury-duration>Permanent &lt;/dig:injury-duration>
        &lt;/dig:action-facts>      
    &lt;/dig:cause-of-action>
  &lt;/dig:body>
&lt;/DIGESTDOC>

<b>Becomes</b>
&lt;casedigest:casedigest>
  &lt;casedigest:body>
&lt;casedigest:facts>
    &lt;casedigest:causeofaction>
        &lt;casedigest:injury>
            &lt;classify:classification>
                &lt;classify:classitem>
                    &lt;classify:classitem-identifier>
                        &lt;classify:classname namescheme="injury-type" normval="MAJOR-INJURY">Head Injuries&lt;/classify:classname>
                    &lt;/classify:classitem-identifier>
                    &lt;classify:classitem>
                        &lt;classify:classitem-identifier>
                            &lt;classify:classname namescheme="injury-type" normval="MAJOR-INJURY">Brain Damage&lt;/classify:classname>
                        &lt;/classify:classitem-identifier>
                    &lt;/classify:classitem>
                &lt;/classify:classitem>
            &lt;/classify:classification>
        &lt;/casedigest:injury>
        &lt;casedigest:injuryduration>Permanent &lt;/casedigest:injuryduration>
    &lt;/casedigest:causeofaction>
  &lt;/casedigest:facts>
&lt;/casedigest:body>  
&lt;/casedigest:casedigest>
</pre>
                    </li>
                    <li>If source document is having the scenario "<sourcexml>DIGESTDOC/dig:body/dig:cause-of-action/dig:action-facts/dig:injury/classification/classitem/classitem-identifier/classname</sourcexml>" then it becomes
                            "<targetxml>casedigest:casedigest/casedigest:body/casedigest:facts/casedigest:causeofaction/casedigest:injury/classify:classification/classify:classitem/classify:classitem-identifier/classify:classname</targetxml>". <note>
                            <p>Create the two optional attributes <targetxml>@namescheme='injury-type'</targetxml> and <targetxml>@normval</targetxml> attribute inside the <targetxml>classify:classname</targetxml> in target document and capture the
                                    <targetxml>@normval</targetxml> attribute value from <sourcexml>dig:action-facts/@searchtype</sourcexml>. Refer the below input and output markup: </p>
                        </note>
                        <pre>
&lt;DIGESTDOC>
    &lt;dig:body>
        ... 
        &lt;dig:cause-of-action>
            &lt;dig:action-facts searchtype="CLAIM-TYPE">
                &lt;dig:injury>
                    &lt;classification>
                        &lt;classitem>
                            &lt;classitem-identifier>
                                &lt;classname>Occupiers' Liability&lt;/classname>
                            &lt;/classitem-identifier>
                        &lt;/classitem>
                    &lt;/classification>
                &lt;/dig:injury>
            &lt;/dig:action-facts>
        &lt;/dig:cause-of-action> 
        ... 
    &lt;/dig:body>
&lt;/DIGESTDOC>

<b>Becomes</b>
&lt;casedigest:casedigest>
    &lt;casedigest:body>
        ...
        &lt;casedigest:facts>
            &lt;casedigest:causeofaction>
                &lt;casedigest:injury>
                    &lt;classify:classification>
                        &lt;classify:classitem>
                            &lt;classify:classitem-identifier>
                                &lt;classify:classname namescheme="injury-type" normval="CLAIM-TYPE">Occupiers' Liability&lt;/classify:classname>
                            &lt;/classify:classitem-identifier>
                        &lt;/classify:classitem>
                    &lt;/classify:classification>
                &lt;/casedigest:injury>
            &lt;/casedigest:causeofaction>
        &lt;/casedigest:facts>
        ...
    &lt;/casedigest:body>
&lt;/casedigest:casedigest>

</pre>
                    </li>
                    <li>If input scenario "<sourcexml>dig:injury/dig:injury-class/dig:injury-class/dig:injury-class-name</sourcexml>" then it becomes
                            "<targetxml>/casedigest:injury/classify:classification/classify:classitem/classify:classitem-identifier/classify:classname</targetxml>". <note>
                            <p>Create the two optional attributes <targetxml>@namescheme='injury-type'</targetxml> and <targetxml>@normval</targetxml> attribute inside the <targetxml>classify:classname</targetxml> in target document and capture the
                                    <targetxml>@normval</targetxml> attribute value from <sourcexml>dig:action-facts/@searchtype</sourcexml>. Refer the below input and output markup: </p>
                        </note>
                        <pre>

&lt;dig:action-facts searchtype="MAJOR-INJURY">
            &lt;dig:injury>
                &lt;dig:injury-class>
                    &lt;dig:injury-class-name>Head Injuries&lt;/dig:injury-class-name>
                    &lt;dig:injury-class>
                        &lt;dig:injury-class-name>Brain Damage&lt;/dig:injury-class-name>
                    &lt;/dig:injury-class>
                &lt;/dig:injury-class>
            &lt;/dig:injury>
            ....
&lt;/dig:action-facts>

<b>Becomes</b>

&lt;casedigest:facts>
    &lt;casedigest:causeofaction>
        &lt;casedigest:injury>
            &lt;classify:classification>
                &lt;classify:classitem>
                    &lt;classify:classitem-identifier>
                        &lt;classify:classname namescheme="injury-type" normval="MAJOR-INJURY">Head Injuries&lt;/classify:classname>
                    &lt;/classify:classitem-identifier>
                    &lt;classify:classitem>
                        &lt;classify:classitem-identifier>
                            &lt;classify:classname namescheme="injury-type" normval="MAJOR-INJURY">Brain Damage&lt;/classify:classname>
                        &lt;/classify:classitem-identifier>
                    &lt;/classify:classitem>
                &lt;/classify:classitem>
            &lt;/classify:classification>
        &lt;/casedigest:injury>
       ....
    &lt;/casedigest:causeofaction>
&lt;/casedigest:facts>

</pre>
                        <note>The nesting of a "<targetxml>classify:classitem</targetxml>" target markup in NL document should be according to the hierarchy of source markup "<sourcexml>dig:injury-class</sourcexml>".</note>
                    </li>
                </ul>
                <title>Changes</title>
                <p>2017-04-11: <ph id="change_20170411_SS">Updated the instruction for adding new attributes <targetxml>@normval</targetxml> and <targetxml>namescheme</targetxml> inside the <targetxml>classify:classname</targetxml> element, value taken
                        from <sourcexml>dig:action-facts@searchtype</sourcexml> [VSTS - 243138].</ph></p>
                <p>2016-03-17: <ph id="change_20160317_SS">Added instruction for adding new attribute <targetxml>@namescheme</targetxml> inside the <targetxml>classify:classname</targetxml> element and value taken from
                            <sourcexml>dig:action-facts@searchtype</sourcexml> OR <sourcexml>dig:injury-class@searchtype</sourcexml>.</ph></p>
                <p>2016-03-09: <ph id="change_20160309_SS">Added instruction for handling scenario "<sourcexml>dig:injury/dig:injury-class/dig:injury-class/dig:injury-class-name</sourcexml>". RFA #2793</ph></p>
                <p>2016-03-08: <ph id="change_20160308_SS">Added instruction for handling scenario "<sourcexml>dig:cause-of-action/dig:action-facts/dig:injury/classification/classitem/classitem-identifier/classname</sourcexml>". RFA #2790</ph></p>
                <p>2013-02-27: <ph id="change_20130227_RMS">Added sample mapping for multiple <sourcexml>dig:injury-class-name</sourcexml> within <sourcexml>dig:injury-class</sourcexml>.</ph>
                </p>
            </section>
        </body>
    </dita:topic>

    <!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
    <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK03_CaseDigest\Rosetta_dig.injury-to-LexisAdvance_casedigest.injury.dita  -->


    <xsl:template match="dig:injury">
        <casedigest:injury>
            <xsl:apply-templates/>
        </casedigest:injury>
    </xsl:template>

    <xsl:template match="classification[parent::dig:injury]">
        <classify:classification>
            <xsl:apply-templates/>
        </classify:classification>
    </xsl:template>

    <xsl:template match="classitem[ancestor::dig:injury]">
        <classify:classitem>
            <xsl:apply-templates select="classitem-identifier"/>
            <topic:topicReference guid:guid="{classitem-identifier/classcode[@codescheme='PGUID']}"/>
            <xsl:apply-templates select="node() except classitem-identifier"/>
        </classify:classitem>
    </xsl:template>

    <xsl:template match="classitem-identifier[ancestor::dig:injury]">
        <classify:classitem-identifier>
            <classify:classname namescheme="injury-type" normval="{./ancestor::dig:action-facts/@searchtype}">
                <xsl:value-of select="classname"/>
            </classify:classname>
        </classify:classitem-identifier>
    </xsl:template>

</xsl:stylesheet>
