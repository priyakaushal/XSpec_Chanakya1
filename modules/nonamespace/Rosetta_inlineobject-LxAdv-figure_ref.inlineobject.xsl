<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
	xmlns:ci="http://www.lexis-nexis.com/ci"
	xmlns:leg="http://www.lexis-nexis.com/glp/leg"
	xmlns:case="http://www.lexis-nexis.com/glp/case"
	xmlns:jrnl="http://www.lexis-nexis.com/glp/jrnl"
	xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"
  xmlns:legisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/legislation-info/1/"
  xmlns:proc="http://www.lexisnexis.com/xmlschemas/content/shared/process-elements/1/" 
  xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="#all">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_inlineobject-to-LexisAdvance_figure_ref.inlineobject">
    <title><sourcexml>inlineobject</sourcexml> to <targetxml>figure/ref:inlineobject</targetxml>
        <lnpid>id-CCCC-10368</lnpid></title>
    <body>
        <section>
            <title>Instructions <i>[common element]</i></title>
            <note>This topic is used in numerous conversion instructions for several LBUs. It is a
                shared topic rather than duplicated to ensure consistency and accuracy. The xml
                snippets contained in this topic reflect markup needed for the Apollo image handling
                application. The UK is the first LBU to move from Apollo to the Blobstore
                application for image handling. Therefore, if this is a UK conversion instruction
                document, please refer to the following topics for correct image handling markup.<ul>
                    <li><sourcexml>lnlink[@service="ATTACHMENT"]</sourcexml> to
                            <targetxml>ref:lnlink[@service="ATTACHMENT"]</targetxml> for BLOBSTORE
                        images (id-CCCC-10542)</li>
                    <li><sourcexml>inlineobject</sourcexml> to
                            <targetxml>ref:inlineobject</targetxml> for BLOBSTORE images
                        (id-CCCC-10540)</li>
                    <li><sourcexml>link[@filename]</sourcexml> to
                            <targetxml>ref:lnlink[@service="ATTACHMENT"]</targetxml> for BLOBSTORE
                        images (id-CCCC-10541)</li>
                </ul></note>
            <p>If the <sourcexml>inlineobject</sourcexml>
                <i>is</i> a diagram or picture illustrating textual material (e.g. not a minor icon
                or symbol), <sourcexml>inlineobject</sourcexml> becomes
                    <targetxml>figure/ref:inlineobject</targetxml>. </p>
            <note>When <sourcexml>inlineobject</sourcexml> is a child of
                    <sourcexml>verbatim</sourcexml> then conversion should suppress
                    <sourcexml>proc:nl</sourcexml> from before and after of
                    <targetxml>figure</targetxml> element in the target. For more clarification see
                Example: 3.</note>
        </section>

        <example>
            <title>Source XML 1: Source @smi present</title>
            <codeblock>

&lt;p&gt;
    &lt;text&gt; 
        &lt;inlineobject type="image" 
                      smi="98765" 
                      attachment="ln-server" 
                      filename="3S3J-WW80-003F-W39R-00000-00-98765-xmp6.gif" /&gt;
    &lt;/text&gt;
&lt;/p&gt;

             </codeblock>
            <title>Target XML 1: Source @smi present</title>
            <codeblock>

&lt;p&gt;
    &lt;text&gt;
        &lt;figure&gt;
            &lt;ref:inlineobject&gt;
                &lt;ref:locator&gt;
                    &lt;ref:locator-key&gt;
                        &lt;ref:key-name name="object-key"/&gt;
                        &lt;ref:key-value value="3S3J-WW80-003F-W39R-00000-00-98765-xmp6"/&gt;
                    &lt;/ref:locator-key&gt;
                    &lt;ref:locator-params&gt;
                        &lt;proc:param name="componentseq" value="1"/&gt;
                        &lt;proc:param name="object-type" value="image"/&gt;
                        &lt;proc:param name="object-smi" value="98765"/&gt;
                    &lt;/ref:locator-params&gt;
                    &lt;/ref:locator&gt;
            &lt;/ref:inlineobject&gt;
        &lt;/figure&gt;
    &lt;/text&gt;
