<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:form="http://www.lexisnexis.com/xmlschemas/content/shared/form/1/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="admindoc_standardCI_form">
	<title>form <lnpid>id-ST08-31609</lnpid></title>
	<body>
		<section>
			<ul>
				<li class="- topic/li ">
					<sourcexml>form</sourcexml>
					<b>becomes</b>
					<targetxml>form:form</targetxml> with required child as
						<targetxml>form:form/form:document</targetxml> with attribute values
						<targetxml>@annotated="false"</targetxml>,
						<targetxml>@official="true"</targetxml> and
						<targetxml>@typeofdoc="unnamed"</targetxml>
					<sourcexml>form/bodytext</sourcexml>
					<b>becomes</b>
					<targetxml>form:form/form:document/form:bodytext</targetxml> The child element
					of form includes: <ul class="- topic/ul ">
						<li class="- topic/li ">
							<sourcexml>form/h</sourcexml>
							<b>becomes</b>
							<targetxml>form:form/form:document/form:bodytext/form:h</targetxml>
						</li>
						<li class="- topic/li ">
							<sourcexml>form/p</sourcexml>
							<b>becomes</b>
							<targetxml>form:form/form:document/form:bodytext/form:p</targetxml>
						</li>
						<li class="- topic/li ">
							<sourcexml>form/p/text</sourcexml>
							<b>becomes</b>
							<targetxml>form:form/form:document/form:bodytext/form:p/form:text</targetxml>
						</li>
					</ul>
					<pre xml:space="preserve" class="- topic/pre ">
				<b><i>Example: Source XML 1</i></b>
     
&lt;form&gt;
	&lt;bodytext searchtype="FORM"&gt;
		&lt;table colsep="0" rowsep="0"&gt;
			&lt;tgroup colsep="0" rowsep="0" cols="14"&gt;
				&lt;colspec colwidth="332*" colname="col1" colnum="1"/&gt;
				&lt;colspec colwidth="148*" colname="col2" colnum="2"/&gt;
				&lt;colspec colwidth="336*" colname="col3" colnum="3"/&gt;
				&lt;colspec colwidth="162*" colname="col4" colnum="4"/&gt;
				&lt;colspec colwidth="88*" colname="col5" colnum="5"/&gt;
				&lt;colspec colwidth="8*" colname="col6" colnum="6"/&gt;
				&lt;colspec colwidth="33*" colname="col7" colnum="7"/&gt;
				&lt;colspec colwidth="78*" colname="col8" colnum="8"/&gt;
				&lt;colspec colwidth="48*" colname="col9" colnum="9"/&gt;
				&lt;colspec colwidth="1*" colname="col10" colnum="10"/&gt;
				&lt;colspec colwidth="13*" colname="col11" colnum="11"/&gt;
				&lt;colspec colwidth="52*" colname="col12" colnum="12"/&gt;
				&lt;colspec colwidth="88*" colname="col13" colnum="13"/&gt;
				&lt;colspec colwidth="8*" colname="col14" colnum="14"/&gt;
				&lt;tbody&gt;
					&lt;row&gt;
						&lt;entry valign="bottom" namest="col1" nameend="col11"&gt;&lt;emph typestyle="bf"&gt;Australian Securities&lt;/emph&gt;&lt;/entry&gt;
						&lt;entry valign="top" namest="col2" nameend="col4"&gt;&lt;emph typestyle="bf"&gt;&amp;nbsp;&lt;/emph&gt;&lt;/entry&gt;
					&lt;/row&gt;
					...
				&lt;/tbody&gt;
			&lt;/tgroup&gt;
		&lt;/table&gt;
	&lt;/bodytext&gt;
&lt;/form&gt;

	</pre>
					<pre xml:space="preserve" class="- topic/pre "> 
				<b><i>Example: Target XML 1</i></b>

