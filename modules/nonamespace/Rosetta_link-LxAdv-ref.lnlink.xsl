<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
    xmlns:ci="http://www.lexis-nexis.com/ci"
    xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo"
    xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"
    xmlns:proc="http://www.lexisnexis.com/xmlschemas/content/shared/process-elements/1/" 
    xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita docinfo ci">
    
    

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_link-to-LexisAdvance_ref.lnlink">
    <title><sourcexml>link</sourcexml> to <targetxml>ref:lnlink[@service="ATTACHMENT"]</targetxml> <lnpid>id-CCCC-10394</lnpid></title>
    <body>
        <section>
            <p><sourcexml>link</sourcexml> becomes <targetxml>ref:lnlink[@service="ATTACHMENT"]</targetxml> and children can be converted as follows: 
                <ul>
                    <li>The attribute <sourcexml>link/@status</sourcexml> is always suppressed, it is never output to the target document.</li>  
                    <li><sourcexml>link</sourcexml> content becomes <targetxml>ref:marker</targetxml>. </li>
                    <li>Create <targetxml>ref:locator</targetxml> and describe as: 
                        <ul>
                            
                            <li>Create <targetxml>ref:locator-key</targetxml> and describe as: 
                                <ul>
                                    
                                    <li>Create <targetxml>ref:key-name</targetxml> with <targetxml>@name="attachment-key"</targetxml>. 
                                        This line is hard coded.
                                    </li>
                                    
                                    <li>Create <targetxml>ref:key-value</targetxml> with
                                        <targetxml>@value</targetxml>, as follows: 
                                        <ul>
                                            <li>If <sourcexml>link[@smi]</sourcexml> is present,
                                                copy <sourcexml>link[@filename]</sourcexml> to
                                                  <targetxml>@value</targetxml></li>
                                            <li>If <sourcexml>link[@smi]</sourcexml> is not present,
                                                then <targetxml>@value="X-Y-Z"</targetxml>, where X
                                                is LNI, Y is SMI, and Z is filename. LNI and SMI
                                                (retreived from CSSM) values are added by
                                                <b>"Workflow Generic Image Handlers</b>. The last
                                                component "Z" is copied from
                                                <sourcexml>link[@filename]</sourcexml>.</li>
                                            <li>If <sourcexml>link[@smi]</sourcexml> is not present,
                                                then conversion program should pass
                                                <sourcexml>link[@filename]</sourcexml> value to
                                                <b>“Workflow Generic Image Handler”</b> as is and
                                                “Workflow Generic Image Handler” will do conversion
                                                of filename value as noted above. <b>Conversion of
                                                    filename replaces underscore, blank, and period
                                                    with hyphen.</b></li>
                                        </ul></li>
                                </ul></li>
                            
                            <li>Create <targetxml>ref:locator-params</targetxml> and describe as: 
                                <ul>
                                    <li><targetxml>ref:locator-params</targetxml> element contains locator parameters. It provides a parameter
                                        (identified as a name/value pair) passing mechanism for link services. Each parameter is expressed as a
                                        <targetxml>@name</targetxml> and <targetxml>@value</targetxml> pair in <targetxml>proc:param</targetxml>
                                        element. It is used to identify the attachment type and component sequence.
                                    </li>
                                    
                                    <li>Create <targetxml>proc:param</targetxml> with <targetxml>@name</targetxml> and <targetxml>@value</targetxml>.
                                        <targetxml>@name</targetxml> and <targetxml>@value</targetxml> are required attributes in
                                        <targetxml>proc:param</targetxml>.
                                    </li>
                                    
                                    <li>Three <targetxml>proc:param[@name]</targetxml> and <targetxml>proc:param[@value]</targetxml> pairs are described
                                        below: 
                                        <ul>
                                            <li><targetxml>proc:param[@name="componentseq"]</targetxml> with the attribute
                                                <targetxml>@value="1"</targetxml>. This line is hard coded.
                                            </li>
                                            <li><targetxml>proc:param[@name="attachment-type"]</targetxml> with the
                                                attribute <targetxml>@value</targetxml>. The <targetxml>@value</targetxml> value is from
                                                <targetxml>link[@type]</targetxml>. Allowable values: “image”; “PDF”; “spreadsheet”; “audio”; “HTML”; “video”; “hotdoc”; “wordprocess”.
                                            </li>
                                            <li><targetxml>proc:param[@name="attachment-smi"]</targetxml> with the
                                                attribute <targetxml>@value</targetxml>. The <targetxml>@value</targetxml>
                                                value is from <sourcexml>link[@smi]</sourcexml>. If
                                                <sourcexml>link[@smi]</sourcexml> is not present, obtain SMI from CSSM.
                                                This <targetxml>@value</targetxml> assignment is done by conversion program.</li>
                                        </ul></li></ul></li>
                        </ul></li></ul>
            </p>
        </section>
        
        <example>
            <title>Source XML. Source @smi present</title>
            <codeblock>

