<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:admindoc="urn:x-lexisnexis:content:administrative-document:sharedservices:1" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="admindoc_standardCI_leg.prelim">
	<title>leg:prelim <lnpid>id-ST08-31622</lnpid></title>
	<body>
		<section>
			<ul>
				<li>
					<sourcexml>leg:prelim</sourcexml>
					<b>becomes</b>
					<targetxml>admindoc:level[@leveltype="unclassified"]/admindoc:prelim</targetxml>. <pre>
             <b><i>Example: Source XML 1</i></b>

&lt;leg:prelim&gt;
	&lt;heading&gt;&lt;title&gt;INTRODUCTION TO ANNOTATIONS&lt;/title&gt;&lt;/heading&gt;
	&lt;p&gt;&lt;text&gt;The following annotations to the Conveyancing Act are compiled on...&lt;/text&gt;&lt;/p&gt;
	...
&lt;/leg:prelim&gt;


</pre>
					<pre>

             <b><i>Example: Target XML 1</i></b>


&lt;admindoc:level leveltype="unclassified"&gt;
	&lt;admindoc:prelim&gt;
			&lt;heading&gt;
				&lt;title&gt;INTRODUCTION TO ANNOTATIONS&lt;/title&gt;
			&lt;/heading&gt;
	&lt;p&gt;&lt;text&gt;The following annotations to the Conveyancing Act are compiled on...&lt;/text&gt;&lt;/p&gt;
	...	
	&lt;/admindoc:prelim&gt;
&lt;/admindoc:level&gt;

           </pre>
				</li>

				<li>
					<sourcexml>leg:prelim/leg:history</sourcexml>
					<b>becomes</b>
					<targetxml>admindoc:level[@leveltype="unclassified"]/admindoc:prelim/admindoc:histgrp/admindoc:histitem</targetxml>
					and child elements are converted using the rule below: <ul class="- topic/ul ">
						<li>
							<sourcexml>leg:heading</sourcexml>
							<b>becomes</b>
							<targetxml>heading</targetxml>
						</li>
						<li>
							<sourcexml>title</sourcexml>
							<b>becomes</b>
							<targetxml>title</targetxml>
						</li>
						<li>If input is having <sourcexml>leg:history/p/text</sourcexml>
							<b>becomes</b>
							<targetxml>admindoc:histgrp/admindoc:histitem/bodytext/p/text</targetxml>
						</li>
						<li>If input is having
								<sourcexml>leg:history/leg:tableofamend/table</sourcexml>
							<b>becomes</b>
							<targetxml>admindoc:histgrp/admindoc:histgrp[@grptype="tableofamend"]/admindoc:histitem/bodytext/table</targetxml>
						</li>
					</ul>
					<pre>
             <b><i>Example: Source XML 1</i></b>

&lt;leg:prelim&gt;
	&lt;leg:history&gt;
		&lt;leg:heading&gt;&lt;title&gt;History of Amendments&lt;/title&gt;&lt;/leg:heading&gt;
		&lt;p&gt;&lt;text&gt;The Credit Reporting Code of Conduct... has been amended by:&lt;/text&gt;&lt;/p&gt;
		&lt;leg:tableofamend&gt;
			&lt;table&gt;
				&lt;tgroup cols="2" colsep="0" rowsep="0"&gt;
					&lt;colspec colwidth="50*" colname="c1" align="left" colnum="1"/&gt;
					&lt;colspec colwidth="50*" colname="c2" align="left" colnum="2"/&gt;
					&lt;thead&gt;
						&lt;row&gt;
							&lt;entry colname="c1"&gt;&lt;emph typestyle="bf"&gt;Amending Legislation&lt;/emph&gt;&lt;/entry&gt;
							&lt;entry colname="c2"&gt;&lt;emph typestyle="bf"&gt;Date of Commencement&lt;/emph&gt;&lt;/entry&gt;
						&lt;/row&gt;
					&lt;/thead&gt;
					&lt;tbody&gt;
						&lt;row&gt;
							&lt;entry colname="c1"&gt;Commonwealth Gazette s&amp;nbsp;82, 9 March 1995&lt;/entry&gt;
							&lt;entry colname="c2"&gt;27 March 1995&lt;/entry&gt;
						&lt;/row&gt;
					&lt;/tbody&gt;
				&lt;/tgroup&gt;
			&lt;/table&gt;
		&lt;/leg:tableofamend&gt;
	&lt;/leg:history&gt;
