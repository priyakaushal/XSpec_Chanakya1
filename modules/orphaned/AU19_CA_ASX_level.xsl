<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:admindoc="urn:x-lexisnexis:content:administrative-document:sharedservices:1" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="level">
 <title>level <lnpid>id-AU19CA-21614</lnpid></title>
 <body>
  <section>
   <ul id="ul_iqy_xqy_li">
    <li>
     <sourcexml>level</sourcexml>
     <b>Becomes</b>
     <targetxml>admindoc:level</targetxml> comes with below attribute: <ul id="ul_uwq_qjs_li">
      <li>
       <sourcexml>@subdoc</sourcexml>
       <b>Becomes</b>
       <targetxml>@includeintoc</targetxml>
      </li>
      <li>
       <sourcexml>@toc-caption</sourcexml>
       <b>Becomes</b>
       <targetxml>@alternatetoccaption</targetxml>
      </li>
      <li>
       <sourcexml>@leveltype</sourcexml>
       <b>Becomes</b>
       <targetxml>@leveltype</targetxml> the values are tokenized: As per LBU recommends. For the
       list of values for <b>@leveltype</b> attribute, refer the <sourcexml>leg:level</sourcexml>
       <xref href="AU19_CA_ASX_leg.level.dita"/> section in the CI.</li>
     </ul>
    </li>
   </ul>
   <ul>
    <li>
     <targetxml>admindoc:level</targetxml> populated as: <pre>
        &lt;level id="ASXSC_CURRENCY.SGM_ASXSC.CUR.C1.1" leveltype="para0" subdoc="true" toc-caption="Service 14"&gt;
     </pre>
     <b>Becomes</b>
     <pre>
         &lt;admindoc:level xml:id="ASXSC_CURRENCY.SGM_ASXSC.CUR.C1.1" leveltype="paragraph" alternatetoccaption="Service 14" includeintoc="true"&gt;
</pre>
     <ul>
      <li><sourcexml>/level/heading</sourcexml> becomes
        <targetxml>/admindoc:level/heading</targetxml></li>
      <li><sourcexml>/level/heading/title</sourcexml> becomes
        <targetxml>/admindoc:level/heading/title</targetxml> and populated as below: <pre>
       &lt;level id="ASXSOR_APPNEW.SGM_ASXSOR.APPNEW.2-67-1" leveltype="para0" subdoc="true" toc-caption="Procedure 2.67.1 South Australia Peak Period Electricity Futures Contract"&gt;
           &lt;heading searchtype="COMMENTARY"&gt;
             &lt;edpnum&gt;&lt;refpt id="ASXSOR.APPNEW.2-67-1" type="ext"/&gt;Procedure 2.67.1 &lt;/edpnum&gt;
           &lt;title&gt;South Australia Peak Period Electricity Futures Contract&lt;/title&gt;&lt;/heading&gt;
            ...
        &lt;/level&gt;
</pre>
       <b>Becomes</b>
       <pre>
       &lt;admindoc:level xml:id="ASXSOR_APPNEW.SGM_ASXSOR.APPNEW.2-67-1" leveltype="paragraph" alternatetoccaption="Procedure 2.67.1 South Australia Peak Period Electricity Futures Contract" includeintoc="true"&gt;
            &lt;ref:anchor id="ASXSOR.APPNEW.2-67-1" anchortype="global"/&gt;
              &lt;heading&gt;
                &lt;title&gt;South Australia Peak Period Electricity Futures Contract&lt;/title&gt;
              &lt;/heading&gt;
         ...
         &lt;/admindoc:level&gt;
