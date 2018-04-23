<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:primlawhist="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-history/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.tableofamend">
  <title>leg:tableofamend <lnpid>id-ST04-26848</lnpid></title>
  <body>
    <section>
      <p><sourcexml>leg:tableofamend</sourcexml> becomes
        <targetxml>primlawhist:primlawhist/primlawhist:histgrp[@grptype="tableofamend"]/primlawhist:histitem/bodytext</targetxml>
        <note>Add the attribute value <targetxml>@grptype="tableofamend"</targetxml> to <targetxml>primlawhist:histgrp</targetxml></note>
      </p> 

    <pre>
                   <b><i>Source example based on CA content</i></b>
      

&lt;leg:tableofamend&gt;
    &lt;p&gt;
        &lt;text&gt;
            &lt;verbatim verbatimclass="verbatim"&gt;&lt;nl/&gt; ** Editor's Table **&lt;nl/&gt;
                &lt;nl/&gt; For changes prior to January 2000, please see the Alberta&lt;nl/&gt; Gazette Part II
                for in force information.&lt;nl/&gt;
                &lt;nl/&gt; Provision Changed by Effective Gazette Date&lt;nl/&gt;
                &lt;nl/&gt; 19(1) Alta. Reg. 251/2001 s42 2002 Jan 1 2002 Jan 15&lt;nl/&gt; *****&lt;/verbatim&gt;
        &lt;/text&gt;
    &lt;/p&gt;
&lt;/leg:tableofamend&gt;

</pre>      
      <pre>
      <b><i>Target Example</i></b>

&lt;primlawhist:primlawhist&gt;
      &lt;primlawhist:histgrp grptype="tableofamend"&gt;
           &lt;primlawhist:histitem&gt;
                &lt;bodytext&gt;
                     &lt;p&gt;&lt;text&gt;&lt;verbatim verbatimclass="verbatim"&gt;&lt;proc:nl/&gt;** Editor's Table **&lt;proc:nl/&gt;
                     &lt;proc:nl/&gt; For changes prior to January 2000, please see the Alberta&lt;proc:nl/&gt;Gazette Part II
                     for in force information.&lt;proc:nl/&gt;
                    &lt;proc:nl/&gt; Provision Changed by Effective Gazette Date&lt;proc:nl/&gt;
                    &lt;proc:nl/&gt; 19(1) Alta. Reg. 251/2001 s42 2002 Jan 1 2002 Jan 15&lt;proc:nl/&gt;
                    *****&lt;/verbatim&gt;&lt;/text&gt;&lt;/p&gt;
                &lt;/bodytext&gt;
           &lt;/primlawhist:histitem&gt;                
      &lt;/primlawhist:histgrp&gt;
&lt;/primlawhist:primlawhist&gt;
    
      
      </pre>
      <pre>
                   <b><i>Source example based on AU content</i></b>
      

&lt;leg:tableofamend&gt;
    &lt;leg:heading&gt;
        &lt;title&gt;&lt;refpt id="ACT_REG_1991-10_LEGHIST_AMENDTOME" type="ext"/&gt;
            &lt;emph typestyle="bf"&gt;Amendments to this subordinate law&lt;/emph&gt;&lt;/title&gt;
    &lt;/leg:heading&gt;
    &lt;p&gt;&lt;text&gt;This subordinate law is amended by:&lt;/text&gt;&lt;/p&gt;
    &lt;table frame="all"&gt;
        &lt;tgroup cols="4" colsep="1" rowsep="1"&gt;
            &lt;colspec colwidth="12*" colname="c1" colnum="1"/&gt;
            &lt;colspec colwidth="12*" colname="c2" colnum="2"/&gt;
            &lt;colspec colwidth="12*" colname="c3" colnum="3"/&gt;
            &lt;colspec colwidth="12*" colname="c4" colnum="4"/&gt;
            &lt;thead&gt;
                &lt;row&gt;
                    &lt;entry colname="c1" align="center"&gt;&lt;emph typestyle="bf"&gt;Amending
                        Law&lt;/emph&gt;&lt;/entry&gt;
                    &lt;entry colname="c2" align="center"&gt;&lt;emph typestyle="bf"&gt;Source&lt;/emph&gt;
                    &lt;/entry&gt;
                    &lt;entry colname="c3" align="center"&gt;&lt;emph typestyle="bf"&gt;Commencement
                        Dates&lt;/emph&gt;
                    &lt;/entry&gt;
                    &lt;entry colname="c4" align="center"&gt;&lt;emph typestyle="bf"&gt;Fully
                        Proclaimed?&lt;/emph&gt;
                    &lt;/entry&gt;
                &lt;/row&gt;
            &lt;/thead&gt;
            &lt;tbody&gt;
                &lt;row&gt;
                    &lt;entry colname="c1" align="left"&gt;OCCUPATIONAL HEALTH AND SAFETY
                        (REGULATORY SERVICES)
                        LEGISLATION AMENDMENT ACT 2007&lt;/entry&gt;
                    &lt;entry colname="c2" align="left"&gt;Schedule 2 Part 2.5&lt;/entry&gt;
                    &lt;entry colname="c3" align="center"&gt;23/11/2007&lt;/entry&gt;
                    &lt;entry colname="c4" align="center"&gt;Yes&lt;/entry&gt;
                &lt;/row&gt;
            &lt;/tbody&gt;
        &lt;/tgroup&gt;
    &lt;/table&gt;