&lt;/leg:prelim&gt;



</pre>
					<pre>
             <b><i>Example: Target XML 1</i></b>


&lt;admindoc:prelim leveltype="unclassified"&gt;
  &lt;admindoc:prelim&gt;
	&lt;admindoc:histgrp&gt;
		&lt;heading&gt;&lt;title&gt;History of Amendments&lt;/title&gt;&lt;/heading&gt;
			&lt;admindoc:histitem&gt;
				&lt;bodytext&gt;
					&lt;p&gt;&lt;text&gt;The Credit Reporting Code of Conduct... has been amended by:&lt;/text&gt;&lt;/p&gt;
				&lt;/bodytext&gt;
			&lt;/admindoc:histitem&gt;
		&lt;admindoc:histgrp grptype="tableofamend"&gt;
			&lt;admindoc:histitem&gt;
				&lt;bodytext&gt;
					&lt;table&gt;
						&lt;tgroup cols="2" colsep="0" rowsep="0"&gt;
							&lt;colspec colwidth="50*" colname="c1" align="left" colnum="1"/&gt;
							&lt;colspec colwidth="50*" colname="c2" align="left" colnum="2"/&gt;
							&lt;thead&gt;
								&lt;row&gt;
									&lt;entry colname="c1"&gt;&lt;emph typestyle="bf"&gt;Amending Legislation&lt;/emph&gt;&lt;/entry&gt;
									&lt;entry colname="c2"&gt;&lt;emph typestyle="bf"&gt;Date of Commencement&lt;/emph&gt;&lt;/entry&gt;
								&lt;/row&gt;
							&lt;/thead&gt;
							&lt;tbody&gt;
								&lt;row&gt;
									&lt;entry colname="c1"&gt;Commonwealth Gazette s&amp;nbsp;82, 9 March 1995&lt;/entry&gt;
									&lt;entry colname="c2"&gt;27 March 1995&lt;/entry&gt;
								&lt;/row&gt;
							&lt;/tbody&gt;
						&lt;/tgroup&gt;
					&lt;/table&gt;
				&lt;/bodytext&gt;
			&lt;/admindoc:histitem&gt;
		&lt;/admindoc:histgrp&gt;
	 &lt;/admindoc:histgrp&gt;
  &lt;/admindoc:prelim&gt;
&lt;/admindoc:level&gt;

</pre>
				</li>


				<li>
					<sourcexml>leg:prelim/leg:comntry</sourcexml>
					<b>becomes</b>
					<targetxml>admindoc:level[@leveltype="unclassified"]/admindoc:prelim/annot:annotations/annot:annotation-grp</targetxml>
					with optional attributes converted as: <ul>
						<li>
							<sourcexml>@subdoc</sourcexml>
							<b>becomes</b>
							<targetxml>@includeintoc</targetxml>
						</li>
						<li>
							<sourcexml>@toc-caption</sourcexml>
							<b>becomes</b>
							<targetxml>@alternatetoccaption</targetxml>
						</li>
					</ul>
					<pre>
             <b><i>Example: Source XML 1</i></b>

&lt;leg:prelim&gt;
	&lt;leg:comntry&gt;
		.....
	&lt;/leg:comntry&gt;
&lt;/leg:prelim&gt;


</pre>
					<pre>

             <b><i>Example: Target XML 1</i></b>


