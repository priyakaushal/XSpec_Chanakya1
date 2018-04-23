<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
	xmlns:glp="http://www.lexis-nexis.com/glp"
	xmlns:leg="http://www.lexis-nexis.com/glp/leg"
	version="2.0"
	exclude-result-prefixes="dita glp leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/"
		id="Rosetta_deflist-to-LexisAdvance_deflist">
		<title><sourcexml>deflist</sourcexml> to <targetxml>deflist</targetxml>
			<lnpid>id-CCCC-10277</lnpid></title>
		<body>
			<section>
				<p>
					<sourcexml>deflist</sourcexml> becomes <targetxml>deflist</targetxml>
					with children as described below: </p>
				<p>
					<sourcexml>defitem</sourcexml> becomes <targetxml>defitem</targetxml>. </p>
				<p>
					<sourcexml>defterm</sourcexml> becomes <targetxml>defterm</targetxml>. </p>
				<p>
					<sourcexml>defdesc</sourcexml> becomes <targetxml>defdesc</targetxml>. </p>
				<note>When <sourcexml>defitem</sourcexml> contains
						<sourcexml>footenote</sourcexml> or <sourcexml>fnr</sourcexml> as a
					direct child, place the converted <targetxml>footnote</targetxml> and
						<targetxml>footnote-ref</targetxml> into either
						<targetxml>defterm</targetxml> or <targetxml>defdesc</targetxml>. If
					the <sourcexml>footenote</sourcexml> or <sourcexml>fnr</sourcexml>
					occurs either directly before or directly after
						<targetxml>defterm</targetxml>, place the footnote in
						<targetxml>defterm</targetxml>. If the
						<sourcexml>footenote</sourcexml> or <sourcexml>fnr</sourcexml>
					occurs after <targetxml>defdesc</targetxml>, place the footnote in
						<targetxml>defdesc</targetxml>. </note>
			</section>

			<example>
				<title>Source XML</title>
				<codeblock> &lt;deflist&gt; &lt;defitem&gt; &lt;defterm&gt; &lt;emph
					typestyle="bf"&gt;an entitlement to redundancy pay&lt;/emph&gt;
					&lt;/defterm&gt; &lt;defdesc&gt; &lt;p&gt; &lt;text&gt;includes an
					entitlement for an employee to enter into a retention or redeployment
					period.&lt;/text&gt; &lt;/p&gt; &lt;/defdesc&gt; &lt;/defitem&gt;
					&lt;/deflist&gt; </codeblock>
			</example>

			<example>
				<title>Target XML</title>
				<codeblock> &lt;deflist&gt; &lt;defitem&gt; &lt;defterm&gt; &lt;emph
					typestyle="bf"&gt;an entitlement to redundancy pay&lt;/emph&gt;
					&lt;/defterm&gt; &lt;defdesc&gt; &lt;bodytext&gt; &lt;p&gt;
					&lt;text&gt;includes an entitlement for an employee to enter into a
					retention or redeployment period.&lt;/text&gt; &lt;/p&gt;
					&lt;/bodytext&gt; &lt;/defdesc&gt; &lt;/defitem&gt; &lt;/deflist&gt;
				</codeblock>
			</example>
			<section>
				<p>If the markup includes <sourcexml>defitem/defterm</sourcexml>, but no
					sibling <sourcexml>defitem/defdesc</sourcexml>, create a blank
						<targetxml>defitem/defdesc</targetxml> element after
						<targetxml>defterm</targetxml> but before any other text (such as a
					note or annottion). The resulting markup within
						<targetxml>deflist/defitem</targetxml> must always include a
						<targetxml>defdesc</targetxml> child to create the proper display to
					the end user.</p>
			</section>
			<example>
				<title>Source XML</title>
				<codeblock> &lt;deflist&gt; &lt;defitem&gt; &lt;defterm&gt; &lt;emph
					typestyle="bf"&gt;FWA&lt;/emph&gt; &lt;/defterm&gt;
					&lt;leg:histnote&gt; &lt;p&gt; &lt;text&gt;[def rep Act 174 of 2012 s
					3 and Sch 9 item 14, effective 1 January 2013]&lt;/text&gt; &lt;/p&gt;
					&lt;/leg:histnote&gt; &lt;/defitem&gt; &lt;/deflist&gt; </codeblock>
			</example>

			<example>
				<title>Target XML</title>
				<codeblock> &lt;deflist&gt; &lt;defitem&gt; &lt;defterm&gt; &lt;emph
					typestyle="bf"&gt;FWA&lt;/emph&gt; &lt;/defterm&gt; &lt;defdesc/&gt;
					&lt;note notetype="historical"&gt; &lt;bodytext&gt; &lt;p&gt;
					&lt;text&gt;[def rep Act 174 of 2012 s 3 and Sch 9 item 14, effective
					1 January 2013]&lt;/text&gt; &lt;/p&gt; &lt;/bodytext&gt;
					&lt;/note&gt; &lt;/defitem&gt; &lt;/deflist&gt; </codeblock>
			</example>

			<section>
				<p> For narrative content that immediately follows
						<sourcexml>defterm</sourcexml> create and wrap the narrative content
					within <targetxml>defdesc/bodytext/p/text</targetxml> retaining any
						<sourcexml>emph</sourcexml>. </p>
			</section>

			<example>
				<title>Source XML</title>
				<codeblock> &lt;deflist&gt; &lt;defitem&gt; &lt;p&gt; &lt;text&gt;
					&lt;defterm&gt; &lt;refpt id="ACT_REG_1932-MAG_FINEDEFAULTER"
					type="ext"/&gt; &lt;emph typestyle="bf"&gt;fine defaulter&lt;/emph&gt;
					&lt;/defterm&gt; &amp;mdash;see the &lt;emph
					typestyle="it"&gt;Magistrates Court Act 1930&lt;/emph&gt;,
					section&amp;#160;146. &lt;/text&gt; &lt;/p&gt; &lt;/defitem&gt;
					&lt;defitem&gt; &lt;p&gt; &lt;text&gt; &lt;defterm&gt; &lt;refpt
					id="ACT_REG_1932-MAG_OUTSTANDINGFINE" type="ext"/&gt; &lt;emph
					typestyle="bf"&gt;outstanding fine&lt;/emph&gt; &lt;/defterm&gt;
					&amp;mdash; see the &lt;emph typestyle="it"&gt;Magistrates Court Act
					1930&lt;/emph&gt;, section&amp;#160;146. &lt;/text&gt; &lt;/p&gt;
					&lt;/defitem&gt; &lt;/deflist&gt; </codeblock>
			</example>


			<example>
				<title>Target XML</title>
				<codeblock> &lt;deflist&gt; &lt;defitem&gt; &lt;defterm&gt;
					&lt;ref:anchor id="ACT_REG_1932-MAG_FINEDEFAULTER"
					anchortype="global"/&gt; &lt;emph typestyle="bf"&gt;fine
					defaulter&lt;/emph&gt; &lt;/defterm&gt; &lt;defdesc&gt;
					&lt;bodytext&gt; &lt;p&gt; &lt;text&gt; &amp;#x2014; see the &lt;emph
					typestyle="it"&gt;Magistrates Court Act 1930&lt;/emph&gt;,
					section&amp;#x00A0;146. &lt;/text&gt; &lt;/p&gt; &lt;/bodytext&gt;
					&lt;/defdesc&gt; &lt;/defitem&gt; &lt;defitem&gt; &lt;defterm&gt;
					&lt;ref:anchor id="ACT_REG_1932-MAG_OUTSTANDINGFINE"
					anchortype="global"/&gt; &lt;emph typestyle="bf"&gt;outstanding
					fine&lt;/emph&gt; &lt;/defterm&gt; &lt;defdesc&gt; &lt;bodytext&gt;
					&lt;p&gt; &lt;text&gt; &amp;#x2014; see the &lt;emph
					typestyle="it"&gt;Magistrates Court Act 1930&lt;/emph&gt;,
					section&amp;#x00A0;146. &lt;/text&gt; &lt;/p&gt; &lt;/bodytext&gt;
					&lt;/defdesc&gt; &lt;/defitem&gt; &lt;/deflist&gt; </codeblock>
			</example>

			<section>
				<p> Handling of deflist with connector element. </p>
			</section>

			<example>
				<title>Source XML</title>
				<codeblock> &lt;deflist&gt; &lt;defitem
					id="WFW.RL.WRA96.S6..APPLIES"&gt; &lt;defterm&gt; &lt;refpt
					id="WFW.RL.WRA96.S6..APPLIES" type="ext"/&gt; &lt;emph
					typestyle="bf"&gt;applies&lt;/emph&gt; &lt;/defterm&gt; :
					&lt;defdesc&gt; &lt;l&gt; &lt;li id="WFW.RL.WRA96.S6..APPLIES.A"&gt;
					&lt;lilabel&gt; &lt;refpt id="WFW.RL.WRA96.S6..APPLIES.A"
					type="ext"/&gt;(a) &lt;/lilabel&gt; &lt;/li&gt; &lt;/l&gt;
					&lt;/defdesc&gt; &lt;/defitem&gt; &lt;/deflist&gt; </codeblock>
			</example>


			<example>
				<title>Target XML</title>
				<codeblock> &lt;deflist&gt; &lt;defitem&gt; &lt;defterm&gt;
					&lt;ref:anchor id="WFW.RL.WRA96.S6..APPLIES" anchortype="global"/&gt;
					&lt;emph typestyle="bf"&gt;applies&lt;/emph&gt; &lt;/defterm&gt;
					&lt;connector&gt;:&lt;/connector&gt; &lt;defdesc&gt; &lt;bodytext&gt;
					&lt;list&gt; &lt;listitem&gt; &lt;ref:anchor
					id="WFW.RL.WRA96.S6..APPLIES.A" anchortype="global"/&gt;
					&lt;label&gt;(a)&lt;/label&gt; &lt;/listitem&gt; &lt;/list&gt;
					&lt;/bodytext&gt; &lt;/defdesc&gt; &lt;/defitem&gt; &lt;/deflist&gt;
				</codeblock>
			</example>


			<section>
				<p> If there are more than one <sourcexml>defterm</sourcexml> in the
					input documents then it will be handled as: </p>
			</section>

			<example>
				<title>Source XML</title>
				<codeblock> &lt;deflist&gt; &lt;defitem&gt; &lt;p&gt; &lt;text&gt;
					&lt;defterm&gt; &lt;refpt id="VIC_ACT_797_BISHOP" type="ext"/&gt;
					&lt;emph typestyle="bf"&gt;"bishop"&lt;/emph&gt; &lt;/defterm&gt; or
					&lt;defterm&gt; &lt;refpt id="VIC_ACT_797_BISHOPOFADIOCESE"
					type="ext"/&gt; &lt;emph typestyle="bf"&gt;"bishop of a
					diocese"&lt;/emph&gt; &lt;/defterm&gt; shall mean as to the term
					"bishop" the bishop registered under the title of "bishop" under the
					provisions of the "&lt;emph typestyle="bf"&gt;Successory Trusts Act
					1878&lt;/emph&gt;" as head of the Church of England in the portion of
					Victoria described in the certificate of registrations, and shall
					include the administrator of the affairs of the dioceses during the
					vacancy of the see; and the term &lt;defterm&gt; &lt;refpt
					id="VIC_ACT_797_DIOCESE" type="ext"/&gt; &lt;emph
					typestyle="bf"&gt;"diocese"&lt;/emph&gt; &lt;/defterm&gt; shall mean
					the portion of Victoria described in such certificate as the diocese
					of the person so registered; &lt;/text&gt; &lt;/p&gt; &lt;/defitem&gt;
					&lt;/deflist&gt; </codeblock>
			</example>


			<example>
				<title>Target XML</title>
				<codeblock> &lt;deflist&gt; &lt;defitem&gt; &lt;defterm&gt;
					&lt;ref:anchor id="VIC_ACT_797_BISHOP" anchortype="global"/&gt;
					&lt;emph typestyle="bf"&gt;"bishop"&lt;/emph&gt; &lt;/defterm&gt;
					&lt;connector&gt;or&lt;/connector&gt; &lt;defterm&gt; &lt;ref:anchor
					bid="VIC_ACT_797_BISHOPOFADIOCESE" anchortype="global"/&gt; &lt;emph
					typestyle="bf"&gt;"bishop of a diocese"&lt;/emph&gt; &lt;/defterm&gt;
					&lt;defdesc&gt; &lt;bodytext&gt; &lt;p&gt; &lt;text&gt; shall mean as
					to the term "bishop" the bishop registered under the title of "bishop"
					under the provisions of the "&lt;emph typestyle="bf"&gt;Successory
					Trusts Act 1878&lt;/emph&gt;" as head of the Church of England in the
					portion of Victoria described in the certificate of registrations, and
					shall include the administrator of the affairs of the dioceses during
					the vacancy of the see; and the term &lt;/text&gt; &lt;/p&gt;
					&lt;/bodytext&gt; &lt;/defdesc&gt; &lt;defterm&gt; &lt;ref:anchor
					id="VIC_ACT_797_DIOCESE" anchortype="global"/&gt; &lt;emph
					typestyle="bf"&gt;"diocese"&lt;/emph&gt; &lt;/defterm&gt;
					&lt;defdesc&gt; &lt;bodytext&gt; &lt;p&gt; &lt;text&gt; shall mean the
					portion of Victoria described in such certificate as the diocese of
					the person so registered; &lt;/text&gt; &lt;/p&gt; &lt;/bodytext&gt;
					&lt;/defdesc&gt; &lt;/defitem&gt; &lt;/deflist&gt; </codeblock>
			</example>
			<p> Handling of <sourcexml>defitem/@id</sourcexml> and
					<sourcexml>defterm/@id</sourcexml>. </p>
			<p>
				<note>
					<p>For GPL IN Content Stream <ul>
							<li><sourcexml>defitem/@id</sourcexml> becomes
									<targetxml>defitem/@xml:id</targetxml></li>
							<li><sourcexml>defterm/@id</sourcexml> becomes
									<targetxml>defterm/@xml:id</targetxml></li>
						</ul>
					</p>
				</note>
			</p>
			<example>
				<title>GPL IN Content Stream Source XML</title>
				<codeblock> &lt;deflist&gt; &lt;defitem id="S3.i"&gt; &lt;defterm
					id="s3.active service"&gt;active service&lt;/defterm&gt;
					&lt;defdesc&gt; &lt;p&gt; &lt;text&gt;, as applied to a person subject
					to this Act, means the time during which such
					person&amp;#x2014;&lt;/text&gt; &lt;/p&gt; &lt;/defdesc&gt;
					&lt;/defitem&gt; &lt;/deflist&gt; </codeblock>
			</example>
			<example>
				<title>GPL IN Content Stream Target XML</title>
				<codeblock> &lt;deflist&gt; &lt;defitem xml:id="S3.i"&gt; &lt;defterm
					xml:id="s3.active service"&gt;active service&lt;/defterm&gt;
					&lt;defdesc&gt; &lt;bodytext&gt; &lt;p&gt; &lt;text&gt;, as applied to
					a person subject to this Act, means the time during which such
					person&amp;#x2014;&lt;/text&gt; &lt;/p&gt; &lt;/bodytext&gt;
					&lt;/defdesc&gt; &lt;/defitem&gt; &lt;/deflist&gt; </codeblock>
			</example>
			<section>
				<p>If the input document has subtitle/defterm scenario then
						<sourcexml>defterm</sourcexml> within a subtitle can be dropped, but
					the child element and content of the tag is retained and no text is
					dropped. </p>
				<example>
					<title>Source XML having subtitle/defterm scenario:</title>
					<codeblock> &lt;subtitle&gt; &lt;defterm&gt; &lt;emph
						typestyle="bf"&gt;&amp;#x201C;Greenhouse Gas Storage Act
						2009&amp;#x201D;&lt;/emph&gt; &lt;/defterm&gt; &lt;/subtitle&gt;
					</codeblock>
				</example>
				<example>
					<title>Target XML</title>
					<codeblock> &lt;subtitle&gt; &lt;emph
						typestyle="bf"&gt;&amp;#x201C;Greenhouse Gas Storage Act
						2009&amp;#x201D;&lt;/emph&gt; &lt;/subtitle&gt; </codeblock>
				</example>
			</section>
			<section>
				<title>Changes</title>
				<p>2014-03-21: <ph id="change_20140321_SSX">Added instruction to handle
							<sourcexml>defitem/@id</sourcexml> and
							<sourcexml>defterm/@id</sourcexml> only for GPL IN content
						Streams.</ph>
				</p>
				<p>2013-12-20: <ph id="change_20131220_BRT">Added note to place a
							<sourcexml>footnote</sourcexml> or <sourcexml>fnr</sourcexml> that
						is a child of <sourcexml>defitem</sourcexml> into one of its
						children. WebTeam #5158742 - AU04.</ph></p>
				<p>2013-10-14: <ph id="change_20131014_BRT">Added new rule to create a
						blank defitem/defdesc element after the defterm element. WebTeam #
						237242 and #247307.</ph></p>
			</section>

		</body>
	</dita:topic>


	<xsl:template match="deflist">

		<!--  Original Target XPath:  deflist   -->
		<deflist xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
			<xsl:apply-templates select="@* | node()"/>
		</deflist>

	</xsl:template>

	<xsl:template match="defitem">

		<!--  Original Target XPath:  defitem   -->
		<defitem xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
			
			<xsl:apply-templates select="@id"/>
			
			<xsl:apply-templates select="@* except @id | defterm"/>
			<xsl:if
				test="not(defdesc | p/text/defdesc) and not(text()[normalize-space(replace(., '^[\t\p{Zs}]+$', '')) = ''])">
				<!-- JL added empty bodytext wrapper to validate to the target schemas -->
				<defdesc
					xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
					<bodytext
						xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
						<xsl:apply-templates/>
					</bodytext>
				</defdesc>
			</xsl:if>
			<xsl:apply-templates select="node() except (footnote | fnr | defterm)"/>

		</defitem>

	</xsl:template>

	<xsl:template match="defitem[$streamID = ('UK06','UK07')]">
		<defitem xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
			<xsl:apply-templates select="@* | defterm"/>
			<xsl:choose>
				<!-- when there is a defdesc apply it -->
				<!-- TODO: find/test p/text/defdesc branch to ensure nothing lost -->
				<xsl:when test="defdesc | p/text/defdesc">
					<xsl:apply-templates select="defdesc | p/text/defdesc"/>
				</xsl:when>
				<!-- when there is no defdesc and text() content that should become the definition -->
				<xsl:when test="not(defdesc | p/text/defdesc)">
				<!-- JL added empty bodytext wrapper to validate to the target schemas -->
					<defdesc xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
						<bodytext xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
							<xsl:variable name="defvalue" select="./text()[preceding-sibling::defterm and following-sibling::leg:histnote]"/>
							<xsl:apply-templates select="node() except (footnote | fnr | defterm)"/>
						</bodytext>
					</defdesc>
				</xsl:when>
			</xsl:choose>
		</defitem>
	</xsl:template>

	<!-- JD: Attempting to create single defitem template rule, 
		   limiting to specific streams for now.
		   
		   Handles both <defitem> with <defterm> and <defdesc> and the 		
			 condition where <defitem> has a <defterm> but no <defdesc>, but has text() containing the definition.
			
			Example:
	
		<defitem id="IPP.ICON.JRCTL.ART1.OFFICE">
			<defterm>
				<refpt id="IPP.ICON.JRCTL.ART1.OFFICE" type="ext"/>
		  	<emph typestyle="bf">Office</emph>
		 	</defterm>
		 	means the agency entrusted by a Member State with the registration of marks;
		</defitem>
	-->
	<xsl:template match="defitem[$streamID = ('AU11', 'NZ06', 'NZ10', 'AU18')]">
		<defitem xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
			<xsl:choose>
				<xsl:when test="$streamID='AU18' and ./@id = descendant::refpt/@id"/>
				<xsl:otherwise>
					<xsl:apply-templates select="@id"/>
				</xsl:otherwise>
			</xsl:choose>
			<xsl:apply-templates select="@* except @id | defterm"/>
			<!-- create <connector> if required  -->
			<xsl:apply-templates select="text()[normalize-space(replace(., '^[\t\p{Zs}]+$', '')) !='' and parent::defitem and preceding-sibling::defterm and (following-sibling::defdesc | following-sibling::leg:histnote[$streamID='AU18'])]"/>
			<xsl:choose>
				<!-- when there is a defdesc apply it -->
				<!-- TODO: find/test p/text/defdesc branch to ensure nothing lost -->
				<xsl:when test="defdesc | p/text/defdesc">
					<xsl:apply-templates select="defdesc | p/text/defdesc"/>
				</xsl:when>
				<!-- JD: 2017-12-01: found validation error and DT mismatch after SVN update.  Adding this when but limiting to affected stream for now.  May be more broadly applicable. -->
				<xsl:when
					test="glp:note and not(defdesc | p/text/defdesc) and normalize-space(replace(., '^[\t\p{Zs}]+$', '')) !='' and $streamID='NZ06'">
					<xsl:apply-templates select="node() except (footnote | fnr | defterm | leg:histnote)"/>
				</xsl:when>
				
				<!-- when there is no defdesc and text() content that should become the definition -->
				<xsl:when
					test="not(defdesc | p/text/defdesc) and normalize-space(replace(., '^[\t\p{Zs}]+$', '')) !=''">
					<defdesc
						xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
						<bodytext>
							<p>
								<text>
									<xsl:apply-templates select="node() except (footnote | fnr | defterm | leg:histnote)"/>
								</text>
							</p>
						</bodytext>
					</defdesc>
					<!--<xsl:apply-templates select="child::leg:histnote[$streamID='AU18']"/>-->
				</xsl:when>
				<!-- otherwise nothing to do (e.g., text() is all whitespace-->
				<xsl:otherwise/>
			</xsl:choose>
			<!-- now apply templates to any element other than defterm -->			
			<xsl:apply-templates select="* except (defterm | defdesc | p/text/defdesc | glp:note)"/>
		</defitem>
	</xsl:template>

	<!-- JD: 2017-07-21: although not mentioned in the instructions, id-CCCC-10277 provides a special use case and example for <connector> 
	if text() contains anything but whitespace (tab, nonbreaking space, line feed) then wrap contents in <connector>
	-->
	<xsl:template
		match="text()[parent::defitem and preceding-sibling::defterm and following-sibling::defdesc][not(matches(., '^[\t\p{Zs}]+$'))]">
		<connector
			xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
			<xsl:value-of select="."/>
		</connector>
	</xsl:template>

	<!-- if there is a space char (including nonbreaking) suppress it -->
	<xsl:template match="text()[parent::defitem and preceding-sibling::defterm][matches(., '^[\t\p{Zs}]+$')]"/>

	<xsl:template match="defterm">

		<!--  Original Target XPath:  defterm   -->
		<defterm xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
			<xsl:apply-templates select="@* | node()"/>
			<xsl:if
				test="following-sibling::*[1][self::footnote | self::fnr] | preceding-sibling::*[1][self::footnote | self::fnr]">
				<xsl:apply-templates
					select="following-sibling::*[1][self::footnote | self::fnr] | preceding-sibling::*[1][self::footnote | self::fnr]"
				/>
			</xsl:if>
		</defterm>

	</xsl:template>

	<xsl:template match="defterm[parent::subtitle]">
		<xsl:apply-templates select="node()"/>
	</xsl:template>

	<xsl:template match="defdesc">

		<!--  Original Target XPath:  defdesc   -->
		<defdesc xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
			<xsl:apply-templates select="@*"/>
			<bodytext>
				<xsl:apply-templates select="node()"/>
			</bodytext>
			<xsl:if test="following-sibling::*[1][self::footnote | self::fnr]">
				<xsl:apply-templates
					select="following-sibling::*[1][self::footnote | self::fnr]"/>
			</xsl:if>
		</defdesc>

	</xsl:template>


</xsl:stylesheet>