&lt;/p&gt;

             </codeblock>
        </example>
        <example>
            <title>Source XML 2: Source @smi not present</title>
            <codeblock>

&lt;p&gt;
    &lt;text&gt; 
        &lt;inlineobject type="image" 
                      attachment="ln-server" 
                      filename="sch2.gif" /&gt;
    &lt;/text&gt;
&lt;/p&gt;

             </codeblock>
            <title>Target XML 2: Source @smi not present</title>
            <codeblock>

&lt;p&gt;
    &lt;text&gt;
        &lt;figure&gt;
            &lt;ref:inlineobject&gt;
                &lt;ref:locator&gt;
                    &lt;ref:locator-key&gt;
                        &lt;ref:key-name name="object-key"/&gt;
                        &lt;ref:key-value value="X-Y-sch2"/&gt;   &lt;!-- X and Y are LNI and SMI values obtained from CSSM --&gt;
                    &lt;/ref:locator-key&gt;
                &lt;ref:locator-params&gt;
                    &lt;proc:param name="componentseq" value="1"/&gt;
                    &lt;proc:param name="object-type" value="image"/&gt; &lt;!-- allowable values: “image”; (from .jpg, .gif, .png, .bmp)--&gt;
                    &lt;proc:param name="object-smi" value=""/&gt;    &lt;!-- This @value assignment is done by conversion program --&gt;
                &lt;/ref:locator-params&gt;
                &lt;/ref:locator&gt;
            &lt;/ref:inlineobject&gt;
        &lt;/figure&gt;
    &lt;/text&gt;
&lt;/p&gt;

             </codeblock>
        </example>

        <example>
            <title>Source XML 3: &lt;nl/&gt; before and after &lt;inlineobject&gt;</title>
            <codeblock>
&lt;p&gt;
    &lt;text&gt;
        &lt;verbatim verbatimclass="future"&gt;
            ...
            &lt;nl/&gt; 26. Each of the provisions of the Act listed in
            Column A of the&lt;nl/&gt; Table to this section is amended in the manner specified for
            the&lt;nl/&gt; provision in Column B of the Table.&lt;nl/&gt;
            &lt;inlineobject filename="SO13_18FT-0001.jpg" type="image" attachment="ln-server"/&gt;&lt;nl/&gt;
            &lt;inlineobject filename="SO13_18FT-0002.jpg" type="image" attachment="ln-server"/&gt;&lt;nl/&gt;
            &lt;inlineobject filename="SO13_18FT-0003.jpg" type="image" attachment="ln-server"/&gt;&lt;nl/&gt;
            SOLICITORS ACT&lt;nl/&gt;
            &lt;nl/&gt; 27. (1) Section 1 of the Solicitors Act is amended by striking&lt;nl/&gt; out "If a
            person, unless a party to the proceeding, commences" at the&lt;nl/&gt; beginning and
            substituting "Subject to subsection (2), if a person&lt;nl/&gt; commences".&lt;nl/&gt;
        &lt;/verbatim&gt;
    &lt;/text&gt;
&lt;/p&gt;
             </codeblock>
            <title>Target XML 3: &lt;nl/&gt; before and after &lt;inlineobject&gt;</title>
            <codeblock>
