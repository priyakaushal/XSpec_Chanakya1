<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
	xmlns:case="http://www.lexis-nexis.com/glp/case"
	xmlns:case2="http://www.lexisnexis.com/xmlschemas/content/legal/case/1/"
	xmlns:ci="http://www.lexis-nexis.com/ci"
	xmlns:caseinfo="http://www.lexisnexis.com/xmlschemas/content/legal/case-information/1/"
	xmlns:cttr="urn:x-lexisnexis:content:citator:sharedservices:1" version="2.0" exclude-result-prefixes="dita case case2 ci">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/"
		id="Rosetta_case.casename-to-LexisAdvance_caseinfo.fullcasename">
		<title>case:casename-to-caseinfo:fullcasename <lnpid>id-UK05-27818</lnpid></title>
		<body>
			<p>
				<sourcexml>case:casename</sourcexml> becomes <targetxml>caseinfo:casename/caseinfo:fullcasename</targetxml>.
				Both the tags <sourcexml>emph</sourcexml>, its attributes and <sourcexml>refpt</sourcexml> are omitted. However
				the content of these tags should be retained. <note>If input document has <sourcexml>nl</sourcexml> within
						<sourcexml>case:casename</sourcexml> then convert all newlines to a single space character because
						<sourcexml>nl</sourcexml> is no longer needed in this element. </note>
				<pre>
&lt;case:info&gt;
  &lt;case:casename&gt;
    &lt;emph typestyle="ro"&gt;
      &lt;refpt id="9978" type="ext"/&gt;
      &lt;emph typestyle="bf"&gt;Greene v Church Comrs for England&lt;/emph&gt;
    &lt;/emph&gt;
  &lt;/case:casename&gt;
&lt;/case:info&gt;
<b>Becomes</b>
&lt;cttr:caseinfo&gt;
  &lt;caseinfo:casename&gt;
    &lt;caseinfo:fullcasename&gt;Greene v Church Comrs for England&lt;/caseinfo:fullcasename&gt;
  &lt;/caseinfo:casename&gt;
&lt;/cttr:caseinfo&gt; 
</pre>
			</p>

			<p> If <sourcexml>ci:cite</sourcexml> is present within <sourcexml>case:casename</sourcexml> as direct child or in
				sub level, then <sourcexml>ci:cite</sourcexml> should be mapped to 3 locations. <ul>
					<li>Each <sourcexml>ci:cite</sourcexml> should be mapped to
							<targetxml>cttr:caseinfo/ref:citations/ref:cite4thisresource</targetxml>. </li>
					<li>Each <sourcexml>ci:cite</sourcexml> should also be mapped to
							<targetxml>cttr:caseinfo//cttr:citations/lnci:cite</targetxml>. <note>Duplicate citations cannot have the
							same IDs or the document becomes invalid. To avoid this validation issue,append the IDs for the citations
							in ref:citations/ref:cite4thisresource/lnci:cite with extra text to make them unique.</note></li>
					<li> The content, following the last colon(:) inside <sourcexml>case:casename</sourcexml> and the content
						within <sourcexml>ci:cite/ci:content</sourcexml> should be concatenated and placed in
							<targetxml>cttr:caseinfo/caseinfo:docketnum</targetxml>. </li>
				</ul> There are few scenarios in which there will be multiple <sourcexml>ci:cite</sourcexml> elements within the
				casename. All the <sourcexml>ci:cite</sourcexml> elements should be mapped to
					<targetxml>cttr:caseinfo/ref:citations/ref:cite4thisresource</targetxml>,
					<targetxml>cttr:caseinfo//cttr:citations</targetxml>, and the <sourcexml>ci:cite/ci:content</sourcexml> should
				be mapped to <targetxml>cttr:caseinfo/caseinfo:docketnum</targetxml>. The text content between each
					<sourcexml>ci:cite</sourcexml> element should be mapped to
					<targetxml>cttr:caseinfo/ref:citations/connector</targetxml>. However, if the occurring PCDATA consists of
						<u><b>only</b></u> space characters, a <targetxml>connector</targetxml> containing only a space or spaces
				should not be created. Following are the scenarios with multiple <sourcexml>ci:cite</sourcexml> elements, <ul>
					<li> Without alternate casename - More than one <sourcexml>ci:cite</sourcexml> element and no " sub nom" text,
						within <sourcexml>case:casename</sourcexml>. </li>
					<li> With alternate casename - More than one <sourcexml>ci:cite</sourcexml> before the first occurance of
							<sourcexml> sub nom</sourcexml> text. </li>
				</ul>
				<note> Any <sourcexml>ci:cite</sourcexml> elements following the text <sourcexml>" sub nom"</sourcexml> should
					be dropped. </note>
			</p>

			<p> For every occurance of the text <sourcexml>" sub nom"</sourcexml>, the following content till the next
				occurance of <sourcexml>" sub nom"</sourcexml> or end of content, should be captured within
					<targetxml>cttr:caseinfo/caseinfo:alternatecasename</targetxml>. The content of each
					<targetxml>cttr:caseinfo/caseinfo:alternatecasename</targetxml> element should be prepended with an
					<targetxml>emph</targetxml> element, with attribute <targetxml>@typestyle="it"</targetxml> and content
					<targetxml> sub nom</targetxml>. </p>
			<p>
				<sourcexml>ci:cite</sourcexml> within <sourcexml>case:casename</sourcexml>
				<pre>
