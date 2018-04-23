<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:form="http://www.lexisnexis.com/xmlschemas/content/shared/form/1/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="form">
  <title>form <lnpid>id-ST04-26808</lnpid></title>
  <body>
    <section>
<ul>
  <li><sourcexml>form</sourcexml>
          <b>becomes</b>
          <targetxml>form:form</targetxml> with required child as
            <targetxml>form:form/form:document</targetxml> with attribute values
            <targetxml>@annotated="false"</targetxml>, <targetxml>@official="true"</targetxml> and
            <targetxml>@typeofdoc="unnamed"</targetxml>
          <sourcexml>form/bodytext</sourcexml>
          <b>becomes</b>
          <targetxml>form:form/form:document/form:bodytext</targetxml> The child element of form
          includes: <ul>
            <li><sourcexml>form/h</sourcexml>
              <b>becomes</b>
              <targetxml>form:form/form:document/form:bodytext/form:h</targetxml></li>
            <li><sourcexml>form/p</sourcexml>
              <b>becomes</b>
              <targetxml>form:form/form:document/form:bodytext/form:p</targetxml></li>
            <li><sourcexml>form/p/text</sourcexml>
              <b>becomes</b>
              <targetxml>form:form/form:document/form:bodytext/form:p/form:text</targetxml></li>
          </ul>
          <pre>
              <b><i>Source example based on AU content</i></b>
     
 &lt;form&gt;
    &lt;bodytext searchtype="FORM"&gt;
        &lt;p&gt;&lt;text&gt;Form No 38&lt;/text&gt;&lt;/p&gt;
        ....
        &lt;table colsep="0" rowsep="0"&gt;
            &lt;tgroup cols="6" colsep="0" rowsep="0"&gt;
                &lt;colspec colname="col1" colnum="1" colwidth="499*"/&gt;
                &lt;colspec colname="col2" colnum="2" colwidth="161*"/&gt;
                &lt;colspec colname="col3" colnum="3" colwidth="165*"/&gt;
                &lt;colspec colname="col4" colnum="4" colwidth="165*"/&gt;
                &lt;colspec colname="col5" colnum="5" colwidth="4*"/&gt;
                &lt;colspec colname="col6" colnum="6" colwidth="161*"/&gt;
                &lt;tbody&gt;
                    &lt;row&gt;
                        &lt;entry nameend="col5" namest="col1"&gt;Action No. &lt;/entry&gt;
                        &lt;entry colname="col2"&gt;  &lt;emph typestyle="bf"&gt;OFFICE USE ONLY&lt;/emph&gt; &lt;/entry&gt;
                    &lt;/row&gt;
                    &lt;row&gt;
                        &lt;entry align="left" nameend="col5" namest="col1"&gt;  Trial Court: &lt;/entry&gt;
                        &lt;entry align="left" colname="col2"&gt;  Date of Filing: &lt;/entry&gt;
                    &lt;/row&gt;
                ....   
                &lt;/tbody&gt;
            &lt;/tgroup&gt;
        &lt;/table&gt;
        &lt;p&gt;&lt;text&gt;I give notice that this Application will be listed for directions at the trial court on the ____day of ____________________ 20___, at ______ am/pm&lt;/text&gt;&lt;/p&gt;
    ....    
    &lt;/bodytext&gt;
&lt;/form&gt;

</pre>
          <pre>               <b><i>Target Example</i></b>

&lt;form:form&gt;
	&lt;form:document annotated="false" official="true" typeofdoc="unnamed"&gt;
	&lt;form:bodytext&gt;
		&lt;form:p&gt;&lt;form:text&gt;Form No 38&lt;/form:text&gt;&lt;/form:p&gt;
		....
    	&lt;table colsep="0" rowsep="0"&gt;
            &lt;tgroup cols="6" colsep="0" rowsep="0"&gt;
                &lt;colspec colname="col1" colnum="1" colwidth="499*"/&gt;
                &lt;colspec colname="col2" colnum="2" colwidth="161*"/&gt;
                &lt;colspec colname="col3" colnum="3" colwidth="165*"/&gt;
                &lt;colspec colname="col4" colnum="4" colwidth="165*"/&gt;
                &lt;colspec colname="col5" colnum="5" colwidth="4*"/&gt;
                &lt;colspec colname="col6" colnum="6" colwidth="161*"/&gt;
                &lt;tbody&gt;
                    &lt;row&gt;
                        &lt;entry nameend="col5" namest="col1"&gt;Action No. &lt;/entry&gt;
                        &lt;entry colname="col2"&gt;  &lt;emph typestyle="bf"&gt;OFFICE USE ONLY&lt;/emph&gt; &lt;/entry&gt;
                    &lt;/row&gt;
                    &lt;row&gt;
                        &lt;entry align="left" nameend="col5" namest="col1"&gt;  Trial Court: &lt;/entry&gt;
                        &lt;entry align="left" colname="col2"&gt;  Date of Filing: &lt;/entry&gt;
                    &lt;/row&gt;
                ....   
                &lt;/tbody&gt;
            &lt;/tgroup&gt;
    	&lt;/table&gt;
		&lt;form:p&gt;
			&lt;form:text&gt;I give notice that this Application will be listed for directions at the trial court on the ____day of ____________________ 20___, at ______ am/pm&lt;/form:text&gt;
		&lt;/form:p&gt;
		....
	&lt;/bodytext&gt;
&lt;/form:form&gt;

          </pre>
          <pre> 
                <b><i>Source example based on AU content</i></b>

&lt;entry colname="col3" valign="top"&gt;
	&lt;h align="center"&gt; &lt;/h&gt;
&lt;/entry&gt;

        		</pre>
          <pre> 
                <b><i>Target Example</i></b>

&lt;entry colname="col3" valign="top"&gt;
	&lt;form:h align="center"&gt; &lt;/form:h&gt;
&lt;/entry&gt;

        		</pre>
        </li>
</ul>
    </section>
    <section>
      <title>Changes</title>
      <p>YYYY-MM-DD: ______________________________________________________________________.</p>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-Standard\Regulation\form.dita  -->
	<xsl:message>Regulation_form.xsl requires manual development!</xsl:message> 

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