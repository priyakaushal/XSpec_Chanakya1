<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="IN05_Rosetta_level">
  <title>level <lnpid>id-IN05-38826</lnpid></title>

  <body>
    <p><sourcexml>level</sourcexml> becomes <targetxml>section</targetxml></p>

<pre>

&lt;jrnl:body&gt;
    ...
    &lt;jrnl:bodytext&gt;
        &lt;level&gt;
            &lt;bodytext&gt;
                &lt;pgrp&gt;
                    &lt;heading&gt;
                        &lt;title&gt;I INTRODUCTION&lt;/title&gt;
                    &lt;/heading&gt;
                    &lt;p&gt;
                        &lt;text&gt;ADMINISTRATIVE LAW is basically concerned with the powers of
                            administrative authorities, the extent of such powers, the
                            procedures prescribed for the exercise of such powers, the remedies
                            available to the aggrieved citizens when such powers are abused or
                            misused. Broadly speaking, the actions and at times, the non-actions
                            of administrative bodies are impugned in judicial review
                            proceedings. Administrative action includes rule-making,
                            adjudication inquiry, inspection, supervision, imposition of
                            conditions while granting leases, licences, to mention a few.
                            Non-action relates to non-performance of a statutory duty.&lt;/text&gt;
                    &lt;/p&gt;
                    ....
                &lt;/pgrp&gt;
            &lt;/bodytext&gt;
        &lt;/level&gt;
    &lt;/jrnl:bodytext&gt;
    ...
&lt;/jrnl:body&gt;
   

<b>Becomes</b>
    

&lt;nitf:body&gt;
    &lt;nitf:body.content&gt;
        &lt;bodytext&gt;
            &lt;section&gt;
                &lt;bodytext&gt;
                    &lt;pgrp&gt;
                        &lt;heading&gt;
                            &lt;title&gt;I INTRODUCTION&lt;/title&gt;
                        &lt;/heading&gt;
                        &lt;p&gt;
                            &lt;text&gt;ADMINISTRATIVE LAW is basically concerned with the powers of
                                administrative authorities, the extent of such powers, the
                                procedures prescribed for the exercise of such powers, the remedies
                                available to the aggrieved citizens when such powers are abused or
                                misused. Broadly speaking, the actions and at times, the non-actions
                                of administrative bodies are impugned in judicial review
                                proceedings. Administrative action includes rule-making,
                                adjudication inquiry, inspection, supervision, imposition of
                                conditions while granting leases, licences, to mention a few.
                                Non-action relates to non-performance of a statutory duty.&lt;/text&gt;
                        &lt;/p&gt; .... &lt;/pgrp&gt; .... &lt;/bodytext&gt;
            &lt;/section&gt;
        &lt;/bodytext&gt;
    &lt;/nitf:body.content&gt;
&lt;/nitf:body&gt;
   
</pre>          
</body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-IN\IN05-Articles\IN05_Rosetta_level.dita  -->
	<xsl:message>IN05_Rosetta_level.xsl requires manual development!</xsl:message> 

	<xsl:template match="level">

		<!--  Original Target XPath:  section   -->
		<section>
			<xsl:apply-templates select="@* | node()"/>
		</section>

	</xsl:template>

</xsl:stylesheet>