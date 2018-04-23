<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:source_cttr="http://www.lexis-nexis.com/glp/cttr" xmlns:caseinfo="http://www.lexisnexis.com/xmlschemas/content/legal/case-information/1/" xmlns:cttr="urn:x-lexisnexis:content:citator:sharedservices:1" xmlns:decision="http://www.lexisnexis.com/xmlschemas/content/legal/decision/1/" xmlns:jurisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/jurisdiction-info/1/" version="2.0" exclude-result-prefixes="dita case source_cttr cttr caseinfo decision jurisinfo">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="UK11_DA_case.info">
    <title>case:info <lnpid>id-UK11DA-29409</lnpid></title>
    <body>
        <section>
            <p><sourcexml>case:info</sourcexml> becomes <targetxml>cttr:caseinfo</targetxml>.
                Process children as follows:<ul id="ul_yhc_tfm_ti">
                    <li><sourcexml>case:casename</sourcexml> becomes
                            <targetxml>caseinfo:casename/caseinfo:fullcasename</targetxml></li>
                    <li><sourcexml>case:courtinfo/case:courtcode</sourcexml> becomes
                            <targetxml>jurisinfo:courtinfo/jurisinfo:courtname/@normshortname</targetxml></li>
                    <li><sourcexml>case:dates/case:decisiondate/date[@day @month @year]</sourcexml>
                        becomes <targetxml>decision:dates/decision:decisiondate[@day @month
                            @year]/date-text</targetxml><ul id="ul_rgn_agm_ti">
                            <li>Also create <targetxml>decision:decisiondate/@normdate</targetxml>
                                with value "YYYY-MM-DD", as shown in the example below. The day and
                                month values must be 2 digits. <b>Exception:</b> Do not create
                                    <targetxml>@normdate</targetxml> if any of the three date values
                                (year, month, day) is absent.</li>
                        </ul></li>
                </ul></p></section>
        <section/>
        <section/>
        <section><note><b>Special Rule To Suppress Date For Year One:</b> Suppress
                    <sourcexml>case:dates</sourcexml> and descendants when date represents Januaury
                1 0001. The date is a rosetta remnant that should not map to LexisAdvanced. Suppress
                when <sourcexml>case:dates/case:decisiondate</sourcexml> contains
                    <sourcexml>date[@day="01" @month="01" @year="1"]</sourcexml> with pcdata
                    <sourcexml>01/01/0001</sourcexml>. See Example 2 below.</note>
        </section>

        <pre>
              <b><i>Example: Source XML 1</i></b>
                  

&lt;dig:body&gt;
...
  &lt;cttr:annotations annotationtype="consideredcases"&gt;
    &lt;heading&gt;
        &lt;title&gt;Cases considered in this article&lt;/title&gt;
    &lt;/heading&gt;
    &lt;cttr:annot&gt;
      &lt;cttr:use-group&gt;
          &lt;cttr:use signal="positive"&gt;Positive&lt;/cttr:use&gt;
      &lt;/cttr:use-group&gt;
      &lt;case:info&gt;
          &lt;case:casename&gt;Ahmed v Amnesty International&lt;/case:casename&gt;
      &lt;/case:info&gt;
      ...
      &lt;case:info&gt;
          &lt;case:courtinfo&gt;
            &lt;case:courtcode&gt;EAT&lt;/case:courtcode&gt;
          &lt;/case:courtinfo&gt;
          &lt;case:dates&gt;
              &lt;case:decisiondate&gt;
                  &lt;date day="13" month="08" year="2009"&gt;13/08/2009&lt;/date&gt;
              &lt;/case:decisiondate&gt;
          &lt;/case:dates&gt;
      &lt;/case:info&gt;
    &lt;/cttr:annot&gt;
    &lt;/cttr:annotations&gt;
&lt;/dig:body&gt;
 
	</pre>
        <pre>
                    
              <b><i>Example: Target XML 1</i></b>
    
