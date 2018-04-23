<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
    xmlns:glp="http://www.lexis-nexis.com/glp"
    xmlns:proc="http://www.lexisnexis.com/xmlschemas/content/shared/process-elements/1/" 
    xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" xmlns:ci="http://www.lexis-nexis.com/ci" 
    version="2.0" exclude-result-prefixes="dita ci glp">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_inlineobject-to-LexisAdvance_ref.inlineobject">
    <title><sourcexml>inlineobject</sourcexml> to <targetxml>ref:inlineobject</targetxml> <lnpid>id-CCCC-10369</lnpid></title>
    <body>
        <section>
      <title>Instructions <i>[common element]</i></title>
      <p>If the <sourcexml>inlineobject</sourcexml>
        <i>is not</i> a diagram or picture illustrating textual material (e.g. a minor icon or
        symbol that is not otherwise suppressed), <sourcexml>inlineobject</sourcexml> becomes
          <targetxml>ref:inlineobject</targetxml>. <ul>
          <li>Create <targetxml>ref:locator</targetxml> and describe as: <ul>
              <li>Create <targetxml>ref:locator-key</targetxml> and describe as: <ul>
                  <li>Create <targetxml>ref:key-name</targetxml> with
                      <targetxml>@name="object-key"</targetxml>. This line is hard coded. </li>
                  <li>Create <targetxml>ref:key-value</targetxml> with
                    <targetxml>@value</targetxml>, as follows: <ul>
                      <li>If <sourcexml>inlineobject[@smi]</sourcexml> is present, then
                          <targetxml>@value</targetxml> is copied from
                          <sourcexml>inlineobject[@filename]</sourcexml>.</li>
                      <li>If <sourcexml>inlineobject[@smi]</sourcexml> is not present, then
                          <targetxml>@value="X-Y-Z"</targetxml>, where X is LNI, Y is SMI, and Z is
                        filename. LNI and SMI(retreived from CSSM) values are added by <b>"Workflow
                          Generic Image Handlers"</b>. The last component "Z" is copied from
                          <sourcexml>inlineobject[@filename]</sourcexml>.</li>
                        <note><!-- Added by MDS (2017-03-20) - Based on email from Roopa Singh (2017-03-17 6:19pm) -->
                        If <sourcexml>inlineobject[@smi]</sourcexml> still add the <sourcexml>@filename</sourcexml> value as the value of <targetxml>ref:key-value/@value</targetxml>.
                            The correct format of the value will be established using the Generic Image Handler process downstream.
                        </note>
                      <li>If <sourcexml>inlineobject[@smi]</sourcexml> is not present, conversion
                        program should pass <sourcexml>inlineobject[@filename]</sourcexml> value to
                          <b>“Generic Image Handler”</b> as is and <b>“Generic Image Handler”</b>
                        will do conversion of filename value as noted above. <b>Conversion of
                          filename replaces underscore, blank, and period with hyphen.</b></li>
                    </ul></li>
                </ul></li>
              <li>Create <targetxml>ref:locator-params</targetxml> and describe as: <ul>
                  <li>Create <targetxml>proc:param[@name]</targetxml> and
                      <targetxml>proc:param[@value]</targetxml> pairs as follows: <ul>
                      <li><targetxml>proc:param[@name="componentseq"]</targetxml> with the attribute
                          <targetxml>@value="1"</targetxml>. This line is hard coded.</li>
                      <li><targetxml>proc:param[@name="object-type"]</targetxml> with the attribute
                          <targetxml>@value="image"</targetxml> if the extension of
                          <sourcexml>inlineobject[@filename]</sourcexml> is either of these values
                        (.jpg, .gif, .png, .tiff and .bmp).</li>
                      <li><targetxml>proc:param[@name="object-smi"]</targetxml> with the attribute
                          <targetxml>@value</targetxml>. The <targetxml>@value</targetxml> value is
                        from <sourcexml>inlineobject[@smi]</sourcexml>. If
                          <sourcexml>inlineobject[@smi]</sourcexml> is not present, obtain SMI from
                        CSSM. This <targetxml>@value</targetxml> assignment is done by conversion
                        program.
                          <note><!-- Added by MDS (2017-03-20) - Based on email from Roopa Singh (2017-03-17 6:19pm) -->
                              If <sourcexml>inlineobject[@smi]</sourcexml> is not present, add the following <targetxml>proc:param</targetxml> markup:
                              <ul>
                                  <li>@name='external-or-local' @value='external'</li>
                                  <li>@name='object-server' @value='Blobstore'</li>
                                  <li>@name='object-pguid' @value='urn:contentitem'</li>
                              </ul>
                          </note></li>
                    </ul></li>
                </ul></li>
            </ul></li>
          <li>The other attributes of <sourcexml>inlineobject</sourcexml> are handled as follows: <ul>
              <li><sourcexml>inlineobject/@height</sourcexml> becomes
                  <targetxml>ref:inlineobject/@height</targetxml>.</li>
              <li><sourcexml>inlineobject/@width</sourcexml> becomes
                  <targetxml>ref:inlineobject/@width</targetxml>.</li>
              <li><sourcexml>inlineobject/@attachment</sourcexml> should be suppressed.</li>
              <li><sourcexml>inlineobject/@key</sourcexml> should be suppressed.</li>
          </ul></li>
        </ul></p>
      <note>
        <p>In the case of icons or other boilerplate images, the <sourcexml>inlineobject</sourcexml>
          shall usually be suppressed from conversion and a corresponding product requirement should
          be created with instructions to instantiate the image on retrieval based on
          information/semantic markup in the document. This will sometimes include additional
          attributes being added to target elements created from parent source elements (such as
          <targetxml>ref:crossreference</targetxml> from <sourcexml>remotelink</sourcexml>).</p>
        <p>Usually, any icons encountered from the list below should be suppressed. These files
          should be suppressed for both *.gif and *.png file types. <ul>
            <li>1.gif</li>
            <li>2.gif</li>
            <li>3.gif</li>
            <li>4.gif</li>
            <li>5.gif</li>
            <li>IconSignalPositive.gif</li>
            <li>IconSignalNegative.gif</li>
            <li>IconSignalNeutral.gif</li>
            <li>IconSignalPossibleNegative.gif</li>
            <li>IconSignalCiteInfoOnly.gif</li>
            <li>cbcc.gif</li>
            <li>leg1.gif</li>
            <li>mb.gif</li>
            <li>au_repealed.gif</li>
            <li>au_exclaim.gif</li>
          </ul></p>
        <p>Use cases where the LBU feels the product requirement cannot be met if the markup is
          completely suppressed shall be handled case-by-case, and as usual additional topics will
          contain specific instructions for these scenarios that override the instructions in this
          note.</p>
      </note>
    </section>
        <example>
            <title>Source XML. Source @smi present</title>
            <codeblock>

