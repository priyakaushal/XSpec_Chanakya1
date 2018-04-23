<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:dig="http://www.lexis-nexis.com/glp/dig" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" xmlns:seclaw="http://www.lexisnexis.com/xmlschemas/content/legal/secondary-law/1/" version="2.0" exclude-result-prefixes="dita dig">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="UK15PG_DIGESTDOC_level_With-Forms">
    <title>level <lnpid>id-UK15-30441</lnpid></title>

    <body>
        <p><sourcexml>level/bodytext</sourcexml> is a container that should be dropped. Its content
            should be handled as follows: <ul>
                <li><sourcexml>refpt</sourcexml> maps to <targetxml>ref:anchor</targetxml> and must
                    be the first child of the <targetxml>seclaw:level</targetxml> that is created as
                    a result of the mapping from <sourcexml>dig:info</sourcexml>.</li>
                <li>Any other children are mapped to children of the
                        <targetxml>seclaw:level/seclaw:bodytext</targetxml> created as a result of
                    the mapping from <sourcexml>dig:info</sourcexml>.</li>
            </ul></p>
        <example>
            <title>Source XML</title>
            <codeblock>

&lt;dig:body&gt;
    &lt;dig:info&gt;
        &lt;dig:title&gt;Reviewing environmental reports&lt;/dig:title&gt;
    &lt;/dig:info&gt;
    &lt;abstract&gt;
        &lt;p&gt;
            &lt;text&gt;In this short webcast, Jaime Bainbridge and Ben Furlong from Argyll Environmental
                discuss what environmental lawyers should consider when reviewing environmental
                reports. They discuss the report context, risk assessment, what to do when further
                action is required, and other environmental hazards.&lt;/text&gt;
        &lt;/p&gt;
    &lt;/abstract&gt;
    &lt;level leveltype="Full Text External" id="0OLN_194552"&gt;
        &lt;bodytext&gt;
            &lt;refpt id="0OLN_194552"/&gt;
            &lt;remotelink href="http://vimeo.com/lexisnexisuk/review/52994955/b970937cea"
                newwindow="YES"&gt;Reviewing environmental reports&lt;/remotelink&gt;
        &lt;/bodytext&gt;
    &lt;/level&gt;
&lt;/dig:body&gt;

           </codeblock>
            <title>Target XML</title>
            <codeblock>

&lt;seclaw:body&gt;
    &lt;seclaw:level leveltype="unclassified"&gt;
        &lt;ref:anchor id="_0OLN_194552"/&gt;
        &lt;heading&gt;
            &lt;title&gt;Reviewing environmental reports&lt;/title&gt;
        &lt;/heading&gt;
        &lt;seclaw:bodytext&gt;
            &lt;p&gt;
                &lt;text&gt;In this short webcast, Jaime Bainbridge and Ben Furlong from Argyll
                    Environmental discuss what environmental lawyers should consider when reviewing
                    environmental reports. They discuss the report context, risk assessment, what to
                    do when further action is required, and other environmental hazards.&lt;/text&gt;
            &lt;/p&gt;
            &lt;ref:lnlink service="URL"&gt;
                &lt;ref:marker&gt;Reviewing environmental reports&lt;/ref:marker&gt;
                &lt;ref:locator&gt;
                    &lt;ref:locator-key&gt;
                        &lt;ref:key-name name="URL"/&gt;
                        &lt;ref:key-value
                            value="http://vimeo.com/lexisnexisuk/review/52994955/b970937cea"/&gt;
                    &lt;/ref:locator-key&gt;
                &lt;/ref:locator&gt;
            &lt;/ref:lnlink&gt;
        &lt;/seclaw:bodytext&gt;
    &lt;/seclaw:level&gt;
&lt;/seclaw:body&gt;

           </codeblock>
        </example>
        <section>
            <title>Changes</title>
            <p>2013-10-14: <ph id="change_20131014_jm">Minor change. Clarifies that target container
            <targetxml>seclaw:level/seclaw:bodytext</targetxml> is created from
            <sourcexml>dig:info</sourcexml>, not <sourcexml>abstract</sourcexml>. Also removed
          subsequent sections for child elements which are covered in General Markup rules.
          Rewording reflects move of smart-form content from UK11-DA to UK15-DS. Webteam # 240975
          and  #247307.</ph></p>
        </section>
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK15-PracticalGuidance\UK15PG_DIGESTDOC_level.dita  -->
	<!--<xsl:message>UK15PG_DIGESTDOC_level.xsl requires manual development!</xsl:message> -->

	<xsl:template match="level">

		<!--  Original Target XPath:  ref:anchor   -->
	    
	        <xsl:apply-templates select="@* | node() "/>
	    

	</xsl:template>
    
    <xsl:template match="bodytext " priority="20000">

	        <xsl:apply-templates select="@* | node() except refpt"/>
       
	</xsl:template>
    
   <!-- <xsl:template match="remotelink" priority="20000">
        <pawan>  	test  </pawan>
    </xsl:template>-->
   

</xsl:stylesheet>