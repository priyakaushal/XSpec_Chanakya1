<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:ci="http://www.lexis-nexis.com/ci" xmlns:source_cttr="http://www.lexis-nexis.com/glp/cttr"
	xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo"
	xmlns:xs="http://www.w3.org/2001/XMLSchema"	xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"	xmlns:cttr="urn:x-lexisnexis:content:citator:sharedservices:1" xmlns:leg="http://www.lexis-nexis.com/glp/leg"  xmlns:lnci="http://www.lexisnexis.com/xmlschemas/content/shared/citations/1/" xmlns:comm="http://www.lexis-nexis.com/glp/comm" xmlns:jrnl="http://www.lexis-nexis.com/glp/jrnl" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="#all">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="citator-annot-appealproc">
	<title>[@annotationtype="appealproc"]/cttr:annot to cttr:appealproceeding
			<lnpid>id-CA03-13227</lnpid></title>
	<body>
		<section>
			<title>Instructions</title>
			<p>Each occurence of
					<sourcexml>cttr:annotations[@annotationtype="appealproc"]/cttr:annot</sourcexml>
				becomes a <targetxml>cttr:refitem/cttr:appealproceeding</targetxml>. </p>
			<note>All xml:id that start with a numeral will have a prefix that is the two letter
				lower case country code followed by an underscore as shown in the below NL
				example.</note>
			<ul>
				<li>If <sourcexml>@id</sourcexml> exists, it becomes <targetxml>@xml:id</targetxml>. </li>
				<li>If <sourcexml>@signal</sourcexml> exists, it becomes
						<targetxml>@treatment</targetxml>, otherwise set
						<targetxml>@treatment="unspecified"</targetxml>.</li>
			</ul>
			<p>
				<ul>
					<li><sourcexml>cttr:use-group</sourcexml> becomes
							<targetxml>cttr:usagegroup</targetxml>.<ul id="ul_qcc_vfn_nh">
							<li>Attributes <targetxml>@negativesortweight</targetxml> and
									<targetxml>@positivesortweight</targetxml> are added to the
								element <targetxml>cttr:usagegroup</targetxml>. The vaules for these
								attributes are calculated based on the designation, annotation type,
								use signal and decision date. Please refer to <xref href="LxAdv-cttr.usagegroup_AddingSortWeightInformation_appealproc.dita"/> and see Example 2.</li>
							<li><sourcexml>cttr:use</sourcexml> becomes
									<targetxml>cttr:usage</targetxml>. <p>If there is a "/" in the
									text of the <sourcexml>cttr:use</sourcexml> content, create two
										<targetxml>cttr:usage[@xml:lang="xx"]</targetxml> elements,
									one for the text prior to the "/" and one for the text after.
									The first <targetxml>cttr:usage</targetxml> should have "en-CA"
									for the value of xx; the second should have "fr-CA", for the
									English and French usage terms. Normalize whitespace. The
									separating "/" will be dropped from output. Both
										<targetxml>cttr:usage</targetxml> elements will get the same
									value for <targetxml>@usagetype</targetxml> as follows:</p>
								<ul>
									<li>If <sourcexml>@signal</sourcexml> exists, it becomes
											<targetxml>@usagetype</targetxml>.</li>
									<li>If <sourcexml>@signal="citation"</sourcexml>, set
											<targetxml>@usagetype="neutral"</targetxml>.</li>
									<li>If <sourcexml>@signal</sourcexml> does not exist, set
											<targetxml>@usagetype="unspecified"</targetxml>.</li>

								</ul></li>
						</ul></li>
					<li><sourcexml>case:info</sourcexml> becomes
							<targetxml>cttr:caseinfo</targetxml> as detailed in that element's
						entry. </li>
					<li><sourcexml>case:citations</sourcexml> becomes
							<targetxml>cttr:caseinfo/cttr:citations</targetxml>;
							<sourcexml>case:citetext</sourcexml> is discarded but all the
							<sourcexml>ci:cite</sourcexml> elements within
							<sourcexml>case:citetext</sourcexml> are converted to
							<targetxml>lnci:cite</targetxml>, as detailed in the instructions for
							<sourcexml>ci:cite</sourcexml> in the General Markup section.</li>
					<li><sourcexml>remotelink</sourcexml> is converted to
							<targetxml>ref:crossreference</targetxml> as detailed in the entry for
						that element in the General Markup section. </li>
				</ul>
			</p>
			<p>When a <sourcexml>leg:info/leg:num</sourcexml> element immediately follows the
					<sourcexml>cttr:use-group</sourcexml> element, it becomes
					<targetxml>cttr:citedstatlaw/ref:crossreference/ref:content</targetxml> within
				the <targetxml>cttr:usagegroup</targetxml> (See Examples 2 and 3). </p>
			<p>
				<ul>
					<li><sourcexml>leg:info/leg:num/@normval</sourcexml> becomes
							<targetxml>cttr:usagegroup/@pinpointsortweight</targetxml>. If <sourcexml>@normval</sourcexml> is missing, output <targetxml>@pinpointsortweight=""</targetxml>.
					</li>
					<li>If the topline <sourcexml>leg:num</sourcexml> value found in
							<sourcexml>cttr:body/leg:info/leg:num</sourcexml> contains only one
						value (not separated by a slash "/") with a label, create one instance of
							<targetxml>ref:crossreference</targetxml> by concatenating the label in
							<sourcexml>cttr:body/leg:info/leg:num</sourcexml> to the value of
							<sourcexml>cttr:annot/leg:info/leg:num</sourcexml>. (See Example 2), and
						set <targetxml>ref:crossreference/@xml:lang="en-CA"</targetxml>. <note>If
							there is no label in the topline
								<sourcexml>cttr:body/leg:info/leg:num</sourcexml> value, create
								<targetxml>ref:crossreference/@xml:lang="en-CA"</targetxml> directly
							from <sourcexml>cttr:annot/leg:info/leg:num</sourcexml> without a
							label.</note></li>
					<li>If the topline <sourcexml>leg:num</sourcexml> value found in
							<sourcexml>cttr:body/leg:info/leg:num</sourcexml> contains two values
						(for English and French) separated by "/", create two instances of
							<targetxml>ref:crossreference</targetxml>. (See Example 3)<ul>
							<li>Concatenate the label before the slash in
									<sourcexml>cttr:body/leg:info/leg:num</sourcexml> to the value
								of <sourcexml>cttr:annot/leg:info/leg:num</sourcexml> for the first
									<targetxml>ref:crossreference/ref:content</targetxml>, and set
									<targetxml>ref:crossreference/@xml:lang="en-CA"</targetxml>. </li>
							<li>Concatenate the label after the slash in
									<sourcexml>cttr:body/leg:info/leg:num</sourcexml> to the value
								of <sourcexml>cttr:annot/leg:info/leg:num</sourcexml> for the second
									<targetxml>ref:crossreference/ref:content</targetxml>, and set
									<targetxml>ref:crossreference/@xml:lang="fr-CA"</targetxml>. </li>
							<li>Normalize the space in both instances of
									<targetxml>ref:crossreference/ref:content</targetxml>. </li>
							<li>Note that even if the @xml:lang is "en-CA", the
									corresponding ref:content can contain "fr-CA" keywords but
									the section or article, etc, will reflect "en-CA", or vice versa, see Example 4.</li>
						</ul>
					</li>

				</ul>
			</p>
		</section>
		<example>
			<title>Source XML</title>
			<codeblock>
