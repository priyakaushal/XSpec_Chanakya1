<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:ci="http://www.lexis-nexis.com/ci" xmlns:source_cttr="http://www.lexis-nexis.com/glp/cttr" xmlns:cttr="urn:x-lexisnexis:content:citator:sharedservices:1" version="2.0" exclude-result-prefixes="dita case ci cttr">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="consideredleg">
    <title>cttr:annotations @annotationtype="consideredleg" /cttr:annot <lnpid>id-IN04-38819</lnpid></title>
  <body>
    <section>
      <ul>
        <li>
          <sourcexml>cttr:annotations @annotationtype="consideredleg"</sourcexml> becomes
            <targetxml>cttr:refsection @reftype="considered-legislation"</targetxml>. 
          <note> The
            value of the attribute <sourcexml>cttr:annotations
              @annotationtype="consideredleg"</sourcexml> maps to the attribute
              <targetxml>cttr:refsection @reftype="considered-legislation"</targetxml>. Please note
            that the 'considered legislation' section works differently from the other
              <sourcexml>cttr:annotations</sourcexml> :
              <sourcexml>cttr:annotations[@annotationtype="consideredleg"]</sourcexml> maps to
              <targetxml>cttr:refsection[@reftype="considered-legislation"]</targetxml>.</note>
          <pre>

&lt;cttr:annotations annotationtype="consideredleg"&gt;
...
&lt;/cttr:annotations&gt;

<b>Becomes</b>

&lt;cttr:refsection reftype="considered-legislation"&gt;
...
&lt;/cttr:refsection&gt;

</pre> 
          <note>All xml:id that begin with a number must have an underscore added at start, as shown
            in the above NL example.</note> The children of cttr:annot are described below: <ul>
              <li>
              <sourcexml>cttr:annot/case:info/case:casename/emph/ci:cite</sourcexml> becomes
                <targetxml>cttr:refitem/cttr:consideredlegis/
                legisinfo:names/legisinfo:officialtitle/emph/lnci:cite</targetxml>
            </li>
              <li>
                <ul>
                  <li> The content of
                    <sourcexml>case:citations/case:citetext/ci:cite/ci:content/citefragment</sourcexml>
                  is maintained in
                    <targetxml>cttr:legisinfo/cttr:citations/lnci:cite/lnci:content</targetxml>.
                    <note>All child elements of <xref href="../../common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita"><sourcexml>ci:cite</sourcexml></xref> markup converted in NewLexis target
                    according to the common module.</note>
                </li>
                  <li>
                  
                </li>
                </ul>
                <pre>

&lt;cttr:annotations annotationtype="consideredleg"&gt;
    &lt;cttr:annot&gt;
        &lt;case:info&gt;
            &lt;case:casename&gt;
                &lt;emph typestyle="ro"&gt;
                    &lt;ci:cite searchtype="LEG-REF" normcite="Limitation Act"&gt;
                        &lt;ci:sesslaw&gt;
                            &lt;ci:sesslawinfo&gt;
                                &lt;ci:jurisinfo&gt;
                                    &lt;ci:in/&gt;
                                &lt;/ci:jurisinfo&gt;
                                &lt;ci:hier&gt;
                                    &lt;ci:hierlev label="section" num="9999"/&gt;
                                &lt;/ci:hier&gt;
                            &lt;/ci:sesslawinfo&gt;
                            &lt;ci:sesslawref&gt;
                                &lt;ci:standardname normpubcode="IN1963LIMA01"/&gt;
                            &lt;/ci:sesslawref&gt;
                        &lt;/ci:sesslaw&gt;
                        &lt;ci:content&gt;
                            &lt;citefragment searchtype="LEG-NAME-REF"&gt;Limitation Act&lt;/citefragment&gt;
                        &lt;/ci:content&gt;
                    &lt;/ci:cite&gt;
                &lt;/emph&gt;
            &lt;/case:casename&gt;
        &lt;/case:info&gt;
        &lt;case:citations&gt;
            &lt;case:citetext&gt;
                 &lt;ci:cite searchtype="LEG-REF" normcite="Limitation Act"&gt;
                    &lt;ci:sesslaw&gt;
                        &lt;ci:sesslawinfo&gt;
                            &lt;ci:jurisinfo&gt;
                                &lt;ci:in/&gt;
                            &lt;/ci:jurisinfo&gt;
                            &lt;ci:hier&gt;
                                &lt;ci:hierlev label="section" num="9999"/&gt;
                            &lt;/ci:hier&gt;
                        &lt;/ci:sesslawinfo&gt;
                        &lt;ci:sesslawref&gt;
                            &lt;ci:standardname normpubcode="IN1963LIMA01"/&gt;
                        &lt;/ci:sesslawref&gt;
                    &lt;/ci:sesslaw&gt;
                    &lt;ci:content&gt;
                        &lt;citefragment searchtype="LEG-NAME-REF"&gt;Introduction&lt;/citefragment&gt;
                    &lt;/ci:content&gt;
                &lt;/ci:cite&gt;
            &lt;/case:citetext&gt;
        &lt;/case:citations&gt;
    &lt;/cttr:annot&gt;
&lt;/cttr:annotations&gt;

<b>Becomes</b>