&lt;case:info&gt;
  &lt;case:casename&gt;
    &lt;emph typestyle="ro"&gt;
      &lt;refpt id="9967" type="ext"/&gt;
      &lt;emph typestyle="bf"&gt;EC Commission v Luxembourg: Access to Medical
      Professions, Re: 
        &lt;ci:cite searchtype="CASE-REF"&gt;
          &lt;ci:case&gt;
            &lt;ci:caseref&gt;
              &lt;ci:reporter value="C"/&gt;
              &lt;ci:edition&gt;
                &lt;ci:date year="1990"/&gt;
              &lt;/ci:edition&gt;
              &lt;ci:page num="351"/&gt;
            &lt;/ci:caseref&gt;
          &lt;/ci:case&gt;
          &lt;ci:content&gt;C-351/90&lt;/ci:content&gt;
        &lt;/ci:cite&gt;
      &lt;/emph&gt;
    &lt;/emph&gt;
  &lt;/case:casename&gt;
&lt;/case:info&gt;
<b>Becomes</b>
&lt;cttr:caseinfo&gt;
  &lt;caseinfo:casename&gt;
    &lt;caseinfo:fullcasename&gt;EC Commission v Luxembourg: Access to Medical
      Professions, Re: 
  &lt;/caseinfo:fullcasename&gt;
  &lt;/caseinfo:casename&gt;
  &lt;caseinfo:docketnum&gt;C-351/90&lt;/caseinfo:docketnum&gt;
  ...
  &lt;cttr:citations&gt;
     &lt;lnci:cite&gt;
        &lt;lnci:case&gt;
          &lt;lnci:caseref&gt;
            &lt;lnci:reporter value="C"/&gt;
            &lt;lnci:edition&gt;
              &lt;lnci:date year="1990"/&gt;
            &lt;/lnci:edition&gt;
            &lt;lnci:page num="351"/&gt;
          &lt;/lnci:caseref&gt;
        &lt;/lnci:case&gt;
        &lt;lnci:content&gt;C-351/90&lt;/lnci:content&gt;
      &lt;/lnci:cite&gt;
  &lt;/cttr:citations&gt;
  ...
  &lt;ref:citations&gt;
    &lt;ref:cite4thisresource&gt;
      &lt;lnci:cite&gt;
        &lt;lnci:case&gt;
          &lt;lnci:caseref&gt;
            &lt;lnci:reporter value="C"/&gt;
            &lt;lnci:edition&gt;
              &lt;lnci:date year="1990"/&gt;
            &lt;/lnci:edition&gt;
            &lt;lnci:page num="351"/&gt;
          &lt;/lnci:caseref&gt;
        &lt;/lnci:case&gt;
        &lt;lnci:content&gt;C-351/90&lt;/lnci:content&gt;
      &lt;/lnci:cite&gt;
    &lt;/ref:cite4thisresource&gt;
  &lt;/ref:citations&gt;