&lt;cttr:annotations annotationtype="appealproc" searchtype="HISTORY"&gt;
	&lt;cttr:annot signal="negative"&gt;
		&lt;cttr:use-group&gt;
			&lt;cttr:use signal="neutral"&gt;Same Case/Procédure connexe&lt;/cttr:use&gt;
		&lt;/cttr:use-group&gt;
		&lt;case:info&gt;
			...
		&lt;/case:info&gt;
		&lt;case:citations&gt;
			&lt;case:citetext&gt;
				...
			&lt;/case:citetext&gt;
		&lt;/case:citations&gt;
		&lt;remotelink dpsi="03SC" service="DOC-ID" remotekey1="DOCID" remotekey2="00152082"/&gt;
	&lt;/cttr:annot&gt;
&lt;/cttr:annotations&gt;
      </codeblock>
		</example>
		<example>
			<title>Target XML</title>
			<codeblock>
&lt;cttr:refsection reftype="appeal-proceedings"&gt;
    &lt;cttr:refitem&gt;
        &lt;cttr:appealproceeding treatment="negative"&gt;
			&lt;cttr:caseinfo&gt;
				...
				&lt;cttr:citations&gt;
					...
				&lt;/cttr:citations&gt;
			&lt;/cttr:caseinfo&gt;
			&lt;cttr:usagegroup&gt;
				&lt;cttr:usage usagetype="neutral" xml:lang="en-CA"&gt;
					&lt;text&gt;Same Case&lt;/text&gt;
				&lt;/cttr:usage&gt;
				&lt;cttr:usage usagetype="neutral" xml:lang="fr-CA"&gt;
					&lt;text&gt;Procédure connexe&lt;/text&gt;
				&lt;/cttr:usage&gt;
			&lt;/cttr:usagegroup&gt;
        	&lt;remotelink&gt;
				...
			&lt;/remotelink&gt;
        &lt;/cttr:appealproceeding&gt;
    &lt;/cttr:refitem&gt;
