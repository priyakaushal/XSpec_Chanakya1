<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:source_cttr="http://www.lexis-nexis.com/glp/cttr" xmlns:cttr="urn:x-lexisnexis:content:citator:sharedservices:1" xmlns:proc="http://www.lexisnexis.com/xmlschemas/content/shared/process-elements/1/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita cttr">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Leg_Citator_AUNZ_Analytics_cttr.annotations-annotgroupLPG">
  <title>For cttr:annotations[@annotgroup="LPG"] <lnpid>id-AU20-22264</lnpid></title>

  <body>
    <section>
      <p>For <sourcexml>cttr:annotations@annotgroup="LPG"</sourcexml> create new
        <targetxml>cttr:refsection</targetxml> element with attributes
        <targetxml>@reftype="citing-publications"</targetxml> and
        <targetxml>@xml:id="refsection-LPG-analytical"</targetxml>.</p>
      <p>Perform the general mappings in the "Analytics Tab Content's" "cttr:body/cttr:content" section of this CI, and 
        then continue with the unique mapping instructions below.</p>
      <p>Create <targetxml>cttr:refsection/ref:anchor[@id="ref-guidance"]</targetxml></p>
      <p>Add attribute <targetxml>cttr:refsection/@sectiontype="practicalguidance"</targetxml>.</p>
      <p>Any <sourcexml>param@name="topiccode"@value="#PA#{value}"</sourcexml> should be mapped to 
        <targetxml>proc:param@name="topiccode"@value="#PA#{value}"</targetxml>.</p>
      <p>Any <targetxml>cttr:refsection[@xml:id="refsection-LPG-analytical"]/cttr:refitem/cttr:citingpub/bodytext/p/text/ref:lnlink</targetxml> 
        created should have <targetxml>proc:param[@name="targetContentType"][@value="practicalguidance"]</targetxml> added to 
        <targetxml>ref:lnlink/ref:locator/ref:locator-params</targetxml>.</p>
    </section>

    <example>
      <title>Source LPG References</title>
      <codeblock>
        
&lt;cttr:annotations annotationtype="productuse" annotgroup="LPG"&gt;
	&lt;heading&gt;
		&lt;title&gt;Practical Guidance&lt;/title&gt;
		&lt;!-- AMI5.2--&gt;
		&lt;subtitle&gt;(2)&lt;/subtitle&gt;
	&lt;/heading&gt;
	&lt;cttr:annot signal="citation"&gt;
		&lt;heading&gt;
			&lt;title&gt;Business&lt;/title&gt;
		&lt;/heading&gt;
		&lt;?category title="Sale of Goods" ?&gt;
		&lt;comm:citations&gt;
			&lt;h&gt;Sale of Goods&lt;/h&gt;
			&lt;comm:citetext&gt;Path: &lt;lnlink service="DOC-ID" status="unval"&gt;
					&lt;marker&gt;Business&lt;/marker&gt;
					&lt;api-params&gt;
						&lt;param name="dpsi" value="OKKQ"/&gt;
						&lt;param name="remotekey1" value="DOC-ID"/&gt;
						&lt;param name="remotekey2" value="OKKQ_677"/&gt;
						&lt;param name="topiccode" value="#PA#BUS"/&gt;
					&lt;/api-params&gt;
				&lt;/lnlink&gt; » Property » &lt;lnlink service="DOC-ID" status="unval"&gt;
					&lt;marker&gt;Nature of Disputes&lt;/marker&gt;
					&lt;api-params&gt;
						&lt;param name="dpsi" value="OKKQ"/&gt;
						&lt;param name="remotekey1" value="DOC-ID"/&gt;
						&lt;param name="remotekey2" value="OKKQ_677"/&gt;
						&lt;param name="topiccode" value="#PA#BUS"/&gt;
					&lt;/api-params&gt;
				&lt;/lnlink&gt; [Guidance]&lt;/comm:citetext&gt;
		&lt;/comm:citations&gt;
	&lt;/cttr:annot&gt;
&lt;/cttr:annotations&gt;
        </codeblock>

      <title>Target LPG References</title>
      <codeblock>
