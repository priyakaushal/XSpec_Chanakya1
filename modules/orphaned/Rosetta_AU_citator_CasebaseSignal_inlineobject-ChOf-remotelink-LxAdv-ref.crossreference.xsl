<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:ci="http://www.lexis-nexis.com/ci" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita ci">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_AU_citator_CasebaseSignal_inlineobject-ChOf-remotelink-LxAdv-ref.crossreferencee">
    <title><sourcexml>remotelink/inlineobject</sourcexml> for Casebase Signal to <targetxml>ref:crossreference</targetxml> <lnpid>id-CCCC-10536</lnpid></title>
    <body>
        <section>
            <p>This mapping instruction applies only to <sourcexml>remotelink/inlineobject</sourcexml> when 
                <sourcexml>inlineobject/@alttext</sourcexml> exists and <sourcexml>@alttext</sourcexml> contains 
                the text "casebase" (case-insensitive comparison).</p>
            
            <p><sourcexml>remotelink/inlineobject</sourcexml> becomes <targetxml>ref:crossreference</targetxml>. The
                attributes and children of <targetxml>ref:crossreference</targetxml> are populated as follows: 
                <ul>
                    <li>The value of <targetxml>ref:crossreference/@crossreferencetype</targetxml> is set to "citatorAlert".</li>
                    <li>The value of <targetxml>ref:crossreference/@referencedresourcetype</targetxml> is set to "citator".</li>
                    <li>If the value of <sourcexml>inlineobject/@alttext</sourcexml> is "Citation information only - Click for CaseBase entry", then <ul>
                            <li>The value of <targetxml>ref:crossreference/@referencedresourcesentiment</targetxml> should be set to "none".</li>
                            <li><targetxml>ref:crossreference/ref:content</targetxml> should be populated with "Citation information only".</li>
                    </ul>
                    </li>
                    <li>If the value of <sourcexml>inlineobject/@alttext</sourcexml> is "Citation information available - Click for CaseBase entry", then <ul>
                        <li>The value of <targetxml>ref:crossreference/@referencedresourcesentiment</targetxml> should be set to "none".</li>
                        <li><targetxml>ref:crossreference/ref:content</targetxml> should be populated with "Citation information available".</li>
                    </ul>
                    </li>           
                    <li>If the value of <sourcexml>inlineobject/@alttext</sourcexml> is "Positive treatment indicated - Click for CaseBase entry",
                        then <ul>
                            <li>The value of <targetxml>ref:crossreference/@referencedresourcesentiment</targetxml> should be set to "positive".</li>
                            <li><targetxml>ref:crossreference/ref:content</targetxml> should be populated with "Positive treatment indicated".</li>
                        </ul>
                    </li>
                    <li>If the value of <sourcexml>inlineobject/@alttext</sourcexml> is "Neutral treatment indicated - Click for CaseBase entry", then <ul>
                            <li>The value of <targetxml>ref:crossreference/@referencedresourcesentiment</targetxml> should be set to "neutral".</li>
                            <li><targetxml>ref:crossreference/ref:content</targetxml> should be populated with "Neutral treatment indicated".</li>
                        </ul>
                    </li>
                    <li>If the value of <sourcexml>inlineobject/@alttext</sourcexml> is "Negative treatment indicated - Click for CaseBase entry",
                        then 
                        <ul>
                            <li>The value of <targetxml>ref:crossreference/@referencedresourcesentiment</targetxml> should be set to "negative".</li>
                            <li><targetxml>ref:crossreference/ref:content</targetxml> should be populated with "Negative treatment indicated".</li>
                        </ul>
                    </li>
                    <li>If the value of <sourcexml>inlineobject/@alttext</sourcexml> is "Cautionary treatment indicated - Click for CaseBase entry",
                        then 
                        <ul>
                            <li>The value of <targetxml>ref:crossreference/@referencedresourcesentiment</targetxml> should be set to
                                "cautionary".</li>
                            <li><targetxml>ref:crossreference/ref:content</targetxml> should be populated with "Cautionary treatment indicated".</li>
                        </ul>
                    </li>
                    <li>If the value of <sourcexml>inlineobject/@alttext</sourcexml> is "Click for CaseBase entry", then 
                        <ul>
                            <li><targetxml>ref:crossreference/ref:content</targetxml> should be populated with "Click for CaseBase entry".</li>
                            <li>The value of <targetxml>ref:crossreference/@referencedresourcesentiment</targetxml> should be set based upon 
                                the filename specified in <sourcexml>remotelink/inlineobject/@filename</sourcexml> as follows:
                                <ul>
                                    <li><sourcexml>inlineobject/@filename="1.gif"</sourcexml> (or "1.png") 
                                        : <targetxml>ref:crossreference/@referencedresourcesentiment="negative"</targetxml></li>
                                    <li><sourcexml>inlineobject/@filename="2.gif"</sourcexml> (or "2.png")
                                        : <targetxml>ref:crossreference/@referencedresourcesentiment="cautionary"</targetxml></li>
                                    <li><sourcexml>inlineobject/@filename="3.gif"</sourcexml> (or "3.png")
                                        : <targetxml>ref:crossreference/@referencedresourcesentiment="positive"</targetxml></li>
                                    <li><sourcexml>inlineobject/@filename="4.gif"</sourcexml> (or "4.png")
                                        : <targetxml>ref:crossreference/@referencedresourcesentiment="neutral"</targetxml></li>
                                    <li><sourcexml>inlineobject/@filename="5.gif"</sourcexml> (or "5.png")
                                        : <targetxml>ref:crossreference/@referencedresourcesentiment="none"</targetxml></li>
                                </ul>
                            </li>
                        </ul>
                    </li>
                    <li>For all other cases:
                        <ul>
                            <li><targetxml>ref:crossreference/ref:content</targetxml> should be populated with the value of 
                                <sourcexml>inlineobject/@alttext</sourcexml>.</li>
                            <li>The value of <targetxml>ref:crossreference/@referencedresourcesentiment</targetxml> should be set based upon 
                                the filename specified in <sourcexml>remotelink/inlineobject/@filename</sourcexml> as follows:
                                <ul>
                                    <li><sourcexml>inlineobject/@filename="1.gif"</sourcexml> (or "1.png") 
                                        : <targetxml>ref:crossreference/@referencedresourcesentiment="negative"</targetxml></li>
                                    <li><sourcexml>inlineobject/@filename="2.gif"</sourcexml> (or "2.png")
                                        : <targetxml>ref:crossreference/@referencedresourcesentiment="cautionary"</targetxml></li>
                                    <li><sourcexml>inlineobject/@filename="3.gif"</sourcexml> (or "3.png")
                                        : <targetxml>ref:crossreference/@referencedresourcesentiment="positive"</targetxml></li>
                                    <li><sourcexml>inlineobject/@filename="4.gif"</sourcexml> (or "4.png")
                                        : <targetxml>ref:crossreference/@referencedresourcesentiment="neutral"</targetxml></li>
                                    <li><sourcexml>inlineobject/@filename="5.gif"</sourcexml> (or "5.png")
                                        : <targetxml>ref:crossreference/@referencedresourcesentiment="none"</targetxml></li>
                                </ul>
                            </li>
                        </ul>
                    </li>
                </ul>
            </p>
            <note>Refer to the general markup instructions for <b>remotelink</b> for detailed information on the mapping of
                    <sourcexml>remotelink</sourcexml>.</note>
        </section>

        <example>
            <title>Example 1: Source XML showing <sourcexml>remotelink/inlineobject</sourcexml> within <sourcexml>ci:content</sourcexml></title>
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
            <title>Example 1: Target XML</title>
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
        
        <example>
            <title>Example 2: Source XML showing <sourcexml>remotelink/inlineobject</sourcexml> in any location (general case)</title>
            <codeblock>
             
