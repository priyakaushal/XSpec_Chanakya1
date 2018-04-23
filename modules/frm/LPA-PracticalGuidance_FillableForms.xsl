<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"
	xmlns:glp="http://www.lexis-nexis.com/glp" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
	xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns:ci="http://www.lexis-nexis.com/ci"
	xmlns:lnci="http://www.lexisnexis.com/xmlschemas/content/shared/citations/1/"
	xmlns:person="http://www.lexisnexis.com/xmlschemas/content/shared/person/1/"
	xmlns:comm="http://www.lexis-nexis.com/glp/comm" xmlns:frm="http://www.lexis-nexis.com/glp/frm"
	xmlns:form="http://www.lexisnexis.com/xmlschemas/content/shared/form/1/"
	xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0"
	exclude-result-prefixes="dita comm frm">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/"
		id="lpa_fillable_forms_introduction">
		<title>Fillable Forms <lnpid>id-USPA-31009</lnpid></title>
		<abstract>
			<shortdesc>This "Fillable Forms" topic is an augmentation of the Forms and General
				Markup topics of the LPA Conversion Instructions.</shortdesc>
			<p>The instructions found here pertain to specialized markup (and markup usages)
				designed to support the Fillable Forms Application, previously defined instructions
				for forms will not be repeated here; only new mappings, or modifications to existing
				mappings to support Fillable Forms are covered in this topic.</p>
		</abstract>
		<topic id="form_prompt">
			<title>frm:promt <lnpid>id-USPA-31010</lnpid></title>
			<body>
				<section>
					<title>Instructions</title>
					<p><sourcexml>frm:prompt</sourcexml> becomes
						<targetxml>form:prompt</targetxml>.</p>
					<p><sourcexml>frm:prompt/@promptname</sourcexml> is copied to
							<targetxml>form:prompt/@promptname</targetxml>.</p>
					<p>The value of <sourcexml>frm:prompt/@prompttype</sourcexml> becomes
							<targetxml>form:prompt/@formcharuse</targetxml>.</p>
					<p>At this time, the values of <sourcexml>frm:prompt/@prompttype</sourcexml>
						should only be a choice of "date | num | money | address | name | longname".
						Any other value should generate an error and be fixed in the source
						document.</p>
				</section>
				<example>
					<title>Source XML</title>
					<codeblock> &lt;frm:prompt promptname="date-of-agreement"
						prompttype="date"&gt;specify date of agreement&lt;/frm:prompt&gt;
					</codeblock>
				</example>
				<example>
					<title>Target XML</title>
					<codeblock> &lt;form:prompt promptname="date-of-agreement"
						formcharuse="date"&gt;specify date of agreement&lt;/form:prompt&gt;
					</codeblock>
				</example>
			</body>
		</topic>
		<topic id="clause-type-group">
			<title>clause[@clause-type="group"] <lnpid>id-USPA-31011</lnpid></title>
			<body>
				<section>
					<title>Instructions</title>
					<p><sourcexml>clause[@clause-type="group"]</sourcexml> becomes
							<targetxml>form:clausegrp</targetxml>. Its attributes are mapped as
						follows: <ul>
							<li><sourcexml>@label-type</sourcexml> becomes
									<targetxml>@labeltype</targetxml>. Note that both the source and
								target attributes are enumerated lists of allowable values, and the
								mapping is: <ul>
									<li>"number" becomes "number"</li>
									<li>"alpha-upper" becomes "upperAlpha"</li>
									<li>"alpha-lower" becomes "lowerAlpha"</li>
									<li>"roman-upper" becomes "upperRoman"</li>
									<li>"roman-lower" becomes "lowerRoman"</li>
									<li>"bullet" becomes "bullet"</li>
									<li>"glyph" becomes "glyph"</li>
								</ul>
							</li>
							<li><sourcexml>@label-prefix</sourcexml> becomes
									<targetxml>@labelprefix</targetxml></li>
							<li><sourcexml>@clause-number-profile</sourcexml> becomes
									<targetxml>@listformatprofile</targetxml></li>
							<li><sourcexml>@glyph-code</sourcexml> becomes
									<targetxml>@glyphcode</targetxml></li>
						</ul>
					</p>
				</section>
				<example>
					<title>Source XML</title>
					<codeblock> &lt;clause clause-type="group"&gt; &lt;clause&gt; &lt;p&gt;
						&lt;text&gt;3. COMMENCEMENT OF SERVICES: Writer shall commence services in
						writing the [&lt;frm:prompt&gt;specify task or initial task, e.g., First
						Draft of the Screenplay&lt;/frm:prompt&gt;]on [&lt;frm:prompt&gt;specify
						date or a date to be specified by Production Company, but in any event not
						later than specify date&lt;/frm:prompt&gt;]. [&lt;emph
						typestyle="it"&gt;Notwithstanding the foregoing, Writer shall not commence
						services hereunder until Writer has executed and delivered to Production
						Company any and all documents designated by Production Company (including
						without limitation, a completed I-9 Form and certificate of authorship)
						required to effectuate the purposes of this Agreement or which Production
						Company may reasonably request, and Production Company has instructed
						Writer, in writing, to commence Writer's services.&lt;/emph&gt;] [&lt;emph
						typestyle="it"&gt;If more than one (1) Product Form is required, add: Writer
						shall commence writing each subsequent Product Form on a date to be
						designated by Production Company, which date may be earlier, but shall not
						be later than the first business day after expiration of the then current
						Reading Period or Option Period, as the case may be, described in Section 4,
						below.&lt;/emph&gt;]&lt;/text&gt; &lt;/p&gt; &lt;note&gt; &lt;heading&gt;
						&lt;title&gt;Drafting Note to Section 3&lt;/title&gt; &lt;/heading&gt;
						&lt;p&gt; &lt;text&gt;The commencement date of the writer's services should
						be specified together with the particular services which are to be
						commenced. The production company may specify that services will not be
						commenced until the writer has signed a certificate of authorship, has
						signed an I-9 Immigration and Naturalization form, has signed an Internal
						Revenue Service W-4 form, and has been specifically instructed by the
						production company to commence writing. If the production company has a
						series of options for sequential services by the writer, then the second
						sentence will be included. Generally, the commencement of services is keyed
						into the time requirements set forth in Section 4 below. The writer should
						be careful to avoid conflicting assignments and should seek an outside date
						for commencement of services. &lt;/text&gt; &lt;/p&gt; &lt;/note&gt;
						&lt;/clause&gt; &lt;/clause&gt; </codeblock>

					<title>Target XML</title>
					<codeblock> &lt;form:clausegrp&gt; &lt;form:annotatedclause&gt;
						&lt;form:clause&gt; &lt;form:bodytext&gt; &lt;form:p&gt; &lt;form:text&gt;3.
						COMMENCEMENT OF SERVICES: Writer shall commence services in writing the
						[&lt;form:prompt&gt;specify task or initial task, e.g., First Draft of the
						Screenplay&lt;/form:prompt&gt;]on [&lt;form:prompt&gt;specify date or a date
						to be specified by Production Company, but in any event not later than
						specify date&lt;/form:prompt&gt;]. [&lt;emph typestyle="it"
						&gt;Notwithstanding the foregoing, Writer shall not commence services
						hereunder until Writer has executed and delivered to Production Company any
						and all documents designated by Production Company (including without
						limitation, a completed I-9 Form and certificate of authorship) required to
						effectuate the purposes of this Agreement or which Production Company may
						reasonably request, and Production Company has instructed Writer, in
						writing, to commence Writer's services.&lt;/emph&gt;] [&lt;emph
						typestyle="it"&gt;If more than one (1) Product Form is required, add: Writer
						shall commence writing each subsequent Product Form on a date to be
						designated by Production Company, which date may be earlier, but shall not
						be later than the first business day after expiration of the then current
						Reading Period or Option Period, as the case may be, described in Section 4,
						below.&lt;/emph&gt;]&lt;/form:text&gt; &lt;/form:p&gt;
						&lt;/form:bodytext&gt; &lt;/form:clause&gt; &lt;form:annotation&gt;
						&lt;heading&gt; &lt;title&gt;Drafting Note to Section 3&lt;/title&gt;
						&lt;/heading&gt; &lt;form:bodytext&gt; &lt;form:p&gt; &lt;form:text&gt;The
						commencement date of the writer's services should be specified together with
						the particular services which are to be commenced. The production company
						may specify that services will not be commenced until the writer has signed
						a certificate of authorship, has signed an I-9 Immigration and
						Naturalization form, has signed an Internal Revenue Service W-4 form, and
						has been specifically instructed by the production company to commence
						writing. If the production company has a series of options for sequential
						services by the writer, then the second sentence will be included.
						Generally, the commencement of services is keyed into the time requirements
						set forth in Section 4 below. The writer should be careful to avoid
						conflicting assignments and should seek an outside date for commencement of
						services. &lt;/form:text&gt; &lt;/form:p&gt; &lt;/form:bodytext&gt;
						&lt;/form:annotation&gt; &lt;/form:annotatedclause&gt;
						&lt;/form:clausegrp&gt; </codeblock>
				</example>

				<example>
					<title>Source XML: numbered clause group with nested numbered clause group,
						clause captions</title>
					<codeblock> &lt;clause clause-type="group" label-type="roman-upper"
						label-prefix="Article" clause-number-profile="profile1"&gt; &lt;clause
						id="N1009D" include-in-toc="true"&gt; &lt;heading&gt; &lt;desig&gt;
						&lt;desiglabel&gt;Article&lt;/desiglabel&gt;
						&lt;designum&gt;I&lt;/designum&gt; &lt;/desig&gt; &lt;title&gt; &lt;emph
						typestyle="bu"&gt;Definitions&lt;/emph&gt; &lt;/title&gt; &lt;/heading&gt;
						&lt;refpt id="LPAcontentitem_0QYN_0QYN_211388_1" type="local"/&gt;
						&lt;clause clause-type="group" label-type="number"&gt; &lt;clause
						id="N100A5"&gt; &lt;heading&gt; &lt;desig&gt;
						&lt;designum&gt;1.1&lt;/designum&gt; &lt;/desig&gt; &lt;/heading&gt;
						&lt;refpt id="LPAcontentitem_0QYN_0QYN_211388_1.1" type="local"/&gt;
						&lt;p&gt; &lt;text&gt;"LICENSOR" shall mean LICENSOR CORP, and its past,
						present or future divisions, affiliates and Subsidiaries (as defined
						below).&lt;/text&gt; &lt;/p&gt; &lt;note&gt; &lt;heading&gt;
						&lt;title&gt;Drafting Note to Paragraph &lt;link
						refpt="LPAcontentitem_0QYN_0QYN_211388_1.1" alt-label="clause"
						dpsi="0QYN"&gt;1.1&lt;/link&gt; &lt;/title&gt; &lt;/heading&gt; &lt;p&gt;
						&lt;text&gt;To avoid the risk of future disputes, ... parties.&lt;/text&gt;
						&lt;/p&gt; &lt;/note&gt; &lt;/clause&gt; &lt;clause id="N100B1"&gt;
						&lt;heading&gt; &lt;desig&gt; &lt;designum&gt;1.2&lt;/designum&gt;
						&lt;/desig&gt; &lt;/heading&gt; &lt;refpt
						id="LPAcontentitem_0QYN_0QYN_211388_1.2" type="local"/&gt; &lt;p&gt;
						&lt;text&gt;"LICENSEE" shall mean LICENSEE CORP., and its past, present or
						future divisions, affiliates and Subsidiaries (as defined below).
						&lt;/text&gt; &lt;/p&gt; &lt;note&gt; &lt;heading&gt; &lt;title&gt;Drafting
						Note to Paragraph &lt;link refpt="LPAcontentitem_0QYN_0QYN_211388_1.2"
						alt-label="clause" dpsi="0QYN"&gt;1.2&lt;/link&gt; &lt;/title&gt;
						&lt;/heading&gt; &lt;p&gt; &lt;text&gt;Naming the proper licensee ...
						subsidiaries.&lt;/text&gt; &lt;/p&gt; &lt;/note&gt; &lt;/clause&gt;
						&lt;clause id="N100BD"&gt; &lt;heading&gt; &lt;desig&gt;
						&lt;designum&gt;1.3&lt;/designum&gt; &lt;/desig&gt; &lt;/heading&gt;
						&lt;refpt id="LPAcontentitem_0QYN_0QYN_211388_1.3" type="local"/&gt;
						&lt;p&gt; &lt;text&gt;"Subsidiaries" shall mean and ... or
						controls:&lt;/text&gt; &lt;/p&gt; &lt;clause clause-type="group"
						label-type="alpha-lower"&gt; &lt;clause id="N100C3"&gt; &lt;heading&gt;
						&lt;desig&gt; &lt;designum&gt;a&lt;/designum&gt; &lt;/desig&gt;
						&lt;/heading&gt; &lt;refpt id="LPAcontentitem_0QYN_0QYN_211388_1.3.a"
						type="local"/&gt; &lt;p&gt; &lt;text&gt;iin the case ... of directors;
						and&lt;/text&gt; &lt;/p&gt; &lt;/clause&gt; &lt;clause id="N100C7"&gt;
						&lt;heading&gt; &lt;desig&gt; &lt;designum&gt;b&lt;/designum&gt;
						&lt;/desig&gt; &lt;/heading&gt; &lt;refpt
						id="LPAcontentitem_0QYN_0QYN_211388_1.3.b" type="local"/&gt; &lt;p&gt;
						&lt;text&gt;in the case of non-corporate .. entity. &lt;/text&gt; &lt;/p&gt;
						&lt;/clause&gt; &lt;clause clause-type="optional" id="N100CB"&gt;
						&lt;heading&gt; &lt;desig&gt; &lt;designum&gt;c&lt;/designum&gt;
						&lt;/desig&gt; &lt;/heading&gt; &lt;refpt
						id="LPAcontentitem_0QYN_0QYN_211388_1.3.c" type="local"/&gt;
						&lt;frm:clausecaption&gt; &lt;text&gt; &lt;emph typestyle="bf"&gt;Optional
						Clause to Paragraph &lt;link refpt="LPAcontentitem_0QYN_0QYN_211388_1.3"
						alt-label="clause" dpsi="0QYN"&gt;1.3&lt;/link&gt; &lt;/emph&gt;
						&lt;/text&gt; &lt;/frm:clausecaption&gt; &lt;p&gt;
						&lt;text&gt;Notwithstanding the foregoing, the following shall be considered
						Subsidiaries under the Agreement: &lt;frm:prompt
						prompttype="longname"&gt;_____________&lt;/frm:prompt&gt;.&lt;/text&gt;
						&lt;/p&gt; &lt;note&gt; &lt;heading&gt; &lt;title&gt;Drafting Note to
						Optional Clause to Paragraph &lt;link
						refpt="LPAcontentitem_0QYN_0QYN_211388_1.3.c" alt-label="clause"
						dpsi="0QYN"&gt;1.3(c)&lt;/link&gt; &lt;/title&gt; &lt;/heading&gt; &lt;p&gt;
						&lt;text&gt;Certain foreign jurisdictions do not allow companies to own or
						control 50% or more of another company. Therefore, a licensee may wish to
						expand the definition of Subsidiary to include listed companies in such
						jurisdictions.&lt;/text&gt; &lt;/p&gt; &lt;/note&gt; &lt;/clause&gt;
						&lt;/clause&gt; &lt;note&gt; &lt;heading&gt; &lt;title&gt;Drafting Note to
						Paragraph &lt;link refpt="LPAcontentitem_0QYN_0QYN_211388_1.3"
						alt-label="clause" dpsi="0QYN"&gt;1.3&lt;/link&gt; &lt;/title&gt;
						&lt;/heading&gt; &lt;p&gt; &lt;text&gt;Pay attention to the ... may avoid
						confusion and future disputes.&lt;/text&gt; &lt;/p&gt; &lt;/note&gt;
						&lt;/clause&gt; &lt;/clause&gt; &lt;/clause&gt; &lt;clause id="N10115"
						include-in-toc="true"&gt; &lt;heading&gt; &lt;desig&gt;
						&lt;desiglabel&gt;Article&lt;/desiglabel&gt;
						&lt;designum&gt;II&lt;/designum&gt; &lt;/desig&gt; &lt;title&gt; &lt;emph
						typestyle="bu"&gt;Licenses, Releases And Non-Assertions&lt;/emph&gt;
						&lt;/title&gt; &lt;/heading&gt; &lt;refpt
						id="LPAcontentitem_0QYN_0QYN_211388_2" type="local"/&gt; ... &lt;/clause&gt;
						&lt;clause id="N10141" include-in-toc="true"&gt; &lt;heading&gt;
						&lt;desig&gt; &lt;desiglabel&gt;Article&lt;/desiglabel&gt;
						&lt;designum&gt;III&lt;/designum&gt; &lt;/desig&gt; &lt;title&gt; &lt;emph
						typestyle="bu"&gt;Payment&lt;/emph&gt; &lt;/title&gt; &lt;/heading&gt;
						&lt;refpt id="LPAcontentitem_0QYN_0QYN_211388_3" type="local"/&gt; ...
						&lt;/clause&gt; &lt;/clause&gt; </codeblock>

					<title>Target XML: numbered clause group with nested numbered clause group,
						clause captions</title>
					<codeblock> &lt;form:clausegrp labeltype="upperRoman" labelprefix="Article"
						listformatprofile="profile1"&gt; &lt;form:clause xml:id="N1009D"
						includeintoc="true"&gt; &lt;ref:anchor
						id="LPAcontentitem_0QYN_0QYN_211388_1" anchortype="local"/&gt;
						&lt;heading&gt; &lt;desig&gt;Article I&lt;/desig&gt; &lt;title&gt; &lt;emph
						typestyle="bu"&gt;Definitions&lt;/emph&gt; &lt;/title&gt; &lt;/heading&gt;
						&lt;form:bodytext&gt; &lt;form:clausegrp labeltype="number"&gt;
						&lt;form:annotatedclause&gt; &lt;form:clause xml:id="N100A5"&gt;
						&lt;ref:anchor id="LPAcontentitem_0QYN_0QYN_211388_1.1"
						anchortype="local"/&gt; &lt;heading&gt; &lt;desig&gt;1.1&lt;/desig&gt;
						&lt;/heading&gt; &lt;form:bodytext&gt; &lt;form:p&gt;
						&lt;form:text&gt;"LICENSOR" shall mean LICENSOR CORP, and its past, present
						or future divisions, affiliates and Subsidiaries (as defined
						below).&lt;/form:text&gt; &lt;/form:p&gt; &lt;/form:bodytext&gt;
						&lt;/form:clause&gt; &lt;form:annotation&gt; &lt;heading&gt;
						&lt;title&gt;Drafting Note to Paragraph &lt;ref:lnlink&gt;
						&lt;ref:marker&gt;1.1&lt;/ref:marker&gt; &lt;ref:locator
						anchoridref="LPAcontentitem_0QYN_0QYN_211388_1.1"/&gt; &lt;/ref:lnlink&gt;
						&lt;/title&gt; &lt;/heading&gt; &lt;form:bodytext&gt; &lt;form:p&gt;
						&lt;form:text&gt;To avoid the risk of future disputes, ...
						parties.&lt;/form:text&gt; &lt;/form:p&gt; &lt;/form:bodytext&gt;
						&lt;/form:annotation&gt; &lt;/form:annotatedclause&gt;
						&lt;form:annotatedclause&gt; &lt;form:clause xml:id="N100B1"&gt;
						&lt;ref:anchor id="LPAcontentitem_0QYN_0QYN_211388_1.2"
						anchortype="local"/&gt; &lt;heading&gt; &lt;desig&gt;1.2&lt;/desig&gt;
						&lt;/heading&gt; &lt;form:bodytext&gt; &lt;form:p&gt;
						&lt;form:text&gt;"LICENSEE" shall mean LICENSEE CORP., and its past, present
						or future divisions, affiliates and Subsidiaries (as defined below).
						&lt;/form:text&gt; &lt;/form:p&gt; &lt;/form:bodytext&gt;
						&lt;/form:clause&gt; &lt;form:annotation&gt; &lt;heading&gt;
						&lt;title&gt;Drafting Note to Paragraph &lt;ref:lnlink&gt;
						&lt;ref:marker&gt;1.2&lt;/ref:marker&gt; &lt;ref:locator
						anchoridref="LPAcontentitem_0QYN_0QYN_211388_1.2"/&gt; &lt;/ref:lnlink&gt;
						&lt;/title&gt; &lt;/heading&gt; &lt;form:bodytext&gt; &lt;form:p&gt;
						&lt;form:text&gt;Naming the proper licensee ...
						subsidiaries.&lt;/form:text&gt; &lt;/form:p&gt; &lt;/form:bodytext&gt;
						&lt;/form:annotation&gt; &lt;/form:annotatedclause&gt;
						&lt;form:annotatedclause&gt; &lt;form:clause xml:id="N100BD"&gt;
						&lt;ref:anchor id="LPAcontentitem_0QYN_0QYN_211388_1.3"
						anchortype="local"/&gt; &lt;heading&gt; &lt;desig&gt;1.3&lt;/desig&gt;
						&lt;/heading&gt; &lt;form:bodytext&gt; &lt;form:p&gt;
						&lt;form:text&gt;"Subsidiaries" shall mean and ... or
						controls:&lt;/form:text&gt; &lt;/form:p&gt; &lt;form:clausegrp
						labeltype="lowerAlpha"&gt; &lt;form:clause xml:id="N100C3"&gt;
						&lt;ref:anchor id="LPAcontentitem_0QYN_0QYN_211388_1.3.a"
						anchortype="local"/&gt; &lt;heading&gt; &lt;desig&gt;a&lt;/desig&gt;
						&lt;/heading&gt; &lt;form:bodytext&gt; &lt;form:p&gt; &lt;form:text&gt;in
						the case ... of directors; and&lt;/form:text&gt; &lt;/form:p&gt;
						&lt;/form:bodytext&gt; &lt;/form:clause&gt; &lt;form:clause
						xml:id="N100C7"&gt; &lt;ref:anchor
						id="LPAcontentitem_0QYN_0QYN_211388_1.3.b" anchortype="local"/&gt;
						&lt;heading&gt; &lt;desig&gt;b&lt;/desig&gt; &lt;/heading&gt;
						&lt;form:bodytext&gt; &lt;form:p&gt; &lt;form:text&gt;in the case of
						non-corporate .. entity. &lt;/form:text&gt; &lt;/form:p&gt;
						&lt;/form:bodytext&gt; &lt;/form:clause&gt; &lt;form:annotatedclause&gt;
						&lt;form:clause clausetype="optional" xml:id="N100CB"&gt; &lt;ref:anchor
						id="LPAcontentitem_0QYN_0QYN_211388_1.3.c" anchortype="local"/&gt;
						&lt;heading&gt; &lt;desig&gt;c&lt;/desig&gt; &lt;/heading&gt;
						&lt;form:info&gt; &lt;form:clausecaption&gt; &lt;p&gt; &lt;text&gt; &lt;emph
						typestyle="bf"&gt;Optional Clause to Paragraph &lt;ref:lnlink&gt;
						&lt;ref:marker&gt;1.3&lt;/ref:marker&gt; &lt;ref:locator
						anchoridref="LPAcontentitem_0QYN_0QYN_211388_1.3"/&gt;
						&lt;/ref:lnlink&gt;:&lt;/emph&gt; &lt;/text&gt; &lt;/p&gt;
						&lt;/form:clausecaption&gt; &lt;/form:info&gt; &lt;form:bodytext&gt;
						&lt;form:p&gt; &lt;form:text&gt;Notwithstanding the foregoing, the following
						shall be considered Subsidiaries under the Agreement: &lt;form:prompt
						formcharuse="longname"&gt;_____________&lt;/form:prompt&gt;.&lt;/form:text&gt;
						&lt;/form:p&gt; &lt;/form:bodytext&gt; &lt;/form:clause&gt;
						&lt;form:annotation&gt; &lt;heading&gt; &lt;title&gt;Drafting Note to
						Optional Clause to Paragraph &lt;ref:lnlink&gt;
						&lt;ref:marker&gt;1.3(c)&lt;/ref:marker&gt; &lt;ref:locator
						anchoridref="LPAcontentitem_0QYN_0QYN_211388_1.3.c"/&gt; &lt;/ref:lnlink&gt;
						&lt;/title&gt; &lt;/heading&gt; &lt;form:bodytext&gt; &lt;form:p&gt;
						&lt;form:text&gt;Certain foreign jurisdictions do not allow companies to own
						or control 50% or more of another company. Therefore, a licensee may wish to
						expand the definition of Subsidiary to include listed companies in such
						jurisdictions.&lt;/form:text&gt; &lt;/form:p&gt; &lt;/form:bodytext&gt;
						&lt;/form:annotation&gt; &lt;/form:annotatedclause&gt;
						&lt;/form:clausegrp&gt; &lt;/form:bodytext&gt; &lt;/form:clause&gt;
						&lt;form:annotation&gt; &lt;heading&gt; &lt;title&gt;Drafting Note to
						Paragraph &lt;ref:lnlink&gt; &lt;ref:marker&gt;1.3&lt;/ref:marker&gt;
						&lt;ref:locator anchoridref="LPAcontentitem_0QYN_0QYN_211388_1.3"/&gt;
						&lt;/ref:lnlink&gt; &lt;/title&gt; &lt;/heading&gt; &lt;form:bodytext&gt;
						&lt;form:p&gt; &lt;form:text&gt;Pay attention to the ... may avoid confusion
						and future disputes.&lt;/form:text&gt; &lt;/form:p&gt;
						&lt;/form:bodytext&gt; &lt;/form:annotation&gt;
						&lt;/form:annotatedclause&gt; &lt;/form:clausegrp&gt; &lt;/form:bodytext&gt;
						&lt;/form:clause&gt; &lt;form:clause xml:id="N10115" includeintoc="true"&gt;
						&lt;ref:anchor id="LPAcontentitem_0QYN_0QYN_211388_2"
						anchortype="local"/&gt; &lt;heading&gt; &lt;desig&gt;Article
						II&lt;/desig&gt; &lt;title&gt; &lt;emph typestyle="bu"&gt;Licenses, Releases
						And Non-Assertions&lt;/emph&gt; &lt;/title&gt; &lt;/heading&gt;
						&lt;form:bodytext&gt; ... &lt;/form:bodytext&gt; &lt;/form:clause&gt;
						&lt;form:clause xml:id="N10141" includeintoc="true"&gt; &lt;ref:anchor
						id="LPAcontentitem_0QYN_0QYN_211388_3" anchortype="local"/&gt;
						&lt;heading&gt; &lt;desig&gt;Article III&lt;/desig&gt; &lt;title&gt;
						&lt;emph typestyle="bu"&gt;Payment&lt;/emph&gt; &lt;/title&gt;
						&lt;/heading&gt; &lt;form:bodytext&gt; ... &lt;/form:bodytext&gt;
						&lt;/form:clause&gt; &lt;/form:clausegrp&gt; </codeblock>
				</example>

				<section>
					<title>Changes</title>
					<p>2017-02-07: <ph id="change_20170207a_snb">LPA 2016 enhancements: Added
							mappings for auto-numbering attributes:
								<sourcexml>@label-type</sourcexml>,
								<sourcexml>@label-prefix</sourcexml>,
								<sourcexml>@clause-number-profile</sourcexml>,
								<sourcexml>@glyph-code</sourcexml>.</ph></p>
					<p>2017-02-07: <ph id="change_20170207b_snb">LPA 2016 enhancements: Added markup
							example for a clause group with autonumbering parameters, nested
							auto-numbered clause group, <sourcexml>@include-in-toc</sourcexml>,
								<sourcexml>heading</sourcexml>, <sourcexml>clause/refpt</sourcexml>,
							and <sourcexml>clause/frm:clausecaption</sourcexml>.</ph></p>
				</section>

			</body>
		</topic>
		<topic id="annotated-clause">
			<title>clause/note <lnpid>id-USPA-31012</lnpid></title>
			<body>
				<section>
					<title>Instructions</title>
					<p>A <sourcexml>clause</sourcexml> which contains a <sourcexml>note</sourcexml>
						is an <targetxml>form:annotatedclause</targetxml>.</p>
					<p>The output of the annotated clause is made up of the container element
							<targetxml>form:annotatedclause</targetxml>, followed by
							<targetxml>form:clause</targetxml>, followed by
							<targetxml>form:annotation</targetxml>.</p>
					<p>In the source XML, the
							<targetxml>form:annotatedclause/form:clause</targetxml> is made up of
						the child elements of <sourcexml>clause</sourcexml> up to, but not including
							<sourcexml>note</sourcexml>.</p>
					<p>The <targetxml>form:annotation</targetxml> is made up of the
							<sourcexml>note</sourcexml>.</p>
				</section>
				<example>
					<title>Source XML</title>
					<codeblock> &lt;clause&gt; &lt;p&gt; &lt;text&gt;3. COMMENCEMENT OF SERVICES:
						Writer shall commence services in writing the [&lt;frm:prompt&gt;specify
						task or initial task, e.g., First Draft of the
						Screenplay&lt;/frm:prompt&gt;]on [&lt;frm:prompt&gt;specify date or a date
						to be specified by Production Company, but in any event not later than
						specify date&lt;/frm:prompt&gt;]. [&lt;emph
						typestyle="it"&gt;Notwithstanding the foregoing, Writer shall not commence
						services hereunder until Writer has executed and delivered to Production
						Company any and all documents designated by Production Company (including
						without limitation, a completed I-9 Form and certificate of authorship)
						required to effectuate the purposes of this Agreement or which Production
						Company may reasonably request, and Production Company has instructed
						Writer, in writing, to commence Writer's services.&lt;/emph&gt;] [&lt;emph
						typestyle="it"&gt;If more than one (1) Product Form is required, add: Writer
						shall commence writing each subsequent Product Form on a date to be
						designated by Production Company, which date may be earlier, but shall not
						be later than the first business day after expiration of the then current
						Reading Period or Option Period, as the case may be, described in Section 4,
						below.&lt;/emph&gt;]&lt;/text&gt; &lt;/p&gt; &lt;note&gt; &lt;heading&gt;
						&lt;title&gt;Drafting Note to Section 3&lt;/title&gt; &lt;/heading&gt;
						&lt;p&gt; &lt;text&gt;The commencement date of the writer's services should
						be specified together with the particular services which are to be
						commenced. The production company may specify that services will not be
						commenced until the writer has signed a certificate of authorship, has
						signed an I-9 Immigration and Naturalization form, has signed an Internal
						Revenue Service W-4 form, and has been specifically instructed by the
						production company to commence writing. If the production company has a
						series of options for sequential services by the writer, then the second
						sentence will be included. Generally, the commencement of services is keyed
						into the time requirements set forth in Section 4 below. The writer should
						be careful to avoid conflicting assignments and should seek an outside date
						for commencement of services. &lt;/text&gt; &lt;/p&gt; &lt;/note&gt;
						&lt;/clause&gt; </codeblock>
				</example>
				<example>
					<title>Target XML</title>
					<codeblock> &lt;form:annotatedclause&gt; &lt;form:clause&gt;
						&lt;form:bodytext&gt; &lt;form:p&gt; &lt;form:text&gt;3. COMMENCEMENT OF
						SERVICES: Writer shall commence services in writing the
						[&lt;form:prompt&gt;specify task or initial task, e.g., First Draft of the
						Screenplay&lt;/form:prompt&gt;]on [&lt;form:prompt&gt;specify date or a date
						to be specified by Production Company, but in any event not later than
						specify date&lt;/form:prompt&gt;]. [&lt;emph typestyle="it"
						&gt;Notwithstanding the foregoing, Writer shall not commence services
						hereunder until Writer has executed and delivered to Production Company any
						and all documents designated by Production Company (including without
						limitation, a completed I-9 Form and certificate of authorship) required to
						effectuate the purposes of this Agreement or which Production Company may
						reasonably request, and Production Company has instructed Writer, in
						writing, to commence Writer's services.&lt;/emph&gt;] [&lt;emph
						typestyle="it"&gt;If more than one (1) Product Form is required, add: Writer
						shall commence writing each subsequent Product Form on a date to be
						designated by Production Company, which date may be earlier, but shall not
						be later than the first business day after expiration of the then current
						Reading Period or Option Period, as the case may be, described in Section 4,
						below.&lt;/emph&gt;]&lt;/form:text&gt; &lt;/form:p&gt;
						&lt;/form:bodytext&gt; &lt;/form:clause&gt; &lt;form:annotation&gt;
						&lt;heading&gt; &lt;title&gt;Drafting Note to Section 3&lt;/title&gt;
						&lt;/heading&gt; &lt;form:bodytext&gt; &lt;form:p&gt; &lt;form:text&gt;The
						commencement date of the writer's services should be specified together with
						the particular services which are to be commenced. The production company
						may specify that services will not be commenced until the writer has signed
						a certificate of authorship, has signed an I-9 Immigration and
						Naturalization form, has signed an Internal Revenue Service W-4 form, and
						has been specifically instructed by the production company to commence
						writing. If the production company has a series of options for sequential
						services by the writer, then the second sentence will be included.
						Generally, the commencement of services is keyed into the time requirements
						set forth in Section 4 below. The writer should be careful to avoid
						conflicting assignments and should seek an outside date for commencement of
						services. &lt;/form:text&gt; &lt;/form:p&gt; &lt;/form:bodytext&gt;
						&lt;/form:annotation&gt; &lt;/form:annotatedclause&gt; </codeblock>
				</example>
			</body>
		</topic>
		<topic id="clause-alternate-clauses">
			<title>clause[@clause-type="group"] contains clause[@clause-type="alternate"]
					<lnpid>id-USPA-31013</lnpid></title>
			<body>
				<section>
					<title>Instructions</title>
					<p>If a <sourcexml>clause[@clause-type="group"]</sourcexml> contains a
							<sourcexml>clause[@clause-type="alternate"]</sourcexml> then conversion
						should output <targetxml>form:altclauses</targetxml>.</p>
				</section>
				<example>
					<title>Source XML</title>
					<codeblock> &lt;clause clause-type="group"&gt; &lt;clause&gt; &lt;p&gt;
						&lt;text&gt;20. TEAM OF WRITERS: The provisions of this Section 20 shall
						apply if more than one individual is engaged as Writer pursuant to this
						Agreement ("Team of Writers"). The obligations of the Team of Writers under
						this Agreement shall be joint and several, and all references in this
						Agreement to Writer shall be deemed to refer to the Team of Writers jointly
						and severally. Should any right of termination arise as a result of the
						Incapacity or Default of any one of the Team of Writers, the remedies of the
						Production Company may be exercised either as to such Writer or as to the
						Team of Writers, at Production Company's election. Should Production Company
						elect to exercise its remedies only as to the Writer affected, the
						engagement of the other Writer or Writers shall continue and such remaining
						Writer shall receive only a pro-rated share of the compensation provided for
						herein.&lt;/text&gt; &lt;/p&gt; &lt;note&gt; &lt;heading&gt;
						&lt;title&gt;Drafting Note to Section 20&lt;/title&gt; &lt;/heading&gt;
						&lt;p&gt; &lt;text&gt;This section permits the agreement to be adapted for
						use if more than one writer works on the property. Under this provision,
						references to "writer" refer to the team of writers and the obligations
						imposed upon the writer are the joint and several obligations of the team of
						writers. The production company may seek a provision permitting it to
						terminate one of the writers (and not the team) if there is a default or
						disability that affects only one writer. The production company will seek
						the right to pro-rate the amount of compensation paid to the remaining
						member or members. The writers may attempt to resist this allocation because
						the burden of all writing responsibility will fall on the remaining writer
						or writers.&lt;/text&gt; &lt;/p&gt; &lt;/note&gt; &lt;/clause&gt; &lt;clause
						clause-type="alternate"&gt; &lt;p&gt; &lt;text&gt;ALTERNATE SECTION 20. IF
						WRITER IS MORE THAN ONE PERSON: If this Agreement is entered into with more
						than one (1) Writer, the term "Writer" and "Writers" shall refer to each and
						all of them. Furthermore, such Writers represent, warrant and agree that
						they, and each of them, prior to the date hereof, agreed to collaborate as a
						team for the services to be rendered or the material to be delivered
						hereunder, and that they agreed that all compensation specified herein is
						the combined total for the team. If a separate address for each Writer is
						provided herein, Production Company shall be deemed to have met its
						obligations with respect to any payment hereunder by delivering to each
						Writer at each Writer's respective address, a pro rata amount of any such
						payment based upon the number of Writers in the team. All such Writers shall
						be deemed to have jointly and severally made and entered into all of the
						representations, warranties, covenants and agreements contained herein and
						shall be jointly and severally obligated and bound thereby. All of
						Production Company's rights hereunder relate to and are exercisable against
						and with respect to each and all the Writers. Each Writer's representations,
						warranties and obligations hereunder are made with respect to each and all
						of them. Upon any Writer's incapacity or default, Production Company may, at
						its sole option elect to (a) treat such incapacity or default as the
						incapacity or default of all persons comprising Writer under this Agreement,
						in which case Production Company may then exercise any and all remedies
						which Production Company may have for default or incapacity of Writer as set
						forth herein; or Production Company may (b) treat such incapacity or default
						as affecting only the person or persons actually so incapacitated or
						actually in default, and Production Company may require any other persons
						comprising Writer to continue performance hereunder, in which case
						Production Company shall continue to compensate the Writer or Writers
						continuing to render services for a proportionate amount of the payments
						otherwise due Writer or Writers [&lt;emph typestyle="it"&gt;specify, e.g.,
						one-half (1/2) thereof if two Writers are employed
						hereunder&lt;/emph&gt;].&lt;/text&gt; &lt;/p&gt; &lt;note&gt;
						&lt;heading&gt; &lt;title&gt;Drafting Note to Alternate Section
						20&lt;/title&gt; &lt;/heading&gt; &lt;p&gt; &lt;text&gt;This section may be
						used when a team of writers is employed so that, as is typical in such
						cases, their individual contributions cannot be separately identified.
						Conversely, it should be avoided when each writer is working independently
						and makes a contribution that can be identified with particularity. When a
						team is employed, it is especially important to consider the effect of a
						default or incapacity of a member of the team on the remainder of the team.
						As drafted, the production company seeks to preserve its flexibility. The
						team of writers will seek to require the production company to continue
						using the member or members who are still able to perform services. If the
						production company regards one of the writers as the lead or essential
						writer, then the right of termination may be based on the confirmed
						availability to work of that writer. Otherwise, the relative bargaining
						power of the parties will usually be dispositive of this issue.&lt;/text&gt;
						&lt;/p&gt; &lt;/note&gt; &lt;/clause&gt; &lt;/clause&gt; </codeblock>
				</example>
				<example>
					<title>Target XML</title>
					<codeblock> &lt;form:clausegrp&gt; &lt;form:altclauses&gt;
						&lt;form:annotatedclause&gt; &lt;form:clause&gt; &lt;form:bodytext&gt;
						&lt;form:p&gt; &lt;form:text&gt;20. TEAM OF WRITERS: The provisions of this
						Section 20 shall apply if more than one individual is engaged as Writer
						pursuant to this Agreement ("Team of Writers"). The obligations of the Team
						of Writers under this Agreement shall be joint and several, and all
						references in this Agreement to Writer shall be deemed to refer to the Team
						of Writers jointly and severally. Should any right of termination arise as a
						result of the Incapacity or Default of any one of the Team of Writers, the
						remedies of the Production Company may be exercised either as to such Writer
						or as to the Team of Writers, at Production Company's election. Should
						Production Company elect to exercise its remedies only as to the Writer
						affected, the engagement of the other Writer or Writers shall continue and
						such remaining Writer shall receive only a pro-rated share of the
						compensation provided for herein.&lt;/form:text&gt; &lt;/form:p&gt;
						&lt;/form:bodytext&gt; &lt;/form:clause&gt; &lt;form:annotation&gt;
						&lt;heading&gt; &lt;title&gt;Drafting Note to Section 20&lt;/title&gt;
						&lt;/heading&gt; &lt;form:bodytext&gt; &lt;form:p&gt; &lt;form:text&gt;This
						section permits the agreement to be adapted for use if more than one writer
						works on the property. Under this provision, references to "writer" refer to
						the team of writers and the obligations imposed upon the writer are the
						joint and several obligations of the team of writers. The production company
						may seek a provision permitting it to terminate one of the writers (and not
						the team) if there is a default or disability that affects only one writer.
						The production company will seek the right to pro-rate the amount of
						compensation paid to the remaining member or members. The writers may
						attempt to resist this allocation because the burden of all writing
						responsibility will fall on the remaining writer or
						writers.&lt;/form:text&gt; &lt;/form:p&gt; &lt;/form:bodytext&gt;
						&lt;/form:annotation&gt; &lt;/form:annotatedclause&gt;
						&lt;form:annotatedclause&gt; &lt;form:clause clausetype="alternate"&gt;
						&lt;form:bodytext&gt; &lt;form:p&gt; &lt;form:text&gt;ALTERNATE SECTION 20.
						IF WRITER IS MORE THAN ONE PERSON: If this Agreement is entered into with
						more than one (1) Writer, the term "Writer" and "Writers" shall refer to
						each and all of them. Furthermore, such Writers represent, warrant and agree
						that they, and each of them, prior to the date hereof, agreed to collaborate
						as a team for the services to be rendered or the material to be delivered
						hereunder, and that they agreed that all compensation specified herein is
						the combined total for the team. If a separate address for each Writer is
						provided herein, Production Company shall be deemed to have met its
						obligations with respect to any payment hereunder by delivering to each
						Writer at each Writer's respective address, a pro rata amount of any such
						payment based upon the number of Writers in the team. All such Writers shall
						be deemed to have jointly and severally made and entered into all of the
						representations, warranties, covenants and agreements contained herein and
						shall be jointly and severally obligated and bound thereby. All of
						Production Company's rights hereunder relate to and are exercisable against
						and with respect to each and all the Writers. Each Writer's representations,
						warranties and obligations hereunder are made with respect to each and all
						of them. Upon any Writer's incapacity or default, Production Company may, at
						its sole option elect to (a) treat such incapacity or default as the
						incapacity or default of all persons comprising Writer under this Agreement,
						in which case Production Company may then exercise any and all remedies
						which Production Company may have for default or incapacity of Writer as set
						forth herein; or Production Company may (b) treat such incapacity or default
						as affecting only the person or persons actually so incapacitated or
						actually in default, and Production Company may require any other persons
						comprising Writer to continue performance hereunder, in which case
						Production Company shall continue to compensate the Writer or Writers
						continuing to render services for a proportionate amount of the payments
						otherwise due Writer or Writers [&lt;emph typestyle="it"&gt;specify, e.g.,
						one-half (1/2) thereof if two Writers are employed
						hereunder&lt;/emph&gt;].&lt;/form:text&gt; &lt;/form:p&gt;
						&lt;/form:bodytext&gt; &lt;/form:clause&gt; &lt;form:annotation&gt;
						&lt;heading&gt; &lt;title&gt;Drafting Note to Alternate Section
						20&lt;/title&gt; &lt;/heading&gt; &lt;form:bodytext&gt; &lt;form:p&gt;
						&lt;form:text&gt;This section may be used when a team of writers is employed
						so that, as is typical in such cases, their individual contributions cannot
						be separately identified. Conversely, it should be avoided when each writer
						is working independently and makes a contribution that can be identified
						with particularity. When a team is employed, it is especially important to
						consider the effect of a default or incapacity of a member of the team on
						the remainder of the team. As drafted, the production company seeks to
						preserve its flexibility. The team of writers will seek to require the
						production company to continue using the member or members who are still
						able to perform services. If the production company regards one of the
						writers as the lead or essential writer, then the right of termination may
						be based on the confirmed availability to work of that writer. Otherwise,
						the relative bargaining power of the parties will usually be dispositive of
						this issue.&lt;/form:text&gt; &lt;/form:p&gt; &lt;/form:bodytext&gt;
						&lt;/form:annotation&gt; &lt;/form:annotatedclause&gt;
						&lt;/form:altclauses&gt; &lt;/form:clausegrp&gt; </codeblock>
				</example>
			</body>
		</topic>
		<topic id="clause-clause-type-alternate">
			<title>clause[@clause-type="alternate"] <lnpid>id-USPA-31014</lnpid></title>
			<body>
				<section>
					<title>Instructions</title>
					<p><sourcexml>clause[@clause-type="alternate"]</sourcexml> becomes
							<targetxml>form:clause[@clausetype="alternate"]</targetxml>.</p>
					<p>This type of clause should always be found within a parent
							<targetxml>form:altclauses</targetxml>; if not, a warning should be
						given and reported to editorial to check on the source markup usage.</p>
					<p><sourcexml>clause/refpt</sourcexml> and
							<sourcexml>clause/frm:clausecaption</sourcexml> are mapped to be
							<targetxml>form:clause/ref:anchor</targetxml> and
							<targetxml>form:clause/form:info/form:clausecaption</targetxml>,
						respectively, using the instructions specific to those mappings in the
						appropriate sections of this document. However, any target
							<targetxml>form:clause/ref:anchor</targetxml> created must be inserted
						as the FIRST child of the <targetxml>form:clause</targetxml> element it is
						within. Mapping of <sourcexml>refpt</sourcexml> is provided in the General
						Markup section of this document (<xref
							href="../../common_newest/Rosetta_refpt-LxAdv-ref.anchor.dita"/>), and
						mapping of <sourcexml>frm:clausecaption</sourcexml> is provided in the Forms
						and Precedents section of the document (id-CCCC-10153).</p>
				</section>
				<example>
					<title>Source XML</title>
					<codeblock> &lt;clause clause-type="alternate"&gt; &lt;clause id="N10149"&gt;
						&lt;heading&gt; &lt;desig&gt; &lt;designum&gt;3.1&lt;/designum&gt;
						&lt;/desig&gt; &lt;/heading&gt; &lt;refpt
						id="LPAcontentitem_0QYN_0QYN_211388_3.1" type="local"/&gt; &lt;p&gt;
						&lt;text&gt;In consideration of the rights, licenses, privileges, releases,
						non-assertions and immunities granted by LICENSOR under this Agreement,
						LICENSEE agrees to pay to LICENSOR &lt;frm:prompt
						prompttype="longname"&gt;______________&lt;/frm:prompt&gt; U.S. Dollars (US$
						&lt;frm:prompt prompttype="money"&gt;_____&lt;/frm:prompt&gt;)
						(&amp;quot;Payment&amp;quot;). &lt;/text&gt; &lt;/p&gt; &lt;note&gt;
						&lt;heading&gt; &lt;title&gt;Drafting Note to Paragraph &lt;link
						refpt="LPAcontentitem_0QYN_0QYN_211388_3.1" alt-label="clause"
						dpsi="0QYN"&gt;3.1&lt;/link&gt; &lt;/title&gt; &lt;/heading&gt; &lt;p&gt;
						&lt;text&gt;Choosing a lump sum payment as provided for here does have the
						advantage of being easier to administrate, and it is a one-time payment
						rather than a continuing drain on profits, but it carries some risk in
						valuing the licensed IP. A running royalty structure might be more suitable
						as it allows for payment to be made over time and in sync with revenue
						stream from the licensed products. Royalties may carry the administrative
						burden of generating royalty reports and potentially allowing the licensor
						to conduct an audit. If the parties choose to use a royalty structure
						instead, consider substituting Alternate Clause to Paragraph &lt;link
						refpt="LPAcontentitem_0QYN_0QYN_211388_3.1" alt-label="clause"
						dpsi="0QYN"&gt;3.1&lt;/link&gt;. The Alternate Clause specifies the royalty
						rate (the percentage applied to the sales), the royalty base (the sales that
						fall within the royalty structure), ...&lt;/text&gt; &lt;/p&gt;
						&lt;/note&gt; &lt;/clause&gt; &lt;clause id="N1015D"
						clause-type="alternate"&gt; &lt;heading&gt; &lt;desig&gt;
						&lt;designum&gt;3.1&lt;/designum&gt; &lt;/desig&gt; &lt;/heading&gt;
						&lt;refpt id="LPAcontentitem_0QYN_0QYN_211388_3.1alt1" type="local"/&gt;
						&lt;frm:clausecaption&gt; &lt;text&gt; &lt;emph typestyle="bf"&gt;Alternate
						Clause to Paragraph &lt;link refpt="LPAcontentitem_0QYN_0QYN_211388_3.1"
						alt-label="clause" dpsi="0QYN"&gt;3.1&lt;/link&gt;:&lt;/emph&gt;
						&lt;/text&gt; &lt;/frm:clausecaption&gt; &lt;p&gt; &lt;text&gt;In
						consideration of the rights, licenses,....&lt;/text&gt; &lt;/p&gt;
						&lt;/clause&gt; &lt;/clause&gt; </codeblock>

					<title>Target XML</title>
					<codeblock> &lt;form:altclauses&gt; &lt;form:annotatedclause&gt; &lt;form:clause
						xml:id="N10149"&gt; &lt;ref:anchor id="LPAcontentitem_0QYN_0QYN_211388_3.1"
						anchortype="local"/&gt; &lt;heading&gt; &lt;desig&gt;3.1&lt;/desig&gt;
						&lt;/heading&gt; &lt;form:bodytext&gt; &lt;form:p&gt; &lt;form:text&gt;In
						consideration of the rights, licenses, privileges, releases, non-assertions
						and immunities granted by LICENSOR under this Agreement, LICENSEE agrees to
						pay to LICENSOR &lt;form:prompt
						formcharuse="longname"&gt;______________&lt;/form:prompt&gt; U.S. Dollars
						(US$ &lt;form:prompt formcharuse="money"&gt;_____&lt;/form:prompt&gt;)
						("Payment"). &lt;/form:text&gt; &lt;/form:p&gt; &lt;/form:bodytext&gt;
						&lt;/form:clause&gt; &lt;form:annotation&gt; &lt;heading&gt;
						&lt;title&gt;Drafting Note to Paragraph &lt;ref:lnlink&gt;
						&lt;ref:marker&gt;3.1&lt;/ref:marker&gt; &lt;ref:locator
						anchoridref="LPAcontentitem_0QYN_0QYN_211388_3.1"/&gt; &lt;/ref:lnlink&gt;
						&lt;/title&gt; &lt;/heading&gt; &lt;form:bodytext&gt; &lt;form:p&gt;
						&lt;form:text&gt;Choosing a lump sum payment as provided for here does have
						the advantage of being easier to administrate, and it is a one-time payment
						rather than a continuing drain on profits, but it carries some risk in
						valuing the licensed IP. A running royalty structure might be more suitable
						as it allows for payment to be made over time and in sync with revenue
						stream from the licensed products. Royalties may carry the administrative
						burden of generating royalty reports and potentially allowing the licensor
						to conduct an audit. If the parties choose to use a royalty structure
						instead, consider substituting Alternate Clause to Paragraph
						&lt;ref:lnlink&gt; &lt;ref:marker&gt;3.1&lt;/ref:marker&gt; &lt;ref:locator
						anchoridref="LPAcontentitem_0QYN_0QYN_211388_3.1"/&gt; &lt;/ref:lnlink&gt;.
						The Alternate Clause specifies the royalty rate (the percentage applied to
						the sales), the royalty base (the sales that fall within the royalty
						structure), ...&lt;/form:text&gt; &lt;/form:p&gt; &lt;/form:bodytext&gt;
						&lt;/form:annotation&gt; &lt;/form:annotatedclause&gt; &lt;form:clause
						clausetype="alternate" xml:id="N1015D"&gt; &lt;ref:anchor
						id="LPAcontentitem_0QYN_0QYN_211388_3.1alt1" anchortype="local"/&gt;
						&lt;heading&gt; &lt;desig&gt;3.1&lt;/desig&gt; &lt;/heading&gt;
						&lt;form:info&gt; &lt;form:clausecaption&gt; &lt;p&gt; &lt;text&gt; &lt;emph
						typestyle="bf"&gt;Alternate Clause to Paragraph &lt;ref:lnlink&gt;
						&lt;ref:marker&gt;3.1&lt;/ref:marker&gt; &lt;ref:locator
						anchoridref="LPAcontentitem_0QYN_0QYN_211388_3.1"/&gt;
						&lt;/ref:lnlink&gt;:&lt;/emph&gt; &lt;/text&gt; &lt;/p&gt;
						&lt;/form:clausecaption&gt; &lt;/form:info&gt; &lt;form:bodytext&gt;
						&lt;form:p&gt; &lt;form:text&gt;In consideration of the rights,
						licenses,....&lt;/form:text&gt; &lt;/form:p&gt; &lt;/form:bodytext&gt;
						&lt;/form:clause&gt; &lt;/form:altclauses&gt; </codeblock>
				</example>

				<section>
					<title>Changes</title>
					<p>2017-02-07: <ph id="change_20170207c_snb">LPA 2016 enhancements: Added note
							regarding mapping of <sourcexml>clause/refpt</sourcexml> to
								<targetxml>form:clause/ref:anchor</targetxml>, and
								<sourcexml>clause/frm:clausecaption</sourcexml> to
								<targetxml>form:clause/form:info/form:clausecaption</targetxml>.
							Also modified the example to show these mappings.</ph></p>
				</section>

			</body>
		</topic>
		<topic id="clause-clause-type-optional">
			<title>clause[@clause-type="optional"] <lnpid>id-USPA-31015</lnpid></title>
			<body>
				<section>
					<title>Instructions</title>
					<p><sourcexml>clause[@clause-type="optional"]</sourcexml> becomes
							<targetxml>clause[@clausetype="optional"]</targetxml>.</p>
					<p><sourcexml>clause/refpt</sourcexml> and
							<sourcexml>clause/frm:clausecaption</sourcexml> are mapped to be
							<targetxml>form:clause/ref:anchor</targetxml> and
							<targetxml>form:clause/form:info/form:clausecaption</targetxml>,
						respectively, using the instructions specific to those mappings in the
						appropriate sections of this document. However, any target
							<targetxml>form:clause/ref:anchor</targetxml> created must be inserted
						as the FIRST child of the <targetxml>form:clause</targetxml> element it is
						within. Mapping of <sourcexml>refpt</sourcexml> is provided in the General
						Markup section of this document (<xref
							href="../../common_newest/Rosetta_refpt-LxAdv-ref.anchor.dita"/>), and
						mapping of <sourcexml>frm:clausecaption</sourcexml> is provided in the Forms
						and Precedents section of the document (id-CCCC-10153).</p>
				</section>
				<example>
					<title>Source XML</title>
					<codeblock> &lt;clause id="N10137" clause-type="optional"&gt; &lt;heading&gt;
						&lt;desig&gt; &lt;designum&gt;2.3&lt;/designum&gt; &lt;/desig&gt;
						&lt;/heading&gt; &lt;refpt id="LPAcontentitem_0QYN_0QYN_211388_2.3"
						type="local"/&gt; &lt;frm:clausecaption&gt; &lt;text&gt; &lt;emph
						typestyle="bf"&gt;Optional Paragraph &lt;link
						refpt="LPAcontentitem_0QYN_0QYN_211388_2.3" alt-label="clause"
						dpsi="0QYN"&gt;2.3&lt;/link&gt;:&lt;/emph&gt; &lt;/text&gt;
						&lt;/frm:clausecaption&gt; &lt;p&gt; &lt;text&gt;LICENSOR further agrees, on
						behalf of itself and any successors and assigns of the Licensed Patents, in
						whole or in part, that they will not, at any time or in any capacity, assert
						any claim or commence or prosecute any action, suit or proceeding, against
						LICENSEE or against any of LICENSEE's end-users, distributors, customers,
						including OEM and private label customers, dealers and suppliers of
						LICENSEE, whether direct or indirect, or immediate or remote, based in whole
						or in part on infringement of the Licensed Patents, direct and/or
						contributory and/or by inducement or otherwise, arising out of any past,
						present or future manufacture, having manufactured, use, sale, offer for
						sale, lease, import, export or other disposition of Products throughout the
						world.&lt;/text&gt; &lt;/p&gt; &lt;/clause&gt; </codeblock>

					<title>Target XML</title>
					<codeblock> &lt;form:clause clausetype="optional" xml:id="N10137"&gt;
						&lt;ref:anchor id="LPAcontentitem_0QYN_0QYN_211388_2.3"
						anchortype="local"/&gt; &lt;heading&gt; &lt;desig&gt;2.3&lt;/desig&gt;
						&lt;/heading&gt; &lt;form:info&gt; &lt;form:clausecaption&gt; &lt;p&gt;
						&lt;text&gt; &lt;emph typestyle="bf"&gt;Optional Paragraph
						&lt;ref:lnlink&gt; &lt;ref:marker&gt;2.3&lt;/ref:marker&gt; &lt;ref:locator
						anchoridref="LPAcontentitem_0QYN_0QYN_211388_2.3"/&gt;
						&lt;/ref:lnlink&gt;:&lt;/emph&gt; &lt;/text&gt; &lt;/p&gt;
						&lt;/form:clausecaption&gt; &lt;/form:info&gt; &lt;form:bodytext&gt;
						&lt;form:p&gt; &lt;form:text&gt;LICENSOR further agrees, on behalf of itself
						and any successors and assigns of the Licensed Patents, in whole or in part,
						that they will not, at any time or in any capacity, assert any claim or
						commence or prosecute any action, suit or proceeding, against LICENSEE or
						against any of LICENSEE's end-users, distributors, customers, including OEM
						and private label customers, dealers and suppliers of LICENSEE, whether
						direct or indirect, or immediate or remote, based in whole or in part on
						infringement of the Licensed Patents, direct and/or contributory and/or by
						inducement or otherwise, arising out of any past, present or future
						manufacture, having manufactured, use, sale, offer for sale, lease, import,
						export or other disposition of Products throughout the
						world.&lt;/form:text&gt; &lt;/form:p&gt; &lt;/form:bodytext&gt;
						&lt;/form:clause&gt; </codeblock>
				</example>

				<section>
					<title>Changes</title>
					<p>2017-02-07: <ph id="change_20170207d_snb">LPA 2016 enhancements: Added note
							regarding mapping of <sourcexml>clause/refpt</sourcexml> to
								<targetxml>form:clause/ref:anchor</targetxml>, and
								<sourcexml>clause/frm:clausecaption</sourcexml> to
								<targetxml>form:clause/form:info/form:clausecaption</targetxml>.
							Also modified the example to show these mappings.</ph></p>
				</section>

			</body>
		</topic>
		<topic id="level-note-notetype-summary">
			<title>level/note[@notetype="summary"] <lnpid>id-USPA-31016</lnpid></title>
			<body>
				<section>
					<title>Instructions</title>
					<p>Most Fillable Forms will contain a "Form Summary" at the end of the document.
						This due to the placement within the PAM editorial document, this
							<sourcexml>note</sourcexml> will occur as a child of
							<sourcexml>level</sourcexml>. In the conversion to NewLexis, the
							<targetxml>note</targetxml> should be moved within the
							<targetxml>form:bodytext</targetxml>.</p>
					<p><sourcexml>level/note[@notetype="summary"]</sourcexml> becomes
							<targetxml>form:form/form:document/form:bodytext/note[@notetype="summary"]</targetxml></p>
				</section>
				<example>
					<title>Source XML</title>
					<codeblock> &lt;!-- parent is level --&gt; &lt;note notetype="summary"&gt;
						&lt;heading&gt; &lt;title&gt;Form Summary&lt;/title&gt; &lt;/heading&gt;
						&lt;p&gt; &lt;text&gt;From the writer's viewpoint, the principal concerns of
						the long form writer employment agreement are: (i) what is the writer being
						hired to write; (ii) how long does the writer have to write the particular
						work; (iii) how much will the writer be paid; and (iv) what provisions apply
						to the determination of the writer's credit. Since a writer's employment
						agreement is a form of work-for-hire agreement, the production company, as
						the hiring entity, will own the work product and will be the "author" for
						copyright purposes.&lt;/text&gt; &lt;/p&gt; &lt;p&gt;
						&lt;text&gt;Nevertheless, for the purpose of determining screen credit, the
						agreement may be subject to the Writers Guild of America Basic Agreement in
						which case, the credit determination will be governed by the procedures of
						the Writers Guild of America Credit Determination Manual. If the writer's
						employment is not under Writers Guild jurisdiction, then credit
						determination may be decided in accordance with a set of procedures provided
						by the production company in which case, the parties will want to review
						those procedures.&lt;/text&gt; &lt;/p&gt; &lt;/note&gt; </codeblock>
				</example>
				<example>
					<title>Target XML</title>
					<codeblock> &lt;!-- parent is form:bodytext --&gt; &lt;note
						notetype="summary"&gt; &lt;heading&gt; &lt;title&gt;Form
						Summary&lt;/title&gt; &lt;/heading&gt; &lt;bodytext&gt; &lt;p&gt;
						&lt;text&gt;From the writer's viewpoint, the principal concerns of the long
						form writer employment agreement are: (i) what is the writer being hired to
						write; (ii) how long does the writer have to write the particular work;
						(iii) how much will the writer be paid; and (iv) what provisions apply to
						the determination of the writer's credit. Since a writer's employment
						agreement is a form of work-for-hire agreement, the production company, as
						the hiring entity, will own the work product and will be the "author" for
						copyright purposes.&lt;/text&gt; &lt;/p&gt; &lt;p&gt;
						&lt;text&gt;Nevertheless, for the purpose of determining screen credit, the
						agreement may be subject to the Writers Guild of America Basic Agreement in
						which case, the credit determination will be governed by the procedures of
						the Writers Guild of America Credit Determination Manual. If the writer's
						employment is not under Writers Guild jurisdiction, then credit
						determination may be decided in accordance with a set of procedures provided
						by the production company in which case, the parties will want to review
						those procedures.&lt;/text&gt; &lt;/p&gt; &lt;/bodytext&gt; &lt;/note&gt;
					</codeblock>
				</example>
			</body>
		</topic>
		<topic id="comm-info_contrib_note_p_text_remotelink">
			<title>comm:info/contrib/note/p/text/remotelink <lnpid>id-USPA-31017</lnpid></title>
			<body>
				<section>
					<title>Instructions</title>
					<p><sourcexml>comm:info//contrib/note/p/text/remotelink</sourcexml> becomes
							<targetxml>form:info/form:relatedcontent//form:relatedcontentitem[@contenttype="checklist"]/ref:lnlink</targetxml>.</p>
					<p>Note that the mapping for <sourcexml>remotelink</sourcexml> differs from the
						"General Markup" instructions in this context.</p>
					<p>Create <targetxml>ref:lnlink</targetxml> with attribute
							<targetxml>service="DOCUMENT"</targetxml> and populate
							<targetxml>ref:marker</targetxml> with the contents of
							<sourcexml>remotelink</sourcexml>.</p>
					<p>Create <targetxml>ref:locator/ref:locator-key</targetxml>.</p>
					<p>Within <targetxml>ref:locator-key</targetxml>, create
							<targetxml>ref:key-name[@name="DOC-ID"]</targetxml>, and
							<targetxml>ref:key-name[@value]</targetxml>. Populate
							<targetxml>ref:key-name[@value]</targetxml> with the value of
							<sourcexml>@dpsi</sourcexml> followed by hyphen and concatenated with
							<sourcexml>remotelink/@remotekey2</sourcexml>.</p>
					<p><b>Note well:</b> The resulting XML should be merged into the existing
							<sourcexml>form</sourcexml> and <b>shall not</b> create a separate form
						instance in the target document.</p>
				</section>
				<example>
					<title>Source XML</title>
					<codeblock> &lt;comm:info&gt; &lt;contrib&gt; &lt;note&gt; &lt;p&gt;
						&lt;text&gt; &lt;remotelink dpsi="0PHX" remotekey1="DOC-ID"
						remotekey2="0PHX_67188" service="DOC-ID"&gt;Non-Disclosure,
						Non-Solicitation, and Non-Competition Agreement — Company
						Checklist&lt;/remotelink&gt; &lt;/text&gt; &lt;/p&gt; &lt;/note&gt;
						&lt;/contrib&gt; &lt;/comm:info&gt; </codeblock>
				</example>
				<example>
					<title>Target XML</title>
					<codeblock> &lt;form:info&gt; &lt;form:relatedcontent&gt;
						&lt;form:relatedcontentitem contenttype="checklist"&gt; &lt;ref:lnlink
						service="DOCUMENT"&gt; &lt;ref:marker&gt;Non-Disclosure, Non-Solicitation,
						and Non-Competition Agreement — Company Checklist&lt;/ref:marker&gt;
						&lt;ref:locator&gt; &lt;ref:locator-key&gt; &lt;ref:key-name
						name="DOC-ID"/&gt; &lt;ref:key-value value="0PHX-0PHX_67188"/&gt;
						&lt;/ref:locator-key&gt; &lt;/ref:locator&gt; &lt;/ref:lnlink&gt;
						&lt;/form:relatedcontentitem&gt; &lt;/form:relatedcontent&gt;
						&lt;/form:info&gt; </codeblock>
				</example>
				<section>
					<title>Changes</title>
					<p>2012-11-14 - added attribute @service="DOCUMENT" to target output to comply
						with Kraken method.</p>
					<p>2012-11-05 - modified mapping of ref:key-name[@value] to include @dpsi
						followed by hyphen and concatenated with remotelink/@remotekey2. Also
						modified example to reflect this rule.</p>
					<p>2012-08-29 - added this instruction.</p>
				</section>
			</body>
		</topic>
		<topic id="comm-info_contrib_note_p_text">
			<title>comm:info/contrib/note/p/text <lnpid>id-USPA-31018</lnpid></title>
			<body>
				<section>
					<title>Instructions</title>
					<p>This mapping instruction was removed as part of the LPA 2016 enhancements.
						Previously this instruction contained special mapping instructions for when
						the document contains <sourcexml>form</sourcexml> and
							<sourcexml>comm:info/contrib/note/p/text</sourcexml> does not contain
							<sourcexml>remotelink</sourcexml>. These special instructions no longer
						apply, and any previous creation of
							<targetxml>form:document/form:dochead</targetxml> by the conversion MUST
						BE REMOVED.</p>
				</section>
				<section>
					<title>Changes</title>
					<p>2017-02-07: <ph id="change_20170207e_snb">LPA 2016 enhancements: Removed all
							mapping of <sourcexml>comm:info/contrib/note/p/text</sourcexml> to
								<targetxml>form:document/form:dochead/form:line</targetxml>. The
							content that had previously been in this source element is now handled
							as part of the mapping of author information in the metadata section of
							this conversion instruction (id-CCCC-10526).</ph></p>
					<p>2012-02-10 - added explanatory note that this instruction only applies when
						the document contains a form.</p>
					<p>2012-09-07 - added form:document to target xpath.</p>
					<p>2012-08-29 - added this instruction.</p>
				</section>
			</body>
		</topic>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-US\US_LPA\LPA-PracticalGuidance_FillableForms.dita  -->
	<!--<xsl:message>LPA-PracticalGuidance_FillableForms.xsl requires manual development!</xsl:message> -->

	<!--	<xsl:template match="abstract">
		<abstract>
			<bodytext>
				<xsl:apply-templates select="@* | node()"/>
			</bodytext>
		</abstract>
	</xsl:template>