&lt;abstract:body&gt;
  &lt;cttr:refs&gt;
    &lt;cttr:refsection reftype="considered-cases"&gt;
      &lt;heading&gt;
          &lt;title&gt;Cases considered in this article&lt;/title&gt;
      &lt;/heading&gt;
      &lt;cttr:refitem&gt;
          &lt;cttr:consideredcase treatment="unspecified"&gt;
            &lt;cttr:caseinfo&gt;
              &lt;caseinfo:casename&gt;
                  &lt;caseinfo:fullcasename&gt;Ahmed v Amnesty
                      International&lt;/caseinfo:fullcasename&gt;
              &lt;/caseinfo:casename&gt;
              ...
              &lt;jurisinfo:courtinfo&gt;
                &lt;jurisinfo:courtname normshortname="EAT"/&gt;
              &lt;/jurisinfo:courtinfo&gt;
              &lt;decision:dates&gt;
                  &lt;decision:decisiondate day="13" month="08" year="2009" normdate="2009-08-13"&gt;
                      &lt;date-text&gt;13/08/2009&lt;/date-text&gt;
                  &lt;/decision:decisiondate&gt;
              &lt;/decision:dates&gt;
            &lt;/cttr:caseinfo&gt;
            &lt;cttr:usagegroup&gt;
                &lt;cttr:usage usagetype="positive"&gt;
                    &lt;text&gt;Positive&lt;/text&gt;
                &lt;/cttr:usage&gt;
            &lt;/cttr:usagegroup&gt;
          &lt;/cttr:consideredcase&gt;
      &lt;cttr:refitem&gt;
    &lt;/cttr:refsection&gt;
  &lt;cttr:refs&gt;
&lt;/abstract:body&gt;

        </pre>

        <pre>
              <b><i>Example: Source XML 2, Suppress Date for Year One</i></b>
                  

&lt;dig:body&gt;
...
  &lt;cttr:annotations annotationtype="consideredcases"&gt;
    &lt;heading&gt;
        &lt;title&gt;Cases considered in this article&lt;/title&gt;
    &lt;/heading&gt;
    &lt;cttr:annot&gt;
      &lt;cttr:use-group&gt;
          &lt;cttr:use signal="citation"&gt;Citation&lt;/cttr:use&gt;
      &lt;/cttr:use-group&gt;
      &lt;case:info&gt;
          &lt;case:casename&gt;Helmsley Ltd v Lambert Ltd&lt;/case:casename&gt;
      &lt;/case:info&gt;
      ...
      &lt;case:info&gt;
          &lt;case:courtinfo&gt;
            &lt;case:courtcode&gt;CA&lt;/case:courtcode&gt;
          &lt;/case:courtinfo&gt;
          &lt;case:dates&gt;
              &lt;case:decisiondate&gt;
                  &lt;date day="01" month="01" year="1"&gt;01/01/0001&lt;/date&gt;
              &lt;/case:decisiondate&gt;
          &lt;/case:dates&gt;
      &lt;/case:info&gt;
    &lt;/cttr:annot&gt;
    &lt;/cttr:annotations&gt;
&lt;/dig:body&gt;
 
	</pre>
        <pre>
                    
              <b><i>Example: Target XML 2, Suppress Date for Year One</i></b>
    
