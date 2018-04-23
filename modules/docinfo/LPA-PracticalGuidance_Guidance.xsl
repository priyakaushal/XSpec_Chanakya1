<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" xmlns:glp="http://www.lexis-nexis.com/glp" xmlns:jurisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/jurisdiction-info/1/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" xmlns:seclaw="http://www.lexisnexis.com/xmlschemas/content/legal/secondary-law/1/" version="2.0" exclude-result-prefixes="dita docinfo glp">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="LPA-PracticalGuidance_Guidance">
    <title>Guidance <lnpid>id-CCCC-10176</lnpid></title>
    <body>
        <section>
            <title>Introduction</title>
            <p>The category of "guidance" encompasses several document sources that can most easily be identified via the text found in
                    <sourcexml>/COMMENTARYDOC/docinfo/docinfo:selector</sourcexml>.</p>
        </section>
    </body>
    <topic id="docinfo-selector_guidance">
        <title>docinfo:selector <lnpid>id-CCCC-10177</lnpid></title>
        <topic id="selector-guidance_seclaw-seclaw">
            <title>seclaw:seclaw/@seclawtype <lnpid>id-CCCC-10178</lnpid></title>
            <body>
                <section>
                    <title>Instructions</title>
                    <p>The following values in <sourcexml>docinfo:selector</sourcexml> indicate guidance content: <ul>
                            <li>COMMENTARY</li>
                            <li>Excerpts</li>
                            <li>Guidance</li>
                            <li>Overview</li>
                            <li>Checklist</li>
                        </ul></p>
                    <p>Once guidance content has been identified, <targetxml>seclaw:seclaw/@seclawtype</targetxml> should be populated with the value
                        "practicalguidance".</p>
                    <note>If the top <sourcexml>level</sourcexml> element in the source has a value of "landingpage" in the attribute
                            <sourcexml>leveltype</sourcexml>, this takes precedence over the value in <sourcexml>docinfo:selector</sourcexml> and the
                        Landing Page instructions should be used for mapping the document.</note>
                </section>
            </body>
        </topic>
    </topic>
    <topic id="guidance_general">
        <title>Guidance: General Mappings <lnpid>id-CCCC-10179</lnpid></title>
        <body>
            <section>
                <title>Instructions</title>
                <p>These general mappings apply to all of the mapping scenarios for Guidance. These instructions override or augment any previous
                    instructions in this document.</p>
            </section>
        </body>
        <topic id="guidance_level">
            <title>level <lnpid>id-CCCC-10180</lnpid></title>
            <body>
                <section>
                    <title>Instructions</title>
                    <p><sourcexml>level</sourcexml> becomes <targetxml>seclaw:level</targetxml>.</p>
                    <p>If <sourcexml>docinfo:selector</sourcexml> has a value of "Excerpts", then the following mappings for
                            <sourcexml>level/@leveltype</sourcexml> should be used: <ul>
                            <li><sourcexml>level[@leveltype="appendix"]</sourcexml> becomes
                                <targetxml>seclaw:level[@leveltype="appendix"]</targetxml></li>
                            <li><sourcexml>level[@leveltype="chapter"]</sourcexml> becomes
                                <targetxml>seclaw:level[@leveltype="chapter"]</targetxml></li>
                            <li><sourcexml>level[@leveltype="form"]</sourcexml> becomes <targetxml>seclaw:level[@leveltype="form"]</targetxml></li>
                            <li><sourcexml>level[@leveltype="group"]</sourcexml> becomes
                                <targetxml>seclaw:level[@leveltype="division"]</targetxml></li>
                            <li><sourcexml>level[@leveltype="para0"]</sourcexml> becomes
                                <targetxml>seclaw:level[@leveltype="paragraph"]</targetxml></li>
                            <li><sourcexml>level[@leveltype="subpara0"]</sourcexml> becomes
                                    <targetxml>seclaw:level[@leveltype="subparagraph"]</targetxml></li>
                            <li><sourcexml>level[@leveltype="comm.chap"]</sourcexml> becomes
                                <targetxml>seclaw:level[@leveltype="chapter"]</targetxml></li>
                            <li><sourcexml>level[@leveltype="outline.grp"]</sourcexml> becomes
                                    <targetxml>seclaw:level[@leveltype="chapter"]</targetxml></li>
                            <li><sourcexml>level[@leveltype="guidecard"]</sourcexml> becomes
                                    <targetxml>seclaw:level[@leveltype="guidecard"]</targetxml></li>
                            <li><sourcexml>level[@leveltype="prac.dec"]</sourcexml> becomes
                                    <targetxml>seclaw:level[@leveltype="unclassified"]</targetxml></li>
                            <li><sourcexml>level[@leveltype="guidecard.group"]</sourcexml> becomes
                                    <targetxml>seclaw:level[@leveltype="guidecardgroup"]</targetxml></li>
                            <li><sourcexml>level[@leveltype="outline"]</sourcexml> becomes
                                <targetxml>seclaw:level[@leveltype="topic"]</targetxml></li>
                            <li><sourcexml>level[@leveltype="misc.lst.table"]</sourcexml> becomes
                                    <targetxml>seclaw:level[@leveltype="introduction"]</targetxml></li>
                            <li><sourcexml>level[@leveltype="preface"]</sourcexml> becomes
                                    <targetxml>seclaw:level[@leveltype="introduction"]</targetxml></li>
                            <li><sourcexml>level[@leveltype="acknowledgment"]</sourcexml> becomes
                                    <targetxml>seclaw:level[@leveltype="introduction"]</targetxml></li>
                            <li><sourcexml>level[@leveltype="foreword"]</sourcexml> becomes
                                    <targetxml>seclaw:level[@leveltype="introduction"]</targetxml></li>
                            <li><sourcexml>level[@leveltype="pubnote"]</sourcexml> becomes
                                    <targetxml>seclaw:level[@leveltype="introduction"]</targetxml></li>
                            <li><sourcexml>level[@leveltype="comm.att"]</sourcexml> becomes
                                <targetxml>seclaw:level[@leveltype="annex"]</targetxml></li>
                            <li><sourcexml>level[@leveltype="comm.att.grp"]</sourcexml> becomes
                                    <targetxml>seclaw:level[@leveltype="annex"]</targetxml></li>
                            <li><sourcexml>level[@leveltype="comm.intro"]</sourcexml> becomes
                                    <targetxml>seclaw:level[@leveltype="introduction"]</targetxml></li>
                            <li><sourcexml>level[@leveltype="corp.chap.front"]</sourcexml> becomes
                                    <targetxml>seclaw:level[@leveltype="introduction"]</targetxml></li>
                        </ul></p>
                    <p>If <sourcexml>docinfo:selector</sourcexml> has a value of "Excerpts", but <sourcexml>level/@leveltype</sourcexml> is not
                        populated, then the value of <targetxml>seclaw:level/@leveltype</targetxml> should be set to "topic".</p>
                  <p id="leveltype_when_not_an_excerpt">If <sourcexml>docinfo:selector</sourcexml> has a value other than "Excerpts":<ul>
                      <li>If the value of <sourcexml>level/@leveltype</sourcexml> is "comm13",
                "comm21", "comm30", "comm45" then the value of
                  <targetxml>seclaw:level/@leveltype</targetxml> should be set according to the
                instructions given on <xref href="LPA-PracticalGuidance_Body.dita#LPA-PracticalGuidance-Body/LPA-PracticalGuidance-Body-leveltype">here</xref> for those values. A <targetxml>seclaw:level/seclaw:levelinfo</targetxml>
                containing a <targetxml>meta/metaitemto</targetxml> element must also be created as
                described in those instructions.</li>
                      <li>If the value of <sourcexml>level/@leveltype</sourcexml> is not one of the
                above listed values, then <targetxml>seclaw:level/@leveltype</targetxml> should be
                set to "topic" and a <targetxml>meta/metaitem</targetxml> element should be
                  <b>not</b> be created.</li>
                    </ul>
                      </p>
                    <pre>