-->
	<xsl:template match="frm:prompt">

		<!--  Original Target XPath:  form:prompt   -->
		<form:prompt>
			<xsl:apply-templates select="@* | node()"/>
		</form:prompt>

	</xsl:template>

	<xsl:template match="frm:prompt/@prompttype">
		<xsl:if test=".='longname' or .='date' or .='num' or .='money' or .='address' or .='name'">
		<xsl:attribute name="formcharuse">
			<xsl:value-of select="."/>
		</xsl:attribute>
		</xsl:if>
	</xsl:template>
	
	<xsl:template match="frm:prompt/@promptname">
			<xsl:attribute name="promptname">
				<xsl:value-of select="."/>
			</xsl:attribute>
	</xsl:template>

	<xsl:template match="clause[@clause-type = 'group'][not(preceding-sibling::*[1][self::clause[@clause-type = 'group']])][not(parent::frm:body)][not(preceding-sibling::*[1][self::clause[(preceding-sibling::*[1][self::clause[@clause-type = 'group']])]])][not(child::p[not(following-sibling::*)])]" 
		priority="2">

		<!--  Original Target XPath:  form:clausegrp   -->
		<xsl:choose>
			<xsl:when test="(child::clause[@clause-type = 'alternate'])">
				<!-- SNB 2018-01-09: webstar 7076824: check for breaks between child alternate clauses and output error if exists(not currently supported) -->
				<xsl:if test="break[preceding-sibling::clause][following-sibling::clause]">
					<xsl:call-template name="outputErrorMessage">
						<xsl:with-param name="messageText"
							as="xs:string"
							select="'ERROR: unsupported markup structure; break elements must be before or after all clauses within a group containing alternate clauses.'"/>
						<xsl:with-param name="errorType" as="xs:string" select=" 'ROCKET' "/>
						<xsl:with-param name="errorCode" as="xs:string*" select=" '406' "/>
						<xsl:with-param name="status" as="xs:string*" select=" 'W' "/>
						<xsl:with-param name="context" as="xs:string">
							<xsl:call-template name="generateXPath"/>
						</xsl:with-param>
					</xsl:call-template>
				</xsl:if>
				<xsl:choose>
					<xsl:when test="((@label-type | @label-prefix | @clause-number-profile) or parent::clause) and (not(parent::frm:body)) and (not(preceding-sibling::p))">
						<form:bodytext>
							<form:clausegrp>
								<!-- SNB 2018-01-09: webstar 7076824: need to process any break elements before the child alternate clauses before 
                           			creating form:altclauses -->
								<xsl:apply-templates select="@*, break[following-sibling::clause]"/>
								<!--<xsl:apply-templates select="@*, break"/>-->
								<form:altclauses>
									<xsl:apply-templates select="node() except (break | p[not(preceding-sibling::*[1][self::*])])"/>
								</form:altclauses>
								<!-- SNB 2018-01-09: webstar 7076824: need to process any break elements after the child alternate clauses after  
               						closing form:altclauses -->
								<xsl:apply-templates select="break[preceding-sibling::clause]"/>
							</form:clausegrp>
							<xsl:apply-templates
								select="following-sibling::clause[@clause-type = 'group'][not(preceding-sibling::*[1][self::table])]"
								mode="clause-group"/>
						</form:bodytext>
					</xsl:when>
					<xsl:otherwise>
						<form:clausegrp>
							<!-- SNB 2018-01-09: webstar 7076824: need to process any break elements before the child alternate clauses before 
               					creating form:altclauses -->
							<xsl:apply-templates select="@*, break[following-sibling::clause]"/>
							<!--<xsl:apply-templates select="@*, break"/>-->
							<form:altclauses>
								<xsl:apply-templates select="node() except break"/>
							</form:altclauses>
							<!-- SNB 2018-01-09: webstar 7076824: need to process any break elements after the child alternate clauses after  
               					closing form:altclauses -->
							<xsl:apply-templates select="break[preceding-sibling::clause]"/>
						</form:clausegrp>
						<xsl:apply-templates
							select="following-sibling::clause[@clause-type = 'group']"
							mode="clause-group"/>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:when>
			<xsl:when
				test="((@label-type | @label-prefix | @clause-number-profile) or parent::clause) and (not(preceding-sibling::p)) and (not(parent::frm:body)) and not(preceding-sibling::*[1][self::table]) and not(preceding-sibling::*[1][self::clause[@clause-type='alternate-group']])">
				<form:bodytext>
					<form:clausegrp>
						<xsl:apply-templates
							select="@* | node() except (clause[@clause-type = 'alternate'] | note[preceding-sibling::*[1][self::table]]) "/>
					</form:clausegrp>
					<xsl:apply-templates select="(following-sibling::clause[@clause-type = 'group'] | following-sibling::*[1][self::p])"
						mode="clause-group"/>
					<!--SNB: 2017-12-13: webstar 7058441: getting stupid with all these following-sibling/preceding-sibling pairs, but have to process following sigblocks before closing bodytext--> 
					<xsl:apply-templates select="(following-sibling::sigblock)"/>
				</form:bodytext>
			</xsl:when>
			<xsl:otherwise>
				<form:clausegrp>
					<xsl:apply-templates select="@* | node() except (p[preceding-sibling::clause | following-sibling::clause] | clause[parent::clause-type='alternate-group']|table[preceding-sibling::clause | following-sibling::clause] | note[preceding-sibling::*[1][self::clause]])"/>
				</form:clausegrp>
				
				<!--SNB: 2017-12-05 : correct bug in following for webstar 7051223; logic was outputing clauses mutlitple times
					change to remove the 2nd test for clausegroups immediately following clausegroups (the 1st test for clausegroups 
					immed following p already included those elements). Also add a condition that the clausegroup is does not have a 
					a p between current node and following clausegroup (these get processed by the p. -->
				<xsl:apply-templates select="(following-sibling::clause[@clause-type = 'group'][not(preceding-sibling::*[1][self::p])]
					[not(preceding-sibling::p/preceding-sibling::clause[@clause-type = 'group']=current())]) 
					except following-sibling::clause[@clause-type='group'][preceding-sibling::*[1][self::table]]"
					mode="clause-group"/>
				<!--<xsl:apply-templates
					select="(following-sibling::clause[@clause-type = 'group'][not(preceding-sibling::*[1][self::p])] | following-sibling::clause[preceding-sibling::*[1][self::clause[@clause-type='group']]][not(@clause-type='alternate-group')]) except following-sibling::clause[@clause-type='group'][preceding-sibling::*[1][self::table]]"
					mode="clause-group"/>-->
				<!--<xsl:apply-templates select="(following-sibling::clause[@clause-type='group'][preceding-sibling::*[1][self::*]] | following-sibling::p[preceding-sibling::*[1][self::*]])" mode="clause-group"/>-->
			</xsl:otherwise>

		</xsl:choose>
	</xsl:template>
	
	<xsl:template match="p[preceding-sibling::*[1][self::clause[@clause-type='group']]]" mode="clause-group">
		<form:p>
			<xsl:apply-templates select="@* | node()"/>
		</form:p>
	</xsl:template>

	<xsl:template
		match="clause[@clause-type = 'group'][not(child::clause[@clause-type = 'alternate'])][not(preceding-sibling::*[1][self::p])][not(preceding-sibling::*[1][self::table])]"
		mode="clause-group">
		<form:clausegrp>
			<xsl:apply-templates select="@* | node() except (clause[@clause-type = 'alternate'] | note[preceding-sibling::*[1][self::clause]]| p[preceding-sibling::*[1][self::clause]] | clause[preceding-sibling::*[1][self::*]][not(preceding-sibling::*[1][self::clause])][not(preceding-sibling::*[1][self::break])])"/>
		</form:clausegrp>
	</xsl:template>
	
	<xsl:template match="clause[@clause-type='group'][preceding-sibling::*[1][self::clause[@clause-type='group']]][not(parent::frm:body)]"/>
	
	<xsl:template match="clause[@clause-type = 'group'][child::clause[@clause-type = 'alternate']]"
		mode="clause-group">
		<!-- SNB 2018-01-09: webstar 7076824: check for breaks between child alternate clauses and output error if exists(not currently supported) -->
		<xsl:if test="break[preceding-sibling::clause][following-sibling::clause]">
			<xsl:call-template name="outputErrorMessage">
				<xsl:with-param name="messageText"
					as="xs:string"
					select="'ERROR: unsupported markup structure; break elements must be before or after all clauses within a group containing alternate clauses.'"/>
				<xsl:with-param name="errorType" as="xs:string" select=" 'ROCKET' "/>
				<xsl:with-param name="errorCode" as="xs:string*" select=" '406' "/>
				<xsl:with-param name="status" as="xs:string*" select=" 'W' "/>
				<xsl:with-param name="context" as="xs:string">
					<xsl:call-template name="generateXPath"/>
				</xsl:with-param>
			</xsl:call-template>
		</xsl:if>
		<xsl:choose>
			<xsl:when test="child::note">
				<form:clausegrp>
					<!-- SNB 2018-01-09: webstar 7076824: need to process any break elements before the child alternate clauses before 
               			creating form:altclauses -->
					<xsl:apply-templates select="@*, break[following-sibling::clause]"/>
					<form:annotatedclause>
						<!--<xsl:apply-templates select="break[@break-type]"/>-->
						<form:altclauses>
							<!-- SNB 2018-01-09: webstar 7076824: removed attributes from form:altclauses, move to be in form:clausegrp -->
							<!--<xsl:apply-templates select="@* | node() except (break[@break-type] | note)"/>-->
							<xsl:apply-templates select="node() except (break[@break-type] | note)"/>
						</form:altclauses>
							<xsl:apply-templates select="note"/>
					</form:annotatedclause>
					<!-- SNB 2018-01-09: webstar 7076824: need to process any break elements after the child alternate clauses after  
               				closing form:altclauses -->
					<xsl:apply-templates select="break[preceding-sibling::clause]"/>
				</form:clausegrp>
			</xsl:when>
			<xsl:otherwise>
				<!-- SNB 2018-01-09: webstar 7076824: need to process any break elements before the child alternate clauses before 
               			creating form:altclauses -->
				<xsl:apply-templates select="@*, break[following-sibling::clause]"/>
				<form:clausegrp>
					<xsl:apply-templates select="break[@break-type]"/>
					<form:altclauses>
						<!-- SNB 2018-01-09: webstar 7076824: removed attributes from form:altclauses, move to be in form:clausegrp -->
						<!--<xsl:apply-templates select="@* | node() except (break[@break-type] | p[not(preceding-sibling::*[1][self::*])] | p[preceding-sibling::*[1][self::p[not(preceding-sibling::*[1][self::*])]]])"/>-->
						<xsl:apply-templates select="node() except (break[@break-type] | p[not(preceding-sibling::*[1][self::*])] | p[preceding-sibling::*[1][self::p[not(preceding-sibling::*[1][self::*])]]])"/>
					</form:altclauses>
					<!-- SNB 2018-01-09: webstar 7076824: need to process any break elements after the child alternate clauses after  
               				closing form:altclauses -->
					<xsl:apply-templates select="break[preceding-sibling::clause]"/>
				</form:clausegrp>	
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
	
	
	<xsl:template match="clause" mode="clause-group">
		<form:clause>
			<xsl:apply-templates select="@* | node() except p[preceding-sibling::*[1][self::p]]"/>
		</form:clause>
	</xsl:template>

	<!--<xsl:template
		match="clause[@clause-type = 'group'][preceding-sibling::clause[@clause-type = 'group']]"/>-->

	<xsl:template match="clause/@label-type">

		<!--  Original Target XPath:  @labeltype   -->
		<xsl:attribute name="labeltype">
			<!--<xsl:apply-templates select="node()"/>-->
			<xsl:choose>
				<xsl:when test=". = 'alpha-upper'">
					<xsl:text>upperAlpha</xsl:text>
				</xsl:when>
				<xsl:when test=". = 'alpha-lower'">
					<xsl:text>lowerAlpha</xsl:text>
				</xsl:when>
				<xsl:when test=". = 'roman-upper'">
					<xsl:text>upperRoman</xsl:text>
				</xsl:when>
				<xsl:when test=". = 'roman-lower'">
					<xsl:text>lowerRoman</xsl:text>
				</xsl:when>
				<xsl:otherwise>
					<xsl:value-of select="."/>
				</xsl:otherwise>
			</xsl:choose>
		</xsl:attribute>

	</xsl:template>

	<xsl:template match="@label-prefix">

		<!--  Original Target XPath:  @labelprefix   -->
		<xsl:attribute name="labelprefix">
			<!--<xsl:apply-templates select="node()"/>-->
			<xsl:value-of select="."/>
		</xsl:attribute>

	</xsl:template>

	<xsl:template match="@clause-number-profile">

		<!--  Original Target XPath:  @listformatprofile   -->
		<xsl:attribute name="listformatprofile">
			<!--<xsl:apply-templates select="node()"/>-->
			<xsl:value-of select="."/>
		</xsl:attribute>

	</xsl:template>

	<xsl:template match="@glyph-code">

		<!--  Original Target XPath:  @glyphcode   -->
		<xsl:attribute name="glyphcode">
			<!--<xsl:apply-templates select="node()"/>-->
			<xsl:value-of select="."/>
		</xsl:attribute>

	</xsl:template>

	<xsl:template match="clause/refpt">

		<!--  Original Target XPath:  form:annotatedclause   -->
		<!--<form:annotatedclause>-->
		<xsl:apply-templates select="@* | node()"/>
		<!--</form:annotatedclause>-->

	</xsl:template>

	<xsl:template match="clause/frm:clausecaption">

		<!--  Original Target XPath:  form:annotatedclause   -->
		<!--<form:annotatedclause>-->
		<xsl:apply-templates select="@* | node()"/>
		<!--</form:annotatedclause>-->

	</xsl:template>

	<!--<xsl:template match="clause[child::note]" priority="23">

		<!-\-  Original Target XPath:  form:annotatedclause   -\->
		<xsl:choose>
			<xsl:when test="((following-sibling::clause[@clause-type='alternate']) or (preceding-sibling::clause[@clause-type='alternate'])) and (not(parent::clause[@clause-type='alternate-group'])) and (not(preceding-sibling::clause))">
				<form:altclauses>
					<form:annotatedclause>
						<form:clause>
							<xsl:apply-templates select="@*,refpt,heading"/>
							<xsl:apply-templates
								select="node() except (p[preceding-sibling::p] | refpt| heading | note | clause[not(preceding-sibling::clause[@clause-type='alternate'] or following-sibling::clause[@clause-type='alternate'])] | table | (clause[@clause-type = 'group'][preceding-sibling::p])) | (note[@notetype = 'summary'])"/>
							
						</form:clause>
						<xsl:apply-templates select="child::note"/>
					</form:annotatedclause>
					<xsl:apply-templates select="(following-sibling::clause | preceding-sibling::clause)"/>
				</form:altclauses>
			</xsl:when>
			<xsl:otherwise>
				<form:annotatedclause>
					<form:clause>
						<xsl:apply-templates select="@*,refpt,heading"/>
						<xsl:apply-templates
							select="node() except (refpt| heading|note | p[preceding-sibling::p]|  clause | table | (clause[@clause-type = 'group'][preceding-sibling::p]) | (note[@notetype = 'summary']) | (clause[preceding-sibling::clause[@clause-type='alternate-group'] or following-sibling::clause[@clause-type='alternate-group']]))"/>
						
					</form:clause>
					<xsl:apply-templates select="child::note"/>
				</form:annotatedclause>
			</xsl:otherwise>
		</xsl:choose>
		
	</xsl:template>