&lt;p&gt;
    &lt;text&gt; 
        &lt;inlineobject type="image" 
                      smi="98765" 
                      attachment="ln-server" 
                      filename="3S3J-WW80-003F-W39R-00000-00-98765-importantIcon.gif" /&gt;
    &lt;/text&gt;
&lt;/p&gt;

             </codeblock>
            <title>Target XML. Source @smi present</title>
            <codeblock>

&lt;p&gt;
    &lt;text&gt;
        &lt;ref:inlineobject&gt;
            &lt;ref:locator&gt;
                &lt;ref:locator-key&gt;
                    &lt;ref:key-name name="object-key"/&gt;
                    &lt;ref:key-value value="3S3J-WW80-003F-W39R-00000-00-98765-importantIcon"/&gt;
                &lt;/ref:locator-key&gt;
                &lt;ref:locator-params&gt;
                    &lt;proc:param name="componentseq" value="1"/&gt;
                    &lt;proc:param name="object-type" value="image"/&gt;
                    &lt;proc:param name="object-smi" value="98765"/&gt;
                &lt;/ref:locator-params&gt;
                &lt;/ref:locator&gt;
        &lt;/ref:inlineobject&gt;
    &lt;/text&gt;
&lt;/p&gt;

             </codeblock>
        </example>
        <example>
            <title>Source XML. Source @smi not present</title>
            <codeblock>

&lt;p&gt;
    &lt;text&gt; 
        &lt;inlineobject type="image" 
                      attachment="ln-server" 
                      filename="importantIcon.gif" /&gt;
    &lt;/text&gt;
&lt;/p&gt;

             </codeblock>
            <title>Target XML. Source @smi not present</title>
            <codeblock>