&lt;/cttr:caseinfo&gt;
</pre>
			</p>

			<p> Repeated <sourcexml>ci:cite</sourcexml> within <sourcexml>case:casename</sourcexml>
				<pre>
    
  
  &lt;case:info&gt;
    &lt;case:casename&gt;
      &lt;emph typestyle="ro"&gt;
        &lt;refpt id="58696" type="ext"/&gt;
        &lt;emph typestyle="bf"&gt;Italy v Pennacchiotti: 
          &lt;ci:cite searchtype="CASE-REF"&gt;&lt;ci:case&gt;&lt;ci:caseref&gt;
            &lt;ci:reporter value="C"/&gt;
            &lt;ci:edition&gt;&lt;ci:date year="1988"/&gt;&lt;/ci:edition&gt;
            &lt;ci:page num="315"/&gt;
          &lt;/ci:caseref&gt;&lt;/ci:case&gt;&lt;ci:content&gt;C-315/88&lt;/ci:content&gt;
          &lt;/ci:cite&gt;
        &lt;/emph&gt;&lt;nl/&gt;
        &lt;emph typestyle="it"&gt; sub nom&lt;/emph&gt; Pennacchiotti, criminal proceedings against: 
        &lt;ci:cite searchtype="CASE-REF"&gt;&lt;ci:case&gt;&lt;ci:caseref&gt;
          &lt;ci:reporter value="C"/&gt;
          &lt;ci:edition&gt;&lt;ci:date year="1988"/&gt;&lt;/ci:edition&gt;&lt;ci:page num="315"/&gt;&lt;/ci:caseref&gt;
        &lt;/ci:case&gt;&lt;ci:content&gt;C-315/88&lt;/ci:content&gt;
        &lt;/ci:cite&gt;
      &lt;/emph&gt;
    &lt;/case:casename&gt;
  &lt;/case:info&gt;
  <b>Becomes</b>
  &lt;cttr:caseinfo&gt;
    &lt;caseinfo:casename&gt;
      &lt;caseinfo:fullcasename&gt;
        Italy v Pennacchiotti:
      &lt;/caseinfo:fullcasename&gt;
    &lt;/caseinfo:casename&gt;
    &lt;caseinfo:alternatecasename&gt;
      &lt;emph typestyle="it"&gt; sub nom&lt;/emph&gt; Pennacchiotti, criminal proceedings against:
    &lt;/caseinfo:alternatecasename&gt;
    &lt;caseinfo:docketnum&gt;C-315/88&lt;/caseinfo:docketnum&gt;
    ...
    &lt;cttr:citations&gt;
       &lt;lnci:cite&gt;
          &lt;lnci:case&gt;
            &lt;lnci:caseref&gt;
              &lt;lnci:reporter value="C"/&gt;
              &lt;lnci:edition&gt;
                &lt;lnci:date year="1988"/&gt;
              &lt;/lnci:edition&gt;
              &lt;lnci:page num="315"/&gt;
            &lt;/lnci:caseref&gt;
          &lt;/lnci:case&gt;
          &lt;lnci:content&gt;C-315/88&lt;/lnci:content&gt;
        &lt;/lnci:cite&gt;
    &lt;/cttr:citations&gt;
    ...
    &lt;ref:citations&gt;
      &lt;ref:cite4thisresource&gt;
        &lt;lnci:cite&gt;
          &lt;lnci:case&gt;
            &lt;lnci:caseref&gt;
              &lt;lnci:reporter value="C"/&gt;
              &lt;lnci:edition&gt;
                &lt;lnci:date year="1988"/&gt;
              &lt;/lnci:edition&gt;
              &lt;lnci:page num="315"/&gt;
            &lt;/lnci:caseref&gt;
          &lt;/lnci:case&gt;
          &lt;lnci:content&gt;C-315/88&lt;/lnci:content&gt;
        &lt;/lnci:cite&gt;
      &lt;/ref:cite4thisresource&gt;
    &lt;/ref:citations&gt;
  &lt;/cttr:caseinfo&gt;
  </pre>
			</p>
			<p>Two <sourcexml>" sub noms"</sourcexml> within <sourcexml>case:casename</sourcexml>.
				<pre>
    &lt;case:info&gt;
  &lt;case:casename&gt;
    &lt;emph typestyle="ro"&gt;
      &lt;refpt id="99459" type="ext"/&gt;
      &lt;emph typestyle="bf"&gt;Willesden Overseers v Paddington Overseers&lt;/emph&gt;&lt;nl/&gt;
      &lt;emph typestyle="it"&gt; sub nom&lt;/emph&gt;
      R v Willesden Parish (Churchwardens and Overseers)&lt;nl/&gt;
      &lt;emph typestyle="it"&gt; sub nom&lt;/emph&gt; 
      Paddington (Churchwardens) v Willesden (Churchwardens)
    &lt;/emph&gt;
  &lt;/case:casename&gt;