-->
	<!--<xsl:template match="clause[not(child::note)][not(@clause-type = 'group')][not(@clause-type='alternate-group')]" priority="2">
		<xsl:choose>
			<xsl:when test="((following-sibling::clause[@clause-type='alternate']) or (preceding-sibling::clause[@clause-type='alternate'])) and (not(parent::clause[@clause-type='alternate-group'])) and (not(preceding-sibling::clause))">
				<form:altclauses>
					<form:clause>
						<xsl:apply-templates select="@*,refpt,heading"/>
						<xsl:apply-templates select="node() except (refpt|heading|p[preceding-sibling::p]|(clause[@clause-type='group'][not((preceding-sibling::clause[@clause-type='alternate']) or (following-sibling::clause[@clause-type='alternate']))]))"/>
					</form:clause>
					<xsl:apply-templates select="following-sibling::clause"/>
				</form:altclauses>
			</xsl:when>
			<xsl:otherwise>
				<form:clause>
					<xsl:apply-templates select="@*,refpt,heading"/>
					<xsl:if test="child::table[not(preceding-sibling::p)]">
						<form:bodytext>
							<xsl:apply-templates select="table"/>
						</form:bodytext>
					</xsl:if>
					<xsl:apply-templates
						select=" node() except (refpt | heading | note | table[preceding-sibling::p or not(preceding-sibling::p)]|clause[not(@clause-type = 'group') and not(following-sibling::clause)] | (clause[@clause-type = 'group'][preceding-sibling::p]) | p[preceding-sibling::p] | (note[@notetype = 'summary'])| p[parent::frm:block]|frm:block|sigblock[preceding-sibling::p])"
					/>
				</form:clause>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>-->


	<!--   SNB 2017-10-16 updated comments below after a LONG review of the many changes made to alternate clause 
		design over the past 10 months. The code change is good as-is, but the comments were incorrect; this should 
		be a permanent change.-->
	<!--   SNB 2017-10-13 replacing template code for clause[@clause-type = 'alternate-group'] with block that creates the required 
   clausegrp wrapper when this exists in the Rosetta source at the "top" of the clauses.-->
	
	<xsl:template match="clause[@clause-type = 'alternate-group']">

		<!--      <form:altclauses>
         <xsl:apply-templates select="@* | node() except note"/>
      </form:altclauses>-->
		
		<!-- SNB 2018-01-09: webstar 7076824: check for breaks between child alternate clauses and output error if exists(not currently supported) -->
		<xsl:if test="break[preceding-sibling::clause][following-sibling::clause]">
			<xsl:call-template name="outputErrorMessage">
				<xsl:with-param name="messageText"
					as="xs:string"
					select="'ERROR: unsupported markup structure; break elements must be before or after all clauses within a group containing alternate clauses.'"/>
				<xsl:with-param name="errorType" as="xs:string" select=" 'ROCKET' "/>
				<xsl:with-param name="errorCode" as="xs:string*" select=" '406' "/>
				<xsl:with-param name="status" as="xs:string*" select=" 'W' "/>
				<xsl:with-param name="context" as="xs:string">
					<xsl:call-template name="generateXPath"/>
				</xsl:with-param>
			</xsl:call-template>
		</xsl:if>
		
		<xsl:choose>
			<xsl:when test="parent::frm:body">
				<form:clausegrp>
					<!-- SNB 2018-01-09: webstar 7076824: need to process any break elements before the child alternate clauses before 
               				creating form:altclauses -->
					<xsl:apply-templates select="@*, break[following-sibling::clause]"/>
					<form:altclauses>
						<!-- SNB 2018-01-09: webstar 7076824: process @'s above, and dont process break elements; 
							they have to occur before the child alternate clauses or after the child alternate clauses -->
						<!--<xsl:apply-templates select="@* | node() except note"/>-->
						<xsl:apply-templates select="node() except (note | break)"/>
					</form:altclauses>
					<!-- SNB 2018-01-09: webstar 7076824: need to process any break elements after the child alternate clauses after  
               				closing form:altclauses -->
					<xsl:apply-templates select="break[preceding-sibling::clause]"/>
				</form:clausegrp>            
			</xsl:when>
			<xsl:otherwise>
				<!-- SNB 2018-01-09: webstar 7076824: need to process any break elements before the child alternate clauses before 
               			creating form:altclauses -->
				<xsl:apply-templates select="@*, break[following-sibling::clause]"/>
				<form:altclauses>
					<!-- SNB 2018-01-09: webstar 7076824: process @'s above, and dont process break elements; 
							they have to occur before the child alternate clauses or after the child alternate clauses -->
					<!--<xsl:apply-templates select="@* | node() except note"/>-->
					<xsl:apply-templates select="node() except (note | break)"/>
				</form:altclauses>
				<!-- SNB 2018-01-09: webstar 7076824: need to process any break elements after the child alternate clauses after  
               			closing form:altclauses -->
				<xsl:apply-templates select="break[preceding-sibling::clause]"/>
			</xsl:otherwise>
		</xsl:choose>
		
	</xsl:template>
	
	<xsl:template match="refpt">

		<!--  Original Target XPath:  form:clause/ref:anchor   -->
		<form:clause>
			<ref:anchor>
				<xsl:apply-templates select="@* | node()"/>
			</ref:anchor>
		</form:clause>

	</xsl:template>

	<xsl:template match="frm:clausecaption" priority="22"> </xsl:template>

	<!--<xsl:template match="clause[@clause-type=&#34;optional&#34;]" priority="22">

		<!-\-  Original Target XPath:  clause[@clausetype="optional"]   -\->
		<xsl:choose>
			<xsl:when test="child::note">
				<form:annotatedclause>
					<form:clause>
						<xsl:apply-templates select="@* | node()"/>
					</form:clause>
				</form:annotatedclause>
			</xsl:when>
			<xsl:when test="preceding-sibling::clause[@clause-type='alternate'] or following-sibling::clause[@clause-type='alternate']">
				<xsl:choose>
					<xsl:when test="child::note">
						<form:altclauses>
							<form:annotatedclause>
								<form:clause>
									<xsl:apply-templates select="@*,refpt,heading"/>
									<xsl:apply-templates select="node() except (refpt|heading)"/>
								</form:clause>
							</form:annotatedclause>
						</form:altclauses>
					</xsl:when>
					<xsl:otherwise>
						<form:altclauses>
								<form:clause>
									<xsl:apply-templates select="@*,refpt,heading"/>
									<xsl:apply-templates select="node() except (refpt|heading)"/>
								</form:clause>							
						</form:altclauses>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:when>
			<xsl:otherwise>
				<form:clause>
					<xsl:apply-templates select="@*,refpt,heading"/>
					<xsl:apply-templates select="node() except (refpt| heading|p[preceding-sibling::p]|clause[preceding-sibling::p])"/>
				</form:clause>
			</xsl:otherwise>
		</xsl:choose>

	</xsl:template>-->

	<!--	<xsl:template match="level/note[@notetype=&#34;summary&#34;]" mode="summary">

		<!-\-  Original Target XPath:  form:form/form:document/form:bodytext/note[@notetype="summary"]   -\->
		<form:form>
			<form:document>
				<form:bodytext>
					<note>
						<xsl:apply-templates select="@* | node()"/>
					</note>
				</form:bodytext>
			</form:document>
		</form:form>

	</xsl:template>-->


	<xsl:template match="form">

		<!--  Original Target XPath:  form:document/form:dochead   -->
		<form:form>
			<xsl:apply-templates select="@* | node()"/>
		</form:form>

	</xsl:template>

	<xsl:template
		match="p[not(preceding-sibling::clause or preceding-sibling::*[1][self::table] or preceding-sibling::note or preceding-sibling::sigblock or preceding-sibling::p or parent::note[@notetype = 'summary'] or parent::frm:body or parent::note[@notetype = 'practice-tip']) or (parent::clause[@clause-type = 'alternate'] and not(preceding-sibling::p))][not(ancestor::pgrp)][not(parent::li)][not(parent::bodytext)][not(parent::blockquote)]"
		priority="28">
		<form:bodytext>
			<form:p>
				<xsl:if test="child::text/@align">
					<xsl:attribute name="align">
						<xsl:value-of select="child::text/@align"/>
					</xsl:attribute>
				</xsl:if>
				<xsl:apply-templates select="@* | node()"/>
			</form:p>
			<!--<xsl:apply-templates select="following-sibling::*[1][((local-name() = 'clause') and @clause-type) or (local-name() = 'p') or (local-name() = 'table')]"/>-->
			<!--SNB: 2017-12-13: webstar 7058441: getting stupid with all these following-sibling/preceding-sibling pairs, but have to process following sigblocks before closing bodytext--> 
			<xsl:apply-templates select="(following-sibling::clause[@clause-type = 'group'] | following-sibling::table | preceding-sibling::table 
				| following-sibling::p[not(parent::frm:block)] | following-sibling::frm:block | following-sibling::sigblock[not(preceding-sibling::clause)] 
				| following-sibling::clause)"/>
		</form:bodytext>
	</xsl:template>
	
	<xsl:template match="clause[@clause-type='group'][preceding-sibling::*[1][self::p] or parent::frm:body]">
		<xsl:choose>
			<xsl:when test="child::clause[@clause-type='alternate']">
				<!-- SNB 2018-01-09: webstar 7076824: check for breaks between child alternate clauses and output error if exists(not currently supported) -->
				<xsl:if test="break[preceding-sibling::clause][following-sibling::clause]">
					<xsl:call-template name="outputErrorMessage">
						<xsl:with-param name="messageText"
							as="xs:string"
							select="'ERROR: unsupported markup structure; break elements must be before or after all clauses within a group containing alternate clauses.'"/>
						<xsl:with-param name="errorType" as="xs:string" select=" 'ROCKET' "/>
						<xsl:with-param name="errorCode" as="xs:string*" select=" '406' "/>
						<xsl:with-param name="status" as="xs:string*" select=" 'W' "/>
						<xsl:with-param name="context" as="xs:string">
							<xsl:call-template name="generateXPath"/>
						</xsl:with-param>
					</xsl:call-template>
				</xsl:if>
				<form:clausegrp>
					<!-- SNB 2018-01-09: webstar 7076824: need to process any break elements before the child alternate clauses before 
               				creating form:altclauses -->
					<xsl:apply-templates select="@*, break[following-sibling::clause]"/>
					<form:altclauses>
						<!-- SNB 2018-01-09: webstar 7076824: process *'s above, and dont process break elements; 
							they have to occur before the child alternate clauses or after the child alternate clauses -->
						<!--<xsl:apply-templates select="@* | node() except (note[preceding-sibling::*[1][self::clause]]| p[preceding-sibling::*[1][self::clause]])"/>-->
						<xsl:apply-templates select="node() except (note[preceding-sibling::*[1][self::clause]]| p[preceding-sibling::*[1][self::clause]] | break)"/>
					</form:altclauses>
					<!-- SNB 2018-01-09: webstar 7076824: need to process any break elements after the child alternate clauses after  
               			closing form:altclauses -->
					<xsl:apply-templates select="break[preceding-sibling::clause]"/>
				</form:clausegrp>
			</xsl:when>
			<xsl:otherwise>
				<form:clausegrp>
						<xsl:apply-templates select="@* | node() except (clause[@clause-type = 'alternate'] | note[preceding-sibling::*[1][self::clause]]| p[preceding-sibling::*[1][self::clause]])"/>			
				</form:clausegrp>
			</xsl:otherwise>
		</xsl:choose>

	</xsl:template>
	
	<!-- Added condition for sigblock, whenever p has its preceiding sibling sigblock, we need to create form:p. Webstar number is 7074983.-->

	<xsl:template
		match="p[(preceding-sibling::clause or preceding-sibling::note or preceding-sibling::p or parent::frm:block or preceding-sibling::sigblock or parent::frm:body or preceding-sibling::*[1][self::table]) and (not(parent::note[@notetype = 'summary']))][not(parent::bodytext)][not(parent::li)][not(parent::blockquote)][not(parent::clause[@clause-type='group'])]"
		priority="27">
		<form:p>
			<xsl:if test="child::text/@align">
				<xsl:attribute name="align">
					<xsl:value-of select="child::text/@align"/>
				</xsl:attribute>
			</xsl:if>
			<xsl:apply-templates select="@* | node()"/>
		</form:p>
		<xsl:if test="following-sibling::*[1][self::table][not(parent::frm:body)]">
			<!--<form:bodytext>-->
				<xsl:apply-templates select="following-sibling::*[1][self::table[preceding-sibling::*[1][self::p]] and following-sibling::*[1][self::p]]" mode="following_table"></xsl:apply-templates>
			<!--</form:bodytext>-->
		</xsl:if>
	</xsl:template>
	
	<xsl:template match="table[preceding-sibling::*[1][self::p] and following-sibling::*[1][self::p]]" mode="following_table">
		<table>
			<xsl:apply-templates select="@* | node()"/>
		</table>
	</xsl:template>



	<xsl:template match="p/text[not(parent::p[ancestor::pgrp])][not(parent::p[parent::li])]"
		priority="23">
		<form:text>
			<xsl:apply-templates select="@* | node()"/>
		</form:text>
	</xsl:template>

	<xsl:template
		match="note[@notetype = 'summary' or @notetype = 'practice-tip']/p/text | note[@notetype = 'summary' or @notetype = 'practice-tip']/bodytext/p/text | li/p/text | level/bodytext/p/text | blockquote/p/text"
		priority="24">
		<text>
			<xsl:apply-templates select="@* | node()"/>
		</text>
	</xsl:template>

	<xsl:template match="ci:cite" priority="25">
		<lnci:cite>
			<xsl:apply-templates select="@* | node()"/>
		</lnci:cite>
	</xsl:template>

	<xsl:template match="clause/@clause-type">
		<xsl:if test="(. = 'optional') or (. = 'alternate')">
			<xsl:attribute name="clausetype">
				<xsl:value-of select="."/>
			</xsl:attribute>
		</xsl:if>
	</xsl:template>

	<xsl:template match="clause/note[not(preceding-sibling::*[1][self::clause[@clause-type='alternate-group']])]">
		<form:annotation>
			<xsl:apply-templates select="node() except p[preceding-sibling::p]"/>
		</form:annotation>
	</xsl:template>
	
	<xsl:template match="note[(preceding-sibling::*[1][self::clause[@clause-type='alternate-group']])]"/>

	<xsl:template match="note[@notetype = 'summary']" mode="summary">

		<!--  Original Target XPath:  note   -->
		<note>
			<xsl:apply-templates select="@* | heading | refpt"/>
			<xsl:if test="node() except (heading, refpt)">
				<bodytext>
					<xsl:apply-templates select="node() except (heading, refpt)"/>
				</bodytext>
			</xsl:if>
		</note>

	</xsl:template>

	<xsl:template match="clause/break[@break-type]">
		<break breaktype="page"/>
	</xsl:template>

	<xsl:template match="COMMENTARYDOC/comm:info" mode="person_contributor">
		<xsl:apply-templates select="contrib" mode="person_contributor"/>
	</xsl:template>
	
	<xsl:template match="contrib" mode="person_contributor">
		<dc:contributor>
			<!--2018-04-09 SNB: Webstar 7162677: fix dc:contrib handling to output all content, including text, in the order it exists in the input doc -->
			<xsl:apply-templates select="person | text()" mode="person_contributor"/>
			<xsl:apply-templates select="node() except (person | text())"/>         
