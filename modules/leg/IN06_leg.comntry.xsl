<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:comm="http://www.lexis-nexis.com/glp/comm" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:annot="http://www.lexisnexis.com/xmlschemas/content/shared/annotations/1/" xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" xmlns:seclaw="http://www.lexisnexis.com/xmlschemas/content/legal/secondary-law/1/" version="2.0" exclude-result-prefixes="dita comm leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="IN06_leg.comntry">
  <title><sourcexml>leg:comntry</sourcexml> <lnpid>id-IN06-38012</lnpid></title>
  <body>
    <section>
      <p>
        <sourcexml>leg:comntry</sourcexml> becomes
          <targetxml>annot:annotations/annot:annotation-grp</targetxml> with optional attributes and
        child elements converted as: <ul>
          <li><sourcexml>@id</sourcexml> becomes <targetxml>@xml:id</targetxml></li>
          <li><sourcexml>@subdoc</sourcexml> becomes <targetxml>@includeintoc</targetxml></li>
          <li><sourcexml>@toc-caption</sourcexml> becomes
              <targetxml>@alternatetoccaption</targetxml></li>
          <li><sourcexml>refpt</sourcexml> becomes <targetxml>ref:anchor</targetxml> and must be the
            first child in the sequence. Please refer to General Markup Section for handling
              <sourcexml>refpt</sourcexml>.</li>
          <li><sourcexml>heading/edpnum</sourcexml> becomes
            <targetxml>heading/desig</targetxml></li>
          <li><sourcexml>heading/title</sourcexml> becomes <targetxml>heading/title</targetxml></li>
        </ul>
        <ul>
          <li><b><sourcexml>leg:comntry</sourcexml> encountered in following scenarios:</b>
            <ul>
              <li><sourcexml>legfragment/leg:level/leg:level-vrnt/leg:levelbody/leg:bodytext/leg:comntry/level</sourcexml>
                becomes
                  <targetxml>primlaw:excerpt/primlaw:level/primlaw:bodytext/primlaw:level[@leveltype="unclassified"]/annot:annotations/annot:annotation-grp[@grptype="COMMENTARY"]/annot:annotation</targetxml>
                with following attributes: <ul>
                  <li><sourcexml>@id</sourcexml> becomes <targetxml>@xml:id</targetxml></li>
                  <li><sourcexml>@subdoc</sourcexml> becomes
                    <targetxml>@includeintoc</targetxml></li>
                  <li><sourcexml>@toc-caption</sourcexml> becomes
                      <targetxml>@alternatetoccaption</targetxml></li>
                  <li><sourcexml>refpt</sourcexml> becomes <targetxml>ref:anchor</targetxml>and must
                    be the first child in the sequence. Please refer to General Markup Section for
                    handling <sourcexml>refpt</sourcexml>.</li>
                  <li><sourcexml>heading/edpnum</sourcexml> becomes
                      <targetxml>heading/desig</targetxml></li>
                  <li><sourcexml>heading/title</sourcexml> becomes
                      <targetxml>heading/title</targetxml></li>
                  <li><sourcexml>level/bodytext</sourcexml> becomes
                      <targetxml>annot:annotation/bodytext</targetxml></li>
                </ul>
              </li>
              <li><sourcexml>leg:level/leg:level-vrnt/leg:levelbody/leg:comntry/level</sourcexml>
                becomes
                  <targetxml>primlaw:level/primlaw:bodytext/primlaw:level[@leveltype="unclassified"]/annot:annotations/annot:annotation-grp[@grptype="COMMENTARY"]/annot:annotation</targetxml></li>
            </ul></li>
        </ul></p>
      <p>Conversion of nested <sourcexml>level</sourcexml> element:</p>
      <p><sourcexml>leg:comntry/level/level</sourcexml> becomes
          <targetxml>seclaw:level/seclaw:bodytext/primlaw:excerpt/primlaw:level/annot:annotations/annot:annotation-grp[@grptype="COMMENTARY"]/annot:annotation/annot:annotationlevel</targetxml>
        with following attributes: <ul>
          <li><sourcexml>@id</sourcexml> becomes <targetxml>@xml:id</targetxml></li>
          <li><sourcexml>@subdoc</sourcexml> becomes <targetxml>@includeintoc</targetxml></li>
          <li><sourcexml>@toc-caption</sourcexml> becomes
              <targetxml>@alternatetoccaption</targetxml></li>
          <li><sourcexml>refpt</sourcexml> becomes <targetxml>ref:anchor</targetxml> and must be the
            first child in the sequence. Please refer to General Markup Section for handling
              <sourcexml>refpt</sourcexml>.</li>
          <li><sourcexml>heading/edpnum</sourcexml> becomes
            <targetxml>heading/desig</targetxml></li>
          <li><sourcexml>heading/title</sourcexml> becomes <targetxml>heading/title</targetxml></li>
          <li><sourcexml>level/bodytext</sourcexml> becomes
              <targetxml>annot:annotationlevel/annot:bodytext</targetxml>
            <note><targetxml>annot:bodytext</targetxml> is required element in
                <targetxml>annot:annotationlevel</targetxml>.</note>
          </li>
        </ul>
                    <pre>

