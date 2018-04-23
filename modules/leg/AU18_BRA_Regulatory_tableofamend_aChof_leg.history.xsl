<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
    xmlns:leg="http://www.lexis-nexis.com/glp/leg"
    xmlns:admindoc="urn:x-lexisnexis:content:administrative-document:sharedservices:1" version="2.0"
    exclude-result-prefixes="dita leg">

    <dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.history">
        <title>
            <sourcexml>leg:history/leg:tableofamend</sourcexml>
            <lnpid>id-AU18-21420</lnpid>
        </title>
        <body>
            <section>
                <ul>
                    <li> The conversion of <sourcexml>leg:history/leg:tableofamend</sourcexml> is
                        based on the following scenarios: <ul>
                            <li>
                                <sourcexml>leg:tableofamend/heading</sourcexml>
                                <b>Becomes</b>
                                <targetxml>admindoc:histgrp[@grptype="tableofamend"]/heading</targetxml>,
                                this is for capturing the heading information.</li>
                            <li>
                                <sourcexml>leg:tableofamend/table</sourcexml>
                                <b>Becomes</b>
                                <targetxml>admindoc:histgrp[@grptype="tableofamend"]/admindoc:histitem/bodytext/table</targetxml>
                                <note>Add the attribute value
                                        <sourcexml>@grptype="tableofamend"</sourcexml> to
                                        <targetxml>admindoc:histgrp</targetxml>.</note>
                            </li>
                        </ul>
                        <p>Below examples show the handling of
                                <sourcexml>leg:tableofamend</sourcexml>:</p>
                        <b><i>Example: Source XML 1</i></b>
                        <pre>
  
           &lt;leg:history&gt;
                &lt;leg:tableofamend&gt;  
                  &lt;leg:heading&gt;&lt;title&gt;Test&lt;/title&gt;&lt;/leg:heading&gt;
                  &lt;table&gt;
                   &lt;tgroup cols="2" colsep="0" rowsep="0"&gt;
                    &lt;colspec align="left" colname="c1" colnum="1" colwidth="20*"/&gt;
                    &lt;colspec align="left" colname="c2" colnum="2" colwidth="80*"/&gt;
                  &lt;tbody&gt;
                    &lt;row&gt;&lt;entry nameend="c2" namest="c1"&gt;
                    &lt;emph typestyle="bf"&gt;Test1&lt;/emph&gt;&lt;/entry&gt;
                    &lt;/row&gt;
                  &lt;/tbody&gt;
                 &lt;/tgroup&gt;
                &lt;/table&gt;
              &lt;/leg:tableofamend&gt;
            &lt;/leg:history&gt;
            
            
          </pre>
                        <b><i>Example: Target XML 1</i></b>
                        <pre>


   &lt;admindoc:histgrp grptype="tableofamend"&gt;
                      &lt;leg:heading&gt;
                         &lt;title&gt;Test&lt;/title&gt;
                      &lt;/leg:heading&gt;	
                     &lt;admindoc:histitem&gt;
                     &lt;bodytext&gt;
                        &lt;table&gt;
                           &lt;tgroup cols="2" colsep="0" rowsep="0"&gt;
                           &lt;colspec align="left" colname="c1" colnum="1" colwidth="20*"/&gt;
                           &lt;colspec align="left" colname="c2" colnum="2" colwidth="80*"/&gt;
                         &lt;tbody&gt;
                            &lt;row&gt;&lt;entry nameend="c2" namest="c1"&gt;
                            &lt;emph typestyle="bf"&gt;Test1&lt;/emph&gt;&lt;/entry&gt;
                            &lt;/row&gt;
                         &lt;/tbody&gt;
                        &lt;/tgroup&gt;
                       &lt;/table&gt;
                     &lt;/bodytext&gt;
                    &lt;/admindoc:histitem&gt;
                   &lt;/admindoc:histgrp&gt;

                

			</pre>
                    </li>

                    <li>
                        <ul>
                            <li> For the source xpath
                                    <sourcexml>/leg:levelbody/leg:bodytext/leg:history/leg:tableofamend/
                                </sourcexml> the ouput <b>becomes</b>
                                <targetxml>admindoc:histgrp[@grptype="tableofamend"]/heading</targetxml>,
                                this is for capturing the heading information.</li>
                            <li>
                                <note> Use the value
                                        <targetxml>@leveltype="unclassified"</targetxml> for
                                        <sourcexml>@leveltype="vol"</sourcexml> and
                                        <sourcexml>@leveltype="volfront"</sourcexml> CR has been
                                    created to address the correlating values. Waiting on LBU for
                                    defintions. </note>
                            </li>
                        </ul>
                        <b>
                            <i>Example: Source XML 2</i>
                        </b>
                        <pre>
       
           	&lt;leg:level id="BRAA.BC2005.BCA96.V1"&gt;
               &lt;leg:level-vrnt leveltype="vol" searchtype="LEGISLATION VOL" subdoc="false" toc-caption="BUILDING CODE OF AUSTRALIA - Volume 1"&gt;
                    &lt;leg:heading&gt;&lt;title&gt;&lt;refpt id="BRAA.BC2005.BCA96.V1" type="ext"/&gt;BUILDING CODE OF AUSTRALIA - Volume 1&lt;/title&gt;&lt;/leg:heading&gt;
                        &lt;leg:levelbody&gt;
                        &lt;leg:level id="BRAA_BC-2005.SGM_BC.VOLFRONT_24"&gt;
                        &lt;leg:level-vrnt leveltype="volfront" 
                        searchtype="LEGISLATION VOLFRONT" subdoc="false" toc-caption="Volume One Class 2 to  Class 9 Buildings"&gt;
                        &lt;leg:heading&gt;&lt;desig&gt;&lt;designum&gt;Volume One&lt;/designum&gt;&lt;/desig&gt;&lt;title&gt;Class 2 to  Class 9 Buildings&lt;/title&gt;&lt;/leg:heading&gt;
                       &lt;leg:levelbody&gt;
                        &lt;leg:bodytext&gt;
                        &lt;leg:history&gt;
                        &lt;leg:tableofamend&gt;
                            &lt;leg:heading&gt;&lt;title&gt;TABLE OF AMENDMENTS&lt;/title&gt;&lt;/leg:heading&gt;
                        &lt;p&gt;
                            &lt;text&gt;The Building Code of Australia 1996 (BCA96) was adopted by states and territories as follows:&lt;/text&gt;
                            &lt;l&gt;
                                &lt;li&gt;
                                    &lt;lilabel&gt; &lt;/lilabel&gt;
                                    &lt;p&gt;&lt;text&gt;&lt;emph typestyle="bf"&gt;Australian Government:&lt;/emph&gt;  1 July 1997&lt;/text&gt;&lt;/p&gt;&lt;/li&gt;
                                &lt;li&gt;
                                    &lt;lilabel&gt; &lt;/lilabel&gt;
                                    &lt;p&gt;&lt;text&gt;&lt;emph typestyle="bf"&gt;Australian Capital Territory:&lt;/emph&gt;  1 July 1997&lt;/text&gt;&lt;/p&gt;&lt;/li&gt;
                                &lt;li&gt;
                                    &lt;lilabel&gt; &lt;/lilabel&gt;
                                    &lt;p&gt;&lt;text&gt;&lt;emph typestyle="bf"&gt;New South Wales:&lt;/emph&gt;  1 July 1997&lt;/text&gt;&lt;/p&gt;&lt;/li&gt;
                                &lt;li&gt;
                                    &lt;lilabel&gt; &lt;/lilabel&gt;
                                    &lt;p&gt;&lt;text&gt;&lt;emph typestyle="bf"&gt;Northern Territory:&lt;/emph&gt;  1 January 1998&lt;/text&gt;&lt;/p&gt;&lt;/li&gt;
                            &lt;/l&gt;
                            &lt;text&gt;and amended by:&lt;/text&gt;&lt;/p&gt;
                            &lt;table/&gt;
                            &lt;/leg:tableofamend&gt;
                            &lt;/leg:history&gt;
                        &lt;/leg:bodytext&gt;
                    &lt;/leg:levelbody&gt;
                    &lt;/leg:level-vrnt&gt;
                &lt;/leg:level&gt;
            &lt;/leg:levelbody&gt;
            &lt;/leg:level-vrnt&gt;
            &lt;/leg:level&gt;
            
			    </pre>
                        <p>Below examples show the handling of
                                <sourcexml>leg:tableofamend</sourcexml>:</p>
                        <b>
                            <i>Example: Target XML 2</i>
                        </b>
                        <pre>
			      
		       &lt;admindoc:level leveltype="unclassified" alternatetoccaption="BUILDING CODE OF AUSTRALIA - Volume 1" includeintoc="false"&gt;
                &lt;heading&gt;&lt;title&gt;BUILDING CODE OF AUSTRALIA - Volume 1&lt;/title&gt;&lt;/heading&gt;
                &lt;admindoc:level leveltype="unclassified" alternatetoccaption="Volume One Class 2 to  Class 9 Buildings" includeintoc="false"&gt;
                    &lt;heading&gt;
                        &lt;desig&gt;Volume One&lt;/desig&gt;
                        &lt;title&gt;Class 2 to Class 9 Buildings&lt;/title&gt;
                    &lt;/heading&gt;
                    &lt;admindoc:bodytext&gt;
                        &lt;admindoc:level leveltype="unclassified"&gt;
                            &lt;admindoc:histgrp&gt;
                                 &lt;heading&gt;&lt;title&gt;TABLE OF AMENDMENTS&lt;/title&gt;&lt;/heading&gt;
                                &lt;admindoc:histitem&gt;
                                    &lt;bodytext&gt;
                                        &lt;p&gt;
                                            &lt;text&gt;The Building Code of Australia 1996 (BCA96) was adopted by states and territories as follows:&lt;/text&gt;
                                            &lt;list&gt;
                                                &lt;listitem&gt;
                                                    &lt;label&gt; &lt;/label&gt;
                                                    &lt;bodytext&gt;
                                                        &lt;p&gt;
                                                            &lt;text&gt;&lt;emph typestyle="bf"&gt;Australian Government:&lt;/emph&gt;  1 July 1997&lt;/text&gt;&lt;/p&gt;
                                                    &lt;/bodytext&gt;    
                                                &lt;/listitem&gt;
                                                &lt;listitem&gt;
                                                    &lt;label&gt; &lt;/label&gt;
                                                    &lt;bodytext&gt;
                                                        &lt;p&gt;&lt;text&gt;&lt;emph typestyle="bf"&gt;Australian Capital Territory:&lt;/emph&gt;  1 July 1997&lt;/text&gt;&lt;/p&gt;
                                                    &lt;/bodytext&gt;
                                                &lt;/listitem&gt;
                                            &lt;/list&gt;
                                            &lt;text&gt;and amended by:&lt;/text&gt;
                                        &lt;/p&gt;
                                        &lt;table/&gt;
                                    &lt;/bodytext&gt;
                                &lt;/admindoc:histitem&gt;
                            &lt;/admindoc:histgrp&gt;
                        &lt;/admindoc:level&gt;
                    &lt;/admindoc:bodytext&gt;
                &lt;/admindoc:level&gt;
        &lt;/admindoc:level&gt;
    
   </pre>
                    </li>
                </ul>
            </section>
            <section>
                <title>Changes</title>
            </section>
        </body>
    </dita:topic>

    <!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
    <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU18_BRA_Regulatory\AU_BRA_tableofamend_aChof_leg.history.dita  -->
    <!--<xsl:message>AU18_BRA_Regulatory_tableofamend_aChof_leg.history.xsl requires manual development!</xsl:message>-->

    <!--<xsl:template match="leg:history/leg:tableofamend">

        <!-\-  Original Target XPath:  admindoc:histgrp[@grptype="tableofamend"]/heading   -\->
        <admindoc:histgrp>
            <heading>
                <xsl:apply-templates select="@* | node()"/>
            </heading>
        </admindoc:histgrp>

    </xsl:template>

    <xsl:template match="leg:tableofamend/heading">

        <!-\-  Original Target XPath:  admindoc:histgrp[@grptype="tableofamend"]/heading   -\->
        <admindoc:histgrp>
            <heading>
                <xsl:apply-templates select="@* | node()"/>
            </heading>
        </admindoc:histgrp>

    </xsl:template>

    <xsl:template match="leg:tableofamend/table">

        <!-\-  Original Target XPath:  admindoc:histgrp[@grptype="tableofamend"]/admindoc:histitem/bodytext/table   -\->
        <admindoc:histgrp>
            <admindoc:histitem>
                <bodytext>
                    <table>
                        <xsl:apply-templates select="@* | node()"/>
                    </table>
                </bodytext>
            </admindoc:histitem>
        </admindoc:histgrp>

    </xsl:template>

    <xsl:template match="leg:tableofamend[@grptype='tableofamend']">

        <!-\-  Original Target XPath:  admindoc:histgrp   -\->
        <admindoc:histgrp>
            <xsl:apply-templates select="@* | node()"/>
        </admindoc:histgrp>

    </xsl:template>

    <xsl:template match="leg:tableofamend">

        <!-\-  Original Target XPath:  admindoc:histgrp[@grptype="tableofamend"]/heading   -\->
        <admindoc:histgrp>
            <heading>
                <xsl:apply-templates select="@* | node()"/>
            </heading>
        </admindoc:histgrp>

    </xsl:template>

    <xsl:template match="/leg:levelbody/leg:bodytext/leg:history/leg:tableofamend">

        <!-\-  Original Target XPath:  admindoc:histgrp[@grptype="tableofamend"]/heading   -\->
        <admindoc:histgrp>
            <heading>
                <xsl:apply-templates select="@* | node()"/>
            </heading>
        </admindoc:histgrp>

    </xsl:template>-->

</xsl:stylesheet>
