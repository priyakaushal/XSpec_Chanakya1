<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet	version="2.0"
						xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
						xmlns:dita="http://dita.oasis-open.org/architecture/2005/"

						xmlns:case="http://www.lexis-nexis.com/glp/case"
						xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo"

						exclude-result-prefixes="dita case docinfo">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_docinfo.doc-lang-to-LexisAdvance_Target_root_element.xmllang">
		<title><sourcexml>docinfo:doc-lang[@lang]</sourcexml> to <targetxml>RootElement[@xml:lang]</targetxml>
			<lnpid>id-CCCC-10295</lnpid></title>
		<body>
			<section>
				<title>Instructions <i>[common element]</i></title>
				<p>Since <targetxml>dc:language</targetxml> is not used, <sourcexml>docinfo:doc-lang[@lang]</sourcexml> only becomes part of <targetxml>@xml:lang</targetxml> as described in <xref href="Rosetta_docinfo.doc-lang-and-doc-country-LxAdv-ROOT_xml.lang.dita">Target @xml:lang</xref> and is otherwise suppressed. </p>
			</section>
			<section>
				<title>Changes</title>
			</section>
		</body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_docinfo.doc-lang-LxAdv-ROOT_xmllang.dita  -->

	<xsl:template name="xml_lang">
		<!-- This template creates @xml:lang from doc-lang and doc-country 
                    however there is an NZ special case -->
		<!-- 2017-10-03 - MDS: Added handling for $streamID starts with 'HK' -->
		<xsl:attribute name="xml:lang" select=" concat( 	//docinfo:doc-lang/@lang ,
																				'-' ,
																				if (//docinfo:doc-country/@iso-cc = 'AU' or ($streamID='AU08')) then
																					if (//case:headnote/case:info/case:courtinfo//case:juris = 'NZ') then
																						'NZ'
																					else
																						'AU'
																				else
																				  if(starts-with($streamID, 'HK')) then 
																				  	if (//docinfo:doc-country/@iso-cc) then //docinfo:doc-country/@iso-cc
																				  	else 'HK'
																				  else
																					//docinfo:doc-country/@iso-cc
																			) "/>

	</xsl:template>
	<!--  un-comment out the following template rule to perform unit testing via XSpec file   -->
	<!--xsl:template match="docinfo">
		<test>
			<xsl:call-template name="xml_lang"/>
		</test>
	</xsl:template-->

</xsl:stylesheet>