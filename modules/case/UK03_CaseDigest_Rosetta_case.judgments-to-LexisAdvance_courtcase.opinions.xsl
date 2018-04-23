<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case"
	xmlns:ci="http://www.lexis-nexis.com/ci" xmlns:dig="http://www.lexis-nexis.com/glp/dig"
	xmlns:casedigest="http://www.lexisnexis.com/xmlschemas/content/legal/case-digest/1/"
	xmlns:casesum="http://www.lexisnexis.com/xmlschemas/content/legal/case-summary/1/"
	xmlns:courtcase="http://www.lexisnexis.com/xmlschemas/content/legal/courtcase/1/"
	xmlns:lnci="http://www.lexisnexis.com/xmlschemas/content/shared/citations/1/"
	xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/" version="2.0"
	exclude-result-prefixes="dita case ci dig">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/"
		id="Rosetta_case.judgments-to-LexisAdvance_courtcase.opinions">
		<title>case:judgments-to-courtcase:opinions <lnpid>id-UK03-27431</lnpid></title>
		<body>
			<section>
				<p>
					<sourcexml>dig:body/level/bodytext/case:embeddedcase/case:content/case:judgments</sourcexml> becomes
						<targetxml>casedigest:body/section/bodytext/courtcase:caseexcerpt/courtcase:body/courtcase:opinions</targetxml>.
						<note>Please note that <sourcexml>case:content</sourcexml> maps to <targetxml>courtcase:body</targetxml> in
						the above instruction.</note> The children can be converted as follows: <ul>
						<li>
							<sourcexml>dig:body/level/bodytext/case:embeddedcase/case:content/case:judgments/case:judgment</sourcexml>
							becomes
								<targetxml>casedigest:body/section/bodytext/courtcase:caseexcerpt/courtcase:body/courtcase:opinions/courtcase:opinion</targetxml>.
							The source attributes <sourcexml>case:judgment/@subdoc</sourcexml> becomes
								<targetxml>courtcase:opinion/@includeintoc</targetxml> and
								<sourcexml>case:judgment/@toc-caption</sourcexml> becomes
								<targetxml>courtcase:opinion/@alternatetoccaption</targetxml>. The children can be converted as follows: <ul>
								<li>
									<sourcexml>dig:body/level/bodytext/case:embeddedcase/case:content/case:judgments/case:judgment/case:judgmentbody</sourcexml>
									becomes
										<targetxml>casedigest:body/section/bodytext/courtcase:caseexcerpt/courtcase:body/courtcase:opinions/courtcase:opinion/bodytext</targetxml>.
									The children can be converted as follows: <ul>
										<li>
											<sourcexml>case:judgments/case:judgment/case:judgmentbody/footnotegrp</sourcexml> becomes
												<targetxml>courtcase:opinions/courtcase:opinion/bodytext/p/text/footnotegroup</targetxml>. </li>
										<li>
											<sourcexml>case:judgments/case:judgment/case:judgmentbody/ci:cite</sourcexml> becomes
												<targetxml>courtcase:opinions/courtcase:opinion/bodytext/p/text/lnci:cite</targetxml>.</li>
										<li>
											<note>Please note that whenever <sourcexml>strike</sourcexml> occurs within
													<sourcexml>ci:content</sourcexml> it is a data error and can be ignored. LBU will fix the
												issue and reload the data.</note>
											<note>Please note that <sourcexml>nl</sourcexml> should be replaced with a single space character
												when it occurs within <sourcexml>ci:content</sourcexml>. Stylesheets will do the styling.</note>
											<note>Please note that whenever <sourcexml>sup</sourcexml> occurs within
													<sourcexml>ci:content</sourcexml>, <sourcexml>sup</sourcexml> should be moved outside
													<targetxml>lnci:cite</targetxml> and it becomes child of <targetxml>text</targetxml>. Please
												refer to the below example for more details.</note>
											<pre>