&lt;admindoc:level leveltype="unclassified"&gt;
	&lt;admindoc:prelim&gt;
		&lt;annot:annotations&gt;
			&lt;annot:annotation-grp&gt;
			   .....
			&lt;/annot:annotation-grp&gt;
		&lt;/annot:annotations&gt;
	&lt;/admindoc:prelim&gt;
&lt;/admindoc:level&gt;

								</pre>
				</li>
			</ul>
		</section>
	</body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-Standard\Admindoc\admindoc_standardCI_leg.prelim.dita  -->
	<xsl:message>admindoc_standardCI_leg.prelim.xsl requires manual development!</xsl:message> 

	<xsl:template match="leg:prelim">

		<!--  Original Target XPath:  admindoc:level[@leveltype="unclassified"]/admindoc:prelim   -->
		<admindoc:level>
			<admindoc:prelim>
				<xsl:apply-templates select="@* | node()"/>
			</admindoc:prelim>
		</admindoc:level>

	</xsl:template>

	<xsl:template match="leg:prelim/leg:history">

		<!--  Original Target XPath:  admindoc:level[@leveltype="unclassified"]/admindoc:prelim/admindoc:histgrp/admindoc:histitem   -->
		<admindoc:level>
			<admindoc:prelim>
				<admindoc:histgrp>
					<admindoc:histitem>
						<xsl:apply-templates select="@* | node()"/>
					</admindoc:histitem>
				</admindoc:histgrp>
			</admindoc:prelim>
		</admindoc:level>

	</xsl:template>

	<xsl:template match="leg:heading">

		<!--  Original Target XPath:  heading   -->
		<heading>
			<xsl:apply-templates select="@* | node()"/>
		</heading>

	</xsl:template>

	<xsl:template match="title">

		<!--  Original Target XPath:  title   -->
		<title>
			<xsl:apply-templates select="@* | node()"/>
		</title>

	</xsl:template>

	<xsl:template match="leg:history/p/text">

		<!--  Original Target XPath:  admindoc:histgrp/admindoc:histitem/bodytext/p/text   -->
		<admindoc:histgrp>
			<admindoc:histitem>
				<bodytext>
					<p>
						<text>
							<xsl:apply-templates select="@* | node()"/>
						</text>
					</p>
				</bodytext>
			</admindoc:histitem>
		</admindoc:histgrp>

	</xsl:template>

	<xsl:template match="leg:history/leg:tableofamend/table">

		<!--  Original Target XPath:  admindoc:histgrp/admindoc:histgrp[@grptype="tableofamend"]/admindoc:histitem/bodytext/table   -->
		<admindoc:histgrp>
			<admindoc:histgrp>
				<admindoc:histitem>
					<bodytext>
						<table>
							<xsl:apply-templates select="@* | node()"/>
						</table>
					</bodytext>
				</admindoc:histitem>
			</admindoc:histgrp>
		</admindoc:histgrp>

	</xsl:template>

	<xsl:template match="leg:prelim/leg:comntry">

		<!--  Original Target XPath:  admindoc:level[@leveltype="unclassified"]/admindoc:prelim/annot:annotations/annot:annotation-grp   -->
		<admindoc:level>
			<admindoc:prelim>
				<annot:annotations xmlns:annot="http://www.lexisnexis.com/xmlschemas/content/shared/annotations/1/">
					<annot:annotation-grp>
						<xsl:apply-templates select="@* | node()"/>
					</annot:annotation-grp>
				</annot:annotations>
			</admindoc:prelim>
		</admindoc:level>

	</xsl:template>

	<xsl:template match="@subdoc">

		<!--  Original Target XPath:  @includeintoc   -->
		<xsl:attribute name="includeintoc">
			<xsl:apply-templates select="node()"/>
		</xsl:attribute>

	</xsl:template>

	<xsl:template match="@toc-caption">

		<!--  Original Target XPath:  @alternatetoccaption   -->
		<xsl:attribute name="alternatetoccaption">
			<xsl:apply-templates select="node()"/>
		</xsl:attribute>

	</xsl:template>

</xsl:stylesheet>