&lt;/leg:tableofamend&gt;

</pre>      
      <pre>
      <b><i>Target Example</i></b>


&lt;primlawhist:primlawhist&gt;
    &lt;primlawhist:histgrp grptype="tableofamend"&gt;
        &lt;ref:anchor id="ACT_REG_1991-10_LEGHIST_AMENDTOME" anchortype="global"/&gt;
        &lt;heading&gt;
            &lt;title&gt;
                &lt;emph typestyle="bf"&gt;Amendments to this subordinate law&lt;/emph&gt;
            &lt;/title&gt;
        &lt;/heading&gt;
        &lt;primlawhist:histitem&gt;
            &lt;bodytext&gt;
                &lt;p&gt;&lt;text&gt;This subordinate law is amended by:&lt;/text&gt;&lt;/p&gt;
                &lt;table frame="all"&gt;
                    &lt;tgroup cols="4" colsep="1" rowsep="1"&gt;
                        &lt;colspec colwidth="12*" colname="c1" colnum="1"/&gt;
                        &lt;colspec colwidth="12*" colname="c2" colnum="2"/&gt;
                        &lt;colspec colwidth="12*" colname="c3" colnum="3"/&gt;
                        &lt;colspec colwidth="12*" colname="c4" colnum="4"/&gt;
                        &lt;thead&gt;
                            &lt;row&gt;
                                &lt;entry colname="c1" align="center"&gt;&lt;emph typestyle="bf"&gt;Amending
                                    Law&lt;/emph&gt;&lt;/entry&gt;
                                &lt;entry colname="c2" align="center"&gt;&lt;emph typestyle="bf"&gt;Source&lt;/
                                    emph&gt;
                                &lt;/entry&gt;
                                &lt;entry colname="c3" align="center"&gt;&lt;emph
                                    typestyle="bf"&gt;Commencement
                                    Dates&lt;/emph&gt;&lt;/entry&gt;
                                &lt;entry colname="c4" align="center"&gt;&lt;emph typestyle="bf"&gt;Fully
                                    Proclaimed?&lt;/emph&gt;&lt;/entry&gt;
                            &lt;/row&gt;
                        &lt;/thead&gt;
                        &lt;tbody&gt;
                            &lt;row&gt;
                                &lt;entry colname="c1" align="left"&gt;OCCUPATIONAL HEALTH AND SAFETY
                                    (REGULATORY SERVICES) LEGISLATION AMENDMENT ACT 2007&lt;/entry&gt;
                                &lt;entry colname="c2" align="left"&gt;Schedule 2 Part 2.5&lt;/entry&gt;
                                &lt;entry colname="c3" align="center"&gt;23/11/2007&lt;/entry&gt;
                                &lt;entry colname="c4" align="center"&gt;Yes&lt;/entry&gt;
                            &lt;/row&gt;
                        &lt;/tbody&gt;
                    &lt;/tgroup&gt;
                &lt;/table&gt;
            &lt;/bodytext&gt;
        &lt;/primlawhist:histitem&gt;
    &lt;/primlawhist:histgrp&gt;
&lt;/primlawhist:primlawhist&gt;
    
      
      </pre>
      <p>Handling of Multiple 'tableofamend' within 'leg:history'</p>
      <pre>
                   <b><i>Source example based on AU content</i></b>
      

