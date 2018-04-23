<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:primlawhist="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-history/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.tableofamend">
  <title>leg:tableofamend <lnpid>id-ST02-26428</lnpid></title>
   <body>
      <section>
        <ul>
          <li>
            <sourcexml>leg:tableofamend</sourcexml> becomes
            <targetxml>primlawhist:primlawhist/primlawhist:histgrp[@grptype="tableofamend"]/primlawhist:histitem/bodytext</targetxml>.
            <note>Add the attribute value <targetxml>@grptype="tableofamend"</targetxml> to <targetxml>primlawhist:histgrp</targetxml>.</note>
          </li>
        </ul>
      </section>

           <example>
             <title>Source XML 1</title>
             <codeblock>

&lt;leg:history id="NSW_REG_1992-448_LEGHIST"&gt;
    &lt;leg:heading&gt;
        &lt;title&gt;
            &lt;refpt id="NSW_REG_1992-448_LEGHIST" type="ext"/&gt;
            &lt;emph typestyle="bf"&gt;LawNow Legislative History&lt;/emph&gt;
        &lt;/title&gt;
    &lt;/leg:heading&gt;
    &lt;leg:tableofamend&gt;
        &lt;leg:heading&gt;
            &lt;title&gt;
                &lt;refpt id="NSW_REG_1992-448_LEGHIST_PRE-YEAR" type="ext"/&gt;
                &lt;emph typestyle="bf"&gt;Pre-1996 subordinate law&lt;/emph&gt;
            &lt;/title&gt;
        &lt;/leg:heading&gt;
        &lt;p&gt;
            &lt;text&gt;This subordinate law history only includes events from 1996. Details of events
                affecting the subordinate law before 1996 may be found in the &lt;remotelink
                    service="DOC-ID" remotekey1="REFPTID" refpt="NSW_REG_1992-448_NOTES"
                    &gt;Notes&lt;/remotelink&gt; at the end of the subordinate law.&lt;/text&gt;
        &lt;/p&gt;
    &lt;/leg:tableofamend&gt;
&lt;/leg:history&gt;

                 </codeblock>
           </example>
           
           <example>
             <title>Target XML 1</title>
             <codeblock>

&lt;primlawhist:primlawhist&gt;
    &lt;ref:anchor id="NSW_REG_1992-448_LEGHIST" anchortype="global"/&gt;
    &lt;heading&gt;
        &lt;title&gt;
            &lt;emph typestyle="bf"&gt;LawNow Legislative History&lt;/emph&gt;
        &lt;/title&gt;
    &lt;/heading&gt;
    &lt;primlawhist:histgrp grptype="tableofamend"&gt;
        &lt;ref:anchor id="NSW_REG_1992-448_LEGHIST_PRE-YEAR" anchortype="global"/&gt;
        &lt;heading&gt;
            &lt;title&gt;
                &lt;emph typestyle="bf"&gt;Pre-1996 subordinate law&lt;/emph&gt;
            &lt;/title&gt;
        &lt;/heading&gt;
        &lt;primlawhist:histitem&gt;
            &lt;bodytext&gt;
                &lt;p&gt;
                    &lt;text&gt;This subordinate law history only includes events from 1996. Details of
                        events affecting the subordinate law before 1996 may be found in the
                            &lt;ref:crossreference crossreferencetype="seeAlso"
                                &gt;&lt;ref:content&gt;Notes&lt;/ref:content&gt;&lt;ref:locator
                                anchoridref="NSW_REG_1992-448_NOTES"&gt;&lt;ref:locator-key&gt;&lt;ref:key-name
                                        name="DOC-ID"/&gt;&lt;ref:key-value value="03AF-"
                                    /&gt;&lt;/ref:locator-key&gt;&lt;/ref:locator&gt;&lt;/ref:crossreference&gt; at the
                        end of the subordinate law.&lt;/text&gt;
                &lt;/p&gt;
            &lt;/bodytext&gt;
        &lt;/primlawhist:histitem&gt;
    &lt;/primlawhist:histgrp&gt;
&lt;/primlawhist:primlawhist&gt;

             </codeblock>
           </example>
       
       <example>
           <title>Source XML 2</title>
           <codeblock>