&lt;leg:comntry subdoc="true" toc-caption="Commentary"&gt;
    &lt;level id="CRPC_V1.0076.para0" leveltype="para0" subdoc="true"
        toc-caption="1. Scope of"&gt;
        &lt;heading searchtype="COMMENTARY"&gt;
            &lt;title&gt;
                &lt;refpt id="CRPC_V1.0076.para0" type="ext"/&gt;
                &lt;emph typestyle="bf"&gt;1. Scope of ... &lt;/emph&gt;
            &lt;/title&gt;
        &lt;/heading&gt;
        &lt;bodytext searchtype="COMMENTARY"&gt;
            &lt;p&gt;
                &lt;text&gt;This is a &lt;emph typestyle="it"&gt;new&lt;/emph&gt; section. Under the...&lt;/text&gt;
            &lt;/p&gt;
        &lt;/bodytext&gt;
    &lt;/level&gt;
&lt;/leg:comntry&gt;

</pre>
	<b>becomes</b>
                    <pre>

&lt;annot:annotations&gt;
    &lt;annot:annotation-grp grptype="COMMENTARY"&gt;
        &lt;annot:annotation includeintoc="true"&gt;
            &lt;ref:anchor id="CRPC_V1.0076.para0" anchortype="global"/&gt; 
            &lt;heading&gt;
                &lt;title&gt;&lt;emph typestyle="bf"&gt;1. Scope of ...&lt;/emph&gt;&lt;/title&gt;
            &lt;/heading&gt;
            &lt;bodytext&gt;
                &lt;p&gt;
                    &lt;text&gt;This is a &lt;emph typestyle="it"&gt;new&lt;/emph&gt; section. Under the...&lt;/text&gt;
                &lt;/p&gt;
            &lt;/bodytext&gt;
        &lt;/annot:annotation&gt;
    &lt;/annot:annotation-grp&gt;
&lt;/annot:annotations&gt;

</pre>
</p>
      <p>If <sourcexml>bodytext</sourcexml> as direct child of
        <sourcexml>leg:comntry</sourcexml>:</p>
      <p>NL schema is not allowed <targetxml>bodytext</targetxml> as direct child of
          <targetxml>annot:annotations/annot:annotation-grp[@grptype="COMMENTARY"]</targetxml>.
        Please refer to below listed handling scenarios: <ul>
          <li><sourcexml>comm:body/level/bodytext/legfragment/leg:comntry/bodytext</sourcexml>
            becomes
              <targetxml>seclaw:body/seclaw:level/seclaw:bodytext/primlaw:excerpt/primlaw:level[@leveltype="unclassified"]/annot:annotations/annot:annotation-grp[@grptype="COMMENTARY"]/annot:annotation/bodytext</targetxml></li>
          <li><sourcexml>leg:comntry/bodytext</sourcexml> becomes
              <targetxml>annot:annotations/annot:annotation-grp[@grptype="COMMENTARY"]/annot:annotation/bodytext</targetxml></li>
        </ul>
      </p>
                    <pre>

