<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:ci="http://www.lexis-nexis.com/ci" xmlns:source_cttr="http://www.lexis-nexis.com/glp/cttr"
	xmlns:cttr="urn:x-lexisnexis:content:citator:sharedservices:1" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:caseinfo="http://www.lexisnexis.com/xmlschemas/content/legal/case-information/1/"  xmlns:decision="http://www.lexisnexis.com/xmlschemas/content/legal/decision/1/" xmlns:lnci="http://www.lexisnexis.com/xmlschemas/content/shared/citations/1/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita case ci cttr leg source_cttr">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="citator-annot-subseqcases">
	<title>[@annotationtype="subseqcases"]/cttr:annot to cttr:citingcase
			<lnpid>id-CA03-13229</lnpid></title>
	<body>
		<section>
			<title>Instructions</title>
			<p>Citator documents require that the number of citing cases be tallied by court name
				and year in markup that can be displayed in a graph in Lexis Advance. Follow the
				instructions in <xref href="cttr.refsummary.dita#cttr.refsummary"/> to populate
					<targetxml>cttr:refssummary</targetxml> with the required markup.</p>
			<p>Each occurence of
					<sourcexml>cttr:annotations[@annotationtype="subseqcases"]/cttr:annot</sourcexml>
				becomes a <targetxml>cttr:refitem/cttr:citingcase</targetxml>. </p>
			<p>The attributes of <sourcexml>cttr:annot/@id</sourcexml> becomes
					<targetxml>cttr:refitem/cttr:citingcase/@xml:id</targetxml>.</p>
			<p>The attribute <sourcexml>@signal</sourcexml> becomes
					<targetxml>cttr:refitem/cttr:citingcase/@treatment</targetxml>. </p>
			<p>Elements that appear as children are converted as below:</p>
			<p>
				<ul>
					<li><sourcexml>cttr:use-group</sourcexml> becomes
							<targetxml>cttr:usagegroup</targetxml><ul id="ul_vnw_gux_hh">
							<li>Attributes <targetxml>@negativesortweight</targetxml> and
									<targetxml>@positivesortweight</targetxml> are added to the
								element <targetxml>cttr:usagegroup</targetxml>. The vaules for these
								attributes are calculated based on the designation, annotation type,
								use signal and decision date. Please refer to <xref href="LxAdv-cttr.usagegroup_AddingSortWeightInformation_subseqcases.dita"/> and, for STATUTES, <xref href="LxAdv-cttr.usagegroup_AddingSortWeightInformation_subseqcases_statutes.dita"/>, and see Example 2.</li>
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
						instructions. </li>
					<li><sourcexml>case:citations</sourcexml> becomes
							<targetxml>cttr:citations</targetxml>;
							<sourcexml>case:citetext</sourcexml> is discarded but all the
							<sourcexml>ci:cite</sourcexml> elements within
							<sourcexml>case:citetext</sourcexml> are converted to
							<targetxml>lnci:cite</targetxml>.</li>
					<li><sourcexml>remotelink</sourcexml> is converted to
							<targetxml>ref:crossreference</targetxml> and as detailed in the entry
						for that element in the General Markup section. </li>
				</ul>
			</p>
			<p>When a <sourcexml>leg:info/leg:num</sourcexml> element immediately follows the
					<sourcexml>cttr:use-group</sourcexml> element, it becomes
					<targetxml>cttr:citedstatlaw/ref:crossreference/ref:content</targetxml> within
				the <targetxml>cttr:usagegroup</targetxml> (See Examples 2 and 3). </p>
			<p><ul>
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
&lt;cttr:annot signal="neutral"&gt;
	&lt;cttr:use-group&gt;
		&lt;cttr:use signal="neutral" xml:lang="en-CA&gt;Mentioned&lt;/cttr:use&gt;
		&lt;cttr:use signal="neutral" xml:lang="fr-CA&gt;Mentionné&lt;/cttr:use&gt;
	&lt;/cttr:use-group&gt;
	&lt;case:info&gt;
		&lt;case:casename&gt;Doré v. Barreau du Québec&lt;/case:casename&gt;
		&lt;case:courtinfo juris-rank="010" court-rank="003"&gt;
			&lt;case:courtname&gt;CASCC&lt;/case:courtname&gt;
			&lt;case:courtcode ln.user-displayed="false"&gt;
				&lt;process-ignore process="kwd"&gt;CASC&lt;/process-ignore&gt;
			&lt;/case:courtcode&gt;
			&lt;case:juris ln.user-displayed="false"&gt;CD&lt;/case:juris&gt;
			&lt;case:dates&gt;
				&lt;case:decisiondate&gt;
					&lt;date day="22" month="03" year="2012"&gt;2012/3/22&lt;/date&gt;
				&lt;/case:decisiondate&gt;
			&lt;/case:dates&gt;
		&lt;/case:courtinfo&gt;
	&lt;/case:info&gt;
	&lt;case:citations&gt;
		&lt;case:citetext&gt;
			...
		&lt;/case:citetext&gt;
	&lt;/case:citations&gt;
	&lt;remotelink dpsi="03SC" service="DOC-ID" remotekey1="DOCID" remotekey2="01619931"&gt;
		&lt;inlineobject type="image" attachment="web-server" filename="4.gif"
			alttext="QuickCITE - Neutral information/Traitement et historique neutres"/&gt;
	&lt;/remotelink&gt;