&lt;leg:history id="ACT_REG_1991-10_LEGHIST"&gt;
    &lt;leg:heading&gt;
        &lt;title&gt;&lt;refpt id="ACT_REG_1991-10_LEGHIST" type="ext"/&gt;
            &lt;emph typestyle="bf"&gt;Legislative History&lt;/emph&gt;&lt;/title&gt;
    &lt;/leg:heading&gt;
    &lt;leg:tableofamend&gt;
        &lt;leg:heading&gt;
            &lt;title&gt;&lt;refpt id="ACT_REG_1991-10_LEGHIST_PRE-YEAR" type="ext"/&gt;
                &lt;emph typestyle="bf"&gt;Pre-2004 subordinate law&lt;/emph&gt;&lt;/title&gt;
        &lt;/leg:heading&gt;
        &lt;p&gt;&lt;text&gt;This subordinate law history only includes events from 2004.
            Details
            of events affecting the subordinate law before 2004 may be found in the
            &lt;remotelink service="DOC-ID" remotekey1="REFPTID"
                refpt="ACT_REG_1991-10_NOTES" dpsi="05CC" docidref="ABCD_9876"&gt;
                Notes&lt;/remotelink&gt; at the end of the subordinate law.&lt;/text&gt;&lt;/p&gt;
    &lt;/leg:tableofamend&gt;
    &lt;leg:tableofamend&gt;
        &lt;leg:heading&gt;
            &lt;title&gt;&lt;refpt id="ACT_REG_1991-10_LEGHIST_REPEALED" type="ext"/&gt;
                &lt;emph typestyle="bf"&gt;Legislative Status&lt;/emph&gt;&lt;/title&gt;
        &lt;/leg:heading&gt;
        &lt;p&gt;&lt;text&gt;This subordinate law was repealed on 26/5/2008 by &lt;remotelink service="DOC-ID" remotekey1="REFPTID" dpsi="05CC" docidref="ABCD_9876"
            refpt="ACT_REG_2007-36_PROV94"&gt;OCCUPATIONAL
            HEALTH AND SAFETY (GENERAL) REGULATION 2007&lt;/remotelink&gt;.&lt;/text&gt;&lt;/p&gt;
    &lt;/leg:tableofamend&gt;
    &lt;leg:tableofamend&gt;
        &lt;leg:heading&gt;
            &lt;title&gt;&lt;refpt id="ACT_REG_1991-10_LEGHIST_MADE" type="ext"/&gt;
                &lt;emph typestyle="bf"&gt;Notification&lt;/emph&gt;&lt;/title&gt;
        &lt;/leg:heading&gt;
        &lt;p&gt;&lt;text&gt;Notification Date 6/5/1991&lt;/text&gt;&lt;/p&gt;
    &lt;/leg:tableofamend&gt;
    &lt;leg:tableofamend&gt;
        &lt;leg:heading&gt;
            &lt;title&gt;&lt;refpt id="ACT_REG_1991-10_LEGHIST_AMENDTOME" type="ext"/&gt;
                &lt;emph typestyle="bf"&gt;Amendments to this subordinate law&lt;/emph&gt;&lt;/title&gt;
        &lt;/leg:heading&gt;
        &lt;p&gt;&lt;text&gt;This subordinate law is amended by:&lt;/text&gt;&lt;/p&gt;
        &lt;table frame="all"&gt;
            &lt;tgroup cols="4" colsep="1" rowsep="1"&gt;
                &lt;colspec colwidth="12*" colname="c1" colnum="1"/&gt;
                &lt;colspec colwidth="12*" colname="c2" colnum="2"/&gt;
                &lt;colspec colwidth="12*" colname="c3" colnum="3"/&gt;
                &lt;colspec colwidth="12*" colname="c4" colnum="4"/&gt;
                &lt;thead&gt;
                    &lt;row&gt;
                        &lt;entry colname="c1" align="center"&gt;&lt;emph typestyle="bf"&gt;Amending
                            Law&lt;/emph&gt;&lt;/entry&gt;
                        &lt;entry colname="c2" align="center"&gt;&lt;emph typestyle="bf"&gt;Source&lt;/
                            emph&gt;&lt;/entry&gt;
                        &lt;entry colname="c3" align="center"&gt;&lt;emph typestyle="bf"&gt;Commencement
                            Dates&lt;/emph&gt;&lt;/entry&gt;
                        &lt;entry colname="c4" align="center"&gt;&lt;emph typestyle="bf"&gt;Fully
                            Proclaimed?&lt;/emph&gt;&lt;/entry&gt;
                    &lt;/row&gt;
                &lt;/thead&gt;
                &lt;tbody&gt;
                    &lt;row&gt;
                        &lt;entry colname="c1" align="left"&gt;&lt;remotelink service="DOC-ID"
                            remotekey1="REFPTID" dpsi="05CC" docidref="ABCD_9876"
                            refpt="ACT_ACT_2007-37"&gt;OCCUPATIONAL HEALTH AND SAFETY (REGULATORY
                            SERVICES) LEGISLATION
                            AMENDMENT ACT 2007&lt;/remotelink&gt;&lt;/entry&gt;
                        &lt;entry colname="c2" align="left"&gt;&lt;remotelink service="DOC-ID"
                            remotekey1="REFPTID" dpsi="05CC" docidref="ABCD_9876"
                            refpt="ACT_ACT_2007-37_SCH2PT2.5"&gt;Schedule 2 Part 2.5&lt;/remotelink&gt;&lt;/
                            entry&gt;
                            &lt;entry colname="c3" align="center"&gt;23/11/2007&lt;/entry&gt;
                            &lt;entry colname="c4" align="center"&gt;Yes&lt;/entry&gt;
                    &lt;/row&gt;
                &lt;/tbody&gt;
            &lt;/tgroup&gt;
        &lt;/table&gt;
    &lt;/leg:tableofamend&gt;