&lt;abstract:body&gt;
  &lt;cttr:refs&gt;
    &lt;cttr:refsection reftype="considered-cases"&gt;
      &lt;heading&gt;
          &lt;title&gt;Cases considered in this article&lt;/title&gt;
      &lt;/heading&gt;
      &lt;cttr:refitem&gt;
          &lt;cttr:consideredcase treatment="unspecified"&gt;
            &lt;cttr:caseinfo&gt;
              &lt;caseinfo:casename&gt;
                  &lt;caseinfo:fullcasename&gt;Helmsley Ltd v Lambert Ltd&lt;/caseinfo:fullcasename&gt;
              &lt;/caseinfo:casename&gt;
              ...
              &lt;jurisinfo:courtinfo&gt;
                &lt;jurisinfo:courtname normshortname="CA"/&gt;
              &lt;/jurisinfo:courtinfo&gt;              
              &lt;!-- date is suppressed --&gt;
            &lt;/cttr:caseinfo&gt;
            &lt;cttr:usagegroup&gt;
                &lt;cttr:usage usagetype="unspecified"&gt;
                    &lt;text&gt;Citation&lt;/text&gt;
                &lt;/cttr:usage&gt;
            &lt;/cttr:usagegroup&gt;
          &lt;/cttr:consideredcase&gt;
      &lt;cttr:refitem&gt;
    &lt;/cttr:refsection&gt;
  &lt;cttr:refs&gt;
&lt;/abstract:body&gt;

        </pre>
        <section>
            <title>Changes</title>
            <p>2015-03-30: <ph id="change_20150330_jhm">Rule change to reflect rosetta element
                    change. No change to target. Within markup for
                    <sourcexml>cttr:annot</sourcexml>, former rosetta
                        <sourcexml>abbrvname</sourcexml> is now <sourcexml>case:courtcode</sourcexml>.
                    Target remains <targetxml>jurisinfo:courtname/@normshortname</targetxml>. R4.5
                    Content Issue 2239.</ph></p>
            <p>2013-07-26: <ph id="change_20130726_jhm">Added special rule to suppress date for year
                    one</ph>.</p>
            <p>2013-01-09: <ph id="change_20130109_jhm"><sourcexml>case:casename</sourcexml> maps to
                        <targetxml>caseinfo:fullcasename</targetxml>, not shortcasename; per
                    workshop</ph></p>
        </section>
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK11DA-Digest-Abstract\UK11_DA_case.info.dita  -->
<!--	<xsl:message>UK11_DA_case.info.xsl requires manual development!</xsl:message> -->

    <xsl:template match="source_cttr:annot/case:info[1]">
		<cttr:caseinfo>
			<xsl:apply-templates select="@* | node()"/>
		    <xsl:apply-templates select="parent::source_cttr:annot/case:citations|following-sibling::case:info"/>
		</cttr:caseinfo>
    </xsl:template>

    <xsl:template match="case:info">
        <xsl:apply-templates select="@*|node()"/>
    </xsl:template>
    
    <xsl:template match="case:casename">
		<caseinfo:casename>
			<caseinfo:fullcasename>
				<xsl:apply-templates select="@* | node()"/>
			</caseinfo:fullcasename>
		</caseinfo:casename>
	</xsl:template>
    
    <xsl:template match="case:courtinfo">
        <jurisinfo:courtinfo>
            <xsl:apply-templates select="@*|node()"/>
        </jurisinfo:courtinfo>
    </xsl:template>
    
    <xsl:template match="case:courtcode">
        <jurisinfo:courtname>
            <xsl:attribute name="normshortname">
                <xsl:value-of select="."/>
            </xsl:attribute>
        </jurisinfo:courtname>
    </xsl:template>

    <xsl:template match="case:dates[not(contains(child::case:decisiondate/date,'01/01/0001'))]">
        <xsl:element name="decision:dates">
        <xsl:apply-templates select="@*|node()"/>
        </xsl:element>
    </xsl:template>

    <xsl:template match="case:decisiondate">
        <xsl:element name="decision:decisiondate">
            <xsl:apply-templates select="date/@*"/>
            <xsl:attribute name="normdate">
                <xsl:value-of select="concat(date/@year,'-',date/@month,'-',date/@day)"/>
            </xsl:attribute>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:element>
    </xsl:template>
    
<!-- Vikas Rohilla : Supressed the invalid date   -->
    <xsl:template match="case:dates[contains(child::case:decisiondate/date,'01/01/0001')]"/>





	


</xsl:stylesheet>