&lt;p&gt;
    &lt;text&gt;
        &lt;verbatim verbatimclass="future"&gt;
            ...
            &lt;proc:nl/&gt; 26. Each of the provisions of the Act listed in
            Column A of the&lt;proc:nl/&gt; Table to this section is amended in the manner specified for
            the&lt;proc:nl/&gt; provision in Column B of the Table.
            
            &lt;figure&gt;
                &lt;ref:inlineobject&gt;
                    &lt;ref:locator&gt;
                        &lt;ref:locator-key&gt;
                            &lt;ref:key-name name="object-key"/&gt;
                            &lt;ref:key-value value="X-Y-SO13_18FT-0001"/&gt; &lt;!-- X and Y are LNI and SMI values obtained from CSSM --&gt;
                        &lt;/ref:locator-key&gt;
                        &lt;ref:locator-params&gt;
                            &lt;proc:param name="componentseq" value="1"/&gt;
                            &lt;proc:param name="object-type" value="image"/&gt; &lt;!-- allowable values: “image”; (from .jpg, .gif, .png, .bmp)--&gt;
                            &lt;proc:param name="object-smi" value=""/&gt; &lt;!-- This @value assignment is done by conversion program --&gt;
                        &lt;/ref:locator-params&gt;
                    &lt;/ref:locator&gt;
                &lt;/ref:inlineobject&gt;
            &lt;/figure&gt;
            &lt;figure&gt;
                &lt;ref:inlineobject&gt;
                    &lt;ref:locator&gt;
                        &lt;ref:locator-key&gt;
                            &lt;ref:key-name name="object-key"/&gt;
                            &lt;ref:key-value value="X-Y-SO13_18FT-0002"/&gt; &lt;!-- X and Y are LNI and SMI values obtained from CSSM --&gt;
                        &lt;/ref:locator-key&gt;
                        &lt;ref:locator-params&gt;
                            &lt;proc:param name="componentseq" value="1"/&gt;
                            &lt;proc:param name="object-type" value="image"/&gt; &lt;!-- allowable values: “image”; (from .jpg, .gif, .png, .bmp)--&gt;
                            &lt;proc:param name="object-smi" value=""/&gt; &lt;!-- This @value assignment is done by conversion program --&gt;
                        &lt;/ref:locator-params&gt;
                    &lt;/ref:locator&gt;
                &lt;/ref:inlineobject&gt;
            &lt;/figure&gt;
            &lt;figure&gt;
                &lt;ref:inlineobject&gt;
                    &lt;ref:locator&gt;
                        &lt;ref:locator-key&gt;
                            &lt;ref:key-name name="object-key"/&gt;
                            &lt;ref:key-value value="X-Y-SO13_18FT-0003"/&gt; &lt;!-- X and Y are LNI and SMI values obtained from CSSM --&gt;
                        &lt;/ref:locator-key&gt;
                        &lt;ref:locator-params&gt;
                            &lt;proc:param name="componentseq" value="1"/&gt;
                            &lt;proc:param name="object-type" value="image"/&gt; &lt;!-- allowable values: “image”; (from .jpg, .gif, .png, .bmp)--&gt;
                            &lt;proc:param name="object-smi" value=""/&gt; &lt;!-- This @value assignment is done by conversion program --&gt;
                        &lt;/ref:locator-params&gt;
                    &lt;/ref:locator&gt;
                &lt;/ref:inlineobject&gt;
            &lt;/figure&gt;
            SOLICITORS ACT&lt;proc:nl/&gt;
            &lt;proc:nl/&gt; 27. (1) Section 1 of the Solicitors Act is amended by striking&lt;proc:nl/&gt; out "If a
            person, unless a party to the proceeding, commences" at the&lt;proc:nl/&gt; beginning and
            substituting "Subject to subsection (2), if a person&lt;proc:nl/&gt; commences".&lt;proc:nl/&gt;
        &lt;/verbatim&gt;
    &lt;/text&gt;