&lt;case:judgmentbody&gt;
  &lt;pgrp&gt;
    &lt;p&gt;
      &lt;text&gt;28 It is convenient that I deal with this now. The
            identification of the inventive concept monopolised
            in the Patent is a task which assumes particular
            significance when the questions of 'variants',
            obviousness and insufficiency are examined
            &lt;sup&gt;18&lt;/sup&gt;. Mr Floyd QC for Hoover warned me
            against attempting epitome if the broadest claim of
            the Patent is clear. There is undoubtedly authority
            to support his proposition &lt;sup&gt;19&lt;/sup&gt;. In my
            experience however, the identification of the
            inventive concept is an habitual feature of patent
            infringement actions where the subject matter is
            amenable to straightforward epitome. In addition,
            there is recent Court of Appeal authority to support
            its utility in the assessment of obviousness, where
            appropriate: &lt;emph typestyle="it"&gt;Glaverbel v
            British Coal &lt;/emph&gt;
            &lt;ci:cite&gt;
              &lt;ci:case&gt;
                &lt;ci:caseref&gt;
                  &lt;ci:reporter value="RPC"/&gt;
                  &lt;ci:edition&gt;
                    &lt;ci:date year="1995"/&gt;
                  &lt;/ci:edition&gt;
                  &lt;ci:page num="255"/&gt;
                  &lt;ci:pinpoint num="278" targettype="page"/&gt;
                &lt;/ci:caseref&gt;
              &lt;/ci:case&gt;
              &lt;ci:content&gt;[1995] RPC 255 at 278 &lt;sup&gt;20&lt;/sup&gt;&lt;/ci:content&gt;
            &lt;/ci:cite&gt;and &lt;emph typestyle="it"&gt;Union Carbide v BP&lt;/emph&gt;
            &lt;ci:cite searchtype="CASE-REF"&gt;
              &lt;ci:case&gt;
                &lt;ci:caseref&gt;
                  &lt;ci:reporter value="RPC"/&gt;
                  &lt;ci:edition&gt;
                    &lt;ci:date year="1999"/&gt;
                  &lt;/ci:edition&gt;
                  &lt;ci:page num="409"/&gt;
                  &lt;ci:pinpoint num="424" targettype="page"/&gt;
                &lt;/ci:caseref&gt;
              &lt;/ci:case&gt;
              &lt;ci:content&gt;[1999] RPC 409 at 424 &lt;/ci:content&gt;
            &lt;/ci:cite&gt;&lt;sup&gt;21&lt;/sup&gt;. Moreover, Dyson have
                      proposed a summary of the inventive concept in their
                      argument and I have therefore to deal with the issue
                      in any event. In my judgment a simple statement of
                      the inventive concept of the Patent can usefully be
                      made in this case, and it is this:
      &lt;/text&gt;
    &lt;/p&gt;
  &lt;/pgrp&gt;                              
&lt;/case:judgmentbody&gt;              

<b>Becomes</b>
              
&lt;bodytext&gt;
  &lt;pgrp&gt;
    &lt;p&gt;
      &lt;text&gt;28 It is convenient that I deal with this now. The
            identification of the inventive concept monopolised
            in the Patent is a task which assumes particular
            significance when the questions of 'variants',
            obviousness and insufficiency are examined
            &lt;sup&gt;18&lt;/sup&gt;. Mr Floyd QC for Hoover warned me
            against attempting epitome if the broadest claim of
            the Patent is clear. There is undoubtedly authority
            to support his proposition &lt;sup&gt;19&lt;/sup&gt;. In my
            experience however, the identification of the
            inventive concept is an habitual feature of patent
            infringement actions where the subject matter is
            amenable to straightforward epitome. In addition,
            there is recent Court of Appeal authority to support
            its utility in the assessment of obviousness, where
            appropriate: &lt;emph typestyle="it"&gt;Glaverbel v
            British Coal &lt;/emph&gt;
            &lt;lnci:cite&gt;
              &lt;lnci:case&gt;
                &lt;lnci:caseref&gt;
                  &lt;lnci:reporter value="RPC"/&gt;
                  &lt;lnci:edition&gt;
                    &lt;lnci:date year="1995"/&gt;
                  &lt;/lnci:edition&gt;
                  &lt;lnci:page num="255"/&gt;
                  &lt;lnci:pinpoint num="278" targettype="page"/&gt;
                &lt;/lnci:caseref&gt;
              &lt;/lnci:case&gt;
              &lt;lnci:content&gt;[1995] RPC 255 at 278 &lt;/lnci:content&gt;
            &lt;/lnci:cite&gt; &lt;sup&gt;20&lt;/sup&gt; and &lt;emph typestyle="it"&gt;Union Carbide v BP&lt;/emph&gt;
            &lt;lnci:cite&gt;
              &lt;lnci:case&gt;
                &lt;lnci:caseref&gt;
                  &lt;lnci:reporter value="RPC"/&gt;
                  &lt;lnci:edition&gt;
                    &lt;lnci:date year="1999"/&gt;
                  &lt;/lnci:edition&gt;
                  &lt;lnci:page num="409"/&gt;
                  &lt;lnci:pinpoint num="424" targettype="page"/&gt;
                &lt;/lnci:caseref&gt;
              &lt;/lnci:case&gt;
              &lt;lnci:content&gt;[1999] RPC 409 at 424 &lt;/lnci:content&gt;
            &lt;/lnci:cite&gt;&lt;sup&gt;21&lt;/sup&gt;. Moreover, Dyson have
                      proposed a summary of the inventive concept in their
                      argument and I have therefore to deal with the issue
                      in any event. In my judgment a simple statement of
                      the inventive concept of the Patent can usefully be
                      made in this case, and it is this:
      &lt;/text&gt;
    &lt;/p&gt;
  &lt;/pgrp&gt;                           
