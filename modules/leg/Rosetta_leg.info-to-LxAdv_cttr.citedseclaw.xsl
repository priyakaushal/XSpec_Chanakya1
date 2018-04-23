<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:ci="http://www.lexis-nexis.com/ci"
    xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"
    xmlns:cttr="urn:x-lexisnexis:content:citator:sharedservices:1"
xmlns:source_cttr="http://www.lexis-nexis.com/glp/cttr" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" xmlns:lnci="http://www.lexisnexis.com/xmlschemas/content/shared/citations/1/" xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" xmlns:primlawhist="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-history/1/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita ci cttr leg source_cttr case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg-info">
    <title>leg:info to cttr:head/cttr:citedstatlaw <lnpid>id-CA03-13234</lnpid></title>
    <body>
        <section><title>Instructions</title>
            <p>When <sourcexml>leg:info</sourcexml> is a child of <sourcexml>cttr:body</sourcexml>
                (i.e., it is information about the subject of the citator document), create
                    <targetxml>cttr:citator/cttr:head/cttr:citedstatlaw/cttr:legisinfo/cttr:citations/lnci:cite</targetxml>
                and
                    <targetxml>cttr:citator/cttr:head/cttr:citedstatlaw/cttr:legisinfo/ref:citations/ref:cite4thisresource[@citetype="reporter"]/lnci:cite</targetxml>
                from <sourcexml>leg:info/leg:officialnum/ci:cite</sourcexml>, and then convert
                    <sourcexml>leg:officialname</sourcexml> and <sourcexml>leg:juris</sourcexml>
                within the <targetxml>lnci:cite</targetxml> as instructed below. </p>
            <note><sourcexml>ci:cite</sourcexml> is now mapped to two places:
                    <targetxml>cttr:legisinfo/cttr:citations/lnci:cite</targetxml> and
                    <targetxml>cttr:legisinfo/ref:citations/ref:cite4thisresource[@citetype="reporter"]/lnci:cite</targetxml>,
                see examples.</note>
            <note> Duplicate citations cannot have the same IDs or the document becomes invalid. To
                avoid this validation error, append the IDs for the citations in
                ref:citations/ref:cite4thisresource/lnci:cite with extra text (such as '_1') to make
                them unique.</note>
            <p>There may up to four <sourcexml>ci:cite</sourcexml> elements within
                    <sourcexml>leg:officialnum</sourcexml>, separated by "&amp;nbsp;/&amp;nbsp;".
                Each citation is converted to <targetxml>lnci:cite</targetxml>, and the separating
                text is discarded.</p>
            <p><sourcexml>leg:officialname</sourcexml> goes into the
                    <targetxml>lnci:cite</targetxml> elements as
                    <targetxml>lnci:stat/lnci:statinfo/lnci:popname/@value</targetxml>. <note>In
                    certain situations, <sourcexml>leg:officialname</sourcexml> and
                        <sourcexml>leg:num</sourcexml> are used also to populate
                        <targetxml>dc:title</targetxml>, see <xref href="Rosetta_leg.officialname_leg.num-to-dc.title.dita">this section</xref>
                    for more information.</note>
                <ul id="ul_jrr_ztr_g4">
                    <li>If there are two <sourcexml>ci:cite</sourcexml> elements,
                            <sourcexml>leg:officialname</sourcexml> should contain two values (for
                        English and French) indicated by a separating "/". Take the text before the
                        slash as the <targetxml>lnci:popname/@value</targetxml> for the first cite,
                        and the text after the slash for the second. Normalize whitespace. The
                        separating "/" will be dropped from output. <note>If
                                <sourcexml>leg:officialname</sourcexml> only contains one value,
                            convert the text to <targetxml>lnci:popname/@value</targetxml> in the
                            first cite, and do not create <targetxml>lnci:popname</targetxml> for
                            the second citation. </note></li>
                    <li>If there are four <sourcexml>ci:cite</sourcexml> elements,
                            <sourcexml>leg:officialname</sourcexml> should contain two values (for
                        English and French) indicated by a separating "/". Take the text before the
                        slash as the <targetxml>lnci:popname/@value</targetxml> for the first and
                        second citations, and the text after the slash for the third and fourth
                        citations. Normalize whitespace. The separating "/" will be dropped from
                        output. <note>If <sourcexml>leg:officialname</sourcexml> only contains one
                            value, convert the text to <targetxml>lnci:popname/@value</targetxml> in
                            the first and second citations, and do not create
                                <targetxml>lnci:popname</targetxml> for the third or fourth
                            citation. </note></li>
                </ul></p><note>If the <sourcexml>ci:cite</sourcexml> does not contain
                    <sourcexml>ci:stat</sourcexml> markup in the source, create
                    <targetxml>lnci:stat/lnci:statinfo</targetxml> in the target to accomodate
                    <targetxml>lnci:popname</targetxml>.</note>
      
            <p><sourcexml>leg:juris</sourcexml> becomes
                    <targetxml>lnci:statinfo/lnci:jurisinfo/lnci:can/@district</targetxml>. The same
                information is copied to both converted <targetxml>lnci:cite</targetxml> elements. <note>If <sourcexml>leg:juris</sourcexml> country code is <i>CD</i>, replace
                    with <i>CA</i> in the output for all target
                    mappings.</note></p>
            <note>If more than one instance of <sourcexml>leg:juris</sourcexml> occurs in the
                source, and one of the instances contains the value 'NU', drop the value containing
                "NU' and convert the other instance.</note>
			<!--<p>When <sourcexml>docinfo:selector</sourcexml> has a value of 'STATUTE' or
                'REGULATION', <sourcexml>leg:juris</sourcexml> also becomes
                    <targetxml>dc:coverage</targetxml>. See instructions for leg:juris in the
                General Markup section for details. </p>-->
            <p><sourcexml>leg:num</sourcexml> is moved to <targetxml>lnci:hiertext</targetxml>
                within the citation created from <sourcexml>ci:cite</sourcexml>. <ul>
                    <li>If the string contains two values (for English and French), indicated by a
                        separating "/", <i>but</i> there is only one citation in
                            <sourcexml>leg:officialnum</sourcexml>, take the text before the slash
                        as the <targetxml>lnci:hiertext/@value</targetxml> for the first cite, and
                        delete the text after the slash.</li>
                    <li>If the string contains two values (for English and French), indicated by a
                        separating "/", <i>and</i> there are two citations in
                            <sourcexml>leg:officialnum</sourcexml>, take the text before the slash
                        as the <targetxml>lnci:hiertext/@value</targetxml> for the first cite, and
                        the text after the slash for the second.</li>
                    <li>If the string contains two values (for English and French), indicated by a
                        separating "/", <i>and</i> there are four citations in
                            <sourcexml>leg:officialnum</sourcexml>, take the text before the slash
                        as the <targetxml>lnci:hiertext/@value</targetxml> for the first cite, and
                        the text after the slash for the third citation.</li>

                    <li>If the string contains characters enclosed with "&amp;quot;", omit the
                        enclosed characters <i>and</i> the first and last "&amp;quot;" from output.
                        Normalize whitespace. The separating "/" will be dropped from output.</li>
                </ul>
            </p><p><sourcexml>leg:history</sourcexml> is mapped to
                    <targetxml>primlawhist:primlawhist</targetxml> and its children: <ul id="ul_bfr_qav_ph">
                    <li><sourcexml>leg:histinfo</sourcexml> becomes the container element
                            <targetxml>primlawhist:histgrp</targetxml>.
                                <p><sourcexml>leg:officialname</sourcexml> and
                                <sourcexml>leg:officialnum/ci:cite</sourcexml> are combined into
                                <targetxml>primlawhist:histitem</targetxml> as follows:</p><ul id="ul_vez_qmo_ui">
                            <li><sourcexml>leg:officialname</sourcexml> becomes
                                    <targetxml>primlawhist:histitem/textitem</targetxml>, followed
                                by a space.</li>
                            <li><sourcexml>leg:officialnum/ci:cite</sourcexml> becomes
                                    <targetxml>primlawhist:histitem/textitem/lnci:cite</targetxml><note>To
                                    ensure the proper display of text, the text preceding the
                                    citation in <targetxml>primlawhist:histitem/textitem</targetxml>
                                    must include a space immediately before
                                        <targetxml>lnci:cite</targetxml>. Also include a space
                                    between each citation when the markup includes two or more
                                        <targetxml>lnci:cite</targetxml> elements.</note></li>
                            <li>If the <sourcexml>leg:officialname/@display-name</sourcexml> string
                                contains two values (for English and French) indicated by a
                                separating "/", followed by a colon, create two instances of
                                    <targetxml>primlawhist:histgrp</targetxml> in the target, each
                                with a separate <targetxml>primlawhist:histitem</targetxml>
                                    element.<p>The value of each
                                        <targetxml>primlawhist:histgrp/primlawhist:histitem/textitem</targetxml>
                                    will come from the value of
                                        <sourcexml>leg:officialname</sourcexml> preceeded by its
                                    respective <sourcexml>@display-name</sourcexml> value.
                                    </p><note>If the value of
                                        <sourcexml>leg:officialname</sourcexml> also contains two
                                    values (for English and French) separated by a "/", separate the
                                    text of <sourcexml>leg:officialname</sourcexml> into each
                                    instance of
                                        <targetxml>primlawhist:histgrp/primlawhist:histitem/textitem</targetxml>
                                        according to their respective languages. When 
                                        <sourcexml>leg:officialname</sourcexml> is split, each portion should 
                                        have a space at the end in the target.</note><p>Capitalize
                                    the first letter of each <sourcexml>@display-name</sourcexml>
                                    output if needed. Each
                                        <targetxml>primlawhist:histgrp</targetxml> will have the
                                        <targetxml>@xml:lang</targetxml> populated with the
                                    appropriate language code (en-CA for the first, and fr-CA for
                                    the second).
                                        <targetxml>primlawhist:histitem/textitem</targetxml>  will
                                    contain the <targetxml>lnci:cite</targetxml> mapped from
                                        <sourcexml>leg:officialnum/ci:cite</sourcexml> .</p></li>
                            <li>The element <sourcexml>leg:relatedleg</sourcexml>, as child of
                                    <sourcexml>leg:histinfo</sourcexml>, is converted to
                                    <targetxml>primlawhist:histgrp/primlaw:histitem/textitem</targetxml>.
                                If the <sourcexml>leg:relatedleg/@display-name</sourcexml> string
                                contains two values (for English and French), indicated by a
                                separating "/", followed by a colon, create two
                                    <targetxml>primlawhist:histgrp</targetxml> elements in the
                                target. The value of each
                                    <targetxml>primlawhist:histgrp/primlawhist:histitem/textitem</targetxml>
                                will come from the value of <sourcexml>leg:relatedleg</sourcexml>
                                preceeded by its respective <sourcexml>@display-name</sourcexml>
                                value. Capitalize the first letter of each
                                    <sourcexml>@display-name</sourcexml> output if needed. Each
                                    <targetxml>primlawhist:histgrp</targetxml> will have the
                                    <targetxml>@xml:lang</targetxml> populated with the appropriate
                                language code (en-CA for the first, and fr-CA for the second). The
                                separating "/" will be dropped from output.</li>
                        </ul></li>
                </ul></p></section>
        <example>
            <title>Source XML (1)</title>
            <codeblock>
