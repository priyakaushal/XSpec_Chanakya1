<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
    xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" xmlns:leg="http://www.lexis-nexis.com/glp/leg" 
    xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" 
    xmlns:proc="http://www.lexisnexis.com/xmlschemas/content/shared/process-elements/1/" 
    xmlns:glp="http://www.lexis-nexis.com/glp"
    xmlns:pubinfo="http://www.lexisnexis.com/xmlschemas/content/shared/publication-info/1/"
    xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita docinfo leg glp">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="AU19_Rosetta_inlineobject_ChildOf_glp-note-to-publicationlogo">
    <title><targetxml>publicationlogo</targetxml> <lnpid>id-AU19LA-22018</lnpid></title>
    <body>
        <section>
            <p> At the occurence of
             <sourcexml>leg:heading/glp:note/table/tgroup/tbody/row/entry/remotelink/inlineobject[@filename="*"]</sourcexml>
            </p>
            <p>where <sourcexml>inlineobject[@filename="*"]</sourcexml> contains the value(s)
                <ul>
                    <li>@filename="asx-logo.gif"</li>
                    <li>@filename="asx_logo.gif</li>
                </ul>
                
               <b>becomes</b>
            </p>
            <p><targetxml>doc:metadata/pubinfo:pubinfo/pubinfo:publicationlogo/logo/ref:inlinobject[@role="logo"]</targetxml>. </p>
                            
           
          <note>   
              <ul>
                  <li>The <sourcexml>leg:heading</sourcexml> is converted as documented in the
                        General Markup instruction for <xref href="../../common_newest/Rosetta_heading-LxAdv-heading.dita">
                            leg:heading</xref></li>
                  <li>here in this x-path <sourcexml>remotelink</sourcexml> markup will be suppressed from target</li>
                  <li><sourcexml>ref:inlineobject</sourcexml> becomes
                      <targetxml>ref:inlineobject</targetxml>
                      <ul>
                          <li>Create <targetxml>ref:locator</targetxml> and describe as: <ul>
                              <li>Create <targetxml>ref:locator-key</targetxml>and describe
                                  as: <ul>
                                      <li>Create <targetxml>ref:key-name</targetxml>with
                                          <targetxml>@name="object-key"</targetxml> this
                                          line is hard coded.</li>
                                      <li>Create <targetxml>ref:key-value</targetxml> with
                                                  <targetxml>@value="X-Y"</targetxml> Where X is
                                                DPSI value and Y is
                                                  <sourcexml>inlineobject/@filename</sourcexml>
                                                <note>Here, from source
                                                  <sourcexml>inlineobject/@filename</sourcexml> only
                                                  the filename will be retain in target not file
                                                  extansion (.gif) Please see the
                                                  example.</note><note><targetxml>DPSI</targetxml>
                                                  value can be obtained from one of the follow
                                                  source <ul>
                                                  <li><sourcexml>docinfo:dpsi/@id-string</sourcexml></li>
                                                  <li><sourcexml>docinfo/docinfo:lbu-meta/docinfo:metaitem[@name="DPSI"]/@value</sourcexml></li>
                                                  <li>The LBU manifest file</li>
                                                  </ul></note></li>
                                  </ul></li>
                              <li>Create <targetxml>ref:locator-params</targetxml> and
                                  describe as <ul>
                                      <li>Create <targetxml>proc:param[@name]</targetxml> and
                                          <targetxml>proc:param[@value]</targetxml>pairs as
                                          follows: <ul>
                                              <li><targetxml>proc:param[@name="componentseq"]</targetxml>
                                                  with the attribute
                                                  <targetxml>@value="1"</targetxml>.This line is
                                                  hard coded.</li>
                                              <li><targetxml>proc:param[@name="object-type"]</targetxml>
                                                  with the attribute
                                                  <targetxml>@value="image"</targetxml> if the
                                                  extension of
                                                  <sourcexml>inlineobject[@filename]</sourcexml> is
                                                  either of these values (.jpg, .gif, .png, .tiff
                                                  and .bmp).</li>
                                              <li><targetxml>proc:param[@name="object-smi"]</targetxml>
                                                  with the attribute
                                                  <targetxml>@value="LOGOS"</targetxml> this line is
                                                  hard coded</li>
                                          </ul></li>
                                  </ul></li>
                              <li>The other attributes of <sourcexml>inlineobject</sourcexml>
                                  are handled as follows: <ul>
                                      <li><sourcexml>inlineobject/@height</sourcexml> becomes
                                          <targetxml>ref:inlineobject/@height</targetxml>.</li>
                                      <li><sourcexml>inlineobject/@width</sourcexml> becomes
                                          <targetxml>ref:inlineobject/@width</targetxml>.</li>
                                      <li><sourcexml>inlineobject/@attachment</sourcexml>
                                          should be suppressed</li>
                                  </ul>
                              </li>
                          </ul>
                          </li>
                      </ul>
                  </li>
                  
              </ul>
          </note>
            
            
        </section>
  
        <example>
            <title>Source XML</title>
            <codeblock>  
   
         &lt;leg:heading&gt;
          &lt;glp:note&gt;
            &lt;table frame="none" pgwide="1"&gt;
                    &lt;tgroup cols="3" colsep="0" rowsep="0"&gt;
                            &lt;colspec colname="col1" colsep="0" colwidth="45*" rowsep="0"/&gt;
                             &lt;colspec colname="col2" colsep="0" colwidth="10*" rowsep="0"/&gt;
                                &lt;colspec colname="col3" colsep="0" colwidth="45*" rowsep="0"/&gt;
                                &lt;tbody valign="top"&gt;
                                    &lt;row rowsep="0"&gt;
                                        &lt;entry align="left" colname="col1" colsep="0" rowsep="0"
                                            valign="top"/&gt;
                                        &lt;entry align="center" colname="col2" colsep="0" rowsep="0"
                                            valign="top"&gt;
                                            &lt;remotelink href="www.asx.com.au" hrefclass="http"
                                                newwindow="YES"&gt;
                                                &lt;inlineobject attachment="ln-server"
                                                  filename="asx_logo.gif" type="image"/&gt;
                                            &lt;/remotelink&gt;
                                        &lt;/entry&gt;
                                        &lt;entry align="right" colname="col3" colsep="0" rowsep="0"
                                            valign="top"&gt; &lt;/entry&gt;
                                    &lt;/row&gt;
                                &lt;/tbody&gt;
                            &lt;/tgroup&gt;
                        &lt;/table&gt;
          &lt;/glp:note&gt;
         ....
        &lt;/leg:heading&gt;


            </codeblock>
            <title>Target XML</title>
            <codeblock>

 &lt;doc:metadata&gt;
        &lt;pubinfo:pubinfo&gt;
            &lt;pubinfo:publicationlogo&gt;
                &lt;logo&gt;
                      &lt;ref:inlineobject role="logo"&gt;
                                &lt;ref:locator&gt;
                                    &lt;ref:locator-key&gt;
                                        &lt;ref:key-name name="object-key"/&gt;
                                        &lt;ref:key-value value="X-asx_logo"/&gt;
                                        &lt;!-- X is DPSI Value obtained from Source look the above instruction given --&gt;
                                    &lt;/ref:locator-key&gt;
                                    &lt;ref:locator-params&gt;
                                        &lt;proc:param name="componentseq" value="1"/&gt;
                                        &lt;proc:param name="object-type" value="image"/&gt;
                                        &lt;proc:param name="object-smi" value="LOGOS"/&gt;
                                        
                                    &lt;/ref:locator-params&gt;
                                &lt;/ref:locator&gt;
                      &lt;/ref:inlineobject&gt;   
                &lt;/logo&gt;
            &lt;/pubinfo:publicationlogo&gt;
        &lt;/pubinfo:pubinfo&gt;
     ...