&lt;/cttr:refsection&gt;
      </codeblock>
		</example>
		<example>
			<title>Example 2: <sourcexml>leg:info/leg:num</sourcexml> becomes
					<targetxml>cttr:citedstatlaw/ref:crossreference/ref:content</targetxml> (single
				value)</title>
			<codeblock>
&lt;cttr:body&gt;
      &lt;leg:info&gt;
            &lt;leg:officialname&gt;ADULT INTERDEPENDENT RELATIONSHIPS ACT&lt;/leg:officialname&gt;
            &lt;leg:num&gt;s. 10&lt;/leg:num&gt;
				...
      &lt;/leg:info&gt;
     &lt;cttr:content&gt;
       &lt;cttr:annotations annotationtype="appealproc" searchtype="HISTORY"&gt;
         &lt;cttr:annot&gt;
	    ...
	   &lt;cttr:use-group&gt;
		&lt;cttr:use signal="positive"&gt;Leave to Appeal Refused/Autorisation d'appeler refusée&lt;/cttr:use&gt;
	    &lt;/cttr:use-group&gt;
	    &lt;leg:info&gt;
		&lt;leg:num normval="b"&gt;10(b)&lt;/leg:num&gt;
	    &lt;/leg:info&gt;
             ........
        &lt;/cttr:annot&gt;
          ..........
      &lt;/cttr:annotations&gt;
    &lt;/cttr:content&gt;
&lt;cttr:body&gt;

      </codeblock>
			<b>becomes</b>
			<codeblock>

&lt;cttr:usagegroup positivesortweight="0380799169" negativesortweight="2280799169" pinpointsortweight="b"&gt;
	&lt;cttr:usage xml:lang="en-CA" usagetype="positive"&gt;
		&lt;text&gt;Leave to Appeal Refused&lt;/text&gt;
	&lt;/cttr:usage&gt;
	&lt;cttr:usage xml:lang="fr-CA" usagetype="positive"&gt;
		&lt;text&gt;Autorisation d'appeler refusée&lt;/text&gt;
	&lt;/cttr:usage&gt;
	&lt;cttr:citedstatlaw&gt;
		&lt;ref:crossreference xml:lang="en-CA"&gt;
			&lt;ref:content&gt;s. 10(b)&lt;/ref:content&gt;
		&lt;/ref:crossreference&gt;
	&lt;/cttr:citedstatlaw&gt;