&lt;leg:info&gt;
	&lt;leg:officialname&gt;PATENT ACT / BREVETS, LOI SUR LES&lt;/leg:officialname&gt;
	&lt;leg:num&gt;s. 62 / art. 62&lt;/leg:num&gt;
	&lt;leg:juris ln.user-displayed="false"&gt;CD&lt;/leg:juris&gt;
	&lt;leg:officialnum&gt;
		&lt;ci:cite&gt;
			&lt;ci:stat&gt;
				&lt;ci:statinfo spanref="stcspan1"&gt;
					&lt;ci:hier&gt;
						&lt;ci:hierlev label="year" num="1985"&gt;
							&lt;ci:hierlev label="chapter" num="P-4"&gt;
								&lt;ci:hierlev label="section" num="62"/&gt;
							&lt;/ci:hierlev&gt;
						&lt;/ci:hierlev&gt;
					&lt;/ci:hier&gt;
				&lt;/ci:statinfo&gt;
				&lt;ci:statref spanref="stcspan1"&gt;
					&lt;ci:publicationname normpubcode="RSC" value="RSC"/&gt;
				&lt;/ci:statref&gt;
			&lt;/ci:stat&gt;
			&lt;ci:content&gt;
				&lt;ci:span spanid="stcspan1"&gt;R.S.C. 1985, c. P-4, s. 62&lt;/ci:span&gt;
			&lt;/ci:content&gt;
		&lt;/ci:cite&gt;&amp;#160;/&amp;#160; 
		&lt;ci:cite&gt;
			&lt;ci:stat&gt;
				&lt;ci:statinfo spanref="stcspan2"&gt;
					&lt;ci:hier&gt;
						&lt;ci:hierlev label="year" num="1985"&gt;
							&lt;ci:hierlev label="chapter" num="P-4"&gt;
								&lt;ci:hierlev label="section" num="62"/&gt;
							&lt;/ci:hierlev&gt;
						&lt;/ci:hierlev&gt;
					&lt;/ci:hier&gt;
				&lt;/ci:statinfo&gt;
				&lt;ci:statref spanref="stcspan2"&gt;
					&lt;ci:publicationname normpubcode="RSC" value="RSC"/&gt;
				&lt;/ci:statref&gt;
			&lt;/ci:stat&gt;
			&lt;ci:content&gt;
				&lt;ci:span spanid="stcspan2"&gt;L.R.C. 1985, ch. P-4, art. 62&lt;/ci:span&gt;
			&lt;/ci:content&gt;
		&lt;/ci:cite&gt;
	&lt;/leg:officialnum&gt;
&lt;/leg:info&gt;
      </codeblock>
            <title>Target XML (1)</title>
            <codeblock>
&lt;cttr:head&gt;
    &lt;cttr:citedstatlaw&gt;
        &lt;cttr:legisinfo&gt;
            &lt;cttr:citations&gt;
                &lt;lnci:cite&gt;
                    &lt;lnci:stat&gt;
                        &lt;lnci:statinfo&gt;
                            &lt;lnci:popname value="PATENT ACT"/&gt;
                            &lt;lnci:jurisinfo&gt;
                                &lt;lnci:can district="CA"/&gt;
                            &lt;/lnci:jurisinfo&gt;
                            &lt;lnci:hier&gt;
                                &lt;lnci:hierlev label="year" num="1985"&gt;
                                    &lt;lnci:hierlev label="chapter" num="P-4"&gt;
                                        &lt;lnci:hierlev label="section" num="62"&gt;
                                            &lt;lnci:hiertext value="s. 62"/&gt;
                                        &lt;/lnci:hierlev&gt;
                                    &lt;/lnci:hierlev&gt;
                                &lt;/lnci:hierlev&gt;
                            &lt;/lnci:hier&gt;
                        &lt;/lnci:statinfo&gt;
                        &lt;lnci:statref&gt;
                            &lt;lnci:publicationname normpubcode="RSC" value="RSC"/&gt;
                        &lt;/lnci:statref&gt;
                    &lt;/lnci:stat&gt;
                    &lt;lnci:content&gt;R.S.C. 1985, c. P-4, s. 62&lt;/lnci:content&gt;
                &lt;/lnci:cite&gt;
                &lt;lnci:cite&gt;
                    &lt;lnci:stat&gt;
                        &lt;lnci:statinfo&gt;
                            &lt;lnci:popname value="BREVETS, LOI SUR LES"/&gt;
                            &lt;lnci:jurisinfo&gt;
                                &lt;lnci:can district="CA"/&gt;
                            &lt;/lnci:jurisinfo&gt;
                            &lt;lnci:hier&gt;
                                &lt;lnci:hierlev label="year" num="1985"&gt;
                                    &lt;lnci:hierlev label="chapter" num="P-4"&gt;
                                        &lt;lnci:hierlev label="section" num="62"&gt;
                                            &lt;lnci:hiertext value="art. 62"/&gt;
                                        &lt;/lnci:hierlev&gt;
                                    &lt;/lnci:hierlev&gt;
                                &lt;/lnci:hierlev&gt;
                            &lt;/lnci:hier&gt;
                        &lt;/lnci:statinfo&gt;
                        &lt;lnci:statref&gt;
                            &lt;lnci:publicationname normpubcode="RSC" value="RSC"/&gt;
                        &lt;/lnci:statref&gt;
                    &lt;/lnci:stat&gt;
                    &lt;lnci:content&gt;L.R.C. 1985, ch. P-4, art. 62&lt;/lnci:content&gt;
                &lt;/lnci:cite&gt;
            &lt;/cttr:citations&gt;
            &lt;ref:citations&gt;
                &lt;ref:cite4thisresource citetype="reporter"&gt;
                    &lt;lnci:cite&gt;
                        &lt;lnci:stat&gt;
                            &lt;lnci:statinfo&gt;
                                &lt;lnci:popname value="PATENT ACT"/&gt;
                                &lt;lnci:jurisinfo&gt;
                                    &lt;lnci:can district="CA"/&gt;
                                &lt;/lnci:jurisinfo&gt;
                                &lt;lnci:hier&gt;
                                    &lt;lnci:hierlev label="year" num="1985"&gt;
                                        &lt;lnci:hierlev label="chapter" num="P-4"&gt;
                                            &lt;lnci:hierlev label="section" num="62"&gt;
                                                &lt;lnci:hiertext value="s. 62"/&gt;
                                            &lt;/lnci:hierlev&gt;
                                        &lt;/lnci:hierlev&gt;
                                    &lt;/lnci:hierlev&gt;
                                &lt;/lnci:hier&gt;
                            &lt;/lnci:statinfo&gt;
                            &lt;lnci:statref&gt;
                                &lt;lnci:publicationname normpubcode="RSC" value="RSC"/&gt;
                            &lt;/lnci:statref&gt;
                        &lt;/lnci:stat&gt;
                        &lt;lnci:content&gt;R.S.C. 1985, c. P-4, s. 62&lt;/lnci:content&gt;
                    &lt;/lnci:cite&gt;
                    &lt;lnci:cite&gt;
                        &lt;lnci:stat&gt;
                            &lt;lnci:statinfo&gt;
                                &lt;lnci:popname value="BREVETS, LOI SUR LES"/&gt;
                                &lt;lnci:jurisinfo&gt;
                                    &lt;lnci:can district="CA"/&gt;
                                &lt;/lnci:jurisinfo&gt;
                                &lt;lnci:hier&gt;
                                    &lt;lnci:hierlev label="year" num="1985"&gt;
                                        &lt;lnci:hierlev label="chapter" num="P-4"&gt;
                                            &lt;lnci:hierlev label="section" num="62"&gt;
                                                &lt;lnci:hiertext value="art. 62"/&gt;
                                            &lt;/lnci:hierlev&gt;
                                        &lt;/lnci:hierlev&gt;
                                    &lt;/lnci:hierlev&gt;
                                &lt;/lnci:hier&gt;
                            &lt;/lnci:statinfo&gt;
                            &lt;lnci:statref&gt;
                                &lt;lnci:publicationname normpubcode="RSC" value="RSC"/&gt;
                            &lt;/lnci:statref&gt;
                        &lt;/lnci:stat&gt;
                        &lt;lnci:content&gt;L.R.C. 1985, ch. P-4, art. 62&lt;/lnci:content&gt;
                    &lt;/lnci:cite&gt;
                &lt;/ref:cite4thisresource&gt;
                &lt;/ref:citations&gt;
        &lt;/cttr:legisinfo&gt;
    &lt;/cttr:citedstatlaw&gt;
&lt;/cttr:head&gt;

      </codeblock>
        </example>
        <example>
            <title>Source XML (2)</title>
            <codeblock>
&lt;leg:info&gt;
	&lt;leg:officialname&gt;ADMINISTRATION OF ESTATES ACT&lt;/leg:officialname&gt;
	&lt;leg:num&gt;s. 11 / art. 11&lt;/leg:num&gt;
	&lt;leg:juris ln.user-displayed="false"&gt;AB&lt;/leg:juris&gt;
	&lt;leg:officialnum&gt;
		&lt;ci:cite&gt;
			&lt;ci:stat&gt;
				&lt;ci:statinfo spanref="stcspan1"&gt;
					&lt;ci:hier&gt;
						&lt;ci:hierlev label="year" num="2000"&gt;
							&lt;ci:hierlev label="chapter" num="A-2"&gt;
								&lt;ci:hierlev label="section" num="11"/&gt;
							&lt;/ci:hierlev&gt;
						&lt;/ci:hierlev&gt;
					&lt;/ci:hier&gt;
				&lt;/ci:statinfo&gt;
				&lt;ci:statref spanref="stcspan1"&gt;
					&lt;ci:publicationname normpubcode="RSA" value="RSA"/&gt;
				&lt;/ci:statref&gt;
			&lt;/ci:stat&gt;
			&lt;ci:content&gt;
				&lt;ci:span spanid="stcspan1"&gt;RSA 2000, c. A-2, s. 11&lt;/ci:span&gt;
			&lt;/ci:content&gt;
		&lt;/ci:cite&gt;
	&lt;/leg:officialnum&gt;
	&lt;leg:history&gt;
		&lt;leg:histinfo&gt;
			&lt;leg:officialname display-name="Formerly known as / Anciennement connu sous: "&gt;ADMINISTRATION OF ESTATES ACT&lt;/leg:officialname&gt;
			&lt;leg:officialnum&gt;
				&lt;ci:cite&gt;
					&lt;ci:content&gt;RSA 1980, c. A-1, s. 11&lt;/ci:content&gt;
				&lt;/ci:cite&gt;
			&lt;/leg:officialnum&gt;
		&lt;/leg:histinfo&gt;
	&lt;/leg:history&gt;
