<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:source_cttr="http://www.lexis-nexis.com/glp/cttr" xmlns:cttr="urn:x-lexisnexis:content:citator:sharedservices:1" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita cttr">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Leg_Citator_AUNZ_Analytics_cttr.annotations-annotgroupCOM">
  <title>cttr:annotations[@annotgroup="COM"] <lnpid>id-AU20-22259</lnpid></title>

  <body>
    <section>
      <p>For <sourcexml>cttr:annotations@annotgroup="COM"</sourcexml> create new
        <targetxml>cttr:refsection</targetxml> element with attributes
        <targetxml>@reftype="citing-publications"</targetxml> and
        <targetxml>@xml:id="refsection-COM"</targetxml>
      </p>
      <p>Perform the general mappings in the "Analytics Tab Content's" "cttr:body/cttr:content" section of this CI, and 
        then continue with the unique mapping instructions below.</p>
      <p>Create anchor <targetxml>cttr:refsection/ref:anchor[@id="ref-commentary"]</targetxml>
      </p>
    </section>

    <example>
      <title>Source Commentary References</title>
      <codeblock>
&lt;cttr:annotations annotationtype="productuse" annotgroup="COM"&gt;
    &lt;heading&gt;
  &lt;title&gt;Commentary&lt;/title&gt;
        
        </codeblock>

      <title>Target Commentary References</title>
      <codeblock>
           &lt;cttr:refsection reftype="citing-publications" xml:id="refsection-COM"&gt;
           &lt;ref:anchor id="ref-commentary"/&gt;
           	&lt;heading&gt;
         	    &lt;title&gt;Commentary&lt;/title&gt;
            
        </codeblock>
    </example>
    <example>
      <title>Source with cttr:annotations/cttr:annot/heading/title/lnlink</title>
      <codeblock>
         &lt;cttr:annotations annotationtype="productuse" annotgroup="COM"&gt;
            &lt;heading&gt;
               &lt;title&gt;Commentary&lt;/title&gt;
               &lt;subtitle&gt;184&lt;/subtitle&gt;
            &lt;/heading&gt;
            &lt;cttr:annot signal="citation"&gt;
               &lt;heading inline="false"&gt;
                  &lt;title&gt;
                    &lt;lnlink service="DOC-ID" status="valid"&gt;
                    	&lt;marker role="content"&gt;Latest Updates&lt;/marker&gt;
                    	&lt;api-params&gt;
                    		&lt;param name="dpsi" value="008X"/&gt;
                    		&lt;param name="remotekey1" value="DOC-ID"/&gt;
                    		&lt;param name="remotekey2" value="IPP.UNCOM.C6"/&gt;
                    	&lt;/api-params&gt;
                    &lt;/lnlink&gt;
                  &lt;/title&gt;
               &lt;/heading&gt;
               </codeblock>

      <title>Target with cttr:annotations/cttr:annot/heading/title/lnlink</title>
      <codeblock>
           &lt;cttr:refsection reftype="citing-publications" xml:id="refsection-COM"&gt;
               &lt;ref:anchor id="ref-commentary"/&gt;           
           	&lt;heading&gt;
         	    &lt;title&gt;Commentary (184)&lt;/title&gt;
            &lt;/heading&gt;
            
            &lt;cttr:refitem&gt;
         	     &lt;cttr:citingpub treatment="citation"&gt;
         	       &lt;title&gt;
                      &lt;ref:crossreference crossreferencetype="seeAlso"&gt;
                           &lt;ref:content&gt;Latest Updates&lt;/ref:content&gt;
                           &lt;ref:locator anchortype="global"&gt;
                              &lt;ref:locator-key&gt;
                                 &lt;ref:key-name name="DOC-ID"/&gt;
                                 &lt;ref:key-value value="008X-IPP.UNCOM.C6"/&gt;
                              &lt;/ref:locator-key&gt;
                           &lt;/ref:locator&gt;  
                      &lt;/ref:crossreference&gt;
                 &lt;/title&gt;
        </codeblock>
    </example>

    <section>
      <title>
        Changes:
      </title>
      <p>2016-06-03: <ph id="change_20160603a_snb">Corrected markup example 2 to have valid 
        <sourcexml>lnlink</sourcexml> source markup and correct <targetxml>ref:crossreference</targetxml> markup.</ph></p>
      <p>2015-12-11: <ph id="change_20151211h_snb">Added instruction to perform the general mappings in 
        the "cttr:body/cttr:content" section, and then continue with mappings in this section. Removed 
        instruction for <sourcexml>heading/subtitle</sourcexml> because it is redundant with mappings now 
        in the general mappings in the "cttr:body/cttr:content" section. Moved mapping 
        instructions for <sourcexml>lnlink</sourcexml> and <sourcexml>link</sourcexml> inside 
        <sourcexml>cttr:annotations/heading/title</sourcexml> or <sourcexml>cttr:annot/heading/title</sourcexml> 
        to the general mappings in the "cttr:body/cttr:content" section (because they apply to all analytical tab 
        content). Changed <targetxml>ref:anchor</targetxml> to <targetxml>ref:anchor[@id="ref-commentary"]</targetxml> 
        in 2nd example target markup.</ph>
      </p>
      <p>2015-11-16: <ph id="change_20151116_snb">Added instructions for 
        <sourcexml>cttr:annotations[@annotgroup="COM"]/cttr:annot/heading/title/lnlink</sourcexml>, 
        <sourcexml>cttr:annotations[@annotgroup="COM"]/heading/title/link</sourcexml>, and 
        <sourcexml>cttr:annotations[@annotgroup="COM"]/cttr:annot/heading/title/link</sourcexml>.</ph>
      </p>
    </section>






  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU20_Legislative_Citator\Leg_Citator_AUNZ_Analytics_cttr.annotations-annotgroupCOM.dita  -->
	<xsl:message>Leg_Citator_AUNZ_Analytics_cttr.annotations-annotgroupCOM.xsl requires manual development!</xsl:message> 

	<xsl:template match="cttr:annotations@annotgroup=&#34;COM&#34;"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:refsection   -->
		<cttr:refsection>
			<xsl:apply-templates select="@* | node()"/>
		</cttr:refsection>

	</xsl:template>

	<xsl:template match="lnlink"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  ref:crossreference   -->
		<ref:crossreference>
			<xsl:apply-templates select="@* | node()"/>
		</ref:crossreference>

	</xsl:template>

	<xsl:template match="heading/subtitle"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  ref:anchor   -->
		<ref:anchor>
			<xsl:apply-templates select="@* | node()"/>
		</ref:anchor>

	</xsl:template>

	<xsl:template match="link"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  ref:anchor   -->
		<ref:anchor>
			<xsl:apply-templates select="@* | node()"/>
		</ref:anchor>

	</xsl:template>

	<xsl:template match="cttr:annotations/heading/title"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  ref:anchor   -->
		<ref:anchor>
			<xsl:apply-templates select="@* | node()"/>
		</ref:anchor>

	</xsl:template>

	<xsl:template match="cttr:annot/heading/title"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  ref:anchor   -->
		<ref:anchor>
			<xsl:apply-templates select="@* | node()"/>
		</ref:anchor>

	</xsl:template>

	<xsl:template match="cttr:annotations[@annotgroup=&#34;COM&#34;]/cttr:annot/heading/title/lnlink"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

	<xsl:template match="cttr:annotations[@annotgroup=&#34;COM&#34;]/heading/title/link"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

	<xsl:template match="cttr:annotations[@annotgroup=&#34;COM&#34;]/cttr:annot/heading/title/link"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

</xsl:stylesheet>