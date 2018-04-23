<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
	xmlns:ci="http://www.lexis-nexis.com/ci" xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo"
	xmlns:glp="http://www.lexis-nexis.com/glp"
	xmlns:proc="http://www.lexisnexis.com/xmlschemas/content/shared/process-elements/1/"
	xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/"
	xmlns:seclaw="http://www.lexisnexis.com/xmlschemas/content/legal/secondary-law/1/" version="2.0"
	exclude-result-prefixes="dita docinfo glp ci">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/"
		id="LPA-PracticalGuidance_Guidance">
		<title>Guidance <lnpid>id-USPA-31020</lnpid></title>
		<body>
			<section>
				<title>Introduction</title>
				<p>The category of "guidance" encompasses several document sources that can most
					easily be identified via the text found in
						<sourcexml>/COMMENTARYDOC/docinfo/docinfo:selector</sourcexml>.</p>
			</section>
		</body>
		<topic id="docinfo-selector_guidance">
			<title>docinfo:selector <lnpid>id-USPA-31021</lnpid></title>
			<topic id="selector-guidance_seclaw-seclaw">
				<title>seclaw:seclaw/@seclawtype <lnpid>id-USPA-31022</lnpid></title>
				<body>
					<section>
						<title>Instructions</title>
						<p>The following values in <sourcexml>docinfo:selector</sourcexml> indicate
							guidance content: <ul>
								<li>AtAGlance - LandingPage</li>
								<li>PracticalGuidance - PracticeNote</li>
								<li>PracticalGuidance - CheckList</li>
								<li>EmergingIssues - PamDocument</li>
							</ul></p>
						<p>Once guidance content has been identified,
								<targetxml>seclaw:seclaw/@seclawtype</targetxml> should be populated
							with the value "practicalguidance".</p>
						<note>If the top <sourcexml>level</sourcexml> element in the source has a
							value of "landingpage" in the attribute
							<sourcexml>leveltype</sourcexml>, this takes precedence over the value
							in <sourcexml>docinfo:selector</sourcexml> and the Landing Page
							instructions should be used for mapping the document.</note>
					</section>
				</body>
			</topic>
		</topic>
		<topic id="guidance_general">
			<title>Guidance: General Mappings <lnpid>id-USPA-31023</lnpid></title>
			<body>
				<section>
					<title>Instructions</title>
					<p>These general mappings apply to all of the mapping scenarios for Guidance.
						These instructions override or augment any previous instructions in this
						document.</p>
				</section>
			</body>
			<topic id="guidance_level">
				<title>level <lnpid>id-USPA-31024</lnpid></title>
				<body>
					<section>
						<title>Instructions</title>
						<p><sourcexml>level</sourcexml> beomces <targetxml>seclaw:level</targetxml>.
							Regardless of the value in <sourcexml>level/@leveltype</sourcexml>, if
							any, the value of <targetxml>seclaw:level/@leveltype</targetxml> should
							be set to "topic".</p>
						<pre>

&lt;comm:body&gt;
    &lt;level&gt;...&lt;/level&gt;
&lt;/comm:body&gt;

<b>Becomes</b>

&lt;seclaw:body&gt;
    &lt;seclaw:level leveltype="topic"&gt;...&lt;/seclaw:level&gt;
&lt;/seclaw:body&gt;

                    </pre>
						<p><sourcexml>level/@id</sourcexml> becomes
								<targetxml>seclaw:level/@xml:id</targetxml>.</p>
						<p>If <sourcexml>level/@leveltype</sourcexml> has a value that starts with
							"comm", then <targetxml>seclaw:level/seclaw:levelinfo</targetxml> should
							be created and placed after
								<targetxml>seclaw:level/seclaw:heading</targetxml>, assuming that
							one exists. Inside <targetxml>seclaw:levelinfo</targetxml> create
								<targetxml>meta/metaitem</targetxml>. Populate the attributes of
								<targetxml>metaitem</targetxml> as follows:<ul>
								<li>Place "rosettastyle" in the value of
										<targetxml>metaitem/@name</targetxml>.</li>
								<li>Place the value of <sourcexml>level/@leveltype</sourcexml> in
										<targetxml>metaitem/@value</targetxml>.</li>
							</ul></p>
						<pre>