&lt;remotelink dpsi="0018" refpt="34408" remotekey1="DOC-ID" service="DOC-ID"&gt;&lt;inlineobject
        alttext="Cautionary treatment indicated - Click for CaseBase entry"
        attachment="web-server" filename="2.gif" type="image"/&gt;&lt;/remotelink&gt;
  
            </codeblock>
            <title>Example 2: Target XML</title>
            <codeblock>

&lt;ref:crossreference crossreferencetype="citatorAlert"
    referencedresourcesentiment="cautionary" referencedresourcetype="citator"
        &gt;&lt;ref:content&gt;Cautionary treatment indicated&lt;/ref:content&gt;
    &lt;ref:locator&gt;&lt;ref:locator-key&gt;&lt;ref:key-name name="DOC-ID"/&gt;&lt;ref:key-value
                value="0018-34408"/&gt;&lt;/ref:locator-key&gt;&lt;/ref:locator&gt;&lt;/ref:crossreference&gt;

            </codeblock>
        </example>
        
        
        <section>
            <title>Changes</title>
            <p>2016-10-10: <ph id="change_20161010_snb">Updated determination of value of 
                <targetxml>ref:crossreference/@referencedresourcesentiment</targetxml> to use 
                the image filename in <sourcexml>remotelink/inlineobject/@filename</sourcexml> when 
                specific treatment text does not exist in <sourcexml>inlineobject/@alttext</sourcexml>. 
                Also added an additional case for scenario where none of the listed values of 
                <sourcexml>inlineobject/@alttext</sourcexml> exist.</ph>
            </p>
            <p>2016-01-13: <ph id="change_20160113a_snb">Added new mapping instruction section based upon 
                previous casebase signal conversion, but removed any requirement for the signal 
                <sourcexml>remotelink/inlineobject</sourcexml> to occur within <sourcexml>ci:content</sourcexml>. 
                Added a requirement for specific text "casebase" to occur within <sourcexml>@alttext</sourcexml> 
                to preclude use of this instruction for any other types of non-casebase-signal 
                <sourcexml>remotelink/inlineobject</sourcexml> elements. Updated target markup example 
                title accordingly, and added an example of a casebase signal that does not occur within 
                <sourcexml>ci:content</sourcexml>.</ph></p>
        </section>
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_AU_citator_CasebaseSignal_inlineobject-ChOf-remotelink-LxAdv-ref.crossreference.dita  -->
	<xsl:message>Rosetta_AU_citator_CasebaseSignal_inlineobject-ChOf-remotelink-LxAdv-ref.crossreference.xsl requires manual development!</xsl:message> 

	<xsl:template match="remotelink/inlineobject">

		<!--  Original Target XPath:  ref:crossreference   -->
		<ref:crossreference>
			<xsl:apply-templates select="@* | node()"/>
		</ref:crossreference>

	</xsl:template>

	<xsl:template match="inlineobject/@alttext">

		<!--  Original Target XPath:  ref:crossreference   -->
		<ref:crossreference>
			<xsl:apply-templates select="@* | node()"/>
		</ref:crossreference>

	</xsl:template>

	<xsl:template match="@alttext">

		<!--  Original Target XPath:  ref:crossreference   -->
		<ref:crossreference>
			<xsl:apply-templates select="@* | node()"/>
		</ref:crossreference>

	</xsl:template>

	<xsl:template match="remotelink/inlineobject/@filename">

		<!--  Original Target XPath:  ref:crossreference/@referencedresourcesentiment="negative"   -->
		<ref:crossreference>
			<xsl:attribute name="referencedresourcesentiment">
				<xsl:text>negative</xsl:text>
			</xsl:attribute>
		</ref:crossreference>

	</xsl:template>

	<xsl:template match="inlineobject/@filename=&#34;1.gif&#34;">

		<!--  Original Target XPath:  ref:crossreference/@referencedresourcesentiment="negative"   -->
		<ref:crossreference>
			<xsl:attribute name="referencedresourcesentiment">
				<xsl:text>negative</xsl:text>
			</xsl:attribute>
		</ref:crossreference>

	</xsl:template>

	<xsl:template match="inlineobject/@filename=&#34;2.gif&#34;">

		<!--  Original Target XPath:  ref:crossreference/@referencedresourcesentiment="cautionary"   -->
		<ref:crossreference>
			<xsl:attribute name="referencedresourcesentiment">
				<xsl:text>cautionary</xsl:text>
			</xsl:attribute>
		</ref:crossreference>

	</xsl:template>

	<xsl:template match="inlineobject/@filename=&#34;3.gif&#34;">

		<!--  Original Target XPath:  ref:crossreference/@referencedresourcesentiment="positive"   -->
		<ref:crossreference>
			<xsl:attribute name="referencedresourcesentiment">
				<xsl:text>positive</xsl:text>
			</xsl:attribute>
		</ref:crossreference>

	</xsl:template>

	<xsl:template match="inlineobject/@filename=&#34;4.gif&#34;">

		<!--  Original Target XPath:  ref:crossreference/@referencedresourcesentiment="neutral"   -->
		<ref:crossreference>
			<xsl:attribute name="referencedresourcesentiment">
				<xsl:text>neutral</xsl:text>
			</xsl:attribute>
		</ref:crossreference>

	</xsl:template>

	<xsl:template match="inlineobject/@filename=&#34;5.gif&#34;">

		<!--  Original Target XPath:  ref:crossreference/@referencedresourcesentiment="none"   -->
		<ref:crossreference>
			<xsl:attribute name="referencedresourcesentiment">
				<xsl:text>none</xsl:text>
			</xsl:attribute>
		</ref:crossreference>

	</xsl:template>

	<xsl:template match="remotelink">

		<!--  Original Target XPath:  ref:crossreference/@referencedresourcesentiment   -->
		<ref:crossreference>
			<xsl:attribute name="referencedresourcesentiment">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</ref:crossreference>

	</xsl:template>

	<xsl:template match="ci:content">

		<!--  Original Target XPath:  ref:crossreference/@referencedresourcesentiment   -->
		<ref:crossreference>
			<xsl:attribute name="referencedresourcesentiment">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</ref:crossreference>

	</xsl:template>

</xsl:stylesheet>