&lt;/p&gt;
             </codeblock>
        </example>

        <section>
            <title>Changes</title>
            <p>2016-07-29: <ph id="change_20160729_jm">Added Note about xml snippets that illustrate
                    image handling. Note summarizes move from Apollo to Blobstore application. UK is
                    first LBU to move to Blobstore.</ph></p>
            <p>2014-10-13: <ph id="change_20141013_PS">Added note and example to suppress
                        <targetxml>proc:nl</targetxml> from before and after of
                        <targetxml>figure/inlineobject</targetxml> when it comes inside
                        <targetxml>verbatim</targetxml> element.</ph></p>
            <p>2013-05-24: <ph id="change_20130524_SP">Updated target example, "when <b>smi</b> is
                    present".</ph></p>
            <p>2013-05-08: <ph id="change_20130508_SP">Extended the list of allowable values for
                    image handling.</ph></p>
            <p>2013-05-02: <ph id="change_20130502_SP">Updated target example to if the SMI is
                    present then a <targetxml>ref:inliineobject/@status</targetxml> attribute is set
                    to “valid”.</ph></p>
            <p>2013-05-01: <ph id="change_20130501_SP">Removed instructions for section
                        <b>"Pre-Release 4.0"</b> because according to latest Apollo markup, section
                        <b>"Release 4.0 and after"</b> and section <b>"Pre-Release 4.0"</b> now have
                    similar conversion markup.</ph></p>
            <p>2013-04-30: <ph id="change_20130430_SP">Updated target sample according to latest
                    Apollo markup.</ph></p>
            <p>2013-02-18: <ph id="change_20130218_SP">Created two sections, one for <b>"Release 4.0
                        and after"</b> and another for <b>"Pre-Release 4.0"</b>.</ph></p>
            <p>2013-02-18: Target example updated per inlineobject instructions. </p>
            <p>2012-11-30:<ph id="change_20121203_rj"> Moved full conversion instruction to new base
                    topic <sourcexml>inlineobject</sourcexml> to
                        <targetxml>ref:inlineobject</targetxml>. This topic now specific to
                        <targetxml>figure/ref:inlineobject</targetxml> mapping.</ph></p>
            <p>2012-10-26: Changed to reflect recent requirements for attachment-type links.</p>
        </section>
    </body>
	</dita:topic>
    <dita:topic  id="Rosetta_inlineobject-to-LexisAdvance_ref.inlineobject_BLOBSTORE"/>
        

    <!-- created 2 global parameters to be used in driver, 
        
        <xsl:param name="inlineobjBoilerplateFiles" select="('xxx.gif', 'xxx.png')"/> for boilerplate filenames that ARE
        to be converted to ref:inlineobject.
        
        <xsl:param name="inlineobjFilesToSuppress" select="('yyy.png', 'yyy.gif')"/> for filenames that are to be 
        *SUPPRESSED* from conversion but require special handling elsewhere.  That other handling is not specified in this module
        
    When the @filename attribute of inlineobject is not on either of those lists, we will output the figure wrapper in this module.    
    
    This will allow us to be LBU-specific in names of files for specific handling.
    
    
    JL
    -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_inlineobject-LxAdv-figure_ref.inlineobject.dita  -->


    <!-- <xsl:param name="inlineobjFilesToSuppress"/>
	<xsl:param name="inlineobjBoilerplateFiles" select="('1.gif', '2.gif', '3.gif', '4.gif', '5.gif', 'IconSignalPositive.gif', 'IconSignalNegative.gif', 'IconSignalNeutral.gif', 'IconSignalPossibleNegative.gif', 'IconSignalCiteInfoOnly.gif', 'cbcc.gif', 'leg1.gif', 'mb.gif', 'au_repealed.gif', 'au_exclaim.gif', '1.png', '2.png', '3.png', '4.png', '5.png', 'IconSignalPositive.png', 'IconSignalNegative.png', 'IconSignalNeutral.png', 'IconSignalPossibleNegative.png', 'IconSignalCiteInfoOnly.png', 'cbcc.png', 'leg1.png', 'mb.png', 'au_repealed.png', 'au_exclaim.png')"/>
	 -->  
    <xsl:template match="inlineobject[not(@filename=$inlineobjFilesToSuppress 
        or @filename=$inlineobjBoilerplateFiles 
        or parent::blockquote
        or parent::dispformula 
        )]">
        <!--  Paul: I removed this bodytext parent check from the not() part of the match predicate.  
            It was causing objects to get suppressed.
        "or parent::bodytext"
        FYI:
        parent::blockquote seems to be handled by 	<xsl:template match="blockquote[inlineobject and not(inlinobject/following-sibling::* or inlineobject/preceding-sibling::*)]">
        parent::dispformula is handled by 	<xsl:template match="dispformula">
