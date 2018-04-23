<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:comm="http://www.lexis-nexis.com/glp/comm" xmlns:source_cttr="http://www.lexis-nexis.com/glp/cttr" xmlns:cttr="urn:x-lexisnexis:content:citator:sharedservices:1" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita comm cttr">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Leg_Citator_AUNZ_Analytics_cttr.annotations-annotgroupsubseqarticles">
  <title>For cttr:annotations[@annotationtype="subseqarticles"] and @annotgroup not specified <lnpid>id-AU20-22266</lnpid></title>

  <body>
    <section>
      <p>For <sourcexml>cttr:annotations@annotaiontype="subseqarticles" AND
        @annotgroup</sourcexml> is not specified create new <targetxml>cttr:refsection</targetxml>
        element with attributes <targetxml>@reftype="citing-publications"</targetxml> and
        <targetxml>@xml:id="refsection-JNB"</targetxml>
      </p>
      <p>Perform the general mappings in the "Analytics Tab Content's" "cttr:body/cttr:content" section of this CI, and 
        then continue with the unique mapping instructions below.</p>
      <p>Create <targetxml>cttr:refsection/ref:anchor[@id="ref-journals-newsletters-bulletins"]</targetxml>
      </p>
      <p>When <sourcexml>/cttr:annotations/cttr:annot/case:info/note</sourcexml> is also a second occurence of 
        case:info within the same cttr:annot element,
        a note element should be placed following any citation references.</p>
      <!--  RFA item #37  -->
    </section>

    <example>
      <title>Example 1: Source Subsequent Article References</title>
      <codeblock>
         &lt;cttr:annotations annotationtype="subseqarticles"&gt;
            &lt;heading&gt;
               &lt;title&gt;Journals, Newsletters &amp;amp; Bulletins&lt;/title&gt;&lt;!-- AMI7.2--&gt;&lt;subtitle&gt;(1)&lt;/subtitle&gt;
            &lt;/heading&gt;
            &lt;cttr:annot signal="citation"&gt;
               &lt;comm:info ln.type="seg" ln.segname="COMMINFO"&gt;
                  &lt;title&gt;The Law of Misleading or Deceptive Conduct&lt;/title&gt; 
               &lt;/comm:info&gt;
               &lt;comm:citations&gt;
                  &lt;h&gt;
                     &lt;lnlink service="DOC-ID" status="valid"&gt;
                        &lt;marker role="content"&gt;(2004) 25 Aust Bar Rev 14&lt;/marker&gt;
                        &lt;api-params&gt;
                           &lt;param name="dpsi" value="0LE5" /&gt;
                           &lt;param name="remotekey1" value="DOC-ID" /&gt;
                           &lt;param name="remotekey2" value="PBLM.C2.GRP3.4" /&gt;
                        &lt;/api-params&gt;
                     &lt;/lnlink&gt; 
                  &lt;/h&gt;
               
                  &lt;comm:citetext&gt;Justice TH Smith and OP Holdenson QC&lt;/comm:citetext&gt;
               &lt;/comm:citations&gt;
			&lt;/cttr:annot&gt;
         &lt;/cttr:annotations&gt;
    
        </codeblock>

      <title>Example 1: Target Subsequent Article References</title>
      <codeblock>
         &lt;cttr:refsection xml:id="refsection-JNB" reftype="citing-publications"&gt;
                &lt;ref:anchor id="ref-journals-newsletters-bulletins"/&gt;
                &lt;heading&gt;
                    &lt;title&gt;Journals, Newsletters &amp;amp; Bulletins (1)&lt;/title&gt;
                &lt;/heading&gt;
                &lt;cttr:refitem&gt;
                    &lt;cttr:citingpub treatment="citation"&gt;
                        &lt;title&gt;The Law of Misleading or Deceptive Conduct&lt;/title&gt;
                        &lt;cttr:citations&gt;
                            &lt;ref:crossreference crossreferencetype="seeAlso"&gt;
                                &lt;ref:content&gt;(2004) 25 Aust Bar Rev 14&lt;/ref:content&gt;
                                &lt;ref:locator anchortype="global"&gt;
                                    &lt;ref:locator-key&gt;
                                        &lt;ref:key-name name="DOC-ID"/&gt;
                                        &lt;ref:key-value value="0LE5-PBLM.C2.GRP3.4"/&gt;
                                    &lt;/ref:locator-key&gt;
                                &lt;/ref:locator&gt;
                            &lt;/ref:crossreference&gt;
                        &lt;/cttr:citations&gt;
                        &lt;bodytext&gt;
                            &lt;p&gt;
                                &lt;text&gt;Justice TH Smith and OP Holdenson QC&lt;/text&gt;
                            &lt;/p&gt;
                        &lt;/bodytext&gt;
                  &lt;/cttr:citingpub&gt;
              &lt;/cttr:refitem&gt;
         &lt;/cttr:refsection&gt;    
    
        </codeblock>
    </example>
    <example>
      <title>Example 2: Source /cttr:annotations/cttr:annot/case:info/note</title>
      <codeblock>