&lt;p&gt;
    &lt;text&gt;       
        &lt;ref:inlineobject&gt;
            &lt;ref:locator&gt;
                &lt;ref:locator-key&gt;
                    &lt;ref:key-name name="object-key"/&gt;
                    &lt;ref:key-value value="X-Y-importantIcon"/&gt; &lt;!-- X and Y are LNI and SMI values obtained from CSSM --&gt;
                &lt;/ref:locator-key&gt;
                &lt;ref:locator-params&gt;
                    &lt;proc:param name="componentseq" value="1"/&gt;
                    &lt;proc:param name="object-type" value="image"/&gt; &lt;!-- allowable values: “image”; (from .jpg, .gif, .png, .bmp)--&gt;
                    &lt;proc:param name="object-smi" value=""/&gt; &lt;!-- This @value assignment is done by conversion program --&gt;
                &lt;/ref:locator-params&gt;
            &lt;/ref:locator&gt;
        &lt;/ref:inlineobject&gt;
    &lt;/text&gt;
&lt;/p&gt;

             </codeblock>
        </example>
        
        <example>
            <title>Output example without @smi with real values - Conversion output (Input for the image processor)</title>
            <codeblock>
                <![CDATA[

<text><figure>
<ref:inlineobject>
<ref:locator>
<ref:locator-key>
<ref:key-name name="object-key"></ref:key-name>
<ref:key-value value="06-Capital-Gains-Tax-09(995-1044)-2.gif"></ref:key-value>
</ref:locator-key>
<ref:locator-params>
<proc:param name="componentseq" value="1"></proc:param>
<proc:param name="object-type" value="IMG"></proc:param>
<proc:param name="external-or-local" value="external"></proc:param>
<proc:param name="object-server" value="Blobstore"></proc:param>
<proc:param name="object-pguid" value="urn:contentItem:"></proc:param>
</ref:locator-params>
</ref:locator>
</ref:inlineobject>
</figure></text>
]]>
            </codeblock>
        </example>
        <example>
            <title>Image processor output:</title>
<codeblock>
<![CDATA[


              <text>
                <figure>
                  <ref:inlineobject>
                    <ref:locator>
                      <ref:locator-key>
                        <ref:key-name name="object-key"/>
                        <ref:key-value value="5M8J-YJF1-JNCK-23YG-00000-00-12634-06-Capital-Gains-Tax-09(995-1044)-2"/>
                      </ref:locator-key>
                      <ref:locator-params>
                        <proc:param name="componentseq" value="1"/>
                        <proc:param name="object-type" value="image"/>
                        <proc:param name="external-or-local" value="external"/>
                        <proc:param name="object-server" value="Blobstore"/>
                        <proc:param name="object-pguid" value="urn:contentItem:5M8J-YJF1-JNCK-23YG-00000-00"/>
                      </ref:locator-params>
                    </ref:locator>
                  </ref:inlineobject>
                </figure>
              </text>
]]>
            </codeblock>
        </example>
        
        <section>
            <title>Changes</title>
            <p>2015-11-16: <ph id="change_20151116_snb">Added instruction for <sourcexml>inlineobject/@key</sourcexml> 
                to be suppressed.</ph></p>
            <p>2014-07-08: <ph id="change_20140708_JCG">Not a rule change. Clarification added to note regarding suppression of <sourcexml>inlineobject</sourcexml> when <sourcexml>inlineobject/@filename</sourcexml> contains certain values.</ph></p>
            <p>2013-05-24: <ph id="change_20130524_SP">Updated instruction for handling of inlineobject when <b>smi</b> is present and some of the verbiage is changed.</ph></p>
            <p>2013-05-08: <ph id="change_20130508_SP">Extended the list of allowable values for image handling.</ph></p>
            <p>2013-05-02: <ph id="change_20130502_SP">Some of the verbiage is changed and updated target example to if the SMI is present then a <targetxml>ref:inliineobject/@status</targetxml> attribute is set to “valid”.</ph></p>
            <p>2013-05-01: <ph id="change_20130501_SP">Removed instructions for section
                <b>"Pre-Release 4.0"</b> because according to latest Apollo markup, section
                <b>"Release 4.0 and after"</b> and section <b>"Pre-Release 4.0"</b> now have
                similar conversion markup.</ph></p>
            <p>2013-04-30: <ph id="change_20130430_SP">Updated target sample according to latest Apollo markup.</ph></p>
            <p>2013-03-13: <ph id="change_20130313_WLL">Removed the value <b>leg1.png</b> and added the statement "These files should be suppressed for both *.gif and *.png file types" was added.</ph></p>
            <p>2013-03-12: <ph id="change_20130312_WLL">Added an additional value of <b>leg1.png</b>to the <sourcexml>inlineobject</sourcexml>suppression list</ph></p>
            <p>2013-02-18: <ph id="change_20130218_SP">Created two sections, one for <b>"Release 4.0 and after"</b> and another for <b>"Pre-Release 4.0"</b>.</ph></p>
            <p>2013-02-08: Updated intsructions and examples per project requirement.</p>
            <p>2012-11-30: Created .</p>
        </section>
    </body>
    
	</dita:topic>
    
    <!-- created 2 global parameters to be used in driver, 
        
        <xsl:param name="inlineobjBoilerplateFiles" select="('xxx.gif', 'xxx.png')"/> for boilerplate filenames that ARE
        to be converted to ref:inlineobject.
        
        <xsl:param name="inlineobjFilesToSuppress" select="('yyy.png', 'yyy.gif')"/> for filenames that are to be 
        *SUPPRESSED* from conversion but require special handling elsewhere.  That other handling is not specified in this module
        
        
    
    This will allow us to be LBU-specific in names of files for specific handling.
    
    ALSO REFACTORED this template to a MODE and not a named template so it works for figures as well.
    
    JL
    -->
	

