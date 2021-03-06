<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:source_cttr="http://www.lexis-nexis.com/glp/cttr" xmlns:cttr="urn:x-lexisnexis:content:citator:sharedservices:1" version="2.0" exclude-result-prefixes="dita cttr">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Leg_Citator_AUNZ_Cases_cttr.annotsummary-CasesbyProvisionandSource">
  <title>cttr:annotsummary[@display-name="Cases by Provision and Source"][@id="CI1"]/table <lnpid>id-AU20-22272</lnpid></title>
  
  <body>

    <section>
      <p>When <sourcexml>cttr:annotsummary</sourcexml> contains an attribute <sourcexml>id="CI1"</sourcexml> followed by a <sourcexml>table</sourcexml> the conversion should
        NOT create a <targetxml>table</targetxml>. It should instead create <targetxml>cttr:refssummary</targetxml> with attribute <targetxml>xml:id="CI1"</targetxml> and 
        <targetxml>summarytype="CIsummarychart"</targetxml> and child element <targetxml>cttr:refssummarygroup</targetxml>
        <targetxml>@grouptype="Provision"</targetxml>.</p>
      <p>Conversion should iterate over all of <sourcexml>tbody/row</sourcexml> elements and create a 
        <targetxml>cttr:refssummaryitem</targetxml> for each <sourcexml>tbody/row</sourcexml> inside the same 
        <targetxml>cttr:refssummarygroup</targetxml>, with attributes <targetxml>@documenttype="case"</targetxml>
        and <targetxml>@value</targetxml>="from source: <sourcexml>/row/entry/lnlink/marker"</sourcexml> 
        with the content of <sourcexml>row/entry[2]</sourcexml> as text.</p>
      <p>When the conversion completes the iteration through all rows of the source table, 
        close the <targetxml>cttr:refssummarygroup</targetxml>. Next create a 
        <targetxml>cttr:refssummaryitem</targetxml> for each <sourcexml>tbody/row</sourcexml> creating a 
        <targetxml>cttr:refssummaryitem[@documenttype="case"][@value="from source: /row/entry/lnlink/marker"]</targetxml> 
        with the content of the <sourcexml>row/entry/lnlink</sourcexml>.</p>
    </section>

    <example>
      <title>Example 1: Source cttr:annotations/cttr:annotsummary</title>
      <codeblock>
    &lt;cttr:annotations annotationtype="subseqcases"&gt;
      &lt;heading/&gt;
         
    &lt;cttr:annotsummary display-name="Cases by Provision and Source" id="CI1"&gt;
          &lt;table&gt;
            &lt;tgroup cols="2"&gt;
              &lt;thead&gt;
                &lt;row&gt;
                  &lt;entry&gt;Provision&lt;/entry&gt;
                  &lt;entry&gt;Cases&lt;/entry&gt;
                &lt;/row&gt;
              &lt;/thead&gt;
              &lt;tbody&gt;
                &lt;row&gt;
                  &lt;entry&gt;
                    &lt;lnlink refpt="LCIT-CTH_ACT_1920-50_SEC1-OVERVIEW"&gt;
                      &lt;marker&gt;sec1&lt;/marker&gt;
                      &lt;api-params&gt;
                        &lt;param name="dpsi" value="0QQI" /&gt;
                        &lt;param name="remotelink" value="LCIT-CTH_ACT_1920-50_SEC1-OVERVIEW" /&gt;
                      &lt;/api-params&gt;
                    &lt;/lnlink&gt;
                  &lt;/entry&gt;
                  &lt;entry&gt;0&lt;/entry&gt;
                &lt;/row&gt;  
                ...
            &lt;/table&gt;
        &lt;/cttr:annotsummary&gt;       
     
        </codeblock>

      <title>Example 1: Target cttr:refssummary/cttr:refssummarygroup/cttr:refssummaryitem</title>
      <codeblock>
        
      &lt;cttr:refssummarygroup grouptype="Provision"&gt;
                &lt;cttr:refssummaryitem documenttype="case" value="sec1"&gt;##&lt;/cttr:refssummaryitem&gt;
                ...
                &lt;cttr:refssummaryitem documenttype="case" value="secXX"&gt;##&lt;/cttr:refssummaryitem&gt;
                
            &lt;!-- One cttr:refssummaryitem for each provision. --&gt;
      &lt;/cttr:refssummarygroup&gt;
      
      &lt;cttr:refssummaryitem documenttype="case" value="sec1"&gt;
                   &lt;ref:lnlink&gt;
                      &lt;ref:marker&gt;sec1&lt;/ref:marker&gt;
                      &lt;ref:locator anchoridref="LCIT-CTH_ACT_1920-50_SEC1-OVERVIEW"&gt;
                        &lt;ref:locator-key&gt;
                           &lt;ref:key-name name="dpsi"/&gt;
                           &lt;ref:key-value value="0QQI" /&gt;
                      &lt;/ref:locator-key&gt;
                    &lt;/ref:lnlink&gt;
      &lt;/cttr:refssummaryitem&gt;      
      
      ...
      
      
        </codeblock>
    </example>
    <section>
      <title>
        Changes:
      </title>
      <p>2015-12-11: <ph id="change_20151211f_snb">Clarified creation of <targetxml>cttr:refssummaryitem</targetxml>.</ph>
      </p>
    </section>

  </body>
  
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU20_Legislative_Citator\Leg_Citator_AUNZ_Cases_cttr.annotsummary-CasesbyProvisionandSource.dita  -->
	<xsl:message>Leg_Citator_AUNZ_Cases_cttr.annotsummary-CasesbyProvisionandSource.xsl requires manual development!</xsl:message> 

	<xsl:template match="cttr:annotsummary"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  table   -->
		<table>
			<xsl:apply-templates select="@* | node()"/>
		</table>

	</xsl:template>

	<xsl:template match="id=&#34;CI1&#34;"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  table   -->
		<table>
			<xsl:apply-templates select="@* | node()"/>
		</table>

	</xsl:template>

	<xsl:template match="table"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  table   -->
		<table>
			<xsl:apply-templates select="@* | node()"/>
		</table>

	</xsl:template>

	<xsl:template match="tbody/row"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:refssummaryitem   -->
		<cttr:refssummaryitem>
			<xsl:apply-templates select="@* | node()"/>
		</cttr:refssummaryitem>

	</xsl:template>

	<xsl:template match="/row/entry/lnlink/marker&#34;"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:refssummarygroup   -->
		<cttr:refssummarygroup>
			<xsl:apply-templates select="@* | node()"/>
		</cttr:refssummarygroup>

	</xsl:template>

	<xsl:template match="row/entry[2]"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:refssummarygroup   -->
		<cttr:refssummarygroup>
			<xsl:apply-templates select="@* | node()"/>
		</cttr:refssummarygroup>

	</xsl:template>

	<xsl:template match="row/entry/lnlink"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:refssummaryitem   -->
		<cttr:refssummaryitem>
			<xsl:apply-templates select="@* | node()"/>
		</cttr:refssummaryitem>

	</xsl:template>

</xsl:stylesheet>