&lt;/leg:info&gt;
			</codeblock><title>Target XML (2)</title>
            <codeblock>
&lt;cttr:head&gt;
    &lt;cttr:citedstatlaw&gt;
        &lt;cttr:legisinfo&gt;
            &lt;cttr:citations&gt;
        &lt;lnci:cite&gt;
            &lt;lnci:stat&gt;
                &lt;lnci:statinfo&gt;
                    &lt;lnci:popname value="ADMINISTRATION OF ESTATES ACT"/&gt;
                    &lt;lnci:jurisinfo&gt;
                        &lt;lnci:can district="AB"/&gt;
                    &lt;/lnci:jurisinfo&gt;
                    &lt;lnci:hier&gt;
                        &lt;lnci:hierlev label="year" num="2000"&gt;
                            &lt;lnci:hierlev label="chapter" num="A-2"&gt;
                                &lt;lnci:hierlev label="section" num="11"/&gt;
                                &lt;lnci:hiertext value="s. 11"/&gt;
                            &lt;/lnci:hierlev&gt;
                        &lt;/lnci:hierlev&gt;
                    &lt;/lnci:hier&gt;
                &lt;/lnci:statinfo&gt;
                &lt;lnci:statref&gt;
                    &lt;lnci:publicationname normpubcode="RSC" value="RSC"/&gt;
                &lt;/lnci:statref&gt;
            &lt;/lnci:stat&gt;
            &lt;lnci:content&gt;R.S.C. 2000, c. A-2, s. 11&lt;/lnci:content&gt;
        &lt;/lnci:cite&gt;
            &lt;/cttr:citations&gt;
            &lt;ref:citations&gt;
                &lt;ref:cite4thisresource citetype="reporter"&gt;
                    &lt;lnci:cite&gt;
                        &lt;lnci:stat&gt;
                            &lt;lnci:statinfo&gt;
                                &lt;lnci:popname value="ADMINISTRATION OF ESTATES ACT"/&gt;
                                &lt;lnci:jurisinfo&gt;
                                    &lt;lnci:can district="AB"/&gt;
                                &lt;/lnci:jurisinfo&gt;
                                &lt;lnci:hier&gt;
                                    &lt;lnci:hierlev label="year" num="2000"&gt;
                                        &lt;lnci:hierlev label="chapter" num="A-2"&gt;
                                            &lt;lnci:hierlev label="section" num="11"/&gt;
                                            &lt;lnci:hiertext value="s. 11"/&gt;
                                        &lt;/lnci:hierlev&gt;
                                    &lt;/lnci:hierlev&gt;
                                &lt;/lnci:hier&gt;
                            &lt;/lnci:statinfo&gt;
                            &lt;lnci:statref&gt;
                                &lt;lnci:publicationname normpubcode="RSC" value="RSC"/&gt;
                            &lt;/lnci:statref&gt;
                        &lt;/lnci:stat&gt;
                        &lt;lnci:content&gt;R.S.C. 2000, c. A-2, s. 11&lt;/lnci:content&gt;
                    &lt;/lnci:cite&gt;
                &lt;/ref:cite4thisresource&gt;
            &lt;/ref:citations&gt;
        &lt;/cttr:legisinfo&gt;
                &lt;primlawhist:primlawhist&gt;
            &lt;primlawhist:histgrp xml:lang="en-CA"&gt;
                &lt;primlawhist:histitem&gt;
                    &lt;textitem&gt;Formerly known as: ADMINISTRATION OF ESTATES ACT &lt;lnci:cite&gt;
                            &lt;lnci:content&gt;RSA 1980, c. A-1, s. 11&lt;/lnci:content&gt;
                        &lt;/lnci:cite&gt;
                    &lt;/textitem&gt;
                &lt;/primlawhist:histitem&gt;
            &lt;/primlawhist:histgrp&gt;
            &lt;primlawhist:histgrp xml:lang="fr-CA"&gt;
                &lt;primlawhist:histitem&gt;
                    &lt;textitem &gt;Anciennement connu sous: ADMINISTRATION OF ESTATES ACT &lt;lnci:cite&gt;
                            &lt;lnci:content&gt;RSA 1980, c. A-1, s. 11&lt;/lnci:content&gt;
                        &lt;/lnci:cite&gt;
                    &lt;/textitem&gt;
                &lt;/primlawhist:histitem&gt;
            &lt;/primlawhist:histgrp&gt;
        &lt;/primlawhist:primlawhist&gt;
    &lt;/cttr:citedstatlaw&gt;
&lt;/cttr:head&gt;
			</codeblock>
        </example>
        <example>
            <title>Source XML (3)</title>
            <codeblock>
&lt;leg:info&gt;
    &lt;leg:officialname&gt;DIVORCE ACT / DIVORCE, LOI SUR LE&lt;/leg:officialname&gt;
    &lt;leg:num&gt;s. 2 / art. 2&lt;/leg:num&gt;
    &lt;leg:juris ln.user-displayed="false"&gt;CD&lt;/leg:juris&gt;
    &lt;leg:officialnum&gt;
        &lt;ci:cite&gt;
            &lt;ci:stat&gt;
                &lt;ci:statinfo spanref="stcspan1"&gt;
                    &lt;ci:hier&gt;
                        &lt;ci:hierlev label="year" num="1985"&gt;
                            &lt;ci:hierlev label="chapter" num="3"&gt;
                                &lt;ci:hierlev label="supplement" num="2"&gt;
                                    &lt;ci:hierlev label="section" num="2"/&gt;
                                &lt;/ci:hierlev&gt;
                            &lt;/ci:hierlev&gt;
                        &lt;/ci:hierlev&gt;
                    &lt;/ci:hier&gt;
                &lt;/ci:statinfo&gt;
                &lt;ci:statref spanref="stcspan1"&gt;
                    &lt;ci:publicationname normpubcode="RSC" value="RSC"/&gt;
                &lt;/ci:statref&gt;
            &lt;/ci:stat&gt;
            &lt;ci:content&gt;
                &lt;ci:span spanid="stcspan1"&gt;R.S.C. 1985, c. 3 (2nd Supp.), s. 2&lt;/ci:span&gt;
            &lt;/ci:content&gt;
        &lt;/ci:cite&gt;&amp;#x00A0;;&amp;#x00A0; 
        &lt;ci:cite&gt;
            &lt;ci:content&gt;R.S.C. 1985, c. D-3.4, s. 2&lt;/ci:content&gt;
        &lt;/ci:cite&gt;&amp;#x00A0;/&amp;#x00A0; 
        &lt;ci:cite&gt;
            &lt;ci:stat&gt;
                &lt;ci:statinfo spanref="stcspan2"&gt;
                    &lt;ci:hier&gt;
                        &lt;ci:hierlev label="year" num="1985"&gt;
                            &lt;ci:hierlev label="chapter" num="3"&gt;
                                &lt;ci:hierlev label="supplement" num="2"&gt;
                                    &lt;ci:hierlev label="section" num="2"/&gt;
                                &lt;/ci:hierlev&gt;
                            &lt;/ci:hierlev&gt;
                        &lt;/ci:hierlev&gt;
                    &lt;/ci:hier&gt;
                &lt;/ci:statinfo&gt;
                &lt;ci:statref spanref="stcspan2"&gt;
                    &lt;ci:publicationname normpubcode="RSC" value="RSC"/&gt;
                &lt;/ci:statref&gt;
            &lt;/ci:stat&gt;
            &lt;ci:content&gt;
                &lt;ci:span spanid="stcspan2"&gt;L.R.C. 1985, ch. 3 (2e suppl.), art. 2&lt;/ci:span&gt;
            &lt;/ci:content&gt;
        &lt;/ci:cite&gt;&amp;#x00A0;;&amp;#x00A0; 
        &lt;ci:cite&gt;
            &lt;ci:content&gt;L.R.C. 1985, ch. D-3.4, art. 2&lt;/ci:content&gt;
        &lt;/ci:cite&gt;
    &lt;/leg:officialnum&gt;
    &lt;leg:history&gt;
        &lt;leg:histinfo&gt;
            &lt;leg:officialname display-name="Formerly known as / Anciennement connu sous: "&gt;DIVORCE ACT / DIVORCE, LOI SUR LE&lt;/leg:officialname&gt;
            &lt;leg:officialnum&gt;
                &lt;ci:cite&gt;
                    &lt;ci:content&gt;S.C. 1986, c. 4, s. 2&lt;/ci:content&gt;
                &lt;/ci:cite&gt;
            &lt;/leg:officialnum&gt;
        &lt;/leg:histinfo&gt;
    &lt;/leg:history&gt;
&lt;/leg:info&gt;
 
			</codeblock>
            <title>Target XML (3)</title>
            <codeblock>
