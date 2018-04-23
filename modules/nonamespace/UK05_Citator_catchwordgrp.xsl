<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
	xmlns:source_cttr="http://www.lexis-nexis.com/glp/cttr"
	xmlns:classify="http://www.lexisnexis.com/xmlschemas/content/shared/classification/1/"
	xmlns:cttr="urn:x-lexisnexis:content:citator:sharedservices:1" 
	version="2.0" 
	exclude-result-prefixes="dita source_cttr">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="catchwordgrp">
		<title>catchwordgrp <lnpid>id-UK05-27808</lnpid></title>
		<body>
			<section>
				<ul>
					<li>
						<sourcexml>catchwordgrp</sourcexml> becomes <targetxml>cttr:descriptors/cttr:descriptorsection
							@descriptortype="catchwords-and-digest"</targetxml>. <note> The content in
								<sourcexml>catchwordgrp</sourcexml> and <sourcexml>cttr:summary</sourcexml> needs to be present in the
							same <targetxml>cttr:descriptorsection</targetxml>. Also, please note that consecutive
								<sourcexml>catchwordgrp</sourcexml> elements should be grouped into a single
								<targetxml>cttr:descriptorsection</targetxml>. However, all content must be converted such that the
							order of elements is maintained whenever possible. Please see the "Maintain the Order of Elements Whenever
							Possible" section for more information. An example illustrating this scenario is shown below. </note>
						<ul>
							<li>
								<sourcexml>catchwords</sourcexml> becomes <targetxml>classify:classification
									@classscheme="catchwords"</targetxml>. <ul>
									<li>
										<sourcexml>catchphrase</sourcexml> becomes
											<targetxml>classify:classitem/classify:classitem-identifier/classify:classname</targetxml>.
											<p>Scenario:1 - Single <sourcexml>catchwordgrp</sourcexml> within
												<sourcexml>cttr:content</sourcexml>.</p>
										<pre>
&lt;catchwordgrp&gt;
  &lt;heading&gt;
    &lt;title&gt;Catchwords Digest&lt;/title&gt;
  &lt;/heading&gt;
  &lt;catchwords&gt;
    &lt;catchphrase&gt;REGISTRATION OF LAND CHARGES - SUBJECTS OF CENTRAL REGISTRATION -
      LAND CHARGES - CLASSIFICATION - CLASS C - ESTATE CONTRACT 
      &lt;ci:cite searchtype="LEG-REF" status="valid"&gt;
        &lt;ci:sesslaw&gt;
          &lt;ci:sesslawinfo&gt;
            &lt;ci:sesslawnum num="1972_61a"/&gt;
            &lt;ci:hierpinpoint&gt;
              &lt;ci:hierlev label="section" num="2"/&gt;
            &lt;/ci:hierpinpoint&gt;
          &lt;/ci:sesslawinfo&gt;
          &lt;ci:sesslawref&gt;
            &lt;ci:standardname normpubcode="UK_ACTS"/&gt;
          &lt;/ci:sesslawref&gt;
        &lt;/ci:sesslaw&gt;
        &lt;ci:content&gt;LAND CHARGES ACT 1972 S 2&lt;/ci:content&gt;
      &lt;/ci:cite&gt;
    &lt;/catchphrase&gt;
  &lt;/catchwords&gt;
