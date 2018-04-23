<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" xmlns:in="http://www.lexis-nexis.com/glp/in" xmlns:index="urn:x-lexisnexis:content:publicationindex:sharedservices:1" xmlns:navaid="urn:x-lexisnexis:content:navigationaid:sharedservices:1" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita docinfo in">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="index">
   <title>index <lnpid>id-ST04-26810</lnpid></title>
   <body>
      <section>
        <ul>
        <li><p><sourcexml>/LEGDOC/leg:body/leg:endmatter/index</sourcexml>
									<b>becomes</b>
									<targetxml>/regulation:regulation/regulation:body/primlaw:level[@leveltype="endnote"]/index:index</targetxml>
									with optional child <sourcexml>heading</sourcexml>
									<b>becomes</b>
									<targetxml>heading</targetxml> and attributes
										<sourcexml>@id</sourcexml>
									<b>becomes</b>
									<targetxml>@xml:id</targetxml>, <sourcexml>@subdoc</sourcexml>
									<b>becomes</b>
									<targetxml>@includeintoc</targetxml> and
										<sourcexml>@toc-caption</sourcexml>
									<b>becomes</b>
									<targetxml>@alternatetoccaption</targetxml> along with a
									required attribute
										<targetxml>index:index[@indextype="definedTerms"]</targetxml>
									and <targetxml>index:index[@indextype="topical"]</targetxml>.
										<note>When input documents has attribute
											<sourcexml>index[@id="XXXX_DEFLIST"]</sourcexml> then it
										will map to
											<targetxml>index:index[@indextype="definedTerms"]</targetxml>
										or if it has attribute
											<sourcexml>index[@id="XXXX_INDEX"]</sourcexml> then it
										will map to
											<targetxml>index:index[@indextype="topical"]</targetxml></note>
									<note>Refer common <xref href="../../common_newest/Rosetta_refpt-LxAdv-ref.anchor.dita">common_rosetta_refpt.dita</xref> file for handling of
											"<sourcexml>refpt</sourcexml>" element.</note>
								</p> 
								
								<p>The
								child elements are converted using the rule below: <ul>
									<li><sourcexml>index/p</sourcexml>
										<b>becomes</b>
										<targetxml>index:index/heading/subtitle</targetxml></li>
									<li><sourcexml>index/in:lev1</sourcexml>
										<b>becomes</b>
										<targetxml>index:index/index:item</targetxml></li>
									<li><sourcexml>in:lev1/in:entry/in:entry-text</sourcexml>
										<b>becomes</b>
										<targetxml>index:item/index:entry/index:entrytext</targetxml></li>
									<li><sourcexml>in:entry/in:index-ref</sourcexml>
                <b>becomes</b>
                <targetxml>index:entry/index:locator/ref:lnlink</targetxml> (create both target
                element <targetxml>index:locator</targetxml> and target child element
                  <targetxml>index:locator/ref:lnlink</targetxml>), then source child element
                  <sourcexml>in:index-ref/remotelink</sourcexml> will be converted as : <ul>
                  <li>Use case: <sourcexml>remotelink[@service='DOC-ID']</sourcexml> becomes
                      <targetxml>ref:marker</targetxml>. Create a <targetxml>ref:locator</targetxml>
                    and the following child elements within it:<ul>
                      <li>If <sourcexml>@remotekey1="DOC-ID"</sourcexml> then <ul>
                          <li><targetxml>ref:key-name/@name</targetxml> will have the value
                            "DOC-ID".</li>
                          <li><targetxml>key-value/@value</targetxml> will be the value of
                              <sourcexml>@dpsi</sourcexml> followed by hyphen and concatenated with
                              <sourcexml>@refpt</sourcexml> or <sourcexml>@remotekey2</sourcexml>,
                            which ever is present (if both are present, use
                              <sourcexml>@remotekey2</sourcexml>).</li>
                        </ul></li>
                      <li>If <sourcexml>@remotekey1="REFPTID"</sourcexml> then <ul>
                          <li><targetxml>ref:key-name/@name</targetxml> will have the value
                            "DOC-ID".</li>
                          <li><targetxml>ref:key-value/@value</targetxml> will be the value of
                              <sourcexml>@dpsi</sourcexml> followed by hyphen and concatenated with
                              <sourcexml>@docidref</sourcexml>.</li>
                          <li>Create <targetxml>ref:locator/@anchoridref</targetxml> with value from
                              <sourcexml>@refpt</sourcexml> or <sourcexml>@remotekey2</sourcexml>,
                            which ever is present (if both are present, use
                              <sourcexml>@refpt</sourcexml>).</li>
                        </ul></li>
                    </ul>
                    <note>If <sourcexml>remotelink/@dpsi</sourcexml> is not present, use value from
                        <sourcexml>docinfo:dpsi/@id-string</sourcexml> or capture value from the LBU
                      manifest file.</note>
                    <note><targetxml>ref:locator/@anchoridref</targetxml> that begins with a number
                      must have an underscore added at start.</note>
                  </li>
                </ul>
                <pre>
              <b><i>Source example based on AU content</i></b>