-->   
        <!-- Ravikant: 2018-03-09 Added the streamID 'MY01','MY02','MY03','MY04','MY05LB','MY05LL','MY06','MY07' for blobstoreStreams -->
            
        <xsl:variable name="blobstoreStreams" select="('UK01','UK02','UK03', 'UK04', 'UK05', 'UK06', 'UK07', 'UK08CA', 'UK08OR', 'UK09', 'UK10', 'UK11DA', 'UK11DN', 'UK12', 'UK14', 'UK15', 'UK15', 'UK16', 'UK17', 'UK17', 'UK18', 'UK22CF', 'UK22CS','HK01','HK02', 'HK03','HK04','HK05','HK06','HK07','HK08', 'HK09', 'MY01','MY02','MY03','MY04','MY05LB','MY05LL','MY06','MY07'
            )"></xsl:variable>
        <!-- Paul: I removed 2 non-uk streams from the $blobstoreStreams.
            I'm pretty sure people were only doing this to get the "when" behavior below instead of the "otherwise".
            They aren't blobstore streams.  See otherwise clause comment.  I know the otherwise <figure> output is difference from DT but i think that may be incorrect.
            As of 2017-05-27, the ONLY blobstore streams are UK.  No other LBU has moved there yet.

            , 'CA19', 'AU04' 
        -->
            <xsl:choose>
                <!-- JL added to handle some UK streams that use blobstore; the test for link parent ensures the output is valid
                as figure isn't valid in ref:marker
                -->
                <xsl:when test="$streamID=$blobstoreStreams">
                	<!-- JD: 2017-06-08: similar to Paul's note below, UK08CA is adding a <figure> wrapper; 
                		I assume this is because the overlapping conditions in CCCC-10540 and CCCC-10368), 
                		including this dubious instruction: 
                		"If the inlineobject is a diagram or picture illustrating textual material (e.g. not a minor icon or symbol), inlineobject becomes figure/ref:inlineobject."
                		(how are we or the XSLT processor to know whether the image is a diagram or picture illustrating textual material?)
                		
                		For now, hacking with additional xsl:when clause
                	-->
                    <xsl:choose>
                        <xsl:when test="parent::h[$streamID='UK09']">
                            <xsl:call-template name="inlineobjblobstore"/>
                        </xsl:when>
                        <xsl:when test="parent::link | parent::figure | parent::emph | parent::publication  and not(parent::emph/parent::h) or (parent::text and $streamID=('UK08CA','UK11DA','UK06'))">
                            <xsl:call-template name="inlineobjblobstore"/>
                        </xsl:when>               
                      <!-- JD: 2017-10-31: when ancestor is figure the <figure> element has already been created.  
                        This may be brittle; the source is:
                      <figure>
                        <p>
                           <text>
                              <inlineobject ...>
                            </text>
                        </p>
                      </figure>
                      -->
                      <xsl:when test="$streamID=('UK01','UK08OR') and ancestor::figure">
                        <xsl:call-template name="inlineobjblobstore"/>
                      </xsl:when>                      
                        <xsl:otherwise>
                            <xsl:choose>
                                <!-- Awantika: Added condition when parent is case:judgements for HK03 -->
                                <xsl:when test="$streamID='HK03' and parent::case:judgments">
                                    <attachments>
                                        <appendix>
                                            <bodytext>
                                                <figure xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
                                                    <xsl:call-template name="inlineobjblobstore"/>
                                                </figure>
                                            </bodytext>
                                        </appendix>
                                    </attachments>  
                                </xsl:when>
                                
                                <!-- Ravikant: Added condition when parent is jrnl:articletitle for MY02 -->
                                <xsl:when test="$streamID='MY02' and parent::jrnl:articletitle">
                                    <xsl:call-template name="inlineobjblobstore"/>
                                </xsl:when>
                                <xsl:otherwise>
                                    <figure xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
                                        <xsl:call-template name="inlineobjblobstore"/>
                                    </figure>
                                </xsl:otherwise>
                            </xsl:choose>
                           
                        </xsl:otherwise>
                    </xsl:choose>
                </xsl:when>
                <xsl:otherwise>
 <!-- Paul: DT seems to be omitting the figure wrapper.  is this correct? -->
                    <xsl:choose>
                        <xsl:when test="$streamID = ('AU16') or parent::figure[$streamID= ('AU15' , 'AU05', 'NZ12', 'AU18')] or parent::remotelink[ ( @service = 'URL' or @href ) and not( ( contains( . , 'www' ) or contains( . , 'http' ) or contains( . , 'mailto' ) or contains( . , 'ftp' ) ) ) ]">
                                <xsl:apply-templates select="." mode="refinline"/>                            
                        </xsl:when>
                        <!-- 20170607:  MCJ:  Added condition for AU06.  I am not sure why this wouldn't be the default handling (to avoid a figure within a figure) but
                                              don't want to affect other streams. -->
                        <xsl:when test="($streamID = 'AU06') or ($streamID = 'NZ05') or ($streamID='AU19_CC')">
                            <xsl:choose>
                                <!-- this condition is probably not complete in terms of preventing a double wrapper for 'figure'.  The test for an ancestor figure will
                                     cover most things but could also cause trouble if there are constructs in between the outer wrapper and the current
                                     inline object that need different handling.  This module could use some refactoring (not just for this stream area). -->
                                <xsl:when test="(./parent::leg:bodytext or ./parent::li or ./parent::text or ./parent::legfragment) and not(ancestor::figure)">
                                    <figure xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
                                        <xsl:apply-templates select="." mode="refinline" />
                                    </figure>
                                </xsl:when>
                                <xsl:otherwise>
                                    <xsl:apply-templates select="." mode="refinline"/>                                    
                                </xsl:otherwise>
                            </xsl:choose>
                        </xsl:when>
                    		<!-- JD: probably more applicable, but setting to AU11 for now.  leg:bodytext/inlineobject would need to create primlaw:bodytext/p/text/figure -->
                    		<xsl:when test="$streamID='AU11' and parent::leg:bodytext">
                    			<p xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
                    				<text>
                    					<figure>
                    						<xsl:apply-templates select="." mode="refinline"/>
                    					</figure>
                    				</text>
                    			</p>
                    		</xsl:when>
                    	<!-- JD: probably more applicable, but settting to NZ18 for now.  Do not create <figure> wrapper when under <lnci:content> -->
                    	<xsl:when test="$streamID='NZ18' and parent::remotelink/parent::ci:content">
                    		<xsl:apply-templates select="." mode="refinline"/>                    		
                    	</xsl:when>
                        <xsl:when test="$streamID='AU04' and preceding-sibling::*[1][self::ci:cite]">
                            <xsl:apply-templates select="." mode="refinline"/>
                        </xsl:when>
                        <xsl:when test="parent::figure">
                            <xsl:apply-templates select="." mode="refinline"/>
                        </xsl:when>
                        <!-- Awantika: 2017-12-28- Added when condition for ancestor figure as two wrappers for figure
                        were being created. Webstar # 7080120-->
                        <xsl:when test="ancestor::figure and $streamID='AU04'">
                            <xsl:apply-templates select="." mode="refinline"/>
                        </xsl:when>
                        <xsl:otherwise>
                            <figure xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
                                <xsl:apply-templates select="." mode="refinline"/>
                            </figure>
                        </xsl:otherwise>
                    </xsl:choose>
                </xsl:otherwise>
            </xsl:choose>            
		
	</xsl:template> 
    
    
    <!-- JL Included template name inlineobjblobstore from another module with DITA instructions
    <dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_inlineobject-to-LexisAdvance_ref.inlineobject_BLOBSTORE">
    -->
    <xsl:template match="inlineobject" name="inlineobjblobstore">
        <xsl:choose>
            <xsl:when test="$streamID=('AU04', 'AU06') and parent::blockquote">
                <p>
                    <figure>
                        <ref:inlineobject>
                            <xsl:apply-templates select="@height | @width"/>
                            <ref:locator>
                                <ref:locator-key>
                                    <ref:key-name name="object-key"/>
                                    <ref:key-value>
                                        <xsl:apply-templates select="@filename"/>
                                    </ref:key-value>
                                </ref:locator-key>
                                <ref:locator-params>
                                    <proc:param name="object-type" value="IMG"/>
                                    <proc:param name="external-or-local" value="external"/>
                                    <proc:param name="object-server" value="Blobstore"/>
                                    <proc:param name="object-pguid" value="urn:contentItem:0000-0000-0000-0000-00000-00"/>
                                    <proc:param name="componentseq" value="1"/>
                                </ref:locator-params>
                            </ref:locator>
                        </ref:inlineobject>
                    </figure>
                </p>
            </xsl:when>
            <xsl:otherwise>
                <ref:inlineobject>
                    <xsl:apply-templates select="@height | @width"/>
                    <ref:locator>
                        <ref:locator-key>
                            <ref:key-name name="object-key"/>
                            <ref:key-value>
                                <xsl:apply-templates select="@filename"/>
                            </ref:key-value>
                        </ref:locator-key>
                        <ref:locator-params>
                            <proc:param name="object-type" value="IMG"/>
                            <proc:param name="external-or-local" value="external"/>
                            <proc:param name="object-server" value="Blobstore"/>
                            <proc:param name="object-pguid" value="urn:contentItem:0000-0000-0000-0000-00000-00"/>
                            <proc:param name="componentseq" value="1"/>
                        </ref:locator-params>
                    </ref:locator>
                </ref:inlineobject>
            </xsl:otherwise>
        </xsl:choose>
        
    </xsl:template>
    
    <xsl:template match="inlineobject/@height | inlineobject/@width">
        <xsl:copy-of select="."/>
    </xsl:template>
    
    
    <xsl:template match="inlineobject/@filename">
        <xsl:attribute name="value">
            <xsl:apply-templates select="parent::inlineobject/@dpsi"/>
            <xsl:value-of select="."/>
        </xsl:attribute>
    </xsl:template>
    
    <xsl:template match="inlineobject/@dpsi">
        <xsl:value-of select="concat('[[DPSI:', . , ']]')"/>
    </xsl:template>  
    
    
    <xsl:template match="inlineobject[$streamID='CA10']" priority="25">
        <figure xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
            <xsl:apply-templates select="." mode="refinline"/>
        </figure>
    </xsl:template> 
    
    <xsl:template match="inlineobject[@filename='au_repeal01.png'][$streamID='AU04'] | inlineobject[@filename='au_repeal01.gif'][$streamID='AU04']">
        <legisinfo:status statuscode='repealed'/>
    </xsl:template>
    

    <xsl:template match="nl[following-sibling::*[1][self::inlineobject[@filename!=$inlineobjFilesToSuppress]]][following-sibling::*[2][self::nl]] | nl[preceding-sibling::*[1][self::inlineobject[@filename!=$inlineobjFilesToSuppress]]][following-sibling::*[2][self::nl]]"/>

		

</xsl:stylesheet>
