<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
    xmlns:glp="http://www.lexis-nexis.com/glp"
    xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" 
    xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"
    xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" 
    xmlns:proc="http://www.lexisnexis.com/xmlschemas/content/shared/process-elements/1/" 
    xmlns:pubinfo="http://www.lexisnexis.com/xmlschemas/content/shared/publication-info/1/"
    xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita docinfo">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="AU19_Rosetta_inlineobject_ChildOf_glp-note-to-publicationlogo">
    <title><targetxml>publicationlogo</targetxml> <lnpid>id-AU19CA-21611</lnpid></title>
    <body>
        <section>
            <p> At the occurence of
             <sourcexml>heading/glp:note/table/tgroup/tbody/row/entry/remotelink/inlineobject[@filename="*"]</sourcexml>
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
                  <li>The <sourcexml>heading</sourcexml> is converted as documented in the General
                        Markup instruction for <xref href="../../common_newest/Rosetta_heading-LxAdv-heading.dita">leg:heading</xref>
                    </li>
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
                                                  <sourcexml>inlineobject/@filename</sourcexml><note>Here,
                                                  from source
                                                  <sourcexml>inlineobject/@filename</sourcexml> only
                                                  the filename will be retain in target not file
                                                  extansion (.gif)  Please see the
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
   
     &lt;heading searchtype="COMMENTARY"&gt;
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
         &lt;title&gt;&lt;refpt id="ASXSC.ABT.C1" type="ext"/&gt;About this Publication&lt;/title&gt;
        &lt;/heading&gt;
     

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
            <p>2013-10-02: <ph id="change_20131002_WL">Created</ph>.</p>
        </section>
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU19CA_ASX\AU19_CA_ASX_inlineobject-Chof-glp-note-LxAdv-publicationlogo.dita  -->
	<!--<xsl:message>AU19_CA_ASX_inlineobject-Chof-glp-note-LxAdv-publicationlogo.xsl requires manual development!</xsl:message> -->


    <xsl:template match="heading/glp:note[table/tgroup/tbody/row/entry/remotelink/inlineobject[contains(@filename, 'asx-logo.gif') or contains(@filename, 'asx_logo.gif')]]"/>
    
    <xsl:template match="remotelink[ancestor::glp:note and inlineobject[contains(@filename, 'asx-logo.gif') or contains(@filename, 'asx_logo.gif')]]" priority="30">
        <pubinfo:publicationlogo>
            <logo>
                <ref:inlineobject role='logo'>
                    <ref:locator>
                        <ref:locator-key>
                            <ref:key-name name='object-key'/>
                            <ref:key-value>
                                <!-- MDS 2017-06-28 - Commented out attribute matches the CI.  However it does not match the DT. Using DT version instead for consistency in Production-->
                                <!-- MDS 2018-02-05 - Replaced handling of publication logo to match DT CI due to Webstar 7110170 -->
                                <xsl:attribute name="value">
                                    <xsl:value-of select="concat($AU19-CA-dpsi, '-', inlineobject/substring-before(@filename, '.gif'))"/>
                                </xsl:attribute>
                                <!--<xsl:attribute name="value" select="inlineobject/@filename"/>-->
                            </ref:key-value>
                        </ref:locator-key>
                        <ref:locator-params>
                            <proc:param name="componentseq" value='1'/>
                            <proc:param name='object-type' value='image'/>
                            <proc:param name='object-smi' value='LOGOS'/>
                        </ref:locator-params>
                    </ref:locator>
                </ref:inlineobject>
            </logo>
        </pubinfo:publicationlogo>
    </xsl:template>
	<!--<xsl:template match="heading/glp:note/table/tgroup/tbody/row/entry/remotelink/inlineobject[@filename=&#34;*&#34;]">

		<!-\-  Original Target XPath:  doc:metadata/pubinfo:pubinfo/pubinfo:publicationlogo/logo/ref:inlinobject[@role="logo"]   -\->
		<doc:metadata>
			<pubinfo:pubinfo xmlns:pubinfo="http://www.lexisnexis.com/xmlschemas/content/shared/publication-info/1/">
				<pubinfo:publicationlogo>
					<logo>
						<ref:inlinobject>
							<xsl:apply-templates select="@* | node()"/>
						</ref:inlinobject>
					</logo>
				</pubinfo:publicationlogo>
			</pubinfo:pubinfo>
		</doc:metadata>

	</xsl:template>

	<xsl:template match="inlineobject[@filename=&#34;*&#34;]">

		<!-\-  Original Target XPath:  doc:metadata/pubinfo:pubinfo/pubinfo:publicationlogo/logo/ref:inlinobject[@role="logo"]   -\->
		<doc:metadata>
			<pubinfo:pubinfo xmlns:pubinfo="http://www.lexisnexis.com/xmlschemas/content/shared/publication-info/1/">
				<pubinfo:publicationlogo>
					<logo>
						<ref:inlinobject>
							<xsl:apply-templates select="@* | node()"/>
						</ref:inlinobject>
					</logo>
				</pubinfo:publicationlogo>
			</pubinfo:pubinfo>
		</doc:metadata>

	</xsl:template>

	<xsl:template match="heading">

		<!-\-  Original Target XPath:  ref:inlineobject   -\->
		<ref:inlineobject>
			<xsl:apply-templates select="@* | node()"/>
		</ref:inlineobject>

	</xsl:template>

	<xsl:template match="remotelink">

		<!-\-  Original Target XPath:  ref:inlineobject   -\->
		<ref:inlineobject>
			<xsl:apply-templates select="@* | node()"/>
		</ref:inlineobject>

	</xsl:template>

	<xsl:template match="ref:inlineobject">

		<!-\-  Original Target XPath:  ref:inlineobject   -\->
		<ref:inlineobject>
			<xsl:apply-templates select="@* | node()"/>
		</ref:inlineobject>

	</xsl:template>

	<xsl:template match="inlineobject/@filename">

		<!-\-  Original Target XPath:  DPSI   -\->
		<DPSI>
			<xsl:apply-templates select="@* | node()"/>
		</DPSI>

	</xsl:template>

	<xsl:template match="docinfo:dpsi/@id-string">

		<!-\-  Original Target XPath:  ref:locator-params   -\->
		<ref:locator-params>
			<xsl:apply-templates select="@* | node()"/>
		</ref:locator-params>

	</xsl:template>

	<xsl:template match="docinfo/docinfo:lbu-meta/docinfo:metaitem[@name=&#34;DPSI&#34;]/@value">

		<!-\-  Original Target XPath:  ref:locator-params   -\->
		<ref:locator-params>
			<xsl:apply-templates select="@* | node()"/>
		</ref:locator-params>

	</xsl:template>

	<xsl:template match="inlineobject[@filename]">

		<!-\-  Original Target XPath:  proc:param[@name="object-smi"]   -\->
		<proc:param>
			<xsl:apply-templates select="@* | node()"/>
		</proc:param>

	</xsl:template>

	<xsl:template match="inlineobject">

		<!-\-  Original Target XPath:  ref:inlineobject/@height   -\->
		<ref:inlineobject>
			<xsl:attribute name="height">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</ref:inlineobject>

	</xsl:template>

	<xsl:template match="inlineobject/@height">

		<!-\-  Original Target XPath:  ref:inlineobject/@height   -\->
		<ref:inlineobject>
			<xsl:attribute name="height">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</ref:inlineobject>

	</xsl:template>

	<xsl:template match="inlineobject/@width">

		<!-\-  Original Target XPath:  ref:inlineobject/@width   -\->
		<ref:inlineobject>
			<xsl:attribute name="width">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</ref:inlineobject>

	</xsl:template>

	<xsl:template match="inlineobject/@attachment">

		<!-\-  Original Target XPath:  ref:key-value/@value   -\->
		<ref:key-value>
			<xsl:attribute name="value">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</ref:key-value>

	</xsl:template>-->

</xsl:stylesheet>