&lt;leg:endmatter&gt;
&lt;index id="NSW_REG_1913-1_DEFLIST"&gt;
	&lt;heading&gt;
		&lt;title&gt;&lt;refpt id="NSW_REG_1913-1_DEFLIST" type="ext"/&gt;
		&lt;emph typestyle="bf"&gt;List of Defined Terms&lt;/emph&gt;&lt;/title&gt;
	&lt;/heading&gt;
	&lt;in:lev1&gt;
		&lt;in:entry&gt;
			&lt;in:entry-text&gt;employee&lt;/in:entry-text&gt;
			&lt;in:index-ref&gt;&lt;remotelink service="DOC-ID" remotekey1="REFPTID" dpsi="05CC" docidref="ABCD_9876"
			refpt="NSW_REG_1913-1_EMPLOYEE"&gt;reg2&lt;/remotelink&gt;&lt;/in:index-ref&gt;
		&lt;/in:entry&gt;
	&lt;/in:lev1&gt;
	&lt;in:lev1&gt;
		&lt;in:entry&gt;
			&lt;in:entry-text&gt;jointer&lt;/in:entry-text&gt;
			&lt;in:index-ref&gt;&lt;remotelink service="DOC-ID" remotekey1="REFPTID" dpsi="05CC" docidref="ABCD_9876"
			refpt="NSW_REG_1913-1_JOINTER"&gt;reg19sub8a&lt;/remotelink&gt;&lt;/in:index-ref&gt;
		&lt;/in:entry&gt;
	&lt;/in:lev1&gt;
	&lt;in:lev1&gt;
		&lt;in:entry&gt;
			&lt;in:entry-text&gt;the Act&lt;/in:entry-text&gt;
			&lt;in:index-ref&gt;&lt;remotelink service="DOC-ID" remotekey1="REFPTID" dpsi="05CC" docidref="ABCD_9876"
			refpt="NSW_REG_1913-1_THEACT"&gt;reg2&lt;/remotelink&gt;&lt;/in:index-ref&gt;
		&lt;/in:entry&gt;
	&lt;/in:lev1&gt;
&lt;/index&gt;
&lt;/leg:endmatter&gt;

              
                </pre>
                <pre>
              <b><i>Target Example</i></b>

