<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet	version="2.0"
						xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
						xmlns:dita="http://dita.oasis-open.org/architecture/2005/"

						xmlns:base="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"
						xmlns:contact="http://www.lexisnexis.com/xmlschemas/content/shared/contact/1/"
						xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/"
						xmlns:location="http://www.lexisnexis.com/xmlschemas/content/shared/location/1/"
						xmlns:person="http://www.lexisnexis.com/xmlschemas/content/shared/person/1/"
						xmlns:pubinfo="http://www.lexisnexis.com/xmlschemas/content/shared/publication-info/1/"

						exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="common_target_empty_elements">
		<title>Suppress each empty element unless otherwise stated <lnpid>id-CCCC-10310</lnpid></title>
		<body>
			<section>
				<title>Instructions</title>
				<p><b>Suppress empty elements unless:</b></p>
				<ol>
					<li> It results in an invalid document. </li>
					<li> It is expressly exempted. </li>
					<li> It has attributes. </li>
				</ol>
				<note>The intent is to suppress meaningless markup (no semantic, formatting or other
					meaning). Not intended to cause re-evaluation of parent elements, i.e. do not go "up
					the tree".</note>
			</section>
			<section>
				<p><b>List of elements to suppress if empty</b></p>
				<ul>
					<li>base:aliased-text</li>
					<li>base:altdesig</li>
					<li>base:alttitle</li>
					<li>base:byline</li>
					<li>base:connector</li>
					<li>base:copyright</li>
					<li>base:copyright-holder</li>
					<li>base:copyright-year</li>
					<li>base:credit</li>
					<li>base:currencystatement</li>
					<li>base:date</li>
					<li>base:date-text</li>
					<li>base:defterm</li>
					<li>base:denom</li>
					<li>base:desig</li>
					<li>base:desigrange</li>
					<li>base:emph</li>
					<li>base:formula</li>
					<li>base:h</li>
					<li>base:inlinenote</li>
					<li>base:label</li>
					<li>base:modified-word</li>
					<li>base:money</li>
					<li>base:num</li>
					<li>base:numer</li>
					<li>base:population</li>
					<li>base:redaction</li>
					<li>base:refnum</li>
					<li>base:role</li>
					<li>base:strike</li>
					<li>base:sub</li>
					<li>base:subtitle</li>
					<li>base:sup</li>
					<li>base:text</li>
					<li>base:textitem</li>
					<li>base:time</li>
					<li>base:title</li>
					<li>base:url</li>
					<li>contact:email</li>
					<li>contact:fax</li>
					<li>contact:phone</li>
					<li>doc:bookseqnum</li>
					<li>doc:processes</li>
					<li>location:address.line</li>
					<li>location:borough</li>
					<li>location:city</li>
					<li>location:country</li>
					<li>location:county</li>
					<li>location:location</li>
					<li>location:po-box</li>
					<li>location:post-office-name</li>
					<li>location:postalcode</li>
					<li>location:province</li>
					<li>location:region</li>
					<li>location:state</li>
					<li>location:street</li>
					<li>location:sublocation</li>
					<li>location:territory</li>
					<li>person:contributor</li>
					<li>person:degreetype</li>
					<li>person:employer</li>
					<li>person:fieldofstudy</li>
					<li>person:name.degree</li>
					<li>person:name.discrim</li>
					<li>person:name.family</li>
					<li>person:name.given</li>
					<li>person:name.honorific</li>
					<li>person:name.maiden</li>
					<li>person:name.mid</li>
					<li>person:name.nickname</li>
					<li>person:name.other</li>
					<li>person:name.prefix</li>
					<li>person:name.suffix</li>
					<li>person:name.text</li>
					<li>pubinfo:aggregationname</li>
					<li>pubinfo:edition</li>
					<li>pubinfo:isbn</li>
					<li>pubinfo:issn</li>
					<li>pubinfo:issue</li>
					<li>pubinfo:issuedate</li>
					<li>pubinfo:lccn</li>
					<li>pubinfo:pubdate</li>
					<li>pubinfo:publength</li>
					<li>pubinfo:publicationname</li>
					<li>pubinfo:publicationnum</li>
					<li>pubinfo:publicationsubtitle</li>
					<li>pubinfo:publisher</li>
					<li>pubinfo:pubunit</li>
					<li>pubinfo:relatedpublicationcite</li>
					<li>pubinfo:update</li>
					<li>pubinfo:volume</li>
				</ul>
			</section>
			<section>
				<title>Changes</title>
				<p>2014-01-16: <ph id="change_20140116_js">Added list of elements to suppress if empty.</ph></p>
				<p>2013-10-14: <ph id="change_20131014_RS">Changed antecedent to singular to match
						instructions.</ph></p>
				<p>2013-03-28: <ph id="change_20130328_SP">Created.</ph></p>
			</section>
		</body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_Elements-LxAdv-Empty_Elements.dita  -->

	<!--xsl:template match="	base:aliased-text[ . = '' ][not( @* )] |
										base:altdesig[ . = '' ][not( @* )] |
										base:alttitle[ . = '' ][not( @* )] |
										base:byline[ . = '' ][not( @* )] |
										base:connector[ . = '' ][not( @* )] |
										base:copyright[ . = '' ][not( @* )] |
										base:copyright-holder[ . = '' ][not( @* )] |
										base:copyright-year[ . = '' ][not( @* )] |
										base:credit[ . = '' ][not( @* )] |
										base:currencystatement[ . = '' ][not( @* )] |
										base:date[ . = '' ][not( @* )] |
										base:date-text[ . = '' ][not( @* )] |
										base:defterm[ . = '' ][not( @* )] |
										base:denom[ . = '' ][not( @* )] |
										base:desig[ . = '' ][not( @* )] |
										base:desigrange[ . = '' ][not( @* )] |
										base:emph[ . = '' ][not( @* )] |
										base:formula[ . = '' ][not( @* )] |
										base:h[ . = '' ][not( @* )] |
										base:inlinenote[ . = '' ][not( @* )] |
										base:label[ . = '' ][not( @* )] |
										base:modified-word[ . = '' ][not( @* )] |
										base:money[ . = '' ][not( @* )] |
										base:num[ . = '' ][not( @* )] |
										base:numer[ . = '' ][not( @* )] |
										base:population[ . = '' ][not( @* )] |
										base:redaction[ . = '' ][not( @* )] |
										base:refnum[ . = '' ][not( @* )] |
										base:role[ . = '' ][not( @* )] |
										base:strike[ . = '' ][not( @* )] |
										base:sub[ . = '' ][not( @* )] |
										base:subtitle[ . = '' ][not( @* )] |
										base:sup[ . = '' ][not( @* )] |
										base:text[ . = '' ][not( @* )] |
										base:textitem[ . = '' ][not( @* )] |
										base:time[ . = '' ][not( @* )] |
										base:title[ . = '' ][not( @* )] |
										base:url[ . = '' ][not( @* )] |
										contact:email[ . = '' ][not( @* )] |
										contact:fax[ . = '' ][not( @* )] |
										contact:phone[ . = '' ][not( @* )] |
										doc:bookseqnum[ . = '' ][not( @* )] |
										doc:processes[ . = '' ][not( @* )] |
										location:address.line[ . = '' ][not( @* )] |
										location:borough[ . = '' ][not( @* )] |
										location:city[ . = '' ][not( @* )] |
										location:country[ . = '' ][not( @* )] |
										location:county[ . = '' ][not( @* )] |
										location:location[ . = '' ][not( @* )] |
										location:po-box[ . = '' ][not( @* )] |
										location:post-office-name[ . = '' ][not( @* )] |
										location:postalcode[ . = '' ][not( @* )] |
										location:province[ . = '' ][not( @* )] |
										location:region[ . = '' ][not( @* )] |
										location:state[ . = '' ][not( @* )] |
										location:street[ . = '' ][not( @* )] |
										location:sublocation[ . = '' ][not( @* )] |
										location:territory[ . = '' ][not( @* )] |
										person:contributor[ . = '' ][not( @* )] |
										person:degreetype[ . = '' ][not( @* )] |
										person:employer[ . = '' ][not( @* )] |
										person:fieldofstudy[ . = '' ][not( @* )] |
										person:name.degree[ . = '' ][not( @* )] |
										person:name.discrim[ . = '' ][not( @* )] |
										person:name.family[ . = '' ][not( @* )] |
										person:name.given[ . = '' ][not( @* )] |
										person:name.honorific[ . = '' ][not( @* )] |
										person:name.maiden[ . = '' ][not( @* )] |
										person:name.mid[ . = '' ][not( @* )] |
										person:name.nickname[ . = '' ][not( @* )] |
										person:name.other[ . = '' ][not( @* )] |
										person:name.prefix[ . = '' ][not( @* )] |
										person:name.suffix[ . = '' ][not( @* )] |
										person:name.text[ . = '' ][not( @* )] |
										pubinfo:aggregationname[ . = '' ][not( @* )] |
										pubinfo:edition[ . = '' ][not( @* )] |
										pubinfo:isbn[ . = '' ][not( @* )] |
										pubinfo:issn[ . = '' ][not( @* )] |
										pubinfo:issue[ . = '' ][not( @* )] |
										pubinfo:issuedate[ . = '' ][not( @* )] |
										pubinfo:lccn[ . = '' ][not( @* )] |
										pubinfo:pubdate[ . = '' ][not( @* )] |
										pubinfo:publength[ . = '' ][not( @* )] |
										pubinfo:publicationname[ . = '' ][not( @* )] |
										pubinfo:publicationnum[ . = '' ][not( @* )] |
										pubinfo:publicationsubtitle[ . = '' ][not( @* )] |
										pubinfo:publisher[ . = '' ][not( @* )] |
										pubinfo:pubunit[ . = '' ][not( @* )] |
										pubinfo:relatedpublicationcite[ . = '' ][not( @* )] |
										pubinfo:update[ . = '' ][not( @* )] |
										pubinfo:volume[ . = '' ][not( @* )]"/-->

</xsl:stylesheet>