&lt;comm:body&gt;
    &lt;level&gt;...&lt;/level&gt;
&lt;/comm:body&gt;

<b>Becomes</b>

&lt;seclaw:body&gt;
    &lt;seclaw:level leveltype="topic"&gt;...&lt;/seclaw:level&gt;
&lt;/seclaw:body&gt;

                    </pre>
                    <p><sourcexml>level/@id</sourcexml> becomes <targetxml>seclaw:level/@xml:id</targetxml>.</p>
                    <p>If <sourcexml>level/@leveltype</sourcexml> has a value of "PG_Jurisdiction" and <sourcexml>level/@id</sourcexml> is populated,
                        then <targetxml>seclaw:level/seclaw:levelinfo</targetxml> should be created and placed after
                            <targetxml>seclaw:level/seclaw:heading</targetxml>. The children of <targetxml>seclaw:levelinfo</targetxml> should be
                        populated as follows:<ul>
                            <li>Create <targetxml>seclaw:levelinfo/jurisinfo:jurisdiction</targetxml>
                                <ul>
                                    <li>Create <targetxml>jurisinfo:jurisdiction/jurisinfo:location</targetxml>
                                        <ul>
                                            <li>If <sourcexml>level/@id</sourcexml> has a value that begins with one of the following strings, then
                                                create <targetxml>jurisinfo:location/location:state</targetxml> and place the value of
                                                    <sourcexml>level/@id</sourcexml> inside this element, excluding any digits at the end of the string.<ul>
                                                    <li>NSW</li>
                                                    <li>QLD</li>
                                                    <li>SA</li>
                                                    <li>TAS</li>
                                                    <li>VIC</li>
                                                    <li>WA</li>
                                                </ul></li>
                                            <li>If <sourcexml>level/@id</sourcexml> has a value that begins with one of the following strings, then
                                                create <targetxml>jurisinfo:location/location:territory</targetxml> and place the value of
                                                    <sourcexml>level/@id</sourcexml> inside this element, excluding any digits at the end of the string.<ul>
                                                    <li>ACT</li>
                                                    <li>NT</li>
                                                </ul></li>
                                            <li>If <sourcexml>level/@id</sourcexml> has a value that begins with one of the following strings, then
                                                create <targetxml>jurisinfo:location/location:country</targetxml> and place the value of
                                                    <sourcexml>level/@id</sourcexml> inside this element, excluding any digits at the end of the string.<ul>
                                                    <li>CTH</li>
                                                </ul></li>
                                        </ul></li>
                                </ul></li>
                        </ul></p>
                    <pre>
              
&lt;level id="QLD1" leveltype="PG_Jurisdiction"&gt;
    &lt;heading&gt;
        &lt;title&gt;Queensland&lt;/title&gt;
    &lt;/heading&gt;
    &lt;bodytext&gt;
        &lt;p&gt;
            &lt;text&gt;There is currently no legislation on the regulation of assisted reproductive treatment in Queensland.&lt;/text&gt;
        &lt;/p&gt;
    &lt;/bodytext&gt;
&lt;/level&gt;

<b>Becomes</b>

&lt;seclaw:level leveltype="topic" xml:id="QLD1"&gt;
    &lt;heading&gt;
        &lt;title&gt;Queensland&lt;/title&gt;
    &lt;/heading&gt;
    &lt;seclaw:levelinfo&gt;
        &lt;jurisinfo:jurisdiction&gt;
            &lt;jurisinfo:location&gt;
                &lt;location:state&gt;QLD&lt;/location:state&gt;
            &lt;/jurisinfo:location&gt;
        &lt;/jurisinfo:jurisdiction&gt;
    &lt;/seclaw:levelinfo&gt;
    &lt;seclaw:bodytext&gt;
        &lt;p&gt;
            &lt;text&gt;There is currently no legislation on the regulation of assisted reproductive treatment in Queensland.&lt;/text&gt;
        &lt;/p&gt;
    &lt;/seclaw:bodytext&gt;
&lt;/seclaw:level&gt;

                    </pre>
                    <p>If <sourcexml>level/@id</sourcexml> has a compound value that consists of 2 or more of the jurisdiction values listed above,
                        then the following instructions should be followed: <ul>
                            <li>Create <targetxml>seclaw:level/seclaw:levelinfo</targetxml></li>
                            <li>For each jurisdiction identified in the compound value in <sourcexml>level/@id</sourcexml> create
                                    <targetxml>seclaw:levelinfo/jurisinfo:jurisdiction/jurisinfo:location</targetxml>
                                <ul>
                                    <li>If one of the following jurisdictions is identified, then create
                                            <targetxml>jurisinfo:location/location:state</targetxml> populate it with the value of the individual jurisdiction<ul>
                                            <li>NSW</li>
                                            <li>QLD</li>
                                            <li>SA</li>
                                            <li>TAS</li>
                                            <li>VIC</li>
                                            <li>WA</li>
                                        </ul></li>
                                    <li>If one of the following jurisdictions is identified, then create
                                            <targetxml>jurisinfo:location/location:territory</targetxml> populate it with the value of the individual jurisdiction<ul>
                                            <li>ACT</li>
                                            <li>NT</li>
                                        </ul></li>
                                    <li>If one of the following jurisdictions is identified, then create
                                            <targetxml>jurisinfo:location/location:location:country</targetxml> populate it with the value of the
                                        individual jurisdiction<ul>
                                            <li>CTH</li>
                                        </ul></li>
                                </ul></li>
                        </ul></p>
                    <pre>

&lt;level id="NSWQLD1" leveltype="PG_Jurisdiction"&gt;
    &lt;heading&gt;
        &lt;title&gt;New South Wales and Queensland&lt;/title&gt;
    &lt;/heading&gt;
    &lt;bodytext&gt;
        &lt;p&gt;
            &lt;text&gt;However, landowners may be required to erect or repair fencing in a number of circumstances. Obligations in relation to fencing may
                be enforced:&lt;/text&gt;
        &lt;/p&gt;
        ...
    &lt;/bodytext&gt;
&lt;/level&gt;

<b>Becomes</b>

