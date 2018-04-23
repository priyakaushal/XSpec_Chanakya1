<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
	xmlns:ci="http://www.lexis-nexis.com/ci" xmlns:source_lnci="http://www.lexis-nexis.com/lnci"
	xmlns:source_cttr="http://www.lexis-nexis.com/glp/cttr"
	xmlns:leg="http://www.lexis-nexis.com/glp/leg"
	xmlns:lnci="http://www.lexisnexis.com/xmlschemas/content/shared/citations/1/"
	xmlns:case="http://www.lexis-nexis.com/glp/case"
	xmlns:jrnl="http://www.lexis-nexis.com/glp/jrnl"
	xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/" version="2.0"
	exclude-result-prefixes="dita ci case leg jrnl source_lnci source_cttr lnci">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/"
		id="Rosetta_ci.cite-to-LexisAdvance_lnci.cite">
		<title><sourcexml>ci.cite</sourcexml> to <targetxml>lnci.cite</targetxml>
			<lnpid>id-CCCC-10268</lnpid></title>
		<body>
			<section>
				<title>Instructions</title>
				<p>In the Fab Pipeline, JCite/CFE shall conduct a lookup based on the lnci:content
					or the @normcite (if populated) and populate the markup with the additional
					keywords needed for cite traversal. </p>
				<p>The only markup needed for JCite/CFE is
						<targetxml>lnci:cite/lnci:content</targetxml> and optionally
						<targetxml>lnci:cite/@normcite</targetxml>. In order to resolve the correct
					“pile” target for cite link traversal, either a semantic child content type
					element as described below <b>or</b> the <targetxml>lnci:cite/@type</targetxml>
					attribute (but not both) must also be present in the output markup.</p>

				<p><sourcexml>ci:cite</sourcexml> becomes <targetxml>lnci:cite</targetxml>, with all
					attribute names and values copied as they occur in the source. Convert all
					descendant elements of <sourcexml>ci:cite</sourcexml> by copying the elements
					and their attribute names and values from the <sourcexml>ci:</sourcexml>
					namespace <b>as is</b> into the <targetxml>lnci:</targetxml> namespace. That is,
					every descendant of <sourcexml>ci:cite</sourcexml> that has the form
						<sourcexml>ci:{element-name}</sourcexml> is converted to
						<targetxml>lnci:{element-name}</targetxml>. As an example of converting the
					descendants of <sourcexml>ci:cite</sourcexml> into the
						<targetxml>lnci:</targetxml> namespace, here is a partial list of the child
					elements from Rosetta and what they should be converted to: <ul>
						<li><sourcexml>ci:casename</sourcexml> becomes
								<targetxml>lnci:casename</targetxml>
						</li>
						<li><sourcexml>ci:constref</sourcexml> becomes
								<targetxml>lnci:constref</targetxml>
						</li>
						<li><sourcexml>ci:courtruleref</sourcexml> becomes
								<targetxml>lnci:courtruleref</targetxml>
						</li>
						<li><sourcexml>ci:decisionref</sourcexml> becomes
								<targetxml>lnci:decisionref</targetxml>
						</li>
						<li><sourcexml>ci:effdate</sourcexml> becomes
								<targetxml>lnci:effdate</targetxml>
						</li>
						<li><sourcexml>ci:party1</sourcexml> becomes
								<targetxml>lnci:party1</targetxml>
						</li>
						<li><sourcexml>ci:party2</sourcexml> becomes
								<targetxml>lnci:party2</targetxml>
						</li>
						<li><sourcexml>ci:procphrase</sourcexml> becomes
								<targetxml>lnci:procphrase</targetxml>
						</li>
						<li><sourcexml>ci:reglref</sourcexml> becomes
								<targetxml>lnci:reglref</targetxml>
						</li>
						<li><sourcexml>ci:statinfo</sourcexml> becomes
								<targetxml>lnci:statinfo</targetxml>
						</li>
						<li><sourcexml>ci:text</sourcexml> becomes <targetxml>lnci:text</targetxml>
						</li>
					</ul>
				</p>
				<p>There are two important exceptions to the converstion instructions given in the
					preceding paragraph: <ul>
						<li>Do not convert any Rosetta-only markup that, if kept, would make the
							output invalid. </li>
						<li>Drop the start and end tags (the mark-up) for
								<sourcexml>citefragment</sourcexml> and
								<sourcexml>ci:span</sourcexml> but keep the content of these
							elements as part of what is converted to the content of
								<targetxml>lnci:content</targetxml>.</li>
						<li> Drop all instances of
							<sourcexml>ci:{element-name}/@spanref</sourcexml>.</li>
					</ul></p>
				<p>The following are mappings for children of <sourcexml>ci:cite</sourcexml>: <ul>
						<li><sourcexml>ci:case</sourcexml> becomes
							<targetxml>lnci:case</targetxml></li>
						<li><sourcexml>ci:stat</sourcexml> becomes
							<targetxml>lnci:stat</targetxml></li>
						<li><sourcexml>ci:juryinstr</sourcexml> becomes
								<targetxml>lnci:juryinstr</targetxml></li>
						<li><sourcexml>ci:reg</sourcexml> becomes
							<targetxml>lnci:reg</targetxml></li>
						<li><sourcexml>ci:courtrule</sourcexml> becomes
								<targetxml>lnci:courtrule</targetxml></li>
						<li><sourcexml>ci:sesslaw</sourcexml> becomes
								<targetxml>lnci:sesslaw</targetxml></li>
						<li><sourcexml>ci:patent</sourcexml> becomes
								<targetxml>lnci:patent</targetxml></li>
						<li><sourcexml>ci:tmark</sourcexml> becomes
								<targetxml>lnci:tmark</targetxml></li>
						<li><sourcexml>ci:copyright</sourcexml> becomes
								<targetxml>lnci:copyright</targetxml></li>
						<li><sourcexml>ci:lawrev</sourcexml> becomes
								<targetxml>lnci:lawrev</targetxml></li>
						<li><sourcexml>ci:periodical</sourcexml> becomes
								<targetxml>lnci:periodical</targetxml></li>
						<li><sourcexml>ci:pinpoint</sourcexml> becomes
								<targetxml>lnci:pinpoint</targetxml></li>
						<li><sourcexml>ci:book</sourcexml> becomes
							<targetxml>lnci:book</targetxml></li>
						<li><sourcexml>ci:oag</sourcexml> becomes
							<targetxml>lnci:oag</targetxml></li>
						<li><sourcexml>ci:agencydecision</sourcexml> becomes
								<targetxml>lnci:agencydecision</targetxml></li>
						<li><sourcexml>ci:constitution</sourcexml> becomes
								<targetxml>lnci:constitution</targetxml></li>
						<li><sourcexml>ci:annot</sourcexml> becomes
								<targetxml>lnci:annot</targetxml></li>
						<li><sourcexml>ci:execdoc</sourcexml> becomes
								<targetxml>lnci:execdoc</targetxml></li>
						<li><sourcexml>ci:admininterp</sourcexml> becomes
								<targetxml>lnci:admininterp</targetxml></li>
						<li><sourcexml>ci:misc</sourcexml> becomes
							<targetxml>lnci:misc</targetxml></li>
						<li><sourcexml>ci:form</sourcexml> becomes
							<targetxml>lnci:form</targetxml></li>
					</ul>Given one of the above mappings, the source
						<sourcexml>ci:cite/@searchtype</sourcexml> should be dropped and the target
						<targetxml>lnci:cite/@type</targetxml> should be <b>omitted</b>.</p>
				<p>In the absence of one of the possible children of <sourcexml>ci:cite</sourcexml>
					listed above, <targetxml>lnci:cite/@type</targetxml> should be populated as
					follows: <ul>
						<li><sourcexml>ci:cite/@searchtype="LEG-REF"</sourcexml> becomes
								<targetxml>lnci:cite/@type="legislation"</targetxml></li>
						<li><sourcexml>ci:cite/@searchtype="CASE-REF"</sourcexml> becomes
								<targetxml>lnci:cite/@type="case"</targetxml></li>
						<li><sourcexml>ci:cite/@searchtype="BOOK-REF"</sourcexml> becomes
								<targetxml>lnci:cite/@type="book"</targetxml></li>
						<li><sourcexml>ci:cite/@searchtype="BODY-CASE-REF"</sourcexml> becomes
								<targetxml>lnci:cite/@type="case"</targetxml></li>
						<li><sourcexml>ci:cite/@searchtype="SUMM-CASE-REF"</sourcexml> becomes
								<targetxml>lnci:cite/@type="case"</targetxml></li>
					</ul>This will ensure that the correct “context clue” (Product Content Type or
					PCT) is populated in the Fab Pipeline so that the resulting citation hyperlink
					targets the correct pile. </p>
				<p>
					<b>Handling for AU Journals/Newsitem:</b>
					<ul>
						<li>
							<sourcexml>ci:cite</sourcexml> with attribute
								<sourcexml>@type="cite4thisdoc"</sourcexml> becomes
								<targetxml>lnci:cite</targetxml> with attribute
								<targetxml>@type="cite4thisdoc"</targetxml>
						</li>
					</ul>
				</p>
				<p>
					<b>Handling for NZ Regulation and NZ Act from services:</b>
					<ul>
						<li>If <sourcexml>ci:cite@type</sourcexml> comes with attribute value
									"<b><u>legref</u></b>" in source document then conversion needs
							to suppressed attribute value in target and convert
								<sourcexml>ci:cite</sourcexml> according to general rule. </li>
					</ul>
				</p>
			</section>

			<example>
				<title>Source XML: ci:cite/searchtype="CASE-REF"</title>
				<codeblock> &lt;ci:cite searchtype="CASE-REF"&gt; &lt;ci:case&gt;
					&lt;ci:caseinfo&gt; &lt;ci:decisiondate year="2001"/&gt; &lt;/ci:caseinfo&gt;
					&lt;ci:caseref ID="cr000366" spanref="cr000366-001" status="unval"&gt;
					&lt;ci:reporter value="NSWCCR"/&gt; &lt;ci:volume num="22"/&gt; &lt;ci:page
					num="238"/&gt; &lt;/ci:caseref&gt; &lt;/ci:case&gt; &lt;ci:content&gt;
					&lt;citefragment searchtype="CASE-NAME-REF"&gt; &lt;emph typestyle="it"&gt;Betts
					v Prisk Contractors Pty Ltd&lt;/emph&gt; &lt;/citefragment&gt; &lt;citefragment
					searchtype="CASE-CITE-REF"&gt; &lt;ci:span spanid="cr000366-001"
					status="unval"&gt;(2001) 22 NSWCCR 238&lt;/ci:span&gt;; [2001] NSWCC 146
					&lt;/citefragment&gt; &lt;/ci:content&gt; &lt;/ci:cite&gt; </codeblock>
				<title>Target XML</title>
				<codeblock> &lt;lnci:cite&gt; &lt;lnci:case&gt; &lt;lnci:caseinfo&gt;
					&lt;lnci:decisiondate year="2001"/&gt; &lt;/lnci:caseinfo&gt; &lt;lnci:caseref
					ID="cr000366" status="unval"&gt; &lt;lnci:reporter value="NSWCCR"/&gt;
					&lt;lnci:volume num="22"/&gt; &lt;lnci:page num="238"/&gt; &lt;/lnci:caseref&gt;
					&lt;/lnci:case&gt; &lt;lnci:content&gt; &lt;emph typestyle="it"&gt;Betts v Prisk
					Contractors Pty Ltd&lt;/emph&gt; (2001) 22 NSWCCR 238; [2001] NSWCC 146
					&lt;/lnci:content&gt; &lt;/lnci:cite&gt; </codeblock>
			</example>

			<example>
				<title>SOURCE XML: ci:cite/searchtype="BOOK-REF"</title>
				<codeblock> &lt;ci:cite searchtype="BOOK-REF"&gt; &lt;ci:lawrev&gt; &lt;ci:lawrevref
					ID="cr003268" spanref="cr003268-001"&gt; &lt;ci:lawrevlocator&gt;
					&lt;ci:publicationname normpubcode="BCB"/&gt; &lt;ci:volume num="3"/&gt;
					&lt;ci:issue&gt; &lt;ci:date year="1985"/&gt; &lt;/ci:issue&gt; &lt;ci:page
					num="86"/&gt; &lt;/ci:lawrevlocator&gt; &lt;/ci:lawrevref&gt; &lt;/ci:lawrev&gt;
					&lt;ci:content&gt; &lt;citefragment searchtype="BOOK-CITE-REF"&gt; &lt;ci:span
					spanid="cr003268-001"&gt;(1985) 3 BCB 86&lt;/ci:span&gt; &lt;/citefragment&gt;
					&lt;/ci:content&gt; &lt;/ci:cite&gt; </codeblock>
				<title>Target XML</title>
				<codeblock> &lt;lnci:cite&gt; &lt;lnci:lawrev&gt; &lt;lnci:lawrevref
					ID="cr003268"&gt; &lt;lnci:lawrevlocator&gt; &lt;lnci:publicationname
					normpubcode="BCB"/&gt; &lt;lnci:volume num="3"/&gt; &lt;lnci:issue&gt;
					&lt;lnci:date year="1985"/&gt; &lt;/lnci:issue&gt; &lt;lnci:page num="86"/&gt;
					&lt;/lnci:lawrevlocator&gt; &lt;/lnci:lawrevref&gt; &lt;/lnci:lawrev&gt;
					&lt;lnci:content&gt;(1985) 3 BCB 86&lt;/lnci:content&gt; &lt;/lnci:cite&gt;
				</codeblock>
			</example>

			<example>
				<title>SOURCE XML: ci:cite/searchtype="SUMM-CASE-REF"</title>
				<codeblock> &lt;ci:cite searchtype="SUMM-CASE-REF"&gt; &lt;ci:case&gt;
					&lt;ci:caseref ID="cref00000048" spanref="cspan00000048"&gt; &lt;ci:reporter
					value="FCR"/&gt; &lt;ci:volume num="1"/&gt; &lt;ci:edition&gt;&lt;ci:date
					year="1985"/&gt;&lt;/ci:edition&gt; &lt;ci:page num="856"/&gt;
					&lt;/ci:caseref&gt; &lt;/ci:case&gt; &lt;ci:content&gt;&lt;ci:span
					spanid="cspan00000048"&gt;[1985] 1 F.C. 856&lt;/ci:span&gt;&lt;/ci:content&gt;
					&lt;/ci:cite&gt; </codeblock>
				<title>Target XML</title>
				<codeblock> &lt;lnci:cite&gt; &lt;lnci:case&gt; &lt;lnci:caseref
					ID="cref00000048"&gt; &lt;lnci:reporter value="FCR"/&gt; &lt;lnci:volume
					num="1"/&gt; &lt;lnci:edition&gt;&lt;lnci:date
					year="1985"/&gt;&lt;/lnci:edition&gt; &lt;lnci:page num="856"/&gt;
					&lt;/lnci:caseref&gt; &lt;/lnci:case&gt; &lt;lnci:content&gt;[1985] 1 F.C.
					856&lt;/lnci:content&gt; &lt;/lnci:cite&gt; </codeblock>
			</example>

			<example>
				<title>SOURCE XML: ci:cite/searchtype="BODY-CASE-REF"</title>
				<codeblock> &lt;ci:cite searchtype="BODY-CASE-REF"&gt; &lt;ci:case&gt;
					&lt;ci:caseref ID="cref00000047" spanref="cspan00000047"&gt; &lt;ci:reporter
					value="OEAB"/&gt; &lt;ci:edition&gt;&lt;ci:date
					year="1993"/&gt;&lt;/ci:edition&gt; &lt;ci:refnum num="55"/&gt;
					&lt;/ci:caseref&gt; &lt;/ci:case&gt; &lt;ci:content&gt;&lt;ci:span
					spanid="cspan00000047"&gt;[1993] O.E.A.B. No. 55&lt;/ci:span&gt;
					&lt;/ci:content&gt; &lt;/ci:cite&gt; </codeblock>
				<title>Target XML</title>
				<codeblock> &lt;lnci:cite&gt; &lt;lnci:case&gt; &lt;lnci:caseref
					ID="cref00000047"&gt; &lt;lnci:reporter value="OEAB"/&gt;
					&lt;lnci:edition&gt;&lt;lnci:date year="1993"/&gt;&lt;/lnci:edition&gt;
					&lt;lnci:refnum num="55"/&gt; &lt;/lnci:caseref&gt; &lt;/lnci:case&gt;
					&lt;lnci:content&gt;[1993] O.E.A.B. No. 55&lt;/lnci:content&gt;
					&lt;/lnci:cite&gt; </codeblock>
			</example>

			<example>
				<title>Source XML: ci:pinpoint</title>
				<codeblock> &lt;ci:cite ID="I5DDT1GS2SF8P90080000400" normprotocol="lexsee"
					status="valid"&gt; &lt;ci:agencydecision&gt; &lt;ci:decisionref
					ID="I5DDT1GS2SF8P90070000400"&gt; &lt;ci:reporter normpubcode="4007"
					value=""/&gt; &lt;ci:ldi jumppage="1" kw="8197_1999_805*.1" page="805"
					pagesuffix="*" reporter="8197" volume="1999"/&gt; &lt;ci:volume num="1999"/&gt;
					&lt;ci:page num="805"/&gt; &lt;ci:pinpoint lastnum="2" num="1"/&gt;
					&lt;/ci:decisionref&gt; &lt;/ci:agencydecision&gt; &lt;ci:content&gt;1999 SEC
					No-Act. LEXIS 805, 1-2&lt;/ci:content&gt; &lt;/ci:cite&gt; </codeblock>
			</example>

			<example>
				<title>Target XML: lnci:pinpoint</title>
				<codeblock> &lt;lnci:cite ID="I5DDT1GS2SF8P90080000400" normprotocol="lexsee"
					status="valid"&gt; &lt;lnci:agencydecision&gt; &lt;lnci:decisionref
					ID="I5DDT1GS2SF8P90070000400"&gt; &lt;lnci:reporter normpubcode="4007"
					value=""/&gt; &lt;lnci:ldi jumppage="1" kw="8197_1999_805*.1" page="805"
					pagesuffix="*" reporter="8197" volume="1999"/&gt; &lt;lnci:volume
					num="1999"/&gt; &lt;lnci:page num="805"/&gt; &lt;lnci:pinpoint lastnum="2"
					num="1"/&gt; &lt;/lnci:decisionref&gt; &lt;/lnci:agencydecision&gt;
					&lt;lnci:content&gt;1999 SEC No-Act. LEXIS 805, 1-2&lt;/lnci:content&gt;
					&lt;/lnci:cite&gt; </codeblock>
			</example>

			<p><b>Exception: When <sourcexml>link</sourcexml> is used as intra-document linking
					within <sourcexml>ci:content</sourcexml></b>.</p>
			<p>If the <sourcexml>ci:content</sourcexml> contains a <sourcexml>link</sourcexml>
				child, the <sourcexml>link</sourcexml> wrapper markup (not its content) shall be
				removed (omit tag and retain content) and the <sourcexml>link/@refpt</sourcexml>
				value shall be moved to <targetxml>lnci:cite/@citeref</targetxml>.</p>

			<example>
				<title>SOURCE XML: ci:content/link</title>
				<codeblock> &lt;p&gt; &lt;pnum count="5"&gt;[5]&lt;/pnum&gt; &lt;refpt
					id="20023NZLR_113_p5" type="ext" /&gt; &lt;text&gt;A number of issues were
					raised on Bs behalf but may be summarised as follows:&lt;/text&gt; ...
					&lt;/p&gt; … &lt;ci:cite searchtype="CASE-REF"&gt; &lt;ci:case&gt;
					&lt;ci:caseref ID="x20023NZLR_113-171" spanref="x20023NZLR_113-171-1"&gt;
					&lt;ci:reporter value="nzar" country="nz" /&gt; &lt;ci:edition&gt; &lt;ci:date
					year="2001" /&gt; &lt;/ci:edition&gt; &lt;ci:page num="598" /&gt;
					&lt;/ci:caseref&gt; &lt;/ci:case&gt; &lt;ci:content&gt; &lt;citefragment
					searchtype="CASE-NAME-REF"&gt; &lt;emph typestyle="it"&gt;Auckland District Law
					Society v Ford&lt;/emph&gt; &lt;/citefragment&gt; &lt;citefragment
					searchtype="CASE-CITE-REF"&gt; &lt;ci:span
					spanid="x20023NZLR_113-171-1"&gt;[2001] NZAR 598&lt;/ci:span&gt;
					&lt;/citefragment&gt; at para [ &lt;link
					refpt="20023NZLR_113_p5"&gt;5&lt;/link&gt; ] &lt;/ci:content&gt;
					&lt;/ci:cite&gt; </codeblock>
			</example>

			<example>
				<title>Target XML</title>
				<codeblock> &lt;p&gt; &lt;ref:anchor id="nz_20023NZLR_113_p5" anchortype="global"
					/&gt; &lt;desig value="5" inline="true"&gt;[5]&lt;/desig&gt; &lt;text&gt;A
					number of issues were raised on Bs behalf but may be summarised as
					follows:&lt;/text&gt; ... &lt;/p&gt; … &lt;lnci:cite
					citeref="20023NZLR_113_p5"&gt; &lt;lnci:case&gt; &lt;lnci:caseref
					ID="x20023NZLR_113-171"&gt; &lt;lnci:reporter value="nzar" country="nz" /&gt;
					&lt;lnci:edition&gt; &lt;lnci:date year="2001" /&gt; &lt;/lnci:edition&gt;
					&lt;lnci:page num="598" /&gt; &lt;/lnci:caseref&gt; &lt;/lnci:case&gt;
					&lt;lnci:content&gt; &lt;emph typestyle="it"&gt;Auckland District Law Society v
					Ford&lt;/emph&gt; [2001] NZAR 598 at para [ 5 ] &lt;/lnci:content&gt;
					&lt;/lnci:cite&gt; </codeblock>
			</example>
			<example>
				<title>Source XML: ci:cite/@type="cite4thisdoc" (AU Journals/Newsitem)</title>
				<codeblock> &lt;jrnl:journalcite&gt; &lt;ci:cite type="cite4thisdoc"&gt;
					&lt;ci:lawrev&gt; &lt;ci:lawrevref&gt; &lt;ci:lawrevlocator&gt;
					&lt;ci:publicationname normpubcode="Aust Jnl of Corp Law"/&gt; &lt;ci:volume
					num="15"/&gt; &lt;ci:page num="185"/&gt; &lt;/ci:lawrevlocator&gt;
					&lt;/ci:lawrevref&gt; &lt;/ci:lawrev&gt; &lt;ci:content&gt;(2003) 15 Aust Jnl of
					Corp Law 185&lt;/ci:content&gt; &lt;/ci:cite&gt; &lt;/jrnl:journalcite&gt;
				</codeblock>
			</example>

			<example>
				<title>Target XML: lnci:cite/@type="cite4thisdoc" (AU Journals/Newsitem)</title>
				<codeblock> &lt;ref:cite4thisresource&gt; &lt;lnci:cite type="cite4thisdoc"&gt;
					&lt;lnci:lawrev&gt; &lt;lnci:lawrevref&gt; &lt;lnci:lawrevlocator&gt;
					&lt;lnci:publicationname normpubcode="Aust Jnl of Corp Law"/&gt; &lt;lnci:volume
					num="15"/&gt; &lt;lnci:page num="185"/&gt; &lt;/lnci:lawrevlocator&gt;
					&lt;/lnci:lawrevref&gt; &lt;/lnci:lawrev&gt; &lt;lnci:content&gt;(2003) 15 Aust
					Jnl of Corp Law 185&lt;/lnci:content&gt; &lt;/lnci:cite&gt;
					&lt;/ref:cite4thisresource&gt; </codeblock>
			</example>
			<example>
				<title>Source XML: ci:cite/@type="legref" (NZ Regulation)</title>
				<codeblock> &lt;glp:note&gt; &lt;p&gt; &lt;text&gt; &lt;ci:cite searchtype="LEG-REF"
					type="legref"&gt; &lt;ci:content&gt;Compare: SR 1958/38 r 15Q&lt;/ci:content&gt;
					&lt;/ci:cite&gt; &lt;/text&gt; &lt;/p&gt; &lt;/glp:note&gt; </codeblock>
			</example>

			<example>
				<title>Target XML</title>
				<codeblock> &lt;note&gt; &lt;bodytext&gt; &lt;p&gt; &lt;text&gt; &lt;lnci:cite&gt;
					&lt;lnci:content&gt;Compare: SR 1958/38 r 15Q&lt;/lnci:content&gt;
					&lt;/lnci:cite&gt; &lt;/text&gt; &lt;/p&gt; &lt;/bodytext&gt; &lt;/note&gt;
				</codeblock>
			</example>
			<section>
				<title>Changes</title>
				<p>2016-03-23: <ph id="change_20160323_cite_MCJ">Updated main instructions to
						clarify that descendants of ci:cite, and not just children, are to be
						processed.</ph></p>
				<p>2015-09-15: <ph id="change_20150915_SS">Updated instruction to suppressed the
						attribute <sourcexml>@type</sourcexml> with value "<b>legref</b>" in target.
						Applicable on NZ Regulation and NZ Act from services [Webstar
						#6245139].</ph></p>
				<p>2015-03-17: <ph id="change_20150317_AK">An attribute
							<targetxml>@inline</targetxml> get added with
							<targetxml>desig</targetxml> element even when the
							source<sourcexml>pnum</sourcexml> is not having that
							attribute<sourcexml>@inline</sourcexml> Applicable on CA12
					only.</ph></p>
				<p>2015-02-24: <ph id="change_20150224_AK">Example updated as per new rule an
						attribute <targetxml>@inline</targetxml>get added with
							<targetxml>desig</targetxml>element when the
							source<sourcexml>pnum</sourcexml>is not having that
							attribute<sourcexml>@inline</sourcexml></ph>
				</p>
				<p>2014-12-08: <ph id="change_20141208-1_mlv">Addition of mapping for
							<sourcexml>ci:pinpoint</sourcexml> to
							<targetxml>lnci:pinpoint</targetxml> and example from US LPA
						content.</ph></p>
				<p>2013-12-30: <ph id="change_20131230_jm">Minor illustrative change. Added "(AU
						Journals/Newsitem)" to headings for last example to clarify that retention
						of <sourcexml>@type="cite4thisdoc"</sourcexml> is an exception for that
						content, as already described in narrative rules.</ph></p>
				<p>2013-05-01: <ph id="change_20130501_jm">Removed special rule for
							<sourcexml>ci:cite/ci:content/remotelink</sourcexml> which required
						suppression of <sourcexml>ci:cite/ci:content</sourcexml> tags. The elements
						are now retained and convert according to common rules.</ph></p>
				<p>2013-04-24: <ph id="change_20130424_WL">Added a mapping for
							<sourcexml>ci:procphrase</sourcexml> to
							<sourcexml>lnci:procphrase</sourcexml></ph>.</p>
				<p>2013-01-22: <ph id="change_20130122_xxx">Instruction modified for the scenario
							<sourcexml>ci:cite/ci:content/remotelink</sourcexml> to indicate that
						the <sourcexml>ci:cite</sourcexml> and <sourcexml>ci:content</sourcexml>
						start-tags and end-tags (but not their content) are dropped.</ph></p>
				<p>2012-11-29: <ph id="change_20121129_xxx">Updated instructions to drop all
							<sourcexml>@spanref</sourcexml>.</ph></p>
				<p>2012-09-18: <ph id="change_20120918_xxx">Instruction and example added for
						handling of <sourcexml>ci:cite/@type="cite4thisdoc"</sourcexml> for AU
						Journals/Newsitem.</ph></p>
				<p>2012-09-11: <ph id="change_20120911_xxx">Created.</ph></p>
			</section>
		</body>
	</dita:topic>

	<xsl:template match="ci:cite">
		<xsl:choose>
			<xsl:when test="parent::leg:bodytext">
				<p xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
					<text>
						<lnci:cite>
							<xsl:if test="ci:content/link">
								<xsl:attribute name="citeref" select="ci:content/link/@refpt"/>
							</xsl:if>
							<!-- MDS 2017-05-01 - Added parameter 'childElementName' to match other call.  
				General ci:* module states to drop value of ci:cite/@searchtype if certain strings are found in first child element local-name.  
				Previously this first child element local-name value was not being passed.  The value is not invalid but it is a diff from the DT documents. -->
							<xsl:apply-templates select="@*">
								<xsl:with-param name="childElementName"
									select="local-name(child::*[1])"/>
							</xsl:apply-templates>
							<xsl:apply-templates select="node()"/>
						</lnci:cite>
					</text>
				</p>
			</xsl:when>

			<xsl:otherwise>
				<lnci:cite>
				  <!-- JD: 2017-08-31: added for VSTS Issue 342175.
				  If there is no @type, and no child element aside from <ci:content>, and the parent is case:parallelcite,
				  then set @type='case'
				  -->
				  <xsl:if test="not(@type) and not(*[not(name()='ci:content')])
				    and parent::case:parallelcite and $streamID='UK05'">
				    <xsl:attribute name="type" select="'case'"/>
				  </xsl:if>
					<!-- MDS - 2017-08-10 - added to address instructions in CI for AU13 -->
					<!-- Awantika: Added AU01 for normcite -->
					<xsl:if test="$streamID=('AU13','AU01','HK09','UK11DN')">
						<xsl:if test="ci:case/ci:caseref[ci:reporter/@value and ci:volume/@num and 
							ci:edition/ci:date/@year and ci:pinpoint[@targettype='page']/@num] and
							not(ci:case/ci:caseref/ci:page/@num)">
							<!-- Done simply to set the context node -->
							<xsl:for-each select="ci:case[1]/ci:caseref">
								<xsl:attribute name="normcite">
									<xsl:text>(</xsl:text>
									<xsl:value-of select="ci:edition/ci:date/@year"/>
									<xsl:text>) </xsl:text>
									<xsl:value-of select="ci:volume/@num"/>
									<xsl:text> </xsl:text>
									<xsl:value-of select="ci:reporter/@value"/>
									<xsl:text> </xsl:text>
									<xsl:value-of select="ci:pinpoint[@targettype='page']/@num"/>
								</xsl:attribute>
							</xsl:for-each>
						</xsl:if>
					</xsl:if>
					<!-- Ankita Singh 12 June 2017: Introducted value of lnci:cite/@type to "cite4thisdoc under jrnl:journalcite as per latest CI of UK09 -->
					<xsl:if test="$streamID = ('UK09', 'NZ08','AU14') and parent::jrnl:journalcite">
						<xsl:attribute name="type">cite4thisdoc</xsl:attribute>
					</xsl:if>

					<xsl:if test="ci:content/link">
						<xsl:attribute name="citeref" select="ci:content/link/@refpt"/>
					</xsl:if>
					<xsl:if test="ci:content/remotelink and $streamID = ('NZ14', 'NZ02','AU11','NZ08','AU14')">
						<xsl:attribute name="citeref" select="ci:content/remotelink[1]/@refpt"/> <!-- CSN 8/4/17 added [1] in case there are multiple remotelinks -->
					</xsl:if>
					<!-- 20170721:  MCJ:  We originally grouped NZ15 into the code for NZ14 and NZ02 but found there are differences in how DT was
						                  handling colons and the leading underscore... so we kept NZ15 apart.  It is possibly (likely?) that something
						                  is going to need to change.  The NZ15 code attempts to follow the instructions about using a leading underscore
						                  and translating colons to underscores... however, it is not clear whether the target documents have had their
						                  "cite def" processed similarly.
					                      Also, note the added predicate that ensures that there is a remotelink that has @refpt.  It is not clear
					                      what should happen if cite:content/remotelink[not(@refpt)] exists... hoping data is good.
					-->
					<xsl:if test="ci:content/remotelink[@refpt] and $streamID = ('NZ15')">
                        <!-- First replace any colons with underscores. -->
						<xsl:variable name="translatedCiteRefValue" select="translate(ci:content/remotelink[@refpt][1]/@refpt, ':', '_')" />
						<!-- Now, check if the value starts with a digit... if so, prepend an underscore.  There may be other offending first characters that need to be checked but digits should cover most. -->
						<xsl:variable name="processedCiteRefValue" select="if (matches($translatedCiteRefValue, '^\d')) then concat('_', $translatedCiteRefValue) else $translatedCiteRefValue" />
						
						<xsl:attribute name="citeref" select="$processedCiteRefValue"/>
					</xsl:if>
					<!-- MDS 2017-05-01 - Added parameter 'childElementName' to match other call.  
				General ci:* module states to drop value of ci:cite/@searchtype if certain strings are found in first child element local-name.  
				Previously this first child element local-name value was not being passed.  The value is not invalid but it is a diff from the DT documents. -->
					<xsl:apply-templates select="@*">
						<xsl:with-param name="childElementName" select="local-name(child::*[1])"/>
					</xsl:apply-templates>
					<xsl:apply-templates select="node()"/>
				</lnci:cite>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>

	<xsl:template
		match="ci:*[not(local-name() = ('cite', 'fragment', 'span', 'volume', 'page'))] | ci:volume[normalize-space(@num) != ''] | ci:page[normalize-space(@num) != '']">
		<xsl:element name="{concat('lnci:', local-name())}">

			<xsl:apply-templates select="@*">
				<xsl:with-param name="childElementName" select="node()[1]/local-name()"/>
			</xsl:apply-templates>

			<!-- Sudhanshu Srivastava 7 June 2017 : Added condition for CA03 stream Only. condition for generating lnci:popname and lnci:hiertext.-->
			<xsl:if test="$streamID = 'CA03' and local-name() = 'statinfo'">
				<xsl:variable name="beforestring"
					select="substring-before(ancestor::source_cttr:body/leg:info/leg:officialname, '/')"/>
				<xsl:variable name="afterstring"
					select="substring-after(ancestor::source_cttr:body/leg:info/leg:officialname, '/')"/>
				<xsl:variable name="fullstring"
					select="ancestor::source_cttr:body/leg:info/leg:officialname"/>
				<xsl:variable name="cicitecount"
					select="count(ancestor::source_cttr:body/leg:info/leg:officialnum/ci:cite)"/>
				<xsl:variable name="legjuris"
					select="ancestor::source_cttr:body/leg:info/leg:juris[1]"/>
				<xsl:variable name="legofnumchild"
					select="ancestor::source_cttr:body/leg:info/leg:officialnum"/>
				<xsl:if test="ancestor::leg:officialnum/parent::leg:info/parent::source_cttr:body">
					<xsl:choose>
						<xsl:when test="$cicitecount = 1">
							<xsl:choose>
								<xsl:when test="not(contains($fullstring, '/'))">
									<xsl:if
										test="not(ancestor::ci:cite/preceding-sibling::*[1][self::ci:cite])">
										<lnci:popname value="{$fullstring}"/>
									</xsl:if>
								</xsl:when>
								<xsl:otherwise>
									<lnci:popname value="{$beforestring}"/>
								</xsl:otherwise>
							</xsl:choose>
							<lnci:jurisinfo>
								<lnci:can>
									<xsl:attribute name="district">
										<xsl:choose>
											<xsl:when test="$legjuris = 'PQ'">QC</xsl:when>
											<xsl:when test="$legjuris = ('CD', 'Canada', 'UK')"
												>CA</xsl:when>
											<xsl:when test="$legjuris = ('NF')">NL</xsl:when>
											<xsl:when test="$legjuris = ('NU')"/>
											<xsl:otherwise>
												<xsl:value-of select="$legjuris"/>
											</xsl:otherwise>
										</xsl:choose>
									</xsl:attribute>
								</lnci:can>
							</lnci:jurisinfo>
						</xsl:when>
						<xsl:when test="$cicitecount = 2">
							<xsl:choose>
								<xsl:when test="not(contains($fullstring, '/'))">
									<xsl:if
										test="not(ancestor::ci:cite/preceding-sibling::*[1][self::ci:cite])">
										<lnci:popname value="{$fullstring}"/>
									</xsl:if>
								</xsl:when>
								<xsl:otherwise>
									<lnci:popname
										value="{if(not(ancestor::ci:cite/preceding-sibling::*[1][self::ci:cite])) then $beforestring else $afterstring}"
									/>
								</xsl:otherwise>
							</xsl:choose>
							<lnci:jurisinfo>
								<lnci:can>
									<xsl:attribute name="district">
										<xsl:choose>
											<xsl:when test="$legjuris = 'PQ'">QC</xsl:when>
											<xsl:when test="$legjuris = ('CD', 'Canada', 'UK')"
												>CA</xsl:when>
											<xsl:when test="$legjuris = ('NF')">NL</xsl:when>
											<xsl:when test="$legjuris = ('NU')"/>
											<xsl:otherwise>
												<xsl:value-of select="$legjuris"/>
											</xsl:otherwise>
										</xsl:choose>
									</xsl:attribute>
								</lnci:can>
							</lnci:jurisinfo>
						</xsl:when>
						<xsl:when test="$cicitecount = 4">
							<xsl:choose>
								<xsl:when test="not(contains($fullstring, '/'))">
									<xsl:if
										test="not(ancestor::ci:cite/preceding-sibling::*[1][self::ci:cite])">
										<lnci:popname value="{$fullstring}"/>
									</xsl:if>
									<xsl:if
										test="ancestor::ci:cite/preceding-sibling::*[1][self::ci:cite] and count(ancestor::ci:cite/preceding-sibling::*[1][self::ci:cite]) = 1">
										<lnci:popname value="{$fullstring}"/>
									</xsl:if>
								</xsl:when>
								<xsl:otherwise>
									<xsl:if
										test="not(ancestor::ci:cite/preceding-sibling::*[1][self::ci:cite])">
										<lnci:popname value="{$beforestring}"/>
									</xsl:if>
									<xsl:if
										test="ancestor::ci:cite/preceding-sibling::*[1][self::ci:cite] and count(ancestor::ci:cite/preceding-sibling::ci:cite) = 1">
										<lnci:popname value="{$beforestring}"/>
									</xsl:if>
									<xsl:if
										test="count(ancestor::ci:cite/preceding-sibling::ci:cite) = 2">
										<lnci:popname value="{$afterstring}"/>
									</xsl:if>

									<xsl:if
										test="count(ancestor::ci:cite/preceding-sibling::ci:cite) = 3">
										<lnci:popname value="{$afterstring}"/>
									</xsl:if>
								</xsl:otherwise>
							</xsl:choose>

							<lnci:jurisinfo>
								<lnci:can>
									<xsl:attribute name="district">
										<xsl:choose>
											<xsl:when test="$legjuris = 'PQ'">QC</xsl:when>
											<xsl:when test="$legjuris = ('CD', 'Canada', 'UK')"
												>CA</xsl:when>
											<xsl:when test="$legjuris = ('NF')">NL</xsl:when>
											<xsl:when test="$legjuris = ('NU')"/>
											<xsl:otherwise>
												<xsl:value-of select="$legjuris"/>
											</xsl:otherwise>
										</xsl:choose>
									</xsl:attribute>
								</lnci:can>
							</lnci:jurisinfo>

						</xsl:when>
						<xsl:otherwise> </xsl:otherwise>
					</xsl:choose>

				</xsl:if>
			</xsl:if>

			<xsl:if
				test="$streamID = 'CA03' and local-name() = 'hierlev' and not(child::ci:hierlev)">
				<xsl:variable name="beforeslash"
					select="substring-before(ancestor::source_cttr:body/leg:info/leg:num, '/')"/>
				<xsl:variable name="afterslash"
					select="substring-after(ancestor::source_cttr:body/leg:info/leg:num, '/')"/>
				<xsl:variable name="fullnumber" select="ancestor::source_cttr:body/leg:info/leg:num"/>
				<xsl:variable name="cicitecount"
					select="count(ancestor::source_cttr:body/leg:info/leg:officialnum/ci:cite)"/>
				<xsl:variable name="legofnumchild"
					select="ancestor::source_cttr:body/leg:info/leg:officialnum"/>
				<xsl:if test="contains(ancestor::leg:officialnum/preceding-sibling::leg:num, '/')">
					<xsl:choose>
						<xsl:when test="$cicitecount = 1">
							<lnci:hiertext value="{$beforeslash}"/>
						</xsl:when>
						<xsl:when test="$cicitecount = 2">
							<lnci:hiertext
								value="{if(not(ancestor::ci:cite/preceding-sibling::*[1][self::ci:cite])) then $beforeslash else $afterslash}"
							/>
						</xsl:when>
						<xsl:when test="$cicitecount = 4">
							<xsl:if
								test="not(ancestor::ci:cite/preceding-sibling::*[1][self::ci:cite])">
								<lnci:hiertext value="{$beforeslash}"/>
							</xsl:if>
							<xsl:if
								test="ancestor::ci:cite/preceding-sibling::*[1][self::ci:cite] and count(ancestor::ci:cite/preceding-sibling::ci:cite) = 2">
								<lnci:hiertext value="{$afterslash}"/>
							</xsl:if>
						</xsl:when>
					</xsl:choose>

				</xsl:if>
			</xsl:if>
		<!-- Awantika-21-07-2017- For AU20 remotelink needs to be created outside ci:content -->	
			<xsl:choose>
	<xsl:when test="$streamID='AU20' and local-name() = 'content'">
		<xsl:apply-templates select="node() except remotelink"/>
	</xsl:when>
	<xsl:when test="$streamID='CA02DC' and local-name()='content' and ancestor::case:reportercite">
	<xsl:apply-templates select="*"/>
	</xsl:when>
				<!-- Awantika-2018-01-25-  trailing comma and space should be suppressed in target lnci:content. Webstar # 7102029 -->
				<!-- Awantika-2018-01-29-  trailing space should be suppressed in target lnci:content. Webstar # 7102029 -->
	<xsl:when test="$streamID='CA02CC' and local-name()='content'">
				<xsl:choose>
					<xsl:when test="starts-with(.,'Full text: ') and contains(.,',')">						
						<xsl:value-of select="replace(replace(.,', ',''),'Full text: ','')"/>
					</xsl:when>
					<xsl:when test="starts-with(.,'Texte intégral :') and contains(.,',')">
						<xsl:value-of select="replace(replace(.,', ',''),'Texte intégral :','')"/>
					</xsl:when>
					<xsl:when test="starts-with(.,'Full text/texte intégral: ') and contains(.,',')">
						<xsl:value-of select="replace(replace(.,', ',''),'Full text/texte intégral: ','')"/>	
					</xsl:when>
					
					
					<xsl:when test="starts-with(.,'Full text: ') and not(contains(.,','))">						
						<xsl:value-of select="replace(.,'Full text: ','')"/>
					</xsl:when>
					<xsl:when test="starts-with(.,'Texte intégral :') and not(contains(.,','))">
						<xsl:value-of select="replace(.,'Texte intégral :','')"/>
					</xsl:when>
					<xsl:when test="starts-with(.,'Full text/texte intégral: ') and not(contains(.,','))">
						<xsl:value-of select="replace(.,'Full text/texte intégral: ','')"/>	
					</xsl:when>
					<xsl:otherwise>
						<xsl:apply-templates select="node()"/>
					</xsl:otherwise>
				</xsl:choose>
	</xsl:when>
	<xsl:otherwise>
		<xsl:apply-templates select="node()"/>
	</xsl:otherwise>