</pre>
       <note>If <sourcexml>refpt</sourcexml> occurs under
         <sourcexml>level/heading/title/refpt</sourcexml> then <targetxml>ref:anchor</targetxml>
        will become direct child of <targetxml>admindoc:level</targetxml>.</note>
       <note>For more information <targetxml>ref:anchor</targetxml>, please see the instructions for
         <xref href="../../common_newest/Rosetta_refpt-LxAdv-ref.anchor.dita">refpt</xref>.</note>
       <note>Note: <sourcexml>@searchtype</sourcexml> attribute should be suppressed from conversion
        in NewLexis.</note>
      </li>
      <li><sourcexml>/level/bodytext</sourcexml> becomes
        <targetxml>/admindoc:level/admindoc:bodytext</targetxml> and populated as: <note>Refer to
        Genral Markup for specifics on how to handle <xref href="../../common_newest/Rosetta_p-LxAdv-p.dita">p</xref>, <xref href="../../common_newest/Rosetta_text-LxAdv-text.dita">text</xref> and <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">remotelink</xref> for handling of <sourcexml>p</sourcexml>, <sourcexml>text</sourcexml>
        and <sourcexml>remotelink</sourcexml> elements.</note>
       <pre>
     &lt;level id="ASXSOR_APPNEW.SGM_ASXSOR.APPNEW.2-67-1" leveltype="para0" subdoc="true" toc-caption="Procedure 2.67.1 South Australia Peak Period Electricity Futures Contract"&gt;
           &lt;heading searchtype="COMMENTARY"&gt;
             &lt;edpnum&gt;&lt;refpt id="ASXSOR.APPNEW.2-67-1" type="ext"/&gt;Procedure 2.67.1 &lt;/edpnum&gt;
           &lt;title&gt;South Australia Peak Period Electricity Futures Contract&lt;/title&gt;&lt;/heading&gt;
          &lt;bodytext searchtype="COMMENTARY"&gt;
            &lt;p&gt;
              &lt;table/&gt;
           &lt;/p&gt;
        &lt;/bodytext&gt;
        &lt;/level&gt;
        </pre>
       <b>Becomes</b>
       <pre>
        &lt;admindoc:level xml:id="ASXSOR_APPNEW.SGM_ASXSOR.APPNEW.2-67-1" leveltype="paragraph" alternatetoccaption="Procedure 2.67.1 South Australia Peak Period Electricity Futures Contract" includeintoc="true"&gt;
            &lt;ref:anchor id="ASXSOR.APPNEW.2-67-1" anchortype="global"/&gt;
              &lt;heading&gt;
                &lt;title&gt;South Australia Peak Period Electricity Futures Contract&lt;/title&gt;
              &lt;/heading&gt;
            &lt;admindoc:bodytext&gt;
             &lt;p&gt;
               &lt;table/&gt;
             &lt;/p&gt;
            &lt;/admindoc:bodytext&gt;
         &lt;/admindoc:level&gt;
</pre>
      </li>
      <li><sourcexml>/level/level</sourcexml> becomes
        <targetxml>/admindoc:level/admindoc:level</targetxml> and populated as: <pre>
       
        &lt;level id="ASXSOR_PRNEW.SGM_ASXSOR.PRNEW.COM1" leveltype="comm.chap"&gt;
        &lt;level id="ASXSOR_PRNEW.SGM_ASXSOR.PRNEW.S1" leveltype="group" subdoc="false" toc-caption="SECTION 1 ACCESS TO THE MARKET"&gt;
        &lt;level id="ASXSOR_PRNEW.SGM_GROUP_2" leveltype="group" subdoc="false" toc-caption="Trading"&gt;
            &lt;heading searchtype="COMMENTARY"&gt;
                &lt;glp:note&gt;
                    &lt;table frame="none" pgwide="1"/&gt;
                &lt;/glp:note&gt;
                &lt;title&gt;Trading&lt;/title&gt;
            &lt;/heading&gt;
            &lt;level id="ASXSOR_PRNEW.SGM_GROUP_3" leveltype="group" subdoc="false" toc-caption="Trading Platform"&gt;
                &lt;heading searchtype="COMMENTARY"/&gt;
          ...
                &lt;bodytext searchtype="COMMENTARY"&gt;
                    &lt;blockquote/&gt;
                &lt;/bodytext&gt;
      
   </pre>
       <b>Becomes</b>
       <pre>
      
      &lt;admindoc:level xml:id="ASXSOR_PRNEW.SGM_ASXSOR.PRNEW.COM1" leveltype="chapter"&gt;
            &lt;admindoc:level xml:id="ASXSOR_PRNEW.SGM_ASXSOR.PRNEW.S1" leveltype="subchapter" alternatetoccaption="SECTION 1 ACCESS TO THE MARKET" includeintoc="false"&gt;
                &lt;admindoc:level xml:id="ASXSOR_PRNEW.SGM_GROUP_2" leveltype="subchapter" alternatetoccaption="Trading" includeintoc="false"&gt;
                    &lt;heading&gt;
                        &lt;note&gt;
                            &lt;bodytext&gt;
                                 &lt;table/&gt;
                            &lt;/bodytext&gt;
                        &lt;/note&gt;
                        &lt;title&gt;Trading&lt;/title&gt;
                    &lt;/heading&gt;
                    &lt;admindoc:level xml:id="ASXSOR_PRNEW.SGM_GROUP_3" leveltype="subchapter" includeintoc="false" alternatetoccaption="Trading Platform"&gt;
                       ...
                    &lt;/admindoc:level&gt;
                    &lt;admindoc:bodytext&gt;
                        &lt;blockquote/&gt;
                    &lt;/admindoc:bodytext&gt;
                &lt;/admindoc:level&gt;
                ...
            &lt;/admindoc:level&gt;