&lt;/case:info&gt;
<b>Becomes</b>
  &lt;cttr:caseinfo&gt;
    &lt;caseinfo:casename&gt;
      &lt;caseinfo:fullcasename&gt;
        Willesden Overseers v Paddington Overseers
      &lt;/caseinfo:fullcasename&gt;
    &lt;/caseinfo:casename&gt;
    &lt;caseinfo:alternatecasename&gt;
      &lt;emph typestyle="it"&gt; sub nom&lt;/emph&gt; R v Willesden Parish (Churchwardens and Overseers)
    &lt;/caseinfo:alternatecasename&gt;
    &lt;caseinfo:alternatecasename&gt;
      &lt;emph typestyle="it"&gt; sub nom&lt;/emph&gt; Paddington (Churchwardens) v Willesden (Churchwardens)
    &lt;/caseinfo:alternatecasename&gt;
    ...
  &lt;/cttr:caseinfo&gt;
  </pre>
			</p>
			<section>
				<title>Source XML - More than one <sourcexml>ci:cite</sourcexml> with casename.</title>
				<codeblock> &lt;case:casename&gt; &lt;emph typestyle="ro"&gt; &lt;refpt id="320926" type="ext"/&gt; &lt;emph
					typestyle="bf"&gt;Guyez and Sanchez v Spain (X and Y Intervening): &lt;ci:cite searchtype="CASE-REF"&gt;
					&lt;ci:case&gt;&lt;ci:caseref&gt;&lt;ci:reporter value="C"/&gt; &lt;ci:edition&gt;&lt;ci:date
					year="2009"/&gt;&lt;/ci:edition&gt; &lt;ci:page num="483"/&gt;&lt;/ci:caseref&gt;&lt;/ci:case&gt;
					&lt;ci:content&gt;C-483/09&lt;/ci:content&gt; &lt;/ci:cite&gt; and &lt;ci:cite searchtype="CASE-REF"&gt;
					&lt;ci:case&gt;&lt;ci:caseref&gt;&lt;ci:reporter value="C"/&gt; &lt;ci:edition&gt;&lt;ci:date
					year="2010"/&gt;&lt;/ci:edition&gt; &lt;ci:page num="1"/&gt;&lt;/ci:caseref&gt;&lt;/ci:case&gt;
					&lt;ci:content&gt;C-1/10&lt;/ci:content&gt; &lt;/ci:cite&gt; &lt;/emph&gt;&lt;nl/&gt;&lt;emph
					typestyle="it"&gt; sub nom&lt;/emph&gt; Gueye: &lt;ci:cite searchtype="CASE-REF"&gt;
					&lt;ci:case&gt;&lt;ci:caseref&gt;&lt;ci:reporter value="C"/&gt; &lt;ci:edition&gt;&lt;ci:date
					year="2009"/&gt;&lt;/ci:edition&gt; &lt;ci:page num="483"/&gt;&lt;/ci:caseref&gt;&lt;/ci:case&gt;
					&lt;ci:content&gt;C-483/09&lt;/ci:content&gt; &lt;/ci:cite&gt; and &lt;ci:cite searchtype="CASE-REF"&gt;
					&lt;ci:case&gt;&lt;ci:caseref&gt;&lt;ci:reporter value="C"/&gt; &lt;ci:edition&gt;&lt;ci:date
					year="2010"/&gt;&lt;/ci:edition&gt; &lt;ci:page num="1"/&gt;&lt;/ci:caseref&gt;&lt;/ci:case&gt;
					&lt;ci:content&gt;C-1/10&lt;/ci:content&gt; &lt;/ci:cite&gt; &lt;/emph&gt; &lt;/case:casename&gt; </codeblock>
			</section>
			<section>
				<title>Target XML</title>
				<codeblock> &lt;cttr:caseinfo&gt; &lt;caseinfo:casename&gt; &lt;caseinfo:fullcasename&gt; Guyez and Sanchez v
					Spain (X and Y Intervening): &lt;/caseinfo:fullcasename&gt; &lt;/caseinfo:casename&gt;
					&lt;caseinfo:alternatecasename&gt; &lt;emph typestyle="it"&gt; sub nom&lt;/emph&gt; Gueye:
					&lt;/caseinfo:alternatecasename&gt; &lt;caseinfo:docketnum&gt;C-483/09&lt;/caseinfo:docketnum&gt;
					&lt;caseinfo:docketnum&gt;C-1/10&lt;/caseinfo:docketnum&gt; ... &lt;cttr:citations&gt; &lt;lnci:cite&gt;
					&lt;lnci:case&gt; &lt;lnci:caseref&gt; &lt;lnci:reporter value="C"/&gt; &lt;lnci:edition&gt; &lt;lnci:date
					year="2009"/&gt; &lt;/lnci:edition&gt; &lt;lnci:page num="483"/&gt; &lt;/lnci:caseref&gt; &lt;/lnci:case&gt;
					&lt;lnci:content&gt;C-483/09&lt;/lnci:content&gt; &lt;/lnci:cite&gt; and &lt;lnci:cite&gt; &lt;lnci:case&gt;
					&lt;lnci:caseref&gt; &lt;lnci:reporter value="C"/&gt; &lt;lnci:edition&gt; &lt;lnci:date year="2010"/&gt;
					&lt;/lnci:edition&gt; &lt;lnci:page num="1"/&gt; &lt;/lnci:caseref&gt; &lt;/lnci:case&gt;
					&lt;lnci:content&gt;C-1/10&lt;/lnci:content&gt; &lt;/lnci:cite&gt; &lt;/cttr:citations&gt; ...
					&lt;ref:citations&gt; &lt;ref:cite4thisresource&gt; &lt;lnci:cite&gt; &lt;lnci:case&gt; &lt;lnci:caseref&gt;
					&lt;lnci:reporter value="C"/&gt; &lt;lnci:edition&gt; &lt;lnci:date year="2009"/&gt; &lt;/lnci:edition&gt;
					&lt;lnci:page num="483"/&gt; &lt;/lnci:caseref&gt; &lt;/lnci:case&gt;
					&lt;lnci:content&gt;C-483/09&lt;/lnci:content&gt; &lt;/lnci:cite&gt; &lt;/ref:cite4thisresource&gt;
					&lt;connector&gt; and &lt;/connector&gt; &lt;ref:cite4thisresource&gt; &lt;lnci:cite&gt; &lt;lnci:case&gt;
					&lt;lnci:caseref&gt; &lt;lnci:reporter value="C"/&gt; &lt;lnci:edition&gt; &lt;lnci:date year="2010"/&gt;
					&lt;/lnci:edition&gt; &lt;lnci:page num="1"/&gt; &lt;/lnci:caseref&gt; &lt;/lnci:case&gt;
					&lt;lnci:content&gt;C-1/10&lt;/lnci:content&gt; &lt;/lnci:cite&gt; &lt;/ref:cite4thisresource&gt;
					&lt;/ref:citations&gt; ... &lt;/cttr:caseinfo&gt; </codeblock>
			</section>
			<section>
				<title>Changes</title>
				<p>2013-10-17: <ph id="change_20131017_brt">Added instruction and modified examples to create an additional path
						for converting <sourcexml>case:casename/ci:cite</sourcexml> to
							<targetxml>cttr:caseinfo/cttr:citations/lnci:cite</targetxml>. This change creates a second duplicate of
						the citation. </ph></p>
				<p>2013-07-18: <ph id="change_20130718_raj">Added instructions for not creating <targetxml>connector</targetxml>
						elements when only space characters occur in between <sourcexml>ci:cite</sourcexml> elements.</ph></p>
			</section>
		</body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK05_Citator\Rosetta_case.casename-to-LexisAdvance_caseinfo.fullcasename.dita  -->

	<xsl:template match="case:casename | case2:casename">
		<!--  Original Target XPath:  caseinfo:casename/caseinfo:fullcasename   -->
		<caseinfo:casename>
			<caseinfo:fullcasename>
				<xsl:choose>
					<xsl:when test="contains(.,':')">
						<xsl:variable name="casename" select="." />
						<xsl:value-of select="concat(substring-before($casename,':'),':')"/>
					</xsl:when>
					<xsl:when test="contains(.,'sub nom')">
						<xsl:variable name="casename" select="." />
						<xsl:value-of select="substring-before($casename,'sub nom')"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:value-of select="."/>
					</xsl:otherwise>
				</xsl:choose>
			</caseinfo:fullcasename>
		</caseinfo:casename>
	  <!-- 
			For every occurance of the text " sub nom", the following content till the next occurance of " sub nom" or end of content, should be captured within