&lt;link type="pdf" smi="98765" filename="xmpl-c1.pdf" status="valid"&gt;Download in PDF&lt;/link&gt;

	</codeblock>
        </example>
        
        <example>
            <title>Target XML. Source @smi present</title>
            <codeblock>

&lt;ref:lnlink service="ATTACHMENT"&gt;
    &lt;ref:marker role="label"&gt;Download in PDF&lt;/ref:marker&gt; 
    &lt;ref:locator&gt;
        &lt;ref:locator-key&gt;
            &lt;ref:key-name name="attachment-key"/&gt;
            &lt;ref:key-value value="xmpl-c1"/&gt;
        &lt;/ref:locator-key&gt;
        &lt;ref:locator-params&gt;
            &lt;proc:param name="componentseq" value="1"/&gt;
            &lt;proc:param name="attachment-type" value="PDF"/&gt;
            &lt;proc:param name="attachment-smi" value="98765"/&gt;
        &lt;/ref:locator-params&gt;
    &lt;/ref:locator&gt;
&lt;/ref:lnlink&gt;

	</codeblock>
        </example>
        
        <example>
            <title>Source XML. Source @smi not present</title>
            <codeblock>

&lt;link type="pdf" filename="pbap-c1.pdf" status="valid"&gt;Download in PDF&lt;/link&gt;

	</codeblock>
        </example>
        
        <example>
            <title>Target XML. Source @smi not present</title>
            <codeblock>

&lt;ref:lnlink service="ATTACHMENT"&gt;
    &lt;ref:marker role="label"&gt;Download in PDF&lt;/ref:marker&gt; 
    &lt;ref:locator&gt;
        &lt;ref:locator-key&gt;
            &lt;ref:key-name name="attachment-key"/&gt;
            &lt;ref:key-value value="X-Y-pbap-c1"/&gt; 
            &lt;!-- X and Y are LNI and SMI values obtained from CSSM --&gt;
        &lt;/ref:locator-key&gt;
        &lt;ref:locator-params&gt;
            &lt;proc:param name="componentseq" value="1"/&gt;
            &lt;proc:param name="attachment-type" value="PDF"/&gt;
            &lt;proc:param name="attachment-smi" value=""/&gt; 
            &lt;!-- @value populated with SMI obtained from CSSM --&gt;
            &lt;!-- This @value assignment is done by conversion program --&gt;
        &lt;/ref:locator-params&gt;
    &lt;/ref:locator&gt;