&lt;primlaw:level leveltype="endnote"&gt;
  &lt;index:index indextype="definedTerms"&gt;
	&lt;ref:anchor id="NSW_REG_1913-1_DEFLIST" anchortype="global"/&gt;
	&lt;heading&gt;
		&lt;title&gt;&lt;emph typestyle="bf"&gt;List of Defined Terms&lt;/emph&gt;&lt;/title&gt;
	&lt;/heading&gt;
	&lt;index:item&gt;
		&lt;index:entry&gt;
			&lt;index:entrytext&gt;employee&lt;/index:entrytext&gt;
				&lt;index:locator&gt;
				  &lt;ref:lnlink&gt;
  					&lt;ref:marker&gt;reg2&lt;/ref:marker&gt;
						&lt;ref:locator anchoridref="NSW_REG_1913-1_EMPLOYEE"&gt;
							&lt;ref:locator-key&gt;
								&lt;ref:key-name name="DOC-ID"/&gt;
								&lt;ref:key-value value="05CC-ABCD_9876"/&gt;
							&lt;/ref:locator-key&gt;
						&lt;/ref:locator&gt;
				  &lt;/ref:lnlink&gt;
				&lt;/index:locator&gt;
			&lt;/index:entry&gt;
		&lt;/index:item&gt;
		&lt;index:item&gt;
		&lt;index:entry&gt;
			&lt;index:entrytext&gt;jointer&lt;/index:entrytext&gt;
				&lt;index:locator&gt;
				  &lt;ref:lnlink&gt;
						&lt;ref:marker&gt;reg19sub8a&lt;/ref:marker&gt;
						&lt;ref:locator anchoridref="NSW_REG_1913-1_JOINTER"&gt;
							&lt;ref:locator-key&gt;
								&lt;ref:key-name name="DOC-ID"/&gt;
								&lt;ref:key-value value="05CC-ABCD_9876"/&gt;
							&lt;/ref:locator-key&gt;
						&lt;/ref:locator&gt;
				  &lt;/ref:lnlink&gt;
				&lt;/index:locator&gt;
			&lt;/index:entry&gt;
		&lt;/index:item&gt;
		&lt;index:item&gt;
		&lt;index:entry&gt;
			&lt;index:entrytext&gt;the Act&lt;/index:entrytext&gt;
				&lt;index:locator&gt;
				  &lt;ref:lnlink&gt;
						&lt;ref:marker&gt;reg2&lt;/ref:marker&gt;
						&lt;ref:locator anchoridref="NSW_REG_1913-1_THEACT"&gt;
							&lt;ref:locator-key&gt;
								&lt;ref:key-name name="DOC-ID"/&gt;
								&lt;ref:key-value value="05CC-ABCD_9876"/&gt;
							&lt;/ref:locator-key&gt;
						&lt;/ref:locator&gt;
				  &lt;/ref:lnlink&gt;
				&lt;/index:locator&gt;
			&lt;/index:entry&gt;
		&lt;/index:item&gt;
  &lt;/index:index&gt;
&lt;/primlaw:level&gt;

              
        		</pre>
              </li>
									<li><b>Handling for <sourcexml>index/table</sourcexml> and <sourcexml>index/p</sourcexml>
                  scenarios:</b>
                <sourcexml>/LEGDOC/leg:body/leg:endmatter/index</sourcexml>
                <b>becomes</b>
                <targetxml>/regulation:regulation/regulation:body/primlaw:level[@leveltype="endnote"]/navaid:navigationaid</targetxml>
                with optional child <sourcexml>heading</sourcexml>
                <b>becomes</b>
                <targetxml>title</targetxml> and attributes <sourcexml>@id</sourcexml>
                <b>becomes</b>
                <targetxml>@xml:id</targetxml> and child elements are converted using the rule
                below: <ul>
                  <li><sourcexml>index/p/table</sourcexml>
                    <b>becomes</b>
                    <targetxml>navaid:navigationaid/bodytext/p/table</targetxml>
                    <note>Refer <xref href="../../common_newest/Rosetta_table-LxAdv-table.dita">table</xref> for handling of <sourcexml>table</sourcexml></note>
                  </li>
                  <li><sourcexml>index/table</sourcexml>
                    <b>becomes</b>
                    <targetxml>navaid:navigationaid/bodytext/table</targetxml>
                    <note>Refer <xref href="../../common_newest/Rosetta_table-LxAdv-table.dita">table</xref> for handling of <sourcexml>table</sourcexml></note>
                  </li>
                  <li><sourcexml>index/p</sourcexml>
                    <b>becomes</b>
                    <targetxml>navaid:navigationaid/bodytext/p</targetxml>
                    <note>Refer <xref href="../../common_newest/Rosetta_p-LxAdv-p.dita">p</xref> for
                      handling of <sourcexml>p</sourcexml></note>
                    <note>Refer <xref href="../../common_newest/Rosetta_text-LxAdv-text.dita">text</xref> for handling of <sourcexml>text</sourcexml></note>
                  </li>
                </ul>
                <pre>
              <b><i>Source example based on AU content</i></b>