&lt;/catchwordgrp&gt;
<b>Becomes</b>
&lt;cttr:descriptors&gt;
  &lt;cttr:descriptorsection descriptortype="catchwords-and-digest"&gt;
    &lt;heading&gt;
      &lt;title&gt;Catchwords Digest&lt;/title&gt;
    &lt;/heading&gt;
    &lt;classify:classification classscheme="catchwords"&gt;
      &lt;classify:classitem&gt;
        &lt;classify:classitem-identifier&gt;
          &lt;classify:classname&gt;REGISTRATION OF LAND CHARGES - SUBJECTS OF CENTRAL REGISTRATION -
                  LAND CHARGES - CLASSIFICATION - CLASS C - ESTATE CONTRACT 
            &lt;lnci:cite&gt;
              &lt;lnci:sesslaw&gt;
                &lt;lnci:sesslawinfo&gt;
                  &lt;lnci:sesslawnum num="1972_61a"/&gt;
                  &lt;lnci:hierpinpoint&gt;
                    &lt;lnci:hierlev label="section" num="2"/&gt;
                  &lt;/lnci:hierpinpoint&gt;
                &lt;/lnci:sesslawinfo&gt;
                &lt;lnci:sesslawref&gt;
                  &lt;lnci:standardname normpubcode="UK_ACTS"/&gt;
                &lt;/lnci:sesslawref&gt;
              &lt;/lnci:sesslaw&gt;
              &lt;lnci:content&gt;LAND CHARGES ACT 1972 S 2&lt;/lnci:content&gt;
            &lt;/lnci:cite&gt;
          &lt;/classify:classname&gt;
        &lt;/classify:classitem-identifier&gt;
      &lt;/classify:classitem&gt;
    &lt;/classify:classification&gt;
  &lt;/cttr:descriptorsection&gt;
&lt;/cttr:descriptors&gt;   

</pre>
										<p>Scenario:2 - Multiple <sourcexml>catchwordgrp</sourcexml> within
												<sourcexml>cttr:content</sourcexml>.</p>
										<pre>
&lt;catchwordgrp&gt;
  &lt;heading&gt;
    &lt;title&gt;Catchwords Digest&lt;/title&gt;
  &lt;/heading&gt;
  &lt;catchwords&gt;
    &lt;catchphrase&gt;LANDLORD AND TENANT - THE GENERAL LAW - AGREEMENTS FOR LEASES -
                CONTRACTS FOR LEASES - REMEDIES FOR BREACH OF CONTRACT - SPECIFIC
                PERFORMANCE - GROUNDS FOR GRANTING OR REFUSING - BREACH OF COVENANT BY
                TENANT - BREACH OF CONDITION OF AGREEMENT BREACH OF BUILDING
                AGREEMENT
    &lt;/catchphrase&gt;
  &lt;/catchwords&gt;
&lt;/catchwordgrp&gt;
&lt;cttr:summary&gt;...
&lt;/cttr:summary&gt;
&lt;catchwordgrp&gt;
  &lt;catchwords&gt;
    &lt;catchphrase&gt;LANDLORD AND TENANT - THE GENERAL LAW - DETERMINATION OF TENANCIES:
                 RECOVERY OF POSSESSION - FORFEITURE - WAIVER OF FORFEITURE - WHAT AMOUNTS TO
                 WAIVER - ACCEPTANCE OF RENT - ACCEPTANCE WITHOUT PREJUDICE TO FORFEITURE -
                 WHETHER WAIVER PREVENTED
    &lt;/catchphrase&gt;
  &lt;/catchwords&gt;
&lt;/catchwordgrp&gt;
&lt;cttr:summary&gt;...
&lt;/cttr:summary&gt;
&lt;catchwordgrp&gt;
  &lt;catchwords&gt;
    &lt;catchphrase&gt;LANDLORD AND TENANT - THE GENERAL LAW - LEASES AND UNDERLEASES -
        CONTENTS OF LEASE - BUILDING LEASES - THE BUILDER - IN GENERAL - RENT
        ACCEPTANCE BY LESSOR BEFORE BUILDING COMPLETED WHETHER WAIVER OF BREACH OF
        COVENANT
    &lt;/catchphrase&gt;
  &lt;/catchwords&gt;