&lt;seclaw:level leveltype="topic" xml:id="NSWQLD1"&gt;
    &lt;heading&gt;
        &lt;title&gt;New South Wales and Queensland&lt;/title&gt;
    &lt;/heading&gt;
    &lt;seclaw:levelinfo&gt;
        &lt;jurisinfo:jurisdiction&gt;
            &lt;jurisinfo:location&gt;
                &lt;location:state&gt;NSW&lt;/location:state&gt;
            &lt;/jurisinfo:location&gt;
        &lt;/jurisinfo:jurisdiction&gt;
        &lt;jurisinfo:jurisdiction&gt;
            &lt;jurisinfo:location&gt;
                &lt;location:state&gt;QLD&lt;/location:state&gt;
            &lt;/jurisinfo:location&gt;
        &lt;/jurisinfo:jurisdiction&gt;
    &lt;/seclaw:levelinfo&gt;
    &lt;seclaw:bodytext&gt;
        &lt;p&gt;
            &lt;text&gt;However, landowners may be required to erect or repair fencing in a number of circumstances. Obligations in relation to fencing may
                be enforced:&lt;/text&gt;
        &lt;/p&gt;
        ...
    &lt;/seclaw:bodytext&gt;
&lt;/seclaw:level&gt;

                    </pre>
                    <p>If <sourcexml>level/@leveltype</sourcexml> has a value that starts with "comm", then
                            <targetxml>seclaw:level/seclaw:levelinfo</targetxml> should be created and placed after
                            <targetxml>seclaw:level/seclaw:heading</targetxml>, assuming that one exists. Inside
                            <targetxml>seclaw:levelinfo</targetxml> create <targetxml>meta/metaitem</targetxml>. Populate the attributes of
                            <targetxml>metaitem</targetxml> as follows:<ul>
                            <li>Place "rosettastyle" in the value of <targetxml>metaitem/@name</targetxml>.</li>
                            <li>Place the value of <sourcexml>level/@leveltype</sourcexml> in <targetxml>metaitem/@value</targetxml>.</li>
                        </ul></p>
                    <pre>

&lt;level leveltype="comm21"&gt;
    &lt;heading align="left"&gt;
        &lt;title&gt;&lt;refpt id="CITEID_2732" type="ext"/&gt;Behaviour that constitutes contempt&lt;/title&gt;
    &lt;/heading&gt;
    &lt;bodytext&gt;
        &lt;p&gt;
            &lt;text&gt;There are two types of behaviour that may constitute a contempt of court:&lt;/text&gt;
        &lt;/p&gt;
        ...
    &lt;/bodytext&gt;
&lt;/level&gt;

<b>Becomes</b>

&lt;seclaw:level leveltype="topic"&gt;
    &lt;ref:anchor id="CITEID_2732" anchortype="global"/&gt;
    &lt;heading align="left"&gt;
        &lt;title&gt;Behaviour that constitutes contempt&lt;/title&gt;
    &lt;/heading&gt;
    &lt;seclaw:levelinfo&gt;
        &lt;meta&gt;
            &lt;metaitem name="rosettastyle" value="comm21"/&gt;
        &lt;/meta&gt;
    &lt;/seclaw:levelinfo&gt;
    &lt;seclaw:bodytext&gt;
        &lt;p&gt;
            &lt;text&gt;There are two types of behaviour that may constitute a contempt of court:&lt;/text&gt;
        &lt;/p&gt;
        ... 
    &lt;/seclaw:bodytext&gt;
&lt;/seclaw:level&gt;

                    </pre>
                    <p><targetxml>seclaw:level</targetxml> cannot nest. If a nested <sourcexml>level</sourcexml> occurs in the source, then in the
                        target the inner <targetxml>seclaw:level</targetxml> should be placed in the <targetxml>seclaw:bodytext</targetxml> of the
                        outer <targetxml>seclaw:level</targetxml>.</p>
                    <pre>

&lt;level leveltype="comm21"&gt;
    &lt;heading&gt;
        &lt;title&gt;Term sheets and facility agreements&lt;/title&gt;
    &lt;/heading&gt;
    &lt;bodytext&gt;
        &lt;h&gt;
            &lt;emph typestyle="ib"&gt;Term sheets&lt;/emph&gt;
        &lt;/h&gt;
        &lt;p&gt;
            &lt;text&gt;A term sheet is used by a lender and the borrower to record the main terms of a proposed lending facility as a precursor
                to preparation of full documentation.&lt;/text&gt;
        &lt;/p&gt;
        &lt;p&gt;
            &lt;text&gt;A term sheet is not usually binding, however if a terms sheet is agreed by the lender and the borrower, it gives
                confidence to the parties to be able to proceed with the preparation of full loan and security documentation.&lt;/text&gt;
        &lt;/p&gt;
    &lt;/bodytext&gt;
    &lt;level leveltype="comm30"&gt;
        &lt;heading&gt;
            &lt;title&gt;Facility agreement&lt;/title&gt;
        &lt;/heading&gt;
        &lt;bodytext&gt;
            &lt;p&gt;
                &lt;text&gt;This is the agreement between the lender and the borrower which sets out the terms of the loan in full and
                    constitutes a binding agreement. The lender and the borrower, when negotiating the terms of the facility agreement
                    will to a certain extent have different (and competing) perspectives. The terms of each facility agreement will be
                    tailored to the outcome of the negotiations between each lender and borrower for a particular transaction.&lt;/text&gt;
            &lt;/p&gt;
            ...
        &lt;/bodytext&gt;
    &lt;/level&gt;
&lt;/level&gt;

<b>Becomes</b>

&lt;seclaw:level leveltype="topic"&gt;
    &lt;heading&gt;
        &lt;title&gt;Term sheets and facility agreements&lt;/title&gt;
    &lt;/heading&gt;
    &lt;seclaw:levelinfo&gt;
        &lt;meta&gt;
            &lt;metaitem name="rosettastyle" value="comm21"/&gt;
        &lt;/meta&gt;
    &lt;/seclaw:levelinfo&gt;
    &lt;seclaw:bodytext&gt;
        &lt;h&gt;
            &lt;emph typestyle="ib"&gt;Term sheets&lt;/emph&gt;
        &lt;/h&gt;
        &lt;p&gt;
            &lt;text&gt;A term sheet is used by a lender and the borrower to record the main terms of a proposed lending facility as a
                precursor to preparation of full documentation.&lt;/text&gt;
        &lt;/p&gt;
        &lt;p&gt;
            &lt;text&gt;A term sheet is not usually binding, however if a terms sheet is agreed by the lender and the borrower, it gives
                confidence to the parties to be able to proceed with the preparation of full loan and security documentation.&lt;/text&gt;
        &lt;/p&gt;
        &lt;seclaw:level leveltype="topic"&gt;
            &lt;heading&gt;
                &lt;title&gt;Facility agreement&lt;/title&gt;
            &lt;/heading&gt;
            &lt;seclaw:levelinfo&gt;
                &lt;meta&gt;
                    &lt;metaitem name="rosettastyle" value="comm30"/&gt;
                &lt;/meta&gt;
            &lt;/seclaw:levelinfo&gt;
            &lt;seclaw:bodytext&gt;
                &lt;p&gt;
                    &lt;text&gt;This is the agreement between the lender and the borrower which sets out the terms of the loan in full and
                        constitutes a binding agreement. The lender and the borrower, when negotiating the terms of the facility
                        agreement will to a certain extent have different (and competing) perspectives. The terms of each facility
                        agreement will be tailored to the outcome of the negotiations between each lender and borrower for a
                        particular transaction.&lt;/text&gt;
                &lt;/p&gt;
                ...
            &lt;/seclaw:bodytext&gt;
        &lt;/seclaw:level&gt;
    &lt;/seclaw:bodytext&gt;