&lt;leg:endmatter&gt;
	&lt;index id="VIC_REG_2002-73_INDEX"&gt;
		&lt;heading&gt;
			&lt;title align="center"&gt;&lt;refpt id="VIC_REG_2002-73_INDEX" type="ext"/&gt;&lt;emph typestyle="bf"&gt;INDEX&lt;/emph&gt;&lt;/title&gt;
		&lt;/heading&gt;
		&lt;p&gt;
			&lt;table&gt;
				&lt;tgroup cols="2"&gt;
					&lt;colspec colwidth="3*" colname="c1"/&gt;
					&lt;colspec colwidth="12*" colname="c2"/&gt;
					&lt;tbody&gt;
							&lt;row&gt;
								&lt;entry colname="c1" align="left"&gt;&lt;emph typestyle="bf"&gt;&lt;emph typestyle="it"&gt;Subject&lt;/emph&gt;&lt;/emph&gt;&lt;/entry&gt;
								&lt;entry colname="c2" align="left"&gt;&lt;emph typestyle="bf"&gt;&lt;emph typestyle="it"&gt;Regulation&lt;/emph&gt;&lt;/emph&gt;&lt;/entry&gt;
							&lt;/row&gt;
							&lt;row&gt;
								&lt;entry colname="c1" align="left"&gt;&lt;emph typestyle="bf"&gt;Absent voters&lt;/emph&gt;&lt;/entry&gt;
								&lt;entry colname="c2" align="left"&gt;&lt;/entry&gt;
							&lt;/row&gt;
							&lt;row&gt;
								&lt;entry colname="c1" align="left"&gt;ballot material after close of voting&lt;/entry&gt;
								&lt;entry colname="c2" align="left"&gt;37&lt;/entry&gt;
							&lt;/row&gt;
							&lt;row&gt;
								&lt;entry colname="c1" align="left"&gt;declarations&lt;/entry&gt;
								&lt;entry colname="c2" align="left"&gt;28, Sch.&lt;/entry&gt;
							&lt;/row&gt;
							&lt;row&gt;
								&lt;entry colname="c1" align="left"&gt;extraction of ballot papers from accepted envelopes&lt;/entry&gt;
								&lt;entry colname="c2" align="left"&gt;36&lt;/entry&gt;
							&lt;/row&gt;
							&lt;row&gt;
								&lt;entry colname="c1" align="left"&gt;forwarding of envelopes&lt;/entry&gt;
								&lt;entry colname="c2" align="left"&gt;29&lt;/entry&gt;
							&lt;/row&gt;
							&lt;row&gt;
								&lt;entry colname="c1" align="left"&gt;preliminary scrutiny&lt;/entry&gt;
								&lt;entry colname="c2" align="left"&gt;31, 34&lt;/entry&gt;
							&lt;/row&gt;
							&lt;row&gt;
								&lt;entry colname="c1" align="left"&gt;&lt;emph typestyle="bf"&gt;Antarctic electors&lt;/emph&gt;&lt;/entry&gt;
								&lt;entry colname="c2" align="left"&gt;24&lt;/entry&gt;
							&lt;/row&gt;
							....
						&lt;/tbody&gt;
				&lt;/tgroup&gt;
			&lt;/table&gt;
		&lt;/p&gt;
	&lt;/index&gt;
	....
&lt;/leg:endmatter&gt;

              
                </pre>
                <pre>
              <b><i>Target Example</i></b>

