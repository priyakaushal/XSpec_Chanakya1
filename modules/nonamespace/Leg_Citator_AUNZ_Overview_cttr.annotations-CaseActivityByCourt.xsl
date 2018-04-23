<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
	xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"
	xmlns:index="urn:x-lexisnexis:content:publicationindex:sharedservices:1"
	xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/"  
	xmlns:primlawhist="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-history/1/"
	xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" 
	xmlns:leg="http://www.lexis-nexis.com/glp/leg"
	xmlns:navaid="urn:x-lexisnexis:content:navigationaid:sharedservices:1"
	xmlns:source_cttr="http://www.lexis-nexis.com/glp/cttr" xmlns:cttr="urn:x-lexisnexis:content:citator:sharedservices:1" version="2.0" exclude-result-prefixes="#all">
	

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/"
		id="Leg_Citator_AUNZ_Overview_cttr.annotations-CaseActivityByCourt">
		<title>cttr:body/cttr:content/cttr:annotations - Case Activity By Court
				<lnpid>id-AU20-22238</lnpid></title>

		<body>

			<section>
				<p>If <sourcexml>cttr:annotations/cttr:annotsummary/[@id="OI20"]</sourcexml> OR
						<sourcexml>cttr:annotations/cttr:annotsummary/[@id="OP24"]</sourcexml>
					create <targetxml>primlawhist:primlawhist</targetxml>.</p>
				<p>NOTE EXCEPTION: if <sourcexml>cttr:annotations/cttr:annotsummary</sourcexml>
					contains no other child elements except for <sourcexml>table</sourcexml>, and
					the <sourcexml>table</sourcexml> has no <sourcexml>entry</sourcexml> descendant
					elements containing either text content or <sourcexml>lnlink</sourcexml>
					children, then suppress all content of this
						<sourcexml>cttr:annotations/cttr:annotsummary</sourcexml> element (i.e. no
					target markup is created at all).</p>
				<p>Add <sourcexml>primlawhist:primlawhist/@xml:id</sourcexml> containing
					"refsection-" concatenated with the value of
						<sourcexml>cttr:annotsummary/@id</sourcexml>.</p>
				<p>Create <targetxml>ref:anchor[@id="ref-case-activity-by-court"]</targetxml> within
						<targetxml>primlawhist:primlawhist</targetxml>.</p>
				<p>
					<sourcexml>cttr:annotations/heading</sourcexml> is suppressed.</p>
				<p>If <sourcexml>cttr:annotations/cttr:annotsummary/table/title</sourcexml> contains
					non-whitespace text, use standard mapping to
						<targetxml>primlawhist:primlawhist/heading/title</targetxml>. Otherwise map
						<sourcexml>cttr:annotations/cttr:annotsummary/@display-name</sourcexml> to
						<targetxml>primlawhist:primlawhist/heading/title</targetxml>.</p>
				<p>For the content of <sourcexml>cttr:annotsummary/table</sourcexml>: <ul>
						<li>
							<sourcexml>tgroup/colspec</sourcexml> is suppressed.</li>
						<li>For each <sourcexml>tbody/row</sourcexml>: <ul>
								<li>Create
										<targetxml>primlawhist:histgrp[@grptype="case-activity-by-court"]</targetxml>
									with <targetxml>primlawhist:histgrp/@label</targetxml> populated
									with the value from
										<sourcexml>row/entry[@colname="court"]/text()</sourcexml>
								</li>
								<li>Create
										<targetxml>primlawhist:histitem/primlawhist:histitemdiv/@divtype</targetxml>
									with value
										<sourcexml>row/entry[@colname="percent"]/text()</sourcexml>
								</li>
								<li>Create
										<targetxml>primlawhist:histitem/primlawhist:histitemdiv/textitem</targetxml>
									with text
										<sourcexml>row/entry[@colname="number"]/text()</sourcexml>.</li>
							</ul>
						</li>
					</ul>
				</p>
			</section>

			<example>
				<title>Example 1: Source Case Activity - By Court</title>
				<codeblock>
    &lt;cttr:annotations&gt;
      &lt;heading&gt;
        &lt;title&gt;Case Activity&lt;/title&gt;
      &lt;/heading&gt;
      &lt;cttr:annotsummary display-name="By Court" id="OI20"&gt;
        &lt;!-- OI20 Cases by Court Pie Chart --&gt;
        
          &lt;table&gt;
            &lt;title&gt;By Court&lt;/title&gt;
            &lt;tgroup cols="3"&gt;
              &lt;colspec colname="court"/&gt;
              &lt;colspec colname="number"/&gt;
              &lt;colspec colname="percent"/&gt;
              &lt;tbody&gt;
                &lt;row&gt;
                  &lt;entry colname="court"&gt;FCA&lt;/entry&gt;
                  &lt;entry colname="number"&gt;34&lt;/entry&gt;
                  &lt;entry colname="percent"&gt;50 %&lt;/entry&gt;
                &lt;/row&gt;
                &lt;row&gt;
                  &lt;entry colname="court"&gt;FamCA&lt;/entry&gt;
                  &lt;entry colname="number"&gt;12&lt;/entry&gt;
                  &lt;entry colname="percent"&gt;18 %&lt;/entry&gt;
                &lt;/row&gt;
                ...
            &lt;/tgroup&gt;
          &lt;/table&gt;
        &lt;/cttr:annotsummary&gt; 
        ...
    &lt;/cttr:annotations&gt;
        </codeblock>

				<title>Example 1: Target Case Activity - By Court</title>
				<codeblock>
                &lt;primlawhist:primlawhist xml:id="refsection-OI20"&gt;
                    &lt;heading&gt;
                        &lt;title&gt;By Court&lt;/title&gt;
                    &lt;/heading&gt;
                    &lt;primlawhist:histgrp grptype="case-activity-by-court" label="FCA"&gt;
                       &lt;primlawhist:histitem&gt;
                           &lt;primlawhist:histitemdiv divtype="50%"&gt;
                               &lt;textitem&gt;34&lt;/textitem&gt;
                           &lt;/primlawhist:histitemdiv&gt;
                       &lt;/primlawhist:histitem&gt;
                    &lt;/primlawhist:histgrp&gt;
                    &lt;primlawhist:histgrp grptype="case-activity-by-court" label="FamCA"&gt;
                        &lt;primlawhist:histitem&gt;
                            &lt;primlawhist:histitemdiv divtype="18%"&gt;
                                &lt;textitem&gt;12&lt;/textitem&gt;
                            &lt;/primlawhist:histitemdiv&gt;
                        &lt;/primlawhist:histitem&gt;
                    &lt;/primlawhist:histgrp&gt;  
  ...
        </codeblock>
			</example>

			<section>
				<title> Changes: </title>
				<p>2015-12-11: <ph id="change_20151211l_snb">Changed
							<sourcexml>[@id="OI24"]</sourcexml> to be
							<sourcexml>[@id="OP24"]</sourcexml> and moved mapping of cases "By
						Provision"
							(<sourcexml>cttr:annotations/cttr:annotsummary/[@id="OI21"]</sourcexml>)
						to a new section titled "cttr:body/cttr:content/cttr:annotations - Case
						Activity By Provision" because mapping is different, and changed this
						section title accordingly. Moved partial instructions that were specific to
						this source content to the new section. Modified creation of
							<targetxml>primlawhist:primlawhist/@xml:id</targetxml> to be specific to
						the source document <sourcexml>@id</sourcexml> value. Removed source markup
						example for Provisions (OP24), since mapping is essentially identical
						excempt for the id attributes. Added instruction to suppress
							<sourcexml>cttr:annotations/heading</sourcexml> and changed target title
						markup to be mapped from
							<sourcexml>cttr:annotations/cttr:annotsummary/table/title</sourcexml> if
						it contains non-whitespace text, and
							<sourcexml>cttr:annotations/cttr:annotsummary/@display-name</sourcexml>
						otherwise. Added exception to suppress all output if the
							<sourcexml>cttr:annotations/cttr:annotsummary</sourcexml> if it contains
						only an "empty" table. Added clarification to suppress
							<sourcexml>tgroup/colspec</sourcexml>. Changed target markup from
							<targetxml>ref:relatedcontentitem</targetxml> to be
							<targetxml>primlawhist:histgrp</targetxml> to match markup example
						(which was correct). Changed
							<targetxml>primlawhist:histgrp/@grptype="cases"</targetxml> to be
							<targetxml>primlawhist:histgrp[@grptype="case-activity-by-court"]</targetxml>.
						Clarifications to XPATHs in mapping of
							<sourcexml>cttr:annotsummary/table</sourcexml> to
							<targetxml>primlawhist:histgrp</targetxml> elements. Removed instruction
						that <sourcexml>@display-name</sourcexml> value is dropped; it is
						potentially used for target title. Modified example target markup
							<targetxml>@xml:id</targetxml> and <targetxml>@grptype</targetxml> to be
						consistent with changes. Added creation of
							<targetxml>ref:anchor[@id="ref-case-activity-by-court"]</targetxml>
						within <targetxml>primlawhist:primlawhist</targetxml>.</ph>
				</p>
				<p>2015-12-04: <ph id="change_20151204j_snb">Added clarification to indicate when
							<targetxml>primlawhist:histgrp</targetxml> is inserted into a previously
						created <targetxml>primlawhist:primlawhist</targetxml> element, and when a
						new <targetxml>primlawhist:primlawhist</targetxml> element is created.</ph>
				</p>
			</section>

		</body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU20_Legislative_Citator\Leg_Citator_AUNZ_Overview_cttr.annotations-CaseActivityByCourt.dita  -->
	

	<xsl:template match="source_cttr:annotations/source_cttr:annotsummary[@id='OI20' or @id='OP24']">
		<!--<xsl:variable name="annot-data" select=".">
		</xsl:variable>
			
		<xsl:choose>
			<xsl:when test=".//title = $annot-data">
				<!-\- blank -\->
			</xsl:when>
			<xsl:otherwise>
				
			</xsl:otherwise>
		</xsl:choose>-->
		<primlawhist:primlawhist>
			<xsl:attribute name="xml:id">
				<xsl:value-of select="concat('refsection-',@id)"/>
			</xsl:attribute>
			<xsl:element name="ref:anchor">
				<xsl:attribute name="id">
					<xsl:text>ref-case-activity-by-court</xsl:text>
				</xsl:attribute>
			</xsl:element>
			<xsl:choose>
				<xsl:when test="table/title">
					<heading>						
							<xsl:apply-templates select="table/title"/>						
					</heading>
				</xsl:when>
				<xsl:when test="@display-name">
					<heading>
						<title>
							<xsl:apply-templates/>
						</title>
					</heading>
				</xsl:when>				
			</xsl:choose>	
			<xsl:if test="table">
				<xsl:for-each select="table/tgroup/tbody/row">
					<primlawhist:histgrp>
						<xsl:attribute name="grptype">
							<xsl:text>case-activity-by-court</xsl:text>
						</xsl:attribute>
						<xsl:attribute name="label">
							<xsl:value-of select="entry[@colname='court']/text()"/>
						</xsl:attribute>
						<primlawhist:histitem>
							<primlawhist:histitemdiv>
								<xsl:attribute name="divtype">
									<xsl:value-of select="entry[@colname='percent']/text()"/>
								</xsl:attribute>
								<textitem>
									<!--<xsl:apply-templates select="entry[@colname='number']/text()"/>-->
									<xsl:value-of select="entry[@colname='number']/text()"/>
								</textitem>
							</primlawhist:histitemdiv>
						</primlawhist:histitem>
					</primlawhist:histgrp>
				</xsl:for-each>
			</xsl:if>
			
			
		</primlawhist:primlawhist>

	</xsl:template>

	<xsl:template match="source_cttr:annotations/source_cttr:annotsummary[@id='OI20' or @id='OP24' or @id='OI21']/table/tgroup/colspec"/>

	<xsl:template match="source_cttr:annotations/source_cttr:annotsummary[@id='OI20' or @id='OP24' or @id='OI21']/heading"/>

	<!--<xsl:template match="cttr:annotations/cttr:annotsummary/[@id=&#34;OP24&#34;]">
		<!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  primlawhist:primlawhist   -\->
		<primlawhist:primlawhist>
			<xsl:apply-templates select="@* | node()"/>
		</primlawhist:primlawhist>

	</xsl:template>

	<xsl:template match="cttr:annotations/cttr:annotsummary">
		<!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  ref:anchor[@id="ref-case-activity-by-court"]   -\->
		<ref:anchor>
			<xsl:apply-templates select="@* | node()"/>
		</ref:anchor>

	</xsl:template>

	<xsl:template match="table">
		<!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  ref:anchor[@id="ref-case-activity-by-court"]   -\->
		<ref:anchor>
			<xsl:apply-templates select="@* | node()"/>
		</ref:anchor>

	</xsl:template>

	<xsl:template match="entry">
		<!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  ref:anchor[@id="ref-case-activity-by-court"]   -\->
		<ref:anchor>
			<xsl:apply-templates select="@* | node()"/>
		</ref:anchor>

	</xsl:template>

	<xsl:template match="lnlink">
		<!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  ref:anchor[@id="ref-case-activity-by-court"]   -\->
		<ref:anchor>
			<xsl:apply-templates select="@* | node()"/>
		</ref:anchor>

	</xsl:template>

	<xsl:template match="primlawhist:primlawhist/@xml:id">
		<!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  ref:anchor[@id="ref-case-activity-by-court"]   -\->
		<ref:anchor>
			<xsl:apply-templates select="@* | node()"/>
		</ref:anchor>

	</xsl:template>

	<xsl:template match="cttr:annotsummary/@id">
		<!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  ref:anchor[@id="ref-case-activity-by-court"]   -\->
		<ref:anchor>
			<xsl:apply-templates select="@* | node()"/>
		</ref:anchor>

	</xsl:template>

	<xsl:template match="cttr:annotations/heading">
		<!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  primlawhist:primlawhist/heading/title   -\->
		<primlawhist:primlawhist>
			<heading>
				<title>
					<xsl:apply-templates select="@* | node()"/>
				</title>
			</heading>
		</primlawhist:primlawhist>

	</xsl:template>

	<xsl:template match="cttr:annotations/cttr:annotsummary/table/title">
		<!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  primlawhist:primlawhist/heading/title   -\->
		<primlawhist:primlawhist>
			<heading>
				<title>
					<xsl:apply-templates select="@* | node()"/>
				</title>
			</heading>
		</primlawhist:primlawhist>

	</xsl:template>

	<xsl:template match="cttr:annotations/cttr:annotsummary/@display-name">
		<!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  primlawhist:primlawhist/heading/title   -\->
		<primlawhist:primlawhist>
			<heading>
				<title>
					<xsl:apply-templates select="@* | node()"/>
				</title>
			</heading>
		</primlawhist:primlawhist>

	</xsl:template>

	<xsl:template match="cttr:annotsummary/table">
		<!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  primlawhist:histgrp[@grptype="case-activity-by-court"]   -\->
		<primlawhist:histgrp>
			<xsl:apply-templates select="@* | node()"/>
		</primlawhist:histgrp>

	</xsl:template>

	<xsl:template match="tgroup/colspec">
		<!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  primlawhist:histgrp[@grptype="case-activity-by-court"]   -\->
		<primlawhist:histgrp>
			<xsl:apply-templates select="@* | node()"/>
		</primlawhist:histgrp>

	</xsl:template>

	<xsl:template match="tbody/row">
		<!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  primlawhist:histgrp[@grptype="case-activity-by-court"]   -\->
		<primlawhist:histgrp>
			<xsl:apply-templates select="@* | node()"/>
		</primlawhist:histgrp>

	</xsl:template>

	<xsl:template match="row/entry[@colname=&#34;court&#34;]/text()">
		<!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  primlawhist:histitem/primlawhist:histitemdiv/@divtype   -\->
		<primlawhist:histitem>
			<primlawhist:histitemdiv>
				<xsl:attribute name="divtype">
					<xsl:apply-templates select="node()"/>
				</xsl:attribute>
			</primlawhist:histitemdiv>
		</primlawhist:histitem>

	</xsl:template>

	<xsl:template match="row/entry[@colname=&#34;percent&#34;]/text()">
		<!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  primlawhist:histitem/primlawhist:histitemdiv/textitem   -\->
		<primlawhist:histitem>
			<primlawhist:histitemdiv>
				<textitem>
					<xsl:apply-templates select="@* | node()"/>
				</textitem>
			</primlawhist:histitemdiv>
		</primlawhist:histitem>

	</xsl:template>

	<xsl:template match="row/entry[@colname=&#34;number&#34;]/text()">
		<!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  primlawhist:primlawhist/@xml:id   -\->
		<primlawhist:primlawhist>
			<xsl:attribute name="xml:id">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</primlawhist:primlawhist>

	</xsl:template>

	<xsl:template match="[@id=&#34;OI24&#34;]">
		<!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  primlawhist:primlawhist/@xml:id   -\->
		<primlawhist:primlawhist>
			<xsl:attribute name="xml:id">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</primlawhist:primlawhist>

	</xsl:template>

	<xsl:template match="[@id=&#34;OP24&#34;]">
		<!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  primlawhist:primlawhist/@xml:id   -\->
		<primlawhist:primlawhist>
			<xsl:attribute name="xml:id">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</primlawhist:primlawhist>

	</xsl:template>

	<xsl:template match="cttr:annotations/cttr:annotsummary/[@id=&#34;OI21&#34;]">
		<!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  primlawhist:primlawhist/@xml:id   -\->
		<primlawhist:primlawhist>
			<xsl:attribute name="xml:id">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</primlawhist:primlawhist>

	</xsl:template>

	<xsl:template match="@id">
		<!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  ref:relatedcontentitem   -\->
		<ref:relatedcontentitem>
			<xsl:apply-templates select="@* | node()"/>
		</ref:relatedcontentitem>

	</xsl:template>

	<xsl:template match="@display-name">
		<!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  @xml:id   -\->
		<xsl:attribute name="xml:id">
			<xsl:apply-templates select="node()"/>
		</xsl:attribute>

	</xsl:template>-->

</xsl:stylesheet>