&lt;cttr:refsection xml:id="refsection-LPG-analytical" reftype="citing-publications" sectiontype="practicalguidance"&gt;
	&lt;ref:anchor id="ref-guidance"/&gt;
	&lt;heading&gt;
		&lt;title&gt;Practical Guidance (2)&lt;/title&gt;
	&lt;/heading&gt;
	&lt;cttr:refitem&gt;
		&lt;cttr:citingpub treatment="citation"&gt;
			&lt;title&gt;Business&lt;/title&gt;
			&lt;cttr:citations&gt;
				&lt;ref:crossreference&gt;
					&lt;ref:content&gt;Sale of Goods&lt;/ref:content&gt;
				&lt;/ref:crossreference&gt;
			&lt;/cttr:citations&gt;
			&lt;bodytext&gt;
				&lt;p&gt;
					&lt;text&gt;Path: &lt;ref:lnlink service="DOCUMENT"&gt;
							&lt;ref:marker&gt;Business&lt;/ref:marker&gt;
							&lt;ref:locator&gt;
								&lt;ref:locator-key&gt;
									&lt;ref:key-name name="DOC-ID"/&gt;
									&lt;ref:key-value value="OKKQ-OKKQ_677"/&gt;
								&lt;/ref:locator-key&gt;
								&lt;ref:locator-params&gt;
									&lt;proc:param name="topiccode" value="#PA#BUS"/&gt;
									&lt;proc:param name="targetContentType" value="practicalguidance"/&gt;
								&lt;/ref:locator-params&gt;
							&lt;/ref:locator&gt;
						&lt;/ref:lnlink&gt; » Property » &lt;ref:lnlink service="DOCUMENT"&gt;
							&lt;ref:marker&gt;Nature of Disputes&lt;/ref:marker&gt;
							&lt;ref:locator&gt;
								&lt;ref:locator-key&gt;
									&lt;ref:key-name name="DOC-ID"/&gt;
									&lt;ref:key-value value="OKKQ-OKKQ_677"/&gt;
								&lt;/ref:locator-key&gt;
								&lt;ref:locator-params&gt;
									&lt;proc:param name="topiccode" value="#PA#BUS"/&gt;
									&lt;proc:param name="targetContentType" value="practicalguidance"/&gt;
								&lt;/ref:locator-params&gt;
							&lt;/ref:locator&gt;
						&lt;/ref:lnlink&gt;[Guidance]&lt;/text&gt;
				&lt;/p&gt;
			&lt;/bodytext&gt;
		&lt;/cttr:citingpub&gt;
	&lt;/cttr:refitem&gt;
&lt;/cttr:refsection&gt;
        </codeblock>
    </example>

    <section>
      <title>Changes</title>
    	<p>2016-06-13: <ph id="change_20160613_snb">Added instruction to add attribute  
    		<targetxml>@sectiontype="practicalguidance"</targetxml> to 
    		<targetxml>cttr:refsection/@sectiontype="practicalguidance"</targetxml> and added to 
    		the target markup example.</ph>
    	</p>
    	<p>2015-12-11: <ph id="change_20151211i_snb">Added instruction to perform the general mappings in 
        the "cttr:body/cttr:content" section, and then continue with mappings in this section. Removed mapping 
        instructions that were redundant with those general mappings. Changed 
        <targetxml>@xml:id="ref-practicalguidance"</targetxml> to <targetxml>@xml:id="refsection-LPG-analytical"</targetxml> 
        to avoid id conflicts. Changed <targetxml>xml:id="LPG"</targetxml> to  
        <targetxml>xml:id="refsection-LPG-analytical"</targetxml> in example target markup. Replaced 
        example markup. Added <targetxml>proc:param[@name="targetContentType"][@value="practicalguidance"]</targetxml> to 
        all <targetxml>cttr:refsection[@xml:id="refsection-LPG-analytical"]/cttr:refitem/cttr:citingpub/bodytext/p/text/ref:lnlink/ref:locator/ref:locator-params</targetxml> 
        elements created in this section, and added to target examples.</ph>
      </p>
    </section>






  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU20_Legislative_Citator\Leg_Citator_AUNZ_Analytics_cttr.annotations-annotgroupLPG.dita  -->
	<xsl:message>Leg_Citator_AUNZ_Analytics_cttr.annotations-annotgroupLPG.xsl requires manual development!</xsl:message> 

	<xsl:template match="cttr:annotations@annotgroup=&#34;LPG&#34;"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:refsection   -->
		<cttr:refsection>
			<xsl:apply-templates select="@* | node()"/>
		</cttr:refsection>

	</xsl:template>

	<xsl:template match="param@name=&#34;topiccode&#34;@value=&#34;#PA#{value}&#34;"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  proc:param@name="topiccode"@value="#PA#{value}"   -->
		<proc:param>
			<xsl:apply-templates select="@* | node()"/>
		</proc:param>

	</xsl:template>

</xsl:stylesheet>