&lt;/ref:lnlink&gt;

	</codeblock>
        </example>
        
        <section>
            <title>Changes</title>
            <p>2015-09-08: <ph id="change_20150908_SNB">Minor XPATH correction in title to change 
                <targetxml>ref:lnlink/@service="ATTACHMENT"</targetxml> to be 
                <targetxml>ref:lnlink[@service="ATTACHMENT"]</targetxml>.</ph></p>
            <p>2015-05-22: <ph id="change_20150522_JCG">Changed the instructions to indicate <sourcexml>link/@status</sourcexml> is always dropped and removed <targetxml>ref:lnlink/@status</targetxml> from target example. This is a very low-priority change and has been added for technical correctness, particularly with respect to new CIs. Existing scripts do not have to implement this change since <targetxml>ref:lnlink/@status</targetxml> is ignored by LexisAdvance if it is present.</ph></p>
            <p>2013-09-24: <ph id="change_20130924_jm">Not a rule change. Modified examples to illustrate when <sourcexml>@status</sourcexml> suppressed and when retained.</ph></p>
            <p>2013-08-21: <ph id="change_20130821_raj">Added instruction for when to suppress <sourcexml>@status</sourcexml>.</ph></p>
            <p>2013-05-24: <ph id="change_20130524_SP">Updated instruction for handling of link when <b>smi</b> is present and some of the verbiage is changed.</ph></p>
            <p>2013-05-02: <ph id="change_20130502_SP">Some of the verbiage is changed and updated target example to if the SMI is present then a <targetxml>ref:lnlink/@status</targetxml> attribute is set to “valid”.</ph></p>
            <p>2013-05-01: <ph id="change_20130501_SP">Updated instructions and target example per latest Apollo markup.</ph></p>
            <p>2013-02-26: <ph id="change_20130226_SP">Updated target example per project requirement.</ph></p>
            <p>2012-10-26: Changed to reflect recent requirements for attachment-type links.</p>
        </section>
        
        <section>
            <!-- Added from /Rosetta-to-LA/modules/nonamespace/Rosetta_ci.cite-LxAdv-lnci.cite.xsl -->
            <p><b>Exception: When <sourcexml>link</sourcexml> is used as intra-document linking within
                <sourcexml>ci:content</sourcexml></b>.</p>
            <p>If the <sourcexml>ci:content</sourcexml> contains a <sourcexml>link</sourcexml> child,
                the <sourcexml>link</sourcexml> wrapper markup (not its content) shall be removed (omit
                tag and retain content) and the <sourcexml>link/@refpt</sourcexml> value shall be moved
                to <targetxml>lnci:cite/@citeref</targetxml>.</p>
        </section>
    </body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_link-LxAdv-ref.lnlink.dita  -->


    <!--   
        
        *****PLEASE READ*****
        
Image handling background note 2017-11-30:
        
Please use $streamID in Rosetta_link-LxAdv-ref.lnlink.xsl due to notation below.  

It was originally intended that Apollo jurisdictions would use these (when first introduced in the DITA):

\svn\dataArch\XSLT\ContentArch\Rosetta-to-LA\modules\nonamespace\Rosetta_lnlink_service_ATTACHMENT-LxAdv-ref.lnlink.xsl
\svn\dataArch\XSLT\ContentArch\Rosetta-to-LA\modules\nonamespace\Rosetta_link-LxAdv-ref.lnlink.xsl
\svn\dataArch\XSLT\ContentArch\Rosetta-to-LA\modules\nonamespace\Rosetta_inlineobject-LxAdv-ref.inlineobject.xsl

And blobstore jurisdictions would use these (notice BLOBSTORE in the file name):

\svn\dataArch\XSLT\ContentArch\Rosetta-to-LA\modules\nonamespace\Rosetta_lnlink_service_ATTACHMENT-LxAdv-ref.lnlink_BLOBSTORE.xsl
\svn\dataArch\XSLT\ContentArch\Rosetta-to-LA\modules\nonamespace\Rosetta_link-LxAdv-ref.lnlink_BLOBSTORE.xsl
\svn\dataArch\XSLT\ContentArch\Rosetta-to-LA\modules\nonamespace\Rosetta_inlineobject-LxAdv-ref.inlineobject_BLOBSTORE.xsl

They were originally meant to be mutually exclusive.

Ditamap includes (and subsequently xsl drivers) may have included both blobstore and Apollo handling during the transition from one to the other even though only one image handling 
is done in an LBU.  Image handling is LBU wide and not individual stream specific.

Very importantly, there is a named template (@name="generic-link") in Rosetta_link-LxAdv-ref.lnlink.xsl which is called by both "Rosetta_p-LxAdv-p.xsl" and "Rosetta_bodytext-link-LxAdv-seclaw.bodytext-p-text-ref.lnlink.xsl".   Both of these common modules are not LBU specific.  . 
This effectively, although unintentionally, crossed the original exclusivity described above.