&lt;cttr:refsection reftype="considered-legislation"&gt;
    &lt;cttr:refitem&gt;
        &lt;cttr:consideredlegis&gt;
            &lt;legisinfo:names&gt;
                &lt;legisinfo:officialtitle&gt;
                    &lt;emph typestyle="ro"&gt;
                        &lt;lnci:cite type="legislation" normcite="Limitation Act"&gt;
                            &lt;lnci:sesslaw&gt;
                                &lt;lnci:sesslawinfo&gt;
                                    &lt;lnci:jurisinfo&gt;
                                        &lt;lnci:in/&gt;
                                    &lt;/lnci:jurisinfo&gt;
                                    &lt;lnci:hier&gt;
                                        &lt;lnci:hierlev label="section" num="9999"/&gt;
                                    &lt;/lnci:hier&gt;
                                &lt;/lnci:sesslawinfo&gt;
                                &lt;lnci:sesslawref&gt;
                                    &lt;lnci:standardname normpubcode="IN1963LIMA01"/&gt;
                                &lt;/lnci:sesslawref&gt;
                            &lt;/lnci:sesslaw&gt;
                            &lt;lnci:content&gt;Limitation Act&lt;/lnci:content&gt;
                        &lt;/lnci:cite&gt;
                    &lt;/emph&gt;
                &lt;/legisinfo:officialtitle&gt;
            &lt;/legisinfo:names&gt;
            &lt;cttr:legisinfo&gt;
                &lt;cttr:citations&gt;
                    &lt;lnci:cite type="legislation" normcite="Limitation Act"&gt;
                        &lt;lnci:sesslaw&gt;
                            &lt;lnci:sesslawinfo&gt;
                                &lt;lnci:jurisinfo&gt;
                                    &lt;lnci:in/&gt;
                                &lt;/lnci:jurisinfo&gt;
                                &lt;lnci:hier&gt;
                                    &lt;lnci:hierlev label="section" num="9999"/&gt;
                                &lt;/lnci:hier&gt;
                            &lt;/lnci:sesslawinfo&gt;
                            &lt;lnci:sesslawref&gt;
                                &lt;lnci:standardname normpubcode="IN1963LIMA01"/&gt;
                            &lt;/lnci:sesslawref&gt;
                        &lt;/lnci:sesslaw&gt;
                        &lt;lnci:content&gt;Introduction&lt;/lnci:content&gt;
                    &lt;/lnci:cite&gt;
                &lt;/cttr:citations&gt;
            &lt;/cttr:legisinfo&gt;
        &lt;/cttr:consideredlegis&gt;
    &lt;/cttr:refitem&gt;
&lt;/cttr:refsection&gt;

</pre>
              </li>
              </ul>
        </li>
          </ul>
    </section>
 <section>
       <title>Changes</title>
       <p>2016-08-18: <ph id="change_20160818_SS">Created</ph>.</p>
 </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-IN\IN04-Citator\IN04_consideredleg.dita  -->
	<xsl:message>IN04_consideredleg.xsl requires manual development!</xsl:message> 

	<xsl:template match="cttr:annotations @annotationtype=&#34;consideredleg&#34;"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:refsection@reftype="considered-legislation"   -->
		<cttr:refsection>
			<xsl:apply-templates select="@* | node()"/>
		</cttr:refsection>

	</xsl:template>

	<xsl:template match="cttr:annotations&#xA;              @annotationtype=&#34;consideredleg&#34;"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:refsection@reftype="considered-legislation"   -->
		<cttr:refsection>
			<xsl:apply-templates select="@* | node()"/>
		</cttr:refsection>

	</xsl:template>

	<xsl:template match="cttr:annotations"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:refsection[@reftype="considered-legislation"]   -->
		<cttr:refsection>
			<xsl:apply-templates select="@* | node()"/>
		</cttr:refsection>

	</xsl:template>

	<xsl:template match="cttr:annotations[@annotationtype=&#34;consideredleg&#34;]"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:refsection[@reftype="considered-legislation"]   -->
		<cttr:refsection>
			<xsl:apply-templates select="@* | node()"/>
		</cttr:refsection>

	</xsl:template>

	<xsl:template match="cttr:annot/case:info/case:casename/emph/ci:cite"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:refitem/cttr:consideredlegis/legisinfo:names/legisinfo:officialtitle/emph/lnci:cite   -->
		<cttr:refitem>
			<cttr:consideredlegis>
				<legisinfo:names xmlns:legisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/legislation-info/1/">
					<legisinfo:officialtitle>
						<emph>
							<lnci:cite xmlns:lnci="http://www.lexisnexis.com/xmlschemas/content/shared/citations/1/">
								<xsl:apply-templates select="@* | node()"/>
							</lnci:cite>
						</emph>
					</legisinfo:officialtitle>
				</legisinfo:names>
			</cttr:consideredlegis>
		</cttr:refitem>

	</xsl:template>

	<xsl:template match="case:citations/case:citetext/ci:cite/ci:content/citefragment"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:legisinfo/cttr:citations/lnci:cite/lnci:content   -->
		<cttr:legisinfo>
			<cttr:citations>
				<lnci:cite xmlns:lnci="http://www.lexisnexis.com/xmlschemas/content/shared/citations/1/">
					<lnci:content>
						<xsl:apply-templates select="@* | node()"/>
					</lnci:content>
				</lnci:cite>
			</cttr:citations>
		</cttr:legisinfo>

	</xsl:template>

	<xsl:template match="ci:cite"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

</xsl:stylesheet>