&lt;cttr:head&gt;
    &lt;cttr:citedstatlaw&gt;
        &lt;cttr:legisinfo&gt;
            &lt;cttr:citations&gt;
                &lt;lnci:cite&gt;
                    &lt;lnci:stat&gt;
                        &lt;lnci:statinfo&gt;
                            &lt;lnci:popname value="DIVORCE ACT"/&gt;
                            &lt;lnci:jurisinfo&gt;
                                &lt;lnci:can district="CA"/&gt;
                            &lt;/lnci:jurisinfo&gt;
                            &lt;lnci:hier&gt;
                                &lt;lnci:hierlev num="1985" label="year"&gt;
                                    &lt;lnci:hierlev num="3" label="chapter"&gt;
                                        &lt;lnci:hierlev num="2" label="supplement"&gt;
                                            &lt;lnci:hierlev num="2" label="section"&gt;
                                                &lt;lnci:hiertext value="s. 2"/&gt;
                                            &lt;/lnci:hierlev&gt;
                                        &lt;/lnci:hierlev&gt;
                                    &lt;/lnci:hierlev&gt;
                                &lt;/lnci:hierlev&gt;
                            &lt;/lnci:hier&gt;
                        &lt;/lnci:statinfo&gt;
                        &lt;lnci:statref&gt;
                            &lt;lnci:publicationname normpubcode="RSC" value="RSC"/&gt;
                        &lt;/lnci:statref&gt;
                    &lt;/lnci:stat&gt;
                    &lt;lnci:content&gt;R.S.C. 1985, c. 3 (2nd Supp.), s. 2&lt;/lnci:content&gt;
                &lt;/lnci:cite&gt;
                &lt;lnci:cite&gt;
                    &lt;lnci:stat&gt;
                        &lt;lnci:statinfo&gt;
                            &lt;lnci:popname value="DIVORCE ACT"/&gt;
                            &lt;lnci:jurisinfo&gt;
                                &lt;lnci:can district="CA"/&gt;
                            &lt;/lnci:jurisinfo&gt;
                        &lt;/lnci:statinfo&gt;
                    &lt;/lnci:stat&gt;
                    &lt;lnci:content&gt;R.S.C. 1985, c. D-3.4, s. 2&lt;/lnci:content&gt;
                &lt;/lnci:cite&gt;
                &lt;lnci:cite&gt;
                    &lt;lnci:stat&gt;
                        &lt;lnci:statinfo&gt;
                            &lt;lnci:popname value="DIVORCE, LOI SUR LE"/&gt;
                            &lt;lnci:jurisinfo&gt;
                                &lt;lnci:can district="CA"/&gt;
                            &lt;/lnci:jurisinfo&gt;
                            &lt;lnci:hier&gt;
                                &lt;lnci:hierlev num="1985" label="year"&gt;
                                    &lt;lnci:hierlev num="3" label="chapter"&gt;
                                        &lt;lnci:hierlev num="2" label="supplement"&gt;
                                            &lt;lnci:hierlev num="2" label="section"&gt;
                                                &lt;lnci:hiertext value="art. 2"/&gt;
                                            &lt;/lnci:hierlev&gt;
                                        &lt;/lnci:hierlev&gt;
                                    &lt;/lnci:hierlev&gt;
                                &lt;/lnci:hierlev&gt;
                            &lt;/lnci:hier&gt;
                        &lt;/lnci:statinfo&gt;
                        &lt;lnci:statref&gt;
                            &lt;lnci:publicationname normpubcode="RSC" value="RSC"/&gt;
                        &lt;/lnci:statref&gt;
                    &lt;/lnci:stat&gt;
                    &lt;lnci:content&gt;L.R.C. 1985, ch. 3 (2e suppl.), art. 2&lt;/lnci:content&gt;
                &lt;/lnci:cite&gt;
                &lt;lnci:cite&gt;
                    &lt;lnci:stat&gt;
                        &lt;lnci:statinfo&gt;
                            &lt;lnci:popname value="DIVORCE, LOI SUR LE"/&gt;
                            &lt;lnci:jurisinfo&gt;
                                &lt;lnci:can district="CA"/&gt;
                            &lt;/lnci:jurisinfo&gt;
                        &lt;/lnci:statinfo&gt;
                    &lt;/lnci:stat&gt;
                    &lt;lnci:content&gt;L.R.C. 1985, ch. D-3.4, art. 2&lt;/lnci:content&gt;
                &lt;/lnci:cite&gt;
            &lt;/cttr:citations&gt;
            &lt;ref:citations&gt;
                &lt;ref:cite4thisresource citetype="reporter"&gt;
                    &lt;lnci:cite&gt;
                        &lt;lnci:stat&gt;
                            &lt;lnci:statinfo&gt;
                                &lt;lnci:popname value="DIVORCE ACT"/&gt;
                                &lt;lnci:jurisinfo&gt;
                                    &lt;lnci:can district="CA"/&gt;
                                &lt;/lnci:jurisinfo&gt;
                                &lt;lnci:hier&gt;
                                    &lt;lnci:hierlev num="1985" label="year"&gt;
                                        &lt;lnci:hierlev num="3" label="chapter"&gt;
                                            &lt;lnci:hierlev num="2" label="supplement"&gt;
                                                &lt;lnci:hierlev num="2" label="section"&gt;
                                                    &lt;lnci:hiertext value="s. 2"/&gt;
                                                &lt;/lnci:hierlev&gt;
                                            &lt;/lnci:hierlev&gt;
                                        &lt;/lnci:hierlev&gt;
                                    &lt;/lnci:hierlev&gt;
                                &lt;/lnci:hier&gt;
                            &lt;/lnci:statinfo&gt;
                            &lt;lnci:statref&gt;
                                &lt;lnci:publicationname normpubcode="RSC" value="RSC"/&gt;
                            &lt;/lnci:statref&gt;
                        &lt;/lnci:stat&gt;
                        &lt;lnci:content&gt;R.S.C. 1985, c. 3 (2nd Supp.), s. 2&lt;/lnci:content&gt;
                    &lt;/lnci:cite&gt;
                    &lt;lnci:cite&gt;
                        &lt;lnci:stat&gt;
                            &lt;lnci:statinfo&gt;
                                &lt;lnci:popname value="DIVORCE ACT"/&gt;
                                &lt;lnci:jurisinfo&gt;
                                    &lt;lnci:can district="CA"/&gt;
                                &lt;/lnci:jurisinfo&gt;
                            &lt;/lnci:statinfo&gt;
                        &lt;/lnci:stat&gt;
                        &lt;lnci:content&gt;R.S.C. 1985, c. D-3.4, s. 2&lt;/lnci:content&gt;
                    &lt;/lnci:cite&gt;
                    &lt;lnci:cite&gt;
                        &lt;lnci:stat&gt;
                            &lt;lnci:statinfo&gt;
                                &lt;lnci:popname value="DIVORCE, LOI SUR LE"/&gt;
                                &lt;lnci:jurisinfo&gt;
                                    &lt;lnci:can district="CA"/&gt;
                                &lt;/lnci:jurisinfo&gt;
                                &lt;lnci:hier&gt;
                                    &lt;lnci:hierlev num="1985" label="year"&gt;
                                        &lt;lnci:hierlev num="3" label="chapter"&gt;
                                            &lt;lnci:hierlev num="2" label="supplement"&gt;
                                                &lt;lnci:hierlev num="2" label="section"&gt;
                                                    &lt;lnci:hiertext value="art. 2"/&gt;
                                                &lt;/lnci:hierlev&gt;
                                            &lt;/lnci:hierlev&gt;
                                        &lt;/lnci:hierlev&gt;
                                    &lt;/lnci:hierlev&gt;
                                &lt;/lnci:hier&gt;
                            &lt;/lnci:statinfo&gt;
                            &lt;lnci:statref&gt;
                                &lt;lnci:publicationname normpubcode="RSC" value="RSC"/&gt;
                            &lt;/lnci:statref&gt;
                        &lt;/lnci:stat&gt;
                        &lt;lnci:content&gt;L.R.C. 1985, ch. 3 (2e suppl.), art. 2&lt;/lnci:content&gt;
                    &lt;/lnci:cite&gt;
                    &lt;lnci:cite&gt;
                        &lt;lnci:stat&gt;
                            &lt;lnci:statinfo&gt;
                                &lt;lnci:popname value="DIVORCE, LOI SUR LE"/&gt;
                                &lt;lnci:jurisinfo&gt;
                                    &lt;lnci:can district="CA"/&gt;
                                &lt;/lnci:jurisinfo&gt;
                            &lt;/lnci:statinfo&gt;
                        &lt;/lnci:stat&gt;
                        &lt;lnci:content&gt;L.R.C. 1985, ch. D-3.4, art. 2&lt;/lnci:content&gt;
                    &lt;/lnci:cite&gt;     
                &lt;/ref:cite4thisresource&gt;
            &lt;/ref:citations&gt;
        &lt;/cttr:legisinfo&gt;
        &lt;primlawhist:primlawhist&gt;
            &lt;primlawhist:histgrp xml:lang="en-CA"&gt;
                &lt;primlawhist:histitem&gt;
                    &lt;textitem&gt;Formerly known as: DIVORCE ACT &lt;lnci:cite&gt;
                            &lt;lnci:content&gt;S.C. 1986, c. 4, s. 2&lt;/lnci:content&gt;
                        &lt;/lnci:cite&gt;&lt;/textitem&gt;
                &lt;/primlawhist:histitem&gt;
            &lt;/primlawhist:histgrp&gt;
            &lt;primlawhist:histgrp xml:lang="fr-CA"&gt;
                &lt;primlawhist:histitem&gt;
                    &lt;textitem&gt;Anciennement connu sous: DIVORCE, LOI SUR LE &lt;lnci:cite&gt;
                            &lt;lnci:content&gt;S.C. 1986, c. 4, s. 2&lt;/lnci:content&gt;
                        &lt;/lnci:cite&gt;&lt;/textitem&gt;
                &lt;/primlawhist:histitem&gt;
            &lt;/primlawhist:histgrp&gt;
        &lt;/primlawhist:primlawhist&gt;
    &lt;/cttr:citedstatlaw&gt;
&lt;/cttr:head&gt;
			</codeblock>
        </example>

        <example>
            <title>Source XML (4)</title>
            <codeblock>
&lt;leg:info&gt;
        .........
	&lt;leg:officialname&gt;EXTENDED HEALTH SERVICES BENEFITS REGULATION&lt;/leg:officialname&gt;
	&lt;leg:juris ln.user-displayed="false"&gt;AB&lt;/leg:juris&gt;
	&lt;leg:officialnum&gt;
		&lt;ci:cite&gt;
			&lt;ci:stat&gt;
				&lt;ci:statinfo spanref="stcspan2"&gt;
					&lt;ci:hier&gt;
						&lt;ci:hierlev label="reg-no" num="83"&gt;
							&lt;ci:hierlev label="year" num="2006"/&gt;
						&lt;/ci:hierlev&gt;
					&lt;/ci:hier&gt;
				&lt;/ci:statinfo&gt;
				&lt;ci:statref spanref="stcspan2"&gt;
					&lt;ci:publicationname normpubcode="ABRG" value="ABRG"/&gt;
				&lt;/ci:statref&gt;
			&lt;/ci:stat&gt;
			&lt;ci:content&gt;
				&lt;ci:span spanid="stcspan2"&gt;Alta. Reg. 83/2006&lt;/ci:span&gt;
			&lt;/ci:content&gt;
		&lt;/ci:cite&gt;
	&lt;/leg:officialnum&gt;