&lt;leg:history&gt;
    &lt;leg:tableofamend&gt;
        &lt;p&gt;
            &lt;text&gt;
                &lt;verbatim verbatimclass="verbatim"&gt;&lt;nl/&gt;
                    &lt;nl/&gt; ** Editor's Table **&lt;nl/&gt;
                    &lt;nl/&gt; For changes prior to February 2001, please
                    see the Ontario&lt;nl/&gt; Gazette for in force information.&lt;nl/&gt;
                    &lt;nl/&gt; Provision Changed by Effective Gazette Date&lt;nl/&gt;
                    &lt;nl/&gt; Table O. Reg. 55/08 s10 2008 Jul 1 2008 Apr
                    5&lt;nl/&gt; Table O. Reg. 575/07 s36 2008 Jul 1 2008
                    Jan 5&lt;nl/&gt; Table O. Reg. 77/06 s2 2006 Jul 1 2006
                    Mar 25&lt;nl/&gt; Table O. Reg. 438/08 s67 2010 Jan 1
                    2008 Dec 27&lt;nl/&gt; Table O. Reg. 394/09 s32 2010 Jan
                    1 2009 Oct 31&lt;nl/&gt; Table O. Reg. 186/10 s6 2010
                    Jul 1 2010 Jun 5&lt;nl/&gt; Table O. Reg. 55/12 s13 2012
                    Apr 19 2012 May 5&lt;nl/&gt; Table O. Reg. 55/12 s13
                    2012 Jul 1 2012 May 5&lt;nl/&gt; *****&lt;/verbatim&gt;
            &lt;/text&gt;
        &lt;/p&gt;
    &lt;/leg:tableofamend&gt;
&lt;/leg:history&gt;

                 </codeblock>
       </example>
       
       <example>
           <title>Target XML 2</title>
           <codeblock>

&lt;primlawhist:primlawhist&gt;
    &lt;primlawhist:histgrp grptype="tableofamend"&gt;
        &lt;primlawhist:histitem&gt;
            &lt;bodytext&gt;
                &lt;p&gt;
                    &lt;text&gt;&lt;verbatim verbatimclass="verbatim"&gt;&lt;proc:nl&gt;&lt;/proc:nl&gt;
                        &lt;proc:nl&gt;&lt;/proc:nl&gt;
                        ** Editor's Table **&lt;proc:nl&gt;&lt;/proc:nl&gt;
                        &lt;proc:nl&gt;&lt;/proc:nl&gt;
                        For changes prior to February 2001, please see the Ontario&lt;proc:nl&gt;&lt;/proc:nl&gt;
                        Gazette for in force information.&lt;proc:nl&gt;&lt;/proc:nl&gt;
                        &lt;proc:nl&gt;&lt;/proc:nl&gt;
                        Provision     Changed by          Effective     Gazette Date&lt;proc:nl&gt;&lt;/proc:nl&gt;
                        &lt;proc:nl&gt;&lt;/proc:nl&gt;
                        Table         O. Reg. 55/08 s10   2008 Jul 1    2008 Apr 5&lt;proc:nl&gt;&lt;/proc:nl&gt;
                        Table         O. Reg. 575/07 s36  2008 Jul 1    2008 Jan 5&lt;proc:nl&gt;&lt;/proc:nl&gt;
                        Table         O. Reg. 77/06 s2    2006 Jul 1    2006 Mar 25&lt;proc:nl&gt;&lt;/proc:nl&gt;
                        Table         O. Reg. 438/08 s67  2010 Jan 1    2008 Dec 27&lt;proc:nl&gt;&lt;/proc:nl&gt;
                        Table         O. Reg. 394/09 s32  2010 Jan 1    2009 Oct 31&lt;proc:nl&gt;&lt;/proc:nl&gt;
                        Table         O. Reg. 186/10 s6   2010 Jul 1    2010 Jun 5&lt;proc:nl&gt;&lt;/proc:nl&gt;
                        Table         O. Reg. 55/12 s13   2012 Apr 19   2012 May 5&lt;proc:nl&gt;&lt;/proc:nl&gt;
                        Table         O. Reg. 55/12 s13   2012 Jul 1    2012 May 5&lt;proc:nl&gt;&lt;/proc:nl&gt;
                        *****&lt;/verbatim&gt;&lt;/text&gt;
                &lt;/p&gt;
            &lt;/bodytext&gt;
        &lt;/primlawhist:histitem&gt;
    &lt;/primlawhist:histgrp&gt;
&lt;/primlawhist:primlawhist&gt;

             </codeblock>
       </example>

   </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-Standard\Courtrule\leg.tableofamend.dita  -->
	<xsl:message>Courtrule_leg.tableofamend.xsl requires manual development!</xsl:message> 

	<xsl:template match="leg:tableofamend">

		<!--  Original Target XPath:  primlawhist:primlawhist/primlawhist:histgrp[@grptype="tableofamend"]/primlawhist:histitem/bodytext   -->
		<primlawhist:primlawhist>
			<primlawhist:histgrp>
				<primlawhist:histitem>
					<bodytext>
						<xsl:apply-templates select="@* | node()"/>
					</bodytext>
				</primlawhist:histitem>
			</primlawhist:histgrp>
		</primlawhist:primlawhist>

	</xsl:template>

</xsl:stylesheet>