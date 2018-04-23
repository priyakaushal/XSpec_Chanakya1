<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
	xmlns:case="http://www.lexis-nexis.com/glp/case"
	xmlns:compcase="urn:x-lexisnexis:content:compositecourtcase:sharedservices:1"
	xmlns:courtcase="http://www.lexisnexis.com/xmlschemas/content/legal/courtcase/1/"
	xmlns:decision="http://www.lexisnexis.com/xmlschemas/content/legal/decision/1/"
	version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/"
		id="case.judgments">
		<title>case:judgments <lnpid>id-UK02-27226</lnpid></title>
		<body>
			<section>
				<p>
					<sourcexml class="+ topic/keyword xml-d/sourcexml "
						>case:judgments</sourcexml> becomes <targetxml
						class="+ topic/keyword xml-d/targetxml "
						>compcase:body/compcase:caseinstance/compcase:caseinstancebody/courtcase:opinions</targetxml>.
				</p>
			</section>

			<example>
				<title>Source XML - <sourcexml>case:judgments</sourcexml> (<i>not</i>
					preceded by <sourcexml>case:typeofcase</sourcexml>) </title>
				<codeblock> &lt;case:judgments&gt; &lt;case:judgment subdoc="true"
					toc-caption="SWIFT J."&gt; &lt;case:judgmentbody&gt; &lt;pgrp&gt;
					&lt;p&gt; &lt;text&gt; By the Housing Act 1925, s 64, power to acquire
					landcompulsorily is conferred upon local authorities. That section
					provides that a local authority may be authorised to purchase land
					compulsorily for the purpose of part III of the Act by means of an
					order submitted to the Minister and confirmed by him in accordance
					with sched III of the Act. That section has been amended, but the
					substance of it remains. Under that section the Sunderland Corporation
					made an order by which they proposed to acquire compulsorily land in
					Durham Road, belonging to Mr Allen Horn, consisting of some 102 acres.
					Part of that land they desired for the purpose of building houses and
					part of it they desired for the purpose of enlarging a public park.
					There was a point originally raised in the notice of appeal to the
					effect that under this procedure, there was no power in the
					corporation to acquire land for the purpose of a public park. That
					point has been abandoned, and abandoned in this case for all time.
					Some day it may have to be decided. It does not fall to be decided
					either today, or any day in regard of this particular land and this
					particular corporation and this particular park. &lt;/text&gt;
					&lt;/p&gt; &lt;/pgrp&gt; &lt;/case:judgmentbody&gt;
					&lt;/case:judgment&gt; &lt;/case:judgments&gt; </codeblock>
			</example>

			<example>
				<title>Target XML</title>
				<codeblock> &lt;compcase:caseinstance&gt;
					&lt;compcase:caseinstancebody&gt; &lt;courtcase:opinions&gt;
					&lt;courtcase:opinion includeintoc="true" alternatetoccaption="Perram
					 J."&gt; &lt;bodytext&gt; &lt;pgrp&gt; &lt;p&gt; &lt;text&gt; By the
					Housing Act 1925, s 64, power to acquire landcompulsorily is conferred
					upon local authorities. That section provides that a local authority
					may be authorised to purchase land compulsorily for the purpose of
					part III of the Act by means of an order submitted to the Minister and
					confirmed by him in accordance with sched III of the Act. That section
					has been amended, but the substance of it remains. Under that section
					the Sunderland Corporation made an order by which they proposed to
					acquire compulsorily land in Durham Road, belonging to Mr Allen Horn,
					consisting of some 102 acres. Part of that land they desired for the
					purpose of building houses and part of it they desired for the purpose
					of enlarging a public park. There was a point originally raised in the
					notice of appeal to the effect that under this procedure, there was no
					power in the corporation to acquire land for the purpose of a public
					park. That point has been abandoned, and abandoned in this case for
					all time. Some day it may have to be decided. It does not fall to be
					decided either today, or any day in regard of this particular land and
					this particular corporation and this particular park. &lt;/text&gt;
					&lt;/p&gt; &lt;/pgrp&gt; &lt;/bodytext&gt; &lt;/courtcase:opinion&gt;
					&lt;/courtcase:opinions&gt; &lt;/compcase:caseinstancebody&gt;
					&lt;/compcase:caseinstance&gt; </codeblock>
			</example>

			<section>
				<p>If <sourcexml>case:judgments</sourcexml> has
						<sourcexml>case:typeofcase</sourcexml> as a preceding sibling, then
						<sourcexml>case:judgments</sourcexml> and the preceding
						<sourcexml>case:typeofcase</sourcexml> should map to the same target
						<targetxml>compcase:body/compcase:caseinstance</targetxml>. </p>
			</section>

			<example>
				<title>Source XML - <sourcexml>case:judgments</sourcexml> preceded by
						<sourcexml>case:typeofcase</sourcexml></title>
				<codeblock> &lt;case:content&gt; &lt;case:typeofcase&gt; &lt;h&gt;
					&lt;emph typestyle="bf"&gt;Introduction&lt;/emph&gt; &lt;/h&gt;
					&lt;pgrp&gt; &lt;p&gt; &lt;text&gt;The Minister of Health
					appealed.&lt;/text&gt; &lt;/p&gt; &lt;/pgrp&gt;
					&lt;/case:typeofcase&gt; &lt;case:judgments&gt;
					&lt;case:constituents&gt; &lt;case:constituent&gt; &lt;person&gt;
					&lt;name.text&gt; &lt;emph typestyle="it"&gt;The Solicitor-General
					(Sir Terence O'Connor KC) and Valentine Holmes for the
					appellant.&lt;/emph&gt; &lt;/name.text&gt; &lt;/person&gt;
					&lt;/case:constituent&gt; &lt;/case:constituents&gt;
					&lt;/case:judgments&gt; &lt;/case:content&gt; </codeblock>
			</example>

			<example>
				<title>Target XML</title>
				<codeblock> &lt;compcase:caseinstance&gt;
					&lt;compcase:caseinstancehead&gt; &lt;casesum:summaries&gt;
					&lt;casesum:editorialsummary&gt; &lt;casesum:overview&gt;
					&lt;bodytext&gt; &lt;h&gt; &lt;emph
					typestyle="bf"&gt;Introduction&lt;/emph&gt; &lt;/h&gt; &lt;pgrp&gt;
					&lt;p&gt; &lt;text&gt;The Minister of Health appealed.&lt;/text&gt;
					&lt;/p&gt; &lt;/pgrp&gt; &lt;/bodytext&gt; &lt;/casesum:overview&gt;
					&lt;/casesum:editorialsummary&gt; &lt;/casesum:summaries&gt;
					&lt;/compcase:caseinstancehead&gt; &lt;compcase:caseinstancebody&gt;
					&lt;courtcase:opinions&gt; &lt;courtcase:representation&gt;
					&lt;courtcase:counsel&gt; &lt;person:counselor&gt;
					&lt;person:person&gt; &lt;person:name.text&gt; &lt;emph
					typestyle="it"&gt;The Solicitor-General (Sir Terence O'Connor KC) and
					Valentine Holmes for the appellant.&lt;/emph&gt;
					&lt;/person:name.text&gt; &lt;/person:person&gt;
					&lt;/person:counselor&gt; &lt;/courtcase:counsel&gt;
					&lt;/courtcase:representation&gt; &lt;/courtcase:opinions&gt;
					&lt;/compcase:caseinstancebody&gt; &lt;/compcase:caseinstance&gt;
				</codeblock>
			</example>

			<section>
				<p>When <sourcexml class="+ topic/keyword xml-d/sourcexml "
						>case:dates</sourcexml> appears as direct child of <sourcexml
						class="+ topic/keyword xml-d/sourcexml ">case:judgments</sourcexml>
					then conversion needs to omit the tag (<sourcexml
						class="+ topic/keyword xml-d/sourcexml ">case:dates</sourcexml>) and
					retain content in this particular context and create <targetxml
						class="+ topic/keyword xml-d/targetxml "
						>decision:decisiondate</targetxml> as direct child of <targetxml
						class="+ topic/keyword xml-d/targetxml "
						>courtcase:opinions</targetxml>, i.e., <sourcexml
						class="+ topic/keyword xml-d/sourcexml "
						>case:judgments/case:dates/case:decisiondate</sourcexml> becomes
						<targetxml class="+ topic/keyword xml-d/targetxml "
						>courtcase:opinions/decision:decisiondate</targetxml>. </p>
				<p> The attribute <targetxml>decision:decisiondate/@normdate</targetxml>
					should be populated with the values of
						<sourcexml>case:decisiondate/date/@year</sourcexml>,
						<sourcexml>case:decisiondate/date/@month</sourcexml> and
						<sourcexml>case:decisiondate/date/@day</sourcexml> concatenated and
					separated by a single hyphen. The values of
						<sourcexml>case:decisiondate/date/@month</sourcexml> and
						<sourcexml>case:decisiondate/date/@day</sourcexml> should be padded
					with zeroes so that they are 2 digits. <note>If one or more of the
						three date values (year, month or day) are absent, then
							<targetxml>decision:decisiondate/@normdate</targetxml> should
							<b>not</b> be populated.</note>
				</p>
			</section>

			<example>
				<title>Source XML - <sourcexml>case:dates</sourcexml> as a child of
						<sourcexml>case:judgments</sourcexml></title>
				<codeblock> &lt;case:judgments&gt; &lt;case:dates&gt;
					&lt;case:decisiondate&gt; &lt;date day="09" month="07"
					year="1936"&gt;9 July 1936&lt;/date&gt;. The following judgment was
					delivered.&lt;/case:decisiondate&gt; &lt;/case:dates&gt; ...
					&lt;/case:judgments&gt; </codeblock>
			</example>

			<example>
				<title>Target XML</title>
				<codeblock> &lt;courtcase:opinions&gt; &lt;decision:decisiondate
					day="09" month="07" year="1936" normdate="1936-07-09"&gt;
					&lt;date-text&gt;9 July 1936&lt;/date-text&gt;. The following judgment
					was delivered. &lt;/decision:decisiondate&gt; ...
					&lt;/courtcase:opinions&gt; </codeblock>
			</example>
			<p>
				<note>When <sourcexml>case:decisiondate</sourcexml> is preceding-sibling
					of <sourcexml>page</sourcexml></note>
			</p>
			<p>
				<sourcexml>case:judgments/case:dates/page</sourcexml> becomes
					<targetxml>courtcase:opinions/decision:decisiondate/ref:page</targetxml>
			</p>
			<example>
				<title>Source XML</title>
				<codeblock> &lt;case:judgments&gt; &lt;case:dates&gt;
					&lt;case:decisiondate&gt;[The court convened again on 13 March 1998
					and after hearing further argument the following judgments were
					delivered.]&lt;/case:decisiondate&gt; &lt;page text="58 ConLR 46 at "
					count="101" reporter="CONLR" /&gt; &lt;/case:dates&gt; ...
					&lt;/case:judgments&gt; </codeblock>
			</example>

			<example>
				<title>Target XML</title>
				<codeblock> &lt;courtcase:opinions&gt; &lt;decision:decisiondate&gt;[The
					court convened again on 13 March 1998 and after hearing further
					argument the following judgments were delivered.] &lt;ref:page
					num="101" page-scheme="CONLR"
					page-scheme-type="reporter-abbreviation"/&gt;
					&lt;/decision:decisiondate&gt; ... &lt;/courtcase:opinions&gt;
				</codeblock>
			</example>
			<section>
				<title>Change</title>
				<p>2013-12-27: <ph id="change_20131227_SSX">Added instruction to handle
						case:dates/page WebTeam #248449</ph></p>
			</section>

		</body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK02-Comp_Cases\case.judgments.dita  -->

	<!-- "If case:judgments has case:typeofcase as a preceding sibling, then case:judgments and the preceding case:typeofcase should map to the
same target compcase:body/compcase:caseinstance." -->
	<xsl:template match="case:judgments">
		<compcase:caseinstance>
		  <!-- group the following together: 
		    first <note> (handled in /modules/case/UK02-Comp_Cases_case.constituents.xsl)
		    then  <opinions>
 		          case:constituents(start of group), prelim, case:dates, case:judgment
		    close </opinions>
		    then case:disposition(end of group), which processes following-sibling <note> -->
		  <!-- JD: 2017-12-06: Web* 7065640 ; added 'preceding-sibling::*[1][self::case:disposition] or', to exception list, as case:disposition processes notes -->
			<compcase:caseinstancebody>
			  <!-- everything but case:disposition goes into courtcase:opinions -->
			  <xsl:for-each-group select="* except (case:disposition,
			    note [preceding-sibling::*[1][self::case:disposition] or
			           not(following-sibling::*) 
			           or (following-sibling::*[1][self::page]) and (count(following-sibling::*)=1)])"
			    group-starting-with="case:constituents[not(following-sibling::*)]">
			      <!-- if case:constituents has folowing-sibling elements wrap within <courtcase:opinions>; if not
			      that will be handled in /modules/case/UK02-Comp_Cases_case.decisionsummary.xsl
			      best solution probably lies here, but grouping logic (to match DT) is complicated and can't be inferred from CI -->
			    <!-- content not meeting this 'if' condition is handled elsewhere (adding an xsl:otherwise creates duplicate content following the group)-->			    
			    <xsl:if test="not(preceding-sibling::*[1][self::case:decisionsummary])">
		        <courtcase:opinions>
		        	<!-- Web* 7057962: <decision:decisiondate> must appear in courtcase:opinions -->
		        	<xsl:apply-templates select="current-group()/case:courtinfo/case:dates"/>
		          <xsl:apply-templates select="current-group()"/>
		        </courtcase:opinions>
			    </xsl:if>
			    <!-- and case:disposition follows, outside closing </courtcase:opinions>-->
			    <xsl:apply-templates select="current-group()/following-sibling::*[1][name()='case:disposition']"/>
			  </xsl:for-each-group>
			</compcase:caseinstancebody>
		</compcase:caseinstance>
	</xsl:template>

	<xsl:template match="case:dates[parent::case:judgements]">
		<!--  Original Target XPath:  decision:decisiondate   -->
		<decision:decisiondate>
			<xsl:apply-templates select="@* | node() except (case:dates)"/>
		</decision:decisiondate>
	</xsl:template>

</xsl:stylesheet>