&lt;/doc:metadata&gt;


        </codeblock>
        </example>
        <section>
            <title>Changes</title>
            <p>2014-06-16: <ph id="change_20140616_SSX">Updated instruction to remove file extansion from <targetxml>ref:key-value/@value</targetxml> for handling logos images</ph></p>
            <p>2014-05-20: <ph id="change_20140520_SSX">Updated instruction to handle logo Webteam # 259104</ph></p>
            <p>2013-09-18: <ph id="change_20130918_WL">Created <b>Webteam #235768 Logo Link functionality for ASX Regulatory</b></ph>.</p>
        </section>
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU19LA_ASX\AU19_LA_ASX_Rosetta_inlineobject-Chof-glp-note-LxAdv-publicationlogo.dita  -->

	<xsl:template match="leg:heading/glp:note[table/tgroup/tbody/row/entry/remotelink/inlineobject[@filename=('asx-logo.gif' , 'asx_logo.gif')]][not(child::*[2])]"/>

    <xsl:template match="leg:heading/glp:note/table/tgroup/tbody/row/entry/remotelink/inlineobject[@filename=('asx-logo.gif' , 'asx_logo.gif')]" mode="pubinfo">            
				<pubinfo:publicationlogo>
				    <logo xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
						<ref:inlineobject role="logo">
						    <xsl:copy-of select="@height | @width"/>
							<ref:locator>
							    <ref:locator-key>
							        <ref:key-name name="object-key"/>
							        <ref:key-value>
							            <xsl:attribute name="value">
							                <xsl:value-of select="concat($AU19-LA-dpsi, '-', substring-before(@filename, '.gif'))"/>
							            </xsl:attribute>
							        </ref:key-value>
							    </ref:locator-key>
							    <ref:locator-params>
							        <proc:param name="componentseq" value="1"/>
							        <proc:param name="object-type" value="image"/>
							        <proc:param name="object-smi" value="LOGOS"/>
							    </ref:locator-params>
							</ref:locator>
						</ref:inlineobject>
					</logo>
				</pubinfo:publicationlogo>			
        </xsl:template>

	

</xsl:stylesheet>