<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/"  xmlns:source_cttr="http://www.lexis-nexis.com/glp/cttr"
    xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"    xmlns:cttr="urn:x-lexisnexis:content:citator:sharedservices:1" xmlns:primlawhist="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-history/1/" version="2.0" exclude-result-prefixes="dita cttr source_cttr">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="citator-annotsummary">
	<title>cttr:annotsummary to <b>primlawhist:histitem</b>
		<lnpid>id-CA03-13237</lnpid></title>
	<body>
		<section>
			<title>Instructions</title>
			<p><sourcexml>cttr:annotsummary</sourcexml>, becomes
					<targetxml>primlawhist:histitem/bodytext</targetxml>.</p>
			<p><sourcexml>cttr:annotsummary-list/cttr:annot-list</sourcexml> and the markup within becomes
					<targetxml>table</targetxml> with three columns.</p>
				<note>This instruction assumes the source markup contains a list of
						<sourcexml>cttr:annot-item</sourcexml> elements where each has a usage signal
						(<sourcexml>cttr:use/@signal</sourcexml>), usage text (<sourcexml>cttr:use
					</sourcexml>), and a number (<sourcexml>cttr:use-text/num</sourcexml>).</note>
			<p>Create a three column table with <targetxml>thead</targetxml> containing the following headings: 'Signal', Usage', and 'Number'.</p>
			<p><sourcexml>cttr:annot-item</sourcexml>, becomes <targetxml>row</targetxml>. In each row,
				create 3 table cells as follows: <ul>
					<li><sourcexml>cttr:use/@signal</sourcexml>, becomes
							<targetxml>entry[1]</targetxml></li>
					<li><sourcexml>cttr:use </sourcexml> becomes
						<targetxml>entry[2]</targetxml></li>
					<li><sourcexml>cttr:use-text/num</sourcexml> becomes
							<targetxml>entry[3]</targetxml></li>
				</ul></p>
			
		</section>
		<example>
			<title>Source XML</title>
			<codeblock>
&lt;cttr:annotsummary&gt;
    &lt;cttr:annotsummary-list&gt;
        &lt;cttr:annot-list&gt;
            &lt;cttr:annot-item&gt;
                &lt;cttr:use signal="positive"&gt;Followed/Suivi&lt;/cttr:use&gt;
                &lt;cttr:use-text&gt;
                    &lt;num&gt;85&lt;/num&gt;
                &lt;/cttr:use-text&gt;
            &lt;/cttr:annot-item&gt;
            &lt;cttr:annot-item&gt;
                &lt;cttr:use signal="positive"&gt;Followed in minority opinion/Suivi par
                    une minorité&lt;/cttr:use&gt;
                &lt;cttr:use-text&gt;
                    &lt;num&gt;3&lt;/num&gt;
                &lt;/cttr:use-text&gt;
            &lt;/cttr:annot-item&gt;
            &lt;cttr:annot-item&gt;
                &lt;cttr:use signal="cautionary"&gt;Distinguished/Distingué&lt;/cttr:use&gt;
                &lt;cttr:use-text&gt;
                    &lt;num&gt;37&lt;/num&gt;
                &lt;/cttr:use-text&gt;
            &lt;/cttr:annot-item&gt;
            &lt;cttr:annot-item&gt;
                &lt;cttr:use signal="neutral"&gt;Explained/Expliqué&lt;/cttr:use&gt;
                &lt;cttr:use-text&gt;
                    &lt;num&gt;89&lt;/num&gt;
                &lt;/cttr:use-text&gt;
            &lt;/cttr:annot-item&gt;
            &lt;cttr:annot-item&gt;
                &lt;cttr:use signal="neutral"&gt;Mentioned/Mentionné&lt;/cttr:use&gt;
                &lt;cttr:use-text&gt;
                    &lt;num&gt;1073&lt;/num&gt;
                &lt;/cttr:use-text&gt;
            &lt;/cttr:annot-item&gt;
            &lt;cttr:annot-item&gt;
                &lt;cttr:use signal="neutral"&gt;Cited in dissenting
                    opinion/Dissident&lt;/cttr:use&gt;
                &lt;cttr:use-text&gt;
                    &lt;num&gt;100&lt;/num&gt;
                &lt;/cttr:use-text&gt;
            &lt;/cttr:annot-item&gt;
            &lt;cttr:annot-item&gt;
                &lt;cttr:use signal="neutral"&gt;Cited/Cité&lt;/cttr:use&gt;
                &lt;cttr:use-text&gt;
                    &lt;num&gt;81&lt;/num&gt;
                &lt;/cttr:use-text&gt;
            &lt;/cttr:annot-item&gt;
        &lt;/cttr:annot-list&gt;
    &lt;/cttr:annotsummary-list&gt;