&lt;/cttr:usagegroup&gt;

      </codeblock>
		</example>
		<example>
			<title>Example 3: <sourcexml>leg:info/leg:num</sourcexml> becomes
					<targetxml>cttr:citedstatlaw/ref:crossreference/ref:content</targetxml> (English
				and French separated by '/')</title>
			<codeblock>


&lt;cttr:body&gt;
      &lt;leg:info&gt;
            &lt;leg:officialname&gt;DIVORCE ACT / DIVORCE, LOI SUR LE&lt;/leg:officialname&gt;
            &lt;leg:num&gt;s. 2 / art. 2&lt;/leg:num&gt;
				...
      &lt;/leg:info&gt;
     &lt;cttr:content&gt;
      &lt;cttr:annotations annotationtype="subseqcases" searchtype="TREATMENT"&gt;
        &lt;cttr:annot&gt;
	    ...
	    &lt;cttr:use-group&gt;
		    &lt;cttr:use signal="neutral"&gt;Considered/Considéré&lt;/cttr:use&gt;
	    &lt;/cttr:use-group&gt;
	    &lt;leg:info&gt;
		    &lt;leg:num normval="&amp;amp;quot;child of the marriage&amp;amp;quot;"&gt;2 "child of the marriage"&lt;/leg:num&gt;
	    &lt;/leg:info&gt;
           ........
        &lt;/cttr:annot&gt;
          ..........
      &lt;/cttr:annotations&gt;
    &lt;/cttr:content&gt;
&lt;cttr:body&gt;

      </codeblock>
			<b>becomes</b>
			<codeblock>

&lt;cttr:usagegroup positivesortweight="2080019687" negativesortweight="2080019687" pinpointsortweight="&amp;amp;quot;child of the marriage&amp;amp;quot;"&gt;
	&lt;cttr:usage xml:lang="en-CA" usagetype="neutral"&gt;
		&lt;text&gt;Considered&lt;/text&gt;
	&lt;/cttr:usage&gt;
	&lt;cttr:usage xml:lang="fr-CA" usagetype="neutral"&gt;
		&lt;text&gt;Considéré&lt;/text&gt;
	&lt;/cttr:usage&gt;
	 &lt;cttr:citedstatlaw&gt;
		&lt;ref:crossreference xml:lang="en-CA"&gt;
			&lt;ref:content&gt;s. 2 "child of the marriage"&lt;/ref:content&gt;
		&lt;/ref:crossreference&gt;
		&lt;ref:crossreference xml:lang="fr-CA"&gt;
			&lt;ref:content&gt;art. 2 "child of the marriage"&lt;/ref:content&gt;
		&lt;/ref:crossreference&gt;
	&lt;/cttr:citedstatlaw&gt;
&lt;/cttr:usagegroup&gt;

      </codeblock>
		</example>
		<example>
			<title>Example 4: Counterintuitive <targetxml>ref:content</targetxml> </title>
			<codeblock>

&lt;cttr:annot signal="positive"&gt;
  &lt;cttr:use-group&gt;
	&lt;cttr:use signal="citation"&gt;Referred to/Mentionné&lt;/cttr:use&gt;
  &lt;/cttr:use-group&gt;
  &lt;leg:info&gt;
	&lt;leg:num normval="11,&amp;amp;quot;enfant à charge&amp;amp;quot;"&gt;2(1) "enfant à charge"&lt;/leg:num&gt;
  &lt;/leg:info&gt;

      </codeblock>
			<b>becomes</b>
			<codeblock>

