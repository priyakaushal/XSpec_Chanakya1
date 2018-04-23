<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" xmlns:leg="http://www.lexis-nexis.com/glp/leg" version="2.0" exclude-result-prefixes="dita docinfo leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.hier">
  <title>leg:hier <lnpid>id-CA07-14014</lnpid></title>
  <body>
    <section>
      <p>
          <sourcexml>leg:hier</sourcexml> and its child elements <sourcexml>leg:hierlev</sourcexml> needs to be suppressed from conversion since it has the same information as that of <sourcexml>docinfo:hier</sourcexml> and <sourcexml>docinfo:hierlev</sourcexml>
      </p> 
    </section>

      <example>
          <title>Source XML</title>
          <codeblock>

&lt;docinfo:hier&gt;
    &lt;docinfo:hierlev role="ancestor"&gt;
        &lt;heading&gt;
            &lt;title&gt;Prince Edward Island&lt;/title&gt;
        &lt;/heading&gt;
        &lt;docinfo:hierlev role="ancestor"&gt;
            &lt;heading&gt;
                &lt;title&gt;Prince Edward Island Rules of Civil Procedure&lt;/title&gt;
            &lt;/heading&gt;
            &lt;docinfo:hierlev role="ancestor"&gt;
                &lt;heading&gt;
                    &lt;title&gt;GENERAL MATTERS&lt;/title&gt;
                &lt;/heading&gt;
                &lt;docinfo:hierlev role="ancestor"&gt;
                    &lt;heading&gt;
                        &lt;title&gt;RULE 1 CITATION, APPLICATION AND
                            INTERPRETATION&lt;/title&gt;
                    &lt;/heading&gt;
                    &lt;docinfo:hierlev role="me"&gt;
                        &lt;heading&gt;
                            &lt;title&gt;CITATION&lt;/title&gt;
                        &lt;/heading&gt;
                    &lt;/docinfo:hierlev&gt;
                &lt;/docinfo:hierlev&gt;
            &lt;/docinfo:hierlev&gt;
        &lt;/docinfo:hierlev&gt;
    &lt;/docinfo:hierlev&gt;
&lt;/docinfo:hier&gt;
&lt;!-...--&gt;
&lt;leg:hier&gt;
    &lt;leg:hierlev leveltype="2"&gt;RULE 1 CITATION, APPLICATION AND INTERPRETATION&lt;/leg:hierlev&gt;
    &lt;leg:hierlev leveltype="2"&gt;CITATION&lt;/leg:hierlev&gt;
&lt;/leg:hier&gt;

    </codeblock>
      </example>
      
      <example>
          <title>Target XML</title>
          <codeblock>

    Suppressed from conversion.

    </codeblock>
      </example>
      
  </body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA07-CourtRules\leg.hier.dita  -->
	
	<xsl:template match="leg:hier" priority="2"/>

		
    <xsl:template match="leg:hierlev" priority="2"/>

		

</xsl:stylesheet>