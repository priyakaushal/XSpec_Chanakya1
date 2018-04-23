<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
    xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/"
    xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" 
    xmlns:ci="http://www.lexis-nexis.com/ci"
    xmlns:source_cttr="http://www.lexis-nexis.com/glp/cttr"
    version="2.0" exclude-result-prefixes="#all">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_remotelink-self-inter-document-link-LxAdv-intra-document-link">
    <title><sourcexml>remotelink</sourcexml> (self inter-document link) to
            <targetxml>ref:lnlink</targetxml> (intra-document link) <lnpid>id-CCCC-10468</lnpid></title>
    <body>
        <section>
            <p>If a <sourcexml>remotelink</sourcexml> is created as an <i><b>inter</b>-document</i>
                link in the source file, yet its target is contained within the same source file,
                the <sourcexml>remotelink</sourcexml> must be converted to an
                    <i><b>intra</b>-document</i> link.</p>
            <p>For any given <sourcexml>remotelink</sourcexml> where its
                    <sourcexml>@refpt</sourcexml> value is equivalent to an
                    <sourcexml>refpt/@id</sourcexml> value within the same soure file, create an
                        <i><b>intra</b>-document</i> link.</p>
            <p>
                <ul>
                    <li><sourcexml>remotelink</sourcexml> becomes
                        <targetxml>ref:lnlink</targetxml>.</li>
                    <li>The attribute <sourcexml>remotelink/@status</sourcexml> is always suppressed, it is never output to the target document.</li>
                    <li>The content of <sourcexml>remotelink</sourcexml> becomes
                            <targetxml>ref:marker</targetxml>.</li>
                    <li>Create <targetxml>ref:locator</targetxml> and populate the attribute
                            <targetxml>ref:locator/@anchoridref</targetxml> with the value of
                            <sourcexml>remotelink/@refpt</sourcexml>.</li>
                </ul>
            </p>
            <note><targetxml>ref:locator/@anchoridref</targetxml> that begins with a number must
                have an underscore added at start. Also apply other identifier data type format as
                used for <targetxml>xml:id</targetxml> and <targetxml>ref:anchor/@id</targetxml>
                (e.g. change colon to underscore).</note>
        </section>
        <example>
            <title>Source XML</title>
            <codeblock>

...
&lt;remotelink refpt="CTH_ACT_1958-62_PROVLIST" remotekey1="REFPTID"
			service="DOC-ID"&gt;List of Provisions&lt;/remotelink&gt;
...
&lt;leg:heading&gt;
    &lt;title&gt;&lt;refpt id="CTH_ACT_1958-62_PROVLIST" type="ext"/&gt;List of provisions&lt;/title&gt;
&lt;leg:heading&gt;
...

	</codeblock>
        </example>
        <example>
            <title>Target XML</title>
            <codeblock>

...
&lt;ref:lnlink&gt;                                        
	&lt;ref:marker&gt;List of Provisions&lt;/ref:marker&gt;                                        
	&lt;ref:locator anchoridref="CTH_ACT_1958-62_PROVLIST"/&gt;                                            	                            
&lt;/ref:lnlink&gt;
...
&lt;ref:anchor id="CTH_ACT_1958-62_PROVLIST" anchortype="global"/&gt;
&lt;heading&gt;
    &lt;title&gt;List of provisions&lt;/title&gt;
&lt;heading&gt;
...

	</codeblock>
        </example>
        <section>
            <title>Changes</title>
            <p>2015-05-22: <ph id="change_20150522_JCG">Added an instruction to explicitly indicate <sourcexml>remotelink/@status</sourcexml> is always dropped (suppressed). This is a very low-priority change and has been added for technical correctness, particularly with respect to new CIs. Existing scripts do not have to implement this change unless needed since prior to the change <targetxml>remotelink/@status</targetxml> handling was not explicitly specified.</ph></p>            
          <p>2013-08-12: <ph id="change_20130812_cn">Changed module heading from ref:crossreference to ref:lnlink.  NO
              instructions are changed.  WebTeam # 230229. Affects all streams.</ph></p>
            <p>2013-08-07: <ph id="change_20130807_jm">Changed target to
                        <targetxml>ref:lnlink</targetxml>; formerly
                        <targetxml>ref:crossreference</targetxml>. Changed because the only
                    supported markup for intradoc linking is <targetxml>ref:lnlink</targetxml>, as
                per Bency Thomas. WebTeam # 230229. Affects all streams.</ph></p>
            <p>2012-11-01: <ph id="change_20121101_xx">Created.</ph></p>
        </section>
        <!--<section>
            <title>Changes</title>
            <p>2012-11-01: Created.</p>
        </section>-->
    </body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_remotelink-self-inter-document-link-LxAdv-intra-document-link.dita  -->


<!-- keys for standalone testing below. These keys need to be in the driver file for this module to work. -->
    
<!--    <xsl:key name="idTypeValue" match="*[@id]" use="@id"/>
    <xsl:key name="idTypeValue" match="*[@ID]" use="@ID"/>-->
    
    <!-- Awantika: 2017-12-29: Added not(parent::docinfo:assoc-links-grp and $streamID='AU04') for webstar  #7078784 -->
    
    <xsl:template match="remotelink[key('idTypeValue', @refpt)[self::refpt]][not(ancestor::ci:content)][not(parent::source_cttr:annot and $streamID=('HK08' , 'AU02', 'AU04','UK05','CA03'))]
        [not(parent::docinfo:assoc-links-grp and $streamID='AU04')]" priority="26">
	    <ref:lnlink>
	        <ref:marker><xsl:apply-templates select="node()"/></ref:marker>
	        <ref:locator>
	            <xsl:attribute name="anchoridref">
	                <xsl:apply-templates select="@refpt" mode="intradoc"/>
	            </xsl:attribute>
	        </ref:locator>
	    </ref:lnlink>        
	</xsl:template>
    
    <xsl:template match="remotelink/@refpt" mode="intradoc">
        <xsl:call-template name="normalizeIdString"/>
    </xsl:template>

</xsl:stylesheet>