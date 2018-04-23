<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:courtcase="http://www.lexisnexis.com/xmlschemas/content/legal/courtcase/1/" xmlns:seclaw="http://www.lexisnexis.com/xmlschemas/content/legal/secondary-law/1/" version="2.0" exclude-result-prefixes="dita courtcase case seclaw">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="case.embeddedcase">
    <title>case:embeddedcase <lnpid>id-CA02DS-12819</lnpid></title>
   <body>
      <section>
<ul>
   <li>
                    <sourcexml>case:embeddedcase</sourcexml> becmes
                        <targetxml>courtcase:caseexcerpt</targetxml>. <note>Hence Rosetta element
                            <sourcexml>case:embeddedcase</sourcexml> occurs under
                            <sourcexml>/dig:item/bodytext</sourcexml>, and
                            <sourcexml>bodytext</sourcexml> only contains
                            <sourcexml>case:embeddedcase</sourcexml> and not any other sibling, So
                        during NL conversion we will omit <sourcexml>bodytext</sourcexml> and then
                            <targetxml>courtcase:caseexcerpt</targetxml> will be retained under
                            <targetxml>seclaw:digest</targetxml> as child element. So like this way...
                            <p><b>Rosetta Input XPATH:</b>
                                <sourcexml>/DIGESTDOC/dig:body/dig:collection/dig:level/dig:item/bodytext/case:embeddedcase</sourcexml></p>
                            
                            <b>Will become</b>
                            
                            <p>
                            <b>NL Output XPATH:</b>
                                <targetxml>/seclaw:seclaw/seclaw:body/seclaw:level/seclaw:bodytext/seclaw:digestgrp/seclaw:digest/courtcase:caseexcerpt</targetxml>.</p></note>
                    <pre>

&lt;dig:item&gt;
    ...........
    ...........
    &lt;bodytext searchtype="DECISION-SUMMARY"&gt;
        &lt;case:embeddedcase&gt;
            &lt;case:headnote&gt;
                &lt;case:decisionsummary&gt;
                    &lt;p&gt;
                        &lt;text&gt;Sentencing of KD, 16, for robbery and failing to
                            comply with his recognizance -- At the time of the
                            robbery, KD was subject to a peace bond on another
                            robbery charge relating to the same 16-year-old
                            ient treatment he had received
                            -- KD had shown that he would not behave out of custody
                            or in custody -- No sentence other than a custodial
                            sentence would be fit in this case -- A non-custodial
                            sentence would not hold KD accountable for these
                            robberies -- It would not promote his rehabilitation or
                            reintegration -- The joint submission would have been
                            contrary to the public interest or would have, if
                            imposed, brought the administration of justice into
                            disrepute -- Sentence: Three months' closed custody,
                            three months' open custody, three months' community
                            supervision and 12 months' probation for robbery; 12
                            months' probation for failure to comply.&lt;/text&gt;
                    &lt;/p&gt;
                &lt;/case:decisionsummary&gt;
            &lt;/case:headnote&gt;
        &lt;/case:embeddedcase&gt;
    &lt;/bodytext&gt;
    ..........
    ..........
&lt;/dig:item&gt;


<b>Becomes</b>   


&lt;seclaw:digest&gt;
    ..........
    ..........
    &lt;courtcase:caseexcerpt&gt;
        &lt;courtcase:head&gt;
            &lt;casesum:summaries&gt;
                &lt;casesum:decisionsummary&gt;
                    &lt;bodytext&gt;
                        &lt;p&gt;
                            &lt;text&gt;Sentencing of KD, 16, for robbery and failing to
                                comply with his recognizance -- At the time of the
                                robbery, KD was subject to a peace bond on another
                                robbery charge relating to the same 16-year-old
                                physically challenged complainant -- KD and three others
                                encountered the complainant on the street -- KD struck
                                him on the head wearing brass knuckles and then kicked
                                the complainant -- KD and his friends then stole $5 from
                                the complainant -- As a result of these robbery charges,
                                sentence would not hold KD accountable for these
                                robberies -- It would not promote his rehabilitation or
                                reintegration -- The joint submission would have been
                                contrary to the public interest or would have, if
                                imposed, brought the administration of justice into
                                disrepute -- Sentence: Three months' closed custody,
                                three months' open custody, three months' community
                                supervision and 12 months' probation for robbery; 12
                                months' probation for failure to comply.&lt;/text&gt;
                        &lt;/p&gt;
                    &lt;/bodytext&gt;
                &lt;/casesum:decisionsummary&gt;
            &lt;/casesum:summaries&gt;
        &lt;/courtcase:head&gt;
    &lt;/courtcase:caseexcerpt&gt;
    ..........
    ..........
&lt;/seclaw:digest&gt;
</pre>
                </li>
      </ul>
</section>
   </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA02-Case_Summaries\CA02DS_DIGESTDOC_to_seclaw\case.embeddedcase.dita  -->
	
    <!-- Vikas Rohilla : Template to match the case:embeddedcase and creates the courtcase:caseexcerpt -->
	<xsl:template match="case:embeddedcase">
		<courtcase:caseexcerpt>
			<xsl:apply-templates select="@* | node()"/>
		</courtcase:caseexcerpt>
	</xsl:template>

</xsl:stylesheet>