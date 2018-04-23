<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:seclaw="http://www.lexisnexis.com/xmlschemas/content/legal/secondary-law/1/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Comm-Form-Pre_level1">
    <title><sourcexml>level</sourcexml> <lnpid>id-IN06-38017</lnpid></title>

    <body>
        <section>
            <ul>
                <li><sourcexml>level</sourcexml> becomes <targetxml>seclaw:level</targetxml> comes
                    with following attributes: <ul>
                        <li><sourcexml>@id</sourcexml> becomes <targetxml>@xml:id</targetxml></li>
                        <li><sourcexml>@subdoc</sourcexml> becomes
                                <targetxml>@includeintoc</targetxml></li>
                        <li><sourcexml>@toc-caption</sourcexml> becomes
                                <targetxml>@alternatetoccaption</targetxml></li>
                        <li><sourcexml>@leveltype</sourcexml> becomes
                                <targetxml>@leveltype</targetxml> and the values are tokenized for
                                <targetxml>@leveltype</targetxml>.</li>
                    </ul>
                    <p><b>Below are the unique values for <targetxml>@leveltype</targetxml> found in
                            the source documents and the corresponding mapping in NewLexis. For
                            certain <targetxml>@leveltype</targetxml> values set as
                                <targetxml>@leveltype="unclassified"</targetxml>.</b></p>
                    <note><p><b>In NewLexis Schema, <targetxml>seclaw:level</targetxml> can not
                                nest. If a nested <sourcexml>level</sourcexml> occurs in the input
                                Rosetta xml then create a <targetxml>seclaw:bodytext</targetxml>
                                before the nested
                        <targetxml>seclaw:level</targetxml>.</b></p></note>
                    <ul>
                        <li><sourcexml>level[@leveltype="act"]</sourcexml> becomes
                            <targetxml>seclaw:level[@leveltype="act"]</targetxml></li>
                        <li><sourcexml>level[@leveltype="appendix"]</sourcexml> becomes
                            <targetxml>seclaw:level[@leveltype="appendix"]</targetxml></li>
                        <li><sourcexml>level[@leveltype="chapter"]</sourcexml> becomes
                                <targetxml>seclaw:level[@leveltype="chapter"]</targetxml></li>
                        <li><sourcexml>level[@leveltype="part.chapter"]</sourcexml> becomes
                            <targetxml>seclaw:level[@leveltype="chapter"]</targetxml></li>
                        <li><sourcexml>level[@leveltype="form"]</sourcexml> becomes
                                <targetxml>seclaw:level[@leveltype="form"]</targetxml></li>
                        <li><sourcexml>level[@leveltype="formgrp"]</sourcexml> becomes
                                <targetxml>seclaw:level[@leveltype="form"]</targetxml></li>
                        <li><sourcexml>level[@leveltype="form.grp"]</sourcexml> becomes
                            <targetxml>seclaw:level[@leveltype="form"]</targetxml></li>
                        <li><sourcexml>level[@leveltype="FD"]</sourcexml> becomes
                            <targetxml>seclaw:level[@leveltype="division"]</targetxml></li>
                        <li><sourcexml>level[@leveltype="SD"]</sourcexml> becomes
                            <targetxml>seclaw:level[@leveltype="division"]</targetxml></li>
                        <li><sourcexml>level[@leveltype="TD"]</sourcexml> becomes
                            <targetxml>seclaw:level[@leveltype="division"]</targetxml></li>
                        <li><sourcexml>level[@leveltype="group"]</sourcexml> becomes
                                <targetxml>seclaw:level[@leveltype="division"]</targetxml></li>
                        <li><sourcexml>level[@leveltype="para0"]</sourcexml> becomes
                                <targetxml>seclaw:level[@leveltype="paragraph"]</targetxml></li>
                        <li><sourcexml>level[@leveltype="subpara0"]</sourcexml> becomes
                                <targetxml>seclaw:level[@leveltype="subparagraph"]</targetxml></li>
                        <li><sourcexml>level[@leveltype="comm.chap"]</sourcexml> becomes
                                <targetxml>seclaw:level[@leveltype="chapter"]</targetxml></li>
                        <li><sourcexml>level[@leveltype="comm.chap.2"]</sourcexml> becomes
                                <targetxml>seclaw:level[@leveltype="chapter"]</targetxml></li>
                        <li><sourcexml>level[@leveltype="comm.chap.A"]</sourcexml> becomes
                                <targetxml>seclaw:level[@leveltype="chapter"]</targetxml></li>
                        <li><sourcexml>level[@leveltype="comm.chap.A2"]</sourcexml> becomes
                                <targetxml>seclaw:level[@leveltype="chapter"]</targetxml></li>
                        <li><sourcexml>level[@leveltype="comm.chap.A3"]</sourcexml> becomes
                                <targetxml>seclaw:level[@leveltype="chapter"]</targetxml></li>
                        <li><sourcexml>level[@leveltype="comm.chap.A4"]</sourcexml> becomes
                                <targetxml>seclaw:level[@leveltype="chapter"]</targetxml></li>
                        <li><sourcexml>level[@leveltype="comm.chap.G"]</sourcexml> becomes
                                <targetxml>seclaw:level[@leveltype="chapter"]</targetxml></li>
                        <li><sourcexml>level[@leveltype="comm.chap.H"]</sourcexml> becomes
                                <targetxml>seclaw:level[@leveltype="chapter"]</targetxml></li>
                        <li><sourcexml>level[@leveltype="prec"]</sourcexml> becomes
                                <targetxml>seclaw:level[@leveltype="unclassified"]</targetxml></li>
                        <li><sourcexml>level[@leveltype="prec.grp"]</sourcexml> becomes
                                <targetxml>seclaw:level[@leveltype="unclassified"]</targetxml></li>
                        <li><sourcexml>level[@leveltype="part"]</sourcexml> becomes
                            <targetxml>seclaw:level[@leveltype="part"]</targetxml></li>
                        <li><sourcexml>level[@leveltype="precgrp1"]</sourcexml> becomes
                                <targetxml>seclaw:level[@leveltype="unclassified"]</targetxml></li>
                        <li><sourcexml>level[@leveltype="prelim"]</sourcexml> becomes
                                <targetxml>seclaw:level[@leveltype="preamble"]</targetxml></li>
                        <li><sourcexml>level[@leveltype="rule"]</sourcexml> becomes
                            <targetxml>seclaw:level[@leveltype="rule"]</targetxml></li>
                        <li><sourcexml>level[@leveltype="rul"]</sourcexml> becomes
                            <targetxml>seclaw:level[@leveltype="rule"]</targetxml></li>
                        <li><sourcexml>level[@leveltype="subrul"]</sourcexml> becomes
                            <targetxml>seclaw:level[@leveltype="subrule"]</targetxml></li>
                        <li><sourcexml>level[@leveltype="reg"]</sourcexml> becomes
                            <targetxml>seclaw:level[@leveltype="regulation"]</targetxml></li>
                        <li><sourcexml>level[@leveltype="regulation"]</sourcexml> becomes
                            <targetxml>seclaw:level[@leveltype="regulation"]</targetxml></li>
                        <li><sourcexml>level[@leveltype="sect"]</sourcexml> becomes
                            <targetxml>seclaw:level[@leveltype="section"]</targetxml></li>
                        <li><sourcexml>level[@leveltype="schedule"]</sourcexml> becomes
                            <targetxml>seclaw:level[@leveltype="schedule"]</targetxml></li>
                        <li><sourcexml>level[@leveltype="schedulegrp"]</sourcexml> becomes
                                <targetxml>seclaw:level[@leveltype="schedule"]</targetxml></li>
                    </ul>
                </li>
            </ul>
                    <pre>