&lt;/bodytext&gt;

</pre>
										</li>
									</ul>
								</li>
								<li>
									<sourcexml>dig:body/level/bodytext/case:embeddedcase/case:content/case:judgments/case:judgment/heading/title</sourcexml>
									becomes
										<targetxml>casedigest:body/section/bodytext/courtcase:caseexcerpt/courtcase:body/courtcase:opinions/courtcase:opinion/heading/title</targetxml>. </li>
								<li>
									<sourcexml>dig:body/level/bodytext/case:embeddedcase/case:content/case:judgments/case:judgment/case:courtinfo/case:judges/case:judge</sourcexml>
									becomes
										<targetxml>casedigest:body/section/bodytext/courtcase:caseexcerpt/courtcase:body/courtcase:opinions/courtcase:opinion/courtcase:opinionby/person:judge/person:person/person:name.text</targetxml>.
								</li>
							</ul>
						</li>
					</ul>
					<pre>
&lt;DIGESTDOC&gt;
  &lt;dig:body&gt;
    &lt;level&gt;
      &lt;bodytext&gt;
        &lt;case:embeddedcase&gt;
          &lt;case:content&gt;
            &lt;case:judgments&gt;
              &lt;case:judgment&gt;
                &lt;heading&gt;
                  &lt;title&gt;
                    &lt;emph typestyle="bf"&gt;Judgment&lt;/emph&gt;
                  &lt;/title&gt;
                &lt;/heading&gt;
                &lt;case:courtinfo&gt;
                  &lt;case:judges&gt;
                    &lt;case:judge&gt;WALTON J&lt;/case:judge&gt;
                  &lt;/case:judges&gt;
                &lt;/case:courtinfo&gt;                
                &lt;case:judgmentbody&gt;
                    &lt;pgrp&gt;
                      &lt;p&gt;
                        &lt;text&gt;said that the parties were married in 1932. The
                              husband was now 68 and the wife 65. Their first two
                              matrimonial homes were purchased entirely out of
                              moneys provided by the husband. Their third home, 57
                              Somerset Road, Frome, with which this summons was
                              concerned, was also, for all practical purposes,
                              acquired with moneys all of which traced their
                              origin back to the husband, and not surprisingly,
                              since the wife did not work or have any independent
                              income. The property was in joint names, there being
                              an express trust for the two parties as joint
                              tenants beneficially.
                        &lt;/text&gt;
                      &lt;/p&gt;        
                    &lt;/pgrp&gt;                                    
                &lt;/case:judgmentbody&gt;
              &lt;/case:judgment&gt;
            &lt;/case:judgments&gt;
          &lt;/case:content&gt;
        &lt;/case:embeddedcase&gt;
      &lt;/bodytext&gt;
    &lt;/level&gt;
  &lt;/dig:body&gt;
