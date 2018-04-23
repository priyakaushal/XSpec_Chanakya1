<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet	version="2.0"
						xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
						xmlns:xs="http://www.w3.org/2001/XMLSchema"
						xmlns:dita="http://dita.oasis-open.org/architecture/2005/"

						exclude-result-prefixes="xs dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="common_target_xml_char_ent">
		<title><sourcexml>XML Character Entities</sourcexml> to <targetxml>Unicode code points</targetxml> <lnpid>id-CCCC-10489</lnpid></title>
		<body>
			<section>
				<title>Instructions</title>
				<p>Throughout these instructions, XML character entities are used in both the source and target
						examples to ensure they are easily viewable in a variety of formats. However, please
						keep in mind that <b><u>all XML character entities in the source files must be
								converted to Unicode code points in the target files.</u></b></p>
				<note>
					<p>Certain XML character entities will be interpreted by the ‘browser’ or
							‘Database’ as code, rather than literal (Unicode exact) character. Therefore, we
							should not convert certain xml character entities to Unicode character. Refer
							the below table for your reference:</p>
					<table id="table_oml_cei_cl">
						<tgroup cols="4">
							<tbody>
								<row>
									<entry align="center">
										<b>XML Character Entity</b>
									</entry>
									<entry align="center">
										<b>Character name</b>
									</entry>
									<entry align="center">
										<b>Transformation Output</b>
									</entry>
									<entry align="left">
										<b> Remarks </b>
									</entry>
								</row>
								<row>
									<entry align="left"> &amp;lt; </entry>
									<entry align="left"> Less-Than Sign </entry>
									<entry align="left"> &amp;lt; </entry>
									<entry/>
								</row>
								<row>
									<entry align="left"> &amp;gt; </entry>
									<entry align="left"> Greater-Than Sign </entry>
									<entry align="left"> &amp;gt; </entry>
									<entry/>
								</row>
								<row>
									<entry align="left"> &amp;amp; </entry>
									<entry align="left"> Ampersand </entry>
									<entry align="left"> &amp;amp; </entry>
									<entry/>
								</row>
								<row>
									<entry align="left"> &amp;apos; </entry>
									<entry align="left"> Apostrophe </entry>
									<entry align="left"> '   </entry>
									<entry align="left">If part of PCDATA this should be converted
										otherwise left as is in case of attribute value.</entry>
								</row>
								<row>
									<entry align="left"> &amp;quot; </entry>
									<entry align="left"> Quotation Mark </entry>
									<entry align="left"> " </entry>
									<entry align="left">If part of PCDATA this should be converted
										otherwise left as is in case of attribute value.</entry>
								</row>
							</tbody>
						</tgroup>
					</table>
				</note>
			</section>

			<section>
				<title>Changes</title>
				<p>2013-08-08: <ph id="change_20130808_xx">This change does not represent a change to
							conversion but rather documentation of the existing behavior.</ph></p>
				<p>2011-12-22: Created.</p>
			</section>

		</body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_XML_Character_Entities-LxAdv-Unicode.dita  -->

	<!--xsl:template match="*/text()[ contains( . , '&apos;' ) or contains( . , '&quot;' ) ]">
		<xsl:variable name="quoteLiterals" as="xs:string">'"</xsl:variable-->

		<!--  Original Target XPath:  Unicodecodepoints   -->
		<!--xsl:value-of select=" translate( . , '&apos;&quot;' , $quoteLiterals ) "/>

	</xsl:template-->

</xsl:stylesheet>