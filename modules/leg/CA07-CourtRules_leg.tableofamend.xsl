<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:primlawhist="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-history/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.tableofamend">
  <title>leg:tableofamend <lnpid>id-CA07-14031</lnpid></title>
   <body>
      <section>
        <ul>
          <li class="- topic/li ">
            <sourcexml>leg:tableofamend</sourcexml> becomes
            <targetxml>primlawhist:primlawhist/primlawhist:histgrp[@grptype="tableofamend"]/primlawhist:histitem/bodytext</targetxml>.
            <note>Add the attribute value <targetxml>@grptype="tableofamend"</targetxml> to <targetxml>primlawhist:histgrp</targetxml>.</note>
          </li>
        </ul>
      </section>

           <example>
             <title>Source XML</title>
             <codeblock>

&lt;leg:history&gt;
    &lt;leg:tableofamend&gt;
        &lt;p&gt;
            &lt;text&gt;
                &lt;verbatim verbatimclass="verbatim"&gt;&lt;nl/&gt;
                    &lt;nl/&gt; ** Editor's Table **&lt;nl/&gt;
                    &lt;nl/&gt; For changes prior to January 2000, please
                    see the Alberta&lt;nl/&gt; Gazette Part II for in force information.&lt;nl/&gt;
                    &lt;nl/&gt; Provision Changed by Effective Gazette Date&lt;nl/&gt;
                    &lt;nl/&gt; 736.1 Alta. Reg. 124/2010 r15.14(1) 2010 Nov
                    1 2010 Aug 14&lt;nl/&gt; *****&lt;/verbatim&gt;
            &lt;/text&gt;
        &lt;/p&gt;
    &lt;/leg:tableofamend&gt;
&lt;/leg:history&gt;

                 </codeblock>
           </example>
           
           <example>
             <title>Target XML</title>
             <codeblock>

&lt;primlawhist:primlawhist&gt;
    &lt;primlawhist:histgrp grptype="tableofamend"&gt;
        &lt;primlawhist:histitem&gt;
            &lt;bodytext&gt;
                &lt;p&gt;
                    &lt;text&gt;
                        &lt;verbatim verbatimclass="verbatim"&gt;&lt;proc:nl/&gt;
                            &lt;proc:nl/&gt; ** Editor's Table **&lt;proc:nl/&gt;
                            &lt;proc:nl/&gt; For changes prior to January 2000, please
                            see the Alberta&lt;nl/&gt; Gazette Part II for in force information.&lt;proc:nl/&gt;
                            &lt;proc:nl/&gt; Provision Changed by Effective Gazette Date&lt;proc:nl/&gt;
                            &lt;proc:nl/&gt; 736.1 Alta. Reg. 124/2010 r15.14(1) 2010 Nov
                            1 2010 Aug 14&lt;proc:nl/&gt; *****&lt;/verbatim&gt;
                    &lt;/text&gt;
                &lt;/p&gt;
            &lt;/bodytext&gt;
        &lt;/primlawhist:histitem&gt;
    &lt;/primlawhist:histgrp&gt;
&lt;/primlawhist:primlawhist&gt;

             </codeblock>
           </example>

   </body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA07-CourtRules\leg.tableofamend.dita  -->
	
	<xsl:template match="leg:tableofamend">

		<!--  Original Target XPath:  primlawhist:primlawhist/primlawhist:histgrp[@grptype="tableofamend"]/primlawhist:histitem/bodytext   -->
<!--		<primlawhist:primlawhist>-->
		    <primlawhist:histgrp grptype="tableofamend">
				<primlawhist:histitem>
					<bodytext>
						<xsl:apply-templates select="@* | node()"/>
					</bodytext>
				</primlawhist:histitem>
			</primlawhist:histgrp>
		<!--</primlawhist:primlawhist>-->

	</xsl:template>

</xsl:stylesheet>