&lt;primlaw:level leveltype="endnote"&gt;
	&lt;navaid:navigationaid&gt;    
	&lt;ref:anchor id="VIC_REG_2002-73_INDEX" anchortype="global"/&gt;
	    &lt;title align="center"&gt;&lt;emph typestyle="bf"&gt;INDEX&lt;/emph&gt;&lt;/title&gt;    
	    &lt;bodytext&gt;
		  &lt;p&gt;
			&lt;table&gt;
				&lt;tgroup cols="2"&gt;
					&lt;colspec colwidth="3*" colname="c1"/&gt;
					&lt;colspec colwidth="12*" colname="c2"/&gt;
					&lt;tbody&gt;
							&lt;row&gt;
								&lt;entry colname="c1" align="left"&gt;&lt;emph typestyle="bf"&gt;&lt;emph typestyle="it"&gt;Subject&lt;/emph&gt;&lt;/emph&gt;&lt;/entry&gt;
								&lt;entry colname="c2" align="left"&gt;&lt;emph typestyle="bf"&gt;&lt;emph typestyle="it"&gt;Regulation&lt;/emph&gt;&lt;/emph&gt;&lt;/entry&gt;
							&lt;/row&gt;
							&lt;row&gt;
								&lt;entry colname="c1" align="left"&gt;&lt;emph typestyle="bf"&gt;Absent voters&lt;/emph&gt;&lt;/entry&gt;
								&lt;entry colname="c2" align="left"&gt;&lt;/entry&gt;
							&lt;/row&gt;
							&lt;row&gt;
								&lt;entry colname="c1" align="left"&gt;ballot material after close of voting&lt;/entry&gt;
								&lt;entry colname="c2" align="left"&gt;37&lt;/entry&gt;
							&lt;/row&gt;
							&lt;row&gt;
								&lt;entry colname="c1" align="left"&gt;declarations&lt;/entry&gt;
								&lt;entry colname="c2" align="left"&gt;28, Sch.&lt;/entry&gt;
							&lt;/row&gt;
							&lt;row&gt;
								&lt;entry colname="c1" align="left"&gt;extraction of ballot papers from accepted envelopes&lt;/entry&gt;
								&lt;entry colname="c2" align="left"&gt;36&lt;/entry&gt;
							&lt;/row&gt;
							&lt;row&gt;
								&lt;entry colname="c1" align="left"&gt;forwarding of envelopes&lt;/entry&gt;
								&lt;entry colname="c2" align="left"&gt;29&lt;/entry&gt;
							&lt;/row&gt;
							&lt;row&gt;
								&lt;entry colname="c1" align="left"&gt;preliminary scrutiny&lt;/entry&gt;
								&lt;entry colname="c2" align="left"&gt;31, 34&lt;/entry&gt;
							&lt;/row&gt;
							&lt;row&gt;
								&lt;entry colname="c1" align="left"&gt;&lt;emph typestyle="bf"&gt;Antarctic electors&lt;/emph&gt;&lt;/entry&gt;
								&lt;entry colname="c2" align="left"&gt;24&lt;/entry&gt;
							&lt;/row&gt;
							....
						&lt;/tbody&gt;
					&lt;/tgroup&gt;
				&lt;/table&gt;
			&lt;/p&gt;
		&lt;/bodytext&gt;
	&lt;/navaid:navigationaid&gt;
	...
&lt;/primlaw:level&gt;