&lt;/seclaw:level&gt;

                    </pre>
                </section>
              
              <section>
                <title>Changes</title>
                <p>2014-06-18 <ph id="change_20140618_JCG">Corrected an ambiguity in the instructions regarding <sourcexml>level/@leveltype</sourcexml> values and their conversion to corresponding <targetxml>seclaw:level/@leveltype</targetxml> values when <sourcexml>docinfo:selector</sourcexml> is not "Excerpts". Please see the paragraph on <xref href="#guidance_level/leveltype_when_not_an_excerpt">here</xref> in the subtopic <xref href="#guidance_level"/> for the change.</ph></p>
              </section>
            </body>
        </topic>
        <topic id="guidance_levelinfo">
            <title>levelinfo <lnpid>id-CCCC-10181</lnpid></title>
            <body>
                <section>
                    <title>Instructions</title>
                    <p><sourcexml>level/levelinfo</sourcexml> should be suppressed if the descendants of <sourcexml>levelinfo</sourcexml> are
                        empty.</p>
                    <p>If the removal of an empty <sourcexml>levelinfo</sourcexml> results in a <sourcexml>level</sourcexml> that holds only holds a
                        single <sourcexml>level</sourcexml> child, then the outer <sourcexml>level</sourcexml> should be suppressed as well.</p>
                    <pre>

&lt;level&gt;
    &lt;levelinfo&gt;
        &lt;contrib&gt;
            &lt;person&gt;
                &lt;name.text&gt;
                    &lt;emph typestyle="it"/&gt;
                &lt;/name.text&gt;
            &lt;/person&gt;
        &lt;/contrib&gt;
        &lt;pubsubject&gt;
            &lt;emph typestyle="bf"/&gt;
        &lt;/pubsubject&gt;
    &lt;/levelinfo&gt;
    &lt;level&gt;
        &lt;heading searchtype="COMMENTARY"&gt;
            &lt;title&gt;Causation&lt;/title&gt;
        &lt;/heading&gt;
        &lt;bodytext searchtype="COMMENTARY"&gt;
            &lt;p&gt;
                &lt;text&gt;Damage is the gist of the action in negligence. Without loss or damage, there is no right to claim against the tortfeasor. The
                    first issue to consider is whether or not the damage was caused by the negligence of the tortfeasor. Civil Liability Act 2002
                    codifies the common law with respect to causation.&lt;/text&gt;
            &lt;/p&gt;
            ...
        &lt;/bodytext&gt;
    &lt;/level&gt;
&lt;/level&gt;

<b>Becomes</b>

&lt;seclaw:level leveltype="topic"&gt;
    &lt;heading&gt;
        &lt;title&gt;Causation&lt;/title&gt;
    &lt;/heading&gt;
    &lt;seclaw:bodytext&gt;
        &lt;p&gt;
            &lt;text&gt;Damage is the gist of the action in negligence. Without loss or damage, there is no right to claim against the tortfeasor. The first
                issue to consider is whether or not the damage was caused by the negligence of the tortfeasor. Civil Liability Act 2002 codifies the
                common law with respect to causation.&lt;/text&gt;
        &lt;/p&gt;
        ...
    &lt;/seclaw:bodytext&gt;
&lt;/seclaw:level&gt;

                    </pre>
                </section>
            </body>
        </topic>
        <topic id="guidance_heading">
            <title>heading <lnpid>id-CCCC-10182</lnpid></title>
            <body>
                <section>
                    <title>Instructions</title>
                    <p><sourcexml>level/heading</sourcexml> becomes <targetxml>seclaw:level/heading</targetxml>. See the General Markup section for
                        details on how to handle <sourcexml>heading</sourcexml>.</p>
                    <note>If <sourcexml>heading</sourcexml> contains <sourcexml>title/refpt</sourcexml>, then <sourcexml>refpt</sourcexml> maps to
                            <targetxml>seclaw:level/ref:anchor</targetxml> and <targetxml>heading</targetxml> follows
                            <targetxml>ref:anchor</targetxml>. See the General Markup section for details on how to handle
                            <sourcexml>refpt</sourcexml>.</note>
                    <pre>

&lt;level&gt;
    &lt;heading align="left"&gt;
        &lt;title&gt;&lt;refpt id="CITEID_1403" type="ext"/&gt;&lt;emph typestyle="bf"&gt;Overview&lt;/emph&gt;&lt;/title&gt;
    &lt;/heading&gt;
    ...
&lt;/level&gt;

<b>Becomes</b>

&lt;seclaw:level leveltype="topic"&gt;
    &lt;ref:anchor id="CITEID_1403" anchortype="global"/&gt;
    &lt;heading&gt;
        &lt;title&gt;&lt;emph typestyle="bf"&gt;Overview&lt;/emph&gt;&lt;/title&gt;
    &lt;/heading&gt;
    ...
