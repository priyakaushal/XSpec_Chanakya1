<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:ci="http://www.lexis-nexis.com/ci" xmlns:lnci="http://www.lexisnexis.com/xmlschemas/content/shared/citations/1/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita ci">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_AU_citator_inlineobject_ChildOf_ci.content_remotelink-to-LexisAdvance_lnci.content_ref.crossreference">
    <title><sourcexml>ci:content/remotelink/inlineobject</sourcexml> to <targetxml>lnci:content/ref:crossreference</targetxml> <lnpid>id-CCCC-10229</lnpid></title>
    <body>
        <section>
            <note>This topic is used in numerous conversion instructions for several LBUs. It is a shared topic
                rather than duplicated to ensure consistency and accuracy. The xml snippets contained in this
                topic reflect markup needed for the Apollo image handling application. The UK is the first LBU
                to move from Apollo to the Blobstore application for image handling. Therefore, if this is a UK
                conversion instruction document, please refer to the following topics for correct image handling markup.<ul>
                    <li><sourcexml>lnlink[@service="ATTACHMENT"]</sourcexml> to
                        <targetxml>ref:lnlink[@service="ATTACHMENT"]</targetxml> for BLOBSTORE images
                        (id-CCCC-10542)</li>
                    <li><sourcexml>inlineobject</sourcexml> to <targetxml>ref:inlineobject</targetxml> for
                        BLOBSTORE images (id-CCCC-10540)</li>
                    <li><sourcexml>link[@filename]</sourcexml> to
                        <targetxml>ref:lnlink[@service="ATTACHMENT"]</targetxml> for BLOBSTORE images
                        (id-CCCC-10541)</li>
                </ul></note>
            <p><sourcexml>ci:content/remotelink/inlineobject</sourcexml> becomes <targetxml>lnci:content/ref:crossreference</targetxml>. The
                attributes and children of <targetxml>ref:crossreference</targetxml> are populated as follows: <ul>
                    <li>The value of <targetxml>ref:crossreference/@crossreferencetype</targetxml> is set to "citatorAlert".</li>
                    <li>The value of <targetxml>ref:crossreference/@referencedresourcetype</targetxml> is set to "citator".</li>
                    <li>If the value of <sourcexml>inlineobject/@alttext</sourcexml> is "Citation information only - Click for CaseBase entry", then <ul>
                            <li>The value of <targetxml>ref:crossreference/@referencedresourcesentiment</targetxml> should be set to "none".</li>
                            <li><targetxml>ref:crossreference/ref:content</targetxml> should be populated with "Citation information only".</li>
                    </ul></li>
                    <li>If the value of <sourcexml>inlineobject/@alttext</sourcexml> is "Citation information available - Click for CaseBase entry", then <ul>
                        <li>The value of <targetxml>ref:crossreference/@referencedresourcesentiment</targetxml> should be set to "none".</li>
                        <li><targetxml>ref:crossreference/ref:content</targetxml> should be populated with "Citation information available".</li>
                    </ul></li>
                    
                    <li>If the value of <sourcexml>inlineobject/@alttext</sourcexml> is "Positive treatment indicated - Click for CaseBase entry",
                        then <ul>
                            <li>The value of <targetxml>ref:crossreference/@referencedresourcesentiment</targetxml> should be set to "positive".</li>
                            <li><targetxml>ref:crossreference/ref:content</targetxml> should be populated with "Positive treatment indicated".</li>
                        </ul></li>
                    <li>If the value of <sourcexml>inlineobject/@alttext</sourcexml> is "Neutral treatment indicated - Click for CaseBase entry", then <ul>
                            <li>The value of <targetxml>ref:crossreference/@referencedresourcesentiment</targetxml> should be set to "neutral".</li>
                            <li><targetxml>ref:crossreference/ref:content</targetxml> should be populated with "Neutral treatment indicated".</li>
                        </ul></li>
                    <li>If the value of <sourcexml>inlineobject/@alttext</sourcexml> is "Negative treatment indicated - Click for CaseBase entry",
                        then <ul>
                            <li>The value of <targetxml>ref:crossreference/@referencedresourcesentiment</targetxml> should be set to "negative".</li>
                            <li><targetxml>ref:crossreference/ref:content</targetxml> should be populated with "Negative treatment indicated".</li>
                        </ul></li>
                    <li>If the value of <sourcexml>inlineobject/@alttext</sourcexml> is "Cautionary treatment indicated - Click for CaseBase entry",
                        then <ul>
                            <li>The value of <targetxml>ref:crossreference/@referencedresourcesentiment</targetxml> should be set to
                                "cautionary".</li>
                            <li><targetxml>ref:crossreference/ref:content</targetxml> should be populated with "Cautionary treatment indicated".</li>
                        </ul></li>
                    <li>If the value of <sourcexml>inlineobject/@alttext</sourcexml> is "Click for CaseBase entry", then <ul>
                            <li><targetxml>ref:crossreference/ref:content</targetxml> should be populated with "Click for CaseBase entry".</li>
                        </ul></li>
                </ul></p>
            <note>Refer to the general markup instructions for <b>remotelink</b> for detailed information on the mapping of
                    <sourcexml>remotelink</sourcexml>.</note>
        </section>

        <example>
            <title>Source XML showing <sourcexml>inlineobject</sourcexml> occurring in <sourcexml>ci:content/remotelink</sourcexml></title>
            <codeblock>
                
                &lt;ci:cite searchtype="CASE-REF"&gt;
    &lt;ci:case&gt;
        &lt;ci:caseinfo&gt;
            &lt;ci:decisiondate year="1992"/&gt;
        &lt;/ci:caseinfo&gt;
        &lt;ci:caseref ID="CR000001" spanref="CR000001-001"&gt;
            &lt;ci:reporter value="clr"/&gt;
            &lt;ci:volume num="175"/&gt;
            &lt;ci:page num="1"/&gt;
        &lt;/ci:caseref&gt;
        &lt;ci:caseref anaphref="CR000001" spanref="CR000001-002"&gt;
            &lt;ci:pinpoint num="99" targettype="page"/&gt;
        &lt;/ci:caseref&gt;
        &lt;ci:caseref ID="CR000002" spanref="CR000002-001"&gt;
            &lt;ci:reporter value="alr"/&gt;
            &lt;ci:volume num="107"/&gt;
            &lt;ci:page num="1"/&gt;
        &lt;/ci:caseref&gt;
        &lt;ci:caseref ID="CR000003" spanref="CR000003-001"&gt;
            &lt;ci:reporter value="aljr"/&gt;
            &lt;ci:volume num="66"/&gt;
            &lt;ci:page num="408"/&gt;
        &lt;/ci:caseref&gt;
        &lt;ci:caseref ID="CR000004" spanref="CR000004-001"&gt;
            &lt;ci:reporter value="urj"/&gt;
            &lt;ci:refnum num="BC9202681"/&gt;
        &lt;/ci:caseref&gt;
    &lt;/ci:case&gt;
    &lt;ci:content&gt;
        &lt;citefragment searchtype="CASE-NAME-REF"&gt;&lt;emph typestyle="it"&gt;Mabo v Queensland (No
                2)&lt;/emph&gt;&lt;/citefragment&gt;
        &lt;citefragment searchtype="CASE-CITE-REF"&gt;&lt;ci:span spanid="CR000001-001"&gt;(1992) 175 CLR
                1&lt;/ci:span&gt;&lt;/citefragment&gt; at &lt;ci:span spanid="CR000001-002"&gt;99&lt;/ci:span&gt; per Deane
        and Gaudron JJ; &lt;citefragment searchtype="CASE-CITE-REF"&gt;&lt;ci:span spanid="CR000002-001"&gt;107
                ALR 1&lt;/ci:span&gt;&lt;/citefragment&gt;; &lt;citefragment searchtype="CASE-CITE-REF"&gt;&lt;ci:span
                spanid="CR000003-001"&gt;66 ALJR 408&lt;/ci:span&gt;&lt;/citefragment&gt;; &lt;citefragment
            searchtype="CASE-CITE-REF"&gt;&lt;ci:span spanid="CR000004-001"
            &gt;BC9202681&lt;/ci:span&gt;&lt;/citefragment&gt;&lt;remotelink dpsi="0018" refpt="34408"
            remotekey1="DOC-ID" service="DOC-ID"&gt;&lt;inlineobject
                alttext="Cautionary treatment indicated - Click for CaseBase entry"
                attachment="web-server" filename="2.gif" type="image"/&gt;&lt;/remotelink&gt;&lt;/ci:content&gt;