&lt;/leg:info&gt;
			</codeblock>
            <title>Target XML (4)</title>
            <codeblock>&lt;cttr:head&gt;
    &lt;cttr:citedstatlaw&gt;
        &lt;cttr:legisinfo&gt;
            &lt;cttr:citations&gt;
                &lt;lnci:cite&gt;
                    &lt;lnci:stat&gt;
                        &lt;lnci:statinfo&gt;
                            &lt;lnci:popname value="EXTENDED HEALTH SERVICES BENEFITS REGULATION"/&gt;
                            &lt;lnci:jurisinfo&gt;
                                &lt;lnci:can district="AB"/&gt;
                            &lt;/lnci:jurisinfo&gt;
                            &lt;lnci:hier&gt;
                                &lt;lnci:hierlev label="reg-no" num="83"&gt;
                                    &lt;lnci:hierlev label="year" num="2006"/&gt;
                                &lt;/lnci:hierlev&gt;
                            &lt;/lnci:hier&gt;
                        &lt;/lnci:statinfo&gt;
                        &lt;lnci:statref&gt;
                            &lt;lnci:publicationname normpubcode="ABRG" value="ABRG"/&gt;
                        &lt;/lnci:statref&gt;
                    &lt;/lnci:stat&gt;
                    &lt;lnci:content&gt;Alta. Reg. 83/2006&lt;/lnci:content&gt;
                &lt;/lnci:cite&gt;
            &lt;/cttr:citations&gt;
            &lt;ref:citations&gt;
                &lt;ref:cite4thisresource citetype="reporter"&gt;
                    &lt;lnci:cite&gt;
                        &lt;lnci:stat&gt;
                            &lt;lnci:statinfo&gt;
                                &lt;lnci:popname value="EXTENDED HEALTH SERVICES BENEFITS REGULATION"/&gt;
                                &lt;lnci:jurisinfo&gt;
                                    &lt;lnci:can district="AB"/&gt;
                                &lt;/lnci:jurisinfo&gt;
                                &lt;lnci:hier&gt;
                                    &lt;lnci:hierlev label="reg-no" num="83"&gt;
                                        &lt;lnci:hierlev label="year" num="2006"/&gt;
                                    &lt;/lnci:hierlev&gt;
                                &lt;/lnci:hier&gt;
                            &lt;/lnci:statinfo&gt;
                            &lt;lnci:statref&gt;
                                &lt;lnci:publicationname normpubcode="ABRG" value="ABRG"/&gt;
                            &lt;/lnci:statref&gt;
                        &lt;/lnci:stat&gt;
                        &lt;lnci:content&gt;Alta. Reg. 83/2006&lt;/lnci:content&gt;
                    &lt;/lnci:cite&gt;
                &lt;/ref:cite4thisresource&gt;
            &lt;/ref:citations&gt;
        &lt;/cttr:legisinfo&gt;
    &lt;/cttr:citedstatlaw&gt;
&lt;/cttr:head&gt;</codeblock>
        </example>

        <example>
            <title>Source XML (5)</title>
            <codeblock>
&lt;leg:info&gt;
            &lt;leg:officialname&gt;CHILD, YOUTH AND FAMILY ENHANCEMENT REGULATION&lt;/leg:officialname&gt;
            &lt;leg:num&gt;s. 3 / art. 3&lt;/leg:num&gt;
            &lt;leg:juris ln.user-displayed="false"&gt;AB&lt;/leg:juris&gt;
            &lt;leg:officialnum&gt;
                &lt;ci:cite&gt;
                    &lt;ci:stat&gt;
                        &lt;ci:statinfo spanref="stcspan2"&gt;
                            &lt;ci:hier&gt;
                                &lt;ci:hierlev label="reg-no" num="160"&gt;
                                    &lt;ci:hierlev label="year" num="2004"&gt;
                                        &lt;ci:hierlev label="section" num="3"/&gt;
                                    &lt;/ci:hierlev&gt;
                                &lt;/ci:hierlev&gt;
                            &lt;/ci:hier&gt;
                        &lt;/ci:statinfo&gt;
                        &lt;ci:statref spanref="stcspan2"&gt;
                            &lt;ci:publicationname normpubcode="ABRG" value="ABRG"/&gt;
                        &lt;/ci:statref&gt;
                    &lt;/ci:stat&gt;
                    &lt;ci:content&gt;
                        &lt;ci:span spanid="stcspan2"&gt;Alta. Reg. 160/2004, s. 3&lt;/ci:span&gt;
                    &lt;/ci:content&gt;
                &lt;/ci:cite&gt;
            &lt;/leg:officialnum&gt;
            &lt;leg:history&gt;
                &lt;leg:histinfo&gt;
                    &lt;leg:relatedleg type="parent"
                        display-name="Formerly known as / anciennement connu sous: "&gt;Child Welfare
                        Act&lt;/leg:relatedleg&gt;
                &lt;/leg:histinfo&gt;
            &lt;/leg:history&gt;
        &lt;/leg:info&gt;
			</codeblock>
            <title>Target XML (5)</title>
            <codeblock>&lt;cttr:head&gt;
    &lt;cttr:citedstatlaw&gt;
        &lt;cttr:legisinfo&gt;
            &lt;cttr:citations&gt;
                &lt;lnci:cite&gt;
                    &lt;lnci:stat&gt;
                        &lt;lnci:statinfo&gt;
                            &lt;lnci:popname value="CHILD, YOUTH AND FAMILY ENHANCEMENT REGULATION"/&gt;
                            &lt;lnci:jurisinfo&gt;
                                &lt;lnci:can district="AB"/&gt;
                            &lt;/lnci:jurisinfo&gt;
                            &lt;lnci:hier&gt;
                                &lt;lnci:hierlev label="reg-no" num="160"&gt;
                                    &lt;lnci:hierlev label="year" num="2004"&gt;
                                        &lt;lnci:hierlev label="section" num="3"/&gt;
                                        &lt;lnci:hiertext value="s. 3"/&gt;
                                    &lt;/lnci:hierlev&gt;
                                &lt;/lnci:hierlev&gt;
                            &lt;/lnci:hier&gt;
                        &lt;/lnci:statinfo&gt;
                        &lt;lnci:statref&gt;
                            &lt;lnci:publicationname normpubcode="ABRG" value="ABRG"/&gt;
                        &lt;/lnci:statref&gt;
                    &lt;/lnci:stat&gt;
                    &lt;lnci:content&gt;
                        &lt;lnci:span spanid="stcspan2"&gt;Alta. Reg. 160/2004, s. 3&lt;/lnci:span&gt;
                    &lt;/lnci:content&gt;
                &lt;/lnci:cite&gt;
            &lt;/cttr:citations&gt;
            &lt;ref:citations&gt;
                &lt;ref:cite4thisresource citetype="reporter"&gt;
                    &lt;lnci:cite&gt;
                        &lt;lnci:stat&gt;
                            &lt;lnci:statinfo&gt;
                                &lt;lnci:popname value="CHILD, YOUTH AND FAMILY ENHANCEMENT REGULATION"/&gt;
                                &lt;lnci:jurisinfo&gt;
                                    &lt;lnci:can district="AB"/&gt;
                                &lt;/lnci:jurisinfo&gt;
                                &lt;lnci:hier&gt;
                                    &lt;lnci:hierlev label="reg-no" num="160"&gt;
                                        &lt;lnci:hierlev label="year" num="2004"&gt;
                                            &lt;lnci:hierlev label="section" num="3"/&gt;
                                            &lt;lnci:hiertext value="s. 3"/&gt;
                                        &lt;/lnci:hierlev&gt;
                                    &lt;/lnci:hierlev&gt;
                                &lt;/lnci:hier&gt;
                            &lt;/lnci:statinfo&gt;
                            &lt;lnci:statref&gt;
                                &lt;lnci:publicationname normpubcode="ABRG" value="ABRG"/&gt;
                            &lt;/lnci:statref&gt;
                        &lt;/lnci:stat&gt;
                        &lt;lnci:content&gt;
                            &lt;lnci:span spanid="stcspan2"&gt;Alta. Reg. 160/2004, s. 3&lt;/lnci:span&gt;
                        &lt;/lnci:content&gt;
                    &lt;/lnci:cite&gt;
                &lt;/ref:cite4thisresource&gt;
            &lt;/ref:citations&gt;
        &lt;/cttr:legisinfo&gt;
        &lt;primlawhist:primlawhist&gt;
            &lt;primlawhist:histgrp xml:lang="en-CA"&gt;
                &lt;primlawhist:histitem&gt;
                    &lt;textitem&gt;Formerly known as: Child Welfare
                        Act &lt;/textitem&gt;
                &lt;/primlawhist:histitem&gt;
            &lt;/primlawhist:histgrp&gt;
            &lt;primlawhist:histgrp xml:lang="en-FR"&gt;
                &lt;primlawhist:histitem&gt;
                    &lt;textitem&gt;Anciennement connu sous: Child Welfare
                        Act &lt;/textitem&gt;
                &lt;/primlawhist:histitem&gt;
            &lt;/primlawhist:histgrp&gt;
        &lt;/primlawhist:primlawhist&gt;
    &lt;/cttr:citedstatlaw&gt;
&lt;/cttr:head&gt;</codeblock>
        </example>
       <example>
            <title>Source XML (6)</title>
            <codeblock>
&lt;leg:info&gt;
	 &lt;leg:officialname&gt;REAL PROPERTY LIMITATIONS ACT / LOI SUR LA PRESCRIPTION RELATIVE AUX BIENS RÉELS&lt;/leg:officialname&gt;
            &lt;leg:juris ln.user-displayed="false"&gt;NB&lt;/leg:juris&gt;
	       &lt;leg:officialnum&gt;
                &lt;ci:cite&gt;
                    &lt;ci:content&gt;R.S.N.B. 1973, c. R-1.5&lt;/ci:content&gt;
                &lt;/ci:cite&gt;&amp;#x00A0;/&amp;#x00A0; &lt;ci:cite&gt;
                    &lt;ci:content&gt;L.R.N.B. 1973, ch. R-1.5&lt;/ci:content&gt;
                &lt;/ci:cite&gt;
            &lt;/leg:officialnum&gt;
&lt;/leg:info&gt;
			</codeblock><title>Target XML (6)</title>
            <codeblock>