<!-- Awantika: Added name for the template to be used in element 'p'  -->
    <!-- JL Suppression is done when inlineobject is a child of remotelink and the grandparent of inlineobject (the parent of remotelink) is not ci:content.
    from DITA/ConversionInstructions/Rosetta/common_newest/Rosetta_AU_legistlation_courtrule_inlineobject-Chof-remotelink-LxAdv-SUPPRESS.dita-->
    <xsl:template match="inlineobject[@filename = $inlineobjFilesToSuppress][parent::remotelink][not(parent::remotelink/parent::ci:content) or $streamID=('AU08', 'AU04', 'AU10', 'AU09')]"/>
  
    <xsl:template match="inlineobject[@filename=$inlineobjBoilerplateFiles][not(parent::p) and not(parent::blockquote)]">
        <xsl:apply-templates select="." mode="refinline"/>
    </xsl:template>
    
    <xsl:template match="inlineobject[$streamID='CA14'][not(parent::p) and not(parent::blockquote)]">
        <xsl:apply-templates select="." mode="refinline"/>
    </xsl:template>
    
    <!-- MDS 2017-05-17 - Found in AU04 - Suppress inlineobject that is a descendent of glp.note and has a @filename[contains(., 'leg1')] -->
    <!-- See module '/glp/Rosetta_glp.note_blockquote_p_text_inlineobject-LxAdv-note_bodytext_p_text.xsl' for documentation. -->
    <xsl:template match="inlineobject[@filename='leg1.gif' or @filename='leg1.png'][ancestor::blockquote/parent::glp:note]"/>
    
    <xsl:template match="inlineobject[@filename=$inlineobjBoilerplateFiles][parent::p]">
        <text xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">      
            <xsl:apply-templates select="." mode="refinline"/>       
        </text>
    </xsl:template>
    <!--Below template is created for AU09 and not read the [$inlineobjFilesToSuppress].-->
    <xsl:template match="inlineobject[parent::pgrp | parent::p][$streamID='AU09']">
        <figure xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">      
            <xsl:apply-templates select="." mode="refinline"/>       
        </figure>
    </xsl:template>
    
    <xsl:template match="inlineobject" mode="refinline">
		<xsl:param name="bpf_from_case_filenum" tunnel="yes"/>
	            <ref:inlineobject>
	                <xsl:choose>
	                    <xsl:when test="$streamID='USLPA'">
	                        <ref:locator>
	                            <ref:locator-key>
	                                <!-- Awantika: ref:key-value should be the sibling of ref:key-name -->
	                                <ref:key-name>
	                                    <xsl:attribute name="name">object-key</xsl:attribute>	                           
	                                </ref:key-name>
	                                <ref:key-value>
	                                    <xsl:attribute name="value">
	                                        <xsl:value-of select="@filename"/>
	                                    </xsl:attribute>
	                                </ref:key-value>
	                            </ref:locator-key>
	                            <ref:locator-params>
	                                <proc:param xmlns:proc="http://www.lexisnexis.com/xmlschemas/content/shared/process-elements/1/">
	                                    <xsl:attribute name="name">componentseq</xsl:attribute>
	                                    <xsl:attribute name="value">1</xsl:attribute>
	                                </proc:param>
	                                <xsl:if test="contains(@filename, 'jpg')  or contains(@filename, 'jpeg') or contains(@filename, 'gif') or contains(@filename, 'png') or contains(@filename, 'tiff') or contains(@filename, 'bmp')">
	                                    <proc:param>
	                                        <xsl:attribute name="name">object-type</xsl:attribute>
	                                        <xsl:attribute name="value">image</xsl:attribute>
	                                    </proc:param>
	                                </xsl:if>
	                                <xsl:choose>
	                                    <!--
	                                Paul: Wondering if SMI should be a param just like dpsi.  Its going to get dropped unless something is done.
	                            -->
	                                    <xsl:when test="@smi">
	                                        <proc:param>
	                                            <xsl:attribute name="name">object-smi</xsl:attribute>
	                                            <xsl:attribute name="value">
	                                                <xsl:value-of select="@smi"/>
	                                            </xsl:attribute>
	                                        </proc:param>
	                                    </xsl:when>
	                                    <xsl:when test="not(@smi) and $streamID=('AU16','CA05','CA09','CA06','AU07', 'AU09','USLPA')">
	                                        <proc:param>
	                                            <xsl:attribute name="name">object-smi</xsl:attribute>
	                                            <xsl:attribute name="value"></xsl:attribute>
	                                        </proc:param>	                                
	                                        <xsl:comment>Empty @value created by 'Rosetta_inlineobject-LxAdv-ref.inlineobject.xsl'</xsl:comment>
	                                    </xsl:when>
	                                    <xsl:otherwise>
	                                        <!--  Paul: commented out these params, they are for blobstore.  they should be done via this template in Rosetta_inlineobject-to-LxAdv_figure_ref.inlineobject
     <xsl:template match="inlineobject" name="inlineobjblobstore">
                                    <proc:param>
	                                    <xsl:attribute name="name">external-or-local</xsl:attribute>
	                                    <xsl:attribute name="value">external</xsl:attribute>
	                                </proc:param>
	                                <proc:param>
	                                    <xsl:attribute name="name">object-server</xsl:attribute>
	                                    <xsl:attribute name="value">Blobstore</xsl:attribute>
	                                </proc:param>
	                                <proc:param>
	                                    <xsl:attribute name="name">object-pguid</xsl:attribute>
	                                    <xsl:attribute name="value">urn:contentitem:</xsl:attribute>
	                                </proc:param>