&lt;level leveltype="comm13"&gt;
    &lt;heading&gt;
        &lt;title searchtype="MAIN-TITLE"&gt;&lt;refpt id="0LTT_5633" type="ext"/&gt;Checklist — Delaware Limited Partnerships Formation by Nicholas Unkovic,
  Squire, Sanders &amp;amp; Dempsey (US) LLP&lt;/title&gt;
    &lt;/heading&gt;
    &lt;bodytext&gt;...&lt;/bodytext&gt;
&lt;/level&gt;
<b>Becomes</b>

&lt;seclaw:level leveltype="topic"&gt;
    &lt;ref:anchor id="_0LTT_5633" anchortype="global"/&gt;
    &lt;heading&gt;
        &lt;title&gt;Checklist — Delaware Limited Partnerships Formation by Nicholas Unkovic, Squire, Sanders &amp;amp; Dempsey (US) LLP&lt;/title&gt;
    &lt;/heading&gt;
    &lt;seclaw:levelinfo&gt;
        &lt;meta&gt;
            &lt;metaitem name="rosettastyle" value="comm13"/&gt;
        &lt;/meta&gt;
    &lt;/seclaw:levelinfo&gt;
    &lt;seclaw:bodytext&gt;...&lt;/seclaw:bodytext&gt;
&lt;/seclaw:level&gt;
                    </pre>
						<p><targetxml>seclaw:level</targetxml> cannot nest. If a nested
								<sourcexml>level</sourcexml> occurs in the source, then in the
							target the inner <targetxml>seclaw:level</targetxml> should be placed in
							the <targetxml>seclaw:bodytext</targetxml> of the outer
								<targetxml>seclaw:level</targetxml>.</p>
						<pre>

&lt;comm:body&gt;
    &lt;level&gt;
        &lt;heading&gt;
            &lt;title searchtype="MAIN-TITLE"&gt;&lt;refpt id="0LTT_10923" type="ext"/&gt;Dissolution of Limited Partnerships by Nicholas Unkovic, Squire, Sanders
            &amp;amp; Dempsey (US) LLP&lt;/title&gt;
        &lt;/heading&gt;
        &lt;bodytext&gt;
            &lt;p&gt;
                &lt;text&gt;&lt;url&gt;&lt;remotelink href="www.ssd.com/nunkovic/" hrefclass="http" newwindow="YES"&gt;Nicholas Unkovic&lt;/remotelink&gt;&lt;/url&gt; is a partner
                in &lt;url&gt;&lt;remotelink href="www.ssd.com/" hrefclass="http" newwindow="YES"&gt;Squire Sanders&lt;/remotelink&gt;&lt;/url&gt;’ Corporate
                Transactions, Finance and Governance practice group and co-chair of their Mergers &amp;amp; Acquisitions practice group.&lt;/text&gt;
            &lt;/p&gt;
        &lt;/bodytext&gt;
        &lt;level&gt;
            &lt;heading align="left"&gt;
                &lt;title&gt;&lt;refpt id="CITEID_1403" type="ext"/&gt;&lt;emph typestyle="bf"&gt;Overview&lt;/emph&gt;&lt;/title&gt;
            &lt;/heading&gt;
            &lt;bodytext&gt;...&lt;/bodytext&gt;
        &lt;/level&gt;
    &lt;/level&gt;
&lt;/comm:body&gt;
<b>Becomes</b>