&lt;/DIGESTDOC&gt;

<b>Becomes</b>
&lt;casedigest:casedigest&gt;
  &lt;casedigest:body&gt;
    &lt;section&gt;
      &lt;bodytext&gt;
        &lt;courtcase:caseexcerpt&gt;
          &lt;courtcase:body&gt;
            &lt;courtcase:opinions&gt;
              &lt;courtcase:opinion&gt;
                &lt;heading&gt;
                  &lt;title&gt;
                    &lt;emph typestyle="bf"&gt;Judgment&lt;/emph&gt;
                  &lt;/title&gt;
                &lt;/heading&gt;
                &lt;courtcase:opinionby&gt;
                  &lt;person:judge&gt;
                    &lt;person:person&gt;
                      &lt;person:name.text&gt;WALTON J&lt;/person:name.text&gt;
                    &lt;/person:person&gt;
                  &lt;/person:judge&gt;
                &lt;/courtcase:opinionby&gt;
                &lt;bodytext&gt;
                  &lt;pgrp&gt;
                      &lt;p&gt;
                        &lt;text&gt;said that the parties were married in 1932. The
                              husband was now 68 and the wife 65. Their first two
                              matrimonial homes were purchased entirely out of
                              moneys provided by the husband. Their third home, 57
                              Somerset Road, Frome, with which this summons was
                              concerned, was also, for all practical purposes,
                              acquired with moneys all of which traced their
                              origin back to the husband, and not surprisingly,
                              since the wife did not work or have any independent
                              income. The property was in joint names, there being
                              an express trust for the two parties as joint
                              tenants beneficially.
                        &lt;/text&gt;
                      &lt;/p&gt;        
                    &lt;/pgrp&gt;           
                &lt;/bodytext&gt;
              &lt;/courtcase:opinion&gt;
            &lt;/courtcase:opinions&gt;
          &lt;/courtcase:body&gt;
        &lt;/courtcase:caseexcerpt&gt;
      &lt;/bodytext&gt;
    &lt;/section&gt;
  &lt;/casedigest:body&gt;  
&lt;/casedigest:casedigest&gt;
</pre>
				</p>
				<p>
					<ul>
						<li>If <sourcexml>case:decisionsummary</sourcexml> is child of <sourcexml>case:judgments</sourcexml> element
							then <sourcexml>case:decisionsummary</sourcexml> should be mapped with
								<targetxml>casesum:decisionsummary</targetxml>, <sourcexml>case:judgments</sourcexml> should be mapped
							with <targetxml>courtcase:opinions</targetxml> according to existing instructions and
								<targetxml>courtcase:opinions</targetxml> should be place inside the
								<targetxml>courtcase:body</targetxml> in NewLexis target (i.e.
								<sourcexml>dig:body/level/bodytext/case:embeddedcase/case:content/case:judgments/case:decisionsummary</sourcexml>
							becomes
								<targetxml>casedigest:body/section/bodytext/courtcase:caseexcerpt/courtcase:body/courtcase:opinions/casesum:decisionsummary</targetxml>.)</li>
					</ul>
					<note><b>[DAYD2015090905470800]</b> - Added a change request inside CR system for allowing
							<targetxml>casesum:decisionsummary</targetxml> element as a child of
							<targetxml>courtcase:opinions</targetxml> in our current target schema.</note>
					<note>Dropped the attribute <sourcexml>@summarytype</sourcexml> in NewLexis target conversion.</note>
					<pre>