&lt;cttr:annotations annotationtype="subseqarticles"&gt;
   &lt;heading&gt;
     &lt;title&gt;Journals, Newsletters &amp;amp; Bulletins&lt;/title&gt;&lt;/heading&gt;         
       &lt;cttr:annot signal="citation"&gt;  
         ...
         &lt;case:info&gt;
            &lt;note&gt;
              &lt;p&gt;
              &lt;text&gt;Justice F Mercury, Dame Agetha Christie and Hercule Babywipe&lt;/text&gt;&lt;/p&gt;&lt;/note&gt;
         &lt;/case:info&gt;
        ... 
         </codeblock>

      <title>Example 2: Target cttr:refitem/bodytext/note</title>
      <codeblock>
 &lt;cttr:refsection reftype="citing-publications" xml:id="refsection-JNB"&gt;
   &lt;ref:anchor id="ref-journals-newsletters-bulletins"/&gt;
     &lt;heading&gt;
       &lt;title&gt;Journals, Newsletters &amp;amp; Bulletins&lt;/title&gt; 
      &lt;/heading&gt;    
       &lt;cttr:refitem&gt;
       &lt;cttr:citingpub treatment="citation"&gt;
         &lt;bodytext&gt;
            &lt;p&gt;...&lt;/p&gt;
        
            &lt;note&gt;
              &lt;p&gt;
              &lt;text&gt;Justice F Mercury, Dame Agetha Christie and Hercule Babywipe&lt;/text&gt;&lt;/p&gt;&lt;/note&gt;
         &lt;/bodytext&gt;
        ... 
        &lt;/cttr:citingpub&gt;
        &lt;/cttr:refitem&gt;
&lt;/cttr:refsection&gt;        
         </codeblock>
    </example>
    <example>
      <title>Example 3: Source cttr:annotations[@annotationtype="subseqarticles"]</title>
      <codeblock>
&lt;cttr:annotations annotationtype="subseqarticles"&gt;
	&lt;heading&gt;
		&lt;title&gt;Journals, Newsletters &amp;amp; Bulletins&lt;/title&gt;
		&lt;!-- AMI7.2--&gt;
		&lt;subtitle&gt;(1)&lt;/subtitle&gt;
	&lt;/heading&gt;
	&lt;cttr:annot signal="citation"&gt;
		&lt;?file to="cth\act\1989\2\A\CTH_ACT_1995-2.mockup.7.xml" ?&gt;
		&lt;?category title="Journals, Newsletters &amp;amp; Bulletins" ?&gt;
		&lt;comm:info ln.type="seg" ln.segname="COMMINFO"&gt;
			&lt;title&gt;The Law of Misleading or Deceptive Conduct&lt;/title&gt;
		&lt;/comm:info&gt;
		&lt;comm:citations&gt;
			&lt;h&gt;
				&lt;lnlink service="DOC-ID" status="valid"&gt;
					&lt;marker role="content"&gt;(2004) 25 Aust Bar Rev 14&lt;/marker&gt;
					&lt;api-params&gt;
						&lt;param name="dpsi" value="0LE5"/&gt;
						&lt;param name="remotekey1" value="DOC-ID"/&gt;
						&lt;param name="remotekey2" value="PBLM.C2.GRP3.4"/&gt;
					&lt;/api-params&gt;
				&lt;/lnlink&gt;
			&lt;/h&gt;
			&lt;comm:citetext&gt;Justice TH Smith and OP Holdenson QC&lt;/comm:citetext&gt;
		&lt;/comm:citations&gt;
	&lt;/cttr:annot&gt;
&lt;/cttr:annotations&gt;
         </codeblock>

      <title>Example 3: Target cttr:annotations[@annotationtype="subseqarticles"]</title>
      <codeblock>