&lt;/ci:cite&gt;
  
            </codeblock>
            <title>Target XML</title>
            <codeblock>
                
               &lt;lnci:cite&gt;
    &lt;lnci:case&gt;
        &lt;lnci:caseinfo&gt;
            &lt;lnci:decisiondate year="1992"/&gt;
        &lt;/lnci:caseinfo&gt;
        &lt;lnci:caseref ID="CR000001"&gt;
            &lt;lnci:reporter value="clr"/&gt;
            &lt;lnci:volume num="175"/&gt;
            &lt;lnci:page num="1"/&gt;
        &lt;/lnci:caseref&gt;
        &lt;lnci:caseref anaphref="CR000001"&gt;
            &lt;lnci:pinpoint num="99" targettype="page"/&gt;
        &lt;/lnci:caseref&gt;
        &lt;lnci:caseref ID="CR000002"&gt;
            &lt;lnci:reporter value="alr"/&gt;
            &lt;lnci:volume num="107"/&gt;
            &lt;lnci:page num="1"/&gt;
        &lt;/lnci:caseref&gt;
        &lt;lnci:caseref ID="CR000003"&gt;
            &lt;lnci:reporter value="aljr"/&gt;
            &lt;lnci:volume num="66"/&gt;
            &lt;lnci:page num="408"/&gt;
        &lt;/lnci:caseref&gt;
        &lt;lnci:caseref ID="CR000004"&gt;
            &lt;lnci:reporter value="urj"/&gt;
            &lt;lnci:refnum num="BC9202681"/&gt;
        &lt;/lnci:caseref&gt;
    &lt;/lnci:case&gt;
    &lt;lnci:content&gt;&lt;emph typestyle="it"&gt;Mabo v Queensland &amp;#x0028;No
        2&amp;#x0029;&lt;/emph&gt;&amp;#x0028;1992&amp;#x0029; 175 CLR 1 at 99 per Deane and Gaudron JJ; 107 ALR 1 ;
        66 ALJR 408 ; BC9202681 
        &lt;ref:crossreference crossreferencetype="citatorAlert"
            referencedresourcesentiment="cautionary" referencedresourcetype="citator"
                &gt;&lt;ref:content&gt;Cautionary treatment indicated&lt;/ref:content&gt;
            &lt;ref:locator&gt;&lt;ref:locator-key&gt;&lt;ref:key-name name="DOC-ID"/&gt;&lt;ref:key-value
                        value="0018-34408"/&gt;&lt;/ref:locator-key&gt;&lt;/ref:locator&gt;&lt;/ref:crossreference&gt;
    &lt;/lnci:content&gt;