cttr:caseinfo/caseinfo:alternatecasename. The content of each cttr:caseinfo/caseinfo:alternatecasename element should be
prepended with an emph element, with attribute @typestyle="it" and content sub nom.
			-->
	  <xsl:for-each select=".//node()">
	    <!-- for each instance where 'sub nom' is found (so far within <emph> get that <emph>([1]) and the immediate following (cite) node([1]) -->
	    <xsl:if test="contains(text()[1],'sub nom')">
	      <caseinfo:alternatecasename>
	        <emph typestyle="it">
	          <xsl:value-of select="."/>
	        </emph>
	        <xsl:apply-templates select="following-sibling::node()[not(self::ci:*)][1]"/>
	      </caseinfo:alternatecasename>
	    </xsl:if>
	  </xsl:for-each>	  
	</xsl:template>

	<xsl:template match="emph[ancestor::case:casename or ancestor::case2:casename][not(contains(.,'sub nom'))]">
		<xsl:value-of select="."/>
	</xsl:template>

	<xsl:template match="emph[ancestor::case:casename or ancestor::case2:casename][contains(.,'sub nom')]">
		<caseinfo:alternatecasename>
			<xsl:apply-templates select="node()"/>
		</caseinfo:alternatecasename>
	</xsl:template>
	
	<xsl:template match="emph[parent::*:casename]/@typestyle"/>
	
	<xsl:template match="refpt[parent::case:casename or parent::case2:casename]">
		<xsl:apply-templates/>
	</xsl:template>
	
	<xsl:template match="nl[parent::case:casename or parent::case2:casename]">
		<xsl:value-of select="' '"/>
	</xsl:template>


</xsl:stylesheet>