&lt;cttr:usagegroup positivesortweight="3079959797" negativesortweight="3079959797" pinpointsortweight="11,&amp;amp;quot;enfant à charge&amp;amp;quot;"&gt;
  &lt;cttr:usage xml:lang="en-CA" usagetype="neutral"&gt;
	&lt;text&gt;Referred to&lt;/text&gt;
  &lt;/cttr:usage&gt;
  &lt;cttr:usage xml:lang="fr-CA" usagetype="neutral"&gt;
	&lt;text&gt;Mentionné&lt;/text&gt;
  &lt;/cttr:usage&gt;
  &lt;cttr:citedstatlaw&gt;
	&lt;ref:crossreference xml:lang="en-CA"&gt;
	  &lt;ref:content&gt;s. 2(1) "enfant à charge"&lt;/ref:content&gt;
	&lt;/ref:crossreference&gt;
	&lt;ref:crossreference xml:lang="fr-CA"&gt;
	  &lt;ref:content&gt;art. 2(1) "enfant à charge"&lt;/ref:content&gt;
	&lt;/ref:crossreference&gt;
  &lt;/cttr:citedstatlaw&gt;

      </codeblock>
		</example>

		<section>
			<title>Changes</title>
			<p>2015-02-12: <ph id="change_20150212_sep">If <sourcexml>@normval</sourcexml> is missing, output <targetxml>@pinpointsortweight=""</targetxml>. Addresses RFA R4.5 #2183.</ph></p>
			<p>2014-12-19: <ph id="change_20141219_sep">If <sourcexml>@normval</sourcexml> is missing, output <targetxml>@pinpointsortweight="null"</targetxml>. Addresses RFA R4.5 #2100.</ph></p>
			<p>2014-12-18: <ph id="change_20141218_sep">Update Example 3/4 to a better example. Addresses RFA R4.5 #2100.</ph></p>
			<p>2014-12-10: <ph id="change_20141210_brt">Changed instruction for converting
						<sourcexml>cttr:annot/leg:info/leg:num</sourcexml> to
						<targetxml>cttr:citedstatlaw/ref:crossreference</targetxml>. Addresses RFA
					R4.5 #1940.</ph></p>
			<p>2014-12-09: <ph id="change_20141209_brt">Changed instruction for converting
						<sourcexml>cttr:use[@signal="citation"]</sourcexml>. Addresses RFA R4.5
					#2029.</ph></p>
			<p>2014-11-12: <ph id="change_20141112_brt">Added instructions for converting
						<sourcexml>leg:num/@normval</sourcexml> to
						<targetxml>cttr:usagegroup/@pinpointsortweight</targetxml>. Addresses RFA
					#2030.</ph></p>
			<p>2014-10-15: <ph id="change_20141015_brt">Added instructions for converting
						<sourcexml>leg:num</sourcexml> with English and French text. QuickCite RFA
					#1940.</ph></p>
			<p>2014-09-25: <ph id="change_20140925_sep">Updated instruction and example to reference
					new sort weight calculations for CA03. QuickCite RFA #45.</ph></p>
			<p>2014-09-12: <ph id="change_20140912_sep">Added instruction for converting
						<sourcexml>leg:info</sourcexml> becomes
						<targetxml>cttr:citedstatlaw</targetxml>.</ph></p>
			<p>2013-09-05: <ph id="change_condideredcases_20130905_raj">Added reference to
					instructions for attributes <targetxml>@negativesortweight</targetxml> and
						<targetxml>@positivesortweight</targetxml> of
						<targetxml>cttr:usagegroup</targetxml>. WebStar: WebTeam #233689</ph></p>
			<p>2013-01-24: <ph id="change_20130124_rj">Added instruction for handling
						<sourcexml>cttr:use/@signal="citation"</sourcexml></ph>.</p>
			<p>2013-01-23: <ph id="change_20130123_rj">Added, "The separating "/" will be dropped
					from output." where appropriate. Removed note regarding schema CR required to
					support <sourcexml>cttr:use/@signal="citation"</sourcexml></ph></p>
			<p>2013-01-17: <ph id="change_20130117_rj">Revised
						<sourcexml>cttr:use/@signal</sourcexml> instructions for clarity and when it
					does not exist. Added note regarding schema CR required to support
						<sourcexml>cttr:use/@signal="citation"</sourcexml>.</ph></p>
		</section>
	</body>
	</dita:topic>

	
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA03-Citator\Rosetta_cttr.annot.appealproc-to-LxAdv_cttr.appealproceeding.dita  -->
	
	<!-- Sudhanshu Srivastava: Initially drafted on 24-May-2017. If required please change accordingaly.--> 
	
	<xsl:template match="source_cttr:annotations[@annotationtype='appealproc']/source_cttr:annot">
		<!--  Original Target XPath:  cttr:refitem/cttr:appealproceeding   -->
		<cttr:refitem>	
		<cttr:appealproceeding>
			<xsl:attribute name="treatment" select="if(@signal) then @signal else 'unspecified'"/>
			<xsl:apply-templates select="case:info|jrnl:info|comm:info"/>
			<xsl:apply-templates select="* except(case:info|jrnl:info|comm:info|source_cttr:use-group|case:citations)"/>
			</cttr:appealproceeding>
		</cttr:refitem>
	</xsl:template>

	<xsl:template match="source_cttr:annotations[@annotationtype='appealproc']/source_cttr:annot/@id">
		<!--  Original Target XPath:  @xml:id   -->
		<xsl:attribute name="xml:id" select="."/>
	</xsl:template>

	<xsl:template match="source_cttr:use">
		<!--  Original Target XPath:  cttr:usage   -->
		<xsl:variable name="signal" select="@signal"/>
		<xsl:variable name="followlegnum" select="parent::source_cttr:use-group/following-sibling::leg:info/leg:num"/>
		<xsl:for-each select="tokenize(.,'/')">
			<cttr:usage>
				<xsl:attribute name="xml:lang" select="if(position()=1) then 'en-CA' else 'fr-CA'"/>
				<xsl:choose>
					<xsl:when test="$signal and $signal = 'citation'">
						<xsl:attribute name="usagetype">
							<xsl:text>neutral</xsl:text>
						</xsl:attribute>
					</xsl:when>
					<xsl:when test="$signal and $signal != 'citation'">
						<xsl:attribute name="usagetype">
							<xsl:value-of select="$signal"/>
						</xsl:attribute>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="usagetype">
							<xsl:text>unspecified</xsl:text>
						</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
				<text>
				<xsl:value-of select="."/>
				</text>
			</cttr:usage>
		</xsl:for-each>
		<xsl:if test="parent::source_cttr:use-group/following-sibling::leg:info/leg:num">
			<cttr:citedstatlaw>
				<xsl:choose>
					<xsl:when test="contains(ancestor::source_cttr:body/leg:info/leg:num,'/')">
						<xsl:for-each select="tokenize(ancestor::source_cttr:body/leg:info/leg:num,'/')">
							<ref:crossreference xml:lang="{if(position()=1) then 'en-CA' else 'fr-CA'}">
								<ref:content><xsl:value-of select="concat(substring-before(normalize-space(.),' '),' ',$followlegnum)"/></ref:content>
							</ref:crossreference>
						</xsl:for-each>
					</xsl:when>
					<xsl:otherwise>
						<ref:crossreference xml:lang="'en-CA'">
							<ref:content><xsl:value-of select="concat(substring-before(normalize-space(ancestor::source_cttr:body/leg:info/leg:num),' '),$followlegnum)"/></ref:content>
						</ref:crossreference>
					</xsl:otherwise>
				</xsl:choose>
				
			
			</cttr:citedstatlaw>
		</xsl:if>
	</xsl:template>

	<!--<xsl:template match="remotelink">
		<!-\-  Original Target XPath:  ref:crossreference   -\->
		<ref:crossreference>
			<xsl:apply-templates select="@* | node()"/>
		</ref:crossreference>
	</xsl:template>-->
	
	<!--<xsl:template match="leg:info/leg:num">
		<!-\-  Original Target XPath:  cttr:citedstatlaw/ref:crossreference/ref:content   -\->
		<cttr:citedstatlaw>
			<ref:crossreference>
				<ref:content>
					<xsl:apply-templates select="@* | node()"/>
				</ref:content>
			</ref:crossreference>
		</cttr:citedstatlaw>
	</xsl:template>-->
</xsl:stylesheet>