</pre>
              </li>
								</ul>
								</p>
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
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-Standard\Regulation\index.dita  -->
	<xsl:message>index.xsl requires manual development!</xsl:message> 

	<xsl:template match="/LEGDOC/leg:body/leg:endmatter/index">

		<!--  Original Target XPath:  /regulation:regulation/regulation:body/primlaw:level[@leveltype="endnote"]/index:index   -->
		<regulation:regulation xmlns:regulation="urn:x-lexisnexis:content:regulation:sharedservices:1">
			<regulation:body>
				<primlaw:level xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/">
					<index:index>
						<xsl:apply-templates select="@* | node()"/>
					</index:index>
				</primlaw:level>
			</regulation:body>
		</regulation:regulation>

	</xsl:template>

	<xsl:template match="heading">

		<!--  Original Target XPath:  heading   -->
		<heading>
			<xsl:apply-templates select="@* | node()"/>
		</heading>

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

	<xsl:template match="index[@id=&#34;XXXX_DEFLIST&#34;]">

		<!--  Original Target XPath:  index:index[@indextype="definedTerms"]   -->
		<index:index>
			<xsl:apply-templates select="@* | node()"/>
		</index:index>

	</xsl:template>

	<xsl:template match="index[@id=&#34;XXXX_INDEX&#34;]">

		<!--  Original Target XPath:  index:index[@indextype="topical"]   -->
		<index:index>
			<xsl:apply-templates select="@* | node()"/>
		</index:index>

	</xsl:template>

	<xsl:template match="refpt">

		<!--  Original Target XPath:  index:index/heading/subtitle   -->
		<index:index>
			<heading>
				<subtitle>
					<xsl:apply-templates select="@* | node()"/>
				</subtitle>
			</heading>
		</index:index>

	</xsl:template>

	<xsl:template match="index/p">

		<!--  Original Target XPath:  index:index/heading/subtitle   -->
		<index:index>
			<heading>
				<subtitle>
					<xsl:apply-templates select="@* | node()"/>
				</subtitle>
			</heading>
		</index:index>

	</xsl:template>

	<xsl:template match="index/in:lev1">

		<!--  Original Target XPath:  index:index/index:item   -->
		<index:index>
			<index:item>
				<xsl:apply-templates select="@* | node()"/>
			</index:item>
		</index:index>

	</xsl:template>

	<xsl:template match="in:lev1/in:entry/in:entry-text">

		<!--  Original Target XPath:  index:item/index:entry/index:entrytext   -->
		<index:item>
			<index:entry>
				<index:entrytext>
					<xsl:apply-templates select="@* | node()"/>
				</index:entrytext>
			</index:entry>
		</index:item>

	</xsl:template>

	<xsl:template match="in:entry/in:index-ref">

		<!--  Original Target XPath:  index:entry/index:locator/ref:lnlink   -->
		<index:entry>
			<index:locator>
				<ref:lnlink>
					<xsl:apply-templates select="@* | node()"/>
				</ref:lnlink>
			</index:locator>
		</index:entry>

	</xsl:template>

	<xsl:template match="in:index-ref/remotelink">

		<!--  Original Target XPath:  ref:marker   -->
		<ref:marker>
			<xsl:apply-templates select="@* | node()"/>
		</ref:marker>

	</xsl:template>

	<xsl:template match="remotelink[@service='DOC-ID']">

		<!--  Original Target XPath:  ref:marker   -->
		<ref:marker>
			<xsl:apply-templates select="@* | node()"/>
		</ref:marker>

	</xsl:template>

	<xsl:template match="@remotekey1=&#34;DOC-ID&#34;">

		<!--  Original Target XPath:  ref:key-name/@name   -->
		<ref:key-name>
			<xsl:attribute name="name">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</ref:key-name>

	</xsl:template>

	<xsl:template match="@dpsi">

		<!--  Original Target XPath:  ref:key-name/@name   -->
		<ref:key-name>
			<xsl:attribute name="name">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</ref:key-name>

	</xsl:template>

	<xsl:template match="@refpt">

		<!--  Original Target XPath:  ref:key-name/@name   -->
		<ref:key-name>
			<xsl:attribute name="name">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</ref:key-name>

	</xsl:template>

	<xsl:template match="@remotekey2">

		<!--  Original Target XPath:  ref:key-name/@name   -->
		<ref:key-name>
			<xsl:attribute name="name">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</ref:key-name>

	</xsl:template>

	<xsl:template match="@remotekey1=&#34;REFPTID&#34;">

		<!--  Original Target XPath:  ref:key-name/@name   -->
		<ref:key-name>
			<xsl:attribute name="name">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</ref:key-name>

	</xsl:template>

	<xsl:template match="@docidref">

		<!--  Original Target XPath:  ref:locator/@anchoridref   -->
		<ref:locator>
			<xsl:attribute name="anchoridref">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</ref:locator>

	</xsl:template>

	<xsl:template match="remotelink/@dpsi">

		<!--  Original Target XPath:  ref:locator/@anchoridref   -->
		<ref:locator>
			<xsl:attribute name="anchoridref">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</ref:locator>

	</xsl:template>

	<xsl:template match="docinfo:dpsi/@id-string">

		<!--  Original Target XPath:  ref:locator/@anchoridref   -->
		<ref:locator>
			<xsl:attribute name="anchoridref">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</ref:locator>

	</xsl:template>

	<xsl:template match="index/table">

		<!--  Original Target XPath:  /regulation:regulation/regulation:body/primlaw:level[@leveltype="endnote"]/navaid:navigationaid   -->
		<regulation:regulation xmlns:regulation="urn:x-lexisnexis:content:regulation:sharedservices:1">
			<regulation:body>
				<primlaw:level xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/">
					<navaid:navigationaid>
						<xsl:apply-templates select="@* | node()"/>
					</navaid:navigationaid>
				</primlaw:level>
			</regulation:body>
		</regulation:regulation>

	</xsl:template>

	<xsl:template match="index/p/table">

		<!--  Original Target XPath:  navaid:navigationaid/bodytext/p/table   -->
		<navaid:navigationaid>
			<bodytext>
				<p>
					<table>
						<xsl:apply-templates select="@* | node()"/>
					</table>
				</p>
			</bodytext>
		</navaid:navigationaid>

	</xsl:template>

	<xsl:template match="table">

		<!--  Original Target XPath:  navaid:navigationaid/bodytext/table   -->
		<navaid:navigationaid>
			<bodytext>
				<table>
					<xsl:apply-templates select="@* | node()"/>
				</table>
			</bodytext>
		</navaid:navigationaid>

	</xsl:template>

	<xsl:template match="p">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

	<xsl:template match="text">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

</xsl:stylesheet>