&lt;/cttr:annot&gt;
      </codeblock>
			<title>Target XML</title>
			<codeblock>
&lt;cttr:refitem&gt;
	&lt;cttr:citingcase treatment="neutral"&gt;
		&lt;cttr:caseinfo&gt;
			&lt;caseinfo:casename&gt;
				&lt;caseinfo:shortcasename&gt;Doré v. Barreau du Québec&lt;/caseinfo:shortcasename&gt;
			&lt;/caseinfo:casename&gt;
			&lt;cttr:citations&gt;
				...
			&lt;/cttr:citations&gt;
			&lt;jurisinfo:courtinfo&gt;
				&lt;jurisinfo:courtname&gt;CASCC&lt;/jurisinfo:courtname&gt;
				&lt;jurisinfo:jurisdiction&gt;
					&lt;jurisinfo:system&gt;CA&lt;/jurisinfo:system&gt;
				&lt;/jurisinfo:jurisdiction&gt;
			&lt;/jurisinfo:courtinfo&gt;
			&lt;decision:dates&gt;
				&lt;decision:decisiondate day="22" month="03" year="2012" normdate="2012-03-22"&gt;
					&lt;date-text&gt;2012/3/22&lt;/date-text&gt;
				&lt;/decision:decisiondate&gt;
			&lt;/decision:dates&gt;
		&lt;/cttr:caseinfo&gt;
		&lt;cttr:usagegroup&gt;
			&lt;cttr:usage usagetype="neutral" xml:lang="en-CA"&gt;
				&lt;text&gt;Mentioned&lt;/text&gt;
			&lt;/cttr:usage&gt;
			&lt;cttr:usage usagetype="neutral" xml:lang="fr-CA"&gt;
				&lt;text&gt;Mentionné&lt;/text&gt;
			&lt;/cttr:usage&gt;
		&lt;/cttr:usagegroup&gt;
		&lt;ref:crossreference&gt;
	        &lt;ref:content&gt;
	            &lt;ref:inlineobject
	                alttext="QuickCITE - Neutral information/Traitement et historique           
	            neutres"&gt;
	                &lt;ref:locator&gt;
	                    &lt;ref:locator-key&gt;
	                        &lt;ref:key-name name="object-key"/&gt;
	                        &lt;ref:key-value value="X-Y-4"/&gt;
	                    &lt;/ref:locator-key&gt;
	                    &lt;ref:locator-params&gt;
	                        &lt;proc:param name="componentseq" value="1"/&gt;
	                        &lt;proc:param name="object-type" value="image"/&gt;
	                        &lt;proc:param name="object-smi" value=""/&gt;
	                    &lt;/ref:locator-params&gt;
	                &lt;/ref:locator&gt;
	            &lt;/ref:inlineobject&gt;
	        &lt;/ref:content&gt;
	        &lt;ref:locator&gt;
	            &lt;ref:locator-key&gt;
	                &lt;ref:key-name name="DOC-ID"/&gt;
	                &lt;ref:key-value value="01619931"/&gt;
	            &lt;/ref:locator-key&gt;
	        &lt;/ref:locator&gt;
	    &lt;/ref:crossreference&gt;
	&lt;/cttr:citingcase&gt;