&lt;/seclaw:level&gt;

                    </pre>
                </section>
            </body>
        </topic>
        <topic id="guidance_bodytext">
            <title>bodytext <lnpid>id-CCCC-10183</lnpid></title>
            <body>
                <section>
                    <title>Instructions</title>
                    <p><sourcexml>level/bodytext</sourcexml> becomes <targetxml>seclaw:level/seclaw:bodytext</targetxml>.</p>
                    <p>The children of <sourcexml>bodytext</sourcexml> are handled as follows:<ul>
              <li><sourcexml>bodytext/pgrp</sourcexml> becomes
                  <targetxml>seclaw:bodytext/pgrp</targetxml>. See the General Markup section for
                details on how to handle <sourcexml>pgrp</sourcexml>.</li>
              <li><sourcexml>bodytext/p</sourcexml> becomes
                <targetxml>seclaw:bodytext/p</targetxml>. See the General Markup section for details
                on how to handle <sourcexml>p</sourcexml>.</li>
              <li><sourcexml>bodytext/h</sourcexml> becomes
                <targetxml>seclaw:bodytext/h</targetxml>. See the General Markup section for details
                on how to handle <sourcexml>h</sourcexml>.</li>
              <li><sourcexml>bodytext/l</sourcexml> becomes
                  <targetxml>seclaw:bodytext/list</targetxml>. See the General Markup section for
                details on how to handle <sourcexml>l</sourcexml>.</li>
              <li><sourcexml>bodytext/table</sourcexml> becomes
                  <targetxml>seclaw:bodytext/table</targetxml>. See the General Markup section for
                details on how to handle <sourcexml>table</sourcexml>.</li>
              <li><sourcexml>bodytext/blockquote</sourcexml> becomes
                  <targetxml>seclaw:bodytext/blockquote</targetxml>. See the General Markup section
                for details on how to handle <sourcexml>blockquote</sourcexml>.</li>
              <li><sourcexml>remotelink</sourcexml> becomes
                  <targetxml>ref:crossreference</targetxml>, or in some cases
                  <targetxml>url</targetxml>. See the General Markup section for details on how to
                handle <sourcexml>remotelink</sourcexml>.</li>
              <li id="guidance-gpl.note">
                <p><sourcexml>glp:note[notetype="xref"]</sourcexml> becomes
                    <targetxml>marginnote</targetxml>. Four scenarios require extra attention: <ol>
                    <li><sourcexml>bodytext/glp:note[notetype="xref"]</sourcexml> becomes
                        <targetxml>seclaw:bodytext/p/text/marginnote</targetxml>. New
                        <targetxml>p</targetxml> and <targetxml>text</targetxml> elements are
                        <b>not</b> created; instead, the newly created
                        <targetxml>marginnote</targetxml> is placed in the <targetxml>p</targetxml>
                      that was mapped from the preceding sibling <sourcexml>p</sourcexml> of
                        <sourcexml>glp:note[notetype="xref"]</sourcexml>. Within this
                        <targetxml>p</targetxml> the <targetxml>marginnote</targetxml> is placed
                      within the <targetxml>text</targetxml> element that was mapped from the
                      preceding sibling <sourcexml>p</sourcexml> element's last
                        <b><u>existing</u></b> child <sourcexml>text</sourcexml> element.</li>
                    <li><sourcexml>li/glp:note[notetype="xref"]</sourcexml> becomes
                        <targetxml>listitem/bodytext/p/text/marginnote</targetxml>. Within the
                        <targetxml>listitem/bodytext</targetxml>, new <targetxml>p</targetxml> and
                        <targetxml>text</targetxml> elements are usually <b>not</b> created;
                      instead, the newly created <targetxml>marginnote</targetxml> is placed in the
                        <targetxml>p</targetxml> that was mapped from the preceding sibling
                        <sourcexml>p</sourcexml> of
                      <sourcexml>glp:note[notetype="xref"]</sourcexml>. Within this
                        <targetxml>p</targetxml> the  <targetxml>marginnote</targetxml> is placed
                      within the <targetxml>text</targetxml> element that was mapped from the
                      preceding sibling <sourcexml>p</sourcexml> element's last child
                        <sourcexml>text</sourcexml> source element. A new
                        <targetxml>text</targetxml> element will need to be created <b><u>if and
                          only if</u></b> the <sourcexml>glp:note[notetype="xref"]</sourcexml>
                      occurs in an <sourcexml>li</sourcexml>
                      <b><u>before</u></b> any sibling <sourcexml>p</sourcexml> in the
                        <sourcexml>li</sourcexml> (because in this case there would be no
                        <sourcexml>li/p</sourcexml> that precedes the
                        <sourcexml>li/glp:note</sourcexml>).</li>
                    <li id="guidance-gpl.note-chof-l"><sourcexml>l/glp:note[notetype="xref"]</sourcexml> becomes
                        <targetxml>listitem/bodytext/p/text/marginnote</targetxml>. The
                        <targetxml>marginnote</targetxml> is added to the
                        <targetxml>listitem</targetxml> mapped from the <sourcexml>l/li</sourcexml>
                      that immediately precedes the <sourcexml>l/glp:note</sourcexml>, and the
                        <targetxml>marginnote</targetxml> should be appended to the last
                        <targetxml>text</targetxml> target element of the last
                        <targetxml>p</targetxml> target element in the
                        <targetxml>listitem/bodytext</targetxml>. Generally, no new
                        <targetxml>listitem</targetxml>, <targetxml>p</targetxml>, or
                        <targetxml>text</targetxml> is created. A new
                        <targetxml>listitem/bodytext/p/text</targetxml> is created <b><u>if and only
                          if</u></b> the <sourcexml>glp:note[notetype="xref"]</sourcexml> occurs
                          <b><u>before</u></b> any sibling <sourcexml>li</sourcexml> in the
                        <sourcexml>l</sourcexml> (because in this case there would be no
                        <sourcexml>l/li</sourcexml> that precedes the
                        <sourcexml>l/glp:note</sourcexml>).</li>
                    <li id="guidance-gpl.note-chof-p"><sourcexml>p/glp:note[notetype="xref"]</sourcexml> becomes
                        <targetxml>p/text/marginnote</targetxml>. If any
                        <sourcexml>p/text</sourcexml> element is present as a sibling of
                        <sourcexml>p/glp:note[notetype="xref"]</sourcexml> then the
                        <targetxml>marginnote</targetxml> that is created from the
                        <sourcexml>glp:note</sourcexml> element (or elements) is always appended as
                      a child to the <targetxml>text</targetxml> target element mapped from the
                        <b>last</b>
                      <sourcexml>text</sourcexml> source element within a <sourcexml>p</sourcexml>,
                      regardless of where the <sourcexml>p/glp:note</sourcexml> element occurs in
                      the source paragraph. Note that no new <targetxml>text</targetxml> target
                      element should be created if there is at least one <sourcexml>text</sourcexml>
                      source element already present as a sibling of
                      <sourcexml>glp:note</sourcexml>. In other words:<ul>
                        <li>Within a particular <targetxml>p</targetxml> element, any and all
                            <targetxml>text</targetxml> target elements mapped from
                            <sourcexml>text</sourcexml> source elements are output. Then a single
                            <targetxml>marginnote</targetxml> target element mapped from
                            <sourcexml>glp:note[notetype="xref"]</sourcexml> source elements is
                          added as the last child of the last <targetxml>text</targetxml> target
                          element output.</li>
                        <li>A single <targetxml>text</targetxml> and child
                            <targetxml>marginnote</targetxml> are created within the
                            <targetxml>p</targetxml>
                          <b><u>if and only if</u></b> there is no <sourcexml>text</sourcexml>
                          source element already present as a sibling of
                            <sourcexml>glp:note</sourcexml>.</li>
                      </ul></li>
                  </ol></p>
                <p>In <b>all</b> situations the children of <targetxml>marginnote</targetxml> should
                  be populated as follows: <ul>
                    <li>Create the required child <targetxml>marginnote/ref:anchor</targetxml> and
                      populate <targetxml>ref:anchor/@id</targetxml> with a concatenation of the
                      following values separated by "_" (don't include quoatation marks): <ul>
                        <li>"au" (without the quotation marks)</li>
                        <li>the value in
                            <sourcexml>/COMMENTARYDOC/docinfo/docinfo:doc-id</sourcexml></li>
                        <li>a generated number, starting with 1 and incremented by 1 for each
                          occurence of <sourcexml>glp:note[notetype="xref"]</sourcexml> in a
                          document</li>
                      </ul></li>
                    <li>The content of <sourcexml>glp:note[notetype="xref"]</sourcexml> should be
                      placed in <targetxml>marginnote/bodytext</targetxml>.</li>
                  </ul></p>
              </li>
            </ul>
            <note id="guidance-multiple-consecutive-bodytext_gpl.note">Also, in all scenarios, if
              the source contains multiple consecutive
                <sourcexml>glp:note[notetype="xref"]</sourcexml> elements, then a single
                <targetxml>marginnote</targetxml> element is created and added as a child of the
              appropriate <targetxml>text</targetxml> target (that is usually mapped from an
                  <b><u>existing</u></b>
              <sourcexml>text</sourcexml> source element). In other words, multiple consecutive
                <sourcexml>glp:note[notetype="xref"]</sourcexml> source elements are merged into the
              same <targetxml>text</targetxml> target element by using a single
                <targetxml>marginnote</targetxml> child element.</note>
            <pre>

&lt;docinfo&gt;
    &lt;docinfo:doc-id&gt;0KK6_2160&lt;/docinfo:doc-id&gt;
&lt;/docinfo&gt;
...
&lt;bodytext&gt;
    ...
    &lt;p&gt;
    &lt;text&gt;A court may look past the single act of contravention to discover if there is a &amp;#x201c;flagrant challenge&amp;#x201d; which
        can involve a &amp;#x201c;campaign of disobedience and non compliance with Court orders&amp;#x201d;&lt;/text&gt;
    &lt;/p&gt;
    &lt;glp:note notetype="xref"&gt;
        &lt;p nl="0"&gt;
            &lt;text&gt;
                &lt;emph typestyle="it"&gt;Rutherford v Marshall of the Family Court of Australia &lt;/emph&gt;
                &lt;ci:cite searchtype="CASE-REF" status="valid"&gt;
                    &lt;ci:case&gt;
                        &lt;ci:caseinfo&gt;
                            &lt;ci:decisiondate year="1999"/&gt;
                        &lt;/ci:caseinfo&gt;
                        &lt;ci:caseref&gt;
                            &lt;ci:reporter value="Fam LR"/&gt;
                            &lt;ci:volume num="25"/&gt;
                            &lt;ci:page num="383"/&gt;
                        &lt;/ci:caseref&gt;
                    &lt;/ci:case&gt;
                    &lt;ci:content&gt;(1999) 25 Fam LR 383&lt;/ci:content&gt;
                &lt;/ci:cite&gt;
            &lt;/text&gt;
        &lt;/p&gt;
    &lt;/glp:note&gt;
    ...
    &lt;p&gt;
        &lt;text&gt;A contempt in the face of the court does not have to involve the contravention of an order.&lt;/text&gt;
    &lt;/p&gt;
    &lt;glp:note notetype="xref"&gt;
        &lt;p nl="0"&gt;
            &lt;text&gt;
                &lt;remotelink remotekey1="REFPTID(CTH_REG_2003-375_RULE21.04) or DOC-ID(CTH_REG_2003-375_RULE21.04)"
                    remotekey2="LawNow Legislation - All Jurisdictions" service="QUERY"&gt;Note 2, r 21.04(2), FLR 2004&lt;/remotelink&gt;
            &lt;/text&gt;
        &lt;/p&gt;
    &lt;/glp:note&gt;
&lt;/bodytext&gt;

<b>Becomes</b>

&lt;seclaw:bodytext&gt;
    ...
    &lt;p&gt;
        &lt;text&gt;A court may look past the single act of contravention to discover if there is a &amp;#x201c;flagrant challenge&amp;#x201d; which can involve a
        &amp;#x201c;campaign of disobedience and non compliance with Court orders&amp;#x201d;&lt;marginnote&gt;
                &lt;ref:anchor id="au_0KK6_2160_1"/&gt;
                &lt;bodytext&gt;
                    &lt;p&gt;
                        &lt;text&gt;
                            &lt;emph typestyle="it"&gt;Rutherford v Marshall of the Family Court of Australia &lt;/emph&gt;
                            &lt;lnci:cite status="valid"&gt;
                                &lt;lnci:case&gt;
                                    &lt;lnci:caseinfo&gt;
                                        &lt;lnci:decisiondate year="1999"/&gt;
                                    &lt;/lnci:caseinfo&gt;
                                    &lt;lnci:caseref&gt;
                                        &lt;lnci:reporter value="Fam LR"/&gt;
                                        &lt;lnci:volume num="25"/&gt;
                                        &lt;lnci:page num="383"/&gt;
                                    &lt;/lnci:caseref&gt;
                                &lt;/lnci:case&gt;
                                &lt;lnci:content&gt;(1999) 25 Fam LR 383&lt;/lnci:content&gt;
                            &lt;/lnci:cite&gt;
                        &lt;/text&gt;
                    &lt;/p&gt;
                &lt;/bodytext&gt;
            &lt;/marginnote&gt;&lt;/text&gt;
    &lt;/p&gt;
    ...
    &lt;p&gt;
        &lt;text&gt;A contempt in the face of the court does not have to involve the contravention of an order.&lt;marginnote&gt;
                &lt;ref:anchor id="au_0KK6_2160_2"/&gt;
                &lt;bodytext&gt;
                    &lt;p&gt;
                        &lt;text&gt;Note 2, r 21.04(2), FLR 2004&lt;/text&gt;
                    &lt;/p&gt;
                &lt;/bodytext&gt;
            &lt;/marginnote&gt;&lt;/text&gt;
    &lt;/p&gt;
&lt;/seclaw:bodytext&gt;

                    </pre>
            <pre>

&lt;docinfo&gt;
    &lt;docinfo:doc-id&gt;0KK6_228&lt;/docinfo:doc-id&gt;
&lt;/docinfo&gt;
...
&lt;l&gt;
    &lt;li&gt;
        &lt;lilabel&gt;&amp;#x2022;&lt;/lilabel&gt;
        &lt;p&gt;
            &lt;text&gt;the party&amp;#x2019;s actual costs, both paid and owing, up to and including the court event; and&lt;/text&gt;
        &lt;/p&gt;
    &lt;/li&gt;
    &lt;li&gt;
        &lt;lilabel&gt;&amp;#x2022;&lt;/lilabel&gt;
        &lt;p&gt;
            &lt;text&gt;the estimated future costs of the party up to and including each future court event; and&lt;/text&gt;
        &lt;/p&gt;
    &lt;/li&gt;
    &lt;li&gt;
        &lt;lilabel&gt;&amp;#x2022;&lt;/lilabel&gt;
        &lt;p&gt;
            &lt;text&gt;any expenses paid or payable to an expert witness or, if those expenses are not known, an estimate of the expenses;&lt;/text&gt;
        &lt;/p&gt;
    &lt;/li&gt;
    &lt;li&gt;
        &lt;lilabel&gt;&amp;#x2022;&lt;/lilabel&gt;
        &lt;p&gt;
            &lt;text&gt;in financial cases, the source of the funds to be paid.&lt;/text&gt;
        &lt;/p&gt;
        &lt;glp:note notetype="xref"&gt;
            &lt;p nl="0"&gt;
                &lt;text&gt;
                    &lt;remotelink remotekey1="REFPTID(CTH_REG_2003-375_RULE19.04) or DOC-ID(CTH_REG_2003-375_RULE19.04)"
                        remotekey2="LawNow Legislation - All Jurisdictions" service="QUERY"&gt;r 19.04(5), FLR 2004&lt;/remotelink&gt;
                &lt;/text&gt;
            &lt;/p&gt;
        &lt;/glp:note&gt;
    &lt;/li&gt;
&lt;/l&gt;

<b>Becomes</b>

&lt;list&gt;
    &lt;listitem&gt;
        &lt;label&gt;&amp;#x2022;&lt;/label&gt;
        &lt;bodytext&gt;
            &lt;p&gt;
                &lt;text&gt;the party&amp;#x2019;s actual costs, both paid and owing, up to and including the court event; and&lt;/text&gt;
            &lt;/p&gt;
        &lt;/bodytext&gt;
    &lt;/listitem&gt;
    &lt;listitem&gt;
        &lt;label&gt;&amp;#x2022;&lt;/label&gt;
        &lt;bodytext&gt;
            &lt;p&gt;
                &lt;text&gt;the estimated future costs of the party up to and including each future court event; and&lt;/text&gt;
            &lt;/p&gt;
        &lt;/bodytext&gt;
    &lt;/listitem&gt;
    &lt;listitem&gt;
        &lt;label&gt;&amp;#x2022;&lt;/label&gt;
        &lt;bodytext&gt;
            &lt;p&gt;
                &lt;text&gt;any expenses paid or payable to an expert witness or, if those expenses are not known, an estimate of the expenses;&lt;/text&gt;
            &lt;/p&gt;
        &lt;/bodytext&gt;
    &lt;/listitem&gt;
    &lt;listitem&gt;
        &lt;label&gt;&amp;#x2022;&lt;/label&gt;
        &lt;bodytext&gt;
            &lt;p&gt;
                &lt;text&gt;in financial cases, the source of the funds to be paid.&lt;marginnote&gt;
                        &lt;ref:anchor id="au_0KK6_228_1"/&gt;
                        &lt;bodytext&gt;
                            &lt;p&gt;
                                &lt;text&gt;r 19.04(5), FLR 2004&lt;/text&gt;
                            &lt;/p&gt;
                        &lt;/bodytext&gt;
                    &lt;/marginnote&gt;&lt;/text&gt;
            &lt;/p&gt;
        &lt;/bodytext&gt;
    &lt;/listitem&gt;
&lt;/list&gt;

                        </pre>
            <pre>
                    
&lt;l&gt;
  &lt;li&gt;
    &lt;lilabel&gt;◦&lt;/lilabel&gt;
    &lt;p&gt;
      &lt;text&gt;procedural requirements;&lt;/text&gt;
    &lt;/p&gt;
  &lt;/li&gt;
  &lt;glp:note notetype="xref"&gt;
    &lt;p nl="0"&gt;
      &lt;text&gt;Parental Leave and Employment Protection Act 1987, s 4&lt;/text&gt;
    &lt;/p&gt;
  &lt;/glp:note&gt;
  &lt;!--...--&gt;
&lt;/l&gt;

<b>Becomes</b>

&lt;list&gt;
  &lt;listitem&gt;
    &lt;label&gt;◦&lt;/label&gt;
    &lt;bodytext&gt;
      &lt;p&gt;
        &lt;text&gt;procedural requirements;&lt;marginnote&gt;
            &lt;ref:anchor id="au_0KL8_4937_1"/&gt;
            &lt;bodytext&gt;
              &lt;p&gt;
                &lt;text&gt;Parental Leave and Employment Protection Act 1987, s 4&lt;/text&gt;
              &lt;/p&gt;
            &lt;/bodytext&gt;
          &lt;/marginnote&gt;&lt;/text&gt;
      &lt;/p&gt;
    &lt;/bodytext&gt;
  &lt;/listitem&gt;
&lt;/list&gt;
                    
</pre>
          </p>
<p>When Multiple GLP Xref Notes Appear in Consecutive Order - Source:
                    <pre>
                        
         &lt;p&gt;
            &lt;text&gt;The concept of conducting a business or undertaking extends to sole traders and self employed persons, not for profit organisations, unincorporated associations and partnerships: s 5, Model Act.&lt;/text&gt;
          &lt;/p&gt;
          &lt;glp:note notetype="xref"&gt;
            &lt;p nl="0"&gt;
              &lt;text&gt;
                &lt;remotelink remotekey1="REFPTID" service="DOC-ID" dpsi="005X" refpt="CTH_ACT_2011-137_SEC5" docidref="CTH_ACT_2011-137_ACTPT1DV3SUBDV2"&gt;s 5 Work Health and Safety Act 2011 (Cth)&lt;/remotelink&gt;
              &lt;/text&gt;
            &lt;/p&gt;
          &lt;/glp:note&gt;
          &lt;glp:note notetype="xref"&gt;
            &lt;p nl="0"&gt;
              &lt;text&gt;
                &lt;remotelink remotekey1="REFPTID" service="DOC-ID" dpsi="005Y" refpt="NSW_ACT_2011-10_SEC5" docidref="NSW_ACT_2011-10_ACTPT1DV3SUBDV2"&gt;s 5 Work Health and Safety Act 2011 (NSW)&lt;/remotelink&gt;
              &lt;/text&gt;
            &lt;/p&gt;
          &lt;/glp:note&gt;
          &lt;glp:note notetype="xref"&gt;
            &lt;p nl="0"&gt;
              &lt;text&gt;
                &lt;remotelink remotekey1="REFPTID" service="DOC-ID" dpsi="0061" refpt="QLD_ACT_2011-18_PROV5" docidref="QLD_ACT_2011-18_PT1DV3SUBDV2"&gt;s 5 Work Health and Safety Act 2011 (Qld)&lt;/remotelink&gt;
              &lt;/text&gt;
            &lt;/p&gt;
          &lt;/glp:note&gt;
          &lt;glp:note notetype="xref"&gt;
            &lt;p nl="0"&gt;
              &lt;text&gt;
                &lt;remotelink remotekey1="REFPTID" service="DOC-ID" dpsi="03AE" refpt="ACT_ACT_2011-35_PROV5" docidref="ACT_ACT_2011-35_PT1DV1.3SUBDV1.3.2"&gt;s 5 Work Health and Safety Act 2011 (ACT)&lt;/remotelink&gt;
              &lt;/text&gt;
            &lt;/p&gt;
          &lt;/glp:note&gt;
           ...
          &lt;/p&gt;                        
                        
                        
                    </pre>
                    
                    </p>
  
  
  
                    
                    <p>When Multiple GLP Xref Notes Appear in Consecutive Order - Target: <pre>
                            
&lt;p&gt;
    &lt;text&gt;The concept of conducting a business or undertaking extends to sole 
          traders and self employed persons, not for profit organisations, 
          unincorporated associations and partnerships: s 5, Model Act.&lt;marginnote&gt;
            &lt;ref:anchor id="au_0NBL_47440_1"/&gt; 
            &lt;bodytext&gt;
                &lt;p&gt;
                    &lt;text&gt;
                        &lt;ref:crossreference crossreferencetype="seeAlso"&gt;
                            &lt;ref:content&gt;s 5 Work Health and Safety Act 2011 (Cth)&lt;/ref:content&gt; 
                            &lt;ref:locator anchoridref="CTH_ACT_2011-137_SEC5"&gt;
                                &lt;ref:locator-key&gt;
                                    &lt;ref:key-name name="DOC-ID" /&gt; 
                                    &lt;ref:key-value value="005X-CTH_ACT_2011-137_ACTPT1DV3SUBDV2" /&gt; 
                                &lt;/ref:locator-key&gt;
                            &lt;/ref:locator&gt;
                        &lt;/ref:crossreference&gt;
                    &lt;/text&gt;
                &lt;/p&gt;
                &lt;p&gt;
                    &lt;text&gt;
                        &lt;ref:crossreference crossreferencetype="seeAlso"&gt;
                            &lt;ref:content&gt;s 5 Work Health and Safety Act 2011 (NSW)&lt;/ref:content&gt; 
                            &lt;ref:locator anchoridref="NSW_ACT_2011-10_SEC5"&gt;
                                &lt;ref:locator-key&gt;
                                    &lt;ref:key-name name="DOC-ID" /&gt; 
                                    &lt;ref:key-value value="005Y-NSW_ACT_2011-10_ACTPT1DV3SUBDV2" /&gt; 
                                &lt;/ref:locator-key&gt;
                            &lt;/ref:locator&gt;
                        &lt;/ref:crossreference&gt;
                    &lt;/text&gt;
                &lt;/p&gt;
                &lt;p&gt;
                    &lt;text&gt;
                        &lt;ref:crossreference crossreferencetype="seeAlso"&gt;
                            &lt;ref:content&gt;s 5 Work Health and Safety Act 2011 (Qld)&lt;/ref:content&gt; 
                            &lt;ref:locator anchoridref="QLD_ACT_2011-18_PROV5"&gt;
                                &lt;ref:locator-key&gt;
                                    &lt;ref:key-name name="DOC-ID" /&gt; 
                                    &lt;ref:key-value value="0061-QLD_ACT_2011-18_PT1DV3SUBDV2" /&gt; 
                                &lt;/ref:locator-key&gt;
                            &lt;/ref:locator&gt;
                        &lt;/ref:crossreference&gt;
                    &lt;/text&gt;
                &lt;/p&gt;
                &lt;p&gt;
                    &lt;text&gt;
                        &lt;ref:crossreference crossreferencetype="seeAlso"&gt;
                            &lt;ref:content&gt;s 5 Work Health and Safety Act 2011 (ACT)&lt;/ref:content&gt; 
                            &lt;ref:locator anchoridref="ACT_ACT_2011-35_PROV5"&gt;
                                &lt;ref:locator-key&gt;
                                    &lt;ref:key-name name="DOC-ID" /&gt; 
                                    &lt;ref:key-value value="03AE-ACT_ACT_2011-35_PT1DV1.3SUBDV1.3.2" /&gt; 
                                &lt;/ref:locator-key&gt;
                            &lt;/ref:locator&gt;
                        &lt;/ref:crossreference&gt;
                    &lt;/text&gt;
                &lt;/p&gt;
            &lt;/bodytext&gt;
        &lt;/marginnote&gt;&lt;/text&gt;
    ...
  &lt;/p&gt;

                        </pre>
          </p>


                  <p>When GLP Xref Notes Appear as children of <sourcexml>p</sourcexml> - Source:
                    <pre>
                        
         &lt;p&gt;
          &lt;glp:note notetype="xref"&gt;
            &lt;p nl="0"&gt;
              &lt;text&gt;
                &lt;remotelink remotekey1="REFPTID" service="DOC-ID" dpsi="0061" refpt="QLD_ACT_2011-18_PROV5" docidref="QLD_ACT_2011-18_PT1DV3SUBDV2"&gt;s 5 Work Health and Safety Act 2011 (Qld)&lt;/remotelink&gt;
              &lt;/text&gt;
            &lt;/p&gt;
          &lt;/glp:note&gt;
          &lt;glp:note notetype="xref"&gt;
            &lt;p nl="0"&gt;
              &lt;text&gt;
                &lt;remotelink remotekey1="REFPTID" service="DOC-ID" dpsi="03AE" refpt="ACT_ACT_2011-35_PROV5" docidref="ACT_ACT_2011-35_PT1DV1.3SUBDV1.3.2"&gt;s 5 Work Health and Safety Act 2011 (ACT)&lt;/remotelink&gt;
              &lt;/text&gt;
            &lt;/p&gt;
          &lt;/glp:note&gt;
            &lt;text&gt;The concept of conducting a business or undertaking extends to sole traders and self employed persons, not for profit organisations, unincorporated associations and partnerships: s 5, Model Act.&lt;/text&gt;
          &lt;/p&gt;                        
                        
                        
                    </pre>
                    
                  </p>
                  <p>When GLP Xref Notes Appear as children of <sourcexml>p</sourcexml> - Target: <pre>
                            
&lt;p&gt;
    &lt;text&gt;The concept of conducting a business or undertaking extends to sole traders and self employed persons, not for profit organisations, unincorporated associations and partnerships: s 5, Model Act.&lt;marginnote&gt;
            &lt;ref:anchor id="au_0NBL_49970_1"/&gt; 
            &lt;bodytext&gt;
                &lt;p&gt;
                    &lt;text&gt;
                        &lt;ref:crossreference crossreferencetype="seeAlso"&gt;
                            &lt;ref:content&gt;s 5 Work Health and Safety Act 2011 (Qld)&lt;/ref:content&gt; 
                            &lt;ref:locator anchoridref="QLD_ACT_2011-18_PROV5"&gt;
                                &lt;ref:locator-key&gt;
                                    &lt;ref:key-name name="DOC-ID" /&gt; 
                                    &lt;ref:key-value value="0061-QLD_ACT_2011-18_PT1DV3SUBDV2" /&gt; 
                                &lt;/ref:locator-key&gt;
                            &lt;/ref:locator&gt;
                        &lt;/ref:crossreference&gt;
                    &lt;/text&gt;
                &lt;/p&gt;
                &lt;p&gt;
                    &lt;text&gt;
                        &lt;ref:crossreference crossreferencetype="seeAlso"&gt;
                            &lt;ref:content&gt;s 5 Work Health and Safety Act 2011 (ACT)&lt;/ref:content&gt; 
                            &lt;ref:locator anchoridref="ACT_ACT_2011-35_PROV5"&gt;
                                &lt;ref:locator-key&gt;
                                    &lt;ref:key-name name="DOC-ID" /&gt; 
                                    &lt;ref:key-value value="03AE-ACT_ACT_2011-35_PT1DV1.3SUBDV1.3.2" /&gt; 
                                &lt;/ref:locator-key&gt;
                            &lt;/ref:locator&gt;
                        &lt;/ref:crossreference&gt;
                    &lt;/text&gt;
                &lt;/p&gt;
            &lt;/bodytext&gt;
        &lt;/marginnote&gt;&lt;/text&gt;
  &lt;/p&gt;

                        </pre>
                  </p>
                  
                  
                </section>
              <section>
                <title>Changes</title>
                <p>2014-09-25 <ph id="change_20140925_JCG">Changed instructions and examples
              regarding the mapping of <sourcexml>glp:note[notetype="xref"]</sourcexml> such that a
              new <targetxml>text</targetxml> element is <b><u>not</u></b> created, instead the
                <targetxml>marginnote</targetxml> mapped from
                <sourcexml>glp:note[notetype="xref"]</sourcexml> is added as a child of the
              appropriate <targetxml>text</targetxml> target mapped from an existing
                  <sourcexml>text</sourcexml> source element. (R4.5 Content Issue List, #1781)</ph>
          </p>
                <p>2014-09-24 <ph id="change_20140924_JCG">Added instructions and example relating to the XPath <sourcexml>p/glp:note[notetype="xref"]</sourcexml>. (R4.5 Content Issue List, #1781)</ph>
                </p>
                <p>2013-12-15 <ph id="change_20131215_JCG">Added instructions relating to the XPath
                <sourcexml>l/glp:note[notetype="xref"]</sourcexml>. (Webteam #247755)</ph>
          </p>                
                <p>2013-10-15 <ph id="change_20131015_JCG">Modified instructions relating to the scenario where there are multiple consecutive <sourcexml>bodytext/glp:note[notetype="xref"]</sourcexml> elements indicating that they will now be merged into a single <targetxml>marginnote</targetxml> target
                  element. (Webteam #214480)</ph>
                </p>
              </section>
            </body>
        </topic>
    </topic>
	</dita:topic>


</xsl:stylesheet>