&lt;seclaw:body&gt;
    &lt;seclaw:level leveltype="topic"&gt;
        &lt;ref:anchor id="_0LTT_10923" anchortype="global"/&gt;
        &lt;heading&gt;
            &lt;title&gt;Dissolution of Limited Partnerships by Nicholas Unkovic, Squire, Sanders &amp;amp; Dempsey (US) LLP&lt;/title&gt;
        &lt;/heading&gt;
        &lt;seclaw:bodytext&gt;
            &lt;p&gt;
                &lt;text&gt;&lt;url normval="http://www.ssd.com/nunkovic/"&gt;Nicholas Unkovic&lt;/url&gt; is a partner in &lt;url normval="http://www.ssd.com/"&gt;Squire
                Sanders&lt;/url&gt;’ Corporate Transactions, Finance and Governance practice group and co-chair of their Mergers &amp;amp; Acquisitions
                practice group.&lt;/text&gt;
            &lt;/p&gt;
            &lt;seclaw:level leveltype="topic"&gt;
                &lt;ref:anchor id="CITEID_1403" anchortype="global"/&gt;
                &lt;heading&gt;
                    &lt;title&gt;&lt;emph typestyle="bf"&gt;Overview&lt;/emph&gt;&lt;/title&gt;
                &lt;/heading&gt;
                &lt;seclaw:bodytext&gt;...&lt;/seclaw:bodytext&gt;
            &lt;/seclaw:level&gt;
        &lt;/seclaw:bodytext&gt;
    &lt;/seclaw:level&gt;
&lt;/seclaw:body&gt;

            </pre>
					</section>
				</body>
			</topic>
			<topic id="guidance_heading">
				<title>heading <lnpid>id-USPA-31025</lnpid></title>
				<body>
					<section>
						<title>Instructions</title>
						<p><sourcexml>level/heading</sourcexml> becomes
								<targetxml>seclaw:level/heading</targetxml>. See the General Markup
							section for details on how to handle <sourcexml>heading</sourcexml>.</p>
						<note>If <sourcexml>heading</sourcexml> contains
								<sourcexml>title/refpt</sourcexml>, then
								<sourcexml>refpt</sourcexml> maps to
								<targetxml>seclaw:level/ref:anchor</targetxml> and
								<targetxml>heading</targetxml> follows
								<targetxml>ref:anchor</targetxml>. See the General Markup section
							for details on how to handle <sourcexml>refpt</sourcexml>.</note>
						<note>If <sourcexml>heading/title</sourcexml> contains
								<sourcexml>nl</sourcexml>, see the General Markup section for
							details on mapping <sourcexml>nl</sourcexml> to
								<targetxml>proc:nl</targetxml> (within
								<targetxml>heading/title</targetxml>) (This General Markup section
							is <xref href="../../common_newest/Rosetta_nl-LxAdv-proc.nl.dita"
							/>).</note>
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
					<section>
						<title>Changes</title>
						<p>2017-02-07: <ph id="change_20170207a_snb">LPA 2016 enhancements: Added
								note about possibility that <sourcexml>heading/title</sourcexml>
								contains <sourcexml>nl</sourcexml> and reference to the General
								Mapping section for instructions.</ph></p>
					</section>
				</body>
			</topic>
			<topic id="guidance_bodytext">
				<title>bodytext <lnpid>id-USPA-31026</lnpid></title>
				<body>
					<section>
						<title>Instructions</title>
						<p><sourcexml>level/bodytext</sourcexml> becomes
								<targetxml>seclaw:level/seclaw:bodytext</targetxml>.</p>
						<p>The children of <sourcexml>bodytext</sourcexml> are handled as follows:<ul>
								<li><sourcexml>bodytext/pgrp</sourcexml> becomes
										<targetxml>seclaw:bodytext/pgrp</targetxml>. See the General
									Markup section for details on how to handle
										<sourcexml>pgrp</sourcexml>.</li>
								<li><sourcexml>bodytext/p</sourcexml> becomes
										<targetxml>seclaw:bodytext/p</targetxml>. See the General
									Markup section for details on how to handle
										<sourcexml>p</sourcexml>.</li>
								<li><sourcexml>bodytext/h</sourcexml> becomes
										<targetxml>seclaw:bodytext/h</targetxml>. See the General
									Markup section for details on how to handle
										<sourcexml>h</sourcexml>.</li>
								<li><sourcexml>bodytext/l</sourcexml> becomes
										<targetxml>seclaw:bodytext/list</targetxml>. See the General
									Markup section for details on how to handle
										<sourcexml>l</sourcexml>.</li>
								<li><sourcexml>bodytext/table</sourcexml> becomes
										<targetxml>seclaw:bodytext/table</targetxml>. See the
									General Markup section for details on how to handle
										<sourcexml>table</sourcexml>.</li>
								<li><sourcexml>bodytext/glp:note</sourcexml> becomes
										<targetxml>seclaw:bodytext/note</targetxml>. See the General
									Markup section for details on how to handle
										<sourcexml>glp:note</sourcexml>.</li>
								<li><sourcexml>bodytext/blockquote</sourcexml> becomes
										<targetxml>seclaw:bodytext/blockquote</targetxml>. See the
									General Markup section for details on how to handle
										<sourcexml>blockquote</sourcexml>.</li>
								<li><sourcexml>bodytext/note</sourcexml> becomes
										<targetxml>seclaw:bodytext/note</targetxml>. See the General
									Markup section for details on how to handle
										<sourcexml>note</sourcexml> (<xref
										href="../../common_newest/Rosetta_note-LxAdv-note.dita"
									/>).</li>
							</ul></p>
						<p>If <sourcexml>level/bodytext/heading</sourcexml> is encountered, the
								<sourcexml>heading</sourcexml> becomes
								<targetxml>seclaw:level/heading</targetxml> and the remaining
							content in <sourcexml>level/bodytext</sourcexml> becomes
								<targetxml>seclaw:level/seclaw:bodytext</targetxml>.
							<pre>