&lt;cttr:refsection xml:id="refsection-JNB" reftype="citing-publications"&gt;
	&lt;ref:anchor id="ref-journals-newsletters-bulletins"/&gt;
	&lt;heading&gt;
		&lt;title&gt;Journals, Newsletters &amp;amp; Bulletins (1)&lt;/title&gt;
	&lt;/heading&gt;
	&lt;cttr:refitem&gt;
		&lt;cttr:citingpub treatment="citation"&gt;
			&lt;title&gt;The Law of Misleading or Deceptive Conduct&lt;/title&gt;
			&lt;cttr:citations&gt;
				&lt;ref:crossreference crossreferencetype="seeAlso"&gt;
					&lt;ref:content&gt;(2004) 25 Aust Bar Rev 14&lt;/ref:content&gt;
					&lt;ref:locator anchortype="global"&gt;
						&lt;ref:locator-key&gt;
							&lt;ref:key-name name="DOC-ID"/&gt;
							&lt;ref:key-value value="0LE5-PBLM.C2.GRP3.4"/&gt;
						&lt;/ref:locator-key&gt;
					&lt;/ref:locator&gt;
				&lt;/ref:crossreference&gt;
			&lt;/cttr:citations&gt;
			&lt;bodytext&gt;
				&lt;p&gt;
					&lt;text&gt;Justice TH Smith and OP Holdenson QC&lt;/text&gt;
				&lt;/p&gt;
			&lt;/bodytext&gt;
		&lt;/cttr:citingpub&gt;
	&lt;/cttr:refitem&gt;
&lt;/cttr:refsection&gt;
         </codeblock>
    </example>

    <section>
      <title>
        Changes:
      </title>
      <p>2016-06-03: <ph id="change_20160603a_snb">Corrected target markup example to have 
        <targetxml>ref:crossreference/@crossreferencetype="seeAlso"</targetxml> and 
        <targetxml>ref:locator/@anchortype="global"</targetxml>.</ph></p>
      <p>2015-12-11: <ph id="change_20151211k_snb">Changed <targetxml>xml:id="refsection-LTS"</targetxml> 
        to be <targetxml>@xml:id="refsection-JNB"</targetxml>. Added instruction to perform the general mappings in 
        the "cttr:body/cttr:content" section, and then continue with mappings in this section. Removed mapping 
        instructions that were redundant with those general mappings. Changed <targetxml>@xml:id</targetxml> 
        to be <targetxml>@xml:id="refsection-JNB"</targetxml> in all target markup examples. Replaced markup 
        example 3.</ph>
      </p>
      <p>2015-11-16: <ph id="change_20151116_snb2">Modified text of instruction for <sourcexml>comm:citations/h/link</sourcexml>
        to match the target markup in the example. Also corrected the title for the example target markup to be 
        Target cttr:citingpub/cttr:citations/ref:crossreference (was Target cttr:annot/comm:citations/h/lnlink).</ph>
      </p>
      <p>2014-01-13 - MLV: added mapping of multiple <sourcexml>comm:citetext</sourcexml> within a <sourcexml>comm:citations</sourcexml> element to
        <targetxml>cttr:citingpub/cttr:citations</targetxml>. 
        AS well as the proper mapping of <sourcexml>comm:citations/h/link</sourcexml> to 
        <targetxml>cttr:citingpub/cttr:citations/ref:crossreference</targetxml>.
      </p>
    </section>






  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU20_Legislative_Citator\Leg_Citator_AUNZ_Analytics_cttr.annotations-annotgroupsubseqarticles.dita  -->
	<xsl:message>Leg_Citator_AUNZ_Analytics_cttr.annotations-annotgroupsubseqarticles.xsl requires manual development!</xsl:message> 

	<xsl:template match="cttr:annotations@annotaiontype=&#34;subseqarticles&#34; AND&#xA;        @annotgroup"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:refsection   -->
		<cttr:refsection>
			<xsl:apply-templates select="@* | node()"/>
		</cttr:refsection>

	</xsl:template>

	<xsl:template match="/cttr:annotations/cttr:annot/case:info/note"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  ref:crossreference/@crossreferencetype="seeAlso"   -->
		<ref:crossreference>
			<xsl:attribute name="crossreferencetype">
				<xsl:text>seeAlso</xsl:text>
			</xsl:attribute>
		</ref:crossreference>

	</xsl:template>

	<xsl:template match="comm:citations/h/link"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:citingpub/cttr:citations   -->
		<cttr:citingpub>
			<cttr:citations>
				<xsl:apply-templates select="@* | node()"/>
			</cttr:citations>
		</cttr:citingpub>

	</xsl:template>

	<xsl:template match="comm:citetext"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:citingpub/cttr:citations   -->
		<cttr:citingpub>
			<cttr:citations>
				<xsl:apply-templates select="@* | node()"/>
			</cttr:citations>
		</cttr:citingpub>

	</xsl:template>

	<xsl:template match="comm:citations"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:citingpub/cttr:citations   -->
		<cttr:citingpub>
			<cttr:citations>
				<xsl:apply-templates select="@* | node()"/>
			</cttr:citations>
		</cttr:citingpub>

	</xsl:template>

</xsl:stylesheet>