&lt;comm:body&gt;
    &lt;level id="SECT_CONI_VOL3_3891_sect_4.4"&gt;
        &lt;bodytext&gt;
            &lt;legfragment&gt;
                &lt;leg:comntry&gt;
                    &lt;bodytext searchtype="COMMENTARY"&gt;
                        &lt;p&gt;
                            &lt;text&gt;The giving of reasons is one of the fundamentals of good...&lt;/text&gt;
                        &lt;/p&gt;
                    &lt;/bodytext&gt;
                &lt;/leg:comntry&gt;
            &lt;/legfragment&gt;
        &lt;/bodytext&gt;
    &lt;/level&gt;
&lt;/comm:body&gt;

</pre>
      <p><b>becomes</b></p>
                    <pre>

&lt;seclaw:body&gt;
    &lt;seclaw:level&gt;
        &lt;seclaw:bodytext&gt;
            &lt;primlaw:excerpt&gt;
                &lt;primlaw:level leveltype="unclassified"&gt;
                    &lt;annot:annotations&gt;
                        &lt;annot:annotation-grp grptype="COMMENTARY"&gt;
                            &lt;annot:annotation xml:id="SECT_CONI_VOL3_3891_sect_4.4"&gt;
                                &lt;bodytext&gt;
                                    &lt;p&gt;
                                        &lt;text&gt;The giving of reasons is one of the fundamentals of good...&lt;/text&gt;
                                    &lt;/p&gt;
                                &lt;/bodytext&gt;
                            &lt;/annot:annotation&gt;
                        &lt;/annot:annotation-grp&gt;
                    &lt;/annot:annotations&gt;
                &lt;/primlaw:level&gt;
            &lt;/primlaw:excerpt&gt;
        &lt;/seclaw:bodytext&gt;
    &lt;/seclaw:level&gt;
&lt;/seclaw:body&gt;