</xsl:choose>
		</xsl:element>
	</xsl:template>

	<!-- JD: 20170524 : added to trap error output message -->
	<xsl:template match="ci:pinpoint/@searchtype"/>



	<xsl:template
		match="ci:*/@*[not(name() = ('searchtype', 'spanref', 'type', 'ID', 'ln.nsprefix'))]">
		<xsl:attribute name="{name()}">
			<xsl:value-of select="."/>
		</xsl:attribute>
	</xsl:template>

	<xsl:template match="ci:volume[@num = ''] | ci:volume[@num = ' '] | ci:page[@num = '']"/>

	<xsl:template match="ci:*/@spanref | ci:*/@ln.nsprefix"/>

	<xsl:template match="ci:*/@ID">
		<xsl:param name="increment-caserefid" tunnel="yes"/>
		<xsl:variable name="dupStatus">
			<xsl:for-each select="parent::*">
				<xsl:call-template name="amIaDuplicate"/>
			</xsl:for-each>
		</xsl:variable>
		<xsl:choose>
			<xsl:when test="$dupStatus = 'false'">
				<xsl:attribute name="ID">
					<xsl:call-template name="normalizeIdString"/>
					<xsl:if test="$increment-caserefid = 'yes'">
						<xsl:text>_01</xsl:text>
					</xsl:if>
				</xsl:attribute>
			</xsl:when>
			<xsl:otherwise>
				<xsl:message>citation ID for <xsl:value-of select="parent::*"/> was a duplicate and
					has been removed from the conversion.</xsl:message>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>


	<xsl:template match="citefragment | ci:span">
		<!-- Sudhanshu : 6 june 2017 , requirement for converting ci:span to lnci:span, so using choose scenario. -->
		<xsl:choose>
			<xsl:when
				test="$streamID = 'CA03' and not(ancestor::leg:officialnum) and not(ancestor::case:parallelcite)">
				<lnci:span>
					<xsl:apply-templates select="@* | node()"/>
				</lnci:span>
			</xsl:when>
			<xsl:otherwise>
				<xsl:apply-templates/>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>


	<!--<xsl:template
		match="citefragment[parent::ci:content and remotelink[@service = 'DOC-ID']][$streamID = 'AU04' or $streamID = 'AU08']"> </xsl:template>-->

	<xsl:template
		match="citefragment[parent::ci:content and remotelink[@service = 'DOC-ID']][$streamID = ('AU04', 'AU08')]">

		<xsl:call-template name="remotelinkDOCID"/>
	</xsl:template>
	
	<xsl:template match="citefragment[parent::ci:content and remotelink[@service = 'DOC-ID']][$streamID = ('NZ09', 'NZ07-DN')]">
		<xsl:apply-templates/>
	</xsl:template>

	<xsl:template match="ci:cite[not(ancestor::case:references) or $streamID='NZ17CC' or $streamID='HK09']/@searchtype" priority="25">
		<xsl:param name="childElementName"/>
		<xsl:choose>
			<!-- JD: 2017-08-01: NZ06 includes standard module id-CCCC-10268; by my reading ci:cite/@type should not be suppressed, only the value 'legref'
			"If ci:cite@type comes with attribute value "legref" in source document then conversion needs to suppressed attribute value in target 
			and convert ci:cite according to general rule."
			Moving this logic to ci:cite/@type, below
			-->
			<!--<xsl:when test="$streamID = ('NZ06')"/>-->
			<xsl:when
				test="
					$childElementName = 'case' or $childElementName = 'form' or
					$childElementName = 'misc' or $childElementName = 'admininterp' or
					$childElementName = 'execdoc' or $childElementName = 'annot' or
					$childElementName = 'constitution' or $childElementName = 'agencydecision' or
					$childElementName = 'oag' or $childElementName = 'book' or
					$childElementName = 'pinpoint' or $childElementName = 'periodical' or
					$childElementName = 'lawrev' or $childElementName = 'copyright' or
					$childElementName = 'tmark' or $childElementName = 'patent' or
					$childElementName = 'sesslaw' or $childElementName = 'courtrule' or
					$childElementName = 'reg' or $childElementName = 'juryinstr'"/>
			<xsl:otherwise>
				<xsl:attribute name="type">
					<xsl:choose>
						<xsl:when test=". = 'LEG-REF'">legislation</xsl:when>
						<xsl:when test=". = 'CASE-REF'">case</xsl:when>
						<xsl:when test=". = 'BOOK-REF'">book</xsl:when>
						<xsl:when test=". = 'BODY-CASE-REF'">case</xsl:when>
						<xsl:when test=". = 'SUMM-CASE-REF'">case</xsl:when>
						<xsl:when test=". = 'EU-REF'">EU-REF</xsl:when>
					</xsl:choose>
				</xsl:attribute>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>


	<xsl:template match="ci:cite/@type | ci:citeditem/@type">
		<xsl:choose>
			<!-- 
				"Handling for NZ Regulation and NZ Act from services:
				If ci:cite@type comes with attribute value "legref" in source document then conversion needs to suppressed attribute value in target 
			  and convert ci:cite according to general rule."  -->			
			<xsl:when test=".='legref' and $streamID=('NZ05','NZ06')"/><!-- do nothing -->
			<xsl:when
				test=". = 'legref' or parent::ci:cite[ci:case | ci:stat | ci:juryinstr | ci:reg | ci:courtrule | ci:sesslaw | ci:patent | ci:tmark | ci:copyright | ci:lawrev | ci:periodical | ci:pinpoint | ci:book | ci:oag | ci:agencydecision | ci:constitution | ci:annot | ci:execdoc | ci:admininterp | ci:misc | ci:form]"/>
			<xsl:otherwise>
				<xsl:attribute name="type" select="."/>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>

	<!-- Vikas Rohilla : Added for the error messege	-->
	<xsl:template match="ci:cite/@searchtype"/>


</xsl:stylesheet>