&lt;cttr:head&gt;
    &lt;cttr:citedstatlaw&gt;
        &lt;cttr:legisinfo&gt;
            &lt;cttr:citations&gt;
                &lt;lnci:cite&gt;
                    &lt;lnci:stat&gt;
                        &lt;lnci:statinfo&gt;
                            &lt;lnci:popname value="REAL PROPERTY LIMITATIONS ACT"/&gt;
                            &lt;lnci:jurisinfo&gt;
                                &lt;lnci:can district="NB"/&gt;
                            &lt;/lnci:jurisinfo&gt;
                        &lt;/lnci:statinfo&gt;
                    &lt;/lnci:stat&gt;
                    &lt;lnci:content&gt;R.S.N.B. 1973, c. R-1.5&lt;/lnci:content&gt;
                &lt;/lnci:cite&gt;
                &lt;lnci:cite&gt;
                    &lt;lnci:stat&gt;
                        &lt;lnci:statinfo&gt;
                            &lt;lnci:popname value="LOI SUR LA PRESCRIPTION RELATIVE AUX BIENS RÉELS"/&gt;
                            &lt;lnci:jurisinfo&gt;
                                &lt;lnci:can district="NB"/&gt;
                            &lt;/lnci:jurisinfo&gt;
                        &lt;/lnci:statinfo&gt;
                    &lt;/lnci:stat&gt;
                    &lt;lnci:content&gt;L.R.N.B. 1973, ch. R-1.5&lt;/lnci:content&gt;
                &lt;/lnci:cite&gt;  
            &lt;/cttr:citations&gt;
            &lt;ref:citations&gt;
                &lt;ref:cite4thisresource citetype="reporter"&gt;
                    &lt;lnci:cite&gt;
                        &lt;lnci:stat&gt;
                            &lt;lnci:statinfo&gt;
                                &lt;lnci:popname value="REAL PROPERTY LIMITATIONS ACT"/&gt;
                                &lt;lnci:jurisinfo&gt;
                                    &lt;lnci:can district="NB"/&gt;
                                &lt;/lnci:jurisinfo&gt;
                            &lt;/lnci:statinfo&gt;
                        &lt;/lnci:stat&gt;
                        &lt;lnci:content&gt;R.S.N.B. 1973, c. R-1.5&lt;/lnci:content&gt;
                    &lt;/lnci:cite&gt;
                    &lt;lnci:cite&gt;
                        &lt;lnci:stat&gt;
                            &lt;lnci:statinfo&gt;
                                &lt;lnci:popname value="LOI SUR LA PRESCRIPTION RELATIVE AUX BIENS RÉELS"/&gt;
                                &lt;lnci:jurisinfo&gt;
                                    &lt;lnci:can district="NB"/&gt;
                                &lt;/lnci:jurisinfo&gt;
                            &lt;/lnci:statinfo&gt;
                        &lt;/lnci:stat&gt;
                        &lt;lnci:content&gt;L.R.N.B. 1973, ch. R-1.5&lt;/lnci:content&gt;
                    &lt;/lnci:cite&gt; 
                &lt;/ref:cite4thisresource&gt;
            &lt;/ref:citations&gt;
        &lt;/cttr:legisinfo&gt;
        &lt;/cttr:citedstatlaw&gt;
&lt;/cttr:head&gt;
			</codeblock>
        </example>
        <example>
            <title>Source XML (7) Four citations in <sourcexml>leg:officialnum</sourcexml></title>
            <codeblock>
&lt;leg:info&gt;
    &lt;leg:officialname&gt;CONSTITUTION ACT, 1982 / LOI CONSTITUTIONNELLE DE 1982&lt;/leg:officialname&gt;
    &lt;leg:num&gt;Schedule / annexe&lt;/leg:num&gt;
    &lt;leg:juris ln.user-displayed="false"&gt;CD&lt;/leg:juris&gt;
    &lt;leg:officialnum&gt;
        &lt;ci:cite&gt;
            &lt;ci:stat&gt;
                &lt;ci:statinfo spanref="stcspan1"&gt;
                    &lt;ci:hier&gt;
                        &lt;ci:hierlev label="year" num="1985"&gt;
                            &lt;ci:hierlev label="appendix" num="II"&gt;
                                &lt;ci:hierlev label="chapter" num="44"&gt;
                                    &lt;ci:hierlev label="schedule" num="B"/&gt;
                                &lt;/ci:hierlev&gt;
                            &lt;/ci:hierlev&gt;
                        &lt;/ci:hierlev&gt;
                    &lt;/ci:hier&gt;
                    &lt;ci:hierpinpoint&gt;
                        &lt;ci:hierlev label="schedule" num="1"/&gt;
                    &lt;/ci:hierpinpoint&gt;
                &lt;/ci:statinfo&gt;
                &lt;ci:statref spanref="stcspan1"&gt;
                    &lt;ci:publicationname normpubcode="RSC" value="RSC"/&gt;
                &lt;/ci:statref&gt;
            &lt;/ci:stat&gt;
            &lt;ci:content&gt;
                &lt;ci:span spanid="stcspan1"&gt;R.S.C. 1985, Appendix II, No. 44, Schedule B, Schedule&lt;/ci:span&gt;
            &lt;/ci:content&gt;
        &lt;/ci:cite&gt; &amp;#x00A0;;&amp;#x00A0; 
        &lt;ci:cite&gt;
            &lt;ci:content&gt;U.K. 1982, c. 11, Schedule B, Schedule&lt;/ci:content&gt;
        &lt;/ci:cite&gt; &amp;#x00A0;/&amp;#x00A0; 
        &lt;ci:cite&gt;
            &lt;ci:stat&gt;
                &lt;ci:statinfo spanref="stcspan2"&gt;
                    &lt;ci:hier&gt;
                        &lt;ci:hierlev label="year" num="1985"&gt;
                            &lt;ci:hierlev label="appendix" num="II"&gt;
                                &lt;ci:hierlev label="chapter" num="44"&gt;
                                    &lt;ci:hierlev label="schedule" num="B"/&gt;
                                &lt;/ci:hierlev&gt;
                            &lt;/ci:hierlev&gt;
                        &lt;/ci:hierlev&gt;
                    &lt;/ci:hier&gt;
                    &lt;ci:hierpinpoint&gt;
                        &lt;ci:hierlev label="schedule" num="1"/&gt;
                    &lt;/ci:hierpinpoint&gt;
                &lt;/ci:statinfo&gt;
                &lt;ci:statref spanref="stcspan2"&gt;
                    &lt;ci:publicationname normpubcode="RSC" value="RSC"/&gt;
                &lt;/ci:statref&gt;
            &lt;/ci:stat&gt;
            &lt;ci:content&gt;
                &lt;ci:span spanid="stcspan2"&gt;L.R.C. 1985, appendice II, no 44, annexe B,
                    annexe&lt;/ci:span&gt;
            &lt;/ci:content&gt;
        &lt;/ci:cite&gt; &amp;#x00A0;;&amp;#x00A0; 
        &lt;ci:cite&gt;
            &lt;ci:content&gt;R.-U. 1982, ch. 11, annexe B, annexe&lt;/ci:content&gt;
        &lt;/ci:cite&gt;
    &lt;/leg:officialnum&gt;
&lt;/leg:info&gt;
   
			</codeblock>
            <title>Target XML (7)</title>
            <codeblock>