&lt;comm:body&gt;
    &lt;level id="UNMI_VOL1.0001.para0" leveltype="para0" 
        toc-caption="U N MITRA&amp;#x2019;S - LAW OF LIMITATION AND PRESCRIPTION" subdoc="true"&gt;
        ...
    &lt;/level&gt;
&lt;/comm:body&gt;

</pre>
            <p><b>becomes</b></p>
                    <pre>

&lt;seclaw:body&gt;
    &lt;seclaw:level xml:id="UNMI_VOL1.0001.para0" leveltype="paragraph" 
        alternatetoccaption="U N MITRA&amp;#x2019;S - LAW OF LIMITATION AND PRESCRIPTION" includeintoc="false"&gt;
        ...
    &lt;/seclaw:level&gt;
&lt;/seclaw:body&gt;

</pre>
            <note>If any attribute comes without empty value (i.e.
                    <sourcexml>@toc-caption=""</sourcexml>) inside <sourcexml>level</sourcexml>
                markup then conversion needs to suppressed in target.</note>
        </section>
        
        <section>
            <title>Change Log</title>
            <p>2016-07-01: <ph id="change_20160701_SS">Created.</ph></p>
        </section>
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-IN\IN06-Commentary\IN06_level.dita  -->
	<xsl:message>IN06_level.xsl requires manual development!</xsl:message> 

	<xsl:template match="level">

		<!--  Original Target XPath:  seclaw:level   -->
		<seclaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</seclaw:level>

	</xsl:template>

	<xsl:template match="@id">

		<!--  Original Target XPath:  @xml:id   -->
		<xsl:attribute name="xml:id">
			<xsl:apply-templates select="node()"/>
		</xsl:attribute>

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

	<xsl:template match="@leveltype">

		<!--  Original Target XPath:  @leveltype   -->
		<xsl:attribute name="leveltype">
			<xsl:apply-templates select="node()"/>
		</xsl:attribute>

	</xsl:template>

	<xsl:template match="level[@leveltype=&#34;act&#34;]">

		<!--  Original Target XPath:  seclaw:level[@leveltype="act"]   -->
		<seclaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</seclaw:level>

	</xsl:template>

	<xsl:template match="level[@leveltype=&#34;appendix&#34;]">

		<!--  Original Target XPath:  seclaw:level[@leveltype="appendix"]   -->
		<seclaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</seclaw:level>

	</xsl:template>

	<xsl:template match="level[@leveltype=&#34;chapter&#34;]">

		<!--  Original Target XPath:  seclaw:level[@leveltype="chapter"]   -->
		<seclaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</seclaw:level>

	</xsl:template>

	<xsl:template match="level[@leveltype=&#34;part.chapter&#34;]">

		<!--  Original Target XPath:  seclaw:level[@leveltype="chapter"]   -->
		<seclaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</seclaw:level>

	</xsl:template>

	<xsl:template match="level[@leveltype=&#34;form&#34;]">

		<!--  Original Target XPath:  seclaw:level[@leveltype="form"]   -->
		<seclaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</seclaw:level>

	</xsl:template>

	<xsl:template match="level[@leveltype=&#34;formgrp&#34;]">

		<!--  Original Target XPath:  seclaw:level[@leveltype="form"]   -->
		<seclaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</seclaw:level>

	</xsl:template>

	<xsl:template match="level[@leveltype=&#34;form.grp&#34;]">

		<!--  Original Target XPath:  seclaw:level[@leveltype="form"]   -->
		<seclaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</seclaw:level>

	</xsl:template>

	<xsl:template match="level[@leveltype=&#34;FD&#34;]">

		<!--  Original Target XPath:  seclaw:level[@leveltype="division"]   -->
		<seclaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</seclaw:level>

	</xsl:template>

	<xsl:template match="level[@leveltype=&#34;SD&#34;]">

		<!--  Original Target XPath:  seclaw:level[@leveltype="division"]   -->
		<seclaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</seclaw:level>

	</xsl:template>

	<xsl:template match="level[@leveltype=&#34;TD&#34;]">

		<!--  Original Target XPath:  seclaw:level[@leveltype="division"]   -->
		<seclaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</seclaw:level>

	</xsl:template>

	<xsl:template match="level[@leveltype=&#34;group&#34;]">

		<!--  Original Target XPath:  seclaw:level[@leveltype="division"]   -->
		<seclaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</seclaw:level>

	</xsl:template>

	<xsl:template match="level[@leveltype=&#34;para0&#34;]">

		<!--  Original Target XPath:  seclaw:level[@leveltype="paragraph"]   -->
		<seclaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</seclaw:level>

	</xsl:template>

	<xsl:template match="level[@leveltype=&#34;subpara0&#34;]">

		<!--  Original Target XPath:  seclaw:level[@leveltype="subparagraph"]   -->
		<seclaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</seclaw:level>

	</xsl:template>

	<xsl:template match="level[@leveltype=&#34;comm.chap&#34;]">

		<!--  Original Target XPath:  seclaw:level[@leveltype="chapter"]   -->
		<seclaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</seclaw:level>

	</xsl:template>

	<xsl:template match="level[@leveltype=&#34;comm.chap.2&#34;]">

		<!--  Original Target XPath:  seclaw:level[@leveltype="chapter"]   -->
		<seclaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</seclaw:level>

	</xsl:template>

	<xsl:template match="level[@leveltype=&#34;comm.chap.A&#34;]">

		<!--  Original Target XPath:  seclaw:level[@leveltype="chapter"]   -->
		<seclaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</seclaw:level>

	</xsl:template>

	<xsl:template match="level[@leveltype=&#34;comm.chap.A2&#34;]">

		<!--  Original Target XPath:  seclaw:level[@leveltype="chapter"]   -->
		<seclaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</seclaw:level>

	</xsl:template>

	<xsl:template match="level[@leveltype=&#34;comm.chap.A3&#34;]">

		<!--  Original Target XPath:  seclaw:level[@leveltype="chapter"]   -->
		<seclaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</seclaw:level>

	</xsl:template>

	<xsl:template match="level[@leveltype=&#34;comm.chap.A4&#34;]">

		<!--  Original Target XPath:  seclaw:level[@leveltype="chapter"]   -->
		<seclaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</seclaw:level>

	</xsl:template>

	<xsl:template match="level[@leveltype=&#34;comm.chap.G&#34;]">

		<!--  Original Target XPath:  seclaw:level[@leveltype="chapter"]   -->
		<seclaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</seclaw:level>

	</xsl:template>

	<xsl:template match="level[@leveltype=&#34;comm.chap.H&#34;]">

		<!--  Original Target XPath:  seclaw:level[@leveltype="chapter"]   -->
		<seclaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</seclaw:level>

	</xsl:template>

	<xsl:template match="level[@leveltype=&#34;prec&#34;]">

		<!--  Original Target XPath:  seclaw:level[@leveltype="unclassified"]   -->
		<seclaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</seclaw:level>

	</xsl:template>

	<xsl:template match="level[@leveltype=&#34;prec.grp&#34;]">

		<!--  Original Target XPath:  seclaw:level[@leveltype="unclassified"]   -->
		<seclaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</seclaw:level>

	</xsl:template>

	<xsl:template match="level[@leveltype=&#34;part&#34;]">

		<!--  Original Target XPath:  seclaw:level[@leveltype="part"]   -->
		<seclaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</seclaw:level>

	</xsl:template>

	<xsl:template match="level[@leveltype=&#34;precgrp1&#34;]">

		<!--  Original Target XPath:  seclaw:level[@leveltype="unclassified"]   -->
		<seclaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</seclaw:level>

	</xsl:template>

	<xsl:template match="level[@leveltype=&#34;prelim&#34;]">

		<!--  Original Target XPath:  seclaw:level[@leveltype="preamble"]   -->
		<seclaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</seclaw:level>

	</xsl:template>

	<xsl:template match="level[@leveltype=&#34;rule&#34;]">

		<!--  Original Target XPath:  seclaw:level[@leveltype="rule"]   -->
		<seclaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</seclaw:level>

	</xsl:template>

	<xsl:template match="level[@leveltype=&#34;rul&#34;]">

		<!--  Original Target XPath:  seclaw:level[@leveltype="rule"]   -->
		<seclaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</seclaw:level>

	</xsl:template>

	<xsl:template match="level[@leveltype=&#34;subrul&#34;]">

		<!--  Original Target XPath:  seclaw:level[@leveltype="subrule"]   -->
		<seclaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</seclaw:level>

	</xsl:template>

	<xsl:template match="level[@leveltype=&#34;reg&#34;]">

		<!--  Original Target XPath:  seclaw:level[@leveltype="regulation"]   -->
		<seclaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</seclaw:level>

	</xsl:template>

	<xsl:template match="level[@leveltype=&#34;regulation&#34;]">

		<!--  Original Target XPath:  seclaw:level[@leveltype="regulation"]   -->
		<seclaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</seclaw:level>

	</xsl:template>

	<xsl:template match="level[@leveltype=&#34;sect&#34;]">

		<!--  Original Target XPath:  seclaw:level[@leveltype="section"]   -->
		<seclaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</seclaw:level>

	</xsl:template>

	<xsl:template match="level[@leveltype=&#34;schedule&#34;]">

		<!--  Original Target XPath:  seclaw:level[@leveltype="schedule"]   -->
		<seclaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</seclaw:level>

	</xsl:template>

	<xsl:template match="level[@leveltype=&#34;schedulegrp&#34;]">

		<!--  Original Target XPath:  seclaw:level[@leveltype="schedule"]   -->
		<seclaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</seclaw:level>

	</xsl:template>

	<xsl:template match="@toc-caption=&#34;&#34;">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

</xsl:stylesheet>