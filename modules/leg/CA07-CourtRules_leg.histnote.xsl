<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.histnote">
   <title>leg:histnote <lnpid>id-CA07-14015</lnpid></title>
   <body>
      <section>
        <ul>
          <li class="- topic/li ">
            <sourcexml>leg:histnote</sourcexml> becomes <targetxml>note[notetype="historical"]</targetxml>.
          </li>
        </ul>
      </section>

           <example>
             <title>Source XML</title>
             <codeblock>

&lt;leg:histnote&gt;
    &lt;p&gt;
        &lt;text&gt;Amend. Gaz. Nov. 16, 2007.&lt;/text&gt;
    &lt;/p&gt;
&lt;/leg:histnote&gt;

                 </codeblock>
           </example>
           
           <example>
             <title>Target XML</title>
             <codeblock>

&lt;note notetype="historical"&gt;
    &lt;bodytext&gt;
        &lt;p&gt;
            &lt;text&gt;Amend. Gaz. Nov. 16, 2007.&lt;/text&gt;
        &lt;/p&gt;
    &lt;/bodytext&gt;
&lt;/note&gt;

             </codeblock>
           </example>

   </body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA07-CourtRules\leg.histnote.dita  -->
	
	<xsl:template match="leg:histnote">

		<!--  Original Target XPath:  note[notetype="historical"]   -->
	  <note notetype="historical">
		  <bodytext>
			<xsl:apply-templates select="@* | node()"/>
		  </bodytext>
		</note>

	</xsl:template>

</xsl:stylesheet>