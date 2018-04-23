<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:source_cttr="http://www.lexis-nexis.com/glp/cttr" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita cttr">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Leg_Citator_AUNZ_Overview_cttr.annotations-ViewAllcases">
  <title>cttr:annotations/heading/lnlink/marker/text()="View all cases" <lnpid>id-AU20-22254</lnpid></title>
  
  <body>
    
    <section>
      <p>If <sourcexml>cttr:annotations/@id="OP26"</sourcexml> create 
        <targetxml>ref:relatedcontent[@xml:id="refsection-OP26"][@contenttype="case-activity-view-all-cases"]</targetxml>.</p>
      <p>Create <targetxml>ref:anchor[@id="ref-case-activity-view-all-cases"]</targetxml> inside this 
        <targetxml>ref:relatedcontent</targetxml>.</p>
      <p>Create <targetxml>ref:relatedcontentitem/ref:related-content-link/ref:lnlink</targetxml> inside this 
        <targetxml>ref:relatedcontent</targetxml>, and add the following children:
        <ul>
          <li>
            <targetxml>ref:marker[text()="View All Cases"]</targetxml>
          </li>
          <li>
            <targetxml>ref:locator[@anchoridref="ref-cases"][@anchortype="local"]</targetxml>
          </li>
        </ul>
      </p>
      <p>If <sourcexml>cttr:annotations/heading/title</sourcexml> exists and contains non-whitespace content, map 
        with standard mapping to <targetxml>ref:relatedcontent/heading/title</targetxml>. 
        Otherwise do not create a target title.</p>
      <p>Suppress <sourcexml>cttr:annotations/heading/lnlink</sourcexml>; the corresponding target link markup was   
        manually created above.</p>
      <p>Additional example below uses @id="OP26"</p>
      <p>The example below is intended to send the user to the list of cases that reference the act section. The location of the link is internal to the document 
        and must point to the 'cases tab' which will be a part of the consolidated document.</p>
      <p>Map link to 'View All Cases' to <targetxml/>
      </p>
    </section>

    <example>
      <title>Source 'View all Cases'</title>
      <codeblock>
    &lt;cttr:annotations&gt;
        &lt;heading&gt;
          &lt;title/&gt;
          &lt;lnlink refpt="LCIT-CTH_ACT_1908-3_SEC2A-CASES"&gt;
            &lt;marker&gt;View all cases&lt;/marker&gt;
            &lt;api-params&gt;
              &lt;param name="dpsi" value="0QQI" /&gt;
            &lt;/api-params&gt;
          &lt;/lnlink&gt;
        &lt;/heading&gt;
        &lt;cttr:annot&gt;
          &lt;!--Intentionally empty--&gt;
          &lt;comm:info&gt;
            &lt;title /&gt;
          &lt;/comm:info&gt;
        &lt;/cttr:annot&gt;
      &lt;/cttr:annotations&gt;
</codeblock>

      <title>Source cttr:annotations[@id="OP26"]</title>
      <codeblock>
         &lt;cttr:annotations id="OP26"&gt;
        &lt;heading&gt;
          &lt;title/&gt;
          &lt;lnlink refpt="LCIT-CTH_ACT_1995-2_SEC59-CASES"&gt;
            &lt;marker&gt;View all cases&lt;/marker&gt;
            &lt;api-params&gt;
              &lt;param name="dpsi" value="0QQI"/&gt;
            &lt;/api-params&gt;
          &lt;/lnlink&gt;
          
      </codeblock>

      <title>Target "View All Cases"</title>
      <codeblock>
&lt;ref:relatedcontent xml:id="refsection-OP26" contenttype="case-activity-view-all-cases"&gt;
    &lt;ref:anchor id="ref-case-activity-view-all-cases"/&gt;
    &lt;ref:relatedcontentitem&gt;
        &lt;ref:related-content-link&gt;
            &lt;ref:lnlink&gt;
                &lt;ref:marker&gt;View All Cases&lt;/ref:marker&gt;
                    &lt;ref:locator anchoridref="ref-cases"/&gt;
            &lt;/ref:lnlink&gt;
        &lt;/ref:related-content-link&gt;
    &lt;/ref:relatedcontentitem&gt;
&lt;/ref:relatedcontent&gt;
</codeblock>
    </example>

    <section>
      <title>
        Changes:
      </title>
      <p>2016-01-13: <ph id="change_20160113e_snb">Changed to suppress <sourcexml>cttr:annotations/heading/lnlink</sourcexml> 
        and instead manually create the link to the cases section (the anchorid for cases is hard-coded in this 
        CI.</ph>
      </p>
      <p>2015-12-11: <ph id="change_20151211o_snb">Changed XPATH in section title from 
        "cttr:annotations/heading/title/lnlink/marker/text()" to be 
        "cttr:annotations/heading/lnlink/marker/text()". Added additional detail to 
        describe mapping that was missing. Added <targetxml>@xml:id="refsection-OP26"</targetxml> and 
        <targetxml>@contenttype="case-activity-view-all-cases"</targetxml> to 
        <targetxml>ref:relatedcontent</targetxml>. Added creation of 
        <targetxml>ref:anchor[@id="ref-case-activity-view-all-cases"]</targetxml>. Add mapping of 
        <sourcexml>cttr:annotations/heading/title</sourcexml>. Modified and added attributes and 
        <targetxml>ref:anchor</targetxml> to Example target markup.</ph>
      </p>
    </section>
 
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU20_Legislative_Citator\Leg_Citator_AUNZ_Overview_cttr.annotations-ViewAllcases.dita  -->
	<xsl:message>Leg_Citator_AUNZ_Overview_cttr.annotations-ViewAllcases.xsl requires manual development!</xsl:message> 

	<xsl:template match="cttr:annotations/@id=&#34;OP26&#34;"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  ref:relatedcontent[@xml:id="refsection-OP26"][@contenttype="case-activity-view-all-cases"]   -->
		<ref:relatedcontent>
			<xsl:apply-templates select="@* | node()"/>
		</ref:relatedcontent>

	</xsl:template>

	<xsl:template match="cttr:annotations/heading/title"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  ref:relatedcontent/heading/title   -->
		<ref:relatedcontent>
			<heading>
				<title>
					<xsl:apply-templates select="@* | node()"/>
				</title>
			</heading>
		</ref:relatedcontent>

	</xsl:template>

	<xsl:template match="cttr:annotations/heading/lnlink"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

</xsl:stylesheet>