&lt;level&gt;
    &lt;bodytext&gt;
        &lt;heading&gt;
            &lt;title searchtype="MAIN-TITLE"&gt;California Business Taxes&lt;/title&gt;
        &lt;/heading&gt;
        &lt;p&gt;
            &lt;text&gt;Business taxes in California follow familiar models.&lt;/text&gt;
        &lt;/p&gt;
        ...
    &lt;/bodytext&gt;
&lt;/level&gt;

<b>Becomes</b>

&lt;seclaw:level leveltype="topic"&gt;
    &lt;heading&gt;
        &lt;title&gt;California Business Taxes&lt;/title&gt;
    &lt;/heading&gt;
    &lt;seclaw:bodytext&gt;
        &lt;p&gt;
            &lt;text&gt;Business taxes in California follow familiar models.&lt;/text&gt;
        &lt;/p&gt;
        ...
    &lt;/seclaw:bodytext&gt;
&lt;/seclaw:level&gt;

                            
                        </pre>
						</p>
						<p>If <sourcexml>glp:note</sourcexml> appears as a child of
								<sourcexml>p/text</sourcexml>, then it should be mapped removed from
								<sourcexml>p/text</sourcexml> and mapped to
								<targetxml>seclaw:bodytext/note</targetxml>. The remaining source
							content from <sourcexml>p/text</sourcexml> should still be mapped to
								<sourcexml>seclaw:bodytext/p/text</sourcexml> (following the
								<targetxml>seclaw:bodytext/note</targetxml> that was mapped from
								<sourcexml>p/text/glp:note</sourcexml>).
							<pre>

&lt;bodytext&gt;
    &lt;p&gt;
        &lt;text&gt;
            &lt;glp:note notetype="xref"&gt;&lt;p nl="0"&gt;&lt;text&gt; WTR 1998, SI 1998/1833, reg 1 &lt;/text&gt;&lt;/p&gt;&lt;/glp:note&gt;Certain statutory rights use the term
            'worker' (eg Working Time Regulations 1998) which also has an element of personal service. This covers all employees together with others
            who, for tax or other purposes, may be treated as self-employed but whose contractual relationship with the other party is not that of a
            provider of services to a client as part of their own profession or business.&lt;/text&gt;
    &lt;/p&gt;
    &lt;glp:note notetype="xref"&gt;
        &lt;p nl="0"&gt;
            &lt;text&gt; WTR 1998, SI 1998/1833, reg 1 &lt;/text&gt;
        &lt;/p&gt;
    &lt;/glp:note&gt;
&lt;/bodytext&gt;

<b>Becomes</b>