</pre>
      </li>
      <li><sourcexml>/level/bodytext/pgrp</sourcexml> becomes
        <targetxml>/admindoc:level/admindoc:bodytext/pgrp</targetxml> and populated as: <note>For
        more information please see the instructions for <xref href="../../common_newest/Rosetta_pgrp-LxAdv-pgrp.dita">pgrp</xref>.</note>
       <pre>
                 &lt;level id="ASXLRN_ABT.SGM_ASXLRN.ABT.C1" leveltype="comm.chap"&gt;
                       &lt;heading searchtype="COMMENTARY"&gt;
                          &lt;title&gt;&lt;refpt id="ASXLRN.ABT.C1" type="ext"/&gt;About this Publication&lt;/title&gt;
                       &lt;/heading&gt;
                  &lt;bodytext searchtype="COMMENTARY"&gt;
                   &lt;pgrp&gt;
                     &lt;heading&gt;&lt;title&gt;Copyright&lt;/title&gt;&lt;/heading&gt;
                     &lt;p&gt;
                     &lt;text&gt;Copyright © ASX Operations Pty Limited and its related bodies corporate reserve all rights in the
                     material incorporated in this publication.  No part of this document may be reproduced, stored in a retrieval
                     system or transmitted in any form or by any means, electronic mechanical, photocopy, recording or otherwise,
                     without the written permission of ASX Operations Pty Limited.&lt;/text&gt;
                     &lt;/p&gt;
                     &lt;p&gt;
                     &lt;text&gt;The Rule Publications of the ASX Group including the ASX Listing Rules, ASX Market Rules, ACH Clearing Rules, 
                     ASTC Settlement Rules, Operating Rules of Sydney Futures Exchange, Clearing Rules of SFE Clearing, Austraclear Regulations 
                     and ASX Disciplinary Processes and Appeals Rulebook (and any Procedures and ancillary documents) are copyright of the ASX 
                     Group and are published under licence from ASX Operations Pty Limited ACN 004 523 782. &lt;/text&gt;
                     &lt;/p&gt;
                    &lt;/pgrp&gt;
                &lt;/bodytext&gt;
                
       </pre>
       <b>becomes</b>
       <pre>
                 
                  &lt;admindoc:level id="ASXLRN_ABT.SGM_ASXLRN.ABT.C1" leveltype="chapter"&gt;
                       &lt;heading&gt;
                          &lt;title&gt;About this Publication&lt;/title&gt;
                       &lt;/heading&gt;
                  &lt;bodytext&gt;
                   &lt;pgrp&gt;
                     &lt;heading&gt;&lt;title&gt;Copyright&lt;/title&gt;&lt;/heading&gt;
                     &lt;p&gt;
                     &lt;text&gt;Copyright © ASX Operations Pty Limited and its related bodies corporate reserve all rights in the
                     material incorporated in this publication.  No part of this document may be reproduced, stored in a retrieval
                     system or transmitted in any form or by any means, electronic mechanical, photocopy, recording or otherwise,
                     without the written permission of ASX Operations Pty Limited.&lt;/text&gt;
                     &lt;/p&gt;
                     &lt;p&gt;
                     &lt;text&gt;The Rule Publications of the ASX Group including the ASX Listing Rules, ASX Market Rules, ACH Clearing Rules, 
                     ASTC Settlement Rules, Operating Rules of Sydney Futures Exchange, Clearing Rules of SFE Clearing, Austraclear Regulations 
                     and ASX Disciplinary Processes and Appeals Rulebook (and any Procedures and ancillary documents) are copyright of the ASX 
                     Group and are published under licence from ASX Operations Pty Limited ACN 004 523 782. &lt;/text&gt;
                     &lt;/p&gt;
                    &lt;/pgrp&gt;
                &lt;/bodytext&gt;
                </pre>
      </li>
     </ul></li>
   </ul>
  </section>
 </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU19CA_ASX\AU19_CA_ASX_level.dita  -->
	<xsl:message>AU19_CA_ASX_level.xsl requires manual development!</xsl:message> 

	<xsl:template match="level">

		<!--  Original Target XPath:  admindoc:level   -->
		<admindoc:level>
			<xsl:apply-templates select="@* | node()"/>
		</admindoc:level>

	</xsl:template>

	<xsl:template match="@subdoc">

		<!--  Original Target XPath:  @includeintoc   -->
		<xsl:attribute name="includeintoc">
			<xsl:apply-templates select="node()"/>
		</xsl:attribute>

	</xsl:template>

	<xsl:template match="@toc-caption">

		<!--  Original Target XPath:  @alternatetoccaption   -->
		<xsl:attribute name="alternatetoccaption">
			<xsl:apply-templates select="node()"/>
		</xsl:attribute>

	</xsl:template>

	<xsl:template match="@leveltype">

		<!--  Original Target XPath:  @leveltype   -->
		<xsl:attribute name="leveltype">
			<xsl:apply-templates select="node()"/>
		</xsl:attribute>

	</xsl:template>

	<xsl:template match="leg:level">

		<!--  Original Target XPath:  admindoc:level   -->
		<admindoc:level>
			<xsl:apply-templates select="@* | node()"/>
		</admindoc:level>

	</xsl:template>

	<xsl:template match="/level/heading">

		<!--  Original Target XPath:  /admindoc:level/heading   -->
		<admindoc:level>
			<heading>
				<xsl:apply-templates select="@* | node()"/>
			</heading>
		</admindoc:level>

	</xsl:template>

	<xsl:template match="/level/heading/title">

		<!--  Original Target XPath:  /admindoc:level/heading/title   -->
		<admindoc:level>
			<heading>
				<title>
					<xsl:apply-templates select="@* | node()"/>
				</title>
			</heading>
		</admindoc:level>

	</xsl:template>

	<xsl:template match="refpt">

		<!--  Original Target XPath:  ref:anchor   -->
		<ref:anchor>
			<xsl:apply-templates select="@* | node()"/>
		</ref:anchor>

	</xsl:template>

	<xsl:template match="level/heading/title/refpt">

		<!--  Original Target XPath:  ref:anchor   -->
		<ref:anchor>
			<xsl:apply-templates select="@* | node()"/>
		</ref:anchor>

	</xsl:template>

	<xsl:template match="@searchtype">

		<!--  Original Target XPath:  /admindoc:level/admindoc:bodytext   -->
		<admindoc:level>
			<admindoc:bodytext>
				<xsl:apply-templates select="@* | node()"/>
			</admindoc:bodytext>
		</admindoc:level>

	</xsl:template>

	<xsl:template match="/level/bodytext">

		<!--  Original Target XPath:  /admindoc:level/admindoc:bodytext   -->
		<admindoc:level>
			<admindoc:bodytext>
				<xsl:apply-templates select="@* | node()"/>
			</admindoc:bodytext>
		</admindoc:level>

	</xsl:template>

	<xsl:template match="p">

		<!--  Original Target XPath:  /admindoc:level/admindoc:level   -->
		<admindoc:level>
			<admindoc:level>
				<xsl:apply-templates select="@* | node()"/>
			</admindoc:level>
		</admindoc:level>

	</xsl:template>

	<xsl:template match="text">

		<!--  Original Target XPath:  /admindoc:level/admindoc:level   -->
		<admindoc:level>
			<admindoc:level>
				<xsl:apply-templates select="@* | node()"/>
			</admindoc:level>
		</admindoc:level>

	</xsl:template>

	<xsl:template match="remotelink">

		<!--  Original Target XPath:  /admindoc:level/admindoc:level   -->
		<admindoc:level>
			<admindoc:level>
				<xsl:apply-templates select="@* | node()"/>
			</admindoc:level>
		</admindoc:level>

	</xsl:template>

	<xsl:template match="/level/level">

		<!--  Original Target XPath:  /admindoc:level/admindoc:level   -->
		<admindoc:level>
			<admindoc:level>
				<xsl:apply-templates select="@* | node()"/>
			</admindoc:level>
		</admindoc:level>

	</xsl:template>

	<xsl:template match="/level/bodytext/pgrp">

		<!--  Original Target XPath:  /admindoc:level/admindoc:bodytext/pgrp   -->
		<admindoc:level>
			<admindoc:bodytext>
				<pgrp>
					<xsl:apply-templates select="@* | node()"/>
				</pgrp>
			</admindoc:bodytext>
		</admindoc:level>

	</xsl:template>

</xsl:stylesheet>