&lt;/lnci:cite&gt;
            </codeblock>
        </example>
        <section>
            <title>Changes</title>
            <p>2016-08-05: <ph id="change_20160805_AS">Added Note about xml snippets that
                illustrate image handling. Note summarizes move from Apollo to Blobstore
                application. UK is first LBU to move to Blobstore. </ph></p>
            <p>2013-03-21: <ph id="change_20130321_RJ"> Created.</ph></p>
          <p>2012-12-11: Added instructions on how to handle <sourcexml>inlineobject/@alttext="Citation information available - Click for CaseBase entry"</sourcexml> scenario.</p>
        </section>
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_AU_citator_inlineobject-Chof-ci.conent_remotelink-LxAdv-lnci.content_ref.crossreference.dita  -->

    <!-- 20170619:  MCJ:  Currently a do-nothing module... but this might not last. -->



	<!-- <xsl:template match="ci:content/remotelink/inlineobject">

		...  Original Target XPath:  lnci:content/ref:crossreference   ...
		<lnci:content>
			<ref:crossreference>
				<xsl:apply-templates select="@* | node()"/>
			</ref:crossreference>
		</lnci:content>

	</xsl:template> -->

	<!-- <xsl:template match="lnlink[@service=&#34;ATTACHMENT&#34;]">

		...  Original Target XPath:  ref:lnlink[@service="ATTACHMENT"]   ...
		<ref:lnlink>
			<xsl:apply-templates select="@* | node()"/>
		</ref:lnlink>

	</xsl:template>

	<xsl:template match="inlineobject">

		...  Original Target XPath:  ref:inlineobject   ...
		<ref:inlineobject>
			<xsl:apply-templates select="@* | node()"/>
		</ref:inlineobject>

	</xsl:template>

	<xsl:template match="link[@filename]">

		...  Original Target XPath:  ref:lnlink[@service="ATTACHMENT"]   ...
		<ref:lnlink>
			<xsl:apply-templates select="@* | node()"/>
		</ref:lnlink>

	</xsl:template>

	<xsl:template match="inlineobject/@alttext">

		...  Original Target XPath:  ref:crossreference/@referencedresourcesentiment   ...
		<ref:crossreference>
			<xsl:attribute name="referencedresourcesentiment">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</ref:crossreference>

	</xsl:template>

	<xsl:template match="remotelink">

		...  Original Target XPath:     ...
		...  Could not determine target element or attribute name:  <>  ...			<xsl:apply-templates select="@* | node()"/>
		...  Could not determine target element or attribute name:  </>  ...

	</xsl:template>

	<xsl:template match="ci:content/remotelink">

		...  Original Target XPath:     ...
		...  Could not determine target element or attribute name:  <>  ...			<xsl:apply-templates select="@* | node()"/>
		...  Could not determine target element or attribute name:  </>  ...

	</xsl:template>

	<xsl:template match="inlineobject/@alttext=&#34;Citation information available - Click for CaseBase entry&#34;">

		...  Original Target XPath:     ...
		...  Could not determine target element or attribute name:  <>  ...			<xsl:apply-templates select="@* | node()"/>
		...  Could not determine target element or attribute name:  </>  ...

	</xsl:template> -->

</xsl:stylesheet>