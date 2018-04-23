<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:frm="http://www.lexis-nexis.com/glp/frm" xmlns:form="http://www.lexisnexis.com/xmlschemas/content/shared/form/1/" version="2.0" exclude-result-prefixes="dita frm">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_sigblock-LxAdv-form.sigblock">
	<title><sourcexml>sigblock</sourcexml> within a Form to <targetxml>form:sigblock</targetxml> <lnpid>id-CCCC-10555</lnpid></title>
    <body>
      <section>
        <p>When <sourcexml>sigblock</sourcexml> is within a form (i.e. it is a child of <sourcexml>frm:*</sourcexml> or 
        <sourcexml>clause</sourcexml>), <sourcexml>sigblock</sourcexml> becomes <targetxml>form:sigblock</targetxml>. 
        <sourcexml>sigblock/@align</sourcexml> maps to <targetxml>form:sigblock/@align</targetxml>. Children map as follows:
          <ul>
              <li><sourcexml>pgrp</sourcexml> becomes
                <targetxml>form:signatures</targetxml></li>
            <li><sourcexml>p/text</sourcexml> becomes
              <targetxml>form:line</targetxml></li>
            <li><sourcexml>p/table</sourcexml> becomes
              <targetxml>table</targetxml>, i.e. suppress <sourcexml>p</sourcexml></li>
          </ul>
        </p>
      </section>

      <example>
        <title>Source sigblock</title>
        <codeblock>
          
&lt;clause&gt;
	&lt;sigblock align="right"&gt;
		&lt;pgrp&gt;
			&lt;p&gt;
				&lt;text&gt;LICENSOR:&lt;/text&gt;
			&lt;/p&gt;
			&lt;p&gt;
				&lt;text&gt;By &lt;frm:prompt prompttype="longname"&gt;__________________&lt;/frm:prompt&gt;
				&lt;/text&gt;
			&lt;/p&gt;
			&lt;p&gt;
				&lt;text&gt;Title &lt;frm:prompt prompttype="longname"&gt;__________________&lt;/frm:prompt&gt;
				&lt;/text&gt;
			&lt;/p&gt;
			&lt;p&gt;
				&lt;text&gt;Date &lt;frm:prompt prompttype="date"&gt;__________________&lt;/frm:prompt&gt;
				&lt;/text&gt;
			&lt;/p&gt;
		&lt;/pgrp&gt;
		&lt;pgrp&gt;
			&lt;p&gt;
				&lt;text&gt;Witness:&lt;/text&gt;
			&lt;/p&gt;
			&lt;p&gt;
				&lt;text&gt;
					&lt;frm:prompt prompttype="longname"&gt;__________________&lt;/frm:prompt&gt;
				&lt;/text&gt;
			&lt;/p&gt;
			&lt;p&gt;
				&lt;text&gt;Date &lt;frm:prompt prompttype="date"&gt;__________________&lt;/frm:prompt&gt;
				&lt;/text&gt;
			&lt;/p&gt;
		&lt;/pgrp&gt;
		&lt;pgrp&gt;
			&lt;p&gt;
				&lt;text&gt;LICENSEE:&lt;/text&gt;
			&lt;/p&gt;
			&lt;p&gt;
				&lt;text&gt;By &lt;frm:prompt prompttype="longname"&gt;__________________&lt;/frm:prompt&gt;
				&lt;/text&gt;
			&lt;/p&gt;
			&lt;p&gt;
				&lt;text&gt;Title &lt;frm:prompt prompttype="longname"&gt;__________________&lt;/frm:prompt&gt;
				&lt;/text&gt;
			&lt;/p&gt;
			&lt;p&gt;
				&lt;text&gt;Date &lt;frm:prompt prompttype="date"&gt;__________________&lt;/frm:prompt&gt;
				&lt;/text&gt;
			&lt;/p&gt;
		&lt;/pgrp&gt;
		&lt;pgrp&gt;
			&lt;p&gt;
				&lt;text&gt;Witness:&lt;/text&gt;
			&lt;/p&gt;
			&lt;p&gt;
				&lt;text&gt;
					&lt;frm:prompt prompttype="longname"&gt;__________________&lt;/frm:prompt&gt;
				&lt;/text&gt;
			&lt;/p&gt;
			&lt;p&gt;
				&lt;text&gt;Date &lt;frm:prompt prompttype="date"&gt;__________________&lt;/frm:prompt&gt;
				&lt;/text&gt;
			&lt;/p&gt;
		&lt;/pgrp&gt;
	&lt;/sigblock&gt;
&lt;/clause&gt;

        </codeblock>
        
        <title>Target form:sigblock</title>
        <codeblock>
 