&lt;cttr:head&gt;
    &lt;cttr:citedstatlaw&gt;
        &lt;cttr:legisinfo&gt;
            &lt;cttr:citations&gt;
                &lt;lnci:cite&gt;
                    &lt;lnci:stat&gt;
                        &lt;lnci:statinfo&gt;
                            &lt;lnci:popname value="CONSTITUTION ACT, 1982"/&gt;
                            &lt;lnci:jurisinfo&gt;
                                &lt;lnci:can district="CA"/&gt;
                            &lt;/lnci:jurisinfo&gt;
                            &lt;lnci:hier&gt;
                                &lt;lnci:hierlev num="1985" label="year"&gt;
                                    &lt;lnci:hierlev num="II" label="appendix"&gt;
                                        &lt;lnci:hierlev num="44" label="chapter"&gt;
                                            &lt;lnci:hierlev num="B" label="schedule"&gt;
                                                &lt;lnci:hiertext value="Schedule"/&gt;
                                            &lt;/lnci:hierlev&gt;
                                        &lt;/lnci:hierlev&gt;
                                    &lt;/lnci:hierlev&gt;
                                &lt;/lnci:hierlev&gt;
                            &lt;/lnci:hier&gt;
                        &lt;/lnci:statinfo&gt;
                        &lt;lnci:statref&gt;
                            &lt;lnci:publicationname normpubcode="RSC" value="RSC"/&gt;
                        &lt;/lnci:statref&gt;
                    &lt;/lnci:stat&gt;
                    &lt;lnci:content&gt;R.S.C. 1985, Appendix II, No. 44, Schedule B, Schedule&lt;/lnci:content&gt;
                &lt;/lnci:cite&gt;
                &lt;lnci:cite&gt;
                    &lt;lnci:stat&gt;
                        &lt;lnci:statinfo&gt;
                            &lt;lnci:popname value="CONSTITUTION ACT, 1982"/&gt;
                            &lt;lnci:jurisinfo&gt;
                                &lt;lnci:can district="CA"/&gt;
                            &lt;/lnci:jurisinfo&gt;
                        &lt;/lnci:statinfo&gt;
                    &lt;/lnci:stat&gt;
                    &lt;lnci:content&gt;U.K. 1982, c. 11, Schedule B, Schedule&lt;/lnci:content&gt;
                &lt;/lnci:cite&gt;
                &lt;lnci:cite&gt;
                    &lt;lnci:stat&gt;
                        &lt;lnci:statinfo&gt;
                            &lt;lnci:popname value="LOI CONSTITUTIONNELLE DE 1982"/&gt;
                            &lt;lnci:jurisinfo&gt;
                                &lt;lnci:can district="CA"/&gt;
                            &lt;/lnci:jurisinfo&gt;
                            &lt;lnci:hier&gt;
                                &lt;lnci:hierlev num="1985" label="year"&gt;
                                    &lt;lnci:hierlev num="II" label="appendix"&gt;
                                        &lt;lnci:hierlev num="44" label="chapter"&gt;
                                            &lt;lnci:hierlev num="B" label="schedule"&gt;
                                                &lt;lnci:hiertext value="annexe"/&gt;
                                            &lt;/lnci:hierlev&gt;
                                        &lt;/lnci:hierlev&gt;
                                    &lt;/lnci:hierlev&gt;
                                &lt;/lnci:hierlev&gt;
                            &lt;/lnci:hier&gt;
                        &lt;/lnci:statinfo&gt;
                        &lt;lnci:statref&gt;
                            &lt;lnci:publicationname normpubcode="RSC" value="RSC"/&gt;
                        &lt;/lnci:statref&gt;
                    &lt;/lnci:stat&gt;
                    &lt;lnci:content&gt;L.R.C. 1985, appendice II, no 44, annexe B, annexe&lt;/lnci:content&gt;
                &lt;/lnci:cite&gt;
                &lt;lnci:cite&gt;
                    &lt;lnci:stat&gt;
                        &lt;lnci:statinfo&gt;
                            &lt;lnci:popname value="LOI CONSTITUTIONNELLE DE 1982"/&gt;
                            &lt;lnci:jurisinfo&gt;
                                &lt;lnci:can district="CA"/&gt;
                            &lt;/lnci:jurisinfo&gt;
                        &lt;/lnci:statinfo&gt;
                    &lt;/lnci:stat&gt;
                    &lt;lnci:content&gt;R.-U. 1982, ch. 11, annexe B, annexe&lt;/lnci:content&gt;
                &lt;/lnci:cite&gt;   
            &lt;/cttr:citations&gt;
            &lt;ref:citations&gt;
                &lt;ref:cite4thisresource citetype="reporter"&gt;
                    &lt;lnci:cite&gt;
                        &lt;lnci:stat&gt;
                            &lt;lnci:statinfo&gt;
                                &lt;lnci:popname value="CONSTITUTION ACT, 1982"/&gt;
                                &lt;lnci:jurisinfo&gt;
                                    &lt;lnci:can district="CA"/&gt;
                                &lt;/lnci:jurisinfo&gt;
                                &lt;lnci:hier&gt;
                                    &lt;lnci:hierlev num="1985" label="year"&gt;
                                        &lt;lnci:hierlev num="II" label="appendix"&gt;
                                            &lt;lnci:hierlev num="44" label="chapter"&gt;
                                                &lt;lnci:hierlev num="B" label="schedule"&gt;
                                                    &lt;lnci:hiertext value="Schedule"/&gt;
                                                &lt;/lnci:hierlev&gt;
                                            &lt;/lnci:hierlev&gt;
                                        &lt;/lnci:hierlev&gt;
                                    &lt;/lnci:hierlev&gt;
                                &lt;/lnci:hier&gt;
                            &lt;/lnci:statinfo&gt;
                            &lt;lnci:statref&gt;
                                &lt;lnci:publicationname normpubcode="RSC" value="RSC"/&gt;
                            &lt;/lnci:statref&gt;
                        &lt;/lnci:stat&gt;
                        &lt;lnci:content&gt;R.S.C. 1985, Appendix II, No. 44, Schedule B, Schedule&lt;/lnci:content&gt;
                    &lt;/lnci:cite&gt;
                    &lt;lnci:cite&gt;
                        &lt;lnci:stat&gt;
                            &lt;lnci:statinfo&gt;
                                &lt;lnci:popname value="CONSTITUTION ACT, 1982"/&gt;
                                &lt;lnci:jurisinfo&gt;
                                    &lt;lnci:can district="CA"/&gt;
                                &lt;/lnci:jurisinfo&gt;
                            &lt;/lnci:statinfo&gt;
                        &lt;/lnci:stat&gt;
                        &lt;lnci:content&gt;U.K. 1982, c. 11, Schedule B, Schedule&lt;/lnci:content&gt;
                    &lt;/lnci:cite&gt;
                    &lt;lnci:cite&gt;
                        &lt;lnci:stat&gt;
                            &lt;lnci:statinfo&gt;
                                &lt;lnci:popname value="LOI CONSTITUTIONNELLE DE 1982"/&gt;
                                &lt;lnci:jurisinfo&gt;
                                    &lt;lnci:can district="CA"/&gt;
                                &lt;/lnci:jurisinfo&gt;
                                &lt;lnci:hier&gt;
                                    &lt;lnci:hierlev num="1985" label="year"&gt;
                                        &lt;lnci:hierlev num="II" label="appendix"&gt;
                                            &lt;lnci:hierlev num="44" label="chapter"&gt;
                                                &lt;lnci:hierlev num="B" label="schedule"&gt;
                                                    &lt;lnci:hiertext value="annexe"/&gt;
                                                &lt;/lnci:hierlev&gt;
                                            &lt;/lnci:hierlev&gt;
                                        &lt;/lnci:hierlev&gt;
                                    &lt;/lnci:hierlev&gt;
                                &lt;/lnci:hier&gt;
                            &lt;/lnci:statinfo&gt;
                            &lt;lnci:statref&gt;
                                &lt;lnci:publicationname normpubcode="RSC" value="RSC"/&gt;
                            &lt;/lnci:statref&gt;
                        &lt;/lnci:stat&gt;
                        &lt;lnci:content&gt;L.R.C. 1985, appendice II, no 44, annexe B, annexe&lt;/lnci:content&gt;
                    &lt;/lnci:cite&gt;
                    &lt;lnci:cite&gt;
                        &lt;lnci:stat&gt;
                            &lt;lnci:statinfo&gt;
                                &lt;lnci:popname value="LOI CONSTITUTIONNELLE DE 1982"/&gt;
                                &lt;lnci:jurisinfo&gt;
                                    &lt;lnci:can district="CA"/&gt;
                                &lt;/lnci:jurisinfo&gt;
                            &lt;/lnci:statinfo&gt;
                        &lt;/lnci:stat&gt;
                        &lt;lnci:content&gt;R.-U. 1982, ch. 11, annexe B, annexe&lt;/lnci:content&gt;
                    &lt;/lnci:cite&gt;
                &lt;/ref:cite4thisresource&gt;
            &lt;/ref:citations&gt;
        &lt;/cttr:legisinfo&gt;
         &lt;/cttr:citedstatlaw&gt;