<!--			<xsl:value-of select="text()[1][not(parent::person)]"/>
			<xsl:apply-templates select="person" mode="person_contributor"/>
			<xsl:apply-templates select="node() except (person | text()[1])"/>-->
		</dc:contributor>
	</xsl:template>

	<xsl:template match="person" mode="person_contributor">
		<person:contributor>
			<xsl:attribute name="contributor-type">
				<xsl:text>contributor</xsl:text>
			</xsl:attribute>
			<xsl:apply-templates select="@* | node()"/>
		</person:contributor>
	</xsl:template>

	<xsl:template
		match="clause[not(@clause-type = 'group' or @clause-type = 'alternate-group' or @clause-type = 'alternate')]"
		priority="23">
		<!--  Original Target XPath:  form:annotatedclause   -->
		<xsl:choose>
			<xsl:when
				test="(child::note or parent::clause[@clause-type = 'group'][child::note]) and not(child::note[not(preceding-sibling::*[1][self::*])][not(following-sibling::*[1][self::*])])">
				<form:annotatedclause>
					<form:clause>
						<xsl:apply-templates select="@*, refpt, heading"/>
						<!--SNB: 2017-12-13: webstar 7058441: exclude sigblock with preceding-sibling::clause[@clause-type='group']. 
                     	getting stupid with all these following-sibling/preceding-sibling pairs, but have to process following 
                     	sigblocks as part of preceding clausegroup processing so cant process again here--> 
						<xsl:apply-templates select="node() except (p[preceding-sibling::p] |p[preceding-sibling::*[1][self::clause[@clause-type='group']]]| p[preceding-sibling::*[1][self::table]] | refpt | heading | sigblock[preceding-sibling::*[1][self::p] or preceding-sibling::clause[@clause-type='group'] or preceding-sibling::sigblock] |clause[@clause-type='group'][preceding-sibling::*[1][self::table]]| note | table | frm:block[preceding-sibling::*[1][self::p]] | (clause[@clause-type = 'group'][preceding-sibling::p])) | (note[@notetype = 'summary'])"/>
						<!-- vikas gupta changed for table handling -->
						<xsl:if test="child::table[not(preceding-sibling::p)]">
								<form:bodytext>
									<xsl:apply-templates select="table"/>
									<xsl:if test="child::p[preceding-sibling::table] | child::clause[@clause-type='group'][preceding-sibling::table]">
										<xsl:apply-templates select="p | clause[@clause-type='group']"/>
									</xsl:if>
								</form:bodytext>
						</xsl:if>
						<!--<xsl:if test="child::clause[@clause-type='group' and child::p[not(preceding-sibling::*)]]">
							<form:bodytext></form:bodytext>
						</xsl:if>-->
						<!--<xsl:apply-templates select="note[not(preceding-sibling::*[1][self::*])][not(following-sibling::*[1][self::*])]"/>-->
					</form:clause>
					<xsl:apply-templates select="child::note"/>
					<xsl:choose>
						<xsl:when test="following-sibling::*[1][self::note]">
							<xsl:apply-templates select="following-sibling::*[1][self::note]"/>
						</xsl:when>
						<xsl:when
							test="not(child::note) and not(following-sibling::*[1][self::note])">
							<form:annotation>
								<form:bodytext/>
							</form:annotation>
						</xsl:when>
					</xsl:choose>
				</form:annotatedclause>
			</xsl:when>
			<xsl:when
				test="child::note[not(preceding-sibling::*[1][self::*])][not(following-sibling::*[1][self::*])]">
				<form:annotatedclause>
					<xsl:apply-templates select="child::note"/>
				</form:annotatedclause>
			</xsl:when>
			<xsl:otherwise>
				<form:clause>
					<xsl:apply-templates select="@*, refpt, heading"/>
					<!-- SNB: 2018-02-20 : fix for webstar 7116676: need to add processing of frm:block when there 
                  		is no preceding p or clause (same logic as here for table) -->
					<!-- SNB: 2018-04-05 : webstar 7134522: add processing of sigblock when no preceding p -->
					<!--<xsl:if test="child::table[not(preceding-sibling::p)] or child::frm:block[not(preceding-sibling::p)]">-->
					<xsl:if test="child::table[not(preceding-sibling::p)] or child::frm:block[not(preceding-sibling::p)] or child::sigblock[not(preceding-sibling::p)]"><!--<xsl:if test="child::table[not(preceding-sibling::p)]">-->
					<!--<xsl:if test="child::table[not(preceding-sibling::p)]">-->
						<form:bodytext>
							<!-- SNB: 2018-04-05 : webstar 7134522: add processing of sigblock when no preceding p -->
							<!-- SNB: 2018-04-05 : webstar 7134522: add param for creating bodytext or not; start to transition to these param flags instead of all the different scenarios... -->
							<xsl:apply-templates select="(table | following-sibling::*[1][self::table] | frm:block[not(preceding-sibling::p)] | sigblock[not(preceding-sibling::p)] | following-sibling::*[1][self::frm:block]  | following-sibling::*[1][self::sigblock])">
								<xsl:with-param name="CreateBodytext">false</xsl:with-param>
							</xsl:apply-templates>
							<!--<xsl:apply-templates
								select="(table | following-sibling::*[1][self::table])"/>-->
							<xsl:if test="following-sibling::*[1][self::clause] or following-sibling::*[1][self::p]">
								<xsl:apply-templates
									select="clause[@clause-type = 'group'][preceding-sibling::*[1][self::table]] | p[preceding-sibling::*[1][self::table]]"
								/>
							</xsl:if>
						</form:bodytext>
					</xsl:if>
					<!--<xsl:choose>
						<xsl:when test="following-sibling::*[1][self::table]">
							<form:bodytext>
								<xsl:apply-templates select="(table | following-sibling::*[1][self::table])"/>
								<xsl:apply-templates
									select="node() except (refpt | heading | note | p[preceding-sibling::p] | frm:block | clause[@clause-type = 'group'][preceding-sibling::p or preceding-sibling::*[1][self::table]] | sigblock[preceding-sibling::p] | table)"
								/>
							</form:bodytext>
						</xsl:when>
						<xsl:otherwise>-->
					<!--SNB: 2017-12-13: webstar 7058441: exclude sigblock with preceding-sibling::clause[@clause-type='group']. 
                     getting stupid with all these following-sibling/preceding-sibling pairs, but have to process following 
                     sigblocks as part of preceding clausegroup processing so cant process again here--> 
					<!-- SNB: 2018-04-05 : webstar 7134522: add processing of sigblock when no preceding p -->
					<xsl:apply-templates select="node() except (refpt | heading | note | p[preceding-sibling::p or preceding-sibling::sigblock or preceding-sibling::frm:block] 
						| frm:block | sigblock | clause[@clause-type = 'group'][preceding-sibling::p or preceding-sibling::*[1][self::table]] 
						| sigblock[preceding-sibling::p or preceding-sibling::sigblock or preceding-sibling::frm:block or preceding-sibling::clause[@clause-type='group']] | table 
						| p[preceding-sibling::*[1][self::table]] | clause[preceding-sibling::p])"/>
					<!--						</xsl:otherwise>
					</xsl:choose>-->
					<!-- SNB: 2017-12-13: webstar 7101317: add support to allow a clause with only a heading by 
               				outputting an empty form:bodytext -->
					<xsl:if test="not(* except (heading | refpt))">
						<form:bodytext></form:bodytext>
					</xsl:if>
				</form:clause>
				<xsl:apply-templates select="child::note"/>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>

	<xsl:template match="clause[@clause-type = 'alternate'][not(preceding-sibling::*[1][self::clause[@clause-type='alternate']])]" priority="2">
		<xsl:choose>
			<xsl:when test="child::note">
				<form:annotatedclause>
					<form:clause>
                      <xsl:apply-templates select="@*, refpt, heading"/>
						<xsl:apply-templates
							select="node() except (refpt | heading | note | p[preceding-sibling::p] | frm:block | clause[@clause-type = 'group'][preceding-sibling::p] | sigblock[preceding-sibling::p] | table)"
						/>
						<!-- SNB: 2017-12-13: webstar 7058441, add processing of tables without preceding p's -->
						<xsl:if test="child::table[not(preceding-sibling::p)]">
							<form:bodytext>
								<xsl:apply-templates select="table"/>
								<xsl:if test="child::p[preceding-sibling::table]">
									<xsl:apply-templates select="p[preceding-sibling::table]"/>
								</xsl:if>
							</form:bodytext>
						</xsl:if>
					</form:clause>
					<xsl:apply-templates select="note"/>
				</form:annotatedclause>
				<xsl:apply-templates select="following-sibling::clause[@clause-type='alternate'][preceding-sibling::*[1][self::clause[@clause-type='alternate']]]" mode="alternate_wrapper"/>
			</xsl:when>
			<xsl:otherwise>
				<form:clause>
                    <xsl:apply-templates select="@*, refpt, heading"/>
					<xsl:apply-templates
						select="node() except (refpt | heading | note | p[preceding-sibling::p] | frm:block | clause[@clause-type = 'group'][preceding-sibling::p] | sigblock[preceding-sibling::p] | table)"
					/>
				</form:clause>
				<xsl:apply-templates select="following-sibling::clause[@clause-type='alternate'][preceding-sibling::*[1][self::clause[@clause-type='alternate']]]" mode="alternate_wrapper"/>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
	
	<xsl:template match="clause[@clause-type='alternate']" mode="alternate_wrapper">
		<xsl:choose>
		<xsl:when test="child::note">
			<form:annotatedclause>
				<form:clause>
                   <xsl:apply-templates select="@*, refpt, heading"/>
					<xsl:apply-templates
						select="node() except (refpt | heading | note | p[preceding-sibling::p] | frm:block | clause[@clause-type = 'group'][preceding-sibling::p] | sigblock[preceding-sibling::p] | table)"
					/>
				</form:clause>
				<xsl:apply-templates select="note"/>
			</form:annotatedclause>
		</xsl:when>
			<xsl:otherwise>
				<form:clause>
                  <xsl:apply-templates select="@*, refpt, heading"/>
					<xsl:apply-templates
						select="node() except (refpt | heading | note | p[preceding-sibling::p] | frm:block | clause[@clause-type = 'group'][preceding-sibling::p] | sigblock[preceding-sibling::p] | table)"
					/>
				</form:clause>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
	
	<xsl:template match="clause[@clause-type='alternate'][preceding-sibling::*[1][self::clause[@clause-type='alternate']]]" priority="1"/>

	<xsl:template match="clause/@include-in-toc">
		<xsl:attribute name="includeintoc">
			<xsl:value-of select="."/>
		</xsl:attribute>
	</xsl:template>

	<xsl:template match="text/@align" priority="2"/>
	<xsl:template match="designum/@id" priority="30"/>
	<xsl:template match="@componentseq[parent::inlineobject]" priority="2"/>
	<xsl:template match="link/@alt-label" priority="2"/>
	<xsl:template match="p[parent::clause[@clause-type='group']]" priority="100"/>
	<xsl:template match="table[parent::clause[@clause-type='group']]" priority="100">
		<!--SNB 2017-10-26 change so that table as direct child of clause group is not dropped, but rather placed within 
			a form:clause/form:bodytext wrapper-->
		<!-- Changes the coding for annotated clause. When table and note comes as direct child of clause group they need to be captured inside form:annotatedclause.
		So added a condition and webstar number is 7075069.-->
		<xsl:choose>
			<xsl:when test="following-sibling::*[1][self::note]">
				<form:annotatedclause>
				<form:clause>
					<form:bodytext>
						<table>
							<xsl:apply-templates select="@* | node()"/>
						</table>
					</form:bodytext>
				</form:clause>
					<xsl:apply-templates select="following-sibling::*[1][self::note]"/>
				</form:annotatedclause>
			</xsl:when>
			<xsl:otherwise>
				<form:clause>
					<form:bodytext>
						<table>
							<xsl:apply-templates select="@* | node()"/>
						</table>
					</form:bodytext>
				</form:clause>
			</xsl:otherwise>
		</xsl:choose>
		
	</xsl:template>
</xsl:stylesheet>
