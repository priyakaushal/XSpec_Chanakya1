<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" xmlns:proc="http://www.lexisnexis.com/xmlschemas/content/shared/process-elements/1/" xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/" version="2.0" exclude-result-prefixes="dita doc docinfo ref">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="note">
   <title>note <lnpid>id-CA02DS-12837</lnpid></title>
   <body>
      <section>
        <p>
          <sourcexml>note</sourcexml> becomes <targetxml>note</targetxml> 
          comes with optional attribute <sourcexml>@notetype</sourcexml> becomes <targetxml>@notetype</targetxml>.
        </p>
      </section>
       <note>If <sourcexml>remotelink</sourcexml> is direct child element of
                <sourcexml>note</sourcexml>, then during NL conversion it will be mapped to
           <targetxml>note/bodytext/p/text/ref:crossreference</targetxml>. So mapping for Rosetta scenario: <sourcexml>/DIGESTDOC/dig:body/dig:collection/dig:level/dig:info/note</sourcexml> will become <targetxml>/seclaw:seclaw/seclaw:body/seclaw:level/seclaw:bodytext/seclaw:digestgrp/seclaw:digestinfo/note/bodytext/p/text/ref:crossreference</targetxml>.</note>

     <example>
       <title>Source XML</title>
       <codeblock>

&lt;note notetype="other"&gt;
    &lt;remotelink dpsi="0EJA" remotekey1="DOC-ID" remotekey2="CD-AEI 2551" service="DOC-ID"&gt;[version anglaise]&lt;/remotelink&gt;
&lt;/note&gt;


    </codeblock>
     </example>
     
     <example>
       <title>Target XML</title>
       <codeblock>

&lt;note notetype="other"&gt;
    &lt;bodytext&gt;
        &lt;p&gt;
            &lt;text&gt;
                &lt;ref:crossreference crossreferencetype="seeAlso"&gt;
                    &lt;ref:content&gt;[version anglaise]&lt;/ref:content&gt;
                    &lt;ref:locator&gt;
                        &lt;ref:locator-key&gt;
                            &lt;ref:key-name name="DOC-ID"/&gt;
                            &lt;ref:key-value value="0EJA-CD-AEI 2551"/&gt;
                        &lt;/ref:locator-key&gt;
                    &lt;/ref:locator&gt;
                &lt;/ref:crossreference&gt;
            &lt;/text&gt;
        &lt;/p&gt;
    &lt;/bodytext&gt;
&lt;/note&gt;

    </codeblock>
     </example>
     
   </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA02-Case_Summaries\CA02DS_DIGESTDOC_to_seclaw\note.dita  -->
	 
    <!-- Vikas Rohilla : Template to match the note and creates the note/bodytext/p/text   -->
    <xsl:template match="note">
       <note>
            <xsl:apply-templates select="@*"/>
            <bodytext>
                <p>
                    <text>
                        <xsl:apply-templates select="node()"/>
                    </text>
                </p>
            </bodytext>
        </note>
        
    </xsl:template>
    <!--Vikas Rohilla : Tempalte to match the note/@notetype and create the attribute notetype-->
	<xsl:template match="note/@notetype">
		<xsl:attribute name="notetype">
			<xsl:value-of select="."/>
		</xsl:attribute>
	</xsl:template>
    
    <!-- Vikas Rohilla : Template to match the note[@notetype='other']/remotelink[contains(.,'[version anglaise]') or contains(.,'[French Version]')] with the mode attribute  doc-related_content  -->
    <xsl:template match="note[@notetype='other']/remotelink[contains(upper-case(.),'[VERSION ANGLAISE]') or contains(upper-case(.),'[FRENCH VERSION]')]" mode="doc-related_content">
        <doc:related-content>
            <doc:related-content-grp content-type="alternate-language-version">
                <doc:related-content-item>
                    <doc:related-content-link>
                        <ref:lnlink service="DOCUMENT">
                            <ref:marker>
                                <xsl:value-of select="."/>
                            </ref:marker>
                            <ref:locator>
                                <ref:locator-key>
                                    <ref:key-name>
                                        <xsl:attribute name="name" select="@service"/>
                                    </ref:key-name>
                                    <ref:key-value>
                                        <xsl:attribute name="value" select="@remotekey2"/>
                                    </ref:key-value>
                                </ref:locator-key>
                                <ref:locator-params>
                                    <proc:param>
                                        <xsl:attribute name="name" select="'targetdoclang'"/>
                                        <xsl:attribute name="value" select="concat(/DIGESTDOC/docinfo/docinfo:doc-lang/@lang,'-',/DIGESTDOC/docinfo/docinfo:doc-country/@iso-cc)"/>
                                    </proc:param>
                                </ref:locator-params>
                            </ref:locator>
                        </ref:lnlink>
                    </doc:related-content-link>
                </doc:related-content-item>
            </doc:related-content-grp>
        </doc:related-content>
    </xsl:template>

	

</xsl:stylesheet>