&lt;/catchwordgrp&gt;
<b>Becomes</b>
&lt;cttr:descriptors&gt;
  &lt;cttr:descriptorsection descriptortype="catchwords-and-digest"&gt;
    &lt;heading&gt;
      &lt;title&gt;Catchwords Digest&lt;/title&gt;
    &lt;/heading&gt;
    &lt;classify:classification classscheme="catchwords"&gt;
      &lt;classify:classitem&gt;
        &lt;classify:classitem-identifier&gt;
          &lt;classify:classname&gt;LANDLORD AND TENANT - THE GENERAL LAW - AGREEMENTS
                    FOR LEASES - CONTRACTS FOR LEASES - REMEDIES FOR BREACH OF CONTRACT
                    - SPECIFIC PERFORMANCE - GROUNDS FOR GRANTING OR REFUSING - BREACH
                    OF COVENANT BY TENANT - BREACH OF CONDITION OF AGREEMENT BREACH OF
                    BUILDING AGREEMENT
          &lt;/classify:classname&gt;
        &lt;/classify:classitem-identifier&gt;
      &lt;/classify:classitem&gt;
    &lt;/classify:classification&gt;
    &lt;casesum:editorialsummary summarysource="lexis-caselaw-editorial"&gt;...
    &lt;/casesum:editorialsummary&gt;
    &lt;classify:classification classscheme="catchwords"&gt;
      &lt;classify:classitem&gt;
        &lt;classify:classitem-identifier&gt;
          &lt;classify:classname&gt;LANDLORD AND TENANT - THE GENERAL LAW -
                                DETERMINATION OF TENANCIES: RECOVERY OF POSSESSION - FORFEITURE -
                                WAIVER OF FORFEITURE - WHAT AMOUNTS TO WAIVER - ACCEPTANCE OF RENT -
                                ACCEPTANCE WITHOUT PREJUDICE TO FORFEITURE - WHETHER WAIVER
                                PREVENTED
          &lt;/classify:classname&gt;
        &lt;/classify:classitem-identifier&gt;
      &lt;/classify:classitem&gt;
    &lt;/classify:classification&gt;
    &lt;casesum:editorialsummary summarysource="lexis-caselaw-editorial"&gt;...
    &lt;/casesum:editorialsummary&gt;
    &lt;classify:classification classscheme="catchwords"&gt;
      &lt;classify:classitem&gt;
        &lt;classify:classitem-identifier&gt;
          &lt;classify:classname&gt;LANDLORD AND TENANT - THE GENERAL LAW - LEASES AND
                                UNDERLEASES - CONTENTS OF LEASE - BUILDING LEASES - THE BUILDER - IN
                                GENERAL - RENT ACCEPTANCE BY LESSOR BEFORE BUILDING COMPLETED
                                WHETHER WAIVER OF BREACH OF COVENANT
          &lt;/classify:classname&gt;
        &lt;/classify:classitem-identifier&gt;
      &lt;/classify:classitem&gt;
    &lt;/classify:classification&gt;
  &lt;/cttr:descriptorsection&gt;
&lt;/cttr:descriptors&gt;   

</pre>
									</li>
								</ul>
							</li>
						</ul>
					</li>
				</ul>
			</section>
		</body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK05_Citator\catchwordgrp.dita  -->

	<xsl:template match="catchwordgrp">
		<!--  Original Target XPath:  cttr:descriptors/cttr:descriptorsection@descriptortype="catchwords-and-digest"   -->
		<xsl:apply-templates select="@* | node()"/>
	</xsl:template>
	
	<xsl:template match="catchwords">
		<classify:classification classscheme="catchwords">
			<xsl:apply-templates/>
		</classify:classification>
	</xsl:template>


	<xsl:template match="catchphrase">
		<!--  Original Target XPath:  classify:classitem/classify:classitem-identifier/classify:classname   -->
		<classify:classitem>
			<classify:classitem-identifier>
				<classify:classname>
					<xsl:apply-templates select="@* | node()"/>
				</classify:classname>
			</classify:classitem-identifier>
		</classify:classitem>
	</xsl:template>

</xsl:stylesheet>