</pre>
    </section>
    <section>
      <title>Change Log</title>
      <p>2016-07-01: <ph id="change_20160701_SS">Created.</ph></p>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-IN\IN06-Commentary\IN06_leg.comntry.dita  -->
	<xsl:message>IN06_leg.comntry.xsl requires manual development!</xsl:message> 

	<xsl:template match="leg:comntry">

		<!--  Original Target XPath:  annot:annotations/annot:annotation-grp   -->
		<annot:annotations>
			<annot:annotation-grp>
				<xsl:apply-templates select="@* | node()"/>
			</annot:annotation-grp>
		</annot:annotations>

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

	<xsl:template match="refpt">

		<!--  Original Target XPath:  ref:anchor   -->
		<ref:anchor>
			<xsl:apply-templates select="@* | node()"/>
		</ref:anchor>

	</xsl:template>

	<xsl:template match="heading/edpnum">

		<!--  Original Target XPath:  heading/desig   -->
		<heading>
			<desig>
				<xsl:apply-templates select="@* | node()"/>
			</desig>
		</heading>

	</xsl:template>

	<xsl:template match="heading/title">

		<!--  Original Target XPath:  heading/title   -->
		<heading>
			<title>
				<xsl:apply-templates select="@* | node()"/>
			</title>
		</heading>

	</xsl:template>

	<xsl:template match="legfragment/leg:level/leg:level-vrnt/leg:levelbody/leg:bodytext/leg:comntry/level">

		<!--  Original Target XPath:  primlaw:excerpt/primlaw:level/primlaw:bodytext/primlaw:level[@leveltype="unclassified"]/annot:annotations/annot:annotation-grp[@grptype="COMMENTARY"]/annot:annotation   -->
		<primlaw:excerpt>
			<primlaw:level>
				<primlaw:bodytext>
					<primlaw:level>
						<annot:annotations>
							<annot:annotation-grp>
								<annot:annotation>
									<xsl:apply-templates select="@* | node()"/>
								</annot:annotation>
							</annot:annotation-grp>
						</annot:annotations>
					</primlaw:level>
				</primlaw:bodytext>
			</primlaw:level>
		</primlaw:excerpt>

	</xsl:template>

	<xsl:template match="level/bodytext">

		<!--  Original Target XPath:  annot:annotation/bodytext   -->
		<annot:annotation>
			<bodytext>
				<xsl:apply-templates select="@* | node()"/>
			</bodytext>
		</annot:annotation>

	</xsl:template>

	<xsl:template match="leg:level/leg:level-vrnt/leg:levelbody/leg:comntry/level">

		<!--  Original Target XPath:  primlaw:level/primlaw:bodytext/primlaw:level[@leveltype="unclassified"]/annot:annotations/annot:annotation-grp[@grptype="COMMENTARY"]/annot:annotation   -->
		<primlaw:level>
			<primlaw:bodytext>
				<primlaw:level>
					<annot:annotations>
						<annot:annotation-grp>
							<annot:annotation>
								<xsl:apply-templates select="@* | node()"/>
							</annot:annotation>
						</annot:annotation-grp>
					</annot:annotations>
				</primlaw:level>
			</primlaw:bodytext>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="level">

		<!--  Original Target XPath:  seclaw:level/seclaw:bodytext/primlaw:excerpt/primlaw:level/annot:annotations/annot:annotation-grp[@grptype="COMMENTARY"]/annot:annotation/annot:annotationlevel   -->
		<seclaw:level>
			<seclaw:bodytext>
				<primlaw:excerpt>
					<primlaw:level>
						<annot:annotations>
							<annot:annotation-grp>
								<annot:annotation>
									<annot:annotationlevel>
										<xsl:apply-templates select="@* | node()"/>
									</annot:annotationlevel>
								</annot:annotation>
							</annot:annotation-grp>
						</annot:annotations>
					</primlaw:level>
				</primlaw:excerpt>
			</seclaw:bodytext>
		</seclaw:level>

	</xsl:template>

	<xsl:template match="leg:comntry/level/level">

		<!--  Original Target XPath:  seclaw:level/seclaw:bodytext/primlaw:excerpt/primlaw:level/annot:annotations/annot:annotation-grp[@grptype="COMMENTARY"]/annot:annotation/annot:annotationlevel   -->
		<seclaw:level>
			<seclaw:bodytext>
				<primlaw:excerpt>
					<primlaw:level>
						<annot:annotations>
							<annot:annotation-grp>
								<annot:annotation>
									<annot:annotationlevel>
										<xsl:apply-templates select="@* | node()"/>
									</annot:annotationlevel>
								</annot:annotation>
							</annot:annotation-grp>
						</annot:annotations>
					</primlaw:level>
				</primlaw:excerpt>
			</seclaw:bodytext>
		</seclaw:level>

	</xsl:template>

	<xsl:template match="bodytext">

		<!--  Original Target XPath:  bodytext   -->
		<bodytext>
			<xsl:apply-templates select="@* | node()"/>
		</bodytext>

	</xsl:template>

	<xsl:template match="comm:body/level/bodytext/legfragment/leg:comntry/bodytext">

		<!--  Original Target XPath:  seclaw:body/seclaw:level/seclaw:bodytext/primlaw:excerpt/primlaw:level[@leveltype="unclassified"]/annot:annotations/annot:annotation-grp[@grptype="COMMENTARY"]/annot:annotation/bodytext   -->
		<seclaw:body>
			<seclaw:level>
				<seclaw:bodytext>
					<primlaw:excerpt>
						<primlaw:level>
							<annot:annotations>
								<annot:annotation-grp>
									<annot:annotation>
										<bodytext>
											<xsl:apply-templates select="@* | node()"/>
										</bodytext>
									</annot:annotation>
								</annot:annotation-grp>
							</annot:annotations>
						</primlaw:level>
					</primlaw:excerpt>
				</seclaw:bodytext>
			</seclaw:level>
		</seclaw:body>

	</xsl:template>

	<xsl:template match="leg:comntry/bodytext">

		<!--  Original Target XPath:  annot:annotations/annot:annotation-grp[@grptype="COMMENTARY"]/annot:annotation/bodytext   -->
		<annot:annotations>
			<annot:annotation-grp>
				<annot:annotation>
					<bodytext>
						<xsl:apply-templates select="@* | node()"/>
					</bodytext>
				</annot:annotation>
			</annot:annotation-grp>
		</annot:annotations>

	</xsl:template>

</xsl:stylesheet>