&lt;form:clause&gt;
	&lt;form:bodytext&gt;
		&lt;form:sigblock align="right"&gt;
			&lt;form:signatures&gt;
				&lt;form:line&gt;LICENSOR:&lt;/form:line&gt;
				&lt;form:line&gt;By &lt;form:prompt formcharuse="longname"&gt;__________________&lt;/form:prompt&gt;
				&lt;/form:line&gt;
				&lt;form:line&gt;Title &lt;form:prompt formcharuse="longname"&gt;__________________&lt;/form:prompt&gt;
				&lt;/form:line&gt;
				&lt;form:line&gt;Date &lt;form:prompt formcharuse="date"&gt;__________________&lt;/form:prompt&gt;
				&lt;/form:line&gt;
			&lt;/form:signatures&gt;
			&lt;form:signatures&gt;
				&lt;form:line&gt;Witness:&lt;/form:line&gt;
				&lt;form:line&gt;
					&lt;form:prompt formcharuse="longname"&gt;__________________&lt;/form:prompt&gt;
				&lt;/form:line&gt;
				&lt;form:line&gt;Date &lt;form:prompt formcharuse="date"&gt;__________________&lt;/form:prompt&gt;
				&lt;/form:line&gt;
			&lt;/form:signatures&gt;
			&lt;form:signatures&gt;
				&lt;form:line&gt;LICENSEE:&lt;/form:line&gt;
				&lt;form:line&gt;By &lt;form:prompt formcharuse="longname"&gt;__________________&lt;/form:prompt&gt;
				&lt;/form:line&gt;
				&lt;form:line&gt;Title &lt;form:prompt formcharuse="longname"&gt;__________________&lt;/form:prompt&gt;
				&lt;/form:line&gt;
				&lt;form:line&gt;Date &lt;form:prompt formcharuse="date"&gt;__________________&lt;/form:prompt&gt;
				&lt;/form:line&gt;
			&lt;/form:signatures&gt;
			&lt;form:signatures&gt;
				&lt;form:line&gt;Witness:&lt;/form:line&gt;
				&lt;form:line&gt;
					&lt;form:prompt formcharuse="longname"&gt;__________________&lt;/form:prompt&gt;
				&lt;/form:line&gt;
				&lt;form:line&gt;Date &lt;form:prompt formcharuse="date"&gt;__________________&lt;/form:prompt&gt;
				&lt;/form:line&gt;
			&lt;/form:signatures&gt;
		&lt;/form:sigblock&gt;
	&lt;/form:bodytext&gt;
&lt;/form:clause&gt;

        </codeblock>
      </example>
      
      <section>
            <title>Changes</title>
          <p>2017-02-07: <ph id="change_20170207_snb">LPA 2016 enhancements: New section. 
            Reflects new markup in precedents for signature blocks.</ph></p>
        </section>
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_sigblock-LxAdv-form.sigblock.dita  -->
	<xsl:message>Rosetta_sigblock-LxAdv-form.sigblock.xsl requires manual development!</xsl:message> 

	<xsl:template match="sigblock">

		<!--  Original Target XPath:  form:sigblock   -->
		<form:sigblock>
			<xsl:apply-templates select="@* | node()"/>
		</form:sigblock>

	</xsl:template>

	<xsl:template match="frm:*">

		<!--  Original Target XPath:  form:sigblock   -->
		<form:sigblock>
			<xsl:apply-templates select="@* | node()"/>
		</form:sigblock>

	</xsl:template>

	<xsl:template match="clause">

		<!--  Original Target XPath:  form:sigblock   -->
		<form:sigblock>
			<xsl:apply-templates select="@* | node()"/>
		</form:sigblock>

	</xsl:template>

	<xsl:template match="sigblock/@align">

		<!--  Original Target XPath:  form:sigblock/@align   -->
		<form:sigblock>
			<xsl:attribute name="align">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</form:sigblock>

	</xsl:template>

	<xsl:template match="pgrp">

		<!--  Original Target XPath:  form:signatures   -->
		<form:signatures>
			<xsl:apply-templates select="@* | node()"/>
		</form:signatures>

	</xsl:template>

	<xsl:template match="p/text">

		<!--  Original Target XPath:  form:line   -->
		<form:line>
			<xsl:apply-templates select="@* | node()"/>
		</form:line>

	</xsl:template>

	<xsl:template match="p/table">

		<!--  Original Target XPath:  table   -->
		<table>
			<xsl:apply-templates select="@* | node()"/>
		</table>

	</xsl:template>

	<xsl:template match="p">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

</xsl:stylesheet>