&lt;/leg:history&gt;

</pre>      
      <pre>
      <b><i>Target Example</i></b>


&lt;primlawhist:primlawhist xml:id="ACT_REG_1991-10_LEGHIST"&gt;&lt;heading&gt;
    &lt;title&gt;&lt;emph typestyle="bf"&gt;Legislative History&lt;/emph&gt;&lt;/title&gt;
&lt;/heading&gt;
    &lt;primlawhist:histgrp grptype="tableofamend"&gt;
        &lt;ref:anchor id="ACT_REG_1991-10_LEGHIST_PRE-YEAR" anchortype="global"/&gt;
        &lt;heading&gt;
            &lt;title&gt;&lt;emph typestyle="bf"&gt;Pre-2004 subordinate law&lt;/emph&gt;&lt;/title&gt;
        &lt;/heading&gt;
        &lt;primlawhist:histitem&gt;
            &lt;bodytext&gt;
                &lt;p&gt;&lt;text&gt;This subordinate law history only includes events from 2004.
                    Details of events
                    affecting the subordinate law before 2004 may be found in the
                    &lt;ref:crossreference crossreferencetype="seeAlso"&gt;
                        &lt;ref:content&gt;Notes&lt;/ref:content&gt;
                        &lt;ref:locator anchoridref="ACT_REG_1991-10_NOTES"&gt;
                            &lt;ref:locator-key&gt;
                                &lt;ref:key-name name="DOC-ID"/&gt;
                                &lt;ref:key-value value="05CC-ABCD_9876"/&gt;
                            &lt;/ref:locator-key&gt;
                        &lt;/ref:locator&gt;
                    &lt;/ref:crossreference&gt; at the end of the subordinate law.&lt;/text&gt;&lt;/p&gt;
            &lt;/bodytext&gt;
        &lt;/primlawhist:histitem&gt;
    &lt;/primlawhist:histgrp&gt;
    &lt;primlawhist:histgrp grptype="tableofamend"&gt;
        &lt;ref:anchor id="ACT_REG_1991-10_LEGHIST_REPEALED" anchortype="global"/&gt;
        &lt;heading&gt;
            &lt;title&gt;&lt;emph typestyle="bf"&gt;Legislative Status&lt;/emph&gt;&lt;/title&gt;
        &lt;/heading&gt;
        &lt;primlawhist:histitem&gt;
            &lt;bodytext&gt;
                &lt;p&gt;&lt;text&gt;This subordinate law was repealed on 26/5/2008 by
                    &lt;ref:crossreference crossreferencetype="seeAlso"&gt;
                        &lt;ref:content&gt;OCCUPATIONAL HEALTH AND SAFETY (GENERAL) REGULATION 2007&lt;/
                            ref:content&gt;
                            &lt;ref:locator anchoridref="ACT_REG_2007-36_PROV94"&gt;
                                &lt;ref:locator-key&gt;
                                    &lt;ref:key-name name="DOC-ID"/&gt;
                                    &lt;ref:key-value value="05CC-ABCD_9876"/&gt;
                                &lt;/ref:locator-key&gt;
                            &lt;/ref:locator&gt;
                    &lt;/ref:crossreference&gt;.&lt;/text&gt;&lt;/p&gt;
            &lt;/bodytext&gt;
        &lt;/primlawhist:histitem&gt;
    &lt;/primlawhist:histgrp&gt;
    &lt;primlawhist:histgrp grptype="tableofamend"&gt;
        &lt;ref:anchor id="ACT_REG_1991-10_LEGHIST_MADE" anchortype="global"/&gt;
        &lt;heading&gt;
            &lt;title&gt;&lt;emph typestyle="bf"&gt;Notification&lt;/emph&gt;&lt;/title&gt;
        &lt;/heading&gt;
        &lt;primlawhist:histitem&gt;
            &lt;bodytext&gt;
                &lt;p&gt;&lt;text&gt;Notification Date 6/5/1991&lt;/text&gt;&lt;/p&gt;
            &lt;/bodytext&gt;
        &lt;/primlawhist:histitem&gt;
    &lt;/primlawhist:histgrp&gt;
    &lt;primlawhist:histgrp grptype="tableofamend"&gt;
        &lt;heading&gt;
            &lt;title&gt;
                &lt;emph typestyle="bf"&gt;Amendments to this subordinate law&lt;/emph&gt;
            &lt;/title&gt;
        &lt;/heading&gt;
        &lt;primlawhist:histitem&gt;
            &lt;bodytext&gt;
                &lt;p&gt;&lt;text&gt;This subordinate law is amended by:&lt;/text&gt;&lt;/p&gt;
                &lt;table frame="all"&gt;
                    &lt;tgroup cols="4" colsep="1" rowsep="1"&gt;
                        &lt;colspec colwidth="12*" colname="c1" colnum="1"/&gt;
                        &lt;colspec colwidth="12*" colname="c2" colnum="2"/&gt;
                        &lt;colspec colwidth="12*" colname="c3" colnum="3"/&gt;
                        &lt;colspec colwidth="12*" colname="c4" colnum="4"/&gt;
                        &lt;thead&gt;
                            &lt;row&gt;
                                &lt;entry colname="c1" align="center"&gt;&lt;emph typestyle="bf"&gt;Amending
                                    Law&lt;/emph&gt;&lt;/entry&gt;
                                &lt;entry colname="c2" align="center"&gt;&lt;emph typestyle="bf"&gt;Source&lt;/
                                    emph&gt;
                                &lt;/entry&gt;
                                &lt;entry colname="c3" align="center"&gt;&lt;emph
                                    typestyle="bf"&gt;Commencement
                                    Dates&lt;/emph&gt;&lt;/entry&gt;
                                &lt;entry colname="c4" align="center"&gt;&lt;emph typestyle="bf"&gt;Fully
                                    Proclaimed?&lt;/emph&gt;&lt;/entry&gt;
                            &lt;/row&gt;
                        &lt;/thead&gt;
                        &lt;tbody&gt;
                            &lt;row&gt;
                                &lt;entry colname="c1" align="left"&gt;
                                    &lt;ref:crossreference crossreferencetype="seeAlso"&gt;
                                        &lt;ref:content&gt;OCCUPATIONAL HEALTH AND SAFETY (REGULATORY SERVICES)
                                            LEGISLATION AMENDMENT ACT 2007&lt;/ref:content&gt;
                                        &lt;ref:locator anchoridref="ACT_ACT_2007-37"&gt;
                                            &lt;ref:locator-key&gt;
                                                &lt;ref:key-name name="DOC-ID"/&gt;
                                                &lt;ref:key-value value="05CC-ABCD_9876"/&gt;
                                            &lt;/ref:locator-key&gt;
                                        &lt;/ref:locator&gt;
                                    &lt;/ref:crossreference&gt;&lt;/entry&gt;
                                &lt;entry colname="c2" align="left"&gt;
                                    &lt;ref:crossreference crossreferencetype="seeAlso"&gt;
                                        &lt;ref:content&gt;Schedule 2 Part 2.5&lt;/ref:content&gt;
                                        &lt;ref:locator anchoridref="ACT_ACT_2007-37_SCH2PT2.5"&gt;
                                            &lt;ref:locator-key&gt;
                                                &lt;ref:key-name name="DOC-ID"/&gt;
                                                &lt;ref:key-value value="05CC-ABCD_9876"/&gt;
                                            &lt;/ref:locator-key&gt;
                                        &lt;/ref:locator&gt;
                                    &lt;/ref:crossreference&gt;&lt;/entry&gt;
                                &lt;entry colname="c3" align="center"&gt;23/11/2007&lt;/entry&gt;
                                &lt;entry colname="c4" align="center"&gt;Yes&lt;/entry&gt;
                            &lt;/row&gt;
                        &lt;/tbody&gt;
                    &lt;/tgroup&gt;
                &lt;/table&gt;
            &lt;/bodytext&gt;
        &lt;/primlawhist:histitem&gt;
    &lt;/primlawhist:histgrp&gt;
&lt;/primlawhist:primlawhist&gt;
    
      
      </pre>  
    </section>
    <section>
      <title>Changes</title>
      <p>YYYY-MM-DD: ______________________________________________________________________.</p>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-Standard\Regulation\leg.tableofamend.dita  -->
	<xsl:message>Regulation_leg.tableofamend.xsl requires manual development!</xsl:message> 

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