-->	                            </xsl:otherwise>
	                                </xsl:choose>
	                            </ref:locator-params>
	                        </ref:locator>
	                    </xsl:when>
	                    <xsl:otherwise>
	                        <xsl:apply-templates select="@*[not(name()='attachment' or name()='key')]" mode="refinline"/>
	                        <xsl:apply-templates select="@attachment|@key" mode="refinline"/>
	                        <ref:locator>
	                            <ref:locator-key>
	                                <!-- Awantika: ref:key-value should be the sibling of ref:key-name -->
	                                <ref:key-name>
										<xsl:attribute name="name">
											<xsl:value-of select="if ($streamID='CA19x' or $streamID='AU19_CC') then 'attachment-key' else 'object-key'"/>
										</xsl:attribute>
	                                </ref:key-name>
	                                <ref:key-value>
	                                    <xsl:attribute name="value">
	                                        <xsl:value-of select="@filename"/>
	                                    </xsl:attribute>
	                                </ref:key-value>
	                            </ref:locator-key>
	                            <ref:locator-params>
	                                <proc:param xmlns:proc="http://www.lexisnexis.com/xmlschemas/content/shared/process-elements/1/">
	                                    <xsl:attribute name="name">componentseq</xsl:attribute>
	                                    <xsl:attribute name="value">1</xsl:attribute>
	                                </proc:param>
	                                <xsl:if test="contains(@filename, 'jpg')  or contains(@filename, 'jpeg') or contains(@filename, 'gif') or contains(@filename, 'png') or contains(@filename, 'tiff') or contains(@filename, 'bmp')">
	                                    <proc:param>
											<xsl:attribute name="name">
												<xsl:value-of select="if ($streamID='CA19x' or $streamID='AU19_CC') then 'attachment-type' else 'object-type'"/>
											</xsl:attribute>
	                                        <xsl:attribute name="value">image</xsl:attribute>
	                                    </proc:param>
	                                </xsl:if>
	                                <xsl:choose>
	                                    <!--
	                                Paul: Wondering if SMI should be a param just like dpsi.  Its going to get dropped unless something is done.
	                                JD: the CI examples state "This @value assignment is done by conversion program"
	                            -->
	                                    <xsl:when test="@smi">
	                                        <proc:param>
	                                            <xsl:attribute name="name">object-smi</xsl:attribute>
	                                            <xsl:attribute name="value">
	                                                <xsl:value-of select="@filename"/>
	                                            </xsl:attribute>
	                                        </proc:param>
	                                    </xsl:when>
	                                    <xsl:when test="not(@smi) and $streamID='CA19' or $streamID='AU19_CC' or $streamID='AU18'">
											<!--these Apollo SMI values come from a John B. email:
												PCT                  PCSI    Name         SMI
												urn:pct:444         232583 Pleadings      10909
												urn:pct:442         232585 Facta          10912
												urn:pct:443         232584 Motions        100132
												-->
	                                        <proc:param>
												<xsl:attribute name="name">object-smi</xsl:attribute>
												<xsl:choose>
													<xsl:when test="$bpf_from_case_filenum = 'brief'">
														<xsl:attribute name="value">10912</xsl:attribute>
													</xsl:when>
													<xsl:when test="$bpf_from_case_filenum = 'pleading'">
														<xsl:attribute name="value">10909</xsl:attribute>
													</xsl:when>
													<xsl:when test="$bpf_from_case_filenum = 'motion'">
														<xsl:attribute name="value">100132</xsl:attribute>
													</xsl:when>
													<xsl:otherwise>
														<xsl:attribute name="value">
															<xsl:value-of select="'unk'"/>
														</xsl:attribute>
													</xsl:otherwise>
												</xsl:choose>
	                                        </proc:param>	                                
	                                    </xsl:when>
	                                    <!-- Awantika:2017-11-14- Added CA01 to the streams for webstar  7044267 -->
	                                    <xsl:when test="not(@smi) and not(starts-with($streamID, 'UK')) and not(starts-with($streamID , 'HK'))">
	                                        <proc:param>
	                                            <xsl:attribute name="name">object-smi</xsl:attribute>
	                                            <xsl:attribute name="value" select="$smi"/>
	                                        </proc:param>	                                
	                                        <xsl:comment>Empty @value created by 'Rosetta_inlineobject-LxAdv-ref.inlineobject.xsl'</xsl:comment>
	                                    </xsl:when>
	                                    <xsl:otherwise>
	                                        <!--  Paul: commented out these params, they are for blobstore.  they should be done via this template in Rosetta_inlineobject-to-LxAdv_figure_ref.inlineobject
     <xsl:template match="inlineobject" name="inlineobjblobstore">
                                    <proc:param>
	                                    <xsl:attribute name="name">external-or-local</xsl:attribute>
	                                    <xsl:attribute name="value">external</xsl:attribute>
	                                </proc:param>
	                                <proc:param>
	                                    <xsl:attribute name="name">object-server</xsl:attribute>
	                                    <xsl:attribute name="value">Blobstore</xsl:attribute>
	                                </proc:param>
	                                <proc:param>
	                                    <xsl:attribute name="name">object-pguid</xsl:attribute>
	                                    <xsl:attribute name="value">urn:contentitem:</xsl:attribute>
	                                </proc:param>
-->	                            </xsl:otherwise>
	                                </xsl:choose>
	                            </ref:locator-params>
	                        </ref:locator>
	                    </xsl:otherwise>
	                </xsl:choose>
	                <!-- Awantika: Commented xsl:copy as it was copying the attributes of inlineobject which are not used in target -->
	                <!--<xsl:copy-of select="@*[not(name()='attachment' or name()='key')]"/>-->
	            </ref:inlineobject>
	</xsl:template>
        
    <xsl:template match="inlineobject/@mimetype|inlineobject/@attachment|inlineobject/@key | inlineobject/@filename | inlineobject/@type" mode="refinline"/>
    
    <xsl:template match="@*" mode="refinline">
        <xsl:copy>
            <xsl:value-of select="."/>
        </xsl:copy>
    </xsl:template>
 
</xsl:stylesheet>
