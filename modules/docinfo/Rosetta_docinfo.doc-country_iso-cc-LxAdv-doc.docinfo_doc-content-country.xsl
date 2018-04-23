<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet	version="2.0"
						xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
						xmlns:dita="http://dita.oasis-open.org/architecture/2005/"

						xmlns:case="http://www.lexis-nexis.com/glp/case"
						xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo"

						exclude-result-prefixes="dita case docinfo">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_docinfo.doc-country.iso-cc-to-LexisAdvance_doc.docinfo_doc-content-country">
		<title><sourcexml>docinfo:doc-country[@iso-cc]</sourcexml> to <targetxml>doc:docinfo[@doc-content-country]</targetxml>
			<lnpid>id-CCCC-10291</lnpid></title>
		<body>
			<section>
				<title>Instructions <i>[common element]</i></title>
				<p><sourcexml>docinfo:doc-country[@iso-cc]</sourcexml> becomes <targetxml>doc:docinfo[@doc-content-country]</targetxml>. </p>
				<p>If <sourcexml>docinfo:doc-country[@iso-cc="AU"]</sourcexml>, check the value of <sourcexml>case:headnote/case:info/case:courtinfo//case:juris</sourcexml>. If
						<sourcexml>case:juris="NZ"</sourcexml>, set <targetxml>doc:docinfo[@doc-content-country="NZ"]</targetxml>.<note>@doc-content-country is required.</note>
					<note><sourcexml>docinfo:doc-country[@iso-cc]</sourcexml> is used to specify the country in the source document and also becomes part of <targetxml>@xml:id</targetxml> as described in
						the instructions for <xref href="Rosetta_docinfo.doc-lang-and-doc-country-LxAdv-ROOT_xml.lang.dita">Target @xml:lang</xref>.</note>
				</p>
			</section>

			<example>
				<title>Source XML</title>
				<codeblock>
	&lt;docinfo&gt;
			  ....
		   &lt;docinfo:doc-country iso-cc="AU"/&gt;
		   ....
		   &lt;/docinfo&gt;


		</codeblock>
			</example>

			<example>
				<title>Target XML</title>
				<codeblock>
&lt;doc:docinfo doc-content-country="AU"&gt;
         ...
        &lt;/doc:docinfo&gt;


		</codeblock>
			</example>

			<example>
				<title>Source XML - AU example with case:juris="NZ"</title>
				<codeblock>


&lt;CITATORDOC&gt;
 &lt;docinfo&gt;
   ....
   &lt;docinfo:doc-country iso-cc="AU"/&gt;
    ....
 &lt;/docinfo&gt;
 &lt;cttr:body&gt;
    &lt;case:headnote&gt;
        &lt;case:info&gt;
        ...........
            &lt;case:courtinfo&gt;
            .........
                 &lt;case:juris ln.user-displayed="false"&gt;NZ&lt;/case:juris&gt;
            &lt;/case:courtinfo&gt;
        &lt;/case:info&gt;
    &lt;/case:headnote&gt;
  &lt;/cttr:body&gt;
&lt;/CITATORDOC&gt;

		</codeblock>
			</example>

			<example>
				<title>Target XML - AU example with case:juris="NZ" </title>
				<codeblock>
&lt;doc:docinfo doc-content-country="NZ"&gt;
         ...
        &lt;/doc:docinfo&gt;


		</codeblock>
			</example>

			<example>
				<title>Source XML</title>
				<codeblock>
&lt;docinfo&gt;
          ....
       &lt;docinfo:doc-country iso-cc="CA"/&gt;
       ....
       &lt;/docinfo&gt;


		</codeblock>
			</example>

			<example>
				<title>Target XML</title>
				<codeblock>
&lt;doc:docinfo doc-content-country="CA"&gt;
         ...
        &lt;/doc:docinfo&gt;


		</codeblock>
			</example>

			<example>
				<title>Source XML - Example for UK Content</title>
				<codeblock>
&lt;docinfo&gt;
          ....
       &lt;docinfo:doc-country iso-cc="GB"/&gt;
       ....
       &lt;/docinfo&gt;


		</codeblock>
			</example>

			<example>
				<title>Target XML - Example for UK Content</title>
				<codeblock>
&lt;doc:docinfo doc-content-country="GB"&gt;
         ...
        &lt;/doc:docinfo&gt;


				</codeblock>
			</example>
			<section>
				<title>Changes</title>
				<p>2014-11-13: Example added for AU content with <sourcexml>case:juris="NZ"</sourcexml>.</p>
				<p>2012-10-05: Example added for UK content.</p>
			</section>
		</body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_docinfo.doc-country_iso-cc-LxAdv-doc.docinfo_doc-content-country.dita  -->

	<xsl:template name="doc_content_country">
		<!-- This template creates @doc-content-country from doc-country 
                    however there is an NZ special case -->
		<!-- 2017-10-03 - MDS: Added handling for $streamID starts with 'HK' -->
		<!-- Awantika: 2017-10-11: added streamID HK in else to replace AU(which is given in input) -->
		<xsl:attribute name="doc-content-country" select="	if (//docinfo:doc-country/@iso-cc = 'AU' or ($streamID='AU08')) then
																						if (//case:headnote/case:info/case:courtinfo//case:juris = 'NZ') then
																							'NZ'
																						else																						
																						if(starts-with($streamID, 'HK'))then 'HK' else 'AU'
																							else
																								if(starts-with($streamID, 'HK')) then 
																									if (//docinfo:doc-country/@iso-cc) then //docinfo:doc-country/@iso-cc
																									else 'HK'
																								else
																								//docinfo:doc-country/@iso-cc "/>

	</xsl:template>
	<!--  un-comment out the following template rule to perform unit testing via XSpec file   -->
	<!--xsl:template match="docinfo">
		<test>
			<xsl:call-template name="doc_content_country"/>
		</test>
	</xsl:template-->

</xsl:stylesheet>