&lt;dig:body&gt;
	&lt;level leveltype="Full Text"&gt;
		&lt;bodytext&gt;
			&lt;case:embeddedcase&gt;
				&lt;case:content&gt;
					&lt;case:judgments&gt;
						&lt;case:judgment&gt;
							&lt;case:judgmentbody&gt;
								&lt;p&gt;&lt;text&gt;&lt;emph typestyle="bf"&gt;JESSEL, M.R.&lt;/emph&gt;&lt;emph typestyle="bf"&gt; :-&lt;/emph&gt;&lt;/text&gt;&lt;/p&gt;
							&lt;/case:judgmentbody&gt;
						&lt;/case:judgment&gt;
						&lt;case:decisionsummary summarytype="disposition"&gt;
							&lt;p&gt;
								&lt;text&gt;The injunction granted restrained the Defendants from authorizing or making any payment out of the assets of the company in respect of the dividend declared in February, 1879, on the ordinary shares.&lt;/text&gt;
							&lt;/p&gt;
							&lt;p&gt;
								&lt;text&gt;By consent the motion was afterwards treated as the trial of the action, and thereupon the injunction was made perpetual.&lt;/text&gt;
							&lt;/p&gt;
						&lt;/case:decisionsummary&gt;
					&lt;/case:judgments&gt;
				&lt;/case:content&gt;
			&lt;/case:embeddedcase&gt;
		&lt;/bodytext&gt;
	&lt;/level&gt;
&lt;/dig:body&gt;

<b>Becomes</b>

&lt;casedigest:body&gt;
	&lt;section&gt;
		&lt;bodytext&gt;
			&lt;courtcase:caseexcerpt&gt;
				&lt;courtcase:body&gt;
					&lt;courtcase:opinions&gt;
						&lt;courtcase:opinion&gt;
							&lt;bodytext&gt;
								&lt;p&gt;&lt;text&gt;&lt;emph typestyle="bf"&gt;JESSEL, M.R.&lt;/emph&gt;&lt;emph typestyle="bf"&gt; :-&lt;/emph&gt;&lt;/text&gt;&lt;/p&gt;
							&lt;/bodytext&gt;
						&lt;/courtcase:opinion&gt;
						&lt;casesum:decisionsummary&gt;
							&lt;p&gt;
								&lt;text&gt;The injunction granted restrained the Defendants from authorizing or making any payment out of the assets of the company in respect of the dividend declared in February, 1879, on the ordinary shares.&lt;/text&gt;
							&lt;/p&gt;
							&lt;p&gt;
								&lt;text&gt;By consent the motion was afterwards treated as the trial of the action, and thereupon the injunction was made perpetual.&lt;/text&gt;
							&lt;/p&gt;
						&lt;/casesum:decisionsummary&gt;
					&lt;/courtcase:opinions&gt;
				&lt;/courtcase:body&gt;
			&lt;/courtcase:caseexcerpt&gt;
		&lt;/bodytext&gt;
	&lt;/section&gt;
&lt;/casedigest:body&gt;

</pre>
				</p>
			</section>
			<section>
				<title>Changes</title>
				<p>2015-09-09: <ph id="change_20150909_SS">Instructions have been added on how to handle the input scenario
							"<sourcexml>case:judgments/case:decisionsummary</sourcexml>". R4.5 Content Issue List #2390.</ph></p>
			</section>
		</body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK03_CaseDigest\Rosetta_case.judgments-to-LexisAdvance_courtcase.opinions.dita  -->

	<xsl:template match="case:content/case:judgments">
		<courtcase:opinions>
		  <xsl:apply-templates select="case:judgment/case:judgmentbody/prelim"/>
			<xsl:apply-templates select="@* | node()"/>
		</courtcase:opinions>
	</xsl:template>

	<xsl:template match="case:content">
	  <xsl:if test=".!=''">
		<courtcase:body>
			<xsl:apply-templates select="@* | node()"/>
		</courtcase:body>
	  </xsl:if>
	</xsl:template>

	<xsl:template match="case:judgments/case:judgment">
		<courtcase:opinion>
			<xsl:apply-templates select="@* | node()"/>
		</courtcase:opinion>
	</xsl:template>

	<xsl:template match="case:judgment/@subdoc">
		<xsl:attribute name="includeintoc">
			<xsl:value-of select="."/>
		</xsl:attribute>
	</xsl:template>

	<xsl:template match="case:judgment/@toc-caption">
			<xsl:attribute name="alternatetoccaption">
				<xsl:value-of select="."/>
			</xsl:attribute>
	</xsl:template>

	<xsl:template match="case:judgment/case:judgmentbody">
		<bodytext>
			<xsl:apply-templates select="@* | node() except prelim"/>
		</bodytext>
	</xsl:template>

</xsl:stylesheet>