&lt;/cttr:refitem&gt;
      </codeblock>
		</example>
		<example>
			<title>Example 2: <sourcexml>leg:info/leg:num</sourcexml> becomes
					<targetxml>cttr:citedstatlaw/ref:crossreference/ref:content</targetxml></title>
			<codeblock>

&lt;CITATORDOC&gt;
  &lt;docinfo&gt;
     .........
     &lt;docinfo:selector&gt;STATUTE&lt;/docinfo:selector&gt;
	  ...
  &lt;/docinfo&gt;
  &lt;cttr:body&gt;
    &lt;leg:info&gt;
         &lt;leg:officialname&gt;ADULT INTERDEPENDENT RELATIONSHIPS ACT&lt;/leg:officialname&gt;
         &lt;leg:num&gt;s. 10&lt;/leg:num&gt;
		  ...
    &lt;/leg:info&gt;
    &lt;cttr:content&gt;
    &lt;cttr:annotations annotationtype="subseqcases" searchtype="TREATMENT"&gt;
      &lt;cttr:annot&gt;
	    ...
	    &lt;cttr:use-group&gt;
		   &lt;cttr:use signal="positive"&gt;Pursuant to / Fondement du recours&lt;/cttr:use&gt;
	    &lt;/cttr:use-group&gt;
	    &lt;leg:info&gt;
		    &lt;leg:num normval="b"&gt;10(b)&lt;/leg:num&gt;
	    &lt;/leg:info&gt;
	    ........
      &lt;/cttr:annot&gt;
          ..........
     &lt;/cttr:annotations&gt;
    &lt;/cttr:content&gt;
  &lt;/cttr:body&gt;
&lt;CITATORDOC&gt;

      </codeblock>
			<b>becomes</b>
			<codeblock>

&lt;cttr:usagegroup positivesortweight="0180799169" negativesortweight="1180799169" pinpointsortweight="b"&gt;
	&lt;cttr:usage xml:lang="en-CA" usagetype="positive"&gt;
		&lt;text&gt;Pursuant to&lt;/text&gt;
	&lt;/cttr:usage&gt;
	&lt;cttr:usage xml:lang="fr-CA" usagetype="positive"&gt;
		&lt;text&gt;Fondement du recours&lt;/text&gt;
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

&lt;CITATORDOC&gt;
   &lt;docinfo&gt;
      &lt;docinfo:selector&gt;Statutes&lt;/docinfo:selector&gt;
	   ...
   &lt;/docinfo&gt;
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
	     .......
        &lt;/cttr:annot&gt;
          ..........
      &lt;/cttr:annotations&gt;
    &lt;/cttr:content&gt;
  &lt;cttr:body&gt;