Current fix is to use $streamID indicating HK and UK which are currently the only blobstore jurisdictions.  Ultimately, goal is to re-establish these image handling files are mutually exclusive.
-->


    <xsl:template match="link[not(parent::docinfo:assoc-links or parent::docinfo:assoc-links-grp or parent::text[parent::docinfo:assoc-links or parent::docinfo:assoc-links-grp])]"
        name="generic-link">
        <xsl:choose>
            <!-- Awantika:2017-11-07: updated for NZ12 for webstar #7039775 and #7076843 -->
            <xsl:when test="$streamID='NZ12' and parent::pgrp or parent::li">
                <p>
                    <text>
                        <ref:lnlink service="ATTACHMENT">
                            <ref:marker role="label"><xsl:apply-templates/></ref:marker>
                            <ref:locator>
                                <ref:locator-key>
                                    <ref:key-name name="attachment-key"/>
                                    <ref:key-value>
                                        <xsl:attribute name="value">
                                            <xsl:choose>
                                                <!-- JL: 20170526: Per Roopa and Selva, we should output the filename extension for image links to work -->
                                                <xsl:when test="@smi"><xsl:value-of select="@filename"/></xsl:when>
                                                <xsl:otherwise>
                                                    <xsl:value-of select="@filename"/>
                                                </xsl:otherwise>
                                            </xsl:choose>
                                        </xsl:attribute>
                                    </ref:key-value>
                                </ref:locator-key>
                                <ref:locator-params>
                                    <proc:param name="componentseq" value="1"/>
                                    <proc:param>
                                        <xsl:attribute name="name">attachment-type</xsl:attribute>
                                        <xsl:attribute name="value">
                                            <xsl:apply-templates select="@type"/>
                                        </xsl:attribute>
                                    </proc:param>
                                    <proc:param>
                                        <xsl:attribute name="name">attachment-smi</xsl:attribute>
                                        <xsl:attribute name="value">
                                            <xsl:choose>
                                                <xsl:when test="@smi">
                                                    <xsl:value-of select="@smi"/>                        				
                                                </xsl:when>
                                                <xsl:otherwise>
                                                    <xsl:value-of select="$smi"/>                        				
                                                </xsl:otherwise>
                                            </xsl:choose>
                                        </xsl:attribute>
                                    </proc:param>              
                                </ref:locator-params>
                            </ref:locator>
                        </ref:lnlink>
                    </text>
                </p>
            </xsl:when>
            <xsl:otherwise>
                <ref:lnlink service="ATTACHMENT">
                    <ref:marker role="label"><xsl:apply-templates/></ref:marker>
                    <ref:locator>
                        <ref:locator-key>
                            <ref:key-name name="attachment-key"/>
                            <ref:key-value>
                                <xsl:attribute name="value">
                                    <xsl:choose>
                                        <!-- JL: 20170526: Per Roopa and Selva, we should output the filename extension for image links to work -->
                                        <xsl:when test="@smi"><xsl:value-of select="@filename"/></xsl:when>
                                        <xsl:otherwise>
                                            <xsl:value-of select="@filename"/>
                                        </xsl:otherwise>
                                    </xsl:choose>
                                </xsl:attribute>
                            </ref:key-value>
                        </ref:locator-key>
                        <ref:locator-params>
                            <!--SS - 2017-11-26: Added the below condition for added blobstore when link comes under 'paragraph' p.-->
                            <!-- JL: 2017-11-30: this module is supposed to be for Apollo but has been included in some blobstore LBUs (HK, UK). 
                                Using streamID to make sure Blobstore information goes to Blobstore LBUs. -->
                            <xsl:choose>
                                <xsl:when test="contains(./@type, 'wordprocess') and (starts-with($streamID, 'HK') or starts-with($streamID , 'UK'))">
                                    <xsl:choose>
                                        <xsl:when test="contains(./@type, 'wordprocess')">
                                            <proc:param name="attachment-type" value="wordprocess"/>
                                        </xsl:when>
                                        <xsl:otherwise>
                                            <proc:param name="attachment-type" value="IMG"/>
                                        </xsl:otherwise>
                                    </xsl:choose>
                                    <proc:param name="external-or-local" value="external"/>		        
                                    <proc:param name="attachment-server" value="BlobStore"/>
                                    <proc:param name="attachment-pguid" value="urn:contentItem:0000-0000-0000-0000-00000-00"/>
                                    <proc:param name="componentseq" value="1"/>	
                                </xsl:when>
                                 <!-- Vikas Rohilla : 02/04/2018 Added the Condtion for the MY streams.                                -->
                                <xsl:when test="./@type='pdf' and starts-with($streamID, 'MY')">
                                    <proc:param name="attachment-type" value="PDF"/>
                                    <proc:param name="external-or-local" value="external"/>		        
                                    <proc:param name="attachment-server" value="BlobStore"/>
                                    <proc:param name="attachment-pguid" value="urn:contentItem:0000-0000-0000-0000-00000-00"/>
                                    <proc:param name="componentseq" value="1"/>	
                                </xsl:when>
                                <xsl:otherwise>
                                    <!--SS: end here-->
                            <proc:param name="componentseq" value="1"/>
                            <proc:param>
                                <xsl:attribute name="name">attachment-type</xsl:attribute>
                                <xsl:attribute name="value">
                                    <xsl:apply-templates select="@type"/>
                                </xsl:attribute>
                            </proc:param>
                            <proc:param>
                                <xsl:attribute name="name">attachment-smi</xsl:attribute>
                                <xsl:attribute name="value">
                                    <xsl:choose>
                                        <xsl:when test="@smi">
                                            <xsl:value-of select="@smi"/>                        				
                                        </xsl:when>
                                        <xsl:otherwise>
                                            <xsl:value-of select="$smi"/>                        				
                                        </xsl:otherwise>
                                    </xsl:choose>
                                </xsl:attribute>
                            </proc:param>     
                                </xsl:otherwise>
                            </xsl:choose>
                        </ref:locator-params>
                    </ref:locator>
                </ref:lnlink>
            </xsl:otherwise>
        </xsl:choose>
     
    </xsl:template>

    <xsl:template match="link/@status"/>
    
	<xsl:template match="link/@smi"/>

	<xsl:template match="link/@filename"/>

	<xsl:template match="link/@type">
	    <xsl:choose>
	        <xsl:when test=".=('para','page', 'ed-pnum','refpt','logo')">
	            <xsl:message>attachment-type is invalid, cannot be determined.</xsl:message>
	        </xsl:when>
	        <xsl:when test=".=('pdf' , 'pdf-fillable')">PDF</xsl:when>
	        <xsl:when test=".='hotdoc-nonfillable'">hotdoc</xsl:when>
	        <xsl:otherwise><xsl:value-of select="."/></xsl:otherwise>
	    </xsl:choose>
	</xsl:template>
    
    <!-- MDS - 2017-03-14 - Passes through children of link if parent is ci:content
        This is taken from /Rosetta-to-LA/modules/nonamespace/Rosetta_ci.cite-LxAdv-lnci.cite.xsl documentation.  Also copied to documentation in this module.-->
    <xsl:template match="link[parent::ci:content]">
        <xsl:apply-templates/>
    </xsl:template>

<!-- Vikas Rohilla : Template to match the link[@refpt]-->
    <!-- JL removing status att because it's not valid in output schema and some modules copy it -->
    <xsl:template match="link[@refpt][not($streamID='AU21' or 'USLPA')]" priority="25">
                <ref:lnlink>
                    <ref:marker>
                        <xsl:apply-templates/>
                    </ref:marker>
                    <ref:locator>
                        <xsl:apply-templates select="@* except @status"/>
                    </ref:locator>
                </ref:lnlink>
    </xsl:template>
 
    <!-- Vikas Rohilla : Handle the empty link having no attributes and the content webstar #7045989 -->
 <xsl:template match="link[not(@*)][.='']" priority="10"/>
 
    <!-- MDS - 2017-09-07 Unhandled in NZ07-DN Examples in CI show the @alttext dropped.  There are no obviously matching structures in the ref:lnlink or ref:marker elements for LA.-->
    <xsl:template match="link/@alttext"/>
  
</xsl:stylesheet>