&lt;/cttr:annotsummary&gt;
               </codeblock>
			<title>Target XML</title>
			<codeblock>
&lt;primlawhist:histitem&gt;
    &lt;bodytext&gt;
        &lt;table&gt;
            &lt;tgroup cols="3"&gt;
                &lt;thead&gt;
                    &lt;row&gt;
                        &lt;entry&gt;Signal&lt;/entry&gt;
                        &lt;entry&gt;Usage&lt;/entry&gt;
                        &lt;entry&gt;Number&lt;/entry&gt;
                    &lt;/row&gt;
                &lt;/thead&gt;
                &lt;tbody&gt;
                    &lt;row&gt;
                        &lt;entry&gt;positive&lt;/entry&gt;
                        &lt;entry&gt;Followed/Suivi&lt;/entry&gt;
                        &lt;entry&gt;85&lt;/entry&gt;
                    &lt;/row&gt;
                    &lt;row&gt;
                        &lt;entry&gt;positive&lt;/entry&gt;
                        &lt;entry&gt;Followed in minority opinion/Suivi par
                            une minorité&lt;/entry&gt;
                        &lt;entry&gt;3&lt;/entry&gt;
                    &lt;/row&gt;
                    &lt;row&gt;
                        &lt;entry&gt;cautionary&lt;/entry&gt;
                        &lt;entry&gt;Distinguished/Distingué&lt;/entry&gt;
                        &lt;entry&gt;37&lt;/entry&gt;
                    &lt;/row&gt;
                    &lt;row&gt;
                        &lt;entry&gt;neutral&lt;/entry&gt;
                        &lt;entry&gt;Explained/Expliqué&lt;/entry&gt;
                        &lt;entry&gt;89&lt;/entry&gt;
                    &lt;/row&gt;
                    &lt;row&gt;
                        &lt;entry&gt;neutral&lt;/entry&gt;
                        &lt;entry&gt;Mentioned/Mentionné&lt;/entry&gt;
                        &lt;entry&gt;1073&lt;/entry&gt;
                    &lt;/row&gt;
                    &lt;row&gt;
                        &lt;entry&gt;neutral&lt;/entry&gt;
                        &lt;entry&gt;Cited in dissenting
                            opinion/Dissident&lt;/entry&gt;
                        &lt;entry&gt;100&lt;/entry&gt;
                    &lt;/row&gt;
                    &lt;row&gt;
                        &lt;entry&gt;neutral&lt;/entry&gt;
                        &lt;entry&gt;Cited/Cité&lt;/entry&gt;
                        &lt;entry&gt;81&lt;/entry&gt;
                    &lt;/row&gt;
                &lt;/tbody&gt;
            &lt;/tgroup&gt;
        &lt;/table&gt;
    &lt;/bodytext&gt;
&lt;/primlawhist:histitem&gt;
  
      </codeblock>
		</example>
		<section>
			<title>Changes</title>
			<p>2014-05-30: <ph id="change_20140530_brt">Created this topic to describe the conversion of
                        <sourcexml>cttr:annotsummary</sourcexml>. Addresses P4 issue #189</ph>
            </p>
		</section>
	</body>
	</dita:topic>


	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA03-Citator\Rosetta_cttr.annotsummary-to-LxAdv_primlawhist.histitem.dita  -->
<!-- Sudhanshu Srivastava : Initially drafted this module on 25 May 2017. If changes required , please update accordingly. -->

    <xsl:template match="source_cttr:annotsummary">
		<!--  Original Target XPath:  primlawhist:histitem/bodytext   -->
		<primlawhist:histitem>
			<bodytext>
				<xsl:apply-templates select="@* | node()"/>
			</bodytext>
		</primlawhist:histitem>

	</xsl:template>


    <xsl:template match="source_cttr:annotsummary-list">
        <xsl:apply-templates/>
    </xsl:template>


    <xsl:template match="source_cttr:annot-list"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  table   -->
		<table>
		    <tgroup cols="3">
		        <thead>
		            <row>
		                <entry>Signal</entry>
		                <entry>Usage</entry>
		                <entry>Number</entry>
		            </row>
		        </thead>
		        <tbody>
			<xsl:apply-templates select="@* | node()"/>
		        </tbody>
		    </tgroup>
		</table>

	</xsl:template>

    <xsl:template match="source_cttr:annot-item"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->
		<!--  Original Target XPath:  thead   -->
		<row>
		    <entry><xsl:value-of select="source_cttr:use/@signal"/></entry>
		    <entry><xsl:value-of select="source_cttr:use"/></entry>
		    <entry><xsl:value-of select="source_cttr:use-text/num"/></entry>
		</row>
	</xsl:template>
</xsl:stylesheet>