&lt;seclaw:bodytext&gt;
    &lt;note notetype="xref"&gt;
        &lt;bodytext&gt;
            &lt;p&gt;
                &lt;text&gt; WTR 1998, SI 1998/1833, reg 1 &lt;/text&gt;
            &lt;/p&gt;
        &lt;/bodytext&gt;
    &lt;/note&gt;
    &lt;p&gt;
        &lt;text&gt;Certain statutory rights use the term 'worker' (eg Working Time Regulations 1998) which also has an element of personal service. This
            covers all employees together with others who, for tax or other purposes, may be treated as self-employed but whose contractual
            relationship with the other party is not that of a provider of services to a client as part of their own profession or business.&lt;/text&gt;
    &lt;/p&gt;
    &lt;note notetype="xref"&gt;
        &lt;bodytext&gt;
            &lt;p&gt;
                &lt;text&gt; WTR 1998, SI 1998/1833, reg 1 &lt;/text&gt;
            &lt;/p&gt;
        &lt;/bodytext&gt;
    &lt;/note&gt;
&lt;/seclaw:bodytext&gt;

                            </pre>
						</p>
					</section>
					<section>
						<title>Changes</title>
						<p>2017-02-07: <ph id="change_20170207b_snb">LPA 2016 enhancements: Added
								specific instruction regarding mapping
									<sourcexml>bodytext/note</sourcexml> to
									<targetxml>seclaw:bodytext/note</targetxml>, with a reference to
								the General Markup section for this mapping. Also added this mapping
								to the General Markup section (the mapping instructions already
								existed but were not previously included in this LPA conversion
								instruction document.</ph></p>
					</section>

				</body>
			</topic>
		</topic>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-US\US_LPA\LPA-PracticalGuidance_Guidance-US.dita  -->
	<!--<xsl:message>LPA-PracticalGuidance_Guidance-US.xsl requires manual development!</xsl:message> -->

	<xsl:template match="/COMMENTARYDOC/docinfo/docinfo:selector">

		<!--  Original Target XPath:  seclaw:seclaw/@seclawtype   -->
		<seclaw:seclaw>
			<xsl:attribute name="seclawtype">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</seclaw:seclaw>

	</xsl:template>

	<xsl:template match="docinfo:selector">

		<!--  Original Target XPath:  seclaw:seclaw/@seclawtype   -->
		<seclaw:seclaw>
			<xsl:attribute name="seclawtype">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</seclaw:seclaw>

	</xsl:template>


	<xsl:template match="level[@leveltype][not(@leveltype = 'documentlinks')]">
		<xsl:variable name="i"
			select="count(preceding::level[@leveltype]) + count(ancestor::level[@leveltype]) + 1"/>
		<!--  Original Target XPath:  seclaw:level   -->
		<seclaw:level>
			<xsl:attribute name="leveltype">
				<xsl:text>topic</xsl:text>
			</xsl:attribute>
			<xsl:if test="$i = 1 and preceding::docinfo:custom-metafield[@name = 'EDIT-DATE']">
				<xsl:apply-templates
					select="preceding::docinfo:custom-metafield[@name = 'EDIT-DATE']"
					mode="miscdate"/>
			</xsl:if>
			<xsl:apply-templates select="@* | node()"/>

		</seclaw:level>

	</xsl:template>


	<!--	<xsl:template match="leveltype">

		<!-\-  Original Target XPath:  seclaw:level   -\->
		<seclaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</seclaw:level>

	</xsl:template>-->

	<!--	<xsl:template match="@leveltype">
			<xsl:attribute name="leveltype">
				<xsl:text>topic</xsl:text>
			</xsl:attribute>
	</xsl:template>-->

	<!--	<xsl:template match="level/@id">

		<!-\-  Original Target XPath:  seclaw:level/@xml:id   -\->
		<seclaw:level>
			<xsl:attribute name="xml:id">
				<!-\-<xsl:apply-templates select="node()"/>-\->
				<xsl:value-of select="."/>
			</xsl:attribute>
		</seclaw:level>

	</xsl:template>-->

	<xsl:template match="level/heading">

		<!--  Original Target XPath:  seclaw:level/heading   -->
		<!--<seclaw:level>-->
		<heading>
			<xsl:apply-templates select="@* | node()"/>
		</heading>
		<!--</seclaw:level>-->

	</xsl:template>

	<!--	<xsl:template match="heading">

		<!-\-  Original Target XPath:  seclaw:level/ref:anchor   -\->
		<seclaw:level>
			<ref:anchor>
				<xsl:apply-templates select="@* | node()"/>
			</ref:anchor>
		</seclaw:level>

	</xsl:template>-->

	<xsl:template match="title/refpt">

		<!--  Original Target XPath:  seclaw:level/ref:anchor   -->
		<seclaw:level>
			<ref:anchor>
				<xsl:apply-templates select="@* | node()"/>
			</ref:anchor>
		</seclaw:level>

	</xsl:template>

	<xsl:template match="refpt">

		<!--  Original Target XPath:  seclaw:level/ref:anchor   -->
		<seclaw:level>
			<ref:anchor>
				<xsl:apply-templates select="@* | node()"/>
			</ref:anchor>
		</seclaw:level>

	</xsl:template>

	<!--	<xsl:template match="heading/title">

		<!-\-  Original Target XPath:  proc:nl   -\->
		<proc:nl>
			<xsl:apply-templates select="@* | node()"/>
		</proc:nl>

	</xsl:template>-->

	<!--	<xsl:template match="nl">

		<!-\-  Original Target XPath:  proc:nl   -\->
		<proc:nl>
			<xsl:apply-templates select="@* | node()"/>
		</proc:nl>

	</xsl:template>-->

	<xsl:template match="level/bodytext[not(preceding-sibling::*[1][self::bodytext])]" priority="2">
		<seclaw:bodytext>
			<xsl:apply-templates
				select="@* | node() except (note[@notetype = 'summary'] | pgrp[preceding-sibling::*[1][self::h]] | heading | bodytext[preceding-sibling::*[1][self::p]][following-sibling::*[1][self::p]])"/>
			<xsl:apply-templates select="following-sibling::bodytext" mode="bodytext_wrapper"/>
			<xsl:apply-templates select="following-sibling::level" mode="bodytext_wrapper"/>
		</seclaw:bodytext>
	</xsl:template>

	<xsl:template match="bodytext" mode="bodytext_wrapper">
		<xsl:apply-templates
			select="@* | node() except (note[@notetype = 'summary'] | pgrp[preceding-sibling::*[1][self::h]])"
		/>
	</xsl:template>

	<xsl:template match="level" mode="bodytext_wrapper">
		<seclaw:level>
			<xsl:choose>
				<xsl:when test="starts-with(@leveltype,'comm')">
					<xsl:attribute name="leveltype">
						<xsl:text>topic</xsl:text>
					</xsl:attribute>
				<xsl:apply-templates select="heading/title/refpt, heading"/>
				<seclaw:levelinfo>
						<meta>
							<metaitem name="rosettastyle">
								<xsl:attribute name="value">
									<xsl:value-of select="@leveltype"/>
								</xsl:attribute>
							</metaitem>
						</meta>
				</seclaw:levelinfo>
				<xsl:apply-templates select="node() except heading"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:choose>
					<xsl:when test="@leveltype = 'landingpage'">
					<xsl:attribute name="leveltype">
						<xsl:text>landingpage</xsl:text>
					</xsl:attribute>
				</xsl:when>
				<xsl:when test="@leveltype = 'documentlinks'">
					<xsl:attribute name="leveltype">
						<xsl:text>digestgroups</xsl:text>
					</xsl:attribute>
				</xsl:when>
				<xsl:when test="@leveltype = 'comm13'">
					<xsl:attribute name="leveltype">
						<xsl:text>topic</xsl:text>
					</xsl:attribute>
				</xsl:when>
				<xsl:when test="@leveltype = 'topic'">
					<xsl:attribute name="leveltype">
						<xsl:text>topic</xsl:text>
					</xsl:attribute>
				</xsl:when>
				<xsl:when test="@leveltype = 'sub-topic'">
					<xsl:attribute name="leveltype">
						<xsl:text>subtopic</xsl:text>
					</xsl:attribute>
				</xsl:when>
				<xsl:otherwise>
					<xsl:attribute name="leveltype">
						<xsl:text>form</xsl:text>
					</xsl:attribute>
				</xsl:otherwise>
			</xsl:choose>
					<xsl:apply-templates select="@* | node()"/>
		</xsl:otherwise>
			</xsl:choose>
			
		</seclaw:level>

	</xsl:template>

	<xsl:template match="level/bodytext" priority="1"/>

	<xsl:template match="level/level" priority="1"/>

	<xsl:template match="level[@leveltype = 'documentlinks']" priority="2">
		<seclaw:bodytext>
			<seclaw:level leveltype="digestgroups">
				<xsl:apply-templates select="@* | node()"/>
			</seclaw:level>
		</seclaw:bodytext>
	</xsl:template>

	<xsl:template match="pgrp[preceding-sibling::*[1][self::h]]">

		<!--  Original Target XPath:  seclaw:bodytext/pgrp   -->
		<xsl:apply-templates select="(p | h)" mode="pgrp_digest"/>
		<!--<xsl:apply-templates select="child::h" />-->
	</xsl:template>

	<xsl:template match="p" mode="pgrp_digest">
		<xsl:choose>
			<xsl:when test="child::text/url">
				<seclaw:digest>
					<seclaw:digestinfo>
						<xsl:apply-templates select="classification"/>
						<seclaw:subjectmatterreference>
							<xsl:choose>
								<xsl:when
									test="text[not(following-sibling::* or preceding-sibling::*)][not(child::*)]">
									<seclaw:subjectmattertext>
										<xsl:apply-templates select="@* | node()"/>
									</seclaw:subjectmattertext>
								</xsl:when>
								<xsl:otherwise>
									<xsl:apply-templates
										select="@* | node() except (date[@searchtype = 'LAST-UPDATE-DATE'] | classification)"
									/>
								</xsl:otherwise>
							</xsl:choose>
						</seclaw:subjectmatterreference>
					</seclaw:digestinfo>
				</seclaw:digest>
			</xsl:when>
			<xsl:otherwise>
				<xsl:choose>
					<xsl:when test="child::note[preceding-sibling::*[1][self::text[child::label]]]">
						<seclaw:digest>
							<seclaw:digestinfo>
								<xsl:apply-templates select="classification"/>
							</seclaw:digestinfo>
						</seclaw:digest>
					</xsl:when>
					<xsl:when test="not(descendant::ci:cite)">
						<seclaw:digest>
							<seclaw:digestinfo>
								<xsl:apply-templates select="classification"/>
								<seclaw:subjectmatterreference>
									<xsl:choose>
										<xsl:when
											test="text[not(following-sibling::*)] | text[following-sibling::note[@notetype]] and not(text[child::*])">
											<seclaw:subjectmattertext>
												<xsl:apply-templates
												select="@* | node() except (date[@searchtype = 'LAST-UPDATE-DATE'] | classification | note[@notetype = 'other'])"
												/>
											</seclaw:subjectmattertext>
											<xsl:apply-templates select="note[@notetype]"/>
										</xsl:when>
										<xsl:otherwise>
											<xsl:apply-templates
												select="@* | node() except (date[@searchtype = 'LAST-UPDATE-DATE'] | classification)"
											/>
										</xsl:otherwise>
									</xsl:choose>
								</seclaw:subjectmatterreference>
							</seclaw:digestinfo>
						</seclaw:digest>
					</xsl:when>
					<xsl:otherwise>
						<seclaw:digest>
							<seclaw:digestinfo>
								<xsl:apply-templates
									select="classification"/>
								<ref:subjectmattercite>
									<xsl:apply-templates
										select="@* | node() except (date[@searchtype = 'LAST-UPDATE-DATE'] | classification)"
									/>
								</ref:subjectmattercite>
							</seclaw:digestinfo>
						</seclaw:digest>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>

	<xsl:template match="pgrp[preceding-sibling::*[1][self::h]]/p/text">
		<xsl:apply-templates select="@* | node() except date[@searchtype = 'LAST-UPDATE-DATE']"/>
	</xsl:template>

	<xsl:template match="bodytext/p" priority="2">
		<p>
			<xsl:apply-templates select="@* | node()"/>
		</p>
	</xsl:template>

	<!--	<xsl:template match="p">

		<!-\-  Original Target XPath:  seclaw:bodytext/h   -\->
		<seclaw:bodytext>
			<h>
				<xsl:apply-templates select="@* | node()"/>
			</h>
		</seclaw:bodytext>

	</xsl:template>-->

	<!--	<xsl:template match="bodytext/l">

		<!-\-  Original Target XPath:  seclaw:bodytext/list   -\->
			<list>
				<xsl:apply-templates select="@* | node()"/>
			</list>
	</xsl:template>-->


	<xsl:template match="bodytext/glp:note">

		<!--  Original Target XPath:  seclaw:bodytext/note   -->
		<seclaw:bodytext>
			<note>
				<xsl:apply-templates select="@* | node()"/>
			</note>
		</seclaw:bodytext>

	</xsl:template>

	<xsl:template match="glp:note">

		<!--  Original Target XPath:  seclaw:bodytext/blockquote   -->
		<seclaw:bodytext>
			<blockquote>
				<xsl:apply-templates select="@* | node()"/>
			</blockquote>
		</seclaw:bodytext>

	</xsl:template>

	<xsl:template match="bodytext/note">

		<!--  Original Target XPath:  seclaw:bodytext/note   -->
		<!--<seclaw:bodytext>-->
		<note>
			<xsl:apply-templates select="@*, heading"/>
			<xsl:choose>
				<xsl:when test="child::bodytext">
					<xsl:apply-templates select="node() except heading"/>
				</xsl:when>
				<xsl:otherwise>
					<bodytext>
						<xsl:apply-templates select="node() except heading"/>
					</bodytext>
				</xsl:otherwise>
			</xsl:choose>
		</note>
		<!--</seclaw:bodytext>-->

	</xsl:template>

	<!--	<xsl:template match="note">

		<!-\-  Original Target XPath:  seclaw:level/heading   -\->
		<seclaw:level>
			<heading>
				<xsl:apply-templates select="@* | node()"/>
			</heading>
		</seclaw:level>

	</xsl:template>-->

	<xsl:template match="level/bodytext/heading">

		<!--  Original Target XPath:  seclaw:level/heading   -->
		<heading>
			<xsl:apply-templates select="@* | node()"/>
		</heading>
	</xsl:template>

	<!--	<xsl:template match="p/text">

		<!-\-  Original Target XPath:  seclaw:bodytext/note   -\->
		<!-\-<seclaw:bodytext>-\->
			<!-\-<note>-\->
		<text>
				<xsl:apply-templates select="@* | node()"/>
		</text>
			<!-\-</note>-\->
		<!-\-</seclaw:bodytext>-\->

	</xsl:template>-->

	<xsl:template match="seclaw:bodytext/p/text">

		<!--  Original Target XPath:  seclaw:bodytext/note   -->
		<seclaw:bodytext>
			<note>
				<xsl:apply-templates select="@* | node()"/>
			</note>
		</seclaw:bodytext>

	</xsl:template>

	<xsl:template match="p/text/glp:note">

		<!--  Original Target XPath:  seclaw:bodytext/note   -->
		<seclaw:bodytext>
			<note>
				<xsl:apply-templates select="@* | node()"/>
			</note>
		</seclaw:bodytext>

	</xsl:template>

	<xsl:template match="docinfo:custom-metafield[@name = 'EDIT-DATE']" mode="miscdate">
		<seclaw:levelinfo>
			<miscdate>
				<xsl:attribute name="month">
					<xsl:value-of select="substring-before(., '/')"/>
				</xsl:attribute>
				<xsl:attribute name="day">
					<xsl:value-of select="substring-before(substring-after(., '/'), '/')"/>
				</xsl:attribute>
				<xsl:attribute name="year">
					<xsl:value-of select="substring-after(substring-after(., '/'), '/')"/>
				</xsl:attribute>
				<xsl:attribute name="datetype">
					<xsl:text>EDIT-DATE</xsl:text>
				</xsl:attribute>
			</miscdate>
			<miscdate>
				<datetype>
					<xsl:text>LAST-UPDATE-DATE</xsl:text>
				</datetype>
			</miscdate>
			<meta>
				<metaitem name="rosettastyle" value="comm13"/>
			</meta>
		</seclaw:levelinfo>
	</xsl:template>

	<xsl:template match="note/@notetype"/>
	
	<xsl:template match="ci:caseref/@exclude" priority="25"/>
	
	<xsl:template match="ci:courtruleref/@etseq" priority="25"/>

</xsl:stylesheet>