&lt;form:form&gt;
	&lt;form:document annotated="false" official="true" typeofdoc="unnamed"&gt;
		&lt;form:bodytext&gt;
			&lt;table colsep="0" rowsep="0"&gt;
				&lt;tgroup colsep="0" rowsep="0" cols="14"&gt;
					&lt;colspec colwidth="332*" colname="col1" colnum="1"/&gt;
					&lt;colspec colwidth="148*" colname="col2" colnum="2"/&gt;
					&lt;colspec colwidth="336*" colname="col3" colnum="3"/&gt;
					&lt;colspec colwidth="162*" colname="col4" colnum="4"/&gt;
					&lt;colspec colwidth="88*" colname="col5" colnum="5"/&gt;
					&lt;colspec colwidth="8*" colname="col6" colnum="6"/&gt;
					&lt;colspec colwidth="33*" colname="col7" colnum="7"/&gt;
					&lt;colspec colwidth="78*" colname="col8" colnum="8"/&gt;
					&lt;colspec colwidth="48*" colname="col9" colnum="9"/&gt;
					&lt;colspec colwidth="1*" colname="col10" colnum="10"/&gt;
					&lt;colspec colwidth="13*" colname="col11" colnum="11"/&gt;
					&lt;colspec colwidth="52*" colname="col12" colnum="12"/&gt;
					&lt;colspec colwidth="88*" colname="col13" colnum="13"/&gt;
					&lt;colspec colwidth="8*" colname="col14" colnum="14"/&gt;
					&lt;tbody&gt;
						&lt;row&gt;
							&lt;entry valign="bottom" namest="col1" nameend="col11"&gt;&lt;emph typestyle="bf"&gt;Australian Securities&lt;/emph&gt;&lt;/entry&gt;
							&lt;entry valign="top" namest="col2" nameend="col4"&gt;&lt;emph typestyle="bf"&gt;&amp;nbsp;&lt;/emph&gt;&lt;/entry&gt;
						&lt;/row&gt;
						...
					&lt;/tbody&gt;
				&lt;/tgroup&gt;
			&lt;/table&gt;
		&lt;/form:bodytext&gt;
	&lt;/form:document&gt;
&lt;/form:form&gt;

          </pre>
				</li>
			</ul>
		</section>
	</body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-Standard\Admindoc\admindoc_standardCI_form.dita  -->
	<xsl:message>admindoc_standardCI_form.xsl requires manual development!</xsl:message> 

	<xsl:template match="form">

		<!--  Original Target XPath:  form:form   -->
		<form:form>
			<xsl:apply-templates select="@* | node()"/>
		</form:form>

	</xsl:template>

	<xsl:template match="form/bodytext">

		<!--  Original Target XPath:  form:form/form:document/form:bodytext   -->
		<form:form>
			<form:document>
				<form:bodytext>
					<xsl:apply-templates select="@* | node()"/>
				</form:bodytext>
			</form:document>
		</form:form>

	</xsl:template>

	<xsl:template match="form/h">

		<!--  Original Target XPath:  form:form/form:document/form:bodytext/form:h   -->
		<form:form>
			<form:document>
				<form:bodytext>
					<form:h>
						<xsl:apply-templates select="@* | node()"/>
					</form:h>
				</form:bodytext>
			</form:document>
		</form:form>

	</xsl:template>

	<xsl:template match="form/p">

		<!--  Original Target XPath:  form:form/form:document/form:bodytext/form:p   -->
		<form:form>
			<form:document>
				<form:bodytext>
					<form:p>
						<xsl:apply-templates select="@* | node()"/>
					</form:p>
				</form:bodytext>
			</form:document>
		</form:form>

	</xsl:template>

	<xsl:template match="form/p/text">

		<!--  Original Target XPath:  form:form/form:document/form:bodytext/form:p/form:text   -->
		<form:form>
			<form:document>
				<form:bodytext>
					<form:p>
						<form:text>
							<xsl:apply-templates select="@* | node()"/>
						</form:text>
					</form:p>
				</form:bodytext>
			</form:document>
		</form:form>

	</xsl:template>

</xsl:stylesheet>