&lt;/CITATORDOC&gt;

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
						<sourcexml>cttr:use[@signal="citation"]</sourcexml>. Addresses RFA R4.0
					#2029.</ph></p>
			<p>2014-12-04: <ph id="change_20141204_brt">Deleted extraneous instructions for converting
				<sourcexml>leg:num</sourcexml> to
				<targetxml>lnci:cite</targetxml>. Addresses RFA
				R4.0 #343.</ph></p>
			<p>2014-11-12: <ph id="change_20141112_brt">Added instructions for converting
						<sourcexml>leg:num/@normval</sourcexml> to
						<targetxml>cttr:usagegroup/@pinpointsortweight</targetxml>. Addresses RFA
					#2030.</ph></p>
			<p>2014-10-15: <ph id="change_20141015_brt">Added instructions for converting
						<sourcexml>leg:num</sourcexml> with English and French text. QuickCite RFA
					#1940.</ph></p>
			<p>2014-09-25: <ph id="change_20140925_sep">Updated instruction and example to reference
					new sort weight calculations for CA03. QuickCite RFA #45.</ph></p>
			<p>2014-09-12: <ph id="change_20140912_sep">Added instructions for converting
						<sourcexml>leg:info</sourcexml> becomes
						<targetxml>cttr:citedstatlaw</targetxml>.</ph></p>
			<p>2014-07-16: <ph id="change_20140716_brt">Added reference to new module for
						<targetxml>cttr:refssummary</targetxml>.</ph></p>
			<p>2013-09-05: <ph id="change_condideredcases_20130905_raj">Added reference to
					instructions for attributes <targetxml>@negativesortweight</targetxml> and
						<targetxml>@positivesortweight</targetxml> of
						<targetxml>cttr:usagegroup</targetxml>. WebStar: WebTeam #233689</ph></p>
			<p>2013-05-02: <ph id="change_20130502_SP">Updated target example to reflect changes per
					latest Apollo markup.</ph></p>
			<p>2013-01-29: <ph id="change_20130129_rj">Changed target markup to reflect that country
					code "CD" will be converted to "CA" in all instances. Changed target, example
					for <sourcexml>case:casename</sourcexml> to
						<targetxml>caseinfo:shortcasename</targetxml>.</ph></p>
			<p>2013-01-24: <ph id="change_20130124_rj">Added instruction for handling
						<sourcexml>cttr:use/@signal="citation"</sourcexml></ph>.</p>
			<p>2013-01-23: <ph id="change_20130123_rj">Added, "The separating "/" will be dropped
					from output." where appropriate. Removed note regarding schema CR required to
					support <sourcexml>cttr:use/@signal="citation"</sourcexml></ph>.</p>
			<p>2013-01-17: <ph id="change_20130117_rj">Revised
						<sourcexml>cttr:use/@signal</sourcexml> instructions for clarity and when it
					does not exist. Added note regarding schema CR required to support
						<sourcexml>cttr:use/@signal="citation"</sourcexml></ph>.</p>
			<p>2013-01-05: <ph id="change_20130105_rj">Corrected example target mark-up for
						<targetxml>cttr:usage/@usagetype</targetxml>.</ph></p>
			<p>2012-12-03: <ph id="change_20121203_rj">Corrected example source mark-up for
						<sourcexml>remotelink/inlineobject</sourcexml>.</ph></p>
			<p>2013-01-17: <ph id="change_20130117_dsf">Updated target example to include
						<targetxml>@normdate</targetxml> in
						<targetxml>decision:decisiondate</targetxml>.</ph></p>
		</section>
	</body>
	</dita:topic>

	
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA03-Citator\Rosetta_cttr.annot.subseqcases-to-LxAdv_cttr.citingcase.dita  -->
	 
<!-- Sudhanshu Srivastava: Initially drafted this module on 25-May-2017. If required please change accordingly. -->
	<xsl:template match="source_cttr:annotations[@annotationtype='subseqcases']/source_cttr:annot">
		<!--  Original Target XPath:  cttr:refitem/cttr:citingcase   -->
		<cttr:refitem>
			<cttr:citingcase>
				<xsl:apply-templates select="@* | node() except (case:citations|source_cttr:use-group|leg:info)"/>
			</cttr:citingcase>
		</cttr:refitem>
	</xsl:template>

	<xsl:template match="source_cttr:annotations[@annotationtype='subseqcases']/source_cttr:annot/@id">
		<!--  Original Target XPath:  cttr:refitem/cttr:citingcase/@xml:id   -->
				<xsl:attribute name="xml:id" select="."/>
	</xsl:template>

	<xsl:template match="source_cttr:annotations[@annotationtype='subseqcases']/source_cttr:annot/@signal">
		<!--  Original Target XPath:  cttr:refitem/cttr:citingcase/@treatment   -->
				<xsl:attribute name="treatment" select="."/>
	</xsl:template>
</xsl:stylesheet>