&lt;/cttr:head&gt;
			</codeblock>
        </example>

        <section>
            <title>Changes</title>
            <p>2015-05-18: <ph id="change_20150518_brt">Added a rule to the note regarding the
                    conversion of <sourcexml>leg:history</sourcexml> instructions: add a space
                    between adjacent <targetxml>lnci:cite</targetxml> elements in
                        <targetxml>primlawhist:histitem/textitem</targetxml> to ensure the proper
                    display. WebTeam #300060</ph></p>
            <p>2015-01-05: <ph id="change_20150105_brt">Added note to create a single
                        <targetxml>lnci:popname</targetxml> for instances that include two
                        <sourcexml>leg:officialnum/ci:cite</sourcexml> elements but only one value
                    in <sourcexml>leg:officialname</sourcexml>. R4.0 RFA #392</ph></p>
            <p>2014-12-18: <ph id="change_20141218_sep">Remove note about creation of <targetxml>dc:coverage</targetxml>. R4.5 RFA #2047</ph></p>
            <p>2014-12-11: <ph id="change_20141211_brt">Added @citetype="reporter" to <targetxml>ref:cite4thisresource</targetxml>.</ph></p>
            <p>2014-11-11 <ph id="change_20141111_csn">Added instruction to append a space 
                at the end of <targetxml>primlawhist:histgrp/primlawhist:histitem/textitem</targetxml>.
                Addresses R4.5 RFA #2028.</ph>
            </p>
            <p>2014-11-05 <ph id="change_20141105_brt">Deleted instructions and examples for
                    converting <sourcexml>leg:info/leg:relatedleg</sourcexml> to
                        <targetxml>primlaw:histgrp</targetxml>. Created a new topic to convert
                        <sourcexml>leg:info/leg:relatedleg</sourcexml> to
                        <targetxml>doc:related-content</targetxml>. Addresses R4.5 RFA #1981.</ph>
            </p>
            <p>2014-10-14 <ph id="change_20141014a_brt">Added instruction to convert <sourcexml>leg:juris</sourcexml> to <targetxml>dc:coverage</targetxml>. Addresses
                R4.5 RFA #1982.</ph>
            </p>
            <p>2014-10-14 <ph id="change_20141014_brt">Modified instructions to create a language
                attribute for <targetxml>primlawhist:histgrp/@xml:lang</targetxml> from
                language-dependent text converted from
                <sourcexml>leg:relatedleg/@display-name</sourcexml>. In previous conversion,
                the language attribute was converted to
                <targetxml>primlawhist:histitem/textitem/@xml:lang</targetxml>. Addresses
                R4.5 RFA #1961.</ph>
            </p>
            <p>2014-10-09 <ph id="change_20141009_brt">Created a note to drop the second instance of
                        <sourcexml>leg:juris</sourcexml> when it contains the value 'NU'.</ph></p>
           
            <p>2014-09-29 <ph id="change_20140929_brt">Modified instructions to convert
                        <sourcexml>leg:info/leg:officialnum/ci:cite</sourcexml> to
                        <targetxml>cttr:citedstatlaw/cttr:legisinfo/cttr:citations/lnci:cite</targetxml>
                    and
                        <targetxml>cttr:citedstatlaw/cttr:legisinfo/ref:citations/ref:cite4thisresource/lnci:cite</targetxml>.
                    Addresses R4.5 RFA #1816.</ph>
            </p>
            <p>2014-09-17: <ph id="change_20140917_brt">Added note and example (#3) for dividing the
                    text of <sourcexml>leg:officialname</sourcexml> into separate strings for French
                    and English. Addresses R4.5 RFA #1919.</ph>
            </p>
            <p>2014-08-28: <ph id="change_20140828_sep">Added note and cross reference for certain
                    situations, where <sourcexml>leg:officialname</sourcexml> and
                        <sourcexml>leg:num</sourcexml> are used also to populate
                        <targetxml>dc:title</targetxml>. Addresses R4.5 RFA #1832.</ph>
            </p>
            <p>2014-05-29: <ph id="change_20140529_brt">Added instructions and an example for
                    converting a document that has four citations in
                        <sourcexml>leg:officialnum</sourcexml> to <targetxml>lnci:cite</targetxml>.
                    Addresses P4 issue #211.</ph>
            </p>
            <p>2014-04-17: <ph id="change_20140425_brt">Changed target element from
                        <targetxml>cttr:citedseclaw</targetxml> to
                        <targetxml>cttr:citedstatlaw</targetxml>. cttr:citedseclaw has been
                    deprecated in favor of the new element.</ph>
            </p>
            <p>2014-02-25: <ph id="change_20140225_brt">Added new rule for converting
                        <sourcexml>leg:num</sourcexml> when there is only one citation in the
                    source. Also modified examples to fit the rules.</ph>
            </p>
            <p>2014-02-12: <ph id="change_20140212_brt">Added note and example (#6) for handling
                        <sourcexml>leg:officialname</sourcexml> when <sourcexml>ci:stat</sourcexml>
                    is not present in the source.</ph>. </p>
            <p>2013-01-29: <ph id="change_20130129_rj">Added note for handling
                        <sourcexml>leg:juris</sourcexml> value CD. Changed target markup to reflect
                    that country code "CD" will be converted to "CA" in all instances.</ph>. Added
                instructions and example for separating English and French
                    <sourcexml>leg:relatedleg</sourcexml> information.</p>
            <p>2013-01-23: <ph id="change_20130123_rj">Added, "The separating "/" will be dropped
                    from output." where appropriate. Added "Normalize whitespace." and to the
                    instruction for <targetxml>lnci:popname/@value</targetxml>.</ph></p>
            <p>2013-01-05: <ph id="change_20130105_rj">Added
                        <sourcexml>leg:history/leg:histinfo/leg:relatedleg</sourcexml> instructions.
                    Revised English/French parsing output instructions for clarity. Added
                    instructions for converting <sourcexml>leg:num</sourcexml> containing
                    "&amp;quot;" as part of the value. </ph></p>
            <p>2012-11-29: <ph id="change_20121129_rj">Removed all <targetxml>@spanref</targetxml>
                    from target mark-up examples.</ph></p>
            <p>2012-11-28: <ph id="change_20121128_bh">Added instructions for
                        <sourcexml>leg:relatedleg</sourcexml>.</ph></p>
            <p>2012-11-13: <ph id="change_20121113_bh">Removed <targetxml>lnci:span</targetxml> as
                    per general <sourcexml>ci:cite</sourcexml> instructions.</ph></p>
        </section>
    </body>
	</dita:topic>

	
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA03-Citator\Rosetta_leg.info-to-LxAdv_cttr.citedseclaw.dita  -->
	 
<!-- Sudhanshu Srivastava initially drafted this module on 23-May-2017.-->
    
    
    
    <xsl:template match="leg:info[parent::source_cttr:body]">
		<!--  Original Target XPath:  cttr:citator/cttr:head/cttr:citedstatlaw/cttr:legisinfo/cttr:citations/lnci:cite   -->
        <xsl:if test="leg:officialnum/ci:cite">
        <!-- Using cttr:head because cttr:head can be made from both of elements (case:head or leg:info , both comes under cttr:body , but in one file only one will come either leg:info or case:head. ) -->
            <cttr:head> 
               <cttr:citedstatlaw>
					<cttr:legisinfo>
					    <xsl:apply-templates select="leg:officialnum"/> 
					    <xsl:apply-templates select="node() except (leg:officialname|leg:num|leg:officialnum|leg:history|leg:relatedleg)"/>
					</cttr:legisinfo>
	                <xsl:apply-templates select="leg:history"/>
				</cttr:citedstatlaw>
	    </cttr:head>
        </xsl:if>
	</xsl:template>

    <xsl:template match="leg:officialnum[parent::leg:info[parent::source_cttr:body]]">
		<!--  Original Target XPath:  lnci:cite   -->
        <cttr:citations>
            <xsl:apply-templates select="*"/>
	    </cttr:citations>
        <ref:citations>
	     <xsl:for-each select="ci:cite">
           	    <xsl:call-template name="refcitations">
           	        <xsl:with-param name="refcitnode" select="."/>
           	    </xsl:call-template>
	    </xsl:for-each>
        </ref:citations>
	</xsl:template>

    <xsl:template name="refcitations">
        <xsl:param name="refcitnode"/>
            <ref:cite4thisresource citetype="reporter">
                <xsl:apply-templates select="$refcitnode"/>
            </ref:cite4thisresource>
    </xsl:template>
    
    
    
    <!--This template is for handling citation inside case:parallelcite which having ancesstor case:info inside case:headnote and generating citationsmarkup inside ref:citations.        
This is not using common ci:cite module because schema will not validate duplicate caserefid so i have to generate caseref ID and append '_1' in caseref ID and using 'reference' mode that's why not using common module of ci:cite for the below template.        
        . -->
    <xsl:template name="refcitationsforhead">
        <xsl:param name="refcitnode"/>
        <ref:citations>
            <xsl:for-each select="$refcitnode">
            <ref:cite4thisresource citetype="reporter">
                <xsl:apply-templates select="." mode="reference"/>
            </ref:cite4thisresource>
            </xsl:for-each>
        </ref:citations>
    </xsl:template>
    
    <xsl:template match="ci:cite" mode="reference">
        <lnci:cite>
            <xsl:apply-templates select="@*|node()" mode="reference"/>
        </lnci:cite>
    </xsl:template>
    
    <xsl:template match="ci:case" mode="reference">
     <lnci:case>
         <xsl:apply-templates select="@*|node()" mode="reference"/>
     </lnci:case>   
    </xsl:template>
    
    <xsl:template match="ci:caseinfo" mode="reference">
        <lnci:caseinfo>
            <xsl:apply-templates select="node()"/>
        </lnci:caseinfo>
    </xsl:template>
    
    <xsl:template match="ci:content" mode="reference">
        <lnci:content>
            <xsl:apply-templates select="@*|node()" mode="reference"/>
        </lnci:content>   
    </xsl:template>
    
    <xsl:template match="ci:span" mode="reference">
            <xsl:apply-templates/>
    </xsl:template>
    
    <xsl:template match="ci:lawrev" mode="reference">
        <lnci:lawrev>
            <xsl:apply-templates select="@*|node()" mode="reference"/>
        </lnci:lawrev>   
    </xsl:template>
    
    <xsl:template match="ci:lawrevref" mode="reference">
        <lnci:lawrevref>
            <xsl:attribute name="ID">
                <xsl:value-of select="@ID"/>
                <xsl:text>_1</xsl:text>
            </xsl:attribute>
            <xsl:apply-templates select="node()"/>
        </lnci:lawrevref>   
    </xsl:template>
    
    
    <!-- This template is appending _1 in the caserefID as schema do not support duplicate ID.-->
    <xsl:template match="ci:caseref" mode="reference">
        <lnci:caseref>
            <xsl:if test="not(preceding-sibling::*[1][self::ci:caseref]) and @ID">
            <xsl:attribute name="ID">
                <xsl:value-of select="@ID"/>
                <xsl:text>_1</xsl:text>
            </xsl:attribute>
            </xsl:if>
            <xsl:if test="@anaphref">
                <xsl:attribute name="anaphref">
                    <xsl:value-of select="@anaphref"/>
                </xsl:attribute>
            </xsl:if>
            <xsl:apply-templates select="node()"/>
        </lnci:caseref>
    </xsl:template>
	
	<xsl:template match="leg:history">
		<!--  Original Target XPath:  primlawhist:primlawhist   -->
		<primlawhist:primlawhist>
			<xsl:apply-templates select="node()"/>
		</primlawhist:primlawhist>
	</xsl:template>

	<xsl:template match="leg:histinfo">
		<!--  Original Target XPath:  primlawhist:histgrp   -->
	    <xsl:apply-templates select="node() except leg:officialnum"/>
	</xsl:template>
    
    <xsl:template match="leg:officialname[parent::leg:histinfo/parent::leg:history/parent::leg:info/parent::source_cttr:body]">
        <xsl:variable name="legname" select="."/>
        <xsl:variable name="legnumcicite" select="following-sibling::leg:officialnum"/>
        <xsl:for-each select="tokenize(@display-name,'/')">
        <primlawhist:histgrp>
            <xsl:attribute name="xml:lang" select="if(position()=1) then 'en-CA' else 'fr-CA'"/>
        <primlawhist:histitem>
            <textitem>
                <xsl:value-of select="normalize-space(.)"/>
                <xsl:if test="not(contains(.,':'))">
                    <xsl:text>:</xsl:text>
                </xsl:if>
                <xsl:text> </xsl:text>
                <xsl:value-of select="if(position()=1) then substring-before($legname,'/') else substring-after($legname,'/')"/>
                <xsl:apply-templates select="$legnumcicite"/>
            </textitem>
        </primlawhist:histitem>
        </primlawhist:histgrp>
        </xsl:for-each>
    </xsl:template>
    
    <xsl:template match="leg:officialnum[parent::leg:histinfo]">
    <xsl:apply-templates select="*"/>    
    </xsl:template>
    
    
    <xsl:template match="leg:relatedleg[parent::leg:histinfo/parent::leg:history/parent::leg:info/parent::source_cttr:body and not(preceding-sibling::*[1][self::leg:relatedleg])]" priority="2">
		<!--  Original Target XPath:  primlawhist:histgrp/primlaw:histitem/textitem   -->
        <xsl:variable name="legrel" select="."/>
        <xsl:variable name="legnumcicite" select="following-sibling::leg:officialnum/ci:cite"/>
       <xsl:choose>
           <xsl:when test="following-sibling::leg:officialnum/ci:cite">
               <xsl:for-each select="tokenize(@display-name,'/')">
                   <primlawhist:histgrp>
                       <xsl:attribute name="xml:lang" select="if(position()=1) then 'en-CA' else 'fr-CA'"/>
                       <primlawhist:histitem>
                           <textitem>
                               <xsl:value-of select="normalize-space(.)"/>
                               <xsl:if test="not(contains(.,':'))">
                                   <xsl:text>:</xsl:text>
                               </xsl:if>
                               <xsl:text> </xsl:text>
                               <xsl:value-of select="if(position()=1) then substring-before($legrel,'/') else substring-after($legrel,'/')"/>
                               <xsl:apply-templates select="$legnumcicite"/>
                           </textitem>
                       </primlawhist:histitem>
                   </primlawhist:histgrp>
               </xsl:for-each>
           </xsl:when>
           <xsl:otherwise>
               <primlawhist:histgrp>
                   <xsl:choose>
                       <xsl:when test="not(@display-name) and $streamID='CA03'">
                           <primlawhist:histitem>
                               <textitem>
                                   <xsl:apply-templates select="node()"/>
                               </textitem>
                           </primlawhist:histitem>
                       </xsl:when>
                       <xsl:otherwise>
                           <xsl:for-each select="tokenize(@display-name,'/')">
                               <primlawhist:histitem>
                                   <textitem xml:lang="{if(position()=1) then 'en-CA' else 'fr-CA'}">
                                       <xsl:value-of select="."/>
                                       <xsl:text>:</xsl:text>
                                       <xsl:value-of select="$legrel"/>
                                   </textitem>
                               </primlawhist:histitem>
                           </xsl:for-each>
                       </xsl:otherwise>
                   </xsl:choose>
                   
                   <xsl:apply-templates select="following-sibling::leg:relatedleg" mode="histitem"/>
               </primlawhist:histgrp>
           </xsl:otherwise>
       </xsl:choose>
    </xsl:template>
    
    <xsl:template match="leg:relatedleg" mode="histitem">
        <primlawhist:histitem>
           <textitem>
                <xsl:apply-templates select="node()"/>
           </textitem>
        </primlawhist:histitem>
    </xsl:template>

    <xsl:template match="leg:relatedleg" priority="1"/>

</xsl:stylesheet>